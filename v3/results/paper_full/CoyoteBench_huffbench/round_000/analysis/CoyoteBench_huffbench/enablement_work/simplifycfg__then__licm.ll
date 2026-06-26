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
  %71 = phi i64 [ %60, %63 ], [ %69, %67 ]
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

79:                                               ; preds = %91, %73
  %80 = phi i64 [ %93, %91 ], [ %.promoted7, %73 ]
  %81 = icmp ugt i64 %80, 0
  br i1 %81, label %91, label %.preheader

.preheader:                                       ; preds = %79
  %.lcssa8 = phi i64 [ %80, %79 ]
  store i64 %.lcssa8, ptr %5, align 8
  %82 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %83 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %84 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  %85 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %86 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %87 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %88 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %89 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  %90 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %.promoted9 = load i64, ptr %7, align 8
  %.promoted11 = load i64, ptr %20, align 8
  br label %94

91:                                               ; preds = %79
  %92 = trunc i64 %80 to i32
  call void @heap_adjust(ptr noundef %75, ptr noundef %76, i32 noundef %78, i32 noundef %92)
  %93 = add i64 %80, -1
  br label %79, !llvm.loop !11

94:                                               ; preds = %.preheader, %98
  %95 = phi i64 [ %.promoted11, %.preheader ], [ %100, %98 ]
  %96 = phi i64 [ %.promoted9, %.preheader ], [ %99, %98 ]
  %97 = icmp ugt i64 %96, 1
  br i1 %97, label %98, label %121

98:                                               ; preds = %94
  %99 = add i64 %96, -1
  %100 = load i64, ptr %82, align 16
  %101 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %99
  %102 = load i64, ptr %101, align 8
  store i64 %102, ptr %83, align 16
  %103 = trunc i64 %99 to i32
  call void @heap_adjust(ptr noundef %84, ptr noundef %85, i32 noundef %103, i32 noundef 1)
  %104 = load i64, ptr %86, align 16
  %105 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %104
  %106 = load i64, ptr %105, align 8
  %107 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %100
  %108 = load i64, ptr %107, align 8
  %109 = add i64 %106, %108
  %110 = add i64 256, %99
  %111 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %110
  store i64 %109, ptr %111, align 8
  %112 = add i64 256, %99
  %113 = trunc i64 %112 to i32
  %114 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %100
  store i32 %113, ptr %114, align 4
  %115 = sub i64 -256, %99
  %116 = trunc i64 %115 to i32
  %117 = load i64, ptr %87, align 16
  %118 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %117
  store i32 %116, ptr %118, align 4
  %119 = add i64 256, %99
  store i64 %119, ptr %88, align 16
  %120 = trunc i64 %99 to i32
  call void @heap_adjust(ptr noundef %89, ptr noundef %90, i32 noundef %120, i32 noundef 1)
  br label %94, !llvm.loop !12

121:                                              ; preds = %94
  %.lcssa12 = phi i64 [ %95, %94 ]
  %.lcssa10 = phi i64 [ %96, %94 ]
  store i64 %.lcssa10, ptr %7, align 8
  store i64 %.lcssa12, ptr %20, align 8
  %122 = load i64, ptr %7, align 8
  %123 = add i64 256, %122
  %124 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %123
  store i32 0, ptr %124, align 4
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
  br label %125

125:                                              ; preds = %167, %121
  %.lcssa2041 = phi i64 [ %.lcssa2040, %167 ], [ %.promoted39, %121 ]
  %.lcssa1838 = phi i64 [ %.lcssa1836, %167 ], [ %.promoted35, %121 ]
  %.lcssa1434 = phi i32 [ %.lcssa1433, %167 ], [ %.promoted32, %121 ]
  %.lcssa1831 = phi i64 [ %.lcssa1830, %167 ], [ %.promoted29, %121 ]
  %.lcssa1628 = phi i64 [ %.lcssa1627, %167 ], [ %.promoted26, %121 ]
  %.lcssa2025 = phi i64 [ %.lcssa2024, %167 ], [ %.promoted23, %121 ]
  %126 = phi i64 [ %168, %167 ], [ %.promoted21, %121 ]
  %127 = icmp ult i64 %126, 256
  br i1 %127, label %128, label %169

