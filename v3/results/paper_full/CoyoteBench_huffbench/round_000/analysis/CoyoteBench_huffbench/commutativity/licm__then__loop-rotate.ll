; ModuleID = 'results\paper_full\CoyoteBench_huffbench\CoyoteBench_huffbench.ll'
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
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store i64 %0, ptr %2, align 8
  store ptr @.str, ptr %3, align 8
  %7 = load i64, ptr %2, align 8
  %8 = call ptr @malloc(i64 noundef %7) #6
  store ptr %8, ptr %4, align 8
  %9 = load ptr, ptr %4, align 8
  store ptr %9, ptr %5, align 8
  store i32 0, ptr %6, align 4
  %10 = load i64, ptr %2, align 8
  %11 = load ptr, ptr %3, align 8
  %.promoted = load i32, ptr %6, align 4
  %.promoted1 = load ptr, ptr %5, align 8
  %12 = sext i32 %.promoted to i64
  %13 = icmp ult i64 %12, %10
  br i1 %13, label %.lr.ph, label %25

.lr.ph:                                           ; preds = %1
  br label %14

14:                                               ; preds = %.lr.ph, %21
  %15 = phi i32 [ %.promoted, %.lr.ph ], [ %22, %21 ]
  %16 = phi ptr [ %.promoted1, %.lr.ph ], [ %20, %21 ]
  %17 = call i64 @random4()
  %18 = getelementptr inbounds nuw i8, ptr %11, i64 %17
  %19 = load i8, ptr %18, align 1
  store i8 %19, ptr %16, align 1
  %20 = getelementptr inbounds nuw i8, ptr %16, i32 1
  br label %21

21:                                               ; preds = %14
  %22 = add nsw i32 %15, 1
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %23, %10
  br i1 %24, label %14, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %21
  %split = phi ptr [ %20, %21 ]
  %split3 = phi i32 [ %22, %21 ]
  br label %25

25:                                               ; preds = %._crit_edge, %1
  %.lcssa2 = phi ptr [ %split, %._crit_edge ], [ %.promoted1, %1 ]
  %.lcssa = phi i32 [ %split3, %._crit_edge ], [ %.promoted, %1 ]
  store i32 %.lcssa, ptr %6, align 4
  store ptr %.lcssa2, ptr %5, align 8
  %26 = load ptr, ptr %4, align 8
  ret ptr %26
}

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @compdecomp(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca [512 x i64], align 16
  %16 = alloca [256 x i64], align 16
  %17 = alloca [512 x i32], align 16
  %18 = alloca [256 x i32], align 16
  %19 = alloca [256 x i8], align 16
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i8, align 1
  %28 = alloca i32, align 4
  %29 = alloca [256 x i32], align 16
  %30 = alloca [256 x i8], align 16
  %31 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %32 = load ptr, ptr %3, align 8
  store ptr %32, ptr %13, align 8
  %33 = load i64, ptr %4, align 8
  %34 = add i64 %33, 1
  %35 = call ptr @malloc(i64 noundef %34) #6
  store ptr %35, ptr %14, align 8
  %36 = load ptr, ptr %14, align 8
  %37 = load i64, ptr %4, align 8
  %38 = add i64 %37, 1
  %39 = mul i64 1, %38
  call void @llvm.memset.p0.i64(ptr align 1 %36, i8 0, i64 %39, i1 false)
  %40 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %40, i8 0, i64 4096, i1 false)
  %41 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %41, i8 0, i64 2048, i1 false)
  %42 = getelementptr inbounds [512 x i32], ptr %17, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %42, i8 0, i64 2048, i1 false)
  %43 = getelementptr inbounds [256 x i32], ptr %18, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %43, i8 0, i64 1024, i1 false)
  %44 = getelementptr inbounds [256 x i8], ptr %19, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %44, i8 0, i64 256, i1 false)
  store i64 0, ptr %5, align 8
  %45 = load i64, ptr %4, align 8
  %.promoted = load i64, ptr %5, align 8
  %.promoted1 = load ptr, ptr %13, align 8
  %46 = icmp ult i64 %.promoted, %45
  br i1 %46, label %.lr.ph, label %59

.lr.ph:                                           ; preds = %2
  br label %47

47:                                               ; preds = %.lr.ph, %56
  %48 = phi i64 [ %.promoted, %.lr.ph ], [ %57, %56 ]
  %49 = phi ptr [ %.promoted1, %.lr.ph ], [ %55, %56 ]
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i64
  %52 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %51
  %53 = load i64, ptr %52, align 8
  %54 = add i64 %53, 1
  store i64 %54, ptr %52, align 8
  %55 = getelementptr inbounds nuw i8, ptr %49, i32 1
  br label %56

56:                                               ; preds = %47
  %57 = add i64 %48, 1
  %58 = icmp ult i64 %57, %45
  br i1 %58, label %47, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %56
  %split = phi ptr [ %55, %56 ]
  %split124 = phi i64 [ %57, %56 ]
  br label %59

59:                                               ; preds = %._crit_edge, %2
  %.lcssa2 = phi ptr [ %split, %._crit_edge ], [ %.promoted1, %2 ]
  %.lcssa = phi i64 [ %split124, %._crit_edge ], [ %.promoted, %2 ]
  store i64 %.lcssa, ptr %5, align 8
  store ptr %.lcssa2, ptr %13, align 8
  store i64 0, ptr %7, align 8
  store i64 0, ptr %5, align 8
  %.promoted3 = load i64, ptr %5, align 8
  %.promoted5 = load i64, ptr %7, align 8
  %60 = icmp ult i64 %.promoted3, 256
  br i1 %60, label %.lr.ph126, label %75

.lr.ph126:                                        ; preds = %59
  br label %61

61:                                               ; preds = %.lr.ph126, %72
  %62 = phi i64 [ %.promoted3, %.lr.ph126 ], [ %73, %72 ]
  %63 = phi i64 [ %.promoted5, %.lr.ph126 ], [ %71, %72 ]
  %64 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %62
  %65 = load i64, ptr %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %63
  store i64 %62, ptr %68, align 8
  %69 = add i64 %63, 1
  br label %70

70:                                               ; preds = %67, %61
  %71 = phi i64 [ %69, %67 ], [ %63, %61 ]
  br label %72

72:                                               ; preds = %70
  %73 = add i64 %62, 1
  %74 = icmp ult i64 %73, 256
  br i1 %74, label %61, label %._crit_edge127, !llvm.loop !10

._crit_edge127:                                   ; preds = %72
  %split128 = phi i64 [ %71, %72 ]
  %split129 = phi i64 [ %73, %72 ]
  br label %75

