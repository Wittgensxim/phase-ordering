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
  br i1 %3, label %.lr.ph, label %11

.lr.ph:                                           ; preds = %1
  br label %4

4:                                                ; preds = %.lr.ph, %9
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %9 ]
  %.011 = phi ptr [ %2, %.lr.ph ], [ %8, %9 ]
  %5 = call i64 @random4()
  %6 = getelementptr inbounds nuw i8, ptr @.str, i64 %5
  %7 = load i8, ptr %6, align 1
  store i8 %7, ptr %.011, align 1
  %8 = getelementptr inbounds nuw i8, ptr %.011, i32 1
  br label %9

9:                                                ; preds = %4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %10 = icmp ult i64 %indvars.iv.next, %0
  br i1 %10, label %4, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %9
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
  %19 = icmp ult i64 0, %1
  br i1 %19, label %.lr.ph, label %29

.lr.ph:                                           ; preds = %2
  br label %20

20:                                               ; preds = %.lr.ph, %27
  %.029 = phi i64 [ 0, %.lr.ph ], [ %28, %27 ]
  %.0337 = phi ptr [ %0, %.lr.ph ], [ %26, %27 ]
  %21 = load i8, ptr %.0337, align 1
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %22
  %24 = load i64, ptr %23, align 8
  %25 = add i64 %24, 1
  store i64 %25, ptr %23, align 8
  %26 = getelementptr inbounds nuw i8, ptr %.0337, i32 1
  br label %27

27:                                               ; preds = %20
  %28 = add nuw i64 %.029, 1
  %exitcond = icmp ne i64 %28, %1
  br i1 %exitcond, label %20, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %27
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
  %39 = add nuw nsw i64 %.1311, 1
  %exitcond78 = icmp ne i64 %39, 256
  br i1 %exitcond78, label %30, label %40, !llvm.loop !10

40:                                               ; preds = %38
  %.010.lcssa = phi i64 [ %.111, %38 ]
  %41 = icmp ugt i64 %.010.lcssa, 0
  br i1 %41, label %.lr.ph14, label %50

.lr.ph14:                                         ; preds = %40
  br label %42

42:                                               ; preds = %.lr.ph14, %47
  %.2412 = phi i64 [ %.010.lcssa, %.lr.ph14 ], [ %48, %47 ]
  %43 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %44 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %45 = trunc i64 %.010.lcssa to i32
  %46 = trunc i64 %.2412 to i32
  call void @heap_adjust(ptr noundef %43, ptr noundef %44, i32 noundef %45, i32 noundef %46)
  br label %47

47:                                               ; preds = %42
  %48 = add i64 %.2412, -1
  %49 = icmp ugt i64 %48, 0
  br i1 %49, label %42, label %._crit_edge15, !llvm.loop !11

._crit_edge15:                                    ; preds = %47
  br label %50

50:                                               ; preds = %._crit_edge15, %40
  %51 = icmp ugt i64 %.010.lcssa, 1
  br i1 %51, label %.lr.ph18, label %85

.lr.ph18:                                         ; preds = %50
  br label %52

52:                                               ; preds = %.lr.ph18, %52
  %.21216 = phi i64 [ %.010.lcssa, %.lr.ph18 ], [ %53, %52 ]
  %53 = add i64 %.21216, -1
  %54 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %55 = load i64, ptr %54, align 16
  %56 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %53
  %57 = load i64, ptr %56, align 8
  %58 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %57, ptr %58, align 16
  %59 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %60 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %61 = trunc i64 %53 to i32
  call void @heap_adjust(ptr noundef %59, ptr noundef %60, i32 noundef %61, i32 noundef 1)
  %62 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %63 = load i64, ptr %62, align 16
  %64 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %63
  %65 = load i64, ptr %64, align 8
  %66 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %55
  %67 = load i64, ptr %66, align 8
  %68 = add i64 %65, %67
  %69 = add i64 256, %53
  %70 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %69
  store i64 %68, ptr %70, align 8
  %71 = add i64 256, %53
  %72 = trunc i64 %71 to i32
  %73 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %55
  store i32 %72, ptr %73, align 4
  %74 = sub i64 -256, %53
  %75 = trunc i64 %74 to i32
  %76 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %77 = load i64, ptr %76, align 16
  %78 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %77
  store i32 %75, ptr %78, align 4
  %79 = add i64 256, %53
  %80 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %79, ptr %80, align 16
  %81 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %82 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %83 = trunc i64 %53 to i32
  call void @heap_adjust(ptr noundef %81, ptr noundef %82, i32 noundef %83, i32 noundef 1)
  %84 = icmp ugt i64 %53, 1
  br i1 %84, label %52, label %._crit_edge19, !llvm.loop !12

