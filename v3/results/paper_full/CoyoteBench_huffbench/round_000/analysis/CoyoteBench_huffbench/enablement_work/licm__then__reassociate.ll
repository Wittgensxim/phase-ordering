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
  call void @llvm.memset.p0.i64(ptr align 1 %36, i8 0, i64 %38, i1 false)
  %39 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %39, i8 0, i64 4096, i1 false)
  %40 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %40, i8 0, i64 2048, i1 false)
  %41 = getelementptr inbounds [512 x i32], ptr %17, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %41, i8 0, i64 2048, i1 false)
  %42 = getelementptr inbounds [256 x i32], ptr %18, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %42, i8 0, i64 1024, i1 false)
  %43 = getelementptr inbounds [256 x i8], ptr %19, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %43, i8 0, i64 256, i1 false)
  store i64 0, ptr %5, align 8
  %44 = load i64, ptr %4, align 8
  %.promoted = load i64, ptr %5, align 8
  %.promoted1 = load ptr, ptr %13, align 8
  br label %45

45:                                               ; preds = %56, %2
  %46 = phi ptr [ %55, %56 ], [ %.promoted1, %2 ]
  %47 = phi i64 [ %57, %56 ], [ %.promoted, %2 ]
  %48 = icmp ult i64 %47, %44
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load i8, ptr %46, align 1
  %51 = zext i8 %50 to i64
  %52 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %51
  %53 = load i64, ptr %52, align 8
  %54 = add i64 %53, 1
  store i64 %54, ptr %52, align 8
  %55 = getelementptr inbounds nuw i8, ptr %46, i32 1
  br label %56

56:                                               ; preds = %49
  %57 = add i64 %47, 1
  br label %45, !llvm.loop !9

58:                                               ; preds = %45
  %.lcssa2 = phi ptr [ %46, %45 ]
  %.lcssa = phi i64 [ %47, %45 ]
  store i64 %.lcssa, ptr %5, align 8
  store ptr %.lcssa2, ptr %13, align 8
  store i64 0, ptr %7, align 8
  store i64 0, ptr %5, align 8
  %.promoted3 = load i64, ptr %5, align 8
  %.promoted5 = load i64, ptr %7, align 8
  br label %59

59:                                               ; preds = %72, %58
  %60 = phi i64 [ %71, %72 ], [ %.promoted5, %58 ]
  %61 = phi i64 [ %73, %72 ], [ %.promoted3, %58 ]
  %62 = icmp ult i64 %61, 256
  br i1 %62, label %63, label %74

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

70:                                               ; preds = %67, %63
  %71 = phi i64 [ %69, %67 ], [ %60, %63 ]
  br label %72

72:                                               ; preds = %70
  %73 = add i64 %61, 1
  br label %59, !llvm.loop !10

74:                                               ; preds = %59
  %.lcssa6 = phi i64 [ %60, %59 ]
  %.lcssa4 = phi i64 [ %61, %59 ]
  store i64 %.lcssa4, ptr %5, align 8
  store i64 %.lcssa6, ptr %7, align 8
  %75 = load i64, ptr %7, align 8
  store i64 %75, ptr %5, align 8
  %76 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  %77 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %78 = load i64, ptr %7, align 8
  %79 = trunc i64 %78 to i32
  %.promoted7 = load i64, ptr %5, align 8
  br label %80

80:                                               ; preds = %85, %74
  %81 = phi i64 [ %86, %85 ], [ %.promoted7, %74 ]
  %82 = icmp ugt i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = trunc i64 %81 to i32
  call void @heap_adjust(ptr noundef %76, ptr noundef %77, i32 noundef %79, i32 noundef %84)
  br label %85

85:                                               ; preds = %83
  %86 = add i64 %81, -1
  br label %80, !llvm.loop !11

