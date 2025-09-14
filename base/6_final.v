module adder (clk,
    rst_n,
    a,
    b,
    sum);
 input clk;
 input rst_n;
 input [3:0] a;
 input [3:0] b;
 output [4:0] sum;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire _14_;
 wire _15_;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net18;
 wire clknet_0_clk;
 wire net17;
 wire clknet_1_0__leaf_clk;
 wire clknet_1_1__leaf_clk;
 wire net19;

 sky130_fd_sc_hd__xor2_1 _16_ (.A(_04_),
    .B(net17),
    .X(_01_));
 sky130_fd_sc_hd__a21o_1 _17_ (.A1(net19),
    .A2(_06_),
    .B1(_05_),
    .X(_11_));
 sky130_fd_sc_hd__a21oi_2 _18_ (.A1(_10_),
    .A2(_11_),
    .B1(_09_),
    .Y(_12_));
 sky130_fd_sc_hd__xnor2_1 _19_ (.A(_08_),
    .B(_12_),
    .Y(_02_));
 sky130_fd_sc_hd__a21o_1 _20_ (.A1(_10_),
    .A2(_04_),
    .B1(_09_),
    .X(_13_));
 sky130_fd_sc_hd__a21o_1 _21_ (.A1(_13_),
    .A2(_08_),
    .B1(_07_),
    .X(_00_));
 sky130_fd_sc_hd__fa_2 _22_ (.A(net6),
    .B(net2),
    .CIN(_03_),
    .COUT(_04_),
    .SUM(_15_));
 sky130_fd_sc_hd__ha_1 _23_ (.A(net2),
    .B(net6),
    .COUT(_05_),
    .SUM(_06_));
 sky130_fd_sc_hd__ha_1 _24_ (.A(net4),
    .B(net8),
    .COUT(_07_),
    .SUM(_08_));
 sky130_fd_sc_hd__ha_1 _25_ (.A(net3),
    .B(net7),
    .COUT(_09_),
    .SUM(_10_));
 sky130_fd_sc_hd__ha_2 _26_ (.A(net5),
    .B(net1),
    .COUT(_03_),
    .SUM(_14_));
 sky130_fd_sc_hd__dfrtp_1 \sum[0]$_DFF_PN0_  (.D(_14_),
    .Q(net10),
    .RESET_B(net18),
    .CLK(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \sum[1]$_DFF_PN0_  (.D(_15_),
    .Q(net11),
    .RESET_B(net18),
    .CLK(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \sum[2]$_DFF_PN0_  (.D(_01_),
    .Q(net12),
    .RESET_B(net18),
    .CLK(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \sum[3]$_DFF_PN0_  (.D(_02_),
    .Q(net13),
    .RESET_B(net18),
    .CLK(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \sum[4]$_DFF_PN0_  (.D(_00_),
    .Q(net14),
    .RESET_B(net18),
    .CLK(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__dlygate4sd2_1 input1 (.A(a[0]),
    .X(net1));
 sky130_fd_sc_hd__dlymetal6s2s_1 input2 (.A(a[1]),
    .X(net2));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input3 (.A(a[2]),
    .X(net3));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input4 (.A(a[3]),
    .X(net4));
 sky130_fd_sc_hd__dlygate4sd2_1 input5 (.A(b[0]),
    .X(net5));
 sky130_fd_sc_hd__dlygate4sd2_1 input6 (.A(b[1]),
    .X(net6));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input7 (.A(b[2]),
    .X(net7));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input8 (.A(b[3]),
    .X(net8));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input9 (.A(rst_n),
    .X(net9));
 sky130_fd_sc_hd__buf_4 output10 (.A(net10),
    .X(sum[0]));
 sky130_fd_sc_hd__buf_4 output11 (.A(net11),
    .X(sum[1]));
 sky130_fd_sc_hd__buf_4 output12 (.A(net12),
    .X(sum[2]));
 sky130_fd_sc_hd__buf_4 output13 (.A(net13),
    .X(sum[3]));
 sky130_fd_sc_hd__buf_4 output14 (.A(net14),
    .X(sum[4]));
 sky130_fd_sc_hd__buf_4 place18 (.A(net9),
    .X(net18));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__buf_4 place17 (.A(_10_),
    .X(net17));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_1_0__f_clk (.A(clknet_0_clk),
    .X(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_1_1__f_clk (.A(clknet_0_clk),
    .X(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__clkbuf_1 clkload0 (.A(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__buf_4 rebuffer19 (.A(_03_),
    .X(net19));
endmodule
