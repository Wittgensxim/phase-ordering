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
  br i1 %12, label %.lr.ph, label %.preheader12

.lr.ph:                                           ; preds = %2
  br label %13

..preheader12_crit_edge:                          ; preds = %13
  br label %.preheader12

.preheader12:                                     ; preds = %..preheader12_crit_edge, %2
  br label %22

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
  %20 = add i64 %.0214, 1
  %21 = icmp ult i64 %20, %1
  br i1 %21, label %13, label %..preheader12_crit_edge, !llvm.loop !9

.preheader11:                                     ; preds = %36
  %.010.lcssa = phi i64 [ %.111.1, %36 ]
  %.not17 = icmp eq i64 %.010.lcssa, 0
  br i1 %.not17, label %.preheader10, label %.lr.ph19

.lr.ph19:                                         ; preds = %.preheader11
  br label %40

22:                                               ; preds = %.preheader12, %36
  %.1316 = phi i64 [ 0, %.preheader12 ], [ %37, %36 ]
  %.01015 = phi i64 [ 0, %.preheader12 ], [ %.111.1, %36 ]
  %23 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.1316
  %24 = load i64, ptr %23, align 8
  %.not8 = icmp eq i64 %24, 0
  br i1 %.not8, label %28, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.01015
  store i64 %.1316, ptr %26, align 8
  %27 = add i64 %.01015, 1
  br label %28

28:                                               ; preds = %25, %22
  %.111 = phi i64 [ %27, %25 ], [ %.01015, %22 ]
  %29 = add nuw nsw i64 %.1316, 1
  br label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %29
  %32 = load i64, ptr %31, align 8
  %.not8.1 = icmp eq i64 %32, 0
  br i1 %.not8.1, label %36, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.111
  store i64 %29, ptr %34, align 8
  %35 = add i64 %.111, 1
  br label %36

36:                                               ; preds = %33, %30
  %.111.1 = phi i64 [ %35, %33 ], [ %.111, %30 ]
  %37 = add nuw nsw i64 %.1316, 2
  %38 = icmp samesign ult i64 %37, 256
  br i1 %38, label %22, label %.preheader11, !llvm.loop !10

..preheader10_crit_edge:                          ; preds = %40
  br label %.preheader10

.preheader10:                                     ; preds = %..preheader10_crit_edge, %.preheader11
  %39 = icmp ugt i64 %.010.lcssa, 1
  br i1 %39, label %.lr.ph21, label %65

.lr.ph21:                                         ; preds = %.preheader10
  br label %44

40:                                               ; preds = %.lr.ph19, %40
  %.2418 = phi i64 [ %.010.lcssa, %.lr.ph19 ], [ %43, %40 ]
  %41 = trunc i64 %.010.lcssa to i32
  %42 = trunc i64 %.2418 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %41, i32 noundef %42)
  %43 = add i64 %.2418, -1
  %.not = icmp eq i64 %43, 0
  br i1 %.not, label %..preheader10_crit_edge, label %40, !llvm.loop !11

44:                                               ; preds = %.lr.ph21, %44
  %.21220 = phi i64 [ %.010.lcssa, %.lr.ph21 ], [ %45, %44 ]
  %45 = add i64 %.21220, -1
  %46 = load i64, ptr %4, align 16
  %47 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %45
  %48 = load i64, ptr %47, align 8
  store i64 %48, ptr %4, align 16
  %49 = trunc i64 %45 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %49, i32 noundef 1)
  %50 = load i64, ptr %4, align 16
  %51 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %50
  %52 = load i64, ptr %51, align 8
  %53 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %46
  %54 = load i64, ptr %53, align 8
  %55 = add i64 %52, %54
  %56 = add i64 %.21220, 255
  %57 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %56
  store i64 %55, ptr %57, align 8
  %58 = trunc i64 %56 to i32
  %59 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %46
  store i32 %58, ptr %59, align 4
  %60 = trunc i64 %.21220 to i32
  %61 = sub i32 -255, %60
  %62 = load i64, ptr %4, align 16
  %63 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %62
  store i32 %61, ptr %63, align 4
  store i64 %56, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %49, i32 noundef 1)
  %64 = icmp ugt i64 %45, 1
  br i1 %64, label %44, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %44
  %split = phi i64 [ %45, %44 ]
  br label %65

65:                                               ; preds = %._crit_edge, %.preheader10
  %.212.lcssa = phi i64 [ %split, %._crit_edge ], [ %.010.lcssa, %.preheader10 ]
  %66 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 1024
  store i32 0, ptr %67, align 4
  br label %68

