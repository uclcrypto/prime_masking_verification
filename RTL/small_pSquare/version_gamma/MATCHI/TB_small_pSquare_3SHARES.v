`timescale 1ns / 1ps

module TB_small_pSquare_3SHARES;

reg clk, rst, read_inpt;
reg [111:0] plaintext_s0, plaintext_s1, plaintext_s2, key_s0, key_s1, key_s2, tweak;
reg [209:0] fresh_randomness;

wire [111:0] ciphertext_s0, ciphertext_s1, ciphertext_s2, plaintext, key, ciphertext;
wire [111:0] plaintext_t, key_t, ciphertext_t;
wire done;

parameter clk_period = 10;

// Unit Under Test
small_pSquare_3SHARES UUT (clk, rst, read_inpt, plaintext_s0, plaintext_s1, plaintext_s2, key_s0, key_s1, key_s2, tweak, fresh_randomness, ciphertext_s0, ciphertext_s1, ciphertext_s2, done);

// Masking and Unmasking
generate
    genvar i;
    for(i=0; i<16; i=i+1) begin
        addmodmersenne_7 ADDp1 (plaintext_s0[(6+i*7):(0+i*7)], plaintext_s1[(6+i*7):(0+i*7)], plaintext_t[(6+i*7):(0+i*7)]);
        addmodmersenne_7 ADDp2 (plaintext_t[(6+i*7):(0+i*7)], plaintext_s2[(6+i*7):(0+i*7)], plaintext[(6+i*7):(0+i*7)]);
        addmodmersenne_7 ADDk1 (key_s0[(6+i*7):(0+i*7)], key_s1[(6+i*7):(0+i*7)], key_t[(6+i*7):(0+i*7)]);
        addmodmersenne_7 ADDk2 (key_t[(6+i*7):(0+i*7)], key_s2[(6+i*7):(0+i*7)], key[(6+i*7):(0+i*7)]);
        addmodmersenne_7 ADDc1 (ciphertext_s0[(6+i*7):(0+i*7)], ciphertext_s1[(6+i*7):(0+i*7)], ciphertext_t[(6+i*7):(0+i*7)]);
        addmodmersenne_7 ADDc2 (ciphertext_t[(6+i*7):(0+i*7)], ciphertext_s2[(6+i*7):(0+i*7)], ciphertext[(6+i*7):(0+i*7)]);
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
    $dumpfile("TB_small_pSquare_3SHARES.vcd");
    $dumpvars(0, TB_small_pSquare_3SHARES);
    
    rst                 <= 1'b1;
    read_inpt           <= 1'b0;

    // Test Vector 1
    plaintext_s0        <= 112'b0011001110111010011010011001011110110001010011111000111100001110011001110111010001110000001110110100100000101110;
    plaintext_s1        <= 112'b1110110111111011011111010001111010110100011111100100110001100000111110100111100011110011011000010110011100010110;
    plaintext_s2        <= 112'b1000010100001011101101111100000010011101011110001100101111011000000000000101000011001011111111110000111011010100;
    key_s0              <= 112'b0111011000011110010000111111001111011001100110011100010011111010100000010111100000100111011000010111110010101001;
    key_s1              <= 112'b0101111110011000001001111010011010000001101110011101010111000010010110100010110101110110000010101101000001111101;
    key_s2              <= 112'b1000010111001001110000110011110100010000011100100000010001101011110011111011011110110011011110000011101011111110;
    tweak               <= 112'b0110010011100110010011011010101110101011110001101010000011100001110111100000110111111011111101110000101101100001;
    fresh_randomness    <= 210'b000001101110111110111000001101001001111100101111000111101000101110101001111100100011101001001010101100111110011000110000010101010011001011011100011111001000010011101000111000110001011010011001100011100101110110;

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

