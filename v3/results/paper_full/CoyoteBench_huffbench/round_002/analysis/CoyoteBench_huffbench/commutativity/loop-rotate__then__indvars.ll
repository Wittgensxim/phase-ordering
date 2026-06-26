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
  br i1 %3, label %.lr.ph, label %10

.lr.ph:                                           ; preds = %1
  br label %4

4:                                                ; preds = %.lr.ph, %4
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %4 ]
  %.011 = phi ptr [ %2, %.lr.ph ], [ %8, %4 ]
  %5 = call i64 @random4()
  %6 = getelementptr inbounds nuw i8, ptr @.str, i64 %5
  %7 = load i8, ptr %6, align 1
  store i8 %7, ptr %.011, align 1
  %8 = getelementptr inbounds nuw i8, ptr %.011, i32 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %9 = icmp ult i64 %indvars.iv.next, %0
  br i1 %9, label %4, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %4
  br label %10

10:                                               ; preds = %._crit_edge, %1
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
  br i1 %12, label %.lr.ph, label %.preheader6

.lr.ph:                                           ; preds = %2
  br label %13

..preheader6_crit_edge:                           ; preds = %13
  br label %.preheader6

.preheader6:                                      ; preds = %..preheader6_crit_edge, %2
  br label %22

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
  %20 = add nuw i64 %.0214, 1
  %exitcond = icmp ne i64 %20, %1
  br i1 %exitcond, label %13, label %..preheader6_crit_edge, !llvm.loop !9

.preheader5:                                      ; preds = %29
  %.010.lcssa = phi i64 [ %.111, %29 ]
  %21 = icmp ugt i64 %.010.lcssa, 0
  br i1 %21, label %.lr.ph18, label %.preheader4

.lr.ph18:                                         ; preds = %.preheader5
  br label %32

22:                                               ; preds = %.preheader6, %29
  %.1316 = phi i64 [ 0, %.preheader6 ], [ %30, %29 ]
  %.01015 = phi i64 [ 0, %.preheader6 ], [ %.111, %29 ]
  %23 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.1316
  %24 = load i64, ptr %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.01015
  store i64 %.1316, ptr %27, align 8
  %28 = add i64 %.01015, 1
  br label %29

29:                                               ; preds = %26, %22
  %.111 = phi i64 [ %28, %26 ], [ %.01015, %22 ]
  %30 = add nuw nsw i64 %.1316, 1
  %exitcond78 = icmp ne i64 %30, 256
  br i1 %exitcond78, label %22, label %.preheader5, !llvm.loop !10

..preheader4_crit_edge:                           ; preds = %32
  br label %.preheader4

.preheader4:                                      ; preds = %..preheader4_crit_edge, %.preheader5
  %31 = icmp ugt i64 %.010.lcssa, 1
  br i1 %31, label %.lr.ph20, label %58

.lr.ph20:                                         ; preds = %.preheader4
  br label %37

32:                                               ; preds = %.lr.ph18, %32
  %.2417 = phi i64 [ %.010.lcssa, %.lr.ph18 ], [ %35, %32 ]
  %33 = trunc i64 %.010.lcssa to i32
  %34 = trunc i64 %.2417 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %33, i32 noundef %34)
  %35 = add i64 %.2417, -1
  %36 = icmp ugt i64 %35, 0
  br i1 %36, label %32, label %..preheader4_crit_edge, !llvm.loop !11

37:                                               ; preds = %.lr.ph20, %37
  %.21219 = phi i64 [ %.010.lcssa, %.lr.ph20 ], [ %38, %37 ]
  %38 = add i64 %.21219, -1
  %39 = load i64, ptr %4, align 16
  %40 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %38
  %41 = load i64, ptr %40, align 8
  store i64 %41, ptr %4, align 16
  %42 = trunc i64 %38 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %42, i32 noundef 1)
  %43 = load i64, ptr %4, align 16
  %44 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %43
  %45 = load i64, ptr %44, align 8
  %46 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %39
  %47 = load i64, ptr %46, align 8
  %48 = add i64 %45, %47
  %49 = add i64 256, %38
  %50 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %49
  store i64 %48, ptr %50, align 8
  %51 = trunc i64 %49 to i32
  %52 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %39
  store i32 %51, ptr %52, align 4
  %53 = sub i64 -256, %38
  %54 = trunc i64 %53 to i32
  %55 = load i64, ptr %4, align 16
  %56 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %55
  store i32 %54, ptr %56, align 4
  store i64 %49, ptr %4, align 16
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %42, i32 noundef 1)
  %57 = icmp ugt i64 %38, 1
  br i1 %57, label %37, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %37
  br label %58

