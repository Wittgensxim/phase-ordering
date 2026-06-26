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
  ret i32 %4
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
  %8 = load float, ptr %2, align 4
  %.promoted1 = load i32, ptr %4, align 4
  %.promoted3 = load float, ptr %6, align 4
  %.promoted5 = load float, ptr %5, align 4
  br label %9

9:                                                ; preds = %35, %1
  %10 = phi float [ %34, %35 ], [ %.promoted5, %1 ]
  %11 = phi float [ %17, %35 ], [ %.promoted3, %1 ]
  %12 = phi i32 [ %16, %35 ], [ %.promoted1, %1 ]
  %13 = phi i32 [ %36, %35 ], [ 2, %1 ]
  %14 = icmp sle i32 %13, 10
  br i1 %14, label %15, label %37

15:                                               ; preds = %9
  %16 = mul nsw i32 %12, %13
  %17 = fmul float %11, %8
  %18 = and i32 %13, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %15
  %21 = and i32 %13, 3
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = sitofp i32 %16 to float
  %25 = fdiv float %17, %24
  %26 = fadd float %10, %25
  br label %31

27:                                               ; preds = %20
  %28 = sitofp i32 %16 to float
  %29 = fdiv float %17, %28
  %30 = fsub float %10, %29
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi float [ %30, %27 ], [ %26, %23 ]
  br label %33

33:                                               ; preds = %31, %15
  %34 = phi float [ %32, %31 ], [ %10, %15 ]
  br label %35

35:                                               ; preds = %33
  %36 = add nsw i32 %13, 1
  br label %9, !llvm.loop !7

37:                                               ; preds = %9
  store i32 %13, ptr %3, align 4
  store i32 %12, ptr %4, align 4
  store float %11, ptr %6, align 4
  store float %10, ptr %5, align 4
  ret float %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Min0(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  %6 = load i32, ptr %4, align 4
  %7 = icmp slt i32 %6, %1
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 %6, ptr %3, align 4
  br label %10

9:                                                ; preds = %2
  store i32 %1, ptr %3, align 4
  br label %10

10:                                               ; preds = %9, %8
  %11 = load i32, ptr %3, align 4
  ret i32 %11
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
  %12 = load ptr, ptr %5, align 8
  %13 = load i32, ptr %8, align 4
  %14 = load i32, ptr %7, align 4
  br label %15

15:                                               ; preds = %36, %4
  %16 = phi i32 [ %35, %36 ], [ %11, %4 ]
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.complex, ptr %12, i64 %17
  %19 = load float, ptr %18, align 4
  %20 = fpext float %19 to double
  %21 = getelementptr inbounds nuw %struct.complex, ptr %18, i32 0, i32 1
  %22 = load float, ptr %21, align 4
  %23 = fpext float %22 to double
  %24 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %20, double noundef %23)
  %25 = add nsw i32 %16, %13
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.complex, ptr %12, i64 %26
  %28 = load float, ptr %27, align 4
  %29 = fpext float %28 to double
  %30 = getelementptr inbounds nuw %struct.complex, ptr %27, i32 0, i32 1
  %31 = load float, ptr %30, align 4
  %32 = fpext float %31 to double
  %33 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %29, double noundef %32)
  %34 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %35 = add nsw i32 %25, %13
  br label %36

36:                                               ; preds = %15
  %37 = icmp sle i32 %35, %14
  br i1 %37, label %15, label %38, !llvm.loop !9

38:                                               ; preds = %36
  store i32 %35, ptr %9, align 4
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
  %7 = mul nsw i32 4855, %6
  %8 = add nsw i32 %7, 1731
  %9 = and i32 %8, 8191
  store i32 %9, ptr %5, align 4
  %10 = load ptr, ptr %3, align 8
  %11 = load i32, ptr %10, align 4
  %12 = sitofp i32 %11 to float
  %13 = fdiv float %12, 8.192000e+03
  %14 = load ptr, ptr %4, align 8
  store float %13, ptr %14, align 4
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
  %13 = load float, ptr %5, align 4
  %.promoted1 = load float, ptr %6, align 4
  br label %14

