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

entity i2c_to_spi is
	 generic (CLOCK_SEL : integer:=1;
	          I2C_SLAVE_ADDR:std_logic_vector(6 downto 0) :="H0H00H0");
   port (
      --synthesis ugroup="slave"-- generic ports
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
end i2c_to_spi;

architecture rtl of i2c_to_spi is
	
	-- component dpram is
    -- port (
        -- DataInA: in  std_logic_vector(7 downto 0); 
        -- DataInB: in  std_logic_vector(7 downto 0); 
        -- AddressA: in  std_logic_vector(6 downto 0); 
        -- AddressB: in  std_logic_vector(6 downto 0); 
        -- ClockA: in  std_logic; 
        -- ClockB: in  std_logic; 
        -- ClockEnA: in  std_logic; 
        -- ClockEnB: in  std_logic; 
        -- WrA: in  std_logic; 
        -- WrB: in  std_logic; 
        -- ResetA: in  std_logic; 
        -- ResetB: in  std_logic; 
        -- QA: out  std_logic_vector(7 downto 0); 
        -- QB: out  std_logic_vector(7 downto 0));
-- end component;
component DPRAM
    port (WrAddress: in  std_logic_vector(6 downto 0); 
        Data: in  std_logic_vector(7 downto 0); WrClock: in  std_logic; 
        WE: in  std_logic; WrClockEn: in  std_logic; 
        RdAddress: in  std_logic_vector(6 downto 0); 
        RdClock: in  std_logic; RdClockEn: in  std_logic; 
        Reset: in  std_logic; Q: out  std_logic_vector(7 downto 0));
end component;


   --****************************************
-- ****************************************
--  define states of the state machine
-- ****************************************
   --constant  I2C_SLAVE_ADDR        :  std_logic_vector(6 downto 0) :=   "H0H00H0";
   constant  idle                  :  std_logic_vector(4 downto 0) :=   "00000";
   constant  addr7                 :  std_logic_vector(4 downto 0) :=   "00001";
   constant  addr6                 :  std_logic_vector(4 downto 0) :=   "00010";
   constant  addr5                 :  std_logic_vector(4 downto 0) :=   "00011";
   constant  addr4                 :  std_logic_vector(4 downto 0) :=   "00100";
   constant  addr3                 :  std_logic_vector(4 downto 0) :=   "00101";
   constant  addr2                 :  std_logic_vector(4 downto 0) :=   "00110";
   constant  addr1                 :  std_logic_vector(4 downto 0) :=   "00111";
   constant  det_rw                :  std_logic_vector(4 downto 0) :=   "01000";
   constant  ack                   :  std_logic_vector(4 downto 0) :=   "01001";
   constant  data7                 :  std_logic_vector(4 downto 0) :=   "01010";
   constant  data6                 :  std_logic_vector(4 downto 0) :=   "01011";
   constant  data5                 :  std_logic_vector(4 downto 0) :=   "01100";
   constant  data4                 :  std_logic_vector(4 downto 0) :=   "01101";
   constant  data3                 :  std_logic_vector(4 downto 0) :=   "01110";
   constant  data2                 :  std_logic_vector(4 downto 0) :=   "01111";
   constant  data1                 :  std_logic_vector(4 downto 0) :=   "10000";
   constant  data0                 :  std_logic_vector(4 downto 0) :=   "10001";
   
   --// spi constant          
   constant  INTERVAL_LENGTH :  std_logic_vector(5 downto 0) :=   "000010";
   constant  DELAY_TIME      :  std_logic_vector(5 downto 0) :=   "000010";    
   constant  ACTUAL_MAX      :  std_logic_vector(5 downto 0) :=   "000111";

   constant  ST_IDLE       :  std_logic_vector(2 downto 0) :=   "000";
   constant  ST_CNT        :  std_logic_vector(2 downto 0) :=   "001";
   constant  ST_LOAD       :  std_logic_vector(2 downto 0) :=   "010";
   constant  ST_WAIT       :  std_logic_vector(2 downto 0) :=   "011";
   constant  ST_TRANS      :  std_logic_vector(2 downto 0) :=   "100";
   constant  ST_TURNAROUND :  std_logic_vector(2 downto 0) :=   "101";
   constant  ST_INTERVAL   :  std_logic_vector(2 downto 0) :=   "110";   
   
   signal sda_oe                   :  std_logic;
   signal start                    :  std_logic;   --  start and stop detection of i2c cycles
   signal r_w                 :  std_logic;
   signal stop                :  std_logic;
   signal sm_state                 :  std_logic_vector(4 downto 0);   --  state machine
   signal shift                    :  std_logic_vector(7 downto 0);   --  shift register attached to i2c controller
   signal ack_out                  :  std_logic;   --  acknowledge output from slave to master
   signal sda_en                   :  std_logic;   --  oe control of sda signal, could use open drain feature
   signal vld_plse                 :  std_logic;   --  data valid pulse
   signal start_rst                :  std_logic;
   
   signal sda_in_delay1            :  std_logic;
   signal sda_in_delay2            :  std_logic;
   signal sda_in_delay3            :  std_logic;
   signal scl_delay1               :  std_logic;
   signal scl_delay2               :  std_logic;
   signal scl_delay3               :  std_logic;
   
   signal negedge_scl              :  std_logic;
   signal negedge_sda              :  std_logic;
   signal posedge_scl              :  std_logic;
   signal posedge_sda              :  std_logic;
   signal start_async_rst          :  std_logic;   --  oring the reset signal external and internal
   signal stop_async_rst           :  std_logic;   --  same for stop reset
   
   signal intn_temp                :  std_logic; 
   
   --//spi register
   signal command :  std_logic_vector(7 downto 0);
   signal cmd_flg :  std_logic;
   signal spi_cfg :  std_logic_vector(7 downto 0);
   signal i2c_in_cnt :  std_logic_vector(7 downto 0);  
   signal i2c_out_cnt :  std_logic_vector(7 downto 0);  
   signal fst_addr :  std_logic;

   signal SHIFT_DIRECTION :  std_logic;
   signal CLOCK_PHASE     :  std_logic;
   signal CLOCK_POLARITY  :  std_logic;
   
   signal spi_start :  std_logic;
   signal spi_stop :  std_logic;
   signal i2c_data_cnt :  std_logic_vector(7 downto 0);
      
   signal rx_shift_data :  std_logic_vector(7 downto 0);
   signal tx_shift_data :  std_logic_vector(7 downto 0); 
   signal clock_cnt :  std_logic_vector(7 downto 0);
   signal data_cnt :  std_logic_vector(5 downto 0);
   signal c_status :  std_logic_vector(2 downto 0);
   signal n_status :  std_logic_vector(2 downto 0); 
   signal wait_one_tick_done :  std_logic;   
   
   signal clken_a_temp :  std_logic; 
   
   signal data_in_a    : std_logic_vector(7 downto 0);
   signal data_out_a   : std_logic_vector(7 downto 0);
   signal we_a         : std_logic;             
   signal clken_a      : std_logic;
   signal address_a    : std_logic_vector(6 downto 0);
 
   signal data_in_b    :std_logic_vector(7 downto 0);         --//from dpram port b 
   signal data_out_b   :std_logic_vector(7 downto 0);        -- //to  dpram port b
   signal we_b         :std_logic;
   signal clken_b      :std_logic;
   signal address_b    :std_logic_vector(6 downto 0);
   signal address_rd    : std_logic_vector(6 downto 0);
   signal address_wr    : std_logic_vector(6 downto 0);   
   signal SCLK_MASTER_temp: std_logic;
   signal data_in    :std_logic_vector(7 downto 0);
   signal data_in_a_reg    :std_logic_vector(7 downto 0);
   signal data_in_b_reg    :std_logic_vector(7 downto 0);
   signal data_out    :std_logic_vector(7 downto 0);     
   signal we_a_del: std_logic;
   signal we_b_del: std_logic; 
   signal we: std_logic;   
begin
	
-- buff:	dpram port map(
    -- DataInA=>data_out_a,
    -- DataInB=>data_out_b,
    -- AddressA=>address_a,
    -- AddressB=>address_b,
    -- ClockA=>clk,
    -- ClockB=>clk,
    -- ClockEnA=>clken_a,
    -- ClockEnB=>clken_b,
    -- WrA=>we_a,
    -- WrB=>we_b,
    -- ResetA=>XRESET,
    -- ResetB=>XRESET,
    -- QA=>data_in_a,
    -- QB=>data_in_b
-- ); 


 address_rd <=  address_a when ((clken_a and r_w) ='1' ) else address_b;
 address_wr <=  address_b when ((clken_b and we_b)= '1') else address_a;

 we <= ((clken_a and we_a) or (clken_b and we_b));
 data_out <=  data_out_b when ((clken_b and we_b)='1') else data_out_a;

 data_in_a <= data_in when (we_a_del = '0') else data_in_a_reg ;
 data_in_b <=  data_in when (we_b_del = '0') else data_in_b_reg ;
	
   process (clk, XRESET)
   begin
      if (XRESET = '1') then
       we_a_del <= '0';
       we_b_del <= '0';
 data_in_a_reg  <= "00000000";
 data_in_b_reg  <= "00000000";
      elsif (rising_edge(clk)) then
      we_a_del <= clken_a and  we_a ;
      we_b_del <= clken_b and  we_b ;
data_in_a_reg  <= data_in_a;
data_in_b_reg  <= data_in_b;
      end if;
   end process;
   
   
buff: DPRAM  port map (
				WrAddress(6 downto 0)=>address_wr,
				Data(7 downto 0)=>data_out,
				WrClock=>clk, 
				WE=>we,
				WrClockEn=>'1',
				RdAddress(6 downto 0)=>address_rd,
				RdClock=>clk, 
				RdClockEn=>'1', 
				Reset=>XRESET, 
				Q(7 downto 0)=>data_in);	
				
				
	 clken_a_temp<=posedge_scl and ack_out and vld_plse and (not cmd_flg);
	 sda<='0' when sda_oe='1' else 'Z'; 
	   	 
	 SHIFT_DIRECTION<=spi_cfg(2);
   CLOCK_PHASE    <=spi_cfg(1);
   CLOCK_POLARITY <=spi_cfg(0);

   SCLK_MASTER<=SCLK_MASTER_temp;
   intn<=intn_temp;
   --//interface with spram
   we_a<= not r_w;
   
   process (spi_stop, clken_a_temp, r_w) begin
   	  if(r_w='H') then
   	  	if(spi_stop='1') then
   	  		clken_a <='1';
   	    else
   	      clken_a <='0';
   	    end if;
   	  else
   	    if(command="00000010") then
   	    	 clken_a <=clken_a_temp;
   	    else
   	       clken_a <='0';
   	    end if;
   	  end if;
   	end process;
      
   data_out_a<=shift;
   address_a<=i2c_out_cnt(6 downto 0) when r_w='H' else i2c_in_cnt(6 downto 0);

   data_out_b<=rx_shift_data;	 
   process (clk, XRESET)
   begin
      if (XRESET = '1') then
         sda_in_delay1 <= '0';
         sda_in_delay2 <= '0';
         sda_in_delay3 <= '0';
      elsif (rising_edge(clk)) then
         sda_in_delay1 <= sda;
         sda_in_delay2 <= sda_in_delay1;
         sda_in_delay3 <= sda_in_delay2;
      end if;
   end process;
   posedge_sda <= not sda_in_delay3 and sda_in_delay2 ;
   negedge_sda <= sda_in_delay3 and not sda_in_delay2 ;

   process (clk, XRESET)
   begin
      if (XRESET = '1') then
         scl_delay1 <= '0';
         scl_delay2 <= '0';
         scl_delay3 <= '0';
      elsif (rising_edge(clk)) then
         scl_delay1 <= scl_in;
         scl_delay2 <= scl_delay1;
         scl_delay3 <= scl_delay2;
      end if;
   end process;
   posedge_scl <= not scl_delay3 and scl_delay2 ;
   negedge_scl <= scl_delay3 and not scl_delay2 ;
   --*******************************************
   -- Generate reset signals for start and stop
   --*******************************************
   start_rst <= '1' when (sm_state = addr7) else '0';
   start_async_rst <= start_rst or XRESET ;
   stop_async_rst <= start or XRESET ;

   -- ****************************************
   --  detect i2c cycle start
   -- ****************************************
   process (clk, start_async_rst)
   begin
      if (start_async_rst = '1') then
         start <= '0' after 1 ns;
      elsif (rising_edge(clk)) then
         if (negedge_sda = '1') then
            start <= scl_in after 1 ns;
         end if;
      end if;
   end process;

   -- ****************************************
   --  detect i2c cycle stop
   -- ****************************************
   process (clk, stop_async_rst)
   begin
      if (stop_async_rst = '1') then
         stop <= '0' after 1 ns;
      elsif (rising_edge(clk)) then
         if (posedge_sda = '1') then
            stop <= scl_in after 1 ns;
         end if;
      end if;
   end process;
   -- ****************************************
   -- fsm check the addr byte and track rw opp
   -- ****************************************
   process (clk, XRESET)
   begin
      if (XRESET = '1') then
         sm_state <= idle;    --  reset fsm to idle
         r_w <= 'H';    --  initial value for read
         vld_plse <= '0';
         i2c_in_cnt<="00000000";  
         i2c_out_cnt<="00000000";
         cmd_flg<='0';
         fst_addr<='0';
      elsif (rising_edge(clk)) then
         if (posedge_scl = '1') then
            case sm_state is
               when idle =>
                        r_w <= 'H';    --  initial value for read
                        vld_plse <= '0';
                        i2c_in_cnt<="00000000";  
                        i2c_out_cnt<="00000000";
                        cmd_flg<='0';
                        fst_addr<='0';
                        if (start = 'H' and spi_stop='1') then    -- start the i2c addr cycle
                           sm_state <= addr7;
                        else if (stop = 'H') then  -- stop and go to idle
                              sm_state <= idle;
                           else
                              sm_state <= idle;
                           end if;
                        end if;
               when addr7 =>
                        if (shift(0) = I2C_SLAVE_ADDR(6)) then  -- checking the slave addr
                           sm_state <= addr6;
                        else
                           sm_state <= idle;
                        end if;
               when addr6 =>
                        if (shift(0) = I2C_SLAVE_ADDR(5)) then
                           sm_state <= addr5;
                        else
                           sm_state <= idle;
                        end if;
               when addr5 =>
                        if (shift(0) = I2C_SLAVE_ADDR(4)) then
                           sm_state <= addr4;
                        else
                           sm_state <= idle;
                        end if;
               when addr4 =>
                        if (shift(0) = I2C_SLAVE_ADDR(3)) then
                           sm_state <= addr3;
                        else
                           sm_state <= idle;
                        end if;
               when addr3 =>
                        if (shift(0) = I2C_SLAVE_ADDR(2)) then
                           sm_state <= addr2;
                        else
                           sm_state <= idle;
                        end if;
               when addr2 =>
                        if (shift(0) = I2C_SLAVE_ADDR(1)) then
                           sm_state <= addr1;
                        else
                           sm_state <= idle;
                        end if;
               when addr1 =>
                        if (shift(0) = I2C_SLAVE_ADDR(0)) then
                           sm_state <= det_rw;
                           r_w <= sda;    --  store the read / write direction bit
                           fst_addr<='1';
                        else
                           sm_state <= idle;
                        end if;
               when det_rw =>
                        sm_state <= ack;
                        
               when ack =>                        
                        sm_state <= data7;                       
                        if (r_w = 'H') then
                           i2c_out_cnt<=i2c_out_cnt+1;
                        end if;
               when data7 =>
                        if (stop = 'H') then
                           sm_state <= idle;    --  detect stop signal from master
                        else                           
                            sm_state <= data6;                           
                        end if;
               when data6 =>
                        sm_state <= data5;
               when data5 =>
                        sm_state <= data4;
               when data4 =>
                        sm_state <= data3;
               when data3 =>
                        sm_state <= data2;
               when data2 =>
                        sm_state <= data1;
               when data1 =>
                        sm_state <= data0;
                        vld_plse <= '1';
                        if(fst_addr='1') then
                           cmd_flg<='1';
                        else
                           cmd_flg<='0';
                        end if;
               when data0 =>
                        fst_addr<='0';
                        cmd_flg<='0';
                        vld_plse <= '0';    --  detect repeated read, write or read/write
                        if(cmd_flg='0') then
                           i2c_in_cnt<=i2c_in_cnt+1;
                        end if;
                        if (sda = '0' and r_w = '0') then  -- 0 means acknowledged
                           sm_state <= ack;
                        else
                           if (sda = '0' and r_w = 'H') then  -- 0 means acknowledged
                              sm_state <= ack;
  
                           else
                              sm_state <= idle;
                           end if;
                        end if;
               when others  =>
                        sm_state <= idle;    --  default state
                        r_w <= 'H';    --  initial value for read
                        vld_plse <= '0';
                        i2c_in_cnt<="00000000";  
                        i2c_out_cnt<="00000000";
                        cmd_flg<='0';
                        fst_addr<='0';
            end case;
         end if;
      end if;
   end process;
   
   --//-----------------------------------------------------register command
process (clk, XRESET)
   begin
      if (XRESET = '1') then
        command <=  "00000000";
      elsif (rising_edge(clk)) then
        if (posedge_scl = '1') then
           if (r_w='0' and ack_out='1' and vld_plse='1' and cmd_flg='1') then
              command <=  shift;
           end if;
        end if;
      end if;
end process;


--//-----------------------------------------------------register spi_cfg
process (clk, XRESET)
   begin
      if (XRESET = '1') then
        spi_cfg <=  "11111000";
      elsif (rising_edge(clk)) then
        if (posedge_scl = '1') then
           if (r_w='0' and ack_out='1' and vld_plse='1' and command="00000001" and cmd_flg='0') then
              spi_cfg <=  shift;
           end if;
        end if;
      end if;
end process;

--//-----------------------------------------------------register spi_start 
process (clk, XRESET)
   begin
      if (XRESET = '1') then
       spi_start<='0';
      elsif (rising_edge(clk)) then
       if (sm_state=data7 and stop='H' and command="00000010" and r_w='0') then
         spi_start<= '1';
       elsif (c_status = ST_CNT and i2c_data_cnt="00000000") then
         spi_start<='0';   
       end if;
      end if;
  end process;
       
--//-----------------------------------------------------register spi_stop
process (clk, XRESET)
   begin
      if (XRESET = '1') then
       spi_stop               <='1';
      elsif (rising_edge(clk)) then
       if (c_status = ST_CNT and i2c_data_cnt="00000000") then
         spi_stop               <= '1';
       elsif (sm_state=data7 and stop='H' and command="00000010" and r_w='0') then
         spi_stop               <='0';
       end if;
      end if;
  end process;    

   -- *******************************************
   --  read cycle (slave trasmit, master receive)
   --  write cycle (slave receive, master transmit)
   --  slave generate ackout during write cycle
   -- *******************************************

   process (clk, XRESET)
   begin
      -- data should be ready on sda line when scl is high
      if (XRESET = '1') then
         ack_out <= '0';
      elsif (rising_edge(clk)) then
         if (negedge_scl = '1') then
            if (sm_state = det_rw) then
               ack_out <= '1';
            elsif (sm_state = data0) then
                  if (r_w = '0') then
                     ack_out <= '1';
                  else
                     ack_out <= '0';
                  end if;
            else
                  ack_out <= '0';
            end if;
         end if;
      end if;
   end process;
   -- *******************************************
   --  enable starting from ack state
   -- *******************************************
   process (clk, XRESET)
   begin
      if (XRESET = '1') then
         sda_en <= '0';
      elsif (rising_edge(clk)) then
         if (negedge_scl = '1') then
            if (r_w = 'H' and sm_state = ack) then
               sda_en <= not data_in_a(7);
            else
               if (r_w = 'H' and (sm_state > ack) and (sm_state < data0)) then
                  sda_en <= not shift(6);
               else
                  sda_en <= '0';
               end if;
            end if;
         end if;
      end if;
   end process;
   --*******************************************
   -- *******************************************
   --  sda oe cntr gen '1' will pull the line low
   -- *******************************************
   sda_oe <= '1' when ((ack_out = '1') or (sda_en = '1')) else '0';
   -- sda_oe cntrl sda_out at top level   
   --******************************
   -- ******************************
   --  shift operation for read data
   -- ******************************

   process (clk, XRESET)
   begin
      if (XRESET = '1') then -- reset added to make it work
         shift <= "00000000";
      elsif (rising_edge(clk)) then
         if (negedge_scl = '1') then
            if ((sm_state = idle) and (start = 'H')) then
               shift(0) <= sda;
            elsif ((sm_state >= addr7) and (sm_state<=addr1)) then
                  shift(0) <= sda;
            elsif (r_w = 'H' and (sm_state = ack))  then  
               shift <= data_in_a;    
            elsif ((sm_state > ack) and (sm_state <= data0)) then  -- start shift the data out to sda line
                     -- 2nd version
               shift(7 downto 1) <= shift(6 downto 0) after 1 ns;
               shift(0) <= sda;
            end if;
         end if;
      end if;
   end process;

   --//--------------------------------spi----------------------------------------              
   -- //-----------------------------------------------------register address_b 
   process (clk, XRESET)
   begin
      if (XRESET = '1') then
       address_b<="0000000"; 
      elsif (rising_edge(clk)) then   
       if (c_status=ST_INTERVAL and n_status=ST_CNT) then
         address_b<= address_b+1;
       elsif (c_status = ST_IDLE) then
         address_b<="0000000";
       end if;
      end if;   
     end process;
 
   --//-----------------------------------------------------register clken_b 
   process (clk, XRESET)
   begin
      if (XRESET = '1') then
       clken_b<='0';  
      elsif (rising_edge(clk)) then  
       if (c_status=ST_LOAD and n_status=ST_WAIT) then
         clken_b<='1';
       elsif (c_status=ST_TURNAROUND and n_status=ST_INTERVAL) then
         clken_b<='1';   
       else
         clken_b<='0';
       end if;
      end if;
   end process;
   
   --//-----------------------------------------------------register we_b 
   process (clk, XRESET)
   begin
      if (XRESET = '1') then
       we_b<='0'; 
      elsif (rising_edge(clk)) then    
        if (c_status=ST_IDLE or c_status=ST_CNT) then
          we_b<='0';
        elsif (c_status = ST_WAIT) then
          we_b<='1';   
        end if;
      end if;      
     end process;
   
   --//-----------------------------------------------------register i2c_data_cnt 
   process (clk, XRESET)
   begin
      if (XRESET = '1') then
       i2c_data_cnt<="00000000";
      elsif (rising_edge(clk)) then
       if (sm_state=data7 and stop='H' and command="00000010" and r_w='0') then
         i2c_data_cnt<= i2c_in_cnt-1;
       elsif (c_status = ST_CNT) then
         i2c_data_cnt<=i2c_data_cnt-1;   
       end if;
      end if;
     end process;
     
 process (clk, XRESET)
   begin
      if (XRESET = '1') then
        SS_N_MASTER <= "11111";   
      elsif (rising_edge(clk)) then  
       if ((c_status = ST_TRANS) or (c_status = ST_WAIT) or (c_status = ST_TURNAROUND)) then
        SS_N_MASTER <= spi_cfg(7 downto 3);
       else 
         SS_N_MASTER <= "11111";   
       end if;
     end if;
   end process;
     
   --// Generate SCLK 
   process (clk, XRESET)
   begin
      if (XRESET = '1') then
        SCLK_MASTER_temp    <=  CLOCK_POLARITY;
      elsif (rising_edge(clk)) then
       if (command="00000001") then
         SCLK_MASTER_temp    <=  CLOCK_POLARITY;
       elsif ((c_status = ST_TRANS)  and (conv_integer(clock_cnt) = CLOCK_SEL)) then
        SCLK_MASTER_temp    <= not SCLK_MASTER_temp;
       end if;
      end if;
   end process;
     
   process (clk, XRESET)
   begin
      if (XRESET = '1') then
        rx_shift_data       <="00000000";
      elsif (rising_edge(clk)) then
       if (((CLOCK_POLARITY='0') and (conv_integer(clock_cnt) = CLOCK_SEL) and (CLOCK_PHASE = SCLK_MASTER_temp) and (c_status = ST_TRANS)) or ((CLOCK_POLARITY='1') and (conv_integer(clock_cnt) = CLOCK_SEL) and (CLOCK_PHASE /= SCLK_MASTER_temp) and (c_status = ST_TRANS))) then
        if (SHIFT_DIRECTION='1') then
           rx_shift_data    <= MISO_MASTER & rx_shift_data(7 downto 1);
        else
           rx_shift_data    <= rx_shift_data(6 downto 0) & MISO_MASTER;
        end if;
       end if;
      end if;
     end process;
  
   process (clk, XRESET)
   begin
      if (XRESET = '1' or (c_status = ST_IDLE)) then
         clock_cnt <= "00000000";
      elsif (rising_edge(clk)) then
       if (conv_integer(clock_cnt) = CLOCK_SEL) then
         clock_cnt <= "00000000";
       else
         clock_cnt <= clock_cnt + 1;
       end if;
     end if;
   end process;     
         
   process (clk, XRESET)
   begin
      if (XRESET = '1') then
         c_status <= ST_IDLE;
      elsif (rising_edge(clk)) then
         c_status <= n_status;
      end if;
   end process;
        

   process (clk)
   begin
   	   if (falling_edge(clk)) then
       case c_status is
       when ST_IDLE =>   if (spi_start='1') then
                           n_status <= ST_CNT;
                         else 
                           n_status <= ST_IDLE;
                         end if;
       when ST_CNT =>   
                    if(i2c_data_cnt="00000000") then
                      n_status <= ST_IDLE;
                    else
                      n_status <= ST_LOAD;
                    end if;
                                 
       when ST_LOAD =>
                     if (DELAY_TIME = "000000") then
                         n_status <= ST_TRANS;
                     else
                         n_status <= ST_WAIT;
                     end if;
       when ST_WAIT =>
                     if ((conv_integer(clock_cnt) = CLOCK_SEL) and (data_cnt = DELAY_TIME - 1)) then
                         n_status <= ST_TRANS;
                     else 
                         n_status <= ST_WAIT;
                     end if;
       when ST_TRANS =>
                     if ((conv_integer(clock_cnt) = CLOCK_SEL) and (data_cnt = ACTUAL_MAX) and (SCLK_MASTER_temp /= CLOCK_POLARITY)) then
                         n_status <= ST_TURNAROUND;
                     else
                         n_status <= ST_TRANS;
                     end if;
       when ST_TURNAROUND =>
                        if (conv_integer(clock_cnt) = CLOCK_SEL) then
                          if (INTERVAL_LENGTH/="000000") then
                             n_status <= ST_INTERVAL;
                          else 
                             n_status <= ST_CNT;
                          end if;
                        end if;
       when ST_INTERVAL =>
                       if ((conv_integer(clock_cnt) = CLOCK_SEL) and (data_cnt = INTERVAL_LENGTH)) then
                          n_status <= ST_CNT;
                       else
                          n_status <= ST_INTERVAL;
                       end if;
       when others =>     n_status <= ST_IDLE;
       end case;
     end if;
   end process;

   process (clk, XRESET)
   begin
      if (XRESET = '1') then
         data_cnt <= "000000";
      elsif (rising_edge(clk)) then
         if ((c_status = ST_WAIT) and (conv_integer(clock_cnt) = CLOCK_SEL) and (data_cnt = DELAY_TIME - 1)) then
            data_cnt <= "000000";
         elsif ((c_status = ST_TRANS) and (conv_integer(clock_cnt)= CLOCK_SEL) and (data_cnt = ACTUAL_MAX) and (CLOCK_POLARITY /= SCLK_MASTER_temp)) then
            data_cnt <= "000000";
         elsif ((c_status = ST_INTERVAL) and (conv_integer(clock_cnt) = CLOCK_SEL) and (data_cnt = INTERVAL_LENGTH)) then
            data_cnt <= "000000";
         elsif (((c_status = ST_WAIT) and (conv_integer(clock_cnt) = CLOCK_SEL)) or 
                ((CLOCK_POLARITY='0') and (c_status = ST_TRANS)  and (conv_integer(clock_cnt) = CLOCK_SEL) and (SCLK_MASTER_temp='1')) or 
                ((CLOCK_POLARITY='1') and (c_status = ST_TRANS)  and (conv_integer(clock_cnt) = CLOCK_SEL) and (SCLK_MASTER_temp='0')) or
                ((c_status = ST_INTERVAL) and (conv_integer(clock_cnt) = CLOCK_SEL))) then
          data_cnt <= data_cnt + 1;
         end if;
      end if;
    end process;

   
  process (clk, XRESET)
   begin
      if (XRESET = '1') then
          wait_one_tick_done <= '0';
      elsif (rising_edge(clk)) then    
         if (CLOCK_PHASE = '0') then
             wait_one_tick_done <= '1';
         elsif ((c_status = ST_TRANS) and (conv_integer(clock_cnt) = CLOCK_SEL) and (data_cnt = "000000")) then
             wait_one_tick_done <= '1';
         elsif (data_cnt = "000000") then
             wait_one_tick_done <= '0';
         end if;
      end if;
  end process;
 
  process (clk, XRESET)
   begin
      if (XRESET = '1') then
         MOSI_MASTER <= '0';
         tx_shift_data <= "00000000";
      elsif (rising_edge(clk)) then
         if (((c_status = ST_LOAD) and (n_status = ST_TRANS)) or
                  ((c_status = ST_WAIT) and (n_status = ST_TRANS))) then
                if(SHIFT_DIRECTION='1') then
                	MOSI_MASTER   <= data_in_b(0);
                  tx_shift_data <= '0' & data_in_b(7 downto 1);
                else  
                  MOSI_MASTER   <= data_in_b(7);
                  tx_shift_data <=data_in_b(6 downto 0) & '0';                
                end if;
         elsif (((CLOCK_POLARITY='0') and (c_status = ST_TRANS) and (conv_integer(clock_cnt) = CLOCK_SEL) and (CLOCK_PHASE /=SCLK_MASTER_temp)) or ((CLOCK_POLARITY='1') and (c_status = ST_TRANS) and (conv_integer(clock_cnt) = CLOCK_SEL) and (CLOCK_PHASE = SCLK_MASTER_temp))) then
               if (wait_one_tick_done='1') then
               	 if(SHIFT_DIRECTION='1') then
                	  MOSI_MASTER   <= tx_shift_data(0);
                    tx_shift_data <= '0' & tx_shift_data(7 downto 1);
                 else  
                    MOSI_MASTER   <= tx_shift_data(7);
                    tx_shift_data <=tx_shift_data(6 downto 0) & '0';                
                 end if;                 
               end if;
          end if;
       end if;
    end process;
      
--//-------------------------------------------intn-------------------------
--//-----------------------------------------------------register intn 
process (clk, XRESET)
   begin
      if (XRESET = '1') then
       intn_temp<='1';
      elsif (rising_edge(clk)) then
        if (c_status = ST_CNT and i2c_data_cnt="00000000") then
          intn_temp<='0';   
        elsif (command="00000011") then
          intn_temp<= '1';
        end if;
      end if;
     end process;

end rtl;
