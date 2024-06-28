`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024 年 05 月 15 日 星期三
// Design Name: test
// Module Name: test.v
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//////////////////////////////////////////////////////////////////////////////////
module  TOP
(
    spi_adc_csn,
    spi_dac_csn,
    spi_iop_csn,
    spi_mul_sdi,
    spi_mul_sdo
);
//============================================================================
//Input and output declaration.
//============================================================================
output                      spi_adc_csn;
output                      spi_dac_csn;
output                      spi_iop_csn;

// output                      spi_mul_sdt;
output                      spi_mul_sdi;
input                       spi_mul_sdo;

//============================================================================
//Wire and reg declaration.
//============================================================================

//============================================================================
//Wire and reg in this module.
//============================================================================

//============================================================================
//logic.
//============================================================================
// spi_adc_csn
assign  spi_adc_csn  =  ( spi_mul_sdo );
assign  spi_adc_csn  =  ( spi_mul_sdo );
assign  spi_adc_csn  =  ( spi_mul_sdo );
assign  spi_adc_csn  =  ( spi_mul_sdo );


endmodule