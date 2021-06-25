--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:23:25 04/20/2021
-- Design Name:   
-- Module Name:   E:/ISE Workspace/CA_Lab_2/tb_Decoder.vhd
-- Project Name:  CA_Lab_2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Decoder
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
 
ENTITY tb_Decoder IS
END tb_Decoder;
 
ARCHITECTURE behavior OF tb_Decoder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Decoder
    PORT(
         a : IN  std_logic_vector(1 downto 0);
         enable : IN  std_logic;
         output : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(1 downto 0) := (others => '0');
   signal enable : std_logic := '0';

 	--Outputs
   signal output : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Decoder PORT MAP (
          a => a,
          enable => enable,
          output => output
        );

   stim_proc: process
    
      begin		
      wait for 100 ns;	
		
		enable <= '0';
		
		a <= "00";
		wait for 100 ns;
		a <= "01";
		wait for 100 ns;
		a <= "10";
		wait for 100 ns;
		a <= "11";
		wait for 100 ns;
				
		enable <= '1';
		      
		a <= "00";
		wait for 100 ns;
      
		a <= "01";
		wait for 100 ns;
      
		a <= "10";
		wait for 100 ns;
      
		a <= "11";
		wait for 100 ns;

      wait;
   end process;

END;
