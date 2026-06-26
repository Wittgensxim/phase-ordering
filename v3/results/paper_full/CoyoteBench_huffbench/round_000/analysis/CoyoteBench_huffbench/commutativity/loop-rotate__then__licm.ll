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
  %10 = load i32, ptr %6, align 4
  %11 = sext i32 %10 to i64
  %12 = load i64, ptr %2, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %.lr.ph, label %27

.lr.ph:                                           ; preds = %1
  %14 = load ptr, ptr %3, align 8
  %15 = load i64, ptr %2, align 8
  %.promoted = load ptr, ptr %5, align 8
  %.promoted1 = load i32, ptr %6, align 4
  br label %16

16:                                               ; preds = %.lr.ph, %23
  %17 = phi i32 [ %.promoted1, %.lr.ph ], [ %24, %23 ]
  %18 = phi ptr [ %.promoted, %.lr.ph ], [ %22, %23 ]
  %19 = call i64 @random4()
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 %19
  %21 = load i8, ptr %20, align 1
  store i8 %21, ptr %18, align 1
  %22 = getelementptr inbounds nuw i8, ptr %18, i32 1
  br label %23

23:                                               ; preds = %16
  %24 = add nsw i32 %17, 1
  %25 = sext i32 %24 to i64
  %26 = icmp ult i64 %25, %15
  br i1 %26, label %16, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %23
  %.lcssa2 = phi i32 [ %24, %23 ]
  %.lcssa = phi ptr [ %22, %23 ]
  store ptr %.lcssa, ptr %5, align 8
  store i32 %.lcssa2, ptr %6, align 4
  br label %27

27:                                               ; preds = %._crit_edge, %1
  %28 = load ptr, ptr %4, align 8
  ret ptr %28
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
  %45 = load i64, ptr %5, align 8
  %46 = load i64, ptr %4, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %.lr.ph, label %61

.lr.ph:                                           ; preds = %2
  %48 = load i64, ptr %4, align 8
  %.promoted = load ptr, ptr %13, align 8
  %.promoted40 = load i64, ptr %5, align 8
  br label %49

49:                                               ; preds = %.lr.ph, %58
  %50 = phi i64 [ %.promoted40, %.lr.ph ], [ %59, %58 ]
  %51 = phi ptr [ %.promoted, %.lr.ph ], [ %57, %58 ]
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i64
  %54 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %53
  %55 = load i64, ptr %54, align 8
  %56 = add i64 %55, 1
  store i64 %56, ptr %54, align 8
  %57 = getelementptr inbounds nuw i8, ptr %51, i32 1
  br label %58

58:                                               ; preds = %49
  %59 = add i64 %50, 1
  %60 = icmp ult i64 %59, %48
  br i1 %60, label %49, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %58
  %.lcssa41 = phi i64 [ %59, %58 ]
  %.lcssa = phi ptr [ %57, %58 ]
  store ptr %.lcssa, ptr %13, align 8
  store i64 %.lcssa41, ptr %5, align 8
  br label %61

61:                                               ; preds = %._crit_edge, %2
  store i64 0, ptr %7, align 8
  store i64 0, ptr %5, align 8
  %62 = load i64, ptr %5, align 8
  %63 = icmp ult i64 %62, 256
  br i1 %63, label %.lr.ph2, label %78

.lr.ph2:                                          ; preds = %61
  %.promoted42 = load i64, ptr %5, align 8
  %.promoted44 = load i64, ptr %7, align 8
  br label %64

64:                                               ; preds = %.lr.ph2, %75
  %65 = phi i64 [ %.promoted44, %.lr.ph2 ], [ %74, %75 ]
  %66 = phi i64 [ %.promoted42, %.lr.ph2 ], [ %76, %75 ]
  %67 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %66
  %68 = load i64, ptr %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %65
  store i64 %66, ptr %71, align 8
  %72 = add i64 %65, 1
  br label %73

73:                                               ; preds = %70, %64
  %74 = phi i64 [ %72, %70 ], [ %65, %64 ]
  br label %75

75:                                               ; preds = %73
  %76 = add i64 %66, 1
  %77 = icmp ult i64 %76, 256
  br i1 %77, label %64, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %75
  %.lcssa45 = phi i64 [ %74, %75 ]
  %.lcssa43 = phi i64 [ %76, %75 ]
  store i64 %.lcssa43, ptr %5, align 8
  store i64 %.lcssa45, ptr %7, align 8
  br label %78

78:                                               ; preds = %._crit_edge3, %61
  %79 = load i64, ptr %7, align 8
  store i64 %79, ptr %5, align 8
  %80 = load i64, ptr %5, align 8
  %81 = icmp ugt i64 %80, 0
  br i1 %81, label %.lr.ph5, label %92

.lr.ph5:                                          ; preds = %78
  %82 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  %83 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %84 = load i64, ptr %7, align 8
  %85 = trunc i64 %84 to i32
  %.promoted46 = load i64, ptr %5, align 8
  br label %86

86:                                               ; preds = %.lr.ph5, %89
  %87 = phi i64 [ %.promoted46, %.lr.ph5 ], [ %90, %89 ]
  %88 = trunc i64 %87 to i32
  call void @heap_adjust(ptr noundef %82, ptr noundef %83, i32 noundef %85, i32 noundef %88)
  br label %89

89:                                               ; preds = %86
  %90 = add i64 %87, -1
  %91 = icmp ugt i64 %90, 0
  br i1 %91, label %86, label %._crit_edge6, !llvm.loop !11

._crit_edge6:                                     ; preds = %89
  %.lcssa47 = phi i64 [ %90, %89 ]
  store i64 %.lcssa47, ptr %5, align 8
  br label %92

92:                                               ; preds = %._crit_edge6, %78
  %93 = load i64, ptr %7, align 8
  %94 = icmp ugt i64 %93, 1
  br i1 %94, label %.lr.ph8, label %129

