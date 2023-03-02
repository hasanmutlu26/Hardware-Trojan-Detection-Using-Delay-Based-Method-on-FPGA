module decToSeg_testbench();
reg [31:0] A;
reg clk, start;
wire [31:0] hex5, hex4, hex3, hex2, hex1, hex0;

decimal_to_7seg tt(hex5, hex4, hex3, hex2, hex1, hex0, A, start, clk);

initial begin
clk = 0;
end

initial begin 
	forever begin
	#2; 
	clk = ~clk;
	end 
end


initial begin
start = 1'b0;
A = 32'b11110001001000000;
#20;
start = 1'b1;
end

endmodule