._crit_edge19:                                    ; preds = %52
  br label %85

85:                                               ; preds = %._crit_edge19, %50
  %.212.lcssa = phi i64 [ 1, %._crit_edge19 ], [ %.010.lcssa, %50 ]
  %86 = add i64 256, %.212.lcssa
  %87 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %86
  store i32 0, ptr %87, align 4
  br label %88

88:                                               ; preds = %85, %123
  %.03931 = phi i64 [ 0, %85 ], [ %.140, %123 ]
  %.04230 = phi i64 [ 0, %85 ], [ %124, %123 ]
  %.04529 = phi i64 [ 0, %85 ], [ %.146, %123 ]
  %89 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.04230
  %90 = load i64, ptr %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04230
  store i32 0, ptr %93, align 4
  %94 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04230
  store i8 0, ptr %94, align 1
  br label %122

95:                                               ; preds = %88
  %96 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.04230
  %97 = load i32, ptr %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %.lr.ph25, label %111

.lr.ph25:                                         ; preds = %95
  br label %99

99:                                               ; preds = %.lr.ph25, %104
  %.323 = phi i64 [ 0, %.lr.ph25 ], [ %109, %104 ]
  %.0522 = phi i64 [ 1, %.lr.ph25 ], [ %108, %104 ]
  %.03721 = phi i32 [ %97, %.lr.ph25 ], [ %107, %104 ]
  %.04320 = phi i64 [ 0, %.lr.ph25 ], [ %.144, %104 ]
  %100 = icmp slt i32 %.03721, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %99
  %102 = add i64 %.04320, %.0522
  %103 = sub nsw i32 0, %.03721
  br label %104

104:                                              ; preds = %101, %99
  %.144 = phi i64 [ %102, %101 ], [ %.04320, %99 ]
  %.138 = phi i32 [ %103, %101 ], [ %.03721, %99 ]
  %105 = sext i32 %.138 to i64
  %106 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %105
  %107 = load i32, ptr %106, align 4
  %108 = shl i64 %.0522, 1
  %109 = add i64 %.323, 1
  %110 = icmp ne i32 %107, 0
  br i1 %110, label %99, label %._crit_edge26, !llvm.loop !13

._crit_edge26:                                    ; preds = %104
  %split27 = phi i64 [ %.144, %104 ]
  %split28 = phi i64 [ %109, %104 ]
  br label %111

111:                                              ; preds = %._crit_edge26, %95
  %.043.lcssa = phi i64 [ %split27, %._crit_edge26 ], [ 0, %95 ]
  %.3.lcssa = phi i64 [ %split28, %._crit_edge26 ], [ 0, %95 ]
  %112 = trunc i64 %.043.lcssa to i32
  %113 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04230
  store i32 %112, ptr %113, align 4
  %114 = trunc i64 %.3.lcssa to i8
  %115 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04230
  store i8 %114, ptr %115, align 1
  %116 = icmp ugt i64 %.043.lcssa, %.04529
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %118

118:                                              ; preds = %117, %111
  %.247 = phi i64 [ %.043.lcssa, %117 ], [ %.04529, %111 ]
  %119 = icmp ugt i64 %.3.lcssa, %.03931
  br i1 %119, label %120, label %121

120:                                              ; preds = %118
  br label %121

121:                                              ; preds = %120, %118
  %.241 = phi i64 [ %.3.lcssa, %120 ], [ %.03931, %118 ]
  br label %122

