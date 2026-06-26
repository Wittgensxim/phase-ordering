; ModuleID = 'results\paper_full\CoyoteBench_huffbench\CoyoteBench_huffbench.ll'
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
  %2 = call ptr @malloc(i64 noundef %0) #7
  %3 = icmp ugt i64 %0, 0
  br i1 %3, label %.lr.ph, label %12

.lr.ph:                                           ; preds = %1
  br label %4

4:                                                ; preds = %.lr.ph, %4
  %.03 = phi i32 [ 0, %.lr.ph ], [ %9, %4 ]
  %.012 = phi ptr [ %2, %.lr.ph ], [ %8, %4 ]
  %5 = call i64 @random4()
  %6 = getelementptr inbounds nuw i8, ptr @.str, i64 %5
  %7 = load i8, ptr %6, align 1
  store i8 %7, ptr %.012, align 1
  %8 = getelementptr inbounds nuw i8, ptr %.012, i64 1
  %9 = add nuw nsw i32 %.03, 1
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
  %11 = call ptr @malloc(i64 noundef %10) #7
  call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %10, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %3, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %4, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %5, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %6, i8 0, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %7, i8 0, i64 256, i1 false)
  %12 = icmp ult i64 0, %1
  br i1 %12, label %.lr.ph, label %.preheader72

.lr.ph:                                           ; preds = %2
  br label %13

..preheader72_crit_edge:                          ; preds = %13
  br label %.preheader72

.preheader72:                                     ; preds = %..preheader72_crit_edge, %2
  br label %22

13:                                               ; preds = %.lr.ph, %13
  %.0280 = phi i64 [ 0, %.lr.ph ], [ %20, %13 ]
  %.03379 = phi ptr [ %0, %.lr.ph ], [ %19, %13 ]
  %14 = load i8, ptr %.03379, align 1
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %15
  %17 = load i64, ptr %16, align 8
  %18 = add i64 %17, 1
  store i64 %18, ptr %16, align 8
  %19 = getelementptr inbounds nuw i8, ptr %.03379, i64 1
  %20 = add i64 %.0280, 1
  %21 = icmp ult i64 %20, %1
  br i1 %21, label %13, label %..preheader72_crit_edge, !llvm.loop !9

.preheader71:                                     ; preds = %28
  %.010.lcssa = phi i64 [ %.111, %28 ]
  %.not84 = icmp eq i64 %.010.lcssa, 0
  br i1 %.not84, label %.preheader70, label %.lr.ph86

.lr.ph86:                                         ; preds = %.preheader71
  br label %32

22:                                               ; preds = %.preheader72, %28
  %.1383 = phi i64 [ 0, %.preheader72 ], [ %29, %28 ]
  %.01082 = phi i64 [ 0, %.preheader72 ], [ %.111, %28 ]
  %23 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.1383
  %24 = load i64, ptr %23, align 8
  %.not55 = icmp eq i64 %24, 0
  br i1 %.not55, label %28, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.01082
  store i64 %.1383, ptr %26, align 8
  %27 = add i64 %.01082, 1
  br label %28

28:                                               ; preds = %22, %25
  %.111 = phi i64 [ %27, %25 ], [ %.01082, %22 ]
  %29 = add nuw nsw i64 %.1383, 1
  %30 = icmp samesign ult i64 %29, 256
  br i1 %30, label %22, label %.preheader71, !llvm.loop !10

..preheader70_crit_edge:                          ; preds = %32
  br label %.preheader70

.preheader70:                                     ; preds = %..preheader70_crit_edge, %.preheader71
  %31 = icmp ugt i64 %.010.lcssa, 1
  br i1 %31, label %.lr.ph88, label %57

.lr.ph88:                                         ; preds = %.preheader70
  br label %36

32:                                               ; preds = %.lr.ph86, %32
  %.2485 = phi i64 [ %.010.lcssa, %.lr.ph86 ], [ %35, %32 ]
  %33 = trunc i64 %.010.lcssa to i32
  %34 = trunc i64 %.2485 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %33, i32 noundef %34)
  %35 = add i64 %.2485, -1
  %.not = icmp eq i64 %35, 0
  br i1 %.not, label %..preheader70_crit_edge, label %32, !llvm.loop !11

