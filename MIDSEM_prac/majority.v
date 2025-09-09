module majority(a,b,c,d,f);

input a,b,c,d;
output f;

wire [0:3]w;
wire [1:0]s;

assign w[0] = 1'b0;
assign w[1] = (c&d);
assign w[2] = (c&d);
assign w[3] = (c|d);
assign s[0] = b;
assign s[1] = a;

MUX4to1 MUX4to1_ins(w,s,f);

endmodule


module MUX4to1(w,s,f);

input [0:3]w;
input [1:0]s;
output reg f;

always @(*) begin
    f = (s[1]?(s[0]?w[3]:w[2]):(s[0]?w[1]:w[0]));
end
endmodule