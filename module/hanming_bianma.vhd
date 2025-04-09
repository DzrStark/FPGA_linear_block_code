library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity hmbbm is
    port (
        b: in std_logic_vector(3 downto 0);
        clk4:in std_logic;
        hm_out: out std_logic_vector(6 downto 0)
    );
end hmbbm;

architecture myarch of hmbbm is
begin
    process(clk4,b)
    begin
        if rising_edge(clk4) then
            hm_out(0)<=b(3) xor b(1) xor b(0);
            hm_out(1)<=b(3) xor b(2) xor b(0);
            hm_out(2)<=b(3) xor b(2) xor b(1);
            hm_out(3)<=b(0);
            hm_out(4)<=b(1);
            hm_out(5)<=b(2);
            hm_out(6)<=b(3);
        end if;
    end process;
end myarch;