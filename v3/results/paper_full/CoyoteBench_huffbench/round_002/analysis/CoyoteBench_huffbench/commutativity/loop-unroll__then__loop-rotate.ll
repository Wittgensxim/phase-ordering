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
  %2 = call ptr @malloc(i64 noundef %0) #6
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
  %11 = call ptr @malloc(i64 noundef %10) #6
  call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %10, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %5, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %6, i8 0, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %7, i8 0, i64 256, i1 false)
  %12 = icmp ult i64 0, %1
  br i1 %12, label %.lr.ph, label %.preheader12

.lr.ph:                                           ; preds = %2
  br label %13

..preheader12_crit_edge:                          ; preds = %13
  br label %.preheader12

.preheader12:                                     ; preds = %..preheader12_crit_edge, %2
  br label %23

13:                                               ; preds = %.lr.ph, %13
  %.0214 = phi i64 [ 0, %.lr.ph ], [ %20, %13 ]
  %.03313 = phi ptr [ %0, %.lr.ph ], [ %19, %13 ]
  %14 = load i8, ptr %.03313, align 1
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %15
  %17 = load i64, ptr %16, align 8
  %18 = add i64 %17, 1
  store i64 %18, ptr %16, align 8
  %19 = getelementptr inbounds nuw i8, ptr %.03313, i32 1
  %20 = add i64 %.0214, 1
  %21 = icmp ult i64 %20, %1
  br i1 %21, label %13, label %..preheader12_crit_edge, !llvm.loop !9

.preheader11:                                     ; preds = %39
  %.010.lcssa = phi i64 [ %.111.1, %39 ]
  %22 = icmp ugt i64 %.010.lcssa, 0
  br i1 %22, label %.lr.ph18, label %.preheader10

.lr.ph18:                                         ; preds = %.preheader11
  br label %43

23:                                               ; preds = %.preheader12, %39
  %.1316 = phi i64 [ 0, %.preheader12 ], [ %40, %39 ]
  %.01015 = phi i64 [ 0, %.preheader12 ], [ %.111.1, %39 ]
  %24 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.1316
  %25 = load i64, ptr %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.01015
  store i64 %.1316, ptr %28, align 8
  %29 = add i64 %.01015, 1
  br label %30

30:                                               ; preds = %27, %23
  %.111 = phi i64 [ %29, %27 ], [ %.01015, %23 ]
  %31 = add nuw nsw i64 %.1316, 1
  br label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %31
  %34 = load i64, ptr %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.111
  store i64 %31, ptr %37, align 8
  %38 = add i64 %.111, 1
  br label %39

39:                                               ; preds = %36, %32
  %.111.1 = phi i64 [ %38, %36 ], [ %.111, %32 ]
  %40 = add nuw nsw i64 %.1316, 2
  %41 = icmp samesign ult i64 %40, 256
  br i1 %41, label %23, label %.preheader11, !llvm.loop !10

..preheader10_crit_edge:                          ; preds = %43
  br label %.preheader10

.preheader10:                                     ; preds = %..preheader10_crit_edge, %.preheader11
  %42 = icmp ugt i64 %.010.lcssa, 1
  br i1 %42, label %.lr.ph20, label %69

.lr.ph20:                                         ; preds = %.preheader10
  br label %48

43:                                               ; preds = %.lr.ph18, %43
  %.2417 = phi i64 [ %.010.lcssa, %.lr.ph18 ], [ %46, %43 ]
  %44 = trunc i64 %.010.lcssa to i32
  %45 = trunc i64 %.2417 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %44, i32 noundef %45)
  %46 = add i64 %.2417, -1
  %47 = icmp ugt i64 %46, 0
  br i1 %47, label %43, label %..preheader10_crit_edge, !llvm.loop !11

