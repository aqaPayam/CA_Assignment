library verilog;
use verilog.vl_types.all;
entity Ripple_Adder_4bit is
    port(
        C_out           : out    vl_logic;
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        C_in            : in     vl_logic;
        S               : out    vl_logic_vector(3 downto 0)
    );
end Ripple_Adder_4bit;
