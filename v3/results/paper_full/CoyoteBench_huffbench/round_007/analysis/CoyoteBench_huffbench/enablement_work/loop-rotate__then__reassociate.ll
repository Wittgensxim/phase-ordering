; ModuleID = 'results\paper_full\CoyoteBench_huffbench\round_006\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/CoyoteBench/huffbench.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [33 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZ012345\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"error: bit code overflow\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"error: file has only one value!\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"error: no compression\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"-ga\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"\0Ahuffbench (Std. C) run time: %f\0A\0A\00", align 1
@seed = internal global i32 1325, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @generate_test_data(i64 noundef %0) #0 {
  %2 = call ptr @malloc(i64 noundef %0) #9
  %exitcond.not1 = icmp eq i64 0, %0
  br i1 %exitcond.not1, label %8, label %.lr.ph

.lr.ph:                                           ; preds = %1
  br label %3

3:                                                ; preds = %.lr.ph, %3
  %.013 = phi ptr [ %2, %.lr.ph ], [ %7, %3 ]
  %indvars.iv2 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %4 = call i64 @random4()
  %5 = getelementptr inbounds nuw i8, ptr @.str, i64 %4
  %6 = load i8, ptr %5, align 1
  store i8 %6, ptr %.013, align 1
  %7 = getelementptr inbounds nuw i8, ptr %.013, i64 1
  %indvars.iv.next = add nuw i64 %indvars.iv2, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %0
  br i1 %exitcond.not, label %._crit_edge, label %3, !llvm.loop !7

._crit_edge:                                      ; preds = %3
  br label %8

8:                                                ; preds = %._crit_edge, %1
  ret ptr %2
}

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @compdecomp(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca [512 x i64], align 16
  %4 = alloca [256 x i64], align 16
  %5 = alloca [512 x i32], align 16
  %6 = alloca [256 x i32], align 16
  %7 = alloca [256 x i8], align 16
  %8 = alloca [256 x i32], align 16
  %9 = alloca [256 x i8], align 16
  %10 = add i64 %1, 1
  %11 = call ptr @malloc(i64 noundef %10) #9
  call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %10, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %3, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %4, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %5, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %6, i8 0, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %7, i8 0, i64 256, i1 false)
  %exitcond.not14 = icmp eq i64 0, %1
  br i1 %exitcond.not14, label %.preheader6.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %12

..preheader6.preheader_crit_edge:                 ; preds = %12
  br label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %..preheader6.preheader_crit_edge, %2
  br label %20

12:                                               ; preds = %.lr.ph, %12
  %.0216 = phi i64 [ 0, %.lr.ph ], [ %19, %12 ]
  %.03315 = phi ptr [ %0, %.lr.ph ], [ %18, %12 ]
  %13 = load i8, ptr %.03315, align 1
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %14
  %16 = load i64, ptr %15, align 8
  %17 = add i64 %16, 1
  store i64 %17, ptr %15, align 8
  %18 = getelementptr inbounds nuw i8, ptr %.03315, i64 1
  %19 = add i64 %.0216, 1
  %exitcond.not = icmp eq i64 %19, %1
  br i1 %exitcond.not, label %..preheader6.preheader_crit_edge, label %12, !llvm.loop !9

.preheader5.preheader:                            ; preds = %.preheader6
  %.010.lcssa = phi i64 [ %.111, %.preheader6 ]
  %.not20 = icmp eq i64 %.010.lcssa, 0
  br i1 %.not20, label %.preheader4.preheader, label %.lr.ph22

.lr.ph22:                                         ; preds = %.preheader5.preheader
  br label %.preheader5

20:                                               ; preds = %.preheader6.preheader, %.preheader6
  %.1319 = phi i64 [ 0, %.preheader6.preheader ], [ %26, %.preheader6 ]
  %.01018 = phi i64 [ 0, %.preheader6.preheader ], [ %.111, %.preheader6 ]
  %21 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.1319
  %22 = load i64, ptr %21, align 8
  %.not8 = icmp eq i64 %22, 0
  br i1 %.not8, label %.preheader6, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.01018
  store i64 %.1319, ptr %24, align 8
  %25 = add i64 %.01018, 1
  br label %.preheader6

