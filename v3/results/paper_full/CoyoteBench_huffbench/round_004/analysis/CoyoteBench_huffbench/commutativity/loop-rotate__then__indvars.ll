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
  br i1 %3, label %.lr.ph, label %9

.lr.ph:                                           ; preds = %1
  br label %4

4:                                                ; preds = %.lr.ph, %4
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %4 ]
  %.011 = phi ptr [ %2, %.lr.ph ], [ %8, %4 ]
  %5 = call i64 @random4()
  %6 = getelementptr inbounds nuw i8, ptr @.str, i64 %5
  %7 = load i8, ptr %6, align 1
  store i8 %7, ptr %.011, align 1
  %8 = getelementptr inbounds nuw i8, ptr %.011, i64 1
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %0
  br i1 %exitcond, label %4, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %4
  br label %9

9:                                                ; preds = %._crit_edge, %1
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
  br label %21

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
  %20 = add nuw i64 %.0214, 1
  %exitcond = icmp ne i64 %20, %1
  br i1 %exitcond, label %13, label %..preheader6_crit_edge, !llvm.loop !9

.preheader5:                                      ; preds = %27
  %.010.lcssa = phi i64 [ %.111, %27 ]
  %.not18 = icmp eq i64 %.010.lcssa, 0
  br i1 %.not18, label %.preheader4, label %.lr.ph20

.lr.ph20:                                         ; preds = %.preheader5
  br label %30

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
  %exitcond79 = icmp ne i64 %28, 256
  br i1 %exitcond79, label %21, label %.preheader5, !llvm.loop !10

..preheader4_crit_edge:                           ; preds = %30
  br label %.preheader4

.preheader4:                                      ; preds = %..preheader4_crit_edge, %.preheader5
  %29 = icmp ugt i64 %.010.lcssa, 1
  br i1 %29, label %.lr.ph22, label %54

.lr.ph22:                                         ; preds = %.preheader4
  br label %34

30:                                               ; preds = %.lr.ph20, %30
  %.2419 = phi i64 [ %.010.lcssa, %.lr.ph20 ], [ %33, %30 ]
  %31 = trunc i64 %.010.lcssa to i32
  %32 = trunc i64 %.2419 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %31, i32 noundef %32)
  %33 = add i64 %.2419, -1
  %.not = icmp eq i64 %33, 0
  br i1 %.not, label %..preheader4_crit_edge, label %30, !llvm.loop !11

34:                                               ; preds = %.lr.ph22, %34
  %.21221 = phi i64 [ %.010.lcssa, %.lr.ph22 ], [ %35, %34 ]
  %35 = add i64 %.21221, -1
  %36 = load i64, ptr %4, align 16
  %37 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %35
  %38 = load i64, ptr %37, align 8
  store i64 %38, ptr %4, align 16
  %39 = trunc i64 %35 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %39, i32 noundef 1)
  %40 = load i64, ptr %4, align 16
  %41 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %40
  %42 = load i64, ptr %41, align 8
  %43 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %36
  %44 = load i64, ptr %43, align 8
  %45 = add i64 %42, %44
  %46 = add i64 %.21221, 255
  %47 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %46
  store i64 %45, ptr %47, align 8
  %48 = trunc i64 %46 to i32
  %49 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %36
  store i32 %48, ptr %49, align 4
  %50 = trunc i64 %.21221 to i32
  %51 = sub i32 -255, %50
  %52 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %40
  store i32 %51, ptr %52, align 4
  store i64 %46, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %39, i32 noundef 1)
  %53 = icmp ugt i64 %35, 1
  br i1 %53, label %34, label %._crit_edge23, !llvm.loop !12

._crit_edge23:                                    ; preds = %34
  br label %54

54:                                               ; preds = %._crit_edge23, %.preheader4
  %.212.lcssa = phi i64 [ 1, %._crit_edge23 ], [ %.010.lcssa, %.preheader4 ]
  %55 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %56 = getelementptr inbounds nuw i8, ptr %55, i64 1024
  store i32 0, ptr %56, align 4
  br label %57

