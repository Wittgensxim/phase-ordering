; ModuleID = 'results\paper_full\CoyoteBench_huffbench\round_002\output.ll'
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
  %lcmp.mod78 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod78)
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
  %.not17 = icmp eq i64 %.010.lcssa, 0
  br i1 %.not17, label %.preheader4, label %.lr.ph19

.lr.ph19:                                         ; preds = %.preheader5
  br label %67

50:                                               ; preds = %63, %.preheader6
  %.1316 = phi i64 [ 0, %.preheader6 ], [ %64, %63 ]
  %.01015 = phi i64 [ 0, %.preheader6 ], [ %.111.1, %63 ]
  %51 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.1316
  %52 = load i64, ptr %51, align 8
  %.not8 = icmp eq i64 %52, 0
  br i1 %.not8, label %56, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.01015
  store i64 %.1316, ptr %54, align 8
  %55 = add i64 %.01015, 1
  br label %56

56:                                               ; preds = %53, %50
  %.111 = phi i64 [ %55, %53 ], [ %.01015, %50 ]
  %57 = add nuw nsw i64 %.1316, 1
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
  %64 = add nuw nsw i64 %.1316, 2
  %65 = icmp samesign ult i64 %64, 256
  br i1 %65, label %50, label %.preheader5, !llvm.loop !12

..preheader4_crit_edge:                           ; preds = %67
  br label %.preheader4

.preheader4:                                      ; preds = %..preheader4_crit_edge, %.preheader5
  %66 = icmp ugt i64 %.010.lcssa, 1
  br i1 %66, label %.lr.ph21, label %92

.lr.ph21:                                         ; preds = %.preheader4
  br label %71

67:                                               ; preds = %.lr.ph19, %67
  %.2418 = phi i64 [ %.010.lcssa, %.lr.ph19 ], [ %70, %67 ]
  %68 = trunc i64 %.010.lcssa to i32
  %69 = trunc i64 %.2418 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %68, i32 noundef %69)
  %70 = add i64 %.2418, -1
  %.not = icmp eq i64 %70, 0
  br i1 %.not, label %..preheader4_crit_edge, label %67, !llvm.loop !13

71:                                               ; preds = %.lr.ph21, %71
  %.21220 = phi i64 [ %.010.lcssa, %.lr.ph21 ], [ %72, %71 ]
  %72 = add i64 %.21220, -1
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
  %83 = add i64 %.21220, 255
  %84 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %83
  store i64 %82, ptr %84, align 8
  %85 = trunc i64 %83 to i32
  %86 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %73
  store i32 %85, ptr %86, align 4
  %87 = trunc i64 %.21220 to i32
  %88 = sub i32 -255, %87
  %89 = load i64, ptr %4, align 16
  %90 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %89
  store i32 %88, ptr %90, align 4
  store i64 %83, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %76, i32 noundef 1)
  %91 = icmp ugt i64 %72, 1
  br i1 %91, label %71, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %71
  %split = phi i64 [ %72, %71 ]
  br label %92

92:                                               ; preds = %._crit_edge, %.preheader4
  %.212.lcssa = phi i64 [ %split, %._crit_edge ], [ %.010.lcssa, %.preheader4 ]
  %93 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %94 = getelementptr inbounds nuw i8, ptr %93, i64 1024
  store i32 0, ptr %94, align 4
  br label %95

95:                                               ; preds = %92, %113
  %.03937 = phi i64 [ 0, %92 ], [ %.140, %113 ]
  %.04236 = phi i64 [ 0, %92 ], [ %114, %113 ]
  %.04535 = phi i64 [ 0, %92 ], [ %.146, %113 ]
  %96 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04236
  %97 = load i64, ptr %96, align 8
  %.not6 = icmp eq i64 %97, 0
  br i1 %.not6, label %98, label %101

98:                                               ; preds = %95
  %99 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04236
  store i32 0, ptr %99, align 4
  %100 = getelementptr inbounds nuw i8, ptr %7, i64 %.04236
  store i8 0, ptr %100, align 1
  br label %113

101:                                              ; preds = %95
  %.037.in22 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.04236
  %.03723 = load i32, ptr %.037.in22, align 4
  %.not724 = icmp eq i32 %.03723, 0
  br i1 %.not724, label %108, label %.lr.ph31

.lr.ph31:                                         ; preds = %101
  br label %102