68:                                               ; preds = %65, %86
  %.03937 = phi i64 [ 0, %65 ], [ %.140, %86 ]
  %.04236 = phi i64 [ 0, %65 ], [ %87, %86 ]
  %.04535 = phi i64 [ 0, %65 ], [ %.146, %86 ]
  %69 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04236
  %70 = load i64, ptr %69, align 8
  %.not6 = icmp eq i64 %70, 0
  br i1 %.not6, label %71, label %74

71:                                               ; preds = %68
  %72 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04236
  store i32 0, ptr %72, align 4
  %73 = getelementptr inbounds nuw i8, ptr %7, i64 %.04236
  store i8 0, ptr %73, align 1
  br label %86

74:                                               ; preds = %68
  %.037.in22 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.04236
  %.03723 = load i32, ptr %.037.in22, align 4
  %.not724 = icmp eq i32 %.03723, 0
  br i1 %.not724, label %81, label %.lr.ph31

.lr.ph31:                                         ; preds = %74
  br label %75

75:                                               ; preds = %.lr.ph31, %75
  %.03729 = phi i32 [ %.03723, %.lr.ph31 ], [ %.037, %75 ]
  %.328 = phi i64 [ 0, %.lr.ph31 ], [ %80, %75 ]
  %.0526 = phi i64 [ 1, %.lr.ph31 ], [ %79, %75 ]
  %.04325 = phi i64 [ 0, %.lr.ph31 ], [ %.144, %75 ]
  %76 = icmp slt i32 %.03729, 0
  %77 = select i1 %76, i64 %.0526, i64 0
  %.144 = add i64 %.04325, %77
  %.138 = call i32 @llvm.abs.i32(i32 %.03729, i1 true)
  %78 = zext nneg i32 %.138 to i64
  %79 = shl i64 %.0526, 1
  %80 = add i64 %.328, 1
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %78
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %._crit_edge32, label %75, !llvm.loop !13

._crit_edge32:                                    ; preds = %75
  %split33 = phi i64 [ %.144, %75 ]
  %split34 = phi i64 [ %80, %75 ]
  br label %81

81:                                               ; preds = %._crit_edge32, %74
  %.043.lcssa = phi i64 [ %split33, %._crit_edge32 ], [ 0, %74 ]
  %.3.lcssa = phi i64 [ %split34, %._crit_edge32 ], [ 0, %74 ]
  %82 = trunc i64 %.043.lcssa to i32
  %83 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04236
  store i32 %82, ptr %83, align 4
  %84 = trunc i64 %.3.lcssa to i8
  %85 = getelementptr inbounds nuw i8, ptr %7, i64 %.04236
  store i8 %84, ptr %85, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.04535)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.03937)
  br label %86

86:                                               ; preds = %81, %71
  %.146 = phi i64 [ %spec.select, %81 ], [ %.04535, %71 ]
  %.140 = phi i64 [ %.241, %81 ], [ %.03937, %71 ]
  %87 = add nuw nsw i64 %.04236, 1
  %88 = icmp samesign ult i64 %87, 256
  br i1 %88, label %68, label %89, !llvm.loop !14

89:                                               ; preds = %86
  %.045.lcssa = phi i64 [ %.146, %86 ]
  %.039.lcssa = phi i64 [ %.140, %86 ]
  %90 = icmp ugt i64 %.039.lcssa, 32
  br i1 %90, label %91, label %94

91:                                               ; preds = %89
  %92 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %93 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %92)
  call void @exit(i32 noundef 1) #11
  unreachable

94:                                               ; preds = %89
  %95 = icmp eq i64 %.045.lcssa, 0
  br i1 %95, label %97, label %.preheader3

.preheader3:                                      ; preds = %94
  %96 = icmp ult i64 0, %1
  br i1 %96, label %.lr.ph54, label %147

.lr.ph54:                                         ; preds = %.preheader3
  br label %100

97:                                               ; preds = %94
  %98 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %99 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %98)
  call void @exit(i32 noundef 1) #11
  unreachable

