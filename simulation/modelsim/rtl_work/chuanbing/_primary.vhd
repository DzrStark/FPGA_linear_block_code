library verilog;
use verilog.vl_types.all;
entity chuanbing is
    port(
        clk28           : in     vl_logic;
        mxulie          : in     vl_logic;
        b               : out    vl_logic_vector(3 downto 0)
    );
end chuanbing;
