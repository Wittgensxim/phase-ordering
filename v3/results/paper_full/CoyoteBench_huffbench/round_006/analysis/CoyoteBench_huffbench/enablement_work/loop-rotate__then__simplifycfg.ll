; ModuleID = 'results\paper_full\CoyoteBench_huffbench\round_005\output.ll'
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
  br i1 %exitcond.not7, label %.preheader6, label %.lr.ph

.preheader6:                                      ; preds = %.lr.ph, %2
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
  br i1 %exitcond.not, label %.preheader6, label %.lr.ph, !llvm.loop !9

.preheader5:                                      ; preds = %25
  %.010.lcssa = phi i64 [ %.111, %25 ]
  %.not13 = icmp eq i64 %.010.lcssa, 0
  br i1 %.not13, label %.preheader4, label %.lr.ph15

19:                                               ; preds = %.preheader6, %25
  %.1312 = phi i64 [ 0, %.preheader6 ], [ %26, %25 ]
  %.01011 = phi i64 [ 0, %.preheader6 ], [ %.111, %25 ]
  %20 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.1312
  %21 = load i64, ptr %20, align 8
  %.not8 = icmp eq i64 %21, 0
  br i1 %.not8, label %25, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.01011
  store i64 %.1312, ptr %23, align 8
  %24 = add i64 %.01011, 1
  br label %25

25:                                               ; preds = %22, %19
  %.111 = phi i64 [ %24, %22 ], [ %.01011, %19 ]
  %26 = add nuw nsw i64 %.1312, 1
  %exitcond13.not = icmp eq i64 %26, 256
  br i1 %exitcond13.not, label %.preheader5, label %19, !llvm.loop !10

.preheader4:                                      ; preds = %.lr.ph15, %.preheader5
  %27 = icmp ugt i64 %.010.lcssa, 1
  br i1 %27, label %.lr.ph17, label %._crit_edge18

.lr.ph15:                                         ; preds = %.preheader5, %.lr.ph15
  %.2414 = phi i64 [ %30, %.lr.ph15 ], [ %.010.lcssa, %.preheader5 ]
  %28 = trunc i64 %.010.lcssa to i32
  %29 = trunc i64 %.2414 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %28, i32 noundef %29)
  %30 = add i64 %.2414, -1
  %.not = icmp eq i64 %30, 0
  br i1 %.not, label %.preheader4, label %.lr.ph15, !llvm.loop !11

.lr.ph17:                                         ; preds = %.preheader4, %.lr.ph17
  %.21216 = phi i64 [ %31, %.lr.ph17 ], [ %.010.lcssa, %.preheader4 ]
  %31 = add i64 %.21216, -1
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
  %41 = add i64 %38, %40
  %42 = add i64 %.21216, 255
  %43 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %42
  store i64 %41, ptr %43, align 8
  %44 = trunc i64 %42 to i32
  %45 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %32
  store i32 %44, ptr %45, align 4
  %46 = trunc i64 %.21216 to i32
  %47 = sub i32 -255, %46
  %48 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %36
  store i32 %47, ptr %48, align 4
  store i64 %42, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %35, i32 noundef 1)
  %49 = icmp ugt i64 %31, 1
  br i1 %49, label %.lr.ph17, label %._crit_edge18, !llvm.loop !12

._crit_edge18:                                    ; preds = %.lr.ph17, %.preheader4
  %.212.lcssa = phi i64 [ %.010.lcssa, %.preheader4 ], [ %31, %.lr.ph17 ]
  %50 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 1024
  store i32 0, ptr %51, align 4
  br label %52

52:                                               ; preds = %._crit_edge18, %68
  %.03933 = phi i64 [ 0, %._crit_edge18 ], [ %.140, %68 ]
  %.04232 = phi i64 [ 0, %._crit_edge18 ], [ %69, %68 ]
  %.04531 = phi i64 [ 0, %._crit_edge18 ], [ %.146, %68 ]
  %53 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04232
  %54 = load i64, ptr %53, align 8
  %.not6 = icmp eq i64 %54, 0
  br i1 %.not6, label %55, label %58

55:                                               ; preds = %52
  %56 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04232
  store i32 0, ptr %56, align 4
  %57 = getelementptr inbounds nuw i8, ptr %7, i64 %.04232
  store i8 0, ptr %57, align 1
  br label %68

