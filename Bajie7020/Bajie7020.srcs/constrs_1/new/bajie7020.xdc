#set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
#set_property CFGBVS VCCO [current_design]
#set_property CONFIG_VOLTAGE 3.3 [current_design]


set_property PACKAGE_PIN G20 [get_ports CAN0_tx]
set_property PACKAGE_PIN G19 [get_ports CAN0_rx]
set_property IOSTANDARD LVCMOS33 [get_ports CAN0_tx]
set_property IOSTANDARD LVCMOS33 [get_ports CAN0_rx]

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
set_property PACKAGE_PIN N18 [get_ports {RFB_FCLK_clk_p[0]}]
set_property PACKAGE_PIN P19 [get_ports {RFB_FCLK_clk_n[0]}]
set_property PACKAGE_PIN R16 [get_ports {RFB_DCLK_clk_p[0]}]
set_property PACKAGE_PIN R17 [get_ports {RFB_DCLK_clk_n[0]}]
set_property PACKAGE_PIN T16 [get_ports {RFB_DATA_P[0]}]
set_property PACKAGE_PIN U17 [get_ports {RFB_DATA_N[0]}]
set_property PACKAGE_PIN T17 [get_ports {RFB_DATA_P[1]}]
set_property PACKAGE_PIN R18 [get_ports {RFB_DATA_N[1]}]
set_property PACKAGE_PIN V20 [get_ports {RFB_DATA_P[2]}]
set_property PACKAGE_PIN W20 [get_ports {RFB_DATA_N[2]}]
set_property PACKAGE_PIN T20 [get_ports {RFB_DATA_P[3]}]
set_property PACKAGE_PIN U20 [get_ports {RFB_DATA_N[3]}]

set_property DIFF_TERM TRUE [get_ports {RFB_FCLK_clk_p[0]}]
set_property DIFF_TERM TRUE [get_ports {RFB_FCLK_clk_n[0]}]
set_property DIFF_TERM TRUE [get_ports {RFB_DCLK_clk_p[0]}]
set_property DIFF_TERM TRUE [get_ports {RFB_DCLK_clk_n[0]}]
set_property DIFF_TERM TRUE [get_ports {RFB_DATA_P[0]}]
set_property DIFF_TERM TRUE [get_ports {RFB_DATA_N[0]}]
set_property DIFF_TERM TRUE [get_ports {RFB_DATA_P[1]}]
set_property DIFF_TERM TRUE [get_ports {RFB_DATA_N[1]}]
set_property DIFF_TERM TRUE [get_ports {RFB_DATA_P[2]}]
set_property DIFF_TERM TRUE [get_ports {RFB_DATA_N[2]}]
set_property DIFF_TERM TRUE [get_ports {RFB_DATA_P[3]}]
set_property DIFF_TERM TRUE [get_ports {RFB_DATA_N[3]}]

set_property IOSTANDARD LVCMOS25 [get_ports RFB_DATAVALID]
set_property PACKAGE_PIN R19 [get_ports RFB_DATAVALID]
set_property DRIVE 4 [get_ports CAN0_tx]

create_clock -period 3.472 -name RFB_DCLK -waveform {0.000 1.736} [get_ports {RFB_DCLK_clk_p[0]}]
create_clock -period 20.833 -name RFB_FCLK -waveform {0.000 10.417} [get_ports {RFB_FCLK_clk_p[0]}]



set_input_delay -clock [get_clocks RFB_DCLK] 0.000 [get_ports -filter { NAME =~  "RFB_DATA_P*" || NAME =~  "RFB_DATAVALID*" }]

