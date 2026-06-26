; ModuleID = 'results\cmp_test\cmp_random_O2\Dhrystone_dry\round_003\output.ll'
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

7:                                                ; preds = %._crit_edge2, %0
  br i1 false, label %._crit_edge2, label %8, !llvm.loop !7

._crit_edge2:                                     ; preds = %7
  br label %7, !llvm.loop !7

8:                                                ; preds = %7
  %9 = call i32 @clock()
  %10 = call ptr @malloc(i64 noundef 56) #4
  store ptr %10, ptr @PtrGlbNext, align 8
  %11 = call ptr @malloc(i64 noundef 56) #4
  store ptr %11, ptr @PtrGlb, align 8
  %12 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %12, ptr %11, align 8
  %13 = load ptr, ptr @PtrGlb, align 8
  %14 = getelementptr inbounds nuw %struct.Record, ptr %13, i32 0, i32 1
  store i32 0, ptr %14, align 8
  %15 = getelementptr inbounds nuw %struct.Record, ptr %13, i32 0, i32 2
  store i32 10001, ptr %15, align 4
  %16 = getelementptr inbounds nuw %struct.Record, ptr %13, i32 0, i32 3
  store i32 40, ptr %16, align 8
  %17 = getelementptr inbounds nuw %struct.Record, ptr %13, i32 0, i32 4
  %18 = call ptr @strcpy(ptr noundef %17, ptr noundef @.str) #5
  %19 = call ptr @strcpy(ptr noundef %4, ptr noundef @.str.1) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %20 = call i32 @clock()
  br label %21

21:                                               ; preds = %61, %8
  %22 = phi i32 [ 0, %8 ], [ %68, %61 ]
  %23 = call i32 @Proc5()
  %24 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  %25 = call ptr @strcpy(ptr noundef %5, ptr noundef @.str.2) #5
  store i32 10000, ptr %3, align 4
  %26 = call i32 @Func2(ptr noundef %4, ptr noundef %5)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, ptr @BoolGlob, align 4
  %.pre = load i32, ptr %1, align 4
  %30 = icmp slt i32 %.pre, 3
  br i1 %30, label %.lr.ph, label %39

.lr.ph:                                           ; preds = %21
  br label %31

31:                                               ; preds = %31, %.lr.ph
  %32 = phi i32 [ %.pre, %.lr.ph ], [ %37, %31 ]
  %33 = mul nsw i32 5, %32
  %34 = sub nsw i32 %33, 3
  store i32 %34, ptr %2, align 4
  %35 = call i32 @Proc7(i32 noundef %32, i32 noundef 3, ptr noundef %2)
  %36 = load i32, ptr %1, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %1, align 4
  %38 = icmp slt i32 %37, 3
  br i1 %38, label %31, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %31
  br label %39

39:                                               ; preds = %._crit_edge, %21
  %.lcssa = phi i32 [ %37, %._crit_edge ], [ %.pre, %21 ]
  %40 = load i32, ptr %2, align 4
  %41 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, i32 noundef %.lcssa, i32 noundef %40)
  %42 = load ptr, ptr @PtrGlb, align 8
  %43 = call i32 @Proc1(ptr noundef %42)
  %44 = load i8, ptr @Char2Glob, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp sle i32 65, %45
  br i1 %46, label %.lr.ph2, label %61

.lr.ph2:                                          ; preds = %39
  br label %47

47:                                               ; preds = %55, %.lr.ph2
  %48 = phi i32 [ 65, %.lr.ph2 ], [ %57, %55 ]
  %49 = phi i8 [ 65, %.lr.ph2 ], [ %56, %55 ]
  %50 = load i32, ptr %3, align 4
  %51 = call i32 @Func1(i32 noundef %48, i32 noundef 67)
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = call i32 @Proc6(i32 noundef 0, ptr noundef %3)
  br label %55

55:                                               ; preds = %53, %47
  %56 = add i8 %49, 1
  %57 = sext i8 %56 to i32
  %58 = load i8, ptr @Char2Glob, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp sle i32 %57, %59
  br i1 %60, label %47, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %55
  br label %61

