; ModuleID = 'results\paper_full\McGill_exptree\McGill_exptree.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/McGill/exptree.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [29 x i8] c"Out of memory for work list\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Out of memory for combination list\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" d%d \00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%d=%d\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@stopSearch = internal global i32 0, align 4
@nbNodes = internal global i32 0, align 4
@dmax = internal global i32 0, align 4
@workList = internal global ptr null, align 8
@listLength = internal global i32 0, align 4
@goal = internal global i32 0, align 4
@best = internal global i32 0, align 4
@bestDepth = internal global i32 0, align 4
@solution = internal global ptr null, align 8
@combList = internal global ptr null, align 8
@str = private unnamed_addr constant [2 x i8] c".\00", align 1
@str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @newWorkList(i32 noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = sext i32 %0 to i64
  %4 = call ptr @calloc(i64 noundef %3, i64 noundef 4) #7
  store ptr %4, ptr %2, align 8
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %6, label %5

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %8 = call i64 @fwrite(ptr nonnull @.str, i64 28, i64 1, ptr %7)
  call void @exit(i32 noundef 1) #9
  unreachable
}

; Function Attrs: allocsize(0,1)
declare dso_local ptr @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare dllimport ptr @__acrt_iob_func(i32 noundef) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @newCombList(i32 noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = sext i32 %0 to i64
  %4 = call ptr @calloc(i64 noundef %3, i64 noundef 12) #7
  store ptr %4, ptr %2, align 8
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %6, label %5

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %8 = call i64 @fwrite(ptr nonnull @.str.1, i64 35, i64 1, ptr %7)
  call void @exit(i32 noundef 1) #9
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initWorkList(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  br label %8

8:                                                ; preds = %11, %3
  %9 = phi i32 [ 0, %3 ], [ %16, %11 ]
  store i32 %9, ptr %7, align 4
  %10 = icmp slt i32 %9, %2
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds [4 x i8], ptr %1, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds [4 x i8], ptr %0, i64 %12
  store i32 %14, ptr %15, align 4
  %16 = add nsw i32 %9, 1
  br label %8, !llvm.loop !7

17:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initCombList(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  br label %6

6:                                                ; preds = %9, %2
  %7 = phi i32 [ 0, %2 ], [ %13, %9 ]
  store i32 %7, ptr %5, align 4
  %8 = icmp slt i32 %7, %1
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds [12 x i8], ptr %0, i64 %10
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 0, ptr %12, align 4
  %13 = add nsw i32 %7, 1
  br label %6, !llvm.loop !9

14:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @saveSolution(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  br label %8

8:                                                ; preds = %11, %3
  %9 = phi i32 [ 0, %3 ], [ %22, %11 ]
  store i32 %9, ptr %7, align 4
  %10 = icmp slt i32 %9, %2
  br i1 %10, label %11, label %23

11:                                               ; preds = %8
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds [12 x i8], ptr %1, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds [12 x i8], ptr %0, i64 %12
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds nuw i8, ptr %13, i64 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 4
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %20, ptr %21, align 4
  %22 = add nsw i32 %9, 1
  br label %8, !llvm.loop !10

23:                                               ; preds = %8
  %24 = sext i32 %2 to i64
  %25 = getelementptr inbounds [12 x i8], ptr %0, i64 %24
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i32 0, ptr %26, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @calculate(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %26 [
    i32 1, label %6
    i32 2, label %11
    i32 3, label %16
    i32 4, label %21
  ]

6:                                                ; preds = %1
  %7 = load i32, ptr %0, align 4
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %9 = load i32, ptr %8, align 4
  %10 = add nsw i32 %7, %9
  store i32 %10, ptr %2, align 4
  br label %27

11:                                               ; preds = %1
  %12 = load i32, ptr %0, align 4
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %14 = load i32, ptr %13, align 4
  %15 = sub nsw i32 %12, %14
  store i32 %15, ptr %2, align 4
  br label %27

16:                                               ; preds = %1
  %17 = load i32, ptr %0, align 4
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %19 = load i32, ptr %18, align 4
  %20 = mul nsw i32 %17, %19
  store i32 %20, ptr %2, align 4
  br label %27

21:                                               ; preds = %1
  %22 = load i32, ptr %0, align 4
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %24 = load i32, ptr %23, align 4
  %25 = sdiv i32 %22, %24
  store i32 %25, ptr %2, align 4
  br label %27

26:                                               ; preds = %1
  store i32 0, ptr %2, align 4
  br label %27

27:                                               ; preds = %26, %21, %16, %11, %6
  %28 = phi i32 [ 0, %26 ], [ %25, %21 ], [ %20, %16 ], [ %15, %11 ], [ %10, %6 ]
  ret i32 %28
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printSolution(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  br label %6

6:                                                ; preds = %33, %2
  %7 = phi i32 [ 0, %2 ], [ %34, %33 ]
  store i32 %7, ptr %5, align 4
  %8 = icmp slt i32 %7, %1
  br i1 %8, label %9, label %35

9:                                                ; preds = %6
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds [12 x i8], ptr %0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %12) #8
  %14 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %21 [
    i32 0, label %16
    i32 1, label %17
    i32 2, label %18
    i32 3, label %19
    i32 4, label %20
  ]

16:                                               ; preds = %9
  %putchar5 = call i32 @putchar(i32 32)
  br label %23

17:                                               ; preds = %9
  %putchar4 = call i32 @putchar(i32 43)
  br label %23

18:                                               ; preds = %9
  %putchar3 = call i32 @putchar(i32 45)
  br label %23

19:                                               ; preds = %9
  %putchar2 = call i32 @putchar(i32 42)
  br label %23

20:                                               ; preds = %9
  %putchar1 = call i32 @putchar(i32 58)
  br label %23

21:                                               ; preds = %9
  %22 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %15) #8
  br label %23

23:                                               ; preds = %21, %20, %19, %18, %17, %16
  %24 = getelementptr inbounds nuw i8, ptr %11, i64 4
  %25 = load i32, ptr %24, align 4
  %26 = call i32 @calculate(ptr noundef %11)
  %27 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %25, i32 noundef %26) #8
  %28 = add nsw i32 %1, -1
  %29 = icmp slt i32 %7, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10) #8
  br label %33

32:                                               ; preds = %23
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %33

33:                                               ; preds = %32, %30
  %34 = add nsw i32 %7, 1
  br label %6, !llvm.loop !11

35:                                               ; preds = %6
  %putchar = call i32 @putchar(i32 10)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @printList(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  br label %8

8:                                                ; preds = %20, %3
  %9 = phi i32 [ 0, %3 ], [ %21, %20 ]
  store i32 %9, ptr %7, align 4
  %10 = icmp slt i32 %9, %1
  br i1 %10, label %11, label %22

11:                                               ; preds = %8
  %12 = shl nuw i32 1, %9
  %13 = and i32 %12, %2
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %15, label %14

14:                                               ; preds = %11
  br label %20

15:                                               ; preds = %11
  %16 = sext i32 %9 to i64
  %17 = getelementptr inbounds [4 x i8], ptr %0, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %18) #8
  br label %20

20:                                               ; preds = %15, %14
  %21 = add nsw i32 %9, 1
  br label %8, !llvm.loop !12

22:                                               ; preds = %8
  %putchar = call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @recSearch(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %11 = load i32, ptr @stopSearch, align 4
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %13, label %12

12:                                               ; preds = %2
  br label %170

13:                                               ; preds = %2
  %14 = load i32, ptr @nbNodes, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr @nbNodes, align 4
  %16 = load i32, ptr @dmax, align 4
  %17 = icmp eq i32 %0, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %13
  %19 = load ptr, ptr @workList, align 8
  %20 = load i32, ptr @listLength, align 4
  %21 = add nsw i32 %20, %0
  %22 = sext i32 %21 to i64
  %23 = getelementptr [4 x i8], ptr %19, i64 %22
  %24 = getelementptr i8, ptr %23, i64 -4
  %25 = load i32, ptr %24, align 4
  %26 = load i32, ptr @goal, align 4
  %27 = sub nsw i32 %25, %26
  %28 = call i32 @llvm.abs.i32(i32 %27, i1 true)
  %29 = load i32, ptr @best, align 4
  %30 = sub nsw i32 %29, %26
  %31 = call i32 @llvm.abs.i32(i32 %30, i1 true)
  %32 = icmp samesign ult i32 %28, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %18
  store i32 %25, ptr @best, align 4
  store i32 %0, ptr @bestDepth, align 4
  %34 = load ptr, ptr @solution, align 8
  %35 = load ptr, ptr @combList, align 8
  call void @saveSolution(ptr noundef %34, ptr noundef %35, i32 noundef %0)
  %36 = load i32, ptr @best, align 4
  %37 = load i32, ptr @goal, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load ptr, ptr @combList, align 8
  call void @printSolution(ptr noundef %40, i32 noundef %0)
  store i32 1, ptr @stopSearch, align 4
  br label %41

41:                                               ; preds = %39, %33
  br label %42

42:                                               ; preds = %41, %18
  br label %170

43:                                               ; preds = %13
  br label %44

44:                                               ; preds = %167, %43
  %45 = phi i32 [ %1, %43 ], [ %56, %167 ]
  %46 = phi i32 [ %1, %43 ], [ %57, %167 ]
  %47 = phi i32 [ %0, %43 ], [ %59, %167 ]
  %48 = phi i32 [ 1, %43 ], [ %168, %167 ]
  store i32 %48, ptr %5, align 4
  %49 = icmp slt i32 %48, 5
  br i1 %49, label %50, label %169

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %156, %50
  %52 = phi i32 [ %48, %50 ], [ %157, %156 ]
  %53 = phi i32 [ %48, %50 ], [ %158, %156 ]
  %54 = phi i32 [ %48, %50 ], [ %159, %156 ]
  %55 = phi i32 [ %48, %50 ], [ %160, %156 ]
  %56 = phi i32 [ %45, %50 ], [ %161, %156 ]
  %57 = phi i32 [ %46, %50 ], [ %163, %156 ]
  %58 = phi i32 [ %48, %50 ], [ %164, %156 ]
  %59 = phi i32 [ %47, %50 ], [ %165, %156 ]
  %60 = phi i32 [ 0, %50 ], [ %166, %156 ]
  store i32 %60, ptr %7, align 4
  %61 = load i32, ptr @listLength, align 4
  %62 = add nsw i32 %61, %59
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %167

64:                                               ; preds = %51
  %65 = shl nuw i32 1, %60
  %66 = and i32 %65, %57
  %.not2 = icmp eq i32 %66, 0
  br i1 %.not2, label %68, label %67

67:                                               ; preds = %64
  br label %156

68:                                               ; preds = %64
  br label %69

69:                                               ; preds = %144, %68
  %70 = phi i32 [ %52, %68 ], [ %145, %144 ]
  %71 = phi i32 [ %53, %68 ], [ %146, %144 ]
  %72 = phi i32 [ %54, %68 ], [ %147, %144 ]
  %73 = phi i32 [ %55, %68 ], [ %148, %144 ]
  %74 = phi i32 [ %60, %68 ], [ %149, %144 ]
  %75 = phi i32 [ %56, %68 ], [ %150, %144 ]
  %76 = phi i32 [ %60, %68 ], [ %151, %144 ]
  %77 = phi i32 [ %57, %68 ], [ %150, %144 ]
  %78 = phi i32 [ %58, %68 ], [ %152, %144 ]
  %79 = phi i32 [ %59, %68 ], [ %153, %144 ]
  %80 = phi i32 [ 0, %68 ], [ %154, %144 ]
  store i32 %80, ptr %8, align 4
  %81 = icmp slt i32 %80, %76
  br i1 %81, label %82, label %155

82:                                               ; preds = %69
  %83 = shl nuw i32 1, %80
  %84 = and i32 %83, %75
  %.not4 = icmp eq i32 %84, 0
  br i1 %.not4, label %86, label %85

85:                                               ; preds = %82
  br label %144

86:                                               ; preds = %82
  %87 = load ptr, ptr @workList, align 8
  %88 = sext i32 %74 to i64
  %89 = getelementptr inbounds [4 x i8], ptr %87, i64 %88
  %90 = load i32, ptr %89, align 4
  store i32 %90, ptr %9, align 4
  %91 = sext i32 %80 to i64
  %92 = getelementptr inbounds [4 x i8], ptr %87, i64 %91
  %93 = load i32, ptr %92, align 4
  store i32 %93, ptr %10, align 4
  %94 = icmp eq i32 %73, 3
  br i1 %94, label %97, label %95

95:                                               ; preds = %86
  %96 = icmp eq i32 %72, 4
  br i1 %96, label %97, label %103

97:                                               ; preds = %95, %86
  %98 = phi i32 [ 4, %95 ], [ 3, %86 ]
  %99 = icmp eq i32 %90, 1
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  %101 = icmp eq i32 %93, 1
  br i1 %101, label %102, label %103

102:                                              ; preds = %100, %97
  br label %144

103:                                              ; preds = %100, %95
  %104 = phi i32 [ %98, %100 ], [ %72, %95 ]
  %105 = icmp eq i32 %90, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %103
  %107 = icmp eq i32 %93, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %106, %103
  br label %144

109:                                              ; preds = %106
  %110 = icmp eq i32 %71, 4
  br i1 %110, label %111, label %114

111:                                              ; preds = %109
  %112 = srem i32 %90, %93
  %.not5 = icmp eq i32 %112, 0
  br i1 %.not5, label %114, label %113

113:                                              ; preds = %111
  br label %144

114:                                              ; preds = %111, %109
  %115 = icmp eq i32 %70, 4
  br i1 %115, label %118, label %116

116:                                              ; preds = %114
  %117 = icmp eq i32 %70, 2
  br i1 %117, label %118, label %121

118:                                              ; preds = %116, %114
  %119 = icmp slt i32 %90, %93
  br i1 %119, label %120, label %121

120:                                              ; preds = %118
  store i32 %93, ptr %9, align 4
  store i32 %90, ptr %10, align 4
  br label %121

121:                                              ; preds = %120, %118, %116
  %122 = phi i32 [ %90, %120 ], [ %93, %118 ], [ %93, %116 ]
  %123 = phi i32 [ %93, %120 ], [ %90, %118 ], [ %90, %116 ]
  %124 = or i32 %1, %65
  %125 = or i32 %124, %83
  store i32 %125, ptr %6, align 4
  %126 = load ptr, ptr @combList, align 8
  %127 = sext i32 %79 to i64
  %128 = getelementptr inbounds [12 x i8], ptr %126, i64 %127
  store i32 %123, ptr %128, align 4
  %129 = load ptr, ptr @combList, align 8
  %130 = getelementptr inbounds [12 x i8], ptr %129, i64 %127
  %131 = getelementptr inbounds nuw i8, ptr %130, i64 4
  store i32 %122, ptr %131, align 4
  %132 = load ptr, ptr @combList, align 8
  %133 = getelementptr inbounds [12 x i8], ptr %132, i64 %127
  %134 = getelementptr inbounds nuw i8, ptr %133, i64 8
  store i32 %48, ptr %134, align 4
  %135 = load ptr, ptr @combList, align 8
  %136 = getelementptr inbounds [12 x i8], ptr %135, i64 %127
  %137 = call i32 @calculate(ptr noundef %136)
  %138 = load ptr, ptr @workList, align 8
  %139 = load i32, ptr @listLength, align 4
  %140 = add nsw i32 %139, %0
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [4 x i8], ptr %138, i64 %141
  store i32 %137, ptr %142, align 4
  %143 = add nsw i32 %0, 1
  call void @recSearch(i32 noundef %143, i32 noundef %125)
  br label %144

144:                                              ; preds = %121, %113, %108, %102, %85
  %145 = phi i32 [ %48, %121 ], [ %70, %113 ], [ %70, %108 ], [ %70, %102 ], [ %70, %85 ]
  %146 = phi i32 [ %48, %121 ], [ 4, %113 ], [ %71, %108 ], [ %71, %102 ], [ %71, %85 ]
  %147 = phi i32 [ %48, %121 ], [ 4, %113 ], [ %72, %108 ], [ %72, %102 ], [ %72, %85 ]
  %148 = phi i32 [ %48, %121 ], [ 4, %113 ], [ %104, %108 ], [ %98, %102 ], [ %73, %85 ]
  %149 = phi i32 [ %60, %121 ], [ %74, %113 ], [ %74, %108 ], [ %74, %102 ], [ %74, %85 ]
  %150 = phi i32 [ %1, %121 ], [ %75, %113 ], [ %75, %108 ], [ %75, %102 ], [ %75, %85 ]
  %151 = phi i32 [ %60, %121 ], [ %74, %113 ], [ %74, %108 ], [ %74, %102 ], [ %76, %85 ]
  %152 = phi i32 [ %48, %121 ], [ 4, %113 ], [ %104, %108 ], [ %98, %102 ], [ %78, %85 ]
  %153 = phi i32 [ %0, %121 ], [ %79, %113 ], [ %79, %108 ], [ %79, %102 ], [ %79, %85 ]
  %154 = add nsw i32 %80, 1
  br label %69, !llvm.loop !13

155:                                              ; preds = %69
  br label %156

156:                                              ; preds = %155, %67
  %157 = phi i32 [ %70, %155 ], [ %52, %67 ]
  %158 = phi i32 [ %71, %155 ], [ %53, %67 ]
  %159 = phi i32 [ %72, %155 ], [ %54, %67 ]
  %160 = phi i32 [ %73, %155 ], [ %55, %67 ]
  %161 = phi i32 [ %75, %155 ], [ %56, %67 ]
  %162 = phi i32 [ %76, %155 ], [ %60, %67 ]
  %163 = phi i32 [ %77, %155 ], [ %57, %67 ]
  %164 = phi i32 [ %78, %155 ], [ %58, %67 ]
  %165 = phi i32 [ %79, %155 ], [ %59, %67 ]
  %166 = add nsw i32 %162, 1
  br label %51, !llvm.loop !14

167:                                              ; preds = %51
  %168 = add nsw i32 %58, 1
  br label %44, !llvm.loop !15

169:                                              ; preds = %44
  br label %170

170:                                              ; preds = %169, %42, %12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  %1 = alloca i32, align 4
  %.pre = load i32, ptr @listLength, align 4
  br label %2

2:                                                ; preds = %18, %0
  %3 = phi i32 [ 0, %0 ], [ %19, %18 ]
  store i32 %3, ptr %1, align 4
  %4 = icmp slt i32 %3, %.pre
  br i1 %4, label %5, label %20

5:                                                ; preds = %2
  %6 = load ptr, ptr @workList, align 8
  %7 = sext i32 %3 to i64
  %8 = getelementptr inbounds [4 x i8], ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr @goal, align 4
  %11 = sub nsw i32 %9, %10
  %12 = call i32 @llvm.abs.i32(i32 %11, i1 true)
  %13 = load i32, ptr @best, align 4
  %14 = sub nsw i32 %13, %10
  %15 = call i32 @llvm.abs.i32(i32 %14, i1 true)
  %16 = icmp samesign ult i32 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i32 %9, ptr @best, align 4
  br label %18

18:                                               ; preds = %17, %5
  %19 = add nsw i32 %3, 1
  br label %2, !llvm.loop !16

20:                                               ; preds = %2
  %21 = load i32, ptr @best, align 4
  %22 = load i32, ptr @goal, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %41

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %32, %25
  %27 = phi i32 [ %.pre, %25 ], [ %.pre2, %32 ]
  %storemerge1 = phi i32 [ 1, %25 ], [ %34, %32 ]
  store i32 %storemerge1, ptr @dmax, align 4
  %28 = icmp slt i32 %storemerge1, %27
  br i1 %28, label %29, label %._crit_edge

._crit_edge:                                      ; preds = %26
  %.pre3 = load i32, ptr @stopSearch, align 4
  br label %35

29:                                               ; preds = %26
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %30 = load i32, ptr @stopSearch, align 4
  %.not = icmp eq i32 %30, 0
  br i1 %.not, label %32, label %31

31:                                               ; preds = %29
  br label %35

32:                                               ; preds = %29
  %33 = load i32, ptr @dmax, align 4
  %34 = add nsw i32 %33, 1
  %.pre2 = load i32, ptr @listLength, align 4
  br label %26, !llvm.loop !17

35:                                               ; preds = %._crit_edge, %31
  %36 = phi i32 [ %.pre3, %._crit_edge ], [ %30, %31 ]
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load ptr, ptr @solution, align 8
  %40 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %39, i32 noundef %40)
  br label %41

41:                                               ; preds = %38, %35, %24
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getInput() #0 {
  %1 = alloca [16 x i32], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, ptr %2, align 4
  store i32 13, ptr %1, align 16
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 32, ptr %4, align 4
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 14, ptr %5, align 8
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 1412, ptr %6, align 4
  br label %7

7:                                                ; preds = %14, %0
  %8 = phi i32 [ %21, %14 ], [ 0, %0 ]
  %9 = call i32 @getchar() #8
  store i32 %9, ptr %3, align 4
  %.not = icmp eq i32 %9, 10
  br i1 %.not, label %12, label %10

10:                                               ; preds = %7
  %11 = icmp ne i32 %9, -1
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi i1 [ false, %7 ], [ %11, %10 ]
  br i1 %13, label %14, label %22

14:                                               ; preds = %12
  %15 = call ptr @__acrt_iob_func(i32 noundef 0) #8
  %16 = call i32 @ungetc(i32 noundef %9, ptr noundef %15) #8
  %17 = call ptr @__acrt_iob_func(i32 noundef 0) #8
  %18 = sext i32 %8 to i64
  %19 = getelementptr inbounds [4 x i8], ptr %1, i64 %18
  %20 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %17, ptr noundef nonnull @.str.2, ptr noundef nonnull %19) #8
  %21 = add nsw i32 %8, 1
  store i32 %21, ptr %2, align 4
  br label %7, !llvm.loop !18

22:                                               ; preds = %12
  %23 = icmp eq i32 %8, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  store i32 4, ptr %2, align 4
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ 4, %24 ], [ %8, %22 ]
  %27 = add nsw i32 %26, -1
  store i32 %27, ptr @listLength, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [4 x i8], ptr %1, i64 %28
  %30 = load i32, ptr %29, align 4
  store i32 %30, ptr @goal, align 4
  %31 = shl nsw i32 %27, 1
  %32 = call ptr @newWorkList(i32 noundef %31)
  store ptr %32, ptr @workList, align 8
  %33 = load i32, ptr @listLength, align 4
  %34 = call ptr @newCombList(i32 noundef %33)
  store ptr %34, ptr @combList, align 8
  %35 = load i32, ptr @listLength, align 4
  %36 = call ptr @newCombList(i32 noundef %35)
  store ptr %36, ptr @solution, align 8
  %37 = load ptr, ptr @workList, align 8
  %38 = load i32, ptr @listLength, align 4
  call void @initWorkList(ptr noundef %37, ptr noundef nonnull %1, i32 noundef %38)
  %39 = load ptr, ptr @combList, align 8
  %40 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %39, i32 noundef %40)
  %41 = load ptr, ptr @solution, align 8
  %42 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %41, i32 noundef %42)
  %43 = load i32, ptr @listLength, align 4
  ret i32 %43
}

declare dso_local i32 @getchar() #3

declare dso_local i32 @ungetc(i32 noundef, ptr noundef) #3

declare dso_local i32 @fscanf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @search() #0 {
  store i32 0, ptr @stopSearch, align 4
  store i32 0, ptr @nbNodes, align 4
  call void @doSearch()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = call i32 @getInput()
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  call void @search()
  br label %5

5:                                                ; preds = %4, %2
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) #6

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #6

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind allocsize(0,1) }
attributes #8 = { nounwind }
attributes #9 = { cold noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/McGill/exptree.c", directory: "E:/Phase Ordering/v3")
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
