		I2C Slave with SPI Master Bridge Reference Design
===============================================================================
File List (25 files)
1.  \docs\rd1094.pdf		                   --> I2C slave to SPI master Bridge reference design document
    \docs\rd1094_readme.txt                        --> Read me file (this file)
2.  \project\i2c_spi_bridge.lpf                    --> preference file    
3.  \source\verilog\xo\i2c_to_spi.v                --> source file for verilog
    \source\verilog\xo\ipexpress\dpram.v           --> source file generated from IPexpress 
    \source\verilog\xo\ipexpress\dpram.lpc         --> source file generated from IPexpress              
    \source\vhdl\xo\i2c_to_spi.vhd                 --> source file for vhdl
    \source\vhdl\xo\ipexpress\dpram.vhd            --> source file generated from IPexpress                                                         
    \source\vhdl\xo\ipexpress\dpram.lpc            --> source file generated from IPexpress
    \source\verilog\ptm\i2c_to_spi.v               --> source file for verilog
    \source\verilog\ptm\ipexpress\dpram.v          --> source file generated from IPexpress 
    \source\verilog\ptm\ipexpress\dpram.lpc        --> source file generated from IPexpress              
    \source\vhdl\ptm\i2c_to_spi.vhd                --> source file for vhdl
    \source\vhdl\ptm\ipexpress\dpram.vhd           --> source file generated from IPexpress                                                         
    \source\vhdl\ptm\ipexpress\dpram.lpc           --> source file generated from IPexpress 
4.  \simulation\verilog\rtl_verilog.do             --> verilog rtl sim script
    \simulation\verilog\timing_verilog.do          --> verilog timing sim script
    \simulation\vhdl\rtl_vhdl.do                   --> vhdl rtl sim script
    \simulation\vhdl\timing_vhdl.do                --> vhdl timing sim script                                                                                                                                             
5.  \testbench\verilog\i2c_spi_bridge_tb.v         --> Testbench for simulation    
    \testbench\verilog\i2c_mstr.v                  --> source file 
    \testbench\verilog\spi_slave.v                 --> source file    
    \testbench\vhdl\i2c_spi_bridge_tb.vhd          --> Testbench for simulation                                                                                              
    \testbench\vhdl\i2c_mstr.vhd                   --> source file 
    \testbench\vhdl\spi_slave.vhd                  --> source file 
                                                


=================================================================================
!!IMPORTANT NOTES:!!
1. Unzip the RD1094_revyy.y.zip file using the existing folder names, where yy.y
is the current version of the zip file
2. If there is lpf file or lci file available for the reference design:
2.1 copy the content of the provided lpf file to the <project_name>.lpf
file under your ispLEVER project,
2.2 use Constraint Files >> Add >> Exiting File to import the lpf to
Diamond project and set it to be active,

=================================================================================
Using ispLEVER or ispLEVER Classic software
---------------------------------------------------------------------------------
HOW TO CREATE A ISPLEVER OR ISPLEVER CLASSIC PROJECT:
1. Bring up ISPLEVER OR ISPLEVER CLASSIC software, in the GUI, select File >> New
Project
2. In the New Project popup, select the Project location, provide a Project name,
select Design Entry Type and click Next.
3. Use RD1094.pdf to see which device \speedgrade should be selected to achieve
the desired timing result
4. Add the necessary source files from the RD1094\source\<implementation> directory, click Next
5. Click Finish. Now the project is successfully created.
6. Make sure the provided lpf or lct is used in the current directory.
---------------------------------------------------------------------------------
HOW TO RUN SIMULATION FROM ISPLEVER OR ISPLEVER CLASSIC PROJECT:
1. Import the top-level testbench into the project as test fixture and associate
with the device
1.1 Import the rest as Testbench Dependency File by highligh and right
click on the test bench file
2. In the Project Navigator, highlight the testbench file on the left-side panel,
user will see 3 simulation options on the right panel.
3. For functional simulation, double click on Verilog (or VHDL) Functional
Simulation with Aldec Active-HDL. Aldec simulator will be brought up, click yes to
overwrite the existing file. The simulator will initialize and run for 1us.
4. Type "run 1500us" for vhdl or "run -all" for verilog in the Console panel. A
script similar to this will be in the Console panel:
      0: Starting I2C to SPI Bridge Simulation                                            
