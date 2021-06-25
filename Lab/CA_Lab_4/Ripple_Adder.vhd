----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:42:26 05/11/2021 
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
		A: in STD_LOGIC_VECTOR (3 downto 0);
		B: in STD_LOGIC_VECTOR (3 downto 0);
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
			S: out STD_LOGIC;
			Cout: out STD_LOGIC);
	end Component;
	Signal c : STD_LOGIC_VECTOR(2 DOWNTO 0);
begin
	FA1 : Full_Adder Port Map(A => A(0), B => B(0), Cin => Cin, S => S(0),Cout => c(0));
	FA2 : Full_Adder Port Map(A => A(1), B => B(1), Cin => c(0), S => S(1), Cout => c(1));
	FA3 : Full_Adder Port Map(A => A(2), B => B(2), Cin => c(1), S => S(2), Cout => c(2));
	FA4 : Full_Adder Port Map(A => A(3), B => B(3), Cin => c(2), S => S(3), Cout => Cout);
end Behavioral;

