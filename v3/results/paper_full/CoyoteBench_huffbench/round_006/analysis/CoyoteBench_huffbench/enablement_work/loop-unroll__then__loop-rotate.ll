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
  %exitcond.not7 = icmp eq i64 0, %1
  br i1 %exitcond.not7, label %.preheader6, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %12

..preheader6_crit_edge:                           ; preds = %12
  br label %.preheader6

.preheader6:                                      ; preds = %..preheader6_crit_edge, %2
  br label %20

12:                                               ; preds = %.lr.ph, %12
  %.029 = phi i64 [ 0, %.lr.ph ], [ %19, %12 ]
  %.0338 = phi ptr [ %0, %.lr.ph ], [ %18, %12 ]
  %13 = load i8, ptr %.0338, align 1
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %14
  %16 = load i64, ptr %15, align 8
  %17 = add i64 %16, 1
  store i64 %17, ptr %15, align 8
  %18 = getelementptr inbounds nuw i8, ptr %.0338, i64 1
  %19 = add i64 %.029, 1
  %exitcond.not = icmp eq i64 %19, %1
  br i1 %exitcond.not, label %..preheader6_crit_edge, label %12, !llvm.loop !9

.preheader5:                                      ; preds = %34
  %.010.lcssa = phi i64 [ %.111.1, %34 ]
  %.not13 = icmp eq i64 %.010.lcssa, 0
  br i1 %.not13, label %.preheader4, label %.lr.ph15

.lr.ph15:                                         ; preds = %.preheader5
  br label %37

20:                                               ; preds = %.preheader6, %34
  %.1312 = phi i64 [ 0, %.preheader6 ], [ %35, %34 ]
  %.01011 = phi i64 [ 0, %.preheader6 ], [ %.111.1, %34 ]
  %21 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.1312
  %22 = load i64, ptr %21, align 8
  %.not8 = icmp eq i64 %22, 0
  br i1 %.not8, label %26, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.01011
  store i64 %.1312, ptr %24, align 8
  %25 = add i64 %.01011, 1
  br label %26

26:                                               ; preds = %23, %20
  %.111 = phi i64 [ %25, %23 ], [ %.01011, %20 ]
  %27 = add nuw nsw i64 %.1312, 1
  br label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %27
  %30 = load i64, ptr %29, align 8
  %.not8.1 = icmp eq i64 %30, 0
  br i1 %.not8.1, label %34, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.111
  store i64 %27, ptr %32, align 8
  %33 = add i64 %.111, 1
  br label %34

34:                                               ; preds = %31, %28
  %.111.1 = phi i64 [ %33, %31 ], [ %.111, %28 ]
  %35 = add nuw nsw i64 %.1312, 2
  %exitcond13.not = icmp eq i64 %35, 256
  br i1 %exitcond13.not, label %.preheader5, label %20, !llvm.loop !10

..preheader4_crit_edge:                           ; preds = %37
  br label %.preheader4

.preheader4:                                      ; preds = %..preheader4_crit_edge, %.preheader5
  %36 = icmp ugt i64 %.010.lcssa, 1
  br i1 %36, label %.lr.ph17, label %61

.lr.ph17:                                         ; preds = %.preheader4
  br label %41

37:                                               ; preds = %.lr.ph15, %37
  %.2414 = phi i64 [ %.010.lcssa, %.lr.ph15 ], [ %40, %37 ]
  %38 = trunc i64 %.010.lcssa to i32
  %39 = trunc i64 %.2414 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %38, i32 noundef %39)
  %40 = add i64 %.2414, -1
  %.not = icmp eq i64 %40, 0
  br i1 %.not, label %..preheader4_crit_edge, label %37, !llvm.loop !11

41:                                               ; preds = %.lr.ph17, %41
  %.21216 = phi i64 [ %.010.lcssa, %.lr.ph17 ], [ %42, %41 ]
  %42 = add i64 %.21216, -1
  %43 = load i64, ptr %4, align 16
  %44 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %42
  %45 = load i64, ptr %44, align 8
  store i64 %45, ptr %4, align 16
  %46 = trunc i64 %42 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %46, i32 noundef 1)
  %47 = load i64, ptr %4, align 16
  %48 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %47
  %49 = load i64, ptr %48, align 8
  %50 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %43
  %51 = load i64, ptr %50, align 8
  %52 = add i64 %49, %51
  %53 = add i64 %.21216, 255
  %54 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %53
  store i64 %52, ptr %54, align 8
  %55 = trunc i64 %53 to i32
  %56 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %43
  store i32 %55, ptr %56, align 4
  %57 = trunc i64 %.21216 to i32
  %58 = sub i32 -255, %57
  %59 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %47
  store i32 %58, ptr %59, align 4
  store i64 %53, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %46, i32 noundef 1)
  %60 = icmp ugt i64 %42, 1
  br i1 %60, label %41, label %._crit_edge18, !llvm.loop !12

