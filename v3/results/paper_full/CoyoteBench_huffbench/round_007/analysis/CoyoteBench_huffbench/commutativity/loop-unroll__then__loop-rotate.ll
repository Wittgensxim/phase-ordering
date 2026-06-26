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
  %exitcond.not8 = icmp eq i64 0, %1
  br i1 %exitcond.not8, label %.preheader6.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %12

..preheader6.preheader_crit_edge:                 ; preds = %12
  br label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %..preheader6.preheader_crit_edge, %2
  br label %20

12:                                               ; preds = %.lr.ph, %12
  %.0210 = phi i64 [ 0, %.lr.ph ], [ %19, %12 ]
  %.0339 = phi ptr [ %0, %.lr.ph ], [ %18, %12 ]
  %13 = load i8, ptr %.0339, align 1
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %14
  %16 = load i64, ptr %15, align 8
  %17 = add i64 %16, 1
  store i64 %17, ptr %15, align 8
  %18 = getelementptr inbounds nuw i8, ptr %.0339, i64 1
  %19 = add i64 %.0210, 1
  %exitcond.not = icmp eq i64 %19, %1
  br i1 %exitcond.not, label %..preheader6.preheader_crit_edge, label %12, !llvm.loop !9

.preheader5.preheader:                            ; preds = %.preheader6
  %.010.lcssa = phi i64 [ %.111.1, %.preheader6 ]
  %.not14 = icmp eq i64 %.010.lcssa, 0
  br i1 %.not14, label %.preheader4.preheader, label %.lr.ph16

.lr.ph16:                                         ; preds = %.preheader5.preheader
  br label %.preheader5

20:                                               ; preds = %.preheader6.preheader, %.preheader6
  %.1313 = phi i64 [ 0, %.preheader6.preheader ], [ %33, %.preheader6 ]
  %.01012 = phi i64 [ 0, %.preheader6.preheader ], [ %.111.1, %.preheader6 ]
  %21 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.1313
  %22 = load i64, ptr %21, align 8
  %.not8 = icmp eq i64 %22, 0
  br i1 %.not8, label %.preheader6.1, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.01012
  store i64 %.1313, ptr %24, align 8
  %25 = add i64 %.01012, 1
  br label %.preheader6.1

.preheader6.1:                                    ; preds = %23, %20
  %.111 = phi i64 [ %25, %23 ], [ %.01012, %20 ]
  %26 = add nuw nsw i64 %.1313, 1
  br label %27

27:                                               ; preds = %.preheader6.1
  %28 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %26
  %29 = load i64, ptr %28, align 8
  %.not8.1 = icmp eq i64 %29, 0
  br i1 %.not8.1, label %.preheader6, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.111
  store i64 %26, ptr %31, align 8
  %32 = add i64 %.111, 1
  br label %.preheader6

.preheader6:                                      ; preds = %30, %27
  %.111.1 = phi i64 [ %32, %30 ], [ %.111, %27 ]
  %33 = add nuw nsw i64 %.1313, 2
  %exitcond13.not = icmp eq i64 %33, 256
  br i1 %exitcond13.not, label %.preheader5.preheader, label %20, !llvm.loop !10

.preheader5..preheader4.preheader_crit_edge:      ; preds = %.preheader5
  br label %.preheader4.preheader

.preheader4.preheader:                            ; preds = %.preheader5..preheader4.preheader_crit_edge, %.preheader5.preheader
  %34 = icmp ugt i64 %.010.lcssa, 1
  br i1 %34, label %.lr.ph18, label %57

.lr.ph18:                                         ; preds = %.preheader4.preheader
  br label %.preheader4

.preheader5:                                      ; preds = %.lr.ph16, %.preheader5
  %.2415 = phi i64 [ %.010.lcssa, %.lr.ph16 ], [ %37, %.preheader5 ]
  %35 = trunc i64 %.010.lcssa to i32
  %36 = trunc i64 %.2415 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %35, i32 noundef %36)
  %37 = add i64 %.2415, -1
  %.not = icmp eq i64 %37, 0
  br i1 %.not, label %.preheader5..preheader4.preheader_crit_edge, label %.preheader5, !llvm.loop !11

