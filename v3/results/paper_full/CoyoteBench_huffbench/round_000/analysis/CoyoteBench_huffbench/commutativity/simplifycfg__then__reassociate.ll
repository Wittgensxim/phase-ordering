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

44:                                               ; preds = %48, %2
  %45 = load i64, ptr %5, align 8
  %46 = load i64, ptr %4, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %59

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
  %57 = load i64, ptr %5, align 8
  %58 = add i64 %57, 1
  store i64 %58, ptr %5, align 8
  br label %44, !llvm.loop !9

59:                                               ; preds = %44
  store i64 0, ptr %7, align 8
  store i64 0, ptr %5, align 8
  br label %60

60:                                               ; preds = %74, %59
  %61 = load i64, ptr %5, align 8
  %62 = icmp ult i64 %61, 256
  br i1 %62, label %63, label %77

63:                                               ; preds = %60
  %64 = load i64, ptr %5, align 8
  %65 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %64
  %66 = load i64, ptr %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load i64, ptr %5, align 8
  %70 = load i64, ptr %7, align 8
  %71 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %70
  store i64 %69, ptr %71, align 8
  %72 = load i64, ptr %7, align 8
  %73 = add i64 %72, 1
  store i64 %73, ptr %7, align 8
  br label %74

74:                                               ; preds = %63, %68
  %75 = load i64, ptr %5, align 8
  %76 = add i64 %75, 1
  store i64 %76, ptr %5, align 8
  br label %60, !llvm.loop !10

77:                                               ; preds = %60
  %78 = load i64, ptr %7, align 8
  store i64 %78, ptr %5, align 8
  br label %79

79:                                               ; preds = %82, %77
  %80 = load i64, ptr %5, align 8
  %81 = icmp ugt i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %79
  %83 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  %84 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %85 = load i64, ptr %7, align 8
  %86 = trunc i64 %85 to i32
  %87 = load i64, ptr %5, align 8
  %88 = trunc i64 %87 to i32
  call void @heap_adjust(ptr noundef %83, ptr noundef %84, i32 noundef %86, i32 noundef %88)
  %89 = load i64, ptr %5, align 8
  %90 = add i64 %89, -1
  store i64 %90, ptr %5, align 8
  br label %79, !llvm.loop !11

91:                                               ; preds = %79, %94
  %92 = load i64, ptr %7, align 8
  %93 = icmp ugt i64 %92, 1
  br i1 %93, label %94, label %136

94:                                               ; preds = %91
  %95 = load i64, ptr %7, align 8
  %96 = add i64 %95, -1
  store i64 %96, ptr %7, align 8
  %97 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %98 = load i64, ptr %97, align 16
  store i64 %98, ptr %20, align 8
  %99 = load i64, ptr %7, align 8
  %100 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %99
  %101 = load i64, ptr %100, align 8
  %102 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  store i64 %101, ptr %102, align 16
  %103 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  %104 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %105 = load i64, ptr %7, align 8
  %106 = trunc i64 %105 to i32
  call void @heap_adjust(ptr noundef %103, ptr noundef %104, i32 noundef %106, i32 noundef 1)
  %107 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %108 = load i64, ptr %107, align 16
  %109 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %108
  %110 = load i64, ptr %109, align 8
  %111 = load i64, ptr %20, align 8
  %112 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %111
  %113 = load i64, ptr %112, align 8
  %114 = add i64 %113, %110
  %115 = load i64, ptr %7, align 8
  %116 = add i64 %115, 256
  %117 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %116
  store i64 %114, ptr %117, align 8
  %118 = load i64, ptr %7, align 8
  %119 = add i64 %118, 256
  %120 = trunc i64 %119 to i32
  %121 = load i64, ptr %20, align 8
  %122 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %121
  store i32 %120, ptr %122, align 4
  %123 = load i64, ptr %7, align 8
  %124 = sub i64 -256, %123
  %125 = trunc i64 %124 to i32
  %126 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %127 = load i64, ptr %126, align 16
  %128 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %127
  store i32 %125, ptr %128, align 4
  %129 = load i64, ptr %7, align 8
  %130 = add i64 %129, 256
  %131 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  store i64 %130, ptr %131, align 16
  %132 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  %133 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %134 = load i64, ptr %7, align 8
  %135 = trunc i64 %134 to i32
  call void @heap_adjust(ptr noundef %132, ptr noundef %133, i32 noundef %135, i32 noundef 1)
  br label %91, !llvm.loop !12

