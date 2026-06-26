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
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %3
  %5 = load i32, ptr %4, align 4
  %.not1 = icmp sgt i32 0, %5
  br i1 %.not1, label %19, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %6

6:                                                ; preds = %.lr.ph, %16
  %storemerge2 = phi i32 [ 0, %.lr.ph ], [ %17, %16 ]
  %7 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  %8 = sext i32 %storemerge2 to i64
  %9 = getelementptr inbounds [4 x i8], ptr %7, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not2 = icmp eq i32 %10, 0
  br i1 %.not2, label %16, label %11

11:                                               ; preds = %6
  %12 = add nsw i32 %1, %storemerge2
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not3 = icmp eq i32 %15, 0
  br i1 %.not3, label %16, label %._crit_edge

16:                                               ; preds = %11, %6
  %17 = add nsw i32 %storemerge2, 1
  %18 = load i32, ptr %4, align 4
  %.not = icmp sgt i32 %17, %18
  br i1 %.not, label %._crit_edge3, label %6, !llvm.loop !7

._crit_edge:                                      ; preds = %11
  %split = phi i32 [ 0, %11 ]
  br label %19

._crit_edge3:                                     ; preds = %16
  %split4 = phi i32 [ 1, %16 ]
  br label %19

19:                                               ; preds = %._crit_edge3, %._crit_edge, %2
  %storemerge1 = phi i32 [ %split, %._crit_edge ], [ %split4, %._crit_edge3 ], [ 1, %2 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %3
  %5 = load i32, ptr %4, align 4
  %.not1 = icmp sgt i32 0, %5
  br i1 %.not1, label %18, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %6

6:                                                ; preds = %.lr.ph, %15
  %storemerge3 = phi i32 [ 0, %.lr.ph ], [ %16, %15 ]
  %7 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  %8 = sext i32 %storemerge3 to i64
  %9 = getelementptr inbounds [4 x i8], ptr %7, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not4 = icmp eq i32 %10, 0
  br i1 %.not4, label %15, label %11

11:                                               ; preds = %6
  %12 = add nsw i32 %1, %storemerge3
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %13
  store i32 1, ptr %14, align 4
  br label %15

15:                                               ; preds = %11, %6
  %16 = add nsw i32 %storemerge3, 1
  %17 = load i32, ptr %4, align 4
  %.not = icmp sgt i32 %16, %17
  br i1 %.not, label %._crit_edge, label %6, !llvm.loop !9

._crit_edge:                                      ; preds = %15
  %split = phi i64 [ %3, %15 ]
  br label %18

18:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i64 [ %split, %._crit_edge ], [ %3, %2 ]
  %19 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %20 = load i32, ptr %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, ptr %22, align 4
  %25 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 512)
  %wide.trip.count = zext nneg i32 %smax to i64
  %exitcond.not4 = icmp eq i64 %25, %wide.trip.count
  br i1 %exitcond.not4, label %.loopexit.loopexit, label %.lr.ph7

.lr.ph7:                                          ; preds = %18
  br label %26

26:                                               ; preds = %.lr.ph7, %31
  %indvars.iv5 = phi i64 [ %25, %.lr.ph7 ], [ %indvars.iv.next, %31 ]
  %27 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv5
  %28 = load i32, ptr %27, align 4
  %.not3 = icmp eq i32 %28, 0
  br i1 %.not3, label %29, label %31

29:                                               ; preds = %26
  %indvars.iv.lcssa1 = phi i64 [ %indvars.iv5, %26 ]
  %30 = trunc nsw i64 %indvars.iv.lcssa1 to i32
  br label %.loopexit

31:                                               ; preds = %26
  %indvars.iv.next = add nsw i64 %indvars.iv5, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit.loopexit_crit_edge, label %26, !llvm.loop !10

