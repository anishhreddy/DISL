module q2a(a,b,c,d,f);

input a,b,c,d;
output f;

assign f = (~(b) | d) & (b | c);

endmodule