36:                                               ; preds = %.lr.ph88, %36
  %.21287 = phi i64 [ %.010.lcssa, %.lr.ph88 ], [ %37, %36 ]
  %37 = add i64 %.21287, -1
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
  %48 = getelementptr [8 x i8], ptr %3, i64 %.21287
  %49 = getelementptr i8, ptr %48, i64 2040
  store i64 %47, ptr %49, align 8
  %50 = trunc i64 %.21287 to i32
  %51 = add i32 %50, 255
  %52 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %38
  store i32 %51, ptr %52, align 4
  %53 = sub i32 -255, %50
  %54 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %42
  store i32 %53, ptr %54, align 4
  %55 = add i64 %.21287, 255
  store i64 %55, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %41, i32 noundef 1)
  %56 = icmp ugt i64 %37, 1
  br i1 %56, label %36, label %._crit_edge89, !llvm.loop !12

._crit_edge89:                                    ; preds = %36
  %split = phi i64 [ %37, %36 ]
  br label %57

57:                                               ; preds = %._crit_edge89, %.preheader70
  %.212.lcssa = phi i64 [ %split, %._crit_edge89 ], [ %.010.lcssa, %.preheader70 ]
  %58 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %59 = getelementptr inbounds nuw i8, ptr %58, i64 1024
  store i32 0, ptr %59, align 4
  br label %60

60:                                               ; preds = %57, %80
  %.039103 = phi i64 [ 0, %57 ], [ %.140, %80 ]
  %.042102 = phi i64 [ 0, %57 ], [ %81, %80 ]
  %.045101 = phi i64 [ 0, %57 ], [ %.146, %80 ]
  %61 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.042102
  %62 = load i64, ptr %61, align 8
  %.not53 = icmp eq i64 %62, 0
  br i1 %.not53, label %63, label %.preheader69

.preheader69:                                     ; preds = %60
  %.037.in90 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.042102
  %.03791 = load i32, ptr %.037.in90, align 4
  %.not5492 = icmp eq i32 %.03791, 0
  br i1 %.not5492, label %73, label %.lr.ph97

.lr.ph97:                                         ; preds = %.preheader69
  br label %66

63:                                               ; preds = %60
  %64 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042102
  store i32 0, ptr %64, align 4
  %65 = getelementptr inbounds nuw i8, ptr %7, i64 %.042102
  store i8 0, ptr %65, align 1
  br label %80

66:                                               ; preds = %.lr.ph97, %66
  %.03796 = phi i32 [ %.03791, %.lr.ph97 ], [ %.037, %66 ]
  %.395 = phi i64 [ 0, %.lr.ph97 ], [ %72, %66 ]
  %.0594 = phi i64 [ 1, %.lr.ph97 ], [ %71, %66 ]
  %.04393 = phi i64 [ 0, %.lr.ph97 ], [ %.144, %66 ]
  %67 = icmp slt i32 %.03796, 0
  %68 = add i64 %.04393, %.0594
  %69 = sub nsw i32 0, %.03796
  %.144 = select i1 %67, i64 %68, i64 %.04393
  %.138 = select i1 %67, i32 %69, i32 %.03796
  %70 = zext nneg i32 %.138 to i64
  %71 = shl i64 %.0594, 1
  %72 = add i64 %.395, 1
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %70
  %.037 = load i32, ptr %.037.in, align 4
  %.not54 = icmp eq i32 %.037, 0
  br i1 %.not54, label %._crit_edge98, label %66, !llvm.loop !13

._crit_edge98:                                    ; preds = %66
  %split99 = phi i64 [ %.144, %66 ]
  %split100 = phi i64 [ %72, %66 ]
  br label %73