58:                                               ; preds = %52
  %.037.in19 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.04232
  %.03720 = load i32, ptr %.037.in19, align 4
  %.not721 = icmp eq i32 %.03720, 0
  br i1 %.not721, label %._crit_edge28, label %.lr.ph27

.lr.ph27:                                         ; preds = %58, %.lr.ph27
  %.03725 = phi i32 [ %.037, %.lr.ph27 ], [ %.03720, %58 ]
  %.324 = phi i64 [ %63, %.lr.ph27 ], [ 0, %58 ]
  %.0523 = phi i64 [ %62, %.lr.ph27 ], [ 1, %58 ]
  %.04322 = phi i64 [ %.144, %.lr.ph27 ], [ 0, %58 ]
  %59 = icmp slt i32 %.03725, 0
  %60 = select i1 %59, i64 %.0523, i64 0
  %.144 = add i64 %.04322, %60
  %.138 = call i32 @llvm.abs.i32(i32 %.03725, i1 true)
  %61 = zext nneg i32 %.138 to i64
  %62 = shl i64 %.0523, 1
  %63 = add i64 %.324, 1
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %61
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %._crit_edge28, label %.lr.ph27, !llvm.loop !13

._crit_edge28:                                    ; preds = %.lr.ph27, %58
  %.043.lcssa = phi i64 [ 0, %58 ], [ %.144, %.lr.ph27 ]
  %.3.lcssa = phi i64 [ 0, %58 ], [ %63, %.lr.ph27 ]
  %64 = trunc i64 %.043.lcssa to i32
  %65 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04232
  store i32 %64, ptr %65, align 4
  %66 = trunc i64 %.3.lcssa to i8
  %67 = getelementptr inbounds nuw i8, ptr %7, i64 %.04232
  store i8 %66, ptr %67, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.04531)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.03933)
  br label %68

68:                                               ; preds = %._crit_edge28, %55
  %.146 = phi i64 [ %spec.select, %._crit_edge28 ], [ %.04531, %55 ]
  %.140 = phi i64 [ %.241, %._crit_edge28 ], [ %.03933, %55 ]
  %69 = add nuw nsw i64 %.04232, 1
  %exitcond14.not = icmp eq i64 %69, 256
  br i1 %exitcond14.not, label %70, label %52, !llvm.loop !14

70:                                               ; preds = %68
  %.045.lcssa = phi i64 [ %.146, %68 ]
  %.039.lcssa = phi i64 [ %.140, %68 ]
  %71 = icmp ugt i64 %.039.lcssa, 32
  br i1 %71, label %72, label %75

72:                                               ; preds = %70
  %73 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %74 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %73)
  call void @exit(i32 noundef 1) #11
  unreachable

75:                                               ; preds = %70
  %76 = icmp eq i64 %.045.lcssa, 0
  br i1 %76, label %77, label %.preheader3

.preheader3:                                      ; preds = %75
  %exitcond15.not46 = icmp eq i64 0, %1
  br i1 %exitcond15.not46, label %._crit_edge53, label %.lr.ph52

77:                                               ; preds = %75
  %78 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %79 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %78)
  call void @exit(i32 noundef 1) #11
  unreachable

.lr.ph52:                                         ; preds = %.preheader3, %._crit_edge42
  %.0151 = phi i32 [ %.1.lcssa, %._crit_edge42 ], [ -1, %.preheader3 ]
  %.1650 = phi i64 [ %113, %._crit_edge42 ], [ 0, %.preheader3 ]
  %.02449 = phi i8 [ %.125.lcssa, %._crit_edge42 ], [ 0, %.preheader3 ]
  %.02848 = phi i64 [ %.129.lcssa, %._crit_edge42 ], [ 0, %.preheader3 ]
  %.13447 = phi ptr [ %112, %._crit_edge42 ], [ %0, %.preheader3 ]
  %80 = load i8, ptr %.13447, align 1
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds nuw i8, ptr %7, i64 %81
  %83 = load i8, ptr %82, align 1
  %84 = zext i8 %83 to i32
  %85 = add nsw i32 %84, -1
  %86 = shl nuw i32 1, %85
  %87 = sext i32 %86 to i64
  %88 = zext i8 %83 to i64
  %89 = icmp samesign ult i64 0, %88
  br i1 %89, label %.lr.ph41, label %._crit_edge42

