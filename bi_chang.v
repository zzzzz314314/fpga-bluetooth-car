`timescale 1ns / 1ps

module bi_chang(is_wall, out_is_wall);
    input is_wall;
    output out_is_wall;
    
    //when close to the wall, is_wall=0
    //https://www.playrobot.com/infrared/1039-infrared-sensor.html
    
    assign out_is_wall = (!is_wall)? 1 : 0;
    //assign led = 1;
endmodule
