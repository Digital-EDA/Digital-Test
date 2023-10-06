
//********************************************************************************//
//********** 		(C) Copyright 2017 SMIC Inc.			**********//
//**********   		    SMIC Verilog Models       			**********//
//********************************************************************************//
//	 FileName   : SP018D18RP_V0p5.v	  					  //
//	 Function   : Verilog Models (zero timing)	  			  //
//	 Version    : 0.5	  						  //
//	 Author     : Max	  						  //
//	 CreateDate : Jan-01-2017	  					  //
//********************************************************************************//
////////////////////////////////////////////////////////////////////////////////////
//DISCLAIMER                                                                      //
//                                                                                //
//   SMIC hereby provides the quality information to you but makes no claims,     //
// promises or guarantees about the accuracy, completeness, or adequacy of the    //
// information herein. The information contained herein is provided on an "AS IS" //
// basis without any warranty, and SMIC assumes no obligation to provide support  //
// of any kind or otherwise maintain the information.                             //
//   SMIC disclaims any representation that the information does not infringe any //
// intellectual property rights or proprietary rights of any third parties.SMIC   //
// makes no other warranty, whether express, implied or statutory as to any       //
// matter whatsoever,including but not limited to the accuracy or sufficiency of  //
// any information or the merchantability and fitness for a particular purpose.   //
// Neither SMIC nor any of its representatives shall be liable for any cause of   //
// action incurred to connect to this service.                                    //
//                                                                                //
// STATEMENT OF USE AND CONFIDENTIALITY                                           //
//                                                                                //
//   The following/attached material contains confidential and proprietary        //
// information of SMIC. This material is based upon information which SMIC        //
// considers reliable, but SMIC neither represents nor warrants that such         //
// information is accurate or complete, and it must not be relied upon as such.   //
// This information was prepared for informational purposes and is for the use    //
// by SMIC's customer only. SMIC reserves the right to make changes in the        //
// information at any time without notice.                                        //
//   No part of this information may be reproduced, transmitted, transcribed,     //
// stored in a retrieval system, or translated into any human or computer         //
// language, in any form or by any means, electronic, mechanical, magnetic,       //
// optical, chemical, manual, or otherwise, without the prior written consent of  //
// SMIC. Any unauthorized use or disclosure of this material is strictly          //
// prohibited and may be unlawful. By accepting this material, the receiving      //
// party shall be deemed to have acknowledged, accepted, and agreed to be bound   //
// by the foregoing limitations and restrictions. Thank you.                      //
////////////////////////////////////////////////////////////////////////////////////

// ****** (C) Copyright 2017 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
//
// Model type           : zero timing
// Filename             : pbsd4r_pg.v
// Description          : CMOS 3-state bi-direction I/O pads with controlled driving strength of four level, uncontrolled Schmitt trigger with pull down
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif


module PBSD4R_PG(PAD,IE,OEN,I,DS0,DS1,C);

output  C;
input   OEN,I,DS0,DS1;
inout   PAD;
input   IE;

supply0 my0;
  bufif0  (C_buf, I, OEN);
  pmos    (PAD,C_buf,my0);
  and        (C,PAD,IE);
  rpmos   #0.01 (C_buf,my0,my0);

   always @(PAD) begin
     if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
         $countdrivers(PAD))
        $display("%t --BUS CONFLICT-- : %m", $realtime);
   end

     
