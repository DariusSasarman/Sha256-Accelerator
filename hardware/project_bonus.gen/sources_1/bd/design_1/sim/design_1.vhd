--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
--Date        : Wed May 27 14:45:10 2026
--Host        : sasarmandarius-HP-ZBook-17-G3 running 64-bit Ubuntu 24.04.4 LTS
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    reset : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=32,da_bram_cntlr_cnt=1,da_clkrst_cnt=5,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_sha256_encryptor_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    start : in STD_LOGIC;
    work_done : out STD_LOGIC;
    bram_clk_b : out STD_LOGIC;
    bram_rst_b : out STD_LOGIC;
    bram_en_b : out STD_LOGIC;
    bram_we_b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_b : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_wrdata_b : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_b : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_sha256_encryptor_0_0;
  component design_1_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC
  );
  end component design_1_blk_mem_gen_0_0;
  component design_1_microblaze_mcs_0_0 is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    IO_addr_strobe : out STD_LOGIC;
    IO_address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    IO_byte_enable : out STD_LOGIC_VECTOR ( 3 downto 0 );
    IO_read_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IO_read_strobe : out STD_LOGIC;
    IO_ready : in STD_LOGIC;
    IO_write_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    IO_write_strobe : out STD_LOGIC;
    UART_rxd : in STD_LOGIC;
    UART_txd : out STD_LOGIC;
    GPIO1_tri_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    GPIO1_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    GPIO2_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_microblaze_mcs_0_0;
  component design_1_lmb_bram_if_cntlr_0_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component design_1_lmb_bram_if_cntlr_0_0;
  component design_1_clk_wiz_3 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component design_1_clk_wiz_3;
  signal blk_mem_gen_0_doutb : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal clk_wiz_clk_out1 : STD_LOGIC;
  signal lmb_bram_if_cntlr_0_BRAM_PORT_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal lmb_bram_if_cntlr_0_BRAM_PORT_CLK : STD_LOGIC;
  signal lmb_bram_if_cntlr_0_BRAM_PORT_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal lmb_bram_if_cntlr_0_BRAM_PORT_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal lmb_bram_if_cntlr_0_BRAM_PORT_EN : STD_LOGIC;
  signal lmb_bram_if_cntlr_0_BRAM_PORT_RST : STD_LOGIC;
  signal lmb_bram_if_cntlr_0_BRAM_PORT_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal lmb_bram_if_cntlr_0_Sl_DBus : STD_LOGIC_VECTOR ( 0 to 31 );
  signal lmb_bram_if_cntlr_0_Sl_Ready : STD_LOGIC;
  signal microblaze_mcs_0_GPIO1_tri_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_mcs_0_GPIO2_tri_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_mcs_0_IO_addr_strobe : STD_LOGIC;
  signal microblaze_mcs_0_IO_address : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_mcs_0_IO_byte_enable : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_mcs_0_IO_read_strobe : STD_LOGIC;
  signal microblaze_mcs_0_IO_write_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_mcs_0_IO_write_strobe : STD_LOGIC;
  signal reset_inv_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sha256_encryptor_0_bram_addr_b : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sha256_encryptor_0_bram_clk_b : STD_LOGIC;
  signal sha256_encryptor_0_bram_en_b : STD_LOGIC;
  signal sha256_encryptor_0_bram_we_b : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sha256_encryptor_0_bram_wrdata_b : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sha256_encryptor_0_work_done : STD_LOGIC;
  signal NLW_blk_mem_gen_0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_blk_mem_gen_0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_clk_wiz_locked_UNCONNECTED : STD_LOGIC;
  signal NLW_lmb_bram_if_cntlr_0_Sl_CE_UNCONNECTED : STD_LOGIC;
  signal NLW_lmb_bram_if_cntlr_0_Sl_UE_UNCONNECTED : STD_LOGIC;
  signal NLW_lmb_bram_if_cntlr_0_Sl_Wait_UNCONNECTED : STD_LOGIC;
  signal NLW_sha256_encryptor_0_bram_rst_b_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of sys_clock : signal is "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK";
  attribute X_INTERFACE_PARAMETER of sys_clock : signal is "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN design_1_sys_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of usb_uart_rxd : signal is "xilinx.com:interface:uart:1.0 usb_uart RxD";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of usb_uart_rxd : signal is "Master";
  attribute X_INTERFACE_INFO of usb_uart_txd : signal is "xilinx.com:interface:uart:1.0 usb_uart TxD";
