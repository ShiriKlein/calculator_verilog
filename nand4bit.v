module nand4bit (
input [3:0]A,
output S
);

wire a0_n_a1;
wire a2_n_a3;

assign a0_n_a1=(~A[0])&(~A[1]);
assign a2_n_a3=(~A[2])&(~A[3]);

assign S=a0_n_a1&a2_n_a3;
endmodule

