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
  br i1 %13, label %.lr.ph, label %29

.lr.ph:                                           ; preds = %1
  br label %14

14:                                               ; preds = %.lr.ph, %22
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
  %25 = load i32, ptr %6, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, ptr %2, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %14, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %22
  br label %29

29:                                               ; preds = %._crit_edge, %1
  %30 = load ptr, ptr %4, align 8
  ret ptr %30
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
  %39 = mul nuw nsw i64 1, %38
  call void @llvm.memset.p0.i64(ptr align 1 %36, i8 0, i64 %39, i1 false)
  %40 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %40, i8 0, i64 4096, i1 false)
  %41 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %41, i8 0, i64 2048, i1 false)
  %42 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %42, i8 0, i64 2048, i1 false)
  %43 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %43, i8 0, i64 1024, i1 false)
  %44 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %44, i8 0, i64 256, i1 false)
  store i64 0, ptr %5, align 8
  %45 = load i64, ptr %5, align 8
  %46 = load i64, ptr %4, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %.lr.ph, label %63

.lr.ph:                                           ; preds = %2
  br label %48

48:                                               ; preds = %.lr.ph, %57
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
  %60 = load i64, ptr %5, align 8
  %61 = load i64, ptr %4, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %48, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %57
  br label %63

63:                                               ; preds = %._crit_edge, %2
  store i64 0, ptr %7, align 8
  store i64 0, ptr %5, align 8
  %64 = load i64, ptr %5, align 8
  %65 = icmp ult i64 %64, 256
  br i1 %65, label %.lr.ph2, label %83

.lr.ph2:                                          ; preds = %63
  br label %66

66:                                               ; preds = %.lr.ph2, %78
  %67 = load i64, ptr %5, align 8
  %68 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %67
  %69 = load i64, ptr %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load i64, ptr %5, align 8
  %73 = load i64, ptr %7, align 8
  %74 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %73
  store i64 %72, ptr %74, align 8
  %75 = load i64, ptr %7, align 8
  %76 = add i64 %75, 1
  store i64 %76, ptr %7, align 8
  br label %77

77:                                               ; preds = %71, %66
  br label %78

78:                                               ; preds = %77
  %79 = load i64, ptr %5, align 8
  %80 = add i64 %79, 1
  store i64 %80, ptr %5, align 8
  %81 = load i64, ptr %5, align 8
  %82 = icmp ult i64 %81, 256
  br i1 %82, label %66, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %78
  br label %83

83:                                               ; preds = %._crit_edge3, %63
  %84 = load i64, ptr %7, align 8
  store i64 %84, ptr %5, align 8
  %85 = load i64, ptr %5, align 8
  %86 = icmp ugt i64 %85, 0
  br i1 %86, label %.lr.ph5, label %99

.lr.ph5:                                          ; preds = %83
  br label %87

87:                                               ; preds = %.lr.ph5, %94
  %88 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 0
  %89 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 0
  %90 = load i64, ptr %7, align 8
  %91 = trunc i64 %90 to i32
  %92 = load i64, ptr %5, align 8
  %93 = trunc i64 %92 to i32
  call void @heap_adjust(ptr noundef %88, ptr noundef %89, i32 noundef %91, i32 noundef %93)
  br label %94

94:                                               ; preds = %87
  %95 = load i64, ptr %5, align 8
  %96 = add i64 %95, -1
  store i64 %96, ptr %5, align 8
  %97 = load i64, ptr %5, align 8
  %98 = icmp ugt i64 %97, 0
  br i1 %98, label %87, label %._crit_edge6, !llvm.loop !11

._crit_edge6:                                     ; preds = %94
  br label %99

99:                                               ; preds = %._crit_edge6, %83
  %100 = load i64, ptr %7, align 8
  %101 = icmp ugt i64 %100, 1
  br i1 %101, label %.lr.ph8, label %146

.lr.ph8:                                          ; preds = %99
  br label %102

