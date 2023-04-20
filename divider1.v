module divider1 ( 
input [5:0]A,
input[3:0]B,
input control,
output [5:0]S,R
);

//Ripple bus

wire tmp_S5,A5_sub,A3_toMux,nand_res,or_res0,or_res1;
wire [1:0]B4_0;
wire [5:0]B0,B1,B2,A0,A1,A2,A3,A4,sum0,sum1,sum2,sum3,sum4,cout0,cout1,cout2,cout3,cout4,S_or0,S_or1,S_or2,S_or3;


assign B0[5:2]=4'b0;
assign B0[1:0]=B[1:0];
assign B1[5:3]=3'b0;
assign B1[2:0]=B[2:0];
assign B2[5:4]=2'b0;
assign B2[3:0]=B[3:0];

assign A0[5:2]=4'b0;
assign A0[0]=A[4];
assign A0[1]=A5_sub;

assign A1[0]=A[3];
assign A1[5:1]=sum0[4:0];

assign A2[0]=A[2];
assign A2[5:1]=sum1[4:0];

assign A3[0]=A[1];
assign A3[5:1]=sum2[4:0];

assign A4[0]=A[0];
assign A4[5:1]=sum3[4:0];

nand3_1 nn(.A(B[3:1]),.result(nand_res));
assign A3_toMux=A[5]&(~B[0]);
Mux_2_to_1 mux0(.A(A[5]),.B(A3_toMux),.Select(nand_res),.S(A5_sub));

assign tmp_S5=nand_res&A[5];
assign S[5]=tmp_S5&B[0];

or_2_plus1 or2_0(.A(B[3:2]),.B(cout0[5]),.result(or_res0));
assign B4_0[0]=1'b0;
assign B4_0[1]=B[3];
or_2_plus1 or4_1(.A(B4_0),.B(cout1[5]),.result(or_res1));

or_not_and q0(.A(B[0]),.B(B[1]),.control(or_res0),.S(S[4]),.S_or(S_or0));
or_not_and q1(.A(S_or0),.B(B[2]),.control(or_res1),.S(S[3]),.S_or(S_or1));
or_not_and q2(.A(S_or1),.B(B[3]),.control(cout2[5]),.S(S[2]),.S_or(S_or2));
or_not_and q3(.A(S_or2),.B(1'b0),.control(cout3[5]),.S(S[1]),.S_or(S_or3));
or_not_and q4(.A(S_or3),.B(1'b0),.control(cout4[5]),.S(S[0]),.S_or(S_or4));


plus_minus_Adder_6_bit A6_0(.A(A0),.B(B0),.control(control),.mux_select(or_res0),.Sum(sum0), .Cout(cout0));
plus_minus_Adder_6_bit A6_1(.A(A1),.B(B1),.control(control),.mux_select(or_res1),.Sum(sum1), .Cout(cout1));
plus_minus_Adder_6_bit A6_2(.A(A2),.B(B2),.control(control),.mux_select(cout2[5]),.Sum(sum2), .Cout(cout2));
plus_minus_Adder_6_bit A6_3(.A(A3),.B(B2),.control(control),.mux_select(cout3[5]),.Sum(sum3), .Cout(cout3));
plus_minus_Adder_6_bit A6_4(.A(A4),.B(B2),.control(control),.mux_select(cout4[5]),.Sum(sum4), .Cout(cout4));


assign R=sum4;


endmodule
