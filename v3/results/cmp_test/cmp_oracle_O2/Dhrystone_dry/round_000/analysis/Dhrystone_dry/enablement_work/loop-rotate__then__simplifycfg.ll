; ModuleID = 'results\cmp_test\cmp_oracle_O2\Dhrystone_dry\Dhrystone_dry.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Dhrystone/dry.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.Record = type { ptr, i32, i32, i32, [31 x i8] }

@Version = dso_local global [4 x i8] c"1.1\00", align 1
@PtrGlbNext = dso_local global ptr null, align 8
@PtrGlb = dso_local global ptr null, align 8
@.str = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, SOME STRING\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 1'ST STRING\00", align 1
@Array2Glob = dso_local global [51 x [51 x i32]] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 2'ND STRING\00", align 1
@BoolGlob = dso_local global i32 0, align 4
@Array1Glob = dso_local global [51 x i32] zeroinitializer, align 16
@Char2Glob = dso_local global i8 0, align 1
@Char1Glob = dso_local global i8 0, align 1
@IntGlob = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %2 = call i32 @Proc0()
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc0() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca [31 x i8], align 16
  %9 = alloca [31 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = call i32 @clock()
  store i32 %14, ptr %11, align 4
  store i32 0, ptr %10, align 4
  %15 = load i32, ptr %10, align 4
  %16 = icmp ult i32 %15, 100000000
  br i1 %16, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0, %.lr.ph
  %17 = load i32, ptr %10, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %10, align 4
  %19 = load i32, ptr %10, align 4
  %20 = icmp ult i32 %19, 100000000
  br i1 %20, label %.lr.ph, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %.lr.ph, %0
  %21 = call i32 @clock()
  %22 = load i32, ptr %11, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, ptr %13, align 4
  %24 = call ptr @malloc(i64 noundef 56) #4
  store ptr %24, ptr @PtrGlbNext, align 8
  %25 = call ptr @malloc(i64 noundef 56) #4
  store ptr %25, ptr @PtrGlb, align 8
  %26 = load ptr, ptr @PtrGlbNext, align 8
  %27 = load ptr, ptr @PtrGlb, align 8
  %28 = getelementptr inbounds nuw %struct.Record, ptr %27, i32 0, i32 0
  store ptr %26, ptr %28, align 8
  %29 = load ptr, ptr @PtrGlb, align 8
  %30 = getelementptr inbounds nuw %struct.Record, ptr %29, i32 0, i32 1
  store i32 0, ptr %30, align 8
  %31 = load ptr, ptr @PtrGlb, align 8
  %32 = getelementptr inbounds nuw %struct.Record, ptr %31, i32 0, i32 2
  store i32 10001, ptr %32, align 4
  %33 = load ptr, ptr @PtrGlb, align 8
  %34 = getelementptr inbounds nuw %struct.Record, ptr %33, i32 0, i32 3
  store i32 40, ptr %34, align 8
  %35 = load ptr, ptr @PtrGlb, align 8
  %36 = getelementptr inbounds nuw %struct.Record, ptr %35, i32 0, i32 4
  %37 = getelementptr inbounds [31 x i8], ptr %36, i64 0, i64 0
  %38 = call ptr @strcpy(ptr noundef %37, ptr noundef @.str) #5
  %39 = getelementptr inbounds [31 x i8], ptr %8, i64 0, i64 0
  %40 = call ptr @strcpy(ptr noundef %39, ptr noundef @.str.1) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %41 = call i32 @clock()
  store i32 %41, ptr %11, align 4
  store i32 0, ptr %10, align 4
  %42 = load i32, ptr %10, align 4
  %43 = icmp ult i32 %42, 100000000
  br i1 %43, label %.lr.ph8, label %._crit_edge9

.lr.ph8:                                          ; preds = %._crit_edge, %._crit_edge6
  %44 = call i32 @Proc5()
  %45 = call i32 @Proc4()
  store i32 2, ptr %2, align 4
  store i32 3, ptr %3, align 4
  %46 = getelementptr inbounds [31 x i8], ptr %9, i64 0, i64 0
  %47 = call ptr @strcpy(ptr noundef %46, ptr noundef @.str.2) #5
  store i32 10000, ptr %7, align 4
  %48 = getelementptr inbounds [31 x i8], ptr %8, i64 0, i64 0
  %49 = getelementptr inbounds [31 x i8], ptr %9, i64 0, i64 0
  %50 = call i32 @Func2(ptr noundef %48, ptr noundef %49)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  store i32 %53, ptr @BoolGlob, align 4
  %54 = load i32, ptr %2, align 4
  %55 = load i32, ptr %3, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %.lr.ph2, label %._crit_edge3

.lr.ph2:                                          ; preds = %.lr.ph8, %.lr.ph2
  %57 = load i32, ptr %2, align 4
  %58 = mul nsw i32 5, %57
  %59 = load i32, ptr %3, align 4
  %60 = sub nsw i32 %58, %59
  store i32 %60, ptr %4, align 4
  %61 = load i32, ptr %2, align 4
  %62 = load i32, ptr %3, align 4
  %63 = call i32 @Proc7(i32 noundef %61, i32 noundef %62, ptr noundef %4)
  %64 = load i32, ptr %2, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %2, align 4
  %66 = load i32, ptr %2, align 4
  %67 = load i32, ptr %3, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %.lr.ph2, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %.lr.ph2, %.lr.ph8
  %69 = load i32, ptr %2, align 4
  %70 = load i32, ptr %4, align 4
  %71 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, i32 noundef %69, i32 noundef %70)
  %72 = load ptr, ptr @PtrGlb, align 8
  %73 = call i32 @Proc1(ptr noundef %72)
  store i8 65, ptr %6, align 1
  %74 = load i8, ptr %6, align 1
  %75 = sext i8 %74 to i32
  %76 = load i8, ptr @Char2Glob, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp sle i32 %75, %77
  br i1 %78, label %.lr.ph5, label %._crit_edge6

