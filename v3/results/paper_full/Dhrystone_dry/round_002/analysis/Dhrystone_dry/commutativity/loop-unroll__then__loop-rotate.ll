; ModuleID = 'results\paper_full\Dhrystone_dry\round_001\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Dhrystone/dry.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

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
  %6 = call i32 @clock() #5
  br label %7

7:                                                ; preds = %0, %22
  %.02 = phi i32 [ 0, %0 ], [ %23, %22 ]
  br label %8

8:                                                ; preds = %7
  br label %9

9:                                                ; preds = %8
  br label %10

10:                                               ; preds = %9
  br label %11

11:                                               ; preds = %10
  br label %12

12:                                               ; preds = %11
  br label %13

13:                                               ; preds = %12
  br label %14

14:                                               ; preds = %13
  br label %15

15:                                               ; preds = %14
  br label %16

16:                                               ; preds = %15
  br label %17

17:                                               ; preds = %16
  br label %18

18:                                               ; preds = %17
  br label %19

19:                                               ; preds = %18
  br label %20

20:                                               ; preds = %19
  br label %21

21:                                               ; preds = %20
  br label %22

22:                                               ; preds = %21
  %23 = add nuw nsw i32 %.02, 8
  %24 = icmp samesign ult i32 %23, 100000000
  br i1 %24, label %7, label %25, !llvm.loop !7

25:                                               ; preds = %22
  %26 = call i32 @clock() #5
  %27 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #6
  store ptr %27, ptr @PtrGlbNext, align 8
  %28 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #6
  store ptr %28, ptr @PtrGlb, align 8
  %29 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %29, ptr %28, align 8
  %30 = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i32 0, ptr %30, align 8
  %31 = getelementptr inbounds nuw i8, ptr %28, i64 12
  store i32 10001, ptr %31, align 4
  %32 = load ptr, ptr @PtrGlb, align 8
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 16
  store i32 40, ptr %33, align 8
  %34 = getelementptr inbounds nuw i8, ptr %32, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %34, ptr noundef nonnull align 1 dereferenceable(31) @.str, i64 31, i1 false) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %4, ptr noundef nonnull align 1 dereferenceable(31) @.str.1, i64 31, i1 false) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %35 = call i32 @clock() #5
  br label %36

36:                                               ; preds = %25, %73
  %.18 = phi i32 [ 0, %25 ], [ %74, %73 ]
  %37 = call i32 @Proc5()
  %38 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %5, ptr noundef nonnull align 1 dereferenceable(31) @.str.2, i64 31, i1 false) #5
  store i32 10000, ptr %3, align 4
  %39 = call i32 @Func2(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %.not = icmp eq i32 %39, 0
  %40 = zext i1 %.not to i32
  store i32 %40, ptr @BoolGlob, align 4
  %41 = load i32, ptr %1, align 4
  %42 = icmp slt i32 %41, 3
  br i1 %42, label %.lr.ph, label %52

.lr.ph:                                           ; preds = %36
  br label %43

43:                                               ; preds = %.lr.ph, %43
  %44 = phi i32 [ %41, %.lr.ph ], [ %50, %43 ]
  %45 = mul nsw i32 %44, 5
  %46 = add nsw i32 %45, -3
  store i32 %46, ptr %2, align 4
  %47 = call i32 @Proc7(i32 noundef %44, i32 noundef 3, ptr noundef nonnull %2)
  %48 = load i32, ptr %1, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %1, align 4
  %50 = load i32, ptr %1, align 4
  %51 = icmp slt i32 %50, 3
  br i1 %51, label %43, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %43
  %split = phi i32 [ %50, %43 ]
  br label %52

52:                                               ; preds = %._crit_edge, %36
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %41, %36 ]
  %53 = load i32, ptr %2, align 4
  %54 = call i32 @Proc8(ptr noundef nonnull @Array1Glob, ptr noundef nonnull @Array2Glob, i32 noundef %.lcssa, i32 noundef %53)
  %55 = load ptr, ptr @PtrGlb, align 8
  %56 = call i32 @Proc1(ptr noundef %55)
  %57 = load i8, ptr @Char2Glob, align 1
  %.not13 = icmp sgt i8 65, %57
  br i1 %.not13, label %69, label %.lr.ph6

.lr.ph6:                                          ; preds = %52
  br label %58

58:                                               ; preds = %.lr.ph6, %66
  %.014 = phi i8 [ 65, %.lr.ph6 ], [ %67, %66 ]
  %59 = load i32, ptr %3, align 4
  %60 = sext i8 %.014 to i32
  %61 = call i32 @Func1(i32 noundef %60, i32 noundef 67)
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = call i32 @Proc6(i32 noundef 0, ptr noundef nonnull %3)
  br label %65

65:                                               ; preds = %63, %58
  br label %66

66:                                               ; preds = %65
  %67 = add i8 %.014, 1
  %68 = load i8, ptr @Char2Glob, align 1
  %.not1 = icmp sgt i8 %67, %68
  br i1 %.not1, label %._crit_edge7, label %58, !llvm.loop !10

._crit_edge7:                                     ; preds = %66
  br label %69

69:                                               ; preds = %._crit_edge7, %52
  %70 = load i32, ptr %1, align 4
  %71 = mul nsw i32 %70, 3
  store i32 %71, ptr %2, align 4
  %72 = call i32 @Proc2(ptr noundef nonnull %1)
  br label %73

73:                                               ; preds = %69
  %74 = add nuw nsw i32 %.18, 1
  %75 = icmp samesign ult i32 %74, 100000000
  br i1 %75, label %36, label %76, !llvm.loop !11

