----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:27:33 07/05/2014 
-- Design Name: 
-- Module Name:    alu_ctrl - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
library work;
use work.opcode.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY alu_ctrl IS
	PORT (
    	RST, CLK : IN STD_LOGIC;
    	IR : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    	ALUOUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    	Addr : OUT STD_LOGIC_VECTOR(23 DOWNTO 1);
    	Rupdate : IN STD_LOGIC;
    	Raddr : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    	Rdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    	CY, Z : OUT STD_LOGIC;
    	IORW : OUT STD_LOGIC
    );
END alu_ctrl;

ARCHITECTURE Behavioral OF alu_ctrl IS
	TYPE reg_type IS ARRAY(7 DOWNTO 0) OF STD_LOGIC_VECTOR(7 downto 0);
	SIGNAL REG : reg_type;
BEGIN
	PROCESS(RST, CLK, IR)
    	VARIABLE op : STD_LOGIC_VECTOR(4 DOWNTO 0);
    	VARIABLE A, B : STD_LOGIC_VECTOR(7 DOWNTO 0);
    	VARIABLE A9, B9, aluout9 : STD_LOGIC_VECTOR(8 DOWNTO 0);
    	VARIABLE carry, tZ : STD_LOGIC := '0';
    	VARIABLE tIORW : STD_LOGIC;
	BEGIN
    	IF RST = '1' THEN
        	carry := '0';
        	tZ := '0';
        	tIORW := '0';
    	ELSIF CLK'EVENT AND CLK = '1' THEN
        	IORW <= '0';
        	op := IR(15 DOWNTO 11);
        	Addr <= "0000000" & REG(7) & IR(7 DOWNTO 0);
        	A := REG(conv_integer(IR(10 DOWNTO 8)));
        	B := REG(conv_integer(IR(2 DOWNTO 0)));
        	A9(7 DOWNTO 0) := A; A9(8) := '0';
        	B9(7 DOWNTO 0) := B; B9(8) := '0';
        	CASE op IS
            	WHEN opADD => 
                	aluout9 := A9 + B9 + carry; 
                	IF aluout9 = "000000000" THEN tz := '1'; ELSE tz := '0'; END IF; 
                	tIORW := '0';
            	WHEN opSUB => 
                	aluout9 := A9 - B9 - carry; 
                	IF aluout9 = "000000000" THEN tz := '1'; ELSE tz := '0'; END IF; 
                	tIORW := '0';
            	WHEN opMVI =>
                	aluout9 := carry & IR(7 DOWNTO 0); tIORW := '0';
            	WHEN opMOV =>
                	aluout9 := carry & B; tIORW := '0';
            	WHEN opJZ =>
                	aluout9 := carry & A; tIORW := '0';
            	WHEN opSTA =>
                	aluout9 := carry & A; tIORW := '0';
            	WHEN opOUT =>
                	aluout9 := carry & A; tIORW := '1';
            	WHEN opIN =>
                	aluout9 := carry & A; tIORW := '1';
            	WHEN OTHERS => NULL;
        	END CASE;
        	aluout <= aluout9(7 DOWNTO 0);
        	carry := aluout9(8);
    	END IF;
    	IORW <= tIORW AND CLK;
    	cy <= carry;
    	Z <= tZ;
	END PROCESS;

	PROCESS(RST, Rupdate)
	BEGIN
    	IF RST = '1' THEN
        	REG <= (OTHERS => "00000000");
    	ELSIF Rupdate = '1' THEN
        	REG(conv_integer(IR(10 DOWNTO 8))) <= Rdata;
    	END IF;
	END PROCESS;
    
END Behavioral;

