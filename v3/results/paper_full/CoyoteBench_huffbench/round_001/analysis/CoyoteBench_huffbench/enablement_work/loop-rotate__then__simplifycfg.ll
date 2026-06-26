; ModuleID = 'results\paper_full\CoyoteBench_huffbench\round_000\output.ll'
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
  %2 = call ptr @malloc(i64 noundef %0) #6
  %3 = icmp ult i64 0, %0
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %1, %.lr.ph
  %.02 = phi i32 [ %8, %.lr.ph ], [ 0, %1 ]
  %.011 = phi ptr [ %7, %.lr.ph ], [ %2, %1 ]
  %4 = call i64 @random4()
  %5 = getelementptr inbounds nuw i8, ptr @.str, i64 %4
  %6 = load i8, ptr %5, align 1
  store i8 %6, ptr %.011, align 1
  %7 = getelementptr inbounds nuw i8, ptr %.011, i32 1
  %8 = add nsw i32 %.02, 1
  %9 = sext i32 %8 to i64
  %10 = icmp ult i64 %9, %0
  br i1 %10, label %.lr.ph, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %.lr.ph, %1
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
  %11 = call ptr @malloc(i64 noundef %10) #6
  %12 = add i64 %1, 1
  %13 = mul i64 1, %12
  call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %13, i1 false)
  %14 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %14, i8 0, i64 4096, i1 false)
  %15 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %15, i8 0, i64 2048, i1 false)
  %16 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %16, i8 0, i64 2048, i1 false)
  %17 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %17, i8 0, i64 1024, i1 false)
  %18 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %18, i8 0, i64 256, i1 false)
  %19 = icmp ult i64 0, %1
  br i1 %19, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %2, %.lr.ph
  %.029 = phi i64 [ %26, %.lr.ph ], [ 0, %2 ]
  %.0337 = phi ptr [ %25, %.lr.ph ], [ %0, %2 ]
  %20 = load i8, ptr %.0337, align 1
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %21
  %23 = load i64, ptr %22, align 8
  %24 = add i64 %23, 1
  store i64 %24, ptr %22, align 8
  %25 = getelementptr inbounds nuw i8, ptr %.0337, i32 1
  %26 = add i64 %.029, 1
  %27 = icmp ult i64 %26, %1
  br i1 %27, label %.lr.ph, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph, %2
  br label %28

28:                                               ; preds = %._crit_edge, %35
  %.1311 = phi i64 [ 0, %._crit_edge ], [ %36, %35 ]
  %.01010 = phi i64 [ 0, %._crit_edge ], [ %.111, %35 ]
  %29 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.1311
  %30 = load i64, ptr %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.01010
  store i64 %.1311, ptr %33, align 8
  %34 = add i64 %.01010, 1
  br label %35

35:                                               ; preds = %28, %32
  %.111 = phi i64 [ %34, %32 ], [ %.01010, %28 ]
  %36 = add i64 %.1311, 1
  %37 = icmp ult i64 %36, 256
  br i1 %37, label %28, label %38, !llvm.loop !10

38:                                               ; preds = %35
  %.010.lcssa = phi i64 [ %.111, %35 ]
  %39 = icmp ugt i64 %.010.lcssa, 0
  br i1 %39, label %.lr.ph14, label %._crit_edge15

.lr.ph14:                                         ; preds = %38, %.lr.ph14
  %.2412 = phi i64 [ %44, %.lr.ph14 ], [ %.010.lcssa, %38 ]
  %40 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %41 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %42 = trunc i64 %.010.lcssa to i32
  %43 = trunc i64 %.2412 to i32
  call void @heap_adjust(ptr noundef %40, ptr noundef %41, i32 noundef %42, i32 noundef %43)
  %44 = add i64 %.2412, -1
  %45 = icmp ugt i64 %44, 0
  br i1 %45, label %.lr.ph14, label %._crit_edge15, !llvm.loop !11

._crit_edge15:                                    ; preds = %.lr.ph14, %38
  %46 = icmp ugt i64 %.010.lcssa, 1
  br i1 %46, label %.lr.ph18, label %._crit_edge19

