; ModuleID = 'results\cmp_test\cmp_rule_O2\Dhrystone_dry\round_002\output.ll'
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

7:                                                ; preds = %0, %8
  %storemerge3 = phi i32 [ 0, %0 ], [ %9, %8 ]
  br label %8

8:                                                ; preds = %7
  %9 = add nuw nsw i32 %storemerge3, 1
  %exitcond = icmp ne i32 %9, 100000000
  br i1 %exitcond, label %7, label %10, !llvm.loop !7

10:                                               ; preds = %8
  %11 = call i32 @clock() #5
  %12 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #6
  store ptr %12, ptr @PtrGlbNext, align 8
  %13 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #6
  store ptr %13, ptr @PtrGlb, align 8
  %14 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %14, ptr %13, align 8
  %15 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 0, ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 10001, ptr %16, align 4
  %17 = load ptr, ptr @PtrGlb, align 8
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i32 40, ptr %18, align 8
  %19 = getelementptr inbounds nuw i8, ptr %17, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %19, ptr noundef nonnull align 1 dereferenceable(31) @.str, i64 31, i1 false) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %4, ptr noundef nonnull align 1 dereferenceable(31) @.str.1, i64 31, i1 false) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %20 = call i32 @clock() #5
  br label %21

21:                                               ; preds = %10, %63
  %.0 = phi i32 [ 0, %10 ], [ %64, %63 ]
  %22 = call i32 @Proc5()
  %23 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %5, ptr noundef nonnull align 1 dereferenceable(31) @.str.2, i64 31, i1 false) #5
  store i32 10000, ptr %3, align 4
  %24 = call i32 @Func2(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %.not = icmp eq i32 %24, 0
  %25 = zext i1 %.not to i32
  store i32 %25, ptr @BoolGlob, align 4
  %26 = load i32, ptr %1, align 4
  %27 = icmp slt i32 %26, 3
  br i1 %27, label %.lr.ph, label %39

.lr.ph:                                           ; preds = %21
  br label %28

28:                                               ; preds = %.lr.ph, %28
  %29 = phi i32 [ 3, %.lr.ph ], [ 3, %28 ]
  %30 = phi i32 [ %26, %.lr.ph ], [ %37, %28 ]
  %31 = mul nsw i32 %30, 5
  %32 = sub nsw i32 %31, %29
  store i32 %32, ptr %2, align 4
  %33 = load i32, ptr %1, align 4
  %34 = call i32 @Proc7(i32 noundef %33, i32 noundef 3, ptr noundef nonnull %2)
  %35 = load i32, ptr %1, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %1, align 4
  %37 = load i32, ptr %1, align 4
  %38 = icmp slt i32 %37, 3
  br i1 %38, label %28, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %28
  %split = phi i32 [ %37, %28 ]
  br label %39

39:                                               ; preds = %._crit_edge, %21
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %26, %21 ]
  %40 = load i32, ptr %2, align 4
  %41 = call i32 @Proc8(ptr noundef nonnull @Array1Glob, ptr noundef nonnull @Array2Glob, i32 noundef %.lcssa, i32 noundef %40)
  %42 = load ptr, ptr @PtrGlb, align 8
  %43 = call i32 @Proc1(ptr noundef %42)
  %44 = load i8, ptr @Char2Glob, align 1
  %.not34 = icmp sgt i8 65, %44
  br i1 %.not34, label %56, label %.lr.ph7

.lr.ph7:                                          ; preds = %39
  br label %45

45:                                               ; preds = %.lr.ph7, %53
  %.014 = phi i8 [ 65, %.lr.ph7 ], [ %54, %53 ]
  %storemerge25 = phi i8 [ 65, %.lr.ph7 ], [ %54, %53 ]
  %46 = sext i8 %storemerge25 to i32
  %47 = load i32, ptr %3, align 4
  %48 = call i32 @Func1(i32 noundef %46, i32 noundef 67)
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = call i32 @Proc6(i32 noundef 0, ptr noundef nonnull %3)
  br label %52

52:                                               ; preds = %50, %45
  br label %53

53:                                               ; preds = %52
  %54 = add i8 %.014, 1
  %55 = load i8, ptr @Char2Glob, align 1
  %.not3 = icmp sgt i8 %54, %55
  br i1 %.not3, label %._crit_edge8, label %45, !llvm.loop !10

._crit_edge8:                                     ; preds = %53
  br label %56

56:                                               ; preds = %._crit_edge8, %39
  %57 = load i32, ptr %1, align 4
  %58 = mul nsw i32 3, %57
  store i32 %58, ptr %2, align 4
  %59 = sub nsw i32 %58, 3
  %60 = mul nsw i32 %59, 7
  %61 = sub nsw i32 %60, %57
  %62 = call i32 @Proc2(ptr noundef nonnull %1)
  br label %63

63:                                               ; preds = %56
  %64 = add i32 %.0, 1
  %65 = icmp ult i32 %64, 100000000
  br i1 %65, label %21, label %66, !llvm.loop !11

66:                                               ; preds = %63
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
  %3 = add nsw i32 %2, 10
  br label %4

4:                                                ; preds = %11, %1
  %.0 = phi i32 [ %3, %1 ], [ %.1, %11 ]
  %5 = load i8, ptr @Char1Glob, align 1
  %6 = icmp eq i8 %5, 65
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = add nsw i32 %.0, -1
  %9 = load i32, ptr @IntGlob, align 4
  %10 = sub nsw i32 %8, %9
  store i32 %10, ptr %0, align 4
  br label %11

