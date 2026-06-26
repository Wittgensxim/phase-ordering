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
  %2 = sext i32 %0 to i64
  %3 = call ptr @calloc(i64 noundef %2, i64 noundef 4) #7
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %5, label %4

4:                                                ; preds = %1
  ret ptr %3

5:                                                ; preds = %1
  %6 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %7 = call i64 @fwrite(ptr nonnull @.str, i64 28, i64 1, ptr %6)
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
  %2 = sext i32 %0 to i64
  %3 = call ptr @calloc(i64 noundef %2, i64 noundef 12) #7
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %5, label %4

4:                                                ; preds = %1
  ret ptr %3

5:                                                ; preds = %1
  %6 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %7 = call i64 @fwrite(ptr nonnull @.str.1, i64 35, i64 1, ptr %6)
  call void @exit(i32 noundef 1) #9
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initWorkList(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %7, %3
  %5 = phi i32 [ %12, %7 ], [ 0, %3 ]
  %6 = icmp slt i32 %5, %2
  br i1 %6, label %7, label %13

7:                                                ; preds = %4
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %8
  store i32 %10, ptr %11, align 4
  %12 = add nuw nsw i32 %5, 1
  br label %4, !llvm.loop !7

13:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initCombList(ptr noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %6, %2
  %4 = phi i32 [ %10, %6 ], [ 0, %2 ]
  %5 = icmp slt i32 %4, %1
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 0, ptr %9, align 4
  %10 = add nuw nsw i32 %4, 1
  br label %3, !llvm.loop !9

11:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @saveSolution(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %7, %3
  %5 = phi i32 [ %18, %7 ], [ 0, %3 ]
  %6 = icmp slt i32 %5, %2
  br i1 %6, label %7, label %19

7:                                                ; preds = %4
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %8
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %16, ptr %17, align 4
  %18 = add nuw nsw i32 %5, 1
  br label %4, !llvm.loop !10

19:                                               ; preds = %4
  %20 = sext i32 %2 to i64
  %21 = getelementptr inbounds [12 x i8], ptr %0, i64 %20
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i32 0, ptr %22, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @calculate(ptr noundef %0) #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %24 [
    i32 1, label %4
    i32 2, label %9
    i32 3, label %14
    i32 4, label %19
  ]

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 4
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = load i32, ptr %6, align 4
  %8 = add nsw i32 %5, %7
  br label %25

9:                                                ; preds = %1
  %10 = load i32, ptr %0, align 4
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %12 = load i32, ptr %11, align 4
  %13 = sub nsw i32 %10, %12
  br label %25

14:                                               ; preds = %1
  %15 = load i32, ptr %0, align 4
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %17 = load i32, ptr %16, align 4
  %18 = mul nsw i32 %15, %17
  br label %25

19:                                               ; preds = %1
  %20 = load i32, ptr %0, align 4
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %22 = load i32, ptr %21, align 4
  %23 = sdiv i32 %20, %22
  br label %25

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %24, %19, %14, %9, %4
  %26 = phi i32 [ 0, %24 ], [ %23, %19 ], [ %18, %14 ], [ %13, %9 ], [ %8, %4 ]
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printSolution(ptr noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %30, %2
  %4 = phi i32 [ %31, %30 ], [ 0, %2 ]
  %5 = icmp slt i32 %4, %1
  br i1 %5, label %6, label %32

6:                                                ; preds = %3
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %9) #8
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %18 [
    i32 0, label %13
    i32 1, label %14
    i32 2, label %15
    i32 3, label %16
    i32 4, label %17
  ]

13:                                               ; preds = %6
  %putchar5 = call i32 @putchar(i32 32)
  br label %20

14:                                               ; preds = %6
  %putchar4 = call i32 @putchar(i32 43)
  br label %20

15:                                               ; preds = %6
  %putchar3 = call i32 @putchar(i32 45)
  br label %20

16:                                               ; preds = %6
  %putchar2 = call i32 @putchar(i32 42)
  br label %20

17:                                               ; preds = %6
  %putchar1 = call i32 @putchar(i32 58)
  br label %20

18:                                               ; preds = %6
  %19 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %12) #8
  br label %20

20:                                               ; preds = %18, %17, %16, %15, %14, %13
  %21 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %22 = load i32, ptr %21, align 4
  %23 = call i32 @calculate(ptr noundef nonnull %8)
  %24 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %22, i32 noundef %23) #8
  %25 = add nsw i32 %1, -1
  %26 = icmp slt i32 %4, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10) #8
  br label %30

