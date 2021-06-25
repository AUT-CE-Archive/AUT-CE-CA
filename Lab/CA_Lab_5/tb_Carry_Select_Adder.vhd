--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:37:57 05/11/2021
-- Design Name:   
-- Module Name:   E:/ISE Workspace/CA_Lab_5/tb_Carry_Select_Adder.vhd
-- Project Name:  CA_Lab_5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Carry_Save_Adder
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
 
ENTITY tb_Carry_Select_Adder IS
END tb_Carry_Select_Adder;
 
ARCHITECTURE behavior OF tb_Carry_Select_Adder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Carry_Save_Adder
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         P : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal P : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Carry_Save_Adder PORT MAP (
          A => A,
          B => B,
          P => P
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		A <= "0000";
		B <= "0000";
      wait for 100 ns;	
		
		A <= "0001";
		B <= "1111";
      wait for 100 ns;	
		
		A <= "0101";
		B <= "1010";
      wait for 100 ns;

      wait;
   end process;

END;
