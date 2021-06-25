----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:40:50 04/20/2021 
-- Design Name: 
-- Module Name:    Comparator - Behavioral 
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

entity Comparator is
	Port (
		a : in  STD_LOGIC_VECTOR (3 downto 0);
      b : in  STD_LOGIC_VECTOR (3 downto 0);
      g : in  STD_LOGIC;
      e : in  STD_LOGIC;
      l : in  STD_LOGIC;
      a_gt_b : out  STD_LOGIC;
      a_eq_b : out  STD_LOGIC;
      a_lt_b : out  STD_LOGIC);
end Comparator;

architecture GateLevel of Comparator is
	component Comparator_1 is 
		Port(
			a : in  STD_LOGIC;
		   b : in  STD_LOGIC;
         g : in  STD_LOGIC;
         e : in  STD_LOGIC;
         l : in  STD_LOGIC;
         a_gt_b : out  STD_LOGIC;
         a_eq_b : out  STD_LOGIC;
         a_lt_b : out  STD_LOGIC
		);
	end component Comparator_1; 	

signal gt1 : STD_LOGIC_VECTOR(2 downto 0);
signal eq : STD_LOGIC_VECTOR(2 downto 0);
signal lt : STD_LOGIC_VECTOR(2 downto 0);

begin
	comp0: Comparator_1 port map (a(0),b(0),'0','1','0',gt1(0),eq(0),lt(0));
	comp1: Comparator_1 port map (a(1),b(1),gt1(0),eq(0),lt(0),gt1(1),eq(1),lt(1));
	comp2: Comparator_1 port map (a(2),b(2),gt1(1),eq(1),lt(1),gt1(2),eq(2),lt(2));
	comp3: Comparator_1 port map (a(3),b(3),gt1(2),eq(2),lt(2),a_gt_b,a_eq_b,a_lt_b);

end GateLevel;

