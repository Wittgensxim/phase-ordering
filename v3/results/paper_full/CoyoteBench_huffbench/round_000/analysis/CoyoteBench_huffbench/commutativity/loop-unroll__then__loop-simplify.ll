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

10:                                               ; preds = %23, %1
  %11 = load i32, ptr %6, align 4
  %12 = sext i32 %11 to i64
  %13 = load i64, ptr %2, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %26

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
  br label %23

23:                                               ; preds = %15
  %24 = load i32, ptr %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %6, align 4
  br label %10, !llvm.loop !7

26:                                               ; preds = %10
  %27 = load ptr, ptr %4, align 8
  ret ptr %27
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

45:                                               ; preds = %58, %2
  %46 = load i64, ptr %5, align 8
  %47 = load i64, ptr %4, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %61

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
  br label %58

58:                                               ; preds = %49
  %59 = load i64, ptr %5, align 8
  %60 = add i64 %59, 1
  store i64 %60, ptr %5, align 8
  br label %45, !llvm.loop !9

61:                                               ; preds = %45
  store i64 0, ptr %7, align 8
  store i64 0, ptr %5, align 8
  br label %62

62:                                               ; preds = %77, %61
  %63 = load i64, ptr %5, align 8
  %64 = icmp ult i64 %63, 256
  br i1 %64, label %65, label %80

65:                                               ; preds = %62
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

76:                                               ; preds = %70, %65
  br label %77

77:                                               ; preds = %76
  %78 = load i64, ptr %5, align 8
  %79 = add i64 %78, 1
  store i64 %79, ptr %5, align 8
  br label %62, !llvm.loop !10

80:                                               ; preds = %62
  %81 = load i64, ptr %7, align 8
  store i64 %81, ptr %5, align 8
  br label %82

82:                                               ; preds = %92, %80
  %83 = load i64, ptr %5, align 8
  %84 = icmp ugt i64 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %82
  %86 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  %87 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %88 = load i64, ptr %7, align 8
  %89 = trunc i64 %88 to i32
  %90 = load i64, ptr %5, align 8
  %91 = trunc i64 %90 to i32
  call void @heap_adjust(ptr noundef %86, ptr noundef %87, i32 noundef %89, i32 noundef %91)
  br label %92

92:                                               ; preds = %85
  %93 = load i64, ptr %5, align 8
  %94 = add i64 %93, -1
  store i64 %94, ptr %5, align 8
  br label %82, !llvm.loop !11

95:                                               ; preds = %82
  br label %96

96:                                               ; preds = %99, %95
  %97 = load i64, ptr %7, align 8
  %98 = icmp ugt i64 %97, 1
  br i1 %98, label %99, label %141

99:                                               ; preds = %96
  %100 = load i64, ptr %7, align 8
  %101 = add i64 %100, -1
  store i64 %101, ptr %7, align 8
  %102 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %103 = load i64, ptr %102, align 16
  store i64 %103, ptr %20, align 8
  %104 = load i64, ptr %7, align 8
  %105 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %104
  %106 = load i64, ptr %105, align 8
  %107 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  store i64 %106, ptr %107, align 16
  %108 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  %109 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %110 = load i64, ptr %7, align 8
  %111 = trunc i64 %110 to i32
  call void @heap_adjust(ptr noundef %108, ptr noundef %109, i32 noundef %111, i32 noundef 1)
  %112 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %113 = load i64, ptr %112, align 16
  %114 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %113
  %115 = load i64, ptr %114, align 8
  %116 = load i64, ptr %20, align 8
  %117 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %116
  %118 = load i64, ptr %117, align 8
  %119 = add i64 %115, %118
  %120 = load i64, ptr %7, align 8
  %121 = add i64 256, %120
  %122 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %121
  store i64 %119, ptr %122, align 8
  %123 = load i64, ptr %7, align 8
  %124 = add i64 256, %123
  %125 = trunc i64 %124 to i32
  %126 = load i64, ptr %20, align 8
  %127 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %126
  store i32 %125, ptr %127, align 4
  %128 = load i64, ptr %7, align 8
  %129 = sub i64 -256, %128
  %130 = trunc i64 %129 to i32
  %131 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %132 = load i64, ptr %131, align 16
  %133 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %132
  store i32 %130, ptr %133, align 4
  %134 = load i64, ptr %7, align 8
  %135 = add i64 256, %134
  %136 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  store i64 %135, ptr %136, align 16
  %137 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  %138 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %139 = load i64, ptr %7, align 8
  %140 = trunc i64 %139 to i32
  call void @heap_adjust(ptr noundef %137, ptr noundef %138, i32 noundef %140, i32 noundef 1)
  br label %96, !llvm.loop !12

