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
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %1, %.lr.ph
  %.02 = phi i32 [ %8, %.lr.ph ], [ 0, %1 ]
  %.011 = phi ptr [ %7, %.lr.ph ], [ %2, %1 ]
  %4 = call i64 @random4()
  %5 = getelementptr inbounds nuw i8, ptr @.str, i64 %4
  %6 = load i8, ptr %5, align 1
  store i8 %6, ptr %.011, align 1
  %7 = getelementptr inbounds nuw i8, ptr %.011, i64 1
  %8 = add nuw nsw i32 %.02, 1
  %9 = zext nneg i32 %8 to i64
  %10 = icmp ugt i64 %0, %9
  br i1 %10, label %.lr.ph, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %.lr.ph, %1
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

.preheader6:                                      ; preds = %.lr.ph, %2
  br label %21

.lr.ph:                                           ; preds = %2, %.lr.ph
  %.0214 = phi i64 [ %19, %.lr.ph ], [ 0, %2 ]
  %.03313 = phi ptr [ %18, %.lr.ph ], [ %0, %2 ]
  %13 = load i8, ptr %.03313, align 1
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %14
  %16 = load i64, ptr %15, align 8
  %17 = add i64 %16, 1
  store i64 %17, ptr %15, align 8
  %18 = getelementptr inbounds nuw i8, ptr %.03313, i64 1
  %19 = add i64 %.0214, 1
  %20 = icmp ult i64 %19, %1
  br i1 %20, label %.lr.ph, label %.preheader6, !llvm.loop !9

.preheader5:                                      ; preds = %27
  %.010.lcssa = phi i64 [ %.111, %27 ]
  %.not17 = icmp eq i64 %.010.lcssa, 0
  br i1 %.not17, label %.preheader4, label %.lr.ph19

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
  %29 = icmp samesign ult i64 %28, 256
  br i1 %29, label %21, label %.preheader5, !llvm.loop !10

.preheader4:                                      ; preds = %.lr.ph19, %.preheader5
  %30 = icmp ugt i64 %.010.lcssa, 1
  br i1 %30, label %.lr.ph21, label %._crit_edge

.lr.ph19:                                         ; preds = %.preheader5, %.lr.ph19
  %.2418 = phi i64 [ %33, %.lr.ph19 ], [ %.010.lcssa, %.preheader5 ]
  %31 = trunc i64 %.010.lcssa to i32
  %32 = trunc i64 %.2418 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %31, i32 noundef %32)
  %33 = add i64 %.2418, -1
  %.not = icmp eq i64 %33, 0
  br i1 %.not, label %.preheader4, label %.lr.ph19, !llvm.loop !11

.lr.ph21:                                         ; preds = %.preheader4, %.lr.ph21
  %.21220 = phi i64 [ %34, %.lr.ph21 ], [ %.010.lcssa, %.preheader4 ]
  %34 = add i64 %.21220, -1
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
  %45 = add i64 %.21220, 255
  %46 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %45
  store i64 %44, ptr %46, align 8
  %47 = trunc i64 %45 to i32
  %48 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %35
  store i32 %47, ptr %48, align 4
  %49 = trunc i64 %.21220 to i32
  %50 = sub i32 -255, %49
  %51 = load i64, ptr %4, align 16
  %52 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %51
  store i32 %50, ptr %52, align 4
  store i64 %45, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %38, i32 noundef 1)
  %53 = icmp ugt i64 %34, 1
  br i1 %53, label %.lr.ph21, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %.lr.ph21, %.preheader4
  %.212.lcssa = phi i64 [ %.010.lcssa, %.preheader4 ], [ %34, %.lr.ph21 ]
  %54 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 1024
  store i32 0, ptr %55, align 4
  br label %56

56:                                               ; preds = %._crit_edge, %72
  %.03937 = phi i64 [ 0, %._crit_edge ], [ %.140, %72 ]
  %.04236 = phi i64 [ 0, %._crit_edge ], [ %73, %72 ]
  %.04535 = phi i64 [ 0, %._crit_edge ], [ %.146, %72 ]
  %57 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04236
  %58 = load i64, ptr %57, align 8
  %.not6 = icmp eq i64 %58, 0
  br i1 %.not6, label %59, label %62