.preheader6:                                      ; preds = %23, %20
  %.111 = phi i64 [ %25, %23 ], [ %.01018, %20 ]
  %26 = add nuw nsw i64 %.1319, 1
  %exitcond13.not = icmp eq i64 %26, 256
  br i1 %exitcond13.not, label %.preheader5.preheader, label %20, !llvm.loop !10

.preheader5..preheader4.preheader_crit_edge:      ; preds = %.preheader5
  br label %.preheader4.preheader

.preheader4.preheader:                            ; preds = %.preheader5..preheader4.preheader_crit_edge, %.preheader5.preheader
  %27 = icmp ugt i64 %.010.lcssa, 1
  br i1 %27, label %.lr.ph24, label %50

.lr.ph24:                                         ; preds = %.preheader4.preheader
  br label %.preheader4

.preheader5:                                      ; preds = %.lr.ph22, %.preheader5
  %.2421 = phi i64 [ %.010.lcssa, %.lr.ph22 ], [ %30, %.preheader5 ]
  %28 = trunc i64 %.010.lcssa to i32
  %29 = trunc i64 %.2421 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %28, i32 noundef %29)
  %30 = add i64 %.2421, -1
  %.not = icmp eq i64 %30, 0
  br i1 %.not, label %.preheader5..preheader4.preheader_crit_edge, label %.preheader5, !llvm.loop !11

.preheader4:                                      ; preds = %.lr.ph24, %.preheader4
  %.21223 = phi i64 [ %.010.lcssa, %.lr.ph24 ], [ %31, %.preheader4 ]
  %31 = add i64 %.21223, -1
  %32 = load i64, ptr %4, align 16
  %33 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %31
  %34 = load i64, ptr %33, align 8
  store i64 %34, ptr %4, align 16
  %35 = trunc i64 %31 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %35, i32 noundef 1)
  %36 = load i64, ptr %4, align 16
  %37 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %36
  %38 = load i64, ptr %37, align 8
  %39 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %32
  %40 = load i64, ptr %39, align 8
  %41 = add i64 %40, %38
  %42 = add i64 %.21223, 255
  %43 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %42
  store i64 %41, ptr %43, align 8
  %44 = trunc i64 %42 to i32
  %45 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %32
  store i32 %44, ptr %45, align 4
  %46 = trunc i64 %.21223 to i32
  %47 = sub i32 -255, %46
  %48 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %36
  store i32 %47, ptr %48, align 4
  store i64 %42, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %35, i32 noundef 1)
  %49 = icmp ugt i64 %31, 1
  br i1 %49, label %.preheader4, label %.preheader4._crit_edge, !llvm.loop !12

.preheader4._crit_edge:                           ; preds = %.preheader4
  %split = phi i64 [ %31, %.preheader4 ]
  br label %50

50:                                               ; preds = %.preheader4._crit_edge, %.preheader4.preheader
  %.212.lcssa = phi i64 [ %split, %.preheader4._crit_edge ], [ %.010.lcssa, %.preheader4.preheader ]
  %51 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 1024
  store i32 0, ptr %52, align 4
  br label %53

53:                                               ; preds = %50, %70
  %.03938 = phi i64 [ 0, %50 ], [ %.140, %70 ]
  %.04237 = phi i64 [ 0, %50 ], [ %71, %70 ]
  %.04536 = phi i64 [ 0, %50 ], [ %.146, %70 ]
  %54 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04237
  %55 = load i64, ptr %54, align 8
  %.not6 = icmp eq i64 %55, 0
  br i1 %.not6, label %56, label %.preheader7

.preheader7:                                      ; preds = %53
  %.037.in25 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.04237
  %.03726 = load i32, ptr %.037.in25, align 4
  %.not727 = icmp eq i32 %.03726, 0
  br i1 %.not727, label %65, label %.lr.ph32