._crit_edge18:                                    ; preds = %41
  %split = phi i64 [ %42, %41 ]
  br label %61

61:                                               ; preds = %._crit_edge18, %.preheader4
  %.212.lcssa = phi i64 [ %split, %._crit_edge18 ], [ %.010.lcssa, %.preheader4 ]
  %62 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %63 = getelementptr inbounds nuw i8, ptr %62, i64 1024
  store i32 0, ptr %63, align 4
  br label %64

64:                                               ; preds = %61, %82
  %.03933 = phi i64 [ 0, %61 ], [ %.140, %82 ]
  %.04232 = phi i64 [ 0, %61 ], [ %83, %82 ]
  %.04531 = phi i64 [ 0, %61 ], [ %.146, %82 ]
  %65 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04232
  %66 = load i64, ptr %65, align 8
  %.not6 = icmp eq i64 %66, 0
  br i1 %.not6, label %67, label %70

67:                                               ; preds = %64
  %68 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04232
  store i32 0, ptr %68, align 4
  %69 = getelementptr inbounds nuw i8, ptr %7, i64 %.04232
  store i8 0, ptr %69, align 1
  br label %82

70:                                               ; preds = %64
  %.037.in19 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.04232
  %.03720 = load i32, ptr %.037.in19, align 4
  %.not721 = icmp eq i32 %.03720, 0
  br i1 %.not721, label %77, label %.lr.ph27

.lr.ph27:                                         ; preds = %70
  br label %71

71:                                               ; preds = %.lr.ph27, %71
  %.03725 = phi i32 [ %.03720, %.lr.ph27 ], [ %.037, %71 ]
  %.324 = phi i64 [ 0, %.lr.ph27 ], [ %76, %71 ]
  %.0523 = phi i64 [ 1, %.lr.ph27 ], [ %75, %71 ]
  %.04322 = phi i64 [ 0, %.lr.ph27 ], [ %.144, %71 ]
  %72 = icmp slt i32 %.03725, 0
  %73 = select i1 %72, i64 %.0523, i64 0
  %.144 = add i64 %.04322, %73
  %.138 = call i32 @llvm.abs.i32(i32 %.03725, i1 true)
  %74 = zext nneg i32 %.138 to i64
  %75 = shl i64 %.0523, 1
  %76 = add i64 %.324, 1
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %74
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %._crit_edge28, label %71, !llvm.loop !13

._crit_edge28:                                    ; preds = %71
  %split29 = phi i64 [ %.144, %71 ]
  %split30 = phi i64 [ %76, %71 ]
  br label %77

77:                                               ; preds = %._crit_edge28, %70
  %.043.lcssa = phi i64 [ %split29, %._crit_edge28 ], [ 0, %70 ]
  %.3.lcssa = phi i64 [ %split30, %._crit_edge28 ], [ 0, %70 ]
  %78 = trunc i64 %.043.lcssa to i32
  %79 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04232
  store i32 %78, ptr %79, align 4
  %80 = trunc i64 %.3.lcssa to i8
  %81 = getelementptr inbounds nuw i8, ptr %7, i64 %.04232
  store i8 %80, ptr %81, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.04531)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.03933)
  br label %82

82:                                               ; preds = %77, %67
  %.146 = phi i64 [ %spec.select, %77 ], [ %.04531, %67 ]
  %.140 = phi i64 [ %.241, %77 ], [ %.03933, %67 ]
  %83 = add nuw nsw i64 %.04232, 1
  %exitcond14.not = icmp eq i64 %83, 256
  br i1 %exitcond14.not, label %84, label %64, !llvm.loop !14

84:                                               ; preds = %82
  %.045.lcssa = phi i64 [ %.146, %82 ]
  %.039.lcssa = phi i64 [ %.140, %82 ]
  %85 = icmp ugt i64 %.039.lcssa, 32
  br i1 %85, label %86, label %89

