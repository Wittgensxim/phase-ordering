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
  br i1 %12, label %.lr.ph, label %.preheader14

.lr.ph:                                           ; preds = %2
  br label %13

..preheader14_crit_edge:                          ; preds = %13
  br label %.preheader14

.preheader14:                                     ; preds = %..preheader14_crit_edge, %2
  br label %22

13:                                               ; preds = %.lr.ph, %13
  %.0222 = phi i64 [ 0, %.lr.ph ], [ %20, %13 ]
  %.03321 = phi ptr [ %0, %.lr.ph ], [ %19, %13 ]
  %14 = load i8, ptr %.03321, align 1
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %15
  %17 = load i64, ptr %16, align 8
  %18 = add i64 %17, 1
  store i64 %18, ptr %16, align 8
  %19 = getelementptr inbounds nuw i8, ptr %.03321, i64 1
  %20 = add i64 %.0222, 1
  %21 = icmp ult i64 %20, %1
  br i1 %21, label %13, label %..preheader14_crit_edge, !llvm.loop !9

.preheader13:                                     ; preds = %28
  %.010.lcssa = phi i64 [ %.111, %28 ]
  %.not26 = icmp eq i64 %.010.lcssa, 0
  br i1 %.not26, label %.preheader12, label %.lr.ph28

.lr.ph28:                                         ; preds = %.preheader13
  br label %32

22:                                               ; preds = %.preheader14, %28
  %.1325 = phi i64 [ 0, %.preheader14 ], [ %29, %28 ]
  %.01024 = phi i64 [ 0, %.preheader14 ], [ %.111, %28 ]
  %23 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.1325
  %24 = load i64, ptr %23, align 8
  %.not8 = icmp eq i64 %24, 0
  br i1 %.not8, label %28, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.01024
  store i64 %.1325, ptr %26, align 8
  %27 = add i64 %.01024, 1
  br label %28

28:                                               ; preds = %25, %22
  %.111 = phi i64 [ %27, %25 ], [ %.01024, %22 ]
  %29 = add nuw nsw i64 %.1325, 1
  %30 = icmp samesign ult i64 %29, 256
  br i1 %30, label %22, label %.preheader13, !llvm.loop !10

..preheader12_crit_edge:                          ; preds = %32
  br label %.preheader12

.preheader12:                                     ; preds = %..preheader12_crit_edge, %.preheader13
  %31 = icmp ugt i64 %.010.lcssa, 1
  br i1 %31, label %.lr.ph30, label %56

.lr.ph30:                                         ; preds = %.preheader12
  br label %36

32:                                               ; preds = %.lr.ph28, %32
  %.2427 = phi i64 [ %.010.lcssa, %.lr.ph28 ], [ %35, %32 ]
  %33 = trunc i64 %.010.lcssa to i32
  %34 = trunc i64 %.2427 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %33, i32 noundef %34)
  %35 = add i64 %.2427, -1
  %.not = icmp eq i64 %35, 0
  br i1 %.not, label %..preheader12_crit_edge, label %32, !llvm.loop !11

36:                                               ; preds = %.lr.ph30, %36
  %.21229 = phi i64 [ %.010.lcssa, %.lr.ph30 ], [ %37, %36 ]
  %37 = add i64 %.21229, -1
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
  %48 = add i64 %.21229, 255
  %49 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %48
  store i64 %47, ptr %49, align 8
  %50 = trunc i64 %48 to i32
  %51 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %38
  store i32 %50, ptr %51, align 4
  %52 = trunc i64 %.21229 to i32
  %53 = sub i32 -255, %52
  %54 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %42
  store i32 %53, ptr %54, align 4
  store i64 %48, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %41, i32 noundef 1)
  %55 = icmp ugt i64 %37, 1
  br i1 %55, label %36, label %._crit_edge31, !llvm.loop !12

._crit_edge31:                                    ; preds = %36
  %split = phi i64 [ %37, %36 ]
  br label %56

56:                                               ; preds = %._crit_edge31, %.preheader12
  %.212.lcssa = phi i64 [ %split, %._crit_edge31 ], [ %.010.lcssa, %.preheader12 ]
  %57 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %58 = getelementptr inbounds nuw i8, ptr %57, i64 1024
  store i32 0, ptr %58, align 4
  br label %59

59:                                               ; preds = %56, %77
  %.03946 = phi i64 [ 0, %56 ], [ %.140, %77 ]
  %.04245 = phi i64 [ 0, %56 ], [ %78, %77 ]
  %.04544 = phi i64 [ 0, %56 ], [ %.146, %77 ]
  %60 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04245
  %61 = load i64, ptr %60, align 8
  %.not6 = icmp eq i64 %61, 0
  br i1 %.not6, label %62, label %65