128:                                              ; preds = %125
  %129 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %126
  %130 = load i64, ptr %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %126
  store i32 0, ptr %133, align 4
  %134 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %126
  store i8 0, ptr %134, align 1
  br label %167

135:                                              ; preds = %128
  %136 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %126
  %137 = load i32, ptr %136, align 4
  br label %138

138:                                              ; preds = %149, %135
  %139 = phi i64 [ %156, %149 ], [ 0, %135 ]
  %140 = phi i64 [ %150, %149 ], [ 0, %135 ]
  %141 = phi i64 [ %155, %149 ], [ 1, %135 ]
  %142 = phi i32 [ %154, %149 ], [ %137, %135 ]
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %157

144:                                              ; preds = %138
  %145 = icmp slt i32 %142, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %144
  %147 = add i64 %140, %141
  %148 = sub nsw i32 0, %142
  br label %149

149:                                              ; preds = %146, %144
  %150 = phi i64 [ %147, %146 ], [ %140, %144 ]
  %151 = phi i32 [ %148, %146 ], [ %142, %144 ]
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [512 x i32], ptr %17, i64 0, i64 %152
  %154 = load i32, ptr %153, align 4
  %155 = shl i64 %141, 1
  %156 = add i64 %139, 1
  br label %138, !llvm.loop !13

157:                                              ; preds = %138
  %.lcssa20 = phi i64 [ %139, %138 ]
  %.lcssa18 = phi i64 [ %140, %138 ]
  %.lcssa16 = phi i64 [ %141, %138 ]
  %.lcssa14 = phi i32 [ %142, %138 ]
  %158 = trunc i64 %.lcssa18 to i32
  %159 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %126
  store i32 %158, ptr %159, align 4
  %160 = trunc i64 %.lcssa20 to i8
  %161 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %126
  store i8 %160, ptr %161, align 1
  %162 = icmp ugt i64 %.lcssa18, %.lcssa1838
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  br label %164

164:                                              ; preds = %163, %157
  %.lcssa1837 = phi i64 [ %.lcssa18, %163 ], [ %.lcssa1838, %157 ]
  %165 = icmp ugt i64 %.lcssa20, %.lcssa2041
  br i1 %165, label %166, label %167

166:                                              ; preds = %164
  br label %167

167:                                              ; preds = %132, %166, %164
  %.lcssa2040 = phi i64 [ %.lcssa2041, %132 ], [ %.lcssa20, %166 ], [ %.lcssa2041, %164 ]
  %.lcssa1836 = phi i64 [ %.lcssa1838, %132 ], [ %.lcssa1837, %166 ], [ %.lcssa1837, %164 ]
  %.lcssa1433 = phi i32 [ %.lcssa1434, %132 ], [ %.lcssa14, %166 ], [ %.lcssa14, %164 ]
  %.lcssa1830 = phi i64 [ %.lcssa1831, %132 ], [ %.lcssa18, %166 ], [ %.lcssa18, %164 ]
  %.lcssa1627 = phi i64 [ %.lcssa1628, %132 ], [ %.lcssa16, %166 ], [ %.lcssa16, %164 ]
  %.lcssa2024 = phi i64 [ %.lcssa2025, %132 ], [ %.lcssa20, %166 ], [ %.lcssa20, %164 ]
  %168 = add i64 %126, 1
  br label %125, !llvm.loop !14

