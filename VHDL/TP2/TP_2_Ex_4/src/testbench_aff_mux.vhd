library IEEE;
use IEEE.std_logic_1164.all;

entity testbench_aff_mux is

end entity;



architecture ar of testbench_aff_mux is
signal sw_TB : std_logic_vector (8 downto 0):= (others => '0');
signal hex0_TB : std_logic_vector ( 6 downto 0);
signal hex1_TB : std_logic_vector ( 6 downto 0);
	-- signaux pour les entrees
	
begin


	dut:entity work.aff_mux(arch_aff_mux)
		  port map ( sw => sw_Tb , hex1 => hex1_tb , hex0 => hex0_tB ); 
	
	-- sw(8) s'inverse apres 10 us
	sw_tb(8) <= not sw_tb(8) after 10 us;

	process
	begin
	-- debut de simulation	
		--sw(8) <= '0';

	
	-- modifier sw(7 downto 4) et sw(3 donwto 0) toutes les 40 us  
		sw_tb(7 downto 4) <= x"f";		
		sw_tb(3 downto 0) <= x"a";		
		wait for 40 us;
		
		sw_tb(7 downto 4) <= x"6";		
		sw_tb(3 downto 0) <= x"8";		
		wait for 40 us;
		
		sw_tb(7 downto 4) <= x"c";		
		sw_tb(3 downto 0) <= x"1";		
		wait for 40 us;
		
		sw_tb(7 downto 4) <= x"b";		
		sw_tb(3 downto 0) <= x"4";		
		wait for 40 us;
		
		sw_tb(7 downto 4) <= x"9";		
		sw_tb(3 downto 0) <= x"e";		
		wait for 40 us;
		
		sw_tb(7 downto 4) <= x"7";		
		sw_tb(3 downto 0) <= x"3";		
		wait for 40 us;
		
		
		sw_tb(7 downto 4) <= x"4";		
		sw_tb(3 downto 0) <= x"9";		
		wait for 40 us;
		
		sw_tb(7 downto 4) <= x"d";		
		sw_tb(3 downto 0) <= x"c";		
		wait ;
	

	-- fin de simulation
	
	end process;

end architecture;
