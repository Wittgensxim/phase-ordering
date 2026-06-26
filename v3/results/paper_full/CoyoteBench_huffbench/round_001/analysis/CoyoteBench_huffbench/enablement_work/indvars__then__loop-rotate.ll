; ModuleID = 'results\paper_full\CoyoteBench_huffbench\round_000\output.ll'
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
  %exitcond2 = icmp ne i64 0, %0
  br i1 %exitcond2, label %.lr.ph, label %9

.lr.ph:                                           ; preds = %1
  br label %3

3:                                                ; preds = %.lr.ph, %8
  %.014 = phi ptr [ %2, %.lr.ph ], [ %7, %8 ]
  %indvars.iv3 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %8 ]
  %4 = call i64 @random4()
  %5 = getelementptr inbounds nuw i8, ptr @.str, i64 %4
  %6 = load i8, ptr %5, align 1
  store i8 %6, ptr %.014, align 1
  %7 = getelementptr inbounds nuw i8, ptr %.014, i32 1
  br label %8

8:                                                ; preds = %3
  %indvars.iv.next = add nuw i64 %indvars.iv3, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %0
  br i1 %exitcond, label %3, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %8
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
  %11 = call ptr @malloc(i64 noundef %10) #6
  %12 = add i64 %1, 1
  %13 = mul i64 1, %12
  call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %13, i1 false)
  %14 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %14, i8 0, i64 4096, i1 false)
  %15 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %15, i8 0, i64 2048, i1 false)
  %16 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %16, i8 0, i64 2048, i1 false)
  %17 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %17, i8 0, i64 1024, i1 false)
  %18 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %18, i8 0, i64 256, i1 false)
  %exitcond12 = icmp ne i64 0, %1
  br i1 %exitcond12, label %.lr.ph, label %28

.lr.ph:                                           ; preds = %2
  br label %19

19:                                               ; preds = %.lr.ph, %26
  %.0214 = phi i64 [ 0, %.lr.ph ], [ %27, %26 ]
  %.03313 = phi ptr [ %0, %.lr.ph ], [ %25, %26 ]
  %20 = load i8, ptr %.03313, align 1
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %21
  %23 = load i64, ptr %22, align 8
  %24 = add i64 %23, 1
  store i64 %24, ptr %22, align 8
  %25 = getelementptr inbounds nuw i8, ptr %.03313, i32 1
  br label %26

26:                                               ; preds = %19
  %27 = add i64 %.0214, 1
  %exitcond = icmp ne i64 %27, %1
  br i1 %exitcond, label %19, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %26
  br label %28

28:                                               ; preds = %._crit_edge, %2
  br label %29

29:                                               ; preds = %28, %37
  %.1316 = phi i64 [ 0, %28 ], [ %38, %37 ]
  %.01015 = phi i64 [ 0, %28 ], [ %.111, %37 ]
  %30 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.1316
  %31 = load i64, ptr %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.01015
  store i64 %.1316, ptr %34, align 8
  %35 = add i64 %.01015, 1
  br label %36

36:                                               ; preds = %33, %29
  %.111 = phi i64 [ %35, %33 ], [ %.01015, %29 ]
  br label %37

37:                                               ; preds = %36
  %38 = add nuw nsw i64 %.1316, 1
  %exitcond7 = icmp ne i64 %38, 256
  br i1 %exitcond7, label %29, label %39, !llvm.loop !10

39:                                               ; preds = %37
  %.010.lcssa = phi i64 [ %.111, %37 ]
  %40 = icmp ugt i64 %.010.lcssa, 0
  br i1 %40, label %.lr.ph19, label %49

.lr.ph19:                                         ; preds = %39
  br label %41