102:                                              ; preds = %.lr.ph31, %102
  %.03729 = phi i32 [ %.03723, %.lr.ph31 ], [ %.037, %102 ]
  %.328 = phi i64 [ 0, %.lr.ph31 ], [ %107, %102 ]
  %.0526 = phi i64 [ 1, %.lr.ph31 ], [ %106, %102 ]
  %.04325 = phi i64 [ 0, %.lr.ph31 ], [ %.144, %102 ]
  %103 = icmp slt i32 %.03729, 0
  %104 = select i1 %103, i64 %.0526, i64 0
  %.144 = add i64 %.04325, %104
  %.138 = call i32 @llvm.abs.i32(i32 %.03729, i1 true)
  %105 = zext nneg i32 %.138 to i64
  %106 = shl i64 %.0526, 1
  %107 = add i64 %.328, 1
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %105
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %._crit_edge32, label %102, !llvm.loop !15

._crit_edge32:                                    ; preds = %102
  %split33 = phi i64 [ %.144, %102 ]
  %split34 = phi i64 [ %107, %102 ]
  br label %108

108:                                              ; preds = %._crit_edge32, %101
  %.043.lcssa = phi i64 [ %split33, %._crit_edge32 ], [ 0, %101 ]
  %.3.lcssa = phi i64 [ %split34, %._crit_edge32 ], [ 0, %101 ]
  %109 = trunc i64 %.043.lcssa to i32
  %110 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04236
  store i32 %109, ptr %110, align 4
  %111 = trunc i64 %.3.lcssa to i8
  %112 = getelementptr inbounds nuw i8, ptr %7, i64 %.04236
  store i8 %111, ptr %112, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.04535)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.03937)
  br label %113

113:                                              ; preds = %108, %98
  %.146 = phi i64 [ %spec.select, %108 ], [ %.04535, %98 ]
  %.140 = phi i64 [ %.241, %108 ], [ %.03937, %98 ]
  %114 = add nuw nsw i64 %.04236, 1
  %115 = icmp samesign ult i64 %114, 256
  br i1 %115, label %95, label %116, !llvm.loop !16

116:                                              ; preds = %113
  %.045.lcssa = phi i64 [ %.146, %113 ]
  %.039.lcssa = phi i64 [ %.140, %113 ]
  %117 = icmp ugt i64 %.039.lcssa, 32
  br i1 %117, label %118, label %121

118:                                              ; preds = %116
  %119 = call ptr @__acrt_iob_func(i32 noundef 2) #11
  %120 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %119)
  call void @exit(i32 noundef 1) #12
  unreachable

121:                                              ; preds = %116
  %122 = icmp eq i64 %.045.lcssa, 0
  br i1 %122, label %124, label %.preheader3

.preheader3:                                      ; preds = %121
  %123 = icmp ult i64 0, %1
  br i1 %123, label %.lr.ph54, label %174

.lr.ph54:                                         ; preds = %.preheader3
  br label %127

124:                                              ; preds = %121
  %125 = call ptr @__acrt_iob_func(i32 noundef 2) #11
  %126 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %125)
  call void @exit(i32 noundef 1) #12
  unreachable

127:                                              ; preds = %.lr.ph54, %170
  %.0153 = phi i32 [ -1, %.lr.ph54 ], [ %.1.lcssa, %170 ]
  %.1652 = phi i64 [ 0, %.lr.ph54 ], [ %172, %170 ]
  %.02451 = phi i8 [ 0, %.lr.ph54 ], [ %.125.lcssa, %170 ]
  %.02850 = phi i64 [ 0, %.lr.ph54 ], [ %.129.lcssa, %170 ]
  %.13449 = phi ptr [ %0, %.lr.ph54 ], [ %171, %170 ]
  %128 = load i8, ptr %.13449, align 1
  %129 = zext i8 %128 to i64
  %130 = getelementptr inbounds nuw i8, ptr %7, i64 %129
  %131 = load i8, ptr %130, align 1
  %132 = zext i8 %131 to i32
  %133 = add nsw i32 %132, -1
  %134 = shl nuw i32 1, %133
  %135 = sext i32 %134 to i64
  %136 = load i8, ptr %.13449, align 1
  %137 = zext i8 %136 to i64
  %138 = getelementptr inbounds nuw i8, ptr %7, i64 %137
  %139 = load i8, ptr %138, align 1
  %140 = zext i8 %139 to i64
  %141 = icmp ult i64 0, %140
  br i1 %141, label %.lr.ph44, label %170

.lr.ph44:                                         ; preds = %127
  br label %142

