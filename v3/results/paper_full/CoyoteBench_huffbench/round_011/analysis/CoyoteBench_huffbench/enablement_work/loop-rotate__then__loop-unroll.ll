; ModuleID = 'results\paper_full\CoyoteBench_huffbench\round_010\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/CoyoteBench/huffbench.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [33 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZ012345\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"error: bit code overflow\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"error: file has only one value!\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"error: no compression\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"-ga\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"\0Ahuffbench (Std. C) run time: %f\0A\0A\00", align 1
@seed = internal global i32 1325, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @generate_test_data(i64 noundef %0) #0 {
  %2 = call ptr @malloc(i64 noundef %0) #10
  %exitcond.not1 = icmp eq i64 0, %0
  br i1 %exitcond.not1, label %8, label %.lr.ph

.lr.ph:                                           ; preds = %1
  br label %3

3:                                                ; preds = %.lr.ph, %3
  %.013 = phi ptr [ %2, %.lr.ph ], [ %7, %3 ]
  %indvars.iv2 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %4 = call i64 @random4()
  %5 = getelementptr inbounds nuw i8, ptr @.str, i64 %4
  %6 = load i8, ptr %5, align 1
  store i8 %6, ptr %.013, align 1
  %7 = getelementptr inbounds nuw i8, ptr %.013, i64 1
  %indvars.iv.next = add nuw i64 %indvars.iv2, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %0
  br i1 %exitcond.not, label %._crit_edge, label %3, !llvm.loop !7

._crit_edge:                                      ; preds = %3
  br label %8

8:                                                ; preds = %._crit_edge, %1
  ret ptr %2
}

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @compdecomp(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca [512 x i64], align 16
  %4 = alloca [256 x i64], align 16
  %5 = alloca [512 x i32], align 16
  %6 = alloca [256 x i32], align 16
  %7 = alloca [256 x i8], align 16
  %8 = alloca [256 x i32], align 16
  %9 = alloca [256 x i8], align 16
  %10 = add i64 %1, 1
  %11 = call ptr @malloc(i64 noundef %10) #10
  call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %10, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %3, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %4, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %5, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %6, i8 0, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %7, i8 0, i64 256, i1 false)
  %exitcond.not7 = icmp eq i64 0, %1
  br i1 %exitcond.not7, label %.preheader6.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %12 = add i64 %1, -1
  %xtraiter = and i64 %1, 3
  %13 = icmp ult i64 %12, 3
  br i1 %13, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = sub i64 %1, %xtraiter
  br label %22

..preheader6.preheader_crit_edge.unr-lcssa:       ; preds = %22
  %.029.unr = phi i64 [ %47, %22 ]
  %.0338.unr = phi ptr [ %46, %22 ]
  %lcmp.mod = icmp ne i64 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %..preheader6.preheader_crit_edge

.epil.preheader:                                  ; preds = %..preheader6.preheader_crit_edge.unr-lcssa, %.lr.ph
  %.029.epil.init = phi i64 [ 0, %.lr.ph ], [ %.029.unr, %..preheader6.preheader_crit_edge.unr-lcssa ]
  %.0338.epil.init = phi ptr [ %0, %.lr.ph ], [ %.0338.unr, %..preheader6.preheader_crit_edge.unr-lcssa ]
  %lcmp.mod71 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod71)
  br label %14

14:                                               ; preds = %14, %.epil.preheader
  %.029.epil = phi i64 [ %.029.epil.init, %.epil.preheader ], [ %21, %14 ]
  %.0338.epil = phi ptr [ %.0338.epil.init, %.epil.preheader ], [ %20, %14 ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %14 ]
  %15 = load i8, ptr %.0338.epil, align 1
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %16
  %18 = load i64, ptr %17, align 8
  %19 = add i64 %18, 1
  store i64 %19, ptr %17, align 8
  %20 = getelementptr inbounds nuw i8, ptr %.0338.epil, i64 1
  %21 = add i64 %.029.epil, 1
  %exitcond.not.epil = icmp eq i64 %21, %1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp = icmp ne i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp, label %14, label %..preheader6.preheader_crit_edge.epilog-lcssa, !llvm.loop !9

..preheader6.preheader_crit_edge.epilog-lcssa:    ; preds = %14
  br label %..preheader6.preheader_crit_edge

..preheader6.preheader_crit_edge:                 ; preds = %..preheader6.preheader_crit_edge.unr-lcssa, %..preheader6.preheader_crit_edge.epilog-lcssa
  br label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %..preheader6.preheader_crit_edge, %2
  br label %48

