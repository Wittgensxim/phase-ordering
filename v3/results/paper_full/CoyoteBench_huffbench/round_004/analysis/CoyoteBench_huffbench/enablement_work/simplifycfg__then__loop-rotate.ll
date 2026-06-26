; ModuleID = 'results\paper_full\CoyoteBench_huffbench\round_003\output.ll'
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
  %3 = icmp ugt i64 %0, 0
  br i1 %3, label %.lr.ph, label %12

.lr.ph:                                           ; preds = %1
  br label %4

4:                                                ; preds = %.lr.ph, %4
  %.02 = phi i32 [ 0, %.lr.ph ], [ %9, %4 ]
  %.011 = phi ptr [ %2, %.lr.ph ], [ %8, %4 ]
  %5 = call i64 @random4()
  %6 = getelementptr inbounds nuw i8, ptr @.str, i64 %5
  %7 = load i8, ptr %6, align 1
  store i8 %7, ptr %.011, align 1
  %8 = getelementptr inbounds nuw i8, ptr %.011, i64 1
  %9 = add nuw nsw i32 %.02, 1
  %10 = zext nneg i32 %9 to i64
  %11 = icmp ugt i64 %0, %10
  br i1 %11, label %4, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %4
  br label %12

12:                                               ; preds = %._crit_edge, %1
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
  %12 = icmp ult i64 0, %1
  br i1 %12, label %.lr.ph, label %.preheader7

.lr.ph:                                           ; preds = %2
  br label %13

..preheader7_crit_edge:                           ; preds = %13
  br label %.preheader7

.preheader7:                                      ; preds = %..preheader7_crit_edge, %2
  br label %22

13:                                               ; preds = %.lr.ph, %13
  %.0215 = phi i64 [ 0, %.lr.ph ], [ %20, %13 ]
  %.03314 = phi ptr [ %0, %.lr.ph ], [ %19, %13 ]
  %14 = load i8, ptr %.03314, align 1
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %15
  %17 = load i64, ptr %16, align 8
  %18 = add i64 %17, 1
  store i64 %18, ptr %16, align 8
  %19 = getelementptr inbounds nuw i8, ptr %.03314, i64 1
  %20 = add i64 %.0215, 1
  %21 = icmp ult i64 %20, %1
  br i1 %21, label %13, label %..preheader7_crit_edge, !llvm.loop !9

.preheader6:                                      ; preds = %28
  %.010.lcssa = phi i64 [ %.111, %28 ]
  %.not19 = icmp eq i64 %.010.lcssa, 0
  br i1 %.not19, label %.preheader5, label %.lr.ph21

.lr.ph21:                                         ; preds = %.preheader6
  br label %32

22:                                               ; preds = %.preheader7, %28
  %.1318 = phi i64 [ 0, %.preheader7 ], [ %29, %28 ]
  %.01017 = phi i64 [ 0, %.preheader7 ], [ %.111, %28 ]
  %23 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.1318
  %24 = load i64, ptr %23, align 8
  %.not8 = icmp eq i64 %24, 0
  br i1 %.not8, label %28, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.01017
  store i64 %.1318, ptr %26, align 8
  %27 = add i64 %.01017, 1
  br label %28

28:                                               ; preds = %25, %22
  %.111 = phi i64 [ %27, %25 ], [ %.01017, %22 ]
  %29 = add nuw nsw i64 %.1318, 1
  %30 = icmp samesign ult i64 %29, 256
  br i1 %30, label %22, label %.preheader6, !llvm.loop !10

..preheader5_crit_edge:                           ; preds = %32
  br label %.preheader5

.preheader5:                                      ; preds = %..preheader5_crit_edge, %.preheader6
  %31 = icmp ugt i64 %.010.lcssa, 1
  br i1 %31, label %.lr.ph23, label %56

.lr.ph23:                                         ; preds = %.preheader5
  br label %36

