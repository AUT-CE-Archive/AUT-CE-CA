--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:44:31 04/27/2021
-- Design Name:   
-- Module Name:   E:/ISE Workspace/CA_Lab_3/tb_MultiSequenceDetector.vhd
-- Project Name:  CA_Lab_3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MultiSequenceDetector
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
 
ENTITY tb_MultiSequenceDetector IS
END tb_MultiSequenceDetector;
 
ARCHITECTURE behavior OF tb_MultiSequenceDetector IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MultiSequenceDetector
    PORT(
         clk : IN  std_logic;
         input : IN  std_logic;
         output : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal input : std_logic := '0';

 	--Outputs
   signal output : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MultiSequenceDetector PORT MAP (
          clk => clk,
          input => input,
          output => output
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
      wait for 10 ns;
		input <= '0';
		wait for 10 ns;
		input <= '1';
		wait for 10 ns;
		input <= '0';
		wait for 10 ns;
		input <= '1';
		-- First end
		wait for 10 ns;
		input <= '0';
		wait for 10 ns;
		input <= '1';
		wait for 10 ns;
		input <= '1';
		wait for 10 ns;
		input <= '0';
		-- Second end
		wait for 10 ns;
		input <= '1';
		wait for 10 ns;
		input <= '0';
   end process;

END;
