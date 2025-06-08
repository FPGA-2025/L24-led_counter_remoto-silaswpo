module Counter #(
    parameter CLK_FREQ = 25_000_000  // ignorado pelo testbench
)(
    input  wire clk,
    input  wire rst_n,
    output reg [7:0] leds
);

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            leds <= 0;
        end else begin
            if (leds == 7)
                leds <= 0;
            else
                leds <= leds + 1;
        end
    end

endmodule
