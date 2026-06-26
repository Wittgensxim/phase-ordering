; ModuleID = 'results\paper_full\CoyoteBench_huffbench\round_007\output.ll'
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
  br i1 %exitcond.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %1, %.lr.ph
  %.013 = phi ptr [ %6, %.lr.ph ], [ %2, %1 ]
  %indvars.iv2 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %1 ]
  %3 = call i64 @random4()
  %4 = getelementptr inbounds nuw i8, ptr @.str, i64 %3
  %5 = load i8, ptr %4, align 1
  store i8 %5, ptr %.013, align 1
  %6 = getelementptr inbounds nuw i8, ptr %.013, i64 1
  %indvars.iv.next = add nuw i64 %indvars.iv2, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %0
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !7

._crit_edge:                                      ; preds = %.lr.ph, %1
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
  %exitcond.not7 = icmp eq i64 0, %1
  br i1 %exitcond.not7, label %.preheader6.preheader, label %.lr.ph

.preheader6.preheader:                            ; preds = %.lr.ph, %2
  br label %19

.lr.ph:                                           ; preds = %2, %.lr.ph
  %.029 = phi i64 [ %18, %.lr.ph ], [ 0, %2 ]
  %.0338 = phi ptr [ %17, %.lr.ph ], [ %0, %2 ]
  %12 = load i8, ptr %.0338, align 1
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %13
  %15 = load i64, ptr %14, align 8
  %16 = add i64 %15, 1
  store i64 %16, ptr %14, align 8
  %17 = getelementptr inbounds nuw i8, ptr %.0338, i64 1
  %18 = add i64 %.029, 1
  %exitcond.not = icmp eq i64 %18, %1
  br i1 %exitcond.not, label %.preheader6.preheader, label %.lr.ph, !llvm.loop !9

.preheader5.preheader:                            ; preds = %.preheader6
  %.010.lcssa = phi i64 [ %.111, %.preheader6 ]
  %.not13 = icmp eq i64 %.010.lcssa, 0
  br i1 %.not13, label %.preheader4.preheader, label %.preheader5

19:                                               ; preds = %.preheader6.preheader, %.preheader6
  %.1312 = phi i64 [ 0, %.preheader6.preheader ], [ %25, %.preheader6 ]
  %.01011 = phi i64 [ 0, %.preheader6.preheader ], [ %.111, %.preheader6 ]
  %20 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.1312
  %21 = load i64, ptr %20, align 8
  %.not8 = icmp eq i64 %21, 0
  br i1 %.not8, label %.preheader6, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.01011
  store i64 %.1312, ptr %23, align 8
  %24 = add i64 %.01011, 1
  br label %.preheader6

.preheader6:                                      ; preds = %22, %19
  %.111 = phi i64 [ %24, %22 ], [ %.01011, %19 ]
  %25 = add nuw nsw i64 %.1312, 1
  %exitcond13.not = icmp eq i64 %25, 256
  br i1 %exitcond13.not, label %.preheader5.preheader, label %19, !llvm.loop !10

.preheader4.preheader:                            ; preds = %.preheader5, %.preheader5.preheader
  %26 = icmp ugt i64 %.010.lcssa, 1
  br i1 %26, label %.preheader4, label %.preheader4._crit_edge

.preheader5:                                      ; preds = %.preheader5.preheader, %.preheader5
  %.2414 = phi i64 [ %29, %.preheader5 ], [ %.010.lcssa, %.preheader5.preheader ]
  %27 = trunc i64 %.010.lcssa to i32
  %28 = trunc i64 %.2414 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %27, i32 noundef %28)
  %29 = add i64 %.2414, -1
  %.not = icmp eq i64 %29, 0
  br i1 %.not, label %.preheader4.preheader, label %.preheader5, !llvm.loop !11

