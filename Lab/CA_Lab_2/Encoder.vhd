----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:27:19 04/20/2021 
-- Design Name: 
-- Module Name:    Encoder - Behavioral 
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


entity Encoder is
    Port(
		input : in  STD_LOGIC_VECTOR (3 downto 0);
      output : out  STD_LOGIC_VECTOR (1 downto 0);
      v : out  STD_LOGIC
	 );
end Encoder;

architecture GateLevel of Encoder is
begin
	output(0) <= input(3) or (not input(2) and input(1));
	output(1) <= input(3) or input(2);
	v <= input(0) or input(1) or input(3) or input(2);
end GateLevel;