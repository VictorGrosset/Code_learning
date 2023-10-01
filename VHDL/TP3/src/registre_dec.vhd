library IEEE;
use ieee.std_logic_1164.all;

entity registre_dec is 
port (  clk, load, resetn, decal, sens : in std_logic;
              e : in std_logic_vector(7 downto 0 );
              q : out std_logic_vector(7 downto 0) );
end entity;

architecture arch_registre_dec of registre_dec is

signal q_sig: std_logic_vector(7 downto 0);

begin

process(clk, resetn)

	begin
	   if resetn = '0' then
			q_sig<=(others => '0' );
		
	   elsif rising_edge(clk) then
			if load = '1' then 
				q_sig <= e;
						
			elsif decal = '0' then
				q_sig <= q_sig;
			
			else 
				if sens = '0' then 
					q_sig <= q_sig(6 downto 0) & '0';
				else 
					q_sig <= '0' & q_sig(7 downto 1);
				end if;
			end if;
		end if;
		
end process;
q <= q_sig;

end architecture;