--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:28:13 06/15/2021
-- Design Name:   
-- Module Name:   E:/ISE Workspace/CA_Lab_9/tb_cpu_2.vhd
-- Project Name:  CA_Lab_9
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CPU_2
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
 
ENTITY tb_cpu_2 IS
END tb_cpu_2;
 
ARCHITECTURE behavior OF tb_cpu_2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CPU_2
    PORT(
         data : INOUT  std_logic_vector(7 downto 0);
         adress : OUT  std_logic_vector(5 downto 0);
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
   signal adress : std_logic_vector(5 downto 0);
   signal oe : std_logic;
   signal we : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CPU_2 PORT MAP (
          data => data,
          adress => adress,
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
		
		data <= "00000000";
      wait for 100 ns;
		
		data <= "00000001";
      wait for 100 ns;
		
		data <= "00000010";
      wait for 100 ns;
		
		data <= "00001100";
      wait for 100 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
