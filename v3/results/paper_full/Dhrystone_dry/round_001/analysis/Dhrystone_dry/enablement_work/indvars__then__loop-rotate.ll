; ModuleID = 'results\paper_full\Dhrystone_dry\round_000\output.ll'
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
  %1 = call i32 @Proc0()
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc0() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [31 x i8], align 16
  %5 = alloca [31 x i8], align 16
  %6 = call i32 @clock()
  br i1 false, label %.lr.ph, label %9

.lr.ph:                                           ; preds = %0
  br label %7

7:                                                ; preds = %.lr.ph, %8
  br label %8

8:                                                ; preds = %7
  br i1 false, label %7, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %8
  br label %9

9:                                                ; preds = %._crit_edge, %0
  %10 = call i32 @clock()
  %11 = call ptr @malloc(i64 noundef 56) #4
  store ptr %11, ptr @PtrGlbNext, align 8
  %12 = call ptr @malloc(i64 noundef 56) #4
  store ptr %12, ptr @PtrGlb, align 8
  %13 = load ptr, ptr @PtrGlbNext, align 8
  %14 = load ptr, ptr @PtrGlb, align 8
  %15 = getelementptr inbounds nuw %struct.Record, ptr %14, i32 0, i32 0
  store ptr %13, ptr %15, align 8
  %16 = load ptr, ptr @PtrGlb, align 8
  %17 = getelementptr inbounds nuw %struct.Record, ptr %16, i32 0, i32 1
  store i32 0, ptr %17, align 8
  %18 = load ptr, ptr @PtrGlb, align 8
  %19 = getelementptr inbounds nuw %struct.Record, ptr %18, i32 0, i32 2
  store i32 10001, ptr %19, align 4
  %20 = load ptr, ptr @PtrGlb, align 8
  %21 = getelementptr inbounds nuw %struct.Record, ptr %20, i32 0, i32 3
  store i32 40, ptr %21, align 8
  %22 = load ptr, ptr @PtrGlb, align 8
  %23 = getelementptr inbounds nuw %struct.Record, ptr %22, i32 0, i32 4
  %24 = getelementptr inbounds [31 x i8], ptr %23, i64 0, i64 0
  %25 = call ptr @strcpy(ptr noundef %24, ptr noundef @.str) #5
  %26 = getelementptr inbounds [31 x i8], ptr %4, i64 0, i64 0
  %27 = call ptr @strcpy(ptr noundef %26, ptr noundef @.str.1) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %28 = call i32 @clock()
  br label %29

29:                                               ; preds = %9, %79
  %.18 = phi i32 [ 0, %9 ], [ %80, %79 ]
  %30 = call i32 @Proc5()
  %31 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  %32 = getelementptr inbounds [31 x i8], ptr %5, i64 0, i64 0
  %33 = call ptr @strcpy(ptr noundef %32, ptr noundef @.str.2) #5
  store i32 10000, ptr %3, align 4
  %34 = getelementptr inbounds [31 x i8], ptr %4, i64 0, i64 0
  %35 = getelementptr inbounds [31 x i8], ptr %5, i64 0, i64 0
  %36 = call i32 @Func2(ptr noundef %34, ptr noundef %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, ptr @BoolGlob, align 4
  %40 = load i32, ptr %1, align 4
  %41 = icmp slt i32 %40, 3
  br i1 %41, label %.lr.ph2, label %52

.lr.ph2:                                          ; preds = %29
  br label %42

42:                                               ; preds = %.lr.ph2, %42
  %43 = load i32, ptr %1, align 4
  %44 = mul nsw i32 5, %43
  %45 = sub nsw i32 %44, 3
  store i32 %45, ptr %2, align 4
  %46 = load i32, ptr %1, align 4
  %47 = call i32 @Proc7(i32 noundef %46, i32 noundef 3, ptr noundef %2)
  %48 = load i32, ptr %1, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %1, align 4
  %50 = load i32, ptr %1, align 4
  %51 = icmp slt i32 %50, 3
  br i1 %51, label %42, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %42
  br label %52

52:                                               ; preds = %._crit_edge3, %29
  %53 = load i32, ptr %1, align 4
  %54 = load i32, ptr %2, align 4
  %55 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, i32 noundef %53, i32 noundef %54)
  %56 = load ptr, ptr @PtrGlb, align 8
  %57 = call i32 @Proc1(ptr noundef %56)
  %58 = load i8, ptr @Char2Glob, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp sle i32 65, %59
  br i1 %60, label %.lr.ph6, label %75

.lr.ph6:                                          ; preds = %52
  br label %61

