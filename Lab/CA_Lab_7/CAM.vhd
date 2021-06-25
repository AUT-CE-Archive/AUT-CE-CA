----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:57:06 05/25/2021 
-- Design Name: 
-- Module Name:    CAM - Behavioral 
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

entity CAM is
	Port (
		-- Read/Write indicators
		WR: in STD_LOGIC;
		RD: in STD_LOGIC;
		
		-- Reset indicator
		RST: in STD_LOGIC;
		
		-- Clock
		CLK: in STD_LOGIC;
		
		-- 4bit Data arrays
		MATCH: out STD_LOGIC;
		
		-- Read array
		Data_in: in STD_LOGIC_VECTOR(4 downto 0)
	);
end CAM;

architecture Behavioral of CAM is

	-- Memory is indexed by int values (C = 5, C^2 = 32 total)
	-- Data_in & Data_out are 5 bits
	Type MM_Arr is array (31 downto 0) of STD_LOGIC_VECTOR(4 downto 0);
	
	Signal memory: MM_Arr;
	Signal exists: STD_LOGIC;
begin

	process(CLK, RST)	
	begin		
		-- Negative edge Async
		if (RST = '0') then
			-- Assign int values to memory address
			for i in 0 to 31 loop
				memory(i) <= "00000";
			end loop;
			
		elsif (CLK'event and CLK = '1') then
			exists <= '0';			
			-- Read!
			if (RD = '1' and WR = '0') then
				-- Look for Data_in, if not exists then check EXISTS as '1'
				for i in 0 to 31 loop
					if (memory(i) = Data_in) then
						exists <= '1';
						exit;
						
					-- Read the Data_in if not already exists
					elsif (memory(i) = "00000") then
						memory(i) <= Data_in;
						exit;
					end if;
				end loop;

			-- Write!
			elsif (WR = '1' and RD = '0') then
				-- Check if exists
				MATCH <= '0';
				for i in 0 to 31 loop
					if (memory(i) = Data_in) then
						MATCH <= '1';
					end if;
				end loop;
			end if;
		end if;
	end process;
	
end Behavioral;