.preheader4:                                      ; preds = %.lr.ph18, %.preheader4
  %.21217 = phi i64 [ %.010.lcssa, %.lr.ph18 ], [ %38, %.preheader4 ]
  %38 = add i64 %.21217, -1
  %39 = load i64, ptr %4, align 16
  %40 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %38
  %41 = load i64, ptr %40, align 8
  store i64 %41, ptr %4, align 16
  %42 = trunc i64 %38 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %42, i32 noundef 1)
  %43 = load i64, ptr %4, align 16
  %44 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %43
  %45 = load i64, ptr %44, align 8
  %46 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %39
  %47 = load i64, ptr %46, align 8
  %48 = add i64 %45, %47
  %49 = add i64 %.21217, 255
  %50 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %49
  store i64 %48, ptr %50, align 8
  %51 = trunc i64 %49 to i32
  %52 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %39
  store i32 %51, ptr %52, align 4
  %53 = trunc i64 %.21217 to i32
  %54 = sub i32 -255, %53
  %55 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %43
  store i32 %54, ptr %55, align 4
  store i64 %49, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %42, i32 noundef 1)
  %56 = icmp ugt i64 %38, 1
  br i1 %56, label %.preheader4, label %.preheader4._crit_edge, !llvm.loop !12

.preheader4._crit_edge:                           ; preds = %.preheader4
  %split = phi i64 [ %38, %.preheader4 ]
  br label %57

57:                                               ; preds = %.preheader4._crit_edge, %.preheader4.preheader
  %.212.lcssa = phi i64 [ %split, %.preheader4._crit_edge ], [ %.010.lcssa, %.preheader4.preheader ]
  %58 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %59 = getelementptr inbounds nuw i8, ptr %58, i64 1024
  store i32 0, ptr %59, align 4
  br label %60

60:                                               ; preds = %57, %77
  %.03932 = phi i64 [ 0, %57 ], [ %.140, %77 ]
  %.04231 = phi i64 [ 0, %57 ], [ %78, %77 ]
  %.04530 = phi i64 [ 0, %57 ], [ %.146, %77 ]
  %61 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04231
  %62 = load i64, ptr %61, align 8
  %.not6 = icmp eq i64 %62, 0
  br i1 %.not6, label %63, label %.preheader7

.preheader7:                                      ; preds = %60
  %.037.in19 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.04231
  %.03720 = load i32, ptr %.037.in19, align 4
  %.not721 = icmp eq i32 %.03720, 0
  br i1 %.not721, label %72, label %.lr.ph26

.lr.ph26:                                         ; preds = %.preheader7
  br label %66

63:                                               ; preds = %60
  %64 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04231
  store i32 0, ptr %64, align 4
  %65 = getelementptr inbounds nuw i8, ptr %7, i64 %.04231
  store i8 0, ptr %65, align 1
  br label %77

66:                                               ; preds = %.lr.ph26, %66
  %.03725 = phi i32 [ %.03720, %.lr.ph26 ], [ %.037, %66 ]
  %.324 = phi i64 [ 0, %.lr.ph26 ], [ %71, %66 ]
  %.0523 = phi i64 [ 1, %.lr.ph26 ], [ %70, %66 ]
  %.04322 = phi i64 [ 0, %.lr.ph26 ], [ %.144, %66 ]
  %67 = icmp slt i32 %.03725, 0
  %68 = select i1 %67, i64 %.0523, i64 0
  %.144 = add i64 %.04322, %68
  %.138 = call i32 @llvm.abs.i32(i32 %.03725, i1 true)
  %69 = zext nneg i32 %.138 to i64
  %70 = shl i64 %.0523, 1
  %71 = add i64 %.324, 1
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %69
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %._crit_edge27, label %66, !llvm.loop !13

._crit_edge27:                                    ; preds = %66
  %split28 = phi i64 [ %.144, %66 ]
  %split29 = phi i64 [ %71, %66 ]
  br label %72

