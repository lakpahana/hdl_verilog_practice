module vector_example();

reg[7:0] a=0; // 8 bit register MSB is 7 and LSB is 0 means 8 bit register 
reg[6:0] b=0; // 7 bit register MSB is 6 and LSB is 0 means 7 bit register means 2^7=128 values
reg[7:0] d=0; // 8 bit register MSB is 7 and LSB is 0 means 8 bit register

wire [1:0] c; // 2 bit wire MSB is 1 and LSB is 0 means 2 bit wire


assign c[1:0] = a[3:2];

initial begin
    $monitor("a=%b b=%b c=%b d=%b",a,b,c,d);
end

initial begin
    #1 a =1;
    0.1
1

endmodule