59:                                               ; preds = %56
  %60 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04236
  store i32 0, ptr %60, align 4
  %61 = getelementptr inbounds nuw i8, ptr %7, i64 %.04236
  store i8 0, ptr %61, align 1
  br label %72

62:                                               ; preds = %56
  %.037.in22 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.04236
  %.03723 = load i32, ptr %.037.in22, align 4
  %.not724 = icmp eq i32 %.03723, 0
  br i1 %.not724, label %._crit_edge32, label %.lr.ph31

.lr.ph31:                                         ; preds = %62, %.lr.ph31
  %.03729 = phi i32 [ %.037, %.lr.ph31 ], [ %.03723, %62 ]
  %.328 = phi i64 [ %67, %.lr.ph31 ], [ 0, %62 ]
  %.0526 = phi i64 [ %66, %.lr.ph31 ], [ 1, %62 ]
  %.04325 = phi i64 [ %.144, %.lr.ph31 ], [ 0, %62 ]
  %63 = icmp slt i32 %.03729, 0
  %64 = select i1 %63, i64 %.0526, i64 0
  %.144 = add i64 %.04325, %64
  %.138 = call i32 @llvm.abs.i32(i32 %.03729, i1 true)
  %65 = zext nneg i32 %.138 to i64
  %66 = shl i64 %.0526, 1
  %67 = add i64 %.328, 1
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %65
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %._crit_edge32, label %.lr.ph31, !llvm.loop !13

._crit_edge32:                                    ; preds = %.lr.ph31, %62
  %.043.lcssa = phi i64 [ 0, %62 ], [ %.144, %.lr.ph31 ]
  %.3.lcssa = phi i64 [ 0, %62 ], [ %67, %.lr.ph31 ]
  %68 = trunc i64 %.043.lcssa to i32
  %69 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04236
  store i32 %68, ptr %69, align 4
  %70 = trunc i64 %.3.lcssa to i8
  %71 = getelementptr inbounds nuw i8, ptr %7, i64 %.04236
  store i8 %70, ptr %71, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.04535)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.03937)
  br label %72

72:                                               ; preds = %._crit_edge32, %59
  %.146 = phi i64 [ %spec.select, %._crit_edge32 ], [ %.04535, %59 ]
  %.140 = phi i64 [ %.241, %._crit_edge32 ], [ %.03937, %59 ]
  %73 = add nuw nsw i64 %.04236, 1
  %74 = icmp samesign ult i64 %73, 256
  br i1 %74, label %56, label %75, !llvm.loop !14

75:                                               ; preds = %72
  %.045.lcssa = phi i64 [ %.146, %72 ]
  %.039.lcssa = phi i64 [ %.140, %72 ]
  %76 = icmp ugt i64 %.039.lcssa, 32
  br i1 %76, label %77, label %80

77:                                               ; preds = %75
  %78 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %79 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %78)
  call void @exit(i32 noundef 1) #11
  unreachable

80:                                               ; preds = %75
  %81 = icmp eq i64 %.045.lcssa, 0
  br i1 %81, label %83, label %.preheader3

.preheader3:                                      ; preds = %80
  %82 = icmp ult i64 0, %1
  br i1 %82, label %.lr.ph54, label %._crit_edge55

83:                                               ; preds = %80
  %84 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %85 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %84)
  call void @exit(i32 noundef 1) #11
  unreachable