begin
blk_mem_gen_0: component design_1_blk_mem_gen_0_0
     port map (
      addra(31) => lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(0),
      addra(30) => lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(1),
      addra(29) => lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(2),
      addra(28) => lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(3),
      addra(27) => lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(4),
      addra(26) => lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(5),
      addra(25) => lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(6),
      addra(24) => lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(7),
      addra(23) => lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(8),
      addra(22) => lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(9),
      addra(21) => lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(10),
      addra(20) => lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(11),
      addra(19) => lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(12),
      addra(18) => lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(13),
      addra(17) => lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(14),
      addra(16) => lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(15),
      addra(15) => lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(16),
      addra(14) => lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(17),
      addra(13) => lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(18),
      addra(12) => lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(19),
      addra(11) => lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(20),
      addra(10) => lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(21),
      addra(9) => lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(22),
      addra(8) => lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(23),
      addra(7) => lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(24),
      addra(6) => lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(25),
      addra(5) => lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(26),
      addra(4) => lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(27),
      addra(3) => lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(28),
      addra(2) => lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(29),
      addra(1) => lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(30),
      addra(0) => lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(31),
      addrb(31 downto 0) => sha256_encryptor_0_bram_addr_b(31 downto 0),
      clka => lmb_bram_if_cntlr_0_BRAM_PORT_CLK,
      clkb => sha256_encryptor_0_bram_clk_b,
      dina(31) => lmb_bram_if_cntlr_0_BRAM_PORT_DIN(0),
      dina(30) => lmb_bram_if_cntlr_0_BRAM_PORT_DIN(1),
      dina(29) => lmb_bram_if_cntlr_0_BRAM_PORT_DIN(2),
      dina(28) => lmb_bram_if_cntlr_0_BRAM_PORT_DIN(3),
      dina(27) => lmb_bram_if_cntlr_0_BRAM_PORT_DIN(4),
      dina(26) => lmb_bram_if_cntlr_0_BRAM_PORT_DIN(5),
      dina(25) => lmb_bram_if_cntlr_0_BRAM_PORT_DIN(6),
      dina(24) => lmb_bram_if_cntlr_0_BRAM_PORT_DIN(7),
      dina(23) => lmb_bram_if_cntlr_0_BRAM_PORT_DIN(8),
      dina(22) => lmb_bram_if_cntlr_0_BRAM_PORT_DIN(9),
      dina(21) => lmb_bram_if_cntlr_0_BRAM_PORT_DIN(10),
      dina(20) => lmb_bram_if_cntlr_0_BRAM_PORT_DIN(11),
      dina(19) => lmb_bram_if_cntlr_0_BRAM_PORT_DIN(12),
      dina(18) => lmb_bram_if_cntlr_0_BRAM_PORT_DIN(13),
      dina(17) => lmb_bram_if_cntlr_0_BRAM_PORT_DIN(14),
      dina(16) => lmb_bram_if_cntlr_0_BRAM_PORT_DIN(15),
      dina(15) => lmb_bram_if_cntlr_0_BRAM_PORT_DIN(16),
      dina(14) => lmb_bram_if_cntlr_0_BRAM_PORT_DIN(17),
      dina(13) => lmb_bram_if_cntlr_0_BRAM_PORT_DIN(18),
      dina(12) => lmb_bram_if_cntlr_0_BRAM_PORT_DIN(19),
      dina(11) => lmb_bram_if_cntlr_0_BRAM_PORT_DIN(20),
      dina(10) => lmb_bram_if_cntlr_0_BRAM_PORT_DIN(21),
      dina(9) => lmb_bram_if_cntlr_0_BRAM_PORT_DIN(22),
      dina(8) => lmb_bram_if_cntlr_0_BRAM_PORT_DIN(23),
      dina(7) => lmb_bram_if_cntlr_0_BRAM_PORT_DIN(24),
      dina(6) => lmb_bram_if_cntlr_0_BRAM_PORT_DIN(25),
      dina(5) => lmb_bram_if_cntlr_0_BRAM_PORT_DIN(26),
      dina(4) => lmb_bram_if_cntlr_0_BRAM_PORT_DIN(27),
      dina(3) => lmb_bram_if_cntlr_0_BRAM_PORT_DIN(28),
      dina(2) => lmb_bram_if_cntlr_0_BRAM_PORT_DIN(29),
      dina(1) => lmb_bram_if_cntlr_0_BRAM_PORT_DIN(30),
      dina(0) => lmb_bram_if_cntlr_0_BRAM_PORT_DIN(31),
      dinb(31 downto 0) => sha256_encryptor_0_bram_wrdata_b(31 downto 0),
      douta(31 downto 0) => lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(31 downto 0),
      doutb(31 downto 0) => blk_mem_gen_0_doutb(31 downto 0),
      ena => lmb_bram_if_cntlr_0_BRAM_PORT_EN,
      enb => sha256_encryptor_0_bram_en_b,
      rsta => lmb_bram_if_cntlr_0_BRAM_PORT_RST,
      rsta_busy => NLW_blk_mem_gen_0_rsta_busy_UNCONNECTED,
      rstb => '0',
      rstb_busy => NLW_blk_mem_gen_0_rstb_busy_UNCONNECTED,
      wea(3) => lmb_bram_if_cntlr_0_BRAM_PORT_WE(0),
      wea(2) => lmb_bram_if_cntlr_0_BRAM_PORT_WE(1),
      wea(1) => lmb_bram_if_cntlr_0_BRAM_PORT_WE(2),
      wea(0) => lmb_bram_if_cntlr_0_BRAM_PORT_WE(3),
      web(3 downto 0) => sha256_encryptor_0_bram_we_b(3 downto 0)
    );