75:                                               ; preds = %._crit_edge127, %59
  %.lcssa6 = phi i64 [ %split128, %._crit_edge127 ], [ %.promoted5, %59 ]
  %.lcssa4 = phi i64 [ %split129, %._crit_edge127 ], [ %.promoted3, %59 ]
  store i64 %.lcssa4, ptr %5, align 8
  store i64 %.lcssa6, ptr %7, align 8
  %76 = load i64, ptr %7, align 8
  store i64 %76, ptr %5, align 8
  %77 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  %78 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %79 = load i64, ptr %7, align 8
  %80 = trunc i64 %79 to i32
  %.promoted7 = load i64, ptr %5, align 8
  %81 = icmp ugt i64 %.promoted7, 0
  br i1 %81, label %.lr.ph131, label %88

.lr.ph131:                                        ; preds = %75
  br label %82

82:                                               ; preds = %.lr.ph131, %85
  %83 = phi i64 [ %.promoted7, %.lr.ph131 ], [ %86, %85 ]
  %84 = trunc i64 %83 to i32
  call void @heap_adjust(ptr noundef %77, ptr noundef %78, i32 noundef %80, i32 noundef %84)
  br label %85

85:                                               ; preds = %82
  %86 = add i64 %83, -1
  %87 = icmp ugt i64 %86, 0
  br i1 %87, label %82, label %._crit_edge132, !llvm.loop !11

._crit_edge132:                                   ; preds = %85
  %split133 = phi i64 [ %86, %85 ]
  br label %88

88:                                               ; preds = %._crit_edge132, %75
  %.lcssa8 = phi i64 [ %split133, %._crit_edge132 ], [ %.promoted7, %75 ]
  store i64 %.lcssa8, ptr %5, align 8
  %89 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %90 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %91 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  %92 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %93 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %94 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %95 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %96 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  %97 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %.promoted9 = load i64, ptr %7, align 8
  %.promoted11 = load i64, ptr %20, align 8
  %98 = icmp ugt i64 %.promoted9, 1
  br i1 %98, label %.lr.ph135, label %124

.lr.ph135:                                        ; preds = %88
  br label %99

99:                                               ; preds = %.lr.ph135, %99
  %100 = phi i64 [ %.promoted9, %.lr.ph135 ], [ %101, %99 ]
  %101 = add i64 %100, -1
  %102 = load i64, ptr %89, align 16
  %103 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %101
  %104 = load i64, ptr %103, align 8
  store i64 %104, ptr %90, align 16
  %105 = trunc i64 %101 to i32
  call void @heap_adjust(ptr noundef %91, ptr noundef %92, i32 noundef %105, i32 noundef 1)
  %106 = load i64, ptr %93, align 16
  %107 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %106
  %108 = load i64, ptr %107, align 8
  %109 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %102
  %110 = load i64, ptr %109, align 8
  %111 = add i64 %108, %110
  %112 = add i64 256, %101
  %113 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %112
  store i64 %111, ptr %113, align 8
  %114 = add i64 256, %101
  %115 = trunc i64 %114 to i32
  %116 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %102
  store i32 %115, ptr %116, align 4
  %117 = sub i64 -256, %101
  %118 = trunc i64 %117 to i32
  %119 = load i64, ptr %94, align 16
  %120 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %119
  store i32 %118, ptr %120, align 4
  %121 = add i64 256, %101
  store i64 %121, ptr %95, align 16
  %122 = trunc i64 %101 to i32
  call void @heap_adjust(ptr noundef %96, ptr noundef %97, i32 noundef %122, i32 noundef 1)
  %123 = icmp ugt i64 %101, 1
  br i1 %123, label %99, label %._crit_edge136, !llvm.loop !12

._crit_edge136:                                   ; preds = %99
  %split137 = phi i64 [ %102, %99 ]
  %split138 = phi i64 [ %101, %99 ]
  br label %124

124:                                              ; preds = %._crit_edge136, %88
  %.lcssa12 = phi i64 [ %split137, %._crit_edge136 ], [ %.promoted11, %88 ]
  %.lcssa10 = phi i64 [ %split138, %._crit_edge136 ], [ %.promoted9, %88 ]
  store i64 %.lcssa10, ptr %7, align 8
  store i64 %.lcssa12, ptr %20, align 8
  %125 = load i64, ptr %7, align 8
  %126 = add i64 256, %125
  %127 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %126
  store i32 0, ptr %127, align 4
  store i64 0, ptr %23, align 8
  store i64 0, ptr %24, align 8
  store i64 0, ptr %21, align 8
  %.promoted21 = load i64, ptr %21, align 8
  %.promoted23 = load i64, ptr %5, align 8
  %.promoted26 = load i64, ptr %6, align 8
  %.promoted29 = load i64, ptr %22, align 8
  %.promoted32 = load i32, ptr %25, align 4
  %.promoted35 = load i64, ptr %23, align 8
  %.promoted39 = load i64, ptr %24, align 8
  %128 = icmp ult i64 %.promoted21, 256
  br i1 %128, label %.lr.ph153, label %174

.lr.ph153:                                        ; preds = %124
  br label %129

129:                                              ; preds = %.lr.ph153, %171
  %130 = phi i64 [ %.promoted21, %.lr.ph153 ], [ %172, %171 ]
  %.lcssa2025151 = phi i64 [ %.promoted23, %.lr.ph153 ], [ %.lcssa2024, %171 ]
  %.lcssa1628150 = phi i64 [ %.promoted26, %.lr.ph153 ], [ %.lcssa1627, %171 ]
  %.lcssa1831149 = phi i64 [ %.promoted29, %.lr.ph153 ], [ %.lcssa1830, %171 ]
  %.lcssa1434148 = phi i32 [ %.promoted32, %.lr.ph153 ], [ %.lcssa1433, %171 ]
  %.lcssa1838147 = phi i64 [ %.promoted35, %.lr.ph153 ], [ %.lcssa1836, %171 ]
  %.lcssa2042146 = phi i64 [ %.promoted39, %.lr.ph153 ], [ %.lcssa2040, %171 ]
  %131 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %130
  %132 = load i64, ptr %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %129
  %135 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %130
  store i32 0, ptr %135, align 4
  %136 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %130
  store i8 0, ptr %136, align 1
  br label %170

137:                                              ; preds = %129
  %138 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %130
  %139 = load i32, ptr %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %.lr.ph140, label %159

.lr.ph140:                                        ; preds = %137
  br label %141

141:                                              ; preds = %.lr.ph140, %150
  %142 = phi i32 [ %139, %.lr.ph140 ], [ %155, %150 ]
  %143 = phi i64 [ 1, %.lr.ph140 ], [ %156, %150 ]
  %144 = phi i64 [ 0, %.lr.ph140 ], [ %151, %150 ]
  %145 = phi i64 [ 0, %.lr.ph140 ], [ %157, %150 ]
  %146 = icmp slt i32 %142, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %141
  %148 = add i64 %144, %143
  %149 = sub nsw i32 0, %142
  br label %150

