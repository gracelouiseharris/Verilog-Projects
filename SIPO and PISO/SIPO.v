`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2018 03:37:30 PM
// Design Name: 
// Module Name: source76
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module siporeg(
    input D, // sw
    input clk, // btn
    output reg Q // led
);
    
always @ (posedge(clk))
begin
if(clk == 1'b1)
    Q <= D; 
else 
    Q = 8'b00000000;
end
endmodule

module mux(
    input sel, // btn
    input [7:0] I0,
    input [7:0] I1, // sw
    output reg [7:0] Y // led
);

always @ (sel, I0, I1)
begin
if(sel == 1'b0)
    Y = I1;
else if(sel == 1'b1)
    Y = I0;
else
    Y = 0;

end 
endmodule
    
module wrapper(
    input [1:0] btn, // clk, sel
    input sw, // datain
    output [7:0] led // Q
);
wire [7:0] Q;

siporeg flipflop(
    .D(sw),
    .clk(btn[0]),
    .Q(Q[0])
);
siporeg flipflop1(
    .D(Q[0]),
    .clk(btn[0]),
    .Q(Q[1])
);
siporeg flipflop2(
    .D(Q[1]),
    .clk(btn[0]),
    .Q(Q[2])
);
siporeg flipflop3(
    .D(Q[2]),
    .clk(btn[0]),
    .Q(Q[3])
);
siporeg flipflop4(
    .D(Q[3]),
    .clk(btn[0]),
    .Q(Q[4])
);
siporeg flipflop5(
    .D(Q[4]),
    .clk(btn[0]),
    .Q(Q[5])
);
siporeg flipflop6(
    .D(Q[5]),
    .clk(btn[0]),
    .Q(Q[6])
);
siporeg flipflop7(
    .D(Q[6]),
    .clk(btn[0]),
    .Q(Q[7])
);
mux mux21(
    .I0(sw),
    .I1(Q),
    .sel(btn[1]),
    .Y(led)
);

endmodule

