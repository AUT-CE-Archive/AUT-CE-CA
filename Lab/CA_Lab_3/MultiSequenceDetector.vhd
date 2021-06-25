----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:35:10 04/27/2021 
-- Design Name: 
-- Module Name:    MultiSequenceDetector - Behavioral 
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

entity MultiSequenceDetector is
	Port(		
		clk : in std_logic;
		input : in std_logic;
		output : out std_logic
	);
end MultiSequenceDetector;

architecture Behavioral of MultiSequenceDetector is
	type state is (init, s0, s01, s011, s010);
	signal p_state: state := init;
	signal n_state: state := init;
	signal temp : std_logic := '0';	-- Default value
begin
	-- state process
	proc: process(p_state, input)
	begin
		case p_state is 
			when init =>
				temp <= '0';
				if (input = '1')
					then n_state <= init;
				else
					n_state <= s0;
				end if;
			when s0 =>
				temp <= '0';
				if (input = '1')
					then n_state <= s01;
				else
					n_state <= s0;
				end if;
			when s01 =>
				if (input = '1')
					then n_state <= s011;
				else n_state <= s010;
				end if;
				
			when s011 =>
				if (input = '1')
					then n_state <= init;
				else
					n_state <= s0;
					temp <= '1';			-- Bingo!
				end if;
				
			when s010 =>
				if (input = '1')
					then
						n_state <= init;
						temp <= '1';		-- Bingo!
				else
					n_state <= s0;
				end if;
		end case;
	end process;
	
	-- clock process
	REG: process(clk)
		begin
			if(clk' event and clk = '1')
				then
					output <= temp;
					p_state <= n_state;
			end if;
	end process;
end Behavioral;