169:                                              ; preds = %125
  %.lcssa2041.lcssa = phi i64 [ %.lcssa2041, %125 ]
  %.lcssa1838.lcssa = phi i64 [ %.lcssa1838, %125 ]
  %.lcssa1434.lcssa = phi i32 [ %.lcssa1434, %125 ]
  %.lcssa1831.lcssa = phi i64 [ %.lcssa1831, %125 ]
  %.lcssa1628.lcssa = phi i64 [ %.lcssa1628, %125 ]
  %.lcssa2025.lcssa = phi i64 [ %.lcssa2025, %125 ]
  %.lcssa22 = phi i64 [ %126, %125 ]
  store i64 %.lcssa22, ptr %21, align 8
  store i64 %.lcssa2025.lcssa, ptr %5, align 8
  store i64 %.lcssa1628.lcssa, ptr %6, align 8
  store i64 %.lcssa1831.lcssa, ptr %22, align 8
  store i32 %.lcssa1434.lcssa, ptr %25, align 4
  store i64 %.lcssa1838.lcssa, ptr %23, align 8
  store i64 %.lcssa2041.lcssa, ptr %24, align 8
  %170 = load i64, ptr %24, align 8
  %171 = icmp ugt i64 %170, 32
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = call ptr @__acrt_iob_func(i32 noundef 2)
  %174 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %173, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

175:                                              ; preds = %169
  store i64 0, ptr %26, align 8
  store i8 0, ptr %27, align 1
  store i32 -1, ptr %28, align 4
  %176 = load ptr, ptr %3, align 8
  store ptr %176, ptr %13, align 8
  %177 = load i64, ptr %23, align 8
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = call ptr @__acrt_iob_func(i32 noundef 2)
  %181 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %180, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

182:                                              ; preds = %175
  store i64 0, ptr %6, align 8
  %183 = load i64, ptr %4, align 8
  %184 = load ptr, ptr %14, align 8
  %185 = load i64, ptr %4, align 8
  %.promoted57 = load i64, ptr %6, align 8
  %.promoted60 = load ptr, ptr %13, align 8
  %.promoted63 = load i64, ptr %8, align 8
  %.promoted66 = load i64, ptr %5, align 8
  %.promoted68 = load i32, ptr %28, align 4
  %.promoted71 = load i8, ptr %27, align 1
  %.promoted74 = load i64, ptr %26, align 8
  br label %186

186:                                              ; preds = %245, %182
  %.lcssa5275 = phi i64 [ %.lcssa52, %245 ], [ %.promoted74, %182 ]
  %.lcssa4972 = phi i8 [ %.lcssa49, %245 ], [ %.promoted71, %182 ]
  %.lcssa4669 = phi i32 [ %.lcssa46, %245 ], [ %.promoted68, %182 ]
  %.lcssa4367 = phi i64 [ %.lcssa43, %245 ], [ %.promoted66, %182 ]
  %.lcssa5564 = phi i64 [ %.lcssa55, %245 ], [ %.promoted63, %182 ]
  %187 = phi ptr [ %246, %245 ], [ %.promoted60, %182 ]
  %188 = phi i64 [ %247, %245 ], [ %.promoted57, %182 ]
  %189 = icmp ult i64 %188, %183
  br i1 %189, label %190, label %248

190:                                              ; preds = %186
  %191 = load i8, ptr %187, align 1
  %192 = zext i8 %191 to i64
  %193 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %192
  %194 = load i8, ptr %193, align 1
  %195 = zext i8 %194 to i32
  %196 = sub nsw i32 %195, 1
  %197 = shl i32 1, %196
  %198 = sext i32 %197 to i64
  br label %199

199:                                              ; preds = %241, %190
  %200 = phi i64 [ %243, %241 ], [ %198, %190 ]
  %201 = phi i64 [ %227, %241 ], [ %.lcssa5275, %190 ]
  %202 = phi i8 [ %242, %241 ], [ %.lcssa4972, %190 ]
  %203 = phi i32 [ %229, %241 ], [ %.lcssa4669, %190 ]
  %204 = phi i64 [ %244, %241 ], [ 0, %190 ]
  %205 = load i8, ptr %187, align 1
  %206 = zext i8 %205 to i64
  %207 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %206
  %208 = load i8, ptr %207, align 1
  %209 = zext i8 %208 to i64
  %210 = icmp ult i64 %204, %209
  br i1 %210, label %211, label %245

