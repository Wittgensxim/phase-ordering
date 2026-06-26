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
  store ptr %8, ptr %5, align 8
  store i32 0, ptr %6, align 4
  %9 = load i64, ptr %2, align 8
  %10 = load ptr, ptr %3, align 8
  %.promoted = load i32, ptr %6, align 4
  %.promoted1 = load ptr, ptr %5, align 8
  br label %11

11:                                               ; preds = %21, %1
  %12 = phi ptr [ %20, %21 ], [ %.promoted1, %1 ]
  %13 = phi i32 [ %22, %21 ], [ %.promoted, %1 ]
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, %9
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = call i64 @random4()
  %18 = getelementptr inbounds nuw i8, ptr %10, i64 %17
  %19 = load i8, ptr %18, align 1
  store i8 %19, ptr %12, align 1
  %20 = getelementptr inbounds nuw i8, ptr %12, i32 1
  br label %21

21:                                               ; preds = %16
  %22 = add nsw i32 %13, 1
  br label %11, !llvm.loop !7

23:                                               ; preds = %11
  %.lcssa2 = phi ptr [ %12, %11 ]
  %.lcssa = phi i32 [ %13, %11 ]
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
  %36 = load i64, ptr %4, align 8
  %37 = add i64 %36, 1
  call void @llvm.memset.p0.i64(ptr align 1 %35, i8 0, i64 %37, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %15, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %16, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %17, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %18, i8 0, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %19, i8 0, i64 256, i1 false)
  store i64 0, ptr %5, align 8
  %38 = load i64, ptr %4, align 8
  %.promoted = load i64, ptr %5, align 8
  %.promoted8 = load ptr, ptr %13, align 8
  br label %39

39:                                               ; preds = %50, %2
  %40 = phi ptr [ %49, %50 ], [ %.promoted8, %2 ]
  %41 = phi i64 [ %51, %50 ], [ %.promoted, %2 ]
  %42 = icmp ult i64 %41, %38
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load i8, ptr %40, align 1
  %45 = zext i8 %44 to i64
  %46 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %45
  %47 = load i64, ptr %46, align 8
  %48 = add i64 %47, 1
  store i64 %48, ptr %46, align 8
  %49 = getelementptr inbounds nuw i8, ptr %40, i32 1
  br label %50

50:                                               ; preds = %43
  %51 = add i64 %41, 1
  br label %39, !llvm.loop !9

52:                                               ; preds = %39
  %.lcssa9 = phi ptr [ %40, %39 ]
  %.lcssa7 = phi i64 [ %41, %39 ]
  store i64 %.lcssa7, ptr %5, align 8
  store ptr %.lcssa9, ptr %13, align 8
  store i64 0, ptr %7, align 8
  store i64 0, ptr %5, align 8
  %.promoted10 = load i64, ptr %5, align 8
  %.promoted12 = load i64, ptr %7, align 8
  br label %53

53:                                               ; preds = %66, %52
  %54 = phi i64 [ %65, %66 ], [ %.promoted12, %52 ]
  %55 = phi i64 [ %67, %66 ], [ %.promoted10, %52 ]
  %56 = icmp ult i64 %55, 256
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %55
  %59 = load i64, ptr %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %54
  store i64 %55, ptr %62, align 8
  %63 = add i64 %54, 1
  br label %64

64:                                               ; preds = %61, %57
  %65 = phi i64 [ %63, %61 ], [ %54, %57 ]
  br label %66

66:                                               ; preds = %64
  %67 = add i64 %55, 1
  br label %53, !llvm.loop !10

68:                                               ; preds = %53
  %.lcssa13 = phi i64 [ %54, %53 ]
  %.lcssa11 = phi i64 [ %55, %53 ]
  store i64 %.lcssa11, ptr %5, align 8
  store i64 %.lcssa13, ptr %7, align 8
  %69 = load i64, ptr %7, align 8
  store i64 %69, ptr %5, align 8
  %70 = load i64, ptr %7, align 8
  %71 = trunc i64 %70 to i32
  %.promoted14 = load i64, ptr %5, align 8
  br label %72

72:                                               ; preds = %77, %68
  %73 = phi i64 [ %78, %77 ], [ %.promoted14, %68 ]
  %74 = icmp ugt i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = trunc i64 %73 to i32
  call void @heap_adjust(ptr noundef %15, ptr noundef %16, i32 noundef %71, i32 noundef %76)
  br label %77

77:                                               ; preds = %75
  %78 = add i64 %73, -1
  br label %72, !llvm.loop !11

79:                                               ; preds = %72
  %.lcssa15 = phi i64 [ %73, %72 ]
  store i64 %.lcssa15, ptr %5, align 8
  %.promoted16 = load i64, ptr %7, align 8
  %.promoted18 = load i64, ptr %20, align 8
  br label %80