142:                                              ; preds = %.lr.ph44, %154
  %.142 = phi i32 [ %.0153, %.lr.ph44 ], [ %.2, %154 ]
  %.441 = phi i64 [ 0, %.lr.ph44 ], [ %163, %154 ]
  %.01540 = phi i64 [ %135, %.lr.ph44 ], [ %162, %154 ]
  %.12539 = phi i8 [ %.02451, %.lr.ph44 ], [ %.327, %154 ]
  %.12938 = phi i64 [ %.02850, %.lr.ph44 ], [ %.230, %154 ]
  %143 = icmp eq i32 %.142, 7
  br i1 %143, label %144, label %151

144:                                              ; preds = %142
  %145 = getelementptr inbounds nuw i8, ptr %11, i64 %.12938
  store i8 %.12539, ptr %145, align 1
  %146 = add i64 %.12938, 1
  %147 = icmp eq i64 %146, %1
  br i1 %147, label %148, label %154

148:                                              ; preds = %144
  %149 = call ptr @__acrt_iob_func(i32 noundef 2) #11
  %150 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %149)
  call void @exit(i32 noundef 1) #12
  unreachable

151:                                              ; preds = %142
  %152 = add nsw i32 %.142, 1
  %153 = shl i8 %.12539, 1
  br label %154

154:                                              ; preds = %151, %144
  %.230 = phi i64 [ %.12938, %151 ], [ %146, %144 ]
  %.226 = phi i8 [ %153, %151 ], [ 0, %144 ]
  %.2 = phi i32 [ %152, %151 ], [ 0, %144 ]
  %155 = load i8, ptr %.13449, align 1
  %156 = zext i8 %155 to i64
  %157 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %156
  %158 = load i32, ptr %157, align 4
  %159 = zext i32 %158 to i64
  %160 = and i64 %.01540, %159
  %.not5 = icmp ne i64 %160, 0
  %161 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %161
  %162 = lshr i64 %.01540, 1
  %163 = add i64 %.441, 1
  %164 = load i8, ptr %.13449, align 1
  %165 = zext i8 %164 to i64
  %166 = getelementptr inbounds nuw i8, ptr %7, i64 %165
  %167 = load i8, ptr %166, align 1
  %168 = zext i8 %167 to i64
  %169 = icmp ult i64 %163, %168
  br i1 %169, label %142, label %._crit_edge45, !llvm.loop !17

._crit_edge45:                                    ; preds = %154
  %split46 = phi i64 [ %.230, %154 ]
  %split47 = phi i8 [ %.327, %154 ]
  %split48 = phi i32 [ %.2, %154 ]
  br label %170

170:                                              ; preds = %._crit_edge45, %127
  %.129.lcssa = phi i64 [ %split46, %._crit_edge45 ], [ %.02850, %127 ]
  %.125.lcssa = phi i8 [ %split47, %._crit_edge45 ], [ %.02451, %127 ]
  %.1.lcssa = phi i32 [ %split48, %._crit_edge45 ], [ %.0153, %127 ]
  %171 = getelementptr inbounds nuw i8, ptr %.13449, i64 1
  %172 = add i64 %.1652, 1
  %173 = icmp ult i64 %172, %1
  br i1 %173, label %127, label %._crit_edge55, !llvm.loop !18

._crit_edge55:                                    ; preds = %170
  %split56 = phi i64 [ %.129.lcssa, %170 ]
  %split57 = phi i8 [ %.125.lcssa, %170 ]
  %split58 = phi i32 [ %.1.lcssa, %170 ]
  br label %174

174:                                              ; preds = %._crit_edge55, %.preheader3
  %.028.lcssa = phi i64 [ %split56, %._crit_edge55 ], [ 0, %.preheader3 ]
  %.024.lcssa = phi i8 [ %split57, %._crit_edge55 ], [ 0, %.preheader3 ]
  %.01.lcssa = phi i32 [ %split58, %._crit_edge55 ], [ -1, %.preheader3 ]
  %175 = sub nsw i32 7, %.01.lcssa
  %176 = zext i8 %.024.lcssa to i32
  %177 = shl i32 %176, %175
  %178 = trunc i32 %177 to i8
  %179 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %178, ptr %179, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %180

.preheader2:                                      ; preds = %210
  br label %213

