//	Copyright (C) 1988-2012 Altera Corporation

//	Any megafunction design, and related net list (encrypted or decrypted),
//	support information, device programming or simulation file, and any other
//	associated documentation or information provided by Altera or a partner
//	under Altera's Megafunction Partnership Program may be used only to
//	program PLD devices (but not masked PLD devices) from Altera.  Any other
//	use of such megafunction design, net list, support information, device
//	programming or simulation file, or any other related documentation or
//	information is prohibited for any other purpose, including, but not
//	limited to modification, reverse engineering, de-compiling, or use with
//	any other silicon devices, unless such use is explicitly licensed under
//	a separate agreement with Altera or a megafunction partner.  Title to
//	the intellectual property, including patents, copyrights, trademarks,
//	trade secrets, or maskworks, embodied in any such megafunction design,
//	net list, support information, device programming or simulation file, or
//	any other related documentation or information provided by Altera or a
//	megafunction partner, remains with Altera, the megafunction partner, or
//	their respective licensors.  No other licenses, including any licenses
//	needed under any third party's intellectual property, are provided herein.


module Oscilator_nco_ii_0(clk, reset_n, clken, phi_inc_i, fsin_o, out_valid);

parameter mpr = 16;
parameter opr = 32;
parameter apr = 32;
parameter apri= 24;
parameter aprf= 16;
parameter aprp= 16;
parameter aprid=29;
parameter dpri= 8;
parameter rdw = 16;
parameter rawc = 12;
parameter rnwc = 4096;
parameter rawf = 12;
parameter rnwf = 4096;
parameter Pn = 4194304;
parameter mxnbc = 65536;
parameter mxnbf = 65536;
parameter rsfc = "Oscilator_nco_ii_0_sin_c.hex";
parameter rsff = "Oscilator_nco_ii_0_sin_f.hex";
parameter rcfc = "Oscilator_nco_ii_0_cos_c.hex";
parameter rcff = "Oscilator_nco_ii_0_cos_f.hex";
parameter nc = 1;
parameter log2nc =0;
parameter outselinit = -1;
parameter paci0= 0;
parameter paci1= 0;
parameter paci2= 0;
parameter paci3= 0;
parameter paci4= 0;
parameter paci5= 0;
parameter paci6= 0;
parameter paci7= 0;
//parameter numba = 1;
//parameter log2numba = 0;

input clk;
input reset_n;
input clken;
input [apr-1:0] phi_inc_i;

output [mpr-1:0] fsin_o;
output out_valid;
wire reset;
assign reset = !reset_n;

wire [apr-1:0]  phi_inc_i_w;
wire [apr-1:0] phi_acc_w;
wire [mpr-1:0] rfx_s;	
wire [mpr-1:0] rcx_s;
wire [mpr-1:0] rfx_c;	
wire [mpr-1:0] rcx_c;
wire [mpr-1:0] rfy_s;	
wire [mpr-1:0] rcy_s;
wire [mpr-1:0] rfy_c;	
wire [mpr-1:0] rcy_c;
wire [rawc-1:0] raxxx001ms;
wire [rawc-1:0] raxxx001mc;
wire [rawc-1:0] raxxx000m;
wire [rawf-1:0] raxxx000l;
wire [rawc-1:0] raxxx001m;
wire [rawf-1:0] raxxx001l;
wire [apri-1:0] ri_dxp2;
wire cx_en;
wire cxe_sig;
wire [aprid-1:0] phi_acc_w_d;
wire [aprid-1:0] phi_acc_w_di;
wire [dpri-1:0]  rval_w_d;
wire [dpri-1:0]  rval_w;
wire [opr-1:0] result_i;	
wire [opr-1:0] result_r;	
wire [mpr-1:0] fsin_o_w;	
wire out_valid_w;

//Pipelining for Hyper Retimer starts from here
parameter hyper_pipeline = 0;
integer i;

