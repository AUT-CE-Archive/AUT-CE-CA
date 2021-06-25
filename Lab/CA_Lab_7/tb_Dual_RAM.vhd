--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:53:48 05/25/2021
-- Design Name:   
-- Module Name:   E:/ISE Workspace/CA_Lab_7/tb_Dual_RAM.vhd
-- Project Name:  CA_Lab_7
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Dual_RAM
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
 
ENTITY tb_Dual_RAM IS
END tb_Dual_RAM;
 
ARCHITECTURE behavior OF tb_Dual_RAM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Dual_RAM
    PORT(
         WR : IN  std_logic;
         RD : IN  std_logic;
         RST : IN  std_logic;
         CLK : IN  std_logic;
         Addr_1 : IN  std_logic_vector(4 downto 0);
         Addr_2 : IN  std_logic_vector(4 downto 0);
         port_1_en : IN  std_logic;
         port_2_en : IN  std_logic;
         Data_out : OUT  std_logic_vector(4 downto 0);
         Data_in : IN  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal WR : std_logic := '0';
   signal RD : std_logic := '0';
   signal RST : std_logic := '0';
   signal CLK : std_logic := '0';
   signal Addr_1 : std_logic_vector(4 downto 0) := (others => '0');
   signal Addr_2 : std_logic_vector(4 downto 0) := (others => '0');
   signal port_1_en : std_logic := '0';
   signal port_2_en : std_logic := '0';
   signal Data_in : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal Data_out : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Dual_RAM PORT MAP (
          WR => WR,
          RD => RD,
          RST => RST,
          CLK => CLK,
          Addr_1 => Addr_1,
          Addr_2 => Addr_2,
          port_1_en => port_1_en,
          port_2_en => port_2_en,
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
      -- Write 01010 on port 1
		RD <= '1';
		WR <= '0';
		RST <= '1';
		Addr_1 <= "00010";
		port_1_en <= '1';
		port_2_en <= '0';
		Data_in <= "01010";
      wait for 100 ns;
		
		-- Write 10101 on port 2
		RD <= '1';
		WR <= '0';
		RST <= '1';
		Addr_2 <= "00001";
		port_1_en <= '0';
		port_2_en <= '1';
		Data_in <= "10101";
      wait for 100 ns;
		
		-- Read 01010 from port 1
		RD <= '0';
		WR <= '1';
		RST <= '1';
		port_1_en <= '1';
		port_2_en <= '0';
		Addr_1 <= "00010";		
      wait for 100 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