48:                                               ; preds = %.lr.ph20, %48
  %.21219 = phi i64 [ %.010.lcssa, %.lr.ph20 ], [ %49, %48 ]
  %49 = add i64 %.21219, -1
  %50 = load i64, ptr %4, align 16
  %51 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %49
  %52 = load i64, ptr %51, align 8
  store i64 %52, ptr %4, align 16
  %53 = trunc i64 %49 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %53, i32 noundef 1)
  %54 = load i64, ptr %4, align 16
  %55 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %54
  %56 = load i64, ptr %55, align 8
  %57 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %50
  %58 = load i64, ptr %57, align 8
  %59 = add i64 %56, %58
  %60 = add i64 256, %49
  %61 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %60
  store i64 %59, ptr %61, align 8
  %62 = trunc i64 %60 to i32
  %63 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %50
  store i32 %62, ptr %63, align 4
  %64 = sub i64 -256, %49
  %65 = trunc i64 %64 to i32
  %66 = load i64, ptr %4, align 16
  %67 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %66
  store i32 %65, ptr %67, align 4
  store i64 %60, ptr %4, align 16
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %53, i32 noundef 1)
  %68 = icmp ugt i64 %49, 1
  br i1 %68, label %48, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %48
  %split = phi i64 [ %49, %48 ]
  br label %69

69:                                               ; preds = %._crit_edge, %.preheader10
  %.212.lcssa = phi i64 [ %split, %._crit_edge ], [ %.010.lcssa, %.preheader10 ]
  %70 = add i64 256, %.212.lcssa
  %71 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %70
  store i32 0, ptr %71, align 4
  br label %72

72:                                               ; preds = %69, %100
  %.03932 = phi i64 [ 0, %69 ], [ %.140, %100 ]
  %.04231 = phi i64 [ 0, %69 ], [ %101, %100 ]
  %.04530 = phi i64 [ 0, %69 ], [ %.146, %100 ]
  %73 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.04231
  %74 = load i64, ptr %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04231
  store i32 0, ptr %77, align 4
  %78 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04231
  store i8 0, ptr %78, align 1
  br label %100

79:                                               ; preds = %72
  %80 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.04231
  %81 = load i32, ptr %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %.lr.ph26, label %93

.lr.ph26:                                         ; preds = %79
  br label %83

83:                                               ; preds = %.lr.ph26, %83
  %.324 = phi i64 [ 0, %.lr.ph26 ], [ %91, %83 ]
  %.0523 = phi i64 [ 1, %.lr.ph26 ], [ %90, %83 ]
  %.03722 = phi i32 [ %81, %.lr.ph26 ], [ %89, %83 ]
  %.04321 = phi i64 [ 0, %.lr.ph26 ], [ %.144, %83 ]
  %84 = icmp slt i32 %.03722, 0
  %85 = add i64 %.04321, %.0523
  %86 = sub nsw i32 0, %.03722
  %.144 = select i1 %84, i64 %85, i64 %.04321
  %.138 = select i1 %84, i32 %86, i32 %.03722
  %87 = sext i32 %.138 to i64
  %88 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %87
  %89 = load i32, ptr %88, align 4
  %90 = shl i64 %.0523, 1
  %91 = add i64 %.324, 1
  %92 = icmp ne i32 %89, 0
  br i1 %92, label %83, label %._crit_edge27, !llvm.loop !13

._crit_edge27:                                    ; preds = %83
  %split28 = phi i64 [ %.144, %83 ]
  %split29 = phi i64 [ %91, %83 ]
  br label %93

93:                                               ; preds = %._crit_edge27, %79
  %.043.lcssa = phi i64 [ %split28, %._crit_edge27 ], [ 0, %79 ]
  %.3.lcssa = phi i64 [ %split29, %._crit_edge27 ], [ 0, %79 ]
  %94 = trunc i64 %.043.lcssa to i32
  %95 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04231
  store i32 %94, ptr %95, align 4
  %96 = trunc i64 %.3.lcssa to i8
  %97 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04231
  store i8 %96, ptr %97, align 1
  %98 = icmp ugt i64 %.043.lcssa, %.04530
  %spec.select = select i1 %98, i64 %.043.lcssa, i64 %.04530
  %99 = icmp ugt i64 %.3.lcssa, %.03932
  %.241 = select i1 %99, i64 %.3.lcssa, i64 %.03932
  br label %100