211:                                              ; preds = %199
  %212 = icmp eq i32 %203, 7
  br i1 %212, label %213, label %221

213:                                              ; preds = %211
  %214 = getelementptr inbounds nuw i8, ptr %184, i64 %201
  store i8 %202, ptr %214, align 1
  %215 = add i64 %201, 1
  %216 = icmp eq i64 %215, %185
  br i1 %216, label %217, label %220

217:                                              ; preds = %213
  %.lcssa5275.lcssa76 = phi i64 [ %.lcssa5275, %213 ]
  %.lcssa4972.lcssa73 = phi i8 [ %.lcssa4972, %213 ]
  %.lcssa4669.lcssa70 = phi i32 [ %.lcssa4669, %213 ]
  %.lcssa65 = phi i64 [ %198, %213 ]
  %.lcssa62 = phi ptr [ %187, %213 ]
  %.lcssa59 = phi i64 [ %188, %213 ]
  %.lcssa56 = phi i64 [ %200, %213 ]
  %.lcssa53 = phi i64 [ %215, %213 ]
  %.lcssa50 = phi i8 [ %202, %213 ]
  %.lcssa47 = phi i32 [ %203, %213 ]
  %.lcssa44 = phi i64 [ %204, %213 ]
  store i64 %.lcssa59, ptr %6, align 8
  store ptr %.lcssa62, ptr %13, align 8
  store i64 %.lcssa65, ptr %8, align 8
  store i64 0, ptr %5, align 8
  store i32 %.lcssa4669.lcssa70, ptr %28, align 4
  store i8 %.lcssa4972.lcssa73, ptr %27, align 1
  store i64 %.lcssa5275.lcssa76, ptr %26, align 8
  store i64 %.lcssa44, ptr %5, align 8
  store i32 %.lcssa47, ptr %28, align 4
  store i8 %.lcssa50, ptr %27, align 1
  store i64 %.lcssa53, ptr %26, align 8
  store i64 %.lcssa56, ptr %8, align 8
  %218 = call ptr @__acrt_iob_func(i32 noundef 2)
  %219 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %218, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

220:                                              ; preds = %213
  br label %226

221:                                              ; preds = %211
  %222 = add nsw i32 %203, 1
  %223 = sext i8 %202 to i32
  %224 = shl i32 %223, 1
  %225 = trunc i32 %224 to i8
  br label %226

226:                                              ; preds = %221, %220
  %227 = phi i64 [ %201, %221 ], [ %215, %220 ]
  %228 = phi i8 [ %225, %221 ], [ 0, %220 ]
  %229 = phi i32 [ %222, %221 ], [ 0, %220 ]
  %230 = load i8, ptr %187, align 1
  %231 = zext i8 %230 to i64
  %232 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %231
  %233 = load i32, ptr %232, align 4
  %234 = zext i32 %233 to i64
  %235 = and i64 %234, %200
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %226
  %238 = sext i8 %228 to i32
  %239 = or i32 %238, 1
  %240 = trunc i32 %239 to i8
  br label %241

241:                                              ; preds = %237, %226
  %242 = phi i8 [ %240, %237 ], [ %228, %226 ]
  %243 = lshr i64 %200, 1
  %244 = add i64 %204, 1
  br label %199, !llvm.loop !15

245:                                              ; preds = %199
  %.lcssa55 = phi i64 [ %200, %199 ]
  %.lcssa52 = phi i64 [ %201, %199 ]
  %.lcssa49 = phi i8 [ %202, %199 ]
  %.lcssa46 = phi i32 [ %203, %199 ]
  %.lcssa43 = phi i64 [ %204, %199 ]
  %246 = getelementptr inbounds nuw i8, ptr %187, i32 1
  %247 = add i64 %188, 1
  br label %186, !llvm.loop !16

