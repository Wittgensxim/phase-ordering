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
  %8 = call ptr @malloc(i64 noundef %7) #7
  store ptr %8, ptr %4, align 8
  %9 = load ptr, ptr %4, align 8
  store ptr %9, ptr %5, align 8
  store i32 0, ptr %6, align 4
  %10 = load i64, ptr %2, align 8
  %11 = load ptr, ptr %3, align 8
  %.promoted = load i32, ptr %6, align 4
  %.promoted1 = load ptr, ptr %5, align 8
  %12 = sext i32 %.promoted to i64
  %umax = call i64 @llvm.umax.i64(i64 %10, i64 %12)
  br label %13

13:                                               ; preds = %20, %1
  %indvars.iv = phi i64 [ %indvars.iv.next, %20 ], [ %12, %1 ]
  %14 = phi ptr [ %19, %20 ], [ %.promoted1, %1 ]
  %exitcond = icmp ne i64 %indvars.iv, %umax
  br i1 %exitcond, label %15, label %21

15:                                               ; preds = %13
  %16 = call i64 @random4()
  %17 = getelementptr inbounds nuw i8, ptr %11, i64 %16
  %18 = load i8, ptr %17, align 1
  store i8 %18, ptr %14, align 1
  %19 = getelementptr inbounds nuw i8, ptr %14, i32 1
  br label %20

20:                                               ; preds = %15
  %indvars.iv.next = add i64 %indvars.iv, 1
  br label %13, !llvm.loop !7

21:                                               ; preds = %13
  %.lcssa2 = phi ptr [ %14, %13 ]
  %22 = trunc nsw i64 %umax to i32
  store i32 %22, ptr %6, align 4
  store ptr %.lcssa2, ptr %5, align 8
  %23 = load ptr, ptr %4, align 8
  ret ptr %23
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
  %35 = call ptr @malloc(i64 noundef %34) #7
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
  %umax = call i64 @llvm.umax.i64(i64 %.promoted, i64 %45)
  br label %46

46:                                               ; preds = %56, %2
  %47 = phi ptr [ %55, %56 ], [ %.promoted1, %2 ]
  %48 = phi i64 [ %57, %56 ], [ %.promoted, %2 ]
  %exitcond = icmp ne i64 %48, %umax
  br i1 %exitcond, label %49, label %58

49:                                               ; preds = %46
  %50 = load i8, ptr %47, align 1
  %51 = zext i8 %50 to i64
  %52 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %51
  %53 = load i64, ptr %52, align 8
  %54 = add i64 %53, 1
  store i64 %54, ptr %52, align 8
  %55 = getelementptr inbounds nuw i8, ptr %47, i32 1
  br label %56

56:                                               ; preds = %49
  %57 = add i64 %48, 1
  br label %46, !llvm.loop !9

58:                                               ; preds = %46
  %.lcssa2 = phi ptr [ %47, %46 ]
  store i64 %umax, ptr %5, align 8
  store ptr %.lcssa2, ptr %13, align 8
  store i64 0, ptr %7, align 8
  store i64 0, ptr %5, align 8
  %.promoted3 = load i64, ptr %5, align 8
  %.promoted5 = load i64, ptr %7, align 8
  %umax124 = call i64 @llvm.umax.i64(i64 %.promoted3, i64 256)
  br label %59

59:                                               ; preds = %71, %58
  %60 = phi i64 [ %70, %71 ], [ %.promoted5, %58 ]
  %61 = phi i64 [ %72, %71 ], [ %.promoted3, %58 ]
  %exitcond125 = icmp ne i64 %61, %umax124
  br i1 %exitcond125, label %62, label %73

62:                                               ; preds = %59
  %63 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %61
  %64 = load i64, ptr %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %60
  store i64 %61, ptr %67, align 8
  %68 = add i64 %60, 1
  br label %69

69:                                               ; preds = %66, %62
  %70 = phi i64 [ %68, %66 ], [ %60, %62 ]
  br label %71

71:                                               ; preds = %69
  %72 = add i64 %61, 1
  br label %59, !llvm.loop !10

73:                                               ; preds = %59
  %.lcssa6 = phi i64 [ %60, %59 ]
  %.lcssa4 = phi i64 [ %61, %59 ]
  store i64 %.lcssa4, ptr %5, align 8
  store i64 %.lcssa6, ptr %7, align 8
  %74 = load i64, ptr %7, align 8
  store i64 %74, ptr %5, align 8
  %75 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  %76 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %77 = load i64, ptr %7, align 8
  %78 = trunc i64 %77 to i32
  %.promoted7 = load i64, ptr %5, align 8
  br label %79

79:                                               ; preds = %84, %73
  %80 = phi i64 [ %85, %84 ], [ %.promoted7, %73 ]
  %81 = icmp ugt i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = trunc i64 %80 to i32
  call void @heap_adjust(ptr noundef %75, ptr noundef %76, i32 noundef %78, i32 noundef %83)
  br label %84