11:                                               ; preds = %7, %4
  %.1 = phi i32 [ %8, %7 ], [ %.0, %4 ]
  %12 = icmp eq i32 0, 0
  br i1 %12, label %13, label %4

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %13
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
  store i32 0, ptr %1, align 4
  br label %12

11:                                               ; preds = %7
  store i32 10002, ptr %1, align 4
  br label %12

12:                                               ; preds = %11, %10
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
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds [4 x i8], ptr %0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = sext i32 %2 to i64
  %12 = getelementptr [4 x i8], ptr %0, i64 %11
  %13 = getelementptr i8, ptr %12, i64 24
  store i32 %10, ptr %13, align 4
  %14 = sext i32 %5 to i64
  %15 = getelementptr [4 x i8], ptr %0, i64 %14
  %16 = getelementptr i8, ptr %15, i64 120
  store i32 %5, ptr %16, align 4
  %17 = add nsw i32 %5, 1
  %.not1 = icmp sgt i32 %5, %17
  br i1 %.not1, label %27, label %.lr.ph

.lr.ph:                                           ; preds = %4
  br label %18

18:                                               ; preds = %.lr.ph, %24
  %.0 = phi i32 [ %5, %.lr.ph ], [ %25, %24 ]
  %19 = phi i32 [ %5, %.lr.ph ], [ %5, %24 ]
  %storemerge2 = phi i32 [ %5, %.lr.ph ], [ %25, %24 ]
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [204 x i8], ptr %1, i64 %20
  %22 = sext i32 %storemerge2 to i64
  %23 = getelementptr inbounds [4 x i8], ptr %21, i64 %22
  store i32 %19, ptr %23, align 4
  br label %24

24:                                               ; preds = %18
  %25 = add nsw i32 %.0, 1
  %26 = add nsw i32 %5, 1
  %.not = icmp sgt i32 %25, %26
  br i1 %.not, label %._crit_edge, label %18, !llvm.loop !12

._crit_edge:                                      ; preds = %24
  %split = phi i32 [ %5, %24 ]
  br label %27

27:                                               ; preds = %._crit_edge, %4
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %5, %4 ]
  %28 = sext i32 %.lcssa to i64
  %29 = getelementptr inbounds [204 x i8], ptr %1, i64 %28
  %30 = sext i32 %.lcssa to i64
  %31 = getelementptr [4 x i8], ptr %29, i64 %30
  %32 = getelementptr i8, ptr %31, i64 -4
  %33 = load i32, ptr %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %32, align 4
  %35 = sext i32 %5 to i64
  %36 = getelementptr inbounds [4 x i8], ptr %0, i64 %35
  %37 = load i32, ptr %36, align 4
  %38 = sext i32 %5 to i64
  %39 = getelementptr [204 x i8], ptr %1, i64 %38
  %40 = getelementptr i8, ptr %39, i64 4080
  %41 = getelementptr inbounds [4 x i8], ptr %40, i64 %35
  store i32 %37, ptr %41, align 4
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
  %storemerge = phi i32 [ 10000, %4 ], [ 0, %3 ]
  ret i32 %storemerge
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func2(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp slt i32 1, 2
  br i1 %3, label %.lr.ph, label %21

.lr.ph:                                           ; preds = %2
  br label %4

4:                                                ; preds = %.lr.ph, %19
  %.010 = phi i32 [ 1, %.lr.ph ], [ %.2, %19 ]
  %5 = phi i32 [ 1, %.lr.ph ], [ %.2, %19 ]
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = load i8, ptr %7, align 1
  %9 = sext i8 %8 to i32
  %10 = sext i32 %5 to i64
  %11 = getelementptr i8, ptr %1, i64 %10
  %12 = getelementptr i8, ptr %11, i64 1
  %13 = load i8, ptr %12, align 1
  %14 = sext i8 %13 to i32
  %15 = call i32 @Func1(i32 noundef %9, i32 noundef %14)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = add nsw i32 %.010, 1
  br label %19

19:                                               ; preds = %17, %4
  %.2 = phi i32 [ %18, %17 ], [ %.010, %4 ]
  %20 = icmp slt i32 %.2, 2
  br i1 %20, label %4, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %19
  br label %21

21:                                               ; preds = %._crit_edge, %2
  %.1 = phi i32 [ %.2, %._crit_edge ], [ 1, %2 ]
  %22 = icmp sgt i8 65, 86
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = icmp ult i8 65, 91
  br i1 %24, label %25, label %26

25:                                               ; preds = %23
  br label %26

26:                                               ; preds = %25, %23, %21
  %.3 = phi i32 [ 7, %25 ], [ %.1, %23 ], [ %.1, %21 ]
  %27 = icmp eq i8 65, 88
  br i1 %27, label %28, label %29

28:                                               ; preds = %26
  br label %35

29:                                               ; preds = %26
  %30 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #5
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = add nsw i32 %.3, 7
  br label %35

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %32, %28
  %.0 = phi i32 [ 1, %28 ], [ 1, %32 ], [ 0, %34 ]
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
  %storemerge = phi i32 [ 0, %4 ], [ 1, %3 ]
  ret i32 %storemerge
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
!13 = distinct !{!13, !8}
