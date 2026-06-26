; ModuleID = 'results\paper_full\CoyoteBench_huffbench\round_001\output.ll'
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
  %2 = call ptr @malloc(i64 noundef %0) #6
  %3 = icmp ult i64 0, %0
  br i1 %3, label %.lr.ph, label %12

.lr.ph:                                           ; preds = %1
  br label %4

4:                                                ; preds = %.lr.ph, %4
  %.02 = phi i32 [ 0, %.lr.ph ], [ %9, %4 ]
  %.011 = phi ptr [ %2, %.lr.ph ], [ %8, %4 ]
  %5 = call i64 @random4()
  %6 = getelementptr inbounds nuw i8, ptr @.str, i64 %5
  %7 = load i8, ptr %6, align 1
  store i8 %7, ptr %.011, align 1
  %8 = getelementptr inbounds nuw i8, ptr %.011, i32 1
  %9 = add nsw i32 %.02, 1
  %10 = sext i32 %9 to i64
  %11 = icmp ult i64 %10, %0
  br i1 %11, label %4, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %4
  br label %12

12:                                               ; preds = %._crit_edge, %1
  ret ptr %2
}

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @compdecomp(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca [512 x i64], align 16
  %4 = alloca [256 x i64], align 16
  %5 = alloca [512 x i32], align 16
  %6 = alloca [256 x i32], align 16
  %7 = alloca [256 x i8], align 16
  %8 = alloca [256 x i32], align 16
  %9 = alloca [256 x i8], align 16
  %10 = add i64 %1, 1
  %11 = call ptr @malloc(i64 noundef %10) #6
  call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %10, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %5, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %6, i8 0, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %7, i8 0, i64 256, i1 false)
  %12 = icmp ult i64 0, %1
  br i1 %12, label %.lr.ph, label %.preheader14

.lr.ph:                                           ; preds = %2
  br label %13

..preheader14_crit_edge:                          ; preds = %13
  br label %.preheader14

.preheader14:                                     ; preds = %..preheader14_crit_edge, %2
  br label %23

13:                                               ; preds = %.lr.ph, %13
  %.0222 = phi i64 [ 0, %.lr.ph ], [ %20, %13 ]
  %.03321 = phi ptr [ %0, %.lr.ph ], [ %19, %13 ]
  %14 = load i8, ptr %.03321, align 1
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %15
  %17 = load i64, ptr %16, align 8
  %18 = add i64 %17, 1
  store i64 %18, ptr %16, align 8
  %19 = getelementptr inbounds nuw i8, ptr %.03321, i32 1
  %20 = add i64 %.0222, 1
  %21 = icmp ult i64 %20, %1
  br i1 %21, label %13, label %..preheader14_crit_edge, !llvm.loop !9

.preheader13:                                     ; preds = %30
  %.010.lcssa = phi i64 [ %.111, %30 ]
  %22 = icmp ugt i64 %.010.lcssa, 0
  br i1 %22, label %.lr.ph26, label %.preheader12

.lr.ph26:                                         ; preds = %.preheader13
  br label %34

23:                                               ; preds = %.preheader14, %30
  %.1324 = phi i64 [ 0, %.preheader14 ], [ %31, %30 ]
  %.01023 = phi i64 [ 0, %.preheader14 ], [ %.111, %30 ]
  %24 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.1324
  %25 = load i64, ptr %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.01023
  store i64 %.1324, ptr %28, align 8
  %29 = add i64 %.01023, 1
  br label %30

30:                                               ; preds = %27, %23
  %.111 = phi i64 [ %29, %27 ], [ %.01023, %23 ]
  %31 = add nuw nsw i64 %.1324, 1
  %32 = icmp ult i64 %31, 256
  br i1 %32, label %23, label %.preheader13, !llvm.loop !10

..preheader12_crit_edge:                          ; preds = %34
  br label %.preheader12

.preheader12:                                     ; preds = %..preheader12_crit_edge, %.preheader13
  %33 = icmp ugt i64 %.010.lcssa, 1
  br i1 %33, label %.lr.ph28, label %60

.lr.ph28:                                         ; preds = %.preheader12
  br label %39

