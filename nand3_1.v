module nand3_1(
input [2:0]A,
output result
);

wire [2:0]tmp;
wire and0;

assign tmp=~A;
assign and0=tmp[0]&tmp[1];
assign result=and0&tmp[2];
 
endmodule
 