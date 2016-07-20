----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:28:53 07/05/2014 
-- Design Name: 
-- Module Name:    memwr_ctrl - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY memwr_ctrl IS
	PORT (
    	RST : IN STD_LOGIC;
    	PC, Addr : IN STD_LOGIC_VECTOR(23 DOWNTO 1);
    	IRout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    	Rtemp : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    	ALUOUT : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    	IRread, REGread, W : IN STD_LOGIC;
        --Cellular RAM Interface
    	ABUS : OUT STD_LOGIC_VECTOR(23 DOWNTO 1);
    	DBUS : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    	nCE, nOE, nWE, nLB, nUB : OUT STD_LOGIC;
        FlashCE, FlashRp : OUT STD_LOGIC;
        nADV, mCLK, CRE : OUT STD_LOGIC;
        nWAIT : INOUT STD_LOGIC
    );
END memwr_ctrl;

ARCHITECTURE Behavioral OF memwr_ctrl IS

BEGIN
	PROCESS(RST, PC, Addr, IRread, REGread, W, aluout)
    	VARIABLE ctrl : STD_LOGIC_VECTOR(2 DOWNTO 0);
	BEGIN
        FlashRp <= '1';
        IF RST = '1' THEN
            nCE <= '1';
            FlashCE <= '1';
            nOE <= '1';
            nWE <= '1';
            nLB <= '1';
            nUB <= '1';
            nADV <= '0';
            mCLK <= '0';
            CRE <= '0';
        ELSE
            ctrl := IRread & REGread & W;
        	CASE ctrl IS
            	WHEN "100" =>   --read16
                    FlashCE <= '0';
                    nCE <= '1';
                    nOE <= '0';
                    nWE <= '1';
                    nLB <= '0';
                    nUB <= '0';
                    nADV <= '0';
                    mCLK <= '0';
                    ABUS <= PC;
                    DBUS <= (others => 'Z');
                    IRout <= DBUS;
            	WHEN "010" =>   --read8
                    FlashCE <= '1';
                    nCE <= '0';
                    nOE <= '0';
                    nWE <= '1';
                    nLB <= '0';
                    nUB <= '1';
                    nADV <= '0';
                    mCLK <= '0';
                    CRE <= '0';
                    ABUS <= Addr;
                    DBUS <= (others => 'Z');
                    Rtemp <= DBUS(7 downto 0);                  
            	WHEN "001" =>   --write8
                    FlashCE <= '1';
                    nCE <= '0';
                    nOE <= '1';
                    nWE <= '0';
                    nLB <= '0';
                    nUB <= '1';
                    nADV <= '0';
                    mCLK <= '0';
                    CRE <= '0';
                    ABUS <= Addr;
                    DBUS <= aluout & aluout;
            	WHEN OTHERS =>  --idle
                    FlashCE <= '1';
                    nCE <= '1';
                    nOE <= '1';
                    nWE <= '1';
                    nLB <= '1';
                    nUB <= '1';
                    nADV <= '0';
                    mCLK <= '0';
                    CRE <= '0';
        	END CASE;
    	END IF;

	END PROCESS;
END Behavioral;

