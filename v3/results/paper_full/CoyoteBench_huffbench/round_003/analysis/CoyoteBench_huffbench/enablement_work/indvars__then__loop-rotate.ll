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
  %exitcond2 = icmp ne i64 0, %0
  br i1 %exitcond2, label %.lr.ph, label %8

.lr.ph:                                           ; preds = %1
  br label %3

3:                                                ; preds = %.lr.ph, %3
  %.014 = phi ptr [ %2, %.lr.ph ], [ %7, %3 ]
  %indvars.iv3 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %4 = call i64 @random4()
  %5 = getelementptr inbounds nuw i8, ptr @.str, i64 %4
  %6 = load i8, ptr %5, align 1
  store i8 %6, ptr %.014, align 1
  %7 = getelementptr inbounds nuw i8, ptr %.014, i64 1
  %indvars.iv.next = add nuw i64 %indvars.iv3, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %0
  br i1 %exitcond, label %3, label %._crit_edge, !llvm.loop !7

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
  %exitcond18 = icmp ne i64 0, %1
  br i1 %exitcond18, label %.lr.ph, label %.preheader6

.lr.ph:                                           ; preds = %2
  br label %12

..preheader6_crit_edge:                           ; preds = %12
  br label %.preheader6

.preheader6:                                      ; preds = %..preheader6_crit_edge, %2
  br label %20

12:                                               ; preds = %.lr.ph, %12
  %.0220 = phi i64 [ 0, %.lr.ph ], [ %19, %12 ]
  %.03319 = phi ptr [ %0, %.lr.ph ], [ %18, %12 ]
  %13 = load i8, ptr %.03319, align 1
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %14
  %16 = load i64, ptr %15, align 8
  %17 = add i64 %16, 1
  store i64 %17, ptr %15, align 8
  %18 = getelementptr inbounds nuw i8, ptr %.03319, i64 1
  %19 = add i64 %.0220, 1
  %exitcond = icmp ne i64 %19, %1
  br i1 %exitcond, label %12, label %..preheader6_crit_edge, !llvm.loop !9

.preheader5:                                      ; preds = %26
  %.010.lcssa = phi i64 [ %.111, %26 ]
  %.not23 = icmp eq i64 %.010.lcssa, 0
  br i1 %.not23, label %.preheader4, label %.lr.ph25

.lr.ph25:                                         ; preds = %.preheader5
  br label %29

20:                                               ; preds = %.preheader6, %26
  %.1322 = phi i64 [ 0, %.preheader6 ], [ %27, %26 ]
  %.01021 = phi i64 [ 0, %.preheader6 ], [ %.111, %26 ]
  %21 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.1322
  %22 = load i64, ptr %21, align 8
  %.not8 = icmp eq i64 %22, 0
  br i1 %.not8, label %26, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.01021
  store i64 %.1322, ptr %24, align 8
  %25 = add i64 %.01021, 1
  br label %26

26:                                               ; preds = %23, %20
  %.111 = phi i64 [ %25, %23 ], [ %.01021, %20 ]
  %27 = add nuw nsw i64 %.1322, 1
  %exitcond13 = icmp ne i64 %27, 256
  br i1 %exitcond13, label %20, label %.preheader5, !llvm.loop !10

..preheader4_crit_edge:                           ; preds = %29
  br label %.preheader4

.preheader4:                                      ; preds = %..preheader4_crit_edge, %.preheader5
  %28 = icmp ugt i64 %.010.lcssa, 1
  br i1 %28, label %.lr.ph27, label %54

.lr.ph27:                                         ; preds = %.preheader4
  br label %33

29:                                               ; preds = %.lr.ph25, %29
  %.2424 = phi i64 [ %.010.lcssa, %.lr.ph25 ], [ %32, %29 ]
  %30 = trunc i64 %.010.lcssa to i32
  %31 = trunc i64 %.2424 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %30, i32 noundef %31)
  %32 = add i64 %.2424, -1
  %.not = icmp eq i64 %32, 0
  br i1 %.not, label %..preheader4_crit_edge, label %29, !llvm.loop !11