29:                                               ; preds = %20
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %30

30:                                               ; preds = %29, %27
  %31 = add nuw nsw i32 %4, 1
  br label %3, !llvm.loop !11

32:                                               ; preds = %3
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
  %3 = load i32, ptr @stopSearch, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  br label %139

5:                                                ; preds = %2
  %6 = load i32, ptr @nbNodes, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @nbNodes, align 4
  %8 = load i32, ptr @dmax, align 4
  %9 = icmp eq i32 %0, %8
  br i1 %9, label %10, label %35

10:                                               ; preds = %5
  %11 = load ptr, ptr @workList, align 8
  %12 = load i32, ptr @listLength, align 4
  %13 = add nsw i32 %12, %0
  %14 = sext i32 %13 to i64
  %15 = getelementptr [4 x i8], ptr %11, i64 %14
  %16 = getelementptr i8, ptr %15, i64 -4
  %17 = load i32, ptr %16, align 4
  %18 = load i32, ptr @goal, align 4
  %19 = sub nsw i32 %17, %18
  %20 = call i32 @llvm.abs.i32(i32 %19, i1 true)
  %21 = load i32, ptr @best, align 4
  %22 = sub nsw i32 %21, %18
  %23 = call i32 @llvm.abs.i32(i32 %22, i1 true)
  %24 = icmp samesign ult i32 %20, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %10
  store i32 %17, ptr @best, align 4
  store i32 %0, ptr @bestDepth, align 4
  %26 = load ptr, ptr @solution, align 8
  %27 = load ptr, ptr @combList, align 8
  call void @saveSolution(ptr noundef %26, ptr noundef %27, i32 noundef %0)
  %28 = load i32, ptr @best, align 4
  %29 = load i32, ptr @goal, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load ptr, ptr @combList, align 8
  call void @printSolution(ptr noundef %32, i32 noundef %0)
  store i32 1, ptr @stopSearch, align 4
  br label %33

33:                                               ; preds = %31, %25
  br label %34

34:                                               ; preds = %33, %10
  br label %139

35:                                               ; preds = %5
  br label %36

36:                                               ; preds = %136, %35
  %37 = phi i32 [ %137, %136 ], [ 1, %35 ]
  %38 = icmp slt i32 %37, 5
  br i1 %38, label %39, label %138

39:                                               ; preds = %36
  br label %40

40:                                               ; preds = %130, %39
  %41 = phi i32 [ %131, %130 ], [ %37, %39 ]
  %42 = phi i32 [ %132, %130 ], [ %37, %39 ]
  %43 = phi i32 [ %133, %130 ], [ %37, %39 ]
  %44 = phi i32 [ %134, %130 ], [ %37, %39 ]
  %45 = phi i32 [ %135, %130 ], [ 0, %39 ]
  %46 = load i32, ptr @listLength, align 4
  %47 = add nsw i32 %46, %0
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %136

49:                                               ; preds = %40
  %50 = shl nuw i32 1, %45
  %51 = and i32 %50, %1
  %.not1 = icmp eq i32 %51, 0
  br i1 %.not1, label %53, label %52

52:                                               ; preds = %49
  br label %130

53:                                               ; preds = %49
  br label %54

54:                                               ; preds = %123, %53
  %55 = phi i32 [ %124, %123 ], [ %41, %53 ]
  %56 = phi i32 [ %125, %123 ], [ %42, %53 ]
  %57 = phi i32 [ %126, %123 ], [ %43, %53 ]
  %58 = phi i32 [ %128, %123 ], [ 0, %53 ]
  %59 = phi i32 [ %127, %123 ], [ %44, %53 ]
  %60 = icmp samesign ult i32 %58, %45
  br i1 %60, label %61, label %129

61:                                               ; preds = %54
  %62 = shl nuw i32 1, %58
  %63 = and i32 %62, %1
  %.not2 = icmp eq i32 %63, 0
  br i1 %.not2, label %65, label %64

64:                                               ; preds = %61
  br label %123

