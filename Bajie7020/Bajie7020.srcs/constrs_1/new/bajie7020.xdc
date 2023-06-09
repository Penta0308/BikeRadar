#set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
#set_property CFGBVS VCCO [current_design]
#set_property CONFIG_VOLTAGE 3.3 [current_design]


set_property PACKAGE_PIN G20 [get_ports CAN0_tx]
set_property PACKAGE_PIN G19 [get_ports CAN0_rx]
set_property IOSTANDARD LVCMOS33 [get_ports CAN0_tx]
set_property IOSTANDARD LVCMOS33 [get_ports CAN0_rx]
set_property DRIVE 4 [get_ports CAN0_tx]

#set_property PACKAGE_PIN Y19 [get_ports {hdmi_hpd_tri_i[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_hpd_tri_i[0]}]
#set_property PACKAGE_PIN R18 [get_ports hdmi_ddc_scl_io]
#set_property IOSTANDARD LVCMOS33 [get_ports hdmi_ddc_scl_io]
#set_property PACKAGE_PIN R16 [get_ports hdmi_ddc_sda_io]
#set_property IOSTANDARD LVCMOS33 [get_ports hdmi_ddc_sda_io]

set_property IOSTANDARD LVDS_25 [get_ports {RFB_FCLK_clk_p[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {RFB_FCLK_clk_n[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {RFB_DCLK_clk_p[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {RFB_DCLK_clk_n[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports RFB_DATAVALID]
set_property PACKAGE_PIN N18 [get_ports {RFB_FCLK_clk_p[0]}]
set_property PACKAGE_PIN P19 [get_ports {RFB_FCLK_clk_n[0]}]
set_property PACKAGE_PIN R16 [get_ports {RFB_DCLK_clk_p[0]}]
set_property PACKAGE_PIN R17 [get_ports {RFB_DCLK_clk_n[0]}]
set_property PACKAGE_PIN T20 [get_ports {RFB_DATA_data_p[3]}]
set_property PACKAGE_PIN V20 [get_ports {RFB_DATA_data_p[2]}]
set_property PACKAGE_PIN T17 [get_ports {RFB_DATA_data_p[1]}]
set_property PACKAGE_PIN T16 [get_ports {RFB_DATA_data_p[0]}]
set_property PACKAGE_PIN R19 [get_ports RFB_DATAVALID]
create_interface RFB
set_property INTERFACE RFB [get_ports { RFB_DCLK_clk_p[0] RFB_DCLK_clk_n[0] RFB_DATA_data_p[3] RFB_DATA_data_p[2] RFB_DATA_data_p[1] RFB_DATA_data_p[0] RFB_DATA_data_n[3] RFB_DATA_data_n[2] RFB_DATA_data_n[1] RFB_DATA_data_n[0] RFB_FCLK_clk_p[0] RFB_FCLK_clk_n[0] RFB_DATAVALID }]


set_property DIFF_TERM TRUE [get_ports {RFB_FCLK_clk_p[0]}]
set_property DIFF_TERM TRUE [get_ports {RFB_DCLK_clk_p[0]}]
set_property DIFF_TERM TRUE [get_ports {RFB_DATA_data_p[0]}]
set_property DIFF_TERM TRUE [get_ports {RFB_DATA_data_p[1]}]
set_property DIFF_TERM TRUE [get_ports {RFB_DATA_data_p[2]}]
set_property DIFF_TERM TRUE [get_ports {RFB_DATA_data_p[3]}]


create_clock -period 6.944 -name RFB_DCLK -waveform {0.000 3.472} [get_ports {RFB_DCLK_clk_p[0]}]
create_clock -period 20.833 -name RFB_FCLK -waveform {0.000 10.417} [get_ports {RFB_FCLK_clk_p[0]}]




set_input_delay -clock [get_clocks RFB_DCLK] -clock_fall -fall -min -add_delay 1.180 [get_ports {RFB_DATA_data_p[*]}]
set_input_delay -clock [get_clocks RFB_DCLK] -clock_fall -fall -max -add_delay 2.362 [get_ports {RFB_DATA_data_p[*]}]
set_input_delay -clock [get_clocks RFB_DCLK] -rise -min 1.180 [get_ports {RFB_DATA_data_p[*]}]
set_input_delay -clock [get_clocks RFB_DCLK] -rise -max 2.362 [get_ports {RFB_DATA_data_p[*]}]

set_input_delay -clock [get_clocks RFB_FCLK] -min 0.000 [get_ports RFB_DATAVALID]
set_input_delay -clock [get_clocks RFB_FCLK] -max 4.000 [get_ports RFB_DATAVALID]


set_input_delay -clock [get_clocks RFB_DCLK] -clock_fall -fall -min -add_delay 1.180 [get_ports {RFB_DATA_data_n[*]}]
set_input_delay -clock [get_clocks RFB_DCLK] -clock_fall -fall -max -add_delay 2.362 [get_ports {RFB_DATA_data_n[*]}]
set_input_delay -clock [get_clocks RFB_DCLK] -rise -min 1.180 [get_ports {RFB_DATA_data_n[*]}]
set_input_delay -clock [get_clocks RFB_DCLK] -rise -max 2.362 [get_ports {RFB_DATA_data_n[*]}]
