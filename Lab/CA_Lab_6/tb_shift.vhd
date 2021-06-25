--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:50:41 05/18/2021
-- Design Name:   
-- Module Name:   F:/Me'mariLab/AZ6/tb_shift.vhd
-- Project Name:  AZ6
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: shift_register
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_shift IS
END tb_shift;
 
ARCHITECTURE behavior OF tb_shift IS 
 
    COMPONENT shift_register
    PORT(
         parallel_in : IN  std_logic_vector(3 downto 0);
      	 LR : IN  std_logic_vector(1 downto 0);
         Load : IN  std_logic;
         Reset : IN  std_logic;
         Clock : IN  std_logic;
         output : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    
   signal Data : std_logic_vector(3 downto 0) := (others => '0');
   signal Load : std_logic := '0';
   signal Reset : std_logic := '0';
   signal Clock : std_logic := '0';
   signal LR : std_logic_vector(1 downto 0) := (others => '0');

   signal output : std_logic_vector(3 downto 0);

   constant Clock_period : time := 10 ns;
 
BEGIN
 
   uut: shift_register PORT MAP (
          parallel_in => Data,
       LR => LR,
          Load => Load,
          Reset => Reset,
          Clock => Clock,
          output => output
        );

   Clock_process :process
   begin
    Clock <= '0';
    wait for Clock_period/2;
    Clock <= '1';
    wait for Clock_period/2;
   end process;
 
   stim_proc: process
   begin    
      wait for 100 ns;  
 
    Reset <= '1';
    wait for 100 ns;
    Reset <= '0';
    wait for 100 ns;  
    
    Data <= "1010";
    wait for 100 ns;
    Load <= '1';
    wait for 100 ns;  
    Load <= '0';
    
    wait for 100 ns;  
    LR <= "01";
    wait for 100 ns;  
    LR <= "10";
    wait for 100 ns;  
    LR <= "11";
    wait for 100 ns;
    Load <= '1';
    wait for 20 ns;
    Load <= '0';
    wait;
   end process;

END;