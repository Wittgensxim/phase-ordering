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
  %6 = zext nneg i32 %storemerge to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
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
  %15 = add nuw nsw i32 %storemerge, 1
  br label %3, !llvm.loop !7

16:                                               ; preds = %9, %3
  %storemerge1 = phi i32 [ 0, %9 ], [ 1, %3 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert2 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert2, align 4
  br label %3

3:                                                ; preds = %13, %2
  %storemerge = phi i32 [ 0, %2 ], [ %14, %13 ]
  %.not = icmp sgt i32 %storemerge, %.pre
  br i1 %.not, label %15, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %6 = zext nneg i32 %storemerge to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
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
  %14 = add nuw nsw i32 %storemerge, 1
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
  %6 = zext nneg i32 %storemerge to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
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
  %14 = add nuw nsw i32 %storemerge, 1
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
  %5 = icmp samesign ult i32 %storemerge, 13
  br i1 %5, label %6, label %22

6:                                                ; preds = %4
  %7 = zext nneg i32 %storemerge to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr @class, i64 %7
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
  %21 = add nuw nsw i32 %storemerge, 1
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
  %2 = zext nneg i32 %storemerge to i64
  %3 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %2
  store i32 1, ptr %3, align 4
  %4 = add nuw nsw i32 %storemerge, 1
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %5
  store i32 1, ptr %6, align 4
  %7 = add nuw nsw i32 %storemerge, 2
  %8 = icmp samesign ult i32 %7, 512
  br i1 %8, label %9, label %.preheader31.preheader

.preheader31.preheader:                           ; preds = %1
  br label %.preheader31

9:                                                ; preds = %1
  %10 = zext nneg i32 %7 to i64
  %11 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %10
  store i32 1, ptr %11, align 4
  %12 = add nuw nsw i32 %storemerge, 3
  br label %1, !llvm.loop !13

.preheader31:                                     ; preds = %.preheader31.preheader, %111
  %storemerge1 = phi i32 [ %112, %111 ], [ 1, %.preheader31.preheader ]
  %13 = icmp samesign ult i32 %storemerge1, 6
  br i1 %13, label %.preheader30.preheader, label %.preheader28.preheader

.preheader30.preheader:                           ; preds = %.preheader31
  %14 = or disjoint i32 %storemerge1, 72
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %15
  store i32 0, ptr %16, align 4
  %17 = or disjoint i32 %storemerge1, 136
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %18
  store i32 0, ptr %19, align 4
  %20 = or disjoint i32 %storemerge1, 200
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %21
  store i32 0, ptr %22, align 4
  %23 = or disjoint i32 %storemerge1, 264
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %24
  store i32 0, ptr %25, align 4
  %26 = or disjoint i32 %storemerge1, 328
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %27
  store i32 0, ptr %28, align 4
  br i1 false, label %.preheader30.preheader..loopexit14_crit_edge, label %.preheader30.1

.preheader30.preheader..loopexit14_crit_edge:     ; preds = %.preheader30.preheader
  br label %.loopexit14

.preheader28.preheader:                           ; preds = %.preheader31
  br label %.preheader28

.loopexit14splitsplitsplitsplit:                  ; preds = %.preheader30.4
  br label %.loopexit14splitsplitsplit

.loopexit14splitsplitsplit:                       ; preds = %.loopexit14splitsplitsplitsplit, %.preheader30.3..loopexit14splitsplitsplit_crit_edge
  %storemerge47.lcssa5.ph.ph.ph.ph = phi i32 [ poison, %.preheader30.3..loopexit14splitsplitsplit_crit_edge ], [ 5, %.loopexit14splitsplitsplitsplit ]
  br label %.loopexit14splitsplit

.loopexit14splitsplit:                            ; preds = %.loopexit14splitsplitsplit, %.preheader30.2..loopexit14splitsplit_crit_edge
  %storemerge47.lcssa5.ph.ph.ph = phi i32 [ poison, %.preheader30.2..loopexit14splitsplit_crit_edge ], [ %storemerge47.lcssa5.ph.ph.ph.ph, %.loopexit14splitsplitsplit ]
  br label %.loopexit14split

.loopexit14split:                                 ; preds = %.loopexit14splitsplit, %.preheader30.1..loopexit14split_crit_edge
  %storemerge47.lcssa5.ph.ph = phi i32 [ poison, %.preheader30.1..loopexit14split_crit_edge ], [ %storemerge47.lcssa5.ph.ph.ph, %.loopexit14splitsplit ]
  br label %.loopexit14

.loopexit14:                                      ; preds = %.loopexit14split, %.preheader30.preheader..loopexit14_crit_edge
  %storemerge1.lcssa6.ph = phi i32 [ poison, %.preheader30.preheader..loopexit14_crit_edge ], [ %storemerge1, %.loopexit14split ]
  %storemerge47.lcssa5.ph = phi i32 [ poison, %.preheader30.preheader..loopexit14_crit_edge ], [ %storemerge47.lcssa5.ph.ph, %.loopexit14split ]
  br label %29

29:                                               ; preds = %.loopexit14, %.preheader29.preheader.5
  %storemerge1.lcssa6 = phi i32 [ %storemerge1.lcssa13, %.preheader29.preheader.5 ], [ poison, %.loopexit14 ]
  %storemerge47.lcssa5 = phi i32 [ 6, %.preheader29.preheader.5 ], [ poison, %.loopexit14 ]
  %30 = shl nuw nsw i32 %storemerge47.lcssa5, 3
  %31 = or disjoint i32 384, %30
  %32 = or disjoint i32 %storemerge1.lcssa6, %31
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %33
  store i32 0, ptr %34, align 4
  unreachable

.preheader30.1:                                   ; preds = %.preheader30.preheader
  %35 = or disjoint i32 %storemerge1, 80
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %36
  store i32 0, ptr %37, align 4
  %38 = or disjoint i32 %storemerge1, 144
  %39 = zext nneg i32 %38 to i64
  %40 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %39
  store i32 0, ptr %40, align 4
  %41 = or disjoint i32 %storemerge1, 208
  %42 = zext nneg i32 %41 to i64
  %43 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %42
  store i32 0, ptr %43, align 4
  %44 = or disjoint i32 %storemerge1, 272
  %45 = zext nneg i32 %44 to i64
  %46 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %45
  store i32 0, ptr %46, align 4
  %47 = or disjoint i32 %storemerge1, 336
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %48
  store i32 0, ptr %49, align 4
  br i1 false, label %.preheader30.1..loopexit14split_crit_edge, label %.preheader30.2

.preheader30.1..loopexit14split_crit_edge:        ; preds = %.preheader30.1
  br label %.loopexit14split

.preheader30.2:                                   ; preds = %.preheader30.1
  %50 = or disjoint i32 %storemerge1, 88
  %51 = zext nneg i32 %50 to i64
  %52 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %51
  store i32 0, ptr %52, align 4
  %53 = or disjoint i32 %storemerge1, 152
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %54
  store i32 0, ptr %55, align 4
  %56 = or disjoint i32 %storemerge1, 216
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %57
  store i32 0, ptr %58, align 4
  %59 = or disjoint i32 %storemerge1, 280
  %60 = zext nneg i32 %59 to i64
  %61 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %60
  store i32 0, ptr %61, align 4
  %62 = or disjoint i32 %storemerge1, 344
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %63
  store i32 0, ptr %64, align 4
  br i1 false, label %.preheader30.2..loopexit14splitsplit_crit_edge, label %.preheader30.3

.preheader30.2..loopexit14splitsplit_crit_edge:   ; preds = %.preheader30.2
  br label %.loopexit14splitsplit

.preheader30.3:                                   ; preds = %.preheader30.2
  %65 = or disjoint i32 %storemerge1, 96
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %66
  store i32 0, ptr %67, align 4
  %68 = or disjoint i32 %storemerge1, 160
  %69 = zext nneg i32 %68 to i64
  %70 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %69
  store i32 0, ptr %70, align 4
  %71 = or disjoint i32 %storemerge1, 224
  %72 = zext nneg i32 %71 to i64
  %73 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %72
  store i32 0, ptr %73, align 4
  %74 = or disjoint i32 %storemerge1, 288
  %75 = zext nneg i32 %74 to i64
  %76 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %75
  store i32 0, ptr %76, align 4
  %77 = or disjoint i32 %storemerge1, 352
  %78 = zext nneg i32 %77 to i64
  %79 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %78
  store i32 0, ptr %79, align 4
  br i1 false, label %.preheader30.3..loopexit14splitsplitsplit_crit_edge, label %.preheader30.4

.preheader30.3..loopexit14splitsplitsplit_crit_edge: ; preds = %.preheader30.3
  br label %.loopexit14splitsplitsplit

.preheader30.4:                                   ; preds = %.preheader30.3
  %80 = or disjoint i32 %storemerge1, 104
  %81 = zext nneg i32 %80 to i64
  %82 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %81
  store i32 0, ptr %82, align 4
  %83 = or disjoint i32 %storemerge1, 168
  %84 = zext nneg i32 %83 to i64
  %85 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %84
  store i32 0, ptr %85, align 4
  %86 = or disjoint i32 %storemerge1, 232
  %87 = zext nneg i32 %86 to i64
  %88 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %87
  store i32 0, ptr %88, align 4
  %89 = or disjoint i32 %storemerge1, 296
  %90 = zext nneg i32 %89 to i64
  %91 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %90
  store i32 0, ptr %91, align 4
  %92 = or disjoint i32 %storemerge1, 360
  %93 = zext nneg i32 %92 to i64
  %94 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %93
  store i32 0, ptr %94, align 4
  br i1 false, label %.loopexit14splitsplitsplitsplit, label %.preheader30.5

.preheader30.5:                                   ; preds = %.preheader30.4
  br i1 false, label %.preheader29.preheader.5, label %111

.preheader29.preheader.5:                         ; preds = %.preheader30.5
  %storemerge1.lcssa13 = phi i32 [ %storemerge1, %.preheader30.5 ]
  %95 = or disjoint i32 %storemerge1.lcssa13, 112
  %96 = zext nneg i32 %95 to i64
  %97 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %96
  store i32 0, ptr %97, align 4
  %98 = or disjoint i32 %storemerge1.lcssa13, 176
  %99 = zext nneg i32 %98 to i64
  %100 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %99
  store i32 0, ptr %100, align 4
  %101 = or disjoint i32 %storemerge1.lcssa13, 240
  %102 = zext nneg i32 %101 to i64
  %103 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %102
  store i32 0, ptr %103, align 4
  %104 = or disjoint i32 %storemerge1.lcssa13, 304
  %105 = zext nneg i32 %104 to i64
  %106 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %105
  store i32 0, ptr %106, align 4
  %107 = or disjoint i32 %storemerge1.lcssa13, 368
  %108 = zext nneg i32 %107 to i64
  %109 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %108
  store i32 0, ptr %109, align 4
  br i1 false, label %29, label %110

110:                                              ; preds = %.preheader29.preheader.5
  unreachable

111:                                              ; preds = %.preheader30.5
  %112 = add nuw nsw i32 %storemerge1, 1
  br label %.preheader31, !llvm.loop !14

.preheader28:                                     ; preds = %.preheader28.preheader, %127
  %storemerge2 = phi i32 [ %128, %127 ], [ 0, %.preheader28.preheader ]
  %113 = icmp samesign ult i32 %storemerge2, 13
  br i1 %113, label %.preheader27.preheader, label %.preheader26.preheader

.preheader27.preheader:                           ; preds = %.preheader28
  %114 = zext nneg i32 %storemerge2 to i64
  %115 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %114
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  store i32 1, ptr @p, align 4
  br i1 false, label %.preheader26.preheader..loopexit20_crit_edge, label %.preheader25.1

.preheader26.preheader..loopexit20_crit_edge:     ; preds = %.preheader26.preheader
  br label %.loopexit20

.preheader27:                                     ; preds = %123, %.preheader27.preheader
  %storemerge46 = phi i32 [ 0, %.preheader27.preheader ], [ %126, %123 ]
  %116 = zext nneg i32 %storemerge46 to i64
  %117 = getelementptr inbounds nuw [4 x i8], ptr %115, i64 %116
  store i32 0, ptr %117, align 4
  %118 = add nuw nsw i32 %storemerge46, 1
  %119 = zext nneg i32 %118 to i64
  %120 = getelementptr inbounds nuw [4 x i8], ptr %115, i64 %119
  store i32 0, ptr %120, align 4
  %121 = add nuw nsw i32 %storemerge46, 2
  %122 = icmp samesign ult i32 %121, 512
  br i1 %122, label %123, label %127

123:                                              ; preds = %.preheader27
  %124 = zext nneg i32 %121 to i64
  %125 = getelementptr inbounds nuw [4 x i8], ptr %115, i64 %124
  store i32 0, ptr %125, align 4
  %126 = add nuw nsw i32 %storemerge46, 3
  br label %.preheader27, !llvm.loop !15

127:                                              ; preds = %.preheader27
  %128 = add nuw nsw i32 %storemerge2, 1
  br label %.preheader28, !llvm.loop !16

.loopexit20:                                      ; preds = %.preheader25.1.3..loopexit20_crit_edge, %.preheader26.3..loopexit20_crit_edge, %.preheader25.1.2..loopexit20_crit_edge, %.preheader26.2..loopexit20_crit_edge, %.preheader25.1.1..loopexit20_crit_edge, %.preheader26.1..loopexit20_crit_edge, %.preheader25.1..loopexit20_crit_edge, %.preheader26.preheader..loopexit20_crit_edge, %.preheader25.1.4, %.preheader25.preheader.4
  %storemerge3.lcssa16.ph = phi i32 [ poison, %.preheader25.1..loopexit20_crit_edge ], [ poison, %.preheader26.preheader..loopexit20_crit_edge ], [ poison, %.preheader26.1..loopexit20_crit_edge ], [ poison, %.preheader25.1.1..loopexit20_crit_edge ], [ poison, %.preheader26.2..loopexit20_crit_edge ], [ poison, %.preheader25.1.2..loopexit20_crit_edge ], [ poison, %.preheader26.3..loopexit20_crit_edge ], [ poison, %.preheader25.1.3..loopexit20_crit_edge ], [ 4, %.preheader25.preheader.4 ], [ 4, %.preheader25.1.4 ]
  %storemerge44.lcssa15.ph = phi i32 [ poison, %.preheader25.1..loopexit20_crit_edge ], [ poison, %.preheader26.preheader..loopexit20_crit_edge ], [ poison, %.preheader26.1..loopexit20_crit_edge ], [ poison, %.preheader25.1.1..loopexit20_crit_edge ], [ poison, %.preheader26.2..loopexit20_crit_edge ], [ poison, %.preheader25.1.2..loopexit20_crit_edge ], [ poison, %.preheader26.3..loopexit20_crit_edge ], [ poison, %.preheader25.1.3..loopexit20_crit_edge ], [ 0, %.preheader25.preheader.4 ], [ 1, %.preheader25.1.4 ]
  br label %129

129:                                              ; preds = %.loopexit20, %.preheader24.preheader.2
  %storemerge3.lcssa16 = phi i32 [ %storemerge3.lcssa19, %.preheader24.preheader.2 ], [ %storemerge3.lcssa16.ph, %.loopexit20 ]
  %storemerge44.lcssa15 = phi i32 [ 2, %.preheader24.preheader.2 ], [ %storemerge44.lcssa15.ph, %.loopexit20 ]
  %130 = shl nuw nsw i32 %storemerge44.lcssa15, 3
  %131 = or disjoint i32 %storemerge3.lcssa16, %130
  %132 = zext nneg i32 %131 to i64
  %133 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %132
  store i32 1, ptr %133, align 4
  unreachable

.preheader25.1:                                   ; preds = %.preheader26.preheader
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 32), align 4
  br i1 false, label %.preheader25.1..loopexit20_crit_edge, label %.preheader25.2