84:                                               ; preds = %82
  %85 = add i64 %80, -1
  br label %79, !llvm.loop !11

86:                                               ; preds = %79
  store i64 0, ptr %5, align 8
  %87 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %88 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %89 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  %90 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %91 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %92 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %93 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %94 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  %95 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %.promoted9 = load i64, ptr %7, align 8
  %.promoted11 = load i64, ptr %20, align 8
  br label %96

96:                                               ; preds = %100, %86
  %97 = phi i64 [ %102, %100 ], [ %.promoted11, %86 ]
  %98 = phi i64 [ %101, %100 ], [ %.promoted9, %86 ]
  %99 = icmp ugt i64 %98, 1
  br i1 %99, label %100, label %123

100:                                              ; preds = %96
  %101 = add i64 %98, -1
  %102 = load i64, ptr %87, align 16
  %103 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %101
  %104 = load i64, ptr %103, align 8
  store i64 %104, ptr %88, align 16
  %105 = trunc i64 %101 to i32
  call void @heap_adjust(ptr noundef %89, ptr noundef %90, i32 noundef %105, i32 noundef 1)
  %106 = load i64, ptr %91, align 16
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
  %119 = load i64, ptr %92, align 16
  %120 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %119
  store i32 %118, ptr %120, align 4
  %121 = add i64 256, %101
  store i64 %121, ptr %93, align 16
  %122 = trunc i64 %101 to i32
  call void @heap_adjust(ptr noundef %94, ptr noundef %95, i32 noundef %122, i32 noundef 1)
  br label %96, !llvm.loop !12

123:                                              ; preds = %96
  %.lcssa12 = phi i64 [ %97, %96 ]
  %.lcssa10 = phi i64 [ %98, %96 ]
  store i64 %.lcssa10, ptr %7, align 8
  store i64 %.lcssa12, ptr %20, align 8
  %124 = load i64, ptr %7, align 8
  %125 = add i64 256, %124
  %126 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %125
  store i32 0, ptr %126, align 4
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
  %umax126 = call i64 @llvm.umax.i64(i64 %.promoted21, i64 256)
  br label %127

127:                                              ; preds = %170, %123
  %.lcssa2042 = phi i64 [ %.lcssa2040, %170 ], [ %.promoted39, %123 ]
  %.lcssa1838 = phi i64 [ %.lcssa1836, %170 ], [ %.promoted35, %123 ]
  %.lcssa1434 = phi i32 [ %.lcssa1433, %170 ], [ %.promoted32, %123 ]
  %.lcssa1831 = phi i64 [ %.lcssa1830, %170 ], [ %.promoted29, %123 ]
  %.lcssa1628 = phi i64 [ %.lcssa1627, %170 ], [ %.promoted26, %123 ]
  %.lcssa2025 = phi i64 [ %.lcssa2024, %170 ], [ %.promoted23, %123 ]
  %128 = phi i64 [ %171, %170 ], [ %.promoted21, %123 ]
  %exitcond127 = icmp ne i64 %128, %umax126
  br i1 %exitcond127, label %129, label %172

129:                                              ; preds = %127
  %130 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %128
  %131 = load i64, ptr %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %128
  store i32 0, ptr %134, align 4
  %135 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %128
  store i8 0, ptr %135, align 1
  br label %169

136:                                              ; preds = %129
  %137 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %128
  %138 = load i32, ptr %137, align 4
  br label %139

139:                                              ; preds = %150, %136
  %140 = phi i64 [ %157, %150 ], [ 0, %136 ]
  %141 = phi i64 [ %151, %150 ], [ 0, %136 ]
  %142 = phi i64 [ %156, %150 ], [ 1, %136 ]
  %143 = phi i32 [ %155, %150 ], [ %138, %136 ]
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %158

145:                                              ; preds = %139
  %146 = icmp slt i32 %143, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %145
  %148 = add i64 %141, %142
  %149 = sub nsw i32 0, %143
  br label %150

150:                                              ; preds = %147, %145
  %151 = phi i64 [ %148, %147 ], [ %141, %145 ]
  %152 = phi i32 [ %149, %147 ], [ %143, %145 ]
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [512 x i32], ptr %17, i64 0, i64 %153
  %155 = load i32, ptr %154, align 4
  %156 = shl i64 %142, 1
  %157 = add i64 %140, 1
  br label %139, !llvm.loop !13

158:                                              ; preds = %139
  %.lcssa20 = phi i64 [ %140, %139 ]
  %.lcssa18 = phi i64 [ %141, %139 ]
  %.lcssa16 = phi i64 [ %142, %139 ]
  %.lcssa14 = phi i32 [ %143, %139 ]
  %159 = trunc i64 %.lcssa18 to i32
  %160 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %128
  store i32 %159, ptr %160, align 4
  %161 = trunc i64 %.lcssa20 to i8
  %162 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %128
  store i8 %161, ptr %162, align 1
  %163 = icmp ugt i64 %.lcssa18, %.lcssa1838
  br i1 %163, label %164, label %165

