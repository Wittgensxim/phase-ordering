; ModuleID = 'results\paper_full\CoyoteBench_huffbench\round_005\output.ll'
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
  br i1 %exitcond.not7, label %.preheader6, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %12 = add i64 %1, -1
  %xtraiter = and i64 %1, 3
  %13 = icmp ult i64 %12, 3
  br i1 %13, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = sub i64 %1, %xtraiter
  br label %22

..preheader6_crit_edge.unr-lcssa:                 ; preds = %22
  %.029.unr = phi i64 [ %47, %22 ]
  %.0338.unr = phi ptr [ %46, %22 ]
  %lcmp.mod = icmp ne i64 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %..preheader6_crit_edge

.epil.preheader:                                  ; preds = %..preheader6_crit_edge.unr-lcssa, %.lr.ph
  %.029.epil.init = phi i64 [ 0, %.lr.ph ], [ %.029.unr, %..preheader6_crit_edge.unr-lcssa ]
  %.0338.epil.init = phi ptr [ %0, %.lr.ph ], [ %.0338.unr, %..preheader6_crit_edge.unr-lcssa ]
  %lcmp.mod77 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod77)
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
  br i1 %epil.iter.cmp, label %14, label %..preheader6_crit_edge.epilog-lcssa, !llvm.loop !9

..preheader6_crit_edge.epilog-lcssa:              ; preds = %14
  br label %..preheader6_crit_edge

..preheader6_crit_edge:                           ; preds = %..preheader6_crit_edge.unr-lcssa, %..preheader6_crit_edge.epilog-lcssa
  br label %.preheader6

.preheader6:                                      ; preds = %..preheader6_crit_edge, %2
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
  br i1 %niter.ncmp.3, label %..preheader6_crit_edge.unr-lcssa, label %22, !llvm.loop !11

.preheader5:                                      ; preds = %61
  %.010.lcssa = phi i64 [ %.111.1, %61 ]
  %.not13 = icmp eq i64 %.010.lcssa, 0
  br i1 %.not13, label %.preheader4, label %.lr.ph15

.lr.ph15:                                         ; preds = %.preheader5
  br label %64

48:                                               ; preds = %61, %.preheader6
  %.1312 = phi i64 [ 0, %.preheader6 ], [ %62, %61 ]
  %.01011 = phi i64 [ 0, %.preheader6 ], [ %.111.1, %61 ]
  %49 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.1312
  %50 = load i64, ptr %49, align 8
  %.not8 = icmp eq i64 %50, 0
  br i1 %.not8, label %54, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.01011
  store i64 %.1312, ptr %52, align 8
  %53 = add i64 %.01011, 1
  br label %54

54:                                               ; preds = %51, %48
  %.111 = phi i64 [ %53, %51 ], [ %.01011, %48 ]
  %55 = add nuw nsw i64 %.1312, 1
  %56 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %55
  %57 = load i64, ptr %56, align 8
  %.not8.1 = icmp eq i64 %57, 0
  br i1 %.not8.1, label %61, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.111
  store i64 %55, ptr %59, align 8
  %60 = add i64 %.111, 1
  br label %61

61:                                               ; preds = %58, %54
  %.111.1 = phi i64 [ %60, %58 ], [ %.111, %54 ]
  %62 = add nuw nsw i64 %.1312, 2
  %exitcond13.not.1 = icmp eq i64 %62, 256
  br i1 %exitcond13.not.1, label %.preheader5, label %48, !llvm.loop !12

..preheader4_crit_edge:                           ; preds = %64
  br label %.preheader4

.preheader4:                                      ; preds = %..preheader4_crit_edge, %.preheader5
  %63 = icmp ugt i64 %.010.lcssa, 1
  br i1 %63, label %.lr.ph17, label %88

.lr.ph17:                                         ; preds = %.preheader4
  br label %68

64:                                               ; preds = %.lr.ph15, %64
  %.2414 = phi i64 [ %.010.lcssa, %.lr.ph15 ], [ %67, %64 ]
  %65 = trunc i64 %.010.lcssa to i32
  %66 = trunc i64 %.2414 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %65, i32 noundef %66)
  %67 = add i64 %.2414, -1
  %.not = icmp eq i64 %67, 0
  br i1 %.not, label %..preheader4_crit_edge, label %64, !llvm.loop !13

