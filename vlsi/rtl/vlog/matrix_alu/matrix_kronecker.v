module matrix_kronecker #(parameter word_size = 32,
                        parameter Amatrixrownum = 2,
                        parameter Amatrixcolnum = 2,
                        parameter Bmatrixrownum = 2,
                        parameter Bmatrixcolnum = 2)(
    input   wire [(Amatrixcolnum * Amatrixrownum) * word_size - 1 : 0]A,
    input   wire [(Bmatrixcolnum * Bmatrixrownum) * word_size - 1 : 0]B,
    output  wire [(Amatrixcolnum * Amatrixrownum) * (Bmatrixcolnum * Bmatrixrownum) * word_size - 1 : 0]TP
);

    wire    [(word_size-1):0] Amatrix [0:Amatrixrownum - 1][0:Amatrixcolnum - 1];
    wire    [(word_size-1):0] Bmatrix [0:Bmatrixrownum - 1][0:Bmatrixcolnum - 1];
    wire    [(word_size-1):0] tensorproduct[Amatrixrownum * Bmatrixrownum - 1:0][ Bmatrixcolnum * Amatrixcolnum - 1:0];
    
genvar x, y, z, w;
genvar i, j;
genvar Amatrixrowindex, Amatrixcolindex;
genvar Bmatrixrowindex, Bmatrixcolindex;
generate
    // input vector A, B conversion to Matrices Amatrix Bmatrix //
    for (Amatrixrowindex = 0; Amatrixrowindex < Amatrixrownum; Amatrixrowindex = Amatrixrowindex + 1) begin : kron_mat_A_gen_block_1
        for (Amatrixcolindex = 0; Amatrixcolindex < Amatrixcolnum; Amatrixcolindex = Amatrixcolindex + 1) begin : kron_mat_A_gen_block_2
                assign Amatrix[Amatrixrowindex][Amatrixcolindex] = A[(Amatrixcolnum * Amatrixrownum) * word_size - 1 - (Amatrixcolnum * Amatrixrowindex + Amatrixcolindex) * word_size : (Amatrixcolnum * Amatrixrownum) * word_size -1 - (Amatrixcolnum * Amatrixrowindex + Amatrixcolindex) * word_size  - (word_size-1)]; 
        end
    end
    for (Bmatrixrowindex = 0; Bmatrixrowindex < Bmatrixrownum; Bmatrixrowindex = Bmatrixrowindex + 1) begin : kron_mat_B_gen_block_1
        for (Bmatrixcolindex = 0; Bmatrixcolindex < Bmatrixcolnum; Bmatrixcolindex = Bmatrixcolindex + 1) begin : kron_mat_B_gen_block_2
                assign Bmatrix[Bmatrixrowindex][Bmatrixcolindex] = B[(Bmatrixcolnum * Bmatrixrownum) * word_size - 1 - (Bmatrixcolnum * Bmatrixrowindex + Bmatrixcolindex) * word_size : (Bmatrixcolnum * Bmatrixrownum) * word_size -1 - (Bmatrixcolnum * Bmatrixrowindex + Bmatrixcolindex) * word_size  - (word_size-1)];   
        end
    end
    // calculating the kronecker //
    for(x=0; x<Amatrixrownum; x=x+1) begin : kron_mat_tensorproduct_gen_block_1
        for(y=0; y<Amatrixcolnum; y=y+1) begin : kron_mat_tensorproduct_gen_block_2
            for(z=0; z<Bmatrixrownum; z=z+1) begin : kron_mat_tensorproduct_gen_block_3
                    for(w=0; w<Bmatrixcolnum; w=w+1)begin : kron_mat_tensorproduct_gen_block_4
                    //A is an m x n matrix
                    //B is a p x q matrix
                    //A ? B is an (m * p) x (n * q) matrix
                    //(A ? B)(i * p + k, j * q + l) = A(i, j) * B(k, l)
                    assign tensorproduct[x*Bmatrixrownum+z][y*Bmatrixcolnum+w] = Amatrix[x][y] * Bmatrix[z][w]; 
                end
            end
        end
    end
    // converting tensorproduct from matrix to vector //
    for(i=0; i<Amatrixrownum*Amatrixcolnum; i=i+1)begin : kron_mat_TP_gen_block_1
        for(j=0; j<Bmatrixrownum*Bmatrixcolnum; j=j+1)begin : kron_mat_TP_gen_block_2
            assign TP[(Amatrixcolnum * Bmatrixcolnum * Amatrixcolnum * Bmatrixcolnum * word_size - 1) - (((Amatrixcolnum * Bmatrixcolnum) * i) + j) * word_size : (Amatrixcolnum * Bmatrixcolnum * Amatrixcolnum * Bmatrixcolnum * word_size - 1) - (((Amatrixcolnum * Bmatrixcolnum) * i) + j) * word_size  - (word_size-1)] = tensorproduct[i][j];
        end
    end
endgenerate
endmodule