164:                                              ; preds = %158
  br label %165

165:                                              ; preds = %164, %158
  %.lcssa1837 = phi i64 [ %.lcssa18, %164 ], [ %.lcssa1838, %158 ]
  %166 = icmp ugt i64 %.lcssa20, %.lcssa2042
  br i1 %166, label %167, label %168

167:                                              ; preds = %165
  br label %168

168:                                              ; preds = %167, %165
  %.lcssa2041 = phi i64 [ %.lcssa20, %167 ], [ %.lcssa2042, %165 ]
  br label %169

169:                                              ; preds = %168, %133
  %.lcssa2040 = phi i64 [ %.lcssa2041, %168 ], [ %.lcssa2042, %133 ]
  %.lcssa1836 = phi i64 [ %.lcssa1837, %168 ], [ %.lcssa1838, %133 ]
  %.lcssa1433 = phi i32 [ %.lcssa14, %168 ], [ %.lcssa1434, %133 ]
  %.lcssa1830 = phi i64 [ %.lcssa18, %168 ], [ %.lcssa1831, %133 ]
  %.lcssa1627 = phi i64 [ %.lcssa16, %168 ], [ %.lcssa1628, %133 ]
  %.lcssa2024 = phi i64 [ %.lcssa20, %168 ], [ %.lcssa2025, %133 ]
  br label %170

170:                                              ; preds = %169
  %171 = add i64 %128, 1
  br label %127, !llvm.loop !14

172:                                              ; preds = %127
  %.lcssa2042.lcssa = phi i64 [ %.lcssa2042, %127 ]
  %.lcssa1838.lcssa = phi i64 [ %.lcssa1838, %127 ]
  %.lcssa1434.lcssa = phi i32 [ %.lcssa1434, %127 ]
  %.lcssa1831.lcssa = phi i64 [ %.lcssa1831, %127 ]
  %.lcssa1628.lcssa = phi i64 [ %.lcssa1628, %127 ]
  %.lcssa2025.lcssa = phi i64 [ %.lcssa2025, %127 ]
  %.lcssa22 = phi i64 [ %128, %127 ]
  store i64 %.lcssa22, ptr %21, align 8
  store i64 %.lcssa2025.lcssa, ptr %5, align 8
  store i64 %.lcssa1628.lcssa, ptr %6, align 8
  store i64 %.lcssa1831.lcssa, ptr %22, align 8
  store i32 %.lcssa1434.lcssa, ptr %25, align 4
  store i64 %.lcssa1838.lcssa, ptr %23, align 8
  store i64 %.lcssa2042.lcssa, ptr %24, align 8
  %173 = load i64, ptr %24, align 8
  %174 = icmp ugt i64 %173, 32
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = call ptr @__acrt_iob_func(i32 noundef 2)
  %177 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %176, ptr noundef @.str.1) #8
  call void @exit(i32 noundef 1) #9
  unreachable

178:                                              ; preds = %172
  store i64 0, ptr %26, align 8
  store i8 0, ptr %27, align 1
  store i32 -1, ptr %28, align 4
  %179 = load ptr, ptr %3, align 8
  store ptr %179, ptr %13, align 8
  %180 = load i64, ptr %23, align 8
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %178
  %183 = call ptr @__acrt_iob_func(i32 noundef 2)
  %184 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %183, ptr noundef @.str.2) #8
  call void @exit(i32 noundef 1) #9
  unreachable

185:                                              ; preds = %178
  store i64 0, ptr %6, align 8
  %186 = load i64, ptr %4, align 8
  %187 = load ptr, ptr %14, align 8
  %188 = load i64, ptr %4, align 8
  %.promoted58 = load i64, ptr %6, align 8
  %.promoted61 = load ptr, ptr %13, align 8
  %.promoted64 = load i64, ptr %8, align 8
  %.promoted67 = load i64, ptr %5, align 8
  %.promoted69 = load i32, ptr %28, align 4
  %.promoted72 = load i8, ptr %27, align 1
  %.promoted75 = load i64, ptr %26, align 8
  %umax128 = call i64 @llvm.umax.i64(i64 %.promoted58, i64 %186)
  br label %189

189:                                              ; preds = %250, %185
  %.lcssa5376 = phi i64 [ %.lcssa53, %250 ], [ %.promoted75, %185 ]
  %.lcssa5073 = phi i8 [ %.lcssa50, %250 ], [ %.promoted72, %185 ]
  %.lcssa4770 = phi i32 [ %.lcssa47, %250 ], [ %.promoted69, %185 ]
  %.lcssa4468 = phi i64 [ %.lcssa44, %250 ], [ %.promoted67, %185 ]
  %.lcssa5665 = phi i64 [ %.lcssa56, %250 ], [ %.promoted64, %185 ]
  %190 = phi ptr [ %249, %250 ], [ %.promoted61, %185 ]
  %191 = phi i64 [ %251, %250 ], [ %.promoted58, %185 ]
  %exitcond129 = icmp ne i64 %191, %umax128
  br i1 %exitcond129, label %192, label %252

