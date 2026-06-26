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
  br i1 %12, label %.lr.ph, label %.preheader7

.lr.ph:                                           ; preds = %2
  br label %13

..preheader7_crit_edge:                           ; preds = %13
  br label %.preheader7

.preheader7:                                      ; preds = %..preheader7_crit_edge, %2
  br label %22

13:                                               ; preds = %.lr.ph, %13
  %.0215 = phi i64 [ 0, %.lr.ph ], [ %20, %13 ]
  %.03314 = phi ptr [ %0, %.lr.ph ], [ %19, %13 ]
  %14 = load i8, ptr %.03314, align 1
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %15
  %17 = load i64, ptr %16, align 8
  %18 = add i64 %17, 1
  store i64 %18, ptr %16, align 8
  %19 = getelementptr inbounds nuw i8, ptr %.03314, i64 1
  %20 = add i64 %.0215, 1
  %21 = icmp ult i64 %20, %1
  br i1 %21, label %13, label %..preheader7_crit_edge, !llvm.loop !9

.preheader6:                                      ; preds = %28
  %.010.lcssa = phi i64 [ %.111, %28 ]
  %.not18 = icmp eq i64 %.010.lcssa, 0
  br i1 %.not18, label %.preheader5, label %.lr.ph20

.lr.ph20:                                         ; preds = %.preheader6
  br label %32

22:                                               ; preds = %.preheader7, %28
  %.1317 = phi i64 [ 0, %.preheader7 ], [ %29, %28 ]
  %.01016 = phi i64 [ 0, %.preheader7 ], [ %.111, %28 ]
  %23 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.1317
  %24 = load i64, ptr %23, align 8
  %.not8 = icmp eq i64 %24, 0
  br i1 %.not8, label %28, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.01016
  store i64 %.1317, ptr %26, align 8
  %27 = add i64 %.01016, 1
  br label %28

28:                                               ; preds = %25, %22
  %.111 = phi i64 [ %27, %25 ], [ %.01016, %22 ]
  %29 = add nuw nsw i64 %.1317, 1
  %30 = icmp samesign ult i64 %29, 256
  br i1 %30, label %22, label %.preheader6, !llvm.loop !10

..preheader5_crit_edge:                           ; preds = %32
  br label %.preheader5

.preheader5:                                      ; preds = %..preheader5_crit_edge, %.preheader6
  %31 = icmp ugt i64 %.010.lcssa, 1
  br i1 %31, label %.lr.ph22, label %57

.lr.ph22:                                         ; preds = %.preheader5
  br label %36

32:                                               ; preds = %.lr.ph20, %32
  %.2419 = phi i64 [ %.010.lcssa, %.lr.ph20 ], [ %35, %32 ]
  %33 = trunc i64 %.010.lcssa to i32
  %34 = trunc i64 %.2419 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %33, i32 noundef %34)
  %35 = add i64 %.2419, -1
  %.not = icmp eq i64 %35, 0
  br i1 %.not, label %..preheader5_crit_edge, label %32, !llvm.loop !11

36:                                               ; preds = %.lr.ph22, %36
  %.21221 = phi i64 [ %.010.lcssa, %.lr.ph22 ], [ %37, %36 ]
  %37 = add i64 %.21221, -1
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
  %48 = add i64 %.21221, 255
  %49 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %48
  store i64 %47, ptr %49, align 8
  %50 = trunc i64 %48 to i32
  %51 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %38
  store i32 %50, ptr %51, align 4
  %52 = trunc i64 %.21221 to i32
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

57:                                               ; preds = %._crit_edge, %.preheader5
  %.212.lcssa = phi i64 [ %split, %._crit_edge ], [ %.010.lcssa, %.preheader5 ]
  %58 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %59 = getelementptr inbounds nuw i8, ptr %58, i64 1024
  store i32 0, ptr %59, align 4
  br label %60

60:                                               ; preds = %57, %77
  %.03936 = phi i64 [ 0, %57 ], [ %.140, %77 ]
  %.04235 = phi i64 [ 0, %57 ], [ %78, %77 ]
  %.04534 = phi i64 [ 0, %57 ], [ %.146, %77 ]
  %61 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04235
  %62 = load i64, ptr %61, align 8
  %.not6 = icmp eq i64 %62, 0
  br i1 %.not6, label %63, label %.preheader4