150:                                              ; preds = %147, %141
  %151 = phi i64 [ %148, %147 ], [ %144, %141 ]
  %152 = phi i32 [ %149, %147 ], [ %142, %141 ]
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [512 x i32], ptr %17, i64 0, i64 %153
  %155 = load i32, ptr %154, align 4
  %156 = shl i64 %143, 1
  %157 = add i64 %145, 1
  %158 = icmp ne i32 %155, 0
  br i1 %158, label %141, label %._crit_edge141, !llvm.loop !13

._crit_edge141:                                   ; preds = %150
  %split142 = phi i64 [ %157, %150 ]
  %split143 = phi i64 [ %151, %150 ]
  %split144 = phi i64 [ %156, %150 ]
  %split145 = phi i32 [ %155, %150 ]
  br label %159

159:                                              ; preds = %._crit_edge141, %137
  %.lcssa20 = phi i64 [ %split142, %._crit_edge141 ], [ 0, %137 ]
  %.lcssa18 = phi i64 [ %split143, %._crit_edge141 ], [ 0, %137 ]
  %.lcssa16 = phi i64 [ %split144, %._crit_edge141 ], [ 1, %137 ]
  %.lcssa14 = phi i32 [ %split145, %._crit_edge141 ], [ %139, %137 ]
  %160 = trunc i64 %.lcssa18 to i32
  %161 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %130
  store i32 %160, ptr %161, align 4
  %162 = trunc i64 %.lcssa20 to i8
  %163 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %130
  store i8 %162, ptr %163, align 1
  %164 = icmp ugt i64 %.lcssa18, %.lcssa1838147
  br i1 %164, label %165, label %166

165:                                              ; preds = %159
  br label %166

166:                                              ; preds = %165, %159
  %.lcssa1837 = phi i64 [ %.lcssa18, %165 ], [ %.lcssa1838147, %159 ]
  %167 = icmp ugt i64 %.lcssa20, %.lcssa2042146
  br i1 %167, label %168, label %169

168:                                              ; preds = %166
  br label %169

169:                                              ; preds = %168, %166
  %.lcssa2041 = phi i64 [ %.lcssa20, %168 ], [ %.lcssa2042146, %166 ]
  br label %170

170:                                              ; preds = %169, %134
  %.lcssa2040 = phi i64 [ %.lcssa2041, %169 ], [ %.lcssa2042146, %134 ]
  %.lcssa1836 = phi i64 [ %.lcssa1837, %169 ], [ %.lcssa1838147, %134 ]
  %.lcssa1433 = phi i32 [ %.lcssa14, %169 ], [ %.lcssa1434148, %134 ]
  %.lcssa1830 = phi i64 [ %.lcssa18, %169 ], [ %.lcssa1831149, %134 ]
  %.lcssa1627 = phi i64 [ %.lcssa16, %169 ], [ %.lcssa1628150, %134 ]
  %.lcssa2024 = phi i64 [ %.lcssa20, %169 ], [ %.lcssa2025151, %134 ]
  br label %171

171:                                              ; preds = %170
  %172 = add i64 %130, 1
  %173 = icmp ult i64 %172, 256
  br i1 %173, label %129, label %._crit_edge154, !llvm.loop !14

._crit_edge154:                                   ; preds = %171
  %split155 = phi i64 [ %.lcssa2040, %171 ]
  %split156 = phi i64 [ %.lcssa1836, %171 ]
  %split157 = phi i32 [ %.lcssa1433, %171 ]
  %split158 = phi i64 [ %.lcssa1830, %171 ]
  %split159 = phi i64 [ %.lcssa1627, %171 ]
  %split160 = phi i64 [ %.lcssa2024, %171 ]
  %split161 = phi i64 [ %172, %171 ]
  br label %174

174:                                              ; preds = %._crit_edge154, %124
  %.lcssa2042.lcssa = phi i64 [ %split155, %._crit_edge154 ], [ %.promoted39, %124 ]
  %.lcssa1838.lcssa = phi i64 [ %split156, %._crit_edge154 ], [ %.promoted35, %124 ]
  %.lcssa1434.lcssa = phi i32 [ %split157, %._crit_edge154 ], [ %.promoted32, %124 ]
  %.lcssa1831.lcssa = phi i64 [ %split158, %._crit_edge154 ], [ %.promoted29, %124 ]
  %.lcssa1628.lcssa = phi i64 [ %split159, %._crit_edge154 ], [ %.promoted26, %124 ]
  %.lcssa2025.lcssa = phi i64 [ %split160, %._crit_edge154 ], [ %.promoted23, %124 ]
  %.lcssa22 = phi i64 [ %split161, %._crit_edge154 ], [ %.promoted21, %124 ]
  store i64 %.lcssa22, ptr %21, align 8
  store i64 %.lcssa2025.lcssa, ptr %5, align 8
  store i64 %.lcssa1628.lcssa, ptr %6, align 8
  store i64 %.lcssa1831.lcssa, ptr %22, align 8
  store i32 %.lcssa1434.lcssa, ptr %25, align 4
  store i64 %.lcssa1838.lcssa, ptr %23, align 8
  store i64 %.lcssa2042.lcssa, ptr %24, align 8
  %175 = load i64, ptr %24, align 8
  %176 = icmp ugt i64 %175, 32
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = call ptr @__acrt_iob_func(i32 noundef 2)
  %179 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %178, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

180:                                              ; preds = %174
  store i64 0, ptr %26, align 8
  store i8 0, ptr %27, align 1
  store i32 -1, ptr %28, align 4
  %181 = load ptr, ptr %3, align 8
  store ptr %181, ptr %13, align 8
  %182 = load i64, ptr %23, align 8
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %180
  %185 = call ptr @__acrt_iob_func(i32 noundef 2)
  %186 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %185, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

187:                                              ; preds = %180
  store i64 0, ptr %6, align 8
  %188 = load i64, ptr %4, align 8
  %189 = load ptr, ptr %14, align 8
  %190 = load i64, ptr %4, align 8
  %.promoted58 = load i64, ptr %6, align 8
  %.promoted61 = load ptr, ptr %13, align 8
  %.promoted64 = load i64, ptr %8, align 8
  %.promoted67 = load i64, ptr %5, align 8
  %.promoted69 = load i32, ptr %28, align 4
  %.promoted72 = load i8, ptr %27, align 1
  %.promoted75 = load i64, ptr %26, align 8
  %191 = icmp ult i64 %.promoted58, %188
  br i1 %191, label %.lr.ph174, label %260

.lr.ph174:                                        ; preds = %187
  br label %192