68:                                               ; preds = %.lr.ph17, %68
  %.21216 = phi i64 [ %.010.lcssa, %.lr.ph17 ], [ %69, %68 ]
  %69 = add i64 %.21216, -1
  %70 = load i64, ptr %4, align 16
  %71 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %69
  %72 = load i64, ptr %71, align 8
  store i64 %72, ptr %4, align 16
  %73 = trunc i64 %69 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %73, i32 noundef 1)
  %74 = load i64, ptr %4, align 16
  %75 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %74
  %76 = load i64, ptr %75, align 8
  %77 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %70
  %78 = load i64, ptr %77, align 8
  %79 = add i64 %76, %78
  %80 = add i64 %.21216, 255
  %81 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %80
  store i64 %79, ptr %81, align 8
  %82 = trunc i64 %80 to i32
  %83 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %70
  store i32 %82, ptr %83, align 4
  %84 = trunc i64 %.21216 to i32
  %85 = sub i32 -255, %84
  %86 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %74
  store i32 %85, ptr %86, align 4
  store i64 %80, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %73, i32 noundef 1)
  %87 = icmp ugt i64 %69, 1
  br i1 %87, label %68, label %._crit_edge18, !llvm.loop !14

._crit_edge18:                                    ; preds = %68
  %split = phi i64 [ %69, %68 ]
  br label %88

88:                                               ; preds = %._crit_edge18, %.preheader4
  %.212.lcssa = phi i64 [ %split, %._crit_edge18 ], [ %.010.lcssa, %.preheader4 ]
  %89 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %90 = getelementptr inbounds nuw i8, ptr %89, i64 1024
  store i32 0, ptr %90, align 4
  br label %91

91:                                               ; preds = %88, %109
  %.03933 = phi i64 [ 0, %88 ], [ %.140, %109 ]
  %.04232 = phi i64 [ 0, %88 ], [ %110, %109 ]
  %.04531 = phi i64 [ 0, %88 ], [ %.146, %109 ]
  %92 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04232
  %93 = load i64, ptr %92, align 8
  %.not6 = icmp eq i64 %93, 0
  br i1 %.not6, label %94, label %97

94:                                               ; preds = %91
  %95 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04232
  store i32 0, ptr %95, align 4
  %96 = getelementptr inbounds nuw i8, ptr %7, i64 %.04232
  store i8 0, ptr %96, align 1
  br label %109

97:                                               ; preds = %91
  %.037.in19 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.04232
  %.03720 = load i32, ptr %.037.in19, align 4
  %.not721 = icmp eq i32 %.03720, 0
  br i1 %.not721, label %104, label %.lr.ph27

.lr.ph27:                                         ; preds = %97
  br label %98

98:                                               ; preds = %.lr.ph27, %98
  %.03725 = phi i32 [ %.03720, %.lr.ph27 ], [ %.037, %98 ]
  %.324 = phi i64 [ 0, %.lr.ph27 ], [ %103, %98 ]
  %.0523 = phi i64 [ 1, %.lr.ph27 ], [ %102, %98 ]
  %.04322 = phi i64 [ 0, %.lr.ph27 ], [ %.144, %98 ]
  %99 = icmp slt i32 %.03725, 0
  %100 = select i1 %99, i64 %.0523, i64 0
  %.144 = add i64 %.04322, %100
  %.138 = call i32 @llvm.abs.i32(i32 %.03725, i1 true)
  %101 = zext nneg i32 %.138 to i64
  %102 = shl i64 %.0523, 1
  %103 = add i64 %.324, 1
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %101
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %._crit_edge28, label %98, !llvm.loop !15

._crit_edge28:                                    ; preds = %98
  %split29 = phi i64 [ %.144, %98 ]
  %split30 = phi i64 [ %103, %98 ]
  br label %104

104:                                              ; preds = %._crit_edge28, %97
  %.043.lcssa = phi i64 [ %split29, %._crit_edge28 ], [ 0, %97 ]
  %.3.lcssa = phi i64 [ %split30, %._crit_edge28 ], [ 0, %97 ]
  %105 = trunc i64 %.043.lcssa to i32
  %106 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04232
  store i32 %105, ptr %106, align 4
  %107 = trunc i64 %.3.lcssa to i8
  %108 = getelementptr inbounds nuw i8, ptr %7, i64 %.04232
  store i8 %107, ptr %108, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.04531)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.03933)
  br label %109