80:                                               ; preds = %84, %79
  %81 = phi i64 [ %86, %84 ], [ %.promoted18, %79 ]
  %82 = phi i64 [ %85, %84 ], [ %.promoted16, %79 ]
  %83 = icmp ugt i64 %82, 1
  br i1 %83, label %84, label %107

84:                                               ; preds = %80
  %85 = add i64 %82, -1
  %86 = load i64, ptr %16, align 16
  %87 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %85
  %88 = load i64, ptr %87, align 8
  store i64 %88, ptr %16, align 16
  %89 = trunc i64 %85 to i32
  call void @heap_adjust(ptr noundef %15, ptr noundef %16, i32 noundef %89, i32 noundef 1)
  %90 = load i64, ptr %16, align 16
  %91 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %90
  %92 = load i64, ptr %91, align 8
  %93 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %86
  %94 = load i64, ptr %93, align 8
  %95 = add i64 %92, %94
  %96 = add i64 256, %85
  %97 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %96
  store i64 %95, ptr %97, align 8
  %98 = add i64 256, %85
  %99 = trunc i64 %98 to i32
  %100 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %86
  store i32 %99, ptr %100, align 4
  %101 = sub i64 -256, %85
  %102 = trunc i64 %101 to i32
  %103 = load i64, ptr %16, align 16
  %104 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %103
  store i32 %102, ptr %104, align 4
  %105 = add i64 256, %85
  store i64 %105, ptr %16, align 16
  %106 = trunc i64 %85 to i32
  call void @heap_adjust(ptr noundef %15, ptr noundef %16, i32 noundef %106, i32 noundef 1)
  br label %80, !llvm.loop !12

107:                                              ; preds = %80
  %.lcssa19 = phi i64 [ %81, %80 ]
  %.lcssa17 = phi i64 [ %82, %80 ]
  %.lcssa6 = phi i64 [ %82, %80 ]
  store i64 %.lcssa17, ptr %7, align 8
  store i64 %.lcssa19, ptr %20, align 8
  %108 = add i64 256, %.lcssa6
  %109 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %108
  store i32 0, ptr %109, align 4
  store i64 0, ptr %23, align 8
  store i64 0, ptr %24, align 8
  store i64 0, ptr %21, align 8
  %.promoted28 = load i64, ptr %21, align 8
  %.promoted30 = load i64, ptr %5, align 8
  %.promoted33 = load i64, ptr %6, align 8
  %.promoted36 = load i64, ptr %22, align 8
  %.promoted39 = load i32, ptr %25, align 4
  %.promoted42 = load i64, ptr %23, align 8
  %.promoted46 = load i64, ptr %24, align 8
  br label %110

110:                                              ; preds = %154, %107
  %.lcssa2749 = phi i64 [ %.lcssa2747, %154 ], [ %.promoted46, %107 ]
  %.lcssa2545 = phi i64 [ %.lcssa2543, %154 ], [ %.promoted42, %107 ]
  %.lcssa2141 = phi i32 [ %.lcssa2140, %154 ], [ %.promoted39, %107 ]
  %.lcssa2538 = phi i64 [ %.lcssa2537, %154 ], [ %.promoted36, %107 ]
  %.lcssa2335 = phi i64 [ %.lcssa2334, %154 ], [ %.promoted33, %107 ]
  %.lcssa2732 = phi i64 [ %.lcssa2731, %154 ], [ %.promoted30, %107 ]
  %111 = phi i64 [ %155, %154 ], [ %.promoted28, %107 ]
  %112 = icmp ult i64 %111, 256
  br i1 %112, label %113, label %156

113:                                              ; preds = %110
  %114 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %111
  %115 = load i64, ptr %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %111
  store i32 0, ptr %118, align 4
  %119 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %111
  store i8 0, ptr %119, align 1
  br label %153

120:                                              ; preds = %113
  %121 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %111
  %122 = load i32, ptr %121, align 4
  br label %123

123:                                              ; preds = %134, %120
  %124 = phi i64 [ %141, %134 ], [ 0, %120 ]
  %125 = phi i64 [ %135, %134 ], [ 0, %120 ]
  %126 = phi i64 [ %140, %134 ], [ 1, %120 ]
  %127 = phi i32 [ %139, %134 ], [ %122, %120 ]
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %123
  %130 = icmp slt i32 %127, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %129
  %132 = add i64 %125, %126
  %133 = sub nsw i32 0, %127
  br label %134

134:                                              ; preds = %131, %129
  %135 = phi i64 [ %132, %131 ], [ %125, %129 ]
  %136 = phi i32 [ %133, %131 ], [ %127, %129 ]
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [512 x i32], ptr %17, i64 0, i64 %137
  %139 = load i32, ptr %138, align 4
  %140 = shl i64 %126, 1
  %141 = add i64 %124, 1
  br label %123, !llvm.loop !13