.preheader4:                                      ; preds = %.preheader4.preheader, %.preheader4
  %.21216 = phi i64 [ %30, %.preheader4 ], [ %.010.lcssa, %.preheader4.preheader ]
  %30 = add i64 %.21216, -1
  %31 = load i64, ptr %4, align 16
  %32 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %30
  %33 = load i64, ptr %32, align 8
  store i64 %33, ptr %4, align 16
  %34 = trunc i64 %30 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %34, i32 noundef 1)
  %35 = load i64, ptr %4, align 16
  %36 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %35
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %31
  %39 = load i64, ptr %38, align 8
  %40 = add i64 %37, %39
  %41 = add i64 %.21216, 255
  %42 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %41
  store i64 %40, ptr %42, align 8
  %43 = trunc i64 %41 to i32
  %44 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %31
  store i32 %43, ptr %44, align 4
  %45 = trunc i64 %.21216 to i32
  %46 = sub i32 -255, %45
  %47 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %35
  store i32 %46, ptr %47, align 4
  store i64 %41, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %34, i32 noundef 1)
  %48 = icmp ugt i64 %30, 1
  br i1 %48, label %.preheader4, label %.preheader4._crit_edge, !llvm.loop !12

.preheader4._crit_edge:                           ; preds = %.preheader4, %.preheader4.preheader
  %.212.lcssa = phi i64 [ %.010.lcssa, %.preheader4.preheader ], [ %30, %.preheader4 ]
  %49 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %50 = getelementptr inbounds nuw i8, ptr %49, i64 1024
  store i32 0, ptr %50, align 4
  br label %51

51:                                               ; preds = %.preheader4._crit_edge, %66
  %.03931 = phi i64 [ 0, %.preheader4._crit_edge ], [ %.140, %66 ]
  %.04230 = phi i64 [ 0, %.preheader4._crit_edge ], [ %67, %66 ]
  %.04529 = phi i64 [ 0, %.preheader4._crit_edge ], [ %.146, %66 ]
  %52 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04230
  %53 = load i64, ptr %52, align 8
  %.not6 = icmp eq i64 %53, 0
  br i1 %.not6, label %54, label %.preheader7

.preheader7:                                      ; preds = %51
  %.037.in18 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.04230
  %.03719 = load i32, ptr %.037.in18, align 4
  %.not720 = icmp eq i32 %.03719, 0
  br i1 %.not720, label %._crit_edge26, label %.lr.ph25

54:                                               ; preds = %51
  %55 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04230
  store i32 0, ptr %55, align 4
  %56 = getelementptr inbounds nuw i8, ptr %7, i64 %.04230
  store i8 0, ptr %56, align 1
  br label %66

.lr.ph25:                                         ; preds = %.preheader7, %.lr.ph25
  %.03724 = phi i32 [ %.037, %.lr.ph25 ], [ %.03719, %.preheader7 ]
  %.323 = phi i64 [ %61, %.lr.ph25 ], [ 0, %.preheader7 ]
  %.0522 = phi i64 [ %60, %.lr.ph25 ], [ 1, %.preheader7 ]
  %.04321 = phi i64 [ %.144, %.lr.ph25 ], [ 0, %.preheader7 ]
  %57 = icmp slt i32 %.03724, 0
  %58 = select i1 %57, i64 %.0522, i64 0
  %.144 = add i64 %.04321, %58
  %.138 = call i32 @llvm.abs.i32(i32 %.03724, i1 true)
  %59 = zext nneg i32 %.138 to i64
  %60 = shl i64 %.0522, 1
  %61 = add i64 %.323, 1
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %59
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %._crit_edge26, label %.lr.ph25, !llvm.loop !13

._crit_edge26:                                    ; preds = %.lr.ph25, %.preheader7
  %.043.lcssa = phi i64 [ 0, %.preheader7 ], [ %.144, %.lr.ph25 ]
  %.3.lcssa = phi i64 [ 0, %.preheader7 ], [ %61, %.lr.ph25 ]
  %62 = trunc i64 %.043.lcssa to i32
  %63 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04230
  store i32 %62, ptr %63, align 4
  %64 = trunc i64 %.3.lcssa to i8
  %65 = getelementptr inbounds nuw i8, ptr %7, i64 %.04230
  store i8 %64, ptr %65, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.04529)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.03931)
  br label %66

66:                                               ; preds = %._crit_edge26, %54
  %.146 = phi i64 [ %spec.select, %._crit_edge26 ], [ %.04529, %54 ]
  %.140 = phi i64 [ %.241, %._crit_edge26 ], [ %.03931, %54 ]
  %67 = add nuw nsw i64 %.04230, 1
  %exitcond14.not = icmp eq i64 %67, 256
  br i1 %exitcond14.not, label %68, label %51, !llvm.loop !14

