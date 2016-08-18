
################################################################
# This is a generated script based on design: block_design
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2014.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   puts "ERROR: This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source block_design_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7z020clg484-1
#    set_property BOARD_PART em.avnet.com:zed:part0:1.2 [current_project]


# CHANGE DESIGN NAME HERE
set design_name block_design

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}


# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "ERROR: Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      puts "INFO: Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   puts "INFO: Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   puts "INFO: Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   puts "INFO: Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

puts "INFO: Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   puts $errMsg
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: hier_is_equal_1
proc create_hier_cell_hier_is_equal_1 { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_hier_is_equal_1() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -from 5 -to 0 Op1
  create_bd_pin -dir I -from 5 -to 0 Op2
  create_bd_pin -dir O -from 0 -to 0 Res

  # Create instance: util_reduced_logic_or_0, and set properties
  set util_reduced_logic_or_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_reduced_logic:2.0 util_reduced_logic_or_0 ]
  set_property -dict [ list CONFIG.C_OPERATION {or} CONFIG.C_SIZE {6}  ] $util_reduced_logic_or_0

  # Create instance: util_vector_logic_not_0, and set properties
  set util_vector_logic_not_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_not_0 ]
  set_property -dict [ list CONFIG.C_OPERATION {not} CONFIG.C_SIZE {1}  ] $util_vector_logic_not_0

  # Create instance: util_vector_logic_xor_0, and set properties
  set util_vector_logic_xor_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_xor_0 ]
  set_property -dict [ list CONFIG.C_OPERATION {xor} CONFIG.C_SIZE {6}  ] $util_vector_logic_xor_0

  # Create port connections
  connect_bd_net -net local_enables_1 [get_bd_pins Op1] [get_bd_pins util_vector_logic_xor_0/Op1]
  connect_bd_net -net local_readies_1 [get_bd_pins Op2] [get_bd_pins util_vector_logic_xor_0/Op2]
  connect_bd_net -net util_reduced_logic_or_0_Res [get_bd_pins util_reduced_logic_or_0/Res] [get_bd_pins util_vector_logic_not_0/Op1]
  connect_bd_net -net util_vector_logic_not_0_Res [get_bd_pins Res] [get_bd_pins util_vector_logic_not_0/Res]
  connect_bd_net -net util_vector_logic_xor_0_Res [get_bd_pins util_reduced_logic_or_0/Op1] [get_bd_pins util_vector_logic_xor_0/Res]
  
  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: hier_is_not_equal_0
proc create_hier_cell_hier_is_not_equal_0 { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_hier_is_not_equal_0() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -from 5 -to 0 Op1
  create_bd_pin -dir I -from 5 -to 0 Op2
  create_bd_pin -dir O -from 0 -to 0 Res

  # Create instance: hier_is_equal_1
  create_hier_cell_hier_is_equal_1 $hier_obj hier_is_equal_1

  # Create instance: util_vector_logic_not_0, and set properties
  set util_vector_logic_not_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_not_0 ]
  set_property -dict [ list CONFIG.C_OPERATION {not} CONFIG.C_SIZE {1}  ] $util_vector_logic_not_0

  # Create port connections
  connect_bd_net -net hier_is_equal_1_Res [get_bd_pins hier_is_equal_1/Res] [get_bd_pins util_vector_logic_not_0/Op1]
  connect_bd_net -net local_enables_1 [get_bd_pins Op1] [get_bd_pins hier_is_equal_1/Op1]
  connect_bd_net -net util_vector_logic_not_0_Res [get_bd_pins Res] [get_bd_pins util_vector_logic_not_0/Res]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins Op2] [get_bd_pins hier_is_equal_1/Op2]
  
  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: hier_is_equal_0
proc create_hier_cell_hier_is_equal_0 { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_hier_is_equal_0() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -from 5 -to 0 Op1
  create_bd_pin -dir I -from 5 -to 0 Op2
  create_bd_pin -dir O -from 0 -to 0 Res

  # Create instance: util_reduced_logic_or_0, and set properties
  set util_reduced_logic_or_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_reduced_logic:2.0 util_reduced_logic_or_0 ]
  set_property -dict [ list CONFIG.C_OPERATION {or} CONFIG.C_SIZE {6}  ] $util_reduced_logic_or_0

  # Create instance: util_vector_logic_not_0, and set properties
  set util_vector_logic_not_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_not_0 ]
  set_property -dict [ list CONFIG.C_OPERATION {not} CONFIG.C_SIZE {1}  ] $util_vector_logic_not_0

  # Create instance: util_vector_logic_xor_0, and set properties
  set util_vector_logic_xor_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_xor_0 ]
  set_property -dict [ list CONFIG.C_OPERATION {xor} CONFIG.C_SIZE {6}  ] $util_vector_logic_xor_0

  # Create port connections
  connect_bd_net -net local_enables_1 [get_bd_pins Op1] [get_bd_pins util_vector_logic_xor_0/Op1]
  connect_bd_net -net local_readies_1 [get_bd_pins Op2] [get_bd_pins util_vector_logic_xor_0/Op2]
  connect_bd_net -net util_reduced_logic_or_0_Res [get_bd_pins util_reduced_logic_or_0/Res] [get_bd_pins util_vector_logic_not_0/Op1]
  connect_bd_net -net util_vector_logic_not_0_Res [get_bd_pins Res] [get_bd_pins util_vector_logic_not_0/Res]
  connect_bd_net -net util_vector_logic_xor_0_Res [get_bd_pins util_reduced_logic_or_0/Op1] [get_bd_pins util_vector_logic_xor_0/Res]
  
  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: hier_enable_logic
proc create_hier_cell_hier_enable_logic_5 { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_hier_enable_logic_5() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O actual_enable
  create_bd_pin -dir I -from 0 -to 0 global_enable
  create_bd_pin -dir I -from 0 -to 0 local_enable

  # Create instance: util_reduced_logic_and_0, and set properties
  set util_reduced_logic_and_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_reduced_logic:2.0 util_reduced_logic_and_0 ]
  set_property -dict [ list CONFIG.C_SIZE {2}  ] $util_reduced_logic_and_0

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]

  # Create port connections
  connect_bd_net -net global_1 [get_bd_pins global_enable] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net local_1 [get_bd_pins local_enable] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net util_reduced_logic_and_0_Res [get_bd_pins actual_enable] [get_bd_pins util_reduced_logic_and_0/Res]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins util_reduced_logic_and_0/Op1] [get_bd_pins xlconcat_0/dout]
  
  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: hier_enable_logic
proc create_hier_cell_hier_enable_logic_4 { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_hier_enable_logic_4() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O actual_enable
  create_bd_pin -dir I -from 0 -to 0 global_enable
  create_bd_pin -dir I -from 0 -to 0 local_enable

  # Create instance: util_reduced_logic_and_0, and set properties
  set util_reduced_logic_and_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_reduced_logic:2.0 util_reduced_logic_and_0 ]
  set_property -dict [ list CONFIG.C_SIZE {2}  ] $util_reduced_logic_and_0

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]

  # Create port connections
  connect_bd_net -net global_1 [get_bd_pins global_enable] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net local_1 [get_bd_pins local_enable] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net util_reduced_logic_and_0_Res [get_bd_pins actual_enable] [get_bd_pins util_reduced_logic_and_0/Res]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins util_reduced_logic_and_0/Op1] [get_bd_pins xlconcat_0/dout]
  
  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: hier_enable_logic
proc create_hier_cell_hier_enable_logic_3 { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_hier_enable_logic_3() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O actual_enable
  create_bd_pin -dir I -from 0 -to 0 global_enable
  create_bd_pin -dir I -from 0 -to 0 local_enable

  # Create instance: util_reduced_logic_and_0, and set properties
  set util_reduced_logic_and_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_reduced_logic:2.0 util_reduced_logic_and_0 ]
  set_property -dict [ list CONFIG.C_SIZE {2}  ] $util_reduced_logic_and_0

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]

  # Create port connections
  connect_bd_net -net global_1 [get_bd_pins global_enable] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net local_1 [get_bd_pins local_enable] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net util_reduced_logic_and_0_Res [get_bd_pins actual_enable] [get_bd_pins util_reduced_logic_and_0/Res]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins util_reduced_logic_and_0/Op1] [get_bd_pins xlconcat_0/dout]
  
  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: hier_enable_logic
proc create_hier_cell_hier_enable_logic_2 { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_hier_enable_logic_2() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O actual_enable
  create_bd_pin -dir I -from 0 -to 0 global_enable
  create_bd_pin -dir I -from 0 -to 0 local_enable

  # Create instance: util_reduced_logic_and_0, and set properties
  set util_reduced_logic_and_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_reduced_logic:2.0 util_reduced_logic_and_0 ]
  set_property -dict [ list CONFIG.C_SIZE {2}  ] $util_reduced_logic_and_0

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]

  # Create port connections
  connect_bd_net -net global_1 [get_bd_pins global_enable] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net local_1 [get_bd_pins local_enable] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net util_reduced_logic_and_0_Res [get_bd_pins actual_enable] [get_bd_pins util_reduced_logic_and_0/Res]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins util_reduced_logic_and_0/Op1] [get_bd_pins xlconcat_0/dout]
  
  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: hier_enable_logic
proc create_hier_cell_hier_enable_logic_1 { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_hier_enable_logic_1() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O actual_enable
  create_bd_pin -dir I -from 0 -to 0 global_enable
  create_bd_pin -dir I -from 0 -to 0 local_enable

  # Create instance: util_reduced_logic_and_0, and set properties
  set util_reduced_logic_and_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_reduced_logic:2.0 util_reduced_logic_and_0 ]
  set_property -dict [ list CONFIG.C_SIZE {2}  ] $util_reduced_logic_and_0

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]

  # Create port connections
  connect_bd_net -net global_1 [get_bd_pins global_enable] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net local_1 [get_bd_pins local_enable] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net util_reduced_logic_and_0_Res [get_bd_pins actual_enable] [get_bd_pins util_reduced_logic_and_0/Res]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins util_reduced_logic_and_0/Op1] [get_bd_pins xlconcat_0/dout]
  
  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: hier_enable_logic
proc create_hier_cell_hier_enable_logic { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_hier_enable_logic() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O actual_enable
  create_bd_pin -dir I -from 0 -to 0 global_enable
  create_bd_pin -dir I -from 0 -to 0 local_enable

  # Create instance: util_reduced_logic_and_0, and set properties
  set util_reduced_logic_and_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_reduced_logic:2.0 util_reduced_logic_and_0 ]
  set_property -dict [ list CONFIG.C_SIZE {2}  ] $util_reduced_logic_and_0

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]

  # Create port connections
  connect_bd_net -net global_1 [get_bd_pins global_enable] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net local_1 [get_bd_pins local_enable] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net util_reduced_logic_and_0_Res [get_bd_pins actual_enable] [get_bd_pins util_reduced_logic_and_0/Res]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins util_reduced_logic_and_0/Op1] [get_bd_pins xlconcat_0/dout]
  
  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: hier_global_ready
