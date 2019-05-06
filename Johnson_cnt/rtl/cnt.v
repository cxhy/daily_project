module johnson_cnt
#(
  parameter N = 4
)
(
  clk,
  reset_n,
  cnt
);

input           clk;
input           reset_n;
output  [N-1:0] cnt;

wire clk;
wire reset_n;
reg [N-1:0] cnt;

always @ (posedge clk or negedge reset_n)begin
  if(reset_n == 1'b0)
    cnt[N-1:0] <= {N{1'b0}};
  else if(!cnt[0])
    cnt[N-1:0] <= {1'b1,cnt[N-1:1]};
  else
    cnt[N-1:0] <= {1'b0,cnt[N-1:1]};
end

endmodule
