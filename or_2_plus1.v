module or_2_plus1 (
input [1:0]A,
input B,
output result
);

wire res0;

assign res0=A[0]|A[1];
assign result=res0|B;

endmodule
