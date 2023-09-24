library ieee;
use ieee.std_logic_1164.all;

entity deco1p4 is 
	port (en : in std_logic;
			sel : in std_logic_vector(1 downto 0);
			s_deco : out std_logic_vector(3 downto 0) );
end entity;

architecture arch_deco1p4 of deco1p4 is

begin

	S_deco <= "0000" when en ='0' else
		  "0001" when sel="00" else
		  "0010" when sel="01" else
		  "0100" when sel="10" else
		  "1000";


end architecture;
		
