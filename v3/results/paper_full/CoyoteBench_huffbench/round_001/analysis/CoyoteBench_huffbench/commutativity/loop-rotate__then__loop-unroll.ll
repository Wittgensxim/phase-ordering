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
  %2 = call ptr @malloc(i64 noundef %0) #7
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
  %11 = call ptr @malloc(i64 noundef %10) #7
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
  br i1 %19, label %.lr.ph, label %44

.lr.ph:                                           ; preds = %2
  %20 = add i64 %1, -1
  %xtraiter = and i64 %1, 1
  %21 = icmp ult i64 %20, 1
  br i1 %21, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = sub i64 %1, %xtraiter
  br label %22

22:                                               ; preds = %36, %.lr.ph.new
  %.029 = phi i64 [ 0, %.lr.ph.new ], [ %37, %36 ]
  %.0337 = phi ptr [ %0, %.lr.ph.new ], [ %35, %36 ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %36 ]
  %23 = load i8, ptr %.0337, align 1
  %24 = zext i8 %23 to i64
  %25 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %24
  %26 = load i64, ptr %25, align 8
  %27 = add i64 %26, 1
  store i64 %27, ptr %25, align 8
  %28 = getelementptr inbounds nuw i8, ptr %.0337, i32 1
  br label %29

29:                                               ; preds = %22
  %30 = load i8, ptr %28, align 1
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %31
  %33 = load i64, ptr %32, align 8
  %34 = add i64 %33, 1
  store i64 %34, ptr %32, align 8
  %35 = getelementptr inbounds nuw i8, ptr %28, i32 1
  br label %36

36:                                               ; preds = %29
  %37 = add i64 %.029, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp ne i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %22, label %._crit_edge.unr-lcssa, !llvm.loop !9

._crit_edge.unr-lcssa:                            ; preds = %36
  %.0337.unr = phi ptr [ %35, %36 ]
  %lcmp.mod = icmp ne i64 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.0337.epil.init = phi ptr [ %0, %.lr.ph ], [ %.0337.unr, %._crit_edge.unr-lcssa ]
  %lcmp.mod78 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod78)
  br label %38

38:                                               ; preds = %.epil.preheader
  %39 = load i8, ptr %.0337.epil.init, align 1
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %40
  %42 = load i64, ptr %41, align 8
  %43 = add i64 %42, 1
  store i64 %43, ptr %41, align 8
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %38
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  br label %44

44:                                               ; preds = %._crit_edge, %2
  br label %45

45:                                               ; preds = %62, %44
  %.1311 = phi i64 [ 0, %44 ], [ %63, %62 ]
  %.01010 = phi i64 [ 0, %44 ], [ %.111.1, %62 ]
  %46 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.1311
  %47 = load i64, ptr %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.01010
  store i64 %.1311, ptr %50, align 8
  %51 = add i64 %.01010, 1
  br label %52

52:                                               ; preds = %49, %45
  %.111 = phi i64 [ %51, %49 ], [ %.01010, %45 ]
  br label %53

53:                                               ; preds = %52
  %54 = add nuw nsw i64 %.1311, 1
  %55 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %54
  %56 = load i64, ptr %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.111
  store i64 %54, ptr %59, align 8
  %60 = add i64 %.111, 1
  br label %61

61:                                               ; preds = %58, %53
  %.111.1 = phi i64 [ %60, %58 ], [ %.111, %53 ]
  br label %62

62:                                               ; preds = %61
  %63 = add nuw nsw i64 %.1311, 2
  %64 = icmp samesign ult i64 %63, 256
  br i1 %64, label %45, label %65, !llvm.loop !10

65:                                               ; preds = %62
  %.010.lcssa = phi i64 [ %.111.1, %62 ]
  %66 = icmp ugt i64 %.010.lcssa, 0
  br i1 %66, label %.lr.ph14, label %75

.lr.ph14:                                         ; preds = %65
  br label %67

67:                                               ; preds = %.lr.ph14, %72
  %.2412 = phi i64 [ %.010.lcssa, %.lr.ph14 ], [ %73, %72 ]
  %68 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %69 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %70 = trunc i64 %.010.lcssa to i32
  %71 = trunc i64 %.2412 to i32
  call void @heap_adjust(ptr noundef %68, ptr noundef %69, i32 noundef %70, i32 noundef %71)
  br label %72

72:                                               ; preds = %67
  %73 = add i64 %.2412, -1
  %74 = icmp ugt i64 %73, 0
  br i1 %74, label %67, label %._crit_edge15, !llvm.loop !11

