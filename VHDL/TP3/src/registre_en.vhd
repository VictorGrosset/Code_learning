library ieee;
use ieee.std_logic_1164.all;

entity registre_en is 
port (  clk, load, resetn : in std_logic;
              e : in std_logic_vector(7 downto 0 );
              q : out std_logic_vector(7 downto 0) );
end entity;

architecture arch_registre_en of registre_en is


begin

process(clk, resetn)
	begin
		if resetn = '0' then	
			q <= (others => '0');
			
		elsif load = '1' then	  
		   if rising_edge(clk) then
				q <= e;
			end if;
		end if;
	
end process;

end architecture;