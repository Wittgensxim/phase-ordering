; ModuleID = 'results\test_rule2\Stanford_Puzzle\round_008\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Puzzle.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.element = type { i32, i32 }
%struct.complex = type { float, float }

@seed = dso_local global i32 0, align 4
@piecemax = dso_local global [13 x i32] zeroinitializer, align 16
@p = dso_local global [13 x [512 x i32]] zeroinitializer, align 16
@puzzl = dso_local global [512 x i32] zeroinitializer, align 16
@piececount = dso_local global [4 x i32] zeroinitializer, align 16
@class = dso_local global [13 x i32] zeroinitializer, align 16
@kount = dso_local global i32 0, align 4
@n = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Error1 in Puzzle\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Error2 in Puzzle.\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Error3 in Puzzle.\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@value = dso_local global float 0.000000e+00, align 4
@fixed = dso_local global float 0.000000e+00, align 4
@floated = dso_local global float 0.000000e+00, align 4
@permarray = dso_local global [11 x i32] zeroinitializer, align 16
@pctr = dso_local global i32 0, align 4
@tree = dso_local global ptr null, align 8
@stack = dso_local global [4 x i32] zeroinitializer, align 16
@cellspace = dso_local global [19 x %struct.element] zeroinitializer, align 16
@freelist = dso_local global i32 0, align 4
@movesdone = dso_local global i32 0, align 4
@ima = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imb = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imr = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@rma = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmb = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmr = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@sortlist = dso_local global [5001 x i32] zeroinitializer, align 16
@biggest = dso_local global i32 0, align 4
@littlest = dso_local global i32 0, align 4
@top = dso_local global i32 0, align 4
@z = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@w = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@e = dso_local global [130 x %struct.complex] zeroinitializer, align 16
@zr = dso_local global float 0.000000e+00, align 4
@zi = dso_local global float 0.000000e+00, align 4
@str = private unnamed_addr constant [17 x i8] c"Error1 in Puzzle\00", align 1
@str.1 = private unnamed_addr constant [18 x i8] c"Error2 in Puzzle.\00", align 1
@str.2 = private unnamed_addr constant [18 x i8] c"Error3 in Puzzle.\00", align 1

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
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Fit(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %1 to i64
  br label %4

4:                                                ; preds = %17, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %17 ], [ 0, %2 ]
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  %.not = icmp sgt i64 %indvars.iv, %8
  br i1 %.not, label %18, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds [2048 x i8], ptr @p, i64 %5
  %11 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv
  %12 = load i32, ptr %11, align 4
  %.not2 = icmp eq i32 %12, 0
  br i1 %.not2, label %17, label %13

13:                                               ; preds = %9
  %14 = add nsw i64 %3, %indvars.iv
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not3 = icmp eq i32 %16, 0
  br i1 %.not3, label %17, label %18

17:                                               ; preds = %13, %9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %4, !llvm.loop !7

18:                                               ; preds = %13, %4
  %storemerge1 = phi i32 [ 0, %13 ], [ 1, %4 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %1 to i64
  br label %4

4:                                                ; preds = %16, %2
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %16 ], [ 0, %2 ]
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  %.not = icmp sgt i64 %indvars.iv2, %8
  br i1 %.not, label %17, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds [2048 x i8], ptr @p, i64 %5
  %11 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv2
  %12 = load i32, ptr %11, align 4
  %.not4 = icmp eq i32 %12, 0
  br i1 %.not4, label %16, label %13

13:                                               ; preds = %9
  %14 = add nsw i64 %3, %indvars.iv2
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 1, ptr %15, align 4
  br label %16

16:                                               ; preds = %13, %9
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  br label %4, !llvm.loop !9

17:                                               ; preds = %4
  %18 = sext i32 %0 to i64
  %19 = getelementptr inbounds [4 x i8], ptr @class, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, ptr %22, align 4
  %25 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 512)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %26

