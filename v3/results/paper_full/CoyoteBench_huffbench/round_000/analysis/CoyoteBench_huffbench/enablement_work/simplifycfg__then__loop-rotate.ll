; ModuleID = 'results\paper_full\CoyoteBench_huffbench\CoyoteBench_huffbench.ll'
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
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store i64 %0, ptr %2, align 8
  store ptr @.str, ptr %3, align 8
  %7 = load i64, ptr %2, align 8
  %8 = call ptr @malloc(i64 noundef %7) #6
  store ptr %8, ptr %4, align 8
  %9 = load ptr, ptr %4, align 8
  store ptr %9, ptr %5, align 8
  store i32 0, ptr %6, align 4
  %10 = load i32, ptr %6, align 4
  %11 = sext i32 %10 to i64
  %12 = load i64, ptr %2, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %.lr.ph, label %28

.lr.ph:                                           ; preds = %1
  br label %14

14:                                               ; preds = %.lr.ph, %14
  %15 = load ptr, ptr %3, align 8
  %16 = call i64 @random4()
  %17 = getelementptr inbounds nuw i8, ptr %15, i64 %16
  %18 = load i8, ptr %17, align 1
  %19 = load ptr, ptr %5, align 8
  store i8 %18, ptr %19, align 1
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds nuw i8, ptr %20, i32 1
  store ptr %21, ptr %5, align 8
  %22 = load i32, ptr %6, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %6, align 4
  %24 = load i32, ptr %6, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, ptr %2, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %14, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %14
  br label %28

28:                                               ; preds = %._crit_edge, %1
  %29 = load ptr, ptr %4, align 8
  ret ptr %29
}

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @compdecomp(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca [512 x i64], align 16
  %16 = alloca [256 x i64], align 16
  %17 = alloca [512 x i32], align 16
  %18 = alloca [256 x i32], align 16
  %19 = alloca [256 x i8], align 16
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i8, align 1
  %28 = alloca i32, align 4
  %29 = alloca [256 x i32], align 16
  %30 = alloca [256 x i8], align 16
  %31 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %32 = load ptr, ptr %3, align 8
  store ptr %32, ptr %13, align 8
  %33 = load i64, ptr %4, align 8
  %34 = add i64 %33, 1
  %35 = call ptr @malloc(i64 noundef %34) #6
  store ptr %35, ptr %14, align 8
  %36 = load ptr, ptr %14, align 8
  %37 = load i64, ptr %4, align 8
  %38 = add i64 %37, 1
  %39 = mul i64 1, %38
  call void @llvm.memset.p0.i64(ptr align 1 %36, i8 0, i64 %39, i1 false)
  %40 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %40, i8 0, i64 4096, i1 false)
  %41 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %41, i8 0, i64 2048, i1 false)
  %42 = getelementptr inbounds [512 x i32], ptr %17, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %42, i8 0, i64 2048, i1 false)
  %43 = getelementptr inbounds [256 x i32], ptr %18, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %43, i8 0, i64 1024, i1 false)
  %44 = getelementptr inbounds [256 x i8], ptr %19, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %44, i8 0, i64 256, i1 false)
  store i64 0, ptr %5, align 8
  %45 = load i64, ptr %5, align 8
  %46 = load i64, ptr %4, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %.lr.ph, label %62

.lr.ph:                                           ; preds = %2
  br label %48

48:                                               ; preds = %.lr.ph, %48
  %49 = load ptr, ptr %13, align 8
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i64
  %52 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %51
  %53 = load i64, ptr %52, align 8
  %54 = add i64 %53, 1
  store i64 %54, ptr %52, align 8
  %55 = load ptr, ptr %13, align 8
  %56 = getelementptr inbounds nuw i8, ptr %55, i32 1
  store ptr %56, ptr %13, align 8
  %57 = load i64, ptr %5, align 8
  %58 = add i64 %57, 1
  store i64 %58, ptr %5, align 8
  %59 = load i64, ptr %5, align 8
  %60 = load i64, ptr %4, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %48, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %48
  br label %62

62:                                               ; preds = %._crit_edge, %2
  store i64 0, ptr %7, align 8
  store i64 0, ptr %5, align 8
  %63 = load i64, ptr %5, align 8
  %64 = icmp ult i64 %63, 256
  br i1 %64, label %.lr.ph2, label %81

.lr.ph2:                                          ; preds = %62
  br label %65

65:                                               ; preds = %.lr.ph2, %76
  %66 = load i64, ptr %5, align 8
  %67 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %66
  %68 = load i64, ptr %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i64, ptr %5, align 8
  %72 = load i64, ptr %7, align 8
  %73 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %72
  store i64 %71, ptr %73, align 8
  %74 = load i64, ptr %7, align 8
  %75 = add i64 %74, 1
  store i64 %75, ptr %7, align 8
  br label %76

