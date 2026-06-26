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
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %1, %.lr.ph
  %.02 = phi i32 [ %8, %.lr.ph ], [ 0, %1 ]
  %.011 = phi ptr [ %7, %.lr.ph ], [ %2, %1 ]
  %4 = call i64 @random4()
  %5 = getelementptr inbounds nuw i8, ptr @.str, i64 %4
  %6 = load i8, ptr %5, align 1
  store i8 %6, ptr %.011, align 1
  %7 = getelementptr inbounds nuw i8, ptr %.011, i64 1
  %8 = add nuw nsw i32 %.02, 1
  %9 = zext nneg i32 %8 to i64
  %10 = icmp ugt i64 %0, %9
  br i1 %10, label %.lr.ph, label %._crit_edge, !llvm.loop !7

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
  %12 = icmp ult i64 0, %1
  br i1 %12, label %.lr.ph, label %.preheader6

.preheader6:                                      ; preds = %.lr.ph, %2
  br label %21

.lr.ph:                                           ; preds = %2, %.lr.ph
  %.0214 = phi i64 [ %19, %.lr.ph ], [ 0, %2 ]
  %.03313 = phi ptr [ %18, %.lr.ph ], [ %0, %2 ]
  %13 = load i8, ptr %.03313, align 1
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %14
  %16 = load i64, ptr %15, align 8
  %17 = add i64 %16, 1
  store i64 %17, ptr %15, align 8
  %18 = getelementptr inbounds nuw i8, ptr %.03313, i64 1
  %19 = add i64 %.0214, 1
  %20 = icmp ult i64 %19, %1
  br i1 %20, label %.lr.ph, label %.preheader6, !llvm.loop !9

.preheader5:                                      ; preds = %27
  %.010.lcssa = phi i64 [ %.111, %27 ]
  %.not18 = icmp eq i64 %.010.lcssa, 0
  br i1 %.not18, label %.preheader4, label %.lr.ph20

21:                                               ; preds = %.preheader6, %27
  %.1317 = phi i64 [ 0, %.preheader6 ], [ %28, %27 ]
  %.01016 = phi i64 [ 0, %.preheader6 ], [ %.111, %27 ]
  %22 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.1317
  %23 = load i64, ptr %22, align 8
  %.not8 = icmp eq i64 %23, 0
  br i1 %.not8, label %27, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.01016
  store i64 %.1317, ptr %25, align 8
  %26 = add i64 %.01016, 1
  br label %27

27:                                               ; preds = %24, %21
  %.111 = phi i64 [ %26, %24 ], [ %.01016, %21 ]
  %28 = add nuw nsw i64 %.1317, 1
  %29 = icmp samesign ult i64 %28, 256
  br i1 %29, label %21, label %.preheader5, !llvm.loop !10

.preheader4:                                      ; preds = %.lr.ph20, %.preheader5
  %30 = icmp ugt i64 %.010.lcssa, 1
  br i1 %30, label %.lr.ph22, label %._crit_edge23

.lr.ph20:                                         ; preds = %.preheader5, %.lr.ph20
  %.2419 = phi i64 [ %33, %.lr.ph20 ], [ %.010.lcssa, %.preheader5 ]
  %31 = trunc i64 %.010.lcssa to i32
  %32 = trunc i64 %.2419 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %31, i32 noundef %32)
  %33 = add i64 %.2419, -1
  %.not = icmp eq i64 %33, 0
  br i1 %.not, label %.preheader4, label %.lr.ph20, !llvm.loop !11

.lr.ph22:                                         ; preds = %.preheader4, %.lr.ph22
  %.21221 = phi i64 [ %34, %.lr.ph22 ], [ %.010.lcssa, %.preheader4 ]
  %34 = add i64 %.21221, -1
  %35 = load i64, ptr %4, align 16
  %36 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %34
  %37 = load i64, ptr %36, align 8
  store i64 %37, ptr %4, align 16
  %38 = trunc i64 %34 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %38, i32 noundef 1)
  %39 = load i64, ptr %4, align 16
  %40 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %39
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %35
  %43 = load i64, ptr %42, align 8
  %44 = add i64 %41, %43
  %45 = add i64 %.21221, 255
  %46 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %45
  store i64 %44, ptr %46, align 8
  %47 = trunc i64 %45 to i32
  %48 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %35
  store i32 %47, ptr %48, align 4
  %49 = trunc i64 %.21221 to i32
  %50 = sub i32 -255, %49
  %51 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %39
  store i32 %50, ptr %51, align 4
  store i64 %45, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %38, i32 noundef 1)
  %52 = icmp ugt i64 %34, 1
  br i1 %52, label %.lr.ph22, label %._crit_edge23, !llvm.loop !12

