--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:29:42 07/09/2014
-- Design Name:   
-- Module Name:   G:/cpu/memwr_ctrl_tb.vhd
-- Project Name:  cpu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: memwr_ctrl
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports OF the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O OF a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY memwr_ctrl_tb IS
END memwr_ctrl_tb;
 
ARCHITECTURE behavior OF memwr_ctrl_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT memwr_ctrl
    PORT(
         RST : IN  std_logic;
         PC : IN  std_logic_vector(15 downto 0);
         Addr : IN  std_logic_vector(15 downto 0);
         IRout : OUT  std_logic_vector(15 downto 0);
         Rtemp : OUT  std_logic_vector(7 downto 0);
         ALUOUT : IN  std_logic_vector(7 downto 0);
         IRread : IN  std_logic;
         REGread : IN  std_logic;
         W : IN  std_logic;
         ABUS : OUT  std_logic_vector(15 downto 0);
         DBUS : INOUT  std_logic_vector(15 downto 0);
         WR : OUT  std_logic;
         RD : OUT  std_logic;
         CS : OUT  std_logic;
         BH : OUT  std_logic;
         BL : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal RST : std_logic := '0';
   signal PC : std_logic_vector(15 downto 0) := (others => '0');
   signal Addr : std_logic_vector(15 downto 0) := (others => '0');
   signal ALUOUT : std_logic_vector(7 downto 0) := (others => '0');
   signal IRread : std_logic := '0';
   signal REGread : std_logic := '0';
   signal W : std_logic := '0';

    --BiDirs
   signal DBUS : std_logic_vector(15 downto 0);

     --Outputs
   signal IRout : std_logic_vector(15 downto 0);
   signal Rtemp : std_logic_vector(7 downto 0);
   signal ABUS : std_logic_vector(15 downto 0);
   signal WR : std_logic;
   signal RD : std_logic;
   signal CS : std_logic;
   signal BH : std_logic;
   signal BL : std_logic;

   constant clk_period : time := 10 ns;
 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
   uut: memwr_ctrl PORT MAP (
          RST => RST,
          PC => PC,
          Addr => Addr,
          IRout => IRout,
          Rtemp => Rtemp,
          ALUOUT => ALUOUT,
          IRread => IRread,
          REGread => REGread,
          W => W,
          ABUS => ABUS,
          DBUS => DBUS,
          WR => WR,
          RD => RD,
          CS => CS,
          BH => BH,
          BL => BL
        );

   -- Stimulus process
   stim_proc: process
   BEGIN	    
      -- hold reset state for 100 ns.
      wait for 100 ns;    

      wait for clk_period*10;
    	Dbus <= "0100010001000010";
    	wait for clk_period;
    	PC <= "0100010000000000";
    	IRread <= '1';
        
    	wait for clk_period;
    	Dbus <= (others => 'Z');
    	IRread <= '0';
    	wait for clk_period;
        
    	Addr <= "1000100010001000";
    	REGread <= '1';
    	Dbus <= "1111111100001111";
    	wait for clk_period;
    	Dbus <= (others => 'Z');
    	REGread <= '0';
    	wait for clk_period;
        
    	W <= '1';
    	aluout <= "01000100";
    	wait for clk_period;
    	W <= '0';
    	wait for clk_period;

    	Dbus <= "1111111111111111";
    	PC <= "0100010000000000";
    	IRread <= '1';
        
      -- insert stimulus here 

      wait;
   END process;

END;