76:                                               ; preds = %65, %70
  %77 = load i64, ptr %5, align 8
  %78 = add i64 %77, 1
  store i64 %78, ptr %5, align 8
  %79 = load i64, ptr %5, align 8
  %80 = icmp ult i64 %79, 256
  br i1 %80, label %65, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %76
  br label %81

81:                                               ; preds = %._crit_edge3, %62
  %82 = load i64, ptr %7, align 8
  store i64 %82, ptr %5, align 8
  %83 = load i64, ptr %5, align 8
  %84 = icmp ugt i64 %83, 0
  br i1 %84, label %.lr.ph5, label %.preheader

.lr.ph5:                                          ; preds = %81
  br label %87

..preheader_crit_edge:                            ; preds = %87
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %81
  %85 = load i64, ptr %7, align 8
  %86 = icmp ugt i64 %85, 1
  br i1 %86, label %.lr.ph6, label %142

.lr.ph6:                                          ; preds = %.preheader
  br label %98

87:                                               ; preds = %.lr.ph5, %87
  %88 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  %89 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %90 = load i64, ptr %7, align 8
  %91 = trunc i64 %90 to i32
  %92 = load i64, ptr %5, align 8
  %93 = trunc i64 %92 to i32
  call void @heap_adjust(ptr noundef %88, ptr noundef %89, i32 noundef %91, i32 noundef %93)
  %94 = load i64, ptr %5, align 8
  %95 = add i64 %94, -1
  store i64 %95, ptr %5, align 8
  %96 = load i64, ptr %5, align 8
  %97 = icmp ugt i64 %96, 0
  br i1 %97, label %87, label %..preheader_crit_edge, !llvm.loop !11

98:                                               ; preds = %.lr.ph6, %98
  %99 = load i64, ptr %7, align 8
  %100 = add i64 %99, -1
  store i64 %100, ptr %7, align 8
  %101 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %102 = load i64, ptr %101, align 16
  store i64 %102, ptr %20, align 8
  %103 = load i64, ptr %7, align 8
  %104 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %103
  %105 = load i64, ptr %104, align 8
  %106 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  store i64 %105, ptr %106, align 16
  %107 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  %108 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %109 = load i64, ptr %7, align 8
  %110 = trunc i64 %109 to i32
  call void @heap_adjust(ptr noundef %107, ptr noundef %108, i32 noundef %110, i32 noundef 1)
  %111 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %112 = load i64, ptr %111, align 16
  %113 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %112
  %114 = load i64, ptr %113, align 8
  %115 = load i64, ptr %20, align 8
  %116 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %115
  %117 = load i64, ptr %116, align 8
  %118 = add i64 %114, %117
  %119 = load i64, ptr %7, align 8
  %120 = add i64 256, %119
  %121 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %120
  store i64 %118, ptr %121, align 8
  %122 = load i64, ptr %7, align 8
  %123 = add i64 256, %122
  %124 = trunc i64 %123 to i32
  %125 = load i64, ptr %20, align 8
  %126 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %125
  store i32 %124, ptr %126, align 4
  %127 = load i64, ptr %7, align 8
  %128 = sub i64 -256, %127
  %129 = trunc i64 %128 to i32
  %130 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %131 = load i64, ptr %130, align 16
  %132 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %131
  store i32 %129, ptr %132, align 4
  %133 = load i64, ptr %7, align 8
  %134 = add i64 256, %133
  %135 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  store i64 %134, ptr %135, align 16
  %136 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  %137 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %138 = load i64, ptr %7, align 8
  %139 = trunc i64 %138 to i32
  call void @heap_adjust(ptr noundef %136, ptr noundef %137, i32 noundef %139, i32 noundef 1)
  %140 = load i64, ptr %7, align 8
  %141 = icmp ugt i64 %140, 1
  br i1 %141, label %98, label %._crit_edge7, !llvm.loop !12

._crit_edge7:                                     ; preds = %98
  br label %142

142:                                              ; preds = %._crit_edge7, %.preheader
  %143 = load i64, ptr %7, align 8
  %144 = add i64 256, %143
  %145 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %144
  store i32 0, ptr %145, align 4
  store i64 0, ptr %23, align 8
  store i64 0, ptr %24, align 8
  store i64 0, ptr %21, align 8
  %146 = load i64, ptr %21, align 8
  %147 = icmp ult i64 %146, 256
  br i1 %147, label %.lr.ph12, label %209

.lr.ph12:                                         ; preds = %142
  br label %148

148:                                              ; preds = %.lr.ph12, %204
  %149 = load i64, ptr %21, align 8
  %150 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %149
  %151 = load i64, ptr %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %148
  %154 = load i64, ptr %21, align 8
  %155 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %154
  store i32 0, ptr %155, align 4
  %156 = load i64, ptr %21, align 8
  %157 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %156
  store i8 0, ptr %157, align 1
  br label %204

