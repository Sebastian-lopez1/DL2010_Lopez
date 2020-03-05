`timescale 1ns / 1ps
// ELC 2137 - Lab6 - 02/20/2020
// Sebastian Lopez and Sean Dickenscheidt 

module BCD11 (
input [10:0] B, 
output [13:0] Output11 
);

wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10;
wire w11, w12, w13, w14, w15, w16, w17, w18, w19, w20;
wire w21, w22, w23, w24, w25, w26, w27, w28, w29, w30;
wire w31, w32, w33, w34, w35, w36, w37, w38, w39, w40;
wire w41, w42, w43, w44, w45, w46, w47;
 
assign Output11[0] = B[0];

add3 Bobby(
.in({1'b0, B[10:8]}), 
.out({w1, w2, w3, w4}) 
);
add3 Billy(
.in({w2, w3, w4, B[7]}), 
.out({w5, w6, w7, w8})
);
add3 Barron(
.in({w6, w7, w8, B[6]}),
.out({w9, w10, w11, w12})
);
add3 Barry(
.in({1'b0, w1, w5, w9}),
.out({w13, w14, w15, w16})
);
add3 Bart(
.in({w10, w11, w12, B[5]}),
.out({w17, w18, w19, w20})
);
add3 Blake(
.in({w14, w15, w16, w17}),
.out({w21, w22, w23, w24})
);
add3 Ben(
.in({w18, w19, w20, B[4]}),
.out({w25, w26, w27, w28})
);
add3 Brody(
.in({w22, w23, w24, w25}),
.out({w29, w30, w31, w32})
);
add3 Brett(
.in({w26, w27, w28, B[3]}),
.out({w33, w34, w35, w36})
);
add3 Sebas(
.in({1'b0, w13, w21, w29}),
.out({Output11[13], w37, w38, w39})
);
add3 Sean(
.in({w30, w31, w32, w33}),
.out({w40, w41, w42, w43})
);
add3 Steve(
.in({w34, w35, w36, B[2]}),
.out({w44, w45, w46, w47})
);
add3 Shane(
.in({w37, w38, w39, w40}),
.out({Output11[12], Output11[11], Output11[10], Output11[9]})
);
add3 Sam(
.in({w41, w42, w43, w44}),
.out({Output11[8], Output11[7], Output11[6], Output11[5]})
);
add3 Seth(
.in({w45, w46, w47, B[1]}),
.out({Output11[4], Output11[3], Output11[2], Output11[1]})
);

endmodule //BCD 11

