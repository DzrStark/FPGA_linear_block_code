library verilog;
use verilog.vl_types.all;
entity counter is
    port(
        clk             : in     vl_logic;
        c_out           : out    vl_logic_vector(6 downto 0)
    );
end counter;