reg [1-1:0] reset_reg [3-1:0];
wire [1-1:0] reset_pipelined;
reg [1-1:0] clken_reg [3-1:0];
wire [1-1:0] clken_pipelined;
reg [apr-1:0] phi_inc_i_reg [3-1:0];
wire [apr-1:0] phi_inc_i_pipelined;
reg [1-1:0] out_valid_w_reg [2-1:0];
wire [1-1:0] out_valid_w_pipelined;
reg [mpr-1:0] fsin_o_w_reg [2-1:0];
wire [mpr-1:0] fsin_o_w_pipelined;
reg [opr-1:0] result_i_reg [2-1:0];
wire [opr-1:0] result_i_pipelined;
reg [aprid-1:0] phi_acc_w_d_reg [2-1:0];
wire [aprid-1:0] phi_acc_w_d_pipelined;
reg [mpr-1:0] rcx_c_reg [2-1:0];
wire [mpr-1:0] rcx_c_pipelined;
reg [mpr-1:0] rfx_c_reg [2-1:0];
wire [mpr-1:0] rfx_c_pipelined;
reg [mpr-1:0] rcx_s_reg [2-1:0];
wire [mpr-1:0] rcx_s_pipelined;
reg [mpr-1:0] rfx_s_reg [2-1:0];
wire [mpr-1:0] rfx_s_pipelined;
// Pipeline block
generate
  if (hyper_pipeline == 1) begin
    always @ (posedge clk) begin
      reset_reg[0] <= reset;
      for (i = 1; i < 3; i=i+1) begin
        reset_reg[i] <= reset_reg[i-1];
      end
    end
    assign reset_pipelined = reset_reg[3-1];
  end
  else begin
    assign reset_pipelined = reset; // pipeline for this signal is disabled
  end
endgenerate
// Pipeline block
generate
  if (hyper_pipeline == 1) begin
    always @ (posedge clk) begin
      clken_reg[0] <= clken;
      for (i = 1; i < 3; i=i+1) begin
        clken_reg[i] <= clken_reg[i-1];
      end
    end
    assign clken_pipelined = clken_reg[3-1];
  end
  else begin
    assign clken_pipelined = clken; // pipeline for this signal is disabled
  end
endgenerate
// Pipeline block
generate
  if (hyper_pipeline == 1) begin
    always @ (posedge clk) begin
      phi_inc_i_reg[0] <= phi_inc_i;
      for (i = 1; i < 3; i=i+1) begin
        phi_inc_i_reg[i] <= phi_inc_i_reg[i-1];
      end
    end
    assign phi_inc_i_pipelined = phi_inc_i_reg[3-1];
  end
  else begin
    assign phi_inc_i_pipelined = phi_inc_i; // pipeline for this signal is disabled
  end
endgenerate
// Pipeline block
generate
  if (hyper_pipeline == 1) begin
    always @ (posedge clk) begin
      out_valid_w_reg[0] <= out_valid_w;
      for (i = 1; i < 2; i=i+1) begin
        out_valid_w_reg[i] <= out_valid_w_reg[i-1];
      end
    end
    assign out_valid_w_pipelined = out_valid_w_reg[2-1];
  end
  else begin
    assign out_valid_w_pipelined = out_valid_w; // pipeline for this signal is disabled
  end
endgenerate
// Pipeline block
generate
  if (hyper_pipeline == 1) begin
    always @ (posedge clk) begin
      fsin_o_w_reg[0] <= fsin_o_w;
      for (i = 1; i < 2; i=i+1) begin
        fsin_o_w_reg[i] <= fsin_o_w_reg[i-1];
      end
    end
    assign fsin_o_w_pipelined = fsin_o_w_reg[2-1];
  end
  else begin
    assign fsin_o_w_pipelined = fsin_o_w; // pipeline for this signal is disabled
  end
endgenerate
// Pipeline block
generate
  if (hyper_pipeline == 1) begin
    always @ (posedge clk) begin
      result_i_reg[0] <= result_i;
      for (i = 1; i < 2; i=i+1) begin
        result_i_reg[i] <= result_i_reg[i-1];
      end
    end
    assign result_i_pipelined = result_i_reg[2-1];
  end
  else begin
    assign result_i_pipelined = result_i; // pipeline for this signal is disabled
  end
