; ModuleID = 'results\paper_v4\Stanford_Towers\Stanford_Towers.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Towers.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.element = type { i32, i32 }
%struct.complex = type { float, float }

@seed = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c" Error in Towers: %s\0A\00", align 1
@stack = dso_local global [4 x i32] zeroinitializer, align 16
@freelist = dso_local global i32 0, align 4
@cellspace = dso_local global [19 x %struct.element] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [16 x i8] c"out of space   \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"disc size error\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"nothing to pop \00", align 1
@movesdone = dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c" Error in Towers.\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@value = dso_local global float 0.000000e+00, align 4
@fixed = dso_local global float 0.000000e+00, align 4
@floated = dso_local global float 0.000000e+00, align 4
@permarray = dso_local global [11 x i32] zeroinitializer, align 16
@pctr = dso_local global i32 0, align 4
@tree = dso_local global ptr null, align 8
@ima = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imb = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imr = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@rma = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmb = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmr = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@piececount = dso_local global [4 x i32] zeroinitializer, align 16
@class = dso_local global [13 x i32] zeroinitializer, align 16
@piecemax = dso_local global [13 x i32] zeroinitializer, align 16
@puzzl = dso_local global [512 x i32] zeroinitializer, align 16
@p = dso_local global [13 x [512 x i32]] zeroinitializer, align 16
@n = dso_local global i32 0, align 4
@kount = dso_local global i32 0, align 4
@sortlist = dso_local global [5001 x i32] zeroinitializer, align 16
@biggest = dso_local global i32 0, align 4
@littlest = dso_local global i32 0, align 4
@top = dso_local global i32 0, align 4
@z = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@w = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@e = dso_local global [130 x %struct.complex] zeroinitializer, align 16
@zr = dso_local global float 0.000000e+00, align 4
@zi = dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @Initrand() #0 {
  store i32 74755, ptr @seed, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Rand() #0 {
  %1 = load i32, ptr @seed, align 4
  %2 = mul nsw i32 %1, 1309
  %3 = add nsw i32 %2, 13849
  %4 = and i32 %3, 65535
  store i32 %4, ptr @seed, align 4
  %5 = load i32, ptr @seed, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Error(ptr noundef %0) #0 {
  %2 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %0)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Makenull(i32 noundef %0) #0 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [4 x i32], ptr @stack, i64 0, i64 %2
  store i32 0, ptr %3, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Getelement() #0 {
  %1 = load i32, ptr @freelist, align 4
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %10

3:                                                ; preds = %0
  %4 = load i32, ptr @freelist, align 4
  %5 = load i32, ptr @freelist, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [19 x %struct.element], ptr @cellspace, i64 0, i64 %6
  %8 = getelementptr inbounds nuw %struct.element, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr @freelist, align 4
  br label %11

10:                                               ; preds = %0
  call void @Error(ptr noundef @.str.1)
  br label %11

