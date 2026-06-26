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
  call void @llvm.memset.p0.i64(ptr align 1 %36, i8 0, i64 %38, i1 false)
  %39 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %39, i8 0, i64 4096, i1 false)
  %40 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %40, i8 0, i64 2048, i1 false)
  %41 = getelementptr inbounds [512 x i32], ptr %17, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %41, i8 0, i64 2048, i1 false)
  %42 = getelementptr inbounds [256 x i32], ptr %18, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %42, i8 0, i64 1024, i1 false)
  %43 = getelementptr inbounds [256 x i8], ptr %19, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %43, i8 0, i64 256, i1 false)
  store i64 0, ptr %5, align 8
  br label %44

44:                                               ; preds = %57, %2
  %45 = load i64, ptr %5, align 8
  %46 = load i64, ptr %4, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
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
  br label %57

57:                                               ; preds = %48
  %58 = load i64, ptr %5, align 8
  %59 = add i64 %58, 1
  store i64 %59, ptr %5, align 8
  br label %44, !llvm.loop !9

60:                                               ; preds = %44
  store i64 0, ptr %7, align 8
  store i64 0, ptr %5, align 8
  br label %61

61:                                               ; preds = %76, %60
  %62 = load i64, ptr %5, align 8
  %63 = icmp ult i64 %62, 256
  br i1 %63, label %64, label %79

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

75:                                               ; preds = %69, %64
  br label %76

76:                                               ; preds = %75
  %77 = load i64, ptr %5, align 8
  %78 = add i64 %77, 1
  store i64 %78, ptr %5, align 8
  br label %61, !llvm.loop !10

79:                                               ; preds = %61
  %80 = load i64, ptr %7, align 8
  store i64 %80, ptr %5, align 8
  br label %81

81:                                               ; preds = %91, %79
  %82 = load i64, ptr %5, align 8
  %83 = icmp ugt i64 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %81
  %85 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  %86 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %87 = load i64, ptr %7, align 8
  %88 = trunc i64 %87 to i32
  %89 = load i64, ptr %5, align 8
  %90 = trunc i64 %89 to i32
  call void @heap_adjust(ptr noundef %85, ptr noundef %86, i32 noundef %88, i32 noundef %90)
  br label %91

91:                                               ; preds = %84
  %92 = load i64, ptr %5, align 8
  %93 = add i64 %92, -1
  store i64 %93, ptr %5, align 8
  br label %81, !llvm.loop !11

94:                                               ; preds = %81
  br label %95

95:                                               ; preds = %98, %94
  %96 = load i64, ptr %7, align 8
  %97 = icmp ugt i64 %96, 1
  br i1 %97, label %98, label %140

98:                                               ; preds = %95
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
  %118 = add i64 %117, %114
  %119 = load i64, ptr %7, align 8
  %120 = add i64 %119, 256
  %121 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %120
  store i64 %118, ptr %121, align 8
  %122 = load i64, ptr %7, align 8
  %123 = add i64 %122, 256
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
  %134 = add i64 %133, 256
  %135 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  store i64 %134, ptr %135, align 16
  %136 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  %137 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %138 = load i64, ptr %7, align 8
  %139 = trunc i64 %138 to i32
  call void @heap_adjust(ptr noundef %136, ptr noundef %137, i32 noundef %139, i32 noundef 1)
  br label %95, !llvm.loop !12

140:                                              ; preds = %95
  %141 = load i64, ptr %7, align 8
  %142 = add i64 %141, 256
  %143 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %142
  store i32 0, ptr %143, align 4
  store i64 0, ptr %23, align 8
  store i64 0, ptr %24, align 8
  store i64 0, ptr %21, align 8
  br label %144

144:                                              ; preds = %204, %140
  %145 = load i64, ptr %21, align 8
  %146 = icmp ult i64 %145, 256
  br i1 %146, label %147, label %207