86:                                               ; preds = %84
  %87 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %88 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %87)
  call void @exit(i32 noundef 1) #11
  unreachable

89:                                               ; preds = %84
  %90 = icmp eq i64 %.045.lcssa, 0
  br i1 %90, label %91, label %.preheader3

.preheader3:                                      ; preds = %89
  %exitcond15.not46 = icmp eq i64 0, %1
  br i1 %exitcond15.not46, label %131, label %.lr.ph52

.lr.ph52:                                         ; preds = %.preheader3
  br label %94

91:                                               ; preds = %89
  %92 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %93 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %92)
  call void @exit(i32 noundef 1) #11
  unreachable

94:                                               ; preds = %.lr.ph52, %128
  %.0151 = phi i32 [ -1, %.lr.ph52 ], [ %.1.lcssa, %128 ]
  %.1650 = phi i64 [ 0, %.lr.ph52 ], [ %130, %128 ]
  %.02449 = phi i8 [ 0, %.lr.ph52 ], [ %.125.lcssa, %128 ]
  %.02848 = phi i64 [ 0, %.lr.ph52 ], [ %.129.lcssa, %128 ]
  %.13447 = phi ptr [ %0, %.lr.ph52 ], [ %129, %128 ]
  %95 = load i8, ptr %.13447, align 1
  %96 = zext i8 %95 to i64
  %97 = getelementptr inbounds nuw i8, ptr %7, i64 %96
  %98 = load i8, ptr %97, align 1
  %99 = zext i8 %98 to i32
  %100 = add nsw i32 %99, -1
  %101 = shl nuw i32 1, %100
  %102 = sext i32 %101 to i64
  %103 = zext i8 %98 to i64
  %104 = icmp samesign ult i64 0, %103
  br i1 %104, label %.lr.ph41, label %128

.lr.ph41:                                         ; preds = %94
  br label %105

105:                                              ; preds = %.lr.ph41, %118
  %.139 = phi i32 [ %.0151, %.lr.ph41 ], [ %.2, %118 ]
  %.437 = phi i64 [ 0, %.lr.ph41 ], [ %125, %118 ]
  %.01536 = phi i64 [ %102, %.lr.ph41 ], [ %124, %118 ]
  %.12535 = phi i8 [ %.02449, %.lr.ph41 ], [ %.327, %118 ]
  %.12934 = phi i64 [ %.02848, %.lr.ph41 ], [ %.230, %118 ]
  %106 = phi i8 [ %95, %.lr.ph41 ], [ %.pre-phi.in, %118 ]
  %107 = icmp eq i32 %.139, 7
  br i1 %107, label %108, label %115

108:                                              ; preds = %105
  %109 = getelementptr inbounds nuw i8, ptr %11, i64 %.12934
  store i8 %.12535, ptr %109, align 1
  %110 = add i64 %.12934, 1
  %111 = icmp eq i64 %110, %1
  br i1 %111, label %112, label %._crit_edge

._crit_edge:                                      ; preds = %108
  %.pre1 = load i8, ptr %.13447, align 1
  br label %118

112:                                              ; preds = %108
  %113 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %114 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %113)
  call void @exit(i32 noundef 1) #11
  unreachable

115:                                              ; preds = %105
  %116 = add nsw i32 %.139, 1
  %117 = shl i8 %.12535, 1
  br label %118

118:                                              ; preds = %115, %._crit_edge
  %.pre-phi.in = phi i8 [ %.pre1, %._crit_edge ], [ %106, %115 ]
  %.230 = phi i64 [ %110, %._crit_edge ], [ %.12934, %115 ]
  %.226 = phi i8 [ 0, %._crit_edge ], [ %117, %115 ]
  %.2 = phi i32 [ 0, %._crit_edge ], [ %116, %115 ]
  %.pre-phi = zext i8 %.pre-phi.in to i64
  %119 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.pre-phi
  %120 = load i32, ptr %119, align 4
  %121 = zext i32 %120 to i64
  %122 = and i64 %.01536, %121
  %.not5 = icmp ne i64 %122, 0
  %123 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %123
  %124 = lshr i64 %.01536, 1
  %125 = add nuw nsw i64 %.437, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  %126 = zext i8 %.pre to i64
  %127 = icmp samesign ult i64 %125, %126
  br i1 %127, label %105, label %._crit_edge42, !llvm.loop !15

._crit_edge42:                                    ; preds = %118
  %split43 = phi i64 [ %.230, %118 ]
  %split44 = phi i8 [ %.327, %118 ]
  %split45 = phi i32 [ %.2, %118 ]
  br label %128

