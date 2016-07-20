----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:30:40 07/14/2014 
-- Design Name: 
-- Module Name:    hex_to_7seg - Behavioral 
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

ENTITY hex_to_7seg IS
    PORT (
        clk : IN STD_LOGIC;
        hex_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        seg_ca : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        seg_an : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        t1, t2, t3, t4 : IN STD_LOGIC
    );
END hex_to_7seg;

ARCHITECTURE Behavioral OF hex_to_7seg IS
    SIGNAL count2: STD_LOGIC_VECTOR(1 DOWNTO 0) := "00";
    SIGNAL slowclk: STD_LOGIC := '0';
    SIGNAL AN: STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
    PROCESS(clk)
        VARIABLE cnt: INTEGER := 0;
    BEGIN
        IF rising_edge(clk) THEN
            cnt := cnt + 1;
            IF cnt = 500000 / 100 THEN
                slowclk <= not slowclk;
                cnt := 0;
            END IF;
        END IF;
    END PROCESS;

    PROCESS(slowclk)
    BEGIN
        IF rising_edge(slowclk) THEN
            count2 <= count2 + 1;
        END IF;
    END PROCESS;

    PROCESS(count2)
    BEGIN
        CASE count2 IS
            WHEN "00" => an <= "0111";
            WHEN "01" => an <= "1011";
            WHEN "10" => an <= "1101";
            WHEN "11" => an <= "1110";
            WHEN OTHERS => NULL;
        END CASE;
    END PROCESS;
    SEG_AN <= an;
    PROCESS(hex_in, count2, t1, t2, t3, t4)
        VARIABLE i: INTEGER;
        VARIABLE hex: STD_LOGIC_VECTOR(3 DOWNTO 0);
        VARIABLE t: STD_LOGIC_VECTOR(3 DOWNTO 0);
        VARIABLE SEG7: STD_LOGIC_VECTOR(6 DOWNTO 0);
    BEGIN
        i := 3 - conv_integer(count2);
        hex := hex_in((i * 4 + 3) DOWNTO (i * 4));
        t := t1 & t2 & t3 & t4;
        CASE hex IS
            WHEN "0000" => SEG7 := "1000000"; -- 0:C0
            WHEN "0001" => SEG7 := "1111001"; -- 1:F9
            WHEN "0010" => SEG7 := "0100100"; -- 2:A8
            WHEN "0011" => SEG7 := "0110000"; -- 3:B0
            WHEN "0100" => SEG7 := "0011001"; -- 4:99
            WHEN "0101" => SEG7 := "0010010"; -- 5:92
            WHEN "0110" => SEG7 := "0000010"; -- 6:82
            WHEN "0111" => SEG7 := "1111000"; -- 7:F8
            WHEN "1000" => SEG7 := "0000000"; -- 8:80
            WHEN "1001" => SEG7 := "0010000"; -- 9:90
            WHEN "1010" => SEG7 := "0001000"; -- A:88
            WHEN "1011" => SEG7 := "0000011"; -- B:83
            WHEN "1100" => SEG7 := "1000110"; -- C:C6
            WHEN "1101" => SEG7 := "0100001"; -- D:A1
            WHEN "1110" => SEG7 := "0000110"; -- E:86
            WHEN "1111" => SEG7 := "0001110"; -- F:8E
            WHEN OTHERS => SEG7 := "1111111";
        END CASE;
        CASE t IS
            WHEN "1000" => 
                IF AN = "0111" THEN
                    SEG_CA <= '0' & SEG7;
                ELSE SEG_CA <= '1' & SEG7;
                END IF;
            WHEN "0100" => 
                IF AN = "1011" THEN
                    SEG_CA <= '0' & SEG7;
                ELSE SEG_CA <= '1' & SEG7;
                END IF;
            WHEN "0010" => 
                IF AN = "1101" THEN
                    SEG_CA <= '0' & SEG7;
                ELSE SEG_CA <= '1' & SEG7;
                END IF;
            WHEN "0001" => 
                IF AN = "1110" THEN
                    SEG_CA <= '0' & SEG7;
                ELSE SEG_CA <= '1' & SEG7;
                END IF;
            WHEN OTHERS => NULL;
        END CASE;            
                    
    END PROCESS;

END Behavioral;

