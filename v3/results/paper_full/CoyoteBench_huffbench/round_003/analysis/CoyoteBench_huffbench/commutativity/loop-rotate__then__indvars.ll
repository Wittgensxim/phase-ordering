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
  %.not17 = icmp eq i64 %.010.lcssa, 0
  br i1 %.not17, label %.preheader4, label %.lr.ph19

.lr.ph19:                                         ; preds = %.preheader5
  br label %30

21:                                               ; preds = %.preheader6, %27
  %.1316 = phi i64 [ 0, %.preheader6 ], [ %28, %27 ]
  %.01015 = phi i64 [ 0, %.preheader6 ], [ %.111, %27 ]
  %22 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.1316
  %23 = load i64, ptr %22, align 8
  %.not8 = icmp eq i64 %23, 0
  br i1 %.not8, label %27, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.01015
  store i64 %.1316, ptr %25, align 8
  %26 = add i64 %.01015, 1
  br label %27

27:                                               ; preds = %24, %21
  %.111 = phi i64 [ %26, %24 ], [ %.01015, %21 ]
  %28 = add nuw nsw i64 %.1316, 1
  %exitcond78 = icmp ne i64 %28, 256
  br i1 %exitcond78, label %21, label %.preheader5, !llvm.loop !10

..preheader4_crit_edge:                           ; preds = %30
  br label %.preheader4

.preheader4:                                      ; preds = %..preheader4_crit_edge, %.preheader5
  %29 = icmp ugt i64 %.010.lcssa, 1
  br i1 %29, label %.lr.ph21, label %55

.lr.ph21:                                         ; preds = %.preheader4
  br label %34

30:                                               ; preds = %.lr.ph19, %30
  %.2418 = phi i64 [ %.010.lcssa, %.lr.ph19 ], [ %33, %30 ]
  %31 = trunc i64 %.010.lcssa to i32
  %32 = trunc i64 %.2418 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %31, i32 noundef %32)
  %33 = add i64 %.2418, -1
  %.not = icmp eq i64 %33, 0
  br i1 %.not, label %..preheader4_crit_edge, label %30, !llvm.loop !11

34:                                               ; preds = %.lr.ph21, %34
  %.21220 = phi i64 [ %.010.lcssa, %.lr.ph21 ], [ %35, %34 ]
  %35 = add i64 %.21220, -1
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
  %46 = add i64 %.21220, 255
  %47 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %46
  store i64 %45, ptr %47, align 8
  %48 = trunc i64 %46 to i32
  %49 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %36
  store i32 %48, ptr %49, align 4
  %50 = trunc i64 %.21220 to i32
  %51 = sub i32 -255, %50
  %52 = load i64, ptr %4, align 16
  %53 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %52
  store i32 %51, ptr %53, align 4
  store i64 %46, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %39, i32 noundef 1)
  %54 = icmp ugt i64 %35, 1
  br i1 %54, label %34, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %34
  br label %55

55:                                               ; preds = %._crit_edge, %.preheader4
  %.212.lcssa = phi i64 [ 1, %._crit_edge ], [ %.010.lcssa, %.preheader4 ]
  %56 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %57 = getelementptr inbounds nuw i8, ptr %56, i64 1024
  store i32 0, ptr %57, align 4
  br label %58

58:                                               ; preds = %55, %76
  %.03937 = phi i64 [ 0, %55 ], [ %.140, %76 ]
  %.04236 = phi i64 [ 0, %55 ], [ %77, %76 ]
  %.04535 = phi i64 [ 0, %55 ], [ %.146, %76 ]
  %59 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04236
  %60 = load i64, ptr %59, align 8
  %.not6 = icmp eq i64 %60, 0
  br i1 %.not6, label %61, label %64

61:                                               ; preds = %58
  %62 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04236
  store i32 0, ptr %62, align 4
  %63 = getelementptr inbounds nuw i8, ptr %7, i64 %.04236
  store i8 0, ptr %63, align 1
  br label %76

