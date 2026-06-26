; ModuleID = 'results\paper_full\CoyoteBench_huffbench\round_003\output.ll'
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
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %11, label %.lr.ph

.lr.ph:                                           ; preds = %1
  br label %3

3:                                                ; preds = %.lr.ph, %3
  %.02 = phi i32 [ 0, %.lr.ph ], [ %8, %3 ]
  %.011 = phi ptr [ %2, %.lr.ph ], [ %7, %3 ]
  %4 = call i64 @random4()
  %5 = getelementptr inbounds nuw i8, ptr @.str, i64 %4
  %6 = load i8, ptr %5, align 1
  store i8 %6, ptr %.011, align 1
  %7 = getelementptr inbounds nuw i8, ptr %.011, i64 1
  %8 = add nuw nsw i32 %.02, 1
  %9 = zext nneg i32 %8 to i64
  %10 = icmp ugt i64 %0, %9
  br i1 %10, label %3, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %3
  br label %11

11:                                               ; preds = %._crit_edge, %1
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
  %.not79 = icmp eq i64 %1, 0
  br i1 %.not79, label %.preheader6, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %12

..preheader6_crit_edge:                           ; preds = %12
  br label %.preheader6

.preheader6:                                      ; preds = %..preheader6_crit_edge, %2
  br label %21

12:                                               ; preds = %.lr.ph, %12
  %.0214 = phi i64 [ 0, %.lr.ph ], [ %19, %12 ]
  %.03313 = phi ptr [ %0, %.lr.ph ], [ %18, %12 ]
  %13 = load i8, ptr %.03313, align 1
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %14
  %16 = load i64, ptr %15, align 8
  %17 = add i64 %16, 1
  store i64 %17, ptr %15, align 8
  %18 = getelementptr inbounds nuw i8, ptr %.03313, i64 1
  %19 = add i64 %.0214, 1
  %20 = icmp ult i64 %19, %1
  br i1 %20, label %12, label %..preheader6_crit_edge, !llvm.loop !9

.preheader5:                                      ; preds = %27
  %.not18 = icmp eq i64 %.111, 0
  br i1 %.not18, label %.preheader4, label %.lr.ph20

.lr.ph20:                                         ; preds = %.preheader5
  br label %31

21:                                               ; preds = %.preheader6, %27
  %.1317 = phi i64 [ 0, %.preheader6 ], [ %28, %27 ]
  %.01016 = phi i64 [ 0, %.preheader6 ], [ %.111, %27 ]
  %22 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.1317
  %23 = load i64, ptr %22, align 8
  %.not8 = icmp eq i64 %23, 0
  br i1 %.not8, label %27, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.01016
  store i64 %.1317, ptr %25, align 8
  %26 = add i64 %.01016, 1
  br label %27

27:                                               ; preds = %24, %21
  %.111 = phi i64 [ %26, %24 ], [ %.01016, %21 ]
  %28 = add nuw nsw i64 %.1317, 1
  %29 = icmp samesign ult i64 %.1317, 255
  br i1 %29, label %21, label %.preheader5, !llvm.loop !10

..preheader4_crit_edge:                           ; preds = %31
  br label %.preheader4

.preheader4:                                      ; preds = %..preheader4_crit_edge, %.preheader5
  %30 = icmp ugt i64 %.111, 1
  br i1 %30, label %.lr.ph22, label %55

.lr.ph22:                                         ; preds = %.preheader4
  br label %35

31:                                               ; preds = %.lr.ph20, %31
  %.2419 = phi i64 [ %.111, %.lr.ph20 ], [ %34, %31 ]
  %32 = trunc i64 %.111 to i32
  %33 = trunc i64 %.2419 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %32, i32 noundef %33)
  %34 = add i64 %.2419, -1
  %.not = icmp eq i64 %34, 0
  br i1 %.not, label %..preheader4_crit_edge, label %31, !llvm.loop !11

