----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:20:56 04/20/2021 
-- Design Name: 
-- Module Name:    Decoder - Behavioral 
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

entity Decoder is

    Port(
		a : in  STD_LOGIC_VECTOR (1 downto 0);
      enable : in  STD_LOGIC;
      output : out  STD_LOGIC_VECTOR (3 downto 0)
	 );

end Decoder;

architecture GateLevel of Decoder is
begin
	output(0) <= enable and (not a(0)) and (not a(1));
	output(1) <= enable and a(0) and (not a(1));
	output(2) <= enable and (not a(0)) and a(1);
	output(3) <= enable and a(0) and a(1);
end GateLevel;

