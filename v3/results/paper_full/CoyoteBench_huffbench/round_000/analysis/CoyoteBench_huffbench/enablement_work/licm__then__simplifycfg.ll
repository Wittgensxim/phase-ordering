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
  br label %12

12:                                               ; preds = %17, %1
  %13 = phi ptr [ %21, %17 ], [ %.promoted1, %1 ]
  %14 = phi i32 [ %22, %17 ], [ %.promoted, %1 ]
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, %10
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = call i64 @random4()
  %19 = getelementptr inbounds nuw i8, ptr %11, i64 %18
  %20 = load i8, ptr %19, align 1
  store i8 %20, ptr %13, align 1
  %21 = getelementptr inbounds nuw i8, ptr %13, i32 1
  %22 = add nsw i32 %14, 1
  br label %12, !llvm.loop !7

23:                                               ; preds = %12
  %.lcssa2 = phi ptr [ %13, %12 ]
  %.lcssa = phi i32 [ %14, %12 ]
  store i32 %.lcssa, ptr %6, align 4
  store ptr %.lcssa2, ptr %5, align 8
  %24 = load ptr, ptr %4, align 8
  ret ptr %24
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
  br label %46

46:                                               ; preds = %50, %2
  %47 = phi ptr [ %56, %50 ], [ %.promoted1, %2 ]
  %48 = phi i64 [ %57, %50 ], [ %.promoted, %2 ]
  %49 = icmp ult i64 %48, %45
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load i8, ptr %47, align 1
  %52 = zext i8 %51 to i64
  %53 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %52
  %54 = load i64, ptr %53, align 8
  %55 = add i64 %54, 1
  store i64 %55, ptr %53, align 8
  %56 = getelementptr inbounds nuw i8, ptr %47, i32 1
  %57 = add i64 %48, 1
  br label %46, !llvm.loop !9

58:                                               ; preds = %46
  %.lcssa2 = phi ptr [ %47, %46 ]
  %.lcssa = phi i64 [ %48, %46 ]
  store i64 %.lcssa, ptr %5, align 8
  store ptr %.lcssa2, ptr %13, align 8
  store i64 0, ptr %7, align 8
  store i64 0, ptr %5, align 8
  %.promoted3 = load i64, ptr %5, align 8
  %.promoted5 = load i64, ptr %7, align 8
  br label %59

59:                                               ; preds = %70, %58
  %60 = phi i64 [ %71, %70 ], [ %.promoted5, %58 ]
  %61 = phi i64 [ %72, %70 ], [ %.promoted3, %58 ]
  %62 = icmp ult i64 %61, 256
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %61
  %65 = load i64, ptr %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %60
  store i64 %61, ptr %68, align 8
  %69 = add i64 %60, 1
  br label %70

70:                                               ; preds = %63, %67
  %71 = phi i64 [ %69, %67 ], [ %60, %63 ]
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

79:                                               ; preds = %82, %73
  %80 = phi i64 [ %84, %82 ], [ %.promoted7, %73 ]
  %81 = icmp ugt i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = trunc i64 %80 to i32
  call void @heap_adjust(ptr noundef %75, ptr noundef %76, i32 noundef %78, i32 noundef %83)
  %84 = add i64 %80, -1
  br label %79, !llvm.loop !11

85:                                               ; preds = %79
  %.lcssa8 = phi i64 [ %80, %79 ]
  store i64 %.lcssa8, ptr %5, align 8
  %86 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %87 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %88 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  %89 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %90 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %91 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %92 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %93 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  %94 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %.promoted9 = load i64, ptr %7, align 8
  %.promoted11 = load i64, ptr %20, align 8
  br label %95

95:                                               ; preds = %99, %85
  %96 = phi i64 [ %101, %99 ], [ %.promoted11, %85 ]
  %97 = phi i64 [ %100, %99 ], [ %.promoted9, %85 ]
  %98 = icmp ugt i64 %97, 1
  br i1 %98, label %99, label %122