41:                                               ; preds = %.lr.ph19, %46
  %.2417 = phi i64 [ %.010.lcssa, %.lr.ph19 ], [ %47, %46 ]
  %42 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %43 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %44 = trunc i64 %.010.lcssa to i32
  %45 = trunc i64 %.2417 to i32
  call void @heap_adjust(ptr noundef %42, ptr noundef %43, i32 noundef %44, i32 noundef %45)
  br label %46

46:                                               ; preds = %41
  %47 = add i64 %.2417, -1
  %48 = icmp ugt i64 %47, 0
  br i1 %48, label %41, label %._crit_edge20, !llvm.loop !11

._crit_edge20:                                    ; preds = %46
  br label %49

49:                                               ; preds = %._crit_edge20, %39
  %50 = icmp ugt i64 %.010.lcssa, 1
  br i1 %50, label %.lr.ph23, label %84

.lr.ph23:                                         ; preds = %49
  br label %51

51:                                               ; preds = %.lr.ph23, %51
  %.21221 = phi i64 [ %.010.lcssa, %.lr.ph23 ], [ %52, %51 ]
  %52 = add i64 %.21221, -1
  %53 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %54 = load i64, ptr %53, align 16
  %55 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %52
  %56 = load i64, ptr %55, align 8
  %57 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %56, ptr %57, align 16
  %58 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %59 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %60 = trunc i64 %52 to i32
  call void @heap_adjust(ptr noundef %58, ptr noundef %59, i32 noundef %60, i32 noundef 1)
  %61 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %62 = load i64, ptr %61, align 16
  %63 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %62
  %64 = load i64, ptr %63, align 8
  %65 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %54
  %66 = load i64, ptr %65, align 8
  %67 = add i64 %64, %66
  %68 = add i64 256, %52
  %69 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %68
  store i64 %67, ptr %69, align 8
  %70 = add i64 256, %52
  %71 = trunc i64 %70 to i32
  %72 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %54
  store i32 %71, ptr %72, align 4
  %73 = sub i64 -256, %52
  %74 = trunc i64 %73 to i32
  %75 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %76 = load i64, ptr %75, align 16
  %77 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %76
  store i32 %74, ptr %77, align 4
  %78 = add i64 256, %52
  %79 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %78, ptr %79, align 16
  %80 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %81 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %82 = trunc i64 %52 to i32
  call void @heap_adjust(ptr noundef %80, ptr noundef %81, i32 noundef %82, i32 noundef 1)
  %83 = icmp ugt i64 %52, 1
  br i1 %83, label %51, label %._crit_edge24, !llvm.loop !12

._crit_edge24:                                    ; preds = %51
  %split = phi i64 [ %52, %51 ]
  br label %84

84:                                               ; preds = %._crit_edge24, %49
  %.212.lcssa = phi i64 [ %split, %._crit_edge24 ], [ %.010.lcssa, %49 ]
  %85 = add i64 256, %.212.lcssa
  %86 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %85
  store i32 0, ptr %86, align 4
  br label %87

87:                                               ; preds = %84, %122
  %.03936 = phi i64 [ 0, %84 ], [ %.140, %122 ]
  %.04235 = phi i64 [ 0, %84 ], [ %123, %122 ]
  %.04534 = phi i64 [ 0, %84 ], [ %.146, %122 ]
  %88 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.04235
  %89 = load i64, ptr %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04235
  store i32 0, ptr %92, align 4
  %93 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04235
  store i8 0, ptr %93, align 1
  br label %121

94:                                               ; preds = %87
  %95 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.04235
  %96 = load i32, ptr %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %.lr.ph30, label %110

.lr.ph30:                                         ; preds = %94
  br label %98

98:                                               ; preds = %.lr.ph30, %103
  %.328 = phi i64 [ 0, %.lr.ph30 ], [ %108, %103 ]
  %.0527 = phi i64 [ 1, %.lr.ph30 ], [ %107, %103 ]
  %.03726 = phi i32 [ %96, %.lr.ph30 ], [ %106, %103 ]
  %.04325 = phi i64 [ 0, %.lr.ph30 ], [ %.144, %103 ]
  %99 = icmp slt i32 %.03726, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %98
  %101 = add i64 %.04325, %.0527
  %102 = sub nsw i32 0, %.03726
  br label %103