64:                                               ; preds = %58
  %.037.in22 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.04236
  %.03723 = load i32, ptr %.037.in22, align 4
  %.not724 = icmp eq i32 %.03723, 0
  br i1 %.not724, label %71, label %.lr.ph31

.lr.ph31:                                         ; preds = %64
  br label %65

65:                                               ; preds = %.lr.ph31, %65
  %.03729 = phi i32 [ %.03723, %.lr.ph31 ], [ %.037, %65 ]
  %.328 = phi i64 [ 0, %.lr.ph31 ], [ %70, %65 ]
  %.0526 = phi i64 [ 1, %.lr.ph31 ], [ %69, %65 ]
  %.04325 = phi i64 [ 0, %.lr.ph31 ], [ %.144, %65 ]
  %66 = icmp slt i32 %.03729, 0
  %67 = select i1 %66, i64 %.0526, i64 0
  %.144 = add i64 %.04325, %67
  %.138 = call i32 @llvm.abs.i32(i32 %.03729, i1 true)
  %68 = zext nneg i32 %.138 to i64
  %69 = shl i64 %.0526, 1
  %70 = add i64 %.328, 1
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %68
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %._crit_edge32, label %65, !llvm.loop !13

._crit_edge32:                                    ; preds = %65
  %split33 = phi i64 [ %.144, %65 ]
  %split34 = phi i64 [ %70, %65 ]
  br label %71

71:                                               ; preds = %._crit_edge32, %64
  %.043.lcssa = phi i64 [ %split33, %._crit_edge32 ], [ 0, %64 ]
  %.3.lcssa = phi i64 [ %split34, %._crit_edge32 ], [ 0, %64 ]
  %72 = trunc i64 %.043.lcssa to i32
  %73 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04236
  store i32 %72, ptr %73, align 4
  %74 = trunc i64 %.3.lcssa to i8
  %75 = getelementptr inbounds nuw i8, ptr %7, i64 %.04236
  store i8 %74, ptr %75, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.04535)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.03937)
  br label %76

76:                                               ; preds = %71, %61
  %.146 = phi i64 [ %spec.select, %71 ], [ %.04535, %61 ]
  %.140 = phi i64 [ %.241, %71 ], [ %.03937, %61 ]
  %77 = add nuw nsw i64 %.04236, 1
  %exitcond79 = icmp ne i64 %77, 256
  br i1 %exitcond79, label %58, label %78, !llvm.loop !14

78:                                               ; preds = %76
  %.045.lcssa = phi i64 [ %.146, %76 ]
  %.039.lcssa = phi i64 [ %.140, %76 ]
  %79 = icmp ugt i64 %.039.lcssa, 32
  br i1 %79, label %80, label %83

80:                                               ; preds = %78
  %81 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %82 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %81)
  call void @exit(i32 noundef 1) #11
  unreachable

83:                                               ; preds = %78
  %84 = icmp eq i64 %.045.lcssa, 0
  br i1 %84, label %86, label %.preheader3

.preheader3:                                      ; preds = %83
  %85 = icmp ult i64 0, %1
  br i1 %85, label %.lr.ph54, label %135

.lr.ph54:                                         ; preds = %.preheader3
  br label %89

86:                                               ; preds = %83
  %87 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %88 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %87)
  call void @exit(i32 noundef 1) #11
  unreachable

89:                                               ; preds = %.lr.ph54, %132
  %.0153 = phi i32 [ -1, %.lr.ph54 ], [ %.1.lcssa, %132 ]
  %.1652 = phi i64 [ 0, %.lr.ph54 ], [ %134, %132 ]
  %.02451 = phi i8 [ 0, %.lr.ph54 ], [ %.125.lcssa, %132 ]
  %.02850 = phi i64 [ 0, %.lr.ph54 ], [ %.129.lcssa, %132 ]
  %.13449 = phi ptr [ %0, %.lr.ph54 ], [ %133, %132 ]
  %90 = load i8, ptr %.13449, align 1
  %91 = zext i8 %90 to i64
  %92 = getelementptr inbounds nuw i8, ptr %7, i64 %91
  %93 = load i8, ptr %92, align 1
  %94 = zext i8 %93 to i32
  %95 = add nsw i32 %94, -1
  %96 = shl nuw i32 1, %95
  %97 = sext i32 %96 to i64
  %98 = load i8, ptr %.13449, align 1
  %99 = zext i8 %98 to i64
  %100 = getelementptr inbounds nuw i8, ptr %7, i64 %99
  %101 = load i8, ptr %100, align 1
  %102 = zext i8 %101 to i64
  %103 = icmp ult i64 0, %102
  br i1 %103, label %.lr.ph44, label %132

