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
  br i1 %12, label %.lr.ph, label %.preheader6

.lr.ph:                                           ; preds = %2
  br label %13

..preheader6_crit_edge:                           ; preds = %13
  br label %.preheader6

.preheader6:                                      ; preds = %..preheader6_crit_edge, %2
  br label %23

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
  br i1 %21, label %13, label %..preheader6_crit_edge, !llvm.loop !9

.preheader5:                                      ; preds = %29
  %.010.lcssa = phi i64 [ %.111, %29 ]
  %.not17 = icmp eq i64 %.010.lcssa, 0
  br i1 %.not17, label %.preheader4, label %.lr.ph19

.lr.ph19:                                         ; preds = %.preheader5
  %22 = trunc i64 %.010.lcssa to i32
  br label %33

23:                                               ; preds = %.preheader6, %29
  %.1316 = phi i64 [ 0, %.preheader6 ], [ %30, %29 ]
  %.01015 = phi i64 [ 0, %.preheader6 ], [ %.111, %29 ]
  %24 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.1316
  %25 = load i64, ptr %24, align 8
  %.not8 = icmp eq i64 %25, 0
  br i1 %.not8, label %29, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.01015
  store i64 %.1316, ptr %27, align 8
  %28 = add i64 %.01015, 1
  br label %29

29:                                               ; preds = %26, %23
  %.111 = phi i64 [ %28, %26 ], [ %.01015, %23 ]
  %30 = add nuw nsw i64 %.1316, 1
  %31 = icmp samesign ult i64 %30, 256
  br i1 %31, label %23, label %.preheader5, !llvm.loop !10

..preheader4_crit_edge:                           ; preds = %33
  br label %.preheader4

.preheader4:                                      ; preds = %..preheader4_crit_edge, %.preheader5
  %32 = icmp ugt i64 %.010.lcssa, 1
  br i1 %32, label %.lr.ph21, label %57

.lr.ph21:                                         ; preds = %.preheader4
  br label %36

33:                                               ; preds = %.lr.ph19, %33
  %.2418 = phi i64 [ %.010.lcssa, %.lr.ph19 ], [ %35, %33 ]
  %34 = trunc i64 %.2418 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %22, i32 noundef %34)
  %35 = add i64 %.2418, -1
  %.not = icmp eq i64 %35, 0
  br i1 %.not, label %..preheader4_crit_edge, label %33, !llvm.loop !11

36:                                               ; preds = %.lr.ph21, %36
  %.21220 = phi i64 [ %.010.lcssa, %.lr.ph21 ], [ %37, %36 ]
  %37 = add i64 %.21220, -1
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
  %48 = add i64 %.21220, 255
  %49 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %48
  store i64 %47, ptr %49, align 8
  %50 = trunc i64 %48 to i32
  %51 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %38
  store i32 %50, ptr %51, align 4
  %52 = trunc i64 %.21220 to i32
  %53 = sub i32 -255, %52
  %54 = load i64, ptr %4, align 16
  %55 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %54
  store i32 %53, ptr %55, align 4
  store i64 %48, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %41, i32 noundef 1)
  %56 = icmp ugt i64 %37, 1
  br i1 %56, label %36, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %36
  %split = phi i64 [ %37, %36 ]
  br label %57

57:                                               ; preds = %._crit_edge, %.preheader4
  %.212.lcssa = phi i64 [ %split, %._crit_edge ], [ %.010.lcssa, %.preheader4 ]
  %58 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %59 = getelementptr inbounds nuw i8, ptr %58, i64 1024
  store i32 0, ptr %59, align 4
  br label %60

60:                                               ; preds = %57, %78
  %.03937 = phi i64 [ 0, %57 ], [ %.140, %78 ]
  %.04236 = phi i64 [ 0, %57 ], [ %79, %78 ]
  %.04535 = phi i64 [ 0, %57 ], [ %.146, %78 ]
  %61 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04236
  %62 = load i64, ptr %61, align 8
  %.not6 = icmp eq i64 %62, 0
  br i1 %.not6, label %63, label %66

63:                                               ; preds = %60
  %64 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04236
  store i32 0, ptr %64, align 4
  %65 = getelementptr inbounds nuw i8, ptr %7, i64 %.04236
  store i8 0, ptr %65, align 1
  br label %78

66:                                               ; preds = %60
  %.037.in22 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.04236
  %.03723 = load i32, ptr %.037.in22, align 4
  %.not724 = icmp eq i32 %.03723, 0
  br i1 %.not724, label %73, label %.lr.ph31

.lr.ph31:                                         ; preds = %66
  br label %67

