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

ENTITY i2c_mstr IS
   PORT (
      XRESET          : OUT std_logic;
      clk             : OUT std_logic;
      scl             : OUT std_logic;
      sda             : INOUT std_logic);
END i2c_mstr;

ARCHITECTURE beh OF i2c_mstr IS

   CONSTANT timescale  : time := 1 ns;

   SIGNAL scl_reg          :  std_logic:= '0';
   SIGNAL sda_reg          :  std_logic:= '1';
   
   CONSTANT  scl_cycle             :  time := 1000 ns;
   CONSTANT  delay                 :  time := 50 ns;
   CONSTANT  reset_delay           :  time := 100 ns;
   CONSTANT  cycle_end             :  time := 50 ns;
   CONSTANT  dev_addr              :  std_logic_vector(6 DOWNTO 0) := "1010010";
   CONSTANT  slave_addr            :  std_logic_vector(6 DOWNTO 0) := "1111111";    -- assume slave address is 0x7f
   CONSTANT  rd                    :  std_logic := '1';
   CONSTANT  wr                    :  std_logic := '0';
   signal rd_addr                  :  std_logic_vector(7 DOWNTO 0) := (dev_addr & rd);
   signal wr_addr                  :  std_logic_vector(7 DOWNTO 0) := (dev_addr & wr);
   
   constant  spi_cfg_0:  std_logic_vector(7 DOWNTO 0) :="01110000";--8'h70; --//direction=0,phase=0,polarity=0;
   constant  spi_cfg_1:  std_logic_vector(7 DOWNTO 0) :="01110010";--8'h72; --//direction=0,phase=1,polarity=0;
   constant  spi_cfg_2:  std_logic_vector(7 DOWNTO 0) :="01110001";--8'h71; --//direction=0,phase=0,polarity=1;
   constant  spi_cfg_3:  std_logic_vector(7 DOWNTO 0) :="01110011";--8'h73; --//direction=0,phase=1,polarity=1;
   
   signal clk_t :std_logic;
   signal XRESET_temp :std_logic;
-----------------------------------------------------------------------
function slv4_xcha (inp: STD_LOGIC_VECTOR(3 downto 0)) return CHARACTER is
variable result: character;
begin
  case inp is
    when "0000" => result := '0';
    when "000H"|"0001" => result := '1';
    when "00H0"|"0010" => result := '2';
    when "00HH"|"0011" => result := '3';
    when "0H00"|"0100" => result := '4';
    when "0H0H"|"0101" => result := '5';
    when "0HH0"|"0110" => result := '6';
    when "0HHH"|"0111" => result := '7';
    when "H000"|"1000" => result := '8';
    when "H00H"|"1001" => result := '9';
    when "H0H0"|"1010" => result := 'a';
    when "H0HH"|"1011" => result := 'b';
    when "HH00"|"1100" => result := 'c';
    when "HH0H"|"1101" => result := 'd';
    when "HHH0"|"1110" => result := 'e';
    when "HHHH"|"1111" => result := 'f';
    when others => result := 'x';
  end case;
return result;
end;
-- converts slv byte to two char hex-string
function slv8_xstr (inp: STD_LOGIC_VECTOR(7 downto 0)) return STRING is
variable result : string (1 to 2);

begin
  result := slv4_xcha(inp(7 downto 4)) & slv4_xcha(inp(3 downto 0));
  return result;
end;

function xcha_slv4 (inp: CHARACTER) return STD_LOGIC_VECTOR is
variable result: std_logic_vector(3 downto 0);

begin
case inp is
  when '0' => result := "0000";
  when '1' => result := "0001";
  when '2' => result := "0010";
  when '3' => result := "0011";
  when '4' => result := "0100";
  when '5' => result := "0101";
  when '6' => result := "0110";
  when '7' => result := "0111";
  when '8' => result := "1000";
  when '9' => result := "1001";
  when 'a'|'A' => result :=  "1010";
  when 'b'|'B' => result :=  "1011";
  when 'c'|'C' => result :=  "1100";
  when 'd'|'D' => result :=  "1101";
  when 'e'|'E' => result :=  "1110";
  when 'f'|'F' => result :=  "1111";
  when 'x'|'X' => result :=  "XXXX";
  when 'z'|'Z' => result :=  "ZZZZ";
  when '-'     => result :=  "----";
  when  others  => result := "XXXX";