57:                                               ; preds = %54, %75
  %.03938 = phi i64 [ 0, %54 ], [ %.140, %75 ]
  %.04237 = phi i64 [ 0, %54 ], [ %76, %75 ]
  %.04536 = phi i64 [ 0, %54 ], [ %.146, %75 ]
  %58 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04237
  %59 = load i64, ptr %58, align 8
  %.not6 = icmp eq i64 %59, 0
  br i1 %.not6, label %60, label %63

60:                                               ; preds = %57
  %61 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04237
  store i32 0, ptr %61, align 4
  %62 = getelementptr inbounds nuw i8, ptr %7, i64 %.04237
  store i8 0, ptr %62, align 1
  br label %75

63:                                               ; preds = %57
  %.037.in24 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.04237
  %.03725 = load i32, ptr %.037.in24, align 4
  %.not726 = icmp eq i32 %.03725, 0
  br i1 %.not726, label %70, label %.lr.ph32

.lr.ph32:                                         ; preds = %63
  br label %64

64:                                               ; preds = %.lr.ph32, %64
  %.03730 = phi i32 [ %.03725, %.lr.ph32 ], [ %.037, %64 ]
  %.329 = phi i64 [ 0, %.lr.ph32 ], [ %69, %64 ]
  %.0528 = phi i64 [ 1, %.lr.ph32 ], [ %68, %64 ]
  %.04327 = phi i64 [ 0, %.lr.ph32 ], [ %.144, %64 ]
  %65 = icmp slt i32 %.03730, 0
  %66 = select i1 %65, i64 %.0528, i64 0
  %.144 = add i64 %.04327, %66
  %.138 = call i32 @llvm.abs.i32(i32 %.03730, i1 true)
  %67 = zext nneg i32 %.138 to i64
  %68 = shl i64 %.0528, 1
  %69 = add i64 %.329, 1
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %67
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %._crit_edge33, label %64, !llvm.loop !13

._crit_edge33:                                    ; preds = %64
  %split34 = phi i64 [ %.144, %64 ]
  %split35 = phi i64 [ %69, %64 ]
  br label %70

70:                                               ; preds = %._crit_edge33, %63
  %.043.lcssa = phi i64 [ %split34, %._crit_edge33 ], [ 0, %63 ]
  %.3.lcssa = phi i64 [ %split35, %._crit_edge33 ], [ 0, %63 ]
  %71 = trunc i64 %.043.lcssa to i32
  %72 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04237
  store i32 %71, ptr %72, align 4
  %73 = trunc i64 %.3.lcssa to i8
  %74 = getelementptr inbounds nuw i8, ptr %7, i64 %.04237
  store i8 %73, ptr %74, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.04536)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.03938)
  br label %75

75:                                               ; preds = %70, %60
  %.146 = phi i64 [ %spec.select, %70 ], [ %.04536, %60 ]
  %.140 = phi i64 [ %.241, %70 ], [ %.03938, %60 ]
  %76 = add nuw nsw i64 %.04237, 1
  %exitcond80 = icmp ne i64 %76, 256
  br i1 %exitcond80, label %57, label %77, !llvm.loop !14

77:                                               ; preds = %75
  %.045.lcssa = phi i64 [ %.146, %75 ]
  %.039.lcssa = phi i64 [ %.140, %75 ]
  %78 = icmp ugt i64 %.039.lcssa, 32
  br i1 %78, label %79, label %82

79:                                               ; preds = %77
  %80 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %81 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %80)
  call void @exit(i32 noundef 1) #11
  unreachable

82:                                               ; preds = %77
  %83 = icmp eq i64 %.045.lcssa, 0
  br i1 %83, label %85, label %.preheader3

.preheader3:                                      ; preds = %82
  %84 = icmp ult i64 0, %1
  br i1 %84, label %.lr.ph55, label %125

.lr.ph55:                                         ; preds = %.preheader3
  br label %88

