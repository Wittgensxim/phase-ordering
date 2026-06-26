; ModuleID = 'results\paper_full\CoyoteBench_huffbench\round_004\output.ll'
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
  %exitcond1.not = icmp eq i64 %0, 0
  br i1 %exitcond1.not, label %8, label %.lr.ph

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
  %exitcond7.not = icmp eq i64 %1, 0
  br i1 %exitcond7.not, label %.preheader6, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %12

..preheader6_crit_edge:                           ; preds = %12
  br label %.preheader6

.preheader6:                                      ; preds = %..preheader6_crit_edge, %2
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
  br i1 %exitcond.not, label %..preheader6_crit_edge, label %12, !llvm.loop !9

.preheader5:                                      ; preds = %26
  %.not13 = icmp eq i64 %.111, 0
  br i1 %.not13, label %.preheader4, label %.lr.ph15

.lr.ph15:                                         ; preds = %.preheader5
  br label %29

20:                                               ; preds = %.preheader6, %26
  %.1312 = phi i64 [ 0, %.preheader6 ], [ %27, %26 ]
  %.01011 = phi i64 [ 0, %.preheader6 ], [ %.111, %26 ]
  %21 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.1312
  %22 = load i64, ptr %21, align 8
  %.not8 = icmp eq i64 %22, 0
  br i1 %.not8, label %26, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.01011
  store i64 %.1312, ptr %24, align 8
  %25 = add i64 %.01011, 1
  br label %26

26:                                               ; preds = %23, %20
  %.111 = phi i64 [ %25, %23 ], [ %.01011, %20 ]
  %27 = add nuw nsw i64 %.1312, 1
  %exitcond13.not = icmp eq i64 %27, 256
  br i1 %exitcond13.not, label %.preheader5, label %20, !llvm.loop !10

..preheader4_crit_edge:                           ; preds = %29
  br label %.preheader4

.preheader4:                                      ; preds = %..preheader4_crit_edge, %.preheader5
  %28 = icmp ugt i64 %.111, 1
  br i1 %28, label %.lr.ph17, label %53

.lr.ph17:                                         ; preds = %.preheader4
  br label %33

29:                                               ; preds = %.lr.ph15, %29
  %.2414 = phi i64 [ %.111, %.lr.ph15 ], [ %32, %29 ]
  %30 = trunc i64 %.111 to i32
  %31 = trunc i64 %.2414 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %30, i32 noundef %31)
  %32 = add i64 %.2414, -1
  %.not = icmp eq i64 %32, 0
  br i1 %.not, label %..preheader4_crit_edge, label %29, !llvm.loop !11

33:                                               ; preds = %.lr.ph17, %33
  %.21216 = phi i64 [ %.111, %.lr.ph17 ], [ %34, %33 ]
  %34 = add i64 %.21216, -1
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
  %45 = add i64 %.21216, 255
  %46 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %45
  store i64 %44, ptr %46, align 8
  %47 = trunc i64 %45 to i32
  %48 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %35
  store i32 %47, ptr %48, align 4
  %49 = trunc i64 %.21216 to i32
  %50 = sub i32 -255, %49
  %51 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %39
  store i32 %50, ptr %51, align 4
  store i64 %45, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %38, i32 noundef 1)
  %52 = icmp ugt i64 %34, 1
  br i1 %52, label %33, label %._crit_edge18, !llvm.loop !12

._crit_edge18:                                    ; preds = %33
  br label %53

53:                                               ; preds = %._crit_edge18, %.preheader4
  %.212.lcssa = phi i64 [ %34, %._crit_edge18 ], [ %.111, %.preheader4 ]
  %54 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 1024
  store i32 0, ptr %55, align 4
  br label %56

56:                                               ; preds = %53, %74
  %.03933 = phi i64 [ 0, %53 ], [ %.140, %74 ]
  %.04232 = phi i64 [ 0, %53 ], [ %75, %74 ]
  %.04531 = phi i64 [ 0, %53 ], [ %.146, %74 ]
  %57 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04232
  %58 = load i64, ptr %57, align 8
  %.not6 = icmp eq i64 %58, 0
  br i1 %.not6, label %59, label %62

59:                                               ; preds = %56
  %60 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04232
  store i32 0, ptr %60, align 4
  %61 = getelementptr inbounds nuw i8, ptr %7, i64 %.04232
  store i8 0, ptr %61, align 1
  br label %74

