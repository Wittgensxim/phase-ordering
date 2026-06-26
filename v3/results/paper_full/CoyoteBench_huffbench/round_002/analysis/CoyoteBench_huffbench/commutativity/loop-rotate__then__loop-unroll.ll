; ModuleID = 'results\paper_full\CoyoteBench_huffbench\round_001\output.ll'
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
  %2 = call ptr @malloc(i64 noundef %0) #7
  %3 = icmp ult i64 0, %0
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
  %8 = getelementptr inbounds nuw i8, ptr %.011, i32 1
  %9 = add nsw i32 %.02, 1
  %10 = sext i32 %9 to i64
  %11 = icmp ult i64 %10, %0
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
  %11 = call ptr @malloc(i64 noundef %10) #7
  call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %10, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %5, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %6, i8 0, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %7, i8 0, i64 256, i1 false)
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
  %18 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %17
  %19 = load i64, ptr %18, align 8
  %20 = add i64 %19, 1
  store i64 %20, ptr %18, align 8
  %21 = getelementptr inbounds nuw i8, ptr %.03313.epil, i32 1
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
  br label %51

24:                                               ; preds = %24, %.lr.ph.new
  %.0214 = phi i64 [ 0, %.lr.ph.new ], [ %49, %24 ]
  %.03313 = phi ptr [ %0, %.lr.ph.new ], [ %48, %24 ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %24 ]
  %25 = load i8, ptr %.03313, align 1
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %26
  %28 = load i64, ptr %27, align 8
  %29 = add i64 %28, 1
  store i64 %29, ptr %27, align 8
  %30 = getelementptr inbounds nuw i8, ptr %.03313, i32 1
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i64
  %33 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %32
  %34 = load i64, ptr %33, align 8
  %35 = add i64 %34, 1
  store i64 %35, ptr %33, align 8
  %36 = getelementptr inbounds nuw i8, ptr %30, i32 1
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %38
  %40 = load i64, ptr %39, align 8
  %41 = add i64 %40, 1
  store i64 %41, ptr %39, align 8
  %42 = getelementptr inbounds nuw i8, ptr %36, i32 1
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %44
  %46 = load i64, ptr %45, align 8
  %47 = add i64 %46, 1
  store i64 %47, ptr %45, align 8
  %48 = getelementptr inbounds nuw i8, ptr %42, i32 1
  %49 = add i64 %.0214, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp ne i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %24, label %..preheader6_crit_edge.unr-lcssa, !llvm.loop !11

.preheader5:                                      ; preds = %66
  %.010.lcssa = phi i64 [ %.111.1, %66 ]
  %50 = icmp ugt i64 %.010.lcssa, 0
  br i1 %50, label %.lr.ph18, label %.preheader4

.lr.ph18:                                         ; preds = %.preheader5
  br label %70

51:                                               ; preds = %66, %.preheader6
  %.1316 = phi i64 [ 0, %.preheader6 ], [ %67, %66 ]
  %.01015 = phi i64 [ 0, %.preheader6 ], [ %.111.1, %66 ]
  %52 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.1316
  %53 = load i64, ptr %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.01015
  store i64 %.1316, ptr %56, align 8
  %57 = add i64 %.01015, 1
  br label %58

58:                                               ; preds = %55, %51
  %.111 = phi i64 [ %57, %55 ], [ %.01015, %51 ]
  %59 = add nuw nsw i64 %.1316, 1
  %60 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %59
  %61 = load i64, ptr %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.111
  store i64 %59, ptr %64, align 8
  %65 = add i64 %.111, 1
  br label %66

66:                                               ; preds = %63, %58
  %.111.1 = phi i64 [ %65, %63 ], [ %.111, %58 ]
  %67 = add nuw nsw i64 %.1316, 2
  %68 = icmp samesign ult i64 %67, 256
  br i1 %68, label %51, label %.preheader5, !llvm.loop !12

..preheader4_crit_edge:                           ; preds = %70
  br label %.preheader4

.preheader4:                                      ; preds = %..preheader4_crit_edge, %.preheader5
  %69 = icmp ugt i64 %.010.lcssa, 1
  br i1 %69, label %.lr.ph20, label %96

.lr.ph20:                                         ; preds = %.preheader4
  br label %75

