---------------------------------------------------------------------------------------------------
--  Copyright (c) Telops Inc. 2014
--
--  File: axis_lane_adj.vhd
--  Use: adjust the axis stream lane for BASE and full operations
--  By: Jean-Alexis Boulet
--
--  $Revision$
--  $Author$
--  $LastChangedDate$
--
---------------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.tel2000.all;
use work.CLINK_Define.all;

entity axis_lane_adj is
   port(
      CLK         : in  std_logic;
      ARESET      : in std_logic;
      FULL_BASEn  : in  std_logic;
      AXIS_RX_MOSI  : in  t_axi4_stream_mosi64;
      AXIS_RX_MISO  : out t_axi4_stream_miso;
      AXIS_TX_MOSI  : out t_axi4_stream_mosi64; 
      AXIS_TX_MISO  : in  t_axi4_stream_miso;
      LValSize       : in unsigned(LVALLEN-1 downto 0);
      FValSize       : in unsigned(FVALLEN-1 downto 0);
      SOF            : out std_logic;
      EOF            : out std_logic
      );
end axis_lane_adj;

architecture rtl of axis_lane_adj is
   
   -- declaring components explicitly eases synthesis file ordering mess!
   component SYNC_RESET is
      port(
         CLK    : in std_logic;
         ARESET : in std_logic;
         SRESET : out std_logic);
   end component;
   
   signal sreset     : std_logic;
   signal data_buf   : std_logic_vector(47 downto 0);    
   signal tlast_buf    : std_logic;
   signal tvalid_i     : std_logic;
   signal tready_i     : std_logic;
   signal Lval_cnt : unsigned(31 downto 0);
   signal FVal_cnt : unsigned(31 downto 0);
   
   signal lval_size_i : unsigned(15 downto 0);
   signal fval_size_i : unsigned(15 downto 0);
   
   
   type lane_state_t is (LANE0, LANE1, LANE2, LANE3);
   signal state : lane_state_t := LANE0;
 
