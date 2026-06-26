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
  br i1 %.not, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8
  ret ptr %6

7:                                                ; preds = %1
  %8 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %9 = call i64 @fwrite(ptr nonnull @.str, i64 28, i64 1, ptr %8)
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
  br i1 %.not, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8
  ret ptr %6

7:                                                ; preds = %1
  %8 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %9 = call i64 @fwrite(ptr nonnull @.str.1, i64 35, i64 1, ptr %8)
  call void @exit(i32 noundef 1) #9
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initWorkList(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %13, %3
  %5 = phi i32 [ %14, %13 ], [ 0, %3 ]
  %6 = icmp slt i32 %5, %2
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = zext nneg i32 %5 to i64
  %12 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %11
  store i32 %10, ptr %12, align 4
  br label %13

13:                                               ; preds = %7
  %14 = add nuw nsw i32 %5, 1
  br label %4, !llvm.loop !7

15:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initCombList(ptr noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %10, %2
  %4 = phi i32 [ %11, %10 ], [ 0, %2 ]
  %5 = icmp slt i32 %4, %1
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 0, ptr %9, align 4
  br label %10

10:                                               ; preds = %6
  %11 = add nuw nsw i32 %4, 1
  br label %3, !llvm.loop !9

12:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @saveSolution(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %2, ptr %5, align 4
  br label %6

6:                                                ; preds = %29, %3
  %7 = phi i32 [ %30, %29 ], [ 0, %3 ]
  %8 = icmp slt i32 %7, %2
  br i1 %8, label %9, label %31

9:                                                ; preds = %6
  %10 = zext nneg i32 %7 to i64
  %11 = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = zext nneg i32 %7 to i64
  %14 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %13
  store i32 %12, ptr %14, align 4
  %15 = zext nneg i32 %7 to i64
  %16 = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %15
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 4
  %18 = load i32, ptr %17, align 4
  %19 = zext nneg i32 %7 to i64
  %20 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %19
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 4
  store i32 %18, ptr %21, align 4
  %22 = zext nneg i32 %7 to i64
  %23 = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %22
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 8
  %25 = load i32, ptr %24, align 4
  %26 = zext nneg i32 %7 to i64
  %27 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %26
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i32 %25, ptr %28, align 4
  br label %29

29:                                               ; preds = %9
  %30 = add nuw nsw i32 %7, 1
  br label %6, !llvm.loop !10

31:                                               ; preds = %6
  %32 = load ptr, ptr %4, align 8
  %33 = load i32, ptr %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [12 x i8], ptr %32, i64 %34
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i32 0, ptr %36, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @calculate(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %30 [
    i32 1, label %6
    i32 2, label %12
    i32 3, label %18
    i32 4, label %24
  ]

6:                                                ; preds = %1
  %7 = load ptr, ptr %3, align 8
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %10 = load i32, ptr %9, align 4
  %11 = add nsw i32 %8, %10
  store i32 %11, ptr %2, align 4
  br label %31

12:                                               ; preds = %1
  %13 = load ptr, ptr %3, align 8
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds nuw i8, ptr %13, i64 4
  %16 = load i32, ptr %15, align 4
  %17 = sub nsw i32 %14, %16
  store i32 %17, ptr %2, align 4
  br label %31

18:                                               ; preds = %1
  %19 = load ptr, ptr %3, align 8
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %22 = load i32, ptr %21, align 4
  %23 = mul nsw i32 %20, %22
  store i32 %23, ptr %2, align 4
  br label %31

24:                                               ; preds = %1
  %25 = load ptr, ptr %3, align 8
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds nuw i8, ptr %25, i64 4
  %28 = load i32, ptr %27, align 4
  %29 = sdiv i32 %26, %28
  store i32 %29, ptr %2, align 4
  br label %31

30:                                               ; preds = %1
  store i32 0, ptr %2, align 4
  br label %31

31:                                               ; preds = %30, %24, %18, %12, %6
  %32 = load i32, ptr %2, align 4
  ret i32 %32
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printSolution(ptr noundef %0, i32 noundef %1) #0 {
  %3 = add nsw i32 %1, -1
  br label %4

4:                                                ; preds = %41, %2
  %5 = phi i32 [ %42, %41 ], [ 0, %2 ]
  %6 = icmp slt i32 %5, %1
  br i1 %6, label %7, label %43

7:                                                ; preds = %4
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %10) #8
  %12 = zext nneg i32 %5 to i64
  %13 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %12
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %21 [
    i32 0, label %16
    i32 1, label %17
    i32 2, label %18
    i32 3, label %19
    i32 4, label %20
  ]

16:                                               ; preds = %7
  %putchar5 = call i32 @putchar(i32 32)
  br label %27

17:                                               ; preds = %7
  %putchar4 = call i32 @putchar(i32 43)
  br label %27

18:                                               ; preds = %7
  %putchar3 = call i32 @putchar(i32 45)
  br label %27

19:                                               ; preds = %7
  %putchar2 = call i32 @putchar(i32 42)
  br label %27

20:                                               ; preds = %7
  %putchar1 = call i32 @putchar(i32 58)
  br label %27

21:                                               ; preds = %7
  %22 = zext nneg i32 %5 to i64
  %23 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %22
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 8
  %25 = load i32, ptr %24, align 4
  %26 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %25) #8
  br label %27

27:                                               ; preds = %21, %20, %19, %18, %17, %16
  %28 = zext nneg i32 %5 to i64
  %29 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %28
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 4
  %31 = load i32, ptr %30, align 4
  %32 = zext nneg i32 %5 to i64
  %33 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %32
  %34 = call i32 @calculate(ptr noundef %33)
  %35 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %31, i32 noundef %34) #8
  %36 = icmp slt i32 %5, %3
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10) #8
  br label %40

