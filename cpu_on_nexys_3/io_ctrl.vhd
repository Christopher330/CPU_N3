----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:38:45 07/06/2014 
-- Design Name: 
-- Module Name:    io_ctrl - Behavioral 
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

ENTITY io_ctrl IS
	PORT (
    	RW : IN STD_LOGIC;
    	IR : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    	ALUOUT : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    	DIN : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    	IOAD : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    	IODB : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
END io_ctrl;

ARCHITECTURE Behavioral OF io_ctrl IS

BEGIN
	PROCESS(RW, ALUOUT, DIN, IR)
        VARIABLE op : STD_LOGIC_VECTOR(4 DOWNTO 0);
        VARIABLE ad : INTEGER;
	BEGIN
    	IF RW'EVENT AND RW = '1' THEN
        	IOAD <= "00";
        	op := IR(15 DOWNTO 11);
        	ad := conv_integer(IR(1 DOWNTO 0));
        	CASE op IS
            	WHEN opOUT => 
                	IOAD <= IR(1 DOWNTO 0);
                	IODB <= aluout;
            	WHEN opIN =>
                	IOAD <= IR(1 DOWNTO 0);
                	IODB <= DIN((ad * 8 + 7) DOWNTO (ad * 8));
            	WHEN OTHERS => NULL;
        	END CASE;
    	END IF;
	END PROCESS;
END Behavioral;