136:                                              ; preds = %91
  %137 = load i64, ptr %7, align 8
  %138 = add i64 %137, 256
  %139 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %138
  store i32 0, ptr %139, align 4
  store i64 0, ptr %23, align 8
  store i64 0, ptr %24, align 8
  store i64 0, ptr %21, align 8
  br label %140

140:                                              ; preds = %198, %136
  %141 = load i64, ptr %21, align 8
  %142 = icmp ult i64 %141, 256
  br i1 %142, label %143, label %201

143:                                              ; preds = %140
  %144 = load i64, ptr %21, align 8
  %145 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %144
  %146 = load i64, ptr %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %143
  %149 = load i64, ptr %21, align 8
  %150 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %149
  store i32 0, ptr %150, align 4
  %151 = load i64, ptr %21, align 8
  %152 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %151
  store i8 0, ptr %152, align 1
  br label %198

153:                                              ; preds = %143
  store i64 0, ptr %5, align 8
  store i64 1, ptr %6, align 8
  store i64 0, ptr %22, align 8
  %154 = load i64, ptr %21, align 8
  %155 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %154
  %156 = load i32, ptr %155, align 4
  store i32 %156, ptr %25, align 4
  br label %157

157:                                              ; preds = %169, %153
  %158 = load i32, ptr %25, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %178

160:                                              ; preds = %157
  %161 = load i32, ptr %25, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %160
  %164 = load i64, ptr %6, align 8
  %165 = load i64, ptr %22, align 8
  %166 = add i64 %165, %164
  store i64 %166, ptr %22, align 8
  %167 = load i32, ptr %25, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, ptr %25, align 4
  br label %169

169:                                              ; preds = %163, %160
  %170 = load i32, ptr %25, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [512 x i32], ptr %17, i64 0, i64 %171
  %173 = load i32, ptr %172, align 4
  store i32 %173, ptr %25, align 4
  %174 = load i64, ptr %6, align 8
  %175 = shl i64 %174, 1
  store i64 %175, ptr %6, align 8
  %176 = load i64, ptr %5, align 8
  %177 = add i64 %176, 1
  store i64 %177, ptr %5, align 8
  br label %157, !llvm.loop !13

178:                                              ; preds = %157
  %179 = load i64, ptr %22, align 8
  %180 = trunc i64 %179 to i32
  %181 = load i64, ptr %21, align 8
  %182 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %181
  store i32 %180, ptr %182, align 4
  %183 = load i64, ptr %5, align 8
  %184 = trunc i64 %183 to i8
  %185 = load i64, ptr %21, align 8
  %186 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %185
  store i8 %184, ptr %186, align 1
  %187 = load i64, ptr %22, align 8
  %188 = load i64, ptr %23, align 8
  %189 = icmp ugt i64 %187, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %178
  %191 = load i64, ptr %22, align 8
  store i64 %191, ptr %23, align 8
  br label %192

192:                                              ; preds = %190, %178
  %193 = load i64, ptr %5, align 8
  %194 = load i64, ptr %24, align 8
  %195 = icmp ugt i64 %193, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %192
  %197 = load i64, ptr %5, align 8
  store i64 %197, ptr %24, align 8
  br label %198

198:                                              ; preds = %148, %196, %192
  %199 = load i64, ptr %21, align 8
  %200 = add i64 %199, 1
  store i64 %200, ptr %21, align 8
  br label %140, !llvm.loop !14

