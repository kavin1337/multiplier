module tb_array_multiplier_4bit;
    reg [3:0] A, B;
    wire [7:0] P;

    array_multiplier_4bit uut (.A(A), .B(B), .P(P));

    initial begin
        $monitor("A=%b, B=%b => Product=%b", A, B, P);
        A = 4'b0011; B = 4'b0010; #10;
        A = 4'b1010; B = 4'b0101; #10;
        A = 4'b1111; B = 4'b1111; #10;
        $finish;
    end
endmodule