..loopexit.loopexit_crit_edge:                    ; preds = %31
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %..loopexit.loopexit_crit_edge, %18
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %29
  %storemerge2 = phi i32 [ %30, %29 ], [ 0, %.loopexit.loopexit ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %3
  %5 = load i32, ptr %4, align 4
  %.not2 = icmp sgt i32 0, %5
  br i1 %.not2, label %18, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %6

6:                                                ; preds = %.lr.ph, %15
  %storemerge3 = phi i32 [ 0, %.lr.ph ], [ %16, %15 ]
  %7 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  %8 = sext i32 %storemerge3 to i64
  %9 = getelementptr inbounds [4 x i8], ptr %7, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not1 = icmp eq i32 %10, 0
  br i1 %.not1, label %15, label %11

11:                                               ; preds = %6
  %12 = add nsw i32 %1, %storemerge3
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %13
  store i32 0, ptr %14, align 4
  br label %15

15:                                               ; preds = %11, %6
  %16 = add nsw i32 %storemerge3, 1
  %17 = load i32, ptr %4, align 4
  %.not = icmp sgt i32 %16, %17
  br i1 %.not, label %._crit_edge, label %6, !llvm.loop !11

._crit_edge:                                      ; preds = %15
  %split = phi i64 [ %3, %15 ]
  br label %18

18:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i64 [ %split, %._crit_edge ], [ %3, %2 ]
  %19 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
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

4:                                                ; preds = %1, %18
  %storemerge2 = phi i32 [ 0, %1 ], [ %19, %18 ]
  %5 = sext i32 %storemerge2 to i64
  %6 = getelementptr inbounds [4 x i8], ptr @class, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %18, label %11

11:                                               ; preds = %4
  %12 = call i32 @Fit(i32 noundef %storemerge2, i32 noundef %0)
  %.not2 = icmp eq i32 %12, 0
  br i1 %.not2, label %18, label %13

13:                                               ; preds = %11
  %14 = call i32 @Place(i32 noundef %storemerge2, i32 noundef %0)
  %15 = call i32 @Trial(i32 noundef %14)
  %.not3 = icmp ne i32 %15, 0
  %16 = icmp eq i32 %14, 0
  %or.cond = or i1 %.not3, %16
  br i1 %or.cond, label %21, label %17

17:                                               ; preds = %13
  call void @Remove(i32 noundef %storemerge2, i32 noundef %0)
  br label %18

18:                                               ; preds = %17, %11, %4
  %19 = add nsw i32 %storemerge2, 1
  %20 = icmp slt i32 %19, 13
  br i1 %20, label %4, label %21, !llvm.loop !12

21:                                               ; preds = %13, %18
  %storemerge1 = phi i32 [ 1, %13 ], [ 0, %18 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

1:                                                ; preds = %11, %0
  %storemerge = phi i32 [ 0, %0 ], [ %14, %11 ]
  br label %2

.preheader31.preheader:                           ; preds = %6
  br label %.preheader30.preheader

2:                                                ; preds = %1
  %3 = sext i32 %storemerge to i64
  %4 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %3
  store i32 1, ptr %4, align 4
  %5 = add nuw nsw i32 %storemerge, 1
  br label %6

6:                                                ; preds = %2
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %7
  store i32 1, ptr %8, align 4
  %9 = add nuw nsw i32 %storemerge, 2
  %10 = icmp samesign ult i32 %9, 512
  br i1 %10, label %11, label %.preheader31.preheader

11:                                               ; preds = %6
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %12
  store i32 1, ptr %13, align 4
  %14 = add nuw nsw i32 %storemerge, 3
  br label %1, !llvm.loop !13

.preheader30.preheader:                           ; preds = %.preheader31.preheader, %.preheader31
  %storemerge1177 = phi i32 [ 1, %.preheader31.preheader ], [ %112, %.preheader31 ]
  br label %.preheader30

.preheader28.preheader:                           ; preds = %.preheader31
  br label %.preheader27.preheader

.preheader30:                                     ; preds = %.preheader30.preheader
  br label %.preheader29.preheader

.preheader29.preheader:                           ; preds = %.preheader30
  br label %.preheader29

.preheader29:                                     ; preds = %.preheader29.preheader
  br label %.preheader29.1

.preheader29.1:                                   ; preds = %.preheader29
  %15 = add nsw i32 %storemerge1177, 72
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %16
  store i32 0, ptr %17, align 4
  br label %.preheader29.2

.preheader29.2:                                   ; preds = %.preheader29.1
  %18 = add nsw i32 %storemerge1177, 136
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %19
  store i32 0, ptr %20, align 4
  br label %.preheader29.3

.preheader29.3:                                   ; preds = %.preheader29.2
  %21 = add nsw i32 %storemerge1177, 200
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %22
  store i32 0, ptr %23, align 4
  br label %.preheader29.4

.preheader29.4:                                   ; preds = %.preheader29.3
  %24 = add nsw i32 %storemerge1177, 264
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %25
  store i32 0, ptr %26, align 4
  br label %.preheader29.5

.preheader29.5:                                   ; preds = %.preheader29.4
  %27 = add nsw i32 %storemerge1177, 328
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %28
  store i32 0, ptr %29, align 4
  br i1 false, label %.loopexit, label %.preheader30.1

.loopexit:                                        ; preds = %.preheader29.5, %.preheader29.5.1, %.preheader29.5.2, %.preheader29.5.3, %.preheader29.5.4
  %storemerge1.lcssa2.ph = phi i32 [ %storemerge1177, %.preheader29.5.4 ], [ %storemerge1177, %.preheader29.5.3 ], [ %storemerge1177, %.preheader29.5.2 ], [ %storemerge1177, %.preheader29.5.1 ], [ %storemerge1177, %.preheader29.5 ]
  %storemerge47.lcssa1.ph = phi i32 [ 5, %.preheader29.5.4 ], [ 4, %.preheader29.5.3 ], [ 3, %.preheader29.5.2 ], [ 2, %.preheader29.5.1 ], [ 1, %.preheader29.5 ]
  br label %30

30:                                               ; preds = %.loopexit, %.preheader29.5.5
  %storemerge1.lcssa2 = phi i32 [ %storemerge1.lcssa9, %.preheader29.5.5 ], [ %storemerge1.lcssa2.ph, %.loopexit ]
  %storemerge47.lcssa1 = phi i32 [ 6, %.preheader29.5.5 ], [ %storemerge47.lcssa1.ph, %.loopexit ]
  %31 = shl i32 %storemerge47.lcssa1, 3
  %32 = add i32 384, %31
  %33 = add nsw i32 %storemerge1.lcssa2, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %34
  store i32 0, ptr %35, align 4
  unreachable

.preheader30.1:                                   ; preds = %.preheader29.5
  br label %.preheader29.preheader.1

.preheader29.preheader.1:                         ; preds = %.preheader30.1
  br label %.preheader29.13

.preheader29.13:                                  ; preds = %.preheader29.preheader.1
  br label %.preheader29.1.1

.preheader29.1.1:                                 ; preds = %.preheader29.13
  %36 = add nsw i32 %storemerge1177, 80
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %37
  store i32 0, ptr %38, align 4
  br label %.preheader29.2.1

.preheader29.2.1:                                 ; preds = %.preheader29.1.1
  %39 = add nsw i32 %storemerge1177, 144
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %40
  store i32 0, ptr %41, align 4
  br label %.preheader29.3.1

.preheader29.3.1:                                 ; preds = %.preheader29.2.1
  %42 = add nsw i32 %storemerge1177, 208
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %43
  store i32 0, ptr %44, align 4
  br label %.preheader29.4.1

.preheader29.4.1:                                 ; preds = %.preheader29.3.1
  %45 = add nsw i32 %storemerge1177, 272
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %46
  store i32 0, ptr %47, align 4
  br label %.preheader29.5.1

.preheader29.5.1:                                 ; preds = %.preheader29.4.1
  %48 = add nsw i32 %storemerge1177, 336
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %49
  store i32 0, ptr %50, align 4
  br i1 false, label %.loopexit, label %.preheader30.2

.preheader30.2:                                   ; preds = %.preheader29.5.1
  br label %.preheader29.preheader.2

.preheader29.preheader.2:                         ; preds = %.preheader30.2
  br label %.preheader29.24

.preheader29.24:                                  ; preds = %.preheader29.preheader.2
  br label %.preheader29.1.2

.preheader29.1.2:                                 ; preds = %.preheader29.24
  %51 = add nsw i32 %storemerge1177, 88
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %52
  store i32 0, ptr %53, align 4
  br label %.preheader29.2.2

.preheader29.2.2:                                 ; preds = %.preheader29.1.2
  %54 = add nsw i32 %storemerge1177, 152
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %55
  store i32 0, ptr %56, align 4
  br label %.preheader29.3.2

.preheader29.3.2:                                 ; preds = %.preheader29.2.2
  %57 = add nsw i32 %storemerge1177, 216
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %58
  store i32 0, ptr %59, align 4
  br label %.preheader29.4.2

.preheader29.4.2:                                 ; preds = %.preheader29.3.2
  %60 = add nsw i32 %storemerge1177, 280
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %61
  store i32 0, ptr %62, align 4
  br label %.preheader29.5.2

.preheader29.5.2:                                 ; preds = %.preheader29.4.2
  %63 = add nsw i32 %storemerge1177, 344
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %64
  store i32 0, ptr %65, align 4
  br i1 false, label %.loopexit, label %.preheader30.3

.preheader30.3:                                   ; preds = %.preheader29.5.2
  br label %.preheader29.preheader.3

.preheader29.preheader.3:                         ; preds = %.preheader30.3
  br label %.preheader29.35

.preheader29.35:                                  ; preds = %.preheader29.preheader.3
  br label %.preheader29.1.3

.preheader29.1.3:                                 ; preds = %.preheader29.35
  %66 = add nsw i32 %storemerge1177, 96
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %67
  store i32 0, ptr %68, align 4
  br label %.preheader29.2.3

.preheader29.2.3:                                 ; preds = %.preheader29.1.3
  %69 = add nsw i32 %storemerge1177, 160
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %70
  store i32 0, ptr %71, align 4
  br label %.preheader29.3.3

.preheader29.3.3:                                 ; preds = %.preheader29.2.3
  %72 = add nsw i32 %storemerge1177, 224
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %73
  store i32 0, ptr %74, align 4
  br label %.preheader29.4.3

.preheader29.4.3:                                 ; preds = %.preheader29.3.3
  %75 = add nsw i32 %storemerge1177, 288
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %76
  store i32 0, ptr %77, align 4
  br label %.preheader29.5.3

.preheader29.5.3:                                 ; preds = %.preheader29.4.3
  %78 = add nsw i32 %storemerge1177, 352
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %79
  store i32 0, ptr %80, align 4
  br i1 false, label %.loopexit, label %.preheader30.4

.preheader30.4:                                   ; preds = %.preheader29.5.3
  br label %.preheader29.preheader.4

.preheader29.preheader.4:                         ; preds = %.preheader30.4
  br label %.preheader29.46

.preheader29.46:                                  ; preds = %.preheader29.preheader.4
  br label %.preheader29.1.4

.preheader29.1.4:                                 ; preds = %.preheader29.46
  %81 = add nsw i32 %storemerge1177, 104
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %82
  store i32 0, ptr %83, align 4
  br label %.preheader29.2.4

.preheader29.2.4:                                 ; preds = %.preheader29.1.4
  %84 = add nsw i32 %storemerge1177, 168
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %85
  store i32 0, ptr %86, align 4
  br label %.preheader29.3.4

.preheader29.3.4:                                 ; preds = %.preheader29.2.4
  %87 = add nsw i32 %storemerge1177, 232
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %88
  store i32 0, ptr %89, align 4
  br label %.preheader29.4.4

.preheader29.4.4:                                 ; preds = %.preheader29.3.4
  %90 = add nsw i32 %storemerge1177, 296
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %91
  store i32 0, ptr %92, align 4
  br label %.preheader29.5.4

.preheader29.5.4:                                 ; preds = %.preheader29.4.4
  %93 = add nsw i32 %storemerge1177, 360
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %94
  store i32 0, ptr %95, align 4
  br i1 false, label %.loopexit, label %.preheader30.5

.preheader30.5:                                   ; preds = %.preheader29.5.4
  br i1 false, label %.preheader29.preheader.5, label %.preheader31

.preheader29.preheader.5:                         ; preds = %.preheader30.5
  %storemerge1.lcssa9 = phi i32 [ %storemerge1177, %.preheader30.5 ]
  br label %.preheader29.57

.preheader29.57:                                  ; preds = %.preheader29.preheader.5
  br label %.preheader29.1.5

.preheader29.1.5:                                 ; preds = %.preheader29.57
  %96 = add nsw i32 %storemerge1.lcssa9, 112
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %97
  store i32 0, ptr %98, align 4
  br label %.preheader29.2.5

.preheader29.2.5:                                 ; preds = %.preheader29.1.5
  %99 = add nsw i32 %storemerge1.lcssa9, 176
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %100
  store i32 0, ptr %101, align 4
  br label %.preheader29.3.5

.preheader29.3.5:                                 ; preds = %.preheader29.2.5
  %102 = add nsw i32 %storemerge1.lcssa9, 240
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %103
  store i32 0, ptr %104, align 4
  br label %.preheader29.4.5

.preheader29.4.5:                                 ; preds = %.preheader29.3.5
  %105 = add nsw i32 %storemerge1.lcssa9, 304
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %106
  store i32 0, ptr %107, align 4
  br label %.preheader29.5.5

.preheader29.5.5:                                 ; preds = %.preheader29.4.5
  %108 = add nsw i32 %storemerge1.lcssa9, 368
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %109
  store i32 0, ptr %110, align 4
  br i1 false, label %30, label %111

111:                                              ; preds = %.preheader29.5.5
  unreachable

.preheader31:                                     ; preds = %.preheader30.5
  %112 = add nsw i32 %storemerge1177, 1
  %113 = icmp slt i32 %112, 6
  br i1 %113, label %.preheader30.preheader, label %.preheader28.preheader, !llvm.loop !14

.preheader27.preheader:                           ; preds = %.preheader28.preheader, %.preheader28
  %storemerge2178 = phi i32 [ 0, %.preheader28.preheader ], [ %131, %.preheader28 ]
  %114 = sext i32 %storemerge2178 to i64
  %115 = getelementptr inbounds [2048 x i8], ptr @p, i64 %114
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  br label %.preheader26

.preheader27:                                     ; preds = %125, %.preheader27.preheader
  %storemerge46 = phi i32 [ 0, %.preheader27.preheader ], [ %130, %125 ]
  br label %.preheader27.1

.preheader27.1:                                   ; preds = %.preheader27
  %116 = sext i32 %storemerge2178 to i64
  %117 = getelementptr inbounds [2048 x i8], ptr @p, i64 %116
  %118 = sext i32 %storemerge46 to i64
  %119 = getelementptr inbounds [4 x i8], ptr %117, i64 %118
  store i32 0, ptr %119, align 4
  %120 = add nuw nsw i32 %storemerge46, 1
  br label %.preheader27.2

.preheader27.2:                                   ; preds = %.preheader27.1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [4 x i8], ptr %115, i64 %121
  store i32 0, ptr %122, align 4
  %123 = add nuw nsw i32 %storemerge46, 2
  %124 = icmp samesign ult i32 %123, 512
  br i1 %124, label %125, label %.preheader28

125:                                              ; preds = %.preheader27.2
  %126 = sext i32 %storemerge2178 to i64
  %127 = getelementptr inbounds [2048 x i8], ptr @p, i64 %126
  %128 = sext i32 %123 to i64
  %129 = getelementptr inbounds [4 x i8], ptr %127, i64 %128
  store i32 0, ptr %129, align 4
  %130 = add nuw nsw i32 %storemerge46, 3
  br label %.preheader27, !llvm.loop !15

.preheader28:                                     ; preds = %.preheader27.2
  %131 = add nsw i32 %storemerge2178, 1
  %132 = icmp slt i32 %131, 13
  br i1 %132, label %.preheader27.preheader, label %.preheader26.preheader, !llvm.loop !16

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
  br i1 false, label %.loopexit15, label %.preheader25.1

.loopexit15:                                      ; preds = %.preheader24.1.1.4, %.preheader24.1.4, %.preheader24.1.1.3, %.preheader24.1.3, %.preheader24.1.1.2, %.preheader24.1.223, %.preheader24.1.1.1, %.preheader24.1.119, %.preheader24.1, %.preheader24.1.1
  %storemerge3.lcssa11.ph = phi i32 [ 0, %.preheader24.1.1 ], [ 0, %.preheader24.1 ], [ 1, %.preheader24.1.119 ], [ 1, %.preheader24.1.1.1 ], [ 2, %.preheader24.1.223 ], [ 2, %.preheader24.1.1.2 ], [ 3, %.preheader24.1.3 ], [ 3, %.preheader24.1.1.3 ], [ 4, %.preheader24.1.4 ], [ 4, %.preheader24.1.1.4 ]
  %storemerge44.lcssa10.ph = phi i32 [ 1, %.preheader24.1.1 ], [ 0, %.preheader24.1 ], [ 0, %.preheader24.1.119 ], [ 1, %.preheader24.1.1.1 ], [ 0, %.preheader24.1.223 ], [ 1, %.preheader24.1.1.2 ], [ 0, %.preheader24.1.3 ], [ 1, %.preheader24.1.1.3 ], [ 0, %.preheader24.1.4 ], [ 1, %.preheader24.1.1.4 ]
  br label %133

133:                                              ; preds = %.loopexit15, %.preheader24.1.2
  %storemerge3.lcssa11 = phi i32 [ %storemerge3.lcssa14, %.preheader24.1.2 ], [ %storemerge3.lcssa11.ph, %.loopexit15 ]
  %storemerge44.lcssa10 = phi i32 [ 2, %.preheader24.1.2 ], [ %storemerge44.lcssa10.ph, %.loopexit15 ]
  %134 = shl i32 %storemerge44.lcssa10, 3
  %135 = add i32 64, %134
  %136 = add nsw i32 %storemerge3.lcssa11, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [4 x i8], ptr @p, i64 %137
  store i32 1, ptr %138, align 4
  unreachable

.preheader25.1:                                   ; preds = %.preheader24.1
  br label %.preheader24.preheader.1

.preheader24.preheader.1:                         ; preds = %.preheader25.1
  br label %.preheader24.112

.preheader24.112:                                 ; preds = %.preheader24.preheader.1
  br label %.preheader24.1.1

.preheader24.1.1:                                 ; preds = %.preheader24.112
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 32), align 4
  br i1 false, label %.loopexit15, label %.preheader25.2

.preheader25.2:                                   ; preds = %.preheader24.1.1
  br i1 false, label %.preheader24.preheader.2, label %.preheader26.1

.preheader24.preheader.2:                         ; preds = %.preheader25.2.4, %.preheader25.2.3, %.preheader25.2.2, %.preheader25.2.1, %.preheader25.2
  %storemerge3.lcssa14 = phi i32 [ 0, %.preheader25.2 ], [ 1, %.preheader25.2.1 ], [ 2, %.preheader25.2.2 ], [ 3, %.preheader25.2.3 ], [ 4, %.preheader25.2.4 ]
  br label %.preheader24.2

.preheader24.2:                                   ; preds = %.preheader24.preheader.2
  br label %.preheader24.1.2

.preheader24.1.2:                                 ; preds = %.preheader24.2
  %139 = add nsw i32 %storemerge3.lcssa14, 16
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [4 x i8], ptr @p, i64 %140
  store i32 1, ptr %141, align 4
  br i1 false, label %133, label %142

142:                                              ; preds = %.preheader24.1.2
  unreachable

.preheader26.1:                                   ; preds = %.preheader25.2
  br label %.preheader25.preheader.1

.preheader25.preheader.1:                         ; preds = %.preheader26.1
  br label %.preheader25.116

.preheader25.116:                                 ; preds = %.preheader25.preheader.1
  br label %.preheader24.preheader.117

.preheader24.preheader.117:                       ; preds = %.preheader25.116
  br label %.preheader24.118

.preheader24.118:                                 ; preds = %.preheader24.preheader.117
  br label %.preheader24.1.119

.preheader24.1.119:                               ; preds = %.preheader24.118
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4), align 4
  br i1 false, label %.loopexit15, label %.preheader25.1.1