.preheader25.1..loopexit20_crit_edge:             ; preds = %.preheader25.1
  br label %.loopexit20

.preheader25.2:                                   ; preds = %.preheader25.1
  br i1 false, label %.preheader25.2..preheader24.preheader.2_crit_edge, label %.preheader26.1

.preheader25.2..preheader24.preheader.2_crit_edge: ; preds = %.preheader25.2
  br label %.preheader24.preheader.2

.preheader24.preheader.2:                         ; preds = %.preheader25.2.3..preheader24.preheader.2_crit_edge, %.preheader25.2.2..preheader24.preheader.2_crit_edge, %.preheader25.2.1..preheader24.preheader.2_crit_edge, %.preheader25.2..preheader24.preheader.2_crit_edge, %.preheader25.2.4
  %storemerge3.lcssa19 = phi i32 [ poison, %.preheader25.2..preheader24.preheader.2_crit_edge ], [ poison, %.preheader25.2.1..preheader24.preheader.2_crit_edge ], [ poison, %.preheader25.2.2..preheader24.preheader.2_crit_edge ], [ poison, %.preheader25.2.3..preheader24.preheader.2_crit_edge ], [ 4, %.preheader25.2.4 ]
  %134 = or disjoint i32 %storemerge3.lcssa19, 16
  %135 = zext nneg i32 %134 to i64
  %136 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %135
  store i32 1, ptr %136, align 4
  br i1 false, label %129, label %137

137:                                              ; preds = %.preheader24.preheader.2
  unreachable

.preheader26.1:                                   ; preds = %.preheader25.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4), align 4
  br i1 false, label %.preheader26.1..loopexit20_crit_edge, label %.preheader25.1.1

.preheader26.1..loopexit20_crit_edge:             ; preds = %.preheader26.1
  br label %.loopexit20

.preheader25.1.1:                                 ; preds = %.preheader26.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 36), align 4
  br i1 false, label %.preheader25.1.1..loopexit20_crit_edge, label %.preheader25.2.1

.preheader25.1.1..loopexit20_crit_edge:           ; preds = %.preheader25.1.1
  br label %.loopexit20

.preheader25.2.1:                                 ; preds = %.preheader25.1.1
  br i1 false, label %.preheader25.2.1..preheader24.preheader.2_crit_edge, label %.preheader26.2

.preheader25.2.1..preheader24.preheader.2_crit_edge: ; preds = %.preheader25.2.1
  br label %.preheader24.preheader.2

