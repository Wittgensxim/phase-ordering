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

1:                                                ; preds = %6, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next.2, %6 ]
  br label %2

.preheader31.preheader:                           ; preds = %4
  br label %.preheader31

2:                                                ; preds = %1
  %3 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv
  store i32 1, ptr %3, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv.next
  store i32 1, ptr %5, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.2 = icmp ne i64 %indvars.iv.next.1, 512
  br i1 %exitcond.2, label %6, label %.preheader31.preheader

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv.next.1
  store i32 1, ptr %7, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  br label %1, !llvm.loop !13

.preheader31:                                     ; preds = %.preheader31.preheader, %74
  %indvars.iv14 = phi i64 [ 1, %.preheader31.preheader ], [ %indvars.iv.next15, %74 ]
  %exitcond17 = icmp ne i64 %indvars.iv14, 6
  br i1 %exitcond17, label %.preheader30.preheader, label %.preheader28.preheader

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
  %8 = or disjoint i64 %indvars.iv14, 72
  %9 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %8
  store i32 0, ptr %9, align 4
  br label %.preheader29.2

.preheader29.2:                                   ; preds = %.preheader29.1
  %10 = or disjoint i64 %indvars.iv14, 136
  %11 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %10
  store i32 0, ptr %11, align 4
  br label %.preheader29.3

.preheader29.3:                                   ; preds = %.preheader29.2
  %12 = or disjoint i64 %indvars.iv14, 200
  %13 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %12
  store i32 0, ptr %13, align 4
  br label %.preheader29.4

.preheader29.4:                                   ; preds = %.preheader29.3
  %14 = or disjoint i64 %indvars.iv14, 264
  %15 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %14
  store i32 0, ptr %15, align 4
  br label %.preheader29.5

.preheader29.5:                                   ; preds = %.preheader29.4
  %16 = or disjoint i64 %indvars.iv14, 328
  %17 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %16
  store i32 0, ptr %17, align 4
  br i1 false, label %.loopexit131, label %.preheader30.1

.loopexit131:                                     ; preds = %.preheader29.5, %.preheader29.5.1, %.preheader29.5.2, %.preheader29.5.3, %.preheader29.5.4
  %indvars.iv14.lcssa123.ph = phi i64 [ %indvars.iv14, %.preheader29.5.4 ], [ %indvars.iv14, %.preheader29.5.3 ], [ %indvars.iv14, %.preheader29.5.2 ], [ %indvars.iv14, %.preheader29.5.1 ], [ %indvars.iv14, %.preheader29.5 ]
  %indvars.iv10.lcssa122.ph = phi i64 [ 5, %.preheader29.5.4 ], [ 4, %.preheader29.5.3 ], [ 3, %.preheader29.5.2 ], [ 2, %.preheader29.5.1 ], [ 1, %.preheader29.5 ]
  br label %18

18:                                               ; preds = %.loopexit131, %.preheader29.5.5
  %indvars.iv14.lcssa123 = phi i64 [ %indvars.iv14.lcssa130, %.preheader29.5.5 ], [ %indvars.iv14.lcssa123.ph, %.loopexit131 ]
  %indvars.iv10.lcssa122 = phi i64 [ 6, %.preheader29.5.5 ], [ %indvars.iv10.lcssa122.ph, %.loopexit131 ]
  %19 = shl nuw nsw i64 %indvars.iv10.lcssa122, 3
  %20 = or disjoint i64 384, %19
  %21 = or disjoint i64 %indvars.iv14.lcssa123, %20
  %22 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %21
  store i32 0, ptr %22, align 4
  unreachable

.preheader30.1:                                   ; preds = %.preheader29.5
  br label %.preheader29.preheader.1

.preheader29.preheader.1:                         ; preds = %.preheader30.1
  br label %.preheader29.1124

.preheader29.1124:                                ; preds = %.preheader29.preheader.1
  br label %.preheader29.1.1

.preheader29.1.1:                                 ; preds = %.preheader29.1124
  %23 = or disjoint i64 %indvars.iv14, 80
  %24 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %23
  store i32 0, ptr %24, align 4
  br label %.preheader29.2.1

.preheader29.2.1:                                 ; preds = %.preheader29.1.1
  %25 = or disjoint i64 %indvars.iv14, 144
  %26 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %25
  store i32 0, ptr %26, align 4
  br label %.preheader29.3.1

.preheader29.3.1:                                 ; preds = %.preheader29.2.1
  %27 = or disjoint i64 %indvars.iv14, 208
  %28 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %27
  store i32 0, ptr %28, align 4
  br label %.preheader29.4.1

.preheader29.4.1:                                 ; preds = %.preheader29.3.1
  %29 = or disjoint i64 %indvars.iv14, 272
  %30 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %29
  store i32 0, ptr %30, align 4
  br label %.preheader29.5.1

.preheader29.5.1:                                 ; preds = %.preheader29.4.1
  %31 = or disjoint i64 %indvars.iv14, 336
  %32 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %31
  store i32 0, ptr %32, align 4
  br i1 false, label %.loopexit131, label %.preheader30.2

.preheader30.2:                                   ; preds = %.preheader29.5.1
  br label %.preheader29.preheader.2

.preheader29.preheader.2:                         ; preds = %.preheader30.2
  br label %.preheader29.2125

.preheader29.2125:                                ; preds = %.preheader29.preheader.2
  br label %.preheader29.1.2

.preheader29.1.2:                                 ; preds = %.preheader29.2125
  %33 = or disjoint i64 %indvars.iv14, 88
  %34 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %33
  store i32 0, ptr %34, align 4
  br label %.preheader29.2.2

.preheader29.2.2:                                 ; preds = %.preheader29.1.2
  %35 = or disjoint i64 %indvars.iv14, 152
  %36 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %35
  store i32 0, ptr %36, align 4
  br label %.preheader29.3.2

.preheader29.3.2:                                 ; preds = %.preheader29.2.2
  %37 = or disjoint i64 %indvars.iv14, 216
  %38 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %37
  store i32 0, ptr %38, align 4
  br label %.preheader29.4.2

.preheader29.4.2:                                 ; preds = %.preheader29.3.2
  %39 = or disjoint i64 %indvars.iv14, 280
  %40 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %39
  store i32 0, ptr %40, align 4
  br label %.preheader29.5.2

.preheader29.5.2:                                 ; preds = %.preheader29.4.2
  %41 = or disjoint i64 %indvars.iv14, 344
  %42 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %41
  store i32 0, ptr %42, align 4
  br i1 false, label %.loopexit131, label %.preheader30.3

.preheader30.3:                                   ; preds = %.preheader29.5.2
  br label %.preheader29.preheader.3

.preheader29.preheader.3:                         ; preds = %.preheader30.3
  br label %.preheader29.3126

.preheader29.3126:                                ; preds = %.preheader29.preheader.3
  br label %.preheader29.1.3

.preheader29.1.3:                                 ; preds = %.preheader29.3126
  %43 = or disjoint i64 %indvars.iv14, 96
  %44 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %43
  store i32 0, ptr %44, align 4
  br label %.preheader29.2.3

.preheader29.2.3:                                 ; preds = %.preheader29.1.3
  %45 = or disjoint i64 %indvars.iv14, 160
  %46 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %45
  store i32 0, ptr %46, align 4
  br label %.preheader29.3.3

.preheader29.3.3:                                 ; preds = %.preheader29.2.3
  %47 = or disjoint i64 %indvars.iv14, 224
  %48 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %47
  store i32 0, ptr %48, align 4
  br label %.preheader29.4.3

.preheader29.4.3:                                 ; preds = %.preheader29.3.3
  %49 = or disjoint i64 %indvars.iv14, 288
  %50 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %49
  store i32 0, ptr %50, align 4
  br label %.preheader29.5.3

.preheader29.5.3:                                 ; preds = %.preheader29.4.3
  %51 = or disjoint i64 %indvars.iv14, 352
  %52 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %51
  store i32 0, ptr %52, align 4
  br i1 false, label %.loopexit131, label %.preheader30.4

.preheader30.4:                                   ; preds = %.preheader29.5.3
  br label %.preheader29.preheader.4

.preheader29.preheader.4:                         ; preds = %.preheader30.4
  br label %.preheader29.4127

.preheader29.4127:                                ; preds = %.preheader29.preheader.4
  br label %.preheader29.1.4

.preheader29.1.4:                                 ; preds = %.preheader29.4127
  %53 = or disjoint i64 %indvars.iv14, 104
  %54 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %53
  store i32 0, ptr %54, align 4
  br label %.preheader29.2.4

.preheader29.2.4:                                 ; preds = %.preheader29.1.4
  %55 = or disjoint i64 %indvars.iv14, 168
  %56 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %55
  store i32 0, ptr %56, align 4
  br label %.preheader29.3.4

.preheader29.3.4:                                 ; preds = %.preheader29.2.4
  %57 = or disjoint i64 %indvars.iv14, 232
  %58 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %57
  store i32 0, ptr %58, align 4
  br label %.preheader29.4.4

.preheader29.4.4:                                 ; preds = %.preheader29.3.4
  %59 = or disjoint i64 %indvars.iv14, 296
  %60 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %59
  store i32 0, ptr %60, align 4
  br label %.preheader29.5.4

.preheader29.5.4:                                 ; preds = %.preheader29.4.4
  %61 = or disjoint i64 %indvars.iv14, 360
  %62 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %61
  store i32 0, ptr %62, align 4
  br i1 false, label %.loopexit131, label %.preheader30.5

.preheader30.5:                                   ; preds = %.preheader29.5.4
  br i1 false, label %.preheader29.preheader.5, label %74

.preheader29.preheader.5:                         ; preds = %.preheader30.5
  %indvars.iv14.lcssa130 = phi i64 [ %indvars.iv14, %.preheader30.5 ]
  br label %.preheader29.5128

.preheader29.5128:                                ; preds = %.preheader29.preheader.5
  br label %.preheader29.1.5

.preheader29.1.5:                                 ; preds = %.preheader29.5128
  %63 = or disjoint i64 %indvars.iv14.lcssa130, 112
  %64 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %63
  store i32 0, ptr %64, align 4
  br label %.preheader29.2.5

.preheader29.2.5:                                 ; preds = %.preheader29.1.5
  %65 = or disjoint i64 %indvars.iv14.lcssa130, 176
  %66 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %65
  store i32 0, ptr %66, align 4
  br label %.preheader29.3.5

