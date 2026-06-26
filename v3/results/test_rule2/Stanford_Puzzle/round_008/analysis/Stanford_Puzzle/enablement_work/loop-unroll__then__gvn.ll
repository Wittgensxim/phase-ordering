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
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  br label %3

3:                                                ; preds = %14, %2
  %storemerge = phi i32 [ 0, %2 ], [ %15, %14 ]
  %.not = icmp sgt i32 %storemerge, %.pre
  br i1 %.not, label %16, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %6 = sext i32 %storemerge to i64
  %7 = getelementptr inbounds [4 x i8], ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %14, label %9

9:                                                ; preds = %4
  %10 = add nsw i32 %1, %storemerge
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  %13 = load i32, ptr %12, align 4
  %.not3 = icmp eq i32 %13, 0
  br i1 %.not3, label %14, label %16

14:                                               ; preds = %9, %4
  %15 = add nsw i32 %storemerge, 1
  br label %3, !llvm.loop !7

16:                                               ; preds = %9, %3
  %storemerge1 = phi i32 [ 0, %9 ], [ 1, %3 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  br label %3

3:                                                ; preds = %13, %2
  %storemerge = phi i32 [ 0, %2 ], [ %14, %13 ]
  %.not = icmp sgt i32 %storemerge, %.pre
  br i1 %.not, label %15, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %6 = sext i32 %storemerge to i64
  %7 = getelementptr inbounds [4 x i8], ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4
  %.not4 = icmp eq i32 %8, 0
  br i1 %.not4, label %13, label %9

9:                                                ; preds = %4
  %10 = add nsw i32 %1, %storemerge
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  store i32 1, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %4
  %14 = add nsw i32 %storemerge, 1
  br label %3, !llvm.loop !9

15:                                               ; preds = %3
  %16 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %17 = load i32, ptr %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, ptr %19, align 4
  %22 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 512)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %23

