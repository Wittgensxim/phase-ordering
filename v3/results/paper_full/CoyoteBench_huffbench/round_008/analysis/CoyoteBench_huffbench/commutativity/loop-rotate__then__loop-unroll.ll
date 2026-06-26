; ModuleID = 'results\paper_full\CoyoteBench_huffbench\round_007\output.ll'
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
  %lcmp.mod72 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod72)
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

87:                                               ; preds = %84, %104
  %.03931 = phi i64 [ 0, %84 ], [ %.140, %104 ]
  %.04230 = phi i64 [ 0, %84 ], [ %105, %104 ]
  %.04529 = phi i64 [ 0, %84 ], [ %.146, %104 ]
  %88 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04230
  %89 = load i64, ptr %88, align 8
  %.not6 = icmp eq i64 %89, 0
  br i1 %.not6, label %90, label %.preheader7

.preheader7:                                      ; preds = %87
  %.037.in18 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.04230
  %.03719 = load i32, ptr %.037.in18, align 4
  %.not720 = icmp eq i32 %.03719, 0
  br i1 %.not720, label %99, label %.lr.ph25

.lr.ph25:                                         ; preds = %.preheader7
  br label %93

90:                                               ; preds = %87
  %91 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04230
  store i32 0, ptr %91, align 4
  %92 = getelementptr inbounds nuw i8, ptr %7, i64 %.04230
  store i8 0, ptr %92, align 1
  br label %104

93:                                               ; preds = %.lr.ph25, %93
  %.03724 = phi i32 [ %.03719, %.lr.ph25 ], [ %.037, %93 ]
  %.323 = phi i64 [ 0, %.lr.ph25 ], [ %98, %93 ]
  %.0522 = phi i64 [ 1, %.lr.ph25 ], [ %97, %93 ]
  %.04321 = phi i64 [ 0, %.lr.ph25 ], [ %.144, %93 ]
  %94 = icmp slt i32 %.03724, 0
  %95 = select i1 %94, i64 %.0522, i64 0
  %.144 = add i64 %.04321, %95
  %.138 = call i32 @llvm.abs.i32(i32 %.03724, i1 true)
  %96 = zext nneg i32 %.138 to i64
  %97 = shl i64 %.0522, 1
  %98 = add i64 %.323, 1
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %96
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %._crit_edge26, label %93, !llvm.loop !15

._crit_edge26:                                    ; preds = %93
  %split27 = phi i64 [ %.144, %93 ]
  %split28 = phi i64 [ %98, %93 ]
  br label %99

99:                                               ; preds = %._crit_edge26, %.preheader7
  %.043.lcssa = phi i64 [ %split27, %._crit_edge26 ], [ 0, %.preheader7 ]
  %.3.lcssa = phi i64 [ %split28, %._crit_edge26 ], [ 0, %.preheader7 ]
  %100 = trunc i64 %.043.lcssa to i32
  %101 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04230
  store i32 %100, ptr %101, align 4
  %102 = trunc i64 %.3.lcssa to i8
  %103 = getelementptr inbounds nuw i8, ptr %7, i64 %.04230
  store i8 %102, ptr %103, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.04529)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.03931)
  br label %104

104:                                              ; preds = %99, %90
  %.146 = phi i64 [ %spec.select, %99 ], [ %.04529, %90 ]
  %.140 = phi i64 [ %.241, %99 ], [ %.03931, %90 ]
  %105 = add nuw nsw i64 %.04230, 1
  %exitcond14.not = icmp eq i64 %105, 256
  br i1 %exitcond14.not, label %106, label %87, !llvm.loop !16

106:                                              ; preds = %104
  %.045.lcssa = phi i64 [ %.146, %104 ]
  %.039.lcssa = phi i64 [ %.140, %104 ]
  %107 = icmp ugt i64 %.039.lcssa, 32
  br i1 %107, label %108, label %111

108:                                              ; preds = %106
  %109 = call ptr @__acrt_iob_func(i32 noundef 2) #11
  %110 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %109)
  call void @exit(i32 noundef 1) #12
  unreachable

111:                                              ; preds = %106
  %112 = icmp eq i64 %.045.lcssa, 0
  br i1 %112, label %113, label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %111
  %exitcond15.not43 = icmp eq i64 0, %1
  br i1 %exitcond15.not43, label %152, label %.lr.ph49

