---------------------------------------------------------------------------
--  >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
---------------------------------------------------------------------------
--  Copyright (c) 2010 by Lattice Semiconductor Corporation      
-- 
---------------------------------------------------------------------------
-- Permission:
--
--   Lattice Semiconductor grants permission to use this code for use
--   in synthesis for any Lattice programmable logic product.  Other
--   use of this code, including the selling or duplication of any
--   portion is strictly prohibited.
--
-- Disclaimer:
--
--   This VHDL or Verilog source code is intended as a design reference
--   which illustrates how these types of functions can be implemented.
--   It is the user's responsibility to verify their design for
--   consistency and functionality through the use of formal
--   verification methods.  Lattice Semiconductor provides no warranty
--   regarding the use or functionality of this code.
---------------------------------------------------------------------------
--
--    Lattice Semiconductor Corporation
--    5555 NE Moore Court
--    Hillsboro, OR 97124
--    U.S.A
--
--    TEL: 1-800-Lattice (USA and Canada)
--    503-268-8001 (other locations)
--
--    web: http://www.latticesemi.com/
--    email: techsupport@latticesemi.com
-- 
---------------------------------------------------------------------------
--
--     
---------------------------------------------------------------------------
-- Code Revision History :
---------------------------------------------------------------------------
-- Ver: | Author	|Mod. Date	|Changes Made:
-- V1.0 | J.T     |5/2010   |Initial version
---------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity i2c_spi_bridge_tb is 
end i2c_spi_bridge_tb;

architecture rtl of i2c_spi_bridge_tb is
	
	signal clk,XRESET:std_logic; 
  --// i2c ports
  signal scl:std_logic;  
  signal sda:std_logic;        
  signal intn:std_logic; 
--//spi interface
  signal MOSI_MASTER:std_logic; 
  signal SS_N_MASTER:std_logic_vector(4 downto 0);
  signal SCLK_MASTER,MISO_SLAVE:std_logic; 
  
  component i2c_to_spi  --generic (CLOCK_SEL : integer;
	                      --         I2C_SLAVE_ADDR:std_logic_vector(6 downto 0));
   port (      
      clk                     : in std_logic;
      XRESET                  : in std_logic;   --  system reset
                 
      -- i2c ports
      scl_in                  : in std_logic;   --  scl clock line
      sda                     : inout std_logic;   --  i2c serial data line in
      intn                    : out std_logic;
      
      --//spi interface
      MISO_MASTER : in std_logic;
      MOSI_MASTER : out std_logic;
      SS_N_MASTER : out std_logic_vector(4 downto 0);
      SCLK_MASTER : out std_logic
      );   
end component;
	
	component i2c_mstr
   port (
      XRESET          : out std_logic;
      clk          : out std_logic;
      scl  : out std_logic;
      sda  : inout std_logic);
end component;

component spi_slave 	
  port (        
        DATA_IN   : in  std_logic_vector(7 downto 0);        
        DATA_OUT  : out  std_logic_vector(7 downto 0);	
        			
        CLK_I     : in std_logic;						
        RST_I     : in  std_logic;
        
        MISO_SLAVE  : out std_logic;
        MOSI_SLAVE  : in  std_logic;						
        CSn_SLAVE   : in std_logic;						
        SCLK_SLAVE   : in std_logic          			          					          				
        );
        
end component;

begin
	
bridge: i2c_to_spi 
      --generic map(CLOCK_SEL=>1,I2C_SLAVE_ADDR=>"H0H00H0")
port map(
--// generic ports
 clk=>clk,
 XRESET=>XRESET,              --// System Reset

--// i2c ports
 scl_in=>scl,          --// SCL clock line
 sda=>sda,
 intn=>intn,
--//spi interface
 MISO_MASTER=>MISO_SLAVE,
 MOSI_MASTER=>MOSI_MASTER,
 SS_N_MASTER=>SS_N_MASTER,
 SCLK_MASTER=>SCLK_MASTER
);

i2c_master: i2c_mstr port map(
                XRESET=>XRESET, 
                clk=>clk,
                scl=>scl, 
                sda=>sda
                );
                
spi_slave_uut: spi_slave port map
   (
   DATA_IN=>"10101011",    
   DATA_OUT=>open,    

   CLK_I=>clk,
   RST_I=>XRESET,
 
   --//spi interface   
   MISO_SLAVE=>MISO_SLAVE,
   MOSI_SLAVE=>MOSI_MASTER,
   CSn_SLAVE=>SS_N_MASTER(4),
   SCLK_SLAVE=>SCLK_MASTER
   );                

end rtl;