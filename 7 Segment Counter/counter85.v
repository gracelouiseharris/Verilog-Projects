`timescale 1ns / 1ps

module counter(
input clk,
output [1:0] Y,
output G,
input counten
    );
    
    reg [20:0] Q;
    
    assign G = clk;
always @(G, counten)
        // When will Always Block Be Triggered
begin
if (G == 1 & counten == 1)
        Q <= Q + 1'b1;
        
end
assign Y[0] = Q[19];
assign Y[1] = Q[20];

endmodule

module counter2(
input clk,
output [1:0] Z
    );
    reg [16:0] Q;

always @ (posedge(clk))            // When will Always Block Be Triggered
begin
        // How Output reacts when Rising Edge of Clock Arrives?
        Q <= Q + 1'b1;
end

assign Z[0] = Q[16];
assign Z[1] = Q[17];

endmodule

