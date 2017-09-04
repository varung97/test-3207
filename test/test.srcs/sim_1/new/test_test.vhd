----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.09.2017 14:15:39
-- Design Name: 
-- Module Name: test_test - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test_test is
--  Port ( );
end test_test;

architecture Behavioral of test_test is
    component test
        port (A, B : in STD_LOGIC;
              C : out STD_LOGIC);
    end component;
    
    signal A, B, C : STD_LOGIC;
begin

    dut : test port map (A, B, C);
    
    process
    begin
        A <= '0'; B <= '0'; wait for 10ns;
        A <= '0'; B <= '1'; wait for 10ns;
        A <= '1'; B <= '0'; wait for 10ns;
        A <= '1'; B <= '1'; wait for 10ns;
        wait;
    end process;
    
end Behavioral;
