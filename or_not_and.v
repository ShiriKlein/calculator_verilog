module or_not_and ( 
input A,B,control,
output S,S_or
);

//Ripple bus
wire control_not;
wire or_A_B;

assign control_not=~control;
assign or_A_B=A|B;
assign S=or_A_B&control_not;
assign S_or=or_A_B;


endmodule