.lr.ph49:                                         ; preds = %.preheader3.preheader
  br label %116

113:                                              ; preds = %111
  %114 = call ptr @__acrt_iob_func(i32 noundef 2) #11
  %115 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %114)
  call void @exit(i32 noundef 1) #12
  unreachable

116:                                              ; preds = %.lr.ph49, %.preheader3
  %.0148 = phi i32 [ -1, %.lr.ph49 ], [ %.1.lcssa, %.preheader3 ]
  %.1647 = phi i64 [ 0, %.lr.ph49 ], [ %151, %.preheader3 ]
  %.02446 = phi i8 [ 0, %.lr.ph49 ], [ %.125.lcssa, %.preheader3 ]
  %.02845 = phi i64 [ 0, %.lr.ph49 ], [ %.129.lcssa, %.preheader3 ]
  %.13444 = phi ptr [ %0, %.lr.ph49 ], [ %150, %.preheader3 ]
  %117 = load i8, ptr %.13444, align 1
  %118 = zext i8 %117 to i64
  %119 = getelementptr inbounds nuw i8, ptr %7, i64 %118
  %120 = load i8, ptr %119, align 1
  %121 = zext i8 %120 to i32
  %122 = add nsw i32 %121, -1
  %123 = shl nuw i32 1, %122
  %124 = sext i32 %123 to i64
  %125 = zext i8 %120 to i64
  %126 = icmp samesign ult i64 0, %125
  br i1 %126, label %.lr.ph38, label %.preheader3

.lr.ph38:                                         ; preds = %116
  br label %127

127:                                              ; preds = %.lr.ph38, %140
  %.136 = phi i32 [ %.0148, %.lr.ph38 ], [ %.2, %140 ]
  %.435 = phi i64 [ 0, %.lr.ph38 ], [ %147, %140 ]
  %.01534 = phi i64 [ %124, %.lr.ph38 ], [ %146, %140 ]
  %.12533 = phi i8 [ %.02446, %.lr.ph38 ], [ %.327, %140 ]
  %.12932 = phi i64 [ %.02845, %.lr.ph38 ], [ %.230, %140 ]
  %128 = phi i8 [ %117, %.lr.ph38 ], [ %.pre-phi.in, %140 ]
  %129 = icmp eq i32 %.136, 7
  br i1 %129, label %130, label %137

130:                                              ; preds = %127
  %131 = getelementptr inbounds nuw i8, ptr %11, i64 %.12932
  store i8 %.12533, ptr %131, align 1
  %132 = add i64 %.12932, 1
  %133 = icmp eq i64 %132, %1
  br i1 %133, label %134, label %._crit_edge

._crit_edge:                                      ; preds = %130
  %.pre1 = load i8, ptr %.13444, align 1
  br label %140

134:                                              ; preds = %130
  %135 = call ptr @__acrt_iob_func(i32 noundef 2) #11
  %136 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %135)
  call void @exit(i32 noundef 1) #12
  unreachable

137:                                              ; preds = %127
  %138 = add nsw i32 %.136, 1
  %139 = shl i8 %.12533, 1
  br label %140

140:                                              ; preds = %137, %._crit_edge
  %.pre-phi.in = phi i8 [ %.pre1, %._crit_edge ], [ %128, %137 ]
  %.230 = phi i64 [ %132, %._crit_edge ], [ %.12932, %137 ]
  %.226 = phi i8 [ 0, %._crit_edge ], [ %139, %137 ]
  %.2 = phi i32 [ 0, %._crit_edge ], [ %138, %137 ]
  %.pre-phi = zext i8 %.pre-phi.in to i64
  %141 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.pre-phi
  %142 = load i32, ptr %141, align 4
  %143 = zext i32 %142 to i64
  %144 = and i64 %.01534, %143
  %.not5 = icmp ne i64 %144, 0
  %145 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %145
  %146 = lshr i64 %.01534, 1
  %147 = add nuw nsw i64 %.435, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  %148 = zext i8 %.pre to i64
  %149 = icmp samesign ult i64 %147, %148
  br i1 %149, label %127, label %._crit_edge39, !llvm.loop !17

._crit_edge39:                                    ; preds = %140
  %split40 = phi i64 [ %.230, %140 ]
  %split41 = phi i8 [ %.327, %140 ]
  %split42 = phi i32 [ %.2, %140 ]
  br label %.preheader3

