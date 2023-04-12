------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

------------------------------------------------------------
-- Entity declaration for testbench
------------------------------------------------------------
entity tb_projekt_1 is
    -- Entity of testbench is always empty
end entity tb_projekt_1;

------------------------------------------------------------
-- Architecture body for testbench
------------------------------------------------------------
architecture testbench of tb_projekt_1 is

    -- Local signals
    signal s_i           : std_logic_vector(9 downto 0);
    signal s_o           : std_logic;

    -- todo: each input needs a signal - signal is just for the testbench
    -- was it for uploading to the board itself we would not need them at all... :)

begin

    -- Connecting testbench signals with mux_3bit_4to1
    -- entity (Unit Under Test)
    uut_projekt_1 : entity work.projekt_1
        port map(
            sig_i   => s_i,
            sig_o   => s_o
           
        );

    --------------------------------------------------------
    -- Data generation process
    --------------------------------------------------------
    p_stimulus : process
    begin
    
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started";
        


        

        s_i <= "0111000000";
        wait;
        
        --s_i <= "0100000000";
        --wait for 1000 ns;
        

        
        
        report "Stimulus process finished";
        
        wait; -- Data generation process is suspended forever
        
    end process p_stimulus;

end architecture testbench;
