module scomparator(a,b,cin,XgtY,XltY,XeqY);

input [3:0]a,b;
input cin;
output reg XgtY,XltY,XeqY;

wire [3:0]s;
wire [4:1]c;

reg v;

fulladder stage0(a[0],~b[0],cin,s[0],c[1]);
fulladder stage1(a[1],~b[1],c[1],s[1],c[2]);
fulladder stage2(a[2],~b[2],c[2],s[2],c[3]);
fulladder stage3(a[3],~b[3],c[3],s[3],c[4]);

always @(*) begin
    XgtY = 1'b0;
    XltY = 1'b0;
    XeqY = 1'b0;
    v = c[4]^c[3];

    if(v^s[3])begin
        XltY = 1'b1;
    end
    else if(~(s[3] | s[2] | s[1] | s[0]))
    begin
        XeqY = 1'b1;
    end
    else begin
        XgtY = 1'b1;
    end
    
end
endmodule

module fulladder(a,b,c,sum,carry);

input a,b,c;
output sum,carry;

assign sum = a^b^c;
assign carry = (a&b) | (b&c) | (c&a);

endmodule