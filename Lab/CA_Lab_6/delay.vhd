----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:45:58 05/18/2021 
-- Design Name: 
-- Module Name:    delay - Behavioral 
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

entity delay is
	generic ( freq : integer := 64; 
              uni : integer := 1);           
    port    ( clk_in   : in   std_logic;
              clk_out  : out  std_logic;
              reset     : in  std_logic);
end delay;

architecture Behavioral of delay is

    signal tmp : std_logic;
    signal cnt : integer range 0 to freq/(uni*2);

begin
	process (clk_in, reset) 
	begin
	   if reset = '1' then 
            cnt <= 0;	
			tmp <= '0';   
	   elsif ( clk_in'event and clk_in = '1') then
			if (cnt < freq/(uni*2)) then
				cnt <= cnt + 1;		
            else
				tmp <= not tmp;
				cnt <= 1;
			end if;
		end if;
	end process;
    clk_out <= tmp;

end Behavioral;

