; ModuleID = 'results\paper_full\CoyoteBench_huffbench\round_008\output.ll'
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
  %exitcond.not15 = icmp eq i64 0, %1
  br i1 %exitcond.not15, label %.preheader6.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %12

..preheader6.preheader_crit_edge:                 ; preds = %12
  br label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %..preheader6.preheader_crit_edge, %2
  br label %20

12:                                               ; preds = %.lr.ph, %12
  %.0217 = phi i64 [ 0, %.lr.ph ], [ %19, %12 ]
  %.03316 = phi ptr [ %0, %.lr.ph ], [ %18, %12 ]
  %13 = load i8, ptr %.03316, align 1
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %14
  %16 = load i64, ptr %15, align 8
  %17 = add i64 %16, 1
  store i64 %17, ptr %15, align 8
  %18 = getelementptr inbounds nuw i8, ptr %.03316, i64 1
  %19 = add i64 %.0217, 1
  %exitcond.not = icmp eq i64 %19, %1
  br i1 %exitcond.not, label %..preheader6.preheader_crit_edge, label %12, !llvm.loop !9

.preheader5.preheader:                            ; preds = %.preheader6
  %.010.lcssa = phi i64 [ %.111, %.preheader6 ]
  %.not21 = icmp eq i64 %.010.lcssa, 0
  br i1 %.not21, label %.preheader4.preheader, label %.lr.ph23

.lr.ph23:                                         ; preds = %.preheader5.preheader
  br label %.preheader5

20:                                               ; preds = %.preheader6.preheader, %.preheader6
  %.1320 = phi i64 [ 0, %.preheader6.preheader ], [ %26, %.preheader6 ]
  %.01019 = phi i64 [ 0, %.preheader6.preheader ], [ %.111, %.preheader6 ]
  %21 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.1320
  %22 = load i64, ptr %21, align 8
  %.not8 = icmp eq i64 %22, 0
  br i1 %.not8, label %.preheader6, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.01019
  store i64 %.1320, ptr %24, align 8
  %25 = add i64 %.01019, 1
  br label %.preheader6

.preheader6:                                      ; preds = %23, %20
  %.111 = phi i64 [ %25, %23 ], [ %.01019, %20 ]
  %26 = add nuw nsw i64 %.1320, 1
  %exitcond13.not = icmp eq i64 %26, 256
  br i1 %exitcond13.not, label %.preheader5.preheader, label %20, !llvm.loop !10

.preheader5..preheader4.preheader_crit_edge:      ; preds = %.preheader5
  br label %.preheader4.preheader

.preheader4.preheader:                            ; preds = %.preheader5..preheader4.preheader_crit_edge, %.preheader5.preheader
  %27 = icmp ugt i64 %.010.lcssa, 1
  br i1 %27, label %.lr.ph25, label %50

.lr.ph25:                                         ; preds = %.preheader4.preheader
  br label %.preheader4

.preheader5:                                      ; preds = %.lr.ph23, %.preheader5
  %.2422 = phi i64 [ %.010.lcssa, %.lr.ph23 ], [ %30, %.preheader5 ]
  %28 = trunc i64 %.010.lcssa to i32
  %29 = trunc i64 %.2422 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %28, i32 noundef %29)
  %30 = add i64 %.2422, -1
  %.not = icmp eq i64 %30, 0
  br i1 %.not, label %.preheader5..preheader4.preheader_crit_edge, label %.preheader5, !llvm.loop !11

.preheader4:                                      ; preds = %.lr.ph25, %.preheader4
  %.21224 = phi i64 [ %.010.lcssa, %.lr.ph25 ], [ %31, %.preheader4 ]
  %31 = add i64 %.21224, -1
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
  %42 = add i64 %.21224, 255
  %43 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %42
  store i64 %41, ptr %43, align 8
  %44 = trunc i64 %42 to i32
  %45 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %32
  store i32 %44, ptr %45, align 4
  %46 = trunc i64 %.21224 to i32
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