99:                                               ; preds = %95
  %100 = add i64 %97, -1
  %101 = load i64, ptr %86, align 16
  %102 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %100
  %103 = load i64, ptr %102, align 8
  store i64 %103, ptr %87, align 16
  %104 = trunc i64 %100 to i32
  call void @heap_adjust(ptr noundef %88, ptr noundef %89, i32 noundef %104, i32 noundef 1)
  %105 = load i64, ptr %90, align 16
  %106 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %105
  %107 = load i64, ptr %106, align 8
  %108 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %101
  %109 = load i64, ptr %108, align 8
  %110 = add i64 %107, %109
  %111 = add i64 256, %100
  %112 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %111
  store i64 %110, ptr %112, align 8
  %113 = add i64 256, %100
  %114 = trunc i64 %113 to i32
  %115 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %101
  store i32 %114, ptr %115, align 4
  %116 = sub i64 -256, %100
  %117 = trunc i64 %116 to i32
  %118 = load i64, ptr %91, align 16
  %119 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %118
  store i32 %117, ptr %119, align 4
  %120 = add i64 256, %100
  store i64 %120, ptr %92, align 16
  %121 = trunc i64 %100 to i32
  call void @heap_adjust(ptr noundef %93, ptr noundef %94, i32 noundef %121, i32 noundef 1)
  br label %95, !llvm.loop !12

122:                                              ; preds = %95
  %.lcssa12 = phi i64 [ %96, %95 ]
  %.lcssa10 = phi i64 [ %97, %95 ]
  store i64 %.lcssa10, ptr %7, align 8
  store i64 %.lcssa12, ptr %20, align 8
  %123 = load i64, ptr %7, align 8
  %124 = add i64 256, %123
  %125 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %124
  store i32 0, ptr %125, align 4
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
  br label %126

126:                                              ; preds = %163, %122
  %.lcssa2042 = phi i64 [ %.lcssa2040, %163 ], [ %.promoted39, %122 ]
  %.lcssa1838 = phi i64 [ %.lcssa1836, %163 ], [ %.promoted35, %122 ]
  %.lcssa1434 = phi i32 [ %.lcssa1433, %163 ], [ %.promoted32, %122 ]
  %.lcssa1831 = phi i64 [ %.lcssa1830, %163 ], [ %.promoted29, %122 ]
  %.lcssa1628 = phi i64 [ %.lcssa1627, %163 ], [ %.promoted26, %122 ]
  %.lcssa2025 = phi i64 [ %.lcssa2024, %163 ], [ %.promoted23, %122 ]
  %127 = phi i64 [ %164, %163 ], [ %.promoted21, %122 ]
  %128 = icmp ult i64 %127, 256
  br i1 %128, label %129, label %165

129:                                              ; preds = %126
  %130 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %127
  %131 = load i64, ptr %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %127
  store i32 0, ptr %134, align 4
  %135 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %127
  store i8 0, ptr %135, align 1
  br label %163

136:                                              ; preds = %129
  %137 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %127
  %138 = load i32, ptr %137, align 4
  br label %139

139:                                              ; preds = %145, %136
  %140 = phi i64 [ %155, %145 ], [ 0, %136 ]
  %141 = phi i64 [ %149, %145 ], [ 0, %136 ]
  %142 = phi i64 [ %154, %145 ], [ 1, %136 ]
  %143 = phi i32 [ %153, %145 ], [ %138, %136 ]
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %139
  %146 = icmp slt i32 %143, 0
  %147 = add i64 %141, %142
  %148 = sub nsw i32 0, %143
  %149 = select i1 %146, i64 %147, i64 %141
  %150 = select i1 %146, i32 %148, i32 %143
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [512 x i32], ptr %17, i64 0, i64 %151
  %153 = load i32, ptr %152, align 4
  %154 = shl i64 %142, 1
  %155 = add i64 %140, 1
  br label %139, !llvm.loop !13

156:                                              ; preds = %139
  %.lcssa20 = phi i64 [ %140, %139 ]
  %.lcssa18 = phi i64 [ %141, %139 ]
  %.lcssa16 = phi i64 [ %142, %139 ]
  %.lcssa14 = phi i32 [ %143, %139 ]
  %157 = trunc i64 %.lcssa18 to i32
  %158 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %127
  store i32 %157, ptr %158, align 4
  %159 = trunc i64 %.lcssa20 to i8
  %160 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %127
  store i8 %159, ptr %160, align 1
  %161 = icmp ugt i64 %.lcssa18, %.lcssa1838
  %spec.select = select i1 %161, i64 %.lcssa18, i64 %.lcssa1838
  %162 = icmp ugt i64 %.lcssa20, %.lcssa2042
  %.lcssa2041 = select i1 %162, i64 %.lcssa20, i64 %.lcssa2042
  br label %163

