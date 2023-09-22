library IEEE;
use ieee.std_logic_1164.all;

entity mux2v1_4b is
	port (
			sel: in std_logic;
			A, B: in std_logic_vector(3 downto 0);
			S: out std_logic_vector(3 downto 0)
			);
end entity;

architecture ar of mux2v1_4b is
	begin
	S <= A when sel = '0' else
		  B;
		  
end architecture;
	