35:                                               ; preds = %.lr.ph22, %35
  %.21221 = phi i64 [ %.111, %.lr.ph22 ], [ %36, %35 ]
  %36 = add i64 %.21221, -1
  %37 = load i64, ptr %4, align 16
  %38 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %36
  %39 = load i64, ptr %38, align 8
  store i64 %39, ptr %4, align 16
  %40 = trunc i64 %36 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %40, i32 noundef 1)
  %41 = load i64, ptr %4, align 16
  %42 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %41
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %37
  %45 = load i64, ptr %44, align 8
  %46 = add i64 %43, %45
  %47 = add i64 %.21221, 255
  %48 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %47
  store i64 %46, ptr %48, align 8
  %49 = trunc i64 %47 to i32
  %50 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %37
  store i32 %49, ptr %50, align 4
  %51 = trunc i64 %.21221 to i32
  %52 = sub i32 -255, %51
  %53 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %41
  store i32 %52, ptr %53, align 4
  store i64 %47, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %40, i32 noundef 1)
  %54 = icmp ugt i64 %36, 1
  br i1 %54, label %35, label %._crit_edge23, !llvm.loop !12

._crit_edge23:                                    ; preds = %35
  br label %55

55:                                               ; preds = %._crit_edge23, %.preheader4
  %.212.lcssa = phi i64 [ %36, %._crit_edge23 ], [ %.111, %.preheader4 ]
  %56 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %57 = getelementptr inbounds nuw i8, ptr %56, i64 1024
  store i32 0, ptr %57, align 4
  br label %58

58:                                               ; preds = %55, %76
  %.03938 = phi i64 [ 0, %55 ], [ %.140, %76 ]
  %.04237 = phi i64 [ 0, %55 ], [ %77, %76 ]
  %.04536 = phi i64 [ 0, %55 ], [ %.146, %76 ]
  %59 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04237
  %60 = load i64, ptr %59, align 8
  %.not6 = icmp eq i64 %60, 0
  br i1 %.not6, label %61, label %64

61:                                               ; preds = %58
  %62 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04237
  store i32 0, ptr %62, align 4
  %63 = getelementptr inbounds nuw i8, ptr %7, i64 %.04237
  store i8 0, ptr %63, align 1
  br label %76

64:                                               ; preds = %58
  %.037.in24 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.04237
  %.03725 = load i32, ptr %.037.in24, align 4
  %.not726 = icmp eq i32 %.03725, 0
  br i1 %.not726, label %71, label %.lr.ph32

.lr.ph32:                                         ; preds = %64
  br label %65

65:                                               ; preds = %.lr.ph32, %65
  %.03730 = phi i32 [ %.03725, %.lr.ph32 ], [ %.037, %65 ]
  %.329 = phi i64 [ 0, %.lr.ph32 ], [ %70, %65 ]
  %.0528 = phi i64 [ 1, %.lr.ph32 ], [ %69, %65 ]
  %.04327 = phi i64 [ 0, %.lr.ph32 ], [ %.144, %65 ]
  %66 = icmp slt i32 %.03730, 0
  %67 = select i1 %66, i64 %.0528, i64 0
  %.144 = add i64 %.04327, %67
  %.138 = call i32 @llvm.abs.i32(i32 %.03730, i1 true)
  %68 = zext nneg i32 %.138 to i64
  %69 = shl i64 %.0528, 1
  %70 = add i64 %.329, 1
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %68
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %._crit_edge33, label %65, !llvm.loop !13

._crit_edge33:                                    ; preds = %65
  br label %71

71:                                               ; preds = %._crit_edge33, %64
  %.043.lcssa = phi i64 [ %.144, %._crit_edge33 ], [ 0, %64 ]
  %.3.lcssa = phi i64 [ %70, %._crit_edge33 ], [ 0, %64 ]
  %72 = trunc i64 %.043.lcssa to i32
  %73 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04237
  store i32 %72, ptr %73, align 4
  %74 = trunc i64 %.3.lcssa to i8
  %75 = getelementptr inbounds nuw i8, ptr %7, i64 %.04237
  store i8 %74, ptr %75, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.04536)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.03938)
  br label %76

