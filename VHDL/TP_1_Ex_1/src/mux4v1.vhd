library IEEE;
use IEEE.std_logic_1164.all;


entity mux4v1 is
	port(
			d : in std_logic_vector(3 downto 0);
			sel : in std_logic_vector(1 downto 0);
			s : out std_logic
	    );
end entity;



architecture ar of mux4v1 is
begin
		with sel select s <= d(0) when "00",
									d(1) when "01",
									d(2) when "10",
									d(3) when others;
end architecture;