142:                                              ; preds = %123
  %.lcssa27 = phi i64 [ %124, %123 ]
  %.lcssa25 = phi i64 [ %125, %123 ]
  %.lcssa23 = phi i64 [ %126, %123 ]
  %.lcssa21 = phi i32 [ %127, %123 ]
  %143 = trunc i64 %.lcssa25 to i32
  %144 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %111
  store i32 %143, ptr %144, align 4
  %145 = trunc i64 %.lcssa27 to i8
  %146 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %111
  store i8 %145, ptr %146, align 1
  %147 = icmp ugt i64 %.lcssa25, %.lcssa2545
  br i1 %147, label %148, label %149

148:                                              ; preds = %142
  br label %149

149:                                              ; preds = %148, %142
  %.lcssa2544 = phi i64 [ %.lcssa25, %148 ], [ %.lcssa2545, %142 ]
  %150 = icmp ugt i64 %.lcssa27, %.lcssa2749
  br i1 %150, label %151, label %152

151:                                              ; preds = %149
  br label %152

152:                                              ; preds = %151, %149
  %.lcssa2748 = phi i64 [ %.lcssa27, %151 ], [ %.lcssa2749, %149 ]
  br label %153

153:                                              ; preds = %152, %117
  %.lcssa2747 = phi i64 [ %.lcssa2748, %152 ], [ %.lcssa2749, %117 ]
  %.lcssa2543 = phi i64 [ %.lcssa2544, %152 ], [ %.lcssa2545, %117 ]
  %.lcssa2140 = phi i32 [ %.lcssa21, %152 ], [ %.lcssa2141, %117 ]
  %.lcssa2537 = phi i64 [ %.lcssa25, %152 ], [ %.lcssa2538, %117 ]
  %.lcssa2334 = phi i64 [ %.lcssa23, %152 ], [ %.lcssa2335, %117 ]
  %.lcssa2731 = phi i64 [ %.lcssa27, %152 ], [ %.lcssa2732, %117 ]
  br label %154

154:                                              ; preds = %153
  %155 = add i64 %111, 1
  br label %110, !llvm.loop !14

156:                                              ; preds = %110
  %.lcssa2749.lcssa = phi i64 [ %.lcssa2749, %110 ]
  %.lcssa2545.lcssa = phi i64 [ %.lcssa2545, %110 ]
  %.lcssa2141.lcssa = phi i32 [ %.lcssa2141, %110 ]
  %.lcssa2538.lcssa = phi i64 [ %.lcssa2538, %110 ]
  %.lcssa2335.lcssa = phi i64 [ %.lcssa2335, %110 ]
  %.lcssa2732.lcssa = phi i64 [ %.lcssa2732, %110 ]
  %.lcssa29 = phi i64 [ %111, %110 ]
  store i64 %.lcssa29, ptr %21, align 8
  store i64 %.lcssa2732.lcssa, ptr %5, align 8
  store i64 %.lcssa2335.lcssa, ptr %6, align 8
  store i64 %.lcssa2538.lcssa, ptr %22, align 8
  store i32 %.lcssa2141.lcssa, ptr %25, align 4
  store i64 %.lcssa2545.lcssa, ptr %23, align 8
  store i64 %.lcssa2749.lcssa, ptr %24, align 8
  %157 = load i64, ptr %24, align 8
  %158 = icmp ugt i64 %157, 32
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = call ptr @__acrt_iob_func(i32 noundef 2)
  %161 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %160, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

162:                                              ; preds = %156
  store i64 0, ptr %26, align 8
  store i8 0, ptr %27, align 1
  store i32 -1, ptr %28, align 4
  %163 = load ptr, ptr %3, align 8
  store ptr %163, ptr %13, align 8
  %164 = load i64, ptr %23, align 8
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %162
  %167 = call ptr @__acrt_iob_func(i32 noundef 2)
  %168 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %167, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

169:                                              ; preds = %162
  store i64 0, ptr %6, align 8
  %170 = load i64, ptr %4, align 8
  %171 = load ptr, ptr %14, align 8
  %172 = load i64, ptr %4, align 8
  %.promoted65 = load i64, ptr %6, align 8
  %.promoted68 = load ptr, ptr %13, align 8
  %.promoted71 = load i64, ptr %8, align 8
  %.promoted74 = load i64, ptr %5, align 8
  %.promoted76 = load i32, ptr %28, align 4
  %.promoted79 = load i8, ptr %27, align 1
  %.promoted82 = load i64, ptr %26, align 8
  br label %173

173:                                              ; preds = %235, %169
  %.lcssa6083 = phi i64 [ %.lcssa60, %235 ], [ %.promoted82, %169 ]
  %.lcssa5780 = phi i8 [ %.lcssa57, %235 ], [ %.promoted79, %169 ]
  %.lcssa5477 = phi i32 [ %.lcssa54, %235 ], [ %.promoted76, %169 ]
  %.lcssa5175 = phi i64 [ %.lcssa51, %235 ], [ %.promoted74, %169 ]
  %.lcssa6372 = phi i64 [ %.lcssa63, %235 ], [ %.promoted71, %169 ]
  %174 = phi ptr [ %234, %235 ], [ %.promoted68, %169 ]
  %175 = phi i64 [ %236, %235 ], [ %.promoted65, %169 ]
  %176 = icmp ult i64 %175, %170
  br i1 %176, label %177, label %237

