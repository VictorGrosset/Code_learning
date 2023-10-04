library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity compteur_tb is
end entity;

architecture arch_compteur_tb of compteur_tb is
signal e_tb, q_tb : std_logic_vector( 3 downto 0) ;
signal resetn_tb, load_tb, compt_tb  : std_logic;
signal clk_tb : std_logic := '0';
begin

clk_tb <= not clk_tb after 10 us;
dut : entity work.cpteur(arch_cpteur)
port map( e=>e_tb , q => q_tb , clk => clk_tb, resetn => resetn_tb , load => load_tb,  compt => compt_tb);

process
       begin

		 
	
	e_tb <= "1001" ;
	resetn_tb<= '0'; 
	load_tb<='1';
	compt_tb <= '1';
	wait for 5 us;
	
	resetn_tb <='1' ;
	load_tb <= '0';
	wait for 340 us ;
	
	compt_tb <= '0';
	wait for 340 us ;	

	e_tb<="0110";
	load_tb <= '1';
	wait for 10 us;

	e_tb<= "1011";
	wait for 50 us;
	
	e_tb<= "0101";
	wait for 50 us;


	resetn_tb <= '0';	
	wait;
	
end process;

end architecture;