.preheader25.1.1:                                 ; preds = %.preheader24.1.119
  br label %.preheader24.preheader.1.1

.preheader24.preheader.1.1:                       ; preds = %.preheader25.1.1
  br label %.preheader24.112.1

.preheader24.112.1:                               ; preds = %.preheader24.preheader.1.1
  br label %.preheader24.1.1.1

.preheader24.1.1.1:                               ; preds = %.preheader24.112.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 36), align 4
  br i1 false, label %.loopexit15, label %.preheader25.2.1

.preheader25.2.1:                                 ; preds = %.preheader24.1.1.1
  br i1 false, label %.preheader24.preheader.2, label %.preheader26.2

.preheader26.2:                                   ; preds = %.preheader25.2.1
  br label %.preheader25.preheader.2

.preheader25.preheader.2:                         ; preds = %.preheader26.2
  br label %.preheader25.220

.preheader25.220:                                 ; preds = %.preheader25.preheader.2
  br label %.preheader24.preheader.221

.preheader24.preheader.221:                       ; preds = %.preheader25.220
  br label %.preheader24.222

.preheader24.222:                                 ; preds = %.preheader24.preheader.221
  br label %.preheader24.1.223

.preheader24.1.223:                               ; preds = %.preheader24.222
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8), align 4
  br i1 false, label %.loopexit15, label %.preheader25.1.2

.preheader25.1.2:                                 ; preds = %.preheader24.1.223
  br label %.preheader24.preheader.1.2

.preheader24.preheader.1.2:                       ; preds = %.preheader25.1.2
  br label %.preheader24.112.2

.preheader24.112.2:                               ; preds = %.preheader24.preheader.1.2
  br label %.preheader24.1.1.2

.preheader24.1.1.2:                               ; preds = %.preheader24.112.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 40), align 4
  br i1 false, label %.loopexit15, label %.preheader25.2.2

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
  br i1 false, label %.loopexit15, label %.preheader25.1.3

.preheader25.1.3:                                 ; preds = %.preheader24.1.3
  br label %.preheader24.preheader.1.3

.preheader24.preheader.1.3:                       ; preds = %.preheader25.1.3
  br label %.preheader24.112.3

.preheader24.112.3:                               ; preds = %.preheader24.preheader.1.3
  br label %.preheader24.1.1.3

.preheader24.1.1.3:                               ; preds = %.preheader24.112.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 44), align 4
  br i1 false, label %.loopexit15, label %.preheader25.2.3

.preheader25.2.3:                                 ; preds = %.preheader24.1.1.3
  br i1 false, label %.preheader24.preheader.2, label %.preheader26.4

.preheader26.4:                                   ; preds = %.preheader25.2.3
  br i1 false, label %.preheader25.preheader.4, label %144

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
  br i1 false, label %.loopexit15, label %.preheader25.1.4

.preheader25.1.4:                                 ; preds = %.preheader24.1.4
  br label %.preheader24.preheader.1.4

.preheader24.preheader.1.4:                       ; preds = %.preheader25.1.4
  br label %.preheader24.112.4

.preheader24.112.4:                               ; preds = %.preheader24.preheader.1.4
  br label %.preheader24.1.1.4

.preheader24.1.1.4:                               ; preds = %.preheader24.112.4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 48), align 4
  br i1 false, label %.loopexit15, label %.preheader25.2.4

.preheader25.2.4:                                 ; preds = %.preheader24.1.1.4
  br i1 false, label %.preheader24.preheader.2, label %143

143:                                              ; preds = %.preheader25.2.4
  unreachable

144:                                              ; preds = %.preheader26.4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %145

145:                                              ; preds = %144
  br label %.preheader23.preheader

.preheader23.preheader:                           ; preds = %145
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
  br i1 false, label %.loopexit29, label %.preheader23.1

.loopexit29:                                      ; preds = %.preheader22.4.2, %.preheader22.4.136, %.preheader22.4
  %storemerge4.lcssa25.ph = phi i32 [ 0, %.preheader22.4 ], [ 1, %.preheader22.4.136 ], [ 2, %.preheader22.4.2 ]
  %storemerge42.lcssa24.ph = phi i32 [ 0, %.preheader22.4 ], [ 0, %.preheader22.4.136 ], [ 0, %.preheader22.4.2 ]
  br label %146

146:                                              ; preds = %.loopexit29, %.preheader22.4.1
  %storemerge4.lcssa25 = phi i32 [ %storemerge4.lcssa27, %.preheader22.4.1 ], [ %storemerge4.lcssa25.ph, %.loopexit29 ]
  %storemerge42.lcssa24 = phi i32 [ 1, %.preheader22.4.1 ], [ %storemerge42.lcssa24.ph, %.loopexit29 ]
  %147 = shl i32 %storemerge42.lcssa24, 3
  %148 = add i32 256, %147
  %149 = add nsw i32 %storemerge4.lcssa25, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %150
  store i32 1, ptr %151, align 4
  unreachable

.preheader23.1:                                   ; preds = %.preheader22.4
  br i1 false, label %.preheader22.preheader.1, label %165

.preheader22.preheader.1:                         ; preds = %.preheader23.1.2, %.preheader23.1.1, %.preheader23.1
  %storemerge4.lcssa27 = phi i32 [ 0, %.preheader23.1 ], [ 1, %.preheader23.1.1 ], [ 2, %.preheader23.1.2 ]
  br label %.preheader22.126

.preheader22.126:                                 ; preds = %.preheader22.preheader.1
  br label %.preheader22.1.1

.preheader22.1.1:                                 ; preds = %.preheader22.126
  %152 = add nsw i32 %storemerge4.lcssa27, 8
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %153
  store i32 1, ptr %154, align 4
  br label %.preheader22.2.1

.preheader22.2.1:                                 ; preds = %.preheader22.1.1
  %155 = add nsw i32 %storemerge4.lcssa27, 72
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %156
  store i32 1, ptr %157, align 4
  br label %.preheader22.3.1

.preheader22.3.1:                                 ; preds = %.preheader22.2.1
  %158 = add nsw i32 %storemerge4.lcssa27, 136
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %159
  store i32 1, ptr %160, align 4
  br label %.preheader22.4.1

.preheader22.4.1:                                 ; preds = %.preheader22.3.1
  %161 = add nsw i32 %storemerge4.lcssa27, 200
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %162
  store i32 1, ptr %163, align 4
  br i1 false, label %146, label %164

164:                                              ; preds = %.preheader22.4.1
  unreachable

165:                                              ; preds = %.preheader23.1
  br label %.preheader23.preheader.1

.preheader23.preheader.1:                         ; preds = %165
  br label %.preheader23.130

.preheader23.130:                                 ; preds = %.preheader23.preheader.1
  br label %.preheader22.preheader.131

.preheader22.preheader.131:                       ; preds = %.preheader23.130
  br label %.preheader22.132

.preheader22.132:                                 ; preds = %.preheader22.preheader.131
  br label %.preheader22.1.133

.preheader22.1.133:                               ; preds = %.preheader22.132
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2052), align 4
  br label %.preheader22.2.134

.preheader22.2.134:                               ; preds = %.preheader22.1.133
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2308), align 4
  br label %.preheader22.3.135

.preheader22.3.135:                               ; preds = %.preheader22.2.134
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2564), align 4
  br label %.preheader22.4.136

.preheader22.4.136:                               ; preds = %.preheader22.3.135
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2820), align 4
  br i1 false, label %.loopexit29, label %.preheader23.1.1

.preheader23.1.1:                                 ; preds = %.preheader22.4.136
  br i1 false, label %.preheader22.preheader.1, label %166

166:                                              ; preds = %.preheader23.1.1
  br i1 false, label %.preheader23.preheader.2, label %168

.preheader23.preheader.2:                         ; preds = %166
  br label %.preheader23.2

.preheader23.2:                                   ; preds = %.preheader23.preheader.2
  br label %.preheader22.preheader.2

.preheader22.preheader.2:                         ; preds = %.preheader23.2
  br label %.preheader22.237

.preheader22.237:                                 ; preds = %.preheader22.preheader.2
  br label %.preheader22.1.2

.preheader22.1.2:                                 ; preds = %.preheader22.237
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
  br i1 false, label %.loopexit29, label %.preheader23.1.2

.preheader23.1.2:                                 ; preds = %.preheader22.4.2
  br i1 false, label %.preheader22.preheader.1, label %167

167:                                              ; preds = %.preheader23.1.2
  unreachable

168:                                              ; preds = %166
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %169

169:                                              ; preds = %168
  br label %.preheader21.preheader

.preheader21.preheader:                           ; preds = %169
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
  br i1 false, label %.loopexit44, label %.preheader21.1

.loopexit44:                                      ; preds = %.preheader20.2.3.1, %.preheader20.2.2.1, %.preheader20.2.1.1, %.preheader20.2.149, %.preheader20.2, %.preheader20.2.1, %.preheader20.2.2, %.preheader20.2.3
  %storemerge5.lcssa39.ph = phi i32 [ 0, %.preheader20.2.3 ], [ 0, %.preheader20.2.2 ], [ 0, %.preheader20.2.1 ], [ 0, %.preheader20.2 ], [ 1, %.preheader20.2.149 ], [ 1, %.preheader20.2.1.1 ], [ 1, %.preheader20.2.2.1 ], [ 1, %.preheader20.2.3.1 ]
  %storemerge40.lcssa38.ph = phi i32 [ 3, %.preheader20.2.3 ], [ 2, %.preheader20.2.2 ], [ 1, %.preheader20.2.1 ], [ 0, %.preheader20.2 ], [ 0, %.preheader20.2.149 ], [ 1, %.preheader20.2.1.1 ], [ 2, %.preheader20.2.2.1 ], [ 3, %.preheader20.2.3.1 ]
  br label %170

170:                                              ; preds = %.loopexit44, %.preheader20.2.4
  %storemerge5.lcssa39 = phi i32 [ %storemerge5.lcssa43, %.preheader20.2.4 ], [ %storemerge5.lcssa39.ph, %.loopexit44 ]
  %storemerge40.lcssa38 = phi i32 [ 4, %.preheader20.2.4 ], [ %storemerge40.lcssa38.ph, %.loopexit44 ]
  %171 = shl i32 %storemerge40.lcssa38, 3
  %172 = add i32 128, %171
  %173 = add nsw i32 %storemerge5.lcssa39, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %174
  store i32 1, ptr %175, align 4
  unreachable

.preheader21.1:                                   ; preds = %.preheader20.2
  br label %.preheader20.preheader.1

.preheader20.preheader.1:                         ; preds = %.preheader21.1
  br label %.preheader20.140

.preheader20.140:                                 ; preds = %.preheader20.preheader.1
  br label %.preheader20.1.1

.preheader20.1.1:                                 ; preds = %.preheader20.140
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  br label %.preheader20.2.1

.preheader20.2.1:                                 ; preds = %.preheader20.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br i1 false, label %.loopexit44, label %.preheader21.2

.preheader21.2:                                   ; preds = %.preheader20.2.1
  br label %.preheader20.preheader.2

.preheader20.preheader.2:                         ; preds = %.preheader21.2
  br label %.preheader20.241

.preheader20.241:                                 ; preds = %.preheader20.preheader.2
  br label %.preheader20.1.2

.preheader20.1.2:                                 ; preds = %.preheader20.241
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  br label %.preheader20.2.2

.preheader20.2.2:                                 ; preds = %.preheader20.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br i1 false, label %.loopexit44, label %.preheader21.3

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
  br i1 false, label %.loopexit44, label %.preheader21.4

.preheader21.4:                                   ; preds = %.preheader20.2.3
  br i1 false, label %.preheader20.preheader.4, label %183

.preheader20.preheader.4:                         ; preds = %.preheader21.4.1, %.preheader21.4
  %storemerge5.lcssa43 = phi i32 [ 0, %.preheader21.4 ], [ 1, %.preheader21.4.1 ]
  br label %.preheader20.4

