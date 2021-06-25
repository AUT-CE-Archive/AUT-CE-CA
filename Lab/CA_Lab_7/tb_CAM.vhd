--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:06:07 05/25/2021
-- Design Name:   
-- Module Name:   E:/ISE Workspace/CA_Lab_7/tb_CAM.vhd
-- Project Name:  CA_Lab_7
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CAM
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
 
ENTITY tb_CAM IS
END tb_CAM;
 
ARCHITECTURE behavior OF tb_CAM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CAM
    PORT(
         WR : IN  std_logic;
         RD : IN  std_logic;
         RST : IN  std_logic;
         CLK : IN  std_logic;
         MATCH : OUT  std_logic;
         Data_in : IN  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal WR : std_logic := '0';
   signal RD : std_logic := '0';
   signal RST : std_logic := '0';
   signal CLK : std_logic := '0';
   signal Data_in : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal MATCH : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CAM PORT MAP (
          WR => WR,
          RD => RD,
          RST => RST,
          CLK => CLK,
          MATCH => MATCH,
          Data_in => Data_in
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		
		-- RESET!!!! to set all memory to 00000
		RST <= '0';
		
		-- Read 10101
		WR <= '0';
		RD <= '1';
		RST <= '1';
		Data_in <= "10101";
      wait for 100 ns;	
		
		-- Read 01010
		WR <= '0';
		RD <= '1';
		RST <= '1';
		Data_in <= "01010";
      wait for 100 ns;	
		
		-- Write 10101
		WR <= '1';
		RD <= '0';
		RST <= '1';
		Data_in <= "10101";
      wait for 100 ns;	
		
		-- Write 00100
		WR <= '1';
		RD <= '0';
		RST <= '1';
		Data_in <= "00100";
      wait for 100 ns;	

      wait;
   end process;

END;
