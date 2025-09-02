module MUX4to1(w,s,f);

input [0:3]w;
input [1:0]s;

output reg f;

always @(w or s) begin
    
    f = s[0] ? (s[1] ? w[3] : w[1]) : (s[1] ? w[2] : w[0]);

end

endmodule