23:                                               ; preds = %29, %15
  %indvars.iv = phi i64 [ %indvars.iv.next, %29 ], [ %22, %15 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.loopexit, label %24

24:                                               ; preds = %23
  %25 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %26 = load i32, ptr %25, align 4
  %.not3 = icmp eq i32 %26, 0
  br i1 %.not3, label %27, label %29

27:                                               ; preds = %24
  %28 = trunc nsw i64 %indvars.iv to i32
  br label %.loopexit

29:                                               ; preds = %24
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %23, !llvm.loop !10

.loopexit.loopexit:                               ; preds = %23
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %27
  %storemerge2 = phi i32 [ %28, %27 ], [ 0, %.loopexit.loopexit ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  br label %3

3:                                                ; preds = %13, %2
  %storemerge = phi i32 [ 0, %2 ], [ %14, %13 ]
  %.not = icmp sgt i32 %storemerge, %.pre
  br i1 %.not, label %15, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %6 = sext i32 %storemerge to i64
  %7 = getelementptr inbounds [4 x i8], ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4
  %.not1 = icmp eq i32 %8, 0
  br i1 %.not1, label %13, label %9

9:                                                ; preds = %4
  %10 = add nsw i32 %1, %storemerge
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  store i32 0, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %4
  %14 = add nsw i32 %storemerge, 1
  br label %3, !llvm.loop !11

15:                                               ; preds = %3
  %16 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %17 = load i32, ptr %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %19, align 4
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
  %or.cond = or i1 %.not3, %18
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

1:                                                ; preds = %9, %0
  %storemerge = phi i32 [ 0, %0 ], [ %12, %9 ]
  %2 = sext i32 %storemerge to i64
  %3 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %2
  store i32 1, ptr %3, align 4
  %4 = add nuw nsw i32 %storemerge, 1
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %5
  store i32 1, ptr %6, align 4
  %7 = add nuw nsw i32 %storemerge, 2
  %8 = icmp samesign ult i32 %7, 512
  br i1 %8, label %9, label %.preheader31.preheader

.preheader31.preheader:                           ; preds = %1
  br label %.preheader31

9:                                                ; preds = %1
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %10
  store i32 1, ptr %11, align 4
  %12 = add nuw nsw i32 %storemerge, 3
  br label %1, !llvm.loop !13

.preheader31:                                     ; preds = %111, %.preheader31.preheader
  %storemerge1 = phi i32 [ %112, %111 ], [ 1, %.preheader31.preheader ]
  %13 = icmp slt i32 %storemerge1, 6
  br i1 %13, label %.preheader30.preheader, label %.preheader28.preheader

.preheader30.preheader:                           ; preds = %.preheader31
  %14 = add nsw i32 %storemerge1, 72
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %15
  store i32 0, ptr %16, align 4
  %17 = add nsw i32 %storemerge1, 136
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %18
  store i32 0, ptr %19, align 4
  %20 = add nsw i32 %storemerge1, 200
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %21
  store i32 0, ptr %22, align 4
  %23 = add nsw i32 %storemerge1, 264
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %24
  store i32 0, ptr %25, align 4
  %26 = add nsw i32 %storemerge1, 328
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %27
  store i32 0, ptr %28, align 4
  br i1 false, label %.preheader30.preheader..loopexit_crit_edge, label %.preheader30.1

.preheader30.preheader..loopexit_crit_edge:       ; preds = %.preheader30.preheader
  br label %.loopexit

.preheader28.preheader:                           ; preds = %.preheader31
  br label %.preheader28

.loopexitsplitsplitsplitsplit:                    ; preds = %.preheader30.4
  br label %.loopexitsplitsplitsplit

.loopexitsplitsplitsplit:                         ; preds = %.loopexitsplitsplitsplitsplit, %.preheader30.3..loopexitsplitsplitsplit_crit_edge
  %storemerge47.lcssa1.ph.ph.ph.ph = phi i32 [ poison, %.preheader30.3..loopexitsplitsplitsplit_crit_edge ], [ 5, %.loopexitsplitsplitsplitsplit ]
  br label %.loopexitsplitsplit

.loopexitsplitsplit:                              ; preds = %.loopexitsplitsplitsplit, %.preheader30.2..loopexitsplitsplit_crit_edge
  %storemerge47.lcssa1.ph.ph.ph = phi i32 [ poison, %.preheader30.2..loopexitsplitsplit_crit_edge ], [ %storemerge47.lcssa1.ph.ph.ph.ph, %.loopexitsplitsplitsplit ]
  br label %.loopexitsplit

.loopexitsplit:                                   ; preds = %.loopexitsplitsplit, %.preheader30.1..loopexitsplit_crit_edge
  %storemerge47.lcssa1.ph.ph = phi i32 [ poison, %.preheader30.1..loopexitsplit_crit_edge ], [ %storemerge47.lcssa1.ph.ph.ph, %.loopexitsplitsplit ]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexitsplit, %.preheader30.preheader..loopexit_crit_edge
  %storemerge1.lcssa2.ph = phi i32 [ poison, %.preheader30.preheader..loopexit_crit_edge ], [ %storemerge1, %.loopexitsplit ]
  %storemerge47.lcssa1.ph = phi i32 [ poison, %.preheader30.preheader..loopexit_crit_edge ], [ %storemerge47.lcssa1.ph.ph, %.loopexitsplit ]
  br label %29

29:                                               ; preds = %.loopexit, %.preheader29.preheader.5
  %storemerge1.lcssa2 = phi i32 [ %storemerge1.lcssa9, %.preheader29.preheader.5 ], [ poison, %.loopexit ]
  %storemerge47.lcssa1 = phi i32 [ 6, %.preheader29.preheader.5 ], [ poison, %.loopexit ]
  %30 = shl i32 %storemerge47.lcssa1, 3
  %31 = add i32 384, %30
  %32 = add nsw i32 %storemerge1.lcssa2, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %33
  store i32 0, ptr %34, align 4
  unreachable

.preheader30.1:                                   ; preds = %.preheader30.preheader
  %35 = add nsw i32 %storemerge1, 80
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %36
  store i32 0, ptr %37, align 4
  %38 = add nsw i32 %storemerge1, 144
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %39
  store i32 0, ptr %40, align 4
  %41 = add nsw i32 %storemerge1, 208
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %42
  store i32 0, ptr %43, align 4
  %44 = add nsw i32 %storemerge1, 272
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %45
  store i32 0, ptr %46, align 4
  %47 = add nsw i32 %storemerge1, 336
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %48
  store i32 0, ptr %49, align 4
  br i1 false, label %.preheader30.1..loopexitsplit_crit_edge, label %.preheader30.2

.preheader30.1..loopexitsplit_crit_edge:          ; preds = %.preheader30.1
  br label %.loopexitsplit

.preheader30.2:                                   ; preds = %.preheader30.1
  %50 = add nsw i32 %storemerge1, 88
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %51
  store i32 0, ptr %52, align 4
  %53 = add nsw i32 %storemerge1, 152
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %54
  store i32 0, ptr %55, align 4
  %56 = add nsw i32 %storemerge1, 216
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %57
  store i32 0, ptr %58, align 4
  %59 = add nsw i32 %storemerge1, 280
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %60
  store i32 0, ptr %61, align 4
  %62 = add nsw i32 %storemerge1, 344
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %63
  store i32 0, ptr %64, align 4
  br i1 false, label %.preheader30.2..loopexitsplitsplit_crit_edge, label %.preheader30.3

.preheader30.2..loopexitsplitsplit_crit_edge:     ; preds = %.preheader30.2
  br label %.loopexitsplitsplit

.preheader30.3:                                   ; preds = %.preheader30.2
  %65 = add nsw i32 %storemerge1, 96
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %66
  store i32 0, ptr %67, align 4
  %68 = add nsw i32 %storemerge1, 160
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %69
  store i32 0, ptr %70, align 4
  %71 = add nsw i32 %storemerge1, 224
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %72
  store i32 0, ptr %73, align 4
  %74 = add nsw i32 %storemerge1, 288
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %75
  store i32 0, ptr %76, align 4
  %77 = add nsw i32 %storemerge1, 352
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %78
  store i32 0, ptr %79, align 4
  br i1 false, label %.preheader30.3..loopexitsplitsplitsplit_crit_edge, label %.preheader30.4

.preheader30.3..loopexitsplitsplitsplit_crit_edge: ; preds = %.preheader30.3
  br label %.loopexitsplitsplitsplit

.preheader30.4:                                   ; preds = %.preheader30.3
  %80 = add nsw i32 %storemerge1, 104
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %81
  store i32 0, ptr %82, align 4
  %83 = add nsw i32 %storemerge1, 168
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %84
  store i32 0, ptr %85, align 4
  %86 = add nsw i32 %storemerge1, 232
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %87
  store i32 0, ptr %88, align 4
  %89 = add nsw i32 %storemerge1, 296
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %90
  store i32 0, ptr %91, align 4
  %92 = add nsw i32 %storemerge1, 360
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %93
  store i32 0, ptr %94, align 4
  br i1 false, label %.loopexitsplitsplitsplitsplit, label %.preheader30.5

.preheader30.5:                                   ; preds = %.preheader30.4
  br i1 false, label %.preheader29.preheader.5, label %111

.preheader29.preheader.5:                         ; preds = %.preheader30.5
  %storemerge1.lcssa9 = phi i32 [ %storemerge1, %.preheader30.5 ]
  %95 = add nsw i32 %storemerge1.lcssa9, 112
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %96
  store i32 0, ptr %97, align 4
  %98 = add nsw i32 %storemerge1.lcssa9, 176
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %99
  store i32 0, ptr %100, align 4
  %101 = add nsw i32 %storemerge1.lcssa9, 240
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %102
  store i32 0, ptr %103, align 4
  %104 = add nsw i32 %storemerge1.lcssa9, 304
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %105
  store i32 0, ptr %106, align 4
  %107 = add nsw i32 %storemerge1.lcssa9, 368
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %108
  store i32 0, ptr %109, align 4
  br i1 false, label %29, label %110

110:                                              ; preds = %.preheader29.preheader.5
  unreachable

111:                                              ; preds = %.preheader30.5
  %112 = add nsw i32 %storemerge1, 1
  br label %.preheader31, !llvm.loop !14

.preheader28:                                     ; preds = %127, %.preheader28.preheader
  %storemerge2 = phi i32 [ %128, %127 ], [ 0, %.preheader28.preheader ]
  %113 = icmp slt i32 %storemerge2, 13
  br i1 %113, label %.preheader27.preheader, label %.preheader26.preheader

.preheader27.preheader:                           ; preds = %.preheader28
  %114 = sext i32 %storemerge2 to i64
  %115 = getelementptr inbounds [2048 x i8], ptr @p, i64 %114
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  store i32 1, ptr @p, align 4
  br i1 false, label %.preheader26.preheader..loopexit15_crit_edge, label %.preheader25.1

.preheader26.preheader..loopexit15_crit_edge:     ; preds = %.preheader26.preheader
  br label %.loopexit15

.preheader27:                                     ; preds = %123, %.preheader27.preheader
  %storemerge46 = phi i32 [ 0, %.preheader27.preheader ], [ %126, %123 ]
  %116 = sext i32 %storemerge46 to i64
  %117 = getelementptr inbounds [4 x i8], ptr %115, i64 %116
  store i32 0, ptr %117, align 4
  %118 = add nuw nsw i32 %storemerge46, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [4 x i8], ptr %115, i64 %119
  store i32 0, ptr %120, align 4
  %121 = add nuw nsw i32 %storemerge46, 2
  %122 = icmp samesign ult i32 %121, 512
  br i1 %122, label %123, label %127

123:                                              ; preds = %.preheader27
  %124 = sext i32 %121 to i64
  %125 = getelementptr inbounds [4 x i8], ptr %115, i64 %124
  store i32 0, ptr %125, align 4
  %126 = add nuw nsw i32 %storemerge46, 3
  br label %.preheader27, !llvm.loop !15

127:                                              ; preds = %.preheader27
  %128 = add nsw i32 %storemerge2, 1
  br label %.preheader28, !llvm.loop !16

.loopexit15:                                      ; preds = %.preheader25.1.3..loopexit15_crit_edge, %.preheader26.3..loopexit15_crit_edge, %.preheader25.1.2..loopexit15_crit_edge, %.preheader26.2..loopexit15_crit_edge, %.preheader25.1.1..loopexit15_crit_edge, %.preheader26.1..loopexit15_crit_edge, %.preheader25.1..loopexit15_crit_edge, %.preheader26.preheader..loopexit15_crit_edge, %.preheader25.1.4, %.preheader25.preheader.4
  %storemerge3.lcssa11.ph = phi i32 [ poison, %.preheader25.1..loopexit15_crit_edge ], [ poison, %.preheader26.preheader..loopexit15_crit_edge ], [ poison, %.preheader26.1..loopexit15_crit_edge ], [ poison, %.preheader25.1.1..loopexit15_crit_edge ], [ poison, %.preheader26.2..loopexit15_crit_edge ], [ poison, %.preheader25.1.2..loopexit15_crit_edge ], [ poison, %.preheader26.3..loopexit15_crit_edge ], [ poison, %.preheader25.1.3..loopexit15_crit_edge ], [ 4, %.preheader25.preheader.4 ], [ 4, %.preheader25.1.4 ]
  %storemerge44.lcssa10.ph = phi i32 [ poison, %.preheader25.1..loopexit15_crit_edge ], [ poison, %.preheader26.preheader..loopexit15_crit_edge ], [ poison, %.preheader26.1..loopexit15_crit_edge ], [ poison, %.preheader25.1.1..loopexit15_crit_edge ], [ poison, %.preheader26.2..loopexit15_crit_edge ], [ poison, %.preheader25.1.2..loopexit15_crit_edge ], [ poison, %.preheader26.3..loopexit15_crit_edge ], [ poison, %.preheader25.1.3..loopexit15_crit_edge ], [ 0, %.preheader25.preheader.4 ], [ 1, %.preheader25.1.4 ]
  br label %129

129:                                              ; preds = %.loopexit15, %.preheader24.preheader.2
  %storemerge3.lcssa11 = phi i32 [ %storemerge3.lcssa14, %.preheader24.preheader.2 ], [ %storemerge3.lcssa11.ph, %.loopexit15 ]
  %storemerge44.lcssa10 = phi i32 [ 2, %.preheader24.preheader.2 ], [ %storemerge44.lcssa10.ph, %.loopexit15 ]
  %130 = shl i32 %storemerge44.lcssa10, 3
  %131 = add i32 64, %130
  %132 = add nsw i32 %storemerge3.lcssa11, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [4 x i8], ptr @p, i64 %133
  store i32 1, ptr %134, align 4
  unreachable

.preheader25.1:                                   ; preds = %.preheader26.preheader
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 32), align 4
  br i1 false, label %.preheader25.1..loopexit15_crit_edge, label %.preheader25.2

.preheader25.1..loopexit15_crit_edge:             ; preds = %.preheader25.1
  br label %.loopexit15

.preheader25.2:                                   ; preds = %.preheader25.1
  br i1 false, label %.preheader25.2..preheader24.preheader.2_crit_edge, label %.preheader26.1

.preheader25.2..preheader24.preheader.2_crit_edge: ; preds = %.preheader25.2
  br label %.preheader24.preheader.2

.preheader24.preheader.2:                         ; preds = %.preheader25.2.3..preheader24.preheader.2_crit_edge, %.preheader25.2.2..preheader24.preheader.2_crit_edge, %.preheader25.2.1..preheader24.preheader.2_crit_edge, %.preheader25.2..preheader24.preheader.2_crit_edge, %.preheader25.2.4
  %storemerge3.lcssa14 = phi i32 [ poison, %.preheader25.2..preheader24.preheader.2_crit_edge ], [ poison, %.preheader25.2.1..preheader24.preheader.2_crit_edge ], [ poison, %.preheader25.2.2..preheader24.preheader.2_crit_edge ], [ poison, %.preheader25.2.3..preheader24.preheader.2_crit_edge ], [ 4, %.preheader25.2.4 ]
  %135 = add nsw i32 %storemerge3.lcssa14, 16
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [4 x i8], ptr @p, i64 %136
  store i32 1, ptr %137, align 4
  br i1 false, label %129, label %138

138:                                              ; preds = %.preheader24.preheader.2
  unreachable

.preheader26.1:                                   ; preds = %.preheader25.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4), align 4
  br i1 false, label %.preheader26.1..loopexit15_crit_edge, label %.preheader25.1.1

.preheader26.1..loopexit15_crit_edge:             ; preds = %.preheader26.1
  br label %.loopexit15

.preheader25.1.1:                                 ; preds = %.preheader26.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 36), align 4
  br i1 false, label %.preheader25.1.1..loopexit15_crit_edge, label %.preheader25.2.1

.preheader25.1.1..loopexit15_crit_edge:           ; preds = %.preheader25.1.1
  br label %.loopexit15

.preheader25.2.1:                                 ; preds = %.preheader25.1.1
  br i1 false, label %.preheader25.2.1..preheader24.preheader.2_crit_edge, label %.preheader26.2

.preheader25.2.1..preheader24.preheader.2_crit_edge: ; preds = %.preheader25.2.1
  br label %.preheader24.preheader.2

.preheader26.2:                                   ; preds = %.preheader25.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8), align 4
  br i1 false, label %.preheader26.2..loopexit15_crit_edge, label %.preheader25.1.2

.preheader26.2..loopexit15_crit_edge:             ; preds = %.preheader26.2
  br label %.loopexit15

.preheader25.1.2:                                 ; preds = %.preheader26.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 40), align 4
  br i1 false, label %.preheader25.1.2..loopexit15_crit_edge, label %.preheader25.2.2

.preheader25.1.2..loopexit15_crit_edge:           ; preds = %.preheader25.1.2
  br label %.loopexit15

.preheader25.2.2:                                 ; preds = %.preheader25.1.2
  br i1 false, label %.preheader25.2.2..preheader24.preheader.2_crit_edge, label %.preheader26.3