248:                                              ; preds = %186
  %.lcssa5275.lcssa = phi i64 [ %.lcssa5275, %186 ]
  %.lcssa4972.lcssa = phi i8 [ %.lcssa4972, %186 ]
  %.lcssa4669.lcssa = phi i32 [ %.lcssa4669, %186 ]
  %.lcssa4367.lcssa = phi i64 [ %.lcssa4367, %186 ]
  %.lcssa5564.lcssa = phi i64 [ %.lcssa5564, %186 ]
  %.lcssa61 = phi ptr [ %187, %186 ]
  %.lcssa58 = phi i64 [ %188, %186 ]
  store i64 %.lcssa58, ptr %6, align 8
  store ptr %.lcssa61, ptr %13, align 8
  store i64 %.lcssa5564.lcssa, ptr %8, align 8
  store i64 %.lcssa4367.lcssa, ptr %5, align 8
  store i32 %.lcssa4669.lcssa, ptr %28, align 4
  store i8 %.lcssa4972.lcssa, ptr %27, align 1
  store i64 %.lcssa5275.lcssa, ptr %26, align 8
  %249 = load i32, ptr %28, align 4
  %250 = sub nsw i32 7, %249
  %251 = load i8, ptr %27, align 1
  %252 = sext i8 %251 to i32
  %253 = shl i32 %252, %250
  %254 = trunc i32 %253 to i8
  store i8 %254, ptr %27, align 1
  %255 = load i8, ptr %27, align 1
  %256 = load ptr, ptr %14, align 8
  %257 = load i64, ptr %26, align 8
  %258 = getelementptr inbounds nuw i8, ptr %256, i64 %257
  store i8 %255, ptr %258, align 1
  %259 = load i64, ptr %26, align 8
  %260 = add i64 %259, 1
  store i64 %260, ptr %26, align 8
  %261 = getelementptr inbounds [256 x i32], ptr %29, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %261, i8 0, i64 1024, i1 false)
  %262 = getelementptr inbounds [256 x i8], ptr %30, i64 0, i64 0
  store ptr %262, ptr %31, align 8
  store i64 0, ptr %6, align 8
  %.promoted83 = load i64, ptr %6, align 8
  %.promoted85 = load ptr, ptr %31, align 8
  %.promoted87 = load i32, ptr %9, align 4
  %.promoted90 = load i64, ptr %8, align 8
  %.promoted93 = load i64, ptr %5, align 8
  br label %263

263:                                              ; preds = %308, %248
  %.lcssa7895 = phi i64 [ %.lcssa7894, %308 ], [ %.promoted93, %248 ]
  %.lcssa8292 = phi i64 [ %.lcssa8291, %308 ], [ %.promoted90, %248 ]
  %.lcssa8089 = phi i32 [ %.lcssa8088, %308 ], [ %.promoted87, %248 ]
  %264 = phi ptr [ %269, %308 ], [ %.promoted85, %248 ]
  %265 = phi i64 [ %309, %308 ], [ %.promoted83, %248 ]
  %266 = icmp ult i64 %265, 256
  br i1 %266, label %267, label %310

267:                                              ; preds = %263
  %268 = trunc i64 %265 to i8
  store i8 %268, ptr %264, align 1
  %269 = getelementptr inbounds nuw i8, ptr %264, i32 1
  %270 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %265
  %271 = load i32, ptr %270, align 4
  %272 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %265
  %273 = load i8, ptr %272, align 1
  %274 = zext i8 %273 to i32
  %275 = or i32 %271, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %308

277:                                              ; preds = %267
  %278 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %265
  %279 = load i8, ptr %278, align 1
  %280 = zext i8 %279 to i32
  %281 = sub nsw i32 %280, 1
  %282 = shl i32 1, %281
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %265
  %285 = load i8, ptr %284, align 1
  %286 = zext i8 %285 to i64
  %287 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %265
  br label %288