.lr.ph41:                                         ; preds = %.lr.ph52, %102
  %.139 = phi i32 [ %.2, %102 ], [ %.0151, %.lr.ph52 ]
  %.437 = phi i64 [ %109, %102 ], [ 0, %.lr.ph52 ]
  %.01536 = phi i64 [ %108, %102 ], [ %87, %.lr.ph52 ]
  %.12535 = phi i8 [ %.327, %102 ], [ %.02449, %.lr.ph52 ]
  %.12934 = phi i64 [ %.230, %102 ], [ %.02848, %.lr.ph52 ]
  %90 = phi i8 [ %.pre-phi.in, %102 ], [ %80, %.lr.ph52 ]
  %91 = icmp eq i32 %.139, 7
  br i1 %91, label %92, label %99

92:                                               ; preds = %.lr.ph41
  %93 = getelementptr inbounds nuw i8, ptr %11, i64 %.12934
  store i8 %.12535, ptr %93, align 1
  %94 = add i64 %.12934, 1
  %95 = icmp eq i64 %94, %1
  br i1 %95, label %96, label %._crit_edge

._crit_edge:                                      ; preds = %92
  %.pre1 = load i8, ptr %.13447, align 1
  br label %102

96:                                               ; preds = %92
  %97 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %98 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %97)
  call void @exit(i32 noundef 1) #11
  unreachable

99:                                               ; preds = %.lr.ph41
  %100 = add nsw i32 %.139, 1
  %101 = shl i8 %.12535, 1
  br label %102

102:                                              ; preds = %99, %._crit_edge
  %.pre-phi.in = phi i8 [ %.pre1, %._crit_edge ], [ %90, %99 ]
  %.230 = phi i64 [ %94, %._crit_edge ], [ %.12934, %99 ]
  %.226 = phi i8 [ 0, %._crit_edge ], [ %101, %99 ]
  %.2 = phi i32 [ 0, %._crit_edge ], [ %100, %99 ]
  %.pre-phi = zext i8 %.pre-phi.in to i64
  %103 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.pre-phi
  %104 = load i32, ptr %103, align 4
  %105 = zext i32 %104 to i64
  %106 = and i64 %.01536, %105
  %.not5 = icmp ne i64 %106, 0
  %107 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %107
  %108 = lshr i64 %.01536, 1
  %109 = add nuw nsw i64 %.437, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  %110 = zext i8 %.pre to i64
  %111 = icmp samesign ult i64 %109, %110
  br i1 %111, label %.lr.ph41, label %._crit_edge42, !llvm.loop !15

._crit_edge42:                                    ; preds = %102, %.lr.ph52
  %.129.lcssa = phi i64 [ %.02848, %.lr.ph52 ], [ %.230, %102 ]
  %.125.lcssa = phi i8 [ %.02449, %.lr.ph52 ], [ %.327, %102 ]
  %.1.lcssa = phi i32 [ %.0151, %.lr.ph52 ], [ %.2, %102 ]
  %112 = getelementptr inbounds nuw i8, ptr %.13447, i64 1
  %113 = add i64 %.1650, 1
  %exitcond15.not = icmp eq i64 %113, %1
  br i1 %exitcond15.not, label %._crit_edge53, label %.lr.ph52, !llvm.loop !16

._crit_edge53:                                    ; preds = %._crit_edge42, %.preheader3
  %.028.lcssa = phi i64 [ 0, %.preheader3 ], [ %.129.lcssa, %._crit_edge42 ]
  %.024.lcssa = phi i8 [ 0, %.preheader3 ], [ %.125.lcssa, %._crit_edge42 ]
  %.01.lcssa = phi i32 [ -1, %.preheader3 ], [ %.1.lcssa, %._crit_edge42 ]
  %114 = sub nsw i32 7, %.01.lcssa
  %115 = zext i8 %.024.lcssa to i32
  %116 = shl i32 %115, %114
  %117 = trunc i32 %116 to i8
  %118 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %117, ptr %118, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %119