158:                                              ; preds = %148
  store i64 0, ptr %5, align 8
  store i64 1, ptr %6, align 8
  store i64 0, ptr %22, align 8
  %159 = load i64, ptr %21, align 8
  %160 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %159
  %161 = load i32, ptr %160, align 4
  store i32 %161, ptr %25, align 4
  %162 = load i32, ptr %25, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %.lr.ph9, label %184

.lr.ph9:                                          ; preds = %158
  br label %164

164:                                              ; preds = %.lr.ph9, %173
  %165 = load i32, ptr %25, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %164
  %168 = load i64, ptr %6, align 8
  %169 = load i64, ptr %22, align 8
  %170 = add i64 %169, %168
  store i64 %170, ptr %22, align 8
  %171 = load i32, ptr %25, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, ptr %25, align 4
  br label %173

173:                                              ; preds = %167, %164
  %174 = load i32, ptr %25, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [512 x i32], ptr %17, i64 0, i64 %175
  %177 = load i32, ptr %176, align 4
  store i32 %177, ptr %25, align 4
  %178 = load i64, ptr %6, align 8
  %179 = shl i64 %178, 1
  store i64 %179, ptr %6, align 8
  %180 = load i64, ptr %5, align 8
  %181 = add i64 %180, 1
  store i64 %181, ptr %5, align 8
  %182 = load i32, ptr %25, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %164, label %._crit_edge10, !llvm.loop !13

._crit_edge10:                                    ; preds = %173
  br label %184

184:                                              ; preds = %._crit_edge10, %158
  %185 = load i64, ptr %22, align 8
  %186 = trunc i64 %185 to i32
  %187 = load i64, ptr %21, align 8
  %188 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %187
  store i32 %186, ptr %188, align 4
  %189 = load i64, ptr %5, align 8
  %190 = trunc i64 %189 to i8
  %191 = load i64, ptr %21, align 8
  %192 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %191
  store i8 %190, ptr %192, align 1
  %193 = load i64, ptr %22, align 8
  %194 = load i64, ptr %23, align 8
  %195 = icmp ugt i64 %193, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %184
  %197 = load i64, ptr %22, align 8
  store i64 %197, ptr %23, align 8
  br label %198

198:                                              ; preds = %196, %184
  %199 = load i64, ptr %5, align 8
  %200 = load i64, ptr %24, align 8
  %201 = icmp ugt i64 %199, %200
  br i1 %201, label %202, label %204

202:                                              ; preds = %198
  %203 = load i64, ptr %5, align 8
  store i64 %203, ptr %24, align 8
  br label %204

204:                                              ; preds = %153, %202, %198
  %205 = load i64, ptr %21, align 8
  %206 = add i64 %205, 1
  store i64 %206, ptr %21, align 8
  %207 = load i64, ptr %21, align 8
  %208 = icmp ult i64 %207, 256
  br i1 %208, label %148, label %._crit_edge13, !llvm.loop !14

._crit_edge13:                                    ; preds = %204
  br label %209

209:                                              ; preds = %._crit_edge13, %142
  %210 = load i64, ptr %24, align 8
  %211 = icmp ugt i64 %210, 32
  br i1 %211, label %212, label %215

212:                                              ; preds = %209
  %213 = call ptr @__acrt_iob_func(i32 noundef 2)
  %214 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %213, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

215:                                              ; preds = %209
  store i64 0, ptr %26, align 8
  store i8 0, ptr %27, align 1
  store i32 -1, ptr %28, align 4
  %216 = load ptr, ptr %3, align 8
  store ptr %216, ptr %13, align 8
  %217 = load i64, ptr %23, align 8
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %215
  %220 = call ptr @__acrt_iob_func(i32 noundef 2)
  %221 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %220, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

222:                                              ; preds = %215
  store i64 0, ptr %6, align 8
  %223 = load i64, ptr %6, align 8
  %224 = load i64, ptr %4, align 8
  %225 = icmp ult i64 %223, %224
  br i1 %225, label %.lr.ph18, label %304

.lr.ph18:                                         ; preds = %222
  br label %226

226:                                              ; preds = %.lr.ph18, %296
  %227 = load ptr, ptr %13, align 8
  %228 = load i8, ptr %227, align 1
  %229 = zext i8 %228 to i64
  %230 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %229
  %231 = load i8, ptr %230, align 1
  %232 = zext i8 %231 to i32
  %233 = sub nsw i32 %232, 1
  %234 = shl i32 1, %233
  %235 = sext i32 %234 to i64
  store i64 %235, ptr %8, align 8
  store i64 0, ptr %5, align 8
  %236 = load i64, ptr %5, align 8
  %237 = load ptr, ptr %13, align 8
  %238 = load i8, ptr %237, align 1
  %239 = zext i8 %238 to i64
  %240 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %239
  %241 = load i8, ptr %240, align 1
  %242 = zext i8 %241 to i64
  %243 = icmp ult i64 %236, %242
  br i1 %243, label %.lr.ph15, label %296

