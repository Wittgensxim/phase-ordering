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
  br i1 %21, label %13, label %..preheader6_crit_edge, !llvm.loop !9

.preheader5:                                      ; preds = %28
  %.not17 = icmp eq i64 %.111, 0
  br i1 %.not17, label %.preheader4, label %.lr.ph19

.lr.ph19:                                         ; preds = %.preheader5
  br label %32

22:                                               ; preds = %.preheader6, %28
  %.1316 = phi i64 [ 0, %.preheader6 ], [ %29, %28 ]
  %.01015 = phi i64 [ 0, %.preheader6 ], [ %.111, %28 ]
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
  %30 = icmp samesign ult i64 %29, 256
  br i1 %30, label %22, label %.preheader5, !llvm.loop !10

..preheader4_crit_edge:                           ; preds = %32
  br label %.preheader4

.preheader4:                                      ; preds = %..preheader4_crit_edge, %.preheader5
  %31 = icmp ugt i64 %.111, 1
  br i1 %31, label %.lr.ph21, label %57

.lr.ph21:                                         ; preds = %.preheader4
  br label %36

32:                                               ; preds = %.lr.ph19, %32
  %.2418 = phi i64 [ %.111, %.lr.ph19 ], [ %35, %32 ]
  %33 = trunc i64 %.111 to i32
  %34 = trunc i64 %.2418 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %33, i32 noundef %34)
  %35 = add i64 %.2418, -1
  %.not = icmp eq i64 %35, 0
  br i1 %.not, label %..preheader4_crit_edge, label %32, !llvm.loop !11

36:                                               ; preds = %.lr.ph21, %36
  %.21220 = phi i64 [ %.111, %.lr.ph21 ], [ %37, %36 ]
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
  br label %57

57:                                               ; preds = %._crit_edge, %.preheader4
  %.212.lcssa = phi i64 [ %37, %._crit_edge ], [ %.111, %.preheader4 ]
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
  br label %73

73:                                               ; preds = %._crit_edge32, %66
  %.043.lcssa = phi i64 [ %.144, %._crit_edge32 ], [ 0, %66 ]
  %.3.lcssa = phi i64 [ %72, %._crit_edge32 ], [ 0, %66 ]
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
  %82 = icmp ugt i64 %.140, 32
  br i1 %82, label %83, label %86

83:                                               ; preds = %81
  %84 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %85 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %84)
  call void @exit(i32 noundef 1) #11
  unreachable

86:                                               ; preds = %81
  %87 = icmp eq i64 %.146, 0
  br i1 %87, label %88, label %.preheader3

.preheader3:                                      ; preds = %86
  br i1 %12, label %.lr.ph54, label %132

.lr.ph54:                                         ; preds = %.preheader3
  br label %91

88:                                               ; preds = %86
  %89 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %90 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %89)
  call void @exit(i32 noundef 1) #11
  unreachable

91:                                               ; preds = %.lr.ph54, %128
  %.0153 = phi i32 [ -1, %.lr.ph54 ], [ %.1.lcssa, %128 ]
  %.1652 = phi i64 [ 0, %.lr.ph54 ], [ %130, %128 ]
  %.02451 = phi i8 [ 0, %.lr.ph54 ], [ %.125.lcssa, %128 ]
  %.02850 = phi i64 [ 0, %.lr.ph54 ], [ %.129.lcssa, %128 ]
  %.13449 = phi ptr [ %0, %.lr.ph54 ], [ %129, %128 ]
  %92 = load i8, ptr %.13449, align 1
  %93 = zext i8 %92 to i64
  %94 = getelementptr inbounds nuw i8, ptr %7, i64 %93
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %95 to i32
  %97 = add nsw i32 %96, -1
  %98 = shl nuw i32 1, %97
  %99 = sext i32 %98 to i64
  %100 = zext i8 %95 to i64
  %101 = icmp ult i64 0, %100
  br i1 %101, label %.lr.ph44, label %128

.lr.ph44:                                         ; preds = %91
  br label %102

