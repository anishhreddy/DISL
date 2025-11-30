module MUX32to1(w,s,f);

input [0:31]w;
input [4:0]s;

output f;

wire [0:3]c;

MUX8to1 stage0a(w[0:7],s[2:0],c[0]);
MUX8to1 stage0b(w[8:15],s[2:0],c[1]);
MUX8to1 stage0c(w[16:23],s[2:0],c[2]);
MUX8to1 stage0d(w[24:31],s[2:0],c[3]);

MUX4to1 stage1(c,s[4:3],f);

endmodule


module MUX8to1(w,s,f);
input [0:7]w;
input [2:0]s;

output reg f;

integer i;

always @(*) begin
    f = 1'b0;
    for(i=0;i<8;i++)
    begin
        if(s == i)
        begin
            f = w[i];
        end
    end     
end
endmodule

module MUX4to1(w,s,f);

input [0:3]w;
input [1:0]s;

output reg f;

always @(*) begin
    f = s[1]?(s[0]?w[3]:w[2]):(s[0]?w[1]:w[0]);
end

endmodule