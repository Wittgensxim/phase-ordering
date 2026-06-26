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

9:                                                ; preds = %14, %1
  %10 = load i32, ptr %6, align 4
  %11 = sext i32 %10 to i64
  %12 = load i64, ptr %2, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %24

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
  %22 = load i32, ptr %6, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %6, align 4
  br label %9, !llvm.loop !7

24:                                               ; preds = %9
  %25 = load ptr, ptr %4, align 8
  ret ptr %25
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

38:                                               ; preds = %42, %2
  %39 = load i64, ptr %5, align 8
  %40 = load i64, ptr %4, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %53

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
  %51 = load i64, ptr %5, align 8
  %52 = add i64 %51, 1
  store i64 %52, ptr %5, align 8
  br label %38, !llvm.loop !9

53:                                               ; preds = %38
  store i64 0, ptr %7, align 8
  store i64 0, ptr %5, align 8
  br label %54

54:                                               ; preds = %66, %53
  %55 = load i64, ptr %5, align 8
  %56 = icmp ult i64 %55, 256
  br i1 %56, label %57, label %69

57:                                               ; preds = %54
  %58 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %55
  %59 = load i64, ptr %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i64, ptr %7, align 8
  %63 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %62
  store i64 %55, ptr %63, align 8
  %64 = load i64, ptr %7, align 8
  %65 = add i64 %64, 1
  store i64 %65, ptr %7, align 8
  br label %66

66:                                               ; preds = %57, %61
  %67 = load i64, ptr %5, align 8
  %68 = add i64 %67, 1
  store i64 %68, ptr %5, align 8
  br label %54, !llvm.loop !10

69:                                               ; preds = %54
  %70 = load i64, ptr %7, align 8
  store i64 %70, ptr %5, align 8
  br label %71

71:                                               ; preds = %74, %69
  %72 = load i64, ptr %5, align 8
  %73 = icmp ugt i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load i64, ptr %7, align 8
  %76 = trunc i64 %75 to i32
  %77 = trunc i64 %72 to i32
  call void @heap_adjust(ptr noundef %15, ptr noundef %16, i32 noundef %76, i32 noundef %77)
  %78 = load i64, ptr %5, align 8
  %79 = add i64 %78, -1
  store i64 %79, ptr %5, align 8
  br label %71, !llvm.loop !11

80:                                               ; preds = %71, %83
  %81 = load i64, ptr %7, align 8
  %82 = icmp ugt i64 %81, 1
  br i1 %82, label %83, label %115

83:                                               ; preds = %80
  %84 = add i64 %81, -1
  store i64 %84, ptr %7, align 8
  %85 = load i64, ptr %16, align 16
  store i64 %85, ptr %20, align 8
  %86 = load i64, ptr %7, align 8
  %87 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %86
  %88 = load i64, ptr %87, align 8
  store i64 %88, ptr %16, align 16
  %89 = load i64, ptr %7, align 8
  %90 = trunc i64 %89 to i32
  call void @heap_adjust(ptr noundef %15, ptr noundef %16, i32 noundef %90, i32 noundef 1)
  %91 = load i64, ptr %16, align 16
  %92 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %91
  %93 = load i64, ptr %92, align 8
  %94 = load i64, ptr %20, align 8
  %95 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %94
  %96 = load i64, ptr %95, align 8
  %97 = add i64 %93, %96
  %98 = load i64, ptr %7, align 8
  %99 = add i64 256, %98
  %100 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %99
  store i64 %97, ptr %100, align 8
  %101 = load i64, ptr %7, align 8
  %102 = add i64 256, %101
  %103 = trunc i64 %102 to i32
  %104 = load i64, ptr %20, align 8
  %105 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %104
  store i32 %103, ptr %105, align 4
  %106 = load i64, ptr %7, align 8
  %107 = sub i64 -256, %106
  %108 = trunc i64 %107 to i32
  %109 = load i64, ptr %16, align 16
  %110 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %109
  store i32 %108, ptr %110, align 4
  %111 = load i64, ptr %7, align 8
  %112 = add i64 256, %111
  store i64 %112, ptr %16, align 16
  %113 = load i64, ptr %7, align 8
  %114 = trunc i64 %113 to i32
  call void @heap_adjust(ptr noundef %15, ptr noundef %16, i32 noundef %114, i32 noundef 1)
  br label %80, !llvm.loop !12