.preheader4:                                      ; preds = %60
  %.037.in23 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.04235
  %.03724 = load i32, ptr %.037.in23, align 4
  %.not725 = icmp eq i32 %.03724, 0
  br i1 %.not725, label %72, label %.lr.ph30

.lr.ph30:                                         ; preds = %.preheader4
  br label %66

63:                                               ; preds = %60
  %64 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04235
  store i32 0, ptr %64, align 4
  %65 = getelementptr inbounds nuw i8, ptr %7, i64 %.04235
  store i8 0, ptr %65, align 1
  br label %77

66:                                               ; preds = %.lr.ph30, %66
  %.03729 = phi i32 [ %.03724, %.lr.ph30 ], [ %.037, %66 ]
  %.328 = phi i64 [ 0, %.lr.ph30 ], [ %71, %66 ]
  %.0527 = phi i64 [ 1, %.lr.ph30 ], [ %70, %66 ]
  %.04326 = phi i64 [ 0, %.lr.ph30 ], [ %.144, %66 ]
  %67 = icmp slt i32 %.03729, 0
  %68 = select i1 %67, i64 %.0527, i64 0
  %.144 = add i64 %.04326, %68
  %.138 = call i32 @llvm.abs.i32(i32 %.03729, i1 true)
  %69 = zext nneg i32 %.138 to i64
  %70 = shl i64 %.0527, 1
  %71 = add i64 %.328, 1
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %69
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %._crit_edge31, label %66, !llvm.loop !13

._crit_edge31:                                    ; preds = %66
  %split32 = phi i64 [ %.144, %66 ]
  %split33 = phi i64 [ %71, %66 ]
  br label %72

72:                                               ; preds = %._crit_edge31, %.preheader4
  %.043.lcssa = phi i64 [ %split32, %._crit_edge31 ], [ 0, %.preheader4 ]
  %.3.lcssa = phi i64 [ %split33, %._crit_edge31 ], [ 0, %.preheader4 ]
  %73 = trunc i64 %.043.lcssa to i32
  %74 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04235
  store i32 %73, ptr %74, align 4
  %75 = trunc i64 %.3.lcssa to i8
  %76 = getelementptr inbounds nuw i8, ptr %7, i64 %.04235
  store i8 %75, ptr %76, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.04534)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.03936)
  br label %77

77:                                               ; preds = %72, %63
  %.146 = phi i64 [ %spec.select, %72 ], [ %.04534, %63 ]
  %.140 = phi i64 [ %.241, %72 ], [ %.03936, %63 ]
  %78 = add nuw nsw i64 %.04235, 1
  %79 = icmp samesign ult i64 %78, 256
  br i1 %79, label %60, label %80, !llvm.loop !14

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
  br i1 %86, label %88, label %.preheader3

.preheader3:                                      ; preds = %85
  %87 = icmp ult i64 0, %1
  br i1 %87, label %.lr.ph53, label %138

.lr.ph53:                                         ; preds = %.preheader3
  br label %91

88:                                               ; preds = %85
  %89 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %90 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %89)
  call void @exit(i32 noundef 1) #11
  unreachable

91:                                               ; preds = %.lr.ph53, %134
  %.0152 = phi i32 [ -1, %.lr.ph53 ], [ %.1.lcssa, %134 ]
  %.1651 = phi i64 [ 0, %.lr.ph53 ], [ %136, %134 ]
  %.02450 = phi i8 [ 0, %.lr.ph53 ], [ %.125.lcssa, %134 ]
  %.02849 = phi i64 [ 0, %.lr.ph53 ], [ %.129.lcssa, %134 ]
  %.13448 = phi ptr [ %0, %.lr.ph53 ], [ %135, %134 ]
  %92 = load i8, ptr %.13448, align 1
  %93 = zext i8 %92 to i64
  %94 = getelementptr inbounds nuw i8, ptr %7, i64 %93
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %95 to i32
  %97 = add nsw i32 %96, -1
  %98 = shl nuw i32 1, %97
  %99 = sext i32 %98 to i64
  %100 = load i8, ptr %.13448, align 1
  %101 = zext i8 %100 to i64
  %102 = getelementptr inbounds nuw i8, ptr %7, i64 %101
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i64
  %105 = icmp ult i64 0, %104
  br i1 %105, label %.lr.ph43, label %134