102:                                              ; preds = %.lr.ph8, %102
  %103 = load i64, ptr %7, align 8
  %104 = add i64 %103, -1
  store i64 %104, ptr %7, align 8
  %105 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 0
  %106 = load i64, ptr %105, align 16
  store i64 %106, ptr %20, align 8
  %107 = load i64, ptr %7, align 8
  %108 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %107
  %109 = load i64, ptr %108, align 8
  %110 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 0
  store i64 %109, ptr %110, align 16
  %111 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 0
  %112 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 0
  %113 = load i64, ptr %7, align 8
  %114 = trunc i64 %113 to i32
  call void @heap_adjust(ptr noundef %111, ptr noundef %112, i32 noundef %114, i32 noundef 1)
  %115 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 0
  %116 = load i64, ptr %115, align 16
  %117 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %116
  %118 = load i64, ptr %117, align 8
  %119 = load i64, ptr %20, align 8
  %120 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %119
  %121 = load i64, ptr %120, align 8
  %122 = add i64 %118, %121
  %123 = load i64, ptr %7, align 8
  %124 = add i64 256, %123
  %125 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %124
  store i64 %122, ptr %125, align 8
  %126 = load i64, ptr %7, align 8
  %127 = add i64 256, %126
  %128 = trunc i64 %127 to i32
  %129 = load i64, ptr %20, align 8
  %130 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %129
  store i32 %128, ptr %130, align 4
  %131 = load i64, ptr %7, align 8
  %132 = sub i64 -256, %131
  %133 = trunc i64 %132 to i32
  %134 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 0
  %135 = load i64, ptr %134, align 16
  %136 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %135
  store i32 %133, ptr %136, align 4
  %137 = load i64, ptr %7, align 8
  %138 = add i64 256, %137
  %139 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 0
  store i64 %138, ptr %139, align 16
  %140 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 0
  %141 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 0
  %142 = load i64, ptr %7, align 8
  %143 = trunc i64 %142 to i32
  call void @heap_adjust(ptr noundef %140, ptr noundef %141, i32 noundef %143, i32 noundef 1)
  %144 = load i64, ptr %7, align 8
  %145 = icmp ugt i64 %144, 1
  br i1 %145, label %102, label %._crit_edge9, !llvm.loop !12

._crit_edge9:                                     ; preds = %102
  br label %146

146:                                              ; preds = %._crit_edge9, %99
  %147 = load i64, ptr %7, align 8
  %148 = add i64 256, %147
  %149 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %148
  store i32 0, ptr %149, align 4
  store i64 0, ptr %23, align 8
  store i64 0, ptr %24, align 8
  store i64 0, ptr %21, align 8
  %150 = load i64, ptr %21, align 8
  %151 = icmp ult i64 %150, 256
  br i1 %151, label %.lr.ph14, label %215

.lr.ph14:                                         ; preds = %146
  br label %152

152:                                              ; preds = %.lr.ph14, %210
  %153 = load i64, ptr %21, align 8
  %154 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %153
  %155 = load i64, ptr %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %152
  %158 = load i64, ptr %21, align 8
  %159 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %158
  store i32 0, ptr %159, align 4
  %160 = load i64, ptr %21, align 8
  %161 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %160
  store i8 0, ptr %161, align 1
  br label %209

162:                                              ; preds = %152
  store i64 0, ptr %5, align 8
  store i64 1, ptr %6, align 8
  store i64 0, ptr %22, align 8
  %163 = load i64, ptr %21, align 8
  %164 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %163
  %165 = load i32, ptr %164, align 4
  store i32 %165, ptr %25, align 4
  %166 = load i32, ptr %25, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %.lr.ph11, label %188

.lr.ph11:                                         ; preds = %162
  br label %168

168:                                              ; preds = %.lr.ph11, %177
  %169 = load i32, ptr %25, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %168
  %172 = load i64, ptr %6, align 8
  %173 = load i64, ptr %22, align 8
  %174 = add i64 %173, %172
  store i64 %174, ptr %22, align 8
  %175 = load i32, ptr %25, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, ptr %25, align 4
  br label %177

