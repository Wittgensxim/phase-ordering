; ModuleID = 'results\test_rule2\Stanford_Puzzle\round_007\output.ll'
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
  %11 = getelementptr inbounds [4 x i8], ptr %10, i64 %indvars.iv
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
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %16 ], [ 0, %2 ]
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  %.not = icmp sgt i64 %indvars.iv1, %8
  br i1 %.not, label %17, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds [2048 x i8], ptr @p, i64 %5
  %11 = getelementptr inbounds [4 x i8], ptr %10, i64 %indvars.iv1
  %12 = load i32, ptr %11, align 4
  %.not4 = icmp eq i32 %12, 0
  br i1 %.not4, label %16, label %13

13:                                               ; preds = %9
  %14 = add nsw i64 %3, %indvars.iv1
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 1, ptr %15, align 4
  br label %16

16:                                               ; preds = %13, %9
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1
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
  %11 = getelementptr inbounds [4 x i8], ptr %10, i64 %indvars.iv
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
  %6 = getelementptr inbounds [4 x i8], ptr @class, i64 %indvars.iv
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
  %3 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  store i32 1, ptr %3, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv.next
  store i32 1, ptr %5, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.2 = icmp ne i64 %indvars.iv.next.1, 512
  br i1 %exitcond.2, label %6, label %.preheader31.preheader

6:                                                ; preds = %4
  %7 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv.next.1
  store i32 1, ptr %7, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  br label %1, !llvm.loop !13

.preheader31:                                     ; preds = %74, %.preheader31.preheader
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %74 ], [ 1, %.preheader31.preheader ]
  %exitcond13 = icmp ne i64 %indvars.iv10, 6
  br i1 %exitcond13, label %.preheader30.preheader, label %.preheader28.preheader

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
  %8 = add nuw nsw i64 %indvars.iv10, 72
  %9 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %8
  store i32 0, ptr %9, align 4
  br label %.preheader29.2

.preheader29.2:                                   ; preds = %.preheader29.1
  %10 = add nuw nsw i64 %indvars.iv10, 136
  %11 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %10
  store i32 0, ptr %11, align 4
  br label %.preheader29.3

.preheader29.3:                                   ; preds = %.preheader29.2
  %12 = add nuw nsw i64 %indvars.iv10, 200
  %13 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %12
  store i32 0, ptr %13, align 4
  br label %.preheader29.4

.preheader29.4:                                   ; preds = %.preheader29.3
  %14 = add nuw nsw i64 %indvars.iv10, 264
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 0, ptr %15, align 4
  br label %.preheader29.5

.preheader29.5:                                   ; preds = %.preheader29.4
  %16 = add nuw nsw i64 %indvars.iv10, 328
  %17 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %16
  store i32 0, ptr %17, align 4
  br i1 false, label %.loopexit, label %.preheader30.1

.loopexit:                                        ; preds = %.preheader29.5, %.preheader29.5.1, %.preheader29.5.2, %.preheader29.5.3, %.preheader29.5.4
  %indvars.iv10.lcssa179.ph = phi i64 [ %indvars.iv10, %.preheader29.5.4 ], [ %indvars.iv10, %.preheader29.5.3 ], [ %indvars.iv10, %.preheader29.5.2 ], [ %indvars.iv10, %.preheader29.5.1 ], [ %indvars.iv10, %.preheader29.5 ]
  %indvars.iv6.lcssa178.ph = phi i64 [ 5, %.preheader29.5.4 ], [ 4, %.preheader29.5.3 ], [ 3, %.preheader29.5.2 ], [ 2, %.preheader29.5.1 ], [ 1, %.preheader29.5 ]
  br label %18

18:                                               ; preds = %.loopexit, %.preheader29.5.5
  %indvars.iv10.lcssa179 = phi i64 [ %indvars.iv10.lcssa186, %.preheader29.5.5 ], [ %indvars.iv10.lcssa179.ph, %.loopexit ]
  %indvars.iv6.lcssa178 = phi i64 [ 6, %.preheader29.5.5 ], [ %indvars.iv6.lcssa178.ph, %.loopexit ]
  %19 = shl i64 %indvars.iv6.lcssa178, 3
  %20 = add nuw nsw i64 384, %19
  %21 = add nuw nsw i64 %indvars.iv10.lcssa179, %20
  %22 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %21
  store i32 0, ptr %22, align 4
  unreachable

.preheader30.1:                                   ; preds = %.preheader29.5
  br label %.preheader29.preheader.1

.preheader29.preheader.1:                         ; preds = %.preheader30.1
  br label %.preheader29.1180

.preheader29.1180:                                ; preds = %.preheader29.preheader.1
  br label %.preheader29.1.1

.preheader29.1.1:                                 ; preds = %.preheader29.1180
  %23 = add nuw nsw i64 %indvars.iv10, 80
  %24 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %23
  store i32 0, ptr %24, align 4
  br label %.preheader29.2.1

.preheader29.2.1:                                 ; preds = %.preheader29.1.1
  %25 = add nuw nsw i64 %indvars.iv10, 144
  %26 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %25
  store i32 0, ptr %26, align 4
  br label %.preheader29.3.1

.preheader29.3.1:                                 ; preds = %.preheader29.2.1
  %27 = add nuw nsw i64 %indvars.iv10, 208
  %28 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %27
  store i32 0, ptr %28, align 4
  br label %.preheader29.4.1

.preheader29.4.1:                                 ; preds = %.preheader29.3.1
  %29 = add nuw nsw i64 %indvars.iv10, 272
  %30 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %29
  store i32 0, ptr %30, align 4
  br label %.preheader29.5.1

.preheader29.5.1:                                 ; preds = %.preheader29.4.1
  %31 = add nuw nsw i64 %indvars.iv10, 336
  %32 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %31
  store i32 0, ptr %32, align 4
  br i1 false, label %.loopexit, label %.preheader30.2

.preheader30.2:                                   ; preds = %.preheader29.5.1
  br label %.preheader29.preheader.2

.preheader29.preheader.2:                         ; preds = %.preheader30.2
  br label %.preheader29.2181

.preheader29.2181:                                ; preds = %.preheader29.preheader.2
  br label %.preheader29.1.2

.preheader29.1.2:                                 ; preds = %.preheader29.2181
  %33 = add nuw nsw i64 %indvars.iv10, 88
  %34 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %33
  store i32 0, ptr %34, align 4
  br label %.preheader29.2.2

.preheader29.2.2:                                 ; preds = %.preheader29.1.2
  %35 = add nuw nsw i64 %indvars.iv10, 152
  %36 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %35
  store i32 0, ptr %36, align 4
  br label %.preheader29.3.2

.preheader29.3.2:                                 ; preds = %.preheader29.2.2
  %37 = add nuw nsw i64 %indvars.iv10, 216
  %38 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %37
  store i32 0, ptr %38, align 4
  br label %.preheader29.4.2

.preheader29.4.2:                                 ; preds = %.preheader29.3.2
  %39 = add nuw nsw i64 %indvars.iv10, 280
  %40 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %39
  store i32 0, ptr %40, align 4
  br label %.preheader29.5.2

.preheader29.5.2:                                 ; preds = %.preheader29.4.2
  %41 = add nuw nsw i64 %indvars.iv10, 344
  %42 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %41
  store i32 0, ptr %42, align 4
  br i1 false, label %.loopexit, label %.preheader30.3

.preheader30.3:                                   ; preds = %.preheader29.5.2
  br label %.preheader29.preheader.3

.preheader29.preheader.3:                         ; preds = %.preheader30.3
  br label %.preheader29.3182

.preheader29.3182:                                ; preds = %.preheader29.preheader.3
  br label %.preheader29.1.3

.preheader29.1.3:                                 ; preds = %.preheader29.3182
  %43 = add nuw nsw i64 %indvars.iv10, 96
  %44 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %43
  store i32 0, ptr %44, align 4
  br label %.preheader29.2.3

.preheader29.2.3:                                 ; preds = %.preheader29.1.3
  %45 = add nuw nsw i64 %indvars.iv10, 160
  %46 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %45
  store i32 0, ptr %46, align 4
  br label %.preheader29.3.3

.preheader29.3.3:                                 ; preds = %.preheader29.2.3
  %47 = add nuw nsw i64 %indvars.iv10, 224
  %48 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %47
  store i32 0, ptr %48, align 4
  br label %.preheader29.4.3

.preheader29.4.3:                                 ; preds = %.preheader29.3.3
  %49 = add nuw nsw i64 %indvars.iv10, 288
  %50 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %49
  store i32 0, ptr %50, align 4
  br label %.preheader29.5.3

.preheader29.5.3:                                 ; preds = %.preheader29.4.3
  %51 = add nuw nsw i64 %indvars.iv10, 352
  %52 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %51
  store i32 0, ptr %52, align 4
  br i1 false, label %.loopexit, label %.preheader30.4

.preheader30.4:                                   ; preds = %.preheader29.5.3
  br label %.preheader29.preheader.4

.preheader29.preheader.4:                         ; preds = %.preheader30.4
  br label %.preheader29.4183

.preheader29.4183:                                ; preds = %.preheader29.preheader.4
  br label %.preheader29.1.4

.preheader29.1.4:                                 ; preds = %.preheader29.4183
  %53 = add nuw nsw i64 %indvars.iv10, 104
  %54 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %53
  store i32 0, ptr %54, align 4
  br label %.preheader29.2.4

.preheader29.2.4:                                 ; preds = %.preheader29.1.4
  %55 = add nuw nsw i64 %indvars.iv10, 168
  %56 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %55
  store i32 0, ptr %56, align 4
  br label %.preheader29.3.4

.preheader29.3.4:                                 ; preds = %.preheader29.2.4
  %57 = add nuw nsw i64 %indvars.iv10, 232
  %58 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %57
  store i32 0, ptr %58, align 4
  br label %.preheader29.4.4

.preheader29.4.4:                                 ; preds = %.preheader29.3.4
  %59 = add nuw nsw i64 %indvars.iv10, 296
  %60 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %59
  store i32 0, ptr %60, align 4
  br label %.preheader29.5.4

.preheader29.5.4:                                 ; preds = %.preheader29.4.4
  %61 = add nuw nsw i64 %indvars.iv10, 360
  %62 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %61
  store i32 0, ptr %62, align 4
  br i1 false, label %.loopexit, label %.preheader30.5

.preheader30.5:                                   ; preds = %.preheader29.5.4
  br i1 false, label %.preheader29.preheader.5, label %74

.preheader29.preheader.5:                         ; preds = %.preheader30.5
  %indvars.iv10.lcssa186 = phi i64 [ %indvars.iv10, %.preheader30.5 ]
  br label %.preheader29.5184

.preheader29.5184:                                ; preds = %.preheader29.preheader.5
  br label %.preheader29.1.5

.preheader29.1.5:                                 ; preds = %.preheader29.5184
  %63 = add nuw nsw i64 %indvars.iv10.lcssa186, 112
  %64 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %63
  store i32 0, ptr %64, align 4
  br label %.preheader29.2.5

.preheader29.2.5:                                 ; preds = %.preheader29.1.5
  %65 = add nuw nsw i64 %indvars.iv10.lcssa186, 176
  %66 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %65
  store i32 0, ptr %66, align 4
  br label %.preheader29.3.5

.preheader29.3.5:                                 ; preds = %.preheader29.2.5
  %67 = add nuw nsw i64 %indvars.iv10.lcssa186, 240
  %68 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %67
  store i32 0, ptr %68, align 4
  br label %.preheader29.4.5

.preheader29.4.5:                                 ; preds = %.preheader29.3.5
  %69 = add nuw nsw i64 %indvars.iv10.lcssa186, 304
  %70 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %69
  store i32 0, ptr %70, align 4
  br label %.preheader29.5.5