.preheader26.2:                                   ; preds = %.preheader25.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8), align 4
  br i1 false, label %.preheader26.2..loopexit20_crit_edge, label %.preheader25.1.2

.preheader26.2..loopexit20_crit_edge:             ; preds = %.preheader26.2
  br label %.loopexit20

.preheader25.1.2:                                 ; preds = %.preheader26.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 40), align 4
  br i1 false, label %.preheader25.1.2..loopexit20_crit_edge, label %.preheader25.2.2

.preheader25.1.2..loopexit20_crit_edge:           ; preds = %.preheader25.1.2
  br label %.loopexit20

.preheader25.2.2:                                 ; preds = %.preheader25.1.2
  br i1 false, label %.preheader25.2.2..preheader24.preheader.2_crit_edge, label %.preheader26.3

.preheader25.2.2..preheader24.preheader.2_crit_edge: ; preds = %.preheader25.2.2
  br label %.preheader24.preheader.2

.preheader26.3:                                   ; preds = %.preheader25.2.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12), align 4
  br i1 false, label %.preheader26.3..loopexit20_crit_edge, label %.preheader25.1.3

.preheader26.3..loopexit20_crit_edge:             ; preds = %.preheader26.3
  br label %.loopexit20

.preheader25.1.3:                                 ; preds = %.preheader26.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 44), align 4
  br i1 false, label %.preheader25.1.3..loopexit20_crit_edge, label %.preheader25.2.3

.preheader25.1.3..loopexit20_crit_edge:           ; preds = %.preheader25.1.3
  br label %.loopexit20

.preheader25.2.3:                                 ; preds = %.preheader25.1.3
  br i1 false, label %.preheader25.2.3..preheader24.preheader.2_crit_edge, label %.preheader26.4

.preheader25.2.3..preheader24.preheader.2_crit_edge: ; preds = %.preheader25.2.3
  br label %.preheader24.preheader.2

.preheader26.4:                                   ; preds = %.preheader25.2.3
  br i1 false, label %.preheader25.preheader.4, label %.preheader23.preheader

.preheader25.preheader.4:                         ; preds = %.preheader26.4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16), align 4
  br i1 false, label %.loopexit20, label %.preheader25.1.4

.preheader25.1.4:                                 ; preds = %.preheader25.preheader.4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 48), align 4
  br i1 false, label %.loopexit20, label %.preheader25.2.4

.preheader25.2.4:                                 ; preds = %.preheader25.1.4
  br i1 false, label %.preheader24.preheader.2, label %138

138:                                              ; preds = %.preheader25.2.4
  unreachable

.preheader23.preheader:                           ; preds = %.preheader26.4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2304), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2560), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2816), align 4
  br i1 false, label %.preheader23.preheader..loopexit33_crit_edge, label %.preheader23.loopexit

.preheader23.preheader..loopexit33_crit_edge:     ; preds = %.preheader23.preheader
  br label %.loopexit33

.preheader23.loopexit:                            ; preds = %.preheader23.preheader
  br i1 false, label %.preheader23.loopexit..preheader22.preheader.1_crit_edge, label %.preheader23.preheader.1

.preheader23.loopexit..preheader22.preheader.1_crit_edge: ; preds = %.preheader23.loopexit
  br label %.preheader22.preheader.1

.preheader22.preheader.1:                         ; preds = %.preheader23.loopexit.140..preheader22.preheader.1_crit_edge, %.preheader23.loopexit..preheader22.preheader.1_crit_edge, %.preheader23.loopexit.2
  %storemerge4.lcssa31 = phi i32 [ poison, %.preheader23.loopexit..preheader22.preheader.1_crit_edge ], [ poison, %.preheader23.loopexit.140..preheader22.preheader.1_crit_edge ], [ 2, %.preheader23.loopexit.2 ]
  %139 = zext nneg i32 %storemerge4.lcssa31 to i64
  %140 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %139
  store i32 1, ptr %140, align 4
  %141 = or disjoint i32 %storemerge4.lcssa31, 64
  %142 = zext nneg i32 %141 to i64
  %143 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %142
  store i32 1, ptr %143, align 4
  %144 = or disjoint i32 %storemerge4.lcssa31, 128
  %145 = zext nneg i32 %144 to i64
  %146 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %145
  store i32 1, ptr %146, align 4
  %147 = or disjoint i32 %storemerge4.lcssa31, 192
  %148 = zext nneg i32 %147 to i64
  %149 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %148
  store i32 1, ptr %149, align 4
  br i1 false, label %150, label %.preheader23.loopexit.1

.preheader23.loopexit.1:                          ; preds = %.preheader22.preheader.1
  unreachable

.loopexit33:                                      ; preds = %.preheader23.preheader.1..loopexit33_crit_edge, %.preheader23.preheader..loopexit33_crit_edge, %.preheader23.preheader.2
  %storemerge4.lcssa29.ph = phi i32 [ poison, %.preheader23.preheader..loopexit33_crit_edge ], [ poison, %.preheader23.preheader.1..loopexit33_crit_edge ], [ 2, %.preheader23.preheader.2 ]
  br label %150

150:                                              ; preds = %.loopexit33, %.preheader22.preheader.1
  %storemerge4.lcssa29 = phi i32 [ %storemerge4.lcssa31, %.preheader22.preheader.1 ], [ %storemerge4.lcssa29.ph, %.loopexit33 ]
  %151 = or disjoint i32 %storemerge4.lcssa29, 256
  %152 = zext nneg i32 %151 to i64
  %153 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %152
  store i32 1, ptr %153, align 4
  unreachable

.preheader23.preheader.1:                         ; preds = %.preheader23.loopexit
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2052), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2308), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2564), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2820), align 4
  br i1 false, label %.preheader23.preheader.1..loopexit33_crit_edge, label %.preheader23.loopexit.140

.preheader23.preheader.1..loopexit33_crit_edge:   ; preds = %.preheader23.preheader.1
  br label %.loopexit33

.preheader23.loopexit.140:                        ; preds = %.preheader23.preheader.1
  br i1 false, label %.preheader23.loopexit.140..preheader22.preheader.1_crit_edge, label %154

.preheader23.loopexit.140..preheader22.preheader.1_crit_edge: ; preds = %.preheader23.loopexit.140
  br label %.preheader22.preheader.1

154:                                              ; preds = %.preheader23.loopexit.140
  br i1 false, label %.preheader23.preheader.2, label %.preheader21.preheader

.preheader23.preheader.2:                         ; preds = %154
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2056), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2312), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2568), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2824), align 4
  br i1 false, label %.loopexit33, label %.preheader23.loopexit.2

.preheader23.loopexit.2:                          ; preds = %.preheader23.preheader.2
  br i1 false, label %.preheader22.preheader.1, label %155

155:                                              ; preds = %.preheader23.loopexit.2
  unreachable

.preheader21.preheader:                           ; preds = %154
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  br i1 false, label %.preheader21.preheader..loopexit45_crit_edge, label %.preheader21.1

.preheader21.preheader..loopexit45_crit_edge:     ; preds = %.preheader21.preheader
  br label %.loopexit45

.loopexit4:                                       ; preds = %.preheader21.4
  br i1 false, label %.preheader21.preheader.1, label %.preheader19.preheader

.preheader21.preheader.1:                         ; preds = %.loopexit4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  br i1 false, label %.loopexit45, label %.preheader21.1.1

.preheader21.1.1:                                 ; preds = %.preheader21.preheader.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br i1 false, label %.loopexit45, label %.preheader21.2.1

.preheader21.2.1:                                 ; preds = %.preheader21.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br i1 false, label %.loopexit45, label %.preheader21.3.1

.preheader21.3.1:                                 ; preds = %.preheader21.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4192), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4448), align 4
  br i1 false, label %.loopexit45, label %.preheader21.4.1

.preheader21.4.1:                                 ; preds = %.preheader21.3.1
  br i1 false, label %.preheader20.preheader.4, label %.loopexit4.1

.loopexit4.1:                                     ; preds = %.preheader21.4.1
  unreachable

.loopexit45:                                      ; preds = %.preheader21.3..loopexit45_crit_edge, %.preheader21.2..loopexit45_crit_edge, %.preheader21.1..loopexit45_crit_edge, %.preheader21.preheader..loopexit45_crit_edge, %.preheader21.3.1, %.preheader21.2.1, %.preheader21.1.1, %.preheader21.preheader.1
  %storemerge40.lcssa42.ph = phi i32 [ poison, %.preheader21.3..loopexit45_crit_edge ], [ poison, %.preheader21.2..loopexit45_crit_edge ], [ poison, %.preheader21.1..loopexit45_crit_edge ], [ poison, %.preheader21.preheader..loopexit45_crit_edge ], [ 0, %.preheader21.preheader.1 ], [ 1, %.preheader21.1.1 ], [ 2, %.preheader21.2.1 ], [ 3, %.preheader21.3.1 ]
  br label %156

156:                                              ; preds = %.loopexit45, %.preheader20.preheader.4
  %storemerge40.lcssa42 = phi i32 [ 4, %.preheader20.preheader.4 ], [ %storemerge40.lcssa42.ph, %.loopexit45 ]
  %157 = shl nuw nsw i32 %storemerge40.lcssa42, 3
  %158 = or disjoint i32 128, %157
  %159 = zext nneg i32 %158 to i64
  %160 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %159
  store i32 1, ptr %160, align 4
  unreachable