163:                                              ; preds = %133, %156
  %.lcssa2040 = phi i64 [ %.lcssa2041, %156 ], [ %.lcssa2042, %133 ]
  %.lcssa1836 = phi i64 [ %spec.select, %156 ], [ %.lcssa1838, %133 ]
  %.lcssa1433 = phi i32 [ %.lcssa14, %156 ], [ %.lcssa1434, %133 ]
  %.lcssa1830 = phi i64 [ %.lcssa18, %156 ], [ %.lcssa1831, %133 ]
  %.lcssa1627 = phi i64 [ %.lcssa16, %156 ], [ %.lcssa1628, %133 ]
  %.lcssa2024 = phi i64 [ %.lcssa20, %156 ], [ %.lcssa2025, %133 ]
  %164 = add i64 %127, 1
  br label %126, !llvm.loop !14

165:                                              ; preds = %126
  %.lcssa2042.lcssa = phi i64 [ %.lcssa2042, %126 ]
  %.lcssa1838.lcssa = phi i64 [ %.lcssa1838, %126 ]
  %.lcssa1434.lcssa = phi i32 [ %.lcssa1434, %126 ]
  %.lcssa1831.lcssa = phi i64 [ %.lcssa1831, %126 ]
  %.lcssa1628.lcssa = phi i64 [ %.lcssa1628, %126 ]
  %.lcssa2025.lcssa = phi i64 [ %.lcssa2025, %126 ]
  %.lcssa22 = phi i64 [ %127, %126 ]
  store i64 %.lcssa22, ptr %21, align 8
  store i64 %.lcssa2025.lcssa, ptr %5, align 8
  store i64 %.lcssa1628.lcssa, ptr %6, align 8
  store i64 %.lcssa1831.lcssa, ptr %22, align 8
  store i32 %.lcssa1434.lcssa, ptr %25, align 4
  store i64 %.lcssa1838.lcssa, ptr %23, align 8
  store i64 %.lcssa2042.lcssa, ptr %24, align 8
  %166 = load i64, ptr %24, align 8
  %167 = icmp ugt i64 %166, 32
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = call ptr @__acrt_iob_func(i32 noundef 2)
  %170 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %169, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

171:                                              ; preds = %165
  store i64 0, ptr %26, align 8
  store i8 0, ptr %27, align 1
  store i32 -1, ptr %28, align 4
  %172 = load ptr, ptr %3, align 8
  store ptr %172, ptr %13, align 8
  %173 = load i64, ptr %23, align 8
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = call ptr @__acrt_iob_func(i32 noundef 2)
  %177 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %176, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

178:                                              ; preds = %171
  store i64 0, ptr %6, align 8
  %179 = load i64, ptr %4, align 8
  %180 = load ptr, ptr %14, align 8
  %181 = load i64, ptr %4, align 8
  %.promoted58 = load i64, ptr %6, align 8
  %.promoted61 = load ptr, ptr %13, align 8
  %.promoted64 = load i64, ptr %8, align 8
  %.promoted67 = load i64, ptr %5, align 8
  %.promoted69 = load i32, ptr %28, align 4
  %.promoted72 = load i8, ptr %27, align 1
  %.promoted75 = load i64, ptr %26, align 8
  br label %182

182:                                              ; preds = %238, %178
  %.lcssa5376 = phi i64 [ %.lcssa53, %238 ], [ %.promoted75, %178 ]
  %.lcssa5073 = phi i8 [ %.lcssa50, %238 ], [ %.promoted72, %178 ]
  %.lcssa4770 = phi i32 [ %.lcssa47, %238 ], [ %.promoted69, %178 ]
  %.lcssa4468 = phi i64 [ %.lcssa44, %238 ], [ %.promoted67, %178 ]
  %.lcssa5665 = phi i64 [ %.lcssa56, %238 ], [ %.promoted64, %178 ]
  %183 = phi ptr [ %239, %238 ], [ %.promoted61, %178 ]
  %184 = phi i64 [ %240, %238 ], [ %.promoted58, %178 ]
  %185 = icmp ult i64 %184, %179
  br i1 %185, label %186, label %241

186:                                              ; preds = %182
  %187 = load i8, ptr %183, align 1
  %188 = zext i8 %187 to i64
  %189 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %188
  %190 = load i8, ptr %189, align 1
  %191 = zext i8 %190 to i32
  %192 = sub nsw i32 %191, 1
  %193 = shl i32 1, %192
  %194 = sext i32 %193 to i64
  br label %195