32:                                               ; preds = %.lr.ph21, %32
  %.2420 = phi i64 [ %.010.lcssa, %.lr.ph21 ], [ %35, %32 ]
  %33 = trunc i64 %.010.lcssa to i32
  %34 = trunc i64 %.2420 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %33, i32 noundef %34)
  %35 = add i64 %.2420, -1
  %.not = icmp eq i64 %35, 0
  br i1 %.not, label %..preheader5_crit_edge, label %32, !llvm.loop !11

36:                                               ; preds = %.lr.ph23, %36
  %.21222 = phi i64 [ %.010.lcssa, %.lr.ph23 ], [ %37, %36 ]
  %37 = add i64 %.21222, -1
  %38 = load i64, ptr %4, align 16
  %39 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %37
  %40 = load i64, ptr %39, align 8
  store i64 %40, ptr %4, align 16
  %41 = trunc i64 %37 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %41, i32 noundef 1)
  %42 = load i64, ptr %4, align 16
  %43 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %42
  %44 = load i64, ptr %43, align 8
  %45 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %38
  %46 = load i64, ptr %45, align 8
  %47 = add i64 %44, %46
  %48 = add i64 %.21222, 255
  %49 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %48
  store i64 %47, ptr %49, align 8
  %50 = trunc i64 %48 to i32
  %51 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %38
  store i32 %50, ptr %51, align 4
  %52 = trunc i64 %.21222 to i32
  %53 = sub i32 -255, %52
  %54 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %42
  store i32 %53, ptr %54, align 4
  store i64 %48, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %41, i32 noundef 1)
  %55 = icmp ugt i64 %37, 1
  br i1 %55, label %36, label %._crit_edge24, !llvm.loop !12

._crit_edge24:                                    ; preds = %36
  %split = phi i64 [ %37, %36 ]
  br label %56

56:                                               ; preds = %._crit_edge24, %.preheader5
  %.212.lcssa = phi i64 [ %split, %._crit_edge24 ], [ %.010.lcssa, %.preheader5 ]
  %57 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %58 = getelementptr inbounds nuw i8, ptr %57, i64 1024
  store i32 0, ptr %58, align 4
  br label %59

59:                                               ; preds = %56, %76
  %.03938 = phi i64 [ 0, %56 ], [ %.140, %76 ]
  %.04237 = phi i64 [ 0, %56 ], [ %77, %76 ]
  %.04536 = phi i64 [ 0, %56 ], [ %.146, %76 ]
  %60 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04237
  %61 = load i64, ptr %60, align 8
  %.not6 = icmp eq i64 %61, 0
  br i1 %.not6, label %62, label %.preheader4

.preheader4:                                      ; preds = %59
  %.037.in25 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.04237
  %.03726 = load i32, ptr %.037.in25, align 4
  %.not727 = icmp eq i32 %.03726, 0
  br i1 %.not727, label %71, label %.lr.ph32

.lr.ph32:                                         ; preds = %.preheader4
  br label %65

62:                                               ; preds = %59
  %63 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04237
  store i32 0, ptr %63, align 4
  %64 = getelementptr inbounds nuw i8, ptr %7, i64 %.04237
  store i8 0, ptr %64, align 1
  br label %76

65:                                               ; preds = %.lr.ph32, %65
  %.03731 = phi i32 [ %.03726, %.lr.ph32 ], [ %.037, %65 ]
  %.330 = phi i64 [ 0, %.lr.ph32 ], [ %70, %65 ]
  %.0529 = phi i64 [ 1, %.lr.ph32 ], [ %69, %65 ]
  %.04328 = phi i64 [ 0, %.lr.ph32 ], [ %.144, %65 ]
  %66 = icmp slt i32 %.03731, 0
  %67 = select i1 %66, i64 %.0529, i64 0
  %.144 = add i64 %.04328, %67
  %.138 = call i32 @llvm.abs.i32(i32 %.03731, i1 true)
  %68 = zext nneg i32 %.138 to i64
  %69 = shl i64 %.0529, 1
  %70 = add i64 %.330, 1
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %68
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %._crit_edge33, label %65, !llvm.loop !13