26:                                               ; preds = %32, %17
  %indvars.iv = phi i64 [ %indvars.iv.next, %32 ], [ %25, %17 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.loopexit, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %29 = load i32, ptr %28, align 4
  %.not3 = icmp eq i32 %29, 0
  br i1 %.not3, label %30, label %32

30:                                               ; preds = %27
  %indvars.iv.lcssa1 = phi i64 [ %indvars.iv, %27 ]
  %31 = trunc nsw i64 %indvars.iv.lcssa1 to i32
  br label %.loopexit

32:                                               ; preds = %27
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %26, !llvm.loop !10

.loopexit.loopexit:                               ; preds = %26
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %30
  %storemerge2 = phi i32 [ %31, %30 ], [ 0, %.loopexit.loopexit ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %1 to i64
  br label %4

4:                                                ; preds = %16, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %16 ], [ 0, %2 ]
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  %.not = icmp sgt i64 %indvars.iv, %8
  br i1 %.not, label %17, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds [2048 x i8], ptr @p, i64 %5
  %11 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv
  %12 = load i32, ptr %11, align 4
  %.not1 = icmp eq i32 %12, 0
  br i1 %.not1, label %16, label %13

13:                                               ; preds = %9
  %14 = add nsw i64 %3, %indvars.iv
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 0, ptr %15, align 4
  br label %16

16:                                               ; preds = %13, %9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %4, !llvm.loop !11

17:                                               ; preds = %4
  %18 = sext i32 %0 to i64
  %19 = getelementptr inbounds [4 x i8], ptr @class, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %22, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  br label %4

4:                                                ; preds = %21, %1
  %indvars.iv = phi i64 [ %indvars.iv.next, %21 ], [ 0, %1 ]
  %exitcond = icmp ne i64 %indvars.iv, 13
  br i1 %exitcond, label %5, label %22

5:                                                ; preds = %4
  %6 = getelementptr inbounds nuw [4 x i8], ptr @class, i64 %indvars.iv
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %21, label %11

11:                                               ; preds = %5
  %12 = trunc nuw nsw i64 %indvars.iv to i32
  %13 = call i32 @Fit(i32 noundef %12, i32 noundef %0)
  %.not2 = icmp eq i32 %13, 0
  br i1 %.not2, label %21, label %14

14:                                               ; preds = %11
  %15 = trunc nuw nsw i64 %indvars.iv to i32
  %16 = call i32 @Place(i32 noundef %15, i32 noundef %0)
  %17 = call i32 @Trial(i32 noundef %16)
  %.not3 = icmp ne i32 %17, 0
  %18 = icmp eq i32 %16, 0
  %or.cond = or i1 %.not3, %18
  br i1 %or.cond, label %22, label %19

19:                                               ; preds = %14
  %20 = trunc nuw nsw i64 %indvars.iv to i32
  call void @Remove(i32 noundef %20, i32 noundef %0)
  br label %21

21:                                               ; preds = %19, %11, %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %4, !llvm.loop !12

22:                                               ; preds = %14, %4
  %storemerge1 = phi i32 [ 1, %14 ], [ 0, %4 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

1:                                                ; preds = %9, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %9 ], [ 0, %0 ]
  br label %2

.preheader31.preheader:                           ; preds = %5
  br label %.preheader31

2:                                                ; preds = %1
  %3 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv
  store i32 1, ptr %3, align 4
  %4 = add nuw nsw i64 %indvars.iv, 1
  br label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %4
  store i32 1, ptr %6, align 4
  %7 = add nuw nsw i64 %indvars.iv, 2
  %8 = icmp samesign ult i64 %7, 512
  br i1 %8, label %9, label %.preheader31.preheader

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %7
  store i32 1, ptr %10, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3
  br label %1, !llvm.loop !13

.preheader31:                                     ; preds = %.preheader31.preheader, %84
  %indvars.iv163 = phi i64 [ 1, %.preheader31.preheader ], [ %indvars.iv.next164, %84 ]
  %exitcond = icmp ne i64 %indvars.iv163, 6
  br i1 %exitcond, label %.preheader30.preheader, label %.preheader28.preheader

.preheader30.preheader:                           ; preds = %.preheader31
  br label %.preheader30

.preheader28.preheader:                           ; preds = %.preheader31
  br label %.preheader28

.preheader30:                                     ; preds = %.preheader30.preheader
  br label %.preheader29.preheader

.preheader29.preheader:                           ; preds = %.preheader30
  br label %.preheader29

.preheader29:                                     ; preds = %.preheader29.preheader
  br label %.preheader29.1

.preheader29.1:                                   ; preds = %.preheader29
  %11 = or disjoint i64 %indvars.iv163, 72
  %12 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %11
  store i32 0, ptr %12, align 4
  br label %.preheader29.2

.preheader29.2:                                   ; preds = %.preheader29.1
  %13 = or disjoint i64 %indvars.iv163, 136
  %14 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %13
  store i32 0, ptr %14, align 4
  br label %.preheader29.3

.preheader29.3:                                   ; preds = %.preheader29.2
  %15 = or disjoint i64 %indvars.iv163, 200
  %16 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %15
  store i32 0, ptr %16, align 4
  br label %.preheader29.4

.preheader29.4:                                   ; preds = %.preheader29.3
  %17 = or disjoint i64 %indvars.iv163, 264
  %18 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %17
  store i32 0, ptr %18, align 4
  br label %.preheader29.5

.preheader29.5:                                   ; preds = %.preheader29.4
  %19 = or disjoint i64 %indvars.iv163, 328
  %20 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %19
  store i32 0, ptr %20, align 4
  br i1 false, label %.loopexit14, label %.preheader30.1

.loopexit14:                                      ; preds = %.preheader29.5, %.preheader29.5.1, %.preheader29.5.2, %.preheader29.5.3, %.preheader29.5.4
  %storemerge1.lcssa6.ph = phi i32 [ 6, %.preheader29.5.4 ], [ 6, %.preheader29.5.3 ], [ 6, %.preheader29.5.2 ], [ 6, %.preheader29.5.1 ], [ 6, %.preheader29.5 ]
  %storemerge47.lcssa5.ph = phi i32 [ 5, %.preheader29.5.4 ], [ 4, %.preheader29.5.3 ], [ 3, %.preheader29.5.2 ], [ 2, %.preheader29.5.1 ], [ 1, %.preheader29.5 ]
  br label %21

21:                                               ; preds = %.loopexit14, %.preheader29.5.5
  %storemerge1.lcssa6 = phi i32 [ %67, %.preheader29.5.5 ], [ %storemerge1.lcssa6.ph, %.loopexit14 ]
  %storemerge47.lcssa5 = phi i32 [ 6, %.preheader29.5.5 ], [ %storemerge47.lcssa5.ph, %.loopexit14 ]
  %22 = shl nuw nsw i32 %storemerge47.lcssa5, 3
  %23 = or disjoint i32 384, %22
  %24 = or disjoint i32 %storemerge1.lcssa6, %23
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %25
  store i32 0, ptr %26, align 4
  unreachable

.preheader30.1:                                   ; preds = %.preheader29.5
  br label %.preheader29.preheader.1

.preheader29.preheader.1:                         ; preds = %.preheader30.1
  br label %.preheader29.17

.preheader29.17:                                  ; preds = %.preheader29.preheader.1
  br label %.preheader29.1.1

.preheader29.1.1:                                 ; preds = %.preheader29.17
  %27 = or disjoint i64 %indvars.iv163, 80
  %28 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %27
  store i32 0, ptr %28, align 4
  br label %.preheader29.2.1

.preheader29.2.1:                                 ; preds = %.preheader29.1.1
  %29 = or disjoint i64 %indvars.iv163, 144
  %30 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %29
  store i32 0, ptr %30, align 4
  br label %.preheader29.3.1

.preheader29.3.1:                                 ; preds = %.preheader29.2.1
  %31 = or disjoint i64 %indvars.iv163, 208
  %32 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %31
  store i32 0, ptr %32, align 4
  br label %.preheader29.4.1

.preheader29.4.1:                                 ; preds = %.preheader29.3.1
  %33 = or disjoint i64 %indvars.iv163, 272
  %34 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %33
  store i32 0, ptr %34, align 4
  br label %.preheader29.5.1

.preheader29.5.1:                                 ; preds = %.preheader29.4.1
  %35 = or disjoint i64 %indvars.iv163, 336
  %36 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %35
  store i32 0, ptr %36, align 4
  br i1 false, label %.loopexit14, label %.preheader30.2

.preheader30.2:                                   ; preds = %.preheader29.5.1
  br label %.preheader29.preheader.2

.preheader29.preheader.2:                         ; preds = %.preheader30.2
  br label %.preheader29.28

.preheader29.28:                                  ; preds = %.preheader29.preheader.2
  br label %.preheader29.1.2

.preheader29.1.2:                                 ; preds = %.preheader29.28
  %37 = or disjoint i64 %indvars.iv163, 88
  %38 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %37
  store i32 0, ptr %38, align 4
  br label %.preheader29.2.2

.preheader29.2.2:                                 ; preds = %.preheader29.1.2
  %39 = or disjoint i64 %indvars.iv163, 152
  %40 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %39
  store i32 0, ptr %40, align 4
  br label %.preheader29.3.2

.preheader29.3.2:                                 ; preds = %.preheader29.2.2
  %41 = or disjoint i64 %indvars.iv163, 216
  %42 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %41
  store i32 0, ptr %42, align 4
  br label %.preheader29.4.2

.preheader29.4.2:                                 ; preds = %.preheader29.3.2
  %43 = or disjoint i64 %indvars.iv163, 280
  %44 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %43
  store i32 0, ptr %44, align 4
  br label %.preheader29.5.2

.preheader29.5.2:                                 ; preds = %.preheader29.4.2
  %45 = or disjoint i64 %indvars.iv163, 344
  %46 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %45
  store i32 0, ptr %46, align 4
  br i1 false, label %.loopexit14, label %.preheader30.3

.preheader30.3:                                   ; preds = %.preheader29.5.2
  br label %.preheader29.preheader.3

.preheader29.preheader.3:                         ; preds = %.preheader30.3
  br label %.preheader29.39

.preheader29.39:                                  ; preds = %.preheader29.preheader.3
  br label %.preheader29.1.3

.preheader29.1.3:                                 ; preds = %.preheader29.39
  %47 = or disjoint i64 %indvars.iv163, 96
  %48 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %47
  store i32 0, ptr %48, align 4
  br label %.preheader29.2.3

.preheader29.2.3:                                 ; preds = %.preheader29.1.3
  %49 = or disjoint i64 %indvars.iv163, 160
  %50 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %49
  store i32 0, ptr %50, align 4
  br label %.preheader29.3.3

.preheader29.3.3:                                 ; preds = %.preheader29.2.3
  %51 = or disjoint i64 %indvars.iv163, 224
  %52 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %51
  store i32 0, ptr %52, align 4
  br label %.preheader29.4.3

.preheader29.4.3:                                 ; preds = %.preheader29.3.3
  %53 = or disjoint i64 %indvars.iv163, 288
  %54 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %53
  store i32 0, ptr %54, align 4
  br label %.preheader29.5.3

.preheader29.5.3:                                 ; preds = %.preheader29.4.3
  %55 = or disjoint i64 %indvars.iv163, 352
  %56 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %55
  store i32 0, ptr %56, align 4
  br i1 false, label %.loopexit14, label %.preheader30.4

.preheader30.4:                                   ; preds = %.preheader29.5.3
  br label %.preheader29.preheader.4

.preheader29.preheader.4:                         ; preds = %.preheader30.4
  br label %.preheader29.410

.preheader29.410:                                 ; preds = %.preheader29.preheader.4
  br label %.preheader29.1.4

.preheader29.1.4:                                 ; preds = %.preheader29.410
  %57 = or disjoint i64 %indvars.iv163, 104
  %58 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %57
  store i32 0, ptr %58, align 4
  br label %.preheader29.2.4

.preheader29.2.4:                                 ; preds = %.preheader29.1.4
  %59 = or disjoint i64 %indvars.iv163, 168
  %60 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %59
  store i32 0, ptr %60, align 4
  br label %.preheader29.3.4

.preheader29.3.4:                                 ; preds = %.preheader29.2.4
  %61 = or disjoint i64 %indvars.iv163, 232
  %62 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %61
  store i32 0, ptr %62, align 4
  br label %.preheader29.4.4

.preheader29.4.4:                                 ; preds = %.preheader29.3.4
  %63 = or disjoint i64 %indvars.iv163, 296
  %64 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %63
  store i32 0, ptr %64, align 4
  br label %.preheader29.5.4

.preheader29.5.4:                                 ; preds = %.preheader29.4.4
  %65 = or disjoint i64 %indvars.iv163, 360
  %66 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %65
  store i32 0, ptr %66, align 4
  br i1 false, label %.loopexit14, label %.preheader30.5

.preheader30.5:                                   ; preds = %.preheader29.5.4
  br i1 false, label %.preheader29.preheader.5, label %84

.preheader29.preheader.5:                         ; preds = %.preheader30.5
  %67 = trunc nuw nsw i64 6 to i32
  br label %.preheader29.511

.preheader29.511:                                 ; preds = %.preheader29.preheader.5
  br label %.preheader29.1.5

.preheader29.1.5:                                 ; preds = %.preheader29.511
  %68 = or disjoint i32 %67, 112
  %69 = zext nneg i32 %68 to i64
  %70 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %69
  store i32 0, ptr %70, align 4
  br label %.preheader29.2.5

.preheader29.2.5:                                 ; preds = %.preheader29.1.5
  %71 = or disjoint i32 %67, 176
  %72 = zext nneg i32 %71 to i64
  %73 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %72
  store i32 0, ptr %73, align 4
  br label %.preheader29.3.5

.preheader29.3.5:                                 ; preds = %.preheader29.2.5
  %74 = or disjoint i32 %67, 240
  %75 = zext nneg i32 %74 to i64
  %76 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %75
  store i32 0, ptr %76, align 4
  br label %.preheader29.4.5

.preheader29.4.5:                                 ; preds = %.preheader29.3.5
  %77 = or disjoint i32 %67, 304
  %78 = zext nneg i32 %77 to i64
  %79 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %78
  store i32 0, ptr %79, align 4
  br label %.preheader29.5.5

.preheader29.5.5:                                 ; preds = %.preheader29.4.5
  %80 = or disjoint i32 %67, 368
  %81 = zext nneg i32 %80 to i64
  %82 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %81
  store i32 0, ptr %82, align 4
  br i1 false, label %21, label %83

83:                                               ; preds = %.preheader29.5.5
  unreachable

84:                                               ; preds = %.preheader30.5
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1
  br label %.preheader31, !llvm.loop !14

.preheader28:                                     ; preds = %.preheader28.preheader, %95
  %indvars.iv169 = phi i64 [ 0, %.preheader28.preheader ], [ %indvars.iv.next170, %95 ]
  %exitcond172 = icmp ne i64 %indvars.iv169, 13
  br i1 %exitcond172, label %.preheader27.preheader, label %.preheader26.preheader

.preheader27.preheader:                           ; preds = %.preheader28
  %85 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %indvars.iv169
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  br label %.preheader26

.preheader27:                                     ; preds = %92, %.preheader27.preheader
  %indvars.iv166 = phi i64 [ %indvars.iv.next167, %92 ], [ 0, %.preheader27.preheader ]
  br label %.preheader27.1

.preheader27.1:                                   ; preds = %.preheader27
  %86 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %indvars.iv169
  %87 = getelementptr inbounds nuw [4 x i8], ptr %86, i64 %indvars.iv166
  store i32 0, ptr %87, align 4
  %88 = add nuw nsw i64 %indvars.iv166, 1
  br label %.preheader27.2

.preheader27.2:                                   ; preds = %.preheader27.1
  %89 = getelementptr inbounds nuw [4 x i8], ptr %85, i64 %88
  store i32 0, ptr %89, align 4
  %90 = add nuw nsw i64 %indvars.iv166, 2
  %91 = icmp samesign ult i64 %90, 512
  br i1 %91, label %92, label %95

92:                                               ; preds = %.preheader27.2
  %93 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %indvars.iv169
  %94 = getelementptr inbounds nuw [4 x i8], ptr %93, i64 %90
  store i32 0, ptr %94, align 4
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 3
  br label %.preheader27, !llvm.loop !15

95:                                               ; preds = %.preheader27.2
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1
  br label %.preheader28, !llvm.loop !16

.preheader26:                                     ; preds = %.preheader26.preheader
  br label %.preheader25.preheader

.preheader25.preheader:                           ; preds = %.preheader26
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader25.preheader
  br label %.preheader24.preheader

.preheader24.preheader:                           ; preds = %.preheader25
  br label %.preheader24

.preheader24:                                     ; preds = %.preheader24.preheader
  br label %.preheader24.1

.preheader24.1:                                   ; preds = %.preheader24
  store i32 1, ptr @p, align 4
  br i1 false, label %.loopexit20, label %.preheader25.1

.loopexit20:                                      ; preds = %.preheader24.1.1.4, %.preheader24.1.4, %.preheader24.1.1.3, %.preheader24.1.3, %.preheader24.1.1.2, %.preheader24.1.228, %.preheader24.1.1.1, %.preheader24.1.124, %.preheader24.1, %.preheader24.1.1
  %storemerge3.lcssa16.ph = phi i32 [ 0, %.preheader24.1.1 ], [ 0, %.preheader24.1 ], [ 1, %.preheader24.1.124 ], [ 1, %.preheader24.1.1.1 ], [ 2, %.preheader24.1.228 ], [ 2, %.preheader24.1.1.2 ], [ 3, %.preheader24.1.3 ], [ 3, %.preheader24.1.1.3 ], [ 4, %.preheader24.1.4 ], [ 4, %.preheader24.1.1.4 ]
  %storemerge44.lcssa15.ph = phi i32 [ 1, %.preheader24.1.1 ], [ 0, %.preheader24.1 ], [ 0, %.preheader24.1.124 ], [ 1, %.preheader24.1.1.1 ], [ 0, %.preheader24.1.228 ], [ 1, %.preheader24.1.1.2 ], [ 0, %.preheader24.1.3 ], [ 1, %.preheader24.1.1.3 ], [ 0, %.preheader24.1.4 ], [ 1, %.preheader24.1.1.4 ]
  br label %96

96:                                               ; preds = %.loopexit20, %.preheader24.1.2
  %storemerge3.lcssa16 = phi i32 [ %storemerge3.lcssa19, %.preheader24.1.2 ], [ %storemerge3.lcssa16.ph, %.loopexit20 ]
  %storemerge44.lcssa15 = phi i32 [ 2, %.preheader24.1.2 ], [ %storemerge44.lcssa15.ph, %.loopexit20 ]
  %97 = shl nuw nsw i32 %storemerge44.lcssa15, 3
  %98 = or disjoint i32 %storemerge3.lcssa16, %97
  %99 = zext nneg i32 %98 to i64
  %100 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %99
  store i32 1, ptr %100, align 4
  unreachable

.preheader25.1:                                   ; preds = %.preheader24.1
  br label %.preheader24.preheader.1

.preheader24.preheader.1:                         ; preds = %.preheader25.1
  br label %.preheader24.117

.preheader24.117:                                 ; preds = %.preheader24.preheader.1
  br label %.preheader24.1.1

.preheader24.1.1:                                 ; preds = %.preheader24.117
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 32), align 4
  br i1 false, label %.loopexit20, label %.preheader25.2

.preheader25.2:                                   ; preds = %.preheader24.1.1
  br i1 false, label %.preheader24.preheader.2, label %.preheader26.1

.preheader24.preheader.2:                         ; preds = %.preheader25.2.4, %.preheader25.2.3, %.preheader25.2.2, %.preheader25.2.1, %.preheader25.2
  %storemerge3.lcssa19 = phi i32 [ 0, %.preheader25.2 ], [ 1, %.preheader25.2.1 ], [ 2, %.preheader25.2.2 ], [ 3, %.preheader25.2.3 ], [ 4, %.preheader25.2.4 ]
  br label %.preheader24.2

.preheader24.2:                                   ; preds = %.preheader24.preheader.2
  br label %.preheader24.1.2

.preheader24.1.2:                                 ; preds = %.preheader24.2
  %101 = or disjoint i32 %storemerge3.lcssa19, 16
  %102 = zext nneg i32 %101 to i64
  %103 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %102
  store i32 1, ptr %103, align 4
  br i1 false, label %96, label %104

104:                                              ; preds = %.preheader24.1.2
  unreachable

.preheader26.1:                                   ; preds = %.preheader25.2
  br label %.preheader25.preheader.1

.preheader25.preheader.1:                         ; preds = %.preheader26.1
  br label %.preheader25.121

.preheader25.121:                                 ; preds = %.preheader25.preheader.1
  br label %.preheader24.preheader.122

.preheader24.preheader.122:                       ; preds = %.preheader25.121
  br label %.preheader24.123

.preheader24.123:                                 ; preds = %.preheader24.preheader.122
  br label %.preheader24.1.124

.preheader24.1.124:                               ; preds = %.preheader24.123
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4), align 4
  br i1 false, label %.loopexit20, label %.preheader25.1.1

