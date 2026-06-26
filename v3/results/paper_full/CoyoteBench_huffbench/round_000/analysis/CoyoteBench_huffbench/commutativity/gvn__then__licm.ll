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
  %7 = call ptr @malloc(i64 noundef %0) #6
  store ptr %7, ptr %4, align 8
  store ptr %7, ptr %5, align 8
  store i32 0, ptr %6, align 4
  %.promoted = load ptr, ptr %5, align 1
  %.promoted1 = load i32, ptr %6, align 1
  br label %8

8:                                                ; preds = %15, %1
  %9 = phi i32 [ %20, %15 ], [ %.promoted1, %1 ]
  %10 = phi ptr [ %19, %15 ], [ %.promoted, %1 ]
  %11 = phi ptr [ %19, %15 ], [ %7, %1 ]
  %12 = phi i32 [ %20, %15 ], [ 0, %1 ]
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %13, %0
  br i1 %14, label %15, label %21

15:                                               ; preds = %8
  %16 = call i64 @random4()
  %17 = getelementptr inbounds nuw i8, ptr @.str, i64 %16
  %18 = load i8, ptr %17, align 1
  store i8 %18, ptr %11, align 1
  %19 = getelementptr inbounds nuw i8, ptr %11, i32 1
  %20 = add nsw i32 %12, 1
  br label %8, !llvm.loop !7

21:                                               ; preds = %8
  %.lcssa2 = phi i32 [ %9, %8 ]
  %.lcssa = phi ptr [ %10, %8 ]
  store ptr %.lcssa, ptr %5, align 1
  store i32 %.lcssa2, ptr %6, align 1
  ret ptr %7
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
  store ptr %0, ptr %13, align 8
  %32 = add i64 %1, 1
  %33 = call ptr @malloc(i64 noundef %32) #6
  store ptr %33, ptr %14, align 8
  call void @llvm.memset.p0.i64(ptr align 1 %33, i8 0, i64 %32, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %15, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %16, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %17, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %18, i8 0, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %19, i8 0, i64 256, i1 false)
  store i64 0, ptr %5, align 8
  %.promoted = load ptr, ptr %13, align 1
  %.promoted36 = load i64, ptr %5, align 1
  br label %34

34:                                               ; preds = %40, %2
  %35 = phi i64 [ %47, %40 ], [ %.promoted36, %2 ]
  %36 = phi ptr [ %46, %40 ], [ %.promoted, %2 ]
  %37 = phi ptr [ %46, %40 ], [ %0, %2 ]
  %38 = phi i64 [ %47, %40 ], [ 0, %2 ]
  %39 = icmp ult i64 %38, %1
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load i8, ptr %37, align 1
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %42
  %44 = load i64, ptr %43, align 8
  %45 = add i64 %44, 1
  store i64 %45, ptr %43, align 8
  %46 = getelementptr inbounds nuw i8, ptr %37, i32 1
  %47 = add i64 %38, 1
  br label %34, !llvm.loop !9

48:                                               ; preds = %34
  %.lcssa37 = phi i64 [ %35, %34 ]
  %.lcssa35 = phi ptr [ %36, %34 ]
  store ptr %.lcssa35, ptr %13, align 1
  store i64 %.lcssa37, ptr %5, align 1
  store i64 0, ptr %7, align 8
  store i64 0, ptr %5, align 8
  %.promoted38 = load i64, ptr %7, align 1
  br label %49

49:                                               ; preds = %62, %48
  %50 = phi i64 [ %65, %62 ], [ poison, %48 ]
  %51 = phi i64 [ %63, %62 ], [ %.promoted38, %48 ]
  %52 = phi i64 [ %64, %62 ], [ 0, %48 ]
  %53 = phi i64 [ %65, %62 ], [ 0, %48 ]
  %54 = icmp ult i64 %53, 256
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %53
  %57 = load i64, ptr %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %52
  store i64 %53, ptr %60, align 8
  %61 = add i64 %52, 1
  br label %62

62:                                               ; preds = %59, %55
  %63 = phi i64 [ %61, %59 ], [ %51, %55 ]
  %64 = phi i64 [ %61, %59 ], [ %52, %55 ]
  %65 = add i64 %53, 1
  br label %49, !llvm.loop !10

66:                                               ; preds = %49
  %.lcssa40 = phi i64 [ %50, %49 ]
  %.lcssa39 = phi i64 [ %51, %49 ]
  %.lcssa34 = phi i64 [ %52, %49 ]
  store i64 %.lcssa39, ptr %7, align 1
  store i64 %.lcssa40, ptr %5, align 8
  store i64 %.lcssa34, ptr %5, align 8
  %67 = trunc i64 %.lcssa34 to i32
  %.promoted41 = load i64, ptr %5, align 1
  br label %68

68:                                               ; preds = %72, %66
  %69 = phi i64 [ %74, %72 ], [ %.promoted41, %66 ]
  %70 = phi i64 [ %74, %72 ], [ %.lcssa34, %66 ]
  %71 = icmp ugt i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = trunc i64 %70 to i32
  call void @heap_adjust(ptr noundef %15, ptr noundef %16, i32 noundef %67, i32 noundef %73)
  %74 = add i64 %70, -1
  br label %68, !llvm.loop !11

75:                                               ; preds = %68
  %.lcssa42 = phi i64 [ %69, %68 ]
  store i64 %.lcssa42, ptr %5, align 1
  %.promoted43 = load i64, ptr %7, align 1
  %.promoted45 = load i64, ptr %20, align 1
  br label %76

