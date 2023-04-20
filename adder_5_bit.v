module Adder_5_bit ( 
input[4:0]A,B,
input Cin,
output [4:0] Sum,
output Cout 
);

//Ripple bus
wire [3:0] ripple;

Full_Adder FA0 (
.A(A[0]),.B(B[0]),.Cin(Cin),.S(Sum[0]),.Cout(ripple[0])
);

Full_Adder FA1 (
.A(A[1]),.B(B[1]),.Cin(ripple[0]),.S(Sum[1]),.Cout(ripple[1])
);


Full_Adder FA2 (
.A(A[2]),.B(B[2]),.Cin(ripple[1]),.S(Sum[2]),.Cout(ripple[2])
);

Full_Adder FA3 (
.A(A[3]),.B(B[3]),.Cin(ripple[2]),.S(Sum[3]),.Cout(ripple[3])
);

Full_Adder FA4 (
.A(A[4]),.B(B[4]),.Cin(ripple[3]),.S(Sum[4]),.Cout(Cout)
);

endmodule
