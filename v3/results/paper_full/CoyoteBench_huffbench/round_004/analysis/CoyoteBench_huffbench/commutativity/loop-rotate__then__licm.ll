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
  br i1 %12, label %.lr.ph, label %.preheader6

.lr.ph:                                           ; preds = %2
  br label %13

..preheader6_crit_edge:                           ; preds = %13
  br label %.preheader6

.preheader6:                                      ; preds = %..preheader6_crit_edge, %2
  br label %23

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
  br i1 %21, label %13, label %..preheader6_crit_edge, !llvm.loop !9

.preheader5:                                      ; preds = %29
  %.010.lcssa = phi i64 [ %.111, %29 ]
  %.not18 = icmp eq i64 %.010.lcssa, 0
  br i1 %.not18, label %.preheader4, label %.lr.ph20

.lr.ph20:                                         ; preds = %.preheader5
  %22 = trunc i64 %.010.lcssa to i32
  br label %33

23:                                               ; preds = %.preheader6, %29
  %.1317 = phi i64 [ 0, %.preheader6 ], [ %30, %29 ]
  %.01016 = phi i64 [ 0, %.preheader6 ], [ %.111, %29 ]
  %24 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.1317
  %25 = load i64, ptr %24, align 8
  %.not8 = icmp eq i64 %25, 0
  br i1 %.not8, label %29, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.01016
  store i64 %.1317, ptr %27, align 8
  %28 = add i64 %.01016, 1
  br label %29

29:                                               ; preds = %26, %23
  %.111 = phi i64 [ %28, %26 ], [ %.01016, %23 ]
  %30 = add nuw nsw i64 %.1317, 1
  %31 = icmp samesign ult i64 %30, 256
  br i1 %31, label %23, label %.preheader5, !llvm.loop !10

..preheader4_crit_edge:                           ; preds = %33
  br label %.preheader4

.preheader4:                                      ; preds = %..preheader4_crit_edge, %.preheader5
  %32 = icmp ugt i64 %.010.lcssa, 1
  br i1 %32, label %.lr.ph22, label %56

.lr.ph22:                                         ; preds = %.preheader4
  br label %36

33:                                               ; preds = %.lr.ph20, %33
  %.2419 = phi i64 [ %.010.lcssa, %.lr.ph20 ], [ %35, %33 ]
  %34 = trunc i64 %.2419 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %22, i32 noundef %34)
  %35 = add i64 %.2419, -1
  %.not = icmp eq i64 %35, 0
  br i1 %.not, label %..preheader4_crit_edge, label %33, !llvm.loop !11

36:                                               ; preds = %.lr.ph22, %36
  %.21221 = phi i64 [ %.010.lcssa, %.lr.ph22 ], [ %37, %36 ]
  %37 = add i64 %.21221, -1
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
  %48 = add i64 %.21221, 255
  %49 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %48
  store i64 %47, ptr %49, align 8
  %50 = trunc i64 %48 to i32
  %51 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %38
  store i32 %50, ptr %51, align 4
  %52 = trunc i64 %.21221 to i32
  %53 = sub i32 -255, %52
  %54 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %42
  store i32 %53, ptr %54, align 4
  store i64 %48, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %41, i32 noundef 1)
  %55 = icmp ugt i64 %37, 1
  br i1 %55, label %36, label %._crit_edge23, !llvm.loop !12

._crit_edge23:                                    ; preds = %36
  %split = phi i64 [ %37, %36 ]
  br label %56

56:                                               ; preds = %._crit_edge23, %.preheader4
  %.212.lcssa = phi i64 [ %split, %._crit_edge23 ], [ %.010.lcssa, %.preheader4 ]
  %57 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %58 = getelementptr inbounds nuw i8, ptr %57, i64 1024
  store i32 0, ptr %58, align 4
  br label %59

