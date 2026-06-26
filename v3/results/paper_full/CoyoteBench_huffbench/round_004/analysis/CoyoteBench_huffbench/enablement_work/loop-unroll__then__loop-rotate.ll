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
  br i1 %12, label %.lr.ph, label %.preheader12

.lr.ph:                                           ; preds = %2
  br label %13

..preheader12_crit_edge:                          ; preds = %13
  br label %.preheader12

.preheader12:                                     ; preds = %..preheader12_crit_edge, %2
  br label %22

13:                                               ; preds = %.lr.ph, %13
  %.0214 = phi i64 [ 0, %.lr.ph ], [ %20, %13 ]
  %.03313 = phi ptr [ %0, %.lr.ph ], [ %19, %13 ]
  %14 = load i8, ptr %.03313, align 1
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %15
  %17 = load i64, ptr %16, align 8
  %18 = add i64 %17, 1
  store i64 %18, ptr %16, align 8
  %19 = getelementptr inbounds nuw i8, ptr %.03313, i64 1
  %20 = add i64 %.0214, 1
  %21 = icmp ult i64 %20, %1
  br i1 %21, label %13, label %..preheader12_crit_edge, !llvm.loop !9

.preheader11:                                     ; preds = %36
  %.010.lcssa = phi i64 [ %.111.1, %36 ]
  %.not18 = icmp eq i64 %.010.lcssa, 0
  br i1 %.not18, label %.preheader10, label %.lr.ph20

.lr.ph20:                                         ; preds = %.preheader11
  br label %40

22:                                               ; preds = %.preheader12, %36
  %.1317 = phi i64 [ 0, %.preheader12 ], [ %37, %36 ]
  %.01016 = phi i64 [ 0, %.preheader12 ], [ %.111.1, %36 ]
  %23 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.1317
  %24 = load i64, ptr %23, align 8
  %.not8 = icmp eq i64 %24, 0
  br i1 %.not8, label %28, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.01016
  store i64 %.1317, ptr %26, align 8
  %27 = add i64 %.01016, 1
  br label %28

28:                                               ; preds = %25, %22
  %.111 = phi i64 [ %27, %25 ], [ %.01016, %22 ]
  %29 = add nuw nsw i64 %.1317, 1
  br label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %29
  %32 = load i64, ptr %31, align 8
  %.not8.1 = icmp eq i64 %32, 0
  br i1 %.not8.1, label %36, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.111
  store i64 %29, ptr %34, align 8
  %35 = add i64 %.111, 1
  br label %36

36:                                               ; preds = %33, %30
  %.111.1 = phi i64 [ %35, %33 ], [ %.111, %30 ]
  %37 = add nuw nsw i64 %.1317, 2
  %38 = icmp samesign ult i64 %37, 256
  br i1 %38, label %22, label %.preheader11, !llvm.loop !10

..preheader10_crit_edge:                          ; preds = %40
  br label %.preheader10

.preheader10:                                     ; preds = %..preheader10_crit_edge, %.preheader11
  %39 = icmp ugt i64 %.010.lcssa, 1
  br i1 %39, label %.lr.ph22, label %64

.lr.ph22:                                         ; preds = %.preheader10
  br label %44

40:                                               ; preds = %.lr.ph20, %40
  %.2419 = phi i64 [ %.010.lcssa, %.lr.ph20 ], [ %43, %40 ]
  %41 = trunc i64 %.010.lcssa to i32
  %42 = trunc i64 %.2419 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %41, i32 noundef %42)
  %43 = add i64 %.2419, -1
  %.not = icmp eq i64 %43, 0
  br i1 %.not, label %..preheader10_crit_edge, label %40, !llvm.loop !11

