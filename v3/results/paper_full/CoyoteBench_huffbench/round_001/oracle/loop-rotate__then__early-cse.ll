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
  call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %10, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %5, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %6, i8 0, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %7, i8 0, i64 256, i1 false)
  %12 = icmp ult i64 0, %1
  br i1 %12, label %.lr.ph, label %23

.lr.ph:                                           ; preds = %2
  br label %13

13:                                               ; preds = %.lr.ph, %20
  %.029 = phi i64 [ 0, %.lr.ph ], [ %21, %20 ]
  %.0337 = phi ptr [ %0, %.lr.ph ], [ %19, %20 ]
  %14 = load i8, ptr %.0337, align 1
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %15
  %17 = load i64, ptr %16, align 8
  %18 = add i64 %17, 1
  store i64 %18, ptr %16, align 8
  %19 = getelementptr inbounds nuw i8, ptr %.0337, i32 1
  br label %20

20:                                               ; preds = %13
  %21 = add i64 %.029, 1
  %22 = icmp ult i64 %21, %1
  br i1 %22, label %13, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %20
  br label %23

23:                                               ; preds = %._crit_edge, %2
  br label %24

24:                                               ; preds = %23, %32
  %.1311 = phi i64 [ 0, %23 ], [ %33, %32 ]
  %.01010 = phi i64 [ 0, %23 ], [ %.111, %32 ]
  %25 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.1311
  %26 = load i64, ptr %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.01010
  store i64 %.1311, ptr %29, align 8
  %30 = add i64 %.01010, 1
  br label %31

31:                                               ; preds = %28, %24
  %.111 = phi i64 [ %30, %28 ], [ %.01010, %24 ]
  br label %32

32:                                               ; preds = %31
  %33 = add i64 %.1311, 1
  %34 = icmp ult i64 %33, 256
  br i1 %34, label %24, label %35, !llvm.loop !10

35:                                               ; preds = %32
  %36 = icmp ugt i64 %.111, 0
  br i1 %36, label %.lr.ph14, label %43

.lr.ph14:                                         ; preds = %35
  br label %37

37:                                               ; preds = %.lr.ph14, %40
  %.2412 = phi i64 [ %.111, %.lr.ph14 ], [ %41, %40 ]
  %38 = trunc i64 %.111 to i32
  %39 = trunc i64 %.2412 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %38, i32 noundef %39)
  br label %40

40:                                               ; preds = %37
  %41 = add i64 %.2412, -1
  %42 = icmp ugt i64 %41, 0
  br i1 %42, label %37, label %._crit_edge15, !llvm.loop !11

._crit_edge15:                                    ; preds = %40
  br label %43

43:                                               ; preds = %._crit_edge15, %35
  %44 = icmp ugt i64 %.111, 1
  br i1 %44, label %.lr.ph18, label %66

.lr.ph18:                                         ; preds = %43
  br label %45

45:                                               ; preds = %.lr.ph18, %45
  %.21216 = phi i64 [ %.111, %.lr.ph18 ], [ %46, %45 ]
  %46 = add i64 %.21216, -1
  %47 = load i64, ptr %4, align 16
  %48 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %46
  %49 = load i64, ptr %48, align 8
  store i64 %49, ptr %4, align 16
  %50 = trunc i64 %46 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %50, i32 noundef 1)
  %51 = load i64, ptr %4, align 16
  %52 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %51
  %53 = load i64, ptr %52, align 8
  %54 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %47
  %55 = load i64, ptr %54, align 8
  %56 = add i64 %53, %55
  %57 = add i64 256, %46
  %58 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %57
  store i64 %56, ptr %58, align 8
  %59 = trunc i64 %57 to i32
  %60 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %47
  store i32 %59, ptr %60, align 4
  %61 = sub i64 -256, %46
  %62 = trunc i64 %61 to i32
  %63 = load i64, ptr %4, align 16
  %64 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %63
  store i32 %62, ptr %64, align 4
  store i64 %57, ptr %4, align 16
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %50, i32 noundef 1)
  %65 = icmp ugt i64 %46, 1
  br i1 %65, label %45, label %._crit_edge19, !llvm.loop !12

._crit_edge19:                                    ; preds = %45
  br label %66

66:                                               ; preds = %._crit_edge19, %43
  %.212.lcssa = phi i64 [ %46, %._crit_edge19 ], [ %.111, %43 ]
  %67 = add i64 256, %.212.lcssa
  %68 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %67
  store i32 0, ptr %68, align 4
  br label %69