.preheader29.5.5:                                 ; preds = %.preheader29.4.5
  %71 = add nuw nsw i64 %indvars.iv10.lcssa186, 368
  %72 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %71
  store i32 0, ptr %72, align 4
  br i1 false, label %18, label %73

73:                                               ; preds = %.preheader29.5.5
  unreachable

74:                                               ; preds = %.preheader30.5
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %.preheader31, !llvm.loop !14

.preheader28:                                     ; preds = %82, %.preheader28.preheader
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %82 ], [ 0, %.preheader28.preheader ]
  %exitcond21 = icmp ne i64 %indvars.iv18, 13
  br i1 %exitcond21, label %.preheader27.preheader, label %.preheader26.preheader

.preheader27.preheader:                           ; preds = %.preheader28
  %75 = getelementptr inbounds [2048 x i8], ptr @p, i64 %indvars.iv18
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  br label %.preheader26

.preheader27:                                     ; preds = %79, %.preheader27.preheader
  %indvars.iv14 = phi i64 [ 0, %.preheader27.preheader ], [ %indvars.iv.next15.2, %79 ]
  br label %.preheader27.1

.preheader27.1:                                   ; preds = %.preheader27
  %76 = getelementptr inbounds [2048 x i8], ptr @p, i64 %indvars.iv18
  %77 = getelementptr inbounds [4 x i8], ptr %76, i64 %indvars.iv14
  store i32 0, ptr %77, align 4
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %.preheader27.2

.preheader27.2:                                   ; preds = %.preheader27.1
  %78 = getelementptr inbounds [4 x i8], ptr %75, i64 %indvars.iv.next15
  store i32 0, ptr %78, align 4
  %indvars.iv.next15.1 = add nuw nsw i64 %indvars.iv14, 2
  %exitcond17.2 = icmp ne i64 %indvars.iv.next15.1, 512
  br i1 %exitcond17.2, label %79, label %82

79:                                               ; preds = %.preheader27.2
  %80 = getelementptr inbounds [2048 x i8], ptr @p, i64 %indvars.iv18
  %81 = getelementptr inbounds [4 x i8], ptr %80, i64 %indvars.iv.next15.1
  store i32 0, ptr %81, align 4
  %indvars.iv.next15.2 = add nuw nsw i64 %indvars.iv14, 3
  br label %.preheader27, !llvm.loop !15

82:                                               ; preds = %.preheader27.2
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
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
  br i1 false, label %.loopexit192, label %.preheader25.1

.loopexit192:                                     ; preds = %.preheader24.1.1.4, %.preheader24.1.4, %.preheader24.1.1.3, %.preheader24.1.3, %.preheader24.1.1.2, %.preheader24.1.2200, %.preheader24.1.1.1, %.preheader24.1.1196, %.preheader24.1, %.preheader24.1.1
  %indvars.iv30.lcssa188.ph = phi i64 [ 0, %.preheader24.1.1 ], [ 0, %.preheader24.1 ], [ 1, %.preheader24.1.1196 ], [ 1, %.preheader24.1.1.1 ], [ 2, %.preheader24.1.2200 ], [ 2, %.preheader24.1.1.2 ], [ 3, %.preheader24.1.3 ], [ 3, %.preheader24.1.1.3 ], [ 4, %.preheader24.1.4 ], [ 4, %.preheader24.1.1.4 ]
  %indvars.iv26.lcssa187.ph = phi i64 [ 1, %.preheader24.1.1 ], [ 0, %.preheader24.1 ], [ 0, %.preheader24.1.1196 ], [ 1, %.preheader24.1.1.1 ], [ 0, %.preheader24.1.2200 ], [ 1, %.preheader24.1.1.2 ], [ 0, %.preheader24.1.3 ], [ 1, %.preheader24.1.1.3 ], [ 0, %.preheader24.1.4 ], [ 1, %.preheader24.1.1.4 ]
  br label %83

83:                                               ; preds = %.loopexit192, %.preheader24.1.2
  %indvars.iv30.lcssa188 = phi i64 [ %indvars.iv30.lcssa191, %.preheader24.1.2 ], [ %indvars.iv30.lcssa188.ph, %.loopexit192 ]
  %indvars.iv26.lcssa187 = phi i64 [ 2, %.preheader24.1.2 ], [ %indvars.iv26.lcssa187.ph, %.loopexit192 ]
  %84 = shl i64 %indvars.iv26.lcssa187, 3
  %85 = add nuw nsw i64 64, %84
  %86 = add nuw nsw i64 %indvars.iv30.lcssa188, %85
  %87 = getelementptr inbounds [4 x i8], ptr @p, i64 %86
  store i32 1, ptr %87, align 4
  unreachable

.preheader25.1:                                   ; preds = %.preheader24.1
  br label %.preheader24.preheader.1

.preheader24.preheader.1:                         ; preds = %.preheader25.1
  br label %.preheader24.1189

.preheader24.1189:                                ; preds = %.preheader24.preheader.1
  br label %.preheader24.1.1

.preheader24.1.1:                                 ; preds = %.preheader24.1189
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 32), align 4
  br i1 false, label %.loopexit192, label %.preheader25.2

.preheader25.2:                                   ; preds = %.preheader24.1.1
  br i1 false, label %.preheader24.preheader.2, label %.preheader26.1

.preheader24.preheader.2:                         ; preds = %.preheader25.2.4, %.preheader25.2.3, %.preheader25.2.2, %.preheader25.2.1, %.preheader25.2
  %indvars.iv30.lcssa191 = phi i64 [ 0, %.preheader25.2 ], [ 1, %.preheader25.2.1 ], [ 2, %.preheader25.2.2 ], [ 3, %.preheader25.2.3 ], [ 4, %.preheader25.2.4 ]
  br label %.preheader24.2

.preheader24.2:                                   ; preds = %.preheader24.preheader.2
  br label %.preheader24.1.2

.preheader24.1.2:                                 ; preds = %.preheader24.2
  %88 = add nuw nsw i64 %indvars.iv30.lcssa191, 16
  %89 = getelementptr inbounds [4 x i8], ptr @p, i64 %88
  store i32 1, ptr %89, align 4
  br i1 false, label %83, label %90

90:                                               ; preds = %.preheader24.1.2
  unreachable

.preheader26.1:                                   ; preds = %.preheader25.2
  br label %.preheader25.preheader.1

.preheader25.preheader.1:                         ; preds = %.preheader26.1
  br label %.preheader25.1193

.preheader25.1193:                                ; preds = %.preheader25.preheader.1
  br label %.preheader24.preheader.1194

.preheader24.preheader.1194:                      ; preds = %.preheader25.1193
  br label %.preheader24.1195

.preheader24.1195:                                ; preds = %.preheader24.preheader.1194
  br label %.preheader24.1.1196

.preheader24.1.1196:                              ; preds = %.preheader24.1195
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4), align 4
  br i1 false, label %.loopexit192, label %.preheader25.1.1

.preheader25.1.1:                                 ; preds = %.preheader24.1.1196
  br label %.preheader24.preheader.1.1

.preheader24.preheader.1.1:                       ; preds = %.preheader25.1.1
  br label %.preheader24.1189.1

.preheader24.1189.1:                              ; preds = %.preheader24.preheader.1.1
  br label %.preheader24.1.1.1

.preheader24.1.1.1:                               ; preds = %.preheader24.1189.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 36), align 4
  br i1 false, label %.loopexit192, label %.preheader25.2.1

.preheader25.2.1:                                 ; preds = %.preheader24.1.1.1
  br i1 false, label %.preheader24.preheader.2, label %.preheader26.2

.preheader26.2:                                   ; preds = %.preheader25.2.1
  br label %.preheader25.preheader.2

.preheader25.preheader.2:                         ; preds = %.preheader26.2
  br label %.preheader25.2197

.preheader25.2197:                                ; preds = %.preheader25.preheader.2
  br label %.preheader24.preheader.2198

.preheader24.preheader.2198:                      ; preds = %.preheader25.2197
  br label %.preheader24.2199

.preheader24.2199:                                ; preds = %.preheader24.preheader.2198
  br label %.preheader24.1.2200

.preheader24.1.2200:                              ; preds = %.preheader24.2199
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8), align 4
  br i1 false, label %.loopexit192, label %.preheader25.1.2

.preheader25.1.2:                                 ; preds = %.preheader24.1.2200
  br label %.preheader24.preheader.1.2

.preheader24.preheader.1.2:                       ; preds = %.preheader25.1.2
  br label %.preheader24.1189.2

.preheader24.1189.2:                              ; preds = %.preheader24.preheader.1.2
  br label %.preheader24.1.1.2

.preheader24.1.1.2:                               ; preds = %.preheader24.1189.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 40), align 4
  br i1 false, label %.loopexit192, label %.preheader25.2.2

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
  br i1 false, label %.loopexit192, label %.preheader25.1.3

.preheader25.1.3:                                 ; preds = %.preheader24.1.3
  br label %.preheader24.preheader.1.3

.preheader24.preheader.1.3:                       ; preds = %.preheader25.1.3
  br label %.preheader24.1189.3

.preheader24.1189.3:                              ; preds = %.preheader24.preheader.1.3
  br label %.preheader24.1.1.3

.preheader24.1.1.3:                               ; preds = %.preheader24.1189.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 44), align 4
  br i1 false, label %.loopexit192, label %.preheader25.2.3

.preheader25.2.3:                                 ; preds = %.preheader24.1.1.3
  br i1 false, label %.preheader24.preheader.2, label %.preheader26.4

.preheader26.4:                                   ; preds = %.preheader25.2.3
  br i1 false, label %.preheader25.preheader.4, label %92

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
  br i1 false, label %.loopexit192, label %.preheader25.1.4

.preheader25.1.4:                                 ; preds = %.preheader24.1.4
  br label %.preheader24.preheader.1.4

.preheader24.preheader.1.4:                       ; preds = %.preheader25.1.4
  br label %.preheader24.1189.4

.preheader24.1189.4:                              ; preds = %.preheader24.preheader.1.4
  br label %.preheader24.1.1.4

.preheader24.1.1.4:                               ; preds = %.preheader24.1189.4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 48), align 4
  br i1 false, label %.loopexit192, label %.preheader25.2.4

.preheader25.2.4:                                 ; preds = %.preheader24.1.1.4
  br i1 false, label %.preheader24.preheader.2, label %91

91:                                               ; preds = %.preheader25.2.4
  unreachable

92:                                               ; preds = %.preheader26.4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %93

93:                                               ; preds = %92
  br label %.preheader23.preheader

.preheader23.preheader:                           ; preds = %93
  br label %.preheader23

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
  br i1 false, label %.loopexit206, label %.preheader23.1

.loopexit206:                                     ; preds = %.preheader22.4.2, %.preheader22.4.1213, %.preheader22.4
  %indvars.iv42.lcssa202.ph = phi i64 [ 0, %.preheader22.4 ], [ 1, %.preheader22.4.1213 ], [ 2, %.preheader22.4.2 ]
  %indvars.iv38.lcssa201.ph = phi i64 [ 0, %.preheader22.4 ], [ 0, %.preheader22.4.1213 ], [ 0, %.preheader22.4.2 ]
  br label %94

94:                                               ; preds = %.loopexit206, %.preheader22.4.1
  %indvars.iv42.lcssa202 = phi i64 [ %indvars.iv42.lcssa204, %.preheader22.4.1 ], [ %indvars.iv42.lcssa202.ph, %.loopexit206 ]
  %indvars.iv38.lcssa201 = phi i64 [ 1, %.preheader22.4.1 ], [ %indvars.iv38.lcssa201.ph, %.loopexit206 ]
  %95 = shl i64 %indvars.iv38.lcssa201, 3
  %96 = add nuw nsw i64 256, %95
  %97 = add nuw nsw i64 %indvars.iv42.lcssa202, %96
  %98 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %97
  store i32 1, ptr %98, align 4
  unreachable

