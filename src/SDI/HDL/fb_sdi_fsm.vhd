---------------------------------------------------------------------------------------------------
--  Copyright (c) Telops Inc. 2014
--
--  File: axis_lane_adj.vhd
--  Use: adjust the axis stream lane for BASE and full operations
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
      CLK_CTRL         : in std_logic; -- at 100 MHZ
      CLK_DATA         : in std_logic; -- at 160 MHZ
      ARESETN          : in std_logic;		 
      FB_Read_Pause    : in std_logic;
      
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
      FB_MODE     : in STD_LOGIC_VECTOR(2 downto 0);
      IMG_WIDTH   : in STD_LOGIC_VECTOR(15 DOWNTO 0);
      IMG_HEIGHT  : in STD_LOGIC_VECTOR(15 DOWNTO 0);
      
      BASE_ADDR    : in STD_LOGIC_VECTOR(31 DOWNTO 0);
      IMG_SIZE     : in STD_LOGIC_VECTOR(31 downto 0); -- in pixel
      CONFIG_VALID : in STD_LOGIC;
      SOF 				: in STD_LOGIC;
      FIFO_NOT_EMPTY 	: in STD_LOGIC;
      
      Y_FLIP : in STD_LOGIC;
      
      Start_Pixel     : in std_logic_vector(31 downto 0);
      Width_Pixel     : in std_logic_vector(31 downto 0);
      Start_Line      : in std_logic_vector(31 downto 0);
      Stop_Line       : in std_logic_vector(31 downto 0);
      
      S2MM_ERR : out std_logic_vector(3 downto 0);
      MM2S_ERR : out std_logic_vector(3 downto 0)
      
      );
end FB_SDI_FSM;

