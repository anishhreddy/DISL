module comparator(a,b,XgtY,XltY,XeqY);

input [3:0]a,b;
output reg XgtY,XltY,XeqY;

reg [3:0]i;

integer j;

always @(*)begin
    for (j =0 ;j<4 ;j++ ) begin
        i[j] = ~(a[j]^b[j]);    
    end

    XeqY = 0;
    XltY = 0;
    XgtY = 0;

    if(i[3]&i[2]&i[1]&i[0])
    begin
        XeqY = 1;
    end
    else if(a[3]&~b[3] | i[3]&a[2]&~b[2] | i[3]&i[2]&a[1]&~b[1] | i[3]&i[2]&i[1]&a[0]&~b[0])begin
        XgtY = 1;
    end
    else begin
        XltY=1;
    end
end
endmodule