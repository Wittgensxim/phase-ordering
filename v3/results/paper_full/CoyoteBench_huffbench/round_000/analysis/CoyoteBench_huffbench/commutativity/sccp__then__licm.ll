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

12:                                               ; preds = %22, %1
  %13 = phi ptr [ %21, %22 ], [ %.promoted1, %1 ]
  %14 = phi i32 [ %23, %22 ], [ %.promoted, %1 ]
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, %10
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = call i64 @random4()
  %19 = getelementptr inbounds nuw i8, ptr %11, i64 %18
  %20 = load i8, ptr %19, align 1
  store i8 %20, ptr %13, align 1
  %21 = getelementptr inbounds nuw i8, ptr %13, i32 1
  br label %22

22:                                               ; preds = %17
  %23 = add nsw i32 %14, 1
  br label %12, !llvm.loop !7

24:                                               ; preds = %12
  %.lcssa2 = phi ptr [ %13, %12 ]
  %.lcssa = phi i32 [ %14, %12 ]
  store i32 %.lcssa, ptr %6, align 4
  store ptr %.lcssa2, ptr %5, align 8
  %25 = load ptr, ptr %4, align 8
  ret ptr %25
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
  %39 = mul nuw nsw i64 1, %38
  call void @llvm.memset.p0.i64(ptr align 1 %36, i8 0, i64 %39, i1 false)
  %40 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %40, i8 0, i64 4096, i1 false)
  %41 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %41, i8 0, i64 2048, i1 false)
  %42 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %42, i8 0, i64 2048, i1 false)
  %43 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %43, i8 0, i64 1024, i1 false)
  %44 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %44, i8 0, i64 256, i1 false)
  store i64 0, ptr %5, align 8
  %45 = load i64, ptr %4, align 8
  %.promoted = load i64, ptr %5, align 8
  %.promoted1 = load ptr, ptr %13, align 8
  br label %46

46:                                               ; preds = %57, %2
  %47 = phi ptr [ %56, %57 ], [ %.promoted1, %2 ]
  %48 = phi i64 [ %58, %57 ], [ %.promoted, %2 ]
  %49 = icmp ult i64 %48, %45
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load i8, ptr %47, align 1
  %52 = zext i8 %51 to i64
  %53 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %52
  %54 = load i64, ptr %53, align 8
  %55 = add i64 %54, 1
  store i64 %55, ptr %53, align 8
  %56 = getelementptr inbounds nuw i8, ptr %47, i32 1
  br label %57

57:                                               ; preds = %50
  %58 = add i64 %48, 1
  br label %46, !llvm.loop !9

59:                                               ; preds = %46
  %.lcssa2 = phi ptr [ %47, %46 ]
  %.lcssa = phi i64 [ %48, %46 ]
  store i64 %.lcssa, ptr %5, align 8
  store ptr %.lcssa2, ptr %13, align 8
  store i64 0, ptr %7, align 8
  store i64 0, ptr %5, align 8
  %.promoted3 = load i64, ptr %5, align 8
  %.promoted5 = load i64, ptr %7, align 8
  br label %60

60:                                               ; preds = %73, %59
  %61 = phi i64 [ %72, %73 ], [ %.promoted5, %59 ]
  %62 = phi i64 [ %74, %73 ], [ %.promoted3, %59 ]
  %63 = icmp ult i64 %62, 256
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  %65 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %62
  %66 = load i64, ptr %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %61
  store i64 %62, ptr %69, align 8
  %70 = add i64 %61, 1
  br label %71

71:                                               ; preds = %68, %64
  %72 = phi i64 [ %70, %68 ], [ %61, %64 ]
  br label %73

73:                                               ; preds = %71
  %74 = add i64 %62, 1
  br label %60, !llvm.loop !10

75:                                               ; preds = %60
  %.lcssa6 = phi i64 [ %61, %60 ]
  %.lcssa4 = phi i64 [ %62, %60 ]
  store i64 %.lcssa4, ptr %5, align 8
  store i64 %.lcssa6, ptr %7, align 8
  %76 = load i64, ptr %7, align 8
  store i64 %76, ptr %5, align 8
  %77 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 0
  %78 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 0
  %79 = load i64, ptr %7, align 8
  %80 = trunc i64 %79 to i32
  %.promoted7 = load i64, ptr %5, align 8
  br label %81