67:                                               ; preds = %.lr.ph31, %67
  %.03729 = phi i32 [ %.03723, %.lr.ph31 ], [ %.037, %67 ]
  %.328 = phi i64 [ 0, %.lr.ph31 ], [ %72, %67 ]
  %.0526 = phi i64 [ 1, %.lr.ph31 ], [ %71, %67 ]
  %.04325 = phi i64 [ 0, %.lr.ph31 ], [ %.144, %67 ]
  %68 = icmp slt i32 %.03729, 0
  %69 = select i1 %68, i64 %.0526, i64 0
  %.144 = add i64 %.04325, %69
  %.138 = call i32 @llvm.abs.i32(i32 %.03729, i1 true)
  %70 = zext nneg i32 %.138 to i64
  %71 = shl i64 %.0526, 1
  %72 = add i64 %.328, 1
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %70
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %._crit_edge32, label %67, !llvm.loop !13

._crit_edge32:                                    ; preds = %67
  %split33 = phi i64 [ %.144, %67 ]
  %split34 = phi i64 [ %72, %67 ]
  br label %73

73:                                               ; preds = %._crit_edge32, %66
  %.043.lcssa = phi i64 [ %split33, %._crit_edge32 ], [ 0, %66 ]
  %.3.lcssa = phi i64 [ %split34, %._crit_edge32 ], [ 0, %66 ]
  %74 = trunc i64 %.043.lcssa to i32
  %75 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04236
  store i32 %74, ptr %75, align 4
  %76 = trunc i64 %.3.lcssa to i8
  %77 = getelementptr inbounds nuw i8, ptr %7, i64 %.04236
  store i8 %76, ptr %77, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.04535)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.03937)
  br label %78

78:                                               ; preds = %73, %63
  %.146 = phi i64 [ %spec.select, %73 ], [ %.04535, %63 ]
  %.140 = phi i64 [ %.241, %73 ], [ %.03937, %63 ]
  %79 = add nuw nsw i64 %.04236, 1
  %80 = icmp samesign ult i64 %79, 256
  br i1 %80, label %60, label %81, !llvm.loop !14

81:                                               ; preds = %78
  %.045.lcssa = phi i64 [ %.146, %78 ]
  %.039.lcssa = phi i64 [ %.140, %78 ]
  %82 = icmp ugt i64 %.039.lcssa, 32
  br i1 %82, label %83, label %86

83:                                               ; preds = %81
  %84 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %85 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %84)
  call void @exit(i32 noundef 1) #11
  unreachable

86:                                               ; preds = %81
  %87 = icmp eq i64 %.045.lcssa, 0
  br i1 %87, label %89, label %.preheader3

.preheader3:                                      ; preds = %86
  %88 = icmp ult i64 0, %1
  br i1 %88, label %.lr.ph54, label %139

.lr.ph54:                                         ; preds = %.preheader3
  br label %92

89:                                               ; preds = %86
  %90 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %91 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %90)
  call void @exit(i32 noundef 1) #11
  unreachable

92:                                               ; preds = %.lr.ph54, %135
  %.0153 = phi i32 [ -1, %.lr.ph54 ], [ %.1.lcssa, %135 ]
  %.1652 = phi i64 [ 0, %.lr.ph54 ], [ %137, %135 ]
  %.02451 = phi i8 [ 0, %.lr.ph54 ], [ %.125.lcssa, %135 ]
  %.02850 = phi i64 [ 0, %.lr.ph54 ], [ %.129.lcssa, %135 ]
  %.13449 = phi ptr [ %0, %.lr.ph54 ], [ %136, %135 ]
  %93 = load i8, ptr %.13449, align 1
  %94 = zext i8 %93 to i64
  %95 = getelementptr inbounds nuw i8, ptr %7, i64 %94
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %96 to i32
  %98 = add nsw i32 %97, -1
  %99 = shl nuw i32 1, %98
  %100 = sext i32 %99 to i64
  %101 = load i8, ptr %.13449, align 1
  %102 = zext i8 %101 to i64
  %103 = getelementptr inbounds nuw i8, ptr %7, i64 %102
  %104 = load i8, ptr %103, align 1
  %105 = zext i8 %104 to i64
  %106 = icmp ult i64 0, %105
  br i1 %106, label %.lr.ph44, label %135

.lr.ph44:                                         ; preds = %92
  br label %107

