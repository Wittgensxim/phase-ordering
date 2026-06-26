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
  br i1 %19, label %.lr.ph, label %30

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
  %28 = add i64 %.029, 1
  %29 = icmp ult i64 %28, %1
  br i1 %29, label %20, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %27
  br label %30

30:                                               ; preds = %._crit_edge, %2
  br label %31

31:                                               ; preds = %30, %49
  %.1311 = phi i64 [ 0, %30 ], [ %50, %49 ]
  %.01010 = phi i64 [ 0, %30 ], [ %.111.1, %49 ]
  %32 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.1311
  %33 = load i64, ptr %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.01010
  store i64 %.1311, ptr %36, align 8
  %37 = add i64 %.01010, 1
  br label %38

38:                                               ; preds = %35, %31
  %.111 = phi i64 [ %37, %35 ], [ %.01010, %31 ]
  br label %39

39:                                               ; preds = %38
  %40 = add nuw nsw i64 %.1311, 1
  br label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %40
  %43 = load i64, ptr %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.111
  store i64 %40, ptr %46, align 8
  %47 = add i64 %.111, 1
  br label %48

48:                                               ; preds = %45, %41
  %.111.1 = phi i64 [ %47, %45 ], [ %.111, %41 ]
  br label %49

49:                                               ; preds = %48
  %50 = add nuw nsw i64 %.1311, 2
  %51 = icmp samesign ult i64 %50, 256
  br i1 %51, label %31, label %52, !llvm.loop !10

52:                                               ; preds = %49
  %.010.lcssa = phi i64 [ %.111.1, %49 ]
  %53 = icmp ugt i64 %.010.lcssa, 0
  br i1 %53, label %.lr.ph14, label %62

.lr.ph14:                                         ; preds = %52
  br label %54

54:                                               ; preds = %.lr.ph14, %59
  %.2412 = phi i64 [ %.010.lcssa, %.lr.ph14 ], [ %60, %59 ]
  %55 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %56 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %57 = trunc i64 %.010.lcssa to i32
  %58 = trunc i64 %.2412 to i32
  call void @heap_adjust(ptr noundef %55, ptr noundef %56, i32 noundef %57, i32 noundef %58)
  br label %59

59:                                               ; preds = %54
  %60 = add i64 %.2412, -1
  %61 = icmp ugt i64 %60, 0
  br i1 %61, label %54, label %._crit_edge15, !llvm.loop !11

._crit_edge15:                                    ; preds = %59
  br label %62

62:                                               ; preds = %._crit_edge15, %52
  %63 = icmp ugt i64 %.010.lcssa, 1
  br i1 %63, label %.lr.ph18, label %97

.lr.ph18:                                         ; preds = %62
  br label %64

64:                                               ; preds = %.lr.ph18, %64
  %.21216 = phi i64 [ %.010.lcssa, %.lr.ph18 ], [ %65, %64 ]
  %65 = add i64 %.21216, -1
  %66 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %67 = load i64, ptr %66, align 16
  %68 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %65
  %69 = load i64, ptr %68, align 8
  %70 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %69, ptr %70, align 16
  %71 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %72 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %73 = trunc i64 %65 to i32
  call void @heap_adjust(ptr noundef %71, ptr noundef %72, i32 noundef %73, i32 noundef 1)
  %74 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %75 = load i64, ptr %74, align 16
  %76 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %75
  %77 = load i64, ptr %76, align 8
  %78 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %67
  %79 = load i64, ptr %78, align 8
  %80 = add i64 %77, %79
  %81 = add i64 256, %65
  %82 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %81
  store i64 %80, ptr %82, align 8
  %83 = add i64 256, %65
  %84 = trunc i64 %83 to i32
  %85 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %67
  store i32 %84, ptr %85, align 4
  %86 = sub i64 -256, %65
  %87 = trunc i64 %86 to i32
  %88 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %89 = load i64, ptr %88, align 16
  %90 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %89
  store i32 %87, ptr %90, align 4
  %91 = add i64 256, %65
  %92 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %91, ptr %92, align 16
  %93 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %94 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %95 = trunc i64 %65 to i32
  call void @heap_adjust(ptr noundef %93, ptr noundef %94, i32 noundef %95, i32 noundef 1)
  %96 = icmp ugt i64 %65, 1
  br i1 %96, label %64, label %._crit_edge19, !llvm.loop !12