69:                                               ; preds = %66, %104
  %.03931 = phi i64 [ 0, %66 ], [ %.140, %104 ]
  %.04230 = phi i64 [ 0, %66 ], [ %105, %104 ]
  %.04529 = phi i64 [ 0, %66 ], [ %.146, %104 ]
  %70 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.04230
  %71 = load i64, ptr %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04230
  store i32 0, ptr %74, align 4
  %75 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04230
  store i8 0, ptr %75, align 1
  br label %103

76:                                               ; preds = %69
  %77 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.04230
  %78 = load i32, ptr %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %.lr.ph25, label %92

.lr.ph25:                                         ; preds = %76
  br label %80

80:                                               ; preds = %.lr.ph25, %85
  %.323 = phi i64 [ 0, %.lr.ph25 ], [ %90, %85 ]
  %.0522 = phi i64 [ 1, %.lr.ph25 ], [ %89, %85 ]
  %.03721 = phi i32 [ %78, %.lr.ph25 ], [ %88, %85 ]
  %.04320 = phi i64 [ 0, %.lr.ph25 ], [ %.144, %85 ]
  %81 = icmp slt i32 %.03721, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %80
  %83 = add i64 %.04320, %.0522
  %84 = sub nsw i32 0, %.03721
  br label %85

85:                                               ; preds = %82, %80
  %.144 = phi i64 [ %83, %82 ], [ %.04320, %80 ]
  %.138 = phi i32 [ %84, %82 ], [ %.03721, %80 ]
  %86 = sext i32 %.138 to i64
  %87 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %86
  %88 = load i32, ptr %87, align 4
  %89 = shl i64 %.0522, 1
  %90 = add i64 %.323, 1
  %91 = icmp ne i32 %88, 0
  br i1 %91, label %80, label %._crit_edge26, !llvm.loop !13

._crit_edge26:                                    ; preds = %85
  br label %92

92:                                               ; preds = %._crit_edge26, %76
  %.043.lcssa = phi i64 [ %.144, %._crit_edge26 ], [ 0, %76 ]
  %.3.lcssa = phi i64 [ %90, %._crit_edge26 ], [ 0, %76 ]
  %93 = trunc i64 %.043.lcssa to i32
  %94 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04230
  store i32 %93, ptr %94, align 4
  %95 = trunc i64 %.3.lcssa to i8
  %96 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04230
  store i8 %95, ptr %96, align 1
  %97 = icmp ugt i64 %.043.lcssa, %.04529
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %99

99:                                               ; preds = %98, %92
  %.247 = phi i64 [ %.043.lcssa, %98 ], [ %.04529, %92 ]
  %100 = icmp ugt i64 %.3.lcssa, %.03931
  br i1 %100, label %101, label %102

101:                                              ; preds = %99
  br label %102

102:                                              ; preds = %101, %99
  %.241 = phi i64 [ %.3.lcssa, %101 ], [ %.03931, %99 ]
  br label %103

103:                                              ; preds = %102, %73
  %.146 = phi i64 [ %.247, %102 ], [ %.04529, %73 ]
  %.140 = phi i64 [ %.241, %102 ], [ %.03931, %73 ]
  br label %104

104:                                              ; preds = %103
  %105 = add i64 %.04230, 1
  %106 = icmp ult i64 %105, 256
  br i1 %106, label %69, label %107, !llvm.loop !14

107:                                              ; preds = %104
  %108 = icmp ugt i64 %.140, 32
  br i1 %108, label %109, label %112

109:                                              ; preds = %107
  %110 = call ptr @__acrt_iob_func(i32 noundef 2)
  %111 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

112:                                              ; preds = %107
  %113 = icmp eq i64 %.146, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %112
  %115 = call ptr @__acrt_iob_func(i32 noundef 2)
  %116 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %115, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

117:                                              ; preds = %112
  br i1 %12, label %.lr.ph49, label %171

.lr.ph49:                                         ; preds = %117
  br label %118