141:                                              ; preds = %96
  %142 = load i64, ptr %7, align 8
  %143 = add i64 256, %142
  %144 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %143
  store i32 0, ptr %144, align 4
  store i64 0, ptr %23, align 8
  store i64 0, ptr %24, align 8
  store i64 0, ptr %21, align 8
  br label %145

145:                                              ; preds = %205, %141
  %146 = load i64, ptr %21, align 8
  %147 = icmp ult i64 %146, 256
  br i1 %147, label %148, label %208

148:                                              ; preds = %145
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
  br label %162

162:                                              ; preds = %174, %158
  %163 = load i32, ptr %25, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %183

165:                                              ; preds = %162
  %166 = load i32, ptr %25, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %165
  %169 = load i64, ptr %6, align 8
  %170 = load i64, ptr %22, align 8
  %171 = add i64 %170, %169
  store i64 %171, ptr %22, align 8
  %172 = load i32, ptr %25, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, ptr %25, align 4
  br label %174

174:                                              ; preds = %168, %165
  %175 = load i32, ptr %25, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [512 x i32], ptr %17, i64 0, i64 %176
  %178 = load i32, ptr %177, align 4
  store i32 %178, ptr %25, align 4
  %179 = load i64, ptr %6, align 8
  %180 = shl i64 %179, 1
  store i64 %180, ptr %6, align 8
  %181 = load i64, ptr %5, align 8
  %182 = add i64 %181, 1
  store i64 %182, ptr %5, align 8
  br label %162, !llvm.loop !13

183:                                              ; preds = %162
  %184 = load i64, ptr %22, align 8
  %185 = trunc i64 %184 to i32
  %186 = load i64, ptr %21, align 8
  %187 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %186
  store i32 %185, ptr %187, align 4
  %188 = load i64, ptr %5, align 8
  %189 = trunc i64 %188 to i8
  %190 = load i64, ptr %21, align 8
  %191 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %190
  store i8 %189, ptr %191, align 1
  %192 = load i64, ptr %22, align 8
  %193 = load i64, ptr %23, align 8
  %194 = icmp ugt i64 %192, %193
  br i1 %194, label %195, label %197

195:                                              ; preds = %183
  %196 = load i64, ptr %22, align 8
  store i64 %196, ptr %23, align 8
  br label %197

197:                                              ; preds = %195, %183
  %198 = load i64, ptr %5, align 8
  %199 = load i64, ptr %24, align 8
  %200 = icmp ugt i64 %198, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %197
  %202 = load i64, ptr %5, align 8
  store i64 %202, ptr %24, align 8
  br label %203

203:                                              ; preds = %201, %197
  br label %204

204:                                              ; preds = %203, %153
  br label %205

205:                                              ; preds = %204
  %206 = load i64, ptr %21, align 8
  %207 = add i64 %206, 1
  store i64 %207, ptr %21, align 8
  br label %145, !llvm.loop !14

208:                                              ; preds = %145
  %209 = load i64, ptr %24, align 8
  %210 = icmp ugt i64 %209, 32
  br i1 %210, label %211, label %214

211:                                              ; preds = %208
  %212 = call ptr @__acrt_iob_func(i32 noundef 2)
  %213 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %212, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