.preheader25.2.2..preheader24.preheader.2_crit_edge: ; preds = %.preheader25.2.2
  br label %.preheader24.preheader.2

.preheader26.3:                                   ; preds = %.preheader25.2.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12), align 4
  br i1 false, label %.preheader26.3..loopexit15_crit_edge, label %.preheader25.1.3

.preheader26.3..loopexit15_crit_edge:             ; preds = %.preheader26.3
  br label %.loopexit15

.preheader25.1.3:                                 ; preds = %.preheader26.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 44), align 4
  br i1 false, label %.preheader25.1.3..loopexit15_crit_edge, label %.preheader25.2.3

.preheader25.1.3..loopexit15_crit_edge:           ; preds = %.preheader25.1.3
  br label %.loopexit15

.preheader25.2.3:                                 ; preds = %.preheader25.1.3
  br i1 false, label %.preheader25.2.3..preheader24.preheader.2_crit_edge, label %.preheader26.4

.preheader25.2.3..preheader24.preheader.2_crit_edge: ; preds = %.preheader25.2.3
  br label %.preheader24.preheader.2

.preheader26.4:                                   ; preds = %.preheader25.2.3
  br i1 false, label %.preheader25.preheader.4, label %.preheader23.preheader

.preheader25.preheader.4:                         ; preds = %.preheader26.4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16), align 4
  br i1 false, label %.loopexit15, label %.preheader25.1.4

.preheader25.1.4:                                 ; preds = %.preheader25.preheader.4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 48), align 4
  br i1 false, label %.loopexit15, label %.preheader25.2.4

.preheader25.2.4:                                 ; preds = %.preheader25.1.4
  br i1 false, label %.preheader24.preheader.2, label %139

139:                                              ; preds = %.preheader25.2.4
  unreachable

.preheader23.preheader:                           ; preds = %.preheader26.4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2304), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2560), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2816), align 4
  br i1 false, label %.preheader23.preheader..loopexit29_crit_edge, label %.preheader23.1

.preheader23.preheader..loopexit29_crit_edge:     ; preds = %.preheader23.preheader
  br label %.loopexit29

.loopexit29:                                      ; preds = %.preheader23.preheader.1..loopexit29_crit_edge, %.preheader23.preheader..loopexit29_crit_edge, %.preheader23.preheader.2
  %storemerge4.lcssa25.ph = phi i32 [ poison, %.preheader23.preheader..loopexit29_crit_edge ], [ poison, %.preheader23.preheader.1..loopexit29_crit_edge ], [ 2, %.preheader23.preheader.2 ]
  %storemerge42.lcssa24.ph = phi i32 [ poison, %.preheader23.preheader..loopexit29_crit_edge ], [ poison, %.preheader23.preheader.1..loopexit29_crit_edge ], [ 0, %.preheader23.preheader.2 ]
  br label %140

140:                                              ; preds = %.loopexit29, %.preheader22.preheader.1
  %storemerge4.lcssa25 = phi i32 [ %storemerge4.lcssa27, %.preheader22.preheader.1 ], [ %storemerge4.lcssa25.ph, %.loopexit29 ]
  %storemerge42.lcssa24 = phi i32 [ 1, %.preheader22.preheader.1 ], [ %storemerge42.lcssa24.ph, %.loopexit29 ]
  %141 = shl i32 %storemerge42.lcssa24, 3
  %142 = add i32 256, %141
  %143 = add nsw i32 %storemerge4.lcssa25, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %144
  store i32 1, ptr %145, align 4
  unreachable

.preheader23.1:                                   ; preds = %.preheader23.preheader
  br i1 false, label %.preheader23.1..preheader22.preheader.1_crit_edge, label %.preheader23.preheader.1

.preheader23.1..preheader22.preheader.1_crit_edge: ; preds = %.preheader23.1
  br label %.preheader22.preheader.1

.preheader22.preheader.1:                         ; preds = %.preheader23.1.1..preheader22.preheader.1_crit_edge, %.preheader23.1..preheader22.preheader.1_crit_edge, %.preheader23.1.2
  %storemerge4.lcssa27 = phi i32 [ poison, %.preheader23.1..preheader22.preheader.1_crit_edge ], [ poison, %.preheader23.1.1..preheader22.preheader.1_crit_edge ], [ 2, %.preheader23.1.2 ]
  %146 = add nsw i32 %storemerge4.lcssa27, 8
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %147
  store i32 1, ptr %148, align 4
  %149 = add nsw i32 %storemerge4.lcssa27, 72
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %150
  store i32 1, ptr %151, align 4
  %152 = add nsw i32 %storemerge4.lcssa27, 136
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %153
  store i32 1, ptr %154, align 4
  %155 = add nsw i32 %storemerge4.lcssa27, 200
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %156
  store i32 1, ptr %157, align 4
  br i1 false, label %140, label %158

158:                                              ; preds = %.preheader22.preheader.1
  unreachable

.preheader23.preheader.1:                         ; preds = %.preheader23.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2052), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2308), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2564), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2820), align 4
  br i1 false, label %.preheader23.preheader.1..loopexit29_crit_edge, label %.preheader23.1.1

.preheader23.preheader.1..loopexit29_crit_edge:   ; preds = %.preheader23.preheader.1
  br label %.loopexit29

.preheader23.1.1:                                 ; preds = %.preheader23.preheader.1
  br i1 false, label %.preheader23.1.1..preheader22.preheader.1_crit_edge, label %159

.preheader23.1.1..preheader22.preheader.1_crit_edge: ; preds = %.preheader23.1.1
  br label %.preheader22.preheader.1

159:                                              ; preds = %.preheader23.1.1
  br i1 false, label %.preheader23.preheader.2, label %.preheader21.preheader

.preheader23.preheader.2:                         ; preds = %159
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2056), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2312), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2568), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2824), align 4
  br i1 false, label %.loopexit29, label %.preheader23.1.2

.preheader23.1.2:                                 ; preds = %.preheader23.preheader.2
  br i1 false, label %.preheader22.preheader.1, label %160

160:                                              ; preds = %.preheader23.1.2
  unreachable

.preheader21.preheader:                           ; preds = %159
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  br i1 false, label %.preheader21.preheader..loopexit44_crit_edge, label %.preheader21.1

.preheader21.preheader..loopexit44_crit_edge:     ; preds = %.preheader21.preheader
  br label %.loopexit44

.loopexit44:                                      ; preds = %.preheader21.3..loopexit44_crit_edge, %.preheader21.2..loopexit44_crit_edge, %.preheader21.1..loopexit44_crit_edge, %.preheader21.preheader..loopexit44_crit_edge, %.preheader21.3.1, %.preheader21.2.1, %.preheader21.1.1, %.preheader21.preheader.1
  %storemerge5.lcssa39.ph = phi i32 [ poison, %.preheader21.3..loopexit44_crit_edge ], [ poison, %.preheader21.2..loopexit44_crit_edge ], [ poison, %.preheader21.1..loopexit44_crit_edge ], [ poison, %.preheader21.preheader..loopexit44_crit_edge ], [ 1, %.preheader21.preheader.1 ], [ 1, %.preheader21.1.1 ], [ 1, %.preheader21.2.1 ], [ 1, %.preheader21.3.1 ]
  %storemerge40.lcssa38.ph = phi i32 [ poison, %.preheader21.3..loopexit44_crit_edge ], [ poison, %.preheader21.2..loopexit44_crit_edge ], [ poison, %.preheader21.1..loopexit44_crit_edge ], [ poison, %.preheader21.preheader..loopexit44_crit_edge ], [ 0, %.preheader21.preheader.1 ], [ 1, %.preheader21.1.1 ], [ 2, %.preheader21.2.1 ], [ 3, %.preheader21.3.1 ]
  br label %161

161:                                              ; preds = %.loopexit44, %.preheader20.preheader.4
  %storemerge5.lcssa39 = phi i32 [ %storemerge5.lcssa43, %.preheader20.preheader.4 ], [ %storemerge5.lcssa39.ph, %.loopexit44 ]
  %storemerge40.lcssa38 = phi i32 [ 4, %.preheader20.preheader.4 ], [ %storemerge40.lcssa38.ph, %.loopexit44 ]
  %162 = shl i32 %storemerge40.lcssa38, 3
  %163 = add i32 128, %162
  %164 = add nsw i32 %storemerge5.lcssa39, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %165
  store i32 1, ptr %166, align 4
  unreachable

.preheader21.1:                                   ; preds = %.preheader21.preheader
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br i1 false, label %.preheader21.1..loopexit44_crit_edge, label %.preheader21.2

.preheader21.1..loopexit44_crit_edge:             ; preds = %.preheader21.1
  br label %.loopexit44

.preheader21.2:                                   ; preds = %.preheader21.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br i1 false, label %.preheader21.2..loopexit44_crit_edge, label %.preheader21.3

.preheader21.2..loopexit44_crit_edge:             ; preds = %.preheader21.2
  br label %.loopexit44

.preheader21.3:                                   ; preds = %.preheader21.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4192), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4448), align 4
  br i1 false, label %.preheader21.3..loopexit44_crit_edge, label %.preheader21.4

.preheader21.3..loopexit44_crit_edge:             ; preds = %.preheader21.3
  br label %.loopexit44

.preheader21.4:                                   ; preds = %.preheader21.3
  br i1 false, label %.preheader21.4..preheader20.preheader.4_crit_edge, label %174

.preheader21.4..preheader20.preheader.4_crit_edge: ; preds = %.preheader21.4
  br label %.preheader20.preheader.4

.preheader20.preheader.4:                         ; preds = %.preheader21.4..preheader20.preheader.4_crit_edge, %.preheader21.4.1
  %storemerge5.lcssa43 = phi i32 [ poison, %.preheader21.4..preheader20.preheader.4_crit_edge ], [ 1, %.preheader21.4.1 ]
  %167 = add nsw i32 %storemerge5.lcssa43, 32
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %168
  store i32 1, ptr %169, align 4
  %170 = add nsw i32 %storemerge5.lcssa43, 96
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %171
  store i32 1, ptr %172, align 4
  br i1 false, label %161, label %173