201:                                              ; preds = %140
  %202 = load i64, ptr %24, align 8
  %203 = icmp ugt i64 %202, 32
  br i1 %203, label %204, label %207

204:                                              ; preds = %201
  %205 = call ptr @__acrt_iob_func(i32 noundef 2)
  %206 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %205, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

207:                                              ; preds = %201
  store i64 0, ptr %26, align 8
  store i8 0, ptr %27, align 1
  store i32 -1, ptr %28, align 4
  %208 = load ptr, ptr %3, align 8
  store ptr %208, ptr %13, align 8
  %209 = load i64, ptr %23, align 8
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %207
  %212 = call ptr @__acrt_iob_func(i32 noundef 2)
  %213 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %212, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

214:                                              ; preds = %207
  store i64 0, ptr %6, align 8
  br label %215

215:                                              ; preds = %282, %214
  %216 = load i64, ptr %6, align 8
  %217 = load i64, ptr %4, align 8
  %218 = icmp ult i64 %216, %217
  br i1 %218, label %219, label %287

219:                                              ; preds = %215
  %220 = load ptr, ptr %13, align 8
  %221 = load i8, ptr %220, align 1
  %222 = zext i8 %221 to i64
  %223 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %222
  %224 = load i8, ptr %223, align 1
  %225 = zext i8 %224 to i32
  %226 = sub nsw i32 %225, 1
  %227 = shl i32 1, %226
  %228 = sext i32 %227 to i64
  store i64 %228, ptr %8, align 8
  store i64 0, ptr %5, align 8
  br label %229

229:                                              ; preds = %277, %219
  %230 = load i64, ptr %5, align 8
  %231 = load ptr, ptr %13, align 8
  %232 = load i8, ptr %231, align 1
  %233 = zext i8 %232 to i64
  %234 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %233
  %235 = load i8, ptr %234, align 1
  %236 = zext i8 %235 to i64
  %237 = icmp ult i64 %230, %236
  br i1 %237, label %238, label %282

238:                                              ; preds = %229
  %239 = load i32, ptr %28, align 4
  %240 = icmp eq i32 %239, 7
  br i1 %240, label %241, label %255

241:                                              ; preds = %238
  %242 = load i8, ptr %27, align 1
  %243 = load ptr, ptr %14, align 8
  %244 = load i64, ptr %26, align 8
  %245 = getelementptr inbounds nuw i8, ptr %243, i64 %244
  store i8 %242, ptr %245, align 1
  %246 = load i64, ptr %26, align 8
  %247 = add i64 %246, 1
  store i64 %247, ptr %26, align 8
  %248 = load i64, ptr %26, align 8
  %249 = load i64, ptr %4, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %254

251:                                              ; preds = %241
  %252 = call ptr @__acrt_iob_func(i32 noundef 2)
  %253 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %252, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

254:                                              ; preds = %241
  store i32 0, ptr %28, align 4
  store i8 0, ptr %27, align 1
  br label %262

255:                                              ; preds = %238
  %256 = load i32, ptr %28, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, ptr %28, align 4
  %258 = load i8, ptr %27, align 1
  %259 = sext i8 %258 to i32
  %260 = shl i32 %259, 1
  %261 = trunc i32 %260 to i8
  store i8 %261, ptr %27, align 1
  br label %262

262:                                              ; preds = %255, %254
  %263 = load ptr, ptr %13, align 8
  %264 = load i8, ptr %263, align 1
  %265 = zext i8 %264 to i64
  %266 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %265
  %267 = load i32, ptr %266, align 4
  %268 = zext i32 %267 to i64
  %269 = load i64, ptr %8, align 8
  %270 = and i64 %268, %269
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %277

