library verilog;
use verilog.vl_types.all;
entity BusMux is
    port(
        \OUT\           : out    vl_logic_vector(7 downto 0);
        S0              : in     vl_logic_vector(7 downto 0);
        S1              : in     vl_logic_vector(7 downto 0);
        S               : in     vl_logic
    );
end BusMux;