.preheader25.1.1:                                 ; preds = %.preheader24.1.124
  br label %.preheader24.preheader.1.1

.preheader24.preheader.1.1:                       ; preds = %.preheader25.1.1
  br label %.preheader24.117.1

.preheader24.117.1:                               ; preds = %.preheader24.preheader.1.1
  br label %.preheader24.1.1.1

.preheader24.1.1.1:                               ; preds = %.preheader24.117.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 36), align 4
  br i1 false, label %.loopexit20, label %.preheader25.2.1

.preheader25.2.1:                                 ; preds = %.preheader24.1.1.1
  br i1 false, label %.preheader24.preheader.2, label %.preheader26.2

.preheader26.2:                                   ; preds = %.preheader25.2.1
  br label %.preheader25.preheader.2

.preheader25.preheader.2:                         ; preds = %.preheader26.2
  br label %.preheader25.225

.preheader25.225:                                 ; preds = %.preheader25.preheader.2
  br label %.preheader24.preheader.226

.preheader24.preheader.226:                       ; preds = %.preheader25.225
  br label %.preheader24.227

.preheader24.227:                                 ; preds = %.preheader24.preheader.226
  br label %.preheader24.1.228

.preheader24.1.228:                               ; preds = %.preheader24.227
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8), align 4
  br i1 false, label %.loopexit20, label %.preheader25.1.2

.preheader25.1.2:                                 ; preds = %.preheader24.1.228
  br label %.preheader24.preheader.1.2

.preheader24.preheader.1.2:                       ; preds = %.preheader25.1.2
  br label %.preheader24.117.2

.preheader24.117.2:                               ; preds = %.preheader24.preheader.1.2
  br label %.preheader24.1.1.2

.preheader24.1.1.2:                               ; preds = %.preheader24.117.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 40), align 4
  br i1 false, label %.loopexit20, label %.preheader25.2.2

.preheader25.2.2:                                 ; preds = %.preheader24.1.1.2
  br i1 false, label %.preheader24.preheader.2, label %.preheader26.3

.preheader26.3:                                   ; preds = %.preheader25.2.2
  br label %.preheader25.preheader.3

.preheader25.preheader.3:                         ; preds = %.preheader26.3
  br label %.preheader25.3

.preheader25.3:                                   ; preds = %.preheader25.preheader.3
  br label %.preheader24.preheader.3

.preheader24.preheader.3:                         ; preds = %.preheader25.3
  br label %.preheader24.3

.preheader24.3:                                   ; preds = %.preheader24.preheader.3
  br label %.preheader24.1.3

.preheader24.1.3:                                 ; preds = %.preheader24.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12), align 4
  br i1 false, label %.loopexit20, label %.preheader25.1.3

.preheader25.1.3:                                 ; preds = %.preheader24.1.3
  br label %.preheader24.preheader.1.3

.preheader24.preheader.1.3:                       ; preds = %.preheader25.1.3
  br label %.preheader24.117.3

.preheader24.117.3:                               ; preds = %.preheader24.preheader.1.3
  br label %.preheader24.1.1.3

.preheader24.1.1.3:                               ; preds = %.preheader24.117.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 44), align 4
  br i1 false, label %.loopexit20, label %.preheader25.2.3

.preheader25.2.3:                                 ; preds = %.preheader24.1.1.3
  br i1 false, label %.preheader24.preheader.2, label %.preheader26.4

.preheader26.4:                                   ; preds = %.preheader25.2.3
  br i1 false, label %.preheader25.preheader.4, label %106

.preheader25.preheader.4:                         ; preds = %.preheader26.4
  br label %.preheader25.4

.preheader25.4:                                   ; preds = %.preheader25.preheader.4
  br label %.preheader24.preheader.4

.preheader24.preheader.4:                         ; preds = %.preheader25.4
  br label %.preheader24.4

.preheader24.4:                                   ; preds = %.preheader24.preheader.4
  br label %.preheader24.1.4

.preheader24.1.4:                                 ; preds = %.preheader24.4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16), align 4
  br i1 false, label %.loopexit20, label %.preheader25.1.4

.preheader25.1.4:                                 ; preds = %.preheader24.1.4
  br label %.preheader24.preheader.1.4

.preheader24.preheader.1.4:                       ; preds = %.preheader25.1.4
  br label %.preheader24.117.4

.preheader24.117.4:                               ; preds = %.preheader24.preheader.1.4
  br label %.preheader24.1.1.4

.preheader24.1.1.4:                               ; preds = %.preheader24.117.4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 48), align 4
  br i1 false, label %.loopexit20, label %.preheader25.2.4

.preheader25.2.4:                                 ; preds = %.preheader24.1.1.4
  br i1 false, label %.preheader24.preheader.2, label %105

105:                                              ; preds = %.preheader25.2.4
  unreachable

106:                                              ; preds = %.preheader26.4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %107

107:                                              ; preds = %106
  br label %.preheader23.preheader

.preheader23.preheader:                           ; preds = %107
  br label %.preheader23

.preheader23.loopexit:                            ; preds = %.preheader22.4
  br i1 false, label %.preheader22.preheader.1, label %123

.preheader22.preheader.1:                         ; preds = %.preheader23.loopexit.2, %.preheader23.loopexit.140, %.preheader23.loopexit
  %storemerge4.lcssa31 = phi i32 [ 0, %.preheader23.loopexit ], [ 1, %.preheader23.loopexit.140 ], [ 2, %.preheader23.loopexit.2 ]
  br label %.preheader22.130

.preheader22.130:                                 ; preds = %.preheader22.preheader.1
  br label %.preheader22.1.1

.preheader22.1.1:                                 ; preds = %.preheader22.130
  %108 = zext nneg i32 %storemerge4.lcssa31 to i64
  %109 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %108
  store i32 1, ptr %109, align 4
  br label %.preheader22.2.1

.preheader22.2.1:                                 ; preds = %.preheader22.1.1
  %110 = or disjoint i32 %storemerge4.lcssa31, 64
  %111 = zext nneg i32 %110 to i64
  %112 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %111
  store i32 1, ptr %112, align 4
  br label %.preheader22.3.1

.preheader22.3.1:                                 ; preds = %.preheader22.2.1
  %113 = or disjoint i32 %storemerge4.lcssa31, 128
  %114 = zext nneg i32 %113 to i64
  %115 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %114
  store i32 1, ptr %115, align 4
  br label %.preheader22.4.1

.preheader22.4.1:                                 ; preds = %.preheader22.3.1
  %116 = or disjoint i32 %storemerge4.lcssa31, 192
  %117 = zext nneg i32 %116 to i64
  %118 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %117
  store i32 1, ptr %118, align 4
  br i1 false, label %119, label %.preheader23.loopexit.1

.preheader23.loopexit.1:                          ; preds = %.preheader22.4.1
  unreachable

.preheader23:                                     ; preds = %.preheader23.preheader
  br label %.preheader22.preheader

.preheader22.preheader:                           ; preds = %.preheader23
  br label %.preheader22

.preheader22:                                     ; preds = %.preheader22.preheader
  br label %.preheader22.1

.preheader22.1:                                   ; preds = %.preheader22
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), align 4
  br label %.preheader22.2

.preheader22.2:                                   ; preds = %.preheader22.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2304), align 4
  br label %.preheader22.3

.preheader22.3:                                   ; preds = %.preheader22.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2560), align 4
  br label %.preheader22.4

.preheader22.4:                                   ; preds = %.preheader22.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2816), align 4
  br i1 false, label %.loopexit33, label %.preheader23.loopexit

.loopexit33:                                      ; preds = %.preheader22.4.2, %.preheader22.4.139, %.preheader22.4
  %storemerge4.lcssa29.ph = phi i32 [ 0, %.preheader22.4 ], [ 1, %.preheader22.4.139 ], [ 2, %.preheader22.4.2 ]
  br label %119

119:                                              ; preds = %.loopexit33, %.preheader22.4.1
  %storemerge4.lcssa29 = phi i32 [ %storemerge4.lcssa31, %.preheader22.4.1 ], [ %storemerge4.lcssa29.ph, %.loopexit33 ]
  %120 = or disjoint i32 %storemerge4.lcssa29, 256
  %121 = zext nneg i32 %120 to i64
  %122 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %121
  store i32 1, ptr %122, align 4
  unreachable

123:                                              ; preds = %.preheader23.loopexit
  br label %.preheader23.preheader.1

.preheader23.preheader.1:                         ; preds = %123
  br label %.preheader23.1

.preheader23.1:                                   ; preds = %.preheader23.preheader.1
  br label %.preheader22.preheader.134

.preheader22.preheader.134:                       ; preds = %.preheader23.1
  br label %.preheader22.135

.preheader22.135:                                 ; preds = %.preheader22.preheader.134
  br label %.preheader22.1.136

.preheader22.1.136:                               ; preds = %.preheader22.135
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2052), align 4
  br label %.preheader22.2.137

.preheader22.2.137:                               ; preds = %.preheader22.1.136
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2308), align 4
  br label %.preheader22.3.138

.preheader22.3.138:                               ; preds = %.preheader22.2.137
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2564), align 4
  br label %.preheader22.4.139

.preheader22.4.139:                               ; preds = %.preheader22.3.138
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2820), align 4
  br i1 false, label %.loopexit33, label %.preheader23.loopexit.140

.preheader23.loopexit.140:                        ; preds = %.preheader22.4.139
  br i1 false, label %.preheader22.preheader.1, label %124

124:                                              ; preds = %.preheader23.loopexit.140
  br i1 false, label %.preheader23.preheader.2, label %126

.preheader23.preheader.2:                         ; preds = %124
  br label %.preheader23.2

.preheader23.2:                                   ; preds = %.preheader23.preheader.2
  br label %.preheader22.preheader.2

.preheader22.preheader.2:                         ; preds = %.preheader23.2
  br label %.preheader22.241

.preheader22.241:                                 ; preds = %.preheader22.preheader.2
  br label %.preheader22.1.2

.preheader22.1.2:                                 ; preds = %.preheader22.241
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2056), align 4
  br label %.preheader22.2.2

.preheader22.2.2:                                 ; preds = %.preheader22.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2312), align 4
  br label %.preheader22.3.2

.preheader22.3.2:                                 ; preds = %.preheader22.2.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2568), align 4
  br label %.preheader22.4.2

.preheader22.4.2:                                 ; preds = %.preheader22.3.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2824), align 4
  br i1 false, label %.loopexit33, label %.preheader23.loopexit.2

.preheader23.loopexit.2:                          ; preds = %.preheader22.4.2
  br i1 false, label %.preheader22.preheader.1, label %125

125:                                              ; preds = %.preheader23.loopexit.2
  unreachable

126:                                              ; preds = %124
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %127

.loopexit4:                                       ; preds = %.preheader21.4
  br i1 false, label %.preheader21.preheader.1, label %134

.preheader21.preheader.1:                         ; preds = %.loopexit4
  br label %.preheader21.146

.preheader21.146:                                 ; preds = %.preheader21.preheader.1
  br label %.preheader20.preheader.147

.preheader20.preheader.147:                       ; preds = %.preheader21.146
  br label %.preheader20.148

.preheader20.148:                                 ; preds = %.preheader20.preheader.147
  br label %.preheader20.1.149

.preheader20.1.149:                               ; preds = %.preheader20.148
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  br label %.preheader20.2.150

.preheader20.2.150:                               ; preds = %.preheader20.1.149
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  br i1 false, label %.loopexit45, label %.preheader21.1.1

.preheader21.1.1:                                 ; preds = %.preheader20.2.150
  br label %.preheader20.preheader.1.1

.preheader20.preheader.1.1:                       ; preds = %.preheader21.1.1
  br label %.preheader20.143.1

.preheader20.143.1:                               ; preds = %.preheader20.preheader.1.1
  br label %.preheader20.1.1.1

.preheader20.1.1.1:                               ; preds = %.preheader20.143.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  br label %.preheader20.2.1.1

.preheader20.2.1.1:                               ; preds = %.preheader20.1.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br i1 false, label %.loopexit45, label %.preheader21.2.1

.preheader21.2.1:                                 ; preds = %.preheader20.2.1.1
  br label %.preheader20.preheader.2.1

.preheader20.preheader.2.1:                       ; preds = %.preheader21.2.1
  br label %.preheader20.244.1

.preheader20.244.1:                               ; preds = %.preheader20.preheader.2.1
  br label %.preheader20.1.2.1

.preheader20.1.2.1:                               ; preds = %.preheader20.244.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  br label %.preheader20.2.2.1

.preheader20.2.2.1:                               ; preds = %.preheader20.1.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br i1 false, label %.loopexit45, label %.preheader21.3.1