._crit_edge19:                                    ; preds = %64
  %split = phi i64 [ %65, %64 ]
  br label %97

97:                                               ; preds = %._crit_edge19, %62
  %.212.lcssa = phi i64 [ %split, %._crit_edge19 ], [ %.010.lcssa, %62 ]
  %98 = add i64 256, %.212.lcssa
  %99 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %98
  store i32 0, ptr %99, align 4
  br label %100

100:                                              ; preds = %97, %135
  %.03931 = phi i64 [ 0, %97 ], [ %.140, %135 ]
  %.04230 = phi i64 [ 0, %97 ], [ %136, %135 ]
  %.04529 = phi i64 [ 0, %97 ], [ %.146, %135 ]
  %101 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.04230
  %102 = load i64, ptr %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04230
  store i32 0, ptr %105, align 4
  %106 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04230
  store i8 0, ptr %106, align 1
  br label %134

107:                                              ; preds = %100
  %108 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.04230
  %109 = load i32, ptr %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %.lr.ph25, label %123

.lr.ph25:                                         ; preds = %107
  br label %111

111:                                              ; preds = %.lr.ph25, %116
  %.323 = phi i64 [ 0, %.lr.ph25 ], [ %121, %116 ]
  %.0522 = phi i64 [ 1, %.lr.ph25 ], [ %120, %116 ]
  %.03721 = phi i32 [ %109, %.lr.ph25 ], [ %119, %116 ]
  %.04320 = phi i64 [ 0, %.lr.ph25 ], [ %.144, %116 ]
  %112 = icmp slt i32 %.03721, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %111
  %114 = add i64 %.04320, %.0522
  %115 = sub nsw i32 0, %.03721
  br label %116

116:                                              ; preds = %113, %111
  %.144 = phi i64 [ %114, %113 ], [ %.04320, %111 ]
  %.138 = phi i32 [ %115, %113 ], [ %.03721, %111 ]
  %117 = sext i32 %.138 to i64
  %118 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %117
  %119 = load i32, ptr %118, align 4
  %120 = shl i64 %.0522, 1
  %121 = add i64 %.323, 1
  %122 = icmp ne i32 %119, 0
  br i1 %122, label %111, label %._crit_edge26, !llvm.loop !13

._crit_edge26:                                    ; preds = %116
  %split27 = phi i64 [ %.144, %116 ]
  %split28 = phi i64 [ %121, %116 ]
  br label %123

123:                                              ; preds = %._crit_edge26, %107
  %.043.lcssa = phi i64 [ %split27, %._crit_edge26 ], [ 0, %107 ]
  %.3.lcssa = phi i64 [ %split28, %._crit_edge26 ], [ 0, %107 ]
  %124 = trunc i64 %.043.lcssa to i32
  %125 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04230
  store i32 %124, ptr %125, align 4
  %126 = trunc i64 %.3.lcssa to i8
  %127 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04230
  store i8 %126, ptr %127, align 1
  %128 = icmp ugt i64 %.043.lcssa, %.04529
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  br label %130

130:                                              ; preds = %129, %123
  %.247 = phi i64 [ %.043.lcssa, %129 ], [ %.04529, %123 ]
  %131 = icmp ugt i64 %.3.lcssa, %.03931
  br i1 %131, label %132, label %133

132:                                              ; preds = %130
  br label %133

133:                                              ; preds = %132, %130
  %.241 = phi i64 [ %.3.lcssa, %132 ], [ %.03931, %130 ]
  br label %134