288:                                              ; preds = %302, %277
  %289 = phi i64 [ %304, %302 ], [ %283, %277 ]
  %290 = phi i32 [ %303, %302 ], [ 0, %277 ]
  %291 = phi i64 [ %305, %302 ], [ 0, %277 ]
  %292 = icmp ult i64 %291, %286
  br i1 %292, label %293, label %306

293:                                              ; preds = %288
  %294 = mul i32 %290, 2
  %295 = add i32 %294, 1
  %296 = load i32, ptr %287, align 4
  %297 = zext i32 %296 to i64
  %298 = and i64 %297, %289
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %302

300:                                              ; preds = %293
  %301 = add i32 %295, 1
  br label %302

302:                                              ; preds = %300, %293
  %303 = phi i32 [ %301, %300 ], [ %295, %293 ]
  %304 = lshr i64 %289, 1
  %305 = add i64 %291, 1
  br label %288, !llvm.loop !17

306:                                              ; preds = %288
  %.lcssa82 = phi i64 [ %289, %288 ]
  %.lcssa80 = phi i32 [ %290, %288 ]
  %.lcssa78 = phi i64 [ %291, %288 ]
  %307 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %265
  store i32 %.lcssa80, ptr %307, align 4
  br label %308

308:                                              ; preds = %267, %306
  %.lcssa7894 = phi i64 [ %.lcssa7895, %267 ], [ %.lcssa78, %306 ]
  %.lcssa8291 = phi i64 [ %.lcssa8292, %267 ], [ %.lcssa82, %306 ]
  %.lcssa8088 = phi i32 [ %.lcssa8089, %267 ], [ %.lcssa80, %306 ]
  %309 = add i64 %265, 1
  br label %263, !llvm.loop !18

310:                                              ; preds = %263
  %.lcssa7895.lcssa = phi i64 [ %.lcssa7895, %263 ]
  %.lcssa8292.lcssa = phi i64 [ %.lcssa8292, %263 ]
  %.lcssa8089.lcssa = phi i32 [ %.lcssa8089, %263 ]
  %.lcssa86 = phi ptr [ %264, %263 ]
  %.lcssa84 = phi i64 [ %265, %263 ]
  store i64 %.lcssa84, ptr %6, align 8
  store ptr %.lcssa86, ptr %31, align 8
  store i32 %.lcssa8089.lcssa, ptr %9, align 4
  store i64 %.lcssa8292.lcssa, ptr %8, align 8
  store i64 %.lcssa7895.lcssa, ptr %5, align 8
  store i64 1, ptr %5, align 8
  %.promoted98 = load i64, ptr %5, align 8
  %.promoted100 = load i32, ptr %10, align 4
  %.promoted102 = load i8, ptr %11, align 1
  %.promoted104 = load i64, ptr %6, align 8
  br label %311

311:                                              ; preds = %.critedge, %310
  %.lcssa97105 = phi i64 [ %.lcssa97, %.critedge ], [ %.promoted104, %310 ]
  %312 = phi i8 [ %320, %.critedge ], [ %.promoted102, %310 ]
  %313 = phi i32 [ %318, %.critedge ], [ %.promoted100, %310 ]
  %314 = phi i64 [ %341, %.critedge ], [ %.promoted98, %310 ]
  %315 = icmp ult i64 %314, 256
  br i1 %315, label %316, label %342

316:                                              ; preds = %311
  %317 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %314
  %318 = load i32, ptr %317, align 4
  %319 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %314
  %320 = load i8, ptr %319, align 1
  br label %321

321:                                              ; preds = %329, %316
  %322 = phi i64 [ %338, %329 ], [ %314, %316 ]
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %.critedge

324:                                              ; preds = %321
  %325 = sub i64 %322, 1
  %326 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %325
  %327 = load i32, ptr %326, align 4
  %328 = icmp ugt i32 %327, %318
  br i1 %328, label %329, label %.critedge