87:                                               ; preds = %80
  %.lcssa8 = phi i64 [ %81, %80 ]
  store i64 %.lcssa8, ptr %5, align 8
  %88 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %89 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %90 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  %91 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %92 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %93 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %94 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %95 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  %96 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %.promoted9 = load i64, ptr %7, align 8
  %.promoted11 = load i64, ptr %20, align 8
  br label %97

97:                                               ; preds = %101, %87
  %98 = phi i64 [ %103, %101 ], [ %.promoted11, %87 ]
  %99 = phi i64 [ %102, %101 ], [ %.promoted9, %87 ]
  %100 = icmp ugt i64 %99, 1
  br i1 %100, label %101, label %124

101:                                              ; preds = %97
  %102 = add i64 %99, -1
  %103 = load i64, ptr %88, align 16
  %104 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %102
  %105 = load i64, ptr %104, align 8
  store i64 %105, ptr %89, align 16
  %106 = trunc i64 %102 to i32
  call void @heap_adjust(ptr noundef %90, ptr noundef %91, i32 noundef %106, i32 noundef 1)
  %107 = load i64, ptr %92, align 16
  %108 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %107
  %109 = load i64, ptr %108, align 8
  %110 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %103
  %111 = load i64, ptr %110, align 8
  %112 = add i64 %111, %109
  %113 = add i64 %102, 256
  %114 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %113
  store i64 %112, ptr %114, align 8
  %115 = add i64 %102, 256
  %116 = trunc i64 %115 to i32
  %117 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %103
  store i32 %116, ptr %117, align 4
  %118 = sub i64 -256, %102
  %119 = trunc i64 %118 to i32
  %120 = load i64, ptr %93, align 16
  %121 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %120
  store i32 %119, ptr %121, align 4
  %122 = add i64 %102, 256
  store i64 %122, ptr %94, align 16
  %123 = trunc i64 %102 to i32
  call void @heap_adjust(ptr noundef %95, ptr noundef %96, i32 noundef %123, i32 noundef 1)
  br label %97, !llvm.loop !12

124:                                              ; preds = %97
  %.lcssa12 = phi i64 [ %98, %97 ]
  %.lcssa10 = phi i64 [ %99, %97 ]
  store i64 %.lcssa10, ptr %7, align 8
  store i64 %.lcssa12, ptr %20, align 8
  %125 = load i64, ptr %7, align 8
  %126 = add i64 %125, 256
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
  br label %128

128:                                              ; preds = %172, %124
  %.lcssa2042 = phi i64 [ %.lcssa2040, %172 ], [ %.promoted39, %124 ]
  %.lcssa1838 = phi i64 [ %.lcssa1836, %172 ], [ %.promoted35, %124 ]
  %.lcssa1434 = phi i32 [ %.lcssa1433, %172 ], [ %.promoted32, %124 ]
  %.lcssa1831 = phi i64 [ %.lcssa1830, %172 ], [ %.promoted29, %124 ]
  %.lcssa1628 = phi i64 [ %.lcssa1627, %172 ], [ %.promoted26, %124 ]
  %.lcssa2025 = phi i64 [ %.lcssa2024, %172 ], [ %.promoted23, %124 ]
  %129 = phi i64 [ %173, %172 ], [ %.promoted21, %124 ]
  %130 = icmp ult i64 %129, 256
  br i1 %130, label %131, label %174

131:                                              ; preds = %128
  %132 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %129
  %133 = load i64, ptr %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %129
  store i32 0, ptr %136, align 4
  %137 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %129
  store i8 0, ptr %137, align 1
  br label %171

138:                                              ; preds = %131
  %139 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %129
  %140 = load i32, ptr %139, align 4
  br label %141

141:                                              ; preds = %152, %138
  %142 = phi i64 [ %159, %152 ], [ 0, %138 ]
  %143 = phi i64 [ %153, %152 ], [ 0, %138 ]
  %144 = phi i64 [ %158, %152 ], [ 1, %138 ]
  %145 = phi i32 [ %157, %152 ], [ %140, %138 ]
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %160