.lr.ph54:                                         ; preds = %.preheader3, %._crit_edge45
  %.0153 = phi i32 [ %.1.lcssa, %._crit_edge45 ], [ -1, %.preheader3 ]
  %.1652 = phi i64 [ %128, %._crit_edge45 ], [ 0, %.preheader3 ]
  %.02451 = phi i8 [ %.125.lcssa, %._crit_edge45 ], [ 0, %.preheader3 ]
  %.02850 = phi i64 [ %.129.lcssa, %._crit_edge45 ], [ 0, %.preheader3 ]
  %.13449 = phi ptr [ %127, %._crit_edge45 ], [ %0, %.preheader3 ]
  %86 = load i8, ptr %.13449, align 1
  %87 = zext i8 %86 to i64
  %88 = getelementptr inbounds nuw i8, ptr %7, i64 %87
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i32
  %91 = add nsw i32 %90, -1
  %92 = shl nuw i32 1, %91
  %93 = sext i32 %92 to i64
  %94 = load i8, ptr %.13449, align 1
  %95 = zext i8 %94 to i64
  %96 = getelementptr inbounds nuw i8, ptr %7, i64 %95
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %97 to i64
  %99 = icmp ult i64 0, %98
  br i1 %99, label %.lr.ph44, label %._crit_edge45

.lr.ph44:                                         ; preds = %.lr.ph54, %111
  %.142 = phi i32 [ %.2, %111 ], [ %.0153, %.lr.ph54 ]
  %.441 = phi i64 [ %120, %111 ], [ 0, %.lr.ph54 ]
  %.01540 = phi i64 [ %119, %111 ], [ %93, %.lr.ph54 ]
  %.12539 = phi i8 [ %.327, %111 ], [ %.02451, %.lr.ph54 ]
  %.12938 = phi i64 [ %.230, %111 ], [ %.02850, %.lr.ph54 ]
  %100 = icmp eq i32 %.142, 7
  br i1 %100, label %101, label %108

101:                                              ; preds = %.lr.ph44
  %102 = getelementptr inbounds nuw i8, ptr %11, i64 %.12938
  store i8 %.12539, ptr %102, align 1
  %103 = add i64 %.12938, 1
  %104 = icmp eq i64 %103, %1
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %107 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %106)
  call void @exit(i32 noundef 1) #11
  unreachable

108:                                              ; preds = %.lr.ph44
  %109 = add nsw i32 %.142, 1
  %110 = shl i8 %.12539, 1
  br label %111

111:                                              ; preds = %108, %101
  %.230 = phi i64 [ %.12938, %108 ], [ %103, %101 ]
  %.226 = phi i8 [ %110, %108 ], [ 0, %101 ]
  %.2 = phi i32 [ %109, %108 ], [ 0, %101 ]
  %112 = load i8, ptr %.13449, align 1
  %113 = zext i8 %112 to i64
  %114 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %113
  %115 = load i32, ptr %114, align 4
  %116 = zext i32 %115 to i64
  %117 = and i64 %.01540, %116
  %.not5 = icmp ne i64 %117, 0
  %118 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %118
  %119 = lshr i64 %.01540, 1
  %120 = add i64 %.441, 1
  %121 = load i8, ptr %.13449, align 1
  %122 = zext i8 %121 to i64
  %123 = getelementptr inbounds nuw i8, ptr %7, i64 %122
  %124 = load i8, ptr %123, align 1
  %125 = zext i8 %124 to i64
  %126 = icmp ult i64 %120, %125
  br i1 %126, label %.lr.ph44, label %._crit_edge45, !llvm.loop !15

._crit_edge45:                                    ; preds = %111, %.lr.ph54
  %.129.lcssa = phi i64 [ %.02850, %.lr.ph54 ], [ %.230, %111 ]
  %.125.lcssa = phi i8 [ %.02451, %.lr.ph54 ], [ %.327, %111 ]
  %.1.lcssa = phi i32 [ %.0153, %.lr.ph54 ], [ %.2, %111 ]
  %127 = getelementptr inbounds nuw i8, ptr %.13449, i64 1
  %128 = add i64 %.1652, 1
  %129 = icmp ult i64 %128, %1
  br i1 %129, label %.lr.ph54, label %._crit_edge55, !llvm.loop !16

