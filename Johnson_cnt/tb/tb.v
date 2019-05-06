module tb();

reg clk;
reg reset_n;

wire [3:0] cnt;

initial begin
     $fsdbDumpfile("tb.fsdb");
     $fsdbDumpvars;
end

parameter reset_repiod = 1000;
initial begin
  reset_n = 0;
  #reset_repiod;
  reset_n = 1;
end

parameter clk_period = 10;

initial begin
  clk = 0;
  forever begin
    #(clk_period/2) clk = ~clk;
  end
end


johnson_cnt x_johnson_cnt(
  .clk      (clk),
  .reset_n  (reset_n),
  .cnt      (cnt)
);

endmodule
