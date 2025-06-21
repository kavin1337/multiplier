module array_multiplier_4bit (
    input [3:0] A, B,
    output [7:0] P
);

    wire [3:0] pp0, pp1, pp2, pp3;
    wire [7:0] sum1, sum2, sum3;

    assign pp0 = A & {4{B[0]}};
    assign pp1 = A & {4{B[1]}};
    assign pp2 = A & {4{B[2]}};
    assign pp3 = A & {4{B[3]}};

    assign sum1 = {3'b000, pp0[3]} + {2'b00, pp1[3:0], 1'b0};
    assign sum2 = sum1 + {1'b0, pp2[3:0], 2'b00};
    assign sum3 = sum2 + {pp3[3:0], 3'b000};

    assign P = {sum3[7:1], pp0[0]};

endmodule