103:                                              ; preds = %100, %98
  %.144 = phi i64 [ %101, %100 ], [ %.04325, %98 ]
  %.138 = phi i32 [ %102, %100 ], [ %.03726, %98 ]
  %104 = sext i32 %.138 to i64
  %105 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %104
  %106 = load i32, ptr %105, align 4
  %107 = shl i64 %.0527, 1
  %108 = add i64 %.328, 1
  %109 = icmp ne i32 %106, 0
  br i1 %109, label %98, label %._crit_edge31, !llvm.loop !13

._crit_edge31:                                    ; preds = %103
  %split32 = phi i64 [ %.144, %103 ]
  %split33 = phi i64 [ %108, %103 ]
  br label %110

110:                                              ; preds = %._crit_edge31, %94
  %.043.lcssa = phi i64 [ %split32, %._crit_edge31 ], [ 0, %94 ]
  %.3.lcssa = phi i64 [ %split33, %._crit_edge31 ], [ 0, %94 ]
  %111 = trunc i64 %.043.lcssa to i32
  %112 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04235
  store i32 %111, ptr %112, align 4
  %113 = trunc i64 %.3.lcssa to i8
  %114 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04235
  store i8 %113, ptr %114, align 1
  %115 = icmp ugt i64 %.043.lcssa, %.04534
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %117

117:                                              ; preds = %116, %110
  %.247 = phi i64 [ %.043.lcssa, %116 ], [ %.04534, %110 ]
  %118 = icmp ugt i64 %.3.lcssa, %.03936
  br i1 %118, label %119, label %120

119:                                              ; preds = %117
  br label %120

120:                                              ; preds = %119, %117
  %.241 = phi i64 [ %.3.lcssa, %119 ], [ %.03936, %117 ]
  br label %121

121:                                              ; preds = %120, %91
  %.146 = phi i64 [ %.247, %120 ], [ %.04534, %91 ]
  %.140 = phi i64 [ %.241, %120 ], [ %.03936, %91 ]
  br label %122

122:                                              ; preds = %121
  %123 = add nuw nsw i64 %.04235, 1
  %exitcond8 = icmp ne i64 %123, 256
  br i1 %exitcond8, label %87, label %124, !llvm.loop !14

124:                                              ; preds = %122
  %.045.lcssa = phi i64 [ %.146, %122 ]
  %.039.lcssa = phi i64 [ %.140, %122 ]
  %125 = icmp ugt i64 %.039.lcssa, 32
  br i1 %125, label %126, label %129

126:                                              ; preds = %124
  %127 = call ptr @__acrt_iob_func(i32 noundef 2)
  %128 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

129:                                              ; preds = %124
  %130 = icmp eq i64 %.045.lcssa, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %129
  %132 = call ptr @__acrt_iob_func(i32 noundef 2)
  %133 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %132, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

134:                                              ; preds = %129
  %exitcond948 = icmp ne i64 0, %1
  br i1 %exitcond948, label %.lr.ph55, label %191

.lr.ph55:                                         ; preds = %134
  br label %135