44:                                               ; preds = %.lr.ph22, %44
  %.21221 = phi i64 [ %.010.lcssa, %.lr.ph22 ], [ %45, %44 ]
  %45 = add i64 %.21221, -1
  %46 = load i64, ptr %4, align 16
  %47 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %45
  %48 = load i64, ptr %47, align 8
  store i64 %48, ptr %4, align 16
  %49 = trunc i64 %45 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %49, i32 noundef 1)
  %50 = load i64, ptr %4, align 16
  %51 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %50
  %52 = load i64, ptr %51, align 8
  %53 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %46
  %54 = load i64, ptr %53, align 8
  %55 = add i64 %52, %54
  %56 = add i64 %.21221, 255
  %57 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %56
  store i64 %55, ptr %57, align 8
  %58 = trunc i64 %56 to i32
  %59 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %46
  store i32 %58, ptr %59, align 4
  %60 = trunc i64 %.21221 to i32
  %61 = sub i32 -255, %60
  %62 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %50
  store i32 %61, ptr %62, align 4
  store i64 %56, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %49, i32 noundef 1)
  %63 = icmp ugt i64 %45, 1
  br i1 %63, label %44, label %._crit_edge23, !llvm.loop !12

._crit_edge23:                                    ; preds = %44
  %split = phi i64 [ %45, %44 ]
  br label %64

64:                                               ; preds = %._crit_edge23, %.preheader10
  %.212.lcssa = phi i64 [ %split, %._crit_edge23 ], [ %.010.lcssa, %.preheader10 ]
  %65 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %66 = getelementptr inbounds nuw i8, ptr %65, i64 1024
  store i32 0, ptr %66, align 4
  br label %67

67:                                               ; preds = %64, %85
  %.03938 = phi i64 [ 0, %64 ], [ %.140, %85 ]
  %.04237 = phi i64 [ 0, %64 ], [ %86, %85 ]
  %.04536 = phi i64 [ 0, %64 ], [ %.146, %85 ]
  %68 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04237
  %69 = load i64, ptr %68, align 8
  %.not6 = icmp eq i64 %69, 0
  br i1 %.not6, label %70, label %73

70:                                               ; preds = %67
  %71 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04237
  store i32 0, ptr %71, align 4
  %72 = getelementptr inbounds nuw i8, ptr %7, i64 %.04237
  store i8 0, ptr %72, align 1
  br label %85

73:                                               ; preds = %67
  %.037.in24 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.04237
  %.03725 = load i32, ptr %.037.in24, align 4
  %.not726 = icmp eq i32 %.03725, 0
  br i1 %.not726, label %80, label %.lr.ph32

.lr.ph32:                                         ; preds = %73
  br label %74

74:                                               ; preds = %.lr.ph32, %74
  %.03730 = phi i32 [ %.03725, %.lr.ph32 ], [ %.037, %74 ]
  %.329 = phi i64 [ 0, %.lr.ph32 ], [ %79, %74 ]
  %.0528 = phi i64 [ 1, %.lr.ph32 ], [ %78, %74 ]
  %.04327 = phi i64 [ 0, %.lr.ph32 ], [ %.144, %74 ]
  %75 = icmp slt i32 %.03730, 0
  %76 = select i1 %75, i64 %.0528, i64 0
  %.144 = add i64 %.04327, %76
  %.138 = call i32 @llvm.abs.i32(i32 %.03730, i1 true)
  %77 = zext nneg i32 %.138 to i64
  %78 = shl i64 %.0528, 1
  %79 = add i64 %.329, 1
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %77
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %._crit_edge33, label %74, !llvm.loop !13

._crit_edge33:                                    ; preds = %74
  %split34 = phi i64 [ %.144, %74 ]
  %split35 = phi i64 [ %79, %74 ]
  br label %80

80:                                               ; preds = %._crit_edge33, %73
  %.043.lcssa = phi i64 [ %split34, %._crit_edge33 ], [ 0, %73 ]
  %.3.lcssa = phi i64 [ %split35, %._crit_edge33 ], [ 0, %73 ]
  %81 = trunc i64 %.043.lcssa to i32
  %82 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04237
  store i32 %81, ptr %82, align 4
  %83 = trunc i64 %.3.lcssa to i8
  %84 = getelementptr inbounds nuw i8, ptr %7, i64 %.04237
  store i8 %83, ptr %84, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.04536)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.03938)
  br label %85