34:                                               ; preds = %.lr.ph26, %34
  %.2425 = phi i64 [ %.010.lcssa, %.lr.ph26 ], [ %37, %34 ]
  %35 = trunc i64 %.010.lcssa to i32
  %36 = trunc i64 %.2425 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %35, i32 noundef %36)
  %37 = add i64 %.2425, -1
  %38 = icmp ugt i64 %37, 0
  br i1 %38, label %34, label %..preheader12_crit_edge, !llvm.loop !11

39:                                               ; preds = %.lr.ph28, %39
  %.21227 = phi i64 [ %.010.lcssa, %.lr.ph28 ], [ %40, %39 ]
  %40 = add i64 %.21227, -1
  %41 = load i64, ptr %4, align 16
  %42 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %40
  %43 = load i64, ptr %42, align 8
  store i64 %43, ptr %4, align 16
  %44 = trunc i64 %40 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %44, i32 noundef 1)
  %45 = load i64, ptr %4, align 16
  %46 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %45
  %47 = load i64, ptr %46, align 8
  %48 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %41
  %49 = load i64, ptr %48, align 8
  %50 = add i64 %47, %49
  %51 = add i64 256, %40
  %52 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %51
  store i64 %50, ptr %52, align 8
  %53 = trunc i64 %51 to i32
  %54 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %41
  store i32 %53, ptr %54, align 4
  %55 = sub i64 -256, %40
  %56 = trunc i64 %55 to i32
  %57 = load i64, ptr %4, align 16
  %58 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %57
  store i32 %56, ptr %58, align 4
  store i64 %51, ptr %4, align 16
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %44, i32 noundef 1)
  %59 = icmp ugt i64 %40, 1
  br i1 %59, label %39, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %39
  %split = phi i64 [ %40, %39 ]
  br label %60

60:                                               ; preds = %._crit_edge, %.preheader12
  %.212.lcssa = phi i64 [ %split, %._crit_edge ], [ %.010.lcssa, %.preheader12 ]
  %61 = add nuw nsw i64 256, %.212.lcssa
  %62 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %61
  store i32 0, ptr %62, align 4
  br label %63

63:                                               ; preds = %60, %91
  %.03940 = phi i64 [ 0, %60 ], [ %.140, %91 ]
  %.04239 = phi i64 [ 0, %60 ], [ %92, %91 ]
  %.04538 = phi i64 [ 0, %60 ], [ %.146, %91 ]
  %64 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.04239
  %65 = load i64, ptr %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04239
  store i32 0, ptr %68, align 4
  %69 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04239
  store i8 0, ptr %69, align 1
  br label %91

70:                                               ; preds = %63
  %71 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.04239
  %72 = load i32, ptr %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %.lr.ph34, label %84

.lr.ph34:                                         ; preds = %70
  br label %74

74:                                               ; preds = %.lr.ph34, %74
  %.332 = phi i64 [ 0, %.lr.ph34 ], [ %82, %74 ]
  %.0531 = phi i64 [ 1, %.lr.ph34 ], [ %81, %74 ]
  %.03730 = phi i32 [ %72, %.lr.ph34 ], [ %80, %74 ]
  %.04329 = phi i64 [ 0, %.lr.ph34 ], [ %.144, %74 ]
  %75 = icmp slt i32 %.03730, 0
  %76 = add i64 %.04329, %.0531
  %77 = sub nsw i32 0, %.03730
  %.144 = select i1 %75, i64 %76, i64 %.04329
  %.138 = select i1 %75, i32 %77, i32 %.03730
  %78 = sext i32 %.138 to i64
  %79 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %78
  %80 = load i32, ptr %79, align 4
  %81 = shl i64 %.0531, 1
  %82 = add i64 %.332, 1
  %83 = icmp ne i32 %80, 0
  br i1 %83, label %74, label %._crit_edge35, !llvm.loop !13

._crit_edge35:                                    ; preds = %74
  %split36 = phi i64 [ %.144, %74 ]
  %split37 = phi i64 [ %82, %74 ]
  br label %84