177:                                              ; preds = %173
  %178 = load i8, ptr %174, align 1
  %179 = zext i8 %178 to i64
  %180 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %179
  %181 = load i8, ptr %180, align 1
  %182 = zext i8 %181 to i32
  %183 = sub nsw i32 %182, 1
  %184 = shl i32 1, %183
  %185 = sext i32 %184 to i64
  br label %186

186:                                              ; preds = %231, %177
  %187 = phi i64 [ %230, %231 ], [ %185, %177 ]
  %188 = phi i64 [ %214, %231 ], [ %.lcssa6083, %177 ]
  %189 = phi i8 [ %229, %231 ], [ %.lcssa5780, %177 ]
  %190 = phi i32 [ %216, %231 ], [ %.lcssa5477, %177 ]
  %191 = phi i64 [ %232, %231 ], [ 0, %177 ]
  %192 = load i8, ptr %174, align 1
  %193 = zext i8 %192 to i64
  %194 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %193
  %195 = load i8, ptr %194, align 1
  %196 = zext i8 %195 to i64
  %197 = icmp ult i64 %191, %196
  br i1 %197, label %198, label %233

198:                                              ; preds = %186
  %199 = icmp eq i32 %190, 7
  br i1 %199, label %200, label %208

200:                                              ; preds = %198
  %201 = getelementptr inbounds nuw i8, ptr %171, i64 %188
  store i8 %189, ptr %201, align 1
  %202 = add i64 %188, 1
  %203 = icmp eq i64 %202, %172
  br i1 %203, label %204, label %207

204:                                              ; preds = %200
  %.lcssa6083.lcssa84 = phi i64 [ %.lcssa6083, %200 ]
  %.lcssa5780.lcssa81 = phi i8 [ %.lcssa5780, %200 ]
  %.lcssa5477.lcssa78 = phi i32 [ %.lcssa5477, %200 ]
  %.lcssa73 = phi i64 [ %185, %200 ]
  %.lcssa70 = phi ptr [ %174, %200 ]
  %.lcssa67 = phi i64 [ %175, %200 ]
  %.lcssa64 = phi i64 [ %187, %200 ]
  %.lcssa61 = phi i64 [ %202, %200 ]
  %.lcssa58 = phi i8 [ %189, %200 ]
  %.lcssa55 = phi i32 [ %190, %200 ]
  %.lcssa52 = phi i64 [ %191, %200 ]
  store i64 %.lcssa67, ptr %6, align 8
  store ptr %.lcssa70, ptr %13, align 8
  store i64 %.lcssa73, ptr %8, align 8
  store i64 0, ptr %5, align 8
  store i32 %.lcssa5477.lcssa78, ptr %28, align 4
  store i8 %.lcssa5780.lcssa81, ptr %27, align 1
  store i64 %.lcssa6083.lcssa84, ptr %26, align 8
  store i64 %.lcssa52, ptr %5, align 8
  store i32 %.lcssa55, ptr %28, align 4
  store i8 %.lcssa58, ptr %27, align 1
  store i64 %.lcssa61, ptr %26, align 8
  store i64 %.lcssa64, ptr %8, align 8
  %205 = call ptr @__acrt_iob_func(i32 noundef 2)
  %206 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %205, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

207:                                              ; preds = %200
  br label %213

208:                                              ; preds = %198
  %209 = add nsw i32 %190, 1
  %210 = sext i8 %189 to i32
  %211 = shl i32 %210, 1
  %212 = trunc i32 %211 to i8
  br label %213

213:                                              ; preds = %208, %207
  %214 = phi i64 [ %188, %208 ], [ %202, %207 ]
  %215 = phi i8 [ %212, %208 ], [ 0, %207 ]
  %216 = phi i32 [ %209, %208 ], [ 0, %207 ]
  %217 = load i8, ptr %174, align 1
  %218 = zext i8 %217 to i64
  %219 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %218
  %220 = load i32, ptr %219, align 4
  %221 = zext i32 %220 to i64
  %222 = and i64 %221, %187
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %213
  %225 = sext i8 %215 to i32
  %226 = or i32 %225, 1
  %227 = trunc i32 %226 to i8
  br label %228

228:                                              ; preds = %224, %213
  %229 = phi i8 [ %227, %224 ], [ %215, %213 ]
  %230 = lshr i64 %187, 1
  br label %231

231:                                              ; preds = %228
  %232 = add i64 %191, 1
  br label %186, !llvm.loop !15

