; ModuleID = 'results\paper_full\Dhrystone_fldry\Dhrystone_fldry.ll'
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

7:                                                ; preds = %10, %0
  %8 = phi i32 [ %11, %10 ], [ 0, %0 ]
  %9 = icmp samesign ult i32 %8, 100000000
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = add nuw nsw i32 %8, 1
  br label %7, !llvm.loop !7

12:                                               ; preds = %7
  %13 = call i32 @clock() #6
  %14 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #7
  store ptr %14, ptr @PtrGlbNext, align 8
  %15 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #7
  store ptr %15, ptr @PtrGlb, align 8
  %16 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %16, ptr %15, align 8
  %17 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 0, ptr %17, align 8
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 12
  store i32 10001, ptr %18, align 4
  %19 = getelementptr inbounds nuw i8, ptr %15, i64 16
  store double 4.000000e+01, ptr %19, align 8
  %20 = getelementptr inbounds nuw i8, ptr %15, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %20, ptr noundef nonnull align 1 dereferenceable(31) @.str.1, i64 31, i1 false) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %4, ptr noundef nonnull align 1 dereferenceable(31) @.str.2, i64 31, i1 false) #6
  store double 1.000000e+01, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 3320), align 8
  %21 = call i32 @clock() #6
  br label %22

22:                                               ; preds = %55, %12
  %23 = phi i32 [ %59, %55 ], [ 0, %12 ]
  %24 = icmp samesign ult i32 %23, 100000000
  br i1 %24, label %25, label %60