177:                                              ; preds = %171, %168
  %178 = load i32, ptr %25, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [512 x i32], ptr %17, i64 0, i64 %179
  %181 = load i32, ptr %180, align 4
  store i32 %181, ptr %25, align 4
  %182 = load i64, ptr %6, align 8
  %183 = shl i64 %182, 1
  store i64 %183, ptr %6, align 8
  %184 = load i64, ptr %5, align 8
  %185 = add i64 %184, 1
  store i64 %185, ptr %5, align 8
  %186 = load i32, ptr %25, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %168, label %._crit_edge12, !llvm.loop !13

._crit_edge12:                                    ; preds = %177
  br label %188

188:                                              ; preds = %._crit_edge12, %162
  %189 = load i64, ptr %22, align 8
  %190 = trunc i64 %189 to i32
  %191 = load i64, ptr %21, align 8
  %192 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %191
  store i32 %190, ptr %192, align 4
  %193 = load i64, ptr %5, align 8
  %194 = trunc i64 %193 to i8
  %195 = load i64, ptr %21, align 8
  %196 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %195
  store i8 %194, ptr %196, align 1
  %197 = load i64, ptr %22, align 8
  %198 = load i64, ptr %23, align 8
  %199 = icmp ugt i64 %197, %198
  br i1 %199, label %200, label %202

200:                                              ; preds = %188
  %201 = load i64, ptr %22, align 8
  store i64 %201, ptr %23, align 8
  br label %202

202:                                              ; preds = %200, %188
  %203 = load i64, ptr %5, align 8
  %204 = load i64, ptr %24, align 8
  %205 = icmp ugt i64 %203, %204
  br i1 %205, label %206, label %208

206:                                              ; preds = %202
  %207 = load i64, ptr %5, align 8
  store i64 %207, ptr %24, align 8
  br label %208

208:                                              ; preds = %206, %202
  br label %209

209:                                              ; preds = %208, %157
  br label %210

210:                                              ; preds = %209
  %211 = load i64, ptr %21, align 8
  %212 = add i64 %211, 1
  store i64 %212, ptr %21, align 8
  %213 = load i64, ptr %21, align 8
  %214 = icmp ult i64 %213, 256
  br i1 %214, label %152, label %._crit_edge15, !llvm.loop !14

._crit_edge15:                                    ; preds = %210
  br label %215

215:                                              ; preds = %._crit_edge15, %146
  %216 = load i64, ptr %24, align 8
  %217 = icmp ugt i64 %216, 32
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = call ptr @__acrt_iob_func(i32 noundef 2)
  %220 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %219, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

221:                                              ; preds = %215
  store i64 0, ptr %26, align 8
  store i8 0, ptr %27, align 1
  store i32 -1, ptr %28, align 4
  %222 = load ptr, ptr %3, align 8
  store ptr %222, ptr %13, align 8
  %223 = load i64, ptr %23, align 8
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %221
  %226 = call ptr @__acrt_iob_func(i32 noundef 2)
  %227 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %226, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

228:                                              ; preds = %221
  store i64 0, ptr %6, align 8
  %229 = load i64, ptr %6, align 8
  %230 = load i64, ptr %4, align 8
  %231 = icmp ult i64 %229, %230
  br i1 %231, label %.lr.ph20, label %312

.lr.ph20:                                         ; preds = %228
  br label %232

232:                                              ; preds = %.lr.ph20, %306
  %233 = load ptr, ptr %13, align 8
  %234 = load i8, ptr %233, align 1
  %235 = zext i8 %234 to i64
  %236 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %235
  %237 = load i8, ptr %236, align 1
  %238 = zext i8 %237 to i32
  %239 = sub nsw i32 %238, 1
  %240 = shl nuw i32 1, %239
  %241 = sext i32 %240 to i64
  store i64 %241, ptr %8, align 8
  store i64 0, ptr %5, align 8
  %242 = load i64, ptr %5, align 8
  %243 = load ptr, ptr %13, align 8
  %244 = load i8, ptr %243, align 1
  %245 = zext i8 %244 to i64
  %246 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %245
  %247 = load i8, ptr %246, align 1
  %248 = zext i8 %247 to i64
  %249 = icmp ult i64 %242, %248
  br i1 %249, label %.lr.ph17, label %303