70:                                               ; preds = %.lr.ph18, %70
  %.2417 = phi i64 [ %.010.lcssa, %.lr.ph18 ], [ %73, %70 ]
  %71 = trunc i64 %.010.lcssa to i32
  %72 = trunc i64 %.2417 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %71, i32 noundef %72)
  %73 = add i64 %.2417, -1
  %74 = icmp ugt i64 %73, 0
  br i1 %74, label %70, label %..preheader4_crit_edge, !llvm.loop !13

75:                                               ; preds = %.lr.ph20, %75
  %.21219 = phi i64 [ %.010.lcssa, %.lr.ph20 ], [ %76, %75 ]
  %76 = add i64 %.21219, -1
  %77 = load i64, ptr %4, align 16
  %78 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %76
  %79 = load i64, ptr %78, align 8
  store i64 %79, ptr %4, align 16
  %80 = trunc i64 %76 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %80, i32 noundef 1)
  %81 = load i64, ptr %4, align 16
  %82 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %81
  %83 = load i64, ptr %82, align 8
  %84 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %77
  %85 = load i64, ptr %84, align 8
  %86 = add i64 %83, %85
  %87 = add i64 256, %76
  %88 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %87
  store i64 %86, ptr %88, align 8
  %89 = trunc i64 %87 to i32
  %90 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %77
  store i32 %89, ptr %90, align 4
  %91 = sub i64 -256, %76
  %92 = trunc i64 %91 to i32
  %93 = load i64, ptr %4, align 16
  %94 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %93
  store i32 %92, ptr %94, align 4
  store i64 %87, ptr %4, align 16
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %80, i32 noundef 1)
  %95 = icmp ugt i64 %76, 1
  br i1 %95, label %75, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %75
  %split = phi i64 [ %76, %75 ]
  br label %96

96:                                               ; preds = %._crit_edge, %.preheader4
  %.212.lcssa = phi i64 [ %split, %._crit_edge ], [ %.010.lcssa, %.preheader4 ]
  %97 = add i64 256, %.212.lcssa
  %98 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %97
  store i32 0, ptr %98, align 4
  br label %99

99:                                               ; preds = %96, %127
  %.03932 = phi i64 [ 0, %96 ], [ %.140, %127 ]
  %.04231 = phi i64 [ 0, %96 ], [ %128, %127 ]
  %.04530 = phi i64 [ 0, %96 ], [ %.146, %127 ]
  %100 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.04231
  %101 = load i64, ptr %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04231
  store i32 0, ptr %104, align 4
  %105 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04231
  store i8 0, ptr %105, align 1
  br label %127

106:                                              ; preds = %99
  %107 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.04231
  %108 = load i32, ptr %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %.lr.ph26, label %120

.lr.ph26:                                         ; preds = %106
  br label %110

110:                                              ; preds = %.lr.ph26, %110
  %.324 = phi i64 [ 0, %.lr.ph26 ], [ %118, %110 ]
  %.0523 = phi i64 [ 1, %.lr.ph26 ], [ %117, %110 ]
  %.03722 = phi i32 [ %108, %.lr.ph26 ], [ %116, %110 ]
  %.04321 = phi i64 [ 0, %.lr.ph26 ], [ %.144, %110 ]
  %111 = icmp slt i32 %.03722, 0
  %112 = add i64 %.04321, %.0523
  %113 = sub nsw i32 0, %.03722
  %.144 = select i1 %111, i64 %112, i64 %.04321
  %.138 = select i1 %111, i32 %113, i32 %.03722
  %114 = sext i32 %.138 to i64
  %115 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %114
  %116 = load i32, ptr %115, align 4
  %117 = shl i64 %.0523, 1
  %118 = add i64 %.324, 1
  %119 = icmp ne i32 %116, 0
  br i1 %119, label %110, label %._crit_edge27, !llvm.loop !15

._crit_edge27:                                    ; preds = %110
  %split28 = phi i64 [ %.144, %110 ]
  %split29 = phi i64 [ %118, %110 ]
  br label %120

