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

31:                                               ; preds = %30, %39
  %.1311 = phi i64 [ 0, %30 ], [ %40, %39 ]
  %.01010 = phi i64 [ 0, %30 ], [ %.111, %39 ]
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
  %40 = add i64 %.1311, 1
  %41 = icmp ult i64 %40, 256
  br i1 %41, label %31, label %42, !llvm.loop !10

42:                                               ; preds = %39
  %.010.lcssa = phi i64 [ %.111, %39 ]
  %43 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %44 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %45 = trunc i64 %.010.lcssa to i32
  %46 = icmp ugt i64 %.010.lcssa, 0
  br i1 %46, label %.lr.ph14, label %52

.lr.ph14:                                         ; preds = %42
  br label %47

47:                                               ; preds = %.lr.ph14, %49
  %.2412 = phi i64 [ %.010.lcssa, %.lr.ph14 ], [ %50, %49 ]
  %48 = trunc i64 %.2412 to i32
  call void @heap_adjust(ptr noundef %43, ptr noundef %44, i32 noundef %45, i32 noundef %48)
  br label %49

49:                                               ; preds = %47
  %50 = add i64 %.2412, -1
  %51 = icmp ugt i64 %50, 0
  br i1 %51, label %47, label %._crit_edge15, !llvm.loop !11

._crit_edge15:                                    ; preds = %49
  br label %52

52:                                               ; preds = %._crit_edge15, %42
  %53 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %54 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %55 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %56 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %57 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %58 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %59 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %60 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %61 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %62 = icmp ugt i64 %.010.lcssa, 1
  br i1 %62, label %.lr.ph18, label %87

.lr.ph18:                                         ; preds = %52
  br label %63

63:                                               ; preds = %.lr.ph18, %63
  %.21216 = phi i64 [ %.010.lcssa, %.lr.ph18 ], [ %64, %63 ]
  %64 = add i64 %.21216, -1
  %65 = load i64, ptr %53, align 16
  %66 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %64
  %67 = load i64, ptr %66, align 8
  store i64 %67, ptr %54, align 16
  %68 = trunc i64 %64 to i32
  call void @heap_adjust(ptr noundef %55, ptr noundef %56, i32 noundef %68, i32 noundef 1)
  %69 = load i64, ptr %57, align 16
  %70 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %69
  %71 = load i64, ptr %70, align 8
  %72 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %65
  %73 = load i64, ptr %72, align 8
  %74 = add i64 %71, %73
  %75 = add i64 256, %64
  %76 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %75
  store i64 %74, ptr %76, align 8
  %77 = add i64 256, %64
  %78 = trunc i64 %77 to i32
  %79 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %65
  store i32 %78, ptr %79, align 4
  %80 = sub i64 -256, %64
  %81 = trunc i64 %80 to i32
  %82 = load i64, ptr %58, align 16
  %83 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %82
  store i32 %81, ptr %83, align 4
  %84 = add i64 256, %64
  store i64 %84, ptr %59, align 16
  %85 = trunc i64 %64 to i32
  call void @heap_adjust(ptr noundef %60, ptr noundef %61, i32 noundef %85, i32 noundef 1)
  %86 = icmp ugt i64 %64, 1
  br i1 %86, label %63, label %._crit_edge19, !llvm.loop !12

._crit_edge19:                                    ; preds = %63
  %split = phi i64 [ %64, %63 ]
  br label %87

87:                                               ; preds = %._crit_edge19, %52
  %.212.lcssa = phi i64 [ %split, %._crit_edge19 ], [ %.010.lcssa, %52 ]
  %88 = add i64 256, %.212.lcssa
  %89 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %88
  store i32 0, ptr %89, align 4
  br label %90

90:                                               ; preds = %87, %125
  %.03931 = phi i64 [ 0, %87 ], [ %.140, %125 ]
  %.04230 = phi i64 [ 0, %87 ], [ %126, %125 ]
  %.04529 = phi i64 [ 0, %87 ], [ %.146, %125 ]
  %91 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.04230
  %92 = load i64, ptr %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04230
  store i32 0, ptr %95, align 4
  %96 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04230
  store i8 0, ptr %96, align 1
  br label %124