._crit_edge55:                                    ; preds = %._crit_edge45, %.preheader3
  %.028.lcssa = phi i64 [ 0, %.preheader3 ], [ %.129.lcssa, %._crit_edge45 ]
  %.024.lcssa = phi i8 [ 0, %.preheader3 ], [ %.125.lcssa, %._crit_edge45 ]
  %.01.lcssa = phi i32 [ -1, %.preheader3 ], [ %.1.lcssa, %._crit_edge45 ]
  %130 = sub nsw i32 7, %.01.lcssa
  %131 = zext i8 %.024.lcssa to i32
  %132 = shl i32 %131, %130
  %133 = trunc i32 %132 to i8
  %134 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %133, ptr %134, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %135

135:                                              ; preds = %._crit_edge55, %163
  %.067 = phi ptr [ %9, %._crit_edge55 ], [ %137, %163 ]
  %.2766 = phi i64 [ 0, %._crit_edge55 ], [ %164, %163 ]
  %136 = trunc nuw i64 %.2766 to i8
  store i8 %136, ptr %.067, align 1
  %137 = getelementptr inbounds nuw i8, ptr %.067, i64 1
  %138 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.2766
  %139 = load i32, ptr %138, align 4
  %140 = getelementptr inbounds nuw i8, ptr %7, i64 %.2766
  %141 = load i8, ptr %140, align 1
  %142 = zext i8 %141 to i32
  %143 = or i32 %139, %142
  %.not3 = icmp eq i32 %143, 0
  br i1 %.not3, label %163, label %144

144:                                              ; preds = %135
  %145 = add nsw i32 %142, -1
  %146 = shl nuw i32 1, %145
  %147 = sext i32 %146 to i64
  %148 = load i8, ptr %140, align 1
  %149 = zext i8 %148 to i64
  %150 = icmp ult i64 0, %149
  br i1 %150, label %.lr.ph63, label %._crit_edge64

.lr.ph63:                                         ; preds = %144, %.lr.ph63
  %.561 = phi i64 [ %158, %.lr.ph63 ], [ 0, %144 ]
  %.11660 = phi i64 [ %157, %.lr.ph63 ], [ %147, %144 ]
  %.01959 = phi i32 [ %spec.select1, %.lr.ph63 ], [ 0, %144 ]
  %151 = shl i32 %.01959, 1
  %152 = or disjoint i32 %151, 1
  %153 = load i32, ptr %138, align 4
  %154 = zext i32 %153 to i64
  %155 = and i64 %.11660, %154
  %.not4 = icmp eq i64 %155, 0
  %156 = add i32 %151, 2
  %spec.select1 = select i1 %.not4, i32 %152, i32 %156
  %157 = lshr i64 %.11660, 1
  %158 = add i64 %.561, 1
  %159 = load i8, ptr %140, align 1
  %160 = zext i8 %159 to i64
  %161 = icmp ult i64 %158, %160
  br i1 %161, label %.lr.ph63, label %._crit_edge64, !llvm.loop !17

._crit_edge64:                                    ; preds = %.lr.ph63, %144
  %.019.lcssa = phi i32 [ 0, %144 ], [ %spec.select1, %.lr.ph63 ]
  %162 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.2766
  store i32 %.019.lcssa, ptr %162, align 4
  br label %163

163:                                              ; preds = %._crit_edge64, %135
  %164 = add nuw nsw i64 %.2766, 1
  %165 = icmp samesign ult i64 %164, 256
  br i1 %165, label %135, label %.preheader2, !llvm.loop !18

.preheader2:                                      ; preds = %163, %.critedge
  %.669 = phi i64 [ %182, %.critedge ], [ 1, %163 ]
  %166 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.669
  %167 = load i32, ptr %166, align 4
  %168 = getelementptr inbounds nuw i8, ptr %9, i64 %.669
  %169 = load i8, ptr %168, align 1
  br label %170

170:                                              ; preds = %.preheader2, %175
  %.3868 = phi i64 [ %.669, %.preheader2 ], [ %171, %175 ]
  %171 = add i64 %.3868, -1
  %172 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %171
  %173 = load i32, ptr %172, align 4
  %174 = icmp ugt i32 %173, %167
  br i1 %174, label %175, label %.critedge

