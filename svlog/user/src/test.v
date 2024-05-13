module APB_TEST(
    /* APB Interface */
    input              PCLK,                    // 50 MHz
    input              PRESETn,
    input              PSEL,                    // Bridge to APB BUS
    input              PENABLE,                 // at least 1 clock after PSEL
    input              PWRITE,                  // 1: Write, 0: Read
    input      [15:0]  PADDR,
    input      [31:0]  PWDATA,
    output reg [31:0]  PRDATA,

    /* Maintenance Device Interface */
    input              MCU2IPU_CLK,             // 83.33 MHz
    input              MCU2IPU_RESETn,
    input      [3:0]   MCU2IPU_CoreRunning,
    input      [3:0]   MCU2IPU_CoreOnline,
    input              MCU2IPU_FaultInt,        // Fault Interrupt
    input              MCU2IPU_NMI,             // Non-Maskable Interrupt
    input              MCU2IPU_IntValid,        // Interrupt Valid
    input      [3:0]   MCU2IPU_IntInfo          // Interrupt Information
);

endmodule