97:                                               ; preds = %90
  %98 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.04230
  %99 = load i32, ptr %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %.lr.ph25, label %113

.lr.ph25:                                         ; preds = %97
  br label %101

101:                                              ; preds = %.lr.ph25, %106
  %.323 = phi i64 [ 0, %.lr.ph25 ], [ %111, %106 ]
  %.0522 = phi i64 [ 1, %.lr.ph25 ], [ %110, %106 ]
  %.03721 = phi i32 [ %99, %.lr.ph25 ], [ %109, %106 ]
  %.04320 = phi i64 [ 0, %.lr.ph25 ], [ %.144, %106 ]
  %102 = icmp slt i32 %.03721, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %101
  %104 = add i64 %.04320, %.0522
  %105 = sub nsw i32 0, %.03721
  br label %106

106:                                              ; preds = %103, %101
  %.144 = phi i64 [ %104, %103 ], [ %.04320, %101 ]
  %.138 = phi i32 [ %105, %103 ], [ %.03721, %101 ]
  %107 = sext i32 %.138 to i64
  %108 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %107
  %109 = load i32, ptr %108, align 4
  %110 = shl i64 %.0522, 1
  %111 = add i64 %.323, 1
  %112 = icmp ne i32 %109, 0
  br i1 %112, label %101, label %._crit_edge26, !llvm.loop !13

._crit_edge26:                                    ; preds = %106
  %split27 = phi i64 [ %.144, %106 ]
  %split28 = phi i64 [ %111, %106 ]
  br label %113

113:                                              ; preds = %._crit_edge26, %97
  %.043.lcssa = phi i64 [ %split27, %._crit_edge26 ], [ 0, %97 ]
  %.3.lcssa = phi i64 [ %split28, %._crit_edge26 ], [ 0, %97 ]
  %114 = trunc i64 %.043.lcssa to i32
  %115 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04230
  store i32 %114, ptr %115, align 4
  %116 = trunc i64 %.3.lcssa to i8
  %117 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04230
  store i8 %116, ptr %117, align 1
  %118 = icmp ugt i64 %.043.lcssa, %.04529
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %120

120:                                              ; preds = %119, %113
  %.247 = phi i64 [ %.043.lcssa, %119 ], [ %.04529, %113 ]
  %121 = icmp ugt i64 %.3.lcssa, %.03931
  br i1 %121, label %122, label %123

122:                                              ; preds = %120
  br label %123

123:                                              ; preds = %122, %120
  %.241 = phi i64 [ %.3.lcssa, %122 ], [ %.03931, %120 ]
  br label %124

124:                                              ; preds = %123, %94
  %.146 = phi i64 [ %.247, %123 ], [ %.04529, %94 ]
  %.140 = phi i64 [ %.241, %123 ], [ %.03931, %94 ]
  br label %125

125:                                              ; preds = %124
  %126 = add i64 %.04230, 1
  %127 = icmp ult i64 %126, 256
  br i1 %127, label %90, label %128, !llvm.loop !14

128:                                              ; preds = %125
  %.045.lcssa = phi i64 [ %.146, %125 ]
  %.039.lcssa = phi i64 [ %.140, %125 ]
  %129 = icmp ugt i64 %.039.lcssa, 32
  br i1 %129, label %130, label %133

130:                                              ; preds = %128
  %131 = call ptr @__acrt_iob_func(i32 noundef 2)
  %132 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %131, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

133:                                              ; preds = %128
  %134 = icmp eq i64 %.045.lcssa, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %133
  %136 = call ptr @__acrt_iob_func(i32 noundef 2)
  %137 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %136, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

138:                                              ; preds = %133
  %139 = icmp ult i64 0, %1
  br i1 %139, label %.lr.ph49, label %197

.lr.ph49:                                         ; preds = %138
  br label %140

