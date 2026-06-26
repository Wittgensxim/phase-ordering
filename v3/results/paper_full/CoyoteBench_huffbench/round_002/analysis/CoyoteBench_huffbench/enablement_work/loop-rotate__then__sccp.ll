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
  %16 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %15
  %17 = load i64, ptr %16, align 8
  %18 = add i64 %17, 1
  store i64 %18, ptr %16, align 8
  %19 = getelementptr inbounds nuw i8, ptr %.03313, i32 1
  %20 = add i64 %.0214, 1
  %21 = icmp ult i64 %20, %1
  br i1 %21, label %13, label %..preheader6_crit_edge, !llvm.loop !9

.preheader5:                                      ; preds = %30
  %.010.lcssa = phi i64 [ %.111, %30 ]
  %22 = icmp ugt i64 %.010.lcssa, 0
  br i1 %22, label %.lr.ph18, label %.preheader4

.lr.ph18:                                         ; preds = %.preheader5
  br label %34

23:                                               ; preds = %.preheader6, %30
  %.1316 = phi i64 [ 0, %.preheader6 ], [ %31, %30 ]
  %.01015 = phi i64 [ 0, %.preheader6 ], [ %.111, %30 ]
  %24 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.1316
  %25 = load i64, ptr %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.01015
  store i64 %.1316, ptr %28, align 8
  %29 = add i64 %.01015, 1
  br label %30

30:                                               ; preds = %27, %23
  %.111 = phi i64 [ %29, %27 ], [ %.01015, %23 ]
  %31 = add i64 %.1316, 1
  %32 = icmp ult i64 %31, 256
  br i1 %32, label %23, label %.preheader5, !llvm.loop !10

..preheader4_crit_edge:                           ; preds = %34
  br label %.preheader4

.preheader4:                                      ; preds = %..preheader4_crit_edge, %.preheader5
  %33 = icmp ugt i64 %.010.lcssa, 1
  br i1 %33, label %.lr.ph20, label %60

.lr.ph20:                                         ; preds = %.preheader4
  br label %39

34:                                               ; preds = %.lr.ph18, %34
  %.2417 = phi i64 [ %.010.lcssa, %.lr.ph18 ], [ %37, %34 ]
  %35 = trunc i64 %.010.lcssa to i32
  %36 = trunc i64 %.2417 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %35, i32 noundef %36)
  %37 = add i64 %.2417, -1
  %38 = icmp ugt i64 %37, 0
  br i1 %38, label %34, label %..preheader4_crit_edge, !llvm.loop !11

39:                                               ; preds = %.lr.ph20, %39
  %.21219 = phi i64 [ %.010.lcssa, %.lr.ph20 ], [ %40, %39 ]
  %40 = add i64 %.21219, -1
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
  %57 = load i64, ptr %4, align 16
  %58 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %57
  store i32 %56, ptr %58, align 4
  store i64 %51, ptr %4, align 16
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %44, i32 noundef 1)
  %59 = icmp ugt i64 %40, 1
  br i1 %59, label %39, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %39
  %split = phi i64 [ %40, %39 ]
  br label %60

60:                                               ; preds = %._crit_edge, %.preheader4
  %.212.lcssa = phi i64 [ %split, %._crit_edge ], [ %.010.lcssa, %.preheader4 ]
  %61 = add i64 256, %.212.lcssa
  %62 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %61
  store i32 0, ptr %62, align 4
  br label %63

63:                                               ; preds = %60, %91
  %.03932 = phi i64 [ 0, %60 ], [ %.140, %91 ]
  %.04231 = phi i64 [ 0, %60 ], [ %92, %91 ]
  %.04530 = phi i64 [ 0, %60 ], [ %.146, %91 ]
  %64 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.04231
  %65 = load i64, ptr %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04231
  store i32 0, ptr %68, align 4
  %69 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04231
  store i8 0, ptr %69, align 1
  br label %91

70:                                               ; preds = %63
  %71 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.04231
  %72 = load i32, ptr %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %.lr.ph26, label %84

.lr.ph26:                                         ; preds = %70
  br label %74