76:                                               ; preds = %81, %75
  %77 = phi i64 [ %83, %81 ], [ %.promoted45, %75 ]
  %78 = phi i64 [ %82, %81 ], [ %.promoted43, %75 ]
  %79 = phi i64 [ %82, %81 ], [ %.lcssa34, %75 ]
  %80 = icmp ugt i64 %79, 1
  br i1 %80, label %81, label %100

81:                                               ; preds = %76
  %82 = add i64 %79, -1
  %83 = load i64, ptr %16, align 16
  %84 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %82
  %85 = load i64, ptr %84, align 8
  store i64 %85, ptr %16, align 16
  %86 = trunc i64 %82 to i32
  call void @heap_adjust(ptr noundef %15, ptr noundef %16, i32 noundef %86, i32 noundef 1)
  %87 = load i64, ptr %16, align 16
  %88 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %87
  %89 = load i64, ptr %88, align 8
  %90 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %83
  %91 = load i64, ptr %90, align 8
  %92 = add i64 %89, %91
  %93 = add i64 256, %82
  %94 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %93
  store i64 %92, ptr %94, align 8
  %95 = trunc i64 %93 to i32
  %96 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %83
  store i32 %95, ptr %96, align 4
  %97 = sub i64 -256, %82
  %98 = trunc i64 %97 to i32
  %99 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %87
  store i32 %98, ptr %99, align 4
  store i64 %93, ptr %16, align 16
  call void @heap_adjust(ptr noundef %15, ptr noundef %16, i32 noundef %86, i32 noundef 1)
  br label %76, !llvm.loop !12

100:                                              ; preds = %76
  %.lcssa46 = phi i64 [ %77, %76 ]
  %.lcssa44 = phi i64 [ %78, %76 ]
  %.lcssa33 = phi i64 [ %79, %76 ]
  store i64 %.lcssa44, ptr %7, align 1
  store i64 %.lcssa46, ptr %20, align 1
  %101 = add i64 256, %.lcssa33
  %102 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %101
  store i32 0, ptr %102, align 4
  store i64 0, ptr %23, align 8
  store i64 0, ptr %24, align 8
  store i64 0, ptr %21, align 8
  %.promoted55 = load i64, ptr %5, align 1
  %.promoted58 = load i64, ptr %6, align 1
  %.promoted61 = load i64, ptr %22, align 1
  %.promoted64 = load i32, ptr %25, align 1
  %.promoted67 = load i64, ptr %23, align 1
  %.promoted71 = load i64, ptr %24, align 1
  br label %103

103:                                              ; preds = %158, %100
  %104 = phi i64 [ %163, %158 ], [ poison, %100 ]
  %.lcssa3074 = phi i64 [ %.lcssa3072, %158 ], [ %.promoted71, %100 ]
  %.lcssa2970 = phi i64 [ %.lcssa2968, %158 ], [ %.promoted67, %100 ]
  %.lcssa5066 = phi i32 [ %.lcssa5065, %158 ], [ %.promoted64, %100 ]
  %.lcssa4863 = phi i64 [ %.lcssa4862, %158 ], [ %.promoted61, %100 ]
  %.lcssa5260 = phi i64 [ %.lcssa5259, %158 ], [ %.promoted58, %100 ]
  %.lcssa5457 = phi i64 [ %.lcssa5456, %158 ], [ %.promoted55, %100 ]
  %105 = phi i64 [ %159, %158 ], [ 0, %100 ]
  %106 = phi i64 [ %160, %158 ], [ 0, %100 ]
  %107 = phi i64 [ %161, %158 ], [ 0, %100 ]
  %108 = phi i64 [ %162, %158 ], [ 0, %100 ]
  %109 = phi i64 [ %163, %158 ], [ 0, %100 ]
  %110 = icmp ult i64 %109, 256
  br i1 %110, label %111, label %164

111:                                              ; preds = %103
  %112 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %109
  %113 = load i64, ptr %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %109
  store i32 0, ptr %116, align 4
  %117 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %109
  store i8 0, ptr %117, align 1
  br label %158

118:                                              ; preds = %111
  %119 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %109
  %120 = load i32, ptr %119, align 4
  br label %121

121:                                              ; preds = %136, %118
  %122 = phi i64 [ %144, %136 ], [ 0, %118 ]
  %123 = phi i64 [ %143, %136 ], [ 1, %118 ]
  %124 = phi i32 [ %142, %136 ], [ %120, %118 ]
  %125 = phi i64 [ %137, %136 ], [ 0, %118 ]
  %126 = phi i64 [ %143, %136 ], [ 1, %118 ]
  %127 = phi i64 [ %144, %136 ], [ 0, %118 ]
  %128 = phi i64 [ %139, %136 ], [ 0, %118 ]
  %129 = phi i32 [ %142, %136 ], [ %120, %118 ]
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %145

131:                                              ; preds = %121
  %132 = icmp slt i32 %129, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %131
  %134 = add i64 %128, %126
  %135 = sub nsw i32 0, %129
  br label %136

136:                                              ; preds = %133, %131
  %137 = phi i64 [ %134, %133 ], [ %125, %131 ]
  %138 = phi i32 [ %135, %133 ], [ %129, %131 ]
  %139 = phi i64 [ %134, %133 ], [ %128, %131 ]
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds [512 x i32], ptr %17, i64 0, i64 %140
  %142 = load i32, ptr %141, align 4
  %143 = shl i64 %126, 1
  %144 = add i64 %127, 1
  br label %121, !llvm.loop !13