.lr.ph44:                                         ; preds = %89
  br label %104

104:                                              ; preds = %.lr.ph44, %116
  %.142 = phi i32 [ %.0153, %.lr.ph44 ], [ %.2, %116 ]
  %.441 = phi i64 [ 0, %.lr.ph44 ], [ %125, %116 ]
  %.01540 = phi i64 [ %97, %.lr.ph44 ], [ %124, %116 ]
  %.12539 = phi i8 [ %.02451, %.lr.ph44 ], [ %.327, %116 ]
  %.12938 = phi i64 [ %.02850, %.lr.ph44 ], [ %.230, %116 ]
  %105 = icmp eq i32 %.142, 7
  br i1 %105, label %106, label %113

106:                                              ; preds = %104
  %107 = getelementptr inbounds nuw i8, ptr %11, i64 %.12938
  store i8 %.12539, ptr %107, align 1
  %108 = add i64 %.12938, 1
  %109 = icmp eq i64 %108, %1
  br i1 %109, label %110, label %116

110:                                              ; preds = %106
  %111 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %112 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %111)
  call void @exit(i32 noundef 1) #11
  unreachable

113:                                              ; preds = %104
  %114 = add nsw i32 %.142, 1
  %115 = shl i8 %.12539, 1
  br label %116

116:                                              ; preds = %113, %106
  %.230 = phi i64 [ %.12938, %113 ], [ %108, %106 ]
  %.226 = phi i8 [ %115, %113 ], [ 0, %106 ]
  %.2 = phi i32 [ %114, %113 ], [ 0, %106 ]
  %117 = load i8, ptr %.13449, align 1
  %118 = zext i8 %117 to i64
  %119 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %118
  %120 = load i32, ptr %119, align 4
  %121 = zext i32 %120 to i64
  %122 = and i64 %.01540, %121
  %.not5 = icmp ne i64 %122, 0
  %123 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %123
  %124 = lshr i64 %.01540, 1
  %125 = add nuw nsw i64 %.441, 1
  %126 = load i8, ptr %.13449, align 1
  %127 = zext i8 %126 to i64
  %128 = getelementptr inbounds nuw i8, ptr %7, i64 %127
  %129 = load i8, ptr %128, align 1
  %130 = zext i8 %129 to i64
  %131 = icmp samesign ult i64 %125, %130
  br i1 %131, label %104, label %._crit_edge45, !llvm.loop !15

._crit_edge45:                                    ; preds = %116
  %split46 = phi i64 [ %.230, %116 ]
  %split47 = phi i8 [ %.327, %116 ]
  %split48 = phi i32 [ %.2, %116 ]
  br label %132

132:                                              ; preds = %._crit_edge45, %89
  %.129.lcssa = phi i64 [ %split46, %._crit_edge45 ], [ %.02850, %89 ]
  %.125.lcssa = phi i8 [ %split47, %._crit_edge45 ], [ %.02451, %89 ]
  %.1.lcssa = phi i32 [ %split48, %._crit_edge45 ], [ %.0153, %89 ]
  %133 = getelementptr inbounds nuw i8, ptr %.13449, i64 1
  %134 = add nuw i64 %.1652, 1
  %exitcond80 = icmp ne i64 %134, %1
  br i1 %exitcond80, label %89, label %._crit_edge55, !llvm.loop !16

