--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:31:06 07/08/2014
-- Design Name:   
-- Module Name:   G:/cpu/stor_ctrl_tb.vhd
-- Project Name:  cpu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: stor_ctrl
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
 
ENTITY stor_ctrl_tb IS
END stor_ctrl_tb;
 
ARCHITECTURE behavior OF stor_ctrl_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT stor_ctrl
    PORT(
         CLK : IN  std_logic;
         OP : IN  std_logic_vector(4 downto 0);
         Addr : IN  std_logic_vector(15 downto 0);
         Rtemp : OUT  std_logic_vector(7 downto 0);
         Addrout : OUT  std_logic_vector(15 downto 0);
         Rtempnew : IN  std_logic_vector(7 downto 0);
         R : OUT  std_logic;
         W : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal OP : std_logic_vector(4 downto 0) := (others => '0');
   signal Addr : std_logic_vector(15 downto 0) := (others => '0');
   signal Rtempnew : std_logic_vector(7 downto 0) := (others => '0');

     --Outputs
   signal Rtemp : std_logic_vector(7 downto 0);
   signal Addrout : std_logic_vector(15 downto 0);
   signal R : std_logic;
   signal W : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
   uut: stor_ctrl PORT MAP (
          CLK => CLK,
          OP => OP,
          Addr => Addr,
          Rtemp => Rtemp,
          Addrout => Addrout,
          Rtempnew => Rtempnew,
          R => R,
          W => W
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
      -- hold reset state for 100 ns.
      wait for 100 ns;    

      wait for CLK_period*10;

      -- insert stimulus here 
        -- STA R1, 10H
    	OP <= "01100";
    	Addr <= "0000000000010000";
    	wait for clk_period;
        -- LDA R3, 10H
    	OP <= "01110";
    	Addr <= "0000000000010000";
    	Rtempnew <= "10101010";
    	wait for clk_period;
      wait;
   END process;

END;