81:                                               ; preds = %86, %75
  %82 = phi i64 [ %87, %86 ], [ %.promoted7, %75 ]
  %83 = icmp ugt i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = trunc i64 %82 to i32
  call void @heap_adjust(ptr noundef %77, ptr noundef %78, i32 noundef %80, i32 noundef %85)
  br label %86

86:                                               ; preds = %84
  %87 = add i64 %82, -1
  br label %81, !llvm.loop !11

88:                                               ; preds = %81
  %.lcssa8 = phi i64 [ %82, %81 ]
  store i64 %.lcssa8, ptr %5, align 8
  %89 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 0
  %90 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 0
  %91 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 0
  %92 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 0
  %93 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 0
  %94 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 0
  %95 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 0
  %96 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 0
  %97 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 0
  %.promoted9 = load i64, ptr %7, align 8
  %.promoted11 = load i64, ptr %20, align 8
  br label %98

98:                                               ; preds = %102, %88
  %99 = phi i64 [ %104, %102 ], [ %.promoted11, %88 ]
  %100 = phi i64 [ %103, %102 ], [ %.promoted9, %88 ]
  %101 = icmp ugt i64 %100, 1
  br i1 %101, label %102, label %125

102:                                              ; preds = %98
  %103 = add i64 %100, -1
  %104 = load i64, ptr %89, align 16
  %105 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %103
  %106 = load i64, ptr %105, align 8
  store i64 %106, ptr %90, align 16
  %107 = trunc i64 %103 to i32
  call void @heap_adjust(ptr noundef %91, ptr noundef %92, i32 noundef %107, i32 noundef 1)
  %108 = load i64, ptr %93, align 16
  %109 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %108
  %110 = load i64, ptr %109, align 8
  %111 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %104
  %112 = load i64, ptr %111, align 8
  %113 = add i64 %110, %112
  %114 = add i64 256, %103
  %115 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %114
  store i64 %113, ptr %115, align 8
  %116 = add i64 256, %103
  %117 = trunc i64 %116 to i32
  %118 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %104
  store i32 %117, ptr %118, align 4
  %119 = sub i64 -256, %103
  %120 = trunc i64 %119 to i32
  %121 = load i64, ptr %94, align 16
  %122 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %121
  store i32 %120, ptr %122, align 4
  %123 = add i64 256, %103
  store i64 %123, ptr %95, align 16
  %124 = trunc i64 %103 to i32
  call void @heap_adjust(ptr noundef %96, ptr noundef %97, i32 noundef %124, i32 noundef 1)
  br label %98, !llvm.loop !12

125:                                              ; preds = %98
  %.lcssa12 = phi i64 [ %99, %98 ]
  %.lcssa10 = phi i64 [ %100, %98 ]
  store i64 %.lcssa10, ptr %7, align 8
  store i64 %.lcssa12, ptr %20, align 8
  %126 = load i64, ptr %7, align 8
  %127 = add i64 256, %126
  %128 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %127
  store i32 0, ptr %128, align 4
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
  br label %129

129:                                              ; preds = %173, %125
  %.lcssa2042 = phi i64 [ %.lcssa2040, %173 ], [ %.promoted39, %125 ]
  %.lcssa1838 = phi i64 [ %.lcssa1836, %173 ], [ %.promoted35, %125 ]
  %.lcssa1434 = phi i32 [ %.lcssa1433, %173 ], [ %.promoted32, %125 ]
  %.lcssa1831 = phi i64 [ %.lcssa1830, %173 ], [ %.promoted29, %125 ]
  %.lcssa1628 = phi i64 [ %.lcssa1627, %173 ], [ %.promoted26, %125 ]
  %.lcssa2025 = phi i64 [ %.lcssa2024, %173 ], [ %.promoted23, %125 ]
  %130 = phi i64 [ %174, %173 ], [ %.promoted21, %125 ]
  %131 = icmp ult i64 %130, 256
  br i1 %131, label %132, label %175

132:                                              ; preds = %129
  %133 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %130
  %134 = load i64, ptr %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %130
  store i32 0, ptr %137, align 4
  %138 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %130
  store i8 0, ptr %138, align 1
  br label %172

139:                                              ; preds = %132
  %140 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %130
  %141 = load i32, ptr %140, align 4
  br label %142

