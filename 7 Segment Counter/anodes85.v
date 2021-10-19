`timescale 1ns / 1ps

module muxanode(

input [1:0] Y,
output reg [3:0] a
);

always @(Y)
begin
if (Y == 2'b00) 
a = 4'b1110;

if (Y == 2'b01)
 a = 4'b1101;

if (Y == 2'b10)
 a = 4'b1011;

if (Y == 2'b11)
 a = 4'b0111;
 
end
endmodule

