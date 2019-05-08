module led(
  clk,
  reset_n,
  led_out
);

input clk;
input reset_n;
input led_out;

wire clk;
wire reset_n;

reg [4:0]  us_cnt;
reg [14:0] ms_cnt;
wire us;

always @ (posedge clk or negedge reset_n)begin
  if(reset_n == 1'b0)
    us_cnt[4:0] <= 5'b0;
  else if(us_cnt < 5'd24)
    us_cnt[4:0] <= us_cnt[4:0] + 1;
  else
    us_cnt[4:0] <= 5'b0;
end

assign us = us_cnt == 5'd23;

always @ (posedge clk or negedge reset_n)begin
  if(reset_n == 1'b0)
    ms_cnt[14:0] <= 15'b0;
  else if(ms_cnt[14:0] < 15'd24000)
    ms_cnt[14:0] <= ms_cnt[14:0] + 1;
end

endmodule