._crit_edge23:                                    ; preds = %.lr.ph22, %.preheader4
  %.212.lcssa = phi i64 [ %.010.lcssa, %.preheader4 ], [ %34, %.lr.ph22 ]
  %53 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %54 = getelementptr inbounds nuw i8, ptr %53, i64 1024
  store i32 0, ptr %54, align 4
  br label %55

55:                                               ; preds = %._crit_edge23, %71
  %.03938 = phi i64 [ 0, %._crit_edge23 ], [ %.140, %71 ]
  %.04237 = phi i64 [ 0, %._crit_edge23 ], [ %72, %71 ]
  %.04536 = phi i64 [ 0, %._crit_edge23 ], [ %.146, %71 ]
  %56 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04237
  %57 = load i64, ptr %56, align 8
  %.not6 = icmp eq i64 %57, 0
  br i1 %.not6, label %58, label %61

58:                                               ; preds = %55
  %59 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04237
  store i32 0, ptr %59, align 4
  %60 = getelementptr inbounds nuw i8, ptr %7, i64 %.04237
  store i8 0, ptr %60, align 1
  br label %71

61:                                               ; preds = %55
  %.037.in24 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.04237
  %.03725 = load i32, ptr %.037.in24, align 4
  %.not726 = icmp eq i32 %.03725, 0
  br i1 %.not726, label %._crit_edge33, label %.lr.ph32

.lr.ph32:                                         ; preds = %61, %.lr.ph32
  %.03730 = phi i32 [ %.037, %.lr.ph32 ], [ %.03725, %61 ]
  %.329 = phi i64 [ %66, %.lr.ph32 ], [ 0, %61 ]
  %.0528 = phi i64 [ %65, %.lr.ph32 ], [ 1, %61 ]
  %.04327 = phi i64 [ %.144, %.lr.ph32 ], [ 0, %61 ]
  %62 = icmp slt i32 %.03730, 0
  %63 = select i1 %62, i64 %.0528, i64 0
  %.144 = add i64 %.04327, %63
  %.138 = call i32 @llvm.abs.i32(i32 %.03730, i1 true)
  %64 = zext nneg i32 %.138 to i64
  %65 = shl i64 %.0528, 1
  %66 = add i64 %.329, 1
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %64
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %._crit_edge33, label %.lr.ph32, !llvm.loop !13

._crit_edge33:                                    ; preds = %.lr.ph32, %61
  %.043.lcssa = phi i64 [ 0, %61 ], [ %.144, %.lr.ph32 ]
  %.3.lcssa = phi i64 [ 0, %61 ], [ %66, %.lr.ph32 ]
  %67 = trunc i64 %.043.lcssa to i32
  %68 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04237
  store i32 %67, ptr %68, align 4
  %69 = trunc i64 %.3.lcssa to i8
  %70 = getelementptr inbounds nuw i8, ptr %7, i64 %.04237
  store i8 %69, ptr %70, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.04536)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.03938)
  br label %71

71:                                               ; preds = %._crit_edge33, %58
  %.146 = phi i64 [ %spec.select, %._crit_edge33 ], [ %.04536, %58 ]
  %.140 = phi i64 [ %.241, %._crit_edge33 ], [ %.03938, %58 ]
  %72 = add nuw nsw i64 %.04237, 1
  %73 = icmp samesign ult i64 %72, 256
  br i1 %73, label %55, label %74, !llvm.loop !14

74:                                               ; preds = %71
  %.045.lcssa = phi i64 [ %.146, %71 ]
  %.039.lcssa = phi i64 [ %.140, %71 ]
  %75 = icmp ugt i64 %.039.lcssa, 32
  br i1 %75, label %76, label %79

76:                                               ; preds = %74
  %77 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %78 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %77)
  call void @exit(i32 noundef 1) #11
  unreachable