.lr.ph15:                                         ; preds = %226
  br label %244

244:                                              ; preds = %.lr.ph15, %283
  %245 = load i32, ptr %28, align 4
  %246 = icmp eq i32 %245, 7
  br i1 %246, label %247, label %261

247:                                              ; preds = %244
  %248 = load i8, ptr %27, align 1
  %249 = load ptr, ptr %14, align 8
  %250 = load i64, ptr %26, align 8
  %251 = getelementptr inbounds nuw i8, ptr %249, i64 %250
  store i8 %248, ptr %251, align 1
  %252 = load i64, ptr %26, align 8
  %253 = add i64 %252, 1
  store i64 %253, ptr %26, align 8
  %254 = load i64, ptr %26, align 8
  %255 = load i64, ptr %4, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %260

257:                                              ; preds = %247
  %258 = call ptr @__acrt_iob_func(i32 noundef 2)
  %259 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %258, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

260:                                              ; preds = %247
  store i32 0, ptr %28, align 4
  store i8 0, ptr %27, align 1
  br label %268

261:                                              ; preds = %244
  %262 = load i32, ptr %28, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, ptr %28, align 4
  %264 = load i8, ptr %27, align 1
  %265 = sext i8 %264 to i32
  %266 = shl i32 %265, 1
  %267 = trunc i32 %266 to i8
  store i8 %267, ptr %27, align 1
  br label %268

268:                                              ; preds = %261, %260
  %269 = load ptr, ptr %13, align 8
  %270 = load i8, ptr %269, align 1
  %271 = zext i8 %270 to i64
  %272 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %271
  %273 = load i32, ptr %272, align 4
  %274 = zext i32 %273 to i64
  %275 = load i64, ptr %8, align 8
  %276 = and i64 %274, %275
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %283

278:                                              ; preds = %268
  %279 = load i8, ptr %27, align 1
  %280 = sext i8 %279 to i32
  %281 = or i32 %280, 1
  %282 = trunc i32 %281 to i8
  store i8 %282, ptr %27, align 1
  br label %283

283:                                              ; preds = %278, %268
  %284 = load i64, ptr %8, align 8
  %285 = lshr i64 %284, 1
  store i64 %285, ptr %8, align 8
  %286 = load i64, ptr %5, align 8
  %287 = add i64 %286, 1
  store i64 %287, ptr %5, align 8
  %288 = load i64, ptr %5, align 8
  %289 = load ptr, ptr %13, align 8
  %290 = load i8, ptr %289, align 1
  %291 = zext i8 %290 to i64
  %292 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %291
  %293 = load i8, ptr %292, align 1
  %294 = zext i8 %293 to i64
  %295 = icmp ult i64 %288, %294
  br i1 %295, label %244, label %._crit_edge16, !llvm.loop !15

._crit_edge16:                                    ; preds = %283
  br label %296

296:                                              ; preds = %._crit_edge16, %226
  %297 = load ptr, ptr %13, align 8
  %298 = getelementptr inbounds nuw i8, ptr %297, i32 1
  store ptr %298, ptr %13, align 8
  %299 = load i64, ptr %6, align 8
  %300 = add i64 %299, 1
  store i64 %300, ptr %6, align 8
  %301 = load i64, ptr %6, align 8
  %302 = load i64, ptr %4, align 8
  %303 = icmp ult i64 %301, %302
  br i1 %303, label %226, label %._crit_edge19, !llvm.loop !16

._crit_edge19:                                    ; preds = %296
  br label %304

304:                                              ; preds = %._crit_edge19, %222
  %305 = load i32, ptr %28, align 4
  %306 = sub nsw i32 7, %305
  %307 = load i8, ptr %27, align 1
  %308 = sext i8 %307 to i32
  %309 = shl i32 %308, %306
  %310 = trunc i32 %309 to i8
  store i8 %310, ptr %27, align 1
  %311 = load i8, ptr %27, align 1
  %312 = load ptr, ptr %14, align 8
  %313 = load i64, ptr %26, align 8
  %314 = getelementptr inbounds nuw i8, ptr %312, i64 %313
  store i8 %311, ptr %314, align 1
  %315 = load i64, ptr %26, align 8
  %316 = add i64 %315, 1
  store i64 %316, ptr %26, align 8
  %317 = getelementptr inbounds [256 x i32], ptr %29, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %317, i8 0, i64 1024, i1 false)
  %318 = getelementptr inbounds [256 x i8], ptr %30, i64 0, i64 0
  store ptr %318, ptr %31, align 8
  store i64 0, ptr %6, align 8
  %319 = load i64, ptr %6, align 8
  %320 = icmp ult i64 %319, 256
  br i1 %320, label %.lr.ph24, label %384

