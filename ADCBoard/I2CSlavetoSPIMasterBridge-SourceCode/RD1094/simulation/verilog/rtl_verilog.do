-- Start Simulate the design 	
vsim +access +r i2c_spi_bridge_tb -L ovi_machxo -PL pmi_work
add wave */*
run -all

	