107:                                              ; preds = %.lr.ph44, %119
  %.142 = phi i32 [ %.0153, %.lr.ph44 ], [ %.2, %119 ]
  %.441 = phi i64 [ 0, %.lr.ph44 ], [ %128, %119 ]
  %.01540 = phi i64 [ %100, %.lr.ph44 ], [ %127, %119 ]
  %.12539 = phi i8 [ %.02451, %.lr.ph44 ], [ %.327, %119 ]
  %.12938 = phi i64 [ %.02850, %.lr.ph44 ], [ %.230, %119 ]
  %108 = icmp eq i32 %.142, 7
  br i1 %108, label %109, label %116

109:                                              ; preds = %107
  %110 = getelementptr inbounds nuw i8, ptr %11, i64 %.12938
  store i8 %.12539, ptr %110, align 1
  %111 = add i64 %.12938, 1
  %112 = icmp eq i64 %111, %1
  br i1 %112, label %113, label %119

113:                                              ; preds = %109
  %114 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %115 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %114)
  call void @exit(i32 noundef 1) #11
  unreachable

116:                                              ; preds = %107
  %117 = add nsw i32 %.142, 1
  %118 = shl i8 %.12539, 1
  br label %119

119:                                              ; preds = %116, %109
  %.230 = phi i64 [ %.12938, %116 ], [ %111, %109 ]
  %.226 = phi i8 [ %118, %116 ], [ 0, %109 ]
  %.2 = phi i32 [ %117, %116 ], [ 0, %109 ]
  %120 = load i8, ptr %.13449, align 1
  %121 = zext i8 %120 to i64
  %122 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %121
  %123 = load i32, ptr %122, align 4
  %124 = zext i32 %123 to i64
  %125 = and i64 %.01540, %124
  %.not5 = icmp ne i64 %125, 0
  %126 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %126
  %127 = lshr i64 %.01540, 1
  %128 = add i64 %.441, 1
  %129 = load i8, ptr %.13449, align 1
  %130 = zext i8 %129 to i64
  %131 = getelementptr inbounds nuw i8, ptr %7, i64 %130
  %132 = load i8, ptr %131, align 1
  %133 = zext i8 %132 to i64
  %134 = icmp ult i64 %128, %133
  br i1 %134, label %107, label %._crit_edge45, !llvm.loop !15

._crit_edge45:                                    ; preds = %119
  %split46 = phi i64 [ %.230, %119 ]
  %split47 = phi i8 [ %.327, %119 ]
  %split48 = phi i32 [ %.2, %119 ]
  br label %135

135:                                              ; preds = %._crit_edge45, %92
  %.129.lcssa = phi i64 [ %split46, %._crit_edge45 ], [ %.02850, %92 ]
  %.125.lcssa = phi i8 [ %split47, %._crit_edge45 ], [ %.02451, %92 ]
  %.1.lcssa = phi i32 [ %split48, %._crit_edge45 ], [ %.0153, %92 ]
  %136 = getelementptr inbounds nuw i8, ptr %.13449, i64 1
  %137 = add i64 %.1652, 1
  %138 = icmp ult i64 %137, %1
  br i1 %138, label %92, label %._crit_edge55, !llvm.loop !16

._crit_edge55:                                    ; preds = %135
  %split56 = phi i64 [ %.129.lcssa, %135 ]
  %split57 = phi i8 [ %.125.lcssa, %135 ]
  %split58 = phi i32 [ %.1.lcssa, %135 ]
  br label %139

139:                                              ; preds = %._crit_edge55, %.preheader3
  %.028.lcssa = phi i64 [ %split56, %._crit_edge55 ], [ 0, %.preheader3 ]
  %.024.lcssa = phi i8 [ %split57, %._crit_edge55 ], [ 0, %.preheader3 ]
  %.01.lcssa = phi i32 [ %split58, %._crit_edge55 ], [ -1, %.preheader3 ]
  %140 = sub nsw i32 7, %.01.lcssa
  %141 = zext i8 %.024.lcssa to i32
  %142 = shl i32 %141, %140
  %143 = trunc i32 %142 to i8
  %144 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %143, ptr %144, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %145

.preheader2:                                      ; preds = %175
  br label %178

145:                                              ; preds = %139, %175
  %.067 = phi ptr [ %9, %139 ], [ %147, %175 ]
  %.2766 = phi i64 [ 0, %139 ], [ %176, %175 ]
  %146 = trunc nuw i64 %.2766 to i8
  store i8 %146, ptr %.067, align 1
  %147 = getelementptr inbounds nuw i8, ptr %.067, i64 1
  %148 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.2766
  %149 = load i32, ptr %148, align 4
  %150 = getelementptr inbounds nuw i8, ptr %7, i64 %.2766
  %151 = load i8, ptr %150, align 1
  %152 = zext i8 %151 to i32
  %153 = or i32 %149, %152
  %.not3 = icmp eq i32 %153, 0
  br i1 %.not3, label %175, label %154

