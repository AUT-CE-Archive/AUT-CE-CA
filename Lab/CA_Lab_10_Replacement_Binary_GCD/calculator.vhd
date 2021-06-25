----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:45:03 06/25/2021 
-- Design Name: 
-- Module Name:    calculator - Behavioral 
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity calculator is
	Port(
		num_1: in std_logic_vector(7 downto 0);
		num_2: in std_logic_vector(7 downto 0);
		load: in std_logic;
		clk: in std_logic;
		rst: in std_logic;
		gcd: out std_logic_vector(7 downto 0)
	);
end calculator;

architecture Behavioral of calculator is
	Signal temp_1: std_logic_vector(7 downto 0);
	Signal temp_2: std_logic_vector(7 downto 0);
begin	
	Process(clk, rst)
		begin
			if (rst = '0') then
				gcd <= "00000000";
				temp_1 <= "00000000";
				temp_2 <= "00000000";
			elsif (clk'event and clk = '1') then
				if (load = '1') then
					temp_1 <= num_1;
					temp_2 <= num_2;
				else
					if (temp_1 <= temp_2) then
						temp_2 <= temp_2 - temp_1;
					else
						temp_1 <= temp_1 - temp_2;
					end if;
				end if;
			end if;
			gcd <= temp_1 + temp_2;
	end Process;	
end Behavioral;