.preheader21.3.1:                                 ; preds = %.preheader20.2.2.1
  br label %.preheader20.preheader.3.1

.preheader20.preheader.3.1:                       ; preds = %.preheader21.3.1
  br label %.preheader20.3.1

.preheader20.3.1:                                 ; preds = %.preheader20.preheader.3.1
  br label %.preheader20.1.3.1

.preheader20.1.3.1:                               ; preds = %.preheader20.3.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4192), align 4
  br label %.preheader20.2.3.1

.preheader20.2.3.1:                               ; preds = %.preheader20.1.3.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4448), align 4
  br i1 false, label %.loopexit45, label %.preheader21.4.1

.preheader21.4.1:                                 ; preds = %.preheader20.2.3.1
  br i1 false, label %.preheader20.preheader.4, label %.loopexit4.1

.loopexit4.1:                                     ; preds = %.preheader21.4.1
  unreachable

127:                                              ; preds = %126
  br label %.preheader21.preheader

.preheader21.preheader:                           ; preds = %127
  br label %.preheader21

.preheader21:                                     ; preds = %.preheader21.preheader
  br label %.preheader20.preheader

.preheader20.preheader:                           ; preds = %.preheader21
  br label %.preheader20

.preheader20:                                     ; preds = %.preheader20.preheader
  br label %.preheader20.1

.preheader20.1:                                   ; preds = %.preheader20
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  br label %.preheader20.2

.preheader20.2:                                   ; preds = %.preheader20.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  br i1 false, label %.loopexit45, label %.preheader21.1

.loopexit45:                                      ; preds = %.preheader20.2.3.1, %.preheader20.2.2.1, %.preheader20.2.1.1, %.preheader20.2.150, %.preheader20.2, %.preheader20.2.1, %.preheader20.2.2, %.preheader20.2.3
  %storemerge40.lcssa42.ph = phi i32 [ 3, %.preheader20.2.3 ], [ 2, %.preheader20.2.2 ], [ 1, %.preheader20.2.1 ], [ 0, %.preheader20.2 ], [ 0, %.preheader20.2.150 ], [ 1, %.preheader20.2.1.1 ], [ 2, %.preheader20.2.2.1 ], [ 3, %.preheader20.2.3.1 ]
  br label %128

128:                                              ; preds = %.loopexit45, %.preheader20.2.4
  %storemerge40.lcssa42 = phi i32 [ 4, %.preheader20.2.4 ], [ %storemerge40.lcssa42.ph, %.loopexit45 ]
  %129 = shl nuw nsw i32 %storemerge40.lcssa42, 3
  %130 = or disjoint i32 128, %129
  %131 = zext nneg i32 %130 to i64
  %132 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %131
  store i32 1, ptr %132, align 4
  unreachable

.preheader21.1:                                   ; preds = %.preheader20.2
  br label %.preheader20.preheader.1

.preheader20.preheader.1:                         ; preds = %.preheader21.1
  br label %.preheader20.143

.preheader20.143:                                 ; preds = %.preheader20.preheader.1
  br label %.preheader20.1.1

.preheader20.1.1:                                 ; preds = %.preheader20.143
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  br label %.preheader20.2.1

.preheader20.2.1:                                 ; preds = %.preheader20.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br i1 false, label %.loopexit45, label %.preheader21.2

.preheader21.2:                                   ; preds = %.preheader20.2.1
  br label %.preheader20.preheader.2

.preheader20.preheader.2:                         ; preds = %.preheader21.2
  br label %.preheader20.244

.preheader20.244:                                 ; preds = %.preheader20.preheader.2
  br label %.preheader20.1.2

.preheader20.1.2:                                 ; preds = %.preheader20.244
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  br label %.preheader20.2.2

.preheader20.2.2:                                 ; preds = %.preheader20.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br i1 false, label %.loopexit45, label %.preheader21.3

.preheader21.3:                                   ; preds = %.preheader20.2.2
  br label %.preheader20.preheader.3

.preheader20.preheader.3:                         ; preds = %.preheader21.3
  br label %.preheader20.3

.preheader20.3:                                   ; preds = %.preheader20.preheader.3
  br label %.preheader20.1.3

.preheader20.1.3:                                 ; preds = %.preheader20.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4192), align 4
  br label %.preheader20.2.3

.preheader20.2.3:                                 ; preds = %.preheader20.1.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4448), align 4
  br i1 false, label %.loopexit45, label %.preheader21.4

.preheader21.4:                                   ; preds = %.preheader20.2.3
  br i1 false, label %.preheader20.preheader.4, label %.loopexit4

.preheader20.preheader.4:                         ; preds = %.preheader21.4.1, %.preheader21.4
  br label %.preheader20.4

.preheader20.4:                                   ; preds = %.preheader20.preheader.4
  br label %.preheader20.1.4

.preheader20.1.4:                                 ; preds = %.preheader20.4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4224), align 4
  br label %.preheader20.2.4

.preheader20.2.4:                                 ; preds = %.preheader20.1.4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4480), align 4
  br i1 false, label %128, label %133

133:                                              ; preds = %.preheader20.2.4
  unreachable

134:                                              ; preds = %.loopexit4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %135

135:                                              ; preds = %134
  br label %.preheader19.preheader

.preheader19.preheader:                           ; preds = %135
  br label %.preheader19

.preheader19:                                     ; preds = %.preheader19.preheader
  br label %.preheader18.preheader

.preheader18.preheader:                           ; preds = %.preheader19
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader18.preheader
  br label %.preheader18.1

.preheader18.1:                                   ; preds = %.preheader18
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), align 4
  br i1 false, label %.loopexit56, label %.preheader19.1

.loopexit56:                                      ; preds = %.preheader18.1.3.2, %.preheader18.1.2.2, %.preheader18.1.1.2, %.preheader18.1.264, %.preheader18.1.3.1, %.preheader18.1.2.1, %.preheader18.1.1.1, %.preheader18.1.160, %.preheader18.1, %.preheader18.1.1, %.preheader18.1.2, %.preheader18.1.3
  %storemerge6.lcssa52.ph = phi i32 [ 0, %.preheader18.1.3 ], [ 0, %.preheader18.1.2 ], [ 0, %.preheader18.1.1 ], [ 0, %.preheader18.1 ], [ 1, %.preheader18.1.160 ], [ 1, %.preheader18.1.1.1 ], [ 1, %.preheader18.1.2.1 ], [ 1, %.preheader18.1.3.1 ], [ 2, %.preheader18.1.264 ], [ 2, %.preheader18.1.1.2 ], [ 2, %.preheader18.1.2.2 ], [ 2, %.preheader18.1.3.2 ]
  %storemerge38.lcssa51.ph = phi i32 [ 3, %.preheader18.1.3 ], [ 2, %.preheader18.1.2 ], [ 1, %.preheader18.1.1 ], [ 0, %.preheader18.1 ], [ 0, %.preheader18.1.160 ], [ 1, %.preheader18.1.1.1 ], [ 2, %.preheader18.1.2.1 ], [ 3, %.preheader18.1.3.1 ], [ 0, %.preheader18.1.264 ], [ 1, %.preheader18.1.1.2 ], [ 2, %.preheader18.1.2.2 ], [ 3, %.preheader18.1.3.2 ]
  br label %136

136:                                              ; preds = %.loopexit56, %.preheader18.1.4
  %storemerge6.lcssa52 = phi i32 [ %storemerge6.lcssa55, %.preheader18.1.4 ], [ %storemerge6.lcssa52.ph, %.loopexit56 ]
  %storemerge38.lcssa51 = phi i32 [ 4, %.preheader18.1.4 ], [ %storemerge38.lcssa51.ph, %.loopexit56 ]
  %137 = shl nuw nsw i32 %storemerge38.lcssa51, 3
  %138 = or disjoint i32 %storemerge6.lcssa52, %137
  %139 = zext nneg i32 %138 to i64
  %140 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %139
  store i32 1, ptr %140, align 4
  unreachable

.preheader19.1:                                   ; preds = %.preheader18.1
  br label %.preheader18.preheader.1

.preheader18.preheader.1:                         ; preds = %.preheader19.1
  br label %.preheader18.153

.preheader18.153:                                 ; preds = %.preheader18.preheader.1
  br label %.preheader18.1.1

.preheader18.1.1:                                 ; preds = %.preheader18.153
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6176), align 4
  br i1 false, label %.loopexit56, label %.preheader19.2

.preheader19.2:                                   ; preds = %.preheader18.1.1
  br label %.preheader18.preheader.2

.preheader18.preheader.2:                         ; preds = %.preheader19.2
  br label %.preheader18.2

.preheader18.2:                                   ; preds = %.preheader18.preheader.2
  br label %.preheader18.1.2

.preheader18.1.2:                                 ; preds = %.preheader18.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6208), align 4
  br i1 false, label %.loopexit56, label %.preheader19.3

.preheader19.3:                                   ; preds = %.preheader18.1.2
  br label %.preheader18.preheader.3

.preheader18.preheader.3:                         ; preds = %.preheader19.3
  br label %.preheader18.3

.preheader18.3:                                   ; preds = %.preheader18.preheader.3
  br label %.preheader18.1.3

.preheader18.1.3:                                 ; preds = %.preheader18.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6240), align 4
  br i1 false, label %.loopexit56, label %.preheader19.4

.preheader19.4:                                   ; preds = %.preheader18.1.3
  br i1 false, label %.preheader18.preheader.4, label %145

.preheader18.preheader.4:                         ; preds = %.preheader19.4.2, %.preheader19.4.1, %.preheader19.4
  %storemerge6.lcssa55 = phi i32 [ 0, %.preheader19.4 ], [ 1, %.preheader19.4.1 ], [ 2, %.preheader19.4.2 ]
  br label %.preheader18.4

.preheader18.4:                                   ; preds = %.preheader18.preheader.4
  br label %.preheader18.1.4

.preheader18.1.4:                                 ; preds = %.preheader18.4
  %141 = or disjoint i32 %storemerge6.lcssa55, 32
  %142 = zext nneg i32 %141 to i64
  %143 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %142
  store i32 1, ptr %143, align 4
  br i1 false, label %136, label %144

144:                                              ; preds = %.preheader18.1.4
  unreachable

145:                                              ; preds = %.preheader19.4
  br label %.preheader19.preheader.1

.preheader19.preheader.1:                         ; preds = %145
  br label %.preheader19.157

.preheader19.157:                                 ; preds = %.preheader19.preheader.1
  br label %.preheader18.preheader.158

.preheader18.preheader.158:                       ; preds = %.preheader19.157
  br label %.preheader18.159

.preheader18.159:                                 ; preds = %.preheader18.preheader.158
  br label %.preheader18.1.160

.preheader18.1.160:                               ; preds = %.preheader18.159
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6148), align 4
  br i1 false, label %.loopexit56, label %.preheader19.1.1

.preheader19.1.1:                                 ; preds = %.preheader18.1.160
  br label %.preheader18.preheader.1.1

.preheader18.preheader.1.1:                       ; preds = %.preheader19.1.1
  br label %.preheader18.153.1

.preheader18.153.1:                               ; preds = %.preheader18.preheader.1.1
  br label %.preheader18.1.1.1

.preheader18.1.1.1:                               ; preds = %.preheader18.153.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6180), align 4
  br i1 false, label %.loopexit56, label %.preheader19.2.1

.preheader19.2.1:                                 ; preds = %.preheader18.1.1.1
  br label %.preheader18.preheader.2.1

.preheader18.preheader.2.1:                       ; preds = %.preheader19.2.1
  br label %.preheader18.2.1

.preheader18.2.1:                                 ; preds = %.preheader18.preheader.2.1
  br label %.preheader18.1.2.1

.preheader18.1.2.1:                               ; preds = %.preheader18.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6212), align 4
  br i1 false, label %.loopexit56, label %.preheader19.3.1

.preheader19.3.1:                                 ; preds = %.preheader18.1.2.1
  br label %.preheader18.preheader.3.1

.preheader18.preheader.3.1:                       ; preds = %.preheader19.3.1
  br label %.preheader18.3.1

.preheader18.3.1:                                 ; preds = %.preheader18.preheader.3.1
  br label %.preheader18.1.3.1

.preheader18.1.3.1:                               ; preds = %.preheader18.3.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6244), align 4
  br i1 false, label %.loopexit56, label %.preheader19.4.1

.preheader19.4.1:                                 ; preds = %.preheader18.1.3.1
  br i1 false, label %.preheader18.preheader.4, label %146

146:                                              ; preds = %.preheader19.4.1
  br i1 false, label %.preheader19.preheader.2, label %148