._crit_edge15:                                    ; preds = %72
  br label %75

75:                                               ; preds = %._crit_edge15, %65
  %76 = icmp ugt i64 %.010.lcssa, 1
  br i1 %76, label %.lr.ph18, label %110

.lr.ph18:                                         ; preds = %75
  br label %77

77:                                               ; preds = %.lr.ph18, %77
  %.21216 = phi i64 [ %.010.lcssa, %.lr.ph18 ], [ %78, %77 ]
  %78 = add i64 %.21216, -1
  %79 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %80 = load i64, ptr %79, align 16
  %81 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %78
  %82 = load i64, ptr %81, align 8
  %83 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %82, ptr %83, align 16
  %84 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %85 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %86 = trunc i64 %78 to i32
  call void @heap_adjust(ptr noundef %84, ptr noundef %85, i32 noundef %86, i32 noundef 1)
  %87 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %88 = load i64, ptr %87, align 16
  %89 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %88
  %90 = load i64, ptr %89, align 8
  %91 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %80
  %92 = load i64, ptr %91, align 8
  %93 = add i64 %90, %92
  %94 = add i64 256, %78
  %95 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %94
  store i64 %93, ptr %95, align 8
  %96 = add i64 256, %78
  %97 = trunc i64 %96 to i32
  %98 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %80
  store i32 %97, ptr %98, align 4
  %99 = sub i64 -256, %78
  %100 = trunc i64 %99 to i32
  %101 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %102 = load i64, ptr %101, align 16
  %103 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %102
  store i32 %100, ptr %103, align 4
  %104 = add i64 256, %78
  %105 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %104, ptr %105, align 16
  %106 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %107 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %108 = trunc i64 %78 to i32
  call void @heap_adjust(ptr noundef %106, ptr noundef %107, i32 noundef %108, i32 noundef 1)
  %109 = icmp ugt i64 %78, 1
  br i1 %109, label %77, label %._crit_edge19, !llvm.loop !12

._crit_edge19:                                    ; preds = %77
  %split = phi i64 [ %78, %77 ]
  br label %110

110:                                              ; preds = %._crit_edge19, %75
  %.212.lcssa = phi i64 [ %split, %._crit_edge19 ], [ %.010.lcssa, %75 ]
  %111 = add i64 256, %.212.lcssa
  %112 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %111
  store i32 0, ptr %112, align 4
  br label %113

113:                                              ; preds = %110, %148
  %.03931 = phi i64 [ 0, %110 ], [ %.140, %148 ]
  %.04230 = phi i64 [ 0, %110 ], [ %149, %148 ]
  %.04529 = phi i64 [ 0, %110 ], [ %.146, %148 ]
  %114 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.04230
  %115 = load i64, ptr %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04230
  store i32 0, ptr %118, align 4
  %119 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04230
  store i8 0, ptr %119, align 1
  br label %147

120:                                              ; preds = %113
  %121 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.04230
  %122 = load i32, ptr %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %.lr.ph25, label %136

.lr.ph25:                                         ; preds = %120
  br label %124

124:                                              ; preds = %.lr.ph25, %129
  %.323 = phi i64 [ 0, %.lr.ph25 ], [ %134, %129 ]
  %.0522 = phi i64 [ 1, %.lr.ph25 ], [ %133, %129 ]
  %.03721 = phi i32 [ %122, %.lr.ph25 ], [ %132, %129 ]
  %.04320 = phi i64 [ 0, %.lr.ph25 ], [ %.144, %129 ]
  %125 = icmp slt i32 %.03721, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %124
  %127 = add i64 %.04320, %.0522
  %128 = sub nsw i32 0, %.03721
  br label %129

129:                                              ; preds = %126, %124
  %.144 = phi i64 [ %127, %126 ], [ %.04320, %124 ]
  %.138 = phi i32 [ %128, %126 ], [ %.03721, %124 ]
  %130 = sext i32 %.138 to i64
  %131 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %130
  %132 = load i32, ptr %131, align 4
  %133 = shl i64 %.0522, 1
  %134 = add i64 %.323, 1
  %135 = icmp ne i32 %132, 0
  br i1 %135, label %124, label %._crit_edge26, !llvm.loop !13

._crit_edge26:                                    ; preds = %129
  %split27 = phi i64 [ %.144, %129 ]
  %split28 = phi i64 [ %134, %129 ]
  br label %136