.lr.ph18:                                         ; preds = %._crit_edge15, %.lr.ph18
  %.21216 = phi i64 [ %47, %.lr.ph18 ], [ %.010.lcssa, %._crit_edge15 ]
  %47 = add i64 %.21216, -1
  %48 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %49 = load i64, ptr %48, align 16
  %50 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %47
  %51 = load i64, ptr %50, align 8
  %52 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %51, ptr %52, align 16
  %53 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %54 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %55 = trunc i64 %47 to i32
  call void @heap_adjust(ptr noundef %53, ptr noundef %54, i32 noundef %55, i32 noundef 1)
  %56 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %57 = load i64, ptr %56, align 16
  %58 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %57
  %59 = load i64, ptr %58, align 8
  %60 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %49
  %61 = load i64, ptr %60, align 8
  %62 = add i64 %59, %61
  %63 = add i64 256, %47
  %64 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %63
  store i64 %62, ptr %64, align 8
  %65 = add i64 256, %47
  %66 = trunc i64 %65 to i32
  %67 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %49
  store i32 %66, ptr %67, align 4
  %68 = sub i64 -256, %47
  %69 = trunc i64 %68 to i32
  %70 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %71 = load i64, ptr %70, align 16
  %72 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %71
  store i32 %69, ptr %72, align 4
  %73 = add i64 256, %47
  %74 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %73, ptr %74, align 16
  %75 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %76 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %77 = trunc i64 %47 to i32
  call void @heap_adjust(ptr noundef %75, ptr noundef %76, i32 noundef %77, i32 noundef 1)
  %78 = icmp ugt i64 %47, 1
  br i1 %78, label %.lr.ph18, label %._crit_edge19, !llvm.loop !12

._crit_edge19:                                    ; preds = %.lr.ph18, %._crit_edge15
  %.212.lcssa = phi i64 [ %.010.lcssa, %._crit_edge15 ], [ %47, %.lr.ph18 ]
  %79 = add i64 256, %.212.lcssa
  %80 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %79
  store i32 0, ptr %80, align 4
  br label %81

81:                                               ; preds = %._crit_edge19, %107
  %.03931 = phi i64 [ 0, %._crit_edge19 ], [ %.140, %107 ]
  %.04230 = phi i64 [ 0, %._crit_edge19 ], [ %108, %107 ]
  %.04529 = phi i64 [ 0, %._crit_edge19 ], [ %.146, %107 ]
  %82 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.04230
  %83 = load i64, ptr %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04230
  store i32 0, ptr %86, align 4
  %87 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04230
  store i8 0, ptr %87, align 1
  br label %107

88:                                               ; preds = %81
  %89 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.04230
  %90 = load i32, ptr %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %.lr.ph25, label %._crit_edge26

.lr.ph25:                                         ; preds = %88, %.lr.ph25
  %.323 = phi i64 [ %99, %.lr.ph25 ], [ 0, %88 ]
  %.0522 = phi i64 [ %98, %.lr.ph25 ], [ 1, %88 ]
  %.03721 = phi i32 [ %97, %.lr.ph25 ], [ %90, %88 ]
  %.04320 = phi i64 [ %.144, %.lr.ph25 ], [ 0, %88 ]
  %92 = icmp slt i32 %.03721, 0
  %93 = add i64 %.04320, %.0522
  %94 = sub nsw i32 0, %.03721
  %.144 = select i1 %92, i64 %93, i64 %.04320
  %.138 = select i1 %92, i32 %94, i32 %.03721
  %95 = sext i32 %.138 to i64
  %96 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %95
  %97 = load i32, ptr %96, align 4
  %98 = shl i64 %.0522, 1
  %99 = add i64 %.323, 1
  %100 = icmp ne i32 %97, 0
  br i1 %100, label %.lr.ph25, label %._crit_edge26, !llvm.loop !13