architecture rtl of FB_SDI_FSM is
   attribute KEEP : string;
   
   
   
   -- declaring components explicitly eases synthesis file ordering mess!
   
   -- COMPONENT vio_0
   --        PORT (
   --          clk : IN STD_LOGIC;
   --          probe_in0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
   --          probe_in1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
   --          --probe_in2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
   --          --probe_in3 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
   --          --probe_in4 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
   --          --probe_in5 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
   --          --probe_in6 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
   --          --probe_out0 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
   --        );
   --        END COMPONENT;
   
   --        COMPONENT ila_0_debug_FBSM
   --     PORT (
   --       clk : IN STD_LOGIC;
   --       probe0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
   --       --probe1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
   --       --probe2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
   --       --probe3 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
   --       --probe4 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
   --       --probe5 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
   --       --probe6 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
   --       --probe7 : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
   --     );
   --   END COMPONENT;
   
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
   
   component double_sync_vector is
      port(
         D : in STD_LOGIC_vector;
         Q : out STD_LOGIC_vector;
         CLK : in STD_LOGIC
         );
   end component double_sync_vector;
   
   --RESET
   signal sreset     		: std_logic;
   signal areset 			: std_logic;
   signal fb_read_pause_s 	: std_logic_vector(2 downto 0) := "000";
   
   --input synch
   signal fb_mode_s :std_logic_vector(FB_MODE'length-1 downto 0);
   signal img_width_s :std_logic_vector(IMG_WIDTH'length-1 downto 0);
   signal img_height_s :std_logic_vector(IMG_HEIGHT'length-1 downto 0);
   attribute KEEP of img_height_s: signal is "true";		   
   
   --type array_vector_v32 is array (2 downto 0) of std_logic_vector(31 downto 0); --Array of V32 
   type array_vector_v16 is array (2 downto 0) of std_logic_vector(15 downto 0); --Array of V16
   signal Start_Pixel_s     : array_vector_v16;
   signal Width_Pixel_s     : array_vector_v16;
   signal Start_Line_s      : array_vector_v16;
   signal Stop_Line_s       : array_vector_v16;	
   
   signal startAddress       : std_logic_vector(31 downto 0);
   signal lineAddress       : std_logic_vector(31 downto 0);
   signal pixelAddress       : std_logic_vector(31 downto 0);
   
   signal Y_FLIP_s     		: std_logic_vector(2 downto 0) := "000";
   
   signal baseaddr_s : std_logic_vector(BASE_ADDR'length-1 downto 0);
   
   signal baseaddr_u : unsigned(BASE_ADDR'length-1 downto 0);
   attribute KEEP of baseaddr_u: signal is "true";
   
   signal imgsize_s :std_logic_vector(IMG_SIZE'length-1 downto 0);
   signal imgsize_reg :std_logic_vector(IMG_SIZE'length-1 downto 0);
   signal config_valid_s :std_logic;
   attribute KEEP of config_valid_s: signal is "true";
   
   --CMD constant
   constant c_xCACHE : std_logic_vector(3 downto 0) := "0011"; -- Recommended dflt value
   constant c_xUSER : std_logic_vector(3 downto 0) := "0000"; -- Not used
   constant c_RSVD : std_logic_vector(3 downto 0) := "0000"; -- Not used
   constant c_DRR : std_logic := '0'; -- Not used
   constant c_DSA : std_logic_vector(5 downto 0) := "000000"; -- Not used
   constant c_TYPE : std_logic := '1'; -- FIXED=0 , INCR=1 
   
   --CMD Signal
   signal s_mm2s_cmd_tag : std_logic_vector(3 downto 0) :="0000";
   signal s_s2mm_cmd_tag : std_logic_vector(3 downto 0) :="0000";
   signal s_mm2s_saddr : std_logic_vector(31 downto 0) := x"00000000";
   signal s_s2mm_saddr : std_logic_vector(31 downto 0) := x"00000000";
   signal s_mm2s_eof : std_logic := '0';
   signal s_s2mm_eof : std_logic := '0';
   signal s_mm2s_btt : std_logic_vector(22 downto 0) := x"00000" & b"000";
   signal s_s2mm_btt : std_logic_vector(22 downto 0) := x"00000" & b"000";  
   signal acq_start : std_logic := '0';
   signal sof_i : std_logic := '0';
   signal fifo_not_empty_i : std_logic := '0';
   
   --OUTPUT Signal
   signal mm2s_err_o : std_logic_vector(3 downto 0); -- (SLVERR & DECERR &INTERR &TAGERR )
   signal s2mm_err_o : std_logic_vector(3 downto 0); -- (SLVERR & DECERR &INTERR &TAGERR )
   
   
   --Type definition
   type fb_write_state_t is (write_standby, write_img,validate_write_img,error_write); 
   --attribute syn_enum_encoding_fb_write_state_t: string;
   --attribute syn_enum_encoding_fb_write_state_t of fb_write_state_t: type is "0001 0010 0100 1000 ";	  	--ONE-HOT
   
   type fb_read_state_t is (read_pause,read_standby,read_calculate_address,read_frame,validate_read_frame,error_read ); 
   --attribute syn_enum_encoding_fb_read_state_t: string;
   --attribute syn_enum_encoding_fb_read_state_t of fb_read_state_t: type is "00001 00010 00100 01000 10000";	--ONE-HOT
   
   signal write_state : fb_write_state_t := write_standby;
   signal read_state : fb_read_state_t := read_standby;
   
   attribute KEEP of read_state: signal is "true";
   attribute KEEP of write_state: signal is "true";
   
   
   signal next_img_write_loc : unsigned(1 downto 0) := "00"; -- Location of the next image to write (ex: loc =0 , loc = 1 etc...)
   signal next_img_read_loc : unsigned(1 downto 0) := "00"; -- Location of the next image to read (ex: loc =0 , loc = 1 etc...)
   attribute KEEP of next_img_read_loc: signal is "true";
   
   signal write_img_loc : unsigned(1 downto 0) := "00"; -- Location of the img write 0-> is not writing 1-> is the first Loc etc...(ex: loc =1, loc = 2 etc...)
   signal read_img_loc : unsigned(1 downto 0) := "00"; -- Location of the img read 0-> is not reading 1-> is the first Loc etc... (ex: loc =1 , loc = 2 etc...) 
   attribute KEEP of read_img_loc: signal is "true";
   
   signal valide_img_line : unsigned(15 downto 0) := x"0000"; -- Active video line (read IMG) 
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
   --inst_sync_reset : sync_reset port map(ARESET => areset, SRESET => sreset, CLK => CLK_CTRL);
   inst_sync_reset : sync_reset port map(ARESET => areset, SRESET => sreset, CLK => CLK_CTRL);	 
   
   -- input sync
   fbmode_sync : double_sync_vector       port map(D => FB_MODE,        Q=> fb_mode_s,     CLK => CLK_CTRL );
   imgwidth_sync : double_sync_vector       port map(D => IMG_WIDTH,    Q=> img_width_s,   CLK => CLK_CTRL );
   imgheigth_sync : double_sync_vector      port map(D => IMG_HEIGHT,   Q=> img_height_s,  CLK => CLK_CTRL );
   
   fb_baseaddr_sync : double_sync_vector  port map(D => BASE_ADDR,      Q=> baseaddr_s,      CLK => CLK_CTRL );
   
   fb_imgsize_sync : double_sync_vector  port map(D => IMG_SIZE,      Q=> imgsize_s,      CLK => CLK_CTRL );
   fb_configvalid_sync : double_sync  port map(D => CONFIG_VALID, Q=> config_valid_s, RESET => sreset  , CLK => CLK_CTRL );
   fifo_not_empty_sync : double_sync  port map(D => FIFO_NOT_EMPTY, Q=> fifo_not_empty_i, RESET => sreset  , CLK => CLK_CTRL );
   
   baseaddr_u <= unsigned(baseaddr_s);
   
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
   
   img_write : process(CLK_CTRL)
   begin
      if rising_edge(CLK_CTRL) then            
         if sreset = '1' or config_valid_s = '0' then
            write_state <= write_standby;
            --signal/output to assigned during the process
            s_s2mm_cmd_tag <= (others => '0');
            s_s2mm_saddr <= (others => '0');
            s_s2mm_eof <=  '0';
            s_s2mm_btt <= (others => '0');
            s2mm_cmd_mosi.tvalid <= '0';
            s2mm_sts_miso.tready <= '0';
            write_img_loc <= "00";  -- /= read_img_loc to not lose the first frame
            next_img_read_loc <= "00";
            s2mm_err_o <= (others => '0');
            sof_i <= '0';
         else
            --if (SOF = '1') then
            --                sof_i <= '1';
            --            end if;
            if (fifo_not_empty_i = '1') then
               sof_i <= '1';  
            else
               sof_i <= '0';
            end if;
            
            case write_state is
               when write_standby =>
                  if(fb_mode_s = FBMODE_SDI_STD_c) then
                     if (sof_i = '1') then --Mode Gige standard
                        --sof_i <= '0';
                        --change state
                        write_state <= write_img;
                        --fill the tag with the img position
                        s_s2mm_cmd_tag <= resize(std_logic_vector(next_img_write_loc),4); 
                        s_s2mm_saddr <= resize(std_logic_vector(baseaddr_u + ((next_img_write_loc-1) * shift_left(unsigned(imgsize_s),1))),32);
                        s_s2mm_eof <=  '1';
                        s_s2mm_btt <= resize(std_logic_vector(shift_left(unsigned(imgsize_s),1)),s_s2mm_btt'length); -- Transfert of the img data in 1 cmd (2 bytes/pix)
                        s2mm_cmd_mosi.tvalid <= '1'; --validate the transaction
                        s2mm_sts_miso.tready <= '0';
                        write_img_loc <= next_img_write_loc;
                        next_img_read_loc <= next_img_read_loc;
                        s2mm_err_o <= s2mm_err_o;
                     else
                        write_state <= write_standby;
                        --signal/output to assigned during the process
                        s_s2mm_cmd_tag <= s_s2mm_cmd_tag;
                        s_s2mm_saddr <= s_s2mm_saddr;
                        s_s2mm_eof <= s_s2mm_eof; 
                        s_s2mm_btt <= s_s2mm_btt;
                        s2mm_cmd_mosi.tvalid <= '0';
                        s2mm_sts_miso.tready <= '0';
                        write_img_loc <= write_img_loc;
                        next_img_read_loc <= next_img_read_loc;
                        s2mm_err_o <= s2mm_err_o;
                     end if;
                     
                  else
                     write_state <= write_standby;
                     --signal/output to assigned during the process
                     s_s2mm_cmd_tag <= (others => '0');
                     s_s2mm_saddr <= (others => '0');
                     s_s2mm_eof <='0'; 
                     s_s2mm_btt <= (others => '0');
                     s2mm_cmd_mosi.tvalid <= '0';
                     s2mm_sts_miso.tready <= '0';
                     write_img_loc <= "00";
                     next_img_read_loc <= next_img_read_loc;
                     s2mm_err_o <= s2mm_err_o;
                  end if;
               
               when write_img =>
                  --Send a write cmd
                  if( s2mm_cmd_miso.tready = '1') then --wait for the last cmd to be process then wait for the 2 cmd sts
                     --change state
                     --write_state <= validate_write_hdr;
                     write_state <= validate_write_img;                     
                     --fill the tag with the img position
                     s_s2mm_cmd_tag <= s_s2mm_cmd_tag; 
                     s_s2mm_saddr <= s_s2mm_saddr;
                     s_s2mm_eof <=  '0';
                     s_s2mm_btt <= (others => '0');
                     s2mm_cmd_mosi.tvalid <= '0'; --invalidate de data
                     s2mm_sts_miso.tready <= '1';
                     write_img_loc <= write_img_loc;
                     next_img_read_loc <= next_img_read_loc;
                     s2mm_err_o <= s2mm_err_o;
                  else
                     --Stay there
                     write_state <= write_state;
                     --fill the tag with the img position
                     s_s2mm_cmd_tag <= s_s2mm_cmd_tag; 
                     s_s2mm_saddr <= s_s2mm_saddr;
                     s_s2mm_eof <=  s_s2mm_eof;
                     s_s2mm_btt <= s_s2mm_btt;
                     s2mm_cmd_mosi.tvalid <= '1';
                     s2mm_sts_miso.tready <= '0';
                     write_img_loc <= write_img_loc;
                     next_img_read_loc <= next_img_read_loc;
                     s2mm_err_o <= s2mm_err_o;
                  end if;
               
               when validate_write_img =>
                  if( s2mm_sts_mosi.tvalid = '1') then --wait for the transmision status
                     --Check if the reception is valid
                     if ( (s2mm_sts_mosi.tdata(7) = '1') and (s2mm_sts_mosi.tdata(6 downto 4) = "000") and (unsigned(s2mm_sts_mosi.tdata(3 downto 0)) = write_img_loc) ) then --transmit valid                      
                        --We move to the next state
                        write_state <= write_standby;                  
                        --fill the tag with the img position
                        s_s2mm_cmd_tag <= s_s2mm_cmd_tag;                        
                        s_s2mm_saddr <= s_s2mm_saddr;
                        s_s2mm_eof <=  s_s2mm_eof;
                        s_s2mm_btt <= s_s2mm_btt; 
                        s2mm_cmd_mosi.tvalid <= '0';    --No command
                        s2mm_sts_miso.tready <= '0';
                        write_img_loc <= write_img_loc;
                        next_img_read_loc <= write_img_loc ; -- The image was succesfuly written to memory. This is the new last image valid.
                        s2mm_err_o <= s2mm_err_o;
                     else -- there was an transmit error
                        write_state <= error_write;
                        --signal/output to assigned during the process
                        s_s2mm_cmd_tag <= (others => '0');
                        s_s2mm_saddr <= (others => '0');
                        s_s2mm_eof <=  '0';
                        s_s2mm_btt <= (others => '0');
                        s2mm_cmd_mosi.tvalid <= '0';
                        s2mm_sts_miso.tready <= '0';
                        write_img_loc <= "00";
                        next_img_read_loc <= "00";
                        s2mm_err_o(3 downto 1) <= s2mm_sts_mosi.tdata(6 downto 4);
                        if (unsigned(s2mm_sts_mosi.tdata(3 downto 0)) /= write_img_loc) then
                           s2mm_err_o(0) <= '1';
                        else
                           s2mm_err_o(0) <= '0';
                        end if;
                        
                        
                        --TODO GENERATE AN ERROR
                        
                     end if;
                  else --wait until transmis is over
                     write_state <= write_state;
                     s_s2mm_cmd_tag <= (others => '0');
                     s_s2mm_saddr <= (others => '0');
                     s_s2mm_eof <='0'; 
                     s_s2mm_btt <= (others => '0');
                     s2mm_cmd_mosi.tvalid <= '0';
                     s2mm_sts_miso.tready <= '1';
                     write_img_loc <= write_img_loc;
                     next_img_read_loc <= next_img_read_loc;
                     s2mm_err_o <= s2mm_err_o;
                  end if;   
               
               when error_write =>
                  write_state <= write_standby;
               s2mm_err_o <= s2mm_err_o;
               when others =>
            end case;
         end if;
      end if;
      
   end process img_write;
   
   --We read the image frame by frame not hdr and img split in 2 for gige
   
   img_read : process(CLK_CTRL)
   begin
      if rising_edge(CLK_CTRL) then
         --Sync signals used in State Machine
         fb_read_pause_s   <= fb_read_pause_s(1 downto 0) & FB_Read_Pause;
         Y_FLIP_s 		  <= Y_FLIP_s(1 downto 0) & Y_FLIP; 
         Start_Pixel_s     <= Start_Pixel_s(1 downto 0) & Start_Pixel(15 downto 0);
         Width_Pixel_s     <= Width_Pixel_s(1 downto 0) & Width_Pixel(15 downto 0);
         Start_Line_s      <= Start_Line_s(1 downto 0) & Start_Line(15 downto 0);
         Stop_Line_s       <= Stop_Line_s(1 downto 0) & Stop_Line(15 downto 0); 		  
         
         if sreset = '1' or config_valid_s = '0' then 	
            read_state <= read_standby;
            --signal/output to assigned during the process
            s_mm2s_cmd_tag <= (others => '0');
            s_mm2s_saddr <= (others => '0'); 
            startAddress <= (others => '0');
            lineAddress <= (others => '0');
            pixelAddress <= (others => '0'); 
            s_mm2s_btt <= (others => '0');
            s_mm2s_eof <=  '0';
            acq_start <=  '0';
            mm2s_cmd_mosi.tvalid <= '0';
            mm2s_sts_miso.tready <= '0';
            read_img_loc <= "00";
            mm2s_err_o <= (others => '0');
            if Y_FLIP_s(2) = '0' then
               valide_img_line <= unsigned(Start_Line_s(2));
            else
               valide_img_line <= unsigned(Stop_Line_s(2));
            end if;
         else
            case read_state is
               when read_pause =>
                  if fb_read_pause_s(2) = '1' then 				--Frame Buffer Paused to change parameters (Output image size)
                     --read_state <= read_state;
                     read_state <= read_pause;
                     --fill the tag with the img position  
                     acq_start <=  acq_start;
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
                     if Y_FLIP_s(2) = '0' then	
                        valide_img_line <= unsigned(Start_Line_s(2));
                     else
                        valide_img_line <= unsigned(Stop_Line_s(2));
                     end if;
                  else		
                     read_state <= read_standby;
                     --fill the tag with the img position  
                     acq_start <=  acq_start;
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
                     if Y_FLIP_s(2) = '0' then	
                        valide_img_line <= unsigned(Start_Line_s(2));
                     else
                        valide_img_line <= unsigned(Stop_Line_s(2));
                     end if;					
                  end if;	   
               
               when read_standby =>
                  --if(fb_mode_s = FBMODE_SDI_STD_c and read_img_loc /= next_img_read_loc and ((valide_img_line = x"0001" and Y_FLIP = '0') or (valide_img_line = unsigned(img_height_s) and Y_FLIP = '1'))) then --Mode Gige standard and new image available 
                  if(fb_mode_s = FBMODE_SDI_STD_c and fb_read_pause_s(2) = '1' and ((valide_img_line = unsigned(Start_Line_s(2)) and Y_FLIP_s(2) = '0') or (valide_img_line = unsigned(Stop_Line_s(2)) and Y_FLIP_s(2) = '1'))) then --Mode Gige standard and pause request
                     read_state <= read_pause;
                     --fill the tag with the img position 
                     acq_start <=  acq_start;
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
                     
                  elsif(fb_mode_s = FBMODE_SDI_STD_c and read_img_loc /= next_img_read_loc and ((valide_img_line = unsigned(Start_Line_s(2)) and Y_FLIP_s(2) = '0') or (valide_img_line = unsigned(Stop_Line_s(2)) and Y_FLIP_s(2) = '1'))) then --Mode Gige standard and new image available
                     --if FB_Read_Pause = '0' then
                     --imgsize_reg <= imgsize_s(2);                 
                     --change state
                     read_state <= read_calculate_address;
                     acq_start <=  '1'; -- acquisition started
                     --fill the tag with the img position
                     s_mm2s_cmd_tag <= resize(std_logic_vector(next_img_read_loc),4);                        
                     --s_mm2s_saddr <= resize(std_logic_vector(baseaddr_u + ((next_img_read_loc-1) * shift_left(unsigned(imgsize_s),1)) + ((valide_img_line-1)*shift_left(unsigned(img_width_s),1))),32);
                     --s_mm2s_btt <= resize(std_logic_vector(shift_left(unsigned(img_width_s),1)),s_mm2s_btt'length);
                     --s_mm2s_saddr <= resize(std_logic_vector(baseaddr_u + ((next_img_read_loc-1) * shift_left(unsigned(imgsize_s),1)) + ((valide_img_line-1)*shift_left(unsigned(img_width_s),1)) + shift_left(unsigned(start_pixel_s(2)),1)),32);
                     --s_mm2s_btt <= resize(std_logic_vector(shift_left(unsigned(Width_Pixel_s(2)(15 downto 0)),1)),s_mm2s_btt'length);						  
                     startAddress	<= resize(std_logic_vector(baseaddr_u + ((next_img_read_loc-1) * shift_left(unsigned(imgsize_s),1))), 32);	
                     lineAddress		<= resize(std_logic_vector(((valide_img_line-1)*shift_left(unsigned(img_width_s),1))), 32);
                     pixelAddress	<=	resize(std_logic_vector(shift_left(unsigned(start_pixel_s(2)),1)), 32);
                     --s_mm2s_saddr 	  <= resize(std_logic_vector(baseaddr_u + ((next_img_read_loc-1) * shift_left(unsigned(imgsize_s),1)) + ((valide_img_line-1)*shift_left(unsigned(img_width_s),1)) + shift_left(unsigned(start_pixel_s(2)),1)),32); 
                     --s_mm2s_saddr 	  <= resize(std_logic_vector(unsigned(startAddress) + unsigned(lineAddress) + unsigned(pixelAddress)), 32);
                     s_mm2s_saddr 	  <= s_mm2s_saddr;
                     --s_mm2s_btt 		  <= resize(std_logic_vector(shift_left(unsigned(Width_Pixel_s(2)(15 downto 0)),1)),s_mm2s_btt'length);
                     s_mm2s_btt 		  <= s_mm2s_btt;
                     s_mm2s_eof <=  '0';
                     if Y_FLIP_s(2) = '0' then
                        valide_img_line <= valide_img_line + 1;	
                     else
                        valide_img_line <= valide_img_line - 1;
                     end if;	 
                     --mm2s_cmd_mosi.tvalid <= '1';
                     mm2s_cmd_mosi.tvalid <= '0';
                     mm2s_sts_miso.tready <= '0';
                     read_img_loc <= next_img_read_loc;
                     mm2s_err_o <= mm2s_err_o;
                     
                  elsif(fb_mode_s = FBMODE_SDI_STD_c and acq_start = '1') then --Mode Gige standard and same image available
                     --change state
                     read_state <= read_calculate_address;
                     --fill the tag with the img position
                     s_mm2s_cmd_tag <= resize(std_logic_vector(read_img_loc),4);                                                                       
                     --s_mm2s_saddr <= resize(std_logic_vector(baseaddr_u + ((read_img_loc-1) * shift_left(unsigned(imgsize_s),1)) + ((valide_img_line-1)*shift_left(unsigned(img_width_s),1))),32);
                     --s_mm2s_btt <= resize(std_logic_vector(shift_left(unsigned(img_width_s),1)),s_mm2s_btt'length); -- Transfert the img hdr in 1 cmd (2 bytes/pix)
                     --s_mm2s_saddr <= resize(std_logic_vector(baseaddr_u + ((read_img_loc-1) * shift_left(unsigned(imgsize_s),1)) + ((valide_img_line-1)*shift_left(unsigned(img_width_s),1)) + shift_left(unsigned(start_pixel_s(2)(15 downto 0)),1)),32);
                     --s_mm2s_btt <= resize(std_logic_vector(shift_left(unsigned(Width_Pixel_s(2)(15 downto 0)),1)),s_mm2s_btt'length); -- Transfert the img hdr in 1 cmd (2 bytes/pix);
                     startAddress	<= resize(std_logic_vector(baseaddr_u + ((read_img_loc-1) * shift_left(unsigned(imgsize_s),1))), 32);	
                     lineAddress		<= resize(std_logic_vector(((valide_img_line-1)*shift_left(unsigned(img_width_s),1))), 32);
                     pixelAddress	<=	resize(std_logic_vector(shift_left(unsigned(start_pixel_s(2)),1)), 32);
                     --s_mm2s_saddr 	  <= resize(std_logic_vector(baseaddr_u + ((next_img_read_loc-1) * shift_left(unsigned(imgsize_s),1)) + ((valide_img_line-1)*shift_left(unsigned(img_width_s),1)) + shift_left(unsigned(start_pixel_s(2)),1)),32); 
                     --s_mm2s_saddr 	  <= resize(std_logic_vector(unsigned(startAddress) + unsigned(lineAddress) + unsigned(pixelAddress)), 32);
                     s_mm2s_saddr 	  <= s_mm2s_saddr;
                     --s_mm2s_btt 		  <= resize(std_logic_vector(shift_left(unsigned(Width_Pixel_s(2)(15 downto 0)),1)),s_mm2s_btt'length);
                     s_mm2s_btt 		  <= s_mm2s_btt;
                     
                     if Y_FLIP_s(2) = '0' then
                        if valide_img_line >= unsigned(Stop_Line_s(2)) then
                           s_mm2s_eof <=  '1';
                           valide_img_line <= unsigned(Start_Line_s(2));
                           --if (imgsize_s /= imgsize_reg) then
                           --                                    --acq was started, stop and imgsize was changed
                           --                                    acq_start <=  '0'; -- acquisition stop
                           --                                    imgsize_reg <= imgsize_s;
                           --                                end if;
                        else
                           s_mm2s_eof <=  '0';
                           valide_img_line <= valide_img_line + 1;	
                        end if;   
                     else
                        if valide_img_line = unsigned(Start_Line_s(2)) then
                           s_mm2s_eof <=  '1';
                           valide_img_line <= unsigned(Stop_Line_s(2)); 
                           --if (imgsize_s /= imgsize_reg) then
                           --                                    --acq was started, stop and imgsize was changed
                           --                                    acq_start <=  '0'; -- acquisition stop
                           --                                    imgsize_reg <= imgsize_s;
                           --                               end if;
                        else
                           s_mm2s_eof <=  '0';
                           valide_img_line <= valide_img_line - 1; 
                        end if; 
                     end if;
                     acq_start <=  acq_start;
                     --mm2s_cmd_mosi.tvalid <= '1';
                     mm2s_cmd_mosi.tvalid <= '0';
                     mm2s_sts_miso.tready <= '0';
                     --read_img_loc <= next_img_read_loc;
                     read_img_loc <= read_img_loc;           -- same image
                     mm2s_err_o <= mm2s_err_o; 
                  else  
                     ----Stay here
                     --read_state <= read_state;
                     read_state <= read_standby;
                     --fill the tag with the img position  
                     acq_start <=  acq_start; 
                     s_mm2s_cmd_tag <= s_mm2s_cmd_tag; 
                     --s_mm2s_saddr <= s_mm2s_saddr;
                     s_mm2s_saddr <= s_mm2s_saddr;
                     startAddress <= startAddress;
                     lineAddress <= lineAddress;
                     pixelAddress <= pixelAddress;
                     s_mm2s_btt <= s_mm2s_btt;
                     s_mm2s_eof <= s_mm2s_eof;
                     --s_mm2s_btt <= s_mm2s_btt;
                     mm2s_cmd_mosi.tvalid <= '0';
                     mm2s_sts_miso.tready <= '0';
                     read_img_loc <= read_img_loc;
                     mm2s_err_o <= mm2s_err_o;
                     if Y_FLIP_s(2) = '0' then	
                        valide_img_line <= unsigned(Start_Line_s(2));
                     else
                        valide_img_line <= unsigned(Stop_Line_s(2));
                     end if;
                  end if;
               
               when read_calculate_address =>
                  
                  read_state <= read_frame;
                  --fill the tag with the img position 
                  acq_start <=  acq_start;
                  s_mm2s_cmd_tag <= s_mm2s_cmd_tag; 
                  --s_mm2s_saddr <= s_mm2s_saddr;
                  startAddress <= startAddress;
                  lineAddress <= lineAddress;
                  pixelAddress <= pixelAddress;
                  s_mm2s_saddr 	  <= resize(std_logic_vector(unsigned(startAddress) + unsigned(lineAddress) + unsigned(pixelAddress)), 32);
                  s_mm2s_btt 		  <= resize(std_logic_vector(shift_left(unsigned(Width_Pixel_s(2)(15 downto 0)),1)),s_mm2s_btt'length);
                  s_mm2s_eof <= s_mm2s_eof;
                  --s_mm2s_btt <= s_mm2s_btt;
                  mm2s_cmd_mosi.tvalid <= '1';
                  mm2s_sts_miso.tready <= '0';
                  read_img_loc <= read_img_loc;
                  mm2s_err_o <= mm2s_err_o;
                  valide_img_line <= valide_img_line;
               
               when read_frame =>
                  --Send a read cmd
                  if( mm2s_cmd_miso.tready = '1') then --wait for the  cmd to be process then waity for status
                     --change state
                     read_state <= validate_read_frame;
                     --fill the tag with the img position  
                     acq_start <=  acq_start;
                     s_mm2s_cmd_tag <= (others => '0'); 
                     s_mm2s_saddr <= (others => '0');  
                     startAddress <= startAddress;
                     lineAddress <= lineAddress;
                     pixelAddress <= pixelAddress;
                     s_mm2s_eof <=  '0';
                     --s_mm2s_eof <=  s_mm2s_eof;
                     s_mm2s_btt <= (others => '0'); 
                     mm2s_cmd_mosi.tvalid <= '0'; --invalidate  data
                     mm2s_sts_miso.tready <= '1';
                     read_img_loc <= read_img_loc;
                     mm2s_err_o <= mm2s_err_o;
                     valide_img_line <= valide_img_line;	 
                  else
                     --Stay there
                     --read_state <= read_state;
                     read_state <= read_frame;
                     --fill the tag with the img position
                     acq_start <=  acq_start;
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
               
               when validate_read_frame =>
                  if( mm2s_sts_mosi.tvalid = '1') then --wait for the transmision status
                     --Check if the reception is valid
                     if ( (mm2s_sts_mosi.tdata(7) = '1') and (mm2s_sts_mosi.tdata(6 downto 4) = "000") and (unsigned(mm2s_sts_mosi.tdata(3 downto 0)) = read_img_loc) ) then --transmit valid
                        --We move to the next state
                        read_state <= read_standby;
                        --fill the tag with the img position  
                        acq_start <=  acq_start;
                        s_mm2s_cmd_tag <= (others => '0');                        
                        startAddress <= startAddress;
                        lineAddress <= lineAddress;
                        pixelAddress <= pixelAddress;
                        s_mm2s_eof <=  '0';
                        --s_mm2s_btt <= (others => '0'); -- Transfert the entire img in 1 cmd
                        mm2s_cmd_mosi.tvalid <= '0';
                        mm2s_sts_miso.tready <= '0';
                        read_img_loc <= read_img_loc;
                        mm2s_err_o <= mm2s_err_o;
                        valide_img_line <= valide_img_line;
                     else -- there was a transmit error
                        read_state <= error_read;
                        --signal/output to assigned during the process 
                        acq_start <=  acq_start; 
                        startAddress <= startAddress;
                        lineAddress <= lineAddress;
                        pixelAddress <= pixelAddress;
                        s_mm2s_cmd_tag <= (others => '0');
                        --s_mm2s_saddr <= (others => '0');
                        s_mm2s_eof <=  '0';
                        --s_mm2s_btt <= (others => '0');
                        mm2s_cmd_mosi.tvalid <= '0';
                        mm2s_sts_miso.tready <= '0';
                        read_img_loc <= "00";
                        valide_img_line <= valide_img_line;
                        mm2s_err_o(3 downto 1) <= mm2s_sts_mosi.tdata(6 downto 4);
                        if (unsigned(mm2s_sts_mosi.tdata(3 downto 0)) /= read_img_loc) then
                           mm2s_err_o(0) <= '1';
                        else
                           mm2s_err_o(0) <= '0';
                        end if;
                        
                     end if;
                  else --wait until transmis is over
                     --read_state <= read_state;
                     read_state <= validate_read_frame;
                     acq_start <=  acq_start; 
                     startAddress <= startAddress;
                     lineAddress <= lineAddress;
                     pixelAddress <= pixelAddress;
                     s_mm2s_cmd_tag <= (others => '0');
                     --s_mm2s_saddr <= (others => '0');
                     s_mm2s_eof <='0';
                     --s_mm2s_btt <= (others => '0');
                     mm2s_cmd_mosi.tvalid <= '0';
                     mm2s_sts_miso.tready <= '1';
                     read_img_loc <= read_img_loc;
                     mm2s_err_o <= mm2s_err_o;
                     valide_img_line <= valide_img_line;
                     
                  end if;
               
               when error_read =>
                  read_state <= read_standby;		
                  acq_start <=  acq_start;
                  startAddress <= startAddress;
                  lineAddress <= lineAddress;
                  pixelAddress <= pixelAddress;
                  read_img_loc <= "00";
                  valide_img_line <= valide_img_line;
               
               when others =>
            end case;
         end if;
      end if;
   end process img_read;
   
   wr_loc_selector : process(CLK_CTRL)
   begin
      if rising_edge(CLK_CTRL) then
         if sreset = '1' or config_valid_s = '0' then
            next_img_write_loc <= to_unsigned(1,next_img_write_loc'length);
         else
            case fb_mode_s is
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
   
   
   --fb_read_pause_s   <= fb_read_pause_s(1 downto 0) & FB_Read_Pause;
   --Y_FLIP_s 		  <= Y_FLIP_s(1 downto 0) & Y_FLIP; 
   --Start_Pixel_s     <= Start_Pixel_s(1 downto 0) & Start_Pixel(15 downto 0);
   --Width_Pixel_s     <= Width_Pixel_s(1 downto 0) & Width_Pixel(15 downto 0);
   --Start_Line_s      <= Start_Line_s(1 downto 0) & Start_Line(15 downto 0);
   --Stop_Line_s       <= Stop_Line_s(1 downto 0) & Stop_Line(15 downto 0); 
   
   -- your_instance_name : vio_0
   --       PORT MAP (
   --         clk => CLK_DATA,
   --         probe_in0 => s2mm_err_o,
   --         probe_in1 => mm2s_err_o
   --         --probe_in2 => Start_Pixel_s(2), 
   --         --probe_in3 => Width_Pixel_s(2),
   --         --probe_in4 => Start_Line_s(2),
   --         --probe_in5 => Stop_Line_s(2),
   --         --probe_in6 => imgsize_s,
   --         --probe_out0 => open
   --       );
   
   --          your_instance_name : vio_0
   --     PORT MAP (
   --       clk => CLK_DATA,
   --       probe_in0 => s2mm_err_o,
   --       probe_in1 => mm2s_err_o,
   --       probe_in2 => Start_Pixel_s(2),
   --       probe_in3 => Width_Pixel_s(2),
   --       probe_in4 => Start_Line_s(2),
   --       probe_in5 => Stop_Line_s(2),
   --       probe_in6 => imgsize_s,
   --       probe_out0 => open
   --     );
   --          your_instance_name : ila_0_debug_FBSM
   --       PORT MAP (
   --         clk => CLK_DATA,
   --         probe0 => s2mm_err_o
   --         --probe1 => mm2s_err_o
   --         --probe2 => imgsize_s,
   --         --probe3 => Start_Line_s(2),
   --         --probe4 => Stop_Line_s(2),
   --         --probe5 => Width_Pixel_s(2),
   --         --probe6 => std_logic_vector(write_img_loc),
   --         --probe7 => std_logic_vector(read_img_loc)
   --       );
   
   
end rtl;
