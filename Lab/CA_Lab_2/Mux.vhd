----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:30:53 04/20/2021 
-- Design Name: 
-- Module Name:    Mux - Behavioral 
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

entity mux is

    Port(
		a0 : in  STD_LOGIC_VECTOR (3 downto 0);
      a1 : in  STD_LOGIC_VECTOR (3 downto 0);
      a2 : in  STD_LOGIC_VECTOR (3 downto 0);
      a3 : in  STD_LOGIC_VECTOR (3 downto 0);
      sel : in  STD_LOGIC_VECTOR (1 downto 0);
      output : out  STD_LOGIC
);

end mux;

architecture GateLevel of mux is
	component mux4_1 is 
		Port(
			a0, a1, a2, a3 : in STD_LOGIC;
			sel : in STD_LOGIC_VECTOR (1 downto 0);
			output : out STD_LOGIC
		);
	end component mux4_1;
Signal out_mux : std_logic_vector(3 downto 0);
	
begin
	mux0: mux4_1 port map (a0 => a0(0), a1 => a1(0), a2 => a2(0), a3 => a3(0), sel => sel, output => out_mux(0));
	mux1: mux4_1 port map (a0 => a0(1), a1 => a1(1), a2 => a2(1), a3 => a3(1), sel => sel, output => out_mux(1));
	mux2: mux4_1 port map (a0 => a0(2), a1 => a1(2), a2 => a2(2), a3 => a3(2), sel => sel, output => out_mux(2));
	mux3: mux4_1 port map (a0 => a0(3), a1 => a1(3), a2 => a2(3), a3 => a3(3), sel => sel, output => out_mux(3));
   mux4: mux4_1 port map (a0 => out_mux(0), a1 => out_mux(1), a2 => out_mux(2), a3 => out_mux(3), sel => sel, output => output);

end GateLevel;