.lr.ph17:                                         ; preds = %232
  br label %250

250:                                              ; preds = %.lr.ph17, %292
  %251 = load i32, ptr %28, align 4
  %252 = icmp eq i32 %251, 7
  br i1 %252, label %253, label %267

253:                                              ; preds = %250
  %254 = load i8, ptr %27, align 1
  %255 = load ptr, ptr %14, align 8
  %256 = load i64, ptr %26, align 8
  %257 = getelementptr inbounds nuw i8, ptr %255, i64 %256
  store i8 %254, ptr %257, align 1
  %258 = load i64, ptr %26, align 8
  %259 = add i64 %258, 1
  store i64 %259, ptr %26, align 8
  %260 = load i64, ptr %26, align 8
  %261 = load i64, ptr %4, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %263, label %266

263:                                              ; preds = %253
  %264 = call ptr @__acrt_iob_func(i32 noundef 2)
  %265 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %264, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

266:                                              ; preds = %253
  store i32 0, ptr %28, align 4
  store i8 0, ptr %27, align 1
  br label %274

267:                                              ; preds = %250
  %268 = load i32, ptr %28, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, ptr %28, align 4
  %270 = load i8, ptr %27, align 1
  %271 = sext i8 %270 to i32
  %272 = shl nsw i32 %271, 1
  %273 = trunc i32 %272 to i8
  store i8 %273, ptr %27, align 1
  br label %274

274:                                              ; preds = %267, %266
  %275 = load ptr, ptr %13, align 8
  %276 = load i8, ptr %275, align 1
  %277 = zext i8 %276 to i64
  %278 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %277
  %279 = load i32, ptr %278, align 4
  %280 = zext i32 %279 to i64
  %281 = load i64, ptr %8, align 8
  %282 = and i64 %280, %281
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %289

284:                                              ; preds = %274
  %285 = load i8, ptr %27, align 1
  %286 = sext i8 %285 to i32
  %287 = or i32 %286, 1
  %288 = trunc i32 %287 to i8
  store i8 %288, ptr %27, align 1
  br label %289

289:                                              ; preds = %284, %274
  %290 = load i64, ptr %8, align 8
  %291 = lshr i64 %290, 1
  store i64 %291, ptr %8, align 8
  br label %292

292:                                              ; preds = %289
  %293 = load i64, ptr %5, align 8
  %294 = add i64 %293, 1
  store i64 %294, ptr %5, align 8
  %295 = load i64, ptr %5, align 8
  %296 = load ptr, ptr %13, align 8
  %297 = load i8, ptr %296, align 1
  %298 = zext i8 %297 to i64
  %299 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %298
  %300 = load i8, ptr %299, align 1
  %301 = zext i8 %300 to i64
  %302 = icmp ult i64 %295, %301
  br i1 %302, label %250, label %._crit_edge18, !llvm.loop !15

._crit_edge18:                                    ; preds = %292
  br label %303

303:                                              ; preds = %._crit_edge18, %232
  %304 = load ptr, ptr %13, align 8
  %305 = getelementptr inbounds nuw i8, ptr %304, i32 1
  store ptr %305, ptr %13, align 8
  br label %306

306:                                              ; preds = %303
  %307 = load i64, ptr %6, align 8
  %308 = add i64 %307, 1
  store i64 %308, ptr %6, align 8
  %309 = load i64, ptr %6, align 8
  %310 = load i64, ptr %4, align 8
  %311 = icmp ult i64 %309, %310
  br i1 %311, label %232, label %._crit_edge21, !llvm.loop !16

._crit_edge21:                                    ; preds = %306
  br label %312

