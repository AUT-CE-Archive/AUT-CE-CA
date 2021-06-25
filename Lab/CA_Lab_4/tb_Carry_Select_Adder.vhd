--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:05:54 05/11/2021
-- Design Name:   
-- Module Name:   E:/ISE Workspace/CA_Lab_4/tb_Carry_Select_Adder.vhd
-- Project Name:  CA_Lab_4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Carry_Select_Adder
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
 
    COMPONENT Carry_Select_Adder
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Cin : IN  std_logic;
         Sum : OUT  std_logic_vector(3 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

 	--Outputs
   signal Sum : std_logic_vector(3 downto 0);
   signal Cout : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Carry_Select_Adder PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          Sum => Sum,
          Cout => Cout
        );
		  
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		A <= "0000";
		B <= "0000";
		Cin <= '0';
		wait for 100 ns;
		
		A <= "0001";
		B <= "0001";
		Cin <= '0';
		wait for 100 ns;
		
		A <= "0101";
		B <= "0010";
		Cin <= '0';
		wait for 100 ns;
		
		A <= "1001";
		B <= "1010";
		Cin <= '1';
		wait for 100 ns;
      -- insert stimulus here 

      wait;
   end process;

END;