118:                                              ; preds = %.lr.ph49, %168
  %.0147 = phi i32 [ -1, %.lr.ph49 ], [ %.1.lcssa, %168 ]
  %.1646 = phi i64 [ 0, %.lr.ph49 ], [ %169, %168 ]
  %.02445 = phi i8 [ 0, %.lr.ph49 ], [ %.125.lcssa, %168 ]
  %.02844 = phi i64 [ 0, %.lr.ph49 ], [ %.129.lcssa, %168 ]
  %.13443 = phi ptr [ %0, %.lr.ph49 ], [ %167, %168 ]
  %119 = load i8, ptr %.13443, align 1
  %120 = zext i8 %119 to i64
  %121 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %120
  %122 = load i8, ptr %121, align 1
  %123 = zext i8 %122 to i32
  %124 = sub nsw i32 %123, 1
  %125 = shl i32 1, %124
  %126 = sext i32 %125 to i64
  %127 = zext i8 %122 to i64
  %128 = icmp ult i64 0, %127
  br i1 %128, label %.lr.ph38, label %166

.lr.ph38:                                         ; preds = %118
  br label %129

129:                                              ; preds = %.lr.ph38, %158
  %.136 = phi i32 [ %.0147, %.lr.ph38 ], [ %.2, %158 ]
  %.435 = phi i64 [ 0, %.lr.ph38 ], [ %159, %158 ]
  %.01534 = phi i64 [ %126, %.lr.ph38 ], [ %157, %158 ]
  %.12533 = phi i8 [ %.02445, %.lr.ph38 ], [ %.327, %158 ]
  %.12932 = phi i64 [ %.02844, %.lr.ph38 ], [ %.230, %158 ]
  %130 = icmp eq i32 %.136, 7
  br i1 %130, label %131, label %139

131:                                              ; preds = %129
  %132 = getelementptr inbounds nuw i8, ptr %11, i64 %.12932
  store i8 %.12533, ptr %132, align 1
  %133 = add i64 %.12932, 1
  %134 = icmp eq i64 %133, %1
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = call ptr @__acrt_iob_func(i32 noundef 2)
  %137 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %136, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

138:                                              ; preds = %131
  br label %144

139:                                              ; preds = %129
  %140 = add nsw i32 %.136, 1
  %141 = sext i8 %.12533 to i32
  %142 = shl i32 %141, 1
  %143 = trunc i32 %142 to i8
  br label %144

144:                                              ; preds = %139, %138
  %.230 = phi i64 [ %133, %138 ], [ %.12932, %139 ]
  %.226 = phi i8 [ 0, %138 ], [ %143, %139 ]
  %.2 = phi i32 [ 0, %138 ], [ %140, %139 ]
  %145 = load i8, ptr %.13443, align 1
  %146 = zext i8 %145 to i64
  %147 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %146
  %148 = load i32, ptr %147, align 4
  %149 = zext i32 %148 to i64
  %150 = and i64 %149, %.01534
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %144
  %153 = sext i8 %.226 to i32
  %154 = or i32 %153, 1
  %155 = trunc i32 %154 to i8
  br label %156

156:                                              ; preds = %152, %144
  %.327 = phi i8 [ %155, %152 ], [ %.226, %144 ]
  %157 = lshr i64 %.01534, 1
  br label %158

158:                                              ; preds = %156
  %159 = add i64 %.435, 1
  %160 = load i8, ptr %.13443, align 1
  %161 = zext i8 %160 to i64
  %162 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %161
  %163 = load i8, ptr %162, align 1
  %164 = zext i8 %163 to i64
  %165 = icmp ult i64 %159, %164
  br i1 %165, label %129, label %._crit_edge39, !llvm.loop !15

._crit_edge39:                                    ; preds = %158
  br label %166

166:                                              ; preds = %._crit_edge39, %118
  %.129.lcssa = phi i64 [ %.230, %._crit_edge39 ], [ %.02844, %118 ]
  %.125.lcssa = phi i8 [ %.327, %._crit_edge39 ], [ %.02445, %118 ]
  %.1.lcssa = phi i32 [ %.2, %._crit_edge39 ], [ %.0147, %118 ]
  %167 = getelementptr inbounds nuw i8, ptr %.13443, i32 1
  br label %168

168:                                              ; preds = %166
  %169 = add i64 %.1646, 1
  %170 = icmp ult i64 %169, %1
  br i1 %170, label %118, label %._crit_edge50, !llvm.loop !16

._crit_edge50:                                    ; preds = %168
  br label %171

171:                                              ; preds = %._crit_edge50, %117
  %.028.lcssa = phi i64 [ %.129.lcssa, %._crit_edge50 ], [ 0, %117 ]
  %.024.lcssa = phi i8 [ %.125.lcssa, %._crit_edge50 ], [ 0, %117 ]
  %.01.lcssa = phi i32 [ %.1.lcssa, %._crit_edge50 ], [ -1, %117 ]
  %172 = sub nsw i32 7, %.01.lcssa
  %173 = sext i8 %.024.lcssa to i32
  %174 = shl i32 %173, %172
  %175 = trunc i32 %174 to i8
  %176 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %175, ptr %176, align 1
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 1024, i1 false)
  br label %177