145:                                              ; preds = %121
  %.lcssa54 = phi i64 [ %122, %121 ]
  %.lcssa52 = phi i64 [ %123, %121 ]
  %.lcssa50 = phi i32 [ %124, %121 ]
  %.lcssa48 = phi i64 [ %125, %121 ]
  %.lcssa30 = phi i64 [ %127, %121 ]
  %.lcssa29 = phi i64 [ %128, %121 ]
  %146 = trunc i64 %.lcssa29 to i32
  %147 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %109
  store i32 %146, ptr %147, align 4
  %148 = trunc i64 %.lcssa30 to i8
  %149 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %109
  store i8 %148, ptr %149, align 1
  %150 = icmp ugt i64 %.lcssa29, %106
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  br label %152

152:                                              ; preds = %151, %145
  %.lcssa2969 = phi i64 [ %.lcssa29, %151 ], [ %.lcssa2970, %145 ]
  %153 = phi i64 [ %.lcssa29, %151 ], [ %106, %145 ]
  %154 = icmp ugt i64 %.lcssa30, %105
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  br label %156

156:                                              ; preds = %155, %152
  %.lcssa3073 = phi i64 [ %.lcssa30, %155 ], [ %.lcssa3074, %152 ]
  %157 = phi i64 [ %.lcssa30, %155 ], [ %105, %152 ]
  br label %158

158:                                              ; preds = %156, %115
  %.lcssa3072 = phi i64 [ %.lcssa3073, %156 ], [ %.lcssa3074, %115 ]
  %.lcssa2968 = phi i64 [ %.lcssa2969, %156 ], [ %.lcssa2970, %115 ]
  %.lcssa5065 = phi i32 [ %.lcssa50, %156 ], [ %.lcssa5066, %115 ]
  %.lcssa4862 = phi i64 [ %.lcssa48, %156 ], [ %.lcssa4863, %115 ]
  %.lcssa5259 = phi i64 [ %.lcssa52, %156 ], [ %.lcssa5260, %115 ]
  %.lcssa5456 = phi i64 [ %.lcssa54, %156 ], [ %.lcssa5457, %115 ]
  %159 = phi i64 [ %157, %156 ], [ %105, %115 ]
  %160 = phi i64 [ %153, %156 ], [ %106, %115 ]
  %161 = phi i64 [ %153, %156 ], [ %107, %115 ]
  %162 = phi i64 [ %157, %156 ], [ %108, %115 ]
  %163 = add i64 %109, 1
  br label %103, !llvm.loop !14

164:                                              ; preds = %103
  %.lcssa75 = phi i64 [ %104, %103 ]
  %.lcssa3074.lcssa = phi i64 [ %.lcssa3074, %103 ]
  %.lcssa2970.lcssa = phi i64 [ %.lcssa2970, %103 ]
  %.lcssa5066.lcssa = phi i32 [ %.lcssa5066, %103 ]
  %.lcssa4863.lcssa = phi i64 [ %.lcssa4863, %103 ]
  %.lcssa5260.lcssa = phi i64 [ %.lcssa5260, %103 ]
  %.lcssa5457.lcssa = phi i64 [ %.lcssa5457, %103 ]
  %.lcssa32 = phi i64 [ %107, %103 ]
  %.lcssa31 = phi i64 [ %108, %103 ]
  store i64 %.lcssa5457.lcssa, ptr %5, align 1
  store i64 %.lcssa5260.lcssa, ptr %6, align 1
  store i64 %.lcssa4863.lcssa, ptr %22, align 1
  store i32 %.lcssa5066.lcssa, ptr %25, align 1
  store i64 %.lcssa2970.lcssa, ptr %23, align 1
  store i64 %.lcssa3074.lcssa, ptr %24, align 1
  store i64 %.lcssa75, ptr %21, align 8
  %165 = icmp ugt i64 %.lcssa31, 32
  br i1 %165, label %166, label %169

166:                                              ; preds = %164
  %167 = call ptr @__acrt_iob_func(i32 noundef 2)
  %168 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %167, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

169:                                              ; preds = %164
  store i64 0, ptr %26, align 8
  store i8 0, ptr %27, align 1
  store i32 -1, ptr %28, align 4
  store ptr %0, ptr %13, align 8
  %170 = icmp eq i64 %.lcssa32, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %169
  %172 = call ptr @__acrt_iob_func(i32 noundef 2)
  %173 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %172, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

174:                                              ; preds = %169
  store i64 0, ptr %6, align 8
  %.promoted91 = load i64, ptr %8, align 1
  %.promoted94 = load i64, ptr %5, align 1
  %.promoted96 = load i32, ptr %28, align 1
  %.promoted99 = load i8, ptr %27, align 1
  %.promoted102 = load i64, ptr %26, align 1
  %.promoted105 = load ptr, ptr %13, align 1
  %.promoted108 = load i64, ptr %6, align 1
  br label %175

175:                                              ; preds = %249, %174
  %176 = phi i64 [ %251, %249 ], [ %.promoted108, %174 ]
  %177 = phi ptr [ %250, %249 ], [ %.promoted105, %174 ]
  %.lcssa83103 = phi i64 [ %.lcssa83, %249 ], [ %.promoted102, %174 ]
  %.lcssa80100 = phi i8 [ %.lcssa80, %249 ], [ %.promoted99, %174 ]
  %.lcssa7797 = phi i32 [ %.lcssa77, %249 ], [ %.promoted96, %174 ]
  %.lcssa8995 = phi i64 [ %.lcssa89, %249 ], [ %.promoted94, %174 ]
  %.lcssa8692 = phi i64 [ %.lcssa86, %249 ], [ %.promoted91, %174 ]
  %178 = phi ptr [ %250, %249 ], [ %0, %174 ]
  %179 = phi i64 [ %.lcssa19, %249 ], [ 0, %174 ]
  %180 = phi ptr [ %.lcssa17, %249 ], [ %33, %174 ]
  %181 = phi i8 [ %.lcssa15, %249 ], [ 0, %174 ]
  %182 = phi i32 [ %.lcssa13, %249 ], [ -1, %174 ]
  %183 = phi i64 [ %.lcssa11, %249 ], [ %1, %174 ]
  %184 = phi i64 [ %251, %249 ], [ 0, %174 ]
  %185 = icmp ult i64 %184, %183
  br i1 %185, label %186, label %252