272:                                              ; preds = %262
  %273 = load i8, ptr %27, align 1
  %274 = sext i8 %273 to i32
  %275 = or i32 %274, 1
  %276 = trunc i32 %275 to i8
  store i8 %276, ptr %27, align 1
  br label %277

277:                                              ; preds = %272, %262
  %278 = load i64, ptr %8, align 8
  %279 = lshr i64 %278, 1
  store i64 %279, ptr %8, align 8
  %280 = load i64, ptr %5, align 8
  %281 = add i64 %280, 1
  store i64 %281, ptr %5, align 8
  br label %229, !llvm.loop !15

282:                                              ; preds = %229
  %283 = load ptr, ptr %13, align 8
  %284 = getelementptr inbounds nuw i8, ptr %283, i32 1
  store ptr %284, ptr %13, align 8
  %285 = load i64, ptr %6, align 8
  %286 = add i64 %285, 1
  store i64 %286, ptr %6, align 8
  br label %215, !llvm.loop !16

287:                                              ; preds = %215
  %288 = load i32, ptr %28, align 4
  %289 = sub nsw i32 7, %288
  %290 = load i8, ptr %27, align 1
  %291 = sext i8 %290 to i32
  %292 = shl i32 %291, %289
  %293 = trunc i32 %292 to i8
  store i8 %293, ptr %27, align 1
  %294 = load i8, ptr %27, align 1
  %295 = load ptr, ptr %14, align 8
  %296 = load i64, ptr %26, align 8
  %297 = getelementptr inbounds nuw i8, ptr %295, i64 %296
  store i8 %294, ptr %297, align 1
  %298 = load i64, ptr %26, align 8
  %299 = add i64 %298, 1
  store i64 %299, ptr %26, align 8
  %300 = getelementptr inbounds [256 x i32], ptr %29, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %300, i8 0, i64 1024, i1 false)
  %301 = getelementptr inbounds [256 x i8], ptr %30, i64 0, i64 0
  store ptr %301, ptr %31, align 8
  store i64 0, ptr %6, align 8
  br label %302

302:                                              ; preds = %358, %287
  %303 = load i64, ptr %6, align 8
  %304 = icmp ult i64 %303, 256
  br i1 %304, label %305, label %361

305:                                              ; preds = %302
  %306 = load i64, ptr %6, align 8
  %307 = trunc i64 %306 to i8
  %308 = load ptr, ptr %31, align 8
  store i8 %307, ptr %308, align 1
  %309 = load ptr, ptr %31, align 8
  %310 = getelementptr inbounds nuw i8, ptr %309, i32 1
  store ptr %310, ptr %31, align 8
  %311 = load i64, ptr %6, align 8
  %312 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %311
  %313 = load i32, ptr %312, align 4
  %314 = load i64, ptr %6, align 8
  %315 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %314
  %316 = load i8, ptr %315, align 1
  %317 = zext i8 %316 to i32
  %318 = or i32 %317, %313
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %358

320:                                              ; preds = %305
  store i32 0, ptr %9, align 4
  %321 = load i64, ptr %6, align 8
  %322 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %321
  %323 = load i8, ptr %322, align 1
  %324 = zext i8 %323 to i32
  %325 = sub nsw i32 %324, 1
  %326 = shl i32 1, %325
  %327 = sext i32 %326 to i64
  store i64 %327, ptr %8, align 8
  store i64 0, ptr %5, align 8
  br label %328

328:                                              ; preds = %349, %320
  %329 = load i64, ptr %5, align 8
  %330 = load i64, ptr %6, align 8
  %331 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %330
  %332 = load i8, ptr %331, align 1
  %333 = zext i8 %332 to i64
  %334 = icmp ult i64 %329, %333
  br i1 %334, label %335, label %354

335:                                              ; preds = %328
  %336 = load i32, ptr %9, align 4
  %337 = mul i32 %336, 2
  %338 = add i32 %337, 1
  store i32 %338, ptr %9, align 4
  %339 = load i64, ptr %6, align 8
  %340 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %339
  %341 = load i32, ptr %340, align 4
  %342 = zext i32 %341 to i64
  %343 = load i64, ptr %8, align 8
  %344 = and i64 %342, %343
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %349