.lr.ph43:                                         ; preds = %91
  br label %106

106:                                              ; preds = %.lr.ph43, %118
  %.141 = phi i32 [ %.0152, %.lr.ph43 ], [ %.2, %118 ]
  %.440 = phi i64 [ 0, %.lr.ph43 ], [ %127, %118 ]
  %.01539 = phi i64 [ %99, %.lr.ph43 ], [ %126, %118 ]
  %.12538 = phi i8 [ %.02450, %.lr.ph43 ], [ %.327, %118 ]
  %.12937 = phi i64 [ %.02849, %.lr.ph43 ], [ %.230, %118 ]
  %107 = icmp eq i32 %.141, 7
  br i1 %107, label %108, label %115

108:                                              ; preds = %106
  %109 = getelementptr inbounds nuw i8, ptr %11, i64 %.12937
  store i8 %.12538, ptr %109, align 1
  %110 = add i64 %.12937, 1
  %111 = icmp eq i64 %110, %1
  br i1 %111, label %112, label %118

112:                                              ; preds = %108
  %113 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %114 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %113)
  call void @exit(i32 noundef 1) #11
  unreachable

115:                                              ; preds = %106
  %116 = add nsw i32 %.141, 1
  %117 = shl i8 %.12538, 1
  br label %118

118:                                              ; preds = %115, %108
  %.230 = phi i64 [ %.12937, %115 ], [ %110, %108 ]
  %.226 = phi i8 [ %117, %115 ], [ 0, %108 ]
  %.2 = phi i32 [ %116, %115 ], [ 0, %108 ]
  %119 = load i8, ptr %.13448, align 1
  %120 = zext i8 %119 to i64
  %121 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %120
  %122 = load i32, ptr %121, align 4
  %123 = zext i32 %122 to i64
  %124 = and i64 %.01539, %123
  %.not5 = icmp ne i64 %124, 0
  %125 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %125
  %126 = lshr i64 %.01539, 1
  %127 = add i64 %.440, 1
  %128 = load i8, ptr %.13448, align 1
  %129 = zext i8 %128 to i64
  %130 = getelementptr inbounds nuw i8, ptr %7, i64 %129
  %131 = load i8, ptr %130, align 1
  %132 = zext i8 %131 to i64
  %133 = icmp ult i64 %127, %132
  br i1 %133, label %106, label %._crit_edge44, !llvm.loop !15

._crit_edge44:                                    ; preds = %118
  %split45 = phi i64 [ %.230, %118 ]
  %split46 = phi i8 [ %.327, %118 ]
  %split47 = phi i32 [ %.2, %118 ]
  br label %134

134:                                              ; preds = %._crit_edge44, %91
  %.129.lcssa = phi i64 [ %split45, %._crit_edge44 ], [ %.02849, %91 ]
  %.125.lcssa = phi i8 [ %split46, %._crit_edge44 ], [ %.02450, %91 ]
  %.1.lcssa = phi i32 [ %split47, %._crit_edge44 ], [ %.0152, %91 ]
  %135 = getelementptr inbounds nuw i8, ptr %.13448, i64 1
  %136 = add i64 %.1651, 1
  %137 = icmp ult i64 %136, %1
  br i1 %137, label %91, label %._crit_edge54, !llvm.loop !16

._crit_edge54:                                    ; preds = %134
  %split55 = phi i64 [ %.129.lcssa, %134 ]
  %split56 = phi i8 [ %.125.lcssa, %134 ]
  %split57 = phi i32 [ %.1.lcssa, %134 ]
  br label %138

138:                                              ; preds = %._crit_edge54, %.preheader3
  %.028.lcssa = phi i64 [ %split55, %._crit_edge54 ], [ 0, %.preheader3 ]
  %.024.lcssa = phi i8 [ %split56, %._crit_edge54 ], [ 0, %.preheader3 ]
  %.01.lcssa = phi i32 [ %split57, %._crit_edge54 ], [ -1, %.preheader3 ]
  %139 = sub nsw i32 7, %.01.lcssa
  %140 = zext i8 %.024.lcssa to i32
  %141 = shl i32 %140, %139
  %142 = trunc i32 %141 to i8
  %143 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %142, ptr %143, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %144

