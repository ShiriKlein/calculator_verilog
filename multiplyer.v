module multiplyer ( 
input[4:0]A,B,
output [9:0] S
);

wire [4:0]B_0,B_1,B_2,B_3,B_4;
wire [4:0]A_0,A_1,A_2,A_3;
wire [4:0]sum0,sum1,sum2,sum3;
wire cout0,cout1,cout2,cout3;


and_A5_B1 and0(.A(A[4:0]),.B(B[0]),.Dout(B_0[4:0]));
and_A5_B1 and1(.A(A[4:0]),.B(B[1]),.Dout(B_1[4:0]));
and_A5_B1 and2(.A(A[4:0]),.B(B[2]),.Dout(B_2[4:0]));
and_A5_B1 and3(.A(A[4:0]),.B(B[3]),.Dout(B_3[4:0]));
and_A5_B1 and4(.A(A[4:0]),.B(B[4]),.Dout(B_4[4:0]));

assign A_0[3:0]=B_0[4:1];
assign A_0[4]=1'b0;

assign A_1[3:0]=sum0[4:1];
assign A_1[4]=cout0;

assign A_2[3:0]=sum1[4:1];
assign A_2[4]=cout1;

assign A_3[3:0]=sum2[4:1];
assign A_3[4]=cout2;

Adder_5_bit adder0(.A(A_0[4:0]),.B(B_1[4:0]),.Cin(1'b0),.Sum(sum0[4:0]),.Cout(cout0));
Adder_5_bit adder1(.A(A_1[4:0]),.B(B_2[4:0]),.Cin(1'b0),.Sum(sum1[4:0]),.Cout(cout1));
Adder_5_bit adder2(.A(A_2[4:0]),.B(B_3[4:0]),.Cin(1'b0),.Sum(sum2[4:0]),.Cout(cout2));
Adder_5_bit adder3(.A(A_3[4:0]),.B(B_4[4:0]),.Cin(1'b0),.Sum(sum3[4:0]),.Cout(cout3));

assign S[0]=B_0[0];
assign S[1]=sum0[0];
assign S[2]=sum1[0];
assign S[3]=sum2[0];
assign S[8:4]=sum3[4:0];
assign S[9]=cout3;

endmodule








