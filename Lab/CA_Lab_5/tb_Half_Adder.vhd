--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:17:57 05/11/2021
-- Design Name:   
-- Module Name:   E:/ISE Workspace/CA_Lab_5/tb_Half_Adder.vhd
-- Project Name:  CA_Lab_5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Half_Adder
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
 
ENTITY tb_Half_Adder IS
END tb_Half_Adder;
 
ARCHITECTURE behavior OF tb_Half_Adder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Half_Adder
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         S : OUT  std_logic;
         C : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';

 	--Outputs
   signal S : std_logic;
   signal C : std_logic;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Half_Adder PORT MAP (
          A => A,
          B => B,
          S => S,
          C => C
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		A <= '0';
		B <= '0';
      wait for 100 ns;
		
		A <= '1';
		B <= '0';
      wait for 100 ns;
		
		A <= '0';
		B <= '1';
      wait for 100 ns;
		
		A <= '1';
		B <= '1';
      wait for 100 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
