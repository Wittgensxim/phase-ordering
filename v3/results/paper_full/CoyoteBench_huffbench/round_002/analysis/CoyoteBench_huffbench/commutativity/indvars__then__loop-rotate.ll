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
  %exitcond2 = icmp ne i64 0, %0
  br i1 %exitcond2, label %.lr.ph, label %8

.lr.ph:                                           ; preds = %1
  br label %3

3:                                                ; preds = %.lr.ph, %3
  %.014 = phi ptr [ %2, %.lr.ph ], [ %7, %3 ]
  %indvars.iv3 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %4 = call i64 @random4()
  %5 = getelementptr inbounds nuw i8, ptr @.str, i64 %4
  %6 = load i8, ptr %5, align 1
  store i8 %6, ptr %.014, align 1
  %7 = getelementptr inbounds nuw i8, ptr %.014, i32 1
  %indvars.iv.next = add nuw i64 %indvars.iv3, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %0
  br i1 %exitcond, label %3, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %3
  br label %8

8:                                                ; preds = %._crit_edge, %1
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
  %exitcond18 = icmp ne i64 0, %1
  br i1 %exitcond18, label %.lr.ph, label %.preheader6

.lr.ph:                                           ; preds = %2
  br label %12

..preheader6_crit_edge:                           ; preds = %12
  br label %.preheader6

.preheader6:                                      ; preds = %..preheader6_crit_edge, %2
  br label %21

12:                                               ; preds = %.lr.ph, %12
  %.0220 = phi i64 [ 0, %.lr.ph ], [ %19, %12 ]
  %.03319 = phi ptr [ %0, %.lr.ph ], [ %18, %12 ]
  %13 = load i8, ptr %.03319, align 1
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %14
  %16 = load i64, ptr %15, align 8
  %17 = add i64 %16, 1
  store i64 %17, ptr %15, align 8
  %18 = getelementptr inbounds nuw i8, ptr %.03319, i32 1
  %19 = add i64 %.0220, 1
  %exitcond = icmp ne i64 %19, %1
  br i1 %exitcond, label %12, label %..preheader6_crit_edge, !llvm.loop !9

.preheader5:                                      ; preds = %28
  %.010.lcssa = phi i64 [ %.111, %28 ]
  %20 = icmp ugt i64 %.010.lcssa, 0
  br i1 %20, label %.lr.ph24, label %.preheader4

.lr.ph24:                                         ; preds = %.preheader5
  br label %31

21:                                               ; preds = %.preheader6, %28
  %.1322 = phi i64 [ 0, %.preheader6 ], [ %29, %28 ]
  %.01021 = phi i64 [ 0, %.preheader6 ], [ %.111, %28 ]
  %22 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.1322
  %23 = load i64, ptr %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.01021
  store i64 %.1322, ptr %26, align 8
  %27 = add i64 %.01021, 1
  br label %28

28:                                               ; preds = %25, %21
  %.111 = phi i64 [ %27, %25 ], [ %.01021, %21 ]
  %29 = add nuw nsw i64 %.1322, 1
  %exitcond13 = icmp ne i64 %29, 256
  br i1 %exitcond13, label %21, label %.preheader5, !llvm.loop !10

..preheader4_crit_edge:                           ; preds = %31
  br label %.preheader4

.preheader4:                                      ; preds = %..preheader4_crit_edge, %.preheader5
  %30 = icmp ugt i64 %.010.lcssa, 1
  br i1 %30, label %.lr.ph26, label %57

.lr.ph26:                                         ; preds = %.preheader4
  br label %36

31:                                               ; preds = %.lr.ph24, %31
  %.2423 = phi i64 [ %.010.lcssa, %.lr.ph24 ], [ %34, %31 ]
  %32 = trunc i64 %.010.lcssa to i32
  %33 = trunc i64 %.2423 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %32, i32 noundef %33)
  %34 = add i64 %.2423, -1
  %35 = icmp ugt i64 %34, 0
  br i1 %35, label %31, label %..preheader4_crit_edge, !llvm.loop !11