122:                                              ; preds = %121, %92
  %.146 = phi i64 [ %.247, %121 ], [ %.04529, %92 ]
  %.140 = phi i64 [ %.241, %121 ], [ %.03931, %92 ]
  br label %123

123:                                              ; preds = %122
  %124 = add nuw nsw i64 %.04230, 1
  %exitcond79 = icmp ne i64 %124, 256
  br i1 %exitcond79, label %88, label %125, !llvm.loop !14

125:                                              ; preds = %123
  %.045.lcssa = phi i64 [ %.146, %123 ]
  %.039.lcssa = phi i64 [ %.140, %123 ]
  %126 = icmp ugt i64 %.039.lcssa, 32
  br i1 %126, label %127, label %130

127:                                              ; preds = %125
  %128 = call ptr @__acrt_iob_func(i32 noundef 2)
  %129 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %128, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

130:                                              ; preds = %125
  %131 = icmp eq i64 %.045.lcssa, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %130
  %133 = call ptr @__acrt_iob_func(i32 noundef 2)
  %134 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %133, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

135:                                              ; preds = %130
  %136 = icmp ult i64 0, %1
  br i1 %136, label %.lr.ph49, label %193

.lr.ph49:                                         ; preds = %135
  br label %137

137:                                              ; preds = %.lr.ph49, %191
  %.0147 = phi i32 [ -1, %.lr.ph49 ], [ %.1.lcssa, %191 ]
  %.1646 = phi i64 [ 0, %.lr.ph49 ], [ %192, %191 ]
  %.02445 = phi i8 [ 0, %.lr.ph49 ], [ %.125.lcssa, %191 ]
  %.02844 = phi i64 [ 0, %.lr.ph49 ], [ %.129.lcssa, %191 ]
  %.13443 = phi ptr [ %0, %.lr.ph49 ], [ %190, %191 ]
  %138 = load i8, ptr %.13443, align 1
  %139 = zext i8 %138 to i64
  %140 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %139
  %141 = load i8, ptr %140, align 1
  %142 = zext i8 %141 to i32
  %143 = sub nsw i32 %142, 1
  %144 = shl i32 1, %143
  %145 = sext i32 %144 to i64
  %146 = load i8, ptr %.13443, align 1
  %147 = zext i8 %146 to i64
  %148 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %147
  %149 = load i8, ptr %148, align 1
  %150 = zext i8 %149 to i64
  %151 = icmp ult i64 0, %150
  br i1 %151, label %.lr.ph38, label %189

.lr.ph38:                                         ; preds = %137
  br label %152

152:                                              ; preds = %.lr.ph38, %181
  %.136 = phi i32 [ %.0147, %.lr.ph38 ], [ %.2, %181 ]
  %.435 = phi i64 [ 0, %.lr.ph38 ], [ %182, %181 ]
  %.01534 = phi i64 [ %145, %.lr.ph38 ], [ %180, %181 ]
  %.12533 = phi i8 [ %.02445, %.lr.ph38 ], [ %.327, %181 ]
  %.12932 = phi i64 [ %.02844, %.lr.ph38 ], [ %.230, %181 ]
  %153 = icmp eq i32 %.136, 7
  br i1 %153, label %154, label %162

154:                                              ; preds = %152
  %155 = getelementptr inbounds nuw i8, ptr %11, i64 %.12932
  store i8 %.12533, ptr %155, align 1
  %156 = add i64 %.12932, 1
  %157 = icmp eq i64 %156, %1
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = call ptr @__acrt_iob_func(i32 noundef 2)
  %160 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %159, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

161:                                              ; preds = %154
  br label %167

162:                                              ; preds = %152
  %163 = add nsw i32 %.136, 1
  %164 = sext i8 %.12533 to i32
  %165 = shl i32 %164, 1
  %166 = trunc i32 %165 to i8
  br label %167

167:                                              ; preds = %162, %161
  %.230 = phi i64 [ %156, %161 ], [ %.12932, %162 ]
  %.226 = phi i8 [ 0, %161 ], [ %166, %162 ]
  %.2 = phi i32 [ 0, %161 ], [ %163, %162 ]
  %168 = load i8, ptr %.13443, align 1
  %169 = zext i8 %168 to i64
  %170 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %169
  %171 = load i32, ptr %170, align 4
  %172 = zext i32 %171 to i64
  %173 = and i64 %172, %.01534
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %167
  %176 = sext i8 %.226 to i32
  %177 = or i32 %176, 1
  %178 = trunc i32 %177 to i8
  br label %179