186:                                              ; preds = %175
  %187 = load i8, ptr %178, align 1
  %188 = zext i8 %187 to i64
  %189 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %188
  %190 = load i8, ptr %189, align 1
  %191 = zext i8 %190 to i32
  %192 = sub nsw i32 %191, 1
  %193 = shl i32 1, %192
  %194 = sext i32 %193 to i64
  br label %195

195:                                              ; preds = %245, %186
  %196 = phi i64 [ %248, %245 ], [ 0, %186 ]
  %197 = phi i64 [ %247, %245 ], [ %194, %186 ]
  %198 = phi i64 [ %229, %245 ], [ %.lcssa83103, %186 ]
  %199 = phi i8 [ %246, %245 ], [ %.lcssa80100, %186 ]
  %200 = phi i32 [ %234, %245 ], [ %.lcssa7797, %186 ]
  %201 = phi i8 [ %230, %245 ], [ %187, %186 ]
  %202 = phi i64 [ %247, %245 ], [ %194, %186 ]
  %203 = phi i8 [ %.pre4, %245 ], [ %190, %186 ]
  %204 = phi i64 [ %248, %245 ], [ 0, %186 ]
  %205 = phi i64 [ %231, %245 ], [ %179, %186 ]
  %206 = phi ptr [ %232, %245 ], [ %180, %186 ]
  %207 = phi i8 [ %246, %245 ], [ %181, %186 ]
  %208 = phi i32 [ %234, %245 ], [ %182, %186 ]
  %209 = phi i64 [ %235, %245 ], [ %183, %186 ]
  %210 = zext i8 %201 to i64
  %211 = zext i8 %203 to i64
  %212 = icmp ult i64 %204, %211
  br i1 %212, label %213, label %249

213:                                              ; preds = %195
  %214 = icmp eq i32 %208, 7
  br i1 %214, label %215, label %223

215:                                              ; preds = %213
  %216 = getelementptr inbounds nuw i8, ptr %33, i64 %205
  store i8 %207, ptr %216, align 1
  %217 = add i64 %205, 1
  %218 = icmp eq i64 %217, %1
  br i1 %218, label %219, label %222

219:                                              ; preds = %215
  %.lcssa110 = phi i64 [ %176, %215 ]
  %.lcssa107 = phi ptr [ %177, %215 ]
  %.lcssa83103.lcssa104 = phi i64 [ %.lcssa83103, %215 ]
  %.lcssa80100.lcssa101 = phi i8 [ %.lcssa80100, %215 ]
  %.lcssa7797.lcssa98 = phi i32 [ %.lcssa7797, %215 ]
  %.lcssa93 = phi i64 [ %194, %215 ]
  %.lcssa90 = phi i64 [ %196, %215 ]
  %.lcssa87 = phi i64 [ %197, %215 ]
  %.lcssa84 = phi i64 [ %217, %215 ]
  %.lcssa81 = phi i8 [ %199, %215 ]
  %.lcssa78 = phi i32 [ %200, %215 ]
  store i64 %.lcssa93, ptr %8, align 1
  store i64 0, ptr %5, align 1
  store i32 %.lcssa7797.lcssa98, ptr %28, align 1
  store i8 %.lcssa80100.lcssa101, ptr %27, align 1
  store i64 %.lcssa83103.lcssa104, ptr %26, align 1
  store ptr %.lcssa107, ptr %13, align 1
  store i64 %.lcssa110, ptr %6, align 1
  store i32 %.lcssa78, ptr %28, align 1
  store i8 %.lcssa81, ptr %27, align 1
  store i64 %.lcssa84, ptr %26, align 1
  store i64 %.lcssa87, ptr %8, align 1
  store i64 %.lcssa90, ptr %5, align 1
  %220 = call ptr @__acrt_iob_func(i32 noundef 2)
  %221 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %220, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

222:                                              ; preds = %215
  %.pre5 = load i8, ptr %178, align 1
  %.pre6 = zext i8 %.pre5 to i64
  br label %228

223:                                              ; preds = %213
  %224 = add nsw i32 %208, 1
  %225 = sext i8 %207 to i32
  %226 = shl i32 %225, 1
  %227 = trunc i32 %226 to i8
  br label %228

228:                                              ; preds = %223, %222
  %229 = phi i64 [ %198, %223 ], [ %217, %222 ]
  %.pre-phi = phi i64 [ %210, %223 ], [ %.pre6, %222 ]
  %230 = phi i8 [ %201, %223 ], [ %.pre5, %222 ]
  %231 = phi i64 [ %205, %223 ], [ %217, %222 ]
  %232 = phi ptr [ %206, %223 ], [ %33, %222 ]
  %233 = phi i8 [ %227, %223 ], [ 0, %222 ]
  %234 = phi i32 [ %224, %223 ], [ 0, %222 ]
  %235 = phi i64 [ %209, %223 ], [ %1, %222 ]
  %236 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %.pre-phi
  %237 = load i32, ptr %236, align 4
  %238 = zext i32 %237 to i64
  %239 = and i64 %238, %202
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %228
  %242 = sext i8 %233 to i32
  %243 = or i32 %242, 1
  %244 = trunc i32 %243 to i8
  br label %245