61:                                               ; preds = %.lr.ph6, %69
  %.014 = phi i8 [ 65, %.lr.ph6 ], [ %70, %69 ]
  %62 = load i32, ptr %3, align 4
  %63 = sext i8 %.014 to i32
  %64 = call i32 @Func1(i32 noundef %63, i32 noundef 67)
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = call i32 @Proc6(i32 noundef 0, ptr noundef %3)
  br label %68

68:                                               ; preds = %66, %61
  br label %69

69:                                               ; preds = %68
  %70 = add i8 %.014, 1
  %71 = sext i8 %70 to i32
  %72 = load i8, ptr @Char2Glob, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp sle i32 %71, %73
  br i1 %74, label %61, label %._crit_edge7, !llvm.loop !10

._crit_edge7:                                     ; preds = %69
  br label %75

75:                                               ; preds = %._crit_edge7, %52
  %76 = load i32, ptr %1, align 4
  %77 = mul nsw i32 3, %76
  store i32 %77, ptr %2, align 4
  %78 = call i32 @Proc2(ptr noundef %1)
  br label %79

79:                                               ; preds = %75
  %80 = add nuw nsw i32 %.18, 1
  %exitcond = icmp ne i32 %80, 100000000
  br i1 %exitcond, label %29, label %81, !llvm.loop !11

81:                                               ; preds = %79
  ret i32 undef
}

