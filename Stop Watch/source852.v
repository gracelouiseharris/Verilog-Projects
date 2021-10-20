`timescale 1ns / 1ps

module counter2bit(
    input clk,
    input rst,
    output Y
    );
    reg [1:0] Q;

always @ (posedge(clk), posedge(rst))            // When will Always Block Be Triggered
begin
    if (rst == 1'b1)
        // How Output reacts when Reset Is Asserted
        Q <= 1'b0;
    else
        // How Output reacts when Rising Edge of Clock Arrives?
        Q <= Q + 1'b1;
end

assign Y = Q[1];

endmodule



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



module ClkDivider1 (
    input clk,
    input rst,
    output reg clk_div1
    );
localparam constantNumber = 5000000;
reg [27:0] count;

always @ (posedge(clk), posedge(rst))
begin
    if (rst == 1'b1)
        count <= 28'b0;
    else if (count == constantNumber - 1)
        count <= 28'b0;
    else
        count <= count + 1;
end

always @ (posedge(clk), posedge(rst))
begin
    if (rst == 1'b1)
        clk_div1 <= 1'b0;
    else if (count == constantNumber - 1)
        clk_div1 <= ~clk_div1;
    else
        clk_div1 <= clk_div1;
end

endmodule



module ClkDivider2 (
    input clk,
    input rst,
    output reg clk_div2
    );
localparam constantNumber = 5000000;
reg [27:0] count;

always @ (posedge(clk), posedge(rst))
begin
    if (rst == 1'b1)
        count <= 28'b0;
    else if (count == constantNumber - 1)
        count <= 28'b0;
    else
        count <= count + 1;
end

always @ (posedge(clk), posedge(rst))
begin
    if (rst == 1'b1)
        clk_div2 <= 1'b0;
    else if (count == constantNumber - 1)
        clk_div2 <= ~clk_div2;
    else
        clk_div2 <= clk_div2;
end

endmodule






module ClkDivider3 (
    input clk,
    input rst,
    output reg clk_div3
    );
localparam constantNumber = 500000;
reg [27:0] count;

always @ (posedge(clk), posedge(rst))
begin
    if (rst == 1'b1)
        count <= 28'b0;
    else if (count == constantNumber - 1)
        count <= 28'b0;
    else
        count <= count + 1;
end

always @ (posedge(clk), posedge(rst))
begin
    if (rst == 1'b1)
        clk_div3 <= 1'b0;
    else if (count == constantNumber - 1)
        clk_div3 <= ~clk_div3;
    else
        clk_div3 <= clk_div3;
end

endmodule






module ClkDivider4 (
    input clk,
    input rst,
    output reg clk_div4
    );
localparam constantNumber = 50000;
reg [27:0] count;

always @ (posedge(clk), posedge(rst))
begin
    if (rst == 1'b1)
        count <= 28'b0;
    else if (count == constantNumber - 1)
        count <= 28'b0;
    else
        count <= count + 1;
end

always @ (posedge(clk), posedge(rst))
begin
    if (rst == 1'b1)
        clk_div4 <= 1'b0;
    else if (count == constantNumber - 1)
        clk_div4 <= ~clk_div4;
    else
        clk_div4 <= clk_div4;
end

endmodule






module bin2seg(
   input clk_div1,
   input clk_div2,
   input clk_div3,
   input clk_div4, 
   input [3:0] a,
   output reg [6:0] c,
   output reg rst
    );

always @ (a == 4'b1110, clk_div1)

begin

    if (clk_div1 == 0)
        c = 7'b1000000;    
    else if(clk_div1 == 1)
        c = 7'b1111001;
    else if(clk_div1 == 2)
        c = 7'b0100100;
    else if(clk_div1 == 3)
        c = 7'b0110000;
    else if(clk_div1 == 4)
        c = 7'b0011001;
    else if(clk_div1 == 5)
        c = 7'b0010010;
    else if(clk_div1 == 6)
        c = 7'b0000010;
    else if(clk_div1 == 7)
        c = 7'b1111000;
    else if(clk_div1 == 8)
        c = 7'b0000000;
    else if (clk_div1 == 9)
        c = 7'b0010000;
        
        end
             
always @ (a == 4'b1101, clk_div2)
        
        begin
        
            if (clk_div2 == 0)
                c = 7'b1000000;    
            else if(clk_div2 == 1)
                c = 7'b1111001;
            else if(clk_div2 == 2)
                c = 7'b0100100;
            else if(clk_div2 == 3)
                c = 7'b0110000;
            else if(clk_div2 == 4)
                c = 7'b0011001;
            else if(clk_div2 == 5)
                c = 7'b0010010;
            else if(clk_div2 == 6)
                c = 7'b0000010;
            else if(clk_div2 == 7)
                c = 7'b1111000;
            else if(clk_div2 == 8)
                c = 7'b0000000;
            else if (clk_div2 == 9)
                c = 7'b0010000;
end

always @ (a == 4'b1011, clk_div3)
        
        begin
        
            if (clk_div3 == 0)
                c = 7'b1000000;    
            else if(clk_div3 == 1)
                c = 7'b1111001;
            else if(clk_div3 == 2)
                c = 7'b0100100;
            else if(clk_div3 == 3)
                c = 7'b0110000;
            else if(clk_div3 == 4)
                c = 7'b0011001;
            else if(clk_div3 == 5)
                c = 7'b0010010;
            else if(clk_div3 == 6)
                c = 7'b0000010;
            else if(clk_div3 == 7)
                c = 7'b1111000;
            else if(clk_div3 == 8)
                c = 7'b0000000;
            else if (clk_div3 == 9)
                c = 7'b0010000;
end

always @ (a == 4'b0111, clk_div4)
        
        begin
        
            if (clk_div4 == 0)
                c = 7'b1000000;    
            else if(clk_div4 == 1)
                c = 7'b1111001;
            else if(clk_div4 == 2)
                c = 7'b0100100;
            else if(clk_div4 == 3)
                c = 7'b0110000;
            else if(clk_div4 == 4)
                c = 7'b0011001;
            else if(clk_div4 == 5)
                c = 7'b0010010;
            else if(clk_div4 == 6)
                c = 7'b0000010;
            else if(clk_div4 == 7)
                c = 7'b1111000;
            else if(clk_div4 == 8)
                c = 7'b0000000;
            else if (clk_div4 == 9)
                c = 7'b0010000;
end

endmodule

//module wrapper(
//    input clk,
//    input rst, // rst
//    output [3:0] a,
//    output [6:0] c // Y
//);

//wire Y,
//wire clk_div1,
//wire clk_div2,
//wire clk_div3,
//wire clk_div4;

//counter2bit(
//    .clk(clk),
//    .rst(rst),
//    .Y(Y),
    
//module muxanode(
    
//    .Y(Y)
//    .a(a)
//    );
 
//    );
//    reg [1:0] Q;

//endmodule 

