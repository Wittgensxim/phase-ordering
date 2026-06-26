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
  br label %2

2:                                                ; preds = %22, %1
  %.013 = phi i32 [ 2, %1 ], [ %23, %22 ]
  %.012 = phi i32 [ 1, %1 ], [ %5, %22 ]
  %.011 = phi float [ 1.000000e+00, %1 ], [ %.1, %22 ]
  %.0 = phi float [ %0, %1 ], [ %6, %22 ]
  %3 = icmp sle i32 %.013, 10
  br i1 %3, label %4, label %24

4:                                                ; preds = %2
  %5 = mul nsw i32 %.012, %.013
  %6 = fmul float %.0, %0
  %7 = and i32 %.013, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %4
  %10 = and i32 %.013, 3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = sitofp i32 %5 to float
  %14 = fdiv float %6, %13
  %15 = fadd float %.011, %14
  br label %20

16:                                               ; preds = %9
  %17 = sitofp i32 %5 to float
  %18 = fdiv float %6, %17
  %19 = fsub float %.011, %18
  br label %20

20:                                               ; preds = %16, %12
  %.2 = phi float [ %15, %12 ], [ %19, %16 ]
  br label %21

21:                                               ; preds = %20, %4
  %.1 = phi float [ %.2, %20 ], [ %.011, %4 ]
  br label %22

22:                                               ; preds = %21
  %23 = add nsw i32 %.013, 1
  br label %2, !llvm.loop !7

24:                                               ; preds = %2
  ret float %.011
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Min0(i32 noundef %0, i32 noundef %1) #0 {
  %3 = icmp slt i32 %0, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %4
  %.0 = phi i32 [ %0, %4 ], [ %1, %5 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Printcomplex(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %6

6:                                                ; preds = %26, %4
  %.0 = phi i32 [ %1, %4 ], [ %25, %26 ]
  %7 = sext i32 %.0 to i64
  %8 = getelementptr inbounds %struct.complex, ptr %0, i64 %7
  %9 = load float, ptr %8, align 4
  %10 = fpext float %9 to double
  %11 = getelementptr inbounds nuw %struct.complex, ptr %8, i32 0, i32 1
  %12 = load float, ptr %11, align 4
  %13 = fpext float %12 to double
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %10, double noundef %13)
  %15 = add nsw i32 %.0, %3
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.complex, ptr %0, i64 %16
  %18 = load float, ptr %17, align 4
  %19 = fpext float %18 to double
  %20 = getelementptr inbounds nuw %struct.complex, ptr %17, i32 0, i32 1
  %21 = load float, ptr %20, align 4
  %22 = fpext float %21 to double
  %23 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %19, double noundef %22)
  %24 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %25 = add nsw i32 %15, %3
  br label %26

26:                                               ; preds = %6
  %27 = icmp sle i32 %25, %2
  br i1 %27, label %6, label %28, !llvm.loop !9