.lr.ph32:                                         ; preds = %.preheader7
  br label %59

56:                                               ; preds = %53
  %57 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04237
  store i32 0, ptr %57, align 4
  %58 = getelementptr inbounds nuw i8, ptr %7, i64 %.04237
  store i8 0, ptr %58, align 1
  br label %70

59:                                               ; preds = %.lr.ph32, %59
  %.03731 = phi i32 [ %.03726, %.lr.ph32 ], [ %.037, %59 ]
  %.330 = phi i64 [ 0, %.lr.ph32 ], [ %64, %59 ]
  %.0529 = phi i64 [ 1, %.lr.ph32 ], [ %63, %59 ]
  %.04328 = phi i64 [ 0, %.lr.ph32 ], [ %.144, %59 ]
  %60 = icmp slt i32 %.03731, 0
  %61 = select i1 %60, i64 %.0529, i64 0
  %.144 = add i64 %.04328, %61
  %.138 = call i32 @llvm.abs.i32(i32 %.03731, i1 true)
  %62 = zext nneg i32 %.138 to i64
  %63 = shl i64 %.0529, 1
  %64 = add i64 %.330, 1
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %62
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %._crit_edge33, label %59, !llvm.loop !13

._crit_edge33:                                    ; preds = %59
  %split34 = phi i64 [ %.144, %59 ]
  %split35 = phi i64 [ %64, %59 ]
  br label %65

65:                                               ; preds = %._crit_edge33, %.preheader7
  %.043.lcssa = phi i64 [ %split34, %._crit_edge33 ], [ 0, %.preheader7 ]
  %.3.lcssa = phi i64 [ %split35, %._crit_edge33 ], [ 0, %.preheader7 ]
  %66 = trunc i64 %.043.lcssa to i32
  %67 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04237
  store i32 %66, ptr %67, align 4
  %68 = trunc i64 %.3.lcssa to i8
  %69 = getelementptr inbounds nuw i8, ptr %7, i64 %.04237
  store i8 %68, ptr %69, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.04536)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.03938)
  br label %70

70:                                               ; preds = %65, %56
  %.146 = phi i64 [ %spec.select, %65 ], [ %.04536, %56 ]
  %.140 = phi i64 [ %.241, %65 ], [ %.03938, %56 ]
  %71 = add nuw nsw i64 %.04237, 1
  %exitcond14.not = icmp eq i64 %71, 256
  br i1 %exitcond14.not, label %72, label %53, !llvm.loop !14

72:                                               ; preds = %70
  %.045.lcssa = phi i64 [ %.146, %70 ]
  %.039.lcssa = phi i64 [ %.140, %70 ]
  %73 = icmp ugt i64 %.039.lcssa, 32
  br i1 %73, label %74, label %77

74:                                               ; preds = %72
  %75 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %76 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %75)
  call void @exit(i32 noundef 1) #11
  unreachable

77:                                               ; preds = %72
  %78 = icmp eq i64 %.045.lcssa, 0
  br i1 %78, label %79, label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %77
  %exitcond15.not50 = icmp eq i64 0, %1
  br i1 %exitcond15.not50, label %118, label %.lr.ph56

.lr.ph56:                                         ; preds = %.preheader3.preheader
  br label %82

79:                                               ; preds = %77
  %80 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %81 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %80)
  call void @exit(i32 noundef 1) #11
  unreachable