._crit_edge33:                                    ; preds = %65
  %split34 = phi i64 [ %.144, %65 ]
  %split35 = phi i64 [ %70, %65 ]
  br label %71

71:                                               ; preds = %._crit_edge33, %.preheader4
  %.043.lcssa = phi i64 [ %split34, %._crit_edge33 ], [ 0, %.preheader4 ]
  %.3.lcssa = phi i64 [ %split35, %._crit_edge33 ], [ 0, %.preheader4 ]
  %72 = trunc i64 %.043.lcssa to i32
  %73 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04237
  store i32 %72, ptr %73, align 4
  %74 = trunc i64 %.3.lcssa to i8
  %75 = getelementptr inbounds nuw i8, ptr %7, i64 %.04237
  store i8 %74, ptr %75, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.04536)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.03938)
  br label %76

76:                                               ; preds = %71, %62
  %.146 = phi i64 [ %spec.select, %71 ], [ %.04536, %62 ]
  %.140 = phi i64 [ %.241, %71 ], [ %.03938, %62 ]
  %77 = add nuw nsw i64 %.04237, 1
  %78 = icmp samesign ult i64 %77, 256
  br i1 %78, label %59, label %79, !llvm.loop !14

79:                                               ; preds = %76
  %.045.lcssa = phi i64 [ %.146, %76 ]
  %.039.lcssa = phi i64 [ %.140, %76 ]
  %80 = icmp ugt i64 %.039.lcssa, 32
  br i1 %80, label %81, label %84

81:                                               ; preds = %79
  %82 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %83 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %82)
  call void @exit(i32 noundef 1) #11
  unreachable

84:                                               ; preds = %79
  %85 = icmp eq i64 %.045.lcssa, 0
  br i1 %85, label %87, label %.preheader3

.preheader3:                                      ; preds = %84
  %86 = icmp ult i64 0, %1
  br i1 %86, label %.lr.ph55, label %128

.lr.ph55:                                         ; preds = %.preheader3
  br label %90

87:                                               ; preds = %84
  %88 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %89 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %88)
  call void @exit(i32 noundef 1) #11
  unreachable

90:                                               ; preds = %.lr.ph55, %124
  %.0154 = phi i32 [ -1, %.lr.ph55 ], [ %.1.lcssa, %124 ]
  %.1653 = phi i64 [ 0, %.lr.ph55 ], [ %126, %124 ]
  %.02452 = phi i8 [ 0, %.lr.ph55 ], [ %.125.lcssa, %124 ]
  %.02851 = phi i64 [ 0, %.lr.ph55 ], [ %.129.lcssa, %124 ]
  %.13450 = phi ptr [ %0, %.lr.ph55 ], [ %125, %124 ]
  %91 = load i8, ptr %.13450, align 1
  %92 = zext i8 %91 to i64
  %93 = getelementptr inbounds nuw i8, ptr %7, i64 %92
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i32
  %96 = add nsw i32 %95, -1
  %97 = shl nuw i32 1, %96
  %98 = sext i32 %97 to i64
  %99 = zext i8 %94 to i64
  %100 = icmp ult i64 0, %99
  br i1 %100, label %.lr.ph45, label %124

.lr.ph45:                                         ; preds = %90
  br label %101

101:                                              ; preds = %.lr.ph45, %114
  %.143 = phi i32 [ %.0154, %.lr.ph45 ], [ %.2, %114 ]
  %.442 = phi i64 [ 0, %.lr.ph45 ], [ %121, %114 ]
  %.01541 = phi i64 [ %98, %.lr.ph45 ], [ %120, %114 ]
  %.12540 = phi i8 [ %.02452, %.lr.ph45 ], [ %.327, %114 ]
  %.12939 = phi i64 [ %.02851, %.lr.ph45 ], [ %.230, %114 ]
  %102 = phi i8 [ %91, %.lr.ph45 ], [ %.pre-phi.in, %114 ]
  %103 = icmp eq i32 %.143, 7
  br i1 %103, label %104, label %111

