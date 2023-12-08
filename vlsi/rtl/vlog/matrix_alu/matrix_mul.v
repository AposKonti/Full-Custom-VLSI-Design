module matrix_mul #(parameter word_size = 32,
                        parameter Amatrixrownum = 2,
                        parameter Amatrixcolnum = 2,
                        parameter Bmatrixrownum = 2,
                        parameter Bmatrixcolnum = 1)(
    input   wire        [(Amatrixcolnum * Amatrixrownum) * word_size - 1 : 0]A,
    input   wire        [(Bmatrixcolnum * Bmatrixrownum) * word_size - 1 : 0]B,
    output  wire        [(Amatrixrownum * Bmatrixcolnum) * word_size - 1 : 0]MP
);

    wire    [(word_size-1):0] Amatrix [0:Amatrixrownum - 1][0:Amatrixcolnum - 1];
    wire    [(word_size-1):0] Bmatrix [0:Bmatrixrownum - 1][0:Bmatrixcolnum - 1];
    wire    [(word_size-1):0] matrixproduct_wire[0:Amatrixrownum - 1][0:Bmatrixcolnum - 1];   
genvar i, j;
genvar Amatrixrowindex, Amatrixcolindex;
genvar Bmatrixrowindex, Bmatrixcolindex;
genvar x, y, z, w; 
generate
    // input vector A, B conversion to Matrices Amatrix Bmatrix //
    for (Amatrixrowindex = 0; Amatrixrowindex < Amatrixrownum; Amatrixrowindex = Amatrixrowindex + 1) begin : mul_mat_A_gen_block_1
        for (Amatrixcolindex = 0; Amatrixcolindex < Amatrixcolnum; Amatrixcolindex = Amatrixcolindex + 1) begin : mul_mat_A_gen_block_2
                assign Amatrix[Amatrixrowindex][Amatrixcolindex] = A[(Amatrixcolnum * Amatrixrownum) * word_size - 1 - (Amatrixcolnum * Amatrixrowindex + Amatrixcolindex) * word_size : (Amatrixcolnum * Amatrixrownum) * word_size -1 - (Amatrixcolnum * Amatrixrowindex + Amatrixcolindex) * word_size  - (word_size-1)]; 
        end
    end
    for (Bmatrixrowindex = 0; Bmatrixrowindex < Bmatrixrownum; Bmatrixrowindex = Bmatrixrowindex + 1) begin : mul_mat_B_gen_block_1
        for (Bmatrixcolindex = 0; Bmatrixcolindex < Bmatrixcolnum; Bmatrixcolindex = Bmatrixcolindex + 1) begin : mul_mat_B_gen_block_2
                assign Bmatrix[Bmatrixrowindex][Bmatrixcolindex] = B[(Bmatrixcolnum * Bmatrixrownum) * word_size - 1 - (Bmatrixcolnum * Bmatrixrowindex + Bmatrixcolindex) * word_size : (Bmatrixcolnum * Bmatrixrownum) * word_size -1 - (Bmatrixcolnum * Bmatrixrowindex + Bmatrixcolindex) * word_size  - (word_size-1)];   
        end
    end
    // Multiplication of Amatrix * Bmatrix //
    reg     [word_size-1 : 0] temp_res0 [Amatrixcolnum-1:0][Amatrixrownum*Bmatrixcolnum-1:0];
    wire    [word_size-1 : 0] temp_res1 [Amatrixcolnum-1:0][Amatrixrownum*Bmatrixcolnum-1:0];
    for(x=0; x<Amatrixrownum; x=x+1) begin : mul_mat_matrixproduct_wire_gen_block_1
        for(w=0; w<Bmatrixcolnum; w=w+1)begin : mul_mat_matrixproduct_wire_gen_block_2
            for(y=0; y<Amatrixcolnum; y=y+1) begin : mul_mat_matrixproduct_wire_gen_block_3
                wire    [word_size-1 : 0] temp_res0_w;
                assign temp_res0_w = Amatrix[x][y] * Bmatrix[y][w];
                always@(temp_res0_w) begin
                    temp_res0[y][Bmatrixcolnum*x+w] = temp_res0_w;
                end
            end
            for(z=0; z<Amatrixcolnum-1; z=z+1)begin : mul_mat_matrixproduct_wire_gen_block_4
                if (z == 0) begin : mul_mat_matrixproduct_wire_gen_block_5
                    assign temp_res1[0][Bmatrixcolnum*x+w] = temp_res0[0][Bmatrixcolnum*x+w] + temp_res0[1][Bmatrixcolnum*x+w];
                end else begin : mul_mat_matrixproduct_wire_gen_block_6
                    assign temp_res1[z][Bmatrixcolnum*x+w] = temp_res1[z-1][Bmatrixcolnum*x+w] + temp_res0[z+1][Bmatrixcolnum*x+w];
                end
            end
            assign matrixproduct_wire[x][w] = temp_res1[Amatrixcolnum-2][Bmatrixcolnum*x+w];
        end
    end    
    // conversion of matrixproduct to output vector MP //
    for(i=0; i<Amatrixrownum; i=i+1)begin : mul_mat_MP_gen_block_1
        for(j=0; j<Bmatrixcolnum; j=j+1)begin : mul_mat_MP_gen_block_2
                assign MP[(Amatrixrownum*Bmatrixcolnum*word_size-1)-(Bmatrixcolnum*i+j)*word_size:(Amatrixrownum*Bmatrixcolnum*word_size-1)-(Bmatrixcolnum*i+j)*word_size - (word_size-1)] = matrixproduct_wire[i][j];
        end
    end
endgenerate
endmodule