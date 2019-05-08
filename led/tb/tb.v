module tb();
reg clk;
reg reset_n;
wire led_out;

parameter clk_period = 24;
initial begin
  clk = 0;
  forever begin
    #(clk_period/2) clk = ~clk;
  end
end

parameter reset_repiod = 1000;
initial begin
  reset_n = 0;
  #reset_repiod;
  reset_n = 1;
end

initial begin
     $fsdbDumpfile("tb.fsdb");
     $fsdbDumpvars;
end

initial begin
  #500000;
  $finish;
end

led x_led(
  .clk(clk),
  .reset_n(reset_n),
  .led_out(led_out)
);
endmodule
