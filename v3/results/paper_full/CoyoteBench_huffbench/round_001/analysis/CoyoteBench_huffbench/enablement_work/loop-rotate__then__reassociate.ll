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
  %3 = icmp ult i64 0, %0
  br i1 %3, label %.lr.ph, label %13

.lr.ph:                                           ; preds = %1
  br label %4

4:                                                ; preds = %.lr.ph, %9
  %.02 = phi i32 [ 0, %.lr.ph ], [ %10, %9 ]
  %.011 = phi ptr [ %2, %.lr.ph ], [ %8, %9 ]
  %5 = call i64 @random4()
  %6 = getelementptr inbounds nuw i8, ptr @.str, i64 %5
  %7 = load i8, ptr %6, align 1
  store i8 %7, ptr %.011, align 1
  %8 = getelementptr inbounds nuw i8, ptr %.011, i32 1
  br label %9

9:                                                ; preds = %4
  %10 = add nsw i32 %.02, 1
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, %0
  br i1 %12, label %4, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %9
  br label %13

13:                                               ; preds = %._crit_edge, %1
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
  call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %12, i1 false)
  %13 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %13, i8 0, i64 4096, i1 false)
  %14 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %14, i8 0, i64 2048, i1 false)
  %15 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %15, i8 0, i64 2048, i1 false)
  %16 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %16, i8 0, i64 1024, i1 false)
  %17 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %17, i8 0, i64 256, i1 false)
  %18 = icmp ult i64 0, %1
  br i1 %18, label %.lr.ph, label %29

.lr.ph:                                           ; preds = %2
  br label %19

19:                                               ; preds = %.lr.ph, %26
  %.029 = phi i64 [ 0, %.lr.ph ], [ %27, %26 ]
  %.0337 = phi ptr [ %0, %.lr.ph ], [ %25, %26 ]
  %20 = load i8, ptr %.0337, align 1
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %21
  %23 = load i64, ptr %22, align 8
  %24 = add i64 %23, 1
  store i64 %24, ptr %22, align 8
  %25 = getelementptr inbounds nuw i8, ptr %.0337, i32 1
  br label %26

26:                                               ; preds = %19
  %27 = add i64 %.029, 1
  %28 = icmp ult i64 %27, %1
  br i1 %28, label %19, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %26
  br label %29

29:                                               ; preds = %._crit_edge, %2
  br label %30

30:                                               ; preds = %29, %38
  %.1311 = phi i64 [ 0, %29 ], [ %39, %38 ]
  %.01010 = phi i64 [ 0, %29 ], [ %.111, %38 ]
  %31 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.1311
  %32 = load i64, ptr %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.01010
  store i64 %.1311, ptr %35, align 8
  %36 = add i64 %.01010, 1
  br label %37

37:                                               ; preds = %34, %30
  %.111 = phi i64 [ %36, %34 ], [ %.01010, %30 ]
  br label %38

38:                                               ; preds = %37
  %39 = add i64 %.1311, 1
  %40 = icmp ult i64 %39, 256
  br i1 %40, label %30, label %41, !llvm.loop !10

41:                                               ; preds = %38
  %.010.lcssa = phi i64 [ %.111, %38 ]
  %42 = icmp ugt i64 %.010.lcssa, 0
  br i1 %42, label %.lr.ph14, label %51

.lr.ph14:                                         ; preds = %41
  br label %43

43:                                               ; preds = %.lr.ph14, %48
  %.2412 = phi i64 [ %.010.lcssa, %.lr.ph14 ], [ %49, %48 ]
  %44 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %45 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %46 = trunc i64 %.010.lcssa to i32
  %47 = trunc i64 %.2412 to i32
  call void @heap_adjust(ptr noundef %44, ptr noundef %45, i32 noundef %46, i32 noundef %47)
  br label %48

48:                                               ; preds = %43
  %49 = add i64 %.2412, -1
  %50 = icmp ugt i64 %49, 0
  br i1 %50, label %43, label %._crit_edge15, !llvm.loop !11

._crit_edge15:                                    ; preds = %48
  br label %51

51:                                               ; preds = %._crit_edge15, %41
  %52 = icmp ugt i64 %.010.lcssa, 1
  br i1 %52, label %.lr.ph18, label %86

