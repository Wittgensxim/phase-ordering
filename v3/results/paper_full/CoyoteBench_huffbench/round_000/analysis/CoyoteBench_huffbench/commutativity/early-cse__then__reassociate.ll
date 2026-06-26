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
  store ptr %8, ptr %5, align 8
  store i32 0, ptr %6, align 4
  br label %9

9:                                                ; preds = %22, %1
  %10 = load i32, ptr %6, align 4
  %11 = sext i32 %10 to i64
  %12 = load i64, ptr %2, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %9
  %15 = load ptr, ptr %3, align 8
  %16 = call i64 @random4()
  %17 = getelementptr inbounds nuw i8, ptr %15, i64 %16
  %18 = load i8, ptr %17, align 1
  %19 = load ptr, ptr %5, align 8
  store i8 %18, ptr %19, align 1
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds nuw i8, ptr %20, i32 1
  store ptr %21, ptr %5, align 8
  br label %22

22:                                               ; preds = %14
  %23 = load i32, ptr %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %6, align 4
  br label %9, !llvm.loop !7

25:                                               ; preds = %9
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
  %36 = load i64, ptr %4, align 8
  %37 = add i64 %36, 1
  call void @llvm.memset.p0.i64(ptr align 1 %35, i8 0, i64 %37, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %15, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %16, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %17, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %18, i8 0, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %19, i8 0, i64 256, i1 false)
  store i64 0, ptr %5, align 8
  br label %38

38:                                               ; preds = %51, %2
  %39 = load i64, ptr %5, align 8
  %40 = load i64, ptr %4, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load ptr, ptr %13, align 8
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i64
  %46 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %45
  %47 = load i64, ptr %46, align 8
  %48 = add i64 %47, 1
  store i64 %48, ptr %46, align 8
  %49 = load ptr, ptr %13, align 8
  %50 = getelementptr inbounds nuw i8, ptr %49, i32 1
  store ptr %50, ptr %13, align 8
  br label %51

51:                                               ; preds = %42
  %52 = load i64, ptr %5, align 8
  %53 = add i64 %52, 1
  store i64 %53, ptr %5, align 8
  br label %38, !llvm.loop !9

54:                                               ; preds = %38
  store i64 0, ptr %7, align 8
  store i64 0, ptr %5, align 8
  br label %55

55:                                               ; preds = %68, %54
  %56 = load i64, ptr %5, align 8
  %57 = icmp ult i64 %56, 256
  br i1 %57, label %58, label %71

58:                                               ; preds = %55
  %59 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %56
  %60 = load i64, ptr %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i64, ptr %7, align 8
  %64 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %63
  store i64 %56, ptr %64, align 8
  %65 = load i64, ptr %7, align 8
  %66 = add i64 %65, 1
  store i64 %66, ptr %7, align 8
  br label %67

67:                                               ; preds = %62, %58
  br label %68

68:                                               ; preds = %67
  %69 = load i64, ptr %5, align 8
  %70 = add i64 %69, 1
  store i64 %70, ptr %5, align 8
  br label %55, !llvm.loop !10

71:                                               ; preds = %55
  %72 = load i64, ptr %7, align 8
  store i64 %72, ptr %5, align 8
  br label %73

73:                                               ; preds = %80, %71
  %74 = load i64, ptr %5, align 8
  %75 = icmp ugt i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load i64, ptr %7, align 8
  %78 = trunc i64 %77 to i32
  %79 = trunc i64 %74 to i32
  call void @heap_adjust(ptr noundef %15, ptr noundef %16, i32 noundef %78, i32 noundef %79)
  br label %80

80:                                               ; preds = %76
  %81 = load i64, ptr %5, align 8
  %82 = add i64 %81, -1
  store i64 %82, ptr %5, align 8
  br label %73, !llvm.loop !11

83:                                               ; preds = %73
  br label %84

84:                                               ; preds = %87, %83
  %85 = load i64, ptr %7, align 8
  %86 = icmp ugt i64 %85, 1
  br i1 %86, label %87, label %119