142:                                              ; preds = %153, %139
  %143 = phi i64 [ %160, %153 ], [ 0, %139 ]
  %144 = phi i64 [ %154, %153 ], [ 0, %139 ]
  %145 = phi i64 [ %159, %153 ], [ 1, %139 ]
  %146 = phi i32 [ %158, %153 ], [ %141, %139 ]
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %161

148:                                              ; preds = %142
  %149 = icmp slt i32 %146, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %148
  %151 = add i64 %144, %145
  %152 = sub nsw i32 0, %146
  br label %153

153:                                              ; preds = %150, %148
  %154 = phi i64 [ %151, %150 ], [ %144, %148 ]
  %155 = phi i32 [ %152, %150 ], [ %146, %148 ]
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [512 x i32], ptr %17, i64 0, i64 %156
  %158 = load i32, ptr %157, align 4
  %159 = shl i64 %145, 1
  %160 = add i64 %143, 1
  br label %142, !llvm.loop !13

161:                                              ; preds = %142
  %.lcssa20 = phi i64 [ %143, %142 ]
  %.lcssa18 = phi i64 [ %144, %142 ]
  %.lcssa16 = phi i64 [ %145, %142 ]
  %.lcssa14 = phi i32 [ %146, %142 ]
  %162 = trunc i64 %.lcssa18 to i32
  %163 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %130
  store i32 %162, ptr %163, align 4
  %164 = trunc i64 %.lcssa20 to i8
  %165 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %130
  store i8 %164, ptr %165, align 1
  %166 = icmp ugt i64 %.lcssa18, %.lcssa1838
  br i1 %166, label %167, label %168

167:                                              ; preds = %161
  br label %168

168:                                              ; preds = %167, %161
  %.lcssa1837 = phi i64 [ %.lcssa18, %167 ], [ %.lcssa1838, %161 ]
  %169 = icmp ugt i64 %.lcssa20, %.lcssa2042
  br i1 %169, label %170, label %171

170:                                              ; preds = %168
  br label %171

171:                                              ; preds = %170, %168
  %.lcssa2041 = phi i64 [ %.lcssa20, %170 ], [ %.lcssa2042, %168 ]
  br label %172

172:                                              ; preds = %171, %136
  %.lcssa2040 = phi i64 [ %.lcssa2041, %171 ], [ %.lcssa2042, %136 ]
  %.lcssa1836 = phi i64 [ %.lcssa1837, %171 ], [ %.lcssa1838, %136 ]
  %.lcssa1433 = phi i32 [ %.lcssa14, %171 ], [ %.lcssa1434, %136 ]
  %.lcssa1830 = phi i64 [ %.lcssa18, %171 ], [ %.lcssa1831, %136 ]
  %.lcssa1627 = phi i64 [ %.lcssa16, %171 ], [ %.lcssa1628, %136 ]
  %.lcssa2024 = phi i64 [ %.lcssa20, %171 ], [ %.lcssa2025, %136 ]
  br label %173

173:                                              ; preds = %172
  %174 = add i64 %130, 1
  br label %129, !llvm.loop !14

175:                                              ; preds = %129
  %.lcssa2042.lcssa = phi i64 [ %.lcssa2042, %129 ]
  %.lcssa1838.lcssa = phi i64 [ %.lcssa1838, %129 ]
  %.lcssa1434.lcssa = phi i32 [ %.lcssa1434, %129 ]
  %.lcssa1831.lcssa = phi i64 [ %.lcssa1831, %129 ]
  %.lcssa1628.lcssa = phi i64 [ %.lcssa1628, %129 ]
  %.lcssa2025.lcssa = phi i64 [ %.lcssa2025, %129 ]
  %.lcssa22 = phi i64 [ %130, %129 ]
  store i64 %.lcssa22, ptr %21, align 8
  store i64 %.lcssa2025.lcssa, ptr %5, align 8
  store i64 %.lcssa1628.lcssa, ptr %6, align 8
  store i64 %.lcssa1831.lcssa, ptr %22, align 8
  store i32 %.lcssa1434.lcssa, ptr %25, align 4
  store i64 %.lcssa1838.lcssa, ptr %23, align 8
  store i64 %.lcssa2042.lcssa, ptr %24, align 8
  %176 = load i64, ptr %24, align 8
  %177 = icmp ugt i64 %176, 32
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = call ptr @__acrt_iob_func(i32 noundef 2)
  %180 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %179, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