76:                                               ; preds = %71, %61
  %.146 = phi i64 [ %spec.select, %71 ], [ %.04536, %61 ]
  %.140 = phi i64 [ %.241, %71 ], [ %.03938, %61 ]
  %77 = add nuw nsw i64 %.04237, 1
  %78 = icmp samesign ult i64 %.04237, 255
  br i1 %78, label %58, label %79, !llvm.loop !14

79:                                               ; preds = %76
  %80 = icmp ugt i64 %.140, 32
  br i1 %80, label %81, label %84

81:                                               ; preds = %79
  %82 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %83 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %82)
  call void @exit(i32 noundef 1) #11
  unreachable

84:                                               ; preds = %79
  %85 = icmp eq i64 %.146, 0
  br i1 %85, label %86, label %.preheader3

.preheader3:                                      ; preds = %84
  %.not80 = icmp eq i64 %1, 0
  br i1 %.not80, label %129, label %.lr.ph55

.lr.ph55:                                         ; preds = %.preheader3
  br label %89

86:                                               ; preds = %84
  %87 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %88 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %87)
  call void @exit(i32 noundef 1) #11
  unreachable

89:                                               ; preds = %.lr.ph55, %121
  %.0154 = phi i32 [ -1, %.lr.ph55 ], [ %.1.lcssa, %121 ]
  %.1653 = phi i64 [ 0, %.lr.ph55 ], [ %123, %121 ]
  %.02452 = phi i8 [ 0, %.lr.ph55 ], [ %.125.lcssa, %121 ]
  %.02851 = phi i64 [ 0, %.lr.ph55 ], [ %.129.lcssa, %121 ]
  %.13450 = phi ptr [ %0, %.lr.ph55 ], [ %122, %121 ]
  %90 = load i8, ptr %.13450, align 1
  %91 = zext i8 %90 to i64
  %92 = getelementptr inbounds nuw i8, ptr %7, i64 %91
  %93 = load i8, ptr %92, align 1
  %.not81 = icmp eq i8 %93, 0
  br i1 %.not81, label %121, label %.lr.ph45

.lr.ph45:                                         ; preds = %89
  %94 = zext i8 %93 to i32
  %95 = add nsw i32 %94, -1
  %96 = shl nuw i32 1, %95
  %97 = sext i32 %96 to i64
  br label %98

98:                                               ; preds = %.lr.ph45, %111
  %.143 = phi i32 [ %.0154, %.lr.ph45 ], [ %.2, %111 ]
  %.442 = phi i64 [ 0, %.lr.ph45 ], [ %118, %111 ]
  %.01541 = phi i64 [ %97, %.lr.ph45 ], [ %117, %111 ]
  %.12540 = phi i8 [ %.02452, %.lr.ph45 ], [ %.327, %111 ]
  %.12939 = phi i64 [ %.02851, %.lr.ph45 ], [ %.230, %111 ]
  %99 = phi i8 [ %90, %.lr.ph45 ], [ %.pre-phi.in, %111 ]
  %100 = icmp eq i32 %.143, 7
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = getelementptr inbounds nuw i8, ptr %11, i64 %.12939
  store i8 %.12540, ptr %102, align 1
  %103 = add i64 %.12939, 1
  %104 = icmp eq i64 %103, %1
  br i1 %104, label %105, label %._crit_edge

._crit_edge:                                      ; preds = %101
  %.pre1 = load i8, ptr %.13450, align 1
  br label %111

105:                                              ; preds = %101
  %106 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %107 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %106)
  call void @exit(i32 noundef 1) #11
  unreachable