87:                                               ; preds = %84
  %88 = add i64 %85, -1
  store i64 %88, ptr %7, align 8
  %89 = load i64, ptr %16, align 16
  store i64 %89, ptr %20, align 8
  %90 = load i64, ptr %7, align 8
  %91 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %90
  %92 = load i64, ptr %91, align 8
  store i64 %92, ptr %16, align 16
  %93 = load i64, ptr %7, align 8
  %94 = trunc i64 %93 to i32
  call void @heap_adjust(ptr noundef %15, ptr noundef %16, i32 noundef %94, i32 noundef 1)
  %95 = load i64, ptr %16, align 16
  %96 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %95
  %97 = load i64, ptr %96, align 8
  %98 = load i64, ptr %20, align 8
  %99 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %98
  %100 = load i64, ptr %99, align 8
  %101 = add i64 %100, %97
  %102 = load i64, ptr %7, align 8
  %103 = add i64 %102, 256
  %104 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %103
  store i64 %101, ptr %104, align 8
  %105 = load i64, ptr %7, align 8
  %106 = add i64 %105, 256
  %107 = trunc i64 %106 to i32
  %108 = load i64, ptr %20, align 8
  %109 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %108
  store i32 %107, ptr %109, align 4
  %110 = load i64, ptr %7, align 8
  %111 = sub i64 -256, %110
  %112 = trunc i64 %111 to i32
  %113 = load i64, ptr %16, align 16
  %114 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %113
  store i32 %112, ptr %114, align 4
  %115 = load i64, ptr %7, align 8
  %116 = add i64 %115, 256
  store i64 %116, ptr %16, align 16
  %117 = load i64, ptr %7, align 8
  %118 = trunc i64 %117 to i32
  call void @heap_adjust(ptr noundef %15, ptr noundef %16, i32 noundef %118, i32 noundef 1)
  br label %84, !llvm.loop !12

119:                                              ; preds = %84
  %120 = add i64 %85, 256
  %121 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %120
  store i32 0, ptr %121, align 4
  store i64 0, ptr %23, align 8
  store i64 0, ptr %24, align 8
  store i64 0, ptr %21, align 8
  br label %122

122:                                              ; preds = %177, %119
  %123 = load i64, ptr %21, align 8
  %124 = icmp ult i64 %123, 256
  br i1 %124, label %125, label %180

125:                                              ; preds = %122
  %126 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %123
  %127 = load i64, ptr %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %123
  store i32 0, ptr %130, align 4
  %131 = load i64, ptr %21, align 8
  %132 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %131
  store i8 0, ptr %132, align 1
  br label %176

133:                                              ; preds = %125
  store i64 0, ptr %5, align 8
  store i64 1, ptr %6, align 8
  store i64 0, ptr %22, align 8
  %134 = load i64, ptr %21, align 8
  %135 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %134
  %136 = load i32, ptr %135, align 4
  store i32 %136, ptr %25, align 4
  br label %137

137:                                              ; preds = %148, %133
  %138 = load i32, ptr %25, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %157

140:                                              ; preds = %137
  %141 = icmp slt i32 %138, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %140
  %143 = load i64, ptr %6, align 8
  %144 = load i64, ptr %22, align 8
  %145 = add i64 %144, %143
  store i64 %145, ptr %22, align 8
  %146 = load i32, ptr %25, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, ptr %25, align 4
  br label %148

148:                                              ; preds = %142, %140
  %149 = load i32, ptr %25, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [512 x i32], ptr %17, i64 0, i64 %150
  %152 = load i32, ptr %151, align 4
  store i32 %152, ptr %25, align 4
  %153 = load i64, ptr %6, align 8
  %154 = shl i64 %153, 1
  store i64 %154, ptr %6, align 8
  %155 = load i64, ptr %5, align 8
  %156 = add i64 %155, 1
  store i64 %156, ptr %5, align 8
  br label %137, !llvm.loop !13

