----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:26:43 07/05/2014 
-- Design Name: 
-- Module Name:    fetch_ctrl - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY fetch_ctrl IS
	PORT (
    	RST, CLK : IN STD_LOGIC;
    	PCupdate : IN STD_LOGIC;
    	PCnew : IN STD_LOGIC_VECTOR(23 DOWNTO 1);
    	MAR, PCout : OUT STD_LOGIC_VECTOR(23 DOWNTO 1);
        IRout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    	IRnew : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    	R, PCack : OUT STD_LOGIC
    );
END fetch_ctrl;

ARCHITECTURE Behavioral OF fetch_ctrl IS
	SIGNAL PC : STD_LOGIC_VECTOR(23 DOWNTO 1) := (OTHERS => '0');
    SIGNAL IR : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
    
BEGIN
	PROCESS(RST, CLK, PCupdate, PCnew, IRnew)
    	VARIABLE PCtemp : STD_LOGIC_VECTOR(23 DOWNTO 1) := (OTHERS => '0');
    	VARIABLE isJMP : BOOLEAN;
	BEGIN
    	R <= CLK;
    	PCack <= '0';
    	IF RST = '1' THEN
        	R <= '0';
        	PCtemp := (others => '0');
        	MAR <= (others => '0');
    	ELSIF CLK'EVENT AND CLK = '1' THEN
        	MAR <= PCtemp;
        	PCtemp := PCtemp + 1;
    	END IF;
        
    	IF PCupdate = '1' AND CLK = '0' THEN
        	PCtemp := PCnew;
        	PCack <= '1';
    	END IF;
        
    	PC <= PCtemp;
    	IR <= IRnew;
	END PROCESS;
	IRout <= IR;
	PCout <= PC;
END Behavioral;