74:                                               ; preds = %.lr.ph26, %74
  %.324 = phi i64 [ 0, %.lr.ph26 ], [ %82, %74 ]
  %.0523 = phi i64 [ 1, %.lr.ph26 ], [ %81, %74 ]
  %.03722 = phi i32 [ %72, %.lr.ph26 ], [ %80, %74 ]
  %.04321 = phi i64 [ 0, %.lr.ph26 ], [ %.144, %74 ]
  %75 = icmp slt i32 %.03722, 0
  %76 = add i64 %.04321, %.0523
  %77 = sub nsw i32 0, %.03722
  %.144 = select i1 %75, i64 %76, i64 %.04321
  %.138 = select i1 %75, i32 %77, i32 %.03722
  %78 = sext i32 %.138 to i64
  %79 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %78
  %80 = load i32, ptr %79, align 4
  %81 = shl i64 %.0523, 1
  %82 = add i64 %.324, 1
  %83 = icmp ne i32 %80, 0
  br i1 %83, label %74, label %._crit_edge27, !llvm.loop !13

._crit_edge27:                                    ; preds = %74
  %split28 = phi i64 [ %.144, %74 ]
  %split29 = phi i64 [ %82, %74 ]
  br label %84

84:                                               ; preds = %._crit_edge27, %70
  %.043.lcssa = phi i64 [ %split28, %._crit_edge27 ], [ 0, %70 ]
  %.3.lcssa = phi i64 [ %split29, %._crit_edge27 ], [ 0, %70 ]
  %85 = trunc i64 %.043.lcssa to i32
  %86 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04231
  store i32 %85, ptr %86, align 4
  %87 = trunc i64 %.3.lcssa to i8
  %88 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04231
  store i8 %87, ptr %88, align 1
  %89 = icmp ugt i64 %.043.lcssa, %.04530
  %spec.select = select i1 %89, i64 %.043.lcssa, i64 %.04530
  %90 = icmp ugt i64 %.3.lcssa, %.03932
  %.241 = select i1 %90, i64 %.3.lcssa, i64 %.03932
  br label %91

91:                                               ; preds = %84, %67
  %.146 = phi i64 [ %spec.select, %84 ], [ %.04530, %67 ]
  %.140 = phi i64 [ %.241, %84 ], [ %.03932, %67 ]
  %92 = add i64 %.04231, 1
  %93 = icmp ult i64 %92, 256
  br i1 %93, label %63, label %94, !llvm.loop !14

94:                                               ; preds = %91
  %.045.lcssa = phi i64 [ %.146, %91 ]
  %.039.lcssa = phi i64 [ %.140, %91 ]
  %95 = icmp ugt i64 %.039.lcssa, 32
  br i1 %95, label %96, label %99

96:                                               ; preds = %94
  %97 = call ptr @__acrt_iob_func(i32 noundef 2)
  %98 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %97, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

99:                                               ; preds = %94
  %100 = icmp eq i64 %.045.lcssa, 0
  br i1 %100, label %102, label %.preheader3

.preheader3:                                      ; preds = %99
  %101 = icmp ult i64 0, %1
  br i1 %101, label %.lr.ph49, label %157

.lr.ph49:                                         ; preds = %.preheader3
  br label %105

102:                                              ; preds = %99
  %103 = call ptr @__acrt_iob_func(i32 noundef 2)
  %104 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %103, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

105:                                              ; preds = %.lr.ph49, %153
  %.0148 = phi i32 [ -1, %.lr.ph49 ], [ %.1.lcssa, %153 ]
  %.1647 = phi i64 [ 0, %.lr.ph49 ], [ %155, %153 ]
  %.02446 = phi i8 [ 0, %.lr.ph49 ], [ %.125.lcssa, %153 ]
  %.02845 = phi i64 [ 0, %.lr.ph49 ], [ %.129.lcssa, %153 ]
  %.13444 = phi ptr [ %0, %.lr.ph49 ], [ %154, %153 ]
  %106 = load i8, ptr %.13444, align 1
  %107 = zext i8 %106 to i64
  %108 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %107
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %109 to i32
  %111 = sub nsw i32 %110, 1
  %112 = shl nuw i32 1, %111
  %113 = sext i32 %112 to i64
  %114 = load i8, ptr %.13444, align 1
  %115 = zext i8 %114 to i64
  %116 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %115
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i64
  %119 = icmp ult i64 0, %118
  br i1 %119, label %.lr.ph39, label %153

.lr.ph39:                                         ; preds = %105
  br label %120

120:                                              ; preds = %.lr.ph39, %134
  %.137 = phi i32 [ %.0148, %.lr.ph39 ], [ %.2, %134 ]
  %.436 = phi i64 [ 0, %.lr.ph39 ], [ %146, %134 ]
  %.01535 = phi i64 [ %113, %.lr.ph39 ], [ %145, %134 ]
  %.12534 = phi i8 [ %.02446, %.lr.ph39 ], [ %.327, %134 ]
  %.12933 = phi i64 [ %.02845, %.lr.ph39 ], [ %.230, %134 ]
  %121 = icmp eq i32 %.137, 7
  br i1 %121, label %122, label %129