157:                                              ; preds = %137
  %158 = load i64, ptr %22, align 8
  %159 = trunc i64 %158 to i32
  %160 = load i64, ptr %21, align 8
  %161 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %160
  store i32 %159, ptr %161, align 4
  %162 = load i64, ptr %5, align 8
  %163 = trunc i64 %162 to i8
  %164 = load i64, ptr %21, align 8
  %165 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %164
  store i8 %163, ptr %165, align 1
  %166 = load i64, ptr %22, align 8
  %167 = load i64, ptr %23, align 8
  %168 = icmp ugt i64 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %157
  store i64 %166, ptr %23, align 8
  br label %170

170:                                              ; preds = %169, %157
  %171 = load i64, ptr %5, align 8
  %172 = load i64, ptr %24, align 8
  %173 = icmp ugt i64 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %170
  store i64 %171, ptr %24, align 8
  br label %175

175:                                              ; preds = %174, %170
  br label %176

176:                                              ; preds = %175, %129
  br label %177

177:                                              ; preds = %176
  %178 = load i64, ptr %21, align 8
  %179 = add i64 %178, 1
  store i64 %179, ptr %21, align 8
  br label %122, !llvm.loop !14

180:                                              ; preds = %122
  %181 = load i64, ptr %24, align 8
  %182 = icmp ugt i64 %181, 32
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = call ptr @__acrt_iob_func(i32 noundef 2)
  %185 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %184, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

186:                                              ; preds = %180
  store i64 0, ptr %26, align 8
  store i8 0, ptr %27, align 1
  store i32 -1, ptr %28, align 4
  %187 = load ptr, ptr %3, align 8
  store ptr %187, ptr %13, align 8
  %188 = load i64, ptr %23, align 8
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %186
  %191 = call ptr @__acrt_iob_func(i32 noundef 2)
  %192 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %191, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

193:                                              ; preds = %186
  store i64 0, ptr %6, align 8
  br label %194

194:                                              ; preds = %262, %193
  %195 = load i64, ptr %6, align 8
  %196 = load i64, ptr %4, align 8
  %197 = icmp ult i64 %195, %196
  br i1 %197, label %198, label %265

198:                                              ; preds = %194
  %199 = load ptr, ptr %13, align 8
  %200 = load i8, ptr %199, align 1
  %201 = zext i8 %200 to i64
  %202 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %201
  %203 = load i8, ptr %202, align 1
  %204 = zext i8 %203 to i32
  %205 = sub nsw i32 %204, 1
  %206 = shl i32 1, %205
  %207 = sext i32 %206 to i64
  store i64 %207, ptr %8, align 8
  store i64 0, ptr %5, align 8
  br label %208

208:                                              ; preds = %257, %198
  %209 = load i64, ptr %5, align 8
  %210 = load ptr, ptr %13, align 8
  %211 = load i8, ptr %210, align 1
  %212 = zext i8 %211 to i64
  %213 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %212
  %214 = load i8, ptr %213, align 1
  %215 = zext i8 %214 to i64
  %216 = icmp ult i64 %209, %215
  br i1 %216, label %217, label %260

217:                                              ; preds = %208
  %218 = load i32, ptr %28, align 4
  %219 = icmp eq i32 %218, 7
  br i1 %219, label %220, label %233

220:                                              ; preds = %217
  %221 = load i8, ptr %27, align 1
  %222 = load ptr, ptr %14, align 8
  %223 = load i64, ptr %26, align 8
  %224 = getelementptr inbounds nuw i8, ptr %222, i64 %223
  store i8 %221, ptr %224, align 1
  %225 = load i64, ptr %26, align 8
  %226 = add i64 %225, 1
  store i64 %226, ptr %26, align 8
  %227 = load i64, ptr %4, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %232

229:                                              ; preds = %220
  %230 = call ptr @__acrt_iob_func(i32 noundef 2)
  %231 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %230, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

232:                                              ; preds = %220
  store i32 0, ptr %28, align 4
  store i8 0, ptr %27, align 1
  br label %239