59:                                               ; preds = %56, %77
  %.03938 = phi i64 [ 0, %56 ], [ %.140, %77 ]
  %.04237 = phi i64 [ 0, %56 ], [ %78, %77 ]
  %.04536 = phi i64 [ 0, %56 ], [ %.146, %77 ]
  %60 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04237
  %61 = load i64, ptr %60, align 8
  %.not6 = icmp eq i64 %61, 0
  br i1 %.not6, label %62, label %65

62:                                               ; preds = %59
  %63 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04237
  store i32 0, ptr %63, align 4
  %64 = getelementptr inbounds nuw i8, ptr %7, i64 %.04237
  store i8 0, ptr %64, align 1
  br label %77

65:                                               ; preds = %59
  %.037.in24 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.04237
  %.03725 = load i32, ptr %.037.in24, align 4
  %.not726 = icmp eq i32 %.03725, 0
  br i1 %.not726, label %72, label %.lr.ph32

.lr.ph32:                                         ; preds = %65
  br label %66

66:                                               ; preds = %.lr.ph32, %66
  %.03730 = phi i32 [ %.03725, %.lr.ph32 ], [ %.037, %66 ]
  %.329 = phi i64 [ 0, %.lr.ph32 ], [ %71, %66 ]
  %.0528 = phi i64 [ 1, %.lr.ph32 ], [ %70, %66 ]
  %.04327 = phi i64 [ 0, %.lr.ph32 ], [ %.144, %66 ]
  %67 = icmp slt i32 %.03730, 0
  %68 = select i1 %67, i64 %.0528, i64 0
  %.144 = add i64 %.04327, %68
  %.138 = call i32 @llvm.abs.i32(i32 %.03730, i1 true)
  %69 = zext nneg i32 %.138 to i64
  %70 = shl i64 %.0528, 1
  %71 = add i64 %.329, 1
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %69
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %._crit_edge33, label %66, !llvm.loop !13

._crit_edge33:                                    ; preds = %66
  %split34 = phi i64 [ %.144, %66 ]
  %split35 = phi i64 [ %71, %66 ]
  br label %72

72:                                               ; preds = %._crit_edge33, %65
  %.043.lcssa = phi i64 [ %split34, %._crit_edge33 ], [ 0, %65 ]
  %.3.lcssa = phi i64 [ %split35, %._crit_edge33 ], [ 0, %65 ]
  %73 = trunc i64 %.043.lcssa to i32
  %74 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04237
  store i32 %73, ptr %74, align 4
  %75 = trunc i64 %.3.lcssa to i8
  %76 = getelementptr inbounds nuw i8, ptr %7, i64 %.04237
  store i8 %75, ptr %76, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.04536)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.03938)
  br label %77

77:                                               ; preds = %72, %62
  %.146 = phi i64 [ %spec.select, %72 ], [ %.04536, %62 ]
  %.140 = phi i64 [ %.241, %72 ], [ %.03938, %62 ]
  %78 = add nuw nsw i64 %.04237, 1
  %79 = icmp samesign ult i64 %78, 256
  br i1 %79, label %59, label %80, !llvm.loop !14

80:                                               ; preds = %77
  %.045.lcssa = phi i64 [ %.146, %77 ]
  %.039.lcssa = phi i64 [ %.140, %77 ]
  %81 = icmp ugt i64 %.039.lcssa, 32
  br i1 %81, label %82, label %85

82:                                               ; preds = %80
  %83 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %84 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %83)
  call void @exit(i32 noundef 1) #11
  unreachable

85:                                               ; preds = %80
  %86 = icmp eq i64 %.045.lcssa, 0
  br i1 %86, label %88, label %.preheader3

.preheader3:                                      ; preds = %85
  %87 = icmp ult i64 0, %1
  br i1 %87, label %.lr.ph55, label %129

.lr.ph55:                                         ; preds = %.preheader3
  br label %91

88:                                               ; preds = %85
  %89 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %90 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %89)
  call void @exit(i32 noundef 1) #11
  unreachable

