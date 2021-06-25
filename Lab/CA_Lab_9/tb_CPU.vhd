--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:05:56 06/08/2021
-- Design Name:   
-- Module Name:   E:/ISE Workspace/CA_Lab_9/tb_CPU.vhd
-- Project Name:  CA_Lab_9
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CPU
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
 
ENTITY tb_CPU IS
END tb_CPU;
 
ARCHITECTURE behavior OF tb_CPU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CPU
    PORT(
         data : INOUT  std_logic_vector(7 downto 0);
         address : OUT  std_logic_vector(5 downto 0);
         oe : OUT  std_logic;
         we : OUT  std_logic;
         rst : IN  std_logic;
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';

	--BiDirs
   signal data : std_logic_vector(7 downto 0);

 	--Outputs
   signal address : std_logic_vector(5 downto 0);
   signal oe : std_logic;
   signal we : std_logic;

   -- Clock period definitions
   constant clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CPU PORT MAP (
          data => data,
          address => address,
          oe => oe,
          we => we,
          rst => rst,
          clk => clk
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
      wait for 100 ns;		
		rst <= '1';
		
		data <= "00000101";
		wait for 200 ns;		
		data <= "00011111";
		wait for 200 ns;
		data <= "11000101";
		wait for 200 ns;
		data <= "11000010";
		wait for 200 ns;
		data <= "01000011";
		wait for 200 ns;
		data <= "10011000";
		wait for 200 ns;
		

      -- insert stimulus here 

      wait;
   end process;

END;