115:                                              ; preds = %80
  %116 = add i64 256, %81
  %117 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %116
  store i32 0, ptr %117, align 4
  store i64 0, ptr %23, align 8
  store i64 0, ptr %24, align 8
  store i64 0, ptr %21, align 8
  br label %118

118:                                              ; preds = %171, %115
  %119 = load i64, ptr %21, align 8
  %120 = icmp ult i64 %119, 256
  br i1 %120, label %121, label %174

121:                                              ; preds = %118
  %122 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %119
  %123 = load i64, ptr %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %119
  store i32 0, ptr %126, align 4
  %127 = load i64, ptr %21, align 8
  %128 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %127
  store i8 0, ptr %128, align 1
  br label %171

129:                                              ; preds = %121
  store i64 0, ptr %5, align 8
  store i64 1, ptr %6, align 8
  store i64 0, ptr %22, align 8
  %130 = load i64, ptr %21, align 8
  %131 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %130
  %132 = load i32, ptr %131, align 4
  store i32 %132, ptr %25, align 4
  br label %133

133:                                              ; preds = %144, %129
  %134 = load i32, ptr %25, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %153

136:                                              ; preds = %133
  %137 = icmp slt i32 %134, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %136
  %139 = load i64, ptr %6, align 8
  %140 = load i64, ptr %22, align 8
  %141 = add i64 %140, %139
  store i64 %141, ptr %22, align 8
  %142 = load i32, ptr %25, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, ptr %25, align 4
  br label %144

144:                                              ; preds = %138, %136
  %145 = load i32, ptr %25, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [512 x i32], ptr %17, i64 0, i64 %146
  %148 = load i32, ptr %147, align 4
  store i32 %148, ptr %25, align 4
  %149 = load i64, ptr %6, align 8
  %150 = shl i64 %149, 1
  store i64 %150, ptr %6, align 8
  %151 = load i64, ptr %5, align 8
  %152 = add i64 %151, 1
  store i64 %152, ptr %5, align 8
  br label %133, !llvm.loop !13

153:                                              ; preds = %133
  %154 = load i64, ptr %22, align 8
  %155 = trunc i64 %154 to i32
  %156 = load i64, ptr %21, align 8
  %157 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %156
  store i32 %155, ptr %157, align 4
  %158 = load i64, ptr %5, align 8
  %159 = trunc i64 %158 to i8
  %160 = load i64, ptr %21, align 8
  %161 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %160
  store i8 %159, ptr %161, align 1
  %162 = load i64, ptr %22, align 8
  %163 = load i64, ptr %23, align 8
  %164 = icmp ugt i64 %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %153
  store i64 %162, ptr %23, align 8
  br label %166

166:                                              ; preds = %165, %153
  %167 = load i64, ptr %5, align 8
  %168 = load i64, ptr %24, align 8
  %169 = icmp ugt i64 %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %166
  store i64 %167, ptr %24, align 8
  br label %171

171:                                              ; preds = %125, %170, %166
  %172 = load i64, ptr %21, align 8
  %173 = add i64 %172, 1
  store i64 %173, ptr %21, align 8
  br label %118, !llvm.loop !14

174:                                              ; preds = %118
  %175 = load i64, ptr %24, align 8
  %176 = icmp ugt i64 %175, 32
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = call ptr @__acrt_iob_func(i32 noundef 2)
  %179 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %178, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

