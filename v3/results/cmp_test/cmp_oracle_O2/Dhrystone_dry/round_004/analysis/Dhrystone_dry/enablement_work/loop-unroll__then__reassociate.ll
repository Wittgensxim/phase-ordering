; ModuleID = 'results\cmp_test\cmp_oracle_O2\Dhrystone_dry\round_003\output.ll'
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

7:                                                ; preds = %16, %0
  %.0 = phi i32 [ 0, %0 ], [ %17, %16 ]
  %8 = icmp samesign ult i32 %.0, 100000000
  br i1 %8, label %9, label %18

9:                                                ; preds = %7
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
  %17 = add nuw nsw i32 %.0, 8
  br label %7, !llvm.loop !7

18:                                               ; preds = %7
  %19 = call i32 @clock() #5
  %20 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #6
  store ptr %20, ptr @PtrGlbNext, align 8
  %21 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #6
  store ptr %21, ptr @PtrGlb, align 8
  %22 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %22, ptr %21, align 8
  %23 = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i32 0, ptr %23, align 8
  %24 = getelementptr inbounds nuw i8, ptr %21, i64 12
  store i32 10001, ptr %24, align 4
  %25 = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i32 40, ptr %25, align 8
  %26 = getelementptr inbounds nuw i8, ptr %21, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %26, ptr noundef nonnull align 1 dereferenceable(31) @.str, i64 31, i1 false) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %4, ptr noundef nonnull align 1 dereferenceable(31) @.str.1, i64 31, i1 false) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %27 = call i32 @clock() #5
  br label %28

28:                                               ; preds = %60, %18
  %.1 = phi i32 [ 0, %18 ], [ %64, %60 ]
  %29 = icmp samesign ult i32 %.1, 100000000
  br i1 %29, label %30, label %65

