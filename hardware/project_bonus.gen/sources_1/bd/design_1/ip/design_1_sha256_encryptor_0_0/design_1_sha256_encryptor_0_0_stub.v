// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Wed May 27 14:49:40 2026
// Host        : sasarmandarius-HP-ZBook-17-G3 running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/sasarmandarius/Desktop/LabCA/project_bonus/project_bonus.gen/sources_1/bd/design_1/ip/design_1_sha256_encryptor_0_0/design_1_sha256_encryptor_0_0_stub.v
// Design      : design_1_sha256_encryptor_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_sha256_encryptor_0_0,sha256_encryptor,{}" *) (* core_generation_info = "design_1_sha256_encryptor_0_0,sha256_encryptor,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=sha256_encryptor,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "sha256_encryptor,Vivado 2025.2" *) 
module design_1_sha256_encryptor_0_0(clk, rst, start, work_done, bram_clk_b, bram_rst_b, 
  bram_en_b, bram_we_b, bram_addr_b, bram_wrdata_b, bram_rddata_b)
/* synthesis syn_black_box black_box_pad_pin="rst,start,work_done,bram_rst_b,bram_en_b,bram_we_b[3:0],bram_addr_b[31:0],bram_wrdata_b[31:0],bram_rddata_b[31:0]" */
/* synthesis syn_force_seq_prim="clk" */
/* synthesis syn_force_seq_prim="bram_clk_b" */;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_mode = "slave rst" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input start;
  output work_done;
  output bram_clk_b /* synthesis syn_isclock = 1 */;
  output bram_rst_b;
  output bram_en_b;
  output [3:0]bram_we_b;
  output [31:0]bram_addr_b;
  output [31:0]bram_wrdata_b;
  input [31:0]bram_rddata_b;
endmodule