._crit_edge26:                                    ; preds = %.lr.ph25, %88
  %.043.lcssa = phi i64 [ 0, %88 ], [ %.144, %.lr.ph25 ]
  %.3.lcssa = phi i64 [ 0, %88 ], [ %99, %.lr.ph25 ]
  %101 = trunc i64 %.043.lcssa to i32
  %102 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04230
  store i32 %101, ptr %102, align 4
  %103 = trunc i64 %.3.lcssa to i8
  %104 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04230
  store i8 %103, ptr %104, align 1
  %105 = icmp ugt i64 %.043.lcssa, %.04529
  %spec.select = select i1 %105, i64 %.043.lcssa, i64 %.04529
  %106 = icmp ugt i64 %.3.lcssa, %.03931
  %.241 = select i1 %106, i64 %.3.lcssa, i64 %.03931
  br label %107

107:                                              ; preds = %85, %._crit_edge26
  %.146 = phi i64 [ %spec.select, %._crit_edge26 ], [ %.04529, %85 ]
  %.140 = phi i64 [ %.241, %._crit_edge26 ], [ %.03931, %85 ]
  %108 = add i64 %.04230, 1
  %109 = icmp ult i64 %108, 256
  br i1 %109, label %81, label %110, !llvm.loop !14

110:                                              ; preds = %107
  %.045.lcssa = phi i64 [ %.146, %107 ]
  %.039.lcssa = phi i64 [ %.140, %107 ]
  %111 = icmp ugt i64 %.039.lcssa, 32
  br i1 %111, label %112, label %115

112:                                              ; preds = %110
  %113 = call ptr @__acrt_iob_func(i32 noundef 2)
  %114 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %113, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

115:                                              ; preds = %110
  %116 = icmp eq i64 %.045.lcssa, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %115
  %118 = call ptr @__acrt_iob_func(i32 noundef 2)
  %119 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %118, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

120:                                              ; preds = %115
  %121 = icmp ult i64 0, %1
  br i1 %121, label %.lr.ph49, label %._crit_edge50

.lr.ph49:                                         ; preds = %120, %._crit_edge39
  %.0147 = phi i32 [ %.1.lcssa, %._crit_edge39 ], [ -1, %120 ]
  %.1646 = phi i64 [ %169, %._crit_edge39 ], [ 0, %120 ]
  %.02445 = phi i8 [ %.125.lcssa, %._crit_edge39 ], [ 0, %120 ]
  %.02844 = phi i64 [ %.129.lcssa, %._crit_edge39 ], [ 0, %120 ]
  %.13443 = phi ptr [ %168, %._crit_edge39 ], [ %0, %120 ]
  %122 = load i8, ptr %.13443, align 1
  %123 = zext i8 %122 to i64
  %124 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %123
  %125 = load i8, ptr %124, align 1
  %126 = zext i8 %125 to i32
  %127 = sub nsw i32 %126, 1
  %128 = shl i32 1, %127
  %129 = sext i32 %128 to i64
  %130 = load i8, ptr %.13443, align 1
  %131 = zext i8 %130 to i64
  %132 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %131
  %133 = load i8, ptr %132, align 1
  %134 = zext i8 %133 to i64
  %135 = icmp ult i64 0, %134
  br i1 %135, label %.lr.ph38, label %._crit_edge39

.lr.ph38:                                         ; preds = %.lr.ph49, %149
  %.136 = phi i32 [ %.2, %149 ], [ %.0147, %.lr.ph49 ]
  %.435 = phi i64 [ %161, %149 ], [ 0, %.lr.ph49 ]
  %.01534 = phi i64 [ %160, %149 ], [ %129, %.lr.ph49 ]
  %.12533 = phi i8 [ %.327, %149 ], [ %.02445, %.lr.ph49 ]
  %.12932 = phi i64 [ %.230, %149 ], [ %.02844, %.lr.ph49 ]
  %136 = icmp eq i32 %.136, 7
  br i1 %136, label %137, label %144

137:                                              ; preds = %.lr.ph38
  %138 = getelementptr inbounds nuw i8, ptr %11, i64 %.12932
  store i8 %.12533, ptr %138, align 1
  %139 = add i64 %.12932, 1
  %140 = icmp eq i64 %139, %1
  br i1 %140, label %141, label %149