.preheader3:                                      ; preds = %._crit_edge39, %116
  %.129.lcssa = phi i64 [ %split40, %._crit_edge39 ], [ %.02845, %116 ]
  %.125.lcssa = phi i8 [ %split41, %._crit_edge39 ], [ %.02446, %116 ]
  %.1.lcssa = phi i32 [ %split42, %._crit_edge39 ], [ %.0148, %116 ]
  %150 = getelementptr inbounds nuw i8, ptr %.13444, i64 1
  %151 = add i64 %.1647, 1
  %exitcond15.not = icmp eq i64 %151, %1
  br i1 %exitcond15.not, label %.preheader3._crit_edge, label %116, !llvm.loop !18

.preheader3._crit_edge:                           ; preds = %.preheader3
  %split50 = phi i64 [ %.129.lcssa, %.preheader3 ]
  %split51 = phi i8 [ %.125.lcssa, %.preheader3 ]
  %split52 = phi i32 [ %.1.lcssa, %.preheader3 ]
  br label %152

152:                                              ; preds = %.preheader3._crit_edge, %.preheader3.preheader
  %.028.lcssa = phi i64 [ %split50, %.preheader3._crit_edge ], [ 0, %.preheader3.preheader ]
  %.024.lcssa = phi i8 [ %split51, %.preheader3._crit_edge ], [ 0, %.preheader3.preheader ]
  %.01.lcssa = phi i32 [ %split52, %.preheader3._crit_edge ], [ -1, %.preheader3.preheader ]
  %153 = sub nsw i32 7, %.01.lcssa
  %154 = zext i8 %.024.lcssa to i32
  %155 = shl i32 %154, %153
  %156 = trunc i32 %155 to i8
  %157 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %156, ptr %157, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %158

.preheader2.preheader:                            ; preds = %195
  br label %197

158:                                              ; preds = %152, %195
  %.062 = phi ptr [ %9, %152 ], [ %160, %195 ]
  %.2761 = phi i64 [ 0, %152 ], [ %196, %195 ]
  %159 = trunc nuw i64 %.2761 to i8
  store i8 %159, ptr %.062, align 1
  %160 = getelementptr inbounds nuw i8, ptr %.062, i64 1
  %161 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.2761
  %162 = load i32, ptr %161, align 4
  %163 = getelementptr inbounds nuw i8, ptr %7, i64 %.2761
  %164 = load i8, ptr %163, align 1
  %165 = zext i8 %164 to i32
  %166 = or i32 %162, %165
  %.not3 = icmp eq i32 %166, 0
  br i1 %.not3, label %195, label %167

167:                                              ; preds = %158
  %168 = add nsw i32 %165, -1
  %169 = shl nuw i32 1, %168
  %170 = sext i32 %169 to i64
  %171 = zext i8 %164 to i64
  %exitcond16.not53 = icmp eq i64 0, %171
  br i1 %exitcond16.not53, label %193, label %.lr.ph58

.lr.ph58:                                         ; preds = %167
  %172 = add nsw i64 %171, -1
  %xtraiter74 = and i64 %171, 1
  %173 = icmp ult i64 %172, 1
  br i1 %173, label %.epil.preheader73, label %.lr.ph58.new

.lr.ph58.new:                                     ; preds = %.lr.ph58
  %unroll_iter79 = sub i64 %171, %xtraiter74
  br label %174

174:                                              ; preds = %174, %.lr.ph58.new
  %.556 = phi i64 [ 0, %.lr.ph58.new ], [ %187, %174 ]
  %.11655 = phi i64 [ %170, %.lr.ph58.new ], [ %186, %174 ]
  %.01954 = phi i32 [ 0, %.lr.ph58.new ], [ %spec.select1.1, %174 ]
  %niter80 = phi i64 [ 0, %.lr.ph58.new ], [ %niter80.next.1, %174 ]
  %175 = shl i32 %.01954, 1
  %176 = or disjoint i32 %175, 1
  %177 = zext i32 %162 to i64
  %178 = and i64 %.11655, %177
  %.not4 = icmp eq i64 %178, 0
  %179 = add i32 %175, 2
  %spec.select1 = select i1 %.not4, i32 %176, i32 %179
  %180 = lshr i64 %.11655, 1
  %181 = shl i32 %spec.select1, 1
  %182 = or disjoint i32 %181, 1
  %183 = zext i32 %162 to i64
  %184 = and i64 %180, %183
  %.not4.1 = icmp eq i64 %184, 0
  %185 = add i32 %181, 2
  %spec.select1.1 = select i1 %.not4.1, i32 %182, i32 %185
  %186 = lshr i64 %180, 1
  %187 = add nuw nsw i64 %.556, 2
  %niter80.next.1 = add i64 %niter80, 2
  %niter80.ncmp.1 = icmp eq i64 %niter80.next.1, %unroll_iter79
  br i1 %niter80.ncmp.1, label %._crit_edge59.unr-lcssa, label %174, !llvm.loop !19