91:                                               ; preds = %.lr.ph55, %125
  %.0154 = phi i32 [ -1, %.lr.ph55 ], [ %.1.lcssa, %125 ]
  %.1653 = phi i64 [ 0, %.lr.ph55 ], [ %127, %125 ]
  %.02452 = phi i8 [ 0, %.lr.ph55 ], [ %.125.lcssa, %125 ]
  %.02851 = phi i64 [ 0, %.lr.ph55 ], [ %.129.lcssa, %125 ]
  %.13450 = phi ptr [ %0, %.lr.ph55 ], [ %126, %125 ]
  %92 = load i8, ptr %.13450, align 1
  %93 = zext i8 %92 to i64
  %94 = getelementptr inbounds nuw i8, ptr %7, i64 %93
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %95 to i32
  %97 = add nsw i32 %96, -1
  %98 = shl nuw i32 1, %97
  %99 = sext i32 %98 to i64
  %100 = zext i8 %95 to i64
  %101 = icmp ult i64 0, %100
  br i1 %101, label %.lr.ph45, label %125

.lr.ph45:                                         ; preds = %91
  br label %102

102:                                              ; preds = %.lr.ph45, %115
  %.143 = phi i32 [ %.0154, %.lr.ph45 ], [ %.2, %115 ]
  %.442 = phi i64 [ 0, %.lr.ph45 ], [ %122, %115 ]
  %.01541 = phi i64 [ %99, %.lr.ph45 ], [ %121, %115 ]
  %.12540 = phi i8 [ %.02452, %.lr.ph45 ], [ %.327, %115 ]
  %.12939 = phi i64 [ %.02851, %.lr.ph45 ], [ %.230, %115 ]
  %103 = phi i8 [ %92, %.lr.ph45 ], [ %.pre-phi.in, %115 ]
  %104 = icmp eq i32 %.143, 7
  br i1 %104, label %105, label %112

105:                                              ; preds = %102
  %106 = getelementptr inbounds nuw i8, ptr %11, i64 %.12939
  store i8 %.12540, ptr %106, align 1
  %107 = add i64 %.12939, 1
  %108 = icmp eq i64 %107, %1
  br i1 %108, label %109, label %._crit_edge

._crit_edge:                                      ; preds = %105
  %.pre1 = load i8, ptr %.13450, align 1
  br label %115

109:                                              ; preds = %105
  %110 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %111 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %110)
  call void @exit(i32 noundef 1) #11
  unreachable

112:                                              ; preds = %102
  %113 = add nsw i32 %.143, 1
  %114 = shl i8 %.12540, 1
  br label %115

115:                                              ; preds = %112, %._crit_edge
  %.pre-phi.in = phi i8 [ %.pre1, %._crit_edge ], [ %103, %112 ]
  %.230 = phi i64 [ %107, %._crit_edge ], [ %.12939, %112 ]
  %.226 = phi i8 [ 0, %._crit_edge ], [ %114, %112 ]
  %.2 = phi i32 [ 0, %._crit_edge ], [ %113, %112 ]
  %.pre-phi = zext i8 %.pre-phi.in to i64
  %116 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.pre-phi
  %117 = load i32, ptr %116, align 4
  %118 = zext i32 %117 to i64
  %119 = and i64 %.01541, %118
  %.not5 = icmp ne i64 %119, 0
  %120 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %120
  %121 = lshr i64 %.01541, 1
  %122 = add i64 %.442, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  %123 = zext i8 %.pre to i64
  %124 = icmp ult i64 %122, %123
  br i1 %124, label %102, label %._crit_edge46, !llvm.loop !15

._crit_edge46:                                    ; preds = %115
  %split47 = phi i64 [ %.230, %115 ]
  %split48 = phi i8 [ %.327, %115 ]
  %split49 = phi i32 [ %.2, %115 ]
  br label %125

