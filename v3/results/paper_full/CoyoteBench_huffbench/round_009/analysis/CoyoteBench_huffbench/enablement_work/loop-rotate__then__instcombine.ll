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
  %exitcond.not1 = icmp eq i64 %0, 0
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
  %exitcond.not7 = icmp eq i64 %1, 0
  br i1 %exitcond.not7, label %.preheader6.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %12

..preheader6.preheader_crit_edge:                 ; preds = %12
  br label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %..preheader6.preheader_crit_edge, %2
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
  br i1 %exitcond.not, label %..preheader6.preheader_crit_edge, label %12, !llvm.loop !9

.preheader5.preheader:                            ; preds = %.preheader6
  %.not13 = icmp eq i64 %.111, 0
  br i1 %.not13, label %.preheader4.preheader, label %.lr.ph15

.lr.ph15:                                         ; preds = %.preheader5.preheader
  br label %.preheader5

20:                                               ; preds = %.preheader6.preheader, %.preheader6
  %.1312 = phi i64 [ 0, %.preheader6.preheader ], [ %26, %.preheader6 ]
  %.01011 = phi i64 [ 0, %.preheader6.preheader ], [ %.111, %.preheader6 ]
  %21 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.1312
  %22 = load i64, ptr %21, align 8
  %.not8 = icmp eq i64 %22, 0
  br i1 %.not8, label %.preheader6, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.01011
  store i64 %.1312, ptr %24, align 8
  %25 = add i64 %.01011, 1
  br label %.preheader6

.preheader6:                                      ; preds = %23, %20
  %.111 = phi i64 [ %25, %23 ], [ %.01011, %20 ]
  %26 = add nuw nsw i64 %.1312, 1
  %exitcond13.not = icmp eq i64 %26, 256
  br i1 %exitcond13.not, label %.preheader5.preheader, label %20, !llvm.loop !10

.preheader5..preheader4.preheader_crit_edge:      ; preds = %.preheader5
  br label %.preheader4.preheader

.preheader4.preheader:                            ; preds = %.preheader5..preheader4.preheader_crit_edge, %.preheader5.preheader
  %27 = icmp ugt i64 %.111, 1
  br i1 %27, label %.lr.ph17, label %50

.lr.ph17:                                         ; preds = %.preheader4.preheader
  br label %.preheader4

.preheader5:                                      ; preds = %.lr.ph15, %.preheader5
  %.2414 = phi i64 [ %.111, %.lr.ph15 ], [ %30, %.preheader5 ]
  %28 = trunc i64 %.111 to i32
  %29 = trunc i64 %.2414 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %28, i32 noundef %29)
  %30 = add i64 %.2414, -1
  %.not = icmp eq i64 %30, 0
  br i1 %.not, label %.preheader5..preheader4.preheader_crit_edge, label %.preheader5, !llvm.loop !11

.preheader4:                                      ; preds = %.lr.ph17, %.preheader4
  %.21216 = phi i64 [ %.111, %.lr.ph17 ], [ %31, %.preheader4 ]
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
  br i1 %49, label %.preheader4, label %.preheader4._crit_edge, !llvm.loop !12

.preheader4._crit_edge:                           ; preds = %.preheader4
  br label %50

50:                                               ; preds = %.preheader4._crit_edge, %.preheader4.preheader
  %.212.lcssa = phi i64 [ %31, %.preheader4._crit_edge ], [ %.111, %.preheader4.preheader ]
  %51 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 1024
  store i32 0, ptr %52, align 4
  br label %53

53:                                               ; preds = %50, %69
  %.03930 = phi i64 [ 0, %50 ], [ %.140, %69 ]
  %.04229 = phi i64 [ 0, %50 ], [ %70, %69 ]
  %.04528 = phi i64 [ 0, %50 ], [ %.146, %69 ]
  %54 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04229
  %55 = load i64, ptr %54, align 8
  %.not6 = icmp eq i64 %55, 0
  br i1 %.not6, label %56, label %.preheader7.preheader

.preheader7.preheader:                            ; preds = %53
  %.037.in18 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.04229
  %.03719 = load i32, ptr %.037.in18, align 4
  %.not720 = icmp eq i32 %.03719, 0
  br i1 %.not720, label %64, label %.lr.ph25

.lr.ph25:                                         ; preds = %.preheader7.preheader
  br label %.preheader7