85:                                               ; preds = %80, %70
  %.146 = phi i64 [ %spec.select, %80 ], [ %.04536, %70 ]
  %.140 = phi i64 [ %.241, %80 ], [ %.03938, %70 ]
  %86 = add nuw nsw i64 %.04237, 1
  %87 = icmp samesign ult i64 %86, 256
  br i1 %87, label %67, label %88, !llvm.loop !14

88:                                               ; preds = %85
  %.045.lcssa = phi i64 [ %.146, %85 ]
  %.039.lcssa = phi i64 [ %.140, %85 ]
  %89 = icmp ugt i64 %.039.lcssa, 32
  br i1 %89, label %90, label %93

90:                                               ; preds = %88
  %91 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %92 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %91)
  call void @exit(i32 noundef 1) #11
  unreachable

93:                                               ; preds = %88
  %94 = icmp eq i64 %.045.lcssa, 0
  br i1 %94, label %96, label %.preheader3

.preheader3:                                      ; preds = %93
  %95 = icmp ult i64 0, %1
  br i1 %95, label %.lr.ph55, label %137

.lr.ph55:                                         ; preds = %.preheader3
  br label %99

96:                                               ; preds = %93
  %97 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %98 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %97)
  call void @exit(i32 noundef 1) #11
  unreachable

99:                                               ; preds = %.lr.ph55, %133
  %.0154 = phi i32 [ -1, %.lr.ph55 ], [ %.1.lcssa, %133 ]
  %.1653 = phi i64 [ 0, %.lr.ph55 ], [ %135, %133 ]
  %.02452 = phi i8 [ 0, %.lr.ph55 ], [ %.125.lcssa, %133 ]
  %.02851 = phi i64 [ 0, %.lr.ph55 ], [ %.129.lcssa, %133 ]
  %.13450 = phi ptr [ %0, %.lr.ph55 ], [ %134, %133 ]
  %100 = load i8, ptr %.13450, align 1
  %101 = zext i8 %100 to i64
  %102 = getelementptr inbounds nuw i8, ptr %7, i64 %101
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i32
  %105 = add nsw i32 %104, -1
  %106 = shl nuw i32 1, %105
  %107 = sext i32 %106 to i64
  %108 = zext i8 %103 to i64
  %109 = icmp ult i64 0, %108
  br i1 %109, label %.lr.ph45, label %133

.lr.ph45:                                         ; preds = %99
  br label %110

110:                                              ; preds = %.lr.ph45, %123
  %.143 = phi i32 [ %.0154, %.lr.ph45 ], [ %.2, %123 ]
  %.442 = phi i64 [ 0, %.lr.ph45 ], [ %130, %123 ]
  %.01541 = phi i64 [ %107, %.lr.ph45 ], [ %129, %123 ]
  %.12540 = phi i8 [ %.02452, %.lr.ph45 ], [ %.327, %123 ]
  %.12939 = phi i64 [ %.02851, %.lr.ph45 ], [ %.230, %123 ]
  %111 = phi i8 [ %100, %.lr.ph45 ], [ %.pre-phi.in, %123 ]
  %112 = icmp eq i32 %.143, 7
  br i1 %112, label %113, label %120

113:                                              ; preds = %110
  %114 = getelementptr inbounds nuw i8, ptr %11, i64 %.12939
  store i8 %.12540, ptr %114, align 1
  %115 = add i64 %.12939, 1
  %116 = icmp eq i64 %115, %1
  br i1 %116, label %117, label %._crit_edge

._crit_edge:                                      ; preds = %113
  %.pre1 = load i8, ptr %.13450, align 1
  br label %123

117:                                              ; preds = %113
  %118 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %119 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %118)
  call void @exit(i32 noundef 1) #11
  unreachable