120:                                              ; preds = %._crit_edge27, %106
  %.043.lcssa = phi i64 [ %split28, %._crit_edge27 ], [ 0, %106 ]
  %.3.lcssa = phi i64 [ %split29, %._crit_edge27 ], [ 0, %106 ]
  %121 = trunc i64 %.043.lcssa to i32
  %122 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04231
  store i32 %121, ptr %122, align 4
  %123 = trunc i64 %.3.lcssa to i8
  %124 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04231
  store i8 %123, ptr %124, align 1
  %125 = icmp ugt i64 %.043.lcssa, %.04530
  %spec.select = select i1 %125, i64 %.043.lcssa, i64 %.04530
  %126 = icmp ugt i64 %.3.lcssa, %.03932
  %.241 = select i1 %126, i64 %.3.lcssa, i64 %.03932
  br label %127

127:                                              ; preds = %120, %103
  %.146 = phi i64 [ %spec.select, %120 ], [ %.04530, %103 ]
  %.140 = phi i64 [ %.241, %120 ], [ %.03932, %103 ]
  %128 = add i64 %.04231, 1
  %129 = icmp ult i64 %128, 256
  br i1 %129, label %99, label %130, !llvm.loop !16

130:                                              ; preds = %127
  %.045.lcssa = phi i64 [ %.146, %127 ]
  %.039.lcssa = phi i64 [ %.140, %127 ]
  %131 = icmp ugt i64 %.039.lcssa, 32
  br i1 %131, label %132, label %135

132:                                              ; preds = %130
  %133 = call ptr @__acrt_iob_func(i32 noundef 2)
  %134 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %133, ptr noundef @.str.1) #8
  call void @exit(i32 noundef 1) #9
  unreachable

135:                                              ; preds = %130
  %136 = icmp eq i64 %.045.lcssa, 0
  br i1 %136, label %138, label %.preheader3

.preheader3:                                      ; preds = %135
  %137 = icmp ult i64 0, %1
  br i1 %137, label %.lr.ph49, label %193

.lr.ph49:                                         ; preds = %.preheader3
  br label %141

138:                                              ; preds = %135
  %139 = call ptr @__acrt_iob_func(i32 noundef 2)
  %140 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %139, ptr noundef @.str.2) #8
  call void @exit(i32 noundef 1) #9
  unreachable

141:                                              ; preds = %.lr.ph49, %189
  %.0148 = phi i32 [ -1, %.lr.ph49 ], [ %.1.lcssa, %189 ]
  %.1647 = phi i64 [ 0, %.lr.ph49 ], [ %191, %189 ]
  %.02446 = phi i8 [ 0, %.lr.ph49 ], [ %.125.lcssa, %189 ]
  %.02845 = phi i64 [ 0, %.lr.ph49 ], [ %.129.lcssa, %189 ]
  %.13444 = phi ptr [ %0, %.lr.ph49 ], [ %190, %189 ]
  %142 = load i8, ptr %.13444, align 1
  %143 = zext i8 %142 to i64
  %144 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %143
  %145 = load i8, ptr %144, align 1
  %146 = zext i8 %145 to i32
  %147 = sub nsw i32 %146, 1
  %148 = shl i32 1, %147
  %149 = sext i32 %148 to i64
  %150 = load i8, ptr %.13444, align 1
  %151 = zext i8 %150 to i64
  %152 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %151
  %153 = load i8, ptr %152, align 1
  %154 = zext i8 %153 to i64
  %155 = icmp ult i64 0, %154
  br i1 %155, label %.lr.ph39, label %189

.lr.ph39:                                         ; preds = %141
  br label %156

156:                                              ; preds = %.lr.ph39, %170
  %.137 = phi i32 [ %.0148, %.lr.ph39 ], [ %.2, %170 ]
  %.436 = phi i64 [ 0, %.lr.ph39 ], [ %182, %170 ]
  %.01535 = phi i64 [ %149, %.lr.ph39 ], [ %181, %170 ]
  %.12534 = phi i8 [ %.02446, %.lr.ph39 ], [ %.327, %170 ]
  %.12933 = phi i64 [ %.02845, %.lr.ph39 ], [ %.230, %170 ]
  %157 = icmp eq i32 %.137, 7
  br i1 %157, label %158, label %165

158:                                              ; preds = %156
  %159 = getelementptr inbounds nuw i8, ptr %11, i64 %.12933
  store i8 %.12534, ptr %159, align 1
  %160 = add i64 %.12933, 1
  %161 = icmp eq i64 %160, %1
  br i1 %161, label %162, label %170

162:                                              ; preds = %158
  %163 = call ptr @__acrt_iob_func(i32 noundef 2)
  %164 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %163, ptr noundef @.str.3) #8
  call void @exit(i32 noundef 1) #9
  unreachable

