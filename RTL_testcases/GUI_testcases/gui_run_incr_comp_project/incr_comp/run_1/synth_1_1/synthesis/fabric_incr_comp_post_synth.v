/* Generated by Yosys 0.38 (git sha1 6c475f1f1, gcc 11.2.1 -fPIC -Os) */

module fabric_and2(\$auto_413 , \$auto_414 , \$ibuf_one , \$ibuf_sec , \$obuf_s );
  output \$auto_413 ;
  output \$auto_414 ;
  input \$ibuf_one ;
  input \$ibuf_sec ;
  output \$obuf_s ;
  wire \$auto_413 ;
  wire \$auto_414 ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/24july/Validation/RTL_testcases/GUI_testcases/gui_run_incr_comp_project/incr_comp/run_1/incr_comp.srcs/sources_1/tmp.v:12.12-12.15" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/24july/Validation/RTL_testcases/GUI_testcases/gui_run_incr_comp_project/incr_comp/run_1/incr_comp.srcs/sources_1/tmp.v:12.12-12.15" *)
  wire \$ibuf_one ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/24july/Validation/RTL_testcases/GUI_testcases/gui_run_incr_comp_project/incr_comp/run_1/incr_comp.srcs/sources_1/tmp.v:13.12-13.15" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/24july/Validation/RTL_testcases/GUI_testcases/gui_run_incr_comp_project/incr_comp/run_1/incr_comp.srcs/sources_1/tmp.v:13.12-13.15" *)
  wire \$ibuf_sec ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/24july/Validation/RTL_testcases/GUI_testcases/gui_run_incr_comp_project/incr_comp/run_1/incr_comp.srcs/sources_1/tmp.v:14.13-14.14" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/24july/Validation/RTL_testcases/GUI_testcases/gui_run_incr_comp_project/incr_comp/run_1/incr_comp.srcs/sources_1/tmp.v:14.13-14.14" *)
  wire \$obuf_s ;
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/07_24_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/lut_map.v:21.38-21.69" *)
  LUT2 #(
    .INIT_VALUE(4'h8)
  ) \$abc$407$auto_408  (
    .A({ \$ibuf_sec , \$ibuf_one  }),
    .Y(\$obuf_s )
  );
  assign \$auto_413  = 1'h1;
  assign \$auto_414  = 1'h1;
endmodule
