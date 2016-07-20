----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:23:37 07/05/2014 
-- Design Name: 
-- Module Name:    clock_ctrl - Behavioral 
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

ENTITY clock_ctrl IS
	PORT (RST, CLK : IN STD_LOGIC;
           t1, t2, t3, t4 : OUT STD_LOGIC);
END clock_ctrl;

ARCHITECTURE Behavioral OF clock_ctrl IS
	SIGNAL t: STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
	PROCESS(rst, clk, t)
	BEGIN
    	IF rst = '1' THEN
        	t <= "1000";
        	t1 <= '0';
        	t2 <= '0';
        	t3 <= '0';
        	t4 <= '0';
    	ELSIF clk'event AND clk = '1' THEN
        	t(2 DOWNTO 0) <= t(3 DOWNTO 1);
        	t(3) <= t(0);
        	t1 <= t(3);
        	t2 <= t(2);
        	t3 <= t(1);
        	t4 <= t(0);
    	END IF;
	END PROCESS;

END Behavioral;

