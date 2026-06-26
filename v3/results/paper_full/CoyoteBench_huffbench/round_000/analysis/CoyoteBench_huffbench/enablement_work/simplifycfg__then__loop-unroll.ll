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
  br label %10

10:                                               ; preds = %15, %1
  %11 = load i32, ptr %6, align 4
  %12 = sext i32 %11 to i64
  %13 = load i64, ptr %2, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %10
  %16 = load ptr, ptr %3, align 8
  %17 = call i64 @random4()
  %18 = getelementptr inbounds nuw i8, ptr %16, i64 %17
  %19 = load i8, ptr %18, align 1
  %20 = load ptr, ptr %5, align 8
  store i8 %19, ptr %20, align 1
  %21 = load ptr, ptr %5, align 8
  %22 = getelementptr inbounds nuw i8, ptr %21, i32 1
  store ptr %22, ptr %5, align 8
  %23 = load i32, ptr %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %6, align 4
  br label %10, !llvm.loop !7

25:                                               ; preds = %10
  %26 = load ptr, ptr %4, align 8
  ret ptr %26
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
  br label %45

45:                                               ; preds = %49, %2
  %46 = load i64, ptr %5, align 8
  %47 = load i64, ptr %4, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %45
  %50 = load ptr, ptr %13, align 8
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i64
  %53 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %52
  %54 = load i64, ptr %53, align 8
  %55 = add i64 %54, 1
  store i64 %55, ptr %53, align 8
  %56 = load ptr, ptr %13, align 8
  %57 = getelementptr inbounds nuw i8, ptr %56, i32 1
  store ptr %57, ptr %13, align 8
  %58 = load i64, ptr %5, align 8
  %59 = add i64 %58, 1
  store i64 %59, ptr %5, align 8
  br label %45, !llvm.loop !9

60:                                               ; preds = %45
  store i64 0, ptr %7, align 8
  store i64 0, ptr %5, align 8
  br label %61

61:                                               ; preds = %75, %60
  %62 = load i64, ptr %5, align 8
  %63 = icmp ult i64 %62, 256
  br i1 %63, label %64, label %78

64:                                               ; preds = %61
  %65 = load i64, ptr %5, align 8
  %66 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %65
  %67 = load i64, ptr %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load i64, ptr %5, align 8
  %71 = load i64, ptr %7, align 8
  %72 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %71
  store i64 %70, ptr %72, align 8
  %73 = load i64, ptr %7, align 8
  %74 = add i64 %73, 1
  store i64 %74, ptr %7, align 8
  br label %75

75:                                               ; preds = %64, %69
  %76 = load i64, ptr %5, align 8
  %77 = add i64 %76, 1
  store i64 %77, ptr %5, align 8
  br label %61, !llvm.loop !10

78:                                               ; preds = %61
  %79 = load i64, ptr %7, align 8
  store i64 %79, ptr %5, align 8
  br label %80

80:                                               ; preds = %83, %78
  %81 = load i64, ptr %5, align 8
  %82 = icmp ugt i64 %81, 0
  br i1 %82, label %83, label %.preheader

.preheader:                                       ; preds = %80
  br label %92

83:                                               ; preds = %80
  %84 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  %85 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %86 = load i64, ptr %7, align 8
  %87 = trunc i64 %86 to i32
  %88 = load i64, ptr %5, align 8
  %89 = trunc i64 %88 to i32
  call void @heap_adjust(ptr noundef %84, ptr noundef %85, i32 noundef %87, i32 noundef %89)
  %90 = load i64, ptr %5, align 8
  %91 = add i64 %90, -1
  store i64 %91, ptr %5, align 8
  br label %80, !llvm.loop !11

92:                                               ; preds = %.preheader, %95
  %93 = load i64, ptr %7, align 8
  %94 = icmp ugt i64 %93, 1
  br i1 %94, label %95, label %137

