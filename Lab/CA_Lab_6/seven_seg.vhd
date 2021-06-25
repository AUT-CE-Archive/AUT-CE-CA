----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:47:07 05/18/2021 
-- Design Name: 
-- Module Name:    seven_seg - Behavioral 
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
 
entity seven_seg is
Port ( inp : in STD_LOGIC_VECTOR (3 downto 0);
clk : in  STD_LOGIC;
o : out STD_LOGIC_VECTOR (6 downto 0));
end seven_seg;
 
architecture Behavioral of seven_seg is
 begin
process (clk)
	begin
		if (clk'event and clk = '1') then
 
	case inp is
		when "0000" => 
			o <= "0000001"; -- 0 
		when "0001" =>
			o <= "1001111"; 
		when "0010" =>
			o <= "0010010"; 
		when "0011" =>
			o <= "0000110";
		when "0100" =>
			o <= "1001100"; 
		when "0101" =>
			o <= "0100100";
		when "0110" =>
			o <= "0100000"; 
		when "0111" =>
			o <= "0001111";
		when "1000" =>
			o <= "0000000";
		when "1001" =>
			o <= "0000100"; -- 9
		when "1010" => 
			o <= "0000010"; -- a
		when "1011" => 
			o <= "1100000"; -- b
		when "1100" => 
			o <= "0110001"; -- c
		when "1101" => 
			o <= "1000010"; -- d
		when "1110" => 
			o <= "0110000"; -- e
		when "1111" => 
			o <= "0111000"; -- f	
		when others =>
			o <= "1111111"; --null

		end case;
	end if;
end process;
 
end Behavioral;