`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0,
 d00_oe_lh_pad_lh=0,d00_oe_hl_pad_hl=0,
 d01_oe_lh_pad_lh=0,d01_oe_hl_pad_hl=0,
 d10_oe_lh_pad_lh=0,d10_oe_hl_pad_hl=0,
 d11_oe_lh_pad_lh=0,d11_oe_hl_pad_hl=0,
 d00_i_lh_pad_lh=0,d00_i_hl_pad_hl=0,
 d01_i_lh_pad_lh=0,d01_i_hl_pad_hl=0,
 d10_i_lh_pad_lh=0,d10_i_hl_pad_hl=0,
 d11_i_lh_pad_lh=0,d11_i_hl_pad_hl=0;
// Delays

 if(DS0 === 1'b0 && DS1 === 1'b0) (OEN => PAD) = (d00_oe_lh_pad_lh,d00_oe_hl_pad_hl);
 if(DS0 === 1'b0 && DS1 === 1'b1) (OEN => PAD) = (d01_oe_lh_pad_lh,d01_oe_hl_pad_hl);
 if(DS0 === 1'b1 && DS1 === 1'b0) (OEN => PAD) = (d10_oe_lh_pad_lh,d10_oe_hl_pad_hl);
 if(DS0 === 1'b1 && DS1 === 1'b1) (OEN => PAD) = (d11_oe_lh_pad_lh,d11_oe_hl_pad_hl);
 ifnone (OEN => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE   => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 if(DS0 === 1'b0 && DS1 === 1'b0) (I => PAD) = (d00_i_lh_pad_lh,d00_i_hl_pad_hl);
 if(DS0 === 1'b0 && DS1 === 1'b1) (I => PAD) = (d01_i_lh_pad_lh,d01_i_hl_pad_hl);
 if(DS0 === 1'b1 && DS1 === 1'b0) (I => PAD) = (d10_i_lh_pad_lh,d10_i_hl_pad_hl);
 if(DS0 === 1'b1 && DS1 === 1'b1) (I => PAD) = (d11_i_lh_pad_lh,d11_i_hl_pad_hl); 
 ifnone (I +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults

// ****** (C) Copyright 2017 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
//
// Model type           : zero timing
// Filename             : pbs4r_pg.v
// Description          : CMOS 3-state bi-direction I/O pads with controlled driving strength of four level, uncontrolled Schmitt trigger 
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif


module PBS4R_PG(PAD,IE,OEN,I,DS0,DS1,C);

output  C;
input   OEN,I,DS0,DS1;
inout   PAD;
input   IE;

 and       #0.01 (C,PAD,IE);
 bufif0  #0.01 (PAD, I, OEN);
    
`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0,
 d00_oe_lh_pad_lh=0,d00_oe_hl_pad_hl=0,
 d01_oe_lh_pad_lh=0,d01_oe_hl_pad_hl=0,
 d10_oe_lh_pad_lh=0,d10_oe_hl_pad_hl=0,
 d11_oe_lh_pad_lh=0,d11_oe_hl_pad_hl=0,
 d00_i_lh_pad_lh=0,d00_i_hl_pad_hl=0,
 d01_i_lh_pad_lh=0,d01_i_hl_pad_hl=0,
 d10_i_lh_pad_lh=0,d10_i_hl_pad_hl=0,
 d11_i_lh_pad_lh=0,d11_i_hl_pad_hl=0;