233:                                              ; preds = %217
  %234 = add nsw i32 %218, 1
  store i32 %234, ptr %28, align 4
  %235 = load i8, ptr %27, align 1
  %236 = sext i8 %235 to i32
  %237 = shl i32 %236, 1
  %238 = trunc i32 %237 to i8
  store i8 %238, ptr %27, align 1
  br label %239

239:                                              ; preds = %233, %232
  %240 = load ptr, ptr %13, align 8
  %241 = load i8, ptr %240, align 1
  %242 = zext i8 %241 to i64
  %243 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %242
  %244 = load i32, ptr %243, align 4
  %245 = zext i32 %244 to i64
  %246 = load i64, ptr %8, align 8
  %247 = and i64 %245, %246
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %254

249:                                              ; preds = %239
  %250 = load i8, ptr %27, align 1
  %251 = sext i8 %250 to i32
  %252 = or i32 %251, 1
  %253 = trunc i32 %252 to i8
  store i8 %253, ptr %27, align 1
  br label %254

254:                                              ; preds = %249, %239
  %255 = load i64, ptr %8, align 8
  %256 = lshr i64 %255, 1
  store i64 %256, ptr %8, align 8
  br label %257

257:                                              ; preds = %254
  %258 = load i64, ptr %5, align 8
  %259 = add i64 %258, 1
  store i64 %259, ptr %5, align 8
  br label %208, !llvm.loop !15

260:                                              ; preds = %208
  %261 = getelementptr inbounds nuw i8, ptr %210, i32 1
  store ptr %261, ptr %13, align 8
  br label %262

262:                                              ; preds = %260
  %263 = load i64, ptr %6, align 8
  %264 = add i64 %263, 1
  store i64 %264, ptr %6, align 8
  br label %194, !llvm.loop !16

265:                                              ; preds = %194
  %266 = load i32, ptr %28, align 4
  %267 = sub nsw i32 7, %266
  %268 = load i8, ptr %27, align 1
  %269 = sext i8 %268 to i32
  %270 = shl i32 %269, %267
  %271 = trunc i32 %270 to i8
  store i8 %271, ptr %27, align 1
  %272 = load ptr, ptr %14, align 8
  %273 = load i64, ptr %26, align 8
  %274 = getelementptr inbounds nuw i8, ptr %272, i64 %273
  store i8 %271, ptr %274, align 1
  %275 = load i64, ptr %26, align 8
  %276 = add i64 %275, 1
  store i64 %276, ptr %26, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %29, i8 0, i64 1024, i1 false)
  store ptr %30, ptr %31, align 8
  store i64 0, ptr %6, align 8
  br label %277

277:                                              ; preds = %331, %265
  %278 = load i64, ptr %6, align 8
  %279 = icmp ult i64 %278, 256
  br i1 %279, label %280, label %334

280:                                              ; preds = %277
  %281 = trunc i64 %278 to i8
  %282 = load ptr, ptr %31, align 8
  store i8 %281, ptr %282, align 1
  %283 = load ptr, ptr %31, align 8
  %284 = getelementptr inbounds nuw i8, ptr %283, i32 1
  store ptr %284, ptr %31, align 8
  %285 = load i64, ptr %6, align 8
  %286 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %285
  %287 = load i32, ptr %286, align 4
  %288 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %285
  %289 = load i8, ptr %288, align 1
  %290 = zext i8 %289 to i32
  %291 = or i32 %290, %287
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %330

293:                                              ; preds = %280
  store i32 0, ptr %9, align 4
  %294 = load i64, ptr %6, align 8
  %295 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %294
  %296 = load i8, ptr %295, align 1
  %297 = zext i8 %296 to i32
  %298 = sub nsw i32 %297, 1
  %299 = shl i32 1, %298
  %300 = sext i32 %299 to i64
  store i64 %300, ptr %8, align 8
  store i64 0, ptr %5, align 8
  br label %301

301:                                              ; preds = %324, %293
  %302 = load i64, ptr %5, align 8
  %303 = load i64, ptr %6, align 8
  %304 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %303
  %305 = load i8, ptr %304, align 1
  %306 = zext i8 %305 to i64
  %307 = icmp ult i64 %302, %306
  br i1 %307, label %308, label %327

