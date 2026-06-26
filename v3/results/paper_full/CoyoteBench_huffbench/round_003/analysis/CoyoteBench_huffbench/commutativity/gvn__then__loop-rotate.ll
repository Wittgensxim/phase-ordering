; ModuleID = 'results\paper_full\CoyoteBench_huffbench\round_002\output.ll'
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
  br i1 %12, label %.lr.ph, label %.preheader8

.lr.ph:                                           ; preds = %2
  br label %13

..preheader8_crit_edge:                           ; preds = %13
  br label %.preheader8

.preheader8:                                      ; preds = %..preheader8_crit_edge, %2
  br label %22

13:                                               ; preds = %.lr.ph, %13
  %.0216 = phi i64 [ 0, %.lr.ph ], [ %20, %13 ]
  %.03315 = phi ptr [ %0, %.lr.ph ], [ %19, %13 ]
  %14 = load i8, ptr %.03315, align 1
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %15
  %17 = load i64, ptr %16, align 8
  %18 = add i64 %17, 1
  store i64 %18, ptr %16, align 8
  %19 = getelementptr inbounds nuw i8, ptr %.03315, i64 1
  %20 = add i64 %.0216, 1
  %21 = icmp ult i64 %20, %1
  br i1 %21, label %13, label %..preheader8_crit_edge, !llvm.loop !9

.preheader7:                                      ; preds = %28
  %.010.lcssa = phi i64 [ %.111, %28 ]
  %.not20 = icmp eq i64 %.010.lcssa, 0
  br i1 %.not20, label %.preheader6, label %.lr.ph22

.lr.ph22:                                         ; preds = %.preheader7
  br label %32

22:                                               ; preds = %.preheader8, %28
  %.1319 = phi i64 [ 0, %.preheader8 ], [ %29, %28 ]
  %.01018 = phi i64 [ 0, %.preheader8 ], [ %.111, %28 ]
  %23 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.1319
  %24 = load i64, ptr %23, align 8
  %.not8 = icmp eq i64 %24, 0
  br i1 %.not8, label %28, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.01018
  store i64 %.1319, ptr %26, align 8
  %27 = add i64 %.01018, 1
  br label %28

28:                                               ; preds = %25, %22
  %.111 = phi i64 [ %27, %25 ], [ %.01018, %22 ]
  %29 = add nuw nsw i64 %.1319, 1
  %30 = icmp samesign ult i64 %29, 256
  br i1 %30, label %22, label %.preheader7, !llvm.loop !10

..preheader6_crit_edge:                           ; preds = %32
  br label %.preheader6

.preheader6:                                      ; preds = %..preheader6_crit_edge, %.preheader7
  %31 = icmp ugt i64 %.010.lcssa, 1
  br i1 %31, label %.lr.ph24, label %56

.lr.ph24:                                         ; preds = %.preheader6
  br label %36

32:                                               ; preds = %.lr.ph22, %32
  %.2421 = phi i64 [ %.010.lcssa, %.lr.ph22 ], [ %35, %32 ]
  %33 = trunc i64 %.010.lcssa to i32
  %34 = trunc i64 %.2421 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %33, i32 noundef %34)
  %35 = add i64 %.2421, -1
  %.not = icmp eq i64 %35, 0
  br i1 %.not, label %..preheader6_crit_edge, label %32, !llvm.loop !11

36:                                               ; preds = %.lr.ph24, %36
  %.21223 = phi i64 [ %.010.lcssa, %.lr.ph24 ], [ %37, %36 ]
  %37 = add i64 %.21223, -1
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
  %48 = add i64 %.21223, 255
  %49 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %48
  store i64 %47, ptr %49, align 8
  %50 = trunc i64 %48 to i32
  %51 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %38
  store i32 %50, ptr %51, align 4
  %52 = trunc i64 %.21223 to i32
  %53 = sub i32 -255, %52
  %54 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %42
  store i32 %53, ptr %54, align 4
  store i64 %48, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %41, i32 noundef 1)
  %55 = icmp ugt i64 %37, 1
  br i1 %55, label %36, label %._crit_edge25, !llvm.loop !12

._crit_edge25:                                    ; preds = %36
  %split = phi i64 [ %37, %36 ]
  br label %56

