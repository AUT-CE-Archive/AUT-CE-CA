----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:31:03 04/20/2021 
-- Design Name: 
-- Module Name:    Mux_4_1 - Behavioral 
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

entity mux4_1 is
    Port(
		a0 : in  STD_LOGIC;
      a1 : in  STD_LOGIC;
      a2 : in  STD_LOGIC;
      a3 : in  STD_LOGIC;
      sel : in  STD_LOGIC_VECTOR (1 downto 0);
      output : out  STD_LOGIC
	 );
end mux4_1;

architecture GateLevel of mux4_1 is
	Signal and_out : STD_LOGIC_VECTOR(3 downto 0);
begin
	and_out(0) <= a0 and (not sel(0)) and (not sel(1));
	and_out(1) <= a1 and sel(0) and (not sel(1));
	and_out(2) <= a2 and (not sel(0)) and sel(1);
	and_out(3) <= a3 and sel(0) and sel(1);
	output <= and_out(0) or and_out(1) or and_out(2) or and_out(3);

end GateLevel;

