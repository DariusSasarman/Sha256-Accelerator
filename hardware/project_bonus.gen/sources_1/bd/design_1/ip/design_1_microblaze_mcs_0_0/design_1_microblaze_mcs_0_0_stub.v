// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Tue May 26 20:31:04 2026
// Host        : sasarmandarius-HP-ZBook-17-G3 running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_microblaze_mcs_0_0 -prefix
//               design_1_microblaze_mcs_0_0_ design_1_microblaze_mcs_0_0_stub.v
// Design      : design_1_microblaze_mcs_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_microblaze_mcs_0_0,bd_e547,{}" *) (* core_generation_info = "design_1_microblaze_mcs_0_0,bd_e547,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=microblaze_mcs,x_ipVersion=3.0,x_ipCoreRevision=27,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,JTAG_CHAIN=2,MICROBLAZE_INSTANCE=microblaze_0,AVOID_PRIMITIVES=0,PATH=mcs_0,FREQ=100.0,OPTIMIZATION=0,DEBUG_ENABLED=0,USE_BSCAN=0,BSCANID=76547328,TRACE=0,ECC=0,MEMSIZE=16384,MEMTYPE=0,USE_IO_BUS=1,USE_UART_RX=1,USE_UART_TX=1,UART_BAUDRATE=115200,UART_PROG_BAUDRATE=0,UART_DATA_BITS=8,UART_USE_PARITY=0,UART_ODD_PARITY=0,UART_RX_INTERRUPT=0,UART_TX_INTERRUPT=0,UART_ERROR_INTERRUPT=0,USE_FIT1=0,FIT1_No_CLOCKS=6216,FIT1_INTERRUPT=0,USE_FIT2=0,FIT2_No_CLOCKS=6216,FIT2_INTERRUPT=0,USE_FIT3=0,FIT3_No_CLOCKS=6216,FIT3_INTERRUPT=0,USE_FIT4=0,FIT4_No_CLOCKS=6216,FIT4_INTERRUPT=0,USE_PIT1=0,PIT1_SIZE=32,PIT1_READABLE=1,PIT1_PRESCALER=0,PIT1_INTERRUPT=0,USE_PIT2=0,PIT2_SIZE=32,PIT2_READABLE=1,PIT2_PRESCALER=0,PIT2_INTERRUPT=0,USE_PIT3=0,PIT3_SIZE=32,PIT3_READABLE=1,PIT3_PRESCALER=0,PIT3_INTERRUPT=0,USE_PIT4=0,PIT4_SIZE=32,PIT4_READABLE=1,PIT4_PRESCALER=0,PIT4_INTERRUPT=0,USE_GPO1=1,GPO1_SIZE=1,GPO1_INIT=0x00000000,USE_GPO2=1,GPO2_SIZE=1,GPO2_INIT=0x00000000,USE_GPO3=0,GPO3_SIZE=32,GPO3_INIT=0x00000000,USE_GPO4=0,GPO4_SIZE=32,GPO4_INIT=0x00000000,USE_GPI1=1,GPI1_SIZE=1,GPI1_INTERRUPT=0,USE_GPI2=0,GPI2_SIZE=32,GPI2_INTERRUPT=0,USE_GPI3=0,GPI3_SIZE=32,GPI3_INTERRUPT=0,USE_GPI4=0,GPI4_SIZE=32,GPI4_INTERRUPT=0,INTC_USE_EXT_INTR=0,INTC_INTR_SIZE=1,INTC_LEVEL_EDGE=0x0000,INTC_POSITIVE=0xFFFF,INTC_ASYNC_INTR=0xFFFF,INTC_NUM_SYNC_FF=2,Component_Name=design_1_microblaze_mcs_0_0,USE_BOARD_FLOW=true,CLK_BOARD_INTERFACE=sys_clock,RESET_BOARD_INTERFACE=reset,GPIO1_BOARD_INTERFACE=Custom,GPIO2_BOARD_INTERFACE=Custom,GPIO3_BOARD_INTERFACE=Custom,GPIO4_BOARD_INTERFACE=Custom,UART_BOARD_INTERFACE=usb_uart}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "bd_e547,Vivado 2025.2" *) 
module design_1_microblaze_mcs_0_0(Clk, Reset, IO_addr_strobe, IO_address, 
  IO_byte_enable, IO_read_data, IO_read_strobe, IO_ready, IO_write_data, IO_write_strobe, 
  UART_rxd, UART_txd, GPIO1_tri_i, GPIO1_tri_o, GPIO2_tri_o)