141:                                              ; preds = %137
  %142 = call ptr @__acrt_iob_func(i32 noundef 2)
  %143 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %142, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

144:                                              ; preds = %.lr.ph38
  %145 = add nsw i32 %.136, 1
  %146 = sext i8 %.12533 to i32
  %147 = shl i32 %146, 1
  %148 = trunc i32 %147 to i8
  br label %149

149:                                              ; preds = %137, %144
  %.230 = phi i64 [ %.12932, %144 ], [ %139, %137 ]
  %.226 = phi i8 [ %148, %144 ], [ 0, %137 ]
  %.2 = phi i32 [ %145, %144 ], [ 0, %137 ]
  %150 = load i8, ptr %.13443, align 1
  %151 = zext i8 %150 to i64
  %152 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %151
  %153 = load i32, ptr %152, align 4
  %154 = zext i32 %153 to i64
  %155 = and i64 %154, %.01534
  %156 = icmp ne i64 %155, 0
  %157 = sext i8 %.226 to i32
  %158 = or i32 %157, 1
  %159 = trunc i32 %158 to i8
  %.327 = select i1 %156, i8 %159, i8 %.226
  %160 = lshr i64 %.01534, 1
  %161 = add i64 %.435, 1
  %162 = load i8, ptr %.13443, align 1
  %163 = zext i8 %162 to i64
  %164 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %163
  %165 = load i8, ptr %164, align 1
  %166 = zext i8 %165 to i64
  %167 = icmp ult i64 %161, %166
  br i1 %167, label %.lr.ph38, label %._crit_edge39, !llvm.loop !15

._crit_edge39:                                    ; preds = %149, %.lr.ph49
  %.129.lcssa = phi i64 [ %.02844, %.lr.ph49 ], [ %.230, %149 ]
  %.125.lcssa = phi i8 [ %.02445, %.lr.ph49 ], [ %.327, %149 ]
  %.1.lcssa = phi i32 [ %.0147, %.lr.ph49 ], [ %.2, %149 ]
  %168 = getelementptr inbounds nuw i8, ptr %.13443, i32 1
  %169 = add i64 %.1646, 1
  %170 = icmp ult i64 %169, %1
  br i1 %170, label %.lr.ph49, label %._crit_edge50, !llvm.loop !16

._crit_edge50:                                    ; preds = %._crit_edge39, %120
  %.028.lcssa = phi i64 [ 0, %120 ], [ %.129.lcssa, %._crit_edge39 ]
  %.024.lcssa = phi i8 [ 0, %120 ], [ %.125.lcssa, %._crit_edge39 ]
  %.01.lcssa = phi i32 [ -1, %120 ], [ %.1.lcssa, %._crit_edge39 ]
  %171 = sub nsw i32 7, %.01.lcssa
  %172 = sext i8 %.024.lcssa to i32
  %173 = shl i32 %172, %171
  %174 = trunc i32 %173 to i8
  %175 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %174, ptr %175, align 1
  %176 = getelementptr inbounds [256 x i32], ptr %8, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %176, i8 0, i64 1024, i1 false)
  %177 = getelementptr inbounds [256 x i8], ptr %9, i64 0, i64 0
  br label %178

178:                                              ; preds = %._crit_edge50, %213
  %.062 = phi ptr [ %177, %._crit_edge50 ], [ %180, %213 ]
  %.2761 = phi i64 [ 0, %._crit_edge50 ], [ %214, %213 ]
  %179 = trunc i64 %.2761 to i8
  store i8 %179, ptr %.062, align 1
  %180 = getelementptr inbounds nuw i8, ptr %.062, i32 1
  %181 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.2761
  %182 = load i32, ptr %181, align 4
  %183 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2761
  %184 = load i8, ptr %183, align 1
  %185 = zext i8 %184 to i32
  %186 = or i32 %182, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %213