.preheader29.3.5:                                 ; preds = %.preheader29.2.5
  %67 = or disjoint i64 %indvars.iv14.lcssa130, 240
  %68 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %67
  store i32 0, ptr %68, align 4
  br label %.preheader29.4.5

.preheader29.4.5:                                 ; preds = %.preheader29.3.5
  %69 = or disjoint i64 %indvars.iv14.lcssa130, 304
  %70 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %69
  store i32 0, ptr %70, align 4
  br label %.preheader29.5.5

.preheader29.5.5:                                 ; preds = %.preheader29.4.5
  %71 = or disjoint i64 %indvars.iv14.lcssa130, 368
  %72 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %71
  store i32 0, ptr %72, align 4
  br i1 false, label %18, label %73

73:                                               ; preds = %.preheader29.5.5
  unreachable

74:                                               ; preds = %.preheader30.5
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %.preheader31, !llvm.loop !14

.preheader28:                                     ; preds = %.preheader28.preheader, %82
  %indvars.iv22 = phi i64 [ 0, %.preheader28.preheader ], [ %indvars.iv.next23, %82 ]
  %exitcond25 = icmp ne i64 %indvars.iv22, 13
  br i1 %exitcond25, label %.preheader27.preheader, label %.preheader26.preheader

.preheader27.preheader:                           ; preds = %.preheader28
  %75 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %indvars.iv22
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  br label %.preheader26

.preheader27:                                     ; preds = %79, %.preheader27.preheader
  %indvars.iv18 = phi i64 [ 0, %.preheader27.preheader ], [ %indvars.iv.next19.2, %79 ]
  br label %.preheader27.1

.preheader27.1:                                   ; preds = %.preheader27
  %76 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %indvars.iv22
  %77 = getelementptr inbounds nuw [4 x i8], ptr %76, i64 %indvars.iv18
  store i32 0, ptr %77, align 4
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %.preheader27.2

.preheader27.2:                                   ; preds = %.preheader27.1
  %78 = getelementptr inbounds nuw [4 x i8], ptr %75, i64 %indvars.iv.next19
  store i32 0, ptr %78, align 4
  %indvars.iv.next19.1 = add nuw nsw i64 %indvars.iv18, 2
  %exitcond21.2 = icmp ne i64 %indvars.iv.next19.1, 512
  br i1 %exitcond21.2, label %79, label %82

79:                                               ; preds = %.preheader27.2
  %80 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %indvars.iv22
  %81 = getelementptr inbounds nuw [4 x i8], ptr %80, i64 %indvars.iv.next19.1
  store i32 0, ptr %81, align 4
  %indvars.iv.next19.2 = add nuw nsw i64 %indvars.iv18, 3
  br label %.preheader27, !llvm.loop !15

82:                                               ; preds = %.preheader27.2
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
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
  br i1 false, label %.loopexit137, label %.preheader25.1

.loopexit137:                                     ; preds = %.preheader24.1.1.4, %.preheader24.1.4, %.preheader24.1.1.3, %.preheader24.1.3, %.preheader24.1.1.2, %.preheader24.1.2145, %.preheader24.1.1.1, %.preheader24.1.1141, %.preheader24.1, %.preheader24.1.1
  %indvars.iv30.lcssa133.ph = phi i64 [ 0, %.preheader24.1.1 ], [ 0, %.preheader24.1 ], [ 1, %.preheader24.1.1141 ], [ 1, %.preheader24.1.1.1 ], [ 2, %.preheader24.1.2145 ], [ 2, %.preheader24.1.1.2 ], [ 3, %.preheader24.1.3 ], [ 3, %.preheader24.1.1.3 ], [ 4, %.preheader24.1.4 ], [ 4, %.preheader24.1.1.4 ]
  %indvars.iv26.lcssa132.ph = phi i64 [ 1, %.preheader24.1.1 ], [ 0, %.preheader24.1 ], [ 0, %.preheader24.1.1141 ], [ 1, %.preheader24.1.1.1 ], [ 0, %.preheader24.1.2145 ], [ 1, %.preheader24.1.1.2 ], [ 0, %.preheader24.1.3 ], [ 1, %.preheader24.1.1.3 ], [ 0, %.preheader24.1.4 ], [ 1, %.preheader24.1.1.4 ]
  br label %83

83:                                               ; preds = %.loopexit137, %.preheader24.1.2
  %indvars.iv30.lcssa133 = phi i64 [ %indvars.iv30.lcssa136, %.preheader24.1.2 ], [ %indvars.iv30.lcssa133.ph, %.loopexit137 ]
  %indvars.iv26.lcssa132 = phi i64 [ 2, %.preheader24.1.2 ], [ %indvars.iv26.lcssa132.ph, %.loopexit137 ]
  %84 = shl nuw nsw i64 %indvars.iv26.lcssa132, 3
  %85 = or disjoint i64 %indvars.iv30.lcssa133, %84
  %86 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %85
  store i32 1, ptr %86, align 4
  unreachable

.preheader25.1:                                   ; preds = %.preheader24.1
  br label %.preheader24.preheader.1

.preheader24.preheader.1:                         ; preds = %.preheader25.1
  br label %.preheader24.1134

.preheader24.1134:                                ; preds = %.preheader24.preheader.1
  br label %.preheader24.1.1

.preheader24.1.1:                                 ; preds = %.preheader24.1134
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 32), align 4
  br i1 false, label %.loopexit137, label %.preheader25.2

.preheader25.2:                                   ; preds = %.preheader24.1.1
  br i1 false, label %.preheader24.preheader.2, label %.preheader26.1

.preheader24.preheader.2:                         ; preds = %.preheader25.2.4, %.preheader25.2.3, %.preheader25.2.2, %.preheader25.2.1, %.preheader25.2
  %indvars.iv30.lcssa136 = phi i64 [ 0, %.preheader25.2 ], [ 1, %.preheader25.2.1 ], [ 2, %.preheader25.2.2 ], [ 3, %.preheader25.2.3 ], [ 4, %.preheader25.2.4 ]
  br label %.preheader24.2

.preheader24.2:                                   ; preds = %.preheader24.preheader.2
  br label %.preheader24.1.2

.preheader24.1.2:                                 ; preds = %.preheader24.2
  %87 = or disjoint i64 %indvars.iv30.lcssa136, 16
  %88 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %87
  store i32 1, ptr %88, align 4
  br i1 false, label %83, label %89

89:                                               ; preds = %.preheader24.1.2
  unreachable

.preheader26.1:                                   ; preds = %.preheader25.2
  br label %.preheader25.preheader.1

.preheader25.preheader.1:                         ; preds = %.preheader26.1
  br label %.preheader25.1138

.preheader25.1138:                                ; preds = %.preheader25.preheader.1
  br label %.preheader24.preheader.1139

.preheader24.preheader.1139:                      ; preds = %.preheader25.1138
  br label %.preheader24.1140

.preheader24.1140:                                ; preds = %.preheader24.preheader.1139
  br label %.preheader24.1.1141

.preheader24.1.1141:                              ; preds = %.preheader24.1140
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4), align 4
  br i1 false, label %.loopexit137, label %.preheader25.1.1

.preheader25.1.1:                                 ; preds = %.preheader24.1.1141
  br label %.preheader24.preheader.1.1

.preheader24.preheader.1.1:                       ; preds = %.preheader25.1.1
  br label %.preheader24.1134.1

.preheader24.1134.1:                              ; preds = %.preheader24.preheader.1.1
  br label %.preheader24.1.1.1

.preheader24.1.1.1:                               ; preds = %.preheader24.1134.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 36), align 4
  br i1 false, label %.loopexit137, label %.preheader25.2.1

.preheader25.2.1:                                 ; preds = %.preheader24.1.1.1
  br i1 false, label %.preheader24.preheader.2, label %.preheader26.2

.preheader26.2:                                   ; preds = %.preheader25.2.1
  br label %.preheader25.preheader.2

.preheader25.preheader.2:                         ; preds = %.preheader26.2
  br label %.preheader25.2142

.preheader25.2142:                                ; preds = %.preheader25.preheader.2
  br label %.preheader24.preheader.2143

.preheader24.preheader.2143:                      ; preds = %.preheader25.2142
  br label %.preheader24.2144

.preheader24.2144:                                ; preds = %.preheader24.preheader.2143
  br label %.preheader24.1.2145

.preheader24.1.2145:                              ; preds = %.preheader24.2144
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8), align 4
  br i1 false, label %.loopexit137, label %.preheader25.1.2

.preheader25.1.2:                                 ; preds = %.preheader24.1.2145
  br label %.preheader24.preheader.1.2

.preheader24.preheader.1.2:                       ; preds = %.preheader25.1.2
  br label %.preheader24.1134.2

.preheader24.1134.2:                              ; preds = %.preheader24.preheader.1.2
  br label %.preheader24.1.1.2

.preheader24.1.1.2:                               ; preds = %.preheader24.1134.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 40), align 4
  br i1 false, label %.loopexit137, label %.preheader25.2.2

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
  br i1 false, label %.loopexit137, label %.preheader25.1.3

.preheader25.1.3:                                 ; preds = %.preheader24.1.3
  br label %.preheader24.preheader.1.3

.preheader24.preheader.1.3:                       ; preds = %.preheader25.1.3
  br label %.preheader24.1134.3

.preheader24.1134.3:                              ; preds = %.preheader24.preheader.1.3
  br label %.preheader24.1.1.3

.preheader24.1.1.3:                               ; preds = %.preheader24.1134.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 44), align 4
  br i1 false, label %.loopexit137, label %.preheader25.2.3

.preheader25.2.3:                                 ; preds = %.preheader24.1.1.3
  br i1 false, label %.preheader24.preheader.2, label %.preheader26.4

.preheader26.4:                                   ; preds = %.preheader25.2.3
  br i1 false, label %.preheader25.preheader.4, label %91

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
  br i1 false, label %.loopexit137, label %.preheader25.1.4

.preheader25.1.4:                                 ; preds = %.preheader24.1.4
  br label %.preheader24.preheader.1.4

.preheader24.preheader.1.4:                       ; preds = %.preheader25.1.4
  br label %.preheader24.1134.4

.preheader24.1134.4:                              ; preds = %.preheader24.preheader.1.4
  br label %.preheader24.1.1.4

