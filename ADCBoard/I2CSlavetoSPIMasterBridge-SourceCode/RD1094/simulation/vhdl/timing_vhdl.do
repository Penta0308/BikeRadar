-- Start Simulate the design 	
vsim +access +r i2c_spi_bridge_tb -L ovi_machxo -PL pmi_work -noglitch +no_tchk_msg -sdfmax bridge = "./Diamond_chk/Diamond_chk_Diamond_chk_vo.sdf" 
add wave */*
run 10 us 


	