147:                                              ; preds = %144
  %148 = load i64, ptr %21, align 8
  %149 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %148
  %150 = load i64, ptr %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %147
  %153 = load i64, ptr %21, align 8
  %154 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %153
  store i32 0, ptr %154, align 4
  %155 = load i64, ptr %21, align 8
  %156 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %155
  store i8 0, ptr %156, align 1
  br label %203

157:                                              ; preds = %147
  store i64 0, ptr %5, align 8
  store i64 1, ptr %6, align 8
  store i64 0, ptr %22, align 8
  %158 = load i64, ptr %21, align 8
  %159 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %158
  %160 = load i32, ptr %159, align 4
  store i32 %160, ptr %25, align 4
  br label %161

161:                                              ; preds = %173, %157
  %162 = load i32, ptr %25, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %182

164:                                              ; preds = %161
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
  br label %161, !llvm.loop !13

182:                                              ; preds = %161
  %183 = load i64, ptr %22, align 8
  %184 = trunc i64 %183 to i32
  %185 = load i64, ptr %21, align 8
  %186 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %185
  store i32 %184, ptr %186, align 4
  %187 = load i64, ptr %5, align 8
  %188 = trunc i64 %187 to i8
  %189 = load i64, ptr %21, align 8
  %190 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %189
  store i8 %188, ptr %190, align 1
  %191 = load i64, ptr %22, align 8
  %192 = load i64, ptr %23, align 8
  %193 = icmp ugt i64 %191, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %182
  %195 = load i64, ptr %22, align 8
  store i64 %195, ptr %23, align 8
  br label %196

196:                                              ; preds = %194, %182
  %197 = load i64, ptr %5, align 8
  %198 = load i64, ptr %24, align 8
  %199 = icmp ugt i64 %197, %198
  br i1 %199, label %200, label %202

200:                                              ; preds = %196
  %201 = load i64, ptr %5, align 8
  store i64 %201, ptr %24, align 8
  br label %202

202:                                              ; preds = %200, %196
  br label %203

203:                                              ; preds = %202, %152
  br label %204

204:                                              ; preds = %203
  %205 = load i64, ptr %21, align 8
  %206 = add i64 %205, 1
  store i64 %206, ptr %21, align 8
  br label %144, !llvm.loop !14

207:                                              ; preds = %144
  %208 = load i64, ptr %24, align 8
  %209 = icmp ugt i64 %208, 32
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = call ptr @__acrt_iob_func(i32 noundef 2)
  %212 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %211, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

213:                                              ; preds = %207
  store i64 0, ptr %26, align 8
  store i8 0, ptr %27, align 1
  store i32 -1, ptr %28, align 4
  %214 = load ptr, ptr %3, align 8
  store ptr %214, ptr %13, align 8
  %215 = load i64, ptr %23, align 8
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %213
  %218 = call ptr @__acrt_iob_func(i32 noundef 2)
  %219 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %218, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

220:                                              ; preds = %213
  store i64 0, ptr %6, align 8
  br label %221

221:                                              ; preds = %292, %220
  %222 = load i64, ptr %6, align 8
  %223 = load i64, ptr %4, align 8
  %224 = icmp ult i64 %222, %223
  br i1 %224, label %225, label %295

225:                                              ; preds = %221
  %226 = load ptr, ptr %13, align 8
  %227 = load i8, ptr %226, align 1
  %228 = zext i8 %227 to i64
  %229 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %228
  %230 = load i8, ptr %229, align 1
  %231 = zext i8 %230 to i32
  %232 = sub nsw i32 %231, 1
  %233 = shl i32 1, %232
  %234 = sext i32 %233 to i64
  store i64 %234, ptr %8, align 8
  store i64 0, ptr %5, align 8
  br label %235

235:                                              ; preds = %286, %225
  %236 = load i64, ptr %5, align 8
  %237 = load ptr, ptr %13, align 8
  %238 = load i8, ptr %237, align 1
  %239 = zext i8 %238 to i64
  %240 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %239
  %241 = load i8, ptr %240, align 1
  %242 = zext i8 %241 to i64
  %243 = icmp ult i64 %236, %242
  br i1 %243, label %244, label %289