120:                                              ; preds = %110
  %121 = add nsw i32 %.143, 1
  %122 = shl i8 %.12540, 1
  br label %123

123:                                              ; preds = %120, %._crit_edge
  %.pre-phi.in = phi i8 [ %.pre1, %._crit_edge ], [ %111, %120 ]
  %.230 = phi i64 [ %115, %._crit_edge ], [ %.12939, %120 ]
  %.226 = phi i8 [ 0, %._crit_edge ], [ %122, %120 ]
  %.2 = phi i32 [ 0, %._crit_edge ], [ %121, %120 ]
  %.pre-phi = zext i8 %.pre-phi.in to i64
  %124 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.pre-phi
  %125 = load i32, ptr %124, align 4
  %126 = zext i32 %125 to i64
  %127 = and i64 %.01541, %126
  %.not5 = icmp ne i64 %127, 0
  %128 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %128
  %129 = lshr i64 %.01541, 1
  %130 = add i64 %.442, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  %131 = zext i8 %.pre to i64
  %132 = icmp ult i64 %130, %131
  br i1 %132, label %110, label %._crit_edge46, !llvm.loop !15

._crit_edge46:                                    ; preds = %123
  %split47 = phi i64 [ %.230, %123 ]
  %split48 = phi i8 [ %.327, %123 ]
  %split49 = phi i32 [ %.2, %123 ]
  br label %133

133:                                              ; preds = %._crit_edge46, %99
  %.129.lcssa = phi i64 [ %split47, %._crit_edge46 ], [ %.02851, %99 ]
  %.125.lcssa = phi i8 [ %split48, %._crit_edge46 ], [ %.02452, %99 ]
  %.1.lcssa = phi i32 [ %split49, %._crit_edge46 ], [ %.0154, %99 ]
  %134 = getelementptr inbounds nuw i8, ptr %.13450, i64 1
  %135 = add i64 %.1653, 1
  %136 = icmp ult i64 %135, %1
  br i1 %136, label %99, label %._crit_edge56, !llvm.loop !16

._crit_edge56:                                    ; preds = %133
  %split57 = phi i64 [ %.129.lcssa, %133 ]
  %split58 = phi i8 [ %.125.lcssa, %133 ]
  %split59 = phi i32 [ %.1.lcssa, %133 ]
  br label %137

137:                                              ; preds = %._crit_edge56, %.preheader3
  %.028.lcssa = phi i64 [ %split57, %._crit_edge56 ], [ 0, %.preheader3 ]
  %.024.lcssa = phi i8 [ %split58, %._crit_edge56 ], [ 0, %.preheader3 ]
  %.01.lcssa = phi i32 [ %split59, %._crit_edge56 ], [ -1, %.preheader3 ]
  %138 = sub nsw i32 7, %.01.lcssa
  %139 = zext i8 %.024.lcssa to i32
  %140 = shl i32 %139, %138
  %141 = trunc i32 %140 to i8
  %142 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %141, ptr %142, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %143

.preheader2:                                      ; preds = %169
  br label %172

143:                                              ; preds = %137, %169
  %.068 = phi ptr [ %9, %137 ], [ %145, %169 ]
  %.2767 = phi i64 [ 0, %137 ], [ %170, %169 ]
  %144 = trunc nuw i64 %.2767 to i8
  store i8 %144, ptr %.068, align 1
  %145 = getelementptr inbounds nuw i8, ptr %.068, i64 1
  %146 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.2767
  %147 = load i32, ptr %146, align 4
  %148 = getelementptr inbounds nuw i8, ptr %7, i64 %.2767
  %149 = load i8, ptr %148, align 1
  %150 = zext i8 %149 to i32
  %151 = or i32 %147, %150
  %.not3 = icmp eq i32 %151, 0
  br i1 %.not3, label %169, label %152

152:                                              ; preds = %143
  %153 = add nsw i32 %150, -1
  %154 = shl nuw i32 1, %153
  %155 = sext i32 %154 to i64
  %156 = zext i8 %149 to i64
  %157 = icmp ult i64 0, %156
  br i1 %157, label %.lr.ph64, label %167