85:                                               ; preds = %82
  %86 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %87 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %86)
  call void @exit(i32 noundef 1) #11
  unreachable

88:                                               ; preds = %.lr.ph55, %122
  %.0154 = phi i32 [ -1, %.lr.ph55 ], [ %.1.lcssa, %122 ]
  %.1653 = phi i64 [ 0, %.lr.ph55 ], [ %124, %122 ]
  %.02452 = phi i8 [ 0, %.lr.ph55 ], [ %.125.lcssa, %122 ]
  %.02851 = phi i64 [ 0, %.lr.ph55 ], [ %.129.lcssa, %122 ]
  %.13450 = phi ptr [ %0, %.lr.ph55 ], [ %123, %122 ]
  %89 = load i8, ptr %.13450, align 1
  %90 = zext i8 %89 to i64
  %91 = getelementptr inbounds nuw i8, ptr %7, i64 %90
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %92 to i32
  %94 = add nsw i32 %93, -1
  %95 = shl nuw i32 1, %94
  %96 = sext i32 %95 to i64
  %97 = zext i8 %92 to i64
  %98 = icmp ult i64 0, %97
  br i1 %98, label %.lr.ph45, label %122

.lr.ph45:                                         ; preds = %88
  br label %99

99:                                               ; preds = %.lr.ph45, %112
  %.143 = phi i32 [ %.0154, %.lr.ph45 ], [ %.2, %112 ]
  %.442 = phi i64 [ 0, %.lr.ph45 ], [ %119, %112 ]
  %.01541 = phi i64 [ %96, %.lr.ph45 ], [ %118, %112 ]
  %.12540 = phi i8 [ %.02452, %.lr.ph45 ], [ %.327, %112 ]
  %.12939 = phi i64 [ %.02851, %.lr.ph45 ], [ %.230, %112 ]
  %100 = phi i8 [ %89, %.lr.ph45 ], [ %.pre-phi.in, %112 ]
  %101 = icmp eq i32 %.143, 7
  br i1 %101, label %102, label %109

102:                                              ; preds = %99
  %103 = getelementptr inbounds nuw i8, ptr %11, i64 %.12939
  store i8 %.12540, ptr %103, align 1
  %104 = add i64 %.12939, 1
  %105 = icmp eq i64 %104, %1
  br i1 %105, label %106, label %._crit_edge

._crit_edge:                                      ; preds = %102
  %.pre1 = load i8, ptr %.13450, align 1
  br label %112

106:                                              ; preds = %102
  %107 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %108 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %107)
  call void @exit(i32 noundef 1) #11
  unreachable

109:                                              ; preds = %99
  %110 = add nsw i32 %.143, 1
  %111 = shl i8 %.12540, 1
  br label %112

112:                                              ; preds = %109, %._crit_edge
  %.pre-phi.in = phi i8 [ %.pre1, %._crit_edge ], [ %100, %109 ]
  %.230 = phi i64 [ %104, %._crit_edge ], [ %.12939, %109 ]
  %.226 = phi i8 [ 0, %._crit_edge ], [ %111, %109 ]
  %.2 = phi i32 [ 0, %._crit_edge ], [ %110, %109 ]
  %.pre-phi = zext i8 %.pre-phi.in to i64
  %113 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.pre-phi
  %114 = load i32, ptr %113, align 4
  %115 = zext i32 %114 to i64
  %116 = and i64 %.01541, %115
  %.not5 = icmp ne i64 %116, 0
  %117 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %117
  %118 = lshr i64 %.01541, 1
  %119 = add nuw nsw i64 %.442, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  %120 = zext i8 %.pre to i64
  %121 = icmp samesign ult i64 %119, %120
  br i1 %121, label %99, label %._crit_edge46, !llvm.loop !15

._crit_edge46:                                    ; preds = %112
  %split47 = phi i64 [ %.230, %112 ]
  %split48 = phi i8 [ %.327, %112 ]
  %split49 = phi i32 [ %.2, %112 ]
  br label %122