104:                                              ; preds = %101
  %105 = getelementptr inbounds nuw i8, ptr %11, i64 %.12939
  store i8 %.12540, ptr %105, align 1
  %106 = add i64 %.12939, 1
  %107 = icmp eq i64 %106, %1
  br i1 %107, label %108, label %._crit_edge

._crit_edge:                                      ; preds = %104
  %.pre1 = load i8, ptr %.13450, align 1
  br label %114

108:                                              ; preds = %104
  %109 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %110 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %109)
  call void @exit(i32 noundef 1) #11
  unreachable

111:                                              ; preds = %101
  %112 = add nsw i32 %.143, 1
  %113 = shl i8 %.12540, 1
  br label %114

114:                                              ; preds = %111, %._crit_edge
  %.pre-phi.in = phi i8 [ %.pre1, %._crit_edge ], [ %102, %111 ]
  %.230 = phi i64 [ %106, %._crit_edge ], [ %.12939, %111 ]
  %.226 = phi i8 [ 0, %._crit_edge ], [ %113, %111 ]
  %.2 = phi i32 [ 0, %._crit_edge ], [ %112, %111 ]
  %.pre-phi = zext i8 %.pre-phi.in to i64
  %115 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.pre-phi
  %116 = load i32, ptr %115, align 4
  %117 = zext i32 %116 to i64
  %118 = and i64 %.01541, %117
  %.not5 = icmp ne i64 %118, 0
  %119 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %119
  %120 = lshr i64 %.01541, 1
  %121 = add i64 %.442, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  %122 = zext i8 %.pre to i64
  %123 = icmp ult i64 %121, %122
  br i1 %123, label %101, label %._crit_edge46, !llvm.loop !15

._crit_edge46:                                    ; preds = %114
  %split47 = phi i64 [ %.230, %114 ]
  %split48 = phi i8 [ %.327, %114 ]
  %split49 = phi i32 [ %.2, %114 ]
  br label %124

124:                                              ; preds = %._crit_edge46, %90
  %.129.lcssa = phi i64 [ %split47, %._crit_edge46 ], [ %.02851, %90 ]
  %.125.lcssa = phi i8 [ %split48, %._crit_edge46 ], [ %.02452, %90 ]
  %.1.lcssa = phi i32 [ %split49, %._crit_edge46 ], [ %.0154, %90 ]
  %125 = getelementptr inbounds nuw i8, ptr %.13450, i64 1
  %126 = add i64 %.1653, 1
  %127 = icmp ult i64 %126, %1
  br i1 %127, label %90, label %._crit_edge56, !llvm.loop !16

._crit_edge56:                                    ; preds = %124
  %split57 = phi i64 [ %.129.lcssa, %124 ]
  %split58 = phi i8 [ %.125.lcssa, %124 ]
  %split59 = phi i32 [ %.1.lcssa, %124 ]
  br label %128

128:                                              ; preds = %._crit_edge56, %.preheader3
  %.028.lcssa = phi i64 [ %split57, %._crit_edge56 ], [ 0, %.preheader3 ]
  %.024.lcssa = phi i8 [ %split58, %._crit_edge56 ], [ 0, %.preheader3 ]
  %.01.lcssa = phi i32 [ %split59, %._crit_edge56 ], [ -1, %.preheader3 ]
  %129 = sub nsw i32 7, %.01.lcssa
  %130 = zext i8 %.024.lcssa to i32
  %131 = shl i32 %130, %129
  %132 = trunc i32 %131 to i8
  %133 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %132, ptr %133, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %134

.preheader2:                                      ; preds = %160
  br label %163