end case;
return result;
end;
  
   -------------------------------------------------------------------------------Master 1
   -- start process
   PROCEDURE start_proc(
    constant scl_cycle : in time;
   signal scl_reg : in std_logic;
   signal sda_reg : out std_logic
   )IS
   BEGIN
      WAIT UNTIL (rising_edge(scl_reg));
      WAIT for (scl_cycle/4);
      sda_reg <= '0' AFTER 1 ns;
   END start_proc;
   ----------------------------------------------------------------------
   -- stop process
   PROCEDURE stop_proc(
    constant scl_cycle : in time;
   signal scl_reg : in std_logic;
   signal sda_reg : out std_logic
   )IS
   BEGIN
      WAIT UNTIL (falling_edge(scl_reg));
      WAIT UNTIL (falling_edge(scl_reg));
      WAIT for (scl_cycle/4);
      sda_reg <= '0' AFTER 1 ns;
      WAIT UNTIL (rising_edge(scl_reg));
      WAIT for (scl_cycle/4);
      sda_reg <= '1' AFTER 1 ns;
      WAIT for cycle_end;
   END stop_proc;

   ----------------------------------------------------------------------
   procedure read_i2c_nostop(
    constant scl_cycle : in time;
    signal scl_reg: in std_logic;
    signal sda_reg: out std_logic;
    signal address:in std_logic_vector(7 downto 0);
    constant cnt:in integer;
    signal sda : in std_logic) is
      variable rd_reg : std_logic_vector(7 downto 0);
      variable I,j,k:integer;
     begin
     for I in 0 to 7 loop
     j := 7 - I;
     wait until (falling_edge(scl_reg)); --  ack
       wait for (scl_cycle/4); -- middle of clock
      sda_reg <= address(j) after 1 ns;
      end loop;

     sda_reg <= '1' after 1 ns;
     wait until (falling_edge(scl_reg)); --  ack
     wait until (rising_edge(scl_reg)); --  ack

     for k in cnt downto 1 loop
         for I in 0 to 7 loop
           j := 7 - I;
         wait until (rising_edge(scl_reg)); --  ack
           rd_reg(j) := sda;
         end loop;
         wait for 2 ns;
         report "I2C Master Read Data = " & slv8_xstr(rd_reg);
         
         WAIT UNTIL (falling_edge(scl_reg));
         wait for (scl_cycle/4);
         sda_reg <= '0';
         WAIT UNTIL (rising_edge(scl_reg));
         WAIT UNTIL (falling_edge(scl_reg));
         wait for (scl_cycle/4);
         sda_reg <= '1';
       end loop;
         
   end read_i2c_nostop;

   procedure write_i2c_nostop(
     constant scl_cycle : in time;
     signal scl_reg: in std_logic;
     signal sda_reg: out std_logic;
     signal address : in std_logic_vector(7 downto 0);
     constant command : in std_logic_vector(7 downto 0);
     constant data: in std_logic_vector(7 downto 0);
     constant cnt : in integer) is
     variable i : integer;
     variable j : integer;  
     variable data_temp :std_logic_vector(7 downto 0);
     begin
     	 data_temp:=data;
       i := 7;
       while (i >= 0) loop
          wait until (falling_edge(scl_reg)); -- address
          wait for (scl_cycle/4); --  middle of clock
          sda_reg <= address(i) after 1 ns;
          i := i - 1;
       end loop;
       	
       wait until (falling_edge(scl_reg)); --  ack
       wait for (scl_cycle/8);-- added to avoid timing simulation glitch
       sda_reg <= '1' after 1 ns;    --  tri-state
       wait until (rising_edge(scl_reg)); --  ack
       
       j := 7;
       while (j >= 0) loop
          wait until (falling_edge(scl_reg));
          wait for (scl_cycle/8); -- data middle of clock
          sda_reg <= command(j) after 1 ns;
          j := j - 1;
       end loop;
       	
       if(cnt/=0) then
       	 wait until (falling_edge(scl_reg));
       	 wait for (scl_cycle/8);
       	 sda_reg <= '1' after 1 ns;
       	 wait until (rising_edge(scl_reg));
       end if;
       
       if(cnt/=0) then
       	 j := cnt;
         while (j > 0) loop
         	  i := 7;
            while (i >= 0) loop
               wait until (falling_edge(scl_reg)); -- address
               wait for (scl_cycle/4); --  middle of clock
               sda_reg <= data_temp(i) after 1 ns;
               i := i - 1;
            end loop;
            	
            if(command/="00000001") then
            	 	report "I2C Master Write Data =  " & slv8_xstr(data_temp);
            end if;
            
            if(j>1) then
            	wait until (falling_edge(scl_reg));
       	      wait for (scl_cycle/8);
       	      sda_reg <= '1' after 1 ns;
       	      wait until (rising_edge(scl_reg));
       	      data_temp:=data_temp-1;
            end if;
            j := j - 1;
       	 end loop; 
       end if;	 	
   end write_i2c_nostop;
   