82:                                               ; preds = %.lr.ph56, %.preheader3
  %.0155 = phi i32 [ -1, %.lr.ph56 ], [ %.1.lcssa, %.preheader3 ]
  %.1654 = phi i64 [ 0, %.lr.ph56 ], [ %117, %.preheader3 ]
  %.02453 = phi i8 [ 0, %.lr.ph56 ], [ %.125.lcssa, %.preheader3 ]
  %.02852 = phi i64 [ 0, %.lr.ph56 ], [ %.129.lcssa, %.preheader3 ]
  %.13451 = phi ptr [ %0, %.lr.ph56 ], [ %116, %.preheader3 ]
  %83 = load i8, ptr %.13451, align 1
  %84 = zext i8 %83 to i64
  %85 = getelementptr inbounds nuw i8, ptr %7, i64 %84
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %86 to i32
  %88 = add nsw i32 %87, -1
  %89 = shl nuw i32 1, %88
  %90 = sext i32 %89 to i64
  %91 = zext i8 %86 to i64
  %92 = icmp samesign ult i64 0, %91
  br i1 %92, label %.lr.ph45, label %.preheader3

.lr.ph45:                                         ; preds = %82
  br label %93

93:                                               ; preds = %.lr.ph45, %106
  %.143 = phi i32 [ %.0155, %.lr.ph45 ], [ %.2, %106 ]
  %.442 = phi i64 [ 0, %.lr.ph45 ], [ %113, %106 ]
  %.01541 = phi i64 [ %90, %.lr.ph45 ], [ %112, %106 ]
  %.12540 = phi i8 [ %.02453, %.lr.ph45 ], [ %.327, %106 ]
  %.12939 = phi i64 [ %.02852, %.lr.ph45 ], [ %.230, %106 ]
  %94 = phi i8 [ %83, %.lr.ph45 ], [ %.pre-phi.in, %106 ]
  %95 = icmp eq i32 %.143, 7
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = getelementptr inbounds nuw i8, ptr %11, i64 %.12939
  store i8 %.12540, ptr %97, align 1
  %98 = add i64 %.12939, 1
  %99 = icmp eq i64 %98, %1
  br i1 %99, label %100, label %._crit_edge

._crit_edge:                                      ; preds = %96
  %.pre1 = load i8, ptr %.13451, align 1
  br label %106

100:                                              ; preds = %96
  %101 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %102 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %101)
  call void @exit(i32 noundef 1) #11
  unreachable

103:                                              ; preds = %93
  %104 = add nsw i32 %.143, 1
  %105 = shl i8 %.12540, 1
  br label %106

106:                                              ; preds = %103, %._crit_edge
  %.pre-phi.in = phi i8 [ %.pre1, %._crit_edge ], [ %94, %103 ]
  %.230 = phi i64 [ %98, %._crit_edge ], [ %.12939, %103 ]
  %.226 = phi i8 [ 0, %._crit_edge ], [ %105, %103 ]
  %.2 = phi i32 [ 0, %._crit_edge ], [ %104, %103 ]
  %.pre-phi = zext i8 %.pre-phi.in to i64
  %107 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.pre-phi
  %108 = load i32, ptr %107, align 4
  %109 = zext i32 %108 to i64
  %110 = and i64 %109, %.01541
  %.not5 = icmp ne i64 %110, 0
  %111 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %111, %.226
  %112 = lshr i64 %.01541, 1
  %113 = add nuw nsw i64 %.442, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  %114 = zext i8 %.pre to i64
  %115 = icmp samesign ult i64 %113, %114
  br i1 %115, label %93, label %._crit_edge46, !llvm.loop !15

._crit_edge46:                                    ; preds = %106
  %split47 = phi i64 [ %.230, %106 ]
  %split48 = phi i8 [ %.327, %106 ]
  %split49 = phi i32 [ %.2, %106 ]
  br label %.preheader3

.preheader3:                                      ; preds = %._crit_edge46, %82
  %.129.lcssa = phi i64 [ %split47, %._crit_edge46 ], [ %.02852, %82 ]
  %.125.lcssa = phi i8 [ %split48, %._crit_edge46 ], [ %.02453, %82 ]
  %.1.lcssa = phi i32 [ %split49, %._crit_edge46 ], [ %.0155, %82 ]
  %116 = getelementptr inbounds nuw i8, ptr %.13451, i64 1
  %117 = add i64 %.1654, 1
  %exitcond15.not = icmp eq i64 %117, %1
  br i1 %exitcond15.not, label %.preheader3._crit_edge, label %82, !llvm.loop !16

