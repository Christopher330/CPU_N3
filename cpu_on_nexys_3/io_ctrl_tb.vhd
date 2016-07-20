--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:05:14 07/10/2014
-- Design Name:   
-- Module Name:   G:/cpu/io_ctrl_tb.vhd
-- Project Name:  cpu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: io_ctrl
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
 
ENTITY io_ctrl_tb IS
END io_ctrl_tb;
 
ARCHITECTURE behavior OF io_ctrl_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT io_ctrl
    PORT(
         RW : IN  std_logic;
         IR : IN  std_logic_vector(15 downto 0);
         ALUOUT : IN  std_logic_vector(7 downto 0);
         DIN : IN  std_logic_vector(31 downto 0);
         IOAD : OUT  std_logic_vector(1 downto 0);
         IODB : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal RW : std_logic := '0';
   signal IR : std_logic_vector(15 downto 0) := (others => '0');
   signal ALUOUT : std_logic_vector(7 downto 0) := (others => '0');
   signal DIN : std_logic_vector(31 downto 0) := (others => '0');

     --Outputs
   signal IOAD : std_logic_vector(1 downto 0);
   signal IODB : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clk_period : time := 10 ns;
 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
   uut: io_ctrl PORT MAP (
          RW => RW,
          IR => IR,
          ALUOUT => ALUOUT,
          DIN => DIN,
          IOAD => IOAD,
          IODB => IODB
        );

   -- Stimulus process
   stim_proc: process
   BEGIN	    
      -- hold reset state for 100 ns.
      wait for 100 ns;    

      wait for clk_period*10;
    	RW <= '1';
    	IR <= "1001000100000000";
    	DIN <= "00000000000000001010100000111010";
    	wait for clk_period;
    	RW <= '0';
    	wait for clk_period;
    	RW <= '1';
    	IR <= "1000001000000000";
    	ALUOUT <= "10101100";        
      -- insert stimulus here 

      wait;
   END process;

END;