68:                                               ; preds = %66
  %.045.lcssa = phi i64 [ %.146, %66 ]
  %.039.lcssa = phi i64 [ %.140, %66 ]
  %69 = icmp ugt i64 %.039.lcssa, 32
  br i1 %69, label %70, label %73

70:                                               ; preds = %68
  %71 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %72 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %71)
  call void @exit(i32 noundef 1) #11
  unreachable

73:                                               ; preds = %68
  %74 = icmp eq i64 %.045.lcssa, 0
  br i1 %74, label %75, label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %73
  %exitcond15.not43 = icmp eq i64 0, %1
  br i1 %exitcond15.not43, label %.preheader3._crit_edge, label %.lr.ph49

75:                                               ; preds = %73
  %76 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %77 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %76)
  call void @exit(i32 noundef 1) #11
  unreachable

.lr.ph49:                                         ; preds = %.preheader3.preheader, %.preheader3
  %.0148 = phi i32 [ %.1.lcssa, %.preheader3 ], [ -1, %.preheader3.preheader ]
  %.1647 = phi i64 [ %111, %.preheader3 ], [ 0, %.preheader3.preheader ]
  %.02446 = phi i8 [ %.125.lcssa, %.preheader3 ], [ 0, %.preheader3.preheader ]
  %.02845 = phi i64 [ %.129.lcssa, %.preheader3 ], [ 0, %.preheader3.preheader ]
  %.13444 = phi ptr [ %110, %.preheader3 ], [ %0, %.preheader3.preheader ]
  %78 = load i8, ptr %.13444, align 1
  %79 = zext i8 %78 to i64
  %80 = getelementptr inbounds nuw i8, ptr %7, i64 %79
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = add nsw i32 %82, -1
  %84 = shl nuw i32 1, %83
  %85 = sext i32 %84 to i64
  %86 = zext i8 %81 to i64
  %87 = icmp samesign ult i64 0, %86
  br i1 %87, label %.lr.ph38, label %.preheader3

.lr.ph38:                                         ; preds = %.lr.ph49, %100
  %.136 = phi i32 [ %.2, %100 ], [ %.0148, %.lr.ph49 ]
  %.435 = phi i64 [ %107, %100 ], [ 0, %.lr.ph49 ]
  %.01534 = phi i64 [ %106, %100 ], [ %85, %.lr.ph49 ]
  %.12533 = phi i8 [ %.327, %100 ], [ %.02446, %.lr.ph49 ]
  %.12932 = phi i64 [ %.230, %100 ], [ %.02845, %.lr.ph49 ]
  %88 = phi i8 [ %.pre-phi.in, %100 ], [ %78, %.lr.ph49 ]
  %89 = icmp eq i32 %.136, 7
  br i1 %89, label %90, label %97

90:                                               ; preds = %.lr.ph38
  %91 = getelementptr inbounds nuw i8, ptr %11, i64 %.12932
  store i8 %.12533, ptr %91, align 1
  %92 = add i64 %.12932, 1
  %93 = icmp eq i64 %92, %1
  br i1 %93, label %94, label %._crit_edge

._crit_edge:                                      ; preds = %90
  %.pre1 = load i8, ptr %.13444, align 1
  br label %100

94:                                               ; preds = %90
  %95 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %96 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %95)
  call void @exit(i32 noundef 1) #11
  unreachable

97:                                               ; preds = %.lr.ph38
  %98 = add nsw i32 %.136, 1
  %99 = shl i8 %.12533, 1
  br label %100

100:                                              ; preds = %97, %._crit_edge
  %.pre-phi.in = phi i8 [ %.pre1, %._crit_edge ], [ %88, %97 ]
  %.230 = phi i64 [ %92, %._crit_edge ], [ %.12932, %97 ]
  %.226 = phi i8 [ 0, %._crit_edge ], [ %99, %97 ]
  %.2 = phi i32 [ 0, %._crit_edge ], [ %98, %97 ]
  %.pre-phi = zext i8 %.pre-phi.in to i64
  %101 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.pre-phi
  %102 = load i32, ptr %101, align 4
  %103 = zext i32 %102 to i64
  %104 = and i64 %.01534, %103
  %.not5 = icmp ne i64 %104, 0
  %105 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %105
  %106 = lshr i64 %.01534, 1
  %107 = add nuw nsw i64 %.435, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  %108 = zext i8 %.pre to i64
  %109 = icmp samesign ult i64 %107, %108
  br i1 %109, label %.lr.ph38, label %.preheader3, !llvm.loop !15