84:                                               ; preds = %._crit_edge35, %70
  %.043.lcssa = phi i64 [ %split36, %._crit_edge35 ], [ 0, %70 ]
  %.3.lcssa = phi i64 [ %split37, %._crit_edge35 ], [ 0, %70 ]
  %85 = trunc i64 %.043.lcssa to i32
  %86 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04239
  store i32 %85, ptr %86, align 4
  %87 = trunc i64 %.3.lcssa to i8
  %88 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04239
  store i8 %87, ptr %88, align 1
  %89 = icmp ugt i64 %.043.lcssa, %.04538
  %spec.select = select i1 %89, i64 %.043.lcssa, i64 %.04538
  %90 = icmp ugt i64 %.3.lcssa, %.03940
  %.241 = select i1 %90, i64 %.3.lcssa, i64 %.03940
  br label %91

91:                                               ; preds = %84, %67
  %.146 = phi i64 [ %spec.select, %84 ], [ %.04538, %67 ]
  %.140 = phi i64 [ %.241, %84 ], [ %.03940, %67 ]
  %92 = add nuw nsw i64 %.04239, 1
  %93 = icmp ult i64 %92, 256
  br i1 %93, label %63, label %94, !llvm.loop !14

94:                                               ; preds = %91
  %.045.lcssa = phi i64 [ %.146, %91 ]
  %.039.lcssa = phi i64 [ %.140, %91 ]
  %95 = icmp ugt i64 %.039.lcssa, 32
  br i1 %95, label %96, label %99

96:                                               ; preds = %94
  %97 = call ptr @__acrt_iob_func(i32 noundef 2)
  %98 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %97, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

99:                                               ; preds = %94
  %100 = icmp eq i64 %.045.lcssa, 0
  br i1 %100, label %102, label %.preheader11

.preheader11:                                     ; preds = %99
  %101 = icmp ult i64 0, %1
  br i1 %101, label %.lr.ph57, label %157

.lr.ph57:                                         ; preds = %.preheader11
  br label %105

102:                                              ; preds = %99
  %103 = call ptr @__acrt_iob_func(i32 noundef 2)
  %104 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %103, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

105:                                              ; preds = %.lr.ph57, %153
  %.0156 = phi i32 [ -1, %.lr.ph57 ], [ %.1.lcssa, %153 ]
  %.1655 = phi i64 [ 0, %.lr.ph57 ], [ %155, %153 ]
  %.02454 = phi i8 [ 0, %.lr.ph57 ], [ %.125.lcssa, %153 ]
  %.02853 = phi i64 [ 0, %.lr.ph57 ], [ %.129.lcssa, %153 ]
  %.13452 = phi ptr [ %0, %.lr.ph57 ], [ %154, %153 ]
  %106 = load i8, ptr %.13452, align 1
  %107 = zext i8 %106 to i64
  %108 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %107
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %109 to i32
  %111 = sub nsw i32 %110, 1
  %112 = shl nuw i32 1, %111
  %113 = sext i32 %112 to i64
  %114 = load i8, ptr %.13452, align 1
  %115 = zext i8 %114 to i64
  %116 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %115
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i64
  %119 = icmp ult i64 0, %118
  br i1 %119, label %.lr.ph47, label %153

.lr.ph47:                                         ; preds = %105
  br label %120

120:                                              ; preds = %.lr.ph47, %134
  %.145 = phi i32 [ %.0156, %.lr.ph47 ], [ %.2, %134 ]
  %.444 = phi i64 [ 0, %.lr.ph47 ], [ %146, %134 ]
  %.01543 = phi i64 [ %113, %.lr.ph47 ], [ %145, %134 ]
  %.12542 = phi i8 [ %.02454, %.lr.ph47 ], [ %.327, %134 ]
  %.12941 = phi i64 [ %.02853, %.lr.ph47 ], [ %.230, %134 ]
  %121 = icmp eq i32 %.145, 7
  br i1 %121, label %122, label %129

122:                                              ; preds = %120
  %123 = getelementptr inbounds nuw i8, ptr %11, i64 %.12941
  store i8 %.12542, ptr %123, align 1
  %124 = add i64 %.12941, 1
  %125 = icmp eq i64 %124, %1
  br i1 %125, label %126, label %134

126:                                              ; preds = %122
  %127 = call ptr @__acrt_iob_func(i32 noundef 2)
  %128 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

