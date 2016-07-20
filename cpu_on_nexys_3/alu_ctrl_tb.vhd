--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:28:42 07/09/2014
-- Design Name:   
-- Module Name:   G:/cpu/alu_ctrl_tb.vhd
-- Project Name:  cpu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: alu_ctrl
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
 
ENTITY alu_ctrl_tb IS
END alu_ctrl_tb;
 
ARCHITECTURE behavior OF alu_ctrl_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT alu_ctrl
    PORT(
        	RST : IN  std_logic;
         CLK : IN  std_logic;
         IR : IN  std_logic_vector(15 downto 0);
         ALUOUT : OUT  std_logic_vector(7 downto 0);
         Addr : OUT  std_logic_vector(15 downto 0);
         Rupdate : IN  std_logic;
         Raddr : IN  std_logic_vector(2 downto 0);
         Rdata : IN  std_logic_vector(7 downto 0);
         CY : OUT  std_logic;
         Z : OUT  std_logic;
         IORW : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
	signal RST : std_logic := '1';
   signal CLK : std_logic := '0';
   signal IR : std_logic_vector(15 downto 0) := (others => '0');
   signal Rupdate : std_logic := '0';
   signal Raddr : std_logic_vector(2 downto 0) := (others => '0');
   signal Rdata : std_logic_vector(7 downto 0) := (others => '0');

     --Outputs
   signal ALUOUT : std_logic_vector(7 downto 0);
   signal Addr : std_logic_vector(15 downto 0);
   signal CY : std_logic;
   signal Z : std_logic;
   signal IORW : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
   uut: alu_ctrl PORT MAP (
             RST => RST,
          CLK => CLK,
          IR => IR,
          ALUOUT => ALUOUT,
          Addr => Addr,
          Rupdate => Rupdate,
          Raddr => Raddr,
          Rdata => Rdata,
          CY => CY,
          Z => Z,
          IORW => IORW
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
    	rst <= '0';
      -- insert stimulus here 

        -- ADD R1, R0
    	IR <= "0011000100000000";
    	wait for CLK_period * 4;
        -- SUB R3, R2
    	IR <= "0010001100000010";
    	wait for CLK_period * 4;
        -- MVI R0, A6H
    	IR <= "0100000010100110";
    	wait for CLK_period * 4;
        -- MOV R5, R2
    	IR <= "0101010100000010";
    	wait for CLK_period * 4;
        -- JZ R1, 08H
    	IR <= "0001000100001000";
    	wait for CLK_period * 4;
        -- STA R3, 02H
    	IR <= "0110001100000010";
    	wait for CLK_period * 4;
      wait;
   END process;

END;