192:                                              ; preds = %189
  %193 = load i8, ptr %190, align 1
  %194 = zext i8 %193 to i64
  %195 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %194
  %196 = load i8, ptr %195, align 1
  %197 = zext i8 %196 to i32
  %198 = sub nsw i32 %197, 1
  %199 = shl i32 1, %198
  %200 = sext i32 %199 to i64
  br label %201

201:                                              ; preds = %246, %192
  %202 = phi i64 [ %245, %246 ], [ %200, %192 ]
  %203 = phi i64 [ %229, %246 ], [ %.lcssa5376, %192 ]
  %204 = phi i8 [ %244, %246 ], [ %.lcssa5073, %192 ]
  %205 = phi i32 [ %231, %246 ], [ %.lcssa4770, %192 ]
  %206 = phi i64 [ %247, %246 ], [ 0, %192 ]
  %207 = load i8, ptr %190, align 1
  %208 = zext i8 %207 to i64
  %209 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %208
  %210 = load i8, ptr %209, align 1
  %211 = zext i8 %210 to i64
  %212 = icmp samesign ult i64 %206, %211
  br i1 %212, label %213, label %248

213:                                              ; preds = %201
  %214 = icmp eq i32 %205, 7
  br i1 %214, label %215, label %223

215:                                              ; preds = %213
  %216 = getelementptr inbounds nuw i8, ptr %187, i64 %203
  store i8 %204, ptr %216, align 1
  %217 = add i64 %203, 1
  %218 = icmp eq i64 %217, %188
  br i1 %218, label %219, label %222

219:                                              ; preds = %215
  %.lcssa5376.lcssa77 = phi i64 [ %.lcssa5376, %215 ]
  %.lcssa5073.lcssa74 = phi i8 [ %.lcssa5073, %215 ]
  %.lcssa4770.lcssa71 = phi i32 [ %.lcssa4770, %215 ]
  %.lcssa66 = phi i64 [ %200, %215 ]
  %.lcssa63 = phi ptr [ %190, %215 ]
  %.lcssa60 = phi i64 [ %191, %215 ]
  %.lcssa57 = phi i64 [ %202, %215 ]
  %.lcssa54 = phi i64 [ %217, %215 ]
  %.lcssa51 = phi i8 [ %204, %215 ]
  %.lcssa48 = phi i32 [ %205, %215 ]
  %.lcssa45 = phi i64 [ %206, %215 ]
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
  %220 = call ptr @__acrt_iob_func(i32 noundef 2)
  %221 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %220, ptr noundef @.str.3) #8
  call void @exit(i32 noundef 1) #9
  unreachable

222:                                              ; preds = %215
  br label %228

223:                                              ; preds = %213
  %224 = add nsw i32 %205, 1
  %225 = sext i8 %204 to i32
  %226 = shl i32 %225, 1
  %227 = trunc i32 %226 to i8
  br label %228

228:                                              ; preds = %223, %222
  %229 = phi i64 [ %203, %223 ], [ %217, %222 ]
  %230 = phi i8 [ %227, %223 ], [ 0, %222 ]
  %231 = phi i32 [ %224, %223 ], [ 0, %222 ]
  %232 = load i8, ptr %190, align 1
  %233 = zext i8 %232 to i64
  %234 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %233
  %235 = load i32, ptr %234, align 4
  %236 = zext i32 %235 to i64
  %237 = and i64 %236, %202
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %243

239:                                              ; preds = %228
  %240 = sext i8 %230 to i32
  %241 = or i32 %240, 1
  %242 = trunc i32 %241 to i8
  br label %243

243:                                              ; preds = %239, %228
  %244 = phi i8 [ %242, %239 ], [ %230, %228 ]
  %245 = lshr i64 %202, 1
  br label %246

246:                                              ; preds = %243
  %247 = add nuw nsw i64 %206, 1
  br label %201, !llvm.loop !15

248:                                              ; preds = %201
  %.lcssa56 = phi i64 [ %202, %201 ]
  %.lcssa53 = phi i64 [ %203, %201 ]
  %.lcssa50 = phi i8 [ %204, %201 ]
  %.lcssa47 = phi i32 [ %205, %201 ]
  %.lcssa44 = phi i64 [ %206, %201 ]
  %249 = getelementptr inbounds nuw i8, ptr %190, i32 1
  br label %250

250:                                              ; preds = %248
  %251 = add i64 %191, 1
  br label %189, !llvm.loop !16