clk_wiz: component design_1_clk_wiz_3
     port map (
      clk_in1 => sys_clock,
      clk_out1 => clk_wiz_clk_out1,
      locked => NLW_clk_wiz_locked_UNCONNECTED,
      reset => reset_inv_0_Res(0)
    );
lmb_bram_if_cntlr_0: component design_1_lmb_bram_if_cntlr_0_0
     port map (
      BRAM_Addr_A(0 to 31) => lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(0 to 31),
      BRAM_Clk_A => lmb_bram_if_cntlr_0_BRAM_PORT_CLK,
      BRAM_Din_A(0) => lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(31),
      BRAM_Din_A(1) => lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(30),
      BRAM_Din_A(2) => lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(29),
      BRAM_Din_A(3) => lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(28),
      BRAM_Din_A(4) => lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(27),
      BRAM_Din_A(5) => lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(26),
      BRAM_Din_A(6) => lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(25),
      BRAM_Din_A(7) => lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(24),
      BRAM_Din_A(8) => lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(23),
      BRAM_Din_A(9) => lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(22),
      BRAM_Din_A(10) => lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(21),
      BRAM_Din_A(11) => lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(20),
      BRAM_Din_A(12) => lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(19),
      BRAM_Din_A(13) => lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(18),
      BRAM_Din_A(14) => lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(17),
      BRAM_Din_A(15) => lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(16),
      BRAM_Din_A(16) => lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(15),
      BRAM_Din_A(17) => lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(14),
      BRAM_Din_A(18) => lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(13),
      BRAM_Din_A(19) => lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(12),
      BRAM_Din_A(20) => lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(11),
      BRAM_Din_A(21) => lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(10),
      BRAM_Din_A(22) => lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(9),
      BRAM_Din_A(23) => lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(8),
      BRAM_Din_A(24) => lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(7),
      BRAM_Din_A(25) => lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(6),
      BRAM_Din_A(26) => lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(5),
      BRAM_Din_A(27) => lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(4),
      BRAM_Din_A(28) => lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(3),
      BRAM_Din_A(29) => lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(2),
      BRAM_Din_A(30) => lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(1),
      BRAM_Din_A(31) => lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(0),
      BRAM_Dout_A(0 to 31) => lmb_bram_if_cntlr_0_BRAM_PORT_DIN(0 to 31),
      BRAM_EN_A => lmb_bram_if_cntlr_0_BRAM_PORT_EN,
      BRAM_Rst_A => lmb_bram_if_cntlr_0_BRAM_PORT_RST,
      BRAM_WEN_A(0 to 3) => lmb_bram_if_cntlr_0_BRAM_PORT_WE(0 to 3),
      LMB_ABus(0) => microblaze_mcs_0_IO_address(31),
      LMB_ABus(1) => microblaze_mcs_0_IO_address(30),
      LMB_ABus(2) => microblaze_mcs_0_IO_address(29),
      LMB_ABus(3) => microblaze_mcs_0_IO_address(28),
      LMB_ABus(4) => microblaze_mcs_0_IO_address(27),
      LMB_ABus(5) => microblaze_mcs_0_IO_address(26),
      LMB_ABus(6) => microblaze_mcs_0_IO_address(25),
      LMB_ABus(7) => microblaze_mcs_0_IO_address(24),
      LMB_ABus(8) => microblaze_mcs_0_IO_address(23),
      LMB_ABus(9) => microblaze_mcs_0_IO_address(22),
      LMB_ABus(10) => microblaze_mcs_0_IO_address(21),
      LMB_ABus(11) => microblaze_mcs_0_IO_address(20),
      LMB_ABus(12) => microblaze_mcs_0_IO_address(19),
      LMB_ABus(13) => microblaze_mcs_0_IO_address(18),
      LMB_ABus(14) => microblaze_mcs_0_IO_address(17),
      LMB_ABus(15) => microblaze_mcs_0_IO_address(16),
      LMB_ABus(16) => microblaze_mcs_0_IO_address(15),
      LMB_ABus(17) => microblaze_mcs_0_IO_address(14),
      LMB_ABus(18) => microblaze_mcs_0_IO_address(13),
      LMB_ABus(19) => microblaze_mcs_0_IO_address(12),
      LMB_ABus(20) => microblaze_mcs_0_IO_address(11),
      LMB_ABus(21) => microblaze_mcs_0_IO_address(10),
      LMB_ABus(22) => microblaze_mcs_0_IO_address(9),
      LMB_ABus(23) => microblaze_mcs_0_IO_address(8),
      LMB_ABus(24) => microblaze_mcs_0_IO_address(7),
      LMB_ABus(25) => microblaze_mcs_0_IO_address(6),
      LMB_ABus(26) => microblaze_mcs_0_IO_address(5),
      LMB_ABus(27) => microblaze_mcs_0_IO_address(4),
      LMB_ABus(28) => microblaze_mcs_0_IO_address(3),
      LMB_ABus(29) => microblaze_mcs_0_IO_address(2),
      LMB_ABus(30) => microblaze_mcs_0_IO_address(1),
      LMB_ABus(31) => microblaze_mcs_0_IO_address(0),
      LMB_AddrStrobe => microblaze_mcs_0_IO_addr_strobe,
      LMB_BE(0) => microblaze_mcs_0_IO_byte_enable(3),
      LMB_BE(1) => microblaze_mcs_0_IO_byte_enable(2),
      LMB_BE(2) => microblaze_mcs_0_IO_byte_enable(1),
      LMB_BE(3) => microblaze_mcs_0_IO_byte_enable(0),
      LMB_Clk => clk_wiz_clk_out1,
      LMB_ReadStrobe => microblaze_mcs_0_IO_read_strobe,
      LMB_Rst => reset_inv_0_Res(0),
      LMB_WriteDBus(0) => microblaze_mcs_0_IO_write_data(31),
      LMB_WriteDBus(1) => microblaze_mcs_0_IO_write_data(30),
      LMB_WriteDBus(2) => microblaze_mcs_0_IO_write_data(29),
      LMB_WriteDBus(3) => microblaze_mcs_0_IO_write_data(28),
      LMB_WriteDBus(4) => microblaze_mcs_0_IO_write_data(27),
      LMB_WriteDBus(5) => microblaze_mcs_0_IO_write_data(26),
      LMB_WriteDBus(6) => microblaze_mcs_0_IO_write_data(25),
      LMB_WriteDBus(7) => microblaze_mcs_0_IO_write_data(24),
      LMB_WriteDBus(8) => microblaze_mcs_0_IO_write_data(23),
      LMB_WriteDBus(9) => microblaze_mcs_0_IO_write_data(22),
      LMB_WriteDBus(10) => microblaze_mcs_0_IO_write_data(21),
      LMB_WriteDBus(11) => microblaze_mcs_0_IO_write_data(20),
      LMB_WriteDBus(12) => microblaze_mcs_0_IO_write_data(19),
      LMB_WriteDBus(13) => microblaze_mcs_0_IO_write_data(18),
      LMB_WriteDBus(14) => microblaze_mcs_0_IO_write_data(17),
      LMB_WriteDBus(15) => microblaze_mcs_0_IO_write_data(16),
      LMB_WriteDBus(16) => microblaze_mcs_0_IO_write_data(15),
      LMB_WriteDBus(17) => microblaze_mcs_0_IO_write_data(14),
      LMB_WriteDBus(18) => microblaze_mcs_0_IO_write_data(13),
      LMB_WriteDBus(19) => microblaze_mcs_0_IO_write_data(12),
      LMB_WriteDBus(20) => microblaze_mcs_0_IO_write_data(11),
      LMB_WriteDBus(21) => microblaze_mcs_0_IO_write_data(10),
      LMB_WriteDBus(22) => microblaze_mcs_0_IO_write_data(9),
      LMB_WriteDBus(23) => microblaze_mcs_0_IO_write_data(8),
      LMB_WriteDBus(24) => microblaze_mcs_0_IO_write_data(7),
      LMB_WriteDBus(25) => microblaze_mcs_0_IO_write_data(6),
      LMB_WriteDBus(26) => microblaze_mcs_0_IO_write_data(5),
      LMB_WriteDBus(27) => microblaze_mcs_0_IO_write_data(4),
      LMB_WriteDBus(28) => microblaze_mcs_0_IO_write_data(3),
      LMB_WriteDBus(29) => microblaze_mcs_0_IO_write_data(2),
      LMB_WriteDBus(30) => microblaze_mcs_0_IO_write_data(1),
      LMB_WriteDBus(31) => microblaze_mcs_0_IO_write_data(0),
      LMB_WriteStrobe => microblaze_mcs_0_IO_write_strobe,
      Sl_CE => NLW_lmb_bram_if_cntlr_0_Sl_CE_UNCONNECTED,
      Sl_DBus(0 to 31) => lmb_bram_if_cntlr_0_Sl_DBus(0 to 31),
      Sl_Ready => lmb_bram_if_cntlr_0_Sl_Ready,
      Sl_UE => NLW_lmb_bram_if_cntlr_0_Sl_UE_UNCONNECTED,
      Sl_Wait => NLW_lmb_bram_if_cntlr_0_Sl_Wait_UNCONNECTED
    );