245:                                              ; preds = %241, %228
  %246 = phi i8 [ %244, %241 ], [ %233, %228 ]
  %247 = lshr i64 %202, 1
  %248 = add i64 %204, 1
  %.phi.trans.insert3 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %.pre-phi
  %.pre4 = load i8, ptr %.phi.trans.insert3, align 1
  br label %195, !llvm.loop !15

249:                                              ; preds = %195
  %.lcssa89 = phi i64 [ %196, %195 ]
  %.lcssa86 = phi i64 [ %197, %195 ]
  %.lcssa83 = phi i64 [ %198, %195 ]
  %.lcssa80 = phi i8 [ %199, %195 ]
  %.lcssa77 = phi i32 [ %200, %195 ]
  %.lcssa19 = phi i64 [ %205, %195 ]
  %.lcssa17 = phi ptr [ %206, %195 ]
  %.lcssa15 = phi i8 [ %207, %195 ]
  %.lcssa13 = phi i32 [ %208, %195 ]
  %.lcssa11 = phi i64 [ %209, %195 ]
  %250 = getelementptr inbounds nuw i8, ptr %178, i32 1
  %251 = add i64 %184, 1
  br label %175, !llvm.loop !16

252:                                              ; preds = %175
  %.lcssa109 = phi i64 [ %176, %175 ]
  %.lcssa106 = phi ptr [ %177, %175 ]
  %.lcssa83103.lcssa = phi i64 [ %.lcssa83103, %175 ]
  %.lcssa80100.lcssa = phi i8 [ %.lcssa80100, %175 ]
  %.lcssa7797.lcssa = phi i32 [ %.lcssa7797, %175 ]
  %.lcssa8995.lcssa = phi i64 [ %.lcssa8995, %175 ]
  %.lcssa8692.lcssa = phi i64 [ %.lcssa8692, %175 ]
  %.lcssa27 = phi i64 [ %179, %175 ]
  %.lcssa25 = phi ptr [ %180, %175 ]
  %.lcssa23 = phi i8 [ %181, %175 ]
  %.lcssa21 = phi i32 [ %182, %175 ]
  store i64 %.lcssa8692.lcssa, ptr %8, align 1
  store i64 %.lcssa8995.lcssa, ptr %5, align 1
  store i32 %.lcssa7797.lcssa, ptr %28, align 1
  store i8 %.lcssa80100.lcssa, ptr %27, align 1
  store i64 %.lcssa83103.lcssa, ptr %26, align 1
  store ptr %.lcssa106, ptr %13, align 1
  store i64 %.lcssa109, ptr %6, align 1
  %253 = sub nsw i32 7, %.lcssa21
  %254 = sext i8 %.lcssa23 to i32
  %255 = shl i32 %254, %253
  %256 = trunc i32 %255 to i8
  store i8 %256, ptr %27, align 1
  %257 = getelementptr inbounds nuw i8, ptr %.lcssa25, i64 %.lcssa27
  store i8 %256, ptr %257, align 1
  %258 = load i64, ptr %26, align 8
  %259 = add i64 %258, 1
  store i64 %259, ptr %26, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %29, i8 0, i64 1024, i1 false)
  store ptr %30, ptr %31, align 8
  store i64 0, ptr %6, align 8
  %.promoted118 = load i32, ptr %9, align 1
  %.promoted121 = load i64, ptr %8, align 1
  %.promoted124 = load i64, ptr %5, align 1
  br label %260

260:                                              ; preds = %303, %252
  %261 = phi i64 [ %304, %303 ], [ poison, %252 ]
  %.lcssa116126 = phi i64 [ %.lcssa116125, %303 ], [ %.promoted124, %252 ]
  %.lcssa114123 = phi i64 [ %.lcssa114122, %303 ], [ %.promoted121, %252 ]
  %.lcssa112120 = phi i32 [ %.lcssa112119, %303 ], [ %.promoted118, %252 ]
  %262 = phi ptr [ %268, %303 ], [ poison, %252 ]
  %263 = phi ptr [ %268, %303 ], [ %30, %252 ]
  %264 = phi i64 [ %304, %303 ], [ 0, %252 ]
  %265 = icmp ult i64 %264, 256
  br i1 %265, label %266, label %305

266:                                              ; preds = %260
  %267 = trunc i64 %264 to i8
  store i8 %267, ptr %263, align 1
  %268 = getelementptr inbounds nuw i8, ptr %263, i32 1
  %269 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %264
  %270 = load i32, ptr %269, align 4
  %271 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %264
  %272 = load i8, ptr %271, align 1
  %273 = zext i8 %272 to i32
  %274 = or i32 %270, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %303

276:                                              ; preds = %266
  %277 = sub nsw i32 %273, 1
  %278 = shl i32 1, %277
  %279 = sext i32 %278 to i64
  %280 = zext i8 %272 to i64
  %281 = zext i32 %270 to i64
  br label %282

282:                                              ; preds = %297, %276
  %283 = phi i64 [ %300, %297 ], [ 0, %276 ]
  %284 = phi i64 [ %299, %297 ], [ %279, %276 ]
  %285 = phi i32 [ %298, %297 ], [ 0, %276 ]
  %286 = phi i64 [ %299, %297 ], [ %279, %276 ]
  %287 = phi i32 [ %298, %297 ], [ 0, %276 ]
  %288 = phi i64 [ %300, %297 ], [ 0, %276 ]
  %289 = icmp ult i64 %288, %280
  br i1 %289, label %290, label %301