188:                                              ; preds = %178
  %189 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2761
  %190 = load i8, ptr %189, align 1
  %191 = zext i8 %190 to i32
  %192 = sub nsw i32 %191, 1
  %193 = shl i32 1, %192
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2761
  %196 = load i8, ptr %195, align 1
  %197 = zext i8 %196 to i64
  %198 = icmp ult i64 0, %197
  br i1 %198, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %188, %.lr.ph58
  %.556 = phi i64 [ %208, %.lr.ph58 ], [ 0, %188 ]
  %.11655 = phi i64 [ %207, %.lr.ph58 ], [ %194, %188 ]
  %.01954 = phi i32 [ %spec.select78, %.lr.ph58 ], [ 0, %188 ]
  %199 = mul i32 %.01954, 2
  %200 = add i32 %199, 1
  %201 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.2761
  %202 = load i32, ptr %201, align 4
  %203 = zext i32 %202 to i64
  %204 = and i64 %203, %.11655
  %205 = icmp ne i64 %204, 0
  %206 = add i32 %200, 1
  %spec.select78 = select i1 %205, i32 %206, i32 %200
  %207 = lshr i64 %.11655, 1
  %208 = add i64 %.556, 1
  %209 = load i8, ptr %195, align 1
  %210 = zext i8 %209 to i64
  %211 = icmp ult i64 %208, %210
  br i1 %211, label %.lr.ph58, label %._crit_edge59, !llvm.loop !17

._crit_edge59:                                    ; preds = %.lr.ph58, %188
  %.019.lcssa = phi i32 [ 0, %188 ], [ %spec.select78, %.lr.ph58 ]
  %212 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.2761
  store i32 %.019.lcssa, ptr %212, align 4
  br label %213

213:                                              ; preds = %178, %._crit_edge59
  %214 = add i64 %.2761, 1
  %215 = icmp ult i64 %214, 256
  br i1 %215, label %178, label %216, !llvm.loop !18

216:                                              ; preds = %213, %.critedge
  %.663 = phi i64 [ %240, %.critedge ], [ 1, %213 ]
  %217 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.663
  %218 = load i32, ptr %217, align 4
  %219 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.663
  %220 = load i8, ptr %219, align 1
  br label %221

221:                                              ; preds = %228, %216
  %.38 = phi i64 [ %.663, %216 ], [ %237, %228 ]
  %222 = icmp ne i64 %.38, 0
  br i1 %222, label %223, label %.critedge

223:                                              ; preds = %221
  %224 = sub i64 %.38, 1
  %225 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %224
  %226 = load i32, ptr %225, align 4
  %227 = icmp ugt i32 %226, %218
  br i1 %227, label %228, label %.critedge

228:                                              ; preds = %223
  %229 = sub i64 %.38, 1
  %230 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %229
  %231 = load i32, ptr %230, align 4
  %232 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %231, ptr %232, align 4
  %233 = sub i64 %.38, 1
  %234 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %233
  %235 = load i8, ptr %234, align 1
  %236 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %235, ptr %236, align 1
  %237 = add i64 %.38, -1
  br label %221, !llvm.loop !19

.critedge:                                        ; preds = %221, %223
  %.38.lcssa = phi i64 [ %.38, %223 ], [ %.38, %221 ]
  %238 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %218, ptr %238, align 4
  %239 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %220, ptr %239, align 1
  %240 = add i64 %.663, 1
  %241 = icmp ult i64 %240, 256
  br i1 %241, label %216, label %242, !llvm.loop !20

242:                                              ; preds = %.critedge
  %243 = load i32, ptr %8, align 4
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %.lr.ph66, label %._crit_edge67

.lr.ph66:                                         ; preds = %242, %.lr.ph66
  %.4964 = phi i64 [ %245, %.lr.ph66 ], [ 0, %242 ]
  %245 = add i64 %.4964, 1
  %246 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %245
  %247 = load i32, ptr %246, align 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %.lr.ph66, label %._crit_edge67, !llvm.loop !21

._crit_edge67:                                    ; preds = %.lr.ph66, %242
  %.49.lcssa = phi i64 [ 0, %242 ], [ %245, %.lr.ph66 ]
  %249 = icmp ult i64 0, %1
  br i1 %249, label %.lr.ph76, label %._crit_edge77