.lr.ph8:                                          ; preds = %92
  %95 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %96 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %97 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  %98 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %99 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %100 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %101 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %102 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  %103 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %.promoted48 = load i64, ptr %7, align 8
  br label %104

104:                                              ; preds = %.lr.ph8, %104
  %105 = phi i64 [ %.promoted48, %.lr.ph8 ], [ %106, %104 ]
  %106 = add i64 %105, -1
  %107 = load i64, ptr %95, align 16
  %108 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %106
  %109 = load i64, ptr %108, align 8
  store i64 %109, ptr %96, align 16
  %110 = trunc i64 %106 to i32
  call void @heap_adjust(ptr noundef %97, ptr noundef %98, i32 noundef %110, i32 noundef 1)
  %111 = load i64, ptr %99, align 16
  %112 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %111
  %113 = load i64, ptr %112, align 8
  %114 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %107
  %115 = load i64, ptr %114, align 8
  %116 = add i64 %113, %115
  %117 = add i64 256, %106
  %118 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %117
  store i64 %116, ptr %118, align 8
  %119 = add i64 256, %106
  %120 = trunc i64 %119 to i32
  %121 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %107
  store i32 %120, ptr %121, align 4
  %122 = sub i64 -256, %106
  %123 = trunc i64 %122 to i32
  %124 = load i64, ptr %100, align 16
  %125 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %124
  store i32 %123, ptr %125, align 4
  %126 = add i64 256, %106
  store i64 %126, ptr %101, align 16
  %127 = trunc i64 %106 to i32
  call void @heap_adjust(ptr noundef %102, ptr noundef %103, i32 noundef %127, i32 noundef 1)
  %128 = icmp ugt i64 %106, 1
  br i1 %128, label %104, label %._crit_edge9, !llvm.loop !12

._crit_edge9:                                     ; preds = %104
  %.lcssa51 = phi i64 [ %107, %104 ]
  %.lcssa49 = phi i64 [ %106, %104 ]
  store i64 %.lcssa49, ptr %7, align 8
  store i64 %.lcssa51, ptr %20, align 8
  br label %129

129:                                              ; preds = %._crit_edge9, %92
  %130 = load i64, ptr %7, align 8
  %131 = add i64 256, %130
  %132 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %131
  store i32 0, ptr %132, align 4
  store i64 0, ptr %23, align 8
  store i64 0, ptr %24, align 8
  store i64 0, ptr %21, align 8
  %133 = load i64, ptr %21, align 8
  %134 = icmp ult i64 %133, 256
  br i1 %134, label %.lr.ph14, label %180

.lr.ph14:                                         ; preds = %129
  %.promoted60 = load i64, ptr %21, align 8
  %.promoted62 = load i64, ptr %5, align 8
  %.promoted66 = load i64, ptr %6, align 8
  %.promoted70 = load i64, ptr %22, align 8
  %.promoted74 = load i32, ptr %25, align 4
  %.promoted78 = load i64, ptr %23, align 8
  %.promoted82 = load i64, ptr %24, align 8
  br label %135

135:                                              ; preds = %.lr.ph14, %177
  %.lcssa596385 = phi i64 [ %.promoted82, %.lr.ph14 ], [ %.lcssa596383, %177 ]
  %.lcssa577181 = phi i64 [ %.promoted78, %.lr.ph14 ], [ %.lcssa577179, %177 ]
  %.lcssa5376 = phi i32 [ %.promoted74, %.lr.ph14 ], [ %.lcssa5375, %177 ]
  %.lcssa5773 = phi i64 [ %.promoted70, %.lr.ph14 ], [ %.lcssa5772, %177 ]
  %.lcssa5568 = phi i64 [ %.promoted66, %.lr.ph14 ], [ %.lcssa5567, %177 ]
  %.lcssa5965 = phi i64 [ %.promoted62, %.lr.ph14 ], [ %.lcssa5964, %177 ]
  %136 = phi i64 [ %.promoted60, %.lr.ph14 ], [ %178, %177 ]
  %137 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %136
  %138 = load i64, ptr %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %135
  %141 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %136
  store i32 0, ptr %141, align 4
  %142 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %136
  store i8 0, ptr %142, align 1
  br label %176

143:                                              ; preds = %135
  %144 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %136
  %145 = load i32, ptr %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %.lr.ph11, label %165

.lr.ph11:                                         ; preds = %143
  br label %147

147:                                              ; preds = %.lr.ph11, %156
  %148 = phi i64 [ 0, %.lr.ph11 ], [ %163, %156 ]
  %149 = phi i64 [ 0, %.lr.ph11 ], [ %157, %156 ]
  %150 = phi i64 [ 1, %.lr.ph11 ], [ %162, %156 ]
  %151 = phi i32 [ %145, %.lr.ph11 ], [ %161, %156 ]
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %147
  %154 = add i64 %149, %150
  %155 = sub nsw i32 0, %151
  br label %156

156:                                              ; preds = %153, %147
  %157 = phi i64 [ %154, %153 ], [ %149, %147 ]
  %158 = phi i32 [ %155, %153 ], [ %151, %147 ]
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [512 x i32], ptr %17, i64 0, i64 %159
  %161 = load i32, ptr %160, align 4
  %162 = shl i64 %150, 1
  %163 = add i64 %148, 1
  %164 = icmp ne i32 %161, 0
  br i1 %164, label %147, label %._crit_edge12, !llvm.loop !13

._crit_edge12:                                    ; preds = %156
  %.lcssa59 = phi i64 [ %163, %156 ]
  %.lcssa57 = phi i64 [ %157, %156 ]
  %.lcssa55 = phi i64 [ %162, %156 ]
  %.lcssa53 = phi i32 [ %161, %156 ]
  br label %165

