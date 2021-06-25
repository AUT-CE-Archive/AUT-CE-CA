----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:48:09 05/18/2021 
-- Design Name: 
-- Module Name:    main - Behavioral 
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

entity main is
    Port ( clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           din : in  STD_LOGIC_VECTOR(3 downto 0);
	   lr : in std_logic_vector(1 downto 0);
           load : in  STD_LOGIC;
           res : out  STD_LOGIC_VECTOR(6 downto 0));
end main;

architecture Behavioral of main is
	
	component delay is
    port    ( clk_in   : in   std_logic;
              clk_out  : out  std_logic;
              reset     : in  std_logic);
	end component;
	
	component shift_register is
    Port ( parallel_in : in std_logic_vector(3 downto 0);
			LR : in std_logic_vector(1 downto 0);
			load : in std_logic;
			reset : in std_logic;
			clock : in std_logic;
			output : out std_logic_vector(3 downto 0));
	end component;
		
	component seven_seg is
    Port ( inp : in STD_LOGIC_VECTOR (3 downto 0);
			clk : in  STD_LOGIC;
			o : out STD_LOGIC_VECTOR (6 downto 0));
	end component;

	Signal tmpClk: STD_LOGIC;
	Signal tmpData: STD_LOGIC_VECTOR(3 downto 0);
	
begin

	del: delay port map (clk, tmpClk, Reset);
	shift: shift_register port map (din, lr, load, Reset, tmpClk, tmpData);
	display: seven_seg port map (tmpData, clk, res);
	
end Behavioral;