._crit_edge59.unr-lcssa:                          ; preds = %174
  %split60.ph = phi i32 [ %spec.select1.1, %174 ]
  %.11655.unr = phi i64 [ %186, %174 ]
  %.01954.unr = phi i32 [ %spec.select1.1, %174 ]
  %lcmp.mod76 = icmp ne i64 %xtraiter74, 0
  br i1 %lcmp.mod76, label %.epil.preheader73, label %._crit_edge59

.epil.preheader73:                                ; preds = %._crit_edge59.unr-lcssa, %.lr.ph58
  %.11655.epil.init = phi i64 [ %170, %.lr.ph58 ], [ %.11655.unr, %._crit_edge59.unr-lcssa ]
  %.01954.epil.init = phi i32 [ 0, %.lr.ph58 ], [ %.01954.unr, %._crit_edge59.unr-lcssa ]
  %lcmp.mod78 = icmp ne i64 %xtraiter74, 0
  call void @llvm.assume(i1 %lcmp.mod78)
  br label %._crit_edge59.epilog-lcssa

._crit_edge59.epilog-lcssa:                       ; preds = %.epil.preheader73
  %188 = shl i32 %.01954.epil.init, 1
  %189 = or disjoint i32 %188, 1
  %190 = zext i32 %162 to i64
  %191 = and i64 %.11655.epil.init, %190
  %.not4.epil = icmp eq i64 %191, 0
  %192 = add i32 %188, 2
  %spec.select1.epil = select i1 %.not4.epil, i32 %189, i32 %192
  br label %._crit_edge59

._crit_edge59:                                    ; preds = %._crit_edge59.unr-lcssa, %._crit_edge59.epilog-lcssa
  %split60 = phi i32 [ %split60.ph, %._crit_edge59.unr-lcssa ], [ %spec.select1.epil, %._crit_edge59.epilog-lcssa ]
  br label %193

193:                                              ; preds = %._crit_edge59, %167
  %.019.lcssa = phi i32 [ %split60, %._crit_edge59 ], [ 0, %167 ]
  %194 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.2761
  store i32 %.019.lcssa, ptr %194, align 4
  br label %195

195:                                              ; preds = %193, %158
  %196 = add nuw nsw i64 %.2761, 1
  %exitcond17.not = icmp eq i64 %196, 256
  br i1 %exitcond17.not, label %.preheader2.preheader, label %158, !llvm.loop !20

.preheader1.preheader:                            ; preds = %.critedge
  br label %.preheader1

197:                                              ; preds = %.preheader2.preheader, %.critedge
  %.664 = phi i64 [ 1, %.preheader2.preheader ], [ %214, %.critedge ]
  %198 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.664
  %199 = load i32, ptr %198, align 4
  %200 = getelementptr inbounds nuw i8, ptr %9, i64 %.664
  %201 = load i8, ptr %200, align 1
  br label %202

202:                                              ; preds = %197, %207
  %.3863 = phi i64 [ %.664, %197 ], [ %203, %207 ]
  %203 = add nsw i64 %.3863, -1
  %204 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %203
  %205 = load i32, ptr %204, align 4
  %206 = icmp ugt i32 %205, %199
  br i1 %206, label %207, label %.critedge

207:                                              ; preds = %202
  %208 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.3863
  store i32 %205, ptr %208, align 4
  %209 = getelementptr inbounds nuw i8, ptr %9, i64 %203
  %210 = load i8, ptr %209, align 1
  %211 = getelementptr inbounds nuw i8, ptr %9, i64 %.3863
  store i8 %210, ptr %211, align 1
  %.not2 = icmp eq i64 %203, 0
  br i1 %.not2, label %.critedge, label %202, !llvm.loop !21

