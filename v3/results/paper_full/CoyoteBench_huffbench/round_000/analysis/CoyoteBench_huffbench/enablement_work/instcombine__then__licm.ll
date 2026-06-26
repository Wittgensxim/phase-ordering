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
  %7 = call ptr @malloc(i64 noundef %0) #7
  store ptr %7, ptr %4, align 8
  store ptr %7, ptr %5, align 8
  %8 = load i64, ptr %2, align 8
  %9 = load ptr, ptr %3, align 8
  %.promoted = load ptr, ptr %5, align 8
  br label %10

10:                                               ; preds = %19, %1
  %11 = phi ptr [ %.promoted, %1 ], [ %18, %19 ]
  %storemerge = phi i32 [ 0, %1 ], [ %20, %19 ]
  %12 = sext i32 %storemerge to i64
  %13 = icmp ugt i64 %8, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = call i64 @random4()
  %16 = getelementptr inbounds nuw i8, ptr %9, i64 %15
  %17 = load i8, ptr %16, align 1
  store i8 %17, ptr %11, align 1
  %18 = getelementptr inbounds nuw i8, ptr %11, i64 1
  br label %19

19:                                               ; preds = %14
  %20 = add nsw i32 %storemerge, 1
  br label %10, !llvm.loop !7

21:                                               ; preds = %10
  %.lcssa = phi ptr [ %11, %10 ]
  %storemerge.lcssa = phi i32 [ %storemerge, %10 ]
  store i32 %storemerge.lcssa, ptr %6, align 4
  store ptr %.lcssa, ptr %5, align 8
  %22 = load ptr, ptr %4, align 8
  ret ptr %22
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
  %33 = call ptr @malloc(i64 noundef %32) #7
  store ptr %33, ptr %14, align 8
  %34 = add i64 %1, 1
  call void @llvm.memset.p0.i64(ptr align 1 %33, i8 0, i64 %34, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %15, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %16, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %17, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %18, i8 0, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %19, i8 0, i64 256, i1 false)
  %35 = load i64, ptr %4, align 8
  %.promoted = load ptr, ptr %13, align 8
  br label %36

36:                                               ; preds = %46, %2
  %37 = phi ptr [ %.promoted, %2 ], [ %45, %46 ]
  %storemerge = phi i64 [ 0, %2 ], [ %47, %46 ]
  %38 = icmp ult i64 %storemerge, %35
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load i8, ptr %37, align 1
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %41
  %43 = load i64, ptr %42, align 8
  %44 = add i64 %43, 1
  store i64 %44, ptr %42, align 8
  %45 = getelementptr inbounds nuw i8, ptr %37, i64 1
  br label %46

46:                                               ; preds = %39
  %47 = add i64 %storemerge, 1
  br label %36, !llvm.loop !9

48:                                               ; preds = %36
  %.lcssa = phi ptr [ %37, %36 ]
  %storemerge.lcssa = phi i64 [ %storemerge, %36 ]
  store i64 %storemerge.lcssa, ptr %5, align 8
  store ptr %.lcssa, ptr %13, align 8
  store i64 0, ptr %7, align 8
  %.promoted21 = load i64, ptr %7, align 8
  br label %49

49:                                               ; preds = %60, %48
  %50 = phi i64 [ %.promoted21, %48 ], [ %59, %60 ]
  %storemerge1 = phi i64 [ 0, %48 ], [ %61, %60 ]
  %51 = icmp ult i64 %storemerge1, 256
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %storemerge1
  %54 = load i64, ptr %53, align 8
  %.not19 = icmp eq i64 %54, 0
  br i1 %.not19, label %58, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %50
  store i64 %storemerge1, ptr %56, align 8
  %57 = add i64 %50, 1
  br label %58

58:                                               ; preds = %55, %52
  %59 = phi i64 [ %57, %55 ], [ %50, %52 ]
  br label %60

60:                                               ; preds = %58
  %61 = add i64 %storemerge1, 1
  br label %49, !llvm.loop !10

62:                                               ; preds = %49
  %.lcssa22 = phi i64 [ %50, %49 ]
  %storemerge1.lcssa = phi i64 [ %storemerge1, %49 ]
  store i64 %storemerge1.lcssa, ptr %5, align 8
  store i64 %.lcssa22, ptr %7, align 8
  %63 = load i64, ptr %7, align 8
  %64 = load i64, ptr %7, align 8
  %65 = trunc i64 %64 to i32
  br label %66

66:                                               ; preds = %69, %62
  %storemerge2 = phi i64 [ %63, %62 ], [ %70, %69 ]
  %.not = icmp eq i64 %storemerge2, 0
  br i1 %.not, label %71, label %67

67:                                               ; preds = %66
  %68 = trunc i64 %storemerge2 to i32
  call void @heap_adjust(ptr noundef nonnull %15, ptr noundef nonnull %16, i32 noundef %65, i32 noundef %68)
  br label %69

69:                                               ; preds = %67
  %70 = add i64 %storemerge2, -1
  br label %66, !llvm.loop !11

71:                                               ; preds = %66
  %storemerge2.lcssa = phi i64 [ %storemerge2, %66 ]
  store i64 %storemerge2.lcssa, ptr %5, align 8
  %.promoted24 = load i64, ptr %7, align 8
  %.promoted26 = load i64, ptr %20, align 8
  br label %72

72:                                               ; preds = %76, %71
  %73 = phi i64 [ %78, %76 ], [ %.promoted26, %71 ]
  %74 = phi i64 [ %77, %76 ], [ %.promoted24, %71 ]
  %75 = icmp ugt i64 %74, 1
  br i1 %75, label %76, label %99

