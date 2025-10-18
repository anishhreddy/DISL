module DEC3to8(en,w,y);

input en;
input [2:0]w;
output reg [0:7]y;

always@(*)begin
    y = 8'b0;
    for(integer i=0;i<8;i=i+1)begin
        if(en==1 && w==i)begin
            y[i] = 1'b1;
        end
    end
end

endmodule