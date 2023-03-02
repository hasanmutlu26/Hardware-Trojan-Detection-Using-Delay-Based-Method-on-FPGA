module LowtoHigh_control(pathInput, ld_reg, fin, pathResult, clk);
input pathResult, clk;
output pathInput, ld_reg, fin;

reg [1:0] R;
wire [1:0] N;

wire w000, w001, w010, w011, w100, w101, ws1, ws2;

and (w000, ~R[1], ~R[0], ~pathResult);
and (w001, ~R[1], ~R[0], pathResult);
and (w010, ~R[1], R[0], ~pathResult);
and (w011, ~R[1], R[0], pathResult);
and (w100, R[1], ~R[0], ~pathResult);
and (w101, R[1], ~R[0], pathResult);


or (N[1], w011, w100, w101);
or (N[0], w000, w010);

and (ws1, ~R[1], R[0]);
and (ws2, R[1], ~R[0]);

or (pathInput, ws1, ws2);

and (ld_reg, ~R[1], R[0]);
and (fin, R[1], ~R[0]);




initial begin
R = 1'b0;
end

always @ (posedge clk)
	begin
	if(pathResult == 1 || pathResult == 0) begin
		R <= N;
	end
end

endmodule
