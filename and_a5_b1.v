module and_A5_B1 ( 
input[4:0]A,
input B,
output [4:0]Dout
);

assign Dout[0]=A[0]&B;
assign Dout[1]=A[1]&B;
assign Dout[2]=A[2]&B;
assign Dout[3]=A[3]&B;
assign Dout[4]=A[4]&B;

endmodule