181:                                              ; preds = %175
  store i64 0, ptr %26, align 8
  store i8 0, ptr %27, align 1
  store i32 -1, ptr %28, align 4
  %182 = load ptr, ptr %3, align 8
  store ptr %182, ptr %13, align 8
  %183 = load i64, ptr %23, align 8
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %181
  %186 = call ptr @__acrt_iob_func(i32 noundef 2)
  %187 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %186, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

188:                                              ; preds = %181
  store i64 0, ptr %6, align 8
  %189 = load i64, ptr %4, align 8
  %190 = load ptr, ptr %14, align 8
  %191 = load i64, ptr %4, align 8
  %.promoted58 = load i64, ptr %6, align 8
  %.promoted61 = load ptr, ptr %13, align 8
  %.promoted64 = load i64, ptr %8, align 8
  %.promoted67 = load i64, ptr %5, align 8
  %.promoted69 = load i32, ptr %28, align 4
  %.promoted72 = load i8, ptr %27, align 1
  %.promoted75 = load i64, ptr %26, align 8
  br label %192

192:                                              ; preds = %254, %188
  %.lcssa5376 = phi i64 [ %.lcssa53, %254 ], [ %.promoted75, %188 ]
  %.lcssa5073 = phi i8 [ %.lcssa50, %254 ], [ %.promoted72, %188 ]
  %.lcssa4770 = phi i32 [ %.lcssa47, %254 ], [ %.promoted69, %188 ]
  %.lcssa4468 = phi i64 [ %.lcssa44, %254 ], [ %.promoted67, %188 ]
  %.lcssa5665 = phi i64 [ %.lcssa56, %254 ], [ %.promoted64, %188 ]
  %193 = phi ptr [ %253, %254 ], [ %.promoted61, %188 ]
  %194 = phi i64 [ %255, %254 ], [ %.promoted58, %188 ]
  %195 = icmp ult i64 %194, %189
  br i1 %195, label %196, label %256

196:                                              ; preds = %192
  %197 = load i8, ptr %193, align 1
  %198 = zext i8 %197 to i64
  %199 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %198
  %200 = load i8, ptr %199, align 1
  %201 = zext i8 %200 to i32
  %202 = sub nsw i32 %201, 1
  %203 = shl nuw i32 1, %202
  %204 = sext i32 %203 to i64
  br label %205

205:                                              ; preds = %250, %196
  %206 = phi i64 [ %249, %250 ], [ %204, %196 ]
  %207 = phi i64 [ %233, %250 ], [ %.lcssa5376, %196 ]
  %208 = phi i8 [ %248, %250 ], [ %.lcssa5073, %196 ]
  %209 = phi i32 [ %235, %250 ], [ %.lcssa4770, %196 ]
  %210 = phi i64 [ %251, %250 ], [ 0, %196 ]
  %211 = load i8, ptr %193, align 1
  %212 = zext i8 %211 to i64
  %213 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %212
  %214 = load i8, ptr %213, align 1
  %215 = zext i8 %214 to i64
  %216 = icmp ult i64 %210, %215
  br i1 %216, label %217, label %252

217:                                              ; preds = %205
  %218 = icmp eq i32 %209, 7
  br i1 %218, label %219, label %227

219:                                              ; preds = %217
  %220 = getelementptr inbounds nuw i8, ptr %190, i64 %207
  store i8 %208, ptr %220, align 1
  %221 = add i64 %207, 1
  %222 = icmp eq i64 %221, %191
  br i1 %222, label %223, label %226

223:                                              ; preds = %219
  %.lcssa5376.lcssa77 = phi i64 [ %.lcssa5376, %219 ]
  %.lcssa5073.lcssa74 = phi i8 [ %.lcssa5073, %219 ]
  %.lcssa4770.lcssa71 = phi i32 [ %.lcssa4770, %219 ]
  %.lcssa66 = phi i64 [ %204, %219 ]
  %.lcssa63 = phi ptr [ %193, %219 ]
  %.lcssa60 = phi i64 [ %194, %219 ]
  %.lcssa57 = phi i64 [ %206, %219 ]
  %.lcssa54 = phi i64 [ %221, %219 ]
  %.lcssa51 = phi i8 [ %208, %219 ]
  %.lcssa48 = phi i32 [ %209, %219 ]
  %.lcssa45 = phi i64 [ %210, %219 ]
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
  %224 = call ptr @__acrt_iob_func(i32 noundef 2)
  %225 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %224, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