109:                                              ; preds = %104, %94
  %.146 = phi i64 [ %spec.select, %104 ], [ %.04531, %94 ]
  %.140 = phi i64 [ %.241, %104 ], [ %.03933, %94 ]
  %110 = add nuw nsw i64 %.04232, 1
  %exitcond14.not = icmp eq i64 %110, 256
  br i1 %exitcond14.not, label %111, label %91, !llvm.loop !16

111:                                              ; preds = %109
  %.045.lcssa = phi i64 [ %.146, %109 ]
  %.039.lcssa = phi i64 [ %.140, %109 ]
  %112 = icmp ugt i64 %.039.lcssa, 32
  br i1 %112, label %113, label %116

113:                                              ; preds = %111
  %114 = call ptr @__acrt_iob_func(i32 noundef 2) #11
  %115 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %114)
  call void @exit(i32 noundef 1) #12
  unreachable

116:                                              ; preds = %111
  %117 = icmp eq i64 %.045.lcssa, 0
  br i1 %117, label %118, label %.preheader3

.preheader3:                                      ; preds = %116
  %exitcond15.not46 = icmp eq i64 0, %1
  br i1 %exitcond15.not46, label %158, label %.lr.ph52

.lr.ph52:                                         ; preds = %.preheader3
  br label %121

118:                                              ; preds = %116
  %119 = call ptr @__acrt_iob_func(i32 noundef 2) #11
  %120 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %119)
  call void @exit(i32 noundef 1) #12
  unreachable

121:                                              ; preds = %.lr.ph52, %155
  %.0151 = phi i32 [ -1, %.lr.ph52 ], [ %.1.lcssa, %155 ]
  %.1650 = phi i64 [ 0, %.lr.ph52 ], [ %157, %155 ]
  %.02449 = phi i8 [ 0, %.lr.ph52 ], [ %.125.lcssa, %155 ]
  %.02848 = phi i64 [ 0, %.lr.ph52 ], [ %.129.lcssa, %155 ]
  %.13447 = phi ptr [ %0, %.lr.ph52 ], [ %156, %155 ]
  %122 = load i8, ptr %.13447, align 1
  %123 = zext i8 %122 to i64
  %124 = getelementptr inbounds nuw i8, ptr %7, i64 %123
  %125 = load i8, ptr %124, align 1
  %126 = zext i8 %125 to i32
  %127 = add nsw i32 %126, -1
  %128 = shl nuw i32 1, %127
  %129 = sext i32 %128 to i64
  %130 = zext i8 %125 to i64
  %131 = icmp samesign ult i64 0, %130
  br i1 %131, label %.lr.ph41, label %155

.lr.ph41:                                         ; preds = %121
  br label %132

132:                                              ; preds = %.lr.ph41, %145
  %.139 = phi i32 [ %.0151, %.lr.ph41 ], [ %.2, %145 ]
  %.437 = phi i64 [ 0, %.lr.ph41 ], [ %152, %145 ]
  %.01536 = phi i64 [ %129, %.lr.ph41 ], [ %151, %145 ]
  %.12535 = phi i8 [ %.02449, %.lr.ph41 ], [ %.327, %145 ]
  %.12934 = phi i64 [ %.02848, %.lr.ph41 ], [ %.230, %145 ]
  %133 = phi i8 [ %122, %.lr.ph41 ], [ %.pre-phi.in, %145 ]
  %134 = icmp eq i32 %.139, 7
  br i1 %134, label %135, label %142

135:                                              ; preds = %132
  %136 = getelementptr inbounds nuw i8, ptr %11, i64 %.12934
  store i8 %.12535, ptr %136, align 1
  %137 = add i64 %.12934, 1
  %138 = icmp eq i64 %137, %1
  br i1 %138, label %139, label %._crit_edge

._crit_edge:                                      ; preds = %135
  %.pre1 = load i8, ptr %.13447, align 1
  br label %145

139:                                              ; preds = %135
  %140 = call ptr @__acrt_iob_func(i32 noundef 2) #11
  %141 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %140)
  call void @exit(i32 noundef 1) #12
  unreachable

142:                                              ; preds = %132
  %143 = add nsw i32 %.139, 1
  %144 = shl i8 %.12535, 1
  br label %145