100:                                              ; preds = %93, %76
  %.146 = phi i64 [ %spec.select, %93 ], [ %.04530, %76 ]
  %.140 = phi i64 [ %.241, %93 ], [ %.03932, %76 ]
  %101 = add i64 %.04231, 1
  %102 = icmp ult i64 %101, 256
  br i1 %102, label %72, label %103, !llvm.loop !14

103:                                              ; preds = %100
  %.045.lcssa = phi i64 [ %.146, %100 ]
  %.039.lcssa = phi i64 [ %.140, %100 ]
  %104 = icmp ugt i64 %.039.lcssa, 32
  br i1 %104, label %105, label %108

105:                                              ; preds = %103
  %106 = call ptr @__acrt_iob_func(i32 noundef 2)
  %107 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %106, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

108:                                              ; preds = %103
  %109 = icmp eq i64 %.045.lcssa, 0
  br i1 %109, label %111, label %.preheader3

.preheader3:                                      ; preds = %108
  %110 = icmp ult i64 0, %1
  br i1 %110, label %.lr.ph49, label %166

.lr.ph49:                                         ; preds = %.preheader3
  br label %114

111:                                              ; preds = %108
  %112 = call ptr @__acrt_iob_func(i32 noundef 2)
  %113 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %112, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

114:                                              ; preds = %.lr.ph49, %162
  %.0148 = phi i32 [ -1, %.lr.ph49 ], [ %.1.lcssa, %162 ]
  %.1647 = phi i64 [ 0, %.lr.ph49 ], [ %164, %162 ]
  %.02446 = phi i8 [ 0, %.lr.ph49 ], [ %.125.lcssa, %162 ]
  %.02845 = phi i64 [ 0, %.lr.ph49 ], [ %.129.lcssa, %162 ]
  %.13444 = phi ptr [ %0, %.lr.ph49 ], [ %163, %162 ]
  %115 = load i8, ptr %.13444, align 1
  %116 = zext i8 %115 to i64
  %117 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %116
  %118 = load i8, ptr %117, align 1
  %119 = zext i8 %118 to i32
  %120 = sub nsw i32 %119, 1
  %121 = shl i32 1, %120
  %122 = sext i32 %121 to i64
  %123 = load i8, ptr %.13444, align 1
  %124 = zext i8 %123 to i64
  %125 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %124
  %126 = load i8, ptr %125, align 1
  %127 = zext i8 %126 to i64
  %128 = icmp ult i64 0, %127
  br i1 %128, label %.lr.ph39, label %162

.lr.ph39:                                         ; preds = %114
  br label %129

129:                                              ; preds = %.lr.ph39, %143
  %.137 = phi i32 [ %.0148, %.lr.ph39 ], [ %.2, %143 ]
  %.436 = phi i64 [ 0, %.lr.ph39 ], [ %155, %143 ]
  %.01535 = phi i64 [ %122, %.lr.ph39 ], [ %154, %143 ]
  %.12534 = phi i8 [ %.02446, %.lr.ph39 ], [ %.327, %143 ]
  %.12933 = phi i64 [ %.02845, %.lr.ph39 ], [ %.230, %143 ]
  %130 = icmp eq i32 %.137, 7
  br i1 %130, label %131, label %138

131:                                              ; preds = %129
  %132 = getelementptr inbounds nuw i8, ptr %11, i64 %.12933
  store i8 %.12534, ptr %132, align 1
  %133 = add i64 %.12933, 1
  %134 = icmp eq i64 %133, %1
  br i1 %134, label %135, label %143

135:                                              ; preds = %131
  %136 = call ptr @__acrt_iob_func(i32 noundef 2)
  %137 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %136, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

138:                                              ; preds = %129
  %139 = add nsw i32 %.137, 1
  %140 = sext i8 %.12534 to i32
  %141 = shl i32 %140, 1
  %142 = trunc i32 %141 to i8
  br label %143

