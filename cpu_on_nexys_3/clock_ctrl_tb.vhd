--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:24:27 07/05/2014
-- Design Name:   
-- Module Name:   G:/hwpractice/cpu/clock_ctrl_tb.vhd
-- Project Name:  cpu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: clock_ctrl
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
 
ENTITY clock_ctrl_tb IS
END clock_ctrl_tb;
 
ARCHITECTURE behavior OF clock_ctrl_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT clock_ctrl
    PORT(
         RST : IN  std_logic;
         CLK : IN  std_logic;
         t1 : OUT  std_logic;
         t2 : OUT  std_logic;
         t3 : OUT  std_logic;
         t4 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal RST : std_logic := '1';
   signal CLK : std_logic := '0';

     --Outputs
   signal t1 : std_logic;
   signal t2 : std_logic;
   signal t3 : std_logic;
   signal t4 : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
   uut: clock_ctrl PORT MAP (
          RST => RST,
          CLK => CLK,
          t1 => t1,
          t2 => t2,
          t3 => t3,
          t4 => t4
        );

   -- Clock process definitions
   CLK_process :process
   BEGIN
    	CLK <= '0';
    	wait for CLK_period/2;
    	CLK <= '1';
    	wait for CLK_period/2;
   END process;
 

   -- Stimulus process
   stim_proc: process
   BEGIN	    
      -- hold RST state for 100 ns.
      wait for 100 ns;    

      wait for CLK_period*10;

      -- insert stimulus here 
    	RST <= '0';
      wait;
   END process;

END;