/* synthesis syn_black_box black_box_pad_pin="Reset,IO_addr_strobe,IO_address[31:0],IO_byte_enable[3:0],IO_read_data[31:0],IO_read_strobe,IO_ready,IO_write_data[31:0],IO_write_strobe,UART_rxd,UART_txd,GPIO1_tri_i[0:0],GPIO1_tri_o[0:0],GPIO2_tri_o[0:0]" */
/* synthesis syn_force_seq_prim="Clk" */;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.Clk CLK" *) (* x_interface_mode = "slave CLK.Clk" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.Clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0, ASSOCIATED_ASYNC_RESET Reset, BOARD.ASSOCIATED_PARAM CLK_BOARD_INTERFACE" *) input Clk /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.Reset RST" *) (* x_interface_mode = "slave RST.Reset" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0, BOARD.ASSOCIATED_PARAM RESET_BOARD_INTERFACE" *) input Reset;
  (* x_interface_info = "xilinx.com:interface:mcsio_bus:1.0 IO ADDR_STROBE" *) (* x_interface_mode = "master IO" *) output IO_addr_strobe;
  (* x_interface_info = "xilinx.com:interface:mcsio_bus:1.0 IO ADDRESS" *) output [31:0]IO_address;
  (* x_interface_info = "xilinx.com:interface:mcsio_bus:1.0 IO BYTE_ENABLE" *) output [3:0]IO_byte_enable;
  (* x_interface_info = "xilinx.com:interface:mcsio_bus:1.0 IO READ_DATA" *) input [31:0]IO_read_data;
  (* x_interface_info = "xilinx.com:interface:mcsio_bus:1.0 IO READ_STROBE" *) output IO_read_strobe;
  (* x_interface_info = "xilinx.com:interface:mcsio_bus:1.0 IO READY" *) input IO_ready;
  (* x_interface_info = "xilinx.com:interface:mcsio_bus:1.0 IO WRITE_DATA" *) output [31:0]IO_write_data;
  (* x_interface_info = "xilinx.com:interface:mcsio_bus:1.0 IO WRITE_STROBE" *) output IO_write_strobe;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART RxD" *) (* x_interface_mode = "master UART" *) (* x_interface_parameter = "XIL_INTERFACENAME UART, BOARD.ASSOCIATED_PARAM UART_BOARD_INTERFACE" *) input UART_rxd;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART TxD" *) output UART_txd;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 GPIO1 TRI_I" *) (* x_interface_mode = "master GPIO1" *) (* x_interface_parameter = "XIL_INTERFACENAME GPIO1, C_USE_GPO1 1, C_GPO1_SIZE 1, C_GPO1_INIT 0x00000000, C_USE_GPI1 1, C_GPI1_SIZE 1, C_GPI1_INTERRUPT 0, BOARD.ASSOCIATED_PARAM GPIO1_BOARD_INTERFACE" *) input [0:0]GPIO1_tri_i;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 GPIO1 TRI_O" *) output [0:0]GPIO1_tri_o;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 GPIO2 TRI_O" *) (* x_interface_mode = "master GPIO2" *) (* x_interface_parameter = "XIL_INTERFACENAME GPIO2, C_USE_GPO2 1, C_GPO2_SIZE 1, C_GPO2_INIT 0x00000000, C_USE_GPI2 0, C_GPI2_SIZE 32, C_GPI2_INTERRUPT 0, BOARD.ASSOCIATED_PARAM GPIO2_BOARD_INTERFACE" *) output [0:0]GPIO2_tri_o;
endmodule