-- TVALID : std_logic; --! Stream Data Valid
-- TDATA : std_logic_vector(63 downto 0); --! Stream Data 64 bit
-- TSTRB : std_logic_vector(7 downto 0); --! Stream Data Strobe (8bits)
-- TKEEP : std_logic_vector(7 downto 0); --! Stream Data Keep (8bits)
-- TLAST : std_logic; --! Stream Data Last


 
begin
   -- map outputs
   AXIS_RX_MISO.TREADY <= AXIS_TX_MISO.TREADY and tready_i;

   
   -- adjust the data lanes according to CLINK_MODE
   lane_adjust : process(CLK)
   begin
      if CLK'event and CLK = '1' then
         if sreset = '1' then
            data_buf <= (others => '0');
            tlast_buf <= '0';
            tready_i <= '0';
            tvalid_i <= '0';
            state <= LANE0;
            AXIS_TX_MOSI.TDATA <= (others => '0');
            AXIS_TX_MOSI.TSTRB <= (others => '0');
            AXIS_TX_MOSI.TKEEP <= (others => '0');
            AXIS_TX_MOSI.TLAST <= '0';
            AXIS_TX_MOSI.TVALID <= '0';
            AXIS_TX_MOSI.TID <= (others => '0');
            AXIS_TX_MOSI.TDEST <= (others => '0');
            AXIS_TX_MOSI.TUSER <= (others => '0');
            Lval_cnt <= to_unsigned(0,32);
            Fval_cnt <= to_unsigned(0,32);
                        
         else
            -- map outputs
            AXIS_TX_MOSI.TID <= AXIS_RX_MOSI.TID;
            AXIS_TX_MOSI.TDEST <= AXIS_RX_MOSI.TDEST;
            AXIS_TX_MOSI.TUSER <= AXIS_RX_MOSI.TUSER;
            lval_size_i <= LValSize;
            fval_size_i <= FValSize;
            

            
            if (AXIS_TX_MISO.TREADY = '1') then -- use TREADY as enable
               -- GEN SOF
               if (Lval_cnt = 0 and Fval_cnt = 0) then
                  SOF <= '1';
               else
                  SOF <= '0';
               end if;
               --GEN EOF
               if ( (Lval_cnt = (lval_size_i-1)) and (Fval_cnt = fval_size_i-1)) then
                  EOF <= '1';
               else
                  EOF <= '0';
               end if;
               
               case state is
                  
                  when LANE0 =>
                  -- register incoming data
                  --data_buf <= AXIS_RX_MOSI.TDATA(47 downto 0);
                     data_buf(47 downto 32) <= AXIS_RX_MOSI.TDATA(63 downto 48); --Pixel 3
                     data_buf(31 downto 16) <= AXIS_RX_MOSI.TDATA(47 downto 32); --Pixel 2
                     data_buf(15 downto 0) <= AXIS_RX_MOSI.TDATA(31 downto 16); --Pixel 1
                     tlast_buf <= AXIS_RX_MOSI.TLAST;
                     

                     
                     if FULL_BASEn = '1' then -- FULL MODE
                        -- in full mode we are always ready and we are a passthrougt
                        tready_i <= '1';
                        state <= LANE0;
                        AXIS_TX_MOSI.TSTRB <= AXIS_RX_MOSI.TSTRB; --tous les bytes sont valid
                        AXIS_TX_MOSI.TVALID <= AXIS_RX_MOSI.TVALID;                        
                        AXIS_TX_MOSI.TLAST  <= AXIS_RX_MOSI.TLAST;
                        AXIS_TX_MOSI.TKEEP  <= AXIS_RX_MOSI.TKEEP;
                        
                        --Adjust byte aligment Lane 0 Pixel 0 Lane 1 Pixel 1 Lane 2 Pixel 2 ...
                       AXIS_TX_MOSI.TDATA(15 downto 0) <= AXIS_RX_MOSI.TDATA(63 downto 48); --Pixel 3
                       AXIS_TX_MOSI.TDATA(31 downto 16) <= AXIS_RX_MOSI.TDATA(47 downto 32); --Pixel 2
                       AXIS_TX_MOSI.TDATA(47 downto 32) <= AXIS_RX_MOSI.TDATA(31 downto 16);  --Pixel 1
                       AXIS_TX_MOSI.TDATA(63 downto 48) <= AXIS_RX_MOSI.TDATA(15 downto 0); --Pixel 0
                        
                        --increment Frame position
                        if(AXIS_RX_MOSI.TVALID = '1') then
                           if (Lval_cnt = lval_size_i-1) then
                              Lval_cnt <= to_unsigned(0,32);   --reset cnt 
                              if (Fval_cnt = (fval_size_i-1)) then
                                 Fval_cnt <= to_unsigned(0,32);   --reset cnt  
                              else
                                 Fval_cnt <= Fval_cnt +1;
                              end if;
                              
                           else
                              Lval_cnt <= Lval_cnt +1 ;
                           end if;
                        end if;
                        

                        
                     else -- BASE MODE
                        -- IN BASE mode we have to toggle the data byte per byte
                        
                        --If the data receive is valid we move to the next line at the next cycle
                        --and we halt the transmit
                        if AXIS_RX_MOSI.TVALID = '1' then
                           state <= LANE1;
                           tready_i <= '0';
                           AXIS_TX_MOSI.TDATA(15 downto 0)  <= AXIS_RX_MOSI.TDATA(15 downto 0); --Pixel 0
                           AXIS_TX_MOSI.TVALID <= '1';
                           Lval_cnt <= Lval_cnt + 1;
                        else --we wait for valid data
                           state <= LANE0;
                           tready_i <= '1';
                           AXIS_TX_MOSI.TDATA(15 downto 0)  <= (others => '0');
                           AXIS_TX_MOSI.TVALID <= '0';
                        end if;
                        
                        AXIS_TX_MOSI.TDATA(63 downto 16) <= (others => '0'); -- clear all unused bytes
                        AXIS_TX_MOSI.TSTRB <= X"03"; --only one pixel valid
                        AXIS_TX_MOSI.TLAST <= '0';
                        AXIS_TX_MOSI.TKEEP  <= X"03"; 
                     end if;
                     
                  when LANE1 =>
                     state <= LANE2;
                     tready_i <= '0';
                     AXIS_TX_MOSI.TDATA(15 downto 0)  <= data_buf(15 downto 0); --Pixel 1
                     AXIS_TX_MOSI.TDATA(63 downto 16) <= (others => '0');
                     AXIS_TX_MOSI.TLAST <= '0';
                     AXIS_TX_MOSI.TSTRB <= X"03"; --only one pixel valid
                     AXIS_TX_MOSI.TKEEP  <= AXIS_RX_MOSI.TKEEP;
                     AXIS_TX_MOSI.TVALID <= '1';
                     AXIS_TX_MOSI.TKEEP  <= X"03";
                     Lval_cnt <= Lval_cnt + 1;                     

                  when LANE2 =>
                     state <= LANE3;
                     tready_i <= '0';
                     AXIS_TX_MOSI.TDATA(15 downto 0)  <= data_buf(31 downto 16); --pixel 2
                     AXIS_TX_MOSI.TDATA(63 downto 16) <= (others => '0');
                     AXIS_TX_MOSI.TLAST <= '0';
                     AXIS_TX_MOSI.TSTRB <= X"03"; --only one pixel valid
                     AXIS_TX_MOSI.TKEEP  <= AXIS_RX_MOSI.TKEEP;
                     AXIS_TX_MOSI.TVALID <= '1';
                     AXIS_TX_MOSI.TKEEP  <= X"03";
                     Lval_cnt <= Lval_cnt + 1;
                     
                     
                  when LANE3 =>
                      state <= LANE0;
                      tready_i <= '1';
                      AXIS_TX_MOSI.TDATA(15 downto 0) <= data_buf(47 downto 32); --pixel 3
                      --AXIS_TX_MOSI.TDATA(15 downto 0) <= (others => '0');
                      AXIS_TX_MOSI.TDATA(63 downto 16) <= (others => '0');
                      AXIS_TX_MOSI.TLAST <= tlast_buf;
                      AXIS_TX_MOSI.TSTRB <= X"03"; --only one pixel valid
                      AXIS_TX_MOSI.TKEEP  <= X"03"; 
                      AXIS_TX_MOSI.TVALID <= '1';
                      
                      if (Lval_cnt = lval_size_i-1) then
                         Lval_cnt <= to_unsigned(0,32);   --reset cnt 
                         if (Fval_cnt = (fval_size_i-1)) then
                            Fval_cnt <= to_unsigned(0,32);   --reset cnt  
                         else
                            Fval_cnt <= Fval_cnt +1;
                         end if;
                      else
                         Lval_cnt <= Lval_cnt +1 ;
                      end if;
                  
               end case;
            end if;
            
         end if;
      end if;
      
   end process lane_adjust;
   
   -- resync reset
   inst_sync_reset : sync_reset port map(ARESET => ARESET, SRESET => sreset, CLK => CLK);
   
end rtl;