79:                                               ; preds = %74
  %80 = icmp eq i64 %.045.lcssa, 0
  br i1 %80, label %82, label %.preheader3

.preheader3:                                      ; preds = %79
  %81 = icmp ult i64 0, %1
  br i1 %81, label %.lr.ph55, label %._crit_edge56

82:                                               ; preds = %79
  %83 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %84 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %83)
  call void @exit(i32 noundef 1) #11
  unreachable

.lr.ph55:                                         ; preds = %.preheader3, %._crit_edge46
  %.0154 = phi i32 [ %.1.lcssa, %._crit_edge46 ], [ -1, %.preheader3 ]
  %.1653 = phi i64 [ %118, %._crit_edge46 ], [ 0, %.preheader3 ]
  %.02452 = phi i8 [ %.125.lcssa, %._crit_edge46 ], [ 0, %.preheader3 ]
  %.02851 = phi i64 [ %.129.lcssa, %._crit_edge46 ], [ 0, %.preheader3 ]
  %.13450 = phi ptr [ %117, %._crit_edge46 ], [ %0, %.preheader3 ]
  %85 = load i8, ptr %.13450, align 1
  %86 = zext i8 %85 to i64
  %87 = getelementptr inbounds nuw i8, ptr %7, i64 %86
  %88 = load i8, ptr %87, align 1
  %89 = zext i8 %88 to i32
  %90 = add nsw i32 %89, -1
  %91 = shl nuw i32 1, %90
  %92 = sext i32 %91 to i64
  %93 = zext i8 %88 to i64
  %94 = icmp ult i64 0, %93
  br i1 %94, label %.lr.ph45, label %._crit_edge46

.lr.ph45:                                         ; preds = %.lr.ph55, %107
  %.143 = phi i32 [ %.2, %107 ], [ %.0154, %.lr.ph55 ]
  %.442 = phi i64 [ %114, %107 ], [ 0, %.lr.ph55 ]
  %.01541 = phi i64 [ %113, %107 ], [ %92, %.lr.ph55 ]
  %.12540 = phi i8 [ %.327, %107 ], [ %.02452, %.lr.ph55 ]
  %.12939 = phi i64 [ %.230, %107 ], [ %.02851, %.lr.ph55 ]
  %95 = phi i8 [ %.pre-phi.in, %107 ], [ %85, %.lr.ph55 ]
  %96 = icmp eq i32 %.143, 7
  br i1 %96, label %97, label %104

97:                                               ; preds = %.lr.ph45
  %98 = getelementptr inbounds nuw i8, ptr %11, i64 %.12939
  store i8 %.12540, ptr %98, align 1
  %99 = add i64 %.12939, 1
  %100 = icmp eq i64 %99, %1
  br i1 %100, label %101, label %._crit_edge

._crit_edge:                                      ; preds = %97
  %.pre1 = load i8, ptr %.13450, align 1
  br label %107

101:                                              ; preds = %97
  %102 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %103 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %102)
  call void @exit(i32 noundef 1) #11
  unreachable

104:                                              ; preds = %.lr.ph45
  %105 = add nsw i32 %.143, 1
  %106 = shl i8 %.12540, 1
  br label %107

107:                                              ; preds = %104, %._crit_edge
  %.pre-phi.in = phi i8 [ %.pre1, %._crit_edge ], [ %95, %104 ]
  %.230 = phi i64 [ %99, %._crit_edge ], [ %.12939, %104 ]
  %.226 = phi i8 [ 0, %._crit_edge ], [ %106, %104 ]
  %.2 = phi i32 [ 0, %._crit_edge ], [ %105, %104 ]
  %.pre-phi = zext i8 %.pre-phi.in to i64
  %108 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.pre-phi
  %109 = load i32, ptr %108, align 4
  %110 = zext i32 %109 to i64
  %111 = and i64 %.01541, %110
  %.not5 = icmp ne i64 %111, 0
  %112 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %112
  %113 = lshr i64 %.01541, 1
  %114 = add i64 %.442, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  %115 = zext i8 %.pre to i64
  %116 = icmp ult i64 %114, %115
  br i1 %116, label %.lr.ph45, label %._crit_edge46, !llvm.loop !15