252:                                              ; preds = %189
  %.lcssa5376.lcssa = phi i64 [ %.lcssa5376, %189 ]
  %.lcssa5073.lcssa = phi i8 [ %.lcssa5073, %189 ]
  %.lcssa4770.lcssa = phi i32 [ %.lcssa4770, %189 ]
  %.lcssa4468.lcssa = phi i64 [ %.lcssa4468, %189 ]
  %.lcssa5665.lcssa = phi i64 [ %.lcssa5665, %189 ]
  %.lcssa62 = phi ptr [ %190, %189 ]
  store i64 %umax128, ptr %6, align 8
  store ptr %.lcssa62, ptr %13, align 8
  store i64 %.lcssa5665.lcssa, ptr %8, align 8
  store i64 %.lcssa4468.lcssa, ptr %5, align 8
  store i32 %.lcssa4770.lcssa, ptr %28, align 4
  store i8 %.lcssa5073.lcssa, ptr %27, align 1
  store i64 %.lcssa5376.lcssa, ptr %26, align 8
  %253 = load i32, ptr %28, align 4
  %254 = sub nsw i32 7, %253
  %255 = load i8, ptr %27, align 1
  %256 = sext i8 %255 to i32
  %257 = shl i32 %256, %254
  %258 = trunc i32 %257 to i8
  store i8 %258, ptr %27, align 1
  %259 = load i8, ptr %27, align 1
  %260 = load ptr, ptr %14, align 8
  %261 = load i64, ptr %26, align 8
  %262 = getelementptr inbounds nuw i8, ptr %260, i64 %261
  store i8 %259, ptr %262, align 1
  %263 = load i64, ptr %26, align 8
  %264 = add i64 %263, 1
  store i64 %264, ptr %26, align 8
  %265 = getelementptr inbounds [256 x i32], ptr %29, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %265, i8 0, i64 1024, i1 false)
  %266 = getelementptr inbounds [256 x i8], ptr %30, i64 0, i64 0
  store ptr %266, ptr %31, align 8
  store i64 0, ptr %6, align 8
  %.promoted84 = load i64, ptr %6, align 8
  %.promoted86 = load ptr, ptr %31, align 8
  %.promoted88 = load i32, ptr %9, align 4
  %.promoted91 = load i64, ptr %8, align 8
  %.promoted94 = load i64, ptr %5, align 8
  %umax131 = call i64 @llvm.umax.i64(i64 %.promoted84, i64 256)
  br label %267

267:                                              ; preds = %312, %252
  %.lcssa7996 = phi i64 [ %.lcssa7995, %312 ], [ %.promoted94, %252 ]
  %.lcssa8393 = phi i64 [ %.lcssa8392, %312 ], [ %.promoted91, %252 ]
  %.lcssa8190 = phi i32 [ %.lcssa8189, %312 ], [ %.promoted88, %252 ]
  %268 = phi ptr [ %272, %312 ], [ %.promoted86, %252 ]
  %269 = phi i64 [ %313, %312 ], [ %.promoted84, %252 ]
  %exitcond132 = icmp ne i64 %269, %umax131
  br i1 %exitcond132, label %270, label %314

270:                                              ; preds = %267
  %271 = trunc i64 %269 to i8
  store i8 %271, ptr %268, align 1
  %272 = getelementptr inbounds nuw i8, ptr %268, i32 1
  %273 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %269
  %274 = load i32, ptr %273, align 4
  %275 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %269
  %276 = load i8, ptr %275, align 1
  %277 = zext i8 %276 to i32
  %278 = or i32 %274, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %311

280:                                              ; preds = %270
  %281 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %269
  %282 = load i8, ptr %281, align 1
  %283 = zext i8 %282 to i32
  %284 = sub nsw i32 %283, 1
  %285 = shl i32 1, %284
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %269
  %288 = load i8, ptr %287, align 1
  %289 = zext i8 %288 to i64
  %290 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %269
  br label %291

291:                                              ; preds = %307, %280
  %292 = phi i64 [ %306, %307 ], [ %286, %280 ]
  %293 = phi i32 [ %305, %307 ], [ 0, %280 ]
  %294 = phi i64 [ %308, %307 ], [ 0, %280 ]
  %exitcond130 = icmp ne i64 %294, %289
  br i1 %exitcond130, label %295, label %309

295:                                              ; preds = %291
  %296 = mul i32 %293, 2
  %297 = add i32 %296, 1
  %298 = load i32, ptr %290, align 4
  %299 = zext i32 %298 to i64
  %300 = and i64 %299, %292
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %304

302:                                              ; preds = %295
  %303 = add i32 %297, 1
  br label %304

304:                                              ; preds = %302, %295
  %305 = phi i32 [ %303, %302 ], [ %297, %295 ]
  %306 = lshr i64 %292, 1
  br label %307

307:                                              ; preds = %304
  %308 = add nuw nsw i64 %294, 1
  br label %291, !llvm.loop !17

309:                                              ; preds = %291
  %.lcssa83 = phi i64 [ %292, %291 ]
  %.lcssa81 = phi i32 [ %293, %291 ]
  %310 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %269
  store i32 %.lcssa81, ptr %310, align 4
  br label %311

