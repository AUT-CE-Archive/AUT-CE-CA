--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:25:12 04/27/2021
-- Design Name:   
-- Module Name:   E:/ISE Workspace/CA_Lab_3/tb_TFF.vhd
-- Project Name:  CA_Lab_3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: TFF
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
 
ENTITY tb_TFF IS
END tb_TFF;
 
ARCHITECTURE behavior OF tb_TFF IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT TFF
    PORT(
         T : IN  std_logic;
         clk : IN  std_logic;
         res : IN  std_logic;
         Q : INOUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal T : std_logic := '0';
   signal clk : std_logic := '0';
   signal res : std_logic := '0';

	--BiDirs
   signal Q : std_logic;

   -- Clock period definitions
   constant clk_period : time := 5 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: TFF PORT MAP (
          T => T,
          clk => clk,
          res => res,
          Q => Q
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
      wait for clk_period;

      -- insert stimulus here 
		T <= '1';
		res <= '1';
		wait for 20 ns;
		T <= '0';
		res <= '1';
		wait for 20 ns;
		T <= '1';
		res <= '1';
		wait for 20 ns;
		T <= '0';
		res <= '0';
		wait for 10 ns;
		T <= '1';
		wait for 20 ns;
		res <= '0';

		

      wait;
   end process;

END;
