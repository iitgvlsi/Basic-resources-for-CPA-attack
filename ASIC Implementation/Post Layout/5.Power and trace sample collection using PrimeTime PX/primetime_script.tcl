
 #############################################################
 ##                 Synopsys Primetime                       		               ##
 #############################################################

 #############################################################
 ##                 Set the power analysis mode                                                  ##
 #############################################################

set power_enable_analysis TRUE
set power_analysis_mode time_based

 #############################################################
 ##                 Link design		                                                  ##
 #############################################################

set target_library "/home/UMC65/UMK65LSCLLMVBBR_B03_TAPEOUTKIT/synopsys/uk65lscllmvbbr_108c125_wc.db"
set link_library "$target_library *"
read_db $target_library
read_verilog AES_Composite_enc.v
current_design AES_Composite_enc
link

 #############################################################
 ##                 Set transition time/ annotate parasitics                                    ##
 #############################################################


 #############################################################
 ##                 Read swtiching activity file                                                      ##
 #############################################################

read_sdc syn_constraints.sdc 
read_vcd aes_unprotected.vcd -strip_path testbench/g1

 #############################################################
 ##                 Analyze power		                                                  ##
 #############################################################

set_power_analysis_options -waveform_format fsdb -waveform_output aes_unprotected_power.fsdb
update_power


