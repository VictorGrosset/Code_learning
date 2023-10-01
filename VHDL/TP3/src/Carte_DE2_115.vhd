library IEEE;
use ieee.std_logic_1164.all;

entity Carte_DE2_115 is
	port (
		SW: in std_logic_vector(17 downto 0);
		Key: in std_logic_vector(3 downto 0);
		LEDR: out std_logic_vector(17 downto 0);
		LEDG: out std_logic_vector(7 downto 0);
		Hex0: out std_logic_vector(6 downto 0)
		);
		
end entity;

architecture arch_Carte_DE2_115 of Carte_DE2_115 is 
	
	begin 
	registre:entity work.registre_en(arch_registre_en)	
	port map(clk => Key(0),resetn => Key(1),load => SW(17),e => SW(7 downto 0),q => LEDR(7 Downto 0));
	
	registre_dec :entity work.registre_dec(arch_registre_dec)
	port map(  clk => Key(0), load => SW(16) , resetn =>Key(1) , decal => SW(15), sens => SW(14), e => SW(7 downto 0), q => LEDR(15 Downto 8));
	
end architecture;
	