56:                                               ; preds = %53
  %57 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04229
  store i32 0, ptr %57, align 4
  %58 = getelementptr inbounds nuw i8, ptr %7, i64 %.04229
  store i8 0, ptr %58, align 1
  br label %69

.preheader7:                                      ; preds = %.lr.ph25, %.preheader7
  %.03724 = phi i32 [ %.03719, %.lr.ph25 ], [ %.037, %.preheader7 ]
  %.323 = phi i64 [ 0, %.lr.ph25 ], [ %63, %.preheader7 ]
  %.0522 = phi i64 [ 1, %.lr.ph25 ], [ %62, %.preheader7 ]
  %.04321 = phi i64 [ 0, %.lr.ph25 ], [ %.144, %.preheader7 ]
  %59 = icmp slt i32 %.03724, 0
  %60 = select i1 %59, i64 %.0522, i64 0
  %.144 = add i64 %.04321, %60
  %.138 = call i32 @llvm.abs.i32(i32 %.03724, i1 true)
  %61 = zext nneg i32 %.138 to i64
  %62 = shl i64 %.0522, 1
  %63 = add i64 %.323, 1
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %61
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %.preheader7._crit_edge, label %.preheader7, !llvm.loop !13

.preheader7._crit_edge:                           ; preds = %.preheader7
  br label %64

64:                                               ; preds = %.preheader7._crit_edge, %.preheader7.preheader
  %.043.lcssa = phi i64 [ %.144, %.preheader7._crit_edge ], [ 0, %.preheader7.preheader ]
  %.3.lcssa = phi i64 [ %63, %.preheader7._crit_edge ], [ 0, %.preheader7.preheader ]
  %65 = trunc i64 %.043.lcssa to i32
  %66 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04229
  store i32 %65, ptr %66, align 4
  %67 = trunc i64 %.3.lcssa to i8
  %68 = getelementptr inbounds nuw i8, ptr %7, i64 %.04229
  store i8 %67, ptr %68, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.04528)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.03930)
  br label %69

69:                                               ; preds = %64, %56
  %.146 = phi i64 [ %spec.select, %64 ], [ %.04528, %56 ]
  %.140 = phi i64 [ %.241, %64 ], [ %.03930, %56 ]
  %70 = add nuw nsw i64 %.04229, 1
  %exitcond14.not = icmp eq i64 %70, 256
  br i1 %exitcond14.not, label %71, label %53, !llvm.loop !14

71:                                               ; preds = %69
  %72 = icmp ugt i64 %.140, 32
  br i1 %72, label %73, label %76

73:                                               ; preds = %71
  %74 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %75 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %74)
  call void @exit(i32 noundef 1) #11
  unreachable

76:                                               ; preds = %71
  %77 = icmp eq i64 %.146, 0
  br i1 %77, label %78, label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %76
  %exitcond15.not42 = icmp eq i64 %1, 0
  br i1 %exitcond15.not42, label %119, label %.lr.ph48

.lr.ph48:                                         ; preds = %.preheader3.preheader
  br label %81

78:                                               ; preds = %76
  %79 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %80 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %79)
  call void @exit(i32 noundef 1) #11
  unreachable

81:                                               ; preds = %.lr.ph48, %.preheader3
  %.0147 = phi i32 [ -1, %.lr.ph48 ], [ %.1.lcssa, %.preheader3 ]
  %.1646 = phi i64 [ 0, %.lr.ph48 ], [ %114, %.preheader3 ]
  %.02445 = phi i8 [ 0, %.lr.ph48 ], [ %.125.lcssa, %.preheader3 ]
  %.02844 = phi i64 [ 0, %.lr.ph48 ], [ %.129.lcssa, %.preheader3 ]
  %.13443 = phi ptr [ %0, %.lr.ph48 ], [ %113, %.preheader3 ]
  %82 = load i8, ptr %.13443, align 1
  %83 = zext i8 %82 to i64
  %84 = getelementptr inbounds nuw i8, ptr %7, i64 %83
  %85 = load i8, ptr %84, align 1
  %.not71 = icmp eq i8 %85, 0
  br i1 %.not71, label %.preheader3, label %.lr.ph37

.lr.ph37:                                         ; preds = %81
  %86 = zext i8 %85 to i32
  %87 = add nsw i32 %86, -1
  %88 = shl nuw i32 1, %87
  %89 = sext i32 %88 to i64
  br label %90