125:                                              ; preds = %._crit_edge46, %91
  %.129.lcssa = phi i64 [ %split47, %._crit_edge46 ], [ %.02851, %91 ]
  %.125.lcssa = phi i8 [ %split48, %._crit_edge46 ], [ %.02452, %91 ]
  %.1.lcssa = phi i32 [ %split49, %._crit_edge46 ], [ %.0154, %91 ]
  %126 = getelementptr inbounds nuw i8, ptr %.13450, i64 1
  %127 = add i64 %.1653, 1
  %128 = icmp ult i64 %127, %1
  br i1 %128, label %91, label %._crit_edge56, !llvm.loop !16

._crit_edge56:                                    ; preds = %125
  %split57 = phi i64 [ %.129.lcssa, %125 ]
  %split58 = phi i8 [ %.125.lcssa, %125 ]
  %split59 = phi i32 [ %.1.lcssa, %125 ]
  br label %129

129:                                              ; preds = %._crit_edge56, %.preheader3
  %.028.lcssa = phi i64 [ %split57, %._crit_edge56 ], [ 0, %.preheader3 ]
  %.024.lcssa = phi i8 [ %split58, %._crit_edge56 ], [ 0, %.preheader3 ]
  %.01.lcssa = phi i32 [ %split59, %._crit_edge56 ], [ -1, %.preheader3 ]
  %130 = sub nsw i32 7, %.01.lcssa
  %131 = zext i8 %.024.lcssa to i32
  %132 = shl i32 %131, %130
  %133 = trunc i32 %132 to i8
  %134 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %133, ptr %134, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %135

.preheader2:                                      ; preds = %161
  br label %164

135:                                              ; preds = %129, %161
  %.068 = phi ptr [ %9, %129 ], [ %137, %161 ]
  %.2767 = phi i64 [ 0, %129 ], [ %162, %161 ]
  %136 = trunc nuw i64 %.2767 to i8
  store i8 %136, ptr %.068, align 1
  %137 = getelementptr inbounds nuw i8, ptr %.068, i64 1
  %138 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.2767
  %139 = load i32, ptr %138, align 4
  %140 = getelementptr inbounds nuw i8, ptr %7, i64 %.2767
  %141 = load i8, ptr %140, align 1
  %142 = zext i8 %141 to i32
  %143 = or i32 %139, %142
  %.not3 = icmp eq i32 %143, 0
  br i1 %.not3, label %161, label %144

144:                                              ; preds = %135
  %145 = add nsw i32 %142, -1
  %146 = shl nuw i32 1, %145
  %147 = sext i32 %146 to i64
  %148 = zext i8 %141 to i64
  %149 = icmp ult i64 0, %148
  br i1 %149, label %.lr.ph64, label %159

.lr.ph64:                                         ; preds = %144
  %150 = zext i32 %139 to i64
  br label %151

151:                                              ; preds = %.lr.ph64, %151
  %.562 = phi i64 [ 0, %.lr.ph64 ], [ %157, %151 ]
  %.11661 = phi i64 [ %147, %.lr.ph64 ], [ %156, %151 ]
  %.01960 = phi i32 [ 0, %.lr.ph64 ], [ %spec.select1, %151 ]
  %152 = shl i32 %.01960, 1
  %153 = or disjoint i32 %152, 1
  %154 = and i64 %.11661, %150
  %.not4 = icmp eq i64 %154, 0
  %155 = add i32 %152, 2
  %spec.select1 = select i1 %.not4, i32 %153, i32 %155
  %156 = lshr i64 %.11661, 1
  %157 = add i64 %.562, 1
  %158 = icmp ult i64 %157, %148
  br i1 %158, label %151, label %._crit_edge65, !llvm.loop !17

._crit_edge65:                                    ; preds = %151
  %split66 = phi i32 [ %spec.select1, %151 ]
  br label %159