136:                                              ; preds = %._crit_edge26, %120
  %.043.lcssa = phi i64 [ %split27, %._crit_edge26 ], [ 0, %120 ]
  %.3.lcssa = phi i64 [ %split28, %._crit_edge26 ], [ 0, %120 ]
  %137 = trunc i64 %.043.lcssa to i32
  %138 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04230
  store i32 %137, ptr %138, align 4
  %139 = trunc i64 %.3.lcssa to i8
  %140 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04230
  store i8 %139, ptr %140, align 1
  %141 = icmp ugt i64 %.043.lcssa, %.04529
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  br label %143

143:                                              ; preds = %142, %136
  %.247 = phi i64 [ %.043.lcssa, %142 ], [ %.04529, %136 ]
  %144 = icmp ugt i64 %.3.lcssa, %.03931
  br i1 %144, label %145, label %146

145:                                              ; preds = %143
  br label %146

146:                                              ; preds = %145, %143
  %.241 = phi i64 [ %.3.lcssa, %145 ], [ %.03931, %143 ]
  br label %147

147:                                              ; preds = %146, %117
  %.146 = phi i64 [ %.247, %146 ], [ %.04529, %117 ]
  %.140 = phi i64 [ %.241, %146 ], [ %.03931, %117 ]
  br label %148

148:                                              ; preds = %147
  %149 = add i64 %.04230, 1
  %150 = icmp ult i64 %149, 256
  br i1 %150, label %113, label %151, !llvm.loop !14

151:                                              ; preds = %148
  %.045.lcssa = phi i64 [ %.146, %148 ]
  %.039.lcssa = phi i64 [ %.140, %148 ]
  %152 = icmp ugt i64 %.039.lcssa, 32
  br i1 %152, label %153, label %156

153:                                              ; preds = %151
  %154 = call ptr @__acrt_iob_func(i32 noundef 2)
  %155 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %154, ptr noundef @.str.1) #8
  call void @exit(i32 noundef 1) #9
  unreachable

156:                                              ; preds = %151
  %157 = icmp eq i64 %.045.lcssa, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %156
  %159 = call ptr @__acrt_iob_func(i32 noundef 2)
  %160 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %159, ptr noundef @.str.2) #8
  call void @exit(i32 noundef 1) #9
  unreachable

161:                                              ; preds = %156
  %162 = icmp ult i64 0, %1
  br i1 %162, label %.lr.ph49, label %220

.lr.ph49:                                         ; preds = %161
  br label %163

163:                                              ; preds = %.lr.ph49, %217
  %.0147 = phi i32 [ -1, %.lr.ph49 ], [ %.1.lcssa, %217 ]
  %.1646 = phi i64 [ 0, %.lr.ph49 ], [ %218, %217 ]
  %.02445 = phi i8 [ 0, %.lr.ph49 ], [ %.125.lcssa, %217 ]
  %.02844 = phi i64 [ 0, %.lr.ph49 ], [ %.129.lcssa, %217 ]
  %.13443 = phi ptr [ %0, %.lr.ph49 ], [ %216, %217 ]
  %164 = load i8, ptr %.13443, align 1
  %165 = zext i8 %164 to i64
  %166 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %165
  %167 = load i8, ptr %166, align 1
  %168 = zext i8 %167 to i32
  %169 = sub nsw i32 %168, 1
  %170 = shl i32 1, %169
  %171 = sext i32 %170 to i64
  %172 = load i8, ptr %.13443, align 1
  %173 = zext i8 %172 to i64
  %174 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %173
  %175 = load i8, ptr %174, align 1
  %176 = zext i8 %175 to i64
  %177 = icmp ult i64 0, %176
  br i1 %177, label %.lr.ph38, label %215

.lr.ph38:                                         ; preds = %163
  br label %178

178:                                              ; preds = %.lr.ph38, %207
  %.136 = phi i32 [ %.0147, %.lr.ph38 ], [ %.2, %207 ]
  %.435 = phi i64 [ 0, %.lr.ph38 ], [ %208, %207 ]
  %.01534 = phi i64 [ %171, %.lr.ph38 ], [ %206, %207 ]
  %.12533 = phi i8 [ %.02445, %.lr.ph38 ], [ %.327, %207 ]
  %.12932 = phi i64 [ %.02844, %.lr.ph38 ], [ %.230, %207 ]
  %179 = icmp eq i32 %.136, 7
  br i1 %179, label %180, label %188