173:                                              ; preds = %.preheader20.preheader.4
  unreachable

174:                                              ; preds = %.preheader21.4
  br i1 false, label %.preheader21.preheader.1, label %.preheader19.preheader

.preheader21.preheader.1:                         ; preds = %174
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4100), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4356), align 4
  br i1 false, label %.loopexit44, label %.preheader21.1.1

.preheader21.1.1:                                 ; preds = %.preheader21.preheader.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4132), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4388), align 4
  br i1 false, label %.loopexit44, label %.preheader21.2.1

.preheader21.2.1:                                 ; preds = %.preheader21.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4164), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4420), align 4
  br i1 false, label %.loopexit44, label %.preheader21.3.1

.preheader21.3.1:                                 ; preds = %.preheader21.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4196), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4452), align 4
  br i1 false, label %.loopexit44, label %.preheader21.4.1

.preheader21.4.1:                                 ; preds = %.preheader21.3.1
  br i1 false, label %.preheader20.preheader.4, label %175

175:                                              ; preds = %.preheader21.4.1
  unreachable

.preheader19.preheader:                           ; preds = %174
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), align 4
  br i1 false, label %.preheader19.preheader..loopexit55_crit_edge, label %.preheader19.1

.preheader19.preheader..loopexit55_crit_edge:     ; preds = %.preheader19.preheader
  br label %.loopexit55

.loopexit55:                                      ; preds = %.preheader19.3.1..loopexit55_crit_edge, %.preheader19.2.1..loopexit55_crit_edge, %.preheader19.1.1..loopexit55_crit_edge, %.preheader19.preheader.1..loopexit55_crit_edge, %.preheader19.3..loopexit55_crit_edge, %.preheader19.2..loopexit55_crit_edge, %.preheader19.1..loopexit55_crit_edge, %.preheader19.preheader..loopexit55_crit_edge, %.preheader19.3.2, %.preheader19.2.2, %.preheader19.1.2, %.preheader19.preheader.2
  %storemerge6.lcssa51.ph = phi i32 [ poison, %.preheader19.3..loopexit55_crit_edge ], [ poison, %.preheader19.2..loopexit55_crit_edge ], [ poison, %.preheader19.1..loopexit55_crit_edge ], [ poison, %.preheader19.preheader..loopexit55_crit_edge ], [ poison, %.preheader19.preheader.1..loopexit55_crit_edge ], [ poison, %.preheader19.1.1..loopexit55_crit_edge ], [ poison, %.preheader19.2.1..loopexit55_crit_edge ], [ poison, %.preheader19.3.1..loopexit55_crit_edge ], [ 2, %.preheader19.preheader.2 ], [ 2, %.preheader19.1.2 ], [ 2, %.preheader19.2.2 ], [ 2, %.preheader19.3.2 ]
  %storemerge38.lcssa50.ph = phi i32 [ poison, %.preheader19.3..loopexit55_crit_edge ], [ poison, %.preheader19.2..loopexit55_crit_edge ], [ poison, %.preheader19.1..loopexit55_crit_edge ], [ poison, %.preheader19.preheader..loopexit55_crit_edge ], [ poison, %.preheader19.preheader.1..loopexit55_crit_edge ], [ poison, %.preheader19.1.1..loopexit55_crit_edge ], [ poison, %.preheader19.2.1..loopexit55_crit_edge ], [ poison, %.preheader19.3.1..loopexit55_crit_edge ], [ 0, %.preheader19.preheader.2 ], [ 1, %.preheader19.1.2 ], [ 2, %.preheader19.2.2 ], [ 3, %.preheader19.3.2 ]
  br label %176

176:                                              ; preds = %.loopexit55, %.preheader18.preheader.4
  %storemerge6.lcssa51 = phi i32 [ %storemerge6.lcssa54, %.preheader18.preheader.4 ], [ %storemerge6.lcssa51.ph, %.loopexit55 ]
  %storemerge38.lcssa50 = phi i32 [ 4, %.preheader18.preheader.4 ], [ %storemerge38.lcssa50.ph, %.loopexit55 ]
  %177 = shl i32 %storemerge38.lcssa50, 3
  %178 = add i32 64, %177
  %179 = add nsw i32 %storemerge6.lcssa51, %178
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %180
  store i32 1, ptr %181, align 4
  unreachable

.preheader19.1:                                   ; preds = %.preheader19.preheader
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6176), align 4
  br i1 false, label %.preheader19.1..loopexit55_crit_edge, label %.preheader19.2

.preheader19.1..loopexit55_crit_edge:             ; preds = %.preheader19.1
  br label %.loopexit55

.preheader19.2:                                   ; preds = %.preheader19.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6208), align 4
  br i1 false, label %.preheader19.2..loopexit55_crit_edge, label %.preheader19.3

.preheader19.2..loopexit55_crit_edge:             ; preds = %.preheader19.2
  br label %.loopexit55

.preheader19.3:                                   ; preds = %.preheader19.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6240), align 4
  br i1 false, label %.preheader19.3..loopexit55_crit_edge, label %.preheader19.4

.preheader19.3..loopexit55_crit_edge:             ; preds = %.preheader19.3
  br label %.loopexit55

.preheader19.4:                                   ; preds = %.preheader19.3
  br i1 false, label %.preheader19.4..preheader18.preheader.4_crit_edge, label %.preheader19.preheader.1

.preheader19.4..preheader18.preheader.4_crit_edge: ; preds = %.preheader19.4
  br label %.preheader18.preheader.4

.preheader18.preheader.4:                         ; preds = %.preheader19.4.1..preheader18.preheader.4_crit_edge, %.preheader19.4..preheader18.preheader.4_crit_edge, %.preheader19.4.2
  %storemerge6.lcssa54 = phi i32 [ poison, %.preheader19.4..preheader18.preheader.4_crit_edge ], [ poison, %.preheader19.4.1..preheader18.preheader.4_crit_edge ], [ 2, %.preheader19.4.2 ]
  %182 = add nsw i32 %storemerge6.lcssa54, 32
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %183
  store i32 1, ptr %184, align 4
  br i1 false, label %176, label %185

185:                                              ; preds = %.preheader18.preheader.4
  unreachable

.preheader19.preheader.1:                         ; preds = %.preheader19.4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6148), align 4
  br i1 false, label %.preheader19.preheader.1..loopexit55_crit_edge, label %.preheader19.1.1

.preheader19.preheader.1..loopexit55_crit_edge:   ; preds = %.preheader19.preheader.1
  br label %.loopexit55

.preheader19.1.1:                                 ; preds = %.preheader19.preheader.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6180), align 4
  br i1 false, label %.preheader19.1.1..loopexit55_crit_edge, label %.preheader19.2.1

.preheader19.1.1..loopexit55_crit_edge:           ; preds = %.preheader19.1.1
  br label %.loopexit55

.preheader19.2.1:                                 ; preds = %.preheader19.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6212), align 4
  br i1 false, label %.preheader19.2.1..loopexit55_crit_edge, label %.preheader19.3.1

.preheader19.2.1..loopexit55_crit_edge:           ; preds = %.preheader19.2.1
  br label %.loopexit55

.preheader19.3.1:                                 ; preds = %.preheader19.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6244), align 4
  br i1 false, label %.preheader19.3.1..loopexit55_crit_edge, label %.preheader19.4.1

.preheader19.3.1..loopexit55_crit_edge:           ; preds = %.preheader19.3.1
  br label %.loopexit55

.preheader19.4.1:                                 ; preds = %.preheader19.3.1
  br i1 false, label %.preheader19.4.1..preheader18.preheader.4_crit_edge, label %186

.preheader19.4.1..preheader18.preheader.4_crit_edge: ; preds = %.preheader19.4.1
  br label %.preheader18.preheader.4

186:                                              ; preds = %.preheader19.4.1
  br i1 false, label %.preheader19.preheader.2, label %.preheader17.preheader

.preheader19.preheader.2:                         ; preds = %186
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6152), align 4
  br i1 false, label %.loopexit55, label %.preheader19.1.2

.preheader19.1.2:                                 ; preds = %.preheader19.preheader.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6184), align 4
  br i1 false, label %.loopexit55, label %.preheader19.2.2

.preheader19.2.2:                                 ; preds = %.preheader19.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6216), align 4
  br i1 false, label %.loopexit55, label %.preheader19.3.2

.preheader19.3.2:                                 ; preds = %.preheader19.2.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6248), align 4
  br i1 false, label %.loopexit55, label %.preheader19.4.2

.preheader19.4.2:                                 ; preds = %.preheader19.3.2
  br i1 false, label %.preheader18.preheader.4, label %187

187:                                              ; preds = %.preheader19.4.2
  unreachable

.preheader17.preheader:                           ; preds = %186
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8448), align 4
  br i1 false, label %.preheader17.preheader..loopexit69_crit_edge, label %.preheader17.1

.preheader17.preheader..loopexit69_crit_edge:     ; preds = %.preheader17.preheader
  br label %.loopexit69

.loopexit69:                                      ; preds = %.preheader17.preheader.3..loopexit69_crit_edge, %.preheader17.preheader.2..loopexit69_crit_edge, %.preheader17.preheader.1..loopexit69_crit_edge, %.preheader17.preheader..loopexit69_crit_edge, %.preheader17.preheader.4
  %storemerge7.lcssa65.ph = phi i32 [ poison, %.preheader17.preheader..loopexit69_crit_edge ], [ poison, %.preheader17.preheader.1..loopexit69_crit_edge ], [ poison, %.preheader17.preheader.2..loopexit69_crit_edge ], [ poison, %.preheader17.preheader.3..loopexit69_crit_edge ], [ 4, %.preheader17.preheader.4 ]
  %storemerge36.lcssa64.ph = phi i32 [ poison, %.preheader17.preheader..loopexit69_crit_edge ], [ poison, %.preheader17.preheader.1..loopexit69_crit_edge ], [ poison, %.preheader17.preheader.2..loopexit69_crit_edge ], [ poison, %.preheader17.preheader.3..loopexit69_crit_edge ], [ 0, %.preheader17.preheader.4 ]
  br label %188

