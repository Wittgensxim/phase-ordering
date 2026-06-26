; ModuleID = 'results\paper_full\Stanford_Puzzle\Stanford_Puzzle.ll'
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
define dso_local range(i32 0, 65536) i32 @Rand() #0 {
  %1 = load i32, ptr @seed, align 4
  %2 = mul nsw i32 %1, 1309
  %3 = add nsw i32 %2, 13849
  %4 = and i32 %3, 65535
  store i32 %4, ptr @seed, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @Fit(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert4, align 4
  %.not5 = icmp sgt i32 0, %.pre
  br i1 %.not5, label %15, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %3

3:                                                ; preds = %.lr.ph, %13
  %.016 = phi i32 [ 0, %.lr.ph ], [ %14, %13 ]
  %4 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %5 = zext nneg i32 %.016 to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4
  %.not2 = icmp eq i32 %7, 0
  br i1 %.not2, label %13, label %8

8:                                                ; preds = %3
  %9 = add nsw i32 %1, %.016
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not3 = icmp eq i32 %12, 0
  br i1 %.not3, label %13, label %._crit_edge7

13:                                               ; preds = %3, %8
  %14 = add nuw nsw i32 %.016, 1
  %.not = icmp sgt i32 %14, %.pre
  br i1 %.not, label %._crit_edge, label %3, !llvm.loop !7

._crit_edge:                                      ; preds = %13
  %split = phi i32 [ 1, %13 ]
  br label %15

._crit_edge7:                                     ; preds = %8
  %split8 = phi i32 [ 0, %8 ]
  br label %15

15:                                               ; preds = %._crit_edge7, %._crit_edge, %2
  %.0 = phi i32 [ %split8, %._crit_edge7 ], [ %split, %._crit_edge ], [ 1, %2 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 -2147483648, 512) i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert4, align 4
  %.not5 = icmp sgt i32 0, %.pre
  br i1 %.not5, label %14, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %3

3:                                                ; preds = %.lr.ph, %12
  %.016 = phi i32 [ 0, %.lr.ph ], [ %13, %12 ]
  %4 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %5 = zext nneg i32 %.016 to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4
  %.not3 = icmp eq i32 %7, 0
  br i1 %.not3, label %12, label %8

8:                                                ; preds = %3
  %9 = add nsw i32 %1, %.016
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %10
  store i32 1, ptr %11, align 4
  br label %12

12:                                               ; preds = %3, %8
  %13 = add nuw nsw i32 %.016, 1
  %.not = icmp sgt i32 %13, %.pre
  br i1 %.not, label %._crit_edge, label %3, !llvm.loop !9

._crit_edge:                                      ; preds = %12
  br label %14

14:                                               ; preds = %._crit_edge, %2
  %15 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %16 = load i32, ptr %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, ptr %18, align 4
  %21 = icmp slt i32 %1, 512
  br i1 %21, label %.lr.ph9, label %29

.lr.ph9:                                          ; preds = %14
  br label %22

22:                                               ; preds = %.lr.ph9, %26
  %.17 = phi i32 [ %1, %.lr.ph9 ], [ %27, %26 ]
  %23 = sext i32 %.17 to i64
  %24 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %23
  %25 = load i32, ptr %24, align 4
  %.not2 = icmp eq i32 %25, 0
  br i1 %.not2, label %._crit_edge11, label %26

26:                                               ; preds = %22
  %27 = add nsw i32 %.17, 1
  %28 = icmp slt i32 %27, 512
  br i1 %28, label %22, label %._crit_edge10, !llvm.loop !10

._crit_edge10:                                    ; preds = %26
  %split = phi i32 [ 0, %26 ]
  br label %29

._crit_edge11:                                    ; preds = %22
  %split12 = phi i32 [ %.17, %22 ]
  br label %29

29:                                               ; preds = %._crit_edge11, %._crit_edge10, %14
  %.0 = phi i32 [ %split12, %._crit_edge11 ], [ %split, %._crit_edge10 ], [ 0, %14 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert2 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert2, align 4
  %.not3 = icmp sgt i32 0, %.pre
  br i1 %.not3, label %14, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %3

3:                                                ; preds = %.lr.ph, %12
  %.04 = phi i32 [ 0, %.lr.ph ], [ %13, %12 ]
  %4 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %5 = zext nneg i32 %.04 to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4
  %.not1 = icmp eq i32 %7, 0
  br i1 %.not1, label %12, label %8

8:                                                ; preds = %3
  %9 = add nsw i32 %1, %.04
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %10
  store i32 0, ptr %11, align 4
  br label %12

12:                                               ; preds = %3, %8
  %13 = add nuw nsw i32 %.04, 1
  %.not = icmp sgt i32 %13, %.pre
  br i1 %.not, label %._crit_edge, label %3, !llvm.loop !11

._crit_edge:                                      ; preds = %12
  br label %14

14:                                               ; preds = %._crit_edge, %2
  %15 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %16 = load i32, ptr %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %18, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @Trial(i32 noundef %0) #0 {
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  br label %4

4:                                                ; preds = %1, %18
  %.014 = phi i32 [ 0, %1 ], [ %19, %18 ]
  %5 = zext nneg i32 %.014 to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr @class, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %18, label %11

11:                                               ; preds = %4
  %12 = call i32 @Fit(i32 noundef %.014, i32 noundef %0)
  %.not2 = icmp eq i32 %12, 0
  br i1 %.not2, label %18, label %13

13:                                               ; preds = %11
  %14 = call i32 @Place(i32 noundef %.014, i32 noundef %0)
  %15 = call i32 @Trial(i32 noundef %14)
  %.not3 = icmp ne i32 %15, 0
  %16 = icmp eq i32 %14, 0
  %or.cond = or i1 %.not3, %16
  br i1 %or.cond, label %21, label %17

17:                                               ; preds = %13
  call void @Remove(i32 noundef %.014, i32 noundef %0)
  br label %18

18:                                               ; preds = %4, %17, %11
  %19 = add nuw nsw i32 %.014, 1
  %20 = icmp samesign ult i32 %19, 13
  br i1 %20, label %4, label %21, !llvm.loop !12

21:                                               ; preds = %18, %13
  %.0 = phi i32 [ 1, %13 ], [ 0, %18 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

.preheader77:                                     ; preds = %1
  br label %.preheader76

1:                                                ; preds = %0, %1
  %.03278 = phi i32 [ 0, %0 ], [ %4, %1 ]
  %2 = zext nneg i32 %.03278 to i64
  %3 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %2
  store i32 1, ptr %3, align 4
  %4 = add nuw nsw i32 %.03278, 1
  %5 = icmp samesign ult i32 %4, 512
  br i1 %5, label %1, label %.preheader77, !llvm.loop !13

.preheader76:                                     ; preds = %.preheader77, %18
  %.081 = phi i32 [ 1, %.preheader77 ], [ %19, %18 ]
  br label %.preheader75

.preheader74:                                     ; preds = %18
  br label %.preheader73

.preheader75:                                     ; preds = %.preheader76, %15
  %.0180 = phi i32 [ 1, %.preheader76 ], [ %16, %15 ]
  br label %6

6:                                                ; preds = %.preheader75, %6
  %.01879 = phi i32 [ 1, %.preheader75 ], [ %13, %6 ]
  %7 = shl nuw nsw i32 %.01879, 6
  %8 = shl nuw nsw i32 %.0180, 3
  %9 = or disjoint i32 %7, %8
  %10 = or disjoint i32 %.081, %9
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %11
  store i32 0, ptr %12, align 4
  %13 = add nuw nsw i32 %.01879, 1
  %14 = icmp samesign ult i32 %13, 6
  br i1 %14, label %6, label %15, !llvm.loop !14

15:                                               ; preds = %6
  %16 = add nuw nsw i32 %.0180, 1
  %17 = icmp samesign ult i32 %16, 6
  br i1 %17, label %.preheader75, label %18, !llvm.loop !15

18:                                               ; preds = %15
  %19 = add nuw nsw i32 %.081, 1
  %20 = icmp samesign ult i32 %19, 6
  br i1 %20, label %.preheader76, label %.preheader74, !llvm.loop !16

.preheader73:                                     ; preds = %.preheader74, %28
  %.183 = phi i32 [ 0, %.preheader74 ], [ %29, %28 ]
  br label %21

.preheader72:                                     ; preds = %28
  br label %.preheader71

21:                                               ; preds = %.preheader73, %21
  %.13382 = phi i32 [ 0, %.preheader73 ], [ %26, %21 ]
  %22 = zext nneg i32 %.183 to i64
  %23 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %22
  %24 = zext nneg i32 %.13382 to i64
  %25 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %24
  store i32 0, ptr %25, align 4
  %26 = add nuw nsw i32 %.13382, 1
  %27 = icmp samesign ult i32 %26, 512
  br i1 %27, label %21, label %28, !llvm.loop !17

28:                                               ; preds = %21
  %29 = add nuw nsw i32 %.183, 1
  %30 = icmp samesign ult i32 %29, 13
  br i1 %30, label %.preheader73, label %.preheader72, !llvm.loop !18

.preheader71:                                     ; preds = %.preheader72, %39
  %.285 = phi i32 [ 0, %.preheader72 ], [ %40, %39 ]
  br label %.preheader70

.preheader70:                                     ; preds = %.preheader71, %36
  %.1584 = phi i32 [ 0, %.preheader71 ], [ %37, %36 ]
  br label %31

31:                                               ; preds = %.preheader70, %31
  %32 = shl nuw nsw i32 %.1584, 3
  %33 = or disjoint i32 %.285, %32
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %34
  store i32 1, ptr %35, align 4
  br i1 false, label %31, label %36, !llvm.loop !19

36:                                               ; preds = %31
  %37 = add nuw nsw i32 %.1584, 1
  %38 = icmp samesign ult i32 %37, 2
  br i1 %38, label %.preheader70, label %39, !llvm.loop !20

39:                                               ; preds = %36
  %40 = add nuw nsw i32 %.285, 1
  %41 = icmp samesign ult i32 %40, 4
  br i1 %41, label %.preheader71, label %42, !llvm.loop !21

42:                                               ; preds = %39
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %.preheader69

.preheader69:                                     ; preds = %42, %50
  %.387 = phi i32 [ 0, %42 ], [ %51, %50 ]
  br label %.preheader67

.loopexit68:                                      ; preds = %43
  br i1 false, label %.preheader67, label %50, !llvm.loop !22

.preheader67:                                     ; preds = %.preheader69, %.loopexit68
  br label %43

43:                                               ; preds = %.preheader67, %43
  %.22086 = phi i32 [ 0, %.preheader67 ], [ %48, %43 ]
  %44 = shl nuw nsw i32 %.22086, 6
  %45 = or disjoint i32 %.387, %44
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %46
  store i32 1, ptr %47, align 4
  %48 = add nuw nsw i32 %.22086, 1
  %49 = icmp samesign ult i32 %48, 4
  br i1 %49, label %43, label %.loopexit68, !llvm.loop !23

50:                                               ; preds = %.loopexit68
  %51 = add nuw nsw i32 %.387, 1
  %52 = icmp samesign ult i32 %51, 2
  br i1 %52, label %.preheader69, label %53, !llvm.loop !24

53:                                               ; preds = %50
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %.preheader65

.loopexit66:                                      ; preds = %62
  br i1 false, label %.preheader65, label %65, !llvm.loop !25

.preheader65:                                     ; preds = %53, %.loopexit66
  br label %.preheader64

.preheader64:                                     ; preds = %.preheader65, %62
  %.3789 = phi i32 [ 0, %.preheader65 ], [ %63, %62 ]
  br label %54

54:                                               ; preds = %.preheader64, %54
  %.32188 = phi i32 [ 0, %.preheader64 ], [ %60, %54 ]
  %55 = shl nuw nsw i32 %.32188, 6
  %56 = shl nuw nsw i32 %.3789, 3
  %57 = or disjoint i32 %55, %56
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %58
  store i32 1, ptr %59, align 4
  %60 = add nuw nsw i32 %.32188, 1
  %61 = icmp samesign ult i32 %60, 2
  br i1 %61, label %54, label %62, !llvm.loop !26

62:                                               ; preds = %54
  %63 = add nuw nsw i32 %.3789, 1
  %64 = icmp samesign ult i32 %63, 4
  br i1 %64, label %.preheader64, label %.loopexit66, !llvm.loop !27

65:                                               ; preds = %.loopexit66
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %.preheader63

.preheader63:                                     ; preds = %65, %74
  %.591 = phi i32 [ 0, %65 ], [ %75, %74 ]
  br label %.preheader62

.preheader62:                                     ; preds = %.preheader63, %71
  %.4890 = phi i32 [ 0, %.preheader63 ], [ %72, %71 ]
  br label %66

66:                                               ; preds = %.preheader62, %66
  %67 = shl nuw nsw i32 %.4890, 3
  %68 = or disjoint i32 %.591, %67
  %69 = zext nneg i32 %68 to i64
  %70 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %69
  store i32 1, ptr %70, align 4
  br i1 false, label %66, label %71, !llvm.loop !28

71:                                               ; preds = %66
  %72 = add nuw nsw i32 %.4890, 1
  %73 = icmp samesign ult i32 %72, 4
  br i1 %73, label %.preheader62, label %74, !llvm.loop !29

74:                                               ; preds = %71
  %75 = add nuw nsw i32 %.591, 1
  %76 = icmp samesign ult i32 %75, 2
  br i1 %76, label %.preheader63, label %77, !llvm.loop !30

77:                                               ; preds = %74
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %.preheader61

.preheader61:                                     ; preds = %77, %85
  %.693 = phi i32 [ 0, %77 ], [ %86, %85 ]
  br label %.preheader59

.loopexit60:                                      ; preds = %78
  br i1 false, label %.preheader59, label %85, !llvm.loop !31

.preheader59:                                     ; preds = %.preheader61, %.loopexit60
  br label %78

78:                                               ; preds = %.preheader59, %78
  %.52392 = phi i32 [ 0, %.preheader59 ], [ %83, %78 ]
  %79 = shl nuw nsw i32 %.52392, 6
  %80 = or disjoint i32 %.693, %79
  %81 = zext nneg i32 %80 to i64
  %82 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %81
  store i32 1, ptr %82, align 4
  %83 = add nuw nsw i32 %.52392, 1
  %84 = icmp samesign ult i32 %83, 2
  br i1 %84, label %78, label %.loopexit60, !llvm.loop !32

85:                                               ; preds = %.loopexit60
  %86 = add nuw nsw i32 %.693, 1
  %87 = icmp samesign ult i32 %86, 4
  br i1 %87, label %.preheader61, label %88, !llvm.loop !33

88:                                               ; preds = %85
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %.preheader57

.loopexit58:                                      ; preds = %97
  br i1 false, label %.preheader57, label %100, !llvm.loop !34

.preheader57:                                     ; preds = %88, %.loopexit58
  br label %.preheader56

.preheader56:                                     ; preds = %.preheader57, %97
  %.61095 = phi i32 [ 0, %.preheader57 ], [ %98, %97 ]
  br label %89

89:                                               ; preds = %.preheader56, %89
  %.62494 = phi i32 [ 0, %.preheader56 ], [ %95, %89 ]
  %90 = shl nuw nsw i32 %.62494, 6
  %91 = shl nuw nsw i32 %.61095, 3
  %92 = or disjoint i32 %90, %91
  %93 = zext nneg i32 %92 to i64
  %94 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %93
  store i32 1, ptr %94, align 4
  %95 = add nuw nsw i32 %.62494, 1
  %96 = icmp samesign ult i32 %95, 4
  br i1 %96, label %89, label %97, !llvm.loop !35

97:                                               ; preds = %89
  %98 = add nuw nsw i32 %.61095, 1
  %99 = icmp samesign ult i32 %98, 2
  br i1 %99, label %.preheader56, label %.loopexit58, !llvm.loop !36

100:                                              ; preds = %.loopexit58
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %.preheader55

.preheader55:                                     ; preds = %100, %104
  %.896 = phi i32 [ 0, %100 ], [ %105, %104 ]
  br label %.preheader53

.loopexit54:                                      ; preds = %101
  br i1 false, label %.preheader53, label %104, !llvm.loop !37

.preheader53:                                     ; preds = %.preheader55, %.loopexit54
  br label %101

101:                                              ; preds = %.preheader53, %101
  %102 = zext nneg i32 %.896 to i64
  %103 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %102
  store i32 1, ptr %103, align 4
  br i1 false, label %101, label %.loopexit54, !llvm.loop !38

104:                                              ; preds = %.loopexit54
  %105 = add nuw nsw i32 %.896, 1
  %106 = icmp samesign ult i32 %105, 3
  br i1 %106, label %.preheader55, label %107, !llvm.loop !39

107:                                              ; preds = %104
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %.preheader51

.loopexit52:                                      ; preds = %112
  br i1 false, label %.preheader51, label %115, !llvm.loop !40

.preheader51:                                     ; preds = %107, %.loopexit52
  br label %.preheader50

.preheader50:                                     ; preds = %.preheader51, %112
  %.81297 = phi i32 [ 0, %.preheader51 ], [ %113, %112 ]
  br label %108

108:                                              ; preds = %.preheader50, %108
  %109 = shl nuw nsw i32 %.81297, 3
  %110 = zext nneg i32 %109 to i64
  %111 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %110
  store i32 1, ptr %111, align 4
  br i1 false, label %108, label %112, !llvm.loop !41

112:                                              ; preds = %108
  %113 = add nuw nsw i32 %.81297, 1
  %114 = icmp samesign ult i32 %113, 3
  br i1 %114, label %.preheader50, label %.loopexit52, !llvm.loop !42

115:                                              ; preds = %.loopexit52
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %.preheader48

.loopexit49:                                      ; preds = %.loopexit47
  br i1 false, label %.preheader48, label %122, !llvm.loop !43

.preheader48:                                     ; preds = %115, %.loopexit49
  br label %.preheader46

.loopexit47:                                      ; preds = %116
  br i1 false, label %.preheader46, label %.loopexit49, !llvm.loop !44

.preheader46:                                     ; preds = %.preheader48, %.loopexit47
  br label %116

116:                                              ; preds = %.preheader46, %116
  %.92798 = phi i32 [ 0, %.preheader46 ], [ %120, %116 ]
  %117 = shl nuw nsw i32 %.92798, 6
  %118 = zext nneg i32 %117 to i64
  %119 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %118
  store i32 1, ptr %119, align 4
  %120 = add nuw nsw i32 %.92798, 1
  %121 = icmp samesign ult i32 %120, 3
  br i1 %121, label %116, label %.loopexit47, !llvm.loop !45

122:                                              ; preds = %.loopexit49
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %.preheader45

.preheader45:                                     ; preds = %122, %131
  %.11100 = phi i32 [ 0, %122 ], [ %132, %131 ]
  br label %.preheader44

.preheader44:                                     ; preds = %.preheader45, %128
  %.101499 = phi i32 [ 0, %.preheader45 ], [ %129, %128 ]
  br label %123

123:                                              ; preds = %.preheader44, %123
  %124 = shl nuw nsw i32 %.101499, 3
  %125 = or disjoint i32 %.11100, %124
  %126 = zext nneg i32 %125 to i64
  %127 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %126
  store i32 1, ptr %127, align 4
  br i1 false, label %123, label %128, !llvm.loop !46

128:                                              ; preds = %123
  %129 = add nuw nsw i32 %.101499, 1
  %130 = icmp samesign ult i32 %129, 2
  br i1 %130, label %.preheader44, label %131, !llvm.loop !47

131:                                              ; preds = %128
  %132 = add nuw nsw i32 %.11100, 1
  %133 = icmp samesign ult i32 %132, 2
  br i1 %133, label %.preheader45, label %134, !llvm.loop !48

134:                                              ; preds = %131
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %.preheader43

.preheader43:                                     ; preds = %134, %142
  %.12102 = phi i32 [ 0, %134 ], [ %143, %142 ]
  br label %.preheader41

.loopexit42:                                      ; preds = %135
  br i1 false, label %.preheader41, label %142, !llvm.loop !49

.preheader41:                                     ; preds = %.preheader43, %.loopexit42
  br label %135

135:                                              ; preds = %.preheader41, %135
  %.1129101 = phi i32 [ 0, %.preheader41 ], [ %140, %135 ]
  %136 = shl nuw nsw i32 %.1129101, 6
  %137 = or disjoint i32 %.12102, %136
  %138 = zext nneg i32 %137 to i64
  %139 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %138
  store i32 1, ptr %139, align 4
  %140 = add nuw nsw i32 %.1129101, 1
  %141 = icmp samesign ult i32 %140, 2
  br i1 %141, label %135, label %.loopexit42, !llvm.loop !50

142:                                              ; preds = %.loopexit42
  %143 = add nuw nsw i32 %.12102, 1
  %144 = icmp samesign ult i32 %143, 2
  br i1 %144, label %.preheader43, label %145, !llvm.loop !51

145:                                              ; preds = %142
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %.preheader40

.loopexit:                                        ; preds = %154
  br i1 false, label %.preheader40, label %157, !llvm.loop !52

.preheader40:                                     ; preds = %145, %.loopexit
  br label %.preheader39

.preheader39:                                     ; preds = %.preheader40, %154
  %.1216104 = phi i32 [ 0, %.preheader40 ], [ %155, %154 ]
  br label %146

146:                                              ; preds = %.preheader39, %146
  %.1230103 = phi i32 [ 0, %.preheader39 ], [ %152, %146 ]
  %147 = shl nuw nsw i32 %.1230103, 6
  %148 = shl nuw nsw i32 %.1216104, 3
  %149 = or disjoint i32 %147, %148
  %150 = zext nneg i32 %149 to i64
  %151 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %150
  store i32 1, ptr %151, align 4
  %152 = add nuw nsw i32 %.1230103, 1
  %153 = icmp samesign ult i32 %152, 2
  br i1 %153, label %146, label %154, !llvm.loop !53

154:                                              ; preds = %146
  %155 = add nuw nsw i32 %.1216104, 1
  %156 = icmp samesign ult i32 %155, 2
  br i1 %156, label %.preheader39, label %.loopexit, !llvm.loop !54

157:                                              ; preds = %.loopexit
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %.preheader38

.preheader38:                                     ; preds = %157, %170
  %.14107 = phi i32 [ 0, %157 ], [ %171, %170 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader38, %167
  %.1317106 = phi i32 [ 0, %.preheader38 ], [ %168, %167 ]
  br label %158

158:                                              ; preds = %.preheader, %158
  %.1331105 = phi i32 [ 0, %.preheader ], [ %165, %158 ]
  %159 = shl nuw nsw i32 %.1331105, 6
  %160 = shl nuw nsw i32 %.1317106, 3
  %161 = or disjoint i32 %159, %160
  %162 = or disjoint i32 %.14107, %161
  %163 = zext nneg i32 %162 to i64
  %164 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %163
  store i32 1, ptr %164, align 4
  %165 = add nuw nsw i32 %.1331105, 1
  %166 = icmp samesign ult i32 %165, 2
  br i1 %166, label %158, label %167, !llvm.loop !55

167:                                              ; preds = %158
  %168 = add nuw nsw i32 %.1317106, 1
  %169 = icmp samesign ult i32 %168, 2
  br i1 %169, label %.preheader, label %170, !llvm.loop !56

170:                                              ; preds = %167
  %171 = add nuw nsw i32 %.14107, 1
  %172 = icmp samesign ult i32 %171, 2
  br i1 %172, label %.preheader38, label %173, !llvm.loop !57

173:                                              ; preds = %170
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %174 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %174, 0
  br i1 %.not, label %177, label %175

175:                                              ; preds = %173
  %176 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %176, ptr @n, align 4
  br label %178

177:                                              ; preds = %173
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %178

178:                                              ; preds = %177, %175
  %179 = phi i32 [ %.pre, %177 ], [ %176, %175 ]
  %180 = call i32 @Trial(i32 noundef %179)
  %.not34 = icmp eq i32 %180, 0
  br i1 %.not34, label %181, label %182

181:                                              ; preds = %178
  %puts35 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %185

182:                                              ; preds = %178
  %183 = load i32, ptr @kount, align 4
  %.not36 = icmp eq i32 %183, 2005
  br i1 %.not36, label %185, label %184

184:                                              ; preds = %182
  %puts37 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %185

185:                                              ; preds = %182, %184, %181
  %186 = load i32, ptr @n, align 4
  %187 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %186) #3
  %188 = load i32, ptr @kount, align 4
  %189 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %188) #3
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %0, %1
  %.01 = phi i32 [ 0, %0 ], [ %2, %1 ]
  call void @Puzzle()
  %2 = add nuw nsw i32 %.01, 1
  %3 = icmp samesign ult i32 %2, 100
  br i1 %3, label %1, label %4, !llvm.loop !58

4:                                                ; preds = %1
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #2

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind }

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
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !8}
!25 = distinct !{!25, !8}
!26 = distinct !{!26, !8}
!27 = distinct !{!27, !8}
!28 = distinct !{!28, !8}
!29 = distinct !{!29, !8}
!30 = distinct !{!30, !8}
!31 = distinct !{!31, !8}
!32 = distinct !{!32, !8}
!33 = distinct !{!33, !8}
!34 = distinct !{!34, !8}
!35 = distinct !{!35, !8}
!36 = distinct !{!36, !8}
!37 = distinct !{!37, !8}
!38 = distinct !{!38, !8}
!39 = distinct !{!39, !8}
!40 = distinct !{!40, !8}
!41 = distinct !{!41, !8}
!42 = distinct !{!42, !8}
!43 = distinct !{!43, !8}
!44 = distinct !{!44, !8}
!45 = distinct !{!45, !8}
!46 = distinct !{!46, !8}
!47 = distinct !{!47, !8}
!48 = distinct !{!48, !8}
!49 = distinct !{!49, !8}
!50 = distinct !{!50, !8}
!51 = distinct !{!51, !8}
!52 = distinct !{!52, !8}
!53 = distinct !{!53, !8}
!54 = distinct !{!54, !8}
!55 = distinct !{!55, !8}
!56 = distinct !{!56, !8}
!57 = distinct !{!57, !8}
!58 = distinct !{!58, !8}
