module FA_SUB (A,B,mux_select,control,Cin,S,Cout);
input A,B,control,Cin,mux_select;
output S,Cout;

wire new_B;
wire result;

minus_control_1bit m_c(.B(B),.control_in(control),.Sum(new_B));

Full_Adder FA0 (.A(A),.B(new_B),.Cin(Cin),.S(result),.Cout(Cout));

Mux_2_to_1 M0(.A(result),.B(A),.Select(mux_select),.S(S)); 

endmodule