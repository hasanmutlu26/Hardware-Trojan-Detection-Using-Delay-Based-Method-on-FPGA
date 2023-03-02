module _32bit_DIV_testbench();
reg [31:0] A, B;
reg start, clk;
wire[31:0] resultDiv, resultMod;
wire mod_finish;

_32bit_DIV g0(resultDiv, resultMod, mod_finish, A, B, start, clk);

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
A = 32'b10011110001;
B = 32'b1010;
start = 1'b1;
end

//initial begin
//
//A = 32'b10011110001;
//B = 32'b1010;
//start = 1'b0;
//
//#4;
//
//start = 1'b1;
//
//#4;
//
//start = 1'b0;
//
//#1100;
//
//A = 32'b1000001111;
//B = 32'b1101;
//
//#4;
//
//start = 1'b1;
//
//#4; 
//
//start = 1'b0;
//
//
//end

endmodule
