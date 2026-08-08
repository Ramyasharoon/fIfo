`timescale 1ns/1ps

module fifo_tb;

reg clk;
reg rst;
reg wr_en;
reg rd_en;
reg [7:0] data_in;

wire [7:0] data_out;
wire full;
wire empty;

fifo uut(
.clk(clk),
.rst(rst),
.wr_en(wr_en),
.rd_en(rd_en),
.data_in(data_in),
.data_out(data_out),
.full(full),
.empty(empty)
);

always #5 clk=~clk;

initial
begin

$dumpfile("waveform.vcd");
$dumpvars(0,fifo_tb);

clk=0;
rst=1;
wr_en=0;
rd_en=0;

#10 rst=0;

// Write Data

wr_en=1;

data_in=8'd10;
#10;

data_in=8'd20;
#10;

data_in=8'd30;
#10;

wr_en=0;

// Read Data

rd_en=1;
#10;

#10;

#10;

rd_en=0;

#20;

$finish;

end

endmodule