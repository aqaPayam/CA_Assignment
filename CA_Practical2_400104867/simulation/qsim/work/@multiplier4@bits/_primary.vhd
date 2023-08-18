library verilog;
use verilog.vl_types.all;
entity Multiplier4Bits is
    port(
        P               : out    vl_logic_vector(7 downto 0);
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0)
    );
end Multiplier4Bits;