.preheader20.4:                                   ; preds = %.preheader20.preheader.4
  br label %.preheader20.1.4

.preheader20.1.4:                                 ; preds = %.preheader20.4
  %176 = add nsw i32 %storemerge5.lcssa43, 32
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %177
  store i32 1, ptr %178, align 4
  br label %.preheader20.2.4

.preheader20.2.4:                                 ; preds = %.preheader20.1.4
  %179 = add nsw i32 %storemerge5.lcssa43, 96
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %180
  store i32 1, ptr %181, align 4
  br i1 false, label %170, label %182

182:                                              ; preds = %.preheader20.2.4
  unreachable

183:                                              ; preds = %.preheader21.4
  br i1 false, label %.preheader21.preheader.1, label %185

.preheader21.preheader.1:                         ; preds = %183
  br label %.preheader21.145

.preheader21.145:                                 ; preds = %.preheader21.preheader.1
  br label %.preheader20.preheader.146

.preheader20.preheader.146:                       ; preds = %.preheader21.145
  br label %.preheader20.147

.preheader20.147:                                 ; preds = %.preheader20.preheader.146
  br label %.preheader20.1.148

.preheader20.1.148:                               ; preds = %.preheader20.147
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4100), align 4
  br label %.preheader20.2.149

.preheader20.2.149:                               ; preds = %.preheader20.1.148
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4356), align 4
  br i1 false, label %.loopexit44, label %.preheader21.1.1

.preheader21.1.1:                                 ; preds = %.preheader20.2.149
  br label %.preheader20.preheader.1.1

.preheader20.preheader.1.1:                       ; preds = %.preheader21.1.1
  br label %.preheader20.140.1

.preheader20.140.1:                               ; preds = %.preheader20.preheader.1.1
  br label %.preheader20.1.1.1

.preheader20.1.1.1:                               ; preds = %.preheader20.140.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4132), align 4
  br label %.preheader20.2.1.1

.preheader20.2.1.1:                               ; preds = %.preheader20.1.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4388), align 4
  br i1 false, label %.loopexit44, label %.preheader21.2.1

.preheader21.2.1:                                 ; preds = %.preheader20.2.1.1
  br label %.preheader20.preheader.2.1

.preheader20.preheader.2.1:                       ; preds = %.preheader21.2.1
  br label %.preheader20.241.1

.preheader20.241.1:                               ; preds = %.preheader20.preheader.2.1
  br label %.preheader20.1.2.1

.preheader20.1.2.1:                               ; preds = %.preheader20.241.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4164), align 4
  br label %.preheader20.2.2.1

.preheader20.2.2.1:                               ; preds = %.preheader20.1.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4420), align 4
  br i1 false, label %.loopexit44, label %.preheader21.3.1

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
  br i1 false, label %.loopexit44, label %.preheader21.4.1

.preheader21.4.1:                                 ; preds = %.preheader20.2.3.1
  br i1 false, label %.preheader20.preheader.4, label %184

184:                                              ; preds = %.preheader21.4.1
  unreachable

185:                                              ; preds = %183
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %186

186:                                              ; preds = %185
  br label %.preheader19.preheader

.preheader19.preheader:                           ; preds = %186
  br label %.preheader19

.preheader19:                                     ; preds = %.preheader19.preheader
  br label %.preheader18.preheader

.preheader18.preheader:                           ; preds = %.preheader19
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader18.preheader
  br label %.preheader18.1

.preheader18.1:                                   ; preds = %.preheader18
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), align 4
  br i1 false, label %.loopexit55, label %.preheader19.1

.loopexit55:                                      ; preds = %.preheader18.1.3.2, %.preheader18.1.2.2, %.preheader18.1.1.2, %.preheader18.1.263, %.preheader18.1.3.1, %.preheader18.1.2.1, %.preheader18.1.1.1, %.preheader18.1.159, %.preheader18.1, %.preheader18.1.1, %.preheader18.1.2, %.preheader18.1.3
  %storemerge6.lcssa51.ph = phi i32 [ 0, %.preheader18.1.3 ], [ 0, %.preheader18.1.2 ], [ 0, %.preheader18.1.1 ], [ 0, %.preheader18.1 ], [ 1, %.preheader18.1.159 ], [ 1, %.preheader18.1.1.1 ], [ 1, %.preheader18.1.2.1 ], [ 1, %.preheader18.1.3.1 ], [ 2, %.preheader18.1.263 ], [ 2, %.preheader18.1.1.2 ], [ 2, %.preheader18.1.2.2 ], [ 2, %.preheader18.1.3.2 ]
  %storemerge38.lcssa50.ph = phi i32 [ 3, %.preheader18.1.3 ], [ 2, %.preheader18.1.2 ], [ 1, %.preheader18.1.1 ], [ 0, %.preheader18.1 ], [ 0, %.preheader18.1.159 ], [ 1, %.preheader18.1.1.1 ], [ 2, %.preheader18.1.2.1 ], [ 3, %.preheader18.1.3.1 ], [ 0, %.preheader18.1.263 ], [ 1, %.preheader18.1.1.2 ], [ 2, %.preheader18.1.2.2 ], [ 3, %.preheader18.1.3.2 ]
  br label %187

187:                                              ; preds = %.loopexit55, %.preheader18.1.4
  %storemerge6.lcssa51 = phi i32 [ %storemerge6.lcssa54, %.preheader18.1.4 ], [ %storemerge6.lcssa51.ph, %.loopexit55 ]
  %storemerge38.lcssa50 = phi i32 [ 4, %.preheader18.1.4 ], [ %storemerge38.lcssa50.ph, %.loopexit55 ]
  %188 = shl i32 %storemerge38.lcssa50, 3
  %189 = add i32 64, %188
  %190 = add nsw i32 %storemerge6.lcssa51, %189
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %191
  store i32 1, ptr %192, align 4
  unreachable

.preheader19.1:                                   ; preds = %.preheader18.1
  br label %.preheader18.preheader.1

.preheader18.preheader.1:                         ; preds = %.preheader19.1
  br label %.preheader18.152

.preheader18.152:                                 ; preds = %.preheader18.preheader.1
  br label %.preheader18.1.1

.preheader18.1.1:                                 ; preds = %.preheader18.152
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6176), align 4
  br i1 false, label %.loopexit55, label %.preheader19.2

.preheader19.2:                                   ; preds = %.preheader18.1.1
  br label %.preheader18.preheader.2

.preheader18.preheader.2:                         ; preds = %.preheader19.2
  br label %.preheader18.2

.preheader18.2:                                   ; preds = %.preheader18.preheader.2
  br label %.preheader18.1.2

.preheader18.1.2:                                 ; preds = %.preheader18.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6208), align 4
  br i1 false, label %.loopexit55, label %.preheader19.3

.preheader19.3:                                   ; preds = %.preheader18.1.2
  br label %.preheader18.preheader.3

.preheader18.preheader.3:                         ; preds = %.preheader19.3
  br label %.preheader18.3

.preheader18.3:                                   ; preds = %.preheader18.preheader.3
  br label %.preheader18.1.3

.preheader18.1.3:                                 ; preds = %.preheader18.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6240), align 4
  br i1 false, label %.loopexit55, label %.preheader19.4

.preheader19.4:                                   ; preds = %.preheader18.1.3
  br i1 false, label %.preheader18.preheader.4, label %197

.preheader18.preheader.4:                         ; preds = %.preheader19.4.2, %.preheader19.4.1, %.preheader19.4
  %storemerge6.lcssa54 = phi i32 [ 0, %.preheader19.4 ], [ 1, %.preheader19.4.1 ], [ 2, %.preheader19.4.2 ]
  br label %.preheader18.4

.preheader18.4:                                   ; preds = %.preheader18.preheader.4
  br label %.preheader18.1.4

.preheader18.1.4:                                 ; preds = %.preheader18.4
  %193 = add nsw i32 %storemerge6.lcssa54, 32
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %194
  store i32 1, ptr %195, align 4
  br i1 false, label %187, label %196

196:                                              ; preds = %.preheader18.1.4
  unreachable

197:                                              ; preds = %.preheader19.4
  br label %.preheader19.preheader.1

.preheader19.preheader.1:                         ; preds = %197
  br label %.preheader19.156

.preheader19.156:                                 ; preds = %.preheader19.preheader.1
  br label %.preheader18.preheader.157

.preheader18.preheader.157:                       ; preds = %.preheader19.156
  br label %.preheader18.158

.preheader18.158:                                 ; preds = %.preheader18.preheader.157
  br label %.preheader18.1.159

.preheader18.1.159:                               ; preds = %.preheader18.158
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6148), align 4
  br i1 false, label %.loopexit55, label %.preheader19.1.1

.preheader19.1.1:                                 ; preds = %.preheader18.1.159
  br label %.preheader18.preheader.1.1

.preheader18.preheader.1.1:                       ; preds = %.preheader19.1.1
  br label %.preheader18.152.1

.preheader18.152.1:                               ; preds = %.preheader18.preheader.1.1
  br label %.preheader18.1.1.1

.preheader18.1.1.1:                               ; preds = %.preheader18.152.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6180), align 4
  br i1 false, label %.loopexit55, label %.preheader19.2.1

.preheader19.2.1:                                 ; preds = %.preheader18.1.1.1
  br label %.preheader18.preheader.2.1

.preheader18.preheader.2.1:                       ; preds = %.preheader19.2.1
  br label %.preheader18.2.1

.preheader18.2.1:                                 ; preds = %.preheader18.preheader.2.1
  br label %.preheader18.1.2.1

.preheader18.1.2.1:                               ; preds = %.preheader18.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6212), align 4
  br i1 false, label %.loopexit55, label %.preheader19.3.1

.preheader19.3.1:                                 ; preds = %.preheader18.1.2.1
  br label %.preheader18.preheader.3.1

.preheader18.preheader.3.1:                       ; preds = %.preheader19.3.1
  br label %.preheader18.3.1

.preheader18.3.1:                                 ; preds = %.preheader18.preheader.3.1
  br label %.preheader18.1.3.1

.preheader18.1.3.1:                               ; preds = %.preheader18.3.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6244), align 4
  br i1 false, label %.loopexit55, label %.preheader19.4.1

.preheader19.4.1:                                 ; preds = %.preheader18.1.3.1
  br i1 false, label %.preheader18.preheader.4, label %198

198:                                              ; preds = %.preheader19.4.1
  br i1 false, label %.preheader19.preheader.2, label %200

.preheader19.preheader.2:                         ; preds = %198
  br label %.preheader19.260

.preheader19.260:                                 ; preds = %.preheader19.preheader.2
  br label %.preheader18.preheader.261

.preheader18.preheader.261:                       ; preds = %.preheader19.260
  br label %.preheader18.262

.preheader18.262:                                 ; preds = %.preheader18.preheader.261
  br label %.preheader18.1.263

.preheader18.1.263:                               ; preds = %.preheader18.262
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6152), align 4
  br i1 false, label %.loopexit55, label %.preheader19.1.2

.preheader19.1.2:                                 ; preds = %.preheader18.1.263
  br label %.preheader18.preheader.1.2

.preheader18.preheader.1.2:                       ; preds = %.preheader19.1.2
  br label %.preheader18.152.2

.preheader18.152.2:                               ; preds = %.preheader18.preheader.1.2
  br label %.preheader18.1.1.2

.preheader18.1.1.2:                               ; preds = %.preheader18.152.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6184), align 4
  br i1 false, label %.loopexit55, label %.preheader19.2.2

.preheader19.2.2:                                 ; preds = %.preheader18.1.1.2
  br label %.preheader18.preheader.2.2

.preheader18.preheader.2.2:                       ; preds = %.preheader19.2.2
  br label %.preheader18.2.2

.preheader18.2.2:                                 ; preds = %.preheader18.preheader.2.2
  br label %.preheader18.1.2.2