.lr.ph18:                                         ; preds = %51
  br label %53

53:                                               ; preds = %.lr.ph18, %53
  %.21216 = phi i64 [ %.010.lcssa, %.lr.ph18 ], [ %54, %53 ]
  %54 = add i64 %.21216, -1
  %55 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %56 = load i64, ptr %55, align 16
  %57 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %54
  %58 = load i64, ptr %57, align 8
  %59 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %58, ptr %59, align 16
  %60 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %61 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %62 = trunc i64 %54 to i32
  call void @heap_adjust(ptr noundef %60, ptr noundef %61, i32 noundef %62, i32 noundef 1)
  %63 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %64 = load i64, ptr %63, align 16
  %65 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %64
  %66 = load i64, ptr %65, align 8
  %67 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %56
  %68 = load i64, ptr %67, align 8
  %69 = add i64 %68, %66
  %70 = add i64 %54, 256
  %71 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %70
  store i64 %69, ptr %71, align 8
  %72 = add i64 %54, 256
  %73 = trunc i64 %72 to i32
  %74 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %56
  store i32 %73, ptr %74, align 4
  %75 = sub i64 -256, %54
  %76 = trunc i64 %75 to i32
  %77 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %78 = load i64, ptr %77, align 16
  %79 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %78
  store i32 %76, ptr %79, align 4
  %80 = add i64 %54, 256
  %81 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %80, ptr %81, align 16
  %82 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %83 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %84 = trunc i64 %54 to i32
  call void @heap_adjust(ptr noundef %82, ptr noundef %83, i32 noundef %84, i32 noundef 1)
  %85 = icmp ugt i64 %54, 1
  br i1 %85, label %53, label %._crit_edge19, !llvm.loop !12

._crit_edge19:                                    ; preds = %53
  %split = phi i64 [ %54, %53 ]
  br label %86

86:                                               ; preds = %._crit_edge19, %51
  %.212.lcssa = phi i64 [ %split, %._crit_edge19 ], [ %.010.lcssa, %51 ]
  %87 = add i64 %.212.lcssa, 256
  %88 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %87
  store i32 0, ptr %88, align 4
  br label %89

89:                                               ; preds = %86, %124
  %.03931 = phi i64 [ 0, %86 ], [ %.140, %124 ]
  %.04230 = phi i64 [ 0, %86 ], [ %125, %124 ]
  %.04529 = phi i64 [ 0, %86 ], [ %.146, %124 ]
  %90 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.04230
  %91 = load i64, ptr %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04230
  store i32 0, ptr %94, align 4
  %95 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04230
  store i8 0, ptr %95, align 1
  br label %123

96:                                               ; preds = %89
  %97 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.04230
  %98 = load i32, ptr %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %.lr.ph25, label %112

.lr.ph25:                                         ; preds = %96
  br label %100

100:                                              ; preds = %.lr.ph25, %105
  %.323 = phi i64 [ 0, %.lr.ph25 ], [ %110, %105 ]
  %.0522 = phi i64 [ 1, %.lr.ph25 ], [ %109, %105 ]
  %.03721 = phi i32 [ %98, %.lr.ph25 ], [ %108, %105 ]
  %.04320 = phi i64 [ 0, %.lr.ph25 ], [ %.144, %105 ]
  %101 = icmp slt i32 %.03721, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %100
  %103 = add i64 %.04320, %.0522
  %104 = sub nsw i32 0, %.03721
  br label %105

105:                                              ; preds = %102, %100
  %.144 = phi i64 [ %103, %102 ], [ %.04320, %100 ]
  %.138 = phi i32 [ %104, %102 ], [ %.03721, %100 ]
  %106 = sext i32 %.138 to i64
  %107 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %106
  %108 = load i32, ptr %107, align 4
  %109 = shl i64 %.0522, 1
  %110 = add i64 %.323, 1
  %111 = icmp ne i32 %108, 0
  br i1 %111, label %100, label %._crit_edge26, !llvm.loop !13

._crit_edge26:                                    ; preds = %105
  %split27 = phi i64 [ %.144, %105 ]
  %split28 = phi i64 [ %110, %105 ]
  br label %112

