----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:31:55 05/25/2021 
-- Design Name: 
-- Module Name:    Dual_RAM - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Dual_RAM is
	Port (
		-- Read/Write indicators
		WR: in STD_LOGIC;
		RD: in STD_LOGIC;
		
		-- Reset indicator
		RST: in STD_LOGIC;
		
		-- Clock
		CLK: in STD_LOGIC;
		
		-- 4bit Address arrays
		Addr_1: in STD_LOGIC_VECTOR(4 downto 0);
		Addr_2: in STD_LOGIC_VECTOR(4 downto 0);
		
		-- Enables for ports
		port_1_en: in STD_LOGIC;
		port_2_en: in STD_LOGIC;
		
		-- 4bit Data arrays for both ports' data_out
		Data_out: out STD_LOGIC_VECTOR(4 downto 0);
		
		-- One 4bit data_in array for both ports
		Data_in: in STD_LOGIC_VECTOR(4 downto 0)
	);
end Dual_RAM;

architecture Behavioral of Dual_RAM is
	
	-- Memory is indexed by int values (C = 5, C^2 = 32 total)
	-- Data_in & Data_out are 5 bits
	Type MM_Arr is array (31 downto 0) of STD_LOGIC_VECTOR(4 downto 0);
	
	Signal memory: MM_Arr;

begin

	process(CLK, RST)
	begin
		-- Negative edge Async
		if (RST = '0') then
			-- Assign int values to memory address
			for i in 0 to 31 loop
				memory(i) <= std_logic_vector(to_unsigned(i, 5));
			end loop;
			
		elsif (CLK'event and CLK = '1') then
			-- Read!
			if (RD = '1' and WR = '0') then
				memory(to_integer(unsigned(Addr_1))) <= Data_in;
			-- Write!
			elsif (WR = '1' and RD = '0') then				
				Data_out <= memory(to_integer(unsigned(Addr_2)));
			end if;
		end if;
	end process;

end Behavioral;

