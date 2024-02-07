module logicgates(input a, input b, output and_out, output or_out, output not_a_out, output nand_out, output nor_out, output xor_out, output xnor_out);

  assign and_out   = a & b;
  assign or_out    = a | b;
  assign not_a_out = ~a;
  assign nand_out  = ~(a & b);
  assign nor_out   = ~(a | b);
  assign xor_out   = a ^ b;
  assign xnor_out  = ~(a ^ b);

endmodule


module testbench;

  reg a, b;
  wire and_out, or_out, not_a_out, nand_out, nor_out, xor_out, xnor_out;

  logicgates lg(a, b, and_out, or_out, not_a_out, nand_out, nor_out, xor_out, xnor_out);

  initial begin
    $monitor("a=%b, b=%b, AND=%b, OR=%b, NOT(A)=%b, NAND=%b, NOR=%b, XOR=%b, XNOR=%b", a, b, and_out, or_out, not_a_out, nand_out, nor_out, xor_out, xnor_out);
    
    // Test case 1
    a = 0; b = 0; #10;
    
    // Test case 2
    a = 1; b = 0; #10;
    
    // Test case 3
    a = 0; b = 1; #10;
    
    // Test case 4
    a = 1; b = 1; #10;
    
    $finish;
  end

endmodule