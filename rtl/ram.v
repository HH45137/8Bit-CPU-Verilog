module ram 
(
    input   wire            i_clk   ,
    input   wire    [7:0]   i_data  ,
    input   wire            i_we    ,
    input   wire    [7:0]   i_addr  ,
    output  wire    [7:0]   o_data
);  

    reg     [7:0]   mem     [0:255];

    always @ (posedge i_clk) begin
        if (i_we) begin
            mem[i_addr] <= i_data;
        end
    end

    assign o_data = mem[i_addr];

endmodule