14:                                               ; preds = %26, %2
  %15 = phi float [ %25, %26 ], [ %.promoted1, %2 ]
  %16 = phi i32 [ %27, %26 ], [ 1, %2 ]
  %17 = icmp sle i32 %16, 25
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = fdiv float %13, %15
  %20 = call float @Cos(float noundef %19)
  %21 = fmul float 2.000000e+00, %20
  %22 = fdiv float 1.000000e+00, %21
  %23 = sext i32 %16 to i64
  %24 = getelementptr inbounds [26 x float], ptr %7, i64 0, i64 %23
  store float %22, ptr %24, align 4
  %25 = fadd float %15, %15
  br label %26

26:                                               ; preds = %18
  %27 = add nsw i32 %16, 1
  br label %14, !llvm.loop !10

28:                                               ; preds = %14
  store i32 %16, ptr %8, align 4
  store float %15, ptr %6, align 4
  %29 = load i32, ptr %3, align 4
  %30 = sdiv i32 %29, 2
  store i32 %30, ptr %12, align 4
  %31 = sdiv i32 %30, 2
  store i32 %31, ptr %11, align 4
  store i32 1, ptr %9, align 4
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds %struct.complex, ptr %32, i64 1
  store float 1.000000e+00, ptr %33, align 4
  %34 = load ptr, ptr %4, align 8
  %35 = getelementptr inbounds %struct.complex, ptr %34, i64 1
  %36 = getelementptr inbounds nuw %struct.complex, ptr %35, i32 0, i32 1
  store float 0.000000e+00, ptr %36, align 4
  %37 = load ptr, ptr %4, align 8
  %38 = load i32, ptr %11, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.complex, ptr %37, i64 %40
  store float 0.000000e+00, ptr %41, align 4
  %42 = load ptr, ptr %4, align 8
  %43 = load i32, ptr %11, align 4
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.complex, ptr %42, i64 %45
  %47 = getelementptr inbounds nuw %struct.complex, ptr %46, i32 0, i32 1
  store float 1.000000e+00, ptr %47, align 4
  %48 = load ptr, ptr %4, align 8
  %49 = load i32, ptr %12, align 4
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.complex, ptr %48, i64 %51
  store float -1.000000e+00, ptr %52, align 4
  %53 = load ptr, ptr %4, align 8
  %54 = load i32, ptr %12, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.complex, ptr %53, i64 %56
  %58 = getelementptr inbounds nuw %struct.complex, ptr %57, i32 0, i32 1
  store float 0.000000e+00, ptr %58, align 4
  %59 = load ptr, ptr %4, align 8
  %60 = load i32, ptr %12, align 4
  %.promoted11 = load i32, ptr %11, align 4
  %.promoted16 = load i32, ptr %9, align 4
  br label %61

61:                                               ; preds = %94, %28
  %62 = phi i32 [ %93, %94 ], [ %.promoted16, %28 ]
  %63 = phi i32 [ %64, %94 ], [ %.promoted11, %28 ]
  %64 = sdiv i32 %63, 2
  %65 = sext i32 %62 to i64
  %66 = getelementptr inbounds [26 x float], ptr %7, i64 0, i64 %65
  %67 = load float, ptr %66, align 4
  %invariant.op = add i32 %64, 1
  %invariant.op3 = sub i32 1, %64
  br label %68

68:                                               ; preds = %89, %61
  %69 = phi i32 [ %88, %89 ], [ %64, %61 ]
  %.reass = add i32 %69, %invariant.op
  %70 = sext i32 %.reass to i64
  %71 = getelementptr inbounds %struct.complex, ptr %59, i64 %70
  %72 = load float, ptr %71, align 4
  %.reass4 = add i32 %69, %invariant.op3
  %73 = sext i32 %.reass4 to i64
  %74 = getelementptr inbounds %struct.complex, ptr %59, i64 %73
  %75 = load float, ptr %74, align 4
  %76 = fadd float %72, %75
  %77 = fmul float %67, %76
  %78 = add nsw i32 %69, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.complex, ptr %59, i64 %79
  store float %77, ptr %80, align 4
  %81 = getelementptr inbounds nuw %struct.complex, ptr %71, i32 0, i32 1
  %82 = load float, ptr %81, align 4
  %83 = getelementptr inbounds nuw %struct.complex, ptr %74, i32 0, i32 1
  %84 = load float, ptr %83, align 4
  %85 = fadd float %82, %84
  %86 = fmul float %67, %85
  %87 = getelementptr inbounds nuw %struct.complex, ptr %80, i32 0, i32 1
  store float %86, ptr %87, align 4
  %88 = add nsw i32 %69, %63
  br label %89