.lr.ph24:                                         ; preds = %304
  br label %321

321:                                              ; preds = %.lr.ph24, %379
  %322 = load i64, ptr %6, align 8
  %323 = trunc i64 %322 to i8
  %324 = load ptr, ptr %31, align 8
  store i8 %323, ptr %324, align 1
  %325 = load ptr, ptr %31, align 8
  %326 = getelementptr inbounds nuw i8, ptr %325, i32 1
  store ptr %326, ptr %31, align 8
  %327 = load i64, ptr %6, align 8
  %328 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %327
  %329 = load i32, ptr %328, align 4
  %330 = load i64, ptr %6, align 8
  %331 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %330
  %332 = load i8, ptr %331, align 1
  %333 = zext i8 %332 to i32
  %334 = or i32 %329, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %379

336:                                              ; preds = %321
  store i32 0, ptr %9, align 4
  %337 = load i64, ptr %6, align 8
  %338 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %337
  %339 = load i8, ptr %338, align 1
  %340 = zext i8 %339 to i32
  %341 = sub nsw i32 %340, 1
  %342 = shl i32 1, %341
  %343 = sext i32 %342 to i64
  store i64 %343, ptr %8, align 8
  store i64 0, ptr %5, align 8
  %344 = load i64, ptr %5, align 8
  %345 = load i64, ptr %6, align 8
  %346 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %345
  %347 = load i8, ptr %346, align 1
  %348 = zext i8 %347 to i64
  %349 = icmp ult i64 %344, %348
  br i1 %349, label %.lr.ph21, label %375

.lr.ph21:                                         ; preds = %336
  br label %350

350:                                              ; preds = %.lr.ph21, %364
  %351 = load i32, ptr %9, align 4
  %352 = mul i32 %351, 2
  %353 = add i32 %352, 1
  store i32 %353, ptr %9, align 4
  %354 = load i64, ptr %6, align 8
  %355 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %354
  %356 = load i32, ptr %355, align 4
  %357 = zext i32 %356 to i64
  %358 = load i64, ptr %8, align 8
  %359 = and i64 %357, %358
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %364

361:                                              ; preds = %350
  %362 = load i32, ptr %9, align 4
  %363 = add i32 %362, 1
  store i32 %363, ptr %9, align 4
  br label %364

364:                                              ; preds = %361, %350
  %365 = load i64, ptr %8, align 8
  %366 = lshr i64 %365, 1
  store i64 %366, ptr %8, align 8
  %367 = load i64, ptr %5, align 8
  %368 = add i64 %367, 1
  store i64 %368, ptr %5, align 8
  %369 = load i64, ptr %5, align 8
  %370 = load i64, ptr %6, align 8
  %371 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %370
  %372 = load i8, ptr %371, align 1
  %373 = zext i8 %372 to i64
  %374 = icmp ult i64 %369, %373
  br i1 %374, label %350, label %._crit_edge22, !llvm.loop !17

._crit_edge22:                                    ; preds = %364
  br label %375

375:                                              ; preds = %._crit_edge22, %336
  %376 = load i32, ptr %9, align 4
  %377 = load i64, ptr %6, align 8
  %378 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %377
  store i32 %376, ptr %378, align 4
  br label %379

379:                                              ; preds = %321, %375
  %380 = load i64, ptr %6, align 8
  %381 = add i64 %380, 1
  store i64 %381, ptr %6, align 8
  %382 = load i64, ptr %6, align 8
  %383 = icmp ult i64 %382, 256
  br i1 %383, label %321, label %._crit_edge25, !llvm.loop !18

._crit_edge25:                                    ; preds = %379
  br label %384

384:                                              ; preds = %._crit_edge25, %304
  store i64 1, ptr %5, align 8
  %385 = load i64, ptr %5, align 8
  %386 = icmp ult i64 %385, 256
  br i1 %386, label %.lr.ph30, label %431

.lr.ph30:                                         ; preds = %384
  br label %387

387:                                              ; preds = %.lr.ph30, %.critedge
  %388 = load i64, ptr %5, align 8
  %389 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %388
  %390 = load i32, ptr %389, align 4
  store i32 %390, ptr %10, align 4
  %391 = load i64, ptr %5, align 8
  %392 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %391
  %393 = load i8, ptr %392, align 1
  store i8 %393, ptr %11, align 1
  %394 = load i64, ptr %5, align 8
  store i64 %394, ptr %6, align 8
  %395 = load i64, ptr %6, align 8
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %.lr.ph27, label %.critedge

.lr.ph27:                                         ; preds = %387
  br label %397