33:                                               ; preds = %.lr.ph27, %33
  %.21226 = phi i64 [ %.010.lcssa, %.lr.ph27 ], [ %34, %33 ]
  %34 = add i64 %.21226, -1
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
  %45 = add i64 %.21226, 255
  %46 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %45
  store i64 %44, ptr %46, align 8
  %47 = trunc i64 %45 to i32
  %48 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %35
  store i32 %47, ptr %48, align 4
  %49 = trunc i64 %.21226 to i32
  %50 = sub i32 -255, %49
  %51 = load i64, ptr %4, align 16
  %52 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %51
  store i32 %50, ptr %52, align 4
  store i64 %45, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %38, i32 noundef 1)
  %53 = icmp ugt i64 %34, 1
  br i1 %53, label %33, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %33
  %split = phi i64 [ %34, %33 ]
  br label %54

54:                                               ; preds = %._crit_edge, %.preheader4
  %.212.lcssa = phi i64 [ %split, %._crit_edge ], [ %.010.lcssa, %.preheader4 ]
  %55 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %56 = getelementptr inbounds nuw i8, ptr %55, i64 1024
  store i32 0, ptr %56, align 4
  br label %57

57:                                               ; preds = %54, %75
  %.03942 = phi i64 [ 0, %54 ], [ %.140, %75 ]
  %.04241 = phi i64 [ 0, %54 ], [ %76, %75 ]
  %.04540 = phi i64 [ 0, %54 ], [ %.146, %75 ]
  %58 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04241
  %59 = load i64, ptr %58, align 8
  %.not6 = icmp eq i64 %59, 0
  br i1 %.not6, label %60, label %63

60:                                               ; preds = %57
  %61 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04241
  store i32 0, ptr %61, align 4
  %62 = getelementptr inbounds nuw i8, ptr %7, i64 %.04241
  store i8 0, ptr %62, align 1
  br label %75

63:                                               ; preds = %57
  %.037.in28 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.04241
  %.03729 = load i32, ptr %.037.in28, align 4
  %.not730 = icmp eq i32 %.03729, 0
  br i1 %.not730, label %70, label %.lr.ph36

.lr.ph36:                                         ; preds = %63
  br label %64

64:                                               ; preds = %.lr.ph36, %64
  %.03734 = phi i32 [ %.03729, %.lr.ph36 ], [ %.037, %64 ]
  %.333 = phi i64 [ 0, %.lr.ph36 ], [ %69, %64 ]
  %.0532 = phi i64 [ 1, %.lr.ph36 ], [ %68, %64 ]
  %.04331 = phi i64 [ 0, %.lr.ph36 ], [ %.144, %64 ]
  %65 = icmp slt i32 %.03734, 0
  %66 = select i1 %65, i64 %.0532, i64 0
  %.144 = add i64 %.04331, %66
  %.138 = call i32 @llvm.abs.i32(i32 %.03734, i1 true)
  %67 = zext nneg i32 %.138 to i64
  %68 = shl i64 %.0532, 1
  %69 = add i64 %.333, 1
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %67
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %._crit_edge37, label %64, !llvm.loop !13

._crit_edge37:                                    ; preds = %64
  %split38 = phi i64 [ %.144, %64 ]
  %split39 = phi i64 [ %69, %64 ]
  br label %70

70:                                               ; preds = %._crit_edge37, %63
  %.043.lcssa = phi i64 [ %split38, %._crit_edge37 ], [ 0, %63 ]
  %.3.lcssa = phi i64 [ %split39, %._crit_edge37 ], [ 0, %63 ]
  %71 = trunc i64 %.043.lcssa to i32
  %72 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04241
  store i32 %71, ptr %72, align 4
  %73 = trunc i64 %.3.lcssa to i8
  %74 = getelementptr inbounds nuw i8, ptr %7, i64 %.04241
  store i8 %73, ptr %74, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.04540)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.03942)
  br label %75

75:                                               ; preds = %70, %60
  %.146 = phi i64 [ %spec.select, %70 ], [ %.04540, %60 ]
  %.140 = phi i64 [ %.241, %70 ], [ %.03942, %60 ]
  %76 = add nuw nsw i64 %.04241, 1
  %exitcond14 = icmp ne i64 %76, 256
  br i1 %exitcond14, label %57, label %77, !llvm.loop !14

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
  br i1 %83, label %84, label %.preheader3