proc create_hier_cell_hier_global_ready { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_hier_global_ready() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -from 0 -to 0 global_enable
  create_bd_pin -dir O global_ready
  create_bd_pin -dir I -from 5 -to 0 local_enables
  create_bd_pin -dir I -from 5 -to 0 local_readies

  # Create instance: hier_is_equal_0
  create_hier_cell_hier_is_equal_0 $hier_obj hier_is_equal_0

  # Create instance: hier_is_not_equal_0
  create_hier_cell_hier_is_not_equal_0 $hier_obj hier_is_not_equal_0

  # Create instance: util_reduced_logic_and_0, and set properties
  set util_reduced_logic_and_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_reduced_logic:2.0 util_reduced_logic_and_0 ]
  set_property -dict [ list CONFIG.C_SIZE {3}  ] $util_reduced_logic_and_0

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list CONFIG.NUM_PORTS {3}  ] $xlconcat_0

  # Create instance: xlconstant_0_0, and set properties
  set xlconstant_0_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0_0 ]
  set_property -dict [ list CONFIG.CONST_VAL {0} CONFIG.CONST_WIDTH {6}  ] $xlconstant_0_0

  # Create port connections
  connect_bd_net -net global_enable_1 [get_bd_pins global_enable] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net hier_is_equal_0_Res [get_bd_pins hier_is_equal_0/Res] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net local_enables_1 [get_bd_pins local_enables] [get_bd_pins hier_is_equal_0/Op1] [get_bd_pins hier_is_not_equal_0/Op1]
  connect_bd_net -net local_readies_1 [get_bd_pins local_readies] [get_bd_pins hier_is_equal_0/Op2]
  connect_bd_net -net util_reduced_logic_0_Res [get_bd_pins global_ready] [get_bd_pins util_reduced_logic_and_0/Res]
  connect_bd_net -net util_vector_logic_not_0_Res [get_bd_pins hier_is_not_equal_0/Res] [get_bd_pins xlconcat_0/In2]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins util_reduced_logic_and_0/Op1] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins hier_is_not_equal_0/Op2] [get_bd_pins xlconstant_0_0/dout]
  
  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: hier_hardware_accelerator_0
proc create_hier_cell_hier_hardware_accelerator_0_4 { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_hier_hardware_accelerator_0_4() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi

  # Create pins
  create_bd_pin -dir I aclk
  create_bd_pin -dir I -from 0 -to 0 global_enable
  create_bd_pin -dir I -from 0 -to 0 interconnect_aresetn
  create_bd_pin -dir I -from 0 -to 0 local_enable
  create_bd_pin -dir I -from 0 -to 0 peripheral_aresetn
  create_bd_pin -dir O ready

  # Create instance: axi3_metrics_counter_0, and set properties
  set axi3_metrics_counter_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:axi3_metrics_counter:1.0 axi3_metrics_counter_0 ]
  set_property -dict [ list CONFIG.C_axi3_monitor_DATA_WIDTH {64} CONFIG.C_axi3_monitor_ID_WIDTH {6}  ] $axi3_metrics_counter_0

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]

  # Create instance: axi_interconnect_1, and set properties
  set axi_interconnect_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_1 ]
  set_property -dict [ list CONFIG.NUM_MI {1}  ] $axi_interconnect_1

  # Create instance: hardware_accelerator_0, and set properties
  set hardware_accelerator_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:hardware_accelerator:1.0 hardware_accelerator_0 ]
  set_property -dict [ list CONFIG.C_buffer_size {4} CONFIG.C_m_axi_full_data_DATA_WIDTH {64} CONFIG.C_m_axi_full_data_ID_WIDTH {6}  ] $hardware_accelerator_0

  # Create instance: hier_enable_logic
  create_hier_cell_hier_enable_logic_5 $hier_obj hier_enable_logic

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins axi_interconnect_1/S00_AXI] [get_bd_intf_pins hardware_accelerator_0/m_axi_full_data]
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins axi3_metrics_counter_0/axi3_monitor] [get_bd_intf_pins axi_interconnect_1/S00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_interconnect_0/M00_AXI] [get_bd_intf_pins hardware_accelerator_0/s_axi_lite_registers]
  connect_bd_intf_net -intf_net axi_interconnect_0_M01_AXI [get_bd_intf_pins axi3_metrics_counter_0/s_axi_lite] [get_bd_intf_pins axi_interconnect_0/M01_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_1_M00_AXI [get_bd_intf_pins m_axi] [get_bd_intf_pins axi_interconnect_1/M00_AXI]
  connect_bd_intf_net -intf_net s_axi_1 [get_bd_intf_pins s_axi] [get_bd_intf_pins axi_interconnect_0/S00_AXI]

  # Create port connections
  connect_bd_net -net aclk_1 [get_bd_pins aclk] [get_bd_pins axi3_metrics_counter_0/aclk] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/M01_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins axi_interconnect_1/ACLK] [get_bd_pins axi_interconnect_1/M00_ACLK] [get_bd_pins axi_interconnect_1/S00_ACLK] [get_bd_pins hardware_accelerator_0/s_axi_aclk]
  connect_bd_net -net global_enable_1 [get_bd_pins global_enable] [get_bd_pins hier_enable_logic/global_enable]
  connect_bd_net -net hardware_accelerator_0_ready [get_bd_pins ready] [get_bd_pins axi3_metrics_counter_0/counter_finish] [get_bd_pins hardware_accelerator_0/ready]
  connect_bd_net -net hier_enable_logic_enable [get_bd_pins axi3_metrics_counter_0/counter_start] [get_bd_pins hardware_accelerator_0/enable] [get_bd_pins hier_enable_logic/actual_enable]
  connect_bd_net -net interconnectl_aresetn_1 [get_bd_pins interconnect_aresetn] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_1/ARESETN]
  connect_bd_net -net local_enable_1 [get_bd_pins local_enable] [get_bd_pins hier_enable_logic/local_enable]
  connect_bd_net -net peripheral_aresetn_1 [get_bd_pins peripheral_aresetn] [get_bd_pins axi3_metrics_counter_0/aresetn] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/M01_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins axi_interconnect_1/M00_ARESETN] [get_bd_pins axi_interconnect_1/S00_ARESETN] [get_bd_pins hardware_accelerator_0/s_axi_aresetn]
  
  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: hier_hardware_accelerator_0
proc create_hier_cell_hier_hardware_accelerator_0_3 { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_hier_hardware_accelerator_0_3() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi

  # Create pins
  create_bd_pin -dir I aclk
  create_bd_pin -dir I -from 0 -to 0 global_enable
  create_bd_pin -dir I -from 0 -to 0 interconnect_aresetn
  create_bd_pin -dir I -from 0 -to 0 local_enable
  create_bd_pin -dir I -from 0 -to 0 peripheral_aresetn
  create_bd_pin -dir O ready

  # Create instance: axi3_metrics_counter_0, and set properties
  set axi3_metrics_counter_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:axi3_metrics_counter:1.0 axi3_metrics_counter_0 ]
  set_property -dict [ list CONFIG.C_axi3_monitor_DATA_WIDTH {64} CONFIG.C_axi3_monitor_ID_WIDTH {6}  ] $axi3_metrics_counter_0

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]

  # Create instance: axi_interconnect_1, and set properties
  set axi_interconnect_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_1 ]
  set_property -dict [ list CONFIG.NUM_MI {1}  ] $axi_interconnect_1

  # Create instance: hardware_accelerator_0, and set properties
  set hardware_accelerator_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:hardware_accelerator:1.0 hardware_accelerator_0 ]
  set_property -dict [ list CONFIG.C_buffer_size {4} CONFIG.C_m_axi_full_data_DATA_WIDTH {64} CONFIG.C_m_axi_full_data_ID_WIDTH {6}  ] $hardware_accelerator_0

  # Create instance: hier_enable_logic
  create_hier_cell_hier_enable_logic_4 $hier_obj hier_enable_logic

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins axi_interconnect_1/S00_AXI] [get_bd_intf_pins hardware_accelerator_0/m_axi_full_data]
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins axi3_metrics_counter_0/axi3_monitor] [get_bd_intf_pins axi_interconnect_1/S00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_interconnect_0/M00_AXI] [get_bd_intf_pins hardware_accelerator_0/s_axi_lite_registers]
  connect_bd_intf_net -intf_net axi_interconnect_0_M01_AXI [get_bd_intf_pins axi3_metrics_counter_0/s_axi_lite] [get_bd_intf_pins axi_interconnect_0/M01_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_1_M00_AXI [get_bd_intf_pins m_axi] [get_bd_intf_pins axi_interconnect_1/M00_AXI]
  connect_bd_intf_net -intf_net s_axi_1 [get_bd_intf_pins s_axi] [get_bd_intf_pins axi_interconnect_0/S00_AXI]

  # Create port connections
  connect_bd_net -net aclk_1 [get_bd_pins aclk] [get_bd_pins axi3_metrics_counter_0/aclk] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/M01_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins axi_interconnect_1/ACLK] [get_bd_pins axi_interconnect_1/M00_ACLK] [get_bd_pins axi_interconnect_1/S00_ACLK] [get_bd_pins hardware_accelerator_0/s_axi_aclk]
  connect_bd_net -net global_enable_1 [get_bd_pins global_enable] [get_bd_pins hier_enable_logic/global_enable]
  connect_bd_net -net hardware_accelerator_0_ready [get_bd_pins ready] [get_bd_pins axi3_metrics_counter_0/counter_finish] [get_bd_pins hardware_accelerator_0/ready]
  connect_bd_net -net hier_enable_logic_enable [get_bd_pins axi3_metrics_counter_0/counter_start] [get_bd_pins hardware_accelerator_0/enable] [get_bd_pins hier_enable_logic/actual_enable]
  connect_bd_net -net interconnectl_aresetn_1 [get_bd_pins interconnect_aresetn] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_1/ARESETN]
  connect_bd_net -net local_enable_1 [get_bd_pins local_enable] [get_bd_pins hier_enable_logic/local_enable]
  connect_bd_net -net peripheral_aresetn_1 [get_bd_pins peripheral_aresetn] [get_bd_pins axi3_metrics_counter_0/aresetn] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/M01_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins axi_interconnect_1/M00_ARESETN] [get_bd_pins axi_interconnect_1/S00_ARESETN] [get_bd_pins hardware_accelerator_0/s_axi_aresetn]
  
  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: hier_hardware_accelerator_0