endgenerate
// Pipeline block
generate
  if (hyper_pipeline == 1) begin
    always @ (posedge clk) begin
      phi_acc_w_d_reg[0] <= phi_acc_w_d;
      for (i = 1; i < 2; i=i+1) begin
        phi_acc_w_d_reg[i] <= phi_acc_w_d_reg[i-1];
      end
    end
    assign phi_acc_w_d_pipelined = phi_acc_w_d_reg[2-1];
  end
  else begin
    assign phi_acc_w_d_pipelined = phi_acc_w_d; // pipeline for this signal is disabled
  end
endgenerate
// Pipeline block
generate
  if (hyper_pipeline == 1) begin
    always @ (posedge clk) begin
      rcx_c_reg[0] <= rcx_c;
      for (i = 1; i < 2; i=i+1) begin
        rcx_c_reg[i] <= rcx_c_reg[i-1];
      end
    end
    assign rcx_c_pipelined = rcx_c_reg[2-1];
  end
  else begin
    assign rcx_c_pipelined = rcx_c; // pipeline for this signal is disabled
  end
endgenerate
// Pipeline block
generate
  if (hyper_pipeline == 1) begin
    always @ (posedge clk) begin
      rfx_c_reg[0] <= rfx_c;
      for (i = 1; i < 2; i=i+1) begin
        rfx_c_reg[i] <= rfx_c_reg[i-1];
      end
    end
    assign rfx_c_pipelined = rfx_c_reg[2-1];
  end
  else begin
    assign rfx_c_pipelined = rfx_c; // pipeline for this signal is disabled
  end
endgenerate
// Pipeline block
generate
  if (hyper_pipeline == 1) begin
    always @ (posedge clk) begin
      rcx_s_reg[0] <= rcx_s;
      for (i = 1; i < 2; i=i+1) begin
        rcx_s_reg[i] <= rcx_s_reg[i-1];
      end
    end
    assign rcx_s_pipelined = rcx_s_reg[2-1];
  end
  else begin
    assign rcx_s_pipelined = rcx_s; // pipeline for this signal is disabled
  end
endgenerate
// Pipeline block
generate
  if (hyper_pipeline == 1) begin
    always @ (posedge clk) begin
      rfx_s_reg[0] <= rfx_s;
      for (i = 1; i < 2; i=i+1) begin
        rfx_s_reg[i] <= rfx_s_reg[i-1];
      end
    end
    assign rfx_s_pipelined = rfx_s_reg[2-1];
  end
  else begin
    assign rfx_s_pipelined = rfx_s; // pipeline for this signal is disabled
  end
endgenerate


assign phi_inc_i_w = phi_inc_i_pipelined;

asj_nco_pmd2 ux0144(.clk(clk),
                    .reset(reset_pipelined),
                    .clken(clken_pipelined),
                    .cxe(cx_en)
                    );
defparam ux0144.aprp = aprp;

asj_altqmcpipe ux000 (.clk(clk),
             .reset(reset_pipelined),
             .clken(cx_en),
             .phi_inc_int(phi_inc_i_w),
             .phi_acc_reg(phi_acc_w)
             );

defparam ux000.nc = nc ;
defparam ux000.apr = apr ;
defparam ux000.lat = 1 ;
defparam ux000.paci0 = paci0 ;
defparam ux000.paci1 = paci1 ;
defparam ux000.paci2 = paci2 ;
defparam ux000.paci3 = paci3 ;
defparam ux000.paci4 = paci4 ;
defparam ux000.paci5 = paci5 ;
defparam ux000.paci6 = paci6 ;
defparam ux000.paci7 = paci7 ;

asj_dxx_g ux001(.clk(clk),
            .clken(cx_en),
              .reset(reset_pipelined),
              .dxxrv(rval_w_d)
              );
defparam ux001.dpri = dpri;
assign rval_w = rval_w_d;
asj_dxx ux002(.clk(clk),
            .clken(cx_en),
	         .reset(reset_pipelined),
            .dxxpdi(phi_acc_w_di),
            .rval(rval_w),
            .dxxpdo(phi_acc_w_d)
           );

defparam ux002.aprid = aprid;
defparam ux002.dpri = dpri;

asj_nco_apr_dxx ux0219(.pcc_w(phi_acc_w),
                         .pcc_d(phi_acc_w_di)
                         );
defparam ux0219.apr = apr;
defparam ux0219.aprid = aprid;