.preheader3:                                      ; preds = %82
  %exitcond1554 = icmp ne i64 0, %1
  br i1 %exitcond1554, label %.lr.ph60, label %133

.lr.ph60:                                         ; preds = %.preheader3
  br label %87

84:                                               ; preds = %82
  %85 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %86 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %85)
  call void @exit(i32 noundef 1) #11
  unreachable

87:                                               ; preds = %.lr.ph60, %130
  %.0159 = phi i32 [ -1, %.lr.ph60 ], [ %.1.lcssa, %130 ]
  %.1658 = phi i64 [ 0, %.lr.ph60 ], [ %132, %130 ]
  %.02457 = phi i8 [ 0, %.lr.ph60 ], [ %.125.lcssa, %130 ]
  %.02856 = phi i64 [ 0, %.lr.ph60 ], [ %.129.lcssa, %130 ]
  %.13455 = phi ptr [ %0, %.lr.ph60 ], [ %131, %130 ]
  %88 = load i8, ptr %.13455, align 1
  %89 = zext i8 %88 to i64
  %90 = getelementptr inbounds nuw i8, ptr %7, i64 %89
  %91 = load i8, ptr %90, align 1
  %92 = zext i8 %91 to i32
  %93 = add nsw i32 %92, -1
  %94 = shl nuw i32 1, %93
  %95 = sext i32 %94 to i64
  %96 = load i8, ptr %.13455, align 1
  %97 = zext i8 %96 to i64
  %98 = getelementptr inbounds nuw i8, ptr %7, i64 %97
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i64
  %101 = icmp samesign ult i64 0, %100
  br i1 %101, label %.lr.ph49, label %130

.lr.ph49:                                         ; preds = %87
  br label %102

102:                                              ; preds = %.lr.ph49, %114
  %.147 = phi i32 [ %.0159, %.lr.ph49 ], [ %.2, %114 ]
  %.446 = phi i64 [ 0, %.lr.ph49 ], [ %123, %114 ]
  %.01545 = phi i64 [ %95, %.lr.ph49 ], [ %122, %114 ]
  %.12544 = phi i8 [ %.02457, %.lr.ph49 ], [ %.327, %114 ]
  %.12943 = phi i64 [ %.02856, %.lr.ph49 ], [ %.230, %114 ]
  %103 = icmp eq i32 %.147, 7
  br i1 %103, label %104, label %111

104:                                              ; preds = %102
  %105 = getelementptr inbounds nuw i8, ptr %11, i64 %.12943
  store i8 %.12544, ptr %105, align 1
  %106 = add i64 %.12943, 1
  %107 = icmp eq i64 %106, %1
  br i1 %107, label %108, label %114

108:                                              ; preds = %104
  %109 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %110 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %109)
  call void @exit(i32 noundef 1) #11
  unreachable

111:                                              ; preds = %102
  %112 = add nsw i32 %.147, 1
  %113 = shl i8 %.12544, 1
  br label %114

114:                                              ; preds = %111, %104
  %.230 = phi i64 [ %.12943, %111 ], [ %106, %104 ]
  %.226 = phi i8 [ %113, %111 ], [ 0, %104 ]
  %.2 = phi i32 [ %112, %111 ], [ 0, %104 ]
  %115 = load i8, ptr %.13455, align 1
  %116 = zext i8 %115 to i64
  %117 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %116
  %118 = load i32, ptr %117, align 4
  %119 = zext i32 %118 to i64
  %120 = and i64 %.01545, %119
  %.not5 = icmp ne i64 %120, 0
  %121 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %121
  %122 = lshr i64 %.01545, 1
  %123 = add nuw nsw i64 %.446, 1
  %124 = load i8, ptr %.13455, align 1
  %125 = zext i8 %124 to i64
  %126 = getelementptr inbounds nuw i8, ptr %7, i64 %125
  %127 = load i8, ptr %126, align 1
  %128 = zext i8 %127 to i64
  %129 = icmp samesign ult i64 %123, %128
  br i1 %129, label %102, label %._crit_edge50, !llvm.loop !15

