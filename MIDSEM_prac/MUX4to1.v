module MUX4to1(w,s,f);

input [0:3]w;
input [1:0]s;

output reg f;

always @(*) begin
    f = s[1]?(s[0]?w[3]:w[2]):(s[0]?w[1]:w[0]);
end

endmodule