95:                                               ; preds = %92
  %96 = load i64, ptr %7, align 8
  %97 = add i64 %96, -1
  store i64 %97, ptr %7, align 8
  %98 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %99 = load i64, ptr %98, align 16
  store i64 %99, ptr %20, align 8
  %100 = load i64, ptr %7, align 8
  %101 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %100
  %102 = load i64, ptr %101, align 8
  %103 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  store i64 %102, ptr %103, align 16
  %104 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  %105 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %106 = load i64, ptr %7, align 8
  %107 = trunc i64 %106 to i32
  call void @heap_adjust(ptr noundef %104, ptr noundef %105, i32 noundef %107, i32 noundef 1)
  %108 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %109 = load i64, ptr %108, align 16
  %110 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %109
  %111 = load i64, ptr %110, align 8
  %112 = load i64, ptr %20, align 8
  %113 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %112
  %114 = load i64, ptr %113, align 8
  %115 = add i64 %111, %114
  %116 = load i64, ptr %7, align 8
  %117 = add i64 256, %116
  %118 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %117
  store i64 %115, ptr %118, align 8
  %119 = load i64, ptr %7, align 8
  %120 = add i64 256, %119
  %121 = trunc i64 %120 to i32
  %122 = load i64, ptr %20, align 8
  %123 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %122
  store i32 %121, ptr %123, align 4
  %124 = load i64, ptr %7, align 8
  %125 = sub i64 -256, %124
  %126 = trunc i64 %125 to i32
  %127 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %128 = load i64, ptr %127, align 16
  %129 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %128
  store i32 %126, ptr %129, align 4
  %130 = load i64, ptr %7, align 8
  %131 = add i64 256, %130
  %132 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  store i64 %131, ptr %132, align 16
  %133 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  %134 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %135 = load i64, ptr %7, align 8
  %136 = trunc i64 %135 to i32
  call void @heap_adjust(ptr noundef %133, ptr noundef %134, i32 noundef %136, i32 noundef 1)
  br label %92, !llvm.loop !12

137:                                              ; preds = %92
  %138 = load i64, ptr %7, align 8
  %139 = add i64 256, %138
  %140 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %139
  store i32 0, ptr %140, align 4
  store i64 0, ptr %23, align 8
  store i64 0, ptr %24, align 8
  store i64 0, ptr %21, align 8
  br label %141

141:                                              ; preds = %199, %137
  %142 = load i64, ptr %21, align 8
  %143 = icmp ult i64 %142, 256
  br i1 %143, label %144, label %202

144:                                              ; preds = %141
  %145 = load i64, ptr %21, align 8
  %146 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %145
  %147 = load i64, ptr %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %144
  %150 = load i64, ptr %21, align 8
  %151 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %150
  store i32 0, ptr %151, align 4
  %152 = load i64, ptr %21, align 8
  %153 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %152
  store i8 0, ptr %153, align 1
  br label %199

154:                                              ; preds = %144
  store i64 0, ptr %5, align 8
  store i64 1, ptr %6, align 8
  store i64 0, ptr %22, align 8
  %155 = load i64, ptr %21, align 8
  %156 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %155
  %157 = load i32, ptr %156, align 4
  store i32 %157, ptr %25, align 4
  br label %158

158:                                              ; preds = %170, %154
  %159 = load i32, ptr %25, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %179

161:                                              ; preds = %158
  %162 = load i32, ptr %25, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %161
  %165 = load i64, ptr %6, align 8
  %166 = load i64, ptr %22, align 8
  %167 = add i64 %166, %165
  store i64 %167, ptr %22, align 8
  %168 = load i32, ptr %25, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, ptr %25, align 4
  br label %170

170:                                              ; preds = %164, %161
  %171 = load i32, ptr %25, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [512 x i32], ptr %17, i64 0, i64 %172
  %174 = load i32, ptr %173, align 4
  store i32 %174, ptr %25, align 4
  %175 = load i64, ptr %6, align 8
  %176 = shl i64 %175, 1
  store i64 %176, ptr %6, align 8
  %177 = load i64, ptr %5, align 8
  %178 = add i64 %177, 1
  store i64 %178, ptr %5, align 8
  br label %158, !llvm.loop !13