58:                                               ; preds = %._crit_edge, %.preheader4
  %.212.lcssa = phi i64 [ 1, %._crit_edge ], [ %.010.lcssa, %.preheader4 ]
  %59 = add i64 256, %.212.lcssa
  %60 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %59
  store i32 0, ptr %60, align 4
  br label %61

61:                                               ; preds = %58, %89
  %.03932 = phi i64 [ 0, %58 ], [ %.140, %89 ]
  %.04231 = phi i64 [ 0, %58 ], [ %90, %89 ]
  %.04530 = phi i64 [ 0, %58 ], [ %.146, %89 ]
  %62 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.04231
  %63 = load i64, ptr %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04231
  store i32 0, ptr %66, align 4
  %67 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04231
  store i8 0, ptr %67, align 1
  br label %89

68:                                               ; preds = %61
  %69 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.04231
  %70 = load i32, ptr %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %.lr.ph26, label %82

.lr.ph26:                                         ; preds = %68
  br label %72

72:                                               ; preds = %.lr.ph26, %72
  %.324 = phi i64 [ 0, %.lr.ph26 ], [ %80, %72 ]
  %.0523 = phi i64 [ 1, %.lr.ph26 ], [ %79, %72 ]
  %.03722 = phi i32 [ %70, %.lr.ph26 ], [ %78, %72 ]
  %.04321 = phi i64 [ 0, %.lr.ph26 ], [ %.144, %72 ]
  %73 = icmp slt i32 %.03722, 0
  %74 = add i64 %.04321, %.0523
  %75 = sub nsw i32 0, %.03722
  %.144 = select i1 %73, i64 %74, i64 %.04321
  %.138 = select i1 %73, i32 %75, i32 %.03722
  %76 = sext i32 %.138 to i64
  %77 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %76
  %78 = load i32, ptr %77, align 4
  %79 = shl i64 %.0523, 1
  %80 = add i64 %.324, 1
  %81 = icmp ne i32 %78, 0
  br i1 %81, label %72, label %._crit_edge27, !llvm.loop !13

._crit_edge27:                                    ; preds = %72
  %split28 = phi i64 [ %.144, %72 ]
  %split29 = phi i64 [ %80, %72 ]
  br label %82

82:                                               ; preds = %._crit_edge27, %68
  %.043.lcssa = phi i64 [ %split28, %._crit_edge27 ], [ 0, %68 ]
  %.3.lcssa = phi i64 [ %split29, %._crit_edge27 ], [ 0, %68 ]
  %83 = trunc i64 %.043.lcssa to i32
  %84 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04231
  store i32 %83, ptr %84, align 4
  %85 = trunc i64 %.3.lcssa to i8
  %86 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04231
  store i8 %85, ptr %86, align 1
  %87 = icmp ugt i64 %.043.lcssa, %.04530
  %spec.select = select i1 %87, i64 %.043.lcssa, i64 %.04530
  %88 = icmp ugt i64 %.3.lcssa, %.03932
  %.241 = select i1 %88, i64 %.3.lcssa, i64 %.03932
  br label %89

89:                                               ; preds = %82, %65
  %.146 = phi i64 [ %spec.select, %82 ], [ %.04530, %65 ]
  %.140 = phi i64 [ %.241, %82 ], [ %.03932, %65 ]
  %90 = add nuw nsw i64 %.04231, 1
  %exitcond79 = icmp ne i64 %90, 256
  br i1 %exitcond79, label %61, label %91, !llvm.loop !14

91:                                               ; preds = %89
  %.045.lcssa = phi i64 [ %.146, %89 ]
  %.039.lcssa = phi i64 [ %.140, %89 ]
  %92 = icmp ugt i64 %.039.lcssa, 32
  br i1 %92, label %93, label %96