.preheader23.1:                                   ; preds = %.preheader22.4
  br i1 false, label %.preheader22.preheader.1, label %108

.preheader22.preheader.1:                         ; preds = %.preheader23.1.2, %.preheader23.1.1, %.preheader23.1
  %indvars.iv42.lcssa204 = phi i64 [ 0, %.preheader23.1 ], [ 1, %.preheader23.1.1 ], [ 2, %.preheader23.1.2 ]
  br label %.preheader22.1203

.preheader22.1203:                                ; preds = %.preheader22.preheader.1
  br label %.preheader22.1.1

.preheader22.1.1:                                 ; preds = %.preheader22.1203
  %99 = add nuw nsw i64 %indvars.iv42.lcssa204, 8
  %100 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %99
  store i32 1, ptr %100, align 4
  br label %.preheader22.2.1

.preheader22.2.1:                                 ; preds = %.preheader22.1.1
  %101 = add nuw nsw i64 %indvars.iv42.lcssa204, 72
  %102 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %101
  store i32 1, ptr %102, align 4
  br label %.preheader22.3.1

.preheader22.3.1:                                 ; preds = %.preheader22.2.1
  %103 = add nuw nsw i64 %indvars.iv42.lcssa204, 136
  %104 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %103
  store i32 1, ptr %104, align 4
  br label %.preheader22.4.1

.preheader22.4.1:                                 ; preds = %.preheader22.3.1
  %105 = add nuw nsw i64 %indvars.iv42.lcssa204, 200
  %106 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %105
  store i32 1, ptr %106, align 4
  br i1 false, label %94, label %107

107:                                              ; preds = %.preheader22.4.1
  unreachable

108:                                              ; preds = %.preheader23.1
  br label %.preheader23.preheader.1

.preheader23.preheader.1:                         ; preds = %108
  br label %.preheader23.1207

.preheader23.1207:                                ; preds = %.preheader23.preheader.1
  br label %.preheader22.preheader.1208

.preheader22.preheader.1208:                      ; preds = %.preheader23.1207
  br label %.preheader22.1209

.preheader22.1209:                                ; preds = %.preheader22.preheader.1208
  br label %.preheader22.1.1210

.preheader22.1.1210:                              ; preds = %.preheader22.1209
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2052), align 4
  br label %.preheader22.2.1211

.preheader22.2.1211:                              ; preds = %.preheader22.1.1210
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2308), align 4
  br label %.preheader22.3.1212

.preheader22.3.1212:                              ; preds = %.preheader22.2.1211
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2564), align 4
  br label %.preheader22.4.1213

.preheader22.4.1213:                              ; preds = %.preheader22.3.1212
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2820), align 4
  br i1 false, label %.loopexit206, label %.preheader23.1.1

.preheader23.1.1:                                 ; preds = %.preheader22.4.1213
  br i1 false, label %.preheader22.preheader.1, label %109

109:                                              ; preds = %.preheader23.1.1
  br i1 false, label %.preheader23.preheader.2, label %111

.preheader23.preheader.2:                         ; preds = %109
  br label %.preheader23.2

.preheader23.2:                                   ; preds = %.preheader23.preheader.2
  br label %.preheader22.preheader.2

.preheader22.preheader.2:                         ; preds = %.preheader23.2
  br label %.preheader22.2214

.preheader22.2214:                                ; preds = %.preheader22.preheader.2
  br label %.preheader22.1.2

.preheader22.1.2:                                 ; preds = %.preheader22.2214
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
  br i1 false, label %.loopexit206, label %.preheader23.1.2

.preheader23.1.2:                                 ; preds = %.preheader22.4.2
  br i1 false, label %.preheader22.preheader.1, label %110

110:                                              ; preds = %.preheader23.1.2
  unreachable

111:                                              ; preds = %109
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %112

112:                                              ; preds = %111
  br label %.preheader21.preheader

.preheader21.preheader:                           ; preds = %112
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
  br i1 false, label %.loopexit221, label %.preheader21.1

.loopexit221:                                     ; preds = %.preheader20.2.3.1, %.preheader20.2.2.1, %.preheader20.2.1.1, %.preheader20.2.1226, %.preheader20.2, %.preheader20.2.1, %.preheader20.2.2, %.preheader20.2.3
  %indvars.iv54.lcssa216.ph = phi i64 [ 0, %.preheader20.2.3 ], [ 0, %.preheader20.2.2 ], [ 0, %.preheader20.2.1 ], [ 0, %.preheader20.2 ], [ 1, %.preheader20.2.1226 ], [ 1, %.preheader20.2.1.1 ], [ 1, %.preheader20.2.2.1 ], [ 1, %.preheader20.2.3.1 ]
  %indvars.iv50.lcssa215.ph = phi i64 [ 3, %.preheader20.2.3 ], [ 2, %.preheader20.2.2 ], [ 1, %.preheader20.2.1 ], [ 0, %.preheader20.2 ], [ 0, %.preheader20.2.1226 ], [ 1, %.preheader20.2.1.1 ], [ 2, %.preheader20.2.2.1 ], [ 3, %.preheader20.2.3.1 ]
  br label %113

113:                                              ; preds = %.loopexit221, %.preheader20.2.4
  %indvars.iv54.lcssa216 = phi i64 [ %indvars.iv54.lcssa220, %.preheader20.2.4 ], [ %indvars.iv54.lcssa216.ph, %.loopexit221 ]
  %indvars.iv50.lcssa215 = phi i64 [ 4, %.preheader20.2.4 ], [ %indvars.iv50.lcssa215.ph, %.loopexit221 ]
  %114 = shl i64 %indvars.iv50.lcssa215, 3
  %115 = add nuw nsw i64 128, %114
  %116 = add nuw nsw i64 %indvars.iv54.lcssa216, %115
  %117 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %116
  store i32 1, ptr %117, align 4
  unreachable

.preheader21.1:                                   ; preds = %.preheader20.2
  br label %.preheader20.preheader.1

.preheader20.preheader.1:                         ; preds = %.preheader21.1
  br label %.preheader20.1217

.preheader20.1217:                                ; preds = %.preheader20.preheader.1
  br label %.preheader20.1.1

.preheader20.1.1:                                 ; preds = %.preheader20.1217
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  br label %.preheader20.2.1

.preheader20.2.1:                                 ; preds = %.preheader20.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br i1 false, label %.loopexit221, label %.preheader21.2

.preheader21.2:                                   ; preds = %.preheader20.2.1
  br label %.preheader20.preheader.2

.preheader20.preheader.2:                         ; preds = %.preheader21.2
  br label %.preheader20.2218

.preheader20.2218:                                ; preds = %.preheader20.preheader.2
  br label %.preheader20.1.2

.preheader20.1.2:                                 ; preds = %.preheader20.2218
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  br label %.preheader20.2.2

.preheader20.2.2:                                 ; preds = %.preheader20.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br i1 false, label %.loopexit221, label %.preheader21.3

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
  br i1 false, label %.loopexit221, label %.preheader21.4

.preheader21.4:                                   ; preds = %.preheader20.2.3
  br i1 false, label %.preheader20.preheader.4, label %123

.preheader20.preheader.4:                         ; preds = %.preheader21.4.1, %.preheader21.4
  %indvars.iv54.lcssa220 = phi i64 [ 0, %.preheader21.4 ], [ 1, %.preheader21.4.1 ]
  br label %.preheader20.4

.preheader20.4:                                   ; preds = %.preheader20.preheader.4
  br label %.preheader20.1.4

.preheader20.1.4:                                 ; preds = %.preheader20.4
  %118 = add nuw nsw i64 %indvars.iv54.lcssa220, 32
  %119 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %118
  store i32 1, ptr %119, align 4
  br label %.preheader20.2.4

.preheader20.2.4:                                 ; preds = %.preheader20.1.4
  %120 = add nuw nsw i64 %indvars.iv54.lcssa220, 96
  %121 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %120
  store i32 1, ptr %121, align 4
  br i1 false, label %113, label %122

122:                                              ; preds = %.preheader20.2.4
  unreachable

123:                                              ; preds = %.preheader21.4
  br i1 false, label %.preheader21.preheader.1, label %125

.preheader21.preheader.1:                         ; preds = %123
  br label %.preheader21.1222

.preheader21.1222:                                ; preds = %.preheader21.preheader.1
  br label %.preheader20.preheader.1223

.preheader20.preheader.1223:                      ; preds = %.preheader21.1222
  br label %.preheader20.1224

.preheader20.1224:                                ; preds = %.preheader20.preheader.1223
  br label %.preheader20.1.1225

.preheader20.1.1225:                              ; preds = %.preheader20.1224
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4100), align 4
  br label %.preheader20.2.1226

.preheader20.2.1226:                              ; preds = %.preheader20.1.1225
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4356), align 4
  br i1 false, label %.loopexit221, label %.preheader21.1.1

.preheader21.1.1:                                 ; preds = %.preheader20.2.1226
  br label %.preheader20.preheader.1.1

.preheader20.preheader.1.1:                       ; preds = %.preheader21.1.1
  br label %.preheader20.1217.1

.preheader20.1217.1:                              ; preds = %.preheader20.preheader.1.1
  br label %.preheader20.1.1.1

.preheader20.1.1.1:                               ; preds = %.preheader20.1217.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4132), align 4
  br label %.preheader20.2.1.1

.preheader20.2.1.1:                               ; preds = %.preheader20.1.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4388), align 4
  br i1 false, label %.loopexit221, label %.preheader21.2.1

.preheader21.2.1:                                 ; preds = %.preheader20.2.1.1
  br label %.preheader20.preheader.2.1

.preheader20.preheader.2.1:                       ; preds = %.preheader21.2.1
  br label %.preheader20.2218.1

.preheader20.2218.1:                              ; preds = %.preheader20.preheader.2.1
  br label %.preheader20.1.2.1

.preheader20.1.2.1:                               ; preds = %.preheader20.2218.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4164), align 4
  br label %.preheader20.2.2.1

.preheader20.2.2.1:                               ; preds = %.preheader20.1.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4420), align 4
  br i1 false, label %.loopexit221, label %.preheader21.3.1

.preheader21.3.1:                                 ; preds = %.preheader20.2.2.1
  br label %.preheader20.preheader.3.1

.preheader20.preheader.3.1:                       ; preds = %.preheader21.3.1
  br label %.preheader20.3.1

.preheader20.3.1:                                 ; preds = %.preheader20.preheader.3.1
  br label %.preheader20.1.3.1

.preheader20.1.3.1:                               ; preds = %.preheader20.3.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4196), align 4
  br label %.preheader20.2.3.1

.preheader20.2.3.1:                               ; preds = %.preheader20.1.3.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4452), align 4
  br i1 false, label %.loopexit221, label %.preheader21.4.1

.preheader21.4.1:                                 ; preds = %.preheader20.2.3.1
  br i1 false, label %.preheader20.preheader.4, label %124

124:                                              ; preds = %.preheader21.4.1
  unreachable

125:                                              ; preds = %123
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %126

126:                                              ; preds = %125
  br label %.preheader19.preheader

.preheader19.preheader:                           ; preds = %126
  br label %.preheader19

.preheader19:                                     ; preds = %.preheader19.preheader
  br label %.preheader18.preheader

.preheader18.preheader:                           ; preds = %.preheader19
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader18.preheader
  br label %.preheader18.1

.preheader18.1:                                   ; preds = %.preheader18
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), align 4
  br i1 false, label %.loopexit232, label %.preheader19.1

