; ModuleID = 'results\paper_full\CoyoteBench_huffbench\round_003\output.ll'
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
  %3 = icmp ugt i64 %0, 0
  br i1 %3, label %.lr.ph, label %12

.lr.ph:                                           ; preds = %1
  br label %4

4:                                                ; preds = %.lr.ph, %4
  %.02 = phi i32 [ 0, %.lr.ph ], [ %9, %4 ]
  %.011 = phi ptr [ %2, %.lr.ph ], [ %8, %4 ]
  %5 = call i64 @random4()
  %6 = getelementptr inbounds nuw i8, ptr @.str, i64 %5
  %7 = load i8, ptr %6, align 1
  store i8 %7, ptr %.011, align 1
  %8 = getelementptr inbounds nuw i8, ptr %.011, i64 1
  %9 = add nuw nsw i32 %.02, 1
  %10 = zext nneg i32 %9 to i64
  %11 = icmp ugt i64 %0, %10
  br i1 %11, label %4, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %4
  br label %12

12:                                               ; preds = %._crit_edge, %1
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
  %12 = icmp ult i64 0, %1
  br i1 %12, label %.lr.ph, label %.preheader6

.lr.ph:                                           ; preds = %2
  %13 = add i64 %1, -1
  %xtraiter = and i64 %1, 3
  %14 = icmp ult i64 %13, 3
  br i1 %14, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = sub i64 %1, %xtraiter
  br label %24

..preheader6_crit_edge.unr-lcssa:                 ; preds = %24
  %.0214.unr = phi i64 [ %49, %24 ]
  %.03313.unr = phi ptr [ %48, %24 ]
  %lcmp.mod = icmp ne i64 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %..preheader6_crit_edge

.epil.preheader:                                  ; preds = %..preheader6_crit_edge.unr-lcssa, %.lr.ph
  %.0214.epil.init = phi i64 [ 0, %.lr.ph ], [ %.0214.unr, %..preheader6_crit_edge.unr-lcssa ]
  %.03313.epil.init = phi ptr [ %0, %.lr.ph ], [ %.03313.unr, %..preheader6_crit_edge.unr-lcssa ]
  %lcmp.mod79 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod79)
  br label %15

15:                                               ; preds = %15, %.epil.preheader
  %.0214.epil = phi i64 [ %.0214.epil.init, %.epil.preheader ], [ %22, %15 ]
  %.03313.epil = phi ptr [ %.03313.epil.init, %.epil.preheader ], [ %21, %15 ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %15 ]
  %16 = load i8, ptr %.03313.epil, align 1
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %17
  %19 = load i64, ptr %18, align 8
  %20 = add i64 %19, 1
  store i64 %20, ptr %18, align 8
  %21 = getelementptr inbounds nuw i8, ptr %.03313.epil, i64 1
  %22 = add i64 %.0214.epil, 1
  %23 = icmp ult i64 %22, %1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp = icmp ne i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp, label %15, label %..preheader6_crit_edge.epilog-lcssa, !llvm.loop !9

..preheader6_crit_edge.epilog-lcssa:              ; preds = %15
  br label %..preheader6_crit_edge

..preheader6_crit_edge:                           ; preds = %..preheader6_crit_edge.unr-lcssa, %..preheader6_crit_edge.epilog-lcssa
  br label %.preheader6

.preheader6:                                      ; preds = %..preheader6_crit_edge, %2
  br label %50

24:                                               ; preds = %24, %.lr.ph.new
  %.0214 = phi i64 [ 0, %.lr.ph.new ], [ %49, %24 ]
  %.03313 = phi ptr [ %0, %.lr.ph.new ], [ %48, %24 ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %24 ]
  %25 = load i8, ptr %.03313, align 1
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %26
  %28 = load i64, ptr %27, align 8
  %29 = add i64 %28, 1
  store i64 %29, ptr %27, align 8
  %30 = getelementptr inbounds nuw i8, ptr %.03313, i64 1
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i64
  %33 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %32
  %34 = load i64, ptr %33, align 8
  %35 = add i64 %34, 1
  store i64 %35, ptr %33, align 8
  %36 = getelementptr inbounds nuw i8, ptr %30, i64 1
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %38
  %40 = load i64, ptr %39, align 8
  %41 = add i64 %40, 1
  store i64 %41, ptr %39, align 8
  %42 = getelementptr inbounds nuw i8, ptr %36, i64 1
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %44
  %46 = load i64, ptr %45, align 8
  %47 = add i64 %46, 1
  store i64 %47, ptr %45, align 8
  %48 = getelementptr inbounds nuw i8, ptr %42, i64 1
  %49 = add i64 %.0214, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp ne i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %24, label %..preheader6_crit_edge.unr-lcssa, !llvm.loop !11