108:                                              ; preds = %98
  %109 = add nsw i32 %.143, 1
  %110 = shl i8 %.12540, 1
  br label %111

111:                                              ; preds = %108, %._crit_edge
  %.pre-phi.in = phi i8 [ %.pre1, %._crit_edge ], [ %99, %108 ]
  %.230 = phi i64 [ %103, %._crit_edge ], [ %.12939, %108 ]
  %.226 = phi i8 [ 0, %._crit_edge ], [ %110, %108 ]
  %.2 = phi i32 [ 0, %._crit_edge ], [ %109, %108 ]
  %.pre-phi = zext i8 %.pre-phi.in to i64
  %112 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.pre-phi
  %113 = load i32, ptr %112, align 4
  %114 = zext i32 %113 to i64
  %115 = and i64 %.01541, %114
  %.not5 = icmp ne i64 %115, 0
  %116 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %116
  %117 = lshr i64 %.01541, 1
  %118 = add i64 %.442, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  %119 = zext i8 %.pre to i64
  %120 = icmp ult i64 %118, %119
  br i1 %120, label %98, label %._crit_edge46, !llvm.loop !15

._crit_edge46:                                    ; preds = %111
  br label %121

121:                                              ; preds = %._crit_edge46, %89
  %.129.lcssa = phi i64 [ %.230, %._crit_edge46 ], [ %.02851, %89 ]
  %.125.lcssa = phi i8 [ %.327, %._crit_edge46 ], [ %.02452, %89 ]
  %.1.lcssa = phi i32 [ %.2, %._crit_edge46 ], [ %.0154, %89 ]
  %122 = getelementptr inbounds nuw i8, ptr %.13450, i64 1
  %123 = add i64 %.1653, 1
  %124 = icmp ult i64 %123, %1
  br i1 %124, label %89, label %._crit_edge56, !llvm.loop !16

._crit_edge56:                                    ; preds = %121
  %125 = sub nsw i32 7, %.1.lcssa
  %126 = zext i8 %.125.lcssa to i32
  %127 = shl i32 %126, %125
  %128 = trunc i32 %127 to i8
  br label %129

129:                                              ; preds = %._crit_edge56, %.preheader3
  %.028.lcssa = phi i64 [ %.129.lcssa, %._crit_edge56 ], [ 0, %.preheader3 ]
  %130 = phi i8 [ %128, %._crit_edge56 ], [ 0, %.preheader3 ]
  %131 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %130, ptr %131, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %132

.preheader2:                                      ; preds = %157
  br label %160

132:                                              ; preds = %129, %157
  %.068 = phi ptr [ %9, %129 ], [ %134, %157 ]
  %.2767 = phi i64 [ 0, %129 ], [ %158, %157 ]
  %133 = trunc nuw i64 %.2767 to i8
  store i8 %133, ptr %.068, align 1
  %134 = getelementptr inbounds nuw i8, ptr %.068, i64 1
  %135 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.2767
  %136 = load i32, ptr %135, align 4
  %137 = getelementptr inbounds nuw i8, ptr %7, i64 %.2767
  %138 = load i8, ptr %137, align 1
  %139 = zext i8 %138 to i32
  %140 = or i32 %136, %139
  %.not3 = icmp eq i32 %140, 0
  br i1 %.not3, label %157, label %141

141:                                              ; preds = %132
  %142 = zext i8 %138 to i64
  %.not82 = icmp eq i8 %138, 0
  br i1 %.not82, label %155, label %.lr.ph64

.lr.ph64:                                         ; preds = %141
  %143 = add nsw i32 %139, -1
  %144 = shl nuw i32 1, %143
  %145 = sext i32 %144 to i64
  br label %146