.lr.ph5:                                          ; preds = %._crit_edge3, %86
  %79 = load i32, ptr %7, align 4
  %80 = load i8, ptr %6, align 1
  %81 = sext i8 %80 to i32
  %82 = call i32 @Func1(i32 noundef %81, i32 noundef 67)
  %83 = icmp eq i32 %79, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %.lr.ph5
  %85 = call i32 @Proc6(i32 noundef 0, ptr noundef %7)
  br label %86

86:                                               ; preds = %.lr.ph5, %84
  %87 = load i8, ptr %6, align 1
  %88 = add i8 %87, 1
  store i8 %88, ptr %6, align 1
  %89 = load i8, ptr %6, align 1
  %90 = sext i8 %89 to i32
  %91 = load i8, ptr @Char2Glob, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp sle i32 %90, %92
  br i1 %93, label %.lr.ph5, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %86, %._crit_edge3
  %94 = load i32, ptr %3, align 4
  %95 = load i32, ptr %2, align 4
  %96 = mul nsw i32 %94, %95
  store i32 %96, ptr %4, align 4
  %97 = load i32, ptr %4, align 4
  %98 = load i32, ptr %2, align 4
  %99 = sdiv i32 %97, %98
  store i32 %99, ptr %3, align 4
  %100 = load i32, ptr %4, align 4
  %101 = load i32, ptr %3, align 4
  %102 = sub nsw i32 %100, %101
  %103 = mul nsw i32 7, %102
  %104 = load i32, ptr %2, align 4
  %105 = sub nsw i32 %103, %104
  store i32 %105, ptr %3, align 4
  %106 = call i32 @Proc2(ptr noundef %2)
  %107 = load i32, ptr %10, align 4
  %108 = add i32 %107, 1
  store i32 %108, ptr %10, align 4
  %109 = load i32, ptr %10, align 4
  %110 = icmp ult i32 %109, 100000000
  br i1 %110, label %.lr.ph8, label %._crit_edge9, !llvm.loop !11

._crit_edge9:                                     ; preds = %._crit_edge6, %._crit_edge
  %111 = load i32, ptr %1, align 4
  ret i32 %111
}