89:                                               ; preds = %68
  %90 = icmp sle i32 %88, %60
  br i1 %90, label %68, label %91, !llvm.loop !11

91:                                               ; preds = %89
  %92 = add nsw i32 %62, 1
  %93 = call i32 @Min0(i32 noundef %92, i32 noundef 25)
  br label %94

94:                                               ; preds = %91
  %95 = icmp sgt i32 %64, 1
  br i1 %95, label %61, label %96, !llvm.loop !12

96:                                               ; preds = %94
  store i32 %64, ptr %11, align 4
  store i32 %64, ptr %8, align 4
  store i32 %88, ptr %10, align 4
  store i32 %93, ptr %9, align 4
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
  %19 = load ptr, ptr %7, align 8
  %20 = load i32, ptr %15, align 4
  %21 = load ptr, ptr %8, align 8
  %22 = load ptr, ptr %9, align 8
  %23 = load i32, ptr %6, align 4
  br label %24

24:                                               ; preds = %95, %5
  %25 = phi i32 [ %94, %95 ], [ 1, %5 ]
  br label %26

26:                                               ; preds = %82, %24
  %.lcssa6 = phi i32 [ %77, %82 ], [ 1, %24 ]
  %27 = phi i32 [ %81, %82 ], [ %25, %24 ]
  %28 = phi i32 [ %27, %82 ], [ 0, %24 ]
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.complex, ptr %22, i64 %30
  %32 = getelementptr inbounds nuw %struct.complex, ptr %31, i32 0, i32 1
  br label %33

33:                                               ; preds = %78, %26
  %34 = phi i32 [ %77, %78 ], [ %.lcssa6, %26 ]
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.complex, ptr %19, i64 %35
  %37 = load float, ptr %36, align 4
  %38 = add nsw i32 %20, %34
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.complex, ptr %19, i64 %39
  %41 = load float, ptr %40, align 4
  %42 = fadd float %37, %41
  %43 = add nsw i32 %34, %28
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.complex, ptr %21, i64 %44
  store float %42, ptr %45, align 4
  %46 = getelementptr inbounds nuw %struct.complex, ptr %36, i32 0, i32 1
  %47 = load float, ptr %46, align 4
  %48 = getelementptr inbounds nuw %struct.complex, ptr %40, i32 0, i32 1
  %49 = load float, ptr %48, align 4
  %50 = fadd float %47, %49
  %51 = getelementptr inbounds nuw %struct.complex, ptr %45, i32 0, i32 1
  store float %50, ptr %51, align 4
  %52 = load float, ptr %31, align 4
  %53 = load float, ptr %36, align 4
  %54 = load float, ptr %40, align 4
  %55 = fsub float %53, %54
  %56 = load float, ptr %32, align 4
  %57 = load float, ptr %46, align 4
  %58 = load float, ptr %48, align 4
  %59 = fsub float %57, %58
  %60 = fmul float %56, %59
  %61 = fneg float %60
  %62 = call float @llvm.fmuladd.f32(float %52, float %55, float %61)
  %63 = add nsw i32 %34, %27
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.complex, ptr %21, i64 %64
  store float %62, ptr %65, align 4
  %66 = load float, ptr %31, align 4
  %67 = load float, ptr %46, align 4
  %68 = load float, ptr %48, align 4
  %69 = fsub float %67, %68
  %70 = load float, ptr %32, align 4
  %71 = load float, ptr %36, align 4
  %72 = load float, ptr %40, align 4
  %73 = fsub float %71, %72
  %74 = fmul float %70, %73
  %75 = call float @llvm.fmuladd.f32(float %66, float %69, float %74)
  %76 = getelementptr inbounds nuw %struct.complex, ptr %65, i32 0, i32 1
  store float %75, ptr %76, align 4
  %77 = add nsw i32 %34, 1
  br label %78

78:                                               ; preds = %33
  %79 = icmp sle i32 %77, %27
  br i1 %79, label %33, label %80, !llvm.loop !13

80:                                               ; preds = %78
  %81 = add nsw i32 %27, %25
  br label %82

82:                                               ; preds = %80
  %83 = icmp sle i32 %81, %20
  br i1 %83, label %26, label %84, !llvm.loop !14

84:                                               ; preds = %82
  br label %85