346:                                              ; preds = %335
  %347 = load i32, ptr %9, align 4
  %348 = add i32 %347, 1
  store i32 %348, ptr %9, align 4
  br label %349

349:                                              ; preds = %346, %335
  %350 = load i64, ptr %8, align 8
  %351 = lshr i64 %350, 1
  store i64 %351, ptr %8, align 8
  %352 = load i64, ptr %5, align 8
  %353 = add i64 %352, 1
  store i64 %353, ptr %5, align 8
  br label %328, !llvm.loop !17

354:                                              ; preds = %328
  %355 = load i32, ptr %9, align 4
  %356 = load i64, ptr %6, align 8
  %357 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %356
  store i32 %355, ptr %357, align 4
  br label %358

358:                                              ; preds = %305, %354
  %359 = load i64, ptr %6, align 8
  %360 = add i64 %359, 1
  store i64 %360, ptr %6, align 8
  br label %302, !llvm.loop !18

361:                                              ; preds = %302
  store i64 1, ptr %5, align 8
  br label %362

362:                                              ; preds = %.critedge, %361
  %363 = load i64, ptr %5, align 8
  %364 = icmp ult i64 %363, 256
  br i1 %364, label %365, label %406

365:                                              ; preds = %362
  %366 = load i64, ptr %5, align 8
  %367 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %366
  %368 = load i32, ptr %367, align 4
  store i32 %368, ptr %10, align 4
  %369 = load i64, ptr %5, align 8
  %370 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %369
  %371 = load i8, ptr %370, align 1
  store i8 %371, ptr %11, align 1
  %372 = load i64, ptr %5, align 8
  store i64 %372, ptr %6, align 8
  br label %373

373:                                              ; preds = %383, %365
  %374 = load i64, ptr %6, align 8
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %.critedge

376:                                              ; preds = %373
  %377 = load i64, ptr %6, align 8
  %378 = sub i64 %377, 1
  %379 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %378
  %380 = load i32, ptr %379, align 4
  %381 = load i32, ptr %10, align 4
  %382 = icmp ugt i32 %380, %381
  br i1 %382, label %383, label %.critedge

383:                                              ; preds = %376
  %384 = load i64, ptr %6, align 8
  %385 = sub i64 %384, 1
  %386 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %385
  %387 = load i32, ptr %386, align 4
  %388 = load i64, ptr %6, align 8
  %389 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %388
  store i32 %387, ptr %389, align 4
  %390 = load i64, ptr %6, align 8
  %391 = sub i64 %390, 1
  %392 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %391
  %393 = load i8, ptr %392, align 1
  %394 = load i64, ptr %6, align 8
  %395 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %394
  store i8 %393, ptr %395, align 1
  %396 = load i64, ptr %6, align 8
  %397 = add i64 %396, -1
  store i64 %397, ptr %6, align 8
  br label %373, !llvm.loop !19

.critedge:                                        ; preds = %373, %376
  %398 = load i32, ptr %10, align 4
  %399 = load i64, ptr %6, align 8
  %400 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %399
  store i32 %398, ptr %400, align 4
  %401 = load i8, ptr %11, align 1
  %402 = load i64, ptr %6, align 8
  %403 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %402
  store i8 %401, ptr %403, align 1
  %404 = load i64, ptr %5, align 8
  %405 = add i64 %404, 1
  store i64 %405, ptr %5, align 8
  br label %362, !llvm.loop !20

406:                                              ; preds = %362
  store i64 0, ptr %6, align 8
  br label %407

407:                                              ; preds = %412, %406
  %408 = load i64, ptr %6, align 8
  %409 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %408
  %410 = load i32, ptr %409, align 4
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %412, label %415