61:                                               ; preds = %._crit_edge3, %39
  %62 = load i32, ptr %1, align 4
  %63 = mul nsw i32 3, %62
  store i32 %63, ptr %2, align 4
  %64 = sub nsw i32 %63, 3
  %65 = mul nsw i32 7, %64
  %66 = sub nsw i32 %65, %62
  %67 = call i32 @Proc2(ptr noundef %1)
  %68 = add nuw nsw i32 %22, 1
  %exitcond = icmp ne i32 %68, 100000000
  br i1 %exitcond, label %21, label %69, !llvm.loop !11

69:                                               ; preds = %61
  %70 = sub nsw i32 %9, %6
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
  %3 = add nsw i32 %2, 10
  %.pre = load i8, ptr @Char1Glob, align 1
  %4 = sext i8 %.pre to i32
  %5 = icmp eq i32 %4, 65
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = add nsw i32 %3, -1
  %8 = load i32, ptr @IntGlob, align 4
  %9 = sub nsw i32 %7, %8
  store i32 %9, ptr %0, align 4
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i32 [ %7, %6 ], [ %3, %1 ]
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
  %1 = load i8, ptr @Char1Glob, align 1
  %2 = sext i8 %1 to i32
  %3 = icmp eq i32 %2, 65
  %4 = zext i1 %3 to i32
  %5 = load i32, ptr @BoolGlob, align 4
  %6 = or i32 %4, %5
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
  switch i32 %0, label %15 [
    i32 0, label %7
    i32 10000, label %8
    i32 10001, label %13
    i32 10003, label %14
  ]

7:                                                ; preds = %6
  store i32 0, ptr %1, align 4
  br label %15

8:                                                ; preds = %6
  %9 = load i32, ptr @IntGlob, align 4
  %10 = icmp sgt i32 %9, 100
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32 0, ptr %1, align 4
  br label %15

12:                                               ; preds = %8
  store i32 10002, ptr %1, align 4
  br label %15

13:                                               ; preds = %6
  store i32 10000, ptr %1, align 4
  br label %15

14:                                               ; preds = %6
  store i32 10001, ptr %1, align 4
  br label %15

15:                                               ; preds = %14, %13, %12, %11, %7, %6
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
  %14 = getelementptr inbounds [51 x i32], ptr %1, i64 %6
  %15 = getelementptr inbounds [51 x i32], ptr %14, i64 0, i64 %6
  store i32 %5, ptr %15, align 4
  %16 = add nsw i32 %2, 6
  %17 = icmp sle i32 %16, %8
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = sext i32 %16 to i64
  %20 = getelementptr inbounds [51 x i32], ptr %14, i64 0, i64 %19
  store i32 %5, ptr %20, align 4
  %21 = add nsw i32 %2, 7
  br label %22

22:                                               ; preds = %18, %4
  %23 = sub nsw i32 %5, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [51 x i32], ptr %14, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %25, align 4
  %28 = load i32, ptr %7, align 4
  %29 = add nsw i32 %5, 20
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [51 x i32], ptr %1, i64 %30
  %32 = getelementptr inbounds [51 x i32], ptr %31, i64 0, i64 %6
  store i32 %28, ptr %32, align 4
  store i32 5, ptr @IntGlob, align 4
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 10001) i32 @Func1(i32 noundef %0, i32 noundef %1) #0 {
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
  %11 = phi i32 [ 10000, %9 ], [ 0, %8 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @Func2(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %13, %2
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %5 = load i8, ptr %4, align 1
  %6 = sext i8 %5 to i32
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %8 = load i8, ptr %7, align 1
  %9 = sext i8 %8 to i32
  %10 = call i32 @Func1(i32 noundef %6, i32 noundef %9)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %12, %3
  %14 = phi i32 [ 2, %12 ], [ 1, %3 ]
  %15 = icmp sle i32 %14, 1
  br i1 %15, label %3, label %16, !llvm.loop !12

16:                                               ; preds = %13
  %17 = call i32 @strcmp(ptr noundef %0, ptr noundef %1) #5
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %21

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %20, %19
  %22 = phi i32 [ 0, %20 ], [ 1, %19 ]
  ret i32 %22
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @Func3(i32 noundef %0) #0 {
  %2 = icmp eq i32 %0, 10001
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %3
  %6 = phi i32 [ 0, %4 ], [ 1, %3 ]
  ret i32 %6
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
