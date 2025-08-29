module fourbitcomparator(x,y,XeqY,XgtY,XltY);

input [3:0]x,y;
output reg XeqY,XgtY,XltY;

reg [3:0]i;

always @(x or y)
begin
    for (integer k=0;k<4;k++) begin
        i[k] = ~(x[k]^y[k]);
    end

    
    XeqY = 1'b0;
    XgtY = 1'b0;
    XltY = 1'b0;

    if (i[0]&i[1]&i[2]&i[3]) begin
        XeqY = 1'b1;
    end
    else if((x[3] & ~y[3]) | (i[3] & x[2] & ~y[2]) | (i[3] & i[2] & x[1] & ~y[1]) | 
    (i[3] & i[2] & i[1] & x[0] & ~y[0])) begin
        XgtY = 1'b1;
    end
    else begin
        XltY = 1'b1;
    end
end

endmodule