.preheader3:                                      ; preds = %100, %.lr.ph49
  %.129.lcssa = phi i64 [ %.02845, %.lr.ph49 ], [ %.230, %100 ]
  %.125.lcssa = phi i8 [ %.02446, %.lr.ph49 ], [ %.327, %100 ]
  %.1.lcssa = phi i32 [ %.0148, %.lr.ph49 ], [ %.2, %100 ]
  %110 = getelementptr inbounds nuw i8, ptr %.13444, i64 1
  %111 = add i64 %.1647, 1
  %exitcond15.not = icmp eq i64 %111, %1
  br i1 %exitcond15.not, label %.preheader3._crit_edge, label %.lr.ph49, !llvm.loop !16

.preheader3._crit_edge:                           ; preds = %.preheader3, %.preheader3.preheader
  %.028.lcssa = phi i64 [ 0, %.preheader3.preheader ], [ %.129.lcssa, %.preheader3 ]
  %.024.lcssa = phi i8 [ 0, %.preheader3.preheader ], [ %.125.lcssa, %.preheader3 ]
  %.01.lcssa = phi i32 [ -1, %.preheader3.preheader ], [ %.1.lcssa, %.preheader3 ]
  %112 = sub nsw i32 7, %.01.lcssa
  %113 = zext i8 %.024.lcssa to i32
  %114 = shl i32 %113, %112
  %115 = trunc i32 %114 to i8
  %116 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %115, ptr %116, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %117

117:                                              ; preds = %.preheader3._crit_edge, %139
  %.062 = phi ptr [ %9, %.preheader3._crit_edge ], [ %119, %139 ]
  %.2761 = phi i64 [ 0, %.preheader3._crit_edge ], [ %140, %139 ]
  %118 = trunc nuw i64 %.2761 to i8
  store i8 %118, ptr %.062, align 1
  %119 = getelementptr inbounds nuw i8, ptr %.062, i64 1
  %120 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.2761
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr inbounds nuw i8, ptr %7, i64 %.2761
  %123 = load i8, ptr %122, align 1
  %124 = zext i8 %123 to i32
  %125 = or i32 %121, %124
  %.not3 = icmp eq i32 %125, 0
  br i1 %.not3, label %139, label %126

126:                                              ; preds = %117
  %127 = add nsw i32 %124, -1
  %128 = shl nuw i32 1, %127
  %129 = sext i32 %128 to i64
  %130 = zext i8 %123 to i64
  %exitcond16.not53 = icmp eq i64 0, %130
  br i1 %exitcond16.not53, label %._crit_edge59, label %.lr.ph58

.lr.ph58:                                         ; preds = %126, %.lr.ph58
  %.556 = phi i64 [ %137, %.lr.ph58 ], [ 0, %126 ]
  %.11655 = phi i64 [ %136, %.lr.ph58 ], [ %129, %126 ]
  %.01954 = phi i32 [ %spec.select1, %.lr.ph58 ], [ 0, %126 ]
  %131 = shl i32 %.01954, 1
  %132 = or disjoint i32 %131, 1
  %133 = zext i32 %121 to i64
  %134 = and i64 %.11655, %133
  %.not4 = icmp eq i64 %134, 0
  %135 = add i32 %131, 2
  %spec.select1 = select i1 %.not4, i32 %132, i32 %135
  %136 = lshr i64 %.11655, 1
  %137 = add nuw nsw i64 %.556, 1
  %exitcond16.not = icmp eq i64 %137, %130
  br i1 %exitcond16.not, label %._crit_edge59, label %.lr.ph58, !llvm.loop !17

._crit_edge59:                                    ; preds = %.lr.ph58, %126
  %.019.lcssa = phi i32 [ 0, %126 ], [ %spec.select1, %.lr.ph58 ]
  %138 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.2761
  store i32 %.019.lcssa, ptr %138, align 4
  br label %139