192:                                              ; preds = %.lr.ph174, %257
  %193 = phi i64 [ %.promoted58, %.lr.ph174 ], [ %258, %257 ]
  %194 = phi ptr [ %.promoted61, %.lr.ph174 ], [ %256, %257 ]
  %.lcssa4770172 = phi i32 [ %.promoted69, %.lr.ph174 ], [ %.lcssa47, %257 ]
  %.lcssa5073171 = phi i8 [ %.promoted72, %.lr.ph174 ], [ %.lcssa50, %257 ]
  %.lcssa5376170 = phi i64 [ %.promoted75, %.lr.ph174 ], [ %.lcssa53, %257 ]
  %195 = load i8, ptr %194, align 1
  %196 = zext i8 %195 to i64
  %197 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %196
  %198 = load i8, ptr %197, align 1
  %199 = zext i8 %198 to i32
  %200 = sub nsw i32 %199, 1
  %201 = shl i32 1, %200
  %202 = sext i32 %201 to i64
  %203 = load i8, ptr %194, align 1
  %204 = zext i8 %203 to i64
  %205 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %204
  %206 = load i8, ptr %205, align 1
  %207 = zext i8 %206 to i64
  %208 = icmp ult i64 0, %207
  br i1 %208, label %.lr.ph163, label %255

.lr.ph163:                                        ; preds = %192
  br label %209

209:                                              ; preds = %.lr.ph163, %247
  %210 = phi i64 [ 0, %.lr.ph163 ], [ %248, %247 ]
  %211 = phi i32 [ %.lcssa4770172, %.lr.ph163 ], [ %232, %247 ]
  %212 = phi i8 [ %.lcssa5073171, %.lr.ph163 ], [ %245, %247 ]
  %213 = phi i64 [ %.lcssa5376170, %.lr.ph163 ], [ %230, %247 ]
  %214 = phi i64 [ %202, %.lr.ph163 ], [ %246, %247 ]
  %215 = icmp eq i32 %211, 7
  br i1 %215, label %216, label %224

216:                                              ; preds = %209
  %217 = getelementptr inbounds nuw i8, ptr %189, i64 %213
  store i8 %212, ptr %217, align 1
  %218 = add i64 %213, 1
  %219 = icmp eq i64 %218, %190
  br i1 %219, label %220, label %223

220:                                              ; preds = %216
  %.lcssa5376.lcssa77 = phi i64 [ %.lcssa5376170, %216 ]
  %.lcssa5073.lcssa74 = phi i8 [ %.lcssa5073171, %216 ]
  %.lcssa4770.lcssa71 = phi i32 [ %.lcssa4770172, %216 ]
  %.lcssa66 = phi i64 [ %202, %216 ]
  %.lcssa63 = phi ptr [ %194, %216 ]
  %.lcssa60 = phi i64 [ %193, %216 ]
  %.lcssa57 = phi i64 [ %214, %216 ]
  %.lcssa54 = phi i64 [ %218, %216 ]
  %.lcssa51 = phi i8 [ %212, %216 ]
  %.lcssa48 = phi i32 [ %211, %216 ]
  %.lcssa45 = phi i64 [ %210, %216 ]
  store i64 %.lcssa60, ptr %6, align 8
  store ptr %.lcssa63, ptr %13, align 8
  store i64 %.lcssa66, ptr %8, align 8
  store i64 0, ptr %5, align 8
  store i32 %.lcssa4770.lcssa71, ptr %28, align 4
  store i8 %.lcssa5073.lcssa74, ptr %27, align 1
  store i64 %.lcssa5376.lcssa77, ptr %26, align 8
  store i64 %.lcssa45, ptr %5, align 8
  store i32 %.lcssa48, ptr %28, align 4
  store i8 %.lcssa51, ptr %27, align 1
  store i64 %.lcssa54, ptr %26, align 8
  store i64 %.lcssa57, ptr %8, align 8
  %221 = call ptr @__acrt_iob_func(i32 noundef 2)
  %222 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %221, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

223:                                              ; preds = %216
  br label %229

224:                                              ; preds = %209
  %225 = add nsw i32 %211, 1
  %226 = sext i8 %212 to i32
  %227 = shl i32 %226, 1
  %228 = trunc i32 %227 to i8
  br label %229

229:                                              ; preds = %224, %223
  %230 = phi i64 [ %213, %224 ], [ %218, %223 ]
  %231 = phi i8 [ %228, %224 ], [ 0, %223 ]
  %232 = phi i32 [ %225, %224 ], [ 0, %223 ]
  %233 = load i8, ptr %194, align 1
  %234 = zext i8 %233 to i64
  %235 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %234
  %236 = load i32, ptr %235, align 4
  %237 = zext i32 %236 to i64
  %238 = and i64 %237, %214
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %229
  %241 = sext i8 %231 to i32
  %242 = or i32 %241, 1
  %243 = trunc i32 %242 to i8
  br label %244

244:                                              ; preds = %240, %229
  %245 = phi i8 [ %243, %240 ], [ %231, %229 ]
  %246 = lshr i64 %214, 1
  br label %247

247:                                              ; preds = %244
  %248 = add i64 %210, 1
  %249 = load i8, ptr %194, align 1
  %250 = zext i8 %249 to i64
  %251 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %250
  %252 = load i8, ptr %251, align 1
  %253 = zext i8 %252 to i64
  %254 = icmp ult i64 %248, %253
  br i1 %254, label %209, label %._crit_edge164, !llvm.loop !15

._crit_edge164:                                   ; preds = %247
  %split165 = phi i64 [ %246, %247 ]
  %split166 = phi i64 [ %230, %247 ]
  %split167 = phi i8 [ %245, %247 ]
  %split168 = phi i32 [ %232, %247 ]
  %split169 = phi i64 [ %248, %247 ]
  br label %255

255:                                              ; preds = %._crit_edge164, %192
  %.lcssa56 = phi i64 [ %split165, %._crit_edge164 ], [ %202, %192 ]
  %.lcssa53 = phi i64 [ %split166, %._crit_edge164 ], [ %.lcssa5376170, %192 ]
  %.lcssa50 = phi i8 [ %split167, %._crit_edge164 ], [ %.lcssa5073171, %192 ]
  %.lcssa47 = phi i32 [ %split168, %._crit_edge164 ], [ %.lcssa4770172, %192 ]
  %.lcssa44 = phi i64 [ %split169, %._crit_edge164 ], [ 0, %192 ]
  %256 = getelementptr inbounds nuw i8, ptr %194, i32 1
  br label %257

257:                                              ; preds = %255
  %258 = add i64 %193, 1
  %259 = icmp ult i64 %258, %188
  br i1 %259, label %192, label %._crit_edge175, !llvm.loop !16