233:                                              ; preds = %186
  %.lcssa63 = phi i64 [ %187, %186 ]
  %.lcssa60 = phi i64 [ %188, %186 ]
  %.lcssa57 = phi i8 [ %189, %186 ]
  %.lcssa54 = phi i32 [ %190, %186 ]
  %.lcssa51 = phi i64 [ %191, %186 ]
  %.lcssa4 = phi ptr [ %174, %186 ]
  %234 = getelementptr inbounds nuw i8, ptr %.lcssa4, i32 1
  br label %235

235:                                              ; preds = %233
  %236 = add i64 %175, 1
  br label %173, !llvm.loop !16

237:                                              ; preds = %173
  %.lcssa6083.lcssa = phi i64 [ %.lcssa6083, %173 ]
  %.lcssa5780.lcssa = phi i8 [ %.lcssa5780, %173 ]
  %.lcssa5477.lcssa = phi i32 [ %.lcssa5477, %173 ]
  %.lcssa5175.lcssa = phi i64 [ %.lcssa5175, %173 ]
  %.lcssa6372.lcssa = phi i64 [ %.lcssa6372, %173 ]
  %.lcssa69 = phi ptr [ %174, %173 ]
  %.lcssa66 = phi i64 [ %175, %173 ]
  store i64 %.lcssa66, ptr %6, align 8
  store ptr %.lcssa69, ptr %13, align 8
  store i64 %.lcssa6372.lcssa, ptr %8, align 8
  store i64 %.lcssa5175.lcssa, ptr %5, align 8
  store i32 %.lcssa5477.lcssa, ptr %28, align 4
  store i8 %.lcssa5780.lcssa, ptr %27, align 1
  store i64 %.lcssa6083.lcssa, ptr %26, align 8
  %238 = load i32, ptr %28, align 4
  %239 = sub nsw i32 7, %238
  %240 = load i8, ptr %27, align 1
  %241 = sext i8 %240 to i32
  %242 = shl i32 %241, %239
  %243 = trunc i32 %242 to i8
  store i8 %243, ptr %27, align 1
  %244 = load ptr, ptr %14, align 8
  %245 = load i64, ptr %26, align 8
  %246 = getelementptr inbounds nuw i8, ptr %244, i64 %245
  store i8 %243, ptr %246, align 1
  %247 = load i64, ptr %26, align 8
  %248 = add i64 %247, 1
  store i64 %248, ptr %26, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %29, i8 0, i64 1024, i1 false)
  store ptr %30, ptr %31, align 8
  store i64 0, ptr %6, align 8
  %.promoted91 = load i64, ptr %6, align 8
  %.promoted93 = load ptr, ptr %31, align 8
  %.promoted95 = load i32, ptr %9, align 4
  %.promoted98 = load i64, ptr %8, align 8
  %.promoted101 = load i64, ptr %5, align 8
  br label %249

249:                                              ; preds = %296, %237
  %.lcssa86103 = phi i64 [ %.lcssa86102, %296 ], [ %.promoted101, %237 ]
  %.lcssa90100 = phi i64 [ %.lcssa9099, %296 ], [ %.promoted98, %237 ]
  %.lcssa8897 = phi i32 [ %.lcssa8896, %296 ], [ %.promoted95, %237 ]
  %250 = phi ptr [ %255, %296 ], [ %.promoted93, %237 ]
  %251 = phi i64 [ %297, %296 ], [ %.promoted91, %237 ]
  %252 = icmp ult i64 %251, 256
  br i1 %252, label %253, label %298

253:                                              ; preds = %249
  %254 = trunc i64 %251 to i8
  store i8 %254, ptr %250, align 1
  %255 = getelementptr inbounds nuw i8, ptr %250, i32 1
  %256 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %251
  %257 = load i32, ptr %256, align 4
  %258 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %251
  %259 = load i8, ptr %258, align 1
  %260 = zext i8 %259 to i32
  %261 = or i32 %257, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %295

263:                                              ; preds = %253
  %264 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %251
  %265 = load i8, ptr %264, align 1
  %266 = zext i8 %265 to i32
  %267 = sub nsw i32 %266, 1
  %268 = shl i32 1, %267
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %251
  %271 = load i8, ptr %270, align 1
  %272 = zext i8 %271 to i64
  %273 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %251
  br label %274

274:                                              ; preds = %291, %263
  %275 = phi i64 [ %290, %291 ], [ %269, %263 ]
  %276 = phi i32 [ %289, %291 ], [ 0, %263 ]
  %277 = phi i64 [ %292, %291 ], [ 0, %263 ]
  %278 = icmp ult i64 %277, %272
  br i1 %278, label %279, label %293

279:                                              ; preds = %274
  %280 = mul i32 %276, 2
  %281 = add i32 %280, 1
  %282 = load i32, ptr %273, align 4
  %283 = zext i32 %282 to i64
  %284 = and i64 %283, %275
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %279
  %287 = add i32 %281, 1
  br label %288

