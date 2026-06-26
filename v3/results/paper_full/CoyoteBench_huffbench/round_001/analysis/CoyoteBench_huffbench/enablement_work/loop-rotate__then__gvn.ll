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
  br i1 %12, label %.lr.ph, label %22

.lr.ph:                                           ; preds = %2
  br label %13

13:                                               ; preds = %.lr.ph, %13
  %.029 = phi i64 [ 0, %.lr.ph ], [ %20, %13 ]
  %.0337 = phi ptr [ %0, %.lr.ph ], [ %19, %13 ]
  %14 = load i8, ptr %.0337, align 1
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %15
  %17 = load i64, ptr %16, align 8
  %18 = add i64 %17, 1
  store i64 %18, ptr %16, align 8
  %19 = getelementptr inbounds nuw i8, ptr %.0337, i32 1
  %20 = add i64 %.029, 1
  %21 = icmp ult i64 %20, %1
  br i1 %21, label %13, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %13
  br label %22

22:                                               ; preds = %._crit_edge, %2
  br label %23

23:                                               ; preds = %22, %30
  %.1311 = phi i64 [ 0, %22 ], [ %31, %30 ]
  %.01010 = phi i64 [ 0, %22 ], [ %.111, %30 ]
  %24 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.1311
  %25 = load i64, ptr %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.01010
  store i64 %.1311, ptr %28, align 8
  %29 = add i64 %.01010, 1
  br label %30

30:                                               ; preds = %27, %23
  %.111 = phi i64 [ %29, %27 ], [ %.01010, %23 ]
  %31 = add i64 %.1311, 1
  %32 = icmp ult i64 %31, 256
  br i1 %32, label %23, label %33, !llvm.loop !10

33:                                               ; preds = %30
  %34 = icmp ugt i64 %.111, 0
  br i1 %34, label %.lr.ph14, label %40

.lr.ph14:                                         ; preds = %33
  br label %35

35:                                               ; preds = %.lr.ph14, %35
  %.2412 = phi i64 [ %.111, %.lr.ph14 ], [ %38, %35 ]
  %36 = trunc i64 %.111 to i32
  %37 = trunc i64 %.2412 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %36, i32 noundef %37)
  %38 = add i64 %.2412, -1
  %39 = icmp ugt i64 %38, 0
  br i1 %39, label %35, label %._crit_edge15, !llvm.loop !11

._crit_edge15:                                    ; preds = %35
  br label %40

40:                                               ; preds = %._crit_edge15, %33
  %41 = icmp ugt i64 %.111, 1
  br i1 %41, label %.lr.ph18, label %._crit_edge78

._crit_edge78:                                    ; preds = %40
  %.pre79 = add i64 256, %.111
  br label %62

.lr.ph18:                                         ; preds = %40
  br label %42

42:                                               ; preds = %.lr.ph18, %42
  %.21216 = phi i64 [ %.111, %.lr.ph18 ], [ %43, %42 ]
  %43 = add i64 %.21216, -1
  %44 = load i64, ptr %4, align 16
  %45 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %43
  %46 = load i64, ptr %45, align 8
  store i64 %46, ptr %4, align 16
  %47 = trunc i64 %43 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %47, i32 noundef 1)
  %48 = load i64, ptr %4, align 16
  %49 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %48
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %44
  %52 = load i64, ptr %51, align 8
  %53 = add i64 %50, %52
  %54 = add i64 256, %43
  %55 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %54
  store i64 %53, ptr %55, align 8
  %56 = trunc i64 %54 to i32
  %57 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %44
  store i32 %56, ptr %57, align 4
  %58 = sub i64 -256, %43
  %59 = trunc i64 %58 to i32
  %60 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %48
  store i32 %59, ptr %60, align 4
  store i64 %54, ptr %4, align 16
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %47, i32 noundef 1)
  %61 = icmp ugt i64 %43, 1
  br i1 %61, label %42, label %._crit_edge19, !llvm.loop !12

._crit_edge19:                                    ; preds = %42
  br label %62