53:                                               ; preds = %50, %69
  %.03938 = phi i64 [ 0, %50 ], [ %.140, %69 ]
  %.04237 = phi i64 [ 0, %50 ], [ %70, %69 ]
  %.04536 = phi i64 [ 0, %50 ], [ %.146, %69 ]
  %54 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04237
  %55 = load i64, ptr %54, align 8
  %.not6 = icmp eq i64 %55, 0
  br i1 %.not6, label %56, label %.preheader7.preheader

.preheader7.preheader:                            ; preds = %53
  %.037.in26 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.04237
  %.03727 = load i32, ptr %.037.in26, align 4
  %.not728 = icmp eq i32 %.03727, 0
  br i1 %.not728, label %64, label %.lr.ph33

.lr.ph33:                                         ; preds = %.preheader7.preheader
  br label %.preheader7

56:                                               ; preds = %53
  %57 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04237
  store i32 0, ptr %57, align 4
  %58 = getelementptr inbounds nuw i8, ptr %7, i64 %.04237
  store i8 0, ptr %58, align 1
  br label %69

.preheader7:                                      ; preds = %.lr.ph33, %.preheader7
  %.03732 = phi i32 [ %.03727, %.lr.ph33 ], [ %.037, %.preheader7 ]
  %.331 = phi i64 [ 0, %.lr.ph33 ], [ %63, %.preheader7 ]
  %.0530 = phi i64 [ 1, %.lr.ph33 ], [ %62, %.preheader7 ]
  %.04329 = phi i64 [ 0, %.lr.ph33 ], [ %.144, %.preheader7 ]
  %59 = icmp slt i32 %.03732, 0
  %60 = select i1 %59, i64 %.0530, i64 0
  %.144 = add i64 %.04329, %60
  %.138 = call i32 @llvm.abs.i32(i32 %.03732, i1 true)
  %61 = zext nneg i32 %.138 to i64
  %62 = shl i64 %.0530, 1
  %63 = add i64 %.331, 1
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %61
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %.preheader7._crit_edge, label %.preheader7, !llvm.loop !13

.preheader7._crit_edge:                           ; preds = %.preheader7
  %split34 = phi i64 [ %.144, %.preheader7 ]
  %split35 = phi i64 [ %63, %.preheader7 ]
  br label %64

64:                                               ; preds = %.preheader7._crit_edge, %.preheader7.preheader
  %.043.lcssa = phi i64 [ %split34, %.preheader7._crit_edge ], [ 0, %.preheader7.preheader ]
  %.3.lcssa = phi i64 [ %split35, %.preheader7._crit_edge ], [ 0, %.preheader7.preheader ]
  %65 = trunc i64 %.043.lcssa to i32
  %66 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04237
  store i32 %65, ptr %66, align 4
  %67 = trunc i64 %.3.lcssa to i8
  %68 = getelementptr inbounds nuw i8, ptr %7, i64 %.04237
  store i8 %67, ptr %68, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.04536)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.03938)
  br label %69

69:                                               ; preds = %64, %56
  %.146 = phi i64 [ %spec.select, %64 ], [ %.04536, %56 ]
  %.140 = phi i64 [ %.241, %64 ], [ %.03938, %56 ]
  %70 = add nuw nsw i64 %.04237, 1
  %exitcond14.not = icmp eq i64 %70, 256
  br i1 %exitcond14.not, label %71, label %53, !llvm.loop !14

71:                                               ; preds = %69
  %.045.lcssa = phi i64 [ %.146, %69 ]
  %.039.lcssa = phi i64 [ %.140, %69 ]
  %72 = icmp ugt i64 %.039.lcssa, 32
  br i1 %72, label %73, label %76

73:                                               ; preds = %71
  %74 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %75 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %74)
  call void @exit(i32 noundef 1) #11
  unreachable

76:                                               ; preds = %71
  %77 = icmp eq i64 %.045.lcssa, 0
  br i1 %77, label %78, label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %76
  %exitcond15.not50 = icmp eq i64 0, %1
  br i1 %exitcond15.not50, label %117, label %.lr.ph56

.lr.ph56:                                         ; preds = %.preheader3.preheader
  br label %81