140:                                              ; preds = %.lr.ph49, %194
  %.0147 = phi i32 [ -1, %.lr.ph49 ], [ %.1.lcssa, %194 ]
  %.1646 = phi i64 [ 0, %.lr.ph49 ], [ %195, %194 ]
  %.02445 = phi i8 [ 0, %.lr.ph49 ], [ %.125.lcssa, %194 ]
  %.02844 = phi i64 [ 0, %.lr.ph49 ], [ %.129.lcssa, %194 ]
  %.13443 = phi ptr [ %0, %.lr.ph49 ], [ %193, %194 ]
  %141 = load i8, ptr %.13443, align 1
  %142 = zext i8 %141 to i64
  %143 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %142
  %144 = load i8, ptr %143, align 1
  %145 = zext i8 %144 to i32
  %146 = sub nsw i32 %145, 1
  %147 = shl i32 1, %146
  %148 = sext i32 %147 to i64
  %149 = load i8, ptr %.13443, align 1
  %150 = zext i8 %149 to i64
  %151 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %150
  %152 = load i8, ptr %151, align 1
  %153 = zext i8 %152 to i64
  %154 = icmp ult i64 0, %153
  br i1 %154, label %.lr.ph38, label %192

.lr.ph38:                                         ; preds = %140
  br label %155

155:                                              ; preds = %.lr.ph38, %184
  %.136 = phi i32 [ %.0147, %.lr.ph38 ], [ %.2, %184 ]
  %.435 = phi i64 [ 0, %.lr.ph38 ], [ %185, %184 ]
  %.01534 = phi i64 [ %148, %.lr.ph38 ], [ %183, %184 ]
  %.12533 = phi i8 [ %.02445, %.lr.ph38 ], [ %.327, %184 ]
  %.12932 = phi i64 [ %.02844, %.lr.ph38 ], [ %.230, %184 ]
  %156 = icmp eq i32 %.136, 7
  br i1 %156, label %157, label %165

157:                                              ; preds = %155
  %158 = getelementptr inbounds nuw i8, ptr %11, i64 %.12932
  store i8 %.12533, ptr %158, align 1
  %159 = add i64 %.12932, 1
  %160 = icmp eq i64 %159, %1
  br i1 %160, label %161, label %164

161:                                              ; preds = %157
  %162 = call ptr @__acrt_iob_func(i32 noundef 2)
  %163 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %162, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

164:                                              ; preds = %157
  br label %170

165:                                              ; preds = %155
  %166 = add nsw i32 %.136, 1
  %167 = sext i8 %.12533 to i32
  %168 = shl i32 %167, 1
  %169 = trunc i32 %168 to i8
  br label %170

170:                                              ; preds = %165, %164
  %.230 = phi i64 [ %159, %164 ], [ %.12932, %165 ]
  %.226 = phi i8 [ 0, %164 ], [ %169, %165 ]
  %.2 = phi i32 [ 0, %164 ], [ %166, %165 ]
  %171 = load i8, ptr %.13443, align 1
  %172 = zext i8 %171 to i64
  %173 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %172
  %174 = load i32, ptr %173, align 4
  %175 = zext i32 %174 to i64
  %176 = and i64 %175, %.01534
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %170
  %179 = sext i8 %.226 to i32
  %180 = or i32 %179, 1
  %181 = trunc i32 %180 to i8
  br label %182

182:                                              ; preds = %178, %170
  %.327 = phi i8 [ %181, %178 ], [ %.226, %170 ]
  %183 = lshr i64 %.01534, 1
  br label %184

184:                                              ; preds = %182
  %185 = add i64 %.435, 1
  %186 = load i8, ptr %.13443, align 1
  %187 = zext i8 %186 to i64
  %188 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %187
  %189 = load i8, ptr %188, align 1
  %190 = zext i8 %189 to i64
  %191 = icmp ult i64 %185, %190
  br i1 %191, label %155, label %._crit_edge39, !llvm.loop !15

._crit_edge39:                                    ; preds = %184
  %split40 = phi i64 [ %.230, %184 ]
  %split41 = phi i8 [ %.327, %184 ]
  %split42 = phi i32 [ %.2, %184 ]
  br label %192

192:                                              ; preds = %._crit_edge39, %140
  %.129.lcssa = phi i64 [ %split40, %._crit_edge39 ], [ %.02844, %140 ]
  %.125.lcssa = phi i8 [ %split41, %._crit_edge39 ], [ %.02445, %140 ]
  %.1.lcssa = phi i32 [ %split42, %._crit_edge39 ], [ %.0147, %140 ]
  %193 = getelementptr inbounds nuw i8, ptr %.13443, i32 1
  br label %194