asj_nco_pmd2gam ux0145(.clk(clk),
                       .reset(reset_pipelined),
                       .clken(clken_pipelined),
                       .ri_xxx(phi_acc_w_d_pipelined[aprid-1:aprid-rawc-rawf]),
.ri_yyy(ri_dxp2)
);
defparam ux0145.apri = apri;
defparam ux0145.Pn = Pn;

asj_gam_dp ux008(.clk(clk),
              .reset(reset_pipelined),
              .clken(clken_pipelined),
              .phi_acc_w(ri_dxp2),
              .rom_add_cs(raxxx001ms),
              .rom_add_cc(raxxx001mc),
              .rom_add_f(raxxx001l)
             );
defparam ux008.rawc = rawc;
defparam ux008.rawf = rawf;
defparam ux008.apr = apri;


asj_nco_as_m_dp_cen ux0220(.clk(clk),
                   .clken (clken_pipelined),
                   .raxx_a(raxxx001ms[rawc-1:0]),
                   .raxx_b(raxxx001mc[rawc-1:0]),
                   .q_a(rcx_s[mpr-1:0]),
                   .q_b(rcx_c[mpr-1:0])
                     );
defparam ux0220.mpr = mpr;
defparam ux0220.rdw = rdw;
defparam ux0220.raw = rawc;
defparam ux0220.rnw = rnwc;
defparam ux0220.rf = rsfc;
defparam ux0220.dev = "MAX 10";

asj_nco_as_m_cen ux0122(.clk(clk),
                   .clken (clken_pipelined),
                   .raxx(raxxx001l[rawf-1:0]),
                   .srw_int_res(rfx_s[mpr-1:0])
                     );
defparam ux0122.mpr = mpr;
defparam ux0122.rdw = rdw;
defparam ux0122.raw = rawf;
defparam ux0122.rnw = rnwf;
defparam ux0122.rf = rsff;
defparam ux0122.dev = "MAX 10";

asj_nco_as_m_cen ux0123(.clk(clk),
                   .clken (clken_pipelined),
                   .raxx(raxxx001l[rawf-1:0]),
                   .srw_int_res(rfx_c[mpr-1:0])
                     );
defparam ux0123.mpr = mpr;
defparam ux0123.rdw = rdw;
defparam ux0123.raw = rawf;
defparam ux0123.rnw = rnwf;
defparam ux0123.rf = rcff;
defparam ux0123.dev = "MAX 10";

mac_i_lpmd m0(.clk(clk),
         .reset(reset_pipelined),
         .clken(clken_pipelined),
         .a_or_s(1'b1),
         .dataa_0(rcy_s),
         .dataa_1(rfy_s),
         .datab_0(rfy_c),
         .datab_1(rcy_c),
         .result(result_i));
defparam m0.mpr = mpr;
defparam m0.opr = opr;

asj_nco_derot ux0136(.crwx_rc(rcx_c_pipelined),
                     .crwx_rf(rfx_c_pipelined),
                     .srwx_rc(rcx_s_pipelined),
                     .srwx_rf(rfx_s_pipelined),
                     .crwy_rc(rcy_c),
                     .crwy_rf(rfy_c),
                     .srwy_rc(rcy_s),
                     .srwy_rf(rfy_s)
                     );
defparam ux0136.mpr = mpr;
defparam ux0136.rxt = rdw;

asj_nco_mob_sw ux0147(.clk(clk),
                      .reset(reset_pipelined),
                      .clken(clken_pipelined),
                      .cxe_sig(cxe_sig),
                      .dx_i(result_i_pipelined),
                      .dyi_o(fsin_o_w),
                      .dyq_o()
                      );
defparam ux0147.mpr = mpr;
defparam ux0147.opr = opr;

assign cxe_sig = 1'b1;
assign fsin_o = fsin_o_w_pipelined;

asj_nco_isdr_throughput2 ux710isdr(.clk(clk),
                    .reset(reset_pipelined),
                    .clkph(cx_en),
                    .clken(clken_pipelined),
                    .data_ready(out_valid_w)
                    );
defparam ux710isdr.ctc=19;
defparam ux710isdr.cpr=5;
defparam ux710isdr.depth=1;
assign out_valid = out_valid_w_pipelined;



endmodule