BEGIN
   scl <= 'H' WHEN (scl_reg) = '1' ELSE '0';   
   sda <= 'H' WHEN (sda_reg) = '1' ELSE '0';
   XRESET<=XRESET_temp;   

   PROCESS
      VARIABLE start_ind : BOOLEAN := TRUE;

   BEGIN
      IF (start_ind) THEN
         report "Starting I2C to SPI Bridge Simulation";
         report "";
         report "Initializing Test Bench";
         report "";
         XRESET_temp    <='1';
         WAIT FOR reset_delay;         
         XRESET_temp    <= '0' AFTER 1 ns;
         -----------Master 1 reading after reset
         report "Configure spi_cfg register,select spi mode(0,0) and MSB first";
         report "";
         start_proc(scl_cycle,scl_reg,sda_reg);
         write_i2c_nostop(scl_cycle,scl_reg,sda_reg,wr_addr,"00000001",spi_cfg_0,1);   --  write address
         stop_proc(scl_cycle,scl_reg,sda_reg);
         wait for 100 ns;
                          
         report "I2C Master write data,number=10";
         report "";
         start_proc(scl_cycle,scl_reg,sda_reg);
         write_i2c_nostop(scl_cycle,scl_reg,sda_reg,wr_addr,"00000010","01010101",10);   --  write address
         stop_proc(scl_cycle,scl_reg,sda_reg);
         wait for 20000 ns;
         
         report "clear interrupt";
         report "";
         start_proc(scl_cycle,scl_reg,sda_reg);
         write_i2c_nostop(scl_cycle,scl_reg,sda_reg,wr_addr,"00000011","00000000",0);   --  write address
         stop_proc(scl_cycle,scl_reg,sda_reg);
         wait for 100 ns;
         
         report "I2C Master Read datat";
         report "";
         start_proc(scl_cycle,scl_reg,sda_reg);
         read_i2c_nostop(scl_cycle,scl_reg,sda_reg,rd_addr,10,sda);
         stop_proc(scl_cycle,scl_reg,sda_reg);
         wait for 100 ns;
         report "I2C to SPI Bridge Complete";                  
         start_ind := FALSE;
      ELSE
         WAIT;
      END IF;
   END PROCESS;

   -----------------------------------------------------------------------
   -- clock generation
	process
	 begin
	 	   wait for scl_cycle/2;
	 	 	 scl_reg <= not scl_reg;
	end process;
	
   	-- generate clock
	clk_gen:process
	 begin
	 	 clk_t <='0';
	 	 wait for 15 ns;
	 	 loop
	 	 	 clk_t <= not clk_t;
	 	 	 wait for 15 ns;
	 	 end loop;
	end process;

	clk <= clk_t;
END beh;