56:                                               ; preds = %._crit_edge25, %.preheader6
  %.212.lcssa = phi i64 [ %split, %._crit_edge25 ], [ %.010.lcssa, %.preheader6 ]
  %57 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %58 = getelementptr inbounds nuw i8, ptr %57, i64 1024
  store i32 0, ptr %58, align 4
  br label %59

59:                                               ; preds = %56, %77
  %.03940 = phi i64 [ 0, %56 ], [ %.140, %77 ]
  %.04239 = phi i64 [ 0, %56 ], [ %78, %77 ]
  %.04538 = phi i64 [ 0, %56 ], [ %.146, %77 ]
  %60 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04239
  %61 = load i64, ptr %60, align 8
  %.not6 = icmp eq i64 %61, 0
  br i1 %.not6, label %62, label %65

62:                                               ; preds = %59
  %63 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04239
  store i32 0, ptr %63, align 4
  %64 = getelementptr inbounds nuw i8, ptr %7, i64 %.04239
  store i8 0, ptr %64, align 1
  br label %77

65:                                               ; preds = %59
  %.037.in26 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.04239
  %.03727 = load i32, ptr %.037.in26, align 4
  %.not728 = icmp eq i32 %.03727, 0
  br i1 %.not728, label %72, label %.lr.ph34

.lr.ph34:                                         ; preds = %65
  br label %66

66:                                               ; preds = %.lr.ph34, %66
  %.03732 = phi i32 [ %.03727, %.lr.ph34 ], [ %.037, %66 ]
  %.331 = phi i64 [ 0, %.lr.ph34 ], [ %71, %66 ]
  %.0530 = phi i64 [ 1, %.lr.ph34 ], [ %70, %66 ]
  %.04329 = phi i64 [ 0, %.lr.ph34 ], [ %.144, %66 ]
  %67 = icmp slt i32 %.03732, 0
  %68 = select i1 %67, i64 %.0530, i64 0
  %.144 = add i64 %.04329, %68
  %.138 = call i32 @llvm.abs.i32(i32 %.03732, i1 true)
  %69 = zext nneg i32 %.138 to i64
  %70 = shl i64 %.0530, 1
  %71 = add i64 %.331, 1
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %69
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %._crit_edge35, label %66, !llvm.loop !13

._crit_edge35:                                    ; preds = %66
  %split36 = phi i64 [ %.144, %66 ]
  %split37 = phi i64 [ %71, %66 ]
  br label %72

72:                                               ; preds = %._crit_edge35, %65
  %.043.lcssa = phi i64 [ %split36, %._crit_edge35 ], [ 0, %65 ]
  %.3.lcssa = phi i64 [ %split37, %._crit_edge35 ], [ 0, %65 ]
  %73 = trunc i64 %.043.lcssa to i32
  %74 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04239
  store i32 %73, ptr %74, align 4
  %75 = trunc i64 %.3.lcssa to i8
  %76 = getelementptr inbounds nuw i8, ptr %7, i64 %.04239
  store i8 %75, ptr %76, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.04538)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.03940)
  br label %77

77:                                               ; preds = %72, %62
  %.146 = phi i64 [ %spec.select, %72 ], [ %.04538, %62 ]
  %.140 = phi i64 [ %.241, %72 ], [ %.03940, %62 ]
  %78 = add nuw nsw i64 %.04239, 1
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
  br i1 %86, label %88, label %.preheader5

.preheader5:                                      ; preds = %85
  %87 = icmp ult i64 0, %1
  br i1 %87, label %.lr.ph57, label %135

.lr.ph57:                                         ; preds = %.preheader5
  br label %91

88:                                               ; preds = %85
  %89 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %90 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %89)
  call void @exit(i32 noundef 1) #11
  unreachable

91:                                               ; preds = %.lr.ph57, %131
  %.0156 = phi i32 [ -1, %.lr.ph57 ], [ %.1.lcssa, %131 ]
  %.1655 = phi i64 [ 0, %.lr.ph57 ], [ %133, %131 ]
  %.02454 = phi i8 [ 0, %.lr.ph57 ], [ %.125.lcssa, %131 ]
  %.02853 = phi i64 [ 0, %.lr.ph57 ], [ %.129.lcssa, %131 ]
  %.13452 = phi ptr [ %0, %.lr.ph57 ], [ %132, %131 ]
  %92 = load i8, ptr %.13452, align 1
  %93 = zext i8 %92 to i64
  %94 = getelementptr inbounds nuw i8, ptr %7, i64 %93
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %95 to i32
  %97 = add nsw i32 %96, -1
  %98 = shl nuw i32 1, %97
  %99 = sext i32 %98 to i64
  %100 = zext i8 %92 to i64
  %101 = getelementptr inbounds nuw i8, ptr %7, i64 %100
  %102 = zext i8 %95 to i64
  %103 = icmp ult i64 0, %102
  br i1 %103, label %.lr.ph47, label %131

