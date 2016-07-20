--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--         constants, and functions 
--
--   To use any OF the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package opcode IS
	CONSTANT opJMP : STD_LOGIC_VECTOR(4 DOWNTO 0) := "00000";
	CONSTANT opJZ	: STD_LOGIC_VECTOR(4 DOWNTO 0) := "00010";
	CONSTANT opSUB : STD_LOGIC_VECTOR(4 DOWNTO 0) := "00100";
	CONSTANT opADD : STD_LOGIC_VECTOR(4 DOWNTO 0) := "00110";
	CONSTANT opMVI : STD_LOGIC_VECTOR(4 DOWNTO 0) := "01000";
	CONSTANT opMOV : STD_LOGIC_VECTOR(4 DOWNTO 0) := "01010";
	CONSTANT opSTA : STD_LOGIC_VECTOR(4 DOWNTO 0) := "01100";
	CONSTANT opLDA : STD_LOGIC_VECTOR(4 DOWNTO 0) := "01110";
	CONSTANT opOUT : STD_LOGIC_VECTOR(4 DOWNTO 0) := "10000";
	CONSTANT opIN	: STD_LOGIC_VECTOR(4 DOWNTO 0) := "10010";
	CONSTANT opJC	: STD_LOGIC_VECTOR(4 DOWNTO 0) := "10100";
END opcode;

package body opcode IS

END opcode;