25:                                               ; preds = %22
  %26 = call i32 @Proc5()
  %27 = call i32 @Proc4()
  store double 2.000000e+00, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %5, ptr noundef nonnull align 1 dereferenceable(31) @.str.3, i64 31, i1 false) #6
  store i32 10000, ptr %3, align 4
  %28 = call i32 @Func2(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %.not = icmp eq i32 %28, 0
  %29 = zext i1 %.not to i32
  store i32 %29, ptr @BoolGlob, align 4
  %.pre = load double, ptr %1, align 8
  br label %30

30:                                               ; preds = %33, %25
  %31 = phi double [ %37, %33 ], [ %.pre, %25 ]
  %32 = fcmp olt double %31, 3.000000e+00
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = call double @llvm.fmuladd.f64(double %31, double 5.000000e+00, double -3.000000e+00)
  store double %34, ptr %2, align 8
  %35 = call i32 @Proc7(double noundef %31, double noundef 3.000000e+00, ptr noundef nonnull %2)
  %36 = load double, ptr %1, align 8
  %37 = fadd double %36, 1.000000e+00
  store double %37, ptr %1, align 8
  br label %30, !llvm.loop !9

38:                                               ; preds = %30
  %39 = load double, ptr %2, align 8
  %40 = call i32 @Proc8(ptr noundef nonnull @Array1Glob, ptr noundef nonnull @Array2Glob, double noundef %31, double noundef %39)
  %41 = load ptr, ptr @PtrGlb, align 8
  %42 = call i32 @Proc1(ptr noundef %41)
  br label %43

43:                                               ; preds = %53, %38
  %44 = phi i8 [ %54, %53 ], [ 65, %38 ]
  %45 = load i8, ptr @Char2Glob, align 1
  %.not1 = icmp sgt i8 %44, %45
  br i1 %.not1, label %55, label %46

46:                                               ; preds = %43
  %47 = sext i8 %44 to i32
  %48 = load i32, ptr %3, align 4
  %49 = call i32 @Func1(i32 noundef %47, i32 noundef 67)
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = call i32 @Proc6(i32 noundef 0, ptr noundef nonnull %3)
  br label %53

53:                                               ; preds = %51, %46
  %54 = add i8 %44, 1
  br label %43, !llvm.loop !10

55:                                               ; preds = %43
  %56 = load double, ptr %1, align 8
  %57 = fmul double %56, 3.000000e+00
  store double %57, ptr %2, align 8
  %58 = call i32 @Proc2(ptr noundef nonnull %1)
  %59 = add nuw nsw i32 %23, 1
  br label %22, !llvm.loop !11

60:                                               ; preds = %22
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
  %.pre = load i8, ptr @Char1Glob, align 1
  br label %4

4:                                                ; preds = %17, %1
  %5 = phi i32 [ %13, %17 ], [ undef, %1 ]
  %6 = phi double [ %14, %17 ], [ %3, %1 ]
  %7 = icmp eq i8 %.pre, 65
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = fadd double %6, -1.000000e+00
  %10 = load double, ptr @IntGlob, align 8
  %11 = fsub double %9, %10
  store double %11, ptr %0, align 8
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi i32 [ 0, %8 ], [ %5, %4 ]
  %14 = phi double [ %9, %8 ], [ %6, %4 ]
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  ret i32 undef

17:                                               ; preds = %12
  br label %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc3(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PtrGlb, align 8
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %2, align 8
  store ptr %4, ptr %0, align 8
  %.pre = load double, ptr @IntGlob, align 8
  %.pre1 = load ptr, ptr @PtrGlb, align 8
  br label %6

5:                                                ; preds = %1
  store double 1.000000e+02, ptr @IntGlob, align 8
  br label %6

6:                                                ; preds = %5, %3
  %7 = phi ptr [ null, %5 ], [ %.pre1, %3 ]
  %8 = phi double [ 1.000000e+02, %5 ], [ %.pre, %3 ]
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %10 = call i32 @Proc7(i32 noundef 10, double noundef %8, ptr noundef nonnull %9)
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
  %9 = sext i32 %6 to i64
  %10 = getelementptr [8 x i8], ptr %0, i64 %9
  %11 = getelementptr i8, ptr %10, i64 8
  store double %3, ptr %11, align 8
  %12 = sext i32 %6 to i64
  %13 = getelementptr [8 x i8], ptr %0, i64 %12
  %14 = getelementptr i8, ptr %13, i64 240
  store double %5, ptr %14, align 8
  br label %15

15:                                               ; preds = %19, %4
  %16 = phi double [ %24, %19 ], [ %5, %4 ]
  %17 = fadd double %5, 1.000000e+00
  %18 = fcmp ugt double %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds [408 x i8], ptr %1, i64 %7
  %21 = fptosi double %16 to i32
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i8], ptr %20, i64 %22
  store double %5, ptr %23, align 8
  %24 = fadd double %16, 1.000000e+00
  br label %15, !llvm.loop !12

25:                                               ; preds = %15
  %26 = getelementptr inbounds [408 x i8], ptr %1, i64 %7
  %27 = sext i32 %6 to i64
  %28 = getelementptr [8 x i8], ptr %26, i64 %27
  %29 = getelementptr i8, ptr %28, i64 -8
  %30 = load double, ptr %29, align 8
  %31 = fadd double %30, 1.000000e+00
  store double %31, ptr %29, align 8
  %32 = load double, ptr %8, align 8
  %33 = sext i32 %6 to i64
  %34 = getelementptr [408 x i8], ptr %1, i64 %33
  %35 = getelementptr i8, ptr %34, i64 8160
  %36 = getelementptr inbounds [8 x i8], ptr %35, i64 %7
  store double %32, ptr %36, align 8
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
  %6 = phi i32 [ 10000, %4 ], [ 0, %3 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func2(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %22, %2
  %4 = phi double [ %23, %22 ], [ 1.000000e+00, %2 ]
  %5 = phi i8 [ %24, %22 ], [ undef, %2 ]
  %6 = fcmp ugt double %4, 1.000000e+00
  br i1 %6, label %25, label %7

7:                                                ; preds = %3
  %8 = fptosi double %4 to i32
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %0, i64 %9
  %11 = load i8, ptr %10, align 1
  %12 = sext i8 %11 to i32
  %13 = sext i32 %8 to i64
  %14 = getelementptr i8, ptr %1, i64 %13
  %15 = getelementptr i8, ptr %14, i64 1
  %16 = load i8, ptr %15, align 1
  %17 = sext i8 %16 to i32
  %18 = call i32 @Func1(i32 noundef %12, i32 noundef %17)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %7
  %21 = fadd double %4, 1.000000e+00
  br label %22

22:                                               ; preds = %20, %7
  %23 = phi double [ %21, %20 ], [ %4, %7 ]
  %24 = phi i8 [ 65, %20 ], [ %5, %7 ]
  br label %3, !llvm.loop !13

25:                                               ; preds = %3
  %26 = icmp sgt i8 %5, 86
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = icmp slt i8 %5, 91
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  br label %30

30:                                               ; preds = %29, %27, %25
  %31 = icmp eq i8 %5, 88
  br i1 %31, label %32, label %33

32:                                               ; preds = %30
  br label %38

33:                                               ; preds = %30
  %34 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #6
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %38

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %37, %36, %32
  %39 = phi i32 [ 0, %37 ], [ 1, %36 ], [ 1, %32 ]
  ret i32 %39
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
  %6 = phi i32 [ 0, %4 ], [ 1, %3 ]
  ret i32 %6
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