226:                                              ; preds = %219
  br label %232

227:                                              ; preds = %217
  %228 = add nsw i32 %209, 1
  %229 = sext i8 %208 to i32
  %230 = shl nsw i32 %229, 1
  %231 = trunc i32 %230 to i8
  br label %232

232:                                              ; preds = %227, %226
  %233 = phi i64 [ %207, %227 ], [ %221, %226 ]
  %234 = phi i8 [ %231, %227 ], [ 0, %226 ]
  %235 = phi i32 [ %228, %227 ], [ 0, %226 ]
  %236 = load i8, ptr %193, align 1
  %237 = zext i8 %236 to i64
  %238 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %237
  %239 = load i32, ptr %238, align 4
  %240 = zext i32 %239 to i64
  %241 = and i64 %240, %206
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %232
  %244 = sext i8 %234 to i32
  %245 = or i32 %244, 1
  %246 = trunc i32 %245 to i8
  br label %247

247:                                              ; preds = %243, %232
  %248 = phi i8 [ %246, %243 ], [ %234, %232 ]
  %249 = lshr i64 %206, 1
  br label %250

250:                                              ; preds = %247
  %251 = add i64 %210, 1
  br label %205, !llvm.loop !15

252:                                              ; preds = %205
  %.lcssa56 = phi i64 [ %206, %205 ]
  %.lcssa53 = phi i64 [ %207, %205 ]
  %.lcssa50 = phi i8 [ %208, %205 ]
  %.lcssa47 = phi i32 [ %209, %205 ]
  %.lcssa44 = phi i64 [ %210, %205 ]
  %253 = getelementptr inbounds nuw i8, ptr %193, i32 1
  br label %254

254:                                              ; preds = %252
  %255 = add i64 %194, 1
  br label %192, !llvm.loop !16

256:                                              ; preds = %192
  %.lcssa5376.lcssa = phi i64 [ %.lcssa5376, %192 ]
  %.lcssa5073.lcssa = phi i8 [ %.lcssa5073, %192 ]
  %.lcssa4770.lcssa = phi i32 [ %.lcssa4770, %192 ]
  %.lcssa4468.lcssa = phi i64 [ %.lcssa4468, %192 ]
  %.lcssa5665.lcssa = phi i64 [ %.lcssa5665, %192 ]
  %.lcssa62 = phi ptr [ %193, %192 ]
  %.lcssa59 = phi i64 [ %194, %192 ]
  store i64 %.lcssa59, ptr %6, align 8
  store ptr %.lcssa62, ptr %13, align 8
  store i64 %.lcssa5665.lcssa, ptr %8, align 8
  store i64 %.lcssa4468.lcssa, ptr %5, align 8
  store i32 %.lcssa4770.lcssa, ptr %28, align 4
  store i8 %.lcssa5073.lcssa, ptr %27, align 1
  store i64 %.lcssa5376.lcssa, ptr %26, align 8
  %257 = load i32, ptr %28, align 4
  %258 = sub nsw i32 7, %257
  %259 = load i8, ptr %27, align 1
  %260 = sext i8 %259 to i32
  %261 = shl i32 %260, %258
  %262 = trunc i32 %261 to i8
  store i8 %262, ptr %27, align 1
  %263 = load i8, ptr %27, align 1
  %264 = load ptr, ptr %14, align 8
  %265 = load i64, ptr %26, align 8
  %266 = getelementptr inbounds nuw i8, ptr %264, i64 %265
  store i8 %263, ptr %266, align 1
  %267 = load i64, ptr %26, align 8
  %268 = add i64 %267, 1
  store i64 %268, ptr %26, align 8
  %269 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %269, i8 0, i64 1024, i1 false)
  %270 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 0
  store ptr %270, ptr %31, align 8
  store i64 0, ptr %6, align 8
  %.promoted84 = load i64, ptr %6, align 8
  %.promoted86 = load ptr, ptr %31, align 8
  %.promoted88 = load i32, ptr %9, align 4
  %.promoted91 = load i64, ptr %8, align 8
  %.promoted94 = load i64, ptr %5, align 8
  br label %271

