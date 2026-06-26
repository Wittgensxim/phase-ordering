; ModuleID = 'results\paper_full\CoyoteBench_huffbench\round_001\output.ll'
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
  %2 = call ptr @malloc(i64 noundef %0) #6
  %3 = icmp ult i64 0, %0
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
  %8 = getelementptr inbounds nuw i8, ptr %.011, i32 1
  %9 = add nsw i32 %.02, 1
  %10 = sext i32 %9 to i64
  %11 = icmp ult i64 %10, %0
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
  %11 = call ptr @malloc(i64 noundef %10) #6
  call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %10, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %5, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %6, i8 0, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %7, i8 0, i64 256, i1 false)
  %12 = icmp ult i64 0, %1
  br i1 %12, label %.lr.ph, label %.preheader8

.lr.ph:                                           ; preds = %2
  br label %13

..preheader8_crit_edge:                           ; preds = %13
  br label %.preheader8

.preheader8:                                      ; preds = %..preheader8_crit_edge, %2
  br label %23

13:                                               ; preds = %.lr.ph, %13
  %.0216 = phi i64 [ 0, %.lr.ph ], [ %20, %13 ]
  %.03315 = phi ptr [ %0, %.lr.ph ], [ %19, %13 ]
  %14 = load i8, ptr %.03315, align 1
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %15
  %17 = load i64, ptr %16, align 8
  %18 = add i64 %17, 1
  store i64 %18, ptr %16, align 8
  %19 = getelementptr inbounds nuw i8, ptr %.03315, i32 1
  %20 = add i64 %.0216, 1
  %21 = icmp ult i64 %20, %1
  br i1 %21, label %13, label %..preheader8_crit_edge, !llvm.loop !9

.preheader7:                                      ; preds = %30
  %.010.lcssa = phi i64 [ %.111, %30 ]
  %22 = icmp ugt i64 %.010.lcssa, 0
  br i1 %22, label %.lr.ph21, label %.preheader6

.lr.ph21:                                         ; preds = %.preheader7
  br label %34

23:                                               ; preds = %.preheader8, %30
  %.1319 = phi i64 [ 0, %.preheader8 ], [ %31, %30 ]
  %.01018 = phi i64 [ 0, %.preheader8 ], [ %.111, %30 ]
  %24 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.1319
  %25 = load i64, ptr %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.01018
  store i64 %.1319, ptr %28, align 8
  %29 = add i64 %.01018, 1
  br label %30

30:                                               ; preds = %27, %23
  %.111 = phi i64 [ %29, %27 ], [ %.01018, %23 ]
  %31 = add i64 %.1319, 1
  %32 = icmp ult i64 %31, 256
  br i1 %32, label %23, label %.preheader7, !llvm.loop !10

..preheader6_crit_edge:                           ; preds = %34
  br label %.preheader6

.preheader6:                                      ; preds = %..preheader6_crit_edge, %.preheader7
  %33 = icmp ugt i64 %.010.lcssa, 1
  br i1 %33, label %.lr.ph23, label %59

.lr.ph23:                                         ; preds = %.preheader6
  br label %39

34:                                               ; preds = %.lr.ph21, %34
  %.2420 = phi i64 [ %.010.lcssa, %.lr.ph21 ], [ %37, %34 ]
  %35 = trunc i64 %.010.lcssa to i32
  %36 = trunc i64 %.2420 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %35, i32 noundef %36)
  %37 = add i64 %.2420, -1
  %38 = icmp ugt i64 %37, 0
  br i1 %38, label %34, label %..preheader6_crit_edge, !llvm.loop !11

