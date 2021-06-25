--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:03:42 06/25/2021
-- Design Name:   
-- Module Name:   E:/ISE Workspace/Binary_GCD/tb_calculator.vhd
-- Project Name:  Binary_GCD
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: calculator
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
 
ENTITY tb_calculator IS
END tb_calculator;
 
ARCHITECTURE behavior OF tb_calculator IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT calculator
    PORT(
         num_1 : IN  std_logic_vector(7 downto 0);
         num_2 : IN  std_logic_vector(7 downto 0);
         load : IN  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic;
         gcd : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal num_1 : std_logic_vector(7 downto 0) := (others => '0');
   signal num_2 : std_logic_vector(7 downto 0) := (others => '0');
   signal load : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal gcd : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: calculator PORT MAP (
          num_1 => num_1,
          num_2 => num_2,
          load => load,
          clk => clk,
          rst => rst,
          gcd => gcd
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		rst <= '0';		
      wait for 10 ns;	      
		
		rst <= '1';		
		load <= '1';
		num_1 <= "00011000";
		num_2 <= "00010000";
      wait for 10 ns;
		
		load <= '0';

      wait;
   end process;

END;