.preheader19.preheader.2:                         ; preds = %146
  br label %.preheader19.261

.preheader19.261:                                 ; preds = %.preheader19.preheader.2
  br label %.preheader18.preheader.262

.preheader18.preheader.262:                       ; preds = %.preheader19.261
  br label %.preheader18.263

.preheader18.263:                                 ; preds = %.preheader18.preheader.262
  br label %.preheader18.1.264

.preheader18.1.264:                               ; preds = %.preheader18.263
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6152), align 4
  br i1 false, label %.loopexit56, label %.preheader19.1.2

.preheader19.1.2:                                 ; preds = %.preheader18.1.264
  br label %.preheader18.preheader.1.2

.preheader18.preheader.1.2:                       ; preds = %.preheader19.1.2
  br label %.preheader18.153.2

.preheader18.153.2:                               ; preds = %.preheader18.preheader.1.2
  br label %.preheader18.1.1.2

.preheader18.1.1.2:                               ; preds = %.preheader18.153.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6184), align 4
  br i1 false, label %.loopexit56, label %.preheader19.2.2

.preheader19.2.2:                                 ; preds = %.preheader18.1.1.2
  br label %.preheader18.preheader.2.2

.preheader18.preheader.2.2:                       ; preds = %.preheader19.2.2
  br label %.preheader18.2.2

.preheader18.2.2:                                 ; preds = %.preheader18.preheader.2.2
  br label %.preheader18.1.2.2

.preheader18.1.2.2:                               ; preds = %.preheader18.2.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6216), align 4
  br i1 false, label %.loopexit56, label %.preheader19.3.2

.preheader19.3.2:                                 ; preds = %.preheader18.1.2.2
  br label %.preheader18.preheader.3.2

.preheader18.preheader.3.2:                       ; preds = %.preheader19.3.2
  br label %.preheader18.3.2

.preheader18.3.2:                                 ; preds = %.preheader18.preheader.3.2
  br label %.preheader18.1.3.2

.preheader18.1.3.2:                               ; preds = %.preheader18.3.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6248), align 4
  br i1 false, label %.loopexit56, label %.preheader19.4.2

.preheader19.4.2:                                 ; preds = %.preheader18.1.3.2
  br i1 false, label %.preheader18.preheader.4, label %147

147:                                              ; preds = %.preheader19.4.2
  unreachable

148:                                              ; preds = %146
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %149

149:                                              ; preds = %148
  br label %.preheader17.preheader

.preheader17.preheader:                           ; preds = %149
  br label %.preheader17

.preheader17.loopexit:                            ; preds = %.preheader16.2
  br i1 false, label %.preheader16.preheader.1, label %159

.preheader16.preheader.1:                         ; preds = %.preheader17.loopexit.4, %.preheader17.loopexit.3, %.preheader17.loopexit.2, %.preheader17.loopexit.174, %.preheader17.loopexit
  %storemerge7.lcssa67 = phi i32 [ 0, %.preheader17.loopexit ], [ 1, %.preheader17.loopexit.174 ], [ 2, %.preheader17.loopexit.2 ], [ 3, %.preheader17.loopexit.3 ], [ 4, %.preheader17.loopexit.4 ]
  br label %.preheader16.166

.preheader16.166:                                 ; preds = %.preheader16.preheader.1
  br label %.preheader16.1.1

.preheader16.1.1:                                 ; preds = %.preheader16.166
  %150 = zext nneg i32 %storemerge7.lcssa67 to i64
  %151 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %150
  store i32 1, ptr %151, align 4
  br label %.preheader16.2.1

.preheader16.2.1:                                 ; preds = %.preheader16.1.1
  %152 = or disjoint i32 %storemerge7.lcssa67, 64
  %153 = zext nneg i32 %152 to i64
  %154 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %153
  store i32 1, ptr %154, align 4
  br i1 false, label %155, label %.preheader17.loopexit.1

.preheader17.loopexit.1:                          ; preds = %.preheader16.2.1
  unreachable

.preheader17:                                     ; preds = %.preheader17.preheader
  br label %.preheader16.preheader

.preheader16.preheader:                           ; preds = %.preheader17
  br label %.preheader16

.preheader16:                                     ; preds = %.preheader16.preheader
  br label %.preheader16.1

.preheader16.1:                                   ; preds = %.preheader16
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), align 4
  br label %.preheader16.2

.preheader16.2:                                   ; preds = %.preheader16.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8448), align 4
  br i1 false, label %.loopexit69, label %.preheader17.loopexit

.loopexit69:                                      ; preds = %.preheader16.2.4, %.preheader16.2.3, %.preheader16.2.2, %.preheader16.2.173, %.preheader16.2
  %storemerge7.lcssa65.ph = phi i32 [ 0, %.preheader16.2 ], [ 1, %.preheader16.2.173 ], [ 2, %.preheader16.2.2 ], [ 3, %.preheader16.2.3 ], [ 4, %.preheader16.2.4 ]
  br label %155

155:                                              ; preds = %.loopexit69, %.preheader16.2.1
  %storemerge7.lcssa65 = phi i32 [ %storemerge7.lcssa67, %.preheader16.2.1 ], [ %storemerge7.lcssa65.ph, %.loopexit69 ]
  %156 = or disjoint i32 %storemerge7.lcssa65, 128
  %157 = zext nneg i32 %156 to i64
  %158 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %157
  store i32 1, ptr %158, align 4
  unreachable

159:                                              ; preds = %.preheader17.loopexit
  br label %.preheader17.preheader.1

.preheader17.preheader.1:                         ; preds = %159
  br label %.preheader17.1

.preheader17.1:                                   ; preds = %.preheader17.preheader.1
  br label %.preheader16.preheader.170

.preheader16.preheader.170:                       ; preds = %.preheader17.1
  br label %.preheader16.171

.preheader16.171:                                 ; preds = %.preheader16.preheader.170
  br label %.preheader16.1.172

.preheader16.1.172:                               ; preds = %.preheader16.171
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8196), align 4
  br label %.preheader16.2.173

.preheader16.2.173:                               ; preds = %.preheader16.1.172
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8452), align 4
  br i1 false, label %.loopexit69, label %.preheader17.loopexit.174

.preheader17.loopexit.174:                        ; preds = %.preheader16.2.173
  br i1 false, label %.preheader16.preheader.1, label %160

160:                                              ; preds = %.preheader17.loopexit.174
  br label %.preheader17.preheader.2

.preheader17.preheader.2:                         ; preds = %160
  br label %.preheader17.2

.preheader17.2:                                   ; preds = %.preheader17.preheader.2
  br label %.preheader16.preheader.2

.preheader16.preheader.2:                         ; preds = %.preheader17.2
  br label %.preheader16.275

.preheader16.275:                                 ; preds = %.preheader16.preheader.2
  br label %.preheader16.1.2

.preheader16.1.2:                                 ; preds = %.preheader16.275
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8200), align 4
  br label %.preheader16.2.2

.preheader16.2.2:                                 ; preds = %.preheader16.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8456), align 4
  br i1 false, label %.loopexit69, label %.preheader17.loopexit.2

.preheader17.loopexit.2:                          ; preds = %.preheader16.2.2
  br i1 false, label %.preheader16.preheader.1, label %161

161:                                              ; preds = %.preheader17.loopexit.2
  br label %.preheader17.preheader.3

.preheader17.preheader.3:                         ; preds = %161
  br label %.preheader17.3

.preheader17.3:                                   ; preds = %.preheader17.preheader.3
  br label %.preheader16.preheader.3

.preheader16.preheader.3:                         ; preds = %.preheader17.3
  br label %.preheader16.3

.preheader16.3:                                   ; preds = %.preheader16.preheader.3
  br label %.preheader16.1.3

.preheader16.1.3:                                 ; preds = %.preheader16.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8204), align 4
  br label %.preheader16.2.3

.preheader16.2.3:                                 ; preds = %.preheader16.1.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8460), align 4
  br i1 false, label %.loopexit69, label %.preheader17.loopexit.3

.preheader17.loopexit.3:                          ; preds = %.preheader16.2.3
  br i1 false, label %.preheader16.preheader.1, label %162

162:                                              ; preds = %.preheader17.loopexit.3
  br i1 false, label %.preheader17.preheader.4, label %164

.preheader17.preheader.4:                         ; preds = %162
  br label %.preheader17.4

.preheader17.4:                                   ; preds = %.preheader17.preheader.4
  br label %.preheader16.preheader.4

.preheader16.preheader.4:                         ; preds = %.preheader17.4
  br label %.preheader16.4

.preheader16.4:                                   ; preds = %.preheader16.preheader.4
  br label %.preheader16.1.4

.preheader16.1.4:                                 ; preds = %.preheader16.4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8208), align 4
  br label %.preheader16.2.4

.preheader16.2.4:                                 ; preds = %.preheader16.1.4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8464), align 4
  br i1 false, label %.loopexit69, label %.preheader17.loopexit.4

.preheader17.loopexit.4:                          ; preds = %.preheader16.2.4
  br i1 false, label %.preheader16.preheader.1, label %163

163:                                              ; preds = %.preheader17.loopexit.4
  unreachable

164:                                              ; preds = %162
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %165

.loopexit3:                                       ; preds = %.preheader15.2
  br i1 false, label %.preheader15.preheader.1, label %172

.preheader15.preheader.1:                         ; preds = %.loopexit3
  br label %.preheader15.180

.preheader15.180:                                 ; preds = %.preheader15.preheader.1
  br label %.preheader14.preheader.181

.preheader14.preheader.181:                       ; preds = %.preheader15.180
  br label %.preheader14.182

.preheader14.182:                                 ; preds = %.preheader14.preheader.181
  br label %.preheader14.1.183

.preheader14.1.183:                               ; preds = %.preheader14.182
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  br label %.preheader14.2.184

.preheader14.2.184:                               ; preds = %.preheader14.1.183
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  br label %.preheader14.3.185

.preheader14.3.185:                               ; preds = %.preheader14.2.184
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  br label %.preheader14.4.186

.preheader14.4.186:                               ; preds = %.preheader14.3.185
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  br i1 false, label %.loopexit79, label %.preheader15.1.1

.preheader15.1.1:                                 ; preds = %.preheader14.4.186
  br label %.preheader14.preheader.1.1

.preheader14.preheader.1.1:                       ; preds = %.preheader15.1.1
  br label %.preheader14.177.1

.preheader14.177.1:                               ; preds = %.preheader14.preheader.1.1
  br label %.preheader14.1.1.1

.preheader14.1.1.1:                               ; preds = %.preheader14.177.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10272), align 4
  br label %.preheader14.2.1.1

.preheader14.2.1.1:                               ; preds = %.preheader14.1.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10528), align 4
  br label %.preheader14.3.1.1

.preheader14.3.1.1:                               ; preds = %.preheader14.2.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10784), align 4
  br label %.preheader14.4.1.1

.preheader14.4.1.1:                               ; preds = %.preheader14.3.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11040), align 4
  br i1 false, label %.loopexit79, label %.preheader15.2.1

.preheader15.2.1:                                 ; preds = %.preheader14.4.1.1
  br i1 false, label %.preheader14.preheader.2, label %.loopexit3.1

.loopexit3.1:                                     ; preds = %.preheader15.2.1
  unreachable

165:                                              ; preds = %164
  br label %.preheader15.preheader

.preheader15.preheader:                           ; preds = %165
  br label %.preheader15

.preheader15:                                     ; preds = %.preheader15.preheader
  br label %.preheader14.preheader

.preheader14.preheader:                           ; preds = %.preheader15
  br label %.preheader14

.preheader14:                                     ; preds = %.preheader14.preheader
  br label %.preheader14.1

.preheader14.1:                                   ; preds = %.preheader14
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  br label %.preheader14.2

.preheader14.2:                                   ; preds = %.preheader14.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  br label %.preheader14.3

.preheader14.3:                                   ; preds = %.preheader14.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  br label %.preheader14.4

.preheader14.4:                                   ; preds = %.preheader14.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  br i1 false, label %.loopexit79, label %.preheader15.1

.loopexit79:                                      ; preds = %.preheader14.4.1.1, %.preheader14.4.186, %.preheader14.4, %.preheader14.4.1
  %storemerge34.lcssa76.ph = phi i32 [ 1, %.preheader14.4.1 ], [ 0, %.preheader14.4 ], [ 0, %.preheader14.4.186 ], [ 1, %.preheader14.4.1.1 ]
  br label %166