62:                                               ; preds = %56
  %.037.in19 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.04232
  %.03720 = load i32, ptr %.037.in19, align 4
  %.not721 = icmp eq i32 %.03720, 0
  br i1 %.not721, label %69, label %.lr.ph27

.lr.ph27:                                         ; preds = %62
  br label %63

63:                                               ; preds = %.lr.ph27, %63
  %.03725 = phi i32 [ %.03720, %.lr.ph27 ], [ %.037, %63 ]
  %.324 = phi i64 [ 0, %.lr.ph27 ], [ %68, %63 ]
  %.0523 = phi i64 [ 1, %.lr.ph27 ], [ %67, %63 ]
  %.04322 = phi i64 [ 0, %.lr.ph27 ], [ %.144, %63 ]
  %64 = icmp slt i32 %.03725, 0
  %65 = select i1 %64, i64 %.0523, i64 0
  %.144 = add i64 %.04322, %65
  %.138 = call i32 @llvm.abs.i32(i32 %.03725, i1 true)
  %66 = zext nneg i32 %.138 to i64
  %67 = shl i64 %.0523, 1
  %68 = add i64 %.324, 1
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %66
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %._crit_edge28, label %63, !llvm.loop !13

._crit_edge28:                                    ; preds = %63
  br label %69

69:                                               ; preds = %._crit_edge28, %62
  %.043.lcssa = phi i64 [ %.144, %._crit_edge28 ], [ 0, %62 ]
  %.3.lcssa = phi i64 [ %68, %._crit_edge28 ], [ 0, %62 ]
  %70 = trunc i64 %.043.lcssa to i32
  %71 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04232
  store i32 %70, ptr %71, align 4
  %72 = trunc i64 %.3.lcssa to i8
  %73 = getelementptr inbounds nuw i8, ptr %7, i64 %.04232
  store i8 %72, ptr %73, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.04531)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.03933)
  br label %74

74:                                               ; preds = %69, %59
  %.146 = phi i64 [ %spec.select, %69 ], [ %.04531, %59 ]
  %.140 = phi i64 [ %.241, %69 ], [ %.03933, %59 ]
  %75 = add nuw nsw i64 %.04232, 1
  %exitcond14.not = icmp eq i64 %75, 256
  br i1 %exitcond14.not, label %76, label %56, !llvm.loop !14

76:                                               ; preds = %74
  %77 = icmp ugt i64 %.140, 32
  br i1 %77, label %78, label %81

78:                                               ; preds = %76
  %79 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %80 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %79)
  call void @exit(i32 noundef 1) #11
  unreachable

81:                                               ; preds = %76
  %82 = icmp eq i64 %.146, 0
  br i1 %82, label %83, label %.preheader3

.preheader3:                                      ; preds = %81
  %exitcond1546.not = icmp eq i64 %1, 0
  br i1 %exitcond1546.not, label %125, label %.lr.ph52

.lr.ph52:                                         ; preds = %.preheader3
  br label %86

83:                                               ; preds = %81
  %84 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %85 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %84)
  call void @exit(i32 noundef 1) #11
  unreachable

86:                                               ; preds = %.lr.ph52, %118
  %.0151 = phi i32 [ -1, %.lr.ph52 ], [ %.1.lcssa, %118 ]
  %.1650 = phi i64 [ 0, %.lr.ph52 ], [ %120, %118 ]
  %.02449 = phi i8 [ 0, %.lr.ph52 ], [ %.125.lcssa, %118 ]
  %.02848 = phi i64 [ 0, %.lr.ph52 ], [ %.129.lcssa, %118 ]
  %.13447 = phi ptr [ %0, %.lr.ph52 ], [ %119, %118 ]
  %87 = load i8, ptr %.13447, align 1
  %88 = zext i8 %87 to i64
  %89 = getelementptr inbounds nuw i8, ptr %7, i64 %88
  %90 = load i8, ptr %89, align 1
  %.not77 = icmp eq i8 %90, 0
  br i1 %.not77, label %118, label %.lr.ph41

.lr.ph41:                                         ; preds = %86
  %91 = zext i8 %90 to i32
  %92 = add nsw i32 %91, -1
  %93 = shl nuw i32 1, %92
  %94 = sext i32 %93 to i64
  br label %95