76:                                               ; preds = %72
  %77 = add i64 %74, -1
  %78 = load i64, ptr %16, align 16
  %79 = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %77
  %80 = load i64, ptr %79, align 8
  store i64 %80, ptr %16, align 16
  %81 = trunc i64 %77 to i32
  call void @heap_adjust(ptr noundef nonnull %15, ptr noundef nonnull %16, i32 noundef %81, i32 noundef 1)
  %82 = load i64, ptr %16, align 16
  %83 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %82
  %84 = load i64, ptr %83, align 8
  %85 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %78
  %86 = load i64, ptr %85, align 8
  %87 = add i64 %84, %86
  %88 = getelementptr [8 x i8], ptr %15, i64 %77
  %89 = getelementptr i8, ptr %88, i64 2048
  store i64 %87, ptr %89, align 8
  %90 = trunc i64 %77 to i32
  %91 = add i32 %90, 256
  %92 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %78
  store i32 %91, ptr %92, align 4
  %93 = trunc i64 %77 to i32
  %94 = sub i32 -256, %93
  %95 = load i64, ptr %16, align 16
  %96 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %95
  store i32 %94, ptr %96, align 4
  %97 = add i64 %77, 256
  store i64 %97, ptr %16, align 16
  %98 = trunc i64 %77 to i32
  call void @heap_adjust(ptr noundef nonnull %15, ptr noundef nonnull %16, i32 noundef %98, i32 noundef 1)
  br label %72, !llvm.loop !12

99:                                               ; preds = %72
  %.lcssa27 = phi i64 [ %73, %72 ]
  %.lcssa25 = phi i64 [ %74, %72 ]
  store i64 %.lcssa25, ptr %7, align 8
  store i64 %.lcssa27, ptr %20, align 8
  %100 = load i64, ptr %7, align 8
  %101 = getelementptr [4 x i8], ptr %17, i64 %100
  %102 = getelementptr i8, ptr %101, i64 1024
  store i32 0, ptr %102, align 4
  store i64 0, ptr %23, align 8
  store i64 0, ptr %24, align 8
  %.promoted37 = load i64, ptr %5, align 8
  %.promoted40 = load i64, ptr %6, align 8
  %.promoted43 = load i64, ptr %22, align 8
  %.promoted46 = load i32, ptr %25, align 4
  %.promoted49 = load i64, ptr %23, align 8
  %.promoted53 = load i64, ptr %24, align 8
  br label %103

103:                                              ; preds = %144, %99
  %.lcssa3556 = phi i64 [ %.promoted53, %99 ], [ %.lcssa3554, %144 ]
  %.lcssa3352 = phi i64 [ %.promoted49, %99 ], [ %.lcssa3350, %144 ]
  %.lcssa2948 = phi i32 [ %.promoted46, %99 ], [ %.lcssa2947, %144 ]
  %.lcssa3345 = phi i64 [ %.promoted43, %99 ], [ %.lcssa3344, %144 ]
  %.lcssa3142 = phi i64 [ %.promoted40, %99 ], [ %.lcssa3141, %144 ]
  %.lcssa3539 = phi i64 [ %.promoted37, %99 ], [ %.lcssa3538, %144 ]
  %storemerge3 = phi i64 [ 0, %99 ], [ %145, %144 ]
  %104 = icmp ult i64 %storemerge3, 256
  br i1 %104, label %105, label %146

105:                                              ; preds = %103
  %106 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %storemerge3
  %107 = load i64, ptr %106, align 8
  %.not17 = icmp eq i64 %107, 0
  br i1 %.not17, label %108, label %111

108:                                              ; preds = %105
  %109 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %storemerge3
  store i32 0, ptr %109, align 4
  %110 = getelementptr inbounds nuw i8, ptr %19, i64 %storemerge3
  store i8 0, ptr %110, align 1
  br label %143

111:                                              ; preds = %105
  %112 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %storemerge3
  %113 = load i32, ptr %112, align 4
  br label %114

114:                                              ; preds = %124, %111
  %115 = phi i64 [ %131, %124 ], [ 0, %111 ]
  %116 = phi i64 [ %125, %124 ], [ 0, %111 ]
  %117 = phi i64 [ %130, %124 ], [ 1, %111 ]
  %118 = phi i32 [ %129, %124 ], [ %113, %111 ]
  %.not18 = icmp eq i32 %118, 0
  br i1 %.not18, label %132, label %119

119:                                              ; preds = %114
  %120 = icmp slt i32 %118, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %119
  %122 = add i64 %116, %117
  %123 = sub nsw i32 0, %118
  br label %124

124:                                              ; preds = %121, %119
  %125 = phi i64 [ %122, %121 ], [ %116, %119 ]
  %126 = phi i32 [ %123, %121 ], [ %118, %119 ]
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [4 x i8], ptr %17, i64 %127
  %129 = load i32, ptr %128, align 4
  %130 = shl i64 %117, 1
  %131 = add i64 %115, 1
  br label %114, !llvm.loop !13

132:                                              ; preds = %114
  %.lcssa35 = phi i64 [ %115, %114 ]
  %.lcssa33 = phi i64 [ %116, %114 ]
  %.lcssa31 = phi i64 [ %117, %114 ]
  %.lcssa29 = phi i32 [ %118, %114 ]
  %133 = trunc i64 %.lcssa33 to i32
  %134 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %storemerge3
  store i32 %133, ptr %134, align 4
  %135 = trunc i64 %.lcssa35 to i8
  %136 = getelementptr inbounds nuw i8, ptr %19, i64 %storemerge3
  store i8 %135, ptr %136, align 1
  %137 = icmp ugt i64 %.lcssa33, %.lcssa3352
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  br label %139