128:                                              ; preds = %._crit_edge42, %94
  %.129.lcssa = phi i64 [ %split43, %._crit_edge42 ], [ %.02848, %94 ]
  %.125.lcssa = phi i8 [ %split44, %._crit_edge42 ], [ %.02449, %94 ]
  %.1.lcssa = phi i32 [ %split45, %._crit_edge42 ], [ %.0151, %94 ]
  %129 = getelementptr inbounds nuw i8, ptr %.13447, i64 1
  %130 = add i64 %.1650, 1
  %exitcond15.not = icmp eq i64 %130, %1
  br i1 %exitcond15.not, label %._crit_edge53, label %94, !llvm.loop !16

._crit_edge53:                                    ; preds = %128
  %split54 = phi i64 [ %.129.lcssa, %128 ]
  %split55 = phi i8 [ %.125.lcssa, %128 ]
  %split56 = phi i32 [ %.1.lcssa, %128 ]
  br label %131

131:                                              ; preds = %._crit_edge53, %.preheader3
  %.028.lcssa = phi i64 [ %split54, %._crit_edge53 ], [ 0, %.preheader3 ]
  %.024.lcssa = phi i8 [ %split55, %._crit_edge53 ], [ 0, %.preheader3 ]
  %.01.lcssa = phi i32 [ %split56, %._crit_edge53 ], [ -1, %.preheader3 ]
  %132 = sub nsw i32 7, %.01.lcssa
  %133 = zext i8 %.024.lcssa to i32
  %134 = shl i32 %133, %132
  %135 = trunc i32 %134 to i8
  %136 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %135, ptr %136, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %137

.preheader2:                                      ; preds = %161
  br label %163

137:                                              ; preds = %131, %161
  %.066 = phi ptr [ %9, %131 ], [ %139, %161 ]
  %.2765 = phi i64 [ 0, %131 ], [ %162, %161 ]
  %138 = trunc nuw i64 %.2765 to i8
  store i8 %138, ptr %.066, align 1
  %139 = getelementptr inbounds nuw i8, ptr %.066, i64 1
  %140 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.2765
  %141 = load i32, ptr %140, align 4
  %142 = getelementptr inbounds nuw i8, ptr %7, i64 %.2765
  %143 = load i8, ptr %142, align 1
  %144 = zext i8 %143 to i32
  %145 = or i32 %141, %144
  %.not3 = icmp eq i32 %145, 0
  br i1 %.not3, label %161, label %146

146:                                              ; preds = %137
  %147 = add nsw i32 %144, -1
  %148 = shl nuw i32 1, %147
  %149 = sext i32 %148 to i64
  %150 = zext i8 %143 to i64
  %exitcond16.not57 = icmp eq i64 0, %150
  br i1 %exitcond16.not57, label %159, label %.lr.ph62

.lr.ph62:                                         ; preds = %146
  br label %151

151:                                              ; preds = %.lr.ph62, %151
  %.560 = phi i64 [ 0, %.lr.ph62 ], [ %158, %151 ]
  %.11659 = phi i64 [ %149, %.lr.ph62 ], [ %157, %151 ]
  %.01958 = phi i32 [ 0, %.lr.ph62 ], [ %spec.select1, %151 ]
  %152 = shl i32 %.01958, 1
  %153 = or disjoint i32 %152, 1
  %154 = zext i32 %141 to i64
  %155 = and i64 %.11659, %154
  %.not4 = icmp eq i64 %155, 0
  %156 = add i32 %152, 2
  %spec.select1 = select i1 %.not4, i32 %153, i32 %156
  %157 = lshr i64 %.11659, 1
  %158 = add nuw nsw i64 %.560, 1
  %exitcond16.not = icmp eq i64 %158, %150
  br i1 %exitcond16.not, label %._crit_edge63, label %151, !llvm.loop !17

._crit_edge63:                                    ; preds = %151
  %split64 = phi i32 [ %spec.select1, %151 ]
  br label %159

159:                                              ; preds = %._crit_edge63, %146
  %.019.lcssa = phi i32 [ %split64, %._crit_edge63 ], [ 0, %146 ]
  %160 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.2765
  store i32 %.019.lcssa, ptr %160, align 4
  br label %161