11:                                               ; preds = %10, %3
  %.0 = phi i32 [ %4, %3 ], [ 0, %10 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Push(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds [4 x i32], ptr @stack, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds [4 x i32], ptr @stack, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [19 x %struct.element], ptr @cellspace, i64 0, i64 %11
  %13 = getelementptr inbounds nuw %struct.element, ptr %12, i32 0, i32 0
  %14 = load i32, ptr %13, align 8
  %15 = icmp sle i32 %14, %0
  br i1 %15, label %16, label %17

16:                                               ; preds = %7
  call void @Error(ptr noundef @.str.2)
  br label %17

17:                                               ; preds = %16, %7
  %.1 = phi i32 [ 1, %16 ], [ 0, %7 ]
  br label %18

18:                                               ; preds = %17, %2
  %.0 = phi i32 [ %.1, %17 ], [ 0, %2 ]
  %19 = icmp ne i32 %.0, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %18
  %21 = call i32 @Getelement()
  %22 = sext i32 %1 to i64
  %23 = getelementptr inbounds [4 x i32], ptr @stack, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = sext i32 %21 to i64
  %26 = getelementptr inbounds [19 x %struct.element], ptr @cellspace, i64 0, i64 %25
  %27 = getelementptr inbounds nuw %struct.element, ptr %26, i32 0, i32 1
  store i32 %24, ptr %27, align 4
  %28 = sext i32 %1 to i64
  %29 = getelementptr inbounds [4 x i32], ptr @stack, i64 0, i64 %28
  store i32 %21, ptr %29, align 4
  %30 = sext i32 %21 to i64
  %31 = getelementptr inbounds [19 x %struct.element], ptr @cellspace, i64 0, i64 %30
  %32 = getelementptr inbounds nuw %struct.element, ptr %31, i32 0, i32 0
  store i32 %0, ptr %32, align 8
  br label %33

33:                                               ; preds = %20, %18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Init(i32 noundef %0, i32 noundef %1) #0 {
  call void @Makenull(i32 noundef %0)
  br label %3

3:                                                ; preds = %6, %2
  %.0 = phi i32 [ %1, %2 ], [ %7, %6 ]
  %4 = icmp sge i32 %.0, 1
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  call void @Push(i32 noundef %.0, i32 noundef %0)
  br label %6

6:                                                ; preds = %5
  %7 = add nsw i32 %.0, -1
  br label %3, !llvm.loop !7

8:                                                ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Pop(i32 noundef %0) #0 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [4 x i32], ptr @stack, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %33

6:                                                ; preds = %1
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds [4 x i32], ptr @stack, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [19 x %struct.element], ptr @cellspace, i64 0, i64 %10
  %12 = getelementptr inbounds nuw %struct.element, ptr %11, i32 0, i32 0
  %13 = load i32, ptr %12, align 8
  %14 = sext i32 %0 to i64
  %15 = getelementptr inbounds [4 x i32], ptr @stack, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [19 x %struct.element], ptr @cellspace, i64 0, i64 %17
  %19 = getelementptr inbounds nuw %struct.element, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr @freelist, align 4
  %22 = sext i32 %0 to i64
  %23 = getelementptr inbounds [4 x i32], ptr @stack, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [19 x %struct.element], ptr @cellspace, i64 0, i64 %25
  %27 = getelementptr inbounds nuw %struct.element, ptr %26, i32 0, i32 1
  store i32 %21, ptr %27, align 4
  %28 = sext i32 %0 to i64
  %29 = getelementptr inbounds [4 x i32], ptr @stack, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4
  store i32 %30, ptr @freelist, align 4
  %31 = sext i32 %0 to i64
  %32 = getelementptr inbounds [4 x i32], ptr @stack, i64 0, i64 %31
  store i32 %20, ptr %32, align 4
  br label %35

33:                                               ; preds = %1
  call void @Error(ptr noundef @.str.3)
  br label %34

34:                                               ; preds = %33
  br label %35

35:                                               ; preds = %34, %6
  %.0 = phi i32 [ %13, %6 ], [ 0, %34 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Move(i32 noundef %0, i32 noundef %1) #0 {
  %3 = call i32 @Pop(i32 noundef %0)
  call void @Push(i32 noundef %3, i32 noundef %1)
  %4 = load i32, ptr @movesdone, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @movesdone, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @tower(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 1
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  call void @Move(i32 noundef %0, i32 noundef %1)
  br label %11

6:                                                ; preds = %3
  %7 = sub nsw i32 6, %0
  %8 = sub nsw i32 %7, %1
  %9 = sub nsw i32 %2, 1
  call void @tower(i32 noundef %0, i32 noundef %8, i32 noundef %9)
  call void @Move(i32 noundef %0, i32 noundef %1)
  %10 = sub nsw i32 %2, 1
  call void @tower(i32 noundef %8, i32 noundef %1, i32 noundef %10)
  br label %11

11:                                               ; preds = %6, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Towers() #0 {
  br label %1

1:                                                ; preds = %0
  br label %2

2:                                                ; preds = %1
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @cellspace, i64 12), align 4
  br label %3

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @cellspace, i64 20), align 4
  br label %5

5:                                                ; preds = %4
  br label %6

6:                                                ; preds = %5
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @cellspace, i64 28), align 4
  br label %7

7:                                                ; preds = %6
  br label %8

8:                                                ; preds = %7
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @cellspace, i64 36), align 4
  br label %9