62:                                               ; preds = %59
  %63 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04245
  store i32 0, ptr %63, align 4
  %64 = getelementptr inbounds nuw i8, ptr %7, i64 %.04245
  store i8 0, ptr %64, align 1
  br label %77

65:                                               ; preds = %59
  %.037.in32 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.04245
  %.03733 = load i32, ptr %.037.in32, align 4
  %.not734 = icmp eq i32 %.03733, 0
  br i1 %.not734, label %72, label %.lr.ph40

.lr.ph40:                                         ; preds = %65
  br label %66

66:                                               ; preds = %.lr.ph40, %66
  %.03738 = phi i32 [ %.03733, %.lr.ph40 ], [ %.037, %66 ]
  %.337 = phi i64 [ 0, %.lr.ph40 ], [ %71, %66 ]
  %.0536 = phi i64 [ 1, %.lr.ph40 ], [ %70, %66 ]
  %.04335 = phi i64 [ 0, %.lr.ph40 ], [ %.144, %66 ]
  %67 = icmp slt i32 %.03738, 0
  %68 = select i1 %67, i64 %.0536, i64 0
  %.144 = add i64 %.04335, %68
  %.138 = call i32 @llvm.abs.i32(i32 %.03738, i1 true)
  %69 = zext nneg i32 %.138 to i64
  %70 = shl i64 %.0536, 1
  %71 = add i64 %.337, 1
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %69
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %._crit_edge41, label %66, !llvm.loop !13

._crit_edge41:                                    ; preds = %66
  %split42 = phi i64 [ %.144, %66 ]
  %split43 = phi i64 [ %71, %66 ]
  br label %72

72:                                               ; preds = %._crit_edge41, %65
  %.043.lcssa = phi i64 [ %split42, %._crit_edge41 ], [ 0, %65 ]
  %.3.lcssa = phi i64 [ %split43, %._crit_edge41 ], [ 0, %65 ]
  %73 = trunc i64 %.043.lcssa to i32
  %74 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04245
  store i32 %73, ptr %74, align 4
  %75 = trunc i64 %.3.lcssa to i8
  %76 = getelementptr inbounds nuw i8, ptr %7, i64 %.04245
  store i8 %75, ptr %76, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.04544)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.03946)
  br label %77

77:                                               ; preds = %72, %62
  %.146 = phi i64 [ %spec.select, %72 ], [ %.04544, %62 ]
  %.140 = phi i64 [ %.241, %72 ], [ %.03946, %62 ]
  %78 = add nuw nsw i64 %.04245, 1
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
  br i1 %86, label %88, label %.preheader11

.preheader11:                                     ; preds = %85
  %87 = icmp ult i64 0, %1
  br i1 %87, label %.lr.ph63, label %129

.lr.ph63:                                         ; preds = %.preheader11
  br label %91

88:                                               ; preds = %85
  %89 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %90 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %89)
  call void @exit(i32 noundef 1) #11
  unreachable

91:                                               ; preds = %.lr.ph63, %125
  %.0162 = phi i32 [ -1, %.lr.ph63 ], [ %.1.lcssa, %125 ]
  %.1661 = phi i64 [ 0, %.lr.ph63 ], [ %127, %125 ]
  %.02460 = phi i8 [ 0, %.lr.ph63 ], [ %.125.lcssa, %125 ]
  %.02859 = phi i64 [ 0, %.lr.ph63 ], [ %.129.lcssa, %125 ]
  %.13458 = phi ptr [ %0, %.lr.ph63 ], [ %126, %125 ]
  %92 = load i8, ptr %.13458, align 1
  %93 = zext i8 %92 to i64
  %94 = getelementptr inbounds nuw i8, ptr %7, i64 %93
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %95 to i32
  %97 = add nsw i32 %96, -1
  %98 = shl nuw i32 1, %97
  %99 = sext i32 %98 to i64
  %100 = zext i8 %95 to i64
  %101 = icmp ult i64 0, %100
  br i1 %101, label %.lr.ph53, label %125

.lr.ph53:                                         ; preds = %91
  br label %102

