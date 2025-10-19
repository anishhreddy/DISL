module ENC4to2(w,z,y);

input [3:0]w;
output reg z;
output reg [1:0]y;

always @(*) begin
    z=1;
    casex (w)
        4'b1xxx : y=3;
        4'b01xx : y=2;
        4'b001x : y=1;
        4'b0001 : y=0; 
        default : begin
            y=2'bxx;
            z=0;
        end
    endcase
end
endmodule