30:                                               ; preds = %28
  %31 = call i32 @Proc5()
  %32 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %5, ptr noundef nonnull align 1 dereferenceable(31) @.str.2, i64 31, i1 false) #5
  store i32 10000, ptr %3, align 4
  %33 = call i32 @Func2(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %.not = icmp eq i32 %33, 0
  %34 = zext i1 %.not to i32
  store i32 %34, ptr @BoolGlob, align 4
  %.pre = load i32, ptr %1, align 4
  br label %35

35:                                               ; preds = %38, %30
  %36 = phi i32 [ %43, %38 ], [ %.pre, %30 ]
  %37 = icmp slt i32 %36, 3
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = mul nsw i32 %36, 5
  %40 = add nsw i32 %39, -3
  store i32 %40, ptr %2, align 4
  %41 = call i32 @Proc7(i32 noundef %36, i32 noundef 3, ptr noundef nonnull %2)
  %42 = load i32, ptr %1, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %1, align 4
  br label %35, !llvm.loop !9

44:                                               ; preds = %35
  %.lcssa = phi i32 [ %36, %35 ]
  %45 = load i32, ptr %2, align 4
  %46 = call i32 @Proc8(ptr noundef nonnull @Array1Glob, ptr noundef nonnull @Array2Glob, i32 noundef %.lcssa, i32 noundef %45)
  %47 = load ptr, ptr @PtrGlb, align 8
  %48 = call i32 @Proc1(ptr noundef %47)
  br label %49

49:                                               ; preds = %58, %44
  %.01 = phi i8 [ 65, %44 ], [ %59, %58 ]
  %50 = load i8, ptr @Char2Glob, align 1
  %.not1 = icmp sgt i8 %.01, %50
  br i1 %.not1, label %60, label %51

51:                                               ; preds = %49
  %52 = sext i8 %.01 to i32
  %53 = load i32, ptr %3, align 4
  %54 = call i32 @Func1(i32 noundef %52, i32 noundef 67)
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = call i32 @Proc6(i32 noundef 0, ptr noundef nonnull %3)
  br label %58

58:                                               ; preds = %56, %51
  %59 = add i8 %.01, 1
  br label %49, !llvm.loop !10

60:                                               ; preds = %49
  %61 = load i32, ptr %1, align 4
  %62 = mul nsw i32 %61, 3
  store i32 %62, ptr %2, align 4
  %63 = call i32 @Proc2(ptr noundef nonnull %1)
  %64 = add nuw nsw i32 %.1, 1
  br label %28, !llvm.loop !11

65:                                               ; preds = %28
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
  %.pre = load i8, ptr @Char1Glob, align 1
  %3 = icmp eq i8 %.pre, 65
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = add nsw i32 %2, 9
  %6 = load i32, ptr @IntGlob, align 4
  %.neg = sub i32 0, %6
  %7 = add i32 %5, %.neg
  store i32 %7, ptr %0, align 4
  br label %8

8:                                                ; preds = %4, %1
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
  %.pre = load i32, ptr @IntGlob, align 4
  %.pre1 = load ptr, ptr @PtrGlb, align 8
  br label %6

5:                                                ; preds = %1
  store i32 100, ptr @IntGlob, align 4
  br label %6

6:                                                ; preds = %5, %3
  %7 = phi ptr [ null, %5 ], [ %.pre1, %3 ]
  %8 = phi i32 [ 100, %5 ], [ %.pre, %3 ]
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %10 = call i32 @Proc7(i32 noundef 10, i32 noundef %8, ptr noundef nonnull %9)
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
  %5 = add nsw i32 %4, %1
  store i32 %5, ptr %2, align 4
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc8(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = add nsw i32 %2, 5
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [4 x i8], ptr %0, i64 %6
  store i32 %3, ptr %7, align 4
  %8 = add nsw i32 %2, 6
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [4 x i8], ptr %0, i64 %9
  store i32 %3, ptr %10, align 4
  %11 = sext i32 %2 to i64
  %12 = getelementptr [4 x i8], ptr %0, i64 %11
  %13 = getelementptr i8, ptr %12, i64 140
  store i32 %5, ptr %13, align 4
  br label %14

14:                                               ; preds = %4
  br label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds [204 x i8], ptr %1, i64 %6
  %17 = sext i32 %5 to i64
  %18 = getelementptr inbounds [4 x i8], ptr %16, i64 %17
  store i32 %5, ptr %18, align 4
  %19 = add nsw i32 %2, 6
  br label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds [204 x i8], ptr %1, i64 %6
  %22 = sext i32 %19 to i64
  %23 = getelementptr inbounds [4 x i8], ptr %21, i64 %22
  store i32 %5, ptr %23, align 4
  %24 = add nsw i32 %2, 7
  br i1 true, label %29, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds [204 x i8], ptr %1, i64 %6
  %27 = sext i32 %24 to i64
  %28 = getelementptr inbounds [4 x i8], ptr %26, i64 %27
  store i32 %5, ptr %28, align 4
  unreachable

29:                                               ; preds = %20
  %30 = getelementptr inbounds [204 x i8], ptr %1, i64 %6
  %31 = getelementptr [4 x i8], ptr %30, i64 %11
  %32 = getelementptr i8, ptr %31, i64 16
  %33 = load i32, ptr %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %32, align 4
  %35 = load i32, ptr %7, align 4
  %36 = getelementptr [204 x i8], ptr %1, i64 %11
  %37 = getelementptr i8, ptr %36, i64 5100
  %38 = getelementptr inbounds [4 x i8], ptr %37, i64 %6
  store i32 %35, ptr %38, align 4
  store i32 5, ptr @IntGlob, align 4
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 10001) i32 @Func1(i32 noundef %0, i32 noundef %1) #0 {
  %.not.unshifted = xor i32 %1, %0
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
define dso_local range(i32 0, 2) i32 @Func2(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %15, %2
  %.01 = phi i32 [ 1, %2 ], [ %.1, %15 ]
  %4 = icmp slt i32 %.01, 2
  br i1 %4, label %5, label %16

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %7 = load i8, ptr %6, align 1
  %8 = sext i8 %7 to i32
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %10 = load i8, ptr %9, align 1
  %11 = sext i8 %10 to i32
  %12 = call i32 @Func1(i32 noundef %8, i32 noundef %11)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  br label %15

15:                                               ; preds = %14, %5
  %.1 = phi i32 [ 2, %14 ], [ 1, %5 ]
  br label %3, !llvm.loop !12

16:                                               ; preds = %3
  %17 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #5
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %21

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %20, %19
  %.0 = phi i32 [ 0, %20 ], [ 1, %19 ]
  ret i32 %.0
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