.preheader21.1:                                   ; preds = %.preheader21.preheader
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br i1 false, label %.preheader21.1..loopexit45_crit_edge, label %.preheader21.2

.preheader21.1..loopexit45_crit_edge:             ; preds = %.preheader21.1
  br label %.loopexit45

.preheader21.2:                                   ; preds = %.preheader21.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br i1 false, label %.preheader21.2..loopexit45_crit_edge, label %.preheader21.3

.preheader21.2..loopexit45_crit_edge:             ; preds = %.preheader21.2
  br label %.loopexit45

.preheader21.3:                                   ; preds = %.preheader21.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4192), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4448), align 4
  br i1 false, label %.preheader21.3..loopexit45_crit_edge, label %.preheader21.4

.preheader21.3..loopexit45_crit_edge:             ; preds = %.preheader21.3
  br label %.loopexit45

.preheader21.4:                                   ; preds = %.preheader21.3
  br i1 false, label %.preheader21.4..preheader20.preheader.4_crit_edge, label %.loopexit4

.preheader21.4..preheader20.preheader.4_crit_edge: ; preds = %.preheader21.4
  br label %.preheader20.preheader.4

.preheader20.preheader.4:                         ; preds = %.preheader21.4..preheader20.preheader.4_crit_edge, %.preheader21.4.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4224), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4480), align 4
  br i1 false, label %156, label %161

161:                                              ; preds = %.preheader20.preheader.4
  unreachable

.preheader19.preheader:                           ; preds = %.loopexit4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), align 4
  br i1 false, label %.preheader19.preheader..loopexit56_crit_edge, label %.preheader19.1

.preheader19.preheader..loopexit56_crit_edge:     ; preds = %.preheader19.preheader
  br label %.loopexit56

.loopexit56:                                      ; preds = %.preheader19.3.1..loopexit56_crit_edge, %.preheader19.2.1..loopexit56_crit_edge, %.preheader19.1.1..loopexit56_crit_edge, %.preheader19.preheader.1..loopexit56_crit_edge, %.preheader19.3..loopexit56_crit_edge, %.preheader19.2..loopexit56_crit_edge, %.preheader19.1..loopexit56_crit_edge, %.preheader19.preheader..loopexit56_crit_edge, %.preheader19.3.2, %.preheader19.2.2, %.preheader19.1.2, %.preheader19.preheader.2
  %storemerge6.lcssa52.ph = phi i32 [ poison, %.preheader19.3..loopexit56_crit_edge ], [ poison, %.preheader19.2..loopexit56_crit_edge ], [ poison, %.preheader19.1..loopexit56_crit_edge ], [ poison, %.preheader19.preheader..loopexit56_crit_edge ], [ poison, %.preheader19.preheader.1..loopexit56_crit_edge ], [ poison, %.preheader19.1.1..loopexit56_crit_edge ], [ poison, %.preheader19.2.1..loopexit56_crit_edge ], [ poison, %.preheader19.3.1..loopexit56_crit_edge ], [ 2, %.preheader19.preheader.2 ], [ 2, %.preheader19.1.2 ], [ 2, %.preheader19.2.2 ], [ 2, %.preheader19.3.2 ]
  %storemerge38.lcssa51.ph = phi i32 [ poison, %.preheader19.3..loopexit56_crit_edge ], [ poison, %.preheader19.2..loopexit56_crit_edge ], [ poison, %.preheader19.1..loopexit56_crit_edge ], [ poison, %.preheader19.preheader..loopexit56_crit_edge ], [ poison, %.preheader19.preheader.1..loopexit56_crit_edge ], [ poison, %.preheader19.1.1..loopexit56_crit_edge ], [ poison, %.preheader19.2.1..loopexit56_crit_edge ], [ poison, %.preheader19.3.1..loopexit56_crit_edge ], [ 0, %.preheader19.preheader.2 ], [ 1, %.preheader19.1.2 ], [ 2, %.preheader19.2.2 ], [ 3, %.preheader19.3.2 ]
  br label %162

162:                                              ; preds = %.loopexit56, %.preheader18.preheader.4
  %storemerge6.lcssa52 = phi i32 [ %storemerge6.lcssa55, %.preheader18.preheader.4 ], [ %storemerge6.lcssa52.ph, %.loopexit56 ]
  %storemerge38.lcssa51 = phi i32 [ 4, %.preheader18.preheader.4 ], [ %storemerge38.lcssa51.ph, %.loopexit56 ]
  %163 = shl nuw nsw i32 %storemerge38.lcssa51, 3
  %164 = or disjoint i32 %storemerge6.lcssa52, %163
  %165 = zext nneg i32 %164 to i64
  %166 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %165
  store i32 1, ptr %166, align 4
  unreachable

.preheader19.1:                                   ; preds = %.preheader19.preheader
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6176), align 4
  br i1 false, label %.preheader19.1..loopexit56_crit_edge, label %.preheader19.2

.preheader19.1..loopexit56_crit_edge:             ; preds = %.preheader19.1
  br label %.loopexit56

.preheader19.2:                                   ; preds = %.preheader19.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6208), align 4
  br i1 false, label %.preheader19.2..loopexit56_crit_edge, label %.preheader19.3

.preheader19.2..loopexit56_crit_edge:             ; preds = %.preheader19.2
  br label %.loopexit56

.preheader19.3:                                   ; preds = %.preheader19.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6240), align 4
  br i1 false, label %.preheader19.3..loopexit56_crit_edge, label %.preheader19.4

.preheader19.3..loopexit56_crit_edge:             ; preds = %.preheader19.3
  br label %.loopexit56

.preheader19.4:                                   ; preds = %.preheader19.3
  br i1 false, label %.preheader19.4..preheader18.preheader.4_crit_edge, label %.preheader19.preheader.1

.preheader19.4..preheader18.preheader.4_crit_edge: ; preds = %.preheader19.4
  br label %.preheader18.preheader.4

.preheader18.preheader.4:                         ; preds = %.preheader19.4.1..preheader18.preheader.4_crit_edge, %.preheader19.4..preheader18.preheader.4_crit_edge, %.preheader19.4.2
  %storemerge6.lcssa55 = phi i32 [ poison, %.preheader19.4..preheader18.preheader.4_crit_edge ], [ poison, %.preheader19.4.1..preheader18.preheader.4_crit_edge ], [ 2, %.preheader19.4.2 ]
  %167 = or disjoint i32 %storemerge6.lcssa55, 32
  %168 = zext nneg i32 %167 to i64
  %169 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %168
  store i32 1, ptr %169, align 4
  br i1 false, label %162, label %170

170:                                              ; preds = %.preheader18.preheader.4
  unreachable

.preheader19.preheader.1:                         ; preds = %.preheader19.4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6148), align 4
  br i1 false, label %.preheader19.preheader.1..loopexit56_crit_edge, label %.preheader19.1.1

.preheader19.preheader.1..loopexit56_crit_edge:   ; preds = %.preheader19.preheader.1
  br label %.loopexit56

.preheader19.1.1:                                 ; preds = %.preheader19.preheader.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6180), align 4
  br i1 false, label %.preheader19.1.1..loopexit56_crit_edge, label %.preheader19.2.1

.preheader19.1.1..loopexit56_crit_edge:           ; preds = %.preheader19.1.1
  br label %.loopexit56

.preheader19.2.1:                                 ; preds = %.preheader19.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6212), align 4
  br i1 false, label %.preheader19.2.1..loopexit56_crit_edge, label %.preheader19.3.1

.preheader19.2.1..loopexit56_crit_edge:           ; preds = %.preheader19.2.1
  br label %.loopexit56

.preheader19.3.1:                                 ; preds = %.preheader19.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6244), align 4
  br i1 false, label %.preheader19.3.1..loopexit56_crit_edge, label %.preheader19.4.1

.preheader19.3.1..loopexit56_crit_edge:           ; preds = %.preheader19.3.1
  br label %.loopexit56

.preheader19.4.1:                                 ; preds = %.preheader19.3.1
  br i1 false, label %.preheader19.4.1..preheader18.preheader.4_crit_edge, label %171

.preheader19.4.1..preheader18.preheader.4_crit_edge: ; preds = %.preheader19.4.1
  br label %.preheader18.preheader.4

171:                                              ; preds = %.preheader19.4.1
  br i1 false, label %.preheader19.preheader.2, label %.preheader17.preheader

.preheader19.preheader.2:                         ; preds = %171
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6152), align 4
  br i1 false, label %.loopexit56, label %.preheader19.1.2

.preheader19.1.2:                                 ; preds = %.preheader19.preheader.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6184), align 4
  br i1 false, label %.loopexit56, label %.preheader19.2.2

.preheader19.2.2:                                 ; preds = %.preheader19.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6216), align 4
  br i1 false, label %.loopexit56, label %.preheader19.3.2

.preheader19.3.2:                                 ; preds = %.preheader19.2.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6248), align 4
  br i1 false, label %.loopexit56, label %.preheader19.4.2

.preheader19.4.2:                                 ; preds = %.preheader19.3.2
  br i1 false, label %.preheader18.preheader.4, label %172

172:                                              ; preds = %.preheader19.4.2
  unreachable