179:                                              ; preds = %158
  %180 = load i64, ptr %22, align 8
  %181 = trunc i64 %180 to i32
  %182 = load i64, ptr %21, align 8
  %183 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %182
  store i32 %181, ptr %183, align 4
  %184 = load i64, ptr %5, align 8
  %185 = trunc i64 %184 to i8
  %186 = load i64, ptr %21, align 8
  %187 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %186
  store i8 %185, ptr %187, align 1
  %188 = load i64, ptr %22, align 8
  %189 = load i64, ptr %23, align 8
  %190 = icmp ugt i64 %188, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %179
  %192 = load i64, ptr %22, align 8
  store i64 %192, ptr %23, align 8
  br label %193

193:                                              ; preds = %191, %179
  %194 = load i64, ptr %5, align 8
  %195 = load i64, ptr %24, align 8
  %196 = icmp ugt i64 %194, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %193
  %198 = load i64, ptr %5, align 8
  store i64 %198, ptr %24, align 8
  br label %199

199:                                              ; preds = %149, %197, %193
  %200 = load i64, ptr %21, align 8
  %201 = add i64 %200, 1
  store i64 %201, ptr %21, align 8
  br label %141, !llvm.loop !14

202:                                              ; preds = %141
  %203 = load i64, ptr %24, align 8
  %204 = icmp ugt i64 %203, 32
  br i1 %204, label %205, label %208

205:                                              ; preds = %202
  %206 = call ptr @__acrt_iob_func(i32 noundef 2)
  %207 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %206, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

208:                                              ; preds = %202
  store i64 0, ptr %26, align 8
  store i8 0, ptr %27, align 1
  store i32 -1, ptr %28, align 4
  %209 = load ptr, ptr %3, align 8
  store ptr %209, ptr %13, align 8
  %210 = load i64, ptr %23, align 8
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %208
  %213 = call ptr @__acrt_iob_func(i32 noundef 2)
  %214 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %213, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

215:                                              ; preds = %208
  store i64 0, ptr %6, align 8
  br label %216

216:                                              ; preds = %283, %215
  %217 = load i64, ptr %6, align 8
  %218 = load i64, ptr %4, align 8
  %219 = icmp ult i64 %217, %218
  br i1 %219, label %220, label %288

220:                                              ; preds = %216
  %221 = load ptr, ptr %13, align 8
  %222 = load i8, ptr %221, align 1
  %223 = zext i8 %222 to i64
  %224 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %223
  %225 = load i8, ptr %224, align 1
  %226 = zext i8 %225 to i32
  %227 = sub nsw i32 %226, 1
  %228 = shl i32 1, %227
  %229 = sext i32 %228 to i64
  store i64 %229, ptr %8, align 8
  store i64 0, ptr %5, align 8
  br label %230

230:                                              ; preds = %278, %220
  %231 = load i64, ptr %5, align 8
  %232 = load ptr, ptr %13, align 8
  %233 = load i8, ptr %232, align 1
  %234 = zext i8 %233 to i64
  %235 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %234
  %236 = load i8, ptr %235, align 1
  %237 = zext i8 %236 to i64
  %238 = icmp ult i64 %231, %237
  br i1 %238, label %239, label %283

239:                                              ; preds = %230
  %240 = load i32, ptr %28, align 4
  %241 = icmp eq i32 %240, 7
  br i1 %241, label %242, label %256

242:                                              ; preds = %239
  %243 = load i8, ptr %27, align 1
  %244 = load ptr, ptr %14, align 8
  %245 = load i64, ptr %26, align 8
  %246 = getelementptr inbounds nuw i8, ptr %244, i64 %245
  store i8 %243, ptr %246, align 1
  %247 = load i64, ptr %26, align 8
  %248 = add i64 %247, 1
  store i64 %248, ptr %26, align 8
  %249 = load i64, ptr %26, align 8
  %250 = load i64, ptr %4, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %255

252:                                              ; preds = %242
  %253 = call ptr @__acrt_iob_func(i32 noundef 2)
  %254 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %253, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

255:                                              ; preds = %242
  store i32 0, ptr %28, align 4
  store i8 0, ptr %27, align 1
  br label %263

256:                                              ; preds = %239
  %257 = load i32, ptr %28, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, ptr %28, align 4
  %259 = load i8, ptr %27, align 1
  %260 = sext i8 %259 to i32
  %261 = shl i32 %260, 1
  %262 = trunc i32 %261 to i8
  store i8 %262, ptr %27, align 1
  br label %263