._crit_edge175:                                   ; preds = %257
  %split176 = phi i64 [ %.lcssa53, %257 ]
  %split177 = phi i8 [ %.lcssa50, %257 ]
  %split178 = phi i32 [ %.lcssa47, %257 ]
  %split179 = phi i64 [ %.lcssa44, %257 ]
  %split180 = phi i64 [ %.lcssa56, %257 ]
  %split181 = phi ptr [ %256, %257 ]
  %split182 = phi i64 [ %258, %257 ]
  br label %260

260:                                              ; preds = %._crit_edge175, %187
  %.lcssa5376.lcssa = phi i64 [ %split176, %._crit_edge175 ], [ %.promoted75, %187 ]
  %.lcssa5073.lcssa = phi i8 [ %split177, %._crit_edge175 ], [ %.promoted72, %187 ]
  %.lcssa4770.lcssa = phi i32 [ %split178, %._crit_edge175 ], [ %.promoted69, %187 ]
  %.lcssa4468.lcssa = phi i64 [ %split179, %._crit_edge175 ], [ %.promoted67, %187 ]
  %.lcssa5665.lcssa = phi i64 [ %split180, %._crit_edge175 ], [ %.promoted64, %187 ]
  %.lcssa62 = phi ptr [ %split181, %._crit_edge175 ], [ %.promoted61, %187 ]
  %.lcssa59 = phi i64 [ %split182, %._crit_edge175 ], [ %.promoted58, %187 ]
  store i64 %.lcssa59, ptr %6, align 8
  store ptr %.lcssa62, ptr %13, align 8
  store i64 %.lcssa5665.lcssa, ptr %8, align 8
  store i64 %.lcssa4468.lcssa, ptr %5, align 8
  store i32 %.lcssa4770.lcssa, ptr %28, align 4
  store i8 %.lcssa5073.lcssa, ptr %27, align 1
  store i64 %.lcssa5376.lcssa, ptr %26, align 8
  %261 = load i32, ptr %28, align 4
  %262 = sub nsw i32 7, %261
  %263 = load i8, ptr %27, align 1
  %264 = sext i8 %263 to i32
  %265 = shl i32 %264, %262
  %266 = trunc i32 %265 to i8
  store i8 %266, ptr %27, align 1
  %267 = load i8, ptr %27, align 1
  %268 = load ptr, ptr %14, align 8
  %269 = load i64, ptr %26, align 8
  %270 = getelementptr inbounds nuw i8, ptr %268, i64 %269
  store i8 %267, ptr %270, align 1
  %271 = load i64, ptr %26, align 8
  %272 = add i64 %271, 1
  store i64 %272, ptr %26, align 8
  %273 = getelementptr inbounds [256 x i32], ptr %29, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %273, i8 0, i64 1024, i1 false)
  %274 = getelementptr inbounds [256 x i8], ptr %30, i64 0, i64 0
  store ptr %274, ptr %31, align 8
  store i64 0, ptr %6, align 8
  %.promoted84 = load i64, ptr %6, align 8
  %.promoted86 = load ptr, ptr %31, align 8
  %.promoted88 = load i32, ptr %9, align 4
  %.promoted91 = load i64, ptr %8, align 8
  %.promoted94 = load i64, ptr %5, align 8
  %275 = icmp ult i64 %.promoted84, 256
  br i1 %275, label %.lr.ph193, label %324

.lr.ph193:                                        ; preds = %260
  br label %276

276:                                              ; preds = %.lr.ph193, %321
  %277 = phi i64 [ %.promoted84, %.lr.ph193 ], [ %322, %321 ]
  %278 = phi ptr [ %.promoted86, %.lr.ph193 ], [ %280, %321 ]
  %.lcssa8190191 = phi i32 [ %.promoted88, %.lr.ph193 ], [ %.lcssa8189, %321 ]
  %.lcssa8393190 = phi i64 [ %.promoted91, %.lr.ph193 ], [ %.lcssa8392, %321 ]
  %.lcssa7996189 = phi i64 [ %.promoted94, %.lr.ph193 ], [ %.lcssa7995, %321 ]
  %279 = trunc i64 %277 to i8
  store i8 %279, ptr %278, align 1
  %280 = getelementptr inbounds nuw i8, ptr %278, i32 1
  %281 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %277
  %282 = load i32, ptr %281, align 4
  %283 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %277
  %284 = load i8, ptr %283, align 1
  %285 = zext i8 %284 to i32
  %286 = or i32 %282, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %320

288:                                              ; preds = %276
  %289 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %277
  %290 = load i8, ptr %289, align 1
  %291 = zext i8 %290 to i32
  %292 = sub nsw i32 %291, 1
  %293 = shl i32 1, %292
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %277
  %296 = load i8, ptr %295, align 1
  %297 = zext i8 %296 to i64
  %298 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %277
  %299 = icmp ult i64 0, %297
  br i1 %299, label %.lr.ph184, label %318

.lr.ph184:                                        ; preds = %288
  br label %300

300:                                              ; preds = %.lr.ph184, %315
  %301 = phi i64 [ 0, %.lr.ph184 ], [ %316, %315 ]
  %302 = phi i32 [ 0, %.lr.ph184 ], [ %313, %315 ]
  %303 = phi i64 [ %294, %.lr.ph184 ], [ %314, %315 ]
  %304 = mul i32 %302, 2
  %305 = add i32 %304, 1
  %306 = load i32, ptr %298, align 4
  %307 = zext i32 %306 to i64
  %308 = and i64 %307, %303
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %300
  %311 = add i32 %305, 1
  br label %312

312:                                              ; preds = %310, %300
  %313 = phi i32 [ %311, %310 ], [ %305, %300 ]
  %314 = lshr i64 %303, 1
  br label %315

315:                                              ; preds = %312
  %316 = add i64 %301, 1
  %317 = icmp ult i64 %316, %297
  br i1 %317, label %300, label %._crit_edge185, !llvm.loop !17

._crit_edge185:                                   ; preds = %315
  %split186 = phi i64 [ %314, %315 ]
  %split187 = phi i32 [ %313, %315 ]
  %split188 = phi i64 [ %316, %315 ]
  br label %318

318:                                              ; preds = %._crit_edge185, %288
  %.lcssa83 = phi i64 [ %split186, %._crit_edge185 ], [ %294, %288 ]
  %.lcssa81 = phi i32 [ %split187, %._crit_edge185 ], [ 0, %288 ]
  %.lcssa79 = phi i64 [ %split188, %._crit_edge185 ], [ 0, %288 ]
  %319 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %277
  store i32 %.lcssa81, ptr %319, align 4
  br label %320

