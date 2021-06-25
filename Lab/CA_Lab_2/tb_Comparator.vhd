--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:06:04 04/20/2021
-- Design Name:   
-- Module Name:   E:/ISE Workspace/CA_Lab_2/tb_Comparator.vhd
-- Project Name:  CA_Lab_2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Comparator
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_Comparator IS
END tb_Comparator;
 
ARCHITECTURE behavior OF tb_Comparator IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Comparator
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         g : IN  std_logic;
         e : IN  std_logic;
         l : IN  std_logic;
         a_gt_b : OUT  std_logic;
         a_eq_b : OUT  std_logic;
         a_lt_b : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
   signal g : std_logic := '0';
   signal e : std_logic := '0';
   signal l : std_logic := '0';

 	--Outputs
   signal a_gt_b : std_logic;
   signal a_eq_b : std_logic;
   signal a_lt_b : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Comparator PORT MAP (
          a => a,
          b => b,
          g => g,
          e => e,
          l => l,
          a_gt_b => a_gt_b,
          a_eq_b => a_eq_b,
          a_lt_b => a_lt_b
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		a <= "0000";
		b <= "0101";
		wait for 100 ns;	
		
		a <= "1100";
		b <= "0101";
		wait for 100 ns;	
		
		a <= "0000";
		b <= "0000";
		wait for 100 ns;	
		
		a <= "1000";
		b <= "0100";
		wait for 100 ns;
		

      wait;
   end process;

END;