36:                                               ; preds = %.lr.ph26, %36
  %.21225 = phi i64 [ %.010.lcssa, %.lr.ph26 ], [ %37, %36 ]
  %37 = add i64 %.21225, -1
  %38 = load i64, ptr %4, align 16
  %39 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %37
  %40 = load i64, ptr %39, align 8
  store i64 %40, ptr %4, align 16
  %41 = trunc i64 %37 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %41, i32 noundef 1)
  %42 = load i64, ptr %4, align 16
  %43 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %42
  %44 = load i64, ptr %43, align 8
  %45 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %38
  %46 = load i64, ptr %45, align 8
  %47 = add i64 %44, %46
  %48 = add i64 256, %37
  %49 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %48
  store i64 %47, ptr %49, align 8
  %50 = trunc i64 %48 to i32
  %51 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %38
  store i32 %50, ptr %51, align 4
  %52 = sub i64 -256, %37
  %53 = trunc i64 %52 to i32
  %54 = load i64, ptr %4, align 16
  %55 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %54
  store i32 %53, ptr %55, align 4
  store i64 %48, ptr %4, align 16
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %41, i32 noundef 1)
  %56 = icmp ugt i64 %37, 1
  br i1 %56, label %36, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %36
  %split = phi i64 [ %37, %36 ]
  br label %57

57:                                               ; preds = %._crit_edge, %.preheader4
  %.212.lcssa = phi i64 [ %split, %._crit_edge ], [ %.010.lcssa, %.preheader4 ]
  %58 = add i64 256, %.212.lcssa
  %59 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %58
  store i32 0, ptr %59, align 4
  br label %60

60:                                               ; preds = %57, %88
  %.03938 = phi i64 [ 0, %57 ], [ %.140, %88 ]
  %.04237 = phi i64 [ 0, %57 ], [ %89, %88 ]
  %.04536 = phi i64 [ 0, %57 ], [ %.146, %88 ]
  %61 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.04237
  %62 = load i64, ptr %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04237
  store i32 0, ptr %65, align 4
  %66 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04237
  store i8 0, ptr %66, align 1
  br label %88

67:                                               ; preds = %60
  %68 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.04237
  %69 = load i32, ptr %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %.lr.ph32, label %81

.lr.ph32:                                         ; preds = %67
  br label %71

71:                                               ; preds = %.lr.ph32, %71
  %.330 = phi i64 [ 0, %.lr.ph32 ], [ %79, %71 ]
  %.0529 = phi i64 [ 1, %.lr.ph32 ], [ %78, %71 ]
  %.03728 = phi i32 [ %69, %.lr.ph32 ], [ %77, %71 ]
  %.04327 = phi i64 [ 0, %.lr.ph32 ], [ %.144, %71 ]
  %72 = icmp slt i32 %.03728, 0
  %73 = add i64 %.04327, %.0529
  %74 = sub nsw i32 0, %.03728
  %.144 = select i1 %72, i64 %73, i64 %.04327
  %.138 = select i1 %72, i32 %74, i32 %.03728
  %75 = sext i32 %.138 to i64
  %76 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %75
  %77 = load i32, ptr %76, align 4
  %78 = shl i64 %.0529, 1
  %79 = add i64 %.330, 1
  %80 = icmp ne i32 %77, 0
  br i1 %80, label %71, label %._crit_edge33, !llvm.loop !13

._crit_edge33:                                    ; preds = %71
  %split34 = phi i64 [ %.144, %71 ]
  %split35 = phi i64 [ %79, %71 ]
  br label %81

81:                                               ; preds = %._crit_edge33, %67
  %.043.lcssa = phi i64 [ %split34, %._crit_edge33 ], [ 0, %67 ]
  %.3.lcssa = phi i64 [ %split35, %._crit_edge33 ], [ 0, %67 ]
  %82 = trunc i64 %.043.lcssa to i32
  %83 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04237
  store i32 %82, ptr %83, align 4
  %84 = trunc i64 %.3.lcssa to i8
  %85 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04237
  store i8 %84, ptr %85, align 1
  %86 = icmp ugt i64 %.043.lcssa, %.04536
  %spec.select = select i1 %86, i64 %.043.lcssa, i64 %.04536
  %87 = icmp ugt i64 %.3.lcssa, %.03938
  %.241 = select i1 %87, i64 %.3.lcssa, i64 %.03938
  br label %88

88:                                               ; preds = %81, %64
  %.146 = phi i64 [ %spec.select, %81 ], [ %.04536, %64 ]
  %.140 = phi i64 [ %.241, %81 ], [ %.03938, %64 ]
  %89 = add nuw nsw i64 %.04237, 1
  %exitcond14 = icmp ne i64 %89, 256
  br i1 %exitcond14, label %60, label %90, !llvm.loop !14

