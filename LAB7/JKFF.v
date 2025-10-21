module JKFF(J,K,clk,Q,reset);

input J,K,clk,reset;
output reg Q;

always @(posedge clk)begin
    if(reset) Q<=0;
    else begin
        if(J==0)begin
            if(K==0) Q<=Q;
            else Q<=0;
        end
        else if(J==1)begin
            if(K==0) Q<=1;
            else Q<=~Q;
        end
    end
end
endmodule