.preheader24.1.1.4:                               ; preds = %.preheader24.1134.4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 48), align 4
  br i1 false, label %.loopexit137, label %.preheader25.2.4

.preheader25.2.4:                                 ; preds = %.preheader24.1.1.4
  br i1 false, label %.preheader24.preheader.2, label %90

90:                                               ; preds = %.preheader25.2.4
  unreachable

91:                                               ; preds = %.preheader26.4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %92

92:                                               ; preds = %91
  br label %.preheader23.preheader

.preheader23.preheader:                           ; preds = %92
  br label %.preheader23

.preheader23.loopexit:                            ; preds = %.preheader22.4
  br i1 false, label %.preheader22.preheader.1, label %103

.preheader22.preheader.1:                         ; preds = %.preheader23.loopexit.2, %.preheader23.loopexit.1157, %.preheader23.loopexit
  %indvars.iv38.lcssa148 = phi i64 [ 0, %.preheader23.loopexit ], [ 1, %.preheader23.loopexit.1157 ], [ 2, %.preheader23.loopexit.2 ]
  br label %.preheader22.1147

.preheader22.1147:                                ; preds = %.preheader22.preheader.1
  br label %.preheader22.1.1

.preheader22.1.1:                                 ; preds = %.preheader22.1147
  %93 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %indvars.iv38.lcssa148
  store i32 1, ptr %93, align 4
  br label %.preheader22.2.1

.preheader22.2.1:                                 ; preds = %.preheader22.1.1
  %94 = or disjoint i64 %indvars.iv38.lcssa148, 64
  %95 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %94
  store i32 1, ptr %95, align 4
  br label %.preheader22.3.1

.preheader22.3.1:                                 ; preds = %.preheader22.2.1
  %96 = or disjoint i64 %indvars.iv38.lcssa148, 128
  %97 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %96
  store i32 1, ptr %97, align 4
  br label %.preheader22.4.1

.preheader22.4.1:                                 ; preds = %.preheader22.3.1
  %98 = or disjoint i64 %indvars.iv38.lcssa148, 192
  %99 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %98
  store i32 1, ptr %99, align 4
  br i1 false, label %100, label %.preheader23.loopexit.1

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
  br i1 false, label %.loopexit150, label %.preheader23.loopexit

.loopexit150:                                     ; preds = %.preheader22.4.2, %.preheader22.4.1156, %.preheader22.4
  %indvars.iv38.lcssa146.ph = phi i64 [ 0, %.preheader22.4 ], [ 1, %.preheader22.4.1156 ], [ 2, %.preheader22.4.2 ]
  br label %100

100:                                              ; preds = %.loopexit150, %.preheader22.4.1
  %indvars.iv38.lcssa146 = phi i64 [ %indvars.iv38.lcssa148, %.preheader22.4.1 ], [ %indvars.iv38.lcssa146.ph, %.loopexit150 ]
  %101 = or disjoint i64 %indvars.iv38.lcssa146, 256
  %102 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %101
  store i32 1, ptr %102, align 4
  unreachable

103:                                              ; preds = %.preheader23.loopexit
  br label %.preheader23.preheader.1

.preheader23.preheader.1:                         ; preds = %103
  br label %.preheader23.1

.preheader23.1:                                   ; preds = %.preheader23.preheader.1
  br label %.preheader22.preheader.1151

.preheader22.preheader.1151:                      ; preds = %.preheader23.1
  br label %.preheader22.1152

.preheader22.1152:                                ; preds = %.preheader22.preheader.1151
  br label %.preheader22.1.1153

.preheader22.1.1153:                              ; preds = %.preheader22.1152
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2052), align 4
  br label %.preheader22.2.1154

.preheader22.2.1154:                              ; preds = %.preheader22.1.1153
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2308), align 4
  br label %.preheader22.3.1155

.preheader22.3.1155:                              ; preds = %.preheader22.2.1154
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2564), align 4
  br label %.preheader22.4.1156

.preheader22.4.1156:                              ; preds = %.preheader22.3.1155
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2820), align 4
  br i1 false, label %.loopexit150, label %.preheader23.loopexit.1157

.preheader23.loopexit.1157:                       ; preds = %.preheader22.4.1156
  br i1 false, label %.preheader22.preheader.1, label %104

104:                                              ; preds = %.preheader23.loopexit.1157
  br i1 false, label %.preheader23.preheader.2, label %106

.preheader23.preheader.2:                         ; preds = %104
  br label %.preheader23.2

.preheader23.2:                                   ; preds = %.preheader23.preheader.2
  br label %.preheader22.preheader.2

.preheader22.preheader.2:                         ; preds = %.preheader23.2
  br label %.preheader22.2158

.preheader22.2158:                                ; preds = %.preheader22.preheader.2
  br label %.preheader22.1.2

.preheader22.1.2:                                 ; preds = %.preheader22.2158
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
  br i1 false, label %.loopexit150, label %.preheader23.loopexit.2

.preheader23.loopexit.2:                          ; preds = %.preheader22.4.2
  br i1 false, label %.preheader22.preheader.1, label %105

105:                                              ; preds = %.preheader23.loopexit.2
  unreachable

106:                                              ; preds = %104
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %107

.loopexit4:                                       ; preds = %.preheader21.4
  br i1 false, label %.preheader21.preheader.1, label %113

.preheader21.preheader.1:                         ; preds = %.loopexit4
  br label %.preheader21.1163

.preheader21.1163:                                ; preds = %.preheader21.preheader.1
  br label %.preheader20.preheader.1164

.preheader20.preheader.1164:                      ; preds = %.preheader21.1163
  br label %.preheader20.1165

.preheader20.1165:                                ; preds = %.preheader20.preheader.1164
  br label %.preheader20.1.1166

.preheader20.1.1166:                              ; preds = %.preheader20.1165
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  br label %.preheader20.2.1167

.preheader20.2.1167:                              ; preds = %.preheader20.1.1166
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  br i1 false, label %.loopexit162, label %.preheader21.1.1

.preheader21.1.1:                                 ; preds = %.preheader20.2.1167
  br label %.preheader20.preheader.1.1

.preheader20.preheader.1.1:                       ; preds = %.preheader21.1.1
  br label %.preheader20.1160.1

.preheader20.1160.1:                              ; preds = %.preheader20.preheader.1.1
  br label %.preheader20.1.1.1

.preheader20.1.1.1:                               ; preds = %.preheader20.1160.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  br label %.preheader20.2.1.1

.preheader20.2.1.1:                               ; preds = %.preheader20.1.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br i1 false, label %.loopexit162, label %.preheader21.2.1

.preheader21.2.1:                                 ; preds = %.preheader20.2.1.1
  br label %.preheader20.preheader.2.1

.preheader20.preheader.2.1:                       ; preds = %.preheader21.2.1
  br label %.preheader20.2161.1

.preheader20.2161.1:                              ; preds = %.preheader20.preheader.2.1
  br label %.preheader20.1.2.1

.preheader20.1.2.1:                               ; preds = %.preheader20.2161.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  br label %.preheader20.2.2.1

.preheader20.2.2.1:                               ; preds = %.preheader20.1.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br i1 false, label %.loopexit162, label %.preheader21.3.1

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
  br i1 false, label %.loopexit162, label %.preheader21.4.1

.preheader21.4.1:                                 ; preds = %.preheader20.2.3.1
  br i1 false, label %.preheader20.preheader.4, label %.loopexit4.1

.loopexit4.1:                                     ; preds = %.preheader21.4.1
  unreachable

107:                                              ; preds = %106
  br label %.preheader21.preheader

.preheader21.preheader:                           ; preds = %107
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
  br i1 false, label %.loopexit162, label %.preheader21.1

.loopexit162:                                     ; preds = %.preheader20.2.3.1, %.preheader20.2.2.1, %.preheader20.2.1.1, %.preheader20.2.1167, %.preheader20.2, %.preheader20.2.1, %.preheader20.2.2, %.preheader20.2.3
  %indvars.iv46.lcssa159.ph = phi i64 [ 3, %.preheader20.2.3 ], [ 2, %.preheader20.2.2 ], [ 1, %.preheader20.2.1 ], [ 0, %.preheader20.2 ], [ 0, %.preheader20.2.1167 ], [ 1, %.preheader20.2.1.1 ], [ 2, %.preheader20.2.2.1 ], [ 3, %.preheader20.2.3.1 ]
  br label %108

108:                                              ; preds = %.loopexit162, %.preheader20.2.4
  %indvars.iv46.lcssa159 = phi i64 [ 4, %.preheader20.2.4 ], [ %indvars.iv46.lcssa159.ph, %.loopexit162 ]
  %109 = shl nuw nsw i64 %indvars.iv46.lcssa159, 3
  %110 = or disjoint i64 128, %109
  %111 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %110
  store i32 1, ptr %111, align 4
  unreachable

.preheader21.1:                                   ; preds = %.preheader20.2
  br label %.preheader20.preheader.1

.preheader20.preheader.1:                         ; preds = %.preheader21.1
  br label %.preheader20.1160

.preheader20.1160:                                ; preds = %.preheader20.preheader.1
  br label %.preheader20.1.1

.preheader20.1.1:                                 ; preds = %.preheader20.1160
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  br label %.preheader20.2.1

.preheader20.2.1:                                 ; preds = %.preheader20.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br i1 false, label %.loopexit162, label %.preheader21.2

.preheader21.2:                                   ; preds = %.preheader20.2.1
  br label %.preheader20.preheader.2

.preheader20.preheader.2:                         ; preds = %.preheader21.2
  br label %.preheader20.2161

.preheader20.2161:                                ; preds = %.preheader20.preheader.2
  br label %.preheader20.1.2

.preheader20.1.2:                                 ; preds = %.preheader20.2161
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  br label %.preheader20.2.2

.preheader20.2.2:                                 ; preds = %.preheader20.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br i1 false, label %.loopexit162, label %.preheader21.3

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
  br i1 false, label %.loopexit162, label %.preheader21.4

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
  br i1 false, label %108, label %112

112:                                              ; preds = %.preheader20.2.4
  unreachable

113:                                              ; preds = %.loopexit4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %114

114:                                              ; preds = %113
  br label %.preheader19.preheader

.preheader19.preheader:                           ; preds = %114
  br label %.preheader19

.preheader19:                                     ; preds = %.preheader19.preheader
  br label %.preheader18.preheader

.preheader18.preheader:                           ; preds = %.preheader19
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader18.preheader
  br label %.preheader18.1