134:                                              ; preds = %133, %104
  %.146 = phi i64 [ %.247, %133 ], [ %.04529, %104 ]
  %.140 = phi i64 [ %.241, %133 ], [ %.03931, %104 ]
  br label %135

135:                                              ; preds = %134
  %136 = add i64 %.04230, 1
  %137 = icmp ult i64 %136, 256
  br i1 %137, label %100, label %138, !llvm.loop !14

138:                                              ; preds = %135
  %.045.lcssa = phi i64 [ %.146, %135 ]
  %.039.lcssa = phi i64 [ %.140, %135 ]
  %139 = icmp ugt i64 %.039.lcssa, 32
  br i1 %139, label %140, label %143

140:                                              ; preds = %138
  %141 = call ptr @__acrt_iob_func(i32 noundef 2)
  %142 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %141, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

143:                                              ; preds = %138
  %144 = icmp eq i64 %.045.lcssa, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %143
  %146 = call ptr @__acrt_iob_func(i32 noundef 2)
  %147 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %146, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

148:                                              ; preds = %143
  %149 = icmp ult i64 0, %1
  br i1 %149, label %.lr.ph49, label %207

.lr.ph49:                                         ; preds = %148
  br label %150

150:                                              ; preds = %.lr.ph49, %204
  %.0147 = phi i32 [ -1, %.lr.ph49 ], [ %.1.lcssa, %204 ]
  %.1646 = phi i64 [ 0, %.lr.ph49 ], [ %205, %204 ]
  %.02445 = phi i8 [ 0, %.lr.ph49 ], [ %.125.lcssa, %204 ]
  %.02844 = phi i64 [ 0, %.lr.ph49 ], [ %.129.lcssa, %204 ]
  %.13443 = phi ptr [ %0, %.lr.ph49 ], [ %203, %204 ]
  %151 = load i8, ptr %.13443, align 1
  %152 = zext i8 %151 to i64
  %153 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %152
  %154 = load i8, ptr %153, align 1
  %155 = zext i8 %154 to i32
  %156 = sub nsw i32 %155, 1
  %157 = shl i32 1, %156
  %158 = sext i32 %157 to i64
  %159 = load i8, ptr %.13443, align 1
  %160 = zext i8 %159 to i64
  %161 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %160
  %162 = load i8, ptr %161, align 1
  %163 = zext i8 %162 to i64
  %164 = icmp ult i64 0, %163
  br i1 %164, label %.lr.ph38, label %202

.lr.ph38:                                         ; preds = %150
  br label %165

165:                                              ; preds = %.lr.ph38, %194
  %.136 = phi i32 [ %.0147, %.lr.ph38 ], [ %.2, %194 ]
  %.435 = phi i64 [ 0, %.lr.ph38 ], [ %195, %194 ]
  %.01534 = phi i64 [ %158, %.lr.ph38 ], [ %193, %194 ]
  %.12533 = phi i8 [ %.02445, %.lr.ph38 ], [ %.327, %194 ]
  %.12932 = phi i64 [ %.02844, %.lr.ph38 ], [ %.230, %194 ]
  %166 = icmp eq i32 %.136, 7
  br i1 %166, label %167, label %175

167:                                              ; preds = %165
  %168 = getelementptr inbounds nuw i8, ptr %11, i64 %.12932
  store i8 %.12533, ptr %168, align 1
  %169 = add i64 %.12932, 1
  %170 = icmp eq i64 %169, %1
  br i1 %170, label %171, label %174

171:                                              ; preds = %167
  %172 = call ptr @__acrt_iob_func(i32 noundef 2)
  %173 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %172, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

174:                                              ; preds = %167
  br label %180

175:                                              ; preds = %165
  %176 = add nsw i32 %.136, 1
  %177 = sext i8 %.12533 to i32
  %178 = shl i32 %177, 1
  %179 = trunc i32 %178 to i8
  br label %180