90:                                               ; preds = %88
  %.045.lcssa = phi i64 [ %.146, %88 ]
  %.039.lcssa = phi i64 [ %.140, %88 ]
  %91 = icmp ugt i64 %.039.lcssa, 32
  br i1 %91, label %92, label %95

92:                                               ; preds = %90
  %93 = call ptr @__acrt_iob_func(i32 noundef 2)
  %94 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %93, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

95:                                               ; preds = %90
  %96 = icmp eq i64 %.045.lcssa, 0
  br i1 %96, label %97, label %.preheader3

.preheader3:                                      ; preds = %95
  %exitcond1550 = icmp ne i64 0, %1
  br i1 %exitcond1550, label %.lr.ph56, label %151

.lr.ph56:                                         ; preds = %.preheader3
  br label %100

97:                                               ; preds = %95
  %98 = call ptr @__acrt_iob_func(i32 noundef 2)
  %99 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %98, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

100:                                              ; preds = %.lr.ph56, %148
  %.0155 = phi i32 [ -1, %.lr.ph56 ], [ %.1.lcssa, %148 ]
  %.1654 = phi i64 [ 0, %.lr.ph56 ], [ %150, %148 ]
  %.02453 = phi i8 [ 0, %.lr.ph56 ], [ %.125.lcssa, %148 ]
  %.02852 = phi i64 [ 0, %.lr.ph56 ], [ %.129.lcssa, %148 ]
  %.13451 = phi ptr [ %0, %.lr.ph56 ], [ %149, %148 ]
  %101 = load i8, ptr %.13451, align 1
  %102 = zext i8 %101 to i64
  %103 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %102
  %104 = load i8, ptr %103, align 1
  %105 = zext i8 %104 to i32
  %106 = sub nsw i32 %105, 1
  %107 = shl i32 1, %106
  %108 = sext i32 %107 to i64
  %109 = load i8, ptr %.13451, align 1
  %110 = zext i8 %109 to i64
  %111 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %110
  %112 = load i8, ptr %111, align 1
  %113 = zext i8 %112 to i64
  %114 = icmp samesign ult i64 0, %113
  br i1 %114, label %.lr.ph45, label %148

.lr.ph45:                                         ; preds = %100
  br label %115

115:                                              ; preds = %.lr.ph45, %129
  %.143 = phi i32 [ %.0155, %.lr.ph45 ], [ %.2, %129 ]
  %.442 = phi i64 [ 0, %.lr.ph45 ], [ %141, %129 ]
  %.01541 = phi i64 [ %108, %.lr.ph45 ], [ %140, %129 ]
  %.12540 = phi i8 [ %.02453, %.lr.ph45 ], [ %.327, %129 ]
  %.12939 = phi i64 [ %.02852, %.lr.ph45 ], [ %.230, %129 ]
  %116 = icmp eq i32 %.143, 7
  br i1 %116, label %117, label %124

117:                                              ; preds = %115
  %118 = getelementptr inbounds nuw i8, ptr %11, i64 %.12939
  store i8 %.12540, ptr %118, align 1
  %119 = add i64 %.12939, 1
  %120 = icmp eq i64 %119, %1
  br i1 %120, label %121, label %129

121:                                              ; preds = %117
  %122 = call ptr @__acrt_iob_func(i32 noundef 2)
  %123 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %122, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

124:                                              ; preds = %115
  %125 = add nsw i32 %.143, 1
  %126 = sext i8 %.12540 to i32
  %127 = shl i32 %126, 1
  %128 = trunc i32 %127 to i8
  br label %129

129:                                              ; preds = %124, %117
  %.230 = phi i64 [ %.12939, %124 ], [ %119, %117 ]
  %.226 = phi i8 [ %128, %124 ], [ 0, %117 ]
  %.2 = phi i32 [ %125, %124 ], [ 0, %117 ]
  %130 = load i8, ptr %.13451, align 1
  %131 = zext i8 %130 to i64
  %132 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %131
  %133 = load i32, ptr %132, align 4
  %134 = zext i32 %133 to i64
  %135 = and i64 %134, %.01541
  %136 = icmp ne i64 %135, 0
  %137 = sext i8 %.226 to i32
  %138 = or i32 %137, 1
  %139 = trunc i32 %138 to i8
  %.327 = select i1 %136, i8 %139, i8 %.226
  %140 = lshr i64 %.01541, 1
  %141 = add nuw nsw i64 %.442, 1
  %142 = load i8, ptr %.13451, align 1
  %143 = zext i8 %142 to i64
  %144 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %143
  %145 = load i8, ptr %144, align 1
  %146 = zext i8 %145 to i64
  %147 = icmp samesign ult i64 %141, %146
  br i1 %147, label %115, label %._crit_edge46, !llvm.loop !15