147:                                              ; preds = %141
  %148 = icmp slt i32 %145, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %147
  %150 = add i64 %144, %143
  %151 = sub nsw i32 0, %145
  br label %152

152:                                              ; preds = %149, %147
  %153 = phi i64 [ %150, %149 ], [ %143, %147 ]
  %154 = phi i32 [ %151, %149 ], [ %145, %147 ]
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [512 x i32], ptr %17, i64 0, i64 %155
  %157 = load i32, ptr %156, align 4
  %158 = shl i64 %144, 1
  %159 = add i64 %142, 1
  br label %141, !llvm.loop !13

160:                                              ; preds = %141
  %.lcssa20 = phi i64 [ %142, %141 ]
  %.lcssa18 = phi i64 [ %143, %141 ]
  %.lcssa16 = phi i64 [ %144, %141 ]
  %.lcssa14 = phi i32 [ %145, %141 ]
  %161 = trunc i64 %.lcssa18 to i32
  %162 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %129
  store i32 %161, ptr %162, align 4
  %163 = trunc i64 %.lcssa20 to i8
  %164 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %129
  store i8 %163, ptr %164, align 1
  %165 = icmp ugt i64 %.lcssa18, %.lcssa1838
  br i1 %165, label %166, label %167

166:                                              ; preds = %160
  br label %167

167:                                              ; preds = %166, %160
  %.lcssa1837 = phi i64 [ %.lcssa18, %166 ], [ %.lcssa1838, %160 ]
  %168 = icmp ugt i64 %.lcssa20, %.lcssa2042
  br i1 %168, label %169, label %170

169:                                              ; preds = %167
  br label %170

170:                                              ; preds = %169, %167
  %.lcssa2041 = phi i64 [ %.lcssa20, %169 ], [ %.lcssa2042, %167 ]
  br label %171

171:                                              ; preds = %170, %135
  %.lcssa2040 = phi i64 [ %.lcssa2041, %170 ], [ %.lcssa2042, %135 ]
  %.lcssa1836 = phi i64 [ %.lcssa1837, %170 ], [ %.lcssa1838, %135 ]
  %.lcssa1433 = phi i32 [ %.lcssa14, %170 ], [ %.lcssa1434, %135 ]
  %.lcssa1830 = phi i64 [ %.lcssa18, %170 ], [ %.lcssa1831, %135 ]
  %.lcssa1627 = phi i64 [ %.lcssa16, %170 ], [ %.lcssa1628, %135 ]
  %.lcssa2024 = phi i64 [ %.lcssa20, %170 ], [ %.lcssa2025, %135 ]
  br label %172

172:                                              ; preds = %171
  %173 = add i64 %129, 1
  br label %128, !llvm.loop !14

174:                                              ; preds = %128
  %.lcssa2042.lcssa = phi i64 [ %.lcssa2042, %128 ]
  %.lcssa1838.lcssa = phi i64 [ %.lcssa1838, %128 ]
  %.lcssa1434.lcssa = phi i32 [ %.lcssa1434, %128 ]
  %.lcssa1831.lcssa = phi i64 [ %.lcssa1831, %128 ]
  %.lcssa1628.lcssa = phi i64 [ %.lcssa1628, %128 ]
  %.lcssa2025.lcssa = phi i64 [ %.lcssa2025, %128 ]
  %.lcssa22 = phi i64 [ %129, %128 ]
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
  br label %191

191:                                              ; preds = %253, %187
  %.lcssa5376 = phi i64 [ %.lcssa53, %253 ], [ %.promoted75, %187 ]
  %.lcssa5073 = phi i8 [ %.lcssa50, %253 ], [ %.promoted72, %187 ]
  %.lcssa4770 = phi i32 [ %.lcssa47, %253 ], [ %.promoted69, %187 ]
  %.lcssa4468 = phi i64 [ %.lcssa44, %253 ], [ %.promoted67, %187 ]
  %.lcssa5665 = phi i64 [ %.lcssa56, %253 ], [ %.promoted64, %187 ]
  %192 = phi ptr [ %252, %253 ], [ %.promoted61, %187 ]
  %193 = phi i64 [ %254, %253 ], [ %.promoted58, %187 ]
  %194 = icmp ult i64 %193, %188
  br i1 %194, label %195, label %255

