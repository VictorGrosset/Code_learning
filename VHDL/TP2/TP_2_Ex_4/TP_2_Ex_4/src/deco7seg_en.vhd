library IEEE;
use IEEE.std_logic_1164.all;


entity deco7seg_en is
	port(E : in  std_logic_vector(3 downto 0);
			en : in std_logic ;
	     S : out std_logic_vector(6 downto 0)
	    );
end entity;



architecture ar of deco7seg_en is
begin

	with en&E select S <= "1000000" when "10000", -- 0
	                   "1111001" when "10001", -- 1
							 "0100100" when "10010", -- 2
							 "0110000" when "10011", -- 3
							 "0011001" when "10100", -- 4
							 "0010010" when "10101", -- 5
							 "0000010" when "10110", -- 6
							 "1111000" when "10111", -- XX
							 "0000000" when "11000", -- 8
							 "0010000" when "11001", -- XX
							 "0001000" when "11010", -- A
							 "0000011" when "11011", -- XX
							 "1000110" when "11100", -- XX
							 "0100001" when "11101", -- XX
							 "0000110" when "11110", -- XX
							 "0001110" when "11111", -- F
							 "1111111" when others; -- EN='0'


end architecture;