100:                                              ; preds = %.lr.ph54, %143
  %.0153 = phi i32 [ -1, %.lr.ph54 ], [ %.1.lcssa, %143 ]
  %.1652 = phi i64 [ 0, %.lr.ph54 ], [ %145, %143 ]
  %.02451 = phi i8 [ 0, %.lr.ph54 ], [ %.125.lcssa, %143 ]
  %.02850 = phi i64 [ 0, %.lr.ph54 ], [ %.129.lcssa, %143 ]
  %.13449 = phi ptr [ %0, %.lr.ph54 ], [ %144, %143 ]
  %101 = load i8, ptr %.13449, align 1
  %102 = zext i8 %101 to i64
  %103 = getelementptr inbounds nuw i8, ptr %7, i64 %102
  %104 = load i8, ptr %103, align 1
  %105 = zext i8 %104 to i32
  %106 = add nsw i32 %105, -1
  %107 = shl nuw i32 1, %106
  %108 = sext i32 %107 to i64
  %109 = load i8, ptr %.13449, align 1
  %110 = zext i8 %109 to i64
  %111 = getelementptr inbounds nuw i8, ptr %7, i64 %110
  %112 = load i8, ptr %111, align 1
  %113 = zext i8 %112 to i64
  %114 = icmp ult i64 0, %113
  br i1 %114, label %.lr.ph44, label %143

.lr.ph44:                                         ; preds = %100
  br label %115

115:                                              ; preds = %.lr.ph44, %127
  %.142 = phi i32 [ %.0153, %.lr.ph44 ], [ %.2, %127 ]
  %.441 = phi i64 [ 0, %.lr.ph44 ], [ %136, %127 ]
  %.01540 = phi i64 [ %108, %.lr.ph44 ], [ %135, %127 ]
  %.12539 = phi i8 [ %.02451, %.lr.ph44 ], [ %.327, %127 ]
  %.12938 = phi i64 [ %.02850, %.lr.ph44 ], [ %.230, %127 ]
  %116 = icmp eq i32 %.142, 7
  br i1 %116, label %117, label %124

117:                                              ; preds = %115
  %118 = getelementptr inbounds nuw i8, ptr %11, i64 %.12938
  store i8 %.12539, ptr %118, align 1
  %119 = add i64 %.12938, 1
  %120 = icmp eq i64 %119, %1
  br i1 %120, label %121, label %127

121:                                              ; preds = %117
  %122 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %123 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %122)
  call void @exit(i32 noundef 1) #11
  unreachable

124:                                              ; preds = %115
  %125 = add nsw i32 %.142, 1
  %126 = shl i8 %.12539, 1
  br label %127

127:                                              ; preds = %124, %117
  %.230 = phi i64 [ %.12938, %124 ], [ %119, %117 ]
  %.226 = phi i8 [ %126, %124 ], [ 0, %117 ]
  %.2 = phi i32 [ %125, %124 ], [ 0, %117 ]
  %128 = load i8, ptr %.13449, align 1
  %129 = zext i8 %128 to i64
  %130 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %129
  %131 = load i32, ptr %130, align 4
  %132 = zext i32 %131 to i64
  %133 = and i64 %.01540, %132
  %.not5 = icmp ne i64 %133, 0
  %134 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %134
  %135 = lshr i64 %.01540, 1
  %136 = add i64 %.441, 1
  %137 = load i8, ptr %.13449, align 1
  %138 = zext i8 %137 to i64
  %139 = getelementptr inbounds nuw i8, ptr %7, i64 %138
  %140 = load i8, ptr %139, align 1
  %141 = zext i8 %140 to i64
  %142 = icmp ult i64 %136, %141
  br i1 %142, label %115, label %._crit_edge45, !llvm.loop !15

._crit_edge45:                                    ; preds = %127
  %split46 = phi i64 [ %.230, %127 ]
  %split47 = phi i8 [ %.327, %127 ]
  %split48 = phi i32 [ %.2, %127 ]
  br label %143

143:                                              ; preds = %._crit_edge45, %100
  %.129.lcssa = phi i64 [ %split46, %._crit_edge45 ], [ %.02850, %100 ]
  %.125.lcssa = phi i8 [ %split47, %._crit_edge45 ], [ %.02451, %100 ]
  %.1.lcssa = phi i32 [ %split48, %._crit_edge45 ], [ %.0153, %100 ]
  %144 = getelementptr inbounds nuw i8, ptr %.13449, i64 1
  %145 = add i64 %.1652, 1
  %146 = icmp ult i64 %145, %1
  br i1 %146, label %100, label %._crit_edge55, !llvm.loop !16

