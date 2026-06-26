; ModuleID = 'results\paper_full\McGill_exptree\McGill_exptree.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/McGill/exptree.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.Comb = type { i32, i32, i32 }

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

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @newWorkList(i32 noundef %0) #0 {
  %2 = sext i32 %0 to i64
  %3 = call ptr @calloc(i64 noundef %2, i64 noundef 4) #6
  %4 = icmp ne ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  ret ptr %3

6:                                                ; preds = %1
  %7 = call ptr @__acrt_iob_func(i32 noundef 2)
  %8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str) #7
  call void @exit(i32 noundef 1) #8
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
  %2 = sext i32 %0 to i64
  %3 = call ptr @calloc(i64 noundef %2, i64 noundef 12) #6
  %4 = icmp ne ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  ret ptr %3

6:                                                ; preds = %1
  %7 = call ptr @__acrt_iob_func(i32 noundef 2)
  %8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initWorkList(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 0, %2
  br i1 %4, label %.lr.ph, label %14

.lr.ph:                                           ; preds = %3
  br label %5

5:                                                ; preds = %.lr.ph, %11
  %.06 = phi i32 [ 0, %.lr.ph ], [ %12, %11 ]
  %6 = sext i32 %.06 to i64
  %7 = getelementptr inbounds i32, ptr %1, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = sext i32 %.06 to i64
  %10 = getelementptr inbounds i32, ptr %0, i64 %9
  store i32 %8, ptr %10, align 4
  br label %11

11:                                               ; preds = %5
  %12 = add nsw i32 %.06, 1
  %13 = icmp slt i32 %12, %2
  br i1 %13, label %5, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %11
  br label %14

14:                                               ; preds = %._crit_edge, %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initCombList(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp slt i32 0, %1
  br i1 %3, label %.lr.ph, label %11

.lr.ph:                                           ; preds = %2
  br label %4

4:                                                ; preds = %.lr.ph, %8
  %.04 = phi i32 [ 0, %.lr.ph ], [ %9, %8 ]
  %5 = sext i32 %.04 to i64
  %6 = getelementptr inbounds %struct.Comb, ptr %0, i64 %5
  %7 = getelementptr inbounds nuw %struct.Comb, ptr %6, i32 0, i32 2
  store i32 0, ptr %7, align 4
  br label %8

8:                                                ; preds = %4
  %9 = add nsw i32 %.04, 1
  %10 = icmp slt i32 %9, %1
  br i1 %10, label %4, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %8
  br label %11

11:                                               ; preds = %._crit_edge, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @saveSolution(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 0, %2
  br i1 %4, label %.lr.ph, label %30

.lr.ph:                                           ; preds = %3
  br label %5

5:                                                ; preds = %.lr.ph, %27
  %.016 = phi i32 [ 0, %.lr.ph ], [ %28, %27 ]
  %6 = sext i32 %.016 to i64
  %7 = getelementptr inbounds %struct.Comb, ptr %1, i64 %6
  %8 = getelementptr inbounds nuw %struct.Comb, ptr %7, i32 0, i32 0
  %9 = load i32, ptr %8, align 4
  %10 = sext i32 %.016 to i64
  %11 = getelementptr inbounds %struct.Comb, ptr %0, i64 %10
  %12 = getelementptr inbounds nuw %struct.Comb, ptr %11, i32 0, i32 0
  store i32 %9, ptr %12, align 4
  %13 = sext i32 %.016 to i64
  %14 = getelementptr inbounds %struct.Comb, ptr %1, i64 %13
  %15 = getelementptr inbounds nuw %struct.Comb, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = sext i32 %.016 to i64
  %18 = getelementptr inbounds %struct.Comb, ptr %0, i64 %17
  %19 = getelementptr inbounds nuw %struct.Comb, ptr %18, i32 0, i32 1
  store i32 %16, ptr %19, align 4
  %20 = sext i32 %.016 to i64
  %21 = getelementptr inbounds %struct.Comb, ptr %1, i64 %20
  %22 = getelementptr inbounds nuw %struct.Comb, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = sext i32 %.016 to i64
  %25 = getelementptr inbounds %struct.Comb, ptr %0, i64 %24
  %26 = getelementptr inbounds nuw %struct.Comb, ptr %25, i32 0, i32 2
  store i32 %23, ptr %26, align 4
  br label %27

27:                                               ; preds = %5
  %28 = add nsw i32 %.016, 1
  %29 = icmp slt i32 %28, %2
  br i1 %29, label %5, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %27
  br label %30

30:                                               ; preds = %._crit_edge, %3
  %31 = sext i32 %2 to i64
  %32 = getelementptr inbounds %struct.Comb, ptr %0, i64 %31
  %33 = getelementptr inbounds nuw %struct.Comb, ptr %32, i32 0, i32 2
  store i32 0, ptr %33, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @calculate(ptr noundef %0) #0 {
  %2 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %28 [
    i32 1, label %4
    i32 2, label %10
    i32 3, label %16
    i32 4, label %22
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 0
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add nsw i32 %6, %8
  br label %29

10:                                               ; preds = %1
  %11 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 0
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = sub nsw i32 %12, %14
  br label %29

16:                                               ; preds = %1
  %17 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 0
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = mul nsw i32 %18, %20
  br label %29

22:                                               ; preds = %1
  %23 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 0
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = sdiv i32 %24, %26
  br label %29

28:                                               ; preds = %1
  br label %29

29:                                               ; preds = %28, %22, %16, %10, %4
  %.0 = phi i32 [ 0, %28 ], [ %9, %4 ], [ %15, %10 ], [ %21, %16 ], [ %27, %22 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printSolution(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp slt i32 0, %1
  br i1 %3, label %.lr.ph, label %49

.lr.ph:                                           ; preds = %2
  br label %4

4:                                                ; preds = %.lr.ph, %46
  %.014 = phi i32 [ 0, %.lr.ph ], [ %47, %46 ]
  %5 = sext i32 %.014 to i64
  %6 = getelementptr inbounds %struct.Comb, ptr %0, i64 %5
  %7 = getelementptr inbounds nuw %struct.Comb, ptr %6, i32 0, i32 0
  %8 = load i32, ptr %7, align 4
  %9 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %8)
  %10 = sext i32 %.014 to i64
  %11 = getelementptr inbounds %struct.Comb, ptr %0, i64 %10
  %12 = getelementptr inbounds nuw %struct.Comb, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %24 [
    i32 0, label %14
    i32 1, label %16
    i32 2, label %18
    i32 3, label %20
    i32 4, label %22
  ]

14:                                               ; preds = %4
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %30

16:                                               ; preds = %4
  %17 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %30

18:                                               ; preds = %4
  %19 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %30

20:                                               ; preds = %4
  %21 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %30

22:                                               ; preds = %4
  %23 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %30

24:                                               ; preds = %4
  %25 = sext i32 %.014 to i64
  %26 = getelementptr inbounds %struct.Comb, ptr %0, i64 %25
  %27 = getelementptr inbounds nuw %struct.Comb, ptr %26, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %28)
  br label %30

30:                                               ; preds = %24, %22, %20, %18, %16, %14
  %31 = sext i32 %.014 to i64
  %32 = getelementptr inbounds %struct.Comb, ptr %0, i64 %31
  %33 = getelementptr inbounds nuw %struct.Comb, ptr %32, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = sext i32 %.014 to i64
  %36 = getelementptr inbounds %struct.Comb, ptr %0, i64 %35
  %37 = call i32 @calculate(ptr noundef %36)
  %38 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %34, i32 noundef %37)
  %39 = sub nsw i32 %1, 1
  %40 = icmp slt i32 %.014, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  br label %45

43:                                               ; preds = %30
  %44 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %45

45:                                               ; preds = %43, %41
  br label %46

46:                                               ; preds = %45
  %47 = add nsw i32 %.014, 1
  %48 = icmp slt i32 %47, %1
  br i1 %48, label %4, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %46
  br label %49

49:                                               ; preds = %._crit_edge, %2
  %50 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @printList(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 0, %1
  br i1 %4, label %.lr.ph, label %18

.lr.ph:                                           ; preds = %3
  br label %5

5:                                                ; preds = %.lr.ph, %15
  %.06 = phi i32 [ 0, %.lr.ph ], [ %16, %15 ]
  %6 = shl i32 1, %.06
  %7 = and i32 %6, %2
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  br label %15

10:                                               ; preds = %5
  %11 = sext i32 %.06 to i64
  %12 = getelementptr inbounds i32, ptr %0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef %13)
  br label %15

15:                                               ; preds = %10, %9
  %16 = add nsw i32 %.06, 1
  %17 = icmp slt i32 %16, %1
  br i1 %17, label %5, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %15
  br label %18

18:                                               ; preds = %._crit_edge, %3
  %19 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @recSearch(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, ptr @stopSearch, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  br label %137

6:                                                ; preds = %2
  %7 = load i32, ptr @nbNodes, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr @nbNodes, align 4
  %9 = load i32, ptr @dmax, align 4
  %10 = icmp eq i32 %0, %9
  br i1 %10, label %11, label %44

11:                                               ; preds = %6
  %12 = load ptr, ptr @workList, align 8
  %13 = load i32, ptr @listLength, align 4
  %14 = add nsw i32 %13, %0
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %12, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr @goal, align 4
  %20 = sub nsw i32 %18, %19
  %21 = call i32 @llvm.abs.i32(i32 %20, i1 true)
  %22 = load i32, ptr @best, align 4
  %23 = load i32, ptr @goal, align 4
  %24 = sub nsw i32 %22, %23
  %25 = call i32 @llvm.abs.i32(i32 %24, i1 true)
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %11
  %28 = load ptr, ptr @workList, align 8
  %29 = load i32, ptr @listLength, align 4
  %30 = add nsw i32 %29, %0
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, ptr %28, i64 %32
  %34 = load i32, ptr %33, align 4
  store i32 %34, ptr @best, align 4
  store i32 %0, ptr @bestDepth, align 4
  %35 = load ptr, ptr @solution, align 8
  %36 = load ptr, ptr @combList, align 8
  call void @saveSolution(ptr noundef %35, ptr noundef %36, i32 noundef %0)
  %37 = load i32, ptr @best, align 4
  %38 = load i32, ptr @goal, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = load ptr, ptr @combList, align 8
  call void @printSolution(ptr noundef %41, i32 noundef %0)
  store i32 1, ptr @stopSearch, align 4
  br label %42

42:                                               ; preds = %40, %27
  br label %43

43:                                               ; preds = %42, %11
  br label %137

44:                                               ; preds = %6
  br label %45

45:                                               ; preds = %44, %133
  %.060 = phi i32 [ 1, %44 ], [ %134, %133 ]
  %46 = load i32, ptr @listLength, align 4
  %47 = add nsw i32 %46, %0
  %48 = icmp slt i32 0, %47
  br i1 %48, label %.lr.ph58, label %132

.lr.ph58:                                         ; preds = %45
  br label %49

49:                                               ; preds = %.lr.ph58, %127
  %.05255 = phi i32 [ 0, %.lr.ph58 ], [ %128, %127 ]
  %50 = shl i32 1, %.05255
  %51 = and i32 %50, %1
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %127

54:                                               ; preds = %49
  %55 = icmp slt i32 0, %.05255
  br i1 %55, label %.lr.ph, label %126

.lr.ph:                                           ; preds = %54
  br label %56

56:                                               ; preds = %.lr.ph, %123
  %.05153 = phi i32 [ 0, %.lr.ph ], [ %124, %123 ]
  %57 = shl i32 1, %.05153
  %58 = and i32 %57, %1
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %123

61:                                               ; preds = %56
  %62 = load ptr, ptr @workList, align 8
  %63 = sext i32 %.05255 to i64
  %64 = getelementptr inbounds i32, ptr %62, i64 %63
  %65 = load i32, ptr %64, align 4
  %66 = load ptr, ptr @workList, align 8
  %67 = sext i32 %.05153 to i64
  %68 = getelementptr inbounds i32, ptr %66, i64 %67
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %.060, 3
  br i1 %70, label %73, label %71

71:                                               ; preds = %61
  %72 = icmp eq i32 %.060, 4
  br i1 %72, label %73, label %78

73:                                               ; preds = %71, %61
  %74 = icmp eq i32 %65, 1
  br i1 %74, label %77, label %75

75:                                               ; preds = %73
  %76 = icmp eq i32 %69, 1
  br i1 %76, label %77, label %78

77:                                               ; preds = %75, %73
  br label %123

78:                                               ; preds = %75, %71
  %79 = icmp eq i32 %65, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %78
  %81 = icmp eq i32 %69, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %80, %78
  br label %123

83:                                               ; preds = %80
  %84 = icmp eq i32 %.060, 4
  br i1 %84, label %85, label %89

85:                                               ; preds = %83
  %86 = srem i32 %65, %69
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %123

89:                                               ; preds = %85, %83
  %90 = icmp eq i32 %.060, 4
  br i1 %90, label %93, label %91

91:                                               ; preds = %89
  %92 = icmp eq i32 %.060, 2
  br i1 %92, label %93, label %96

93:                                               ; preds = %91, %89
  %94 = icmp slt i32 %65, %69
  br i1 %94, label %95, label %96

95:                                               ; preds = %93
  br label %96

96:                                               ; preds = %95, %93, %91
  %.050 = phi i32 [ %69, %95 ], [ %65, %93 ], [ %65, %91 ]
  %.049 = phi i32 [ %65, %95 ], [ %69, %93 ], [ %69, %91 ]
  %97 = shl i32 1, %.05255
  %98 = or i32 %1, %97
  %99 = shl i32 1, %.05153
  %100 = or i32 %98, %99
  %101 = load ptr, ptr @combList, align 8
  %102 = sext i32 %0 to i64
  %103 = getelementptr inbounds %struct.Comb, ptr %101, i64 %102
  %104 = getelementptr inbounds nuw %struct.Comb, ptr %103, i32 0, i32 0
  store i32 %.050, ptr %104, align 4
  %105 = load ptr, ptr @combList, align 8
  %106 = sext i32 %0 to i64
  %107 = getelementptr inbounds %struct.Comb, ptr %105, i64 %106
  %108 = getelementptr inbounds nuw %struct.Comb, ptr %107, i32 0, i32 1
  store i32 %.049, ptr %108, align 4
  %109 = load ptr, ptr @combList, align 8
  %110 = sext i32 %0 to i64
  %111 = getelementptr inbounds %struct.Comb, ptr %109, i64 %110
  %112 = getelementptr inbounds nuw %struct.Comb, ptr %111, i32 0, i32 2
  store i32 %.060, ptr %112, align 4
  %113 = load ptr, ptr @combList, align 8
  %114 = sext i32 %0 to i64
  %115 = getelementptr inbounds %struct.Comb, ptr %113, i64 %114
  %116 = call i32 @calculate(ptr noundef %115)
  %117 = load ptr, ptr @workList, align 8
  %118 = load i32, ptr @listLength, align 4
  %119 = add nsw i32 %118, %0
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, ptr %117, i64 %120
  store i32 %116, ptr %121, align 4
  %122 = add nsw i32 %0, 1
  call void @recSearch(i32 noundef %122, i32 noundef %100)
  br label %123

123:                                              ; preds = %96, %88, %82, %77, %60
  %.05154 = phi i32 [ %.05153, %96 ], [ %.05153, %88 ], [ %.05153, %82 ], [ %.05153, %77 ], [ %.05153, %60 ]
  %124 = add nsw i32 %.05154, 1
  %125 = icmp slt i32 %124, %.05255
  br i1 %125, label %56, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %123
  br label %126

126:                                              ; preds = %._crit_edge, %54
  br label %127

127:                                              ; preds = %126, %53
  %.05256 = phi i32 [ %.05255, %126 ], [ %.05255, %53 ]
  %128 = add nsw i32 %.05256, 1
  %129 = load i32, ptr @listLength, align 4
  %130 = add nsw i32 %129, %0
  %131 = icmp slt i32 %128, %130
  br i1 %131, label %49, label %._crit_edge59, !llvm.loop !14

._crit_edge59:                                    ; preds = %127
  br label %132

132:                                              ; preds = %._crit_edge59, %45
  br label %133

133:                                              ; preds = %132
  %134 = add nsw i32 %.060, 1
  %135 = icmp sle i32 %134, 4
  br i1 %135, label %45, label %136, !llvm.loop !15

136:                                              ; preds = %133
  br label %137

137:                                              ; preds = %136, %43, %5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  %1 = load i32, ptr @listLength, align 4
  %2 = icmp slt i32 0, %1
  br i1 %2, label %.lr.ph, label %26

.lr.ph:                                           ; preds = %0
  br label %3

3:                                                ; preds = %.lr.ph, %22
  %.04 = phi i32 [ 0, %.lr.ph ], [ %23, %22 ]
  %4 = load ptr, ptr @workList, align 8
  %5 = sext i32 %.04 to i64
  %6 = getelementptr inbounds i32, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr @goal, align 4
  %9 = sub nsw i32 %7, %8
  %10 = call i32 @llvm.abs.i32(i32 %9, i1 true)
  %11 = load i32, ptr @best, align 4
  %12 = load i32, ptr @goal, align 4
  %13 = sub nsw i32 %11, %12
  %14 = call i32 @llvm.abs.i32(i32 %13, i1 true)
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load ptr, ptr @workList, align 8
  %18 = sext i32 %.04 to i64
  %19 = getelementptr inbounds i32, ptr %17, i64 %18
  %20 = load i32, ptr %19, align 4
  store i32 %20, ptr @best, align 4
  br label %21

21:                                               ; preds = %16, %3
  br label %22

22:                                               ; preds = %21
  %23 = add nsw i32 %.04, 1
  %24 = load i32, ptr @listLength, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %3, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %22
  br label %26

26:                                               ; preds = %._crit_edge, %0
  %27 = load i32, ptr @best, align 4
  %28 = load i32, ptr @goal, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %53

32:                                               ; preds = %26
  store i32 1, ptr @dmax, align 4
  %33 = load i32, ptr @dmax, align 4
  %34 = load i32, ptr @listLength, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %.lr.ph6, label %.loopexit

.lr.ph6:                                          ; preds = %32
  br label %36

36:                                               ; preds = %.lr.ph6, %41
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %37 = load i32, ptr @stopSearch, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %47

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40
  %42 = load i32, ptr @dmax, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr @dmax, align 4
  %44 = load i32, ptr @dmax, align 4
  %45 = load i32, ptr @listLength, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %36, label %..loopexit_crit_edge, !llvm.loop !17

..loopexit_crit_edge:                             ; preds = %41
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %32
  br label %47

47:                                               ; preds = %.loopexit, %39
  %48 = load i32, ptr @stopSearch, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load ptr, ptr @solution, align 8
  %52 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %51, i32 noundef %52)
  br label %53

53:                                               ; preds = %50, %47, %30
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getInput() #0 {
  %1 = alloca [16 x i32], align 16
  %2 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 0
  store i32 13, ptr %2, align 16
  %3 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 1
  store i32 32, ptr %3, align 4
  %4 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 2
  store i32 14, ptr %4, align 8
  %5 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 3
  store i32 1412, ptr %5, align 4
  br label %6

6:                                                ; preds = %13, %0
  %.0 = phi i32 [ 0, %0 ], [ %20, %13 ]
  %7 = call i32 @getchar()
  %8 = icmp ne i32 %7, 10
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = icmp ne i32 %7, -1
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i1 [ false, %6 ], [ %10, %9 ]
  br i1 %12, label %13, label %21

13:                                               ; preds = %11
  %14 = call ptr @__acrt_iob_func(i32 noundef 0)
  %15 = call i32 @ungetc(i32 noundef %7, ptr noundef %14)
  %16 = call ptr @__acrt_iob_func(i32 noundef 0)
  %17 = sext i32 %.0 to i64
  %18 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %17
  %19 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %16, ptr noundef @.str.2, ptr noundef %18)
  %20 = add nsw i32 %.0, 1
  br label %6, !llvm.loop !18

21:                                               ; preds = %11
  %.0.lcssa = phi i32 [ %.0, %11 ]
  %22 = icmp eq i32 %.0.lcssa, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  br label %24

24:                                               ; preds = %23, %21
  %.1 = phi i32 [ 4, %23 ], [ %.0.lcssa, %21 ]
  %25 = sub nsw i32 %.1, 1
  store i32 %25, ptr @listLength, align 4
  %26 = load i32, ptr @listLength, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4
  store i32 %29, ptr @goal, align 4
  %30 = load i32, ptr @listLength, align 4
  %31 = mul nsw i32 2, %30
  %32 = call ptr @newWorkList(i32 noundef %31)
  store ptr %32, ptr @workList, align 8
  %33 = load i32, ptr @listLength, align 4
  %34 = call ptr @newCombList(i32 noundef %33)
  store ptr %34, ptr @combList, align 8
  %35 = load i32, ptr @listLength, align 4
  %36 = call ptr @newCombList(i32 noundef %35)
  store ptr %36, ptr @solution, align 8
  %37 = load ptr, ptr @workList, align 8
  %38 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 0
  %39 = load i32, ptr @listLength, align 4
  call void @initWorkList(ptr noundef %37, ptr noundef %38, i32 noundef %39)
  %40 = load ptr, ptr @combList, align 8
  %41 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %40, i32 noundef %41)
  %42 = load ptr, ptr @solution, align 8
  %43 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %42, i32 noundef %43)
  %44 = load i32, ptr @listLength, align 4
  ret i32 %44
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
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  call void @search()
  br label %6

6:                                                ; preds = %5, %2
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { allocsize(0,1) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

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