._crit_edge46:                                    ; preds = %129
  %split47 = phi i64 [ %.230, %129 ]
  %split48 = phi i8 [ %.327, %129 ]
  %split49 = phi i32 [ %.2, %129 ]
  br label %148

148:                                              ; preds = %._crit_edge46, %100
  %.129.lcssa = phi i64 [ %split47, %._crit_edge46 ], [ %.02852, %100 ]
  %.125.lcssa = phi i8 [ %split48, %._crit_edge46 ], [ %.02453, %100 ]
  %.1.lcssa = phi i32 [ %split49, %._crit_edge46 ], [ %.0155, %100 ]
  %149 = getelementptr inbounds nuw i8, ptr %.13451, i32 1
  %150 = add i64 %.1654, 1
  %exitcond15 = icmp ne i64 %150, %1
  br i1 %exitcond15, label %100, label %._crit_edge57, !llvm.loop !16

._crit_edge57:                                    ; preds = %148
  %split58 = phi i64 [ %.129.lcssa, %148 ]
  %split59 = phi i8 [ %.125.lcssa, %148 ]
  %split60 = phi i32 [ %.1.lcssa, %148 ]
  br label %151

151:                                              ; preds = %._crit_edge57, %.preheader3
  %.028.lcssa = phi i64 [ %split58, %._crit_edge57 ], [ 0, %.preheader3 ]
  %.024.lcssa = phi i8 [ %split59, %._crit_edge57 ], [ 0, %.preheader3 ]
  %.01.lcssa = phi i32 [ %split60, %._crit_edge57 ], [ -1, %.preheader3 ]
  %152 = sub nsw i32 7, %.01.lcssa
  %153 = sext i8 %.024.lcssa to i32
  %154 = shl i32 %153, %152
  %155 = trunc i32 %154 to i8
  %156 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %155, ptr %156, align 1
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 1024, i1 false)
  br label %157

.preheader2:                                      ; preds = %189
  br label %191

157:                                              ; preds = %151, %189
  %.069 = phi ptr [ %9, %151 ], [ %159, %189 ]
  %.2768 = phi i64 [ 0, %151 ], [ %190, %189 ]
  %158 = trunc i64 %.2768 to i8
  store i8 %158, ptr %.069, align 1
  %159 = getelementptr inbounds nuw i8, ptr %.069, i32 1
  %160 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.2768
  %161 = load i32, ptr %160, align 4
  %162 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2768
  %163 = load i8, ptr %162, align 1
  %164 = zext i8 %163 to i32
  %165 = or i32 %161, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %189

167:                                              ; preds = %157
  %168 = sub nsw i32 %164, 1
  %169 = shl i32 1, %168
  %170 = sext i32 %169 to i64
  %171 = load i8, ptr %162, align 1
  %172 = zext i8 %171 to i64
  %173 = icmp samesign ult i64 0, %172
  br i1 %173, label %.lr.ph65, label %187

.lr.ph65:                                         ; preds = %167
  br label %174

174:                                              ; preds = %.lr.ph65, %174
  %.563 = phi i64 [ 0, %.lr.ph65 ], [ %183, %174 ]
  %.11662 = phi i64 [ %170, %.lr.ph65 ], [ %182, %174 ]
  %.01961 = phi i32 [ 0, %.lr.ph65 ], [ %spec.select1, %174 ]
  %175 = mul i32 %.01961, 2
  %176 = add i32 %175, 1
  %177 = load i32, ptr %160, align 4
  %178 = zext i32 %177 to i64
  %179 = and i64 %178, %.11662
  %180 = icmp ne i64 %179, 0
  %181 = add i32 %176, 1
  %spec.select1 = select i1 %180, i32 %181, i32 %176
  %182 = lshr i64 %.11662, 1
  %183 = add nuw nsw i64 %.563, 1
  %184 = load i8, ptr %162, align 1
  %185 = zext i8 %184 to i64
  %186 = icmp samesign ult i64 %183, %185
  br i1 %186, label %174, label %._crit_edge66, !llvm.loop !17