271:                                              ; preds = %318, %256
  %.lcssa7996 = phi i64 [ %.lcssa7995, %318 ], [ %.promoted94, %256 ]
  %.lcssa8393 = phi i64 [ %.lcssa8392, %318 ], [ %.promoted91, %256 ]
  %.lcssa8190 = phi i32 [ %.lcssa8189, %318 ], [ %.promoted88, %256 ]
  %272 = phi ptr [ %277, %318 ], [ %.promoted86, %256 ]
  %273 = phi i64 [ %319, %318 ], [ %.promoted84, %256 ]
  %274 = icmp ult i64 %273, 256
  br i1 %274, label %275, label %320

275:                                              ; preds = %271
  %276 = trunc i64 %273 to i8
  store i8 %276, ptr %272, align 1
  %277 = getelementptr inbounds nuw i8, ptr %272, i32 1
  %278 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %273
  %279 = load i32, ptr %278, align 4
  %280 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %273
  %281 = load i8, ptr %280, align 1
  %282 = zext i8 %281 to i32
  %283 = or i32 %279, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %317

285:                                              ; preds = %275
  %286 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %273
  %287 = load i8, ptr %286, align 1
  %288 = zext i8 %287 to i32
  %289 = sub nsw i32 %288, 1
  %290 = shl nuw i32 1, %289
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %273
  %293 = load i8, ptr %292, align 1
  %294 = zext i8 %293 to i64
  %295 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %273
  br label %296

296:                                              ; preds = %313, %285
  %297 = phi i64 [ %312, %313 ], [ %291, %285 ]
  %298 = phi i32 [ %311, %313 ], [ 0, %285 ]
  %299 = phi i64 [ %314, %313 ], [ 0, %285 ]
  %300 = icmp ult i64 %299, %294
  br i1 %300, label %301, label %315

301:                                              ; preds = %296
  %302 = mul i32 %298, 2
  %303 = add i32 %302, 1
  %304 = load i32, ptr %295, align 4
  %305 = zext i32 %304 to i64
  %306 = and i64 %305, %297
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %301
  %309 = add i32 %303, 1
  br label %310

310:                                              ; preds = %308, %301
  %311 = phi i32 [ %309, %308 ], [ %303, %301 ]
  %312 = lshr i64 %297, 1
  br label %313

313:                                              ; preds = %310
  %314 = add i64 %299, 1
  br label %296, !llvm.loop !17

315:                                              ; preds = %296
  %.lcssa83 = phi i64 [ %297, %296 ]
  %.lcssa81 = phi i32 [ %298, %296 ]
  %.lcssa79 = phi i64 [ %299, %296 ]
  %316 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %273
  store i32 %.lcssa81, ptr %316, align 4
  br label %317

317:                                              ; preds = %315, %275
  %.lcssa7995 = phi i64 [ %.lcssa79, %315 ], [ %.lcssa7996, %275 ]
  %.lcssa8392 = phi i64 [ %.lcssa83, %315 ], [ %.lcssa8393, %275 ]
  %.lcssa8189 = phi i32 [ %.lcssa81, %315 ], [ %.lcssa8190, %275 ]
  br label %318

318:                                              ; preds = %317
  %319 = add i64 %273, 1
  br label %271, !llvm.loop !18

320:                                              ; preds = %271
  %.lcssa7996.lcssa = phi i64 [ %.lcssa7996, %271 ]
  %.lcssa8393.lcssa = phi i64 [ %.lcssa8393, %271 ]
  %.lcssa8190.lcssa = phi i32 [ %.lcssa8190, %271 ]
  %.lcssa87 = phi ptr [ %272, %271 ]
  %.lcssa85 = phi i64 [ %273, %271 ]
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
  br label %321

321:                                              ; preds = %354, %320
  %.lcssa98106 = phi i64 [ %.lcssa98, %354 ], [ %.promoted105, %320 ]
  %322 = phi i8 [ %330, %354 ], [ %.promoted103, %320 ]
  %323 = phi i32 [ %328, %354 ], [ %.promoted101, %320 ]
  %324 = phi i64 [ %355, %354 ], [ %.promoted99, %320 ]
  %325 = icmp ult i64 %324, 256
  br i1 %325, label %326, label %356

326:                                              ; preds = %321
  %327 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %324
  %328 = load i32, ptr %327, align 4
  %329 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %324
  %330 = load i8, ptr %329, align 1
  br label %331