._crit_edge46:                                    ; preds = %107, %.lr.ph55
  %.129.lcssa = phi i64 [ %.02851, %.lr.ph55 ], [ %.230, %107 ]
  %.125.lcssa = phi i8 [ %.02452, %.lr.ph55 ], [ %.327, %107 ]
  %.1.lcssa = phi i32 [ %.0154, %.lr.ph55 ], [ %.2, %107 ]
  %117 = getelementptr inbounds nuw i8, ptr %.13450, i64 1
  %118 = add i64 %.1653, 1
  %119 = icmp ult i64 %118, %1
  br i1 %119, label %.lr.ph55, label %._crit_edge56, !llvm.loop !16

._crit_edge56:                                    ; preds = %._crit_edge46, %.preheader3
  %.028.lcssa = phi i64 [ 0, %.preheader3 ], [ %.129.lcssa, %._crit_edge46 ]
  %.024.lcssa = phi i8 [ 0, %.preheader3 ], [ %.125.lcssa, %._crit_edge46 ]
  %.01.lcssa = phi i32 [ -1, %.preheader3 ], [ %.1.lcssa, %._crit_edge46 ]
  %120 = sub nsw i32 7, %.01.lcssa
  %121 = zext i8 %.024.lcssa to i32
  %122 = shl i32 %121, %120
  %123 = trunc i32 %122 to i8
  %124 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %123, ptr %124, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %125

125:                                              ; preds = %._crit_edge56, %149
  %.068 = phi ptr [ %9, %._crit_edge56 ], [ %127, %149 ]
  %.2767 = phi i64 [ 0, %._crit_edge56 ], [ %150, %149 ]
  %126 = trunc nuw i64 %.2767 to i8
  store i8 %126, ptr %.068, align 1
  %127 = getelementptr inbounds nuw i8, ptr %.068, i64 1
  %128 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.2767
  %129 = load i32, ptr %128, align 4
  %130 = getelementptr inbounds nuw i8, ptr %7, i64 %.2767
  %131 = load i8, ptr %130, align 1
  %132 = zext i8 %131 to i32
  %133 = or i32 %129, %132
  %.not3 = icmp eq i32 %133, 0
  br i1 %.not3, label %149, label %134

134:                                              ; preds = %125
  %135 = add nsw i32 %132, -1
  %136 = shl nuw i32 1, %135
  %137 = sext i32 %136 to i64
  %138 = zext i8 %131 to i64
  %139 = icmp ult i64 0, %138
  br i1 %139, label %.lr.ph64, label %._crit_edge65

.lr.ph64:                                         ; preds = %134, %.lr.ph64
  %.562 = phi i64 [ %146, %.lr.ph64 ], [ 0, %134 ]
  %.11661 = phi i64 [ %145, %.lr.ph64 ], [ %137, %134 ]
  %.01960 = phi i32 [ %spec.select1, %.lr.ph64 ], [ 0, %134 ]
  %140 = shl i32 %.01960, 1
  %141 = or disjoint i32 %140, 1
  %142 = zext i32 %129 to i64
  %143 = and i64 %.11661, %142
  %.not4 = icmp eq i64 %143, 0
  %144 = add i32 %140, 2
  %spec.select1 = select i1 %.not4, i32 %141, i32 %144
  %145 = lshr i64 %.11661, 1
  %146 = add i64 %.562, 1
  %147 = icmp ult i64 %146, %138
  br i1 %147, label %.lr.ph64, label %._crit_edge65, !llvm.loop !17

._crit_edge65:                                    ; preds = %.lr.ph64, %134
  %.019.lcssa = phi i32 [ 0, %134 ], [ %spec.select1, %.lr.ph64 ]
  %148 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.2767
  store i32 %.019.lcssa, ptr %148, align 4
  br label %149

149:                                              ; preds = %._crit_edge65, %125
  %150 = add nuw nsw i64 %.2767, 1
  %151 = icmp samesign ult i64 %150, 256
  br i1 %151, label %125, label %.preheader2, !llvm.loop !18

.preheader2:                                      ; preds = %149, %.critedge
  %.670 = phi i64 [ %168, %.critedge ], [ 1, %149 ]
  %152 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.670
  %153 = load i32, ptr %152, align 4
  %154 = getelementptr inbounds nuw i8, ptr %9, i64 %.670
  %155 = load i8, ptr %154, align 1
  br label %156