proc create_hier_cell_hier_hardware_accelerator_0_2 { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_hier_hardware_accelerator_0_2() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi

  # Create pins
  create_bd_pin -dir I aclk
  create_bd_pin -dir I -from 0 -to 0 global_enable
  create_bd_pin -dir I -from 0 -to 0 interconnect_aresetn
  create_bd_pin -dir I -from 0 -to 0 local_enable
  create_bd_pin -dir I -from 0 -to 0 peripheral_aresetn
  create_bd_pin -dir O ready

  # Create instance: axi3_metrics_counter_0, and set properties
  set axi3_metrics_counter_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:axi3_metrics_counter:1.0 axi3_metrics_counter_0 ]
  set_property -dict [ list CONFIG.C_axi3_monitor_ID_WIDTH {6}  ] $axi3_metrics_counter_0

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]

  # Create instance: axi_interconnect_1, and set properties
  set axi_interconnect_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_1 ]
  set_property -dict [ list CONFIG.NUM_MI {1}  ] $axi_interconnect_1

  # Create instance: hardware_accelerator_0, and set properties
  set hardware_accelerator_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:hardware_accelerator:1.0 hardware_accelerator_0 ]
  set_property -dict [ list CONFIG.C_buffer_size {4} CONFIG.C_m_axi_full_data_ID_WIDTH {6}  ] $hardware_accelerator_0

  # Create instance: hier_enable_logic
  create_hier_cell_hier_enable_logic_3 $hier_obj hier_enable_logic

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins axi_interconnect_1/S00_AXI] [get_bd_intf_pins hardware_accelerator_0/m_axi_full_data]
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins axi3_metrics_counter_0/axi3_monitor] [get_bd_intf_pins axi_interconnect_1/S00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_interconnect_0/M00_AXI] [get_bd_intf_pins hardware_accelerator_0/s_axi_lite_registers]
  connect_bd_intf_net -intf_net axi_interconnect_0_M01_AXI [get_bd_intf_pins axi3_metrics_counter_0/s_axi_lite] [get_bd_intf_pins axi_interconnect_0/M01_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_1_M00_AXI [get_bd_intf_pins m_axi] [get_bd_intf_pins axi_interconnect_1/M00_AXI]
  connect_bd_intf_net -intf_net s_axi_1 [get_bd_intf_pins s_axi] [get_bd_intf_pins axi_interconnect_0/S00_AXI]

  # Create port connections
  connect_bd_net -net aclk_1 [get_bd_pins aclk] [get_bd_pins axi3_metrics_counter_0/aclk] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/M01_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins axi_interconnect_1/ACLK] [get_bd_pins axi_interconnect_1/M00_ACLK] [get_bd_pins axi_interconnect_1/S00_ACLK] [get_bd_pins hardware_accelerator_0/s_axi_aclk]
  connect_bd_net -net global_enable_1 [get_bd_pins global_enable] [get_bd_pins hier_enable_logic/global_enable]
  connect_bd_net -net hardware_accelerator_0_ready [get_bd_pins ready] [get_bd_pins axi3_metrics_counter_0/counter_finish] [get_bd_pins hardware_accelerator_0/ready]
  connect_bd_net -net hier_enable_logic_enable [get_bd_pins axi3_metrics_counter_0/counter_start] [get_bd_pins hardware_accelerator_0/enable] [get_bd_pins hier_enable_logic/actual_enable]
  connect_bd_net -net interconnectl_aresetn_1 [get_bd_pins interconnect_aresetn] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_1/ARESETN]
  connect_bd_net -net local_enable_1 [get_bd_pins local_enable] [get_bd_pins hier_enable_logic/local_enable]
  connect_bd_net -net peripheral_aresetn_1 [get_bd_pins peripheral_aresetn] [get_bd_pins axi3_metrics_counter_0/aresetn] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/M01_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins axi_interconnect_1/M00_ARESETN] [get_bd_pins axi_interconnect_1/S00_ARESETN] [get_bd_pins hardware_accelerator_0/s_axi_aresetn]
  
  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: hier_hardware_accelerator_0
proc create_hier_cell_hier_hardware_accelerator_0_1 { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_hier_hardware_accelerator_0_1() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi

  # Create pins
  create_bd_pin -dir I aclk
  create_bd_pin -dir I -from 0 -to 0 global_enable
  create_bd_pin -dir I -from 0 -to 0 interconnect_aresetn
  create_bd_pin -dir I -from 0 -to 0 local_enable
  create_bd_pin -dir I -from 0 -to 0 peripheral_aresetn
  create_bd_pin -dir O ready

  # Create instance: axi3_metrics_counter_0, and set properties
  set axi3_metrics_counter_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:axi3_metrics_counter:1.0 axi3_metrics_counter_0 ]
  set_property -dict [ list CONFIG.C_axi3_monitor_ID_WIDTH {6}  ] $axi3_metrics_counter_0

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]

  # Create instance: axi_interconnect_1, and set properties
  set axi_interconnect_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_1 ]
  set_property -dict [ list CONFIG.NUM_MI {1}  ] $axi_interconnect_1

  # Create instance: hardware_accelerator_0, and set properties
  set hardware_accelerator_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:hardware_accelerator:1.0 hardware_accelerator_0 ]
  set_property -dict [ list CONFIG.C_buffer_size {4} CONFIG.C_m_axi_full_data_ID_WIDTH {6}  ] $hardware_accelerator_0

  # Create instance: hier_enable_logic
  create_hier_cell_hier_enable_logic_2 $hier_obj hier_enable_logic

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins axi_interconnect_1/S00_AXI] [get_bd_intf_pins hardware_accelerator_0/m_axi_full_data]
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins axi3_metrics_counter_0/axi3_monitor] [get_bd_intf_pins axi_interconnect_1/S00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_interconnect_0/M00_AXI] [get_bd_intf_pins hardware_accelerator_0/s_axi_lite_registers]
  connect_bd_intf_net -intf_net axi_interconnect_0_M01_AXI [get_bd_intf_pins axi3_metrics_counter_0/s_axi_lite] [get_bd_intf_pins axi_interconnect_0/M01_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_1_M00_AXI [get_bd_intf_pins m_axi] [get_bd_intf_pins axi_interconnect_1/M00_AXI]
  connect_bd_intf_net -intf_net s_axi_1 [get_bd_intf_pins s_axi] [get_bd_intf_pins axi_interconnect_0/S00_AXI]

  # Create port connections
  connect_bd_net -net aclk_1 [get_bd_pins aclk] [get_bd_pins axi3_metrics_counter_0/aclk] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/M01_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins axi_interconnect_1/ACLK] [get_bd_pins axi_interconnect_1/M00_ACLK] [get_bd_pins axi_interconnect_1/S00_ACLK] [get_bd_pins hardware_accelerator_0/s_axi_aclk]
  connect_bd_net -net global_enable_1 [get_bd_pins global_enable] [get_bd_pins hier_enable_logic/global_enable]
  connect_bd_net -net hardware_accelerator_0_ready [get_bd_pins ready] [get_bd_pins axi3_metrics_counter_0/counter_finish] [get_bd_pins hardware_accelerator_0/ready]
  connect_bd_net -net hier_enable_logic_enable [get_bd_pins axi3_metrics_counter_0/counter_start] [get_bd_pins hardware_accelerator_0/enable] [get_bd_pins hier_enable_logic/actual_enable]
  connect_bd_net -net interconnectl_aresetn_1 [get_bd_pins interconnect_aresetn] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_1/ARESETN]
  connect_bd_net -net local_enable_1 [get_bd_pins local_enable] [get_bd_pins hier_enable_logic/local_enable]
  connect_bd_net -net peripheral_aresetn_1 [get_bd_pins peripheral_aresetn] [get_bd_pins axi3_metrics_counter_0/aresetn] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/M01_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins axi_interconnect_1/M00_ARESETN] [get_bd_pins axi_interconnect_1/S00_ARESETN] [get_bd_pins hardware_accelerator_0/s_axi_aresetn]
  
  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: hier_hardware_accelerator_1
proc create_hier_cell_hier_hardware_accelerator_1 { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_hier_hardware_accelerator_1() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi

  # Create pins
  create_bd_pin -dir I aclk
  create_bd_pin -dir I -from 0 -to 0 global_enable
  create_bd_pin -dir I -from 0 -to 0 interconnect_aresetn
  create_bd_pin -dir I -from 0 -to 0 local_enable
  create_bd_pin -dir I -from 0 -to 0 peripheral_aresetn
  create_bd_pin -dir O ready

  # Create instance: axi3_metrics_counter_0, and set properties
  set axi3_metrics_counter_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:axi3_metrics_counter:1.0 axi3_metrics_counter_0 ]
  set_property -dict [ list CONFIG.C_axi3_monitor_DATA_WIDTH {64} CONFIG.C_axi3_monitor_ID_WIDTH {2}  ] $axi3_metrics_counter_0

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list CONFIG.STRATEGY {2}  ] $axi_interconnect_0

  # Create instance: axi_interconnect_1, and set properties
  set axi_interconnect_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_1 ]
  set_property -dict [ list CONFIG.NUM_MI {1}  ] $axi_interconnect_1

  # Create instance: hardware_accelerator_0, and set properties
  set hardware_accelerator_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:hardware_accelerator:1.0 hardware_accelerator_0 ]
  set_property -dict [ list CONFIG.C_buffer_size {4} CONFIG.C_m_axi_full_data_DATA_WIDTH {64} CONFIG.C_m_axi_full_data_ID {2} CONFIG.C_m_axi_full_data_ID_WIDTH {2}  ] $hardware_accelerator_0

  # Create instance: hier_enable_logic
  create_hier_cell_hier_enable_logic_1 $hier_obj hier_enable_logic

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins axi_interconnect_1/S00_AXI] [get_bd_intf_pins hardware_accelerator_0/m_axi_full_data]
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins axi3_metrics_counter_0/axi3_monitor] [get_bd_intf_pins axi_interconnect_1/S00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_interconnect_0/M00_AXI] [get_bd_intf_pins hardware_accelerator_0/s_axi_lite_registers]
  connect_bd_intf_net -intf_net axi_interconnect_0_M01_AXI [get_bd_intf_pins axi3_metrics_counter_0/s_axi_lite] [get_bd_intf_pins axi_interconnect_0/M01_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_1_M00_AXI [get_bd_intf_pins m_axi] [get_bd_intf_pins axi_interconnect_1/M00_AXI]
  connect_bd_intf_net -intf_net s_axi_1 [get_bd_intf_pins s_axi] [get_bd_intf_pins axi_interconnect_0/S00_AXI]

  # Create port connections
  connect_bd_net -net aclk_1 [get_bd_pins aclk] [get_bd_pins axi3_metrics_counter_0/aclk] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/M01_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins axi_interconnect_1/ACLK] [get_bd_pins axi_interconnect_1/M00_ACLK] [get_bd_pins axi_interconnect_1/S00_ACLK] [get_bd_pins hardware_accelerator_0/s_axi_aclk]
  connect_bd_net -net global_enable_1 [get_bd_pins global_enable] [get_bd_pins hier_enable_logic/global_enable]
  connect_bd_net -net hardware_accelerator_0_ready [get_bd_pins ready] [get_bd_pins axi3_metrics_counter_0/counter_finish] [get_bd_pins hardware_accelerator_0/ready]
  connect_bd_net -net hier_enable_logic_enable [get_bd_pins axi3_metrics_counter_0/counter_start] [get_bd_pins hardware_accelerator_0/enable] [get_bd_pins hier_enable_logic/actual_enable]
  connect_bd_net -net interconnectl_aresetn_1 [get_bd_pins interconnect_aresetn] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_1/ARESETN]
  connect_bd_net -net local_enable_1 [get_bd_pins local_enable] [get_bd_pins hier_enable_logic/local_enable]
  connect_bd_net -net peripheral_aresetn_1 [get_bd_pins peripheral_aresetn] [get_bd_pins axi3_metrics_counter_0/aresetn] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/M01_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins axi_interconnect_1/M00_ARESETN] [get_bd_pins axi_interconnect_1/S00_ARESETN] [get_bd_pins hardware_accelerator_0/s_axi_aresetn]
  
  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: hier_hardware_accelerator_0
