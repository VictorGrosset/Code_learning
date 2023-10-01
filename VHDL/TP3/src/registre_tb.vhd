library ieee;
use ieee.std_logic_1164.all;

entity registre_tb is
end entity;

architecture arch_registre_tb of registre_tb is
signal e_tb, q_tb : std_logic_vector( 7 downto 0) ;
signal resetn_tb, load_tb  : std_logic;
signal clk_tb : std_logic := '0'; 

begin
clk_tb <= not clk_tb after 5 ns;

dut:entity work.registre_en (arch_registre_en)
			port map( e=>e_tb , q => q_tb , clk => clk_tb, resetn => resetn_tb , load => load_tb );

	process
       begin
			
			e_tb <= "00001001";
			load_tb <= '1';
			resetn_tb <= '0'  ; 
			wait for 15 ns;
	
			e_tb<="11000110" ;
			resetn_tb <='1' ;
			wait for 15 ns ;
 
			load_tb <= '0';
			e_tb<="10100101";
			wait for 15 ns;

			e_tb<= "10011010";
			wait for 15 ns;
	
			resetn_tb<= '0';
			e_tb<= "11001011";	
			wait for 15 ns;

			e_tb<= "10010100";
			wait;

	end process;
end architecture;