311:                                              ; preds = %309, %270
  %.lcssa7995 = phi i64 [ %289, %309 ], [ %.lcssa7996, %270 ]
  %.lcssa8392 = phi i64 [ %.lcssa83, %309 ], [ %.lcssa8393, %270 ]
  %.lcssa8189 = phi i32 [ %.lcssa81, %309 ], [ %.lcssa8190, %270 ]
  br label %312

312:                                              ; preds = %311
  %313 = add i64 %269, 1
  br label %267, !llvm.loop !18

314:                                              ; preds = %267
  %.lcssa7996.lcssa = phi i64 [ %.lcssa7996, %267 ]
  %.lcssa8393.lcssa = phi i64 [ %.lcssa8393, %267 ]
  %.lcssa8190.lcssa = phi i32 [ %.lcssa8190, %267 ]
  %.lcssa87 = phi ptr [ %268, %267 ]
  %.lcssa85 = phi i64 [ %269, %267 ]
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
  %umax133 = call i64 @llvm.umax.i64(i64 %.promoted99, i64 256)
  br label %315

315:                                              ; preds = %347, %314
  %.lcssa98106 = phi i64 [ %.lcssa98, %347 ], [ %.promoted105, %314 ]
  %316 = phi i8 [ %323, %347 ], [ %.promoted103, %314 ]
  %317 = phi i32 [ %321, %347 ], [ %.promoted101, %314 ]
  %318 = phi i64 [ %348, %347 ], [ %.promoted99, %314 ]
  %exitcond134 = icmp ne i64 %318, %umax133
  br i1 %exitcond134, label %319, label %349

319:                                              ; preds = %315
  %320 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %318
  %321 = load i32, ptr %320, align 4
  %322 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %318
  %323 = load i8, ptr %322, align 1
  br label %324

324:                                              ; preds = %334, %319
  %325 = phi i64 [ %343, %334 ], [ %318, %319 ]
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %332

327:                                              ; preds = %324
  %328 = sub nuw i64 %325, 1
  %329 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %328
  %330 = load i32, ptr %329, align 4
  %331 = icmp ugt i32 %330, %321
  br label %332

332:                                              ; preds = %327, %324
  %333 = phi i1 [ false, %324 ], [ %331, %327 ]
  br i1 %333, label %334, label %344

334:                                              ; preds = %332
  %335 = sub i64 %325, 1
  %336 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %335
  %337 = load i32, ptr %336, align 4
  %338 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %325
  store i32 %337, ptr %338, align 4
  %339 = sub i64 %325, 1
  %340 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %339
  %341 = load i8, ptr %340, align 1
  %342 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %325
  store i8 %341, ptr %342, align 1
  %343 = add i64 %325, -1
  br label %324, !llvm.loop !19

344:                                              ; preds = %332
  %.lcssa98 = phi i64 [ %325, %332 ]
  %345 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %.lcssa98
  store i32 %321, ptr %345, align 4
  %346 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %.lcssa98
  store i8 %323, ptr %346, align 1
  br label %347

347:                                              ; preds = %344
  %348 = add nuw nsw i64 %318, 1
  br label %315, !llvm.loop !20

349:                                              ; preds = %315
  %.lcssa98106.lcssa = phi i64 [ %.lcssa98106, %315 ]
  %.lcssa104 = phi i8 [ %316, %315 ]
  %.lcssa102 = phi i32 [ %317, %315 ]
  %.lcssa100 = phi i64 [ %318, %315 ]
  store i64 %.lcssa100, ptr %5, align 8
  store i32 %.lcssa102, ptr %10, align 4
  store i8 %.lcssa104, ptr %11, align 1
  store i64 %.lcssa98106.lcssa, ptr %6, align 8
  store i64 0, ptr %6, align 8
  %.promoted107 = load i64, ptr %6, align 8
  br label %350

350:                                              ; preds = %356, %349
  %351 = phi i64 [ %357, %356 ], [ %.promoted107, %349 ]
  %352 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %351
  %353 = load i32, ptr %352, align 4
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %358

355:                                              ; preds = %350
  br label %356

356:                                              ; preds = %355
  %357 = add i64 %351, 1
  br label %350, !llvm.loop !21

358:                                              ; preds = %350
  %.lcssa108 = phi i64 [ %351, %350 ]
  store i64 %.lcssa108, ptr %6, align 8
  store i32 0, ptr %9, align 4
  %359 = load i64, ptr %6, align 8
  store i64 %359, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  %360 = load ptr, ptr %14, align 8
  store ptr %360, ptr %12, align 8
  %361 = load ptr, ptr %3, align 8
  store ptr %361, ptr %13, align 8
  %362 = load i64, ptr %4, align 8
  %363 = load i64, ptr %6, align 8
  %.promoted111 = load i64, ptr %7, align 8
  %.promoted113 = load i32, ptr %9, align 4
  %.promoted115 = load ptr, ptr %12, align 8
  %.promoted117 = load i64, ptr %8, align 8
  %.promoted119 = load i64, ptr %5, align 8
  %.promoted122 = load ptr, ptr %13, align 8
  br label %364