93:                                               ; preds = %91
  %94 = call ptr @__acrt_iob_func(i32 noundef 2)
  %95 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %94, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

96:                                               ; preds = %91
  %97 = icmp eq i64 %.045.lcssa, 0
  br i1 %97, label %99, label %.preheader3

.preheader3:                                      ; preds = %96
  %98 = icmp ult i64 0, %1
  br i1 %98, label %.lr.ph49, label %153

.lr.ph49:                                         ; preds = %.preheader3
  br label %102

99:                                               ; preds = %96
  %100 = call ptr @__acrt_iob_func(i32 noundef 2)
  %101 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %100, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

102:                                              ; preds = %.lr.ph49, %150
  %.0148 = phi i32 [ -1, %.lr.ph49 ], [ %.1.lcssa, %150 ]
  %.1647 = phi i64 [ 0, %.lr.ph49 ], [ %152, %150 ]
  %.02446 = phi i8 [ 0, %.lr.ph49 ], [ %.125.lcssa, %150 ]
  %.02845 = phi i64 [ 0, %.lr.ph49 ], [ %.129.lcssa, %150 ]
  %.13444 = phi ptr [ %0, %.lr.ph49 ], [ %151, %150 ]
  %103 = load i8, ptr %.13444, align 1
  %104 = zext i8 %103 to i64
  %105 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %104
  %106 = load i8, ptr %105, align 1
  %107 = zext i8 %106 to i32
  %108 = sub nsw i32 %107, 1
  %109 = shl i32 1, %108
  %110 = sext i32 %109 to i64
  %111 = load i8, ptr %.13444, align 1
  %112 = zext i8 %111 to i64
  %113 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %112
  %114 = load i8, ptr %113, align 1
  %115 = zext i8 %114 to i64
  %116 = icmp ult i64 0, %115
  br i1 %116, label %.lr.ph39, label %150

.lr.ph39:                                         ; preds = %102
  br label %117

117:                                              ; preds = %.lr.ph39, %131
  %.137 = phi i32 [ %.0148, %.lr.ph39 ], [ %.2, %131 ]
  %.436 = phi i64 [ 0, %.lr.ph39 ], [ %143, %131 ]
  %.01535 = phi i64 [ %110, %.lr.ph39 ], [ %142, %131 ]
  %.12534 = phi i8 [ %.02446, %.lr.ph39 ], [ %.327, %131 ]
  %.12933 = phi i64 [ %.02845, %.lr.ph39 ], [ %.230, %131 ]
  %118 = icmp eq i32 %.137, 7
  br i1 %118, label %119, label %126

119:                                              ; preds = %117
  %120 = getelementptr inbounds nuw i8, ptr %11, i64 %.12933
  store i8 %.12534, ptr %120, align 1
  %121 = add i64 %.12933, 1
  %122 = icmp eq i64 %121, %1
  br i1 %122, label %123, label %131

123:                                              ; preds = %119
  %124 = call ptr @__acrt_iob_func(i32 noundef 2)
  %125 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %124, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

126:                                              ; preds = %117
  %127 = add nsw i32 %.137, 1
  %128 = sext i8 %.12534 to i32
  %129 = shl i32 %128, 1
  %130 = trunc i32 %129 to i8
  br label %131

131:                                              ; preds = %126, %119
  %.230 = phi i64 [ %.12933, %126 ], [ %121, %119 ]
  %.226 = phi i8 [ %130, %126 ], [ 0, %119 ]
  %.2 = phi i32 [ %127, %126 ], [ 0, %119 ]
  %132 = load i8, ptr %.13444, align 1
  %133 = zext i8 %132 to i64
  %134 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %133
  %135 = load i32, ptr %134, align 4
  %136 = zext i32 %135 to i64
  %137 = and i64 %136, %.01535
  %138 = icmp ne i64 %137, 0
  %139 = sext i8 %.226 to i32
  %140 = or i32 %139, 1
  %141 = trunc i32 %140 to i8
  %.327 = select i1 %138, i8 %141, i8 %.226
  %142 = lshr i64 %.01535, 1
  %143 = add nuw nsw i64 %.436, 1
  %144 = load i8, ptr %.13444, align 1
  %145 = zext i8 %144 to i64
  %146 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %145
  %147 = load i8, ptr %146, align 1
  %148 = zext i8 %147 to i64
  %149 = icmp samesign ult i64 %143, %148
  br i1 %149, label %117, label %._crit_edge40, !llvm.loop !15