165:                                              ; preds = %._crit_edge12, %143
  %.lcssa5377 = phi i32 [ %.lcssa53, %._crit_edge12 ], [ %145, %143 ]
  %.lcssa5771 = phi i64 [ %.lcssa57, %._crit_edge12 ], [ 0, %143 ]
  %.lcssa5569 = phi i64 [ %.lcssa55, %._crit_edge12 ], [ 1, %143 ]
  %.lcssa5963 = phi i64 [ %.lcssa59, %._crit_edge12 ], [ 0, %143 ]
  %166 = trunc i64 %.lcssa5771 to i32
  %167 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %136
  store i32 %166, ptr %167, align 4
  %168 = trunc i64 %.lcssa5963 to i8
  %169 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %136
  store i8 %168, ptr %169, align 1
  %170 = icmp ugt i64 %.lcssa5771, %.lcssa577181
  br i1 %170, label %171, label %172

171:                                              ; preds = %165
  br label %172

172:                                              ; preds = %171, %165
  %.lcssa577180 = phi i64 [ %.lcssa5771, %171 ], [ %.lcssa577181, %165 ]
  %173 = icmp ugt i64 %.lcssa5963, %.lcssa596385
  br i1 %173, label %174, label %175

174:                                              ; preds = %172
  br label %175

175:                                              ; preds = %174, %172
  %.lcssa596384 = phi i64 [ %.lcssa5963, %174 ], [ %.lcssa596385, %172 ]
  br label %176

176:                                              ; preds = %175, %140
  %.lcssa596383 = phi i64 [ %.lcssa596384, %175 ], [ %.lcssa596385, %140 ]
  %.lcssa577179 = phi i64 [ %.lcssa577180, %175 ], [ %.lcssa577181, %140 ]
  %.lcssa5375 = phi i32 [ %.lcssa5377, %175 ], [ %.lcssa5376, %140 ]
  %.lcssa5772 = phi i64 [ %.lcssa5771, %175 ], [ %.lcssa5773, %140 ]
  %.lcssa5567 = phi i64 [ %.lcssa5569, %175 ], [ %.lcssa5568, %140 ]
  %.lcssa5964 = phi i64 [ %.lcssa5963, %175 ], [ %.lcssa5965, %140 ]
  br label %177

177:                                              ; preds = %176
  %178 = add i64 %136, 1
  %179 = icmp ult i64 %178, 256
  br i1 %179, label %135, label %._crit_edge15, !llvm.loop !14

._crit_edge15:                                    ; preds = %177
  %.lcssa596383.lcssa = phi i64 [ %.lcssa596383, %177 ]
  %.lcssa577179.lcssa = phi i64 [ %.lcssa577179, %177 ]
  %.lcssa5375.lcssa = phi i32 [ %.lcssa5375, %177 ]
  %.lcssa5772.lcssa = phi i64 [ %.lcssa5772, %177 ]
  %.lcssa5567.lcssa = phi i64 [ %.lcssa5567, %177 ]
  %.lcssa5964.lcssa = phi i64 [ %.lcssa5964, %177 ]
  %.lcssa61 = phi i64 [ %178, %177 ]
  store i64 %.lcssa61, ptr %21, align 8
  store i64 %.lcssa5964.lcssa, ptr %5, align 8
  store i64 %.lcssa5567.lcssa, ptr %6, align 8
  store i64 %.lcssa5772.lcssa, ptr %22, align 8
  store i32 %.lcssa5375.lcssa, ptr %25, align 4
  store i64 %.lcssa577179.lcssa, ptr %23, align 8
  store i64 %.lcssa596383.lcssa, ptr %24, align 8
  br label %180

180:                                              ; preds = %._crit_edge15, %129
  %181 = load i64, ptr %24, align 8
  %182 = icmp ugt i64 %181, 32
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = call ptr @__acrt_iob_func(i32 noundef 2)
  %185 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %184, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

186:                                              ; preds = %180
  store i64 0, ptr %26, align 8
  store i8 0, ptr %27, align 1
  store i32 -1, ptr %28, align 4
  %187 = load ptr, ptr %3, align 8
  store ptr %187, ptr %13, align 8
  %188 = load i64, ptr %23, align 8
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %186
  %191 = call ptr @__acrt_iob_func(i32 noundef 2)
  %192 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %191, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

193:                                              ; preds = %186
  store i64 0, ptr %6, align 8
  %194 = load i64, ptr %6, align 8
  %195 = load i64, ptr %4, align 8
  %196 = icmp ult i64 %194, %195
  br i1 %196, label %.lr.ph20, label %268

.lr.ph20:                                         ; preds = %193
  %197 = load ptr, ptr %14, align 8
  %198 = load i64, ptr %4, align 8
  %199 = load i64, ptr %4, align 8
  %.promoted101 = load ptr, ptr %13, align 8
  %.promoted109 = load i64, ptr %6, align 8
  %.promoted112 = load i32, ptr %28, align 4
  %.promoted115 = load i8, ptr %27, align 1
  %.promoted118 = load i64, ptr %26, align 8
  br label %200

200:                                              ; preds = %.lr.ph20, %265
  %.lcssa94120 = phi i64 [ %.promoted118, %.lr.ph20 ], [ %.lcssa94119, %265 ]
  %.lcssa91117 = phi i8 [ %.promoted115, %.lr.ph20 ], [ %.lcssa91116, %265 ]
  %.lcssa88114 = phi i32 [ %.promoted112, %.lr.ph20 ], [ %.lcssa88113, %265 ]
  %201 = phi i64 [ %.promoted109, %.lr.ph20 ], [ %266, %265 ]
  %202 = phi ptr [ %.promoted101, %.lr.ph20 ], [ %264, %265 ]
  %203 = load i8, ptr %202, align 1
  %204 = zext i8 %203 to i64
  %205 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %204
  %206 = load i8, ptr %205, align 1
  %207 = zext i8 %206 to i32
  %208 = sub nsw i32 %207, 1
  %209 = shl i32 1, %208
  %210 = sext i32 %209 to i64
  %211 = load i8, ptr %202, align 1
  %212 = zext i8 %211 to i64
  %213 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %212
  %214 = load i8, ptr %213, align 1
  %215 = zext i8 %214 to i64
  %216 = icmp ult i64 0, %215
  br i1 %216, label %.lr.ph17, label %263