.preheader18.1.2.2:                               ; preds = %.preheader18.2.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6216), align 4
  br i1 false, label %.loopexit55, label %.preheader19.3.2

.preheader19.3.2:                                 ; preds = %.preheader18.1.2.2
  br label %.preheader18.preheader.3.2

.preheader18.preheader.3.2:                       ; preds = %.preheader19.3.2
  br label %.preheader18.3.2

.preheader18.3.2:                                 ; preds = %.preheader18.preheader.3.2
  br label %.preheader18.1.3.2

.preheader18.1.3.2:                               ; preds = %.preheader18.3.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6248), align 4
  br i1 false, label %.loopexit55, label %.preheader19.4.2

.preheader19.4.2:                                 ; preds = %.preheader18.1.3.2
  br i1 false, label %.preheader18.preheader.4, label %199

199:                                              ; preds = %.preheader19.4.2
  unreachable

200:                                              ; preds = %198
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %201

201:                                              ; preds = %200
  br label %.preheader17.preheader

.preheader17.preheader:                           ; preds = %201
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
  br i1 false, label %.loopexit69, label %.preheader17.1

.loopexit69:                                      ; preds = %.preheader16.2.4, %.preheader16.2.3, %.preheader16.2.2, %.preheader16.2.174, %.preheader16.2
  %storemerge7.lcssa65.ph = phi i32 [ 0, %.preheader16.2 ], [ 1, %.preheader16.2.174 ], [ 2, %.preheader16.2.2 ], [ 3, %.preheader16.2.3 ], [ 4, %.preheader16.2.4 ]
  %storemerge36.lcssa64.ph = phi i32 [ 0, %.preheader16.2 ], [ 0, %.preheader16.2.174 ], [ 0, %.preheader16.2.2 ], [ 0, %.preheader16.2.3 ], [ 0, %.preheader16.2.4 ]
  br label %202

202:                                              ; preds = %.loopexit69, %.preheader16.2.1
  %storemerge7.lcssa65 = phi i32 [ %storemerge7.lcssa67, %.preheader16.2.1 ], [ %storemerge7.lcssa65.ph, %.loopexit69 ]
  %storemerge36.lcssa64 = phi i32 [ 1, %.preheader16.2.1 ], [ %storemerge36.lcssa64.ph, %.loopexit69 ]
  %203 = shl i32 %storemerge36.lcssa64, 3
  %204 = add i32 128, %203
  %205 = add nsw i32 %storemerge7.lcssa65, %204
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %206
  store i32 1, ptr %207, align 4
  unreachable

.preheader17.1:                                   ; preds = %.preheader16.2
  br i1 false, label %.preheader16.preheader.1, label %215

.preheader16.preheader.1:                         ; preds = %.preheader17.1.4, %.preheader17.1.3, %.preheader17.1.2, %.preheader17.1.1, %.preheader17.1
  %storemerge7.lcssa67 = phi i32 [ 0, %.preheader17.1 ], [ 1, %.preheader17.1.1 ], [ 2, %.preheader17.1.2 ], [ 3, %.preheader17.1.3 ], [ 4, %.preheader17.1.4 ]
  br label %.preheader16.166

.preheader16.166:                                 ; preds = %.preheader16.preheader.1
  br label %.preheader16.1.1

.preheader16.1.1:                                 ; preds = %.preheader16.166
  %208 = add nsw i32 %storemerge7.lcssa67, 8
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %209
  store i32 1, ptr %210, align 4
  br label %.preheader16.2.1

.preheader16.2.1:                                 ; preds = %.preheader16.1.1
  %211 = add nsw i32 %storemerge7.lcssa67, 72
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %212
  store i32 1, ptr %213, align 4
  br i1 false, label %202, label %214

214:                                              ; preds = %.preheader16.2.1
  unreachable

215:                                              ; preds = %.preheader17.1
  br label %.preheader17.preheader.1

.preheader17.preheader.1:                         ; preds = %215
  br label %.preheader17.170

.preheader17.170:                                 ; preds = %.preheader17.preheader.1
  br label %.preheader16.preheader.171

.preheader16.preheader.171:                       ; preds = %.preheader17.170
  br label %.preheader16.172

.preheader16.172:                                 ; preds = %.preheader16.preheader.171
  br label %.preheader16.1.173

.preheader16.1.173:                               ; preds = %.preheader16.172
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8196), align 4
  br label %.preheader16.2.174

.preheader16.2.174:                               ; preds = %.preheader16.1.173
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8452), align 4
  br i1 false, label %.loopexit69, label %.preheader17.1.1

.preheader17.1.1:                                 ; preds = %.preheader16.2.174
  br i1 false, label %.preheader16.preheader.1, label %216

216:                                              ; preds = %.preheader17.1.1
  br label %.preheader17.preheader.2

.preheader17.preheader.2:                         ; preds = %216
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
  br i1 false, label %.loopexit69, label %.preheader17.1.2

.preheader17.1.2:                                 ; preds = %.preheader16.2.2
  br i1 false, label %.preheader16.preheader.1, label %217

217:                                              ; preds = %.preheader17.1.2
  br label %.preheader17.preheader.3

.preheader17.preheader.3:                         ; preds = %217
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
  br i1 false, label %.loopexit69, label %.preheader17.1.3

.preheader17.1.3:                                 ; preds = %.preheader16.2.3
  br i1 false, label %.preheader16.preheader.1, label %218

218:                                              ; preds = %.preheader17.1.3
  br i1 false, label %.preheader17.preheader.4, label %220

.preheader17.preheader.4:                         ; preds = %218
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
  br i1 false, label %.loopexit69, label %.preheader17.1.4

.preheader17.1.4:                                 ; preds = %.preheader16.2.4
  br i1 false, label %.preheader16.preheader.1, label %219

219:                                              ; preds = %.preheader17.1.4
  unreachable

220:                                              ; preds = %218
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %221

221:                                              ; preds = %220
  br label %.preheader15.preheader

.preheader15.preheader:                           ; preds = %221
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
  br i1 false, label %.loopexit82, label %.preheader15.1

.loopexit82:                                      ; preds = %.preheader14.4.1.1, %.preheader14.4.189, %.preheader14.4, %.preheader14.4.1
  %storemerge8.lcssa77.ph = phi i32 [ 0, %.preheader14.4.1 ], [ 0, %.preheader14.4 ], [ 1, %.preheader14.4.189 ], [ 1, %.preheader14.4.1.1 ]
  %storemerge34.lcssa76.ph = phi i32 [ 1, %.preheader14.4.1 ], [ 0, %.preheader14.4 ], [ 0, %.preheader14.4.189 ], [ 1, %.preheader14.4.1.1 ]
  br label %222

222:                                              ; preds = %.loopexit82, %.preheader14.4.2
  %storemerge8.lcssa77 = phi i32 [ %storemerge8.lcssa81, %.preheader14.4.2 ], [ %storemerge8.lcssa77.ph, %.loopexit82 ]
  %storemerge34.lcssa76 = phi i32 [ 2, %.preheader14.4.2 ], [ %storemerge34.lcssa76.ph, %.loopexit82 ]
  %223 = shl i32 %storemerge34.lcssa76, 3
  %224 = add i32 256, %223
  %225 = add nsw i32 %storemerge8.lcssa77, %224
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %226
  store i32 1, ptr %227, align 4
  unreachable

.preheader15.1:                                   ; preds = %.preheader14.4
  br label %.preheader14.preheader.1

.preheader14.preheader.1:                         ; preds = %.preheader15.1
  br label %.preheader14.178

.preheader14.178:                                 ; preds = %.preheader14.preheader.1
  br label %.preheader14.1.1

.preheader14.1.1:                                 ; preds = %.preheader14.178
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
  br i1 false, label %.loopexit82, label %.preheader15.2

.preheader15.2:                                   ; preds = %.preheader14.4.1
  br i1 false, label %.preheader14.preheader.2, label %241

.preheader14.preheader.2:                         ; preds = %.preheader15.2.1, %.preheader15.2
  %storemerge8.lcssa81 = phi i32 [ 0, %.preheader15.2 ], [ 1, %.preheader15.2.1 ]
  br label %.preheader14.279

.preheader14.279:                                 ; preds = %.preheader14.preheader.2
  br label %.preheader14.1.2

.preheader14.1.2:                                 ; preds = %.preheader14.279
  %228 = add nsw i32 %storemerge8.lcssa81, 16
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %229
  store i32 1, ptr %230, align 4
  br label %.preheader14.2.2

.preheader14.2.2:                                 ; preds = %.preheader14.1.2
  %231 = add nsw i32 %storemerge8.lcssa81, 80
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %232
  store i32 1, ptr %233, align 4
  br label %.preheader14.3.2

.preheader14.3.2:                                 ; preds = %.preheader14.2.2
  %234 = add nsw i32 %storemerge8.lcssa81, 144
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %235
  store i32 1, ptr %236, align 4
  br label %.preheader14.4.2

.preheader14.4.2:                                 ; preds = %.preheader14.3.2
  %237 = add nsw i32 %storemerge8.lcssa81, 208
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %238
  store i32 1, ptr %239, align 4
  br i1 false, label %222, label %240

240:                                              ; preds = %.preheader14.4.2
  unreachable

241:                                              ; preds = %.preheader15.2
  br i1 false, label %.preheader15.preheader.1, label %243

.preheader15.preheader.1:                         ; preds = %241
  br label %.preheader15.183

.preheader15.183:                                 ; preds = %.preheader15.preheader.1
  br label %.preheader14.preheader.184

.preheader14.preheader.184:                       ; preds = %.preheader15.183
  br label %.preheader14.185

.preheader14.185:                                 ; preds = %.preheader14.preheader.184
  br label %.preheader14.1.186

.preheader14.1.186:                               ; preds = %.preheader14.185
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10244), align 4
  br label %.preheader14.2.187

.preheader14.2.187:                               ; preds = %.preheader14.1.186
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10500), align 4
  br label %.preheader14.3.188

.preheader14.3.188:                               ; preds = %.preheader14.2.187
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10756), align 4
  br label %.preheader14.4.189

.preheader14.4.189:                               ; preds = %.preheader14.3.188
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11012), align 4
  br i1 false, label %.loopexit82, label %.preheader15.1.1

.preheader15.1.1:                                 ; preds = %.preheader14.4.189
  br label %.preheader14.preheader.1.1

.preheader14.preheader.1.1:                       ; preds = %.preheader15.1.1
  br label %.preheader14.178.1

.preheader14.178.1:                               ; preds = %.preheader14.preheader.1.1
  br label %.preheader14.1.1.1

.preheader14.1.1.1:                               ; preds = %.preheader14.178.1
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
  br i1 false, label %.loopexit82, label %.preheader15.2.1

.preheader15.2.1:                                 ; preds = %.preheader14.4.1.1
  br i1 false, label %.preheader14.preheader.2, label %242

242:                                              ; preds = %.preheader15.2.1
  unreachable

243:                                              ; preds = %241
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %244

244:                                              ; preds = %243
  br label %.preheader13.preheader

.preheader13.preheader:                           ; preds = %244
  br label %.preheader13

.preheader13:                                     ; preds = %.preheader13.preheader
  br label %.preheader12.preheader

.preheader12.preheader:                           ; preds = %.preheader13
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader12.preheader
  br label %.preheader12.1

.preheader12.1:                                   ; preds = %.preheader12
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), align 4
  br i1 false, label %.loopexit95, label %.preheader13.1

.loopexit95:                                      ; preds = %.preheader12.1.3, %.preheader12.1.2, %.preheader12.1.199, %.preheader12.1
  %storemerge9.lcssa91.ph = phi i32 [ 0, %.preheader12.1 ], [ 1, %.preheader12.1.199 ], [ 2, %.preheader12.1.2 ], [ 3, %.preheader12.1.3 ]
  %storemerge32.lcssa90.ph = phi i32 [ 0, %.preheader12.1 ], [ 0, %.preheader12.1.199 ], [ 0, %.preheader12.1.2 ], [ 0, %.preheader12.1.3 ]
  br label %245