139:                                              ; preds = %138, %132
  %.lcssa3351 = phi i64 [ %.lcssa33, %138 ], [ %.lcssa3352, %132 ]
  %140 = icmp ugt i64 %.lcssa35, %.lcssa3556
  br i1 %140, label %141, label %142

141:                                              ; preds = %139
  br label %142

142:                                              ; preds = %141, %139
  %.lcssa3555 = phi i64 [ %.lcssa35, %141 ], [ %.lcssa3556, %139 ]
  br label %143

143:                                              ; preds = %142, %108
  %.lcssa3554 = phi i64 [ %.lcssa3555, %142 ], [ %.lcssa3556, %108 ]
  %.lcssa3350 = phi i64 [ %.lcssa3351, %142 ], [ %.lcssa3352, %108 ]
  %.lcssa2947 = phi i32 [ %.lcssa29, %142 ], [ %.lcssa2948, %108 ]
  %.lcssa3344 = phi i64 [ %.lcssa33, %142 ], [ %.lcssa3345, %108 ]
  %.lcssa3141 = phi i64 [ %.lcssa31, %142 ], [ %.lcssa3142, %108 ]
  %.lcssa3538 = phi i64 [ %.lcssa35, %142 ], [ %.lcssa3539, %108 ]
  br label %144

144:                                              ; preds = %143
  %145 = add i64 %storemerge3, 1
  br label %103, !llvm.loop !14

146:                                              ; preds = %103
  %.lcssa3556.lcssa = phi i64 [ %.lcssa3556, %103 ]
  %.lcssa3352.lcssa = phi i64 [ %.lcssa3352, %103 ]
  %.lcssa2948.lcssa = phi i32 [ %.lcssa2948, %103 ]
  %.lcssa3345.lcssa = phi i64 [ %.lcssa3345, %103 ]
  %.lcssa3142.lcssa = phi i64 [ %.lcssa3142, %103 ]
  %.lcssa3539.lcssa = phi i64 [ %.lcssa3539, %103 ]
  %storemerge3.lcssa = phi i64 [ %storemerge3, %103 ]
  store i64 %storemerge3.lcssa, ptr %21, align 8
  store i64 %.lcssa3539.lcssa, ptr %5, align 8
  store i64 %.lcssa3142.lcssa, ptr %6, align 8
  store i64 %.lcssa3345.lcssa, ptr %22, align 8
  store i32 %.lcssa2948.lcssa, ptr %25, align 4
  store i64 %.lcssa3352.lcssa, ptr %23, align 8
  store i64 %.lcssa3556.lcssa, ptr %24, align 8
  %147 = load i64, ptr %24, align 8
  %148 = icmp ugt i64 %147, 32
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %151 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %150)
  call void @exit(i32 noundef 1) #9
  unreachable

152:                                              ; preds = %146
  store i64 0, ptr %26, align 8
  store i8 0, ptr %27, align 1
  store i32 -1, ptr %28, align 4
  %153 = load ptr, ptr %3, align 8
  store ptr %153, ptr %13, align 8
  %154 = load i64, ptr %23, align 8
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %158 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %157)
  call void @exit(i32 noundef 1) #9
  unreachable

159:                                              ; preds = %152
  %160 = load i64, ptr %4, align 8
  %161 = load ptr, ptr %14, align 8
  %162 = load i64, ptr %4, align 8
  %.promoted74 = load ptr, ptr %13, align 8
  %.promoted77 = load i64, ptr %8, align 8
  %.promoted80 = load i32, ptr %28, align 4
  %.promoted83 = load i8, ptr %27, align 1
  %.promoted86 = load i64, ptr %26, align 8
  %.promoted89 = load i64, ptr %5, align 1
  br label %163

163:                                              ; preds = %215, %159
  %storemerge14.lcssa90 = phi i64 [ %.promoted89, %159 ], [ %storemerge14.lcssa, %215 ]
  %.lcssa6787 = phi i64 [ %.promoted86, %159 ], [ %.lcssa67, %215 ]
  %storemerge1563.lcssa84 = phi i8 [ %.promoted83, %159 ], [ %storemerge1563.lcssa, %215 ]
  %.lcssa6081 = phi i32 [ %.promoted80, %159 ], [ %.lcssa60, %215 ]
  %.lcssa7078 = phi i64 [ %.promoted77, %159 ], [ %.lcssa70, %215 ]
  %164 = phi ptr [ %.promoted74, %159 ], [ %214, %215 ]
  %storemerge4 = phi i64 [ 0, %159 ], [ %216, %215 ]
  %165 = icmp ult i64 %storemerge4, %160
  br i1 %165, label %166, label %217

166:                                              ; preds = %163
  %167 = load i8, ptr %164, align 1
  %168 = zext i8 %167 to i64
  %169 = getelementptr inbounds nuw i8, ptr %19, i64 %168
  %170 = load i8, ptr %169, align 1
  %171 = zext i8 %170 to i32
  %172 = add nsw i32 %171, -1
  %173 = shl nuw i32 1, %172
  %174 = sext i32 %173 to i64
  br label %175

175:                                              ; preds = %211, %166
  %176 = phi i64 [ %174, %166 ], [ %210, %211 ]
  %177 = phi i64 [ %.lcssa6787, %166 ], [ %199, %211 ]
  %storemerge1563 = phi i8 [ %storemerge1563.lcssa84, %166 ], [ %storemerge1564, %211 ]
  %178 = phi i32 [ %.lcssa6081, %166 ], [ %200, %211 ]
  %storemerge14 = phi i64 [ 0, %166 ], [ %212, %211 ]
  %179 = load i8, ptr %164, align 1
  %180 = zext i8 %179 to i64
  %181 = getelementptr inbounds nuw i8, ptr %19, i64 %180
  %182 = load i8, ptr %181, align 1
  %183 = zext i8 %182 to i64
  %184 = icmp ult i64 %storemerge14, %183
  br i1 %184, label %185, label %213

