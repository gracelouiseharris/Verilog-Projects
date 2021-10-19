`timescale 1ns / 1ps

module clock1(
input [1:0] Z,
input rst,
output reg [3:0] Q1,
output reg tc1
    );
    
 
 always @ (posedge Z)
 begin
 if (Q1 >= 9 | rst == 1)
 begin
 Q1 = 0;
 tc1 = 1;
 end
 else
 begin
 Q1 = Q1 + 1;
 tc1 = 0;
 end
 
 end
 
endmodule

//module clock2(
//input clk_div,
//input en2, 
//output reg [3:0] Q2,
//output tc2
//    );
    
// always @ (posedge clk_div)
// begin
// if (en2 == 1 & Q2 >= 9)
// Q2 = 0;
// else if (en2 == 1)
// Q2 = Q2 + 1;
 
// end
 
//assign tc2 = Q2[0] + ~Q2[1] + ~Q2[2] + Q2[3];
    
//endmodule

module clock2(
input en2, 
output reg [3:0] Q2,
output reg tc2,
input rst
    );
   
    
 always @ (posedge en2)
 begin
 //if (rst == 1)
 //Q2 = 0;
 if (Q2 >= 9 | rst == 1)
 begin
 Q2 = 0;
 tc2 = 1;
 end
 else
 begin
 Q2 = Q2 + 1;
 tc2 = 0;
 end
 
 end
endmodule



module clock3(
input en3, 
output reg [3:0] Q3,
output reg tc3,
input rst
    );
    

 always @ (posedge en3)
 begin
 //if (rst == 1)
 //Q3 = 0;
 if (Q3 >= 9 | rst == 1)
 begin
 Q3 = 0;
 tc3 = 1;
 end
 else
 begin
 Q3 = Q3 + 1;
 tc3 = 0;
 end
 
end
endmodule

module clock4(
input en4, 
output reg [3:0] Q4,
input rst
    );
    
    
 always @ (posedge en4)
 begin
 //if (rst == 1)
 //Q4 = 0;
 if (Q4 >= 9 | rst == 1)
 Q4 = 0;
 else
 Q4 = Q4 + 1;
 
end

endmodule


//module clock3(
//input clk_div,
//input en3, 
//output reg [3:0] Q3,
//output tc3
//    );
    
// always @ (posedge clk_div)
// begin
// if (en3 == 1 & Q3 >= 9)
// Q3 = 0;
// else if (en3 == 1)
// Q3 = Q3 + 1;
 
// end
    
//assign tc3 = Q3[0] + ~Q3[1] + ~Q3[2] + Q3[3];

//endmodule

//module clock4(
//input clk_div,
//input en4, 
//output reg [3:0] Q4
//    );
    
// always @ (posedge clk_div)
// begin
// if (en4 == 1 & Q4 >= 9)
// Q4 = 0;
// else if (en4 == 1)
// Q4 = Q4 + 1;
 
//end

//endmodule