412:                                              ; preds = %407
  %413 = load i64, ptr %6, align 8
  %414 = add i64 %413, 1
  store i64 %414, ptr %6, align 8
  br label %407, !llvm.loop !21

415:                                              ; preds = %407
  store i32 0, ptr %9, align 4
  %416 = load i64, ptr %6, align 8
  store i64 %416, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  %417 = load ptr, ptr %14, align 8
  store ptr %417, ptr %12, align 8
  %418 = load ptr, ptr %3, align 8
  store ptr %418, ptr %13, align 8
  br label %419

419:                                              ; preds = %471, %415
  %420 = load i64, ptr %7, align 8
  %421 = load i64, ptr %4, align 8
  %422 = icmp ult i64 %420, %421
  br i1 %422, label %423, label %472

423:                                              ; preds = %419
  %424 = load i32, ptr %9, align 4
  %425 = mul i32 %424, 2
  %426 = add i32 %425, 1
  store i32 %426, ptr %9, align 4
  %427 = load ptr, ptr %12, align 8
  %428 = load i8, ptr %427, align 1
  %429 = zext i8 %428 to i64
  %430 = load i64, ptr %8, align 8
  %431 = and i64 %429, %430
  %432 = icmp ne i64 %431, 0
  br i1 %432, label %433, label %436

433:                                              ; preds = %423
  %434 = load i32, ptr %9, align 4
  %435 = add i32 %434, 1
  store i32 %435, ptr %9, align 4
  br label %436

436:                                              ; preds = %433, %423
  br label %437

437:                                              ; preds = %443, %436
  %438 = load i64, ptr %5, align 8
  %439 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %438
  %440 = load i32, ptr %439, align 4
  %441 = load i32, ptr %9, align 4
  %442 = icmp ult i32 %440, %441
  br i1 %442, label %443, label %446

443:                                              ; preds = %437
  %444 = load i64, ptr %5, align 8
  %445 = add i64 %444, 1
  store i64 %445, ptr %5, align 8
  br label %437, !llvm.loop !22

446:                                              ; preds = %437
  %447 = load i32, ptr %9, align 4
  %448 = load i64, ptr %5, align 8
  %449 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %448
  %450 = load i32, ptr %449, align 4
  %451 = icmp eq i32 %447, %450
  br i1 %451, label %452, label %462

452:                                              ; preds = %446
  %453 = load i64, ptr %5, align 8
  %454 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %453
  %455 = load i8, ptr %454, align 1
  %456 = load ptr, ptr %13, align 8
  store i8 %455, ptr %456, align 1
  %457 = load ptr, ptr %13, align 8
  %458 = getelementptr inbounds nuw i8, ptr %457, i32 1
  store ptr %458, ptr %13, align 8
  %459 = load i64, ptr %7, align 8
  %460 = add i64 %459, 1
  store i64 %460, ptr %7, align 8
  store i32 0, ptr %9, align 4
  %461 = load i64, ptr %6, align 8
  store i64 %461, ptr %5, align 8
  br label %462

462:                                              ; preds = %452, %446
  %463 = load i64, ptr %8, align 8
  %464 = icmp ugt i64 %463, 1
  br i1 %464, label %465, label %468

465:                                              ; preds = %462
  %466 = load i64, ptr %8, align 8
  %467 = lshr i64 %466, 1
  store i64 %467, ptr %8, align 8
  br label %471

468:                                              ; preds = %462
  store i64 128, ptr %8, align 8
  %469 = load ptr, ptr %12, align 8
  %470 = getelementptr inbounds nuw i8, ptr %469, i32 1
  store ptr %470, ptr %12, align 8
  br label %471

471:                                              ; preds = %468, %465
  br label %419, !llvm.loop !23

472:                                              ; preds = %419
  %473 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %473)
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
  br i1 %16, label %17, label %27

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

27:                                               ; preds = %13, %23, %2
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