180:                                              ; preds = %175, %174
  %.230 = phi i64 [ %169, %174 ], [ %.12932, %175 ]
  %.226 = phi i8 [ 0, %174 ], [ %179, %175 ]
  %.2 = phi i32 [ 0, %174 ], [ %176, %175 ]
  %181 = load i8, ptr %.13443, align 1
  %182 = zext i8 %181 to i64
  %183 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %182
  %184 = load i32, ptr %183, align 4
  %185 = zext i32 %184 to i64
  %186 = and i64 %185, %.01534
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %180
  %189 = sext i8 %.226 to i32
  %190 = or i32 %189, 1
  %191 = trunc i32 %190 to i8
  br label %192

192:                                              ; preds = %188, %180
  %.327 = phi i8 [ %191, %188 ], [ %.226, %180 ]
  %193 = lshr i64 %.01534, 1
  br label %194

194:                                              ; preds = %192
  %195 = add i64 %.435, 1
  %196 = load i8, ptr %.13443, align 1
  %197 = zext i8 %196 to i64
  %198 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %197
  %199 = load i8, ptr %198, align 1
  %200 = zext i8 %199 to i64
  %201 = icmp ult i64 %195, %200
  br i1 %201, label %165, label %._crit_edge39, !llvm.loop !15

._crit_edge39:                                    ; preds = %194
  %split40 = phi i64 [ %.230, %194 ]
  %split41 = phi i8 [ %.327, %194 ]
  %split42 = phi i32 [ %.2, %194 ]
  br label %202

202:                                              ; preds = %._crit_edge39, %150
  %.129.lcssa = phi i64 [ %split40, %._crit_edge39 ], [ %.02844, %150 ]
  %.125.lcssa = phi i8 [ %split41, %._crit_edge39 ], [ %.02445, %150 ]
  %.1.lcssa = phi i32 [ %split42, %._crit_edge39 ], [ %.0147, %150 ]
  %203 = getelementptr inbounds nuw i8, ptr %.13443, i32 1
  br label %204

204:                                              ; preds = %202
  %205 = add i64 %.1646, 1
  %206 = icmp ult i64 %205, %1
  br i1 %206, label %150, label %._crit_edge50, !llvm.loop !16

._crit_edge50:                                    ; preds = %204
  %split51 = phi i64 [ %.129.lcssa, %204 ]
  %split52 = phi i8 [ %.125.lcssa, %204 ]
  %split53 = phi i32 [ %.1.lcssa, %204 ]
  br label %207

207:                                              ; preds = %._crit_edge50, %148
  %.028.lcssa = phi i64 [ %split51, %._crit_edge50 ], [ 0, %148 ]
  %.024.lcssa = phi i8 [ %split52, %._crit_edge50 ], [ 0, %148 ]
  %.01.lcssa = phi i32 [ %split53, %._crit_edge50 ], [ -1, %148 ]
  %208 = sub nsw i32 7, %.01.lcssa
  %209 = sext i8 %.024.lcssa to i32
  %210 = shl i32 %209, %208
  %211 = trunc i32 %210 to i8
  %212 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %211, ptr %212, align 1
  %213 = getelementptr inbounds [256 x i32], ptr %8, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %213, i8 0, i64 1024, i1 false)
  %214 = getelementptr inbounds [256 x i8], ptr %9, i64 0, i64 0
  br label %215

215:                                              ; preds = %207, %256
  %.062 = phi ptr [ %214, %207 ], [ %217, %256 ]
  %.2761 = phi i64 [ 0, %207 ], [ %257, %256 ]
  %216 = trunc i64 %.2761 to i8
  store i8 %216, ptr %.062, align 1
  %217 = getelementptr inbounds nuw i8, ptr %.062, i32 1
  %218 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.2761
  %219 = load i32, ptr %218, align 4
  %220 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2761
  %221 = load i8, ptr %220, align 1
  %222 = zext i8 %221 to i32
  %223 = or i32 %219, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %255

