//displays the 4bit decimal number on 7seg display.

module display(seg, s);
input [3:0] s;
output [6:0] seg;

wire w0, w1, w2, w3, w4, w5, w6, w7, w8, w9;

and(w0, ~s[3], ~s[2], ~s[1], ~s[0]);
and(w1, ~s[3], ~s[2], ~s[1], s[0]);
and(w2, ~s[3], ~s[2], s[1], ~s[0]);
and(w3, ~s[3], ~s[2], s[1], s[0]);
and(w4, ~s[3], s[2], ~s[1], ~s[0]);
and(w5, ~s[3], s[2], ~s[1], s[0]);
and(w6, ~s[3], s[2], s[1], ~s[0]);
and(w7, ~s[3], s[2], s[1], s[0]);
and(w8, s[3], ~s[2], ~s[1], ~s[0]);
and(w9, s[3], ~s[2], ~s[1], s[0]);

or(seg[6], w0, w1, w7);
or(seg[5], w1, w2, w3, w7);
or(seg[4], w1, w3, w4, w5, w7, w9);
or(seg[3], w1, w4, w7);
or(seg[2], w2, 1'b0);
or(seg[1], w5, w6);
or(seg[0], w1, w4);

endmodule