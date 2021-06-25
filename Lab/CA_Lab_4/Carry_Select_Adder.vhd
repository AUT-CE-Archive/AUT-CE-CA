----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:56:14 05/11/2021 
-- Design Name: 
-- Module Name:    Carry_Select_Adder - Behavioral 
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

entity Carry_Select_Adder is
	Port(
		A: in STD_LOGIC_VECTOR (3 downto 0);
		B: in STD_LOGIC_VECTOR (3 downto 0);
		Cin: in STD_LOGIC;
		Sum: out STD_LOGIC_VECTOR (3 downto 0);
		Cout: out STD_LOGIC
	);
end Carry_Select_Adder;

architecture Behavioral of Carry_Select_Adder is
	Component Full_Adder is
		Port(
			A: in STD_LOGIC;
			B: in STD_LOGIC;
			Cin: in STD_LOGIC;
			S: out STD_LOGIC;
			Cout: out STD_LOGIC);
	end Component;
	
	Component Mux is
		Port(
			A: in STD_LOGIC;
			B: in STD_LOGIC;
			Sel: in STD_LOGIC;
			X: out STD_LOGIC
		);
	end Component;
	
	signal S_1 ,S_2, C_0, C_1: STD_LOGIC_VECTOR( 3 DOWNTO 0);
begin
	-- S_1, C_0
	FA_1: Full_Adder PORT MAP(A => A(0), B => B(0), Cin => '0', S => S_1(0), Cout => C_0(0));
	FA_2: Full_Adder PORT MAP(A => A(1), B => B(1), Cin => C_0(0), S => S_1(1), Cout => C_0(1));
	FA_3: Full_Adder PORT MAP(A => A(2), B => B(2), Cin => C_0(1), S => S_1(2), Cout => C_0(2));
	FA_4: Full_Adder PORT MAP(A => A(3), B => B(3), Cin => C_0(2), S => S_1(3), Cout => C_0(3));
	
	-- S_2, C_1
	FA_5: Full_Adder PORT MAP(A => A(0), B => B(0), Cin => '1', S => S_2(0), Cout => C_1(0));
	FA_6: Full_Adder PORT MAP(A => A(1), B => B(1), Cin => C_1(0), S => S_2(1), Cout => C_1(1));
	FA_7: Full_Adder PORT MAP(A => A(2), B => B(2), Cin => C_1(1), S => S_2(2), Cout => C_1(2));
	FA_8: Full_Adder PORT MAP(A => A(3), B => B(3), Cin => C_1(2), S => S_2(3), Cout => C_1(3));
	
	-- MUX
	MUX_1: Mux PORT MAP(A => S_1(0), B => S_2(0), Sel => Cin, X => Sum(0));
	MUX_2: Mux PORT MAP(A => S_1(1), B => S_2(1), Sel => Cin, X => Sum(1));
	MUX_3: Mux PORT MAP(A => S_1(2), B => S_2(2), Sel => Cin, X => Sum(2));
	MUX_4: Mux PORT MAP(A => S_1(3), B => S_2(3), Sel => Cin, X => Sum(3));
	
	-- Final MUX
	MUX_5: Mux PORT MAP(A => C_0(3), B => C_1(3), Sel => Cin, X => Cout);
end Behavioral;