188:                                              ; preds = %.loopexit69, %.preheader16.preheader.1
  %storemerge7.lcssa65 = phi i32 [ %storemerge7.lcssa67, %.preheader16.preheader.1 ], [ %storemerge7.lcssa65.ph, %.loopexit69 ]
  %storemerge36.lcssa64 = phi i32 [ 1, %.preheader16.preheader.1 ], [ %storemerge36.lcssa64.ph, %.loopexit69 ]
  %189 = shl i32 %storemerge36.lcssa64, 3
  %190 = add i32 128, %189
  %191 = add nsw i32 %storemerge7.lcssa65, %190
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %192
  store i32 1, ptr %193, align 4
  unreachable

.preheader17.1:                                   ; preds = %.preheader17.preheader
  br i1 false, label %.preheader17.1..preheader16.preheader.1_crit_edge, label %.preheader17.preheader.1

.preheader17.1..preheader16.preheader.1_crit_edge: ; preds = %.preheader17.1
  br label %.preheader16.preheader.1

.preheader16.preheader.1:                         ; preds = %.preheader17.1.3..preheader16.preheader.1_crit_edge, %.preheader17.1.2..preheader16.preheader.1_crit_edge, %.preheader17.1.1..preheader16.preheader.1_crit_edge, %.preheader17.1..preheader16.preheader.1_crit_edge, %.preheader17.1.4
  %storemerge7.lcssa67 = phi i32 [ poison, %.preheader17.1..preheader16.preheader.1_crit_edge ], [ poison, %.preheader17.1.1..preheader16.preheader.1_crit_edge ], [ poison, %.preheader17.1.2..preheader16.preheader.1_crit_edge ], [ poison, %.preheader17.1.3..preheader16.preheader.1_crit_edge ], [ 4, %.preheader17.1.4 ]
  %194 = add nsw i32 %storemerge7.lcssa67, 8
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %195
  store i32 1, ptr %196, align 4
  %197 = add nsw i32 %storemerge7.lcssa67, 72
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %198
  store i32 1, ptr %199, align 4
  br i1 false, label %188, label %200

200:                                              ; preds = %.preheader16.preheader.1
  unreachable

.preheader17.preheader.1:                         ; preds = %.preheader17.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8196), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8452), align 4
  br i1 false, label %.preheader17.preheader.1..loopexit69_crit_edge, label %.preheader17.1.1

.preheader17.preheader.1..loopexit69_crit_edge:   ; preds = %.preheader17.preheader.1
  br label %.loopexit69

.preheader17.1.1:                                 ; preds = %.preheader17.preheader.1
  br i1 false, label %.preheader17.1.1..preheader16.preheader.1_crit_edge, label %.preheader17.preheader.2

.preheader17.1.1..preheader16.preheader.1_crit_edge: ; preds = %.preheader17.1.1
  br label %.preheader16.preheader.1

.preheader17.preheader.2:                         ; preds = %.preheader17.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8200), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8456), align 4
  br i1 false, label %.preheader17.preheader.2..loopexit69_crit_edge, label %.preheader17.1.2

.preheader17.preheader.2..loopexit69_crit_edge:   ; preds = %.preheader17.preheader.2
  br label %.loopexit69

.preheader17.1.2:                                 ; preds = %.preheader17.preheader.2
  br i1 false, label %.preheader17.1.2..preheader16.preheader.1_crit_edge, label %.preheader17.preheader.3

.preheader17.1.2..preheader16.preheader.1_crit_edge: ; preds = %.preheader17.1.2
  br label %.preheader16.preheader.1

.preheader17.preheader.3:                         ; preds = %.preheader17.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8204), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8460), align 4
  br i1 false, label %.preheader17.preheader.3..loopexit69_crit_edge, label %.preheader17.1.3

.preheader17.preheader.3..loopexit69_crit_edge:   ; preds = %.preheader17.preheader.3
  br label %.loopexit69

.preheader17.1.3:                                 ; preds = %.preheader17.preheader.3
  br i1 false, label %.preheader17.1.3..preheader16.preheader.1_crit_edge, label %201

.preheader17.1.3..preheader16.preheader.1_crit_edge: ; preds = %.preheader17.1.3
  br label %.preheader16.preheader.1

201:                                              ; preds = %.preheader17.1.3
  br i1 false, label %.preheader17.preheader.4, label %.preheader15.preheader

.preheader17.preheader.4:                         ; preds = %201
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8208), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8464), align 4
  br i1 false, label %.loopexit69, label %.preheader17.1.4

.preheader17.1.4:                                 ; preds = %.preheader17.preheader.4
  br i1 false, label %.preheader16.preheader.1, label %202

202:                                              ; preds = %.preheader17.1.4
  unreachable

.preheader15.preheader:                           ; preds = %201
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  br i1 false, label %.preheader15.preheader..loopexit82_crit_edge, label %.preheader15.1

.preheader15.preheader..loopexit82_crit_edge:     ; preds = %.preheader15.preheader
  br label %.loopexit82

.loopexit82:                                      ; preds = %.preheader15.1..loopexit82_crit_edge, %.preheader15.preheader..loopexit82_crit_edge, %.preheader15.1.1, %.preheader15.preheader.1
  %storemerge8.lcssa77.ph = phi i32 [ poison, %.preheader15.1..loopexit82_crit_edge ], [ poison, %.preheader15.preheader..loopexit82_crit_edge ], [ 1, %.preheader15.preheader.1 ], [ 1, %.preheader15.1.1 ]
  %storemerge34.lcssa76.ph = phi i32 [ poison, %.preheader15.1..loopexit82_crit_edge ], [ poison, %.preheader15.preheader..loopexit82_crit_edge ], [ 0, %.preheader15.preheader.1 ], [ 1, %.preheader15.1.1 ]
  br label %203

203:                                              ; preds = %.loopexit82, %.preheader14.preheader.2
  %storemerge8.lcssa77 = phi i32 [ %storemerge8.lcssa81, %.preheader14.preheader.2 ], [ %storemerge8.lcssa77.ph, %.loopexit82 ]
  %storemerge34.lcssa76 = phi i32 [ 2, %.preheader14.preheader.2 ], [ %storemerge34.lcssa76.ph, %.loopexit82 ]
  %204 = shl i32 %storemerge34.lcssa76, 3
  %205 = add i32 256, %204
  %206 = add nsw i32 %storemerge8.lcssa77, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %207
  store i32 1, ptr %208, align 4
  unreachable

.preheader15.1:                                   ; preds = %.preheader15.preheader
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10272), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10528), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10784), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11040), align 4
  br i1 false, label %.preheader15.1..loopexit82_crit_edge, label %.preheader15.2

.preheader15.1..loopexit82_crit_edge:             ; preds = %.preheader15.1
  br label %.loopexit82

.preheader15.2:                                   ; preds = %.preheader15.1
  br i1 false, label %.preheader15.2..preheader14.preheader.2_crit_edge, label %222

.preheader15.2..preheader14.preheader.2_crit_edge: ; preds = %.preheader15.2
  br label %.preheader14.preheader.2

.preheader14.preheader.2:                         ; preds = %.preheader15.2..preheader14.preheader.2_crit_edge, %.preheader15.2.1
  %storemerge8.lcssa81 = phi i32 [ poison, %.preheader15.2..preheader14.preheader.2_crit_edge ], [ 1, %.preheader15.2.1 ]
  %209 = add nsw i32 %storemerge8.lcssa81, 16
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %210
  store i32 1, ptr %211, align 4
  %212 = add nsw i32 %storemerge8.lcssa81, 80
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %213
  store i32 1, ptr %214, align 4
  %215 = add nsw i32 %storemerge8.lcssa81, 144
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %216
  store i32 1, ptr %217, align 4
  %218 = add nsw i32 %storemerge8.lcssa81, 208
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %219
  store i32 1, ptr %220, align 4
  br i1 false, label %203, label %221

221:                                              ; preds = %.preheader14.preheader.2
  unreachable

222:                                              ; preds = %.preheader15.2
  br i1 false, label %.preheader15.preheader.1, label %.preheader13.preheader

.preheader15.preheader.1:                         ; preds = %222
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10244), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10500), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10756), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11012), align 4
  br i1 false, label %.loopexit82, label %.preheader15.1.1

.preheader15.1.1:                                 ; preds = %.preheader15.preheader.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10276), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10532), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10788), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11044), align 4
  br i1 false, label %.loopexit82, label %.preheader15.2.1

.preheader15.2.1:                                 ; preds = %.preheader15.1.1
  br i1 false, label %.preheader14.preheader.2, label %223

223:                                              ; preds = %.preheader15.2.1
  unreachable

.preheader13.preheader:                           ; preds = %222
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), align 4
  br i1 false, label %.preheader13.preheader..loopexit95_crit_edge, label %.preheader13.1

.preheader13.preheader..loopexit95_crit_edge:     ; preds = %.preheader13.preheader
  br label %.loopexit95

.loopexit95:                                      ; preds = %.preheader13.preheader.2..loopexit95_crit_edge, %.preheader13.preheader.1..loopexit95_crit_edge, %.preheader13.preheader..loopexit95_crit_edge, %.preheader13.preheader.3
  %storemerge9.lcssa91.ph = phi i32 [ poison, %.preheader13.preheader..loopexit95_crit_edge ], [ poison, %.preheader13.preheader.1..loopexit95_crit_edge ], [ poison, %.preheader13.preheader.2..loopexit95_crit_edge ], [ 3, %.preheader13.preheader.3 ]
  %storemerge32.lcssa90.ph = phi i32 [ poison, %.preheader13.preheader..loopexit95_crit_edge ], [ poison, %.preheader13.preheader.1..loopexit95_crit_edge ], [ poison, %.preheader13.preheader.2..loopexit95_crit_edge ], [ 0, %.preheader13.preheader.3 ]
  br label %224