65:                                               ; preds = %61
  %66 = load ptr, ptr @workList, align 8
  %67 = zext nneg i32 %45 to i64
  %68 = getelementptr inbounds nuw [4 x i8], ptr %66, i64 %67
  %69 = load i32, ptr %68, align 4
  %70 = zext nneg i32 %58 to i64
  %71 = getelementptr inbounds nuw [4 x i8], ptr %66, i64 %70
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %57, 3
  br i1 %73, label %76, label %74

74:                                               ; preds = %65
  %75 = icmp eq i32 %56, 4
  br i1 %75, label %76, label %82

76:                                               ; preds = %74, %65
  %77 = phi i32 [ 4, %74 ], [ 3, %65 ]
  %78 = icmp eq i32 %69, 1
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  %80 = icmp eq i32 %72, 1
  br i1 %80, label %81, label %82

81:                                               ; preds = %79, %76
  br label %123

82:                                               ; preds = %79, %74
  %83 = phi i32 [ %77, %79 ], [ %56, %74 ]
  %84 = icmp eq i32 %69, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %82
  %86 = icmp eq i32 %72, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %85, %82
  br label %123

88:                                               ; preds = %85
  %89 = icmp eq i32 %55, 4
  br i1 %89, label %90, label %93

90:                                               ; preds = %88
  %91 = srem i32 %69, %72
  %.not3 = icmp eq i32 %91, 0
  br i1 %.not3, label %93, label %92

92:                                               ; preds = %90
  br label %123

93:                                               ; preds = %90, %88
  %94 = icmp eq i32 %37, 4
  br i1 %94, label %97, label %95

95:                                               ; preds = %93
  %96 = icmp eq i32 %37, 2
  br i1 %96, label %97, label %100

97:                                               ; preds = %95, %93
  %98 = icmp slt i32 %69, %72
  br i1 %98, label %99, label %100

99:                                               ; preds = %97
  br label %100

100:                                              ; preds = %99, %97, %95
  %101 = phi i32 [ %69, %99 ], [ %72, %97 ], [ %72, %95 ]
  %102 = phi i32 [ %72, %99 ], [ %69, %97 ], [ %69, %95 ]
  %103 = or i32 %1, %50
  %104 = or i32 %103, %62
  %105 = load ptr, ptr @combList, align 8
  %106 = sext i32 %0 to i64
  %107 = getelementptr inbounds [12 x i8], ptr %105, i64 %106
  store i32 %102, ptr %107, align 4
  %108 = load ptr, ptr @combList, align 8
  %109 = getelementptr inbounds [12 x i8], ptr %108, i64 %106
  %110 = getelementptr inbounds nuw i8, ptr %109, i64 4
  store i32 %101, ptr %110, align 4
  %111 = load ptr, ptr @combList, align 8
  %112 = getelementptr inbounds [12 x i8], ptr %111, i64 %106
  %113 = getelementptr inbounds nuw i8, ptr %112, i64 8
  store i32 %37, ptr %113, align 4
  %114 = load ptr, ptr @combList, align 8
  %115 = getelementptr inbounds [12 x i8], ptr %114, i64 %106
  %116 = call i32 @calculate(ptr noundef %115)
  %117 = load ptr, ptr @workList, align 8
  %118 = load i32, ptr @listLength, align 4
  %119 = add nsw i32 %118, %0
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [4 x i8], ptr %117, i64 %120
  store i32 %116, ptr %121, align 4
  %122 = add nsw i32 %0, 1
  call void @recSearch(i32 noundef %122, i32 noundef %104)
  br label %123

123:                                              ; preds = %100, %92, %87, %81, %64
  %124 = phi i32 [ %37, %100 ], [ 4, %92 ], [ %55, %87 ], [ %55, %81 ], [ %55, %64 ]
  %125 = phi i32 [ %37, %100 ], [ 4, %92 ], [ %56, %87 ], [ %56, %81 ], [ %56, %64 ]
  %126 = phi i32 [ %37, %100 ], [ 4, %92 ], [ %83, %87 ], [ %77, %81 ], [ %57, %64 ]
  %127 = phi i32 [ %37, %100 ], [ 4, %92 ], [ %83, %87 ], [ %77, %81 ], [ %59, %64 ]
  %128 = add nuw nsw i32 %58, 1
  br label %54, !llvm.loop !13

129:                                              ; preds = %54
  br label %130