._crit_edge55:                                    ; preds = %143
  %split56 = phi i64 [ %.129.lcssa, %143 ]
  %split57 = phi i8 [ %.125.lcssa, %143 ]
  %split58 = phi i32 [ %.1.lcssa, %143 ]
  br label %147

147:                                              ; preds = %._crit_edge55, %.preheader3
  %.028.lcssa = phi i64 [ %split56, %._crit_edge55 ], [ 0, %.preheader3 ]
  %.024.lcssa = phi i8 [ %split57, %._crit_edge55 ], [ 0, %.preheader3 ]
  %.01.lcssa = phi i32 [ %split58, %._crit_edge55 ], [ -1, %.preheader3 ]
  %148 = sub nsw i32 7, %.01.lcssa
  %149 = zext i8 %.024.lcssa to i32
  %150 = shl i32 %149, %148
  %151 = trunc i32 %150 to i8
  %152 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %151, ptr %152, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %153

.preheader2:                                      ; preds = %183
  br label %186

153:                                              ; preds = %147, %183
  %.067 = phi ptr [ %9, %147 ], [ %155, %183 ]
  %.2766 = phi i64 [ 0, %147 ], [ %184, %183 ]
  %154 = trunc nuw i64 %.2766 to i8
  store i8 %154, ptr %.067, align 1
  %155 = getelementptr inbounds nuw i8, ptr %.067, i64 1
  %156 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.2766
  %157 = load i32, ptr %156, align 4
  %158 = getelementptr inbounds nuw i8, ptr %7, i64 %.2766
  %159 = load i8, ptr %158, align 1
  %160 = zext i8 %159 to i32
  %161 = or i32 %157, %160
  %.not3 = icmp eq i32 %161, 0
  br i1 %.not3, label %183, label %162

162:                                              ; preds = %153
  %163 = add nsw i32 %160, -1
  %164 = shl nuw i32 1, %163
  %165 = sext i32 %164 to i64
  %166 = load i8, ptr %158, align 1
  %167 = zext i8 %166 to i64
  %168 = icmp ult i64 0, %167
  br i1 %168, label %.lr.ph63, label %181

.lr.ph63:                                         ; preds = %162
  br label %169

169:                                              ; preds = %.lr.ph63, %169
  %.561 = phi i64 [ 0, %.lr.ph63 ], [ %177, %169 ]
  %.11660 = phi i64 [ %165, %.lr.ph63 ], [ %176, %169 ]
  %.01959 = phi i32 [ 0, %.lr.ph63 ], [ %spec.select1, %169 ]
  %170 = shl i32 %.01959, 1
  %171 = or disjoint i32 %170, 1
  %172 = load i32, ptr %156, align 4
  %173 = zext i32 %172 to i64
  %174 = and i64 %.11660, %173
  %.not4 = icmp eq i64 %174, 0
  %175 = add i32 %170, 2
  %spec.select1 = select i1 %.not4, i32 %171, i32 %175
  %176 = lshr i64 %.11660, 1
  %177 = add i64 %.561, 1
  %178 = load i8, ptr %158, align 1
  %179 = zext i8 %178 to i64
  %180 = icmp ult i64 %177, %179
  br i1 %180, label %169, label %._crit_edge64, !llvm.loop !17

._crit_edge64:                                    ; preds = %169
  %split65 = phi i32 [ %spec.select1, %169 ]
  br label %181

181:                                              ; preds = %._crit_edge64, %162
  %.019.lcssa = phi i32 [ %split65, %._crit_edge64 ], [ 0, %162 ]
  %182 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.2766
  store i32 %.019.lcssa, ptr %182, align 4
  br label %183

183:                                              ; preds = %181, %153
  %184 = add nuw nsw i64 %.2766, 1
  %185 = icmp samesign ult i64 %184, 256
  br i1 %185, label %153, label %.preheader2, !llvm.loop !18

.preheader1:                                      ; preds = %.critedge
  br label %205

186:                                              ; preds = %.preheader2, %.critedge
  %.669 = phi i64 [ 1, %.preheader2 ], [ %203, %.critedge ]
  %187 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.669
  %188 = load i32, ptr %187, align 4
  %189 = getelementptr inbounds nuw i8, ptr %9, i64 %.669
  %190 = load i8, ptr %189, align 1
  br label %191

191:                                              ; preds = %186, %196
  %.3868 = phi i64 [ %.669, %186 ], [ %192, %196 ]
  %192 = add i64 %.3868, -1
  %193 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %192
  %194 = load i32, ptr %193, align 4
  %195 = icmp ugt i32 %194, %188
  br i1 %195, label %196, label %.critedge