194:                                              ; preds = %192
  %195 = add i64 %.1646, 1
  %196 = icmp ult i64 %195, %1
  br i1 %196, label %140, label %._crit_edge50, !llvm.loop !16

._crit_edge50:                                    ; preds = %194
  %split51 = phi i64 [ %.129.lcssa, %194 ]
  %split52 = phi i8 [ %.125.lcssa, %194 ]
  %split53 = phi i32 [ %.1.lcssa, %194 ]
  br label %197

197:                                              ; preds = %._crit_edge50, %138
  %.028.lcssa = phi i64 [ %split51, %._crit_edge50 ], [ 0, %138 ]
  %.024.lcssa = phi i8 [ %split52, %._crit_edge50 ], [ 0, %138 ]
  %.01.lcssa = phi i32 [ %split53, %._crit_edge50 ], [ -1, %138 ]
  %198 = sub nsw i32 7, %.01.lcssa
  %199 = sext i8 %.024.lcssa to i32
  %200 = shl i32 %199, %198
  %201 = trunc i32 %200 to i8
  %202 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %201, ptr %202, align 1
  %203 = getelementptr inbounds [256 x i32], ptr %8, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %203, i8 0, i64 1024, i1 false)
  %204 = getelementptr inbounds [256 x i8], ptr %9, i64 0, i64 0
  br label %205

205:                                              ; preds = %197, %244
  %.062 = phi ptr [ %204, %197 ], [ %207, %244 ]
  %.2761 = phi i64 [ 0, %197 ], [ %245, %244 ]
  %206 = trunc i64 %.2761 to i8
  store i8 %206, ptr %.062, align 1
  %207 = getelementptr inbounds nuw i8, ptr %.062, i32 1
  %208 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.2761
  %209 = load i32, ptr %208, align 4
  %210 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2761
  %211 = load i8, ptr %210, align 1
  %212 = zext i8 %211 to i32
  %213 = or i32 %209, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %243

215:                                              ; preds = %205
  %216 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2761
  %217 = load i8, ptr %216, align 1
  %218 = zext i8 %217 to i32
  %219 = sub nsw i32 %218, 1
  %220 = shl i32 1, %219
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2761
  %223 = load i8, ptr %222, align 1
  %224 = zext i8 %223 to i64
  %225 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.2761
  %226 = icmp ult i64 0, %224
  br i1 %226, label %.lr.ph58, label %241

.lr.ph58:                                         ; preds = %215
  br label %227

227:                                              ; preds = %.lr.ph58, %238
  %.556 = phi i64 [ 0, %.lr.ph58 ], [ %239, %238 ]
  %.11655 = phi i64 [ %221, %.lr.ph58 ], [ %237, %238 ]
  %.01954 = phi i32 [ 0, %.lr.ph58 ], [ %.120, %238 ]
  %228 = mul i32 %.01954, 2
  %229 = add i32 %228, 1
  %230 = load i32, ptr %225, align 4
  %231 = zext i32 %230 to i64
  %232 = and i64 %231, %.11655
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %227
  %235 = add i32 %229, 1
  br label %236

236:                                              ; preds = %234, %227
  %.120 = phi i32 [ %235, %234 ], [ %229, %227 ]
  %237 = lshr i64 %.11655, 1
  br label %238

238:                                              ; preds = %236
  %239 = add i64 %.556, 1
  %240 = icmp ult i64 %239, %224
  br i1 %240, label %227, label %._crit_edge59, !llvm.loop !17

._crit_edge59:                                    ; preds = %238
  %split60 = phi i32 [ %.120, %238 ]
  br label %241

241:                                              ; preds = %._crit_edge59, %215
  %.019.lcssa = phi i32 [ %split60, %._crit_edge59 ], [ 0, %215 ]
  %242 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.2761
  store i32 %.019.lcssa, ptr %242, align 4
  br label %243

243:                                              ; preds = %241, %205
  br label %244

244:                                              ; preds = %243
  %245 = add i64 %.2761, 1
  %246 = icmp ult i64 %245, 256
  br i1 %246, label %205, label %247, !llvm.loop !18

247:                                              ; preds = %244
  br label %248