.preheader3._crit_edge:                           ; preds = %.preheader3
  %split57 = phi i64 [ %.129.lcssa, %.preheader3 ]
  %split58 = phi i8 [ %.125.lcssa, %.preheader3 ]
  %split59 = phi i32 [ %.1.lcssa, %.preheader3 ]
  br label %118

118:                                              ; preds = %.preheader3._crit_edge, %.preheader3.preheader
  %.028.lcssa = phi i64 [ %split57, %.preheader3._crit_edge ], [ 0, %.preheader3.preheader ]
  %.024.lcssa = phi i8 [ %split58, %.preheader3._crit_edge ], [ 0, %.preheader3.preheader ]
  %.01.lcssa = phi i32 [ %split59, %.preheader3._crit_edge ], [ -1, %.preheader3.preheader ]
  %119 = sub nsw i32 7, %.01.lcssa
  %120 = zext i8 %.024.lcssa to i32
  %121 = shl i32 %120, %119
  %122 = trunc i32 %121 to i8
  %123 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %122, ptr %123, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %124

.preheader2.preheader:                            ; preds = %148
  br label %150

124:                                              ; preds = %118, %148
  %.069 = phi ptr [ %9, %118 ], [ %126, %148 ]
  %.2768 = phi i64 [ 0, %118 ], [ %149, %148 ]
  %125 = trunc nuw i64 %.2768 to i8
  store i8 %125, ptr %.069, align 1
  %126 = getelementptr inbounds nuw i8, ptr %.069, i64 1
  %127 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.2768
  %128 = load i32, ptr %127, align 4
  %129 = getelementptr inbounds nuw i8, ptr %7, i64 %.2768
  %130 = load i8, ptr %129, align 1
  %131 = zext i8 %130 to i32
  %132 = or i32 %131, %128
  %.not3 = icmp eq i32 %132, 0
  br i1 %.not3, label %148, label %133

133:                                              ; preds = %124
  %134 = add nsw i32 %131, -1
  %135 = shl nuw i32 1, %134
  %136 = sext i32 %135 to i64
  %137 = zext i8 %130 to i64
  %exitcond16.not60 = icmp eq i64 0, %137
  br i1 %exitcond16.not60, label %146, label %.lr.ph65

.lr.ph65:                                         ; preds = %133
  br label %138

138:                                              ; preds = %.lr.ph65, %138
  %.563 = phi i64 [ 0, %.lr.ph65 ], [ %145, %138 ]
  %.11662 = phi i64 [ %136, %.lr.ph65 ], [ %144, %138 ]
  %.01961 = phi i32 [ 0, %.lr.ph65 ], [ %spec.select1, %138 ]
  %139 = shl i32 %.01961, 1
  %140 = or disjoint i32 %139, 1
  %141 = zext i32 %128 to i64
  %142 = and i64 %.11662, %141
  %.not4 = icmp eq i64 %142, 0
  %143 = add i32 %139, 2
  %spec.select1 = select i1 %.not4, i32 %140, i32 %143
  %144 = lshr i64 %.11662, 1
  %145 = add nuw nsw i64 %.563, 1
  %exitcond16.not = icmp eq i64 %145, %137
  br i1 %exitcond16.not, label %._crit_edge66, label %138, !llvm.loop !17

._crit_edge66:                                    ; preds = %138
  %split67 = phi i32 [ %spec.select1, %138 ]
  br label %146

146:                                              ; preds = %._crit_edge66, %133
  %.019.lcssa = phi i32 [ %split67, %._crit_edge66 ], [ 0, %133 ]
  %147 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.2768
  store i32 %.019.lcssa, ptr %147, align 4
  br label %148

148:                                              ; preds = %146, %124
  %149 = add nuw nsw i64 %.2768, 1
  %exitcond17.not = icmp eq i64 %149, 256
  br i1 %exitcond17.not, label %.preheader2.preheader, label %124, !llvm.loop !18