143:                                              ; preds = %138, %131
  %.230 = phi i64 [ %.12933, %138 ], [ %133, %131 ]
  %.226 = phi i8 [ %142, %138 ], [ 0, %131 ]
  %.2 = phi i32 [ %139, %138 ], [ 0, %131 ]
  %144 = load i8, ptr %.13444, align 1
  %145 = zext i8 %144 to i64
  %146 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %145
  %147 = load i32, ptr %146, align 4
  %148 = zext i32 %147 to i64
  %149 = and i64 %148, %.01535
  %150 = icmp ne i64 %149, 0
  %151 = sext i8 %.226 to i32
  %152 = or i32 %151, 1
  %153 = trunc i32 %152 to i8
  %.327 = select i1 %150, i8 %153, i8 %.226
  %154 = lshr i64 %.01535, 1
  %155 = add i64 %.436, 1
  %156 = load i8, ptr %.13444, align 1
  %157 = zext i8 %156 to i64
  %158 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %157
  %159 = load i8, ptr %158, align 1
  %160 = zext i8 %159 to i64
  %161 = icmp ult i64 %155, %160
  br i1 %161, label %129, label %._crit_edge40, !llvm.loop !15

._crit_edge40:                                    ; preds = %143
  %split41 = phi i64 [ %.230, %143 ]
  %split42 = phi i8 [ %.327, %143 ]
  %split43 = phi i32 [ %.2, %143 ]
  br label %162

162:                                              ; preds = %._crit_edge40, %114
  %.129.lcssa = phi i64 [ %split41, %._crit_edge40 ], [ %.02845, %114 ]
  %.125.lcssa = phi i8 [ %split42, %._crit_edge40 ], [ %.02446, %114 ]
  %.1.lcssa = phi i32 [ %split43, %._crit_edge40 ], [ %.0148, %114 ]
  %163 = getelementptr inbounds nuw i8, ptr %.13444, i32 1
  %164 = add i64 %.1647, 1
  %165 = icmp ult i64 %164, %1
  br i1 %165, label %114, label %._crit_edge50, !llvm.loop !16

._crit_edge50:                                    ; preds = %162
  %split51 = phi i64 [ %.129.lcssa, %162 ]
  %split52 = phi i8 [ %.125.lcssa, %162 ]
  %split53 = phi i32 [ %.1.lcssa, %162 ]
  br label %166

166:                                              ; preds = %._crit_edge50, %.preheader3
  %.028.lcssa = phi i64 [ %split51, %._crit_edge50 ], [ 0, %.preheader3 ]
  %.024.lcssa = phi i8 [ %split52, %._crit_edge50 ], [ 0, %.preheader3 ]
  %.01.lcssa = phi i32 [ %split53, %._crit_edge50 ], [ -1, %.preheader3 ]
  %167 = sub nsw i32 7, %.01.lcssa
  %168 = sext i8 %.024.lcssa to i32
  %169 = shl i32 %168, %167
  %170 = trunc i32 %169 to i8
  %171 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %170, ptr %171, align 1
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 1024, i1 false)
  br label %172

.preheader2:                                      ; preds = %204
  br label %207

172:                                              ; preds = %166, %204
  %.062 = phi ptr [ %9, %166 ], [ %174, %204 ]
  %.2761 = phi i64 [ 0, %166 ], [ %205, %204 ]
  %173 = trunc i64 %.2761 to i8
  store i8 %173, ptr %.062, align 1
  %174 = getelementptr inbounds nuw i8, ptr %.062, i32 1
  %175 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.2761
  %176 = load i32, ptr %175, align 4
  %177 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2761
  %178 = load i8, ptr %177, align 1
  %179 = zext i8 %178 to i32
  %180 = or i32 %176, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %204

182:                                              ; preds = %172
  %183 = sub nsw i32 %179, 1
  %184 = shl i32 1, %183
  %185 = sext i32 %184 to i64
  %186 = load i8, ptr %177, align 1
  %187 = zext i8 %186 to i64
  %188 = icmp ult i64 0, %187
  br i1 %188, label %.lr.ph58, label %202

.lr.ph58:                                         ; preds = %182
  br label %189

