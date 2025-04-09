library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ss is
    port (
        cb_out: in std_logic_vector(6 downto 0);
        clk: in std_logic;
        ss: out std_logic_vector(2 downto 0)
    );
end ss;

architecture myarch of ss is
begin
    process(clk, cb_out)
    begin
        if rising_edge(clk) then
            ss(2)<=cb_out(6) xor cb_out(5) xor cb_out(4) xor cb_out(2);
            ss(1)<=cb_out(6) xor cb_out(5) xor cb_out(3) xor cb_out(1);
            ss(0)<=cb_out(6) xor cb_out(4) xor cb_out(3) xor cb_out(0);
        end if;
    end process;
end myarch;