165:                                              ; preds = %156
  %166 = add nsw i32 %.137, 1
  %167 = sext i8 %.12534 to i32
  %168 = shl i32 %167, 1
  %169 = trunc i32 %168 to i8
  br label %170

170:                                              ; preds = %165, %158
  %.230 = phi i64 [ %.12933, %165 ], [ %160, %158 ]
  %.226 = phi i8 [ %169, %165 ], [ 0, %158 ]
  %.2 = phi i32 [ %166, %165 ], [ 0, %158 ]
  %171 = load i8, ptr %.13444, align 1
  %172 = zext i8 %171 to i64
  %173 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %172
  %174 = load i32, ptr %173, align 4
  %175 = zext i32 %174 to i64
  %176 = and i64 %175, %.01535
  %177 = icmp ne i64 %176, 0
  %178 = sext i8 %.226 to i32
  %179 = or i32 %178, 1
  %180 = trunc i32 %179 to i8
  %.327 = select i1 %177, i8 %180, i8 %.226
  %181 = lshr i64 %.01535, 1
  %182 = add i64 %.436, 1
  %183 = load i8, ptr %.13444, align 1
  %184 = zext i8 %183 to i64
  %185 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %184
  %186 = load i8, ptr %185, align 1
  %187 = zext i8 %186 to i64
  %188 = icmp ult i64 %182, %187
  br i1 %188, label %156, label %._crit_edge40, !llvm.loop !17

._crit_edge40:                                    ; preds = %170
  %split41 = phi i64 [ %.230, %170 ]
  %split42 = phi i8 [ %.327, %170 ]
  %split43 = phi i32 [ %.2, %170 ]
  br label %189

189:                                              ; preds = %._crit_edge40, %141
  %.129.lcssa = phi i64 [ %split41, %._crit_edge40 ], [ %.02845, %141 ]
  %.125.lcssa = phi i8 [ %split42, %._crit_edge40 ], [ %.02446, %141 ]
  %.1.lcssa = phi i32 [ %split43, %._crit_edge40 ], [ %.0148, %141 ]
  %190 = getelementptr inbounds nuw i8, ptr %.13444, i32 1
  %191 = add i64 %.1647, 1
  %192 = icmp ult i64 %191, %1
  br i1 %192, label %141, label %._crit_edge50, !llvm.loop !18

._crit_edge50:                                    ; preds = %189
  %split51 = phi i64 [ %.129.lcssa, %189 ]
  %split52 = phi i8 [ %.125.lcssa, %189 ]
  %split53 = phi i32 [ %.1.lcssa, %189 ]
  br label %193

193:                                              ; preds = %._crit_edge50, %.preheader3
  %.028.lcssa = phi i64 [ %split51, %._crit_edge50 ], [ 0, %.preheader3 ]
  %.024.lcssa = phi i8 [ %split52, %._crit_edge50 ], [ 0, %.preheader3 ]
  %.01.lcssa = phi i32 [ %split53, %._crit_edge50 ], [ -1, %.preheader3 ]
  %194 = sub nsw i32 7, %.01.lcssa
  %195 = sext i8 %.024.lcssa to i32
  %196 = shl i32 %195, %194
  %197 = trunc i32 %196 to i8
  %198 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %197, ptr %198, align 1
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 1024, i1 false)
  br label %199

.preheader2:                                      ; preds = %231
  br label %234

199:                                              ; preds = %193, %231
  %.062 = phi ptr [ %9, %193 ], [ %201, %231 ]
  %.2761 = phi i64 [ 0, %193 ], [ %232, %231 ]
  %200 = trunc i64 %.2761 to i8
  store i8 %200, ptr %.062, align 1
  %201 = getelementptr inbounds nuw i8, ptr %.062, i32 1
  %202 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.2761
  %203 = load i32, ptr %202, align 4
  %204 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2761
  %205 = load i8, ptr %204, align 1
  %206 = zext i8 %205 to i32
  %207 = or i32 %203, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %231

209:                                              ; preds = %199
  %210 = sub nsw i32 %206, 1
  %211 = shl i32 1, %210
  %212 = sext i32 %211 to i64
  %213 = load i8, ptr %204, align 1
  %214 = zext i8 %213 to i64
  %215 = icmp ult i64 0, %214
  br i1 %215, label %.lr.ph58, label %229