.preheader5:                                      ; preds = %63
  %.010.lcssa = phi i64 [ %.111.1, %63 ]
  %.not18 = icmp eq i64 %.010.lcssa, 0
  br i1 %.not18, label %.preheader4, label %.lr.ph20

.lr.ph20:                                         ; preds = %.preheader5
  br label %67

50:                                               ; preds = %63, %.preheader6
  %.1317 = phi i64 [ 0, %.preheader6 ], [ %64, %63 ]
  %.01016 = phi i64 [ 0, %.preheader6 ], [ %.111.1, %63 ]
  %51 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.1317
  %52 = load i64, ptr %51, align 8
  %.not8 = icmp eq i64 %52, 0
  br i1 %.not8, label %56, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.01016
  store i64 %.1317, ptr %54, align 8
  %55 = add i64 %.01016, 1
  br label %56

56:                                               ; preds = %53, %50
  %.111 = phi i64 [ %55, %53 ], [ %.01016, %50 ]
  %57 = add nuw nsw i64 %.1317, 1
  %58 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %57
  %59 = load i64, ptr %58, align 8
  %.not8.1 = icmp eq i64 %59, 0
  br i1 %.not8.1, label %63, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.111
  store i64 %57, ptr %61, align 8
  %62 = add i64 %.111, 1
  br label %63

63:                                               ; preds = %60, %56
  %.111.1 = phi i64 [ %62, %60 ], [ %.111, %56 ]
  %64 = add nuw nsw i64 %.1317, 2
  %65 = icmp samesign ult i64 %64, 256
  br i1 %65, label %50, label %.preheader5, !llvm.loop !12

..preheader4_crit_edge:                           ; preds = %67
  br label %.preheader4

.preheader4:                                      ; preds = %..preheader4_crit_edge, %.preheader5
  %66 = icmp ugt i64 %.010.lcssa, 1
  br i1 %66, label %.lr.ph22, label %91

.lr.ph22:                                         ; preds = %.preheader4
  br label %71

67:                                               ; preds = %.lr.ph20, %67
  %.2419 = phi i64 [ %.010.lcssa, %.lr.ph20 ], [ %70, %67 ]
  %68 = trunc i64 %.010.lcssa to i32
  %69 = trunc i64 %.2419 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %68, i32 noundef %69)
  %70 = add i64 %.2419, -1
  %.not = icmp eq i64 %70, 0
  br i1 %.not, label %..preheader4_crit_edge, label %67, !llvm.loop !13

71:                                               ; preds = %.lr.ph22, %71
  %.21221 = phi i64 [ %.010.lcssa, %.lr.ph22 ], [ %72, %71 ]
  %72 = add i64 %.21221, -1
  %73 = load i64, ptr %4, align 16
  %74 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %72
  %75 = load i64, ptr %74, align 8
  store i64 %75, ptr %4, align 16
  %76 = trunc i64 %72 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %76, i32 noundef 1)
  %77 = load i64, ptr %4, align 16
  %78 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %77
  %79 = load i64, ptr %78, align 8
  %80 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %73
  %81 = load i64, ptr %80, align 8
  %82 = add i64 %79, %81
  %83 = add i64 %.21221, 255
  %84 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %83
  store i64 %82, ptr %84, align 8
  %85 = trunc i64 %83 to i32
  %86 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %73
  store i32 %85, ptr %86, align 4
  %87 = trunc i64 %.21221 to i32
  %88 = sub i32 -255, %87
  %89 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %77
  store i32 %88, ptr %89, align 4
  store i64 %83, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %76, i32 noundef 1)
  %90 = icmp ugt i64 %72, 1
  br i1 %90, label %71, label %._crit_edge23, !llvm.loop !14