263:                                              ; preds = %256, %255
  %264 = load ptr, ptr %13, align 8
  %265 = load i8, ptr %264, align 1
  %266 = zext i8 %265 to i64
  %267 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %266
  %268 = load i32, ptr %267, align 4
  %269 = zext i32 %268 to i64
  %270 = load i64, ptr %8, align 8
  %271 = and i64 %269, %270
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %278

273:                                              ; preds = %263
  %274 = load i8, ptr %27, align 1
  %275 = sext i8 %274 to i32
  %276 = or i32 %275, 1
  %277 = trunc i32 %276 to i8
  store i8 %277, ptr %27, align 1
  br label %278

278:                                              ; preds = %273, %263
  %279 = load i64, ptr %8, align 8
  %280 = lshr i64 %279, 1
  store i64 %280, ptr %8, align 8
  %281 = load i64, ptr %5, align 8
  %282 = add i64 %281, 1
  store i64 %282, ptr %5, align 8
  br label %230, !llvm.loop !15

283:                                              ; preds = %230
  %284 = load ptr, ptr %13, align 8
  %285 = getelementptr inbounds nuw i8, ptr %284, i32 1
  store ptr %285, ptr %13, align 8
  %286 = load i64, ptr %6, align 8
  %287 = add i64 %286, 1
  store i64 %287, ptr %6, align 8
  br label %216, !llvm.loop !16

288:                                              ; preds = %216
  %289 = load i32, ptr %28, align 4
  %290 = sub nsw i32 7, %289
  %291 = load i8, ptr %27, align 1
  %292 = sext i8 %291 to i32
  %293 = shl i32 %292, %290
  %294 = trunc i32 %293 to i8
  store i8 %294, ptr %27, align 1
  %295 = load i8, ptr %27, align 1
  %296 = load ptr, ptr %14, align 8
  %297 = load i64, ptr %26, align 8
  %298 = getelementptr inbounds nuw i8, ptr %296, i64 %297
  store i8 %295, ptr %298, align 1
  %299 = load i64, ptr %26, align 8
  %300 = add i64 %299, 1
  store i64 %300, ptr %26, align 8
  %301 = getelementptr inbounds [256 x i32], ptr %29, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %301, i8 0, i64 1024, i1 false)
  %302 = getelementptr inbounds [256 x i8], ptr %30, i64 0, i64 0
  store ptr %302, ptr %31, align 8
  store i64 0, ptr %6, align 8
  br label %303

303:                                              ; preds = %359, %288
  %304 = load i64, ptr %6, align 8
  %305 = icmp ult i64 %304, 256
  br i1 %305, label %306, label %362

306:                                              ; preds = %303
  %307 = load i64, ptr %6, align 8
  %308 = trunc i64 %307 to i8
  %309 = load ptr, ptr %31, align 8
  store i8 %308, ptr %309, align 1
  %310 = load ptr, ptr %31, align 8
  %311 = getelementptr inbounds nuw i8, ptr %310, i32 1
  store ptr %311, ptr %31, align 8
  %312 = load i64, ptr %6, align 8
  %313 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %312
  %314 = load i32, ptr %313, align 4
  %315 = load i64, ptr %6, align 8
  %316 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %315
  %317 = load i8, ptr %316, align 1
  %318 = zext i8 %317 to i32
  %319 = or i32 %314, %318
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %359

321:                                              ; preds = %306
  store i32 0, ptr %9, align 4
  %322 = load i64, ptr %6, align 8
  %323 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %322
  %324 = load i8, ptr %323, align 1
  %325 = zext i8 %324 to i32
  %326 = sub nsw i32 %325, 1
  %327 = shl i32 1, %326
  %328 = sext i32 %327 to i64
  store i64 %328, ptr %8, align 8
  store i64 0, ptr %5, align 8
  br label %329

329:                                              ; preds = %350, %321
  %330 = load i64, ptr %5, align 8
  %331 = load i64, ptr %6, align 8
  %332 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %331
  %333 = load i8, ptr %332, align 1
  %334 = zext i8 %333 to i64
  %335 = icmp ult i64 %330, %334
  br i1 %335, label %336, label %355