129:                                              ; preds = %120
  %130 = add nsw i32 %.145, 1
  %131 = sext i8 %.12542 to i32
  %132 = shl nsw i32 %131, 1
  %133 = trunc i32 %132 to i8
  br label %134

134:                                              ; preds = %129, %122
  %.230 = phi i64 [ %.12941, %129 ], [ %124, %122 ]
  %.226 = phi i8 [ %133, %129 ], [ 0, %122 ]
  %.2 = phi i32 [ %130, %129 ], [ 0, %122 ]
  %135 = load i8, ptr %.13452, align 1
  %136 = zext i8 %135 to i64
  %137 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %136
  %138 = load i32, ptr %137, align 4
  %139 = zext i32 %138 to i64
  %140 = and i64 %139, %.01543
  %141 = icmp ne i64 %140, 0
  %142 = sext i8 %.226 to i32
  %143 = or i32 %142, 1
  %144 = trunc i32 %143 to i8
  %.327 = select i1 %141, i8 %144, i8 %.226
  %145 = lshr i64 %.01543, 1
  %146 = add nuw nsw i64 %.444, 1
  %147 = load i8, ptr %.13452, align 1
  %148 = zext i8 %147 to i64
  %149 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %148
  %150 = load i8, ptr %149, align 1
  %151 = zext i8 %150 to i64
  %152 = icmp ult i64 %146, %151
  br i1 %152, label %120, label %._crit_edge48, !llvm.loop !15

._crit_edge48:                                    ; preds = %134
  %split49 = phi i64 [ %.230, %134 ]
  %split50 = phi i8 [ %.327, %134 ]
  %split51 = phi i32 [ %.2, %134 ]
  br label %153

153:                                              ; preds = %._crit_edge48, %105
  %.129.lcssa = phi i64 [ %split49, %._crit_edge48 ], [ %.02853, %105 ]
  %.125.lcssa = phi i8 [ %split50, %._crit_edge48 ], [ %.02454, %105 ]
  %.1.lcssa = phi i32 [ %split51, %._crit_edge48 ], [ %.0156, %105 ]
  %154 = getelementptr inbounds nuw i8, ptr %.13452, i32 1
  %155 = add i64 %.1655, 1
  %156 = icmp ult i64 %155, %1
  br i1 %156, label %105, label %._crit_edge58, !llvm.loop !16

._crit_edge58:                                    ; preds = %153
  %split59 = phi i64 [ %.129.lcssa, %153 ]
  %split60 = phi i8 [ %.125.lcssa, %153 ]
  %split61 = phi i32 [ %.1.lcssa, %153 ]
  br label %157

157:                                              ; preds = %._crit_edge58, %.preheader11
  %.028.lcssa = phi i64 [ %split59, %._crit_edge58 ], [ 0, %.preheader11 ]
  %.024.lcssa = phi i8 [ %split60, %._crit_edge58 ], [ 0, %.preheader11 ]
  %.01.lcssa = phi i32 [ %split61, %._crit_edge58 ], [ -1, %.preheader11 ]
  %158 = sub nsw i32 7, %.01.lcssa
  %159 = sext i8 %.024.lcssa to i32
  %160 = shl i32 %159, %158
  %161 = trunc i32 %160 to i8
  %162 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %161, ptr %162, align 1
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 1024, i1 false)
  br label %163

.preheader10:                                     ; preds = %195
  br label %198

163:                                              ; preds = %157, %195
  %.070 = phi ptr [ %9, %157 ], [ %165, %195 ]
  %.2769 = phi i64 [ 0, %157 ], [ %196, %195 ]
  %164 = trunc nuw i64 %.2769 to i8
  store i8 %164, ptr %.070, align 1
  %165 = getelementptr inbounds nuw i8, ptr %.070, i32 1
  %166 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.2769
  %167 = load i32, ptr %166, align 4
  %168 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2769
  %169 = load i8, ptr %168, align 1
  %170 = zext i8 %169 to i32
  %171 = or i32 %167, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %195

173:                                              ; preds = %163
  %174 = sub nsw i32 %170, 1
  %175 = shl nuw i32 1, %174
  %176 = sext i32 %175 to i64
  %177 = load i8, ptr %168, align 1
  %178 = zext i8 %177 to i64
  %179 = icmp ult i64 0, %178
  br i1 %179, label %.lr.ph66, label %193

