library IEEE;
use IEEE.std_logic_1164.all;


entity encodeur_prio is
	port(
			inter : in std_logic_vector(15 downto 1);
			numero : out std_logic_vector(3 downto 0)
	    );
end entity;



architecture ar of encodeur_prio is
begin
	numero <= 	"1111" when inter(15) = '1' else 	-- '1' car on ne récupère qu'un seul bit avec inter(3)
					"1110" when inter(14) = '1' else
					"1101" when inter(13) = '1' else
					"1100" when inter(12) = '1' else										
					"1011" when inter(11) = '1' else
					"1010" when inter(10) = '1' else
					"1001" when inter(9) = '1' else
					"1000" when inter(8) = '1' else
					"0111" when inter(7) = '1' else
					"0110" when inter(6) = '1' else
					"0101" when inter(5) = '1' else
					"0100" when inter(4) = '1' else
					"0011" when inter(3) = '1' else
					"0010" when inter(2) = '1' else
					"0001" when inter(1) = '1' else
					"0000";										-- when others implicite

end architecture;
