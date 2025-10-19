module ENC16to4(w,z,y);

input [15:0]w;
output reg z;
output reg [3:0]y;

always @(*) begin
    z=0;
    y=4'bx;

    begin: p_loop
    for (integer i=15;i>=0;i=i-1) begin
        if(w[i])begin
            z=1;
            y=i;

            disable p_loop;
        end
    end
end
end

endmodule