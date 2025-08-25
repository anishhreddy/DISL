module q3(a,b,c,d,sop,pos);

input a,b,c,d;
output sop,pos;

assign sop = (a&b&d) | (a&b&c) | (b&c&d) | (a&c&d);
assign pos = (a|b) & (c|d) & (b|c) & (a|d) & (b|d) & (a|c);

endmodule