declare dso_local i32 @clock() #1

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare dso_local ptr @strcpy(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc1(ptr noundef %0) #0 {
  %2 = getelementptr inbounds nuw %struct.Record, ptr %0, i32 0, i32 3
  store i32 5, ptr %2, align 8
  %3 = getelementptr inbounds nuw %struct.Record, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds nuw %struct.Record, ptr %0, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds nuw %struct.Record, ptr %6, i32 0, i32 3
  store i32 %4, ptr %7, align 8
  %8 = getelementptr inbounds nuw %struct.Record, ptr %0, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds nuw %struct.Record, ptr %0, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds nuw %struct.Record, ptr %11, i32 0, i32 0
  store ptr %9, ptr %12, align 8
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc2(ptr noundef %0) #0 {
  %2 = load i32, ptr %0, align 4
  %3 = add nsw i32 %2, 10
  br label %4

4:                                                ; preds = %12, %1
  %5 = load i8, ptr @Char1Glob, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 65
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = add nsw i32 %3, -1
  %10 = load i32, ptr @IntGlob, align 4
  %11 = sub nsw i32 %9, %10
  store i32 %11, ptr %0, align 4
  br label %12

12:                                               ; preds = %8, %4
  br i1 true, label %13, label %4

13:                                               ; preds = %12
  br label %14

14:                                               ; preds = %13
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc3(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PtrGlb, align 8
  %3 = icmp ne ptr %2, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = load ptr, ptr @PtrGlb, align 8
  %6 = getelementptr inbounds nuw %struct.Record, ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  store ptr %7, ptr %0, align 8
  br label %9

8:                                                ; preds = %1
  store i32 100, ptr @IntGlob, align 4
  br label %9

9:                                                ; preds = %8, %4
  %10 = load i32, ptr @IntGlob, align 4
  %11 = load ptr, ptr @PtrGlb, align 8
  %12 = getelementptr inbounds nuw %struct.Record, ptr %11, i32 0, i32 3
  %13 = call i32 @Proc7(i32 noundef 10, i32 noundef %10, ptr noundef %12)
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc4() #0 {
  store i8 66, ptr @Char2Glob, align 1
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc5() #0 {
  store i8 65, ptr @Char1Glob, align 1
  store i32 0, ptr @BoolGlob, align 4
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc6(i32 noundef %0, ptr noundef %1) #0 {
  store i32 %0, ptr %1, align 4
  %3 = call i32 @Func3(i32 noundef %0)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  store i32 10002, ptr %1, align 4
  br label %6

6:                                                ; preds = %5, %2
  switch i32 %0, label %17 [
    i32 0, label %7
    i32 10000, label %8
    i32 10001, label %14
    i32 10002, label %15
    i32 10003, label %16
  ]

7:                                                ; preds = %6
  store i32 0, ptr %1, align 4
  br label %17

8:                                                ; preds = %6
  %9 = load i32, ptr @IntGlob, align 4
  %10 = icmp sgt i32 %9, 100
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32 0, ptr %1, align 4
  br label %13

12:                                               ; preds = %8
  store i32 10002, ptr %1, align 4
  br label %13

13:                                               ; preds = %12, %11
  br label %17

14:                                               ; preds = %6
  store i32 10000, ptr %1, align 4
  br label %17

15:                                               ; preds = %6
  br label %17

16:                                               ; preds = %6
  store i32 10001, ptr %1, align 4
  br label %17

17:                                               ; preds = %16, %15, %14, %13, %7, %6
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc7(i32 noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = add nsw i32 %0, 2
  %5 = add nsw i32 %1, %4
  store i32 %5, ptr %2, align 4
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc8(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = add nsw i32 %2, 5
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, ptr %0, i64 %6
  store i32 %3, ptr %7, align 4
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds i32, ptr %0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = add nsw i32 %5, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, ptr %0, i64 %12
  store i32 %10, ptr %13, align 4
  %14 = add nsw i32 %5, 30
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %0, i64 %15
  store i32 %5, ptr %16, align 4
  %17 = sext i32 %2 to i64
  %18 = add nsw i64 %17, 5
  %19 = add nsw i32 %5, 1
  %20 = sext i32 %19 to i64
  %21 = icmp sle i64 %18, %20
  br i1 %21, label %.lr.ph, label %28

.lr.ph:                                           ; preds = %4
  br label %22

22:                                               ; preds = %.lr.ph, %26
  %indvars.iv2 = phi i64 [ %18, %.lr.ph ], [ %indvars.iv.next, %26 ]
  %23 = sext i32 %5 to i64
  %24 = getelementptr inbounds [51 x i32], ptr %1, i64 %23
  %25 = getelementptr inbounds [51 x i32], ptr %24, i64 0, i64 %indvars.iv2
  store i32 %5, ptr %25, align 4
  br label %26

26:                                               ; preds = %22
  %indvars.iv.next = add nsw i64 %indvars.iv2, 1
  %27 = icmp sle i64 %indvars.iv.next, %20
  br i1 %27, label %22, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %26
  br label %28

28:                                               ; preds = %._crit_edge, %4
  %29 = sext i32 %5 to i64
  %30 = getelementptr inbounds [51 x i32], ptr %1, i64 %29
  %31 = sub nsw i32 %5, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [51 x i32], ptr %30, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %33, align 4
  %36 = sext i32 %5 to i64
  %37 = getelementptr inbounds i32, ptr %0, i64 %36
  %38 = load i32, ptr %37, align 4
  %39 = add nsw i32 %5, 20
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [51 x i32], ptr %1, i64 %40
  %42 = sext i32 %5 to i64
  %43 = getelementptr inbounds [51 x i32], ptr %41, i64 0, i64 %42
  store i32 %38, ptr %43, align 4
  store i32 5, ptr @IntGlob, align 4
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func1(i32 noundef %0, i32 noundef %1) #0 {
  %3 = trunc i32 %0 to i8
  %4 = trunc i32 %1 to i8
  %5 = sext i8 %3 to i32
  %6 = sext i8 %4 to i32
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %10

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %9, %8
  %.0 = phi i32 [ 0, %8 ], [ 10000, %9 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func2(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %2, %17
  %.011 = phi i32 [ 1, %2 ], [ %.1, %17 ]
  %4 = sext i32 %.011 to i64
  %5 = getelementptr inbounds i8, ptr %0, i64 %4
  %6 = load i8, ptr %5, align 1
  %7 = sext i8 %6 to i32
  %8 = add nsw i32 %.011, 1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %1, i64 %9
  %11 = load i8, ptr %10, align 1
  %12 = sext i8 %11 to i32
  %13 = call i32 @Func1(i32 noundef %7, i32 noundef %12)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = add nsw i32 %.011, 1
  br label %17

17:                                               ; preds = %15, %3
  %.1 = phi i32 [ %16, %15 ], [ %.011, %3 ]
  %18 = icmp sle i32 %.1, 1
  br i1 %18, label %3, label %19, !llvm.loop !13

19:                                               ; preds = %17
  br label %22

20:                                               ; No predecessors!
  br label %22

21:                                               ; No predecessors!
  br label %22

22:                                               ; preds = %21, %20, %19
  %23 = sext i8 65 to i32
  %24 = icmp eq i32 %23, 88
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %31

26:                                               ; preds = %22
  %27 = call i32 @strcmp(ptr noundef %0, ptr noundef %1) #5
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %31

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %30, %29, %25
  %.0 = phi i32 [ 1, %25 ], [ 1, %29 ], [ 0, %30 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func3(i32 noundef %0) #0 {
  %2 = icmp eq i32 %0, 10001
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %3
  %.0 = phi i32 [ 1, %3 ], [ 0, %4 ]
  ret i32 %.0
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