95:                                               ; preds = %.lr.ph41, %108
  %.139 = phi i32 [ %.0151, %.lr.ph41 ], [ %.2, %108 ]
  %.437 = phi i64 [ 0, %.lr.ph41 ], [ %115, %108 ]
  %.01536 = phi i64 [ %94, %.lr.ph41 ], [ %114, %108 ]
  %.12535 = phi i8 [ %.02449, %.lr.ph41 ], [ %.327, %108 ]
  %.12934 = phi i64 [ %.02848, %.lr.ph41 ], [ %.230, %108 ]
  %96 = phi i8 [ %87, %.lr.ph41 ], [ %.pre-phi.in, %108 ]
  %97 = icmp eq i32 %.139, 7
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = getelementptr inbounds nuw i8, ptr %11, i64 %.12934
  store i8 %.12535, ptr %99, align 1
  %100 = add i64 %.12934, 1
  %101 = icmp eq i64 %100, %1
  br i1 %101, label %102, label %._crit_edge

._crit_edge:                                      ; preds = %98
  %.pre1 = load i8, ptr %.13447, align 1
  br label %108

102:                                              ; preds = %98
  %103 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %104 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %103)
  call void @exit(i32 noundef 1) #11
  unreachable

105:                                              ; preds = %95
  %106 = add nsw i32 %.139, 1
  %107 = shl i8 %.12535, 1
  br label %108

108:                                              ; preds = %105, %._crit_edge
  %.pre-phi.in = phi i8 [ %.pre1, %._crit_edge ], [ %96, %105 ]
  %.230 = phi i64 [ %100, %._crit_edge ], [ %.12934, %105 ]
  %.226 = phi i8 [ 0, %._crit_edge ], [ %107, %105 ]
  %.2 = phi i32 [ 0, %._crit_edge ], [ %106, %105 ]
  %.pre-phi = zext i8 %.pre-phi.in to i64
  %109 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.pre-phi
  %110 = load i32, ptr %109, align 4
  %111 = zext i32 %110 to i64
  %112 = and i64 %.01536, %111
  %.not5 = icmp ne i64 %112, 0
  %113 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %113
  %114 = lshr i64 %.01536, 1
  %115 = add nuw nsw i64 %.437, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  %116 = zext i8 %.pre to i64
  %117 = icmp samesign ult i64 %115, %116
  br i1 %117, label %95, label %._crit_edge42, !llvm.loop !15

._crit_edge42:                                    ; preds = %108
  br label %118

118:                                              ; preds = %._crit_edge42, %86
  %.129.lcssa = phi i64 [ %.230, %._crit_edge42 ], [ %.02848, %86 ]
  %.125.lcssa = phi i8 [ %.327, %._crit_edge42 ], [ %.02449, %86 ]
  %.1.lcssa = phi i32 [ %.2, %._crit_edge42 ], [ %.0151, %86 ]
  %119 = getelementptr inbounds nuw i8, ptr %.13447, i64 1
  %120 = add i64 %.1650, 1
  %exitcond15.not = icmp eq i64 %120, %1
  br i1 %exitcond15.not, label %._crit_edge53, label %86, !llvm.loop !16

._crit_edge53:                                    ; preds = %118
  %121 = sub nsw i32 7, %.1.lcssa
  %122 = zext i8 %.125.lcssa to i32
  %123 = shl i32 %122, %121
  %124 = trunc i32 %123 to i8
  br label %125

125:                                              ; preds = %._crit_edge53, %.preheader3
  %.028.lcssa = phi i64 [ %.129.lcssa, %._crit_edge53 ], [ 0, %.preheader3 ]
  %126 = phi i8 [ %124, %._crit_edge53 ], [ 0, %.preheader3 ]
  %127 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %126, ptr %127, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %128

.preheader2:                                      ; preds = %152
  br label %154

128:                                              ; preds = %125, %152
  %.066 = phi ptr [ %9, %125 ], [ %130, %152 ]
  %.2765 = phi i64 [ 0, %125 ], [ %153, %152 ]
  %129 = trunc nuw i64 %.2765 to i8
  store i8 %129, ptr %.066, align 1
  %130 = getelementptr inbounds nuw i8, ptr %.066, i64 1
  %131 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.2765
  %132 = load i32, ptr %131, align 4
  %133 = getelementptr inbounds nuw i8, ptr %7, i64 %.2765
  %134 = load i8, ptr %133, align 1
  %135 = zext i8 %134 to i32
  %136 = or i32 %132, %135
  %.not3 = icmp eq i32 %136, 0
  br i1 %.not3, label %152, label %137

137:                                              ; preds = %128
  %138 = zext i8 %134 to i64
  %exitcond1657.not = icmp eq i8 %134, 0
  br i1 %exitcond1657.not, label %150, label %.lr.ph62

