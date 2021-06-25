--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:11:16 05/25/2021
-- Design Name:   
-- Module Name:   E:/ISE Workspace/CA_Lab_7/tb_RAM.vhd
-- Project Name:  CA_Lab_7
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RAM
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
 
ENTITY tb_RAM IS
END tb_RAM;
 
ARCHITECTURE behavior OF tb_RAM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RAM
    PORT(
         WR : IN  std_logic;
         RD : IN  std_logic;
         RST : IN  std_logic;
         CLK : IN  std_logic;
         Addr : IN  std_logic_vector(4 downto 0);
         Data_out : OUT  std_logic_vector(4 downto 0);
         Data_in : IN  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal WR : std_logic := '0';
   signal RD : std_logic := '0';
   signal RST : std_logic := '0';
   signal CLK : std_logic := '0';
   signal Addr : std_logic_vector(4 downto 0) := (others => '0');
   signal Data_in : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal Data_out : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RAM PORT MAP (
          WR => WR,
          RD => RD,
          RST => RST,
          CLK => CLK,
          Addr => Addr,
          Data_out => Data_out,
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
		
		WR <= '1';
		RD <= '0';
		RST <= '1';
		Addr <= "00000";
		Data_in <= "01001";
      wait for 100 ns;
		
		WR <= '1';
		RD <= '0';
		RST <= '1';
		Addr <= "00001";
		Data_in <= "11111";
      wait for 100 ns;
		
		WR <= '0';
		RD <= '1';
		RST <= '1';
		Addr <= "00000";
      wait for 100 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
