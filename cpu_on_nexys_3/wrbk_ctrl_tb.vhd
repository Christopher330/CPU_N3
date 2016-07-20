--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:27:50 07/13/2014
-- Design Name:   
-- Module Name:   G:/cpu/wrbk_ctrl_tb.vhd
-- Project Name:  cpu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: wrbk_ctrl
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
 
ENTITY wrbk_ctrl_tb IS
END wrbk_ctrl_tb;
 
ARCHITECTURE behavior OF wrbk_ctrl_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT wrbk_ctrl
    PORT(
         CLK : IN  std_logic;
         PC : IN  std_logic_vector(15 downto 0);
         IR : IN  std_logic_vector(15 downto 0);
         Z : IN  std_logic;
         CY : IN  std_logic;
         PCack : IN  std_logic;
         Rtemp : IN  std_logic_vector(7 downto 0);
         ALUOUT : IN  std_logic_vector(7 downto 0);
         IODB : IN  std_logic_vector(7 downto 0);
         Addr : IN  std_logic_vector(15 downto 0);
         PCupdate : OUT  std_logic;
         Rupdate : OUT  std_logic;
         PCnew : OUT  std_logic_vector(15 downto 0);
         Rdata : OUT  std_logic_vector(7 downto 0);
         Raddr : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal PC : std_logic_vector(15 downto 0) := (others => '0');
   signal IR : std_logic_vector(15 downto 0) := (others => '0');
   signal Z : std_logic := '0';
   signal CY : std_logic := '0';
   signal PCack : std_logic := '0';
   signal Rtemp : std_logic_vector(7 downto 0) := (others => '0');
   signal ALUOUT : std_logic_vector(7 downto 0) := (others => '0');
   signal IODB : std_logic_vector(7 downto 0) := (others => '0');
   signal Addr : std_logic_vector(15 downto 0) := (others => '0');

     --Outputs
   signal PCupdate : std_logic;
   signal Rupdate : std_logic;
   signal PCnew : std_logic_vector(15 downto 0);
   signal Rdata : std_logic_vector(7 downto 0);
   signal Raddr : std_logic_vector(2 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
   uut: wrbk_ctrl PORT MAP (
          CLK => CLK,
          PC => PC,
          IR => IR,
          Z => Z,
          CY => CY,
          PCack => PCack,
          Rtemp => Rtemp,
          ALUOUT => ALUOUT,
          IODB => IODB,
          Addr => Addr,
          PCupdate => PCupdate,
          Rupdate => Rupdate,
          PCnew => PCnew,
          Rdata => Rdata,
          Raddr => Raddr
        );

   -- Clock process definitions
   CLK_process :process
   begin
    	CLK <= '0';
    	wait for CLK_period/2;
    	CLK <= '1';
    	wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin	    
      -- hold reset state for 100 ns.
      wait for 100 ns;    

      wait for CLK_period*10;
    	PC <= "0000000100000001";
        -- LDA R1, 52H
    	Rtemp <= "11110011";
    	IR <= "0111000101010010";
    	wait for clk_period * 4;
        -- ADD R2, R0
    	IR <= "0011001000000000";
    	aluout <= "00010001";
    	wait for clk_period * 4;
        -- JMP 52H
    	IR <= "0000000001010010";
    	wait for clk_period * 4;
        -- JZ R1, 80H
    	aluout <= "00000000";
    	IR <= "0001000110000000";
    	wait for CLK_period * 4;
      -- insert stimulus here 

      wait;
   end process;

END;