166:                                              ; preds = %.loopexit79, %.preheader14.4.2
  %storemerge34.lcssa76 = phi i32 [ 2, %.preheader14.4.2 ], [ %storemerge34.lcssa76.ph, %.loopexit79 ]
  %167 = shl nuw nsw i32 %storemerge34.lcssa76, 3
  %168 = or disjoint i32 256, %167
  %169 = zext nneg i32 %168 to i64
  %170 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %169
  store i32 1, ptr %170, align 4
  unreachable

.preheader15.1:                                   ; preds = %.preheader14.4
  br label %.preheader14.preheader.1

.preheader14.preheader.1:                         ; preds = %.preheader15.1
  br label %.preheader14.177

.preheader14.177:                                 ; preds = %.preheader14.preheader.1
  br label %.preheader14.1.1

.preheader14.1.1:                                 ; preds = %.preheader14.177
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10272), align 4
  br label %.preheader14.2.1

.preheader14.2.1:                                 ; preds = %.preheader14.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10528), align 4
  br label %.preheader14.3.1

.preheader14.3.1:                                 ; preds = %.preheader14.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10784), align 4
  br label %.preheader14.4.1

.preheader14.4.1:                                 ; preds = %.preheader14.3.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11040), align 4
  br i1 false, label %.loopexit79, label %.preheader15.2

.preheader15.2:                                   ; preds = %.preheader14.4.1
  br i1 false, label %.preheader14.preheader.2, label %.loopexit3

.preheader14.preheader.2:                         ; preds = %.preheader15.2.1, %.preheader15.2
  br label %.preheader14.278

.preheader14.278:                                 ; preds = %.preheader14.preheader.2
  br label %.preheader14.1.2

.preheader14.1.2:                                 ; preds = %.preheader14.278
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10304), align 4
  br label %.preheader14.2.2

.preheader14.2.2:                                 ; preds = %.preheader14.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10560), align 4
  br label %.preheader14.3.2

.preheader14.3.2:                                 ; preds = %.preheader14.2.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10816), align 4
  br label %.preheader14.4.2

.preheader14.4.2:                                 ; preds = %.preheader14.3.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11072), align 4
  br i1 false, label %166, label %171

171:                                              ; preds = %.preheader14.4.2
  unreachable

172:                                              ; preds = %.loopexit3
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %173

173:                                              ; preds = %172
  br label %.preheader13.preheader

.preheader13.preheader:                           ; preds = %173
  br label %.preheader13

.preheader13.loopexit:                            ; preds = %.preheader12.1
  br i1 false, label %.preheader12.preheader.1, label %179

.preheader12.preheader.1:                         ; preds = %.preheader13.loopexit.3, %.preheader13.loopexit.2, %.preheader13.loopexit.195, %.preheader13.loopexit
  %storemerge9.lcssa90 = phi i32 [ 0, %.preheader13.loopexit ], [ 1, %.preheader13.loopexit.195 ], [ 2, %.preheader13.loopexit.2 ], [ 3, %.preheader13.loopexit.3 ]
  br label %.preheader12.188

.preheader12.188:                                 ; preds = %.preheader12.preheader.1
  br label %.preheader12.1.1

.preheader12.1.1:                                 ; preds = %.preheader12.188
  %174 = zext nneg i32 %storemerge9.lcssa90 to i64
  %175 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %174
  store i32 1, ptr %175, align 4
  br i1 false, label %176, label %.preheader13.loopexit.1

.preheader13.loopexit.1:                          ; preds = %.preheader12.1.1
  unreachable

.preheader13:                                     ; preds = %.preheader13.preheader
  br label %.preheader12.preheader

.preheader12.preheader:                           ; preds = %.preheader13
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader12.preheader
  br label %.preheader12.1

.preheader12.1:                                   ; preds = %.preheader12
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), align 4
  br i1 false, label %.loopexit91, label %.preheader13.loopexit

.loopexit91:                                      ; preds = %.preheader12.1.3, %.preheader12.1.2, %.preheader12.1.194, %.preheader12.1
  %storemerge9.lcssa87.ph = phi i32 [ 0, %.preheader12.1 ], [ 1, %.preheader12.1.194 ], [ 2, %.preheader12.1.2 ], [ 3, %.preheader12.1.3 ]
  br label %176

176:                                              ; preds = %.loopexit91, %.preheader12.1.1
  %storemerge9.lcssa87 = phi i32 [ %storemerge9.lcssa90, %.preheader12.1.1 ], [ %storemerge9.lcssa87.ph, %.loopexit91 ]
  %177 = zext nneg i32 %storemerge9.lcssa87 to i64
  %178 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %177
  store i32 1, ptr %178, align 4
  unreachable

179:                                              ; preds = %.preheader13.loopexit
  br label %.preheader13.preheader.1

.preheader13.preheader.1:                         ; preds = %179
  br label %.preheader13.1

.preheader13.1:                                   ; preds = %.preheader13.preheader.1
  br label %.preheader12.preheader.192

.preheader12.preheader.192:                       ; preds = %.preheader13.1
  br label %.preheader12.193

.preheader12.193:                                 ; preds = %.preheader12.preheader.192
  br label %.preheader12.1.194

.preheader12.1.194:                               ; preds = %.preheader12.193
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12292), align 4
  br i1 false, label %.loopexit91, label %.preheader13.loopexit.195

.preheader13.loopexit.195:                        ; preds = %.preheader12.1.194
  br i1 false, label %.preheader12.preheader.1, label %180

180:                                              ; preds = %.preheader13.loopexit.195
  br label %.preheader13.preheader.2

.preheader13.preheader.2:                         ; preds = %180
  br label %.preheader13.2

.preheader13.2:                                   ; preds = %.preheader13.preheader.2
  br label %.preheader12.preheader.2

.preheader12.preheader.2:                         ; preds = %.preheader13.2
  br label %.preheader12.2

.preheader12.2:                                   ; preds = %.preheader12.preheader.2
  br label %.preheader12.1.2

.preheader12.1.2:                                 ; preds = %.preheader12.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12296), align 4
  br i1 false, label %.loopexit91, label %.preheader13.loopexit.2

.preheader13.loopexit.2:                          ; preds = %.preheader12.1.2
  br i1 false, label %.preheader12.preheader.1, label %181

181:                                              ; preds = %.preheader13.loopexit.2
  br i1 false, label %.preheader13.preheader.3, label %183

.preheader13.preheader.3:                         ; preds = %181
  br label %.preheader13.3

.preheader13.3:                                   ; preds = %.preheader13.preheader.3
  br label %.preheader12.preheader.3

.preheader12.preheader.3:                         ; preds = %.preheader13.3
  br label %.preheader12.3

.preheader12.3:                                   ; preds = %.preheader12.preheader.3
  br label %.preheader12.1.3

.preheader12.1.3:                                 ; preds = %.preheader12.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12300), align 4
  br i1 false, label %.loopexit91, label %.preheader13.loopexit.3

.preheader13.loopexit.3:                          ; preds = %.preheader12.1.3
  br i1 false, label %.preheader12.preheader.1, label %182

182:                                              ; preds = %.preheader13.loopexit.3
  unreachable

183:                                              ; preds = %181
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %184

.loopexit2:                                       ; preds = %.preheader11.3
  br i1 false, label %.preheader11.preheader.1, label %190

.preheader11.preheader.1:                         ; preds = %.loopexit2
  br label %.preheader11.199

.preheader11.199:                                 ; preds = %.preheader11.preheader.1
  br label %.preheader10.preheader.1100

.preheader10.preheader.1100:                      ; preds = %.preheader11.199
  br label %.preheader10.1101

.preheader10.1101:                                ; preds = %.preheader10.preheader.1100
  br label %.preheader10.1.1102

.preheader10.1.1102:                              ; preds = %.preheader10.1101
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br i1 false, label %.loopexit98, label %.preheader11.1.1

.preheader11.1.1:                                 ; preds = %.preheader10.1.1102
  br label %.preheader10.preheader.1.1

.preheader10.preheader.1.1:                       ; preds = %.preheader11.1.1
  br label %.preheader10.197.1

.preheader10.197.1:                               ; preds = %.preheader10.preheader.1.1
  br label %.preheader10.1.1.1

.preheader10.1.1.1:                               ; preds = %.preheader10.197.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br i1 false, label %.loopexit98, label %.preheader11.2.1

.preheader11.2.1:                                 ; preds = %.preheader10.1.1.1
  br label %.preheader10.preheader.2.1

.preheader10.preheader.2.1:                       ; preds = %.preheader11.2.1
  br label %.preheader10.2.1

.preheader10.2.1:                                 ; preds = %.preheader10.preheader.2.1
  br label %.preheader10.1.2.1

.preheader10.1.2.1:                               ; preds = %.preheader10.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  br i1 false, label %.loopexit98, label %.preheader11.3.1

.preheader11.3.1:                                 ; preds = %.preheader10.1.2.1
  br i1 false, label %.preheader10.preheader.3, label %.loopexit2.1

.loopexit2.1:                                     ; preds = %.preheader11.3.1
  unreachable

184:                                              ; preds = %183
  br label %.preheader11.preheader

.preheader11.preheader:                           ; preds = %184
  br label %.preheader11

.preheader11:                                     ; preds = %.preheader11.preheader
  br label %.preheader10.preheader

.preheader10.preheader:                           ; preds = %.preheader11
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader10.preheader
  br label %.preheader10.1

.preheader10.1:                                   ; preds = %.preheader10
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br i1 false, label %.loopexit98, label %.preheader11.1

.loopexit98:                                      ; preds = %.preheader10.1.2.1, %.preheader10.1.1.1, %.preheader10.1.1102, %.preheader10.1, %.preheader10.1.1, %.preheader10.1.2
  %storemerge30.lcssa96.ph = phi i32 [ 2, %.preheader10.1.2 ], [ 1, %.preheader10.1.1 ], [ 0, %.preheader10.1 ], [ 0, %.preheader10.1.1102 ], [ 1, %.preheader10.1.1.1 ], [ 2, %.preheader10.1.2.1 ]
  br label %185

185:                                              ; preds = %.loopexit98, %.preheader10.1.3
  %storemerge30.lcssa96 = phi i32 [ 3, %.preheader10.1.3 ], [ %storemerge30.lcssa96.ph, %.loopexit98 ]
  %186 = shl nuw nsw i32 %storemerge30.lcssa96, 3
  %187 = zext nneg i32 %186 to i64
  %188 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %187
  store i32 1, ptr %188, align 4
  unreachable

.preheader11.1:                                   ; preds = %.preheader10.1
  br label %.preheader10.preheader.1

.preheader10.preheader.1:                         ; preds = %.preheader11.1
  br label %.preheader10.197

.preheader10.197:                                 ; preds = %.preheader10.preheader.1
  br label %.preheader10.1.1

.preheader10.1.1:                                 ; preds = %.preheader10.197
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br i1 false, label %.loopexit98, label %.preheader11.2

.preheader11.2:                                   ; preds = %.preheader10.1.1
  br label %.preheader10.preheader.2

.preheader10.preheader.2:                         ; preds = %.preheader11.2
  br label %.preheader10.2

.preheader10.2:                                   ; preds = %.preheader10.preheader.2
  br label %.preheader10.1.2

.preheader10.1.2:                                 ; preds = %.preheader10.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  br i1 false, label %.loopexit98, label %.preheader11.3

.preheader11.3:                                   ; preds = %.preheader10.1.2
  br i1 false, label %.preheader10.preheader.3, label %.loopexit2

.preheader10.preheader.3:                         ; preds = %.preheader11.3.1, %.preheader11.3
  br label %.preheader10.3

.preheader10.3:                                   ; preds = %.preheader10.preheader.3
  br label %.preheader10.1.3

.preheader10.1.3:                                 ; preds = %.preheader10.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14432), align 4
  br i1 false, label %185, label %189

189:                                              ; preds = %.preheader10.1.3
  unreachable

190:                                              ; preds = %.loopexit2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %191

.loopexit1:                                       ; preds = %.preheader9.loopexit
  br i1 false, label %.preheader9.preheader.1, label %193

.preheader9.preheader.1:                          ; preds = %.loopexit1
  br label %.preheader9.1

.preheader9.1:                                    ; preds = %.preheader9.preheader.1
  br label %.preheader8.preheader.1105

.preheader8.preheader.1105:                       ; preds = %.preheader9.1
  br label %.preheader8.1106

.preheader8.1106:                                 ; preds = %.preheader8.preheader.1105
  br label %.preheader8.1.1107

.preheader8.1.1107:                               ; preds = %.preheader8.1106
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  br label %.preheader8.2.1108

.preheader8.2.1108:                               ; preds = %.preheader8.1.1107
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  br label %.preheader8.3.1109