161:                                              ; preds = %159, %137
  %162 = add nuw nsw i64 %.2765, 1
  %exitcond17.not = icmp eq i64 %162, 256
  br i1 %exitcond17.not, label %.preheader2, label %137, !llvm.loop !18

.preheader1:                                      ; preds = %.critedge
  br label %181

163:                                              ; preds = %.preheader2, %.critedge
  %.668 = phi i64 [ 1, %.preheader2 ], [ %180, %.critedge ]
  %164 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.668
  %165 = load i32, ptr %164, align 4
  %166 = getelementptr inbounds nuw i8, ptr %9, i64 %.668
  %167 = load i8, ptr %166, align 1
  br label %168

168:                                              ; preds = %163, %173
  %.3867 = phi i64 [ %.668, %163 ], [ %169, %173 ]
  %169 = add nsw i64 %.3867, -1
  %170 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %169
  %171 = load i32, ptr %170, align 4
  %172 = icmp ugt i32 %171, %165
  br i1 %172, label %173, label %.critedge

173:                                              ; preds = %168
  %174 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.3867
  store i32 %171, ptr %174, align 4
  %175 = getelementptr inbounds nuw i8, ptr %9, i64 %169
  %176 = load i8, ptr %175, align 1
  %177 = getelementptr inbounds nuw i8, ptr %9, i64 %.3867
  store i8 %176, ptr %177, align 1
  %.not2 = icmp eq i64 %169, 0
  br i1 %.not2, label %.critedge, label %168, !llvm.loop !19

.critedge:                                        ; preds = %168, %173
  %.38.lcssa = phi i64 [ %.3867, %168 ], [ 0, %173 ]
  %178 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %165, ptr %178, align 4
  %179 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %167, ptr %179, align 1
  %180 = add nuw nsw i64 %.668, 1
  %exitcond18.not = icmp eq i64 %180, 256
  br i1 %exitcond18.not, label %.preheader1, label %163, !llvm.loop !20

181:                                              ; preds = %181, %.preheader1
  %.49 = phi i64 [ %185, %181 ], [ 0, %.preheader1 ]
  %182 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %183 = load i32, ptr %182, align 4
  %184 = icmp eq i32 %183, 0
  %185 = add i64 %.49, 1
  br i1 %184, label %181, label %.preheader, !llvm.loop !21

.preheader:                                       ; preds = %181
  %.49.lcssa = phi i64 [ %.49, %181 ]
  %186 = icmp ult i64 0, %1
  br i1 %186, label %.lr.ph75, label %210

.lr.ph75:                                         ; preds = %.preheader
  br label %187

187:                                              ; preds = %.lr.ph75, %206
  %.774 = phi i64 [ %.49.lcssa, %.lr.ph75 ], [ %.9, %206 ]
  %.31373 = phi i64 [ 0, %.lr.ph75 ], [ %.414, %206 ]
  %.21772 = phi i64 [ 128, %.lr.ph75 ], [ %.318, %206 ]
  %.22171 = phi i32 [ 0, %.lr.ph75 ], [ %.423, %206 ]
  %.03170 = phi ptr [ %11, %.lr.ph75 ], [ %.132, %206 ]
  %.23569 = phi ptr [ %0, %.lr.ph75 ], [ %.336, %206 ]
  %188 = shl i32 %.22171, 1
  %189 = or disjoint i32 %188, 1
  %190 = load i8, ptr %.03170, align 1
  %191 = zext i8 %190 to i64
  %192 = and i64 %.21772, %191
  %.not1 = icmp eq i64 %192, 0
  %193 = add i32 %188, 2
  %spec.select2 = select i1 %.not1, i32 %189, i32 %193
  br label %194

194:                                              ; preds = %194, %187
  %.8 = phi i64 [ %.774, %187 ], [ %198, %194 ]
  %195 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %196 = load i32, ptr %195, align 4
  %197 = icmp ult i32 %196, %spec.select2
  %198 = add i64 %.8, 1
  br i1 %197, label %194, label %199, !llvm.loop !22

199:                                              ; preds = %194
  %.8.lcssa = phi i64 [ %.8, %194 ]
  %.lcssa = phi i32 [ %196, %194 ]
  %200 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %200, label %201, label %206

201:                                              ; preds = %199
  %202 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %203 = load i8, ptr %202, align 1
  store i8 %203, ptr %.23569, align 1
  %204 = getelementptr inbounds nuw i8, ptr %.23569, i64 1
  %205 = add nuw i64 %.31373, 1
  br label %206