112:                                              ; preds = %._crit_edge26, %96
  %.043.lcssa = phi i64 [ %split27, %._crit_edge26 ], [ 0, %96 ]
  %.3.lcssa = phi i64 [ %split28, %._crit_edge26 ], [ 0, %96 ]
  %113 = trunc i64 %.043.lcssa to i32
  %114 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04230
  store i32 %113, ptr %114, align 4
  %115 = trunc i64 %.3.lcssa to i8
  %116 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04230
  store i8 %115, ptr %116, align 1
  %117 = icmp ugt i64 %.043.lcssa, %.04529
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %119

119:                                              ; preds = %118, %112
  %.247 = phi i64 [ %.043.lcssa, %118 ], [ %.04529, %112 ]
  %120 = icmp ugt i64 %.3.lcssa, %.03931
  br i1 %120, label %121, label %122

121:                                              ; preds = %119
  br label %122

122:                                              ; preds = %121, %119
  %.241 = phi i64 [ %.3.lcssa, %121 ], [ %.03931, %119 ]
  br label %123

123:                                              ; preds = %122, %93
  %.146 = phi i64 [ %.247, %122 ], [ %.04529, %93 ]
  %.140 = phi i64 [ %.241, %122 ], [ %.03931, %93 ]
  br label %124

124:                                              ; preds = %123
  %125 = add i64 %.04230, 1
  %126 = icmp ult i64 %125, 256
  br i1 %126, label %89, label %127, !llvm.loop !14

127:                                              ; preds = %124
  %.045.lcssa = phi i64 [ %.146, %124 ]
  %.039.lcssa = phi i64 [ %.140, %124 ]
  %128 = icmp ugt i64 %.039.lcssa, 32
  br i1 %128, label %129, label %132

129:                                              ; preds = %127
  %130 = call ptr @__acrt_iob_func(i32 noundef 2)
  %131 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

132:                                              ; preds = %127
  %133 = icmp eq i64 %.045.lcssa, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %132
  %135 = call ptr @__acrt_iob_func(i32 noundef 2)
  %136 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %135, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

137:                                              ; preds = %132
  %138 = icmp ult i64 0, %1
  br i1 %138, label %.lr.ph49, label %196

.lr.ph49:                                         ; preds = %137
  br label %139

139:                                              ; preds = %.lr.ph49, %193
  %.0147 = phi i32 [ -1, %.lr.ph49 ], [ %.1.lcssa, %193 ]
  %.1646 = phi i64 [ 0, %.lr.ph49 ], [ %194, %193 ]
  %.02445 = phi i8 [ 0, %.lr.ph49 ], [ %.125.lcssa, %193 ]
  %.02844 = phi i64 [ 0, %.lr.ph49 ], [ %.129.lcssa, %193 ]
  %.13443 = phi ptr [ %0, %.lr.ph49 ], [ %192, %193 ]
  %140 = load i8, ptr %.13443, align 1
  %141 = zext i8 %140 to i64
  %142 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %141
  %143 = load i8, ptr %142, align 1
  %144 = zext i8 %143 to i32
  %145 = sub nsw i32 %144, 1
  %146 = shl i32 1, %145
  %147 = sext i32 %146 to i64
  %148 = load i8, ptr %.13443, align 1
  %149 = zext i8 %148 to i64
  %150 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %149
  %151 = load i8, ptr %150, align 1
  %152 = zext i8 %151 to i64
  %153 = icmp ult i64 0, %152
  br i1 %153, label %.lr.ph38, label %191

.lr.ph38:                                         ; preds = %139
  br label %154

154:                                              ; preds = %.lr.ph38, %183
  %.136 = phi i32 [ %.0147, %.lr.ph38 ], [ %.2, %183 ]
  %.435 = phi i64 [ 0, %.lr.ph38 ], [ %184, %183 ]
  %.01534 = phi i64 [ %147, %.lr.ph38 ], [ %182, %183 ]
  %.12533 = phi i8 [ %.02445, %.lr.ph38 ], [ %.327, %183 ]
  %.12932 = phi i64 [ %.02844, %.lr.ph38 ], [ %.230, %183 ]
  %155 = icmp eq i32 %.136, 7
  br i1 %155, label %156, label %164