364:                                              ; preds = %407, %358
  %365 = phi ptr [ %399, %407 ], [ %.promoted122, %358 ]
  %.lcssa110120 = phi i64 [ %.lcssa110121, %407 ], [ %.promoted119, %358 ]
  %366 = phi i64 [ %408, %407 ], [ %.promoted117, %358 ]
  %367 = phi ptr [ %409, %407 ], [ %.promoted115, %358 ]
  %368 = phi i32 [ %400, %407 ], [ %.promoted113, %358 ]
  %369 = phi i64 [ %401, %407 ], [ %.promoted111, %358 ]
  %370 = icmp ult i64 %369, %362
  br i1 %370, label %371, label %410

371:                                              ; preds = %364
  %372 = mul i32 %368, 2
  %373 = add i32 %372, 1
  %374 = load i8, ptr %367, align 1
  %375 = zext i8 %374 to i64
  %376 = and i64 %375, %366
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %380

378:                                              ; preds = %371
  %379 = add i32 %373, 1
  br label %380

380:                                              ; preds = %378, %371
  %381 = phi i32 [ %379, %378 ], [ %373, %371 ]
  br label %382

382:                                              ; preds = %387, %380
  %383 = phi i64 [ %388, %387 ], [ %.lcssa110120, %380 ]
  %384 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %383
  %385 = load i32, ptr %384, align 4
  %386 = icmp ult i32 %385, %381
  br i1 %386, label %387, label %389

387:                                              ; preds = %382
  %388 = add i64 %383, 1
  br label %382, !llvm.loop !22

389:                                              ; preds = %382
  %.lcssa110 = phi i64 [ %383, %382 ]
  %390 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %.lcssa110
  %391 = load i32, ptr %390, align 4
  %392 = icmp eq i32 %381, %391
  br i1 %392, label %393, label %398

393:                                              ; preds = %389
  %394 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %.lcssa110
  %395 = load i8, ptr %394, align 1
  store i8 %395, ptr %365, align 1
  %396 = getelementptr inbounds nuw i8, ptr %365, i32 1
  %397 = add i64 %369, 1
  br label %398

398:                                              ; preds = %393, %389
  %399 = phi ptr [ %396, %393 ], [ %365, %389 ]
  %.lcssa110121 = phi i64 [ %363, %393 ], [ %.lcssa110, %389 ]
  %400 = phi i32 [ 0, %393 ], [ %381, %389 ]
  %401 = phi i64 [ %397, %393 ], [ %369, %389 ]
  %402 = icmp ugt i64 %366, 1
  br i1 %402, label %403, label %405

403:                                              ; preds = %398
  %404 = lshr i64 %366, 1
  br label %407

405:                                              ; preds = %398
  %406 = getelementptr inbounds nuw i8, ptr %367, i32 1
  br label %407

407:                                              ; preds = %405, %403
  %408 = phi i64 [ 128, %405 ], [ %404, %403 ]
  %409 = phi ptr [ %406, %405 ], [ %367, %403 ]
  br label %364, !llvm.loop !23

410:                                              ; preds = %364
  %.lcssa123 = phi ptr [ %365, %364 ]
  %.lcssa110120.lcssa = phi i64 [ %.lcssa110120, %364 ]
  %.lcssa118 = phi i64 [ %366, %364 ]
  %.lcssa116 = phi ptr [ %367, %364 ]
  %.lcssa114 = phi i32 [ %368, %364 ]
  %.lcssa112 = phi i64 [ %369, %364 ]
  store i64 %.lcssa112, ptr %7, align 8
  store i32 %.lcssa114, ptr %9, align 4
  store ptr %.lcssa116, ptr %12, align 8
  store i64 %.lcssa118, ptr %8, align 8
  store i64 %.lcssa110120.lcssa, ptr %5, align 8
  store ptr %.lcssa123, ptr %13, align 8
  %411 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %411)
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
  br label %33

33:                                               ; preds = %66, %4
  %34 = phi i32 [ %56, %66 ], [ %.promoted2, %4 ]
  %35 = phi i32 [ %56, %66 ], [ %.promoted, %4 ]
  %36 = icmp sle i32 %35, %19
  br i1 %36, label %37, label %.loopexit

37:                                               ; preds = %33
  %38 = add nsw i32 %35, %35
  %39 = icmp slt i32 %38, %20
  br i1 %39, label %40, label %55