134:                                              ; preds = %128, %160
  %.068 = phi ptr [ %9, %128 ], [ %136, %160 ]
  %.2767 = phi i64 [ 0, %128 ], [ %161, %160 ]
  %135 = trunc nuw i64 %.2767 to i8
  store i8 %135, ptr %.068, align 1
  %136 = getelementptr inbounds nuw i8, ptr %.068, i64 1
  %137 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.2767
  %138 = load i32, ptr %137, align 4
  %139 = getelementptr inbounds nuw i8, ptr %7, i64 %.2767
  %140 = load i8, ptr %139, align 1
  %141 = zext i8 %140 to i32
  %142 = or i32 %138, %141
  %.not3 = icmp eq i32 %142, 0
  br i1 %.not3, label %160, label %143

143:                                              ; preds = %134
  %144 = add nsw i32 %141, -1
  %145 = shl nuw i32 1, %144
  %146 = sext i32 %145 to i64
  %147 = zext i8 %140 to i64
  %148 = icmp ult i64 0, %147
  br i1 %148, label %.lr.ph64, label %158

.lr.ph64:                                         ; preds = %143
  br label %149

149:                                              ; preds = %.lr.ph64, %149
  %.562 = phi i64 [ 0, %.lr.ph64 ], [ %156, %149 ]
  %.11661 = phi i64 [ %146, %.lr.ph64 ], [ %155, %149 ]
  %.01960 = phi i32 [ 0, %.lr.ph64 ], [ %spec.select1, %149 ]
  %150 = shl i32 %.01960, 1
  %151 = or disjoint i32 %150, 1
  %152 = zext i32 %138 to i64
  %153 = and i64 %.11661, %152
  %.not4 = icmp eq i64 %153, 0
  %154 = add i32 %150, 2
  %spec.select1 = select i1 %.not4, i32 %151, i32 %154
  %155 = lshr i64 %.11661, 1
  %156 = add i64 %.562, 1
  %157 = icmp ult i64 %156, %147
  br i1 %157, label %149, label %._crit_edge65, !llvm.loop !17

._crit_edge65:                                    ; preds = %149
  %split66 = phi i32 [ %spec.select1, %149 ]
  br label %158

158:                                              ; preds = %._crit_edge65, %143
  %.019.lcssa = phi i32 [ %split66, %._crit_edge65 ], [ 0, %143 ]
  %159 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.2767
  store i32 %.019.lcssa, ptr %159, align 4
  br label %160

160:                                              ; preds = %158, %134
  %161 = add nuw nsw i64 %.2767, 1
  %162 = icmp samesign ult i64 %161, 256
  br i1 %162, label %134, label %.preheader2, !llvm.loop !18

.preheader1:                                      ; preds = %.critedge
  br label %182

163:                                              ; preds = %.preheader2, %.critedge
  %.670 = phi i64 [ 1, %.preheader2 ], [ %180, %.critedge ]
  %164 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.670
  %165 = load i32, ptr %164, align 4
  %166 = getelementptr inbounds nuw i8, ptr %9, i64 %.670
  %167 = load i8, ptr %166, align 1
  br label %168

168:                                              ; preds = %163, %173
  %.3869 = phi i64 [ %.670, %163 ], [ %169, %173 ]
  %169 = add i64 %.3869, -1
  %170 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %169
  %171 = load i32, ptr %170, align 4
  %172 = icmp ugt i32 %171, %165
  br i1 %172, label %173, label %.critedge

173:                                              ; preds = %168
  %174 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.3869
  store i32 %171, ptr %174, align 4
  %175 = getelementptr inbounds nuw i8, ptr %9, i64 %169
  %176 = load i8, ptr %175, align 1
  %177 = getelementptr inbounds nuw i8, ptr %9, i64 %.3869
  store i8 %176, ptr %177, align 1
  %.not2 = icmp eq i64 %169, 0
  br i1 %.not2, label %.critedge, label %168, !llvm.loop !19

.critedge:                                        ; preds = %168, %173
  %.38.lcssa = phi i64 [ %.3869, %168 ], [ %169, %173 ]
  %178 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %165, ptr %178, align 4
  %179 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %167, ptr %179, align 1
  %180 = add nuw nsw i64 %.670, 1
  %181 = icmp samesign ult i64 %180, 256
  br i1 %181, label %163, label %.preheader1, !llvm.loop !20