62:                                               ; preds = %._crit_edge78, %._crit_edge19
  %.pre-phi = phi i64 [ %.pre79, %._crit_edge78 ], [ %54, %._crit_edge19 ]
  %.212.lcssa = phi i64 [ %43, %._crit_edge19 ], [ %.111, %._crit_edge78 ]
  %63 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.pre-phi
  store i32 0, ptr %63, align 4
  br label %64

64:                                               ; preds = %62, %98
  %.03931 = phi i64 [ 0, %62 ], [ %.140, %98 ]
  %.04230 = phi i64 [ 0, %62 ], [ %99, %98 ]
  %.04529 = phi i64 [ 0, %62 ], [ %.146, %98 ]
  %65 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.04230
  %66 = load i64, ptr %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04230
  store i32 0, ptr %69, align 4
  %70 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04230
  store i8 0, ptr %70, align 1
  br label %98

71:                                               ; preds = %64
  %72 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.04230
  %73 = load i32, ptr %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %.lr.ph25, label %87

.lr.ph25:                                         ; preds = %71
  br label %75

75:                                               ; preds = %.lr.ph25, %80
  %.323 = phi i64 [ 0, %.lr.ph25 ], [ %85, %80 ]
  %.0522 = phi i64 [ 1, %.lr.ph25 ], [ %84, %80 ]
  %.03721 = phi i32 [ %73, %.lr.ph25 ], [ %83, %80 ]
  %.04320 = phi i64 [ 0, %.lr.ph25 ], [ %.144, %80 ]
  %76 = icmp slt i32 %.03721, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %75
  %78 = add i64 %.04320, %.0522
  %79 = sub nsw i32 0, %.03721
  br label %80

80:                                               ; preds = %77, %75
  %.144 = phi i64 [ %78, %77 ], [ %.04320, %75 ]
  %.138 = phi i32 [ %79, %77 ], [ %.03721, %75 ]
  %81 = sext i32 %.138 to i64
  %82 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %81
  %83 = load i32, ptr %82, align 4
  %84 = shl i64 %.0522, 1
  %85 = add i64 %.323, 1
  %86 = icmp ne i32 %83, 0
  br i1 %86, label %75, label %._crit_edge26, !llvm.loop !13

._crit_edge26:                                    ; preds = %80
  br label %87

87:                                               ; preds = %._crit_edge26, %71
  %.043.lcssa = phi i64 [ %.144, %._crit_edge26 ], [ 0, %71 ]
  %.3.lcssa = phi i64 [ %85, %._crit_edge26 ], [ 0, %71 ]
  %88 = trunc i64 %.043.lcssa to i32
  %89 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04230
  store i32 %88, ptr %89, align 4
  %90 = trunc i64 %.3.lcssa to i8
  %91 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04230
  store i8 %90, ptr %91, align 1
  %92 = icmp ugt i64 %.043.lcssa, %.04529
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %94

94:                                               ; preds = %93, %87
  %.247 = phi i64 [ %.043.lcssa, %93 ], [ %.04529, %87 ]
  %95 = icmp ugt i64 %.3.lcssa, %.03931
  br i1 %95, label %96, label %97

96:                                               ; preds = %94
  br label %97

97:                                               ; preds = %96, %94
  %.241 = phi i64 [ %.3.lcssa, %96 ], [ %.03931, %94 ]
  br label %98

98:                                               ; preds = %97, %68
  %.146 = phi i64 [ %.247, %97 ], [ %.04529, %68 ]
  %.140 = phi i64 [ %.241, %97 ], [ %.03931, %68 ]
  %99 = add i64 %.04230, 1
  %100 = icmp ult i64 %99, 256
  br i1 %100, label %64, label %101, !llvm.loop !14

101:                                              ; preds = %98
  %102 = icmp ugt i64 %.140, 32
  br i1 %102, label %103, label %106

103:                                              ; preds = %101
  %104 = call ptr @__acrt_iob_func(i32 noundef 2)
  %105 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %104, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