.lr.ph62:                                         ; preds = %137
  %139 = add nsw i32 %135, -1
  %140 = shl nuw i32 1, %139
  %141 = sext i32 %140 to i64
  br label %142

142:                                              ; preds = %.lr.ph62, %142
  %.560 = phi i64 [ 0, %.lr.ph62 ], [ %149, %142 ]
  %.11659 = phi i64 [ %141, %.lr.ph62 ], [ %148, %142 ]
  %.01958 = phi i32 [ 0, %.lr.ph62 ], [ %spec.select1, %142 ]
  %143 = shl i32 %.01958, 1
  %144 = or disjoint i32 %143, 1
  %145 = zext i32 %132 to i64
  %146 = and i64 %.11659, %145
  %.not4 = icmp eq i64 %146, 0
  %147 = add i32 %143, 2
  %spec.select1 = select i1 %.not4, i32 %144, i32 %147
  %148 = lshr i64 %.11659, 1
  %149 = add nuw nsw i64 %.560, 1
  %exitcond16.not = icmp eq i64 %149, %138
  br i1 %exitcond16.not, label %._crit_edge63, label %142, !llvm.loop !17

._crit_edge63:                                    ; preds = %142
  br label %150

150:                                              ; preds = %._crit_edge63, %137
  %.019.lcssa = phi i32 [ %spec.select1, %._crit_edge63 ], [ 0, %137 ]
  %151 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.2765
  store i32 %.019.lcssa, ptr %151, align 4
  br label %152

152:                                              ; preds = %150, %128
  %153 = add nuw nsw i64 %.2765, 1
  %exitcond17.not = icmp eq i64 %153, 256
  br i1 %exitcond17.not, label %.preheader2, label %128, !llvm.loop !18

.preheader1:                                      ; preds = %.critedge
  br label %172

154:                                              ; preds = %.preheader2, %.critedge
  %.668 = phi i64 [ 1, %.preheader2 ], [ %171, %.critedge ]
  %155 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.668
  %156 = load i32, ptr %155, align 4
  %157 = getelementptr inbounds nuw i8, ptr %9, i64 %.668
  %158 = load i8, ptr %157, align 1
  br label %159

159:                                              ; preds = %154, %164
  %.3867 = phi i64 [ %.668, %154 ], [ %160, %164 ]
  %160 = add nsw i64 %.3867, -1
  %161 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %160
  %162 = load i32, ptr %161, align 4
  %163 = icmp ugt i32 %162, %156
  br i1 %163, label %164, label %.critedge

164:                                              ; preds = %159
  %165 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.3867
  store i32 %162, ptr %165, align 4
  %166 = getelementptr inbounds nuw i8, ptr %9, i64 %160
  %167 = load i8, ptr %166, align 1
  %168 = getelementptr inbounds nuw i8, ptr %9, i64 %.3867
  store i8 %167, ptr %168, align 1
  %.not2 = icmp eq i64 %160, 0
  br i1 %.not2, label %.critedge, label %159, !llvm.loop !19

.critedge:                                        ; preds = %159, %164
  %.38.lcssa = phi i64 [ %.3867, %159 ], [ 0, %164 ]
  %169 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %156, ptr %169, align 4
  %170 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %158, ptr %170, align 1
  %171 = add nuw nsw i64 %.668, 1
  %exitcond18.not = icmp eq i64 %171, 256
  br i1 %exitcond18.not, label %.preheader1, label %154, !llvm.loop !20

172:                                              ; preds = %172, %.preheader1
  %.49 = phi i64 [ %176, %172 ], [ 0, %.preheader1 ]
  %173 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %174 = load i32, ptr %173, align 4
  %175 = icmp eq i32 %174, 0
  %176 = add i64 %.49, 1
  br i1 %175, label %172, label %.preheader, !llvm.loop !21

.preheader:                                       ; preds = %172
  %.not78 = icmp eq i64 %1, 0
  br i1 %.not78, label %200, label %.lr.ph75

.lr.ph75:                                         ; preds = %.preheader
  br label %177

