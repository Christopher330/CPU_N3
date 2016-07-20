
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name cpu -dir "G:/cpu/planAhead_run_1" -part xc3s500epq208-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "cpu.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {wrbk_ctrl.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {stor_ctrl.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {memwr_ctrl.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {io_ctrl.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {fetch_ctrl.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {clock_ctrl.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {alu_ctrl.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {cpu.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top cpu $srcset
add_files [list {cpu.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500epq208-4