.preheader18.1:                                   ; preds = %.preheader18
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), align 4
  br i1 false, label %.loopexit173, label %.preheader19.1

.loopexit173:                                     ; preds = %.preheader18.1.3.2, %.preheader18.1.2.2, %.preheader18.1.1.2, %.preheader18.1.2181, %.preheader18.1.3.1, %.preheader18.1.2.1, %.preheader18.1.1.1, %.preheader18.1.1177, %.preheader18.1, %.preheader18.1.1, %.preheader18.1.2, %.preheader18.1.3
  %indvars.iv54.lcssa169.ph = phi i64 [ 0, %.preheader18.1.3 ], [ 0, %.preheader18.1.2 ], [ 0, %.preheader18.1.1 ], [ 0, %.preheader18.1 ], [ 1, %.preheader18.1.1177 ], [ 1, %.preheader18.1.1.1 ], [ 1, %.preheader18.1.2.1 ], [ 1, %.preheader18.1.3.1 ], [ 2, %.preheader18.1.2181 ], [ 2, %.preheader18.1.1.2 ], [ 2, %.preheader18.1.2.2 ], [ 2, %.preheader18.1.3.2 ]
  %indvars.iv50.lcssa168.ph = phi i64 [ 3, %.preheader18.1.3 ], [ 2, %.preheader18.1.2 ], [ 1, %.preheader18.1.1 ], [ 0, %.preheader18.1 ], [ 0, %.preheader18.1.1177 ], [ 1, %.preheader18.1.1.1 ], [ 2, %.preheader18.1.2.1 ], [ 3, %.preheader18.1.3.1 ], [ 0, %.preheader18.1.2181 ], [ 1, %.preheader18.1.1.2 ], [ 2, %.preheader18.1.2.2 ], [ 3, %.preheader18.1.3.2 ]
  br label %115

115:                                              ; preds = %.loopexit173, %.preheader18.1.4
  %indvars.iv54.lcssa169 = phi i64 [ %indvars.iv54.lcssa172, %.preheader18.1.4 ], [ %indvars.iv54.lcssa169.ph, %.loopexit173 ]
  %indvars.iv50.lcssa168 = phi i64 [ 4, %.preheader18.1.4 ], [ %indvars.iv50.lcssa168.ph, %.loopexit173 ]
  %116 = shl nuw nsw i64 %indvars.iv50.lcssa168, 3
  %117 = or disjoint i64 %indvars.iv54.lcssa169, %116
  %118 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %117
  store i32 1, ptr %118, align 4
  unreachable

.preheader19.1:                                   ; preds = %.preheader18.1
  br label %.preheader18.preheader.1

.preheader18.preheader.1:                         ; preds = %.preheader19.1
  br label %.preheader18.1170

.preheader18.1170:                                ; preds = %.preheader18.preheader.1
  br label %.preheader18.1.1

.preheader18.1.1:                                 ; preds = %.preheader18.1170
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6176), align 4
  br i1 false, label %.loopexit173, label %.preheader19.2

.preheader19.2:                                   ; preds = %.preheader18.1.1
  br label %.preheader18.preheader.2

.preheader18.preheader.2:                         ; preds = %.preheader19.2
  br label %.preheader18.2

.preheader18.2:                                   ; preds = %.preheader18.preheader.2
  br label %.preheader18.1.2

.preheader18.1.2:                                 ; preds = %.preheader18.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6208), align 4
  br i1 false, label %.loopexit173, label %.preheader19.3

.preheader19.3:                                   ; preds = %.preheader18.1.2
  br label %.preheader18.preheader.3

.preheader18.preheader.3:                         ; preds = %.preheader19.3
  br label %.preheader18.3

.preheader18.3:                                   ; preds = %.preheader18.preheader.3
  br label %.preheader18.1.3

.preheader18.1.3:                                 ; preds = %.preheader18.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6240), align 4
  br i1 false, label %.loopexit173, label %.preheader19.4

.preheader19.4:                                   ; preds = %.preheader18.1.3
  br i1 false, label %.preheader18.preheader.4, label %122

.preheader18.preheader.4:                         ; preds = %.preheader19.4.2, %.preheader19.4.1, %.preheader19.4
  %indvars.iv54.lcssa172 = phi i64 [ 0, %.preheader19.4 ], [ 1, %.preheader19.4.1 ], [ 2, %.preheader19.4.2 ]
  br label %.preheader18.4

.preheader18.4:                                   ; preds = %.preheader18.preheader.4
  br label %.preheader18.1.4

.preheader18.1.4:                                 ; preds = %.preheader18.4
  %119 = or disjoint i64 %indvars.iv54.lcssa172, 32
  %120 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %119
  store i32 1, ptr %120, align 4
  br i1 false, label %115, label %121

121:                                              ; preds = %.preheader18.1.4
  unreachable

122:                                              ; preds = %.preheader19.4
  br label %.preheader19.preheader.1

.preheader19.preheader.1:                         ; preds = %122
  br label %.preheader19.1174

.preheader19.1174:                                ; preds = %.preheader19.preheader.1
  br label %.preheader18.preheader.1175

.preheader18.preheader.1175:                      ; preds = %.preheader19.1174
  br label %.preheader18.1176

.preheader18.1176:                                ; preds = %.preheader18.preheader.1175
  br label %.preheader18.1.1177

.preheader18.1.1177:                              ; preds = %.preheader18.1176
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6148), align 4
  br i1 false, label %.loopexit173, label %.preheader19.1.1

.preheader19.1.1:                                 ; preds = %.preheader18.1.1177
  br label %.preheader18.preheader.1.1

.preheader18.preheader.1.1:                       ; preds = %.preheader19.1.1
  br label %.preheader18.1170.1

.preheader18.1170.1:                              ; preds = %.preheader18.preheader.1.1
  br label %.preheader18.1.1.1

.preheader18.1.1.1:                               ; preds = %.preheader18.1170.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6180), align 4
  br i1 false, label %.loopexit173, label %.preheader19.2.1

.preheader19.2.1:                                 ; preds = %.preheader18.1.1.1
  br label %.preheader18.preheader.2.1

.preheader18.preheader.2.1:                       ; preds = %.preheader19.2.1
  br label %.preheader18.2.1

.preheader18.2.1:                                 ; preds = %.preheader18.preheader.2.1
  br label %.preheader18.1.2.1

.preheader18.1.2.1:                               ; preds = %.preheader18.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6212), align 4
  br i1 false, label %.loopexit173, label %.preheader19.3.1

.preheader19.3.1:                                 ; preds = %.preheader18.1.2.1
  br label %.preheader18.preheader.3.1

.preheader18.preheader.3.1:                       ; preds = %.preheader19.3.1
  br label %.preheader18.3.1

.preheader18.3.1:                                 ; preds = %.preheader18.preheader.3.1
  br label %.preheader18.1.3.1

.preheader18.1.3.1:                               ; preds = %.preheader18.3.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6244), align 4
  br i1 false, label %.loopexit173, label %.preheader19.4.1

.preheader19.4.1:                                 ; preds = %.preheader18.1.3.1
  br i1 false, label %.preheader18.preheader.4, label %123

123:                                              ; preds = %.preheader19.4.1
  br i1 false, label %.preheader19.preheader.2, label %125

.preheader19.preheader.2:                         ; preds = %123
  br label %.preheader19.2178

.preheader19.2178:                                ; preds = %.preheader19.preheader.2
  br label %.preheader18.preheader.2179

.preheader18.preheader.2179:                      ; preds = %.preheader19.2178
  br label %.preheader18.2180

.preheader18.2180:                                ; preds = %.preheader18.preheader.2179
  br label %.preheader18.1.2181

.preheader18.1.2181:                              ; preds = %.preheader18.2180
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6152), align 4
  br i1 false, label %.loopexit173, label %.preheader19.1.2

.preheader19.1.2:                                 ; preds = %.preheader18.1.2181
  br label %.preheader18.preheader.1.2

.preheader18.preheader.1.2:                       ; preds = %.preheader19.1.2
  br label %.preheader18.1170.2

.preheader18.1170.2:                              ; preds = %.preheader18.preheader.1.2
  br label %.preheader18.1.1.2

.preheader18.1.1.2:                               ; preds = %.preheader18.1170.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6184), align 4
  br i1 false, label %.loopexit173, label %.preheader19.2.2

.preheader19.2.2:                                 ; preds = %.preheader18.1.1.2
  br label %.preheader18.preheader.2.2

.preheader18.preheader.2.2:                       ; preds = %.preheader19.2.2
  br label %.preheader18.2.2

.preheader18.2.2:                                 ; preds = %.preheader18.preheader.2.2
  br label %.preheader18.1.2.2

.preheader18.1.2.2:                               ; preds = %.preheader18.2.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6216), align 4
  br i1 false, label %.loopexit173, label %.preheader19.3.2

.preheader19.3.2:                                 ; preds = %.preheader18.1.2.2
  br label %.preheader18.preheader.3.2

.preheader18.preheader.3.2:                       ; preds = %.preheader19.3.2
  br label %.preheader18.3.2

.preheader18.3.2:                                 ; preds = %.preheader18.preheader.3.2
  br label %.preheader18.1.3.2

.preheader18.1.3.2:                               ; preds = %.preheader18.3.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6248), align 4
  br i1 false, label %.loopexit173, label %.preheader19.4.2

.preheader19.4.2:                                 ; preds = %.preheader18.1.3.2
  br i1 false, label %.preheader18.preheader.4, label %124

124:                                              ; preds = %.preheader19.4.2
  unreachable

125:                                              ; preds = %123
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %126

126:                                              ; preds = %125
  br label %.preheader17.preheader

.preheader17.preheader:                           ; preds = %126
  br label %.preheader17

.preheader17.loopexit:                            ; preds = %.preheader16.2
  br i1 false, label %.preheader16.preheader.1, label %133

.preheader16.preheader.1:                         ; preds = %.preheader17.loopexit.4, %.preheader17.loopexit.3, %.preheader17.loopexit.2, %.preheader17.loopexit.1191, %.preheader17.loopexit
  %indvars.iv62.lcssa184 = phi i64 [ 0, %.preheader17.loopexit ], [ 1, %.preheader17.loopexit.1191 ], [ 2, %.preheader17.loopexit.2 ], [ 3, %.preheader17.loopexit.3 ], [ 4, %.preheader17.loopexit.4 ]
  br label %.preheader16.1183