245:                                              ; preds = %.loopexit95, %.preheader12.1.1
  %storemerge9.lcssa91 = phi i32 [ %storemerge9.lcssa93, %.preheader12.1.1 ], [ %storemerge9.lcssa91.ph, %.loopexit95 ]
  %storemerge32.lcssa90 = phi i32 [ 1, %.preheader12.1.1 ], [ %storemerge32.lcssa90.ph, %.loopexit95 ]
  %246 = shl i32 %storemerge32.lcssa90, 3
  %247 = add i32 64, %246
  %248 = add nsw i32 %storemerge9.lcssa91, %247
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %249
  store i32 1, ptr %250, align 4
  unreachable

.preheader13.1:                                   ; preds = %.preheader12.1
  br i1 false, label %.preheader12.preheader.1, label %255

.preheader12.preheader.1:                         ; preds = %.preheader13.1.3, %.preheader13.1.2, %.preheader13.1.1, %.preheader13.1
  %storemerge9.lcssa93 = phi i32 [ 0, %.preheader13.1 ], [ 1, %.preheader13.1.1 ], [ 2, %.preheader13.1.2 ], [ 3, %.preheader13.1.3 ]
  br label %.preheader12.192

.preheader12.192:                                 ; preds = %.preheader12.preheader.1
  br label %.preheader12.1.1

.preheader12.1.1:                                 ; preds = %.preheader12.192
  %251 = add nsw i32 %storemerge9.lcssa93, 8
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %252
  store i32 1, ptr %253, align 4
  br i1 false, label %245, label %254

254:                                              ; preds = %.preheader12.1.1
  unreachable

255:                                              ; preds = %.preheader13.1
  br label %.preheader13.preheader.1

.preheader13.preheader.1:                         ; preds = %255
  br label %.preheader13.196

.preheader13.196:                                 ; preds = %.preheader13.preheader.1
  br label %.preheader12.preheader.197

.preheader12.preheader.197:                       ; preds = %.preheader13.196
  br label %.preheader12.198

.preheader12.198:                                 ; preds = %.preheader12.preheader.197
  br label %.preheader12.1.199

.preheader12.1.199:                               ; preds = %.preheader12.198
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12292), align 4
  br i1 false, label %.loopexit95, label %.preheader13.1.1

.preheader13.1.1:                                 ; preds = %.preheader12.1.199
  br i1 false, label %.preheader12.preheader.1, label %256

256:                                              ; preds = %.preheader13.1.1
  br label %.preheader13.preheader.2

.preheader13.preheader.2:                         ; preds = %256
  br label %.preheader13.2

.preheader13.2:                                   ; preds = %.preheader13.preheader.2
  br label %.preheader12.preheader.2

.preheader12.preheader.2:                         ; preds = %.preheader13.2
  br label %.preheader12.2

.preheader12.2:                                   ; preds = %.preheader12.preheader.2
  br label %.preheader12.1.2

.preheader12.1.2:                                 ; preds = %.preheader12.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12296), align 4
  br i1 false, label %.loopexit95, label %.preheader13.1.2

.preheader13.1.2:                                 ; preds = %.preheader12.1.2
  br i1 false, label %.preheader12.preheader.1, label %257

257:                                              ; preds = %.preheader13.1.2
  br i1 false, label %.preheader13.preheader.3, label %259

.preheader13.preheader.3:                         ; preds = %257
  br label %.preheader13.3

.preheader13.3:                                   ; preds = %.preheader13.preheader.3
  br label %.preheader12.preheader.3

.preheader12.preheader.3:                         ; preds = %.preheader13.3
  br label %.preheader12.3

.preheader12.3:                                   ; preds = %.preheader12.preheader.3
  br label %.preheader12.1.3

.preheader12.1.3:                                 ; preds = %.preheader12.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12300), align 4
  br i1 false, label %.loopexit95, label %.preheader13.1.3

.preheader13.1.3:                                 ; preds = %.preheader12.1.3
  br i1 false, label %.preheader12.preheader.1, label %258

258:                                              ; preds = %.preheader13.1.3
  unreachable

259:                                              ; preds = %257
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %260

260:                                              ; preds = %259
  br label %.preheader11.preheader

.preheader11.preheader:                           ; preds = %260
  br label %.preheader11

.preheader11:                                     ; preds = %.preheader11.preheader
  br label %.preheader10.preheader

.preheader10.preheader:                           ; preds = %.preheader11
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader10.preheader
  br label %.preheader10.1

.preheader10.1:                                   ; preds = %.preheader10
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br i1 false, label %.loopexit105, label %.preheader11.1

.loopexit105:                                     ; preds = %.preheader10.1.2.1, %.preheader10.1.1.1, %.preheader10.1.1109, %.preheader10.1, %.preheader10.1.1, %.preheader10.1.2
  %storemerge10.lcssa101.ph = phi i32 [ 0, %.preheader10.1.2 ], [ 0, %.preheader10.1.1 ], [ 0, %.preheader10.1 ], [ 1, %.preheader10.1.1109 ], [ 1, %.preheader10.1.1.1 ], [ 1, %.preheader10.1.2.1 ]
  %storemerge30.lcssa100.ph = phi i32 [ 2, %.preheader10.1.2 ], [ 1, %.preheader10.1.1 ], [ 0, %.preheader10.1 ], [ 0, %.preheader10.1.1109 ], [ 1, %.preheader10.1.1.1 ], [ 2, %.preheader10.1.2.1 ]
  br label %261

261:                                              ; preds = %.loopexit105, %.preheader10.1.3
  %storemerge10.lcssa101 = phi i32 [ %storemerge10.lcssa104, %.preheader10.1.3 ], [ %storemerge10.lcssa101.ph, %.loopexit105 ]
  %storemerge30.lcssa100 = phi i32 [ 3, %.preheader10.1.3 ], [ %storemerge30.lcssa100.ph, %.loopexit105 ]
  %262 = shl i32 %storemerge30.lcssa100, 3
  %263 = add i32 64, %262
  %264 = add nsw i32 %storemerge10.lcssa101, %263
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %265
  store i32 1, ptr %266, align 4
  unreachable

.preheader11.1:                                   ; preds = %.preheader10.1
  br label %.preheader10.preheader.1

.preheader10.preheader.1:                         ; preds = %.preheader11.1
  br label %.preheader10.1102

.preheader10.1102:                                ; preds = %.preheader10.preheader.1
  br label %.preheader10.1.1

.preheader10.1.1:                                 ; preds = %.preheader10.1102
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br i1 false, label %.loopexit105, label %.preheader11.2

.preheader11.2:                                   ; preds = %.preheader10.1.1
  br label %.preheader10.preheader.2

.preheader10.preheader.2:                         ; preds = %.preheader11.2
  br label %.preheader10.2

.preheader10.2:                                   ; preds = %.preheader10.preheader.2
  br label %.preheader10.1.2

.preheader10.1.2:                                 ; preds = %.preheader10.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  br i1 false, label %.loopexit105, label %.preheader11.3

.preheader11.3:                                   ; preds = %.preheader10.1.2
  br i1 false, label %.preheader10.preheader.3, label %271

.preheader10.preheader.3:                         ; preds = %.preheader11.3.1, %.preheader11.3
  %storemerge10.lcssa104 = phi i32 [ 0, %.preheader11.3 ], [ 1, %.preheader11.3.1 ]
  br label %.preheader10.3

.preheader10.3:                                   ; preds = %.preheader10.preheader.3
  br label %.preheader10.1.3

.preheader10.1.3:                                 ; preds = %.preheader10.3
  %267 = add nsw i32 %storemerge10.lcssa104, 24
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %268
  store i32 1, ptr %269, align 4
  br i1 false, label %261, label %270

270:                                              ; preds = %.preheader10.1.3
  unreachable

271:                                              ; preds = %.preheader11.3
  br i1 false, label %.preheader11.preheader.1, label %273

.preheader11.preheader.1:                         ; preds = %271
  br label %.preheader11.1106

.preheader11.1106:                                ; preds = %.preheader11.preheader.1
  br label %.preheader10.preheader.1107

.preheader10.preheader.1107:                      ; preds = %.preheader11.1106
  br label %.preheader10.1108

.preheader10.1108:                                ; preds = %.preheader10.preheader.1107
  br label %.preheader10.1.1109

.preheader10.1.1109:                              ; preds = %.preheader10.1108
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14340), align 4
  br i1 false, label %.loopexit105, label %.preheader11.1.1

.preheader11.1.1:                                 ; preds = %.preheader10.1.1109
  br label %.preheader10.preheader.1.1

.preheader10.preheader.1.1:                       ; preds = %.preheader11.1.1
  br label %.preheader10.1102.1

.preheader10.1102.1:                              ; preds = %.preheader10.preheader.1.1
  br label %.preheader10.1.1.1

.preheader10.1.1.1:                               ; preds = %.preheader10.1102.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14372), align 4
  br i1 false, label %.loopexit105, label %.preheader11.2.1

.preheader11.2.1:                                 ; preds = %.preheader10.1.1.1
  br label %.preheader10.preheader.2.1

.preheader10.preheader.2.1:                       ; preds = %.preheader11.2.1
  br label %.preheader10.2.1

.preheader10.2.1:                                 ; preds = %.preheader10.preheader.2.1
  br label %.preheader10.1.2.1

.preheader10.1.2.1:                               ; preds = %.preheader10.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14404), align 4
  br i1 false, label %.loopexit105, label %.preheader11.3.1

.preheader11.3.1:                                 ; preds = %.preheader10.1.2.1
  br i1 false, label %.preheader10.preheader.3, label %272

272:                                              ; preds = %.preheader11.3.1
  unreachable

273:                                              ; preds = %271
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %274

274:                                              ; preds = %273
  br label %.preheader9.preheader

.preheader9.preheader:                            ; preds = %274
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
  br i1 false, label %.loopexit115, label %.preheader9.1

.loopexit115:                                     ; preds = %.preheader8.3.1121, %.preheader8.3
  %storemerge11.lcssa111.ph = phi i32 [ 0, %.preheader8.3 ], [ 1, %.preheader8.3.1121 ]
  %storemerge28.lcssa110.ph = phi i32 [ 0, %.preheader8.3 ], [ 0, %.preheader8.3.1121 ]
  br label %275

275:                                              ; preds = %.loopexit115, %.preheader8.3.1
  %storemerge11.lcssa111 = phi i32 [ %storemerge11.lcssa113, %.preheader8.3.1 ], [ %storemerge11.lcssa111.ph, %.loopexit115 ]
  %storemerge28.lcssa110 = phi i32 [ 1, %.preheader8.3.1 ], [ %storemerge28.lcssa110.ph, %.loopexit115 ]
  %276 = shl i32 %storemerge28.lcssa110, 3
  %277 = add i32 192, %276
  %278 = add nsw i32 %storemerge11.lcssa111, %277
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %279
  store i32 1, ptr %280, align 4
  unreachable

.preheader9.1:                                    ; preds = %.preheader8.3
  br i1 false, label %.preheader8.preheader.1, label %291

.preheader8.preheader.1:                          ; preds = %.preheader9.1.1, %.preheader9.1
  %storemerge11.lcssa113 = phi i32 [ 0, %.preheader9.1 ], [ 1, %.preheader9.1.1 ]
  br label %.preheader8.1112

.preheader8.1112:                                 ; preds = %.preheader8.preheader.1
  br label %.preheader8.1.1

.preheader8.1.1:                                  ; preds = %.preheader8.1112
  %281 = add nsw i32 %storemerge11.lcssa113, 8
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %282
  store i32 1, ptr %283, align 4
  br label %.preheader8.2.1

.preheader8.2.1:                                  ; preds = %.preheader8.1.1
  %284 = add nsw i32 %storemerge11.lcssa113, 72
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %285
  store i32 1, ptr %286, align 4
  br label %.preheader8.3.1

.preheader8.3.1:                                  ; preds = %.preheader8.2.1
  %287 = add nsw i32 %storemerge11.lcssa113, 136
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %288
  store i32 1, ptr %289, align 4
  br i1 false, label %275, label %290