145:                                              ; preds = %142, %._crit_edge
  %.pre-phi.in = phi i8 [ %.pre1, %._crit_edge ], [ %133, %142 ]
  %.230 = phi i64 [ %137, %._crit_edge ], [ %.12934, %142 ]
  %.226 = phi i8 [ 0, %._crit_edge ], [ %144, %142 ]
  %.2 = phi i32 [ 0, %._crit_edge ], [ %143, %142 ]
  %.pre-phi = zext i8 %.pre-phi.in to i64
  %146 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.pre-phi
  %147 = load i32, ptr %146, align 4
  %148 = zext i32 %147 to i64
  %149 = and i64 %.01536, %148
  %.not5 = icmp ne i64 %149, 0
  %150 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %150
  %151 = lshr i64 %.01536, 1
  %152 = add nuw nsw i64 %.437, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  %153 = zext i8 %.pre to i64
  %154 = icmp samesign ult i64 %152, %153
  br i1 %154, label %132, label %._crit_edge42, !llvm.loop !17

._crit_edge42:                                    ; preds = %145
  %split43 = phi i64 [ %.230, %145 ]
  %split44 = phi i8 [ %.327, %145 ]
  %split45 = phi i32 [ %.2, %145 ]
  br label %155

155:                                              ; preds = %._crit_edge42, %121
  %.129.lcssa = phi i64 [ %split43, %._crit_edge42 ], [ %.02848, %121 ]
  %.125.lcssa = phi i8 [ %split44, %._crit_edge42 ], [ %.02449, %121 ]
  %.1.lcssa = phi i32 [ %split45, %._crit_edge42 ], [ %.0151, %121 ]
  %156 = getelementptr inbounds nuw i8, ptr %.13447, i64 1
  %157 = add i64 %.1650, 1
  %exitcond15.not = icmp eq i64 %157, %1
  br i1 %exitcond15.not, label %._crit_edge53, label %121, !llvm.loop !18

._crit_edge53:                                    ; preds = %155
  %split54 = phi i64 [ %.129.lcssa, %155 ]
  %split55 = phi i8 [ %.125.lcssa, %155 ]
  %split56 = phi i32 [ %.1.lcssa, %155 ]
  br label %158

158:                                              ; preds = %._crit_edge53, %.preheader3
  %.028.lcssa = phi i64 [ %split54, %._crit_edge53 ], [ 0, %.preheader3 ]
  %.024.lcssa = phi i8 [ %split55, %._crit_edge53 ], [ 0, %.preheader3 ]
  %.01.lcssa = phi i32 [ %split56, %._crit_edge53 ], [ -1, %.preheader3 ]
  %159 = sub nsw i32 7, %.01.lcssa
  %160 = zext i8 %.024.lcssa to i32
  %161 = shl i32 %160, %159
  %162 = trunc i32 %161 to i8
  %163 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %162, ptr %163, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %164

.preheader2:                                      ; preds = %201
  br label %203

164:                                              ; preds = %158, %201
  %.066 = phi ptr [ %9, %158 ], [ %166, %201 ]
  %.2765 = phi i64 [ 0, %158 ], [ %202, %201 ]
  %165 = trunc nuw i64 %.2765 to i8
  store i8 %165, ptr %.066, align 1
  %166 = getelementptr inbounds nuw i8, ptr %.066, i64 1
  %167 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.2765
  %168 = load i32, ptr %167, align 4
  %169 = getelementptr inbounds nuw i8, ptr %7, i64 %.2765
  %170 = load i8, ptr %169, align 1
  %171 = zext i8 %170 to i32
  %172 = or i32 %168, %171
  %.not3 = icmp eq i32 %172, 0
  br i1 %.not3, label %201, label %173

173:                                              ; preds = %164
  %174 = add nsw i32 %171, -1
  %175 = shl nuw i32 1, %174
  %176 = sext i32 %175 to i64
  %177 = zext i8 %170 to i64
  %exitcond16.not57 = icmp eq i64 0, %177
  br i1 %exitcond16.not57, label %199, label %.lr.ph62

.lr.ph62:                                         ; preds = %173
  %178 = add nsw i64 %177, -1
  %xtraiter79 = and i64 %177, 1
  %179 = icmp ult i64 %178, 1
  br i1 %179, label %.epil.preheader78, label %.lr.ph62.new

.lr.ph62.new:                                     ; preds = %.lr.ph62
  %unroll_iter84 = sub i64 %177, %xtraiter79
  br label %180

