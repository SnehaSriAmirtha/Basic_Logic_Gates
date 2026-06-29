// Basic logic gate implementations in Verilog

module and_gate(
    input a,
    input b,
    output y
);
    assign y = a & b;
endmodule

module or_gate(
    input a,
    input b,
    output y
);
    assign y = a | b;
endmodule

module not_gate(
    input a,
    output y
);
    assign y = ~a;
endmodule

module nand_gate(
    input a,
    input b,
    output y
);
    assign y = ~(a & b);
endmodule

module nor_gate(
    input a,
    input b,
    output y
);
    assign y = ~(a | b);
endmodule

module xor_gate(
    input a,
    input b,
    output y
);
    assign y = a ^ b;
endmodule

module xnor_gate(
    input a,
    input b,
    output y
);
    assign y = ~(a ^ b);
endmodule
module tb_basic_gates;
reg A, B;
wire Y_and, Y_or, Y_nand, Y_nor, Y_xor, Y_xnor;
wire Y_not;
// Instantiate all gate modules
and_gate u1(A, B, Y_and);
or_gate u2(A, B, Y_or);
nand_gate u3(A, B, Y_nand);
nor_gate u4(A, B, Y_nor);
xor_gate u5(A, B, Y_xor);
xnor_gate u6(A, B, Y_xnor);
not_gate u7(A, Y_not);
initial begin
A=0; B=0; #1 $display("%b %b %b %b %b %b %b %b %b", A,B,Y_and,Y_or,Y_nand,Y_nor,Y_xor,Y_xnor,Y_not);
A=0; B=1; #1 $display("%b %b %b %b %b %b %b %b %b", A,B,Y_and,Y_or,Y_nand,Y_nor,Y_xor,Y_xnor,Y_not);
A=1; B=0; #1 $display("%b %b %b %b %b %b %b %b %b", A,B,Y_and,Y_or,Y_nand,Y_nor,Y_xor,Y_xnor,Y_not);
A=1; B=1; #1 $display("%b %b %b %b %b %b %b %b %b", A,B,Y_and,Y_or,Y_nand,Y_nor,Y_xor,Y_xnor,Y_not);
$finish;
end
endmodule
