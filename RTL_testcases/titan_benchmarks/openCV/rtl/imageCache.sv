module imageCache ( 	
	
	//////////// CLOCK ////////////
	input bit clk,
	
	//////////// Interfaces ////////////
	input structs::struct_imageCache_Write icw,
	input structs::struct_imageCache_Read_In icr_in,
	output structs::struct_imageCache_Read_Out icr_out
	
);	
	
	import pkg_imageCache::*;		
	logic [ADDR_WIDTH-1 :0] waddr;
	logic [ADDR_WIDTH-1 :0] raddr;	
	structs::struct_imageCache_Write regicw;
	
	
	always_ff @ (posedge clk) begin	
		regicw.waddrY <= icw.waddrY;
		regicw.waddrX <= icw.waddrX;
		regicw.wdata <= icw.wdata; 
		regicw.we <= icw.we;	
	end
	
	always_comb begin	
		waddr <= (regicw.waddrY*rowSize) + regicw.waddrX;
		raddr <= (icr_in.raddrY*rowSize) + icr_in.raddrX;
	end
	

	
	// instantiate the ram blocks
	altsyncram	altsyncram_component (
				.address_a (waddr),
				.clock0 (clk),
				.data_a (regicw.wdata),
				.wren_a (regicw.we),
				.address_b (raddr),
				.q_b (icr_out.q),
				.aclr0 (1'b0),
				.aclr1 (1'b0),
				.addressstall_a (1'b0),
				.addressstall_b (1'b0),
				.byteena_a (1'b1),
				.byteena_b (1'b1),
				.clock1 (1'b1),
				.clocken0 (1'b1),
				.clocken1 (1'b1),
				.clocken2 (1'b1),
				.clocken3 (1'b1),
				.data_b ({8{1'b1}}),
				.eccstatus (),
				.q_a (),
				.rden_a (1'b1),
				.rden_b (1'b1),
				.wren_b (1'b0));
	defparam
		altsyncram_component.address_aclr_b = "NONE",
		altsyncram_component.address_reg_b = "CLOCK0",
		altsyncram_component.clock_enable_input_a = "BYPASS",
		altsyncram_component.clock_enable_input_b = "BYPASS",
		altsyncram_component.clock_enable_output_b = "BYPASS",
		altsyncram_component.intended_device_family = "Stratix IV",
		altsyncram_component.lpm_type = "altsyncram",
		altsyncram_component.numwords_a = WORDS,
		altsyncram_component.numwords_b = WORDS,
		altsyncram_component.operation_mode = "DUAL_PORT",
		altsyncram_component.outdata_aclr_b = "NONE",
		altsyncram_component.outdata_reg_b = "UNREGISTERED",
		altsyncram_component.power_up_uninitialized = "FALSE",
		altsyncram_component.ram_block_type = "M9K",
		altsyncram_component.read_during_write_mode_mixed_ports = "DONT_CARE",
		altsyncram_component.widthad_a = ADDR_WIDTH,
		altsyncram_component.widthad_b = ADDR_WIDTH,
		altsyncram_component.width_a = WORD_SIZE,
		altsyncram_component.width_b = WORD_SIZE;
		
		
		
		/*
		
		
		//window integral image data
    simpleDualPortRam 
      #(
        // paramiters
        .ADDR_WIDTH(ADDR_WIDTH),
        .WORD_SIZE(WORD_SIZE),
        .WORDS(1),	
        .BLOCKIN(0),
        .BLOCKOUT(0)
      ) 
      ram 
      (		
        // signals
        .clk(clk),
        .waddr(waddr),
        .raddr(raddr),
        .raddrElm(0),
        .waddrElm(0),
        .wdata(regicw.wdata),
        .we(regicw.we),
        .q(icr_out.q),	
        .qw()		
      );
      
      */
				
endmodule : imageCache