39:                                               ; preds = %.lr.ph23, %39
  %.21222 = phi i64 [ %.010.lcssa, %.lr.ph23 ], [ %40, %39 ]
  %40 = add i64 %.21222, -1
  %41 = load i64, ptr %4, align 16
  %42 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %40
  %43 = load i64, ptr %42, align 8
  store i64 %43, ptr %4, align 16
  %44 = trunc i64 %40 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %44, i32 noundef 1)
  %45 = load i64, ptr %4, align 16
  %46 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %45
  %47 = load i64, ptr %46, align 8
  %48 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %41
  %49 = load i64, ptr %48, align 8
  %50 = add i64 %47, %49
  %51 = add i64 256, %40
  %52 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %51
  store i64 %50, ptr %52, align 8
  %53 = trunc i64 %51 to i32
  %54 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %41
  store i32 %53, ptr %54, align 4
  %55 = sub i64 -256, %40
  %56 = trunc i64 %55 to i32
  %57 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %45
  store i32 %56, ptr %57, align 4
  store i64 %51, ptr %4, align 16
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %44, i32 noundef 1)
  %58 = icmp ugt i64 %40, 1
  br i1 %58, label %39, label %._crit_edge24, !llvm.loop !12

._crit_edge24:                                    ; preds = %39
  %split = phi i64 [ %40, %39 ]
  br label %59

59:                                               ; preds = %._crit_edge24, %.preheader6
  %.212.lcssa = phi i64 [ %split, %._crit_edge24 ], [ %.010.lcssa, %.preheader6 ]
  %60 = add i64 256, %.212.lcssa
  %61 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %60
  store i32 0, ptr %61, align 4
  br label %62

62:                                               ; preds = %59, %90
  %.03936 = phi i64 [ 0, %59 ], [ %.140, %90 ]
  %.04235 = phi i64 [ 0, %59 ], [ %91, %90 ]
  %.04534 = phi i64 [ 0, %59 ], [ %.146, %90 ]
  %63 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.04235
  %64 = load i64, ptr %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04235
  store i32 0, ptr %67, align 4
  %68 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04235
  store i8 0, ptr %68, align 1
  br label %90

69:                                               ; preds = %62
  %70 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.04235
  %71 = load i32, ptr %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %.lr.ph30, label %83

.lr.ph30:                                         ; preds = %69
  br label %73

73:                                               ; preds = %.lr.ph30, %73
  %.328 = phi i64 [ 0, %.lr.ph30 ], [ %81, %73 ]
  %.0527 = phi i64 [ 1, %.lr.ph30 ], [ %80, %73 ]
  %.03726 = phi i32 [ %71, %.lr.ph30 ], [ %79, %73 ]
  %.04325 = phi i64 [ 0, %.lr.ph30 ], [ %.144, %73 ]
  %74 = icmp slt i32 %.03726, 0
  %75 = add i64 %.04325, %.0527
  %76 = sub nsw i32 0, %.03726
  %.144 = select i1 %74, i64 %75, i64 %.04325
  %.138 = select i1 %74, i32 %76, i32 %.03726
  %77 = sext i32 %.138 to i64
  %78 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4
  %80 = shl i64 %.0527, 1
  %81 = add i64 %.328, 1
  %82 = icmp ne i32 %79, 0
  br i1 %82, label %73, label %._crit_edge31, !llvm.loop !13

._crit_edge31:                                    ; preds = %73
  %split32 = phi i64 [ %.144, %73 ]
  %split33 = phi i64 [ %81, %73 ]
  br label %83

83:                                               ; preds = %._crit_edge31, %69
  %.043.lcssa = phi i64 [ %split32, %._crit_edge31 ], [ 0, %69 ]
  %.3.lcssa = phi i64 [ %split33, %._crit_edge31 ], [ 0, %69 ]
  %84 = trunc i64 %.043.lcssa to i32
  %85 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04235
  store i32 %84, ptr %85, align 4
  %86 = trunc i64 %.3.lcssa to i8
  %87 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04235
  store i8 %86, ptr %87, align 1
  %88 = icmp ugt i64 %.043.lcssa, %.04534
  %spec.select = select i1 %88, i64 %.043.lcssa, i64 %.04534
  %89 = icmp ugt i64 %.3.lcssa, %.03936
  %.241 = select i1 %89, i64 %.3.lcssa, i64 %.03936
  br label %90

90:                                               ; preds = %83, %66
  %.146 = phi i64 [ %spec.select, %83 ], [ %.04534, %66 ]
  %.140 = phi i64 [ %.241, %83 ], [ %.03936, %66 ]
  %91 = add i64 %.04235, 1
  %92 = icmp ult i64 %91, 256
  br i1 %92, label %62, label %93, !llvm.loop !14

