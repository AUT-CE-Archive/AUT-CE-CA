----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:20:20 06/08/2021 
-- Design Name: 
-- Module Name:    CPU - Behavioral 
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CPU is
	port(
		data: out std_logic_vector(7 downto 0);
		adress: out std_logic_vector(5 downto 0);
		rst: in std_logic;
		oe: out std_logic;
		we: out std_logic;
		clk: in std_logic
	);
end CPU;

architecture Behavioral of CPU is
	signal akku: std_logic_vector(7 downto 0);
	signal adreg: std_logic_vector(5 downto 0);
	signal pc: std_logic_vector(5 downto 0);
	signal states: std_logic_vector(2 downto 0);
	
	-- Internal Memory
	type ram is array (5 downto 0) of STD_LOGIC_VECTOR(7 downto 0);
	signal memory : ram;
begin
	Process(clk,rst)
		variable indata : STD_LOGIC_VECTOR( 7 downto 0);
		begin
			If (rst = '0') then
				-- Initialize pre-randomized memory on reset
				memory(0) <= "00000101";
				memory(1) <= "00011111";
				memory(2) <= "11000101";
				memory(3) <= "11000010";
				memory(4) <= "01000011";
				memory(5) <= "10011000";
				
				-- Reset all to zero
				indata := (others => '0');
				adreg <= (others => '0');
				states <= (others => '0');
				akku <= (others => '0');
				pc <= (others => '0');

			elsIf rising_edge(clk) then

				-- PC / Adress Path
				If (states = "000") then
					pc <= STD_LOGIC_VECTOR(unsigned(adreg) + 1);
					indata := memory(to_integer(unsigned(pc)));
				else
					indata := memory(to_integer(unsigned(adreg)));
					adreg <= pc;
				end If;
				
				-- ALU / Data Path
				Case states is
					when "001" => report ("001"); akku <= STD_LOGIC_VECTOR(unsigned(akku(7 downto 0)) + unsigned(indata)); 					-- Add
					when "010" => report ("010"); akku(7 downto 0) <= STD_LOGIC_VECTOR(unsigned(akku(7 downto 0)) - unsigned(indata)); 	-- Sub
					when "011" => report ("011"); akku(7 downto 0) <= akku(7 downto 0) or indata; 													-- Or
					when "100" => report ("100"); akku(7 downto 0) <= akku(7 downto 0) nor indata; 													-- Nor
					when "101" => report ("101"); akku(7 downto 0) <= akku(7 downto 0) and indata; 													-- And
					when "110" => report ("110"); akku(7) <= '0'; 																								-- Clear Carry
					when "111" => report ("111"); akku <= not indata; 																							-- Not
					when others => null; 																																-- ...
				end Case;
				
				-- State Nachine
				If (states /= "000") then
					states <= "000"; 							-- Fetch Next Opcode
				else
					states <= not indata(7 downto 5); 	-- Execute Instruction
				end If;
				
			end If;
	end Process;
	
	-- Output
	adress <= adreg;
	data <= akku(7 downto 0);
	oe <= '1' when (clk = '1' or states  = "001" or rst = '0' or states = "101") else '0'; 	-- No memory access during reset and 
	we <= '1' when (clk = '1' or states /= "001" or rst = '0') else '0'; 							-- State "101" (branch not taken)
	
end Behavioral;	