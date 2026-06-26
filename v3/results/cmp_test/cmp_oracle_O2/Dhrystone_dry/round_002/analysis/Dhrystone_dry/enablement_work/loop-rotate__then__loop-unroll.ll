; ModuleID = 'results\cmp_test\cmp_oracle_O2\Dhrystone_dry\round_001\output.ll'
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
  br label %7

7:                                                ; preds = %7, %0
  %.0 = phi i32 [ 0, %0 ], [ %10, %7 ]
  %8 = add nuw nsw i32 %.0, 16
  %9 = icmp samesign ult i32 %8, 100000000
  %10 = add nuw nsw i32 %.0, 17
  br i1 %9, label %7, label %11, !llvm.loop !7

11:                                               ; preds = %7
  %12 = call i32 @clock()
  %13 = call ptr @malloc(i64 noundef 56) #4
  store ptr %13, ptr @PtrGlbNext, align 8
  %14 = call ptr @malloc(i64 noundef 56) #4
  store ptr %14, ptr @PtrGlb, align 8
  %15 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %15, ptr %14, align 8
  %16 = load ptr, ptr @PtrGlb, align 8
  %17 = getelementptr inbounds nuw %struct.Record, ptr %16, i32 0, i32 1
  store i32 0, ptr %17, align 8
  %18 = getelementptr inbounds nuw %struct.Record, ptr %16, i32 0, i32 2
  store i32 10001, ptr %18, align 4
  %19 = getelementptr inbounds nuw %struct.Record, ptr %16, i32 0, i32 3
  store i32 40, ptr %19, align 8
  %20 = getelementptr inbounds nuw %struct.Record, ptr %16, i32 0, i32 4
  %21 = call ptr @strcpy(ptr noundef %20, ptr noundef @.str) #5
  %22 = call ptr @strcpy(ptr noundef %4, ptr noundef @.str.1) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %23 = call i32 @clock()
  br label %24

24:                                               ; preds = %11, %62
  %.15 = phi i32 [ 0, %11 ], [ %66, %62 ]
  %25 = call i32 @Proc5()
  %26 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  %27 = call ptr @strcpy(ptr noundef %5, ptr noundef @.str.2) #5
  store i32 10000, ptr %3, align 4
  %28 = call i32 @Func2(ptr noundef %4, ptr noundef %5)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  store i32 %31, ptr @BoolGlob, align 4
  %.pre = load i32, ptr %1, align 4
  %32 = icmp slt i32 %.pre, 3
  br i1 %32, label %.lr.ph, label %41

.lr.ph:                                           ; preds = %24
  br label %33

33:                                               ; preds = %.lr.ph, %33
  %34 = phi i32 [ %.pre, %.lr.ph ], [ %39, %33 ]
  %35 = mul nsw i32 5, %34
  %36 = sub nsw i32 %35, 3
  store i32 %36, ptr %2, align 4
  %37 = call i32 @Proc7(i32 noundef %34, i32 noundef 3, ptr noundef %2)
  %38 = load i32, ptr %1, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %1, align 4
  %40 = icmp slt i32 %39, 3
  br i1 %40, label %33, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %33
  %split = phi i32 [ %39, %33 ]
  br label %41

41:                                               ; preds = %._crit_edge, %24
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %.pre, %24 ]
  %42 = load i32, ptr %2, align 4
  %43 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, i32 noundef %.lcssa, i32 noundef %42)
  %44 = load ptr, ptr @PtrGlb, align 8
  %45 = call i32 @Proc1(ptr noundef %44)
  %46 = load i8, ptr @Char2Glob, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp sle i32 65, %47
  br i1 %48, label %.lr.ph3, label %62

.lr.ph3:                                          ; preds = %41
  br label %49

49:                                               ; preds = %.lr.ph3, %56
  %50 = phi i32 [ 65, %.lr.ph3 ], [ %58, %56 ]
  %.011 = phi i8 [ 65, %.lr.ph3 ], [ %57, %56 ]
  %51 = load i32, ptr %3, align 4
  %52 = call i32 @Func1(i32 noundef %50, i32 noundef 67)
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 @Proc6(i32 noundef 0, ptr noundef %3)
  br label %56

56:                                               ; preds = %54, %49
  %57 = add i8 %.011, 1
  %58 = sext i8 %57 to i32
  %59 = load i8, ptr @Char2Glob, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp sle i32 %58, %60
  br i1 %61, label %49, label %._crit_edge4, !llvm.loop !10