90:                                               ; preds = %.lr.ph37, %103
  %.135 = phi i32 [ %.0147, %.lr.ph37 ], [ %.2, %103 ]
  %.434 = phi i64 [ 0, %.lr.ph37 ], [ %110, %103 ]
  %.01533 = phi i64 [ %89, %.lr.ph37 ], [ %109, %103 ]
  %.12532 = phi i8 [ %.02445, %.lr.ph37 ], [ %.327, %103 ]
  %.12931 = phi i64 [ %.02844, %.lr.ph37 ], [ %.230, %103 ]
  %91 = phi i8 [ %82, %.lr.ph37 ], [ %.pre-phi.in, %103 ]
  %92 = icmp eq i32 %.135, 7
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = getelementptr inbounds nuw i8, ptr %11, i64 %.12931
  store i8 %.12532, ptr %94, align 1
  %95 = add i64 %.12931, 1
  %96 = icmp eq i64 %95, %1
  br i1 %96, label %97, label %._crit_edge

._crit_edge:                                      ; preds = %93
  %.pre1 = load i8, ptr %.13443, align 1
  br label %103

97:                                               ; preds = %93
  %98 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %99 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %98)
  call void @exit(i32 noundef 1) #11
  unreachable

100:                                              ; preds = %90
  %101 = add nsw i32 %.135, 1
  %102 = shl i8 %.12532, 1
  br label %103

103:                                              ; preds = %100, %._crit_edge
  %.pre-phi.in = phi i8 [ %.pre1, %._crit_edge ], [ %91, %100 ]
  %.230 = phi i64 [ %95, %._crit_edge ], [ %.12931, %100 ]
  %.226 = phi i8 [ 0, %._crit_edge ], [ %102, %100 ]
  %.2 = phi i32 [ 0, %._crit_edge ], [ %101, %100 ]
  %.pre-phi = zext i8 %.pre-phi.in to i64
  %104 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.pre-phi
  %105 = load i32, ptr %104, align 4
  %106 = zext i32 %105 to i64
  %107 = and i64 %.01533, %106
  %.not5 = icmp ne i64 %107, 0
  %108 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %108
  %109 = lshr i64 %.01533, 1
  %110 = add nuw nsw i64 %.434, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  %111 = zext i8 %.pre to i64
  %112 = icmp samesign ult i64 %110, %111
  br i1 %112, label %90, label %._crit_edge38, !llvm.loop !15

._crit_edge38:                                    ; preds = %103
  br label %.preheader3

.preheader3:                                      ; preds = %._crit_edge38, %81
  %.129.lcssa = phi i64 [ %.230, %._crit_edge38 ], [ %.02844, %81 ]
  %.125.lcssa = phi i8 [ %.327, %._crit_edge38 ], [ %.02445, %81 ]
  %.1.lcssa = phi i32 [ %.2, %._crit_edge38 ], [ %.0147, %81 ]
  %113 = getelementptr inbounds nuw i8, ptr %.13443, i64 1
  %114 = add i64 %.1646, 1
  %exitcond15.not = icmp eq i64 %114, %1
  br i1 %exitcond15.not, label %.preheader3._crit_edge, label %81, !llvm.loop !16

.preheader3._crit_edge:                           ; preds = %.preheader3
  %115 = sub nsw i32 7, %.1.lcssa
  %116 = zext i8 %.125.lcssa to i32
  %117 = shl i32 %116, %115
  %118 = trunc i32 %117 to i8
  br label %119

119:                                              ; preds = %.preheader3._crit_edge, %.preheader3.preheader
  %.028.lcssa = phi i64 [ %.129.lcssa, %.preheader3._crit_edge ], [ 0, %.preheader3.preheader ]
  %120 = phi i8 [ %118, %.preheader3._crit_edge ], [ 0, %.preheader3.preheader ]
  %121 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %120, ptr %121, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %122

.preheader2.preheader:                            ; preds = %146
  br label %148

122:                                              ; preds = %119, %146
  %.061 = phi ptr [ %9, %119 ], [ %124, %146 ]
  %.2760 = phi i64 [ 0, %119 ], [ %147, %146 ]
  %123 = trunc nuw i64 %.2760 to i8
  store i8 %123, ptr %.061, align 1
  %124 = getelementptr inbounds nuw i8, ptr %.061, i64 1
  %125 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.2760
  %126 = load i32, ptr %125, align 4
  %127 = getelementptr inbounds nuw i8, ptr %7, i64 %.2760
  %128 = load i8, ptr %127, align 1
  %129 = zext i8 %128 to i32
  %130 = or i32 %126, %129
  %.not3 = icmp eq i32 %130, 0
  br i1 %.not3, label %146, label %131