135:                                              ; preds = %.lr.ph55, %189
  %.0153 = phi i32 [ -1, %.lr.ph55 ], [ %.1.lcssa, %189 ]
  %.1652 = phi i64 [ 0, %.lr.ph55 ], [ %190, %189 ]
  %.02451 = phi i8 [ 0, %.lr.ph55 ], [ %.125.lcssa, %189 ]
  %.02850 = phi i64 [ 0, %.lr.ph55 ], [ %.129.lcssa, %189 ]
  %.13449 = phi ptr [ %0, %.lr.ph55 ], [ %188, %189 ]
  %136 = load i8, ptr %.13449, align 1
  %137 = zext i8 %136 to i64
  %138 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %137
  %139 = load i8, ptr %138, align 1
  %140 = zext i8 %139 to i32
  %141 = sub nsw i32 %140, 1
  %142 = shl i32 1, %141
  %143 = sext i32 %142 to i64
  %144 = load i8, ptr %.13449, align 1
  %145 = zext i8 %144 to i64
  %146 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %145
  %147 = load i8, ptr %146, align 1
  %148 = zext i8 %147 to i64
  %149 = icmp samesign ult i64 0, %148
  br i1 %149, label %.lr.ph43, label %187

.lr.ph43:                                         ; preds = %135
  br label %150

150:                                              ; preds = %.lr.ph43, %179
  %.141 = phi i32 [ %.0153, %.lr.ph43 ], [ %.2, %179 ]
  %.440 = phi i64 [ 0, %.lr.ph43 ], [ %180, %179 ]
  %.01539 = phi i64 [ %143, %.lr.ph43 ], [ %178, %179 ]
  %.12538 = phi i8 [ %.02451, %.lr.ph43 ], [ %.327, %179 ]
  %.12937 = phi i64 [ %.02850, %.lr.ph43 ], [ %.230, %179 ]
  %151 = icmp eq i32 %.141, 7
  br i1 %151, label %152, label %160

152:                                              ; preds = %150
  %153 = getelementptr inbounds nuw i8, ptr %11, i64 %.12937
  store i8 %.12538, ptr %153, align 1
  %154 = add i64 %.12937, 1
  %155 = icmp eq i64 %154, %1
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = call ptr @__acrt_iob_func(i32 noundef 2)
  %158 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %157, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

159:                                              ; preds = %152
  br label %165

160:                                              ; preds = %150
  %161 = add nsw i32 %.141, 1
  %162 = sext i8 %.12538 to i32
  %163 = shl i32 %162, 1
  %164 = trunc i32 %163 to i8
  br label %165

165:                                              ; preds = %160, %159
  %.230 = phi i64 [ %154, %159 ], [ %.12937, %160 ]
  %.226 = phi i8 [ 0, %159 ], [ %164, %160 ]
  %.2 = phi i32 [ 0, %159 ], [ %161, %160 ]
  %166 = load i8, ptr %.13449, align 1
  %167 = zext i8 %166 to i64
  %168 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %167
  %169 = load i32, ptr %168, align 4
  %170 = zext i32 %169 to i64
  %171 = and i64 %170, %.01539
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %165
  %174 = sext i8 %.226 to i32
  %175 = or i32 %174, 1
  %176 = trunc i32 %175 to i8
  br label %177

177:                                              ; preds = %173, %165
  %.327 = phi i8 [ %176, %173 ], [ %.226, %165 ]
  %178 = lshr i64 %.01539, 1
  br label %179

179:                                              ; preds = %177
  %180 = add nuw nsw i64 %.440, 1
  %181 = load i8, ptr %.13449, align 1
  %182 = zext i8 %181 to i64
  %183 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %182
  %184 = load i8, ptr %183, align 1
  %185 = zext i8 %184 to i64
  %186 = icmp samesign ult i64 %180, %185
  br i1 %186, label %150, label %._crit_edge44, !llvm.loop !15

._crit_edge44:                                    ; preds = %179
  %split45 = phi i64 [ %.230, %179 ]
  %split46 = phi i8 [ %.327, %179 ]
  %split47 = phi i32 [ %.2, %179 ]
  br label %187

187:                                              ; preds = %._crit_edge44, %135
  %.129.lcssa = phi i64 [ %split45, %._crit_edge44 ], [ %.02850, %135 ]
  %.125.lcssa = phi i8 [ %split46, %._crit_edge44 ], [ %.02451, %135 ]
  %.1.lcssa = phi i32 [ %split47, %._crit_edge44 ], [ %.0153, %135 ]
  %188 = getelementptr inbounds nuw i8, ptr %.13449, i32 1
  br label %189