.critedge:                                        ; preds = %202, %207
  %.38.lcssa = phi i64 [ %.3863, %202 ], [ 0, %207 ]
  %212 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %199, ptr %212, align 4
  %213 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %201, ptr %213, align 1
  %214 = add nuw nsw i64 %.664, 1
  %exitcond18.not = icmp eq i64 %214, 256
  br i1 %exitcond18.not, label %.preheader1.preheader, label %197, !llvm.loop !22

.preheader1:                                      ; preds = %.preheader1, %.preheader1.preheader
  %.49 = phi i64 [ %218, %.preheader1 ], [ 0, %.preheader1.preheader ]
  %215 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %216 = load i32, ptr %215, align 4
  %217 = icmp eq i32 %216, 0
  %218 = add i64 %.49, 1
  br i1 %217, label %.preheader1, label %.preheader.preheader, !llvm.loop !23

.preheader.preheader:                             ; preds = %.preheader1
  %.49.lcssa = phi i64 [ %.49, %.preheader1 ]
  %219 = icmp ult i64 0, %1
  br i1 %219, label %.lr.ph71, label %242

.lr.ph71:                                         ; preds = %.preheader.preheader
  br label %220

220:                                              ; preds = %.lr.ph71, %.preheader
  %.770 = phi i64 [ %.49.lcssa, %.lr.ph71 ], [ %.9, %.preheader ]
  %.31369 = phi i64 [ 0, %.lr.ph71 ], [ %.414, %.preheader ]
  %.21768 = phi i64 [ 128, %.lr.ph71 ], [ %.318, %.preheader ]
  %.22167 = phi i32 [ 0, %.lr.ph71 ], [ %.423, %.preheader ]
  %.03166 = phi ptr [ %11, %.lr.ph71 ], [ %.132, %.preheader ]
  %.23565 = phi ptr [ %0, %.lr.ph71 ], [ %.336, %.preheader ]
  %221 = shl i32 %.22167, 1
  %222 = or disjoint i32 %221, 1
  %223 = load i8, ptr %.03166, align 1
  %224 = zext i8 %223 to i64
  %225 = and i64 %.21768, %224
  %.not1 = icmp eq i64 %225, 0
  %226 = add i32 %221, 2
  %spec.select2 = select i1 %.not1, i32 %222, i32 %226
  br label %227

227:                                              ; preds = %227, %220
  %.8 = phi i64 [ %.770, %220 ], [ %231, %227 ]
  %228 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %229 = load i32, ptr %228, align 4
  %230 = icmp ult i32 %229, %spec.select2
  %231 = add i64 %.8, 1
  br i1 %230, label %227, label %232, !llvm.loop !24

232:                                              ; preds = %227
  %.8.lcssa = phi i64 [ %.8, %227 ]
  %.lcssa = phi i32 [ %229, %227 ]
  %233 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %233, label %234, label %.preheader

234:                                              ; preds = %232
  %235 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %236 = load i8, ptr %235, align 1
  store i8 %236, ptr %.23565, align 1
  %237 = getelementptr inbounds nuw i8, ptr %.23565, i64 1
  %238 = add nuw i64 %.31369, 1
  br label %.preheader

.preheader:                                       ; preds = %234, %232
  %.336 = phi ptr [ %237, %234 ], [ %.23565, %232 ]
  %.423 = phi i32 [ 0, %234 ], [ %spec.select2, %232 ]
  %.414 = phi i64 [ %238, %234 ], [ %.31369, %232 ]
  %.9 = phi i64 [ %.49.lcssa, %234 ], [ %.8.lcssa, %232 ]
  %239 = icmp ult i64 %.21768, 2
  %240 = lshr i64 %.21768, 1
  %.132.idx = zext i1 %239 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.03166, i64 %.132.idx
  %.318 = select i1 %239, i64 128, i64 %240
  %241 = icmp ult i64 %.414, %1
  br i1 %241, label %220, label %.preheader._crit_edge, !llvm.loop !25

.preheader._crit_edge:                            ; preds = %.preheader
  br label %242

242:                                              ; preds = %.preheader._crit_edge, %.preheader.preheader
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

.loopexit.loopexit:                               ; preds = %6, %5
  %exitcond.not.lcssa = phi i1 [ %exitcond.not2, %6 ], [ %exitcond.not, %5 ]
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