9:                                                ; preds = %8
  br label %10

10:                                               ; preds = %9
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @cellspace, i64 44), align 4
  br label %11

11:                                               ; preds = %10
  br label %12

12:                                               ; preds = %11
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @cellspace, i64 52), align 4
  br label %13

13:                                               ; preds = %12
  br label %14

14:                                               ; preds = %13
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @cellspace, i64 60), align 4
  br label %15

15:                                               ; preds = %14
  br label %16

16:                                               ; preds = %15
  store i32 7, ptr getelementptr inbounds nuw (i8, ptr @cellspace, i64 68), align 4
  br label %17

17:                                               ; preds = %16
  br label %18

18:                                               ; preds = %17
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @cellspace, i64 76), align 4
  br label %19

19:                                               ; preds = %18
  br label %20

20:                                               ; preds = %19
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @cellspace, i64 84), align 4
  br label %21

21:                                               ; preds = %20
  br label %22

22:                                               ; preds = %21
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @cellspace, i64 92), align 4
  br label %23

23:                                               ; preds = %22
  br label %24

24:                                               ; preds = %23
  store i32 11, ptr getelementptr inbounds nuw (i8, ptr @cellspace, i64 100), align 4
  br label %25

25:                                               ; preds = %24
  br label %26

26:                                               ; preds = %25
  store i32 12, ptr getelementptr inbounds nuw (i8, ptr @cellspace, i64 108), align 4
  br label %27

27:                                               ; preds = %26
  br label %28

28:                                               ; preds = %27
  store i32 13, ptr getelementptr inbounds nuw (i8, ptr @cellspace, i64 116), align 4
  br label %29

29:                                               ; preds = %28
  br label %30

30:                                               ; preds = %29
  store i32 14, ptr getelementptr inbounds nuw (i8, ptr @cellspace, i64 124), align 4
  br label %31

31:                                               ; preds = %30
  br label %32

32:                                               ; preds = %31
  store i32 15, ptr getelementptr inbounds nuw (i8, ptr @cellspace, i64 132), align 4
  br label %33

33:                                               ; preds = %32
  br label %34

34:                                               ; preds = %33
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @cellspace, i64 140), align 4
  br label %35

35:                                               ; preds = %34
  br label %36

36:                                               ; preds = %35
  store i32 17, ptr getelementptr inbounds nuw (i8, ptr @cellspace, i64 148), align 4
  br label %37

37:                                               ; preds = %36
  br i1 false, label %38, label %40

38:                                               ; preds = %37
  store i32 18, ptr getelementptr inbounds nuw (i8, ptr @cellspace, i64 156), align 4
  br label %39

39:                                               ; preds = %38
  unreachable

40:                                               ; preds = %37
  store i32 18, ptr @freelist, align 4
  call void @Init(i32 noundef 1, i32 noundef 14)
  call void @Makenull(i32 noundef 2)
  call void @Makenull(i32 noundef 3)
  store i32 0, ptr @movesdone, align 4
  call void @tower(i32 noundef 1, i32 noundef 2, i32 noundef 14)
  %41 = load i32, ptr @movesdone, align 4
  %42 = icmp ne i32 %41, 16383
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %45

45:                                               ; preds = %43, %40
  %46 = load i32, ptr @movesdone, align 4
  %47 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %46)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %.0 = phi i32 [ 0, %0 ], [ %5, %4 ]
  %2 = icmp slt i32 %.0, 100
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  call void @Towers()
  br label %4

4:                                                ; preds = %3
  %5 = add nsw i32 %.0, 1
  br label %1, !llvm.loop !9

6:                                                ; preds = %1
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Towers.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
