//***********************************************************
// Functionality: i_serdes with dpa enabled and bitslip control
// Author:        Azfar 
//***********************************************************


module GJC45 #(
    parameter WIDTH = 10
)(
    input  wire  reset, // asynchronous active high
    input  wire  enable_n, // active low enable
    input  wire  data_i,
    input  wire  bitslip_ctrl_n,
    input  wire  clkGHz,
    output reg  [WIDTH - 1:0] data_o,
    output wire ready
);
    wire const1;
    wire reset_buf;
    wire reset_buf_n;
    wire enable_buf_n;
    wire enable_buf;
    wire data_i_buf;
    wire data_i_delay;
    wire clk_pll_in;
    wire clkGHz_clkbuf;
    wire pll_lock;
    wire fabric_clk_div;
    wire [WIDTH - 1 : 0] data_i_serdes;
    reg [WIDTH - 1 : 0] data_i_serdes_reg;
    wire [WIDTH - 1 : 0] data_o_buf;
    wire data_i_valid;
    reg [7:0] wait_pll;
    wire ready_buf;
    wire serdes_dpa_lock;
    wire bitslip_ctrl_n_buf;
    wire bitslip_ctrl;
    wire clkGHz_buf;
    genvar itr;
 

    assign const1 = 1;
    assign reset_buf_n = ~reset_buf;
    assign enable_buf  = ~enable_buf_n;
    assign data_o_buf = data_i_serdes_reg;
    assign ready_buf = (wait_pll == 8'hff) && (serdes_dpa_lock == 1);
    assign bitslip_ctrl = ~bitslip_ctrl_n_buf;


    I_BUF #(.WEAK_KEEPER("PULLDOWN")) reset_buffer0 (.I(reset),   .EN(const1), .O(reset_buf));
    I_BUF #(.WEAK_KEEPER("PULLUP")) enable_buffer0 (.I(enable_n), .EN(const1), .O(enable_buf_n));
    I_BUF #(.WEAK_KEEPER("PULLDOWN")) data_i_buffer0 (.I(data_i),   .EN(const1), .O(data_i_buf));
    I_BUF #(.WEAK_KEEPER("PULLUP")) bitslip_buffer0 (.I(bitslip_ctrl_n),   .EN(const1), .O(bitslip_ctrl_n_buf));
    I_BUF #(.WEAK_KEEPER("PULLDOWN")) clk_i_buffer0 (.I(clkGHz),   .EN(const1), .O(clkGHz_buf));
    CLK_BUF clock_buffer (clkGHz_buf, clkGHz_clkbuf);

    generate
        for(itr = 0; itr < WIDTH; itr = itr + 1)begin
            O_BUF data_o_buffer0 (.I(data_o_buf[itr]), .O(data_o[itr]));
        end    
    endgenerate
    O_BUF data_o_buffer0 (.I(ready_buf), .O(ready));


    I_DELAY input_data_delay (
        .I(data_i_buf), // Data Input (Connect to input port or buffer)
        .DLY_LOAD(~const1), // Delay load input
        .DLY_ADJ(~const1), // Delay adjust input
        .DLY_INCDEC(~const1), // Delay increment / decrement input
        .CLK_IN(clkGHz_clkbuf), // Clock input
        .O(data_i_delay) // Data output
    );


    I_SERDES #(
        .WIDTH(WIDTH), // Width of Deserialization (3-10)
        .DPA_MODE("DPA") // Select Dynamic Phase Alignment or Clock Data Recovery (NONE/DPA/CDR)
    ) input_data_serdes (
        .D(data_i_delay), // Data input (connect to input port, buffer or I_DELAY)
        .RST(reset_buf_n), // Active-low asycnhronous reset
        .BITSLIP_ADJ(bitslip_ctrl), // BITSLIP_ADJ input
        .EN(enable_buf), // EN input data (input data is low when driven low)
        .CLK_IN(fabric_clk_div), // Fabric clock input
        .CLK_OUT(fabric_clk_div), // Fabric clock output
        .Q(data_i_serdes), // Data output
        .DATA_VALID(data_i_valid), // DATA_VALID output
        .DPA_LOCK(serdes_dpa_lock), // DPA_LOCK output
        .PLL_LOCK(const1), // PLL lock input
        .PLL_CLK(clkGHz_clkbuf) // PLL clock input
    );


    always @(posedge fabric_clk_div or negedge reset_buf_n) begin
        if(!reset_buf_n)data_i_serdes_reg <= 0;
        else if(data_i_valid && ready_buf)data_i_serdes_reg <= data_i_serdes;
    end

    always @(posedge clkGHz_clkbuf or negedge reset_buf_n)begin
        if(!reset_buf_n)wait_pll <= 0;
        else if(wait_pll < 8'hff) wait_pll <= wait_pll + 1;
    end

    
endmodule