146:                                              ; preds = %.lr.ph64, %146
  %.562 = phi i64 [ 0, %.lr.ph64 ], [ %153, %146 ]
  %.11661 = phi i64 [ %145, %.lr.ph64 ], [ %152, %146 ]
  %.01960 = phi i32 [ 0, %.lr.ph64 ], [ %spec.select1, %146 ]
  %147 = shl i32 %.01960, 1
  %148 = or disjoint i32 %147, 1
  %149 = zext i32 %136 to i64
  %150 = and i64 %.11661, %149
  %.not4 = icmp eq i64 %150, 0
  %151 = add i32 %147, 2
  %spec.select1 = select i1 %.not4, i32 %148, i32 %151
  %152 = lshr i64 %.11661, 1
  %153 = add i64 %.562, 1
  %154 = icmp ult i64 %153, %142
  br i1 %154, label %146, label %._crit_edge65, !llvm.loop !17

._crit_edge65:                                    ; preds = %146
  br label %155

155:                                              ; preds = %._crit_edge65, %141
  %.019.lcssa = phi i32 [ %spec.select1, %._crit_edge65 ], [ 0, %141 ]
  %156 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.2767
  store i32 %.019.lcssa, ptr %156, align 4
  br label %157

157:                                              ; preds = %155, %132
  %158 = add nuw nsw i64 %.2767, 1
  %159 = icmp samesign ult i64 %.2767, 255
  br i1 %159, label %132, label %.preheader2, !llvm.loop !18

.preheader1:                                      ; preds = %.critedge
  br label %179

160:                                              ; preds = %.preheader2, %.critedge
  %.670 = phi i64 [ 1, %.preheader2 ], [ %177, %.critedge ]
  %161 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.670
  %162 = load i32, ptr %161, align 4
  %163 = getelementptr inbounds nuw i8, ptr %9, i64 %.670
  %164 = load i8, ptr %163, align 1
  br label %165

165:                                              ; preds = %160, %170
  %.3869 = phi i64 [ %.670, %160 ], [ %166, %170 ]
  %166 = add i64 %.3869, -1
  %167 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %166
  %168 = load i32, ptr %167, align 4
  %169 = icmp ugt i32 %168, %162
  br i1 %169, label %170, label %.critedge

170:                                              ; preds = %165
  %171 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.3869
  store i32 %168, ptr %171, align 4
  %172 = getelementptr inbounds nuw i8, ptr %9, i64 %166
  %173 = load i8, ptr %172, align 1
  %174 = getelementptr inbounds nuw i8, ptr %9, i64 %.3869
  store i8 %173, ptr %174, align 1
  %.not2 = icmp eq i64 %166, 0
  br i1 %.not2, label %.critedge, label %165, !llvm.loop !19

.critedge:                                        ; preds = %165, %170
  %.38.lcssa = phi i64 [ %.3869, %165 ], [ %166, %170 ]
  %175 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %162, ptr %175, align 4
  %176 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %164, ptr %176, align 1
  %177 = add nuw nsw i64 %.670, 1
  %178 = icmp samesign ult i64 %.670, 255
  br i1 %178, label %160, label %.preheader1, !llvm.loop !20

179:                                              ; preds = %179, %.preheader1
  %.49 = phi i64 [ %183, %179 ], [ 0, %.preheader1 ]
  %180 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %181 = load i32, ptr %180, align 4
  %182 = icmp eq i32 %181, 0
  %183 = add i64 %.49, 1
  br i1 %182, label %179, label %.preheader, !llvm.loop !21

.preheader:                                       ; preds = %179
  %.not83 = icmp eq i64 %1, 0
  br i1 %.not83, label %207, label %.lr.ph77

.lr.ph77:                                         ; preds = %.preheader
  br label %184