._crit_edge40:                                    ; preds = %131
  %split41 = phi i64 [ %.230, %131 ]
  %split42 = phi i8 [ %.327, %131 ]
  %split43 = phi i32 [ %.2, %131 ]
  br label %150

150:                                              ; preds = %._crit_edge40, %102
  %.129.lcssa = phi i64 [ %split41, %._crit_edge40 ], [ %.02845, %102 ]
  %.125.lcssa = phi i8 [ %split42, %._crit_edge40 ], [ %.02446, %102 ]
  %.1.lcssa = phi i32 [ %split43, %._crit_edge40 ], [ %.0148, %102 ]
  %151 = getelementptr inbounds nuw i8, ptr %.13444, i32 1
  %152 = add nuw i64 %.1647, 1
  %exitcond80 = icmp ne i64 %152, %1
  br i1 %exitcond80, label %102, label %._crit_edge50, !llvm.loop !16

._crit_edge50:                                    ; preds = %150
  %split51 = phi i64 [ %.129.lcssa, %150 ]
  %split52 = phi i8 [ %.125.lcssa, %150 ]
  %split53 = phi i32 [ %.1.lcssa, %150 ]
  br label %153

153:                                              ; preds = %._crit_edge50, %.preheader3
  %.028.lcssa = phi i64 [ %split51, %._crit_edge50 ], [ 0, %.preheader3 ]
  %.024.lcssa = phi i8 [ %split52, %._crit_edge50 ], [ 0, %.preheader3 ]
  %.01.lcssa = phi i32 [ %split53, %._crit_edge50 ], [ -1, %.preheader3 ]
  %154 = sub nsw i32 7, %.01.lcssa
  %155 = sext i8 %.024.lcssa to i32
  %156 = shl i32 %155, %154
  %157 = trunc i32 %156 to i8
  %158 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %157, ptr %158, align 1
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 1024, i1 false)
  br label %159

.preheader2:                                      ; preds = %191
  br label %193

159:                                              ; preds = %153, %191
  %.062 = phi ptr [ %9, %153 ], [ %161, %191 ]
  %.2761 = phi i64 [ 0, %153 ], [ %192, %191 ]
  %160 = trunc i64 %.2761 to i8
  store i8 %160, ptr %.062, align 1
  %161 = getelementptr inbounds nuw i8, ptr %.062, i32 1
  %162 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.2761
  %163 = load i32, ptr %162, align 4
  %164 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2761
  %165 = load i8, ptr %164, align 1
  %166 = zext i8 %165 to i32
  %167 = or i32 %163, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %191

169:                                              ; preds = %159
  %170 = sub nsw i32 %166, 1
  %171 = shl i32 1, %170
  %172 = sext i32 %171 to i64
  %173 = load i8, ptr %164, align 1
  %174 = zext i8 %173 to i64
  %175 = icmp ult i64 0, %174
  br i1 %175, label %.lr.ph58, label %189

.lr.ph58:                                         ; preds = %169
  br label %176

176:                                              ; preds = %.lr.ph58, %176
  %.556 = phi i64 [ 0, %.lr.ph58 ], [ %185, %176 ]
  %.11655 = phi i64 [ %172, %.lr.ph58 ], [ %184, %176 ]
  %.01954 = phi i32 [ 0, %.lr.ph58 ], [ %spec.select1, %176 ]
  %177 = mul i32 %.01954, 2
  %178 = add i32 %177, 1
  %179 = load i32, ptr %162, align 4
  %180 = zext i32 %179 to i64
  %181 = and i64 %180, %.11655
  %182 = icmp ne i64 %181, 0
  %183 = add i32 %178, 1
  %spec.select1 = select i1 %182, i32 %183, i32 %178
  %184 = lshr i64 %.11655, 1
  %185 = add nuw nsw i64 %.556, 1
  %186 = load i8, ptr %164, align 1
  %187 = zext i8 %186 to i64
  %188 = icmp samesign ult i64 %185, %187
  br i1 %188, label %176, label %._crit_edge59, !llvm.loop !17