180:                                              ; preds = %174
  store i64 0, ptr %26, align 8
  store i8 0, ptr %27, align 1
  store i32 -1, ptr %28, align 4
  %181 = load ptr, ptr %3, align 8
  store ptr %181, ptr %13, align 8
  %182 = load i64, ptr %23, align 8
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %180
  %185 = call ptr @__acrt_iob_func(i32 noundef 2)
  %186 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %185, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

187:                                              ; preds = %180
  store i64 0, ptr %6, align 8
  br label %188

188:                                              ; preds = %253, %187
  %189 = load i64, ptr %6, align 8
  %190 = load i64, ptr %4, align 8
  %191 = icmp ult i64 %189, %190
  br i1 %191, label %192, label %257

192:                                              ; preds = %188
  %193 = load ptr, ptr %13, align 8
  %194 = load i8, ptr %193, align 1
  %195 = zext i8 %194 to i64
  %196 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %195
  %197 = load i8, ptr %196, align 1
  %198 = zext i8 %197 to i32
  %199 = sub nsw i32 %198, 1
  %200 = shl i32 1, %199
  %201 = sext i32 %200 to i64
  store i64 %201, ptr %8, align 8
  store i64 0, ptr %5, align 8
  br label %202

202:                                              ; preds = %248, %192
  %203 = load i64, ptr %5, align 8
  %204 = load ptr, ptr %13, align 8
  %205 = load i8, ptr %204, align 1
  %206 = zext i8 %205 to i64
  %207 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %206
  %208 = load i8, ptr %207, align 1
  %209 = zext i8 %208 to i64
  %210 = icmp ult i64 %203, %209
  br i1 %210, label %211, label %253

211:                                              ; preds = %202
  %212 = load i32, ptr %28, align 4
  %213 = icmp eq i32 %212, 7
  br i1 %213, label %214, label %227

214:                                              ; preds = %211
  %215 = load i8, ptr %27, align 1
  %216 = load ptr, ptr %14, align 8
  %217 = load i64, ptr %26, align 8
  %218 = getelementptr inbounds nuw i8, ptr %216, i64 %217
  store i8 %215, ptr %218, align 1
  %219 = load i64, ptr %26, align 8
  %220 = add i64 %219, 1
  store i64 %220, ptr %26, align 8
  %221 = load i64, ptr %4, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %226

223:                                              ; preds = %214
  %224 = call ptr @__acrt_iob_func(i32 noundef 2)
  %225 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %224, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

226:                                              ; preds = %214
  store i32 0, ptr %28, align 4
  store i8 0, ptr %27, align 1
  br label %233

227:                                              ; preds = %211
  %228 = add nsw i32 %212, 1
  store i32 %228, ptr %28, align 4
  %229 = load i8, ptr %27, align 1
  %230 = sext i8 %229 to i32
  %231 = shl i32 %230, 1
  %232 = trunc i32 %231 to i8
  store i8 %232, ptr %27, align 1
  br label %233

233:                                              ; preds = %227, %226
  %234 = load ptr, ptr %13, align 8
  %235 = load i8, ptr %234, align 1
  %236 = zext i8 %235 to i64
  %237 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %236
  %238 = load i32, ptr %237, align 4
  %239 = zext i32 %238 to i64
  %240 = load i64, ptr %8, align 8
  %241 = and i64 %239, %240
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %233
  %244 = load i8, ptr %27, align 1
  %245 = sext i8 %244 to i32
  %246 = or i32 %245, 1
  %247 = trunc i32 %246 to i8
  store i8 %247, ptr %27, align 1
  br label %248

248:                                              ; preds = %243, %233
  %249 = load i64, ptr %8, align 8
  %250 = lshr i64 %249, 1
  store i64 %250, ptr %8, align 8
  %251 = load i64, ptr %5, align 8
  %252 = add i64 %251, 1
  store i64 %252, ptr %5, align 8
  br label %202, !llvm.loop !15