195:                                              ; preds = %191
  %196 = load i8, ptr %192, align 1
  %197 = zext i8 %196 to i64
  %198 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %197
  %199 = load i8, ptr %198, align 1
  %200 = zext i8 %199 to i32
  %201 = sub nsw i32 %200, 1
  %202 = shl i32 1, %201
  %203 = sext i32 %202 to i64
  br label %204

204:                                              ; preds = %249, %195
  %205 = phi i64 [ %248, %249 ], [ %203, %195 ]
  %206 = phi i64 [ %232, %249 ], [ %.lcssa5376, %195 ]
  %207 = phi i8 [ %247, %249 ], [ %.lcssa5073, %195 ]
  %208 = phi i32 [ %234, %249 ], [ %.lcssa4770, %195 ]
  %209 = phi i64 [ %250, %249 ], [ 0, %195 ]
  %210 = load i8, ptr %192, align 1
  %211 = zext i8 %210 to i64
  %212 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %211
  %213 = load i8, ptr %212, align 1
  %214 = zext i8 %213 to i64
  %215 = icmp ult i64 %209, %214
  br i1 %215, label %216, label %251

216:                                              ; preds = %204
  %217 = icmp eq i32 %208, 7
  br i1 %217, label %218, label %226

218:                                              ; preds = %216
  %219 = getelementptr inbounds nuw i8, ptr %189, i64 %206
  store i8 %207, ptr %219, align 1
  %220 = add i64 %206, 1
  %221 = icmp eq i64 %220, %190
  br i1 %221, label %222, label %225

222:                                              ; preds = %218
  %.lcssa5376.lcssa77 = phi i64 [ %.lcssa5376, %218 ]
  %.lcssa5073.lcssa74 = phi i8 [ %.lcssa5073, %218 ]
  %.lcssa4770.lcssa71 = phi i32 [ %.lcssa4770, %218 ]
  %.lcssa66 = phi i64 [ %203, %218 ]
  %.lcssa63 = phi ptr [ %192, %218 ]
  %.lcssa60 = phi i64 [ %193, %218 ]
  %.lcssa57 = phi i64 [ %205, %218 ]
  %.lcssa54 = phi i64 [ %220, %218 ]
  %.lcssa51 = phi i8 [ %207, %218 ]
  %.lcssa48 = phi i32 [ %208, %218 ]
  %.lcssa45 = phi i64 [ %209, %218 ]
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
  %223 = call ptr @__acrt_iob_func(i32 noundef 2)
  %224 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %223, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

225:                                              ; preds = %218
  br label %231

226:                                              ; preds = %216
  %227 = add nsw i32 %208, 1
  %228 = sext i8 %207 to i32
  %229 = shl i32 %228, 1
  %230 = trunc i32 %229 to i8
  br label %231

231:                                              ; preds = %226, %225
  %232 = phi i64 [ %206, %226 ], [ %220, %225 ]
  %233 = phi i8 [ %230, %226 ], [ 0, %225 ]
  %234 = phi i32 [ %227, %226 ], [ 0, %225 ]
  %235 = load i8, ptr %192, align 1
  %236 = zext i8 %235 to i64
  %237 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %236
  %238 = load i32, ptr %237, align 4
  %239 = zext i32 %238 to i64
  %240 = and i64 %239, %205
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %231
  %243 = sext i8 %233 to i32
  %244 = or i32 %243, 1
  %245 = trunc i32 %244 to i8
  br label %246

246:                                              ; preds = %242, %231
  %247 = phi i8 [ %245, %242 ], [ %233, %231 ]
  %248 = lshr i64 %205, 1
  br label %249

249:                                              ; preds = %246
  %250 = add i64 %209, 1
  br label %204, !llvm.loop !15