312:                                              ; preds = %._crit_edge21, %228
  %313 = load i32, ptr %28, align 4
  %314 = sub nsw i32 7, %313
  %315 = load i8, ptr %27, align 1
  %316 = sext i8 %315 to i32
  %317 = shl i32 %316, %314
  %318 = trunc i32 %317 to i8
  store i8 %318, ptr %27, align 1
  %319 = load i8, ptr %27, align 1
  %320 = load ptr, ptr %14, align 8
  %321 = load i64, ptr %26, align 8
  %322 = getelementptr inbounds nuw i8, ptr %320, i64 %321
  store i8 %319, ptr %322, align 1
  %323 = load i64, ptr %26, align 8
  %324 = add i64 %323, 1
  store i64 %324, ptr %26, align 8
  %325 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %325, i8 0, i64 1024, i1 false)
  %326 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 0
  store ptr %326, ptr %31, align 8
  store i64 0, ptr %6, align 8
  %327 = load i64, ptr %6, align 8
  %328 = icmp ult i64 %327, 256
  br i1 %328, label %.lr.ph26, label %394

.lr.ph26:                                         ; preds = %312
  br label %329

329:                                              ; preds = %.lr.ph26, %389
  %330 = load i64, ptr %6, align 8
  %331 = trunc i64 %330 to i8
  %332 = load ptr, ptr %31, align 8
  store i8 %331, ptr %332, align 1
  %333 = load ptr, ptr %31, align 8
  %334 = getelementptr inbounds nuw i8, ptr %333, i32 1
  store ptr %334, ptr %31, align 8
  %335 = load i64, ptr %6, align 8
  %336 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %335
  %337 = load i32, ptr %336, align 4
  %338 = load i64, ptr %6, align 8
  %339 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %338
  %340 = load i8, ptr %339, align 1
  %341 = zext i8 %340 to i32
  %342 = or i32 %337, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %388

344:                                              ; preds = %329
  store i32 0, ptr %9, align 4
  %345 = load i64, ptr %6, align 8
  %346 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %345
  %347 = load i8, ptr %346, align 1
  %348 = zext i8 %347 to i32
  %349 = sub nsw i32 %348, 1
  %350 = shl nuw i32 1, %349
  %351 = sext i32 %350 to i64
  store i64 %351, ptr %8, align 8
  store i64 0, ptr %5, align 8
  %352 = load i64, ptr %5, align 8
  %353 = load i64, ptr %6, align 8
  %354 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %353
  %355 = load i8, ptr %354, align 1
  %356 = zext i8 %355 to i64
  %357 = icmp ult i64 %352, %356
  br i1 %357, label %.lr.ph23, label %384

.lr.ph23:                                         ; preds = %344
  br label %358

358:                                              ; preds = %.lr.ph23, %375
  %359 = load i32, ptr %9, align 4
  %360 = mul i32 %359, 2
  %361 = add i32 %360, 1
  store i32 %361, ptr %9, align 4
  %362 = load i64, ptr %6, align 8
  %363 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %362
  %364 = load i32, ptr %363, align 4
  %365 = zext i32 %364 to i64
  %366 = load i64, ptr %8, align 8
  %367 = and i64 %365, %366
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %372

369:                                              ; preds = %358
  %370 = load i32, ptr %9, align 4
  %371 = add i32 %370, 1
  store i32 %371, ptr %9, align 4
  br label %372

372:                                              ; preds = %369, %358
  %373 = load i64, ptr %8, align 8
  %374 = lshr i64 %373, 1
  store i64 %374, ptr %8, align 8
  br label %375

375:                                              ; preds = %372
  %376 = load i64, ptr %5, align 8
  %377 = add i64 %376, 1
  store i64 %377, ptr %5, align 8
  %378 = load i64, ptr %5, align 8
  %379 = load i64, ptr %6, align 8
  %380 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %379
  %381 = load i8, ptr %380, align 1
  %382 = zext i8 %381 to i64
  %383 = icmp ult i64 %378, %382
  br i1 %383, label %358, label %._crit_edge24, !llvm.loop !17

._crit_edge24:                                    ; preds = %375
  br label %384