73:                                               ; preds = %._crit_edge98, %.preheader69
  %.043.lcssa = phi i64 [ %split99, %._crit_edge98 ], [ 0, %.preheader69 ]
  %.3.lcssa = phi i64 [ %split100, %._crit_edge98 ], [ 0, %.preheader69 ]
  %74 = trunc i64 %.043.lcssa to i32
  %75 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042102
  store i32 %74, ptr %75, align 4
  %76 = trunc i64 %.3.lcssa to i8
  %77 = getelementptr inbounds nuw i8, ptr %7, i64 %.042102
  store i8 %76, ptr %77, align 1
  %78 = icmp ugt i64 %.043.lcssa, %.045101
  %spec.select = select i1 %78, i64 %.043.lcssa, i64 %.045101
  %79 = icmp ugt i64 %.3.lcssa, %.039103
  %.241 = select i1 %79, i64 %.3.lcssa, i64 %.039103
  br label %80

80:                                               ; preds = %63, %73
  %.146 = phi i64 [ %spec.select, %73 ], [ %.045101, %63 ]
  %.140 = phi i64 [ %.241, %73 ], [ %.039103, %63 ]
  %81 = add nuw nsw i64 %.042102, 1
  %82 = icmp samesign ult i64 %81, 256
  br i1 %82, label %60, label %83, !llvm.loop !14

83:                                               ; preds = %80
  %.045.lcssa = phi i64 [ %.146, %80 ]
  %.039.lcssa = phi i64 [ %.140, %80 ]
  %84 = icmp ugt i64 %.039.lcssa, 32
  br i1 %84, label %85, label %88

85:                                               ; preds = %83
  %86 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %87 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %86)
  call void @exit(i32 noundef 1) #9
  unreachable

88:                                               ; preds = %83
  %89 = icmp eq i64 %.045.lcssa, 0
  br i1 %89, label %91, label %.preheader68

.preheader68:                                     ; preds = %88
  %90 = icmp ult i64 0, %1
  br i1 %90, label %.lr.ph120, label %136

.lr.ph120:                                        ; preds = %.preheader68
  br label %94

91:                                               ; preds = %88
  %92 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %93 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %92)
  call void @exit(i32 noundef 1) #9
  unreachable

94:                                               ; preds = %.lr.ph120, %132
  %.01119 = phi i32 [ -1, %.lr.ph120 ], [ %.1.lcssa, %132 ]
  %.16118 = phi i64 [ 0, %.lr.ph120 ], [ %134, %132 ]
  %.024117 = phi i8 [ 0, %.lr.ph120 ], [ %.125.lcssa, %132 ]
  %.028116 = phi i64 [ 0, %.lr.ph120 ], [ %.129.lcssa, %132 ]
  %.134115 = phi ptr [ %0, %.lr.ph120 ], [ %133, %132 ]
  %95 = load i8, ptr %.134115, align 1
  %96 = zext i8 %95 to i64
  %97 = getelementptr inbounds nuw i8, ptr %7, i64 %96
  %98 = load i8, ptr %97, align 1
  %99 = zext i8 %98 to i32
  %100 = add nsw i32 %99, -1
  %101 = shl nuw i32 1, %100
  %102 = sext i32 %101 to i64
  %103 = zext i8 %95 to i64
  %104 = zext i8 %98 to i64
  %105 = icmp ult i64 0, %104
  br i1 %105, label %.lr.ph110, label %132

.lr.ph110:                                        ; preds = %94
  br label %106

106:                                              ; preds = %.lr.ph110, %120
  %107 = phi i64 [ %103, %.lr.ph110 ], [ %129, %120 ]
  %.1108 = phi i32 [ %.01119, %.lr.ph110 ], [ %.2, %120 ]
  %.4107 = phi i64 [ 0, %.lr.ph110 ], [ %128, %120 ]
  %.015106 = phi i64 [ %102, %.lr.ph110 ], [ %127, %120 ]
  %.125105 = phi i8 [ %.024117, %.lr.ph110 ], [ %spec.select56, %120 ]
  %.129104 = phi i64 [ %.028116, %.lr.ph110 ], [ %.230, %120 ]
  %108 = phi i8 [ %95, %.lr.ph110 ], [ %121, %120 ]
  %109 = icmp eq i32 %.1108, 7
  br i1 %109, label %110, label %117