130:                                              ; preds = %129, %52
  %131 = phi i32 [ %55, %129 ], [ %41, %52 ]
  %132 = phi i32 [ %56, %129 ], [ %42, %52 ]
  %133 = phi i32 [ %57, %129 ], [ %43, %52 ]
  %134 = phi i32 [ %59, %129 ], [ %44, %52 ]
  %135 = add nuw nsw i32 %45, 1
  br label %40, !llvm.loop !14

136:                                              ; preds = %40
  %137 = add nsw i32 %44, 1
  br label %36, !llvm.loop !15

138:                                              ; preds = %36
  br label %139

139:                                              ; preds = %138, %34, %4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  %.pre = load i32, ptr @listLength, align 4
  br label %1

1:                                                ; preds = %17, %0
  %2 = phi i32 [ %18, %17 ], [ 0, %0 ]
  %3 = icmp slt i32 %2, %.pre
  br i1 %3, label %4, label %19

4:                                                ; preds = %1
  %5 = load ptr, ptr @workList, align 8
  %6 = zext nneg i32 %2 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr @goal, align 4
  %10 = sub nsw i32 %8, %9
  %11 = call i32 @llvm.abs.i32(i32 %10, i1 true)
  %12 = load i32, ptr @best, align 4
  %13 = sub nsw i32 %12, %9
  %14 = call i32 @llvm.abs.i32(i32 %13, i1 true)
  %15 = icmp samesign ult i32 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 %8, ptr @best, align 4
  br label %17

17:                                               ; preds = %16, %4
  %18 = add nuw nsw i32 %2, 1
  br label %1, !llvm.loop !16

19:                                               ; preds = %1
  %20 = load i32, ptr @best, align 4
  %21 = load i32, ptr @goal, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %41

24:                                               ; preds = %19
  store i32 1, ptr @dmax, align 4
  br label %25

25:                                               ; preds = %33, %24
  %26 = phi i32 [ %.pre1, %33 ], [ %.pre, %24 ]
  %27 = phi i32 [ %35, %33 ], [ 1, %24 ]
  %28 = icmp slt i32 %27, %26
  br i1 %28, label %30, label %._crit_edge

._crit_edge:                                      ; preds = %25
  %.pre2 = load i32, ptr @stopSearch, align 4
  %29 = icmp eq i32 %.pre2, 0
  br label %36

30:                                               ; preds = %25
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %31 = load i32, ptr @stopSearch, align 4
  %.not = icmp eq i32 %31, 0
  br i1 %.not, label %33, label %32

32:                                               ; preds = %30
  br label %36

33:                                               ; preds = %30
  %34 = load i32, ptr @dmax, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr @dmax, align 4
  %.pre1 = load i32, ptr @listLength, align 4
  br label %25, !llvm.loop !17

36:                                               ; preds = %._crit_edge, %32
  %37 = phi i1 [ %29, %._crit_edge ], [ false, %32 ]
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = load ptr, ptr @solution, align 8
  %40 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %39, i32 noundef %40)
  br label %41

41:                                               ; preds = %38, %36, %23
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getInput() #0 {
  %1 = alloca [16 x i32], align 16
  store i32 13, ptr %1, align 16
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 32, ptr %2, align 4
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 14, ptr %3, align 8
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 1412, ptr %4, align 4
  br label %5

5:                                                ; preds = %12, %0
  %6 = phi i32 [ %19, %12 ], [ 0, %0 ]
  %7 = call i32 @getchar() #8
  %.not = icmp eq i32 %7, 10
  br i1 %.not, label %10, label %8

8:                                                ; preds = %5
  %9 = icmp ne i32 %7, -1
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i1 [ false, %5 ], [ %9, %8 ]
  br i1 %11, label %12, label %20

12:                                               ; preds = %10
  %13 = call ptr @__acrt_iob_func(i32 noundef 0) #8
  %14 = call i32 @ungetc(i32 noundef %7, ptr noundef %13) #8
  %15 = call ptr @__acrt_iob_func(i32 noundef 0) #8
  %16 = zext nneg i32 %6 to i64
  %17 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %16
  %18 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %15, ptr noundef nonnull @.str.2, ptr noundef nonnull %17) #8
  %19 = add nuw nsw i32 %6, 1
  br label %5, !llvm.loop !18

20:                                               ; preds = %10
  %21 = icmp eq i32 %6, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ 4, %22 ], [ %6, %20 ]
  %25 = add nsw i32 %24, -1
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