185:                                              ; preds = %175
  %186 = icmp eq i32 %178, 7
  br i1 %186, label %187, label %195

187:                                              ; preds = %185
  %188 = getelementptr inbounds nuw i8, ptr %161, i64 %177
  store i8 %storemerge1563, ptr %188, align 1
  %189 = add i64 %177, 1
  %190 = icmp eq i64 %189, %162
  br i1 %190, label %191, label %194

191:                                              ; preds = %187
  %storemerge14.lcssa90.lcssa91 = phi i64 [ %storemerge14.lcssa90, %187 ]
  %.lcssa6787.lcssa88 = phi i64 [ %.lcssa6787, %187 ]
  %storemerge1563.lcssa84.lcssa85 = phi i8 [ %storemerge1563.lcssa84, %187 ]
  %.lcssa6081.lcssa82 = phi i32 [ %.lcssa6081, %187 ]
  %.lcssa79 = phi i64 [ %174, %187 ]
  %.lcssa76 = phi ptr [ %164, %187 ]
  %storemerge4.lcssa73 = phi i64 [ %storemerge4, %187 ]
  %.lcssa71 = phi i64 [ %176, %187 ]
  %.lcssa68 = phi i64 [ %189, %187 ]
  %storemerge1563.lcssa65 = phi i8 [ %storemerge1563, %187 ]
  %.lcssa61 = phi i32 [ %178, %187 ]
  %storemerge14.lcssa58 = phi i64 [ %storemerge14, %187 ]
  store i64 %storemerge4.lcssa73, ptr %6, align 8
  store ptr %.lcssa76, ptr %13, align 8
  store i64 %.lcssa79, ptr %8, align 8
  store i32 %.lcssa6081.lcssa82, ptr %28, align 4
  store i8 %storemerge1563.lcssa84.lcssa85, ptr %27, align 1
  store i64 %.lcssa6787.lcssa88, ptr %26, align 8
  store i64 %storemerge14.lcssa90.lcssa91, ptr %5, align 1
  store i64 %storemerge14.lcssa58, ptr %5, align 8
  store i32 %.lcssa61, ptr %28, align 4
  store i8 %storemerge1563.lcssa65, ptr %27, align 1
  store i64 %.lcssa68, ptr %26, align 8
  store i64 %.lcssa71, ptr %8, align 8
  %192 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %193 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %192)
  call void @exit(i32 noundef 1) #9
  unreachable

194:                                              ; preds = %187
  br label %198

195:                                              ; preds = %185
  %196 = add nsw i32 %178, 1
  %197 = shl i8 %storemerge1563, 1
  br label %198

198:                                              ; preds = %195, %194
  %199 = phi i64 [ %177, %195 ], [ %189, %194 ]
  %200 = phi i32 [ %196, %195 ], [ 0, %194 ]
  %storemerge15 = phi i8 [ %197, %195 ], [ 0, %194 ]
  %201 = load i8, ptr %164, align 1
  %202 = zext i8 %201 to i64
  %203 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %202
  %204 = load i32, ptr %203, align 4
  %205 = zext i32 %204 to i64
  %206 = and i64 %176, %205
  %.not16 = icmp eq i64 %206, 0
  br i1 %.not16, label %209, label %207

207:                                              ; preds = %198
  %208 = or i8 %storemerge15, 1
  br label %209

209:                                              ; preds = %207, %198
  %storemerge1564 = phi i8 [ %208, %207 ], [ %storemerge15, %198 ]
  %210 = lshr i64 %176, 1
  br label %211

211:                                              ; preds = %209
  %212 = add i64 %storemerge14, 1
  br label %175, !llvm.loop !15

213:                                              ; preds = %175
  %.lcssa70 = phi i64 [ %176, %175 ]
  %.lcssa67 = phi i64 [ %177, %175 ]
  %storemerge1563.lcssa = phi i8 [ %storemerge1563, %175 ]
  %.lcssa60 = phi i32 [ %178, %175 ]
  %storemerge14.lcssa = phi i64 [ %storemerge14, %175 ]
  %214 = getelementptr inbounds nuw i8, ptr %164, i64 1
  br label %215

215:                                              ; preds = %213
  %216 = add i64 %storemerge4, 1
  br label %163, !llvm.loop !16

217:                                              ; preds = %163
  %storemerge14.lcssa90.lcssa = phi i64 [ %storemerge14.lcssa90, %163 ]
  %.lcssa6787.lcssa = phi i64 [ %.lcssa6787, %163 ]
  %storemerge1563.lcssa84.lcssa = phi i8 [ %storemerge1563.lcssa84, %163 ]
  %.lcssa6081.lcssa = phi i32 [ %.lcssa6081, %163 ]
  %.lcssa7078.lcssa = phi i64 [ %.lcssa7078, %163 ]
  %.lcssa75 = phi ptr [ %164, %163 ]
  %storemerge4.lcssa = phi i64 [ %storemerge4, %163 ]
  store i64 %storemerge4.lcssa, ptr %6, align 8
  store ptr %.lcssa75, ptr %13, align 8
  store i64 %.lcssa7078.lcssa, ptr %8, align 8
  store i32 %.lcssa6081.lcssa, ptr %28, align 4
  store i8 %storemerge1563.lcssa84.lcssa, ptr %27, align 1
  store i64 %.lcssa6787.lcssa, ptr %26, align 8
  store i64 %storemerge14.lcssa90.lcssa, ptr %5, align 1
  %218 = load i32, ptr %28, align 4
  %219 = sub nsw i32 7, %218
  %220 = load i8, ptr %27, align 1
  %221 = zext i8 %220 to i32
  %222 = shl i32 %221, %219
  %223 = trunc i32 %222 to i8
  store i8 %223, ptr %27, align 1
  %224 = load ptr, ptr %14, align 8
  %225 = load i64, ptr %26, align 8
  %226 = getelementptr inbounds nuw i8, ptr %224, i64 %225
  store i8 %223, ptr %226, align 1
  %227 = add i64 %225, 1
  store i64 %227, ptr %26, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %29, i8 0, i64 1024, i1 false)
  store ptr %30, ptr %31, align 8
  %.promoted98 = load ptr, ptr %31, align 8
  %.promoted100 = load i32, ptr %9, align 4
  %.promoted103 = load i64, ptr %8, align 8
  %.promoted106 = load i64, ptr %5, align 1
  br label %228

