; ModuleID = 'results\cmp_test\cmp_random_O2\Dhrystone_dry\round_002\output.ll'
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

7:                                                ; preds = %7, %0
  br i1 false, label %7, label %8, !llvm.loop !7

8:                                                ; preds = %7
  %9 = call i32 @clock() #5
  %10 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #6
  store ptr %10, ptr @PtrGlbNext, align 8
  %11 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #6
  store ptr %11, ptr @PtrGlb, align 8
  %12 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %12, ptr %11, align 8
  %13 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 0, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 10001, ptr %14, align 4
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 40, ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %11, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %16, ptr noundef nonnull align 1 dereferenceable(31) @.str, i64 31, i1 false) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %4, ptr noundef nonnull align 1 dereferenceable(31) @.str.1, i64 31, i1 false) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %17 = call i32 @clock() #5
  br label %18

18:                                               ; preds = %52, %8
  %19 = phi i32 [ 0, %8 ], [ %56, %52 ]
  %20 = call i32 @Proc5()
  %21 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %5, ptr noundef nonnull align 1 dereferenceable(31) @.str.2, i64 31, i1 false) #5
  store i32 10000, ptr %3, align 4
  %22 = call i32 @Func2(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %.not = icmp eq i32 %22, 0
  %23 = zext i1 %.not to i32
  store i32 %23, ptr @BoolGlob, align 4
  %.pre = load i32, ptr %1, align 4
  %24 = icmp slt i32 %.pre, 3
  br i1 %24, label %.lr.ph, label %33

.lr.ph:                                           ; preds = %18
  br label %25

25:                                               ; preds = %25, %.lr.ph
  %26 = phi i32 [ %.pre, %.lr.ph ], [ %31, %25 ]
  %27 = mul nsw i32 %26, 5
  %28 = add nsw i32 %27, -3
  store i32 %28, ptr %2, align 4
  %29 = call i32 @Proc7(i32 noundef %26, i32 noundef 3, ptr noundef nonnull %2)
  %30 = load i32, ptr %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %1, align 4
  %32 = icmp slt i32 %30, 2
  br i1 %32, label %25, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %25
  br label %33

33:                                               ; preds = %._crit_edge, %18
  %.lcssa = phi i32 [ %31, %._crit_edge ], [ %.pre, %18 ]
  %34 = load i32, ptr %2, align 4
  %35 = call i32 @Proc8(ptr noundef nonnull @Array1Glob, ptr noundef nonnull @Array2Glob, i32 noundef %.lcssa, i32 noundef %34)
  %36 = load ptr, ptr @PtrGlb, align 8
  %37 = call i32 @Proc1(ptr noundef %36)
  %38 = load i8, ptr @Char2Glob, align 1
  %39 = icmp sgt i8 %38, 64
  br i1 %39, label %.lr.ph2, label %52

.lr.ph2:                                          ; preds = %33
  br label %40

40:                                               ; preds = %48, %.lr.ph2
  %41 = phi i32 [ 65, %.lr.ph2 ], [ %50, %48 ]
  %42 = phi i8 [ 65, %.lr.ph2 ], [ %49, %48 ]
  %43 = load i32, ptr %3, align 4
  %44 = call i32 @Func1(i32 noundef %41, i32 noundef 67)
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = call i32 @Proc6(i32 noundef 0, ptr noundef nonnull %3)
  br label %48

48:                                               ; preds = %46, %40
  %49 = add i8 %42, 1
  %50 = sext i8 %49 to i32
  %51 = load i8, ptr @Char2Glob, align 1
  %.not1 = icmp sgt i8 %49, %51
  br i1 %.not1, label %._crit_edge3, label %40, !llvm.loop !10

._crit_edge3:                                     ; preds = %48
  br label %52

52:                                               ; preds = %._crit_edge3, %33
  %53 = load i32, ptr %1, align 4
  %54 = mul nsw i32 %53, 3
  store i32 %54, ptr %2, align 4
  %55 = call i32 @Proc2(ptr noundef nonnull %1)
  %56 = add nuw nsw i32 %19, 1
  %exitcond.not = icmp eq i32 %56, 100000000
  br i1 %exitcond.not, label %57, label %18, !llvm.loop !11

57:                                               ; preds = %52
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
  %.pre = load i8, ptr @Char1Glob, align 1
  br label %4

4:                                                ; preds = %12, %1
  %5 = phi i32 [ undef, %1 ], [ %13, %12 ]
  %6 = phi i32 [ %3, %1 ], [ %14, %12 ]
  %7 = icmp eq i8 %.pre, 65
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = add nsw i32 %6, -1
  %10 = load i32, ptr @IntGlob, align 4
  %11 = sub nsw i32 %9, %10
  store i32 %11, ptr %0, align 4
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi i32 [ 0, %8 ], [ %5, %4 ]
  %14 = phi i32 [ %9, %8 ], [ %6, %4 ]
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %16, label %4

16:                                               ; preds = %12
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
  switch i32 %0, label %14 [
    i32 0, label %6
    i32 10000, label %7
    i32 10001, label %12
    i32 10003, label %13
  ]

6:                                                ; preds = %5
  store i32 0, ptr %1, align 4
  br label %14

7:                                                ; preds = %5
  %8 = load i32, ptr @IntGlob, align 4
  %9 = icmp sgt i32 %8, 100
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 0, ptr %1, align 4
  br label %14

11:                                               ; preds = %7
  store i32 10002, ptr %1, align 4
  br label %14

12:                                               ; preds = %5
  store i32 10000, ptr %1, align 4
  br label %14

13:                                               ; preds = %5
  store i32 10001, ptr %1, align 4
  br label %14

14:                                               ; preds = %13, %12, %11, %10, %6, %5
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
  %15 = getelementptr inbounds [204 x i8], ptr %1, i64 %6
  %16 = sext i32 %5 to i64
  %17 = getelementptr inbounds [4 x i8], ptr %15, i64 %16
  store i32 %5, ptr %17, align 4
  br i1 true, label %18, label %23

18:                                               ; preds = %14
  %19 = getelementptr inbounds [204 x i8], ptr %1, i64 %6
  %20 = sext i32 %2 to i64
  %21 = getelementptr [4 x i8], ptr %19, i64 %20
  %22 = getelementptr i8, ptr %21, i64 24
  store i32 %5, ptr %22, align 4
  br label %23

23:                                               ; preds = %18, %14
  %24 = getelementptr inbounds [204 x i8], ptr %1, i64 %6
  %25 = sext i32 %2 to i64
  %26 = getelementptr [4 x i8], ptr %24, i64 %25
  %27 = getelementptr i8, ptr %26, i64 16
  %28 = load i32, ptr %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %27, align 4
  %30 = load i32, ptr %7, align 4
  %31 = sext i32 %2 to i64
  %32 = getelementptr [204 x i8], ptr %1, i64 %31
  %33 = getelementptr i8, ptr %32, i64 5100
  %34 = getelementptr inbounds [4 x i8], ptr %33, i64 %6
  store i32 %30, ptr %34, align 4
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
  %6 = phi i32 [ 10000, %4 ], [ 0, %3 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func2(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %18, %2
  %4 = phi i8 [ undef, %2 ], [ %20, %18 ]
  %5 = phi i32 [ 1, %2 ], [ %19, %18 ]
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = load i8, ptr %7, align 1
  %9 = sext i8 %8 to i32
  %10 = add nsw i32 %5, 1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  %13 = load i8, ptr %12, align 1
  %14 = sext i8 %13 to i32
  %15 = call i32 @Func1(i32 noundef %9, i32 noundef %14)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %17, %3
  %19 = phi i32 [ %10, %17 ], [ %5, %3 ]
  %20 = phi i8 [ 65, %17 ], [ %4, %3 ]
  %21 = icmp slt i32 %19, 2
  br i1 %21, label %3, label %22, !llvm.loop !12

22:                                               ; preds = %18
  %23 = add i8 %20, -87
  %or.cond = icmp ult i8 %23, 4
  br i1 %or.cond, label %24, label %25

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %24, %22
  %26 = icmp eq i8 %20, 88
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  br label %33

28:                                               ; preds = %25
  %29 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #5
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %33

32:                                               ; preds = %28
  br label %33

33:                                               ; preds = %32, %31, %27
  %34 = phi i32 [ 0, %32 ], [ 1, %31 ], [ 1, %27 ]
  ret i32 %34
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