189:                                              ; preds = %.lr.ph58, %189
  %.556 = phi i64 [ 0, %.lr.ph58 ], [ %198, %189 ]
  %.11655 = phi i64 [ %185, %.lr.ph58 ], [ %197, %189 ]
  %.01954 = phi i32 [ 0, %.lr.ph58 ], [ %spec.select1, %189 ]
  %190 = mul i32 %.01954, 2
  %191 = add i32 %190, 1
  %192 = load i32, ptr %175, align 4
  %193 = zext i32 %192 to i64
  %194 = and i64 %193, %.11655
  %195 = icmp ne i64 %194, 0
  %196 = add i32 %191, 1
  %spec.select1 = select i1 %195, i32 %196, i32 %191
  %197 = lshr i64 %.11655, 1
  %198 = add i64 %.556, 1
  %199 = load i8, ptr %177, align 1
  %200 = zext i8 %199 to i64
  %201 = icmp ult i64 %198, %200
  br i1 %201, label %189, label %._crit_edge59, !llvm.loop !17

._crit_edge59:                                    ; preds = %189
  %split60 = phi i32 [ %spec.select1, %189 ]
  br label %202

202:                                              ; preds = %._crit_edge59, %182
  %.019.lcssa = phi i32 [ %split60, %._crit_edge59 ], [ 0, %182 ]
  %203 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.2761
  store i32 %.019.lcssa, ptr %203, align 4
  br label %204

204:                                              ; preds = %202, %172
  %205 = add i64 %.2761, 1
  %206 = icmp ult i64 %205, 256
  br i1 %206, label %172, label %.preheader2, !llvm.loop !18

.preheader1:                                      ; preds = %.critedge
  br label %229

207:                                              ; preds = %.preheader2, %.critedge
  %.669 = phi i64 [ 1, %.preheader2 ], [ %227, %.critedge ]
  %208 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.669
  %209 = load i32, ptr %208, align 4
  %210 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.669
  %211 = load i8, ptr %210, align 1
  %212 = icmp ne i64 %.669, 0
  br i1 %212, label %.lr.ph65, label %.critedge

.lr.ph65:                                         ; preds = %207
  br label %213

213:                                              ; preds = %.lr.ph65, %218
  %.3863 = phi i64 [ %.669, %.lr.ph65 ], [ %223, %218 ]
  %214 = sub i64 %.3863, 1
  %215 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %214
  %216 = load i32, ptr %215, align 4
  %217 = icmp ugt i32 %216, %209
  br i1 %217, label %218, label %..critedge_crit_edge

218:                                              ; preds = %213
  %219 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.3863
  store i32 %216, ptr %219, align 4
  %220 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %214
  %221 = load i8, ptr %220, align 1
  %222 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.3863
  store i8 %221, ptr %222, align 1
  %223 = add i64 %.3863, -1
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %213, label %..critedge_crit_edge67, !llvm.loop !19

..critedge_crit_edge:                             ; preds = %213
  %split66 = phi i64 [ %.3863, %213 ]
  br label %.critedge

..critedge_crit_edge67:                           ; preds = %218
  %split68 = phi i64 [ %223, %218 ]
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge67, %..critedge_crit_edge, %207
  %.38.lcssa = phi i64 [ %split66, %..critedge_crit_edge ], [ %split68, %..critedge_crit_edge67 ], [ %.669, %207 ]
  %225 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %209, ptr %225, align 4
  %226 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %211, ptr %226, align 1
  %227 = add i64 %.669, 1
  %228 = icmp ult i64 %227, 256
  br i1 %228, label %207, label %.preheader1, !llvm.loop !20

229:                                              ; preds = %229, %.preheader1
  %.49 = phi i64 [ %233, %229 ], [ 0, %.preheader1 ]
  %230 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %231 = load i32, ptr %230, align 4
  %232 = icmp eq i32 %231, 0
  %233 = add i64 %.49, 1
  br i1 %232, label %229, label %.preheader, !llvm.loop !21

.preheader:                                       ; preds = %229
  %.49.lcssa = phi i64 [ %.49, %229 ]
  %234 = icmp ult i64 0, %1
  br i1 %234, label %.lr.ph76, label %260

.lr.ph76:                                         ; preds = %.preheader
  br label %235

