----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:57:09 05/11/2021 
-- Design Name: 
-- Module Name:    Mux - Behavioral 
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

entity Mux is
	Port(
		A: in STD_LOGIC;
		B: in STD_LOGIC;
		Sel: in STD_LOGIC;
		X: out STD_LOGIC
	);
end Mux;

architecture Behavioral of Mux is
begin
	process(A, B, Sel)
	begin
		if Sel = '0' then X <= A;
		else X <= B;
		end if;
	end process;
end Behavioral;