189:                                              ; preds = %187
  %190 = add i64 %.1652, 1
  %exitcond9 = icmp ne i64 %190, %1
  br i1 %exitcond9, label %135, label %._crit_edge56, !llvm.loop !16

._crit_edge56:                                    ; preds = %189
  %split57 = phi i64 [ %.129.lcssa, %189 ]
  %split58 = phi i8 [ %.125.lcssa, %189 ]
  %split59 = phi i32 [ %.1.lcssa, %189 ]
  br label %191

191:                                              ; preds = %._crit_edge56, %134
  %.028.lcssa = phi i64 [ %split57, %._crit_edge56 ], [ 0, %134 ]
  %.024.lcssa = phi i8 [ %split58, %._crit_edge56 ], [ 0, %134 ]
  %.01.lcssa = phi i32 [ %split59, %._crit_edge56 ], [ -1, %134 ]
  %192 = sub nsw i32 7, %.01.lcssa
  %193 = sext i8 %.024.lcssa to i32
  %194 = shl i32 %193, %192
  %195 = trunc i32 %194 to i8
  %196 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %195, ptr %196, align 1
  %197 = getelementptr inbounds [256 x i32], ptr %8, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %197, i8 0, i64 1024, i1 false)
  %198 = getelementptr inbounds [256 x i8], ptr %9, i64 0, i64 0
  br label %199

199:                                              ; preds = %191, %240
  %.068 = phi ptr [ %198, %191 ], [ %201, %240 ]
  %.2767 = phi i64 [ 0, %191 ], [ %241, %240 ]
  %200 = trunc i64 %.2767 to i8
  store i8 %200, ptr %.068, align 1
  %201 = getelementptr inbounds nuw i8, ptr %.068, i32 1
  %202 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.2767
  %203 = load i32, ptr %202, align 4
  %204 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2767
  %205 = load i8, ptr %204, align 1
  %206 = zext i8 %205 to i32
  %207 = or i32 %203, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %239

209:                                              ; preds = %199
  %210 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2767
  %211 = load i8, ptr %210, align 1
  %212 = zext i8 %211 to i32
  %213 = sub nsw i32 %212, 1
  %214 = shl i32 1, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2767
  %217 = load i8, ptr %216, align 1
  %218 = zext i8 %217 to i64
  %219 = icmp samesign ult i64 0, %218
  br i1 %219, label %.lr.ph64, label %237

.lr.ph64:                                         ; preds = %209
  br label %220

220:                                              ; preds = %.lr.ph64, %232
  %.562 = phi i64 [ 0, %.lr.ph64 ], [ %233, %232 ]
  %.11661 = phi i64 [ %215, %.lr.ph64 ], [ %231, %232 ]
  %.01960 = phi i32 [ 0, %.lr.ph64 ], [ %.120, %232 ]
  %221 = mul i32 %.01960, 2
  %222 = add i32 %221, 1
  %223 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.2767
  %224 = load i32, ptr %223, align 4
  %225 = zext i32 %224 to i64
  %226 = and i64 %225, %.11661
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %220
  %229 = add i32 %222, 1
  br label %230

230:                                              ; preds = %228, %220
  %.120 = phi i32 [ %229, %228 ], [ %222, %220 ]
  %231 = lshr i64 %.11661, 1
  br label %232

232:                                              ; preds = %230
  %233 = add nuw nsw i64 %.562, 1
  %234 = load i8, ptr %216, align 1
  %235 = zext i8 %234 to i64
  %236 = icmp samesign ult i64 %233, %235
  br i1 %236, label %220, label %._crit_edge65, !llvm.loop !17

._crit_edge65:                                    ; preds = %232
  %split66 = phi i32 [ %.120, %232 ]
  br label %237

