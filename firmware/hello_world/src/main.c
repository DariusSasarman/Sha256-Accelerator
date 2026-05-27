#include <mb_interface.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include "platform.h"
#include "xil_printf.h"
#include "fsl.h"
#include "xparameters.h"
#include "xio.h"


// Base address of MCS IO Module
#define MCS_BASEADDR     XPAR_XIOMODULE_0_BASEADDR

// MCS Fixed UART Register Offsets
#define UART_RX_REG      (MCS_BASEADDR + 0x00) // Receive Data
#define UART_TX_REG      (MCS_BASEADDR + 0x00) // RX and TX share the same UART data register
#define UART_STATUS_REG  (MCS_BASEADDR + 0x04) // Status Register

// Bit 0 of the status register is "RX Data Ready"
#define UART_STATUS_RX_VALID  0x01
#define UART_STATUS_TX_FULL   0x08

// Protocol constants
#define PROTOCOL_SYNC 0x55
#define PROTOCOL_STOP 0x00
// Shared memory 
volatile uint8_t asic_in[64] __attribute__((section(".asic_shared_memory_input")));
// 16 registers of 32 bits = 64 characters of 8
volatile uint8_t asic_out[32] __attribute__((section(".asic_shared_memory_output")));
// 8 register of 32 bits = 32 characters of 8

// Used to start the accelerator
// Notifies it that data is ready
// For processing
void start_asic()
{
    putfsl(0x1, 0);
    putfsl(0x0, 0);
}

// Restarts the accelerator
void reset_asic()
{
    putfsl(0x1, 1);
    putfsl(0x0, 1);
}

// Used to wait for accelerator 
// Synchronization
void await_processing()
{
    u32 read = 0;
    
    while(1)
    {
        ngetfsl(read, 0); 
        if ((read & 0x1) == 0x1) {
            break; 
        }
    }
}

void commit_changes()
{
    start_asic();
    await_processing();
    for(int i = 0; i < 64; i++)
    {
        asic_in[i] = 0;
    }
}

// 2. BLOCKING READ (Acts like a traditional read/scanf)
// This will freeze execution until a key is pressed.
u8 ReadByte_Blocking(void) {
    while (!(XIo_In32(UART_STATUS_REG) & UART_STATUS_RX_VALID)) {
        // Wait forever until data arrives
    }
    return (u8)XIo_In32(UART_RX_REG);
}

int ReadByte_NonBlocking(uint8_t * target)
{
    if(!(XIo_In32(UART_STATUS_REG) & UART_STATUS_RX_VALID))
    {
        return 0;
    }
    (*target) = (u8)XIo_In32(UART_RX_REG);
    return 1;
}

// 1. BLOCKING WRITE (Most Common)
// Waits until there is room in the TX FIFO, then sends the character.
void WriteByte_Blocking(u8 data) {
    while (XIo_In32(UART_STATUS_REG) & UART_STATUS_TX_FULL) {
        // Spin lock until the TX FIFO has room
    }
    XIo_Out32(UART_TX_REG, data);
}


void finish_writing(uint8_t * buffer_progression, uint32_t * character_count)
{
    // This satisfies the "append a single '1' bit" clause
    asic_in[*buffer_progression] = 0x80; // 0b10000000
    (*buffer_progression)++;

    // If adding 0x80 perfectly filled the 64-byte block, commit it now
    if (*buffer_progression == 64) {
        commit_changes();
        *buffer_progression = 0;
    }

    // Now calculate remaining space for the 64-bit length integer
    uint8_t bytes_left = 64 - (*buffer_progression);
    uint64_t total_bits_written = 8 * (uint64_t)(*character_count);

    if(bytes_left >= 8)
    {
        /// We can fit the bit count in current buffer
        for(int i = 0; i < 8; i++)
        {
            asic_in[i + 56] = (uint8_t)((total_bits_written >> (56 - (i * 8)) & 0xFF));
        }
        commit_changes();
    }
    else {
        /// We can't fit the bit count, it overflows to a new block
        // Commit the current block containing the data + 1 bit concat
        commit_changes();
        
        // Write the size at the end of the next blank block
        for(int i = 0; i < 8; i++)
        {
            asic_in[i + 56] = (uint8_t)(total_bits_written >> (56 - (i * 8)));
        }
        commit_changes();
    }
}

int main()
{
    init_platform();
    do { 
        uint32_t character_count = 0;
        uint8_t buffer_progression = 0; // 8 bits so we save memory - no bigger than 64
        while(ReadByte_Blocking() != PROTOCOL_SYNC) {} // Wait for connection
        reset_asic();
        WriteByte_Blocking(PROTOCOL_SYNC); // Acknowledge connection!
        do
        {
            // Wait for size
            uint8_t size_read_this_iteration = ReadByte_Blocking();
            
            // if none - then it's stopped writing
            if(size_read_this_iteration == PROTOCOL_STOP)
            {
                finish_writing(&buffer_progression,&character_count); // Tie everything all up!
                WriteByte_Blocking(PROTOCOL_SYNC); // "I'd like to send"
                while(ReadByte_Blocking() != PROTOCOL_SYNC) {} // "Please do!"
                for(int i = 0; i < 32; i++)
                {
                    WriteByte_Blocking(asic_out[i]);
                }
                break;// go back to awaiting for connection
            }
            else { 
                // write all bytes sent to buffer
                for(uint8_t i = 0 ; i<size_read_this_iteration; i++)
                {
                    // Get the byte and save it to memory
                    asic_in[buffer_progression++] = ReadByte_Blocking();
                    character_count++;

                    if(buffer_progression == 64)
                    {
                        commit_changes();
                        buffer_progression = 0;
                    }
                }
            }
        }while(1);      
    }while (1);
    cleanup_platform();
    return 0;
}