177:                                              ; preds = %171, %212
  %.062 = phi ptr [ %9, %171 ], [ %179, %212 ]
  %.2761 = phi i64 [ 0, %171 ], [ %213, %212 ]
  %178 = trunc i64 %.2761 to i8
  store i8 %178, ptr %.062, align 1
  %179 = getelementptr inbounds nuw i8, ptr %.062, i32 1
  %180 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.2761
  %181 = load i32, ptr %180, align 4
  %182 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2761
  %183 = load i8, ptr %182, align 1
  %184 = zext i8 %183 to i32
  %185 = or i32 %181, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %211

187:                                              ; preds = %177
  %188 = sub nsw i32 %184, 1
  %189 = shl i32 1, %188
  %190 = sext i32 %189 to i64
  %191 = zext i8 %183 to i64
  %192 = icmp ult i64 0, %191
  br i1 %192, label %.lr.ph58, label %209

.lr.ph58:                                         ; preds = %187
  br label %193

193:                                              ; preds = %.lr.ph58, %204
  %.556 = phi i64 [ 0, %.lr.ph58 ], [ %205, %204 ]
  %.11655 = phi i64 [ %190, %.lr.ph58 ], [ %203, %204 ]
  %.01954 = phi i32 [ 0, %.lr.ph58 ], [ %.120, %204 ]
  %194 = mul i32 %.01954, 2
  %195 = add i32 %194, 1
  %196 = load i32, ptr %180, align 4
  %197 = zext i32 %196 to i64
  %198 = and i64 %197, %.11655
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %193
  %201 = add i32 %195, 1
  br label %202

202:                                              ; preds = %200, %193
  %.120 = phi i32 [ %201, %200 ], [ %195, %193 ]
  %203 = lshr i64 %.11655, 1
  br label %204

204:                                              ; preds = %202
  %205 = add i64 %.556, 1
  %206 = load i8, ptr %182, align 1
  %207 = zext i8 %206 to i64
  %208 = icmp ult i64 %205, %207
  br i1 %208, label %193, label %._crit_edge59, !llvm.loop !17

._crit_edge59:                                    ; preds = %204
  br label %209

209:                                              ; preds = %._crit_edge59, %187
  %.019.lcssa = phi i32 [ %.120, %._crit_edge59 ], [ 0, %187 ]
  %210 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.2761
  store i32 %.019.lcssa, ptr %210, align 4
  br label %211

211:                                              ; preds = %209, %177
  br label %212

212:                                              ; preds = %211
  %213 = add i64 %.2761, 1
  %214 = icmp ult i64 %213, 256
  br i1 %214, label %177, label %215, !llvm.loop !18

215:                                              ; preds = %212
  br label %216

216:                                              ; preds = %215, %242
  %.663 = phi i64 [ 1, %215 ], [ %243, %242 ]
  %217 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.663
  %218 = load i32, ptr %217, align 4
  %219 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.663
  %220 = load i8, ptr %219, align 1
  br label %221

221:                                              ; preds = %230, %216
  %.38 = phi i64 [ %.663, %216 ], [ %238, %230 ]
  %222 = icmp ne i64 %.38, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %221
  %224 = sub i64 %.38, 1
  %225 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %224
  %226 = load i32, ptr %225, align 4
  %227 = icmp ugt i32 %226, %218
  br label %228

228:                                              ; preds = %223, %221
  %229 = phi i1 [ false, %221 ], [ %227, %223 ]
  br i1 %229, label %230, label %239

230:                                              ; preds = %228
  %231 = sub i64 %.38, 1
  %232 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %231
  %233 = load i32, ptr %232, align 4
  %234 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %233, ptr %234, align 4
  %235 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %231
  %236 = load i8, ptr %235, align 1
  %237 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %236, ptr %237, align 1
  %238 = add i64 %.38, -1
  br label %221, !llvm.loop !19

239:                                              ; preds = %228
  %240 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %218, ptr %240, align 4
  %241 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %220, ptr %241, align 1
  br label %242

242:                                              ; preds = %239
  %243 = add i64 %.663, 1
  %244 = icmp ult i64 %243, 256
  br i1 %244, label %216, label %245, !llvm.loop !20

