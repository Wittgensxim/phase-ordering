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

7:                                                ; preds = %17, %0
  %.02 = phi i32 [ 0, %0 ], [ %18, %17 ]
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
  %18 = add nuw nsw i32 %.02, 10
  %19 = icmp samesign ult i32 %18, 100000000
  br i1 %19, label %7, label %20, !llvm.loop !7

20:                                               ; preds = %17
  %21 = call i32 @clock() #5
  %22 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #6
  store ptr %22, ptr @PtrGlbNext, align 8
  %23 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #6
  store ptr %23, ptr @PtrGlb, align 8
  %24 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %24, ptr %23, align 8
  %25 = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i32 0, ptr %25, align 8
  %26 = getelementptr inbounds nuw i8, ptr %23, i64 12
  store i32 10001, ptr %26, align 4
  %27 = load ptr, ptr @PtrGlb, align 8
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i32 40, ptr %28, align 8
  %29 = getelementptr inbounds nuw i8, ptr %27, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %29, ptr noundef nonnull align 1 dereferenceable(31) @.str, i64 31, i1 false) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %4, ptr noundef nonnull align 1 dereferenceable(31) @.str.1, i64 31, i1 false) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %30 = call i32 @clock() #5
  br label %31

31:                                               ; preds = %20, %68
  %.18 = phi i32 [ 0, %20 ], [ %69, %68 ]
  %32 = call i32 @Proc5()
  %33 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %5, ptr noundef nonnull align 1 dereferenceable(31) @.str.2, i64 31, i1 false) #5
  store i32 10000, ptr %3, align 4
  %34 = call i32 @Func2(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %.not = icmp eq i32 %34, 0
  %35 = zext i1 %.not to i32
  store i32 %35, ptr @BoolGlob, align 4
  %36 = load i32, ptr %1, align 4
  %37 = icmp slt i32 %36, 3
  br i1 %37, label %.lr.ph, label %47

.lr.ph:                                           ; preds = %31
  br label %38

38:                                               ; preds = %.lr.ph, %38
  %39 = phi i32 [ %36, %.lr.ph ], [ %45, %38 ]
  %40 = mul nsw i32 %39, 5
  %41 = add nsw i32 %40, -3
  store i32 %41, ptr %2, align 4
  %42 = call i32 @Proc7(i32 noundef %39, i32 noundef 3, ptr noundef nonnull %2)
  %43 = load i32, ptr %1, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %1, align 4
  %45 = load i32, ptr %1, align 4
  %46 = icmp slt i32 %45, 3
  br i1 %46, label %38, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %38
  %split = phi i32 [ %45, %38 ]
  br label %47

47:                                               ; preds = %._crit_edge, %31
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %36, %31 ]
  %48 = load i32, ptr %2, align 4
  %49 = call i32 @Proc8(ptr noundef nonnull @Array1Glob, ptr noundef nonnull @Array2Glob, i32 noundef %.lcssa, i32 noundef %48)
  %50 = load ptr, ptr @PtrGlb, align 8
  %51 = call i32 @Proc1(ptr noundef %50)
  %52 = load i8, ptr @Char2Glob, align 1
  %.not13 = icmp sgt i8 65, %52
  br i1 %.not13, label %64, label %.lr.ph6

.lr.ph6:                                          ; preds = %47
  br label %53

53:                                               ; preds = %.lr.ph6, %61
  %.014 = phi i8 [ 65, %.lr.ph6 ], [ %62, %61 ]
  %54 = load i32, ptr %3, align 4
  %55 = sext i8 %.014 to i32
  %56 = call i32 @Func1(i32 noundef %55, i32 noundef 67)
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = call i32 @Proc6(i32 noundef 0, ptr noundef nonnull %3)
  br label %60

60:                                               ; preds = %58, %53
  br label %61

61:                                               ; preds = %60
  %62 = add i8 %.014, 1
  %63 = load i8, ptr @Char2Glob, align 1
  %.not1 = icmp sgt i8 %62, %63
  br i1 %.not1, label %._crit_edge7, label %53, !llvm.loop !10

._crit_edge7:                                     ; preds = %61
  br label %64

64:                                               ; preds = %._crit_edge7, %47
  %65 = load i32, ptr %1, align 4
  %66 = mul nsw i32 %65, 3
  store i32 %66, ptr %2, align 4
  %67 = call i32 @Proc2(ptr noundef nonnull %1)
  br label %68

68:                                               ; preds = %64
  %69 = add nuw nsw i32 %.18, 1
  %70 = icmp samesign ult i32 %69, 100000000
  br i1 %70, label %31, label %71, !llvm.loop !11

71:                                               ; preds = %68
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
  br label %11

11:                                               ; preds = %10
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
  %13 = getelementptr inbounds [204 x i8], ptr %1, i64 %6
  %14 = sext i32 %5 to i64
  %15 = getelementptr inbounds [4 x i8], ptr %13, i64 %14
  store i32 %5, ptr %15, align 4
  br label %16

16:                                               ; preds = %12
  %17 = add nsw i32 %2, 6
  br i1 false, label %23, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds [204 x i8], ptr %1, i64 %6
  %20 = sext i32 %17 to i64
  %21 = getelementptr inbounds [4 x i8], ptr %19, i64 %20
  store i32 %5, ptr %21, align 4
  br label %22

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %22, %16
  %24 = getelementptr inbounds [204 x i8], ptr %1, i64 %6
  %25 = getelementptr [4 x i8], ptr %24, i64 %8
  %26 = getelementptr i8, ptr %25, i64 16
  %27 = load i32, ptr %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %26, align 4
  %29 = load i32, ptr %7, align 4
  %30 = getelementptr [204 x i8], ptr %1, i64 %8
  %31 = getelementptr i8, ptr %30, i64 5100
  %32 = getelementptr inbounds [4 x i8], ptr %31, i64 %6
  store i32 %29, ptr %32, align 4
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