235:                                              ; preds = %.lr.ph76, %255
  %.775 = phi i64 [ %.49.lcssa, %.lr.ph76 ], [ %.9, %255 ]
  %.31374 = phi i64 [ 0, %.lr.ph76 ], [ %.414, %255 ]
  %.21773 = phi i64 [ 128, %.lr.ph76 ], [ %.318, %255 ]
  %.22172 = phi i32 [ 0, %.lr.ph76 ], [ %.423, %255 ]
  %.03171 = phi ptr [ %11, %.lr.ph76 ], [ %.132, %255 ]
  %.23570 = phi ptr [ %0, %.lr.ph76 ], [ %.336, %255 ]
  %236 = mul i32 %.22172, 2
  %237 = add i32 %236, 1
  %238 = load i8, ptr %.03171, align 1
  %239 = zext i8 %238 to i64
  %240 = and i64 %239, %.21773
  %241 = icmp ne i64 %240, 0
  %242 = add i32 %237, 1
  %spec.select2 = select i1 %241, i32 %242, i32 %237
  br label %243

243:                                              ; preds = %243, %235
  %.8 = phi i64 [ %.775, %235 ], [ %247, %243 ]
  %244 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %245 = load i32, ptr %244, align 4
  %246 = icmp ult i32 %245, %spec.select2
  %247 = add i64 %.8, 1
  br i1 %246, label %243, label %248, !llvm.loop !22

248:                                              ; preds = %243
  %.8.lcssa = phi i64 [ %.8, %243 ]
  %.lcssa = phi i32 [ %245, %243 ]
  %249 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %249, label %250, label %255

250:                                              ; preds = %248
  %251 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %252 = load i8, ptr %251, align 1
  store i8 %252, ptr %.23570, align 1
  %253 = getelementptr inbounds nuw i8, ptr %.23570, i32 1
  %254 = add i64 %.31374, 1
  br label %255

255:                                              ; preds = %250, %248
  %.336 = phi ptr [ %253, %250 ], [ %.23570, %248 ]
  %.423 = phi i32 [ 0, %250 ], [ %spec.select2, %248 ]
  %.414 = phi i64 [ %254, %250 ], [ %.31374, %248 ]
  %.9 = phi i64 [ %.49.lcssa, %250 ], [ %.8.lcssa, %248 ]
  %256 = icmp ugt i64 %.21773, 1
  %257 = lshr i64 %.21773, 1
  %258 = getelementptr inbounds nuw i8, ptr %.03171, i32 1
  %.132 = select i1 %256, ptr %.03171, ptr %258
  %.318 = select i1 %256, i64 %257, i64 128
  %259 = icmp ult i64 %.414, %1
  br i1 %259, label %235, label %._crit_edge77, !llvm.loop !23

._crit_edge77:                                    ; preds = %255
  br label %260

260:                                              ; preds = %._crit_edge77, %.preheader
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
  br i1 %44, label %12, label %._crit_edge2, !llvm.loop !24

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
  br i1 %6, label %7, label %.loopexit, !llvm.loop !25

7:                                                ; preds = %.preheader, %5
  %.011 = phi i32 [ 1, %.preheader ], [ %.01, %5 ]
  %8 = load ptr, ptr %4, align 8
  %9 = call i32 @strcmp(ptr noundef %8, ptr noundef @.str.4) #7
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

14:                                               ; preds = %12, %14
  %.122 = phi i32 [ 0, %12 ], [ %15, %14 ]
  call void @compdecomp(ptr noundef %13, i64 noundef 10000000)
  %15 = add nsw i32 %.122, 1
  %16 = icmp slt i32 %15, 30
  br i1 %16, label %14, label %17, !llvm.loop !26

17:                                               ; preds = %14
  call void @free(ptr noundef %13)
  %18 = icmp ne i8 %.0, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = call ptr @__acrt_iob_func(i32 noundef 1)
  %21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.5, double noundef 0.000000e+00) #7
  br label %25

22:                                               ; preds = %17
  %23 = call ptr @__acrt_iob_func(i32 noundef 1)
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.6, double noundef 0.000000e+00) #7
  br label %25

25:                                               ; preds = %22, %19
  %26 = call ptr @__acrt_iob_func(i32 noundef 1)
  %27 = call i32 @fflush(ptr noundef %26)
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
