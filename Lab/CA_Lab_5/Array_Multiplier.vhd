----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:13:14 05/11/2021 
-- Design Name: 
-- Module Name:    Array_Multiplier - Behavioral 
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

entity Array_Multiplier is
	Port(
		A: in STD_LOGIC_VECTOR(3 downto 0);
		B: in STD_LOGIC_VECTOR(3 downto 0);
		P: out STD_LOGIC_VECTOR(7 downto 0)
	);
end Array_Multiplier;

architecture Behavioral of Array_Multiplier is
	component Full_Adder 
		port(
			A: in std_logic;
			B: in std_logic;
			Cin: in std_logic;
			Sum: out std_logic;
			Cout: out std_logic
		);
	end component;
	
	component Half_Adder 
		port(
			A: in std_logic;
			B: in std_logic;
			S: out std_logic;
			C: out std_logic
		);
	end component;
	
	signal andgate: std_logic_vector(15 downto 0);
	signal sumout: std_logic_vector(11 downto 0);
	signal carry: std_logic_vector(11 downto 0);
begin
	andgate(0) <= A(0) and B(0);
   andgate(1) <= A(1) and B(0);
   andgate(2) <= A(2) and B(0);
   andgate(3) <= A(3) and B(0);

   andgate(4) <= A(0) and B(1);
   andgate(5) <= A(1) and B(1);
   andgate(6) <= A(2) and B(1);
   andgate(7) <= A(3) and B(1);

   andgate(8) <= A(0) and B(2);
   andgate(9) <= A(1) and B(2);
   andgate(10) <= A(2) and B(2);
   andgate(11) <= A(3) and B(2);

   andgate(12) <= A(0) and B(3);
   andgate(13) <= A(1) and B(3);
   andgate(14) <= A(2) and B(3);
   andgate(15) <= A(3) and B(3);

   --Gates
   HA_0: Half_Adder port map(S => sumout(0), A => andgate(1), B => andgate(4), C => carry(0));
   FA_0: Full_Adder port map(Sum => sumout(1), A => andgate(2), B => andgate(5), Cout => carry(1), Cin => carry(0));
   FA_1: Full_Adder port map(Sum => sumout(2), A => andgate(3), B => andgate(6), Cout => carry(2), Cin => carry(1));
   HA_1: Half_Adder port map(S => sumout(3), A => carry(2), B => andgate(7), C => carry(3));
   HA_2: Half_Adder port map(S =>sumout(4), A => sumout(1), B => andgate(8), C => carry(4));
   FA_2: Full_Adder port map(Sum => sumout(5), A => sumout(2), B => andgate(9), Cout => carry(5), Cin => carry(4));
   FA_3: Full_Adder port map(Sum => sumout(6), A => sumout(3), B => andgate(10), Cout => carry(6), Cin => carry(5));
   FA_4: Full_Adder port map(Sum => sumout(7), A => carry(3), B => andgate(11), Cout => carry(7), Cin => carry(6));
   HA_3: Half_Adder port map(S => sumout(8), A => sumout(5), B => andgate(12), C => carry(8));
   FA_5: Full_Adder port map(Sum => sumout(9), A => sumout(6), B => andgate(13), Cout => carry(9), Cin => carry(8));
   FA_6: Full_Adder port map(Sum => sumout(10), A => sumout(7), B => andgate(14), Cout => carry(10), Cin => carry(9));
   FA_7: Full_Adder port map(Sum => sumout(11), A => carry(7), B => andgate(15), Cout => carry(11), Cin => carry(10));

   --Assigning p values
   P(0) <= andgate(0);
   P(1) <= sumout(0);
   P(2) <= sumout(4);
   P(3) <= sumout(8);
   P(4) <= sumout(9);
   P(5) <= sumout(10);
   P(6) <= sumout(11);
	P(7) <= carry(11);
end Behavioral;