declare dso_local i32 @clock() #1

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare dso_local ptr @strcpy(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc1(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds nuw %struct.Record, ptr %4, i32 0, i32 3
  store i32 5, ptr %5, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds nuw %struct.Record, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds nuw %struct.Record, ptr %9, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds nuw %struct.Record, ptr %11, i32 0, i32 3
  store i32 %8, ptr %12, align 8
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds nuw %struct.Record, ptr %13, i32 0, i32 0
  %15 = load ptr, ptr %14, align 8
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds nuw %struct.Record, ptr %16, i32 0, i32 0
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds nuw %struct.Record, ptr %18, i32 0, i32 0
  store ptr %15, ptr %19, align 8
  %20 = load i32, ptr %2, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc2(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = load i32, ptr %6, align 4
  %8 = add nsw i32 %7, 10
  store i32 %8, ptr %4, align 4
  br label %9

9:                                                ; preds = %20, %1
  %10 = load i8, ptr @Char1Glob, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 65
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load i32, ptr %4, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, ptr %4, align 4
  %16 = load i32, ptr %4, align 4
  %17 = load i32, ptr @IntGlob, align 4
  %18 = sub nsw i32 %16, %17
  %19 = load ptr, ptr %3, align 8
  store i32 %18, ptr %19, align 4
  store i32 0, ptr %5, align 4
  br label %20

20:                                               ; preds = %13, %9
  %21 = load i32, ptr %5, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %9

23:                                               ; preds = %20
  %24 = load i32, ptr %2, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc3(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr @PtrGlb, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load ptr, ptr @PtrGlb, align 8
  %8 = getelementptr inbounds nuw %struct.Record, ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %3, align 8
  store ptr %9, ptr %10, align 8
  br label %12

11:                                               ; preds = %1
  store i32 100, ptr @IntGlob, align 4
  br label %12

12:                                               ; preds = %11, %6
  %13 = load i32, ptr @IntGlob, align 4
  %14 = load ptr, ptr @PtrGlb, align 8
  %15 = getelementptr inbounds nuw %struct.Record, ptr %14, i32 0, i32 3
  %16 = call i32 @Proc7(i32 noundef 10, i32 noundef %13, ptr noundef %15)
  %17 = load i32, ptr %2, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc4() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i8, ptr @Char1Glob, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp eq i32 %4, 65
  %6 = zext i1 %5 to i32
  store i32 %6, ptr %2, align 4
  %7 = load i32, ptr @BoolGlob, align 4
  %8 = load i32, ptr %2, align 4
  %9 = or i32 %8, %7
  store i32 %9, ptr %2, align 4
  store i8 66, ptr @Char2Glob, align 1
  %10 = load i32, ptr %1, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc5() #0 {
  %1 = alloca i32, align 4
  store i8 65, ptr @Char1Glob, align 1
  store i32 0, ptr @BoolGlob, align 4
  %2 = load i32, ptr %1, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc6(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  %6 = load i32, ptr %4, align 4
  %7 = load ptr, ptr %5, align 8
  store i32 %6, ptr %7, align 4
  %8 = load i32, ptr %4, align 4
  %9 = call i32 @Func3(i32 noundef %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8
  store i32 10002, ptr %12, align 4
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i32, ptr %4, align 4
  switch i32 %14, label %28 [
    i32 0, label %15
    i32 10000, label %17
    i32 10001, label %24
    i32 10003, label %26
  ]

15:                                               ; preds = %13
  %16 = load ptr, ptr %5, align 8
  store i32 0, ptr %16, align 4
  br label %28

17:                                               ; preds = %13
  %18 = load i32, ptr @IntGlob, align 4
  %19 = icmp sgt i32 %18, 100
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load ptr, ptr %5, align 8
  store i32 0, ptr %21, align 4
  br label %28

22:                                               ; preds = %17
  %23 = load ptr, ptr %5, align 8
  store i32 10002, ptr %23, align 4
  br label %28

24:                                               ; preds = %13
  %25 = load ptr, ptr %5, align 8
  store i32 10000, ptr %25, align 4
  br label %28

26:                                               ; preds = %13
  %27 = load ptr, ptr %5, align 8
  store i32 10001, ptr %27, align 4
  br label %28

28:                                               ; preds = %20, %22, %26, %24, %15, %13
  %29 = load i32, ptr %3, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc7(i32 noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store i32 %0, ptr %5, align 4
  store i32 %1, ptr %6, align 4
  store ptr %2, ptr %7, align 8
  %9 = load i32, ptr %5, align 4
  %10 = add nsw i32 %9, 2
  store i32 %10, ptr %8, align 4
  %11 = load i32, ptr %6, align 4
  %12 = load i32, ptr %8, align 4
  %13 = add nsw i32 %11, %12
  %14 = load ptr, ptr %7, align 8
  store i32 %13, ptr %14, align 4
  %15 = load i32, ptr %4, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc8(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i32 %2, ptr %8, align 4
  store i32 %3, ptr %9, align 4
  %12 = load i32, ptr %8, align 4
  %13 = add nsw i32 %12, 5
  store i32 %13, ptr %10, align 4
  %14 = load i32, ptr %9, align 4
  %15 = load ptr, ptr %6, align 8
  %16 = load i32, ptr %10, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, ptr %15, i64 %17
  store i32 %14, ptr %18, align 4
  %19 = load ptr, ptr %6, align 8
  %20 = load i32, ptr %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, ptr %19, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = load ptr, ptr %6, align 8
  %25 = load i32, ptr %10, align 4
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, ptr %24, i64 %27
  store i32 %23, ptr %28, align 4
  %29 = load i32, ptr %10, align 4
  %30 = load ptr, ptr %6, align 8
  %31 = load i32, ptr %10, align 4
  %32 = add nsw i32 %31, 30
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %30, i64 %33
  store i32 %29, ptr %34, align 4
  %35 = load i32, ptr %10, align 4
  store i32 %35, ptr %11, align 4
  %36 = load i32, ptr %11, align 4
  %37 = load i32, ptr %10, align 4
  %38 = add nsw i32 %37, 1
  %39 = icmp sle i32 %36, %38
  br i1 %39, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %4, %.lr.ph
  %40 = load i32, ptr %10, align 4
  %41 = load ptr, ptr %7, align 8
  %42 = load i32, ptr %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [51 x i32], ptr %41, i64 %43
  %45 = load i32, ptr %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [51 x i32], ptr %44, i64 0, i64 %46
  store i32 %40, ptr %47, align 4
  %48 = load i32, ptr %11, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %11, align 4
  %50 = load i32, ptr %11, align 4
  %51 = load i32, ptr %10, align 4
  %52 = add nsw i32 %51, 1
  %53 = icmp sle i32 %50, %52
  br i1 %53, label %.lr.ph, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %.lr.ph, %4
  %54 = load ptr, ptr %7, align 8
  %55 = load i32, ptr %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [51 x i32], ptr %54, i64 %56
  %58 = load i32, ptr %10, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [51 x i32], ptr %57, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, ptr %61, align 4
  %64 = load ptr, ptr %6, align 8
  %65 = load i32, ptr %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, ptr %64, i64 %66
  %68 = load i32, ptr %67, align 4
  %69 = load ptr, ptr %7, align 8
  %70 = load i32, ptr %10, align 4
  %71 = add nsw i32 %70, 20
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [51 x i32], ptr %69, i64 %72
  %74 = load i32, ptr %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [51 x i32], ptr %73, i64 0, i64 %75
  store i32 %68, ptr %76, align 4
  store i32 5, ptr @IntGlob, align 4
  %77 = load i32, ptr %5, align 4
  ret i32 %77
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func1(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = trunc i32 %0 to i8
  %9 = trunc i32 %1 to i8
  store i8 %8, ptr %4, align 1
  store i8 %9, ptr %5, align 1
  %10 = load i8, ptr %4, align 1
  store i8 %10, ptr %6, align 1
  %11 = load i8, ptr %6, align 1
  store i8 %11, ptr %7, align 1
  %12 = load i8, ptr %7, align 1
  %13 = sext i8 %12 to i32
  %14 = load i8, ptr %5, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, ptr %3, align 4
  br label %19

18:                                               ; preds = %2
  store i32 10000, ptr %3, align 4
  br label %19

19:                                               ; preds = %18, %17
  %20 = load i32, ptr %3, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func2(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 1, ptr %6, align 4
  %8 = load i32, ptr %6, align 4
  %9 = icmp sle i32 %8, 1
  br i1 %9, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %2, %28
  %10 = load ptr, ptr %4, align 8
  %11 = load i32, ptr %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, ptr %10, i64 %12
  %14 = load i8, ptr %13, align 1
  %15 = sext i8 %14 to i32
  %16 = load ptr, ptr %5, align 8
  %17 = load i32, ptr %6, align 4
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr %16, i64 %19
  %21 = load i8, ptr %20, align 1
  %22 = sext i8 %21 to i32
  %23 = call i32 @Func1(i32 noundef %15, i32 noundef %22)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %.lr.ph
  store i8 65, ptr %7, align 1
  %26 = load i32, ptr %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %6, align 4
  br label %28

28:                                               ; preds = %25, %.lr.ph
  %29 = load i32, ptr %6, align 4
  %30 = icmp sle i32 %29, 1
  br i1 %30, label %.lr.ph, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %28, %2
  %31 = load i8, ptr %7, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp sge i32 %32, 87
  %34 = load i8, ptr %7, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp sle i32 %35, 90
  %or.cond = select i1 %33, i1 %36, i1 false
  br i1 %or.cond, label %37, label %38

37:                                               ; preds = %._crit_edge
  store i32 7, ptr %6, align 4
  br label %38

38:                                               ; preds = %37, %._crit_edge
  %39 = load i8, ptr %7, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 88
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 1, ptr %3, align 4
  br label %52

43:                                               ; preds = %38
  %44 = load ptr, ptr %4, align 8
  %45 = load ptr, ptr %5, align 8
  %46 = call i32 @strcmp(ptr noundef %44, ptr noundef %45) #5
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, ptr %6, align 4
  %50 = add nsw i32 %49, 7
  store i32 %50, ptr %6, align 4
  store i32 1, ptr %3, align 4
  br label %52

51:                                               ; preds = %43
  store i32 0, ptr %3, align 4
  br label %52

52:                                               ; preds = %51, %48, %42
  %53 = load i32, ptr %3, align 4
  ret i32 %53
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func3(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  %5 = load i32, ptr %3, align 4
  store i32 %5, ptr %4, align 4
  %6 = load i32, ptr %4, align 4
  %7 = icmp eq i32 %6, 10001
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, ptr %2, align 4
  br label %10

9:                                                ; preds = %1
  store i32 0, ptr %2, align 4
  br label %10

10:                                               ; preds = %9, %8
  %11 = load i32, ptr %2, align 4
  ret i32 %11
}

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(0) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Dhrystone/dry.c", directory: "E:/Phase Ordering/v3")
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