182:                                              ; preds = %182, %.preheader1
  %.49 = phi i64 [ %186, %182 ], [ 0, %.preheader1 ]
  %183 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %184 = load i32, ptr %183, align 4
  %185 = icmp eq i32 %184, 0
  %186 = add i64 %.49, 1
  br i1 %185, label %182, label %.preheader, !llvm.loop !21

.preheader:                                       ; preds = %182
  %.49.lcssa = phi i64 [ %.49, %182 ]
  %187 = icmp ult i64 0, %1
  br i1 %187, label %.lr.ph77, label %211

.lr.ph77:                                         ; preds = %.preheader
  br label %188

188:                                              ; preds = %.lr.ph77, %207
  %.776 = phi i64 [ %.49.lcssa, %.lr.ph77 ], [ %.9, %207 ]
  %.31375 = phi i64 [ 0, %.lr.ph77 ], [ %.414, %207 ]
  %.21774 = phi i64 [ 128, %.lr.ph77 ], [ %.318, %207 ]
  %.22173 = phi i32 [ 0, %.lr.ph77 ], [ %.423, %207 ]
  %.03172 = phi ptr [ %11, %.lr.ph77 ], [ %.132, %207 ]
  %.23571 = phi ptr [ %0, %.lr.ph77 ], [ %.336, %207 ]
  %189 = shl i32 %.22173, 1
  %190 = or disjoint i32 %189, 1
  %191 = load i8, ptr %.03172, align 1
  %192 = zext i8 %191 to i64
  %193 = and i64 %.21774, %192
  %.not1 = icmp eq i64 %193, 0
  %194 = add i32 %189, 2
  %spec.select2 = select i1 %.not1, i32 %190, i32 %194
  br label %195

195:                                              ; preds = %195, %188
  %.8 = phi i64 [ %.776, %188 ], [ %199, %195 ]
  %196 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %197 = load i32, ptr %196, align 4
  %198 = icmp ult i32 %197, %spec.select2
  %199 = add i64 %.8, 1
  br i1 %198, label %195, label %200, !llvm.loop !22

200:                                              ; preds = %195
  %.8.lcssa = phi i64 [ %.8, %195 ]
  %.lcssa = phi i32 [ %197, %195 ]
  %201 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %201, label %202, label %207

202:                                              ; preds = %200
  %203 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %204 = load i8, ptr %203, align 1
  store i8 %204, ptr %.23571, align 1
  %205 = getelementptr inbounds nuw i8, ptr %.23571, i64 1
  %206 = add i64 %.31375, 1
  br label %207

207:                                              ; preds = %202, %200
  %.336 = phi ptr [ %205, %202 ], [ %.23571, %200 ]
  %.423 = phi i32 [ 0, %202 ], [ %spec.select2, %200 ]
  %.414 = phi i64 [ %206, %202 ], [ %.31375, %200 ]
  %.9 = phi i64 [ %.49.lcssa, %202 ], [ %.8.lcssa, %200 ]
  %208 = icmp ult i64 %.21774, 2
  %209 = lshr i64 %.21774, 1
  %.132.idx = zext i1 %208 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.03172, i64 %.132.idx
  %.318 = select i1 %208, i64 128, i64 %209
  %210 = icmp ult i64 %.414, %1
  br i1 %210, label %188, label %._crit_edge78, !llvm.loop !23

._crit_edge78:                                    ; preds = %207
  br label %211

211:                                              ; preds = %._crit_edge78, %.preheader
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
  %9 = sdiv i32 %2, 2
  %.not3 = icmp sgt i32 %3, %9
  br i1 %.not3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %4
  br label %10