179:                                              ; preds = %175, %167
  %.327 = phi i8 [ %178, %175 ], [ %.226, %167 ]
  %180 = lshr i64 %.01534, 1
  br label %181

181:                                              ; preds = %179
  %182 = add nuw nsw i64 %.435, 1
  %183 = load i8, ptr %.13443, align 1
  %184 = zext i8 %183 to i64
  %185 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %184
  %186 = load i8, ptr %185, align 1
  %187 = zext i8 %186 to i64
  %188 = icmp samesign ult i64 %182, %187
  br i1 %188, label %152, label %._crit_edge39, !llvm.loop !15

._crit_edge39:                                    ; preds = %181
  %split40 = phi i64 [ %.230, %181 ]
  %split41 = phi i8 [ %.327, %181 ]
  %split42 = phi i32 [ %.2, %181 ]
  br label %189

189:                                              ; preds = %._crit_edge39, %137
  %.129.lcssa = phi i64 [ %split40, %._crit_edge39 ], [ %.02844, %137 ]
  %.125.lcssa = phi i8 [ %split41, %._crit_edge39 ], [ %.02445, %137 ]
  %.1.lcssa = phi i32 [ %split42, %._crit_edge39 ], [ %.0147, %137 ]
  %190 = getelementptr inbounds nuw i8, ptr %.13443, i32 1
  br label %191

191:                                              ; preds = %189
  %192 = add nuw i64 %.1646, 1
  %exitcond80 = icmp ne i64 %192, %1
  br i1 %exitcond80, label %137, label %._crit_edge50, !llvm.loop !16

._crit_edge50:                                    ; preds = %191
  %split51 = phi i64 [ %.129.lcssa, %191 ]
  %split52 = phi i8 [ %.125.lcssa, %191 ]
  %split53 = phi i32 [ %.1.lcssa, %191 ]
  br label %193

193:                                              ; preds = %._crit_edge50, %135
  %.028.lcssa = phi i64 [ %split51, %._crit_edge50 ], [ 0, %135 ]
  %.024.lcssa = phi i8 [ %split52, %._crit_edge50 ], [ 0, %135 ]
  %.01.lcssa = phi i32 [ %split53, %._crit_edge50 ], [ -1, %135 ]
  %194 = sub nsw i32 7, %.01.lcssa
  %195 = sext i8 %.024.lcssa to i32
  %196 = shl i32 %195, %194
  %197 = trunc i32 %196 to i8
  %198 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %197, ptr %198, align 1
  %199 = getelementptr inbounds [256 x i32], ptr %8, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %199, i8 0, i64 1024, i1 false)
  %200 = getelementptr inbounds [256 x i8], ptr %9, i64 0, i64 0
  br label %201

201:                                              ; preds = %193, %242
  %.062 = phi ptr [ %200, %193 ], [ %203, %242 ]
  %.2761 = phi i64 [ 0, %193 ], [ %243, %242 ]
  %202 = trunc i64 %.2761 to i8
  store i8 %202, ptr %.062, align 1
  %203 = getelementptr inbounds nuw i8, ptr %.062, i32 1
  %204 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.2761
  %205 = load i32, ptr %204, align 4
  %206 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2761
  %207 = load i8, ptr %206, align 1
  %208 = zext i8 %207 to i32
  %209 = or i32 %205, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %241

211:                                              ; preds = %201
  %212 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2761
  %213 = load i8, ptr %212, align 1
  %214 = zext i8 %213 to i32
  %215 = sub nsw i32 %214, 1
  %216 = shl i32 1, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2761
  %219 = load i8, ptr %218, align 1
  %220 = zext i8 %219 to i64
  %221 = icmp ult i64 0, %220
  br i1 %221, label %.lr.ph58, label %239

.lr.ph58:                                         ; preds = %211
  br label %222