320:                                              ; preds = %318, %276
  %.lcssa7995 = phi i64 [ %.lcssa79, %318 ], [ %.lcssa7996189, %276 ]
  %.lcssa8392 = phi i64 [ %.lcssa83, %318 ], [ %.lcssa8393190, %276 ]
  %.lcssa8189 = phi i32 [ %.lcssa81, %318 ], [ %.lcssa8190191, %276 ]
  br label %321

321:                                              ; preds = %320
  %322 = add i64 %277, 1
  %323 = icmp ult i64 %322, 256
  br i1 %323, label %276, label %._crit_edge194, !llvm.loop !18

._crit_edge194:                                   ; preds = %321
  %split195 = phi i64 [ %.lcssa7995, %321 ]
  %split196 = phi i64 [ %.lcssa8392, %321 ]
  %split197 = phi i32 [ %.lcssa8189, %321 ]
  %split198 = phi ptr [ %280, %321 ]
  %split199 = phi i64 [ %322, %321 ]
  br label %324

324:                                              ; preds = %._crit_edge194, %260
  %.lcssa7996.lcssa = phi i64 [ %split195, %._crit_edge194 ], [ %.promoted94, %260 ]
  %.lcssa8393.lcssa = phi i64 [ %split196, %._crit_edge194 ], [ %.promoted91, %260 ]
  %.lcssa8190.lcssa = phi i32 [ %split197, %._crit_edge194 ], [ %.promoted88, %260 ]
  %.lcssa87 = phi ptr [ %split198, %._crit_edge194 ], [ %.promoted86, %260 ]
  %.lcssa85 = phi i64 [ %split199, %._crit_edge194 ], [ %.promoted84, %260 ]
  store i64 %.lcssa85, ptr %6, align 8
  store ptr %.lcssa87, ptr %31, align 8
  store i32 %.lcssa8190.lcssa, ptr %9, align 4
  store i64 %.lcssa8393.lcssa, ptr %8, align 8
  store i64 %.lcssa7996.lcssa, ptr %5, align 8
  store i64 1, ptr %5, align 8
  %.promoted99 = load i64, ptr %5, align 8
  %.promoted101 = load i32, ptr %10, align 4
  %.promoted103 = load i8, ptr %11, align 1
  %.promoted105 = load i64, ptr %6, align 8
  %325 = icmp ult i64 %.promoted99, 256
  br i1 %325, label %.lr.ph201, label %358

.lr.ph201:                                        ; preds = %324
  br label %326

326:                                              ; preds = %.lr.ph201, %355
  %327 = phi i64 [ %.promoted99, %.lr.ph201 ], [ %356, %355 ]
  %328 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %327
  %329 = load i32, ptr %328, align 4
  %330 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %327
  %331 = load i8, ptr %330, align 1
  br label %332

332:                                              ; preds = %342, %326
  %333 = phi i64 [ %351, %342 ], [ %327, %326 ]
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %340

335:                                              ; preds = %332
  %336 = sub i64 %333, 1
  %337 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %336
  %338 = load i32, ptr %337, align 4
  %339 = icmp ugt i32 %338, %329
  br label %340

340:                                              ; preds = %335, %332
  %341 = phi i1 [ false, %332 ], [ %339, %335 ]
  br i1 %341, label %342, label %352

342:                                              ; preds = %340
  %343 = sub i64 %333, 1
  %344 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %343
  %345 = load i32, ptr %344, align 4
  %346 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %333
  store i32 %345, ptr %346, align 4
  %347 = sub i64 %333, 1
  %348 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %347
  %349 = load i8, ptr %348, align 1
  %350 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %333
  store i8 %349, ptr %350, align 1
  %351 = add i64 %333, -1
  br label %332, !llvm.loop !19

352:                                              ; preds = %340
  %.lcssa98 = phi i64 [ %333, %340 ]
  %353 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %.lcssa98
  store i32 %329, ptr %353, align 4
  %354 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %.lcssa98
  store i8 %331, ptr %354, align 1
  br label %355

355:                                              ; preds = %352
  %356 = add i64 %327, 1
  %357 = icmp ult i64 %356, 256
  br i1 %357, label %326, label %._crit_edge202, !llvm.loop !20

._crit_edge202:                                   ; preds = %355
  %split203 = phi i64 [ %.lcssa98, %355 ]
  %split204 = phi i8 [ %331, %355 ]
  %split205 = phi i32 [ %329, %355 ]
  %split206 = phi i64 [ %356, %355 ]
  br label %358

358:                                              ; preds = %._crit_edge202, %324
  %.lcssa98106.lcssa = phi i64 [ %split203, %._crit_edge202 ], [ %.promoted105, %324 ]
  %.lcssa104 = phi i8 [ %split204, %._crit_edge202 ], [ %.promoted103, %324 ]
  %.lcssa102 = phi i32 [ %split205, %._crit_edge202 ], [ %.promoted101, %324 ]
  %.lcssa100 = phi i64 [ %split206, %._crit_edge202 ], [ %.promoted99, %324 ]
  store i64 %.lcssa100, ptr %5, align 8
  store i32 %.lcssa102, ptr %10, align 4
  store i8 %.lcssa104, ptr %11, align 1
  store i64 %.lcssa98106.lcssa, ptr %6, align 8
  store i64 0, ptr %6, align 8
  %.promoted107 = load i64, ptr %6, align 8
  %359 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %.promoted107
  %360 = load i32, ptr %359, align 4
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %.lr.ph208, label %369

.lr.ph208:                                        ; preds = %358
  br label %362

362:                                              ; preds = %.lr.ph208, %364
  %363 = phi i64 [ %.promoted107, %.lr.ph208 ], [ %365, %364 ]
  br label %364

364:                                              ; preds = %362
  %365 = add i64 %363, 1
  %366 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %365
  %367 = load i32, ptr %366, align 4
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %362, label %._crit_edge209, !llvm.loop !21

._crit_edge209:                                   ; preds = %364
  %split210 = phi i64 [ %365, %364 ]
  br label %369

369:                                              ; preds = %._crit_edge209, %358
  %.lcssa108 = phi i64 [ %split210, %._crit_edge209 ], [ %.promoted107, %358 ]
  store i64 %.lcssa108, ptr %6, align 8
  store i32 0, ptr %9, align 4
  %370 = load i64, ptr %6, align 8
  store i64 %370, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  %371 = load ptr, ptr %14, align 8
  store ptr %371, ptr %12, align 8
  %372 = load ptr, ptr %3, align 8
  store ptr %372, ptr %13, align 8
  %373 = load i64, ptr %4, align 8
  %374 = load i64, ptr %6, align 8
  %.promoted111 = load i64, ptr %7, align 8
  %.promoted113 = load i32, ptr %9, align 4
  %.promoted115 = load ptr, ptr %12, align 8
  %.promoted117 = load i64, ptr %8, align 8
  %.promoted119 = load i64, ptr %5, align 8
  %.promoted122 = load ptr, ptr %13, align 8
  %375 = icmp ult i64 %.promoted111, %373
  br i1 %375, label %.lr.ph213, label %420