290:                                              ; preds = %282
  %291 = mul i32 %287, 2
  %292 = add i32 %291, 1
  %293 = and i64 %281, %286
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %290
  %296 = add i32 %292, 1
  br label %297

297:                                              ; preds = %295, %290
  %298 = phi i32 [ %296, %295 ], [ %292, %290 ]
  %299 = lshr i64 %286, 1
  %300 = add i64 %288, 1
  br label %282, !llvm.loop !17

301:                                              ; preds = %282
  %.lcssa116 = phi i64 [ %283, %282 ]
  %.lcssa114 = phi i64 [ %284, %282 ]
  %.lcssa112 = phi i32 [ %285, %282 ]
  %.lcssa10 = phi i32 [ %287, %282 ]
  %302 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %264
  store i32 %.lcssa10, ptr %302, align 4
  br label %303

303:                                              ; preds = %301, %266
  %.lcssa116125 = phi i64 [ %.lcssa116, %301 ], [ %.lcssa116126, %266 ]
  %.lcssa114122 = phi i64 [ %.lcssa114, %301 ], [ %.lcssa114123, %266 ]
  %.lcssa112119 = phi i32 [ %.lcssa112, %301 ], [ %.lcssa112120, %266 ]
  %304 = add i64 %264, 1
  br label %260, !llvm.loop !18

305:                                              ; preds = %260
  %.lcssa127 = phi i64 [ %261, %260 ]
  %.lcssa116126.lcssa = phi i64 [ %.lcssa116126, %260 ]
  %.lcssa114123.lcssa = phi i64 [ %.lcssa114123, %260 ]
  %.lcssa112120.lcssa = phi i32 [ %.lcssa112120, %260 ]
  %.lcssa117 = phi ptr [ %262, %260 ]
  store ptr %.lcssa117, ptr %31, align 8
  store i32 %.lcssa112120.lcssa, ptr %9, align 1
  store i64 %.lcssa114123.lcssa, ptr %8, align 1
  store i64 %.lcssa116126.lcssa, ptr %5, align 1
  store i64 %.lcssa127, ptr %6, align 8
  store i64 1, ptr %5, align 8
  %.promoted132 = load i64, ptr %6, align 8
  br label %306

306:                                              ; preds = %337, %305
  %307 = phi i64 [ %340, %337 ], [ poison, %305 ]
  %.lcssa129133 = phi i64 [ %.lcssa129, %337 ], [ %.promoted132, %305 ]
  %308 = phi i8 [ %316, %337 ], [ poison, %305 ]
  %309 = phi i32 [ %314, %337 ], [ poison, %305 ]
  %310 = phi i64 [ %340, %337 ], [ 1, %305 ]
  %311 = icmp ult i64 %310, 256
  br i1 %311, label %312, label %341

312:                                              ; preds = %306
  %313 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %310
  %314 = load i32, ptr %313, align 4
  %315 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %310
  %316 = load i8, ptr %315, align 1
  br label %317

317:                                              ; preds = %328, %312
  %318 = phi i64 [ %336, %328 ], [ %310, %312 ]
  %319 = phi i64 [ %336, %328 ], [ %310, %312 ]
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %326

321:                                              ; preds = %317
  %322 = sub i64 %319, 1
  %323 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %322
  %324 = load i32, ptr %323, align 4
  %325 = icmp ugt i32 %324, %314
  br label %326

326:                                              ; preds = %321, %317
  %327 = phi i1 [ false, %317 ], [ %325, %321 ]
  br i1 %327, label %328, label %337

328:                                              ; preds = %326
  %329 = sub i64 %319, 1
  %330 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %329
  %331 = load i32, ptr %330, align 4
  %332 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %319
  store i32 %331, ptr %332, align 4
  %333 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %329
  %334 = load i8, ptr %333, align 1
  %335 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %319
  store i8 %334, ptr %335, align 1
  %336 = add i64 %319, -1
  br label %317, !llvm.loop !19

337:                                              ; preds = %326
  %.lcssa129 = phi i64 [ %318, %326 ]
  %.lcssa9 = phi i64 [ %319, %326 ]
  %338 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %.lcssa9
  store i32 %314, ptr %338, align 4
  %339 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %.lcssa9
  store i8 %316, ptr %339, align 1
  %340 = add i64 %310, 1
  br label %306, !llvm.loop !20

341:                                              ; preds = %306
  %.lcssa134 = phi i64 [ %307, %306 ]
  %.lcssa129133.lcssa = phi i64 [ %.lcssa129133, %306 ]
  %.lcssa131 = phi i8 [ %308, %306 ]
  %.lcssa130 = phi i32 [ %309, %306 ]
  store i32 %.lcssa130, ptr %10, align 4
  store i8 %.lcssa131, ptr %11, align 1
  store i64 %.lcssa129133.lcssa, ptr %6, align 8
  store i64 %.lcssa134, ptr %5, align 8
  store i64 0, ptr %6, align 8
  %.promoted135 = load i64, ptr %6, align 1
  br label %342

342:                                              ; preds = %348, %341
  %343 = phi i64 [ %349, %348 ], [ %.promoted135, %341 ]
  %344 = phi i64 [ %349, %348 ], [ 0, %341 ]
  %345 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %344
  %346 = load i32, ptr %345, align 4
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %350

348:                                              ; preds = %342
  %349 = add i64 %344, 1
  br label %342, !llvm.loop !21

350:                                              ; preds = %342
  %.lcssa136 = phi i64 [ %343, %342 ]
  %.lcssa8 = phi i64 [ %344, %342 ]
  store i64 %.lcssa136, ptr %6, align 1
  store i32 0, ptr %9, align 4
  store i64 %.lcssa8, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  %351 = load ptr, ptr %14, align 8
  store ptr %351, ptr %12, align 8
  %352 = load ptr, ptr %3, align 8
  store ptr %352, ptr %13, align 8
  %.pre = load i64, ptr %4, align 8
  br label %353