384:                                              ; preds = %._crit_edge24, %344
  %385 = load i32, ptr %9, align 4
  %386 = load i64, ptr %6, align 8
  %387 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %386
  store i32 %385, ptr %387, align 4
  br label %388

388:                                              ; preds = %384, %329
  br label %389

389:                                              ; preds = %388
  %390 = load i64, ptr %6, align 8
  %391 = add i64 %390, 1
  store i64 %391, ptr %6, align 8
  %392 = load i64, ptr %6, align 8
  %393 = icmp ult i64 %392, 256
  br i1 %393, label %329, label %._crit_edge27, !llvm.loop !18

._crit_edge27:                                    ; preds = %389
  br label %394

394:                                              ; preds = %._crit_edge27, %312
  store i64 1, ptr %5, align 8
  %395 = load i64, ptr %5, align 8
  %396 = icmp ult i64 %395, 256
  br i1 %396, label %.lr.ph29, label %444

.lr.ph29:                                         ; preds = %394
  br label %397

397:                                              ; preds = %.lr.ph29, %439
  %398 = load i64, ptr %5, align 8
  %399 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %398
  %400 = load i32, ptr %399, align 4
  store i32 %400, ptr %10, align 4
  %401 = load i64, ptr %5, align 8
  %402 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %401
  %403 = load i8, ptr %402, align 1
  store i8 %403, ptr %11, align 1
  %404 = load i64, ptr %5, align 8
  store i64 %404, ptr %6, align 8
  br label %405

405:                                              ; preds = %417, %397
  %406 = load i64, ptr %6, align 8
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %415

408:                                              ; preds = %405
  %409 = load i64, ptr %6, align 8
  %410 = sub i64 %409, 1
  %411 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %410
  %412 = load i32, ptr %411, align 4
  %413 = load i32, ptr %10, align 4
  %414 = icmp ugt i32 %412, %413
  br label %415

415:                                              ; preds = %408, %405
  %416 = phi i1 [ false, %405 ], [ %414, %408 ]
  br i1 %416, label %417, label %432

417:                                              ; preds = %415
  %418 = load i64, ptr %6, align 8
  %419 = sub i64 %418, 1
  %420 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %419
  %421 = load i32, ptr %420, align 4
  %422 = load i64, ptr %6, align 8
  %423 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %422
  store i32 %421, ptr %423, align 4
  %424 = load i64, ptr %6, align 8
  %425 = sub i64 %424, 1
  %426 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %425
  %427 = load i8, ptr %426, align 1
  %428 = load i64, ptr %6, align 8
  %429 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %428
  store i8 %427, ptr %429, align 1
  %430 = load i64, ptr %6, align 8
  %431 = add i64 %430, -1
  store i64 %431, ptr %6, align 8
  br label %405, !llvm.loop !19

432:                                              ; preds = %415
  %433 = load i32, ptr %10, align 4
  %434 = load i64, ptr %6, align 8
  %435 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %434
  store i32 %433, ptr %435, align 4
  %436 = load i8, ptr %11, align 1
  %437 = load i64, ptr %6, align 8
  %438 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %437
  store i8 %436, ptr %438, align 1
  br label %439

439:                                              ; preds = %432
  %440 = load i64, ptr %5, align 8
  %441 = add i64 %440, 1
  store i64 %441, ptr %5, align 8
  %442 = load i64, ptr %5, align 8
  %443 = icmp ult i64 %442, 256
  br i1 %443, label %397, label %._crit_edge30, !llvm.loop !20

._crit_edge30:                                    ; preds = %439
  br label %444

444:                                              ; preds = %._crit_edge30, %394
  store i64 0, ptr %6, align 8
  %445 = load i64, ptr %6, align 8
  %446 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %445
  %447 = load i32, ptr %446, align 4
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %.lr.ph32, label %457

.lr.ph32:                                         ; preds = %444
  br label %449

449:                                              ; preds = %.lr.ph32, %450
  br label %450

