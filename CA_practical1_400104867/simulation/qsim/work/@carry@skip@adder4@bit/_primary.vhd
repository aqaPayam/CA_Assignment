library verilog;
use verilog.vl_types.all;
entity CarrySkipAdder4Bit is
    port(
        Cout            : out    vl_logic;
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        Cin             : in     vl_logic;
        S               : out    vl_logic_vector(3 downto 0)
    );
end CarrySkipAdder4Bit;
