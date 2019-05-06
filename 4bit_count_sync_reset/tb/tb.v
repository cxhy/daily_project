module tb();

reg clk;
reg reset_n;
wire [3:0] cnt;

parameter clk_period = 10;

//way1 to generate clk
initial begin
  clk = 0;
  forever begin
    #(clk_period/2) clk = ~clk;
  end
end

////way2 to generate clk
//initial begin
//  clk = 0;
//end
//always begin
//  #(clk_period/2) clk = ~clk;
//end

//way1 to generate async reset
//parameter reset_repiod = 1000;
//initial begin
//  reset_n = 0;
//  #reset_repiod;
//  reset_n = 1;
//end

//way2 to generate sync rset
initial begin
  reset_n = 1;
  @(posedge clk)
  reset_n = 0;
  #reset_repiod;
  reset_n = 1;
end

initial begin
  #5000;
  $display("end");
  $finish;
end

initial begin
     $fsdbDumpfile("tb.fsdb");
     $fsdbDumpvars;
end

four_bit_count_async_reset x_4bit_count_async_reset(
  .clk       (clk),
  .reset_n   (reset_n),
  .cnt       (cnt)
);

endmodule
