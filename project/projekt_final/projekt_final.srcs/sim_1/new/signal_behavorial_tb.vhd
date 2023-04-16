------------------------------------------------------------
--
-- Testbench for 2-bit binary comparator.
-- EDA Playground
--
-- Copyright (c) 2020 Tomas Fryza
-- Dept. of Radio Electronics, Brno Univ. of Technology, Czechia
-- This work is licensed under the terms of the MIT license.
--
------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

------------------------------------------------------------
-- Entity declaration for testbench
------------------------------------------------------------
-- Define the entity for the testbench
entity signal_behavorial_tb is
end signal_behavorial_tb;

-- Define the architecture for the testbench
architecture testbench of signal_behavorial_tb is
  
  constant c_CLK_100MHZ_PERIOD : time    := 10 ns;

  -- Local signals
  signal sig_clk_100mhz : std_logic;
  signal DUT_sig_i : std_logic_vector(9 downto 0);
  signal DUT_sig_o : std_logic;


begin
    -- Instantiate the device under test (DUT)
    signal_behavior_inst : entity work.signal_behavorial

    port map (
      clk => sig_clk_100mhz,
      sig_i => DUT_sig_i,
      sig_o => DUT_sig_o
    );



    -- Stimulus process
  p_clk_gen : process is
  begin

    while now < 36 ms loop             -- 75 periods of 100MHz clock

      sig_clk_100mhz <= '0';
      wait for c_CLK_100MHZ_PERIOD / 2;
      sig_clk_100mhz <= '1';
      wait for c_CLK_100MHZ_PERIOD / 2;

    end loop;
    wait;                               -- Process is suspended forever

  end process p_clk_gen;
  
  p_reset_gen : process is
  begin

        
        --A
        DUT_sig_i <= "0111000000";
        wait for 1000 ns;

        --B       
        DUT_sig_i <= "1101010100";
        wait for 1000 ns;      
        
        --C
        DUT_sig_i <= "1101110100";
        wait for 1000 ns;
        
        --D
        DUT_sig_i <= "1101010000";
        wait for 1000 ns; 
        
        --E
        DUT_sig_i <= "0100000000";
        wait for 1000 ns; 
        
        --F
        DUT_sig_i <= "0101110100";
        wait for 1000 ns; 
        
        --G
        DUT_sig_i <= "1111010000";
        wait for 1000 ns; 
        
        --H
        DUT_sig_i <= "0101010100";
        wait for 1000 ns; 
        
        --I
        DUT_sig_i <= "0101000000";
        wait for 1000 ns; 
        
        --J
        DUT_sig_i <= "0111111100";
        wait for 1000 ns; 
        
        --K
        DUT_sig_i <= "1101110000";
        wait for 1000 ns; 
        
        --L
        DUT_sig_i <= "0111010100";
        wait for 1000 ns; 
        
        --M
        DUT_sig_i <= "1111000000";
        wait for 1000 ns; 
        
        --N
        DUT_sig_i <= "1101000000";
        wait for 1000 ns; 
        
        --O
        DUT_sig_i <= "1111110000";
        wait for 1000 ns; 
        
        --P
        DUT_sig_i <= "0111110100";
        wait for 1000 ns; 
        
        --Q
        DUT_sig_i <= "1111011100";
        wait for 1000 ns; 
        
        --R
        DUT_sig_i <= "0111010000";
        wait for 1000 ns; 
        
        --S
        DUT_sig_i <= "0101010000";
        wait for 1000 ns;
        
        --T
        DUT_sig_i <= "1100000000";
        wait for 1000 ns;
        
        --U
        DUT_sig_i <= "0101110000";
        wait for 1000 ns;
        
        --V
        DUT_sig_i <= "0101011100";
        wait for 1000 ns;
        
        --W
        DUT_sig_i <= "0111110000";
        wait for 1000 ns;
        
        --X
        DUT_sig_i <= "1101011100";
        wait for 1000 ns;
        
        --Y
        DUT_sig_i <= "1101111100";
        wait for 1000 ns;
        
        --Z
        DUT_sig_i <= "1111010100";
        wait for 1000 ns;
        
        --1
        DUT_sig_i <= "0111111111";
        wait for 1000 ns;
        
        --2
        DUT_sig_i <= "0101111111";
        wait for 1000 ns;
        
        --3
        DUT_sig_i <= "0101011111";
        wait for 1000 ns;
        
        --4
        DUT_sig_i <= "0101010111";
        wait for 1000 ns;
        
        --5
        DUT_sig_i <= "0101010101";
        wait for 1000 ns;
        
        --6
        DUT_sig_i <= "1101010101";
        wait for 1000 ns;
        
        --7
        DUT_sig_i <= "1111010101";
        wait for 1000 ns;
        
        --8
        DUT_sig_i <= "1111110101";
        wait for 1000 ns;
        
        --9
        DUT_sig_i <= "1111111111";
        wait for 1000 ns;
        
        --0
        DUT_sig_i <= "1101010100";

        
           

        wait;

  end process p_reset_gen;

end testbench;