222:                                              ; preds = %.lr.ph58, %234
  %.556 = phi i64 [ 0, %.lr.ph58 ], [ %235, %234 ]
  %.11655 = phi i64 [ %217, %.lr.ph58 ], [ %233, %234 ]
  %.01954 = phi i32 [ 0, %.lr.ph58 ], [ %.120, %234 ]
  %223 = mul i32 %.01954, 2
  %224 = add i32 %223, 1
  %225 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.2761
  %226 = load i32, ptr %225, align 4
  %227 = zext i32 %226 to i64
  %228 = and i64 %227, %.11655
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %222
  %231 = add i32 %224, 1
  br label %232

232:                                              ; preds = %230, %222
  %.120 = phi i32 [ %231, %230 ], [ %224, %222 ]
  %233 = lshr i64 %.11655, 1
  br label %234

234:                                              ; preds = %232
  %235 = add nuw nsw i64 %.556, 1
  %236 = load i8, ptr %218, align 1
  %237 = zext i8 %236 to i64
  %238 = icmp samesign ult i64 %235, %237
  br i1 %238, label %222, label %._crit_edge59, !llvm.loop !17

._crit_edge59:                                    ; preds = %234
  %split60 = phi i32 [ %.120, %234 ]
  br label %239

239:                                              ; preds = %._crit_edge59, %211
  %.019.lcssa = phi i32 [ %split60, %._crit_edge59 ], [ 0, %211 ]
  %240 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.2761
  store i32 %.019.lcssa, ptr %240, align 4
  br label %241

241:                                              ; preds = %239, %201
  br label %242

242:                                              ; preds = %241
  %243 = add nuw nsw i64 %.2761, 1
  %exitcond81 = icmp ne i64 %243, 256
  br i1 %exitcond81, label %201, label %244, !llvm.loop !18

244:                                              ; preds = %242
  br label %245

245:                                              ; preds = %244, %272
  %.663 = phi i64 [ 1, %244 ], [ %273, %272 ]
  %246 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.663
  %247 = load i32, ptr %246, align 4
  %248 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.663
  %249 = load i8, ptr %248, align 1
  br label %250

250:                                              ; preds = %259, %245
  %.38 = phi i64 [ %.663, %245 ], [ %268, %259 ]
  %251 = icmp ne i64 %.38, 0
  br i1 %251, label %252, label %257

252:                                              ; preds = %250
  %253 = sub nuw i64 %.38, 1
  %254 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %253
  %255 = load i32, ptr %254, align 4
  %256 = icmp ugt i32 %255, %247
  br label %257

257:                                              ; preds = %252, %250
  %258 = phi i1 [ false, %250 ], [ %256, %252 ]
  br i1 %258, label %259, label %269

259:                                              ; preds = %257
  %260 = sub i64 %.38, 1
  %261 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %260
  %262 = load i32, ptr %261, align 4
  %263 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %262, ptr %263, align 4
  %264 = sub i64 %.38, 1
  %265 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %264
  %266 = load i8, ptr %265, align 1
  %267 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %266, ptr %267, align 1
  %268 = add i64 %.38, -1
  br label %250, !llvm.loop !19

269:                                              ; preds = %257
  %.38.lcssa = phi i64 [ %.38, %257 ]
  %270 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %247, ptr %270, align 4
  %271 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %249, ptr %271, align 1
  br label %272

272:                                              ; preds = %269
  %273 = add nuw nsw i64 %.663, 1
  %exitcond82 = icmp ne i64 %273, 256
  br i1 %exitcond82, label %245, label %274, !llvm.loop !20

274:                                              ; preds = %272
  %275 = load i32, ptr %8, align 4
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %.lr.ph66, label %283

.lr.ph66:                                         ; preds = %274
  br label %277

277:                                              ; preds = %.lr.ph66, %278
  %.4964 = phi i64 [ 0, %.lr.ph66 ], [ %279, %278 ]
  br label %278

278:                                              ; preds = %277
  %279 = add i64 %.4964, 1
  %280 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %279
  %281 = load i32, ptr %280, align 4
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %277, label %._crit_edge67, !llvm.loop !21