.._crit_edge_crit_edge:                           ; preds = %36
  %split6 = phi i32 [ %.0, %36 ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %4
  %.01.lcssa = phi i32 [ %split6, %.._crit_edge_crit_edge ], [ %3, %4 ]
  %.pre = shl i64 %8, 32
  br label %split

10:                                               ; preds = %.lr.ph, %36
  %.014 = phi i32 [ %3, %.lr.ph ], [ %.0, %36 ]
  %11 = shl nsw i32 %.014, 1
  %12 = icmp slt i32 %11, %2
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
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

25:                                               ; preds = %13, %10
  %.0 = phi i32 [ %11, %10 ], [ %spec.select, %13 ]
  %sext = shl i64 %8, 32
  %26 = ashr exact i64 %sext, 29
  %27 = getelementptr inbounds i8, ptr %0, i64 %26
  %28 = load i64, ptr %27, align 8
  %29 = sext i32 %.0 to i64
  %30 = getelementptr [8 x i8], ptr %1, i64 %29
  %31 = getelementptr i8, ptr %30, i64 -8
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %32
  %34 = load i64, ptr %33, align 8
  %35 = icmp ult i64 %28, %34
  br i1 %35, label %split.loopexit, label %36

36:                                               ; preds = %25
  %37 = sext i32 %.014 to i64
  %38 = getelementptr [8 x i8], ptr %1, i64 %37
  %39 = getelementptr i8, ptr %38, i64 -8
  store i64 %32, ptr %39, align 8
  %.not = icmp sgt i32 %.0, %9
  br i1 %.not, label %.._crit_edge_crit_edge, label %10, !llvm.loop !24

split.loopexit:                                   ; preds = %25
  %sext.lcssa = phi i64 [ %sext, %25 ]
  %.01.lcssa1 = phi i32 [ %.014, %25 ]
  br label %split

split:                                            ; preds = %split.loopexit, %._crit_edge
  %.012 = phi i32 [ %.01.lcssa, %._crit_edge ], [ %.01.lcssa1, %split.loopexit ]
  %sext1.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %sext.lcssa, %split.loopexit ]
  %40 = ashr exact i64 %sext1.pre-phi, 32
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
  br i1 %3, label %.preheader, label %11

.preheader:                                       ; preds = %2
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %7

5:                                                ; preds = %7
  %.01 = phi i32 [ %10, %7 ]
  %6 = icmp slt i32 %.01, %0
  br i1 %6, label %7, label %.loopexit, !llvm.loop !25

7:                                                ; preds = %.preheader, %5
  %.011 = phi i32 [ 1, %.preheader ], [ %.01, %5 ]
  %8 = load ptr, ptr %4, align 8
  %9 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(4) @.str.4) #10
  %.not = icmp eq i32 %9, 0
  %10 = add nuw nsw i32 %.011, 1
  br i1 %.not, label %.loopexit, label %5

.loopexit:                                        ; preds = %5, %7
  %.not1.ph = phi i1 [ false, %7 ], [ true, %5 ]
  br label %11

11:                                               ; preds = %.loopexit, %2
  %.not1 = phi i1 [ true, %2 ], [ %.not1.ph, %.loopexit ]
  %12 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %13

13:                                               ; preds = %11, %13
  %.122 = phi i32 [ 0, %11 ], [ %14, %13 ]
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  %14 = add nuw nsw i32 %.122, 1
  %15 = icmp samesign ult i32 %14, 30
  br i1 %15, label %13, label %16, !llvm.loop !26

16:                                               ; preds = %13
  call void @free(ptr noundef %12) #10
  br i1 %.not1, label %20, label %17

17:                                               ; preds = %16
  %18 = call ptr @__acrt_iob_func(i32 noundef 1) #10
  %19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.5, double noundef 0.000000e+00) #10
  br label %23

20:                                               ; preds = %16
  %21 = call ptr @__acrt_iob_func(i32 noundef 1) #10
  %22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.6, double noundef 0.000000e+00) #10
  br label %23

23:                                               ; preds = %20, %17
  %24 = call ptr @__acrt_iob_func(i32 noundef 1) #10
  %25 = call i32 @fflush(ptr noundef %24) #10
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