.lr.ph17:                                         ; preds = %200
  br label %217

217:                                              ; preds = %.lr.ph17, %255
  %218 = phi i64 [ 0, %.lr.ph17 ], [ %256, %255 ]
  %219 = phi i64 [ %210, %.lr.ph17 ], [ %254, %255 ]
  %220 = phi i64 [ %.lcssa94120, %.lr.ph17 ], [ %238, %255 ]
  %221 = phi i8 [ %.lcssa91117, %.lr.ph17 ], [ %253, %255 ]
  %222 = phi i32 [ %.lcssa88114, %.lr.ph17 ], [ %240, %255 ]
  %223 = icmp eq i32 %222, 7
  br i1 %223, label %224, label %232

224:                                              ; preds = %217
  %225 = getelementptr inbounds nuw i8, ptr %197, i64 %220
  store i8 %221, ptr %225, align 1
  %226 = add i64 %220, 1
  %227 = icmp eq i64 %226, %198
  br i1 %227, label %228, label %231

228:                                              ; preds = %224
  %.lcssa94120.lcssa = phi i64 [ %.lcssa94120, %224 ]
  %.lcssa91117.lcssa = phi i8 [ %.lcssa91117, %224 ]
  %.lcssa88114.lcssa = phi i32 [ %.lcssa88114, %224 ]
  %.lcssa111 = phi i64 [ %201, %224 ]
  %.lcssa106 = phi i64 [ %210, %224 ]
  %.lcssa103 = phi ptr [ %202, %224 ]
  %.lcssa99 = phi i64 [ %218, %224 ]
  %.lcssa96 = phi i64 [ %219, %224 ]
  %.lcssa93 = phi i64 [ %226, %224 ]
  %.lcssa90 = phi i8 [ %221, %224 ]
  %.lcssa87 = phi i32 [ %222, %224 ]
  store ptr %.lcssa103, ptr %13, align 8
  store i64 %.lcssa106, ptr %8, align 8
  store i64 0, ptr %5, align 8
  store i64 %.lcssa111, ptr %6, align 8
  store i32 %.lcssa88114.lcssa, ptr %28, align 4
  store i8 %.lcssa91117.lcssa, ptr %27, align 1
  store i64 %.lcssa94120.lcssa, ptr %26, align 8
  store i32 %.lcssa87, ptr %28, align 4
  store i8 %.lcssa90, ptr %27, align 1
  store i64 %.lcssa93, ptr %26, align 8
  store i64 %.lcssa96, ptr %8, align 8
  store i64 %.lcssa99, ptr %5, align 8
  %229 = call ptr @__acrt_iob_func(i32 noundef 2)
  %230 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %229, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

231:                                              ; preds = %224
  br label %237

232:                                              ; preds = %217
  %233 = add nsw i32 %222, 1
  %234 = sext i8 %221 to i32
  %235 = shl i32 %234, 1
  %236 = trunc i32 %235 to i8
  br label %237

237:                                              ; preds = %232, %231
  %238 = phi i64 [ %220, %232 ], [ %226, %231 ]
  %239 = phi i8 [ %236, %232 ], [ 0, %231 ]
  %240 = phi i32 [ %233, %232 ], [ 0, %231 ]
  %241 = load i8, ptr %202, align 1
  %242 = zext i8 %241 to i64
  %243 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %242
  %244 = load i32, ptr %243, align 4
  %245 = zext i32 %244 to i64
  %246 = and i64 %245, %219
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %237
  %249 = sext i8 %239 to i32
  %250 = or i32 %249, 1
  %251 = trunc i32 %250 to i8
  br label %252

252:                                              ; preds = %248, %237
  %253 = phi i8 [ %251, %248 ], [ %239, %237 ]
  %254 = lshr i64 %219, 1
  br label %255

255:                                              ; preds = %252
  %256 = add i64 %218, 1
  %257 = load i8, ptr %202, align 1
  %258 = zext i8 %257 to i64
  %259 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %258
  %260 = load i8, ptr %259, align 1
  %261 = zext i8 %260 to i64
  %262 = icmp ult i64 %256, %261
  br i1 %262, label %217, label %._crit_edge18, !llvm.loop !15

._crit_edge18:                                    ; preds = %255
  %.lcssa100 = phi i64 [ %256, %255 ]
  %.lcssa97 = phi i64 [ %254, %255 ]
  %.lcssa94 = phi i64 [ %238, %255 ]
  %.lcssa91 = phi i8 [ %253, %255 ]
  %.lcssa88 = phi i32 [ %240, %255 ]
  br label %263

263:                                              ; preds = %._crit_edge18, %200
  %.lcssa94119 = phi i64 [ %.lcssa94, %._crit_edge18 ], [ %.lcssa94120, %200 ]
  %.lcssa91116 = phi i8 [ %.lcssa91, %._crit_edge18 ], [ %.lcssa91117, %200 ]
  %.lcssa88113 = phi i32 [ %.lcssa88, %._crit_edge18 ], [ %.lcssa88114, %200 ]
  %.lcssa100108 = phi i64 [ %.lcssa100, %._crit_edge18 ], [ 0, %200 ]
  %.lcssa97105 = phi i64 [ %.lcssa97, %._crit_edge18 ], [ %210, %200 ]
  %264 = getelementptr inbounds nuw i8, ptr %202, i32 1
  br label %265

