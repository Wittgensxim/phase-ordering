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
  br label %4

4:                                                ; preds = %7, %3
  %5 = phi i32 [ %12, %7 ], [ 0, %3 ]
  %6 = icmp slt i32 %5, %2
  br i1 %6, label %7, label %13

7:                                                ; preds = %4
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds i32, ptr %1, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds i32, ptr %0, i64 %8
  store i32 %10, ptr %11, align 4
  %12 = add nsw i32 %5, 1
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
  %7 = sext i32 %4 to i64
  %8 = getelementptr inbounds %struct.Comb, ptr %0, i64 %7
  %9 = getelementptr inbounds nuw %struct.Comb, ptr %8, i32 0, i32 2
  store i32 0, ptr %9, align 4
  %10 = add nsw i32 %4, 1
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
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds %struct.Comb, ptr %1, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.Comb, ptr %0, i64 %8
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds nuw %struct.Comb, ptr %9, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds nuw %struct.Comb, ptr %11, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds nuw %struct.Comb, ptr %9, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds nuw %struct.Comb, ptr %11, i32 0, i32 2
  store i32 %16, ptr %17, align 4
  %18 = add nsw i32 %5, 1
  br label %4, !llvm.loop !10

19:                                               ; preds = %4
  %20 = sext i32 %2 to i64
  %21 = getelementptr inbounds %struct.Comb, ptr %0, i64 %20
  %22 = getelementptr inbounds nuw %struct.Comb, ptr %21, i32 0, i32 2
  store i32 0, ptr %22, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @calculate(ptr noundef %0) #0 {
  %2 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %24 [
    i32 1, label %4
    i32 2, label %9
    i32 3, label %14
    i32 4, label %19
  ]

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 4
  %6 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = add nsw i32 %5, %7
  br label %25

9:                                                ; preds = %1
  %10 = load i32, ptr %0, align 4
  %11 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = sub nsw i32 %10, %12
  br label %25

14:                                               ; preds = %1
  %15 = load i32, ptr %0, align 4
  %16 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = mul nsw i32 %15, %17
  br label %25

19:                                               ; preds = %1
  %20 = load i32, ptr %0, align 4
  %21 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
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

3:                                                ; preds = %36, %2
  %4 = phi i32 [ %37, %36 ], [ 0, %2 ]
  %5 = icmp slt i32 %4, %1
  br i1 %5, label %6, label %38

6:                                                ; preds = %3
  %7 = sext i32 %4 to i64
  %8 = getelementptr inbounds %struct.Comb, ptr %0, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %9)
  %11 = getelementptr inbounds nuw %struct.Comb, ptr %8, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %23 [
    i32 0, label %13
    i32 1, label %15
    i32 2, label %17
    i32 3, label %19
    i32 4, label %21
  ]

13:                                               ; preds = %6
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %25

15:                                               ; preds = %6
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %25

17:                                               ; preds = %6
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %25

19:                                               ; preds = %6
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %25

21:                                               ; preds = %6
  %22 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %25

23:                                               ; preds = %6
  %24 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %12)
  br label %25

25:                                               ; preds = %23, %21, %19, %17, %15, %13
  %26 = getelementptr inbounds nuw %struct.Comb, ptr %8, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = call i32 @calculate(ptr noundef %8)
  %29 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %27, i32 noundef %28)
  %30 = sub nsw i32 %1, 1
  %31 = icmp slt i32 %4, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  br label %36

34:                                               ; preds = %25
  %35 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %36

36:                                               ; preds = %34, %32
  %37 = add nsw i32 %4, 1
  br label %3, !llvm.loop !11

38:                                               ; preds = %3
  %39 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @printList(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %17, %3
  %5 = phi i32 [ %18, %17 ], [ 0, %3 ]
  %6 = icmp slt i32 %5, %1
  br i1 %6, label %7, label %19

7:                                                ; preds = %4
  %8 = shl i32 1, %5
  %9 = and i32 %8, %2
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %17

12:                                               ; preds = %7
  %13 = sext i32 %5 to i64
  %14 = getelementptr inbounds i32, ptr %0, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef %15)
  br label %17

17:                                               ; preds = %12, %11
  %18 = add nsw i32 %5, 1
  br label %4, !llvm.loop !12