251:                                              ; preds = %204
  %.lcssa56 = phi i64 [ %205, %204 ]
  %.lcssa53 = phi i64 [ %206, %204 ]
  %.lcssa50 = phi i8 [ %207, %204 ]
  %.lcssa47 = phi i32 [ %208, %204 ]
  %.lcssa44 = phi i64 [ %209, %204 ]
  %252 = getelementptr inbounds nuw i8, ptr %192, i32 1
  br label %253

253:                                              ; preds = %251
  %254 = add i64 %193, 1
  br label %191, !llvm.loop !16

255:                                              ; preds = %191
  %.lcssa5376.lcssa = phi i64 [ %.lcssa5376, %191 ]
  %.lcssa5073.lcssa = phi i8 [ %.lcssa5073, %191 ]
  %.lcssa4770.lcssa = phi i32 [ %.lcssa4770, %191 ]
  %.lcssa4468.lcssa = phi i64 [ %.lcssa4468, %191 ]
  %.lcssa5665.lcssa = phi i64 [ %.lcssa5665, %191 ]
  %.lcssa62 = phi ptr [ %192, %191 ]
  %.lcssa59 = phi i64 [ %193, %191 ]
  store i64 %.lcssa59, ptr %6, align 8
  store ptr %.lcssa62, ptr %13, align 8
  store i64 %.lcssa5665.lcssa, ptr %8, align 8
  store i64 %.lcssa4468.lcssa, ptr %5, align 8
  store i32 %.lcssa4770.lcssa, ptr %28, align 4
  store i8 %.lcssa5073.lcssa, ptr %27, align 1
  store i64 %.lcssa5376.lcssa, ptr %26, align 8
  %256 = load i32, ptr %28, align 4
  %257 = sub nsw i32 7, %256
  %258 = load i8, ptr %27, align 1
  %259 = sext i8 %258 to i32
  %260 = shl i32 %259, %257
  %261 = trunc i32 %260 to i8
  store i8 %261, ptr %27, align 1
  %262 = load i8, ptr %27, align 1
  %263 = load ptr, ptr %14, align 8
  %264 = load i64, ptr %26, align 8
  %265 = getelementptr inbounds nuw i8, ptr %263, i64 %264
  store i8 %262, ptr %265, align 1
  %266 = load i64, ptr %26, align 8
  %267 = add i64 %266, 1
  store i64 %267, ptr %26, align 8
  %268 = getelementptr inbounds [256 x i32], ptr %29, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %268, i8 0, i64 1024, i1 false)
  %269 = getelementptr inbounds [256 x i8], ptr %30, i64 0, i64 0
  store ptr %269, ptr %31, align 8
  store i64 0, ptr %6, align 8
  %.promoted84 = load i64, ptr %6, align 8
  %.promoted86 = load ptr, ptr %31, align 8
  %.promoted88 = load i32, ptr %9, align 4
  %.promoted91 = load i64, ptr %8, align 8
  %.promoted94 = load i64, ptr %5, align 8
  br label %270

270:                                              ; preds = %317, %255
  %.lcssa7996 = phi i64 [ %.lcssa7995, %317 ], [ %.promoted94, %255 ]
  %.lcssa8393 = phi i64 [ %.lcssa8392, %317 ], [ %.promoted91, %255 ]
  %.lcssa8190 = phi i32 [ %.lcssa8189, %317 ], [ %.promoted88, %255 ]
  %271 = phi ptr [ %276, %317 ], [ %.promoted86, %255 ]
  %272 = phi i64 [ %318, %317 ], [ %.promoted84, %255 ]
  %273 = icmp ult i64 %272, 256
  br i1 %273, label %274, label %319

274:                                              ; preds = %270
  %275 = trunc i64 %272 to i8
  store i8 %275, ptr %271, align 1
  %276 = getelementptr inbounds nuw i8, ptr %271, i32 1
  %277 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %272
  %278 = load i32, ptr %277, align 4
  %279 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %272
  %280 = load i8, ptr %279, align 1
  %281 = zext i8 %280 to i32
  %282 = or i32 %281, %278
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %316