290:                                              ; preds = %.preheader8.3.1
  unreachable

291:                                              ; preds = %.preheader9.1
  br i1 false, label %.preheader9.preheader.1, label %293

.preheader9.preheader.1:                          ; preds = %291
  br label %.preheader9.1116

.preheader9.1116:                                 ; preds = %.preheader9.preheader.1
  br label %.preheader8.preheader.1117

.preheader8.preheader.1117:                       ; preds = %.preheader9.1116
  br label %.preheader8.1118

.preheader8.1118:                                 ; preds = %.preheader8.preheader.1117
  br label %.preheader8.1.1119

.preheader8.1.1119:                               ; preds = %.preheader8.1118
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16388), align 4
  br label %.preheader8.2.1120

.preheader8.2.1120:                               ; preds = %.preheader8.1.1119
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16644), align 4
  br label %.preheader8.3.1121

.preheader8.3.1121:                               ; preds = %.preheader8.2.1120
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16900), align 4
  br i1 false, label %.loopexit115, label %.preheader9.1.1

.preheader9.1.1:                                  ; preds = %.preheader8.3.1121
  br i1 false, label %.preheader8.preheader.1, label %292

292:                                              ; preds = %.preheader9.1.1
  unreachable

293:                                              ; preds = %291
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %294

294:                                              ; preds = %293
  br label %.preheader7.preheader

.preheader7.preheader:                            ; preds = %294
  br label %.preheader7

.preheader7:                                      ; preds = %.preheader7.preheader
  br label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %.preheader7
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.preheader
  br label %.preheader6.1

.preheader6.1:                                    ; preds = %.preheader6
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), align 4
  br i1 false, label %.loopexit127, label %.preheader7.1

.loopexit127:                                     ; preds = %.preheader6.1.1.2, %.preheader6.1.2135, %.preheader6.1.1.1, %.preheader6.1.1131, %.preheader6.1, %.preheader6.1.1
  %storemerge12.lcssa123.ph = phi i32 [ 0, %.preheader6.1.1 ], [ 0, %.preheader6.1 ], [ 1, %.preheader6.1.1131 ], [ 1, %.preheader6.1.1.1 ], [ 2, %.preheader6.1.2135 ], [ 2, %.preheader6.1.1.2 ]
  %storemerge26.lcssa122.ph = phi i32 [ 1, %.preheader6.1.1 ], [ 0, %.preheader6.1 ], [ 0, %.preheader6.1.1131 ], [ 1, %.preheader6.1.1.1 ], [ 0, %.preheader6.1.2135 ], [ 1, %.preheader6.1.1.2 ]
  br label %295

295:                                              ; preds = %.loopexit127, %.preheader6.1.2
  %storemerge12.lcssa123 = phi i32 [ %storemerge12.lcssa126, %.preheader6.1.2 ], [ %storemerge12.lcssa123.ph, %.loopexit127 ]
  %storemerge26.lcssa122 = phi i32 [ 2, %.preheader6.1.2 ], [ %storemerge26.lcssa122.ph, %.loopexit127 ]
  %296 = shl i32 %storemerge26.lcssa122, 3
  %297 = add i32 64, %296
  %298 = add nsw i32 %storemerge12.lcssa123, %297
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %299
  store i32 1, ptr %300, align 4
  unreachable

.preheader7.1:                                    ; preds = %.preheader6.1
  br label %.preheader6.preheader.1

.preheader6.preheader.1:                          ; preds = %.preheader7.1
  br label %.preheader6.1124

.preheader6.1124:                                 ; preds = %.preheader6.preheader.1
  br label %.preheader6.1.1

.preheader6.1.1:                                  ; preds = %.preheader6.1124
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18464), align 4
  br i1 false, label %.loopexit127, label %.preheader7.2

.preheader7.2:                                    ; preds = %.preheader6.1.1
  br i1 false, label %.preheader6.preheader.2, label %305

.preheader6.preheader.2:                          ; preds = %.preheader7.2.2, %.preheader7.2.1, %.preheader7.2
  %storemerge12.lcssa126 = phi i32 [ 0, %.preheader7.2 ], [ 1, %.preheader7.2.1 ], [ 2, %.preheader7.2.2 ]
  br label %.preheader6.2

.preheader6.2:                                    ; preds = %.preheader6.preheader.2
  br label %.preheader6.1.2

.preheader6.1.2:                                  ; preds = %.preheader6.2
  %301 = add nsw i32 %storemerge12.lcssa126, 16
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %302
  store i32 1, ptr %303, align 4
  br i1 false, label %295, label %304

304:                                              ; preds = %.preheader6.1.2
  unreachable

305:                                              ; preds = %.preheader7.2
  br label %.preheader7.preheader.1

.preheader7.preheader.1:                          ; preds = %305
  br label %.preheader7.1128

.preheader7.1128:                                 ; preds = %.preheader7.preheader.1
  br label %.preheader6.preheader.1129

.preheader6.preheader.1129:                       ; preds = %.preheader7.1128
  br label %.preheader6.1130

.preheader6.1130:                                 ; preds = %.preheader6.preheader.1129
  br label %.preheader6.1.1131

.preheader6.1.1131:                               ; preds = %.preheader6.1130
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18436), align 4
  br i1 false, label %.loopexit127, label %.preheader7.1.1

.preheader7.1.1:                                  ; preds = %.preheader6.1.1131
  br label %.preheader6.preheader.1.1

.preheader6.preheader.1.1:                        ; preds = %.preheader7.1.1
  br label %.preheader6.1124.1

.preheader6.1124.1:                               ; preds = %.preheader6.preheader.1.1
  br label %.preheader6.1.1.1

.preheader6.1.1.1:                                ; preds = %.preheader6.1124.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18468), align 4
  br i1 false, label %.loopexit127, label %.preheader7.2.1

.preheader7.2.1:                                  ; preds = %.preheader6.1.1.1
  br i1 false, label %.preheader6.preheader.2, label %306

306:                                              ; preds = %.preheader7.2.1
  br i1 false, label %.preheader7.preheader.2, label %308

.preheader7.preheader.2:                          ; preds = %306
  br label %.preheader7.2132

.preheader7.2132:                                 ; preds = %.preheader7.preheader.2
  br label %.preheader6.preheader.2133

.preheader6.preheader.2133:                       ; preds = %.preheader7.2132
  br label %.preheader6.2134

.preheader6.2134:                                 ; preds = %.preheader6.preheader.2133
  br label %.preheader6.1.2135

.preheader6.1.2135:                               ; preds = %.preheader6.2134
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18440), align 4
  br i1 false, label %.loopexit127, label %.preheader7.1.2

.preheader7.1.2:                                  ; preds = %.preheader6.1.2135
  br label %.preheader6.preheader.1.2

.preheader6.preheader.1.2:                        ; preds = %.preheader7.1.2
  br label %.preheader6.1124.2

.preheader6.1124.2:                               ; preds = %.preheader6.preheader.1.2
  br label %.preheader6.1.1.2

.preheader6.1.1.2:                                ; preds = %.preheader6.1124.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18472), align 4
  br i1 false, label %.loopexit127, label %.preheader7.2.2

.preheader7.2.2:                                  ; preds = %.preheader6.1.1.2
  br i1 false, label %.preheader6.preheader.2, label %307

307:                                              ; preds = %.preheader7.2.2
  unreachable

308:                                              ; preds = %306
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %309

309:                                              ; preds = %308
  br label %.preheader5.preheader

.preheader5.preheader:                            ; preds = %309
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
  br i1 false, label %.loopexit141, label %.preheader5.1

.loopexit141:                                     ; preds = %.preheader4.2.2, %.preheader4.2.1146, %.preheader4.2
  %storemerge13.lcssa137.ph = phi i32 [ 0, %.preheader4.2 ], [ 1, %.preheader4.2.1146 ], [ 2, %.preheader4.2.2 ]
  %storemerge24.lcssa136.ph = phi i32 [ 0, %.preheader4.2 ], [ 0, %.preheader4.2.1146 ], [ 0, %.preheader4.2.2 ]
  br label %310

310:                                              ; preds = %.loopexit141, %.preheader4.2.1
  %storemerge13.lcssa137 = phi i32 [ %storemerge13.lcssa139, %.preheader4.2.1 ], [ %storemerge13.lcssa137.ph, %.loopexit141 ]
  %storemerge24.lcssa136 = phi i32 [ 1, %.preheader4.2.1 ], [ %storemerge24.lcssa136.ph, %.loopexit141 ]
  %311 = shl i32 %storemerge24.lcssa136, 3
  %312 = add i32 128, %311
  %313 = add nsw i32 %storemerge13.lcssa137, %312
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %314
  store i32 1, ptr %315, align 4
  unreachable

.preheader5.1:                                    ; preds = %.preheader4.2
  br i1 false, label %.preheader4.preheader.1, label %323

.preheader4.preheader.1:                          ; preds = %.preheader5.1.2, %.preheader5.1.1, %.preheader5.1
  %storemerge13.lcssa139 = phi i32 [ 0, %.preheader5.1 ], [ 1, %.preheader5.1.1 ], [ 2, %.preheader5.1.2 ]
  br label %.preheader4.1138

.preheader4.1138:                                 ; preds = %.preheader4.preheader.1
  br label %.preheader4.1.1

.preheader4.1.1:                                  ; preds = %.preheader4.1138
  %316 = add nsw i32 %storemerge13.lcssa139, 8
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %317
  store i32 1, ptr %318, align 4
  br label %.preheader4.2.1

.preheader4.2.1:                                  ; preds = %.preheader4.1.1
  %319 = add nsw i32 %storemerge13.lcssa139, 72
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %320
  store i32 1, ptr %321, align 4
  br i1 false, label %310, label %322

322:                                              ; preds = %.preheader4.2.1
  unreachable

323:                                              ; preds = %.preheader5.1
  br label %.preheader5.preheader.1

.preheader5.preheader.1:                          ; preds = %323
  br label %.preheader5.1142

.preheader5.1142:                                 ; preds = %.preheader5.preheader.1
  br label %.preheader4.preheader.1143

.preheader4.preheader.1143:                       ; preds = %.preheader5.1142
  br label %.preheader4.1144

.preheader4.1144:                                 ; preds = %.preheader4.preheader.1143
  br label %.preheader4.1.1145

.preheader4.1.1145:                               ; preds = %.preheader4.1144
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20484), align 4
  br label %.preheader4.2.1146

.preheader4.2.1146:                               ; preds = %.preheader4.1.1145
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20740), align 4
  br i1 false, label %.loopexit141, label %.preheader5.1.1

.preheader5.1.1:                                  ; preds = %.preheader4.2.1146
  br i1 false, label %.preheader4.preheader.1, label %324

324:                                              ; preds = %.preheader5.1.1
  br i1 false, label %.preheader5.preheader.2, label %326

.preheader5.preheader.2:                          ; preds = %324
  br label %.preheader5.2

.preheader5.2:                                    ; preds = %.preheader5.preheader.2
  br label %.preheader4.preheader.2

.preheader4.preheader.2:                          ; preds = %.preheader5.2
  br label %.preheader4.2147

.preheader4.2147:                                 ; preds = %.preheader4.preheader.2
  br label %.preheader4.1.2

.preheader4.1.2:                                  ; preds = %.preheader4.2147
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20488), align 4
  br label %.preheader4.2.2

.preheader4.2.2:                                  ; preds = %.preheader4.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20744), align 4
  br i1 false, label %.loopexit141, label %.preheader5.1.2

.preheader5.1.2:                                  ; preds = %.preheader4.2.2
  br i1 false, label %.preheader4.preheader.1, label %325

325:                                              ; preds = %.preheader5.1.2
  unreachable

326:                                              ; preds = %324
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %327

327:                                              ; preds = %326
  br label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %327
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
  br i1 false, label %.loopexit154, label %.preheader3.1