156:                                              ; preds = %.preheader2, %161
  %.3869 = phi i64 [ %.670, %.preheader2 ], [ %157, %161 ]
  %157 = add i64 %.3869, -1
  %158 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %157
  %159 = load i32, ptr %158, align 4
  %160 = icmp ugt i32 %159, %153
  br i1 %160, label %161, label %.critedge

161:                                              ; preds = %156
  %162 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.3869
  store i32 %159, ptr %162, align 4
  %163 = getelementptr inbounds nuw i8, ptr %9, i64 %157
  %164 = load i8, ptr %163, align 1
  %165 = getelementptr inbounds nuw i8, ptr %9, i64 %.3869
  store i8 %164, ptr %165, align 1
  %.not2 = icmp eq i64 %157, 0
  br i1 %.not2, label %.critedge, label %156, !llvm.loop !19

.critedge:                                        ; preds = %156, %161
  %.38.lcssa = phi i64 [ %.3869, %156 ], [ %157, %161 ]
  %166 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %153, ptr %166, align 4
  %167 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %155, ptr %167, align 1
  %168 = add nuw nsw i64 %.670, 1
  %169 = icmp samesign ult i64 %168, 256
  br i1 %169, label %.preheader2, label %.preheader1, !llvm.loop !20

.preheader1:                                      ; preds = %.critedge, %.preheader1
  %.49 = phi i64 [ %173, %.preheader1 ], [ 0, %.critedge ]
  %170 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %171 = load i32, ptr %170, align 4
  %172 = icmp eq i32 %171, 0
  %173 = add i64 %.49, 1
  br i1 %172, label %.preheader1, label %.preheader, !llvm.loop !21

.preheader:                                       ; preds = %.preheader1
  %.49.lcssa = phi i64 [ %.49, %.preheader1 ]
  %174 = icmp ult i64 0, %1
  br i1 %174, label %.lr.ph77, label %._crit_edge78

.lr.ph77:                                         ; preds = %.preheader, %193
  %.776 = phi i64 [ %.9, %193 ], [ %.49.lcssa, %.preheader ]
  %.31375 = phi i64 [ %.414, %193 ], [ 0, %.preheader ]
  %.21774 = phi i64 [ %.318, %193 ], [ 128, %.preheader ]
  %.22173 = phi i32 [ %.423, %193 ], [ 0, %.preheader ]
  %.03172 = phi ptr [ %.132, %193 ], [ %11, %.preheader ]
  %.23571 = phi ptr [ %.336, %193 ], [ %0, %.preheader ]
  %175 = shl i32 %.22173, 1
  %176 = or disjoint i32 %175, 1
  %177 = load i8, ptr %.03172, align 1
  %178 = zext i8 %177 to i64
  %179 = and i64 %.21774, %178
  %.not1 = icmp eq i64 %179, 0
  %180 = add i32 %175, 2
  %spec.select2 = select i1 %.not1, i32 %176, i32 %180
  br label %181

181:                                              ; preds = %181, %.lr.ph77
  %.8 = phi i64 [ %.776, %.lr.ph77 ], [ %185, %181 ]
  %182 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %183 = load i32, ptr %182, align 4
  %184 = icmp ult i32 %183, %spec.select2
  %185 = add i64 %.8, 1
  br i1 %184, label %181, label %186, !llvm.loop !22

186:                                              ; preds = %181
  %.8.lcssa = phi i64 [ %.8, %181 ]
  %.lcssa = phi i32 [ %183, %181 ]
  %187 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %187, label %188, label %193

188:                                              ; preds = %186
  %189 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %190 = load i8, ptr %189, align 1
  store i8 %190, ptr %.23571, align 1
  %191 = getelementptr inbounds nuw i8, ptr %.23571, i64 1
  %192 = add i64 %.31375, 1
  br label %193

193:                                              ; preds = %188, %186
  %.336 = phi ptr [ %191, %188 ], [ %.23571, %186 ]
  %.423 = phi i32 [ 0, %188 ], [ %spec.select2, %186 ]
  %.414 = phi i64 [ %192, %188 ], [ %.31375, %186 ]
  %.9 = phi i64 [ %.49.lcssa, %188 ], [ %.8.lcssa, %186 ]
  %194 = icmp ult i64 %.21774, 2
  %195 = lshr i64 %.21774, 1
  %.132.idx = zext i1 %194 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.03172, i64 %.132.idx
  %.318 = select i1 %194, i64 128, i64 %195
  %196 = icmp ult i64 %.414, %1
  br i1 %196, label %.lr.ph77, label %._crit_edge78, !llvm.loop !23

