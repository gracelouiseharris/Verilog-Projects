//`timescale 1ns / 1ps
//module counter2bit(
//    input clk,
//    input rst,
//    output Y
//    );
//    reg [1:0] Q;

//always @ (posedge(clk), posedge(rst))            // When will Always Block Be Triggered
//begin
//    if (rst == 1'b1)
//        // How Output reacts when Reset Is Asserted
//        Q <= 1'b0;
//    else
//        // How Output reacts when Rising Edge of Clock Arrives?
//        Q <= Q + 1'b1;
//end

//assign Y = Q[1];

//endmodule


//module muxanode(

//input [1:0] Y,
//output reg [3:0] a
//);

//always @(Y)
//begin
//if (Y == 2'b00) 
//a = 4'b1110;

//if (Y == 2'b01)
// a = 4'b1101;

//if (Y == 2'b10)
// a = 4'b1011;

//if (Y == 2'b11)
// a = 4'b0111;
//end
//endmodule