.loopexit232:                                     ; preds = %.preheader18.1.3.2, %.preheader18.1.2.2, %.preheader18.1.1.2, %.preheader18.1.2240, %.preheader18.1.3.1, %.preheader18.1.2.1, %.preheader18.1.1.1, %.preheader18.1.1236, %.preheader18.1, %.preheader18.1.1, %.preheader18.1.2, %.preheader18.1.3
  %indvars.iv66.lcssa228.ph = phi i64 [ 0, %.preheader18.1.3 ], [ 0, %.preheader18.1.2 ], [ 0, %.preheader18.1.1 ], [ 0, %.preheader18.1 ], [ 1, %.preheader18.1.1236 ], [ 1, %.preheader18.1.1.1 ], [ 1, %.preheader18.1.2.1 ], [ 1, %.preheader18.1.3.1 ], [ 2, %.preheader18.1.2240 ], [ 2, %.preheader18.1.1.2 ], [ 2, %.preheader18.1.2.2 ], [ 2, %.preheader18.1.3.2 ]
  %indvars.iv62.lcssa227.ph = phi i64 [ 3, %.preheader18.1.3 ], [ 2, %.preheader18.1.2 ], [ 1, %.preheader18.1.1 ], [ 0, %.preheader18.1 ], [ 0, %.preheader18.1.1236 ], [ 1, %.preheader18.1.1.1 ], [ 2, %.preheader18.1.2.1 ], [ 3, %.preheader18.1.3.1 ], [ 0, %.preheader18.1.2240 ], [ 1, %.preheader18.1.1.2 ], [ 2, %.preheader18.1.2.2 ], [ 3, %.preheader18.1.3.2 ]
  br label %127

127:                                              ; preds = %.loopexit232, %.preheader18.1.4
  %indvars.iv66.lcssa228 = phi i64 [ %indvars.iv66.lcssa231, %.preheader18.1.4 ], [ %indvars.iv66.lcssa228.ph, %.loopexit232 ]
  %indvars.iv62.lcssa227 = phi i64 [ 4, %.preheader18.1.4 ], [ %indvars.iv62.lcssa227.ph, %.loopexit232 ]
  %128 = shl i64 %indvars.iv62.lcssa227, 3
  %129 = add nuw nsw i64 64, %128
  %130 = add nuw nsw i64 %indvars.iv66.lcssa228, %129
  %131 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %130
  store i32 1, ptr %131, align 4
  unreachable

.preheader19.1:                                   ; preds = %.preheader18.1
  br label %.preheader18.preheader.1

.preheader18.preheader.1:                         ; preds = %.preheader19.1
  br label %.preheader18.1229

.preheader18.1229:                                ; preds = %.preheader18.preheader.1
  br label %.preheader18.1.1

.preheader18.1.1:                                 ; preds = %.preheader18.1229
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6176), align 4
  br i1 false, label %.loopexit232, label %.preheader19.2

.preheader19.2:                                   ; preds = %.preheader18.1.1
  br label %.preheader18.preheader.2

.preheader18.preheader.2:                         ; preds = %.preheader19.2
  br label %.preheader18.2

.preheader18.2:                                   ; preds = %.preheader18.preheader.2
  br label %.preheader18.1.2

.preheader18.1.2:                                 ; preds = %.preheader18.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6208), align 4
  br i1 false, label %.loopexit232, label %.preheader19.3

.preheader19.3:                                   ; preds = %.preheader18.1.2
  br label %.preheader18.preheader.3

.preheader18.preheader.3:                         ; preds = %.preheader19.3
  br label %.preheader18.3

.preheader18.3:                                   ; preds = %.preheader18.preheader.3
  br label %.preheader18.1.3

.preheader18.1.3:                                 ; preds = %.preheader18.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6240), align 4
  br i1 false, label %.loopexit232, label %.preheader19.4

.preheader19.4:                                   ; preds = %.preheader18.1.3
  br i1 false, label %.preheader18.preheader.4, label %135

.preheader18.preheader.4:                         ; preds = %.preheader19.4.2, %.preheader19.4.1, %.preheader19.4
  %indvars.iv66.lcssa231 = phi i64 [ 0, %.preheader19.4 ], [ 1, %.preheader19.4.1 ], [ 2, %.preheader19.4.2 ]
  br label %.preheader18.4

.preheader18.4:                                   ; preds = %.preheader18.preheader.4
  br label %.preheader18.1.4

.preheader18.1.4:                                 ; preds = %.preheader18.4
  %132 = add nuw nsw i64 %indvars.iv66.lcssa231, 32
  %133 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %132
  store i32 1, ptr %133, align 4
  br i1 false, label %127, label %134

134:                                              ; preds = %.preheader18.1.4
  unreachable

135:                                              ; preds = %.preheader19.4
  br label %.preheader19.preheader.1

.preheader19.preheader.1:                         ; preds = %135
  br label %.preheader19.1233

.preheader19.1233:                                ; preds = %.preheader19.preheader.1
  br label %.preheader18.preheader.1234

.preheader18.preheader.1234:                      ; preds = %.preheader19.1233
  br label %.preheader18.1235

.preheader18.1235:                                ; preds = %.preheader18.preheader.1234
  br label %.preheader18.1.1236

.preheader18.1.1236:                              ; preds = %.preheader18.1235
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6148), align 4
  br i1 false, label %.loopexit232, label %.preheader19.1.1

.preheader19.1.1:                                 ; preds = %.preheader18.1.1236
  br label %.preheader18.preheader.1.1

.preheader18.preheader.1.1:                       ; preds = %.preheader19.1.1
  br label %.preheader18.1229.1

.preheader18.1229.1:                              ; preds = %.preheader18.preheader.1.1
  br label %.preheader18.1.1.1

.preheader18.1.1.1:                               ; preds = %.preheader18.1229.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6180), align 4
  br i1 false, label %.loopexit232, label %.preheader19.2.1

.preheader19.2.1:                                 ; preds = %.preheader18.1.1.1
  br label %.preheader18.preheader.2.1

.preheader18.preheader.2.1:                       ; preds = %.preheader19.2.1
  br label %.preheader18.2.1

.preheader18.2.1:                                 ; preds = %.preheader18.preheader.2.1
  br label %.preheader18.1.2.1

.preheader18.1.2.1:                               ; preds = %.preheader18.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6212), align 4
  br i1 false, label %.loopexit232, label %.preheader19.3.1

.preheader19.3.1:                                 ; preds = %.preheader18.1.2.1
  br label %.preheader18.preheader.3.1

.preheader18.preheader.3.1:                       ; preds = %.preheader19.3.1
  br label %.preheader18.3.1

.preheader18.3.1:                                 ; preds = %.preheader18.preheader.3.1
  br label %.preheader18.1.3.1

.preheader18.1.3.1:                               ; preds = %.preheader18.3.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6244), align 4
  br i1 false, label %.loopexit232, label %.preheader19.4.1

.preheader19.4.1:                                 ; preds = %.preheader18.1.3.1
  br i1 false, label %.preheader18.preheader.4, label %136

136:                                              ; preds = %.preheader19.4.1
  br i1 false, label %.preheader19.preheader.2, label %138

.preheader19.preheader.2:                         ; preds = %136
  br label %.preheader19.2237

.preheader19.2237:                                ; preds = %.preheader19.preheader.2
  br label %.preheader18.preheader.2238

.preheader18.preheader.2238:                      ; preds = %.preheader19.2237
  br label %.preheader18.2239

.preheader18.2239:                                ; preds = %.preheader18.preheader.2238
  br label %.preheader18.1.2240

.preheader18.1.2240:                              ; preds = %.preheader18.2239
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6152), align 4
  br i1 false, label %.loopexit232, label %.preheader19.1.2

.preheader19.1.2:                                 ; preds = %.preheader18.1.2240
  br label %.preheader18.preheader.1.2

.preheader18.preheader.1.2:                       ; preds = %.preheader19.1.2
  br label %.preheader18.1229.2

.preheader18.1229.2:                              ; preds = %.preheader18.preheader.1.2
  br label %.preheader18.1.1.2

.preheader18.1.1.2:                               ; preds = %.preheader18.1229.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6184), align 4
  br i1 false, label %.loopexit232, label %.preheader19.2.2

.preheader19.2.2:                                 ; preds = %.preheader18.1.1.2
  br label %.preheader18.preheader.2.2

.preheader18.preheader.2.2:                       ; preds = %.preheader19.2.2
  br label %.preheader18.2.2

.preheader18.2.2:                                 ; preds = %.preheader18.preheader.2.2
  br label %.preheader18.1.2.2

.preheader18.1.2.2:                               ; preds = %.preheader18.2.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6216), align 4
  br i1 false, label %.loopexit232, label %.preheader19.3.2

.preheader19.3.2:                                 ; preds = %.preheader18.1.2.2
  br label %.preheader18.preheader.3.2

.preheader18.preheader.3.2:                       ; preds = %.preheader19.3.2
  br label %.preheader18.3.2

.preheader18.3.2:                                 ; preds = %.preheader18.preheader.3.2
  br label %.preheader18.1.3.2

.preheader18.1.3.2:                               ; preds = %.preheader18.3.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6248), align 4
  br i1 false, label %.loopexit232, label %.preheader19.4.2

.preheader19.4.2:                                 ; preds = %.preheader18.1.3.2
  br i1 false, label %.preheader18.preheader.4, label %137

137:                                              ; preds = %.preheader19.4.2
  unreachable

138:                                              ; preds = %136
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %139

139:                                              ; preds = %138
  br label %.preheader17.preheader

.preheader17.preheader:                           ; preds = %139
  br label %.preheader17

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
  br i1 false, label %.loopexit246, label %.preheader17.1

.loopexit246:                                     ; preds = %.preheader16.2.4, %.preheader16.2.3, %.preheader16.2.2, %.preheader16.2.1251, %.preheader16.2
  %indvars.iv78.lcssa242.ph = phi i64 [ 0, %.preheader16.2 ], [ 1, %.preheader16.2.1251 ], [ 2, %.preheader16.2.2 ], [ 3, %.preheader16.2.3 ], [ 4, %.preheader16.2.4 ]
  %indvars.iv74.lcssa241.ph = phi i64 [ 0, %.preheader16.2 ], [ 0, %.preheader16.2.1251 ], [ 0, %.preheader16.2.2 ], [ 0, %.preheader16.2.3 ], [ 0, %.preheader16.2.4 ]
  br label %140

140:                                              ; preds = %.loopexit246, %.preheader16.2.1
  %indvars.iv78.lcssa242 = phi i64 [ %indvars.iv78.lcssa244, %.preheader16.2.1 ], [ %indvars.iv78.lcssa242.ph, %.loopexit246 ]
  %indvars.iv74.lcssa241 = phi i64 [ 1, %.preheader16.2.1 ], [ %indvars.iv74.lcssa241.ph, %.loopexit246 ]
  %141 = shl i64 %indvars.iv74.lcssa241, 3
  %142 = add nuw nsw i64 128, %141
  %143 = add nuw nsw i64 %indvars.iv78.lcssa242, %142
  %144 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %143
  store i32 1, ptr %144, align 4
  unreachable

.preheader17.1:                                   ; preds = %.preheader16.2
  br i1 false, label %.preheader16.preheader.1, label %150

.preheader16.preheader.1:                         ; preds = %.preheader17.1.4, %.preheader17.1.3, %.preheader17.1.2, %.preheader17.1.1, %.preheader17.1
  %indvars.iv78.lcssa244 = phi i64 [ 0, %.preheader17.1 ], [ 1, %.preheader17.1.1 ], [ 2, %.preheader17.1.2 ], [ 3, %.preheader17.1.3 ], [ 4, %.preheader17.1.4 ]
  br label %.preheader16.1243