228:                                              ; preds = %271, %217
  %storemerge12.lcssa108 = phi i64 [ %.promoted106, %217 ], [ %storemerge12.lcssa107, %271 ]
  %.lcssa96105 = phi i64 [ %.promoted103, %217 ], [ %.lcssa96104, %271 ]
  %.lcssa94102 = phi i32 [ %.promoted100, %217 ], [ %.lcssa94101, %271 ]
  %229 = phi ptr [ %.promoted98, %217 ], [ %233, %271 ]
  %storemerge5 = phi i64 [ 0, %217 ], [ %272, %271 ]
  %230 = icmp ult i64 %storemerge5, 256
  br i1 %230, label %231, label %273

231:                                              ; preds = %228
  %232 = trunc i64 %storemerge5 to i8
  store i8 %232, ptr %229, align 1
  %233 = getelementptr inbounds nuw i8, ptr %229, i64 1
  %234 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %storemerge5
  %235 = load i32, ptr %234, align 4
  %236 = getelementptr inbounds nuw i8, ptr %19, i64 %storemerge5
  %237 = load i8, ptr %236, align 1
  %238 = zext i8 %237 to i32
  %239 = or i32 %235, %238
  %.not11 = icmp eq i32 %239, 0
  br i1 %.not11, label %270, label %240

240:                                              ; preds = %231
  %241 = getelementptr inbounds nuw i8, ptr %19, i64 %storemerge5
  %242 = load i8, ptr %241, align 1
  %243 = zext i8 %242 to i32
  %244 = add nsw i32 %243, -1
  %245 = shl nuw i32 1, %244
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds nuw i8, ptr %19, i64 %storemerge5
  %248 = load i8, ptr %247, align 1
  %249 = zext i8 %248 to i64
  %250 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %storemerge5
  br label %251

251:                                              ; preds = %266, %240
  %252 = phi i64 [ %246, %240 ], [ %265, %266 ]
  %253 = phi i32 [ 0, %240 ], [ %264, %266 ]
  %storemerge12 = phi i64 [ 0, %240 ], [ %267, %266 ]
  %254 = icmp ult i64 %storemerge12, %249
  br i1 %254, label %255, label %268

255:                                              ; preds = %251
  %256 = shl i32 %253, 1
  %257 = or disjoint i32 %256, 1
  %258 = load i32, ptr %250, align 4
  %259 = zext i32 %258 to i64
  %260 = and i64 %252, %259
  %.not13 = icmp eq i64 %260, 0
  br i1 %.not13, label %263, label %261

261:                                              ; preds = %255
  %262 = add i32 %257, 1
  br label %263

263:                                              ; preds = %261, %255
  %264 = phi i32 [ %262, %261 ], [ %257, %255 ]
  %265 = lshr i64 %252, 1
  br label %266

266:                                              ; preds = %263
  %267 = add i64 %storemerge12, 1
  br label %251, !llvm.loop !17

268:                                              ; preds = %251
  %.lcssa96 = phi i64 [ %252, %251 ]
  %.lcssa94 = phi i32 [ %253, %251 ]
  %storemerge12.lcssa = phi i64 [ %storemerge12, %251 ]
  %269 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %storemerge5
  store i32 %.lcssa94, ptr %269, align 4
  br label %270

270:                                              ; preds = %268, %231
  %storemerge12.lcssa107 = phi i64 [ %storemerge12.lcssa, %268 ], [ %storemerge12.lcssa108, %231 ]
  %.lcssa96104 = phi i64 [ %.lcssa96, %268 ], [ %.lcssa96105, %231 ]
  %.lcssa94101 = phi i32 [ %.lcssa94, %268 ], [ %.lcssa94102, %231 ]
  br label %271

271:                                              ; preds = %270
  %272 = add i64 %storemerge5, 1
  br label %228, !llvm.loop !18

273:                                              ; preds = %228
  %storemerge12.lcssa108.lcssa = phi i64 [ %storemerge12.lcssa108, %228 ]
  %.lcssa96105.lcssa = phi i64 [ %.lcssa96105, %228 ]
  %.lcssa94102.lcssa = phi i32 [ %.lcssa94102, %228 ]
  %.lcssa99 = phi ptr [ %229, %228 ]
  %storemerge5.lcssa = phi i64 [ %storemerge5, %228 ]
  store i64 %storemerge5.lcssa, ptr %6, align 8
  store ptr %.lcssa99, ptr %31, align 8
  store i32 %.lcssa94102.lcssa, ptr %9, align 4
  store i64 %.lcssa96105.lcssa, ptr %8, align 8
  store i64 %storemerge12.lcssa108.lcssa, ptr %5, align 1
  %.promoted111 = load i32, ptr %10, align 4
  %.promoted113 = load i8, ptr %11, align 1
  %.promoted115 = load i64, ptr %6, align 8
  br label %274