106:                                              ; preds = %101
  %107 = icmp eq i64 %.146, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %106
  %109 = call ptr @__acrt_iob_func(i32 noundef 2)
  %110 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %109, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

111:                                              ; preds = %106
  br i1 %12, label %.lr.ph49, label %162

.lr.ph49:                                         ; preds = %111
  br label %112

112:                                              ; preds = %.lr.ph49, %158
  %.0147 = phi i32 [ -1, %.lr.ph49 ], [ %.1.lcssa, %158 ]
  %.1646 = phi i64 [ 0, %.lr.ph49 ], [ %160, %158 ]
  %.02445 = phi i8 [ 0, %.lr.ph49 ], [ %.125.lcssa, %158 ]
  %.02844 = phi i64 [ 0, %.lr.ph49 ], [ %.129.lcssa, %158 ]
  %.13443 = phi ptr [ %0, %.lr.ph49 ], [ %159, %158 ]
  %113 = load i8, ptr %.13443, align 1
  %114 = zext i8 %113 to i64
  %115 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %114
  %116 = load i8, ptr %115, align 1
  %117 = zext i8 %116 to i32
  %118 = sub nsw i32 %117, 1
  %119 = shl i32 1, %118
  %120 = sext i32 %119 to i64
  %121 = zext i8 %116 to i64
  %122 = icmp ult i64 0, %121
  br i1 %122, label %.lr.ph38, label %158

.lr.ph38:                                         ; preds = %112
  br label %123

123:                                              ; preds = %.lr.ph38, %151
  %124 = phi i8 [ %113, %.lr.ph38 ], [ %140, %151 ]
  %.136 = phi i32 [ %.0147, %.lr.ph38 ], [ %.2, %151 ]
  %.435 = phi i64 [ 0, %.lr.ph38 ], [ %153, %151 ]
  %.01534 = phi i64 [ %120, %.lr.ph38 ], [ %152, %151 ]
  %.12533 = phi i8 [ %.02445, %.lr.ph38 ], [ %.327, %151 ]
  %.12932 = phi i64 [ %.02844, %.lr.ph38 ], [ %.230, %151 ]
  %125 = icmp eq i32 %.136, 7
  br i1 %125, label %126, label %134

126:                                              ; preds = %123
  %127 = getelementptr inbounds nuw i8, ptr %11, i64 %.12932
  store i8 %.12533, ptr %127, align 1
  %128 = add i64 %.12932, 1
  %129 = icmp eq i64 %128, %1
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = call ptr @__acrt_iob_func(i32 noundef 2)
  %132 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %131, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

133:                                              ; preds = %126
  %.pre = load i8, ptr %.13443, align 1
  br label %139

134:                                              ; preds = %123
  %135 = add nsw i32 %.136, 1
  %136 = sext i8 %.12533 to i32
  %137 = shl i32 %136, 1
  %138 = trunc i32 %137 to i8
  br label %139

139:                                              ; preds = %134, %133
  %140 = phi i8 [ %.pre, %133 ], [ %124, %134 ]
  %.230 = phi i64 [ %128, %133 ], [ %.12932, %134 ]
  %.226 = phi i8 [ 0, %133 ], [ %138, %134 ]
  %.2 = phi i32 [ 0, %133 ], [ %135, %134 ]
  %141 = zext i8 %140 to i64
  %142 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %141
  %143 = load i32, ptr %142, align 4
  %144 = zext i32 %143 to i64
  %145 = and i64 %144, %.01534
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %139
  %148 = sext i8 %.226 to i32
  %149 = or i32 %148, 1
  %150 = trunc i32 %149 to i8
  br label %151

151:                                              ; preds = %147, %139
  %.327 = phi i8 [ %150, %147 ], [ %.226, %139 ]
  %152 = lshr i64 %.01534, 1
  %153 = add i64 %.435, 1
  %154 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %141
  %155 = load i8, ptr %154, align 1
  %156 = zext i8 %155 to i64
  %157 = icmp ult i64 %153, %156
  br i1 %157, label %123, label %._crit_edge39, !llvm.loop !15