39:                                               ; preds = %27
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %40

40:                                               ; preds = %39, %37
  br label %41

41:                                               ; preds = %40
  %42 = add nuw nsw i32 %5, 1
  br label %4, !llvm.loop !11

43:                                               ; preds = %4
  %putchar = call i32 @putchar(i32 10)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @printList(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %16, %3
  %5 = phi i32 [ %17, %16 ], [ 0, %3 ]
  %6 = icmp slt i32 %5, %1
  br i1 %6, label %7, label %18

7:                                                ; preds = %4
  %8 = shl nuw i32 1, %5
  %9 = and i32 %8, %2
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %11, label %10

10:                                               ; preds = %7
  br label %16

11:                                               ; preds = %7
  %12 = zext nneg i32 %5 to i64
  %13 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %14) #8
  br label %16

16:                                               ; preds = %11, %10
  %17 = add nuw nsw i32 %5, 1
  br label %4, !llvm.loop !12

18:                                               ; preds = %4
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
  %11 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %12 = load i32, ptr @stopSearch, align 4
  %.not = icmp eq i32 %12, 0
  br i1 %.not, label %14, label %13

13:                                               ; preds = %2
  br label %159

14:                                               ; preds = %2
  %15 = load i32, ptr @nbNodes, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr @nbNodes, align 4
  %17 = load i32, ptr %3, align 4
  %18 = load i32, ptr @dmax, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %14
  %21 = load ptr, ptr @workList, align 8
  %22 = load i32, ptr @listLength, align 4
  %23 = load i32, ptr %3, align 4
  %24 = add nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr [4 x i8], ptr %21, i64 %25
  %27 = getelementptr i8, ptr %26, i64 -4
  %28 = load i32, ptr %27, align 4
  %29 = load i32, ptr @goal, align 4
  %30 = sub nsw i32 %28, %29
  %31 = call i32 @llvm.abs.i32(i32 %30, i1 true)
  %32 = load i32, ptr @best, align 4
  %33 = sub nsw i32 %32, %29
  %34 = call i32 @llvm.abs.i32(i32 %33, i1 true)
  %35 = icmp samesign ult i32 %31, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %20
  %37 = load ptr, ptr @workList, align 8
  %38 = load i32, ptr @listLength, align 4
  %39 = load i32, ptr %3, align 4
  %40 = add nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr [4 x i8], ptr %37, i64 %41
  %43 = getelementptr i8, ptr %42, i64 -4
  %44 = load i32, ptr %43, align 4
  store i32 %44, ptr @best, align 4
  %45 = load i32, ptr %3, align 4
  store i32 %45, ptr @bestDepth, align 4
  %46 = load ptr, ptr @solution, align 8
  %47 = load ptr, ptr @combList, align 8
  call void @saveSolution(ptr noundef %46, ptr noundef %47, i32 noundef %45)
  %48 = load i32, ptr @best, align 4
  %49 = load i32, ptr @goal, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %36
  %52 = load ptr, ptr @combList, align 8
  %53 = load i32, ptr %3, align 4
  call void @printSolution(ptr noundef %52, i32 noundef %53)
  store i32 1, ptr @stopSearch, align 4
  br label %54

