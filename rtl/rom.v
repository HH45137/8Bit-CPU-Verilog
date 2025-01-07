module rom
(
    input   wire            i_clk       , 
    input   wire    [7:0]   i_addr      , 
    output  reg     [15:0]  o_instr     
);
    
    reg     [15:0]  mem     [0:255]     ;
    reg     [15:0]  tmp                 ;

    always @ (i_addr) begin
        o_instr <= mem[i_addr];
    end

endmodule