397:                                              ; preds = %.lr.ph27, %404
  %398 = load i64, ptr %6, align 8
  %399 = sub i64 %398, 1
  %400 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %399
  %401 = load i32, ptr %400, align 4
  %402 = load i32, ptr %10, align 4
  %403 = icmp ugt i32 %401, %402
  br i1 %403, label %404, label %..critedge_crit_edge28

404:                                              ; preds = %397
  %405 = load i64, ptr %6, align 8
  %406 = sub i64 %405, 1
  %407 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %406
  %408 = load i32, ptr %407, align 4
  %409 = load i64, ptr %6, align 8
  %410 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %409
  store i32 %408, ptr %410, align 4
  %411 = load i64, ptr %6, align 8
  %412 = sub i64 %411, 1
  %413 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %412
  %414 = load i8, ptr %413, align 1
  %415 = load i64, ptr %6, align 8
  %416 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %415
  store i8 %414, ptr %416, align 1
  %417 = load i64, ptr %6, align 8
  %418 = add i64 %417, -1
  store i64 %418, ptr %6, align 8
  %419 = load i64, ptr %6, align 8
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %397, label %..critedge_crit_edge, !llvm.loop !19

..critedge_crit_edge:                             ; preds = %404
  br label %.critedge

..critedge_crit_edge28:                           ; preds = %397
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge28, %..critedge_crit_edge, %387
  %421 = load i32, ptr %10, align 4
  %422 = load i64, ptr %6, align 8
  %423 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %422
  store i32 %421, ptr %423, align 4
  %424 = load i8, ptr %11, align 1
  %425 = load i64, ptr %6, align 8
  %426 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %425
  store i8 %424, ptr %426, align 1
  %427 = load i64, ptr %5, align 8
  %428 = add i64 %427, 1
  store i64 %428, ptr %5, align 8
  %429 = load i64, ptr %5, align 8
  %430 = icmp ult i64 %429, 256
  br i1 %430, label %387, label %._crit_edge31, !llvm.loop !20

._crit_edge31:                                    ; preds = %.critedge
  br label %431

431:                                              ; preds = %._crit_edge31, %384
  store i64 0, ptr %6, align 8
  %432 = load i64, ptr %6, align 8
  %433 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %432
  %434 = load i32, ptr %433, align 4
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %.lr.ph33, label %443

.lr.ph33:                                         ; preds = %431
  br label %436

436:                                              ; preds = %.lr.ph33, %436
  %437 = load i64, ptr %6, align 8
  %438 = add i64 %437, 1
  store i64 %438, ptr %6, align 8
  %439 = load i64, ptr %6, align 8
  %440 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %439
  %441 = load i32, ptr %440, align 4
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %436, label %._crit_edge34, !llvm.loop !21

._crit_edge34:                                    ; preds = %436
  br label %443

443:                                              ; preds = %._crit_edge34, %431
  store i32 0, ptr %9, align 4
  %444 = load i64, ptr %6, align 8
  store i64 %444, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  %445 = load ptr, ptr %14, align 8
  store ptr %445, ptr %12, align 8
  %446 = load ptr, ptr %3, align 8
  store ptr %446, ptr %13, align 8
  %447 = load i64, ptr %7, align 8
  %448 = load i64, ptr %4, align 8
  %449 = icmp ult i64 %447, %448
  br i1 %449, label %.lr.ph39, label %506

.lr.ph39:                                         ; preds = %443
  br label %450

450:                                              ; preds = %.lr.ph39, %502
  %451 = load i32, ptr %9, align 4
  %452 = mul i32 %451, 2
  %453 = add i32 %452, 1
  store i32 %453, ptr %9, align 4
  %454 = load ptr, ptr %12, align 8
  %455 = load i8, ptr %454, align 1
  %456 = zext i8 %455 to i64
  %457 = load i64, ptr %8, align 8
  %458 = and i64 %456, %457
  %459 = icmp ne i64 %458, 0
  br i1 %459, label %460, label %463

460:                                              ; preds = %450
  %461 = load i32, ptr %9, align 4
  %462 = add i32 %461, 1
  store i32 %462, ptr %9, align 4
  br label %463

463:                                              ; preds = %460, %450
  %464 = load i64, ptr %5, align 8
  %465 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %464
  %466 = load i32, ptr %465, align 4
  %467 = load i32, ptr %9, align 4
  %468 = icmp ult i32 %466, %467
  br i1 %468, label %.lr.ph36, label %477

.lr.ph36:                                         ; preds = %463
  br label %469

469:                                              ; preds = %.lr.ph36, %469
  %470 = load i64, ptr %5, align 8
  %471 = add i64 %470, 1
  store i64 %471, ptr %5, align 8
  %472 = load i64, ptr %5, align 8
  %473 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %472
  %474 = load i32, ptr %473, align 4
  %475 = load i32, ptr %9, align 4
  %476 = icmp ult i32 %474, %475
  br i1 %476, label %469, label %._crit_edge37, !llvm.loop !22