206:                                              ; preds = %201, %199
  %.336 = phi ptr [ %204, %201 ], [ %.23569, %199 ]
  %.423 = phi i32 [ 0, %201 ], [ %spec.select2, %199 ]
  %.414 = phi i64 [ %205, %201 ], [ %.31373, %199 ]
  %.9 = phi i64 [ %.49.lcssa, %201 ], [ %.8.lcssa, %199 ]
  %207 = icmp ult i64 %.21772, 2
  %208 = lshr i64 %.21772, 1
  %.132.idx = zext i1 %207 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.03170, i64 %.132.idx
  %.318 = select i1 %207, i64 128, i64 %208
  %209 = icmp ult i64 %.414, %1
  br i1 %209, label %187, label %._crit_edge76, !llvm.loop !23

._crit_edge76:                                    ; preds = %206
  br label %210

210:                                              ; preds = %._crit_edge76, %.preheader
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

.lr.ph:                                           ; preds = %4
  br label %11

.._crit_edge_crit_edge:                           ; preds = %37
  %split6 = phi i32 [ %.0, %37 ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %4
  %.01.lcssa = phi i32 [ %split6, %.._crit_edge_crit_edge ], [ %3, %4 ]
  br label %41

11:                                               ; preds = %.lr.ph, %37
  %.014 = phi i32 [ %3, %.lr.ph ], [ %.0, %37 ]
  %12 = shl nsw i32 %.014, 1
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
  %spec.select = or disjoint i32 %12, %25
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
  br i1 %36, label %split, label %37

37:                                               ; preds = %26
  %38 = sext i32 %.014 to i64
  %39 = getelementptr [8 x i8], ptr %1, i64 %38
  %40 = getelementptr i8, ptr %39, i64 -8
  store i64 %33, ptr %40, align 8
  %.not = icmp sgt i32 %.0, %10
  br i1 %.not, label %.._crit_edge_crit_edge, label %11, !llvm.loop !24

split:                                            ; preds = %26
  %.01.lcssa1 = phi i32 [ %.014, %26 ]
  br label %41

41:                                               ; preds = %split, %._crit_edge
  %.012 = phi i32 [ %.01.lcssa1, %split ], [ %.01.lcssa, %._crit_edge ]
  %42 = ashr exact i64 %9, 32
  %43 = sext i32 %.012 to i64
  %44 = getelementptr [8 x i8], ptr %1, i64 %43
  %45 = getelementptr i8, ptr %44, i64 -8
  store i64 %42, ptr %45, align 8
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
  br i1 %3, label %.preheader, label %10

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

.loopexit:                                        ; preds = %6, %5
  %exitcond.not.lcssa = phi i1 [ %exitcond.not2, %6 ], [ %exitcond.not, %5 ]
  br label %10

10:                                               ; preds = %.loopexit, %2
  %.not1 = phi i1 [ true, %2 ], [ %exitcond.not.lcssa, %.loopexit ]
  %11 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %12

12:                                               ; preds = %10, %12
  %.123 = phi i32 [ 0, %10 ], [ %13, %12 ]
  call void @compdecomp(ptr noundef %11, i64 noundef 10000000)
  %13 = add nuw nsw i32 %.123, 1
  %exitcond1.not = icmp eq i32 %13, 30
  br i1 %exitcond1.not, label %14, label %12, !llvm.loop !26

14:                                               ; preds = %12
  call void @free(ptr noundef %11) #10
  br i1 %.not1, label %18, label %15

15:                                               ; preds = %14
  %16 = call ptr @__acrt_iob_func(i32 noundef 1) #10
  %17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.5, double noundef 0.000000e+00) #10
  br label %21

18:                                               ; preds = %14
  %19 = call ptr @__acrt_iob_func(i32 noundef 1) #10
  %20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.6, double noundef 0.000000e+00) #10
  br label %21

21:                                               ; preds = %18, %15
  %22 = call ptr @__acrt_iob_func(i32 noundef 1) #10
  %23 = call i32 @fflush(ptr noundef %22) #10
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
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = add nsw i32 %6, 2147483647
  br label %10

10:                                               ; preds = %8, %0
  %storemerge = phi i32 [ %9, %8 ], [ %6, %0 ]
  %11 = srem i32 %storemerge, 32
  %12 = sext i32 %11 to i64
  %13 = xor i32 %storemerge, 123459876
  store i32 %13, ptr @seed, align 4
  ret i64 %12
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