180:                                              ; preds = %178
  %181 = getelementptr inbounds nuw i8, ptr %11, i64 %.12932
  store i8 %.12533, ptr %181, align 1
  %182 = add i64 %.12932, 1
  %183 = icmp eq i64 %182, %1
  br i1 %183, label %184, label %187

184:                                              ; preds = %180
  %185 = call ptr @__acrt_iob_func(i32 noundef 2)
  %186 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %185, ptr noundef @.str.3) #8
  call void @exit(i32 noundef 1) #9
  unreachable

187:                                              ; preds = %180
  br label %193

188:                                              ; preds = %178
  %189 = add nsw i32 %.136, 1
  %190 = sext i8 %.12533 to i32
  %191 = shl i32 %190, 1
  %192 = trunc i32 %191 to i8
  br label %193

193:                                              ; preds = %188, %187
  %.230 = phi i64 [ %182, %187 ], [ %.12932, %188 ]
  %.226 = phi i8 [ 0, %187 ], [ %192, %188 ]
  %.2 = phi i32 [ 0, %187 ], [ %189, %188 ]
  %194 = load i8, ptr %.13443, align 1
  %195 = zext i8 %194 to i64
  %196 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %195
  %197 = load i32, ptr %196, align 4
  %198 = zext i32 %197 to i64
  %199 = and i64 %198, %.01534
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %193
  %202 = sext i8 %.226 to i32
  %203 = or i32 %202, 1
  %204 = trunc i32 %203 to i8
  br label %205

205:                                              ; preds = %201, %193
  %.327 = phi i8 [ %204, %201 ], [ %.226, %193 ]
  %206 = lshr i64 %.01534, 1
  br label %207

207:                                              ; preds = %205
  %208 = add i64 %.435, 1
  %209 = load i8, ptr %.13443, align 1
  %210 = zext i8 %209 to i64
  %211 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %210
  %212 = load i8, ptr %211, align 1
  %213 = zext i8 %212 to i64
  %214 = icmp ult i64 %208, %213
  br i1 %214, label %178, label %._crit_edge39, !llvm.loop !15

._crit_edge39:                                    ; preds = %207
  %split40 = phi i64 [ %.230, %207 ]
  %split41 = phi i8 [ %.327, %207 ]
  %split42 = phi i32 [ %.2, %207 ]
  br label %215

215:                                              ; preds = %._crit_edge39, %163
  %.129.lcssa = phi i64 [ %split40, %._crit_edge39 ], [ %.02844, %163 ]
  %.125.lcssa = phi i8 [ %split41, %._crit_edge39 ], [ %.02445, %163 ]
  %.1.lcssa = phi i32 [ %split42, %._crit_edge39 ], [ %.0147, %163 ]
  %216 = getelementptr inbounds nuw i8, ptr %.13443, i32 1
  br label %217

217:                                              ; preds = %215
  %218 = add i64 %.1646, 1
  %219 = icmp ult i64 %218, %1
  br i1 %219, label %163, label %._crit_edge50, !llvm.loop !16

._crit_edge50:                                    ; preds = %217
  %split51 = phi i64 [ %.129.lcssa, %217 ]
  %split52 = phi i8 [ %.125.lcssa, %217 ]
  %split53 = phi i32 [ %.1.lcssa, %217 ]
  br label %220

220:                                              ; preds = %._crit_edge50, %161
  %.028.lcssa = phi i64 [ %split51, %._crit_edge50 ], [ 0, %161 ]
  %.024.lcssa = phi i8 [ %split52, %._crit_edge50 ], [ 0, %161 ]
  %.01.lcssa = phi i32 [ %split53, %._crit_edge50 ], [ -1, %161 ]
  %221 = sub nsw i32 7, %.01.lcssa
  %222 = sext i8 %.024.lcssa to i32
  %223 = shl i32 %222, %221
  %224 = trunc i32 %223 to i8
  %225 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %224, ptr %225, align 1
  %226 = getelementptr inbounds [256 x i32], ptr %8, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %226, i8 0, i64 1024, i1 false)
  %227 = getelementptr inbounds [256 x i8], ptr %9, i64 0, i64 0
  br label %228

228:                                              ; preds = %220, %269
  %.062 = phi ptr [ %227, %220 ], [ %230, %269 ]
  %.2761 = phi i64 [ 0, %220 ], [ %270, %269 ]
  %229 = trunc i64 %.2761 to i8
  store i8 %229, ptr %.062, align 1
  %230 = getelementptr inbounds nuw i8, ptr %.062, i32 1
  %231 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.2761
  %232 = load i32, ptr %231, align 4
  %233 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2761
  %234 = load i8, ptr %233, align 1
  %235 = zext i8 %234 to i32
  %236 = or i32 %232, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %268