244:                                              ; preds = %235
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
  br label %286

286:                                              ; preds = %283
  %287 = load i64, ptr %5, align 8
  %288 = add i64 %287, 1
  store i64 %288, ptr %5, align 8
  br label %235, !llvm.loop !15

289:                                              ; preds = %235
  %290 = load ptr, ptr %13, align 8
  %291 = getelementptr inbounds nuw i8, ptr %290, i32 1
  store ptr %291, ptr %13, align 8
  br label %292

292:                                              ; preds = %289
  %293 = load i64, ptr %6, align 8
  %294 = add i64 %293, 1
  store i64 %294, ptr %6, align 8
  br label %221, !llvm.loop !16

295:                                              ; preds = %221
  %296 = load i32, ptr %28, align 4
  %297 = sub nsw i32 7, %296
  %298 = load i8, ptr %27, align 1
  %299 = sext i8 %298 to i32
  %300 = shl i32 %299, %297
  %301 = trunc i32 %300 to i8
  store i8 %301, ptr %27, align 1
  %302 = load i8, ptr %27, align 1
  %303 = load ptr, ptr %14, align 8
  %304 = load i64, ptr %26, align 8
  %305 = getelementptr inbounds nuw i8, ptr %303, i64 %304
  store i8 %302, ptr %305, align 1
  %306 = load i64, ptr %26, align 8
  %307 = add i64 %306, 1
  store i64 %307, ptr %26, align 8
  %308 = getelementptr inbounds [256 x i32], ptr %29, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %308, i8 0, i64 1024, i1 false)
  %309 = getelementptr inbounds [256 x i8], ptr %30, i64 0, i64 0
  store ptr %309, ptr %31, align 8
  store i64 0, ptr %6, align 8
  br label %310

310:                                              ; preds = %368, %295
  %311 = load i64, ptr %6, align 8
  %312 = icmp ult i64 %311, 256
  br i1 %312, label %313, label %371

313:                                              ; preds = %310
  %314 = load i64, ptr %6, align 8
  %315 = trunc i64 %314 to i8
  %316 = load ptr, ptr %31, align 8
  store i8 %315, ptr %316, align 1
  %317 = load ptr, ptr %31, align 8
  %318 = getelementptr inbounds nuw i8, ptr %317, i32 1
  store ptr %318, ptr %31, align 8
  %319 = load i64, ptr %6, align 8
  %320 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %319
  %321 = load i32, ptr %320, align 4
  %322 = load i64, ptr %6, align 8
  %323 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %322
  %324 = load i8, ptr %323, align 1
  %325 = zext i8 %324 to i32
  %326 = or i32 %325, %321
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %367

328:                                              ; preds = %313
  store i32 0, ptr %9, align 4
  %329 = load i64, ptr %6, align 8
  %330 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %329
  %331 = load i8, ptr %330, align 1
  %332 = zext i8 %331 to i32
  %333 = sub nsw i32 %332, 1
  %334 = shl i32 1, %333
  %335 = sext i32 %334 to i64
  store i64 %335, ptr %8, align 8
  store i64 0, ptr %5, align 8
  br label %336

336:                                              ; preds = %360, %328
  %337 = load i64, ptr %5, align 8
  %338 = load i64, ptr %6, align 8
  %339 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %338
  %340 = load i8, ptr %339, align 1
  %341 = zext i8 %340 to i64
  %342 = icmp ult i64 %337, %341
  br i1 %342, label %343, label %363

343:                                              ; preds = %336
  %344 = load i32, ptr %9, align 4
  %345 = mul i32 %344, 2
  %346 = add i32 %345, 1
  store i32 %346, ptr %9, align 4
  %347 = load i64, ptr %6, align 8
  %348 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %347
  %349 = load i32, ptr %348, align 4
  %350 = zext i32 %349 to i64
  %351 = load i64, ptr %8, align 8
  %352 = and i64 %350, %351
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %357

