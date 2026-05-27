// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Tue May 26 00:23:54 2026
// Host        : sasarmandarius-HP-ZBook-17-G3 running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_blk_mem_gen_0_0_sim_netlist.v
// Design      : design_1_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_0_0,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_12 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 61280)
`pragma protect data_block
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
IH2RpC8=
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