329:                                              ; preds = %324
  %330 = sub i64 %322, 1
  %331 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %330
  %332 = load i32, ptr %331, align 4
  %333 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %322
  store i32 %332, ptr %333, align 4
  %334 = sub i64 %322, 1
  %335 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %334
  %336 = load i8, ptr %335, align 1
  %337 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %322
  store i8 %336, ptr %337, align 1
  %338 = add i64 %322, -1
  br label %321, !llvm.loop !19

.critedge:                                        ; preds = %321, %324
  %.lcssa97 = phi i64 [ %322, %321 ], [ %322, %324 ]
  %339 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %.lcssa97
  store i32 %318, ptr %339, align 4
  %340 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %.lcssa97
  store i8 %320, ptr %340, align 1
  %341 = add i64 %314, 1
  br label %311, !llvm.loop !20

342:                                              ; preds = %311
  %.lcssa97105.lcssa = phi i64 [ %.lcssa97105, %311 ]
  %.lcssa103 = phi i8 [ %312, %311 ]
  %.lcssa101 = phi i32 [ %313, %311 ]
  %.lcssa99 = phi i64 [ %314, %311 ]
  store i64 %.lcssa99, ptr %5, align 8
  store i32 %.lcssa101, ptr %10, align 4
  store i8 %.lcssa103, ptr %11, align 1
  store i64 %.lcssa97105.lcssa, ptr %6, align 8
  store i64 0, ptr %6, align 8
  %.promoted106 = load i64, ptr %6, align 8
  br label %343

343:                                              ; preds = %348, %342
  %344 = phi i64 [ %349, %348 ], [ %.promoted106, %342 ]
  %345 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %344
  %346 = load i32, ptr %345, align 4
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %350

348:                                              ; preds = %343
  %349 = add i64 %344, 1
  br label %343, !llvm.loop !21

350:                                              ; preds = %343
  %.lcssa107 = phi i64 [ %344, %343 ]
  store i64 %.lcssa107, ptr %6, align 8
  store i32 0, ptr %9, align 4
  %351 = load i64, ptr %6, align 8
  store i64 %351, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  %352 = load ptr, ptr %14, align 8
  store ptr %352, ptr %12, align 8
  %353 = load ptr, ptr %3, align 8
  store ptr %353, ptr %13, align 8
  %354 = load i64, ptr %4, align 8
  %355 = load i64, ptr %6, align 8
  %.promoted110 = load i64, ptr %7, align 8
  %.promoted112 = load i32, ptr %9, align 4
  %.promoted114 = load ptr, ptr %12, align 8
  %.promoted116 = load i64, ptr %8, align 8
  %.promoted118 = load i64, ptr %5, align 8
  %.promoted121 = load ptr, ptr %13, align 8
  br label %356

356:                                              ; preds = %399, %350
  %357 = phi ptr [ %391, %399 ], [ %.promoted121, %350 ]
  %.lcssa109119 = phi i64 [ %.lcssa109120, %399 ], [ %.promoted118, %350 ]
  %358 = phi i64 [ %400, %399 ], [ %.promoted116, %350 ]
  %359 = phi ptr [ %401, %399 ], [ %.promoted114, %350 ]
  %360 = phi i32 [ %392, %399 ], [ %.promoted112, %350 ]
  %361 = phi i64 [ %393, %399 ], [ %.promoted110, %350 ]
  %362 = icmp ult i64 %361, %354
  br i1 %362, label %363, label %402

363:                                              ; preds = %356
  %364 = mul i32 %360, 2
  %365 = add i32 %364, 1
  %366 = load i8, ptr %359, align 1
  %367 = zext i8 %366 to i64
  %368 = and i64 %367, %358
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %372

370:                                              ; preds = %363
  %371 = add i32 %365, 1
  br label %372

