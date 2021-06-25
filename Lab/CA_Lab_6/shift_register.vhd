----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:44:10 05/18/2021 
-- Design Name: 
-- Module Name:    shift_register - Behavioral 
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


entity shift_register is
  port(
    parallel_in : in std_logic_vector(3 downto 0);
    LR : in std_logic_vector(1 downto 0);
    load : in std_logic;
    reset : in std_logic;
    clock : in std_logic;
    output : out std_logic_vector(3 downto 0)
    );
end shift_register;

architecture Behavioral of shift_register is

signal qout : std_logic_vector ( 3 downto 0);

begin
  process(clock)
  begin
  if reset = '1' then
    qout <= "0000";
  elsif (clock'event and clock='1') then
    if load = '0' then 
      case LR is
        when "00" =>
          qout <= qout;
        when "01" =>
          qout(0) <= qout(1);
          qout(1) <= qout(2);
          qout(2) <= qout(3);
          qout(3) <= qout(3);
        when "10" =>
          qout(0) <= '0';
          qout(1) <= qout(0);
          qout(2) <= qout(1);
          qout(3) <= qout(2);
        when others =>
          qout(0) <= qout(1);
          qout(1) <= qout(2);
          qout(2) <= qout(3);
          qout(3) <= '0';
      end case;      
    else  
      qout <= parallel_in;
      end if;
  end if;
  end process;  
  output <= qout;
end Behavioral;