.preheader16.1243:                                ; preds = %.preheader16.preheader.1
  br label %.preheader16.1.1

.preheader16.1.1:                                 ; preds = %.preheader16.1243
  %145 = add nuw nsw i64 %indvars.iv78.lcssa244, 8
  %146 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %145
  store i32 1, ptr %146, align 4
  br label %.preheader16.2.1

.preheader16.2.1:                                 ; preds = %.preheader16.1.1
  %147 = add nuw nsw i64 %indvars.iv78.lcssa244, 72
  %148 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %147
  store i32 1, ptr %148, align 4
  br i1 false, label %140, label %149

149:                                              ; preds = %.preheader16.2.1
  unreachable

150:                                              ; preds = %.preheader17.1
  br label %.preheader17.preheader.1

.preheader17.preheader.1:                         ; preds = %150
  br label %.preheader17.1247

.preheader17.1247:                                ; preds = %.preheader17.preheader.1
  br label %.preheader16.preheader.1248

.preheader16.preheader.1248:                      ; preds = %.preheader17.1247
  br label %.preheader16.1249

.preheader16.1249:                                ; preds = %.preheader16.preheader.1248
  br label %.preheader16.1.1250

.preheader16.1.1250:                              ; preds = %.preheader16.1249
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8196), align 4
  br label %.preheader16.2.1251

.preheader16.2.1251:                              ; preds = %.preheader16.1.1250
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8452), align 4
  br i1 false, label %.loopexit246, label %.preheader17.1.1

.preheader17.1.1:                                 ; preds = %.preheader16.2.1251
  br i1 false, label %.preheader16.preheader.1, label %151

151:                                              ; preds = %.preheader17.1.1
  br label %.preheader17.preheader.2

.preheader17.preheader.2:                         ; preds = %151
  br label %.preheader17.2

.preheader17.2:                                   ; preds = %.preheader17.preheader.2
  br label %.preheader16.preheader.2

.preheader16.preheader.2:                         ; preds = %.preheader17.2
  br label %.preheader16.2252

.preheader16.2252:                                ; preds = %.preheader16.preheader.2
  br label %.preheader16.1.2

.preheader16.1.2:                                 ; preds = %.preheader16.2252
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8200), align 4
  br label %.preheader16.2.2

.preheader16.2.2:                                 ; preds = %.preheader16.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8456), align 4
  br i1 false, label %.loopexit246, label %.preheader17.1.2

.preheader17.1.2:                                 ; preds = %.preheader16.2.2
  br i1 false, label %.preheader16.preheader.1, label %152

152:                                              ; preds = %.preheader17.1.2
  br label %.preheader17.preheader.3

.preheader17.preheader.3:                         ; preds = %152
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
  br i1 false, label %.loopexit246, label %.preheader17.1.3

.preheader17.1.3:                                 ; preds = %.preheader16.2.3
  br i1 false, label %.preheader16.preheader.1, label %153

153:                                              ; preds = %.preheader17.1.3
  br i1 false, label %.preheader17.preheader.4, label %155

.preheader17.preheader.4:                         ; preds = %153
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
  br i1 false, label %.loopexit246, label %.preheader17.1.4

.preheader17.1.4:                                 ; preds = %.preheader16.2.4
  br i1 false, label %.preheader16.preheader.1, label %154

154:                                              ; preds = %.preheader17.1.4
  unreachable

155:                                              ; preds = %153
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %156

156:                                              ; preds = %155
  br label %.preheader15.preheader

.preheader15.preheader:                           ; preds = %156
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
  br i1 false, label %.loopexit259, label %.preheader15.1

.loopexit259:                                     ; preds = %.preheader14.4.1.1, %.preheader14.4.1266, %.preheader14.4, %.preheader14.4.1
  %indvars.iv90.lcssa254.ph = phi i64 [ 0, %.preheader14.4.1 ], [ 0, %.preheader14.4 ], [ 1, %.preheader14.4.1266 ], [ 1, %.preheader14.4.1.1 ]
  %indvars.iv86.lcssa253.ph = phi i64 [ 1, %.preheader14.4.1 ], [ 0, %.preheader14.4 ], [ 0, %.preheader14.4.1266 ], [ 1, %.preheader14.4.1.1 ]
  br label %157

157:                                              ; preds = %.loopexit259, %.preheader14.4.2
  %indvars.iv90.lcssa254 = phi i64 [ %indvars.iv90.lcssa258, %.preheader14.4.2 ], [ %indvars.iv90.lcssa254.ph, %.loopexit259 ]
  %indvars.iv86.lcssa253 = phi i64 [ 2, %.preheader14.4.2 ], [ %indvars.iv86.lcssa253.ph, %.loopexit259 ]
  %158 = shl i64 %indvars.iv86.lcssa253, 3
  %159 = add nuw nsw i64 256, %158
  %160 = add nuw nsw i64 %indvars.iv90.lcssa254, %159
  %161 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %160
  store i32 1, ptr %161, align 4
  unreachable

.preheader15.1:                                   ; preds = %.preheader14.4
  br label %.preheader14.preheader.1

.preheader14.preheader.1:                         ; preds = %.preheader15.1
  br label %.preheader14.1255

.preheader14.1255:                                ; preds = %.preheader14.preheader.1
  br label %.preheader14.1.1

.preheader14.1.1:                                 ; preds = %.preheader14.1255
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
  br i1 false, label %.loopexit259, label %.preheader15.2

.preheader15.2:                                   ; preds = %.preheader14.4.1
  br i1 false, label %.preheader14.preheader.2, label %171

.preheader14.preheader.2:                         ; preds = %.preheader15.2.1, %.preheader15.2
  %indvars.iv90.lcssa258 = phi i64 [ 0, %.preheader15.2 ], [ 1, %.preheader15.2.1 ]
  br label %.preheader14.2256

.preheader14.2256:                                ; preds = %.preheader14.preheader.2
  br label %.preheader14.1.2

.preheader14.1.2:                                 ; preds = %.preheader14.2256
  %162 = add nuw nsw i64 %indvars.iv90.lcssa258, 16
  %163 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %162
  store i32 1, ptr %163, align 4
  br label %.preheader14.2.2

.preheader14.2.2:                                 ; preds = %.preheader14.1.2
  %164 = add nuw nsw i64 %indvars.iv90.lcssa258, 80
  %165 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %164
  store i32 1, ptr %165, align 4
  br label %.preheader14.3.2

.preheader14.3.2:                                 ; preds = %.preheader14.2.2
  %166 = add nuw nsw i64 %indvars.iv90.lcssa258, 144
  %167 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %166
  store i32 1, ptr %167, align 4
  br label %.preheader14.4.2

.preheader14.4.2:                                 ; preds = %.preheader14.3.2
  %168 = add nuw nsw i64 %indvars.iv90.lcssa258, 208
  %169 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %168
  store i32 1, ptr %169, align 4
  br i1 false, label %157, label %170

170:                                              ; preds = %.preheader14.4.2
  unreachable

171:                                              ; preds = %.preheader15.2
  br i1 false, label %.preheader15.preheader.1, label %173

.preheader15.preheader.1:                         ; preds = %171
  br label %.preheader15.1260

.preheader15.1260:                                ; preds = %.preheader15.preheader.1
  br label %.preheader14.preheader.1261

.preheader14.preheader.1261:                      ; preds = %.preheader15.1260
  br label %.preheader14.1262

.preheader14.1262:                                ; preds = %.preheader14.preheader.1261
  br label %.preheader14.1.1263

.preheader14.1.1263:                              ; preds = %.preheader14.1262
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10244), align 4
  br label %.preheader14.2.1264

.preheader14.2.1264:                              ; preds = %.preheader14.1.1263
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10500), align 4
  br label %.preheader14.3.1265

.preheader14.3.1265:                              ; preds = %.preheader14.2.1264
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10756), align 4
  br label %.preheader14.4.1266

.preheader14.4.1266:                              ; preds = %.preheader14.3.1265
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11012), align 4
  br i1 false, label %.loopexit259, label %.preheader15.1.1

.preheader15.1.1:                                 ; preds = %.preheader14.4.1266
  br label %.preheader14.preheader.1.1

.preheader14.preheader.1.1:                       ; preds = %.preheader15.1.1
  br label %.preheader14.1255.1

.preheader14.1255.1:                              ; preds = %.preheader14.preheader.1.1
  br label %.preheader14.1.1.1

.preheader14.1.1.1:                               ; preds = %.preheader14.1255.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10276), align 4
  br label %.preheader14.2.1.1

.preheader14.2.1.1:                               ; preds = %.preheader14.1.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10532), align 4
  br label %.preheader14.3.1.1

.preheader14.3.1.1:                               ; preds = %.preheader14.2.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10788), align 4
  br label %.preheader14.4.1.1

.preheader14.4.1.1:                               ; preds = %.preheader14.3.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11044), align 4
  br i1 false, label %.loopexit259, label %.preheader15.2.1

.preheader15.2.1:                                 ; preds = %.preheader14.4.1.1
  br i1 false, label %.preheader14.preheader.2, label %172

172:                                              ; preds = %.preheader15.2.1
  unreachable

173:                                              ; preds = %171
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %174

174:                                              ; preds = %173
  br label %.preheader13.preheader

.preheader13.preheader:                           ; preds = %174
  br label %.preheader13

.preheader13:                                     ; preds = %.preheader13.preheader
  br label %.preheader12.preheader

.preheader12.preheader:                           ; preds = %.preheader13
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader12.preheader
  br label %.preheader12.1

.preheader12.1:                                   ; preds = %.preheader12
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), align 4
  br i1 false, label %.loopexit272, label %.preheader13.1

.loopexit272:                                     ; preds = %.preheader12.1.3, %.preheader12.1.2, %.preheader12.1.1276, %.preheader12.1
  %indvars.iv102.lcssa268.ph = phi i64 [ 0, %.preheader12.1 ], [ 1, %.preheader12.1.1276 ], [ 2, %.preheader12.1.2 ], [ 3, %.preheader12.1.3 ]
  %indvars.iv98.lcssa267.ph = phi i64 [ 0, %.preheader12.1 ], [ 0, %.preheader12.1.1276 ], [ 0, %.preheader12.1.2 ], [ 0, %.preheader12.1.3 ]
  br label %175

175:                                              ; preds = %.loopexit272, %.preheader12.1.1
  %indvars.iv102.lcssa268 = phi i64 [ %indvars.iv102.lcssa270, %.preheader12.1.1 ], [ %indvars.iv102.lcssa268.ph, %.loopexit272 ]
  %indvars.iv98.lcssa267 = phi i64 [ 1, %.preheader12.1.1 ], [ %indvars.iv98.lcssa267.ph, %.loopexit272 ]
  %176 = shl i64 %indvars.iv98.lcssa267, 3
  %177 = add nuw nsw i64 64, %176
  %178 = add nuw nsw i64 %indvars.iv102.lcssa268, %177
  %179 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %178
  store i32 1, ptr %179, align 4
  unreachable

.preheader13.1:                                   ; preds = %.preheader12.1
  br i1 false, label %.preheader12.preheader.1, label %183

.preheader12.preheader.1:                         ; preds = %.preheader13.1.3, %.preheader13.1.2, %.preheader13.1.1, %.preheader13.1
  %indvars.iv102.lcssa270 = phi i64 [ 0, %.preheader13.1 ], [ 1, %.preheader13.1.1 ], [ 2, %.preheader13.1.2 ], [ 3, %.preheader13.1.3 ]
  br label %.preheader12.1269

.preheader12.1269:                                ; preds = %.preheader12.preheader.1
  br label %.preheader12.1.1

.preheader12.1.1:                                 ; preds = %.preheader12.1269
  %180 = add nuw nsw i64 %indvars.iv102.lcssa270, 8
  %181 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %180
  store i32 1, ptr %181, align 4
  br i1 false, label %175, label %182