.lr.ph66:                                         ; preds = %173
  br label %180

180:                                              ; preds = %.lr.ph66, %180
  %.564 = phi i64 [ 0, %.lr.ph66 ], [ %189, %180 ]
  %.11663 = phi i64 [ %176, %.lr.ph66 ], [ %188, %180 ]
  %.01962 = phi i32 [ 0, %.lr.ph66 ], [ %spec.select1, %180 ]
  %181 = mul i32 %.01962, 2
  %182 = add i32 %181, 1
  %183 = load i32, ptr %166, align 4
  %184 = zext i32 %183 to i64
  %185 = and i64 %184, %.11663
  %186 = icmp ne i64 %185, 0
  %187 = add i32 %182, 1
  %spec.select1 = select i1 %186, i32 %187, i32 %182
  %188 = lshr i64 %.11663, 1
  %189 = add nuw nsw i64 %.564, 1
  %190 = load i8, ptr %168, align 1
  %191 = zext i8 %190 to i64
  %192 = icmp ult i64 %189, %191
  br i1 %192, label %180, label %._crit_edge67, !llvm.loop !17

._crit_edge67:                                    ; preds = %180
  %split68 = phi i32 [ %spec.select1, %180 ]
  br label %193

193:                                              ; preds = %._crit_edge67, %173
  %.019.lcssa = phi i32 [ %split68, %._crit_edge67 ], [ 0, %173 ]
  %194 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.2769
  store i32 %.019.lcssa, ptr %194, align 4
  br label %195

195:                                              ; preds = %193, %163
  %196 = add nuw nsw i64 %.2769, 1
  %197 = icmp ult i64 %196, 256
  br i1 %197, label %163, label %.preheader10, !llvm.loop !18

.preheader9:                                      ; preds = %.critedge
  br label %219

198:                                              ; preds = %.preheader10, %.critedge
  %.672 = phi i64 [ 1, %.preheader10 ], [ %217, %.critedge ]
  %199 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.672
  %200 = load i32, ptr %199, align 4
  %201 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.672
  %202 = load i8, ptr %201, align 1
  br label %203

203:                                              ; preds = %198, %208
  %.3871 = phi i64 [ %.672, %198 ], [ %213, %208 ]
  %204 = sub nuw i64 %.3871, 1
  %205 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %204
  %206 = load i32, ptr %205, align 4
  %207 = icmp ugt i32 %206, %200
  br i1 %207, label %208, label %.critedge

208:                                              ; preds = %203
  %209 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.3871
  store i32 %206, ptr %209, align 4
  %210 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %204
  %211 = load i8, ptr %210, align 1
  %212 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.3871
  store i8 %211, ptr %212, align 1
  %213 = add i64 %.3871, -1
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %203, label %.critedge, !llvm.loop !19

.critedge:                                        ; preds = %203, %208
  %.38.lcssa = phi i64 [ %.3871, %203 ], [ %213, %208 ]
  %215 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %200, ptr %215, align 4
  %216 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %202, ptr %216, align 1
  %217 = add nuw nsw i64 %.672, 1
  %218 = icmp ult i64 %217, 256
  br i1 %218, label %198, label %.preheader9, !llvm.loop !20

219:                                              ; preds = %219, %.preheader9
  %.49 = phi i64 [ %223, %219 ], [ 0, %.preheader9 ]
  %220 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %221 = load i32, ptr %220, align 4
  %222 = icmp eq i32 %221, 0
  %223 = add i64 %.49, 1
  br i1 %222, label %219, label %.preheader, !llvm.loop !21

.preheader:                                       ; preds = %219
  %.49.lcssa = phi i64 [ %.49, %219 ]
  %224 = icmp ult i64 0, %1
  br i1 %224, label %.lr.ph79, label %250

.lr.ph79:                                         ; preds = %.preheader
  br label %225