248:                                              ; preds = %247, %275
  %.663 = phi i64 [ 1, %247 ], [ %276, %275 ]
  %249 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.663
  %250 = load i32, ptr %249, align 4
  %251 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.663
  %252 = load i8, ptr %251, align 1
  br label %253

253:                                              ; preds = %262, %248
  %.38 = phi i64 [ %.663, %248 ], [ %271, %262 ]
  %254 = icmp ne i64 %.38, 0
  br i1 %254, label %255, label %260

255:                                              ; preds = %253
  %256 = sub i64 %.38, 1
  %257 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %256
  %258 = load i32, ptr %257, align 4
  %259 = icmp ugt i32 %258, %250
  br label %260

260:                                              ; preds = %255, %253
  %261 = phi i1 [ false, %253 ], [ %259, %255 ]
  br i1 %261, label %262, label %272

262:                                              ; preds = %260
  %263 = sub i64 %.38, 1
  %264 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %263
  %265 = load i32, ptr %264, align 4
  %266 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %265, ptr %266, align 4
  %267 = sub i64 %.38, 1
  %268 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %267
  %269 = load i8, ptr %268, align 1
  %270 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %269, ptr %270, align 1
  %271 = add i64 %.38, -1
  br label %253, !llvm.loop !19

272:                                              ; preds = %260
  %.38.lcssa = phi i64 [ %.38, %260 ]
  %273 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %250, ptr %273, align 4
  %274 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %252, ptr %274, align 1
  br label %275

275:                                              ; preds = %272
  %276 = add i64 %.663, 1
  %277 = icmp ult i64 %276, 256
  br i1 %277, label %248, label %278, !llvm.loop !20

278:                                              ; preds = %275
  %279 = load i32, ptr %8, align 4
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %.lr.ph66, label %287

.lr.ph66:                                         ; preds = %278
  br label %281

281:                                              ; preds = %.lr.ph66, %282
  %.4964 = phi i64 [ 0, %.lr.ph66 ], [ %283, %282 ]
  br label %282

282:                                              ; preds = %281
  %283 = add i64 %.4964, 1
  %284 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %283
  %285 = load i32, ptr %284, align 4
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %281, label %._crit_edge67, !llvm.loop !21

._crit_edge67:                                    ; preds = %282
  %split68 = phi i64 [ %283, %282 ]
  br label %287

287:                                              ; preds = %._crit_edge67, %278
  %.49.lcssa = phi i64 [ %split68, %._crit_edge67 ], [ 0, %278 ]
  %288 = icmp ult i64 0, %1
  br i1 %288, label %.lr.ph76, label %321

.lr.ph76:                                         ; preds = %287
  br label %289

289:                                              ; preds = %.lr.ph76, %319
  %.774 = phi i64 [ %.49.lcssa, %.lr.ph76 ], [ %.9, %319 ]
  %.31373 = phi i64 [ 0, %.lr.ph76 ], [ %.414, %319 ]
  %.21772 = phi i64 [ 128, %.lr.ph76 ], [ %.318, %319 ]
  %.22171 = phi i32 [ 0, %.lr.ph76 ], [ %.423, %319 ]
  %.03170 = phi ptr [ %11, %.lr.ph76 ], [ %.132, %319 ]
  %.23569 = phi ptr [ %0, %.lr.ph76 ], [ %.336, %319 ]
  %290 = mul i32 %.22171, 2
  %291 = add i32 %290, 1
  %292 = load i8, ptr %.03170, align 1
  %293 = zext i8 %292 to i64
  %294 = and i64 %293, %.21772
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %298

296:                                              ; preds = %289
  %297 = add i32 %291, 1
  br label %298

298:                                              ; preds = %296, %289
  %.322 = phi i32 [ %297, %296 ], [ %291, %289 ]
  br label %299

299:                                              ; preds = %299, %298
  %.8 = phi i64 [ %.774, %298 ], [ %303, %299 ]
  %300 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %301 = load i32, ptr %300, align 4
  %302 = icmp ult i32 %301, %.322
  %303 = add i64 %.8, 1
  br i1 %302, label %299, label %304, !llvm.loop !22