.preheader1.preheader:                            ; preds = %.critedge
  br label %.preheader1

150:                                              ; preds = %.preheader2.preheader, %.critedge
  %.671 = phi i64 [ 1, %.preheader2.preheader ], [ %167, %.critedge ]
  %151 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.671
  %152 = load i32, ptr %151, align 4
  %153 = getelementptr inbounds nuw i8, ptr %9, i64 %.671
  %154 = load i8, ptr %153, align 1
  br label %155

155:                                              ; preds = %150, %160
  %.3870 = phi i64 [ %.671, %150 ], [ %156, %160 ]
  %156 = add nsw i64 %.3870, -1
  %157 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %156
  %158 = load i32, ptr %157, align 4
  %159 = icmp ugt i32 %158, %152
  br i1 %159, label %160, label %.critedge

160:                                              ; preds = %155
  %161 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.3870
  store i32 %158, ptr %161, align 4
  %162 = getelementptr inbounds nuw i8, ptr %9, i64 %156
  %163 = load i8, ptr %162, align 1
  %164 = getelementptr inbounds nuw i8, ptr %9, i64 %.3870
  store i8 %163, ptr %164, align 1
  %.not2 = icmp eq i64 %156, 0
  br i1 %.not2, label %.critedge, label %155, !llvm.loop !19

.critedge:                                        ; preds = %155, %160
  %.38.lcssa = phi i64 [ %.3870, %155 ], [ 0, %160 ]
  %165 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %152, ptr %165, align 4
  %166 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %154, ptr %166, align 1
  %167 = add nuw nsw i64 %.671, 1
  %exitcond18.not = icmp eq i64 %167, 256
  br i1 %exitcond18.not, label %.preheader1.preheader, label %150, !llvm.loop !20

.preheader1:                                      ; preds = %.preheader1, %.preheader1.preheader
  %.49 = phi i64 [ %171, %.preheader1 ], [ 0, %.preheader1.preheader ]
  %168 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %169 = load i32, ptr %168, align 4
  %170 = icmp eq i32 %169, 0
  %171 = add i64 %.49, 1
  br i1 %170, label %.preheader1, label %.preheader.preheader, !llvm.loop !21

.preheader.preheader:                             ; preds = %.preheader1
  %.49.lcssa = phi i64 [ %.49, %.preheader1 ]
  %172 = icmp ult i64 0, %1
  br i1 %172, label %.lr.ph78, label %195

.lr.ph78:                                         ; preds = %.preheader.preheader
  br label %173

173:                                              ; preds = %.lr.ph78, %.preheader
  %.777 = phi i64 [ %.49.lcssa, %.lr.ph78 ], [ %.9, %.preheader ]
  %.31376 = phi i64 [ 0, %.lr.ph78 ], [ %.414, %.preheader ]
  %.21775 = phi i64 [ 128, %.lr.ph78 ], [ %.318, %.preheader ]
  %.22174 = phi i32 [ 0, %.lr.ph78 ], [ %.423, %.preheader ]
  %.03173 = phi ptr [ %11, %.lr.ph78 ], [ %.132, %.preheader ]
  %.23572 = phi ptr [ %0, %.lr.ph78 ], [ %.336, %.preheader ]
  %174 = shl i32 %.22174, 1
  %175 = or disjoint i32 %174, 1
  %176 = load i8, ptr %.03173, align 1
  %177 = zext i8 %176 to i64
  %178 = and i64 %177, %.21775
  %.not1 = icmp eq i64 %178, 0
  %179 = add i32 %174, 2
  %spec.select2 = select i1 %.not1, i32 %175, i32 %179
  br label %180

180:                                              ; preds = %180, %173
  %.8 = phi i64 [ %.777, %173 ], [ %184, %180 ]
  %181 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %182 = load i32, ptr %181, align 4
  %183 = icmp ult i32 %182, %spec.select2
  %184 = add i64 %.8, 1
  br i1 %183, label %180, label %185, !llvm.loop !22