._crit_edge50:                                    ; preds = %114
  %split51 = phi i64 [ %.230, %114 ]
  %split52 = phi i8 [ %.327, %114 ]
  %split53 = phi i32 [ %.2, %114 ]
  br label %130

130:                                              ; preds = %._crit_edge50, %87
  %.129.lcssa = phi i64 [ %split51, %._crit_edge50 ], [ %.02856, %87 ]
  %.125.lcssa = phi i8 [ %split52, %._crit_edge50 ], [ %.02457, %87 ]
  %.1.lcssa = phi i32 [ %split53, %._crit_edge50 ], [ %.0159, %87 ]
  %131 = getelementptr inbounds nuw i8, ptr %.13455, i64 1
  %132 = add i64 %.1658, 1
  %exitcond15 = icmp ne i64 %132, %1
  br i1 %exitcond15, label %87, label %._crit_edge61, !llvm.loop !16

._crit_edge61:                                    ; preds = %130
  %split62 = phi i64 [ %.129.lcssa, %130 ]
  %split63 = phi i8 [ %.125.lcssa, %130 ]
  %split64 = phi i32 [ %.1.lcssa, %130 ]
  br label %133

133:                                              ; preds = %._crit_edge61, %.preheader3
  %.028.lcssa = phi i64 [ %split62, %._crit_edge61 ], [ 0, %.preheader3 ]
  %.024.lcssa = phi i8 [ %split63, %._crit_edge61 ], [ 0, %.preheader3 ]
  %.01.lcssa = phi i32 [ %split64, %._crit_edge61 ], [ -1, %.preheader3 ]
  %134 = sub nsw i32 7, %.01.lcssa
  %135 = zext i8 %.024.lcssa to i32
  %136 = shl i32 %135, %134
  %137 = trunc i32 %136 to i8
  %138 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %137, ptr %138, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %139

.preheader2:                                      ; preds = %169
  br label %171

139:                                              ; preds = %133, %169
  %.073 = phi ptr [ %9, %133 ], [ %141, %169 ]
  %.2772 = phi i64 [ 0, %133 ], [ %170, %169 ]
  %140 = trunc nuw i64 %.2772 to i8
  store i8 %140, ptr %.073, align 1
  %141 = getelementptr inbounds nuw i8, ptr %.073, i64 1
  %142 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.2772
  %143 = load i32, ptr %142, align 4
  %144 = getelementptr inbounds nuw i8, ptr %7, i64 %.2772
  %145 = load i8, ptr %144, align 1
  %146 = zext i8 %145 to i32
  %147 = or i32 %143, %146
  %.not3 = icmp eq i32 %147, 0
  br i1 %.not3, label %169, label %148

148:                                              ; preds = %139
  %149 = add nsw i32 %146, -1
  %150 = shl nuw i32 1, %149
  %151 = sext i32 %150 to i64
  %152 = load i8, ptr %144, align 1
  %153 = zext i8 %152 to i64
  %154 = icmp samesign ult i64 0, %153
  br i1 %154, label %.lr.ph69, label %167

.lr.ph69:                                         ; preds = %148
  br label %155

155:                                              ; preds = %.lr.ph69, %155
  %.567 = phi i64 [ 0, %.lr.ph69 ], [ %163, %155 ]
  %.11666 = phi i64 [ %151, %.lr.ph69 ], [ %162, %155 ]
  %.01965 = phi i32 [ 0, %.lr.ph69 ], [ %spec.select1, %155 ]
  %156 = shl i32 %.01965, 1
  %157 = or disjoint i32 %156, 1
  %158 = load i32, ptr %142, align 4
  %159 = zext i32 %158 to i64
  %160 = and i64 %.11666, %159
  %.not4 = icmp eq i64 %160, 0
  %161 = add i32 %156, 2
  %spec.select1 = select i1 %.not4, i32 %157, i32 %161
  %162 = lshr i64 %.11666, 1
  %163 = add nuw nsw i64 %.567, 1
  %164 = load i8, ptr %144, align 1
  %165 = zext i8 %164 to i64
  %166 = icmp samesign ult i64 %163, %165
  br i1 %166, label %155, label %._crit_edge70, !llvm.loop !17

