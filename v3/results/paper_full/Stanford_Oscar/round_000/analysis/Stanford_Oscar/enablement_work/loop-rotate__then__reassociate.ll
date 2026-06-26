; ModuleID = 'results\paper_full\Stanford_Oscar\Stanford_Oscar.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Oscar.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.complex = type { float, float }
%struct.element = type { i32, i32 }

@seed = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"  %15.3f%15.3f\00", align 1
@e = dso_local global [130 x %struct.complex] zeroinitializer, align 16
@zr = dso_local global float 0.000000e+00, align 4
@zi = dso_local global float 0.000000e+00, align 4
@z = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@w = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@value = dso_local global float 0.000000e+00, align 4
@fixed = dso_local global float 0.000000e+00, align 4
@floated = dso_local global float 0.000000e+00, align 4
@permarray = dso_local global [11 x i32] zeroinitializer, align 16
@pctr = dso_local global i32 0, align 4
@tree = dso_local global ptr null, align 8
@stack = dso_local global [4 x i32] zeroinitializer, align 16
@cellspace = dso_local global [19 x %struct.element] zeroinitializer, align 16
@freelist = dso_local global i32 0, align 4
@movesdone = dso_local global i32 0, align 4
@ima = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imb = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imr = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@rma = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmb = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmr = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@piececount = dso_local global [4 x i32] zeroinitializer, align 16
@class = dso_local global [13 x i32] zeroinitializer, align 16
@piecemax = dso_local global [13 x i32] zeroinitializer, align 16
@puzzl = dso_local global [512 x i32] zeroinitializer, align 16
@p = dso_local global [13 x [512 x i32]] zeroinitializer, align 16
@n = dso_local global i32 0, align 4
@kount = dso_local global i32 0, align 4
@sortlist = dso_local global [5001 x i32] zeroinitializer, align 16
@biggest = dso_local global i32 0, align 4
@littlest = dso_local global i32 0, align 4
@top = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @Initrand() #0 {
  store i32 74755, ptr @seed, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Rand() #0 {
  %1 = load i32, ptr @seed, align 4
  %2 = mul nsw i32 %1, 1309
  %3 = add nsw i32 %2, 13849
  %4 = and i32 %3, 65535
  store i32 %4, ptr @seed, align 4
  %5 = load i32, ptr @seed, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @Cos(float noundef %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store float %0, ptr %2, align 4
  store float 1.000000e+00, ptr %5, align 4
  store i32 1, ptr %4, align 4
  %7 = load float, ptr %2, align 4
  store float %7, ptr %6, align 4
  store i32 2, ptr %3, align 4
  %8 = load i32, ptr %3, align 4
  %9 = icmp sle i32 %8, 10
  br i1 %9, label %.lr.ph, label %45

.lr.ph:                                           ; preds = %1
  br label %10

10:                                               ; preds = %.lr.ph, %40
  %11 = load i32, ptr %4, align 4
  %12 = load i32, ptr %3, align 4
  %13 = mul nsw i32 %12, %11
  store i32 %13, ptr %4, align 4
  %14 = load float, ptr %6, align 4
  %15 = load float, ptr %2, align 4
  %16 = fmul float %14, %15
  store float %16, ptr %6, align 4
  %17 = load i32, ptr %3, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %10
  %21 = load i32, ptr %3, align 4
  %22 = and i32 %21, 3
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load float, ptr %5, align 4
  %26 = load float, ptr %6, align 4
  %27 = load i32, ptr %4, align 4
  %28 = sitofp i32 %27 to float
  %29 = fdiv float %26, %28
  %30 = fadd float %25, %29
  store float %30, ptr %5, align 4
  br label %38

31:                                               ; preds = %20
  %32 = load float, ptr %5, align 4
  %33 = load float, ptr %6, align 4
  %34 = load i32, ptr %4, align 4
  %35 = sitofp i32 %34 to float
  %36 = fdiv float %33, %35
  %37 = fsub float %32, %36
  store float %37, ptr %5, align 4
  br label %38

38:                                               ; preds = %31, %24
  br label %39

39:                                               ; preds = %38, %10
  br label %40

40:                                               ; preds = %39
  %41 = load i32, ptr %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %3, align 4
  %43 = load i32, ptr %3, align 4
  %44 = icmp sle i32 %43, 10
  br i1 %44, label %10, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %40
  br label %45

45:                                               ; preds = %._crit_edge, %1
  %46 = load float, ptr %5, align 4
  ret float %46
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Min0(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  %6 = load i32, ptr %4, align 4
  %7 = load i32, ptr %5, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, ptr %4, align 4
  store i32 %10, ptr %3, align 4
  br label %13

11:                                               ; preds = %2
  %12 = load i32, ptr %5, align 4
  store i32 %12, ptr %3, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = load i32, ptr %3, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Printcomplex(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %11 = load i32, ptr %6, align 4
  store i32 %11, ptr %9, align 4
  br label %12

12:                                               ; preds = %50, %4
  %13 = load ptr, ptr %5, align 8
  %14 = load i32, ptr %9, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.complex, ptr %13, i64 %15
  %17 = getelementptr inbounds nuw %struct.complex, ptr %16, i32 0, i32 0
  %18 = load float, ptr %17, align 4
  %19 = fpext float %18 to double
  %20 = load ptr, ptr %5, align 8
  %21 = load i32, ptr %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.complex, ptr %20, i64 %22
  %24 = getelementptr inbounds nuw %struct.complex, ptr %23, i32 0, i32 1
  %25 = load float, ptr %24, align 4
  %26 = fpext float %25 to double
  %27 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %19, double noundef %26)
  %28 = load i32, ptr %9, align 4
  %29 = load i32, ptr %8, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, ptr %9, align 4
  %31 = load ptr, ptr %5, align 8
  %32 = load i32, ptr %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.complex, ptr %31, i64 %33
  %35 = getelementptr inbounds nuw %struct.complex, ptr %34, i32 0, i32 0
  %36 = load float, ptr %35, align 4
  %37 = fpext float %36 to double
  %38 = load ptr, ptr %5, align 8
  %39 = load i32, ptr %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.complex, ptr %38, i64 %40
  %42 = getelementptr inbounds nuw %struct.complex, ptr %41, i32 0, i32 1
  %43 = load float, ptr %42, align 4
  %44 = fpext float %43 to double
  %45 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %37, double noundef %44)
  %46 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %47 = load i32, ptr %9, align 4
  %48 = load i32, ptr %8, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, ptr %9, align 4
  br label %50

50:                                               ; preds = %12
  %51 = load i32, ptr %9, align 4
  %52 = load i32, ptr %7, align 4
  %53 = icmp sle i32 %51, %52
  br i1 %53, label %12, label %54, !llvm.loop !9

54:                                               ; preds = %50
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Uniform11(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load i32, ptr %5, align 4
  %7 = mul nsw i32 %6, 4855
  %8 = add nsw i32 %7, 1731
  %9 = and i32 %8, 8191
  %10 = load ptr, ptr %3, align 8
  store i32 %9, ptr %10, align 4
  %11 = load ptr, ptr %3, align 8
  %12 = load i32, ptr %11, align 4
  %13 = sitofp i32 %12 to float
  %14 = fdiv float %13, 8.192000e+03
  %15 = load ptr, ptr %4, align 8
  store float %14, ptr %15, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Exptab(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca [26 x float], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store float f0x40490FDB, ptr %5, align 4
  store float 4.000000e+00, ptr %6, align 4
  store i32 1, ptr %8, align 4
  %13 = load i32, ptr %8, align 4
  %14 = icmp sle i32 %13, 25
  br i1 %14, label %.lr.ph, label %33

.lr.ph:                                           ; preds = %2
  br label %15

15:                                               ; preds = %.lr.ph, %28
  %16 = load float, ptr %5, align 4
  %17 = load float, ptr %6, align 4
  %18 = fdiv float %16, %17
  %19 = call float @Cos(float noundef %18)
  %20 = fmul float %19, 2.000000e+00
  %21 = fdiv float 1.000000e+00, %20
  %22 = load i32, ptr %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [26 x float], ptr %7, i64 0, i64 %23
  store float %21, ptr %24, align 4
  %25 = load float, ptr %6, align 4
  %26 = load float, ptr %6, align 4
  %27 = fadd float %25, %26
  store float %27, ptr %6, align 4
  br label %28

28:                                               ; preds = %15
  %29 = load i32, ptr %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %8, align 4
  %31 = load i32, ptr %8, align 4
  %32 = icmp sle i32 %31, 25
  br i1 %32, label %15, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %28
  br label %33

33:                                               ; preds = %._crit_edge, %2
  %34 = load i32, ptr %3, align 4
  %35 = sdiv i32 %34, 2
  store i32 %35, ptr %12, align 4
  %36 = load i32, ptr %12, align 4
  %37 = sdiv i32 %36, 2
  store i32 %37, ptr %11, align 4
  store i32 1, ptr %9, align 4
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr inbounds %struct.complex, ptr %38, i64 1
  %40 = getelementptr inbounds nuw %struct.complex, ptr %39, i32 0, i32 0
  store float 1.000000e+00, ptr %40, align 4
  %41 = load ptr, ptr %4, align 8
  %42 = getelementptr inbounds %struct.complex, ptr %41, i64 1
  %43 = getelementptr inbounds nuw %struct.complex, ptr %42, i32 0, i32 1
  store float 0.000000e+00, ptr %43, align 4
  %44 = load ptr, ptr %4, align 8
  %45 = load i32, ptr %11, align 4
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.complex, ptr %44, i64 %47
  %49 = getelementptr inbounds nuw %struct.complex, ptr %48, i32 0, i32 0
  store float 0.000000e+00, ptr %49, align 4
  %50 = load ptr, ptr %4, align 8
  %51 = load i32, ptr %11, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.complex, ptr %50, i64 %53
  %55 = getelementptr inbounds nuw %struct.complex, ptr %54, i32 0, i32 1
  store float 1.000000e+00, ptr %55, align 4
  %56 = load ptr, ptr %4, align 8
  %57 = load i32, ptr %12, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.complex, ptr %56, i64 %59
  %61 = getelementptr inbounds nuw %struct.complex, ptr %60, i32 0, i32 0
  store float -1.000000e+00, ptr %61, align 4
  %62 = load ptr, ptr %4, align 8
  %63 = load i32, ptr %12, align 4
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.complex, ptr %62, i64 %65
  %67 = getelementptr inbounds nuw %struct.complex, ptr %66, i32 0, i32 1
  store float 0.000000e+00, ptr %67, align 4
  br label %68

68:                                               ; preds = %145, %33
  %69 = load i32, ptr %11, align 4
  %70 = sdiv i32 %69, 2
  store i32 %70, ptr %8, align 4
  %71 = load i32, ptr %8, align 4
  store i32 %71, ptr %10, align 4
  br label %72

72:                                               ; preds = %136, %68
  %73 = load i32, ptr %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [26 x float], ptr %7, i64 0, i64 %74
  %76 = load float, ptr %75, align 4
  %77 = load ptr, ptr %4, align 8
  %78 = load i32, ptr %10, align 4
  %79 = load i32, ptr %8, align 4
  %80 = add i32 %78, 1
  %81 = add i32 %80, %79
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.complex, ptr %77, i64 %82
  %84 = getelementptr inbounds nuw %struct.complex, ptr %83, i32 0, i32 0
  %85 = load float, ptr %84, align 4
  %86 = load ptr, ptr %4, align 8
  %87 = load i32, ptr %10, align 4
  %88 = load i32, ptr %8, align 4
  %.neg = sub i32 0, %88
  %89 = add i32 %87, 1
  %90 = add i32 %89, %.neg
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.complex, ptr %86, i64 %91
  %93 = getelementptr inbounds nuw %struct.complex, ptr %92, i32 0, i32 0
  %94 = load float, ptr %93, align 4
  %95 = fadd float %85, %94
  %96 = fmul float %76, %95
  %97 = load ptr, ptr %4, align 8
  %98 = load i32, ptr %10, align 4
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.complex, ptr %97, i64 %100
  %102 = getelementptr inbounds nuw %struct.complex, ptr %101, i32 0, i32 0
  store float %96, ptr %102, align 4
  %103 = load i32, ptr %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [26 x float], ptr %7, i64 0, i64 %104
  %106 = load float, ptr %105, align 4
  %107 = load ptr, ptr %4, align 8
  %108 = load i32, ptr %10, align 4
  %109 = load i32, ptr %8, align 4
  %110 = add i32 %108, 1
  %111 = add i32 %110, %109
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.complex, ptr %107, i64 %112
  %114 = getelementptr inbounds nuw %struct.complex, ptr %113, i32 0, i32 1
  %115 = load float, ptr %114, align 4
  %116 = load ptr, ptr %4, align 8
  %117 = load i32, ptr %10, align 4
  %118 = load i32, ptr %8, align 4
  %.neg1 = sub i32 0, %118
  %119 = add i32 %117, 1
  %120 = add i32 %119, %.neg1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.complex, ptr %116, i64 %121
  %123 = getelementptr inbounds nuw %struct.complex, ptr %122, i32 0, i32 1
  %124 = load float, ptr %123, align 4
  %125 = fadd float %115, %124
  %126 = fmul float %106, %125
  %127 = load ptr, ptr %4, align 8
  %128 = load i32, ptr %10, align 4
  %129 = add nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.complex, ptr %127, i64 %130
  %132 = getelementptr inbounds nuw %struct.complex, ptr %131, i32 0, i32 1
  store float %126, ptr %132, align 4
  %133 = load i32, ptr %10, align 4
  %134 = load i32, ptr %11, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, ptr %10, align 4
  br label %136

136:                                              ; preds = %72
  %137 = load i32, ptr %10, align 4
  %138 = load i32, ptr %12, align 4
  %139 = icmp sle i32 %137, %138
  br i1 %139, label %72, label %140, !llvm.loop !11

140:                                              ; preds = %136
  %141 = load i32, ptr %9, align 4
  %142 = add nsw i32 %141, 1
  %143 = call i32 @Min0(i32 noundef %142, i32 noundef 25)
  store i32 %143, ptr %9, align 4
  %144 = load i32, ptr %8, align 4
  store i32 %144, ptr %11, align 4
  br label %145

145:                                              ; preds = %140
  %146 = load i32, ptr %11, align 4
  %147 = icmp sgt i32 %146, 1
  br i1 %147, label %68, label %148, !llvm.loop !12

148:                                              ; preds = %145
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Fft(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, ptr %6, align 4
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store float %4, ptr %10, align 4
  %17 = load i32, ptr %6, align 4
  %18 = sdiv i32 %17, 2
  store i32 %18, ptr %15, align 4
  store i32 1, ptr %14, align 4
  br label %19

19:                                               ; preds = %209, %5
  store i32 0, ptr %13, align 4
  %20 = load i32, ptr %14, align 4
  store i32 %20, ptr %12, align 4
  store i32 1, ptr %11, align 4
  br label %21

21:                                               ; preds = %185, %19
  br label %22

22:                                               ; preds = %176, %21
  %23 = load ptr, ptr %7, align 8
  %24 = load i32, ptr %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.complex, ptr %23, i64 %25
  %27 = getelementptr inbounds nuw %struct.complex, ptr %26, i32 0, i32 0
  %28 = load float, ptr %27, align 4
  %29 = load ptr, ptr %7, align 8
  %30 = load i32, ptr %15, align 4
  %31 = load i32, ptr %11, align 4
  %32 = add nsw i32 %31, %30
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.complex, ptr %29, i64 %33
  %35 = getelementptr inbounds nuw %struct.complex, ptr %34, i32 0, i32 0
  %36 = load float, ptr %35, align 4
  %37 = fadd float %28, %36
  %38 = load ptr, ptr %8, align 8
  %39 = load i32, ptr %11, align 4
  %40 = load i32, ptr %13, align 4
  %41 = add nsw i32 %40, %39
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.complex, ptr %38, i64 %42
  %44 = getelementptr inbounds nuw %struct.complex, ptr %43, i32 0, i32 0
  store float %37, ptr %44, align 4
  %45 = load ptr, ptr %7, align 8
  %46 = load i32, ptr %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.complex, ptr %45, i64 %47
  %49 = getelementptr inbounds nuw %struct.complex, ptr %48, i32 0, i32 1
  %50 = load float, ptr %49, align 4
  %51 = load ptr, ptr %7, align 8
  %52 = load i32, ptr %15, align 4
  %53 = load i32, ptr %11, align 4
  %54 = add nsw i32 %53, %52
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.complex, ptr %51, i64 %55
  %57 = getelementptr inbounds nuw %struct.complex, ptr %56, i32 0, i32 1
  %58 = load float, ptr %57, align 4
  %59 = fadd float %50, %58
  %60 = load ptr, ptr %8, align 8
  %61 = load i32, ptr %11, align 4
  %62 = load i32, ptr %13, align 4
  %63 = add nsw i32 %62, %61
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.complex, ptr %60, i64 %64
  %66 = getelementptr inbounds nuw %struct.complex, ptr %65, i32 0, i32 1
  store float %59, ptr %66, align 4
  %67 = load ptr, ptr %9, align 8
  %68 = load i32, ptr %13, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.complex, ptr %67, i64 %70
  %72 = getelementptr inbounds nuw %struct.complex, ptr %71, i32 0, i32 0
  %73 = load float, ptr %72, align 4
  %74 = load ptr, ptr %7, align 8
  %75 = load i32, ptr %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.complex, ptr %74, i64 %76
  %78 = getelementptr inbounds nuw %struct.complex, ptr %77, i32 0, i32 0
  %79 = load float, ptr %78, align 4
  %80 = load ptr, ptr %7, align 8
  %81 = load i32, ptr %11, align 4
  %82 = load i32, ptr %15, align 4
  %83 = add nsw i32 %82, %81
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.complex, ptr %80, i64 %84
  %86 = getelementptr inbounds nuw %struct.complex, ptr %85, i32 0, i32 0
  %87 = load float, ptr %86, align 4
  %88 = fsub float %79, %87
  %89 = load ptr, ptr %9, align 8
  %90 = load i32, ptr %13, align 4
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.complex, ptr %89, i64 %92
  %94 = getelementptr inbounds nuw %struct.complex, ptr %93, i32 0, i32 1
  %95 = load float, ptr %94, align 4
  %96 = load ptr, ptr %7, align 8
  %97 = load i32, ptr %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.complex, ptr %96, i64 %98
  %100 = getelementptr inbounds nuw %struct.complex, ptr %99, i32 0, i32 1
  %101 = load float, ptr %100, align 4
  %102 = load ptr, ptr %7, align 8
  %103 = load i32, ptr %11, align 4
  %104 = load i32, ptr %15, align 4
  %105 = add nsw i32 %104, %103
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.complex, ptr %102, i64 %106
  %108 = getelementptr inbounds nuw %struct.complex, ptr %107, i32 0, i32 1
  %109 = load float, ptr %108, align 4
  %110 = fsub float %101, %109
  %111 = fmul float %95, %110
  %112 = fneg float %111
  %113 = call float @llvm.fmuladd.f32(float %73, float %88, float %112)
  %114 = load ptr, ptr %8, align 8
  %115 = load i32, ptr %11, align 4
  %116 = load i32, ptr %12, align 4
  %117 = add nsw i32 %116, %115
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.complex, ptr %114, i64 %118
  %120 = getelementptr inbounds nuw %struct.complex, ptr %119, i32 0, i32 0
  store float %113, ptr %120, align 4
  %121 = load ptr, ptr %9, align 8
  %122 = load i32, ptr %13, align 4
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.complex, ptr %121, i64 %124
  %126 = getelementptr inbounds nuw %struct.complex, ptr %125, i32 0, i32 0
  %127 = load float, ptr %126, align 4
  %128 = load ptr, ptr %7, align 8
  %129 = load i32, ptr %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.complex, ptr %128, i64 %130
  %132 = getelementptr inbounds nuw %struct.complex, ptr %131, i32 0, i32 1
  %133 = load float, ptr %132, align 4
  %134 = load ptr, ptr %7, align 8
  %135 = load i32, ptr %11, align 4
  %136 = load i32, ptr %15, align 4
  %137 = add nsw i32 %136, %135
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.complex, ptr %134, i64 %138
  %140 = getelementptr inbounds nuw %struct.complex, ptr %139, i32 0, i32 1
  %141 = load float, ptr %140, align 4
  %142 = fsub float %133, %141
  %143 = load ptr, ptr %9, align 8
  %144 = load i32, ptr %13, align 4
  %145 = add nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.complex, ptr %143, i64 %146
  %148 = getelementptr inbounds nuw %struct.complex, ptr %147, i32 0, i32 1
  %149 = load float, ptr %148, align 4
  %150 = load ptr, ptr %7, align 8
  %151 = load i32, ptr %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.complex, ptr %150, i64 %152
  %154 = getelementptr inbounds nuw %struct.complex, ptr %153, i32 0, i32 0
  %155 = load float, ptr %154, align 4
  %156 = load ptr, ptr %7, align 8
  %157 = load i32, ptr %11, align 4
  %158 = load i32, ptr %15, align 4
  %159 = add nsw i32 %158, %157
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.complex, ptr %156, i64 %160
  %162 = getelementptr inbounds nuw %struct.complex, ptr %161, i32 0, i32 0
  %163 = load float, ptr %162, align 4
  %164 = fsub float %155, %163
  %165 = fmul float %149, %164
  %166 = call float @llvm.fmuladd.f32(float %127, float %142, float %165)
  %167 = load ptr, ptr %8, align 8
  %168 = load i32, ptr %11, align 4
  %169 = load i32, ptr %12, align 4
  %170 = add nsw i32 %169, %168
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.complex, ptr %167, i64 %171
  %173 = getelementptr inbounds nuw %struct.complex, ptr %172, i32 0, i32 1
  store float %166, ptr %173, align 4
  %174 = load i32, ptr %11, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, ptr %11, align 4
  br label %176

176:                                              ; preds = %22
  %177 = load i32, ptr %11, align 4
  %178 = load i32, ptr %12, align 4
  %179 = icmp sle i32 %177, %178
  br i1 %179, label %22, label %180, !llvm.loop !13

180:                                              ; preds = %176
  %181 = load i32, ptr %12, align 4
  store i32 %181, ptr %13, align 4
  %182 = load i32, ptr %13, align 4
  %183 = load i32, ptr %14, align 4
  %184 = add nsw i32 %183, %182
  store i32 %184, ptr %12, align 4
  br label %185

185:                                              ; preds = %180
  %186 = load i32, ptr %12, align 4
  %187 = load i32, ptr %15, align 4
  %188 = icmp sle i32 %186, %187
  br i1 %188, label %21, label %189, !llvm.loop !14

189:                                              ; preds = %185
  store i32 1, ptr %16, align 4
  br label %190

190:                                              ; preds = %201, %189
  %191 = load ptr, ptr %7, align 8
  %192 = load i32, ptr %16, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.complex, ptr %191, i64 %193
  %195 = load ptr, ptr %8, align 8
  %196 = load i32, ptr %16, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.complex, ptr %195, i64 %197
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %194, ptr align 4 %198, i64 8, i1 false)
  %199 = load i32, ptr %16, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, ptr %16, align 4
  br label %201

201:                                              ; preds = %190
  %202 = load i32, ptr %16, align 4
  %203 = load i32, ptr %6, align 4
  %204 = icmp sle i32 %202, %203
  br i1 %204, label %190, label %205, !llvm.loop !15

205:                                              ; preds = %201
  %206 = load i32, ptr %14, align 4
  %207 = load i32, ptr %14, align 4
  %208 = add nsw i32 %207, %206
  store i32 %208, ptr %14, align 4
  br label %209

209:                                              ; preds = %205
  %210 = load i32, ptr %14, align 4
  %211 = load i32, ptr %15, align 4
  %212 = icmp sle i32 %210, %211
  br i1 %212, label %19, label %213, !llvm.loop !16

213:                                              ; preds = %209
  store i32 1, ptr %11, align 4
  %214 = load i32, ptr %11, align 4
  %215 = load i32, ptr %6, align 4
  %216 = icmp sle i32 %214, %215
  br i1 %216, label %.lr.ph, label %251

.lr.ph:                                           ; preds = %213
  br label %217

217:                                              ; preds = %.lr.ph, %245
  %218 = load float, ptr %10, align 4
  %219 = load ptr, ptr %7, align 8
  %220 = load i32, ptr %11, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.complex, ptr %219, i64 %221
  %223 = getelementptr inbounds nuw %struct.complex, ptr %222, i32 0, i32 0
  %224 = load float, ptr %223, align 4
  %225 = fmul float %218, %224
  %226 = load ptr, ptr %7, align 8
  %227 = load i32, ptr %11, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.complex, ptr %226, i64 %228
  %230 = getelementptr inbounds nuw %struct.complex, ptr %229, i32 0, i32 0
  store float %225, ptr %230, align 4
  %231 = load float, ptr %10, align 4
  %232 = fneg float %231
  %233 = load ptr, ptr %7, align 8
  %234 = load i32, ptr %11, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.complex, ptr %233, i64 %235
  %237 = getelementptr inbounds nuw %struct.complex, ptr %236, i32 0, i32 1
  %238 = load float, ptr %237, align 4
  %239 = fmul float %232, %238
  %240 = load ptr, ptr %7, align 8
  %241 = load i32, ptr %11, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.complex, ptr %240, i64 %242
  %244 = getelementptr inbounds nuw %struct.complex, ptr %243, i32 0, i32 1
  store float %239, ptr %244, align 4
  br label %245

245:                                              ; preds = %217
  %246 = load i32, ptr %11, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, ptr %11, align 4
  %248 = load i32, ptr %11, align 4
  %249 = load i32, ptr %6, align 4
  %250 = icmp sle i32 %248, %249
  br i1 %250, label %217, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %245
  br label %251

251:                                              ; preds = %._crit_edge, %213
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @Oscar() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void @Exptab(i32 noundef 256, ptr noundef @e)
  store i32 5767, ptr @seed, align 4
  store i32 1, ptr %1, align 4
  %3 = load i32, ptr %1, align 4
  %4 = icmp sle i32 %3, 256
  br i1 %4, label %.lr.ph, label %26

.lr.ph:                                           ; preds = %0
  br label %5

5:                                                ; preds = %.lr.ph, %21
  %6 = load i32, ptr @seed, align 4
  store i32 %6, ptr %2, align 4
  call void @Uniform11(ptr noundef %2, ptr noundef @zr)
  %7 = load i32, ptr %2, align 4
  store i32 %7, ptr @seed, align 4
  call void @Uniform11(ptr noundef %2, ptr noundef @zi)
  %8 = load i32, ptr %2, align 4
  store i32 %8, ptr @seed, align 4
  %9 = load float, ptr @zr, align 4
  %10 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %9, float -1.000000e+01)
  %11 = load i32, ptr %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [257 x %struct.complex], ptr @z, i64 0, i64 %12
  %14 = getelementptr inbounds nuw %struct.complex, ptr %13, i32 0, i32 0
  store float %10, ptr %14, align 8
  %15 = load float, ptr @zi, align 4
  %16 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %15, float -1.000000e+01)
  %17 = load i32, ptr %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [257 x %struct.complex], ptr @z, i64 0, i64 %18
  %20 = getelementptr inbounds nuw %struct.complex, ptr %19, i32 0, i32 1
  store float %16, ptr %20, align 4
  br label %21

21:                                               ; preds = %5
  %22 = load i32, ptr %1, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %1, align 4
  %24 = load i32, ptr %1, align 4
  %25 = icmp sle i32 %24, 256
  br i1 %25, label %5, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %21
  br label %26

26:                                               ; preds = %._crit_edge, %0
  store i32 1, ptr %1, align 4
  %27 = load i32, ptr %1, align 4
  %28 = icmp sle i32 %27, 20
  br i1 %28, label %.lr.ph2, label %35

.lr.ph2:                                          ; preds = %26
  br label %29

29:                                               ; preds = %.lr.ph2, %30
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  br label %30

30:                                               ; preds = %29
  %31 = load i32, ptr %1, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %1, align 4
  %33 = load i32, ptr %1, align 4
  %34 = icmp sle i32 %33, 20
  br i1 %34, label %29, label %._crit_edge3, !llvm.loop !19

._crit_edge3:                                     ; preds = %30
  br label %35

35:                                               ; preds = %._crit_edge3, %26
  call void @Printcomplex(ptr noundef @z, i32 noundef 1, i32 noundef 256, i32 noundef 17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp slt i32 %3, 10
  br i1 %4, label %.lr.ph, label %11

.lr.ph:                                           ; preds = %0
  br label %5

5:                                                ; preds = %.lr.ph, %6
  call void @Oscar()
  br label %6

6:                                                ; preds = %5
  %7 = load i32, ptr %2, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %2, align 4
  %9 = load i32, ptr %2, align 4
  %10 = icmp slt i32 %9, 10
  br i1 %10, label %5, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %6
  br label %11

11:                                               ; preds = %._crit_edge, %0
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Oscar.c", directory: "E:/Phase Ordering/v3")
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