253:                                              ; preds = %202
  %254 = getelementptr inbounds nuw i8, ptr %204, i32 1
  store ptr %254, ptr %13, align 8
  %255 = load i64, ptr %6, align 8
  %256 = add i64 %255, 1
  store i64 %256, ptr %6, align 8
  br label %188, !llvm.loop !16

257:                                              ; preds = %188
  %258 = load i32, ptr %28, align 4
  %259 = sub nsw i32 7, %258
  %260 = load i8, ptr %27, align 1
  %261 = sext i8 %260 to i32
  %262 = shl i32 %261, %259
  %263 = trunc i32 %262 to i8
  store i8 %263, ptr %27, align 1
  %264 = load ptr, ptr %14, align 8
  %265 = load i64, ptr %26, align 8
  %266 = getelementptr inbounds nuw i8, ptr %264, i64 %265
  store i8 %263, ptr %266, align 1
  %267 = load i64, ptr %26, align 8
  %268 = add i64 %267, 1
  store i64 %268, ptr %26, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %29, i8 0, i64 1024, i1 false)
  store ptr %30, ptr %31, align 8
  store i64 0, ptr %6, align 8
  br label %269

269:                                              ; preds = %321, %257
  %270 = load i64, ptr %6, align 8
  %271 = icmp ult i64 %270, 256
  br i1 %271, label %272, label %324

272:                                              ; preds = %269
  %273 = trunc i64 %270 to i8
  %274 = load ptr, ptr %31, align 8
  store i8 %273, ptr %274, align 1
  %275 = load ptr, ptr %31, align 8
  %276 = getelementptr inbounds nuw i8, ptr %275, i32 1
  store ptr %276, ptr %31, align 8
  %277 = load i64, ptr %6, align 8
  %278 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %277
  %279 = load i32, ptr %278, align 4
  %280 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %277
  %281 = load i8, ptr %280, align 1
  %282 = zext i8 %281 to i32
  %283 = or i32 %279, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %321

285:                                              ; preds = %272
  store i32 0, ptr %9, align 4
  %286 = load i64, ptr %6, align 8
  %287 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %286
  %288 = load i8, ptr %287, align 1
  %289 = zext i8 %288 to i32
  %290 = sub nsw i32 %289, 1
  %291 = shl i32 1, %290
  %292 = sext i32 %291 to i64
  store i64 %292, ptr %8, align 8
  store i64 0, ptr %5, align 8
  br label %293

293:                                              ; preds = %313, %285
  %294 = load i64, ptr %5, align 8
  %295 = load i64, ptr %6, align 8
  %296 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %295
  %297 = load i8, ptr %296, align 1
  %298 = zext i8 %297 to i64
  %299 = icmp ult i64 %294, %298
  br i1 %299, label %300, label %318

300:                                              ; preds = %293
  %301 = load i32, ptr %9, align 4
  %302 = mul i32 %301, 2
  %303 = add i32 %302, 1
  store i32 %303, ptr %9, align 4
  %304 = load i64, ptr %6, align 8
  %305 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %304
  %306 = load i32, ptr %305, align 4
  %307 = zext i32 %306 to i64
  %308 = load i64, ptr %8, align 8
  %309 = and i64 %307, %308
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %300
  %312 = add i32 %303, 1
  store i32 %312, ptr %9, align 4
  br label %313

313:                                              ; preds = %311, %300
  %314 = load i64, ptr %8, align 8
  %315 = lshr i64 %314, 1
  store i64 %315, ptr %8, align 8
  %316 = load i64, ptr %5, align 8
  %317 = add i64 %316, 1
  store i64 %317, ptr %5, align 8
  br label %293, !llvm.loop !17

318:                                              ; preds = %293
  %319 = load i32, ptr %9, align 4
  %320 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %295
  store i32 %319, ptr %320, align 4
  br label %321