265:                                              ; preds = %263
  %266 = add i64 %201, 1
  %267 = icmp ult i64 %266, %199
  br i1 %267, label %200, label %._crit_edge21, !llvm.loop !16

._crit_edge21:                                    ; preds = %265
  %.lcssa94119.lcssa = phi i64 [ %.lcssa94119, %265 ]
  %.lcssa91116.lcssa = phi i8 [ %.lcssa91116, %265 ]
  %.lcssa88113.lcssa = phi i32 [ %.lcssa88113, %265 ]
  %.lcssa110 = phi i64 [ %266, %265 ]
  %.lcssa100108.lcssa = phi i64 [ %.lcssa100108, %265 ]
  %.lcssa97105.lcssa = phi i64 [ %.lcssa97105, %265 ]
  %.lcssa102 = phi ptr [ %264, %265 ]
  store ptr %.lcssa102, ptr %13, align 8
  store i64 %.lcssa97105.lcssa, ptr %8, align 8
  store i64 %.lcssa100108.lcssa, ptr %5, align 8
  store i64 %.lcssa110, ptr %6, align 8
  store i32 %.lcssa88113.lcssa, ptr %28, align 4
  store i8 %.lcssa91116.lcssa, ptr %27, align 1
  store i64 %.lcssa94119.lcssa, ptr %26, align 8
  br label %268

268:                                              ; preds = %._crit_edge21, %193
  %269 = load i32, ptr %28, align 4
  %270 = sub nsw i32 7, %269
  %271 = load i8, ptr %27, align 1
  %272 = sext i8 %271 to i32
  %273 = shl i32 %272, %270
  %274 = trunc i32 %273 to i8
  store i8 %274, ptr %27, align 1
  %275 = load i8, ptr %27, align 1
  %276 = load ptr, ptr %14, align 8
  %277 = load i64, ptr %26, align 8
  %278 = getelementptr inbounds nuw i8, ptr %276, i64 %277
  store i8 %275, ptr %278, align 1
  %279 = load i64, ptr %26, align 8
  %280 = add i64 %279, 1
  store i64 %280, ptr %26, align 8
  %281 = getelementptr inbounds [256 x i32], ptr %29, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %281, i8 0, i64 1024, i1 false)
  %282 = getelementptr inbounds [256 x i8], ptr %30, i64 0, i64 0
  store ptr %282, ptr %31, align 8
  store i64 0, ptr %6, align 8
  %283 = load i64, ptr %6, align 8
  %284 = icmp ult i64 %283, 256
  br i1 %284, label %.lr.ph26, label %336

.lr.ph26:                                         ; preds = %268
  %.promoted127 = load i64, ptr %6, align 8
  %.promoted129 = load ptr, ptr %31, align 8
  %.promoted131 = load i32, ptr %9, align 4
  %.promoted135 = load i64, ptr %8, align 8
  %.promoted139 = load i64, ptr %5, align 8
  br label %285

285:                                              ; preds = %.lr.ph26, %333
  %.lcssa126141 = phi i64 [ %.promoted139, %.lr.ph26 ], [ %.lcssa126140, %333 ]
  %.lcssa124137 = phi i64 [ %.promoted135, %.lr.ph26 ], [ %.lcssa124136, %333 ]
  %.lcssa122133 = phi i32 [ %.promoted131, %.lr.ph26 ], [ %.lcssa122134, %333 ]
  %286 = phi ptr [ %.promoted129, %.lr.ph26 ], [ %289, %333 ]
  %287 = phi i64 [ %.promoted127, %.lr.ph26 ], [ %334, %333 ]
  %288 = trunc i64 %287 to i8
  store i8 %288, ptr %286, align 1
  %289 = getelementptr inbounds nuw i8, ptr %286, i32 1
  %290 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %287
  %291 = load i32, ptr %290, align 4
  %292 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %287
  %293 = load i8, ptr %292, align 1
  %294 = zext i8 %293 to i32
  %295 = or i32 %291, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %332

297:                                              ; preds = %285
  %298 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %287
  %299 = load i8, ptr %298, align 1
  %300 = zext i8 %299 to i32
  %301 = sub nsw i32 %300, 1
  %302 = shl i32 1, %301
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %287
  %305 = load i8, ptr %304, align 1
  %306 = zext i8 %305 to i64
  %307 = icmp ult i64 0, %306
  br i1 %307, label %.lr.ph23, label %330

.lr.ph23:                                         ; preds = %297
  %308 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %287
  %309 = load i32, ptr %308, align 4
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %287
  %312 = load i8, ptr %311, align 1
  %313 = zext i8 %312 to i64
  br label %314

314:                                              ; preds = %.lr.ph23, %327
  %315 = phi i64 [ 0, %.lr.ph23 ], [ %328, %327 ]
  %316 = phi i64 [ %303, %.lr.ph23 ], [ %326, %327 ]
  %317 = phi i32 [ 0, %.lr.ph23 ], [ %325, %327 ]
  %318 = mul i32 %317, 2
  %319 = add i32 %318, 1
  %320 = and i64 %310, %316
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %324

322:                                              ; preds = %314
  %323 = add i32 %319, 1
  br label %324

324:                                              ; preds = %322, %314
  %325 = phi i32 [ %323, %322 ], [ %319, %314 ]
  %326 = lshr i64 %316, 1
  br label %327

327:                                              ; preds = %324
  %328 = add i64 %315, 1
  %329 = icmp ult i64 %328, %313
  br i1 %329, label %314, label %._crit_edge24, !llvm.loop !17

._crit_edge24:                                    ; preds = %327
  %.lcssa126 = phi i64 [ %328, %327 ]
  %.lcssa124 = phi i64 [ %326, %327 ]
  %.lcssa122 = phi i32 [ %325, %327 ]
  br label %330

