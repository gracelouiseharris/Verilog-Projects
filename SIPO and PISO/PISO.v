`timescale 1ns / 1ps

module piso(

    input D, 
    input clk, 
    output reg Q,
    output reg led
);
    
always @ (posedge(clk))
begin
if(clk == 1'b1)
    Q <= D; 
else 
    Q = 8'b00000000;
end

always @ (D)
begin 
if(D == 1'b1)
    led = 1'b1;
else
    led = 1'b0;
end
endmodule

module connect(
    input Q,
    input D,
    input shift,
    output Y
);

assign Y = (Q & shift) | (D & ~shift);

endmodule

module ClkDivider(
    input clk,
    input rst,
    output reg clk_div
    );
localparam constantNumber = 50000000;
reg [31:0] count;

always @ (posedge(clk), posedge(rst))
begin
    if (rst == 1'b1)
        count <= 32'b0;
    else if (count == constantNumber - 1)
        count <= 32'b0;
    else
        count <= count + 1;
end

always @ (posedge(clk), posedge(rst))
begin
    if (rst == 1'b1)
        clk_div <= 1'b0;
    else if (count == constantNumber - 1)
        clk_div <= ~clk_div;
    else
        clk_div <= clk_div;
end

endmodule
   
module wrapper(
    input [1:0] btn, // loads
    input [7:0] sw, // D
    input clk, // clk
    output [7:0] led // Q
);
wire [7:0] Q;
wire [15:0] G;
wire newClk;

piso flipflop(
    .D(G[7]),
    .clk(newClk),
    .Q(Q[0]),
    .led(led[0])
);
connect sel(
    .D(sw[1]),
    .Q(Q[0]),
    .shift(btn[0]),
    .Y(G[0])
);

piso flipflop1(
    .D(G[0]),
    .clk(newClk),
    .Q(Q[1]),
    .led(led[1])
);
connect sel1(
    .D(sw[2]),
    .Q(Q[1]),
    .shift(btn[0]),
    .Y(G[1])
);

piso flipflop2(
    .D(G[1]),
    .clk(newClk),
    .Q(Q[2]),
    .led(led[2])
);
connect sel2(
    .D(sw[3]),
    .Q(Q[2]),
    .shift(btn[0]),
    .Y(G[2])
);

piso flipflop3(
    .D(G[2]),
    .clk(newClk),
    .Q(Q[3]),
    .led(led[3])
);
connect sel3(
    .D(sw[4]),
    .Q(Q[3]),
    .shift(btn[0]),
    .Y(G[3])
);

piso flipflop4(
    .D(G[3]),
    .clk(newClk),
    .Q(Q[4]),
    .led(led[4])
);
connect sel4(
    .D(sw[5]),
    .Q(Q[4]),
    .shift(btn[0]),
    .Y(G[4])
);

piso flipflop5(
    .D(G[4]),
    .clk(newClk),
    .Q(Q[5]),
    .led(led[5])
);
connect sel5(
    .D(sw[6]),
    .Q(Q[5]),
    .shift(btn[0]),
    .Y(G[5])
);

piso flipflop6(
    .D(G[5]),
    .clk(newClk),
    .Q(Q[6]),
    .led(led[6])
);
connect sel6(
    .D(sw[7]),
    .Q(Q[6]),
    .shift(btn[0]),
    .Y(G[6])
);

piso flipflop7(
    .D(G[6]),
    .clk(newClk),
    .Q(Q[7]),
    .led(led[7])
);

connect sel7(
    .D(sw[0]),
    .Q(Q[6]),
    .shift(btn[0]),
    .Y(G[7])
);

ClkDivider divide1Hz(
    .clk(clk),
    .rst(btn[2]),
    .clk_div(newClk)
    );

endmodule