195:                                              ; preds = %221, %186
  %196 = phi i64 [ %236, %221 ], [ %194, %186 ]
  %197 = phi i64 [ %222, %221 ], [ %.lcssa5376, %186 ]
  %198 = phi i8 [ %235, %221 ], [ %.lcssa5073, %186 ]
  %199 = phi i32 [ %224, %221 ], [ %.lcssa4770, %186 ]
  %200 = phi i64 [ %237, %221 ], [ 0, %186 ]
  %201 = load i8, ptr %183, align 1
  %202 = zext i8 %201 to i64
  %203 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %202
  %204 = load i8, ptr %203, align 1
  %205 = zext i8 %204 to i64
  %206 = icmp ult i64 %200, %205
  br i1 %206, label %207, label %238

207:                                              ; preds = %195
  %208 = icmp eq i32 %199, 7
  br i1 %208, label %209, label %216

209:                                              ; preds = %207
  %210 = getelementptr inbounds nuw i8, ptr %180, i64 %197
  store i8 %198, ptr %210, align 1
  %211 = add i64 %197, 1
  %212 = icmp eq i64 %211, %181
  br i1 %212, label %213, label %221

213:                                              ; preds = %209
  %.lcssa5376.lcssa77 = phi i64 [ %.lcssa5376, %209 ]
  %.lcssa5073.lcssa74 = phi i8 [ %.lcssa5073, %209 ]
  %.lcssa4770.lcssa71 = phi i32 [ %.lcssa4770, %209 ]
  %.lcssa66 = phi i64 [ %194, %209 ]
  %.lcssa63 = phi ptr [ %183, %209 ]
  %.lcssa60 = phi i64 [ %184, %209 ]
  %.lcssa57 = phi i64 [ %196, %209 ]
  %.lcssa54 = phi i64 [ %211, %209 ]
  %.lcssa51 = phi i8 [ %198, %209 ]
  %.lcssa48 = phi i32 [ %199, %209 ]
  %.lcssa45 = phi i64 [ %200, %209 ]
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
  %214 = call ptr @__acrt_iob_func(i32 noundef 2)
  %215 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %214, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

216:                                              ; preds = %207
  %217 = add nsw i32 %199, 1
  %218 = sext i8 %198 to i32
  %219 = shl i32 %218, 1
  %220 = trunc i32 %219 to i8
  br label %221

221:                                              ; preds = %209, %216
  %222 = phi i64 [ %197, %216 ], [ %211, %209 ]
  %223 = phi i8 [ %220, %216 ], [ 0, %209 ]
  %224 = phi i32 [ %217, %216 ], [ 0, %209 ]
  %225 = load i8, ptr %183, align 1
  %226 = zext i8 %225 to i64
  %227 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %226
  %228 = load i32, ptr %227, align 4
  %229 = zext i32 %228 to i64
  %230 = and i64 %229, %196
  %231 = icmp ne i64 %230, 0
  %232 = sext i8 %223 to i32
  %233 = or i32 %232, 1
  %234 = trunc i32 %233 to i8
  %235 = select i1 %231, i8 %234, i8 %223
  %236 = lshr i64 %196, 1
  %237 = add i64 %200, 1
  br label %195, !llvm.loop !15

238:                                              ; preds = %195
  %.lcssa56 = phi i64 [ %196, %195 ]
  %.lcssa53 = phi i64 [ %197, %195 ]
  %.lcssa50 = phi i8 [ %198, %195 ]
  %.lcssa47 = phi i32 [ %199, %195 ]
  %.lcssa44 = phi i64 [ %200, %195 ]
  %239 = getelementptr inbounds nuw i8, ptr %183, i32 1
  %240 = add i64 %184, 1
  br label %182, !llvm.loop !16

