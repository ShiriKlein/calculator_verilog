module minus_control_1bit ( 
input B,
input control_in,
output Sum
);

assign Sum = B^control_in;

endmodule