224:                                              ; preds = %.loopexit95, %.preheader12.preheader.1
  %storemerge9.lcssa91 = phi i32 [ %storemerge9.lcssa93, %.preheader12.preheader.1 ], [ %storemerge9.lcssa91.ph, %.loopexit95 ]
  %storemerge32.lcssa90 = phi i32 [ 1, %.preheader12.preheader.1 ], [ %storemerge32.lcssa90.ph, %.loopexit95 ]
  %225 = shl i32 %storemerge32.lcssa90, 3
  %226 = add i32 64, %225
  %227 = add nsw i32 %storemerge9.lcssa91, %226
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %228
  store i32 1, ptr %229, align 4
  unreachable

.preheader13.1:                                   ; preds = %.preheader13.preheader
  br i1 false, label %.preheader13.1..preheader12.preheader.1_crit_edge, label %.preheader13.preheader.1

.preheader13.1..preheader12.preheader.1_crit_edge: ; preds = %.preheader13.1
  br label %.preheader12.preheader.1

.preheader12.preheader.1:                         ; preds = %.preheader13.1.2..preheader12.preheader.1_crit_edge, %.preheader13.1.1..preheader12.preheader.1_crit_edge, %.preheader13.1..preheader12.preheader.1_crit_edge, %.preheader13.1.3
  %storemerge9.lcssa93 = phi i32 [ poison, %.preheader13.1..preheader12.preheader.1_crit_edge ], [ poison, %.preheader13.1.1..preheader12.preheader.1_crit_edge ], [ poison, %.preheader13.1.2..preheader12.preheader.1_crit_edge ], [ 3, %.preheader13.1.3 ]
  %230 = add nsw i32 %storemerge9.lcssa93, 8
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %231
  store i32 1, ptr %232, align 4
  br i1 false, label %224, label %233

233:                                              ; preds = %.preheader12.preheader.1
  unreachable

.preheader13.preheader.1:                         ; preds = %.preheader13.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12292), align 4
  br i1 false, label %.preheader13.preheader.1..loopexit95_crit_edge, label %.preheader13.1.1

.preheader13.preheader.1..loopexit95_crit_edge:   ; preds = %.preheader13.preheader.1
  br label %.loopexit95

.preheader13.1.1:                                 ; preds = %.preheader13.preheader.1
  br i1 false, label %.preheader13.1.1..preheader12.preheader.1_crit_edge, label %.preheader13.preheader.2

.preheader13.1.1..preheader12.preheader.1_crit_edge: ; preds = %.preheader13.1.1
  br label %.preheader12.preheader.1

.preheader13.preheader.2:                         ; preds = %.preheader13.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12296), align 4
  br i1 false, label %.preheader13.preheader.2..loopexit95_crit_edge, label %.preheader13.1.2

.preheader13.preheader.2..loopexit95_crit_edge:   ; preds = %.preheader13.preheader.2
  br label %.loopexit95

.preheader13.1.2:                                 ; preds = %.preheader13.preheader.2
  br i1 false, label %.preheader13.1.2..preheader12.preheader.1_crit_edge, label %234

.preheader13.1.2..preheader12.preheader.1_crit_edge: ; preds = %.preheader13.1.2
  br label %.preheader12.preheader.1

234:                                              ; preds = %.preheader13.1.2
  br i1 false, label %.preheader13.preheader.3, label %.preheader11.preheader

.preheader13.preheader.3:                         ; preds = %234
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12300), align 4
  br i1 false, label %.loopexit95, label %.preheader13.1.3

.preheader13.1.3:                                 ; preds = %.preheader13.preheader.3
  br i1 false, label %.preheader12.preheader.1, label %235

235:                                              ; preds = %.preheader13.1.3
  unreachable

.preheader11.preheader:                           ; preds = %234
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br i1 false, label %.preheader11.preheader..loopexit105_crit_edge, label %.preheader11.1

.preheader11.preheader..loopexit105_crit_edge:    ; preds = %.preheader11.preheader
  br label %.loopexit105

.loopexit105:                                     ; preds = %.preheader11.2..loopexit105_crit_edge, %.preheader11.1..loopexit105_crit_edge, %.preheader11.preheader..loopexit105_crit_edge, %.preheader11.2.1, %.preheader11.1.1, %.preheader11.preheader.1
  %storemerge10.lcssa101.ph = phi i32 [ poison, %.preheader11.2..loopexit105_crit_edge ], [ poison, %.preheader11.1..loopexit105_crit_edge ], [ poison, %.preheader11.preheader..loopexit105_crit_edge ], [ 1, %.preheader11.preheader.1 ], [ 1, %.preheader11.1.1 ], [ 1, %.preheader11.2.1 ]
  %storemerge30.lcssa100.ph = phi i32 [ poison, %.preheader11.2..loopexit105_crit_edge ], [ poison, %.preheader11.1..loopexit105_crit_edge ], [ poison, %.preheader11.preheader..loopexit105_crit_edge ], [ 0, %.preheader11.preheader.1 ], [ 1, %.preheader11.1.1 ], [ 2, %.preheader11.2.1 ]
  br label %236

236:                                              ; preds = %.loopexit105, %.preheader10.preheader.3
  %storemerge10.lcssa101 = phi i32 [ %storemerge10.lcssa104, %.preheader10.preheader.3 ], [ %storemerge10.lcssa101.ph, %.loopexit105 ]
  %storemerge30.lcssa100 = phi i32 [ 3, %.preheader10.preheader.3 ], [ %storemerge30.lcssa100.ph, %.loopexit105 ]
  %237 = shl i32 %storemerge30.lcssa100, 3
  %238 = add i32 64, %237
  %239 = add nsw i32 %storemerge10.lcssa101, %238
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %240
  store i32 1, ptr %241, align 4
  unreachable

.preheader11.1:                                   ; preds = %.preheader11.preheader
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br i1 false, label %.preheader11.1..loopexit105_crit_edge, label %.preheader11.2

.preheader11.1..loopexit105_crit_edge:            ; preds = %.preheader11.1
  br label %.loopexit105

.preheader11.2:                                   ; preds = %.preheader11.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  br i1 false, label %.preheader11.2..loopexit105_crit_edge, label %.preheader11.3

.preheader11.2..loopexit105_crit_edge:            ; preds = %.preheader11.2
  br label %.loopexit105

.preheader11.3:                                   ; preds = %.preheader11.2
  br i1 false, label %.preheader11.3..preheader10.preheader.3_crit_edge, label %246

.preheader11.3..preheader10.preheader.3_crit_edge: ; preds = %.preheader11.3
  br label %.preheader10.preheader.3

.preheader10.preheader.3:                         ; preds = %.preheader11.3..preheader10.preheader.3_crit_edge, %.preheader11.3.1
  %storemerge10.lcssa104 = phi i32 [ poison, %.preheader11.3..preheader10.preheader.3_crit_edge ], [ 1, %.preheader11.3.1 ]
  %242 = add nsw i32 %storemerge10.lcssa104, 24
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %243
  store i32 1, ptr %244, align 4
  br i1 false, label %236, label %245

245:                                              ; preds = %.preheader10.preheader.3
  unreachable

246:                                              ; preds = %.preheader11.3
  br i1 false, label %.preheader11.preheader.1, label %.preheader9.preheader

.preheader11.preheader.1:                         ; preds = %246
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14340), align 4
  br i1 false, label %.loopexit105, label %.preheader11.1.1

.preheader11.1.1:                                 ; preds = %.preheader11.preheader.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14372), align 4
  br i1 false, label %.loopexit105, label %.preheader11.2.1

.preheader11.2.1:                                 ; preds = %.preheader11.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14404), align 4
  br i1 false, label %.loopexit105, label %.preheader11.3.1

.preheader11.3.1:                                 ; preds = %.preheader11.2.1
  br i1 false, label %.preheader10.preheader.3, label %247

247:                                              ; preds = %.preheader11.3.1
  unreachable

.preheader9.preheader:                            ; preds = %246
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %.preheader9.preheader..loopexit115_crit_edge, label %.preheader9.1

.preheader9.preheader..loopexit115_crit_edge:     ; preds = %.preheader9.preheader
  br label %.loopexit115

.loopexit115:                                     ; preds = %.preheader9.preheader..loopexit115_crit_edge, %.preheader9.preheader.1
  %storemerge11.lcssa111.ph = phi i32 [ poison, %.preheader9.preheader..loopexit115_crit_edge ], [ 1, %.preheader9.preheader.1 ]
  %storemerge28.lcssa110.ph = phi i32 [ poison, %.preheader9.preheader..loopexit115_crit_edge ], [ 0, %.preheader9.preheader.1 ]
  br label %248

248:                                              ; preds = %.loopexit115, %.preheader8.preheader.1
  %storemerge11.lcssa111 = phi i32 [ %storemerge11.lcssa113, %.preheader8.preheader.1 ], [ %storemerge11.lcssa111.ph, %.loopexit115 ]
  %storemerge28.lcssa110 = phi i32 [ 1, %.preheader8.preheader.1 ], [ %storemerge28.lcssa110.ph, %.loopexit115 ]
  %249 = shl i32 %storemerge28.lcssa110, 3
  %250 = add i32 192, %249
  %251 = add nsw i32 %storemerge11.lcssa111, %250
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %252
  store i32 1, ptr %253, align 4
  unreachable

.preheader9.1:                                    ; preds = %.preheader9.preheader
  br i1 false, label %.preheader9.1..preheader8.preheader.1_crit_edge, label %264

.preheader9.1..preheader8.preheader.1_crit_edge:  ; preds = %.preheader9.1
  br label %.preheader8.preheader.1