93:                                               ; preds = %90
  %.045.lcssa = phi i64 [ %.146, %90 ]
  %.039.lcssa = phi i64 [ %.140, %90 ]
  %94 = icmp ugt i64 %.039.lcssa, 32
  br i1 %94, label %95, label %98

95:                                               ; preds = %93
  %96 = call ptr @__acrt_iob_func(i32 noundef 2)
  %97 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %96, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

98:                                               ; preds = %93
  %99 = icmp eq i64 %.045.lcssa, 0
  br i1 %99, label %101, label %.preheader5

.preheader5:                                      ; preds = %98
  %100 = icmp ult i64 0, %1
  br i1 %100, label %.lr.ph53, label %153

.lr.ph53:                                         ; preds = %.preheader5
  br label %104

101:                                              ; preds = %98
  %102 = call ptr @__acrt_iob_func(i32 noundef 2)
  %103 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %102, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

104:                                              ; preds = %.lr.ph53, %149
  %.0152 = phi i32 [ -1, %.lr.ph53 ], [ %.1.lcssa, %149 ]
  %.1651 = phi i64 [ 0, %.lr.ph53 ], [ %151, %149 ]
  %.02450 = phi i8 [ 0, %.lr.ph53 ], [ %.125.lcssa, %149 ]
  %.02849 = phi i64 [ 0, %.lr.ph53 ], [ %.129.lcssa, %149 ]
  %.13448 = phi ptr [ %0, %.lr.ph53 ], [ %150, %149 ]
  %105 = load i8, ptr %.13448, align 1
  %106 = zext i8 %105 to i64
  %107 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %106
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %108 to i32
  %110 = sub nsw i32 %109, 1
  %111 = shl i32 1, %110
  %112 = sext i32 %111 to i64
  %113 = zext i8 %105 to i64
  %114 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %113
  %115 = zext i8 %108 to i64
  %116 = icmp ult i64 0, %115
  br i1 %116, label %.lr.ph43, label %149

.lr.ph43:                                         ; preds = %104
  br label %117

117:                                              ; preds = %.lr.ph43, %133
  %118 = phi i64 [ %113, %.lr.ph43 ], [ %145, %133 ]
  %.141 = phi i32 [ %.0152, %.lr.ph43 ], [ %.2, %133 ]
  %.440 = phi i64 [ 0, %.lr.ph43 ], [ %144, %133 ]
  %.01539 = phi i64 [ %112, %.lr.ph43 ], [ %143, %133 ]
  %.12538 = phi i8 [ %.02450, %.lr.ph43 ], [ %.327, %133 ]
  %.12937 = phi i64 [ %.02849, %.lr.ph43 ], [ %.230, %133 ]
  %119 = phi i8 [ %105, %.lr.ph43 ], [ %134, %133 ]
  %120 = icmp eq i32 %.141, 7
  br i1 %120, label %121, label %128

121:                                              ; preds = %117
  %122 = getelementptr inbounds nuw i8, ptr %11, i64 %.12937
  store i8 %.12538, ptr %122, align 1
  %123 = add i64 %.12937, 1
  %124 = icmp eq i64 %123, %1
  br i1 %124, label %125, label %._crit_edge

._crit_edge:                                      ; preds = %121
  %.pre1 = load i8, ptr %.13448, align 1
  %.pre2 = zext i8 %.pre1 to i64
  br label %133

125:                                              ; preds = %121
  %126 = call ptr @__acrt_iob_func(i32 noundef 2)
  %127 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %126, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

128:                                              ; preds = %117
  %129 = add nsw i32 %.141, 1
  %130 = sext i8 %.12538 to i32
  %131 = shl i32 %130, 1
  %132 = trunc i32 %131 to i8
  br label %133

