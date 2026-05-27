// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Tue May 26 00:23:54 2026
// Host        : sasarmandarius-HP-ZBook-17-G3 running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top design_1_blk_mem_gen_0_0 -prefix
//               design_1_blk_mem_gen_0_0_ design_1_blk_mem_gen_0_0_sim_netlist.v
// Design      : design_1_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_0_0,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module design_1_blk_mem_gen_0_0
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 4096, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.7492 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_blk_mem_gen_0_0_blk_mem_gen_v8_4_12 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[12:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YqH9kwIC39+qbZg4PSfFsXuB9k9wnuxNryS/CfnEri6Ci9fSC6fsrQ/T/hnt3u/yolbJ8DJa1Qu6
Qnm24A9jLbA+fu3Nsmm6/rM6a4vU6OfVl/gTFd/CiWDutv6Dhn6Lim4uUNPahoOR/A2Yc4Zo2tdI
kMLO9gn9WlH2l3O2oXs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XJYO2VHd/cnMxQd3i7/2qRhl57dl+doEKuhAunQyv3vpGRG/jlNxj8PqrgLoF0HMdqE3qJUVE/oq
kBSapqjVjLDMOrNGQ+Tc6VGsKMZH8FE/TXHQJ/IM5Iuiu2eozEwwVUomF+7cfqn+9OsVsqCONQ1M
g0oRlangiqasJDhhMfnlGGqwAwmgWRGQA6dmhTuua1s8zdvIv540zY6p5au8cAKVhqyyKK7wbxEE
SGuFqX+NYoyRV+rfWCcWM+hJEmnWS8LNAKkd13YE2+17sPYzUdZ23DmTxXK6KlAxKFW27CBySUfg
qdNXp2DSs2KAQYih27pBNMuHfGbM/ATFPWFvxg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYoEi/e8HsDTz6N11EDe/B/iitERmeYndlCklmCluwgb0N4W80JUGVlkd7NlRZHRNhxaNBJPkcjC
n61nO0tb17NwsMwjbY5TF8JWRYTNw1JXCFacvQYrdKv4/7QNQEtwVGiCLxFhOA8aHlWMZIrc2fri
VRMVWaEBcPwCGorlVIM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QEw9fEsWFbdX0OQLvYs/gl+zyEOW3ak9TdQVaq+0AXXOT3LIqF7wDxJ6ZBnlf9mNbdsUVH5tAz1o
H8u7ihJl1L3THEvugW+TS8hkvVbEA9rKO2vV15KAj4Lla7UdFT/xDfe79RFarlLI7yGrubjgdoRi
QWy//UKsffG7IWNwmoSuppWiWB4ZHJtkunNyIkm70JPGyZF62VxJg1MTT+5LUbZG5vZjjuHZud9w
xJaKv1tFP/x8RVqLU5gPOqGqTW7/nKO2S+450Vo4D9vAmBVVcXpaL1EbSmCvQ+qJmcQKtf9qYFRV
Zko08hbpHjPxstqvTDro01jRzB8592m4xU2TWA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TC7q853CWBPPJgbRfgDV1lmjUwSAtliljShAyNFg8sfRfwDzchthzoSPH1UCHV++E2JXacEKq1lB
UWsNP92U4Xh0/Gu+6esOI0pJb8I+TRTxyBN1I4cRQEfQHcwfhbSdeH3yX9OV3opLEqYmT37hWU+J
zCawYnxVESI0FtRzEXve9gdEWlrKKckrT/hp4mvxxOjvOkOSQBvy0elgUOqh6mEOZl+JnUbsR+Wm
CoZLE1eefMZy3FnVmyDNPv3JPXi88aLXMyimal0MYFkTiS4XJiGT3eAIMIbksehXY+eYi/KFpZWQ
GHpX+lG3UmiWWLwyPakFwKEHbrBc70AlJ2eV9g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j9nmCKgjPWNChPbpSW6EWLrMA6oCG2JGPoum8px09v0PEAh0DRXZi0J8HPzXUsZgOEMcKpA7X54u
YFcDDCLAQ+urha/eSPbQYHQh4yGCursxAQ1C6LEyNQ2wJ0eLlO2bJeAl/gof06zqsYVM2lLJVNv5
wao1k2bmgPdfpfY3c9vPD0fSMuZPS41EoRS0cQhO5GTZnKdjxm6tEUL3GnTjB8ynSCIbCJUsMtAX
4FRHNa52gudx5B5fagR+lXgFhE7e++rWTJELr7SYB+r5Es8qZLTpCH8TrQxEkV0rY/+e4sAjNE2D
gHw8GD7VcUtc15B8y1BbVmh29qc8Nd3V2i/miA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UkCD6I/Vye4qNoNoa3hIexBXG3xyKUJPAHAjIo7UcNVCDXpMQiYEtPDqExZMfiPlJn2nswCYIfIJ
FYWqMCloKSQyyI/7yZ2EtbyWEklb/P5IyZyvGi6hhFUo/JFTb12b4bK0gZPr+bCDdlVQKTx5GVHz
wptdUJO2omSj8axVMPbLRRtVzlJIZ29dTJ2ATXVXAcBxPnFfHRAMnYYKLeeLExX61vQvpqrkLQHm
XG7hpVzJi56gYKAzxa2BLq072OCVpVS70bfWlhlSTVcSlCrUf+EcarEk4FD8+Ih2NCvrqremG6yn
TtcBn8Xr8M/6zhOYvLi6AD6eArDMKA8n+Ccv8A==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A5y5QVZU8yjPexRVPioSiAGohCHD5DX5FVobuMyhcgQRExLUhPvnnS8HOtxTj/2IapEcz68gFMGG
Hpi+m725u85/om/Vze9pGIW9Mn328Kz2FIg3W5EvGstfGwY+48LiAGAmTR269JS4lJGVYWYOz7Xk
S8cEsFd2m7j8iyKtARJzD90+UdXq/cIIh725jC9i8nbgxB364zddvm1Z/DF3JRw1qFp6GGcuRai1
KNcJ1j8c9wtIgktpsteU3e5+bxHEw8NT3gWXUFYjm00NDq97Jals8Jjktmum2nQxoF7ivPacfEey
gnSF6jRMkTsZObzc30hAhs0CEtc33hZLhPLHSn8pQ0WyvKJLHdd5s2yckgTZtqxC1Sbwe7WEgNXe
ZMX3pIkz+aoXsAL7GBLyVBMVQcyMoF0w8QGAaTe8sqatABwPqXidYRqNROTf62IYcMpV89XYgaTv
EwIn/oni9KOFd2BFVxRZbFGGC4IjvigsTBUijI+Dk6kVnDh240clGcc4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Omtp+lCaqUx7Z4qdFj2zrN8LpCkit2eX4hlMtig+ielGm/x4FSZkpjoFmiqdKFPi2eg0pg09MSai
XyGH68UzAR7Xrj8f1jlIoUmMKp4GcxfdqfTeuu7kWGOJEP6cvgTjSJFj2gawDv7f4yZcltnK2x0L
e4GW/rBTmGvZtKWb2ahjINLxPuh3dDaSaWdb+zVgbtyrI5FrjxBkq+aOxSjyNsqnCx1L0uWbxnkl
88NbXN3dTaECXHNm/fsleayM5hKis7kTv9BFajJMGy+BhQlmIYpE+F5zchnTTFUFJZCz1sX9Fc8e
HcY7irB8mR3ajdzjUZLBQEMktp096Nheq3U75A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hpeBLwN9x2ZFDwroYLlUe5GjjDepHik2l0c2s3/6S7JPCRkzQSyt2V1Ad/JewAs/QNp5SXSbYYB4
rQl0My1LDMF3xw43r0g2IbcyHVpPhGp0W5msuQdF67afnsRv90iJYWLMI3QkYGCTWAzl4HrLxFSg
3z8XZRK670IcxznOrlvgHmIKsvubZrBkuc1EynrVb9Nw16QnIx2rc4WgcEXeFf+4i1RoYLDd3gXK
NFCNMdtaRYUThunFP6Z4ViZ5UnDmKq+IMhd31jTaqIlWOBDxPI1+v5RJYxIyTbn4rxlKR2fNbl5/
z4OUjBTd+1GH3I2OXlqmAOvIhpe2Z2HH7nZu/A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Mt2RhTSUwEIEWeNARbyL+EdfS1UF6nPaL/fKl/7oO2gina93egwCWDLl1fbBtkfaPco0cu4MJ9K3
OraAsyHRlY+MNShmJ1LzAIA1LjZx4y55lu9dlQqSUXR7AW7wVbkg1864mK+hM/1XygU0jvebKNW9
B7xSER+asLO6pxi0mt7uC2PHxLPAYEszFhmnap82TtbDGdQ2qtyekY+ngs+N2fAdsblxVwJruiMl
e6XJ127M8N1mYwhWU2HtRpBOSnnKoHgD9fG51XK/rhk8DxT66QnX9uLPB+H25eDupBJGi1Y5o6x8
hOwZiSUVlBLh7brfzevh7+eRn+7es6wBas0+3w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 61024)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