185:                                              ; preds = %180
  %.8.lcssa = phi i64 [ %.8, %180 ]
  %.lcssa = phi i32 [ %182, %180 ]
  %186 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %186, label %187, label %.preheader

187:                                              ; preds = %185
  %188 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %189 = load i8, ptr %188, align 1
  store i8 %189, ptr %.23572, align 1
  %190 = getelementptr inbounds nuw i8, ptr %.23572, i64 1
  %191 = add nuw i64 %.31376, 1
  br label %.preheader

.preheader:                                       ; preds = %187, %185
  %.336 = phi ptr [ %190, %187 ], [ %.23572, %185 ]
  %.423 = phi i32 [ 0, %187 ], [ %spec.select2, %185 ]
  %.414 = phi i64 [ %191, %187 ], [ %.31376, %185 ]
  %.9 = phi i64 [ %.49.lcssa, %187 ], [ %.8.lcssa, %185 ]
  %192 = icmp ult i64 %.21775, 2
  %193 = lshr i64 %.21775, 1
  %.132.idx = zext i1 %192 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.03173, i64 %.132.idx
  %.318 = select i1 %192, i64 128, i64 %193
  %194 = icmp ult i64 %.414, %1
  br i1 %194, label %173, label %.preheader._crit_edge, !llvm.loop !23

.preheader._crit_edge:                            ; preds = %.preheader
  br label %195

