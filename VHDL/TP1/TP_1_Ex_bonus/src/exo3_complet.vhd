 library IEEE;
use IEEE.std_logic_1164.all;



entity exo3_complet is
	port(E : in  std_logic_vector(15 downto 1);
	     S : out std_logic_vector(6 downto 0)
	    );
end entity;



architecture ar of exo3_complet is

	signal intermediaire : std_logic_vector(3 downto 0);
	
begin

	num:entity work.encodeur_prio(ar)
	  port map(inter  => E,
	           numero => intermediaire);
	
	deco:entity work.deco7seg(ar)
	  port map(E => intermediaire,
	           S => S);



end architecture;