133:                                              ; preds = %._crit_edge, %128
  %.pre-phi = phi i64 [ %.pre2, %._crit_edge ], [ %118, %128 ]
  %134 = phi i8 [ %119, %128 ], [ %.pre1, %._crit_edge ]
  %.230 = phi i64 [ %.12937, %128 ], [ %123, %._crit_edge ]
  %.226 = phi i8 [ %132, %128 ], [ 0, %._crit_edge ]
  %.2 = phi i32 [ %129, %128 ], [ 0, %._crit_edge ]
  %135 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.pre-phi
  %136 = load i32, ptr %135, align 4
  %137 = zext i32 %136 to i64
  %138 = and i64 %137, %.01539
  %139 = icmp ne i64 %138, 0
  %140 = sext i8 %.226 to i32
  %141 = or i32 %140, 1
  %142 = trunc i32 %141 to i8
  %.327 = select i1 %139, i8 %142, i8 %.226
  %143 = lshr i64 %.01539, 1
  %144 = add i64 %.440, 1
  %.phi.trans.insert = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  %145 = zext i8 %134 to i64
  %146 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %145
  %147 = zext i8 %.pre to i64
  %148 = icmp ult i64 %144, %147
  br i1 %148, label %117, label %._crit_edge44, !llvm.loop !15

._crit_edge44:                                    ; preds = %133
  %split45 = phi i64 [ %.230, %133 ]
  %split46 = phi i8 [ %.327, %133 ]
  %split47 = phi i32 [ %.2, %133 ]
  br label %149

149:                                              ; preds = %._crit_edge44, %104
  %.129.lcssa = phi i64 [ %split45, %._crit_edge44 ], [ %.02849, %104 ]
  %.125.lcssa = phi i8 [ %split46, %._crit_edge44 ], [ %.02450, %104 ]
  %.1.lcssa = phi i32 [ %split47, %._crit_edge44 ], [ %.0152, %104 ]
  %150 = getelementptr inbounds nuw i8, ptr %.13448, i32 1
  %151 = add i64 %.1651, 1
  %152 = icmp ult i64 %151, %1
  br i1 %152, label %104, label %._crit_edge54, !llvm.loop !16

._crit_edge54:                                    ; preds = %149
  %split55 = phi i64 [ %.129.lcssa, %149 ]
  %split56 = phi i8 [ %.125.lcssa, %149 ]
  %split57 = phi i32 [ %.1.lcssa, %149 ]
  br label %153

153:                                              ; preds = %._crit_edge54, %.preheader5
  %.028.lcssa = phi i64 [ %split55, %._crit_edge54 ], [ 0, %.preheader5 ]
  %.024.lcssa = phi i8 [ %split56, %._crit_edge54 ], [ 0, %.preheader5 ]
  %.01.lcssa = phi i32 [ %split57, %._crit_edge54 ], [ -1, %.preheader5 ]
  %154 = sub nsw i32 7, %.01.lcssa
  %155 = sext i8 %.024.lcssa to i32
  %156 = shl i32 %155, %154
  %157 = trunc i32 %156 to i8
  %158 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %157, ptr %158, align 1
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 1024, i1 false)
  br label %159

.preheader4:                                      ; preds = %187
  br label %190

159:                                              ; preds = %153, %187
  %.066 = phi ptr [ %9, %153 ], [ %161, %187 ]
  %.2765 = phi i64 [ 0, %153 ], [ %188, %187 ]
  %160 = trunc i64 %.2765 to i8
  store i8 %160, ptr %.066, align 1
  %161 = getelementptr inbounds nuw i8, ptr %.066, i32 1
  %162 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.2765
  %163 = load i32, ptr %162, align 4
  %164 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2765
  %165 = load i8, ptr %164, align 1
  %166 = zext i8 %165 to i32
  %167 = or i32 %163, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %187

169:                                              ; preds = %159
  %170 = sub nsw i32 %166, 1
  %171 = shl i32 1, %170
  %172 = sext i32 %171 to i64
  %173 = zext i8 %165 to i64
  %174 = icmp ult i64 0, %173
  br i1 %174, label %.lr.ph62, label %185

.lr.ph62:                                         ; preds = %169
  br label %175

