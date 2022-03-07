---------------------------------------------------------------------------------------------------
--  Copyright (c) Telops Inc. 2014
--
--  File: fb_sdi_fsm.vhd
--  Use: MAnage cmd for the Datamover to read and write sequence to the DDR with the requiered Behavior
--  By: Jean-Alexis Boulet
--
--  $Revision: 14070 $
--  $Author: jboulet $
--  $LastChangedDate: 2014-10-01 11:18:03 -0400 (mer., 01 oct. 2014) $
--
---------------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.tel2000.all;
use work.FB_Define.all;

entity FB_SDI_FSM is
   port(
      --clk and reset
      CLK_DATA         : in std_logic;
      ARESETN          : in std_logic;
      
      --DM interface
      AXIS_MM2S_CMD_MOSI : out t_axi4_stream_mosi_cmd32;
      AXIS_MM2S_CMD_MISO : in t_axi4_stream_miso;
      
      AXIS_MM2S_STS_MOSI : in t_axi4_stream_mosi_status;
      AXIS_MM2S_STS_MISO : out t_axi4_stream_miso;
      
      AXIS_S2MM_CMD_MOSI : out t_axi4_stream_mosi_cmd32;
      AXIS_S2MM_CMD_MISO : in t_axi4_stream_miso;
      
      AXIS_S2MM_STS_MOSI : in t_axi4_stream_mosi_status;
      AXIS_S2MM_STS_MISO : out t_axi4_stream_miso;
      
      --CTRL INTF
      FB_CONF        : in FB_Config;
      FB_READ_PAUSE  : in std_logic;
      Y_FLIP         : in STD_LOGIC;
      
      SOF            : in STD_LOGIC;
      
      S2MM_ERR : out std_logic_vector(3 downto 0);
      MM2S_ERR : out std_logic_vector(3 downto 0)
      
   );
end FB_SDI_FSM;