54:                                               ; preds = %51, %36
  br label %55

55:                                               ; preds = %54, %20
  br label %159

56:                                               ; preds = %14
  store i32 1, ptr %5, align 4
  %57 = load i32, ptr %3, align 4
  %58 = load i32, ptr %4, align 4
  %59 = sext i32 %57 to i64
  %60 = sext i32 %57 to i64
  %61 = sext i32 %57 to i64
  %62 = sext i32 %57 to i64
  %63 = add nsw i32 %57, 1
  %.promoted25 = load i32, ptr %5, align 4
  %.promoted27 = load i32, ptr %7, align 4
  %.promoted29 = load i32, ptr %8, align 4
  %.promoted31 = load i32, ptr %9, align 4
  %.promoted = load i32, ptr %10, align 4
  %.promoted34 = load i32, ptr %11, align 4
  %.promoted36 = load i32, ptr %6, align 4
  br label %64

64:                                               ; preds = %156, %56
  %.lcssa824.lcssa37 = phi i32 [ %.lcssa824, %156 ], [ %.promoted36, %56 ]
  %.lcssa621.lcssa35 = phi i32 [ %.lcssa621, %156 ], [ %.promoted34, %56 ]
  %.lcssa418.lcssa33 = phi i32 [ %.lcssa418, %156 ], [ %.promoted, %56 ]
  %.lcssa215.lcssa32 = phi i32 [ %.lcssa215, %156 ], [ %.promoted31, %56 ]
  %.lcssa13.lcssa30 = phi i32 [ %.lcssa13, %156 ], [ %.promoted29, %56 ]
  %.lcssa1028 = phi i32 [ %74, %156 ], [ %.promoted27, %56 ]
  %65 = phi i32 [ %157, %156 ], [ %.promoted25, %56 ]
  %66 = icmp slt i32 %65, 5
  br i1 %66, label %67, label %158

67:                                               ; preds = %64
  %68 = icmp eq i32 %65, 3
  %69 = icmp eq i32 %65, 4
  %70 = icmp eq i32 %65, 4
  %71 = icmp eq i32 %65, 4
  %72 = icmp eq i32 %65, 2
  br label %73

73:                                               ; preds = %153, %67
  %.lcssa824 = phi i32 [ %.lcssa823, %153 ], [ %.lcssa824.lcssa37, %67 ]
  %.lcssa621 = phi i32 [ %.lcssa620, %153 ], [ %.lcssa621.lcssa35, %67 ]
  %.lcssa418 = phi i32 [ %.lcssa417, %153 ], [ %.lcssa418.lcssa33, %67 ]
  %.lcssa215 = phi i32 [ %.lcssa214, %153 ], [ %.lcssa215.lcssa32, %67 ]
  %.lcssa13 = phi i32 [ %.lcssa12, %153 ], [ %.lcssa13.lcssa30, %67 ]
  %74 = phi i32 [ %154, %153 ], [ 0, %67 ]
  %75 = load i32, ptr @listLength, align 4
  %76 = add nsw i32 %75, %57
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %78, label %155