._crit_edge23:                                    ; preds = %71
  %split = phi i64 [ %72, %71 ]
  br label %91

91:                                               ; preds = %._crit_edge23, %.preheader4
  %.212.lcssa = phi i64 [ %split, %._crit_edge23 ], [ %.010.lcssa, %.preheader4 ]
  %92 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %93 = getelementptr inbounds nuw i8, ptr %92, i64 1024
  store i32 0, ptr %93, align 4
  br label %94

94:                                               ; preds = %91, %112
  %.03938 = phi i64 [ 0, %91 ], [ %.140, %112 ]
  %.04237 = phi i64 [ 0, %91 ], [ %113, %112 ]
  %.04536 = phi i64 [ 0, %91 ], [ %.146, %112 ]
  %95 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04237
  %96 = load i64, ptr %95, align 8
  %.not6 = icmp eq i64 %96, 0
  br i1 %.not6, label %97, label %100

97:                                               ; preds = %94
  %98 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04237
  store i32 0, ptr %98, align 4
  %99 = getelementptr inbounds nuw i8, ptr %7, i64 %.04237
  store i8 0, ptr %99, align 1
  br label %112

100:                                              ; preds = %94
  %.037.in24 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.04237
  %.03725 = load i32, ptr %.037.in24, align 4
  %.not726 = icmp eq i32 %.03725, 0
  br i1 %.not726, label %107, label %.lr.ph32

.lr.ph32:                                         ; preds = %100
  br label %101

101:                                              ; preds = %.lr.ph32, %101
  %.03730 = phi i32 [ %.03725, %.lr.ph32 ], [ %.037, %101 ]
  %.329 = phi i64 [ 0, %.lr.ph32 ], [ %106, %101 ]
  %.0528 = phi i64 [ 1, %.lr.ph32 ], [ %105, %101 ]
  %.04327 = phi i64 [ 0, %.lr.ph32 ], [ %.144, %101 ]
  %102 = icmp slt i32 %.03730, 0
  %103 = select i1 %102, i64 %.0528, i64 0
  %.144 = add i64 %.04327, %103
  %.138 = call i32 @llvm.abs.i32(i32 %.03730, i1 true)
  %104 = zext nneg i32 %.138 to i64
  %105 = shl i64 %.0528, 1
  %106 = add i64 %.329, 1
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %104
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %._crit_edge33, label %101, !llvm.loop !15

._crit_edge33:                                    ; preds = %101
  %split34 = phi i64 [ %.144, %101 ]
  %split35 = phi i64 [ %106, %101 ]
  br label %107

107:                                              ; preds = %._crit_edge33, %100
  %.043.lcssa = phi i64 [ %split34, %._crit_edge33 ], [ 0, %100 ]
  %.3.lcssa = phi i64 [ %split35, %._crit_edge33 ], [ 0, %100 ]
  %108 = trunc i64 %.043.lcssa to i32
  %109 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04237
  store i32 %108, ptr %109, align 4
  %110 = trunc i64 %.3.lcssa to i8
  %111 = getelementptr inbounds nuw i8, ptr %7, i64 %.04237
  store i8 %110, ptr %111, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.04536)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.03938)
  br label %112

112:                                              ; preds = %107, %97
  %.146 = phi i64 [ %spec.select, %107 ], [ %.04536, %97 ]
  %.140 = phi i64 [ %.241, %107 ], [ %.03938, %97 ]
  %113 = add nuw nsw i64 %.04237, 1
  %114 = icmp samesign ult i64 %113, 256
  br i1 %114, label %94, label %115, !llvm.loop !16

115:                                              ; preds = %112
  %.045.lcssa = phi i64 [ %.146, %112 ]
  %.039.lcssa = phi i64 [ %.140, %112 ]
  %116 = icmp ugt i64 %.039.lcssa, 32
  br i1 %116, label %117, label %120

117:                                              ; preds = %115
  %118 = call ptr @__acrt_iob_func(i32 noundef 2) #11
  %119 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %118)
  call void @exit(i32 noundef 1) #12
  unreachable

120:                                              ; preds = %115
  %121 = icmp eq i64 %.045.lcssa, 0
  br i1 %121, label %123, label %.preheader3