102:                                              ; preds = %.lr.ph53, %115
  %.151 = phi i32 [ %.0162, %.lr.ph53 ], [ %.2, %115 ]
  %.450 = phi i64 [ 0, %.lr.ph53 ], [ %122, %115 ]
  %.01549 = phi i64 [ %99, %.lr.ph53 ], [ %121, %115 ]
  %.12548 = phi i8 [ %.02460, %.lr.ph53 ], [ %.327, %115 ]
  %.12947 = phi i64 [ %.02859, %.lr.ph53 ], [ %.230, %115 ]
  %103 = phi i8 [ %92, %.lr.ph53 ], [ %.pre-phi.in, %115 ]
  %104 = icmp eq i32 %.151, 7
  br i1 %104, label %105, label %112

105:                                              ; preds = %102
  %106 = getelementptr inbounds nuw i8, ptr %11, i64 %.12947
  store i8 %.12548, ptr %106, align 1
  %107 = add i64 %.12947, 1
  %108 = icmp eq i64 %107, %1
  br i1 %108, label %109, label %._crit_edge

._crit_edge:                                      ; preds = %105
  %.pre1 = load i8, ptr %.13458, align 1
  br label %115

109:                                              ; preds = %105
  %110 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %111 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %110)
  call void @exit(i32 noundef 1) #11
  unreachable

112:                                              ; preds = %102
  %113 = add nsw i32 %.151, 1
  %114 = shl i8 %.12548, 1
  br label %115

115:                                              ; preds = %112, %._crit_edge
  %.pre-phi.in = phi i8 [ %.pre1, %._crit_edge ], [ %103, %112 ]
  %.230 = phi i64 [ %107, %._crit_edge ], [ %.12947, %112 ]
  %.226 = phi i8 [ 0, %._crit_edge ], [ %114, %112 ]
  %.2 = phi i32 [ 0, %._crit_edge ], [ %113, %112 ]
  %.pre-phi = zext i8 %.pre-phi.in to i64
  %116 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.pre-phi
  %117 = load i32, ptr %116, align 4
  %118 = zext i32 %117 to i64
  %119 = and i64 %.01549, %118
  %.not5 = icmp ne i64 %119, 0
  %120 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %120
  %121 = lshr i64 %.01549, 1
  %122 = add nuw nsw i64 %.450, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  %123 = zext i8 %.pre to i64
  %124 = icmp ult i64 %122, %123
  br i1 %124, label %102, label %._crit_edge54, !llvm.loop !15

._crit_edge54:                                    ; preds = %115
  %split55 = phi i64 [ %.230, %115 ]
  %split56 = phi i8 [ %.327, %115 ]
  %split57 = phi i32 [ %.2, %115 ]
  br label %125

125:                                              ; preds = %._crit_edge54, %91
  %.129.lcssa = phi i64 [ %split55, %._crit_edge54 ], [ %.02859, %91 ]
  %.125.lcssa = phi i8 [ %split56, %._crit_edge54 ], [ %.02460, %91 ]
  %.1.lcssa = phi i32 [ %split57, %._crit_edge54 ], [ %.0162, %91 ]
  %126 = getelementptr inbounds nuw i8, ptr %.13458, i64 1
  %127 = add i64 %.1661, 1
  %128 = icmp ult i64 %127, %1
  br i1 %128, label %91, label %._crit_edge64, !llvm.loop !16

._crit_edge64:                                    ; preds = %125
  %split65 = phi i64 [ %.129.lcssa, %125 ]
  %split66 = phi i8 [ %.125.lcssa, %125 ]
  %split67 = phi i32 [ %.1.lcssa, %125 ]
  br label %129

129:                                              ; preds = %._crit_edge64, %.preheader11
  %.028.lcssa = phi i64 [ %split65, %._crit_edge64 ], [ 0, %.preheader11 ]
  %.024.lcssa = phi i8 [ %split66, %._crit_edge64 ], [ 0, %.preheader11 ]
  %.01.lcssa = phi i32 [ %split67, %._crit_edge64 ], [ -1, %.preheader11 ]
  %130 = sub nsw i32 7, %.01.lcssa
  %131 = zext i8 %.024.lcssa to i32
  %132 = shl i32 %131, %130
  %133 = trunc i32 %132 to i8
  %134 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %133, ptr %134, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %135

.preheader10:                                     ; preds = %161
  br label %164

135:                                              ; preds = %129, %161
  %.076 = phi ptr [ %9, %129 ], [ %137, %161 ]
  %.2775 = phi i64 [ 0, %129 ], [ %162, %161 ]
  %136 = trunc nuw i64 %.2775 to i8
  store i8 %136, ptr %.076, align 1
  %137 = getelementptr inbounds nuw i8, ptr %.076, i64 1
  %138 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.2775
  %139 = load i32, ptr %138, align 4
  %140 = getelementptr inbounds nuw i8, ptr %7, i64 %.2775
  %141 = load i8, ptr %140, align 1
  %142 = zext i8 %141 to i32
  %143 = or i32 %139, %142
  %.not3 = icmp eq i32 %143, 0
  br i1 %.not3, label %161, label %144