.preheader17.preheader:                           ; preds = %171
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8448), align 4
  br i1 false, label %.preheader17.preheader..loopexit69_crit_edge, label %.preheader17.loopexit

.preheader17.preheader..loopexit69_crit_edge:     ; preds = %.preheader17.preheader
  br label %.loopexit69

.preheader17.loopexit:                            ; preds = %.preheader17.preheader
  br i1 false, label %.preheader17.loopexit..preheader16.preheader.1_crit_edge, label %.preheader17.preheader.1

.preheader17.loopexit..preheader16.preheader.1_crit_edge: ; preds = %.preheader17.loopexit
  br label %.preheader16.preheader.1

.preheader16.preheader.1:                         ; preds = %.preheader17.loopexit.3..preheader16.preheader.1_crit_edge, %.preheader17.loopexit.2..preheader16.preheader.1_crit_edge, %.preheader17.loopexit.174..preheader16.preheader.1_crit_edge, %.preheader17.loopexit..preheader16.preheader.1_crit_edge, %.preheader17.loopexit.4
  %storemerge7.lcssa67 = phi i32 [ poison, %.preheader17.loopexit..preheader16.preheader.1_crit_edge ], [ poison, %.preheader17.loopexit.174..preheader16.preheader.1_crit_edge ], [ poison, %.preheader17.loopexit.2..preheader16.preheader.1_crit_edge ], [ poison, %.preheader17.loopexit.3..preheader16.preheader.1_crit_edge ], [ 4, %.preheader17.loopexit.4 ]
  %173 = zext nneg i32 %storemerge7.lcssa67 to i64
  %174 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %173
  store i32 1, ptr %174, align 4
  %175 = or disjoint i32 %storemerge7.lcssa67, 64
  %176 = zext nneg i32 %175 to i64
  %177 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %176
  store i32 1, ptr %177, align 4
  br i1 false, label %178, label %.preheader17.loopexit.1

.preheader17.loopexit.1:                          ; preds = %.preheader16.preheader.1
  unreachable

.loopexit69:                                      ; preds = %.preheader17.preheader.3..loopexit69_crit_edge, %.preheader17.preheader.2..loopexit69_crit_edge, %.preheader17.preheader.1..loopexit69_crit_edge, %.preheader17.preheader..loopexit69_crit_edge, %.preheader17.preheader.4
  %storemerge7.lcssa65.ph = phi i32 [ poison, %.preheader17.preheader..loopexit69_crit_edge ], [ poison, %.preheader17.preheader.1..loopexit69_crit_edge ], [ poison, %.preheader17.preheader.2..loopexit69_crit_edge ], [ poison, %.preheader17.preheader.3..loopexit69_crit_edge ], [ 4, %.preheader17.preheader.4 ]
  br label %178

178:                                              ; preds = %.loopexit69, %.preheader16.preheader.1
  %storemerge7.lcssa65 = phi i32 [ %storemerge7.lcssa67, %.preheader16.preheader.1 ], [ %storemerge7.lcssa65.ph, %.loopexit69 ]
  %179 = or disjoint i32 %storemerge7.lcssa65, 128
  %180 = zext nneg i32 %179 to i64
  %181 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %180
  store i32 1, ptr %181, align 4
  unreachable

.preheader17.preheader.1:                         ; preds = %.preheader17.loopexit
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8196), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8452), align 4
  br i1 false, label %.preheader17.preheader.1..loopexit69_crit_edge, label %.preheader17.loopexit.174

.preheader17.preheader.1..loopexit69_crit_edge:   ; preds = %.preheader17.preheader.1
  br label %.loopexit69

.preheader17.loopexit.174:                        ; preds = %.preheader17.preheader.1
  br i1 false, label %.preheader17.loopexit.174..preheader16.preheader.1_crit_edge, label %.preheader17.preheader.2

.preheader17.loopexit.174..preheader16.preheader.1_crit_edge: ; preds = %.preheader17.loopexit.174
  br label %.preheader16.preheader.1

.preheader17.preheader.2:                         ; preds = %.preheader17.loopexit.174
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8200), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8456), align 4
  br i1 false, label %.preheader17.preheader.2..loopexit69_crit_edge, label %.preheader17.loopexit.2

.preheader17.preheader.2..loopexit69_crit_edge:   ; preds = %.preheader17.preheader.2
  br label %.loopexit69

.preheader17.loopexit.2:                          ; preds = %.preheader17.preheader.2
  br i1 false, label %.preheader17.loopexit.2..preheader16.preheader.1_crit_edge, label %.preheader17.preheader.3

.preheader17.loopexit.2..preheader16.preheader.1_crit_edge: ; preds = %.preheader17.loopexit.2
  br label %.preheader16.preheader.1

.preheader17.preheader.3:                         ; preds = %.preheader17.loopexit.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8204), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8460), align 4
  br i1 false, label %.preheader17.preheader.3..loopexit69_crit_edge, label %.preheader17.loopexit.3

.preheader17.preheader.3..loopexit69_crit_edge:   ; preds = %.preheader17.preheader.3
  br label %.loopexit69

.preheader17.loopexit.3:                          ; preds = %.preheader17.preheader.3
  br i1 false, label %.preheader17.loopexit.3..preheader16.preheader.1_crit_edge, label %182

.preheader17.loopexit.3..preheader16.preheader.1_crit_edge: ; preds = %.preheader17.loopexit.3
  br label %.preheader16.preheader.1

182:                                              ; preds = %.preheader17.loopexit.3
  br i1 false, label %.preheader17.preheader.4, label %.preheader15.preheader

.preheader17.preheader.4:                         ; preds = %182
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8208), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8464), align 4
  br i1 false, label %.loopexit69, label %.preheader17.loopexit.4

.preheader17.loopexit.4:                          ; preds = %.preheader17.preheader.4
  br i1 false, label %.preheader16.preheader.1, label %183

183:                                              ; preds = %.preheader17.loopexit.4
  unreachable

.preheader15.preheader:                           ; preds = %182
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  br i1 false, label %.preheader15.preheader..loopexit79_crit_edge, label %.preheader15.1

.preheader15.preheader..loopexit79_crit_edge:     ; preds = %.preheader15.preheader
  br label %.loopexit79

.loopexit3:                                       ; preds = %.preheader15.2
  br i1 false, label %.preheader15.preheader.1, label %.preheader13.preheader

.preheader15.preheader.1:                         ; preds = %.loopexit3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  br i1 false, label %.loopexit79, label %.preheader15.1.1

.preheader15.1.1:                                 ; preds = %.preheader15.preheader.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10272), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10528), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10784), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11040), align 4
  br i1 false, label %.loopexit79, label %.preheader15.2.1

.preheader15.2.1:                                 ; preds = %.preheader15.1.1
  br i1 false, label %.preheader14.preheader.2, label %.loopexit3.1

.loopexit3.1:                                     ; preds = %.preheader15.2.1
  unreachable

.loopexit79:                                      ; preds = %.preheader15.1..loopexit79_crit_edge, %.preheader15.preheader..loopexit79_crit_edge, %.preheader15.1.1, %.preheader15.preheader.1
  %storemerge34.lcssa76.ph = phi i32 [ poison, %.preheader15.1..loopexit79_crit_edge ], [ poison, %.preheader15.preheader..loopexit79_crit_edge ], [ 0, %.preheader15.preheader.1 ], [ 1, %.preheader15.1.1 ]
  br label %184

184:                                              ; preds = %.loopexit79, %.preheader14.preheader.2
  %storemerge34.lcssa76 = phi i32 [ 2, %.preheader14.preheader.2 ], [ %storemerge34.lcssa76.ph, %.loopexit79 ]
  %185 = shl nuw nsw i32 %storemerge34.lcssa76, 3
  %186 = or disjoint i32 256, %185
  %187 = zext nneg i32 %186 to i64
  %188 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %187
  store i32 1, ptr %188, align 4
  unreachable

.preheader15.1:                                   ; preds = %.preheader15.preheader
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10272), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10528), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10784), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11040), align 4
  br i1 false, label %.preheader15.1..loopexit79_crit_edge, label %.preheader15.2

.preheader15.1..loopexit79_crit_edge:             ; preds = %.preheader15.1
  br label %.loopexit79

.preheader15.2:                                   ; preds = %.preheader15.1
  br i1 false, label %.preheader15.2..preheader14.preheader.2_crit_edge, label %.loopexit3

.preheader15.2..preheader14.preheader.2_crit_edge: ; preds = %.preheader15.2
  br label %.preheader14.preheader.2

.preheader14.preheader.2:                         ; preds = %.preheader15.2..preheader14.preheader.2_crit_edge, %.preheader15.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10304), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10560), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10816), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11072), align 4
  br i1 false, label %184, label %189

189:                                              ; preds = %.preheader14.preheader.2
  unreachable

.preheader13.preheader:                           ; preds = %.loopexit3
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), align 4
  br i1 false, label %.preheader13.preheader..loopexit91_crit_edge, label %.preheader13.loopexit

.preheader13.preheader..loopexit91_crit_edge:     ; preds = %.preheader13.preheader
  br label %.loopexit91

.preheader13.loopexit:                            ; preds = %.preheader13.preheader
  br i1 false, label %.preheader13.loopexit..preheader12.preheader.1_crit_edge, label %.preheader13.preheader.1