78:                                               ; preds = %76
  %79 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %80 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %79)
  call void @exit(i32 noundef 1) #11
  unreachable

81:                                               ; preds = %.lr.ph56, %.preheader3
  %.0155 = phi i32 [ -1, %.lr.ph56 ], [ %.1.lcssa, %.preheader3 ]
  %.1654 = phi i64 [ 0, %.lr.ph56 ], [ %116, %.preheader3 ]
  %.02453 = phi i8 [ 0, %.lr.ph56 ], [ %.125.lcssa, %.preheader3 ]
  %.02852 = phi i64 [ 0, %.lr.ph56 ], [ %.129.lcssa, %.preheader3 ]
  %.13451 = phi ptr [ %0, %.lr.ph56 ], [ %115, %.preheader3 ]
  %82 = load i8, ptr %.13451, align 1
  %83 = zext i8 %82 to i64
  %84 = getelementptr inbounds nuw i8, ptr %7, i64 %83
  %85 = load i8, ptr %84, align 1
  %86 = zext i8 %85 to i32
  %87 = add nsw i32 %86, -1
  %88 = shl nuw i32 1, %87
  %89 = sext i32 %88 to i64
  %90 = zext i8 %85 to i64
  %91 = icmp samesign ult i64 0, %90
  br i1 %91, label %.lr.ph45, label %.preheader3

.lr.ph45:                                         ; preds = %81
  br label %92

92:                                               ; preds = %.lr.ph45, %105
  %.143 = phi i32 [ %.0155, %.lr.ph45 ], [ %.2, %105 ]
  %.442 = phi i64 [ 0, %.lr.ph45 ], [ %112, %105 ]
  %.01541 = phi i64 [ %89, %.lr.ph45 ], [ %111, %105 ]
  %.12540 = phi i8 [ %.02453, %.lr.ph45 ], [ %.327, %105 ]
  %.12939 = phi i64 [ %.02852, %.lr.ph45 ], [ %.230, %105 ]
  %93 = phi i8 [ %82, %.lr.ph45 ], [ %.pre-phi.in, %105 ]
  %94 = icmp eq i32 %.143, 7
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = getelementptr inbounds nuw i8, ptr %11, i64 %.12939
  store i8 %.12540, ptr %96, align 1
  %97 = add i64 %.12939, 1
  %98 = icmp eq i64 %97, %1
  br i1 %98, label %99, label %._crit_edge

._crit_edge:                                      ; preds = %95
  %.pre1 = load i8, ptr %.13451, align 1
  br label %105

99:                                               ; preds = %95
  %100 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %101 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %100)
  call void @exit(i32 noundef 1) #11
  unreachable

102:                                              ; preds = %92
  %103 = add nsw i32 %.143, 1
  %104 = shl i8 %.12540, 1
  br label %105

105:                                              ; preds = %102, %._crit_edge
  %.pre-phi.in = phi i8 [ %.pre1, %._crit_edge ], [ %93, %102 ]
  %.230 = phi i64 [ %97, %._crit_edge ], [ %.12939, %102 ]
  %.226 = phi i8 [ 0, %._crit_edge ], [ %104, %102 ]
  %.2 = phi i32 [ 0, %._crit_edge ], [ %103, %102 ]
  %.pre-phi = zext i8 %.pre-phi.in to i64
  %106 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.pre-phi
  %107 = load i32, ptr %106, align 4
  %108 = zext i32 %107 to i64
  %109 = and i64 %.01541, %108
  %.not5 = icmp ne i64 %109, 0
  %110 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %110
  %111 = lshr i64 %.01541, 1
  %112 = add nuw nsw i64 %.442, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  %113 = zext i8 %.pre to i64
  %114 = icmp samesign ult i64 %112, %113
  br i1 %114, label %92, label %._crit_edge46, !llvm.loop !15

._crit_edge46:                                    ; preds = %105
  %split47 = phi i64 [ %.230, %105 ]
  %split48 = phi i8 [ %.327, %105 ]
  %split49 = phi i32 [ %.2, %105 ]
  br label %.preheader3

