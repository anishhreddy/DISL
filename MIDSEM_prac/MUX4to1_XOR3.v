module MUX4to1_XOR3(a,b,c,f);

input a,b,c;
output f;

MUX4to1 MUX4to1_ins({c,~c,~c,c},{a,b},f);

endmodule

module MUX4to1(w,s,f);

input [0:3]w;
input [1:0]s;

output reg f;

integer i;

always @(*) begin
    f = 1'b0;
    for(i=0;i<=3;i++)
    begin
        if(s == i)
        begin
            f = w[i];
        end
    end
end
endmodule