237:                                              ; preds = %._crit_edge65, %209
  %.019.lcssa = phi i32 [ %split66, %._crit_edge65 ], [ 0, %209 ]
  %238 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.2767
  store i32 %.019.lcssa, ptr %238, align 4
  br label %239

239:                                              ; preds = %237, %199
  br label %240

240:                                              ; preds = %239
  %241 = add nuw nsw i64 %.2767, 1
  %exitcond10 = icmp ne i64 %241, 256
  br i1 %exitcond10, label %199, label %242, !llvm.loop !18

242:                                              ; preds = %240
  br label %243

243:                                              ; preds = %242, %270
  %.669 = phi i64 [ 1, %242 ], [ %271, %270 ]
  %244 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.669
  %245 = load i32, ptr %244, align 4
  %246 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.669
  %247 = load i8, ptr %246, align 1
  br label %248

248:                                              ; preds = %257, %243
  %.38 = phi i64 [ %.669, %243 ], [ %266, %257 ]
  %249 = icmp ne i64 %.38, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %248
  %251 = sub nuw i64 %.38, 1
  %252 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %251
  %253 = load i32, ptr %252, align 4
  %254 = icmp ugt i32 %253, %245
  br label %255

255:                                              ; preds = %250, %248
  %256 = phi i1 [ false, %248 ], [ %254, %250 ]
  br i1 %256, label %257, label %267

257:                                              ; preds = %255
  %258 = sub i64 %.38, 1
  %259 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %258
  %260 = load i32, ptr %259, align 4
  %261 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %260, ptr %261, align 4
  %262 = sub i64 %.38, 1
  %263 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %262
  %264 = load i8, ptr %263, align 1
  %265 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %264, ptr %265, align 1
  %266 = add i64 %.38, -1
  br label %248, !llvm.loop !19

267:                                              ; preds = %255
  %.38.lcssa = phi i64 [ %.38, %255 ]
  %268 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %245, ptr %268, align 4
  %269 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %247, ptr %269, align 1
  br label %270

270:                                              ; preds = %267
  %271 = add nuw nsw i64 %.669, 1
  %exitcond11 = icmp ne i64 %271, 256
  br i1 %exitcond11, label %243, label %272, !llvm.loop !20

272:                                              ; preds = %270
  %273 = load i32, ptr %8, align 4
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %.lr.ph72, label %281

.lr.ph72:                                         ; preds = %272
  br label %275

275:                                              ; preds = %.lr.ph72, %276
  %.4970 = phi i64 [ 0, %.lr.ph72 ], [ %277, %276 ]
  br label %276

276:                                              ; preds = %275
  %277 = add i64 %.4970, 1
  %278 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %277
  %279 = load i32, ptr %278, align 4
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %275, label %._crit_edge73, !llvm.loop !21

._crit_edge73:                                    ; preds = %276
  %split74 = phi i64 [ %277, %276 ]
  br label %281

281:                                              ; preds = %._crit_edge73, %272
  %.49.lcssa = phi i64 [ %split74, %._crit_edge73 ], [ 0, %272 ]
  %282 = icmp ult i64 0, %1
  br i1 %282, label %.lr.ph82, label %315

.lr.ph82:                                         ; preds = %281
  br label %283

283:                                              ; preds = %.lr.ph82, %313
  %.780 = phi i64 [ %.49.lcssa, %.lr.ph82 ], [ %.9, %313 ]
  %.31379 = phi i64 [ 0, %.lr.ph82 ], [ %.414, %313 ]
  %.21778 = phi i64 [ 128, %.lr.ph82 ], [ %.318, %313 ]
  %.22177 = phi i32 [ 0, %.lr.ph82 ], [ %.423, %313 ]
  %.03176 = phi ptr [ %11, %.lr.ph82 ], [ %.132, %313 ]
  %.23575 = phi ptr [ %0, %.lr.ph82 ], [ %.336, %313 ]
  %284 = mul i32 %.22177, 2
  %285 = add i32 %284, 1
  %286 = load i8, ptr %.03176, align 1
  %287 = zext i8 %286 to i64
  %288 = and i64 %287, %.21778
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %283
  %291 = add i32 %285, 1
  br label %292