76:                                               ; preds = %73
  ret i32 undef
}

declare dso_local i32 @clock() #1

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare dso_local ptr @strcpy(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc1(ptr noundef %0) #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 5, ptr %2, align 8
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 5, ptr %4, align 8
  %5 = load ptr, ptr %0, align 8
  store ptr %5, ptr %5, align 8
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc2(ptr noundef %0) #0 {
  %2 = load i32, ptr %0, align 4
  br label %3

3:                                                ; preds = %1
  %4 = load i8, ptr @Char1Glob, align 1
  %5 = icmp eq i8 %4, 65
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = add nsw i32 %2, 9
  %8 = load i32, ptr @IntGlob, align 4
  %9 = sub nsw i32 %7, %8
  store i32 %9, ptr %0, align 4
  br label %10

10:                                               ; preds = %6, %3
  br i1 true, label %11, label %12

11:                                               ; preds = %10
  br label %13

12:                                               ; preds = %10
  unreachable

13:                                               ; preds = %11
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc3(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PtrGlb, align 8
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %2, align 8
  store ptr %4, ptr %0, align 8
  br label %6

5:                                                ; preds = %1
  store i32 100, ptr @IntGlob, align 4
  br label %6

6:                                                ; preds = %5, %3
  %7 = load i32, ptr @IntGlob, align 4
  %8 = load ptr, ptr @PtrGlb, align 8
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %10 = call i32 @Proc7(i32 noundef 10, i32 noundef %7, ptr noundef nonnull %9)
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
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %5

4:                                                ; preds = %2
  store i32 10002, ptr %1, align 4
  br label %5

5:                                                ; preds = %4, %2
  switch i32 %0, label %16 [
    i32 0, label %6
    i32 10000, label %7
    i32 10001, label %13
    i32 10002, label %14
    i32 10003, label %15
  ]

6:                                                ; preds = %5
  store i32 0, ptr %1, align 4
  br label %16

7:                                                ; preds = %5
  %8 = load i32, ptr @IntGlob, align 4
  %9 = icmp sgt i32 %8, 100
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  br label %12

11:                                               ; preds = %7
  br label %12

12:                                               ; preds = %11, %10
  %storemerge = phi i32 [ 10002, %11 ], [ 0, %10 ]
  store i32 %storemerge, ptr %1, align 4
  br label %16

13:                                               ; preds = %5
  store i32 10000, ptr %1, align 4
  br label %16

14:                                               ; preds = %5
  br label %16

15:                                               ; preds = %5
  store i32 10001, ptr %1, align 4
  br label %16

16:                                               ; preds = %15, %14, %13, %12, %6, %5
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
  %7 = getelementptr inbounds [4 x i8], ptr %0, i64 %6
  store i32 %3, ptr %7, align 4
  %8 = sext i32 %2 to i64
  %9 = getelementptr [4 x i8], ptr %0, i64 %8
  %10 = getelementptr i8, ptr %9, i64 24
  store i32 %3, ptr %10, align 4
  %11 = getelementptr i8, ptr %9, i64 140
  store i32 %5, ptr %11, align 4
  br label %12

12:                                               ; preds = %4
  br label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds [204 x i8], ptr %1, i64 %6
  %15 = sext i32 %5 to i64
  %16 = getelementptr inbounds [4 x i8], ptr %14, i64 %15
  store i32 %5, ptr %16, align 4
  br label %17

17:                                               ; preds = %13
  %18 = add nsw i32 %2, 6
  br label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds [204 x i8], ptr %1, i64 %6
  %21 = sext i32 %18 to i64
  %22 = getelementptr inbounds [4 x i8], ptr %20, i64 %21
  store i32 %5, ptr %22, align 4
  br label %23

23:                                               ; preds = %19
  %24 = add nsw i32 %2, 7
  br i1 true, label %30, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds [204 x i8], ptr %1, i64 %6
  %27 = sext i32 %24 to i64
  %28 = getelementptr inbounds [4 x i8], ptr %26, i64 %27
  store i32 %5, ptr %28, align 4
  br label %29

29:                                               ; preds = %25
  unreachable

30:                                               ; preds = %23
  %31 = getelementptr inbounds [204 x i8], ptr %1, i64 %6
  %32 = getelementptr [4 x i8], ptr %31, i64 %8
  %33 = getelementptr i8, ptr %32, i64 16
  %34 = load i32, ptr %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %33, align 4
  %36 = load i32, ptr %7, align 4
  %37 = getelementptr [204 x i8], ptr %1, i64 %8
  %38 = getelementptr i8, ptr %37, i64 5100
  %39 = getelementptr inbounds [4 x i8], ptr %38, i64 %6
  store i32 %36, ptr %39, align 4
  store i32 5, ptr @IntGlob, align 4
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func1(i32 noundef %0, i32 noundef %1) #0 {
  %.not.unshifted = xor i32 %0, %1
  %.not.mask = and i32 %.not.unshifted, 255
  %.not = icmp eq i32 %.not.mask, 0
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  br label %5

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4, %3
  %.0 = phi i32 [ 0, %3 ], [ 10000, %4 ]
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
  %8 = getelementptr i8, ptr %1, i64 %4
  %9 = getelementptr i8, ptr %8, i64 1
  %10 = load i8, ptr %9, align 1
  %11 = sext i8 %10 to i32
  %12 = call i32 @Func1(i32 noundef %7, i32 noundef %11)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = add nsw i32 %.011, 1
  br label %16

16:                                               ; preds = %14, %3
  %.1 = phi i32 [ %15, %14 ], [ %.011, %3 ]
  %17 = icmp slt i32 %.1, 2
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
  %24 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #5
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

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