.preheader3:                                      ; preds = %._crit_edge46, %81
  %.129.lcssa = phi i64 [ %split47, %._crit_edge46 ], [ %.02852, %81 ]
  %.125.lcssa = phi i8 [ %split48, %._crit_edge46 ], [ %.02453, %81 ]
  %.1.lcssa = phi i32 [ %split49, %._crit_edge46 ], [ %.0155, %81 ]
  %115 = getelementptr inbounds nuw i8, ptr %.13451, i64 1
  %116 = add i64 %.1654, 1
  %exitcond15.not = icmp eq i64 %116, %1
  br i1 %exitcond15.not, label %.preheader3._crit_edge, label %81, !llvm.loop !16

.preheader3._crit_edge:                           ; preds = %.preheader3
  %split57 = phi i64 [ %.129.lcssa, %.preheader3 ]
  %split58 = phi i8 [ %.125.lcssa, %.preheader3 ]
  %split59 = phi i32 [ %.1.lcssa, %.preheader3 ]
  br label %117

117:                                              ; preds = %.preheader3._crit_edge, %.preheader3.preheader
  %.028.lcssa = phi i64 [ %split57, %.preheader3._crit_edge ], [ 0, %.preheader3.preheader ]
  %.024.lcssa = phi i8 [ %split58, %.preheader3._crit_edge ], [ 0, %.preheader3.preheader ]
  %.01.lcssa = phi i32 [ %split59, %.preheader3._crit_edge ], [ -1, %.preheader3.preheader ]
  %118 = sub nsw i32 7, %.01.lcssa
  %119 = zext i8 %.024.lcssa to i32
  %120 = shl i32 %119, %118
  %121 = trunc i32 %120 to i8
  %122 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %121, ptr %122, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %123

.preheader2.preheader:                            ; preds = %147
  br label %149

123:                                              ; preds = %117, %147
  %.069 = phi ptr [ %9, %117 ], [ %125, %147 ]
  %.2768 = phi i64 [ 0, %117 ], [ %148, %147 ]
  %124 = trunc nuw i64 %.2768 to i8
  store i8 %124, ptr %.069, align 1
  %125 = getelementptr inbounds nuw i8, ptr %.069, i64 1
  %126 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.2768
  %127 = load i32, ptr %126, align 4
  %128 = getelementptr inbounds nuw i8, ptr %7, i64 %.2768
  %129 = load i8, ptr %128, align 1
  %130 = zext i8 %129 to i32
  %131 = or i32 %127, %130
  %.not3 = icmp eq i32 %131, 0
  br i1 %.not3, label %147, label %132

132:                                              ; preds = %123
  %133 = add nsw i32 %130, -1
  %134 = shl nuw i32 1, %133
  %135 = sext i32 %134 to i64
  %136 = zext i8 %129 to i64
  %exitcond16.not60 = icmp eq i64 0, %136
  br i1 %exitcond16.not60, label %145, label %.lr.ph65

.lr.ph65:                                         ; preds = %132
  br label %137

137:                                              ; preds = %.lr.ph65, %137
  %.563 = phi i64 [ 0, %.lr.ph65 ], [ %144, %137 ]
  %.11662 = phi i64 [ %135, %.lr.ph65 ], [ %143, %137 ]
  %.01961 = phi i32 [ 0, %.lr.ph65 ], [ %spec.select1, %137 ]
  %138 = shl i32 %.01961, 1
  %139 = or disjoint i32 %138, 1
  %140 = zext i32 %127 to i64
  %141 = and i64 %.11662, %140
  %.not4 = icmp eq i64 %141, 0
  %142 = add i32 %138, 2
  %spec.select1 = select i1 %.not4, i32 %139, i32 %142
  %143 = lshr i64 %.11662, 1
  %144 = add nuw nsw i64 %.563, 1
  %exitcond16.not = icmp eq i64 %144, %136
  br i1 %exitcond16.not, label %._crit_edge66, label %137, !llvm.loop !17

._crit_edge66:                                    ; preds = %137
  %split67 = phi i32 [ %spec.select1, %137 ]
  br label %145