336:                                              ; preds = %329
  %337 = load i32, ptr %9, align 4
  %338 = mul i32 %337, 2
  %339 = add i32 %338, 1
  store i32 %339, ptr %9, align 4
  %340 = load i64, ptr %6, align 8
  %341 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %340
  %342 = load i32, ptr %341, align 4
  %343 = zext i32 %342 to i64
  %344 = load i64, ptr %8, align 8
  %345 = and i64 %343, %344
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %350

347:                                              ; preds = %336
  %348 = load i32, ptr %9, align 4
  %349 = add i32 %348, 1
  store i32 %349, ptr %9, align 4
  br label %350

350:                                              ; preds = %347, %336
  %351 = load i64, ptr %8, align 8
  %352 = lshr i64 %351, 1
  store i64 %352, ptr %8, align 8
  %353 = load i64, ptr %5, align 8
  %354 = add i64 %353, 1
  store i64 %354, ptr %5, align 8
  br label %329, !llvm.loop !17

355:                                              ; preds = %329
  %356 = load i32, ptr %9, align 4
  %357 = load i64, ptr %6, align 8
  %358 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %357
  store i32 %356, ptr %358, align 4
  br label %359

359:                                              ; preds = %306, %355
  %360 = load i64, ptr %6, align 8
  %361 = add i64 %360, 1
  store i64 %361, ptr %6, align 8
  br label %303, !llvm.loop !18

362:                                              ; preds = %303
  store i64 1, ptr %5, align 8
  br label %363

363:                                              ; preds = %.critedge, %362
  %364 = load i64, ptr %5, align 8
  %365 = icmp ult i64 %364, 256
  br i1 %365, label %366, label %407

366:                                              ; preds = %363
  %367 = load i64, ptr %5, align 8
  %368 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %367
  %369 = load i32, ptr %368, align 4
  store i32 %369, ptr %10, align 4
  %370 = load i64, ptr %5, align 8
  %371 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %370
  %372 = load i8, ptr %371, align 1
  store i8 %372, ptr %11, align 1
  %373 = load i64, ptr %5, align 8
  store i64 %373, ptr %6, align 8
  br label %374

374:                                              ; preds = %384, %366
  %375 = load i64, ptr %6, align 8
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %.critedge

377:                                              ; preds = %374
  %378 = load i64, ptr %6, align 8
  %379 = sub i64 %378, 1
  %380 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %379
  %381 = load i32, ptr %380, align 4
  %382 = load i32, ptr %10, align 4
  %383 = icmp ugt i32 %381, %382
  br i1 %383, label %384, label %.critedge

384:                                              ; preds = %377
  %385 = load i64, ptr %6, align 8
  %386 = sub i64 %385, 1
  %387 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %386
  %388 = load i32, ptr %387, align 4
  %389 = load i64, ptr %6, align 8
  %390 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %389
  store i32 %388, ptr %390, align 4
  %391 = load i64, ptr %6, align 8
  %392 = sub i64 %391, 1
  %393 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %392
  %394 = load i8, ptr %393, align 1
  %395 = load i64, ptr %6, align 8
  %396 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %395
  store i8 %394, ptr %396, align 1
  %397 = load i64, ptr %6, align 8
  %398 = add i64 %397, -1
  store i64 %398, ptr %6, align 8
  br label %374, !llvm.loop !19

.critedge:                                        ; preds = %374, %377
  %399 = load i32, ptr %10, align 4
  %400 = load i64, ptr %6, align 8
  %401 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %400
  store i32 %399, ptr %401, align 4
  %402 = load i8, ptr %11, align 1
  %403 = load i64, ptr %6, align 8
  %404 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %403
  store i8 %402, ptr %404, align 1
  %405 = load i64, ptr %5, align 8
  %406 = add i64 %405, 1
  store i64 %406, ptr %5, align 8
  br label %363, !llvm.loop !20

407:                                              ; preds = %363
  store i64 0, ptr %6, align 8
  br label %408

408:                                              ; preds = %413, %407
  %409 = load i64, ptr %6, align 8
  %410 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %409
  %411 = load i32, ptr %410, align 4
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %413, label %416

