module alu #(
    parameter DATA_WIDTH = 8
)(
    input   wire                        i_clk           ,
    input   wire                        i_rst           ,
    input   wire    [DATA_WIDTH-1:0]    i_a             ,
    input   wire    [DATA_WIDTH-1:0]    i_b             ,
    input   wire                        i_opcode        ,
    input   wire                        i_bus_writable  ,
    output  wire    [DATA_WIDTH-1:0]    o_c             ,
    output  reg                         o_jc            ,
    output  reg                         o_jz
);

reg [DATA_WIDTH-1:0] tmp;
reg carry;
reg current_opcode;

assign o_c = tmp; // 将运算结果连接到输出

always @(posedge i_clk or posedge i_rst) begin
    if (i_rst) begin
        tmp <= 0;
        carry <= 0;
        current_opcode <= 0;
        o_jc <= 0;
        o_jz <= 0;
    end else begin
        current_opcode <= i_opcode; // 锁存当前操作码

        // 执行加法或减法运算
        if (i_opcode == 1'b1) begin
            {carry, tmp} <= i_a + i_b; // 加法，计算进位和结果
        end else begin
            tmp <= i_a - i_b; // 减法，不更新进位
        end

        // 更新标志
        if (i_bus_writable) begin
            // 仅当操作为加法时更新进位标志
            if (current_opcode) begin
                o_jc <= carry;
            end
            // 结果为零时更新零标志
            o_jz <= (tmp == 0);
        end
    end
end

endmodule