.preheader16.1183:                                ; preds = %.preheader16.preheader.1
  br label %.preheader16.1.1

.preheader16.1.1:                                 ; preds = %.preheader16.1183
  %127 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %indvars.iv62.lcssa184
  store i32 1, ptr %127, align 4
  br label %.preheader16.2.1

.preheader16.2.1:                                 ; preds = %.preheader16.1.1
  %128 = or disjoint i64 %indvars.iv62.lcssa184, 64
  %129 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %128
  store i32 1, ptr %129, align 4
  br i1 false, label %130, label %.preheader17.loopexit.1

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
  br i1 false, label %.loopexit186, label %.preheader17.loopexit

.loopexit186:                                     ; preds = %.preheader16.2.4, %.preheader16.2.3, %.preheader16.2.2, %.preheader16.2.1190, %.preheader16.2
  %indvars.iv62.lcssa182.ph = phi i64 [ 0, %.preheader16.2 ], [ 1, %.preheader16.2.1190 ], [ 2, %.preheader16.2.2 ], [ 3, %.preheader16.2.3 ], [ 4, %.preheader16.2.4 ]
  br label %130

130:                                              ; preds = %.loopexit186, %.preheader16.2.1
  %indvars.iv62.lcssa182 = phi i64 [ %indvars.iv62.lcssa184, %.preheader16.2.1 ], [ %indvars.iv62.lcssa182.ph, %.loopexit186 ]
  %131 = or disjoint i64 %indvars.iv62.lcssa182, 128
  %132 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %131
  store i32 1, ptr %132, align 4
  unreachable

133:                                              ; preds = %.preheader17.loopexit
  br label %.preheader17.preheader.1

.preheader17.preheader.1:                         ; preds = %133
  br label %.preheader17.1

.preheader17.1:                                   ; preds = %.preheader17.preheader.1
  br label %.preheader16.preheader.1187

.preheader16.preheader.1187:                      ; preds = %.preheader17.1
  br label %.preheader16.1188

.preheader16.1188:                                ; preds = %.preheader16.preheader.1187
  br label %.preheader16.1.1189

.preheader16.1.1189:                              ; preds = %.preheader16.1188
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8196), align 4
  br label %.preheader16.2.1190

.preheader16.2.1190:                              ; preds = %.preheader16.1.1189
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8452), align 4
  br i1 false, label %.loopexit186, label %.preheader17.loopexit.1191

.preheader17.loopexit.1191:                       ; preds = %.preheader16.2.1190
  br i1 false, label %.preheader16.preheader.1, label %134

134:                                              ; preds = %.preheader17.loopexit.1191
  br label %.preheader17.preheader.2

.preheader17.preheader.2:                         ; preds = %134
  br label %.preheader17.2

.preheader17.2:                                   ; preds = %.preheader17.preheader.2
  br label %.preheader16.preheader.2

.preheader16.preheader.2:                         ; preds = %.preheader17.2
  br label %.preheader16.2192

.preheader16.2192:                                ; preds = %.preheader16.preheader.2
  br label %.preheader16.1.2

.preheader16.1.2:                                 ; preds = %.preheader16.2192
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8200), align 4
  br label %.preheader16.2.2

.preheader16.2.2:                                 ; preds = %.preheader16.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8456), align 4
  br i1 false, label %.loopexit186, label %.preheader17.loopexit.2

.preheader17.loopexit.2:                          ; preds = %.preheader16.2.2
  br i1 false, label %.preheader16.preheader.1, label %135

135:                                              ; preds = %.preheader17.loopexit.2
  br label %.preheader17.preheader.3

.preheader17.preheader.3:                         ; preds = %135
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
  br i1 false, label %.loopexit186, label %.preheader17.loopexit.3

.preheader17.loopexit.3:                          ; preds = %.preheader16.2.3
  br i1 false, label %.preheader16.preheader.1, label %136

136:                                              ; preds = %.preheader17.loopexit.3
  br i1 false, label %.preheader17.preheader.4, label %138

.preheader17.preheader.4:                         ; preds = %136
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
  br i1 false, label %.loopexit186, label %.preheader17.loopexit.4

.preheader17.loopexit.4:                          ; preds = %.preheader16.2.4
  br i1 false, label %.preheader16.preheader.1, label %137

137:                                              ; preds = %.preheader17.loopexit.4
  unreachable

138:                                              ; preds = %136
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %139

.loopexit3:                                       ; preds = %.preheader15.2
  br i1 false, label %.preheader15.preheader.1, label %145

.preheader15.preheader.1:                         ; preds = %.loopexit3
  br label %.preheader15.1197

.preheader15.1197:                                ; preds = %.preheader15.preheader.1
  br label %.preheader14.preheader.1198

.preheader14.preheader.1198:                      ; preds = %.preheader15.1197
  br label %.preheader14.1199

.preheader14.1199:                                ; preds = %.preheader14.preheader.1198
  br label %.preheader14.1.1200

.preheader14.1.1200:                              ; preds = %.preheader14.1199
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  br label %.preheader14.2.1201

.preheader14.2.1201:                              ; preds = %.preheader14.1.1200
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  br label %.preheader14.3.1202

.preheader14.3.1202:                              ; preds = %.preheader14.2.1201
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  br label %.preheader14.4.1203

.preheader14.4.1203:                              ; preds = %.preheader14.3.1202
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  br i1 false, label %.loopexit196, label %.preheader15.1.1

.preheader15.1.1:                                 ; preds = %.preheader14.4.1203
  br label %.preheader14.preheader.1.1

.preheader14.preheader.1.1:                       ; preds = %.preheader15.1.1
  br label %.preheader14.1194.1

.preheader14.1194.1:                              ; preds = %.preheader14.preheader.1.1
  br label %.preheader14.1.1.1

.preheader14.1.1.1:                               ; preds = %.preheader14.1194.1
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
  br i1 false, label %.loopexit196, label %.preheader15.2.1

.preheader15.2.1:                                 ; preds = %.preheader14.4.1.1
  br i1 false, label %.preheader14.preheader.2, label %.loopexit3.1

.loopexit3.1:                                     ; preds = %.preheader15.2.1
  unreachable

139:                                              ; preds = %138
  br label %.preheader15.preheader

.preheader15.preheader:                           ; preds = %139
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
  br i1 false, label %.loopexit196, label %.preheader15.1

.loopexit196:                                     ; preds = %.preheader14.4.1.1, %.preheader14.4.1203, %.preheader14.4, %.preheader14.4.1
  %indvars.iv70.lcssa193.ph = phi i64 [ 1, %.preheader14.4.1 ], [ 0, %.preheader14.4 ], [ 0, %.preheader14.4.1203 ], [ 1, %.preheader14.4.1.1 ]
  br label %140

140:                                              ; preds = %.loopexit196, %.preheader14.4.2
  %indvars.iv70.lcssa193 = phi i64 [ 2, %.preheader14.4.2 ], [ %indvars.iv70.lcssa193.ph, %.loopexit196 ]
  %141 = shl nuw nsw i64 %indvars.iv70.lcssa193, 3
  %142 = or disjoint i64 256, %141
  %143 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %142
  store i32 1, ptr %143, align 4
  unreachable

.preheader15.1:                                   ; preds = %.preheader14.4
  br label %.preheader14.preheader.1

.preheader14.preheader.1:                         ; preds = %.preheader15.1
  br label %.preheader14.1194

.preheader14.1194:                                ; preds = %.preheader14.preheader.1
  br label %.preheader14.1.1

.preheader14.1.1:                                 ; preds = %.preheader14.1194
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
  br i1 false, label %.loopexit196, label %.preheader15.2

.preheader15.2:                                   ; preds = %.preheader14.4.1
  br i1 false, label %.preheader14.preheader.2, label %.loopexit3

.preheader14.preheader.2:                         ; preds = %.preheader15.2.1, %.preheader15.2
  br label %.preheader14.2195

.preheader14.2195:                                ; preds = %.preheader14.preheader.2
  br label %.preheader14.1.2

.preheader14.1.2:                                 ; preds = %.preheader14.2195
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
  br i1 false, label %140, label %144

144:                                              ; preds = %.preheader14.4.2
  unreachable

145:                                              ; preds = %.loopexit3
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %146

146:                                              ; preds = %145
  br label %.preheader13.preheader

.preheader13.preheader:                           ; preds = %146
  br label %.preheader13

.preheader13.loopexit:                            ; preds = %.preheader12.1
  br i1 false, label %.preheader12.preheader.1, label %150

.preheader12.preheader.1:                         ; preds = %.preheader13.loopexit.3, %.preheader13.loopexit.2, %.preheader13.loopexit.1212, %.preheader13.loopexit
  %indvars.iv74.lcssa207 = phi i64 [ 0, %.preheader13.loopexit ], [ 1, %.preheader13.loopexit.1212 ], [ 2, %.preheader13.loopexit.2 ], [ 3, %.preheader13.loopexit.3 ]
  br label %.preheader12.1205

.preheader12.1205:                                ; preds = %.preheader12.preheader.1
  br label %.preheader12.1.1

.preheader12.1.1:                                 ; preds = %.preheader12.1205
  %147 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %indvars.iv74.lcssa207
  store i32 1, ptr %147, align 4
  br i1 false, label %148, label %.preheader13.loopexit.1

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
  br i1 false, label %.loopexit208, label %.preheader13.loopexit

.loopexit208:                                     ; preds = %.preheader12.1.3, %.preheader12.1.2, %.preheader12.1.1211, %.preheader12.1
  %indvars.iv74.lcssa204.ph = phi i64 [ 0, %.preheader12.1 ], [ 1, %.preheader12.1.1211 ], [ 2, %.preheader12.1.2 ], [ 3, %.preheader12.1.3 ]
  br label %148

148:                                              ; preds = %.loopexit208, %.preheader12.1.1
  %indvars.iv74.lcssa204 = phi i64 [ %indvars.iv74.lcssa207, %.preheader12.1.1 ], [ %indvars.iv74.lcssa204.ph, %.loopexit208 ]
  %149 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %indvars.iv74.lcssa204
  store i32 1, ptr %149, align 4
  unreachable

150:                                              ; preds = %.preheader13.loopexit
  br label %.preheader13.preheader.1

.preheader13.preheader.1:                         ; preds = %150
  br label %.preheader13.1