._crit_edge66:                                    ; preds = %174
  %split67 = phi i32 [ %spec.select1, %174 ]
  br label %187

187:                                              ; preds = %._crit_edge66, %167
  %.019.lcssa = phi i32 [ %split67, %._crit_edge66 ], [ 0, %167 ]
  %188 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.2768
  store i32 %.019.lcssa, ptr %188, align 4
  br label %189

189:                                              ; preds = %187, %157
  %190 = add nuw nsw i64 %.2768, 1
  %exitcond16 = icmp ne i64 %190, 256
  br i1 %exitcond16, label %157, label %.preheader2, !llvm.loop !18

.preheader1:                                      ; preds = %.critedge
  br label %211

191:                                              ; preds = %.preheader2, %.critedge
  %.671 = phi i64 [ 1, %.preheader2 ], [ %210, %.critedge ]
  %192 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.671
  %193 = load i32, ptr %192, align 4
  %194 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.671
  %195 = load i8, ptr %194, align 1
  br label %196

196:                                              ; preds = %191, %201
  %.3870 = phi i64 [ %.671, %191 ], [ %206, %201 ]
  %197 = sub nuw nsw i64 %.3870, 1
  %198 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %197
  %199 = load i32, ptr %198, align 4
  %200 = icmp ugt i32 %199, %193
  br i1 %200, label %201, label %.critedge

201:                                              ; preds = %196
  %202 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.3870
  store i32 %199, ptr %202, align 4
  %203 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %197
  %204 = load i8, ptr %203, align 1
  %205 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.3870
  store i8 %204, ptr %205, align 1
  %206 = add nsw i64 %.3870, -1
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %196, label %.critedge, !llvm.loop !19

.critedge:                                        ; preds = %196, %201
  %.38.lcssa = phi i64 [ %.3870, %196 ], [ 0, %201 ]
  %208 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %193, ptr %208, align 4
  %209 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %195, ptr %209, align 1
  %210 = add nuw nsw i64 %.671, 1
  %exitcond17 = icmp ne i64 %210, 256
  br i1 %exitcond17, label %191, label %.preheader1, !llvm.loop !20

211:                                              ; preds = %211, %.preheader1
  %.49 = phi i64 [ %215, %211 ], [ 0, %.preheader1 ]
  %212 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %213 = load i32, ptr %212, align 4
  %214 = icmp eq i32 %213, 0
  %215 = add i64 %.49, 1
  br i1 %214, label %211, label %.preheader, !llvm.loop !21

.preheader:                                       ; preds = %211
  %.49.lcssa = phi i64 [ %.49, %211 ]
  %216 = icmp ult i64 0, %1
  br i1 %216, label %.lr.ph78, label %242

.lr.ph78:                                         ; preds = %.preheader
  br label %217

217:                                              ; preds = %.lr.ph78, %237
  %.777 = phi i64 [ %.49.lcssa, %.lr.ph78 ], [ %.9, %237 ]
  %.31376 = phi i64 [ 0, %.lr.ph78 ], [ %.414, %237 ]
  %.21775 = phi i64 [ 128, %.lr.ph78 ], [ %.318, %237 ]
  %.22174 = phi i32 [ 0, %.lr.ph78 ], [ %.423, %237 ]
  %.03173 = phi ptr [ %11, %.lr.ph78 ], [ %.132, %237 ]
  %.23572 = phi ptr [ %0, %.lr.ph78 ], [ %.336, %237 ]
  %218 = mul i32 %.22174, 2
  %219 = add i32 %218, 1
  %220 = load i8, ptr %.03173, align 1
  %221 = zext i8 %220 to i64
  %222 = and i64 %221, %.21775
  %223 = icmp ne i64 %222, 0
  %224 = add i32 %219, 1
  %spec.select2 = select i1 %223, i32 %224, i32 %219
  br label %225

225:                                              ; preds = %225, %217
  %.8 = phi i64 [ %.777, %217 ], [ %229, %225 ]
  %226 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %227 = load i32, ptr %226, align 4
  %228 = icmp ult i32 %227, %spec.select2
  %229 = add i64 %.8, 1
  br i1 %228, label %225, label %230, !llvm.loop !22

230:                                              ; preds = %225
  %.8.lcssa = phi i64 [ %.8, %225 ]
  %.lcssa = phi i32 [ %227, %225 ]
  %231 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %231, label %232, label %237