353:                                              ; preds = %401, %350
  %354 = phi ptr [ %392, %401 ], [ %352, %350 ]
  %355 = phi i64 [ %393, %401 ], [ %.lcssa8, %350 ]
  %356 = phi i64 [ %402, %401 ], [ 128, %350 ]
  %357 = phi ptr [ %403, %401 ], [ %351, %350 ]
  %358 = phi i32 [ %394, %401 ], [ 0, %350 ]
  %359 = phi i64 [ %395, %401 ], [ 0, %350 ]
  %360 = icmp ult i64 %359, %.pre
  br i1 %360, label %361, label %404

361:                                              ; preds = %353
  %362 = mul i32 %358, 2
  %363 = add i32 %362, 1
  store i32 %363, ptr %9, align 4
  %364 = load i8, ptr %357, align 1
  %365 = zext i8 %364 to i64
  %366 = and i64 %365, %356
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %370

368:                                              ; preds = %361
  %369 = add i32 %363, 1
  store i32 %369, ptr %9, align 4
  br label %370

370:                                              ; preds = %368, %361
  %371 = phi i32 [ %369, %368 ], [ %363, %361 ]
  %.promoted137 = load i64, ptr %5, align 1
  br label %372

372:                                              ; preds = %378, %370
  %373 = phi i64 [ %379, %378 ], [ %.promoted137, %370 ]
  %374 = phi i64 [ %379, %378 ], [ %355, %370 ]
  %375 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %374
  %376 = load i32, ptr %375, align 4
  %377 = icmp ult i32 %376, %371
  br i1 %377, label %378, label %380

378:                                              ; preds = %372
  %379 = add i64 %374, 1
  br label %372, !llvm.loop !22

380:                                              ; preds = %372
  %.lcssa138 = phi i64 [ %373, %372 ]
  %.lcssa7 = phi i64 [ %374, %372 ]
  %.lcssa = phi i32 [ %376, %372 ]
  store i64 %.lcssa138, ptr %5, align 1
  %381 = icmp eq i32 %371, %.lcssa
  br i1 %381, label %382, label %390

382:                                              ; preds = %380
  %383 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %.lcssa7
  %384 = load i8, ptr %383, align 1
  store i8 %384, ptr %354, align 1
  %385 = load ptr, ptr %13, align 8
  %386 = getelementptr inbounds nuw i8, ptr %385, i32 1
  store ptr %386, ptr %13, align 8
  %387 = load i64, ptr %7, align 8
  %388 = add i64 %387, 1
  store i64 %388, ptr %7, align 8
  store i32 0, ptr %9, align 4
  %389 = load i64, ptr %6, align 8
  store i64 %389, ptr %5, align 8
  %.pre1 = load i64, ptr %8, align 8
  br label %390

390:                                              ; preds = %382, %380
  %391 = phi i64 [ %.pre1, %382 ], [ %356, %380 ]
  %392 = phi ptr [ %386, %382 ], [ %354, %380 ]
  %393 = phi i64 [ %389, %382 ], [ %.lcssa7, %380 ]
  %394 = phi i32 [ 0, %382 ], [ %371, %380 ]
  %395 = phi i64 [ %388, %382 ], [ %359, %380 ]
  %396 = icmp ugt i64 %391, 1
  br i1 %396, label %397, label %399

397:                                              ; preds = %390
  %398 = lshr i64 %391, 1
  store i64 %398, ptr %8, align 8
  br label %401

399:                                              ; preds = %390
  store i64 128, ptr %8, align 8
  %400 = getelementptr inbounds nuw i8, ptr %357, i32 1
  store ptr %400, ptr %12, align 8
  br label %401

401:                                              ; preds = %399, %397
  %402 = phi i64 [ 128, %399 ], [ %398, %397 ]
  %403 = phi ptr [ %400, %399 ], [ %357, %397 ]
  br label %353, !llvm.loop !23

404:                                              ; preds = %353
  call void @free(ptr noundef %351)
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
  %11 = sub nsw i32 %3, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i64, ptr %1, i64 %12
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, ptr %10, align 4
  %16 = sdiv i32 %2, 2
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds i64, ptr %0, i64 %17
  %.promoted = load i32, ptr %9, align 1
  %.promoted5 = load i32, ptr %8, align 1
  br label %19

19:                                               ; preds = %53, %4
  %20 = phi i32 [ %43, %53 ], [ %.promoted5, %4 ]
  %21 = phi i32 [ %43, %53 ], [ %.promoted, %4 ]
  %22 = phi i32 [ %43, %53 ], [ %3, %4 ]
  %23 = icmp sle i32 %22, %16
  br i1 %23, label %24, label %._crit_edge

._crit_edge:                                      ; preds = %19
  %.lcssa6 = phi i32 [ %20, %19 ]
  %.lcssa3 = phi i32 [ %21, %19 ]
  %.lcssa = phi i32 [ %22, %19 ]
  store i32 %.lcssa3, ptr %9, align 1
  store i32 %.lcssa6, ptr %8, align 1
  %.pre = sext i32 %15 to i64
  br label %57

24:                                               ; preds = %19
  %25 = add nsw i32 %22, %22
  %26 = icmp slt i32 %25, %2
  br i1 %26, label %27, label %42