28:                                               ; preds = %26
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Uniform11(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = mul nsw i32 4855, %3
  %5 = add nsw i32 %4, 1731
  %6 = and i32 %5, 8191
  store i32 %6, ptr %0, align 4
  %7 = load i32, ptr %0, align 4
  %8 = sitofp i32 %7 to float
  %9 = fdiv float %8, 8.192000e+03
  store float %9, ptr %1, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Exptab(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca [26 x float], align 16
  br label %4

4:                                                ; preds = %14, %2
  %.033 = phi i32 [ 1, %2 ], [ %15, %14 ]
  %.0 = phi float [ 4.000000e+00, %2 ], [ %13, %14 ]
  %5 = icmp sle i32 %.033, 25
  br i1 %5, label %6, label %16

6:                                                ; preds = %4
  %7 = fdiv float f0x40490FDB, %.0
  %8 = call float @Cos(float noundef %7)
  %9 = fmul float 2.000000e+00, %8
  %10 = fdiv float 1.000000e+00, %9
  %11 = sext i32 %.033 to i64
  %12 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %11
  store float %10, ptr %12, align 4
  %13 = fadd float %.0, %.0
  br label %14

14:                                               ; preds = %6
  %15 = add nsw i32 %.033, 1
  br label %4, !llvm.loop !10

16:                                               ; preds = %4
  %17 = sdiv i32 %0, 2
  %18 = sdiv i32 %17, 2
  %19 = getelementptr inbounds %struct.complex, ptr %1, i64 1
  store float 1.000000e+00, ptr %19, align 4
  %20 = getelementptr inbounds %struct.complex, ptr %1, i64 1
  %21 = getelementptr inbounds nuw %struct.complex, ptr %20, i32 0, i32 1
  store float 0.000000e+00, ptr %21, align 4
  %22 = add nsw i32 %18, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.complex, ptr %1, i64 %23
  store float 0.000000e+00, ptr %24, align 4
  %25 = add nsw i32 %18, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.complex, ptr %1, i64 %26
  %28 = getelementptr inbounds nuw %struct.complex, ptr %27, i32 0, i32 1
  store float 1.000000e+00, ptr %28, align 4
  %29 = add nsw i32 %17, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.complex, ptr %1, i64 %30
  store float -1.000000e+00, ptr %31, align 4
  %32 = add nsw i32 %17, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.complex, ptr %1, i64 %33
  %35 = getelementptr inbounds nuw %struct.complex, ptr %34, i32 0, i32 1
  store float 0.000000e+00, ptr %35, align 4
  br label %36

36:                                               ; preds = %84, %16
  %.032 = phi i32 [ 1, %16 ], [ %83, %84 ]
  %.030 = phi i32 [ %18, %16 ], [ %37, %84 ]
  %37 = sdiv i32 %.030, 2
  br label %38

38:                                               ; preds = %79, %36
  %.031 = phi i32 [ %37, %36 ], [ %78, %79 ]
  %39 = sext i32 %.032 to i64
  %40 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %39
  %41 = load float, ptr %40, align 4
  %42 = add nsw i32 %.031, %37
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.complex, ptr %1, i64 %44
  %46 = load float, ptr %45, align 4
  %47 = sub nsw i32 %.031, %37
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.complex, ptr %1, i64 %49
  %51 = load float, ptr %50, align 4
  %52 = fadd float %46, %51
  %53 = fmul float %41, %52
  %54 = add nsw i32 %.031, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.complex, ptr %1, i64 %55
  store float %53, ptr %56, align 4
  %57 = sext i32 %.032 to i64
  %58 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %57
  %59 = load float, ptr %58, align 4
  %60 = add nsw i32 %.031, %37
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.complex, ptr %1, i64 %62
  %64 = getelementptr inbounds nuw %struct.complex, ptr %63, i32 0, i32 1
  %65 = load float, ptr %64, align 4
  %66 = sub nsw i32 %.031, %37
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.complex, ptr %1, i64 %68
  %70 = getelementptr inbounds nuw %struct.complex, ptr %69, i32 0, i32 1
  %71 = load float, ptr %70, align 4
  %72 = fadd float %65, %71
  %73 = fmul float %59, %72
  %74 = add nsw i32 %.031, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.complex, ptr %1, i64 %75
  %77 = getelementptr inbounds nuw %struct.complex, ptr %76, i32 0, i32 1
  store float %73, ptr %77, align 4
  %78 = add nsw i32 %.031, %.030
  br label %79

79:                                               ; preds = %38
  %80 = icmp sle i32 %78, %17
  br i1 %80, label %38, label %81, !llvm.loop !11

81:                                               ; preds = %79
  %82 = add nsw i32 %.032, 1
  %83 = call i32 @Min0(i32 noundef %82, i32 noundef 25)
  br label %84

84:                                               ; preds = %81
  %85 = icmp sgt i32 %37, 1
  br i1 %85, label %36, label %86, !llvm.loop !12

86:                                               ; preds = %84
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Fft(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) #0 {
  %6 = sdiv i32 %0, 2
  br label %7

7:                                                ; preds = %102, %5
  %.045 = phi i32 [ 1, %5 ], [ %101, %102 ]
  br label %8

8:                                                ; preds = %90, %7
  %.047 = phi i32 [ %.045, %7 ], [ %89, %90 ]
  %.046 = phi i32 [ 0, %7 ], [ %.047, %90 ]
  %.044 = phi i32 [ 1, %7 ], [ %85, %90 ]
  br label %9

9:                                                ; preds = %86, %8
  %.1 = phi i32 [ %.044, %8 ], [ %85, %86 ]
  %10 = sext i32 %.1 to i64
  %11 = getelementptr inbounds %struct.complex, ptr %1, i64 %10
  %12 = load float, ptr %11, align 4
  %13 = add nsw i32 %6, %.1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.complex, ptr %1, i64 %14
  %16 = load float, ptr %15, align 4
  %17 = fadd float %12, %16
  %18 = add nsw i32 %.1, %.046
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.complex, ptr %2, i64 %19
  store float %17, ptr %20, align 4
  %21 = sext i32 %.1 to i64
  %22 = getelementptr inbounds %struct.complex, ptr %1, i64 %21
  %23 = getelementptr inbounds nuw %struct.complex, ptr %22, i32 0, i32 1
  %24 = load float, ptr %23, align 4
  %25 = add nsw i32 %6, %.1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.complex, ptr %1, i64 %26
  %28 = getelementptr inbounds nuw %struct.complex, ptr %27, i32 0, i32 1
  %29 = load float, ptr %28, align 4
  %30 = fadd float %24, %29
  %31 = add nsw i32 %.1, %.046
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.complex, ptr %2, i64 %32
  %34 = getelementptr inbounds nuw %struct.complex, ptr %33, i32 0, i32 1
  store float %30, ptr %34, align 4
  %35 = add nsw i32 %.046, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.complex, ptr %3, i64 %36
  %38 = load float, ptr %37, align 4
  %39 = sext i32 %.1 to i64
  %40 = getelementptr inbounds %struct.complex, ptr %1, i64 %39
  %41 = load float, ptr %40, align 4
  %42 = add nsw i32 %.1, %6
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.complex, ptr %1, i64 %43
  %45 = load float, ptr %44, align 4
  %46 = fsub float %41, %45
  %47 = getelementptr inbounds nuw %struct.complex, ptr %37, i32 0, i32 1
  %48 = load float, ptr %47, align 4
  %49 = getelementptr inbounds nuw %struct.complex, ptr %40, i32 0, i32 1
  %50 = load float, ptr %49, align 4
  %51 = getelementptr inbounds nuw %struct.complex, ptr %44, i32 0, i32 1
  %52 = load float, ptr %51, align 4
  %53 = fsub float %50, %52
  %54 = fmul float %48, %53
  %55 = fneg float %54
  %56 = call float @llvm.fmuladd.f32(float %38, float %46, float %55)
  %57 = add nsw i32 %.1, %.047
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.complex, ptr %2, i64 %58
  store float %56, ptr %59, align 4
  %60 = add nsw i32 %.046, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.complex, ptr %3, i64 %61
  %63 = load float, ptr %62, align 4
  %64 = sext i32 %.1 to i64
  %65 = getelementptr inbounds %struct.complex, ptr %1, i64 %64
  %66 = getelementptr inbounds nuw %struct.complex, ptr %65, i32 0, i32 1
  %67 = load float, ptr %66, align 4
  %68 = add nsw i32 %.1, %6
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.complex, ptr %1, i64 %69
  %71 = getelementptr inbounds nuw %struct.complex, ptr %70, i32 0, i32 1
  %72 = load float, ptr %71, align 4
  %73 = fsub float %67, %72
  %74 = getelementptr inbounds nuw %struct.complex, ptr %62, i32 0, i32 1
  %75 = load float, ptr %74, align 4
  %76 = load float, ptr %65, align 4
  %77 = load float, ptr %70, align 4
  %78 = fsub float %76, %77
  %79 = fmul float %75, %78
  %80 = call float @llvm.fmuladd.f32(float %63, float %73, float %79)
  %81 = add nsw i32 %.1, %.047
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.complex, ptr %2, i64 %82
  %84 = getelementptr inbounds nuw %struct.complex, ptr %83, i32 0, i32 1
  store float %80, ptr %84, align 4
  %85 = add nsw i32 %.1, 1
  br label %86

86:                                               ; preds = %9
  %87 = icmp sle i32 %85, %.047
  br i1 %87, label %9, label %88, !llvm.loop !13

88:                                               ; preds = %86
  %89 = add nsw i32 %.047, %.045
  br label %90

90:                                               ; preds = %88
  %91 = icmp sle i32 %89, %6
  br i1 %91, label %8, label %92, !llvm.loop !14

92:                                               ; preds = %90
  br label %93

93:                                               ; preds = %98, %92
  %.0 = phi i32 [ 1, %92 ], [ %97, %98 ]
  %94 = sext i32 %.0 to i64
  %95 = getelementptr inbounds %struct.complex, ptr %1, i64 %94
  %96 = getelementptr inbounds %struct.complex, ptr %2, i64 %94
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %95, ptr align 4 %96, i64 8, i1 false)
  %97 = add nsw i32 %.0, 1
  br label %98

98:                                               ; preds = %93
  %99 = icmp sle i32 %97, %0
  br i1 %99, label %93, label %100, !llvm.loop !15

100:                                              ; preds = %98
  %101 = add nsw i32 %.045, %.045
  br label %102

102:                                              ; preds = %100
  %103 = icmp sle i32 %101, %6
  br i1 %103, label %7, label %104, !llvm.loop !16

104:                                              ; preds = %102
  br label %105

105:                                              ; preds = %118, %104
  %.2 = phi i32 [ 1, %104 ], [ %119, %118 ]
  %106 = icmp sle i32 %.2, %0
  br i1 %106, label %107, label %120

107:                                              ; preds = %105
  %108 = sext i32 %.2 to i64
  %109 = getelementptr inbounds %struct.complex, ptr %1, i64 %108
  %110 = load float, ptr %109, align 4
  %111 = fmul float %4, %110
  store float %111, ptr %109, align 4
  %112 = fneg float %4
  %113 = sext i32 %.2 to i64
  %114 = getelementptr inbounds %struct.complex, ptr %1, i64 %113
  %115 = getelementptr inbounds nuw %struct.complex, ptr %114, i32 0, i32 1
  %116 = load float, ptr %115, align 4
  %117 = fmul float %112, %116
  store float %117, ptr %115, align 4
  br label %118

118:                                              ; preds = %107
  %119 = add nsw i32 %.2, 1
  br label %105, !llvm.loop !17

120:                                              ; preds = %105
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @Oscar() #0 {
  %1 = alloca i32, align 4
  call void @Exptab(i32 noundef 256, ptr noundef @e)
  store i32 5767, ptr @seed, align 4
  br label %2

2:                                                ; preds = %17, %0
  %.0 = phi i32 [ 1, %0 ], [ %18, %17 ]
  %3 = icmp sle i32 %.0, 256
  br i1 %3, label %4, label %19

4:                                                ; preds = %2
  %5 = load i32, ptr @seed, align 4
  store i32 %5, ptr %1, align 4
  call void @Uniform11(ptr noundef %1, ptr noundef @zr)
  %6 = load i32, ptr %1, align 4
  store i32 %6, ptr @seed, align 4
  call void @Uniform11(ptr noundef %1, ptr noundef @zi)
  %7 = load i32, ptr %1, align 4
  store i32 %7, ptr @seed, align 4
  %8 = load float, ptr @zr, align 4
  %9 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %8, float -1.000000e+01)
  %10 = sext i32 %.0 to i64
  %11 = getelementptr inbounds [257 x %struct.complex], ptr @z, i64 0, i64 %10
  store float %9, ptr %11, align 8
  %12 = load float, ptr @zi, align 4
  %13 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %12, float -1.000000e+01)
  %14 = sext i32 %.0 to i64
  %15 = getelementptr inbounds [257 x %struct.complex], ptr @z, i64 0, i64 %14
  %16 = getelementptr inbounds nuw %struct.complex, ptr %15, i32 0, i32 1
  store float %13, ptr %16, align 4
  br label %17

17:                                               ; preds = %4
  %18 = add nsw i32 %.0, 1
  br label %2, !llvm.loop !18

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %23, %19
  %.1 = phi i32 [ 1, %19 ], [ %24, %23 ]
  %21 = icmp sle i32 %.1, 20
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  br label %23

23:                                               ; preds = %22
  %24 = add nsw i32 %.1, 1
  br label %20, !llvm.loop !19

25:                                               ; preds = %20
  call void @Printcomplex(ptr noundef @z, i32 noundef 1, i32 noundef 256, i32 noundef 17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %.0 = phi i32 [ 0, %0 ], [ %5, %4 ]
  %2 = icmp slt i32 %.0, 10
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  call void @Oscar()
  br label %4

4:                                                ; preds = %3
  %5 = add nsw i32 %.0, 1
  br label %1, !llvm.loop !20

6:                                                ; preds = %1
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
