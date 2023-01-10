--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:20:45 11/28/2022
-- Design Name:   
-- Module Name:   E:/SOPHOMORE_AW/Digital Logic Design/lab/lab11/myRevCounter/RevCounter_sch_tb.vhd
-- Project Name:  MyRevCounter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RevCounter
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
 
ENTITY RevCounter_sch_tb IS
END RevCounter_sch_tb;
 
ARCHITECTURE behavior OF RevCounter_sch_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RevCounter
    PORT(
         clk : IN  std_logic;
         s : IN  std_logic;
         cnt : OUT  std_logic_vector(15 downto 0);
         Rc : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal s : std_logic := '0';

 	--Outputs
   signal cnt : std_logic_vector(15 downto 0);
   signal Rc : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RevCounter PORT MAP (
          clk => clk,
          s => s,
          cnt => cnt,
          Rc => Rc
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
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