182:                                              ; preds = %.preheader12.1.1
  unreachable

183:                                              ; preds = %.preheader13.1
  br label %.preheader13.preheader.1

.preheader13.preheader.1:                         ; preds = %183
  br label %.preheader13.1273

.preheader13.1273:                                ; preds = %.preheader13.preheader.1
  br label %.preheader12.preheader.1274

.preheader12.preheader.1274:                      ; preds = %.preheader13.1273
  br label %.preheader12.1275

.preheader12.1275:                                ; preds = %.preheader12.preheader.1274
  br label %.preheader12.1.1276

.preheader12.1.1276:                              ; preds = %.preheader12.1275
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12292), align 4
  br i1 false, label %.loopexit272, label %.preheader13.1.1

.preheader13.1.1:                                 ; preds = %.preheader12.1.1276
  br i1 false, label %.preheader12.preheader.1, label %184

184:                                              ; preds = %.preheader13.1.1
  br label %.preheader13.preheader.2

.preheader13.preheader.2:                         ; preds = %184
  br label %.preheader13.2

.preheader13.2:                                   ; preds = %.preheader13.preheader.2
  br label %.preheader12.preheader.2

.preheader12.preheader.2:                         ; preds = %.preheader13.2
  br label %.preheader12.2

.preheader12.2:                                   ; preds = %.preheader12.preheader.2
  br label %.preheader12.1.2

.preheader12.1.2:                                 ; preds = %.preheader12.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12296), align 4
  br i1 false, label %.loopexit272, label %.preheader13.1.2

.preheader13.1.2:                                 ; preds = %.preheader12.1.2
  br i1 false, label %.preheader12.preheader.1, label %185

185:                                              ; preds = %.preheader13.1.2
  br i1 false, label %.preheader13.preheader.3, label %187

.preheader13.preheader.3:                         ; preds = %185
  br label %.preheader13.3

.preheader13.3:                                   ; preds = %.preheader13.preheader.3
  br label %.preheader12.preheader.3

.preheader12.preheader.3:                         ; preds = %.preheader13.3
  br label %.preheader12.3

.preheader12.3:                                   ; preds = %.preheader12.preheader.3
  br label %.preheader12.1.3

.preheader12.1.3:                                 ; preds = %.preheader12.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12300), align 4
  br i1 false, label %.loopexit272, label %.preheader13.1.3

.preheader13.1.3:                                 ; preds = %.preheader12.1.3
  br i1 false, label %.preheader12.preheader.1, label %186

186:                                              ; preds = %.preheader13.1.3
  unreachable

187:                                              ; preds = %185
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %188

188:                                              ; preds = %187
  br label %.preheader11.preheader

.preheader11.preheader:                           ; preds = %188
  br label %.preheader11

.preheader11:                                     ; preds = %.preheader11.preheader
  br label %.preheader10.preheader

.preheader10.preheader:                           ; preds = %.preheader11
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader10.preheader
  br label %.preheader10.1

.preheader10.1:                                   ; preds = %.preheader10
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br i1 false, label %.loopexit282, label %.preheader11.1

.loopexit282:                                     ; preds = %.preheader10.1.2.1, %.preheader10.1.1.1, %.preheader10.1.1286, %.preheader10.1, %.preheader10.1.1, %.preheader10.1.2
  %indvars.iv114.lcssa278.ph = phi i64 [ 0, %.preheader10.1.2 ], [ 0, %.preheader10.1.1 ], [ 0, %.preheader10.1 ], [ 1, %.preheader10.1.1286 ], [ 1, %.preheader10.1.1.1 ], [ 1, %.preheader10.1.2.1 ]
  %indvars.iv110.lcssa277.ph = phi i64 [ 2, %.preheader10.1.2 ], [ 1, %.preheader10.1.1 ], [ 0, %.preheader10.1 ], [ 0, %.preheader10.1.1286 ], [ 1, %.preheader10.1.1.1 ], [ 2, %.preheader10.1.2.1 ]
  br label %189

189:                                              ; preds = %.loopexit282, %.preheader10.1.3
  %indvars.iv114.lcssa278 = phi i64 [ %indvars.iv114.lcssa281, %.preheader10.1.3 ], [ %indvars.iv114.lcssa278.ph, %.loopexit282 ]
  %indvars.iv110.lcssa277 = phi i64 [ 3, %.preheader10.1.3 ], [ %indvars.iv110.lcssa277.ph, %.loopexit282 ]
  %190 = shl i64 %indvars.iv110.lcssa277, 3
  %191 = add nuw nsw i64 64, %190
  %192 = add nuw nsw i64 %indvars.iv114.lcssa278, %191
  %193 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %192
  store i32 1, ptr %193, align 4
  unreachable

.preheader11.1:                                   ; preds = %.preheader10.1
  br label %.preheader10.preheader.1

.preheader10.preheader.1:                         ; preds = %.preheader11.1
  br label %.preheader10.1279

.preheader10.1279:                                ; preds = %.preheader10.preheader.1
  br label %.preheader10.1.1

.preheader10.1.1:                                 ; preds = %.preheader10.1279
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br i1 false, label %.loopexit282, label %.preheader11.2

.preheader11.2:                                   ; preds = %.preheader10.1.1
  br label %.preheader10.preheader.2

.preheader10.preheader.2:                         ; preds = %.preheader11.2
  br label %.preheader10.2

.preheader10.2:                                   ; preds = %.preheader10.preheader.2
  br label %.preheader10.1.2

.preheader10.1.2:                                 ; preds = %.preheader10.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  br i1 false, label %.loopexit282, label %.preheader11.3

.preheader11.3:                                   ; preds = %.preheader10.1.2
  br i1 false, label %.preheader10.preheader.3, label %197

.preheader10.preheader.3:                         ; preds = %.preheader11.3.1, %.preheader11.3
  %indvars.iv114.lcssa281 = phi i64 [ 0, %.preheader11.3 ], [ 1, %.preheader11.3.1 ]
  br label %.preheader10.3

.preheader10.3:                                   ; preds = %.preheader10.preheader.3
  br label %.preheader10.1.3

.preheader10.1.3:                                 ; preds = %.preheader10.3
  %194 = add nuw nsw i64 %indvars.iv114.lcssa281, 24
  %195 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %194
  store i32 1, ptr %195, align 4
  br i1 false, label %189, label %196

196:                                              ; preds = %.preheader10.1.3
  unreachable

197:                                              ; preds = %.preheader11.3
  br i1 false, label %.preheader11.preheader.1, label %199

.preheader11.preheader.1:                         ; preds = %197
  br label %.preheader11.1283

.preheader11.1283:                                ; preds = %.preheader11.preheader.1
  br label %.preheader10.preheader.1284

.preheader10.preheader.1284:                      ; preds = %.preheader11.1283
  br label %.preheader10.1285

.preheader10.1285:                                ; preds = %.preheader10.preheader.1284
  br label %.preheader10.1.1286

.preheader10.1.1286:                              ; preds = %.preheader10.1285
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14340), align 4
  br i1 false, label %.loopexit282, label %.preheader11.1.1

.preheader11.1.1:                                 ; preds = %.preheader10.1.1286
  br label %.preheader10.preheader.1.1

.preheader10.preheader.1.1:                       ; preds = %.preheader11.1.1
  br label %.preheader10.1279.1

.preheader10.1279.1:                              ; preds = %.preheader10.preheader.1.1
  br label %.preheader10.1.1.1

.preheader10.1.1.1:                               ; preds = %.preheader10.1279.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14372), align 4
  br i1 false, label %.loopexit282, label %.preheader11.2.1

.preheader11.2.1:                                 ; preds = %.preheader10.1.1.1
  br label %.preheader10.preheader.2.1

.preheader10.preheader.2.1:                       ; preds = %.preheader11.2.1
  br label %.preheader10.2.1

.preheader10.2.1:                                 ; preds = %.preheader10.preheader.2.1
  br label %.preheader10.1.2.1

.preheader10.1.2.1:                               ; preds = %.preheader10.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14404), align 4
  br i1 false, label %.loopexit282, label %.preheader11.3.1

.preheader11.3.1:                                 ; preds = %.preheader10.1.2.1
  br i1 false, label %.preheader10.preheader.3, label %198

198:                                              ; preds = %.preheader11.3.1
  unreachable

199:                                              ; preds = %197
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %200

200:                                              ; preds = %199
  br label %.preheader9.preheader

.preheader9.preheader:                            ; preds = %200
  br label %.preheader9

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
  br i1 false, label %.loopexit292, label %.preheader9.1

.loopexit292:                                     ; preds = %.preheader8.3.1298, %.preheader8.3
  %indvars.iv126.lcssa288.ph = phi i64 [ 0, %.preheader8.3 ], [ 1, %.preheader8.3.1298 ]
  %indvars.iv122.lcssa287.ph = phi i64 [ 0, %.preheader8.3 ], [ 0, %.preheader8.3.1298 ]
  br label %201

201:                                              ; preds = %.loopexit292, %.preheader8.3.1
  %indvars.iv126.lcssa288 = phi i64 [ %indvars.iv126.lcssa290, %.preheader8.3.1 ], [ %indvars.iv126.lcssa288.ph, %.loopexit292 ]
  %indvars.iv122.lcssa287 = phi i64 [ 1, %.preheader8.3.1 ], [ %indvars.iv122.lcssa287.ph, %.loopexit292 ]
  %202 = shl i64 %indvars.iv122.lcssa287, 3
  %203 = add nuw nsw i64 192, %202
  %204 = add nuw nsw i64 %indvars.iv126.lcssa288, %203
  %205 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %204
  store i32 1, ptr %205, align 4
  unreachable

.preheader9.1:                                    ; preds = %.preheader8.3
  br i1 false, label %.preheader8.preheader.1, label %213

.preheader8.preheader.1:                          ; preds = %.preheader9.1.1, %.preheader9.1
  %indvars.iv126.lcssa290 = phi i64 [ 0, %.preheader9.1 ], [ 1, %.preheader9.1.1 ]
  br label %.preheader8.1289

.preheader8.1289:                                 ; preds = %.preheader8.preheader.1
  br label %.preheader8.1.1

.preheader8.1.1:                                  ; preds = %.preheader8.1289
  %206 = add nuw nsw i64 %indvars.iv126.lcssa290, 8
  %207 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %206
  store i32 1, ptr %207, align 4
  br label %.preheader8.2.1

.preheader8.2.1:                                  ; preds = %.preheader8.1.1
  %208 = add nuw nsw i64 %indvars.iv126.lcssa290, 72
  %209 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %208
  store i32 1, ptr %209, align 4
  br label %.preheader8.3.1

.preheader8.3.1:                                  ; preds = %.preheader8.2.1
  %210 = add nuw nsw i64 %indvars.iv126.lcssa290, 136
  %211 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %210
  store i32 1, ptr %211, align 4
  br i1 false, label %201, label %212

212:                                              ; preds = %.preheader8.3.1
  unreachable

213:                                              ; preds = %.preheader9.1
  br i1 false, label %.preheader9.preheader.1, label %215

.preheader9.preheader.1:                          ; preds = %213
  br label %.preheader9.1293

.preheader9.1293:                                 ; preds = %.preheader9.preheader.1
  br label %.preheader8.preheader.1294

.preheader8.preheader.1294:                       ; preds = %.preheader9.1293
  br label %.preheader8.1295

.preheader8.1295:                                 ; preds = %.preheader8.preheader.1294
  br label %.preheader8.1.1296

.preheader8.1.1296:                               ; preds = %.preheader8.1295
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16388), align 4
  br label %.preheader8.2.1297