110:                                              ; preds = %106
  %111 = getelementptr inbounds nuw i8, ptr %11, i64 %.129104
  store i8 %.125105, ptr %111, align 1
  %112 = add i64 %.129104, 1
  %113 = icmp eq i64 %112, %1
  br i1 %113, label %114, label %._crit_edge

._crit_edge:                                      ; preds = %110
  %.pre59 = load i8, ptr %.134115, align 1
  %.pre60 = zext i8 %.pre59 to i64
  br label %120

114:                                              ; preds = %110
  %115 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %116 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %115)
  call void @exit(i32 noundef 1) #9
  unreachable

117:                                              ; preds = %106
  %118 = add nsw i32 %.1108, 1
  %119 = shl i8 %.125105, 1
  br label %120

120:                                              ; preds = %._crit_edge, %117
  %.pre-phi = phi i64 [ %.pre60, %._crit_edge ], [ %107, %117 ]
  %121 = phi i8 [ %108, %117 ], [ %.pre59, %._crit_edge ]
  %.230 = phi i64 [ %.129104, %117 ], [ %112, %._crit_edge ]
  %.226 = phi i8 [ %119, %117 ], [ 0, %._crit_edge ]
  %.2 = phi i32 [ %118, %117 ], [ 0, %._crit_edge ]
  %122 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.pre-phi
  %123 = load i32, ptr %122, align 4
  %124 = zext i32 %123 to i64
  %125 = and i64 %.015106, %124
  %.not52 = icmp eq i64 %125, 0
  %126 = or disjoint i8 %.226, 1
  %spec.select56 = select i1 %.not52, i8 %.226, i8 %126
  %127 = lshr i64 %.015106, 1
  %128 = add nuw nsw i64 %.4107, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  %129 = zext i8 %121 to i64
  %130 = zext i8 %.pre to i64
  %131 = icmp ult i64 %128, %130
  br i1 %131, label %106, label %._crit_edge111, !llvm.loop !15

._crit_edge111:                                   ; preds = %120
  %split112 = phi i64 [ %.230, %120 ]
  %split113 = phi i8 [ %spec.select56, %120 ]
  %split114 = phi i32 [ %.2, %120 ]
  br label %132

132:                                              ; preds = %._crit_edge111, %94
  %.129.lcssa = phi i64 [ %split112, %._crit_edge111 ], [ %.028116, %94 ]
  %.125.lcssa = phi i8 [ %split113, %._crit_edge111 ], [ %.024117, %94 ]
  %.1.lcssa = phi i32 [ %split114, %._crit_edge111 ], [ %.01119, %94 ]
  %133 = getelementptr inbounds nuw i8, ptr %.134115, i64 1
  %134 = add i64 %.16118, 1
  %135 = icmp ult i64 %134, %1
  br i1 %135, label %94, label %._crit_edge121, !llvm.loop !16

._crit_edge121:                                   ; preds = %132
  %split122 = phi i64 [ %.129.lcssa, %132 ]
  %split123 = phi i8 [ %.125.lcssa, %132 ]
  %split124 = phi i32 [ %.1.lcssa, %132 ]
  br label %136

136:                                              ; preds = %._crit_edge121, %.preheader68
  %.028.lcssa = phi i64 [ %split122, %._crit_edge121 ], [ 0, %.preheader68 ]
  %.024.lcssa = phi i8 [ %split123, %._crit_edge121 ], [ 0, %.preheader68 ]
  %.01.lcssa = phi i32 [ %split124, %._crit_edge121 ], [ -1, %.preheader68 ]
  %137 = sub nsw i32 7, %.01.lcssa
  %138 = zext i8 %.024.lcssa to i32
  %139 = shl i32 %138, %137
  %140 = trunc i32 %139 to i8
  %141 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %140, ptr %141, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %142

.preheader67:                                     ; preds = %168
  br label %171

