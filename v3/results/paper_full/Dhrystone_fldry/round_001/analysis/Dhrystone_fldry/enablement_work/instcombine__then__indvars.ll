; ModuleID = 'results\paper_full\Dhrystone_fldry\round_000\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Dhrystone/fldry.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@Version = dso_local global [4 x i8] c"1.1\00", align 1
@.str = private unnamed_addr constant [53 x i8] c"calculate floating dhrystones using doubles size %d\0A\00", align 1
@PtrGlbNext = dso_local global ptr null, align 8
@PtrGlb = dso_local global ptr null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, SOME STRING\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 1'ST STRING\00", align 1
@Array2Glob = dso_local global [51 x [51 x double]] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 2'ND STRING\00", align 1
@BoolGlob = dso_local global i32 0, align 4
@Array1Glob = dso_local global [51 x double] zeroinitializer, align 16
@Char2Glob = dso_local global i8 0, align 1
@Char1Glob = dso_local global i8 0, align 1
@IntGlob = dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i64 noundef 8) #6
  %4 = call i32 @Proc0()
  ret i32 0
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc0() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca [31 x i8], align 16
  %5 = alloca [31 x i8], align 16
  %6 = call i32 @clock() #6
  br label %7

7:                                                ; preds = %9, %0
  br i1 false, label %8, label %10

8:                                                ; preds = %7
  br label %9

9:                                                ; preds = %8
  br label %7, !llvm.loop !7

10:                                               ; preds = %7
  %11 = call i32 @clock() #6
  %12 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #7
  store ptr %12, ptr @PtrGlbNext, align 8
  %13 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #7
  store ptr %13, ptr @PtrGlb, align 8
  %14 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %14, ptr %13, align 8
  %15 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 0, ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 10001, ptr %16, align 4
  %17 = load ptr, ptr @PtrGlb, align 8
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 16
  store double 4.000000e+01, ptr %18, align 8
  %19 = getelementptr inbounds nuw i8, ptr %17, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %19, ptr noundef nonnull align 1 dereferenceable(31) @.str.1, i64 31, i1 false) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %4, ptr noundef nonnull align 1 dereferenceable(31) @.str.2, i64 31, i1 false) #6
  store double 1.000000e+01, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 3320), align 8
  %20 = call i32 @clock() #6
  br label %21

21:                                               ; preds = %58, %10
  %.1 = phi i32 [ 0, %10 ], [ %59, %58 ]
  %exitcond = icmp ne i32 %.1, 100000000
  br i1 %exitcond, label %22, label %60

22:                                               ; preds = %21
  %23 = call i32 @Proc5()
  %24 = call i32 @Proc4()
  store double 2.000000e+00, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %5, ptr noundef nonnull align 1 dereferenceable(31) @.str.3, i64 31, i1 false) #6
  store i32 10000, ptr %3, align 4
  %25 = call i32 @Func2(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %.not = icmp eq i32 %25, 0
  %26 = zext i1 %.not to i32
  store i32 %26, ptr @BoolGlob, align 4
  br label %27

27:                                               ; preds = %30, %22
  %28 = load double, ptr %1, align 8
  %29 = fcmp olt double %28, 3.000000e+00
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load double, ptr %1, align 8
  %32 = call double @llvm.fmuladd.f64(double %31, double 5.000000e+00, double -3.000000e+00)
  store double %32, ptr %2, align 8
  %33 = call i32 @Proc7(double noundef %31, double noundef 3.000000e+00, ptr noundef nonnull %2)
  %34 = load double, ptr %1, align 8
  %35 = fadd double %34, 1.000000e+00
  store double %35, ptr %1, align 8
  br label %27, !llvm.loop !9

36:                                               ; preds = %27
  %37 = load double, ptr %1, align 8
  %38 = load double, ptr %2, align 8
  %39 = call i32 @Proc8(ptr noundef nonnull @Array1Glob, ptr noundef nonnull @Array2Glob, double noundef %37, double noundef %38)
  %40 = load ptr, ptr @PtrGlb, align 8
  %41 = call i32 @Proc1(ptr noundef %40)
  br label %42

42:                                               ; preds = %52, %36
  %.01 = phi i8 [ 65, %36 ], [ %53, %52 ]
  %43 = load i8, ptr @Char2Glob, align 1
  %.not1 = icmp sgt i8 %.01, %43
  br i1 %.not1, label %54, label %44

44:                                               ; preds = %42
  %45 = load i32, ptr %3, align 4
  %46 = sext i8 %.01 to i32
  %47 = call i32 @Func1(i32 noundef %46, i32 noundef 67)
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = call i32 @Proc6(i32 noundef 0, ptr noundef nonnull %3)
  br label %51

51:                                               ; preds = %49, %44
  br label %52

52:                                               ; preds = %51
  %53 = add i8 %.01, 1
  br label %42, !llvm.loop !10

54:                                               ; preds = %42
  %55 = load double, ptr %1, align 8
  %56 = fmul double %55, 3.000000e+00
  store double %56, ptr %2, align 8
  %57 = call i32 @Proc2(ptr noundef nonnull %1)
  br label %58

58:                                               ; preds = %54
  %59 = add nuw nsw i32 %.1, 1
  br label %21, !llvm.loop !11

60:                                               ; preds = %21
  ret i32 undef
}