.preheader8.preheader.1:                          ; preds = %.preheader9.1..preheader8.preheader.1_crit_edge, %.preheader9.1.1
  %storemerge11.lcssa113 = phi i32 [ poison, %.preheader9.1..preheader8.preheader.1_crit_edge ], [ 1, %.preheader9.1.1 ]
  %254 = add nsw i32 %storemerge11.lcssa113, 8
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %255
  store i32 1, ptr %256, align 4
  %257 = add nsw i32 %storemerge11.lcssa113, 72
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %258
  store i32 1, ptr %259, align 4
  %260 = add nsw i32 %storemerge11.lcssa113, 136
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %261
  store i32 1, ptr %262, align 4
  br i1 false, label %248, label %263

263:                                              ; preds = %.preheader8.preheader.1
  unreachable

264:                                              ; preds = %.preheader9.1
  br i1 false, label %.preheader9.preheader.1, label %.preheader7.preheader

.preheader9.preheader.1:                          ; preds = %264
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16388), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16644), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16900), align 4
  br i1 false, label %.loopexit115, label %.preheader9.1.1

.preheader9.1.1:                                  ; preds = %.preheader9.preheader.1
  br i1 false, label %.preheader8.preheader.1, label %265

265:                                              ; preds = %.preheader9.1.1
  unreachable

.preheader7.preheader:                            ; preds = %264
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), align 4
  br i1 false, label %.preheader7.preheader..loopexit127_crit_edge, label %.preheader7.1

.preheader7.preheader..loopexit127_crit_edge:     ; preds = %.preheader7.preheader
  br label %.loopexit127

.loopexit127:                                     ; preds = %.preheader7.1.1..loopexit127_crit_edge, %.preheader7.preheader.1..loopexit127_crit_edge, %.preheader7.1..loopexit127_crit_edge, %.preheader7.preheader..loopexit127_crit_edge, %.preheader7.1.2, %.preheader7.preheader.2
  %storemerge12.lcssa123.ph = phi i32 [ poison, %.preheader7.1..loopexit127_crit_edge ], [ poison, %.preheader7.preheader..loopexit127_crit_edge ], [ poison, %.preheader7.preheader.1..loopexit127_crit_edge ], [ poison, %.preheader7.1.1..loopexit127_crit_edge ], [ 2, %.preheader7.preheader.2 ], [ 2, %.preheader7.1.2 ]
  %storemerge26.lcssa122.ph = phi i32 [ poison, %.preheader7.1..loopexit127_crit_edge ], [ poison, %.preheader7.preheader..loopexit127_crit_edge ], [ poison, %.preheader7.preheader.1..loopexit127_crit_edge ], [ poison, %.preheader7.1.1..loopexit127_crit_edge ], [ 0, %.preheader7.preheader.2 ], [ 1, %.preheader7.1.2 ]
  br label %266

266:                                              ; preds = %.loopexit127, %.preheader6.preheader.2
  %storemerge12.lcssa123 = phi i32 [ %storemerge12.lcssa126, %.preheader6.preheader.2 ], [ %storemerge12.lcssa123.ph, %.loopexit127 ]
  %storemerge26.lcssa122 = phi i32 [ 2, %.preheader6.preheader.2 ], [ %storemerge26.lcssa122.ph, %.loopexit127 ]
  %267 = shl i32 %storemerge26.lcssa122, 3
  %268 = add i32 64, %267
  %269 = add nsw i32 %storemerge12.lcssa123, %268
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %270
  store i32 1, ptr %271, align 4
  unreachable

.preheader7.1:                                    ; preds = %.preheader7.preheader
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18464), align 4
  br i1 false, label %.preheader7.1..loopexit127_crit_edge, label %.preheader7.2

.preheader7.1..loopexit127_crit_edge:             ; preds = %.preheader7.1
  br label %.loopexit127

.preheader7.2:                                    ; preds = %.preheader7.1
  br i1 false, label %.preheader7.2..preheader6.preheader.2_crit_edge, label %.preheader7.preheader.1

.preheader7.2..preheader6.preheader.2_crit_edge:  ; preds = %.preheader7.2
  br label %.preheader6.preheader.2

.preheader6.preheader.2:                          ; preds = %.preheader7.2.1..preheader6.preheader.2_crit_edge, %.preheader7.2..preheader6.preheader.2_crit_edge, %.preheader7.2.2
  %storemerge12.lcssa126 = phi i32 [ poison, %.preheader7.2..preheader6.preheader.2_crit_edge ], [ poison, %.preheader7.2.1..preheader6.preheader.2_crit_edge ], [ 2, %.preheader7.2.2 ]
  %272 = add nsw i32 %storemerge12.lcssa126, 16
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %273
  store i32 1, ptr %274, align 4
  br i1 false, label %266, label %275

275:                                              ; preds = %.preheader6.preheader.2
  unreachable

.preheader7.preheader.1:                          ; preds = %.preheader7.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18436), align 4
  br i1 false, label %.preheader7.preheader.1..loopexit127_crit_edge, label %.preheader7.1.1

.preheader7.preheader.1..loopexit127_crit_edge:   ; preds = %.preheader7.preheader.1
  br label %.loopexit127

.preheader7.1.1:                                  ; preds = %.preheader7.preheader.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18468), align 4
  br i1 false, label %.preheader7.1.1..loopexit127_crit_edge, label %.preheader7.2.1

.preheader7.1.1..loopexit127_crit_edge:           ; preds = %.preheader7.1.1
  br label %.loopexit127

.preheader7.2.1:                                  ; preds = %.preheader7.1.1
  br i1 false, label %.preheader7.2.1..preheader6.preheader.2_crit_edge, label %276

.preheader7.2.1..preheader6.preheader.2_crit_edge: ; preds = %.preheader7.2.1
  br label %.preheader6.preheader.2

276:                                              ; preds = %.preheader7.2.1
  br i1 false, label %.preheader7.preheader.2, label %.preheader5.preheader

.preheader7.preheader.2:                          ; preds = %276
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18440), align 4
  br i1 false, label %.loopexit127, label %.preheader7.1.2

.preheader7.1.2:                                  ; preds = %.preheader7.preheader.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18472), align 4
  br i1 false, label %.loopexit127, label %.preheader7.2.2

.preheader7.2.2:                                  ; preds = %.preheader7.1.2
  br i1 false, label %.preheader6.preheader.2, label %277

277:                                              ; preds = %.preheader7.2.2
  unreachable

.preheader5.preheader:                            ; preds = %276
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20736), align 4
  br i1 false, label %.preheader5.preheader..loopexit141_crit_edge, label %.preheader5.1

.preheader5.preheader..loopexit141_crit_edge:     ; preds = %.preheader5.preheader
  br label %.loopexit141

.loopexit141:                                     ; preds = %.preheader5.preheader.1..loopexit141_crit_edge, %.preheader5.preheader..loopexit141_crit_edge, %.preheader5.preheader.2
  %storemerge13.lcssa137.ph = phi i32 [ poison, %.preheader5.preheader..loopexit141_crit_edge ], [ poison, %.preheader5.preheader.1..loopexit141_crit_edge ], [ 2, %.preheader5.preheader.2 ]
  %storemerge24.lcssa136.ph = phi i32 [ poison, %.preheader5.preheader..loopexit141_crit_edge ], [ poison, %.preheader5.preheader.1..loopexit141_crit_edge ], [ 0, %.preheader5.preheader.2 ]
  br label %278

278:                                              ; preds = %.loopexit141, %.preheader4.preheader.1
  %storemerge13.lcssa137 = phi i32 [ %storemerge13.lcssa139, %.preheader4.preheader.1 ], [ %storemerge13.lcssa137.ph, %.loopexit141 ]
  %storemerge24.lcssa136 = phi i32 [ 1, %.preheader4.preheader.1 ], [ %storemerge24.lcssa136.ph, %.loopexit141 ]
  %279 = shl i32 %storemerge24.lcssa136, 3
  %280 = add i32 128, %279
  %281 = add nsw i32 %storemerge13.lcssa137, %280
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %282
  store i32 1, ptr %283, align 4
  unreachable

.preheader5.1:                                    ; preds = %.preheader5.preheader
  br i1 false, label %.preheader5.1..preheader4.preheader.1_crit_edge, label %.preheader5.preheader.1

.preheader5.1..preheader4.preheader.1_crit_edge:  ; preds = %.preheader5.1
  br label %.preheader4.preheader.1

.preheader4.preheader.1:                          ; preds = %.preheader5.1.1..preheader4.preheader.1_crit_edge, %.preheader5.1..preheader4.preheader.1_crit_edge, %.preheader5.1.2
  %storemerge13.lcssa139 = phi i32 [ poison, %.preheader5.1..preheader4.preheader.1_crit_edge ], [ poison, %.preheader5.1.1..preheader4.preheader.1_crit_edge ], [ 2, %.preheader5.1.2 ]
  %284 = add nsw i32 %storemerge13.lcssa139, 8
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %285
  store i32 1, ptr %286, align 4
  %287 = add nsw i32 %storemerge13.lcssa139, 72
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %288
  store i32 1, ptr %289, align 4
  br i1 false, label %278, label %290

290:                                              ; preds = %.preheader4.preheader.1
  unreachable

.preheader5.preheader.1:                          ; preds = %.preheader5.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20484), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20740), align 4
  br i1 false, label %.preheader5.preheader.1..loopexit141_crit_edge, label %.preheader5.1.1

.preheader5.preheader.1..loopexit141_crit_edge:   ; preds = %.preheader5.preheader.1
  br label %.loopexit141

.preheader5.1.1:                                  ; preds = %.preheader5.preheader.1
  br i1 false, label %.preheader5.1.1..preheader4.preheader.1_crit_edge, label %291

.preheader5.1.1..preheader4.preheader.1_crit_edge: ; preds = %.preheader5.1.1
  br label %.preheader4.preheader.1

291:                                              ; preds = %.preheader5.1.1
  br i1 false, label %.preheader5.preheader.2, label %.preheader3.preheader

.preheader5.preheader.2:                          ; preds = %291
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20488), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20744), align 4
  br i1 false, label %.loopexit141, label %.preheader5.1.2