.preheader2:                                      ; preds = %174
  br label %177

144:                                              ; preds = %138, %174
  %.066 = phi ptr [ %9, %138 ], [ %146, %174 ]
  %.2765 = phi i64 [ 0, %138 ], [ %175, %174 ]
  %145 = trunc nuw i64 %.2765 to i8
  store i8 %145, ptr %.066, align 1
  %146 = getelementptr inbounds nuw i8, ptr %.066, i64 1
  %147 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.2765
  %148 = load i32, ptr %147, align 4
  %149 = getelementptr inbounds nuw i8, ptr %7, i64 %.2765
  %150 = load i8, ptr %149, align 1
  %151 = zext i8 %150 to i32
  %152 = or i32 %148, %151
  %.not3 = icmp eq i32 %152, 0
  br i1 %.not3, label %174, label %153

153:                                              ; preds = %144
  %154 = add nsw i32 %151, -1
  %155 = shl nuw i32 1, %154
  %156 = sext i32 %155 to i64
  %157 = load i8, ptr %149, align 1
  %158 = zext i8 %157 to i64
  %159 = icmp ult i64 0, %158
  br i1 %159, label %.lr.ph62, label %172

.lr.ph62:                                         ; preds = %153
  br label %160

160:                                              ; preds = %.lr.ph62, %160
  %.560 = phi i64 [ 0, %.lr.ph62 ], [ %168, %160 ]
  %.11659 = phi i64 [ %156, %.lr.ph62 ], [ %167, %160 ]
  %.01958 = phi i32 [ 0, %.lr.ph62 ], [ %spec.select1, %160 ]
  %161 = shl i32 %.01958, 1
  %162 = or disjoint i32 %161, 1
  %163 = load i32, ptr %147, align 4
  %164 = zext i32 %163 to i64
  %165 = and i64 %.11659, %164
  %.not4 = icmp eq i64 %165, 0
  %166 = add i32 %161, 2
  %spec.select1 = select i1 %.not4, i32 %162, i32 %166
  %167 = lshr i64 %.11659, 1
  %168 = add i64 %.560, 1
  %169 = load i8, ptr %149, align 1
  %170 = zext i8 %169 to i64
  %171 = icmp ult i64 %168, %170
  br i1 %171, label %160, label %._crit_edge63, !llvm.loop !17

._crit_edge63:                                    ; preds = %160
  %split64 = phi i32 [ %spec.select1, %160 ]
  br label %172

172:                                              ; preds = %._crit_edge63, %153
  %.019.lcssa = phi i32 [ %split64, %._crit_edge63 ], [ 0, %153 ]
  %173 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.2765
  store i32 %.019.lcssa, ptr %173, align 4
  br label %174

174:                                              ; preds = %172, %144
  %175 = add nuw nsw i64 %.2765, 1
  %176 = icmp samesign ult i64 %175, 256
  br i1 %176, label %144, label %.preheader2, !llvm.loop !18

.preheader1:                                      ; preds = %.critedge
  br label %196

177:                                              ; preds = %.preheader2, %.critedge
  %.668 = phi i64 [ 1, %.preheader2 ], [ %194, %.critedge ]
  %178 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.668
  %179 = load i32, ptr %178, align 4
  %180 = getelementptr inbounds nuw i8, ptr %9, i64 %.668
  %181 = load i8, ptr %180, align 1
  br label %182

182:                                              ; preds = %177, %187
  %.3867 = phi i64 [ %.668, %177 ], [ %183, %187 ]
  %183 = add i64 %.3867, -1
  %184 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %183
  %185 = load i32, ptr %184, align 4
  %186 = icmp ugt i32 %185, %179
  br i1 %186, label %187, label %.critedge

