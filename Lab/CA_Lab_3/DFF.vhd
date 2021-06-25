----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:06:48 04/27/2021 
-- Design Name: 
-- Module Name:    DFF - Behavioral 
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

entity DFF is
	Port (
		D: in std_logic;
		clk: in std_logic;
		res: in std_logic;
		Q: out std_logic
	);
end DFF;

architecture Behavioral of DFF is

begin
	proc: process(clk, res)
	begin
		if (res = '0')
			then Q <= '0';
		elsif (clk' event and clk = '1')
			then Q <= D;
		end if;
	end process;
end Behavioral;