331:                                              ; preds = %341, %326
  %332 = phi i64 [ %350, %341 ], [ %324, %326 ]
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %339

334:                                              ; preds = %331
  %335 = sub i64 %332, 1
  %336 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %335
  %337 = load i32, ptr %336, align 4
  %338 = icmp ugt i32 %337, %328
  br label %339

339:                                              ; preds = %334, %331
  %340 = phi i1 [ false, %331 ], [ %338, %334 ]
  br i1 %340, label %341, label %351

341:                                              ; preds = %339
  %342 = sub i64 %332, 1
  %343 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %342
  %344 = load i32, ptr %343, align 4
  %345 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %332
  store i32 %344, ptr %345, align 4
  %346 = sub i64 %332, 1
  %347 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %346
  %348 = load i8, ptr %347, align 1
  %349 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %332
  store i8 %348, ptr %349, align 1
  %350 = add i64 %332, -1
  br label %331, !llvm.loop !19

351:                                              ; preds = %339
  %.lcssa98 = phi i64 [ %332, %339 ]
  %352 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %.lcssa98
  store i32 %328, ptr %352, align 4
  %353 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %.lcssa98
  store i8 %330, ptr %353, align 1
  br label %354

354:                                              ; preds = %351
  %355 = add i64 %324, 1
  br label %321, !llvm.loop !20

356:                                              ; preds = %321
  %.lcssa98106.lcssa = phi i64 [ %.lcssa98106, %321 ]
  %.lcssa104 = phi i8 [ %322, %321 ]
  %.lcssa102 = phi i32 [ %323, %321 ]
  %.lcssa100 = phi i64 [ %324, %321 ]
  store i64 %.lcssa100, ptr %5, align 8
  store i32 %.lcssa102, ptr %10, align 4
  store i8 %.lcssa104, ptr %11, align 1
  store i64 %.lcssa98106.lcssa, ptr %6, align 8
  store i64 0, ptr %6, align 8
  %.promoted107 = load i64, ptr %6, align 8
  br label %357

357:                                              ; preds = %363, %356
  %358 = phi i64 [ %364, %363 ], [ %.promoted107, %356 ]
  %359 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %358
  %360 = load i32, ptr %359, align 4
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %365

362:                                              ; preds = %357
  br label %363

363:                                              ; preds = %362
  %364 = add i64 %358, 1
  br label %357, !llvm.loop !21

365:                                              ; preds = %357
  %.lcssa108 = phi i64 [ %358, %357 ]
  store i64 %.lcssa108, ptr %6, align 8
  store i32 0, ptr %9, align 4
  %366 = load i64, ptr %6, align 8
  store i64 %366, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  %367 = load ptr, ptr %14, align 8
  store ptr %367, ptr %12, align 8
  %368 = load ptr, ptr %3, align 8
  store ptr %368, ptr %13, align 8
  %369 = load i64, ptr %4, align 8
  %370 = load i64, ptr %6, align 8
  %.promoted111 = load i64, ptr %7, align 8
  %.promoted113 = load i32, ptr %9, align 4
  %.promoted115 = load ptr, ptr %12, align 8
  %.promoted117 = load i64, ptr %8, align 8
  %.promoted119 = load i64, ptr %5, align 8
  %.promoted122 = load ptr, ptr %13, align 8
  br label %371

371:                                              ; preds = %414, %365
  %372 = phi ptr [ %406, %414 ], [ %.promoted122, %365 ]
  %.lcssa110120 = phi i64 [ %.lcssa110121, %414 ], [ %.promoted119, %365 ]
  %373 = phi i64 [ %415, %414 ], [ %.promoted117, %365 ]
  %374 = phi ptr [ %416, %414 ], [ %.promoted115, %365 ]
  %375 = phi i32 [ %407, %414 ], [ %.promoted113, %365 ]
  %376 = phi i64 [ %408, %414 ], [ %.promoted111, %365 ]
  %377 = icmp ult i64 %376, %369
  br i1 %377, label %378, label %417

378:                                              ; preds = %371
  %379 = mul i32 %375, 2
  %380 = add i32 %379, 1
  %381 = load i8, ptr %374, align 1
  %382 = zext i8 %381 to i64
  %383 = and i64 %382, %373
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %387

385:                                              ; preds = %378
  %386 = add i32 %380, 1
  br label %387