.preheader8.3.1109:                               ; preds = %.preheader8.2.1108
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %.loopexit104, label %.preheader9.loopexit.1110

.preheader9.loopexit.1110:                        ; preds = %.preheader8.3.1109
  br i1 false, label %.preheader8.preheader.1, label %.loopexit1.1

.loopexit1.1:                                     ; preds = %.preheader9.loopexit.1110
  unreachable

191:                                              ; preds = %190
  br label %.preheader9.preheader

.preheader9.preheader:                            ; preds = %191
  br label %.preheader9

.preheader9.loopexit:                             ; preds = %.preheader8.3
  br i1 false, label %.preheader8.preheader.1, label %.loopexit1

.preheader8.preheader.1:                          ; preds = %.preheader9.loopexit.1110, %.preheader9.loopexit
  br label %.preheader8.1103

.preheader8.1103:                                 ; preds = %.preheader8.preheader.1
  br label %.preheader8.1.1

.preheader8.1.1:                                  ; preds = %.preheader8.1103
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  br label %.preheader8.2.1

.preheader8.2.1:                                  ; preds = %.preheader8.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  br label %.preheader8.3.1

.preheader8.3.1:                                  ; preds = %.preheader8.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %192, label %.preheader9.loopexit.1

.preheader9.loopexit.1:                           ; preds = %.preheader8.3.1
  unreachable

.preheader9:                                      ; preds = %.preheader9.preheader
  br label %.preheader8.preheader

.preheader8.preheader:                            ; preds = %.preheader9
  br label %.preheader8

.preheader8:                                      ; preds = %.preheader8.preheader
  br label %.preheader8.1

.preheader8.1:                                    ; preds = %.preheader8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  br label %.preheader8.2

.preheader8.2:                                    ; preds = %.preheader8.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  br label %.preheader8.3

.preheader8.3:                                    ; preds = %.preheader8.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %.loopexit104, label %.preheader9.loopexit

.loopexit104:                                     ; preds = %.preheader8.3.1109, %.preheader8.3
  br label %192

192:                                              ; preds = %.loopexit104, %.preheader8.3.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 17152), align 4
  unreachable

193:                                              ; preds = %.loopexit1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %194

194:                                              ; preds = %193
  br label %.preheader7.preheader

.preheader7.preheader:                            ; preds = %194
  br label %.preheader7

.preheader7:                                      ; preds = %.preheader7.preheader
  br label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %.preheader7
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.preheader
  br label %.preheader6.1

.preheader6.1:                                    ; preds = %.preheader6
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), align 4
  br i1 false, label %.loopexit116, label %.preheader7.1

.loopexit116:                                     ; preds = %.preheader6.1.1.2, %.preheader6.1.2124, %.preheader6.1.1.1, %.preheader6.1.1120, %.preheader6.1, %.preheader6.1.1
  %storemerge12.lcssa112.ph = phi i32 [ 0, %.preheader6.1.1 ], [ 0, %.preheader6.1 ], [ 1, %.preheader6.1.1120 ], [ 1, %.preheader6.1.1.1 ], [ 2, %.preheader6.1.2124 ], [ 2, %.preheader6.1.1.2 ]
  %storemerge26.lcssa111.ph = phi i32 [ 1, %.preheader6.1.1 ], [ 0, %.preheader6.1 ], [ 0, %.preheader6.1.1120 ], [ 1, %.preheader6.1.1.1 ], [ 0, %.preheader6.1.2124 ], [ 1, %.preheader6.1.1.2 ]
  br label %195

195:                                              ; preds = %.loopexit116, %.preheader6.1.2
  %storemerge12.lcssa112 = phi i32 [ %storemerge12.lcssa115, %.preheader6.1.2 ], [ %storemerge12.lcssa112.ph, %.loopexit116 ]
  %storemerge26.lcssa111 = phi i32 [ 2, %.preheader6.1.2 ], [ %storemerge26.lcssa111.ph, %.loopexit116 ]
  %196 = shl nuw nsw i32 %storemerge26.lcssa111, 3
  %197 = or disjoint i32 %storemerge12.lcssa112, %196
  %198 = zext nneg i32 %197 to i64
  %199 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %198
  store i32 1, ptr %199, align 4
  unreachable

.preheader7.1:                                    ; preds = %.preheader6.1
  br label %.preheader6.preheader.1

.preheader6.preheader.1:                          ; preds = %.preheader7.1
  br label %.preheader6.1113

.preheader6.1113:                                 ; preds = %.preheader6.preheader.1
  br label %.preheader6.1.1

.preheader6.1.1:                                  ; preds = %.preheader6.1113
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18464), align 4
  br i1 false, label %.loopexit116, label %.preheader7.2

.preheader7.2:                                    ; preds = %.preheader6.1.1
  br i1 false, label %.preheader6.preheader.2, label %204

.preheader6.preheader.2:                          ; preds = %.preheader7.2.2, %.preheader7.2.1, %.preheader7.2
  %storemerge12.lcssa115 = phi i32 [ 0, %.preheader7.2 ], [ 1, %.preheader7.2.1 ], [ 2, %.preheader7.2.2 ]
  br label %.preheader6.2

.preheader6.2:                                    ; preds = %.preheader6.preheader.2
  br label %.preheader6.1.2

.preheader6.1.2:                                  ; preds = %.preheader6.2
  %200 = or disjoint i32 %storemerge12.lcssa115, 16
  %201 = zext nneg i32 %200 to i64
  %202 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %201
  store i32 1, ptr %202, align 4
  br i1 false, label %195, label %203

203:                                              ; preds = %.preheader6.1.2
  unreachable

204:                                              ; preds = %.preheader7.2
  br label %.preheader7.preheader.1

.preheader7.preheader.1:                          ; preds = %204
  br label %.preheader7.1117

.preheader7.1117:                                 ; preds = %.preheader7.preheader.1
  br label %.preheader6.preheader.1118

.preheader6.preheader.1118:                       ; preds = %.preheader7.1117
  br label %.preheader6.1119

.preheader6.1119:                                 ; preds = %.preheader6.preheader.1118
  br label %.preheader6.1.1120

.preheader6.1.1120:                               ; preds = %.preheader6.1119
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18436), align 4
  br i1 false, label %.loopexit116, label %.preheader7.1.1

.preheader7.1.1:                                  ; preds = %.preheader6.1.1120
  br label %.preheader6.preheader.1.1

.preheader6.preheader.1.1:                        ; preds = %.preheader7.1.1
  br label %.preheader6.1113.1

.preheader6.1113.1:                               ; preds = %.preheader6.preheader.1.1
  br label %.preheader6.1.1.1

.preheader6.1.1.1:                                ; preds = %.preheader6.1113.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18468), align 4
  br i1 false, label %.loopexit116, label %.preheader7.2.1

.preheader7.2.1:                                  ; preds = %.preheader6.1.1.1
  br i1 false, label %.preheader6.preheader.2, label %205

205:                                              ; preds = %.preheader7.2.1
  br i1 false, label %.preheader7.preheader.2, label %207

.preheader7.preheader.2:                          ; preds = %205
  br label %.preheader7.2121

.preheader7.2121:                                 ; preds = %.preheader7.preheader.2
  br label %.preheader6.preheader.2122

.preheader6.preheader.2122:                       ; preds = %.preheader7.2121
  br label %.preheader6.2123

.preheader6.2123:                                 ; preds = %.preheader6.preheader.2122
  br label %.preheader6.1.2124

.preheader6.1.2124:                               ; preds = %.preheader6.2123
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18440), align 4
  br i1 false, label %.loopexit116, label %.preheader7.1.2

.preheader7.1.2:                                  ; preds = %.preheader6.1.2124
  br label %.preheader6.preheader.1.2

.preheader6.preheader.1.2:                        ; preds = %.preheader7.1.2
  br label %.preheader6.1113.2

.preheader6.1113.2:                               ; preds = %.preheader6.preheader.1.2
  br label %.preheader6.1.1.2

.preheader6.1.1.2:                                ; preds = %.preheader6.1113.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18472), align 4
  br i1 false, label %.loopexit116, label %.preheader7.2.2

.preheader7.2.2:                                  ; preds = %.preheader6.1.1.2
  br i1 false, label %.preheader6.preheader.2, label %206

206:                                              ; preds = %.preheader7.2.2
  unreachable

207:                                              ; preds = %205
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %208

208:                                              ; preds = %207
  br label %.preheader5.preheader

.preheader5.preheader:                            ; preds = %208
  br label %.preheader5

.preheader5.loopexit:                             ; preds = %.preheader4.2
  br i1 false, label %.preheader4.preheader.1, label %218

.preheader4.preheader.1:                          ; preds = %.preheader5.loopexit.2, %.preheader5.loopexit.1134, %.preheader5.loopexit
  %storemerge13.lcssa127 = phi i32 [ 0, %.preheader5.loopexit ], [ 1, %.preheader5.loopexit.1134 ], [ 2, %.preheader5.loopexit.2 ]
  br label %.preheader4.1126

.preheader4.1126:                                 ; preds = %.preheader4.preheader.1
  br label %.preheader4.1.1

.preheader4.1.1:                                  ; preds = %.preheader4.1126
  %209 = zext nneg i32 %storemerge13.lcssa127 to i64
  %210 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %209
  store i32 1, ptr %210, align 4
  br label %.preheader4.2.1

.preheader4.2.1:                                  ; preds = %.preheader4.1.1
  %211 = or disjoint i32 %storemerge13.lcssa127, 64
  %212 = zext nneg i32 %211 to i64
  %213 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %212
  store i32 1, ptr %213, align 4
  br i1 false, label %214, label %.preheader5.loopexit.1

.preheader5.loopexit.1:                           ; preds = %.preheader4.2.1
  unreachable

.preheader5:                                      ; preds = %.preheader5.preheader
  br label %.preheader4.preheader

.preheader4.preheader:                            ; preds = %.preheader5
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4.preheader
  br label %.preheader4.1

.preheader4.1:                                    ; preds = %.preheader4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), align 4
  br label %.preheader4.2

.preheader4.2:                                    ; preds = %.preheader4.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20736), align 4
  br i1 false, label %.loopexit129, label %.preheader5.loopexit

.loopexit129:                                     ; preds = %.preheader4.2.2, %.preheader4.2.1133, %.preheader4.2
  %storemerge13.lcssa125.ph = phi i32 [ 0, %.preheader4.2 ], [ 1, %.preheader4.2.1133 ], [ 2, %.preheader4.2.2 ]
  br label %214

214:                                              ; preds = %.loopexit129, %.preheader4.2.1
  %storemerge13.lcssa125 = phi i32 [ %storemerge13.lcssa127, %.preheader4.2.1 ], [ %storemerge13.lcssa125.ph, %.loopexit129 ]
  %215 = or disjoint i32 %storemerge13.lcssa125, 128
  %216 = zext nneg i32 %215 to i64
  %217 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %216
  store i32 1, ptr %217, align 4
  unreachable

218:                                              ; preds = %.preheader5.loopexit
  br label %.preheader5.preheader.1

.preheader5.preheader.1:                          ; preds = %218
  br label %.preheader5.1

.preheader5.1:                                    ; preds = %.preheader5.preheader.1
  br label %.preheader4.preheader.1130

.preheader4.preheader.1130:                       ; preds = %.preheader5.1
  br label %.preheader4.1131

.preheader4.1131:                                 ; preds = %.preheader4.preheader.1130
  br label %.preheader4.1.1132

.preheader4.1.1132:                               ; preds = %.preheader4.1131
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20484), align 4
  br label %.preheader4.2.1133

.preheader4.2.1133:                               ; preds = %.preheader4.1.1132
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20740), align 4
  br i1 false, label %.loopexit129, label %.preheader5.loopexit.1134

.preheader5.loopexit.1134:                        ; preds = %.preheader4.2.1133
  br i1 false, label %.preheader4.preheader.1, label %219

219:                                              ; preds = %.preheader5.loopexit.1134
  br i1 false, label %.preheader5.preheader.2, label %221

.preheader5.preheader.2:                          ; preds = %219
  br label %.preheader5.2

.preheader5.2:                                    ; preds = %.preheader5.preheader.2
  br label %.preheader4.preheader.2

.preheader4.preheader.2:                          ; preds = %.preheader5.2
  br label %.preheader4.2135

.preheader4.2135:                                 ; preds = %.preheader4.preheader.2
  br label %.preheader4.1.2

.preheader4.1.2:                                  ; preds = %.preheader4.2135
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20488), align 4
  br label %.preheader4.2.2