308:                                              ; preds = %301
  %309 = load i32, ptr %9, align 4
  %310 = mul i32 %309, 2
  %311 = add i32 %310, 1
  store i32 %311, ptr %9, align 4
  %312 = load i64, ptr %6, align 8
  %313 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %312
  %314 = load i32, ptr %313, align 4
  %315 = zext i32 %314 to i64
  %316 = load i64, ptr %8, align 8
  %317 = and i64 %315, %316
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %321

319:                                              ; preds = %308
  %320 = add i32 %311, 1
  store i32 %320, ptr %9, align 4
  br label %321

321:                                              ; preds = %319, %308
  %322 = load i64, ptr %8, align 8
  %323 = lshr i64 %322, 1
  store i64 %323, ptr %8, align 8
  br label %324

324:                                              ; preds = %321
  %325 = load i64, ptr %5, align 8
  %326 = add i64 %325, 1
  store i64 %326, ptr %5, align 8
  br label %301, !llvm.loop !17

327:                                              ; preds = %301
  %328 = load i32, ptr %9, align 4
  %329 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %303
  store i32 %328, ptr %329, align 4
  br label %330

330:                                              ; preds = %327, %280
  br label %331

331:                                              ; preds = %330
  %332 = load i64, ptr %6, align 8
  %333 = add i64 %332, 1
  store i64 %333, ptr %6, align 8
  br label %277, !llvm.loop !18

334:                                              ; preds = %277
  store i64 1, ptr %5, align 8
  br label %335

335:                                              ; preds = %376, %334
  %336 = load i64, ptr %5, align 8
  %337 = icmp ult i64 %336, 256
  br i1 %337, label %338, label %379

338:                                              ; preds = %335
  %339 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %336
  %340 = load i32, ptr %339, align 4
  store i32 %340, ptr %10, align 4
  %341 = load i64, ptr %5, align 8
  %342 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %341
  %343 = load i8, ptr %342, align 1
  store i8 %343, ptr %11, align 1
  %344 = load i64, ptr %5, align 8
  store i64 %344, ptr %6, align 8
  br label %345

345:                                              ; preds = %356, %338
  %346 = load i64, ptr %6, align 8
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %354

348:                                              ; preds = %345
  %349 = sub i64 %346, 1
  %350 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %349
  %351 = load i32, ptr %350, align 4
  %352 = load i32, ptr %10, align 4
  %353 = icmp ugt i32 %351, %352
  br label %354

354:                                              ; preds = %348, %345
  %355 = phi i1 [ false, %345 ], [ %353, %348 ]
  br i1 %355, label %356, label %369

356:                                              ; preds = %354
  %357 = load i64, ptr %6, align 8
  %358 = sub i64 %357, 1
  %359 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %358
  %360 = load i32, ptr %359, align 4
  %361 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %357
  store i32 %360, ptr %361, align 4
  %362 = load i64, ptr %6, align 8
  %363 = sub i64 %362, 1
  %364 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %363
  %365 = load i8, ptr %364, align 1
  %366 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %362
  store i8 %365, ptr %366, align 1
  %367 = load i64, ptr %6, align 8
  %368 = add i64 %367, -1
  store i64 %368, ptr %6, align 8
  br label %345, !llvm.loop !19

369:                                              ; preds = %354
  %370 = load i32, ptr %10, align 4
  %371 = load i64, ptr %6, align 8
  %372 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %371
  store i32 %370, ptr %372, align 4
  %373 = load i8, ptr %11, align 1
  %374 = load i64, ptr %6, align 8
  %375 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %374
  store i8 %373, ptr %375, align 1
  br label %376

376:                                              ; preds = %369
  %377 = load i64, ptr %5, align 8
  %378 = add i64 %377, 1
  store i64 %378, ptr %5, align 8
  br label %335, !llvm.loop !20

379:                                              ; preds = %335
  store i64 0, ptr %6, align 8
  br label %380