225:                                              ; preds = %.lr.ph79, %245
  %.778 = phi i64 [ %.49.lcssa, %.lr.ph79 ], [ %.9, %245 ]
  %.31377 = phi i64 [ 0, %.lr.ph79 ], [ %.414, %245 ]
  %.21776 = phi i64 [ 128, %.lr.ph79 ], [ %.318, %245 ]
  %.22175 = phi i32 [ 0, %.lr.ph79 ], [ %.423, %245 ]
  %.03174 = phi ptr [ %11, %.lr.ph79 ], [ %.132, %245 ]
  %.23573 = phi ptr [ %0, %.lr.ph79 ], [ %.336, %245 ]
  %226 = mul i32 %.22175, 2
  %227 = add i32 %226, 1
  %228 = load i8, ptr %.03174, align 1
  %229 = zext i8 %228 to i64
  %230 = and i64 %229, %.21776
  %231 = icmp ne i64 %230, 0
  %232 = add i32 %227, 1
  %spec.select2 = select i1 %231, i32 %232, i32 %227
  br label %233

233:                                              ; preds = %233, %225
  %.8 = phi i64 [ %.778, %225 ], [ %237, %233 ]
  %234 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %235 = load i32, ptr %234, align 4
  %236 = icmp ult i32 %235, %spec.select2
  %237 = add i64 %.8, 1
  br i1 %236, label %233, label %238, !llvm.loop !22

238:                                              ; preds = %233
  %.8.lcssa = phi i64 [ %.8, %233 ]
  %.lcssa = phi i32 [ %235, %233 ]
  %239 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %239, label %240, label %245

240:                                              ; preds = %238
  %241 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %242 = load i8, ptr %241, align 1
  store i8 %242, ptr %.23573, align 1
  %243 = getelementptr inbounds nuw i8, ptr %.23573, i32 1
  %244 = add i64 %.31377, 1
  br label %245

245:                                              ; preds = %240, %238
  %.336 = phi ptr [ %243, %240 ], [ %.23573, %238 ]
  %.423 = phi i32 [ 0, %240 ], [ %spec.select2, %238 ]
  %.414 = phi i64 [ %244, %240 ], [ %.31377, %238 ]
  %.9 = phi i64 [ %.49.lcssa, %240 ], [ %.8.lcssa, %238 ]
  %246 = icmp ugt i64 %.21776, 1
  %247 = lshr i64 %.21776, 1
  %248 = getelementptr inbounds nuw i8, ptr %.03174, i32 1
  %.132 = select i1 %246, ptr %.03174, ptr %248
  %.318 = select i1 %246, i64 %247, i64 128
  %249 = icmp ult i64 %.414, %1
  br i1 %249, label %225, label %._crit_edge80, !llvm.loop !23

._crit_edge80:                                    ; preds = %245
  br label %250