241:                                              ; preds = %182
  %.lcssa5376.lcssa = phi i64 [ %.lcssa5376, %182 ]
  %.lcssa5073.lcssa = phi i8 [ %.lcssa5073, %182 ]
  %.lcssa4770.lcssa = phi i32 [ %.lcssa4770, %182 ]
  %.lcssa4468.lcssa = phi i64 [ %.lcssa4468, %182 ]
  %.lcssa5665.lcssa = phi i64 [ %.lcssa5665, %182 ]
  %.lcssa62 = phi ptr [ %183, %182 ]
  %.lcssa59 = phi i64 [ %184, %182 ]
  store i64 %.lcssa59, ptr %6, align 8
  store ptr %.lcssa62, ptr %13, align 8
  store i64 %.lcssa5665.lcssa, ptr %8, align 8
  store i64 %.lcssa4468.lcssa, ptr %5, align 8
  store i32 %.lcssa4770.lcssa, ptr %28, align 4
  store i8 %.lcssa5073.lcssa, ptr %27, align 1
  store i64 %.lcssa5376.lcssa, ptr %26, align 8
  %242 = load i32, ptr %28, align 4
  %243 = sub nsw i32 7, %242
  %244 = load i8, ptr %27, align 1
  %245 = sext i8 %244 to i32
  %246 = shl i32 %245, %243
  %247 = trunc i32 %246 to i8
  store i8 %247, ptr %27, align 1
  %248 = load i8, ptr %27, align 1
  %249 = load ptr, ptr %14, align 8
  %250 = load i64, ptr %26, align 8
  %251 = getelementptr inbounds nuw i8, ptr %249, i64 %250
  store i8 %248, ptr %251, align 1
  %252 = load i64, ptr %26, align 8
  %253 = add i64 %252, 1
  store i64 %253, ptr %26, align 8
  %254 = getelementptr inbounds [256 x i32], ptr %29, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %254, i8 0, i64 1024, i1 false)
  %255 = getelementptr inbounds [256 x i8], ptr %30, i64 0, i64 0
  store ptr %255, ptr %31, align 8
  store i64 0, ptr %6, align 8
  %.promoted84 = load i64, ptr %6, align 8
  %.promoted86 = load ptr, ptr %31, align 8
  %.promoted88 = load i32, ptr %9, align 4
  %.promoted91 = load i64, ptr %8, align 8
  %.promoted94 = load i64, ptr %5, align 8
  br label %256

256:                                              ; preds = %298, %241
  %.lcssa7996 = phi i64 [ %.lcssa7995, %298 ], [ %.promoted94, %241 ]
  %.lcssa8393 = phi i64 [ %.lcssa8392, %298 ], [ %.promoted91, %241 ]
  %.lcssa8190 = phi i32 [ %.lcssa8189, %298 ], [ %.promoted88, %241 ]
  %257 = phi ptr [ %262, %298 ], [ %.promoted86, %241 ]
  %258 = phi i64 [ %299, %298 ], [ %.promoted84, %241 ]
  %259 = icmp ult i64 %258, 256
  br i1 %259, label %260, label %300

260:                                              ; preds = %256
  %261 = trunc i64 %258 to i8
  store i8 %261, ptr %257, align 1
  %262 = getelementptr inbounds nuw i8, ptr %257, i32 1
  %263 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %258
  %264 = load i32, ptr %263, align 4
  %265 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %258
  %266 = load i8, ptr %265, align 1
  %267 = zext i8 %266 to i32
  %268 = or i32 %264, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %298

270:                                              ; preds = %260
  %271 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %258
  %272 = load i8, ptr %271, align 1
  %273 = zext i8 %272 to i32
  %274 = sub nsw i32 %273, 1
  %275 = shl i32 1, %274
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %258
  %278 = load i8, ptr %277, align 1
  %279 = zext i8 %278 to i64
  %280 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %258
  br label %281

281:                                              ; preds = %286, %270
  %282 = phi i64 [ %294, %286 ], [ %276, %270 ]
  %283 = phi i32 [ %spec.select124, %286 ], [ 0, %270 ]
  %284 = phi i64 [ %295, %286 ], [ 0, %270 ]
  %285 = icmp ult i64 %284, %279
  br i1 %285, label %286, label %296

286:                                              ; preds = %281
  %287 = mul i32 %283, 2
  %288 = add i32 %287, 1
  %289 = load i32, ptr %280, align 4
  %290 = zext i32 %289 to i64
  %291 = and i64 %290, %282
  %292 = icmp ne i64 %291, 0
  %293 = add i32 %288, 1
  %spec.select124 = select i1 %292, i32 %293, i32 %288
  %294 = lshr i64 %282, 1
  %295 = add i64 %284, 1
  br label %281, !llvm.loop !17

296:                                              ; preds = %281
  %.lcssa83 = phi i64 [ %282, %281 ]
  %.lcssa81 = phi i32 [ %283, %281 ]
  %.lcssa79 = phi i64 [ %284, %281 ]
  %297 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %258
  store i32 %.lcssa81, ptr %297, align 4
  br label %298

