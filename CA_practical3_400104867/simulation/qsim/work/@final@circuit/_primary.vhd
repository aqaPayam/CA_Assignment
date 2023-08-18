library verilog;
use verilog.vl_types.all;
entity FinalCircuit is
    port(
        READY           : out    vl_logic;
        CLK             : in     vl_logic;
        START           : in     vl_logic;
        S               : in     vl_logic;
        INPUT1          : in     vl_logic_vector(7 downto 0);
        INPUT2          : in     vl_logic_vector(7 downto 0);
        OUTPUT          : out    vl_logic_vector(7 downto 0)
    );
end FinalCircuit;