180:                                              ; preds = %180, %.lr.ph62.new
  %.560 = phi i64 [ 0, %.lr.ph62.new ], [ %193, %180 ]
  %.11659 = phi i64 [ %176, %.lr.ph62.new ], [ %192, %180 ]
  %.01958 = phi i32 [ 0, %.lr.ph62.new ], [ %spec.select1.1, %180 ]
  %niter85 = phi i64 [ 0, %.lr.ph62.new ], [ %niter85.next.1, %180 ]
  %181 = shl i32 %.01958, 1
  %182 = or disjoint i32 %181, 1
  %183 = zext i32 %168 to i64
  %184 = and i64 %.11659, %183
  %.not4 = icmp eq i64 %184, 0
  %185 = add i32 %181, 2
  %spec.select1 = select i1 %.not4, i32 %182, i32 %185
  %186 = lshr i64 %.11659, 1
  %187 = shl i32 %spec.select1, 1
  %188 = or disjoint i32 %187, 1
  %189 = zext i32 %168 to i64
  %190 = and i64 %186, %189
  %.not4.1 = icmp eq i64 %190, 0
  %191 = add i32 %187, 2
  %spec.select1.1 = select i1 %.not4.1, i32 %188, i32 %191
  %192 = lshr i64 %186, 1
  %193 = add nuw nsw i64 %.560, 2
  %niter85.next.1 = add i64 %niter85, 2
  %niter85.ncmp.1 = icmp eq i64 %niter85.next.1, %unroll_iter84
  br i1 %niter85.ncmp.1, label %._crit_edge63.unr-lcssa, label %180, !llvm.loop !19

._crit_edge63.unr-lcssa:                          ; preds = %180
  %split64.ph = phi i32 [ %spec.select1.1, %180 ]
  %.11659.unr = phi i64 [ %192, %180 ]
  %.01958.unr = phi i32 [ %spec.select1.1, %180 ]
  %lcmp.mod81 = icmp ne i64 %xtraiter79, 0
  br i1 %lcmp.mod81, label %.epil.preheader78, label %._crit_edge63

.epil.preheader78:                                ; preds = %._crit_edge63.unr-lcssa, %.lr.ph62
  %.11659.epil.init = phi i64 [ %176, %.lr.ph62 ], [ %.11659.unr, %._crit_edge63.unr-lcssa ]
  %.01958.epil.init = phi i32 [ 0, %.lr.ph62 ], [ %.01958.unr, %._crit_edge63.unr-lcssa ]
  %lcmp.mod83 = icmp ne i64 %xtraiter79, 0
  call void @llvm.assume(i1 %lcmp.mod83)
  br label %._crit_edge63.epilog-lcssa

._crit_edge63.epilog-lcssa:                       ; preds = %.epil.preheader78
  %194 = shl i32 %.01958.epil.init, 1
  %195 = or disjoint i32 %194, 1
  %196 = zext i32 %168 to i64
  %197 = and i64 %.11659.epil.init, %196
  %.not4.epil = icmp eq i64 %197, 0
  %198 = add i32 %194, 2
  %spec.select1.epil = select i1 %.not4.epil, i32 %195, i32 %198
  br label %._crit_edge63

._crit_edge63:                                    ; preds = %._crit_edge63.unr-lcssa, %._crit_edge63.epilog-lcssa
  %split64 = phi i32 [ %split64.ph, %._crit_edge63.unr-lcssa ], [ %spec.select1.epil, %._crit_edge63.epilog-lcssa ]
  br label %199

199:                                              ; preds = %._crit_edge63, %173
  %.019.lcssa = phi i32 [ %split64, %._crit_edge63 ], [ 0, %173 ]
  %200 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.2765
  store i32 %.019.lcssa, ptr %200, align 4
  br label %201

201:                                              ; preds = %199, %164
  %202 = add nuw nsw i64 %.2765, 1
  %exitcond17.not = icmp eq i64 %202, 256
  br i1 %exitcond17.not, label %.preheader2, label %164, !llvm.loop !20

.preheader1:                                      ; preds = %.critedge
  br label %221

203:                                              ; preds = %.preheader2, %.critedge
  %.668 = phi i64 [ 1, %.preheader2 ], [ %220, %.critedge ]
  %204 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.668
  %205 = load i32, ptr %204, align 4
  %206 = getelementptr inbounds nuw i8, ptr %9, i64 %.668
  %207 = load i8, ptr %206, align 1
  br label %208

208:                                              ; preds = %203, %213
  %.3867 = phi i64 [ %.668, %203 ], [ %209, %213 ]
  %209 = add nsw i64 %.3867, -1
  %210 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %209
  %211 = load i32, ptr %210, align 4
  %212 = icmp ugt i32 %211, %205
  br i1 %212, label %213, label %.critedge

