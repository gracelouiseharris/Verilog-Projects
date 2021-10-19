`timescale 1ns / 1ps

module wrapper(
input clk, rst, start, stop, increment,
output [6:0] c, [3:0] a
    );
    
    wire [1:0] ydata;
    wire [1:0] edata;
    wire [3:0] fdata;
    wire [3:0] Q1data;
    wire [3:0] Q2data; 
    wire [3:0] Q3data; 
    wire [3:0] Q4data;
    wire en2data;
    wire en3data;
    wire en4data;
    wire startdata;
    wire stopdata;
    wire countdata;
    wire gdata;
    
state(
    
    .start(start),
    .starten(startdata),
    .stop(stop),
    .stopen(stopdata),
    .counten(countdata)
    );
    
 counter(
    .clk(clk),
    .Y(ydata),
    .counten(countdata),
    .G(gdata)
    );
    
 counter2 (
     .clk(clk),
     .Z(edata)
     );
     
 muxanode(
    .Y(ydata),
    .a(a)
    );
    
clock1(
  .Z(edata),
  .Q1(Q1data),
  .tc1(en2data),
  .rst(rst)
  );
  
  
clock2(
  .en2(en2data),
  .Q2(Q2data),
  .tc2(en3data),
   .rst(rst)
  );
  
clock3(
    .en3(en3data),
    .Q3(Q3data),
    .tc3(en4data),
     .rst(rst)
    );
    
clock4(
      .en4(en4data),
      .Q4(Q4data),
       .rst(rst)
      );
    
decoder(
    .Q1(Q1data),
    .Q2(Q2data),
    .Q3(Q3data),
    .Q4(Q4data),
    .Y(ydata),
    .F(fdata)
    );
    
cathodes(
    
    .F(fdata),
    .c(c)
);

endmodule