298:                                              ; preds = %260, %296
  %.lcssa7995 = phi i64 [ %.lcssa79, %296 ], [ %.lcssa7996, %260 ]
  %.lcssa8392 = phi i64 [ %.lcssa83, %296 ], [ %.lcssa8393, %260 ]
  %.lcssa8189 = phi i32 [ %.lcssa81, %296 ], [ %.lcssa8190, %260 ]
  %299 = add i64 %258, 1
  br label %256, !llvm.loop !18

300:                                              ; preds = %256
  %.lcssa7996.lcssa = phi i64 [ %.lcssa7996, %256 ]
  %.lcssa8393.lcssa = phi i64 [ %.lcssa8393, %256 ]
  %.lcssa8190.lcssa = phi i32 [ %.lcssa8190, %256 ]
  %.lcssa87 = phi ptr [ %257, %256 ]
  %.lcssa85 = phi i64 [ %258, %256 ]
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
  br label %301

301:                                              ; preds = %.critedge, %300
  %.lcssa98106 = phi i64 [ %.lcssa98, %.critedge ], [ %.promoted105, %300 ]
  %302 = phi i8 [ %310, %.critedge ], [ %.promoted103, %300 ]
  %303 = phi i32 [ %308, %.critedge ], [ %.promoted101, %300 ]
  %304 = phi i64 [ %331, %.critedge ], [ %.promoted99, %300 ]
  %305 = icmp ult i64 %304, 256
  br i1 %305, label %306, label %332

306:                                              ; preds = %301
  %307 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %304
  %308 = load i32, ptr %307, align 4
  %309 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %304
  %310 = load i8, ptr %309, align 1
  br label %311

311:                                              ; preds = %319, %306
  %312 = phi i64 [ %328, %319 ], [ %304, %306 ]
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %.critedge

314:                                              ; preds = %311
  %315 = sub i64 %312, 1
  %316 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %315
  %317 = load i32, ptr %316, align 4
  %318 = icmp ugt i32 %317, %308
  br i1 %318, label %319, label %.critedge

319:                                              ; preds = %314
  %320 = sub i64 %312, 1
  %321 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %320
  %322 = load i32, ptr %321, align 4
  %323 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %312
  store i32 %322, ptr %323, align 4
  %324 = sub i64 %312, 1
  %325 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %324
  %326 = load i8, ptr %325, align 1
  %327 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %312
  store i8 %326, ptr %327, align 1
  %328 = add i64 %312, -1
  br label %311, !llvm.loop !19

.critedge:                                        ; preds = %311, %314
  %.lcssa98 = phi i64 [ %312, %314 ], [ %312, %311 ]
  %329 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %.lcssa98
  store i32 %308, ptr %329, align 4
  %330 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %.lcssa98
  store i8 %310, ptr %330, align 1
  %331 = add i64 %304, 1
  br label %301, !llvm.loop !20

332:                                              ; preds = %301
  %.lcssa98106.lcssa = phi i64 [ %.lcssa98106, %301 ]
  %.lcssa104 = phi i8 [ %302, %301 ]
  %.lcssa102 = phi i32 [ %303, %301 ]
  %.lcssa100 = phi i64 [ %304, %301 ]
  store i64 %.lcssa100, ptr %5, align 8
  store i32 %.lcssa102, ptr %10, align 4
  store i8 %.lcssa104, ptr %11, align 1
  store i64 %.lcssa98106.lcssa, ptr %6, align 8
  store i64 0, ptr %6, align 8
  %.promoted107 = load i64, ptr %6, align 8
  br label %333

333:                                              ; preds = %338, %332
  %334 = phi i64 [ %339, %338 ], [ %.promoted107, %332 ]
  %335 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %334
  %336 = load i32, ptr %335, align 4
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %340

338:                                              ; preds = %333
  %339 = add i64 %334, 1
  br label %333, !llvm.loop !21

