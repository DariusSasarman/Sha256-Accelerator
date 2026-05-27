
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2025.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   if { [string compare $scripts_vivado_version $current_vivado_version] > 0 } {
      catch {common::send_gid_msg -ssname BD::TCL -id 2042 -severity "ERROR" " This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Sourcing the script failed since it was created with a future version of Vivado."}

   } else {
     catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   }

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# sha256_encryptor

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tcsg324-1
   set_property BOARD_PART digilentinc.com:nexys-a7-100t:part0:1.2 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

set bCheckIPsPassed 1
##################################################################
# CHECK IPs
##################################################################
set bCheckIPs 1
if { $bCheckIPs == 1 } {
   set list_check_ips "\ 
xilinx.com:ip:blk_mem_gen:8.4\
xilinx.com:ip:microblaze_mcs:3.0\
xilinx.com:ip:clk_wiz:6.0\
xilinx.com:inline_hdl:ilvector_logic:1.0\
xilinx.com:ip:lmb_bram_if_cntlr:4.0\
"

   set list_ips_missing ""
   common::send_gid_msg -ssname BD::TCL -id 2011 -severity "INFO" "Checking if the following IPs exist in the project's IP catalog: $list_check_ips ."

   foreach ip_vlnv $list_check_ips {
      set ip_obj [get_ipdefs -all $ip_vlnv]
      if { $ip_obj eq "" } {
         lappend list_ips_missing $ip_vlnv
      }
   }

   if { $list_ips_missing ne "" } {
      catch {common::send_gid_msg -ssname BD::TCL -id 2012 -severity "ERROR" "The following IPs are not found in the IP Catalog:\n  $list_ips_missing\n\nResolution: Please add the repository containing the IP(s) to the project." }
      set bCheckIPsPassed 0
   }

}

##################################################################
# CHECK Modules
##################################################################
set bCheckModules 1
if { $bCheckModules == 1 } {
   set list_check_mods "\ 
sha256_encryptor\
"

   set list_mods_missing ""
   common::send_gid_msg -ssname BD::TCL -id 2020 -severity "INFO" "Checking if the following modules exist in the project's sources: $list_check_mods ."

   foreach mod_vlnv $list_check_mods {
      if { [can_resolve_reference $mod_vlnv] == 0 } {
         lappend list_mods_missing $mod_vlnv
      }
   }

   if { $list_mods_missing ne "" } {
      catch {common::send_gid_msg -ssname BD::TCL -id 2021 -severity "ERROR" "The following module(s) are not found in the project: $list_mods_missing" }
      common::send_gid_msg -ssname BD::TCL -id 2022 -severity "INFO" "Please add source files for the missing module(s) above."
      set bCheckIPsPassed 0
   }
}