proc create_hier_cell_hier_hardware_accelerator_0 { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_hier_hardware_accelerator_0() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi

  # Create pins
  create_bd_pin -dir I aclk
  create_bd_pin -dir I -from 0 -to 0 global_enable
  create_bd_pin -dir I -from 0 -to 0 interconnect_aresetn
  create_bd_pin -dir I -from 0 -to 0 local_enable
  create_bd_pin -dir I -from 0 -to 0 peripheral_aresetn
  create_bd_pin -dir O ready

  # Create instance: axi3_metrics_counter_0, and set properties
  set axi3_metrics_counter_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:axi3_metrics_counter:1.0 axi3_metrics_counter_0 ]
  set_property -dict [ list CONFIG.C_axi3_monitor_DATA_WIDTH {64} CONFIG.C_axi3_monitor_ID_WIDTH {2}  ] $axi3_metrics_counter_0

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list CONFIG.STRATEGY {2}  ] $axi_interconnect_0

  # Create instance: axi_interconnect_1, and set properties
  set axi_interconnect_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_1 ]
  set_property -dict [ list CONFIG.NUM_MI {1}  ] $axi_interconnect_1

  # Create instance: hardware_accelerator_0, and set properties
  set hardware_accelerator_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:hardware_accelerator:1.0 hardware_accelerator_0 ]
  set_property -dict [ list CONFIG.C_buffer_size {4} CONFIG.C_m_axi_full_data_DATA_WIDTH {64} CONFIG.C_m_axi_full_data_ID_WIDTH {2}  ] $hardware_accelerator_0

  # Create instance: hier_enable_logic
  create_hier_cell_hier_enable_logic $hier_obj hier_enable_logic

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins axi_interconnect_1/S00_AXI] [get_bd_intf_pins hardware_accelerator_0/m_axi_full_data]
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins axi3_metrics_counter_0/axi3_monitor] [get_bd_intf_pins axi_interconnect_1/S00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_interconnect_0/M00_AXI] [get_bd_intf_pins hardware_accelerator_0/s_axi_lite_registers]
  connect_bd_intf_net -intf_net axi_interconnect_0_M01_AXI [get_bd_intf_pins axi3_metrics_counter_0/s_axi_lite] [get_bd_intf_pins axi_interconnect_0/M01_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_1_M00_AXI [get_bd_intf_pins m_axi] [get_bd_intf_pins axi_interconnect_1/M00_AXI]
  connect_bd_intf_net -intf_net s_axi_1 [get_bd_intf_pins s_axi] [get_bd_intf_pins axi_interconnect_0/S00_AXI]

  # Create port connections
  connect_bd_net -net aclk_1 [get_bd_pins aclk] [get_bd_pins axi3_metrics_counter_0/aclk] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/M01_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins axi_interconnect_1/ACLK] [get_bd_pins axi_interconnect_1/M00_ACLK] [get_bd_pins axi_interconnect_1/S00_ACLK] [get_bd_pins hardware_accelerator_0/s_axi_aclk]
  connect_bd_net -net global_enable_1 [get_bd_pins global_enable] [get_bd_pins hier_enable_logic/global_enable]
  connect_bd_net -net hardware_accelerator_0_ready [get_bd_pins ready] [get_bd_pins axi3_metrics_counter_0/counter_finish] [get_bd_pins hardware_accelerator_0/ready]
  connect_bd_net -net hier_enable_logic_enable [get_bd_pins axi3_metrics_counter_0/counter_start] [get_bd_pins hardware_accelerator_0/enable] [get_bd_pins hier_enable_logic/actual_enable]
  connect_bd_net -net interconnectl_aresetn_1 [get_bd_pins interconnect_aresetn] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_1/ARESETN]
  connect_bd_net -net local_enable_1 [get_bd_pins local_enable] [get_bd_pins hier_enable_logic/local_enable]
  connect_bd_net -net peripheral_aresetn_1 [get_bd_pins peripheral_aresetn] [get_bd_pins axi3_metrics_counter_0/aresetn] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/M01_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins axi_interconnect_1/M00_ARESETN] [get_bd_pins axi_interconnect_1/S00_ARESETN] [get_bd_pins hardware_accelerator_0/s_axi_aresetn]
  
  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: hier_readies
proc create_hier_cell_hier_readies { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_hier_readies() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -from 0 -to 0 global_enable
  create_bd_pin -dir O -from 6 -to 0 interrupts
  create_bd_pin -dir I -from 5 -to 0 local_enables
  create_bd_pin -dir I -from 1 -to 0 local_ready_acp
  create_bd_pin -dir I local_ready_gp0
  create_bd_pin -dir I local_ready_hp0
  create_bd_pin -dir I local_ready_hp1
  create_bd_pin -dir I local_ready_hp2

  # Create instance: hier_global_ready
  create_hier_cell_hier_global_ready $hier_obj hier_global_ready

  # Create instance: xlconcat_interrupts, and set properties
  set xlconcat_interrupts [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_interrupts ]

  # Create instance: xlconcat_local_readies, and set properties
  set xlconcat_local_readies [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_local_readies ]
  set_property -dict [ list CONFIG.IN0_WIDTH {2} CONFIG.IN1_WIDTH {1} CONFIG.IN2_WIDTH {1} CONFIG.IN3_WIDTH {1} CONFIG.IN4_WIDTH {1} CONFIG.NUM_PORTS {5}  ] $xlconcat_local_readies

  # Create port connections
  connect_bd_net -net global_enable_1 [get_bd_pins global_enable] [get_bd_pins hier_global_ready/global_enable]
  connect_bd_net -net hier_global_ready_global_ready [get_bd_pins hier_global_ready/global_ready] [get_bd_pins xlconcat_interrupts/In1]
  connect_bd_net -net local_enables_1 [get_bd_pins local_enables] [get_bd_pins hier_global_ready/local_enables]
  connect_bd_net -net local_ready_acp_1 [get_bd_pins local_ready_acp] [get_bd_pins xlconcat_local_readies/In0]
  connect_bd_net -net local_ready_gp0_1 [get_bd_pins local_ready_gp0] [get_bd_pins xlconcat_local_readies/In1]
  connect_bd_net -net local_ready_hp0_1 [get_bd_pins local_ready_hp0] [get_bd_pins xlconcat_local_readies/In2]
  connect_bd_net -net local_ready_hp1_1 [get_bd_pins local_ready_hp1] [get_bd_pins xlconcat_local_readies/In3]
  connect_bd_net -net local_ready_hp2_1 [get_bd_pins local_ready_hp2] [get_bd_pins xlconcat_local_readies/In4]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins interrupts] [get_bd_pins xlconcat_interrupts/dout]
  connect_bd_net -net xlconcat_local_readies_dout [get_bd_pins hier_global_ready/local_readies] [get_bd_pins xlconcat_interrupts/In0] [get_bd_pins xlconcat_local_readies/dout]
  
  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: hier_pspl_port_hp2
proc create_hier_cell_hier_pspl_port_hp2 { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_hier_pspl_port_hp2() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi

  # Create pins
  create_bd_pin -dir I aclk
  create_bd_pin -dir I -from 0 -to 0 global_enable
  create_bd_pin -dir I -from 0 -to 0 interconnect_aresetn
  create_bd_pin -dir I -from 0 -to 0 local_enable
  create_bd_pin -dir I -from 0 -to 0 peripheral_aresetn
  create_bd_pin -dir O ready

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list CONFIG.NUM_MI {1}  ] $axi_interconnect_0

  # Create instance: axi_interconnect_1, and set properties
  set axi_interconnect_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_1 ]
  set_property -dict [ list CONFIG.NUM_MI {1}  ] $axi_interconnect_1

  # Create instance: hier_hardware_accelerator_0
  create_hier_cell_hier_hardware_accelerator_0_4 $hier_obj hier_hardware_accelerator_0

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins axi_interconnect_1/S00_AXI] [get_bd_intf_pins hier_hardware_accelerator_0/m_axi]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_interconnect_0/M00_AXI] [get_bd_intf_pins hier_hardware_accelerator_0/s_axi]
  connect_bd_intf_net -intf_net axi_interconnect_1_M00_AXI [get_bd_intf_pins m_axi] [get_bd_intf_pins axi_interconnect_1/M00_AXI]
  connect_bd_intf_net -intf_net s_axi_1 [get_bd_intf_pins s_axi] [get_bd_intf_pins axi_interconnect_0/S00_AXI]

  # Create port connections
  connect_bd_net -net aclk_1 [get_bd_pins aclk] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins axi_interconnect_1/ACLK] [get_bd_pins axi_interconnect_1/M00_ACLK] [get_bd_pins axi_interconnect_1/S00_ACLK] [get_bd_pins hier_hardware_accelerator_0/aclk]
  connect_bd_net -net global_enable_1 [get_bd_pins global_enable] [get_bd_pins hier_hardware_accelerator_0/global_enable]
  connect_bd_net -net hier_hardware_accelerator_0_ready [get_bd_pins ready] [get_bd_pins hier_hardware_accelerator_0/ready]
  connect_bd_net -net interconnect_aresetn_1 [get_bd_pins interconnect_aresetn] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_1/ARESETN] [get_bd_pins hier_hardware_accelerator_0/interconnect_aresetn]
  connect_bd_net -net local_enable_1 [get_bd_pins local_enable] [get_bd_pins hier_hardware_accelerator_0/local_enable]
  connect_bd_net -net peripheral_aresetn_1 [get_bd_pins peripheral_aresetn] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins axi_interconnect_1/M00_ARESETN] [get_bd_pins axi_interconnect_1/S00_ARESETN] [get_bd_pins hier_hardware_accelerator_0/peripheral_aresetn]
  
  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: hier_pspl_port_hp1
