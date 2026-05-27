## =====================================================================
## CLOCK SIGNAL (100 MHz Crystal Oscillator)
## =====================================================================
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { sys_clock }];
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports { sys_clock }];

## =====================================================================
## RESET BUTTON (CPU_RESET Red Pushbutton - Active Low)
## =====================================================================
set_property -dict { PACKAGE_PIN C12   IOSTANDARD LVCMOS33 } [get_ports { reset }];

## =====================================================================
## USB-UART INTERFACE (For MicroBlaze Serial Communication)
## =====================================================================
## UART Transmit (FPGA Out -> USB Chip -> PC RX)
set_property -dict { PACKAGE_PIN D4    IOSTANDARD LVCMOS33 } [get_ports { usb_uart_txd }];
## UART Receive (PC TX -> USB Chip -> FPGA In)
set_property -dict { PACKAGE_PIN C4    IOSTANDARD LVCMOS33 } [get_ports { usb_uart_rxd }];