292:                                              ; preds = %290, %283
  %.322 = phi i32 [ %291, %290 ], [ %285, %283 ]
  br label %293

293:                                              ; preds = %293, %292
  %.8 = phi i64 [ %.780, %292 ], [ %297, %293 ]
  %294 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %295 = load i32, ptr %294, align 4
  %296 = icmp ult i32 %295, %.322
  %297 = add i64 %.8, 1
  br i1 %296, label %293, label %298, !llvm.loop !22

298:                                              ; preds = %293
  %.8.lcssa = phi i64 [ %.8, %293 ]
  %299 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8.lcssa
  %300 = load i32, ptr %299, align 4
  %301 = icmp eq i32 %.322, %300
  br i1 %301, label %302, label %307

302:                                              ; preds = %298
  %303 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %304 = load i8, ptr %303, align 1
  store i8 %304, ptr %.23575, align 1
  %305 = getelementptr inbounds nuw i8, ptr %.23575, i32 1
  %306 = add i64 %.31379, 1
  br label %307

307:                                              ; preds = %302, %298
  %.336 = phi ptr [ %305, %302 ], [ %.23575, %298 ]
  %.423 = phi i32 [ 0, %302 ], [ %.322, %298 ]
  %.414 = phi i64 [ %306, %302 ], [ %.31379, %298 ]
  %.9 = phi i64 [ %.49.lcssa, %302 ], [ %.8.lcssa, %298 ]
  %308 = icmp ugt i64 %.21778, 1
  br i1 %308, label %309, label %311

309:                                              ; preds = %307
  %310 = lshr i64 %.21778, 1
  br label %313

311:                                              ; preds = %307
  %312 = getelementptr inbounds nuw i8, ptr %.03176, i32 1
  br label %313

313:                                              ; preds = %311, %309
  %.132 = phi ptr [ %.03176, %309 ], [ %312, %311 ]
  %.318 = phi i64 [ %310, %309 ], [ 128, %311 ]
  %314 = icmp ult i64 %.414, %1
  br i1 %314, label %283, label %._crit_edge83, !llvm.loop !23

._crit_edge83:                                    ; preds = %313
  br label %315

315:                                              ; preds = %._crit_edge83, %281
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
  br i1 %11, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %12

12:                                               ; preds = %.lr.ph, %42
  %.013 = phi i32 [ %3, %.lr.ph ], [ %.0, %42 ]
  %13 = add nsw i32 %.013, %.013
  %14 = icmp slt i32 %13, %2
  br i1 %14, label %15, label %30

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
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = add nsw i32 %13, 1
  br label %30

30:                                               ; preds = %28, %15, %12
  %.0 = phi i32 [ %29, %28 ], [ %13, %15 ], [ %13, %12 ]
  %31 = sext i32 %9 to i64
  %32 = getelementptr inbounds i64, ptr %0, i64 %31
  %33 = load i64, ptr %32, align 8
  %34 = sub nsw i32 %.0, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, ptr %1, i64 %35
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds nuw i64, ptr %0, i64 %37
  %39 = load i64, ptr %38, align 8
  %40 = icmp ult i64 %33, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  %.01.lcssa1 = phi i32 [ %.013, %30 ]
  br label %51

42:                                               ; preds = %30
  %43 = sub nsw i32 %.0, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, ptr %1, i64 %44
  %46 = load i64, ptr %45, align 8
  %47 = sub nsw i32 %.013, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, ptr %1, i64 %48
  store i64 %46, ptr %49, align 8
  %50 = icmp sle i32 %.0, %10
  br i1 %50, label %12, label %..loopexit_crit_edge, !llvm.loop !24