.preheader8.2.1297:                               ; preds = %.preheader8.1.1296
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16644), align 4
  br label %.preheader8.3.1298

.preheader8.3.1298:                               ; preds = %.preheader8.2.1297
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16900), align 4
  br i1 false, label %.loopexit292, label %.preheader9.1.1

.preheader9.1.1:                                  ; preds = %.preheader8.3.1298
  br i1 false, label %.preheader8.preheader.1, label %214

214:                                              ; preds = %.preheader9.1.1
  unreachable

215:                                              ; preds = %213
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %216

216:                                              ; preds = %215
  br label %.preheader7.preheader

.preheader7.preheader:                            ; preds = %216
  br label %.preheader7

.preheader7:                                      ; preds = %.preheader7.preheader
  br label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %.preheader7
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.preheader
  br label %.preheader6.1

.preheader6.1:                                    ; preds = %.preheader6
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), align 4
  br i1 false, label %.loopexit304, label %.preheader7.1

.loopexit304:                                     ; preds = %.preheader6.1.1.2, %.preheader6.1.2312, %.preheader6.1.1.1, %.preheader6.1.1308, %.preheader6.1, %.preheader6.1.1
  %indvars.iv138.lcssa300.ph = phi i64 [ 0, %.preheader6.1.1 ], [ 0, %.preheader6.1 ], [ 1, %.preheader6.1.1308 ], [ 1, %.preheader6.1.1.1 ], [ 2, %.preheader6.1.2312 ], [ 2, %.preheader6.1.1.2 ]
  %indvars.iv134.lcssa299.ph = phi i64 [ 1, %.preheader6.1.1 ], [ 0, %.preheader6.1 ], [ 0, %.preheader6.1.1308 ], [ 1, %.preheader6.1.1.1 ], [ 0, %.preheader6.1.2312 ], [ 1, %.preheader6.1.1.2 ]
  br label %217

217:                                              ; preds = %.loopexit304, %.preheader6.1.2
  %indvars.iv138.lcssa300 = phi i64 [ %indvars.iv138.lcssa303, %.preheader6.1.2 ], [ %indvars.iv138.lcssa300.ph, %.loopexit304 ]
  %indvars.iv134.lcssa299 = phi i64 [ 2, %.preheader6.1.2 ], [ %indvars.iv134.lcssa299.ph, %.loopexit304 ]
  %218 = shl i64 %indvars.iv134.lcssa299, 3
  %219 = add nuw nsw i64 64, %218
  %220 = add nuw nsw i64 %indvars.iv138.lcssa300, %219
  %221 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %220
  store i32 1, ptr %221, align 4
  unreachable

.preheader7.1:                                    ; preds = %.preheader6.1
  br label %.preheader6.preheader.1

.preheader6.preheader.1:                          ; preds = %.preheader7.1
  br label %.preheader6.1301

.preheader6.1301:                                 ; preds = %.preheader6.preheader.1
  br label %.preheader6.1.1

.preheader6.1.1:                                  ; preds = %.preheader6.1301
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18464), align 4
  br i1 false, label %.loopexit304, label %.preheader7.2

.preheader7.2:                                    ; preds = %.preheader6.1.1
  br i1 false, label %.preheader6.preheader.2, label %225

.preheader6.preheader.2:                          ; preds = %.preheader7.2.2, %.preheader7.2.1, %.preheader7.2
  %indvars.iv138.lcssa303 = phi i64 [ 0, %.preheader7.2 ], [ 1, %.preheader7.2.1 ], [ 2, %.preheader7.2.2 ]
  br label %.preheader6.2

.preheader6.2:                                    ; preds = %.preheader6.preheader.2
  br label %.preheader6.1.2

.preheader6.1.2:                                  ; preds = %.preheader6.2
  %222 = add nuw nsw i64 %indvars.iv138.lcssa303, 16
  %223 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %222
  store i32 1, ptr %223, align 4
  br i1 false, label %217, label %224

224:                                              ; preds = %.preheader6.1.2
  unreachable

225:                                              ; preds = %.preheader7.2
  br label %.preheader7.preheader.1

.preheader7.preheader.1:                          ; preds = %225
  br label %.preheader7.1305

.preheader7.1305:                                 ; preds = %.preheader7.preheader.1
  br label %.preheader6.preheader.1306

.preheader6.preheader.1306:                       ; preds = %.preheader7.1305
  br label %.preheader6.1307

.preheader6.1307:                                 ; preds = %.preheader6.preheader.1306
  br label %.preheader6.1.1308

.preheader6.1.1308:                               ; preds = %.preheader6.1307
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18436), align 4
  br i1 false, label %.loopexit304, label %.preheader7.1.1

.preheader7.1.1:                                  ; preds = %.preheader6.1.1308
  br label %.preheader6.preheader.1.1

.preheader6.preheader.1.1:                        ; preds = %.preheader7.1.1
  br label %.preheader6.1301.1

.preheader6.1301.1:                               ; preds = %.preheader6.preheader.1.1
  br label %.preheader6.1.1.1

.preheader6.1.1.1:                                ; preds = %.preheader6.1301.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18468), align 4
  br i1 false, label %.loopexit304, label %.preheader7.2.1

.preheader7.2.1:                                  ; preds = %.preheader6.1.1.1
  br i1 false, label %.preheader6.preheader.2, label %226

226:                                              ; preds = %.preheader7.2.1
  br i1 false, label %.preheader7.preheader.2, label %228

.preheader7.preheader.2:                          ; preds = %226
  br label %.preheader7.2309

.preheader7.2309:                                 ; preds = %.preheader7.preheader.2
  br label %.preheader6.preheader.2310

.preheader6.preheader.2310:                       ; preds = %.preheader7.2309
  br label %.preheader6.2311

.preheader6.2311:                                 ; preds = %.preheader6.preheader.2310
  br label %.preheader6.1.2312

.preheader6.1.2312:                               ; preds = %.preheader6.2311
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18440), align 4
  br i1 false, label %.loopexit304, label %.preheader7.1.2

.preheader7.1.2:                                  ; preds = %.preheader6.1.2312
  br label %.preheader6.preheader.1.2

.preheader6.preheader.1.2:                        ; preds = %.preheader7.1.2
  br label %.preheader6.1301.2

.preheader6.1301.2:                               ; preds = %.preheader6.preheader.1.2
  br label %.preheader6.1.1.2

.preheader6.1.1.2:                                ; preds = %.preheader6.1301.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18472), align 4
  br i1 false, label %.loopexit304, label %.preheader7.2.2

.preheader7.2.2:                                  ; preds = %.preheader6.1.1.2
  br i1 false, label %.preheader6.preheader.2, label %227

227:                                              ; preds = %.preheader7.2.2
  unreachable

228:                                              ; preds = %226
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %229

229:                                              ; preds = %228
  br label %.preheader5.preheader

.preheader5.preheader:                            ; preds = %229
  br label %.preheader5

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
  br i1 false, label %.loopexit318, label %.preheader5.1

.loopexit318:                                     ; preds = %.preheader4.2.2, %.preheader4.2.1323, %.preheader4.2
  %indvars.iv150.lcssa314.ph = phi i64 [ 0, %.preheader4.2 ], [ 1, %.preheader4.2.1323 ], [ 2, %.preheader4.2.2 ]
  %indvars.iv146.lcssa313.ph = phi i64 [ 0, %.preheader4.2 ], [ 0, %.preheader4.2.1323 ], [ 0, %.preheader4.2.2 ]
  br label %230

230:                                              ; preds = %.loopexit318, %.preheader4.2.1
  %indvars.iv150.lcssa314 = phi i64 [ %indvars.iv150.lcssa316, %.preheader4.2.1 ], [ %indvars.iv150.lcssa314.ph, %.loopexit318 ]
  %indvars.iv146.lcssa313 = phi i64 [ 1, %.preheader4.2.1 ], [ %indvars.iv146.lcssa313.ph, %.loopexit318 ]
  %231 = shl i64 %indvars.iv146.lcssa313, 3
  %232 = add nuw nsw i64 128, %231
  %233 = add nuw nsw i64 %indvars.iv150.lcssa314, %232
  %234 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %233
  store i32 1, ptr %234, align 4
  unreachable

.preheader5.1:                                    ; preds = %.preheader4.2
  br i1 false, label %.preheader4.preheader.1, label %240

.preheader4.preheader.1:                          ; preds = %.preheader5.1.2, %.preheader5.1.1, %.preheader5.1
  %indvars.iv150.lcssa316 = phi i64 [ 0, %.preheader5.1 ], [ 1, %.preheader5.1.1 ], [ 2, %.preheader5.1.2 ]
  br label %.preheader4.1315

.preheader4.1315:                                 ; preds = %.preheader4.preheader.1
  br label %.preheader4.1.1

.preheader4.1.1:                                  ; preds = %.preheader4.1315
  %235 = add nuw nsw i64 %indvars.iv150.lcssa316, 8
  %236 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %235
  store i32 1, ptr %236, align 4
  br label %.preheader4.2.1

.preheader4.2.1:                                  ; preds = %.preheader4.1.1
  %237 = add nuw nsw i64 %indvars.iv150.lcssa316, 72
  %238 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %237
  store i32 1, ptr %238, align 4
  br i1 false, label %230, label %239

239:                                              ; preds = %.preheader4.2.1
  unreachable

240:                                              ; preds = %.preheader5.1
  br label %.preheader5.preheader.1

.preheader5.preheader.1:                          ; preds = %240
  br label %.preheader5.1319

.preheader5.1319:                                 ; preds = %.preheader5.preheader.1
  br label %.preheader4.preheader.1320

.preheader4.preheader.1320:                       ; preds = %.preheader5.1319
  br label %.preheader4.1321

.preheader4.1321:                                 ; preds = %.preheader4.preheader.1320
  br label %.preheader4.1.1322

.preheader4.1.1322:                               ; preds = %.preheader4.1321
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20484), align 4
  br label %.preheader4.2.1323

.preheader4.2.1323:                               ; preds = %.preheader4.1.1322
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20740), align 4
  br i1 false, label %.loopexit318, label %.preheader5.1.1

.preheader5.1.1:                                  ; preds = %.preheader4.2.1323
  br i1 false, label %.preheader4.preheader.1, label %241

241:                                              ; preds = %.preheader5.1.1
  br i1 false, label %.preheader5.preheader.2, label %243

.preheader5.preheader.2:                          ; preds = %241
  br label %.preheader5.2

.preheader5.2:                                    ; preds = %.preheader5.preheader.2
  br label %.preheader4.preheader.2

.preheader4.preheader.2:                          ; preds = %.preheader5.2
  br label %.preheader4.2324

.preheader4.2324:                                 ; preds = %.preheader4.preheader.2
  br label %.preheader4.1.2

.preheader4.1.2:                                  ; preds = %.preheader4.2324
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20488), align 4
  br label %.preheader4.2.2

.preheader4.2.2:                                  ; preds = %.preheader4.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20744), align 4
  br i1 false, label %.loopexit318, label %.preheader5.1.2

.preheader5.1.2:                                  ; preds = %.preheader4.2.2
  br i1 false, label %.preheader4.preheader.1, label %242

242:                                              ; preds = %.preheader5.1.2
  unreachable

243:                                              ; preds = %241
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %244

244:                                              ; preds = %243
  br label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %244
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
  br i1 false, label %.loopexit331, label %.preheader3.1

.loopexit331:                                     ; preds = %.preheader2.2.1.1, %.preheader2.2.1336, %.preheader2.2, %.preheader2.2.1
  %indvars.iv162.lcssa326.ph = phi i64 [ 0, %.preheader2.2.1 ], [ 0, %.preheader2.2 ], [ 1, %.preheader2.2.1336 ], [ 1, %.preheader2.2.1.1 ]
  %indvars.iv158.lcssa325.ph = phi i64 [ 1, %.preheader2.2.1 ], [ 0, %.preheader2.2 ], [ 0, %.preheader2.2.1336 ], [ 1, %.preheader2.2.1.1 ]
  br label %245