.lr.ph47:                                         ; preds = %91
  br label %104

104:                                              ; preds = %.lr.ph47, %118
  %105 = phi i64 [ %100, %.lr.ph47 ], [ %127, %118 ]
  %.145 = phi i32 [ %.0156, %.lr.ph47 ], [ %.2, %118 ]
  %.444 = phi i64 [ 0, %.lr.ph47 ], [ %126, %118 ]
  %.01543 = phi i64 [ %99, %.lr.ph47 ], [ %125, %118 ]
  %.12542 = phi i8 [ %.02454, %.lr.ph47 ], [ %.327, %118 ]
  %.12941 = phi i64 [ %.02853, %.lr.ph47 ], [ %.230, %118 ]
  %106 = phi i8 [ %92, %.lr.ph47 ], [ %119, %118 ]
  %107 = icmp eq i32 %.145, 7
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = getelementptr inbounds nuw i8, ptr %11, i64 %.12941
  store i8 %.12542, ptr %109, align 1
  %110 = add i64 %.12941, 1
  %111 = icmp eq i64 %110, %1
  br i1 %111, label %112, label %._crit_edge

._crit_edge:                                      ; preds = %108
  %.pre1 = load i8, ptr %.13452, align 1
  %.pre2 = zext i8 %.pre1 to i64
  br label %118

112:                                              ; preds = %108
  %113 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %114 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %113)
  call void @exit(i32 noundef 1) #11
  unreachable

115:                                              ; preds = %104
  %116 = add nsw i32 %.145, 1
  %117 = shl i8 %.12542, 1
  br label %118

118:                                              ; preds = %._crit_edge, %115
  %.pre-phi = phi i64 [ %.pre2, %._crit_edge ], [ %105, %115 ]
  %119 = phi i8 [ %106, %115 ], [ %.pre1, %._crit_edge ]
  %.230 = phi i64 [ %.12941, %115 ], [ %110, %._crit_edge ]
  %.226 = phi i8 [ %117, %115 ], [ 0, %._crit_edge ]
  %.2 = phi i32 [ %116, %115 ], [ 0, %._crit_edge ]
  %120 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.pre-phi
  %121 = load i32, ptr %120, align 4
  %122 = zext i32 %121 to i64
  %123 = and i64 %.01543, %122
  %.not5 = icmp ne i64 %123, 0
  %124 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %124
  %125 = lshr i64 %.01543, 1
  %126 = add i64 %.444, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  %127 = zext i8 %119 to i64
  %128 = getelementptr inbounds nuw i8, ptr %7, i64 %127
  %129 = zext i8 %.pre to i64
  %130 = icmp ult i64 %126, %129
  br i1 %130, label %104, label %._crit_edge48, !llvm.loop !15

._crit_edge48:                                    ; preds = %118
  %split49 = phi i64 [ %.230, %118 ]
  %split50 = phi i8 [ %.327, %118 ]
  %split51 = phi i32 [ %.2, %118 ]
  br label %131

131:                                              ; preds = %._crit_edge48, %91
  %.129.lcssa = phi i64 [ %split49, %._crit_edge48 ], [ %.02853, %91 ]
  %.125.lcssa = phi i8 [ %split50, %._crit_edge48 ], [ %.02454, %91 ]
  %.1.lcssa = phi i32 [ %split51, %._crit_edge48 ], [ %.0156, %91 ]
  %132 = getelementptr inbounds nuw i8, ptr %.13452, i64 1
  %133 = add i64 %.1655, 1
  %134 = icmp ult i64 %133, %1
  br i1 %134, label %91, label %._crit_edge58, !llvm.loop !16

._crit_edge58:                                    ; preds = %131
  %split59 = phi i64 [ %.129.lcssa, %131 ]
  %split60 = phi i8 [ %.125.lcssa, %131 ]
  %split61 = phi i32 [ %.1.lcssa, %131 ]
  br label %135