213:                                              ; preds = %208
  %214 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.3867
  store i32 %211, ptr %214, align 4
  %215 = getelementptr inbounds nuw i8, ptr %9, i64 %209
  %216 = load i8, ptr %215, align 1
  %217 = getelementptr inbounds nuw i8, ptr %9, i64 %.3867
  store i8 %216, ptr %217, align 1
  %.not2 = icmp eq i64 %209, 0
  br i1 %.not2, label %.critedge, label %208, !llvm.loop !21

.critedge:                                        ; preds = %208, %213
  %.38.lcssa = phi i64 [ %.3867, %208 ], [ 0, %213 ]
  %218 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %205, ptr %218, align 4
  %219 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %207, ptr %219, align 1
  %220 = add nuw nsw i64 %.668, 1
  %exitcond18.not = icmp eq i64 %220, 256
  br i1 %exitcond18.not, label %.preheader1, label %203, !llvm.loop !22

221:                                              ; preds = %221, %.preheader1
  %.49 = phi i64 [ %225, %221 ], [ 0, %.preheader1 ]
  %222 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %223 = load i32, ptr %222, align 4
  %224 = icmp eq i32 %223, 0
  %225 = add i64 %.49, 1
  br i1 %224, label %221, label %.preheader, !llvm.loop !23

.preheader:                                       ; preds = %221
  %.49.lcssa = phi i64 [ %.49, %221 ]
  %226 = icmp ult i64 0, %1
  br i1 %226, label %.lr.ph75, label %250

.lr.ph75:                                         ; preds = %.preheader
  br label %227

227:                                              ; preds = %.lr.ph75, %246
  %.774 = phi i64 [ %.49.lcssa, %.lr.ph75 ], [ %.9, %246 ]
  %.31373 = phi i64 [ 0, %.lr.ph75 ], [ %.414, %246 ]
  %.21772 = phi i64 [ 128, %.lr.ph75 ], [ %.318, %246 ]
  %.22171 = phi i32 [ 0, %.lr.ph75 ], [ %.423, %246 ]
  %.03170 = phi ptr [ %11, %.lr.ph75 ], [ %.132, %246 ]
  %.23569 = phi ptr [ %0, %.lr.ph75 ], [ %.336, %246 ]
  %228 = shl i32 %.22171, 1
  %229 = or disjoint i32 %228, 1
  %230 = load i8, ptr %.03170, align 1
  %231 = zext i8 %230 to i64
  %232 = and i64 %.21772, %231
  %.not1 = icmp eq i64 %232, 0
  %233 = add i32 %228, 2
  %spec.select2 = select i1 %.not1, i32 %229, i32 %233
  br label %234

234:                                              ; preds = %234, %227
  %.8 = phi i64 [ %.774, %227 ], [ %238, %234 ]
  %235 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %236 = load i32, ptr %235, align 4
  %237 = icmp ult i32 %236, %spec.select2
  %238 = add i64 %.8, 1
  br i1 %237, label %234, label %239, !llvm.loop !24

239:                                              ; preds = %234
  %.8.lcssa = phi i64 [ %.8, %234 ]
  %.lcssa = phi i32 [ %236, %234 ]
  %240 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %240, label %241, label %246

241:                                              ; preds = %239
  %242 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %243 = load i8, ptr %242, align 1
  store i8 %243, ptr %.23569, align 1
  %244 = getelementptr inbounds nuw i8, ptr %.23569, i64 1
  %245 = add nuw i64 %.31373, 1
  br label %246

246:                                              ; preds = %241, %239
  %.336 = phi ptr [ %244, %241 ], [ %.23569, %239 ]
  %.423 = phi i32 [ 0, %241 ], [ %spec.select2, %239 ]
  %.414 = phi i64 [ %245, %241 ], [ %.31373, %239 ]
  %.9 = phi i64 [ %.49.lcssa, %241 ], [ %.8.lcssa, %239 ]
  %247 = icmp ult i64 %.21772, 2
  %248 = lshr i64 %.21772, 1
  %.132.idx = zext i1 %247 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.03170, i64 %.132.idx
  %.318 = select i1 %247, i64 128, i64 %248
  %249 = icmp ult i64 %.414, %1
  br i1 %249, label %227, label %._crit_edge76, !llvm.loop !25

