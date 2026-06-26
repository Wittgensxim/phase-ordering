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
  br label %7

7:                                                ; preds = %8, %0
  br i1 false, label %8, label %9

8:                                                ; preds = %7
  br label %7, !llvm.loop !7

9:                                                ; preds = %7
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

29:                                               ; preds = %72, %9
  %.1 = phi i32 [ 0, %9 ], [ %76, %72 ]
  %exitcond = icmp ne i32 %.1, 100000000
  br i1 %exitcond, label %30, label %77

30:                                               ; preds = %29
  %31 = call i32 @Proc5()
  %32 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  %33 = getelementptr inbounds [31 x i8], ptr %5, i64 0, i64 0
  %34 = call ptr @strcpy(ptr noundef %33, ptr noundef @.str.2) #5
  store i32 10000, ptr %3, align 4
  %35 = getelementptr inbounds [31 x i8], ptr %4, i64 0, i64 0
  %36 = getelementptr inbounds [31 x i8], ptr %5, i64 0, i64 0
  %37 = call i32 @Func2(ptr noundef %35, ptr noundef %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, ptr @BoolGlob, align 4
  br label %41

41:                                               ; preds = %44, %30
  %42 = load i32, ptr %1, align 4
  %43 = icmp slt i32 %42, 3
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i32, ptr %1, align 4
  %46 = mul nsw i32 5, %45
  %47 = sub nsw i32 %46, 3
  store i32 %47, ptr %2, align 4
  %48 = load i32, ptr %1, align 4
  %49 = call i32 @Proc7(i32 noundef %48, i32 noundef 3, ptr noundef %2)
  %50 = load i32, ptr %1, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, ptr %1, align 4
  br label %41, !llvm.loop !9

52:                                               ; preds = %41
  %53 = load i32, ptr %1, align 4
  %54 = load i32, ptr %2, align 4
  %55 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, i32 noundef %53, i32 noundef %54)
  %56 = load ptr, ptr @PtrGlb, align 8
  %57 = call i32 @Proc1(ptr noundef %56)
  br label %58

58:                                               ; preds = %70, %52
  %.01 = phi i8 [ 65, %52 ], [ %71, %70 ]
  %59 = sext i8 %.01 to i32
  %60 = load i8, ptr @Char2Glob, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp sle i32 %59, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load i32, ptr %3, align 4
  %65 = sext i8 %.01 to i32
  %66 = call i32 @Func1(i32 noundef %65, i32 noundef 67)
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = call i32 @Proc6(i32 noundef 0, ptr noundef %3)
  br label %70

70:                                               ; preds = %63, %68
  %71 = add i8 %.01, 1
  br label %58, !llvm.loop !10

72:                                               ; preds = %58
  %73 = load i32, ptr %1, align 4
  %74 = mul nsw i32 3, %73
  store i32 %74, ptr %2, align 4
  %75 = call i32 @Proc2(ptr noundef %1)
  %76 = add nuw nsw i32 %.1, 1
  br label %29, !llvm.loop !11

77:                                               ; preds = %29
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

15:                                               ; preds = %11, %12, %14, %13, %7, %6
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
  br label %19

19:                                               ; preds = %23, %4
  %indvars.iv = phi i64 [ %indvars.iv.next, %23 ], [ %18, %4 ]
  %20 = add nsw i32 %5, 1
  %21 = sext i32 %20 to i64
  %22 = icmp sle i64 %indvars.iv, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = sext i32 %5 to i64
  %25 = getelementptr inbounds [51 x i32], ptr %1, i64 %24
  %26 = getelementptr inbounds [51 x i32], ptr %25, i64 0, i64 %indvars.iv
  store i32 %5, ptr %26, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %19, !llvm.loop !12

27:                                               ; preds = %19
  %28 = sext i32 %5 to i64
  %29 = getelementptr inbounds [51 x i32], ptr %1, i64 %28
  %30 = sub nsw i32 %5, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [51 x i32], ptr %29, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %32, align 4
  %35 = sext i32 %5 to i64
  %36 = getelementptr inbounds i32, ptr %0, i64 %35
  %37 = load i32, ptr %36, align 4
  %38 = add nsw i32 %5, 20
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [51 x i32], ptr %1, i64 %39
  %41 = sext i32 %5 to i64
  %42 = getelementptr inbounds [51 x i32], ptr %40, i64 0, i64 %41
  store i32 %37, ptr %42, align 4
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
  %. = select i1 %7, i32 0, i32 10000
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func2(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %5, %2
  %.01 = phi i32 [ 1, %2 ], [ %spec.select, %5 ]
  %4 = icmp sle i32 %.01, 1
  br i1 %4, label %5, label %18

5:                                                ; preds = %3
  %6 = sext i32 %.01 to i64
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = load i8, ptr %7, align 1
  %9 = sext i8 %8 to i32
  %10 = add nsw i32 %.01, 1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  %13 = load i8, ptr %12, align 1
  %14 = sext i8 %13 to i32
  %15 = call i32 @Func1(i32 noundef %9, i32 noundef %14)
  %16 = icmp eq i32 %15, 0
  %17 = add nsw i32 %.01, 1
  %spec.select = select i1 %16, i32 %17, i32 %.01
  br label %3, !llvm.loop !13

18:                                               ; preds = %3
  %19 = sext i8 65 to i32
  %20 = icmp eq i32 %19, 88
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = call i32 @strcmp(ptr noundef %0, ptr noundef %1) #5
  %23 = icmp sgt i32 %22, 0
  %. = select i1 %23, i32 1, i32 0
  br label %24

24:                                               ; preds = %21, %18
  %.0 = phi i32 [ 1, %18 ], [ %., %21 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func3(i32 noundef %0) #0 {
  %2 = icmp eq i32 %0, 10001
  %. = select i1 %2, i32 1, i32 0
  ret i32 %.
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