119:                                              ; preds = %._crit_edge53, %141
  %.066 = phi ptr [ %9, %._crit_edge53 ], [ %121, %141 ]
  %.2765 = phi i64 [ 0, %._crit_edge53 ], [ %142, %141 ]
  %120 = trunc nuw i64 %.2765 to i8
  store i8 %120, ptr %.066, align 1
  %121 = getelementptr inbounds nuw i8, ptr %.066, i64 1
  %122 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.2765
  %123 = load i32, ptr %122, align 4
  %124 = getelementptr inbounds nuw i8, ptr %7, i64 %.2765
  %125 = load i8, ptr %124, align 1
  %126 = zext i8 %125 to i32
  %127 = or i32 %123, %126
  %.not3 = icmp eq i32 %127, 0
  br i1 %.not3, label %141, label %128

128:                                              ; preds = %119
  %129 = add nsw i32 %126, -1
  %130 = shl nuw i32 1, %129
  %131 = sext i32 %130 to i64
  %132 = zext i8 %125 to i64
  %exitcond16.not57 = icmp eq i64 0, %132
  br i1 %exitcond16.not57, label %._crit_edge63, label %.lr.ph62

.lr.ph62:                                         ; preds = %128, %.lr.ph62
  %.560 = phi i64 [ %139, %.lr.ph62 ], [ 0, %128 ]
  %.11659 = phi i64 [ %138, %.lr.ph62 ], [ %131, %128 ]
  %.01958 = phi i32 [ %spec.select1, %.lr.ph62 ], [ 0, %128 ]
  %133 = shl i32 %.01958, 1
  %134 = or disjoint i32 %133, 1
  %135 = zext i32 %123 to i64
  %136 = and i64 %.11659, %135
  %.not4 = icmp eq i64 %136, 0
  %137 = add i32 %133, 2
  %spec.select1 = select i1 %.not4, i32 %134, i32 %137
  %138 = lshr i64 %.11659, 1
  %139 = add nuw nsw i64 %.560, 1
  %exitcond16.not = icmp eq i64 %139, %132
  br i1 %exitcond16.not, label %._crit_edge63, label %.lr.ph62, !llvm.loop !17

._crit_edge63:                                    ; preds = %.lr.ph62, %128
  %.019.lcssa = phi i32 [ 0, %128 ], [ %spec.select1, %.lr.ph62 ]
  %140 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.2765
  store i32 %.019.lcssa, ptr %140, align 4
  br label %141

141:                                              ; preds = %._crit_edge63, %119
  %142 = add nuw nsw i64 %.2765, 1
  %exitcond17.not = icmp eq i64 %142, 256
  br i1 %exitcond17.not, label %.preheader2, label %119, !llvm.loop !18

.preheader2:                                      ; preds = %141, %.critedge
  %.668 = phi i64 [ %159, %.critedge ], [ 1, %141 ]
  %143 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.668
  %144 = load i32, ptr %143, align 4
  %145 = getelementptr inbounds nuw i8, ptr %9, i64 %.668
  %146 = load i8, ptr %145, align 1
  br label %147

147:                                              ; preds = %.preheader2, %152
  %.3867 = phi i64 [ %.668, %.preheader2 ], [ %148, %152 ]
  %148 = add nsw i64 %.3867, -1
  %149 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %148
  %150 = load i32, ptr %149, align 4
  %151 = icmp ugt i32 %150, %144
  br i1 %151, label %152, label %.critedge

152:                                              ; preds = %147
  %153 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.3867
  store i32 %150, ptr %153, align 4
  %154 = getelementptr inbounds nuw i8, ptr %9, i64 %148
  %155 = load i8, ptr %154, align 1
  %156 = getelementptr inbounds nuw i8, ptr %9, i64 %.3867
  store i8 %155, ptr %156, align 1
  %.not2 = icmp eq i64 %148, 0
  br i1 %.not2, label %.critedge, label %147, !llvm.loop !19

.critedge:                                        ; preds = %147, %152
  %.38.lcssa = phi i64 [ %.3867, %147 ], [ 0, %152 ]
  %157 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %144, ptr %157, align 4
  %158 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %146, ptr %158, align 1
  %159 = add nuw nsw i64 %.668, 1
  %exitcond18.not = icmp eq i64 %159, 256
  br i1 %exitcond18.not, label %.preheader1, label %.preheader2, !llvm.loop !20