142:                                              ; preds = %136, %168
  %.0133 = phi ptr [ %9, %136 ], [ %144, %168 ]
  %.27132 = phi i64 [ 0, %136 ], [ %169, %168 ]
  %143 = trunc nuw i64 %.27132 to i8
  store i8 %143, ptr %.0133, align 1
  %144 = getelementptr inbounds nuw i8, ptr %.0133, i64 1
  %145 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.27132
  %146 = load i32, ptr %145, align 4
  %147 = getelementptr inbounds nuw i8, ptr %7, i64 %.27132
  %148 = load i8, ptr %147, align 1
  %149 = zext i8 %148 to i32
  %150 = or i32 %146, %149
  %.not50 = icmp eq i32 %150, 0
  br i1 %.not50, label %168, label %151

151:                                              ; preds = %142
  %152 = add nsw i32 %149, -1
  %153 = shl nuw i32 1, %152
  %154 = sext i32 %153 to i64
  %155 = zext i8 %148 to i64
  %156 = icmp ult i64 0, %155
  br i1 %156, label %.lr.ph129, label %166

.lr.ph129:                                        ; preds = %151
  br label %157

157:                                              ; preds = %.lr.ph129, %157
  %.5127 = phi i64 [ 0, %.lr.ph129 ], [ %164, %157 ]
  %.116126 = phi i64 [ %154, %.lr.ph129 ], [ %163, %157 ]
  %.019125 = phi i32 [ 0, %.lr.ph129 ], [ %spec.select57, %157 ]
  %158 = shl i32 %.019125, 1
  %159 = or disjoint i32 %158, 1
  %160 = zext i32 %146 to i64
  %161 = and i64 %.116126, %160
  %.not51 = icmp eq i64 %161, 0
  %162 = add i32 %158, 2
  %spec.select57 = select i1 %.not51, i32 %159, i32 %162
  %163 = lshr i64 %.116126, 1
  %164 = add nuw nsw i64 %.5127, 1
  %165 = icmp ult i64 %164, %155
  br i1 %165, label %157, label %._crit_edge130, !llvm.loop !17

._crit_edge130:                                   ; preds = %157
  %split131 = phi i32 [ %spec.select57, %157 ]
  br label %166

166:                                              ; preds = %._crit_edge130, %151
  %.019.lcssa = phi i32 [ %split131, %._crit_edge130 ], [ 0, %151 ]
  %167 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.27132
  store i32 %.019.lcssa, ptr %167, align 4
  br label %168

168:                                              ; preds = %142, %166
  %169 = add nuw nsw i64 %.27132, 1
  %170 = icmp samesign ult i64 %169, 256
  br i1 %170, label %142, label %.preheader67, !llvm.loop !18

.preheader66:                                     ; preds = %.critedge
  br label %190

171:                                              ; preds = %.preheader67, %.critedge
  %.6135 = phi i64 [ 1, %.preheader67 ], [ %188, %.critedge ]
  %172 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.6135
  %173 = load i32, ptr %172, align 4
  %174 = getelementptr inbounds nuw i8, ptr %9, i64 %.6135
  %175 = load i8, ptr %174, align 1
  br label %176

176:                                              ; preds = %171, %181
  %.38134 = phi i64 [ %.6135, %171 ], [ %185, %181 ]
  %177 = getelementptr [4 x i8], ptr %8, i64 %.38134
  %178 = getelementptr i8, ptr %177, i64 -4
  %179 = load i32, ptr %178, align 4
  %180 = icmp ugt i32 %179, %173
  br i1 %180, label %181, label %.critedge

181:                                              ; preds = %176
  store i32 %179, ptr %177, align 4
  %182 = getelementptr i8, ptr %9, i64 %.38134
  %183 = getelementptr i8, ptr %182, i64 -1
  %184 = load i8, ptr %183, align 1
  store i8 %184, ptr %182, align 1
  %185 = add i64 %.38134, -1
  %.not49 = icmp eq i64 %185, 0
  br i1 %.not49, label %.critedge, label %176, !llvm.loop !19

.critedge:                                        ; preds = %181, %176
  %.38.lcssa = phi i64 [ %185, %181 ], [ %.38134, %176 ]
  %186 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %173, ptr %186, align 4
  %187 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %175, ptr %187, align 1
  %188 = add nuw nsw i64 %.6135, 1
  %189 = icmp samesign ult i64 %188, 256
  br i1 %189, label %171, label %.preheader66, !llvm.loop !20