144:                                              ; preds = %135
  %145 = add nsw i32 %142, -1
  %146 = shl nuw i32 1, %145
  %147 = sext i32 %146 to i64
  %148 = zext i8 %141 to i64
  %149 = icmp ult i64 0, %148
  br i1 %149, label %.lr.ph72, label %159

.lr.ph72:                                         ; preds = %144
  br label %150

150:                                              ; preds = %.lr.ph72, %150
  %.570 = phi i64 [ 0, %.lr.ph72 ], [ %157, %150 ]
  %.11669 = phi i64 [ %147, %.lr.ph72 ], [ %156, %150 ]
  %.01968 = phi i32 [ 0, %.lr.ph72 ], [ %spec.select1, %150 ]
  %151 = shl i32 %.01968, 1
  %152 = or disjoint i32 %151, 1
  %153 = zext i32 %139 to i64
  %154 = and i64 %.11669, %153
  %.not4 = icmp eq i64 %154, 0
  %155 = add i32 %151, 2
  %spec.select1 = select i1 %.not4, i32 %152, i32 %155
  %156 = lshr i64 %.11669, 1
  %157 = add nuw nsw i64 %.570, 1
  %158 = icmp ult i64 %157, %148
  br i1 %158, label %150, label %._crit_edge73, !llvm.loop !17

._crit_edge73:                                    ; preds = %150
  %split74 = phi i32 [ %spec.select1, %150 ]
  br label %159

159:                                              ; preds = %._crit_edge73, %144
  %.019.lcssa = phi i32 [ %split74, %._crit_edge73 ], [ 0, %144 ]
  %160 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.2775
  store i32 %.019.lcssa, ptr %160, align 4
  br label %161

161:                                              ; preds = %159, %135
  %162 = add nuw nsw i64 %.2775, 1
  %163 = icmp samesign ult i64 %162, 256
  br i1 %163, label %135, label %.preheader10, !llvm.loop !18

.preheader9:                                      ; preds = %.critedge
  br label %183

164:                                              ; preds = %.preheader10, %.critedge
  %.678 = phi i64 [ 1, %.preheader10 ], [ %181, %.critedge ]
  %165 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.678
  %166 = load i32, ptr %165, align 4
  %167 = getelementptr inbounds nuw i8, ptr %9, i64 %.678
  %168 = load i8, ptr %167, align 1
  br label %169

169:                                              ; preds = %164, %174
  %.3877 = phi i64 [ %.678, %164 ], [ %170, %174 ]
  %170 = add nsw i64 %.3877, -1
  %171 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %170
  %172 = load i32, ptr %171, align 4
  %173 = icmp ugt i32 %172, %166
  br i1 %173, label %174, label %.critedge

174:                                              ; preds = %169
  %175 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.3877
  store i32 %172, ptr %175, align 4
  %176 = getelementptr inbounds nuw i8, ptr %9, i64 %170
  %177 = load i8, ptr %176, align 1
  %178 = getelementptr inbounds nuw i8, ptr %9, i64 %.3877
  store i8 %177, ptr %178, align 1
  %.not2 = icmp eq i64 %170, 0
  br i1 %.not2, label %.critedge, label %169, !llvm.loop !19

.critedge:                                        ; preds = %169, %174
  %.38.lcssa = phi i64 [ %.3877, %169 ], [ %170, %174 ]
  %179 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %166, ptr %179, align 4
  %180 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %168, ptr %180, align 1
  %181 = add nuw nsw i64 %.678, 1
  %182 = icmp samesign ult i64 %181, 256
  br i1 %182, label %164, label %.preheader9, !llvm.loop !20

183:                                              ; preds = %183, %.preheader9
  %.49 = phi i64 [ %187, %183 ], [ 0, %.preheader9 ]
  %184 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %185 = load i32, ptr %184, align 4
  %186 = icmp eq i32 %185, 0
  %187 = add i64 %.49, 1
  br i1 %186, label %183, label %.preheader, !llvm.loop !21

.preheader:                                       ; preds = %183
  %.49.lcssa = phi i64 [ %.49, %183 ]
  %188 = icmp ult i64 0, %1
  br i1 %188, label %.lr.ph85, label %212

.lr.ph85:                                         ; preds = %.preheader
  br label %189

