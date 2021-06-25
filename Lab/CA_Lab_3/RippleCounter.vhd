----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:46:40 04/27/2021 
-- Design Name: 
-- Module Name:    RippleCounter - Behavioral 
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

entity RippleCounter is
	Port(
		clk: in std_logic;
		res: in std_logic;
		output: out std_logic_vector(3 downto 0)
	);
end RippleCounter;

architecture Behavioral of RippleCounter is
	component TFF is Port(
		T: in std_logic;
		clk: in std_logic;
		res: in std_logic;
		Q: inout std_logic
	);
	end component TFF;
	
	signal tff_out_0, tff_out_1, tff_out_2, tff_out_3: std_logic;
begin
	tff_0: TFF Port map (T => '1', clk => clk, res => res, Q => tff_out_0);
	tff_1: TFF Port map (T => '1', clk => NOT(tff_out_0), res => res, Q => tff_out_1);
	tff_2: TFF Port map (T => '1', clk => NOT(tff_out_1), res => res, Q => tff_out_2);
	tff_3: TFF Port map (T => '1', clk => NOT(tff_out_2), res => res, Q => tff_out_3);
	
	output(0) <= tff_out_0;
	output(1) <= tff_out_1;
	output(2) <= tff_out_2;
	output(3) <= tff_out_3;
end Behavioral;