.lr.ph213:                                        ; preds = %369
  br label %376

376:                                              ; preds = %.lr.ph213, %416
  %377 = phi i64 [ %.promoted111, %.lr.ph213 ], [ %410, %416 ]
  %378 = phi i32 [ %.promoted113, %.lr.ph213 ], [ %409, %416 ]
  %379 = phi ptr [ %.promoted115, %.lr.ph213 ], [ %418, %416 ]
  %380 = phi i64 [ %.promoted117, %.lr.ph213 ], [ %417, %416 ]
  %.lcssa110120211 = phi i64 [ %.promoted119, %.lr.ph213 ], [ %.lcssa110121, %416 ]
  %381 = phi ptr [ %.promoted122, %.lr.ph213 ], [ %408, %416 ]
  %382 = mul i32 %378, 2
  %383 = add i32 %382, 1
  %384 = load i8, ptr %379, align 1
  %385 = zext i8 %384 to i64
  %386 = and i64 %385, %380
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %390

388:                                              ; preds = %376
  %389 = add i32 %383, 1
  br label %390

390:                                              ; preds = %388, %376
  %391 = phi i32 [ %389, %388 ], [ %383, %376 ]
  br label %392

392:                                              ; preds = %392, %390
  %393 = phi i64 [ %397, %392 ], [ %.lcssa110120211, %390 ]
  %394 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %393
  %395 = load i32, ptr %394, align 4
  %396 = icmp ult i32 %395, %391
  %397 = add i64 %393, 1
  br i1 %396, label %392, label %398, !llvm.loop !22

398:                                              ; preds = %392
  %.lcssa110 = phi i64 [ %393, %392 ]
  %399 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %.lcssa110
  %400 = load i32, ptr %399, align 4
  %401 = icmp eq i32 %391, %400
  br i1 %401, label %402, label %407

402:                                              ; preds = %398
  %403 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %.lcssa110
  %404 = load i8, ptr %403, align 1
  store i8 %404, ptr %381, align 1
  %405 = getelementptr inbounds nuw i8, ptr %381, i32 1
  %406 = add i64 %377, 1
  br label %407

407:                                              ; preds = %402, %398
  %408 = phi ptr [ %405, %402 ], [ %381, %398 ]
  %.lcssa110121 = phi i64 [ %374, %402 ], [ %.lcssa110, %398 ]
  %409 = phi i32 [ 0, %402 ], [ %391, %398 ]
  %410 = phi i64 [ %406, %402 ], [ %377, %398 ]
  %411 = icmp ugt i64 %380, 1
  br i1 %411, label %412, label %414

412:                                              ; preds = %407
  %413 = lshr i64 %380, 1
  br label %416

414:                                              ; preds = %407
  %415 = getelementptr inbounds nuw i8, ptr %379, i32 1
  br label %416

416:                                              ; preds = %414, %412
  %417 = phi i64 [ 128, %414 ], [ %413, %412 ]
  %418 = phi ptr [ %415, %414 ], [ %379, %412 ]
  %419 = icmp ult i64 %410, %373
  br i1 %419, label %376, label %._crit_edge214, !llvm.loop !23

._crit_edge214:                                   ; preds = %416
  %split215 = phi ptr [ %408, %416 ]
  %split216 = phi i64 [ %.lcssa110121, %416 ]
  %split217 = phi i64 [ %417, %416 ]
  %split218 = phi ptr [ %418, %416 ]
  %split219 = phi i32 [ %409, %416 ]
  %split220 = phi i64 [ %410, %416 ]
  br label %420