.lr.ph76:                                         ; preds = %._crit_edge67, %271
  %.774 = phi i64 [ %.9, %271 ], [ %.49.lcssa, %._crit_edge67 ]
  %.31373 = phi i64 [ %.414, %271 ], [ 0, %._crit_edge67 ]
  %.21772 = phi i64 [ %.318, %271 ], [ 128, %._crit_edge67 ]
  %.22171 = phi i32 [ %.423, %271 ], [ 0, %._crit_edge67 ]
  %.03170 = phi ptr [ %.132, %271 ], [ %11, %._crit_edge67 ]
  %.23569 = phi ptr [ %.336, %271 ], [ %0, %._crit_edge67 ]
  %250 = mul i32 %.22171, 2
  %251 = add i32 %250, 1
  %252 = load i8, ptr %.03170, align 1
  %253 = zext i8 %252 to i64
  %254 = and i64 %253, %.21772
  %255 = icmp ne i64 %254, 0
  %256 = add i32 %251, 1
  %spec.select79 = select i1 %255, i32 %256, i32 %251
  br label %257

257:                                              ; preds = %257, %.lr.ph76
  %.8 = phi i64 [ %.774, %.lr.ph76 ], [ %261, %257 ]
  %258 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %259 = load i32, ptr %258, align 4
  %260 = icmp ult i32 %259, %spec.select79
  %261 = add i64 %.8, 1
  br i1 %260, label %257, label %262, !llvm.loop !22

262:                                              ; preds = %257
  %.8.lcssa = phi i64 [ %.8, %257 ]
  %263 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8.lcssa
  %264 = load i32, ptr %263, align 4
  %265 = icmp eq i32 %spec.select79, %264
  br i1 %265, label %266, label %271

266:                                              ; preds = %262
  %267 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %268 = load i8, ptr %267, align 1
  store i8 %268, ptr %.23569, align 1
  %269 = getelementptr inbounds nuw i8, ptr %.23569, i32 1
  %270 = add i64 %.31373, 1
  br label %271

271:                                              ; preds = %266, %262
  %.336 = phi ptr [ %269, %266 ], [ %.23569, %262 ]
  %.423 = phi i32 [ 0, %266 ], [ %spec.select79, %262 ]
  %.414 = phi i64 [ %270, %266 ], [ %.31373, %262 ]
  %.9 = phi i64 [ %.49.lcssa, %266 ], [ %.8.lcssa, %262 ]
  %272 = icmp ugt i64 %.21772, 1
  %273 = lshr i64 %.21772, 1
  %274 = getelementptr inbounds nuw i8, ptr %.03170, i32 1
  %.132 = select i1 %272, ptr %.03170, ptr %274
  %.318 = select i1 %272, i64 %273, i64 128
  %275 = icmp ult i64 %.414, %1
  br i1 %275, label %.lr.ph76, label %._crit_edge77, !llvm.loop !23

._crit_edge77:                                    ; preds = %271, %._crit_edge67
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
  br i1 %11, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4, %39
  %.013 = phi i32 [ %.0, %39 ], [ %3, %4 ]
  %12 = add nsw i32 %.013, %.013
  %13 = icmp slt i32 %12, %2
  br i1 %13, label %14, label %28

14:                                               ; preds = %.lr.ph
  %15 = sub nsw i32 %12, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, ptr %1, i64 %16
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr inbounds nuw i64, ptr %0, i64 %18
  %20 = load i64, ptr %19, align 8
  %21 = sext i32 %12 to i64
  %22 = getelementptr inbounds i64, ptr %1, i64 %21
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds nuw i64, ptr %0, i64 %23
  %25 = load i64, ptr %24, align 8
  %26 = icmp ugt i64 %20, %25
  %27 = add nsw i32 %12, 1
  %spec.select = select i1 %26, i32 %27, i32 %12
  br label %28