._crit_edge59:                                    ; preds = %176
  %split60 = phi i32 [ %spec.select1, %176 ]
  br label %189

189:                                              ; preds = %._crit_edge59, %169
  %.019.lcssa = phi i32 [ %split60, %._crit_edge59 ], [ 0, %169 ]
  %190 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.2761
  store i32 %.019.lcssa, ptr %190, align 4
  br label %191

191:                                              ; preds = %189, %159
  %192 = add nuw nsw i64 %.2761, 1
  %exitcond81 = icmp ne i64 %192, 256
  br i1 %exitcond81, label %159, label %.preheader2, !llvm.loop !18

.preheader1:                                      ; preds = %.critedge
  br label %213

193:                                              ; preds = %.preheader2, %.critedge
  %.669 = phi i64 [ 1, %.preheader2 ], [ %212, %.critedge ]
  %194 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.669
  %195 = load i32, ptr %194, align 4
  %196 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.669
  %197 = load i8, ptr %196, align 1
  br i1 true, label %.lr.ph65, label %.critedge

.lr.ph65:                                         ; preds = %193
  br label %198

198:                                              ; preds = %.lr.ph65, %203
  %.3863 = phi i64 [ %.669, %.lr.ph65 ], [ %208, %203 ]
  %199 = sub nuw nsw i64 %.3863, 1
  %200 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %199
  %201 = load i32, ptr %200, align 4
  %202 = icmp ugt i32 %201, %195
  br i1 %202, label %203, label %..critedge_crit_edge

203:                                              ; preds = %198
  %204 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.3863
  store i32 %201, ptr %204, align 4
  %205 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %199
  %206 = load i8, ptr %205, align 1
  %207 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.3863
  store i8 %206, ptr %207, align 1
  %208 = add nsw i64 %.3863, -1
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %198, label %..critedge_crit_edge67, !llvm.loop !19

..critedge_crit_edge:                             ; preds = %198
  %split66 = phi i64 [ %.3863, %198 ]
  br label %.critedge

..critedge_crit_edge67:                           ; preds = %203
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge67, %..critedge_crit_edge, %193
  %.38.lcssa = phi i64 [ %split66, %..critedge_crit_edge ], [ 0, %..critedge_crit_edge67 ], [ %.669, %193 ]
  %210 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %195, ptr %210, align 4
  %211 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %197, ptr %211, align 1
  %212 = add nuw nsw i64 %.669, 1
  %exitcond82 = icmp ne i64 %212, 256
  br i1 %exitcond82, label %193, label %.preheader1, !llvm.loop !20

213:                                              ; preds = %213, %.preheader1
  %.49 = phi i64 [ %217, %213 ], [ 0, %.preheader1 ]
  %214 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %215 = load i32, ptr %214, align 4
  %216 = icmp eq i32 %215, 0
  %217 = add i64 %.49, 1
  br i1 %216, label %213, label %.preheader, !llvm.loop !21

.preheader:                                       ; preds = %213
  %.49.lcssa = phi i64 [ %.49, %213 ]
  %218 = icmp ult i64 0, %1
  br i1 %218, label %.lr.ph76, label %244

.lr.ph76:                                         ; preds = %.preheader
  br label %219

219:                                              ; preds = %.lr.ph76, %239
  %.775 = phi i64 [ %.49.lcssa, %.lr.ph76 ], [ %.9, %239 ]
  %.31374 = phi i64 [ 0, %.lr.ph76 ], [ %.414, %239 ]
  %.21773 = phi i64 [ 128, %.lr.ph76 ], [ %.318, %239 ]
  %.22172 = phi i32 [ 0, %.lr.ph76 ], [ %.423, %239 ]
  %.03171 = phi ptr [ %11, %.lr.ph76 ], [ %.132, %239 ]
  %.23570 = phi ptr [ %0, %.lr.ph76 ], [ %.336, %239 ]
  %220 = mul i32 %.22172, 2
  %221 = add i32 %220, 1
  %222 = load i8, ptr %.03171, align 1
  %223 = zext i8 %222 to i64
  %224 = and i64 %223, %.21773
  %225 = icmp ne i64 %224, 0
  %226 = add i32 %221, 1
  %spec.select2 = select i1 %225, i32 %226, i32 %221
  br label %227