22:                                               ; preds = %22, %.lr.ph.new
  %.029 = phi i64 [ 0, %.lr.ph.new ], [ %47, %22 ]
  %.0338 = phi ptr [ %0, %.lr.ph.new ], [ %46, %22 ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %22 ]
  %23 = load i8, ptr %.0338, align 1
  %24 = zext i8 %23 to i64
  %25 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %24
  %26 = load i64, ptr %25, align 8
  %27 = add i64 %26, 1
  store i64 %27, ptr %25, align 8
  %28 = getelementptr inbounds nuw i8, ptr %.0338, i64 1
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %30
  %32 = load i64, ptr %31, align 8
  %33 = add i64 %32, 1
  store i64 %33, ptr %31, align 8
  %34 = getelementptr inbounds nuw i8, ptr %28, i64 1
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %36
  %38 = load i64, ptr %37, align 8
  %39 = add i64 %38, 1
  store i64 %39, ptr %37, align 8
  %40 = getelementptr inbounds nuw i8, ptr %34, i64 1
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %42
  %44 = load i64, ptr %43, align 8
  %45 = add i64 %44, 1
  store i64 %45, ptr %43, align 8
  %46 = getelementptr inbounds nuw i8, ptr %40, i64 1
  %47 = add i64 %.029, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %..preheader6.preheader_crit_edge.unr-lcssa, label %22, !llvm.loop !11

.preheader5.preheader:                            ; preds = %.preheader6.1
  %.010.lcssa = phi i64 [ %.111.1, %.preheader6.1 ]
  %.not13 = icmp eq i64 %.010.lcssa, 0
  br i1 %.not13, label %.preheader4.preheader, label %.lr.ph15

.lr.ph15:                                         ; preds = %.preheader5.preheader
  br label %.preheader5

48:                                               ; preds = %.preheader6.1, %.preheader6.preheader
  %.1312 = phi i64 [ 0, %.preheader6.preheader ], [ %60, %.preheader6.1 ]
  %.01011 = phi i64 [ 0, %.preheader6.preheader ], [ %.111.1, %.preheader6.1 ]
  %49 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.1312
  %50 = load i64, ptr %49, align 8
  %.not8 = icmp eq i64 %50, 0
  br i1 %.not8, label %.preheader6, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.01011
  store i64 %.1312, ptr %52, align 8
  %53 = add i64 %.01011, 1
  br label %.preheader6

.preheader6:                                      ; preds = %51, %48
  %.111 = phi i64 [ %53, %51 ], [ %.01011, %48 ]
  %54 = add nuw nsw i64 %.1312, 1
  %55 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %54
  %56 = load i64, ptr %55, align 8
  %.not8.1 = icmp eq i64 %56, 0
  br i1 %.not8.1, label %.preheader6.1, label %57

57:                                               ; preds = %.preheader6
  %58 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.111
  store i64 %54, ptr %58, align 8
  %59 = add i64 %.111, 1
  br label %.preheader6.1

.preheader6.1:                                    ; preds = %57, %.preheader6
  %.111.1 = phi i64 [ %59, %57 ], [ %.111, %.preheader6 ]
  %60 = add nuw nsw i64 %.1312, 2
  %exitcond13.not.1 = icmp eq i64 %60, 256
  br i1 %exitcond13.not.1, label %.preheader5.preheader, label %48, !llvm.loop !12

.preheader5..preheader4.preheader_crit_edge:      ; preds = %.preheader5
  br label %.preheader4.preheader

.preheader4.preheader:                            ; preds = %.preheader5..preheader4.preheader_crit_edge, %.preheader5.preheader
  %61 = icmp ugt i64 %.010.lcssa, 1
  br i1 %61, label %.lr.ph17, label %84

.lr.ph17:                                         ; preds = %.preheader4.preheader
  br label %.preheader4

.preheader5:                                      ; preds = %.lr.ph15, %.preheader5
  %.2414 = phi i64 [ %.010.lcssa, %.lr.ph15 ], [ %64, %.preheader5 ]
  %62 = trunc i64 %.010.lcssa to i32
  %63 = trunc i64 %.2414 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %62, i32 noundef %63)
  %64 = add i64 %.2414, -1
  %.not = icmp eq i64 %64, 0
  br i1 %.not, label %.preheader5..preheader4.preheader_crit_edge, label %.preheader5, !llvm.loop !13

.preheader4:                                      ; preds = %.lr.ph17, %.preheader4
  %.21216 = phi i64 [ %.010.lcssa, %.lr.ph17 ], [ %65, %.preheader4 ]
  %65 = add i64 %.21216, -1
  %66 = load i64, ptr %4, align 16
  %67 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %65
  %68 = load i64, ptr %67, align 8
  store i64 %68, ptr %4, align 16
  %69 = trunc i64 %65 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %69, i32 noundef 1)
  %70 = load i64, ptr %4, align 16
  %71 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %70
  %72 = load i64, ptr %71, align 8
  %73 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %66
  %74 = load i64, ptr %73, align 8
  %75 = add i64 %72, %74
  %76 = add i64 %.21216, 255
  %77 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %76
  store i64 %75, ptr %77, align 8
  %78 = trunc i64 %76 to i32
  %79 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %66
  store i32 %78, ptr %79, align 4
  %80 = trunc i64 %.21216 to i32
  %81 = sub i32 -255, %80
  %82 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %70
  store i32 %81, ptr %82, align 4
  store i64 %76, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %69, i32 noundef 1)
  %83 = icmp ugt i64 %65, 1
  br i1 %83, label %.preheader4, label %.preheader4._crit_edge, !llvm.loop !14