238:                                              ; preds = %228
  %239 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2761
  %240 = load i8, ptr %239, align 1
  %241 = zext i8 %240 to i32
  %242 = sub nsw i32 %241, 1
  %243 = shl i32 1, %242
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2761
  %246 = load i8, ptr %245, align 1
  %247 = zext i8 %246 to i64
  %248 = icmp ult i64 0, %247
  br i1 %248, label %.lr.ph58, label %266

.lr.ph58:                                         ; preds = %238
  br label %249

249:                                              ; preds = %.lr.ph58, %261
  %.556 = phi i64 [ 0, %.lr.ph58 ], [ %262, %261 ]
  %.11655 = phi i64 [ %244, %.lr.ph58 ], [ %260, %261 ]
  %.01954 = phi i32 [ 0, %.lr.ph58 ], [ %.120, %261 ]
  %250 = mul i32 %.01954, 2
  %251 = add i32 %250, 1
  %252 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.2761
  %253 = load i32, ptr %252, align 4
  %254 = zext i32 %253 to i64
  %255 = and i64 %254, %.11655
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %249
  %258 = add i32 %251, 1
  br label %259

259:                                              ; preds = %257, %249
  %.120 = phi i32 [ %258, %257 ], [ %251, %249 ]
  %260 = lshr i64 %.11655, 1
  br label %261

261:                                              ; preds = %259
  %262 = add i64 %.556, 1
  %263 = load i8, ptr %245, align 1
  %264 = zext i8 %263 to i64
  %265 = icmp ult i64 %262, %264
  br i1 %265, label %249, label %._crit_edge59, !llvm.loop !17

._crit_edge59:                                    ; preds = %261
  %split60 = phi i32 [ %.120, %261 ]
  br label %266

266:                                              ; preds = %._crit_edge59, %238
  %.019.lcssa = phi i32 [ %split60, %._crit_edge59 ], [ 0, %238 ]
  %267 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.2761
  store i32 %.019.lcssa, ptr %267, align 4
  br label %268

268:                                              ; preds = %266, %228
  br label %269

269:                                              ; preds = %268
  %270 = add i64 %.2761, 1
  %271 = icmp ult i64 %270, 256
  br i1 %271, label %228, label %272, !llvm.loop !18

272:                                              ; preds = %269
  br label %273

273:                                              ; preds = %272, %300
  %.663 = phi i64 [ 1, %272 ], [ %301, %300 ]
  %274 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.663
  %275 = load i32, ptr %274, align 4
  %276 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.663
  %277 = load i8, ptr %276, align 1
  br label %278

278:                                              ; preds = %287, %273
  %.38 = phi i64 [ %.663, %273 ], [ %296, %287 ]
  %279 = icmp ne i64 %.38, 0
  br i1 %279, label %280, label %285

280:                                              ; preds = %278
  %281 = sub i64 %.38, 1
  %282 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %281
  %283 = load i32, ptr %282, align 4
  %284 = icmp ugt i32 %283, %275
  br label %285

285:                                              ; preds = %280, %278
  %286 = phi i1 [ false, %278 ], [ %284, %280 ]
  br i1 %286, label %287, label %297

287:                                              ; preds = %285
  %288 = sub i64 %.38, 1
  %289 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %288
  %290 = load i32, ptr %289, align 4
  %291 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %290, ptr %291, align 4
  %292 = sub i64 %.38, 1
  %293 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %292
  %294 = load i8, ptr %293, align 1
  %295 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %294, ptr %295, align 1
  %296 = add i64 %.38, -1
  br label %278, !llvm.loop !19

297:                                              ; preds = %285
  %.38.lcssa = phi i64 [ %.38, %285 ]
  %298 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %275, ptr %298, align 4
  %299 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %277, ptr %299, align 1
  br label %300

300:                                              ; preds = %297
  %301 = add i64 %.663, 1
  %302 = icmp ult i64 %301, 256
  br i1 %302, label %273, label %303, !llvm.loop !20

303:                                              ; preds = %300
  %304 = load i32, ptr %8, align 4
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %.lr.ph66, label %312

.lr.ph66:                                         ; preds = %303
  br label %306

306:                                              ; preds = %.lr.ph66, %307
  %.4964 = phi i64 [ 0, %.lr.ph66 ], [ %308, %307 ]
  br label %307