227:                                              ; preds = %227, %219
  %.8 = phi i64 [ %.775, %219 ], [ %231, %227 ]
  %228 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %229 = load i32, ptr %228, align 4
  %230 = icmp ult i32 %229, %spec.select2
  %231 = add i64 %.8, 1
  br i1 %230, label %227, label %232, !llvm.loop !22

232:                                              ; preds = %227
  %.8.lcssa = phi i64 [ %.8, %227 ]
  %.lcssa = phi i32 [ %229, %227 ]
  %233 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %233, label %234, label %239

234:                                              ; preds = %232
  %235 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %236 = load i8, ptr %235, align 1
  store i8 %236, ptr %.23570, align 1
  %237 = getelementptr inbounds nuw i8, ptr %.23570, i32 1
  %238 = add i64 %.31374, 1
  br label %239

239:                                              ; preds = %234, %232
  %.336 = phi ptr [ %237, %234 ], [ %.23570, %232 ]
  %.423 = phi i32 [ 0, %234 ], [ %spec.select2, %232 ]
  %.414 = phi i64 [ %238, %234 ], [ %.31374, %232 ]
  %.9 = phi i64 [ %.49.lcssa, %234 ], [ %.8.lcssa, %232 ]
  %240 = icmp ugt i64 %.21773, 1
  %241 = lshr i64 %.21773, 1
  %242 = getelementptr inbounds nuw i8, ptr %.03171, i32 1
  %.132 = select i1 %240, ptr %.03171, ptr %242
  %.318 = select i1 %240, i64 %241, i64 128
  %243 = icmp ult i64 %.414, %1
  br i1 %243, label %219, label %._crit_edge77, !llvm.loop !23

._crit_edge77:                                    ; preds = %239
  br label %244

244:                                              ; preds = %._crit_edge77, %.preheader
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
  br i1 %3, label %.preheader, label %11

.preheader:                                       ; preds = %2
  %4 = getelementptr inbounds ptr, ptr %1, i64 1
  br label %6

5:                                                ; preds = %6
  %exitcond = icmp ne i32 %10, %0
  br i1 %exitcond, label %6, label %.loopexit, !llvm.loop !25

6:                                                ; preds = %.preheader, %5
  %.011 = phi i32 [ 1, %.preheader ], [ %10, %5 ]
  %7 = load ptr, ptr %4, align 8
  %8 = call i32 @strcmp(ptr noundef %7, ptr noundef @.str.4) #7
  %9 = icmp ne i32 %8, 0
  %10 = add i32 %.011, 1
  br i1 %9, label %5, label %.loopexit

.loopexit:                                        ; preds = %5, %6
  %.0.ph = phi i8 [ 1, %6 ], [ 0, %5 ]
  br label %11

11:                                               ; preds = %.loopexit, %2
  %.0 = phi i8 [ 0, %2 ], [ %.0.ph, %.loopexit ]
  %12 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %13

13:                                               ; preds = %11, %13
  %.122 = phi i32 [ 0, %11 ], [ %14, %13 ]
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  %14 = add nuw nsw i32 %.122, 1
  %exitcond3 = icmp ne i32 %14, 30
  br i1 %exitcond3, label %13, label %15, !llvm.loop !26

15:                                               ; preds = %13
  call void @free(ptr noundef %12)
  %16 = icmp ne i8 %.0, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = call ptr @__acrt_iob_func(i32 noundef 1)
  %19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.5, double noundef 0.000000e+00) #7
  br label %23

20:                                               ; preds = %15
  %21 = call ptr @__acrt_iob_func(i32 noundef 1)
  %22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.6, double noundef 0.000000e+00) #7
  br label %23

23:                                               ; preds = %20, %17
  %24 = call ptr @__acrt_iob_func(i32 noundef 1)
  %25 = call i32 @fflush(ptr noundef %24)
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