.preheader4._crit_edge:                           ; preds = %.preheader4
  %split = phi i64 [ %65, %.preheader4 ]
  br label %84

84:                                               ; preds = %.preheader4._crit_edge, %.preheader4.preheader
  %.212.lcssa = phi i64 [ %split, %.preheader4._crit_edge ], [ %.010.lcssa, %.preheader4.preheader ]
  %85 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 1024
  store i32 0, ptr %86, align 4
  br label %87

87:                                               ; preds = %84, %103
  %.03930 = phi i64 [ 0, %84 ], [ %.140, %103 ]
  %.04229 = phi i64 [ 0, %84 ], [ %104, %103 ]
  %.04528 = phi i64 [ 0, %84 ], [ %.146, %103 ]
  %88 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04229
  %89 = load i64, ptr %88, align 8
  %.not6 = icmp eq i64 %89, 0
  br i1 %.not6, label %90, label %.preheader7.preheader

.preheader7.preheader:                            ; preds = %87
  %.037.in18 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.04229
  %.03719 = load i32, ptr %.037.in18, align 4
  %.not720 = icmp eq i32 %.03719, 0
  br i1 %.not720, label %98, label %.lr.ph25

.lr.ph25:                                         ; preds = %.preheader7.preheader
  br label %.preheader7

90:                                               ; preds = %87
  %91 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04229
  store i32 0, ptr %91, align 4
  %92 = getelementptr inbounds nuw i8, ptr %7, i64 %.04229
  store i8 0, ptr %92, align 1
  br label %103

.preheader7:                                      ; preds = %.lr.ph25, %.preheader7
  %.03724 = phi i32 [ %.03719, %.lr.ph25 ], [ %.037, %.preheader7 ]
  %.323 = phi i64 [ 0, %.lr.ph25 ], [ %97, %.preheader7 ]
  %.0522 = phi i64 [ 1, %.lr.ph25 ], [ %96, %.preheader7 ]
  %.04321 = phi i64 [ 0, %.lr.ph25 ], [ %.144, %.preheader7 ]
  %93 = icmp slt i32 %.03724, 0
  %94 = select i1 %93, i64 %.0522, i64 0
  %.144 = add i64 %.04321, %94
  %.138 = call i32 @llvm.abs.i32(i32 %.03724, i1 true)
  %95 = zext nneg i32 %.138 to i64
  %96 = shl i64 %.0522, 1
  %97 = add i64 %.323, 1
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %95
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %.preheader7._crit_edge, label %.preheader7, !llvm.loop !15

.preheader7._crit_edge:                           ; preds = %.preheader7
  %split26 = phi i64 [ %.144, %.preheader7 ]
  %split27 = phi i64 [ %97, %.preheader7 ]
  br label %98

98:                                               ; preds = %.preheader7._crit_edge, %.preheader7.preheader
  %.043.lcssa = phi i64 [ %split26, %.preheader7._crit_edge ], [ 0, %.preheader7.preheader ]
  %.3.lcssa = phi i64 [ %split27, %.preheader7._crit_edge ], [ 0, %.preheader7.preheader ]
  %99 = trunc i64 %.043.lcssa to i32
  %100 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04229
  store i32 %99, ptr %100, align 4
  %101 = trunc i64 %.3.lcssa to i8
  %102 = getelementptr inbounds nuw i8, ptr %7, i64 %.04229
  store i8 %101, ptr %102, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.04528)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.03930)
  br label %103

103:                                              ; preds = %98, %90
  %.146 = phi i64 [ %spec.select, %98 ], [ %.04528, %90 ]
  %.140 = phi i64 [ %.241, %98 ], [ %.03930, %90 ]
  %104 = add nuw nsw i64 %.04229, 1
  %exitcond14.not = icmp eq i64 %104, 256
  br i1 %exitcond14.not, label %105, label %87, !llvm.loop !16

105:                                              ; preds = %103
  %.045.lcssa = phi i64 [ %.146, %103 ]
  %.039.lcssa = phi i64 [ %.140, %103 ]
  %106 = icmp ugt i64 %.039.lcssa, 32
  br i1 %106, label %107, label %110