architecture rtl of FB_SDI_FSM is
   attribute KEEP : string;
   
   component SYNC_RESET is
      port(
         --clk and reset
         CLK    : in std_logic;
         ARESET : in std_logic;
         SRESET : out std_logic
         );
   end component;
   
   component double_sync is
      port(
         D : in STD_LOGIC;
         Q : out STD_LOGIC;
         RESET : in STD_LOGIC;
         CLK : in STD_LOGIC
         );
   end component double_sync;
   
   --RESET
   signal sreset  : std_logic;
   signal areset  : std_logic;
   
   --input synch
   signal config_valid_s   : std_logic;
   signal fb_read_pause_s 	: std_logic;
   signal y_flip_s     		: std_logic;
   
   signal config : FB_Config;
   
   signal startAddress     : unsigned(31 downto 0);
   signal lineAddress      : unsigned(31 downto 0);
   signal pixelAddress     : unsigned(31 downto 0);
   
   signal acq_start : std_logic := '0';
   signal sof_i : std_logic := '0';
   attribute KEEP of sof_i: signal is "true";
   
   --CMD constant
   constant c_xCACHE : std_logic_vector(3 downto 0) := "0011"; -- Recommended dflt value
   constant c_xUSER : std_logic_vector(3 downto 0) := "0000"; -- Not used
   constant c_RSVD : std_logic_vector(3 downto 0) := "0000"; -- Not used
   constant c_DRR : std_logic := '0'; -- Not used
   constant c_DSA : std_logic_vector(5 downto 0) := "000000"; -- Not used
   constant c_TYPE : std_logic := '1'; -- FIXED=0 , INCR=1 
   
   --CMD Signal
   signal s_mm2s_cmd_tag : std_logic_vector(3 downto 0) := (others => '0');
   signal s_s2mm_cmd_tag : std_logic_vector(3 downto 0) := (others => '0');
   signal s_mm2s_saddr : std_logic_vector(31 downto 0) := (others => '0');
   signal s_s2mm_saddr : std_logic_vector(31 downto 0) := (others => '0');
   signal s_mm2s_eof : std_logic := '0';
   signal s_s2mm_eof : std_logic := '0';
   signal s_mm2s_btt : std_logic_vector(22 downto 0) := (others => '0');
   signal s_s2mm_btt : std_logic_vector(22 downto 0) := (others => '0');
   
   --OUTPUT Signal
   signal mm2s_err_o : std_logic_vector(3 downto 0); -- (SLVERR & DECERR & INTERR & TAGERR)
   signal s2mm_err_o : std_logic_vector(3 downto 0); -- (SLVERR & DECERR & INTERR & TAGERR)
   
   
   --Type definition
   type fb_write_state_t is (STANDBY_WR, WAIT_WR_IMG_CMD_ACK);
   type fb_read_state_t is (READ_PAUSE, READ_STANDBY, READ_CALCULATE_ADDRESS, READ_FRAME, VALIDATE_READ_FRAME, ERROR_READ);
   
   signal write_state : fb_write_state_t := STANDBY_WR;
   signal read_state : fb_read_state_t := READ_STANDBY;
   
   attribute KEEP of read_state: signal is "true";
   attribute KEEP of write_state: signal is "true";
   
   
   signal next_img_write_loc : unsigned(1 downto 0) := (others => '0'); -- Location of the next image to write (ex: loc =0 , loc = 1 etc...)
   signal next_img_read_loc : unsigned(1 downto 0) := (others => '0'); -- Location of the next image to read (ex: loc =0 , loc = 1 etc...)
   attribute KEEP of next_img_write_loc: signal is "true";
   attribute KEEP of next_img_read_loc: signal is "true";
   
   signal write_img_loc : unsigned(1 downto 0) := (others => '0'); -- Location of the img write 0-> is not writing 1-> is the first Loc etc...(ex: loc =1, loc = 2 etc...)
   signal read_img_loc : unsigned(1 downto 0) := (others => '0'); -- Location of the img read 0-> is not reading 1-> is the first Loc etc... (ex: loc =1 , loc = 2 etc...) 
   attribute KEEP of write_img_loc: signal is "true";
   attribute KEEP of read_img_loc: signal is "true";
   
   signal valide_img_line : unsigned(15 downto 0) := (others => '0'); -- Active video line (read IMG) 
   attribute KEEP of valide_img_line: signal is "true";
   
   signal s2mm_cmd_mosi : t_axi4_stream_mosi_cmd32 := axi4_stream_mosi_cmd32_dflt;
   signal mm2s_cmd_mosi : t_axi4_stream_mosi_cmd32 := axi4_stream_mosi_cmd32_dflt;
   signal s2mm_cmd_miso : t_axi4_stream_miso;
   signal mm2s_cmd_miso : t_axi4_stream_miso;
   
   signal s2mm_sts_mosi : t_axi4_stream_mosi_status;
   signal mm2s_sts_mosi : t_axi4_stream_mosi_status;
   signal s2mm_sts_miso : t_axi4_stream_miso;
   signal mm2s_sts_miso : t_axi4_stream_miso;
   