102:                                              ; preds = %.lr.ph44, %114
  %.142 = phi i32 [ %.0153, %.lr.ph44 ], [ %.2, %114 ]
  %.441 = phi i64 [ 0, %.lr.ph44 ], [ %123, %114 ]
  %.01540 = phi i64 [ %99, %.lr.ph44 ], [ %122, %114 ]
  %.12539 = phi i8 [ %.02451, %.lr.ph44 ], [ %.327, %114 ]
  %.12938 = phi i64 [ %.02850, %.lr.ph44 ], [ %.230, %114 ]
  %103 = icmp eq i32 %.142, 7
  br i1 %103, label %104, label %111

104:                                              ; preds = %102
  %105 = getelementptr inbounds nuw i8, ptr %11, i64 %.12938
  store i8 %.12539, ptr %105, align 1
  %106 = add i64 %.12938, 1
  %107 = icmp eq i64 %106, %1
  br i1 %107, label %108, label %114

108:                                              ; preds = %104
  %109 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %110 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %109)
  call void @exit(i32 noundef 1) #11
  unreachable

111:                                              ; preds = %102
  %112 = add nsw i32 %.142, 1
  %113 = shl i8 %.12539, 1
  br label %114

114:                                              ; preds = %111, %104
  %.230 = phi i64 [ %.12938, %111 ], [ %106, %104 ]
  %.226 = phi i8 [ %113, %111 ], [ 0, %104 ]
  %.2 = phi i32 [ %112, %111 ], [ 0, %104 ]
  %115 = load i8, ptr %.13449, align 1
  %116 = zext i8 %115 to i64
  %117 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %116
  %118 = load i32, ptr %117, align 4
  %119 = zext i32 %118 to i64
  %120 = and i64 %.01540, %119
  %.not5 = icmp ne i64 %120, 0
  %121 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %121
  %122 = lshr i64 %.01540, 1
  %123 = add i64 %.441, 1
  %124 = getelementptr inbounds nuw i8, ptr %7, i64 %116
  %125 = load i8, ptr %124, align 1
  %126 = zext i8 %125 to i64
  %127 = icmp ult i64 %123, %126
  br i1 %127, label %102, label %._crit_edge45, !llvm.loop !15

._crit_edge45:                                    ; preds = %114
  br label %128

128:                                              ; preds = %._crit_edge45, %91
  %.129.lcssa = phi i64 [ %.230, %._crit_edge45 ], [ %.02850, %91 ]
  %.125.lcssa = phi i8 [ %.327, %._crit_edge45 ], [ %.02451, %91 ]
  %.1.lcssa = phi i32 [ %.2, %._crit_edge45 ], [ %.0153, %91 ]
  %129 = getelementptr inbounds nuw i8, ptr %.13449, i64 1
  %130 = add i64 %.1652, 1
  %131 = icmp ult i64 %130, %1
  br i1 %131, label %91, label %._crit_edge55, !llvm.loop !16

._crit_edge55:                                    ; preds = %128
  br label %132

132:                                              ; preds = %._crit_edge55, %.preheader3
  %.028.lcssa = phi i64 [ %.129.lcssa, %._crit_edge55 ], [ 0, %.preheader3 ]
  %.024.lcssa = phi i8 [ %.125.lcssa, %._crit_edge55 ], [ 0, %.preheader3 ]
  %.01.lcssa = phi i32 [ %.1.lcssa, %._crit_edge55 ], [ -1, %.preheader3 ]
  %133 = sub nsw i32 7, %.01.lcssa
  %134 = zext i8 %.024.lcssa to i32
  %135 = shl i32 %134, %133
  %136 = trunc i32 %135 to i8
  %137 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %136, ptr %137, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %138

.preheader2:                                      ; preds = %167
  br label %170