190:                                              ; preds = %190, %.preheader66
  %.49 = phi i64 [ %194, %190 ], [ 0, %.preheader66 ]
  %191 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %192 = load i32, ptr %191, align 4
  %193 = icmp eq i32 %192, 0
  %194 = add i64 %.49, 1
  br i1 %193, label %190, label %.preheader, !llvm.loop !21

.preheader:                                       ; preds = %190
  %.49.lcssa = phi i64 [ %.49, %190 ]
  %195 = icmp ult i64 0, %1
  br i1 %195, label %.lr.ph142, label %220

.lr.ph142:                                        ; preds = %.preheader
  br label %196

196:                                              ; preds = %.lr.ph142, %215
  %.7141 = phi i64 [ %.49.lcssa, %.lr.ph142 ], [ %.9, %215 ]
  %.313140 = phi i64 [ 0, %.lr.ph142 ], [ %.414, %215 ]
  %.217139 = phi i64 [ 128, %.lr.ph142 ], [ %.318, %215 ]
  %.221138 = phi i32 [ 0, %.lr.ph142 ], [ %.423, %215 ]
  %.031137 = phi ptr [ %11, %.lr.ph142 ], [ %.132, %215 ]
  %.235136 = phi ptr [ %0, %.lr.ph142 ], [ %.336, %215 ]
  %197 = shl i32 %.221138, 1
  %198 = or disjoint i32 %197, 1
  %199 = load i8, ptr %.031137, align 1
  %200 = zext i8 %199 to i64
  %201 = and i64 %.217139, %200
  %.not48 = icmp eq i64 %201, 0
  %202 = add i32 %197, 2
  %spec.select58 = select i1 %.not48, i32 %198, i32 %202
  br label %203

203:                                              ; preds = %203, %196
  %.8 = phi i64 [ %.7141, %196 ], [ %207, %203 ]
  %204 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %205 = load i32, ptr %204, align 4
  %206 = icmp ult i32 %205, %spec.select58
  %207 = add i64 %.8, 1
  br i1 %206, label %203, label %208, !llvm.loop !22

208:                                              ; preds = %203
  %.8.lcssa = phi i64 [ %.8, %203 ]
  %.lcssa = phi i32 [ %205, %203 ]
  %209 = icmp eq i32 %spec.select58, %.lcssa
  br i1 %209, label %210, label %215

210:                                              ; preds = %208
  %211 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %212 = load i8, ptr %211, align 1
  store i8 %212, ptr %.235136, align 1
  %213 = getelementptr inbounds nuw i8, ptr %.235136, i64 1
  %214 = add i64 %.313140, 1
  br label %215

215:                                              ; preds = %210, %208
  %.336 = phi ptr [ %213, %210 ], [ %.235136, %208 ]
  %.423 = phi i32 [ 0, %210 ], [ %spec.select58, %208 ]
  %.414 = phi i64 [ %214, %210 ], [ %.313140, %208 ]
  %.9 = phi i64 [ %.49.lcssa, %210 ], [ %.8.lcssa, %208 ]
  %216 = icmp ugt i64 %.217139, 1
  %217 = lshr i64 %.217139, 1
  %218 = getelementptr inbounds nuw i8, ptr %.031137, i64 1
  %.132 = select i1 %216, ptr %.031137, ptr %218
  %.318 = select i1 %216, i64 %217, i64 128
  %219 = icmp ult i64 %.414, %1
  br i1 %219, label %196, label %._crit_edge143, !llvm.loop !23

._crit_edge143:                                   ; preds = %215
  br label %220

220:                                              ; preds = %._crit_edge143, %.preheader
  call void @free(ptr noundef %11) #8
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
  %.not6 = icmp sgt i32 %3, %9
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %4
  br label %10