307:                                              ; preds = %306
  %308 = add i64 %.4964, 1
  %309 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %308
  %310 = load i32, ptr %309, align 4
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %306, label %._crit_edge67, !llvm.loop !21

._crit_edge67:                                    ; preds = %307
  %split68 = phi i64 [ %308, %307 ]
  br label %312

312:                                              ; preds = %._crit_edge67, %303
  %.49.lcssa = phi i64 [ %split68, %._crit_edge67 ], [ 0, %303 ]
  %313 = icmp ult i64 0, %1
  br i1 %313, label %.lr.ph76, label %346

.lr.ph76:                                         ; preds = %312
  br label %314

314:                                              ; preds = %.lr.ph76, %344
  %.774 = phi i64 [ %.49.lcssa, %.lr.ph76 ], [ %.9, %344 ]
  %.31373 = phi i64 [ 0, %.lr.ph76 ], [ %.414, %344 ]
  %.21772 = phi i64 [ 128, %.lr.ph76 ], [ %.318, %344 ]
  %.22171 = phi i32 [ 0, %.lr.ph76 ], [ %.423, %344 ]
  %.03170 = phi ptr [ %11, %.lr.ph76 ], [ %.132, %344 ]
  %.23569 = phi ptr [ %0, %.lr.ph76 ], [ %.336, %344 ]
  %315 = mul i32 %.22171, 2
  %316 = add i32 %315, 1
  %317 = load i8, ptr %.03170, align 1
  %318 = zext i8 %317 to i64
  %319 = and i64 %318, %.21772
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %323

321:                                              ; preds = %314
  %322 = add i32 %316, 1
  br label %323

323:                                              ; preds = %321, %314
  %.322 = phi i32 [ %322, %321 ], [ %316, %314 ]
  br label %324

324:                                              ; preds = %324, %323
  %.8 = phi i64 [ %.774, %323 ], [ %328, %324 ]
  %325 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %326 = load i32, ptr %325, align 4
  %327 = icmp ult i32 %326, %.322
  %328 = add i64 %.8, 1
  br i1 %327, label %324, label %329, !llvm.loop !22

329:                                              ; preds = %324
  %.8.lcssa = phi i64 [ %.8, %324 ]
  %330 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8.lcssa
  %331 = load i32, ptr %330, align 4
  %332 = icmp eq i32 %.322, %331
  br i1 %332, label %333, label %338

333:                                              ; preds = %329
  %334 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %335 = load i8, ptr %334, align 1
  store i8 %335, ptr %.23569, align 1
  %336 = getelementptr inbounds nuw i8, ptr %.23569, i32 1
  %337 = add i64 %.31373, 1
  br label %338

338:                                              ; preds = %333, %329
  %.336 = phi ptr [ %336, %333 ], [ %.23569, %329 ]
  %.423 = phi i32 [ 0, %333 ], [ %.322, %329 ]
  %.414 = phi i64 [ %337, %333 ], [ %.31373, %329 ]
  %.9 = phi i64 [ %.49.lcssa, %333 ], [ %.8.lcssa, %329 ]
  %339 = icmp ugt i64 %.21772, 1
  br i1 %339, label %340, label %342

340:                                              ; preds = %338
  %341 = lshr i64 %.21772, 1
  br label %344

342:                                              ; preds = %338
  %343 = getelementptr inbounds nuw i8, ptr %.03170, i32 1
  br label %344

344:                                              ; preds = %342, %340
  %.132 = phi ptr [ %.03170, %340 ], [ %343, %342 ]
  %.318 = phi i64 [ %341, %340 ], [ 128, %342 ]
  %345 = icmp ult i64 %.414, %1
  br i1 %345, label %314, label %._crit_edge77, !llvm.loop !23

._crit_edge77:                                    ; preds = %344
  br label %346

346:                                              ; preds = %._crit_edge77, %312
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
  br i1 %3, label %4, label %16

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4, %12
  %.011 = phi i32 [ 1, %4 ], [ %13, %12 ]
  %6 = getelementptr inbounds ptr, ptr %1, i64 1
  %7 = load ptr, ptr %6, align 8
  %8 = call i32 @strcmp(ptr noundef %7, ptr noundef @.str.4) #8
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
  %26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.5, double noundef 0.000000e+00) #8
  br label %30

27:                                               ; preds = %22
  %28 = call ptr @__acrt_iob_func(i32 noundef 1)
  %29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.6, double noundef 0.000000e+00) #8
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { allocsize(0) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

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