156:                                              ; preds = %154
  %157 = getelementptr inbounds nuw i8, ptr %11, i64 %.12932
  store i8 %.12533, ptr %157, align 1
  %158 = add i64 %.12932, 1
  %159 = icmp eq i64 %158, %1
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = call ptr @__acrt_iob_func(i32 noundef 2)
  %162 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %161, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

163:                                              ; preds = %156
  br label %169

164:                                              ; preds = %154
  %165 = add nsw i32 %.136, 1
  %166 = sext i8 %.12533 to i32
  %167 = shl i32 %166, 1
  %168 = trunc i32 %167 to i8
  br label %169

169:                                              ; preds = %164, %163
  %.230 = phi i64 [ %158, %163 ], [ %.12932, %164 ]
  %.226 = phi i8 [ 0, %163 ], [ %168, %164 ]
  %.2 = phi i32 [ 0, %163 ], [ %165, %164 ]
  %170 = load i8, ptr %.13443, align 1
  %171 = zext i8 %170 to i64
  %172 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %171
  %173 = load i32, ptr %172, align 4
  %174 = zext i32 %173 to i64
  %175 = and i64 %174, %.01534
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %169
  %178 = sext i8 %.226 to i32
  %179 = or i32 %178, 1
  %180 = trunc i32 %179 to i8
  br label %181

181:                                              ; preds = %177, %169
  %.327 = phi i8 [ %180, %177 ], [ %.226, %169 ]
  %182 = lshr i64 %.01534, 1
  br label %183

183:                                              ; preds = %181
  %184 = add i64 %.435, 1
  %185 = load i8, ptr %.13443, align 1
  %186 = zext i8 %185 to i64
  %187 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %186
  %188 = load i8, ptr %187, align 1
  %189 = zext i8 %188 to i64
  %190 = icmp ult i64 %184, %189
  br i1 %190, label %154, label %._crit_edge39, !llvm.loop !15

._crit_edge39:                                    ; preds = %183
  %split40 = phi i64 [ %.230, %183 ]
  %split41 = phi i8 [ %.327, %183 ]
  %split42 = phi i32 [ %.2, %183 ]
  br label %191

191:                                              ; preds = %._crit_edge39, %139
  %.129.lcssa = phi i64 [ %split40, %._crit_edge39 ], [ %.02844, %139 ]
  %.125.lcssa = phi i8 [ %split41, %._crit_edge39 ], [ %.02445, %139 ]
  %.1.lcssa = phi i32 [ %split42, %._crit_edge39 ], [ %.0147, %139 ]
  %192 = getelementptr inbounds nuw i8, ptr %.13443, i32 1
  br label %193

193:                                              ; preds = %191
  %194 = add i64 %.1646, 1
  %195 = icmp ult i64 %194, %1
  br i1 %195, label %139, label %._crit_edge50, !llvm.loop !16

._crit_edge50:                                    ; preds = %193
  %split51 = phi i64 [ %.129.lcssa, %193 ]
  %split52 = phi i8 [ %.125.lcssa, %193 ]
  %split53 = phi i32 [ %.1.lcssa, %193 ]
  br label %196

196:                                              ; preds = %._crit_edge50, %137
  %.028.lcssa = phi i64 [ %split51, %._crit_edge50 ], [ 0, %137 ]
  %.024.lcssa = phi i8 [ %split52, %._crit_edge50 ], [ 0, %137 ]
  %.01.lcssa = phi i32 [ %split53, %._crit_edge50 ], [ -1, %137 ]
  %197 = sub nsw i32 7, %.01.lcssa
  %198 = sext i8 %.024.lcssa to i32
  %199 = shl i32 %198, %197
  %200 = trunc i32 %199 to i8
  %201 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %200, ptr %201, align 1
  %202 = getelementptr inbounds [256 x i32], ptr %8, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %202, i8 0, i64 1024, i1 false)
  %203 = getelementptr inbounds [256 x i8], ptr %9, i64 0, i64 0
  br label %204

