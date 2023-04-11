----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/05/2023 12:23:09 PM
-- Design Name: 
-- Module Name: project_1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity project_1 is
  Port (
  sig_i     : in   std_logic_vector(9 downto 0);
  sig_o     : out    std_logic
   );
end project_1;

architecture Behavioral of project_1 is

begin
process is
		variable i : integer :=0; 
        variable j : integer :=1;
    begin
        
        while (i < 10) loop
        
        	while (i < 10) loop
            
        		if (sig_i(i)='1' and sig_i(j)='1')then
          		   sig_o <=  '1';
          		   wait for 3000 ms;
          		   sig_o <=  '0';
          		   wait for 1000 ms;
            
       			elsif (sig_i(i)='0' and sig_i(j)='1')then
        		   sig_o <=  '1';
         		   wait for 3000 ms;
         		   sig_o <=  '0';
        		   wait for 1000 ms;
            
       			else
       			   sig_o <=  '0';     
                   
    	     	end if;
                
                i := i+2;
        		j := j+2;
                
            end loop;
            
        end loop;                 
         
end process;



end architecture Behavioral;