284:                                              ; preds = %274
  %285 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %272
  %286 = load i8, ptr %285, align 1
  %287 = zext i8 %286 to i32
  %288 = sub nsw i32 %287, 1
  %289 = shl i32 1, %288
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %272
  %292 = load i8, ptr %291, align 1
  %293 = zext i8 %292 to i64
  %294 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %272
  br label %295

295:                                              ; preds = %312, %284
  %296 = phi i64 [ %311, %312 ], [ %290, %284 ]
  %297 = phi i32 [ %310, %312 ], [ 0, %284 ]
  %298 = phi i64 [ %313, %312 ], [ 0, %284 ]
  %299 = icmp ult i64 %298, %293
  br i1 %299, label %300, label %314

300:                                              ; preds = %295
  %301 = mul i32 %297, 2
  %302 = add i32 %301, 1
  %303 = load i32, ptr %294, align 4
  %304 = zext i32 %303 to i64
  %305 = and i64 %304, %296
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %300
  %308 = add i32 %302, 1
  br label %309

309:                                              ; preds = %307, %300
  %310 = phi i32 [ %308, %307 ], [ %302, %300 ]
  %311 = lshr i64 %296, 1
  br label %312

312:                                              ; preds = %309
  %313 = add i64 %298, 1
  br label %295, !llvm.loop !17

314:                                              ; preds = %295
  %.lcssa83 = phi i64 [ %296, %295 ]
  %.lcssa81 = phi i32 [ %297, %295 ]
  %.lcssa79 = phi i64 [ %298, %295 ]
  %315 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %272
  store i32 %.lcssa81, ptr %315, align 4
  br label %316

316:                                              ; preds = %314, %274
  %.lcssa7995 = phi i64 [ %.lcssa79, %314 ], [ %.lcssa7996, %274 ]
  %.lcssa8392 = phi i64 [ %.lcssa83, %314 ], [ %.lcssa8393, %274 ]
  %.lcssa8189 = phi i32 [ %.lcssa81, %314 ], [ %.lcssa8190, %274 ]
  br label %317

317:                                              ; preds = %316
  %318 = add i64 %272, 1
  br label %270, !llvm.loop !18

319:                                              ; preds = %270
  %.lcssa7996.lcssa = phi i64 [ %.lcssa7996, %270 ]
  %.lcssa8393.lcssa = phi i64 [ %.lcssa8393, %270 ]
  %.lcssa8190.lcssa = phi i32 [ %.lcssa8190, %270 ]
  %.lcssa87 = phi ptr [ %271, %270 ]
  %.lcssa85 = phi i64 [ %272, %270 ]
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
  br label %320

320:                                              ; preds = %353, %319
  %.lcssa98106 = phi i64 [ %.lcssa98, %353 ], [ %.promoted105, %319 ]
  %321 = phi i8 [ %329, %353 ], [ %.promoted103, %319 ]
  %322 = phi i32 [ %327, %353 ], [ %.promoted101, %319 ]
  %323 = phi i64 [ %354, %353 ], [ %.promoted99, %319 ]
  %324 = icmp ult i64 %323, 256
  br i1 %324, label %325, label %355

325:                                              ; preds = %320
  %326 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %323
  %327 = load i32, ptr %326, align 4
  %328 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %323
  %329 = load i8, ptr %328, align 1
  br label %330

330:                                              ; preds = %340, %325
  %331 = phi i64 [ %349, %340 ], [ %323, %325 ]
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %338

333:                                              ; preds = %330
  %334 = sub i64 %331, 1
  %335 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %334
  %336 = load i32, ptr %335, align 4
  %337 = icmp ugt i32 %336, %327
  br label %338

338:                                              ; preds = %333, %330
  %339 = phi i1 [ false, %330 ], [ %337, %333 ]
  br i1 %339, label %340, label %350

