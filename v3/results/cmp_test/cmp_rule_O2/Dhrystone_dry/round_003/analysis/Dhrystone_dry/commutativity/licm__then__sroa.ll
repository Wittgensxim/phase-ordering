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

7:                                                ; preds = %9, %0
  %storemerge = phi i32 [ 0, %0 ], [ %10, %9 ]
  %exitcond = icmp ne i32 %storemerge, 100000000
  br i1 %exitcond, label %8, label %11

8:                                                ; preds = %7
  br label %9

9:                                                ; preds = %8
  %10 = add nuw nsw i32 %storemerge, 1
  br label %7, !llvm.loop !7

11:                                               ; preds = %7
  %storemerge.lcssa = phi i32 [ %storemerge, %7 ]
  %12 = call i32 @clock() #5
  %13 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #6
  store ptr %13, ptr @PtrGlbNext, align 8
  %14 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #6
  store ptr %14, ptr @PtrGlb, align 8
  %15 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %15, ptr %14, align 8
  %16 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 0, ptr %16, align 8
  %17 = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 10001, ptr %17, align 4
  %18 = load ptr, ptr @PtrGlb, align 8
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 40, ptr %19, align 8
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %20, ptr noundef nonnull align 1 dereferenceable(31) @.str, i64 31, i1 false) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %4, ptr noundef nonnull align 1 dereferenceable(31) @.str.1, i64 31, i1 false) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %21 = call i32 @clock() #5
  br label %22

22:                                               ; preds = %64, %11
  %storemerge2.lcssa3 = phi i8 [ undef, %11 ], [ %storemerge2.lcssa, %64 ]
  %23 = phi i32 [ undef, %11 ], [ %62, %64 ]
  %storemerge1 = phi i32 [ 0, %11 ], [ %65, %64 ]
  %24 = icmp ult i32 %storemerge1, 100000000
  br i1 %24, label %25, label %66

