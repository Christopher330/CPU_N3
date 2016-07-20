--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:02:47 07/14/2014
-- Design Name:   
-- Module Name:   G:/hwpractice/cpu_on_nexys_3/hex_to_7seg_tb.vhd
-- Project Name:  cpu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: hex_to_7seg
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY hex_to_7seg_tb IS
END hex_to_7seg_tb;
 
ARCHITECTURE behavior OF hex_to_7seg_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT hex_to_7seg
    PORT(
         clk : IN  std_logic;
         hex_in : IN  std_logic_vector(15 downto 0);
         seg_ca : OUT  std_logic_vector(7 downto 0);
         seg_an : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal hex_in : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal seg_ca : std_logic_vector(7 downto 0);
   signal seg_an : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 0.01 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: hex_to_7seg PORT MAP (
          clk => clk,
          hex_in => hex_in,
          seg_ca => seg_ca,
          seg_an => seg_an
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 
      hex_in <= x"4700";
      wait for clk_period*100;
      hex_in <= x"A0FF";
      wait;
   end process;

END;