274:                                              ; preds = %304, %273
  %storemerge9.lcssa116 = phi i64 [ %.promoted115, %273 ], [ %storemerge9.lcssa, %304 ]
  %275 = phi i8 [ %.promoted113, %273 ], [ %282, %304 ]
  %276 = phi i32 [ %.promoted111, %273 ], [ %280, %304 ]
  %storemerge6 = phi i64 [ 1, %273 ], [ %305, %304 ]
  %277 = icmp ult i64 %storemerge6, 256
  br i1 %277, label %278, label %306

278:                                              ; preds = %274
  %279 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %storemerge6
  %280 = load i32, ptr %279, align 4
  %281 = getelementptr inbounds nuw i8, ptr %30, i64 %storemerge6
  %282 = load i8, ptr %281, align 1
  br label %283

283:                                              ; preds = %291, %278
  %storemerge9 = phi i64 [ %storemerge6, %278 ], [ %300, %291 ]
  %.not10 = icmp eq i64 %storemerge9, 0
  br i1 %.not10, label %289, label %284

284:                                              ; preds = %283
  %285 = getelementptr [4 x i8], ptr %29, i64 %storemerge9
  %286 = getelementptr i8, ptr %285, i64 -4
  %287 = load i32, ptr %286, align 4
  %288 = icmp ugt i32 %287, %280
  br label %289

289:                                              ; preds = %284, %283
  %290 = phi i1 [ false, %283 ], [ %288, %284 ]
  br i1 %290, label %291, label %301

291:                                              ; preds = %289
  %292 = getelementptr [4 x i8], ptr %29, i64 %storemerge9
  %293 = getelementptr i8, ptr %292, i64 -4
  %294 = load i32, ptr %293, align 4
  %295 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %storemerge9
  store i32 %294, ptr %295, align 4
  %296 = getelementptr i8, ptr %30, i64 %storemerge9
  %297 = getelementptr i8, ptr %296, i64 -1
  %298 = load i8, ptr %297, align 1
  %299 = getelementptr inbounds nuw i8, ptr %30, i64 %storemerge9
  store i8 %298, ptr %299, align 1
  %300 = add i64 %storemerge9, -1
  br label %283, !llvm.loop !19

301:                                              ; preds = %289
  %storemerge9.lcssa = phi i64 [ %storemerge9, %289 ]
  %302 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %storemerge9.lcssa
  store i32 %280, ptr %302, align 4
  %303 = getelementptr inbounds nuw i8, ptr %30, i64 %storemerge9.lcssa
  store i8 %282, ptr %303, align 1
  br label %304

304:                                              ; preds = %301
  %305 = add i64 %storemerge6, 1
  br label %274, !llvm.loop !20

306:                                              ; preds = %274
  %storemerge9.lcssa116.lcssa = phi i64 [ %storemerge9.lcssa116, %274 ]
  %.lcssa114 = phi i8 [ %275, %274 ]
  %.lcssa112 = phi i32 [ %276, %274 ]
  %storemerge6.lcssa = phi i64 [ %storemerge6, %274 ]
  store i64 %storemerge6.lcssa, ptr %5, align 8
  store i32 %.lcssa112, ptr %10, align 4
  store i8 %.lcssa114, ptr %11, align 1
  store i64 %storemerge9.lcssa116.lcssa, ptr %6, align 8
  br label %307

307:                                              ; preds = %312, %306
  %storemerge7 = phi i64 [ 0, %306 ], [ %313, %312 ]
  %308 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %storemerge7
  %309 = load i32, ptr %308, align 4
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %314

311:                                              ; preds = %307
  br label %312

312:                                              ; preds = %311
  %313 = add i64 %storemerge7, 1
  br label %307, !llvm.loop !21

314:                                              ; preds = %307
  %storemerge7.lcssa = phi i64 [ %storemerge7, %307 ]
  store i64 %storemerge7.lcssa, ptr %6, align 8
  store i32 0, ptr %9, align 4
  %315 = load i64, ptr %6, align 8
  store i64 %315, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  %316 = load ptr, ptr %14, align 8
  store ptr %316, ptr %12, align 8
  %317 = load ptr, ptr %3, align 8
  store ptr %317, ptr %13, align 8
  %318 = load i64, ptr %4, align 8
  %319 = load i64, ptr %6, align 8
  %.promoted120 = load i64, ptr %7, align 8
  %.promoted122 = load i32, ptr %9, align 4
  %.promoted124 = load ptr, ptr %12, align 8
  %.promoted126 = load i64, ptr %8, align 8
  %.promoted128 = load i64, ptr %5, align 8
  %.promoted131 = load ptr, ptr %13, align 8
  br label %320

320:                                              ; preds = %362, %314
  %321 = phi ptr [ %354, %362 ], [ %.promoted131, %314 ]
  %.lcssa119129 = phi i64 [ %.lcssa119130, %362 ], [ %.promoted128, %314 ]
  %322 = phi i64 [ %363, %362 ], [ %.promoted126, %314 ]
  %323 = phi ptr [ %364, %362 ], [ %.promoted124, %314 ]
  %324 = phi i32 [ %355, %362 ], [ %.promoted122, %314 ]
  %325 = phi i64 [ %356, %362 ], [ %.promoted120, %314 ]
  %326 = icmp ult i64 %325, %318
  br i1 %326, label %327, label %365