.lr.ph64:                                         ; preds = %152
  br label %158

158:                                              ; preds = %.lr.ph64, %158
  %.562 = phi i64 [ 0, %.lr.ph64 ], [ %165, %158 ]
  %.11661 = phi i64 [ %155, %.lr.ph64 ], [ %164, %158 ]
  %.01960 = phi i32 [ 0, %.lr.ph64 ], [ %spec.select1, %158 ]
  %159 = shl i32 %.01960, 1
  %160 = or disjoint i32 %159, 1
  %161 = zext i32 %147 to i64
  %162 = and i64 %.11661, %161
  %.not4 = icmp eq i64 %162, 0
  %163 = add i32 %159, 2
  %spec.select1 = select i1 %.not4, i32 %160, i32 %163
  %164 = lshr i64 %.11661, 1
  %165 = add i64 %.562, 1
  %166 = icmp ult i64 %165, %156
  br i1 %166, label %158, label %._crit_edge65, !llvm.loop !17

._crit_edge65:                                    ; preds = %158
  %split66 = phi i32 [ %spec.select1, %158 ]
  br label %167

167:                                              ; preds = %._crit_edge65, %152
  %.019.lcssa = phi i32 [ %split66, %._crit_edge65 ], [ 0, %152 ]
  %168 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.2767
  store i32 %.019.lcssa, ptr %168, align 4
  br label %169

169:                                              ; preds = %167, %143
  %170 = add nuw nsw i64 %.2767, 1
  %171 = icmp samesign ult i64 %170, 256
  br i1 %171, label %143, label %.preheader2, !llvm.loop !18

.preheader1:                                      ; preds = %.critedge
  br label %191

172:                                              ; preds = %.preheader2, %.critedge
  %.670 = phi i64 [ 1, %.preheader2 ], [ %189, %.critedge ]
  %173 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.670
  %174 = load i32, ptr %173, align 4
  %175 = getelementptr inbounds nuw i8, ptr %9, i64 %.670
  %176 = load i8, ptr %175, align 1
  br label %177

177:                                              ; preds = %172, %182
  %.3869 = phi i64 [ %.670, %172 ], [ %178, %182 ]
  %178 = add i64 %.3869, -1
  %179 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %178
  %180 = load i32, ptr %179, align 4
  %181 = icmp ugt i32 %180, %174
  br i1 %181, label %182, label %.critedge

182:                                              ; preds = %177
  %183 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.3869
  store i32 %180, ptr %183, align 4
  %184 = getelementptr inbounds nuw i8, ptr %9, i64 %178
  %185 = load i8, ptr %184, align 1
  %186 = getelementptr inbounds nuw i8, ptr %9, i64 %.3869
  store i8 %185, ptr %186, align 1
  %.not2 = icmp eq i64 %178, 0
  br i1 %.not2, label %.critedge, label %177, !llvm.loop !19

.critedge:                                        ; preds = %177, %182
  %.38.lcssa = phi i64 [ %.3869, %177 ], [ %178, %182 ]
  %187 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %174, ptr %187, align 4
  %188 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %176, ptr %188, align 1
  %189 = add nuw nsw i64 %.670, 1
  %190 = icmp samesign ult i64 %189, 256
  br i1 %190, label %172, label %.preheader1, !llvm.loop !20

191:                                              ; preds = %191, %.preheader1
  %.49 = phi i64 [ %195, %191 ], [ 0, %.preheader1 ]
  %192 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %193 = load i32, ptr %192, align 4
  %194 = icmp eq i32 %193, 0
  %195 = add i64 %.49, 1
  br i1 %194, label %191, label %.preheader, !llvm.loop !21

.preheader:                                       ; preds = %191
  %.49.lcssa = phi i64 [ %.49, %191 ]
  %196 = icmp ult i64 0, %1
  br i1 %196, label %.lr.ph77, label %220