.preheader5.1.2:                                  ; preds = %.preheader5.preheader.2
  br i1 false, label %.preheader4.preheader.1, label %292

292:                                              ; preds = %.preheader5.1.2
  unreachable

.preheader3.preheader:                            ; preds = %291
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  br i1 false, label %.preheader3.preheader..loopexit154_crit_edge, label %.preheader3.1

.preheader3.preheader..loopexit154_crit_edge:     ; preds = %.preheader3.preheader
  br label %.loopexit154

.loopexit154:                                     ; preds = %.preheader3.1..loopexit154_crit_edge, %.preheader3.preheader..loopexit154_crit_edge, %.preheader3.1.1, %.preheader3.preheader.1
  %storemerge14.lcssa149.ph = phi i32 [ poison, %.preheader3.1..loopexit154_crit_edge ], [ poison, %.preheader3.preheader..loopexit154_crit_edge ], [ 1, %.preheader3.preheader.1 ], [ 1, %.preheader3.1.1 ]
  %storemerge22.lcssa148.ph = phi i32 [ poison, %.preheader3.1..loopexit154_crit_edge ], [ poison, %.preheader3.preheader..loopexit154_crit_edge ], [ 0, %.preheader3.preheader.1 ], [ 1, %.preheader3.1.1 ]
  br label %293

293:                                              ; preds = %.loopexit154, %.preheader2.preheader.2
  %storemerge14.lcssa149 = phi i32 [ %storemerge14.lcssa153, %.preheader2.preheader.2 ], [ %storemerge14.lcssa149.ph, %.loopexit154 ]
  %storemerge22.lcssa148 = phi i32 [ 2, %.preheader2.preheader.2 ], [ %storemerge22.lcssa148.ph, %.loopexit154 ]
  %294 = shl i32 %storemerge22.lcssa148, 3
  %295 = add i32 128, %294
  %296 = add nsw i32 %storemerge14.lcssa149, %295
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %297
  store i32 1, ptr %298, align 4
  unreachable

.preheader3.1:                                    ; preds = %.preheader3.preheader
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  br i1 false, label %.preheader3.1..loopexit154_crit_edge, label %.preheader3.2

.preheader3.1..loopexit154_crit_edge:             ; preds = %.preheader3.1
  br label %.loopexit154

.preheader3.2:                                    ; preds = %.preheader3.1
  br i1 false, label %.preheader3.2..preheader2.preheader.2_crit_edge, label %306

.preheader3.2..preheader2.preheader.2_crit_edge:  ; preds = %.preheader3.2
  br label %.preheader2.preheader.2

.preheader2.preheader.2:                          ; preds = %.preheader3.2..preheader2.preheader.2_crit_edge, %.preheader3.2.1
  %storemerge14.lcssa153 = phi i32 [ poison, %.preheader3.2..preheader2.preheader.2_crit_edge ], [ 1, %.preheader3.2.1 ]
  %299 = add nsw i32 %storemerge14.lcssa153, 16
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %300
  store i32 1, ptr %301, align 4
  %302 = add nsw i32 %storemerge14.lcssa153, 80
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %303
  store i32 1, ptr %304, align 4
  br i1 false, label %293, label %305

305:                                              ; preds = %.preheader2.preheader.2
  unreachable

306:                                              ; preds = %.preheader3.2
  br i1 false, label %.preheader3.preheader.1, label %.preheader1.preheader

.preheader3.preheader.1:                          ; preds = %306
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22532), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22788), align 4
  br i1 false, label %.loopexit154, label %.preheader3.1.1

.preheader3.1.1:                                  ; preds = %.preheader3.preheader.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22564), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22820), align 4
  br i1 false, label %.loopexit154, label %.preheader3.2.1

.preheader3.2.1:                                  ; preds = %.preheader3.1.1
  br i1 false, label %.preheader2.preheader.2, label %307

307:                                              ; preds = %.preheader3.2.1
  unreachable

.preheader1.preheader:                            ; preds = %306
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24832), align 4
  br i1 false, label %.preheader1.preheader..loopexit166_crit_edge, label %.preheader1.1

.preheader1.preheader..loopexit166_crit_edge:     ; preds = %.preheader1.preheader
  br label %.loopexit166

.loopexit166:                                     ; preds = %.preheader1.1.1..loopexit166_crit_edge, %.preheader1.preheader.1..loopexit166_crit_edge, %.preheader1.1..loopexit166_crit_edge, %.preheader1.preheader..loopexit166_crit_edge, %.preheader1.1.2, %.preheader1.preheader.2
  %storemerge15.lcssa161.ph = phi i32 [ poison, %.preheader1.1..loopexit166_crit_edge ], [ poison, %.preheader1.preheader..loopexit166_crit_edge ], [ poison, %.preheader1.preheader.1..loopexit166_crit_edge ], [ poison, %.preheader1.1.1..loopexit166_crit_edge ], [ 2, %.preheader1.preheader.2 ], [ 2, %.preheader1.1.2 ]
  %storemerge20.lcssa160.ph = phi i32 [ poison, %.preheader1.1..loopexit166_crit_edge ], [ poison, %.preheader1.preheader..loopexit166_crit_edge ], [ poison, %.preheader1.preheader.1..loopexit166_crit_edge ], [ poison, %.preheader1.1.1..loopexit166_crit_edge ], [ 0, %.preheader1.preheader.2 ], [ 1, %.preheader1.1.2 ]
  br label %308

308:                                              ; preds = %.loopexit166, %.preheader.preheader.2
  %storemerge15.lcssa161 = phi i32 [ %storemerge15.lcssa165, %.preheader.preheader.2 ], [ %storemerge15.lcssa161.ph, %.loopexit166 ]
  %storemerge20.lcssa160 = phi i32 [ 2, %.preheader.preheader.2 ], [ %storemerge20.lcssa160.ph, %.loopexit166 ]
  %309 = shl i32 %storemerge20.lcssa160, 3
  %310 = add i32 128, %309
  %311 = add nsw i32 %storemerge15.lcssa161, %310
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %312
  store i32 1, ptr %313, align 4
  unreachable

.preheader1.1:                                    ; preds = %.preheader1.preheader
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24608), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24864), align 4
  br i1 false, label %.preheader1.1..loopexit166_crit_edge, label %.preheader1.2

.preheader1.1..loopexit166_crit_edge:             ; preds = %.preheader1.1
  br label %.loopexit166

.preheader1.2:                                    ; preds = %.preheader1.1
  br i1 false, label %.preheader1.2..preheader.preheader.2_crit_edge, label %.preheader1.preheader.1

.preheader1.2..preheader.preheader.2_crit_edge:   ; preds = %.preheader1.2
  br label %.preheader.preheader.2

.preheader.preheader.2:                           ; preds = %.preheader1.2.1..preheader.preheader.2_crit_edge, %.preheader1.2..preheader.preheader.2_crit_edge, %.preheader1.2.2
  %storemerge15.lcssa165 = phi i32 [ poison, %.preheader1.2..preheader.preheader.2_crit_edge ], [ poison, %.preheader1.2.1..preheader.preheader.2_crit_edge ], [ 2, %.preheader1.2.2 ]
  %314 = add nsw i32 %storemerge15.lcssa165, 16
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %315
  store i32 1, ptr %316, align 4
  %317 = add nsw i32 %storemerge15.lcssa165, 80
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %318
  store i32 1, ptr %319, align 4
  br i1 false, label %308, label %320

320:                                              ; preds = %.preheader.preheader.2
  unreachable

.preheader1.preheader.1:                          ; preds = %.preheader1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24580), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24836), align 4
  br i1 false, label %.preheader1.preheader.1..loopexit166_crit_edge, label %.preheader1.1.1

.preheader1.preheader.1..loopexit166_crit_edge:   ; preds = %.preheader1.preheader.1
  br label %.loopexit166

.preheader1.1.1:                                  ; preds = %.preheader1.preheader.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24612), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24868), align 4
  br i1 false, label %.preheader1.1.1..loopexit166_crit_edge, label %.preheader1.2.1

.preheader1.1.1..loopexit166_crit_edge:           ; preds = %.preheader1.1.1
  br label %.loopexit166

.preheader1.2.1:                                  ; preds = %.preheader1.1.1
  br i1 false, label %.preheader1.2.1..preheader.preheader.2_crit_edge, label %321

.preheader1.2.1..preheader.preheader.2_crit_edge: ; preds = %.preheader1.2.1
  br label %.preheader.preheader.2

321:                                              ; preds = %.preheader1.2.1
  br i1 false, label %.preheader1.preheader.2, label %323

.preheader1.preheader.2:                          ; preds = %321
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24584), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24840), align 4
  br i1 false, label %.loopexit166, label %.preheader1.1.2

.preheader1.1.2:                                  ; preds = %.preheader1.preheader.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24616), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24872), align 4
  br i1 false, label %.loopexit166, label %.preheader1.2.2

.preheader1.2.2:                                  ; preds = %.preheader1.1.2
  br i1 false, label %.preheader.preheader.2, label %322

322:                                              ; preds = %.preheader1.2.2
  unreachable

323:                                              ; preds = %321
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %324 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %324, 0
  br i1 %.not, label %327, label %325

325:                                              ; preds = %323
  %326 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %326, ptr @n, align 4
  br label %328

327:                                              ; preds = %323
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %328

328:                                              ; preds = %327, %325
  %329 = phi i32 [ %.pre, %327 ], [ %326, %325 ]
  %330 = call i32 @Trial(i32 noundef %329)
  %.not16 = icmp eq i32 %330, 0
  br i1 %.not16, label %331, label %332

331:                                              ; preds = %328
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %335

332:                                              ; preds = %328
  %333 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %333, 2005
  br i1 %.not18, label %335, label %334

334:                                              ; preds = %332
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %335

335:                                              ; preds = %334, %332, %331
  %336 = load i32, ptr @n, align 4
  %337 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %336) #4
  %338 = load i32, ptr @kount, align 4
  %339 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %338) #4
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