25:                                               ; preds = %22
  %26 = call i32 @Proc5()
  %27 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %5, ptr noundef nonnull align 1 dereferenceable(31) @.str.2, i64 31, i1 false) #5
  store i32 10000, ptr %3, align 4
  %28 = call i32 @Func2(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %.not = icmp eq i32 %28, 0
  %29 = zext i1 %.not to i32
  store i32 %29, ptr @BoolGlob, align 4
  br label %30

30:                                               ; preds = %33, %25
  %31 = load i32, ptr %1, align 4
  %32 = icmp slt i32 %31, 3
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = mul nsw i32 %31, 5
  %35 = sub nsw i32 %34, 3
  store i32 %35, ptr %2, align 4
  %36 = load i32, ptr %1, align 4
  %37 = call i32 @Proc7(i32 noundef %36, i32 noundef 3, ptr noundef nonnull %2)
  %38 = load i32, ptr %1, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %1, align 4
  br label %30, !llvm.loop !9

40:                                               ; preds = %30
  %.lcssa = phi i32 [ %31, %30 ]
  %41 = load i32, ptr %2, align 4
  %42 = call i32 @Proc8(ptr noundef nonnull @Array1Glob, ptr noundef nonnull @Array2Glob, i32 noundef %.lcssa, i32 noundef %41)
  %43 = load ptr, ptr @PtrGlb, align 8
  %44 = call i32 @Proc1(ptr noundef %43)
  br label %45

45:                                               ; preds = %55, %40
  %storemerge2 = phi i8 [ 65, %40 ], [ %56, %55 ]
  %46 = load i8, ptr @Char2Glob, align 1
  %.not3 = icmp sgt i8 %storemerge2, %46
  br i1 %.not3, label %57, label %47

47:                                               ; preds = %45
  %48 = sext i8 %storemerge2 to i32
  %49 = load i32, ptr %3, align 4
  %50 = call i32 @Func1(i32 noundef %48, i32 noundef 67)
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 @Proc6(i32 noundef 0, ptr noundef nonnull %3)
  br label %54

54:                                               ; preds = %52, %47
  br label %55

55:                                               ; preds = %54
  %56 = add i8 %storemerge2, 1
  br label %45, !llvm.loop !10

57:                                               ; preds = %45
  %storemerge2.lcssa = phi i8 [ %storemerge2, %45 ]
  %58 = load i32, ptr %1, align 4
  %59 = mul nsw i32 3, %58
  store i32 %59, ptr %2, align 4
  %60 = sub nsw i32 %59, 3
  %61 = mul nsw i32 %60, 7
  %62 = sub nsw i32 %61, %58
  %63 = call i32 @Proc2(ptr noundef nonnull %1)
  br label %64

64:                                               ; preds = %57
  %65 = add i32 %storemerge1, 1
  br label %22, !llvm.loop !11

66:                                               ; preds = %22
  %storemerge2.lcssa3.lcssa = phi i8 [ %storemerge2.lcssa3, %22 ]
  %.lcssa1 = phi i32 [ %23, %22 ]
  %storemerge1.lcssa = phi i32 [ %storemerge1, %22 ]
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
  %4 = load i8, ptr @Char1Glob, align 1
  %5 = icmp eq i8 %4, 65
  br label %6

6:                                                ; preds = %18, %1
  %7 = phi i32 [ %14, %18 ], [ undef, %1 ]
  %8 = phi i32 [ %15, %18 ], [ %3, %1 ]
  br i1 %5, label %9, label %13

9:                                                ; preds = %6
  %10 = add nsw i32 %8, -1
  %11 = load i32, ptr @IntGlob, align 4
  %12 = sub nsw i32 %10, %11
  store i32 %12, ptr %0, align 4
  br label %13

13:                                               ; preds = %9, %6
  %14 = phi i32 [ 0, %9 ], [ %7, %6 ]
  %15 = phi i32 [ %10, %9 ], [ %8, %6 ]
  %16 = icmp eq i32 %14, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  %.lcssa2 = phi i32 [ %14, %13 ]
  %.lcssa = phi i32 [ %15, %13 ]
  br label %19

18:                                               ; preds = %13
  br label %6

19:                                               ; preds = %17
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
  %18 = sext i32 %5 to i64
  %19 = getelementptr inbounds [204 x i8], ptr %1, i64 %18
  br label %20

20:                                               ; preds = %24, %4
  %storemerge = phi i32 [ %5, %4 ], [ %25, %24 ]
  %.not = icmp sgt i32 %storemerge, %17
  br i1 %.not, label %26, label %21

21:                                               ; preds = %20
  %22 = sext i32 %storemerge to i64
  %23 = getelementptr inbounds [4 x i8], ptr %19, i64 %22
  store i32 %5, ptr %23, align 4
  br label %24

24:                                               ; preds = %21
  %25 = add nsw i32 %storemerge, 1
  br label %20, !llvm.loop !12

26:                                               ; preds = %20
  %storemerge.lcssa = phi i32 [ %storemerge, %20 ]
  %.lcssa = phi i32 [ %5, %20 ]
  %27 = sext i32 %.lcssa to i64
  %28 = getelementptr inbounds [204 x i8], ptr %1, i64 %27
  %29 = sext i32 %.lcssa to i64
  %30 = getelementptr [4 x i8], ptr %28, i64 %29
  %31 = getelementptr i8, ptr %30, i64 -4
  %32 = load i32, ptr %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %31, align 4
  %34 = sext i32 %5 to i64
  %35 = getelementptr inbounds [4 x i8], ptr %0, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = sext i32 %5 to i64
  %38 = getelementptr [204 x i8], ptr %1, i64 %37
  %39 = getelementptr i8, ptr %38, i64 4080
  %40 = getelementptr inbounds [4 x i8], ptr %39, i64 %34
  store i32 %36, ptr %40, align 4
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
  br label %3

3:                                                ; preds = %21, %2
  %4 = phi i8 [ %22, %21 ], [ undef, %2 ]
  %5 = phi i32 [ %23, %21 ], [ 1, %2 ]
  %6 = icmp slt i32 %5, 2
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = load i8, ptr %9, align 1
  %11 = sext i8 %10 to i32
  %12 = sext i32 %5 to i64
  %13 = getelementptr i8, ptr %1, i64 %12
  %14 = getelementptr i8, ptr %13, i64 1
  %15 = load i8, ptr %14, align 1
  %16 = sext i8 %15 to i32
  %17 = call i32 @Func1(i32 noundef %11, i32 noundef %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %7
  %20 = add nsw i32 %5, 1
  br label %21

21:                                               ; preds = %19, %7
  %22 = phi i8 [ 65, %19 ], [ %4, %7 ]
  %23 = phi i32 [ %20, %19 ], [ %5, %7 ]
  br label %3, !llvm.loop !13

24:                                               ; preds = %3
  %.lcssa2 = phi i8 [ %4, %3 ]
  %.lcssa = phi i32 [ %5, %3 ]
  %25 = icmp sgt i8 %.lcssa2, 86
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = icmp ult i8 %.lcssa2, 91
  br i1 %27, label %28, label %29

28:                                               ; preds = %26
  br label %29

29:                                               ; preds = %28, %26, %24
  %.0 = phi i32 [ 7, %28 ], [ %.lcssa, %26 ], [ %.lcssa, %24 ]
  %30 = icmp eq i8 %.lcssa2, 88
  br i1 %30, label %31, label %32

31:                                               ; preds = %29
  br label %38

32:                                               ; preds = %29
  %33 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #5
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = add nsw i32 %.0, 7
  br label %38

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %35, %31
  %.011 = phi i32 [ 1, %31 ], [ 1, %35 ], [ 0, %37 ]
  ret i32 %.011
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