.lr.ph77:                                         ; preds = %.preheader
  br label %197

197:                                              ; preds = %.lr.ph77, %216
  %.776 = phi i64 [ %.49.lcssa, %.lr.ph77 ], [ %.9, %216 ]
  %.31375 = phi i64 [ 0, %.lr.ph77 ], [ %.414, %216 ]
  %.21774 = phi i64 [ 128, %.lr.ph77 ], [ %.318, %216 ]
  %.22173 = phi i32 [ 0, %.lr.ph77 ], [ %.423, %216 ]
  %.03172 = phi ptr [ %11, %.lr.ph77 ], [ %.132, %216 ]
  %.23571 = phi ptr [ %0, %.lr.ph77 ], [ %.336, %216 ]
  %198 = shl i32 %.22173, 1
  %199 = or disjoint i32 %198, 1
  %200 = load i8, ptr %.03172, align 1
  %201 = zext i8 %200 to i64
  %202 = and i64 %.21774, %201
  %.not1 = icmp eq i64 %202, 0
  %203 = add i32 %198, 2
  %spec.select2 = select i1 %.not1, i32 %199, i32 %203
  br label %204

204:                                              ; preds = %204, %197
  %.8 = phi i64 [ %.776, %197 ], [ %208, %204 ]
  %205 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %206 = load i32, ptr %205, align 4
  %207 = icmp ult i32 %206, %spec.select2
  %208 = add i64 %.8, 1
  br i1 %207, label %204, label %209, !llvm.loop !22

209:                                              ; preds = %204
  %.8.lcssa = phi i64 [ %.8, %204 ]
  %.lcssa = phi i32 [ %206, %204 ]
  %210 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %210, label %211, label %216

211:                                              ; preds = %209
  %212 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %213 = load i8, ptr %212, align 1
  store i8 %213, ptr %.23571, align 1
  %214 = getelementptr inbounds nuw i8, ptr %.23571, i64 1
  %215 = add i64 %.31375, 1
  br label %216

216:                                              ; preds = %211, %209
  %.336 = phi ptr [ %214, %211 ], [ %.23571, %209 ]
  %.423 = phi i32 [ 0, %211 ], [ %spec.select2, %209 ]
  %.414 = phi i64 [ %215, %211 ], [ %.31375, %209 ]
  %.9 = phi i64 [ %.49.lcssa, %211 ], [ %.8.lcssa, %209 ]
  %217 = icmp ult i64 %.21774, 2
  %218 = lshr i64 %.21774, 1
  %.132.idx = zext i1 %217 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.03172, i64 %.132.idx
  %.318 = select i1 %217, i64 128, i64 %218
  %219 = icmp ult i64 %.414, %1
  br i1 %219, label %197, label %._crit_edge78, !llvm.loop !23

._crit_edge78:                                    ; preds = %216
  br label %220

220:                                              ; preds = %._crit_edge78, %.preheader
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
  br label %40

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
  br i1 %35, label %split, label %36

36:                                               ; preds = %25
  %37 = sext i32 %.014 to i64
  %38 = getelementptr [8 x i8], ptr %1, i64 %37
  %39 = getelementptr i8, ptr %38, i64 -8
  store i64 %32, ptr %39, align 8
  %.not = icmp sgt i32 %.0, %9
  br i1 %.not, label %.._crit_edge_crit_edge, label %10, !llvm.loop !24

split:                                            ; preds = %25
  %sext.lcssa = phi i64 [ %sext, %25 ]
  %.01.lcssa1 = phi i32 [ %.014, %25 ]
  br label %40

40:                                               ; preds = %split, %._crit_edge
  %.012 = phi i32 [ %.01.lcssa1, %split ], [ %.01.lcssa, %._crit_edge ]
  %sext1.pre-phi = phi i64 [ %sext.lcssa, %split ], [ %.pre, %._crit_edge ]
  %41 = ashr exact i64 %sext1.pre-phi, 32
  %42 = sext i32 %.012 to i64
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