78:                                               ; preds = %73
  %79 = shl nuw i32 1, %74
  %80 = and i32 %79, %58
  %.not38 = icmp eq i32 %80, 0
  br i1 %.not38, label %82, label %81

81:                                               ; preds = %78
  br label %153

82:                                               ; preds = %78
  %83 = zext nneg i32 %74 to i64
  %84 = shl nuw i32 1, %74
  br label %85

85:                                               ; preds = %146, %82
  %86 = phi i32 [ %147, %146 ], [ %.lcssa824, %82 ]
  %87 = phi i32 [ %148, %146 ], [ %.lcssa621, %82 ]
  %88 = phi i32 [ %149, %146 ], [ %.lcssa418, %82 ]
  %89 = phi i32 [ %150, %146 ], [ %.lcssa215, %82 ]
  %90 = phi i32 [ %151, %146 ], [ 0, %82 ]
  %91 = icmp samesign ult i32 %90, %74
  br i1 %91, label %92, label %152

92:                                               ; preds = %85
  %93 = shl nuw i32 1, %90
  %94 = and i32 %93, %58
  %.not39 = icmp eq i32 %94, 0
  br i1 %.not39, label %96, label %95

95:                                               ; preds = %92
  br label %146

96:                                               ; preds = %92
  %97 = load ptr, ptr @workList, align 8
  %98 = getelementptr inbounds nuw [4 x i8], ptr %97, i64 %83
  %99 = load i32, ptr %98, align 4
  %100 = zext nneg i32 %90 to i64
  %101 = getelementptr inbounds nuw [4 x i8], ptr %97, i64 %100
  %102 = load i32, ptr %101, align 4
  br i1 %68, label %104, label %103

103:                                              ; preds = %96
  br i1 %69, label %104, label %109

104:                                              ; preds = %103, %96
  %105 = icmp eq i32 %99, 1
  br i1 %105, label %108, label %106

106:                                              ; preds = %104
  %107 = icmp eq i32 %102, 1
  br i1 %107, label %108, label %109

108:                                              ; preds = %106, %104
  br label %146

109:                                              ; preds = %106, %103
  %110 = icmp eq i32 %99, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %109
  %112 = icmp eq i32 %102, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %111, %109
  br label %146

114:                                              ; preds = %111
  br i1 %70, label %115, label %118

115:                                              ; preds = %114
  %116 = srem i32 %99, %102
  %.not40 = icmp eq i32 %116, 0
  br i1 %.not40, label %118, label %117

117:                                              ; preds = %115
  br label %146

118:                                              ; preds = %115, %114
  br i1 %71, label %120, label %119

119:                                              ; preds = %118
  br i1 %72, label %120, label %123

120:                                              ; preds = %119, %118
  %121 = icmp slt i32 %99, %102
  br i1 %121, label %122, label %123

122:                                              ; preds = %120
  br label %123

123:                                              ; preds = %122, %120, %119
  %124 = phi i32 [ %99, %122 ], [ %87, %120 ], [ %87, %119 ]
  %125 = phi i32 [ %99, %122 ], [ %102, %120 ], [ %102, %119 ]
  %126 = phi i32 [ %102, %122 ], [ %99, %120 ], [ %99, %119 ]
  %127 = shl nuw i32 1, %90
  %128 = or i32 %84, %127
  %129 = or i32 %128, %58
  %130 = load ptr, ptr @combList, align 8
  %131 = getelementptr inbounds [12 x i8], ptr %130, i64 %59
  store i32 %126, ptr %131, align 4
  %132 = load ptr, ptr @combList, align 8
  %133 = getelementptr inbounds [12 x i8], ptr %132, i64 %60
  %134 = getelementptr inbounds nuw i8, ptr %133, i64 4
  store i32 %125, ptr %134, align 4
  %135 = load ptr, ptr @combList, align 8
  %136 = getelementptr inbounds [12 x i8], ptr %135, i64 %61
  %137 = getelementptr inbounds nuw i8, ptr %136, i64 8
  store i32 %65, ptr %137, align 4
  %138 = load ptr, ptr @combList, align 8
  %139 = getelementptr inbounds [12 x i8], ptr %138, i64 %62
  %140 = call i32 @calculate(ptr noundef %139)
  %141 = load ptr, ptr @workList, align 8
  %142 = load i32, ptr @listLength, align 4
  %143 = add nsw i32 %142, %57
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [4 x i8], ptr %141, i64 %144
  store i32 %140, ptr %145, align 4
  call void @recSearch(i32 noundef %63, i32 noundef %129)
  br label %146