.preheader13.loopexit..preheader12.preheader.1_crit_edge: ; preds = %.preheader13.loopexit
  br label %.preheader12.preheader.1

.preheader12.preheader.1:                         ; preds = %.preheader13.loopexit.2..preheader12.preheader.1_crit_edge, %.preheader13.loopexit.195..preheader12.preheader.1_crit_edge, %.preheader13.loopexit..preheader12.preheader.1_crit_edge, %.preheader13.loopexit.3
  %storemerge9.lcssa90 = phi i32 [ poison, %.preheader13.loopexit..preheader12.preheader.1_crit_edge ], [ poison, %.preheader13.loopexit.195..preheader12.preheader.1_crit_edge ], [ poison, %.preheader13.loopexit.2..preheader12.preheader.1_crit_edge ], [ 3, %.preheader13.loopexit.3 ]
  %190 = zext nneg i32 %storemerge9.lcssa90 to i64
  %191 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %190
  store i32 1, ptr %191, align 4
  br i1 false, label %192, label %.preheader13.loopexit.1

.preheader13.loopexit.1:                          ; preds = %.preheader12.preheader.1
  unreachable

.loopexit91:                                      ; preds = %.preheader13.preheader.2..loopexit91_crit_edge, %.preheader13.preheader.1..loopexit91_crit_edge, %.preheader13.preheader..loopexit91_crit_edge, %.preheader13.preheader.3
  %storemerge9.lcssa87.ph = phi i32 [ poison, %.preheader13.preheader..loopexit91_crit_edge ], [ poison, %.preheader13.preheader.1..loopexit91_crit_edge ], [ poison, %.preheader13.preheader.2..loopexit91_crit_edge ], [ 3, %.preheader13.preheader.3 ]
  %.pre162 = zext nneg i32 %storemerge9.lcssa87.ph to i64
  br label %192

192:                                              ; preds = %.loopexit91, %.preheader12.preheader.1
  %.pre-phi = phi i64 [ %.pre162, %.loopexit91 ], [ %190, %.preheader12.preheader.1 ]
  %storemerge9.lcssa87 = phi i32 [ %storemerge9.lcssa90, %.preheader12.preheader.1 ], [ %storemerge9.lcssa87.ph, %.loopexit91 ]
  %193 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %.pre-phi
  store i32 1, ptr %193, align 4
  unreachable

.preheader13.preheader.1:                         ; preds = %.preheader13.loopexit
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12292), align 4
  br i1 false, label %.preheader13.preheader.1..loopexit91_crit_edge, label %.preheader13.loopexit.195

.preheader13.preheader.1..loopexit91_crit_edge:   ; preds = %.preheader13.preheader.1
  br label %.loopexit91

.preheader13.loopexit.195:                        ; preds = %.preheader13.preheader.1
  br i1 false, label %.preheader13.loopexit.195..preheader12.preheader.1_crit_edge, label %.preheader13.preheader.2

.preheader13.loopexit.195..preheader12.preheader.1_crit_edge: ; preds = %.preheader13.loopexit.195
  br label %.preheader12.preheader.1

.preheader13.preheader.2:                         ; preds = %.preheader13.loopexit.195
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12296), align 4
  br i1 false, label %.preheader13.preheader.2..loopexit91_crit_edge, label %.preheader13.loopexit.2

.preheader13.preheader.2..loopexit91_crit_edge:   ; preds = %.preheader13.preheader.2
  br label %.loopexit91

.preheader13.loopexit.2:                          ; preds = %.preheader13.preheader.2
  br i1 false, label %.preheader13.loopexit.2..preheader12.preheader.1_crit_edge, label %194

.preheader13.loopexit.2..preheader12.preheader.1_crit_edge: ; preds = %.preheader13.loopexit.2
  br label %.preheader12.preheader.1

194:                                              ; preds = %.preheader13.loopexit.2
  br i1 false, label %.preheader13.preheader.3, label %.preheader11.preheader

.preheader13.preheader.3:                         ; preds = %194
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12300), align 4
  br i1 false, label %.loopexit91, label %.preheader13.loopexit.3

.preheader13.loopexit.3:                          ; preds = %.preheader13.preheader.3
  br i1 false, label %.preheader12.preheader.1, label %195

195:                                              ; preds = %.preheader13.loopexit.3
  unreachable

.preheader11.preheader:                           ; preds = %194
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br i1 false, label %.preheader11.preheader..loopexit98_crit_edge, label %.preheader11.1

.preheader11.preheader..loopexit98_crit_edge:     ; preds = %.preheader11.preheader
  br label %.loopexit98

.loopexit2:                                       ; preds = %.preheader11.3
  br i1 false, label %.preheader11.preheader.1, label %.preheader9.preheader

.preheader11.preheader.1:                         ; preds = %.loopexit2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br i1 false, label %.loopexit98, label %.preheader11.1.1

.preheader11.1.1:                                 ; preds = %.preheader11.preheader.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br i1 false, label %.loopexit98, label %.preheader11.2.1

.preheader11.2.1:                                 ; preds = %.preheader11.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  br i1 false, label %.loopexit98, label %.preheader11.3.1

.preheader11.3.1:                                 ; preds = %.preheader11.2.1
  br i1 false, label %.preheader10.preheader.3, label %.loopexit2.1

.loopexit2.1:                                     ; preds = %.preheader11.3.1
  unreachable

.loopexit98:                                      ; preds = %.preheader11.2..loopexit98_crit_edge, %.preheader11.1..loopexit98_crit_edge, %.preheader11.preheader..loopexit98_crit_edge, %.preheader11.2.1, %.preheader11.1.1, %.preheader11.preheader.1
  %storemerge30.lcssa96.ph = phi i32 [ poison, %.preheader11.2..loopexit98_crit_edge ], [ poison, %.preheader11.1..loopexit98_crit_edge ], [ poison, %.preheader11.preheader..loopexit98_crit_edge ], [ 0, %.preheader11.preheader.1 ], [ 1, %.preheader11.1.1 ], [ 2, %.preheader11.2.1 ]
  br label %196

196:                                              ; preds = %.loopexit98, %.preheader10.preheader.3
  %storemerge30.lcssa96 = phi i32 [ 3, %.preheader10.preheader.3 ], [ %storemerge30.lcssa96.ph, %.loopexit98 ]
  %197 = shl nuw nsw i32 %storemerge30.lcssa96, 3
  %198 = zext nneg i32 %197 to i64
  %199 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %198
  store i32 1, ptr %199, align 4
  unreachable

.preheader11.1:                                   ; preds = %.preheader11.preheader
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br i1 false, label %.preheader11.1..loopexit98_crit_edge, label %.preheader11.2

.preheader11.1..loopexit98_crit_edge:             ; preds = %.preheader11.1
  br label %.loopexit98

.preheader11.2:                                   ; preds = %.preheader11.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  br i1 false, label %.preheader11.2..loopexit98_crit_edge, label %.preheader11.3

.preheader11.2..loopexit98_crit_edge:             ; preds = %.preheader11.2
  br label %.loopexit98

.preheader11.3:                                   ; preds = %.preheader11.2
  br i1 false, label %.preheader11.3..preheader10.preheader.3_crit_edge, label %.loopexit2

.preheader11.3..preheader10.preheader.3_crit_edge: ; preds = %.preheader11.3
  br label %.preheader10.preheader.3

.preheader10.preheader.3:                         ; preds = %.preheader11.3..preheader10.preheader.3_crit_edge, %.preheader11.3.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14432), align 4
  br i1 false, label %196, label %200

200:                                              ; preds = %.preheader10.preheader.3
  unreachable

.preheader9.preheader:                            ; preds = %.loopexit2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %.preheader9.preheader..loopexit104_crit_edge, label %.preheader9.loopexit

.preheader9.preheader..loopexit104_crit_edge:     ; preds = %.preheader9.preheader
  br label %.loopexit104

.loopexit1:                                       ; preds = %.preheader9.loopexit
  br i1 false, label %.preheader9.preheader.1, label %.preheader7.preheader

.preheader9.preheader.1:                          ; preds = %.loopexit1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %.loopexit104, label %.preheader9.loopexit.1110

.preheader9.loopexit.1110:                        ; preds = %.preheader9.preheader.1
  br i1 false, label %.preheader8.preheader.1, label %.loopexit1.1

.loopexit1.1:                                     ; preds = %.preheader9.loopexit.1110
  unreachable

.preheader9.loopexit:                             ; preds = %.preheader9.preheader
  br i1 false, label %.preheader9.loopexit..preheader8.preheader.1_crit_edge, label %.loopexit1

.preheader9.loopexit..preheader8.preheader.1_crit_edge: ; preds = %.preheader9.loopexit
  br label %.preheader8.preheader.1

.preheader8.preheader.1:                          ; preds = %.preheader9.loopexit..preheader8.preheader.1_crit_edge, %.preheader9.loopexit.1110
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %201, label %.preheader9.loopexit.1

.preheader9.loopexit.1:                           ; preds = %.preheader8.preheader.1
  unreachable

.loopexit104:                                     ; preds = %.preheader9.preheader..loopexit104_crit_edge, %.preheader9.preheader.1
  br label %201