microblaze_mcs_0: component design_1_microblaze_mcs_0_0
     port map (
      Clk => sys_clock,
      GPIO1_tri_i(0) => sha256_encryptor_0_work_done,
      GPIO1_tri_o(0) => microblaze_mcs_0_GPIO1_tri_o(0),
      GPIO2_tri_o(0) => microblaze_mcs_0_GPIO2_tri_o(0),
      IO_addr_strobe => microblaze_mcs_0_IO_addr_strobe,
      IO_address(31 downto 0) => microblaze_mcs_0_IO_address(31 downto 0),
      IO_byte_enable(3 downto 0) => microblaze_mcs_0_IO_byte_enable(3 downto 0),
      IO_read_data(31) => lmb_bram_if_cntlr_0_Sl_DBus(0),
      IO_read_data(30) => lmb_bram_if_cntlr_0_Sl_DBus(1),
      IO_read_data(29) => lmb_bram_if_cntlr_0_Sl_DBus(2),
      IO_read_data(28) => lmb_bram_if_cntlr_0_Sl_DBus(3),
      IO_read_data(27) => lmb_bram_if_cntlr_0_Sl_DBus(4),
      IO_read_data(26) => lmb_bram_if_cntlr_0_Sl_DBus(5),
      IO_read_data(25) => lmb_bram_if_cntlr_0_Sl_DBus(6),
      IO_read_data(24) => lmb_bram_if_cntlr_0_Sl_DBus(7),
      IO_read_data(23) => lmb_bram_if_cntlr_0_Sl_DBus(8),
      IO_read_data(22) => lmb_bram_if_cntlr_0_Sl_DBus(9),
      IO_read_data(21) => lmb_bram_if_cntlr_0_Sl_DBus(10),
      IO_read_data(20) => lmb_bram_if_cntlr_0_Sl_DBus(11),
      IO_read_data(19) => lmb_bram_if_cntlr_0_Sl_DBus(12),
      IO_read_data(18) => lmb_bram_if_cntlr_0_Sl_DBus(13),
      IO_read_data(17) => lmb_bram_if_cntlr_0_Sl_DBus(14),
      IO_read_data(16) => lmb_bram_if_cntlr_0_Sl_DBus(15),
      IO_read_data(15) => lmb_bram_if_cntlr_0_Sl_DBus(16),
      IO_read_data(14) => lmb_bram_if_cntlr_0_Sl_DBus(17),
      IO_read_data(13) => lmb_bram_if_cntlr_0_Sl_DBus(18),
      IO_read_data(12) => lmb_bram_if_cntlr_0_Sl_DBus(19),
      IO_read_data(11) => lmb_bram_if_cntlr_0_Sl_DBus(20),
      IO_read_data(10) => lmb_bram_if_cntlr_0_Sl_DBus(21),
      IO_read_data(9) => lmb_bram_if_cntlr_0_Sl_DBus(22),
      IO_read_data(8) => lmb_bram_if_cntlr_0_Sl_DBus(23),
      IO_read_data(7) => lmb_bram_if_cntlr_0_Sl_DBus(24),
      IO_read_data(6) => lmb_bram_if_cntlr_0_Sl_DBus(25),
      IO_read_data(5) => lmb_bram_if_cntlr_0_Sl_DBus(26),
      IO_read_data(4) => lmb_bram_if_cntlr_0_Sl_DBus(27),
      IO_read_data(3) => lmb_bram_if_cntlr_0_Sl_DBus(28),
      IO_read_data(2) => lmb_bram_if_cntlr_0_Sl_DBus(29),
      IO_read_data(1) => lmb_bram_if_cntlr_0_Sl_DBus(30),
      IO_read_data(0) => lmb_bram_if_cntlr_0_Sl_DBus(31),
      IO_read_strobe => microblaze_mcs_0_IO_read_strobe,
      IO_ready => lmb_bram_if_cntlr_0_Sl_Ready,
      IO_write_data(31 downto 0) => microblaze_mcs_0_IO_write_data(31 downto 0),
      IO_write_strobe => microblaze_mcs_0_IO_write_strobe,
      Reset => reset,
      UART_rxd => usb_uart_rxd,
      UART_txd => usb_uart_txd
    );
  reset_inv_0_Res <= not (0 to 0 => reset);
sha256_encryptor_0: component design_1_sha256_encryptor_0_0
     port map (
      bram_addr_b(31 downto 0) => sha256_encryptor_0_bram_addr_b(31 downto 0),
      bram_clk_b => sha256_encryptor_0_bram_clk_b,
      bram_en_b => sha256_encryptor_0_bram_en_b,
      bram_rddata_b(31 downto 0) => blk_mem_gen_0_doutb(31 downto 0),
      bram_rst_b => NLW_sha256_encryptor_0_bram_rst_b_UNCONNECTED,
      bram_we_b(3 downto 0) => sha256_encryptor_0_bram_we_b(3 downto 0),
      bram_wrdata_b(31 downto 0) => sha256_encryptor_0_bram_wrdata_b(31 downto 0),
      clk => clk_wiz_clk_out1,
      rst => microblaze_mcs_0_GPIO1_tri_o(0),
      start => microblaze_mcs_0_GPIO2_tri_o(0),
      work_done => sha256_encryptor_0_work_done
    );
end STRUCTURE;