27:                                               ; preds = %24
  %28 = sub nsw i32 %25, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, ptr %1, i64 %29
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr inbounds nuw i64, ptr %0, i64 %31
  %33 = load i64, ptr %32, align 8
  %34 = sext i32 %25 to i64
  %35 = getelementptr inbounds i64, ptr %1, i64 %34
  %36 = load i64, ptr %35, align 8
  %37 = getelementptr inbounds nuw i64, ptr %0, i64 %36
  %38 = load i64, ptr %37, align 8
  %39 = icmp ugt i64 %33, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = add nsw i32 %25, 1
  br label %42

42:                                               ; preds = %40, %27, %24
  %43 = phi i32 [ %41, %40 ], [ %25, %27 ], [ %25, %24 ]
  %44 = load i64, ptr %18, align 8
  %45 = sub nsw i32 %43, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, ptr %1, i64 %46
  %48 = load i64, ptr %47, align 8
  %49 = getelementptr inbounds nuw i64, ptr %0, i64 %48
  %50 = load i64, ptr %49, align 8
  %51 = icmp ult i64 %44, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  %.lcssa7 = phi i32 [ %20, %42 ]
  %.lcssa4 = phi i32 [ %43, %42 ]
  %.lcssa2 = phi i64 [ %17, %42 ]
  %.lcssa1 = phi i32 [ %22, %42 ]
  store i32 %.lcssa4, ptr %9, align 1
  store i32 %.lcssa7, ptr %8, align 1
  br label %57

53:                                               ; preds = %42
  %54 = sub nsw i32 %22, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, ptr %1, i64 %55
  store i64 %48, ptr %56, align 8
  br label %19, !llvm.loop !24

57:                                               ; preds = %._crit_edge, %52
  %58 = phi i32 [ %.lcssa, %._crit_edge ], [ %.lcssa1, %52 ]
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %.lcssa2, %52 ]
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, ptr %1, i64 %60
  store i64 %.pre-phi, ptr %61, align 8
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
  %10 = icmp sgt i32 %0, 1
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  store i32 1, ptr %6, align 4
  %12 = getelementptr inbounds ptr, ptr %1, i64 1
  %.promoted = load i32, ptr %6, align 1
  br label %13

13:                                               ; preds = %22, %11
  %14 = phi i32 [ %23, %22 ], [ %.promoted, %11 ]
  %15 = phi i32 [ %23, %22 ], [ 1, %11 ]
  %16 = icmp slt i32 %15, %0
  br i1 %16, label %17, label %.loopexit

17:                                               ; preds = %13
  %18 = load ptr, ptr %12, align 8
  %19 = call i32 @strcmp(ptr noundef %18, ptr noundef @.str.4) #7
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  %.lcssa1 = phi i32 [ %14, %17 ]
  store i32 %.lcssa1, ptr %6, align 1
  store i8 1, ptr %7, align 1
  br label %24

22:                                               ; preds = %17
  %23 = add nsw i32 %15, 1
  br label %13, !llvm.loop !25

.loopexit:                                        ; preds = %13
  %.lcssa = phi i32 [ %14, %13 ]
  store i32 %.lcssa, ptr %6, align 1
  br label %24

24:                                               ; preds = %.loopexit, %21
  %25 = phi i8 [ 1, %21 ], [ 0, %.loopexit ]
  br label %26

26:                                               ; preds = %24, %2
  %27 = phi i8 [ %25, %24 ], [ 0, %2 ]
  %28 = call ptr @generate_test_data(i64 noundef 10000000)
  store ptr %28, ptr %8, align 8
  store i32 0, ptr %6, align 4
  %.promoted2 = load i32, ptr %6, align 1
  br label %29

29:                                               ; preds = %33, %26
  %30 = phi i32 [ %34, %33 ], [ %.promoted2, %26 ]
  %31 = phi i32 [ %34, %33 ], [ 0, %26 ]
  %32 = icmp slt i32 %31, 30
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  call void @compdecomp(ptr noundef %28, i64 noundef 10000000)
  %34 = add nsw i32 %31, 1
  br label %29, !llvm.loop !26

35:                                               ; preds = %29
  %.lcssa3 = phi i32 [ %30, %29 ]
  store i32 %.lcssa3, ptr %6, align 1
  store double 0.000000e+00, ptr %9, align 8
  call void @free(ptr noundef %28)
  %36 = icmp ne i8 %27, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = call ptr @__acrt_iob_func(i32 noundef 1)
  %39 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef @.str.5, double noundef 0.000000e+00) #7
  br label %43

40:                                               ; preds = %35
  %41 = call ptr @__acrt_iob_func(i32 noundef 1)
  %42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef @.str.6, double noundef 0.000000e+00) #7
  br label %43

43:                                               ; preds = %40, %37
  %44 = call ptr @__acrt_iob_func(i32 noundef 1)
  %45 = call i32 @fflush(ptr noundef %44)
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
  %5 = sdiv i32 %4, 127773
  store i32 %5, ptr %1, align 4
  %6 = mul nsw i32 %5, 127773
  %7 = sub nsw i32 %4, %6
  %8 = mul nsw i32 16807, %7
  %9 = mul nsw i32 2836, %5
  %10 = sub nsw i32 %8, %9
  store i32 %10, ptr @seed, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = add nsw i32 %10, 2147483647
  store i32 %13, ptr @seed, align 4
  br label %14

14:                                               ; preds = %12, %0
  %15 = phi i32 [ %13, %12 ], [ %10, %0 ]
  %16 = srem i32 %15, 32
  %17 = sext i32 %16 to i64
  store i64 %17, ptr %2, align 8
  %18 = xor i32 %15, 123459876
  store i32 %18, ptr @seed, align 4
  ret i64 %17
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