.preheader3:                                      ; preds = %120
  %122 = icmp ult i64 0, %1
  br i1 %122, label %.lr.ph55, label %164

.lr.ph55:                                         ; preds = %.preheader3
  br label %126

123:                                              ; preds = %120
  %124 = call ptr @__acrt_iob_func(i32 noundef 2) #11
  %125 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %124)
  call void @exit(i32 noundef 1) #12
  unreachable

126:                                              ; preds = %.lr.ph55, %160
  %.0154 = phi i32 [ -1, %.lr.ph55 ], [ %.1.lcssa, %160 ]
  %.1653 = phi i64 [ 0, %.lr.ph55 ], [ %162, %160 ]
  %.02452 = phi i8 [ 0, %.lr.ph55 ], [ %.125.lcssa, %160 ]
  %.02851 = phi i64 [ 0, %.lr.ph55 ], [ %.129.lcssa, %160 ]
  %.13450 = phi ptr [ %0, %.lr.ph55 ], [ %161, %160 ]
  %127 = load i8, ptr %.13450, align 1
  %128 = zext i8 %127 to i64
  %129 = getelementptr inbounds nuw i8, ptr %7, i64 %128
  %130 = load i8, ptr %129, align 1
  %131 = zext i8 %130 to i32
  %132 = add nsw i32 %131, -1
  %133 = shl nuw i32 1, %132
  %134 = sext i32 %133 to i64
  %135 = zext i8 %130 to i64
  %136 = icmp ult i64 0, %135
  br i1 %136, label %.lr.ph45, label %160

.lr.ph45:                                         ; preds = %126
  br label %137

137:                                              ; preds = %.lr.ph45, %150
  %.143 = phi i32 [ %.0154, %.lr.ph45 ], [ %.2, %150 ]
  %.442 = phi i64 [ 0, %.lr.ph45 ], [ %157, %150 ]
  %.01541 = phi i64 [ %134, %.lr.ph45 ], [ %156, %150 ]
  %.12540 = phi i8 [ %.02452, %.lr.ph45 ], [ %.327, %150 ]
  %.12939 = phi i64 [ %.02851, %.lr.ph45 ], [ %.230, %150 ]
  %138 = phi i8 [ %127, %.lr.ph45 ], [ %.pre-phi.in, %150 ]
  %139 = icmp eq i32 %.143, 7
  br i1 %139, label %140, label %147

140:                                              ; preds = %137
  %141 = getelementptr inbounds nuw i8, ptr %11, i64 %.12939
  store i8 %.12540, ptr %141, align 1
  %142 = add i64 %.12939, 1
  %143 = icmp eq i64 %142, %1
  br i1 %143, label %144, label %._crit_edge

._crit_edge:                                      ; preds = %140
  %.pre1 = load i8, ptr %.13450, align 1
  br label %150

144:                                              ; preds = %140
  %145 = call ptr @__acrt_iob_func(i32 noundef 2) #11
  %146 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %145)
  call void @exit(i32 noundef 1) #12
  unreachable

147:                                              ; preds = %137
  %148 = add nsw i32 %.143, 1
  %149 = shl i8 %.12540, 1
  br label %150

150:                                              ; preds = %147, %._crit_edge
  %.pre-phi.in = phi i8 [ %.pre1, %._crit_edge ], [ %138, %147 ]
  %.230 = phi i64 [ %142, %._crit_edge ], [ %.12939, %147 ]
  %.226 = phi i8 [ 0, %._crit_edge ], [ %149, %147 ]
  %.2 = phi i32 [ 0, %._crit_edge ], [ %148, %147 ]
  %.pre-phi = zext i8 %.pre-phi.in to i64
  %151 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.pre-phi
  %152 = load i32, ptr %151, align 4
  %153 = zext i32 %152 to i64
  %154 = and i64 %.01541, %153
  %.not5 = icmp ne i64 %154, 0
  %155 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %155
  %156 = lshr i64 %.01541, 1
  %157 = add i64 %.442, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  %158 = zext i8 %.pre to i64
  %159 = icmp ult i64 %157, %158
  br i1 %159, label %137, label %._crit_edge46, !llvm.loop !17

._crit_edge46:                                    ; preds = %150
  %split47 = phi i64 [ %.230, %150 ]
  %split48 = phi i8 [ %.327, %150 ]
  %split49 = phi i32 [ %.2, %150 ]
  br label %160