40:                                               ; preds = %37
  %41 = sub nsw i32 %38, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, ptr %22, i64 %42
  %44 = load i64, ptr %43, align 8
  %45 = getelementptr inbounds nuw i64, ptr %21, i64 %44
  %46 = load i64, ptr %45, align 8
  %47 = sext i32 %38 to i64
  %48 = getelementptr inbounds i64, ptr %24, i64 %47
  %49 = load i64, ptr %48, align 8
  %50 = getelementptr inbounds nuw i64, ptr %23, i64 %49
  %51 = load i64, ptr %50, align 8
  %52 = icmp ugt i64 %46, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %40
  %54 = add nsw i32 %38, 1
  br label %55

55:                                               ; preds = %53, %40, %37
  %56 = phi i32 [ %54, %53 ], [ %38, %40 ], [ %38, %37 ]
  %57 = load i64, ptr %28, align 8
  %58 = sub nsw i32 %56, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, ptr %30, i64 %59
  %61 = load i64, ptr %60, align 8
  %62 = getelementptr inbounds nuw i64, ptr %29, i64 %61
  %63 = load i64, ptr %62, align 8
  %64 = icmp ult i64 %57, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  %.lcssa4 = phi i32 [ %56, %55 ]
  %.lcssa1 = phi i32 [ %35, %55 ]
  store i32 %.lcssa1, ptr %8, align 4
  store i32 %.lcssa4, ptr %9, align 4
  br label %74

66:                                               ; preds = %55
  %67 = sub nsw i32 %56, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, ptr %31, i64 %68
  %70 = load i64, ptr %69, align 8
  %71 = sub nsw i32 %35, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, ptr %32, i64 %72
  store i64 %70, ptr %73, align 8
  br label %33, !llvm.loop !24

.loopexit:                                        ; preds = %33
  %.lcssa3 = phi i32 [ %34, %33 ]
  %.lcssa = phi i32 [ %35, %33 ]
  store i32 %.lcssa, ptr %8, align 4
  store i32 %.lcssa3, ptr %9, align 4
  br label %74

74:                                               ; preds = %.loopexit, %65
  %75 = load i32, ptr %10, align 4
  %76 = sext i32 %75 to i64
  %77 = load ptr, ptr %6, align 8
  %78 = load i32, ptr %8, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, ptr %77, i64 %80
  store i64 %76, ptr %81, align 8
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
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  store i32 1, ptr %6, align 4
  %13 = load i32, ptr %4, align 4
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds ptr, ptr %14, i64 1
  %.promoted = load i32, ptr %6, align 4
  %smax = call i32 @llvm.smax.i32(i32 %.promoted, i32 %13)
  br label %16

16:                                               ; preds = %24, %12
  %17 = phi i32 [ %25, %24 ], [ %.promoted, %12 ]
  %exitcond = icmp ne i32 %17, %smax
  br i1 %exitcond, label %18, label %.loopexit

18:                                               ; preds = %16
  %19 = load ptr, ptr %15, align 8
  %20 = call i32 @strcmp(ptr noundef %19, ptr noundef @.str.4) #8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  %.lcssa1 = phi i32 [ %17, %18 ]
  store i32 %.lcssa1, ptr %6, align 4
  store i8 1, ptr %7, align 1
  br label %26

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23
  %25 = add i32 %17, 1
  br label %16, !llvm.loop !25

.loopexit:                                        ; preds = %16
  store i32 %smax, ptr %6, align 4
  br label %26

26:                                               ; preds = %.loopexit, %22
  br label %27

27:                                               ; preds = %26, %2
  %28 = call ptr @generate_test_data(i64 noundef 10000000)
  store ptr %28, ptr %8, align 8
  store i32 0, ptr %6, align 4
  %29 = load ptr, ptr %8, align 8
  %.promoted2 = load i32, ptr %6, align 4
  %smax4 = call i32 @llvm.smax.i32(i32 %.promoted2, i32 30)
  br label %30

30:                                               ; preds = %33, %27
  %31 = phi i32 [ %34, %33 ], [ %.promoted2, %27 ]
  %exitcond5 = icmp ne i32 %31, %smax4
  br i1 %exitcond5, label %32, label %35

32:                                               ; preds = %30
  call void @compdecomp(ptr noundef %29, i64 noundef 10000000)
  br label %33

33:                                               ; preds = %32
  %34 = add i32 %31, 1
  br label %30, !llvm.loop !26

35:                                               ; preds = %30
  store i32 %smax4, ptr %6, align 4
  store double 0.000000e+00, ptr %9, align 8
  %36 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %36)
  %37 = load i8, ptr %7, align 1
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = call ptr @__acrt_iob_func(i32 noundef 1)
  %41 = load double, ptr %9, align 8
  %42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef @.str.5, double noundef %41) #8
  br label %47

43:                                               ; preds = %35
  %44 = call ptr @__acrt_iob_func(i32 noundef 1)
  %45 = load double, ptr %9, align 8
  %46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef @.str.6, double noundef %45) #8
  br label %47

47:                                               ; preds = %43, %39
  %48 = call ptr @__acrt_iob_func(i32 noundef 1)
  %49 = call i32 @fflush(ptr noundef %48)
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
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
