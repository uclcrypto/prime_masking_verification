`timescale 1ns / 1ps

module TB_small_pSquare_4SHARES;

reg clk, rst, read_inpt;
reg [111:0] plaintext_s0, plaintext_s1, plaintext_s2, plaintext_s3, key_s0, key_s1, key_s2, key_s3, tweak;
reg [503:0] fresh_randomness;

wire [111:0] ciphertext_s0, ciphertext_s1, ciphertext_s2, ciphertext_s3, plaintext, key, ciphertext;
wire [111:0] plaintext_t1, plaintext_t2, key_t1, key_t2, ciphertext_t1, ciphertext_t2;
wire done;

parameter clk_period = 10;

// Unit Under Test
small_pSquare_4SHARES UUT (clk, rst, read_inpt, plaintext_s0, plaintext_s1, plaintext_s2, plaintext_s3, key_s0, key_s1, key_s2, key_s3, tweak, fresh_randomness, ciphertext_s0, ciphertext_s1, ciphertext_s2, ciphertext_s3, done);

// Masking and Unmasking
generate
    genvar i;
    for(i=0; i<16; i=i+1) begin
        addmodmersenne_7 ADDp1 (plaintext_s0[(6+i*7):(0+i*7)], plaintext_s1[(6+i*7):(0+i*7)], plaintext_t1[(6+i*7):(0+i*7)]);
        addmodmersenne_7 ADDp2 (plaintext_t1[(6+i*7):(0+i*7)], plaintext_s2[(6+i*7):(0+i*7)], plaintext_t2[(6+i*7):(0+i*7)]);
        addmodmersenne_7 ADDp3 (plaintext_t2[(6+i*7):(0+i*7)], plaintext_s3[(6+i*7):(0+i*7)], plaintext[(6+i*7):(0+i*7)]);
        addmodmersenne_7 ADDk1 (key_s0[(6+i*7):(0+i*7)], key_s1[(6+i*7):(0+i*7)], key_t1[(6+i*7):(0+i*7)]);
        addmodmersenne_7 ADDk2 (key_t1[(6+i*7):(0+i*7)], key_s2[(6+i*7):(0+i*7)], key_t2[(6+i*7):(0+i*7)]);
        addmodmersenne_7 ADDk3 (key_t2[(6+i*7):(0+i*7)], key_s3[(6+i*7):(0+i*7)], key[(6+i*7):(0+i*7)]);
        addmodmersenne_7 ADDc1 (ciphertext_s0[(6+i*7):(0+i*7)], ciphertext_s1[(6+i*7):(0+i*7)], ciphertext_t1[(6+i*7):(0+i*7)]);
        addmodmersenne_7 ADDc2 (ciphertext_t1[(6+i*7):(0+i*7)], ciphertext_s2[(6+i*7):(0+i*7)], ciphertext_t2[(6+i*7):(0+i*7)]);
        addmodmersenne_7 ADDc3 (ciphertext_t2[(6+i*7):(0+i*7)], ciphertext_s3[(6+i*7):(0+i*7)], ciphertext[(6+i*7):(0+i*7)]);
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
    $dumpfile("TB_small_pSquare_4SHARES.vcd");
    $dumpvars(0, TB_small_pSquare_4SHARES);
    
    rst                 <= 1'b1;
    read_inpt           <= 1'b0;

    // Test Vector 1
    plaintext_s0        <= 112'b0011001110111010011010011001011110110001010011111000111100001110011001110111010001110000001110110100100000101110;
    plaintext_s1        <= 112'b1110110111111011011111010001111010110100011111100100110001100000111110100111100011110011011000010110011100010110;
    plaintext_s2        <= 112'b1011011011111001100110100011100101001100110110111110110011001010100111111111011100001010101010101111101010000110;
    plaintext_s3        <= 112'b1100110000010010000111011001011100110000100111010101111000001111011000000101100110110001010101000101001111001110;
    key_s0              <= 112'b0111011000011110010000111111001111011001100110011100010011111010100000010111100000100111011000010111110010101001;
    key_s1              <= 112'b0101111110011000001001111010011010000001101110011101010111000010010110100010110101110110000010101101000001111101;
    key_s2              <= 112'b1011110101010100100000100101011000101100100011100100100111000010100011111001011000000111010100111010100101011000;
    key_s3              <= 112'b1100011001110101010000001110011011100011111001000011101010100111010000000010000110111100000001001001000110100110;
    tweak               <= 112'b0110010011100110010011011010101110101011110001101010000011100001110111100000110111111011111101110000101101100001;
    fresh_randomness    <= 504'b110010111001100001011000000011101010100001101001011101011101101110000000100000011010000111010001000011110001001010110010001101111000110110101000011010011000111111010100010011101111110000100000000111001111001110000111001010001001100110100101110000100010001000010001000111110100111110101101101000000000111110111100010101101110010001010010010010010011101000101111001101100000010000110010000010110110000101010000100010111000001101100100001001111101011101000001111000100110111101101011101110001111000111100001;

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