145:                                              ; preds = %._crit_edge66, %132
  %.019.lcssa = phi i32 [ %split67, %._crit_edge66 ], [ 0, %132 ]
  %146 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.2768
  store i32 %.019.lcssa, ptr %146, align 4
  br label %147

147:                                              ; preds = %145, %123
  %148 = add nuw nsw i64 %.2768, 1
  %exitcond17.not = icmp eq i64 %148, 256
  br i1 %exitcond17.not, label %.preheader2.preheader, label %123, !llvm.loop !18

.preheader1.preheader:                            ; preds = %.critedge
  br label %.preheader1

149:                                              ; preds = %.preheader2.preheader, %.critedge
  %.671 = phi i64 [ 1, %.preheader2.preheader ], [ %166, %.critedge ]
  %150 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.671
  %151 = load i32, ptr %150, align 4
  %152 = getelementptr inbounds nuw i8, ptr %9, i64 %.671
  %153 = load i8, ptr %152, align 1
  br label %154

154:                                              ; preds = %149, %159
  %.3870 = phi i64 [ %.671, %149 ], [ %155, %159 ]
  %155 = add nsw i64 %.3870, -1
  %156 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %155
  %157 = load i32, ptr %156, align 4
  %158 = icmp ugt i32 %157, %151
  br i1 %158, label %159, label %.critedge

159:                                              ; preds = %154
  %160 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.3870
  store i32 %157, ptr %160, align 4
  %161 = getelementptr inbounds nuw i8, ptr %9, i64 %155
  %162 = load i8, ptr %161, align 1
  %163 = getelementptr inbounds nuw i8, ptr %9, i64 %.3870
  store i8 %162, ptr %163, align 1
  %.not2 = icmp eq i64 %155, 0
  br i1 %.not2, label %.critedge, label %154, !llvm.loop !19

.critedge:                                        ; preds = %154, %159
  %.38.lcssa = phi i64 [ %.3870, %154 ], [ 0, %159 ]
  %164 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %151, ptr %164, align 4
  %165 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %153, ptr %165, align 1
  %166 = add nuw nsw i64 %.671, 1
  %exitcond18.not = icmp eq i64 %166, 256
  br i1 %exitcond18.not, label %.preheader1.preheader, label %149, !llvm.loop !20

.preheader1:                                      ; preds = %.preheader1, %.preheader1.preheader
  %.49 = phi i64 [ %170, %.preheader1 ], [ 0, %.preheader1.preheader ]
  %167 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %168 = load i32, ptr %167, align 4
  %169 = icmp eq i32 %168, 0
  %170 = add i64 %.49, 1
  br i1 %169, label %.preheader1, label %.preheader.preheader, !llvm.loop !21

.preheader.preheader:                             ; preds = %.preheader1
  %.49.lcssa = phi i64 [ %.49, %.preheader1 ]
  %171 = icmp ult i64 0, %1
  br i1 %171, label %.lr.ph78, label %194

.lr.ph78:                                         ; preds = %.preheader.preheader
  br label %172

172:                                              ; preds = %.lr.ph78, %.preheader
  %.777 = phi i64 [ %.49.lcssa, %.lr.ph78 ], [ %.9, %.preheader ]
  %.31376 = phi i64 [ 0, %.lr.ph78 ], [ %.414, %.preheader ]
  %.21775 = phi i64 [ 128, %.lr.ph78 ], [ %.318, %.preheader ]
  %.22174 = phi i32 [ 0, %.lr.ph78 ], [ %.423, %.preheader ]
  %.03173 = phi ptr [ %11, %.lr.ph78 ], [ %.132, %.preheader ]
  %.23572 = phi ptr [ %0, %.lr.ph78 ], [ %.336, %.preheader ]
  %173 = shl i32 %.22174, 1
  %174 = or disjoint i32 %173, 1
  %175 = load i8, ptr %.03173, align 1
  %176 = zext i8 %175 to i64
  %177 = and i64 %.21775, %176
  %.not1 = icmp eq i64 %177, 0
  %178 = add i32 %173, 2
  %spec.select2 = select i1 %.not1, i32 %174, i32 %178
  br label %179