declare dso_local i32 @clock() #1

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare dso_local ptr @strcpy(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc1(ptr noundef %0) #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double 5.000000e+00, ptr %2, align 8
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double 5.000000e+00, ptr %4, align 8
  %5 = load ptr, ptr %0, align 8
  store ptr %5, ptr %5, align 8
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc2(ptr noundef %0) #0 {
  %2 = load double, ptr %0, align 8
  %3 = fadd double %2, 1.000000e+01
  br label %4

4:                                                ; preds = %13, %1
  %5 = load i8, ptr @Char1Glob, align 1
  %6 = icmp eq i8 %5, 65
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = fadd double %3, -1.000000e+00
  %9 = load double, ptr @IntGlob, align 8
  %10 = fsub double %8, %9
  store double %10, ptr %0, align 8
  br label %11

11:                                               ; preds = %7, %4
  br i1 true, label %12, label %13

12:                                               ; preds = %11
  br label %14

13:                                               ; preds = %11
  br label %4

14:                                               ; preds = %12
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc3(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PtrGlb, align 8
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %6, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @PtrGlb, align 8
  %5 = load ptr, ptr %4, align 8
  store ptr %5, ptr %0, align 8
  br label %7

6:                                                ; preds = %1
  store double 1.000000e+02, ptr @IntGlob, align 8
  br label %7

7:                                                ; preds = %6, %3
  %8 = load double, ptr @IntGlob, align 8
  %9 = load ptr, ptr @PtrGlb, align 8
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %11 = call i32 @Proc7(i32 noundef 10, double noundef %8, ptr noundef nonnull %10)
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
  %8 = load double, ptr @IntGlob, align 8
  %9 = fcmp ogt double %8, 1.000000e+02
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
define dso_local i32 @Proc7(double noundef %0, double noundef %1, ptr noundef %2) #0 {
  %4 = fadd double %0, 2.000000e+00
  %5 = fadd double %1, %4
  store double %5, ptr %2, align 8
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc8(ptr noundef %0, ptr noundef %1, double noundef %2, double noundef %3) #0 {
  %5 = fadd double %2, 5.000000e+00
  %6 = fptosi double %5 to i32
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [8 x i8], ptr %0, i64 %7
  store double %3, ptr %8, align 8
  %9 = fptosi double %5 to i32
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [8 x i8], ptr %0, i64 %10
  %12 = load double, ptr %11, align 8
  %13 = fptosi double %5 to i32
  %14 = sext i32 %13 to i64
  %15 = getelementptr [8 x i8], ptr %0, i64 %14
  %16 = getelementptr i8, ptr %15, i64 8
  store double %12, ptr %16, align 8
  %17 = fptosi double %5 to i32
  %18 = sext i32 %17 to i64
  %19 = getelementptr [8 x i8], ptr %0, i64 %18
  %20 = getelementptr i8, ptr %19, i64 240
  store double %5, ptr %20, align 8
  br label %21

21:                                               ; preds = %31, %4
  %.0 = phi double [ %5, %4 ], [ %32, %31 ]
  %22 = fadd double %5, 1.000000e+00
  %23 = fcmp ugt double %.0, %22
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = fptosi double %5 to i32
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [408 x i8], ptr %1, i64 %26
  %28 = fptosi double %.0 to i32
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i8], ptr %27, i64 %29
  store double %5, ptr %30, align 8
  br label %31

31:                                               ; preds = %24
  %32 = fadd double %.0, 1.000000e+00
  br label %21, !llvm.loop !12

33:                                               ; preds = %21
  %34 = fptosi double %5 to i32
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [408 x i8], ptr %1, i64 %35
  %37 = fptosi double %5 to i32
  %38 = sext i32 %37 to i64
  %39 = getelementptr [8 x i8], ptr %36, i64 %38
  %40 = getelementptr i8, ptr %39, i64 -8
  %41 = load double, ptr %40, align 8
  %42 = fadd double %41, 1.000000e+00
  store double %42, ptr %40, align 8
  %43 = fptosi double %5 to i32
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [8 x i8], ptr %0, i64 %44
  %46 = load double, ptr %45, align 8
  %47 = fptosi double %5 to i32
  %48 = sext i32 %47 to i64
  %49 = getelementptr [408 x i8], ptr %1, i64 %48
  %50 = getelementptr i8, ptr %49, i64 8160
  %51 = fptosi double %5 to i32
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [8 x i8], ptr %50, i64 %52
  store double %46, ptr %53, align 8
  store double 5.000000e+00, ptr @IntGlob, align 8
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

3:                                                ; preds = %21, %2
  %.01 = phi double [ 1.000000e+00, %2 ], [ %.1, %21 ]
  %4 = fcmp ugt double %.01, 1.000000e+00
  br i1 %4, label %22, label %5

5:                                                ; preds = %3
  %6 = fptosi double %.01 to i32
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = load i8, ptr %8, align 1
  %10 = sext i8 %9 to i32
  %11 = fptosi double %.01 to i32
  %12 = sext i32 %11 to i64
  %13 = getelementptr i8, ptr %1, i64 %12
  %14 = getelementptr i8, ptr %13, i64 1
  %15 = load i8, ptr %14, align 1
  %16 = sext i8 %15 to i32
  %17 = call i32 @Func1(i32 noundef %10, i32 noundef %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = fadd double %.01, 1.000000e+00
  br label %21

21:                                               ; preds = %19, %5
  %.1 = phi double [ %20, %19 ], [ %.01, %5 ]
  br label %3, !llvm.loop !13

22:                                               ; preds = %3
  br label %25

23:                                               ; No predecessors!
  br label %25

24:                                               ; No predecessors!
  br label %25

25:                                               ; preds = %24, %23, %22
  br i1 false, label %26, label %27

26:                                               ; preds = %25
  br label %32

27:                                               ; preds = %25
  %28 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #6
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %32

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31, %30, %26
  %.0 = phi i32 [ poison, %26 ], [ 1, %30 ], [ 0, %31 ]
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
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Dhrystone/fldry.c", directory: "E:/Phase Ordering/v3")
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
