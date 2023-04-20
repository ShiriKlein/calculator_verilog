module Mux_4bit ( 
input [3:0]A, dvd,
input Select,
output [3:0] S
);

Mux_2_to_1 mux0 (.A(A[0]), .B(dvd[0]), .Select(Select), .S(S[0]));
Mux_2_to_1 mux1 (.A(A[1]), .B(dvd[1]), .Select(Select), .S(S[1]));
Mux_2_to_1 mux2 (.A(A[2]), .B(dvd[2]), .Select(Select), .S(S[2]));
Mux_2_to_1 mux3 (.A(A[3]), .B(dvd[3]), .Select(Select), .S(S[3]));

endmodule