154:                                              ; preds = %145
  %155 = add nsw i32 %152, -1
  %156 = shl nuw i32 1, %155
  %157 = sext i32 %156 to i64
  %158 = load i8, ptr %150, align 1
  %159 = zext i8 %158 to i64
  %160 = icmp ult i64 0, %159
  br i1 %160, label %.lr.ph63, label %173

.lr.ph63:                                         ; preds = %154
  %161 = load i32, ptr %148, align 4
  %162 = zext i32 %161 to i64
  %163 = load i8, ptr %150, align 1
  %164 = zext i8 %163 to i64
  br label %165

165:                                              ; preds = %.lr.ph63, %165
  %.561 = phi i64 [ 0, %.lr.ph63 ], [ %171, %165 ]
  %.11660 = phi i64 [ %157, %.lr.ph63 ], [ %170, %165 ]
  %.01959 = phi i32 [ 0, %.lr.ph63 ], [ %spec.select1, %165 ]
  %166 = shl i32 %.01959, 1
  %167 = or disjoint i32 %166, 1
  %168 = and i64 %.11660, %162
  %.not4 = icmp eq i64 %168, 0
  %169 = add i32 %166, 2
  %spec.select1 = select i1 %.not4, i32 %167, i32 %169
  %170 = lshr i64 %.11660, 1
  %171 = add i64 %.561, 1
  %172 = icmp ult i64 %171, %164
  br i1 %172, label %165, label %._crit_edge64, !llvm.loop !17

._crit_edge64:                                    ; preds = %165
  %split65 = phi i32 [ %spec.select1, %165 ]
  br label %173

173:                                              ; preds = %._crit_edge64, %154
  %.019.lcssa = phi i32 [ %split65, %._crit_edge64 ], [ 0, %154 ]
  %174 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.2766
  store i32 %.019.lcssa, ptr %174, align 4
  br label %175

175:                                              ; preds = %173, %145
  %176 = add nuw nsw i64 %.2766, 1
  %177 = icmp samesign ult i64 %176, 256
  br i1 %177, label %145, label %.preheader2, !llvm.loop !18

.preheader1:                                      ; preds = %.critedge
  br label %197

178:                                              ; preds = %.preheader2, %.critedge
  %.669 = phi i64 [ 1, %.preheader2 ], [ %195, %.critedge ]
  %179 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.669
  %180 = load i32, ptr %179, align 4
  %181 = getelementptr inbounds nuw i8, ptr %9, i64 %.669
  %182 = load i8, ptr %181, align 1
  br label %183

183:                                              ; preds = %178, %188
  %.3868 = phi i64 [ %.669, %178 ], [ %184, %188 ]
  %184 = add i64 %.3868, -1
  %185 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %184
  %186 = load i32, ptr %185, align 4
  %187 = icmp ugt i32 %186, %180
  br i1 %187, label %188, label %.critedge

188:                                              ; preds = %183
  %189 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.3868
  store i32 %186, ptr %189, align 4
  %190 = getelementptr inbounds nuw i8, ptr %9, i64 %184
  %191 = load i8, ptr %190, align 1
  %192 = getelementptr inbounds nuw i8, ptr %9, i64 %.3868
  store i8 %191, ptr %192, align 1
  %.not2 = icmp eq i64 %184, 0
  br i1 %.not2, label %.critedge, label %183, !llvm.loop !19

.critedge:                                        ; preds = %183, %188
  %.38.lcssa = phi i64 [ %.3868, %183 ], [ %184, %188 ]
  %193 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %180, ptr %193, align 4
  %194 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %182, ptr %194, align 1
  %195 = add nuw nsw i64 %.669, 1
  %196 = icmp samesign ult i64 %195, 256
  br i1 %196, label %178, label %.preheader1, !llvm.loop !20

197:                                              ; preds = %197, %.preheader1
  %.49 = phi i64 [ %201, %197 ], [ 0, %.preheader1 ]
  %198 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %199 = load i32, ptr %198, align 4
  %200 = icmp eq i32 %199, 0
  %201 = add i64 %.49, 1
  br i1 %200, label %197, label %.preheader, !llvm.loop !21

.preheader:                                       ; preds = %197
  %.49.lcssa = phi i64 [ %.49, %197 ]
  %202 = icmp ult i64 0, %1
  br i1 %202, label %.lr.ph76, label %226

.lr.ph76:                                         ; preds = %.preheader
  br label %203