201:                                              ; preds = %.loopexit104, %.preheader8.preheader.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 17152), align 4
  unreachable

.preheader7.preheader:                            ; preds = %.loopexit1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), align 4
  br i1 false, label %.preheader7.preheader..loopexit116_crit_edge, label %.preheader7.1

.preheader7.preheader..loopexit116_crit_edge:     ; preds = %.preheader7.preheader
  br label %.loopexit116

.loopexit116:                                     ; preds = %.preheader7.1.1..loopexit116_crit_edge, %.preheader7.preheader.1..loopexit116_crit_edge, %.preheader7.1..loopexit116_crit_edge, %.preheader7.preheader..loopexit116_crit_edge, %.preheader7.1.2, %.preheader7.preheader.2
  %storemerge12.lcssa112.ph = phi i32 [ poison, %.preheader7.1..loopexit116_crit_edge ], [ poison, %.preheader7.preheader..loopexit116_crit_edge ], [ poison, %.preheader7.preheader.1..loopexit116_crit_edge ], [ poison, %.preheader7.1.1..loopexit116_crit_edge ], [ 2, %.preheader7.preheader.2 ], [ 2, %.preheader7.1.2 ]
  %storemerge26.lcssa111.ph = phi i32 [ poison, %.preheader7.1..loopexit116_crit_edge ], [ poison, %.preheader7.preheader..loopexit116_crit_edge ], [ poison, %.preheader7.preheader.1..loopexit116_crit_edge ], [ poison, %.preheader7.1.1..loopexit116_crit_edge ], [ 0, %.preheader7.preheader.2 ], [ 1, %.preheader7.1.2 ]
  br label %202

202:                                              ; preds = %.loopexit116, %.preheader6.preheader.2
  %storemerge12.lcssa112 = phi i32 [ %storemerge12.lcssa115, %.preheader6.preheader.2 ], [ %storemerge12.lcssa112.ph, %.loopexit116 ]
  %storemerge26.lcssa111 = phi i32 [ 2, %.preheader6.preheader.2 ], [ %storemerge26.lcssa111.ph, %.loopexit116 ]
  %203 = shl nuw nsw i32 %storemerge26.lcssa111, 3
  %204 = or disjoint i32 %storemerge12.lcssa112, %203
  %205 = zext nneg i32 %204 to i64
  %206 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %205
  store i32 1, ptr %206, align 4
  unreachable

.preheader7.1:                                    ; preds = %.preheader7.preheader
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18464), align 4
  br i1 false, label %.preheader7.1..loopexit116_crit_edge, label %.preheader7.2

.preheader7.1..loopexit116_crit_edge:             ; preds = %.preheader7.1
  br label %.loopexit116

.preheader7.2:                                    ; preds = %.preheader7.1
  br i1 false, label %.preheader7.2..preheader6.preheader.2_crit_edge, label %.preheader7.preheader.1

.preheader7.2..preheader6.preheader.2_crit_edge:  ; preds = %.preheader7.2
  br label %.preheader6.preheader.2

.preheader6.preheader.2:                          ; preds = %.preheader7.2.1..preheader6.preheader.2_crit_edge, %.preheader7.2..preheader6.preheader.2_crit_edge, %.preheader7.2.2
  %storemerge12.lcssa115 = phi i32 [ poison, %.preheader7.2..preheader6.preheader.2_crit_edge ], [ poison, %.preheader7.2.1..preheader6.preheader.2_crit_edge ], [ 2, %.preheader7.2.2 ]
  %207 = or disjoint i32 %storemerge12.lcssa115, 16
  %208 = zext nneg i32 %207 to i64
  %209 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %208
  store i32 1, ptr %209, align 4
  br i1 false, label %202, label %210

210:                                              ; preds = %.preheader6.preheader.2
  unreachable

.preheader7.preheader.1:                          ; preds = %.preheader7.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18436), align 4
  br i1 false, label %.preheader7.preheader.1..loopexit116_crit_edge, label %.preheader7.1.1

.preheader7.preheader.1..loopexit116_crit_edge:   ; preds = %.preheader7.preheader.1
  br label %.loopexit116

.preheader7.1.1:                                  ; preds = %.preheader7.preheader.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18468), align 4
  br i1 false, label %.preheader7.1.1..loopexit116_crit_edge, label %.preheader7.2.1

.preheader7.1.1..loopexit116_crit_edge:           ; preds = %.preheader7.1.1
  br label %.loopexit116

.preheader7.2.1:                                  ; preds = %.preheader7.1.1
  br i1 false, label %.preheader7.2.1..preheader6.preheader.2_crit_edge, label %211

.preheader7.2.1..preheader6.preheader.2_crit_edge: ; preds = %.preheader7.2.1
  br label %.preheader6.preheader.2

211:                                              ; preds = %.preheader7.2.1
  br i1 false, label %.preheader7.preheader.2, label %.preheader5.preheader

.preheader7.preheader.2:                          ; preds = %211
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18440), align 4
  br i1 false, label %.loopexit116, label %.preheader7.1.2

.preheader7.1.2:                                  ; preds = %.preheader7.preheader.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18472), align 4
  br i1 false, label %.loopexit116, label %.preheader7.2.2

.preheader7.2.2:                                  ; preds = %.preheader7.1.2
  br i1 false, label %.preheader6.preheader.2, label %212

212:                                              ; preds = %.preheader7.2.2
  unreachable

.preheader5.preheader:                            ; preds = %211
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20736), align 4
  br i1 false, label %.preheader5.preheader..loopexit129_crit_edge, label %.preheader5.loopexit

.preheader5.preheader..loopexit129_crit_edge:     ; preds = %.preheader5.preheader
  br label %.loopexit129

.preheader5.loopexit:                             ; preds = %.preheader5.preheader
  br i1 false, label %.preheader5.loopexit..preheader4.preheader.1_crit_edge, label %.preheader5.preheader.1

.preheader5.loopexit..preheader4.preheader.1_crit_edge: ; preds = %.preheader5.loopexit
  br label %.preheader4.preheader.1

.preheader4.preheader.1:                          ; preds = %.preheader5.loopexit.1134..preheader4.preheader.1_crit_edge, %.preheader5.loopexit..preheader4.preheader.1_crit_edge, %.preheader5.loopexit.2
  %storemerge13.lcssa127 = phi i32 [ poison, %.preheader5.loopexit..preheader4.preheader.1_crit_edge ], [ poison, %.preheader5.loopexit.1134..preheader4.preheader.1_crit_edge ], [ 2, %.preheader5.loopexit.2 ]
  %213 = zext nneg i32 %storemerge13.lcssa127 to i64
  %214 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %213
  store i32 1, ptr %214, align 4
  %215 = or disjoint i32 %storemerge13.lcssa127, 64
  %216 = zext nneg i32 %215 to i64
  %217 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %216
  store i32 1, ptr %217, align 4
  br i1 false, label %218, label %.preheader5.loopexit.1

.preheader5.loopexit.1:                           ; preds = %.preheader4.preheader.1
  unreachable

.loopexit129:                                     ; preds = %.preheader5.preheader.1..loopexit129_crit_edge, %.preheader5.preheader..loopexit129_crit_edge, %.preheader5.preheader.2
  %storemerge13.lcssa125.ph = phi i32 [ poison, %.preheader5.preheader..loopexit129_crit_edge ], [ poison, %.preheader5.preheader.1..loopexit129_crit_edge ], [ 2, %.preheader5.preheader.2 ]
  br label %218

218:                                              ; preds = %.loopexit129, %.preheader4.preheader.1
  %storemerge13.lcssa125 = phi i32 [ %storemerge13.lcssa127, %.preheader4.preheader.1 ], [ %storemerge13.lcssa125.ph, %.loopexit129 ]
  %219 = or disjoint i32 %storemerge13.lcssa125, 128
  %220 = zext nneg i32 %219 to i64
  %221 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %220
  store i32 1, ptr %221, align 4
  unreachable

.preheader5.preheader.1:                          ; preds = %.preheader5.loopexit
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20484), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20740), align 4
  br i1 false, label %.preheader5.preheader.1..loopexit129_crit_edge, label %.preheader5.loopexit.1134

.preheader5.preheader.1..loopexit129_crit_edge:   ; preds = %.preheader5.preheader.1
  br label %.loopexit129

.preheader5.loopexit.1134:                        ; preds = %.preheader5.preheader.1
  br i1 false, label %.preheader5.loopexit.1134..preheader4.preheader.1_crit_edge, label %222

.preheader5.loopexit.1134..preheader4.preheader.1_crit_edge: ; preds = %.preheader5.loopexit.1134
  br label %.preheader4.preheader.1

222:                                              ; preds = %.preheader5.loopexit.1134
  br i1 false, label %.preheader5.preheader.2, label %.preheader3.preheader

.preheader5.preheader.2:                          ; preds = %222
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20488), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20744), align 4
  br i1 false, label %.loopexit129, label %.preheader5.loopexit.2

.preheader5.loopexit.2:                           ; preds = %.preheader5.preheader.2
  br i1 false, label %.preheader4.preheader.1, label %223

223:                                              ; preds = %.preheader5.loopexit.2
  unreachable

.preheader3.preheader:                            ; preds = %222
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  br i1 false, label %.preheader3.preheader..loopexit139_crit_edge, label %.preheader3.1