.preheader13.1:                                   ; preds = %.preheader13.preheader.1
  br label %.preheader12.preheader.1209

.preheader12.preheader.1209:                      ; preds = %.preheader13.1
  br label %.preheader12.1210

.preheader12.1210:                                ; preds = %.preheader12.preheader.1209
  br label %.preheader12.1.1211

.preheader12.1.1211:                              ; preds = %.preheader12.1210
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12292), align 4
  br i1 false, label %.loopexit208, label %.preheader13.loopexit.1212

.preheader13.loopexit.1212:                       ; preds = %.preheader12.1.1211
  br i1 false, label %.preheader12.preheader.1, label %151

151:                                              ; preds = %.preheader13.loopexit.1212
  br label %.preheader13.preheader.2

.preheader13.preheader.2:                         ; preds = %151
  br label %.preheader13.2

.preheader13.2:                                   ; preds = %.preheader13.preheader.2
  br label %.preheader12.preheader.2

.preheader12.preheader.2:                         ; preds = %.preheader13.2
  br label %.preheader12.2

.preheader12.2:                                   ; preds = %.preheader12.preheader.2
  br label %.preheader12.1.2

.preheader12.1.2:                                 ; preds = %.preheader12.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12296), align 4
  br i1 false, label %.loopexit208, label %.preheader13.loopexit.2

.preheader13.loopexit.2:                          ; preds = %.preheader12.1.2
  br i1 false, label %.preheader12.preheader.1, label %152

152:                                              ; preds = %.preheader13.loopexit.2
  br i1 false, label %.preheader13.preheader.3, label %154

.preheader13.preheader.3:                         ; preds = %152
  br label %.preheader13.3

.preheader13.3:                                   ; preds = %.preheader13.preheader.3
  br label %.preheader12.preheader.3

.preheader12.preheader.3:                         ; preds = %.preheader13.3
  br label %.preheader12.3

.preheader12.3:                                   ; preds = %.preheader12.preheader.3
  br label %.preheader12.1.3

.preheader12.1.3:                                 ; preds = %.preheader12.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12300), align 4
  br i1 false, label %.loopexit208, label %.preheader13.loopexit.3

.preheader13.loopexit.3:                          ; preds = %.preheader12.1.3
  br i1 false, label %.preheader12.preheader.1, label %153

153:                                              ; preds = %.preheader13.loopexit.3
  unreachable

154:                                              ; preds = %152
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %155

.loopexit2:                                       ; preds = %.preheader11.3
  br i1 false, label %.preheader11.preheader.1, label %160

.preheader11.preheader.1:                         ; preds = %.loopexit2
  br label %.preheader11.1216

.preheader11.1216:                                ; preds = %.preheader11.preheader.1
  br label %.preheader10.preheader.1217

.preheader10.preheader.1217:                      ; preds = %.preheader11.1216
  br label %.preheader10.1218

.preheader10.1218:                                ; preds = %.preheader10.preheader.1217
  br label %.preheader10.1.1219

.preheader10.1.1219:                              ; preds = %.preheader10.1218
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br i1 false, label %.loopexit215, label %.preheader11.1.1

.preheader11.1.1:                                 ; preds = %.preheader10.1.1219
  br label %.preheader10.preheader.1.1

.preheader10.preheader.1.1:                       ; preds = %.preheader11.1.1
  br label %.preheader10.1214.1

.preheader10.1214.1:                              ; preds = %.preheader10.preheader.1.1
  br label %.preheader10.1.1.1

.preheader10.1.1.1:                               ; preds = %.preheader10.1214.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br i1 false, label %.loopexit215, label %.preheader11.2.1

.preheader11.2.1:                                 ; preds = %.preheader10.1.1.1
  br label %.preheader10.preheader.2.1

.preheader10.preheader.2.1:                       ; preds = %.preheader11.2.1
  br label %.preheader10.2.1

.preheader10.2.1:                                 ; preds = %.preheader10.preheader.2.1
  br label %.preheader10.1.2.1

.preheader10.1.2.1:                               ; preds = %.preheader10.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  br i1 false, label %.loopexit215, label %.preheader11.3.1

.preheader11.3.1:                                 ; preds = %.preheader10.1.2.1
  br i1 false, label %.preheader10.preheader.3, label %.loopexit2.1

.loopexit2.1:                                     ; preds = %.preheader11.3.1
  unreachable

155:                                              ; preds = %154
  br label %.preheader11.preheader

.preheader11.preheader:                           ; preds = %155
  br label %.preheader11

.preheader11:                                     ; preds = %.preheader11.preheader
  br label %.preheader10.preheader

.preheader10.preheader:                           ; preds = %.preheader11
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader10.preheader
  br label %.preheader10.1

.preheader10.1:                                   ; preds = %.preheader10
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br i1 false, label %.loopexit215, label %.preheader11.1

.loopexit215:                                     ; preds = %.preheader10.1.2.1, %.preheader10.1.1.1, %.preheader10.1.1219, %.preheader10.1, %.preheader10.1.1, %.preheader10.1.2
  %indvars.iv78.lcssa213.ph = phi i64 [ 2, %.preheader10.1.2 ], [ 1, %.preheader10.1.1 ], [ 0, %.preheader10.1 ], [ 0, %.preheader10.1.1219 ], [ 1, %.preheader10.1.1.1 ], [ 2, %.preheader10.1.2.1 ]
  br label %156

156:                                              ; preds = %.loopexit215, %.preheader10.1.3
  %indvars.iv78.lcssa213 = phi i64 [ 3, %.preheader10.1.3 ], [ %indvars.iv78.lcssa213.ph, %.loopexit215 ]
  %157 = shl nuw nsw i64 %indvars.iv78.lcssa213, 3
  %158 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %157
  store i32 1, ptr %158, align 4
  unreachable

.preheader11.1:                                   ; preds = %.preheader10.1
  br label %.preheader10.preheader.1

.preheader10.preheader.1:                         ; preds = %.preheader11.1
  br label %.preheader10.1214

.preheader10.1214:                                ; preds = %.preheader10.preheader.1
  br label %.preheader10.1.1

.preheader10.1.1:                                 ; preds = %.preheader10.1214
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br i1 false, label %.loopexit215, label %.preheader11.2

.preheader11.2:                                   ; preds = %.preheader10.1.1
  br label %.preheader10.preheader.2

.preheader10.preheader.2:                         ; preds = %.preheader11.2
  br label %.preheader10.2

.preheader10.2:                                   ; preds = %.preheader10.preheader.2
  br label %.preheader10.1.2

.preheader10.1.2:                                 ; preds = %.preheader10.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  br i1 false, label %.loopexit215, label %.preheader11.3

.preheader11.3:                                   ; preds = %.preheader10.1.2
  br i1 false, label %.preheader10.preheader.3, label %.loopexit2

.preheader10.preheader.3:                         ; preds = %.preheader11.3.1, %.preheader11.3
  br label %.preheader10.3

.preheader10.3:                                   ; preds = %.preheader10.preheader.3
  br label %.preheader10.1.3

.preheader10.1.3:                                 ; preds = %.preheader10.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14432), align 4
  br i1 false, label %156, label %159

159:                                              ; preds = %.preheader10.1.3
  unreachable

160:                                              ; preds = %.loopexit2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %161

.loopexit1:                                       ; preds = %.preheader9.loopexit
  br i1 false, label %.preheader9.preheader.1, label %163

.preheader9.preheader.1:                          ; preds = %.loopexit1
  br label %.preheader9.1

.preheader9.1:                                    ; preds = %.preheader9.preheader.1
  br label %.preheader8.preheader.1222

.preheader8.preheader.1222:                       ; preds = %.preheader9.1
  br label %.preheader8.1223

.preheader8.1223:                                 ; preds = %.preheader8.preheader.1222
  br label %.preheader8.1.1224

.preheader8.1.1224:                               ; preds = %.preheader8.1223
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  br label %.preheader8.2.1225

.preheader8.2.1225:                               ; preds = %.preheader8.1.1224
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  br label %.preheader8.3.1226

.preheader8.3.1226:                               ; preds = %.preheader8.2.1225
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %.loopexit221, label %.preheader9.loopexit.1227

.preheader9.loopexit.1227:                        ; preds = %.preheader8.3.1226
  br i1 false, label %.preheader8.preheader.1, label %.loopexit1.1

.loopexit1.1:                                     ; preds = %.preheader9.loopexit.1227
  unreachable

161:                                              ; preds = %160
  br label %.preheader9.preheader

.preheader9.preheader:                            ; preds = %161
  br label %.preheader9

.preheader9.loopexit:                             ; preds = %.preheader8.3
  br i1 false, label %.preheader8.preheader.1, label %.loopexit1

.preheader8.preheader.1:                          ; preds = %.preheader9.loopexit.1227, %.preheader9.loopexit
  br label %.preheader8.1220

.preheader8.1220:                                 ; preds = %.preheader8.preheader.1
  br label %.preheader8.1.1

.preheader8.1.1:                                  ; preds = %.preheader8.1220
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  br label %.preheader8.2.1

.preheader8.2.1:                                  ; preds = %.preheader8.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  br label %.preheader8.3.1

.preheader8.3.1:                                  ; preds = %.preheader8.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %162, label %.preheader9.loopexit.1

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
  br i1 false, label %.loopexit221, label %.preheader9.loopexit

.loopexit221:                                     ; preds = %.preheader8.3.1226, %.preheader8.3
  br label %162

162:                                              ; preds = %.loopexit221, %.preheader8.3.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 17152), align 4
  unreachable

163:                                              ; preds = %.loopexit1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %164

164:                                              ; preds = %163
  br label %.preheader7.preheader

.preheader7.preheader:                            ; preds = %164
  br label %.preheader7

.preheader7:                                      ; preds = %.preheader7.preheader
  br label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %.preheader7
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.preheader
  br label %.preheader6.1

.preheader6.1:                                    ; preds = %.preheader6
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), align 4
  br i1 false, label %.loopexit233, label %.preheader7.1

