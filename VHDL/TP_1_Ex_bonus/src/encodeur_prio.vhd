library IEEE;
use IEEE.std_logic_1164.all;


entity encodeur_prio is
	port(
			inter : in std_logic_vector(3 downto 0);
			nb_sortie : out std_logic_vector(2 downto 0)
	    );
end entity;



architecture ar of encodeur_prio is
begin
	nb_sortie <= "000" when inter = "0000"  else
	
					 "001" when inter = "0001" or inter = "0010" or inter = "0100" or inter = "1000" else
					 
					 "010" when (inter(1) = '1' and inter(2) = '1') xor 
									(inter(1) = '1' and inter(3) = '1') xor 
									(inter(2) = '1' and inter(3) = '1') xor 
									(inter(4) = '1' and inter(1) = '1') xor 
									(inter(2) = '1' and inter(4) = '1') xor 
									(inter(3) = '1' and inter(4) = '1') xor else
									
					 "011" when (inter(2) = '1' and inter(3) = '1' and inter(1) = '1' xor 
									(inter(4) = '1' and inter(2) = '1' and inter(1) = '1' xor 
									(inter(4) = '1' and inter(3) = '1' and inter(1) = '1' xor 
									(inter(4) = '1' and inter(3) = '1' and inter(2) = '1' xor else
									
					 "100";

end architecture;