340:                                              ; preds = %338
  %341 = sub i64 %331, 1
  %342 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %341
  %343 = load i32, ptr %342, align 4
  %344 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %331
  store i32 %343, ptr %344, align 4
  %345 = sub i64 %331, 1
  %346 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %345
  %347 = load i8, ptr %346, align 1
  %348 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %331
  store i8 %347, ptr %348, align 1
  %349 = add i64 %331, -1
  br label %330, !llvm.loop !19

350:                                              ; preds = %338
  %.lcssa98 = phi i64 [ %331, %338 ]
  %351 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %.lcssa98
  store i32 %327, ptr %351, align 4
  %352 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %.lcssa98
  store i8 %329, ptr %352, align 1
  br label %353

353:                                              ; preds = %350
  %354 = add i64 %323, 1
  br label %320, !llvm.loop !20

355:                                              ; preds = %320
  %.lcssa98106.lcssa = phi i64 [ %.lcssa98106, %320 ]
  %.lcssa104 = phi i8 [ %321, %320 ]
  %.lcssa102 = phi i32 [ %322, %320 ]
  %.lcssa100 = phi i64 [ %323, %320 ]
  store i64 %.lcssa100, ptr %5, align 8
  store i32 %.lcssa102, ptr %10, align 4
  store i8 %.lcssa104, ptr %11, align 1
  store i64 %.lcssa98106.lcssa, ptr %6, align 8
  store i64 0, ptr %6, align 8
  %.promoted107 = load i64, ptr %6, align 8
  br label %356

356:                                              ; preds = %362, %355
  %357 = phi i64 [ %363, %362 ], [ %.promoted107, %355 ]
  %358 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %357
  %359 = load i32, ptr %358, align 4
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %364

361:                                              ; preds = %356
  br label %362

362:                                              ; preds = %361
  %363 = add i64 %357, 1
  br label %356, !llvm.loop !21

364:                                              ; preds = %356
  %.lcssa108 = phi i64 [ %357, %356 ]
  store i64 %.lcssa108, ptr %6, align 8
  store i32 0, ptr %9, align 4
  %365 = load i64, ptr %6, align 8
  store i64 %365, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  %366 = load ptr, ptr %14, align 8
  store ptr %366, ptr %12, align 8
  %367 = load ptr, ptr %3, align 8
  store ptr %367, ptr %13, align 8
  %368 = load i64, ptr %4, align 8
  %369 = load i64, ptr %6, align 8
  %.promoted111 = load i64, ptr %7, align 8
  %.promoted113 = load i32, ptr %9, align 4
  %.promoted115 = load ptr, ptr %12, align 8
  %.promoted117 = load i64, ptr %8, align 8
  %.promoted119 = load i64, ptr %5, align 8
  %.promoted122 = load ptr, ptr %13, align 8
  br label %370

370:                                              ; preds = %413, %364
  %371 = phi ptr [ %405, %413 ], [ %.promoted122, %364 ]
  %.lcssa110120 = phi i64 [ %.lcssa110121, %413 ], [ %.promoted119, %364 ]
  %372 = phi i64 [ %414, %413 ], [ %.promoted117, %364 ]
  %373 = phi ptr [ %415, %413 ], [ %.promoted115, %364 ]
  %374 = phi i32 [ %406, %413 ], [ %.promoted113, %364 ]
  %375 = phi i64 [ %407, %413 ], [ %.promoted111, %364 ]
  %376 = icmp ult i64 %375, %368
  br i1 %376, label %377, label %416

377:                                              ; preds = %370
  %378 = mul i32 %374, 2
  %379 = add i32 %378, 1
  %380 = load i8, ptr %373, align 1
  %381 = zext i8 %380 to i64
  %382 = and i64 %381, %372
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %386

384:                                              ; preds = %377
  %385 = add i32 %379, 1
  br label %386

386:                                              ; preds = %384, %377
  %387 = phi i32 [ %385, %384 ], [ %379, %377 ]
  br label %388