.loopexit154:                                     ; preds = %.preheader2.2.1.1, %.preheader2.2.1159, %.preheader2.2, %.preheader2.2.1
  %storemerge14.lcssa149.ph = phi i32 [ 0, %.preheader2.2.1 ], [ 0, %.preheader2.2 ], [ 1, %.preheader2.2.1159 ], [ 1, %.preheader2.2.1.1 ]
  %storemerge22.lcssa148.ph = phi i32 [ 1, %.preheader2.2.1 ], [ 0, %.preheader2.2 ], [ 0, %.preheader2.2.1159 ], [ 1, %.preheader2.2.1.1 ]
  br label %328

328:                                              ; preds = %.loopexit154, %.preheader2.2.2
  %storemerge14.lcssa149 = phi i32 [ %storemerge14.lcssa153, %.preheader2.2.2 ], [ %storemerge14.lcssa149.ph, %.loopexit154 ]
  %storemerge22.lcssa148 = phi i32 [ 2, %.preheader2.2.2 ], [ %storemerge22.lcssa148.ph, %.loopexit154 ]
  %329 = shl i32 %storemerge22.lcssa148, 3
  %330 = add i32 128, %329
  %331 = add nsw i32 %storemerge14.lcssa149, %330
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %332
  store i32 1, ptr %333, align 4
  unreachable

.preheader3.1:                                    ; preds = %.preheader2.2
  br label %.preheader2.preheader.1

.preheader2.preheader.1:                          ; preds = %.preheader3.1
  br label %.preheader2.1150

.preheader2.1150:                                 ; preds = %.preheader2.preheader.1
  br label %.preheader2.1.1

.preheader2.1.1:                                  ; preds = %.preheader2.1150
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  br label %.preheader2.2.1

.preheader2.2.1:                                  ; preds = %.preheader2.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  br i1 false, label %.loopexit154, label %.preheader3.2

.preheader3.2:                                    ; preds = %.preheader2.2.1
  br i1 false, label %.preheader2.preheader.2, label %341

.preheader2.preheader.2:                          ; preds = %.preheader3.2.1, %.preheader3.2
  %storemerge14.lcssa153 = phi i32 [ 0, %.preheader3.2 ], [ 1, %.preheader3.2.1 ]
  br label %.preheader2.2151

.preheader2.2151:                                 ; preds = %.preheader2.preheader.2
  br label %.preheader2.1.2

.preheader2.1.2:                                  ; preds = %.preheader2.2151
  %334 = add nsw i32 %storemerge14.lcssa153, 16
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %335
  store i32 1, ptr %336, align 4
  br label %.preheader2.2.2

.preheader2.2.2:                                  ; preds = %.preheader2.1.2
  %337 = add nsw i32 %storemerge14.lcssa153, 80
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %338
  store i32 1, ptr %339, align 4
  br i1 false, label %328, label %340

340:                                              ; preds = %.preheader2.2.2
  unreachable

341:                                              ; preds = %.preheader3.2
  br i1 false, label %.preheader3.preheader.1, label %343

.preheader3.preheader.1:                          ; preds = %341
  br label %.preheader3.1155

.preheader3.1155:                                 ; preds = %.preheader3.preheader.1
  br label %.preheader2.preheader.1156

.preheader2.preheader.1156:                       ; preds = %.preheader3.1155
  br label %.preheader2.1157

.preheader2.1157:                                 ; preds = %.preheader2.preheader.1156
  br label %.preheader2.1.1158

.preheader2.1.1158:                               ; preds = %.preheader2.1157
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22532), align 4
  br label %.preheader2.2.1159

.preheader2.2.1159:                               ; preds = %.preheader2.1.1158
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22788), align 4
  br i1 false, label %.loopexit154, label %.preheader3.1.1

.preheader3.1.1:                                  ; preds = %.preheader2.2.1159
  br label %.preheader2.preheader.1.1

.preheader2.preheader.1.1:                        ; preds = %.preheader3.1.1
  br label %.preheader2.1150.1

.preheader2.1150.1:                               ; preds = %.preheader2.preheader.1.1
  br label %.preheader2.1.1.1

.preheader2.1.1.1:                                ; preds = %.preheader2.1150.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22564), align 4
  br label %.preheader2.2.1.1

.preheader2.2.1.1:                                ; preds = %.preheader2.1.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22820), align 4
  br i1 false, label %.loopexit154, label %.preheader3.2.1

.preheader3.2.1:                                  ; preds = %.preheader2.2.1.1
  br i1 false, label %.preheader2.preheader.2, label %342

342:                                              ; preds = %.preheader3.2.1
  unreachable

343:                                              ; preds = %341
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %344

344:                                              ; preds = %343
  br label %.preheader1.preheader

.preheader1.preheader:                            ; preds = %344
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
  br i1 false, label %.loopexit166, label %.preheader1.1

.loopexit166:                                     ; preds = %.preheader.2.1.2, %.preheader.2.2176, %.preheader.2.1.1, %.preheader.2.1171, %.preheader.2, %.preheader.2.1
  %storemerge15.lcssa161.ph = phi i32 [ 0, %.preheader.2.1 ], [ 0, %.preheader.2 ], [ 1, %.preheader.2.1171 ], [ 1, %.preheader.2.1.1 ], [ 2, %.preheader.2.2176 ], [ 2, %.preheader.2.1.2 ]
  %storemerge20.lcssa160.ph = phi i32 [ 1, %.preheader.2.1 ], [ 0, %.preheader.2 ], [ 0, %.preheader.2.1171 ], [ 1, %.preheader.2.1.1 ], [ 0, %.preheader.2.2176 ], [ 1, %.preheader.2.1.2 ]
  br label %345

345:                                              ; preds = %.loopexit166, %.preheader.2.2
  %storemerge15.lcssa161 = phi i32 [ %storemerge15.lcssa165, %.preheader.2.2 ], [ %storemerge15.lcssa161.ph, %.loopexit166 ]
  %storemerge20.lcssa160 = phi i32 [ 2, %.preheader.2.2 ], [ %storemerge20.lcssa160.ph, %.loopexit166 ]
  %346 = shl i32 %storemerge20.lcssa160, 3
  %347 = add i32 128, %346
  %348 = add nsw i32 %storemerge15.lcssa161, %347
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %349
  store i32 1, ptr %350, align 4
  unreachable

.preheader1.1:                                    ; preds = %.preheader.2
  br label %.preheader.preheader.1

.preheader.preheader.1:                           ; preds = %.preheader1.1
  br label %.preheader.1162

.preheader.1162:                                  ; preds = %.preheader.preheader.1
  br label %.preheader.1.1

.preheader.1.1:                                   ; preds = %.preheader.1162
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24608), align 4
  br label %.preheader.2.1

.preheader.2.1:                                   ; preds = %.preheader.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24864), align 4
  br i1 false, label %.loopexit166, label %.preheader1.2

.preheader1.2:                                    ; preds = %.preheader.2.1
  br i1 false, label %.preheader.preheader.2, label %358

.preheader.preheader.2:                           ; preds = %.preheader1.2.2, %.preheader1.2.1, %.preheader1.2
  %storemerge15.lcssa165 = phi i32 [ 0, %.preheader1.2 ], [ 1, %.preheader1.2.1 ], [ 2, %.preheader1.2.2 ]
  br label %.preheader.2163

.preheader.2163:                                  ; preds = %.preheader.preheader.2
  br label %.preheader.1.2

.preheader.1.2:                                   ; preds = %.preheader.2163
  %351 = add nsw i32 %storemerge15.lcssa165, 16
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %352
  store i32 1, ptr %353, align 4
  br label %.preheader.2.2

.preheader.2.2:                                   ; preds = %.preheader.1.2
  %354 = add nsw i32 %storemerge15.lcssa165, 80
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %355
  store i32 1, ptr %356, align 4
  br i1 false, label %345, label %357

357:                                              ; preds = %.preheader.2.2
  unreachable

358:                                              ; preds = %.preheader1.2
  br label %.preheader1.preheader.1

.preheader1.preheader.1:                          ; preds = %358
  br label %.preheader1.1167

.preheader1.1167:                                 ; preds = %.preheader1.preheader.1
  br label %.preheader.preheader.1168

.preheader.preheader.1168:                        ; preds = %.preheader1.1167
  br label %.preheader.1169

.preheader.1169:                                  ; preds = %.preheader.preheader.1168
  br label %.preheader.1.1170

.preheader.1.1170:                                ; preds = %.preheader.1169
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24580), align 4
  br label %.preheader.2.1171

.preheader.2.1171:                                ; preds = %.preheader.1.1170
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24836), align 4
  br i1 false, label %.loopexit166, label %.preheader1.1.1

.preheader1.1.1:                                  ; preds = %.preheader.2.1171
  br label %.preheader.preheader.1.1

.preheader.preheader.1.1:                         ; preds = %.preheader1.1.1
  br label %.preheader.1162.1

.preheader.1162.1:                                ; preds = %.preheader.preheader.1.1
  br label %.preheader.1.1.1

.preheader.1.1.1:                                 ; preds = %.preheader.1162.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24612), align 4
  br label %.preheader.2.1.1

.preheader.2.1.1:                                 ; preds = %.preheader.1.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24868), align 4
  br i1 false, label %.loopexit166, label %.preheader1.2.1

.preheader1.2.1:                                  ; preds = %.preheader.2.1.1
  br i1 false, label %.preheader.preheader.2, label %359

359:                                              ; preds = %.preheader1.2.1
  br i1 false, label %.preheader1.preheader.2, label %361

.preheader1.preheader.2:                          ; preds = %359
  br label %.preheader1.2172

.preheader1.2172:                                 ; preds = %.preheader1.preheader.2
  br label %.preheader.preheader.2173

.preheader.preheader.2173:                        ; preds = %.preheader1.2172
  br label %.preheader.2174

.preheader.2174:                                  ; preds = %.preheader.preheader.2173
  br label %.preheader.1.2175

.preheader.1.2175:                                ; preds = %.preheader.2174
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24584), align 4
  br label %.preheader.2.2176

.preheader.2.2176:                                ; preds = %.preheader.1.2175
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24840), align 4
  br i1 false, label %.loopexit166, label %.preheader1.1.2

.preheader1.1.2:                                  ; preds = %.preheader.2.2176
  br label %.preheader.preheader.1.2

.preheader.preheader.1.2:                         ; preds = %.preheader1.1.2
  br label %.preheader.1162.2

.preheader.1162.2:                                ; preds = %.preheader.preheader.1.2
  br label %.preheader.1.1.2

.preheader.1.1.2:                                 ; preds = %.preheader.1162.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24616), align 4
  br label %.preheader.2.1.2

.preheader.2.1.2:                                 ; preds = %.preheader.1.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24872), align 4
  br i1 false, label %.loopexit166, label %.preheader1.2.2

.preheader1.2.2:                                  ; preds = %.preheader.2.1.2
  br i1 false, label %.preheader.preheader.2, label %360

360:                                              ; preds = %.preheader1.2.2
  unreachable

361:                                              ; preds = %359
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %362 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %362, 0
  br i1 %.not, label %365, label %363

363:                                              ; preds = %361
  %364 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %364, ptr @n, align 4
  br label %366

365:                                              ; preds = %361
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %366

366:                                              ; preds = %365, %363
  %367 = load i32, ptr @n, align 4
  %368 = call i32 @Trial(i32 noundef %367)
  %.not16 = icmp eq i32 %368, 0
  br i1 %.not16, label %369, label %370

369:                                              ; preds = %366
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %373

370:                                              ; preds = %366
  %371 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %371, 2005
  br i1 %.not18, label %373, label %372

372:                                              ; preds = %370
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %373

373:                                              ; preds = %372, %370, %369
  %374 = load i32, ptr @n, align 4
  %375 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %374) #4
  %376 = load i32, ptr @kount, align 4
  %377 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %376) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %0, %1
  %storemerge1 = phi i32 [ 0, %0 ], [ %2, %1 ]
  call void @Puzzle()
  %2 = add nsw i32 %storemerge1, 1
  %3 = icmp slt i32 %2, 100
  br i1 %3, label %1, label %4, !llvm.loop !17

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