#                                                                                    
#                    0: Initializing Test Bench                                      
#                                                                                    
#                  150: Configure spi_cfg register,select spi mode(0,0) and MSB first
#                                                                                    
#                28900: I2C Master write data,number=10                              
#                                                                                    
#                55250: I2C Master Write Data = 55                                   
#                64250: I2C Master Write Data = 54                                   
#                73250: I2C Master Write Data = 53                                   
#                82250: I2C Master Write Data = 52                                   
#                91250: I2C Master Write Data = 51                                   
#               100250: I2C Master Write Data = 50                                   
#               109250: I2C Master Write Data = 4f                                   
#               118250: I2C Master Write Data = 4e                                   
#               127250: I2C Master Write Data = 4d                                   
#               136250: I2C Master Write Data = 4c                                   
#               140026: SPI Slave Read Data = 55                                     
#               140115: SPI Slave Write Data = ab                                    
#               141406: SPI Slave Read Data = 54                                     
#               141495: SPI Slave Write Data = aa                                    
#               142786: SPI Slave Read Data = 53                                     
#               142875: SPI Slave Write Data = a9                                    
#               144166: SPI Slave Read Data = 52                                     
#               144255: SPI Slave Write Data = a8                                    
#               145546: SPI Slave Read Data = 51                                     
#               145635: SPI Slave Write Data = a7                                    
#               146926: SPI Slave Read Data = 50                                     
#               147015: SPI Slave Write Data = a6                                    
#               148306: SPI Slave Read Data = 4f                                     
#               148395: SPI Slave Write Data = a5                                    
#               149686: SPI Slave Read Data = 4e                                     
#               149775: SPI Slave Write Data = a4                                    
#               151066: SPI Slave Read Data = 4d                                     
#               151155: SPI Slave Write Data = a3                                    
#               152446: SPI Slave Read Data = 4c                                     
#               152535: SPI Slave Write Data = a2                                    
#               158800: clear interrupt                                              
#                                                                                    
#               178900: I2C Master Read data                                         
#                                                                                    
#               196502:I2C Master Read Data = ab                                     
#               205502:I2C Master Read Data = aa                                     
#               214502:I2C Master Read Data = a9                                     
#               223502:I2C Master Read Data = a8                                     
#               232502:I2C Master Read Data = a7                                     
#               241502:I2C Master Read Data = a6                                     
#               250502:I2C Master Read Data = a5                                     
#               259502:I2C Master Read Data = a4                                     
#               268502:I2C Master Read Data = a3                                     
#               277502:I2C Master Read Data = a2                                     
#               281900: I2C to SPI Bridge Complete                              
5. For timing simulation, double click on Verilog (or VHDL) Post-Route Timing
Simulation with Aldec Active-HDL. Similar message will be shown in the console
panel of the Aldec Active-HDL simulator.
5.1 Run 1500us to see the complete simulation
5.2 In timing simulation you may see some warnings about narrow widths or vital
glitches. These warnings can be ignored.

=================================================================================
Using Diamond Software
---------------------------------------------------------------------------------
HOW TO CREATE A PROJECT IN DIAMOND:
1. Launch Diamond software, in the GUI, select File >> New Project, click Next
2. In the New Project popup, select the Project location and provide a Project
name and implementation name, click Next.
3. Add the necessary source files from the RD1094\source\<implementation> directory, click Next
4. Select the desired part and speedgrade. You may use RD1094.pdf to see which
device and speedgrade can be selected to achieve the published timing result
5. Click Finish. Now the project is successfully created.
6. MAKE SURE the provided lpf and\or sty files are used in the current directory.
--------------------------------------------------------------------------------
HOW TO RUN SIMULATION UNDER DIAMOND:
1. Bring up the Simulation Wizard under the Tools menu
2. Next provide a name for simulation project, and select RTL or post-route
simulation
2.1 For post-route simulation, must export verilog or vhdl simulation file
after Place and Route
3. Next add the test bench files form the RD1094\TestBench directory
3.1 For VHDL, make sure the top-level test bench is last to be added
4. Next click Finish, this will bring up the Aldec simulator automatically
5. In Aldec environment, you can manually activate the simulation or you can use a
script
5.1 Use the provided script in the RD1094\Simulation\<language> directory
a. For FUNCTIONAL simulation, change the library name to the device family
i) MachXO: ovi_machxo for verilog, machxo for vhdl
11)Platform Manager: ovi_lptm for verilog, lptm for vhdl
b. For POST-ROUTE simulation, open the script and change the following:
i) The sdf file name and the path pointing to your sdf file.
The path usually looks like
".\<implementation_name>\<sdf_file_name>.sdf"
ii) Change the library name using the library name described above
c. Click Tools > Execute Macro and select the xxx.do file to run the
simulation
d. This will run the simulation until finish
5.2 Manually activate the simulation
a. Click Simulation > Initialize Simulation
b. Click File > New > Waveform, this will bring up the Waveform panel
c. Click on the top-level testbench, drag all the signals into the
Waveform panel
d. At the Console panel, type "run 1500us" for VHDL simulation, or
"run -all" for Verilog simulation
e. For timing simulation, you must manually add
-sdfmax bridge=".\mach_xo\mach_xo_mach_xo_vo.sdf"
into the asim or vsim command. Use the command in timing_xxx.do as an
example
6. The simulation result will be similar to the one described in ispLEVER
simulation section.