.lr.ph58:                                         ; preds = %209
  br label %216

216:                                              ; preds = %.lr.ph58, %216
  %.556 = phi i64 [ 0, %.lr.ph58 ], [ %225, %216 ]
  %.11655 = phi i64 [ %212, %.lr.ph58 ], [ %224, %216 ]
  %.01954 = phi i32 [ 0, %.lr.ph58 ], [ %spec.select1, %216 ]
  %217 = mul i32 %.01954, 2
  %218 = add i32 %217, 1
  %219 = load i32, ptr %202, align 4
  %220 = zext i32 %219 to i64
  %221 = and i64 %220, %.11655
  %222 = icmp ne i64 %221, 0
  %223 = add i32 %218, 1
  %spec.select1 = select i1 %222, i32 %223, i32 %218
  %224 = lshr i64 %.11655, 1
  %225 = add i64 %.556, 1
  %226 = load i8, ptr %204, align 1
  %227 = zext i8 %226 to i64
  %228 = icmp ult i64 %225, %227
  br i1 %228, label %216, label %._crit_edge59, !llvm.loop !19

._crit_edge59:                                    ; preds = %216
  %split60 = phi i32 [ %spec.select1, %216 ]
  br label %229

229:                                              ; preds = %._crit_edge59, %209
  %.019.lcssa = phi i32 [ %split60, %._crit_edge59 ], [ 0, %209 ]
  %230 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.2761
  store i32 %.019.lcssa, ptr %230, align 4
  br label %231

231:                                              ; preds = %229, %199
  %232 = add i64 %.2761, 1
  %233 = icmp ult i64 %232, 256
  br i1 %233, label %199, label %.preheader2, !llvm.loop !20

.preheader1:                                      ; preds = %.critedge
  br label %256

234:                                              ; preds = %.preheader2, %.critedge
  %.669 = phi i64 [ 1, %.preheader2 ], [ %254, %.critedge ]
  %235 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.669
  %236 = load i32, ptr %235, align 4
  %237 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.669
  %238 = load i8, ptr %237, align 1
  %239 = icmp ne i64 %.669, 0
  br i1 %239, label %.lr.ph65, label %.critedge

.lr.ph65:                                         ; preds = %234
  br label %240

240:                                              ; preds = %.lr.ph65, %245
  %.3863 = phi i64 [ %.669, %.lr.ph65 ], [ %250, %245 ]
  %241 = sub i64 %.3863, 1
  %242 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %241
  %243 = load i32, ptr %242, align 4
  %244 = icmp ugt i32 %243, %236
  br i1 %244, label %245, label %..critedge_crit_edge

245:                                              ; preds = %240
  %246 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.3863
  store i32 %243, ptr %246, align 4
  %247 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %241
  %248 = load i8, ptr %247, align 1
  %249 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.3863
  store i8 %248, ptr %249, align 1
  %250 = add i64 %.3863, -1
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %240, label %..critedge_crit_edge67, !llvm.loop !21

..critedge_crit_edge:                             ; preds = %240
  %split66 = phi i64 [ %.3863, %240 ]
  br label %.critedge

..critedge_crit_edge67:                           ; preds = %245
  %split68 = phi i64 [ %250, %245 ]
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge67, %..critedge_crit_edge, %234
  %.38.lcssa = phi i64 [ %split66, %..critedge_crit_edge ], [ %split68, %..critedge_crit_edge67 ], [ %.669, %234 ]
  %252 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %236, ptr %252, align 4
  %253 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %238, ptr %253, align 1
  %254 = add i64 %.669, 1
  %255 = icmp ult i64 %254, 256
  br i1 %255, label %234, label %.preheader1, !llvm.loop !22

256:                                              ; preds = %256, %.preheader1
  %.49 = phi i64 [ %260, %256 ], [ 0, %.preheader1 ]
  %257 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %258 = load i32, ptr %257, align 4
  %259 = icmp eq i32 %258, 0
  %260 = add i64 %.49, 1
  br i1 %259, label %256, label %.preheader, !llvm.loop !23

.preheader:                                       ; preds = %256
  %.49.lcssa = phi i64 [ %.49, %256 ]
  %261 = icmp ult i64 0, %1
  br i1 %261, label %.lr.ph76, label %287