._crit_edge70:                                    ; preds = %155
  %split71 = phi i32 [ %spec.select1, %155 ]
  br label %167

167:                                              ; preds = %._crit_edge70, %148
  %.019.lcssa = phi i32 [ %split71, %._crit_edge70 ], [ 0, %148 ]
  %168 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.2772
  store i32 %.019.lcssa, ptr %168, align 4
  br label %169

169:                                              ; preds = %167, %139
  %170 = add nuw nsw i64 %.2772, 1
  %exitcond16 = icmp ne i64 %170, 256
  br i1 %exitcond16, label %139, label %.preheader2, !llvm.loop !18

.preheader1:                                      ; preds = %.critedge
  br label %189

171:                                              ; preds = %.preheader2, %.critedge
  %.675 = phi i64 [ 1, %.preheader2 ], [ %188, %.critedge ]
  %172 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.675
  %173 = load i32, ptr %172, align 4
  %174 = getelementptr inbounds nuw i8, ptr %9, i64 %.675
  %175 = load i8, ptr %174, align 1
  br label %176

176:                                              ; preds = %171, %181
  %.3874 = phi i64 [ %.675, %171 ], [ %177, %181 ]
  %177 = add nsw i64 %.3874, -1
  %178 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %177
  %179 = load i32, ptr %178, align 4
  %180 = icmp ugt i32 %179, %173
  br i1 %180, label %181, label %.critedge

181:                                              ; preds = %176
  %182 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.3874
  store i32 %179, ptr %182, align 4
  %183 = getelementptr inbounds nuw i8, ptr %9, i64 %177
  %184 = load i8, ptr %183, align 1
  %185 = getelementptr inbounds nuw i8, ptr %9, i64 %.3874
  store i8 %184, ptr %185, align 1
  %.not2 = icmp eq i64 %177, 0
  br i1 %.not2, label %.critedge, label %176, !llvm.loop !19

.critedge:                                        ; preds = %176, %181
  %.38.lcssa = phi i64 [ %.3874, %176 ], [ 0, %181 ]
  %186 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %173, ptr %186, align 4
  %187 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %175, ptr %187, align 1
  %188 = add nuw nsw i64 %.675, 1
  %exitcond17 = icmp ne i64 %188, 256
  br i1 %exitcond17, label %171, label %.preheader1, !llvm.loop !20

189:                                              ; preds = %189, %.preheader1
  %.49 = phi i64 [ %193, %189 ], [ 0, %.preheader1 ]
  %190 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %191 = load i32, ptr %190, align 4
  %192 = icmp eq i32 %191, 0
  %193 = add i64 %.49, 1
  br i1 %192, label %189, label %.preheader, !llvm.loop !21

.preheader:                                       ; preds = %189
  %.49.lcssa = phi i64 [ %.49, %189 ]
  %194 = icmp ult i64 0, %1
  br i1 %194, label %.lr.ph82, label %218

.lr.ph82:                                         ; preds = %.preheader
  br label %195

195:                                              ; preds = %.lr.ph82, %214
  %.781 = phi i64 [ %.49.lcssa, %.lr.ph82 ], [ %.9, %214 ]
  %.31380 = phi i64 [ 0, %.lr.ph82 ], [ %.414, %214 ]
  %.21779 = phi i64 [ 128, %.lr.ph82 ], [ %.318, %214 ]
  %.22178 = phi i32 [ 0, %.lr.ph82 ], [ %.423, %214 ]
  %.03177 = phi ptr [ %11, %.lr.ph82 ], [ %.132, %214 ]
  %.23576 = phi ptr [ %0, %.lr.ph82 ], [ %.336, %214 ]
  %196 = shl i32 %.22178, 1
  %197 = or disjoint i32 %196, 1
  %198 = load i8, ptr %.03177, align 1
  %199 = zext i8 %198 to i64
  %200 = and i64 %.21779, %199
  %.not1 = icmp eq i64 %200, 0
  %201 = add i32 %196, 2
  %spec.select2 = select i1 %.not1, i32 %197, i32 %201
  br label %202

