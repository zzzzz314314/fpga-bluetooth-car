`timescale 1ns / 1ps

module clock_div(
    input clk,
    input rst,
    output reg new_clk
    );
    

    localparam define_speed = 26'd100000;

    reg [25:0] count;
    
  
    always @ (posedge(clk),posedge(rst))
    begin
   
        if (rst == 1'b1)
        begin 
            count = 26'b0;   
            new_clk = 1'b0;            
        end
 
        else if (count == define_speed)
        begin
            count = 26'b0;
            new_clk = ~new_clk;
        end
     
        else
        begin
            count = count + 1'b1;
            new_clk = new_clk;
        end
    end
endmodule
