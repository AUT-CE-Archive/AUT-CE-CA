----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:52:20 05/11/2021 
-- Design Name: 
-- Module Name:    Array_Ripple_Multiplier - Behavioral 
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

entity Array_Ripple_Multiplier is
	Port(
		A: in STD_LOGIC_VECTOR(3 downto 0);
		B: in STD_LOGIC_VECTOR(3 downto 0);
		P: out STD_LOGIC_VECTOR(7 downto 0)
	);
end Array_Ripple_Multiplier;

architecture Behavioral of Array_Ripple_Multiplier is
	
	Component Ripple_Adder is
		Port(
			A_0 : IN  std_logic;
         A_1 : IN  std_logic;
         A_2 : IN  std_logic;
         A_3 : IN  std_logic;
         B_0 : IN  std_logic;
         B_1 : IN  std_logic;
         B_2 : IN  std_logic;
         B_3 : IN  std_logic;
			Cin: in STD_LOGIC;
			S: out STD_LOGIC_VECTOR (3 downto 0);
			Cout: out STD_LOGIC
		);
	end Component;

	Signal andgates : STD_LOGIC_VECTOR(15 DOWNTO 0);
	Signal S_0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
	Signal S_1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
	Signal S_2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
	Signal C_0 : STD_LOGIC;
	Signal C_1 : STD_LOGIC;
	Signal C_2 : STD_LOGIC;
begin
	andgates(0) <= B(0) and A(0);
	andgates(1) <= B(0) and A(1);
	andgates(2) <= B(0) and A(2);
	andgates(3) <= B(0) and A(3);
	
	andgates(4) <= B(1) and A(0);
	andgates(5) <= B(1) and A(1);
	andgates(6) <= B(1) and A(2);
	andgates(7) <= B(1) and A(3);
	
	andgates(8) <= B(2) and A(0);
	andgates(9) <= B(2) and A(1);
	andgates(10) <= B(2) and A(2);
	andgates(11) <= B(2) and A(3);
	
	andgates(12) <= B(3) and A(0);
	andgates(13) <= B(3) and A(1);
	andgates(14) <= B(3) and A(2);
	andgates(15) <= B(3) and A(3);
	
	RA_0 : Ripple_Adder port map(andgates(1), andgates(2), andgates(3), '0', andgates(4), andgates(5), andgates(6), andgates(7), '0', S_0, C_0);
	RA_1 : Ripple_Adder port map(S_0(1), S_0(2), S_0(3), C_0, andgates(8), andgates(9), andgates(10), andgates(11), '0', S_1, C_1);
	RA_2 : Ripple_Adder port map(S_1(1), S_1(2), S_1(3), C_1, andgates(12), andgates(13), andgates(14), andgates(15), '0', S_2, C_2);
  
  P(0) <= andgates(0);
  P(1) <= S_0(0);
  P(2) <= S_1(0);
  P(3) <= S_2(0);
  P(4) <= S_2(1);
  P(5) <= S_2(2);
  P(6) <= S_2(3);
  P(7) <= C_2;
	
end Behavioral;

