----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:50:33 05/11/2021 
-- Design Name: 
-- Module Name:    Carry_Look_Ahead - Behavioral 
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

entity Carry_Look_Ahead is
	PORT(
		A: in std_logic_vector(3 downto 0);
		B: in std_logic_vector(3 downto 0);
		Cin: in std_logic;
		Sum: out std_logic_vector(3 downto 0);
		Cout: out std_logic
	);
end Carry_Look_Ahead;

architecture Behavioral of Carry_Look_Ahead is
	Component Full_Adder is
		Port(
			A: in STD_LOGIC;
			B: in STD_LOGIC;
			Cin: in STD_LOGIC;
			S: out STD_LOGIC;
			Cout: out STD_LOGIC);
	end Component;	
	signal c : STD_LOGIC_VECTOR(2 downto 0);
	signal P: STD_LOGIC_VECTOR(3 downto 0);
begin

	c(1) <= (A(1) and B(1)) or ((A(1) xor B(1)) and (A(0) and B(0))) or ((A(1) xor B(1)) and (A(0) xor B(0)) and Cin);
	c(0) <= (A(0) and B(0)) or ((A(0) xor B(0)) and Cin);
	c(2) <= (A(2) and B(2)) or (C(1) and (A(2) xor B(2)));
	Cout <= (A(3) and B(3)) or (C(2) and (A(3) xor B(3)));
	
	FA_1 : Full_Adder Port Map(A => A(0), b => B(0), Cin => Cin, s => Sum(0), Cout => P(0));
	FA_2 : Full_Adder Port Map(A => A(1), b => B(1), Cin => c(0), s => Sum(1), Cout => P(1));
	FA_3 : Full_Adder Port Map(A => A(2), b => B(2), Cin => c(1), s => Sum(2), Cout => P(2));
	FA_4 : Full_Adder Port Map(A => A(3), b => B(3), Cin => c(2), s => Sum(3), Cout => P(3));

end Behavioral;