327:                                              ; preds = %320
  %328 = shl i32 %324, 1
  %329 = or disjoint i32 %328, 1
  %330 = load i8, ptr %323, align 1
  %331 = zext i8 %330 to i64
  %332 = and i64 %322, %331
  %.not8 = icmp eq i64 %332, 0
  br i1 %.not8, label %335, label %333

333:                                              ; preds = %327
  %334 = add i32 %329, 1
  br label %335

335:                                              ; preds = %333, %327
  %336 = phi i32 [ %334, %333 ], [ %329, %327 ]
  br label %337

337:                                              ; preds = %342, %335
  %338 = phi i64 [ %343, %342 ], [ %.lcssa119129, %335 ]
  %339 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %338
  %340 = load i32, ptr %339, align 4
  %341 = icmp ult i32 %340, %336
  br i1 %341, label %342, label %344

342:                                              ; preds = %337
  %343 = add i64 %338, 1
  br label %337, !llvm.loop !22

344:                                              ; preds = %337
  %.lcssa119 = phi i64 [ %338, %337 ]
  %345 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %.lcssa119
  %346 = load i32, ptr %345, align 4
  %347 = icmp eq i32 %336, %346
  br i1 %347, label %348, label %353

348:                                              ; preds = %344
  %349 = getelementptr inbounds nuw i8, ptr %30, i64 %.lcssa119
  %350 = load i8, ptr %349, align 1
  store i8 %350, ptr %321, align 1
  %351 = getelementptr inbounds nuw i8, ptr %321, i64 1
  %352 = add i64 %325, 1
  br label %353

353:                                              ; preds = %348, %344
  %354 = phi ptr [ %351, %348 ], [ %321, %344 ]
  %.lcssa119130 = phi i64 [ %319, %348 ], [ %.lcssa119, %344 ]
  %355 = phi i32 [ 0, %348 ], [ %336, %344 ]
  %356 = phi i64 [ %352, %348 ], [ %325, %344 ]
  %357 = icmp ugt i64 %322, 1
  br i1 %357, label %358, label %360

358:                                              ; preds = %353
  %359 = lshr i64 %322, 1
  br label %362

360:                                              ; preds = %353
  %361 = getelementptr inbounds nuw i8, ptr %323, i64 1
  br label %362

362:                                              ; preds = %360, %358
  %363 = phi i64 [ 128, %360 ], [ %359, %358 ]
  %364 = phi ptr [ %361, %360 ], [ %323, %358 ]
  br label %320, !llvm.loop !23

365:                                              ; preds = %320
  %.lcssa132 = phi ptr [ %321, %320 ]
  %.lcssa119129.lcssa = phi i64 [ %.lcssa119129, %320 ]
  %.lcssa127 = phi i64 [ %322, %320 ]
  %.lcssa125 = phi ptr [ %323, %320 ]
  %.lcssa123 = phi i32 [ %324, %320 ]
  %.lcssa121 = phi i64 [ %325, %320 ]
  store i64 %.lcssa121, ptr %7, align 8
  store i32 %.lcssa123, ptr %9, align 4
  store ptr %.lcssa125, ptr %12, align 8
  store i64 %.lcssa127, ptr %8, align 8
  store i64 %.lcssa119129.lcssa, ptr %5, align 8
  store ptr %.lcssa132, ptr %13, align 8
  %366 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %366) #8
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
  %11 = sext i32 %3 to i64
  %12 = getelementptr [8 x i8], ptr %1, i64 %11
  %13 = getelementptr i8, ptr %12, i64 -8
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, ptr %10, align 4
  %16 = load i32, ptr %7, align 4
  %17 = sdiv i32 %16, 2
  %18 = load i32, ptr %7, align 4
  %19 = load ptr, ptr %5, align 8
  %20 = load ptr, ptr %6, align 8
  %21 = load ptr, ptr %5, align 8
  %22 = load ptr, ptr %6, align 8
  %23 = load ptr, ptr %5, align 8
  %24 = load i32, ptr %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [8 x i8], ptr %23, i64 %25
  %27 = load ptr, ptr %6, align 8
  %28 = load ptr, ptr %6, align 8
  %.promoted = load i32, ptr %8, align 4
  %.promoted2 = load i32, ptr %9, align 4
  br label %29

29:                                               ; preds = %61, %4
  %30 = phi i32 [ %51, %61 ], [ %.promoted2, %4 ]
  %31 = phi i32 [ %51, %61 ], [ %.promoted, %4 ]
  %.not = icmp sgt i32 %31, %17
  br i1 %.not, label %.loopexit, label %32

32:                                               ; preds = %29
  %33 = shl nsw i32 %31, 1
  %34 = icmp slt i32 %33, %18
  br i1 %34, label %35, label %50

35:                                               ; preds = %32
  %36 = sext i32 %33 to i64
  %37 = getelementptr [8 x i8], ptr %20, i64 %36
  %38 = getelementptr i8, ptr %37, i64 -8
  %39 = load i64, ptr %38, align 8
  %40 = getelementptr inbounds nuw [8 x i8], ptr %19, i64 %39
  %41 = load i64, ptr %40, align 8
  %42 = sext i32 %33 to i64
  %43 = getelementptr inbounds [8 x i8], ptr %22, i64 %42
  %44 = load i64, ptr %43, align 8
  %45 = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %44
  %46 = load i64, ptr %45, align 8
  %47 = icmp ugt i64 %41, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %35
  %49 = add nsw i32 %33, 1
  br label %50

