module q2(a,b,c,d,f);

input a,b,c,d;
output f;

assign f = ~((~(~a | ~b)) | (~(~b | d)) | (~(~c | ~d)));

endmodule