180:                                              ; preds = %174, %210
  %.067 = phi ptr [ %9, %174 ], [ %182, %210 ]
  %.2766 = phi i64 [ 0, %174 ], [ %211, %210 ]
  %181 = trunc nuw i64 %.2766 to i8
  store i8 %181, ptr %.067, align 1
  %182 = getelementptr inbounds nuw i8, ptr %.067, i64 1
  %183 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.2766
  %184 = load i32, ptr %183, align 4
  %185 = getelementptr inbounds nuw i8, ptr %7, i64 %.2766
  %186 = load i8, ptr %185, align 1
  %187 = zext i8 %186 to i32
  %188 = or i32 %184, %187
  %.not3 = icmp eq i32 %188, 0
  br i1 %.not3, label %210, label %189

189:                                              ; preds = %180
  %190 = add nsw i32 %187, -1
  %191 = shl nuw i32 1, %190
  %192 = sext i32 %191 to i64
  %193 = load i8, ptr %185, align 1
  %194 = zext i8 %193 to i64
  %195 = icmp ult i64 0, %194
  br i1 %195, label %.lr.ph63, label %208

.lr.ph63:                                         ; preds = %189
  br label %196

196:                                              ; preds = %.lr.ph63, %196
  %.561 = phi i64 [ 0, %.lr.ph63 ], [ %204, %196 ]
  %.11660 = phi i64 [ %192, %.lr.ph63 ], [ %203, %196 ]
  %.01959 = phi i32 [ 0, %.lr.ph63 ], [ %spec.select1, %196 ]
  %197 = shl i32 %.01959, 1
  %198 = or disjoint i32 %197, 1
  %199 = load i32, ptr %183, align 4
  %200 = zext i32 %199 to i64
  %201 = and i64 %.11660, %200
  %.not4 = icmp eq i64 %201, 0
  %202 = add i32 %197, 2
  %spec.select1 = select i1 %.not4, i32 %198, i32 %202
  %203 = lshr i64 %.11660, 1
  %204 = add i64 %.561, 1
  %205 = load i8, ptr %185, align 1
  %206 = zext i8 %205 to i64
  %207 = icmp ult i64 %204, %206
  br i1 %207, label %196, label %._crit_edge64, !llvm.loop !19

._crit_edge64:                                    ; preds = %196
  %split65 = phi i32 [ %spec.select1, %196 ]
  br label %208

208:                                              ; preds = %._crit_edge64, %189
  %.019.lcssa = phi i32 [ %split65, %._crit_edge64 ], [ 0, %189 ]
  %209 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.2766
  store i32 %.019.lcssa, ptr %209, align 4
  br label %210

210:                                              ; preds = %208, %180
  %211 = add nuw nsw i64 %.2766, 1
  %212 = icmp samesign ult i64 %211, 256
  br i1 %212, label %180, label %.preheader2, !llvm.loop !20

.preheader1:                                      ; preds = %.critedge
  br label %232

213:                                              ; preds = %.preheader2, %.critedge
  %.669 = phi i64 [ 1, %.preheader2 ], [ %230, %.critedge ]
  %214 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.669
  %215 = load i32, ptr %214, align 4
  %216 = getelementptr inbounds nuw i8, ptr %9, i64 %.669
  %217 = load i8, ptr %216, align 1
  br label %218

218:                                              ; preds = %213, %223
  %.3868 = phi i64 [ %.669, %213 ], [ %219, %223 ]
  %219 = add i64 %.3868, -1
  %220 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %219
  %221 = load i32, ptr %220, align 4
  %222 = icmp ugt i32 %221, %215
  br i1 %222, label %223, label %.critedge

223:                                              ; preds = %218
  %224 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.3868
  store i32 %221, ptr %224, align 4
  %225 = getelementptr inbounds nuw i8, ptr %9, i64 %219
  %226 = load i8, ptr %225, align 1
  %227 = getelementptr inbounds nuw i8, ptr %9, i64 %.3868
  store i8 %226, ptr %227, align 1
  %.not2 = icmp eq i64 %219, 0
  br i1 %.not2, label %.critedge, label %218, !llvm.loop !21

.critedge:                                        ; preds = %218, %223
  %.38.lcssa = phi i64 [ %.3868, %218 ], [ %219, %223 ]
  %228 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %215, ptr %228, align 4
  %229 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %217, ptr %229, align 1
  %230 = add nuw nsw i64 %.669, 1
  %231 = icmp samesign ult i64 %230, 256
  br i1 %231, label %213, label %.preheader1, !llvm.loop !22

232:                                              ; preds = %232, %.preheader1
  %.49 = phi i64 [ %236, %232 ], [ 0, %.preheader1 ]
  %233 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %234 = load i32, ptr %233, align 4
  %235 = icmp eq i32 %234, 0
  %236 = add i64 %.49, 1
  br i1 %235, label %232, label %.preheader, !llvm.loop !23