._crit_edge76:                                    ; preds = %246
  br label %250

250:                                              ; preds = %._crit_edge76, %.preheader
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
  %.not3 = icmp sgt i32 %3, %10
  br i1 %.not3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %4
  br label %11

.._crit_edge_crit_edge:                           ; preds = %37
  %split6 = phi i32 [ %.0, %37 ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %4
  %.01.lcssa = phi i32 [ %split6, %.._crit_edge_crit_edge ], [ %3, %4 ]
  br label %41

11:                                               ; preds = %.lr.ph, %37
  %.014 = phi i32 [ %3, %.lr.ph ], [ %.0, %37 ]
  %12 = shl nsw i32 %.014, 1
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
  br i1 %36, label %split, label %37

37:                                               ; preds = %26
  %38 = sext i32 %.014 to i64
  %39 = getelementptr [8 x i8], ptr %1, i64 %38
  %40 = getelementptr i8, ptr %39, i64 -8
  store i64 %33, ptr %40, align 8
  %.not = icmp sgt i32 %.0, %10
  br i1 %.not, label %.._crit_edge_crit_edge, label %11, !llvm.loop !26

split:                                            ; preds = %26
  %.01.lcssa1 = phi i32 [ %.014, %26 ]
  br label %41

41:                                               ; preds = %split, %._crit_edge
  %.012 = phi i32 [ %.01.lcssa1, %split ], [ %.01.lcssa, %._crit_edge ]
  %42 = ashr exact i64 %9, 32
  %43 = sext i32 %.012 to i64
  %44 = getelementptr [8 x i8], ptr %1, i64 %43
  %45 = getelementptr i8, ptr %44, i64 -8
  store i64 %42, ptr %45, align 8
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
  br i1 %3, label %.preheader, label %10

.preheader:                                       ; preds = %2
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %6

5:                                                ; preds = %6
  %.01 = phi i32 [ %9, %6 ]
  %exitcond.not = icmp eq i32 %.01, %0
  br i1 %exitcond.not, label %.loopexit, label %6, !llvm.loop !27

6:                                                ; preds = %.preheader, %5
  %exitcond.not2 = phi i1 [ false, %.preheader ], [ %exitcond.not, %5 ]
  %.011 = phi i32 [ 1, %.preheader ], [ %.01, %5 ]
  %7 = load ptr, ptr %4, align 8
  %8 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(4) @.str.4) #11
  %.not = icmp eq i32 %8, 0
  %9 = add nuw i32 %.011, 1
  br i1 %.not, label %.loopexit, label %5

.loopexit:                                        ; preds = %6, %5
  %exitcond.not.lcssa = phi i1 [ %exitcond.not2, %6 ], [ %exitcond.not, %5 ]
  br label %10

10:                                               ; preds = %.loopexit, %2
  %.not1 = phi i1 [ true, %2 ], [ %exitcond.not.lcssa, %.loopexit ]
  %11 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %12

12:                                               ; preds = %10
  call void @compdecomp(ptr noundef %11, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %11, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %11, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %11, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %11, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %11, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %11, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %11, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %11, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %11, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %11, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %11, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %11, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %11, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %11, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %11, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %11, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %11, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %11, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %11, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %11, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %11, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %11, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %11, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %11, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %11, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %11, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %11, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %11, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %11, i64 noundef 10000000)
  call void @free(ptr noundef %11) #11
  br i1 %.not1, label %16, label %13

13:                                               ; preds = %12
  %14 = call ptr @__acrt_iob_func(i32 noundef 1) #11
  %15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.5, double noundef 0.000000e+00) #11
  br label %19

16:                                               ; preds = %12
  %17 = call ptr @__acrt_iob_func(i32 noundef 1) #11
  %18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.6, double noundef 0.000000e+00) #11
  br label %19

19:                                               ; preds = %16, %13
  %20 = call ptr @__acrt_iob_func(i32 noundef 1) #11
  %21 = call i32 @fflush(ptr noundef %20) #11
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
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = add nsw i32 %6, 2147483647
  br label %10

10:                                               ; preds = %8, %0
  %storemerge = phi i32 [ %9, %8 ], [ %6, %0 ]
  %11 = srem i32 %storemerge, 32
  %12 = sext i32 %11 to i64
  %13 = xor i32 %storemerge, 123459876
  store i32 %13, ptr @seed, align 4
  ret i64 %12
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
