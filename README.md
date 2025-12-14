This project implements an RGB LED controller on a Nexys A7 FPGA using pulse-width modulation (PWM). A SystemVerilog module instantiates a reusable RGB 
PWM module that independently controls red, green, and blue brightness levels using 10-bit duty cycle values. A clock divider reduces the 100 MHz system 
clock to a lower frequency PWM clock, allowing smooth and flicker-free LED intensity control.

The design demonstrates modular HDL structure, parameterized brightness control, and correct FPGA pin constraint usage through an accompanying XDC file. 
Different color outputs (such as white, cyan, and magenta) can be selected by adjusting the duty cycle inputs, making this a simple but effective 
demonstration of digital hardware control, clock division, and real-time signal modulation on FPGA hardware.