159:                                              ; preds = %._crit_edge65, %144
  %.019.lcssa = phi i32 [ %split66, %._crit_edge65 ], [ 0, %144 ]
  %160 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.2767
  store i32 %.019.lcssa, ptr %160, align 4
  br label %161

161:                                              ; preds = %159, %135
  %162 = add nuw nsw i64 %.2767, 1
  %163 = icmp samesign ult i64 %162, 256
  br i1 %163, label %135, label %.preheader2, !llvm.loop !18

.preheader1:                                      ; preds = %.critedge
  br label %183

164:                                              ; preds = %.preheader2, %.critedge
  %.670 = phi i64 [ 1, %.preheader2 ], [ %181, %.critedge ]
  %165 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.670
  %166 = load i32, ptr %165, align 4
  %167 = getelementptr inbounds nuw i8, ptr %9, i64 %.670
  %168 = load i8, ptr %167, align 1
  br label %169

169:                                              ; preds = %164, %174
  %.3869 = phi i64 [ %.670, %164 ], [ %170, %174 ]
  %170 = add i64 %.3869, -1
  %171 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %170
  %172 = load i32, ptr %171, align 4
  %173 = icmp ugt i32 %172, %166
  br i1 %173, label %174, label %.critedge

174:                                              ; preds = %169
  %175 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.3869
  store i32 %172, ptr %175, align 4
  %176 = getelementptr inbounds nuw i8, ptr %9, i64 %170
  %177 = load i8, ptr %176, align 1
  %178 = getelementptr inbounds nuw i8, ptr %9, i64 %.3869
  store i8 %177, ptr %178, align 1
  %.not2 = icmp eq i64 %170, 0
  br i1 %.not2, label %.critedge, label %169, !llvm.loop !19

.critedge:                                        ; preds = %169, %174
  %.38.lcssa = phi i64 [ %.3869, %169 ], [ %170, %174 ]
  %179 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %166, ptr %179, align 4
  %180 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %168, ptr %180, align 1
  %181 = add nuw nsw i64 %.670, 1
  %182 = icmp samesign ult i64 %181, 256
  br i1 %182, label %164, label %.preheader1, !llvm.loop !20

183:                                              ; preds = %183, %.preheader1
  %.49 = phi i64 [ %187, %183 ], [ 0, %.preheader1 ]
  %184 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %185 = load i32, ptr %184, align 4
  %186 = icmp eq i32 %185, 0
  %187 = add i64 %.49, 1
  br i1 %186, label %183, label %.preheader, !llvm.loop !21

.preheader:                                       ; preds = %183
  %.49.lcssa = phi i64 [ %.49, %183 ]
  %188 = icmp ult i64 0, %1
  br i1 %188, label %.lr.ph77, label %212

.lr.ph77:                                         ; preds = %.preheader
  br label %189

189:                                              ; preds = %.lr.ph77, %208
  %.776 = phi i64 [ %.49.lcssa, %.lr.ph77 ], [ %.9, %208 ]
  %.31375 = phi i64 [ 0, %.lr.ph77 ], [ %.414, %208 ]
  %.21774 = phi i64 [ 128, %.lr.ph77 ], [ %.318, %208 ]
  %.22173 = phi i32 [ 0, %.lr.ph77 ], [ %.423, %208 ]
  %.03172 = phi ptr [ %11, %.lr.ph77 ], [ %.132, %208 ]
  %.23571 = phi ptr [ %0, %.lr.ph77 ], [ %.336, %208 ]
  %190 = shl i32 %.22173, 1
  %191 = or disjoint i32 %190, 1
  %192 = load i8, ptr %.03172, align 1
  %193 = zext i8 %192 to i64
  %194 = and i64 %.21774, %193
  %.not1 = icmp eq i64 %194, 0
  %195 = add i32 %190, 2
  %spec.select2 = select i1 %.not1, i32 %191, i32 %195
  br label %196