131:                                              ; preds = %122
  %132 = zext i8 %128 to i64
  %exitcond16.not52 = icmp eq i8 %128, 0
  br i1 %exitcond16.not52, label %144, label %.lr.ph57

.lr.ph57:                                         ; preds = %131
  %133 = add nsw i32 %129, -1
  %134 = shl nuw i32 1, %133
  %135 = sext i32 %134 to i64
  br label %136

136:                                              ; preds = %.lr.ph57, %136
  %.555 = phi i64 [ 0, %.lr.ph57 ], [ %143, %136 ]
  %.11654 = phi i64 [ %135, %.lr.ph57 ], [ %142, %136 ]
  %.01953 = phi i32 [ 0, %.lr.ph57 ], [ %spec.select1, %136 ]
  %137 = shl i32 %.01953, 1
  %138 = or disjoint i32 %137, 1
  %139 = zext i32 %126 to i64
  %140 = and i64 %.11654, %139
  %.not4 = icmp eq i64 %140, 0
  %141 = add i32 %137, 2
  %spec.select1 = select i1 %.not4, i32 %138, i32 %141
  %142 = lshr i64 %.11654, 1
  %143 = add nuw nsw i64 %.555, 1
  %exitcond16.not = icmp eq i64 %143, %132
  br i1 %exitcond16.not, label %._crit_edge58, label %136, !llvm.loop !17

._crit_edge58:                                    ; preds = %136
  br label %144

144:                                              ; preds = %._crit_edge58, %131
  %.019.lcssa = phi i32 [ %spec.select1, %._crit_edge58 ], [ 0, %131 ]
  %145 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.2760
  store i32 %.019.lcssa, ptr %145, align 4
  br label %146

146:                                              ; preds = %144, %122
  %147 = add nuw nsw i64 %.2760, 1
  %exitcond17.not = icmp eq i64 %147, 256
  br i1 %exitcond17.not, label %.preheader2.preheader, label %122, !llvm.loop !18

.preheader1.preheader:                            ; preds = %.critedge
  br label %.preheader1

148:                                              ; preds = %.preheader2.preheader, %.critedge
  %.663 = phi i64 [ 1, %.preheader2.preheader ], [ %165, %.critedge ]
  %149 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.663
  %150 = load i32, ptr %149, align 4
  %151 = getelementptr inbounds nuw i8, ptr %9, i64 %.663
  %152 = load i8, ptr %151, align 1
  br label %153

153:                                              ; preds = %148, %158
  %.3862 = phi i64 [ %.663, %148 ], [ %154, %158 ]
  %154 = add nsw i64 %.3862, -1
  %155 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %154
  %156 = load i32, ptr %155, align 4
  %157 = icmp ugt i32 %156, %150
  br i1 %157, label %158, label %.critedge

158:                                              ; preds = %153
  %159 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.3862
  store i32 %156, ptr %159, align 4
  %160 = getelementptr inbounds nuw i8, ptr %9, i64 %154
  %161 = load i8, ptr %160, align 1
  %162 = getelementptr inbounds nuw i8, ptr %9, i64 %.3862
  store i8 %161, ptr %162, align 1
  %.not2 = icmp eq i64 %154, 0
  br i1 %.not2, label %.critedge, label %153, !llvm.loop !19

.critedge:                                        ; preds = %153, %158
  %.38.lcssa = phi i64 [ %.3862, %153 ], [ 0, %158 ]
  %163 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %150, ptr %163, align 4
  %164 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %152, ptr %164, align 1
  %165 = add nuw nsw i64 %.663, 1
  %exitcond18.not = icmp eq i64 %165, 256
  br i1 %exitcond18.not, label %.preheader1.preheader, label %148, !llvm.loop !20

.preheader1:                                      ; preds = %.preheader1, %.preheader1.preheader
  %.49 = phi i64 [ %169, %.preheader1 ], [ 0, %.preheader1.preheader ]
  %166 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %167 = load i32, ptr %166, align 4
  %168 = icmp eq i32 %167, 0
  %169 = add i64 %.49, 1
  br i1 %168, label %.preheader1, label %.preheader.preheader, !llvm.loop !21