._crit_edge78:                                    ; preds = %193, %.preheader
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

._crit_edge:                                      ; preds = %35, %4
  %.01.lcssa = phi i32 [ %3, %4 ], [ %.0, %35 ]
  %.pre = shl i64 %8, 32
  br label %split

.lr.ph:                                           ; preds = %4, %35
  %.014 = phi i32 [ %.0, %35 ], [ %3, %4 ]
  %10 = shl nsw i32 %.014, 1
  %11 = icmp slt i32 %10, %2
  br i1 %11, label %12, label %24

12:                                               ; preds = %.lr.ph
  %13 = sext i32 %10 to i64
  %14 = getelementptr [8 x i8], ptr %1, i64 %13
  %15 = getelementptr i8, ptr %14, i64 -8
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %16
  %18 = load i64, ptr %17, align 8
  %19 = load i64, ptr %14, align 8
  %20 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %19
  %21 = load i64, ptr %20, align 8
  %22 = icmp ugt i64 %18, %21
  %23 = zext i1 %22 to i32
  %spec.select = or disjoint i32 %10, %23
  br label %24

24:                                               ; preds = %12, %.lr.ph
  %.0 = phi i32 [ %10, %.lr.ph ], [ %spec.select, %12 ]
  %sext = shl i64 %8, 32
  %25 = ashr exact i64 %sext, 29
  %26 = getelementptr inbounds i8, ptr %0, i64 %25
  %27 = load i64, ptr %26, align 8
  %28 = sext i32 %.0 to i64
  %29 = getelementptr [8 x i8], ptr %1, i64 %28
  %30 = getelementptr i8, ptr %29, i64 -8
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %31
  %33 = load i64, ptr %32, align 8
  %34 = icmp ult i64 %27, %33
  br i1 %34, label %split, label %35

35:                                               ; preds = %24
  %36 = sext i32 %.014 to i64
  %37 = getelementptr [8 x i8], ptr %1, i64 %36
  %38 = getelementptr i8, ptr %37, i64 -8
  store i64 %31, ptr %38, align 8
  %.not = icmp sgt i32 %.0, %9
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !24

split:                                            ; preds = %24, %._crit_edge
  %.012 = phi i32 [ %.01.lcssa, %._crit_edge ], [ %.014, %24 ]
  %sext1.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %sext, %24 ]
  %39 = ashr exact i64 %sext1.pre-phi, 32
  %40 = sext i32 %.012 to i64
  %41 = getelementptr [8 x i8], ptr %1, i64 %40
  %42 = getelementptr i8, ptr %41, i64 -8
  store i64 %39, ptr %42, align 8
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

.loopexit:                                        ; preds = %7, %5, %2
  %.not1 = phi i1 [ true, %2 ], [ false, %7 ], [ true, %5 ]
  %11 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %12

12:                                               ; preds = %.loopexit, %12
  %.122 = phi i32 [ 0, %.loopexit ], [ %13, %12 ]
  call void @compdecomp(ptr noundef %11, i64 noundef 10000000)
  %13 = add nuw nsw i32 %.122, 1
  %14 = icmp samesign ult i32 %13, 30
  br i1 %14, label %12, label %15, !llvm.loop !26

15:                                               ; preds = %12
  call void @free(ptr noundef %11) #10
  br i1 %.not1, label %19, label %16

16:                                               ; preds = %15
  %17 = call ptr @__acrt_iob_func(i32 noundef 1) #10
  %18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.5, double noundef 0.000000e+00) #10
  br label %22

19:                                               ; preds = %15
  %20 = call ptr @__acrt_iob_func(i32 noundef 1) #10
  %21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.6, double noundef 0.000000e+00) #10
  br label %22

22:                                               ; preds = %19, %16
  %23 = call ptr @__acrt_iob_func(i32 noundef 1) #10
  %24 = call i32 @fflush(ptr noundef %23) #10
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
