module delay_control(ld, fin, pathResult, clk);
input pathResult, clk;
output ld, fin;
reg R;


not(ld, R);

assign fin = R;


initial begin
R = 1'b0;
end


always @ (posedge clk)
begin
if(pathResult == 1 || pathResult == 0) begin
R <= pathResult;
end
end


endmodule
