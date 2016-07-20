--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:25:21 07/19/2014
-- Design Name:   
-- Module Name:   G:/hwpractice/cpu_on_nexys_3/cpu_tb.vhd
-- Project Name:  cpu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: cpu
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
 
ENTITY cpu_tb IS
END cpu_tb;
 
ARCHITECTURE behavior OF cpu_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT cpu
    PORT(
         RST : IN  std_logic;
         CLK : IN  std_logic;
         sysCLK : IN  std_logic;
         ABUS : OUT  std_logic_vector(23 downto 1);
         DBUS : INOUT  std_logic_vector(15 downto 0);
         nMREQ : OUT  std_logic;
         nRD : OUT  std_logic;
         nWR : OUT  std_logic;
         nBHE : OUT  std_logic;
         nBLE : OUT  std_logic;
         FlashCE : OUT  std_logic;
         FlashRp : OUT  std_logic;
         nADV : OUT  std_logic;
         mCLK : OUT  std_logic;
         CRE : OUT  std_logic;
         nWAIT : INOUT  std_logic;
         IOAD : OUT  std_logic_vector(1 downto 0);
         IOin : IN  std_logic_vector(31 downto 0);
         IODB : OUT  std_logic_vector(7 downto 0);
         Cy : OUT  std_logic;
         Z : OUT  std_logic;
         PCwatch : OUT  std_logic_vector(23 downto 1);
         SEG_AN : OUT  std_logic_vector(3 downto 0);
         SEG_CA : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal RST : std_logic := '1';
   signal CLK : std_logic := '0';
   signal sysCLK : std_logic := '0';
   signal IOin : std_logic_vector(31 downto 0) := (others => '0');

	--BiDirs
   signal DBUS : std_logic_vector(15 downto 0);
   signal nWAIT : std_logic;

 	--Outputs
   signal ABUS : std_logic_vector(23 downto 1);
   signal nMREQ : std_logic;
   signal nRD : std_logic;
   signal nWR : std_logic;
   signal nBHE : std_logic;
   signal nBLE : std_logic;
   signal FlashCE : std_logic;
   signal FlashRp : std_logic;
   signal nADV : std_logic;
   signal mCLK : std_logic;
   signal CRE : std_logic;
   signal IOAD : std_logic_vector(1 downto 0);
   signal IODB : std_logic_vector(7 downto 0);
   signal Cy : std_logic;
   signal Z : std_logic;
   signal PCwatch : std_logic_vector(23 downto 1);
   signal SEG_AN : std_logic_vector(3 downto 0);
   signal SEG_CA : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
   constant sysCLK_period : time := 10 ps;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: cpu PORT MAP (
          RST => RST,
          CLK => CLK,
          sysCLK => sysCLK,
          ABUS => ABUS,
          DBUS => DBUS,
          nMREQ => nMREQ,
          nRD => nRD,
          nWR => nWR,
          nBHE => nBHE,
          nBLE => nBLE,
          FlashCE => FlashCE,
          FlashRp => FlashRp,
          nADV => nADV,
          mCLK => mCLK,
          CRE => CRE,
          nWAIT => nWAIT,
          IOAD => IOAD,
          IOin => IOin,
          IODB => IODB,
          Cy => Cy,
          Z => Z,
          PCwatch => PCwatch,
          SEG_AN => SEG_AN,
          SEG_CA => SEG_CA
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '1';
		wait for CLK_period/2;
		CLK <= '0';
		wait for CLK_period/2;
   end process;
 
   sysCLK_process :process
   begin
		sysCLK <= '1';
		wait for sysCLK_period/2;
		sysCLK <= '0';
		wait for sysCLK_period/2;
   end process;

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_period*10;

      -- insert stimulus here 

      -- insert stimulus here 
        --Address     Instruction     Assembly        Note
        -----------------------------------------------------------------
        --0x0000h     4700            MVI R7,00h      R7 = 00h
        --0x0001h     67A0            STA R7,A0h      [00A0] = R7 = XX00h
        --0x0002h     41AE            MVI R1,AEh      R1 = AEh
        --0x0003h     4000            MVI R0,00h      R0 = 00h
        --0x0004h     5201            MOV R2,R1       R2 = R1 = AEh
        --0x0005h     62A1            STA R2,A1h      [00A1] = R2 = XXAEh
        --0x0006h     3102            ADD R1,R2       R1 = R1 + R2 + Cy = 5Ch, Cy = 1
        --0x0007h     61A2            STA R1,A2h      [00A2] = R1 = XX5Ch
        --0x0008h     3707            ADD R7,R7       R7 = R7 + R7 + Cy = 01h, Cy = 0
        --0x0009h     75A1            LDA R5,A8h      R5 = [01A8]
        --0x000Ah     65A3            STA R5,A3h      [01A3] = R5
        --0x000Bh     2505            SUB R5,R5       R5 = R5 - R5 - Cy = 0, Z = 1
        --0x000Ch     65A4            STA R5,A4h      [01A4] = R5
        --0x000Dh     9100            IN R1,0         R1 = [PORT = 0]
        --0x000Eh     61A5            STA R1,A5h      [01A5] = R1
        --0x000Fh     8201            OUT R2,1        [PORT = 1] = R2 = XXAEh
        --0x0010h     1511            JZ R5,11h       PC = 0011h + 0011h = 0022h
        --...         ...
        --0x0019h     4700            MVI R7,00h      R7 = 00h
        --0x0020h     0000            JMP 00h         PC = 0000h
        --...         ...
        --0x0022h     3202            ADD R2,R2       Cy = 1
        --0x0023h     A0F5            JC F5h          PC = 0024h + FFF5h = 0019h

    	RST <= '0';

    	dbus <= x"4700";
    	wait for clk_period;
    	dbus <= (others => 'Z');
    	wait for clk_period * 3;

    	dbus <= x"41AE";
    	wait for clk_period;
    	dbus <= (others => 'Z');
    	wait for clk_period * 3;

    	dbus <= x"5201";
    	wait for clk_period;
    	dbus <= (others => 'Z');
    	wait for clk_period * 3;

    	dbus <= x"3102";
    	wait for clk_period;
    	dbus <= (others => 'Z');
    	wait for clk_period * 3;

    	dbus <= x"3707";
    	wait for clk_period;
    	dbus <= (others => 'Z');
    	wait for clk_period * 3;

    	dbus <= x"75A1";
    	wait for clk_period;
    	dbus <= (others => 'Z');
    	wait for clk_period;
    	dbus <= x"8782";        
    	wait for clk_period * 2;

    	dbus <= x"65A3";
    	wait for clk_period;
    	dbus <= (others => 'Z');
    	wait for clk_period * 3;

    	dbus <= x"2505";
    	wait for clk_period;
    	dbus <= (others => 'Z');
    	wait for clk_period * 3;
        
    	dbus <= x"9100";
    	IOin <= "00000000000000001010100000101011";
    	wait for clk_period;
    	dbus <= (others => 'Z');
    	wait for clk_period * 3;

    	dbus <= x"8201";
    	wait for clk_period;
    	dbus <= (others => 'Z');
    	wait for clk_period * 3;

    	dbus <= x"1511";
    	wait for clk_period;
    	dbus <= (others => 'Z');
    	wait for clk_period * 3;

    	dbus <= x"3202";
    	wait for clk_period;
    	dbus <= (others => 'Z');
    	wait for clk_period * 3;

    	dbus <= x"A0F5";
    	wait for clk_period;
    	dbus <= (others => 'Z');
    	wait for clk_period * 3;

    	dbus <= x"4700";
    	wait for clk_period;
    	dbus <= (others => 'Z');
    	wait for clk_period * 3;

    	dbus <= x"0000";
    	wait for clk_period;
    	dbus <= (others => 'Z');
    	wait for clk_period * 3;
        
    	wait for clk_period * 4;
    	RST <= '1';
    	wait for clk_period;
    	RST <= '0';
      wait;
   end process;

END;
