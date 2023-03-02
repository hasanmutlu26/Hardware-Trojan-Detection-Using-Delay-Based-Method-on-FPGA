module singlepath_plode_testbench();
reg clk;
wire N8076;

singlepath_plode t(N8076, clk, 1'b1, 1'b0);

initial begin
clk = 0;
end

initial begin 
	forever begin
	#10000; 
	clk = ~clk;
	end 
end

endmodule