138:                                              ; preds = %132, %167
  %.067 = phi ptr [ %9, %132 ], [ %140, %167 ]
  %.2766 = phi i64 [ 0, %132 ], [ %168, %167 ]
  %139 = trunc nuw i64 %.2766 to i8
  store i8 %139, ptr %.067, align 1
  %140 = getelementptr inbounds nuw i8, ptr %.067, i64 1
  %141 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.2766
  %142 = load i32, ptr %141, align 4
  %143 = getelementptr inbounds nuw i8, ptr %7, i64 %.2766
  %144 = load i8, ptr %143, align 1
  %145 = zext i8 %144 to i32
  %146 = or i32 %142, %145
  %.not3 = icmp eq i32 %146, 0
  br i1 %.not3, label %167, label %147

147:                                              ; preds = %138
  %148 = add nsw i32 %145, -1
  %149 = shl nuw i32 1, %148
  %150 = sext i32 %149 to i64
  %151 = zext i8 %144 to i64
  %152 = icmp ult i64 0, %151
  br i1 %152, label %.lr.ph63, label %165

.lr.ph63:                                         ; preds = %147
  br label %153

153:                                              ; preds = %.lr.ph63, %153
  %.561 = phi i64 [ 0, %.lr.ph63 ], [ %161, %153 ]
  %.11660 = phi i64 [ %150, %.lr.ph63 ], [ %160, %153 ]
  %.01959 = phi i32 [ 0, %.lr.ph63 ], [ %spec.select1, %153 ]
  %154 = shl i32 %.01959, 1
  %155 = or disjoint i32 %154, 1
  %156 = load i32, ptr %141, align 4
  %157 = zext i32 %156 to i64
  %158 = and i64 %.11660, %157
  %.not4 = icmp eq i64 %158, 0
  %159 = add i32 %154, 2
  %spec.select1 = select i1 %.not4, i32 %155, i32 %159
  %160 = lshr i64 %.11660, 1
  %161 = add i64 %.561, 1
  %162 = load i8, ptr %143, align 1
  %163 = zext i8 %162 to i64
  %164 = icmp ult i64 %161, %163
  br i1 %164, label %153, label %._crit_edge64, !llvm.loop !17

._crit_edge64:                                    ; preds = %153
  br label %165

165:                                              ; preds = %._crit_edge64, %147
  %.019.lcssa = phi i32 [ %spec.select1, %._crit_edge64 ], [ 0, %147 ]
  %166 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.2766
  store i32 %.019.lcssa, ptr %166, align 4
  br label %167

167:                                              ; preds = %165, %138
  %168 = add nuw nsw i64 %.2766, 1
  %169 = icmp samesign ult i64 %168, 256
  br i1 %169, label %138, label %.preheader2, !llvm.loop !18

.preheader1:                                      ; preds = %.critedge
  br label %189

170:                                              ; preds = %.preheader2, %.critedge
  %.669 = phi i64 [ 1, %.preheader2 ], [ %187, %.critedge ]
  %171 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.669
  %172 = load i32, ptr %171, align 4
  %173 = getelementptr inbounds nuw i8, ptr %9, i64 %.669
  %174 = load i8, ptr %173, align 1
  br label %175

175:                                              ; preds = %170, %180
  %.3868 = phi i64 [ %.669, %170 ], [ %176, %180 ]
  %176 = add i64 %.3868, -1
  %177 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %176
  %178 = load i32, ptr %177, align 4
  %179 = icmp ugt i32 %178, %172
  br i1 %179, label %180, label %.critedge

180:                                              ; preds = %175
  %181 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.3868
  store i32 %178, ptr %181, align 4
  %182 = getelementptr inbounds nuw i8, ptr %9, i64 %176
  %183 = load i8, ptr %182, align 1
  %184 = getelementptr inbounds nuw i8, ptr %9, i64 %.3868
  store i8 %183, ptr %184, align 1
  %.not2 = icmp eq i64 %176, 0
  br i1 %.not2, label %.critedge, label %175, !llvm.loop !19

.critedge:                                        ; preds = %175, %180
  %.38.lcssa = phi i64 [ %.3868, %175 ], [ %176, %180 ]
  %185 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %172, ptr %185, align 4
  %186 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %174, ptr %186, align 1
  %187 = add nuw nsw i64 %.669, 1
  %188 = icmp samesign ult i64 %187, 256
  br i1 %188, label %170, label %.preheader1, !llvm.loop !20