175:                                              ; preds = %170
  %176 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.3868
  store i32 %173, ptr %176, align 4
  %177 = getelementptr inbounds nuw i8, ptr %9, i64 %171
  %178 = load i8, ptr %177, align 1
  %179 = getelementptr inbounds nuw i8, ptr %9, i64 %.3868
  store i8 %178, ptr %179, align 1
  %.not2 = icmp eq i64 %171, 0
  br i1 %.not2, label %.critedge, label %170, !llvm.loop !19

.critedge:                                        ; preds = %170, %175
  %.38.lcssa = phi i64 [ %.3868, %170 ], [ %171, %175 ]
  %180 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %167, ptr %180, align 4
  %181 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %169, ptr %181, align 1
  %182 = add nuw nsw i64 %.669, 1
  %183 = icmp samesign ult i64 %182, 256
  br i1 %183, label %.preheader2, label %.preheader1, !llvm.loop !20

.preheader1:                                      ; preds = %.critedge, %.preheader1
  %.49 = phi i64 [ %187, %.preheader1 ], [ 0, %.critedge ]
  %184 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %185 = load i32, ptr %184, align 4
  %186 = icmp eq i32 %185, 0
  %187 = add i64 %.49, 1
  br i1 %186, label %.preheader1, label %.preheader, !llvm.loop !21

.preheader:                                       ; preds = %.preheader1
  %.49.lcssa = phi i64 [ %.49, %.preheader1 ]
  %188 = icmp ult i64 0, %1
  br i1 %188, label %.lr.ph76, label %._crit_edge77

.lr.ph76:                                         ; preds = %.preheader, %207
  %.775 = phi i64 [ %.9, %207 ], [ %.49.lcssa, %.preheader ]
  %.31374 = phi i64 [ %.414, %207 ], [ 0, %.preheader ]
  %.21773 = phi i64 [ %.318, %207 ], [ 128, %.preheader ]
  %.22172 = phi i32 [ %.423, %207 ], [ 0, %.preheader ]
  %.03171 = phi ptr [ %.132, %207 ], [ %11, %.preheader ]
  %.23570 = phi ptr [ %.336, %207 ], [ %0, %.preheader ]
  %189 = shl i32 %.22172, 1
  %190 = or disjoint i32 %189, 1
  %191 = load i8, ptr %.03171, align 1
  %192 = zext i8 %191 to i64
  %193 = and i64 %.21773, %192
  %.not1 = icmp eq i64 %193, 0
  %194 = add i32 %189, 2
  %spec.select2 = select i1 %.not1, i32 %190, i32 %194
  br label %195

195:                                              ; preds = %195, %.lr.ph76
  %.8 = phi i64 [ %.775, %.lr.ph76 ], [ %199, %195 ]
  %196 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %197 = load i32, ptr %196, align 4
  %198 = icmp ult i32 %197, %spec.select2
  %199 = add i64 %.8, 1
  br i1 %198, label %195, label %200, !llvm.loop !22

200:                                              ; preds = %195
  %.8.lcssa = phi i64 [ %.8, %195 ]
  %.lcssa = phi i32 [ %197, %195 ]
  %201 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %201, label %202, label %207

202:                                              ; preds = %200
  %203 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %204 = load i8, ptr %203, align 1
  store i8 %204, ptr %.23570, align 1
  %205 = getelementptr inbounds nuw i8, ptr %.23570, i64 1
  %206 = add i64 %.31374, 1
  br label %207

207:                                              ; preds = %202, %200
  %.336 = phi ptr [ %205, %202 ], [ %.23570, %200 ]
  %.423 = phi i32 [ 0, %202 ], [ %spec.select2, %200 ]
  %.414 = phi i64 [ %206, %202 ], [ %.31374, %200 ]
  %.9 = phi i64 [ %.49.lcssa, %202 ], [ %.8.lcssa, %200 ]
  %208 = icmp ult i64 %.21773, 2
  %209 = lshr i64 %.21773, 1
  %.132.idx = zext i1 %208 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.03171, i64 %.132.idx
  %.318 = select i1 %208, i64 128, i64 %209
  %210 = icmp ult i64 %.414, %1
  br i1 %210, label %.lr.ph76, label %._crit_edge77, !llvm.loop !23

