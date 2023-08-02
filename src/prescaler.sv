module prescaler (
    input logic base_clk,       // Assumig 100MHz

    output logic clk,           // 4.2MHz
);

    logic pllout;
    logic pll_locked;

    pll_inst pll (
        .refclk(base_clk),      // Input clock
        .outclk(pllout),        // Output clock from PLL
        .locked(pll_locked)     // Locked signal from PLL
    );

    always_ff @(posedge pllout) begin
        clk <= ~clk;            // force to clock when pllout up
    end
endmodule