184:                                              ; preds = %.lr.ph77, %203
  %.776 = phi i64 [ %.49, %.lr.ph77 ], [ %.9, %203 ]
  %.31375 = phi i64 [ 0, %.lr.ph77 ], [ %.414, %203 ]
  %.21774 = phi i64 [ 128, %.lr.ph77 ], [ %.318, %203 ]
  %.22173 = phi i32 [ 0, %.lr.ph77 ], [ %.423, %203 ]
  %.03172 = phi ptr [ %11, %.lr.ph77 ], [ %.132, %203 ]
  %.23571 = phi ptr [ %0, %.lr.ph77 ], [ %.336, %203 ]
  %185 = shl i32 %.22173, 1
  %186 = or disjoint i32 %185, 1
  %187 = load i8, ptr %.03172, align 1
  %188 = zext i8 %187 to i64
  %189 = and i64 %.21774, %188
  %.not1 = icmp eq i64 %189, 0
  %190 = add i32 %185, 2
  %spec.select2 = select i1 %.not1, i32 %186, i32 %190
  br label %191

191:                                              ; preds = %191, %184
  %.8 = phi i64 [ %.776, %184 ], [ %195, %191 ]
  %192 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %193 = load i32, ptr %192, align 4
  %194 = icmp ult i32 %193, %spec.select2
  %195 = add i64 %.8, 1
  br i1 %194, label %191, label %196, !llvm.loop !22

196:                                              ; preds = %191
  %197 = icmp eq i32 %spec.select2, %193
  br i1 %197, label %198, label %203

198:                                              ; preds = %196
  %199 = getelementptr inbounds nuw i8, ptr %9, i64 %.8
  %200 = load i8, ptr %199, align 1
  store i8 %200, ptr %.23571, align 1
  %201 = getelementptr inbounds nuw i8, ptr %.23571, i64 1
  %202 = add i64 %.31375, 1
  br label %203

203:                                              ; preds = %198, %196
  %.336 = phi ptr [ %201, %198 ], [ %.23571, %196 ]
  %.423 = phi i32 [ 0, %198 ], [ %spec.select2, %196 ]
  %.414 = phi i64 [ %202, %198 ], [ %.31375, %196 ]
  %.9 = phi i64 [ %.49, %198 ], [ %.8, %196 ]
  %204 = icmp ult i64 %.21774, 2
  %205 = lshr i64 %.21774, 1
  %.132.idx = zext i1 %204 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.03172, i64 %.132.idx
  %.318 = select i1 %204, i64 128, i64 %205
  %206 = icmp ult i64 %.414, %1
  br i1 %206, label %184, label %._crit_edge78, !llvm.loop !23

._crit_edge78:                                    ; preds = %203
  br label %207

207:                                              ; preds = %._crit_edge78, %.preheader
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
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %4
  %.01.lcssa = phi i32 [ %.0, %.._crit_edge_crit_edge ], [ %3, %4 ]
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
  br label %40

40:                                               ; preds = %split, %._crit_edge
  %.012 = phi i32 [ %.014, %split ], [ %.01.lcssa, %._crit_edge ]
  %sext1.pre-phi = phi i64 [ %sext, %split ], [ %.pre, %._crit_edge ]
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
  br label %8

5:                                                ; preds = %8
  %6 = add nuw nsw i32 %.011, 1
  %7 = icmp slt i32 %6, %0
  br i1 %7, label %8, label %.loopexit, !llvm.loop !25

8:                                                ; preds = %.preheader, %5
  %.011 = phi i32 [ 1, %.preheader ], [ %6, %5 ]
  %9 = load ptr, ptr %4, align 8
  %10 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(4) @.str.4) #10
  %.not = icmp ne i32 %10, 0
  br i1 %.not, label %5, label %.loopexit

.loopexit:                                        ; preds = %5, %8
  br label %11

11:                                               ; preds = %.loopexit, %2
  %.not1 = phi i1 [ true, %2 ], [ %.not, %.loopexit ]
  %12 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %13

13:                                               ; preds = %11, %13
  %.122 = phi i32 [ 0, %11 ], [ %14, %13 ]
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  %14 = add nuw nsw i32 %.122, 1
  %15 = icmp samesign ult i32 %.122, 29
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