146:                                              ; preds = %123, %117, %113, %108, %95
  %147 = phi i32 [ %129, %123 ], [ %86, %117 ], [ %86, %113 ], [ %86, %108 ], [ %86, %95 ]
  %148 = phi i32 [ %124, %123 ], [ %87, %117 ], [ %87, %113 ], [ %87, %108 ], [ %87, %95 ]
  %149 = phi i32 [ %125, %123 ], [ %102, %117 ], [ %102, %113 ], [ %102, %108 ], [ %88, %95 ]
  %150 = phi i32 [ %126, %123 ], [ %99, %117 ], [ %99, %113 ], [ %99, %108 ], [ %89, %95 ]
  %151 = add nuw nsw i32 %90, 1
  br label %85, !llvm.loop !13

152:                                              ; preds = %85
  br label %153

153:                                              ; preds = %152, %81
  %.lcssa823 = phi i32 [ %86, %152 ], [ %.lcssa824, %81 ]
  %.lcssa620 = phi i32 [ %87, %152 ], [ %.lcssa621, %81 ]
  %.lcssa417 = phi i32 [ %88, %152 ], [ %.lcssa418, %81 ]
  %.lcssa214 = phi i32 [ %89, %152 ], [ %.lcssa215, %81 ]
  %.lcssa12 = phi i32 [ %90, %152 ], [ %.lcssa13, %81 ]
  %154 = add nuw nsw i32 %74, 1
  br label %73, !llvm.loop !14

155:                                              ; preds = %73
  br label %156

156:                                              ; preds = %155
  %157 = add nsw i32 %65, 1
  br label %64, !llvm.loop !15

158:                                              ; preds = %64
  store i32 %65, ptr %5, align 4
  store i32 %.lcssa1028, ptr %7, align 4
  store i32 %.lcssa13.lcssa30, ptr %8, align 4
  store i32 %.lcssa215.lcssa32, ptr %9, align 4
  store i32 %.lcssa418.lcssa33, ptr %10, align 4
  store i32 %.lcssa621.lcssa35, ptr %11, align 4
  store i32 %.lcssa824.lcssa37, ptr %6, align 4
  br label %159

159:                                              ; preds = %158, %55, %13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  %1 = load i32, ptr @listLength, align 4
  %2 = load ptr, ptr @workList, align 8
  %3 = load i32, ptr @goal, align 4
  %best.promoted = load i32, ptr @best, align 4
  br label %4

4:                                                ; preds = %23, %0
  %5 = phi i32 [ %22, %23 ], [ %best.promoted, %0 ]
  %6 = phi i32 [ %24, %23 ], [ 0, %0 ]
  %7 = icmp slt i32 %6, %1
  br i1 %7, label %8, label %25

8:                                                ; preds = %4
  %9 = zext nneg i32 %6 to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = sub nsw i32 %11, %3
  %13 = call i32 @llvm.abs.i32(i32 %12, i1 true)
  %14 = sub nsw i32 %5, %3
  %15 = call i32 @llvm.abs.i32(i32 %14, i1 true)
  %16 = icmp samesign ult i32 %13, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %8
  %18 = zext nneg i32 %6 to i64
  %19 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %18
  %20 = load i32, ptr %19, align 4
  store i32 %20, ptr @best, align 4
  br label %21

21:                                               ; preds = %17, %8
  %22 = phi i32 [ %20, %17 ], [ %5, %8 ]
  br label %23

23:                                               ; preds = %21
  %24 = add nuw nsw i32 %6, 1
  br label %4, !llvm.loop !16