107:                                              ; preds = %105
  %108 = call ptr @__acrt_iob_func(i32 noundef 2) #11
  %109 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %108)
  call void @exit(i32 noundef 1) #12
  unreachable

110:                                              ; preds = %105
  %111 = icmp eq i64 %.045.lcssa, 0
  br i1 %111, label %112, label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %110
  %exitcond15.not42 = icmp eq i64 0, %1
  br i1 %exitcond15.not42, label %151, label %.lr.ph48

.lr.ph48:                                         ; preds = %.preheader3.preheader
  br label %115

112:                                              ; preds = %110
  %113 = call ptr @__acrt_iob_func(i32 noundef 2) #11
  %114 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %113)
  call void @exit(i32 noundef 1) #12
  unreachable

115:                                              ; preds = %.lr.ph48, %.preheader3
  %.0147 = phi i32 [ -1, %.lr.ph48 ], [ %.1.lcssa, %.preheader3 ]
  %.1646 = phi i64 [ 0, %.lr.ph48 ], [ %150, %.preheader3 ]
  %.02445 = phi i8 [ 0, %.lr.ph48 ], [ %.125.lcssa, %.preheader3 ]
  %.02844 = phi i64 [ 0, %.lr.ph48 ], [ %.129.lcssa, %.preheader3 ]
  %.13443 = phi ptr [ %0, %.lr.ph48 ], [ %149, %.preheader3 ]
  %116 = load i8, ptr %.13443, align 1
  %117 = zext i8 %116 to i64
  %118 = getelementptr inbounds nuw i8, ptr %7, i64 %117
  %119 = load i8, ptr %118, align 1
  %120 = zext i8 %119 to i32
  %121 = add nsw i32 %120, -1
  %122 = shl nuw i32 1, %121
  %123 = sext i32 %122 to i64
  %124 = zext i8 %119 to i64
  %125 = icmp samesign ult i64 0, %124
  br i1 %125, label %.lr.ph37, label %.preheader3

.lr.ph37:                                         ; preds = %115
  br label %126

126:                                              ; preds = %.lr.ph37, %139
  %.135 = phi i32 [ %.0147, %.lr.ph37 ], [ %.2, %139 ]
  %.434 = phi i64 [ 0, %.lr.ph37 ], [ %146, %139 ]
  %.01533 = phi i64 [ %123, %.lr.ph37 ], [ %145, %139 ]
  %.12532 = phi i8 [ %.02445, %.lr.ph37 ], [ %.327, %139 ]
  %.12931 = phi i64 [ %.02844, %.lr.ph37 ], [ %.230, %139 ]
  %127 = phi i8 [ %116, %.lr.ph37 ], [ %.pre-phi.in, %139 ]
  %128 = icmp eq i32 %.135, 7
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  %130 = getelementptr inbounds nuw i8, ptr %11, i64 %.12931
  store i8 %.12532, ptr %130, align 1
  %131 = add i64 %.12931, 1
  %132 = icmp eq i64 %131, %1
  br i1 %132, label %133, label %._crit_edge

._crit_edge:                                      ; preds = %129
  %.pre1 = load i8, ptr %.13443, align 1
  br label %139

133:                                              ; preds = %129
  %134 = call ptr @__acrt_iob_func(i32 noundef 2) #11
  %135 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %134)
  call void @exit(i32 noundef 1) #12
  unreachable

136:                                              ; preds = %126
  %137 = add nsw i32 %.135, 1
  %138 = shl i8 %.12532, 1
  br label %139

139:                                              ; preds = %136, %._crit_edge
  %.pre-phi.in = phi i8 [ %.pre1, %._crit_edge ], [ %127, %136 ]
  %.230 = phi i64 [ %131, %._crit_edge ], [ %.12931, %136 ]
  %.226 = phi i8 [ 0, %._crit_edge ], [ %138, %136 ]
  %.2 = phi i32 [ 0, %._crit_edge ], [ %137, %136 ]
  %.pre-phi = zext i8 %.pre-phi.in to i64
  %140 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.pre-phi
  %141 = load i32, ptr %140, align 4
  %142 = zext i32 %141 to i64
  %143 = and i64 %.01533, %142
  %.not5 = icmp ne i64 %143, 0
  %144 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %144
  %145 = lshr i64 %.01533, 1
  %146 = add nuw nsw i64 %.434, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  %147 = zext i8 %.pre to i64
  %148 = icmp samesign ult i64 %146, %147
  br i1 %148, label %126, label %._crit_edge38, !llvm.loop !17

._crit_edge38:                                    ; preds = %139
  %split39 = phi i64 [ %.230, %139 ]
  %split40 = phi i8 [ %.327, %139 ]
  %split41 = phi i32 [ %.2, %139 ]
  br label %.preheader3