139:                                              ; preds = %._crit_edge59, %117
  %140 = add nuw nsw i64 %.2761, 1
  %exitcond17.not = icmp eq i64 %140, 256
  br i1 %exitcond17.not, label %.preheader2.preheader, label %117, !llvm.loop !18

.preheader2.preheader:                            ; preds = %139, %.critedge
  %.664 = phi i64 [ %157, %.critedge ], [ 1, %139 ]
  %141 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.664
  %142 = load i32, ptr %141, align 4
  %143 = getelementptr inbounds nuw i8, ptr %9, i64 %.664
  %144 = load i8, ptr %143, align 1
  br label %145

145:                                              ; preds = %.preheader2.preheader, %150
  %.3863 = phi i64 [ %.664, %.preheader2.preheader ], [ %146, %150 ]
  %146 = add nsw i64 %.3863, -1
  %147 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %146
  %148 = load i32, ptr %147, align 4
  %149 = icmp ugt i32 %148, %142
  br i1 %149, label %150, label %.critedge

150:                                              ; preds = %145
  %151 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.3863
  store i32 %148, ptr %151, align 4
  %152 = getelementptr inbounds nuw i8, ptr %9, i64 %146
  %153 = load i8, ptr %152, align 1
  %154 = getelementptr inbounds nuw i8, ptr %9, i64 %.3863
  store i8 %153, ptr %154, align 1
  %.not2 = icmp eq i64 %146, 0
  br i1 %.not2, label %.critedge, label %145, !llvm.loop !19

.critedge:                                        ; preds = %145, %150
  %.38.lcssa = phi i64 [ %.3863, %145 ], [ 0, %150 ]
  %155 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %142, ptr %155, align 4
  %156 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %144, ptr %156, align 1
  %157 = add nuw nsw i64 %.664, 1
  %exitcond18.not = icmp eq i64 %157, 256
  br i1 %exitcond18.not, label %.preheader1, label %.preheader2.preheader, !llvm.loop !20

.preheader1:                                      ; preds = %.critedge, %.preheader1
  %.49 = phi i64 [ %161, %.preheader1 ], [ 0, %.critedge ]
  %158 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %159 = load i32, ptr %158, align 4
  %160 = icmp eq i32 %159, 0
  %161 = add i64 %.49, 1
  br i1 %160, label %.preheader1, label %.preheader.preheader, !llvm.loop !21

.preheader.preheader:                             ; preds = %.preheader1
  %.49.lcssa = phi i64 [ %.49, %.preheader1 ]
  %162 = icmp ult i64 0, %1
  br i1 %162, label %.lr.ph71, label %.preheader._crit_edge

.lr.ph71:                                         ; preds = %.preheader.preheader, %.preheader
  %.770 = phi i64 [ %.9, %.preheader ], [ %.49.lcssa, %.preheader.preheader ]
  %.31369 = phi i64 [ %.414, %.preheader ], [ 0, %.preheader.preheader ]
  %.21768 = phi i64 [ %.318, %.preheader ], [ 128, %.preheader.preheader ]
  %.22167 = phi i32 [ %.423, %.preheader ], [ 0, %.preheader.preheader ]
  %.03166 = phi ptr [ %.132, %.preheader ], [ %11, %.preheader.preheader ]
  %.23565 = phi ptr [ %.336, %.preheader ], [ %0, %.preheader.preheader ]
  %163 = shl i32 %.22167, 1
  %164 = or disjoint i32 %163, 1
  %165 = load i8, ptr %.03166, align 1
  %166 = zext i8 %165 to i64
  %167 = and i64 %.21768, %166
  %.not1 = icmp eq i64 %167, 0
  %168 = add i32 %163, 2
  %spec.select2 = select i1 %.not1, i32 %164, i32 %168
  br label %169

169:                                              ; preds = %169, %.lr.ph71
  %.8 = phi i64 [ %.770, %.lr.ph71 ], [ %173, %169 ]
  %170 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %171 = load i32, ptr %170, align 4
  %172 = icmp ult i32 %171, %spec.select2
  %173 = add i64 %.8, 1
  br i1 %172, label %169, label %174, !llvm.loop !22

174:                                              ; preds = %169
  %.8.lcssa = phi i64 [ %.8, %169 ]
  %.lcssa = phi i32 [ %171, %169 ]
  %175 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %175, label %176, label %.preheader