204:                                              ; preds = %196, %245
  %.062 = phi ptr [ %203, %196 ], [ %206, %245 ]
  %.2761 = phi i64 [ 0, %196 ], [ %246, %245 ]
  %205 = trunc i64 %.2761 to i8
  store i8 %205, ptr %.062, align 1
  %206 = getelementptr inbounds nuw i8, ptr %.062, i32 1
  %207 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.2761
  %208 = load i32, ptr %207, align 4
  %209 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2761
  %210 = load i8, ptr %209, align 1
  %211 = zext i8 %210 to i32
  %212 = or i32 %211, %208
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %244

214:                                              ; preds = %204
  %215 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2761
  %216 = load i8, ptr %215, align 1
  %217 = zext i8 %216 to i32
  %218 = sub nsw i32 %217, 1
  %219 = shl i32 1, %218
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2761
  %222 = load i8, ptr %221, align 1
  %223 = zext i8 %222 to i64
  %224 = icmp ult i64 0, %223
  br i1 %224, label %.lr.ph58, label %242

.lr.ph58:                                         ; preds = %214
  br label %225

225:                                              ; preds = %.lr.ph58, %237
  %.556 = phi i64 [ 0, %.lr.ph58 ], [ %238, %237 ]
  %.11655 = phi i64 [ %220, %.lr.ph58 ], [ %236, %237 ]
  %.01954 = phi i32 [ 0, %.lr.ph58 ], [ %.120, %237 ]
  %226 = mul i32 %.01954, 2
  %227 = add i32 %226, 1
  %228 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.2761
  %229 = load i32, ptr %228, align 4
  %230 = zext i32 %229 to i64
  %231 = and i64 %230, %.11655
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %225
  %234 = add i32 %227, 1
  br label %235

235:                                              ; preds = %233, %225
  %.120 = phi i32 [ %234, %233 ], [ %227, %225 ]
  %236 = lshr i64 %.11655, 1
  br label %237

237:                                              ; preds = %235
  %238 = add i64 %.556, 1
  %239 = load i8, ptr %221, align 1
  %240 = zext i8 %239 to i64
  %241 = icmp ult i64 %238, %240
  br i1 %241, label %225, label %._crit_edge59, !llvm.loop !17

._crit_edge59:                                    ; preds = %237
  %split60 = phi i32 [ %.120, %237 ]
  br label %242

242:                                              ; preds = %._crit_edge59, %214
  %.019.lcssa = phi i32 [ %split60, %._crit_edge59 ], [ 0, %214 ]
  %243 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.2761
  store i32 %.019.lcssa, ptr %243, align 4
  br label %244

244:                                              ; preds = %242, %204
  br label %245

245:                                              ; preds = %244
  %246 = add i64 %.2761, 1
  %247 = icmp ult i64 %246, 256
  br i1 %247, label %204, label %248, !llvm.loop !18

248:                                              ; preds = %245
  br label %249

249:                                              ; preds = %248, %276
  %.663 = phi i64 [ 1, %248 ], [ %277, %276 ]
  %250 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.663
  %251 = load i32, ptr %250, align 4
  %252 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.663
  %253 = load i8, ptr %252, align 1
  br label %254

254:                                              ; preds = %263, %249
  %.38 = phi i64 [ %.663, %249 ], [ %272, %263 ]
  %255 = icmp ne i64 %.38, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %254
  %257 = sub i64 %.38, 1
  %258 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %257
  %259 = load i32, ptr %258, align 4
  %260 = icmp ugt i32 %259, %251
  br label %261

261:                                              ; preds = %256, %254
  %262 = phi i1 [ false, %254 ], [ %260, %256 ]
  br i1 %262, label %263, label %273

263:                                              ; preds = %261
  %264 = sub i64 %.38, 1
  %265 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %264
  %266 = load i32, ptr %265, align 4
  %267 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %266, ptr %267, align 4
  %268 = sub i64 %.38, 1
  %269 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %268
  %270 = load i8, ptr %269, align 1
  %271 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %270, ptr %271, align 1
  %272 = add i64 %.38, -1
  br label %254, !llvm.loop !19

273:                                              ; preds = %261
  %.38.lcssa = phi i64 [ %.38, %261 ]
  %274 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %251, ptr %274, align 4
  %275 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %253, ptr %275, align 1
  br label %276

276:                                              ; preds = %273
  %277 = add i64 %.663, 1
  %278 = icmp ult i64 %277, 256
  br i1 %278, label %249, label %279, !llvm.loop !20