196:                                              ; preds = %196, %189
  %.8 = phi i64 [ %.776, %189 ], [ %200, %196 ]
  %197 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %198 = load i32, ptr %197, align 4
  %199 = icmp ult i32 %198, %spec.select2
  %200 = add i64 %.8, 1
  br i1 %199, label %196, label %201, !llvm.loop !22

201:                                              ; preds = %196
  %.8.lcssa = phi i64 [ %.8, %196 ]
  %.lcssa = phi i32 [ %198, %196 ]
  %202 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %202, label %203, label %208

203:                                              ; preds = %201
  %204 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %205 = load i8, ptr %204, align 1
  store i8 %205, ptr %.23571, align 1
  %206 = getelementptr inbounds nuw i8, ptr %.23571, i64 1
  %207 = add i64 %.31375, 1
  br label %208

208:                                              ; preds = %203, %201
  %.336 = phi ptr [ %206, %203 ], [ %.23571, %201 ]
  %.423 = phi i32 [ 0, %203 ], [ %spec.select2, %201 ]
  %.414 = phi i64 [ %207, %203 ], [ %.31375, %201 ]
  %.9 = phi i64 [ %.49.lcssa, %203 ], [ %.8.lcssa, %201 ]
  %209 = icmp ult i64 %.21774, 2
  %210 = lshr i64 %.21774, 1
  %.132.idx = zext i1 %209 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.03172, i64 %.132.idx
  %.318 = select i1 %209, i64 128, i64 %210
  %211 = icmp ult i64 %.414, %1
  br i1 %211, label %189, label %._crit_edge78, !llvm.loop !23

._crit_edge78:                                    ; preds = %208
  br label %212

212:                                              ; preds = %._crit_edge78, %.preheader
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
  %sext = shl i64 %8, 32
  %10 = ashr exact i64 %sext, 29
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  br label %12

.._crit_edge_crit_edge:                           ; preds = %36
  %split6 = phi i32 [ %.0, %36 ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %4
  %.01.lcssa = phi i32 [ %split6, %.._crit_edge_crit_edge ], [ %3, %4 ]
  %.pre = shl i64 %8, 32
  br label %40

12:                                               ; preds = %.lr.ph, %36
  %.014 = phi i32 [ %3, %.lr.ph ], [ %.0, %36 ]
  %13 = shl nsw i32 %.014, 1
  %14 = icmp slt i32 %13, %2
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = sext i32 %13 to i64
  %17 = getelementptr [8 x i8], ptr %1, i64 %16
  %18 = getelementptr i8, ptr %17, i64 -8
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %19
  %21 = load i64, ptr %20, align 8
  %22 = load i64, ptr %17, align 8
  %23 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %22
  %24 = load i64, ptr %23, align 8
  %25 = icmp ugt i64 %21, %24
  %26 = zext i1 %25 to i32
  %spec.select = or disjoint i32 %13, %26
  br label %27

27:                                               ; preds = %15, %12
  %.0 = phi i32 [ %13, %12 ], [ %spec.select, %15 ]
  %28 = load i64, ptr %11, align 8
  %29 = sext i32 %.0 to i64
  %30 = getelementptr [8 x i8], ptr %1, i64 %29
  %31 = getelementptr i8, ptr %30, i64 -8
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %32
  %34 = load i64, ptr %33, align 8
  %35 = icmp ult i64 %28, %34
  br i1 %35, label %split, label %36

36:                                               ; preds = %27
  %37 = sext i32 %.014 to i64
  %38 = getelementptr [8 x i8], ptr %1, i64 %37
  %39 = getelementptr i8, ptr %38, i64 -8
  store i64 %32, ptr %39, align 8
  %.not = icmp sgt i32 %.0, %9
  br i1 %.not, label %.._crit_edge_crit_edge, label %12, !llvm.loop !24

split:                                            ; preds = %27
  %sext.lcssa = phi i64 [ %sext, %27 ]
  %.01.lcssa1 = phi i32 [ %.014, %27 ]
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