72:                                               ; preds = %._crit_edge27, %.preheader7
  %.043.lcssa = phi i64 [ %split28, %._crit_edge27 ], [ 0, %.preheader7 ]
  %.3.lcssa = phi i64 [ %split29, %._crit_edge27 ], [ 0, %.preheader7 ]
  %73 = trunc i64 %.043.lcssa to i32
  %74 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04231
  store i32 %73, ptr %74, align 4
  %75 = trunc i64 %.3.lcssa to i8
  %76 = getelementptr inbounds nuw i8, ptr %7, i64 %.04231
  store i8 %75, ptr %76, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.04530)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.03932)
  br label %77

77:                                               ; preds = %72, %63
  %.146 = phi i64 [ %spec.select, %72 ], [ %.04530, %63 ]
  %.140 = phi i64 [ %.241, %72 ], [ %.03932, %63 ]
  %78 = add nuw nsw i64 %.04231, 1
  %exitcond14.not = icmp eq i64 %78, 256
  br i1 %exitcond14.not, label %79, label %60, !llvm.loop !14

79:                                               ; preds = %77
  %.045.lcssa = phi i64 [ %.146, %77 ]
  %.039.lcssa = phi i64 [ %.140, %77 ]
  %80 = icmp ugt i64 %.039.lcssa, 32
  br i1 %80, label %81, label %84

81:                                               ; preds = %79
  %82 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %83 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %82)
  call void @exit(i32 noundef 1) #11
  unreachable

84:                                               ; preds = %79
  %85 = icmp eq i64 %.045.lcssa, 0
  br i1 %85, label %86, label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %84
  %exitcond15.not44 = icmp eq i64 0, %1
  br i1 %exitcond15.not44, label %125, label %.lr.ph50

.lr.ph50:                                         ; preds = %.preheader3.preheader
  br label %89

86:                                               ; preds = %84
  %87 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %88 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %87)
  call void @exit(i32 noundef 1) #11
  unreachable

89:                                               ; preds = %.lr.ph50, %.preheader3
  %.0149 = phi i32 [ -1, %.lr.ph50 ], [ %.1.lcssa, %.preheader3 ]
  %.1648 = phi i64 [ 0, %.lr.ph50 ], [ %124, %.preheader3 ]
  %.02447 = phi i8 [ 0, %.lr.ph50 ], [ %.125.lcssa, %.preheader3 ]
  %.02846 = phi i64 [ 0, %.lr.ph50 ], [ %.129.lcssa, %.preheader3 ]
  %.13445 = phi ptr [ %0, %.lr.ph50 ], [ %123, %.preheader3 ]
  %90 = load i8, ptr %.13445, align 1
  %91 = zext i8 %90 to i64
  %92 = getelementptr inbounds nuw i8, ptr %7, i64 %91
  %93 = load i8, ptr %92, align 1
  %94 = zext i8 %93 to i32
  %95 = add nsw i32 %94, -1
  %96 = shl nuw i32 1, %95
  %97 = sext i32 %96 to i64
  %98 = zext i8 %93 to i64
  %99 = icmp samesign ult i64 0, %98
  br i1 %99, label %.lr.ph39, label %.preheader3

.lr.ph39:                                         ; preds = %89
  br label %100

100:                                              ; preds = %.lr.ph39, %113
  %.137 = phi i32 [ %.0149, %.lr.ph39 ], [ %.2, %113 ]
  %.436 = phi i64 [ 0, %.lr.ph39 ], [ %120, %113 ]
  %.01535 = phi i64 [ %97, %.lr.ph39 ], [ %119, %113 ]
  %.12534 = phi i8 [ %.02447, %.lr.ph39 ], [ %.327, %113 ]
  %.12933 = phi i64 [ %.02846, %.lr.ph39 ], [ %.230, %113 ]
  %101 = phi i8 [ %90, %.lr.ph39 ], [ %.pre-phi.in, %113 ]
  %102 = icmp eq i32 %.137, 7
  br i1 %102, label %103, label %110

