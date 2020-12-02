module mux2_16(input wire [15:0] i0,i1, input wire j,output wire [15:0]o);
mux2 m0(i0[0],i1[0],j,o[0]);
mux2 m1(i0[1],i1[1],j,o[1]);
mux2 m2(i0[2],i1[2],j,o[2]);
mux2 m3(i0[3],i1[3],j,o[3]);
mux2 m4(i0[4],i1[4],j,o[4]);
mux2 m5(i0[5],i1[5],j,o[5]);
mux2 m6(i0[6],i1[6],j,o[6]);
mux2 m7(i0[7],i1[7],j,o[7]);
mux2 m8(i0[8],i1[8],j,o[8]);
mux2 m9(i0[9],i1[9],j,o[9]);
mux2 m10(i0[10],i1[10],j,o[10]);
mux2 m11(i0[11],i1[11],j,o[11]);
mux2 m12(i0[12],i1[12],j,o[12]);
mux2 m13(i0[13],i1[13],j,o[13]);
mux2 m14(i0[14],i1[14],j,o[14]);
mux2 m15(i0[15],i1[15],j,o[15]);

endmodule

module reg_alu(input wire clk,reset,sel,wr,input wire [1:0] op, input wire [2:0] rd_addr_a, rd_addr_b,wr_addr,input wire[15:0] d_in, output wire [15:0] d_out_a, d_out_b, output wire cout );

wire [15:0] din_alu, din_reg;
wire cout0;

alu a1(op,d_out_a, d_out_b,din_alu, cout0);
reg_file reg1(clk,reset, wr, rd_addr_a, rd_addr_b, wr_addr, din_reg, d_out_a, d_out_b);
mux2_16 m1(d_in, din_alu, sel, din_reg);
dfr d1(clk, reset, cout0, cout);
endmodule