288:                                              ; preds = %286, %279
  %289 = phi i32 [ %287, %286 ], [ %281, %279 ]
  %290 = lshr i64 %275, 1
  br label %291

291:                                              ; preds = %288
  %292 = add i64 %277, 1
  br label %274, !llvm.loop !17

293:                                              ; preds = %274
  %.lcssa90 = phi i64 [ %275, %274 ]
  %.lcssa88 = phi i32 [ %276, %274 ]
  %.lcssa86 = phi i64 [ %277, %274 ]
  %.lcssa3 = phi i64 [ %251, %274 ]
  %294 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %.lcssa3
  store i32 %.lcssa88, ptr %294, align 4
  br label %295

295:                                              ; preds = %293, %253
  %.lcssa86102 = phi i64 [ %.lcssa86, %293 ], [ %.lcssa86103, %253 ]
  %.lcssa9099 = phi i64 [ %.lcssa90, %293 ], [ %.lcssa90100, %253 ]
  %.lcssa8896 = phi i32 [ %.lcssa88, %293 ], [ %.lcssa8897, %253 ]
  br label %296

296:                                              ; preds = %295
  %297 = add i64 %251, 1
  br label %249, !llvm.loop !18

298:                                              ; preds = %249
  %.lcssa86103.lcssa = phi i64 [ %.lcssa86103, %249 ]
  %.lcssa90100.lcssa = phi i64 [ %.lcssa90100, %249 ]
  %.lcssa8897.lcssa = phi i32 [ %.lcssa8897, %249 ]
  %.lcssa94 = phi ptr [ %250, %249 ]
  %.lcssa92 = phi i64 [ %251, %249 ]
  store i64 %.lcssa92, ptr %6, align 8
  store ptr %.lcssa94, ptr %31, align 8
  store i32 %.lcssa8897.lcssa, ptr %9, align 4
  store i64 %.lcssa90100.lcssa, ptr %8, align 8
  store i64 %.lcssa86103.lcssa, ptr %5, align 8
  store i64 1, ptr %5, align 8
  %.promoted106 = load i64, ptr %5, align 8
  %.promoted108 = load i32, ptr %10, align 4
  %.promoted110 = load i8, ptr %11, align 1
  %.promoted112 = load i64, ptr %6, align 8
  br label %299

299:                                              ; preds = %332, %298
  %.lcssa105113 = phi i64 [ %.lcssa105, %332 ], [ %.promoted112, %298 ]
  %300 = phi i8 [ %308, %332 ], [ %.promoted110, %298 ]
  %301 = phi i32 [ %306, %332 ], [ %.promoted108, %298 ]
  %302 = phi i64 [ %333, %332 ], [ %.promoted106, %298 ]
  %303 = icmp ult i64 %302, 256
  br i1 %303, label %304, label %334

304:                                              ; preds = %299
  %305 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %302
  %306 = load i32, ptr %305, align 4
  %307 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %302
  %308 = load i8, ptr %307, align 1
  br label %309

309:                                              ; preds = %319, %304
  %310 = phi i64 [ %328, %319 ], [ %302, %304 ]
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %317

312:                                              ; preds = %309
  %313 = sub i64 %310, 1
  %314 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %313
  %315 = load i32, ptr %314, align 4
  %316 = icmp ugt i32 %315, %306
  br label %317

317:                                              ; preds = %312, %309
  %318 = phi i1 [ false, %309 ], [ %316, %312 ]
  br i1 %318, label %319, label %329

319:                                              ; preds = %317
  %320 = sub i64 %310, 1
  %321 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %320
  %322 = load i32, ptr %321, align 4
  %323 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %310
  store i32 %322, ptr %323, align 4
  %324 = sub i64 %310, 1
  %325 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %324
  %326 = load i8, ptr %325, align 1
  %327 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %310
  store i8 %326, ptr %327, align 1
  %328 = add i64 %310, -1
  br label %309, !llvm.loop !19

329:                                              ; preds = %317
  %.lcssa105 = phi i64 [ %310, %317 ]
  %330 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %.lcssa105
  store i32 %306, ptr %330, align 4
  %331 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %.lcssa105
  store i8 %308, ptr %331, align 1
  br label %332

332:                                              ; preds = %329
  %333 = add i64 %302, 1
  br label %299, !llvm.loop !20

334:                                              ; preds = %299
  %.lcssa105113.lcssa = phi i64 [ %.lcssa105113, %299 ]
  %.lcssa111 = phi i8 [ %300, %299 ]
  %.lcssa109 = phi i32 [ %301, %299 ]
  %.lcssa107 = phi i64 [ %302, %299 ]
  store i64 %.lcssa107, ptr %5, align 8
  store i32 %.lcssa109, ptr %10, align 4
  store i8 %.lcssa111, ptr %11, align 1
  store i64 %.lcssa105113.lcssa, ptr %6, align 8
  store i64 0, ptr %6, align 8
  %.promoted114 = load i64, ptr %6, align 8
  br label %335