103:                                              ; preds = %100
  %104 = getelementptr inbounds nuw i8, ptr %11, i64 %.12933
  store i8 %.12534, ptr %104, align 1
  %105 = add i64 %.12933, 1
  %106 = icmp eq i64 %105, %1
  br i1 %106, label %107, label %._crit_edge

._crit_edge:                                      ; preds = %103
  %.pre1 = load i8, ptr %.13445, align 1
  br label %113

107:                                              ; preds = %103
  %108 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %109 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %108)
  call void @exit(i32 noundef 1) #11
  unreachable

110:                                              ; preds = %100
  %111 = add nsw i32 %.137, 1
  %112 = shl i8 %.12534, 1
  br label %113

113:                                              ; preds = %110, %._crit_edge
  %.pre-phi.in = phi i8 [ %.pre1, %._crit_edge ], [ %101, %110 ]
  %.230 = phi i64 [ %105, %._crit_edge ], [ %.12933, %110 ]
  %.226 = phi i8 [ 0, %._crit_edge ], [ %112, %110 ]
  %.2 = phi i32 [ 0, %._crit_edge ], [ %111, %110 ]
  %.pre-phi = zext i8 %.pre-phi.in to i64
  %114 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.pre-phi
  %115 = load i32, ptr %114, align 4
  %116 = zext i32 %115 to i64
  %117 = and i64 %.01535, %116
  %.not5 = icmp ne i64 %117, 0
  %118 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %118
  %119 = lshr i64 %.01535, 1
  %120 = add nuw nsw i64 %.436, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  %121 = zext i8 %.pre to i64
  %122 = icmp samesign ult i64 %120, %121
  br i1 %122, label %100, label %._crit_edge40, !llvm.loop !15

._crit_edge40:                                    ; preds = %113
  %split41 = phi i64 [ %.230, %113 ]
  %split42 = phi i8 [ %.327, %113 ]
  %split43 = phi i32 [ %.2, %113 ]
  br label %.preheader3

.preheader3:                                      ; preds = %._crit_edge40, %89
  %.129.lcssa = phi i64 [ %split41, %._crit_edge40 ], [ %.02846, %89 ]
  %.125.lcssa = phi i8 [ %split42, %._crit_edge40 ], [ %.02447, %89 ]
  %.1.lcssa = phi i32 [ %split43, %._crit_edge40 ], [ %.0149, %89 ]
  %123 = getelementptr inbounds nuw i8, ptr %.13445, i64 1
  %124 = add i64 %.1648, 1
  %exitcond15.not = icmp eq i64 %124, %1
  br i1 %exitcond15.not, label %.preheader3._crit_edge, label %89, !llvm.loop !16

.preheader3._crit_edge:                           ; preds = %.preheader3
  %split51 = phi i64 [ %.129.lcssa, %.preheader3 ]
  %split52 = phi i8 [ %.125.lcssa, %.preheader3 ]
  %split53 = phi i32 [ %.1.lcssa, %.preheader3 ]
  br label %125

125:                                              ; preds = %.preheader3._crit_edge, %.preheader3.preheader
  %.028.lcssa = phi i64 [ %split51, %.preheader3._crit_edge ], [ 0, %.preheader3.preheader ]
  %.024.lcssa = phi i8 [ %split52, %.preheader3._crit_edge ], [ 0, %.preheader3.preheader ]
  %.01.lcssa = phi i32 [ %split53, %.preheader3._crit_edge ], [ -1, %.preheader3.preheader ]
  %126 = sub nsw i32 7, %.01.lcssa
  %127 = zext i8 %.024.lcssa to i32
  %128 = shl i32 %127, %126
  %129 = trunc i32 %128 to i8
  %130 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %129, ptr %130, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %131

.preheader2.preheader:                            ; preds = %155
  br label %157