proc create_hier_cell_hier_pspl_port_hp1 { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_hier_pspl_port_hp1() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi

  # Create pins
  create_bd_pin -dir I aclk
  create_bd_pin -dir I -from 0 -to 0 global_enable
  create_bd_pin -dir I -from 0 -to 0 interconnect_aresetn
  create_bd_pin -dir I -from 0 -to 0 local_enable
  create_bd_pin -dir I -from 0 -to 0 peripheral_aresetn
  create_bd_pin -dir O ready

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list CONFIG.NUM_MI {1}  ] $axi_interconnect_0

  # Create instance: axi_interconnect_1, and set properties
  set axi_interconnect_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_1 ]
  set_property -dict [ list CONFIG.NUM_MI {1}  ] $axi_interconnect_1

  # Create instance: hier_hardware_accelerator_0
  create_hier_cell_hier_hardware_accelerator_0_3 $hier_obj hier_hardware_accelerator_0

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins axi_interconnect_1/S00_AXI] [get_bd_intf_pins hier_hardware_accelerator_0/m_axi]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_interconnect_0/M00_AXI] [get_bd_intf_pins hier_hardware_accelerator_0/s_axi]
  connect_bd_intf_net -intf_net axi_interconnect_1_M00_AXI [get_bd_intf_pins m_axi] [get_bd_intf_pins axi_interconnect_1/M00_AXI]
  connect_bd_intf_net -intf_net s_axi_1 [get_bd_intf_pins s_axi] [get_bd_intf_pins axi_interconnect_0/S00_AXI]

  # Create port connections
  connect_bd_net -net aclk_1 [get_bd_pins aclk] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins axi_interconnect_1/ACLK] [get_bd_pins axi_interconnect_1/M00_ACLK] [get_bd_pins axi_interconnect_1/S00_ACLK] [get_bd_pins hier_hardware_accelerator_0/aclk]
  connect_bd_net -net global_enable_1 [get_bd_pins global_enable] [get_bd_pins hier_hardware_accelerator_0/global_enable]
  connect_bd_net -net hier_hardware_accelerator_0_ready [get_bd_pins ready] [get_bd_pins hier_hardware_accelerator_0/ready]
  connect_bd_net -net interconnect_aresetn_1 [get_bd_pins interconnect_aresetn] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_1/ARESETN] [get_bd_pins hier_hardware_accelerator_0/interconnect_aresetn]
  connect_bd_net -net local_enable_1 [get_bd_pins local_enable] [get_bd_pins hier_hardware_accelerator_0/local_enable]
  connect_bd_net -net peripheral_aresetn_1 [get_bd_pins peripheral_aresetn] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins axi_interconnect_1/M00_ARESETN] [get_bd_pins axi_interconnect_1/S00_ARESETN] [get_bd_pins hier_hardware_accelerator_0/peripheral_aresetn]
  
  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: hier_pspl_port_hp0
proc create_hier_cell_hier_pspl_port_hp0 { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_hier_pspl_port_hp0() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi

  # Create pins
  create_bd_pin -dir I aclk
  create_bd_pin -dir I -from 0 -to 0 global_enable
  create_bd_pin -dir I -from 0 -to 0 interconnect_aresetn
  create_bd_pin -dir I -from 0 -to 0 local_enable
  create_bd_pin -dir I -from 0 -to 0 peripheral_aresetn
  create_bd_pin -dir O ready

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list CONFIG.NUM_MI {1}  ] $axi_interconnect_0

  # Create instance: axi_interconnect_1, and set properties
  set axi_interconnect_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_1 ]
  set_property -dict [ list CONFIG.NUM_MI {1}  ] $axi_interconnect_1

  # Create instance: hier_hardware_accelerator_0
  create_hier_cell_hier_hardware_accelerator_0_2 $hier_obj hier_hardware_accelerator_0

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins axi_interconnect_1/S00_AXI] [get_bd_intf_pins hier_hardware_accelerator_0/m_axi]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_interconnect_0/M00_AXI] [get_bd_intf_pins hier_hardware_accelerator_0/s_axi]
  connect_bd_intf_net -intf_net axi_interconnect_1_M00_AXI [get_bd_intf_pins m_axi] [get_bd_intf_pins axi_interconnect_1/M00_AXI]
  connect_bd_intf_net -intf_net s_axi_1 [get_bd_intf_pins s_axi] [get_bd_intf_pins axi_interconnect_0/S00_AXI]

  # Create port connections
  connect_bd_net -net aclk_1 [get_bd_pins aclk] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins axi_interconnect_1/ACLK] [get_bd_pins axi_interconnect_1/M00_ACLK] [get_bd_pins axi_interconnect_1/S00_ACLK] [get_bd_pins hier_hardware_accelerator_0/aclk]
  connect_bd_net -net global_enable_1 [get_bd_pins global_enable] [get_bd_pins hier_hardware_accelerator_0/global_enable]
  connect_bd_net -net hier_hardware_accelerator_0_ready [get_bd_pins ready] [get_bd_pins hier_hardware_accelerator_0/ready]
  connect_bd_net -net interconnect_aresetn_1 [get_bd_pins interconnect_aresetn] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_1/ARESETN] [get_bd_pins hier_hardware_accelerator_0/interconnect_aresetn]
  connect_bd_net -net local_enable_1 [get_bd_pins local_enable] [get_bd_pins hier_hardware_accelerator_0/local_enable]
  connect_bd_net -net peripheral_aresetn_1 [get_bd_pins peripheral_aresetn] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins axi_interconnect_1/M00_ARESETN] [get_bd_pins axi_interconnect_1/S00_ARESETN] [get_bd_pins hier_hardware_accelerator_0/peripheral_aresetn]
  
  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: hier_pspl_port_gp0
proc create_hier_cell_hier_pspl_port_gp0 { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_hier_pspl_port_gp0() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi

  # Create pins
  create_bd_pin -dir I aclk
  create_bd_pin -dir I -from 0 -to 0 global_enable
  create_bd_pin -dir I -from 0 -to 0 interconnect_aresetn
  create_bd_pin -dir I -from 0 -to 0 local_enable
  create_bd_pin -dir I -from 0 -to 0 peripheral_aresetn
  create_bd_pin -dir O ready

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list CONFIG.NUM_MI {1}  ] $axi_interconnect_0

  # Create instance: axi_interconnect_1, and set properties
  set axi_interconnect_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_1 ]
  set_property -dict [ list CONFIG.NUM_MI {1}  ] $axi_interconnect_1

  # Create instance: hier_hardware_accelerator_0
  create_hier_cell_hier_hardware_accelerator_0_1 $hier_obj hier_hardware_accelerator_0

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins axi_interconnect_1/S00_AXI] [get_bd_intf_pins hier_hardware_accelerator_0/m_axi]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_interconnect_0/M00_AXI] [get_bd_intf_pins hier_hardware_accelerator_0/s_axi]
  connect_bd_intf_net -intf_net axi_interconnect_1_M00_AXI [get_bd_intf_pins m_axi] [get_bd_intf_pins axi_interconnect_1/M00_AXI]
  connect_bd_intf_net -intf_net s_axi_1 [get_bd_intf_pins s_axi] [get_bd_intf_pins axi_interconnect_0/S00_AXI]

  # Create port connections
  connect_bd_net -net aclk_1 [get_bd_pins aclk] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins axi_interconnect_1/ACLK] [get_bd_pins axi_interconnect_1/M00_ACLK] [get_bd_pins axi_interconnect_1/S00_ACLK] [get_bd_pins hier_hardware_accelerator_0/aclk]
  connect_bd_net -net global_enable_1 [get_bd_pins global_enable] [get_bd_pins hier_hardware_accelerator_0/global_enable]
  connect_bd_net -net hier_hardware_accelerator_0_ready [get_bd_pins ready] [get_bd_pins hier_hardware_accelerator_0/ready]
  connect_bd_net -net interconnect_aresetn_1 [get_bd_pins interconnect_aresetn] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_1/ARESETN] [get_bd_pins hier_hardware_accelerator_0/interconnect_aresetn]
  connect_bd_net -net local_enable_1 [get_bd_pins local_enable] [get_bd_pins hier_hardware_accelerator_0/local_enable]
  connect_bd_net -net peripheral_aresetn_1 [get_bd_pins peripheral_aresetn] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins axi_interconnect_1/M00_ARESETN] [get_bd_pins axi_interconnect_1/S00_ARESETN] [get_bd_pins hier_hardware_accelerator_0/peripheral_aresetn]
  
  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: hier_pspl_port_acp
