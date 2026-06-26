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
  br label %3

3:                                                ; preds = %17, %2
  %storemerge = phi i32 [ 0, %2 ], [ %18, %17 ]
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %4
  %6 = load i32, ptr %5, align 4
  %.not = icmp sgt i32 %storemerge, %6
  br i1 %.not, label %19, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2048 x i8], ptr @p, i64 %4
  %9 = sext i32 %storemerge to i64
  %10 = getelementptr inbounds [4 x i8], ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not2 = icmp eq i32 %11, 0
  br i1 %.not2, label %17, label %12

12:                                               ; preds = %7
  %13 = add nsw i32 %storemerge, %1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not3 = icmp eq i32 %16, 0
  br i1 %.not3, label %17, label %19

17:                                               ; preds = %12, %7
  %18 = add nsw i32 %storemerge, 1
  br label %3, !llvm.loop !7

19:                                               ; preds = %12, %3
  %storemerge1 = phi i32 [ 0, %12 ], [ 1, %3 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %16, %2
  %storemerge = phi i32 [ 0, %2 ], [ %17, %16 ]
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %4
  %6 = load i32, ptr %5, align 4
  %.not = icmp sgt i32 %storemerge, %6
  br i1 %.not, label %18, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2048 x i8], ptr @p, i64 %4
  %9 = sext i32 %storemerge to i64
  %10 = getelementptr inbounds [4 x i8], ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not4 = icmp eq i32 %11, 0
  br i1 %.not4, label %16, label %12

12:                                               ; preds = %7
  %13 = add nsw i32 %storemerge, %1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 1, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %7
  %17 = add nsw i32 %storemerge, 1
  br label %3, !llvm.loop !9

18:                                               ; preds = %3
  %.lcssa = phi i64 [ %4, %3 ]
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
  br label %26

26:                                               ; preds = %32, %18
  %indvars.iv = phi i64 [ %indvars.iv.next, %32 ], [ %25, %18 ]
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
  br label %3

3:                                                ; preds = %16, %2
  %storemerge = phi i32 [ 0, %2 ], [ %17, %16 ]
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %4
  %6 = load i32, ptr %5, align 4
  %.not = icmp sgt i32 %storemerge, %6
  br i1 %.not, label %18, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2048 x i8], ptr @p, i64 %4
  %9 = sext i32 %storemerge to i64
  %10 = getelementptr inbounds [4 x i8], ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not1 = icmp eq i32 %11, 0
  br i1 %.not1, label %16, label %12

12:                                               ; preds = %7
  %13 = add nsw i32 %storemerge, %1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 0, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %7
  %17 = add nsw i32 %storemerge, 1
  br label %3, !llvm.loop !11

18:                                               ; preds = %3
  %.lcssa = phi i64 [ %4, %3 ]
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

4:                                                ; preds = %20, %1
  %storemerge = phi i32 [ 0, %1 ], [ %21, %20 ]
  %5 = icmp slt i32 %storemerge, 13
  br i1 %5, label %6, label %22

6:                                                ; preds = %4
  %7 = sext i32 %storemerge to i64
  %8 = getelementptr inbounds [4 x i8], ptr @class, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not = icmp eq i32 %12, 0
  br i1 %.not, label %20, label %13

13:                                               ; preds = %6
  %14 = call i32 @Fit(i32 noundef %storemerge, i32 noundef %0)
  %.not2 = icmp eq i32 %14, 0
  br i1 %.not2, label %20, label %15

15:                                               ; preds = %13
  %16 = call i32 @Place(i32 noundef %storemerge, i32 noundef %0)
  %17 = call i32 @Trial(i32 noundef %16)
  %.not3 = icmp ne i32 %17, 0
  %18 = icmp eq i32 %16, 0
  %or.cond = or i1 %18, %.not3
  br i1 %or.cond, label %22, label %19

19:                                               ; preds = %15
  call void @Remove(i32 noundef %storemerge, i32 noundef %0)
  br label %20

20:                                               ; preds = %19, %13, %6
  %21 = add nsw i32 %storemerge, 1
  br label %4, !llvm.loop !12

