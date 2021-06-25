--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:28:24 04/20/2021
-- Design Name:   
-- Module Name:   E:/ISE Workspace/CA_Lab_2/tb_Encoder.vhd
-- Project Name:  CA_Lab_2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Encoder
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
 
ENTITY tb_Encoder IS
END tb_Encoder;
 
ARCHITECTURE behavior OF tb_Encoder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Encoder
    PORT(
         input : IN  std_logic_vector(3 downto 0);
         output : OUT  std_logic_vector(1 downto 0);
         v : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic_vector(1 downto 0);
   signal v : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Encoder PORT MAP (
          input => input,
          output => output,
          v => v
        );

   -- Stimulus process
   stim_proc: process
   begin		
    
      wait for 100 ns;	
		
		input <= "0001";
		wait for 100 ns;
		
		input <= "0010";
		wait for 100 ns;
		
		input <= "0100";
		wait for 100 ns;
		
		input <= "1000";
		wait for 100 ns;

      wait;
   end process;

END;
