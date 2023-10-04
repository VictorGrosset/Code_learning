library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cpteur_auto is 
    port (  
        clk, load, resetn, compt : in std_logic;
        e : in std_logic_vector(3 downto 0 );
        q : out std_logic_vector(3 downto 0)
    );
end entity;

architecture arch_cpteur_auto of cpteur_auto is
    signal q_sig : std_logic_vector(3 downto 0);
    signal q_compt : std_logic := '0'; -- Initialize to 0

begin
    process(clk, resetn)
    begin
        if resetn = '0' then
            q_sig <= (others => '0' );
        elsif rising_edge(clk) then
            if load = '1' then
                q_sig <= e;
            elsif q_compt ='1' then
                q_sig <= std_logic_vector(unsigned(q_sig) + 1);
                if q_sig = "1111" then
                    q_compt <= '0';
                end if;
            else
                q_sig <= std_logic_vector(unsigned(q_sig) - 1);
                if q_sig = "0000" then
                    q_compt <= '1';
                end if;
            end if;
        end if;
    end process;
    q <= q_sig;

    compt <= q_compt; -- This is fine
end architecture;
