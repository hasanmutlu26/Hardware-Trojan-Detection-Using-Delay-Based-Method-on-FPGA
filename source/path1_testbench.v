module path1_testbench();
reg in;
wire out;

path1 p(out, in);

initial begin
in = 1'b1;
#100;

in = 1'b0;
#100;
end

endmodule