.lr.ph76:                                         ; preds = %.preheader
  br label %262

262:                                              ; preds = %.lr.ph76, %282
  %.775 = phi i64 [ %.49.lcssa, %.lr.ph76 ], [ %.9, %282 ]
  %.31374 = phi i64 [ 0, %.lr.ph76 ], [ %.414, %282 ]
  %.21773 = phi i64 [ 128, %.lr.ph76 ], [ %.318, %282 ]
  %.22172 = phi i32 [ 0, %.lr.ph76 ], [ %.423, %282 ]
  %.03171 = phi ptr [ %11, %.lr.ph76 ], [ %.132, %282 ]
  %.23570 = phi ptr [ %0, %.lr.ph76 ], [ %.336, %282 ]
  %263 = mul i32 %.22172, 2
  %264 = add i32 %263, 1
  %265 = load i8, ptr %.03171, align 1
  %266 = zext i8 %265 to i64
  %267 = and i64 %266, %.21773
  %268 = icmp ne i64 %267, 0
  %269 = add i32 %264, 1
  %spec.select2 = select i1 %268, i32 %269, i32 %264
  br label %270

270:                                              ; preds = %270, %262
  %.8 = phi i64 [ %.775, %262 ], [ %274, %270 ]
  %271 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %272 = load i32, ptr %271, align 4
  %273 = icmp ult i32 %272, %spec.select2
  %274 = add i64 %.8, 1
  br i1 %273, label %270, label %275, !llvm.loop !24

275:                                              ; preds = %270
  %.8.lcssa = phi i64 [ %.8, %270 ]
  %.lcssa = phi i32 [ %272, %270 ]
  %276 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %276, label %277, label %282

277:                                              ; preds = %275
  %278 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %279 = load i8, ptr %278, align 1
  store i8 %279, ptr %.23570, align 1
  %280 = getelementptr inbounds nuw i8, ptr %.23570, i32 1
  %281 = add i64 %.31374, 1
  br label %282

282:                                              ; preds = %277, %275
  %.336 = phi ptr [ %280, %277 ], [ %.23570, %275 ]
  %.423 = phi i32 [ 0, %277 ], [ %spec.select2, %275 ]
  %.414 = phi i64 [ %281, %277 ], [ %.31374, %275 ]
  %.9 = phi i64 [ %.49.lcssa, %277 ], [ %.8.lcssa, %275 ]
  %283 = icmp ugt i64 %.21773, 1
  %284 = lshr i64 %.21773, 1
  %285 = getelementptr inbounds nuw i8, ptr %.03171, i32 1
  %.132 = select i1 %283, ptr %.03171, ptr %285
  %.318 = select i1 %283, i64 %284, i64 128
  %286 = icmp ult i64 %.414, %1
  br i1 %286, label %262, label %._crit_edge77, !llvm.loop !25

._crit_edge77:                                    ; preds = %282
  br label %287