28:                                               ; preds = %14, %.lr.ph
  %.0 = phi i32 [ %12, %.lr.ph ], [ %spec.select, %14 ]
  %29 = sext i32 %9 to i64
  %30 = getelementptr inbounds i64, ptr %0, i64 %29
  %31 = load i64, ptr %30, align 8
  %32 = sub nsw i32 %.0, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, ptr %1, i64 %33
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds nuw i64, ptr %0, i64 %35
  %37 = load i64, ptr %36, align 8
  %38 = icmp ult i64 %31, %37
  br i1 %38, label %.loopexit, label %39

39:                                               ; preds = %28
  %40 = sub nsw i32 %.0, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, ptr %1, i64 %41
  %43 = load i64, ptr %42, align 8
  %44 = sub nsw i32 %.013, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, ptr %1, i64 %45
  store i64 %43, ptr %46, align 8
  %47 = icmp sle i32 %.0, %10
  br i1 %47, label %.lr.ph, label %.loopexit, !llvm.loop !24

.loopexit:                                        ; preds = %4, %39, %28
  %.012 = phi i32 [ %.013, %28 ], [ %3, %4 ], [ %.0, %39 ]
  %48 = sext i32 %9 to i64
  %49 = sub nsw i32 %.012, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, ptr %1, i64 %50
  store i64 %48, ptr %51, align 8
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
  br i1 %3, label %4, label %.loopexit

4:                                                ; preds = %2, %9
  %.011 = phi i32 [ %10, %9 ], [ 1, %2 ]
  %5 = getelementptr inbounds ptr, ptr %1, i64 1
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 @strcmp(ptr noundef %6, ptr noundef @.str.4) #7
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %.loopexit

9:                                                ; preds = %4
  %10 = add nsw i32 %.011, 1
  %11 = icmp slt i32 %10, %0
  br i1 %11, label %4, label %.loopexit, !llvm.loop !25

.loopexit:                                        ; preds = %4, %9, %2
  %.0 = phi i8 [ 0, %2 ], [ 1, %4 ], [ 0, %9 ]
  %12 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %13

13:                                               ; preds = %.loopexit, %13
  %.122 = phi i32 [ 0, %.loopexit ], [ %14, %13 ]
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  %14 = add nsw i32 %.122, 1
  %15 = icmp slt i32 %14, 30
  br i1 %15, label %13, label %16, !llvm.loop !26

16:                                               ; preds = %13
  call void @free(ptr noundef %12)
  %17 = icmp ne i8 %.0, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = call ptr @__acrt_iob_func(i32 noundef 1)
  %20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.5, double noundef 0.000000e+00) #7
  br label %24

21:                                               ; preds = %16
  %22 = call ptr @__acrt_iob_func(i32 noundef 1)
  %23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.6, double noundef 0.000000e+00) #7
  br label %24

24:                                               ; preds = %21, %18
  %25 = call ptr @__acrt_iob_func(i32 noundef 1)
  %26 = call i32 @fflush(ptr noundef %25)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

declare dso_local i32 @fflush(ptr noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal i64 @random4() #0 {
  %1 = load i32, ptr @seed, align 4
  %2 = xor i32 %1, 123459876
  store i32 %2, ptr @seed, align 4
  %3 = load i32, ptr @seed, align 4
  %4 = sdiv i32 %3, 127773
  %5 = load i32, ptr @seed, align 4
  %6 = mul nsw i32 %4, 127773
  %7 = sub nsw i32 %5, %6
  %8 = mul nsw i32 16807, %7
  %9 = mul nsw i32 2836, %4
  %10 = sub nsw i32 %8, %9
  store i32 %10, ptr @seed, align 4
  %11 = load i32, ptr @seed, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = load i32, ptr @seed, align 4
  %15 = add nsw i32 %14, 2147483647
  store i32 %15, ptr @seed, align 4
  br label %16

16:                                               ; preds = %13, %0
  %17 = load i32, ptr @seed, align 4
  %18 = srem i32 %17, 32
  %19 = sext i32 %18 to i64
  %20 = load i32, ptr @seed, align 4
  %21 = xor i32 %20, 123459876
  store i32 %21, ptr @seed, align 4
  ret i64 %19
}

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(0) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

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
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
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