._crit_edge67:                                    ; preds = %278
  %split68 = phi i64 [ %279, %278 ]
  br label %283

283:                                              ; preds = %._crit_edge67, %274
  %.49.lcssa = phi i64 [ %split68, %._crit_edge67 ], [ 0, %274 ]
  %284 = icmp ult i64 0, %1
  br i1 %284, label %.lr.ph76, label %317

.lr.ph76:                                         ; preds = %283
  br label %285

285:                                              ; preds = %.lr.ph76, %315
  %.774 = phi i64 [ %.49.lcssa, %.lr.ph76 ], [ %.9, %315 ]
  %.31373 = phi i64 [ 0, %.lr.ph76 ], [ %.414, %315 ]
  %.21772 = phi i64 [ 128, %.lr.ph76 ], [ %.318, %315 ]
  %.22171 = phi i32 [ 0, %.lr.ph76 ], [ %.423, %315 ]
  %.03170 = phi ptr [ %11, %.lr.ph76 ], [ %.132, %315 ]
  %.23569 = phi ptr [ %0, %.lr.ph76 ], [ %.336, %315 ]
  %286 = mul i32 %.22171, 2
  %287 = add i32 %286, 1
  %288 = load i8, ptr %.03170, align 1
  %289 = zext i8 %288 to i64
  %290 = and i64 %289, %.21772
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %285
  %293 = add i32 %287, 1
  br label %294

294:                                              ; preds = %292, %285
  %.322 = phi i32 [ %293, %292 ], [ %287, %285 ]
  br label %295

295:                                              ; preds = %295, %294
  %.8 = phi i64 [ %.774, %294 ], [ %299, %295 ]
  %296 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %297 = load i32, ptr %296, align 4
  %298 = icmp ult i32 %297, %.322
  %299 = add i64 %.8, 1
  br i1 %298, label %295, label %300, !llvm.loop !22

300:                                              ; preds = %295
  %.8.lcssa = phi i64 [ %.8, %295 ]
  %301 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8.lcssa
  %302 = load i32, ptr %301, align 4
  %303 = icmp eq i32 %.322, %302
  br i1 %303, label %304, label %309

304:                                              ; preds = %300
  %305 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %306 = load i8, ptr %305, align 1
  store i8 %306, ptr %.23569, align 1
  %307 = getelementptr inbounds nuw i8, ptr %.23569, i32 1
  %308 = add i64 %.31373, 1
  br label %309

309:                                              ; preds = %304, %300
  %.336 = phi ptr [ %307, %304 ], [ %.23569, %300 ]
  %.423 = phi i32 [ 0, %304 ], [ %.322, %300 ]
  %.414 = phi i64 [ %308, %304 ], [ %.31373, %300 ]
  %.9 = phi i64 [ %.49.lcssa, %304 ], [ %.8.lcssa, %300 ]
  %310 = icmp ugt i64 %.21772, 1
  br i1 %310, label %311, label %313

311:                                              ; preds = %309
  %312 = lshr i64 %.21772, 1
  br label %315

313:                                              ; preds = %309
  %314 = getelementptr inbounds nuw i8, ptr %.03170, i32 1
  br label %315

315:                                              ; preds = %313, %311
  %.132 = phi ptr [ %.03170, %311 ], [ %314, %313 ]
  %.318 = phi i64 [ %312, %311 ], [ 128, %313 ]
  %316 = icmp ult i64 %.414, %1
  br i1 %316, label %285, label %._crit_edge77, !llvm.loop !23

._crit_edge77:                                    ; preds = %315
  br label %317

317:                                              ; preds = %._crit_edge77, %283
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
  %.011 = phi i32 [ 1, %4 ], [ %13, %12 ]
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
  %13 = add nuw nsw i32 %.011, 1
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
  %.122 = phi i32 [ 0, %15 ], [ %19, %18 ]
  call void @compdecomp(ptr noundef %16, i64 noundef 10000000)
  br label %18

18:                                               ; preds = %17
  %19 = add nuw nsw i32 %.122, 1
  %exitcond3 = icmp ne i32 %19, 30
  br i1 %exitcond3, label %17, label %20, !llvm.loop !26

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
