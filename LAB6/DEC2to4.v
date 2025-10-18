module DEC2to4(en,w,y);

input en;
input [1:0]w;
output reg [0:3]y;

always @(*) begin
    if(en==0)begin
        y = 4'b0000;
    end
    else if(w==0)begin
        y = 4'b1000;
    end
    else if(w==1)begin
        y = 4'b0100;
    end
    else if(w==2)begin
        y = 4'b0010;
    end
    else begin
        y = 4'b0001;
    end
end
endmodule