19:                                               ; preds = %4
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @recSearch(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, ptr @stopSearch, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  br label %165

6:                                                ; preds = %2
  %7 = load i32, ptr @nbNodes, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr @nbNodes, align 4
  %9 = load i32, ptr @dmax, align 4
  %10 = icmp eq i32 %0, %9
  br i1 %10, label %11, label %36

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
  %23 = sub nsw i32 %22, %19
  %24 = call i32 @llvm.abs.i32(i32 %23, i1 true)
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %11
  store i32 %18, ptr @best, align 4
  store i32 %0, ptr @bestDepth, align 4
  %27 = load ptr, ptr @solution, align 8
  %28 = load ptr, ptr @combList, align 8
  call void @saveSolution(ptr noundef %27, ptr noundef %28, i32 noundef %0)
  %29 = load i32, ptr @best, align 4
  %30 = load i32, ptr @goal, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load ptr, ptr @combList, align 8
  call void @printSolution(ptr noundef %33, i32 noundef %0)
  store i32 1, ptr @stopSearch, align 4
  br label %34

34:                                               ; preds = %32, %26
  br label %35

35:                                               ; preds = %34, %11
  br label %165

36:                                               ; preds = %6
  br label %37

37:                                               ; preds = %162, %36
  %38 = phi i32 [ %49, %162 ], [ %1, %36 ]
  %39 = phi i32 [ %50, %162 ], [ %1, %36 ]
  %40 = phi i32 [ %52, %162 ], [ %0, %36 ]
  %41 = phi i32 [ %163, %162 ], [ 1, %36 ]
  %42 = icmp sle i32 %41, 4
  br i1 %42, label %43, label %164

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %152, %43
  %45 = phi i32 [ %153, %152 ], [ %41, %43 ]
  %46 = phi i32 [ %154, %152 ], [ %41, %43 ]
  %47 = phi i32 [ %155, %152 ], [ %41, %43 ]
  %48 = phi i32 [ %156, %152 ], [ %41, %43 ]
  %49 = phi i32 [ %157, %152 ], [ %38, %43 ]
  %50 = phi i32 [ %158, %152 ], [ %39, %43 ]
  %51 = phi i32 [ %159, %152 ], [ %41, %43 ]
  %52 = phi i32 [ %160, %152 ], [ %40, %43 ]
  %53 = phi i32 [ %161, %152 ], [ 0, %43 ]
  %54 = load i32, ptr @listLength, align 4
  %55 = add nsw i32 %54, %52
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %162

57:                                               ; preds = %44
  %58 = shl i32 1, %53
  %59 = and i32 %58, %50
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %152

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %140, %62
  %64 = phi i32 [ %141, %140 ], [ %45, %62 ]
  %65 = phi i32 [ %142, %140 ], [ %46, %62 ]
  %66 = phi i32 [ %143, %140 ], [ %47, %62 ]
  %67 = phi i32 [ %144, %140 ], [ %48, %62 ]
  %68 = phi i32 [ %145, %140 ], [ %53, %62 ]
  %69 = phi i32 [ %146, %140 ], [ %49, %62 ]
  %70 = phi i32 [ %147, %140 ], [ %53, %62 ]
  %71 = phi i32 [ %150, %140 ], [ 0, %62 ]
  %72 = phi i32 [ %146, %140 ], [ %50, %62 ]
  %73 = phi i32 [ %148, %140 ], [ %51, %62 ]
  %74 = phi i32 [ %149, %140 ], [ %52, %62 ]
  %75 = icmp slt i32 %71, %70
  br i1 %75, label %76, label %151

76:                                               ; preds = %63
  %77 = shl i32 1, %71
  %78 = and i32 %77, %69
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %140

81:                                               ; preds = %76
  %82 = load ptr, ptr @workList, align 8
  %83 = sext i32 %68 to i64
  %84 = getelementptr inbounds i32, ptr %82, i64 %83
  %85 = load i32, ptr %84, align 4
  %86 = sext i32 %71 to i64
  %87 = getelementptr inbounds i32, ptr %82, i64 %86
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %67, 3
  br i1 %89, label %92, label %90

90:                                               ; preds = %81
  %91 = icmp eq i32 %66, 4
  br i1 %91, label %92, label %98

92:                                               ; preds = %90, %81
  %93 = phi i32 [ 4, %90 ], [ 3, %81 ]
  %94 = icmp eq i32 %85, 1
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = icmp eq i32 %88, 1
  br i1 %96, label %97, label %98

97:                                               ; preds = %95, %92
  br label %140

98:                                               ; preds = %95, %90
  %99 = phi i32 [ %93, %95 ], [ %66, %90 ]
  %100 = icmp eq i32 %85, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %98
  %102 = icmp eq i32 %88, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %101, %98
  br label %140

104:                                              ; preds = %101
  %105 = icmp eq i32 %65, 4
  br i1 %105, label %106, label %110

106:                                              ; preds = %104
  %107 = srem i32 %85, %88
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %140

110:                                              ; preds = %106, %104
  %111 = icmp eq i32 %64, 4
  br i1 %111, label %114, label %112

112:                                              ; preds = %110
  %113 = icmp eq i32 %64, 2
  br i1 %113, label %114, label %117

114:                                              ; preds = %112, %110
  %115 = icmp slt i32 %85, %88
  br i1 %115, label %116, label %117

116:                                              ; preds = %114
  br label %117

117:                                              ; preds = %116, %114, %112
  %118 = phi i32 [ %85, %116 ], [ %88, %114 ], [ %88, %112 ]
  %119 = phi i32 [ %88, %116 ], [ %85, %114 ], [ %85, %112 ]
  %120 = or i32 %1, %58
  %121 = or i32 %120, %77
  %122 = load ptr, ptr @combList, align 8
  %123 = sext i32 %74 to i64
  %124 = getelementptr inbounds %struct.Comb, ptr %122, i64 %123
  store i32 %119, ptr %124, align 4
  %125 = load ptr, ptr @combList, align 8
  %126 = getelementptr inbounds %struct.Comb, ptr %125, i64 %123
  %127 = getelementptr inbounds nuw %struct.Comb, ptr %126, i32 0, i32 1
  store i32 %118, ptr %127, align 4
  %128 = load ptr, ptr @combList, align 8
  %129 = getelementptr inbounds %struct.Comb, ptr %128, i64 %123
  %130 = getelementptr inbounds nuw %struct.Comb, ptr %129, i32 0, i32 2
  store i32 %41, ptr %130, align 4
  %131 = load ptr, ptr @combList, align 8
  %132 = getelementptr inbounds %struct.Comb, ptr %131, i64 %123
  %133 = call i32 @calculate(ptr noundef %132)
  %134 = load ptr, ptr @workList, align 8
  %135 = load i32, ptr @listLength, align 4
  %136 = add nsw i32 %135, %74
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, ptr %134, i64 %137
  store i32 %133, ptr %138, align 4
  %139 = add nsw i32 %0, 1
  call void @recSearch(i32 noundef %139, i32 noundef %121)
  br label %140

140:                                              ; preds = %117, %109, %103, %97, %80
  %141 = phi i32 [ %41, %117 ], [ %64, %109 ], [ %64, %103 ], [ %64, %97 ], [ %64, %80 ]
  %142 = phi i32 [ %41, %117 ], [ 4, %109 ], [ %65, %103 ], [ %65, %97 ], [ %65, %80 ]
  %143 = phi i32 [ %41, %117 ], [ 4, %109 ], [ %66, %103 ], [ %66, %97 ], [ %66, %80 ]
  %144 = phi i32 [ %41, %117 ], [ 4, %109 ], [ %99, %103 ], [ %93, %97 ], [ %67, %80 ]
  %145 = phi i32 [ %53, %117 ], [ %68, %109 ], [ %68, %103 ], [ %68, %97 ], [ %68, %80 ]
  %146 = phi i32 [ %1, %117 ], [ %69, %109 ], [ %69, %103 ], [ %69, %97 ], [ %69, %80 ]
  %147 = phi i32 [ %53, %117 ], [ %68, %109 ], [ %68, %103 ], [ %68, %97 ], [ %70, %80 ]
  %148 = phi i32 [ %41, %117 ], [ 4, %109 ], [ %99, %103 ], [ %93, %97 ], [ %73, %80 ]
  %149 = phi i32 [ %0, %117 ], [ %74, %109 ], [ %74, %103 ], [ %74, %97 ], [ %74, %80 ]
  %150 = add nsw i32 %71, 1
  br label %63, !llvm.loop !13

151:                                              ; preds = %63
  br label %152

152:                                              ; preds = %151, %61
  %153 = phi i32 [ %64, %151 ], [ %45, %61 ]
  %154 = phi i32 [ %65, %151 ], [ %46, %61 ]
  %155 = phi i32 [ %66, %151 ], [ %47, %61 ]
  %156 = phi i32 [ %67, %151 ], [ %48, %61 ]
  %157 = phi i32 [ %69, %151 ], [ %49, %61 ]
  %158 = phi i32 [ %72, %151 ], [ %50, %61 ]
  %159 = phi i32 [ %73, %151 ], [ %51, %61 ]
  %160 = phi i32 [ %74, %151 ], [ %52, %61 ]
  %161 = add nsw i32 %53, 1
  br label %44, !llvm.loop !14

162:                                              ; preds = %44
  %163 = add nsw i32 %51, 1
  br label %37, !llvm.loop !15

164:                                              ; preds = %37
  br label %165

165:                                              ; preds = %164, %35, %5
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
  %6 = sext i32 %2 to i64
  %7 = getelementptr inbounds i32, ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr @goal, align 4
  %10 = sub nsw i32 %8, %9
  %11 = call i32 @llvm.abs.i32(i32 %10, i1 true)
  %12 = load i32, ptr @best, align 4
  %13 = sub nsw i32 %12, %9
  %14 = call i32 @llvm.abs.i32(i32 %13, i1 true)
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 %8, ptr @best, align 4
  br label %17

17:                                               ; preds = %16, %4
  %18 = add nsw i32 %2, 1
  br label %1, !llvm.loop !16

19:                                               ; preds = %1
  %20 = load i32, ptr @best, align 4
  %21 = load i32, ptr @goal, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %43

25:                                               ; preds = %19
  store i32 1, ptr @dmax, align 4
  br label %26

26:                                               ; preds = %34, %25
  %27 = phi i32 [ %.pre1, %34 ], [ %.pre, %25 ]
  %28 = phi i32 [ %36, %34 ], [ 1, %25 ]
  %29 = icmp slt i32 %28, %27
  br i1 %29, label %30, label %._crit_edge

._crit_edge:                                      ; preds = %26
  %.pre2 = load i32, ptr @stopSearch, align 4
  br label %37

30:                                               ; preds = %26
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %31 = load i32, ptr @stopSearch, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %37

34:                                               ; preds = %30
  %35 = load i32, ptr @dmax, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr @dmax, align 4
  %.pre1 = load i32, ptr @listLength, align 4
  br label %26, !llvm.loop !17

37:                                               ; preds = %._crit_edge, %33
  %38 = phi i32 [ %.pre2, %._crit_edge ], [ %31, %33 ]
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load ptr, ptr @solution, align 8
  %42 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %41, i32 noundef %42)
  br label %43