380:                                              ; preds = %386, %379
  %381 = load i64, ptr %6, align 8
  %382 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %381
  %383 = load i32, ptr %382, align 4
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %385, label %388

385:                                              ; preds = %380
  br label %386

386:                                              ; preds = %385
  %387 = add i64 %381, 1
  store i64 %387, ptr %6, align 8
  br label %380, !llvm.loop !21

388:                                              ; preds = %380
  store i32 0, ptr %9, align 4
  %389 = load i64, ptr %6, align 8
  store i64 %389, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  %390 = load ptr, ptr %14, align 8
  store ptr %390, ptr %12, align 8
  %391 = load ptr, ptr %3, align 8
  store ptr %391, ptr %13, align 8
  br label %392

392:                                              ; preds = %436, %388
  %393 = load i64, ptr %7, align 8
  %394 = load i64, ptr %4, align 8
  %395 = icmp ult i64 %393, %394
  br i1 %395, label %396, label %437

396:                                              ; preds = %392
  %397 = load i32, ptr %9, align 4
  %398 = mul i32 %397, 2
  %399 = add i32 %398, 1
  store i32 %399, ptr %9, align 4
  %400 = load ptr, ptr %12, align 8
  %401 = load i8, ptr %400, align 1
  %402 = zext i8 %401 to i64
  %403 = load i64, ptr %8, align 8
  %404 = and i64 %402, %403
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %408

406:                                              ; preds = %396
  %407 = add i32 %399, 1
  store i32 %407, ptr %9, align 4
  br label %408

408:                                              ; preds = %406, %396
  br label %409

409:                                              ; preds = %415, %408
  %410 = load i64, ptr %5, align 8
  %411 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %410
  %412 = load i32, ptr %411, align 4
  %413 = load i32, ptr %9, align 4
  %414 = icmp ult i32 %412, %413
  br i1 %414, label %415, label %417

415:                                              ; preds = %409
  %416 = add i64 %410, 1
  store i64 %416, ptr %5, align 8
  br label %409, !llvm.loop !22

417:                                              ; preds = %409
  %418 = icmp eq i32 %413, %412
  br i1 %418, label %419, label %428

419:                                              ; preds = %417
  %420 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %410
  %421 = load i8, ptr %420, align 1
  %422 = load ptr, ptr %13, align 8
  store i8 %421, ptr %422, align 1
  %423 = load ptr, ptr %13, align 8
  %424 = getelementptr inbounds nuw i8, ptr %423, i32 1
  store ptr %424, ptr %13, align 8
  %425 = load i64, ptr %7, align 8
  %426 = add i64 %425, 1
  store i64 %426, ptr %7, align 8
  store i32 0, ptr %9, align 4
  %427 = load i64, ptr %6, align 8
  store i64 %427, ptr %5, align 8
  br label %428

428:                                              ; preds = %419, %417
  %429 = load i64, ptr %8, align 8
  %430 = icmp ugt i64 %429, 1
  br i1 %430, label %431, label %433

431:                                              ; preds = %428
  %432 = lshr i64 %429, 1
  store i64 %432, ptr %8, align 8
  br label %436

433:                                              ; preds = %428
  store i64 128, ptr %8, align 8
  %434 = load ptr, ptr %12, align 8
  %435 = getelementptr inbounds nuw i8, ptr %434, i32 1
  store ptr %435, ptr %12, align 8
  br label %436

436:                                              ; preds = %433, %431
  br label %392, !llvm.loop !23

437:                                              ; preds = %392
  %438 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %438)
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
  %12 = sub nsw i32 %3, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, ptr %11, i64 %13
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i32
  store i32 %16, ptr %10, align 4
  br label %17

17:                                               ; preds = %58, %4
  %18 = load i32, ptr %8, align 4
  %19 = load i32, ptr %7, align 4
  %20 = sdiv i32 %19, 2
  %21 = icmp sle i32 %18, %20
  br i1 %21, label %22, label %64