proc create_hier_cell_hier_pspl_port_acp { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_hier_pspl_port_acp() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi

  # Create pins
  create_bd_pin -dir I aclk
  create_bd_pin -dir I -from 0 -to 0 global_enable
  create_bd_pin -dir I -from 0 -to 0 interconnect_aresetn
  create_bd_pin -dir I -from 1 -to 0 local_enable
  create_bd_pin -dir I -from 0 -to 0 peripheral_aresetn
  create_bd_pin -dir O -from 1 -to 0 ready

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list CONFIG.NUM_MI {2} CONFIG.STRATEGY {2}  ] $axi_interconnect_0

  # Create instance: axi_interconnect_1, and set properties
  set axi_interconnect_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_1 ]
  set_property -dict [ list CONFIG.NUM_MI {1} CONFIG.NUM_SI {2} CONFIG.STRATEGY {2}  ] $axi_interconnect_1

  # Create instance: hier_hardware_accelerator_0
  create_hier_cell_hier_hardware_accelerator_0 $hier_obj hier_hardware_accelerator_0

  # Create instance: hier_hardware_accelerator_1
  create_hier_cell_hier_hardware_accelerator_1 $hier_obj hier_hardware_accelerator_1

  # Create instance: xlconcat_ready, and set properties
  set xlconcat_ready [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_ready ]

  # Create instance: xlslice_local_enable_0, and set properties
  set xlslice_local_enable_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_local_enable_0 ]
  set_property -dict [ list CONFIG.DIN_WIDTH {2}  ] $xlslice_local_enable_0

  # Create instance: xlslice_local_enable_1, and set properties
  set xlslice_local_enable_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_local_enable_1 ]
  set_property -dict [ list CONFIG.DIN_FROM {1} CONFIG.DIN_TO {1} CONFIG.DIN_WIDTH {2}  ] $xlslice_local_enable_1

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins axi_interconnect_1/S00_AXI] [get_bd_intf_pins hier_hardware_accelerator_0/m_axi]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_interconnect_0/M00_AXI] [get_bd_intf_pins hier_hardware_accelerator_0/s_axi]
  connect_bd_intf_net -intf_net axi_interconnect_0_M01_AXI [get_bd_intf_pins axi_interconnect_0/M01_AXI] [get_bd_intf_pins hier_hardware_accelerator_1/s_axi]
  connect_bd_intf_net -intf_net axi_interconnect_1_M00_AXI [get_bd_intf_pins m_axi] [get_bd_intf_pins axi_interconnect_1/M00_AXI]
  connect_bd_intf_net -intf_net hier_hardware_accelerator_1_m_axi [get_bd_intf_pins axi_interconnect_1/S01_AXI] [get_bd_intf_pins hier_hardware_accelerator_1/m_axi]
  connect_bd_intf_net -intf_net s_axi_1 [get_bd_intf_pins s_axi] [get_bd_intf_pins axi_interconnect_0/S00_AXI]

  # Create port connections
  connect_bd_net -net aclk_1 [get_bd_pins aclk] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/M01_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins axi_interconnect_1/ACLK] [get_bd_pins axi_interconnect_1/M00_ACLK] [get_bd_pins axi_interconnect_1/S00_ACLK] [get_bd_pins axi_interconnect_1/S01_ACLK] [get_bd_pins hier_hardware_accelerator_0/aclk] [get_bd_pins hier_hardware_accelerator_1/aclk]
  connect_bd_net -net global_enable_1 [get_bd_pins global_enable] [get_bd_pins hier_hardware_accelerator_0/global_enable] [get_bd_pins hier_hardware_accelerator_1/global_enable]
  connect_bd_net -net hier_hardware_accelerator_0_ready [get_bd_pins hier_hardware_accelerator_0/ready] [get_bd_pins xlconcat_ready/In0]
  connect_bd_net -net hier_hardware_accelerator_1_ready [get_bd_pins hier_hardware_accelerator_1/ready] [get_bd_pins xlconcat_ready/In1]
  connect_bd_net -net interconnect_aresetn_1 [get_bd_pins interconnect_aresetn] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_1/ARESETN] [get_bd_pins hier_hardware_accelerator_0/interconnect_aresetn] [get_bd_pins hier_hardware_accelerator_1/interconnect_aresetn]
  connect_bd_net -net local_enable_1 [get_bd_pins local_enable] [get_bd_pins xlslice_local_enable_0/Din] [get_bd_pins xlslice_local_enable_1/Din]
  connect_bd_net -net peripheral_aresetn_1 [get_bd_pins peripheral_aresetn] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/M01_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins axi_interconnect_1/M00_ARESETN] [get_bd_pins axi_interconnect_1/S00_ARESETN] [get_bd_pins axi_interconnect_1/S01_ARESETN] [get_bd_pins hier_hardware_accelerator_0/peripheral_aresetn] [get_bd_pins hier_hardware_accelerator_1/peripheral_aresetn]
  connect_bd_net -net xlconcat_ready_dout [get_bd_pins ready] [get_bd_pins xlconcat_ready/dout]
  connect_bd_net -net xlslice_local_enable_0_Dout [get_bd_pins hier_hardware_accelerator_0/local_enable] [get_bd_pins xlslice_local_enable_0/Dout]
  connect_bd_net -net xlslice_local_enable_1_Dout [get_bd_pins hier_hardware_accelerator_1/local_enable] [get_bd_pins xlslice_local_enable_1/Dout]
  
  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: hier_ps
proc create_hier_cell_hier_ps { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_hier_ps() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR
  create_bd_intf_pin -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_ACP
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_GP0
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_HP0
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_HP1
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_HP2
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi_acp
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi_gp0
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi_hp0
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi_hp1
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi_hp2

  # Create pins
  create_bd_pin -dir O -from 63 -to 0 GPIO_O
  create_bd_pin -dir I -from 6 -to 0 -type intr IRQ_F2P
  create_bd_pin -dir O aclk
  create_bd_pin -dir O -from 0 -to 0 interconnect_aresetn
  create_bd_pin -dir O -from 0 -to 0 peripheral_aresetn

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list CONFIG.NUM_MI {5} CONFIG.STRATEGY {2}  ] $axi_interconnect_0

  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {0} CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE {1} CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {0} CONFIG.PCW_IRQ_F2P_INTR {1} CONFIG.PCW_S_AXI_HP0_DATA_WIDTH {32} CONFIG.PCW_TTC0_PERIPHERAL_ENABLE {1} CONFIG.PCW_TTC0_TTC0_IO {MIO 18 .. 19} CONFIG.PCW_USB0_PERIPHERAL_ENABLE {0} CONFIG.PCW_USE_DEFAULT_ACP_USER_VAL {0} CONFIG.PCW_USE_FABRIC_INTERRUPT {1} CONFIG.PCW_USE_HIGH_OCM {1} CONFIG.PCW_USE_PS_SLCR_REGISTERS {0} CONFIG.PCW_USE_S_AXI_ACP {1} CONFIG.PCW_USE_S_AXI_GP0 {1} CONFIG.PCW_USE_S_AXI_HP0 {1} CONFIG.PCW_USE_S_AXI_HP1 {1} CONFIG.PCW_USE_S_AXI_HP2 {1} CONFIG.preset {ZedBoard*}  ] $processing_system7_0

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins axi_interconnect_0/S00_AXI] [get_bd_intf_pins processing_system7_0/M_AXI_GP0]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins m_axi_acp] [get_bd_intf_pins axi_interconnect_0/M00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M01_AXI [get_bd_intf_pins m_axi_gp0] [get_bd_intf_pins axi_interconnect_0/M01_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M02_AXI [get_bd_intf_pins m_axi_hp0] [get_bd_intf_pins axi_interconnect_0/M02_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M03_AXI [get_bd_intf_pins m_axi_hp1] [get_bd_intf_pins axi_interconnect_0/M03_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M04_AXI [get_bd_intf_pins m_axi_hp2] [get_bd_intf_pins axi_interconnect_0/M04_AXI]
  connect_bd_intf_net -intf_net hier_pspl_port_acp_m_axi [get_bd_intf_pins S_AXI_ACP] [get_bd_intf_pins processing_system7_0/S_AXI_ACP]
  connect_bd_intf_net -intf_net hier_pspl_port_gp0_m_axi [get_bd_intf_pins S_AXI_GP0] [get_bd_intf_pins processing_system7_0/S_AXI_GP0]
  connect_bd_intf_net -intf_net hier_pspl_port_hp0_m_axi [get_bd_intf_pins S_AXI_HP0] [get_bd_intf_pins processing_system7_0/S_AXI_HP0]
  connect_bd_intf_net -intf_net hier_pspl_port_hp1_m_axi [get_bd_intf_pins S_AXI_HP1] [get_bd_intf_pins processing_system7_0/S_AXI_HP1]
  connect_bd_intf_net -intf_net hier_pspl_port_hp2_m_axi [get_bd_intf_pins S_AXI_HP2] [get_bd_intf_pins processing_system7_0/S_AXI_HP2]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_pins DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_pins FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]

  # Create port connections
  connect_bd_net -net hier_readies_interrupts [get_bd_pins IRQ_F2P] [get_bd_pins processing_system7_0/IRQ_F2P]
  connect_bd_net -net proc_sys_reset_0_interconnect_aresetn [get_bd_pins interconnect_aresetn] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins proc_sys_reset_0/interconnect_aresetn]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins peripheral_aresetn] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/M01_ARESETN] [get_bd_pins axi_interconnect_0/M02_ARESETN] [get_bd_pins axi_interconnect_0/M03_ARESETN] [get_bd_pins axi_interconnect_0/M04_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins proc_sys_reset_0/peripheral_aresetn]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins aclk] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/M01_ACLK] [get_bd_pins axi_interconnect_0/M02_ACLK] [get_bd_pins axi_interconnect_0/M03_ACLK] [get_bd_pins axi_interconnect_0/M04_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins proc_sys_reset_0/slowest_sync_clk] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins processing_system7_0/S_AXI_ACP_ACLK] [get_bd_pins processing_system7_0/S_AXI_GP0_ACLK] [get_bd_pins processing_system7_0/S_AXI_HP0_ACLK] [get_bd_pins processing_system7_0/S_AXI_HP1_ACLK] [get_bd_pins processing_system7_0/S_AXI_HP2_ACLK]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins proc_sys_reset_0/ext_reset_in] [get_bd_pins processing_system7_0/FCLK_RESET0_N]
  connect_bd_net -net processing_system7_0_GPIO_O [get_bd_pins GPIO_O] [get_bd_pins processing_system7_0/GPIO_O]
  
  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: hier_enables