160:                                              ; preds = %._crit_edge46, %126
  %.129.lcssa = phi i64 [ %split47, %._crit_edge46 ], [ %.02851, %126 ]
  %.125.lcssa = phi i8 [ %split48, %._crit_edge46 ], [ %.02452, %126 ]
  %.1.lcssa = phi i32 [ %split49, %._crit_edge46 ], [ %.0154, %126 ]
  %161 = getelementptr inbounds nuw i8, ptr %.13450, i64 1
  %162 = add i64 %.1653, 1
  %163 = icmp ult i64 %162, %1
  br i1 %163, label %126, label %._crit_edge56, !llvm.loop !18

._crit_edge56:                                    ; preds = %160
  %split57 = phi i64 [ %.129.lcssa, %160 ]
  %split58 = phi i8 [ %.125.lcssa, %160 ]
  %split59 = phi i32 [ %.1.lcssa, %160 ]
  br label %164

164:                                              ; preds = %._crit_edge56, %.preheader3
  %.028.lcssa = phi i64 [ %split57, %._crit_edge56 ], [ 0, %.preheader3 ]
  %.024.lcssa = phi i8 [ %split58, %._crit_edge56 ], [ 0, %.preheader3 ]
  %.01.lcssa = phi i32 [ %split59, %._crit_edge56 ], [ -1, %.preheader3 ]
  %165 = sub nsw i32 7, %.01.lcssa
  %166 = zext i8 %.024.lcssa to i32
  %167 = shl i32 %166, %165
  %168 = trunc i32 %167 to i8
  %169 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %168, ptr %169, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %170

.preheader2:                                      ; preds = %208
  br label %211

170:                                              ; preds = %164, %208
  %.068 = phi ptr [ %9, %164 ], [ %172, %208 ]
  %.2767 = phi i64 [ 0, %164 ], [ %209, %208 ]
  %171 = trunc nuw i64 %.2767 to i8
  store i8 %171, ptr %.068, align 1
  %172 = getelementptr inbounds nuw i8, ptr %.068, i64 1
  %173 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.2767
  %174 = load i32, ptr %173, align 4
  %175 = getelementptr inbounds nuw i8, ptr %7, i64 %.2767
  %176 = load i8, ptr %175, align 1
  %177 = zext i8 %176 to i32
  %178 = or i32 %174, %177
  %.not3 = icmp eq i32 %178, 0
  br i1 %.not3, label %208, label %179

179:                                              ; preds = %170
  %180 = add nsw i32 %177, -1
  %181 = shl nuw i32 1, %180
  %182 = sext i32 %181 to i64
  %183 = zext i8 %176 to i64
  %184 = icmp ult i64 0, %183
  br i1 %184, label %.lr.ph64, label %206

.lr.ph64:                                         ; preds = %179
  %185 = add nsw i64 %183, -1
  %xtraiter81 = and i64 %183, 1
  %186 = icmp ult i64 %185, 1
  br i1 %186, label %.epil.preheader80, label %.lr.ph64.new

.lr.ph64.new:                                     ; preds = %.lr.ph64
  %unroll_iter86 = sub i64 %183, %xtraiter81
  br label %187

187:                                              ; preds = %187, %.lr.ph64.new
  %.562 = phi i64 [ 0, %.lr.ph64.new ], [ %200, %187 ]
  %.11661 = phi i64 [ %182, %.lr.ph64.new ], [ %199, %187 ]
  %.01960 = phi i32 [ 0, %.lr.ph64.new ], [ %spec.select1.1, %187 ]
  %niter87 = phi i64 [ 0, %.lr.ph64.new ], [ %niter87.next.1, %187 ]
  %188 = shl i32 %.01960, 1
  %189 = or disjoint i32 %188, 1
  %190 = zext i32 %174 to i64
  %191 = and i64 %.11661, %190
  %.not4 = icmp eq i64 %191, 0
  %192 = add i32 %188, 2
  %spec.select1 = select i1 %.not4, i32 %189, i32 %192
  %193 = lshr i64 %.11661, 1
  %194 = shl i32 %spec.select1, 1
  %195 = or disjoint i32 %194, 1
  %196 = zext i32 %174 to i64
  %197 = and i64 %193, %196
  %.not4.1 = icmp eq i64 %197, 0
  %198 = add i32 %194, 2
  %spec.select1.1 = select i1 %.not4.1, i32 %195, i32 %198
  %199 = lshr i64 %193, 1
  %200 = add i64 %.562, 2
  %niter87.next.1 = add i64 %niter87, 2
  %niter87.ncmp.1 = icmp ne i64 %niter87.next.1, %unroll_iter86
  br i1 %niter87.ncmp.1, label %187, label %._crit_edge65.unr-lcssa, !llvm.loop !19

