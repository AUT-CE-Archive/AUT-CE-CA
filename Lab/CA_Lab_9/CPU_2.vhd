----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:26:37 06/15/2021 
-- Design Name: 
-- Module Name:    CPU_2 - Behavioral 
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
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CPU_2 is
	port (
		data:	inout	std_logic_vector(7 downto 0);
		adress:	out	std_logic_vector(5 downto 0);
		oe:	out	std_logic;
		we:	out	std_logic;		-- Asynchronous memory interface
		rst:	in	std_logic;
		clk:	in	std_logic
	);
end CPU_2;

architecture Behavioral of CPU_2 is
	signal	akku:	std_logic_vector(8 downto 0);	-- akku(8) is carry !
	signal	adreg:	std_logic_vector(5 downto 0);
	signal 	pc:	std_logic_vector(5 downto 0);
	signal	states:	std_logic_vector(2 downto 0);
begin
	process(clk,rst)
	begin
	   if (rst = '0') then 
		adreg	<= (others => '0');	-- start execution at memory location 0 
		states	<= "000";
		akku <= (others => '0');
		pc   <= (others => '0');
	   elsif rising_edge(clk) then

		-- PC / Adress path
		if (states = "000") then 
			pc	<= adreg + 1; 
			adreg	<= data(5 downto 0);
		else	
			adreg	<= pc;
		end if;

		-- ALU / Data Path
		case states is
			when "010" => report ("010"); akku <= ("0" & akku(7 downto 0)) + ("0" & data); 	-- add
			when "011" => report ("011"); akku(7 downto 0) <= akku(7 downto 0) nor data;	-- nor
			when "101" => report ("101"); akku(8) <= '0';					-- branch not taken, clear carry
			when others => null;						-- instr. fetch, jcc taken (000), sta (001) 
		end case;						

		-- State machine
		if (states /= "000") then states <= "000"; 				-- fetch next opcode
		elsif (data(7 downto 6) = "11" and akku(8)='1') then states <= "101";	-- branch not taken
			else  states <= "0" & not data(7 downto 6); 			-- execute instruction	
		end if;	
	   end if;
	end process;
	
	-- output
	adress	<= adreg;
	data 	<= "ZZZZZZZZ" when states /= "001" else akku(7 downto 0);
	oe <= '1' when (clk='1' or states  = "001" or rst='0' or states = "101") else '0'; 	-- no memory access during reset and 
	we <= '1' when (clk='1' or states /= "001" or rst='0') else '0'; 			-- state "101" (branch not taken)
end Behavioral;