._crit_edge39:                                    ; preds = %151
  br label %158

158:                                              ; preds = %._crit_edge39, %112
  %.129.lcssa = phi i64 [ %.230, %._crit_edge39 ], [ %.02844, %112 ]
  %.125.lcssa = phi i8 [ %.327, %._crit_edge39 ], [ %.02445, %112 ]
  %.1.lcssa = phi i32 [ %.2, %._crit_edge39 ], [ %.0147, %112 ]
  %159 = getelementptr inbounds nuw i8, ptr %.13443, i32 1
  %160 = add i64 %.1646, 1
  %161 = icmp ult i64 %160, %1
  br i1 %161, label %112, label %._crit_edge50, !llvm.loop !16

._crit_edge50:                                    ; preds = %158
  br label %162

162:                                              ; preds = %._crit_edge50, %111
  %.028.lcssa = phi i64 [ %.129.lcssa, %._crit_edge50 ], [ 0, %111 ]
  %.024.lcssa = phi i8 [ %.125.lcssa, %._crit_edge50 ], [ 0, %111 ]
  %.01.lcssa = phi i32 [ %.1.lcssa, %._crit_edge50 ], [ -1, %111 ]
  %163 = sub nsw i32 7, %.01.lcssa
  %164 = sext i8 %.024.lcssa to i32
  %165 = shl i32 %164, %163
  %166 = trunc i32 %165 to i8
  %167 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %166, ptr %167, align 1
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 1024, i1 false)
  br label %168

168:                                              ; preds = %162, %198
  %.062 = phi ptr [ %9, %162 ], [ %170, %198 ]
  %.2761 = phi i64 [ 0, %162 ], [ %199, %198 ]
  %169 = trunc i64 %.2761 to i8
  store i8 %169, ptr %.062, align 1
  %170 = getelementptr inbounds nuw i8, ptr %.062, i32 1
  %171 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.2761
  %172 = load i32, ptr %171, align 4
  %173 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2761
  %174 = load i8, ptr %173, align 1
  %175 = zext i8 %174 to i32
  %176 = or i32 %172, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %198

178:                                              ; preds = %168
  %179 = sub nsw i32 %175, 1
  %180 = shl i32 1, %179
  %181 = sext i32 %180 to i64
  %182 = zext i8 %174 to i64
  %183 = icmp ult i64 0, %182
  br i1 %183, label %.lr.ph58, label %196

.lr.ph58:                                         ; preds = %178
  br label %184

184:                                              ; preds = %.lr.ph58, %192
  %.556 = phi i64 [ 0, %.lr.ph58 ], [ %194, %192 ]
  %.11655 = phi i64 [ %181, %.lr.ph58 ], [ %193, %192 ]
  %.01954 = phi i32 [ 0, %.lr.ph58 ], [ %.120, %192 ]
  %185 = mul i32 %.01954, 2
  %186 = add i32 %185, 1
  %187 = zext i32 %172 to i64
  %188 = and i64 %187, %.11655
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %184
  %191 = add i32 %186, 1
  br label %192

192:                                              ; preds = %190, %184
  %.120 = phi i32 [ %191, %190 ], [ %186, %184 ]
  %193 = lshr i64 %.11655, 1
  %194 = add i64 %.556, 1
  %195 = icmp ult i64 %194, %182
  br i1 %195, label %184, label %._crit_edge59, !llvm.loop !17

._crit_edge59:                                    ; preds = %192
  br label %196

196:                                              ; preds = %._crit_edge59, %178
  %.019.lcssa = phi i32 [ %.120, %._crit_edge59 ], [ 0, %178 ]
  %197 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.2761
  store i32 %.019.lcssa, ptr %197, align 4
  br label %198

198:                                              ; preds = %196, %168
  %199 = add i64 %.2761, 1
  %200 = icmp ult i64 %199, 256
  br i1 %200, label %168, label %201, !llvm.loop !18

201:                                              ; preds = %198
  br label %202