._crit_edge55:                                    ; preds = %132
  %split56 = phi i64 [ %.129.lcssa, %132 ]
  %split57 = phi i8 [ %.125.lcssa, %132 ]
  %split58 = phi i32 [ %.1.lcssa, %132 ]
  br label %135

135:                                              ; preds = %._crit_edge55, %.preheader3
  %.028.lcssa = phi i64 [ %split56, %._crit_edge55 ], [ 0, %.preheader3 ]
  %.024.lcssa = phi i8 [ %split57, %._crit_edge55 ], [ 0, %.preheader3 ]
  %.01.lcssa = phi i32 [ %split58, %._crit_edge55 ], [ -1, %.preheader3 ]
  %136 = sub nsw i32 7, %.01.lcssa
  %137 = zext i8 %.024.lcssa to i32
  %138 = shl i32 %137, %136
  %139 = trunc i32 %138 to i8
  %140 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %139, ptr %140, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %141

.preheader2:                                      ; preds = %171
  br label %173

141:                                              ; preds = %135, %171
  %.067 = phi ptr [ %9, %135 ], [ %143, %171 ]
  %.2766 = phi i64 [ 0, %135 ], [ %172, %171 ]
  %142 = trunc nuw i64 %.2766 to i8
  store i8 %142, ptr %.067, align 1
  %143 = getelementptr inbounds nuw i8, ptr %.067, i64 1
  %144 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.2766
  %145 = load i32, ptr %144, align 4
  %146 = getelementptr inbounds nuw i8, ptr %7, i64 %.2766
  %147 = load i8, ptr %146, align 1
  %148 = zext i8 %147 to i32
  %149 = or i32 %145, %148
  %.not3 = icmp eq i32 %149, 0
  br i1 %.not3, label %171, label %150

150:                                              ; preds = %141
  %151 = add nsw i32 %148, -1
  %152 = shl nuw i32 1, %151
  %153 = sext i32 %152 to i64
  %154 = load i8, ptr %146, align 1
  %155 = zext i8 %154 to i64
  %156 = icmp ult i64 0, %155
  br i1 %156, label %.lr.ph63, label %169

.lr.ph63:                                         ; preds = %150
  br label %157

157:                                              ; preds = %.lr.ph63, %157
  %.561 = phi i64 [ 0, %.lr.ph63 ], [ %165, %157 ]
  %.11660 = phi i64 [ %153, %.lr.ph63 ], [ %164, %157 ]
  %.01959 = phi i32 [ 0, %.lr.ph63 ], [ %spec.select1, %157 ]
  %158 = shl i32 %.01959, 1
  %159 = or disjoint i32 %158, 1
  %160 = load i32, ptr %144, align 4
  %161 = zext i32 %160 to i64
  %162 = and i64 %.11660, %161
  %.not4 = icmp eq i64 %162, 0
  %163 = add i32 %158, 2
  %spec.select1 = select i1 %.not4, i32 %159, i32 %163
  %164 = lshr i64 %.11660, 1
  %165 = add nuw nsw i64 %.561, 1
  %166 = load i8, ptr %146, align 1
  %167 = zext i8 %166 to i64
  %168 = icmp samesign ult i64 %165, %167
  br i1 %168, label %157, label %._crit_edge64, !llvm.loop !17

._crit_edge64:                                    ; preds = %157
  %split65 = phi i32 [ %spec.select1, %157 ]
  br label %169

169:                                              ; preds = %._crit_edge64, %150
  %.019.lcssa = phi i32 [ %split65, %._crit_edge64 ], [ 0, %150 ]
  %170 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.2766
  store i32 %.019.lcssa, ptr %170, align 4
  br label %171

171:                                              ; preds = %169, %141
  %172 = add nuw nsw i64 %.2766, 1
  %exitcond81 = icmp ne i64 %172, 256
  br i1 %exitcond81, label %141, label %.preheader2, !llvm.loop !18

.preheader1:                                      ; preds = %.critedge
  br label %191