202:                                              ; preds = %202, %195
  %.8 = phi i64 [ %.781, %195 ], [ %206, %202 ]
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
  store i8 %211, ptr %.23576, align 1
  %212 = getelementptr inbounds nuw i8, ptr %.23576, i64 1
  %213 = add nuw i64 %.31380, 1
  br label %214

214:                                              ; preds = %209, %207
  %.336 = phi ptr [ %212, %209 ], [ %.23576, %207 ]
  %.423 = phi i32 [ 0, %209 ], [ %spec.select2, %207 ]
  %.414 = phi i64 [ %213, %209 ], [ %.31380, %207 ]
  %.9 = phi i64 [ %.49.lcssa, %209 ], [ %.8.lcssa, %207 ]
  %215 = icmp ult i64 %.21779, 2
  %216 = lshr i64 %.21779, 1
  %.132.idx = zext i1 %215 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.03177, i64 %.132.idx
  %.318 = select i1 %215, i64 128, i64 %216
  %217 = icmp ult i64 %.414, %1
  br i1 %217, label %195, label %._crit_edge83, !llvm.loop !23

._crit_edge83:                                    ; preds = %214
  br label %218

218:                                              ; preds = %._crit_edge83, %.preheader
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
  %.not1 = icmp sgt i32 %3, %9
  br i1 %.not1, label %40, label %.lr.ph

.lr.ph:                                           ; preds = %4
  br label %10

10:                                               ; preds = %.lr.ph, %36
  %.012 = phi i32 [ %3, %.lr.ph ], [ %.0, %36 ]
  %11 = shl nsw i32 %.012, 1
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
  br i1 %35, label %._crit_edge, label %36

36:                                               ; preds = %25
  %37 = sext i32 %.012 to i64
  %38 = getelementptr [8 x i8], ptr %1, i64 %37
  %39 = getelementptr i8, ptr %38, i64 -8
  store i64 %32, ptr %39, align 8
  %.not = icmp sgt i32 %.0, %9
  br i1 %.not, label %._crit_edge3, label %10, !llvm.loop !24

._crit_edge:                                      ; preds = %25
  %split = phi i32 [ %.012, %25 ]
  br label %40

._crit_edge3:                                     ; preds = %36
  %split4 = phi i32 [ %.0, %36 ]
  br label %40

40:                                               ; preds = %._crit_edge3, %._crit_edge, %4
  %.01.lcssa = phi i32 [ %split, %._crit_edge ], [ %split4, %._crit_edge3 ], [ %3, %4 ]
  %sext1 = shl i64 %8, 32
  %41 = ashr exact i64 %sext1, 32
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
  br i1 %3, label %.preheader, label %10

.preheader:                                       ; preds = %2
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %6

5:                                                ; preds = %6
  %.01 = phi i32 [ %9, %6 ]
  %exitcond = icmp ne i32 %.01, %0
  br i1 %exitcond, label %6, label %.loopexit, !llvm.loop !25

6:                                                ; preds = %.preheader, %5
  %.012 = phi i32 [ 1, %.preheader ], [ %.01, %5 ]
  %7 = load ptr, ptr %4, align 8
  %8 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(4) @.str.4) #10
  %.not = icmp eq i32 %8, 0
  %9 = add nuw i32 %.012, 1
  br i1 %.not, label %.loopexit, label %5

.loopexit:                                        ; preds = %5, %6
  %.not1.ph = phi i1 [ false, %6 ], [ true, %5 ]
  br label %10

10:                                               ; preds = %.loopexit, %2
  %.not1 = phi i1 [ true, %2 ], [ %.not1.ph, %.loopexit ]
  %11 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %12

12:                                               ; preds = %10, %12
  %.123 = phi i32 [ 0, %10 ], [ %13, %12 ]
  call void @compdecomp(ptr noundef %11, i64 noundef 10000000)
  %13 = add nuw nsw i32 %.123, 1
  %exitcond1 = icmp ne i32 %13, 30
  br i1 %exitcond1, label %12, label %14, !llvm.loop !26

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