122:                                              ; preds = %120
  %123 = getelementptr inbounds nuw i8, ptr %11, i64 %.12933
  store i8 %.12534, ptr %123, align 1
  %124 = add i64 %.12933, 1
  %125 = icmp eq i64 %124, %1
  br i1 %125, label %126, label %134

126:                                              ; preds = %122
  %127 = call ptr @__acrt_iob_func(i32 noundef 2)
  %128 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

129:                                              ; preds = %120
  %130 = add nsw i32 %.137, 1
  %131 = sext i8 %.12534 to i32
  %132 = shl nsw i32 %131, 1
  %133 = trunc i32 %132 to i8
  br label %134

134:                                              ; preds = %129, %122
  %.230 = phi i64 [ %.12933, %129 ], [ %124, %122 ]
  %.226 = phi i8 [ %133, %129 ], [ 0, %122 ]
  %.2 = phi i32 [ %130, %129 ], [ 0, %122 ]
  %135 = load i8, ptr %.13444, align 1
  %136 = zext i8 %135 to i64
  %137 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %136
  %138 = load i32, ptr %137, align 4
  %139 = zext i32 %138 to i64
  %140 = and i64 %139, %.01535
  %141 = icmp ne i64 %140, 0
  %142 = sext i8 %.226 to i32
  %143 = or i32 %142, 1
  %144 = trunc i32 %143 to i8
  %.327 = select i1 %141, i8 %144, i8 %.226
  %145 = lshr i64 %.01535, 1
  %146 = add i64 %.436, 1
  %147 = load i8, ptr %.13444, align 1
  %148 = zext i8 %147 to i64
  %149 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %148
  %150 = load i8, ptr %149, align 1
  %151 = zext i8 %150 to i64
  %152 = icmp ult i64 %146, %151
  br i1 %152, label %120, label %._crit_edge40, !llvm.loop !15

._crit_edge40:                                    ; preds = %134
  %split41 = phi i64 [ %.230, %134 ]
  %split42 = phi i8 [ %.327, %134 ]
  %split43 = phi i32 [ %.2, %134 ]
  br label %153

153:                                              ; preds = %._crit_edge40, %105
  %.129.lcssa = phi i64 [ %split41, %._crit_edge40 ], [ %.02845, %105 ]
  %.125.lcssa = phi i8 [ %split42, %._crit_edge40 ], [ %.02446, %105 ]
  %.1.lcssa = phi i32 [ %split43, %._crit_edge40 ], [ %.0148, %105 ]
  %154 = getelementptr inbounds nuw i8, ptr %.13444, i32 1
  %155 = add i64 %.1647, 1
  %156 = icmp ult i64 %155, %1
  br i1 %156, label %105, label %._crit_edge50, !llvm.loop !16

._crit_edge50:                                    ; preds = %153
  %split51 = phi i64 [ %.129.lcssa, %153 ]
  %split52 = phi i8 [ %.125.lcssa, %153 ]
  %split53 = phi i32 [ %.1.lcssa, %153 ]
  br label %157

157:                                              ; preds = %._crit_edge50, %.preheader3
  %.028.lcssa = phi i64 [ %split51, %._crit_edge50 ], [ 0, %.preheader3 ]
  %.024.lcssa = phi i8 [ %split52, %._crit_edge50 ], [ 0, %.preheader3 ]
  %.01.lcssa = phi i32 [ %split53, %._crit_edge50 ], [ -1, %.preheader3 ]
  %158 = sub nsw i32 7, %.01.lcssa
  %159 = sext i8 %.024.lcssa to i32
  %160 = shl i32 %159, %158
  %161 = trunc i32 %160 to i8
  %162 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %161, ptr %162, align 1
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 1024, i1 false)
  br label %163

.preheader2:                                      ; preds = %195
  br label %198

163:                                              ; preds = %157, %195
  %.062 = phi ptr [ %9, %157 ], [ %165, %195 ]
  %.2761 = phi i64 [ 0, %157 ], [ %196, %195 ]
  %164 = trunc i64 %.2761 to i8
  store i8 %164, ptr %.062, align 1
  %165 = getelementptr inbounds nuw i8, ptr %.062, i32 1
  %166 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.2761
  %167 = load i32, ptr %166, align 4
  %168 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2761
  %169 = load i8, ptr %168, align 1
  %170 = zext i8 %169 to i32
  %171 = or i32 %167, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %195