.preheader3.preheader..loopexit139_crit_edge:     ; preds = %.preheader3.preheader
  br label %.loopexit139

.loopexit:                                        ; preds = %.preheader3.2
  br i1 false, label %.preheader3.preheader.1, label %.preheader1.preheader

.preheader3.preheader.1:                          ; preds = %.loopexit
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  br i1 false, label %.loopexit139, label %.preheader3.1.1

.preheader3.1.1:                                  ; preds = %.preheader3.preheader.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  br i1 false, label %.loopexit139, label %.preheader3.2.1

.preheader3.2.1:                                  ; preds = %.preheader3.1.1
  br i1 false, label %.preheader2.preheader.2, label %.loopexit.1

.loopexit.1:                                      ; preds = %.preheader3.2.1
  unreachable

.loopexit139:                                     ; preds = %.preheader3.1..loopexit139_crit_edge, %.preheader3.preheader..loopexit139_crit_edge, %.preheader3.1.1, %.preheader3.preheader.1
  %storemerge22.lcssa136.ph = phi i32 [ poison, %.preheader3.1..loopexit139_crit_edge ], [ poison, %.preheader3.preheader..loopexit139_crit_edge ], [ 0, %.preheader3.preheader.1 ], [ 1, %.preheader3.1.1 ]
  br label %224

224:                                              ; preds = %.loopexit139, %.preheader2.preheader.2
  %storemerge22.lcssa136 = phi i32 [ 2, %.preheader2.preheader.2 ], [ %storemerge22.lcssa136.ph, %.loopexit139 ]
  %225 = shl nuw nsw i32 %storemerge22.lcssa136, 3
  %226 = or disjoint i32 128, %225
  %227 = zext nneg i32 %226 to i64
  %228 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %227
  store i32 1, ptr %228, align 4
  unreachable

.preheader3.1:                                    ; preds = %.preheader3.preheader
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  br i1 false, label %.preheader3.1..loopexit139_crit_edge, label %.preheader3.2

.preheader3.1..loopexit139_crit_edge:             ; preds = %.preheader3.1
  br label %.loopexit139

.preheader3.2:                                    ; preds = %.preheader3.1
  br i1 false, label %.preheader3.2..preheader2.preheader.2_crit_edge, label %.loopexit

.preheader3.2..preheader2.preheader.2_crit_edge:  ; preds = %.preheader3.2
  br label %.preheader2.preheader.2

.preheader2.preheader.2:                          ; preds = %.preheader3.2..preheader2.preheader.2_crit_edge, %.preheader3.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22592), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22848), align 4
  br i1 false, label %224, label %229

229:                                              ; preds = %.preheader2.preheader.2
  unreachable

.preheader1.preheader:                            ; preds = %.loopexit
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24832), align 4
  br i1 false, label %.preheader1.preheader..loopexit151_crit_edge, label %.preheader1.1

.preheader1.preheader..loopexit151_crit_edge:     ; preds = %.preheader1.preheader
  br label %.loopexit151

.loopexit151:                                     ; preds = %.preheader1.1.1..loopexit151_crit_edge, %.preheader1.preheader.1..loopexit151_crit_edge, %.preheader1.1..loopexit151_crit_edge, %.preheader1.preheader..loopexit151_crit_edge, %.preheader1.1.2, %.preheader1.preheader.2
  %storemerge15.lcssa146.ph = phi i32 [ poison, %.preheader1.1..loopexit151_crit_edge ], [ poison, %.preheader1.preheader..loopexit151_crit_edge ], [ poison, %.preheader1.preheader.1..loopexit151_crit_edge ], [ poison, %.preheader1.1.1..loopexit151_crit_edge ], [ 2, %.preheader1.preheader.2 ], [ 2, %.preheader1.1.2 ]
  %storemerge20.lcssa145.ph = phi i32 [ poison, %.preheader1.1..loopexit151_crit_edge ], [ poison, %.preheader1.preheader..loopexit151_crit_edge ], [ poison, %.preheader1.preheader.1..loopexit151_crit_edge ], [ poison, %.preheader1.1.1..loopexit151_crit_edge ], [ 0, %.preheader1.preheader.2 ], [ 1, %.preheader1.1.2 ]
  br label %230

230:                                              ; preds = %.loopexit151, %.preheader.preheader.2
  %storemerge15.lcssa146 = phi i32 [ %storemerge15.lcssa150, %.preheader.preheader.2 ], [ %storemerge15.lcssa146.ph, %.loopexit151 ]
  %storemerge20.lcssa145 = phi i32 [ 2, %.preheader.preheader.2 ], [ %storemerge20.lcssa145.ph, %.loopexit151 ]
  %231 = shl nuw nsw i32 %storemerge20.lcssa145, 3
  %232 = or disjoint i32 128, %231
  %233 = or disjoint i32 %storemerge15.lcssa146, %232
  %234 = zext nneg i32 %233 to i64
  %235 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %234
  store i32 1, ptr %235, align 4
  unreachable

.preheader1.1:                                    ; preds = %.preheader1.preheader
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24608), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24864), align 4
  br i1 false, label %.preheader1.1..loopexit151_crit_edge, label %.preheader1.2

.preheader1.1..loopexit151_crit_edge:             ; preds = %.preheader1.1
  br label %.loopexit151

.preheader1.2:                                    ; preds = %.preheader1.1
  br i1 false, label %.preheader1.2..preheader.preheader.2_crit_edge, label %.preheader1.preheader.1

.preheader1.2..preheader.preheader.2_crit_edge:   ; preds = %.preheader1.2
  br label %.preheader.preheader.2

.preheader.preheader.2:                           ; preds = %.preheader1.2.1..preheader.preheader.2_crit_edge, %.preheader1.2..preheader.preheader.2_crit_edge, %.preheader1.2.2
  %storemerge15.lcssa150 = phi i32 [ poison, %.preheader1.2..preheader.preheader.2_crit_edge ], [ poison, %.preheader1.2.1..preheader.preheader.2_crit_edge ], [ 2, %.preheader1.2.2 ]
  %236 = or disjoint i32 %storemerge15.lcssa150, 16
  %237 = zext nneg i32 %236 to i64
  %238 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %237
  store i32 1, ptr %238, align 4
  %239 = or disjoint i32 %storemerge15.lcssa150, 80
  %240 = zext nneg i32 %239 to i64
  %241 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %240
  store i32 1, ptr %241, align 4
  br i1 false, label %230, label %242

242:                                              ; preds = %.preheader.preheader.2
  unreachable

.preheader1.preheader.1:                          ; preds = %.preheader1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24580), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24836), align 4
  br i1 false, label %.preheader1.preheader.1..loopexit151_crit_edge, label %.preheader1.1.1

.preheader1.preheader.1..loopexit151_crit_edge:   ; preds = %.preheader1.preheader.1
  br label %.loopexit151

.preheader1.1.1:                                  ; preds = %.preheader1.preheader.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24612), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24868), align 4
  br i1 false, label %.preheader1.1.1..loopexit151_crit_edge, label %.preheader1.2.1

.preheader1.1.1..loopexit151_crit_edge:           ; preds = %.preheader1.1.1
  br label %.loopexit151

.preheader1.2.1:                                  ; preds = %.preheader1.1.1
  br i1 false, label %.preheader1.2.1..preheader.preheader.2_crit_edge, label %243

.preheader1.2.1..preheader.preheader.2_crit_edge: ; preds = %.preheader1.2.1
  br label %.preheader.preheader.2

243:                                              ; preds = %.preheader1.2.1
  br i1 false, label %.preheader1.preheader.2, label %245

.preheader1.preheader.2:                          ; preds = %243
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24584), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24840), align 4
  br i1 false, label %.loopexit151, label %.preheader1.1.2

.preheader1.1.2:                                  ; preds = %.preheader1.preheader.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24616), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24872), align 4
  br i1 false, label %.loopexit151, label %.preheader1.2.2

.preheader1.2.2:                                  ; preds = %.preheader1.1.2
  br i1 false, label %.preheader.preheader.2, label %244

244:                                              ; preds = %.preheader1.2.2
  unreachable

245:                                              ; preds = %243
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %246 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %246, 0
  br i1 %.not, label %249, label %247

247:                                              ; preds = %245
  %248 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %248, ptr @n, align 4
  br label %250

249:                                              ; preds = %245
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %250

250:                                              ; preds = %249, %247
  %251 = phi i32 [ %.pre, %249 ], [ %248, %247 ]
  %252 = call i32 @Trial(i32 noundef %251)
  %.not16 = icmp eq i32 %252, 0
  br i1 %.not16, label %253, label %254

253:                                              ; preds = %250
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %257

254:                                              ; preds = %250
  %255 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %255, 2005
  br i1 %.not18, label %257, label %256

256:                                              ; preds = %254
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %257

257:                                              ; preds = %256, %254, %253
  %258 = load i32, ptr @n, align 4
  %259 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %258) #4
  %260 = load i32, ptr @kount, align 4
  %261 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %260) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %3, %0
  %storemerge = phi i32 [ 0, %0 ], [ %4, %3 ]
  %2 = icmp samesign ult i32 %storemerge, 100
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  call void @Puzzle()
  %4 = add nuw nsw i32 %storemerge, 1
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