450:                                              ; preds = %449
  %451 = load i64, ptr %6, align 8
  %452 = add i64 %451, 1
  store i64 %452, ptr %6, align 8
  %453 = load i64, ptr %6, align 8
  %454 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %453
  %455 = load i32, ptr %454, align 4
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %449, label %._crit_edge33, !llvm.loop !21

._crit_edge33:                                    ; preds = %450
  br label %457

457:                                              ; preds = %._crit_edge33, %444
  store i32 0, ptr %9, align 4
  %458 = load i64, ptr %6, align 8
  store i64 %458, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  %459 = load ptr, ptr %14, align 8
  store ptr %459, ptr %12, align 8
  %460 = load ptr, ptr %3, align 8
  store ptr %460, ptr %13, align 8
  %461 = load i64, ptr %7, align 8
  %462 = load i64, ptr %4, align 8
  %463 = icmp ult i64 %461, %462
  br i1 %463, label %.lr.ph38, label %520

.lr.ph38:                                         ; preds = %457
  br label %464

464:                                              ; preds = %.lr.ph38, %516
  %465 = load i32, ptr %9, align 4
  %466 = mul i32 %465, 2
  %467 = add i32 %466, 1
  store i32 %467, ptr %9, align 4
  %468 = load ptr, ptr %12, align 8
  %469 = load i8, ptr %468, align 1
  %470 = zext i8 %469 to i64
  %471 = load i64, ptr %8, align 8
  %472 = and i64 %470, %471
  %473 = icmp ne i64 %472, 0
  br i1 %473, label %474, label %477

474:                                              ; preds = %464
  %475 = load i32, ptr %9, align 4
  %476 = add i32 %475, 1
  store i32 %476, ptr %9, align 4
  br label %477

477:                                              ; preds = %474, %464
  %478 = load i64, ptr %5, align 8
  %479 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %478
  %480 = load i32, ptr %479, align 4
  %481 = load i32, ptr %9, align 4
  %482 = icmp ult i32 %480, %481
  br i1 %482, label %.lr.ph35, label %491

.lr.ph35:                                         ; preds = %477
  br label %483

483:                                              ; preds = %.lr.ph35, %483
  %484 = load i64, ptr %5, align 8
  %485 = add i64 %484, 1
  store i64 %485, ptr %5, align 8
  %486 = load i64, ptr %5, align 8
  %487 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %486
  %488 = load i32, ptr %487, align 4
  %489 = load i32, ptr %9, align 4
  %490 = icmp ult i32 %488, %489
  br i1 %490, label %483, label %._crit_edge36, !llvm.loop !22

._crit_edge36:                                    ; preds = %483
  br label %491

491:                                              ; preds = %._crit_edge36, %477
  %492 = load i32, ptr %9, align 4
  %493 = load i64, ptr %5, align 8
  %494 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %493
  %495 = load i32, ptr %494, align 4
  %496 = icmp eq i32 %492, %495
  br i1 %496, label %497, label %507

497:                                              ; preds = %491
  %498 = load i64, ptr %5, align 8
  %499 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %498
  %500 = load i8, ptr %499, align 1
  %501 = load ptr, ptr %13, align 8
  store i8 %500, ptr %501, align 1
  %502 = load ptr, ptr %13, align 8
  %503 = getelementptr inbounds nuw i8, ptr %502, i32 1
  store ptr %503, ptr %13, align 8
  %504 = load i64, ptr %7, align 8
  %505 = add i64 %504, 1
  store i64 %505, ptr %7, align 8
  store i32 0, ptr %9, align 4
  %506 = load i64, ptr %6, align 8
  store i64 %506, ptr %5, align 8
  br label %507

507:                                              ; preds = %497, %491
  %508 = load i64, ptr %8, align 8
  %509 = icmp ugt i64 %508, 1
  br i1 %509, label %510, label %513

510:                                              ; preds = %507
  %511 = load i64, ptr %8, align 8
  %512 = lshr i64 %511, 1
  store i64 %512, ptr %8, align 8
  br label %516