._crit_edge65.unr-lcssa:                          ; preds = %187
  %split66.ph = phi i32 [ %spec.select1.1, %187 ]
  %.11661.unr = phi i64 [ %199, %187 ]
  %.01960.unr = phi i32 [ %spec.select1.1, %187 ]
  %lcmp.mod83 = icmp ne i64 %xtraiter81, 0
  br i1 %lcmp.mod83, label %.epil.preheader80, label %._crit_edge65

.epil.preheader80:                                ; preds = %._crit_edge65.unr-lcssa, %.lr.ph64
  %.11661.epil.init = phi i64 [ %182, %.lr.ph64 ], [ %.11661.unr, %._crit_edge65.unr-lcssa ]
  %.01960.epil.init = phi i32 [ 0, %.lr.ph64 ], [ %.01960.unr, %._crit_edge65.unr-lcssa ]
  %lcmp.mod85 = icmp ne i64 %xtraiter81, 0
  call void @llvm.assume(i1 %lcmp.mod85)
  br label %._crit_edge65.epilog-lcssa

._crit_edge65.epilog-lcssa:                       ; preds = %.epil.preheader80
  %201 = shl i32 %.01960.epil.init, 1
  %202 = or disjoint i32 %201, 1
  %203 = zext i32 %174 to i64
  %204 = and i64 %.11661.epil.init, %203
  %.not4.epil = icmp eq i64 %204, 0
  %205 = add i32 %201, 2
  %spec.select1.epil = select i1 %.not4.epil, i32 %202, i32 %205
  br label %._crit_edge65

._crit_edge65:                                    ; preds = %._crit_edge65.unr-lcssa, %._crit_edge65.epilog-lcssa
  %split66 = phi i32 [ %split66.ph, %._crit_edge65.unr-lcssa ], [ %spec.select1.epil, %._crit_edge65.epilog-lcssa ]
  br label %206

206:                                              ; preds = %._crit_edge65, %179
  %.019.lcssa = phi i32 [ %split66, %._crit_edge65 ], [ 0, %179 ]
  %207 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.2767
  store i32 %.019.lcssa, ptr %207, align 4
  br label %208

208:                                              ; preds = %206, %170
  %209 = add nuw nsw i64 %.2767, 1
  %210 = icmp samesign ult i64 %209, 256
  br i1 %210, label %170, label %.preheader2, !llvm.loop !20

.preheader1:                                      ; preds = %.critedge
  br label %230

211:                                              ; preds = %.preheader2, %.critedge
  %.670 = phi i64 [ 1, %.preheader2 ], [ %228, %.critedge ]
  %212 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.670
  %213 = load i32, ptr %212, align 4
  %214 = getelementptr inbounds nuw i8, ptr %9, i64 %.670
  %215 = load i8, ptr %214, align 1
  br label %216

216:                                              ; preds = %211, %221
  %.3869 = phi i64 [ %.670, %211 ], [ %217, %221 ]
  %217 = add i64 %.3869, -1
  %218 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %217
  %219 = load i32, ptr %218, align 4
  %220 = icmp ugt i32 %219, %213
  br i1 %220, label %221, label %.critedge

221:                                              ; preds = %216
  %222 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.3869
  store i32 %219, ptr %222, align 4
  %223 = getelementptr inbounds nuw i8, ptr %9, i64 %217
  %224 = load i8, ptr %223, align 1
  %225 = getelementptr inbounds nuw i8, ptr %9, i64 %.3869
  store i8 %224, ptr %225, align 1
  %.not2 = icmp eq i64 %217, 0
  br i1 %.not2, label %.critedge, label %216, !llvm.loop !21

