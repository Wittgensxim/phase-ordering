; ModuleID = 'results\cmp_test\cmp_random_O2\Dhrystone_dry\round_002\output.ll'
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
  %8 = phi i32 [ 0, %0 ], [ %18, %7 ]
  %9 = add nuw nsw i32 %8, 1
  %10 = add nuw nsw i32 %8, 2
  %11 = add nuw nsw i32 %8, 3
  %12 = add nuw nsw i32 %8, 4
  %13 = add nuw nsw i32 %8, 5
  %14 = add nuw nsw i32 %8, 6
  %15 = add nuw nsw i32 %8, 7
  %16 = add nuw nsw i32 %8, 8
  %17 = add nuw nsw i32 %8, 9
  %18 = add nuw nsw i32 %8, 10
  %19 = icmp samesign ult i32 %18, 100000000
  br i1 %19, label %7, label %20, !llvm.loop !7

20:                                               ; preds = %7
  %21 = call i32 @clock()
  %22 = sub nsw i32 %21, %6
  %23 = call ptr @malloc(i64 noundef 56) #4
  store ptr %23, ptr @PtrGlbNext, align 8
  %24 = call ptr @malloc(i64 noundef 56) #4
  store ptr %24, ptr @PtrGlb, align 8
  %25 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %25, ptr %24, align 8
  %26 = load ptr, ptr @PtrGlb, align 8
  %27 = getelementptr inbounds nuw %struct.Record, ptr %26, i32 0, i32 1
  store i32 0, ptr %27, align 8
  %28 = getelementptr inbounds nuw %struct.Record, ptr %26, i32 0, i32 2
  store i32 10001, ptr %28, align 4
  %29 = getelementptr inbounds nuw %struct.Record, ptr %26, i32 0, i32 3
  store i32 40, ptr %29, align 8
  %30 = getelementptr inbounds nuw %struct.Record, ptr %26, i32 0, i32 4
  %31 = call ptr @strcpy(ptr noundef %30, ptr noundef @.str) #5
  %32 = call ptr @strcpy(ptr noundef %4, ptr noundef @.str.1) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %33 = call i32 @clock()
  br label %34

34:                                               ; preds = %._crit_edge3, %20
  %35 = phi i32 [ 0, %20 ], [ %77, %._crit_edge3 ]
  %36 = call i32 @Proc5()
  %37 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  %38 = call ptr @strcpy(ptr noundef %5, ptr noundef @.str.2) #5
  store i32 10000, ptr %3, align 4
  %39 = call i32 @Func2(ptr noundef %4, ptr noundef %5)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  store i32 %42, ptr @BoolGlob, align 4
  %.pre = load i32, ptr %1, align 4
  %43 = icmp slt i32 %.pre, 3
  br i1 %43, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %34, %.lr.ph
  %44 = phi i32 [ %49, %.lr.ph ], [ %.pre, %34 ]
  %45 = mul nsw i32 5, %44
  %46 = sub nsw i32 %45, 3
  store i32 %46, ptr %2, align 4
  %47 = call i32 @Proc7(i32 noundef %44, i32 noundef 3, ptr noundef %2)
  %48 = load i32, ptr %1, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %1, align 4
  %50 = icmp slt i32 %49, 3
  br i1 %50, label %.lr.ph, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph, %34
  %.lcssa = phi i32 [ %.pre, %34 ], [ %49, %.lr.ph ]
  %51 = load i32, ptr %2, align 4
  %52 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, i32 noundef %.lcssa, i32 noundef %51)
  %53 = load ptr, ptr @PtrGlb, align 8
  %54 = call i32 @Proc1(ptr noundef %53)
  %55 = load i8, ptr @Char2Glob, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp sle i32 65, %56
  br i1 %57, label %.lr.ph2, label %._crit_edge3

