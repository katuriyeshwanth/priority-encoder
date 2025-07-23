module test;
reg [7:0]in;
wire [2:0]code;
priority_encoder dut(in,code);
initial 
begin
$monitor($time,"in=%b,code=%b",in,code);
in=8'b00010000;
#5 in=8'b00010010;
#5 in=8'b10010000;
#5 $stop;
end
endmodule