.loopexit233:                                     ; preds = %.preheader6.1.1.2, %.preheader6.1.2241, %.preheader6.1.1.1, %.preheader6.1.1237, %.preheader6.1, %.preheader6.1.1
  %indvars.iv90.lcssa229.ph = phi i64 [ 0, %.preheader6.1.1 ], [ 0, %.preheader6.1 ], [ 1, %.preheader6.1.1237 ], [ 1, %.preheader6.1.1.1 ], [ 2, %.preheader6.1.2241 ], [ 2, %.preheader6.1.1.2 ]
  %indvars.iv86.lcssa228.ph = phi i64 [ 1, %.preheader6.1.1 ], [ 0, %.preheader6.1 ], [ 0, %.preheader6.1.1237 ], [ 1, %.preheader6.1.1.1 ], [ 0, %.preheader6.1.2241 ], [ 1, %.preheader6.1.1.2 ]
  br label %165

165:                                              ; preds = %.loopexit233, %.preheader6.1.2
  %indvars.iv90.lcssa229 = phi i64 [ %indvars.iv90.lcssa232, %.preheader6.1.2 ], [ %indvars.iv90.lcssa229.ph, %.loopexit233 ]
  %indvars.iv86.lcssa228 = phi i64 [ 2, %.preheader6.1.2 ], [ %indvars.iv86.lcssa228.ph, %.loopexit233 ]
  %166 = shl nuw nsw i64 %indvars.iv86.lcssa228, 3
  %167 = or disjoint i64 %indvars.iv90.lcssa229, %166
  %168 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %167
  store i32 1, ptr %168, align 4
  unreachable

.preheader7.1:                                    ; preds = %.preheader6.1
  br label %.preheader6.preheader.1

.preheader6.preheader.1:                          ; preds = %.preheader7.1
  br label %.preheader6.1230

.preheader6.1230:                                 ; preds = %.preheader6.preheader.1
  br label %.preheader6.1.1

.preheader6.1.1:                                  ; preds = %.preheader6.1230
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18464), align 4
  br i1 false, label %.loopexit233, label %.preheader7.2

.preheader7.2:                                    ; preds = %.preheader6.1.1
  br i1 false, label %.preheader6.preheader.2, label %172

.preheader6.preheader.2:                          ; preds = %.preheader7.2.2, %.preheader7.2.1, %.preheader7.2
  %indvars.iv90.lcssa232 = phi i64 [ 0, %.preheader7.2 ], [ 1, %.preheader7.2.1 ], [ 2, %.preheader7.2.2 ]
  br label %.preheader6.2

.preheader6.2:                                    ; preds = %.preheader6.preheader.2
  br label %.preheader6.1.2

.preheader6.1.2:                                  ; preds = %.preheader6.2
  %169 = or disjoint i64 %indvars.iv90.lcssa232, 16
  %170 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %169
  store i32 1, ptr %170, align 4
  br i1 false, label %165, label %171

171:                                              ; preds = %.preheader6.1.2
  unreachable

172:                                              ; preds = %.preheader7.2
  br label %.preheader7.preheader.1

.preheader7.preheader.1:                          ; preds = %172
  br label %.preheader7.1234

.preheader7.1234:                                 ; preds = %.preheader7.preheader.1
  br label %.preheader6.preheader.1235

.preheader6.preheader.1235:                       ; preds = %.preheader7.1234
  br label %.preheader6.1236

.preheader6.1236:                                 ; preds = %.preheader6.preheader.1235
  br label %.preheader6.1.1237

.preheader6.1.1237:                               ; preds = %.preheader6.1236
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18436), align 4
  br i1 false, label %.loopexit233, label %.preheader7.1.1

.preheader7.1.1:                                  ; preds = %.preheader6.1.1237
  br label %.preheader6.preheader.1.1

.preheader6.preheader.1.1:                        ; preds = %.preheader7.1.1
  br label %.preheader6.1230.1

.preheader6.1230.1:                               ; preds = %.preheader6.preheader.1.1
  br label %.preheader6.1.1.1

.preheader6.1.1.1:                                ; preds = %.preheader6.1230.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18468), align 4
  br i1 false, label %.loopexit233, label %.preheader7.2.1

.preheader7.2.1:                                  ; preds = %.preheader6.1.1.1
  br i1 false, label %.preheader6.preheader.2, label %173

173:                                              ; preds = %.preheader7.2.1
  br i1 false, label %.preheader7.preheader.2, label %175

.preheader7.preheader.2:                          ; preds = %173
  br label %.preheader7.2238

.preheader7.2238:                                 ; preds = %.preheader7.preheader.2
  br label %.preheader6.preheader.2239

.preheader6.preheader.2239:                       ; preds = %.preheader7.2238
  br label %.preheader6.2240

.preheader6.2240:                                 ; preds = %.preheader6.preheader.2239
  br label %.preheader6.1.2241

.preheader6.1.2241:                               ; preds = %.preheader6.2240
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18440), align 4
  br i1 false, label %.loopexit233, label %.preheader7.1.2

.preheader7.1.2:                                  ; preds = %.preheader6.1.2241
  br label %.preheader6.preheader.1.2

.preheader6.preheader.1.2:                        ; preds = %.preheader7.1.2
  br label %.preheader6.1230.2

.preheader6.1230.2:                               ; preds = %.preheader6.preheader.1.2
  br label %.preheader6.1.1.2

.preheader6.1.1.2:                                ; preds = %.preheader6.1230.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18472), align 4
  br i1 false, label %.loopexit233, label %.preheader7.2.2

.preheader7.2.2:                                  ; preds = %.preheader6.1.1.2
  br i1 false, label %.preheader6.preheader.2, label %174

174:                                              ; preds = %.preheader7.2.2
  unreachable

175:                                              ; preds = %173
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %176

176:                                              ; preds = %175
  br label %.preheader5.preheader

.preheader5.preheader:                            ; preds = %176
  br label %.preheader5

.preheader5.loopexit:                             ; preds = %.preheader4.2
  br i1 false, label %.preheader4.preheader.1, label %183

.preheader4.preheader.1:                          ; preds = %.preheader5.loopexit.2, %.preheader5.loopexit.1251, %.preheader5.loopexit
  %indvars.iv98.lcssa244 = phi i64 [ 0, %.preheader5.loopexit ], [ 1, %.preheader5.loopexit.1251 ], [ 2, %.preheader5.loopexit.2 ]
  br label %.preheader4.1243

.preheader4.1243:                                 ; preds = %.preheader4.preheader.1
  br label %.preheader4.1.1

.preheader4.1.1:                                  ; preds = %.preheader4.1243
  %177 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %indvars.iv98.lcssa244
  store i32 1, ptr %177, align 4
  br label %.preheader4.2.1

.preheader4.2.1:                                  ; preds = %.preheader4.1.1
  %178 = or disjoint i64 %indvars.iv98.lcssa244, 64
  %179 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %178
  store i32 1, ptr %179, align 4
  br i1 false, label %180, label %.preheader5.loopexit.1

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
  br i1 false, label %.loopexit246, label %.preheader5.loopexit

.loopexit246:                                     ; preds = %.preheader4.2.2, %.preheader4.2.1250, %.preheader4.2
  %indvars.iv98.lcssa242.ph = phi i64 [ 0, %.preheader4.2 ], [ 1, %.preheader4.2.1250 ], [ 2, %.preheader4.2.2 ]
  br label %180

180:                                              ; preds = %.loopexit246, %.preheader4.2.1
  %indvars.iv98.lcssa242 = phi i64 [ %indvars.iv98.lcssa244, %.preheader4.2.1 ], [ %indvars.iv98.lcssa242.ph, %.loopexit246 ]
  %181 = or disjoint i64 %indvars.iv98.lcssa242, 128
  %182 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %181
  store i32 1, ptr %182, align 4
  unreachable

183:                                              ; preds = %.preheader5.loopexit
  br label %.preheader5.preheader.1

.preheader5.preheader.1:                          ; preds = %183
  br label %.preheader5.1

.preheader5.1:                                    ; preds = %.preheader5.preheader.1
  br label %.preheader4.preheader.1247

.preheader4.preheader.1247:                       ; preds = %.preheader5.1
  br label %.preheader4.1248

.preheader4.1248:                                 ; preds = %.preheader4.preheader.1247
  br label %.preheader4.1.1249

.preheader4.1.1249:                               ; preds = %.preheader4.1248
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20484), align 4
  br label %.preheader4.2.1250

.preheader4.2.1250:                               ; preds = %.preheader4.1.1249
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20740), align 4
  br i1 false, label %.loopexit246, label %.preheader5.loopexit.1251

.preheader5.loopexit.1251:                        ; preds = %.preheader4.2.1250
  br i1 false, label %.preheader4.preheader.1, label %184

184:                                              ; preds = %.preheader5.loopexit.1251
  br i1 false, label %.preheader5.preheader.2, label %186

.preheader5.preheader.2:                          ; preds = %184
  br label %.preheader5.2

.preheader5.2:                                    ; preds = %.preheader5.preheader.2
  br label %.preheader4.preheader.2

.preheader4.preheader.2:                          ; preds = %.preheader5.2
  br label %.preheader4.2252

.preheader4.2252:                                 ; preds = %.preheader4.preheader.2
  br label %.preheader4.1.2

.preheader4.1.2:                                  ; preds = %.preheader4.2252
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20488), align 4
  br label %.preheader4.2.2

.preheader4.2.2:                                  ; preds = %.preheader4.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20744), align 4
  br i1 false, label %.loopexit246, label %.preheader5.loopexit.2

.preheader5.loopexit.2:                           ; preds = %.preheader4.2.2
  br i1 false, label %.preheader4.preheader.1, label %185

185:                                              ; preds = %.preheader5.loopexit.2
  unreachable

186:                                              ; preds = %184
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %187

.loopexit:                                        ; preds = %.preheader3.2
  br i1 false, label %.preheader3.preheader.1, label %193

.preheader3.preheader.1:                          ; preds = %.loopexit
  br label %.preheader3.1257

.preheader3.1257:                                 ; preds = %.preheader3.preheader.1
  br label %.preheader2.preheader.1258

.preheader2.preheader.1258:                       ; preds = %.preheader3.1257
  br label %.preheader2.1259

.preheader2.1259:                                 ; preds = %.preheader2.preheader.1258
  br label %.preheader2.1.1260

.preheader2.1.1260:                               ; preds = %.preheader2.1259
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  br label %.preheader2.2.1261

.preheader2.2.1261:                               ; preds = %.preheader2.1.1260
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  br i1 false, label %.loopexit256, label %.preheader3.1.1

.preheader3.1.1:                                  ; preds = %.preheader2.2.1261
  br label %.preheader2.preheader.1.1

