----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:53:18 05/11/2021 
-- Design Name: 
-- Module Name:    Ripple_Adder - Behavioral 
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

entity Ripple_Adder is
	Port(
		A_0, A_1, A_2, A_3: in STD_LOGIC;
		B_0, B_1, B_2, B_3: in STD_LOGIC;
		Cin: in STD_LOGIC;
		S: out STD_LOGIC_VECTOR (3 downto 0);
		Cout: out STD_LOGIC
	);
end Ripple_Adder;

architecture Behavioral of Ripple_Adder is

	Component Full_Adder is
		Port(
			A: in STD_LOGIC;
			B: in STD_LOGIC;
			Cin: in STD_LOGIC;
			Sum: out STD_LOGIC;
			Cout: out STD_LOGIC);
	end Component;
	Signal c : STD_LOGIC_VECTOR(2 DOWNTO 0);
begin
	FA1 : Full_Adder Port Map(A => A_0, B => B_0, Cin => Cin, Sum => S(0),Cout => c(0));
	FA2 : Full_Adder Port Map(A => A_1, B => B_1, Cin => c(0), Sum => S(1), Cout => c(1));
	FA3 : Full_Adder Port Map(A => A_2, B => B_2, Cin => c(1), Sum => S(2), Cout => c(2));
	FA4 : Full_Adder Port Map(A => A_3, B => B_3, Cin => c(2), Sum => S(3), Cout => Cout);
end Behavioral;