.preheader:                                       ; preds = %232
  %.49.lcssa = phi i64 [ %.49, %232 ]
  %237 = icmp ult i64 0, %1
  br i1 %237, label %.lr.ph76, label %261

.lr.ph76:                                         ; preds = %.preheader
  br label %238

238:                                              ; preds = %.lr.ph76, %257
  %.775 = phi i64 [ %.49.lcssa, %.lr.ph76 ], [ %.9, %257 ]
  %.31374 = phi i64 [ 0, %.lr.ph76 ], [ %.414, %257 ]
  %.21773 = phi i64 [ 128, %.lr.ph76 ], [ %.318, %257 ]
  %.22172 = phi i32 [ 0, %.lr.ph76 ], [ %.423, %257 ]
  %.03171 = phi ptr [ %11, %.lr.ph76 ], [ %.132, %257 ]
  %.23570 = phi ptr [ %0, %.lr.ph76 ], [ %.336, %257 ]
  %239 = shl i32 %.22172, 1
  %240 = or disjoint i32 %239, 1
  %241 = load i8, ptr %.03171, align 1
  %242 = zext i8 %241 to i64
  %243 = and i64 %.21773, %242
  %.not1 = icmp eq i64 %243, 0
  %244 = add i32 %239, 2
  %spec.select2 = select i1 %.not1, i32 %240, i32 %244
  br label %245

245:                                              ; preds = %245, %238
  %.8 = phi i64 [ %.775, %238 ], [ %249, %245 ]
  %246 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %247 = load i32, ptr %246, align 4
  %248 = icmp ult i32 %247, %spec.select2
  %249 = add i64 %.8, 1
  br i1 %248, label %245, label %250, !llvm.loop !24

250:                                              ; preds = %245
  %.8.lcssa = phi i64 [ %.8, %245 ]
  %.lcssa = phi i32 [ %247, %245 ]
  %251 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %251, label %252, label %257

252:                                              ; preds = %250
  %253 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %254 = load i8, ptr %253, align 1
  store i8 %254, ptr %.23570, align 1
  %255 = getelementptr inbounds nuw i8, ptr %.23570, i64 1
  %256 = add i64 %.31374, 1
  br label %257

257:                                              ; preds = %252, %250
  %.336 = phi ptr [ %255, %252 ], [ %.23570, %250 ]
  %.423 = phi i32 [ 0, %252 ], [ %spec.select2, %250 ]
  %.414 = phi i64 [ %256, %252 ], [ %.31374, %250 ]
  %.9 = phi i64 [ %.49.lcssa, %252 ], [ %.8.lcssa, %250 ]
  %258 = icmp ult i64 %.21773, 2
  %259 = lshr i64 %.21773, 1
  %.132.idx = zext i1 %258 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.03171, i64 %.132.idx
  %.318 = select i1 %258, i64 128, i64 %259
  %260 = icmp ult i64 %.414, %1
  br i1 %260, label %238, label %._crit_edge77, !llvm.loop !25

._crit_edge77:                                    ; preds = %257
  br label %261

261:                                              ; preds = %._crit_edge77, %.preheader
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
  %.not1 = icmp sgt i32 %3, %9
  br i1 %.not1, label %40, label %.lr.ph

.lr.ph:                                           ; preds = %4
  br label %10

10:                                               ; preds = %.lr.ph, %36
  %.012 = phi i32 [ %3, %.lr.ph ], [ %.0, %36 ]
  %11 = shl nsw i32 %.012, 1
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
  br i1 %35, label %._crit_edge, label %36

36:                                               ; preds = %25
  %37 = sext i32 %.012 to i64
  %38 = getelementptr [8 x i8], ptr %1, i64 %37
  %39 = getelementptr i8, ptr %38, i64 -8
  store i64 %32, ptr %39, align 8
  %.not = icmp sgt i32 %.0, %9
  br i1 %.not, label %._crit_edge3, label %10, !llvm.loop !26

._crit_edge:                                      ; preds = %25
  %split = phi i32 [ %.012, %25 ]
  br label %40

._crit_edge3:                                     ; preds = %36
  %split4 = phi i32 [ %.0, %36 ]
  br label %40

40:                                               ; preds = %._crit_edge3, %._crit_edge, %4
  %.01.lcssa = phi i32 [ %split, %._crit_edge ], [ %split4, %._crit_edge3 ], [ %3, %4 ]
  %sext1 = shl i64 %8, 32
  %41 = ashr exact i64 %sext1, 32
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