25:                                               ; preds = %4
  %26 = load i32, ptr @best, align 4
  %27 = load i32, ptr @goal, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %47

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %38, %30
  %storemerge = phi i32 [ 1, %30 ], [ %40, %38 ]
  store i32 %storemerge, ptr @dmax, align 4
  %32 = load i32, ptr @listLength, align 4
  %33 = icmp slt i32 %storemerge, %32
  br i1 %33, label %34, label %.loopexit

34:                                               ; preds = %31
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %35 = load i32, ptr @stopSearch, align 4
  %.not = icmp eq i32 %35, 0
  br i1 %.not, label %37, label %36

36:                                               ; preds = %34
  br label %41

37:                                               ; preds = %34
  br label %38

38:                                               ; preds = %37
  %39 = load i32, ptr @dmax, align 4
  %40 = add nsw i32 %39, 1
  br label %31, !llvm.loop !17

.loopexit:                                        ; preds = %31
  br label %41

41:                                               ; preds = %.loopexit, %36
  %42 = load i32, ptr @stopSearch, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load ptr, ptr @solution, align 8
  %46 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %45, i32 noundef %46)
  br label %47

47:                                               ; preds = %44, %41, %29
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getInput() #0 {
  %1 = alloca [16 x i32], align 16
  %2 = alloca i32, align 4
  store i32 0, ptr %2, align 4
  store i32 13, ptr %1, align 16
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 32, ptr %3, align 4
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 14, ptr %4, align 8
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 1412, ptr %5, align 4
  %.promoted = load i32, ptr %2, align 4
  br label %6

6:                                                ; preds = %13, %0
  %7 = phi i32 [ %20, %13 ], [ %.promoted, %0 ]
  %8 = call i32 @getchar() #8
  %.not = icmp eq i32 %8, 10
  br i1 %.not, label %11, label %9

9:                                                ; preds = %6
  %10 = icmp ne i32 %8, -1
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i1 [ false, %6 ], [ %10, %9 ]
  br i1 %12, label %13, label %21

13:                                               ; preds = %11
  %14 = call ptr @__acrt_iob_func(i32 noundef 0) #8
  %15 = call i32 @ungetc(i32 noundef %8, ptr noundef %14) #8
  %16 = call ptr @__acrt_iob_func(i32 noundef 0) #8
  %17 = sext i32 %7 to i64
  %18 = getelementptr inbounds [4 x i8], ptr %1, i64 %17
  %19 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %16, ptr noundef nonnull @.str.2, ptr noundef nonnull %18) #8
  %20 = add nsw i32 %7, 1
  br label %6, !llvm.loop !18

21:                                               ; preds = %11
  %22 = icmp eq i32 %7, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  br label %24

24:                                               ; preds = %23, %21
  %storemerge = phi i32 [ 4, %23 ], [ %7, %21 ]
  store i32 %storemerge, ptr %2, align 4
  %25 = add nsw i32 %storemerge, -1
  store i32 %25, ptr @listLength, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i8], ptr %1, i64 %26
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr @goal, align 4
  %29 = shl nsw i32 %25, 1
  %30 = call ptr @newWorkList(i32 noundef %29)
  store ptr %30, ptr @workList, align 8
  %31 = load i32, ptr @listLength, align 4
  %32 = call ptr @newCombList(i32 noundef %31)
  store ptr %32, ptr @combList, align 8
  %33 = load i32, ptr @listLength, align 4
  %34 = call ptr @newCombList(i32 noundef %33)
  store ptr %34, ptr @solution, align 8
  %35 = load ptr, ptr @workList, align 8
  %36 = load i32, ptr @listLength, align 4
  call void @initWorkList(ptr noundef %35, ptr noundef nonnull %1, i32 noundef %36)
  %37 = load ptr, ptr @combList, align 8
  %38 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %37, i32 noundef %38)
  %39 = load ptr, ptr @solution, align 8
  %40 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %39, i32 noundef %40)
  %41 = load i32, ptr @listLength, align 4
  ret i32 %41
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