335:                                              ; preds = %341, %334
  %336 = phi i64 [ %342, %341 ], [ %.promoted114, %334 ]
  %337 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %336
  %338 = load i32, ptr %337, align 4
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %343

340:                                              ; preds = %335
  br label %341

341:                                              ; preds = %340
  %342 = add i64 %336, 1
  br label %335, !llvm.loop !21

343:                                              ; preds = %335
  %.lcssa115 = phi i64 [ %336, %335 ]
  store i64 %.lcssa115, ptr %6, align 8
  store i32 0, ptr %9, align 4
  %344 = load i64, ptr %6, align 8
  store i64 %344, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  %345 = load ptr, ptr %14, align 8
  store ptr %345, ptr %12, align 8
  %346 = load ptr, ptr %3, align 8
  store ptr %346, ptr %13, align 8
  %347 = load i64, ptr %4, align 8
  %348 = load i64, ptr %6, align 8
  %.promoted118 = load i64, ptr %7, align 8
  %.promoted120 = load i32, ptr %9, align 4
  %.promoted122 = load ptr, ptr %12, align 8
  %.promoted124 = load i64, ptr %8, align 8
  %.promoted126 = load i64, ptr %5, align 8
  %.promoted129 = load ptr, ptr %13, align 8
  br label %349

349:                                              ; preds = %390, %343
  %350 = phi ptr [ %382, %390 ], [ %.promoted129, %343 ]
  %.lcssa117127 = phi i64 [ %.lcssa117128, %390 ], [ %.promoted126, %343 ]
  %351 = phi i64 [ %391, %390 ], [ %.promoted124, %343 ]
  %352 = phi ptr [ %392, %390 ], [ %.promoted122, %343 ]
  %353 = phi i32 [ %383, %390 ], [ %.promoted120, %343 ]
  %354 = phi i64 [ %384, %390 ], [ %.promoted118, %343 ]
  %355 = icmp ult i64 %354, %347
  br i1 %355, label %356, label %393

356:                                              ; preds = %349
  %357 = mul i32 %353, 2
  %358 = add i32 %357, 1
  %359 = load i8, ptr %352, align 1
  %360 = zext i8 %359 to i64
  %361 = and i64 %360, %351
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %365

363:                                              ; preds = %356
  %364 = add i32 %358, 1
  br label %365

365:                                              ; preds = %363, %356
  %366 = phi i32 [ %364, %363 ], [ %358, %356 ]
  br label %367

367:                                              ; preds = %372, %365
  %368 = phi i64 [ %373, %372 ], [ %.lcssa117127, %365 ]
  %369 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %368
  %370 = load i32, ptr %369, align 4
  %371 = icmp ult i32 %370, %366
  br i1 %371, label %372, label %374

372:                                              ; preds = %367
  %373 = add i64 %368, 1
  br label %367, !llvm.loop !22

374:                                              ; preds = %367
  %.lcssa117 = phi i64 [ %368, %367 ]
  %.lcssa2 = phi i64 [ %368, %367 ]
  %.lcssa1 = phi i32 [ %370, %367 ]
  %.lcssa = phi i32 [ %366, %367 ]
  %375 = icmp eq i32 %.lcssa, %.lcssa1
  br i1 %375, label %376, label %381

376:                                              ; preds = %374
  %377 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %.lcssa2
  %378 = load i8, ptr %377, align 1
  store i8 %378, ptr %350, align 1
  %379 = getelementptr inbounds nuw i8, ptr %350, i32 1
  %380 = add i64 %354, 1
  br label %381

381:                                              ; preds = %376, %374
  %382 = phi ptr [ %379, %376 ], [ %350, %374 ]
  %.lcssa117128 = phi i64 [ %348, %376 ], [ %.lcssa117, %374 ]
  %383 = phi i32 [ 0, %376 ], [ %366, %374 ]
  %384 = phi i64 [ %380, %376 ], [ %354, %374 ]
  %385 = icmp ugt i64 %351, 1
  br i1 %385, label %386, label %388

386:                                              ; preds = %381
  %387 = lshr i64 %351, 1
  br label %390

388:                                              ; preds = %381
  %389 = getelementptr inbounds nuw i8, ptr %352, i32 1
  br label %390

390:                                              ; preds = %388, %386
  %391 = phi i64 [ 128, %388 ], [ %387, %386 ]
  %392 = phi ptr [ %389, %388 ], [ %352, %386 ]
  br label %349, !llvm.loop !23