321:                                              ; preds = %272, %318
  %322 = load i64, ptr %6, align 8
  %323 = add i64 %322, 1
  store i64 %323, ptr %6, align 8
  br label %269, !llvm.loop !18

324:                                              ; preds = %269
  store i64 1, ptr %5, align 8
  br label %325

325:                                              ; preds = %.critedge, %324
  %326 = load i64, ptr %5, align 8
  %327 = icmp ult i64 %326, 256
  br i1 %327, label %328, label %361

328:                                              ; preds = %325
  %329 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %326
  %330 = load i32, ptr %329, align 4
  store i32 %330, ptr %10, align 4
  %331 = load i64, ptr %5, align 8
  %332 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %331
  %333 = load i8, ptr %332, align 1
  store i8 %333, ptr %11, align 1
  %334 = load i64, ptr %5, align 8
  store i64 %334, ptr %6, align 8
  br label %335

335:                                              ; preds = %344, %328
  %336 = load i64, ptr %6, align 8
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %.critedge

338:                                              ; preds = %335
  %339 = sub i64 %336, 1
  %340 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %339
  %341 = load i32, ptr %340, align 4
  %342 = load i32, ptr %10, align 4
  %343 = icmp ugt i32 %341, %342
  br i1 %343, label %344, label %.critedge

344:                                              ; preds = %338
  %345 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %336
  store i32 %341, ptr %345, align 4
  %346 = load i64, ptr %6, align 8
  %347 = sub i64 %346, 1
  %348 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %347
  %349 = load i8, ptr %348, align 1
  %350 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %346
  store i8 %349, ptr %350, align 1
  %351 = load i64, ptr %6, align 8
  %352 = add i64 %351, -1
  store i64 %352, ptr %6, align 8
  br label %335, !llvm.loop !19

.critedge:                                        ; preds = %335, %338
  %353 = load i32, ptr %10, align 4
  %354 = load i64, ptr %6, align 8
  %355 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %354
  store i32 %353, ptr %355, align 4
  %356 = load i8, ptr %11, align 1
  %357 = load i64, ptr %6, align 8
  %358 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %357
  store i8 %356, ptr %358, align 1
  %359 = load i64, ptr %5, align 8
  %360 = add i64 %359, 1
  store i64 %360, ptr %5, align 8
  br label %325, !llvm.loop !20

361:                                              ; preds = %325
  store i64 0, ptr %6, align 8
  br label %362

362:                                              ; preds = %367, %361
  %363 = load i64, ptr %6, align 8
  %364 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %363
  %365 = load i32, ptr %364, align 4
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %369

367:                                              ; preds = %362
  %368 = add i64 %363, 1
  store i64 %368, ptr %6, align 8
  br label %362, !llvm.loop !21

369:                                              ; preds = %362
  store i32 0, ptr %9, align 4
  %370 = load i64, ptr %6, align 8
  store i64 %370, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  %371 = load ptr, ptr %14, align 8
  store ptr %371, ptr %12, align 8
  %372 = load ptr, ptr %3, align 8
  store ptr %372, ptr %13, align 8
  br label %373

373:                                              ; preds = %417, %369
  %374 = load i64, ptr %7, align 8
  %375 = load i64, ptr %4, align 8
  %376 = icmp ult i64 %374, %375
  br i1 %376, label %377, label %418

377:                                              ; preds = %373
  %378 = load i32, ptr %9, align 4
  %379 = mul i32 %378, 2
  %380 = add i32 %379, 1
  store i32 %380, ptr %9, align 4
  %381 = load ptr, ptr %12, align 8
  %382 = load i8, ptr %381, align 1
  %383 = zext i8 %382 to i64
  %384 = load i64, ptr %8, align 8
  %385 = and i64 %383, %384
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %389

387:                                              ; preds = %377
  %388 = add i32 %380, 1
  store i32 %388, ptr %9, align 4
  br label %389

389:                                              ; preds = %387, %377
  br label %390