245:                                              ; preds = %242
  %246 = load i32, ptr %8, align 4
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %.lr.ph66, label %254

.lr.ph66:                                         ; preds = %245
  br label %248

248:                                              ; preds = %.lr.ph66, %249
  %.4964 = phi i64 [ 0, %.lr.ph66 ], [ %250, %249 ]
  br label %249

249:                                              ; preds = %248
  %250 = add i64 %.4964, 1
  %251 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %250
  %252 = load i32, ptr %251, align 4
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %248, label %._crit_edge67, !llvm.loop !21

._crit_edge67:                                    ; preds = %249
  br label %254

254:                                              ; preds = %._crit_edge67, %245
  %.49.lcssa = phi i64 [ %250, %._crit_edge67 ], [ 0, %245 ]
  br i1 %12, label %.lr.ph76, label %285

.lr.ph76:                                         ; preds = %254
  br label %255

255:                                              ; preds = %.lr.ph76, %283
  %.774 = phi i64 [ %.49.lcssa, %.lr.ph76 ], [ %.9, %283 ]
  %.31373 = phi i64 [ 0, %.lr.ph76 ], [ %.414, %283 ]
  %.21772 = phi i64 [ 128, %.lr.ph76 ], [ %.318, %283 ]
  %.22171 = phi i32 [ 0, %.lr.ph76 ], [ %.423, %283 ]
  %.03170 = phi ptr [ %11, %.lr.ph76 ], [ %.132, %283 ]
  %.23569 = phi ptr [ %0, %.lr.ph76 ], [ %.336, %283 ]
  %256 = mul i32 %.22171, 2
  %257 = add i32 %256, 1
  %258 = load i8, ptr %.03170, align 1
  %259 = zext i8 %258 to i64
  %260 = and i64 %259, %.21772
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %255
  %263 = add i32 %257, 1
  br label %264

264:                                              ; preds = %262, %255
  %.322 = phi i32 [ %263, %262 ], [ %257, %255 ]
  br label %265

265:                                              ; preds = %265, %264
  %.8 = phi i64 [ %.774, %264 ], [ %269, %265 ]
  %266 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %267 = load i32, ptr %266, align 4
  %268 = icmp ult i32 %267, %.322
  %269 = add i64 %.8, 1
  br i1 %268, label %265, label %270, !llvm.loop !22

270:                                              ; preds = %265
  %271 = icmp eq i32 %.322, %267
  br i1 %271, label %272, label %277

272:                                              ; preds = %270
  %273 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8
  %274 = load i8, ptr %273, align 1
  store i8 %274, ptr %.23569, align 1
  %275 = getelementptr inbounds nuw i8, ptr %.23569, i32 1
  %276 = add i64 %.31373, 1
  br label %277

277:                                              ; preds = %272, %270
  %.336 = phi ptr [ %275, %272 ], [ %.23569, %270 ]
  %.423 = phi i32 [ 0, %272 ], [ %.322, %270 ]
  %.414 = phi i64 [ %276, %272 ], [ %.31373, %270 ]
  %.9 = phi i64 [ %.49.lcssa, %272 ], [ %.8, %270 ]
  %278 = icmp ugt i64 %.21772, 1
  br i1 %278, label %279, label %281

279:                                              ; preds = %277
  %280 = lshr i64 %.21772, 1
  br label %283

281:                                              ; preds = %277
  %282 = getelementptr inbounds nuw i8, ptr %.03170, i32 1
  br label %283

283:                                              ; preds = %281, %279
  %.132 = phi ptr [ %.03170, %279 ], [ %282, %281 ]
  %.318 = phi i64 [ %280, %279 ], [ 128, %281 ]
  %284 = icmp ult i64 %.414, %1
  br i1 %284, label %255, label %._crit_edge77, !llvm.loop !23

._crit_edge77:                                    ; preds = %283
  br label %285

285:                                              ; preds = %._crit_edge77, %254
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

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  %.01.lcssa = phi i32 [ %.0, %..loopexit_crit_edge ], [ %3, %4 ]
  br label %47

47:                                               ; preds = %.loopexit, %41
  %.012 = phi i32 [ %.01.lcssa, %.loopexit ], [ %.013, %41 ]
  %48 = sext i32 %9 to i64
  %49 = sub nsw i32 %.012, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, ptr %1, i64 %50
  store i64 %48, ptr %51, align 8
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