279:                                              ; preds = %276
  %280 = load i32, ptr %8, align 4
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %.lr.ph66, label %288

.lr.ph66:                                         ; preds = %279
  br label %282

282:                                              ; preds = %.lr.ph66, %283
  %.4964 = phi i64 [ 0, %.lr.ph66 ], [ %284, %283 ]
  br label %283

283:                                              ; preds = %282
  %284 = add i64 %.4964, 1
  %285 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %284
  %286 = load i32, ptr %285, align 4
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %282, label %._crit_edge67, !llvm.loop !21

._crit_edge67:                                    ; preds = %283
  %split68 = phi i64 [ %284, %283 ]
  br label %288

288:                                              ; preds = %._crit_edge67, %279
  %.49.lcssa = phi i64 [ %split68, %._crit_edge67 ], [ 0, %279 ]
  %289 = icmp ult i64 0, %1
  br i1 %289, label %.lr.ph76, label %322

.lr.ph76:                                         ; preds = %288
  br label %290

290:                                              ; preds = %.lr.ph76, %320
  %.774 = phi i64 [ %.49.lcssa, %.lr.ph76 ], [ %.9, %320 ]
  %.31373 = phi i64 [ 0, %.lr.ph76 ], [ %.414, %320 ]
  %.21772 = phi i64 [ 128, %.lr.ph76 ], [ %.318, %320 ]
  %.22171 = phi i32 [ 0, %.lr.ph76 ], [ %.423, %320 ]
  %.03170 = phi ptr [ %11, %.lr.ph76 ], [ %.132, %320 ]
  %.23569 = phi ptr [ %0, %.lr.ph76 ], [ %.336, %320 ]
  %291 = mul i32 %.22171, 2
  %292 = add i32 %291, 1
  %293 = load i8, ptr %.03170, align 1
  %294 = zext i8 %293 to i64
  %295 = and i64 %294, %.21772
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %290
  %298 = add i32 %292, 1
  br label %299

299:                                              ; preds = %297, %290
  %.322 = phi i32 [ %298, %297 ], [ %292, %290 ]
  br label %300

300:                                              ; preds = %300, %299
  %.8 = phi i64 [ %.774, %299 ], [ %304, %300 ]
  %301 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %302 = load i32, ptr %301, align 4
  %303 = icmp ult i32 %302, %.322
  %304 = add i64 %.8, 1
  br i1 %303, label %300, label %305, !llvm.loop !22

305:                                              ; preds = %300
  %.8.lcssa = phi i64 [ %.8, %300 ]
  %306 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8.lcssa
  %307 = load i32, ptr %306, align 4
  %308 = icmp eq i32 %.322, %307
  br i1 %308, label %309, label %314

309:                                              ; preds = %305
  %310 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %311 = load i8, ptr %310, align 1
  store i8 %311, ptr %.23569, align 1
  %312 = getelementptr inbounds nuw i8, ptr %.23569, i32 1
  %313 = add i64 %.31373, 1
  br label %314

314:                                              ; preds = %309, %305
  %.336 = phi ptr [ %312, %309 ], [ %.23569, %305 ]
  %.423 = phi i32 [ 0, %309 ], [ %.322, %305 ]
  %.414 = phi i64 [ %313, %309 ], [ %.31373, %305 ]
  %.9 = phi i64 [ %.49.lcssa, %309 ], [ %.8.lcssa, %305 ]
  %315 = icmp ugt i64 %.21772, 1
  br i1 %315, label %316, label %318

316:                                              ; preds = %314
  %317 = lshr i64 %.21772, 1
  br label %320

318:                                              ; preds = %314
  %319 = getelementptr inbounds nuw i8, ptr %.03170, i32 1
  br label %320

320:                                              ; preds = %318, %316
  %.132 = phi ptr [ %.03170, %316 ], [ %319, %318 ]
  %.318 = phi i64 [ %317, %316 ], [ 128, %318 ]
  %321 = icmp ult i64 %.414, %1
  br i1 %321, label %290, label %._crit_edge77, !llvm.loop !23

._crit_edge77:                                    ; preds = %320
  br label %322

322:                                              ; preds = %._crit_edge77, %288
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