.preheader3:                                      ; preds = %._crit_edge38, %115
  %.129.lcssa = phi i64 [ %split39, %._crit_edge38 ], [ %.02844, %115 ]
  %.125.lcssa = phi i8 [ %split40, %._crit_edge38 ], [ %.02445, %115 ]
  %.1.lcssa = phi i32 [ %split41, %._crit_edge38 ], [ %.0147, %115 ]
  %149 = getelementptr inbounds nuw i8, ptr %.13443, i64 1
  %150 = add i64 %.1646, 1
  %exitcond15.not = icmp eq i64 %150, %1
  br i1 %exitcond15.not, label %.preheader3._crit_edge, label %115, !llvm.loop !18

.preheader3._crit_edge:                           ; preds = %.preheader3
  %split49 = phi i64 [ %.129.lcssa, %.preheader3 ]
  %split50 = phi i8 [ %.125.lcssa, %.preheader3 ]
  %split51 = phi i32 [ %.1.lcssa, %.preheader3 ]
  br label %151

151:                                              ; preds = %.preheader3._crit_edge, %.preheader3.preheader
  %.028.lcssa = phi i64 [ %split49, %.preheader3._crit_edge ], [ 0, %.preheader3.preheader ]
  %.024.lcssa = phi i8 [ %split50, %.preheader3._crit_edge ], [ 0, %.preheader3.preheader ]
  %.01.lcssa = phi i32 [ %split51, %.preheader3._crit_edge ], [ -1, %.preheader3.preheader ]
  %152 = sub nsw i32 7, %.01.lcssa
  %153 = zext i8 %.024.lcssa to i32
  %154 = shl i32 %153, %152
  %155 = trunc i32 %154 to i8
  %156 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %155, ptr %156, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %157

.preheader2.preheader:                            ; preds = %194
  br label %196

157:                                              ; preds = %151, %194
  %.061 = phi ptr [ %9, %151 ], [ %159, %194 ]
  %.2760 = phi i64 [ 0, %151 ], [ %195, %194 ]
  %158 = trunc nuw i64 %.2760 to i8
  store i8 %158, ptr %.061, align 1
  %159 = getelementptr inbounds nuw i8, ptr %.061, i64 1
  %160 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.2760
  %161 = load i32, ptr %160, align 4
  %162 = getelementptr inbounds nuw i8, ptr %7, i64 %.2760
  %163 = load i8, ptr %162, align 1
  %164 = zext i8 %163 to i32
  %165 = or i32 %161, %164
  %.not3 = icmp eq i32 %165, 0
  br i1 %.not3, label %194, label %166

166:                                              ; preds = %157
  %167 = add nsw i32 %164, -1
  %168 = shl nuw i32 1, %167
  %169 = sext i32 %168 to i64
  %170 = zext i8 %163 to i64
  %exitcond16.not52 = icmp eq i64 0, %170
  br i1 %exitcond16.not52, label %192, label %.lr.ph57

.lr.ph57:                                         ; preds = %166
  %171 = add nsw i64 %170, -1
  %xtraiter73 = and i64 %170, 1
  %172 = icmp ult i64 %171, 1
  br i1 %172, label %.epil.preheader72, label %.lr.ph57.new

.lr.ph57.new:                                     ; preds = %.lr.ph57
  %unroll_iter78 = sub i64 %170, %xtraiter73
  br label %173

173:                                              ; preds = %173, %.lr.ph57.new
  %.555 = phi i64 [ 0, %.lr.ph57.new ], [ %186, %173 ]
  %.11654 = phi i64 [ %169, %.lr.ph57.new ], [ %185, %173 ]
  %.01953 = phi i32 [ 0, %.lr.ph57.new ], [ %spec.select1.1, %173 ]
  %niter79 = phi i64 [ 0, %.lr.ph57.new ], [ %niter79.next.1, %173 ]
  %174 = shl i32 %.01953, 1
  %175 = or disjoint i32 %174, 1
  %176 = zext i32 %161 to i64
  %177 = and i64 %.11654, %176
  %.not4 = icmp eq i64 %177, 0
  %178 = add i32 %174, 2
  %spec.select1 = select i1 %.not4, i32 %175, i32 %178
  %179 = lshr i64 %.11654, 1
  %180 = shl i32 %spec.select1, 1
  %181 = or disjoint i32 %180, 1
  %182 = zext i32 %161 to i64
  %183 = and i64 %179, %182
  %.not4.1 = icmp eq i64 %183, 0
  %184 = add i32 %180, 2
  %spec.select1.1 = select i1 %.not4.1, i32 %181, i32 %184
  %185 = lshr i64 %179, 1
  %186 = add nuw nsw i64 %.555, 2
  %niter79.next.1 = add i64 %niter79, 2
  %niter79.ncmp.1 = icmp eq i64 %niter79.next.1, %unroll_iter78
  br i1 %niter79.ncmp.1, label %._crit_edge58.unr-lcssa, label %173, !llvm.loop !19