.preheader2.preheader.1.1:                        ; preds = %.preheader3.1.1
  br label %.preheader2.1254.1

.preheader2.1254.1:                               ; preds = %.preheader2.preheader.1.1
  br label %.preheader2.1.1.1

.preheader2.1.1.1:                                ; preds = %.preheader2.1254.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  br label %.preheader2.2.1.1

.preheader2.2.1.1:                                ; preds = %.preheader2.1.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  br i1 false, label %.loopexit256, label %.preheader3.2.1

.preheader3.2.1:                                  ; preds = %.preheader2.2.1.1
  br i1 false, label %.preheader2.preheader.2, label %.loopexit.1

.loopexit.1:                                      ; preds = %.preheader3.2.1
  unreachable

187:                                              ; preds = %186
  br label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %187
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
  br i1 false, label %.loopexit256, label %.preheader3.1

.loopexit256:                                     ; preds = %.preheader2.2.1.1, %.preheader2.2.1261, %.preheader2.2, %.preheader2.2.1
  %indvars.iv106.lcssa253.ph = phi i64 [ 1, %.preheader2.2.1 ], [ 0, %.preheader2.2 ], [ 0, %.preheader2.2.1261 ], [ 1, %.preheader2.2.1.1 ]
  br label %188

188:                                              ; preds = %.loopexit256, %.preheader2.2.2
  %indvars.iv106.lcssa253 = phi i64 [ 2, %.preheader2.2.2 ], [ %indvars.iv106.lcssa253.ph, %.loopexit256 ]
  %189 = shl nuw nsw i64 %indvars.iv106.lcssa253, 3
  %190 = or disjoint i64 128, %189
  %191 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %190
  store i32 1, ptr %191, align 4
  unreachable

.preheader3.1:                                    ; preds = %.preheader2.2
  br label %.preheader2.preheader.1

.preheader2.preheader.1:                          ; preds = %.preheader3.1
  br label %.preheader2.1254

.preheader2.1254:                                 ; preds = %.preheader2.preheader.1
  br label %.preheader2.1.1

.preheader2.1.1:                                  ; preds = %.preheader2.1254
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  br label %.preheader2.2.1

.preheader2.2.1:                                  ; preds = %.preheader2.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  br i1 false, label %.loopexit256, label %.preheader3.2

.preheader3.2:                                    ; preds = %.preheader2.2.1
  br i1 false, label %.preheader2.preheader.2, label %.loopexit

.preheader2.preheader.2:                          ; preds = %.preheader3.2.1, %.preheader3.2
  br label %.preheader2.2255

.preheader2.2255:                                 ; preds = %.preheader2.preheader.2
  br label %.preheader2.1.2

.preheader2.1.2:                                  ; preds = %.preheader2.2255
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22592), align 4
  br label %.preheader2.2.2

.preheader2.2.2:                                  ; preds = %.preheader2.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22848), align 4
  br i1 false, label %188, label %192

192:                                              ; preds = %.preheader2.2.2
  unreachable

193:                                              ; preds = %.loopexit
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %194

194:                                              ; preds = %193
  br label %.preheader1.preheader

.preheader1.preheader:                            ; preds = %194
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
  br i1 false, label %.loopexit268, label %.preheader1.1

.loopexit268:                                     ; preds = %.preheader.2.1.2, %.preheader.2.2278, %.preheader.2.1.1, %.preheader.2.1273, %.preheader.2, %.preheader.2.1
  %indvars.iv118.lcssa263.ph = phi i64 [ 0, %.preheader.2.1 ], [ 0, %.preheader.2 ], [ 1, %.preheader.2.1273 ], [ 1, %.preheader.2.1.1 ], [ 2, %.preheader.2.2278 ], [ 2, %.preheader.2.1.2 ]
  %indvars.iv114.lcssa262.ph = phi i64 [ 1, %.preheader.2.1 ], [ 0, %.preheader.2 ], [ 0, %.preheader.2.1273 ], [ 1, %.preheader.2.1.1 ], [ 0, %.preheader.2.2278 ], [ 1, %.preheader.2.1.2 ]
  br label %195

195:                                              ; preds = %.loopexit268, %.preheader.2.2
  %indvars.iv118.lcssa263 = phi i64 [ %indvars.iv118.lcssa267, %.preheader.2.2 ], [ %indvars.iv118.lcssa263.ph, %.loopexit268 ]
  %indvars.iv114.lcssa262 = phi i64 [ 2, %.preheader.2.2 ], [ %indvars.iv114.lcssa262.ph, %.loopexit268 ]
  %196 = shl nuw nsw i64 %indvars.iv114.lcssa262, 3
  %197 = or disjoint i64 128, %196
  %198 = or disjoint i64 %indvars.iv118.lcssa263, %197
  %199 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %198
  store i32 1, ptr %199, align 4
  unreachable

.preheader1.1:                                    ; preds = %.preheader.2
  br label %.preheader.preheader.1

.preheader.preheader.1:                           ; preds = %.preheader1.1
  br label %.preheader.1264

.preheader.1264:                                  ; preds = %.preheader.preheader.1
  br label %.preheader.1.1

.preheader.1.1:                                   ; preds = %.preheader.1264
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24608), align 4
  br label %.preheader.2.1

.preheader.2.1:                                   ; preds = %.preheader.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24864), align 4
  br i1 false, label %.loopexit268, label %.preheader1.2

.preheader1.2:                                    ; preds = %.preheader.2.1
  br i1 false, label %.preheader.preheader.2, label %205

.preheader.preheader.2:                           ; preds = %.preheader1.2.2, %.preheader1.2.1, %.preheader1.2
  %indvars.iv118.lcssa267 = phi i64 [ 0, %.preheader1.2 ], [ 1, %.preheader1.2.1 ], [ 2, %.preheader1.2.2 ]
  br label %.preheader.2265

.preheader.2265:                                  ; preds = %.preheader.preheader.2
  br label %.preheader.1.2

.preheader.1.2:                                   ; preds = %.preheader.2265
  %200 = or disjoint i64 %indvars.iv118.lcssa267, 16
  %201 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %200
  store i32 1, ptr %201, align 4
  br label %.preheader.2.2

.preheader.2.2:                                   ; preds = %.preheader.1.2
  %202 = or disjoint i64 %indvars.iv118.lcssa267, 80
  %203 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %202
  store i32 1, ptr %203, align 4
  br i1 false, label %195, label %204

204:                                              ; preds = %.preheader.2.2
  unreachable

205:                                              ; preds = %.preheader1.2
  br label %.preheader1.preheader.1

.preheader1.preheader.1:                          ; preds = %205
  br label %.preheader1.1269

.preheader1.1269:                                 ; preds = %.preheader1.preheader.1
  br label %.preheader.preheader.1270

.preheader.preheader.1270:                        ; preds = %.preheader1.1269
  br label %.preheader.1271

.preheader.1271:                                  ; preds = %.preheader.preheader.1270
  br label %.preheader.1.1272

.preheader.1.1272:                                ; preds = %.preheader.1271
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24580), align 4
  br label %.preheader.2.1273

.preheader.2.1273:                                ; preds = %.preheader.1.1272
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24836), align 4
  br i1 false, label %.loopexit268, label %.preheader1.1.1

.preheader1.1.1:                                  ; preds = %.preheader.2.1273
  br label %.preheader.preheader.1.1

.preheader.preheader.1.1:                         ; preds = %.preheader1.1.1
  br label %.preheader.1264.1

.preheader.1264.1:                                ; preds = %.preheader.preheader.1.1
  br label %.preheader.1.1.1

.preheader.1.1.1:                                 ; preds = %.preheader.1264.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24612), align 4
  br label %.preheader.2.1.1

.preheader.2.1.1:                                 ; preds = %.preheader.1.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24868), align 4
  br i1 false, label %.loopexit268, label %.preheader1.2.1

.preheader1.2.1:                                  ; preds = %.preheader.2.1.1
  br i1 false, label %.preheader.preheader.2, label %206

206:                                              ; preds = %.preheader1.2.1
  br i1 false, label %.preheader1.preheader.2, label %208

.preheader1.preheader.2:                          ; preds = %206
  br label %.preheader1.2274

.preheader1.2274:                                 ; preds = %.preheader1.preheader.2
  br label %.preheader.preheader.2275

.preheader.preheader.2275:                        ; preds = %.preheader1.2274
  br label %.preheader.2276

.preheader.2276:                                  ; preds = %.preheader.preheader.2275
  br label %.preheader.1.2277

.preheader.1.2277:                                ; preds = %.preheader.2276
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24584), align 4
  br label %.preheader.2.2278

.preheader.2.2278:                                ; preds = %.preheader.1.2277
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24840), align 4
  br i1 false, label %.loopexit268, label %.preheader1.1.2

.preheader1.1.2:                                  ; preds = %.preheader.2.2278
  br label %.preheader.preheader.1.2

.preheader.preheader.1.2:                         ; preds = %.preheader1.1.2
  br label %.preheader.1264.2

.preheader.1264.2:                                ; preds = %.preheader.preheader.1.2
  br label %.preheader.1.1.2

.preheader.1.1.2:                                 ; preds = %.preheader.1264.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24616), align 4
  br label %.preheader.2.1.2

.preheader.2.1.2:                                 ; preds = %.preheader.1.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24872), align 4
  br i1 false, label %.loopexit268, label %.preheader1.2.2

.preheader1.2.2:                                  ; preds = %.preheader.2.1.2
  br i1 false, label %.preheader.preheader.2, label %207

207:                                              ; preds = %.preheader1.2.2
  unreachable

208:                                              ; preds = %206
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %209 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %209, 0
  br i1 %.not, label %212, label %210

210:                                              ; preds = %208
  %211 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %211, ptr @n, align 4
  br label %213

212:                                              ; preds = %208
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %213

213:                                              ; preds = %212, %210
  %214 = load i32, ptr @n, align 4
  %215 = call i32 @Trial(i32 noundef %214)
  %.not16 = icmp eq i32 %215, 0
  br i1 %.not16, label %216, label %217

216:                                              ; preds = %213
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %220

217:                                              ; preds = %213
  %218 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %218, 2005
  br i1 %.not18, label %220, label %219

219:                                              ; preds = %217
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %220

220:                                              ; preds = %219, %217, %216
  %221 = load i32, ptr @n, align 4
  %222 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %221) #4
  %223 = load i32, ptr @kount, align 4
  %224 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %223) #4
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