173:                                              ; preds = %163
  %174 = sub nsw i32 %170, 1
  %175 = shl nuw i32 1, %174
  %176 = sext i32 %175 to i64
  %177 = load i8, ptr %168, align 1
  %178 = zext i8 %177 to i64
  %179 = icmp ult i64 0, %178
  br i1 %179, label %.lr.ph58, label %193

.lr.ph58:                                         ; preds = %173
  br label %180

180:                                              ; preds = %.lr.ph58, %180
  %.556 = phi i64 [ 0, %.lr.ph58 ], [ %189, %180 ]
  %.11655 = phi i64 [ %176, %.lr.ph58 ], [ %188, %180 ]
  %.01954 = phi i32 [ 0, %.lr.ph58 ], [ %spec.select1, %180 ]
  %181 = mul i32 %.01954, 2
  %182 = add i32 %181, 1
  %183 = load i32, ptr %166, align 4
  %184 = zext i32 %183 to i64
  %185 = and i64 %184, %.11655
  %186 = icmp ne i64 %185, 0
  %187 = add i32 %182, 1
  %spec.select1 = select i1 %186, i32 %187, i32 %182
  %188 = lshr i64 %.11655, 1
  %189 = add i64 %.556, 1
  %190 = load i8, ptr %168, align 1
  %191 = zext i8 %190 to i64
  %192 = icmp ult i64 %189, %191
  br i1 %192, label %180, label %._crit_edge59, !llvm.loop !17

._crit_edge59:                                    ; preds = %180
  %split60 = phi i32 [ %spec.select1, %180 ]
  br label %193

193:                                              ; preds = %._crit_edge59, %173
  %.019.lcssa = phi i32 [ %split60, %._crit_edge59 ], [ 0, %173 ]
  %194 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.2761
  store i32 %.019.lcssa, ptr %194, align 4
  br label %195

195:                                              ; preds = %193, %163
  %196 = add i64 %.2761, 1
  %197 = icmp ult i64 %196, 256
  br i1 %197, label %163, label %.preheader2, !llvm.loop !18

.preheader1:                                      ; preds = %.critedge
  br label %220

198:                                              ; preds = %.preheader2, %.critedge
  %.669 = phi i64 [ 1, %.preheader2 ], [ %218, %.critedge ]
  %199 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.669
  %200 = load i32, ptr %199, align 4
  %201 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.669
  %202 = load i8, ptr %201, align 1
  %203 = icmp ne i64 %.669, 0
  br i1 %203, label %.lr.ph65, label %.critedge

.lr.ph65:                                         ; preds = %198
  br label %204

204:                                              ; preds = %.lr.ph65, %209
  %.3863 = phi i64 [ %.669, %.lr.ph65 ], [ %214, %209 ]
  %205 = sub nuw i64 %.3863, 1
  %206 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %205
  %207 = load i32, ptr %206, align 4
  %208 = icmp ugt i32 %207, %200
  br i1 %208, label %209, label %..critedge_crit_edge

209:                                              ; preds = %204
  %210 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.3863
  store i32 %207, ptr %210, align 4
  %211 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %205
  %212 = load i8, ptr %211, align 1
  %213 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.3863
  store i8 %212, ptr %213, align 1
  %214 = add i64 %.3863, -1
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %204, label %..critedge_crit_edge67, !llvm.loop !19

..critedge_crit_edge:                             ; preds = %204
  %split66 = phi i64 [ %.3863, %204 ]
  br label %.critedge

..critedge_crit_edge67:                           ; preds = %209
  %split68 = phi i64 [ %214, %209 ]
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge67, %..critedge_crit_edge, %198
  %.38.lcssa = phi i64 [ %split66, %..critedge_crit_edge ], [ %split68, %..critedge_crit_edge67 ], [ 0, %198 ]
  %216 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %200, ptr %216, align 4
  %217 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %202, ptr %217, align 1
  %218 = add i64 %.669, 1
  %219 = icmp ult i64 %218, 256
  br i1 %219, label %198, label %.preheader1, !llvm.loop !20

220:                                              ; preds = %220, %.preheader1
  %.49 = phi i64 [ %224, %220 ], [ 0, %.preheader1 ]
  %221 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %222 = load i32, ptr %221, align 4
  %223 = icmp eq i32 %222, 0
  %224 = add i64 %.49, 1
  br i1 %223, label %220, label %.preheader, !llvm.loop !21

.preheader:                                       ; preds = %220
  %.49.lcssa = phi i64 [ %.49, %220 ]
  %225 = icmp ult i64 0, %1
  br i1 %225, label %.lr.ph76, label %251