340:                                              ; preds = %333
  %.lcssa108 = phi i64 [ %334, %333 ]
  store i64 %.lcssa108, ptr %6, align 8
  store i32 0, ptr %9, align 4
  %341 = load i64, ptr %6, align 8
  store i64 %341, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  %342 = load ptr, ptr %14, align 8
  store ptr %342, ptr %12, align 8
  %343 = load ptr, ptr %3, align 8
  store ptr %343, ptr %13, align 8
  %344 = load i64, ptr %4, align 8
  %345 = load i64, ptr %6, align 8
  %.promoted111 = load i64, ptr %7, align 8
  %.promoted113 = load i32, ptr %9, align 4
  %.promoted115 = load ptr, ptr %12, align 8
  %.promoted117 = load i64, ptr %8, align 8
  %.promoted119 = load i64, ptr %5, align 8
  %.promoted122 = load ptr, ptr %13, align 8
  br label %346

346:                                              ; preds = %377, %340
  %347 = phi ptr [ %378, %377 ], [ %.promoted122, %340 ]
  %.lcssa110120 = phi i64 [ %.lcssa110121, %377 ], [ %.promoted119, %340 ]
  %348 = phi i64 [ %384, %377 ], [ %.promoted117, %340 ]
  %349 = phi ptr [ %385, %377 ], [ %.promoted115, %340 ]
  %350 = phi i32 [ %379, %377 ], [ %.promoted113, %340 ]
  %351 = phi i64 [ %380, %377 ], [ %.promoted111, %340 ]
  %352 = icmp ult i64 %351, %344
  br i1 %352, label %353, label %386

353:                                              ; preds = %346
  %354 = mul i32 %350, 2
  %355 = add i32 %354, 1
  %356 = load i8, ptr %349, align 1
  %357 = zext i8 %356 to i64
  %358 = and i64 %357, %348
  %359 = icmp ne i64 %358, 0
  %360 = add i32 %355, 1
  %spec.select125 = select i1 %359, i32 %360, i32 %355
  br label %361

361:                                              ; preds = %366, %353
  %362 = phi i64 [ %367, %366 ], [ %.lcssa110120, %353 ]
  %363 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %362
  %364 = load i32, ptr %363, align 4
  %365 = icmp ult i32 %364, %spec.select125
  br i1 %365, label %366, label %368

366:                                              ; preds = %361
  %367 = add i64 %362, 1
  br label %361, !llvm.loop !22

368:                                              ; preds = %361
  %.lcssa110 = phi i64 [ %362, %361 ]
  %369 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %.lcssa110
  %370 = load i32, ptr %369, align 4
  %371 = icmp eq i32 %spec.select125, %370
  br i1 %371, label %372, label %377

372:                                              ; preds = %368
  %373 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %.lcssa110
  %374 = load i8, ptr %373, align 1
  store i8 %374, ptr %347, align 1
  %375 = getelementptr inbounds nuw i8, ptr %347, i32 1
  %376 = add i64 %351, 1
  br label %377

377:                                              ; preds = %372, %368
  %378 = phi ptr [ %375, %372 ], [ %347, %368 ]
  %.lcssa110121 = phi i64 [ %345, %372 ], [ %.lcssa110, %368 ]
  %379 = phi i32 [ 0, %372 ], [ %spec.select125, %368 ]
  %380 = phi i64 [ %376, %372 ], [ %351, %368 ]
  %381 = icmp ugt i64 %348, 1
  %382 = getelementptr inbounds nuw i8, ptr %349, i32 1
  %383 = lshr i64 %348, 1
  %384 = select i1 %381, i64 %383, i64 128
  %385 = select i1 %381, ptr %349, ptr %382
  br label %346, !llvm.loop !23

386:                                              ; preds = %346
  %.lcssa123 = phi ptr [ %347, %346 ]
  %.lcssa110120.lcssa = phi i64 [ %.lcssa110120, %346 ]
  %.lcssa118 = phi i64 [ %348, %346 ]
  %.lcssa116 = phi ptr [ %349, %346 ]
  %.lcssa114 = phi i32 [ %350, %346 ]
  %.lcssa112 = phi i64 [ %351, %346 ]
  store i64 %.lcssa112, ptr %7, align 8
  store i32 %.lcssa114, ptr %9, align 4
  store ptr %.lcssa116, ptr %12, align 8
  store i64 %.lcssa118, ptr %8, align 8
  store i64 %.lcssa110120.lcssa, ptr %5, align 8
  store ptr %.lcssa123, ptr %13, align 8
  %387 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %387)
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

33:                                               ; preds = %65, %4
  %34 = phi i32 [ %55, %65 ], [ %.promoted2, %4 ]
  %35 = phi i32 [ %55, %65 ], [ %.promoted, %4 ]
  %36 = icmp sle i32 %35, %19
  br i1 %36, label %37, label %.loopexit

