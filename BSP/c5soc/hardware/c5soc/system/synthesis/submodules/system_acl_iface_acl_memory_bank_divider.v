// system_acl_iface_acl_memory_bank_divider.v

// This file was auto-generated from acl_memory_bank_divider_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 17.1 590

`timescale 1 ps / 1 ps
module system_acl_iface_acl_memory_bank_divider (
		input  wire         clk_clk,              //           clk.clk
		input  wire         reset_reset_n,        //         reset.reset_n
		input  wire         kernel_clk_clk,       //    kernel_clk.clk
		input  wire         kernel_reset_reset_n, //  kernel_reset.reset_n
		output wire [30:0]  acl_bsp_snoop_data,   // acl_bsp_snoop.data
		output wire         acl_bsp_snoop_valid,  //              .valid
		input  wire         acl_bsp_snoop_ready,  //              .ready
		input  wire         s_read,               //             s.read
		output wire [255:0] s_readdata,           //              .readdata
		output wire         s_readdatavalid,      //              .readdatavalid
		input  wire         s_write,              //              .write
		input  wire [255:0] s_writedata,          //              .writedata
		input  wire [4:0]   s_burstcount,         //              .burstcount
		input  wire         s_beginbursttransfer, //              .beginbursttransfer
		input  wire [31:0]  s_byteenable,         //              .byteenable
		input  wire [24:0]  s_address,            //              .address
		output wire         s_waitrequest,        //              .waitrequest
		output wire [29:0]  bank1_address,        //         bank1.address
		output wire         bank1_read,           //              .read
		input  wire [255:0] bank1_readdata,       //              .readdata
		input  wire         bank1_readdatavalid,  //              .readdatavalid
		output wire         bank1_write,          //              .write
		output wire [255:0] bank1_writedata,      //              .writedata
		output wire [4:0]   bank1_burstcount,     //              .burstcount
		output wire [31:0]  bank1_byteenable,     //              .byteenable
		input  wire         bank1_waitrequest     //              .waitrequest
	);

	wire    rst_controller_reset_out_reset; // rst_controller:reset_out -> acl_snoop_adapter_0:kernel_reset

	snoop_adapter #(
		.NUM_BYTES          (32),
		.BYTE_ADDRESS_WIDTH (30),
		.WORD_ADDRESS_WIDTH (25),
		.BURSTCOUNT_WIDTH   (5)
	) acl_snoop_adapter_0 (
		.clk                  (clk_clk),                        //          clk.clk
		.reset                (~reset_reset_n),                 //    clk_reset.reset
		.kernel_clk           (kernel_clk_clk),                 //   kernel_clk.clk
		.kernel_reset         (rst_controller_reset_out_reset), // kernel_reset.reset
		.read                 (s_read),                         //           s1.read
		.readdata             (s_readdata),                     //             .readdata
		.readdatavalid        (s_readdatavalid),                //             .readdatavalid
		.write                (s_write),                        //             .write
		.writedata            (s_writedata),                    //             .writedata
		.burstcount           (s_burstcount),                   //             .burstcount
		.burstbegin           (s_beginbursttransfer),           //             .beginbursttransfer
		.byteenable           (s_byteenable),                   //             .byteenable
		.address              (s_address),                      //             .address
		.waitrequest          (s_waitrequest),                  //             .waitrequest
		.export_address       (bank1_address),                  //           m1.address
		.export_read          (bank1_read),                     //             .read
		.export_readdata      (bank1_readdata),                 //             .readdata
		.export_readdatavalid (bank1_readdatavalid),            //             .readdatavalid
		.export_write         (bank1_write),                    //             .write
		.export_writedata     (bank1_writedata),                //             .writedata
		.export_burstcount    (bank1_burstcount),               //             .burstcount
		.export_byteenable    (bank1_byteenable),               //             .byteenable
		.export_waitrequest   (bank1_waitrequest),              //             .waitrequest
		.snoop_data           (acl_bsp_snoop_data),             //        snoop.data
		.snoop_valid          (acl_bsp_snoop_valid),            //             .valid
		.snoop_ready          (acl_bsp_snoop_ready)             //             .ready
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (1),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (0),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller (
		.reset_in0      (~kernel_reset_reset_n),          // reset_in0.reset
		.clk            (kernel_clk_clk),                 //       clk.clk
		.reset_out      (rst_controller_reset_out_reset), // reset_out.reset
		.reset_req      (),                               // (terminated)
		.reset_req_in0  (1'b0),                           // (terminated)
		.reset_in1      (1'b0),                           // (terminated)
		.reset_req_in1  (1'b0),                           // (terminated)
		.reset_in2      (1'b0),                           // (terminated)
		.reset_req_in2  (1'b0),                           // (terminated)
		.reset_in3      (1'b0),                           // (terminated)
		.reset_req_in3  (1'b0),                           // (terminated)
		.reset_in4      (1'b0),                           // (terminated)
		.reset_req_in4  (1'b0),                           // (terminated)
		.reset_in5      (1'b0),                           // (terminated)
		.reset_req_in5  (1'b0),                           // (terminated)
		.reset_in6      (1'b0),                           // (terminated)
		.reset_req_in6  (1'b0),                           // (terminated)
		.reset_in7      (1'b0),                           // (terminated)
		.reset_req_in7  (1'b0),                           // (terminated)
		.reset_in8      (1'b0),                           // (terminated)
		.reset_req_in8  (1'b0),                           // (terminated)
		.reset_in9      (1'b0),                           // (terminated)
		.reset_req_in9  (1'b0),                           // (terminated)
		.reset_in10     (1'b0),                           // (terminated)
		.reset_req_in10 (1'b0),                           // (terminated)
		.reset_in11     (1'b0),                           // (terminated)
		.reset_req_in11 (1'b0),                           // (terminated)
		.reset_in12     (1'b0),                           // (terminated)
		.reset_req_in12 (1'b0),                           // (terminated)
		.reset_in13     (1'b0),                           // (terminated)
		.reset_req_in13 (1'b0),                           // (terminated)
		.reset_in14     (1'b0),                           // (terminated)
		.reset_req_in14 (1'b0),                           // (terminated)
		.reset_in15     (1'b0),                           // (terminated)
		.reset_req_in15 (1'b0)                            // (terminated)
	);

endmodule
