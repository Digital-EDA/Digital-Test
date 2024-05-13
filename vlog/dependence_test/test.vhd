library IEEE;  
use IEEE.STD_LOGIC_1164.ALL;  
use IEEE.NUMERIC_STD.ALL;


entity adder_4bit is  
    port(  
        A : in std_logic_vector(3 downto 0);  
        B : in std_logic_vector(3 downto 0);  
        Sum : out std_logic_vector(3 downto 0);  
        CarryOut : out std_logic
    );
end entity;



architecture behavior of adder_4bit is  
    signal temp : unsigned(4 downto 0);  
begin  
    temp <= ("0" & A) + ("0" & B);  
    Sum <= temp(3 downto 0);  
    CarryOut <= not(temp(4));  
end architecture;
