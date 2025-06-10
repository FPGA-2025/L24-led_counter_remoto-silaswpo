module Counter #(
    parameter CLK_FREQ = 10  // fornecido pelo testbench
)(
    input  wire clk,
    input  wire rst_n,
    output reg [7:0] leds
);

    reg [31:0] counter;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            leds <= 0;
            counter <= 0;
        end else begin
            if (counter == (CLK_FREQ / 2) - 1) begin
                leds <= leds + 1;
                counter <= 0;
            end else begin
                counter <= counter + 1;
            end
        end
    end

endmodule