250:                                              ; preds = %._crit_edge80, %.preheader
  call void @free(ptr noundef %11)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal void @heap_adjust(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = sub nsw i32 %3, 1
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i64, ptr %1, i64 %6
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = sdiv i32 %2, 2
  %11 = icmp sle i32 %3, %10
  br i1 %11, label %.lr.ph, label %45

.lr.ph:                                           ; preds = %4
  br label %12

12:                                               ; preds = %.lr.ph, %40
  %.013 = phi i32 [ %3, %.lr.ph ], [ %.0, %40 ]
  %13 = add nsw i32 %.013, %.013
  %14 = icmp slt i32 %13, %2
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = sub nsw i32 %13, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, ptr %1, i64 %17
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds nuw i64, ptr %0, i64 %19
  %21 = load i64, ptr %20, align 8
  %22 = sext i32 %13 to i64
  %23 = getelementptr inbounds i64, ptr %1, i64 %22
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds nuw i64, ptr %0, i64 %24
  %26 = load i64, ptr %25, align 8
  %27 = icmp ugt i64 %21, %26
  %28 = add nsw i32 %13, 1
  %spec.select = select i1 %27, i32 %28, i32 %13
  br label %29

29:                                               ; preds = %15, %12
  %.0 = phi i32 [ %13, %12 ], [ %spec.select, %15 ]
  %30 = sext i32 %9 to i64
  %31 = getelementptr inbounds i64, ptr %0, i64 %30
  %32 = load i64, ptr %31, align 8
  %33 = sub nsw i32 %.0, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, ptr %1, i64 %34
  %36 = load i64, ptr %35, align 8
  %37 = getelementptr inbounds nuw i64, ptr %0, i64 %36
  %38 = load i64, ptr %37, align 8
  %39 = icmp ult i64 %32, %38
  br i1 %39, label %._crit_edge, label %40

40:                                               ; preds = %29
  %41 = sub nsw i32 %.013, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, ptr %1, i64 %42
  store i64 %36, ptr %43, align 8
  %44 = icmp sle i32 %.0, %10
  br i1 %44, label %12, label %._crit_edge4, !llvm.loop !24

._crit_edge:                                      ; preds = %29
  %split = phi i32 [ %.013, %29 ]
  br label %45

._crit_edge4:                                     ; preds = %40
  %split5 = phi i32 [ %.0, %40 ]
  br label %45

45:                                               ; preds = %._crit_edge4, %._crit_edge, %4
  %.01.lcssa = phi i32 [ %split, %._crit_edge ], [ %split5, %._crit_edge4 ], [ %3, %4 ]
  %46 = sext i32 %9 to i64
  %47 = sub nsw i32 %.01.lcssa, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, ptr %1, i64 %48
  store i64 %46, ptr %49, align 8
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
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %.preheader, label %12

.preheader:                                       ; preds = %2
  %4 = getelementptr inbounds nuw ptr, ptr %1, i64 1
  br label %7

5:                                                ; preds = %7
  %.01 = phi i32 [ %11, %7 ]
  %6 = icmp slt i32 %.01, %0
  br i1 %6, label %7, label %.loopexit, !llvm.loop !25

7:                                                ; preds = %.preheader, %5
  %.011 = phi i32 [ 1, %.preheader ], [ %.01, %5 ]
  %8 = load ptr, ptr %4, align 8
  %9 = call i32 @strcmp(ptr noundef %8, ptr noundef @.str.4) #7
  %10 = icmp ne i32 %9, 0
  %11 = add nsw i32 %.011, 1
  br i1 %10, label %5, label %.loopexit

.loopexit:                                        ; preds = %5, %7
  %.0.ph = phi i8 [ 1, %7 ], [ 0, %5 ]
  br label %12

12:                                               ; preds = %.loopexit, %2
  %.0 = phi i8 [ 0, %2 ], [ %.0.ph, %.loopexit ]
  %13 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %14

14:                                               ; preds = %12, %14
  %.122 = phi i32 [ 0, %12 ], [ %15, %14 ]
  call void @compdecomp(ptr noundef %13, i64 noundef 10000000)
  %15 = add nsw i32 %.122, 1
  %16 = icmp slt i32 %15, 30
  br i1 %16, label %14, label %17, !llvm.loop !26

17:                                               ; preds = %14
  call void @free(ptr noundef %13)
  %18 = icmp ne i8 %.0, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = call ptr @__acrt_iob_func(i32 noundef 1)
  %21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.5, double noundef 0.000000e+00) #7
  br label %25

22:                                               ; preds = %17
  %23 = call ptr @__acrt_iob_func(i32 noundef 1)
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.6, double noundef 0.000000e+00) #7
  br label %25

25:                                               ; preds = %22, %19
  %26 = call ptr @__acrt_iob_func(i32 noundef 1)
  %27 = call i32 @fflush(ptr noundef %26)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

declare dso_local i32 @fflush(ptr noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal range(i64 -31, 32) i64 @random4() #0 {
  %1 = load i32, ptr @seed, align 4
  %2 = xor i32 %1, 123459876
  %3 = sdiv i32 %2, 127773
  %4 = mul nsw i32 %3, 127773
  %5 = sub nsw i32 %2, %4
  %6 = mul nsw i32 16807, %5
  %7 = mul nsw i32 2836, %3
  %8 = sub nsw i32 %6, %7
  store i32 %8, ptr @seed, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = add nsw i32 %8, 2147483647
  store i32 %11, ptr @seed, align 4
  br label %12

12:                                               ; preds = %10, %0
  %13 = load i32, ptr @seed, align 4
  %14 = srem i32 %13, 32
  %15 = sext i32 %14 to i64
  %16 = xor i32 %13, 123459876
  store i32 %16, ptr @seed, align 4
  ret i64 %15
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
