library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity compteur is 
	port(
	resetn: in std_logic;
	load: in std_logic;
	count: in std_logic;
	clk: in std_logic;
	data: in std_logic_vector(3 downto 0);
	output: out std_logic_vector(3 downto 0)
	);
end entity;

architecture ar_compteur of compteur is

	signal i_output: std_logic_vector(3 downto 0);

	begin
		process(clk, resetn)
		begin
			if resetn = '0' then
				i_output <= (others => '0');
			
			elsif rising_edge(clk) then
				if load = '1' then
					i_output <= data;
				elsif count = '1' then
					i_output <= std_logic_vector(unsigned(i_output) + 1);
				else
					i_output <= i_output;
				end if;
			end if;						
						
		end process;
		output <= i_output;
	end architecture;