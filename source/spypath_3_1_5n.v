module spypath_3_1_5n(pathResult, pathInput);
input pathInput;
output pathResult;

(* keep = 1 *) wire w0, w1, w2, w3;

spypath_3_1 p0(w0, pathInput, 1'b0, 1'b0, 1'b1, 1'b0);
spypath_3_1 p1(w1, w0, 1'b0, 1'b0, 1'b1, 1'b0);
spypath_3_1 p2(w2, w1, 1'b0, 1'b0, 1'b1, 1'b0);
spypath_3_1 p3(w3, w2, 1'b0, 1'b0, 1'b1, 1'b0);
spypath_3_1 p4(pathResult, w3, 1'b0, 1'b0, 1'b1, 1'b0);

endmodule