22:                                               ; preds = %17
  %factor = mul i32 %18, 2
  store i32 %factor, ptr %9, align 4
  %23 = load i32, ptr %7, align 4
  %24 = icmp slt i32 %factor, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %22
  %26 = load ptr, ptr %5, align 8
  %27 = load ptr, ptr %6, align 8
  %28 = sub nsw i32 %factor, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, ptr %27, i64 %29
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr inbounds nuw i64, ptr %26, i64 %31
  %33 = load i64, ptr %32, align 8
  %34 = sext i32 %factor to i64
  %35 = getelementptr inbounds i64, ptr %27, i64 %34
  %36 = load i64, ptr %35, align 8
  %37 = getelementptr inbounds nuw i64, ptr %26, i64 %36
  %38 = load i64, ptr %37, align 8
  %39 = icmp ugt i64 %33, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %25
  %41 = add nsw i32 %factor, 1
  store i32 %41, ptr %9, align 4
  br label %42

42:                                               ; preds = %40, %25, %22
  %43 = load ptr, ptr %5, align 8
  %44 = load i32, ptr %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, ptr %43, i64 %45
  %47 = load i64, ptr %46, align 8
  %48 = load ptr, ptr %6, align 8
  %49 = load i32, ptr %9, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, ptr %48, i64 %51
  %53 = load i64, ptr %52, align 8
  %54 = getelementptr inbounds nuw i64, ptr %43, i64 %53
  %55 = load i64, ptr %54, align 8
  %56 = icmp ult i64 %47, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %42
  br label %64

58:                                               ; preds = %42
  %59 = load i32, ptr %8, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, ptr %48, i64 %61
  store i64 %53, ptr %62, align 8
  %63 = load i32, ptr %9, align 4
  store i32 %63, ptr %8, align 4
  br label %17, !llvm.loop !24

64:                                               ; preds = %57, %17
  %65 = load i32, ptr %10, align 4
  %66 = sext i32 %65 to i64
  %67 = load ptr, ptr %6, align 8
  %68 = load i32, ptr %8, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, ptr %67, i64 %70
  store i64 %66, ptr %71, align 8
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
  br label %13

13:                                               ; preds = %25, %12
  %14 = load i32, ptr %6, align 4
  %15 = load i32, ptr %4, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  %21 = call i32 @strcmp(ptr noundef %20, ptr noundef @.str.4) #7
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i8 1, ptr %7, align 1
  br label %28

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24
  %26 = load i32, ptr %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %6, align 4
  br label %13, !llvm.loop !25

28:                                               ; preds = %23, %13
  br label %29

29:                                               ; preds = %28, %2
  %30 = call ptr @generate_test_data(i64 noundef 10000000)
  store ptr %30, ptr %8, align 8
  store i32 0, ptr %6, align 4
  br label %31

31:                                               ; preds = %36, %29
  %32 = load i32, ptr %6, align 4
  %33 = icmp slt i32 %32, 30
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load ptr, ptr %8, align 8
  call void @compdecomp(ptr noundef %35, i64 noundef 10000000)
  br label %36

36:                                               ; preds = %34
  %37 = load i32, ptr %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %6, align 4
  br label %31, !llvm.loop !26

39:                                               ; preds = %31
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
  %5 = sdiv i32 %4, 127773
  store i32 %5, ptr %1, align 4
  %6 = load i32, ptr @seed, align 4
  %7 = mul nsw i32 %5, 127773
  %8 = sub nsw i32 %6, %7
  %9 = mul nsw i32 %8, 16807
  %10 = mul nsw i32 %5, 2836
  %11 = sub nsw i32 %9, %10
  store i32 %11, ptr @seed, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = add nsw i32 %11, 2147483647
  store i32 %14, ptr @seed, align 4
  br label %15

15:                                               ; preds = %13, %0
  %16 = load i32, ptr @seed, align 4
  %17 = srem i32 %16, 32
  %18 = sext i32 %17 to i64
  store i64 %18, ptr %2, align 8
  %19 = load i32, ptr @seed, align 4
  %20 = xor i32 %19, 123459876
  store i32 %20, ptr @seed, align 4
  %21 = load i64, ptr %2, align 8
  ret i64 %21
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
