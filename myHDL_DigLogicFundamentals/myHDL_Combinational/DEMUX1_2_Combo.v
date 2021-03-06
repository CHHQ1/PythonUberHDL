// File: DEMUX1_2_Combo.v
// Generated by MyHDL 0.10
// Date: Sun Sep 23 18:24:15 2018


`timescale 1ns/10ps

module DEMUX1_2_Combo (
    x,
    s,
    y0,
    y1
);
// 1:2 DEMUX written in full combo
// Inputs:
//     x(bool): input feed
//     s(bool): channel select
// Outputs:
//     y0(bool): ouput channel 0
//     y1(bool): ouput channel 1

input x;
input s;
output y0;
wire y0;
output y1;
wire y1;





assign y0 = ((!s) && x);
assign y1 = (s && x);

endmodule