214:                                              ; preds = %208
  store i64 0, ptr %26, align 8
  store i8 0, ptr %27, align 1
  store i32 -1, ptr %28, align 4
  %215 = load ptr, ptr %3, align 8
  store ptr %215, ptr %13, align 8
  %216 = load i64, ptr %23, align 8
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %214
  %219 = call ptr @__acrt_iob_func(i32 noundef 2)
  %220 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %219, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

221:                                              ; preds = %214
  store i64 0, ptr %6, align 8
  br label %222

222:                                              ; preds = %293, %221
  %223 = load i64, ptr %6, align 8
  %224 = load i64, ptr %4, align 8
  %225 = icmp ult i64 %223, %224
  br i1 %225, label %226, label %296

226:                                              ; preds = %222
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
  br label %236

236:                                              ; preds = %287, %226
  %237 = load i64, ptr %5, align 8
  %238 = load ptr, ptr %13, align 8
  %239 = load i8, ptr %238, align 1
  %240 = zext i8 %239 to i64
  %241 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %240
  %242 = load i8, ptr %241, align 1
  %243 = zext i8 %242 to i64
  %244 = icmp ult i64 %237, %243
  br i1 %244, label %245, label %290

245:                                              ; preds = %236
  %246 = load i32, ptr %28, align 4
  %247 = icmp eq i32 %246, 7
  br i1 %247, label %248, label %262

248:                                              ; preds = %245
  %249 = load i8, ptr %27, align 1
  %250 = load ptr, ptr %14, align 8
  %251 = load i64, ptr %26, align 8
  %252 = getelementptr inbounds nuw i8, ptr %250, i64 %251
  store i8 %249, ptr %252, align 1
  %253 = load i64, ptr %26, align 8
  %254 = add i64 %253, 1
  store i64 %254, ptr %26, align 8
  %255 = load i64, ptr %26, align 8
  %256 = load i64, ptr %4, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %261

258:                                              ; preds = %248
  %259 = call ptr @__acrt_iob_func(i32 noundef 2)
  %260 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %259, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

261:                                              ; preds = %248
  store i32 0, ptr %28, align 4
  store i8 0, ptr %27, align 1
  br label %269

262:                                              ; preds = %245
  %263 = load i32, ptr %28, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, ptr %28, align 4
  %265 = load i8, ptr %27, align 1
  %266 = sext i8 %265 to i32
  %267 = shl i32 %266, 1
  %268 = trunc i32 %267 to i8
  store i8 %268, ptr %27, align 1
  br label %269

269:                                              ; preds = %262, %261
  %270 = load ptr, ptr %13, align 8
  %271 = load i8, ptr %270, align 1
  %272 = zext i8 %271 to i64
  %273 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %272
  %274 = load i32, ptr %273, align 4
  %275 = zext i32 %274 to i64
  %276 = load i64, ptr %8, align 8
  %277 = and i64 %275, %276
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %284

279:                                              ; preds = %269
  %280 = load i8, ptr %27, align 1
  %281 = sext i8 %280 to i32
  %282 = or i32 %281, 1
  %283 = trunc i32 %282 to i8
  store i8 %283, ptr %27, align 1
  br label %284

284:                                              ; preds = %279, %269
  %285 = load i64, ptr %8, align 8
  %286 = lshr i64 %285, 1
  store i64 %286, ptr %8, align 8
  br label %287

287:                                              ; preds = %284
  %288 = load i64, ptr %5, align 8
  %289 = add i64 %288, 1
  store i64 %289, ptr %5, align 8
  br label %236, !llvm.loop !15

290:                                              ; preds = %236
  %291 = load ptr, ptr %13, align 8
  %292 = getelementptr inbounds nuw i8, ptr %291, i32 1
  store ptr %292, ptr %13, align 8
  br label %293

293:                                              ; preds = %290
  %294 = load i64, ptr %6, align 8
  %295 = add i64 %294, 1
  store i64 %295, ptr %6, align 8
  br label %222, !llvm.loop !16