proc create_hier_cell_hier_enables { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_hier_enables() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O -from 0 -to 0 global_enable
  create_bd_pin -dir O -from 1 -to 0 local_enable_acp
  create_bd_pin -dir O -from 0 -to 0 local_enable_gp0
  create_bd_pin -dir O -from 0 -to 0 local_enable_hp0
  create_bd_pin -dir O -from 0 -to 0 local_enable_hp1
  create_bd_pin -dir O -from 0 -to 0 local_enable_hp2
  create_bd_pin -dir O -from 5 -to 0 local_enables
  create_bd_pin -dir I -from 63 -to 0 outputs

  # Create instance: xlslice_enable_acp, and set properties
  set xlslice_enable_acp [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_enable_acp ]
  set_property -dict [ list CONFIG.DIN_FROM {1} CONFIG.DIN_WIDTH {6}  ] $xlslice_enable_acp

  # Create instance: xlslice_enable_gp0, and set properties
  set xlslice_enable_gp0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_enable_gp0 ]
  set_property -dict [ list CONFIG.DIN_FROM {2} CONFIG.DIN_TO {2} CONFIG.DIN_WIDTH {6}  ] $xlslice_enable_gp0

  # Create instance: xlslice_enable_hp0, and set properties
  set xlslice_enable_hp0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_enable_hp0 ]
  set_property -dict [ list CONFIG.DIN_FROM {3} CONFIG.DIN_TO {3} CONFIG.DIN_WIDTH {6}  ] $xlslice_enable_hp0

  # Create instance: xlslice_enable_hp1, and set properties
  set xlslice_enable_hp1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_enable_hp1 ]
  set_property -dict [ list CONFIG.DIN_FROM {4} CONFIG.DIN_TO {4} CONFIG.DIN_WIDTH {6}  ] $xlslice_enable_hp1

  # Create instance: xlslice_enable_hp2, and set properties
  set xlslice_enable_hp2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_enable_hp2 ]
  set_property -dict [ list CONFIG.DIN_FROM {5} CONFIG.DIN_TO {5} CONFIG.DIN_WIDTH {6}  ] $xlslice_enable_hp2

  # Create instance: xlslice_global_enable, and set properties
  set xlslice_global_enable [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_global_enable ]
  set_property -dict [ list CONFIG.DIN_WIDTH {64}  ] $xlslice_global_enable

  # Create instance: xlslice_local_enables, and set properties
  set xlslice_local_enables [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_local_enables ]
  set_property -dict [ list CONFIG.DIN_FROM {6} CONFIG.DIN_TO {1} CONFIG.DIN_WIDTH {64}  ] $xlslice_local_enables

  # Create port connections
  connect_bd_net -net outputs_1 [get_bd_pins outputs] [get_bd_pins xlslice_global_enable/Din] [get_bd_pins xlslice_local_enables/Din]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins global_enable] [get_bd_pins xlslice_global_enable/Dout]
  connect_bd_net -net xlslice_0_Dout1 [get_bd_pins local_enable_acp] [get_bd_pins xlslice_enable_acp/Dout]
  connect_bd_net -net xlslice_1_Dout [get_bd_pins local_enable_gp0] [get_bd_pins xlslice_enable_gp0/Dout]
  connect_bd_net -net xlslice_2_Dout [get_bd_pins local_enable_hp0] [get_bd_pins xlslice_enable_hp0/Dout]
  connect_bd_net -net xlslice_3_Dout [get_bd_pins local_enable_hp1] [get_bd_pins xlslice_enable_hp1/Dout]
  connect_bd_net -net xlslice_4_Dout [get_bd_pins local_enable_hp2] [get_bd_pins xlslice_enable_hp2/Dout]
  connect_bd_net -net xlslice_local_enables_Dout [get_bd_pins local_enables] [get_bd_pins xlslice_enable_acp/Din] [get_bd_pins xlslice_enable_gp0/Din] [get_bd_pins xlslice_enable_hp0/Din] [get_bd_pins xlslice_enable_hp1/Din] [get_bd_pins xlslice_enable_hp2/Din] [get_bd_pins xlslice_local_enables/Dout]
  
  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]

  # Create ports

  # Create instance: hier_enables
  create_hier_cell_hier_enables [current_bd_instance .] hier_enables

  # Create instance: hier_ps
  create_hier_cell_hier_ps [current_bd_instance .] hier_ps

  # Create instance: hier_pspl_port_acp
  create_hier_cell_hier_pspl_port_acp [current_bd_instance .] hier_pspl_port_acp

  # Create instance: hier_pspl_port_gp0
  create_hier_cell_hier_pspl_port_gp0 [current_bd_instance .] hier_pspl_port_gp0

  # Create instance: hier_pspl_port_hp0
  create_hier_cell_hier_pspl_port_hp0 [current_bd_instance .] hier_pspl_port_hp0

  # Create instance: hier_pspl_port_hp1
  create_hier_cell_hier_pspl_port_hp1 [current_bd_instance .] hier_pspl_port_hp1

  # Create instance: hier_pspl_port_hp2
  create_hier_cell_hier_pspl_port_hp2 [current_bd_instance .] hier_pspl_port_hp2

  # Create instance: hier_readies
  create_hier_cell_hier_readies [current_bd_instance .] hier_readies

  # Create interface connections
  connect_bd_intf_net -intf_net hier_ps_m_axi_acp [get_bd_intf_pins hier_ps/m_axi_acp] [get_bd_intf_pins hier_pspl_port_acp/s_axi]
  connect_bd_intf_net -intf_net hier_ps_m_axi_gp0 [get_bd_intf_pins hier_ps/m_axi_gp0] [get_bd_intf_pins hier_pspl_port_gp0/s_axi]
  connect_bd_intf_net -intf_net hier_ps_m_axi_hp0 [get_bd_intf_pins hier_ps/m_axi_hp0] [get_bd_intf_pins hier_pspl_port_hp0/s_axi]
  connect_bd_intf_net -intf_net hier_ps_m_axi_hp1 [get_bd_intf_pins hier_ps/m_axi_hp1] [get_bd_intf_pins hier_pspl_port_hp2/s_axi]
  connect_bd_intf_net -intf_net hier_ps_m_axi_hp2 [get_bd_intf_pins hier_ps/m_axi_hp2] [get_bd_intf_pins hier_pspl_port_hp1/s_axi]
  connect_bd_intf_net -intf_net hier_pspl_port_acp_m_axi [get_bd_intf_pins hier_ps/S_AXI_ACP] [get_bd_intf_pins hier_pspl_port_acp/m_axi]
  connect_bd_intf_net -intf_net hier_pspl_port_gp0_m_axi [get_bd_intf_pins hier_ps/S_AXI_GP0] [get_bd_intf_pins hier_pspl_port_gp0/m_axi]
  connect_bd_intf_net -intf_net hier_pspl_port_hp0_m_axi [get_bd_intf_pins hier_ps/S_AXI_HP0] [get_bd_intf_pins hier_pspl_port_hp0/m_axi]
  connect_bd_intf_net -intf_net hier_pspl_port_hp1_m_axi [get_bd_intf_pins hier_ps/S_AXI_HP1] [get_bd_intf_pins hier_pspl_port_hp1/m_axi]
  connect_bd_intf_net -intf_net hier_pspl_port_hp2_m_axi [get_bd_intf_pins hier_ps/S_AXI_HP2] [get_bd_intf_pins hier_pspl_port_hp2/m_axi]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins hier_ps/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins hier_ps/FIXED_IO]

  # Create port connections
  connect_bd_net -net hier_enables_global_enable [get_bd_pins hier_enables/global_enable] [get_bd_pins hier_pspl_port_acp/global_enable] [get_bd_pins hier_pspl_port_gp0/global_enable] [get_bd_pins hier_pspl_port_hp0/global_enable] [get_bd_pins hier_pspl_port_hp1/global_enable] [get_bd_pins hier_pspl_port_hp2/global_enable] [get_bd_pins hier_readies/global_enable]
  connect_bd_net -net hier_enables_local_enable_acp [get_bd_pins hier_enables/local_enable_acp] [get_bd_pins hier_pspl_port_acp/local_enable]
  connect_bd_net -net hier_enables_local_enable_gp0 [get_bd_pins hier_enables/local_enable_gp0] [get_bd_pins hier_pspl_port_gp0/local_enable]
  connect_bd_net -net hier_enables_local_enable_hp0 [get_bd_pins hier_enables/local_enable_hp0] [get_bd_pins hier_pspl_port_hp0/local_enable]
  connect_bd_net -net hier_enables_local_enable_hp1 [get_bd_pins hier_enables/local_enable_hp1] [get_bd_pins hier_pspl_port_hp1/local_enable]
  connect_bd_net -net hier_enables_local_enables [get_bd_pins hier_enables/local_enables] [get_bd_pins hier_readies/local_enables]
  connect_bd_net -net hier_ps_aclk [get_bd_pins hier_ps/aclk] [get_bd_pins hier_pspl_port_acp/aclk] [get_bd_pins hier_pspl_port_gp0/aclk] [get_bd_pins hier_pspl_port_hp0/aclk] [get_bd_pins hier_pspl_port_hp1/aclk] [get_bd_pins hier_pspl_port_hp2/aclk]
  connect_bd_net -net hier_ps_interconnect_aresetn [get_bd_pins hier_ps/interconnect_aresetn] [get_bd_pins hier_pspl_port_acp/interconnect_aresetn] [get_bd_pins hier_pspl_port_gp0/interconnect_aresetn] [get_bd_pins hier_pspl_port_hp0/interconnect_aresetn] [get_bd_pins hier_pspl_port_hp1/interconnect_aresetn] [get_bd_pins hier_pspl_port_hp2/interconnect_aresetn]
  connect_bd_net -net hier_ps_peripheral_aresetn [get_bd_pins hier_ps/peripheral_aresetn] [get_bd_pins hier_pspl_port_acp/peripheral_aresetn] [get_bd_pins hier_pspl_port_gp0/peripheral_aresetn] [get_bd_pins hier_pspl_port_hp0/peripheral_aresetn] [get_bd_pins hier_pspl_port_hp1/peripheral_aresetn] [get_bd_pins hier_pspl_port_hp2/peripheral_aresetn]
  connect_bd_net -net hier_pspl_port_acp_ready [get_bd_pins hier_pspl_port_acp/ready] [get_bd_pins hier_readies/local_ready_acp]
  connect_bd_net -net hier_pspl_port_gp0_ready [get_bd_pins hier_pspl_port_gp0/ready] [get_bd_pins hier_readies/local_ready_gp0]
  connect_bd_net -net hier_pspl_port_hp0_ready [get_bd_pins hier_pspl_port_hp0/ready] [get_bd_pins hier_readies/local_ready_hp0]
  connect_bd_net -net hier_pspl_port_hp1_ready [get_bd_pins hier_pspl_port_hp1/ready] [get_bd_pins hier_readies/local_ready_hp1]
  connect_bd_net -net hier_pspl_port_hp2_ready [get_bd_pins hier_pspl_port_hp2/ready] [get_bd_pins hier_readies/local_ready_hp2]
  connect_bd_net -net hier_readies_interrupts [get_bd_pins hier_ps/IRQ_F2P] [get_bd_pins hier_readies/interrupts]
  connect_bd_net -net local_enable_1 [get_bd_pins hier_enables/local_enable_hp2] [get_bd_pins hier_pspl_port_hp2/local_enable]
  connect_bd_net -net processing_system7_0_GPIO_O [get_bd_pins hier_enables/outputs] [get_bd_pins hier_ps/GPIO_O]

  # Create address segments
  create_bd_addr_seg -range 0x10000 -offset 0x43C10000 [get_bd_addr_spaces hier_ps/processing_system7_0/Data] [get_bd_addr_segs hier_pspl_port_acp/hier_hardware_accelerator_0/axi3_metrics_counter_0/s_axi_lite/s_axi_lite_reg] SEG_axi3_metrics_counter_0_s_axi_lite_reg
  create_bd_addr_seg -range 0x10000 -offset 0x43C30000 [get_bd_addr_spaces hier_ps/processing_system7_0/Data] [get_bd_addr_segs hier_pspl_port_hp0/hier_hardware_accelerator_0/axi3_metrics_counter_0/s_axi_lite/s_axi_lite_reg] SEG_axi3_metrics_counter_0_s_axi_lite_reg20
  create_bd_addr_seg -range 0x10000 -offset 0x43C50000 [get_bd_addr_spaces hier_ps/processing_system7_0/Data] [get_bd_addr_segs hier_pspl_port_gp0/hier_hardware_accelerator_0/axi3_metrics_counter_0/s_axi_lite/s_axi_lite_reg] SEG_axi3_metrics_counter_0_s_axi_lite_reg24
  create_bd_addr_seg -range 0x10000 -offset 0x43C70000 [get_bd_addr_spaces hier_ps/processing_system7_0/Data] [get_bd_addr_segs hier_pspl_port_hp1/hier_hardware_accelerator_0/axi3_metrics_counter_0/s_axi_lite/s_axi_lite_reg] SEG_axi3_metrics_counter_0_s_axi_lite_reg28
  create_bd_addr_seg -range 0x10000 -offset 0x43C90000 [get_bd_addr_spaces hier_ps/processing_system7_0/Data] [get_bd_addr_segs hier_pspl_port_hp2/hier_hardware_accelerator_0/axi3_metrics_counter_0/s_axi_lite/s_axi_lite_reg] SEG_axi3_metrics_counter_0_s_axi_lite_reg32
  create_bd_addr_seg -range 0x10000 -offset 0x43CB0000 [get_bd_addr_spaces hier_ps/processing_system7_0/Data] [get_bd_addr_segs hier_pspl_port_acp/hier_hardware_accelerator_1/axi3_metrics_counter_0/s_axi_lite/s_axi_lite_reg] SEG_axi3_metrics_counter_0_s_axi_lite_reg36
  create_bd_addr_seg -range 0x10000 -offset 0x43C00000 [get_bd_addr_spaces hier_ps/processing_system7_0/Data] [get_bd_addr_segs hier_pspl_port_acp/hier_hardware_accelerator_0/hardware_accelerator_0/s_axi_lite_registers/s_axi_lite_registers_reg] SEG_hardware_accelerator_0_s_axi_lite_registers_reg
  create_bd_addr_seg -range 0x10000 -offset 0x43C20000 [get_bd_addr_spaces hier_ps/processing_system7_0/Data] [get_bd_addr_segs hier_pspl_port_hp0/hier_hardware_accelerator_0/hardware_accelerator_0/s_axi_lite_registers/s_axi_lite_registers_reg] SEG_hardware_accelerator_0_s_axi_lite_registers_reg18
  create_bd_addr_seg -range 0x10000 -offset 0x43C40000 [get_bd_addr_spaces hier_ps/processing_system7_0/Data] [get_bd_addr_segs hier_pspl_port_gp0/hier_hardware_accelerator_0/hardware_accelerator_0/s_axi_lite_registers/s_axi_lite_registers_reg] SEG_hardware_accelerator_0_s_axi_lite_registers_reg22
  create_bd_addr_seg -range 0x10000 -offset 0x43C60000 [get_bd_addr_spaces hier_ps/processing_system7_0/Data] [get_bd_addr_segs hier_pspl_port_hp1/hier_hardware_accelerator_0/hardware_accelerator_0/s_axi_lite_registers/s_axi_lite_registers_reg] SEG_hardware_accelerator_0_s_axi_lite_registers_reg26
  create_bd_addr_seg -range 0x10000 -offset 0x43C80000 [get_bd_addr_spaces hier_ps/processing_system7_0/Data] [get_bd_addr_segs hier_pspl_port_hp2/hier_hardware_accelerator_0/hardware_accelerator_0/s_axi_lite_registers/s_axi_lite_registers_reg] SEG_hardware_accelerator_0_s_axi_lite_registers_reg30
  create_bd_addr_seg -range 0x10000 -offset 0x43CA0000 [get_bd_addr_spaces hier_ps/processing_system7_0/Data] [get_bd_addr_segs hier_pspl_port_acp/hier_hardware_accelerator_1/hardware_accelerator_0/s_axi_lite_registers/s_axi_lite_registers_reg] SEG_hardware_accelerator_0_s_axi_lite_registers_reg34
  create_bd_addr_seg -range 0x20000000 -offset 0x0 [get_bd_addr_spaces hier_pspl_port_acp/hier_hardware_accelerator_0/hardware_accelerator_0/m_axi_full_data] [get_bd_addr_segs hier_ps/processing_system7_0/S_AXI_ACP/ACP_DDR_LOWOCM] SEG_processing_system7_0_ACP_DDR_LOWOCM
  create_bd_addr_seg -range 0x40000 -offset 0xFFFC0000 [get_bd_addr_spaces hier_pspl_port_acp/hier_hardware_accelerator_0/hardware_accelerator_0/m_axi_full_data] [get_bd_addr_segs hier_ps/processing_system7_0/S_AXI_ACP/ACP_HIGH_OCM] SEG_processing_system7_0_ACP_HIGH_OCM
  create_bd_addr_seg -range 0x400000 -offset 0xE0000000 [get_bd_addr_spaces hier_pspl_port_acp/hier_hardware_accelerator_0/hardware_accelerator_0/m_axi_full_data] [get_bd_addr_segs hier_ps/processing_system7_0/S_AXI_ACP/ACP_IOP] SEG_processing_system7_0_ACP_IOP
  create_bd_addr_seg -range 0x40000000 -offset 0x40000000 [get_bd_addr_spaces hier_pspl_port_acp/hier_hardware_accelerator_0/hardware_accelerator_0/m_axi_full_data] [get_bd_addr_segs hier_ps/processing_system7_0/S_AXI_ACP/ACP_M_AXI_GP0] SEG_processing_system7_0_ACP_M_AXI_GP0
  create_bd_addr_seg -range 0x1000000 -offset 0xFC000000 [get_bd_addr_spaces hier_pspl_port_acp/hier_hardware_accelerator_0/hardware_accelerator_0/m_axi_full_data] [get_bd_addr_segs hier_ps/processing_system7_0/S_AXI_ACP/ACP_QSPI_LINEAR] SEG_processing_system7_0_ACP_QSPI_LINEAR
  create_bd_addr_seg -range 0x20000000 -offset 0x0 [get_bd_addr_spaces hier_pspl_port_acp/hier_hardware_accelerator_1/hardware_accelerator_0/m_axi_full_data] [get_bd_addr_segs hier_ps/processing_system7_0/S_AXI_ACP/ACP_DDR_LOWOCM] SEG_processing_system7_0_ACP_DDR_LOWOCM
  create_bd_addr_seg -range 0x40000 -offset 0xFFFC0000 [get_bd_addr_spaces hier_pspl_port_acp/hier_hardware_accelerator_1/hardware_accelerator_0/m_axi_full_data] [get_bd_addr_segs hier_ps/processing_system7_0/S_AXI_ACP/ACP_HIGH_OCM] SEG_processing_system7_0_ACP_HIGH_OCM
  create_bd_addr_seg -range 0x400000 -offset 0xE0000000 [get_bd_addr_spaces hier_pspl_port_acp/hier_hardware_accelerator_1/hardware_accelerator_0/m_axi_full_data] [get_bd_addr_segs hier_ps/processing_system7_0/S_AXI_ACP/ACP_IOP] SEG_processing_system7_0_ACP_IOP
  create_bd_addr_seg -range 0x40000000 -offset 0x40000000 [get_bd_addr_spaces hier_pspl_port_acp/hier_hardware_accelerator_1/hardware_accelerator_0/m_axi_full_data] [get_bd_addr_segs hier_ps/processing_system7_0/S_AXI_ACP/ACP_M_AXI_GP0] SEG_processing_system7_0_ACP_M_AXI_GP0
  create_bd_addr_seg -range 0x1000000 -offset 0xFC000000 [get_bd_addr_spaces hier_pspl_port_acp/hier_hardware_accelerator_1/hardware_accelerator_0/m_axi_full_data] [get_bd_addr_segs hier_ps/processing_system7_0/S_AXI_ACP/ACP_QSPI_LINEAR] SEG_processing_system7_0_ACP_QSPI_LINEAR
  create_bd_addr_seg -range 0x20000000 -offset 0x0 [get_bd_addr_spaces hier_pspl_port_gp0/hier_hardware_accelerator_0/hardware_accelerator_0/m_axi_full_data] [get_bd_addr_segs hier_ps/processing_system7_0/S_AXI_GP0/GP0_DDR_LOWOCM] SEG_processing_system7_0_GP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x40000 -offset 0xFFFC0000 [get_bd_addr_spaces hier_pspl_port_gp0/hier_hardware_accelerator_0/hardware_accelerator_0/m_axi_full_data] [get_bd_addr_segs hier_ps/processing_system7_0/S_AXI_GP0/GP0_HIGH_OCM] SEG_processing_system7_0_GP0_HIGH_OCM
  create_bd_addr_seg -range 0x400000 -offset 0xE0000000 [get_bd_addr_spaces hier_pspl_port_gp0/hier_hardware_accelerator_0/hardware_accelerator_0/m_axi_full_data] [get_bd_addr_segs hier_ps/processing_system7_0/S_AXI_GP0/GP0_IOP] SEG_processing_system7_0_GP0_IOP
  create_bd_addr_seg -range 0x40000000 -offset 0x40000000 [get_bd_addr_spaces hier_pspl_port_gp0/hier_hardware_accelerator_0/hardware_accelerator_0/m_axi_full_data] [get_bd_addr_segs hier_ps/processing_system7_0/S_AXI_GP0/GP0_M_AXI_GP0] SEG_processing_system7_0_GP0_M_AXI_GP0
  create_bd_addr_seg -range 0x1000000 -offset 0xFC000000 [get_bd_addr_spaces hier_pspl_port_gp0/hier_hardware_accelerator_0/hardware_accelerator_0/m_axi_full_data] [get_bd_addr_segs hier_ps/processing_system7_0/S_AXI_GP0/GP0_QSPI_LINEAR] SEG_processing_system7_0_GP0_QSPI_LINEAR
  create_bd_addr_seg -range 0x20000000 -offset 0x0 [get_bd_addr_spaces hier_pspl_port_hp0/hier_hardware_accelerator_0/hardware_accelerator_0/m_axi_full_data] [get_bd_addr_segs hier_ps/processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x40000 -offset 0xFFFC0000 [get_bd_addr_spaces hier_pspl_port_hp0/hier_hardware_accelerator_0/hardware_accelerator_0/m_axi_full_data] [get_bd_addr_segs hier_ps/processing_system7_0/S_AXI_HP0/HP0_HIGH_OCM] SEG_processing_system7_0_HP0_HIGH_OCM
  create_bd_addr_seg -range 0x20000000 -offset 0x0 [get_bd_addr_spaces hier_pspl_port_hp1/hier_hardware_accelerator_0/hardware_accelerator_0/m_axi_full_data] [get_bd_addr_segs hier_ps/processing_system7_0/S_AXI_HP1/HP1_DDR_LOWOCM] SEG_processing_system7_0_HP1_DDR_LOWOCM
  create_bd_addr_seg -range 0x40000 -offset 0xFFFC0000 [get_bd_addr_spaces hier_pspl_port_hp1/hier_hardware_accelerator_0/hardware_accelerator_0/m_axi_full_data] [get_bd_addr_segs hier_ps/processing_system7_0/S_AXI_HP1/HP1_HIGH_OCM] SEG_processing_system7_0_HP1_HIGH_OCM
  create_bd_addr_seg -range 0x20000000 -offset 0x0 [get_bd_addr_spaces hier_pspl_port_hp2/hier_hardware_accelerator_0/hardware_accelerator_0/m_axi_full_data] [get_bd_addr_segs hier_ps/processing_system7_0/S_AXI_HP2/HP2_DDR_LOWOCM] SEG_processing_system7_0_HP2_DDR_LOWOCM
  create_bd_addr_seg -range 0x40000 -offset 0xFFFC0000 [get_bd_addr_spaces hier_pspl_port_hp2/hier_hardware_accelerator_0/hardware_accelerator_0/m_axi_full_data] [get_bd_addr_segs hier_ps/processing_system7_0/S_AXI_HP2/HP2_HIGH_OCM] SEG_processing_system7_0_HP2_HIGH_OCM
  

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