202:                                              ; preds = %201, %225
  %.663 = phi i64 [ 1, %201 ], [ %228, %225 ]
  %203 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.663
  %204 = load i32, ptr %203, align 4
  %205 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.663
  %206 = load i8, ptr %205, align 1
  br label %207

207:                                              ; preds = %216, %202
  %.38 = phi i64 [ %.663, %202 ], [ %224, %216 ]
  %208 = icmp ne i64 %.38, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %207
  %210 = sub i64 %.38, 1
  %211 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %210
  %212 = load i32, ptr %211, align 4
  %213 = icmp ugt i32 %212, %204
  br label %214

214:                                              ; preds = %209, %207
  %215 = phi i1 [ false, %207 ], [ %213, %209 ]
  br i1 %215, label %216, label %225

216:                                              ; preds = %214
  %217 = sub i64 %.38, 1
  %218 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %217
  %219 = load i32, ptr %218, align 4
  %220 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %219, ptr %220, align 4
  %221 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %217
  %222 = load i8, ptr %221, align 1
  %223 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %222, ptr %223, align 1
  %224 = add i64 %.38, -1
  br label %207, !llvm.loop !19

225:                                              ; preds = %214
  %226 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %204, ptr %226, align 4
  %227 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %206, ptr %227, align 1
  %228 = add i64 %.663, 1
  %229 = icmp ult i64 %228, 256
  br i1 %229, label %202, label %230, !llvm.loop !20

230:                                              ; preds = %225
  %231 = load i32, ptr %8, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %.lr.ph66, label %238

.lr.ph66:                                         ; preds = %230
  br label %233

233:                                              ; preds = %.lr.ph66, %233
  %.4964 = phi i64 [ 0, %.lr.ph66 ], [ %234, %233 ]
  %234 = add i64 %.4964, 1
  %235 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %234
  %236 = load i32, ptr %235, align 4
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %233, label %._crit_edge67, !llvm.loop !21

._crit_edge67:                                    ; preds = %233
  br label %238

238:                                              ; preds = %._crit_edge67, %230
  %.49.lcssa = phi i64 [ %234, %._crit_edge67 ], [ 0, %230 ]
  br i1 %12, label %.lr.ph76, label %269

.lr.ph76:                                         ; preds = %238
  br label %239

239:                                              ; preds = %.lr.ph76, %267
  %.774 = phi i64 [ %.49.lcssa, %.lr.ph76 ], [ %.9, %267 ]
  %.31373 = phi i64 [ 0, %.lr.ph76 ], [ %.414, %267 ]
  %.21772 = phi i64 [ 128, %.lr.ph76 ], [ %.318, %267 ]
  %.22171 = phi i32 [ 0, %.lr.ph76 ], [ %.423, %267 ]
  %.03170 = phi ptr [ %11, %.lr.ph76 ], [ %.132, %267 ]
  %.23569 = phi ptr [ %0, %.lr.ph76 ], [ %.336, %267 ]
  %240 = mul i32 %.22171, 2
  %241 = add i32 %240, 1
  %242 = load i8, ptr %.03170, align 1
  %243 = zext i8 %242 to i64
  %244 = and i64 %243, %.21772
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %239
  %247 = add i32 %241, 1
  br label %248

248:                                              ; preds = %246, %239
  %.322 = phi i32 [ %247, %246 ], [ %241, %239 ]
  br label %249

249:                                              ; preds = %249, %248
  %.8 = phi i64 [ %.774, %248 ], [ %253, %249 ]
  %250 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %251 = load i32, ptr %250, align 4
  %252 = icmp ult i32 %251, %.322
  %253 = add i64 %.8, 1
  br i1 %252, label %249, label %254, !llvm.loop !22

254:                                              ; preds = %249
  %255 = icmp eq i32 %.322, %251
  br i1 %255, label %256, label %261