179:                                              ; preds = %179, %172
  %.8 = phi i64 [ %.777, %172 ], [ %183, %179 ]
  %180 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %181 = load i32, ptr %180, align 4
  %182 = icmp ult i32 %181, %spec.select2
  %183 = add i64 %.8, 1
  br i1 %182, label %179, label %184, !llvm.loop !22

184:                                              ; preds = %179
  %.8.lcssa = phi i64 [ %.8, %179 ]
  %.lcssa = phi i32 [ %181, %179 ]
  %185 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %185, label %186, label %.preheader

186:                                              ; preds = %184
  %187 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %188 = load i8, ptr %187, align 1
  store i8 %188, ptr %.23572, align 1
  %189 = getelementptr inbounds nuw i8, ptr %.23572, i64 1
  %190 = add nuw i64 %.31376, 1
  br label %.preheader

.preheader:                                       ; preds = %186, %184
  %.336 = phi ptr [ %189, %186 ], [ %.23572, %184 ]
  %.423 = phi i32 [ 0, %186 ], [ %spec.select2, %184 ]
  %.414 = phi i64 [ %190, %186 ], [ %.31376, %184 ]
  %.9 = phi i64 [ %.49.lcssa, %186 ], [ %.8.lcssa, %184 ]
  %191 = icmp ult i64 %.21775, 2
  %192 = lshr i64 %.21775, 1
  %.132.idx = zext i1 %191 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.03173, i64 %.132.idx
  %.318 = select i1 %191, i64 128, i64 %192
  %193 = icmp ult i64 %.414, %1
  br i1 %193, label %172, label %.preheader._crit_edge, !llvm.loop !23

.preheader._crit_edge:                            ; preds = %.preheader
  br label %194

194:                                              ; preds = %.preheader._crit_edge, %.preheader.preheader
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
  br i1 %36, label %.._crit_edge_crit_edge, label %37

37:                                               ; preds = %26
  %38 = sext i32 %.014 to i64
  %39 = getelementptr [8 x i8], ptr %1, i64 %38
  %40 = getelementptr i8, ptr %39, i64 -8
  store i64 %33, ptr %40, align 8
  %.not = icmp sgt i32 %.0, %10
  br i1 %.not, label %.._crit_edge_crit_edge6, label %11, !llvm.loop !24

.._crit_edge_crit_edge:                           ; preds = %26
  %split = phi i32 [ %.014, %26 ]
  br label %._crit_edge

.._crit_edge_crit_edge6:                          ; preds = %37
  %split7 = phi i32 [ %.0, %37 ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge6, %.._crit_edge_crit_edge, %4
  %.01.lcssa = phi i32 [ %split, %.._crit_edge_crit_edge ], [ %split7, %.._crit_edge_crit_edge6 ], [ %3, %4 ]
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
  %.011 = phi i32 [ 1, %.preheader ], [ %.01, %5 ]
  %7 = load ptr, ptr %4, align 8
  %8 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(4) @.str.4) #10
  %.not = icmp eq i32 %8, 0
  %9 = add nuw i32 %.011, 1
  br i1 %.not, label %.loopexit.loopexit, label %5

.loopexit.loopexit:                               ; preds = %5, %6
  %.not1.ph = phi i1 [ true, %5 ], [ false, %6 ]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %2
  %.not1 = phi i1 [ true, %2 ], [ %.not1.ph, %.loopexit.loopexit ]
  %10 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %11

11:                                               ; preds = %.loopexit, %11
  %.122 = phi i32 [ 0, %.loopexit ], [ %12, %11 ]
  call void @compdecomp(ptr noundef %10, i64 noundef 10000000)
  %12 = add nuw nsw i32 %.122, 1
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
define internal range(i64 -31, 32) i64 @random4() #0 {
  %1 = load i32, ptr @seed, align 4
  %2 = xor i32 %1, 123459876
  %3 = sdiv i32 %2, 127773
  %.neg = mul nsw i32 %3, -127773
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