413:                                              ; preds = %408
  %414 = load i64, ptr %6, align 8
  %415 = add i64 %414, 1
  store i64 %415, ptr %6, align 8
  br label %408, !llvm.loop !21

416:                                              ; preds = %408
  store i32 0, ptr %9, align 4
  %417 = load i64, ptr %6, align 8
  store i64 %417, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  %418 = load ptr, ptr %14, align 8
  store ptr %418, ptr %12, align 8
  %419 = load ptr, ptr %3, align 8
  store ptr %419, ptr %13, align 8
  br label %420

420:                                              ; preds = %472, %416
  %421 = load i64, ptr %7, align 8
  %422 = load i64, ptr %4, align 8
  %423 = icmp ult i64 %421, %422
  br i1 %423, label %424, label %473

424:                                              ; preds = %420
  %425 = load i32, ptr %9, align 4
  %426 = mul i32 %425, 2
  %427 = add i32 %426, 1
  store i32 %427, ptr %9, align 4
  %428 = load ptr, ptr %12, align 8
  %429 = load i8, ptr %428, align 1
  %430 = zext i8 %429 to i64
  %431 = load i64, ptr %8, align 8
  %432 = and i64 %430, %431
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %434, label %437

434:                                              ; preds = %424
  %435 = load i32, ptr %9, align 4
  %436 = add i32 %435, 1
  store i32 %436, ptr %9, align 4
  br label %437

437:                                              ; preds = %434, %424
  br label %438

438:                                              ; preds = %444, %437
  %439 = load i64, ptr %5, align 8
  %440 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %439
  %441 = load i32, ptr %440, align 4
  %442 = load i32, ptr %9, align 4
  %443 = icmp ult i32 %441, %442
  br i1 %443, label %444, label %447

444:                                              ; preds = %438
  %445 = load i64, ptr %5, align 8
  %446 = add i64 %445, 1
  store i64 %446, ptr %5, align 8
  br label %438, !llvm.loop !22

447:                                              ; preds = %438
  %448 = load i32, ptr %9, align 4
  %449 = load i64, ptr %5, align 8
  %450 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %449
  %451 = load i32, ptr %450, align 4
  %452 = icmp eq i32 %448, %451
  br i1 %452, label %453, label %463

453:                                              ; preds = %447
  %454 = load i64, ptr %5, align 8
  %455 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %454
  %456 = load i8, ptr %455, align 1
  %457 = load ptr, ptr %13, align 8
  store i8 %456, ptr %457, align 1
  %458 = load ptr, ptr %13, align 8
  %459 = getelementptr inbounds nuw i8, ptr %458, i32 1
  store ptr %459, ptr %13, align 8
  %460 = load i64, ptr %7, align 8
  %461 = add i64 %460, 1
  store i64 %461, ptr %7, align 8
  store i32 0, ptr %9, align 4
  %462 = load i64, ptr %6, align 8
  store i64 %462, ptr %5, align 8
  br label %463

463:                                              ; preds = %453, %447
  %464 = load i64, ptr %8, align 8
  %465 = icmp ugt i64 %464, 1
  br i1 %465, label %466, label %469

466:                                              ; preds = %463
  %467 = load i64, ptr %8, align 8
  %468 = lshr i64 %467, 1
  store i64 %468, ptr %8, align 8
  br label %472

469:                                              ; preds = %463
  store i64 128, ptr %8, align 8
  %470 = load ptr, ptr %12, align 8
  %471 = getelementptr inbounds nuw i8, ptr %470, i32 1
  store ptr %471, ptr %12, align 8
  br label %472

472:                                              ; preds = %469, %466
  br label %420, !llvm.loop !23

473:                                              ; preds = %420
  %474 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %474)
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
  br label %18

18:                                               ; preds = %68, %4
  %19 = load i32, ptr %8, align 4
  %20 = load i32, ptr %7, align 4
  %21 = sdiv i32 %20, 2
  %22 = icmp sle i32 %19, %21
  br i1 %22, label %23, label %81