256:                                              ; preds = %254
  %257 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8
  %258 = load i8, ptr %257, align 1
  store i8 %258, ptr %.23569, align 1
  %259 = getelementptr inbounds nuw i8, ptr %.23569, i32 1
  %260 = add i64 %.31373, 1
  br label %261

261:                                              ; preds = %256, %254
  %.336 = phi ptr [ %259, %256 ], [ %.23569, %254 ]
  %.423 = phi i32 [ 0, %256 ], [ %.322, %254 ]
  %.414 = phi i64 [ %260, %256 ], [ %.31373, %254 ]
  %.9 = phi i64 [ %.49.lcssa, %256 ], [ %.8, %254 ]
  %262 = icmp ugt i64 %.21772, 1
  br i1 %262, label %263, label %265

263:                                              ; preds = %261
  %264 = lshr i64 %.21772, 1
  br label %267

265:                                              ; preds = %261
  %266 = getelementptr inbounds nuw i8, ptr %.03170, i32 1
  br label %267

267:                                              ; preds = %265, %263
  %.132 = phi ptr [ %.03170, %263 ], [ %266, %265 ]
  %.318 = phi i64 [ %264, %263 ], [ 128, %265 ]
  %268 = icmp ult i64 %.414, %1
  br i1 %268, label %239, label %._crit_edge77, !llvm.loop !23

._crit_edge77:                                    ; preds = %267
  br label %269

269:                                              ; preds = %._crit_edge77, %238
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
  br i1 %11, label %.lr.ph, label %..loopexit_crit_edge4

..loopexit_crit_edge4:                            ; preds = %4
  %.pre5 = sext i32 %9 to i64
  br label %.loopexit

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
  br label %47

42:                                               ; preds = %30
  %43 = sub nsw i32 %.013, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, ptr %1, i64 %44
  store i64 %37, ptr %45, align 8
  %46 = icmp sle i32 %.0, %10
  br i1 %46, label %12, label %..loopexit_crit_edge, !llvm.loop !24

..loopexit_crit_edge:                             ; preds = %42
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge4, %..loopexit_crit_edge
  %.pre.pre-phi = phi i64 [ %.pre5, %..loopexit_crit_edge4 ], [ %31, %..loopexit_crit_edge ]
  %.01.lcssa = phi i32 [ %.0, %..loopexit_crit_edge ], [ %3, %..loopexit_crit_edge4 ]
  br label %47

47:                                               ; preds = %.loopexit, %41
  %.pre-phi = phi i64 [ %.pre.pre-phi, %.loopexit ], [ %31, %41 ]
  %.012 = phi i32 [ %.01.lcssa, %.loopexit ], [ %.013, %41 ]
  %48 = sub nsw i32 %.012, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, ptr %1, i64 %49
  store i64 %.pre-phi, ptr %50, align 8
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

5:                                                ; preds = %4, %11
  %.011 = phi i32 [ 1, %4 ], [ %12, %11 ]
  %6 = getelementptr inbounds ptr, ptr %1, i64 1
  %7 = load ptr, ptr %6, align 8
  %8 = call i32 @strcmp(ptr noundef %7, ptr noundef @.str.4) #7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  br label %14

11:                                               ; preds = %5
  %12 = add nsw i32 %.011, 1
  %13 = icmp slt i32 %12, %0
  br i1 %13, label %5, label %.loopexit, !llvm.loop !25

.loopexit:                                        ; preds = %11
  br label %14

14:                                               ; preds = %.loopexit, %10
  %.1 = phi i8 [ 1, %10 ], [ 0, %.loopexit ]
  br label %15

15:                                               ; preds = %14, %2
  %.0 = phi i8 [ %.1, %14 ], [ 0, %2 ]
  %16 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %17

17:                                               ; preds = %15, %17
  %.122 = phi i32 [ 0, %15 ], [ %18, %17 ]
  call void @compdecomp(ptr noundef %16, i64 noundef 10000000)
  %18 = add nsw i32 %.122, 1
  %19 = icmp slt i32 %18, 30
  br i1 %19, label %17, label %20, !llvm.loop !26

20:                                               ; preds = %17
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
