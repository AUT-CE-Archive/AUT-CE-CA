----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:52:51 04/27/2021 
-- Design Name: 
-- Module Name:    Sequence_1101_Mealy - Behavioral 
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

entity Sequence_1101_Mealy is
	Port(
		clk: in std_logic;
		input: in std_logic;
		output: out std_logic
	);
end Sequence_1101_Mealy;

architecture Behavioral of Sequence_1101_Mealy is
	type state is (s0, s1, s2, s3);
	signal p_state: state:= s0;
	signal n_state: state:= s0;
begin	
	-- State process
	proc_2: process(input, p_state)
	begin
		output <= '0';	-- Default value
		
		case p_state is
			when s0 =>
				if(input = '1')
					then n_state <= s1; output <= '0';
				else 
					n_state <= s0; output <= '0';
				end if;
			when s1 =>
				if(input = '1')
					then n_state <= s2; output <= '0';
				else 
					n_state <= s0; output <= '0';
				end if;
			when s2 =>
				if(input = '1')
					then n_state <= s2; output <= '0';
				else 
					n_state <= s3; output <= '0';
				end if;
			when s3 =>
				if(input = '1')
					then n_state <= s1; output <= '1';	-- Bingo!
				else 
					n_state <= s0; output <= '0';
				end if;
		end case;
	end process;
	
	-- Clk process
	proc: process(clk)
	begin
		if (clk' event and clk = '1')
			then p_state <= n_state;
		end if;
	end process;
end Behavioral;

