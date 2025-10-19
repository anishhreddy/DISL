module DEC2to4_low(en,w,y);

input en;
input [1:0]w;
output reg [0:3]y;

always @(*) begin
    case ({en,w})
        4: y = 4'b0111;
        5: y = 4'b1011;
        6: y = 4'b1101;
        7: y = 4'b1110;
        default: y = 4'b1111;
    endcase
end
endmodule

