-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2026 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:microblaze_mcs:3.0
-- IP Revision: 27

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_microblaze_mcs_0_0 IS
  PORT (
    Clk : IN STD_LOGIC;
    Reset : IN STD_LOGIC;
    IO_addr_strobe : OUT STD_LOGIC;
    IO_address : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    IO_byte_enable : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    IO_read_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    IO_read_strobe : OUT STD_LOGIC;
    IO_ready : IN STD_LOGIC;
    IO_write_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    IO_write_strobe : OUT STD_LOGIC;
    UART_rxd : IN STD_LOGIC;
    UART_txd : OUT STD_LOGIC;
    GPIO1_tri_i : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    GPIO1_tri_o : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    GPIO2_tri_o : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
END design_1_microblaze_mcs_0_0;

ARCHITECTURE design_1_microblaze_mcs_0_0_arch OF design_1_microblaze_mcs_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_microblaze_mcs_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT bd_e547 IS
    PORT (
      Clk : IN STD_LOGIC;
      Reset : IN STD_LOGIC;
      IO_addr_strobe : OUT STD_LOGIC;
      IO_address : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      IO_byte_enable : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      IO_read_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      IO_read_strobe : OUT STD_LOGIC;
      IO_ready : IN STD_LOGIC;
      IO_write_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      IO_write_strobe : OUT STD_LOGIC;
      UART_rxd : IN STD_LOGIC;
      UART_txd : OUT STD_LOGIC;
      GPIO1_tri_i : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      GPIO1_tri_o : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      GPIO2_tri_o : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
    );
  END COMPONENT bd_e547;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_1_microblaze_mcs_0_0_arch: ARCHITECTURE IS "bd_e547,Vivado 2025.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_1_microblaze_mcs_0_0_arch : ARCHITECTURE IS "design_1_microblaze_mcs_0_0,bd_e547,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF design_1_microblaze_mcs_0_0_arch: ARCHITECTURE IS "design_1_microblaze_mcs_0_0,bd_e547,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=microblaze_mcs,x_ipVersion=3.0,x_ipCoreRevision=27,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,JTAG_CHAIN=2,MICROBLAZE_INSTANCE=microblaze_0,AVOID_PRIMITIVES=0,PATH=mcs_0,FREQ=100.0,OPTIMIZATION=0,DEBUG_ENABLED=0,USE_BSCAN=0,BSCANID=76547328,TRACE=0,ECC=0,MEMSIZE=16384,MEMTYPE=0,USE_IO_BUS=1,USE_UART_RX=1,USE_UART_TX=1,UART_BAUDRATE=115200,UART_PROG_BAUDRATE=0,UART_DATA_BITS=8,UART_USE_PARITY" & 
"=0,UART_ODD_PARITY=0,UART_RX_INTERRUPT=0,UART_TX_INTERRUPT=0,UART_ERROR_INTERRUPT=0,USE_FIT1=0,FIT1_No_CLOCKS=6216,FIT1_INTERRUPT=0,USE_FIT2=0,FIT2_No_CLOCKS=6216,FIT2_INTERRUPT=0,USE_FIT3=0,FIT3_No_CLOCKS=6216,FIT3_INTERRUPT=0,USE_FIT4=0,FIT4_No_CLOCKS=6216,FIT4_INTERRUPT=0,USE_PIT1=0,PIT1_SIZE=32,PIT1_READABLE=1,PIT1_PRESCALER=0,PIT1_INTERRUPT=0,USE_PIT2=0,PIT2_SIZE=32,PIT2_READABLE=1,PIT2_PRESCALER=0,PIT2_INTERRUPT=0,USE_PIT3=0,PIT3_SIZE=32,PIT3_READABLE=1,PIT3_PRESCALER=0,PIT3_INTERRUPT=0,US" & 
"E_PIT4=0,PIT4_SIZE=32,PIT4_READABLE=1,PIT4_PRESCALER=0,PIT4_INTERRUPT=0,USE_GPO1=1,GPO1_SIZE=1,GPO1_INIT=0x00000000,USE_GPO2=1,GPO2_SIZE=1,GPO2_INIT=0x00000000,USE_GPO3=0,GPO3_SIZE=32,GPO3_INIT=0x00000000,USE_GPO4=0,GPO4_SIZE=32,GPO4_INIT=0x00000000,USE_GPI1=1,GPI1_SIZE=1,GPI1_INTERRUPT=0,USE_GPI2=0,GPI2_SIZE=32,GPI2_INTERRUPT=0,USE_GPI3=0,GPI3_SIZE=32,GPI3_INTERRUPT=0,USE_GPI4=0,GPI4_SIZE=32,GPI4_INTERRUPT=0,INTC_USE_EXT_INTR=0,INTC_INTR_SIZE=1,INTC_LEVEL_EDGE=0x0000,INTC_POSITIVE=0xFFFF,INTC_A" & 
"SYNC_INTR=0xFFFF,INTC_NUM_SYNC_FF=2,Component_Name=design_1_microblaze_mcs_0_0,USE_BOARD_FLOW=true,CLK_BOARD_INTERFACE=sys_clock,RESET_BOARD_INTERFACE=reset,GPIO1_BOARD_INTERFACE=Custom,GPIO2_BOARD_INTERFACE=Custom,GPIO3_BOARD_INTERFACE=Custom,GPIO4_BOARD_INTERFACE=Custom,UART_BOARD_INTERFACE=usb_uart}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_MODE : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF Clk: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.Clk CLK";
  ATTRIBUTE X_INTERFACE_MODE OF Clk: SIGNAL IS "slave CLK.Clk";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Clk: SIGNAL IS "XIL_INTERFACENAME CLK.Clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_sys_clock, INSERT_VIP 0, ASSOCIATED_ASYNC_RESET Reset, BOARD.ASSOCIATED_PARAM CLK_BOARD_INTERFACE";
  ATTRIBUTE X_INTERFACE_INFO OF GPIO1_tri_i: SIGNAL IS "xilinx.com:interface:gpio:1.0 GPIO1 TRI_I";
  ATTRIBUTE X_INTERFACE_MODE OF GPIO1_tri_i: SIGNAL IS "master GPIO1";
  ATTRIBUTE X_INTERFACE_PARAMETER OF GPIO1_tri_i: SIGNAL IS "XIL_INTERFACENAME GPIO1, C_USE_GPO1 1, C_GPO1_SIZE 1, C_GPO1_INIT 0x00000000, C_USE_GPI1 1, C_GPI1_SIZE 1, C_GPI1_INTERRUPT 0, BOARD.ASSOCIATED_PARAM GPIO1_BOARD_INTERFACE";
  ATTRIBUTE X_INTERFACE_INFO OF GPIO1_tri_o: SIGNAL IS "xilinx.com:interface:gpio:1.0 GPIO1 TRI_O";
  ATTRIBUTE X_INTERFACE_INFO OF GPIO2_tri_o: SIGNAL IS "xilinx.com:interface:gpio:1.0 GPIO2 TRI_O";
  ATTRIBUTE X_INTERFACE_MODE OF GPIO2_tri_o: SIGNAL IS "master GPIO2";
  ATTRIBUTE X_INTERFACE_PARAMETER OF GPIO2_tri_o: SIGNAL IS "XIL_INTERFACENAME GPIO2, C_USE_GPO2 1, C_GPO2_SIZE 1, C_GPO2_INIT 0x00000000, C_USE_GPI2 0, C_GPI2_SIZE 32, C_GPI2_INTERRUPT 0, BOARD.ASSOCIATED_PARAM GPIO2_BOARD_INTERFACE";
  ATTRIBUTE X_INTERFACE_INFO OF IO_addr_strobe: SIGNAL IS "xilinx.com:interface:mcsio_bus:1.0 IO ADDR_STROBE";
  ATTRIBUTE X_INTERFACE_MODE OF IO_addr_strobe: SIGNAL IS "master IO";
  ATTRIBUTE X_INTERFACE_INFO OF IO_address: SIGNAL IS "xilinx.com:interface:mcsio_bus:1.0 IO ADDRESS";
  ATTRIBUTE X_INTERFACE_INFO OF IO_byte_enable: SIGNAL IS "xilinx.com:interface:mcsio_bus:1.0 IO BYTE_ENABLE";
  ATTRIBUTE X_INTERFACE_INFO OF IO_read_data: SIGNAL IS "xilinx.com:interface:mcsio_bus:1.0 IO READ_DATA";
  ATTRIBUTE X_INTERFACE_INFO OF IO_read_strobe: SIGNAL IS "xilinx.com:interface:mcsio_bus:1.0 IO READ_STROBE";
  ATTRIBUTE X_INTERFACE_INFO OF IO_ready: SIGNAL IS "xilinx.com:interface:mcsio_bus:1.0 IO READY";
  ATTRIBUTE X_INTERFACE_INFO OF IO_write_data: SIGNAL IS "xilinx.com:interface:mcsio_bus:1.0 IO WRITE_DATA";
  ATTRIBUTE X_INTERFACE_INFO OF IO_write_strobe: SIGNAL IS "xilinx.com:interface:mcsio_bus:1.0 IO WRITE_STROBE";
  ATTRIBUTE X_INTERFACE_INFO OF Reset: SIGNAL IS "xilinx.com:signal:reset:1.0 RST.Reset RST";
  ATTRIBUTE X_INTERFACE_MODE OF Reset: SIGNAL IS "slave RST.Reset";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Reset: SIGNAL IS "XIL_INTERFACENAME RST.Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0, BOARD.ASSOCIATED_PARAM RESET_BOARD_INTERFACE";
  ATTRIBUTE X_INTERFACE_INFO OF UART_rxd: SIGNAL IS "xilinx.com:interface:uart:1.0 UART RxD";
  ATTRIBUTE X_INTERFACE_MODE OF UART_rxd: SIGNAL IS "master UART";
  ATTRIBUTE X_INTERFACE_PARAMETER OF UART_rxd: SIGNAL IS "XIL_INTERFACENAME UART, BOARD.ASSOCIATED_PARAM UART_BOARD_INTERFACE";
  ATTRIBUTE X_INTERFACE_INFO OF UART_txd: SIGNAL IS "xilinx.com:interface:uart:1.0 UART TxD";
BEGIN
  U0 : bd_e547
    PORT MAP (
      Clk => Clk,
      Reset => Reset,
      IO_addr_strobe => IO_addr_strobe,
      IO_address => IO_address,
      IO_byte_enable => IO_byte_enable,
      IO_read_data => IO_read_data,
      IO_read_strobe => IO_read_strobe,
      IO_ready => IO_ready,
      IO_write_data => IO_write_data,
      IO_write_strobe => IO_write_strobe,
      UART_rxd => UART_rxd,
      UART_txd => UART_txd,
      GPIO1_tri_i => GPIO1_tri_i,
      GPIO1_tri_o => GPIO1_tri_o,
      GPIO2_tri_o => GPIO2_tri_o
    );
END design_1_microblaze_mcs_0_0_arch;
