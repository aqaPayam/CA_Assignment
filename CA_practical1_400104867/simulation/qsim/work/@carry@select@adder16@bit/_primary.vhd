library verilog;
use verilog.vl_types.all;
entity CarrySelectAdder16Bit is
    port(
        Cout            : out    vl_logic;
        A               : in     vl_logic_vector(15 downto 0);
        B               : in     vl_logic_vector(15 downto 0);
        Cin             : in     vl_logic;
        S               : out    vl_logic_vector(15 downto 0)
    );
end CarrySelectAdder16Bit;