._crit_edge37:                                    ; preds = %469
  br label %477

477:                                              ; preds = %._crit_edge37, %463
  %478 = load i32, ptr %9, align 4
  %479 = load i64, ptr %5, align 8
  %480 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %479
  %481 = load i32, ptr %480, align 4
  %482 = icmp eq i32 %478, %481
  br i1 %482, label %483, label %493

483:                                              ; preds = %477
  %484 = load i64, ptr %5, align 8
  %485 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %484
  %486 = load i8, ptr %485, align 1
  %487 = load ptr, ptr %13, align 8
  store i8 %486, ptr %487, align 1
  %488 = load ptr, ptr %13, align 8
  %489 = getelementptr inbounds nuw i8, ptr %488, i32 1
  store ptr %489, ptr %13, align 8
  %490 = load i64, ptr %7, align 8
  %491 = add i64 %490, 1
  store i64 %491, ptr %7, align 8
  store i32 0, ptr %9, align 4
  %492 = load i64, ptr %6, align 8
  store i64 %492, ptr %5, align 8
  br label %493

493:                                              ; preds = %483, %477
  %494 = load i64, ptr %8, align 8
  %495 = icmp ugt i64 %494, 1
  br i1 %495, label %496, label %499

496:                                              ; preds = %493
  %497 = load i64, ptr %8, align 8
  %498 = lshr i64 %497, 1
  store i64 %498, ptr %8, align 8
  br label %502

499:                                              ; preds = %493
  store i64 128, ptr %8, align 8
  %500 = load ptr, ptr %12, align 8
  %501 = getelementptr inbounds nuw i8, ptr %500, i32 1
  store ptr %501, ptr %12, align 8
  br label %502

502:                                              ; preds = %499, %496
  %503 = load i64, ptr %7, align 8
  %504 = load i64, ptr %4, align 8
  %505 = icmp ult i64 %503, %504
  br i1 %505, label %450, label %._crit_edge40, !llvm.loop !23

._crit_edge40:                                    ; preds = %502
  br label %506