176:                                              ; preds = %174
  %177 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %178 = load i8, ptr %177, align 1
  store i8 %178, ptr %.23565, align 1
  %179 = getelementptr inbounds nuw i8, ptr %.23565, i64 1
  %180 = add nuw i64 %.31369, 1
  br label %.preheader

.preheader:                                       ; preds = %176, %174
  %.336 = phi ptr [ %179, %176 ], [ %.23565, %174 ]
  %.423 = phi i32 [ 0, %176 ], [ %spec.select2, %174 ]
  %.414 = phi i64 [ %180, %176 ], [ %.31369, %174 ]
  %.9 = phi i64 [ %.49.lcssa, %176 ], [ %.8.lcssa, %174 ]
  %181 = icmp ult i64 %.21768, 2
  %182 = lshr i64 %.21768, 1
  %.132.idx = zext i1 %181 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.03166, i64 %.132.idx
  %.318 = select i1 %181, i64 128, i64 %182
  %183 = icmp ult i64 %.414, %1
  br i1 %183, label %.lr.ph71, label %.preheader._crit_edge, !llvm.loop !23

.preheader._crit_edge:                            ; preds = %.preheader, %.preheader.preheader
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

.lr.ph:                                           ; preds = %4, %36
  %.012 = phi i32 [ %.0, %36 ], [ %3, %4 ]
  %11 = shl nsw i32 %.012, 1
  %12 = icmp slt i32 %11, %2
  br i1 %12, label %13, label %25

13:                                               ; preds = %.lr.ph
  %14 = sext i32 %11 to i64
  %15 = getelementptr [8 x i8], ptr %1, i64 %14
  %16 = getelementptr i8, ptr %15, i64 -8
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %17
  %19 = load i64, ptr %18, align 8
  %20 = load i64, ptr %15, align 8
  %21 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %20
  %22 = load i64, ptr %21, align 8
  %23 = icmp ugt i64 %19, %22
  %24 = zext i1 %23 to i32
  %spec.select = or disjoint i32 %11, %24
  br label %25

25:                                               ; preds = %13, %.lr.ph
  %.0 = phi i32 [ %11, %.lr.ph ], [ %spec.select, %13 ]
  %26 = ashr exact i64 %9, 29
  %27 = getelementptr inbounds i8, ptr %0, i64 %26
  %28 = load i64, ptr %27, align 8
  %29 = sext i32 %.0 to i64
  %30 = getelementptr [8 x i8], ptr %1, i64 %29
  %31 = getelementptr i8, ptr %30, i64 -8
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %32
  %34 = load i64, ptr %33, align 8
  %35 = icmp ult i64 %28, %34
  br i1 %35, label %._crit_edge, label %36

36:                                               ; preds = %25
  %37 = sext i32 %.012 to i64
  %38 = getelementptr [8 x i8], ptr %1, i64 %37
  %39 = getelementptr i8, ptr %38, i64 -8
  store i64 %32, ptr %39, align 8
  %.not = icmp sgt i32 %.0, %10
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !24

._crit_edge:                                      ; preds = %36, %25, %4
  %.01.lcssa = phi i32 [ %3, %4 ], [ %.012, %25 ], [ %.0, %36 ]
  %40 = ashr exact i64 %9, 32
  %41 = sext i32 %.01.lcssa to i64
  %42 = getelementptr [8 x i8], ptr %1, i64 %41
  %43 = getelementptr i8, ptr %42, i64 -8
  store i64 %40, ptr %43, align 8
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
  br i1 %exitcond.not, label %.loopexit, label %6, !llvm.loop !25

6:                                                ; preds = %.preheader, %5
  %exitcond.not2 = phi i1 [ false, %.preheader ], [ %exitcond.not, %5 ]
  %.011 = phi i32 [ 1, %.preheader ], [ %.01, %5 ]
  %7 = load ptr, ptr %4, align 8
  %8 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(4) @.str.4) #10
  %.not = icmp eq i32 %8, 0
  %9 = add nuw i32 %.011, 1
  br i1 %.not, label %.loopexit, label %5

.loopexit:                                        ; preds = %5, %6, %2
  %.not1 = phi i1 [ true, %2 ], [ %exitcond.not2, %6 ], [ %exitcond.not, %5 ]
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
  %6 = add i32 %.neg1, %5
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