225:                                              ; preds = %215
  %226 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2761
  %227 = load i8, ptr %226, align 1
  %228 = zext i8 %227 to i32
  %229 = sub nsw i32 %228, 1
  %230 = shl i32 1, %229
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2761
  %233 = load i8, ptr %232, align 1
  %234 = zext i8 %233 to i64
  %235 = icmp ult i64 0, %234
  br i1 %235, label %.lr.ph58, label %253

.lr.ph58:                                         ; preds = %225
  br label %236

236:                                              ; preds = %.lr.ph58, %248
  %.556 = phi i64 [ 0, %.lr.ph58 ], [ %249, %248 ]
  %.11655 = phi i64 [ %231, %.lr.ph58 ], [ %247, %248 ]
  %.01954 = phi i32 [ 0, %.lr.ph58 ], [ %.120, %248 ]
  %237 = mul i32 %.01954, 2
  %238 = add i32 %237, 1
  %239 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.2761
  %240 = load i32, ptr %239, align 4
  %241 = zext i32 %240 to i64
  %242 = and i64 %241, %.11655
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %236
  %245 = add i32 %238, 1
  br label %246

246:                                              ; preds = %244, %236
  %.120 = phi i32 [ %245, %244 ], [ %238, %236 ]
  %247 = lshr i64 %.11655, 1
  br label %248

248:                                              ; preds = %246
  %249 = add i64 %.556, 1
  %250 = load i8, ptr %232, align 1
  %251 = zext i8 %250 to i64
  %252 = icmp ult i64 %249, %251
  br i1 %252, label %236, label %._crit_edge59, !llvm.loop !17

._crit_edge59:                                    ; preds = %248
  %split60 = phi i32 [ %.120, %248 ]
  br label %253

253:                                              ; preds = %._crit_edge59, %225
  %.019.lcssa = phi i32 [ %split60, %._crit_edge59 ], [ 0, %225 ]
  %254 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.2761
  store i32 %.019.lcssa, ptr %254, align 4
  br label %255

255:                                              ; preds = %253, %215
  br label %256

256:                                              ; preds = %255
  %257 = add i64 %.2761, 1
  %258 = icmp ult i64 %257, 256
  br i1 %258, label %215, label %259, !llvm.loop !18

259:                                              ; preds = %256
  br label %260

260:                                              ; preds = %259, %287
  %.663 = phi i64 [ 1, %259 ], [ %288, %287 ]
  %261 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.663
  %262 = load i32, ptr %261, align 4
  %263 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.663
  %264 = load i8, ptr %263, align 1
  br label %265

265:                                              ; preds = %274, %260
  %.38 = phi i64 [ %.663, %260 ], [ %283, %274 ]
  %266 = icmp ne i64 %.38, 0
  br i1 %266, label %267, label %272

267:                                              ; preds = %265
  %268 = sub i64 %.38, 1
  %269 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %268
  %270 = load i32, ptr %269, align 4
  %271 = icmp ugt i32 %270, %262
  br label %272

272:                                              ; preds = %267, %265
  %273 = phi i1 [ false, %265 ], [ %271, %267 ]
  br i1 %273, label %274, label %284

274:                                              ; preds = %272
  %275 = sub i64 %.38, 1
  %276 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %275
  %277 = load i32, ptr %276, align 4
  %278 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %277, ptr %278, align 4
  %279 = sub i64 %.38, 1
  %280 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %279
  %281 = load i8, ptr %280, align 1
  %282 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %281, ptr %282, align 1
  %283 = add i64 %.38, -1
  br label %265, !llvm.loop !19

284:                                              ; preds = %272
  %.38.lcssa = phi i64 [ %.38, %272 ]
  %285 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %262, ptr %285, align 4
  %286 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %264, ptr %286, align 1
  br label %287

287:                                              ; preds = %284
  %288 = add i64 %.663, 1
  %289 = icmp ult i64 %288, 256
  br i1 %289, label %260, label %290, !llvm.loop !20

290:                                              ; preds = %287
  %291 = load i32, ptr %8, align 4
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %.lr.ph66, label %299

.lr.ph66:                                         ; preds = %290
  br label %293