begin
   
   -- resync reset
   areset <= not ARESETN;
   inst_sync_reset : sync_reset port map(ARESET => areset, SRESET => sreset, CLK => CLK_DATA);	 
   
   -- input sync
   fb_configvalid_sync : double_sync  port map(D => FB_CONF.config_valid, Q=> config_valid_s, RESET => sreset, CLK => CLK_DATA);
   fb_read_pause_sync : double_sync  port map(D => FB_READ_PAUSE, Q=> fb_read_pause_s, RESET => sreset, CLK => CLK_DATA);
   fb_y_flip_sync : double_sync  port map(D => Y_FLIP, Q=> y_flip_s, RESET => sreset, CLK => CLK_DATA);
   
   -- MAP OUTPUTS
   --Cmd structure generation  
   mm2s_cmd_mosi.TDATA <= (c_RSVD & s_mm2s_cmd_tag & s_mm2s_saddr & c_DRR & s_mm2s_eof & c_DSA & c_TYPE & s_mm2s_btt);	 
   s2mm_cmd_mosi.TDATA <= (c_RSVD & s_s2mm_cmd_tag & s_s2mm_saddr & c_DRR & s_s2mm_eof & c_DSA & c_TYPE & s_s2mm_btt);
   
   AXIS_MM2S_CMD_MOSI <= mm2s_cmd_mosi;
   AXIS_MM2S_STS_MISO <= mm2s_sts_miso;
   AXIS_S2MM_CMD_MOSI <= s2mm_cmd_mosi;
   AXIS_S2MM_STS_MISO <= s2mm_sts_miso;
   
   --map input
   mm2s_cmd_miso <= AXIS_MM2S_CMD_MISO;
   mm2s_sts_mosi <= AXIS_MM2S_STS_MOSI;
   s2mm_cmd_miso <= AXIS_S2MM_CMD_MISO;
   s2mm_sts_mosi <= AXIS_S2MM_STS_MOSI;
   
   
   S2MM_ERR <= s2mm_err_o;
   MM2S_ERR <= mm2s_err_o;
   
   
   cfg_syn : process(CLK_DATA)      
   begin  
      if rising_edge(CLK_DATA) then
         if sreset = '1' or config_valid_s = '0' then
            config.config_valid <= '0';
         else
            config <= FB_CONF;
         end if;
      end if;
   end process;
   
   img_write : process(CLK_DATA)
   begin
      if rising_edge(CLK_DATA) then            
         if sreset = '1' or config.config_valid = '0' then
            write_state <= STANDBY_WR;
            s2mm_cmd_mosi.tvalid <= '0';
            write_img_loc <= (others => '0');  -- /= read_img_loc to not lose the first frame
            sof_i <= '0';
         else
            if (SOF = '1') then
               sof_i <= '1';
            end if;
            
            case write_state is
               when STANDBY_WR =>
                  if(config.fb_mode = FBMODE_SDI_STD_c) then --Mode SDI standard
                     if (sof_i = '1') then
                        sof_i <= '0';
                        --change state
                        write_state <= WAIT_WR_IMG_CMD_ACK;
                        
                        --fill the tag with the img position
                        s_s2mm_cmd_tag <= resize(std_logic_vector(next_img_write_loc), s_s2mm_cmd_tag'length); 
                        s_s2mm_saddr <= resize(std_logic_vector(config.base_addr + ((next_img_write_loc-1) * shift_left(config.img_size,1))), s_s2mm_saddr'length);
                        s_s2mm_eof <= '1';
                        s_s2mm_btt <= resize(std_logic_vector(shift_left(config.img_size,1)), s_s2mm_btt'length); -- Transfert of the img data in 1 cmd (2 bytes/pix)
                        s2mm_cmd_mosi.tvalid <= '1';
                        write_img_loc <= next_img_write_loc;
                     else
                        write_state <= STANDBY_WR;
                        --signal/output to assigned during the process
                        s_s2mm_cmd_tag <= s_s2mm_cmd_tag;
                        s_s2mm_saddr <= s_s2mm_saddr;
                        s_s2mm_eof <= s_s2mm_eof; 
                        s_s2mm_btt <= s_s2mm_btt;
                        s2mm_cmd_mosi.tvalid <= '0';
                        write_img_loc <= write_img_loc;
                     end if;
                     
                  else
                     write_state <= STANDBY_WR;
                     --signal/output to assigned during the process
                     s_s2mm_cmd_tag <= s_s2mm_cmd_tag; 
                     s_s2mm_saddr <= s_s2mm_saddr;
                     s_s2mm_eof <= s_s2mm_eof;
                     s_s2mm_btt <= s_s2mm_btt;
                     s2mm_cmd_mosi.tvalid <= '0';
                     write_img_loc <= write_img_loc;
                  end if;
               
               when WAIT_WR_IMG_CMD_ACK =>
                  if( s2mm_cmd_miso.tready = '1') then --wait for the last cmd to be process
                     --We move to standby
                     write_state <= STANDBY_WR;
                     --fill the tag with the img position
                     s_s2mm_cmd_tag <= s_s2mm_cmd_tag; 
                     s_s2mm_saddr <= s_s2mm_saddr;
                     s_s2mm_eof <= s_s2mm_eof;
                     s_s2mm_btt <= s_s2mm_btt;
                     s2mm_cmd_mosi.tvalid <= '0';
                     write_img_loc <= write_img_loc;
                  else
                     --Stay there
                     write_state <= write_state;
                     --fill the tag with the img position
                     s_s2mm_cmd_tag <= s_s2mm_cmd_tag; 
                     s_s2mm_saddr <= s_s2mm_saddr;
                     s_s2mm_eof <= s_s2mm_eof;
                     s_s2mm_btt <= s_s2mm_btt;
                     s2mm_cmd_mosi.tvalid <= s2mm_cmd_mosi.tvalid;
                     write_img_loc <= write_img_loc;
                  end if;
               
--               when VALIDATE_WRITE_IMG =>
--                  if( s2mm_sts_mosi.tvalid = '1') then --wait for the transmision status
--                     --Check if the reception is valid
--                     if ( (s2mm_sts_mosi.tdata(7) = '1') and (s2mm_sts_mosi.tdata(6 downto 4) = "000") and (unsigned(s2mm_sts_mosi.tdata(3 downto 0)) = write_img_loc) ) then --transmit valid                      
--                        --We move to the next state
--                        write_state <= STANDBY_WR;                  
--                        --fill the tag with the img position
--                        s_s2mm_cmd_tag <= s_s2mm_cmd_tag;                        
--                        s_s2mm_saddr <= s_s2mm_saddr;
--                        s_s2mm_eof <= s_s2mm_eof;
--                        s_s2mm_btt <= s_s2mm_btt; 
--                        s2mm_cmd_mosi.tvalid <= '0';
--                        write_img_loc <= write_img_loc;
--                     else -- there was an transmit error
--                        write_state <= ERROR_WRITE;
--                        --signal/output to assigned during the process
--                        s_s2mm_cmd_tag <= (others => '0');
--                        s_s2mm_saddr <= (others => '0');
--                        s_s2mm_eof <= '0';
--                        s_s2mm_btt <= (others => '0');
--                        s2mm_cmd_mosi.tvalid <= '0';
--                        write_img_loc <= (others => '0');
--                     end if;
--                  else --wait until transmit is over
--                     write_state <= write_state;
--                     s_s2mm_cmd_tag <= (others => '0');
--                     s_s2mm_saddr <= (others => '0');
--                     s_s2mm_eof <= '0'; 
--                     s_s2mm_btt <= (others => '0');
--                     s2mm_cmd_mosi.tvalid <= '0';
--                     write_img_loc <= write_img_loc;
--                  end if;
                  
               when others =>
                  write_state <= STANDBY_WR;
                  
            end case;
         end if;
      end if;
      
   end process img_write;
   
   img_write_status : process(CLK_DATA)
   begin
      if rising_edge(CLK_DATA) then
         if sreset = '1' then
            s2mm_err_o <= (others => '0');
            s2mm_sts_miso.tready <= '1';
            next_img_read_loc <= "00";
         else
            
            if( s2mm_sts_mosi.tvalid = '1') then
               
               if(s2mm_sts_mosi.tdata(6 downto 4) /= "000") then
                  s2mm_err_o(3 downto 1) <= s2mm_sts_mosi.tdata(6 downto 4);
               else
                  -- The image was successfully written to memory. This is the new last image valid.
                  next_img_read_loc <= resize(unsigned(s2mm_sts_mosi.tdata(3 downto 0)), next_img_read_loc'length);
               end if;
            else
               s2mm_err_o <= s2mm_err_o;
            end if;
            
            if config.config_valid = '0' then
               next_img_read_loc <= "00";
            end if;
            
         end if;
      end if;
   end process img_write_status;
   
   
   img_read : process(CLK_DATA)
   begin
      if rising_edge(CLK_DATA) then
         if sreset = '1' or config.config_valid = '0' then 	
            read_state <= READ_STANDBY; 
            acq_start <= '0';
            mm2s_cmd_mosi.tvalid <= '0';
            mm2s_sts_miso.tready <= '0';
            read_img_loc <= (others => '0');
            mm2s_err_o <= (others => '0');
            if y_flip_s = '0' then
               valide_img_line <= config.read_start_line;
            else
               valide_img_line <= config.read_stop_line;
            end if;
         else
            case read_state is
               when READ_PAUSE =>
                  if fb_read_pause_s = '1' then 				--Frame Buffer Paused to change parameters (Output image size)
                     read_state <= READ_PAUSE;
                     --fill the tag with the img position  
                     acq_start <= acq_start;
                     s_mm2s_cmd_tag <= s_mm2s_cmd_tag; 
                     s_mm2s_saddr <= s_mm2s_saddr; 
                     startAddress <= startAddress;
                     lineAddress <= lineAddress;
                     pixelAddress <= pixelAddress;
                     s_mm2s_eof <= s_mm2s_eof;
                     s_mm2s_btt <= s_mm2s_btt;
                     mm2s_cmd_mosi.tvalid <= '0';
                     mm2s_sts_miso.tready <= '0';
                     read_img_loc <= read_img_loc;
                     mm2s_err_o <= mm2s_err_o;	
                     if y_flip_s = '0' then	
                        valide_img_line <= config.read_start_line;
                     else
                        valide_img_line <= config.read_stop_line;
                     end if;
                  else		
                     read_state <= READ_STANDBY;
                     --fill the tag with the img position  
                     acq_start <= acq_start;
                     s_mm2s_cmd_tag <= s_mm2s_cmd_tag; 
                     s_mm2s_saddr <= s_mm2s_saddr; 
                     startAddress <= startAddress;
                     lineAddress <= lineAddress;
                     pixelAddress <= pixelAddress;
                     s_mm2s_eof <= s_mm2s_eof;
                     s_mm2s_btt <= s_mm2s_btt;
                     mm2s_cmd_mosi.tvalid <= '0';
                     mm2s_sts_miso.tready <= '0';
                     read_img_loc <= read_img_loc;
                     mm2s_err_o <= mm2s_err_o;	
                     if y_flip_s = '0' then	
                        valide_img_line <= config.read_start_line;
                     else
                        valide_img_line <= config.read_stop_line;
                     end if;					
                  end if;	   
               
               when READ_STANDBY =>
                  --if(config.fb_mode = FBMODE_SDI_STD_c and read_img_loc /= next_img_read_loc and ((valide_img_line = x"0001" and Y_FLIP = '0') or (valide_img_line = unsigned(img_height_s) and Y_FLIP = '1'))) then --Mode Gige standard and new image available
                  if(config.fb_mode = FBMODE_SDI_STD_c and fb_read_pause_s = '1' and ((valide_img_line = config.read_start_line and y_flip_s = '0') or (valide_img_line = config.read_stop_line and y_flip_s = '1'))) then --Mode Gige standard and pause request
                     read_state <= READ_PAUSE;
                     --fill the tag with the img position 
                     acq_start <= acq_start;
                     s_mm2s_cmd_tag <= s_mm2s_cmd_tag; 
                     s_mm2s_saddr <= s_mm2s_saddr;
                     startAddress <= startAddress;
                     lineAddress <= lineAddress;
                     pixelAddress <= pixelAddress;
                     s_mm2s_eof <= s_mm2s_eof;
                     s_mm2s_btt <= s_mm2s_btt;
                     mm2s_cmd_mosi.tvalid <= '0';
                     mm2s_sts_miso.tready <= '0';
                     read_img_loc <= read_img_loc;
                     mm2s_err_o <= mm2s_err_o;
                     valide_img_line <= valide_img_line;            
                     
                  elsif(config.fb_mode = FBMODE_SDI_STD_c and read_img_loc /= next_img_read_loc and ((valide_img_line = config.read_start_line and y_flip_s = '0') or (valide_img_line = config.read_stop_line and y_flip_s = '1'))) then --Mode Gige standard and new image available
                     --change state
                     read_state <= READ_CALCULATE_ADDRESS;
                     acq_start <= '1'; -- acquisition started
                     --fill the tag with the img position
                     s_mm2s_cmd_tag <= resize(std_logic_vector(next_img_read_loc), s_mm2s_cmd_tag'length);                        
                     startAddress	<= resize(config.base_addr + ((next_img_read_loc-1) * shift_left(config.img_size,1)), startAddress'length);	
                     lineAddress		<= resize((valide_img_line-1) * shift_left(config.img_width,1), lineAddress'length);
                     pixelAddress	<=	resize(shift_left(config.read_start_pix,1), pixelAddress'length);
                     s_mm2s_saddr <= s_mm2s_saddr;
                     s_mm2s_btt <= s_mm2s_btt;
                     s_mm2s_eof <= '0';
                     if y_flip_s = '0' then
                        valide_img_line <= valide_img_line + 1;	
                     else
                        valide_img_line <= valide_img_line - 1;
                     end if;	 
                     mm2s_cmd_mosi.tvalid <= '0';
                     mm2s_sts_miso.tready <= '0';
                     read_img_loc <= next_img_read_loc;
                     mm2s_err_o <= mm2s_err_o;
                     
                  elsif(config.fb_mode = FBMODE_SDI_STD_c and acq_start = '1') then --Mode Gige standard and same image available
                     --change state
                     read_state <= READ_CALCULATE_ADDRESS;
                     --fill the tag with the img position
                     s_mm2s_cmd_tag <= resize(std_logic_vector(read_img_loc), s_mm2s_cmd_tag'length);                                                                       
                     startAddress	<= resize(config.base_addr + ((read_img_loc-1) * shift_left(config.img_size,1)), startAddress'length);	
                     lineAddress		<= resize((valide_img_line-1) * shift_left(config.img_width,1), lineAddress'length);
                     pixelAddress	<=	resize(shift_left(config.read_start_pix,1), pixelAddress'length);
                     s_mm2s_saddr <= s_mm2s_saddr;
                     s_mm2s_btt <= s_mm2s_btt;
                     
                     if y_flip_s = '0' then
                        if valide_img_line >= config.read_stop_line then
                           s_mm2s_eof <=  '1';
                           valide_img_line <= config.read_start_line;
                        else
                           s_mm2s_eof <=  '0';
                           valide_img_line <= valide_img_line + 1;	
                        end if;   
                     else
                        if valide_img_line = config.read_start_line then
                           s_mm2s_eof <=  '1';
                           valide_img_line <= config.read_stop_line; 
                        else
                           s_mm2s_eof <=  '0';
                           valide_img_line <= valide_img_line - 1; 
                        end if; 
                     end if;
                     acq_start <= acq_start;
                     mm2s_cmd_mosi.tvalid <= '0';
                     mm2s_sts_miso.tready <= '0';
                     --read_img_loc <= next_img_read_loc;
                     read_img_loc <= read_img_loc;           -- same image
                     mm2s_err_o <= mm2s_err_o; 
                  else
                     read_state <= READ_STANDBY;
                     --fill the tag with the img position  
                     acq_start <= acq_start; 
                     s_mm2s_cmd_tag <= s_mm2s_cmd_tag; 
                     s_mm2s_saddr <= s_mm2s_saddr;
                     startAddress <= startAddress;
                     lineAddress <= lineAddress;
                     pixelAddress <= pixelAddress;
                     s_mm2s_btt <= s_mm2s_btt;
                     s_mm2s_eof <= s_mm2s_eof;
                     mm2s_cmd_mosi.tvalid <= '0';
                     mm2s_sts_miso.tready <= '0';
                     read_img_loc <= read_img_loc;
                     mm2s_err_o <= mm2s_err_o;
                     if y_flip_s = '0' then	
                        valide_img_line <= config.read_start_line;
                     else
                        valide_img_line <= config.read_stop_line;
                     end if;
                  end if;
               
               when READ_CALCULATE_ADDRESS =>
                  
                  read_state <= READ_FRAME;
                  --fill the tag with the img position 
                  acq_start <= acq_start;
                  s_mm2s_cmd_tag <= s_mm2s_cmd_tag; 
                  startAddress <= startAddress;
                  lineAddress <= lineAddress;
                  pixelAddress <= pixelAddress;
                  s_mm2s_saddr <= resize(std_logic_vector(startAddress + lineAddress + pixelAddress), s_mm2s_saddr'length);
                  s_mm2s_btt <= resize(std_logic_vector(shift_left(config.read_width,1)),s_mm2s_btt'length);
                  s_mm2s_eof <= s_mm2s_eof;
                  mm2s_cmd_mosi.tvalid <= '1';
                  mm2s_sts_miso.tready <= '0';
                  read_img_loc <= read_img_loc;
                  mm2s_err_o <= mm2s_err_o;
                  valide_img_line <= valide_img_line;
               
               when READ_FRAME =>
                  --Send a read cmd
                  if( mm2s_cmd_miso.tready = '1') then --wait for the cmd to be process then wait for status
                     --change state
                     read_state <= VALIDATE_READ_FRAME;
                     --fill the tag with the img position  
                     acq_start <= acq_start;
                     s_mm2s_cmd_tag <= s_mm2s_cmd_tag; 
                     s_mm2s_saddr <= s_mm2s_saddr;
                     startAddress <= startAddress;
                     lineAddress <= lineAddress;
                     pixelAddress <= pixelAddress;
                     s_mm2s_eof <= s_mm2s_eof;
                     s_mm2s_btt <= s_mm2s_btt; 
                     mm2s_cmd_mosi.tvalid <= '0';
                     mm2s_sts_miso.tready <= '1';
                     read_img_loc <= read_img_loc;
                     mm2s_err_o <= mm2s_err_o;
                     valide_img_line <= valide_img_line;
                  else
                     read_state <= read_state;
                     --fill the tag with the img position
                     acq_start <= acq_start;
                     s_mm2s_cmd_tag <= s_mm2s_cmd_tag; 
                     s_mm2s_saddr <= s_mm2s_saddr;
                     startAddress <= startAddress;
                     lineAddress <= lineAddress;
                     pixelAddress <= pixelAddress;
                     s_mm2s_eof <= s_mm2s_eof;
                     s_mm2s_btt <= s_mm2s_btt;
                     mm2s_cmd_mosi.tvalid <= '1';
                     mm2s_sts_miso.tready <= '0';
                     read_img_loc <= read_img_loc;
                     mm2s_err_o <= mm2s_err_o;
                     valide_img_line <= valide_img_line;
                  end if;
               
               when VALIDATE_READ_FRAME =>
                  if( mm2s_sts_mosi.tvalid = '1') then --wait for the transmision status
                     --Check if the reception is valid
                     if ( (mm2s_sts_mosi.tdata(7) = '1') and (mm2s_sts_mosi.tdata(6 downto 4) = "000") and (unsigned(mm2s_sts_mosi.tdata(3 downto 0)) = read_img_loc) ) then --transmit valid
                        --We move to the next state
                        read_state <= READ_STANDBY;
                        --fill the tag with the img position  
                        acq_start <= acq_start;
                        s_mm2s_cmd_tag <= s_mm2s_cmd_tag; 
                        s_mm2s_saddr <= s_mm2s_saddr;  
                        startAddress <= startAddress;
                        lineAddress <= lineAddress;
                        pixelAddress <= pixelAddress;
                        s_mm2s_eof <= s_mm2s_eof;
                        s_mm2s_btt <= s_mm2s_btt;
                        mm2s_cmd_mosi.tvalid <= '0';
                        mm2s_sts_miso.tready <= '0';
                        read_img_loc <= read_img_loc;
                        mm2s_err_o <= mm2s_err_o;
                        valide_img_line <= valide_img_line;
                     else -- there was a transmit error
                        read_state <= ERROR_READ;
                        --signal/output to assigned during the process 
                        acq_start <= acq_start; 
                        s_mm2s_cmd_tag <= s_mm2s_cmd_tag; 
                        s_mm2s_saddr <= s_mm2s_saddr;  
                        startAddress <= startAddress;
                        lineAddress <= lineAddress;
                        pixelAddress <= pixelAddress;
                        s_mm2s_eof <= s_mm2s_eof;
                        s_mm2s_btt <= s_mm2s_btt;
                        mm2s_cmd_mosi.tvalid <= '0';
                        mm2s_sts_miso.tready <= '0';
                        read_img_loc <= (others => '0');
                        valide_img_line <= valide_img_line;
                        mm2s_err_o(3 downto 1) <= mm2s_sts_mosi.tdata(6 downto 4);
                        if (unsigned(mm2s_sts_mosi.tdata(3 downto 0)) /= read_img_loc) then
                           mm2s_err_o(0) <= '1';
                        else
                           mm2s_err_o(0) <= '0';
                        end if;
                        
                     end if;
                  else --wait until transmit is over
                     read_state <= read_state;
                     acq_start <= acq_start; 
                     s_mm2s_cmd_tag <= s_mm2s_cmd_tag; 
                     s_mm2s_saddr <= s_mm2s_saddr;  
                     startAddress <= startAddress;
                     lineAddress <= lineAddress;
                     pixelAddress <= pixelAddress;
                     s_mm2s_eof <= s_mm2s_eof;
                     s_mm2s_btt <= s_mm2s_btt;
                     mm2s_cmd_mosi.tvalid <= '0';
                     mm2s_sts_miso.tready <= '1';
                     read_img_loc <= read_img_loc;
                     mm2s_err_o <= mm2s_err_o;
                     valide_img_line <= valide_img_line;
                     
                  end if;
               
               when ERROR_READ =>
                  read_state <= READ_STANDBY;
                  read_img_loc <= (others => '0');
               
               when others =>
            end case;
         end if;
      end if;
   end process img_read;
   
   wr_loc_selector : process(CLK_DATA)
   begin
      if rising_edge(CLK_DATA) then
         if sreset = '1' or config.config_valid = '0' then
            next_img_write_loc <= to_unsigned(1,next_img_write_loc'length);
         else
            case config.fb_mode is
               when FBMODE_SDI_STD_c =>
                  case (write_img_loc & read_img_loc) is
                     when "0000" => next_img_write_loc <= to_unsigned(1,next_img_write_loc'length);
                     when "0001" => next_img_write_loc <= to_unsigned(2,next_img_write_loc'length);
                     when "0010" => next_img_write_loc <= to_unsigned(3,next_img_write_loc'length);
                     when "0011" => next_img_write_loc <= to_unsigned(1,next_img_write_loc'length);
                     when "0100" => next_img_write_loc <= to_unsigned(2,next_img_write_loc'length);
                     when "0101" => next_img_write_loc <= to_unsigned(2,next_img_write_loc'length); --Impossible
                     when "0110" => next_img_write_loc <= to_unsigned(3,next_img_write_loc'length);
                     when "0111" => next_img_write_loc <= to_unsigned(2,next_img_write_loc'length);
                     when "1000" => next_img_write_loc <= to_unsigned(3,next_img_write_loc'length);
                     when "1001" => next_img_write_loc <= to_unsigned(3,next_img_write_loc'length);
                     when "1010" => next_img_write_loc <= to_unsigned(3,next_img_write_loc'length); --Impossible
                     when "1011" => next_img_write_loc <= to_unsigned(1,next_img_write_loc'length);
                     when "1100" => next_img_write_loc <= to_unsigned(1,next_img_write_loc'length);
                     when "1101" => next_img_write_loc <= to_unsigned(2,next_img_write_loc'length);
                     when "1110" => next_img_write_loc <= to_unsigned(1,next_img_write_loc'length);
                     when "1111" => next_img_write_loc <= to_unsigned(1,next_img_write_loc'length); --Impossible
                     when others => next_img_write_loc <= to_unsigned(0,next_img_write_loc'length); --Impossible
                  end case;
               when others =>
                  next_img_write_loc <= to_unsigned(1,next_img_write_loc'length);
            end case;
         end if;
      end if;
   end process wr_loc_selector;
   
end rtl;
