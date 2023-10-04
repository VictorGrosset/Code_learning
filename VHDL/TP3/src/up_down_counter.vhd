library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity up_down_counter is 
   port (  
		resetn: in std_logic;
      clk: in std_logic;
		load: in std_logic;
		enable: in std_logic;
		direction: in std_logic;		
      data_in : in std_logic_vector(3 downto 0 );
      data_out : out std_logic_vector(3 downto 0)
   );
end entity;

architecture arch_up_down_counter of up_down_counter is

	signal i_direction: std_logic:= '0';		
   signal i_data_out : std_logic_vector(3 downto 0);
	 

begin

    process(clk, resetn)
	 
    begin
	 
        if resetn = '0' then
            data_out <= (others => '0' );
				
        elsif rising_edge(clk) then
            if load = '1' then
                i_data_out <= data_in;
					 
            elsif enable ='1' then
				
					if i_direction = '1'then
						i_data_out <= std_logic_vector(unsigned(i_data_out) + 1);
						if i_data_out = "1111" then
								i_direction <= '0';
						end if;
					
					else
						i_data_out <= std_logic_vector(unsigned(i_data_out) + 1);
						if i_data_out = "0000" then
                    i_direction <= '1';
						end if;

            end if;
         end if;
      end if;
		  
   end process;
	 
   data_out <= i_data_out;
	 
end architecture;