245:                                              ; preds = %.loopexit331, %.preheader2.2.2
  %indvars.iv162.lcssa326 = phi i64 [ %indvars.iv162.lcssa330, %.preheader2.2.2 ], [ %indvars.iv162.lcssa326.ph, %.loopexit331 ]
  %indvars.iv158.lcssa325 = phi i64 [ 2, %.preheader2.2.2 ], [ %indvars.iv158.lcssa325.ph, %.loopexit331 ]
  %246 = shl i64 %indvars.iv158.lcssa325, 3
  %247 = add nuw nsw i64 128, %246
  %248 = add nuw nsw i64 %indvars.iv162.lcssa326, %247
  %249 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %248
  store i32 1, ptr %249, align 4
  unreachable

.preheader3.1:                                    ; preds = %.preheader2.2
  br label %.preheader2.preheader.1

.preheader2.preheader.1:                          ; preds = %.preheader3.1
  br label %.preheader2.1327

.preheader2.1327:                                 ; preds = %.preheader2.preheader.1
  br label %.preheader2.1.1

.preheader2.1.1:                                  ; preds = %.preheader2.1327
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  br label %.preheader2.2.1

.preheader2.2.1:                                  ; preds = %.preheader2.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  br i1 false, label %.loopexit331, label %.preheader3.2

.preheader3.2:                                    ; preds = %.preheader2.2.1
  br i1 false, label %.preheader2.preheader.2, label %255

.preheader2.preheader.2:                          ; preds = %.preheader3.2.1, %.preheader3.2
  %indvars.iv162.lcssa330 = phi i64 [ 0, %.preheader3.2 ], [ 1, %.preheader3.2.1 ]
  br label %.preheader2.2328

.preheader2.2328:                                 ; preds = %.preheader2.preheader.2
  br label %.preheader2.1.2

.preheader2.1.2:                                  ; preds = %.preheader2.2328
  %250 = add nuw nsw i64 %indvars.iv162.lcssa330, 16
  %251 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %250
  store i32 1, ptr %251, align 4
  br label %.preheader2.2.2

.preheader2.2.2:                                  ; preds = %.preheader2.1.2
  %252 = add nuw nsw i64 %indvars.iv162.lcssa330, 80
  %253 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %252
  store i32 1, ptr %253, align 4
  br i1 false, label %245, label %254

254:                                              ; preds = %.preheader2.2.2
  unreachable

255:                                              ; preds = %.preheader3.2
  br i1 false, label %.preheader3.preheader.1, label %257

.preheader3.preheader.1:                          ; preds = %255
  br label %.preheader3.1332

.preheader3.1332:                                 ; preds = %.preheader3.preheader.1
  br label %.preheader2.preheader.1333

.preheader2.preheader.1333:                       ; preds = %.preheader3.1332
  br label %.preheader2.1334

.preheader2.1334:                                 ; preds = %.preheader2.preheader.1333
  br label %.preheader2.1.1335

.preheader2.1.1335:                               ; preds = %.preheader2.1334
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22532), align 4
  br label %.preheader2.2.1336

.preheader2.2.1336:                               ; preds = %.preheader2.1.1335
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22788), align 4
  br i1 false, label %.loopexit331, label %.preheader3.1.1

.preheader3.1.1:                                  ; preds = %.preheader2.2.1336
  br label %.preheader2.preheader.1.1

.preheader2.preheader.1.1:                        ; preds = %.preheader3.1.1
  br label %.preheader2.1327.1

.preheader2.1327.1:                               ; preds = %.preheader2.preheader.1.1
  br label %.preheader2.1.1.1

.preheader2.1.1.1:                                ; preds = %.preheader2.1327.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22564), align 4
  br label %.preheader2.2.1.1

.preheader2.2.1.1:                                ; preds = %.preheader2.1.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22820), align 4
  br i1 false, label %.loopexit331, label %.preheader3.2.1

.preheader3.2.1:                                  ; preds = %.preheader2.2.1.1
  br i1 false, label %.preheader2.preheader.2, label %256

256:                                              ; preds = %.preheader3.2.1
  unreachable

257:                                              ; preds = %255
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %258

258:                                              ; preds = %257
  br label %.preheader1.preheader

.preheader1.preheader:                            ; preds = %258
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
  br i1 false, label %.loopexit343, label %.preheader1.1

.loopexit343:                                     ; preds = %.preheader.2.1.2, %.preheader.2.2353, %.preheader.2.1.1, %.preheader.2.1348, %.preheader.2, %.preheader.2.1
  %indvars.iv174.lcssa338.ph = phi i64 [ 0, %.preheader.2.1 ], [ 0, %.preheader.2 ], [ 1, %.preheader.2.1348 ], [ 1, %.preheader.2.1.1 ], [ 2, %.preheader.2.2353 ], [ 2, %.preheader.2.1.2 ]
  %indvars.iv170.lcssa337.ph = phi i64 [ 1, %.preheader.2.1 ], [ 0, %.preheader.2 ], [ 0, %.preheader.2.1348 ], [ 1, %.preheader.2.1.1 ], [ 0, %.preheader.2.2353 ], [ 1, %.preheader.2.1.2 ]
  br label %259

259:                                              ; preds = %.loopexit343, %.preheader.2.2
  %indvars.iv174.lcssa338 = phi i64 [ %indvars.iv174.lcssa342, %.preheader.2.2 ], [ %indvars.iv174.lcssa338.ph, %.loopexit343 ]
  %indvars.iv170.lcssa337 = phi i64 [ 2, %.preheader.2.2 ], [ %indvars.iv170.lcssa337.ph, %.loopexit343 ]
  %260 = shl i64 %indvars.iv170.lcssa337, 3
  %261 = add nuw nsw i64 128, %260
  %262 = add nuw nsw i64 %indvars.iv174.lcssa338, %261
  %263 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %262
  store i32 1, ptr %263, align 4
  unreachable

.preheader1.1:                                    ; preds = %.preheader.2
  br label %.preheader.preheader.1

.preheader.preheader.1:                           ; preds = %.preheader1.1
  br label %.preheader.1339

.preheader.1339:                                  ; preds = %.preheader.preheader.1
  br label %.preheader.1.1

.preheader.1.1:                                   ; preds = %.preheader.1339
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24608), align 4
  br label %.preheader.2.1

.preheader.2.1:                                   ; preds = %.preheader.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24864), align 4
  br i1 false, label %.loopexit343, label %.preheader1.2

.preheader1.2:                                    ; preds = %.preheader.2.1
  br i1 false, label %.preheader.preheader.2, label %269

.preheader.preheader.2:                           ; preds = %.preheader1.2.2, %.preheader1.2.1, %.preheader1.2
  %indvars.iv174.lcssa342 = phi i64 [ 0, %.preheader1.2 ], [ 1, %.preheader1.2.1 ], [ 2, %.preheader1.2.2 ]
  br label %.preheader.2340

.preheader.2340:                                  ; preds = %.preheader.preheader.2
  br label %.preheader.1.2

.preheader.1.2:                                   ; preds = %.preheader.2340
  %264 = add nuw nsw i64 %indvars.iv174.lcssa342, 16
  %265 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %264
  store i32 1, ptr %265, align 4
  br label %.preheader.2.2

.preheader.2.2:                                   ; preds = %.preheader.1.2
  %266 = add nuw nsw i64 %indvars.iv174.lcssa342, 80
  %267 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %266
  store i32 1, ptr %267, align 4
  br i1 false, label %259, label %268

268:                                              ; preds = %.preheader.2.2
  unreachable

269:                                              ; preds = %.preheader1.2
  br label %.preheader1.preheader.1

.preheader1.preheader.1:                          ; preds = %269
  br label %.preheader1.1344

.preheader1.1344:                                 ; preds = %.preheader1.preheader.1
  br label %.preheader.preheader.1345

.preheader.preheader.1345:                        ; preds = %.preheader1.1344
  br label %.preheader.1346

.preheader.1346:                                  ; preds = %.preheader.preheader.1345
  br label %.preheader.1.1347

.preheader.1.1347:                                ; preds = %.preheader.1346
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24580), align 4
  br label %.preheader.2.1348

.preheader.2.1348:                                ; preds = %.preheader.1.1347
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24836), align 4
  br i1 false, label %.loopexit343, label %.preheader1.1.1

.preheader1.1.1:                                  ; preds = %.preheader.2.1348
  br label %.preheader.preheader.1.1

.preheader.preheader.1.1:                         ; preds = %.preheader1.1.1
  br label %.preheader.1339.1

.preheader.1339.1:                                ; preds = %.preheader.preheader.1.1
  br label %.preheader.1.1.1

.preheader.1.1.1:                                 ; preds = %.preheader.1339.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24612), align 4
  br label %.preheader.2.1.1

.preheader.2.1.1:                                 ; preds = %.preheader.1.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24868), align 4
  br i1 false, label %.loopexit343, label %.preheader1.2.1

.preheader1.2.1:                                  ; preds = %.preheader.2.1.1
  br i1 false, label %.preheader.preheader.2, label %270

270:                                              ; preds = %.preheader1.2.1
  br i1 false, label %.preheader1.preheader.2, label %272

.preheader1.preheader.2:                          ; preds = %270
  br label %.preheader1.2349

.preheader1.2349:                                 ; preds = %.preheader1.preheader.2
  br label %.preheader.preheader.2350

.preheader.preheader.2350:                        ; preds = %.preheader1.2349
  br label %.preheader.2351

.preheader.2351:                                  ; preds = %.preheader.preheader.2350
  br label %.preheader.1.2352

.preheader.1.2352:                                ; preds = %.preheader.2351
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24584), align 4
  br label %.preheader.2.2353

.preheader.2.2353:                                ; preds = %.preheader.1.2352
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24840), align 4
  br i1 false, label %.loopexit343, label %.preheader1.1.2

.preheader1.1.2:                                  ; preds = %.preheader.2.2353
  br label %.preheader.preheader.1.2

.preheader.preheader.1.2:                         ; preds = %.preheader1.1.2
  br label %.preheader.1339.2

.preheader.1339.2:                                ; preds = %.preheader.preheader.1.2
  br label %.preheader.1.1.2

.preheader.1.1.2:                                 ; preds = %.preheader.1339.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24616), align 4
  br label %.preheader.2.1.2

.preheader.2.1.2:                                 ; preds = %.preheader.1.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24872), align 4
  br i1 false, label %.loopexit343, label %.preheader1.2.2

.preheader1.2.2:                                  ; preds = %.preheader.2.1.2
  br i1 false, label %.preheader.preheader.2, label %271

271:                                              ; preds = %.preheader1.2.2
  unreachable

272:                                              ; preds = %270
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %273 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %273, 0
  br i1 %.not, label %276, label %274

274:                                              ; preds = %272
  %275 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %275, ptr @n, align 4
  br label %277

276:                                              ; preds = %272
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %277

277:                                              ; preds = %276, %274
  %278 = load i32, ptr @n, align 4
  %279 = call i32 @Trial(i32 noundef %278)
  %.not16 = icmp eq i32 %279, 0
  br i1 %.not16, label %280, label %281

280:                                              ; preds = %277
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %284

281:                                              ; preds = %277
  %282 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %282, 2005
  br i1 %.not18, label %284, label %283

283:                                              ; preds = %281
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %284

284:                                              ; preds = %283, %281, %280
  %285 = load i32, ptr @n, align 4
  %286 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %285) #4
  %287 = load i32, ptr @kount, align 4
  %288 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %287) #4
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
