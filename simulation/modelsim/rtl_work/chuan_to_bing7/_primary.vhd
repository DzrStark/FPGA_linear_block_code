library verilog;
use verilog.vl_types.all;
entity chuan_to_bing7 is
    port(
        hm_noise        : in     vl_logic;
        clk16           : in     vl_logic;
        cb_out          : out    vl_logic_vector(6 downto 0)
    );
end chuan_to_bing7;
