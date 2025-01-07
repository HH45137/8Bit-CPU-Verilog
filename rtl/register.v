module register 
#(
    parameter DATA_WIDTH = 8;
)
(
    // Input
    input   wire    i_clk           ,
    input   wire    i_rst           ,
    input   wire    i_we            ,
    input   wire    i_bus_writable  ,
    // Output
    output  wire    [DATA_WIDTH-1:0]    o_data      ,
    inout   wire    [DATA_WIDTH-1:0]    io_data     ,
);

endmodule