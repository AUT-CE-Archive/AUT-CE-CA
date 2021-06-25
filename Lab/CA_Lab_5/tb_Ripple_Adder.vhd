--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:07:05 05/11/2021
-- Design Name:   
-- Module Name:   E:/ISE Workspace/CA_Lab_5/tb_Ripple_Adder.vhd
-- Project Name:  CA_Lab_5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Ripple_Adder
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
 
ENTITY tb_Ripple_Adder IS
END tb_Ripple_Adder;
 
ARCHITECTURE behavior OF tb_Ripple_Adder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Ripple_Adder
    PORT(
         A_0 : IN  std_logic;
         A_1 : IN  std_logic;
         A_2 : IN  std_logic;
         A_3 : IN  std_logic;
         B_0 : IN  std_logic;
         B_1 : IN  std_logic;
         B_2 : IN  std_logic;
         B_3 : IN  std_logic;
         Cin : IN  std_logic;
         S : OUT  std_logic_vector(3 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A_0 : std_logic := '0';
   signal A_1 : std_logic := '0';
   signal A_2 : std_logic := '0';
   signal A_3 : std_logic := '0';
   signal B_0 : std_logic := '0';
   signal B_1 : std_logic := '0';
   signal B_2 : std_logic := '0';
   signal B_3 : std_logic := '0';
   signal Cin : std_logic := '0';

 	--Outputs
   signal S : std_logic_vector(3 downto 0);
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Ripple_Adder PORT MAP (
          A_0 => A_0,
          A_1 => A_1,
          A_2 => A_2,
          A_3 => A_3,
          B_0 => B_0,
          B_1 => B_1,
          B_2 => B_2,
          B_3 => B_3,
          Cin => Cin,
          S => S,
          Cout => Cout
        );



   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		A_0 <= '0';
		A_1 <= '0';
		A_2 <= '0';
		A_3 <= '0';
		B_0 <= '0';
		B_1 <= '0';
		B_2 <= '0';
		B_3 <= '0';
      wait for 100 ns;

		A_0 <= '1';
		A_1 <= '0';
		A_2 <= '0';
		A_3 <= '0';
		B_0 <= '1';
		B_1 <= '0';
		B_2 <= '1';
		B_3 <= '1';
      wait for 100 ns;			

      -- insert stimulus here 

      wait;
   end process;

END;