330:                                              ; preds = %._crit_edge24, %297
  %.lcssa126142 = phi i64 [ %.lcssa126, %._crit_edge24 ], [ 0, %297 ]
  %.lcssa124138 = phi i64 [ %.lcssa124, %._crit_edge24 ], [ %303, %297 ]
  %.lcssa122132 = phi i32 [ %.lcssa122, %._crit_edge24 ], [ 0, %297 ]
  %331 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %287
  store i32 %.lcssa122132, ptr %331, align 4
  br label %332

332:                                              ; preds = %330, %285
  %.lcssa126140 = phi i64 [ %.lcssa126142, %330 ], [ %.lcssa126141, %285 ]
  %.lcssa124136 = phi i64 [ %.lcssa124138, %330 ], [ %.lcssa124137, %285 ]
  %.lcssa122134 = phi i32 [ %.lcssa122132, %330 ], [ %.lcssa122133, %285 ]
  br label %333

333:                                              ; preds = %332
  %334 = add i64 %287, 1
  %335 = icmp ult i64 %334, 256
  br i1 %335, label %285, label %._crit_edge27, !llvm.loop !18

._crit_edge27:                                    ; preds = %333
  %.lcssa126140.lcssa = phi i64 [ %.lcssa126140, %333 ]
  %.lcssa124136.lcssa = phi i64 [ %.lcssa124136, %333 ]
  %.lcssa122134.lcssa = phi i32 [ %.lcssa122134, %333 ]
  %.lcssa130 = phi ptr [ %289, %333 ]
  %.lcssa128 = phi i64 [ %334, %333 ]
  store i64 %.lcssa128, ptr %6, align 8
  store ptr %.lcssa130, ptr %31, align 8
  store i32 %.lcssa122134.lcssa, ptr %9, align 4
  store i64 %.lcssa124136.lcssa, ptr %8, align 8
  store i64 %.lcssa126140.lcssa, ptr %5, align 8
  br label %336

336:                                              ; preds = %._crit_edge27, %268
  store i64 1, ptr %5, align 8
  %337 = load i64, ptr %5, align 8
  %338 = icmp ult i64 %337, 256
  br i1 %338, label %.lr.ph29, label %371

.lr.ph29:                                         ; preds = %336
  %.promoted145 = load i64, ptr %5, align 8
  br label %339

339:                                              ; preds = %.lr.ph29, %368
  %340 = phi i64 [ %.promoted145, %.lr.ph29 ], [ %369, %368 ]
  %341 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %340
  %342 = load i32, ptr %341, align 4
  %343 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %340
  %344 = load i8, ptr %343, align 1
  br label %345

345:                                              ; preds = %355, %339
  %346 = phi i64 [ %364, %355 ], [ %340, %339 ]
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %353

348:                                              ; preds = %345
  %349 = sub i64 %346, 1
  %350 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %349
  %351 = load i32, ptr %350, align 4
  %352 = icmp ugt i32 %351, %342
  br label %353

353:                                              ; preds = %348, %345
  %354 = phi i1 [ false, %345 ], [ %352, %348 ]
  br i1 %354, label %355, label %365

355:                                              ; preds = %353
  %356 = sub i64 %346, 1
  %357 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %356
  %358 = load i32, ptr %357, align 4
  %359 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %346
  store i32 %358, ptr %359, align 4
  %360 = sub i64 %346, 1
  %361 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %360
  %362 = load i8, ptr %361, align 1
  %363 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %346
  store i8 %362, ptr %363, align 1
  %364 = add i64 %346, -1
  br label %345, !llvm.loop !19

365:                                              ; preds = %353
  %.lcssa144 = phi i64 [ %346, %353 ]
  %366 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %.lcssa144
  store i32 %342, ptr %366, align 4
  %367 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %.lcssa144
  store i8 %344, ptr %367, align 1
  br label %368

368:                                              ; preds = %365
  %369 = add i64 %340, 1
  %370 = icmp ult i64 %369, 256
  br i1 %370, label %339, label %._crit_edge30, !llvm.loop !20

._crit_edge30:                                    ; preds = %368
  %.lcssa144.lcssa = phi i64 [ %.lcssa144, %368 ]
  %.lcssa150 = phi i8 [ %344, %368 ]
  %.lcssa148 = phi i32 [ %342, %368 ]
  %.lcssa146 = phi i64 [ %369, %368 ]
  store i64 %.lcssa146, ptr %5, align 8
  store i32 %.lcssa148, ptr %10, align 4
  store i8 %.lcssa150, ptr %11, align 1
  store i64 %.lcssa144.lcssa, ptr %6, align 8
  br label %371

371:                                              ; preds = %._crit_edge30, %336
  store i64 0, ptr %6, align 8
  %372 = load i64, ptr %6, align 8
  %373 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %372
  %374 = load i32, ptr %373, align 4
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %.lr.ph32, label %383

.lr.ph32:                                         ; preds = %371
  %.promoted152 = load i64, ptr %6, align 8
  br label %376

376:                                              ; preds = %.lr.ph32, %378
  %377 = phi i64 [ %.promoted152, %.lr.ph32 ], [ %379, %378 ]
  br label %378

378:                                              ; preds = %376
  %379 = add i64 %377, 1
  %380 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %379
  %381 = load i32, ptr %380, align 4
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %376, label %._crit_edge33, !llvm.loop !21

._crit_edge33:                                    ; preds = %378
  %.lcssa153 = phi i64 [ %379, %378 ]
  store i64 %.lcssa153, ptr %6, align 8
  br label %383

383:                                              ; preds = %._crit_edge33, %371
  store i32 0, ptr %9, align 4
  %384 = load i64, ptr %6, align 8
  store i64 %384, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  %385 = load ptr, ptr %14, align 8
  store ptr %385, ptr %12, align 8
  %386 = load ptr, ptr %3, align 8
  store ptr %386, ptr %13, align 8
  %387 = load i64, ptr %7, align 8
  %388 = load i64, ptr %4, align 8
  %389 = icmp ult i64 %387, %388
  br i1 %389, label %.lr.ph38, label %439