388:                                              ; preds = %393, %386
  %389 = phi i64 [ %394, %393 ], [ %.lcssa110120, %386 ]
  %390 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %389
  %391 = load i32, ptr %390, align 4
  %392 = icmp ult i32 %391, %387
  br i1 %392, label %393, label %395

393:                                              ; preds = %388
  %394 = add i64 %389, 1
  br label %388, !llvm.loop !22

395:                                              ; preds = %388
  %.lcssa110 = phi i64 [ %389, %388 ]
  %396 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %.lcssa110
  %397 = load i32, ptr %396, align 4
  %398 = icmp eq i32 %387, %397
  br i1 %398, label %399, label %404

399:                                              ; preds = %395
  %400 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %.lcssa110
  %401 = load i8, ptr %400, align 1
  store i8 %401, ptr %371, align 1
  %402 = getelementptr inbounds nuw i8, ptr %371, i32 1
  %403 = add i64 %375, 1
  br label %404

404:                                              ; preds = %399, %395
  %405 = phi ptr [ %402, %399 ], [ %371, %395 ]
  %.lcssa110121 = phi i64 [ %369, %399 ], [ %.lcssa110, %395 ]
  %406 = phi i32 [ 0, %399 ], [ %387, %395 ]
  %407 = phi i64 [ %403, %399 ], [ %375, %395 ]
  %408 = icmp ugt i64 %372, 1
  br i1 %408, label %409, label %411

409:                                              ; preds = %404
  %410 = lshr i64 %372, 1
  br label %413

411:                                              ; preds = %404
  %412 = getelementptr inbounds nuw i8, ptr %373, i32 1
  br label %413

413:                                              ; preds = %411, %409
  %414 = phi i64 [ 128, %411 ], [ %410, %409 ]
  %415 = phi ptr [ %412, %411 ], [ %373, %409 ]
  br label %370, !llvm.loop !23

416:                                              ; preds = %370
  %.lcssa123 = phi ptr [ %371, %370 ]
  %.lcssa110120.lcssa = phi i64 [ %.lcssa110120, %370 ]
  %.lcssa118 = phi i64 [ %372, %370 ]
  %.lcssa116 = phi ptr [ %373, %370 ]
  %.lcssa114 = phi i32 [ %374, %370 ]
  %.lcssa112 = phi i64 [ %375, %370 ]
  store i64 %.lcssa112, ptr %7, align 8
  store i32 %.lcssa114, ptr %9, align 4
  store ptr %.lcssa116, ptr %12, align 8
  store i64 %.lcssa118, ptr %8, align 8
  store i64 %.lcssa110120.lcssa, ptr %5, align 8
  store ptr %.lcssa123, ptr %13, align 8
  %417 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %417)
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
  %factor = mul i32 %35, 2
  %38 = icmp slt i32 %factor, %20
  br i1 %38, label %39, label %54

39:                                               ; preds = %37
  %40 = sub nsw i32 %factor, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, ptr %22, i64 %41
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds nuw i64, ptr %21, i64 %43
  %45 = load i64, ptr %44, align 8
  %46 = sext i32 %factor to i64
  %47 = getelementptr inbounds i64, ptr %24, i64 %46
  %48 = load i64, ptr %47, align 8
  %49 = getelementptr inbounds nuw i64, ptr %23, i64 %48
  %50 = load i64, ptr %49, align 8
  %51 = icmp ugt i64 %45, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %39
  %53 = add nsw i32 %factor, 1
  br label %54

54:                                               ; preds = %52, %39, %37
  %55 = phi i32 [ %53, %52 ], [ %factor, %39 ], [ %factor, %37 ]
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
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  store i32 1, ptr %6, align 4
  %13 = load i32, ptr %4, align 4
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds ptr, ptr %14, i64 1
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
  %11 = mul nsw i32 %10, 16807
  %12 = load i32, ptr %1, align 4
  %13 = mul nsw i32 %12, 2836
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