232:                                              ; preds = %230
  %233 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %234 = load i8, ptr %233, align 1
  store i8 %234, ptr %.23572, align 1
  %235 = getelementptr inbounds nuw i8, ptr %.23572, i32 1
  %236 = add nuw i64 %.31376, 1
  br label %237

237:                                              ; preds = %232, %230
  %.336 = phi ptr [ %235, %232 ], [ %.23572, %230 ]
  %.423 = phi i32 [ 0, %232 ], [ %spec.select2, %230 ]
  %.414 = phi i64 [ %236, %232 ], [ %.31376, %230 ]
  %.9 = phi i64 [ %.49.lcssa, %232 ], [ %.8.lcssa, %230 ]
  %238 = icmp ugt i64 %.21775, 1
  %239 = lshr i64 %.21775, 1
  %240 = getelementptr inbounds nuw i8, ptr %.03173, i32 1
  %.132 = select i1 %238, ptr %.03173, ptr %240
  %.318 = select i1 %238, i64 %239, i64 128
  %241 = icmp ult i64 %.414, %1
  br i1 %241, label %217, label %._crit_edge79, !llvm.loop !23

._crit_edge79:                                    ; preds = %237
  br label %242

242:                                              ; preds = %._crit_edge79, %.preheader
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
  %.011 = phi i32 [ %3, %.lr.ph ], [ %.0, %40 ]
  %13 = add nsw i32 %.011, %.011
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
  %41 = sub nsw i32 %.011, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, ptr %1, i64 %42
  store i64 %36, ptr %43, align 8
  %44 = icmp sle i32 %.0, %10
  br i1 %44, label %12, label %._crit_edge2, !llvm.loop !24

._crit_edge:                                      ; preds = %29
  %split = phi i32 [ %.011, %29 ]
  br label %45

._crit_edge2:                                     ; preds = %40
  %split3 = phi i32 [ %.0, %40 ]
  br label %45

45:                                               ; preds = %._crit_edge2, %._crit_edge, %4
  %.01.lcssa = phi i32 [ %split, %._crit_edge ], [ %split3, %._crit_edge2 ], [ %3, %4 ]
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
  br i1 %3, label %.preheader, label %11

.preheader:                                       ; preds = %2
  %4 = getelementptr inbounds ptr, ptr %1, i64 1
  br label %6

5:                                                ; preds = %6
  %.01 = phi i32 [ %10, %6 ]
  %exitcond = icmp ne i32 %.01, %0
  br i1 %exitcond, label %6, label %.loopexit, !llvm.loop !25

6:                                                ; preds = %.preheader, %5
  %.012 = phi i32 [ 1, %.preheader ], [ %.01, %5 ]
  %7 = load ptr, ptr %4, align 8
  %8 = call i32 @strcmp(ptr noundef %7, ptr noundef @.str.4) #7
  %9 = icmp ne i32 %8, 0
  %10 = add nuw i32 %.012, 1
  br i1 %9, label %5, label %.loopexit

.loopexit:                                        ; preds = %5, %6
  %.0.ph = phi i8 [ 1, %6 ], [ 0, %5 ]
  br label %11

11:                                               ; preds = %.loopexit, %2
  %.0 = phi i8 [ 0, %2 ], [ %.0.ph, %.loopexit ]
  %12 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %13

13:                                               ; preds = %11, %13
  %.123 = phi i32 [ 0, %11 ], [ %14, %13 ]
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  %14 = add nuw nsw i32 %.123, 1
  %exitcond1 = icmp ne i32 %14, 30
  br i1 %exitcond1, label %13, label %15, !llvm.loop !26

15:                                               ; preds = %13
  call void @free(ptr noundef %12)
  %16 = icmp ne i8 %.0, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = call ptr @__acrt_iob_func(i32 noundef 1)
  %19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.5, double noundef 0.000000e+00) #7
  br label %23

20:                                               ; preds = %15
  %21 = call ptr @__acrt_iob_func(i32 noundef 1)
  %22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.6, double noundef 0.000000e+00) #7
  br label %23

23:                                               ; preds = %20, %17
  %24 = call ptr @__acrt_iob_func(i32 noundef 1)
  %25 = call i32 @fflush(ptr noundef %24)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

declare dso_local i32 @fflush(ptr noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal i64 @random4() #0 {
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