131:                                              ; preds = %125, %155
  %.063 = phi ptr [ %9, %125 ], [ %133, %155 ]
  %.2762 = phi i64 [ 0, %125 ], [ %156, %155 ]
  %132 = trunc nuw i64 %.2762 to i8
  store i8 %132, ptr %.063, align 1
  %133 = getelementptr inbounds nuw i8, ptr %.063, i64 1
  %134 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.2762
  %135 = load i32, ptr %134, align 4
  %136 = getelementptr inbounds nuw i8, ptr %7, i64 %.2762
  %137 = load i8, ptr %136, align 1
  %138 = zext i8 %137 to i32
  %139 = or i32 %135, %138
  %.not3 = icmp eq i32 %139, 0
  br i1 %.not3, label %155, label %140

140:                                              ; preds = %131
  %141 = add nsw i32 %138, -1
  %142 = shl nuw i32 1, %141
  %143 = sext i32 %142 to i64
  %144 = zext i8 %137 to i64
  %exitcond16.not54 = icmp eq i64 0, %144
  br i1 %exitcond16.not54, label %153, label %.lr.ph59

.lr.ph59:                                         ; preds = %140
  br label %145

145:                                              ; preds = %.lr.ph59, %145
  %.557 = phi i64 [ 0, %.lr.ph59 ], [ %152, %145 ]
  %.11656 = phi i64 [ %143, %.lr.ph59 ], [ %151, %145 ]
  %.01955 = phi i32 [ 0, %.lr.ph59 ], [ %spec.select1, %145 ]
  %146 = shl i32 %.01955, 1
  %147 = or disjoint i32 %146, 1
  %148 = zext i32 %135 to i64
  %149 = and i64 %.11656, %148
  %.not4 = icmp eq i64 %149, 0
  %150 = add i32 %146, 2
  %spec.select1 = select i1 %.not4, i32 %147, i32 %150
  %151 = lshr i64 %.11656, 1
  %152 = add nuw nsw i64 %.557, 1
  %exitcond16.not = icmp eq i64 %152, %144
  br i1 %exitcond16.not, label %._crit_edge60, label %145, !llvm.loop !17

._crit_edge60:                                    ; preds = %145
  %split61 = phi i32 [ %spec.select1, %145 ]
  br label %153

153:                                              ; preds = %._crit_edge60, %140
  %.019.lcssa = phi i32 [ %split61, %._crit_edge60 ], [ 0, %140 ]
  %154 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.2762
  store i32 %.019.lcssa, ptr %154, align 4
  br label %155

155:                                              ; preds = %153, %131
  %156 = add nuw nsw i64 %.2762, 1
  %exitcond17.not = icmp eq i64 %156, 256
  br i1 %exitcond17.not, label %.preheader2.preheader, label %131, !llvm.loop !18

.preheader1.preheader:                            ; preds = %.critedge
  br label %.preheader1

157:                                              ; preds = %.preheader2.preheader, %.critedge
  %.665 = phi i64 [ 1, %.preheader2.preheader ], [ %174, %.critedge ]
  %158 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.665
  %159 = load i32, ptr %158, align 4
  %160 = getelementptr inbounds nuw i8, ptr %9, i64 %.665
  %161 = load i8, ptr %160, align 1
  br label %162

162:                                              ; preds = %157, %167
  %.3864 = phi i64 [ %.665, %157 ], [ %163, %167 ]
  %163 = add nsw i64 %.3864, -1
  %164 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %163
  %165 = load i32, ptr %164, align 4
  %166 = icmp ugt i32 %165, %159
  br i1 %166, label %167, label %.critedge

167:                                              ; preds = %162
  %168 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.3864
  store i32 %165, ptr %168, align 4
  %169 = getelementptr inbounds nuw i8, ptr %9, i64 %163
  %170 = load i8, ptr %169, align 1
  %171 = getelementptr inbounds nuw i8, ptr %9, i64 %.3864
  store i8 %170, ptr %171, align 1
  %.not2 = icmp eq i64 %163, 0
  br i1 %.not2, label %.critedge, label %162, !llvm.loop !19