.preheader.preheader:                             ; preds = %.preheader1
  %.not72 = icmp eq i64 %1, 0
  br i1 %.not72, label %192, label %.lr.ph70

.lr.ph70:                                         ; preds = %.preheader.preheader
  br label %170

170:                                              ; preds = %.lr.ph70, %.preheader
  %.769 = phi i64 [ %.49, %.lr.ph70 ], [ %.9, %.preheader ]
  %.31368 = phi i64 [ 0, %.lr.ph70 ], [ %.414, %.preheader ]
  %.21767 = phi i64 [ 128, %.lr.ph70 ], [ %.318, %.preheader ]
  %.22166 = phi i32 [ 0, %.lr.ph70 ], [ %.423, %.preheader ]
  %.03165 = phi ptr [ %11, %.lr.ph70 ], [ %.132, %.preheader ]
  %.23564 = phi ptr [ %0, %.lr.ph70 ], [ %.336, %.preheader ]
  %171 = shl i32 %.22166, 1
  %172 = or disjoint i32 %171, 1
  %173 = load i8, ptr %.03165, align 1
  %174 = zext i8 %173 to i64
  %175 = and i64 %.21767, %174
  %.not1 = icmp eq i64 %175, 0
  %176 = add i32 %171, 2
  %spec.select2 = select i1 %.not1, i32 %172, i32 %176
  br label %177

177:                                              ; preds = %177, %170
  %.8 = phi i64 [ %.769, %170 ], [ %181, %177 ]
  %178 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %179 = load i32, ptr %178, align 4
  %180 = icmp ult i32 %179, %spec.select2
  %181 = add i64 %.8, 1
  br i1 %180, label %177, label %182, !llvm.loop !22

182:                                              ; preds = %177
  %183 = icmp eq i32 %spec.select2, %179
  br i1 %183, label %184, label %.preheader

184:                                              ; preds = %182
  %185 = getelementptr inbounds nuw i8, ptr %9, i64 %.8
  %186 = load i8, ptr %185, align 1
  store i8 %186, ptr %.23564, align 1
  %187 = getelementptr inbounds nuw i8, ptr %.23564, i64 1
  %188 = add nuw i64 %.31368, 1
  br label %.preheader

.preheader:                                       ; preds = %184, %182
  %.336 = phi ptr [ %187, %184 ], [ %.23564, %182 ]
  %.423 = phi i32 [ 0, %184 ], [ %spec.select2, %182 ]
  %.414 = phi i64 [ %188, %184 ], [ %.31368, %182 ]
  %.9 = phi i64 [ %.49, %184 ], [ %.8, %182 ]
  %189 = icmp ult i64 %.21767, 2
  %190 = lshr i64 %.21767, 1
  %.132.idx = zext i1 %189 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.03165, i64 %.132.idx
  %.318 = select i1 %189, i64 128, i64 %190
  %191 = icmp ult i64 %.414, %1
  br i1 %191, label %170, label %.preheader._crit_edge, !llvm.loop !23

.preheader._crit_edge:                            ; preds = %.preheader
  br label %192

192:                                              ; preds = %.preheader._crit_edge, %.preheader.preheader
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
  br label %._crit_edge

.._crit_edge_crit_edge4:                          ; preds = %37
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge4, %.._crit_edge_crit_edge, %4
  %.01.lcssa = phi i32 [ %.012, %.._crit_edge_crit_edge ], [ %.0, %.._crit_edge_crit_edge4 ], [ %3, %4 ]
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
  br label %7

5:                                                ; preds = %7
  %6 = add nuw i32 %.011, 1
  %exitcond.not = icmp eq i32 %6, %0
  br i1 %exitcond.not, label %.loopexit.loopexit, label %7, !llvm.loop !25

7:                                                ; preds = %.preheader, %5
  %.011 = phi i32 [ 1, %.preheader ], [ %6, %5 ]
  %8 = load ptr, ptr %4, align 8
  %9 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(4) @.str.4) #10
  %.not = icmp ne i32 %9, 0
  br i1 %.not, label %5, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %5, %7
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %2
  %.not1 = phi i1 [ true, %2 ], [ %.not, %.loopexit.loopexit ]
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
