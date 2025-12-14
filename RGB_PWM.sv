// The LED output is set up here
module RGB_PWM (
    input  wire        clk_100MHz,
    input  wire [9:0]  R,
    input  wire [9:0]  G,
    input  wire [9:0]  B,
    output wire        LED16_R,
    output wire        LED16_G,
    output wire        LED16_B
);

    // Clock divider
    reg  [15:0] CLKDIV = 16'd0;
    wire        CLK24KHZ = CLKDIV[11]; // CLKDIV[11] is the 1st frequency to stop LED blinking

    always @(posedge clk_100MHz) begin
        CLKDIV <= CLKDIV + 1;
    end

    // PWM counter
    reg [9:0] LED_COUNTER = 10'd0;

    always @(posedge CLK24KHZ) begin
        LED_COUNTER <= LED_COUNTER + 1;
    end

    // PWM compare
    assign LED16_R = (LED_COUNTER < R);
    assign LED16_G = (LED_COUNTER < G);
    assign LED16_B = (LED_COUNTER < B);

endmodule
