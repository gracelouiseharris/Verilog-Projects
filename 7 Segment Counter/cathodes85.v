`timescale 1ns / 1ps

module decoder(
input [3:0] Q1,
input [3:0] Q2,
input [3:0] Q3,
input [3:0] Q4,
input [1:0] Y,
output reg [3:0] F
    );
    
always @ (Y)
begin
if (Y == 2'b00)
F = Q1;

else if (Y == 2'b01)
F = Q2;

else if (Y == 2'b10)
F = Q3;

else if (Y == 2'b11)
F = Q4;

end

endmodule


module cathodes(

input [3:0] F,
output reg [6:0] c
);

always @ (F)
begin
    if (F == 4'b0000)
        c = 7'b1000000;
    else if(F == 4'b0001)
        c = 7'b1111001;
    else if(F == 4'b0010)
        c = 7'b0100100;
    else if(F == 4'b0011)
        c = 7'b0110000;
    else if(F == 4'b0100)
        c = 7'b0011001;
    else if(F == 4'b0101)
        c = 7'b0010010;
    else if(F == 4'b0110)
        c = 7'b0000010;
    else if(F == 4'b0111)
        c = 7'b1111000;
    else if(F == 4'b1000)
        c = 7'b0000000;
    else if (F == 4'b1001)
        c = 7'b0010000;
        
        end
        
        endmodule

module decoder(
input [3:0] Q1,
input [3:0] Q2,
input [3:0] Q3,
input [3:0] Q4,
input [1:0] Y,
output reg [3:0] F
    );
    
always @ (Y)
begin
if (Y == 2'b00)
F = Q1;

else if (Y == 2'b01)
F = Q2;

else if (Y == 2'b10)
F = Q3;

else if (Y == 2'b11)
F = Q4;

end

endmodule


module cathodes(

input [3:0] F,
output reg [6:0] c
);

always @ (F)
begin
    if (F == 4'b0000)
        c = 7'b1000000;
    else if(F == 4'b0001)
        c = 7'b1111001;
    else if(F == 4'b0010)
        c = 7'b0100100;
    else if(F == 4'b0011)
        c = 7'b0110000;
    else if(F == 4'b0100)
        c = 7'b0011001;
    else if(F == 4'b0101)
        c = 7'b0010010;
    else if(F == 4'b0110)
        c = 7'b0000010;
    else if(F == 4'b0111)
        c = 7'b1111000;
    else if(F == 4'b1000)
        c = 7'b0000000;
    else if (F == 4'b1001)
        c = 7'b0010000;
        
        end
        
        endmodule