135:                                              ; preds = %._crit_edge58, %.preheader5
  %.028.lcssa = phi i64 [ %split59, %._crit_edge58 ], [ 0, %.preheader5 ]
  %.024.lcssa = phi i8 [ %split60, %._crit_edge58 ], [ 0, %.preheader5 ]
  %.01.lcssa = phi i32 [ %split61, %._crit_edge58 ], [ -1, %.preheader5 ]
  %136 = sub nsw i32 7, %.01.lcssa
  %137 = zext i8 %.024.lcssa to i32
  %138 = shl i32 %137, %136
  %139 = trunc i32 %138 to i8
  %140 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %139, ptr %140, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %141

.preheader4:                                      ; preds = %167
  br label %170

141:                                              ; preds = %135, %167
  %.070 = phi ptr [ %9, %135 ], [ %143, %167 ]
  %.2769 = phi i64 [ 0, %135 ], [ %168, %167 ]
  %142 = trunc nuw i64 %.2769 to i8
  store i8 %142, ptr %.070, align 1
  %143 = getelementptr inbounds nuw i8, ptr %.070, i64 1
  %144 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.2769
  %145 = load i32, ptr %144, align 4
  %146 = getelementptr inbounds nuw i8, ptr %7, i64 %.2769
  %147 = load i8, ptr %146, align 1
  %148 = zext i8 %147 to i32
  %149 = or i32 %145, %148
  %.not3 = icmp eq i32 %149, 0
  br i1 %.not3, label %167, label %150

150:                                              ; preds = %141
  %151 = add nsw i32 %148, -1
  %152 = shl nuw i32 1, %151
  %153 = sext i32 %152 to i64
  %154 = zext i8 %147 to i64
  %155 = icmp ult i64 0, %154
  br i1 %155, label %.lr.ph66, label %165

.lr.ph66:                                         ; preds = %150
  br label %156

156:                                              ; preds = %.lr.ph66, %156
  %.564 = phi i64 [ 0, %.lr.ph66 ], [ %163, %156 ]
  %.11663 = phi i64 [ %153, %.lr.ph66 ], [ %162, %156 ]
  %.01962 = phi i32 [ 0, %.lr.ph66 ], [ %spec.select1, %156 ]
  %157 = shl i32 %.01962, 1
  %158 = or disjoint i32 %157, 1
  %159 = zext i32 %145 to i64
  %160 = and i64 %.11663, %159
  %.not4 = icmp eq i64 %160, 0
  %161 = add i32 %157, 2
  %spec.select1 = select i1 %.not4, i32 %158, i32 %161
  %162 = lshr i64 %.11663, 1
  %163 = add i64 %.564, 1
  %164 = icmp ult i64 %163, %154
  br i1 %164, label %156, label %._crit_edge67, !llvm.loop !17

._crit_edge67:                                    ; preds = %156
  %split68 = phi i32 [ %spec.select1, %156 ]
  br label %165

165:                                              ; preds = %._crit_edge67, %150
  %.019.lcssa = phi i32 [ %split68, %._crit_edge67 ], [ 0, %150 ]
  %166 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.2769
  store i32 %.019.lcssa, ptr %166, align 4
  br label %167

167:                                              ; preds = %165, %141
  %168 = add nuw nsw i64 %.2769, 1
  %169 = icmp samesign ult i64 %168, 256
  br i1 %169, label %141, label %.preheader4, !llvm.loop !18

.preheader3:                                      ; preds = %.critedge
  br label %189

170:                                              ; preds = %.preheader4, %.critedge
  %.672 = phi i64 [ 1, %.preheader4 ], [ %187, %.critedge ]
  %171 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.672
  %172 = load i32, ptr %171, align 4
  %173 = getelementptr inbounds nuw i8, ptr %9, i64 %.672
  %174 = load i8, ptr %173, align 1
  br label %175

175:                                              ; preds = %170, %180
  %.3871 = phi i64 [ %.672, %170 ], [ %176, %180 ]
  %176 = add i64 %.3871, -1
  %177 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %176
  %178 = load i32, ptr %177, align 4
  %179 = icmp ugt i32 %178, %172
  br i1 %179, label %180, label %.critedge