387:                                              ; preds = %385, %378
  %388 = phi i32 [ %386, %385 ], [ %380, %378 ]
  br label %389

389:                                              ; preds = %394, %387
  %390 = phi i64 [ %395, %394 ], [ %.lcssa110120, %387 ]
  %391 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %390
  %392 = load i32, ptr %391, align 4
  %393 = icmp ult i32 %392, %388
  br i1 %393, label %394, label %396

394:                                              ; preds = %389
  %395 = add i64 %390, 1
  br label %389, !llvm.loop !22

396:                                              ; preds = %389
  %.lcssa110 = phi i64 [ %390, %389 ]
  %397 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %.lcssa110
  %398 = load i32, ptr %397, align 4
  %399 = icmp eq i32 %388, %398
  br i1 %399, label %400, label %405

400:                                              ; preds = %396
  %401 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %.lcssa110
  %402 = load i8, ptr %401, align 1
  store i8 %402, ptr %372, align 1
  %403 = getelementptr inbounds nuw i8, ptr %372, i32 1
  %404 = add i64 %376, 1
  br label %405

405:                                              ; preds = %400, %396
  %406 = phi ptr [ %403, %400 ], [ %372, %396 ]
  %.lcssa110121 = phi i64 [ %370, %400 ], [ %.lcssa110, %396 ]
  %407 = phi i32 [ 0, %400 ], [ %388, %396 ]
  %408 = phi i64 [ %404, %400 ], [ %376, %396 ]
  %409 = icmp ugt i64 %373, 1
  br i1 %409, label %410, label %412

410:                                              ; preds = %405
  %411 = lshr i64 %373, 1
  br label %414

412:                                              ; preds = %405
  %413 = getelementptr inbounds nuw i8, ptr %374, i32 1
  br label %414

414:                                              ; preds = %412, %410
  %415 = phi i64 [ 128, %412 ], [ %411, %410 ]
  %416 = phi ptr [ %413, %412 ], [ %374, %410 ]
  br label %371, !llvm.loop !23

417:                                              ; preds = %371
  %.lcssa123 = phi ptr [ %372, %371 ]
  %.lcssa110120.lcssa = phi i64 [ %.lcssa110120, %371 ]
  %.lcssa118 = phi i64 [ %373, %371 ]
  %.lcssa116 = phi ptr [ %374, %371 ]
  %.lcssa114 = phi i32 [ %375, %371 ]
  %.lcssa112 = phi i64 [ %376, %371 ]
  store i64 %.lcssa112, ptr %7, align 8
  store i32 %.lcssa114, ptr %9, align 4
  store ptr %.lcssa116, ptr %12, align 8
  store i64 %.lcssa118, ptr %8, align 8
  store i64 %.lcssa110120.lcssa, ptr %5, align 8
  store ptr %.lcssa123, ptr %13, align 8
  %418 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %418)
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
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  store i32 1, ptr %6, align 4
  %13 = load i32, ptr %4, align 4
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds nuw ptr, ptr %14, i64 1
  %.promoted = load i32, ptr %6, align 4
  br label %16

16:                                               ; preds = %25, %12
  %17 = phi i32 [ %26, %25 ], [ %.promoted, %12 ]
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
  br label %27

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %24
  %26 = add nsw i32 %17, 1
  br label %16, !llvm.loop !25

.loopexit:                                        ; preds = %16
  %.lcssa = phi i32 [ %17, %16 ]
  store i32 %.lcssa, ptr %6, align 4
  br label %27

27:                                               ; preds = %.loopexit, %23
  br label %28

28:                                               ; preds = %27, %2
  %29 = call ptr @generate_test_data(i64 noundef 10000000)
  store ptr %29, ptr %8, align 8
  store i32 0, ptr %6, align 4
  %30 = load ptr, ptr %8, align 8
  %.promoted2 = load i32, ptr %6, align 4
  br label %31

31:                                               ; preds = %35, %28
  %32 = phi i32 [ %36, %35 ], [ %.promoted2, %28 ]
  %33 = icmp slt i32 %32, 30
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  call void @compdecomp(ptr noundef %30, i64 noundef 10000000)
  br label %35

35:                                               ; preds = %34
  %36 = add nsw i32 %32, 1
  br label %31, !llvm.loop !26

37:                                               ; preds = %31
  %.lcssa3 = phi i32 [ %32, %31 ]
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
