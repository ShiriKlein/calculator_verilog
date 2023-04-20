module Adder_5_bit_p_m ( 
input[4:0]A,B,
input Cin,mux_select,
output [4:0] Sum,
output Cout 
);

//Ripple bus
wire [3:0] ripple;

FA_SUB FA0 (.A(A[0]),.B(B[0]),.mux_select(mux_select),.control(Cin),.Cin(Cin),.S(Sum[0]),.Cout(ripple[0]));

FA_SUB FA1 (.A(A[1]),.B(B[1]),.mux_select(mux_select),.control(Cin),.Cin(ripple[0]),.S(Sum[1]),.Cout(ripple[1]));

FA_SUB FA2 (.A(A[2]),.B(B[2]),.mux_select(mux_select),.control(Cin),.Cin(ripple[1]),.S(Sum[2]),.Cout(ripple[2]));

FA_SUB FA3 (.A(A[3]),.B(B[3]),.mux_select(mux_select),.control(Cin),.Cin(ripple[2]),.S(Sum[3]),.Cout(ripple[3]));

FA_SUB FA4 (.A(A[4]),.B(B[4]),.mux_select(mux_select),.control(Cin),.Cin(ripple[3]),.S(Sum[4]),.Cout(Cout));


endmodule