304:                                              ; preds = %299
  %.8.lcssa = phi i64 [ %.8, %299 ]
  %305 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8.lcssa
  %306 = load i32, ptr %305, align 4
  %307 = icmp eq i32 %.322, %306
  br i1 %307, label %308, label %313

308:                                              ; preds = %304
  %309 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %310 = load i8, ptr %309, align 1
  store i8 %310, ptr %.23569, align 1
  %311 = getelementptr inbounds nuw i8, ptr %.23569, i32 1
  %312 = add i64 %.31373, 1
  br label %313

313:                                              ; preds = %308, %304
  %.336 = phi ptr [ %311, %308 ], [ %.23569, %304 ]
  %.423 = phi i32 [ 0, %308 ], [ %.322, %304 ]
  %.414 = phi i64 [ %312, %308 ], [ %.31373, %304 ]
  %.9 = phi i64 [ %.49.lcssa, %308 ], [ %.8.lcssa, %304 ]
  %314 = icmp ugt i64 %.21772, 1
  br i1 %314, label %315, label %317

315:                                              ; preds = %313
  %316 = lshr i64 %.21772, 1
  br label %319

317:                                              ; preds = %313
  %318 = getelementptr inbounds nuw i8, ptr %.03170, i32 1
  br label %319

319:                                              ; preds = %317, %315
  %.132 = phi ptr [ %.03170, %315 ], [ %318, %317 ]
  %.318 = phi i64 [ %316, %315 ], [ 128, %317 ]
  %320 = icmp ult i64 %.414, %1
  br i1 %320, label %289, label %._crit_edge77, !llvm.loop !23

._crit_edge77:                                    ; preds = %319
  br label %321

321:                                              ; preds = %._crit_edge77, %287
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
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds i64, ptr %0, i64 %11
  %13 = icmp sle i32 %3, %10
  br i1 %13, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %14

14:                                               ; preds = %.lr.ph, %42
  %.013 = phi i32 [ %3, %.lr.ph ], [ %.0, %42 ]
  %15 = add nsw i32 %.013, %.013
  %16 = icmp slt i32 %15, %2
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = sub nsw i32 %15, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, ptr %1, i64 %19
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds nuw i64, ptr %0, i64 %21
  %23 = load i64, ptr %22, align 8
  %24 = sext i32 %15 to i64
  %25 = getelementptr inbounds i64, ptr %1, i64 %24
  %26 = load i64, ptr %25, align 8
  %27 = getelementptr inbounds nuw i64, ptr %0, i64 %26
  %28 = load i64, ptr %27, align 8
  %29 = icmp ugt i64 %23, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %17
  %31 = add nsw i32 %15, 1
  br label %32

32:                                               ; preds = %30, %17, %14
  %.0 = phi i32 [ %31, %30 ], [ %15, %17 ], [ %15, %14 ]
  %33 = load i64, ptr %12, align 8
  %34 = sub nsw i32 %.0, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, ptr %1, i64 %35
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds nuw i64, ptr %0, i64 %37
  %39 = load i64, ptr %38, align 8
  %40 = icmp ult i64 %33, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  %.01.lcssa1 = phi i32 [ %.013, %32 ]
  br label %51

42:                                               ; preds = %32
  %43 = sub nsw i32 %.0, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, ptr %1, i64 %44
  %46 = load i64, ptr %45, align 8
  %47 = sub nsw i32 %.013, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, ptr %1, i64 %48
  store i64 %46, ptr %49, align 8
  %50 = icmp sle i32 %.0, %10
  br i1 %50, label %14, label %..loopexit_crit_edge, !llvm.loop !24

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
  %5 = getelementptr inbounds ptr, ptr %1, i64 1
  br label %6

6:                                                ; preds = %4, %12
  %.011 = phi i32 [ 1, %4 ], [ %13, %12 ]
  %7 = load ptr, ptr %5, align 8
  %8 = call i32 @strcmp(ptr noundef %7, ptr noundef @.str.4) #7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  br label %15

11:                                               ; preds = %6
  br label %12

12:                                               ; preds = %11
  %13 = add nsw i32 %.011, 1
  %14 = icmp slt i32 %13, %0
  br i1 %14, label %6, label %.loopexit, !llvm.loop !25

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