372:                                              ; preds = %370, %363
  %373 = phi i32 [ %371, %370 ], [ %365, %363 ]
  br label %374

374:                                              ; preds = %379, %372
  %375 = phi i64 [ %380, %379 ], [ %.lcssa109119, %372 ]
  %376 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %375
  %377 = load i32, ptr %376, align 4
  %378 = icmp ult i32 %377, %373
  br i1 %378, label %379, label %381

379:                                              ; preds = %374
  %380 = add i64 %375, 1
  br label %374, !llvm.loop !22

381:                                              ; preds = %374
  %.lcssa109 = phi i64 [ %375, %374 ]
  %382 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %.lcssa109
  %383 = load i32, ptr %382, align 4
  %384 = icmp eq i32 %373, %383
  br i1 %384, label %385, label %390

385:                                              ; preds = %381
  %386 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %.lcssa109
  %387 = load i8, ptr %386, align 1
  store i8 %387, ptr %357, align 1
  %388 = getelementptr inbounds nuw i8, ptr %357, i32 1
  %389 = add i64 %361, 1
  br label %390

390:                                              ; preds = %385, %381
  %391 = phi ptr [ %388, %385 ], [ %357, %381 ]
  %.lcssa109120 = phi i64 [ %355, %385 ], [ %.lcssa109, %381 ]
  %392 = phi i32 [ 0, %385 ], [ %373, %381 ]
  %393 = phi i64 [ %389, %385 ], [ %361, %381 ]
  %394 = icmp ugt i64 %358, 1
  br i1 %394, label %395, label %397

395:                                              ; preds = %390
  %396 = lshr i64 %358, 1
  br label %399

397:                                              ; preds = %390
  %398 = getelementptr inbounds nuw i8, ptr %359, i32 1
  br label %399

399:                                              ; preds = %397, %395
  %400 = phi i64 [ 128, %397 ], [ %396, %395 ]
  %401 = phi ptr [ %398, %397 ], [ %359, %395 ]
  br label %356, !llvm.loop !23

402:                                              ; preds = %356
  %.lcssa122 = phi ptr [ %357, %356 ]
  %.lcssa109119.lcssa = phi i64 [ %.lcssa109119, %356 ]
  %.lcssa117 = phi i64 [ %358, %356 ]
  %.lcssa115 = phi ptr [ %359, %356 ]
  %.lcssa113 = phi i32 [ %360, %356 ]
  %.lcssa111 = phi i64 [ %361, %356 ]
  store i64 %.lcssa111, ptr %7, align 8
  store i32 %.lcssa113, ptr %9, align 4
  store ptr %.lcssa115, ptr %12, align 8
  store i64 %.lcssa117, ptr %8, align 8
  store i64 %.lcssa109119.lcssa, ptr %5, align 8
  store ptr %.lcssa122, ptr %13, align 8
  %403 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %403)
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
  %.promoted1 = load i32, ptr %9, align 4
  br label %33

33:                                               ; preds = %65, %4
  %34 = phi i32 [ %56, %65 ], [ %.promoted1, %4 ]
  %35 = phi i32 [ %56, %65 ], [ %.promoted, %4 ]
  %36 = icmp sle i32 %35, %19
  br i1 %36, label %37, label %73

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
  br i1 %64, label %73, label %65

65:                                               ; preds = %55
  %66 = sub nsw i32 %56, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, ptr %31, i64 %67
  %69 = load i64, ptr %68, align 8
  %70 = sub nsw i32 %35, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, ptr %32, i64 %71
  store i64 %69, ptr %72, align 8
  br label %33, !llvm.loop !24

73:                                               ; preds = %55, %33
  %74 = phi i32 [ %56, %55 ], [ %34, %33 ]
  %.lcssa = phi i32 [ %35, %55 ], [ %35, %33 ]
  store i32 %.lcssa, ptr %8, align 4
  store i32 %74, ptr %9, align 4
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

26:                                               ; preds = %.loopexit, %23, %2
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