390:                                              ; preds = %396, %389
  %391 = load i64, ptr %5, align 8
  %392 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %391
  %393 = load i32, ptr %392, align 4
  %394 = load i32, ptr %9, align 4
  %395 = icmp ult i32 %393, %394
  br i1 %395, label %396, label %398

396:                                              ; preds = %390
  %397 = add i64 %391, 1
  store i64 %397, ptr %5, align 8
  br label %390, !llvm.loop !22

398:                                              ; preds = %390
  %399 = icmp eq i32 %394, %393
  br i1 %399, label %400, label %409

400:                                              ; preds = %398
  %401 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %391
  %402 = load i8, ptr %401, align 1
  %403 = load ptr, ptr %13, align 8
  store i8 %402, ptr %403, align 1
  %404 = load ptr, ptr %13, align 8
  %405 = getelementptr inbounds nuw i8, ptr %404, i32 1
  store ptr %405, ptr %13, align 8
  %406 = load i64, ptr %7, align 8
  %407 = add i64 %406, 1
  store i64 %407, ptr %7, align 8
  store i32 0, ptr %9, align 4
  %408 = load i64, ptr %6, align 8
  store i64 %408, ptr %5, align 8
  br label %409

409:                                              ; preds = %400, %398
  %410 = load i64, ptr %8, align 8
  %411 = icmp ugt i64 %410, 1
  br i1 %411, label %412, label %414

412:                                              ; preds = %409
  %413 = lshr i64 %410, 1
  store i64 %413, ptr %8, align 8
  br label %417

414:                                              ; preds = %409
  store i64 128, ptr %8, align 8
  %415 = load ptr, ptr %12, align 8
  %416 = getelementptr inbounds nuw i8, ptr %415, i32 1
  store ptr %416, ptr %12, align 8
  br label %417

417:                                              ; preds = %414, %412
  br label %373, !llvm.loop !23

418:                                              ; preds = %373
  %419 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %419)
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
  %23 = add nsw i32 %18, %18
  store i32 %23, ptr %9, align 4
  %24 = load i32, ptr %7, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %22
  %27 = load ptr, ptr %5, align 8
  %28 = load ptr, ptr %6, align 8
  %29 = sub nsw i32 %23, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, ptr %28, i64 %30
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr inbounds nuw i64, ptr %27, i64 %32
  %34 = load i64, ptr %33, align 8
  %35 = sext i32 %23 to i64
  %36 = getelementptr inbounds i64, ptr %28, i64 %35
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds nuw i64, ptr %27, i64 %37
  %39 = load i64, ptr %38, align 8
  %40 = icmp ugt i64 %34, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %26
  %42 = add nsw i32 %23, 1
  store i32 %42, ptr %9, align 4
  br label %43

43:                                               ; preds = %41, %26, %22
  %44 = load ptr, ptr %5, align 8
  %45 = load i32, ptr %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, ptr %44, i64 %46
  %48 = load i64, ptr %47, align 8
  %49 = load ptr, ptr %6, align 8
  %50 = load i32, ptr %9, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, ptr %49, i64 %52
  %54 = load i64, ptr %53, align 8
  %55 = getelementptr inbounds nuw i64, ptr %44, i64 %54
  %56 = load i64, ptr %55, align 8
  %57 = icmp ult i64 %48, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %43
  %59 = load i32, ptr %8, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, ptr %49, i64 %61
  store i64 %54, ptr %62, align 8
  %63 = load i32, ptr %9, align 4
  store i32 %63, ptr %8, align 4
  br label %17, !llvm.loop !24

64:                                               ; preds = %43, %17
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
  %5 = sdiv i32 %4, 127773
  store i32 %5, ptr %1, align 4
  %6 = load i32, ptr @seed, align 4
  %7 = mul nsw i32 %5, 127773
  %8 = sub nsw i32 %6, %7
  %9 = mul nsw i32 16807, %8
  %10 = mul nsw i32 2836, %5
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