175:                                              ; preds = %.lr.ph62, %175
  %.560 = phi i64 [ 0, %.lr.ph62 ], [ %183, %175 ]
  %.11659 = phi i64 [ %172, %.lr.ph62 ], [ %182, %175 ]
  %.01958 = phi i32 [ 0, %.lr.ph62 ], [ %spec.select1, %175 ]
  %176 = mul i32 %.01958, 2
  %177 = add i32 %176, 1
  %178 = zext i32 %163 to i64
  %179 = and i64 %178, %.11659
  %180 = icmp ne i64 %179, 0
  %181 = add i32 %177, 1
  %spec.select1 = select i1 %180, i32 %181, i32 %177
  %182 = lshr i64 %.11659, 1
  %183 = add i64 %.560, 1
  %184 = icmp ult i64 %183, %173
  br i1 %184, label %175, label %._crit_edge63, !llvm.loop !17

._crit_edge63:                                    ; preds = %175
  %split64 = phi i32 [ %spec.select1, %175 ]
  br label %185

185:                                              ; preds = %._crit_edge63, %169
  %.019.lcssa = phi i32 [ %split64, %._crit_edge63 ], [ 0, %169 ]
  %186 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.2765
  store i32 %.019.lcssa, ptr %186, align 4
  br label %187

187:                                              ; preds = %185, %159
  %188 = add i64 %.2765, 1
  %189 = icmp ult i64 %188, 256
  br i1 %189, label %159, label %.preheader4, !llvm.loop !18

.preheader3:                                      ; preds = %.critedge
  br label %212

190:                                              ; preds = %.preheader4, %.critedge
  %.673 = phi i64 [ 1, %.preheader4 ], [ %210, %.critedge ]
  %191 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.673
  %192 = load i32, ptr %191, align 4
  %193 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.673
  %194 = load i8, ptr %193, align 1
  %195 = icmp ne i64 %.673, 0
  br i1 %195, label %.lr.ph69, label %.critedge

.lr.ph69:                                         ; preds = %190
  br label %196

196:                                              ; preds = %.lr.ph69, %201
  %.3867 = phi i64 [ %.673, %.lr.ph69 ], [ %206, %201 ]
  %197 = sub i64 %.3867, 1
  %198 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %197
  %199 = load i32, ptr %198, align 4
  %200 = icmp ugt i32 %199, %192
  br i1 %200, label %201, label %..critedge_crit_edge

201:                                              ; preds = %196
  %202 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.3867
  store i32 %199, ptr %202, align 4
  %203 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %197
  %204 = load i8, ptr %203, align 1
  %205 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.3867
  store i8 %204, ptr %205, align 1
  %206 = add i64 %.3867, -1
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %196, label %..critedge_crit_edge71, !llvm.loop !19

..critedge_crit_edge:                             ; preds = %196
  %split70 = phi i64 [ %.3867, %196 ]
  br label %.critedge

..critedge_crit_edge71:                           ; preds = %201
  %split72 = phi i64 [ %206, %201 ]
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge71, %..critedge_crit_edge, %190
  %.38.lcssa = phi i64 [ %split70, %..critedge_crit_edge ], [ %split72, %..critedge_crit_edge71 ], [ %.673, %190 ]
  %208 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %192, ptr %208, align 4
  %209 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %194, ptr %209, align 1
  %210 = add i64 %.673, 1
  %211 = icmp ult i64 %210, 256
  br i1 %211, label %190, label %.preheader3, !llvm.loop !20

212:                                              ; preds = %212, %.preheader3
  %.49 = phi i64 [ %216, %212 ], [ 0, %.preheader3 ]
  %213 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %214 = load i32, ptr %213, align 4
  %215 = icmp eq i32 %214, 0
  %216 = add i64 %.49, 1
  br i1 %215, label %212, label %.preheader, !llvm.loop !21

.preheader:                                       ; preds = %212
  %.49.lcssa = phi i64 [ %.49, %212 ]
  %217 = icmp ult i64 0, %1
  br i1 %217, label %.lr.ph80, label %243

.lr.ph80:                                         ; preds = %.preheader
  br label %218

