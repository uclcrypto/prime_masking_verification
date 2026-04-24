`timescale 1ns / 1ps

module TB_small_pSquare_2SHARES;

reg clk, rst, read_inpt;
reg [111:0] plaintext_s0, plaintext_s1, key_s0, key_s1, tweak;
reg [83:0] fresh_randomness;

wire [111:0] ciphertext_s0, ciphertext_s1, plaintext, key, ciphertext;
wire done;

parameter clk_period = 10;

// Unit Under Test
small_pSquare_2SHARES UUT (clk, rst, read_inpt, plaintext_s0, plaintext_s1, key_s0, key_s1, tweak, fresh_randomness, ciphertext_s0, ciphertext_s1, done);

// Masking and Unmasking
generate
    genvar i;
    for(i=0; i<16; i=i+1) begin
        addmodmersenne_7 ADDp (plaintext_s0[(6+i*7):(0+i*7)], plaintext_s1[(6+i*7):(0+i*7)], plaintext[(6+i*7):(0+i*7)]);
        addmodmersenne_7 ADDk (key_s0[(6+i*7):(0+i*7)], key_s1[(6+i*7):(0+i*7)], key[(6+i*7):(0+i*7)]);
        addmodmersenne_7 ADDc (ciphertext_s0[(6+i*7):(0+i*7)], ciphertext_s1[(6+i*7):(0+i*7)], ciphertext[(6+i*7):(0+i*7)]);
    end
endgenerate

// Clock Process
always begin
    clk <= 0;
    #(clk_period/2);
    clk <= 1;
    #(clk_period/2);
end

// Stimulation Process
initial begin
    $dumpfile("TB_small_pSquare_2SHARES.vcd");
    $dumpvars(0, TB_small_pSquare_2SHARES);
    
    rst                 <= 1'b1;
    read_inpt           <= 1'b0;

    // Test Vector 1
    plaintext_s0        <= 112'b0011001110111010011010011001011110110001010011111000111100001110011001110111010001110000001110110100100000101110;
    plaintext_s1        <= 112'b0111001100000111001101001110111100110001111101110001100000111010111110101100100110111111010000001011010111101010;
    key_s0              <= 112'b0111011000011110010000111111001111011001100110011100010011111010100000010111100000100111011000010111110010101001;
    key_s1              <= 112'b1110001101100101111000101110001110110001111011000101100100101110001010011110010100111001011000110000101101111100;
    tweak               <= 112'b0110010011100110010011011010101110101011110001101010000011100001110111100000110111111011111101110000101101100001;
    fresh_randomness    <= 84'b000000110110110000001101110011111010010000000001010011001010001110110011110011100101;

    #(clk_period*2);
    
    read_inpt           <= 1'b1;
    
    #clk_period;
    
    rst                 <= 1'b0;
    read_inpt           <= 1'b0;
    
    @(posedge done);
    
    #clk_period;
    
    if(ciphertext == 112'b1111101111011011110101110100000011010101100001011100000110001010010111110011110110111110000000111111000100011100) begin
        $display("SUCCESS");
    end else begin
        $display("FAILURE");
    end
    
    $finish;

end

endmodule