50:                                               ; preds = %48, %35, %32
  %51 = phi i32 [ %49, %48 ], [ %33, %35 ], [ %33, %32 ]
  %52 = load i64, ptr %26, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr [8 x i8], ptr %27, i64 %53
  %55 = getelementptr i8, ptr %54, i64 -8
  %56 = load i64, ptr %55, align 8
  %57 = getelementptr inbounds nuw [8 x i8], ptr %23, i64 %56
  %58 = load i64, ptr %57, align 8
  %59 = icmp ult i64 %52, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  %.lcssa4 = phi i32 [ %51, %50 ]
  %.lcssa1 = phi i32 [ %31, %50 ]
  store i32 %.lcssa1, ptr %8, align 4
  store i32 %.lcssa4, ptr %9, align 4
  br label %69

61:                                               ; preds = %50
  %62 = sext i32 %51 to i64
  %63 = getelementptr [8 x i8], ptr %28, i64 %62
  %64 = getelementptr i8, ptr %63, i64 -8
  %65 = load i64, ptr %64, align 8
  %66 = sext i32 %31 to i64
  %67 = getelementptr [8 x i8], ptr %28, i64 %66
  %68 = getelementptr i8, ptr %67, i64 -8
  store i64 %65, ptr %68, align 8
  br label %29, !llvm.loop !24

.loopexit:                                        ; preds = %29
  %.lcssa3 = phi i32 [ %30, %29 ]
  %.lcssa = phi i32 [ %31, %29 ]
  store i32 %.lcssa, ptr %8, align 4
  store i32 %.lcssa3, ptr %9, align 4
  br label %69

69:                                               ; preds = %.loopexit, %60
  %70 = load i32, ptr %10, align 4
  %71 = sext i32 %70 to i64
  %72 = load ptr, ptr %6, align 8
  %73 = load i32, ptr %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr [8 x i8], ptr %72, i64 %74
  %76 = getelementptr i8, ptr %75, i64 -8
  store i64 %71, ptr %76, align 8
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
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 8
  %8 = alloca double, align 8
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store i8 0, ptr %6, align 1
  %9 = icmp sgt i32 %0, 1
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load i32, ptr %3, align 4
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 8
  br label %14

14:                                               ; preds = %21, %10
  %storemerge = phi i32 [ 1, %10 ], [ %22, %21 ]
  %15 = icmp slt i32 %storemerge, %11
  br i1 %15, label %16, label %.loopexit

16:                                               ; preds = %14
  %17 = load ptr, ptr %13, align 8
  %18 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(4) @.str.4) #8
  %.not = icmp eq i32 %18, 0
  br i1 %.not, label %19, label %20

19:                                               ; preds = %16
  %storemerge.lcssa3 = phi i32 [ %storemerge, %16 ]
  store i32 %storemerge.lcssa3, ptr %5, align 4
  store i8 1, ptr %6, align 1
  br label %23

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %20
  %22 = add nsw i32 %storemerge, 1
  br label %14, !llvm.loop !25

.loopexit:                                        ; preds = %14
  %storemerge.lcssa = phi i32 [ %storemerge, %14 ]
  store i32 %storemerge.lcssa, ptr %5, align 4
  br label %23

23:                                               ; preds = %.loopexit, %19
  br label %24

24:                                               ; preds = %23, %2
  %25 = call ptr @generate_test_data(i64 noundef 10000000)
  store ptr %25, ptr %7, align 8
  %26 = load ptr, ptr %7, align 8
  br label %27

27:                                               ; preds = %30, %24
  %storemerge1 = phi i32 [ 0, %24 ], [ %31, %30 ]
  %28 = icmp slt i32 %storemerge1, 30
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  call void @compdecomp(ptr noundef %26, i64 noundef 10000000)
  br label %30

30:                                               ; preds = %29
  %31 = add nsw i32 %storemerge1, 1
  br label %27, !llvm.loop !26

32:                                               ; preds = %27
  %storemerge1.lcssa = phi i32 [ %storemerge1, %27 ]
  store i32 %storemerge1.lcssa, ptr %5, align 4
  store double 0.000000e+00, ptr %8, align 8
  %33 = load ptr, ptr %7, align 8
  call void @free(ptr noundef %33) #8
  %34 = load i8, ptr %6, align 1
  %.not2 = icmp eq i8 %34, 0
  br i1 %.not2, label %39, label %35

35:                                               ; preds = %32
  %36 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %37 = load double, ptr %8, align 8
  %38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef nonnull @.str.5, double noundef %37) #8
  br label %43

39:                                               ; preds = %32
  %40 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %41 = load double, ptr %8, align 8
  %42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef nonnull @.str.6, double noundef %41) #8
  br label %43

43:                                               ; preds = %39, %35
  %44 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %45 = call i32 @fflush(ptr noundef %44) #8
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

declare dso_local i32 @fflush(ptr noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal i64 @random4() #0 {
  %1 = load i32, ptr @seed, align 4
  %2 = xor i32 %1, 123459876
  store i32 %2, ptr @seed, align 4
  %3 = sdiv i32 %2, 127773
  %.neg = mul i32 %3, -127773
  %4 = add i32 %.neg, %2
  %5 = mul nsw i32 %4, 16807
  %.neg1 = mul nsw i32 %3, -2836
  %6 = add i32 %.neg1, %5
  store i32 %6, ptr @seed, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, ptr @seed, align 4
  %10 = add nsw i32 %9, 2147483647
  store i32 %10, ptr @seed, align 4
  br label %11

11:                                               ; preds = %8, %0
  %12 = load i32, ptr @seed, align 4
  %13 = srem i32 %12, 32
  %14 = sext i32 %13 to i64
  %15 = xor i32 %12, 123459876
  store i32 %15, ptr @seed, align 4
  ret i64 %14
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) #6

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }
attributes #9 = { cold noreturn nounwind }

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
