module Mux_2_to_1 ( 
input A,B,
input Select,
output S
);

//Ripple bus
wire Select_not;
wire and_A;
wire and_B;

assign Select_not=~Select;
assign and_A=A&Select_not;
assign and_B=B&Select;
assign S=and_A|and_B;

endmodule
