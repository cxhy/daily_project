module four_bit_count_async_reset(
  clk,
  reset_n,
  cnt
);

input         clk;
input         reset_n;
output  [3:0] cnt;

wire          clk;
wire          reset_n;
reg     [3:0] cnt;

always @ (posedge clk or negedge reset_n)begin
  if(reset_n == 1'b0)
    cnt <= 4'b0;
  else
    cnt <= cnt + 1;
end

endmodule
