----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:41:34 07/03/2014 
-- Design Name: 
-- Module Name:    cpu - Behavioral 
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


ENTITY cpu IS
	PORT ( 
    	RST, CLK, sysCLK : IN STD_LOGIC;
    	ABUS : OUT STD_LOGIC_VECTOR(23 DOWNTO 1);
    	DBUS : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    	nMREQ, nRD, nWR, nBHE, nBLE, FlashCE, FlashRp : OUT STD_LOGIC;
        nADV, mCLK, CRE : OUT STD_LOGIC;
        nWAIT : INOUT STD_LOGIC;
        IOAD : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
        IOin : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        IODB : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    	Cy, Z: OUT STD_LOGIC;
        PCwatch: OUT STD_LOGIC_VECTOR(23 DOWNTO 1);

    	SEG_AN : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        SEG_CA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );

END cpu;

ARCHITECTURE Behavioral OF cpu IS

	COMPONENT clock_ctrl IS
    	PORT (RST, CLK: IN STD_LOGIC;
            	t1, t2, t3, t4: OUT STD_LOGIC);
	END COMPONENT;

	COMPONENT fetch_ctrl IS
    	PORT (
        	RST, CLK : IN STD_LOGIC;
        	PCupdate : IN STD_LOGIC;
        	PCnew : IN STD_LOGIC_VECTOR(23 DOWNTO 1);
        	MAR, PCout : OUT STD_LOGIC_VECTOR(23 DOWNTO 1);
            IRout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
        	IRnew : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        	R, PCack : OUT STD_LOGIC
        );
	END COMPONENT;

	COMPONENT alu_ctrl IS
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
	END COMPONENT;

	COMPONENT stor_ctrl IS
    	PORT (
        	CLK : IN STD_LOGIC;
        	OP : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
        	Addr : IN STD_LOGIC_VECTOR(23 DOWNTO 1);
        	Rtemp : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        	Addrout : OUT STD_LOGIC_VECTOR(23 DOWNTO 1);
        	Rtempnew : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        	R, W : OUT STD_LOGIC
        );
	END COMPONENT;

	COMPONENT wrbk_ctrl IS
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
	END COMPONENT;

	COMPONENT memwr_ctrl IS
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
            nWAIT: INOUT STD_LOGIC
        );
	END COMPONENT;

	COMPONENT io_ctrl IS
    	PORT ( 
        	RW : IN STD_LOGIC;
        	IR : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        	ALUOUT : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        	DIN : IN STD_LOGIC_VECTOR(31 downto 0);
        	IOAD : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
        	IODB : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
	END COMPONENT;
  
    COMPONENT hex_to_7seg IS
        PORT (
            clk : IN STD_LOGIC;
            hex_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            seg_ca : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
            seg_an : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
            t1, t2, t3, t4 : IN STD_LOGIC
        );
    END COMPONENT;

	SIGNAL t1, t2, t3, t4 : STD_LOGIC;
	SIGNAL PCupdate, Rupdate, IRread, REGread, W, IORW, tZ, tCY, PCack : STD_LOGIC;
	SIGNAL IR, IRnew : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL PCnew, PCMAR, PC, addr, addrout : STD_LOGIC_VECTOR(23 DOWNTO 1);
	SIGNAL aluout, Rtemp, Rtempnew, Rdata, tIODB : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL Raddr: STD_LOGIC_VECTOR(2 DOWNTO 0);
BEGIN
	clock_map: clock_ctrl PORT MAP (RST, CLK, t1, t2, t3, t4);
	fetch_map: fetch_ctrl PORT MAP (RST, t1, PCupdate, PCnew, PCMAR, PC, IR, IRnew, IRread, PCack);
	alu_map: alu_ctrl PORT MAP (RST, t2, IR, aluout, addr, Rupdate, Raddr, Rdata, tCY, tZ, IORW);
	stor_map: stor_ctrl PORT MAP (t3, IR(15 DOWNTO 11), addr, Rtemp, addrout, Rtempnew, REGread, W);
	wrbk_map: wrbk_ctrl PORT MAP (t4, PC, IR, tZ, tCY, PCack, Rtemp, aluout, tIODB, addr, PCupdate, Rupdate, PCnew, Rdata, Raddr);
	memwr_map: memwr_ctrl PORT MAP (RST, PCMAR, addrout, IRnew, Rtempnew, aluout, IRread, REGread, W, ABUS, DBUS, nMREQ, nRD, nWR, nBLE, nBHE, FlashCE, FlashRp, nADV, mCLK, CRE, nWAIT);
	io_map: io_ctrl PORT MAP(IORW, IR, aluout, IOin, IOAD, tIODB);
    seg_map: hex_to_7seg PORT MAP(sysCLK, IR, SEG_CA, SEG_AN, t1, t2, t3, t4);

    IODB <= tIODB;
    PCwatch <= PC;
	Z <= tZ;
	Cy <= tCY;
END Behavioral;