354:                                              ; preds = %343
  %355 = load i32, ptr %9, align 4
  %356 = add i32 %355, 1
  store i32 %356, ptr %9, align 4
  br label %357

357:                                              ; preds = %354, %343
  %358 = load i64, ptr %8, align 8
  %359 = lshr i64 %358, 1
  store i64 %359, ptr %8, align 8
  br label %360

360:                                              ; preds = %357
  %361 = load i64, ptr %5, align 8
  %362 = add i64 %361, 1
  store i64 %362, ptr %5, align 8
  br label %336, !llvm.loop !17

363:                                              ; preds = %336
  %364 = load i32, ptr %9, align 4
  %365 = load i64, ptr %6, align 8
  %366 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %365
  store i32 %364, ptr %366, align 4
  br label %367

367:                                              ; preds = %363, %313
  br label %368

368:                                              ; preds = %367
  %369 = load i64, ptr %6, align 8
  %370 = add i64 %369, 1
  store i64 %370, ptr %6, align 8
  br label %310, !llvm.loop !18

371:                                              ; preds = %310
  store i64 1, ptr %5, align 8
  br label %372

372:                                              ; preds = %417, %371
  %373 = load i64, ptr %5, align 8
  %374 = icmp ult i64 %373, 256
  br i1 %374, label %375, label %420

375:                                              ; preds = %372
  %376 = load i64, ptr %5, align 8
  %377 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %376
  %378 = load i32, ptr %377, align 4
  store i32 %378, ptr %10, align 4
  %379 = load i64, ptr %5, align 8
  %380 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %379
  %381 = load i8, ptr %380, align 1
  store i8 %381, ptr %11, align 1
  %382 = load i64, ptr %5, align 8
  store i64 %382, ptr %6, align 8
  br label %383

383:                                              ; preds = %395, %375
  %384 = load i64, ptr %6, align 8
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %393

386:                                              ; preds = %383
  %387 = load i64, ptr %6, align 8
  %388 = sub i64 %387, 1
  %389 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %388
  %390 = load i32, ptr %389, align 4
  %391 = load i32, ptr %10, align 4
  %392 = icmp ugt i32 %390, %391
  br label %393

393:                                              ; preds = %386, %383
  %394 = phi i1 [ false, %383 ], [ %392, %386 ]
  br i1 %394, label %395, label %410

395:                                              ; preds = %393
  %396 = load i64, ptr %6, align 8
  %397 = sub i64 %396, 1
  %398 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %397
  %399 = load i32, ptr %398, align 4
  %400 = load i64, ptr %6, align 8
  %401 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %400
  store i32 %399, ptr %401, align 4
  %402 = load i64, ptr %6, align 8
  %403 = sub i64 %402, 1
  %404 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %403
  %405 = load i8, ptr %404, align 1
  %406 = load i64, ptr %6, align 8
  %407 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %406
  store i8 %405, ptr %407, align 1
  %408 = load i64, ptr %6, align 8
  %409 = add i64 %408, -1
  store i64 %409, ptr %6, align 8
  br label %383, !llvm.loop !19

410:                                              ; preds = %393
  %411 = load i32, ptr %10, align 4
  %412 = load i64, ptr %6, align 8
  %413 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %412
  store i32 %411, ptr %413, align 4
  %414 = load i8, ptr %11, align 1
  %415 = load i64, ptr %6, align 8
  %416 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %415
  store i8 %414, ptr %416, align 1
  br label %417

417:                                              ; preds = %410
  %418 = load i64, ptr %5, align 8
  %419 = add i64 %418, 1
  store i64 %419, ptr %5, align 8
  br label %372, !llvm.loop !20

420:                                              ; preds = %372
  store i64 0, ptr %6, align 8
  br label %421

421:                                              ; preds = %427, %420
  %422 = load i64, ptr %6, align 8
  %423 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %422
  %424 = load i32, ptr %423, align 4
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %426, label %430

426:                                              ; preds = %421
  br label %427