.preheader4.2.2:                                  ; preds = %.preheader4.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20744), align 4
  br i1 false, label %.loopexit129, label %.preheader5.loopexit.2

.preheader5.loopexit.2:                           ; preds = %.preheader4.2.2
  br i1 false, label %.preheader4.preheader.1, label %220

220:                                              ; preds = %.preheader5.loopexit.2
  unreachable

221:                                              ; preds = %219
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %222

.loopexit:                                        ; preds = %.preheader3.2
  br i1 false, label %.preheader3.preheader.1, label %229

.preheader3.preheader.1:                          ; preds = %.loopexit
  br label %.preheader3.1140

.preheader3.1140:                                 ; preds = %.preheader3.preheader.1
  br label %.preheader2.preheader.1141

.preheader2.preheader.1141:                       ; preds = %.preheader3.1140
  br label %.preheader2.1142

.preheader2.1142:                                 ; preds = %.preheader2.preheader.1141
  br label %.preheader2.1.1143

.preheader2.1.1143:                               ; preds = %.preheader2.1142
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  br label %.preheader2.2.1144

.preheader2.2.1144:                               ; preds = %.preheader2.1.1143
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  br i1 false, label %.loopexit139, label %.preheader3.1.1

.preheader3.1.1:                                  ; preds = %.preheader2.2.1144
  br label %.preheader2.preheader.1.1

.preheader2.preheader.1.1:                        ; preds = %.preheader3.1.1
  br label %.preheader2.1137.1

.preheader2.1137.1:                               ; preds = %.preheader2.preheader.1.1
  br label %.preheader2.1.1.1

.preheader2.1.1.1:                                ; preds = %.preheader2.1137.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  br label %.preheader2.2.1.1

.preheader2.2.1.1:                                ; preds = %.preheader2.1.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  br i1 false, label %.loopexit139, label %.preheader3.2.1

.preheader3.2.1:                                  ; preds = %.preheader2.2.1.1
  br i1 false, label %.preheader2.preheader.2, label %.loopexit.1

.loopexit.1:                                      ; preds = %.preheader3.2.1
  unreachable

222:                                              ; preds = %221
  br label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %222
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3.preheader
  br label %.preheader2.preheader

.preheader2.preheader:                            ; preds = %.preheader3
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.preheader
  br label %.preheader2.1

.preheader2.1:                                    ; preds = %.preheader2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  br label %.preheader2.2

.preheader2.2:                                    ; preds = %.preheader2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  br i1 false, label %.loopexit139, label %.preheader3.1

.loopexit139:                                     ; preds = %.preheader2.2.1.1, %.preheader2.2.1144, %.preheader2.2, %.preheader2.2.1
  %storemerge22.lcssa136.ph = phi i32 [ 1, %.preheader2.2.1 ], [ 0, %.preheader2.2 ], [ 0, %.preheader2.2.1144 ], [ 1, %.preheader2.2.1.1 ]
  br label %223

223:                                              ; preds = %.loopexit139, %.preheader2.2.2
  %storemerge22.lcssa136 = phi i32 [ 2, %.preheader2.2.2 ], [ %storemerge22.lcssa136.ph, %.loopexit139 ]
  %224 = shl nuw nsw i32 %storemerge22.lcssa136, 3
  %225 = or disjoint i32 128, %224
  %226 = zext nneg i32 %225 to i64
  %227 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %226
  store i32 1, ptr %227, align 4
  unreachable

.preheader3.1:                                    ; preds = %.preheader2.2
  br label %.preheader2.preheader.1

.preheader2.preheader.1:                          ; preds = %.preheader3.1
  br label %.preheader2.1137

.preheader2.1137:                                 ; preds = %.preheader2.preheader.1
  br label %.preheader2.1.1

.preheader2.1.1:                                  ; preds = %.preheader2.1137
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  br label %.preheader2.2.1

.preheader2.2.1:                                  ; preds = %.preheader2.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  br i1 false, label %.loopexit139, label %.preheader3.2

.preheader3.2:                                    ; preds = %.preheader2.2.1
  br i1 false, label %.preheader2.preheader.2, label %.loopexit

.preheader2.preheader.2:                          ; preds = %.preheader3.2.1, %.preheader3.2
  br label %.preheader2.2138

.preheader2.2138:                                 ; preds = %.preheader2.preheader.2
  br label %.preheader2.1.2

.preheader2.1.2:                                  ; preds = %.preheader2.2138
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22592), align 4
  br label %.preheader2.2.2

.preheader2.2.2:                                  ; preds = %.preheader2.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22848), align 4
  br i1 false, label %223, label %228

228:                                              ; preds = %.preheader2.2.2
  unreachable

229:                                              ; preds = %.loopexit
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %230

230:                                              ; preds = %229
  br label %.preheader1.preheader

.preheader1.preheader:                            ; preds = %230
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.preheader
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), align 4
  br label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24832), align 4
  br i1 false, label %.loopexit151, label %.preheader1.1

.loopexit151:                                     ; preds = %.preheader.2.1.2, %.preheader.2.2161, %.preheader.2.1.1, %.preheader.2.1156, %.preheader.2, %.preheader.2.1
  %storemerge15.lcssa146.ph = phi i32 [ 0, %.preheader.2.1 ], [ 0, %.preheader.2 ], [ 1, %.preheader.2.1156 ], [ 1, %.preheader.2.1.1 ], [ 2, %.preheader.2.2161 ], [ 2, %.preheader.2.1.2 ]
  %storemerge20.lcssa145.ph = phi i32 [ 1, %.preheader.2.1 ], [ 0, %.preheader.2 ], [ 0, %.preheader.2.1156 ], [ 1, %.preheader.2.1.1 ], [ 0, %.preheader.2.2161 ], [ 1, %.preheader.2.1.2 ]
  br label %231

231:                                              ; preds = %.loopexit151, %.preheader.2.2
  %storemerge15.lcssa146 = phi i32 [ %storemerge15.lcssa150, %.preheader.2.2 ], [ %storemerge15.lcssa146.ph, %.loopexit151 ]
  %storemerge20.lcssa145 = phi i32 [ 2, %.preheader.2.2 ], [ %storemerge20.lcssa145.ph, %.loopexit151 ]
  %232 = shl nuw nsw i32 %storemerge20.lcssa145, 3
  %233 = or disjoint i32 128, %232
  %234 = or disjoint i32 %storemerge15.lcssa146, %233
  %235 = zext nneg i32 %234 to i64
  %236 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %235
  store i32 1, ptr %236, align 4
  unreachable

.preheader1.1:                                    ; preds = %.preheader.2
  br label %.preheader.preheader.1

.preheader.preheader.1:                           ; preds = %.preheader1.1
  br label %.preheader.1147

.preheader.1147:                                  ; preds = %.preheader.preheader.1
  br label %.preheader.1.1

.preheader.1.1:                                   ; preds = %.preheader.1147
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24608), align 4
  br label %.preheader.2.1

.preheader.2.1:                                   ; preds = %.preheader.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24864), align 4
  br i1 false, label %.loopexit151, label %.preheader1.2

.preheader1.2:                                    ; preds = %.preheader.2.1
  br i1 false, label %.preheader.preheader.2, label %244

.preheader.preheader.2:                           ; preds = %.preheader1.2.2, %.preheader1.2.1, %.preheader1.2
  %storemerge15.lcssa150 = phi i32 [ 0, %.preheader1.2 ], [ 1, %.preheader1.2.1 ], [ 2, %.preheader1.2.2 ]
  br label %.preheader.2148

.preheader.2148:                                  ; preds = %.preheader.preheader.2
  br label %.preheader.1.2

.preheader.1.2:                                   ; preds = %.preheader.2148
  %237 = or disjoint i32 %storemerge15.lcssa150, 16
  %238 = zext nneg i32 %237 to i64
  %239 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %238
  store i32 1, ptr %239, align 4
  br label %.preheader.2.2

.preheader.2.2:                                   ; preds = %.preheader.1.2
  %240 = or disjoint i32 %storemerge15.lcssa150, 80
  %241 = zext nneg i32 %240 to i64
  %242 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %241
  store i32 1, ptr %242, align 4
  br i1 false, label %231, label %243

243:                                              ; preds = %.preheader.2.2
  unreachable

244:                                              ; preds = %.preheader1.2
  br label %.preheader1.preheader.1

.preheader1.preheader.1:                          ; preds = %244
  br label %.preheader1.1152

.preheader1.1152:                                 ; preds = %.preheader1.preheader.1
  br label %.preheader.preheader.1153

.preheader.preheader.1153:                        ; preds = %.preheader1.1152
  br label %.preheader.1154

.preheader.1154:                                  ; preds = %.preheader.preheader.1153
  br label %.preheader.1.1155

.preheader.1.1155:                                ; preds = %.preheader.1154
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24580), align 4
  br label %.preheader.2.1156

.preheader.2.1156:                                ; preds = %.preheader.1.1155
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24836), align 4
  br i1 false, label %.loopexit151, label %.preheader1.1.1

.preheader1.1.1:                                  ; preds = %.preheader.2.1156
  br label %.preheader.preheader.1.1

.preheader.preheader.1.1:                         ; preds = %.preheader1.1.1
  br label %.preheader.1147.1

.preheader.1147.1:                                ; preds = %.preheader.preheader.1.1
  br label %.preheader.1.1.1

.preheader.1.1.1:                                 ; preds = %.preheader.1147.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24612), align 4
  br label %.preheader.2.1.1

.preheader.2.1.1:                                 ; preds = %.preheader.1.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24868), align 4
  br i1 false, label %.loopexit151, label %.preheader1.2.1

.preheader1.2.1:                                  ; preds = %.preheader.2.1.1
  br i1 false, label %.preheader.preheader.2, label %245

245:                                              ; preds = %.preheader1.2.1
  br i1 false, label %.preheader1.preheader.2, label %247

.preheader1.preheader.2:                          ; preds = %245
  br label %.preheader1.2157

.preheader1.2157:                                 ; preds = %.preheader1.preheader.2
  br label %.preheader.preheader.2158

.preheader.preheader.2158:                        ; preds = %.preheader1.2157
  br label %.preheader.2159

.preheader.2159:                                  ; preds = %.preheader.preheader.2158
  br label %.preheader.1.2160

.preheader.1.2160:                                ; preds = %.preheader.2159
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24584), align 4
  br label %.preheader.2.2161

.preheader.2.2161:                                ; preds = %.preheader.1.2160
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24840), align 4
  br i1 false, label %.loopexit151, label %.preheader1.1.2

.preheader1.1.2:                                  ; preds = %.preheader.2.2161
  br label %.preheader.preheader.1.2

.preheader.preheader.1.2:                         ; preds = %.preheader1.1.2
  br label %.preheader.1147.2

.preheader.1147.2:                                ; preds = %.preheader.preheader.1.2
  br label %.preheader.1.1.2

.preheader.1.1.2:                                 ; preds = %.preheader.1147.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24616), align 4
  br label %.preheader.2.1.2

.preheader.2.1.2:                                 ; preds = %.preheader.1.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24872), align 4
  br i1 false, label %.loopexit151, label %.preheader1.2.2

.preheader1.2.2:                                  ; preds = %.preheader.2.1.2
  br i1 false, label %.preheader.preheader.2, label %246

246:                                              ; preds = %.preheader1.2.2
  unreachable

247:                                              ; preds = %245
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %248 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %248, 0
  br i1 %.not, label %251, label %249

249:                                              ; preds = %247
  %250 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %250, ptr @n, align 4
  br label %252

251:                                              ; preds = %247
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %252

252:                                              ; preds = %251, %249
  %253 = load i32, ptr @n, align 4
  %254 = call i32 @Trial(i32 noundef %253)
  %.not16 = icmp eq i32 %254, 0
  br i1 %.not16, label %255, label %256

255:                                              ; preds = %252
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %259

256:                                              ; preds = %252
  %257 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %257, 2005
  br i1 %.not18, label %259, label %258

258:                                              ; preds = %256
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %259

259:                                              ; preds = %258, %256, %255
  %260 = load i32, ptr @n, align 4
  %261 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %260) #4
  %262 = load i32, ptr @kount, align 4
  %263 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %262) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %2, %0
  %storemerge = phi i32 [ 0, %0 ], [ %3, %2 ]
  %exitcond = icmp ne i32 %storemerge, 100
  br i1 %exitcond, label %2, label %4

2:                                                ; preds = %1
  call void @Puzzle()
  %3 = add nuw nsw i32 %storemerge, 1
  br label %1, !llvm.loop !17

4:                                                ; preds = %1
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #3

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Puzzle.c", directory: "E:/Phase Ordering/v3")
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
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