..loopexit_crit_edge:                             ; preds = %42
  %split = phi i32 [ %.0, %42 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  %.01.lcssa = phi i32 [ %split, %..loopexit_crit_edge ], [ %3, %4 ]
  br label %51

51:                                               ; preds = %.loopexit, %41
  %.012 = phi i32 [ %.01.lcssa, %.loopexit ], [ %.01.lcssa1, %41 ]
  %52 = sext i32 %9 to i64
  %53 = sub nsw i32 %.012, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, ptr %1, i64 %54
  store i64 %52, ptr %55, align 8
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
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4, %12
  %.012 = phi i32 [ 1, %4 ], [ %13, %12 ]
  %6 = getelementptr inbounds ptr, ptr %1, i64 1
  %7 = load ptr, ptr %6, align 8
  %8 = call i32 @strcmp(ptr noundef %7, ptr noundef @.str.4) #7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  br label %14

11:                                               ; preds = %5
  br label %12

12:                                               ; preds = %11
  %13 = add nuw i32 %.012, 1
  %exitcond = icmp ne i32 %13, %0
  br i1 %exitcond, label %5, label %.loopexit, !llvm.loop !25

.loopexit:                                        ; preds = %12
  br label %14

14:                                               ; preds = %.loopexit, %10
  %.1 = phi i8 [ 1, %10 ], [ 0, %.loopexit ]
  br label %15

15:                                               ; preds = %14, %2
  %.0 = phi i8 [ %.1, %14 ], [ 0, %2 ]
  %16 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %17

17:                                               ; preds = %15, %18
  %.123 = phi i32 [ 0, %15 ], [ %19, %18 ]
  call void @compdecomp(ptr noundef %16, i64 noundef 10000000)
  br label %18

18:                                               ; preds = %17
  %19 = add nuw nsw i32 %.123, 1
  %exitcond1 = icmp ne i32 %19, 30
  br i1 %exitcond1, label %17, label %20, !llvm.loop !26

20:                                               ; preds = %18
  call void @free(ptr noundef %16)
  %21 = icmp ne i8 %.0, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = call ptr @__acrt_iob_func(i32 noundef 1)
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.5, double noundef 0.000000e+00) #7
  br label %28

25:                                               ; preds = %20
  %26 = call ptr @__acrt_iob_func(i32 noundef 1)
  %27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str.6, double noundef 0.000000e+00) #7
  br label %28

28:                                               ; preds = %25, %22
  %29 = call ptr @__acrt_iob_func(i32 noundef 1)
  %30 = call i32 @fflush(ptr noundef %29)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

declare dso_local i32 @fflush(ptr noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal i64 @random4() #0 {
  %1 = load i32, ptr @seed, align 4
  %2 = xor i32 %1, 123459876
  store i32 %2, ptr @seed, align 4
  %3 = load i32, ptr @seed, align 4
  %4 = sdiv i32 %3, 127773
  %5 = load i32, ptr @seed, align 4
  %6 = mul nsw i32 %4, 127773
  %7 = sub nsw i32 %5, %6
  %8 = mul nsw i32 16807, %7
  %9 = mul nsw i32 2836, %4
  %10 = sub nsw i32 %8, %9
  store i32 %10, ptr @seed, align 4
  %11 = load i32, ptr @seed, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = load i32, ptr @seed, align 4
  %15 = add nsw i32 %14, 2147483647
  store i32 %15, ptr @seed, align 4
  br label %16

16:                                               ; preds = %13, %0
  %17 = load i32, ptr @seed, align 4
  %18 = srem i32 %17, 32
  %19 = sext i32 %18 to i64
  %20 = load i32, ptr @seed, align 4
  %21 = xor i32 %20, 123459876
  store i32 %21, ptr @seed, align 4
  ret i64 %19
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