218:                                              ; preds = %.lr.ph80, %238
  %.779 = phi i64 [ %.49.lcssa, %.lr.ph80 ], [ %.9, %238 ]
  %.31378 = phi i64 [ 0, %.lr.ph80 ], [ %.414, %238 ]
  %.21777 = phi i64 [ 128, %.lr.ph80 ], [ %.318, %238 ]
  %.22176 = phi i32 [ 0, %.lr.ph80 ], [ %.423, %238 ]
  %.03175 = phi ptr [ %11, %.lr.ph80 ], [ %.132, %238 ]
  %.23574 = phi ptr [ %0, %.lr.ph80 ], [ %.336, %238 ]
  %219 = mul i32 %.22176, 2
  %220 = add i32 %219, 1
  %221 = load i8, ptr %.03175, align 1
  %222 = zext i8 %221 to i64
  %223 = and i64 %222, %.21777
  %224 = icmp ne i64 %223, 0
  %225 = add i32 %220, 1
  %spec.select2 = select i1 %224, i32 %225, i32 %220
  br label %226

226:                                              ; preds = %226, %218
  %.8 = phi i64 [ %.779, %218 ], [ %230, %226 ]
  %227 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %228 = load i32, ptr %227, align 4
  %229 = icmp ult i32 %228, %spec.select2
  %230 = add i64 %.8, 1
  br i1 %229, label %226, label %231, !llvm.loop !22

231:                                              ; preds = %226
  %.8.lcssa = phi i64 [ %.8, %226 ]
  %.lcssa = phi i32 [ %228, %226 ]
  %232 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %232, label %233, label %238

233:                                              ; preds = %231
  %234 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %235 = load i8, ptr %234, align 1
  store i8 %235, ptr %.23574, align 1
  %236 = getelementptr inbounds nuw i8, ptr %.23574, i32 1
  %237 = add i64 %.31378, 1
  br label %238

238:                                              ; preds = %233, %231
  %.336 = phi ptr [ %236, %233 ], [ %.23574, %231 ]
  %.423 = phi i32 [ 0, %233 ], [ %spec.select2, %231 ]
  %.414 = phi i64 [ %237, %233 ], [ %.31378, %231 ]
  %.9 = phi i64 [ %.49.lcssa, %233 ], [ %.8.lcssa, %231 ]
  %239 = icmp ugt i64 %.21777, 1
  %240 = lshr i64 %.21777, 1
  %241 = getelementptr inbounds nuw i8, ptr %.03175, i32 1
  %.132 = select i1 %239, ptr %.03175, ptr %241
  %.318 = select i1 %239, i64 %240, i64 128
  %242 = icmp ult i64 %.414, %1
  br i1 %242, label %218, label %._crit_edge81, !llvm.loop !23

._crit_edge81:                                    ; preds = %238
  br label %243