287:                                              ; preds = %._crit_edge77, %.preheader
  call void @free(ptr noundef %11)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal void @heap_adjust(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = sub nsw i32 %3, 1
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i64, ptr %1, i64 %6
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = sdiv i32 %2, 2
  %11 = icmp sle i32 %3, %10
  br i1 %11, label %.lr.ph, label %45

.lr.ph:                                           ; preds = %4
  br label %12

12:                                               ; preds = %.lr.ph, %40
  %.011 = phi i32 [ %3, %.lr.ph ], [ %.0, %40 ]
  %13 = add nsw i32 %.011, %.011
  %14 = icmp slt i32 %13, %2
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = sub nsw i32 %13, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, ptr %1, i64 %17
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds nuw i64, ptr %0, i64 %19
  %21 = load i64, ptr %20, align 8
  %22 = sext i32 %13 to i64
  %23 = getelementptr inbounds i64, ptr %1, i64 %22
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds nuw i64, ptr %0, i64 %24
  %26 = load i64, ptr %25, align 8
  %27 = icmp ugt i64 %21, %26
  %28 = add nsw i32 %13, 1
  %spec.select = select i1 %27, i32 %28, i32 %13
  br label %29

29:                                               ; preds = %15, %12
  %.0 = phi i32 [ %13, %12 ], [ %spec.select, %15 ]
  %30 = sext i32 %9 to i64
  %31 = getelementptr inbounds i64, ptr %0, i64 %30
  %32 = load i64, ptr %31, align 8
  %33 = sub nsw i32 %.0, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, ptr %1, i64 %34
  %36 = load i64, ptr %35, align 8
  %37 = getelementptr inbounds nuw i64, ptr %0, i64 %36
  %38 = load i64, ptr %37, align 8
  %39 = icmp ult i64 %32, %38
  br i1 %39, label %._crit_edge, label %40

40:                                               ; preds = %29
  %41 = sub nsw i32 %.011, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, ptr %1, i64 %42
  store i64 %36, ptr %43, align 8
  %44 = icmp sle i32 %.0, %10
  br i1 %44, label %12, label %._crit_edge2, !llvm.loop !26

._crit_edge:                                      ; preds = %29
  %split = phi i32 [ %.011, %29 ]
  br label %45

._crit_edge2:                                     ; preds = %40
  %split3 = phi i32 [ %.0, %40 ]
  br label %45

45:                                               ; preds = %._crit_edge2, %._crit_edge, %4
  %.01.lcssa = phi i32 [ %split, %._crit_edge ], [ %split3, %._crit_edge2 ], [ %3, %4 ]
  %46 = sext i32 %9 to i64
  %47 = sub nsw i32 %.01.lcssa, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, ptr %1, i64 %48
  store i64 %46, ptr %49, align 8
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
  br i1 %3, label %.preheader, label %12

.preheader:                                       ; preds = %2
  %4 = getelementptr inbounds ptr, ptr %1, i64 1
  br label %7

5:                                                ; preds = %7
  %.01 = phi i32 [ %11, %7 ]
  %6 = icmp slt i32 %.01, %0
  br i1 %6, label %7, label %.loopexit, !llvm.loop !27

7:                                                ; preds = %.preheader, %5
  %.011 = phi i32 [ 1, %.preheader ], [ %.01, %5 ]
  %8 = load ptr, ptr %4, align 8
  %9 = call i32 @strcmp(ptr noundef %8, ptr noundef @.str.4) #8
  %10 = icmp ne i32 %9, 0
  %11 = add nsw i32 %.011, 1
  br i1 %10, label %5, label %.loopexit

.loopexit:                                        ; preds = %5, %7
  %.0.ph = phi i8 [ 1, %7 ], [ 0, %5 ]
  br label %12

12:                                               ; preds = %.loopexit, %2
  %.0 = phi i8 [ 0, %2 ], [ %.0.ph, %.loopexit ]
  %13 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %14

14:                                               ; preds = %12
  call void @compdecomp(ptr noundef %13, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %13, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %13, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %13, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %13, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %13, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %13, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %13, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %13, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %13, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %13, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %13, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %13, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %13, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %13, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %13, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %13, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %13, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %13, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %13, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %13, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %13, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %13, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %13, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %13, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %13, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %13, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %13, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %13, i64 noundef 10000000)
  call void @compdecomp(ptr noundef %13, i64 noundef 10000000)
  call void @free(ptr noundef %13)
  %15 = icmp ne i8 %.0, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = call ptr @__acrt_iob_func(i32 noundef 1)
  %18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.5, double noundef 0.000000e+00) #8
  br label %22

19:                                               ; preds = %14
  %20 = call ptr @__acrt_iob_func(i32 noundef 1)
  %21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.6, double noundef 0.000000e+00) #8
  br label %22

22:                                               ; preds = %19, %16
  %23 = call ptr @__acrt_iob_func(i32 noundef 1)
  %24 = call i32 @fflush(ptr noundef %23)
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
  %4 = mul nsw i32 %3, 127773
  %5 = sub nsw i32 %2, %4
  %6 = mul nsw i32 16807, %5
  %7 = mul nsw i32 2836, %3
  %8 = sub nsw i32 %6, %7
  store i32 %8, ptr @seed, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = add nsw i32 %8, 2147483647
  store i32 %11, ptr @seed, align 4
  br label %12

12:                                               ; preds = %10, %0
  %13 = load i32, ptr @seed, align 4
  %14 = srem i32 %13, 32
  %15 = sext i32 %14 to i64
  %16 = xor i32 %13, 123459876
  store i32 %16, ptr @seed, align 4
  ret i64 %15
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { allocsize(0) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

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