506:                                              ; preds = %._crit_edge40, %443
  %507 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %507)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal void @heap_adjust(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  %11 = load ptr, ptr %6, align 8
  %12 = load i32, ptr %8, align 4
  %13 = sub nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, ptr %11, i64 %14
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, ptr %10, align 4
  %18 = load i32, ptr %8, align 4
  %19 = load i32, ptr %7, align 4
  %20 = sdiv i32 %19, 2
  %21 = icmp sle i32 %18, %20
  br i1 %21, label %.lr.ph, label %84

.lr.ph:                                           ; preds = %4
  br label %22

22:                                               ; preds = %.lr.ph, %67
  %23 = load i32, ptr %8, align 4
  %24 = load i32, ptr %8, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, ptr %9, align 4
  %26 = load i32, ptr %9, align 4
  %27 = load i32, ptr %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %22
  %30 = load ptr, ptr %5, align 8
  %31 = load ptr, ptr %6, align 8
  %32 = load i32, ptr %9, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, ptr %31, i64 %34
  %36 = load i64, ptr %35, align 8
  %37 = getelementptr inbounds nuw i64, ptr %30, i64 %36
  %38 = load i64, ptr %37, align 8
  %39 = load ptr, ptr %5, align 8
  %40 = load ptr, ptr %6, align 8
  %41 = load i32, ptr %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, ptr %40, i64 %42
  %44 = load i64, ptr %43, align 8
  %45 = getelementptr inbounds nuw i64, ptr %39, i64 %44
  %46 = load i64, ptr %45, align 8
  %47 = icmp ugt i64 %38, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %29
  %49 = load i32, ptr %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr %9, align 4
  br label %51

51:                                               ; preds = %48, %29, %22
  %52 = load ptr, ptr %5, align 8
  %53 = load i32, ptr %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, ptr %52, i64 %54
  %56 = load i64, ptr %55, align 8
  %57 = load ptr, ptr %5, align 8
  %58 = load ptr, ptr %6, align 8
  %59 = load i32, ptr %9, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, ptr %58, i64 %61
  %63 = load i64, ptr %62, align 8
  %64 = getelementptr inbounds nuw i64, ptr %57, i64 %63
  %65 = load i64, ptr %64, align 8
  %66 = icmp ult i64 %56, %65
  br i1 %66, label %._crit_edge, label %67

67:                                               ; preds = %51
  %68 = load ptr, ptr %6, align 8
  %69 = load i32, ptr %9, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, ptr %68, i64 %71
  %73 = load i64, ptr %72, align 8
  %74 = load ptr, ptr %6, align 8
  %75 = load i32, ptr %8, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, ptr %74, i64 %77
  store i64 %73, ptr %78, align 8
  %79 = load i32, ptr %9, align 4
  store i32 %79, ptr %8, align 4
  %80 = load i32, ptr %8, align 4
  %81 = load i32, ptr %7, align 4
  %82 = sdiv i32 %81, 2
  %83 = icmp sle i32 %80, %82
  br i1 %83, label %22, label %._crit_edge1, !llvm.loop !24

._crit_edge:                                      ; preds = %51
  br label %84

._crit_edge1:                                     ; preds = %67
  br label %84

84:                                               ; preds = %._crit_edge1, %._crit_edge, %4
  %85 = load i32, ptr %10, align 4
  %86 = sext i32 %85 to i64
  %87 = load ptr, ptr %6, align 8
  %88 = load i32, ptr %8, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, ptr %87, i64 %90
  store i64 %86, ptr %91, align 8
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
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca ptr, align 8
  %9 = alloca double, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store i8 0, ptr %7, align 1
  %10 = load i32, ptr %4, align 4
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %29

12:                                               ; preds = %2
  store i32 1, ptr %6, align 4
  %13 = load i32, ptr %6, align 4
  %14 = load i32, ptr %4, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %12
  br label %16

16:                                               ; preds = %.lr.ph, %23
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8
  %20 = call i32 @strcmp(ptr noundef %19, ptr noundef @.str.4) #7
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  store i8 1, ptr %7, align 1
  br label %29

23:                                               ; preds = %16
  %24 = load i32, ptr %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %6, align 4
  %26 = load i32, ptr %6, align 4
  %27 = load i32, ptr %4, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %16, label %..loopexit_crit_edge, !llvm.loop !25

..loopexit_crit_edge:                             ; preds = %23
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %12
  br label %29

29:                                               ; preds = %.loopexit, %22, %2
  %30 = call ptr @generate_test_data(i64 noundef 10000000)
  store ptr %30, ptr %8, align 8
  store i32 0, ptr %6, align 4
  %31 = load i32, ptr %6, align 4
  %32 = icmp slt i32 %31, 30
  br i1 %32, label %.lr.ph1, label %39

.lr.ph1:                                          ; preds = %29
  br label %33

33:                                               ; preds = %.lr.ph1, %33
  %34 = load ptr, ptr %8, align 8
  call void @compdecomp(ptr noundef %34, i64 noundef 10000000)
  %35 = load i32, ptr %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %6, align 4
  %37 = load i32, ptr %6, align 4
  %38 = icmp slt i32 %37, 30
  br i1 %38, label %33, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %33
  br label %39

39:                                               ; preds = %._crit_edge, %29
  store double 0.000000e+00, ptr %9, align 8
  %40 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %40)
  %41 = load i8, ptr %7, align 1
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = call ptr @__acrt_iob_func(i32 noundef 1)
  %45 = load double, ptr %9, align 8
  %46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef @.str.5, double noundef %45) #7
  br label %51

47:                                               ; preds = %39
  %48 = call ptr @__acrt_iob_func(i32 noundef 1)
  %49 = load double, ptr %9, align 8
  %50 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef @.str.6, double noundef %49) #7
  br label %51

51:                                               ; preds = %47, %43
  %52 = call ptr @__acrt_iob_func(i32 noundef 1)
  %53 = call i32 @fflush(ptr noundef %52)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

declare dso_local i32 @fflush(ptr noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal i64 @random4() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i32, ptr @seed, align 4
  %4 = xor i32 %3, 123459876
  store i32 %4, ptr @seed, align 4
  %5 = load i32, ptr @seed, align 4
  %6 = sdiv i32 %5, 127773
  store i32 %6, ptr %1, align 4
  %7 = load i32, ptr @seed, align 4
  %8 = load i32, ptr %1, align 4
  %9 = mul nsw i32 %8, 127773
  %10 = sub nsw i32 %7, %9
  %11 = mul nsw i32 16807, %10
  %12 = load i32, ptr %1, align 4
  %13 = mul nsw i32 2836, %12
  %14 = sub nsw i32 %11, %13
  store i32 %14, ptr @seed, align 4
  %15 = load i32, ptr @seed, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %0
  %18 = load i32, ptr @seed, align 4
  %19 = add nsw i32 %18, 2147483647
  store i32 %19, ptr @seed, align 4
  br label %20

20:                                               ; preds = %17, %0
  %21 = load i32, ptr @seed, align 4
  %22 = srem i32 %21, 32
  %23 = sext i32 %22 to i64
  store i64 %23, ptr %2, align 8
  %24 = load i32, ptr @seed, align 4
  %25 = xor i32 %24, 123459876
  store i32 %25, ptr @seed, align 4
  %26 = load i64, ptr %2, align 8
  ret i64 %26
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
