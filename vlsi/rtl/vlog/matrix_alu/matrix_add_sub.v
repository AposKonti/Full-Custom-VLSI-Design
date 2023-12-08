module matrix_add_sub #(parameter word_size = 32,
                            parameter Amatrixrownum = 2,
                            parameter Amatrixcolnum = 2,
                            parameter Bmatrixrownum = 2,
                            parameter Bmatrixcolnum = 2)(
    input   wire        op,                            
    input   wire        [(Amatrixcolnum * Amatrixrownum) * word_size - 1 : 0]A,
    input   wire        [(Bmatrixcolnum * Bmatrixrownum) * word_size - 1 : 0]B,
    output  wire        [(Amatrixrownum *Bmatrixcolnum) * word_size - 1 : 0]ASP
);

    wire    [(word_size-1):0] Amatrix [0:Amatrixrownum - 1][0:Amatrixcolnum - 1];
    wire     [(word_size-1):0] Bmatrix [0:Bmatrixrownum - 1][0:Bmatrixcolnum - 1];
    wire    [(word_size-1):0] add_sub_wire[0:Amatrixrownum - 1][0:Bmatrixcolnum - 1];
genvar x, y;
genvar i, j;
genvar Amatrixrowindex, Amatrixcolindex;
genvar Bmatrixrowindex, Bmatrixcolindex;
generate
    // input vector A, B conversion to Matrices Amatrix Bmatrix //
    for (Amatrixrowindex = 0; Amatrixrowindex < Amatrixrownum; Amatrixrowindex = Amatrixrowindex + 1) begin : add_sub_mat_A_gen_block_1
        for (Amatrixcolindex = 0; Amatrixcolindex < Amatrixcolnum; Amatrixcolindex = Amatrixcolindex + 1) begin : add_sub_mat_A_gen_block_2
                assign Amatrix[Amatrixrowindex][Amatrixcolindex] = A[(Amatrixcolnum * Amatrixrownum) * word_size - 1 - (Amatrixcolnum * Amatrixrowindex + Amatrixcolindex) * word_size : (Amatrixcolnum * Amatrixrownum) * word_size -1 - (Amatrixcolnum * Amatrixrowindex + Amatrixcolindex) * word_size  - (word_size-1)]; 
        end
    end
    for (Bmatrixrowindex = 0; Bmatrixrowindex < Bmatrixrownum; Bmatrixrowindex = Bmatrixrowindex + 1) begin : add_sub_mat_B_gen_block_1
        for (Bmatrixcolindex = 0; Bmatrixcolindex < Bmatrixcolnum; Bmatrixcolindex = Bmatrixcolindex + 1) begin : add_sub_mat_B_gen_block_2
                assign Bmatrix[Bmatrixrowindex][Bmatrixcolindex] = B[(Bmatrixcolnum * Bmatrixrownum) * word_size - 1 - (Bmatrixcolnum * Bmatrixrowindex + Bmatrixcolindex) * word_size : (Bmatrixcolnum * Bmatrixrownum) * word_size -1 - (Bmatrixcolnum * Bmatrixrowindex + Bmatrixcolindex) * word_size  - (word_size-1)];   
        end
    end
    //  Amatrix + or - Bmatrix //
    for(x=0; x<Amatrixrownum; x=x+1) begin : add_sub_mat_abb_sub_wire_gen_block_1
        for(y=0; y<Amatrixcolnum; y=y+1) begin : add_sub_mat_abb_sub_wire_gen_block_2
            assign add_sub_wire[x][y] = (op == 1'b0) ? Amatrix[x][y] + Bmatrix[x][y] : Amatrix[x][y] - Bmatrix[x][y];
        end
    end
    // conversion of addition or subtraction product to output vector ASP //
    for(i=0; i<Amatrixrownum; i=i+1)begin : add_sub_mat_ASP_gen_block_1
        for(j=0; j<Bmatrixcolnum; j=j+1)begin : add_sub_mat_ASP_gen_block_2
                assign ASP[(Amatrixrownum*Bmatrixcolnum*word_size-1)-(Bmatrixcolnum*i+j)*word_size:(Amatrixrownum*Bmatrixcolnum*word_size-1)-(Bmatrixcolnum*i+j) * word_size - (word_size-1)] = add_sub_wire[i][j];
        end
    end
endgenerate
endmodule