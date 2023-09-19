library IEEE;
use IEEE.std_logic_1164.all;

--library work;


entity testbench_mux4v1 is
end entity;



architecture ar of testbench_mux4v1 is

	signal sel : std_logic_vector(1 downto 0);
	signal D   : std_logic_vector(3 downto 0);

begin


	uut:entity work.mux4v1(ar)
	  port map(sel => sel,
	           D   => D
	          );

	process
	begin
		
		sel <= "00";
		D   <= "0010";
		wait for 10 us;
		
		sel <= "01";
		wait for 10 us;
		
		D   <= "1101";
		wait for 10 us;
		
		sel <= "10";
		wait for 10 us;
		
		D   <= "0110";
		wait for 10 us;
		
		sel <= "11";
		wait for 10 us;
		
		D   <= "1110";
		wait;
		
	
	end process;

end architecture;
