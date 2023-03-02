module DIV_control(ld, mux, div_fin, start, b_less, clk);
input start, b_less, clk;
output ld, mux, div_fin;
reg [2:0] R;
wire [2:0] N;

wire wAnd6, wAnd9;	//n2
wire wAnd3, wAnd5, wAnd7; //n1
wire wAnd1;		//n0

and(wAnd6, ~R[2], R[1], ~R[0], b_less);
and(wAnd9, R[2], ~R[1], ~R[0]);
or(N[2], wAnd6, wAnd9);

and(wAnd3, ~R[2], ~R[1], R[0]);
and(wAnd5, ~R[2], R[1], ~R[0], ~b_less);
and(wAnd7, ~R[2], R[1], R[0]); 
or(N[1], wAnd3, wAnd5, wAnd7);

and(wAnd1, ~R[2], ~R[1], ~R[0], start);
or(N[0], wAnd1, wAnd5);

or(ld, wAnd3, wAnd7);

or(mux, wAnd7, 1'b0);

or(div_fin, wAnd9, 1'b0);


initial begin
R = 3'b000;
end


always @ (posedge clk)
begin
R <= N;
end

endmodule