187:                                              ; preds = %182
  %188 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.3867
  store i32 %185, ptr %188, align 4
  %189 = getelementptr inbounds nuw i8, ptr %9, i64 %183
  %190 = load i8, ptr %189, align 1
  %191 = getelementptr inbounds nuw i8, ptr %9, i64 %.3867
  store i8 %190, ptr %191, align 1
  %.not2 = icmp eq i64 %183, 0
  br i1 %.not2, label %.critedge, label %182, !llvm.loop !19

.critedge:                                        ; preds = %182, %187
  %.38.lcssa = phi i64 [ %.3867, %182 ], [ %183, %187 ]
  %192 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %179, ptr %192, align 4
  %193 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %181, ptr %193, align 1
  %194 = add nuw nsw i64 %.668, 1
  %195 = icmp samesign ult i64 %194, 256
  br i1 %195, label %177, label %.preheader1, !llvm.loop !20

196:                                              ; preds = %196, %.preheader1
  %.49 = phi i64 [ %200, %196 ], [ 0, %.preheader1 ]
  %197 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %198 = load i32, ptr %197, align 4
  %199 = icmp eq i32 %198, 0
  %200 = add i64 %.49, 1
  br i1 %199, label %196, label %.preheader, !llvm.loop !21

.preheader:                                       ; preds = %196
  %.49.lcssa = phi i64 [ %.49, %196 ]
  %201 = icmp ult i64 0, %1
  br i1 %201, label %.lr.ph75, label %225

.lr.ph75:                                         ; preds = %.preheader
  br label %202

202:                                              ; preds = %.lr.ph75, %221
  %.774 = phi i64 [ %.49.lcssa, %.lr.ph75 ], [ %.9, %221 ]
  %.31373 = phi i64 [ 0, %.lr.ph75 ], [ %.414, %221 ]
  %.21772 = phi i64 [ 128, %.lr.ph75 ], [ %.318, %221 ]
  %.22171 = phi i32 [ 0, %.lr.ph75 ], [ %.423, %221 ]
  %.03170 = phi ptr [ %11, %.lr.ph75 ], [ %.132, %221 ]
  %.23569 = phi ptr [ %0, %.lr.ph75 ], [ %.336, %221 ]
  %203 = shl i32 %.22171, 1
  %204 = or disjoint i32 %203, 1
  %205 = load i8, ptr %.03170, align 1
  %206 = zext i8 %205 to i64
  %207 = and i64 %.21772, %206
  %.not1 = icmp eq i64 %207, 0
  %208 = add i32 %203, 2
  %spec.select2 = select i1 %.not1, i32 %204, i32 %208
  br label %209

209:                                              ; preds = %209, %202
  %.8 = phi i64 [ %.774, %202 ], [ %213, %209 ]
  %210 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %211 = load i32, ptr %210, align 4
  %212 = icmp ult i32 %211, %spec.select2
  %213 = add i64 %.8, 1
  br i1 %212, label %209, label %214, !llvm.loop !22

214:                                              ; preds = %209
  %.8.lcssa = phi i64 [ %.8, %209 ]
  %.lcssa = phi i32 [ %211, %209 ]
  %215 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %215, label %216, label %221

216:                                              ; preds = %214
  %217 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %218 = load i8, ptr %217, align 1
  store i8 %218, ptr %.23569, align 1
  %219 = getelementptr inbounds nuw i8, ptr %.23569, i64 1
  %220 = add i64 %.31373, 1
  br label %221

221:                                              ; preds = %216, %214
  %.336 = phi ptr [ %219, %216 ], [ %.23569, %214 ]
  %.423 = phi i32 [ 0, %216 ], [ %spec.select2, %214 ]
  %.414 = phi i64 [ %220, %216 ], [ %.31373, %214 ]
  %.9 = phi i64 [ %.49.lcssa, %216 ], [ %.8.lcssa, %214 ]
  %222 = icmp ult i64 %.21772, 2
  %223 = lshr i64 %.21772, 1
  %.132.idx = zext i1 %222 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.03170, i64 %.132.idx
  %.318 = select i1 %222, i64 128, i64 %223
  %224 = icmp ult i64 %.414, %1
  br i1 %224, label %202, label %._crit_edge76, !llvm.loop !23

._crit_edge76:                                    ; preds = %221
  br label %225

225:                                              ; preds = %._crit_edge76, %.preheader
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
