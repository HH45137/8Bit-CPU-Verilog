module pc
(
    input   wire            i_clk   ,
    input   wire            i_rst   ,
    input   wire    [7:0]   i_pc    ,
    output  wire    [7:0]   o_pc
);

    always @ (posedge i_clk) begin
        if(i_rst) begin
            o_pc = 0;
        end else begin
            o_pc = i_pc;
        end
    end

endmodule