85:                                               ; preds = %91, %84
  %86 = phi i32 [ %90, %91 ], [ 1, %84 ]
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.complex, ptr %19, i64 %87
  %89 = getelementptr inbounds %struct.complex, ptr %21, i64 %87
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %88, ptr align 4 %89, i64 8, i1 false)
  %90 = add nsw i32 %86, 1
  br label %91

91:                                               ; preds = %85
  %92 = icmp sle i32 %90, %23
  br i1 %92, label %85, label %93, !llvm.loop !15

93:                                               ; preds = %91
  %94 = add nsw i32 %25, %25
  br label %95

95:                                               ; preds = %93
  %96 = icmp sle i32 %94, %20
  br i1 %96, label %24, label %97, !llvm.loop !16

97:                                               ; preds = %95
  store i32 %27, ptr %13, align 4
  store i32 %94, ptr %14, align 4
  store i32 %81, ptr %12, align 4
  store i32 %77, ptr %11, align 4
  store i32 %90, ptr %16, align 4
  store i32 1, ptr %11, align 4
  %98 = load i32, ptr %6, align 4
  %99 = load float, ptr %10, align 4
  %100 = load ptr, ptr %7, align 8
  %101 = fneg float %99
  br label %102

102:                                              ; preds = %113, %97
  %103 = phi i32 [ %114, %113 ], [ 1, %97 ]
  %104 = icmp sle i32 %103, %98
  br i1 %104, label %105, label %115

105:                                              ; preds = %102
  %106 = sext i32 %103 to i64
  %107 = getelementptr inbounds %struct.complex, ptr %100, i64 %106
  %108 = load float, ptr %107, align 4
  %109 = fmul float %99, %108
  store float %109, ptr %107, align 4
  %110 = getelementptr inbounds nuw %struct.complex, ptr %107, i32 0, i32 1
  %111 = load float, ptr %110, align 4
  %112 = fmul float %101, %111
  store float %112, ptr %110, align 4
  br label %113

113:                                              ; preds = %105
  %114 = add nsw i32 %103, 1
  br label %102, !llvm.loop !17

115:                                              ; preds = %102
  store i32 %103, ptr %11, align 4
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
  br label %3

3:                                                ; preds = %17, %0
  %4 = phi i32 [ %18, %17 ], [ 1, %0 ]
  %5 = icmp sle i32 %4, 256
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load i32, ptr @seed, align 4
  store i32 %7, ptr %2, align 4
  call void @Uniform11(ptr noundef %2, ptr noundef @zr)
  %8 = load i32, ptr %2, align 4
  store i32 %8, ptr @seed, align 4
  call void @Uniform11(ptr noundef %2, ptr noundef @zi)
  %9 = load i32, ptr %2, align 4
  store i32 %9, ptr @seed, align 4
  %10 = load float, ptr @zr, align 4
  %11 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %10, float -1.000000e+01)
  %12 = sext i32 %4 to i64
  %13 = getelementptr inbounds [257 x %struct.complex], ptr @z, i64 0, i64 %12
  store float %11, ptr %13, align 8
  %14 = load float, ptr @zi, align 4
  %15 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %14, float -1.000000e+01)
  %16 = getelementptr inbounds nuw %struct.complex, ptr %13, i32 0, i32 1
  store float %15, ptr %16, align 4
  br label %17

17:                                               ; preds = %6
  %18 = add nsw i32 %4, 1
  br label %3, !llvm.loop !18

19:                                               ; preds = %3
  store i32 1, ptr %1, align 4
  br label %20

20:                                               ; preds = %24, %19
  %21 = phi i32 [ %25, %24 ], [ 1, %19 ]
  %22 = icmp sle i32 %21, 20
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  br label %24

24:                                               ; preds = %23
  %25 = add nsw i32 %21, 1
  br label %20, !llvm.loop !19

26:                                               ; preds = %20
  store i32 %21, ptr %1, align 4
  call void @Printcomplex(ptr noundef @z, i32 noundef 1, i32 noundef 256, i32 noundef 17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  br label %3

3:                                                ; preds = %7, %0
  %4 = phi i32 [ %8, %7 ], [ 0, %0 ]
  %5 = icmp slt i32 %4, 10
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  call void @Oscar()
  br label %7

7:                                                ; preds = %6
  %8 = add nsw i32 %4, 1
  br label %3, !llvm.loop !20

9:                                                ; preds = %3
  store i32 %4, ptr %2, align 4
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