._crit_edge4:                                     ; preds = %56
  br label %62

62:                                               ; preds = %._crit_edge4, %41
  %63 = load i32, ptr %1, align 4
  %64 = mul nsw i32 3, %63
  store i32 %64, ptr %2, align 4
  %65 = call i32 @Proc2(ptr noundef %1)
  %66 = add i32 %.15, 1
  %67 = icmp ult i32 %66, 100000000
  br i1 %67, label %24, label %68, !llvm.loop !11

68:                                               ; preds = %62
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
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds nuw %struct.Record, ptr %3, i32 0, i32 3
  store i32 5, ptr %4, align 8
  %5 = load ptr, ptr %0, align 8
  store ptr %5, ptr %5, align 8
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc2(ptr noundef %0) #0 {
  %2 = load i32, ptr %0, align 4
  %.pre = load i8, ptr @Char1Glob, align 1
  br label %3

3:                                                ; preds = %1
  %4 = sext i8 %.pre to i32
  %5 = icmp eq i32 %4, 65
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = add nsw i32 %2, 9
  %8 = load i32, ptr @IntGlob, align 4
  %9 = sub nsw i32 %7, %8
  store i32 %9, ptr %0, align 4
  br label %10

10:                                               ; preds = %6, %3
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc3(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PtrGlb, align 8
  %3 = icmp ne ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8
  store ptr %5, ptr %0, align 8
  %.pre = load i32, ptr @IntGlob, align 4
  %.pre1 = load ptr, ptr @PtrGlb, align 8
  br label %7

6:                                                ; preds = %1
  store i32 100, ptr @IntGlob, align 4
  br label %7

7:                                                ; preds = %6, %4
  %8 = phi ptr [ null, %6 ], [ %.pre1, %4 ]
  %9 = phi i32 [ 100, %6 ], [ %.pre, %4 ]
  %10 = getelementptr inbounds nuw %struct.Record, ptr %8, i32 0, i32 3
  %11 = call i32 @Proc7(i32 noundef 10, i32 noundef %9, ptr noundef %10)
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
  %8 = add nsw i32 %5, 1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %0, i64 %9
  store i32 %3, ptr %10, align 4
  %11 = add nsw i32 %5, 30
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, ptr %0, i64 %12
  store i32 %5, ptr %13, align 4
  br label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds [51 x i32], ptr %1, i64 %6
  %16 = sext i32 %5 to i64
  %17 = getelementptr inbounds [51 x i32], ptr %15, i64 0, i64 %16
  store i32 %5, ptr %17, align 4
  %18 = add nsw i32 %2, 6
  %19 = icmp sle i32 %18, %8
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = getelementptr inbounds [51 x i32], ptr %1, i64 %6
  %22 = sext i32 %18 to i64
  %23 = getelementptr inbounds [51 x i32], ptr %21, i64 0, i64 %22
  store i32 %5, ptr %23, align 4
  br label %24

24:                                               ; preds = %20, %14
  %25 = getelementptr inbounds [51 x i32], ptr %1, i64 %6
  %26 = sub nsw i32 %5, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [51 x i32], ptr %25, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %28, align 4
  %31 = load i32, ptr %7, align 4
  %32 = add nsw i32 %5, 20
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [51 x i32], ptr %1, i64 %33
  %35 = getelementptr inbounds [51 x i32], ptr %34, i64 0, i64 %6
  store i32 %31, ptr %35, align 4
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

3:                                                ; preds = %2, %16
  %.011 = phi i32 [ 1, %2 ], [ %.1, %16 ]
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
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %15, %3
  %.1 = phi i32 [ %8, %15 ], [ %.011, %3 ]
  %17 = icmp sle i32 %.1, 1
  br i1 %17, label %3, label %18, !llvm.loop !12

18:                                               ; preds = %16
  br label %21

19:                                               ; No predecessors!
  br label %21

20:                                               ; No predecessors!
  br label %21

21:                                               ; preds = %20, %19, %18
  br i1 false, label %22, label %23

22:                                               ; preds = %21
  br label %28

23:                                               ; preds = %21
  %24 = call i32 @strcmp(ptr noundef %0, ptr noundef %1) #5
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %28

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %27, %26, %22
  %.0 = phi i32 [ poison, %22 ], [ 1, %26 ], [ 0, %27 ]
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