427:                                              ; preds = %426
  %428 = load i64, ptr %6, align 8
  %429 = add i64 %428, 1
  store i64 %429, ptr %6, align 8
  br label %421, !llvm.loop !21

430:                                              ; preds = %421
  store i32 0, ptr %9, align 4
  %431 = load i64, ptr %6, align 8
  store i64 %431, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  %432 = load ptr, ptr %14, align 8
  store ptr %432, ptr %12, align 8
  %433 = load ptr, ptr %3, align 8
  store ptr %433, ptr %13, align 8
  br label %434

434:                                              ; preds = %486, %430
  %435 = load i64, ptr %7, align 8
  %436 = load i64, ptr %4, align 8
  %437 = icmp ult i64 %435, %436
  br i1 %437, label %438, label %487

438:                                              ; preds = %434
  %439 = load i32, ptr %9, align 4
  %440 = mul i32 %439, 2
  %441 = add i32 %440, 1
  store i32 %441, ptr %9, align 4
  %442 = load ptr, ptr %12, align 8
  %443 = load i8, ptr %442, align 1
  %444 = zext i8 %443 to i64
  %445 = load i64, ptr %8, align 8
  %446 = and i64 %444, %445
  %447 = icmp ne i64 %446, 0
  br i1 %447, label %448, label %451

448:                                              ; preds = %438
  %449 = load i32, ptr %9, align 4
  %450 = add i32 %449, 1
  store i32 %450, ptr %9, align 4
  br label %451

451:                                              ; preds = %448, %438
  br label %452

452:                                              ; preds = %458, %451
  %453 = load i64, ptr %5, align 8
  %454 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %453
  %455 = load i32, ptr %454, align 4
  %456 = load i32, ptr %9, align 4
  %457 = icmp ult i32 %455, %456
  br i1 %457, label %458, label %461

458:                                              ; preds = %452
  %459 = load i64, ptr %5, align 8
  %460 = add i64 %459, 1
  store i64 %460, ptr %5, align 8
  br label %452, !llvm.loop !22

461:                                              ; preds = %452
  %462 = load i32, ptr %9, align 4
  %463 = load i64, ptr %5, align 8
  %464 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %463
  %465 = load i32, ptr %464, align 4
  %466 = icmp eq i32 %462, %465
  br i1 %466, label %467, label %477

467:                                              ; preds = %461
  %468 = load i64, ptr %5, align 8
  %469 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %468
  %470 = load i8, ptr %469, align 1
  %471 = load ptr, ptr %13, align 8
  store i8 %470, ptr %471, align 1
  %472 = load ptr, ptr %13, align 8
  %473 = getelementptr inbounds nuw i8, ptr %472, i32 1
  store ptr %473, ptr %13, align 8
  %474 = load i64, ptr %7, align 8
  %475 = add i64 %474, 1
  store i64 %475, ptr %7, align 8
  store i32 0, ptr %9, align 4
  %476 = load i64, ptr %6, align 8
  store i64 %476, ptr %5, align 8
  br label %477

477:                                              ; preds = %467, %461
  %478 = load i64, ptr %8, align 8
  %479 = icmp ugt i64 %478, 1
  br i1 %479, label %480, label %483

480:                                              ; preds = %477
  %481 = load i64, ptr %8, align 8
  %482 = lshr i64 %481, 1
  store i64 %482, ptr %8, align 8
  br label %486

483:                                              ; preds = %477
  store i64 128, ptr %8, align 8
  %484 = load ptr, ptr %12, align 8
  %485 = getelementptr inbounds nuw i8, ptr %484, i32 1
  store ptr %485, ptr %12, align 8
  br label %486

486:                                              ; preds = %483, %480
  br label %434, !llvm.loop !23

487:                                              ; preds = %434
  %488 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %488)
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
  %26 = add nsw i32 %25, %24
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
  %11 = mul nsw i32 %10, 16807
  %12 = load i32, ptr %1, align 4
  %13 = mul nsw i32 %12, 2836
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