._crit_edge58.unr-lcssa:                          ; preds = %173
  %split59.ph = phi i32 [ %spec.select1.1, %173 ]
  %.11654.unr = phi i64 [ %185, %173 ]
  %.01953.unr = phi i32 [ %spec.select1.1, %173 ]
  %lcmp.mod75 = icmp ne i64 %xtraiter73, 0
  br i1 %lcmp.mod75, label %.epil.preheader72, label %._crit_edge58

.epil.preheader72:                                ; preds = %._crit_edge58.unr-lcssa, %.lr.ph57
  %.11654.epil.init = phi i64 [ %169, %.lr.ph57 ], [ %.11654.unr, %._crit_edge58.unr-lcssa ]
  %.01953.epil.init = phi i32 [ 0, %.lr.ph57 ], [ %.01953.unr, %._crit_edge58.unr-lcssa ]
  %lcmp.mod77 = icmp ne i64 %xtraiter73, 0
  call void @llvm.assume(i1 %lcmp.mod77)
  br label %._crit_edge58.epilog-lcssa

._crit_edge58.epilog-lcssa:                       ; preds = %.epil.preheader72
  %187 = shl i32 %.01953.epil.init, 1
  %188 = or disjoint i32 %187, 1
  %189 = zext i32 %161 to i64
  %190 = and i64 %.11654.epil.init, %189
  %.not4.epil = icmp eq i64 %190, 0
  %191 = add i32 %187, 2
  %spec.select1.epil = select i1 %.not4.epil, i32 %188, i32 %191
  br label %._crit_edge58

._crit_edge58:                                    ; preds = %._crit_edge58.unr-lcssa, %._crit_edge58.epilog-lcssa
  %split59 = phi i32 [ %split59.ph, %._crit_edge58.unr-lcssa ], [ %spec.select1.epil, %._crit_edge58.epilog-lcssa ]
  br label %192

192:                                              ; preds = %._crit_edge58, %166
  %.019.lcssa = phi i32 [ %split59, %._crit_edge58 ], [ 0, %166 ]
  %193 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.2760
  store i32 %.019.lcssa, ptr %193, align 4
  br label %194

194:                                              ; preds = %192, %157
  %195 = add nuw nsw i64 %.2760, 1
  %exitcond17.not = icmp eq i64 %195, 256
  br i1 %exitcond17.not, label %.preheader2.preheader, label %157, !llvm.loop !20

.preheader1.preheader:                            ; preds = %.critedge
  br label %.preheader1

196:                                              ; preds = %.preheader2.preheader, %.critedge
  %.663 = phi i64 [ 1, %.preheader2.preheader ], [ %213, %.critedge ]
  %197 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.663
  %198 = load i32, ptr %197, align 4
  %199 = getelementptr inbounds nuw i8, ptr %9, i64 %.663
  %200 = load i8, ptr %199, align 1
  br label %201

201:                                              ; preds = %196, %206
  %.3862 = phi i64 [ %.663, %196 ], [ %202, %206 ]
  %202 = add nsw i64 %.3862, -1
  %203 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %202
  %204 = load i32, ptr %203, align 4
  %205 = icmp ugt i32 %204, %198
  br i1 %205, label %206, label %.critedge

206:                                              ; preds = %201
  %207 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.3862
  store i32 %204, ptr %207, align 4
  %208 = getelementptr inbounds nuw i8, ptr %9, i64 %202
  %209 = load i8, ptr %208, align 1
  %210 = getelementptr inbounds nuw i8, ptr %9, i64 %.3862
  store i8 %209, ptr %210, align 1
  %.not2 = icmp eq i64 %202, 0
  br i1 %.not2, label %.critedge, label %201, !llvm.loop !21

.critedge:                                        ; preds = %201, %206
  %.38.lcssa = phi i64 [ %.3862, %201 ], [ 0, %206 ]
  %211 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %198, ptr %211, align 4
  %212 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %200, ptr %212, align 1
  %213 = add nuw nsw i64 %.663, 1
  %exitcond18.not = icmp eq i64 %213, 256
  br i1 %exitcond18.not, label %.preheader1.preheader, label %196, !llvm.loop !22

.preheader1:                                      ; preds = %.preheader1, %.preheader1.preheader
  %.49 = phi i64 [ %217, %.preheader1 ], [ 0, %.preheader1.preheader ]
  %214 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %215 = load i32, ptr %214, align 4
  %216 = icmp eq i32 %215, 0
  %217 = add i64 %.49, 1
  br i1 %216, label %.preheader1, label %.preheader.preheader, !llvm.loop !23

