module matrix_alu_behav #(parameter word_size = 8,
                    parameter Amatrixrownum = 2,
                    parameter Amatrixcolnum = 2,
                    parameter Bmatrixrownum = 2,
                    parameter Bmatrixcolnum = 2)(
input   wire        clk,
input   wire        resetn,                    
input   wire        [(Amatrixcolnum * Amatrixrownum) * word_size - 1 : 0]A,
input   wire        [(Bmatrixcolnum * Bmatrixrownum) * word_size - 1 : 0]B,
input   wire        [1:0] op,
output  wire        [(Amatrixcolnum * Amatrixrownum) * (Bmatrixcolnum * Bmatrixrownum) * word_size - 1 : 0] C 
);

wire    [(Amatrixrownum * Bmatrixcolnum) * word_size - 1 : 0] m_add, m_sub, m_mul;
wire    [(Amatrixcolnum * Amatrixrownum) * (Bmatrixcolnum * Bmatrixrownum) * word_size - 1 : 0] m_kro;
reg     [(Amatrixcolnum * Amatrixrownum) * (Bmatrixcolnum * Bmatrixrownum) * word_size - 1 : 0] C_reg;
always@(posedge clk or negedge resetn)begin
    if(!resetn)begin
        C_reg = 'd0;
    end else begin
        if(op==2'b00) begin
            C_reg = {{(((Amatrixcolnum * Amatrixrownum) * (Bmatrixcolnum * Bmatrixrownum) - 1)* word_size - 1){1'b0}},m_add};
        end else if (op==2'b01) begin
            C_reg = {{(((Amatrixcolnum * Amatrixrownum) * (Bmatrixcolnum * Bmatrixrownum) - 1)* word_size - 1){1'b0}},m_sub};
        end else if (op==2'b10) begin
            C_reg = {{(((Amatrixcolnum * Amatrixrownum) * (Bmatrixcolnum * Bmatrixrownum) - 1)* word_size - 1){1'b0}},m_mul};
        end else if (op==2'b11) begin
            C_reg = m_kro;
        end
    end
end
assign C = C_reg;

matrix_add_sub #(.word_size(word_size),
                 .Amatrixrownum(Amatrixrownum),
                 .Amatrixcolnum(Amatrixcolnum),
                 .Bmatrixrownum(Bmatrixrownum),
                 .Bmatrixcolnum(Bmatrixcolnum))mat_add(
.op(1'b0),                            
.A(A),
.B(B),
.ASP(m_add)
);
matrix_add_sub #(.word_size(word_size),
                 .Amatrixrownum(Amatrixrownum),
                 .Amatrixcolnum(Amatrixcolnum),
                 .Bmatrixrownum(Bmatrixrownum),
                 .Bmatrixcolnum(Bmatrixcolnum))mat_sub(
.op(1'b1),                            
.A(A),
.B(B),
.ASP(m_sub)
);
matrix_mul #(.word_size(word_size),
                 .Amatrixrownum(Amatrixrownum),
                 .Amatrixcolnum(Amatrixcolnum),
                 .Bmatrixrownum(Bmatrixrownum),
                 .Bmatrixcolnum(Bmatrixcolnum))mat_mul(
.A(A),
.B(B),
.MP(m_mul)
);
matrix_kronecker #(.word_size(word_size),
                 .Amatrixrownum(Amatrixrownum),
                 .Amatrixcolnum(Amatrixcolnum),
                 .Bmatrixrownum(Bmatrixrownum),
                 .Bmatrixcolnum(Bmatrixcolnum))mat_kron(
.A(A),
.B(B),
.TP(m_kro)
);                    
endmodule                 