if { $bCheckIPsPassed != 1 } {
  common::send_gid_msg -ssname BD::TCL -id 2023 -severity "WARNING" "Will not continue with creation of design due to the error(s) above."
  return 3
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set usb_uart [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 usb_uart ]


  # Create ports
  set reset_0 [ create_bd_port -dir I -type rst reset_0 ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $reset_0
  set sys_clock [ create_bd_port -dir I -type clk -freq_hz 100000000 sys_clock ]
  set_property -dict [ list \
   CONFIG.PHASE {0.0} \
 ] $sys_clock

  # Create instance: sha256_encryptor_0, and set properties
  set block_name sha256_encryptor
  set block_cell_name sha256_encryptor_0
  if { [catch {set sha256_encryptor_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $sha256_encryptor_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_0 ]
  set_property -dict [list \
    CONFIG.Memory_Type {True_Dual_Port_RAM} \
    CONFIG.use_bram_block {BRAM_Controller} \
  ] $blk_mem_gen_0


  # Create instance: microblaze_mcs_0, and set properties
  set microblaze_mcs_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze_mcs:3.0 microblaze_mcs_0 ]
  set_property -dict [list \
    CONFIG.CLK_BOARD_INTERFACE {sys_clock} \
    CONFIG.GPI1_SIZE {1} \
    CONFIG.GPO1_SIZE {1} \
    CONFIG.GPO2_SIZE {1} \
    CONFIG.RESET_BOARD_INTERFACE {reset} \
    CONFIG.TRACE {0} \
    CONFIG.UART_BAUDRATE {115200} \
    CONFIG.UART_BOARD_INTERFACE {usb_uart} \
    CONFIG.USE_BOARD_FLOW {true} \
    CONFIG.USE_GPI1 {1} \
    CONFIG.USE_GPO1 {1} \
    CONFIG.USE_GPO2 {1} \
    CONFIG.USE_GPO3 {0} \
    CONFIG.USE_IO_BUS {1} \
  ] $microblaze_mcs_0


  # Create instance: clk_wiz, and set properties
  set clk_wiz [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz ]
  set_property -dict [list \
    CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {100.0} \
    CONFIG.CLK_IN1_BOARD_INTERFACE {sys_clock} \
    CONFIG.RESET_BOARD_INTERFACE {reset} \
    CONFIG.USE_BOARD_FLOW {true} \
  ] $clk_wiz


  # Create instance: reset_inv_0, and set properties
  set reset_inv_0 [ create_bd_cell -type inline_hdl -vlnv xilinx.com:inline_hdl:ilvector_logic:1.0 reset_inv_0 ]
  set_property -dict [list \
    CONFIG.C_OPERATION {not} \
    CONFIG.C_SIZE {1} \
  ] $reset_inv_0


  # Create instance: lmb_bram_if_cntlr_0, and set properties
  set lmb_bram_if_cntlr_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 lmb_bram_if_cntlr_0 ]

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [list \
    CONFIG.AXI_DRP {false} \
    CONFIG.CLKIN2_JITTER_PS {112.49000000000001} \
    CONFIG.CLKOUT1_DRIVES {BUFGCE} \
    CONFIG.CLKOUT1_JITTER {137.681} \
    CONFIG.CLKOUT1_PHASE_ERROR {105.461} \
    CONFIG.CLKOUT2_DRIVES {BUFGCE} \
    CONFIG.CLKOUT3_DRIVES {BUFGCE} \
    CONFIG.CLKOUT4_DRIVES {BUFGCE} \
    CONFIG.CLKOUT5_DRIVES {BUFGCE} \
    CONFIG.CLKOUT6_DRIVES {BUFGCE} \
    CONFIG.CLKOUT7_DRIVES {BUFGCE} \
    CONFIG.CLK_IN1_BOARD_INTERFACE {sys_clock} \
    CONFIG.ENABLE_CLOCK_MONITOR {false} \
    CONFIG.FEEDBACK_SOURCE {FDBK_AUTO} \
    CONFIG.MMCM_BANDWIDTH {OPTIMIZED} \
    CONFIG.MMCM_CLKFBOUT_MULT_F {9} \
    CONFIG.MMCM_CLKIN2_PERIOD {10.000} \
    CONFIG.MMCM_CLKOUT0_DIVIDE_F {9} \
    CONFIG.MMCM_COMPENSATION {ZHOLD} \
    CONFIG.PHASE_DUTY_CONFIG {false} \
    CONFIG.PRIMITIVE {PLL} \
    CONFIG.RESET_BOARD_INTERFACE {reset} \
    CONFIG.SECONDARY_SOURCE {Single_ended_clock_capable_pin} \
    CONFIG.USE_BOARD_FLOW {true} \
    CONFIG.USE_DYN_RECONFIG {false} \
    CONFIG.USE_INCLK_SWITCHOVER {false} \
    CONFIG.USE_SAFE_CLOCK_STARTUP {true} \
  ] $clk_wiz_0


  # Create instance: reset_inv_1, and set properties
  set reset_inv_1 [ create_bd_cell -type inline_hdl -vlnv xilinx.com:inline_hdl:ilvector_logic:1.0 reset_inv_1 ]
  set_property -dict [list \
    CONFIG.C_OPERATION {not} \
    CONFIG.C_SIZE {1} \
  ] $reset_inv_1


  # Create interface connections
  connect_bd_intf_net -intf_net lmb_bram_if_cntlr_0_BRAM_PORT [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTA] [get_bd_intf_pins lmb_bram_if_cntlr_0/BRAM_PORT]
  connect_bd_intf_net -intf_net microblaze_mcs_0_UART [get_bd_intf_ports usb_uart] [get_bd_intf_pins microblaze_mcs_0/UART]

  # Create port connections
  connect_bd_net -net blk_mem_gen_0_doutb  [get_bd_pins blk_mem_gen_0/doutb] \
  [get_bd_pins sha256_encryptor_0/bram_rddata_b]
  connect_bd_net -net clk_wiz_clk_out1  [get_bd_pins clk_wiz/clk_out1] \
  [get_bd_pins sha256_encryptor_0/clk]
  connect_bd_net -net lmb_bram_if_cntlr_0_Sl_DBus  [get_bd_pins lmb_bram_if_cntlr_0/Sl_DBus] \
  [get_bd_pins microblaze_mcs_0/IO_read_data]
  connect_bd_net -net lmb_bram_if_cntlr_0_Sl_Ready  [get_bd_pins lmb_bram_if_cntlr_0/Sl_Ready] \
  [get_bd_pins microblaze_mcs_0/IO_ready]
  connect_bd_net -net microblaze_mcs_0_GPIO1_tri_o  [get_bd_pins microblaze_mcs_0/GPIO1_tri_o] \
  [get_bd_pins sha256_encryptor_0/rst]
  connect_bd_net -net microblaze_mcs_0_GPIO2_tri_o  [get_bd_pins microblaze_mcs_0/GPIO2_tri_o] \
  [get_bd_pins sha256_encryptor_0/start]
  connect_bd_net -net microblaze_mcs_0_IO_addr_strobe  [get_bd_pins microblaze_mcs_0/IO_addr_strobe] \
  [get_bd_pins lmb_bram_if_cntlr_0/LMB_AddrStrobe]
  connect_bd_net -net microblaze_mcs_0_IO_address  [get_bd_pins microblaze_mcs_0/IO_address] \
  [get_bd_pins lmb_bram_if_cntlr_0/LMB_ABus]
  connect_bd_net -net microblaze_mcs_0_IO_byte_enable  [get_bd_pins microblaze_mcs_0/IO_byte_enable] \
  [get_bd_pins lmb_bram_if_cntlr_0/LMB_BE]
  connect_bd_net -net microblaze_mcs_0_IO_read_strobe  [get_bd_pins microblaze_mcs_0/IO_read_strobe] \
  [get_bd_pins lmb_bram_if_cntlr_0/LMB_ReadStrobe]
  connect_bd_net -net microblaze_mcs_0_IO_write_data  [get_bd_pins microblaze_mcs_0/IO_write_data] \
  [get_bd_pins lmb_bram_if_cntlr_0/LMB_WriteDBus]
  connect_bd_net -net microblaze_mcs_0_IO_write_strobe  [get_bd_pins microblaze_mcs_0/IO_write_strobe] \
  [get_bd_pins lmb_bram_if_cntlr_0/LMB_WriteStrobe]
  connect_bd_net -net reset_0_1  [get_bd_ports reset_0] \
  [get_bd_pins microblaze_mcs_0/Reset] \
  [get_bd_pins reset_inv_0/Op1] \
  [get_bd_pins reset_inv_1/Op1]
  connect_bd_net -net reset_inv_0_Res  [get_bd_pins reset_inv_0/Res] \
  [get_bd_pins clk_wiz/reset] \
  [get_bd_pins lmb_bram_if_cntlr_0/LMB_Rst]
  connect_bd_net -net reset_inv_1_Res  [get_bd_pins reset_inv_1/Res] \
  [get_bd_pins clk_wiz_0/reset]
  connect_bd_net -net sha256_encryptor_0_bram_addr_b  [get_bd_pins sha256_encryptor_0/bram_addr_b] \
  [get_bd_pins blk_mem_gen_0/addrb]
  connect_bd_net -net sha256_encryptor_0_bram_clk_b  [get_bd_pins sha256_encryptor_0/bram_clk_b] \
  [get_bd_pins blk_mem_gen_0/clkb]
  connect_bd_net -net sha256_encryptor_0_bram_en_b  [get_bd_pins sha256_encryptor_0/bram_en_b] \
  [get_bd_pins blk_mem_gen_0/enb]
  connect_bd_net -net sha256_encryptor_0_bram_we_b  [get_bd_pins sha256_encryptor_0/bram_we_b] \
  [get_bd_pins blk_mem_gen_0/web]
  connect_bd_net -net sha256_encryptor_0_bram_wrdata_b  [get_bd_pins sha256_encryptor_0/bram_wrdata_b] \
  [get_bd_pins blk_mem_gen_0/dinb]
  connect_bd_net -net sha256_encryptor_0_work_done  [get_bd_pins sha256_encryptor_0/work_done] \
  [get_bd_pins microblaze_mcs_0/GPIO1_tri_i]
  connect_bd_net -net sys_clock_1  [get_bd_pins clk_wiz_0/clk_out1] \
  [get_bd_pins microblaze_mcs_0/Clk] \
  [get_bd_pins clk_wiz/clk_in1] \
  [get_bd_pins lmb_bram_if_cntlr_0/LMB_Clk]
  connect_bd_net -net sys_clock_2  [get_bd_ports sys_clock] \
  [get_bd_pins clk_wiz_0/clk_in1]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  # Create PFM attributes
  set_property PFM_NAME {xilinx:nexys-a7-100t:name:0.0} [get_files [current_bd_design].bd]
  set_property PFM.CLOCK {sys_clock {id "0" is_default "true" proc_sys_reset "" status "fixed" freq_hz "100000000"}} [get_bd_ports /sys_clock]
  set_property PFM.CLOCK {clk_out1 {id "1" is_default "false" proc_sys_reset "" status "fixed" freq_hz "100000000"}} [get_bd_cells /clk_wiz]
  set_property PFM.CLOCK {clk_out1 {id "2" is_default "false" proc_sys_reset "" status "fixed" freq_hz "100000000"}} [get_bd_cells /clk_wiz_0]


  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