195:                                              ; preds = %.preheader._crit_edge, %.preheader.preheader
  call void @free(ptr noundef %11) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal void @heap_adjust(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = sext i32 %3 to i64
  %6 = getelementptr [8 x i8], ptr %1, i64 %5
  %7 = getelementptr i8, ptr %6, i64 -8
  %8 = load i64, ptr %7, align 8
  %9 = shl i64 %8, 32
  %10 = sdiv i32 %2, 2
  %.not1 = icmp sgt i32 %3, %10
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %4
  br label %11

11:                                               ; preds = %.lr.ph, %37
  %.012 = phi i32 [ %3, %.lr.ph ], [ %.0, %37 ]
  %12 = shl nsw i32 %.012, 1
  %13 = icmp slt i32 %12, %2
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = sext i32 %12 to i64
  %16 = getelementptr [8 x i8], ptr %1, i64 %15
  %17 = getelementptr i8, ptr %16, i64 -8
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %18
  %20 = load i64, ptr %19, align 8
  %21 = load i64, ptr %16, align 8
  %22 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %21
  %23 = load i64, ptr %22, align 8
  %24 = icmp ugt i64 %20, %23
  %25 = zext i1 %24 to i32
  %spec.select = or disjoint i32 %25, %12
  br label %26

26:                                               ; preds = %14, %11
  %.0 = phi i32 [ %12, %11 ], [ %spec.select, %14 ]
  %27 = ashr exact i64 %9, 29
  %28 = getelementptr inbounds i8, ptr %0, i64 %27
  %29 = load i64, ptr %28, align 8
  %30 = sext i32 %.0 to i64
  %31 = getelementptr [8 x i8], ptr %1, i64 %30
  %32 = getelementptr i8, ptr %31, i64 -8
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %33
  %35 = load i64, ptr %34, align 8
  %36 = icmp ult i64 %29, %35
  br i1 %36, label %.._crit_edge_crit_edge, label %37

37:                                               ; preds = %26
  %38 = sext i32 %.012 to i64
  %39 = getelementptr [8 x i8], ptr %1, i64 %38
  %40 = getelementptr i8, ptr %39, i64 -8
  store i64 %33, ptr %40, align 8
  %.not = icmp sgt i32 %.0, %10
  br i1 %.not, label %.._crit_edge_crit_edge4, label %11, !llvm.loop !24

.._crit_edge_crit_edge:                           ; preds = %26
  %split = phi i32 [ %.012, %26 ]
  br label %._crit_edge

.._crit_edge_crit_edge4:                          ; preds = %37
  %split5 = phi i32 [ %.0, %37 ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge4, %.._crit_edge_crit_edge, %4
  %.01.lcssa = phi i32 [ %split, %.._crit_edge_crit_edge ], [ %split5, %.._crit_edge_crit_edge4 ], [ %3, %4 ]
  %41 = ashr exact i64 %9, 32
  %42 = sext i32 %.01.lcssa to i64
  %43 = getelementptr [8 x i8], ptr %1, i64 %42
  %44 = getelementptr i8, ptr %43, i64 -8
  store i64 %41, ptr %44, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @fprintf(ptr noundef, ptr noundef, ...) #3

declare dllimport ptr @__acrt_iob_func(i32 noundef) #4

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #5

declare dso_local void @free(ptr noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %2
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %6

5:                                                ; preds = %6
  %.01 = phi i32 [ %9, %6 ]
  %exitcond.not = icmp eq i32 %.01, %0
  br i1 %exitcond.not, label %.loopexit.loopexit, label %6, !llvm.loop !25

6:                                                ; preds = %.preheader, %5
  %exitcond.not2 = phi i1 [ false, %.preheader ], [ %exitcond.not, %5 ]
  %.011 = phi i32 [ 1, %.preheader ], [ %.01, %5 ]
  %7 = load ptr, ptr %4, align 8
  %8 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(4) @.str.4) #10
  %.not = icmp eq i32 %8, 0
  %9 = add nuw i32 %.011, 1
  br i1 %.not, label %.loopexit.loopexit, label %5

.loopexit.loopexit:                               ; preds = %5, %6
  %exitcond.not.lcssa = phi i1 [ %exitcond.not, %5 ], [ %exitcond.not2, %6 ]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %2
  %.not1 = phi i1 [ true, %2 ], [ %exitcond.not.lcssa, %.loopexit.loopexit ]
  %10 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %11

11:                                               ; preds = %.loopexit, %11
  %.123 = phi i32 [ 0, %.loopexit ], [ %12, %11 ]
  call void @compdecomp(ptr noundef %10, i64 noundef 10000000)
  %12 = add nuw nsw i32 %.123, 1
  %exitcond1.not = icmp eq i32 %12, 30
  br i1 %exitcond1.not, label %13, label %11, !llvm.loop !26

13:                                               ; preds = %11
  call void @free(ptr noundef %10) #10
  br i1 %.not1, label %17, label %14

14:                                               ; preds = %13
  %15 = call ptr @__acrt_iob_func(i32 noundef 1) #10
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.5, double noundef 0.000000e+00) #10
  br label %20

17:                                               ; preds = %13
  %18 = call ptr @__acrt_iob_func(i32 noundef 1) #10
  %19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.6, double noundef 0.000000e+00) #10
  br label %20

20:                                               ; preds = %17, %14
  %21 = call ptr @__acrt_iob_func(i32 noundef 1) #10
  %22 = call i32 @fflush(ptr noundef %21) #10
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

declare dso_local i32 @fflush(ptr noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal i64 @random4() #0 {
  %1 = load i32, ptr @seed, align 4
  %2 = xor i32 %1, 123459876
  %3 = sdiv i32 %2, 127773
  %.neg = mul i32 %3, -127773
  %4 = add i32 %.neg, %2
  %5 = mul nsw i32 %4, 16807
  %.neg1 = mul nsw i32 %3, -2836
  %6 = add i32 %5, %.neg1
  %7 = icmp slt i32 %6, 0
  %8 = add nsw i32 %6, 2147483647
  %spec.select = select i1 %7, i32 %8, i32 %6
  %9 = srem i32 %spec.select, 32
  %10 = sext i32 %9 to i64
  %11 = xor i32 %spec.select, 123459876
  store i32 %11, ptr @seed, align 4
  ret i64 %10
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind }
attributes #11 = { cold noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/CoyoteBench/huffbench.c", directory: "E:/Phase Ordering/v3")
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