.lr.ph76:                                         ; preds = %.preheader
  br label %226

226:                                              ; preds = %.lr.ph76, %246
  %.775 = phi i64 [ %.49.lcssa, %.lr.ph76 ], [ %.9, %246 ]
  %.31374 = phi i64 [ 0, %.lr.ph76 ], [ %.414, %246 ]
  %.21773 = phi i64 [ 128, %.lr.ph76 ], [ %.318, %246 ]
  %.22172 = phi i32 [ 0, %.lr.ph76 ], [ %.423, %246 ]
  %.03171 = phi ptr [ %11, %.lr.ph76 ], [ %.132, %246 ]
  %.23570 = phi ptr [ %0, %.lr.ph76 ], [ %.336, %246 ]
  %227 = mul i32 %.22172, 2
  %228 = add i32 %227, 1
  %229 = load i8, ptr %.03171, align 1
  %230 = zext i8 %229 to i64
  %231 = and i64 %230, %.21773
  %232 = icmp ne i64 %231, 0
  %233 = add i32 %228, 1
  %spec.select2 = select i1 %232, i32 %233, i32 %228
  br label %234

234:                                              ; preds = %234, %226
  %.8 = phi i64 [ %.775, %226 ], [ %238, %234 ]
  %235 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %236 = load i32, ptr %235, align 4
  %237 = icmp ult i32 %236, %spec.select2
  %238 = add i64 %.8, 1
  br i1 %237, label %234, label %239, !llvm.loop !22

239:                                              ; preds = %234
  %.8.lcssa = phi i64 [ %.8, %234 ]
  %.lcssa = phi i32 [ %236, %234 ]
  %240 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %240, label %241, label %246

241:                                              ; preds = %239
  %242 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %243 = load i8, ptr %242, align 1
  store i8 %243, ptr %.23570, align 1
  %244 = getelementptr inbounds nuw i8, ptr %.23570, i32 1
  %245 = add i64 %.31374, 1
  br label %246

246:                                              ; preds = %241, %239
  %.336 = phi ptr [ %244, %241 ], [ %.23570, %239 ]
  %.423 = phi i32 [ 0, %241 ], [ %spec.select2, %239 ]
  %.414 = phi i64 [ %245, %241 ], [ %.31374, %239 ]
  %.9 = phi i64 [ %.49.lcssa, %241 ], [ %.8.lcssa, %239 ]
  %247 = icmp ugt i64 %.21773, 1
  %248 = lshr i64 %.21773, 1
  %249 = getelementptr inbounds nuw i8, ptr %.03171, i32 1
  %.132 = select i1 %247, ptr %.03171, ptr %249
  %.318 = select i1 %247, i64 %248, i64 128
  %250 = icmp ult i64 %.414, %1
  br i1 %250, label %226, label %._crit_edge77, !llvm.loop !23

._crit_edge77:                                    ; preds = %246
  br label %251

251:                                              ; preds = %._crit_edge77, %.preheader
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
  br i1 %11, label %.lr.ph, label %45

.lr.ph:                                           ; preds = %4
  br label %12

12:                                               ; preds = %.lr.ph, %40
  %.011 = phi i32 [ %3, %.lr.ph ], [ %.0, %40 ]
  %13 = add nsw i32 %.011, %.011
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
  br i1 %39, label %._crit_edge, label %40

40:                                               ; preds = %29
  %41 = sub nsw i32 %.011, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, ptr %1, i64 %42
  store i64 %36, ptr %43, align 8
  %44 = icmp sle i32 %.0, %10
  br i1 %44, label %12, label %._crit_edge2, !llvm.loop !24

._crit_edge:                                      ; preds = %29
  %split = phi i32 [ %.011, %29 ]
  br label %45

._crit_edge2:                                     ; preds = %40
  %split3 = phi i32 [ %.0, %40 ]
  br label %45

45:                                               ; preds = %._crit_edge2, %._crit_edge, %4
  %.01.lcssa = phi i32 [ %split, %._crit_edge ], [ %split3, %._crit_edge2 ], [ %3, %4 ]
  %46 = sext i32 %9 to i64
  %47 = sub nsw i32 %.01.lcssa, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, ptr %1, i64 %48
  store i64 %46, ptr %49, align 8
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
  %4 = getelementptr inbounds nuw ptr, ptr %1, i64 1
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
define internal range(i64 -31, 32) i64 @random4() #0 {
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
  %13 = load i32, ptr @seed, align 4
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