.critedge:                                        ; preds = %162, %167
  %.38.lcssa = phi i64 [ %.3864, %162 ], [ 0, %167 ]
  %172 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %159, ptr %172, align 4
  %173 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %161, ptr %173, align 1
  %174 = add nuw nsw i64 %.665, 1
  %exitcond18.not = icmp eq i64 %174, 256
  br i1 %exitcond18.not, label %.preheader1.preheader, label %157, !llvm.loop !20

.preheader1:                                      ; preds = %.preheader1, %.preheader1.preheader
  %.49 = phi i64 [ %178, %.preheader1 ], [ 0, %.preheader1.preheader ]
  %175 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %176 = load i32, ptr %175, align 4
  %177 = icmp eq i32 %176, 0
  %178 = add i64 %.49, 1
  br i1 %177, label %.preheader1, label %.preheader.preheader, !llvm.loop !21

.preheader.preheader:                             ; preds = %.preheader1
  %.49.lcssa = phi i64 [ %.49, %.preheader1 ]
  %179 = icmp ult i64 0, %1
  br i1 %179, label %.lr.ph72, label %202

.lr.ph72:                                         ; preds = %.preheader.preheader
  br label %180

180:                                              ; preds = %.lr.ph72, %.preheader
  %.771 = phi i64 [ %.49.lcssa, %.lr.ph72 ], [ %.9, %.preheader ]
  %.31370 = phi i64 [ 0, %.lr.ph72 ], [ %.414, %.preheader ]
  %.21769 = phi i64 [ 128, %.lr.ph72 ], [ %.318, %.preheader ]
  %.22168 = phi i32 [ 0, %.lr.ph72 ], [ %.423, %.preheader ]
  %.03167 = phi ptr [ %11, %.lr.ph72 ], [ %.132, %.preheader ]
  %.23566 = phi ptr [ %0, %.lr.ph72 ], [ %.336, %.preheader ]
  %181 = shl i32 %.22168, 1
  %182 = or disjoint i32 %181, 1
  %183 = load i8, ptr %.03167, align 1
  %184 = zext i8 %183 to i64
  %185 = and i64 %.21769, %184
  %.not1 = icmp eq i64 %185, 0
  %186 = add i32 %181, 2
  %spec.select2 = select i1 %.not1, i32 %182, i32 %186
  br label %187

187:                                              ; preds = %187, %180
  %.8 = phi i64 [ %.771, %180 ], [ %191, %187 ]
  %188 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %189 = load i32, ptr %188, align 4
  %190 = icmp ult i32 %189, %spec.select2
  %191 = add i64 %.8, 1
  br i1 %190, label %187, label %192, !llvm.loop !22

192:                                              ; preds = %187
  %.8.lcssa = phi i64 [ %.8, %187 ]
  %.lcssa = phi i32 [ %189, %187 ]
  %193 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %193, label %194, label %.preheader

194:                                              ; preds = %192
  %195 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %196 = load i8, ptr %195, align 1
  store i8 %196, ptr %.23566, align 1
  %197 = getelementptr inbounds nuw i8, ptr %.23566, i64 1
  %198 = add nuw i64 %.31370, 1
  br label %.preheader

.preheader:                                       ; preds = %194, %192
  %.336 = phi ptr [ %197, %194 ], [ %.23566, %192 ]
  %.423 = phi i32 [ 0, %194 ], [ %spec.select2, %192 ]
  %.414 = phi i64 [ %198, %194 ], [ %.31370, %192 ]
  %.9 = phi i64 [ %.49.lcssa, %194 ], [ %.8.lcssa, %192 ]
  %199 = icmp ult i64 %.21769, 2
  %200 = lshr i64 %.21769, 1
  %.132.idx = zext i1 %199 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.03167, i64 %.132.idx
  %.318 = select i1 %199, i64 128, i64 %200
  %201 = icmp ult i64 %.414, %1
  br i1 %201, label %180, label %.preheader._crit_edge, !llvm.loop !23

.preheader._crit_edge:                            ; preds = %.preheader
  br label %202

202:                                              ; preds = %.preheader._crit_edge, %.preheader.preheader
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