177:                                              ; preds = %.lr.ph75, %196
  %.774 = phi i64 [ %.49, %.lr.ph75 ], [ %.9, %196 ]
  %.31373 = phi i64 [ 0, %.lr.ph75 ], [ %.414, %196 ]
  %.21772 = phi i64 [ 128, %.lr.ph75 ], [ %.318, %196 ]
  %.22171 = phi i32 [ 0, %.lr.ph75 ], [ %.423, %196 ]
  %.03170 = phi ptr [ %11, %.lr.ph75 ], [ %.132, %196 ]
  %.23569 = phi ptr [ %0, %.lr.ph75 ], [ %.336, %196 ]
  %178 = shl i32 %.22171, 1
  %179 = or disjoint i32 %178, 1
  %180 = load i8, ptr %.03170, align 1
  %181 = zext i8 %180 to i64
  %182 = and i64 %.21772, %181
  %.not1 = icmp eq i64 %182, 0
  %183 = add i32 %178, 2
  %spec.select2 = select i1 %.not1, i32 %179, i32 %183
  br label %184

184:                                              ; preds = %184, %177
  %.8 = phi i64 [ %.774, %177 ], [ %188, %184 ]
  %185 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %186 = load i32, ptr %185, align 4
  %187 = icmp ult i32 %186, %spec.select2
  %188 = add i64 %.8, 1
  br i1 %187, label %184, label %189, !llvm.loop !22

189:                                              ; preds = %184
  %190 = icmp eq i32 %spec.select2, %186
  br i1 %190, label %191, label %196

191:                                              ; preds = %189
  %192 = getelementptr inbounds nuw i8, ptr %9, i64 %.8
  %193 = load i8, ptr %192, align 1
  store i8 %193, ptr %.23569, align 1
  %194 = getelementptr inbounds nuw i8, ptr %.23569, i64 1
  %195 = add nuw i64 %.31373, 1
  br label %196

196:                                              ; preds = %191, %189
  %.336 = phi ptr [ %194, %191 ], [ %.23569, %189 ]
  %.423 = phi i32 [ 0, %191 ], [ %spec.select2, %189 ]
  %.414 = phi i64 [ %195, %191 ], [ %.31373, %189 ]
  %.9 = phi i64 [ %.49, %191 ], [ %.8, %189 ]
  %197 = icmp ult i64 %.21772, 2
  %198 = lshr i64 %.21772, 1
  %.132.idx = zext i1 %197 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.03170, i64 %.132.idx
  %.318 = select i1 %197, i64 128, i64 %198
  %199 = icmp ult i64 %.414, %1
  br i1 %199, label %177, label %._crit_edge76, !llvm.loop !23

._crit_edge76:                                    ; preds = %196
  br label %200

200:                                              ; preds = %._crit_edge76, %.preheader
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

.._crit_edge_crit_edge:                           ; preds = %37
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %4
  %.01.lcssa = phi i32 [ %.0, %.._crit_edge_crit_edge ], [ %3, %4 ]
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
  br i1 %36, label %split, label %37

37:                                               ; preds = %26
  %38 = sext i32 %.014 to i64
  %39 = getelementptr [8 x i8], ptr %1, i64 %38
  %40 = getelementptr i8, ptr %39, i64 -8
  store i64 %33, ptr %40, align 8
  %.not = icmp sgt i32 %.0, %10
  br i1 %.not, label %.._crit_edge_crit_edge, label %11, !llvm.loop !24

split:                                            ; preds = %26
  br label %41

41:                                               ; preds = %split, %._crit_edge
  %.012 = phi i32 [ %.014, %split ], [ %.01.lcssa, %._crit_edge ]
  %42 = ashr exact i64 %9, 32
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
  br label %7

5:                                                ; preds = %7
  %6 = add nuw i32 %.011, 1
  %exitcond.not = icmp eq i32 %6, %0
  br i1 %exitcond.not, label %.loopexit, label %7, !llvm.loop !25

7:                                                ; preds = %.preheader, %5
  %.011 = phi i32 [ 1, %.preheader ], [ %6, %5 ]
  %8 = load ptr, ptr %4, align 8
  %9 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(4) @.str.4) #10
  %.not = icmp ne i32 %9, 0
  br i1 %.not, label %5, label %.loopexit

.loopexit:                                        ; preds = %7, %5
  br label %10

10:                                               ; preds = %.loopexit, %2
  %.not1 = phi i1 [ true, %2 ], [ %.not, %.loopexit ]
  %11 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %12

12:                                               ; preds = %10, %12
  %.122 = phi i32 [ 0, %10 ], [ %13, %12 ]
  call void @compdecomp(ptr noundef %11, i64 noundef 10000000)
  %13 = add nuw nsw i32 %.122, 1
  %exitcond1.not = icmp eq i32 %13, 30
  br i1 %exitcond1.not, label %14, label %12, !llvm.loop !26

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
