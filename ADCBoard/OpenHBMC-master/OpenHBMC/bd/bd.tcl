
proc init { cellpath otherInfo } {                                                                   
                                                                                                             
	set cell_handle [get_bd_cells $cellpath]                                                                 
	set all_busif [get_bd_intf_pins $cellpath/*]		                                                     
	set axi_standard_param_list [list ID_WIDTH DATA_WIDTH AWUSER_WIDTH ARUSER_WIDTH WUSER_WIDTH RUSER_WIDTH BUSER_WIDTH]
	set full_sbusif_list [list  S_AXI ]
			                                                                                                 
	foreach busif $all_busif {                                                                               
		if { [string equal -nocase [get_property MODE $busif] "slave"] == 1 } {                            
			set busif_param_list [list]                                                                      
			set busif_name [get_property NAME $busif]					                                     
			if { [lsearch -exact -nocase $full_sbusif_list $busif_name ] == -1 } {					         
			    continue                                                                                     
			}                                                                                                
			foreach tparam $axi_standard_param_list {                                                        
				lappend busif_param_list "C_${busif_name}_${tparam}"                                       
			}                                                                                                
			bd::mark_propagate_overrideable $cell_handle $busif_param_list			                                 
		}		                                                                                             
	}                                                                                                        
}


proc pre_propagate {cellpath otherInfo } {                                                           
                                                                                                             
	set cell_handle [get_bd_cells $cellpath]                                                                 
	set all_busif [get_bd_intf_pins $cellpath/*]		                                                     
	set axi_standard_param_list [list ID_WIDTH DATA_WIDTH AWUSER_WIDTH ARUSER_WIDTH WUSER_WIDTH RUSER_WIDTH BUSER_WIDTH]
	                                                                                                         
	foreach busif $all_busif {	                                                                             
		if { [string equal -nocase [get_property CONFIG.PROTOCOL $busif] "AXI4"] != 1 } {                  
			continue                                                                                         
		}                                                                                                    
		if { [string equal -nocase [get_property MODE $busif] "master"] != 1 } {                           
			continue                                                                                         
		}			                                                                                         
		                                                                                                     
		set busif_name [get_property NAME $busif]			                                                 
		foreach tparam $axi_standard_param_list {		                                                     
			set busif_param_name "C_${busif_name}_${tparam}"			                                     
			                                                                                                 
			set val_on_cell_intf_pin [get_property CONFIG.${tparam} $busif]                                  
			set val_on_cell [get_property CONFIG.${busif_param_name} $cell_handle]                           
			                                                                                                 
			if { [string equal -nocase $val_on_cell_intf_pin $val_on_cell] != 1 } {                          
				if { $val_on_cell != "" } {                                                                  
					set_property CONFIG.${tparam} $val_on_cell $busif                                        
				}                                                                                            
			}			                                                                                     
		}		                                                                                             
	}                                                                                                        
}


proc propagate {cellpath otherInfo } {                                                               
                                                                                                             
	set cell_handle [get_bd_cells $cellpath]                                                                 
	set all_busif [get_bd_intf_pins $cellpath/*]		                                                     
	set axi_standard_param_list [list ID_WIDTH DATA_WIDTH AWUSER_WIDTH ARUSER_WIDTH WUSER_WIDTH RUSER_WIDTH BUSER_WIDTH]
	                                                                                                         
	foreach busif $all_busif {                                                                               
		if { [string equal -nocase [get_property CONFIG.PROTOCOL $busif] "AXI4"] != 1 } {                  
			continue                                                                                         
		}                                                                                                    
		if { [string equal -nocase [get_property MODE $busif] "slave"] != 1 } {                            
			continue                                                                                         
		}			                                                                                         
	                                                                                                         
		set busif_name [get_property NAME $busif]		                                                     
        
        set intf_s [get_bd_intf_pins $cellpath/${busif_name}]
        set source_intf [find_bd_objs -relation CONNECTED_TO -thru_hier [get_bd_intf_pins $cellpath/${busif_name}]]
        
        foreach tparam $axi_standard_param_list {
            set busif_param_name "C_${busif_name}_${tparam}"
			set val_on_cell_src_intf [get_property CONFIG.${tparam} $source_intf]
            
            if { $val_on_cell_src_intf != "" } {
            	set_property CONFIG.${busif_param_name} $val_on_cell_src_intf $cell_handle
            }
		}
        
        # Getting memory range from address editor to configure AXI address size
        set slave_seg [get_bd_addr_segs $cellpath/${busif_name}/Mem]
        set master_seg [get_bd_addr_segs -quiet -of_object $slave_seg]
        set range_list [get_property range  $master_seg]
        
        # When many masters are accessing the IP, there will be a list of range
        # values in $range_list variable. That's why we need to select the max
        # value to configure AXI address width.
        set max_range [::tcl::mathfunc::max {*}$range_list]
        puts "${cellpath} list of all memory ranges in Address Editor: ${range_list}"
        puts "${cellpath} max memory range in Address Editor: ${max_range}"
        
        set axi_addr_width [expr {int(log($max_range)/log(2))}]
        puts "Configuring ${cellpath} AXI address size: ${axi_addr_width}"
        set_property CONFIG.C_${busif_name}_ADDR_WIDTH $axi_addr_width $cell_handle
	}
}