.lr.ph38:                                         ; preds = %383
  %390 = load i64, ptr %6, align 8
  %391 = load i64, ptr %4, align 8
  %.promoted156 = load i32, ptr %9, align 4
  %.promoted158 = load ptr, ptr %12, align 8
  %.promoted160 = load i64, ptr %8, align 8
  %.promoted162 = load i64, ptr %5, align 8
  %.promoted166 = load ptr, ptr %13, align 8
  %.promoted168 = load i64, ptr %7, align 8
  br label %392

392:                                              ; preds = %.lr.ph38, %435
  %393 = phi i64 [ %.promoted168, %.lr.ph38 ], [ %427, %435 ]
  %394 = phi ptr [ %.promoted166, %.lr.ph38 ], [ %428, %435 ]
  %.lcssa155165 = phi i64 [ %.promoted162, %.lr.ph38 ], [ %.lcssa155163, %435 ]
  %395 = phi i64 [ %.promoted160, %.lr.ph38 ], [ %436, %435 ]
  %396 = phi ptr [ %.promoted158, %.lr.ph38 ], [ %437, %435 ]
  %397 = phi i32 [ %.promoted156, %.lr.ph38 ], [ %429, %435 ]
  %398 = mul i32 %397, 2
  %399 = add i32 %398, 1
  %400 = load i8, ptr %396, align 1
  %401 = zext i8 %400 to i64
  %402 = and i64 %401, %395
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %406

404:                                              ; preds = %392
  %405 = add i32 %399, 1
  br label %406

406:                                              ; preds = %404, %392
  %407 = phi i32 [ %405, %404 ], [ %399, %392 ]
  %408 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %.lcssa155165
  %409 = load i32, ptr %408, align 4
  %410 = icmp ult i32 %409, %407
  br i1 %410, label %.lr.ph35, label %417

.lr.ph35:                                         ; preds = %406
  br label %411

411:                                              ; preds = %.lr.ph35, %411
  %412 = phi i64 [ %.lcssa155165, %.lr.ph35 ], [ %413, %411 ]
  %413 = add i64 %412, 1
  %414 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %413
  %415 = load i32, ptr %414, align 4
  %416 = icmp ult i32 %415, %407
  br i1 %416, label %411, label %._crit_edge36, !llvm.loop !22

._crit_edge36:                                    ; preds = %411
  %.lcssa155 = phi i64 [ %413, %411 ]
  br label %417

417:                                              ; preds = %._crit_edge36, %406
  %.lcssa155164 = phi i64 [ %.lcssa155, %._crit_edge36 ], [ %.lcssa155165, %406 ]
  %418 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %.lcssa155164
  %419 = load i32, ptr %418, align 4
  %420 = icmp eq i32 %407, %419
  br i1 %420, label %421, label %426

421:                                              ; preds = %417
  %422 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %.lcssa155164
  %423 = load i8, ptr %422, align 1
  store i8 %423, ptr %394, align 1
  %424 = getelementptr inbounds nuw i8, ptr %394, i32 1
  %425 = add i64 %393, 1
  br label %426

426:                                              ; preds = %421, %417
  %427 = phi i64 [ %425, %421 ], [ %393, %417 ]
  %428 = phi ptr [ %424, %421 ], [ %394, %417 ]
  %.lcssa155163 = phi i64 [ %390, %421 ], [ %.lcssa155164, %417 ]
  %429 = phi i32 [ 0, %421 ], [ %407, %417 ]
  %430 = icmp ugt i64 %395, 1
  br i1 %430, label %431, label %433

431:                                              ; preds = %426
  %432 = lshr i64 %395, 1
  br label %435

433:                                              ; preds = %426
  %434 = getelementptr inbounds nuw i8, ptr %396, i32 1
  br label %435

435:                                              ; preds = %433, %431
  %436 = phi i64 [ 128, %433 ], [ %432, %431 ]
  %437 = phi ptr [ %434, %433 ], [ %396, %431 ]
  %438 = icmp ult i64 %427, %391
  br i1 %438, label %392, label %._crit_edge39, !llvm.loop !23

._crit_edge39:                                    ; preds = %435
  %.lcssa169 = phi i64 [ %427, %435 ]
  %.lcssa167 = phi ptr [ %428, %435 ]
  %.lcssa155163.lcssa = phi i64 [ %.lcssa155163, %435 ]
  %.lcssa161 = phi i64 [ %436, %435 ]
  %.lcssa159 = phi ptr [ %437, %435 ]
  %.lcssa157 = phi i32 [ %429, %435 ]
  store i32 %.lcssa157, ptr %9, align 4
  store ptr %.lcssa159, ptr %12, align 8
  store i64 %.lcssa161, ptr %8, align 8
  store i64 %.lcssa155163.lcssa, ptr %5, align 8
  store ptr %.lcssa167, ptr %13, align 8
  store i64 %.lcssa169, ptr %7, align 8
  br label %439

439:                                              ; preds = %._crit_edge39, %383
  %440 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %440)
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
  %18 = load i32, ptr %8, align 4
  %19 = load i32, ptr %7, align 4
  %20 = sdiv i32 %19, 2
  %21 = icmp sle i32 %18, %20
  br i1 %21, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  %22 = load i32, ptr %7, align 4
  %23 = load ptr, ptr %5, align 8
  %24 = load ptr, ptr %6, align 8
  %25 = load ptr, ptr %5, align 8
  %26 = load ptr, ptr %6, align 8
  %27 = load ptr, ptr %5, align 8
  %28 = load i32, ptr %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, ptr %27, i64 %29
  %31 = load ptr, ptr %5, align 8
  %32 = load ptr, ptr %6, align 8
  %33 = load ptr, ptr %6, align 8
  %34 = load ptr, ptr %6, align 8
  %35 = load i32, ptr %7, align 4
  %36 = sdiv i32 %35, 2
  %.promoted = load i32, ptr %8, align 4
  br label %37

