`timescale 1ns / 1ps

module state(

input start,
output reg starten,
input stop,
output reg stopen,
output counten
);
always @(start, stop)
begin
    if (start == 1)
    starten = 1;
    
    if (stop == 1)
    stopen = 1;
    
    end
    
    assign counten = starten & ~stopen;
    
endmodule
