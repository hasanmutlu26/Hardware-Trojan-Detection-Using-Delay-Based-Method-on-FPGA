module _7bitOR(out, in);
input [6:0] in;
output [6:0] out;

or (out[0], in[0], 0);
or (out[1], in[1], 0);
or (out[2], in[2], 0);
or (out[3], in[3], 0);
or (out[4], in[4], 0);
or (out[5], in[5], 0);
or (out[6], in[6], 0);


endmodule
