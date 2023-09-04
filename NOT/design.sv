module notgate(output out, input in);
// ~ means not in verilog
    assign out = ~in;
endmodule