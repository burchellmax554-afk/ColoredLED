// top_module: This is where the bits to assign color get dropped
// I've left a few example colors I used here

module top_module (
    input  wire clk_100MHz,
    output wire LED16_R,
    output wire LED16_G,
    output wire LED16_B
);

// Example colors I've used

    // Example 1: Dim White 
    /*
    HW4_RGB_PWM DUT (
        .clk_100MHz(clk_100MHz),
        .R(10'b0000000001),
        .G(10'b0000000001),
        .B(10'b0000000001),
        .LED16_R(LED16_R),
        .LED16_G(LED16_G),
        .LED16_B(LED16_B)
    );
    */

    // Example 2: Bright Cyan
    HW4_RGB_PWM DUT (
        .clk_100MHz(clk_100MHz),
        .R(10'b0000000000),
        .G(10'b1111111111),
        .B(10'b1111111111),
        .LED16_R(LED16_R),
        .LED16_G(LED16_G),
        .LED16_B(LED16_B)
    );

    // Example 3: Bright Magenta 
    /*
    HW4_RGB_PWM DUT (
        .clk_100MHz(clk_100MHz),
        .R(10'b1111111111),
        .G(10'b0000000000),
        .B(10'b1111111111),
        .LED16_R(LED16_R),
        .LED16_G(LED16_G),
        .LED16_B(LED16_B)
    );
    */

endmodule