43:                                               ; preds = %40, %37, %23
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getInput() #0 {
  %1 = alloca [16 x i32], align 16
  store i32 13, ptr %1, align 16
  %2 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 1
  store i32 32, ptr %2, align 4
  %3 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 2
  store i32 14, ptr %3, align 8
  %4 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 3
  store i32 1412, ptr %4, align 4
  br label %5

5:                                                ; preds = %13, %0
  %6 = phi i32 [ %20, %13 ], [ 0, %0 ]
  %7 = call i32 @getchar()
  %8 = icmp ne i32 %7, 10
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = icmp ne i32 %7, -1
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi i1 [ false, %5 ], [ %10, %9 ]
  br i1 %12, label %13, label %21

13:                                               ; preds = %11
  %14 = call ptr @__acrt_iob_func(i32 noundef 0)
  %15 = call i32 @ungetc(i32 noundef %7, ptr noundef %14)
  %16 = call ptr @__acrt_iob_func(i32 noundef 0)
  %17 = sext i32 %6 to i64
  %18 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %17
  %19 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %16, ptr noundef @.str.2, ptr noundef %18)
  %20 = add nsw i32 %6, 1
  br label %5, !llvm.loop !18

21:                                               ; preds = %11
  %22 = icmp eq i32 %6, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ 4, %23 ], [ %6, %21 ]
  %26 = sub nsw i32 %25, 1
  store i32 %26, ptr @listLength, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4
  store i32 %29, ptr @goal, align 4
  %30 = mul nsw i32 2, %26
  %31 = call ptr @newWorkList(i32 noundef %30)
  store ptr %31, ptr @workList, align 8
  %32 = load i32, ptr @listLength, align 4
  %33 = call ptr @newCombList(i32 noundef %32)
  store ptr %33, ptr @combList, align 8
  %34 = load i32, ptr @listLength, align 4
  %35 = call ptr @newCombList(i32 noundef %34)
  store ptr %35, ptr @solution, align 8
  %36 = load ptr, ptr @workList, align 8
  %37 = load i32, ptr @listLength, align 4
  call void @initWorkList(ptr noundef %36, ptr noundef %1, i32 noundef %37)
  %38 = load ptr, ptr @combList, align 8
  %39 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %38, i32 noundef %39)
  %40 = load ptr, ptr @solution, align 8
  %41 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %40, i32 noundef %41)
  %42 = load i32, ptr @listLength, align 4
  ret i32 %42
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