23:                                               ; preds = %18
  %24 = load i32, ptr %8, align 4
  %25 = load i32, ptr %8, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, ptr %9, align 4
  %27 = load i32, ptr %9, align 4
  %28 = load i32, ptr %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %23
  %31 = load ptr, ptr %5, align 8
  %32 = load ptr, ptr %6, align 8
  %33 = load i32, ptr %9, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, ptr %32, i64 %35
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds nuw i64, ptr %31, i64 %37
  %39 = load i64, ptr %38, align 8
  %40 = load ptr, ptr %5, align 8
  %41 = load ptr, ptr %6, align 8
  %42 = load i32, ptr %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, ptr %41, i64 %43
  %45 = load i64, ptr %44, align 8
  %46 = getelementptr inbounds nuw i64, ptr %40, i64 %45
  %47 = load i64, ptr %46, align 8
  %48 = icmp ugt i64 %39, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %30
  %50 = load i32, ptr %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, ptr %9, align 4
  br label %52

52:                                               ; preds = %49, %30, %23
  %53 = load ptr, ptr %5, align 8
  %54 = load i32, ptr %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, ptr %53, i64 %55
  %57 = load i64, ptr %56, align 8
  %58 = load ptr, ptr %5, align 8
  %59 = load ptr, ptr %6, align 8
  %60 = load i32, ptr %9, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, ptr %59, i64 %62
  %64 = load i64, ptr %63, align 8
  %65 = getelementptr inbounds nuw i64, ptr %58, i64 %64
  %66 = load i64, ptr %65, align 8
  %67 = icmp ult i64 %57, %66
  br i1 %67, label %81, label %68

68:                                               ; preds = %52
  %69 = load ptr, ptr %6, align 8
  %70 = load i32, ptr %9, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, ptr %69, i64 %72
  %74 = load i64, ptr %73, align 8
  %75 = load ptr, ptr %6, align 8
  %76 = load i32, ptr %8, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, ptr %75, i64 %78
  store i64 %74, ptr %79, align 8
  %80 = load i32, ptr %9, align 4
  store i32 %80, ptr %8, align 4
  br label %18, !llvm.loop !24

81:                                               ; preds = %52, %18
  %82 = load i32, ptr %10, align 4
  %83 = sext i32 %82 to i64
  %84 = load ptr, ptr %6, align 8
  %85 = load i32, ptr %8, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, ptr %84, i64 %87
  store i64 %83, ptr %88, align 8
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
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  store i32 1, ptr %6, align 4
  br label %13

13:                                               ; preds = %24, %12
  %14 = load i32, ptr %6, align 4
  %15 = load i32, ptr %4, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %.loopexit

17:                                               ; preds = %13
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  %21 = call i32 @strcmp(ptr noundef %20, ptr noundef @.str.4) #7
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i8 1, ptr %7, align 1
  br label %27

24:                                               ; preds = %17
  %25 = load i32, ptr %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %6, align 4
  br label %13, !llvm.loop !25

.loopexit:                                        ; preds = %13
  br label %27

27:                                               ; preds = %.loopexit, %23, %2
  %28 = call ptr @generate_test_data(i64 noundef 10000000)
  store ptr %28, ptr %8, align 8
  store i32 0, ptr %6, align 4
  br label %29

29:                                               ; preds = %32, %27
  %30 = load i32, ptr %6, align 4
  %31 = icmp slt i32 %30, 30
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8
  call void @compdecomp(ptr noundef %33, i64 noundef 10000000)
  %34 = load i32, ptr %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %6, align 4
  br label %29, !llvm.loop !26

36:                                               ; preds = %29
  store double 0.000000e+00, ptr %9, align 8
  %37 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %37)
  %38 = load i8, ptr %7, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = call ptr @__acrt_iob_func(i32 noundef 1)
  %42 = load double, ptr %9, align 8
  %43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef @.str.5, double noundef %42) #7
  br label %48

44:                                               ; preds = %36
  %45 = call ptr @__acrt_iob_func(i32 noundef 1)
  %46 = load double, ptr %9, align 8
  %47 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef @.str.6, double noundef %46) #7
  br label %48

48:                                               ; preds = %44, %40
  %49 = call ptr @__acrt_iob_func(i32 noundef 1)
  %50 = call i32 @fflush(ptr noundef %49)
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
