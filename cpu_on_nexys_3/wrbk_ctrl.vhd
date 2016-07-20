----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:28:19 07/05/2014 
-- Design Name: 
-- Module Name:    wrbk_ctrl - Behavioral 
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
library work;
use work.opcode.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY wrbk_ctrl IS
	PORT (
    	CLK : IN STD_LOGIC;
    	PC : IN STD_LOGIC_VECTOR(23 DOWNTO 1);
        IR : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    	Z, CY, PCack : IN STD_LOGIC;
    	Rtemp, ALUOUT, IODB : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    	Addr : IN STD_LOGIC_VECTOR(23 DOWNTO 1);
    	PCupdate, Rupdate : OUT STD_LOGIC;
    	PCnew : OUT STD_LOGIC_VECTOR(23 DOWNTO 1);
    	Rdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    	Raddr : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
    );
END wrbk_ctrl;

ARCHITECTURE Behavioral OF wrbk_ctrl IS
	SIGNAL PCnewadr : STD_LOGIC_VECTOR(23 DOWNTO 1);
BEGIN
	PROCESS(CLK, IR, IODB, ALUOUT, PC)
    	VARIABLE op : STD_LOGIC_VECTOR(4 DOWNTO 0);
    	VARIABLE tRupdate, tPCupdate : STD_LOGIC;
	BEGIN
    	CASE IR(7) IS
        	WHEN '0' =>
            	PCnewadr <= "000000000000000" & IR(7 DOWNTO 0);
        	WHEN '1' =>
            	PCnewadr <= "111111111111111" & IR(7 DOWNTO 0);
        	WHEN OTHERS => NULL;
    	END CASE;
    	IF PCack = '1' THEN
        	tPCupdate := '0';
    	ELSIF CLK'EVENT AND CLK = '1' THEN
        	tRupdate := '0';
        	tPCupdate := '0';
        	op := IR(15 DOWNTO 11);
        	CASE op IS
            	WHEN opLDA =>
                	Raddr <= IR(10 DOWNTO 8);
                	Rdata <= Rtemp;
                	tRupdate := '1';
            	WHEN opIN =>
                	Raddr <= IR(10 DOWNTO 8);
                	Rdata <= IODB;
                	tRupdate := '1';
            	WHEN opADD | opSUB | opMVI | opMOV =>
                	Raddr <= IR(10 DOWNTO 8);
                	Rdata <= aluout;
                	tRupdate := '1';
            	WHEN opJMP =>
                	PCnew <= Addr;
                	tPCupdate := '1';
            	WHEN opJZ =>
                	IF Z = '1' THEN
                    	PCnew <= PC + PCnewadr;
                    	tPCupdate := '1';
                	ELSE
                    	tPCupdate := '0';
                	END IF;
            	WHEN opJC =>
                	IF CY = '1' THEN
                    	PCnew <= PC + PCnewadr;
                    	tPCupdate := '1';
                	ELSE
                    	tPCupdate := '0';
                	END IF;    
            	WHEN OTHERS =>
                	tRupdate := '0';
                	tPCupdate := '0';
        	END CASE;
    	END IF;
    	Rupdate <= tRupdate and clk;
    	PCupdate <= tPCupdate and clk;
	END PROCESS;
END Behavioral;