22:                                               ; preds = %15, %4
  %storemerge1 = phi i32 [ 1, %15 ], [ 0, %4 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

1:                                                ; preds = %11, %0
  %storemerge = phi i32 [ 0, %0 ], [ %14, %11 ]
  br label %2

.preheader31.preheader:                           ; preds = %6
  br label %.preheader31

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

.preheader31:                                     ; preds = %143, %.preheader31.preheader
  %storemerge1 = phi i32 [ %144, %143 ], [ 1, %.preheader31.preheader ]
  %15 = icmp slt i32 %storemerge1, 6
  br i1 %15, label %.preheader30.preheader, label %.preheader28.preheader

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
  %16 = add i32 8, %storemerge1
  %17 = add i32 %16, 64
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %18
  store i32 0, ptr %19, align 4
  br label %.preheader29.2

.preheader29.2:                                   ; preds = %.preheader29.1
  %20 = add i32 8, %storemerge1
  %21 = add i32 %20, 128
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %22
  store i32 0, ptr %23, align 4
  br label %.preheader29.3

.preheader29.3:                                   ; preds = %.preheader29.2
  %24 = add i32 8, %storemerge1
  %25 = add i32 %24, 192
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %26
  store i32 0, ptr %27, align 4
  br label %.preheader29.4

.preheader29.4:                                   ; preds = %.preheader29.3
  %28 = add i32 8, %storemerge1
  %29 = add i32 %28, 256
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %30
  store i32 0, ptr %31, align 4
  br label %.preheader29.5

.preheader29.5:                                   ; preds = %.preheader29.4
  %32 = add i32 8, %storemerge1
  %33 = add i32 %32, 320
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %34
  store i32 0, ptr %35, align 4
  br i1 false, label %.loopexit, label %.preheader30.1

.loopexit:                                        ; preds = %.preheader29.5, %.preheader29.5.1, %.preheader29.5.2, %.preheader29.5.3, %.preheader29.5.4
  %storemerge1.lcssa2.ph = phi i32 [ %storemerge1, %.preheader29.5.4 ], [ %storemerge1, %.preheader29.5.3 ], [ %storemerge1, %.preheader29.5.2 ], [ %storemerge1, %.preheader29.5.1 ], [ %storemerge1, %.preheader29.5 ]
  %storemerge47.lcssa1.ph = phi i32 [ 5, %.preheader29.5.4 ], [ 4, %.preheader29.5.3 ], [ 3, %.preheader29.5.2 ], [ 2, %.preheader29.5.1 ], [ 1, %.preheader29.5 ]
  br label %36

36:                                               ; preds = %.loopexit, %.preheader29.5.5
  %storemerge1.lcssa2 = phi i32 [ %storemerge1.lcssa9, %.preheader29.5.5 ], [ %storemerge1.lcssa2.ph, %.loopexit ]
  %storemerge47.lcssa1 = phi i32 [ 6, %.preheader29.5.5 ], [ %storemerge47.lcssa1.ph, %.loopexit ]
  %37 = mul i32 %storemerge47.lcssa1, 8
  %38 = add i32 %37, %storemerge1.lcssa2
  %39 = add i32 %38, 384
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %40
  store i32 0, ptr %41, align 4
  unreachable

.preheader30.1:                                   ; preds = %.preheader29.5
  br label %.preheader29.preheader.1

.preheader29.preheader.1:                         ; preds = %.preheader30.1
  br label %.preheader29.13

.preheader29.13:                                  ; preds = %.preheader29.preheader.1
  br label %.preheader29.1.1

.preheader29.1.1:                                 ; preds = %.preheader29.13
  %42 = add i32 16, %storemerge1
  %43 = add i32 %42, 64
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %44
  store i32 0, ptr %45, align 4
  br label %.preheader29.2.1

.preheader29.2.1:                                 ; preds = %.preheader29.1.1
  %46 = add i32 16, %storemerge1
  %47 = add i32 %46, 128
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %48
  store i32 0, ptr %49, align 4
  br label %.preheader29.3.1

.preheader29.3.1:                                 ; preds = %.preheader29.2.1
  %50 = add i32 16, %storemerge1
  %51 = add i32 %50, 192
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %52
  store i32 0, ptr %53, align 4
  br label %.preheader29.4.1

.preheader29.4.1:                                 ; preds = %.preheader29.3.1
  %54 = add i32 16, %storemerge1
  %55 = add i32 %54, 256
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %56
  store i32 0, ptr %57, align 4
  br label %.preheader29.5.1

.preheader29.5.1:                                 ; preds = %.preheader29.4.1
  %58 = add i32 16, %storemerge1
  %59 = add i32 %58, 320
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %60
  store i32 0, ptr %61, align 4
  br i1 false, label %.loopexit, label %.preheader30.2

.preheader30.2:                                   ; preds = %.preheader29.5.1
  br label %.preheader29.preheader.2

.preheader29.preheader.2:                         ; preds = %.preheader30.2
  br label %.preheader29.24

.preheader29.24:                                  ; preds = %.preheader29.preheader.2
  br label %.preheader29.1.2

.preheader29.1.2:                                 ; preds = %.preheader29.24
  %62 = add i32 24, %storemerge1
  %63 = add i32 %62, 64
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %64
  store i32 0, ptr %65, align 4
  br label %.preheader29.2.2

.preheader29.2.2:                                 ; preds = %.preheader29.1.2
  %66 = add i32 24, %storemerge1
  %67 = add i32 %66, 128
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %68
  store i32 0, ptr %69, align 4
  br label %.preheader29.3.2

.preheader29.3.2:                                 ; preds = %.preheader29.2.2
  %70 = add i32 24, %storemerge1
  %71 = add i32 %70, 192
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %72
  store i32 0, ptr %73, align 4
  br label %.preheader29.4.2

.preheader29.4.2:                                 ; preds = %.preheader29.3.2
  %74 = add i32 24, %storemerge1
  %75 = add i32 %74, 256
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %76
  store i32 0, ptr %77, align 4
  br label %.preheader29.5.2

.preheader29.5.2:                                 ; preds = %.preheader29.4.2
  %78 = add i32 24, %storemerge1
  %79 = add i32 %78, 320
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %80
  store i32 0, ptr %81, align 4
  br i1 false, label %.loopexit, label %.preheader30.3

.preheader30.3:                                   ; preds = %.preheader29.5.2
  br label %.preheader29.preheader.3

.preheader29.preheader.3:                         ; preds = %.preheader30.3
  br label %.preheader29.35

.preheader29.35:                                  ; preds = %.preheader29.preheader.3
  br label %.preheader29.1.3

.preheader29.1.3:                                 ; preds = %.preheader29.35
  %82 = add i32 32, %storemerge1
  %83 = add i32 %82, 64
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %84
  store i32 0, ptr %85, align 4
  br label %.preheader29.2.3

.preheader29.2.3:                                 ; preds = %.preheader29.1.3
  %86 = add i32 32, %storemerge1
  %87 = add i32 %86, 128
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %88
  store i32 0, ptr %89, align 4
  br label %.preheader29.3.3

.preheader29.3.3:                                 ; preds = %.preheader29.2.3
  %90 = add i32 32, %storemerge1
  %91 = add i32 %90, 192
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %92
  store i32 0, ptr %93, align 4
  br label %.preheader29.4.3

.preheader29.4.3:                                 ; preds = %.preheader29.3.3
  %94 = add i32 32, %storemerge1
  %95 = add i32 %94, 256
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %96
  store i32 0, ptr %97, align 4
  br label %.preheader29.5.3

.preheader29.5.3:                                 ; preds = %.preheader29.4.3
  %98 = add i32 32, %storemerge1
  %99 = add i32 %98, 320
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %100
  store i32 0, ptr %101, align 4
  br i1 false, label %.loopexit, label %.preheader30.4

.preheader30.4:                                   ; preds = %.preheader29.5.3
  br label %.preheader29.preheader.4

.preheader29.preheader.4:                         ; preds = %.preheader30.4
  br label %.preheader29.46

.preheader29.46:                                  ; preds = %.preheader29.preheader.4
  br label %.preheader29.1.4

.preheader29.1.4:                                 ; preds = %.preheader29.46
  %102 = add i32 40, %storemerge1
  %103 = add i32 %102, 64
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %104
  store i32 0, ptr %105, align 4
  br label %.preheader29.2.4

.preheader29.2.4:                                 ; preds = %.preheader29.1.4
  %106 = add i32 40, %storemerge1
  %107 = add i32 %106, 128
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %108
  store i32 0, ptr %109, align 4
  br label %.preheader29.3.4

.preheader29.3.4:                                 ; preds = %.preheader29.2.4
  %110 = add i32 40, %storemerge1
  %111 = add i32 %110, 192
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %112
  store i32 0, ptr %113, align 4
  br label %.preheader29.4.4

.preheader29.4.4:                                 ; preds = %.preheader29.3.4
  %114 = add i32 40, %storemerge1
  %115 = add i32 %114, 256
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %116
  store i32 0, ptr %117, align 4
  br label %.preheader29.5.4

.preheader29.5.4:                                 ; preds = %.preheader29.4.4
  %118 = add i32 40, %storemerge1
  %119 = add i32 %118, 320
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %120
  store i32 0, ptr %121, align 4
  br i1 false, label %.loopexit, label %.preheader30.5

.preheader30.5:                                   ; preds = %.preheader29.5.4
  br i1 false, label %.preheader29.preheader.5, label %143

.preheader29.preheader.5:                         ; preds = %.preheader30.5
  %storemerge1.lcssa9 = phi i32 [ %storemerge1, %.preheader30.5 ]
  br label %.preheader29.57

.preheader29.57:                                  ; preds = %.preheader29.preheader.5
  br label %.preheader29.1.5

.preheader29.1.5:                                 ; preds = %.preheader29.57
  %122 = add i32 48, %storemerge1.lcssa9
  %123 = add i32 %122, 64
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %124
  store i32 0, ptr %125, align 4
  br label %.preheader29.2.5

.preheader29.2.5:                                 ; preds = %.preheader29.1.5
  %126 = add i32 48, %storemerge1.lcssa9
  %127 = add i32 %126, 128
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %128
  store i32 0, ptr %129, align 4
  br label %.preheader29.3.5

.preheader29.3.5:                                 ; preds = %.preheader29.2.5
  %130 = add i32 48, %storemerge1.lcssa9
  %131 = add i32 %130, 192
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %132
  store i32 0, ptr %133, align 4
  br label %.preheader29.4.5

.preheader29.4.5:                                 ; preds = %.preheader29.3.5
  %134 = add i32 48, %storemerge1.lcssa9
  %135 = add i32 %134, 256
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %136
  store i32 0, ptr %137, align 4
  br label %.preheader29.5.5

.preheader29.5.5:                                 ; preds = %.preheader29.4.5
  %138 = add i32 48, %storemerge1.lcssa9
  %139 = add i32 %138, 320
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %140
  store i32 0, ptr %141, align 4
  br i1 false, label %36, label %142

142:                                              ; preds = %.preheader29.5.5
  unreachable

143:                                              ; preds = %.preheader30.5
  %144 = add nsw i32 %storemerge1, 1
  br label %.preheader31, !llvm.loop !14

.preheader28:                                     ; preds = %163, %.preheader28.preheader
  %storemerge2 = phi i32 [ %164, %163 ], [ 0, %.preheader28.preheader ]
  %145 = icmp slt i32 %storemerge2, 13
  br i1 %145, label %.preheader27.preheader, label %.preheader26.preheader

.preheader27.preheader:                           ; preds = %.preheader28
  %146 = sext i32 %storemerge2 to i64
  %147 = getelementptr inbounds [2048 x i8], ptr @p, i64 %146
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  br label %.preheader26

.preheader27:                                     ; preds = %157, %.preheader27.preheader
  %storemerge46 = phi i32 [ 0, %.preheader27.preheader ], [ %162, %157 ]
  br label %.preheader27.1

.preheader27.1:                                   ; preds = %.preheader27
  %148 = sext i32 %storemerge2 to i64
  %149 = getelementptr inbounds [2048 x i8], ptr @p, i64 %148
  %150 = sext i32 %storemerge46 to i64
  %151 = getelementptr inbounds [4 x i8], ptr %149, i64 %150
  store i32 0, ptr %151, align 4
  %152 = add nuw nsw i32 %storemerge46, 1
  br label %.preheader27.2

.preheader27.2:                                   ; preds = %.preheader27.1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [4 x i8], ptr %147, i64 %153
  store i32 0, ptr %154, align 4
  %155 = add nuw nsw i32 %storemerge46, 2
  %156 = icmp samesign ult i32 %155, 512
  br i1 %156, label %157, label %163

157:                                              ; preds = %.preheader27.2
  %158 = sext i32 %storemerge2 to i64
  %159 = getelementptr inbounds [2048 x i8], ptr @p, i64 %158
  %160 = sext i32 %155 to i64
  %161 = getelementptr inbounds [4 x i8], ptr %159, i64 %160
  store i32 0, ptr %161, align 4
  %162 = add nuw nsw i32 %storemerge46, 3
  br label %.preheader27, !llvm.loop !15

163:                                              ; preds = %.preheader27.2
  %164 = add nsw i32 %storemerge2, 1
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
  br i1 false, label %.loopexit15, label %.preheader25.1

.loopexit15:                                      ; preds = %.preheader24.1.1.4, %.preheader24.1.4, %.preheader24.1.1.3, %.preheader24.1.3, %.preheader24.1.1.2, %.preheader24.1.223, %.preheader24.1.1.1, %.preheader24.1.119, %.preheader24.1, %.preheader24.1.1
  %storemerge3.lcssa11.ph = phi i32 [ 0, %.preheader24.1.1 ], [ 0, %.preheader24.1 ], [ 1, %.preheader24.1.119 ], [ 1, %.preheader24.1.1.1 ], [ 2, %.preheader24.1.223 ], [ 2, %.preheader24.1.1.2 ], [ 3, %.preheader24.1.3 ], [ 3, %.preheader24.1.1.3 ], [ 4, %.preheader24.1.4 ], [ 4, %.preheader24.1.1.4 ]
  %storemerge44.lcssa10.ph = phi i32 [ 1, %.preheader24.1.1 ], [ 0, %.preheader24.1 ], [ 0, %.preheader24.1.119 ], [ 1, %.preheader24.1.1.1 ], [ 0, %.preheader24.1.223 ], [ 1, %.preheader24.1.1.2 ], [ 0, %.preheader24.1.3 ], [ 1, %.preheader24.1.1.3 ], [ 0, %.preheader24.1.4 ], [ 1, %.preheader24.1.1.4 ]
  br label %165

165:                                              ; preds = %.loopexit15, %.preheader24.1.2
  %storemerge3.lcssa11 = phi i32 [ %storemerge3.lcssa14, %.preheader24.1.2 ], [ %storemerge3.lcssa11.ph, %.loopexit15 ]
  %storemerge44.lcssa10 = phi i32 [ 2, %.preheader24.1.2 ], [ %storemerge44.lcssa10.ph, %.loopexit15 ]
  %166 = mul i32 %storemerge44.lcssa10, 8
  %167 = add i32 %166, %storemerge3.lcssa11
  %168 = add i32 %167, 64
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [4 x i8], ptr @p, i64 %169
  store i32 1, ptr %170, align 4
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
  %171 = add i32 16, %storemerge3.lcssa14
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [4 x i8], ptr @p, i64 %172
  store i32 1, ptr %173, align 4
  br i1 false, label %165, label %174

174:                                              ; preds = %.preheader24.1.2
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
  br i1 false, label %.preheader25.preheader.4, label %176

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
  br i1 false, label %.preheader24.preheader.2, label %175

175:                                              ; preds = %.preheader25.2.4
  unreachable

176:                                              ; preds = %.preheader26.4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %177

177:                                              ; preds = %176
  br label %.preheader23.preheader

.preheader23.preheader:                           ; preds = %177
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
  br label %178

178:                                              ; preds = %.loopexit29, %.preheader22.4.1
  %storemerge4.lcssa25 = phi i32 [ %storemerge4.lcssa27, %.preheader22.4.1 ], [ %storemerge4.lcssa25.ph, %.loopexit29 ]
  %storemerge42.lcssa24 = phi i32 [ 1, %.preheader22.4.1 ], [ %storemerge42.lcssa24.ph, %.loopexit29 ]
  %179 = mul i32 %storemerge42.lcssa24, 8
  %180 = add i32 %179, %storemerge4.lcssa25
  %181 = add i32 %180, 256
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %182
  store i32 1, ptr %183, align 4
  unreachable

.preheader23.1:                                   ; preds = %.preheader22.4
  br i1 false, label %.preheader22.preheader.1, label %200

.preheader22.preheader.1:                         ; preds = %.preheader23.1.2, %.preheader23.1.1, %.preheader23.1
  %storemerge4.lcssa27 = phi i32 [ 0, %.preheader23.1 ], [ 1, %.preheader23.1.1 ], [ 2, %.preheader23.1.2 ]
  br label %.preheader22.126

.preheader22.126:                                 ; preds = %.preheader22.preheader.1
  br label %.preheader22.1.1

.preheader22.1.1:                                 ; preds = %.preheader22.126
  %184 = add i32 8, %storemerge4.lcssa27
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %185
  store i32 1, ptr %186, align 4
  br label %.preheader22.2.1

.preheader22.2.1:                                 ; preds = %.preheader22.1.1
  %187 = add i32 8, %storemerge4.lcssa27
  %188 = add i32 %187, 64
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %189
  store i32 1, ptr %190, align 4
  br label %.preheader22.3.1

.preheader22.3.1:                                 ; preds = %.preheader22.2.1
  %191 = add i32 8, %storemerge4.lcssa27
  %192 = add i32 %191, 128
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %193
  store i32 1, ptr %194, align 4
  br label %.preheader22.4.1

.preheader22.4.1:                                 ; preds = %.preheader22.3.1
  %195 = add i32 8, %storemerge4.lcssa27
  %196 = add i32 %195, 192
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %197
  store i32 1, ptr %198, align 4
  br i1 false, label %178, label %199

199:                                              ; preds = %.preheader22.4.1
  unreachable

200:                                              ; preds = %.preheader23.1
  br label %.preheader23.preheader.1

.preheader23.preheader.1:                         ; preds = %200
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
  br i1 false, label %.preheader22.preheader.1, label %201

201:                                              ; preds = %.preheader23.1.1
  br i1 false, label %.preheader23.preheader.2, label %203

.preheader23.preheader.2:                         ; preds = %201
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
  br i1 false, label %.preheader22.preheader.1, label %202

202:                                              ; preds = %.preheader23.1.2
  unreachable

203:                                              ; preds = %201
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %204

204:                                              ; preds = %203
  br label %.preheader21.preheader

.preheader21.preheader:                           ; preds = %204
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
  br label %205

205:                                              ; preds = %.loopexit44, %.preheader20.2.4
  %storemerge5.lcssa39 = phi i32 [ %storemerge5.lcssa43, %.preheader20.2.4 ], [ %storemerge5.lcssa39.ph, %.loopexit44 ]
  %storemerge40.lcssa38 = phi i32 [ 4, %.preheader20.2.4 ], [ %storemerge40.lcssa38.ph, %.loopexit44 ]
  %206 = mul i32 %storemerge40.lcssa38, 8
  %207 = add i32 %206, %storemerge5.lcssa39
  %208 = add i32 %207, 128
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %209
  store i32 1, ptr %210, align 4
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
  br i1 false, label %.preheader20.preheader.4, label %219

.preheader20.preheader.4:                         ; preds = %.preheader21.4.1, %.preheader21.4
  %storemerge5.lcssa43 = phi i32 [ 0, %.preheader21.4 ], [ 1, %.preheader21.4.1 ]
  br label %.preheader20.4

.preheader20.4:                                   ; preds = %.preheader20.preheader.4
  br label %.preheader20.1.4

.preheader20.1.4:                                 ; preds = %.preheader20.4
  %211 = add i32 32, %storemerge5.lcssa43
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %212
  store i32 1, ptr %213, align 4
  br label %.preheader20.2.4

.preheader20.2.4:                                 ; preds = %.preheader20.1.4
  %214 = add i32 32, %storemerge5.lcssa43
  %215 = add i32 %214, 64
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %216
  store i32 1, ptr %217, align 4
  br i1 false, label %205, label %218

218:                                              ; preds = %.preheader20.2.4
  unreachable

219:                                              ; preds = %.preheader21.4
  br i1 false, label %.preheader21.preheader.1, label %221

.preheader21.preheader.1:                         ; preds = %219
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
  br i1 false, label %.preheader20.preheader.4, label %220

220:                                              ; preds = %.preheader21.4.1
  unreachable

221:                                              ; preds = %219
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %222

222:                                              ; preds = %221
  br label %.preheader19.preheader

.preheader19.preheader:                           ; preds = %222
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
  br label %223

223:                                              ; preds = %.loopexit55, %.preheader18.1.4
  %storemerge6.lcssa51 = phi i32 [ %storemerge6.lcssa54, %.preheader18.1.4 ], [ %storemerge6.lcssa51.ph, %.loopexit55 ]
  %storemerge38.lcssa50 = phi i32 [ 4, %.preheader18.1.4 ], [ %storemerge38.lcssa50.ph, %.loopexit55 ]
  %224 = mul i32 %storemerge38.lcssa50, 8
  %225 = add i32 %224, %storemerge6.lcssa51
  %226 = add i32 %225, 64
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %227
  store i32 1, ptr %228, align 4
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
  br i1 false, label %.preheader18.preheader.4, label %233

.preheader18.preheader.4:                         ; preds = %.preheader19.4.2, %.preheader19.4.1, %.preheader19.4
  %storemerge6.lcssa54 = phi i32 [ 0, %.preheader19.4 ], [ 1, %.preheader19.4.1 ], [ 2, %.preheader19.4.2 ]
  br label %.preheader18.4

.preheader18.4:                                   ; preds = %.preheader18.preheader.4
  br label %.preheader18.1.4

.preheader18.1.4:                                 ; preds = %.preheader18.4
  %229 = add i32 32, %storemerge6.lcssa54
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %230
  store i32 1, ptr %231, align 4
  br i1 false, label %223, label %232

232:                                              ; preds = %.preheader18.1.4
  unreachable

233:                                              ; preds = %.preheader19.4
  br label %.preheader19.preheader.1

.preheader19.preheader.1:                         ; preds = %233
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
  br i1 false, label %.preheader18.preheader.4, label %234

234:                                              ; preds = %.preheader19.4.1
  br i1 false, label %.preheader19.preheader.2, label %236

.preheader19.preheader.2:                         ; preds = %234
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
  br i1 false, label %.preheader18.preheader.4, label %235

235:                                              ; preds = %.preheader19.4.2
  unreachable

236:                                              ; preds = %234
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %237

237:                                              ; preds = %236
  br label %.preheader17.preheader

.preheader17.preheader:                           ; preds = %237
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
  br label %238

238:                                              ; preds = %.loopexit69, %.preheader16.2.1
  %storemerge7.lcssa65 = phi i32 [ %storemerge7.lcssa67, %.preheader16.2.1 ], [ %storemerge7.lcssa65.ph, %.loopexit69 ]
  %storemerge36.lcssa64 = phi i32 [ 1, %.preheader16.2.1 ], [ %storemerge36.lcssa64.ph, %.loopexit69 ]
  %239 = mul i32 %storemerge36.lcssa64, 8
  %240 = add i32 %239, %storemerge7.lcssa65
  %241 = add i32 %240, 128
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %242
  store i32 1, ptr %243, align 4
  unreachable

.preheader17.1:                                   ; preds = %.preheader16.2
  br i1 false, label %.preheader16.preheader.1, label %252

.preheader16.preheader.1:                         ; preds = %.preheader17.1.4, %.preheader17.1.3, %.preheader17.1.2, %.preheader17.1.1, %.preheader17.1
  %storemerge7.lcssa67 = phi i32 [ 0, %.preheader17.1 ], [ 1, %.preheader17.1.1 ], [ 2, %.preheader17.1.2 ], [ 3, %.preheader17.1.3 ], [ 4, %.preheader17.1.4 ]
  br label %.preheader16.166

.preheader16.166:                                 ; preds = %.preheader16.preheader.1
  br label %.preheader16.1.1

.preheader16.1.1:                                 ; preds = %.preheader16.166
  %244 = add i32 8, %storemerge7.lcssa67
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %245
  store i32 1, ptr %246, align 4
  br label %.preheader16.2.1

.preheader16.2.1:                                 ; preds = %.preheader16.1.1
  %247 = add i32 8, %storemerge7.lcssa67
  %248 = add i32 %247, 64
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %249
  store i32 1, ptr %250, align 4
  br i1 false, label %238, label %251

251:                                              ; preds = %.preheader16.2.1
  unreachable

252:                                              ; preds = %.preheader17.1
  br label %.preheader17.preheader.1

.preheader17.preheader.1:                         ; preds = %252
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
  br i1 false, label %.preheader16.preheader.1, label %253

253:                                              ; preds = %.preheader17.1.1
  br label %.preheader17.preheader.2

.preheader17.preheader.2:                         ; preds = %253
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
  br i1 false, label %.preheader16.preheader.1, label %254

254:                                              ; preds = %.preheader17.1.2
  br label %.preheader17.preheader.3

.preheader17.preheader.3:                         ; preds = %254
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
  br i1 false, label %.preheader16.preheader.1, label %255

255:                                              ; preds = %.preheader17.1.3
  br i1 false, label %.preheader17.preheader.4, label %257

.preheader17.preheader.4:                         ; preds = %255
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
  br i1 false, label %.preheader16.preheader.1, label %256

256:                                              ; preds = %.preheader17.1.4
  unreachable

257:                                              ; preds = %255
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %258

258:                                              ; preds = %257
  br label %.preheader15.preheader

.preheader15.preheader:                           ; preds = %258
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
  br label %259

259:                                              ; preds = %.loopexit82, %.preheader14.4.2
  %storemerge8.lcssa77 = phi i32 [ %storemerge8.lcssa81, %.preheader14.4.2 ], [ %storemerge8.lcssa77.ph, %.loopexit82 ]
  %storemerge34.lcssa76 = phi i32 [ 2, %.preheader14.4.2 ], [ %storemerge34.lcssa76.ph, %.loopexit82 ]
  %260 = mul i32 %storemerge34.lcssa76, 8
  %261 = add i32 %260, %storemerge8.lcssa77
  %262 = add i32 %261, 256
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %263
  store i32 1, ptr %264, align 4
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
  br i1 false, label %.preheader14.preheader.2, label %281

.preheader14.preheader.2:                         ; preds = %.preheader15.2.1, %.preheader15.2
  %storemerge8.lcssa81 = phi i32 [ 0, %.preheader15.2 ], [ 1, %.preheader15.2.1 ]
  br label %.preheader14.279

.preheader14.279:                                 ; preds = %.preheader14.preheader.2
  br label %.preheader14.1.2

.preheader14.1.2:                                 ; preds = %.preheader14.279
  %265 = add i32 16, %storemerge8.lcssa81
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %266
  store i32 1, ptr %267, align 4
  br label %.preheader14.2.2

.preheader14.2.2:                                 ; preds = %.preheader14.1.2
  %268 = add i32 16, %storemerge8.lcssa81
  %269 = add i32 %268, 64
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %270
  store i32 1, ptr %271, align 4
  br label %.preheader14.3.2

.preheader14.3.2:                                 ; preds = %.preheader14.2.2
  %272 = add i32 16, %storemerge8.lcssa81
  %273 = add i32 %272, 128
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %274
  store i32 1, ptr %275, align 4
  br label %.preheader14.4.2

.preheader14.4.2:                                 ; preds = %.preheader14.3.2
  %276 = add i32 16, %storemerge8.lcssa81
  %277 = add i32 %276, 192
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %278
  store i32 1, ptr %279, align 4
  br i1 false, label %259, label %280

280:                                              ; preds = %.preheader14.4.2
  unreachable

281:                                              ; preds = %.preheader15.2
  br i1 false, label %.preheader15.preheader.1, label %283

.preheader15.preheader.1:                         ; preds = %281
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
  br i1 false, label %.preheader14.preheader.2, label %282

282:                                              ; preds = %.preheader15.2.1
  unreachable

283:                                              ; preds = %281
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %284

284:                                              ; preds = %283
  br label %.preheader13.preheader

.preheader13.preheader:                           ; preds = %284
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
  br label %285

285:                                              ; preds = %.loopexit95, %.preheader12.1.1
  %storemerge9.lcssa91 = phi i32 [ %storemerge9.lcssa93, %.preheader12.1.1 ], [ %storemerge9.lcssa91.ph, %.loopexit95 ]
  %storemerge32.lcssa90 = phi i32 [ 1, %.preheader12.1.1 ], [ %storemerge32.lcssa90.ph, %.loopexit95 ]
  %286 = mul i32 %storemerge32.lcssa90, 8
  %287 = add i32 %286, %storemerge9.lcssa91
  %288 = add i32 %287, 64
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %289
  store i32 1, ptr %290, align 4
  unreachable

.preheader13.1:                                   ; preds = %.preheader12.1
  br i1 false, label %.preheader12.preheader.1, label %295

.preheader12.preheader.1:                         ; preds = %.preheader13.1.3, %.preheader13.1.2, %.preheader13.1.1, %.preheader13.1
  %storemerge9.lcssa93 = phi i32 [ 0, %.preheader13.1 ], [ 1, %.preheader13.1.1 ], [ 2, %.preheader13.1.2 ], [ 3, %.preheader13.1.3 ]
  br label %.preheader12.192

.preheader12.192:                                 ; preds = %.preheader12.preheader.1
  br label %.preheader12.1.1

.preheader12.1.1:                                 ; preds = %.preheader12.192
  %291 = add i32 8, %storemerge9.lcssa93
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %292
  store i32 1, ptr %293, align 4
  br i1 false, label %285, label %294

294:                                              ; preds = %.preheader12.1.1
  unreachable

295:                                              ; preds = %.preheader13.1
  br label %.preheader13.preheader.1

.preheader13.preheader.1:                         ; preds = %295
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
  br i1 false, label %.preheader12.preheader.1, label %296

296:                                              ; preds = %.preheader13.1.1
  br label %.preheader13.preheader.2

.preheader13.preheader.2:                         ; preds = %296
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
  br i1 false, label %.preheader12.preheader.1, label %297

297:                                              ; preds = %.preheader13.1.2
  br i1 false, label %.preheader13.preheader.3, label %299

.preheader13.preheader.3:                         ; preds = %297
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
  br i1 false, label %.preheader12.preheader.1, label %298

298:                                              ; preds = %.preheader13.1.3
  unreachable

299:                                              ; preds = %297
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %300

300:                                              ; preds = %299
  br label %.preheader11.preheader

.preheader11.preheader:                           ; preds = %300
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
  br label %301

301:                                              ; preds = %.loopexit105, %.preheader10.1.3
  %storemerge10.lcssa101 = phi i32 [ %storemerge10.lcssa104, %.preheader10.1.3 ], [ %storemerge10.lcssa101.ph, %.loopexit105 ]
  %storemerge30.lcssa100 = phi i32 [ 3, %.preheader10.1.3 ], [ %storemerge30.lcssa100.ph, %.loopexit105 ]
  %302 = mul i32 %storemerge30.lcssa100, 8
  %303 = add i32 %302, %storemerge10.lcssa101
  %304 = add i32 %303, 64
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %305
  store i32 1, ptr %306, align 4
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
  br i1 false, label %.preheader10.preheader.3, label %311

.preheader10.preheader.3:                         ; preds = %.preheader11.3.1, %.preheader11.3
  %storemerge10.lcssa104 = phi i32 [ 0, %.preheader11.3 ], [ 1, %.preheader11.3.1 ]
  br label %.preheader10.3

.preheader10.3:                                   ; preds = %.preheader10.preheader.3
  br label %.preheader10.1.3

.preheader10.1.3:                                 ; preds = %.preheader10.3
  %307 = add i32 24, %storemerge10.lcssa104
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %308
  store i32 1, ptr %309, align 4
  br i1 false, label %301, label %310

310:                                              ; preds = %.preheader10.1.3
  unreachable

311:                                              ; preds = %.preheader11.3
  br i1 false, label %.preheader11.preheader.1, label %313

.preheader11.preheader.1:                         ; preds = %311
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
  br i1 false, label %.preheader10.preheader.3, label %312

312:                                              ; preds = %.preheader11.3.1
  unreachable

313:                                              ; preds = %311
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %314

314:                                              ; preds = %313
  br label %.preheader9.preheader

.preheader9.preheader:                            ; preds = %314
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
  br label %315

315:                                              ; preds = %.loopexit115, %.preheader8.3.1
  %storemerge11.lcssa111 = phi i32 [ %storemerge11.lcssa113, %.preheader8.3.1 ], [ %storemerge11.lcssa111.ph, %.loopexit115 ]
  %storemerge28.lcssa110 = phi i32 [ 1, %.preheader8.3.1 ], [ %storemerge28.lcssa110.ph, %.loopexit115 ]
  %316 = mul i32 %storemerge28.lcssa110, 8
  %317 = add i32 %316, %storemerge11.lcssa111
  %318 = add i32 %317, 192
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %319
  store i32 1, ptr %320, align 4
  unreachable

.preheader9.1:                                    ; preds = %.preheader8.3
  br i1 false, label %.preheader8.preheader.1, label %333

.preheader8.preheader.1:                          ; preds = %.preheader9.1.1, %.preheader9.1
  %storemerge11.lcssa113 = phi i32 [ 0, %.preheader9.1 ], [ 1, %.preheader9.1.1 ]
  br label %.preheader8.1112

.preheader8.1112:                                 ; preds = %.preheader8.preheader.1
  br label %.preheader8.1.1

.preheader8.1.1:                                  ; preds = %.preheader8.1112
  %321 = add i32 8, %storemerge11.lcssa113
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %322
  store i32 1, ptr %323, align 4
  br label %.preheader8.2.1

.preheader8.2.1:                                  ; preds = %.preheader8.1.1
  %324 = add i32 8, %storemerge11.lcssa113
  %325 = add i32 %324, 64
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %326
  store i32 1, ptr %327, align 4
  br label %.preheader8.3.1

.preheader8.3.1:                                  ; preds = %.preheader8.2.1
  %328 = add i32 8, %storemerge11.lcssa113
  %329 = add i32 %328, 128
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %330
  store i32 1, ptr %331, align 4
  br i1 false, label %315, label %332

332:                                              ; preds = %.preheader8.3.1
  unreachable

333:                                              ; preds = %.preheader9.1
  br i1 false, label %.preheader9.preheader.1, label %335

.preheader9.preheader.1:                          ; preds = %333
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
  br i1 false, label %.preheader8.preheader.1, label %334

334:                                              ; preds = %.preheader9.1.1
  unreachable

335:                                              ; preds = %333
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %336

336:                                              ; preds = %335
  br label %.preheader7.preheader

.preheader7.preheader:                            ; preds = %336
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
  br label %337

337:                                              ; preds = %.loopexit127, %.preheader6.1.2
  %storemerge12.lcssa123 = phi i32 [ %storemerge12.lcssa126, %.preheader6.1.2 ], [ %storemerge12.lcssa123.ph, %.loopexit127 ]
  %storemerge26.lcssa122 = phi i32 [ 2, %.preheader6.1.2 ], [ %storemerge26.lcssa122.ph, %.loopexit127 ]
  %338 = mul i32 %storemerge26.lcssa122, 8
  %339 = add i32 %338, %storemerge12.lcssa123
  %340 = add i32 %339, 64
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %341
  store i32 1, ptr %342, align 4
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
  br i1 false, label %.preheader6.preheader.2, label %347

.preheader6.preheader.2:                          ; preds = %.preheader7.2.2, %.preheader7.2.1, %.preheader7.2
  %storemerge12.lcssa126 = phi i32 [ 0, %.preheader7.2 ], [ 1, %.preheader7.2.1 ], [ 2, %.preheader7.2.2 ]
  br label %.preheader6.2

.preheader6.2:                                    ; preds = %.preheader6.preheader.2
  br label %.preheader6.1.2

.preheader6.1.2:                                  ; preds = %.preheader6.2
  %343 = add i32 16, %storemerge12.lcssa126
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %344
  store i32 1, ptr %345, align 4
  br i1 false, label %337, label %346

346:                                              ; preds = %.preheader6.1.2
  unreachable

347:                                              ; preds = %.preheader7.2
  br label %.preheader7.preheader.1

.preheader7.preheader.1:                          ; preds = %347
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
  br i1 false, label %.preheader6.preheader.2, label %348

348:                                              ; preds = %.preheader7.2.1
  br i1 false, label %.preheader7.preheader.2, label %350

.preheader7.preheader.2:                          ; preds = %348
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
  br i1 false, label %.preheader6.preheader.2, label %349

349:                                              ; preds = %.preheader7.2.2
  unreachable

350:                                              ; preds = %348
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %351

351:                                              ; preds = %350
  br label %.preheader5.preheader

.preheader5.preheader:                            ; preds = %351
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
  br label %352

352:                                              ; preds = %.loopexit141, %.preheader4.2.1
  %storemerge13.lcssa137 = phi i32 [ %storemerge13.lcssa139, %.preheader4.2.1 ], [ %storemerge13.lcssa137.ph, %.loopexit141 ]
  %storemerge24.lcssa136 = phi i32 [ 1, %.preheader4.2.1 ], [ %storemerge24.lcssa136.ph, %.loopexit141 ]
  %353 = mul i32 %storemerge24.lcssa136, 8
  %354 = add i32 %353, %storemerge13.lcssa137
  %355 = add i32 %354, 128
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %356
  store i32 1, ptr %357, align 4
  unreachable

.preheader5.1:                                    ; preds = %.preheader4.2
  br i1 false, label %.preheader4.preheader.1, label %366

.preheader4.preheader.1:                          ; preds = %.preheader5.1.2, %.preheader5.1.1, %.preheader5.1
  %storemerge13.lcssa139 = phi i32 [ 0, %.preheader5.1 ], [ 1, %.preheader5.1.1 ], [ 2, %.preheader5.1.2 ]
  br label %.preheader4.1138

.preheader4.1138:                                 ; preds = %.preheader4.preheader.1
  br label %.preheader4.1.1

.preheader4.1.1:                                  ; preds = %.preheader4.1138
  %358 = add i32 8, %storemerge13.lcssa139
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %359
  store i32 1, ptr %360, align 4
  br label %.preheader4.2.1

.preheader4.2.1:                                  ; preds = %.preheader4.1.1
  %361 = add i32 8, %storemerge13.lcssa139
  %362 = add i32 %361, 64
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %363
  store i32 1, ptr %364, align 4
  br i1 false, label %352, label %365

365:                                              ; preds = %.preheader4.2.1
  unreachable

366:                                              ; preds = %.preheader5.1
  br label %.preheader5.preheader.1

.preheader5.preheader.1:                          ; preds = %366
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
  br i1 false, label %.preheader4.preheader.1, label %367

367:                                              ; preds = %.preheader5.1.1
  br i1 false, label %.preheader5.preheader.2, label %369

.preheader5.preheader.2:                          ; preds = %367
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
  br i1 false, label %.preheader4.preheader.1, label %368

368:                                              ; preds = %.preheader5.1.2
  unreachable

369:                                              ; preds = %367
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %370

370:                                              ; preds = %369
  br label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %370
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
  br label %371

371:                                              ; preds = %.loopexit154, %.preheader2.2.2
  %storemerge14.lcssa149 = phi i32 [ %storemerge14.lcssa153, %.preheader2.2.2 ], [ %storemerge14.lcssa149.ph, %.loopexit154 ]
  %storemerge22.lcssa148 = phi i32 [ 2, %.preheader2.2.2 ], [ %storemerge22.lcssa148.ph, %.loopexit154 ]
  %372 = mul i32 %storemerge22.lcssa148, 8
  %373 = add i32 %372, %storemerge14.lcssa149
  %374 = add i32 %373, 128
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %375
  store i32 1, ptr %376, align 4
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
  br i1 false, label %.preheader2.preheader.2, label %385

.preheader2.preheader.2:                          ; preds = %.preheader3.2.1, %.preheader3.2
  %storemerge14.lcssa153 = phi i32 [ 0, %.preheader3.2 ], [ 1, %.preheader3.2.1 ]
  br label %.preheader2.2151

.preheader2.2151:                                 ; preds = %.preheader2.preheader.2
  br label %.preheader2.1.2

.preheader2.1.2:                                  ; preds = %.preheader2.2151
  %377 = add i32 16, %storemerge14.lcssa153
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %378
  store i32 1, ptr %379, align 4
  br label %.preheader2.2.2

.preheader2.2.2:                                  ; preds = %.preheader2.1.2
  %380 = add i32 16, %storemerge14.lcssa153
  %381 = add i32 %380, 64
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %382
  store i32 1, ptr %383, align 4
  br i1 false, label %371, label %384

384:                                              ; preds = %.preheader2.2.2
  unreachable

385:                                              ; preds = %.preheader3.2
  br i1 false, label %.preheader3.preheader.1, label %387

.preheader3.preheader.1:                          ; preds = %385
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
  br i1 false, label %.preheader2.preheader.2, label %386

386:                                              ; preds = %.preheader3.2.1
  unreachable

387:                                              ; preds = %385
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %388

388:                                              ; preds = %387
  br label %.preheader1.preheader

.preheader1.preheader:                            ; preds = %388
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
  br label %389

389:                                              ; preds = %.loopexit166, %.preheader.2.2
  %storemerge15.lcssa161 = phi i32 [ %storemerge15.lcssa165, %.preheader.2.2 ], [ %storemerge15.lcssa161.ph, %.loopexit166 ]
  %storemerge20.lcssa160 = phi i32 [ 2, %.preheader.2.2 ], [ %storemerge20.lcssa160.ph, %.loopexit166 ]
  %390 = mul i32 %storemerge20.lcssa160, 8
  %391 = add i32 %390, %storemerge15.lcssa161
  %392 = add i32 %391, 128
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %393
  store i32 1, ptr %394, align 4
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
  br i1 false, label %.preheader.preheader.2, label %403

.preheader.preheader.2:                           ; preds = %.preheader1.2.2, %.preheader1.2.1, %.preheader1.2
  %storemerge15.lcssa165 = phi i32 [ 0, %.preheader1.2 ], [ 1, %.preheader1.2.1 ], [ 2, %.preheader1.2.2 ]
  br label %.preheader.2163

.preheader.2163:                                  ; preds = %.preheader.preheader.2
  br label %.preheader.1.2

.preheader.1.2:                                   ; preds = %.preheader.2163
  %395 = add i32 16, %storemerge15.lcssa165
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %396
  store i32 1, ptr %397, align 4
  br label %.preheader.2.2

.preheader.2.2:                                   ; preds = %.preheader.1.2
  %398 = add i32 16, %storemerge15.lcssa165
  %399 = add i32 %398, 64
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %400
  store i32 1, ptr %401, align 4
  br i1 false, label %389, label %402

402:                                              ; preds = %.preheader.2.2
  unreachable

403:                                              ; preds = %.preheader1.2
  br label %.preheader1.preheader.1

.preheader1.preheader.1:                          ; preds = %403
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
  br i1 false, label %.preheader.preheader.2, label %404

404:                                              ; preds = %.preheader1.2.1
  br i1 false, label %.preheader1.preheader.2, label %406

.preheader1.preheader.2:                          ; preds = %404
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
  br i1 false, label %.preheader.preheader.2, label %405

405:                                              ; preds = %.preheader1.2.2
  unreachable

406:                                              ; preds = %404
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %407 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %407, 0
  br i1 %.not, label %410, label %408

408:                                              ; preds = %406
  %409 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %409, ptr @n, align 4
  br label %411

410:                                              ; preds = %406
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %411

411:                                              ; preds = %410, %408
  %412 = load i32, ptr @n, align 4
  %413 = call i32 @Trial(i32 noundef %412)
  %.not16 = icmp eq i32 %413, 0
  br i1 %.not16, label %414, label %415

414:                                              ; preds = %411
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %418

415:                                              ; preds = %411
  %416 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %416, 2005
  br i1 %.not18, label %418, label %417

417:                                              ; preds = %415
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %418

418:                                              ; preds = %417, %415, %414
  %419 = load i32, ptr @n, align 4
  %420 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %419) #4
  %421 = load i32, ptr @kount, align 4
  %422 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %421) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %3, %0
  %storemerge = phi i32 [ 0, %0 ], [ %4, %3 ]
  %2 = icmp slt i32 %storemerge, 100
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  call void @Puzzle()
  %4 = add nsw i32 %storemerge, 1
  br label %1, !llvm.loop !17

5:                                                ; preds = %1
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