189:                                              ; preds = %.lr.ph85, %208
  %.784 = phi i64 [ %.49.lcssa, %.lr.ph85 ], [ %.9, %208 ]
  %.31383 = phi i64 [ 0, %.lr.ph85 ], [ %.414, %208 ]
  %.21782 = phi i64 [ 128, %.lr.ph85 ], [ %.318, %208 ]
  %.22181 = phi i32 [ 0, %.lr.ph85 ], [ %.423, %208 ]
  %.03180 = phi ptr [ %11, %.lr.ph85 ], [ %.132, %208 ]
  %.23579 = phi ptr [ %0, %.lr.ph85 ], [ %.336, %208 ]
  %190 = shl i32 %.22181, 1
  %191 = or disjoint i32 %190, 1
  %192 = load i8, ptr %.03180, align 1
  %193 = zext i8 %192 to i64
  %194 = and i64 %.21782, %193
  %.not1 = icmp eq i64 %194, 0
  %195 = add i32 %190, 2
  %spec.select2 = select i1 %.not1, i32 %191, i32 %195
  br label %196

196:                                              ; preds = %196, %189
  %.8 = phi i64 [ %.784, %189 ], [ %200, %196 ]
  %197 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %198 = load i32, ptr %197, align 4
  %199 = icmp ult i32 %198, %spec.select2
  %200 = add i64 %.8, 1
  br i1 %199, label %196, label %201, !llvm.loop !22

201:                                              ; preds = %196
  %.8.lcssa = phi i64 [ %.8, %196 ]
  %.lcssa = phi i32 [ %198, %196 ]
  %202 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %202, label %203, label %208

203:                                              ; preds = %201
  %204 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %205 = load i8, ptr %204, align 1
  store i8 %205, ptr %.23579, align 1
  %206 = getelementptr inbounds nuw i8, ptr %.23579, i64 1
  %207 = add i64 %.31383, 1
  br label %208

208:                                              ; preds = %203, %201
  %.336 = phi ptr [ %206, %203 ], [ %.23579, %201 ]
  %.423 = phi i32 [ 0, %203 ], [ %spec.select2, %201 ]
  %.414 = phi i64 [ %207, %203 ], [ %.31383, %201 ]
  %.9 = phi i64 [ %.49.lcssa, %203 ], [ %.8.lcssa, %201 ]
  %209 = icmp ult i64 %.21782, 2
  %210 = lshr i64 %.21782, 1
  %.132.idx = zext i1 %209 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.03180, i64 %.132.idx
  %.318 = select i1 %209, i64 128, i64 %210
  %211 = icmp ult i64 %.414, %1
  br i1 %211, label %189, label %._crit_edge86, !llvm.loop !23

._crit_edge86:                                    ; preds = %208
  br label %212

212:                                              ; preds = %._crit_edge86, %.preheader
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
  %.not5 = icmp sgt i32 %3, %9
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %4
  br label %10

.._crit_edge_crit_edge:                           ; preds = %36
  %split8 = phi i32 [ %.0, %36 ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %4
  %.01.lcssa = phi i32 [ %split8, %.._crit_edge_crit_edge ], [ %3, %4 ]
  %.pre = shl i64 %8, 32
  br label %40

10:                                               ; preds = %.lr.ph, %36
  %.016 = phi i32 [ %3, %.lr.ph ], [ %.0, %36 ]
  %11 = shl nsw i32 %.016, 1
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
  %37 = sext i32 %.016 to i64
  %38 = getelementptr [8 x i8], ptr %1, i64 %37
  %39 = getelementptr i8, ptr %38, i64 -8
  store i64 %32, ptr %39, align 8
  %.not = icmp sgt i32 %.0, %9
  br i1 %.not, label %.._crit_edge_crit_edge, label %10, !llvm.loop !24

split:                                            ; preds = %25
  %sext.lcssa = phi i64 [ %sext, %25 ]
  %.01.lcssa3 = phi i32 [ %.016, %25 ]
  br label %40

40:                                               ; preds = %split, %._crit_edge
  %.014 = phi i32 [ %.01.lcssa3, %split ], [ %.01.lcssa, %._crit_edge ]
  %sext1.pre-phi = phi i64 [ %sext.lcssa, %split ], [ %.pre, %._crit_edge ]
  %41 = ashr exact i64 %sext1.pre-phi, 32
  %42 = sext i32 %.014 to i64
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
define internal range(i64 -1, 32) i64 @random4() #0 {
  %1 = load i32, ptr @seed, align 4
  %2 = xor i32 %1, 123459876
  %3 = sdiv i32 %2, 127773
  %.neg = mul nsw i32 %3, -127773
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