122:                                              ; preds = %._crit_edge46, %88
  %.129.lcssa = phi i64 [ %split47, %._crit_edge46 ], [ %.02851, %88 ]
  %.125.lcssa = phi i8 [ %split48, %._crit_edge46 ], [ %.02452, %88 ]
  %.1.lcssa = phi i32 [ %split49, %._crit_edge46 ], [ %.0154, %88 ]
  %123 = getelementptr inbounds nuw i8, ptr %.13450, i64 1
  %124 = add nuw i64 %.1653, 1
  %exitcond81 = icmp ne i64 %124, %1
  br i1 %exitcond81, label %88, label %._crit_edge56, !llvm.loop !16

._crit_edge56:                                    ; preds = %122
  %split57 = phi i64 [ %.129.lcssa, %122 ]
  %split58 = phi i8 [ %.125.lcssa, %122 ]
  %split59 = phi i32 [ %.1.lcssa, %122 ]
  br label %125

125:                                              ; preds = %._crit_edge56, %.preheader3
  %.028.lcssa = phi i64 [ %split57, %._crit_edge56 ], [ 0, %.preheader3 ]
  %.024.lcssa = phi i8 [ %split58, %._crit_edge56 ], [ 0, %.preheader3 ]
  %.01.lcssa = phi i32 [ %split59, %._crit_edge56 ], [ -1, %.preheader3 ]
  %126 = sub nsw i32 7, %.01.lcssa
  %127 = zext i8 %.024.lcssa to i32
  %128 = shl i32 %127, %126
  %129 = trunc i32 %128 to i8
  %130 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %129, ptr %130, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %131

.preheader2:                                      ; preds = %156
  br label %158

131:                                              ; preds = %125, %156
  %.068 = phi ptr [ %9, %125 ], [ %133, %156 ]
  %.2767 = phi i64 [ 0, %125 ], [ %157, %156 ]
  %132 = trunc nuw i64 %.2767 to i8
  store i8 %132, ptr %.068, align 1
  %133 = getelementptr inbounds nuw i8, ptr %.068, i64 1
  %134 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.2767
  %135 = load i32, ptr %134, align 4
  %136 = getelementptr inbounds nuw i8, ptr %7, i64 %.2767
  %137 = load i8, ptr %136, align 1
  %138 = zext i8 %137 to i32
  %139 = or i32 %135, %138
  %.not3 = icmp eq i32 %139, 0
  br i1 %.not3, label %156, label %140

140:                                              ; preds = %131
  %141 = add nsw i32 %138, -1
  %142 = shl nuw i32 1, %141
  %143 = sext i32 %142 to i64
  %144 = zext i8 %137 to i64
  %145 = icmp ult i64 0, %144
  br i1 %145, label %.lr.ph64, label %154

.lr.ph64:                                         ; preds = %140
  br label %146

146:                                              ; preds = %.lr.ph64, %146
  %.562 = phi i64 [ 0, %.lr.ph64 ], [ %153, %146 ]
  %.11661 = phi i64 [ %143, %.lr.ph64 ], [ %152, %146 ]
  %.01960 = phi i32 [ 0, %.lr.ph64 ], [ %spec.select1, %146 ]
  %147 = shl i32 %.01960, 1
  %148 = or disjoint i32 %147, 1
  %149 = zext i32 %135 to i64
  %150 = and i64 %.11661, %149
  %.not4 = icmp eq i64 %150, 0
  %151 = add i32 %147, 2
  %spec.select1 = select i1 %.not4, i32 %148, i32 %151
  %152 = lshr i64 %.11661, 1
  %153 = add nuw nsw i64 %.562, 1
  %exitcond82 = icmp ne i64 %153, %144
  br i1 %exitcond82, label %146, label %._crit_edge65, !llvm.loop !17

._crit_edge65:                                    ; preds = %146
  %split66 = phi i32 [ %spec.select1, %146 ]
  br label %154