37:                                               ; preds = %.lr.ph, %67
  %38 = phi i32 [ %.promoted, %.lr.ph ], [ %57, %67 ]
  %39 = add nsw i32 %38, %38
  %40 = icmp slt i32 %39, %22
  br i1 %40, label %41, label %56

41:                                               ; preds = %37
  %42 = sub nsw i32 %39, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, ptr %24, i64 %43
  %45 = load i64, ptr %44, align 8
  %46 = getelementptr inbounds nuw i64, ptr %23, i64 %45
  %47 = load i64, ptr %46, align 8
  %48 = sext i32 %39 to i64
  %49 = getelementptr inbounds i64, ptr %26, i64 %48
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr inbounds nuw i64, ptr %25, i64 %50
  %52 = load i64, ptr %51, align 8
  %53 = icmp ugt i64 %47, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  %55 = add nsw i32 %39, 1
  br label %56

56:                                               ; preds = %54, %41, %37
  %57 = phi i32 [ %55, %54 ], [ %39, %41 ], [ %39, %37 ]
  %58 = load i64, ptr %30, align 8
  %59 = sub nsw i32 %57, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, ptr %32, i64 %60
  %62 = load i64, ptr %61, align 8
  %63 = getelementptr inbounds nuw i64, ptr %31, i64 %62
  %64 = load i64, ptr %63, align 8
  %65 = icmp ult i64 %58, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  %.lcssa3 = phi i32 [ %57, %56 ]
  %.lcssa = phi i32 [ %38, %56 ]
  store i32 %.lcssa, ptr %8, align 4
  store i32 %.lcssa3, ptr %9, align 4
  br label %76

67:                                               ; preds = %56
  %68 = sub nsw i32 %57, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, ptr %33, i64 %69
  %71 = load i64, ptr %70, align 8
  %72 = sub nsw i32 %38, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, ptr %34, i64 %73
  store i64 %71, ptr %74, align 8
  %75 = icmp sle i32 %57, %36
  br i1 %75, label %37, label %..loopexit_crit_edge, !llvm.loop !24

..loopexit_crit_edge:                             ; preds = %67
  %.lcssa4 = phi i32 [ %57, %67 ]
  %.lcssa1 = phi i32 [ %57, %67 ]
  store i32 %.lcssa1, ptr %8, align 4
  store i32 %.lcssa4, ptr %9, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %76

76:                                               ; preds = %.loopexit, %66
  %77 = load i32, ptr %10, align 4
  %78 = sext i32 %77 to i64
  %79 = load ptr, ptr %6, align 8
  %80 = load i32, ptr %8, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, ptr %79, i64 %82
  store i64 %78, ptr %83, align 8
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
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  store i32 1, ptr %6, align 4
  %13 = load i32, ptr %6, align 4
  %14 = load i32, ptr %4, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %12
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds ptr, ptr %16, i64 1
  %18 = load i32, ptr %4, align 4
  %.promoted = load i32, ptr %6, align 4
  br label %19

19:                                               ; preds = %.lr.ph, %26
  %20 = phi i32 [ %.promoted, %.lr.ph ], [ %27, %26 ]
  %21 = load ptr, ptr %17, align 8
  %22 = call i32 @strcmp(ptr noundef %21, ptr noundef @.str.4) #7
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  %.lcssa = phi i32 [ %20, %19 ]
  store i32 %.lcssa, ptr %6, align 4
  store i8 1, ptr %7, align 1
  br label %29

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25
  %27 = add nsw i32 %20, 1
  %28 = icmp slt i32 %27, %18
  br i1 %28, label %19, label %..loopexit_crit_edge, !llvm.loop !25

..loopexit_crit_edge:                             ; preds = %26
  %.lcssa2 = phi i32 [ %27, %26 ]
  store i32 %.lcssa2, ptr %6, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %12
  br label %29

29:                                               ; preds = %.loopexit, %24
  br label %30

30:                                               ; preds = %29, %2
  %31 = call ptr @generate_test_data(i64 noundef 10000000)
  store ptr %31, ptr %8, align 8
  store i32 0, ptr %6, align 4
  %32 = load i32, ptr %6, align 4
  %33 = icmp slt i32 %32, 30
  br i1 %33, label %.lr.ph1, label %40

.lr.ph1:                                          ; preds = %30
  %34 = load ptr, ptr %8, align 8
  %.promoted3 = load i32, ptr %6, align 4
  br label %35

35:                                               ; preds = %.lr.ph1, %37
  %36 = phi i32 [ %.promoted3, %.lr.ph1 ], [ %38, %37 ]
  call void @compdecomp(ptr noundef %34, i64 noundef 10000000)
  br label %37

37:                                               ; preds = %35
  %38 = add nsw i32 %36, 1
  %39 = icmp slt i32 %38, 30
  br i1 %39, label %35, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %37
  %.lcssa4 = phi i32 [ %38, %37 ]
  store i32 %.lcssa4, ptr %6, align 4
  br label %40

40:                                               ; preds = %._crit_edge, %30
  store double 0.000000e+00, ptr %9, align 8
  %41 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %41)
  %42 = load i8, ptr %7, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = call ptr @__acrt_iob_func(i32 noundef 1)
  %46 = load double, ptr %9, align 8
  %47 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef @.str.5, double noundef %46) #7
  br label %52

48:                                               ; preds = %40
  %49 = call ptr @__acrt_iob_func(i32 noundef 1)
  %50 = load double, ptr %9, align 8
  %51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef @.str.6, double noundef %50) #7
  br label %52

52:                                               ; preds = %48, %44
  %53 = call ptr @__acrt_iob_func(i32 noundef 1)
  %54 = call i32 @fflush(ptr noundef %53)
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