393:                                              ; preds = %349
  %.lcssa130 = phi ptr [ %350, %349 ]
  %.lcssa117127.lcssa = phi i64 [ %.lcssa117127, %349 ]
  %.lcssa125 = phi i64 [ %351, %349 ]
  %.lcssa123 = phi ptr [ %352, %349 ]
  %.lcssa121 = phi i32 [ %353, %349 ]
  %.lcssa119 = phi i64 [ %354, %349 ]
  store i64 %.lcssa119, ptr %7, align 8
  store i32 %.lcssa121, ptr %9, align 4
  store ptr %.lcssa123, ptr %12, align 8
  store i64 %.lcssa125, ptr %8, align 8
  store i64 %.lcssa117127.lcssa, ptr %5, align 8
  store ptr %.lcssa130, ptr %13, align 8
  %394 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %394)
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
  %12 = sub nsw i32 %3, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, ptr %11, i64 %13
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i32
  store i32 %16, ptr %10, align 4
  %17 = load i32, ptr %7, align 4
  %18 = sdiv i32 %17, 2
  %19 = load i32, ptr %7, align 4
  %20 = load ptr, ptr %5, align 8
  %21 = load ptr, ptr %6, align 8
  %22 = load ptr, ptr %5, align 8
  %23 = load i32, ptr %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, ptr %22, i64 %24
  %26 = load ptr, ptr %6, align 8
  %.promoted = load i32, ptr %8, align 4
  %.promoted2 = load i32, ptr %9, align 4
  br label %27

27:                                               ; preds = %60, %4
  %28 = phi i32 [ %50, %60 ], [ %.promoted2, %4 ]
  %29 = phi i32 [ %50, %60 ], [ %.promoted, %4 ]
  %30 = icmp sle i32 %29, %18
  br i1 %30, label %31, label %.loopexit

31:                                               ; preds = %27
  %32 = add nsw i32 %29, %29
  %33 = icmp slt i32 %32, %19
  br i1 %33, label %34, label %49

34:                                               ; preds = %31
  %35 = sub nsw i32 %32, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, ptr %21, i64 %36
  %38 = load i64, ptr %37, align 8
  %39 = getelementptr inbounds nuw i64, ptr %20, i64 %38
  %40 = load i64, ptr %39, align 8
  %41 = sext i32 %32 to i64
  %42 = getelementptr inbounds i64, ptr %21, i64 %41
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds nuw i64, ptr %20, i64 %43
  %45 = load i64, ptr %44, align 8
  %46 = icmp ugt i64 %40, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %34
  %48 = add nsw i32 %32, 1
  br label %49

49:                                               ; preds = %47, %34, %31
  %50 = phi i32 [ %48, %47 ], [ %32, %34 ], [ %32, %31 ]
  %51 = load i64, ptr %25, align 8
  %52 = sub nsw i32 %50, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, ptr %26, i64 %53
  %55 = load i64, ptr %54, align 8
  %56 = getelementptr inbounds nuw i64, ptr %22, i64 %55
  %57 = load i64, ptr %56, align 8
  %58 = icmp ult i64 %51, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  %.lcssa4 = phi i32 [ %50, %49 ]
  %.lcssa1 = phi i32 [ %29, %49 ]
  store i32 %.lcssa1, ptr %8, align 4
  store i32 %.lcssa4, ptr %9, align 4
  br label %64

60:                                               ; preds = %49
  %61 = sub nsw i32 %29, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, ptr %26, i64 %62
  store i64 %55, ptr %63, align 8
  br label %27, !llvm.loop !24

.loopexit:                                        ; preds = %27
  %.lcssa3 = phi i32 [ %28, %27 ]
  %.lcssa = phi i32 [ %29, %27 ]
  store i32 %.lcssa, ptr %8, align 4
  store i32 %.lcssa3, ptr %9, align 4
  br label %64

64:                                               ; preds = %.loopexit, %59
  %65 = load i32, ptr %10, align 4
  %66 = sext i32 %65 to i64
  %67 = load ptr, ptr %6, align 8
  %68 = load i32, ptr %8, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, ptr %67, i64 %70
  store i64 %66, ptr %71, align 8
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
  %5 = sdiv i32 %4, 127773
  store i32 %5, ptr %1, align 4
  %6 = load i32, ptr @seed, align 4
  %7 = mul nsw i32 %5, 127773
  %8 = sub nsw i32 %6, %7
  %9 = mul nsw i32 16807, %8
  %10 = mul nsw i32 2836, %5
  %11 = sub nsw i32 %9, %10
  store i32 %11, ptr @seed, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = add nsw i32 %11, 2147483647
  store i32 %14, ptr @seed, align 4
  br label %15

15:                                               ; preds = %13, %0
  %16 = load i32, ptr @seed, align 4
  %17 = srem i32 %16, 32
  %18 = sext i32 %17 to i64
  store i64 %18, ptr %2, align 8
  %19 = load i32, ptr @seed, align 4
  %20 = xor i32 %19, 123459876
  store i32 %20, ptr @seed, align 4
  %21 = load i64, ptr %2, align 8
  ret i64 %21
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