.preheader.preheader:                             ; preds = %.preheader1
  %.49.lcssa = phi i64 [ %.49, %.preheader1 ]
  %218 = icmp ult i64 0, %1
  br i1 %218, label %.lr.ph70, label %241

.lr.ph70:                                         ; preds = %.preheader.preheader
  br label %219

219:                                              ; preds = %.lr.ph70, %.preheader
  %.769 = phi i64 [ %.49.lcssa, %.lr.ph70 ], [ %.9, %.preheader ]
  %.31368 = phi i64 [ 0, %.lr.ph70 ], [ %.414, %.preheader ]
  %.21767 = phi i64 [ 128, %.lr.ph70 ], [ %.318, %.preheader ]
  %.22166 = phi i32 [ 0, %.lr.ph70 ], [ %.423, %.preheader ]
  %.03165 = phi ptr [ %11, %.lr.ph70 ], [ %.132, %.preheader ]
  %.23564 = phi ptr [ %0, %.lr.ph70 ], [ %.336, %.preheader ]
  %220 = shl i32 %.22166, 1
  %221 = or disjoint i32 %220, 1
  %222 = load i8, ptr %.03165, align 1
  %223 = zext i8 %222 to i64
  %224 = and i64 %.21767, %223
  %.not1 = icmp eq i64 %224, 0
  %225 = add i32 %220, 2
  %spec.select2 = select i1 %.not1, i32 %221, i32 %225
  br label %226

226:                                              ; preds = %226, %219
  %.8 = phi i64 [ %.769, %219 ], [ %230, %226 ]
  %227 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %228 = load i32, ptr %227, align 4
  %229 = icmp ult i32 %228, %spec.select2
  %230 = add i64 %.8, 1
  br i1 %229, label %226, label %231, !llvm.loop !24

231:                                              ; preds = %226
  %.8.lcssa = phi i64 [ %.8, %226 ]
  %.lcssa = phi i32 [ %228, %226 ]
  %232 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %232, label %233, label %.preheader

233:                                              ; preds = %231
  %234 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %235 = load i8, ptr %234, align 1
  store i8 %235, ptr %.23564, align 1
  %236 = getelementptr inbounds nuw i8, ptr %.23564, i64 1
  %237 = add nuw i64 %.31368, 1
  br label %.preheader

.preheader:                                       ; preds = %233, %231
  %.336 = phi ptr [ %236, %233 ], [ %.23564, %231 ]
  %.423 = phi i32 [ 0, %233 ], [ %spec.select2, %231 ]
  %.414 = phi i64 [ %237, %233 ], [ %.31368, %231 ]
  %.9 = phi i64 [ %.49.lcssa, %233 ], [ %.8.lcssa, %231 ]
  %238 = icmp ult i64 %.21767, 2
  %239 = lshr i64 %.21767, 1
  %.132.idx = zext i1 %238 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.03165, i64 %.132.idx
  %.318 = select i1 %238, i64 128, i64 %239
  %240 = icmp ult i64 %.414, %1
  br i1 %240, label %219, label %.preheader._crit_edge, !llvm.loop !25

.preheader._crit_edge:                            ; preds = %.preheader
  br label %241

