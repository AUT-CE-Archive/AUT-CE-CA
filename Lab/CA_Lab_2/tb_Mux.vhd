--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:32:47 04/20/2021
-- Design Name:   
-- Module Name:   E:/ISE Workspace/CA_Lab_2/tb_Mux.vhd
-- Project Name:  CA_Lab_2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux
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
 
ENTITY tb_Mux IS
END tb_Mux;
 
ARCHITECTURE behavior OF tb_Mux IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux
    PORT(
         a0 : IN  std_logic_vector(3 downto 0);
         a1 : IN  std_logic_vector(3 downto 0);
         a2 : IN  std_logic_vector(3 downto 0);
         a3 : IN  std_logic_vector(3 downto 0);
         sel : IN  std_logic_vector(1 downto 0);
         output : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a0 : std_logic_vector(3 downto 0) := (others => '0');
   signal a1 : std_logic_vector(3 downto 0) := (others => '0');
   signal a2 : std_logic_vector(3 downto 0) := (others => '0');
   signal a3 : std_logic_vector(3 downto 0) := (others => '0');
   signal sel : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux PORT MAP (
          a0 => a0,
          a1 => a1,
          a2 => a2,
          a3 => a3,
          sel => sel,
          output => output
        );

   -- Stimulus process
   stim_proc: process
   begin		
   
      wait for 100 ns;	
  
		a0 <= "0000";
		a1 <= "0001";
		a2 <= "0111";
		a3 <= "0111";
                --get bit 0 of all 4 vector
		sel <= "00";
                --get bit 1 of all 4 vector
		wait for 100ns;
		sel <= "01";
                --get bit 2 of all 4 vector
		wait for 100ns;
		sel <= "10";
                --get bit 3 of all 4 vector
		wait for 100ns;
		sel <= "11";


      wait;
   end process;

END;