296:                                              ; preds = %222
  %297 = load i32, ptr %28, align 4
  %298 = sub nsw i32 7, %297
  %299 = load i8, ptr %27, align 1
  %300 = sext i8 %299 to i32
  %301 = shl i32 %300, %298
  %302 = trunc i32 %301 to i8
  store i8 %302, ptr %27, align 1
  %303 = load i8, ptr %27, align 1
  %304 = load ptr, ptr %14, align 8
  %305 = load i64, ptr %26, align 8
  %306 = getelementptr inbounds nuw i8, ptr %304, i64 %305
  store i8 %303, ptr %306, align 1
  %307 = load i64, ptr %26, align 8
  %308 = add i64 %307, 1
  store i64 %308, ptr %26, align 8
  %309 = getelementptr inbounds [256 x i32], ptr %29, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %309, i8 0, i64 1024, i1 false)
  %310 = getelementptr inbounds [256 x i8], ptr %30, i64 0, i64 0
  store ptr %310, ptr %31, align 8
  store i64 0, ptr %6, align 8
  br label %311

311:                                              ; preds = %369, %296
  %312 = load i64, ptr %6, align 8
  %313 = icmp ult i64 %312, 256
  br i1 %313, label %314, label %372

314:                                              ; preds = %311
  %315 = load i64, ptr %6, align 8
  %316 = trunc i64 %315 to i8
  %317 = load ptr, ptr %31, align 8
  store i8 %316, ptr %317, align 1
  %318 = load ptr, ptr %31, align 8
  %319 = getelementptr inbounds nuw i8, ptr %318, i32 1
  store ptr %319, ptr %31, align 8
  %320 = load i64, ptr %6, align 8
  %321 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %320
  %322 = load i32, ptr %321, align 4
  %323 = load i64, ptr %6, align 8
  %324 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %323
  %325 = load i8, ptr %324, align 1
  %326 = zext i8 %325 to i32
  %327 = or i32 %322, %326
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %368

329:                                              ; preds = %314
  store i32 0, ptr %9, align 4
  %330 = load i64, ptr %6, align 8
  %331 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %330
  %332 = load i8, ptr %331, align 1
  %333 = zext i8 %332 to i32
  %334 = sub nsw i32 %333, 1
  %335 = shl i32 1, %334
  %336 = sext i32 %335 to i64
  store i64 %336, ptr %8, align 8
  store i64 0, ptr %5, align 8
  br label %337

337:                                              ; preds = %361, %329
  %338 = load i64, ptr %5, align 8
  %339 = load i64, ptr %6, align 8
  %340 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %339
  %341 = load i8, ptr %340, align 1
  %342 = zext i8 %341 to i64
  %343 = icmp ult i64 %338, %342
  br i1 %343, label %344, label %364

344:                                              ; preds = %337
  %345 = load i32, ptr %9, align 4
  %346 = mul i32 %345, 2
  %347 = add i32 %346, 1
  store i32 %347, ptr %9, align 4
  %348 = load i64, ptr %6, align 8
  %349 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %348
  %350 = load i32, ptr %349, align 4
  %351 = zext i32 %350 to i64
  %352 = load i64, ptr %8, align 8
  %353 = and i64 %351, %352
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %358

355:                                              ; preds = %344
  %356 = load i32, ptr %9, align 4
  %357 = add i32 %356, 1
  store i32 %357, ptr %9, align 4
  br label %358

358:                                              ; preds = %355, %344
  %359 = load i64, ptr %8, align 8
  %360 = lshr i64 %359, 1
  store i64 %360, ptr %8, align 8
  br label %361

361:                                              ; preds = %358
  %362 = load i64, ptr %5, align 8
  %363 = add i64 %362, 1
  store i64 %363, ptr %5, align 8
  br label %337, !llvm.loop !17

364:                                              ; preds = %337
  %365 = load i32, ptr %9, align 4
  %366 = load i64, ptr %6, align 8
  %367 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %366
  store i32 %365, ptr %367, align 4
  br label %368

368:                                              ; preds = %364, %314
  br label %369

369:                                              ; preds = %368
  %370 = load i64, ptr %6, align 8
  %371 = add i64 %370, 1
  store i64 %371, ptr %6, align 8
  br label %311, !llvm.loop !18

372:                                              ; preds = %311
  store i64 1, ptr %5, align 8
  br label %373