._crit_edge77:                                    ; preds = %207, %.preheader
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
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %4, %35
  %.012 = phi i32 [ %.0, %35 ], [ %3, %4 ]
  %10 = shl nsw i32 %.012, 1
  %11 = icmp slt i32 %10, %2
  br i1 %11, label %12, label %24

12:                                               ; preds = %.lr.ph
  %13 = sext i32 %10 to i64
  %14 = getelementptr [8 x i8], ptr %1, i64 %13
  %15 = getelementptr i8, ptr %14, i64 -8
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %16
  %18 = load i64, ptr %17, align 8
  %19 = load i64, ptr %14, align 8
  %20 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %19
  %21 = load i64, ptr %20, align 8
  %22 = icmp ugt i64 %18, %21
  %23 = zext i1 %22 to i32
  %spec.select = or disjoint i32 %10, %23
  br label %24

24:                                               ; preds = %12, %.lr.ph
  %.0 = phi i32 [ %10, %.lr.ph ], [ %spec.select, %12 ]
  %sext = shl i64 %8, 32
  %25 = ashr exact i64 %sext, 29
  %26 = getelementptr inbounds i8, ptr %0, i64 %25
  %27 = load i64, ptr %26, align 8
  %28 = sext i32 %.0 to i64
  %29 = getelementptr [8 x i8], ptr %1, i64 %28
  %30 = getelementptr i8, ptr %29, i64 -8
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %31
  %33 = load i64, ptr %32, align 8
  %34 = icmp ult i64 %27, %33
  br i1 %34, label %._crit_edge, label %35

35:                                               ; preds = %24
  %36 = sext i32 %.012 to i64
  %37 = getelementptr [8 x i8], ptr %1, i64 %36
  %38 = getelementptr i8, ptr %37, i64 -8
  store i64 %31, ptr %38, align 8
  %.not = icmp sgt i32 %.0, %9
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !24

._crit_edge:                                      ; preds = %35, %24, %4
  %.01.lcssa = phi i32 [ %3, %4 ], [ %.012, %24 ], [ %.0, %35 ]
  %sext1 = shl i64 %8, 32
  %39 = ashr exact i64 %sext1, 32
  %40 = sext i32 %.01.lcssa to i64
  %41 = getelementptr [8 x i8], ptr %1, i64 %40
  %42 = getelementptr i8, ptr %41, i64 -8
  store i64 %39, ptr %42, align 8
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

.loopexit:                                        ; preds = %7, %5, %2
  %.not1 = phi i1 [ true, %2 ], [ false, %7 ], [ true, %5 ]
  %11 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %12

12:                                               ; preds = %.loopexit, %12
  %.122 = phi i32 [ 0, %.loopexit ], [ %13, %12 ]
  call void @compdecomp(ptr noundef %11, i64 noundef 10000000)
  %13 = add nuw nsw i32 %.122, 1
  %14 = icmp samesign ult i32 %13, 30
  br i1 %14, label %12, label %15, !llvm.loop !26

15:                                               ; preds = %12
  call void @free(ptr noundef %11) #10
  br i1 %.not1, label %19, label %16

16:                                               ; preds = %15
  %17 = call ptr @__acrt_iob_func(i32 noundef 1) #10
  %18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.5, double noundef 0.000000e+00) #10
  br label %22

19:                                               ; preds = %15
  %20 = call ptr @__acrt_iob_func(i32 noundef 1) #10
  %21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.6, double noundef 0.000000e+00) #10
  br label %22

22:                                               ; preds = %19, %16
  %23 = call ptr @__acrt_iob_func(i32 noundef 1) #10
  %24 = call i32 @fflush(ptr noundef %23) #10
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
