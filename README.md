# multiplier
array multiplication

# 🔢 4-bit Array Multiplier in Verilog

This project implements a **4-bit binary array multiplier** using Verilog HDL. It multiplies two 4-bit binary numbers and outputs an 8-bit result. This is a classic example of a combinational arithmetic circuit used in VLSI and digital design courses.

## 📁 Project Structure

```
├── array_multiplier.v        # Main design module
├── tb_array_multiplier.v     # Testbench for simulation
├── README.md                 # Documentation
```

## ⚙️ How It Works

- Generates partial products using AND gates.
- Partial products are arranged and added using **half adders (HA)** and **full adders (FA)** in a grid-like array.
- Output is the 8-bit product of two 4-bit inputs.

## 🧠 Logic Overview

Each bit of B is ANDed with all bits of A to form four partial products:

```
        A3 A2 A1 A0
     ×     B3 B2 B1 B0
 -----------------------
       P0 P1 P2 P3   ← partial products
 +    P4 P5 P6 P7
 +   P8 P9 P10 P11
 + P12 P13 P14 P15
 -----------------------
     8-bit Product
```

## 🧪 Simulation

### Testbench (`tb_array_multiplier.v`)

```verilog
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
```

## ▶️ Run Instructions

### Using Icarus Verilog:
```bash
iverilog -o mult array_multiplier.v tb_array_multiplier.v
vvp mult
```

### Using Vivado:
1. Create new project
2. Add source and testbench
3. Run behavioral simulation

---

## 📚 References

- M. Morris Mano, *Digital Design*
- VLSI Design Resources & Notes
