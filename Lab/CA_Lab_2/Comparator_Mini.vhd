----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:38:55 04/20/2021 
-- Design Name: 
-- Module Name:    Comparator_1 - Behavioral 
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

entity Comparator_1 is

    Port(
		a : in  STD_LOGIC;
      b : in  STD_LOGIC;
      g : in  STD_LOGIC;
      e : in  STD_LOGIC;
      l : in  STD_LOGIC;
      a_gt_b : out  STD_LOGIC;
      a_eq_b : out  STD_LOGIC;
      a_lt_b : out  STD_LOGIC);
end Comparator_1;

	architecture GateLevel of Comparator_1 is
Signal equal, lower, greater : STD_LOGIC;

begin
	
	equal <= a xnor b;
	greater <= a and (not b);
	lower <= (not a) and b;

	a_LT_b <= (equal and l) or lower;
	a_GT_b <= (equal and g) or greater;
	a_EQ_b <= equal and e;
	
end GateLevel;