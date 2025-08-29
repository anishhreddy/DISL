module MUX2to1(w,s,f);

input [1:0]w;
input s;
output reg f;

always @(w or s) begin
    if(s == 1'b0)
    begin
        f = w[0];
    end
    else
    begin
        f = w[1];
    end
end

endmodule