.critedge:                                        ; preds = %216, %221
  %.38.lcssa = phi i64 [ %.3869, %216 ], [ %217, %221 ]
  %226 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %213, ptr %226, align 4
  %227 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %215, ptr %227, align 1
  %228 = add nuw nsw i64 %.670, 1
  %229 = icmp samesign ult i64 %228, 256
  br i1 %229, label %211, label %.preheader1, !llvm.loop !22

230:                                              ; preds = %230, %.preheader1
  %.49 = phi i64 [ %234, %230 ], [ 0, %.preheader1 ]
  %231 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %232 = load i32, ptr %231, align 4
  %233 = icmp eq i32 %232, 0
  %234 = add i64 %.49, 1
  br i1 %233, label %230, label %.preheader, !llvm.loop !23

.preheader:                                       ; preds = %230
  %.49.lcssa = phi i64 [ %.49, %230 ]
  %235 = icmp ult i64 0, %1
  br i1 %235, label %.lr.ph77, label %259

.lr.ph77:                                         ; preds = %.preheader
  br label %236

236:                                              ; preds = %.lr.ph77, %255
  %.776 = phi i64 [ %.49.lcssa, %.lr.ph77 ], [ %.9, %255 ]
  %.31375 = phi i64 [ 0, %.lr.ph77 ], [ %.414, %255 ]
  %.21774 = phi i64 [ 128, %.lr.ph77 ], [ %.318, %255 ]
  %.22173 = phi i32 [ 0, %.lr.ph77 ], [ %.423, %255 ]
  %.03172 = phi ptr [ %11, %.lr.ph77 ], [ %.132, %255 ]
  %.23571 = phi ptr [ %0, %.lr.ph77 ], [ %.336, %255 ]
  %237 = shl i32 %.22173, 1
  %238 = or disjoint i32 %237, 1
  %239 = load i8, ptr %.03172, align 1
  %240 = zext i8 %239 to i64
  %241 = and i64 %.21774, %240
  %.not1 = icmp eq i64 %241, 0
  %242 = add i32 %237, 2
  %spec.select2 = select i1 %.not1, i32 %238, i32 %242
  br label %243

243:                                              ; preds = %243, %236
  %.8 = phi i64 [ %.776, %236 ], [ %247, %243 ]
  %244 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %245 = load i32, ptr %244, align 4
  %246 = icmp ult i32 %245, %spec.select2
  %247 = add i64 %.8, 1
  br i1 %246, label %243, label %248, !llvm.loop !24

248:                                              ; preds = %243
  %.8.lcssa = phi i64 [ %.8, %243 ]
  %.lcssa = phi i32 [ %245, %243 ]
  %249 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %249, label %250, label %255

250:                                              ; preds = %248
  %251 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %252 = load i8, ptr %251, align 1
  store i8 %252, ptr %.23571, align 1
  %253 = getelementptr inbounds nuw i8, ptr %.23571, i64 1
  %254 = add i64 %.31375, 1
  br label %255

255:                                              ; preds = %250, %248
  %.336 = phi ptr [ %253, %250 ], [ %.23571, %248 ]
  %.423 = phi i32 [ 0, %250 ], [ %spec.select2, %248 ]
  %.414 = phi i64 [ %254, %250 ], [ %.31375, %248 ]
  %.9 = phi i64 [ %.49.lcssa, %250 ], [ %.8.lcssa, %248 ]
  %256 = icmp ult i64 %.21774, 2
  %257 = lshr i64 %.21774, 1
  %.132.idx = zext i1 %256 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.03172, i64 %.132.idx
  %.318 = select i1 %256, i64 128, i64 %257
  %258 = icmp ult i64 %.414, %1
  br i1 %258, label %236, label %._crit_edge78, !llvm.loop !25

._crit_edge78:                                    ; preds = %255
  br label %259

259:                                              ; preds = %._crit_edge78, %.preheader
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
  %9 = sdiv i32 %2, 2
  %.not3 = icmp sgt i32 %3, %9
  br i1 %.not3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %4
  br label %10

