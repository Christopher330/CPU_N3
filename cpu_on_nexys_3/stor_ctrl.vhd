----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:28:01 07/05/2014 
-- Design Name: 
-- Module Name:    stor_ctrl - Behavioral 
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
library work;
use work.opcode.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY stor_ctrl IS
	PORT (
    	CLK : IN STD_LOGIC;
    	OP : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    	Addr : IN STD_LOGIC_VECTOR(23 DOWNTO 1);
    	Rtemp : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    	Addrout : OUT STD_LOGIC_VECTOR(23 DOWNTO 1);
    	Rtempnew : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    	R, W : OUT STD_LOGIC
    );
END stor_ctrl;

ARCHITECTURE Behavioral OF stor_ctrl IS

BEGIN
	PROCESS(CLK, op)
    	VARIABLE tW, tR : STD_LOGIC;
	BEGIN
    	IF CLK'EVENT AND CLK = '1' THEN
        	CASE op IS
            	WHEN opSTA =>
                	Addrout <= Addr;
                	tW := '1';
                	tR := '0';
            	WHEN opLDA =>
                	Addrout <= Addr;
                	tW := '0';
                	tR := '1';
            	WHEN OTHERS => 
                	tW := '0';
                	tR := '0';
        	END CASE;
    	END IF;
    	R <= tR and CLK;
    	W <= tW and CLK;
	END PROCESS;
	Rtemp <= Rtempnew;
END Behavioral;