// Delays

 if(DS0 === 1'b0 && DS1 === 1'b0) (OEN => PAD) = (d00_oe_lh_pad_lh,d00_oe_hl_pad_hl);
 if(DS0 === 1'b0 && DS1 === 1'b1) (OEN => PAD) = (d01_oe_lh_pad_lh,d01_oe_hl_pad_hl);
 if(DS0 === 1'b1 && DS1 === 1'b0) (OEN => PAD) = (d10_oe_lh_pad_lh,d10_oe_hl_pad_hl);
 if(DS0 === 1'b1 && DS1 === 1'b1) (OEN => PAD) = (d11_oe_lh_pad_lh,d11_oe_hl_pad_hl);
 ifnone (OEN => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE   => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 if(DS0 === 1'b0 && DS1 === 1'b0) (I => PAD) = (d00_i_lh_pad_lh,d00_i_hl_pad_hl);
 if(DS0 === 1'b0 && DS1 === 1'b1) (I => PAD) = (d01_i_lh_pad_lh,d01_i_hl_pad_hl);
 if(DS0 === 1'b1 && DS1 === 1'b0) (I => PAD) = (d10_i_lh_pad_lh,d10_i_hl_pad_hl);
 if(DS0 === 1'b1 && DS1 === 1'b1) (I => PAD) = (d11_i_lh_pad_lh,d11_i_hl_pad_hl); 
 ifnone (I +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults


// ****** (C) Copyright 2017 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
//
// Model type           : zero timing
// Filename             : pot4r_pg.v
// Description          : CMOS 3-state output pads with controlled driving strength of four level 
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif


module POT4R_PG(PAD,OEN,I,DS0,DS1);

output  PAD;
input   OEN,I,DS0,DS1;

bufif0 #0.01 (PAD,I,OEN);
  
   
`ifdef functional
`else
specify
// Parameter declarations
 specparam i_lh_pad_lh=0,i_hl_pad_hl=0,oen_lh_pad_lz=0,oen_hl_pad_zh=0,
 oen_lh_pad_hz=0,oen_hl_pad_zl=0,
 d00_oe_lh_pad_lh=0,d00_oe_hl_pad_hl=0,
 d01_oe_lh_pad_lh=0,d01_oe_hl_pad_hl=0,
 d10_oe_lh_pad_lh=0,d10_oe_hl_pad_hl=0,
 d11_oe_lh_pad_lh=0,d11_oe_hl_pad_hl=0,
 d00_i_lh_pad_lh=0,d00_i_hl_pad_hl=0,
 d01_i_lh_pad_lh=0,d01_i_hl_pad_hl=0,
 d10_i_lh_pad_lh=0,d10_i_hl_pad_hl=0,
 d11_i_lh_pad_lh=0,d11_i_hl_pad_hl=0;
// Delays

 if(DS0 === 1'b0 && DS1 === 1'b0) (OEN => PAD) = (d00_oe_lh_pad_lh,d00_oe_hl_pad_hl);
 if(DS0 === 1'b0 && DS1 === 1'b1) (OEN => PAD) = (d01_oe_lh_pad_lh,d01_oe_hl_pad_hl);
 if(DS0 === 1'b1 && DS1 === 1'b0) (OEN => PAD) = (d10_oe_lh_pad_lh,d10_oe_hl_pad_hl);
 if(DS0 === 1'b1 && DS1 === 1'b1) (OEN => PAD) = (d11_oe_lh_pad_lh,d11_oe_hl_pad_hl);
 ifnone (OEN => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 if(DS0 === 1'b0 && DS1 === 1'b0) (I => PAD) = (d00_i_lh_pad_lh,d00_i_hl_pad_hl);
 if(DS0 === 1'b0 && DS1 === 1'b1) (I => PAD) = (d01_i_lh_pad_lh,d01_i_hl_pad_hl);
 if(DS0 === 1'b1 && DS1 === 1'b0) (I => PAD) = (d10_i_lh_pad_lh,d10_i_hl_pad_hl);
 if(DS0 === 1'b1 && DS1 === 1'b1) (I => PAD) = (d11_i_lh_pad_lh,d11_i_hl_pad_hl); 
 ifnone (I +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults


// ****** (C) Copyright 2017 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
//
// Model type           : zero timing
// Filename             : pisdr_r10k.v
// Description          : Schmitt trigger Input Pad with Pull-down
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif


module PISDR_R10K(PAD,IE,C);

output  C;
input   PAD,IE;
tri0 PAD;

and    #0.01 (C,PAD,IE);
`ifdef functional
`else
specify

// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0;
// Delays
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults

// ****** (C) Copyright 2017 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
//
// Model type           : zero timing
// Filename             : pisur_r10k.v
// Description          : Schmitt trigger Input Pad with Pull-up
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif


module PISUR_R10K(PAD,IE,C);

output  C;
input   PAD,IE;
tri1 PAD;

and    #0.01 (C,PAD,IE);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0;
// Delays
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults

  


// ****** (C) Copyright 2017 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pb4r.v
// Description  	: 3-state Output Pad with Controllable Input, 4X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PB4R (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

and    #0.01 (C,PAD,IE);
bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pb8r.v
// Description  	: 3-state Output Pad with Controllable Input, 8X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PB8R (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

and    #0.01 (C,PAD,IE);
bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 

 
// ****** (C) Copyright 2017 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pb12r.v
// Description          : 3-state Output Pad with Controllable Input, 12X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PB12R (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

and    #0.01 (C,PAD,IE);
bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pb16r.v
// Description  	: 3-state Output Pad with Controllable Input, 16X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PB16R (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

and    #0.01 (C,PAD,IE);
bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pb24r.v
// Description  	: 3-state Output Pad with Controllable Input, 24X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PB24R (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

and    #0.01 (C,PAD,IE);
bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbd4r.v
// Description  	: CMOS 3-state Output Pad with Controllable Input and  Pull-down, 4X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBD4R (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  and       (C,C_buf,IE);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end


`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbd8r.v
// Description  	: CMOS 3-state Output Pad with Controllable Input and  Pull-down, 8X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBD8R (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  and       (C,C_buf,IE);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end


`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbd12r.v
// Description  	: CMOS 3-state Output Pad with Controllable Input and  Pull-down, 12X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBD12R (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  and       (C,C_buf,IE);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end


`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbd16r.v
// Description  	: CMOS 3-state Output Pad with Controllable Input and  Pull-down, 16X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBD16R (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  and       (C,C_buf,IE);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end


`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbd24r.v
// Description  	: CMOS 3-state Output Pad with Controllable Input and  Pull-down, 24X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBD24R (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  and       (C,C_buf,IE);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end


`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbu4r.v
// Description  	: CMOS 3-state Output Pad with Controllable Input and Pull-up, 4X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBU4R (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  and       (C,C_buf,IE);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end
`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbu8r.v
// Description  	: CMOS 3-state Output Pad with Controllable Input and Pull-up, 8X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBU8R (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  and       (C,C_buf,IE);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end
`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbu12r.v
// Description  	: CMOS 3-state Output Pad with Controllable Input and Pull-up, 12X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBU12R (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  and       (C,C_buf,IE);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end
`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbu16r.v
// Description  	: CMOS 3-state Output Pad with Controllable Input and Pull-up, 16X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBU16R (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  and       (C,C_buf,IE);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end
`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbu24r.v
// Description  	: CMOS 3-state Output Pad with Controllable Input and Pull-up, 24X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBU24R (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  and       (C,C_buf,IE);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end
`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsd4r.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Controllable Input and  Pull-down, 4X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSD4R (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  and       (C,C_buf,IE);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end
`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsd8r.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Controllable Input and  Pull-down, 8X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSD8R (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  and       (C,C_buf,IE);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end
`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsd12r.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Controllable Input and  Pull-down, 12X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSD12R (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  and       (C,C_buf,IE);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end
`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsd16r.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Controllable Input and  Pull-down, 16X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSD16R (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  and       (C,C_buf,IE);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end
`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsd24r.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Controllable Input and  Pull-down, 24X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSD24R (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  and       (C,C_buf,IE);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end
`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsu4r.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Controllable Input and Pull-up, 4X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSU4R (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  and       (C,C_buf,IE);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsu8r.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Controllable Input and Pull-up, 8X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSU8R (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  and       (C,C_buf,IE);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsu12r.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Controllable Input and Pull-up, 12X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSU12R (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  and       (C,C_buf,IE);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsu16r.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Controllable Input and Pull-up, 16X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSU16R (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  and       (C,C_buf,IE);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsu24r.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Controllable Input and Pull-up, 24X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSU24R (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  and       (C,C_buf,IE);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsd4r_r10k.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Controllable Input and  Pull-down, 4X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSD4R_R10K (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  and       (C,C_buf,IE);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end
`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsd8r_r10k.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Controllable Input and  Pull-down, 8X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSD8R_R10K (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  and       (C,C_buf,IE);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end
`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsd12r_r10k.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Controllable Input and  Pull-down, 12X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSD12R_R10K (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  and       (C,C_buf,IE);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end
`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsd16r_r10k.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Controllable Input and  Pull-down, 16X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSD16R_R10K (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  and       (C,C_buf,IE);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end
`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsd24r_r10k.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Controllable Input and  Pull-down, 24X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSD24R_R10K (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  and       (C,C_buf,IE);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end
`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsu4r_r10k.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Controllable Input and Pull-up, 4X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSU4R_R10K (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  and       (C,C_buf,IE);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsu8r_r10k.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Controllable Input and Pull-up, 8X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSU8R_R10K (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  and       (C,C_buf,IE);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsu12r_r10k.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Controllable Input and Pull-up, 12X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSU12R_R10K (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  and       (C,C_buf,IE);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsu16r_r10k.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Controllable Input and Pull-up, 16X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSU16R_R10K (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  and       (C,C_buf,IE);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsu24r_r10k.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Controllable Input and Pull-up, 24X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSU24R_R10K (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  and       (C,C_buf,IE);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbs4r.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Controllable Input 
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBS4R (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

and    #0.01 (C,PAD,IE);
bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbs8r.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Controllable Input 
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBS8R (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

and    #0.01 (C,PAD,IE);
bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbs12r.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Controllable Input 
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBS12R (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

and    #0.01 (C,PAD,IE);
bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbs16r.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Controllable Input 
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBS16R (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

and    #0.01 (C,PAD,IE);
bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbs24r.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Controllable Input 
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBS24R (PAD,IE,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;
input   IE;

and    #0.01 (C,PAD,IE);
bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbcd4r.v
// Description  	: 3-state Output Pad with Controllable Input and Controllable Pull-down, 4X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBCD4R (PAD,IE,OEN,REN,I,C);

output  C;
input   OEN,I,REN;
inout   PAD;
input   IE;

  supply0 my0;
  bufif0  (C_buf, I, OEN);
  pmos    (PAD,C_buf,my0);
  and        (C,PAD,IE);
  rpmos   #0.01 (C_buf,my0,REN);

   always @(PAD) begin
     if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
         $countdrivers(PAD))
        $display("%t --BUS CONFLICT-- : %m", $realtime);
   end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0,
 ren_hl_pad_hl=0,ren_lh_pad_hz=0,ren_lh_pad_lz=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
 (        REN  => PAD) = (ren_lh_pad_lz,ren_lh_pad_hz,ren_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 

 
// ****** (C) Copyright 2017 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbcd8r.v
// Description  	: 3-state Output Pad with Controllable Input and Controllable Pull-down, 8X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBCD8R (PAD,IE,OEN,REN,I,C);

output  C;
input   OEN,I,REN;
inout   PAD;
input   IE;

  supply0 my0;
  bufif0  (C_buf, I, OEN);
  pmos    (PAD,C_buf,my0);
  and        (C,PAD,IE);
  rpmos   #0.01 (C_buf,my0,REN);

   always @(PAD) begin
     if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
         $countdrivers(PAD))
        $display("%t --BUS CONFLICT-- : %m", $realtime);
   end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0,
 ren_hl_pad_hl=0,ren_lh_pad_hz=0,ren_lh_pad_lz=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
 (        REN  => PAD) = (ren_lh_pad_lz,ren_lh_pad_hz,ren_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 

 
// ****** (C) Copyright 2017 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbcd12r.v
// Description  	: 3-state Output Pad with Controllable Input and Controllable Pull-down, 12X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBCD12R (PAD,IE,OEN,REN,I,C);

output  C;
input   OEN,I,REN;
inout   PAD;
input   IE;

  supply0 my0;
  bufif0  (C_buf, I, OEN);
  pmos    (PAD,C_buf,my0);
  and        (C,PAD,IE);
  rpmos   #0.01 (C_buf,my0,REN);

   always @(PAD) begin
     if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
         $countdrivers(PAD))
        $display("%t --BUS CONFLICT-- : %m", $realtime);
   end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0,
 ren_hl_pad_hl=0,ren_lh_pad_hz=0,ren_lh_pad_lz=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
 (        REN  => PAD) = (ren_lh_pad_lz,ren_lh_pad_hz,ren_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 

 
// ****** (C) Copyright 2017 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbcd16r.v
// Description  	: 3-state Output Pad with Controllable Input and Controllable Pull-down, 16X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBCD16R (PAD,IE,OEN,REN,I,C);

output  C;
input   OEN,I,REN;
inout   PAD;
input   IE;

  supply0 my0;
  bufif0  (C_buf, I, OEN);
  pmos    (PAD,C_buf,my0);
  and        (C,PAD,IE);
  rpmos   #0.01 (C_buf,my0,REN);

   always @(PAD) begin
     if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
         $countdrivers(PAD))
        $display("%t --BUS CONFLICT-- : %m", $realtime);
   end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0,
 ren_hl_pad_hl=0,ren_lh_pad_hz=0,ren_lh_pad_lz=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
 (        REN  => PAD) = (ren_lh_pad_lz,ren_lh_pad_hz,ren_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 

 
// ****** (C) Copyright 2017 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbcd24r.v
// Description  	: 3-state Output Pad with Controllable Input and Controllable Pull-down, 24X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBCD24R (PAD,IE,OEN,REN,I,C);

output  C;
input   OEN,I,REN;
inout   PAD;
input   IE;

  supply0 my0;
  bufif0  (C_buf, I, OEN);
  pmos    (PAD,C_buf,my0);
  and        (C,PAD,IE);
  rpmos   #0.01 (C_buf,my0,REN);

   always @(PAD) begin
     if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
         $countdrivers(PAD))
        $display("%t --BUS CONFLICT-- : %m", $realtime);
   end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0,
 ren_hl_pad_hl=0,ren_lh_pad_hz=0,ren_lh_pad_lz=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
 (        REN  => PAD) = (ren_lh_pad_lz,ren_lh_pad_hz,ren_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 

 
// ****** (C) Copyright 2017 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbcu4r.v
// Description  	: 3-state Output Pad with Controllable Input and Controllable Pull-up, 4X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBCU4R (PAD,IE,OEN,REN,I,C);

output  C;
input   OEN,I,REN;
inout   PAD;
input   IE;

  supply1 my1;
  supply0 my0;
  bufif0  (C_buf, I, OEN);
  pmos    (PAD,C_buf,my0);
  and        (C,PAD,IE);
  rpmos   #0.01 (C_buf,my1,REN);

   always @(PAD) begin
     if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
         $countdrivers(PAD))
        $display("%t --BUS CONFLICT-- : %m", $realtime);
   end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0,
 ren_hl_pad_hl=0,ren_lh_pad_hz=0,ren_lh_pad_lz=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
 (        REN  => PAD) = (ren_lh_pad_lz,ren_lh_pad_hz,ren_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 

 
// ****** (C) Copyright 2017 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbcu8r.v
// Description  	: 3-state Output Pad with Controllable Input and Controllable Pull-up, 8X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBCU8R (PAD,IE,OEN,REN,I,C);

output  C;
input   OEN,I,REN;
inout   PAD;
input   IE;

  supply1 my1;
  supply0 my0;
  bufif0  (C_buf, I, OEN);
  pmos    (PAD,C_buf,my0);
  and        (C,PAD,IE);
  rpmos   #0.01 (C_buf,my1,REN);

   always @(PAD) begin
     if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
         $countdrivers(PAD))
        $display("%t --BUS CONFLICT-- : %m", $realtime);
   end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0,
 ren_hl_pad_hl=0,ren_lh_pad_hz=0,ren_lh_pad_lz=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
 (        REN  => PAD) = (ren_lh_pad_lz,ren_lh_pad_hz,ren_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 

 
// ****** (C) Copyright 2017 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbcu12r.v
// Description  	: 3-state Output Pad with Controllable Input and Controllable Pull-up, 12X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBCU12R (PAD,IE,OEN,REN,I,C);

output  C;
input   OEN,I,REN;
inout   PAD;
input   IE;

  supply1 my1;
  supply0 my0;
  bufif0  (C_buf, I, OEN);
  pmos    (PAD,C_buf,my0);
  and        (C,PAD,IE);
  rpmos   #0.01 (C_buf,my1,REN);

   always @(PAD) begin
     if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
         $countdrivers(PAD))
        $display("%t --BUS CONFLICT-- : %m", $realtime);
   end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0,
 ren_hl_pad_hl=0,ren_lh_pad_hz=0,ren_lh_pad_lz=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
 (        REN  => PAD) = (ren_lh_pad_lz,ren_lh_pad_hz,ren_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 

 
// ****** (C) Copyright 2017 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbcu16r.v
// Description  	: 3-state Output Pad with Controllable Input and Controllable Pull-up, 16X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBCU16R (PAD,IE,OEN,REN,I,C);

output  C;
input   OEN,I,REN;
inout   PAD;
input   IE;

  supply1 my1;
  supply0 my0;
  bufif0  (C_buf, I, OEN);
  pmos    (PAD,C_buf,my0);
  and        (C,PAD,IE);
  rpmos   #0.01 (C_buf,my1,REN);

   always @(PAD) begin
     if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
         $countdrivers(PAD))
        $display("%t --BUS CONFLICT-- : %m", $realtime);
   end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0,
 ren_hl_pad_hl=0,ren_lh_pad_hz=0,ren_lh_pad_lz=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
 (        REN  => PAD) = (ren_lh_pad_lz,ren_lh_pad_hz,ren_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 

 
// ****** (C) Copyright 2017 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbcu24r.v
// Description  	: 3-state Output Pad with Controllable Input and Controllable Pull-up, 24X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBCU24R (PAD,IE,OEN,REN,I,C);

output  C;
input   OEN,I,REN;
inout   PAD;
input   IE;

  supply1 my1;
  supply0 my0;
  bufif0  (C_buf, I, OEN);
  pmos    (PAD,C_buf,my0);
  and        (C,PAD,IE);
  rpmos   #0.01 (C_buf,my1,REN);

   always @(PAD) begin
     if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
         $countdrivers(PAD))
        $display("%t --BUS CONFLICT-- : %m", $realtime);
   end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0,
 i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0,
 ren_hl_pad_hl=0,ren_lh_pad_hz=0,ren_lh_pad_lz=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
 (        REN  => PAD) = (ren_lh_pad_lz,ren_lh_pad_hz,ren_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 

 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pot4r.v  
// Description  	: CMOS Output Only Pad, 8X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module POT4R (PAD,OEN,I);

output  PAD;
input   OEN,I;

bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam i_lh_pad_lh=0,i_hl_pad_hl=0,oen_lh_pad_lz=0,oen_hl_pad_zh=0,
 oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        I +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pot8r.v  
// Description  	: CMOS Output Only Pad, 8X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module POT8R (PAD,OEN,I);

output  PAD;
input   OEN,I;

bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam i_lh_pad_lh=0,i_hl_pad_hl=0,oen_lh_pad_lz=0,oen_hl_pad_zh=0,
 oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        I +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pot12r.v  
// Description  	: CMOS Output Only Pad, 12X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module POT12R (PAD,OEN,I);

output  PAD;
input   I,OEN;

bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam i_lh_pad_lh=0,i_hl_pad_hl=0,oen_lh_pad_lz=0,oen_hl_pad_zh=0,
 oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        I +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pot16r.v  
// Description  	: CMOS Output Only Pad, 16X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module POT16R (PAD,OEN,I);

output  PAD;
input   I,OEN;

bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam i_lh_pad_lh=0,i_hl_pad_hl=0,oen_lh_pad_lz=0,oen_hl_pad_zh=0,
 oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        I +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pot24r.v  
// Description  	: CMOS Output Only Pad, 24X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module POT24R (PAD,OEN,I);

output  PAD;
input   I,OEN;

bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam i_lh_pad_lh=0,i_hl_pad_hl=0,oen_lh_pad_lz=0,oen_hl_pad_zh=0,
 oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        I +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 // ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pot4odr.v  
// Description  	: CMOS Output Only Pad, 8X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module POT4ODR (PAD,OEN,I);

output  PAD;
input   OEN,I;

  supply0 my0;
  nor  (ctrl,I,OEN);
  nmos (PAD,my0,ctrl);

`ifdef functional
`else
specify
// Parameter declarations
 specparam i_lh_pad_lh=0,i_hl_pad_hl=0,oen_lh_pad_lz=0,oen_hl_pad_zh=0,
 oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        I +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pot8odr.v  
// Description  	: CMOS Output Only Pad, 8X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module POT8ODR (PAD,OEN,I);

output  PAD;
input   OEN,I;

  supply0 my0;
  nor  (ctrl,I,OEN);
  nmos (PAD,my0,ctrl);

`ifdef functional
`else
specify
// Parameter declarations
 specparam i_lh_pad_lh=0,i_hl_pad_hl=0,oen_lh_pad_lz=0,oen_hl_pad_zh=0,
 oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        I +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pot12odr.v  
// Description  	: CMOS Output Only Pad, 12X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module POT12ODR (PAD,OEN,I);

output  PAD;
input   I,OEN;

  supply0 my0;
  nor  (ctrl,I,OEN);
  nmos (PAD,my0,ctrl);

`ifdef functional
`else
specify
// Parameter declarations
 specparam i_lh_pad_lh=0,i_hl_pad_hl=0,oen_lh_pad_lz=0,oen_hl_pad_zh=0,
 oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        I +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pot16odr.v  
// Description  	: CMOS Output Only Pad, 16X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module POT16ODR (PAD,OEN,I);

output  PAD;
input   I,OEN;

  supply0 my0;
  nor  (ctrl,I,OEN);
  nmos (PAD,my0,ctrl);

`ifdef functional
`else
specify
// Parameter declarations
 specparam i_lh_pad_lh=0,i_hl_pad_hl=0,oen_lh_pad_lz=0,oen_hl_pad_zh=0,
 oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        I +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pot24odr.v  
// Description  	: CMOS Output Only Pad, 24X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module POT24ODR (PAD,OEN,I);

output  PAD;
input   I,OEN;

  supply0 my0;
  nor  (ctrl,I,OEN);
  nmos (PAD,my0,ctrl);

`ifdef functional
`else
specify
// Parameter declarations
 specparam i_lh_pad_lh=0,i_hl_pad_hl=0,oen_lh_pad_lz=0,oen_hl_pad_zh=0,
 oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        I +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 

// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pir.v
// Description  	: Controllable Input Pad
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PIR (PAD,IE,C);

output  C;
input   PAD,IE;

and    #0.01 (C,PAD,IE);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0;
// Delays
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pisr.v
// Description  	: Schmitt Trigger Controllable Input Pad
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PISR (PAD,IE,C);

output  C;
input   PAD,IE;

and    #0.01 (C,PAD,IE);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0;
// Delays
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pidr.v 
// Description  	: CMOS Controllable Input Pad with Pull-down
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PIDR (PAD,IE,C);

output  C;
input   PAD,IE;
tri0 PAD;

and    #0.01 (C,PAD,IE);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0;
// Delays
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: piur.v 
// Description  	: CMOS Controllable Input Pad with Pull-up
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PIUR (PAD,IE,C);

output  C;
input   PAD,IE;
tri1 PAD;

and    #0.01 (C,PAD,IE);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0;
// Delays
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pisdr.v 
// Description  	: Schmitt Trigger Controllable Input Pad with Pull-down
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PISDR (PAD,IE,C);

output  C;
input   PAD,IE;
tri0 PAD;

and    #0.01 (C,PAD,IE);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0;
// Delays
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pisur.v 
// Description  	: Schmitt Trigger Controllable Input Pad with Pull-up
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PISUR (PAD,IE,C);

output  C;
input   PAD,IE;
tri1 PAD;

and    #0.01 (C,PAD,IE);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0;
// Delays
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 
// ****** (C) Copyright 2017 SMIC  Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: picdr.v
// Description  	: Controllable Input Pad with Controllable Pull-down
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PICDR (PAD,IE,REN,C);

output  C;
input   PAD,IE,REN;

  supply0 my0;
  and        (C,PAD,IE);
  rpmos   #0.01 (PAD,my0,REN);

   always @(PAD) begin
     if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
         $countdrivers(PAD))
        $display("%t --BUS CONFLICT-- : %m", $realtime);
   end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0;
// Delays
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults

 
 
// ****** (C) Copyright 2017 SMIC  Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: picur.v
// Description  	: Controllable Input Pad with Controllable Pull-up
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PICUR (PAD,IE,REN,C);

output  C;
input   PAD,IE,REN;

  supply1 my1;
  and        (C,PAD,IE);
  rpmos   #0.01 (PAD,my1,REN);

   always @(PAD) begin
     if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
         $countdrivers(PAD))
        $display("%t --BUS CONFLICT-- : %m", $realtime);
   end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,
 ie_lh_c_lz=0,ie_hl_c_zh=0,ie_lh_c_hz=0,ie_hl_c_zl=0;
// Delays
 (        IE  => C) = (ie_lh_c_lz,ie_lh_c_hz,ie_lh_c_lz,ie_hl_c_zh,ie_lh_c_hz,ie_hl_c_zl);
 (        PAD   +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults

 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pvdd1r.v
// Description  	: VDD Pad 
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVDD1R (VDD);

   output VDD;
   pullup               G2(VDD);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pvdd2r.v
// Description  	: VDD Pad 
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVDD2R ();


   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
 // ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pvdd3r.v
// Description  	: VDD Pad 
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVDD3R (VDD);

   output VDD;
   pullup               G2(VDD);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine

// ****** (C) Copyright 2017 SMIC Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pvss1r.v
// Description  	: VSS Pad 
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVSS1R (VSS);

   output VSS;
   pulldown             G2(VSS);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
 
// ****** (C) Copyright 2017 SMIC Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pvss2r.v
// Description  	: VSS Pad 
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVSS2R ();


   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
 
// ****** (C) Copyright 2017 SMIC Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pvss3r.v
// Description  	: VSS Pad 
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVSS3R (VSS);

   output VSS;
   pulldown             G2(VSS);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pana1apr.v
// Description  	: antenna pad
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PANA1APR (PAD);
inout PAD;


   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pana2apr.v
// Description  	: antenna pad
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PANA2APR (PAD);
inout PAD;


   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pvdd1apr.v
// Description  	: analog vdd
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVDD1APR (SVDD1AP);

   output SVDD1AP;
   pullup               G2(SVDD1AP);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
 
// ****** (C) Copyright 2017 SMIC Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pvss1apr.v
// Description  	: analog vss
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVSS1APR (SVSS1AP);

   output SVSS1AP;
   pulldown             G2(SVSS1AP);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
 
// ****** (C) Copyright 2017 SMIC Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pvdd3apr.v
// Description  	: analog vdd
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVDD3APR (SAVDD);

   output SAVDD;
   pullup               G2(SAVDD);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
 
// ****** (C) Copyright 2017 SMIC Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pvss3apr.v
// Description  	: analog vss
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVSS3APR (SAVSS);

   output SAVSS;
   pulldown             G2(SAVSS);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pvdd5apr.v
// Description  	: analog vdd
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVDD5APR ();


   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
 
// ****** (C) Copyright 2017 SMIC Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pvss5apr.v
// Description  	: analog vss
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVSS5APR ();


   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
//
// Model type           : zero timing
// Filename             : p1diode8r.v
// Description          : Power-Cut Cell for High Voltage Drop for difference voltage level between digital and analog, but it only includes two single diodes of opposite polarity connected in parallel 
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module P1DIODE8R (VSS1,VSS2);

inout VSS1;
inout VSS2;

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine

// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pdioder.v
// Description  	: power cut
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PDIODER (VDD1,VDD2,VSS1,VSS2);

inout VDD1;
inout VDD2;
inout VSS1;
inout VSS2;

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: p1dioder.v
// Description  	: power cut
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module P1DIODER (VDD1,VDD2,VSS1,VSS2);

inout VDD1;
inout VDD2;
inout VSS1;
inout VSS2;

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pdiode8r.v
// Description  	: power cut for high voltage
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PDIODE8R (VSS1,VSS2);

inout VSS1;
inout VSS2;

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
 
// ****** (C) Copyright 2017 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pdiode8sr.v
// Description  	: power cut for high voltage
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PDIODE8SR ();

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
 