154:                                              ; preds = %._crit_edge65, %140
  %.019.lcssa = phi i32 [ %split66, %._crit_edge65 ], [ 0, %140 ]
  %155 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.2767
  store i32 %.019.lcssa, ptr %155, align 4
  br label %156

156:                                              ; preds = %154, %131
  %157 = add nuw nsw i64 %.2767, 1
  %exitcond83 = icmp ne i64 %157, 256
  br i1 %exitcond83, label %131, label %.preheader2, !llvm.loop !18

.preheader1:                                      ; preds = %.critedge
  br label %176

158:                                              ; preds = %.preheader2, %.critedge
  %.670 = phi i64 [ 1, %.preheader2 ], [ %175, %.critedge ]
  %159 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.670
  %160 = load i32, ptr %159, align 4
  %161 = getelementptr inbounds nuw i8, ptr %9, i64 %.670
  %162 = load i8, ptr %161, align 1
  br label %163

163:                                              ; preds = %158, %168
  %.3869 = phi i64 [ %.670, %158 ], [ %164, %168 ]
  %164 = add nsw i64 %.3869, -1
  %165 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %164
  %166 = load i32, ptr %165, align 4
  %167 = icmp ugt i32 %166, %160
  br i1 %167, label %168, label %.critedge

168:                                              ; preds = %163
  %169 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.3869
  store i32 %166, ptr %169, align 4
  %170 = getelementptr inbounds nuw i8, ptr %9, i64 %164
  %171 = load i8, ptr %170, align 1
  %172 = getelementptr inbounds nuw i8, ptr %9, i64 %.3869
  store i8 %171, ptr %172, align 1
  %.not2 = icmp eq i64 %164, 0
  br i1 %.not2, label %.critedge, label %163, !llvm.loop !19

.critedge:                                        ; preds = %163, %168
  %.38.lcssa = phi i64 [ %.3869, %163 ], [ 0, %168 ]
  %173 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %160, ptr %173, align 4
  %174 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %162, ptr %174, align 1
  %175 = add nuw nsw i64 %.670, 1
  %exitcond84 = icmp ne i64 %175, 256
  br i1 %exitcond84, label %158, label %.preheader1, !llvm.loop !20

176:                                              ; preds = %176, %.preheader1
  %.49 = phi i64 [ %180, %176 ], [ 0, %.preheader1 ]
  %177 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %178 = load i32, ptr %177, align 4
  %179 = icmp eq i32 %178, 0
  %180 = add i64 %.49, 1
  br i1 %179, label %176, label %.preheader, !llvm.loop !21

.preheader:                                       ; preds = %176
  %.49.lcssa = phi i64 [ %.49, %176 ]
  %181 = icmp ult i64 0, %1
  br i1 %181, label %.lr.ph77, label %205

.lr.ph77:                                         ; preds = %.preheader
  br label %182

182:                                              ; preds = %.lr.ph77, %201
  %.776 = phi i64 [ %.49.lcssa, %.lr.ph77 ], [ %.9, %201 ]
  %.31375 = phi i64 [ 0, %.lr.ph77 ], [ %.414, %201 ]
  %.21774 = phi i64 [ 128, %.lr.ph77 ], [ %.318, %201 ]
  %.22173 = phi i32 [ 0, %.lr.ph77 ], [ %.423, %201 ]
  %.03172 = phi ptr [ %11, %.lr.ph77 ], [ %.132, %201 ]
  %.23571 = phi ptr [ %0, %.lr.ph77 ], [ %.336, %201 ]
  %183 = shl i32 %.22173, 1
  %184 = or disjoint i32 %183, 1
  %185 = load i8, ptr %.03172, align 1
  %186 = zext i8 %185 to i64
  %187 = and i64 %.21774, %186
  %.not1 = icmp eq i64 %187, 0
  %188 = add i32 %183, 2
  %spec.select2 = select i1 %.not1, i32 %184, i32 %188
  br label %189