420:                                              ; preds = %._crit_edge214, %369
  %.lcssa123 = phi ptr [ %split215, %._crit_edge214 ], [ %.promoted122, %369 ]
  %.lcssa110120.lcssa = phi i64 [ %split216, %._crit_edge214 ], [ %.promoted119, %369 ]
  %.lcssa118 = phi i64 [ %split217, %._crit_edge214 ], [ %.promoted117, %369 ]
  %.lcssa116 = phi ptr [ %split218, %._crit_edge214 ], [ %.promoted115, %369 ]
  %.lcssa114 = phi i32 [ %split219, %._crit_edge214 ], [ %.promoted113, %369 ]
  %.lcssa112 = phi i64 [ %split220, %._crit_edge214 ], [ %.promoted111, %369 ]
  store i64 %.lcssa112, ptr %7, align 8
  store i32 %.lcssa114, ptr %9, align 4
  store ptr %.lcssa116, ptr %12, align 8
  store i64 %.lcssa118, ptr %8, align 8
  store i64 %.lcssa110120.lcssa, ptr %5, align 8
  store ptr %.lcssa123, ptr %13, align 8
  %421 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %421)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal void @heap_adjust(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  %11 = load ptr, ptr %6, align 8
  %12 = load i32, ptr %8, align 4
  %13 = sub nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, ptr %11, i64 %14
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, ptr %10, align 4
  %18 = load i32, ptr %7, align 4
  %19 = sdiv i32 %18, 2
  %20 = load i32, ptr %7, align 4
  %21 = load ptr, ptr %5, align 8
  %22 = load ptr, ptr %6, align 8
  %23 = load ptr, ptr %5, align 8
  %24 = load ptr, ptr %6, align 8
  %25 = load ptr, ptr %5, align 8
  %26 = load i32, ptr %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, ptr %25, i64 %27
  %29 = load ptr, ptr %5, align 8
  %30 = load ptr, ptr %6, align 8
  %31 = load ptr, ptr %6, align 8
  %32 = load ptr, ptr %6, align 8
  %.promoted = load i32, ptr %8, align 4
  %.promoted2 = load i32, ptr %9, align 4
  %33 = icmp sle i32 %.promoted, %19
  br i1 %33, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %34

34:                                               ; preds = %.lr.ph, %64
  %35 = phi i32 [ %.promoted, %.lr.ph ], [ %54, %64 ]
  %36 = add nsw i32 %35, %35
  %37 = icmp slt i32 %36, %20
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = sub nsw i32 %36, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, ptr %22, i64 %40
  %42 = load i64, ptr %41, align 8
  %43 = getelementptr inbounds nuw i64, ptr %21, i64 %42
  %44 = load i64, ptr %43, align 8
  %45 = sext i32 %36 to i64
  %46 = getelementptr inbounds i64, ptr %24, i64 %45
  %47 = load i64, ptr %46, align 8
  %48 = getelementptr inbounds nuw i64, ptr %23, i64 %47
  %49 = load i64, ptr %48, align 8
  %50 = icmp ugt i64 %44, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %38
  %52 = add nsw i32 %36, 1
  br label %53

53:                                               ; preds = %51, %38, %34
  %54 = phi i32 [ %52, %51 ], [ %36, %38 ], [ %36, %34 ]
  %55 = load i64, ptr %28, align 8
  %56 = sub nsw i32 %54, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, ptr %30, i64 %57
  %59 = load i64, ptr %58, align 8
  %60 = getelementptr inbounds nuw i64, ptr %29, i64 %59
  %61 = load i64, ptr %60, align 8
  %62 = icmp ult i64 %55, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  %.lcssa4 = phi i32 [ %54, %53 ]
  %.lcssa1 = phi i32 [ %35, %53 ]
  store i32 %.lcssa1, ptr %8, align 4
  store i32 %.lcssa4, ptr %9, align 4
  br label %73

64:                                               ; preds = %53
  %65 = sub nsw i32 %54, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, ptr %31, i64 %66
  %68 = load i64, ptr %67, align 8
  %69 = sub nsw i32 %35, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, ptr %32, i64 %70
  store i64 %68, ptr %71, align 8
  %72 = icmp sle i32 %54, %19
  br i1 %72, label %34, label %..loopexit_crit_edge, !llvm.loop !24

..loopexit_crit_edge:                             ; preds = %64
  %split = phi i32 [ %54, %64 ]
  %split5 = phi i32 [ %54, %64 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  %.lcssa3 = phi i32 [ %split, %..loopexit_crit_edge ], [ %.promoted2, %4 ]
  %.lcssa = phi i32 [ %split5, %..loopexit_crit_edge ], [ %.promoted, %4 ]
  store i32 %.lcssa, ptr %8, align 4
  store i32 %.lcssa3, ptr %9, align 4
  br label %73

73:                                               ; preds = %.loopexit, %63
  %74 = load i32, ptr %10, align 4
  %75 = sext i32 %74 to i64
  %76 = load ptr, ptr %6, align 8
  %77 = load i32, ptr %8, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, ptr %76, i64 %79
  store i64 %75, ptr %80, align 8
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
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca ptr, align 8
  %9 = alloca double, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store i8 0, ptr %7, align 1
  %10 = load i32, ptr %4, align 4
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  store i32 1, ptr %6, align 4
  %13 = load i32, ptr %4, align 4
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds ptr, ptr %14, i64 1
  %.promoted = load i32, ptr %6, align 4
  %16 = icmp slt i32 %.promoted, %13
  br i1 %16, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %12
  br label %17

17:                                               ; preds = %.lr.ph, %24
  %18 = phi i32 [ %.promoted, %.lr.ph ], [ %25, %24 ]
  %19 = load ptr, ptr %15, align 8
  %20 = call i32 @strcmp(ptr noundef %19, ptr noundef @.str.4) #7
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  %.lcssa1 = phi i32 [ %18, %17 ]
  store i32 %.lcssa1, ptr %6, align 4
  store i8 1, ptr %7, align 1
  br label %27

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23
  %25 = add nsw i32 %18, 1
  %26 = icmp slt i32 %25, %13
  br i1 %26, label %17, label %..loopexit_crit_edge, !llvm.loop !25

..loopexit_crit_edge:                             ; preds = %24
  %split = phi i32 [ %25, %24 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %12
  %.lcssa = phi i32 [ %split, %..loopexit_crit_edge ], [ %.promoted, %12 ]
  store i32 %.lcssa, ptr %6, align 4
  br label %27

27:                                               ; preds = %.loopexit, %22
  br label %28

28:                                               ; preds = %27, %2
  %29 = call ptr @generate_test_data(i64 noundef 10000000)
  store ptr %29, ptr %8, align 8
  store i32 0, ptr %6, align 4
  %30 = load ptr, ptr %8, align 8
  %.promoted2 = load i32, ptr %6, align 4
  %31 = icmp slt i32 %.promoted2, 30
  br i1 %31, label %.lr.ph4, label %37

.lr.ph4:                                          ; preds = %28
  br label %32

32:                                               ; preds = %.lr.ph4, %34
  %33 = phi i32 [ %.promoted2, %.lr.ph4 ], [ %35, %34 ]
  call void @compdecomp(ptr noundef %30, i64 noundef 10000000)
  br label %34

34:                                               ; preds = %32
  %35 = add nsw i32 %33, 1
  %36 = icmp slt i32 %35, 30
  br i1 %36, label %32, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %34
  %split5 = phi i32 [ %35, %34 ]
  br label %37

37:                                               ; preds = %._crit_edge, %28
  %.lcssa3 = phi i32 [ %split5, %._crit_edge ], [ %.promoted2, %28 ]
  store i32 %.lcssa3, ptr %6, align 4
  store double 0.000000e+00, ptr %9, align 8
  %38 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %38)
  %39 = load i8, ptr %7, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = call ptr @__acrt_iob_func(i32 noundef 1)
  %43 = load double, ptr %9, align 8
  %44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef @.str.5, double noundef %43) #7
  br label %49

45:                                               ; preds = %37
  %46 = call ptr @__acrt_iob_func(i32 noundef 1)
  %47 = load double, ptr %9, align 8
  %48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef @.str.6, double noundef %47) #7
  br label %49

49:                                               ; preds = %45, %41
  %50 = call ptr @__acrt_iob_func(i32 noundef 1)
  %51 = call i32 @fflush(ptr noundef %50)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

declare dso_local i32 @fflush(ptr noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal i64 @random4() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i32, ptr @seed, align 4
  %4 = xor i32 %3, 123459876
  store i32 %4, ptr @seed, align 4
  %5 = load i32, ptr @seed, align 4
  %6 = sdiv i32 %5, 127773
  store i32 %6, ptr %1, align 4
  %7 = load i32, ptr @seed, align 4
  %8 = load i32, ptr %1, align 4
  %9 = mul nsw i32 %8, 127773
  %10 = sub nsw i32 %7, %9
  %11 = mul nsw i32 16807, %10
  %12 = load i32, ptr %1, align 4
  %13 = mul nsw i32 2836, %12
  %14 = sub nsw i32 %11, %13
  store i32 %14, ptr @seed, align 4
  %15 = load i32, ptr @seed, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %0
  %18 = load i32, ptr @seed, align 4
  %19 = add nsw i32 %18, 2147483647
  store i32 %19, ptr @seed, align 4
  br label %20

20:                                               ; preds = %17, %0
  %21 = load i32, ptr @seed, align 4
  %22 = srem i32 %21, 32
  %23 = sext i32 %22 to i64
  store i64 %23, ptr %2, align 8
  %24 = load i32, ptr @seed, align 4
  %25 = xor i32 %24, 123459876
  store i32 %25, ptr @seed, align 4
  %26 = load i64, ptr %2, align 8
  ret i64 %26
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