.._crit_edge_crit_edge:                           ; preds = %36
  %split9 = phi i32 [ %.0, %36 ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %4
  %.01.lcssa = phi i32 [ %split9, %.._crit_edge_crit_edge ], [ %3, %4 ]
  %.pre = shl i64 %8, 32
  br label %40

10:                                               ; preds = %.lr.ph, %36
  %.017 = phi i32 [ %3, %.lr.ph ], [ %.0, %36 ]
  %11 = shl nsw i32 %.017, 1
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
  %24 = or disjoint i32 %11, 1
  %spec.select = select i1 %23, i32 %24, i32 %11
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
  %37 = sext i32 %.017 to i64
  %38 = getelementptr [8 x i8], ptr %1, i64 %37
  %39 = getelementptr i8, ptr %38, i64 -8
  store i64 %32, ptr %39, align 8
  %.not = icmp sgt i32 %.0, %9
  br i1 %.not, label %.._crit_edge_crit_edge, label %10, !llvm.loop !24

split:                                            ; preds = %25
  %sext.lcssa = phi i64 [ %sext, %25 ]
  %.01.lcssa4 = phi i32 [ %.017, %25 ]
  br label %40

40:                                               ; preds = %split, %._crit_edge
  %.015 = phi i32 [ %.01.lcssa4, %split ], [ %.01.lcssa, %._crit_edge ]
  %sext2.pre-phi = phi i64 [ %sext.lcssa, %split ], [ %.pre, %._crit_edge ]
  %41 = ashr exact i64 %sext2.pre-phi, 32
  %42 = sext i32 %.015 to i64
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
  %6 = icmp sge i32 %.01, %0
  br i1 %6, label %.loopexit, label %7, !llvm.loop !25

7:                                                ; preds = %.preheader, %5
  %.014 = phi i32 [ 1, %.preheader ], [ %.01, %5 ]
  %8 = load ptr, ptr %4, align 8
  %9 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(4) @.str.4) #8
  %.not = icmp eq i32 %9, 0
  %10 = add nuw nsw i32 %.014, 1
  br i1 %.not, label %.loopexit, label %5

.loopexit:                                        ; preds = %7, %5
  %.0.ph = phi i1 [ true, %5 ], [ false, %7 ]
  br label %11

11:                                               ; preds = %.loopexit, %2
  %.0 = phi i1 [ true, %2 ], [ %.0.ph, %.loopexit ]
  %12 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %13

13:                                               ; preds = %11, %13
  %.125 = phi i32 [ 0, %11 ], [ %14, %13 ]
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  %14 = add nuw nsw i32 %.125, 1
  %15 = icmp samesign ult i32 %14, 30
  br i1 %15, label %13, label %16, !llvm.loop !26

16:                                               ; preds = %13
  call void @free(ptr noundef %12) #8
  br i1 %.0, label %20, label %17

17:                                               ; preds = %16
  %18 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.5, double noundef 0.000000e+00) #8
  br label %23

20:                                               ; preds = %16
  %21 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.6, double noundef 0.000000e+00) #8
  br label %23

23:                                               ; preds = %20, %17
  %24 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %25 = call i32 @fflush(ptr noundef %24) #8
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

declare dso_local i32 @fflush(ptr noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal range(i64 -1, 32) i64 @random4() #0 {
  %1 = load i32, ptr @seed, align 4
  %2 = xor i32 %1, 123459876
  %3 = sdiv i32 %2, 127773
  %.neg = mul nsw i32 %3, -127773
  %4 = add i32 %.neg, %2
  %5 = mul nsw i32 %4, 16807
  %.neg1 = mul nsw i32 %3, -2836
  %6 = add i32 %.neg1, %5
  store i32 %6, ptr @seed, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = add nsw i32 %6, 2147483647
  store i32 %9, ptr @seed, align 4
  br label %10

10:                                               ; preds = %8, %0
  %11 = phi i32 [ %9, %8 ], [ %6, %0 ]
  %12 = srem i32 %11, 32
  %13 = sext i32 %12 to i64
  %14 = xor i32 %11, 123459876
  store i32 %14, ptr @seed, align 4
  ret i64 %13
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) #6

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }
attributes #9 = { cold noreturn nounwind }

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
