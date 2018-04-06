// system.v

// Generated using ACDS version 17.1 590

`timescale 1 ps / 1 ps
module system (
		input  wire        acl_iface_alt_vip_itc_0_clocked_video_vid_clk,       //    acl_iface_alt_vip_itc_0_clocked_video.vid_clk
		output wire [31:0] acl_iface_alt_vip_itc_0_clocked_video_vid_data,      //                                         .vid_data
		output wire        acl_iface_alt_vip_itc_0_clocked_video_underflow,     //                                         .underflow
		output wire        acl_iface_alt_vip_itc_0_clocked_video_vid_datavalid, //                                         .vid_datavalid
		output wire        acl_iface_alt_vip_itc_0_clocked_video_vid_v_sync,    //                                         .vid_v_sync
		output wire        acl_iface_alt_vip_itc_0_clocked_video_vid_h_sync,    //                                         .vid_h_sync
		output wire        acl_iface_alt_vip_itc_0_clocked_video_vid_f,         //                                         .vid_f
		output wire        acl_iface_alt_vip_itc_0_clocked_video_vid_h,         //                                         .vid_h
		output wire        acl_iface_alt_vip_itc_0_clocked_video_vid_v,         //                                         .vid_v
		input  wire [1:0]  acl_iface_button_pio_external_connection_export,     // acl_iface_button_pio_external_connection.export
		input  wire        acl_iface_clock_130_clk,                             //                      acl_iface_clock_130.clk
		input  wire [3:0]  acl_iface_dipsw_pio_external_connection_export,      //  acl_iface_dipsw_pio_external_connection.export
		output wire [6:0]  acl_iface_led_pio_external_connection_export,        //    acl_iface_led_pio_external_connection.export
		input  wire        clk_50_clk,                                          //                                   clk_50.clk
		output wire        kernel_clk_clk,                                      //                               kernel_clk.clk
		output wire [14:0] memory_mem_a,                                        //                                   memory.mem_a
		output wire [2:0]  memory_mem_ba,                                       //                                         .mem_ba
		output wire        memory_mem_ck,                                       //                                         .mem_ck
		output wire        memory_mem_ck_n,                                     //                                         .mem_ck_n
		output wire        memory_mem_cke,                                      //                                         .mem_cke
		output wire        memory_mem_cs_n,                                     //                                         .mem_cs_n
		output wire        memory_mem_ras_n,                                    //                                         .mem_ras_n
		output wire        memory_mem_cas_n,                                    //                                         .mem_cas_n
		output wire        memory_mem_we_n,                                     //                                         .mem_we_n
		output wire        memory_mem_reset_n,                                  //                                         .mem_reset_n
		inout  wire [31:0] memory_mem_dq,                                       //                                         .mem_dq
		inout  wire [3:0]  memory_mem_dqs,                                      //                                         .mem_dqs
		inout  wire [3:0]  memory_mem_dqs_n,                                    //                                         .mem_dqs_n
		output wire        memory_mem_odt,                                      //                                         .mem_odt
		output wire [3:0]  memory_mem_dm,                                       //                                         .mem_dm
		input  wire        memory_oct_rzqin,                                    //                                         .oct_rzqin
		output wire        peripheral_hps_io_emac1_inst_TX_CLK,                 //                               peripheral.hps_io_emac1_inst_TX_CLK
		output wire        peripheral_hps_io_emac1_inst_TXD0,                   //                                         .hps_io_emac1_inst_TXD0
		output wire        peripheral_hps_io_emac1_inst_TXD1,                   //                                         .hps_io_emac1_inst_TXD1
		output wire        peripheral_hps_io_emac1_inst_TXD2,                   //                                         .hps_io_emac1_inst_TXD2
		output wire        peripheral_hps_io_emac1_inst_TXD3,                   //                                         .hps_io_emac1_inst_TXD3
		input  wire        peripheral_hps_io_emac1_inst_RXD0,                   //                                         .hps_io_emac1_inst_RXD0
		inout  wire        peripheral_hps_io_emac1_inst_MDIO,                   //                                         .hps_io_emac1_inst_MDIO
		output wire        peripheral_hps_io_emac1_inst_MDC,                    //                                         .hps_io_emac1_inst_MDC
		input  wire        peripheral_hps_io_emac1_inst_RX_CTL,                 //                                         .hps_io_emac1_inst_RX_CTL
		output wire        peripheral_hps_io_emac1_inst_TX_CTL,                 //                                         .hps_io_emac1_inst_TX_CTL
		input  wire        peripheral_hps_io_emac1_inst_RX_CLK,                 //                                         .hps_io_emac1_inst_RX_CLK
		input  wire        peripheral_hps_io_emac1_inst_RXD1,                   //                                         .hps_io_emac1_inst_RXD1
		input  wire        peripheral_hps_io_emac1_inst_RXD2,                   //                                         .hps_io_emac1_inst_RXD2
		input  wire        peripheral_hps_io_emac1_inst_RXD3,                   //                                         .hps_io_emac1_inst_RXD3
		inout  wire        peripheral_hps_io_sdio_inst_CMD,                     //                                         .hps_io_sdio_inst_CMD
		inout  wire        peripheral_hps_io_sdio_inst_D0,                      //                                         .hps_io_sdio_inst_D0
		inout  wire        peripheral_hps_io_sdio_inst_D1,                      //                                         .hps_io_sdio_inst_D1
		output wire        peripheral_hps_io_sdio_inst_CLK,                     //                                         .hps_io_sdio_inst_CLK
		inout  wire        peripheral_hps_io_sdio_inst_D2,                      //                                         .hps_io_sdio_inst_D2
		inout  wire        peripheral_hps_io_sdio_inst_D3,                      //                                         .hps_io_sdio_inst_D3
		inout  wire        peripheral_hps_io_usb1_inst_D0,                      //                                         .hps_io_usb1_inst_D0
		inout  wire        peripheral_hps_io_usb1_inst_D1,                      //                                         .hps_io_usb1_inst_D1
		inout  wire        peripheral_hps_io_usb1_inst_D2,                      //                                         .hps_io_usb1_inst_D2
		inout  wire        peripheral_hps_io_usb1_inst_D3,                      //                                         .hps_io_usb1_inst_D3
		inout  wire        peripheral_hps_io_usb1_inst_D4,                      //                                         .hps_io_usb1_inst_D4
		inout  wire        peripheral_hps_io_usb1_inst_D5,                      //                                         .hps_io_usb1_inst_D5
		inout  wire        peripheral_hps_io_usb1_inst_D6,                      //                                         .hps_io_usb1_inst_D6
		inout  wire        peripheral_hps_io_usb1_inst_D7,                      //                                         .hps_io_usb1_inst_D7
		input  wire        peripheral_hps_io_usb1_inst_CLK,                     //                                         .hps_io_usb1_inst_CLK
		output wire        peripheral_hps_io_usb1_inst_STP,                     //                                         .hps_io_usb1_inst_STP
		input  wire        peripheral_hps_io_usb1_inst_DIR,                     //                                         .hps_io_usb1_inst_DIR
		input  wire        peripheral_hps_io_usb1_inst_NXT,                     //                                         .hps_io_usb1_inst_NXT
		input  wire        peripheral_hps_io_uart0_inst_RX,                     //                                         .hps_io_uart0_inst_RX
		output wire        peripheral_hps_io_uart0_inst_TX,                     //                                         .hps_io_uart0_inst_TX
		inout  wire        peripheral_hps_io_i2c1_inst_SDA,                     //                                         .hps_io_i2c1_inst_SDA
		inout  wire        peripheral_hps_io_i2c1_inst_SCL,                     //                                         .hps_io_i2c1_inst_SCL
		inout  wire        peripheral_hps_io_gpio_inst_GPIO53,                  //                                         .hps_io_gpio_inst_GPIO53
		input  wire        reset_50_reset_n                                     //                                 reset_50.reset_n
	);

	wire  [0:0] acl_iface_kernel_irq_irq;       // irq_mapper:sender_irq -> acl_iface:kernel_irq_irq
	wire        acl_iface_kernel_clk_clk;       // acl_iface:kernel_clk_clk -> [irq_mapper:clk, rst_controller:clk]
	wire        rst_controller_reset_out_reset; // rst_controller:reset_out -> irq_mapper:reset

	system_acl_iface acl_iface (
		.acl_internal_memorg_kernel_mode           (),                                                    //       acl_internal_memorg_kernel.mode
		.acl_kernel_clk_kernel_pll_locked_export   (),                                                    // acl_kernel_clk_kernel_pll_locked.export
		.alt_vip_itc_0_clocked_video_vid_clk       (acl_iface_alt_vip_itc_0_clocked_video_vid_clk),       //      alt_vip_itc_0_clocked_video.vid_clk
		.alt_vip_itc_0_clocked_video_vid_data      (acl_iface_alt_vip_itc_0_clocked_video_vid_data),      //                                 .vid_data
		.alt_vip_itc_0_clocked_video_underflow     (acl_iface_alt_vip_itc_0_clocked_video_underflow),     //                                 .underflow
		.alt_vip_itc_0_clocked_video_vid_datavalid (acl_iface_alt_vip_itc_0_clocked_video_vid_datavalid), //                                 .vid_datavalid
		.alt_vip_itc_0_clocked_video_vid_v_sync    (acl_iface_alt_vip_itc_0_clocked_video_vid_v_sync),    //                                 .vid_v_sync
		.alt_vip_itc_0_clocked_video_vid_h_sync    (acl_iface_alt_vip_itc_0_clocked_video_vid_h_sync),    //                                 .vid_h_sync
		.alt_vip_itc_0_clocked_video_vid_f         (acl_iface_alt_vip_itc_0_clocked_video_vid_f),         //                                 .vid_f
		.alt_vip_itc_0_clocked_video_vid_h         (acl_iface_alt_vip_itc_0_clocked_video_vid_h),         //                                 .vid_h
		.alt_vip_itc_0_clocked_video_vid_v         (acl_iface_alt_vip_itc_0_clocked_video_vid_v),         //                                 .vid_v
		.button_pio_external_connection_export     (acl_iface_button_pio_external_connection_export),     //   button_pio_external_connection.export
		.clock_130_clk                             (acl_iface_clock_130_clk),                             //                        clock_130.clk
		.config_clk_clk                            (clk_50_clk),                                          //                       config_clk.clk
		.dipsw_pio_external_connection_export      (acl_iface_dipsw_pio_external_connection_export),      //    dipsw_pio_external_connection.export
		.reset_n                                   (reset_50_reset_n),                                    //                     global_reset.reset_n
		.kernel_clk_clk                            (acl_iface_kernel_clk_clk),                            //                       kernel_clk.clk
		.kernel_clk2x_clk                          (),                                                    //                     kernel_clk2x.clk
		.kernel_clk_snoop_clk                      (kernel_clk_clk),                                      //                 kernel_clk_snoop.clk
		.kernel_cra_waitrequest                    (),                                                    //                       kernel_cra.waitrequest
		.kernel_cra_readdata                       (),                                                    //                                 .readdata
		.kernel_cra_readdatavalid                  (),                                                    //                                 .readdatavalid
		.kernel_cra_burstcount                     (),                                                    //                                 .burstcount
		.kernel_cra_writedata                      (),                                                    //                                 .writedata
		.kernel_cra_address                        (),                                                    //                                 .address
		.kernel_cra_write                          (),                                                    //                                 .write
		.kernel_cra_read                           (),                                                    //                                 .read
		.kernel_cra_byteenable                     (),                                                    //                                 .byteenable
		.kernel_cra_debugaccess                    (),                                                    //                                 .debugaccess
		.kernel_irq_irq                            (acl_iface_kernel_irq_irq),                            //                       kernel_irq.irq
		.kernel_mem0_waitrequest                   (),                                                    //                      kernel_mem0.waitrequest
		.kernel_mem0_readdata                      (),                                                    //                                 .readdata
		.kernel_mem0_readdatavalid                 (),                                                    //                                 .readdatavalid
		.kernel_mem0_burstcount                    (),                                                    //                                 .burstcount
		.kernel_mem0_writedata                     (),                                                    //                                 .writedata
		.kernel_mem0_address                       (),                                                    //                                 .address
		.kernel_mem0_write                         (),                                                    //                                 .write
		.kernel_mem0_read                          (),                                                    //                                 .read
		.kernel_mem0_byteenable                    (),                                                    //                                 .byteenable
		.kernel_mem0_debugaccess                   (),                                                    //                                 .debugaccess
		.kernel_pll_refclk_clk                     (clk_50_clk),                                          //                kernel_pll_refclk.clk
		.kernel_reset_reset_n                      (),                                                    //                     kernel_reset.reset_n
		.led_pio_external_connection_export        (acl_iface_led_pio_external_connection_export),        //      led_pio_external_connection.export
		.memory_mem_a                              (memory_mem_a),                                        //                           memory.mem_a
		.memory_mem_ba                             (memory_mem_ba),                                       //                                 .mem_ba
		.memory_mem_ck                             (memory_mem_ck),                                       //                                 .mem_ck
		.memory_mem_ck_n                           (memory_mem_ck_n),                                     //                                 .mem_ck_n
		.memory_mem_cke                            (memory_mem_cke),                                      //                                 .mem_cke
		.memory_mem_cs_n                           (memory_mem_cs_n),                                     //                                 .mem_cs_n
		.memory_mem_ras_n                          (memory_mem_ras_n),                                    //                                 .mem_ras_n
		.memory_mem_cas_n                          (memory_mem_cas_n),                                    //                                 .mem_cas_n
		.memory_mem_we_n                           (memory_mem_we_n),                                     //                                 .mem_we_n
		.memory_mem_reset_n                        (memory_mem_reset_n),                                  //                                 .mem_reset_n
		.memory_mem_dq                             (memory_mem_dq),                                       //                                 .mem_dq
		.memory_mem_dqs                            (memory_mem_dqs),                                      //                                 .mem_dqs
		.memory_mem_dqs_n                          (memory_mem_dqs_n),                                    //                                 .mem_dqs_n
		.memory_mem_odt                            (memory_mem_odt),                                      //                                 .mem_odt
		.memory_mem_dm                             (memory_mem_dm),                                       //                                 .mem_dm
		.memory_oct_rzqin                          (memory_oct_rzqin),                                    //                                 .oct_rzqin
		.peripheral_hps_io_emac1_inst_TX_CLK       (peripheral_hps_io_emac1_inst_TX_CLK),                 //                       peripheral.hps_io_emac1_inst_TX_CLK
		.peripheral_hps_io_emac1_inst_TXD0         (peripheral_hps_io_emac1_inst_TXD0),                   //                                 .hps_io_emac1_inst_TXD0
		.peripheral_hps_io_emac1_inst_TXD1         (peripheral_hps_io_emac1_inst_TXD1),                   //                                 .hps_io_emac1_inst_TXD1
		.peripheral_hps_io_emac1_inst_TXD2         (peripheral_hps_io_emac1_inst_TXD2),                   //                                 .hps_io_emac1_inst_TXD2
		.peripheral_hps_io_emac1_inst_TXD3         (peripheral_hps_io_emac1_inst_TXD3),                   //                                 .hps_io_emac1_inst_TXD3
		.peripheral_hps_io_emac1_inst_RXD0         (peripheral_hps_io_emac1_inst_RXD0),                   //                                 .hps_io_emac1_inst_RXD0
		.peripheral_hps_io_emac1_inst_MDIO         (peripheral_hps_io_emac1_inst_MDIO),                   //                                 .hps_io_emac1_inst_MDIO
		.peripheral_hps_io_emac1_inst_MDC          (peripheral_hps_io_emac1_inst_MDC),                    //                                 .hps_io_emac1_inst_MDC
		.peripheral_hps_io_emac1_inst_RX_CTL       (peripheral_hps_io_emac1_inst_RX_CTL),                 //                                 .hps_io_emac1_inst_RX_CTL
		.peripheral_hps_io_emac1_inst_TX_CTL       (peripheral_hps_io_emac1_inst_TX_CTL),                 //                                 .hps_io_emac1_inst_TX_CTL
		.peripheral_hps_io_emac1_inst_RX_CLK       (peripheral_hps_io_emac1_inst_RX_CLK),                 //                                 .hps_io_emac1_inst_RX_CLK
		.peripheral_hps_io_emac1_inst_RXD1         (peripheral_hps_io_emac1_inst_RXD1),                   //                                 .hps_io_emac1_inst_RXD1
		.peripheral_hps_io_emac1_inst_RXD2         (peripheral_hps_io_emac1_inst_RXD2),                   //                                 .hps_io_emac1_inst_RXD2
		.peripheral_hps_io_emac1_inst_RXD3         (peripheral_hps_io_emac1_inst_RXD3),                   //                                 .hps_io_emac1_inst_RXD3
		.peripheral_hps_io_sdio_inst_CMD           (peripheral_hps_io_sdio_inst_CMD),                     //                                 .hps_io_sdio_inst_CMD
		.peripheral_hps_io_sdio_inst_D0            (peripheral_hps_io_sdio_inst_D0),                      //                                 .hps_io_sdio_inst_D0
		.peripheral_hps_io_sdio_inst_D1            (peripheral_hps_io_sdio_inst_D1),                      //                                 .hps_io_sdio_inst_D1
		.peripheral_hps_io_sdio_inst_CLK           (peripheral_hps_io_sdio_inst_CLK),                     //                                 .hps_io_sdio_inst_CLK
		.peripheral_hps_io_sdio_inst_D2            (peripheral_hps_io_sdio_inst_D2),                      //                                 .hps_io_sdio_inst_D2
		.peripheral_hps_io_sdio_inst_D3            (peripheral_hps_io_sdio_inst_D3),                      //                                 .hps_io_sdio_inst_D3
		.peripheral_hps_io_usb1_inst_D0            (peripheral_hps_io_usb1_inst_D0),                      //                                 .hps_io_usb1_inst_D0
		.peripheral_hps_io_usb1_inst_D1            (peripheral_hps_io_usb1_inst_D1),                      //                                 .hps_io_usb1_inst_D1
		.peripheral_hps_io_usb1_inst_D2            (peripheral_hps_io_usb1_inst_D2),                      //                                 .hps_io_usb1_inst_D2
		.peripheral_hps_io_usb1_inst_D3            (peripheral_hps_io_usb1_inst_D3),                      //                                 .hps_io_usb1_inst_D3
		.peripheral_hps_io_usb1_inst_D4            (peripheral_hps_io_usb1_inst_D4),                      //                                 .hps_io_usb1_inst_D4
		.peripheral_hps_io_usb1_inst_D5            (peripheral_hps_io_usb1_inst_D5),                      //                                 .hps_io_usb1_inst_D5
		.peripheral_hps_io_usb1_inst_D6            (peripheral_hps_io_usb1_inst_D6),                      //                                 .hps_io_usb1_inst_D6
		.peripheral_hps_io_usb1_inst_D7            (peripheral_hps_io_usb1_inst_D7),                      //                                 .hps_io_usb1_inst_D7
		.peripheral_hps_io_usb1_inst_CLK           (peripheral_hps_io_usb1_inst_CLK),                     //                                 .hps_io_usb1_inst_CLK
		.peripheral_hps_io_usb1_inst_STP           (peripheral_hps_io_usb1_inst_STP),                     //                                 .hps_io_usb1_inst_STP
		.peripheral_hps_io_usb1_inst_DIR           (peripheral_hps_io_usb1_inst_DIR),                     //                                 .hps_io_usb1_inst_DIR
		.peripheral_hps_io_usb1_inst_NXT           (peripheral_hps_io_usb1_inst_NXT),                     //                                 .hps_io_usb1_inst_NXT
		.peripheral_hps_io_uart0_inst_RX           (peripheral_hps_io_uart0_inst_RX),                     //                                 .hps_io_uart0_inst_RX
		.peripheral_hps_io_uart0_inst_TX           (peripheral_hps_io_uart0_inst_TX),                     //                                 .hps_io_uart0_inst_TX
		.peripheral_hps_io_i2c1_inst_SDA           (peripheral_hps_io_i2c1_inst_SDA),                     //                                 .hps_io_i2c1_inst_SDA
		.peripheral_hps_io_i2c1_inst_SCL           (peripheral_hps_io_i2c1_inst_SCL),                     //                                 .hps_io_i2c1_inst_SCL
		.peripheral_hps_io_gpio_inst_GPIO53        (peripheral_hps_io_gpio_inst_GPIO53)                   //                                 .hps_io_gpio_inst_GPIO53
	);

	system_irq_mapper irq_mapper (
		.clk        (acl_iface_kernel_clk_clk),       //       clk.clk
		.reset      (rst_controller_reset_out_reset), // clk_reset.reset
		.sender_irq (acl_iface_kernel_irq_irq)        //    sender.irq
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
		.reset_in0      (~reset_50_reset_n),              // reset_in0.reset
		.clk            (acl_iface_kernel_clk_clk),       //       clk.clk
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
