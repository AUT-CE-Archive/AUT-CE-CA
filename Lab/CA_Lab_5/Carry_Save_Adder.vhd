----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:39:56 05/11/2021 
-- Design Name: 
-- Module Name:    Carry_Save_Adder - Behavioral 
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

entity Carry_Save_Adder is
	Port(
		A: in STD_LOGIC_VECTOR(3 downto 0);
		B: in STD_LOGIC_VECTOR(3 downto 0);
		P: out STD_LOGIC_VECTOR(7 downto 0)
	);
end Carry_Save_Adder;

architecture Behavioral of Carry_Save_Adder is
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
	
	Signal andgate : STD_LOGIC_VECTOR(15 DOWNTO 0);
	Signal SS : STD_LOGIC_VECTOR(12 DOWNTO 0);
	Signal CC : STD_LOGIC_VECTOR(12 DOWNTO 0);
	Signal CC_HA : STD_LOGIC_VECTOR(2 DOWNTO 0);
begin
	-- Line 1
	P(0) <= A(0) and B(0);
	
	andgate(1) <= A(0) and B(1);
	andgate(2) <= A(1) and B(0);
	HA_0: Half_Adder port map(andgate(1), andgate(2), P(1), CC(0));
	
	andgate(3) <= A(0) and B(2);
	andgate(4) <= A(1) and B(1);
	HA_1: Half_Adder port map(andgate(3), andgate(4), SS(1), CC(1));
	
	andgate(5) <= A(0) and B(3);
	andgate(6) <= A(1) and B(2);
	HA_2: Half_Adder port map(andgate(5), andgate(6), SS(2), CC(2));
	
	-- Line 2
	andgate(7) <= A(2) and B(0);
	FA_0: Full_Adder port map(andgate(7), CC(0), SS(1), P(2), CC(3));
	
	andgate(8) <= A(2) and B(1);
	FA_1: Full_Adder port map(andgate(8), CC(1), SS(2), SS(4), CC(4));
	
	andgate(9) <= A(2) and B(2);
	andgate(10) <= A(1) and B(3);
	FA_2: Full_Adder port map(andgate(9), andgate(10), cc(2), SS(5), CC(5));
		
	-- Line 3
	andgate(11) <= A(3) and B(0);
	FA_3: Full_Adder port map(andgate(11), CC(3), SS(4), P(3), CC(6));
	
	andgate(12) <= A(3) and B(1);
	FA_4: Full_Adder port map(andgate(12), CC(4), SS(5), SS(7), CC(7));
	
	andgate(13) <= A(3) and B(2);
	andgate(14) <= A(2) and B(3);
	FA_5: Full_Adder port map(andgate(13), andgate(14), CC(5), SS(8), CC(8));
	
	-- Line 4
	HA_3: Half_Adder port map(CC(6), SS(7), P(4), CC_HA(0));
	FA_6: Full_Adder port map(CC_HA(0), CC(7), SS(8), P(5), CC_HA(1));
	
	andgate(15) <= A(3) and B(3);
	FA_7: Full_Adder port map(CC_HA(1), CC(8), andgate(15), P(6), P(7));

end Behavioral;