173:                                              ; preds = %.preheader2, %.critedge
  %.669 = phi i64 [ 1, %.preheader2 ], [ %190, %.critedge ]
  %174 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.669
  %175 = load i32, ptr %174, align 4
  %176 = getelementptr inbounds nuw i8, ptr %9, i64 %.669
  %177 = load i8, ptr %176, align 1
  br label %178

178:                                              ; preds = %173, %183
  %.3868 = phi i64 [ %.669, %173 ], [ %179, %183 ]
  %179 = add nsw i64 %.3868, -1
  %180 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %179
  %181 = load i32, ptr %180, align 4
  %182 = icmp ugt i32 %181, %175
  br i1 %182, label %183, label %.critedge

183:                                              ; preds = %178
  %184 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.3868
  store i32 %181, ptr %184, align 4
  %185 = getelementptr inbounds nuw i8, ptr %9, i64 %179
  %186 = load i8, ptr %185, align 1
  %187 = getelementptr inbounds nuw i8, ptr %9, i64 %.3868
  store i8 %186, ptr %187, align 1
  %.not2 = icmp eq i64 %179, 0
  br i1 %.not2, label %.critedge, label %178, !llvm.loop !19

.critedge:                                        ; preds = %178, %183
  %.38.lcssa = phi i64 [ %.3868, %178 ], [ 0, %183 ]
  %188 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %175, ptr %188, align 4
  %189 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %177, ptr %189, align 1
  %190 = add nuw nsw i64 %.669, 1
  %exitcond82 = icmp ne i64 %190, 256
  br i1 %exitcond82, label %173, label %.preheader1, !llvm.loop !20

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
  br i1 %196, label %.lr.ph76, label %220

.lr.ph76:                                         ; preds = %.preheader
  br label %197

197:                                              ; preds = %.lr.ph76, %216
  %.775 = phi i64 [ %.49.lcssa, %.lr.ph76 ], [ %.9, %216 ]
  %.31374 = phi i64 [ 0, %.lr.ph76 ], [ %.414, %216 ]
  %.21773 = phi i64 [ 128, %.lr.ph76 ], [ %.318, %216 ]
  %.22172 = phi i32 [ 0, %.lr.ph76 ], [ %.423, %216 ]
  %.03171 = phi ptr [ %11, %.lr.ph76 ], [ %.132, %216 ]
  %.23570 = phi ptr [ %0, %.lr.ph76 ], [ %.336, %216 ]
  %198 = shl i32 %.22172, 1
  %199 = or disjoint i32 %198, 1
  %200 = load i8, ptr %.03171, align 1
  %201 = zext i8 %200 to i64
  %202 = and i64 %.21773, %201
  %.not1 = icmp eq i64 %202, 0
  %203 = add i32 %198, 2
  %spec.select2 = select i1 %.not1, i32 %199, i32 %203
  br label %204

204:                                              ; preds = %204, %197
  %.8 = phi i64 [ %.775, %197 ], [ %208, %204 ]
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
  store i8 %213, ptr %.23570, align 1
  %214 = getelementptr inbounds nuw i8, ptr %.23570, i64 1
  %215 = add i64 %.31374, 1
  br label %216

216:                                              ; preds = %211, %209
  %.336 = phi ptr [ %214, %211 ], [ %.23570, %209 ]
  %.423 = phi i32 [ 0, %211 ], [ %spec.select2, %209 ]
  %.414 = phi i64 [ %215, %211 ], [ %.31374, %209 ]
  %.9 = phi i64 [ %.49.lcssa, %211 ], [ %.8.lcssa, %209 ]
  %217 = icmp ult i64 %.21773, 2
  %218 = lshr i64 %.21773, 1
  %.132.idx = zext i1 %217 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.03171, i64 %.132.idx
  %.318 = select i1 %217, i64 128, i64 %218
  %219 = icmp ult i64 %.414, %1
  br i1 %219, label %197, label %._crit_edge77, !llvm.loop !23

._crit_edge77:                                    ; preds = %216
  br label %220

220:                                              ; preds = %._crit_edge77, %.preheader
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