243:                                              ; preds = %._crit_edge81, %.preheader
  call void @free(ptr noundef %11)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal void @heap_adjust(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = sub nsw i32 %3, 1
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i64, ptr %1, i64 %6
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = sdiv i32 %2, 2
  %11 = icmp sle i32 %3, %10
  br i1 %11, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %4
  br label %12

.._crit_edge_crit_edge:                           ; preds = %40
  %split5 = phi i32 [ %.0, %40 ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %4
  %.01.lcssa = phi i32 [ %split5, %.._crit_edge_crit_edge ], [ %3, %4 ]
  %.pre = sext i32 %9 to i64
  br label %45

12:                                               ; preds = %.lr.ph, %40
  %.013 = phi i32 [ %3, %.lr.ph ], [ %.0, %40 ]
  %13 = add nsw i32 %.013, %.013
  %14 = icmp slt i32 %13, %2
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = sub nsw i32 %13, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, ptr %1, i64 %17
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds nuw i64, ptr %0, i64 %19
  %21 = load i64, ptr %20, align 8
  %22 = sext i32 %13 to i64
  %23 = getelementptr inbounds i64, ptr %1, i64 %22
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds nuw i64, ptr %0, i64 %24
  %26 = load i64, ptr %25, align 8
  %27 = icmp ugt i64 %21, %26
  %28 = add nsw i32 %13, 1
  %spec.select = select i1 %27, i32 %28, i32 %13
  br label %29

29:                                               ; preds = %15, %12
  %.0 = phi i32 [ %13, %12 ], [ %spec.select, %15 ]
  %30 = sext i32 %9 to i64
  %31 = getelementptr inbounds i64, ptr %0, i64 %30
  %32 = load i64, ptr %31, align 8
  %33 = sub nsw i32 %.0, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, ptr %1, i64 %34
  %36 = load i64, ptr %35, align 8
  %37 = getelementptr inbounds nuw i64, ptr %0, i64 %36
  %38 = load i64, ptr %37, align 8
  %39 = icmp ult i64 %32, %38
  br i1 %39, label %split, label %40

40:                                               ; preds = %29
  %41 = sub nsw i32 %.013, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, ptr %1, i64 %42
  store i64 %36, ptr %43, align 8
  %44 = icmp sle i32 %.0, %10
  br i1 %44, label %12, label %.._crit_edge_crit_edge, !llvm.loop !24

split:                                            ; preds = %29
  %.lcssa = phi i64 [ %30, %29 ]
  %.01.lcssa1 = phi i32 [ %.013, %29 ]
  br label %45

45:                                               ; preds = %split, %._crit_edge
  %.012 = phi i32 [ %.01.lcssa1, %split ], [ %.01.lcssa, %._crit_edge ]
  %.pre-phi = phi i64 [ %.lcssa, %split ], [ %.pre, %._crit_edge ]
  %46 = sub nsw i32 %.012, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, ptr %1, i64 %47
  store i64 %.pre-phi, ptr %48, align 8
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
  br i1 %3, label %.preheader, label %12

.preheader:                                       ; preds = %2
  %4 = getelementptr inbounds ptr, ptr %1, i64 1
  br label %7

5:                                                ; preds = %7
  %.01 = phi i32 [ %11, %7 ]
  %6 = icmp slt i32 %.01, %0
  br i1 %6, label %7, label %.loopexit, !llvm.loop !25

7:                                                ; preds = %.preheader, %5
  %.011 = phi i32 [ 1, %.preheader ], [ %.01, %5 ]
  %8 = load ptr, ptr %4, align 8
  %9 = call i32 @strcmp(ptr noundef %8, ptr noundef @.str.4) #7
  %10 = icmp ne i32 %9, 0
  %11 = add nsw i32 %.011, 1
  br i1 %10, label %5, label %.loopexit

.loopexit:                                        ; preds = %5, %7
  %.0.ph = phi i8 [ 1, %7 ], [ 0, %5 ]
  br label %12

12:                                               ; preds = %.loopexit, %2
  %.0 = phi i8 [ 0, %2 ], [ %.0.ph, %.loopexit ]
  %13 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %14

14:                                               ; preds = %12, %14
  %.122 = phi i32 [ 0, %12 ], [ %15, %14 ]
  call void @compdecomp(ptr noundef %13, i64 noundef 10000000)
  %15 = add nsw i32 %.122, 1
  %16 = icmp slt i32 %15, 30
  br i1 %16, label %14, label %17, !llvm.loop !26

17:                                               ; preds = %14
  call void @free(ptr noundef %13)
  %18 = icmp ne i8 %.0, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = call ptr @__acrt_iob_func(i32 noundef 1)
  %21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.5, double noundef 0.000000e+00) #7
  br label %25

22:                                               ; preds = %17
  %23 = call ptr @__acrt_iob_func(i32 noundef 1)
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.6, double noundef 0.000000e+00) #7
  br label %25

25:                                               ; preds = %22, %19
  %26 = call ptr @__acrt_iob_func(i32 noundef 1)
  %27 = call i32 @fflush(ptr noundef %26)
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
  %4 = mul nsw i32 %3, 127773
  %5 = sub nsw i32 %2, %4
  %6 = mul nsw i32 16807, %5
  %7 = mul nsw i32 2836, %3
  %8 = sub nsw i32 %6, %7
  store i32 %8, ptr @seed, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = add nsw i32 %8, 2147483647
  store i32 %11, ptr @seed, align 4
  br label %12

12:                                               ; preds = %10, %0
  %13 = phi i32 [ %11, %10 ], [ %8, %0 ]
  %14 = srem i32 %13, 32
  %15 = sext i32 %14 to i64
  %16 = xor i32 %13, 123459876
  store i32 %16, ptr @seed, align 4
  ret i64 %15
}

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(0) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

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