189:                                              ; preds = %189, %.preheader1
  %.49 = phi i64 [ %193, %189 ], [ 0, %.preheader1 ]
  %190 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %191 = load i32, ptr %190, align 4
  %192 = icmp eq i32 %191, 0
  %193 = add i64 %.49, 1
  br i1 %192, label %189, label %.preheader, !llvm.loop !21

.preheader:                                       ; preds = %189
  br i1 %12, label %.lr.ph76, label %217

.lr.ph76:                                         ; preds = %.preheader
  br label %194

194:                                              ; preds = %.lr.ph76, %213
  %.775 = phi i64 [ %.49, %.lr.ph76 ], [ %.9, %213 ]
  %.31374 = phi i64 [ 0, %.lr.ph76 ], [ %.414, %213 ]
  %.21773 = phi i64 [ 128, %.lr.ph76 ], [ %.318, %213 ]
  %.22172 = phi i32 [ 0, %.lr.ph76 ], [ %.423, %213 ]
  %.03171 = phi ptr [ %11, %.lr.ph76 ], [ %.132, %213 ]
  %.23570 = phi ptr [ %0, %.lr.ph76 ], [ %.336, %213 ]
  %195 = shl i32 %.22172, 1
  %196 = or disjoint i32 %195, 1
  %197 = load i8, ptr %.03171, align 1
  %198 = zext i8 %197 to i64
  %199 = and i64 %.21773, %198
  %.not1 = icmp eq i64 %199, 0
  %200 = add i32 %195, 2
  %spec.select2 = select i1 %.not1, i32 %196, i32 %200
  br label %201

201:                                              ; preds = %201, %194
  %.8 = phi i64 [ %.775, %194 ], [ %205, %201 ]
  %202 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %203 = load i32, ptr %202, align 4
  %204 = icmp ult i32 %203, %spec.select2
  %205 = add i64 %.8, 1
  br i1 %204, label %201, label %206, !llvm.loop !22

206:                                              ; preds = %201
  %207 = icmp eq i32 %spec.select2, %203
  br i1 %207, label %208, label %213

208:                                              ; preds = %206
  %209 = getelementptr inbounds nuw i8, ptr %9, i64 %.8
  %210 = load i8, ptr %209, align 1
  store i8 %210, ptr %.23570, align 1
  %211 = getelementptr inbounds nuw i8, ptr %.23570, i64 1
  %212 = add i64 %.31374, 1
  br label %213

213:                                              ; preds = %208, %206
  %.336 = phi ptr [ %211, %208 ], [ %.23570, %206 ]
  %.423 = phi i32 [ 0, %208 ], [ %spec.select2, %206 ]
  %.414 = phi i64 [ %212, %208 ], [ %.31374, %206 ]
  %.9 = phi i64 [ %.49, %208 ], [ %.8, %206 ]
  %214 = icmp ult i64 %.21773, 2
  %215 = lshr i64 %.21773, 1
  %.132.idx = zext i1 %214 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.03171, i64 %.132.idx
  %.318 = select i1 %214, i64 128, i64 %215
  %216 = icmp ult i64 %.414, %1
  br i1 %216, label %194, label %._crit_edge77, !llvm.loop !23

._crit_edge77:                                    ; preds = %213
  br label %217

217:                                              ; preds = %._crit_edge77, %.preheader
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
  br label %40

._crit_edge3:                                     ; preds = %36
  br label %40

40:                                               ; preds = %._crit_edge3, %._crit_edge, %4
  %.01.lcssa = phi i32 [ %.012, %._crit_edge ], [ %.0, %._crit_edge3 ], [ %3, %4 ]
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
  %6 = icmp slt i32 %10, %0
  br i1 %6, label %7, label %.loopexit, !llvm.loop !25

7:                                                ; preds = %.preheader, %5
  %.011 = phi i32 [ 1, %.preheader ], [ %10, %5 ]
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
