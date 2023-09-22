library ieee;
use ieee.std_logic_1164.all;

entity aff_mux is 
	port ( sw : in std_logic_vector (8 downto 0) ;
			 hex1 : out std_logic_vector (6 downto 0);
			 hex0 : out std_logic_vector (6 downto 0) );
end entity;

architecture arch_aff_mux of aff_mux is
signal cde : std_logic_vector (3 downto 0);
signal data : std_logic_vector (3 downto 0);
signal en_deco : std_logic_vector (1 downto 0);

begin

en_deco <='0'&sw(8);

	Deco1p4 : entity work.deco1p4(arch_deco1p4)
				port map (en => '1', sel => en_deco  , s_deco => cde);
	
	Mux : entity work.mux2v1_4b(ar)
			port map (sel => sw(8), A=> sw(7 downto 4), B=> sw(3 downto 0), s=> data );
	
	Deco0 : entity work.deco7seg_en(ar) 
				port map ( en=> cde(0), e=> data, s=> hex0);
	
	Deco1 : entity work.deco7seg_en(ar) 
				port map ( en=> cde(1), e=> data, s=> hex1);


end architecture;		 