12:                                               ; preds = %.lr.ph, %41
  %.013 = phi i32 [ %3, %.lr.ph ], [ %.0, %41 ]
  %factor = mul i32 %.013, 2
  %13 = icmp slt i32 %factor, %2
  br i1 %13, label %14, label %29

14:                                               ; preds = %12
  %15 = sub nsw i32 %factor, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, ptr %1, i64 %16
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr inbounds nuw i64, ptr %0, i64 %18
  %20 = load i64, ptr %19, align 8
  %21 = sext i32 %factor to i64
  %22 = getelementptr inbounds i64, ptr %1, i64 %21
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds nuw i64, ptr %0, i64 %23
  %25 = load i64, ptr %24, align 8
  %26 = icmp ugt i64 %20, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = add nsw i32 %factor, 1
  br label %29

29:                                               ; preds = %27, %14, %12
  %.0 = phi i32 [ %28, %27 ], [ %factor, %14 ], [ %factor, %12 ]
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
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  %.01.lcssa1 = phi i32 [ %.013, %29 ]
  br label %50

41:                                               ; preds = %29
  %42 = sub nsw i32 %.0, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, ptr %1, i64 %43
  %45 = load i64, ptr %44, align 8
  %46 = sub nsw i32 %.013, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, ptr %1, i64 %47
  store i64 %45, ptr %48, align 8
  %49 = icmp sle i32 %.0, %10
  br i1 %49, label %12, label %..loopexit_crit_edge, !llvm.loop !24

..loopexit_crit_edge:                             ; preds = %41
  %split = phi i32 [ %.0, %41 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  %.01.lcssa = phi i32 [ %split, %..loopexit_crit_edge ], [ %3, %4 ]
  br label %50

50:                                               ; preds = %.loopexit, %40
  %.012 = phi i32 [ %.01.lcssa, %.loopexit ], [ %.01.lcssa1, %40 ]
  %51 = sext i32 %9 to i64
  %52 = sub nsw i32 %.012, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, ptr %1, i64 %53
  store i64 %51, ptr %54, align 8
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
  br i1 %3, label %4, label %16

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4, %12
  %.011 = phi i32 [ 1, %4 ], [ %13, %12 ]
  %6 = getelementptr inbounds ptr, ptr %1, i64 1
  %7 = load ptr, ptr %6, align 8
  %8 = call i32 @strcmp(ptr noundef %7, ptr noundef @.str.4) #7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  br label %15

11:                                               ; preds = %5
  br label %12

12:                                               ; preds = %11
  %13 = add nsw i32 %.011, 1
  %14 = icmp slt i32 %13, %0
  br i1 %14, label %5, label %.loopexit, !llvm.loop !25

.loopexit:                                        ; preds = %12
  br label %15

15:                                               ; preds = %.loopexit, %10
  %.1 = phi i8 [ 1, %10 ], [ 0, %.loopexit ]
  br label %16

16:                                               ; preds = %15, %2
  %.0 = phi i8 [ %.1, %15 ], [ 0, %2 ]
  %17 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %18

18:                                               ; preds = %16, %19
  %.122 = phi i32 [ 0, %16 ], [ %20, %19 ]
  call void @compdecomp(ptr noundef %17, i64 noundef 10000000)
  br label %19

19:                                               ; preds = %18
  %20 = add nsw i32 %.122, 1
  %21 = icmp slt i32 %20, 30
  br i1 %21, label %18, label %22, !llvm.loop !26

22:                                               ; preds = %19
  call void @free(ptr noundef %17)
  %23 = icmp ne i8 %.0, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = call ptr @__acrt_iob_func(i32 noundef 1)
  %26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.5, double noundef 0.000000e+00) #7
  br label %30

27:                                               ; preds = %22
  %28 = call ptr @__acrt_iob_func(i32 noundef 1)
  %29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.6, double noundef 0.000000e+00) #7
  br label %30

30:                                               ; preds = %27, %24
  %31 = call ptr @__acrt_iob_func(i32 noundef 1)
  %32 = call i32 @fflush(ptr noundef %31)
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
  %8 = mul nsw i32 %7, 16807
  %9 = mul nsw i32 %4, 2836
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