203:                                              ; preds = %.lr.ph76, %222
  %.775 = phi i64 [ %.49.lcssa, %.lr.ph76 ], [ %.9, %222 ]
  %.31374 = phi i64 [ 0, %.lr.ph76 ], [ %.414, %222 ]
  %.21773 = phi i64 [ 128, %.lr.ph76 ], [ %.318, %222 ]
  %.22172 = phi i32 [ 0, %.lr.ph76 ], [ %.423, %222 ]
  %.03171 = phi ptr [ %11, %.lr.ph76 ], [ %.132, %222 ]
  %.23570 = phi ptr [ %0, %.lr.ph76 ], [ %.336, %222 ]
  %204 = shl i32 %.22172, 1
  %205 = or disjoint i32 %204, 1
  %206 = load i8, ptr %.03171, align 1
  %207 = zext i8 %206 to i64
  %208 = and i64 %.21773, %207
  %.not1 = icmp eq i64 %208, 0
  %209 = add i32 %204, 2
  %spec.select2 = select i1 %.not1, i32 %205, i32 %209
  br label %210

210:                                              ; preds = %210, %203
  %.8 = phi i64 [ %.775, %203 ], [ %214, %210 ]
  %211 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %212 = load i32, ptr %211, align 4
  %213 = icmp ult i32 %212, %spec.select2
  %214 = add i64 %.8, 1
  br i1 %213, label %210, label %215, !llvm.loop !22

215:                                              ; preds = %210
  %.8.lcssa = phi i64 [ %.8, %210 ]
  %.lcssa = phi i32 [ %212, %210 ]
  %216 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %216, label %217, label %222

217:                                              ; preds = %215
  %218 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %219 = load i8, ptr %218, align 1
  store i8 %219, ptr %.23570, align 1
  %220 = getelementptr inbounds nuw i8, ptr %.23570, i64 1
  %221 = add i64 %.31374, 1
  br label %222

222:                                              ; preds = %217, %215
  %.336 = phi ptr [ %220, %217 ], [ %.23570, %215 ]
  %.423 = phi i32 [ 0, %217 ], [ %spec.select2, %215 ]
  %.414 = phi i64 [ %221, %217 ], [ %.31374, %215 ]
  %.9 = phi i64 [ %.49.lcssa, %217 ], [ %.8.lcssa, %215 ]
  %223 = icmp ult i64 %.21773, 2
  %224 = lshr i64 %.21773, 1
  %.132.idx = zext i1 %223 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.03171, i64 %.132.idx
  %.318 = select i1 %223, i64 128, i64 %224
  %225 = icmp ult i64 %.414, %1
  br i1 %225, label %203, label %._crit_edge77, !llvm.loop !23

._crit_edge77:                                    ; preds = %222
  br label %226

226:                                              ; preds = %._crit_edge77, %.preheader
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
  %sext = shl i64 %8, 32
  %10 = ashr exact i64 %sext, 29
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  br label %12

12:                                               ; preds = %.lr.ph, %36
  %.012 = phi i32 [ %3, %.lr.ph ], [ %.0, %36 ]
  %13 = shl nsw i32 %.012, 1
  %14 = icmp slt i32 %13, %2
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = sext i32 %13 to i64
  %17 = getelementptr [8 x i8], ptr %1, i64 %16
  %18 = getelementptr i8, ptr %17, i64 -8
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %19
  %21 = load i64, ptr %20, align 8
  %22 = load i64, ptr %17, align 8
  %23 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %22
  %24 = load i64, ptr %23, align 8
  %25 = icmp ugt i64 %21, %24
  %26 = zext i1 %25 to i32
  %spec.select = or disjoint i32 %13, %26
  br label %27

27:                                               ; preds = %15, %12
  %.0 = phi i32 [ %13, %12 ], [ %spec.select, %15 ]
  %28 = load i64, ptr %11, align 8
  %29 = sext i32 %.0 to i64
  %30 = getelementptr [8 x i8], ptr %1, i64 %29
  %31 = getelementptr i8, ptr %30, i64 -8
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %32
  %34 = load i64, ptr %33, align 8
  %35 = icmp ult i64 %28, %34
  br i1 %35, label %._crit_edge, label %36

36:                                               ; preds = %27
  %37 = sext i32 %.012 to i64
  %38 = getelementptr [8 x i8], ptr %1, i64 %37
  %39 = getelementptr i8, ptr %38, i64 -8
  store i64 %32, ptr %39, align 8
  %.not = icmp sgt i32 %.0, %9
  br i1 %.not, label %._crit_edge3, label %12, !llvm.loop !24

._crit_edge:                                      ; preds = %27
  %split = phi i32 [ %.012, %27 ]
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