.lr.ph2:                                          ; preds = %._crit_edge, %65
  %58 = phi i32 [ %67, %65 ], [ 65, %._crit_edge ]
  %59 = phi i8 [ %66, %65 ], [ 65, %._crit_edge ]
  %60 = load i32, ptr %3, align 4
  %61 = call i32 @Func1(i32 noundef %58, i32 noundef 67)
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %.lr.ph2
  %64 = call i32 @Proc6(i32 noundef 0, ptr noundef %3)
  br label %65

65:                                               ; preds = %63, %.lr.ph2
  %66 = add i8 %59, 1
  %67 = sext i8 %66 to i32
  %68 = load i8, ptr @Char2Glob, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp sle i32 %67, %69
  br i1 %70, label %.lr.ph2, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %65, %._crit_edge
  %71 = load i32, ptr %1, align 4
  %72 = mul nsw i32 3, %71
  store i32 %72, ptr %2, align 4
  %73 = sub nsw i32 %72, 3
  %74 = mul nsw i32 7, %73
  %75 = sub nsw i32 %74, %71
  %76 = call i32 @Proc2(ptr noundef %1)
  %77 = add i32 %35, 1
  %78 = icmp ult i32 %77, 100000000
  br i1 %78, label %34, label %79, !llvm.loop !11

79:                                               ; preds = %._crit_edge3
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
  br label %4

4:                                                ; preds = %1
  %5 = sext i8 %.pre to i32
  %6 = icmp eq i32 %5, 65
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = add nsw i32 %3, -1
  %9 = load i32, ptr @IntGlob, align 4
  %10 = sub nsw i32 %8, %9
  store i32 %10, ptr %0, align 4
  br label %11

11:                                               ; preds = %7, %4
  %12 = phi i32 [ %8, %7 ], [ %3, %4 ]
  br label %13

13:                                               ; preds = %11
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
  %15 = sext i32 %5 to i64
  %16 = getelementptr inbounds [51 x i32], ptr %14, i64 0, i64 %15
  store i32 %5, ptr %16, align 4
  %17 = add nsw i32 %2, 6
  %18 = icmp sle i32 %17, %8
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = getelementptr inbounds [51 x i32], ptr %1, i64 %6
  %21 = sext i32 %17 to i64
  %22 = getelementptr inbounds [51 x i32], ptr %20, i64 0, i64 %21
  store i32 %5, ptr %22, align 4
  %23 = add nsw i32 %2, 7
  br label %24

24:                                               ; preds = %19, %4
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
define dso_local range(i32 0, 10001) i32 @Func1(i32 noundef %0, i32 noundef %1) #0 {
  %3 = trunc i32 %0 to i8
  %4 = trunc i32 %1 to i8
  %5 = sext i8 %3 to i32
  %6 = sext i8 %4 to i32
  %7 = icmp ne i32 %5, %6
  %. = select i1 %7, i32 0, i32 10000
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @Func2(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi i32 [ 1, %2 ], [ %spec.select, %3 ]
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  %7 = load i8, ptr %6, align 1
  %8 = sext i8 %7 to i32
  %9 = add nsw i32 %4, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %1, i64 %10
  %12 = load i8, ptr %11, align 1
  %13 = sext i8 %12 to i32
  %14 = call i32 @Func1(i32 noundef %8, i32 noundef %13)
  %15 = icmp eq i32 %14, 0
  %spec.select = select i1 %15, i32 %9, i32 %4
  %16 = icmp sle i32 %spec.select, 1
  br i1 %16, label %3, label %17, !llvm.loop !12

17:                                               ; preds = %3
  %.lcssa1 = phi i32 [ %spec.select, %3 ]
  %spec.select2 = select i1 false, i32 7, i32 %.lcssa1
  br label %18

18:                                               ; preds = %17
  %19 = call i32 @strcmp(ptr noundef %0, ptr noundef %1) #5
  %20 = icmp sgt i32 %19, 0
  %spec.select3 = select i1 %20, i32 1, i32 0
  br label %21

21:                                               ; preds = %18
  ret i32 %spec.select3
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @Func3(i32 noundef %0) #0 {
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