373:                                              ; preds = %418, %372
  %374 = load i64, ptr %5, align 8
  %375 = icmp ult i64 %374, 256
  br i1 %375, label %376, label %421

376:                                              ; preds = %373
  %377 = load i64, ptr %5, align 8
  %378 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %377
  %379 = load i32, ptr %378, align 4
  store i32 %379, ptr %10, align 4
  %380 = load i64, ptr %5, align 8
  %381 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %380
  %382 = load i8, ptr %381, align 1
  store i8 %382, ptr %11, align 1
  %383 = load i64, ptr %5, align 8
  store i64 %383, ptr %6, align 8
  br label %384

384:                                              ; preds = %396, %376
  %385 = load i64, ptr %6, align 8
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %394

387:                                              ; preds = %384
  %388 = load i64, ptr %6, align 8
  %389 = sub i64 %388, 1
  %390 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %389
  %391 = load i32, ptr %390, align 4
  %392 = load i32, ptr %10, align 4
  %393 = icmp ugt i32 %391, %392
  br label %394

394:                                              ; preds = %387, %384
  %395 = phi i1 [ false, %384 ], [ %393, %387 ]
  br i1 %395, label %396, label %411

396:                                              ; preds = %394
  %397 = load i64, ptr %6, align 8
  %398 = sub i64 %397, 1
  %399 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %398
  %400 = load i32, ptr %399, align 4
  %401 = load i64, ptr %6, align 8
  %402 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %401
  store i32 %400, ptr %402, align 4
  %403 = load i64, ptr %6, align 8
  %404 = sub i64 %403, 1
  %405 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %404
  %406 = load i8, ptr %405, align 1
  %407 = load i64, ptr %6, align 8
  %408 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %407
  store i8 %406, ptr %408, align 1
  %409 = load i64, ptr %6, align 8
  %410 = add i64 %409, -1
  store i64 %410, ptr %6, align 8
  br label %384, !llvm.loop !19

411:                                              ; preds = %394
  %412 = load i32, ptr %10, align 4
  %413 = load i64, ptr %6, align 8
  %414 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %413
  store i32 %412, ptr %414, align 4
  %415 = load i8, ptr %11, align 1
  %416 = load i64, ptr %6, align 8
  %417 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %416
  store i8 %415, ptr %417, align 1
  br label %418

418:                                              ; preds = %411
  %419 = load i64, ptr %5, align 8
  %420 = add i64 %419, 1
  store i64 %420, ptr %5, align 8
  br label %373, !llvm.loop !20

421:                                              ; preds = %373
  store i64 0, ptr %6, align 8
  br label %422

422:                                              ; preds = %428, %421
  %423 = load i64, ptr %6, align 8
  %424 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %423
  %425 = load i32, ptr %424, align 4
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %427, label %431

427:                                              ; preds = %422
  br label %428

428:                                              ; preds = %427
  %429 = load i64, ptr %6, align 8
  %430 = add i64 %429, 1
  store i64 %430, ptr %6, align 8
  br label %422, !llvm.loop !21

431:                                              ; preds = %422
  store i32 0, ptr %9, align 4
  %432 = load i64, ptr %6, align 8
  store i64 %432, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  %433 = load ptr, ptr %14, align 8
  store ptr %433, ptr %12, align 8
  %434 = load ptr, ptr %3, align 8
  store ptr %434, ptr %13, align 8
  br label %435

435:                                              ; preds = %487, %431
  %436 = load i64, ptr %7, align 8
  %437 = load i64, ptr %4, align 8
  %438 = icmp ult i64 %436, %437
  br i1 %438, label %439, label %488

439:                                              ; preds = %435
  %440 = load i32, ptr %9, align 4
  %441 = mul i32 %440, 2
  %442 = add i32 %441, 1
  store i32 %442, ptr %9, align 4
  %443 = load ptr, ptr %12, align 8
  %444 = load i8, ptr %443, align 1
  %445 = zext i8 %444 to i64
  %446 = load i64, ptr %8, align 8
  %447 = and i64 %445, %446
  %448 = icmp ne i64 %447, 0
  br i1 %448, label %449, label %452

