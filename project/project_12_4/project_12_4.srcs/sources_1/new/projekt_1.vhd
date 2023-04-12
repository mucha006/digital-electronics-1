------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

------------------------------------------------------------
-- Entity declaration for 3-bit 4 to 1 multiplexer
------------------------------------------------------------
entity projekt_1 is

    port(
          sig_i     : in   std_logic_vector(9 downto 0);
  		  sig_o     : out    std_logic;
  		  clk : in    std_logic 
    );
    
end entity projekt_1;

------------------------------------------------------------
-- Architecture body for 3-bit 4 to 1 multiplexer
------------------------------------------------------------
architecture Behavioral of projekt_1 is
  -- Local delay counter
  signal sig_cnt : unsigned(4 downto 0);
  -- Specific values for local counter
  constant c_DELAY_4SEC : unsigned(4 downto 0) := b"1_0000"; --! 4-second delay
  constant c_DELAY_2SEC : unsigned(4 downto 0) := b"0_1000"; --! 2-second delay
  constant c_DELAY_1SEC : unsigned(4 downto 0) := b"0_0100"; --! 1-second delay
  constant c_ZERO       : unsigned(4 downto 0) := b"0_0000"; --! Just zero
begin 

process (clk) is 

		variable i : integer :=0;  
        variable j : integer :=1; 

    begin 
    if rising_edge(clk) then 
        while (i < 10) loop 
        	while (i < 10) loop 
        	
        		if (sig_i(i)='1' and sig_i(j)='1')then 
        		
          		   if (sig_cnt < c_DELAY_2SEC) then
                        sig_o <=  '1'; 
                   else
                        sig_o <=  '0';
                   end if;
       			
       			
       			elsif (sig_i(0)='1' and sig_i(1)='0')then 
          		   
          		   if (sig_cnt < c_DELAY_1SEC) then
                        sig_o <=  '1'; 
                   else
                        sig_o <=  '0';
                   end if;

       			
       			else 
                   sig_o <=  '0'; 

    	    	end if;
                 
                i := i+2; 
        		j := j+2;            

        	end loop; 

        end loop;                        
   end if;
end process; 

end architecture Behavioral;