180:                                              ; preds = %175
  %181 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.3871
  store i32 %178, ptr %181, align 4
  %182 = getelementptr inbounds nuw i8, ptr %9, i64 %176
  %183 = load i8, ptr %182, align 1
  %184 = getelementptr inbounds nuw i8, ptr %9, i64 %.3871
  store i8 %183, ptr %184, align 1
  %.not2 = icmp eq i64 %176, 0
  br i1 %.not2, label %.critedge, label %175, !llvm.loop !19

.critedge:                                        ; preds = %175, %180
  %.38.lcssa = phi i64 [ %.3871, %175 ], [ %176, %180 ]
  %185 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %172, ptr %185, align 4
  %186 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %174, ptr %186, align 1
  %187 = add nuw nsw i64 %.672, 1
  %188 = icmp samesign ult i64 %187, 256
  br i1 %188, label %170, label %.preheader3, !llvm.loop !20

189:                                              ; preds = %189, %.preheader3
  %.49 = phi i64 [ %193, %189 ], [ 0, %.preheader3 ]
  %190 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %191 = load i32, ptr %190, align 4
  %192 = icmp eq i32 %191, 0
  %193 = add i64 %.49, 1
  br i1 %192, label %189, label %.preheader, !llvm.loop !21

.preheader:                                       ; preds = %189
  %.49.lcssa = phi i64 [ %.49, %189 ]
  %194 = icmp ult i64 0, %1
  br i1 %194, label %.lr.ph79, label %218

.lr.ph79:                                         ; preds = %.preheader
  br label %195

195:                                              ; preds = %.lr.ph79, %214
  %.778 = phi i64 [ %.49.lcssa, %.lr.ph79 ], [ %.9, %214 ]
  %.31377 = phi i64 [ 0, %.lr.ph79 ], [ %.414, %214 ]
  %.21776 = phi i64 [ 128, %.lr.ph79 ], [ %.318, %214 ]
  %.22175 = phi i32 [ 0, %.lr.ph79 ], [ %.423, %214 ]
  %.03174 = phi ptr [ %11, %.lr.ph79 ], [ %.132, %214 ]
  %.23573 = phi ptr [ %0, %.lr.ph79 ], [ %.336, %214 ]
  %196 = shl i32 %.22175, 1
  %197 = or disjoint i32 %196, 1
  %198 = load i8, ptr %.03174, align 1
  %199 = zext i8 %198 to i64
  %200 = and i64 %.21776, %199
  %.not1 = icmp eq i64 %200, 0
  %201 = add i32 %196, 2
  %spec.select2 = select i1 %.not1, i32 %197, i32 %201
  br label %202

202:                                              ; preds = %202, %195
  %.8 = phi i64 [ %.778, %195 ], [ %206, %202 ]
  %203 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %204 = load i32, ptr %203, align 4
  %205 = icmp ult i32 %204, %spec.select2
  %206 = add i64 %.8, 1
  br i1 %205, label %202, label %207, !llvm.loop !22

207:                                              ; preds = %202
  %.8.lcssa = phi i64 [ %.8, %202 ]
  %.lcssa = phi i32 [ %204, %202 ]
  %208 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %208, label %209, label %214

209:                                              ; preds = %207
  %210 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %211 = load i8, ptr %210, align 1
  store i8 %211, ptr %.23573, align 1
  %212 = getelementptr inbounds nuw i8, ptr %.23573, i64 1
  %213 = add i64 %.31377, 1
  br label %214

214:                                              ; preds = %209, %207
  %.336 = phi ptr [ %212, %209 ], [ %.23573, %207 ]
  %.423 = phi i32 [ 0, %209 ], [ %spec.select2, %207 ]
  %.414 = phi i64 [ %213, %209 ], [ %.31377, %207 ]
  %.9 = phi i64 [ %.49.lcssa, %209 ], [ %.8.lcssa, %207 ]
  %215 = icmp ult i64 %.21776, 2
  %216 = lshr i64 %.21776, 1
  %.132.idx = zext i1 %215 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.03174, i64 %.132.idx
  %.318 = select i1 %215, i64 128, i64 %216
  %217 = icmp ult i64 %.414, %1
  br i1 %217, label %195, label %._crit_edge80, !llvm.loop !23

._crit_edge80:                                    ; preds = %214
  br label %218

218:                                              ; preds = %._crit_edge80, %.preheader
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