293:                                              ; preds = %.lr.ph66, %294
  %.4964 = phi i64 [ 0, %.lr.ph66 ], [ %295, %294 ]
  br label %294

294:                                              ; preds = %293
  %295 = add i64 %.4964, 1
  %296 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %295
  %297 = load i32, ptr %296, align 4
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %293, label %._crit_edge67, !llvm.loop !21

._crit_edge67:                                    ; preds = %294
  %split68 = phi i64 [ %295, %294 ]
  br label %299

299:                                              ; preds = %._crit_edge67, %290
  %.49.lcssa = phi i64 [ %split68, %._crit_edge67 ], [ 0, %290 ]
  %300 = icmp ult i64 0, %1
  br i1 %300, label %.lr.ph76, label %333

.lr.ph76:                                         ; preds = %299
  br label %301

301:                                              ; preds = %.lr.ph76, %331
  %.774 = phi i64 [ %.49.lcssa, %.lr.ph76 ], [ %.9, %331 ]
  %.31373 = phi i64 [ 0, %.lr.ph76 ], [ %.414, %331 ]
  %.21772 = phi i64 [ 128, %.lr.ph76 ], [ %.318, %331 ]
  %.22171 = phi i32 [ 0, %.lr.ph76 ], [ %.423, %331 ]
  %.03170 = phi ptr [ %11, %.lr.ph76 ], [ %.132, %331 ]
  %.23569 = phi ptr [ %0, %.lr.ph76 ], [ %.336, %331 ]
  %302 = mul i32 %.22171, 2
  %303 = add i32 %302, 1
  %304 = load i8, ptr %.03170, align 1
  %305 = zext i8 %304 to i64
  %306 = and i64 %305, %.21772
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %301
  %309 = add i32 %303, 1
  br label %310

310:                                              ; preds = %308, %301
  %.322 = phi i32 [ %309, %308 ], [ %303, %301 ]
  br label %311

311:                                              ; preds = %311, %310
  %.8 = phi i64 [ %.774, %310 ], [ %315, %311 ]
  %312 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %313 = load i32, ptr %312, align 4
  %314 = icmp ult i32 %313, %.322
  %315 = add i64 %.8, 1
  br i1 %314, label %311, label %316, !llvm.loop !22

316:                                              ; preds = %311
  %.8.lcssa = phi i64 [ %.8, %311 ]
  %317 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8.lcssa
  %318 = load i32, ptr %317, align 4
  %319 = icmp eq i32 %.322, %318
  br i1 %319, label %320, label %325

320:                                              ; preds = %316
  %321 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %322 = load i8, ptr %321, align 1
  store i8 %322, ptr %.23569, align 1
  %323 = getelementptr inbounds nuw i8, ptr %.23569, i32 1
  %324 = add i64 %.31373, 1
  br label %325

325:                                              ; preds = %320, %316
  %.336 = phi ptr [ %323, %320 ], [ %.23569, %316 ]
  %.423 = phi i32 [ 0, %320 ], [ %.322, %316 ]
  %.414 = phi i64 [ %324, %320 ], [ %.31373, %316 ]
  %.9 = phi i64 [ %.49.lcssa, %320 ], [ %.8.lcssa, %316 ]
  %326 = icmp ugt i64 %.21772, 1
  br i1 %326, label %327, label %329

327:                                              ; preds = %325
  %328 = lshr i64 %.21772, 1
  br label %331

329:                                              ; preds = %325
  %330 = getelementptr inbounds nuw i8, ptr %.03170, i32 1
  br label %331

331:                                              ; preds = %329, %327
  %.132 = phi ptr [ %.03170, %327 ], [ %330, %329 ]
  %.318 = phi i64 [ %328, %327 ], [ 128, %329 ]
  %332 = icmp ult i64 %.414, %1
  br i1 %332, label %301, label %._crit_edge77, !llvm.loop !23

._crit_edge77:                                    ; preds = %331
  br label %333

333:                                              ; preds = %._crit_edge77, %299
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
