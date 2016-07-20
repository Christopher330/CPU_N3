--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:35:46 07/08/2014
-- Design Name:   
-- Module Name:   G:/cpu/fetch_ctrl_tb.vhd
-- Project Name:  cpu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fetch_ctrl
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
 
ENTITY fetch_ctrl_tb IS
END fetch_ctrl_tb;
 
ARCHITECTURE behavior OF fetch_ctrl_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fetch_ctrl
    PORT(
         RST : IN  std_logic;
         CLK : IN  std_logic;
         PCupdate : IN  std_logic;
         PCnew : IN  std_logic_vector(15 downto 0);
         MAR : OUT  std_logic_vector(15 downto 0);
         PCout : OUT  std_logic_vector(15 downto 0);
         IRout : OUT  std_logic_vector(15 downto 0);
         IRnew : IN  std_logic_vector(15 downto 0);
         R : OUT  std_logic;
        	PCack : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal RST : std_logic := '1';
   signal CLK : std_logic := '0';
   signal PCupdate : std_logic := '0';
   signal PCnew : std_logic_vector(15 downto 0) := (others => '0');
   signal IRnew : std_logic_vector(15 downto 0) := (others => '0');

     --Outputs
   signal MAR : std_logic_vector(15 downto 0);
   signal PCout : std_logic_vector(15 downto 0);
   signal IRout : std_logic_vector(15 downto 0);
   signal R : std_logic;
	signal PCack : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
   uut: fetch_ctrl PORT MAP (
          RST => RST,
          CLK => CLK,
          PCupdate => PCupdate,
          PCnew => PCnew,
          MAR => MAR,
          PCout => PCout,
          IRout => IRout,
          IRnew => IRnew,
          R => R,
             PCack => PCack
        );

   -- Clock process definitions
   CLK_process :process
   BEGIN
    	CLK <= '1';
    	wait for CLK_period/2;
    	CLK <= '0';
    	wait for CLK_period/2;
   END process;
 

   -- Stimulus process
   stim_proc: process
   BEGIN	    
      -- hold reset state for 100 ns.
      wait for 100 ns;    

      wait for CLK_period*10;

      -- insert stimulus here 
    	RST <= '0';
    	PCupdate <= '0';
    	IRnew <= "0011000100000000";
    	wait for clk_period;
    	IRnew <= (others => 'Z');
    	wait for clk_period*3;
    	IRnew <= "0010000100000000";
    	wait for clk_period;
    	IRnew <= (others => 'Z');
    	wait for clk_period*3;
    	Pcupdate <= '1';
    	PCnew <= "1111111111111111";
      wait;
   END process;

END;