189:                                              ; preds = %189, %182
  %.8 = phi i64 [ %.776, %182 ], [ %193, %189 ]
  %190 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %191 = load i32, ptr %190, align 4
  %192 = icmp ult i32 %191, %spec.select2
  %193 = add i64 %.8, 1
  br i1 %192, label %189, label %194, !llvm.loop !22

194:                                              ; preds = %189
  %.8.lcssa = phi i64 [ %.8, %189 ]
  %.lcssa = phi i32 [ %191, %189 ]
  %195 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %195, label %196, label %201

196:                                              ; preds = %194
  %197 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %198 = load i8, ptr %197, align 1
  store i8 %198, ptr %.23571, align 1
  %199 = getelementptr inbounds nuw i8, ptr %.23571, i64 1
  %200 = add i64 %.31375, 1
  br label %201

201:                                              ; preds = %196, %194
  %.336 = phi ptr [ %199, %196 ], [ %.23571, %194 ]
  %.423 = phi i32 [ 0, %196 ], [ %spec.select2, %194 ]
  %.414 = phi i64 [ %200, %196 ], [ %.31375, %194 ]
  %.9 = phi i64 [ %.49.lcssa, %196 ], [ %.8.lcssa, %194 ]
  %202 = icmp ult i64 %.21774, 2
  %203 = lshr i64 %.21774, 1
  %.132.idx = zext i1 %202 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.03172, i64 %.132.idx
  %.318 = select i1 %202, i64 128, i64 %203
  %204 = icmp ult i64 %.414, %1
  br i1 %204, label %182, label %._crit_edge78, !llvm.loop !23

._crit_edge78:                                    ; preds = %201
  br label %205

205:                                              ; preds = %._crit_edge78, %.preheader
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
  %10 = shl i64 %8, 32
  br label %11

.._crit_edge_crit_edge:                           ; preds = %37
  %split6 = phi i32 [ %.0, %37 ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %4
  %.01.lcssa = phi i32 [ %split6, %.._crit_edge_crit_edge ], [ %3, %4 ]
  %.pre = shl i64 %8, 32
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
  %sext = shl i64 %8, 32
  %27 = ashr exact i64 %sext, 29
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
  %.not = icmp sgt i32 %.0, %9
  br i1 %.not, label %.._crit_edge_crit_edge, label %11, !llvm.loop !24

split:                                            ; preds = %26
  %.01.lcssa1 = phi i32 [ %.014, %26 ]
  br label %41

41:                                               ; preds = %split, %._crit_edge
  %.012 = phi i32 [ %.01.lcssa1, %split ], [ %.01.lcssa, %._crit_edge ]
  %sext1.pre-phi = phi i64 [ %10, %split ], [ %.pre, %._crit_edge ]
  %42 = ashr exact i64 %sext1.pre-phi, 32
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
  %exitcond = icmp ne i32 %9, %0
  br i1 %exitcond, label %6, label %.loopexit, !llvm.loop !25

6:                                                ; preds = %.preheader, %5
  %.011 = phi i32 [ 1, %.preheader ], [ %9, %5 ]
  %7 = load ptr, ptr %4, align 8
  %8 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(4) @.str.4) #10
  %.not = icmp eq i32 %8, 0
  %9 = add i32 %.011, 1
  br i1 %.not, label %.loopexit, label %5

.loopexit:                                        ; preds = %5, %6
  %.not1.ph = phi i1 [ false, %6 ], [ true, %5 ]
  br label %10

10:                                               ; preds = %.loopexit, %2
  %.not1 = phi i1 [ true, %2 ], [ %.not1.ph, %.loopexit ]
  %11 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %12

12:                                               ; preds = %10, %12
  %.122 = phi i32 [ 0, %10 ], [ %13, %12 ]
  call void @compdecomp(ptr noundef %11, i64 noundef 10000000)
  %13 = add nuw nsw i32 %.122, 1
  %exitcond3 = icmp ne i32 %13, 30
  br i1 %exitcond3, label %12, label %14, !llvm.loop !26

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
