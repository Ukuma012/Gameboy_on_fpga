// top module

module UGB(
    input logic pin_clk,
    input logic pin_n_reset
);

    logic clk;

    .prescaler prescaler(
        .base_clk(pin_clk),

        .clk
    );