449:                                              ; preds = %439
  %450 = load i32, ptr %9, align 4
  %451 = add i32 %450, 1
  store i32 %451, ptr %9, align 4
  br label %452

452:                                              ; preds = %449, %439
  br label %453

453:                                              ; preds = %459, %452
  %454 = load i64, ptr %5, align 8
  %455 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %454
  %456 = load i32, ptr %455, align 4
  %457 = load i32, ptr %9, align 4
  %458 = icmp ult i32 %456, %457
  br i1 %458, label %459, label %462

459:                                              ; preds = %453
  %460 = load i64, ptr %5, align 8
  %461 = add i64 %460, 1
  store i64 %461, ptr %5, align 8
  br label %453, !llvm.loop !22

462:                                              ; preds = %453
  %463 = load i32, ptr %9, align 4
  %464 = load i64, ptr %5, align 8
  %465 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %464
  %466 = load i32, ptr %465, align 4
  %467 = icmp eq i32 %463, %466
  br i1 %467, label %468, label %478

468:                                              ; preds = %462
  %469 = load i64, ptr %5, align 8
  %470 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %469
  %471 = load i8, ptr %470, align 1
  %472 = load ptr, ptr %13, align 8
  store i8 %471, ptr %472, align 1
  %473 = load ptr, ptr %13, align 8
  %474 = getelementptr inbounds nuw i8, ptr %473, i32 1
  store ptr %474, ptr %13, align 8
  %475 = load i64, ptr %7, align 8
  %476 = add i64 %475, 1
  store i64 %476, ptr %7, align 8
  store i32 0, ptr %9, align 4
  %477 = load i64, ptr %6, align 8
  store i64 %477, ptr %5, align 8
  br label %478

478:                                              ; preds = %468, %462
  %479 = load i64, ptr %8, align 8
  %480 = icmp ugt i64 %479, 1
  br i1 %480, label %481, label %484

481:                                              ; preds = %478
  %482 = load i64, ptr %8, align 8
  %483 = lshr i64 %482, 1
  store i64 %483, ptr %8, align 8
  br label %487

484:                                              ; preds = %478
  store i64 128, ptr %8, align 8
  %485 = load ptr, ptr %12, align 8
  %486 = getelementptr inbounds nuw i8, ptr %485, i32 1
  store ptr %486, ptr %12, align 8
  br label %487

487:                                              ; preds = %484, %481
  br label %435, !llvm.loop !23

488:                                              ; preds = %435
  %489 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %489)
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

18:                                               ; preds = %69, %4
  %19 = load i32, ptr %8, align 4
  %20 = load i32, ptr %7, align 4
  %21 = sdiv i32 %20, 2
  %22 = icmp sle i32 %19, %21
  br i1 %22, label %23, label %.loopexit

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
  br i1 %67, label %68, label %69

68:                                               ; preds = %52
  br label %82

69:                                               ; preds = %52
  %70 = load ptr, ptr %6, align 8
  %71 = load i32, ptr %9, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, ptr %70, i64 %73
  %75 = load i64, ptr %74, align 8
  %76 = load ptr, ptr %6, align 8
  %77 = load i32, ptr %8, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, ptr %76, i64 %79
  store i64 %75, ptr %80, align 8
  %81 = load i32, ptr %9, align 4
  store i32 %81, ptr %8, align 4
  br label %18, !llvm.loop !24

.loopexit:                                        ; preds = %18
  br label %82

82:                                               ; preds = %.loopexit, %68
  %83 = load i32, ptr %10, align 4
  %84 = sext i32 %83 to i64
  %85 = load ptr, ptr %6, align 8
  %86 = load i32, ptr %8, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, ptr %85, i64 %88
  store i64 %84, ptr %89, align 8
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
  br label %28

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24
  %26 = load i32, ptr %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %6, align 4
  br label %13, !llvm.loop !25

.loopexit:                                        ; preds = %13
  br label %28

28:                                               ; preds = %.loopexit, %23
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