513:                                              ; preds = %507
  store i64 128, ptr %8, align 8
  %514 = load ptr, ptr %12, align 8
  %515 = getelementptr inbounds nuw i8, ptr %514, i32 1
  store ptr %515, ptr %12, align 8
  br label %516

516:                                              ; preds = %513, %510
  %517 = load i64, ptr %7, align 8
  %518 = load i64, ptr %4, align 8
  %519 = icmp ult i64 %517, %518
  br i1 %519, label %464, label %._crit_edge39, !llvm.loop !23

._crit_edge39:                                    ; preds = %516
  br label %520

520:                                              ; preds = %._crit_edge39, %457
  %521 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %521)
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
  br i1 %21, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %22

22:                                               ; preds = %.lr.ph, %68
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
  br i1 %66, label %67, label %68

67:                                               ; preds = %51
  br label %85

68:                                               ; preds = %51
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
  %81 = load i32, ptr %8, align 4
  %82 = load i32, ptr %7, align 4
  %83 = sdiv i32 %82, 2
  %84 = icmp sle i32 %81, %83
  br i1 %84, label %22, label %..loopexit_crit_edge, !llvm.loop !24

..loopexit_crit_edge:                             ; preds = %68
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %85

85:                                               ; preds = %.loopexit, %67
  %86 = load i32, ptr %10, align 4
  %87 = sext i32 %86 to i64
  %88 = load ptr, ptr %6, align 8
  %89 = load i32, ptr %8, align 4
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, ptr %88, i64 %91
  store i64 %87, ptr %92, align 8
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
  br i1 %11, label %12, label %31

12:                                               ; preds = %2
  store i32 1, ptr %6, align 4
  %13 = load i32, ptr %6, align 4
  %14 = load i32, ptr %4, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %12
  br label %16

16:                                               ; preds = %.lr.ph, %24
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds nuw ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8
  %20 = call i32 @strcmp(ptr noundef %19, ptr noundef @.str.4) #7
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  store i8 1, ptr %7, align 1
  br label %30

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23
  %25 = load i32, ptr %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %6, align 4
  %27 = load i32, ptr %6, align 4
  %28 = load i32, ptr %4, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %16, label %..loopexit_crit_edge, !llvm.loop !25

..loopexit_crit_edge:                             ; preds = %24
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %12
  br label %30

30:                                               ; preds = %.loopexit, %22
  br label %31

31:                                               ; preds = %30, %2
  %32 = call ptr @generate_test_data(i64 noundef 10000000)
  store ptr %32, ptr %8, align 8
  store i32 0, ptr %6, align 4
  %33 = load i32, ptr %6, align 4
  %34 = icmp slt i32 %33, 30
  br i1 %34, label %.lr.ph1, label %42

.lr.ph1:                                          ; preds = %31
  br label %35

35:                                               ; preds = %.lr.ph1, %37
  %36 = load ptr, ptr %8, align 8
  call void @compdecomp(ptr noundef %36, i64 noundef 10000000)
  br label %37

37:                                               ; preds = %35
  %38 = load i32, ptr %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %6, align 4
  %40 = load i32, ptr %6, align 4
  %41 = icmp slt i32 %40, 30
  br i1 %41, label %35, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %37
  br label %42

42:                                               ; preds = %._crit_edge, %31
  store double 0.000000e+00, ptr %9, align 8
  %43 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %43)
  %44 = load i8, ptr %7, align 1
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = call ptr @__acrt_iob_func(i32 noundef 1)
  %48 = load double, ptr %9, align 8
  %49 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef @.str.5, double noundef %48) #7
  br label %54

50:                                               ; preds = %42
  %51 = call ptr @__acrt_iob_func(i32 noundef 1)
  %52 = load double, ptr %9, align 8
  %53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef @.str.6, double noundef %52) #7
  br label %54

54:                                               ; preds = %50, %46
  %55 = call ptr @__acrt_iob_func(i32 noundef 1)
  %56 = call i32 @fflush(ptr noundef %55)
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