.preheader1:                                      ; preds = %.critedge, %.preheader1
  %.49 = phi i64 [ %163, %.preheader1 ], [ 0, %.critedge ]
  %160 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %161 = load i32, ptr %160, align 4
  %162 = icmp eq i32 %161, 0
  %163 = add i64 %.49, 1
  br i1 %162, label %.preheader1, label %.preheader, !llvm.loop !21

.preheader:                                       ; preds = %.preheader1
  %.49.lcssa = phi i64 [ %.49, %.preheader1 ]
  %164 = icmp ult i64 0, %1
  br i1 %164, label %.lr.ph75, label %._crit_edge76

.lr.ph75:                                         ; preds = %.preheader, %183
  %.774 = phi i64 [ %.9, %183 ], [ %.49.lcssa, %.preheader ]
  %.31373 = phi i64 [ %.414, %183 ], [ 0, %.preheader ]
  %.21772 = phi i64 [ %.318, %183 ], [ 128, %.preheader ]
  %.22171 = phi i32 [ %.423, %183 ], [ 0, %.preheader ]
  %.03170 = phi ptr [ %.132, %183 ], [ %11, %.preheader ]
  %.23569 = phi ptr [ %.336, %183 ], [ %0, %.preheader ]
  %165 = shl i32 %.22171, 1
  %166 = or disjoint i32 %165, 1
  %167 = load i8, ptr %.03170, align 1
  %168 = zext i8 %167 to i64
  %169 = and i64 %.21772, %168
  %.not1 = icmp eq i64 %169, 0
  %170 = add i32 %165, 2
  %spec.select2 = select i1 %.not1, i32 %166, i32 %170
  br label %171

171:                                              ; preds = %171, %.lr.ph75
  %.8 = phi i64 [ %.774, %.lr.ph75 ], [ %175, %171 ]
  %172 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %173 = load i32, ptr %172, align 4
  %174 = icmp ult i32 %173, %spec.select2
  %175 = add i64 %.8, 1
  br i1 %174, label %171, label %176, !llvm.loop !22

176:                                              ; preds = %171
  %.8.lcssa = phi i64 [ %.8, %171 ]
  %.lcssa = phi i32 [ %173, %171 ]
  %177 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %177, label %178, label %183

178:                                              ; preds = %176
  %179 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %180 = load i8, ptr %179, align 1
  store i8 %180, ptr %.23569, align 1
  %181 = getelementptr inbounds nuw i8, ptr %.23569, i64 1
  %182 = add nuw i64 %.31373, 1
  br label %183

183:                                              ; preds = %178, %176
  %.336 = phi ptr [ %181, %178 ], [ %.23569, %176 ]
  %.423 = phi i32 [ 0, %178 ], [ %spec.select2, %176 ]
  %.414 = phi i64 [ %182, %178 ], [ %.31373, %176 ]
  %.9 = phi i64 [ %.49.lcssa, %178 ], [ %.8.lcssa, %176 ]
  %184 = icmp ult i64 %.21772, 2
  %185 = lshr i64 %.21772, 1
  %.132.idx = zext i1 %184 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.03170, i64 %.132.idx
  %.318 = select i1 %184, i64 128, i64 %185
  %186 = icmp ult i64 %.414, %1
  br i1 %186, label %.lr.ph75, label %._crit_edge76, !llvm.loop !23

._crit_edge76:                                    ; preds = %183, %.preheader
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
  %.not3 = icmp sgt i32 %3, %10
  br i1 %.not3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %4, %36
  %.014 = phi i32 [ %.0, %36 ], [ %3, %4 ]
  %11 = shl nsw i32 %.014, 1
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
  %37 = sext i32 %.014 to i64
  %38 = getelementptr [8 x i8], ptr %1, i64 %37
  %39 = getelementptr i8, ptr %38, i64 -8
  store i64 %32, ptr %39, align 8
  %.not = icmp sgt i32 %.0, %10
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !24

._crit_edge:                                      ; preds = %25, %4, %36
  %.012 = phi i32 [ %.0, %36 ], [ %3, %4 ], [ %.014, %25 ]
  %40 = ashr exact i64 %9, 32
  %41 = sext i32 %.012 to i64
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