37:                                               ; preds = %33
  %38 = add nsw i32 %35, %35
  %39 = icmp slt i32 %38, %20
  br i1 %39, label %40, label %54

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
  %53 = add nsw i32 %38, 1
  %spec.select = select i1 %52, i32 %53, i32 %38
  br label %54

54:                                               ; preds = %40, %37
  %55 = phi i32 [ %38, %37 ], [ %spec.select, %40 ]
  %56 = load i64, ptr %28, align 8
  %57 = sub nsw i32 %55, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, ptr %30, i64 %58
  %60 = load i64, ptr %59, align 8
  %61 = getelementptr inbounds nuw i64, ptr %29, i64 %60
  %62 = load i64, ptr %61, align 8
  %63 = icmp ult i64 %56, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  %.lcssa4 = phi i32 [ %55, %54 ]
  %.lcssa1 = phi i32 [ %35, %54 ]
  store i32 %.lcssa1, ptr %8, align 4
  store i32 %.lcssa4, ptr %9, align 4
  br label %73

65:                                               ; preds = %54
  %66 = sub nsw i32 %55, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, ptr %31, i64 %67
  %69 = load i64, ptr %68, align 8
  %70 = sub nsw i32 %35, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, ptr %32, i64 %71
  store i64 %69, ptr %72, align 8
  br label %33, !llvm.loop !24

.loopexit:                                        ; preds = %33
  %.lcssa3 = phi i32 [ %34, %33 ]
  %.lcssa = phi i32 [ %35, %33 ]
  store i32 %.lcssa, ptr %8, align 4
  store i32 %.lcssa3, ptr %9, align 4
  br label %73

73:                                               ; preds = %.loopexit, %64
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
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  store i32 1, ptr %6, align 4
  %13 = load i32, ptr %4, align 4
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds ptr, ptr %14, i64 1
  %.promoted = load i32, ptr %6, align 4
  br label %16

16:                                               ; preds = %24, %12
  %17 = phi i32 [ %25, %24 ], [ %.promoted, %12 ]
  %18 = icmp slt i32 %17, %13
  br i1 %18, label %19, label %.loopexit

19:                                               ; preds = %16
  %20 = load ptr, ptr %15, align 8
  %21 = call i32 @strcmp(ptr noundef %20, ptr noundef @.str.4) #7
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  %.lcssa1 = phi i32 [ %17, %19 ]
  store i32 %.lcssa1, ptr %6, align 4
  store i8 1, ptr %7, align 1
  br label %26

24:                                               ; preds = %19
  %25 = add nsw i32 %17, 1
  br label %16, !llvm.loop !25

.loopexit:                                        ; preds = %16
  %.lcssa = phi i32 [ %17, %16 ]
  store i32 %.lcssa, ptr %6, align 4
  br label %26

26:                                               ; preds = %23, %.loopexit, %2
  %27 = call ptr @generate_test_data(i64 noundef 10000000)
  store ptr %27, ptr %8, align 8
  store i32 0, ptr %6, align 4
  %28 = load ptr, ptr %8, align 8
  %.promoted2 = load i32, ptr %6, align 4
  br label %29

29:                                               ; preds = %32, %26
  %30 = phi i32 [ %33, %32 ], [ %.promoted2, %26 ]
  %31 = icmp slt i32 %30, 30
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  call void @compdecomp(ptr noundef %28, i64 noundef 10000000)
  %33 = add nsw i32 %30, 1
  br label %29, !llvm.loop !26

34:                                               ; preds = %29
  %.lcssa3 = phi i32 [ %30, %29 ]
  store i32 %.lcssa3, ptr %6, align 4
  store double 0.000000e+00, ptr %9, align 8
  %35 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %35)
  %36 = load i8, ptr %7, align 1
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = call ptr @__acrt_iob_func(i32 noundef 1)
  %40 = load double, ptr %9, align 8
  %41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef @.str.5, double noundef %40) #7
  br label %46

42:                                               ; preds = %34
  %43 = call ptr @__acrt_iob_func(i32 noundef 1)
  %44 = load double, ptr %9, align 8
  %45 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef @.str.6, double noundef %44) #7
  br label %46

46:                                               ; preds = %42, %38
  %47 = call ptr @__acrt_iob_func(i32 noundef 1)
  %48 = call i32 @fflush(ptr noundef %47)
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