196:                                              ; preds = %191
  %197 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.3868
  store i32 %194, ptr %197, align 4
  %198 = getelementptr inbounds nuw i8, ptr %9, i64 %192
  %199 = load i8, ptr %198, align 1
  %200 = getelementptr inbounds nuw i8, ptr %9, i64 %.3868
  store i8 %199, ptr %200, align 1
  %.not2 = icmp eq i64 %192, 0
  br i1 %.not2, label %.critedge, label %191, !llvm.loop !19

.critedge:                                        ; preds = %191, %196
  %.38.lcssa = phi i64 [ %.3868, %191 ], [ %192, %196 ]
  %201 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %188, ptr %201, align 4
  %202 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %190, ptr %202, align 1
  %203 = add nuw nsw i64 %.669, 1
  %204 = icmp samesign ult i64 %203, 256
  br i1 %204, label %186, label %.preheader1, !llvm.loop !20

205:                                              ; preds = %205, %.preheader1
  %.49 = phi i64 [ %209, %205 ], [ 0, %.preheader1 ]
  %206 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %207 = load i32, ptr %206, align 4
  %208 = icmp eq i32 %207, 0
  %209 = add i64 %.49, 1
  br i1 %208, label %205, label %.preheader, !llvm.loop !21

.preheader:                                       ; preds = %205
  %.49.lcssa = phi i64 [ %.49, %205 ]
  %210 = icmp ult i64 0, %1
  br i1 %210, label %.lr.ph76, label %234

.lr.ph76:                                         ; preds = %.preheader
  br label %211

211:                                              ; preds = %.lr.ph76, %230
  %.775 = phi i64 [ %.49.lcssa, %.lr.ph76 ], [ %.9, %230 ]
  %.31374 = phi i64 [ 0, %.lr.ph76 ], [ %.414, %230 ]
  %.21773 = phi i64 [ 128, %.lr.ph76 ], [ %.318, %230 ]
  %.22172 = phi i32 [ 0, %.lr.ph76 ], [ %.423, %230 ]
  %.03171 = phi ptr [ %11, %.lr.ph76 ], [ %.132, %230 ]
  %.23570 = phi ptr [ %0, %.lr.ph76 ], [ %.336, %230 ]
  %212 = shl i32 %.22172, 1
  %213 = or disjoint i32 %212, 1
  %214 = load i8, ptr %.03171, align 1
  %215 = zext i8 %214 to i64
  %216 = and i64 %.21773, %215
  %.not1 = icmp eq i64 %216, 0
  %217 = add i32 %212, 2
  %spec.select2 = select i1 %.not1, i32 %213, i32 %217
  br label %218

218:                                              ; preds = %218, %211
  %.8 = phi i64 [ %.775, %211 ], [ %222, %218 ]
  %219 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %220 = load i32, ptr %219, align 4
  %221 = icmp ult i32 %220, %spec.select2
  %222 = add i64 %.8, 1
  br i1 %221, label %218, label %223, !llvm.loop !22

223:                                              ; preds = %218
  %.8.lcssa = phi i64 [ %.8, %218 ]
  %.lcssa = phi i32 [ %220, %218 ]
  %224 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %224, label %225, label %230

225:                                              ; preds = %223
  %226 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %227 = load i8, ptr %226, align 1
  store i8 %227, ptr %.23570, align 1
  %228 = getelementptr inbounds nuw i8, ptr %.23570, i64 1
  %229 = add i64 %.31374, 1
  br label %230

230:                                              ; preds = %225, %223
  %.336 = phi ptr [ %228, %225 ], [ %.23570, %223 ]
  %.423 = phi i32 [ 0, %225 ], [ %spec.select2, %223 ]
  %.414 = phi i64 [ %229, %225 ], [ %.31374, %223 ]
  %.9 = phi i64 [ %.49.lcssa, %225 ], [ %.8.lcssa, %223 ]
  %231 = icmp ult i64 %.21773, 2
  %232 = lshr i64 %.21773, 1
  %.132.idx = zext i1 %231 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.03171, i64 %.132.idx
  %.318 = select i1 %231, i64 128, i64 %232
  %233 = icmp ult i64 %.414, %1
  br i1 %233, label %211, label %._crit_edge77, !llvm.loop !23

._crit_edge77:                                    ; preds = %230
  br label %234

234:                                              ; preds = %._crit_edge77, %.preheader
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