241:                                              ; preds = %.preheader._crit_edge, %.preheader.preheader
  call void @free(ptr noundef %11) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal void @heap_adjust(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = sext i32 %3 to i64
  %6 = getelementptr [8 x i8], ptr %1, i64 %5
  %7 = getelementptr i8, ptr %6, i64 -8
  %8 = load i64, ptr %7, align 8
  %9 = shl i64 %8, 32
  %10 = sdiv i32 %2, 2
  %.not1 = icmp sgt i32 %3, %10
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %4
  br label %11

11:                                               ; preds = %.lr.ph, %37
  %.012 = phi i32 [ %3, %.lr.ph ], [ %.0, %37 ]
  %12 = shl nsw i32 %.012, 1
  %13 = icmp slt i32 %12, %2
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = sext i32 %12 to i64
  %16 = getelementptr [8 x i8], ptr %1, i64 %15
  %17 = getelementptr i8, ptr %16, i64 -8
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %18
  %20 = load i64, ptr %19, align 8
  %21 = load i64, ptr %16, align 8
  %22 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %21
  %23 = load i64, ptr %22, align 8
  %24 = icmp ugt i64 %20, %23
  %25 = zext i1 %24 to i32
  %spec.select = or disjoint i32 %12, %25
  br label %26

26:                                               ; preds = %14, %11
  %.0 = phi i32 [ %12, %11 ], [ %spec.select, %14 ]
  %27 = ashr exact i64 %9, 29
  %28 = getelementptr inbounds i8, ptr %0, i64 %27
  %29 = load i64, ptr %28, align 8
  %30 = sext i32 %.0 to i64
  %31 = getelementptr [8 x i8], ptr %1, i64 %30
  %32 = getelementptr i8, ptr %31, i64 -8
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %33
  %35 = load i64, ptr %34, align 8
  %36 = icmp ult i64 %29, %35
  br i1 %36, label %.._crit_edge_crit_edge, label %37

37:                                               ; preds = %26
  %38 = sext i32 %.012 to i64
  %39 = getelementptr [8 x i8], ptr %1, i64 %38
  %40 = getelementptr i8, ptr %39, i64 -8
  store i64 %33, ptr %40, align 8
  %.not = icmp sgt i32 %.0, %10
  br i1 %.not, label %.._crit_edge_crit_edge4, label %11, !llvm.loop !26

.._crit_edge_crit_edge:                           ; preds = %26
  %split = phi i32 [ %.012, %26 ]
  br label %._crit_edge

.._crit_edge_crit_edge4:                          ; preds = %37
  %split5 = phi i32 [ %.0, %37 ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge4, %.._crit_edge_crit_edge, %4
  %.01.lcssa = phi i32 [ %split, %.._crit_edge_crit_edge ], [ %split5, %.._crit_edge_crit_edge4 ], [ %3, %4 ]
  %41 = ashr exact i64 %9, 32
  %42 = sext i32 %.01.lcssa to i64
  %43 = getelementptr [8 x i8], ptr %1, i64 %42
  %44 = getelementptr i8, ptr %43, i64 -8
  store i64 %41, ptr %44, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @fprintf(ptr noundef, ptr noundef, ...) #3

declare dllimport ptr @__acrt_iob_func(i32 noundef) #4

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #5

declare dso_local void @free(ptr noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %2
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %6

5:                                                ; preds = %6
  %.01 = phi i32 [ %9, %6 ]
  %exitcond.not = icmp eq i32 %.01, %0
  br i1 %exitcond.not, label %.loopexit.loopexit, label %6, !llvm.loop !27

6:                                                ; preds = %.preheader, %5
  %exitcond.not2 = phi i1 [ false, %.preheader ], [ %exitcond.not, %5 ]
  %.011 = phi i32 [ 1, %.preheader ], [ %.01, %5 ]
  %7 = load ptr, ptr %4, align 8
  %8 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(4) @.str.4) #11
  %.not = icmp eq i32 %8, 0
  %9 = add nuw i32 %.011, 1
  br i1 %.not, label %.loopexit.loopexit, label %5

.loopexit.loopexit:                               ; preds = %5, %6
  %exitcond.not.lcssa = phi i1 [ %exitcond.not, %5 ], [ %exitcond.not2, %6 ]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %2
  %.not1 = phi i1 [ true, %2 ], [ %exitcond.not.lcssa, %.loopexit.loopexit ]
  %10 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %11

11:                                               ; preds = %.loopexit
  call void @compdecomp(ptr noundef %10, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %10, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %10, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %10, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %10, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %10, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %10, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %10, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %10, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %10, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %10, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %10, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %10, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %10, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %10, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %10, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %10, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %10, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %10, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %10, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %10, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %10, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %10, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %10, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %10, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %10, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %10, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %10, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %10, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %10, i64 noundef 10000000)
  call void @free(ptr noundef %10) #11
  br i1 %.not1, label %15, label %12

12:                                               ; preds = %11
  %13 = call ptr @__acrt_iob_func(i32 noundef 1) #11
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.5, double noundef 0.000000e+00) #11
  br label %18

15:                                               ; preds = %11
  %16 = call ptr @__acrt_iob_func(i32 noundef 1) #11
  %17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.6, double noundef 0.000000e+00) #11
  br label %18

18:                                               ; preds = %15, %12
  %19 = call ptr @__acrt_iob_func(i32 noundef 1) #11
  %20 = call i32 @fflush(ptr noundef %19) #11
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

declare dso_local i32 @fflush(ptr noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal i64 @random4() #0 {
  %1 = load i32, ptr @seed, align 4
  %2 = xor i32 %1, 123459876
  %3 = sdiv i32 %2, 127773
  %.neg = mul i32 %3, -127773
  %4 = add i32 %.neg, %2
  %5 = mul nsw i32 %4, 16807
  %.neg1 = mul nsw i32 %3, -2836
  %6 = add i32 %.neg1, %5
  %7 = icmp slt i32 %6, 0
  %8 = add nsw i32 %6, 2147483647
  %spec.select = select i1 %7, i32 %8, i32 %6
  %9 = srem i32 %spec.select, 32
  %10 = sext i32 %9 to i64
  %11 = xor i32 %spec.select, 123459876
  store i32 %11, ptr @seed, align 4
  ret i64 %10
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind }
attributes #12 = { cold noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/CoyoteBench/huffbench.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !8}
!25 = distinct !{!25, !8}
!26 = distinct !{!26, !8}
!27 = distinct !{!27, !8}