.._crit_edge_crit_edge:                           ; preds = %36
  %split6 = phi i32 [ %.0, %36 ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %4
  %.01.lcssa = phi i32 [ %split6, %.._crit_edge_crit_edge ], [ %3, %4 ]
  %.pre = shl i64 %8, 32
  br label %40

10:                                               ; preds = %.lr.ph, %36
  %.014 = phi i32 [ %3, %.lr.ph ], [ %.0, %36 ]
  %11 = shl nsw i32 %.014, 1
  %12 = icmp slt i32 %11, %2
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = sext i32 %11 to i64
  %15 = getelementptr [8 x i8], ptr %1, i64 %14
  %16 = getelementptr i8, ptr %15, i64 -8
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %17
  %19 = load i64, ptr %18, align 8
  %20 = load i64, ptr %15, align 8
  %21 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %20
  %22 = load i64, ptr %21, align 8
  %23 = icmp ugt i64 %19, %22
  %24 = zext i1 %23 to i32
  %spec.select = or disjoint i32 %11, %24
  br label %25

25:                                               ; preds = %13, %10
  %.0 = phi i32 [ %11, %10 ], [ %spec.select, %13 ]
  %sext = shl i64 %8, 32
  %26 = ashr exact i64 %sext, 29
  %27 = getelementptr inbounds i8, ptr %0, i64 %26
  %28 = load i64, ptr %27, align 8
  %29 = sext i32 %.0 to i64
  %30 = getelementptr [8 x i8], ptr %1, i64 %29
  %31 = getelementptr i8, ptr %30, i64 -8
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %32
  %34 = load i64, ptr %33, align 8
  %35 = icmp ult i64 %28, %34
  br i1 %35, label %split, label %36

36:                                               ; preds = %25
  %37 = sext i32 %.014 to i64
  %38 = getelementptr [8 x i8], ptr %1, i64 %37
  %39 = getelementptr i8, ptr %38, i64 -8
  store i64 %32, ptr %39, align 8
  %.not = icmp sgt i32 %.0, %9
  br i1 %.not, label %.._crit_edge_crit_edge, label %10, !llvm.loop !26

split:                                            ; preds = %25
  %sext.lcssa = phi i64 [ %sext, %25 ]
  %.01.lcssa1 = phi i32 [ %.014, %25 ]
  br label %40

40:                                               ; preds = %split, %._crit_edge
  %.012 = phi i32 [ %.01.lcssa1, %split ], [ %.01.lcssa, %._crit_edge ]
  %sext1.pre-phi = phi i64 [ %sext.lcssa, %split ], [ %.pre, %._crit_edge ]
  %41 = ashr exact i64 %sext1.pre-phi, 32
  %42 = sext i32 %.012 to i64
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
  br i1 %3, label %.preheader, label %11

.preheader:                                       ; preds = %2
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %7

5:                                                ; preds = %7
  %.01 = phi i32 [ %10, %7 ]
  %6 = icmp slt i32 %.01, %0
  br i1 %6, label %7, label %.loopexit, !llvm.loop !27

7:                                                ; preds = %.preheader, %5
  %.011 = phi i32 [ 1, %.preheader ], [ %.01, %5 ]
  %8 = load ptr, ptr %4, align 8
  %9 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(4) @.str.4) #11
  %.not = icmp eq i32 %9, 0
  %10 = add nuw nsw i32 %.011, 1
  br i1 %.not, label %.loopexit, label %5

.loopexit:                                        ; preds = %5, %7
  %.not1.ph = phi i1 [ false, %7 ], [ true, %5 ]
  br label %11

11:                                               ; preds = %.loopexit, %2
  %.not1 = phi i1 [ true, %2 ], [ %.not1.ph, %.loopexit ]
  %12 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %13

13:                                               ; preds = %11
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  call void @free(ptr noundef %12) #11
  br i1 %.not1, label %17, label %14

14:                                               ; preds = %13
  %15 = call ptr @__acrt_iob_func(i32 noundef 1) #11
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.5, double noundef 0.000000e+00) #11
  br label %20

17:                                               ; preds = %13
  %18 = call ptr @__acrt_iob_func(i32 noundef 1) #11
  %19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.6, double noundef 0.000000e+00) #11
  br label %20

20:                                               ; preds = %17, %14
  %21 = call ptr @__acrt_iob_func(i32 noundef 1) #11
  %22 = call i32 @fflush(ptr noundef %21) #11
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
