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
  %9 = load i64, ptr %2, align 8
  %10 = icmp ult i64 0, %9
  br i1 %10, label %.lr.ph, label %25

.lr.ph:                                           ; preds = %1
  br label %11

11:                                               ; preds = %.lr.ph, %19
  %12 = load ptr, ptr %3, align 8
  %13 = call i64 @random4()
  %14 = getelementptr inbounds nuw i8, ptr %12, i64 %13
  %15 = load i8, ptr %14, align 1
  %16 = load ptr, ptr %5, align 8
  store i8 %15, ptr %16, align 1
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds nuw i8, ptr %17, i32 1
  store ptr %18, ptr %5, align 8
  br label %19

19:                                               ; preds = %11
  %20 = load i32, ptr %6, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %6, align 4
  %22 = sext i32 %21 to i64
  %23 = load i64, ptr %2, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %11, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %19
  br label %25

25:                                               ; preds = %._crit_edge, %1
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
  %38 = load i64, ptr %4, align 8
  %39 = icmp ult i64 0, %38
  br i1 %39, label %.lr.ph, label %54

.lr.ph:                                           ; preds = %2
  br label %40

40:                                               ; preds = %.lr.ph, %49
  %41 = load ptr, ptr %13, align 8
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i64
  %44 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %43
  %45 = load i64, ptr %44, align 8
  %46 = add i64 %45, 1
  store i64 %46, ptr %44, align 8
  %47 = load ptr, ptr %13, align 8
  %48 = getelementptr inbounds nuw i8, ptr %47, i32 1
  store ptr %48, ptr %13, align 8
  br label %49

49:                                               ; preds = %40
  %50 = load i64, ptr %5, align 8
  %51 = add i64 %50, 1
  store i64 %51, ptr %5, align 8
  %52 = load i64, ptr %4, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %40, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %49
  br label %54

54:                                               ; preds = %._crit_edge, %2
  store i64 0, ptr %7, align 8
  store i64 0, ptr %5, align 8
  br i1 true, label %.lr.ph2, label %70

.lr.ph2:                                          ; preds = %54
  br label %55

55:                                               ; preds = %.lr.ph2, %66
  %56 = load i64, ptr %5, align 8
  %57 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %56
  %58 = load i64, ptr %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i64, ptr %7, align 8
  %62 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %61
  store i64 %56, ptr %62, align 8
  %63 = load i64, ptr %7, align 8
  %64 = add i64 %63, 1
  store i64 %64, ptr %7, align 8
  br label %65

65:                                               ; preds = %60, %55
  br label %66

66:                                               ; preds = %65
  %67 = load i64, ptr %5, align 8
  %68 = add i64 %67, 1
  store i64 %68, ptr %5, align 8
  %69 = icmp ult i64 %68, 256
  br i1 %69, label %55, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %66
  br label %70

70:                                               ; preds = %._crit_edge3, %54
  %71 = load i64, ptr %7, align 8
  store i64 %71, ptr %5, align 8
  %72 = icmp ugt i64 %71, 0
  br i1 %72, label %.lr.ph5, label %82

.lr.ph5:                                          ; preds = %70
  br label %73

73:                                               ; preds = %.lr.ph5, %78
  %74 = load i64, ptr %7, align 8
  %75 = trunc i64 %74 to i32
  %76 = load i64, ptr %5, align 8
  %77 = trunc i64 %76 to i32
  call void @heap_adjust(ptr noundef %15, ptr noundef %16, i32 noundef %75, i32 noundef %77)
  br label %78

78:                                               ; preds = %73
  %79 = load i64, ptr %5, align 8
  %80 = add i64 %79, -1
  store i64 %80, ptr %5, align 8
  %81 = icmp ugt i64 %80, 0
  br i1 %81, label %73, label %._crit_edge6, !llvm.loop !11

._crit_edge6:                                     ; preds = %78
  br label %82

82:                                               ; preds = %._crit_edge6, %70
  %83 = load i64, ptr %7, align 8
  %84 = icmp ugt i64 %83, 1
  br i1 %84, label %.lr.ph8, label %120

.lr.ph8:                                          ; preds = %82
  br label %85

85:                                               ; preds = %.lr.ph8, %85
  %86 = load i64, ptr %7, align 8
  %87 = add i64 %86, -1
  store i64 %87, ptr %7, align 8
  %88 = load i64, ptr %16, align 16
  store i64 %88, ptr %20, align 8
  %89 = load i64, ptr %7, align 8
  %90 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %89
  %91 = load i64, ptr %90, align 8
  store i64 %91, ptr %16, align 16
  %92 = load i64, ptr %7, align 8
  %93 = trunc i64 %92 to i32
  call void @heap_adjust(ptr noundef %15, ptr noundef %16, i32 noundef %93, i32 noundef 1)
  %94 = load i64, ptr %16, align 16
  %95 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %94
  %96 = load i64, ptr %95, align 8
  %97 = load i64, ptr %20, align 8
  %98 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %97
  %99 = load i64, ptr %98, align 8
  %100 = add i64 %96, %99
  %101 = load i64, ptr %7, align 8
  %102 = add i64 256, %101
  %103 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %102
  store i64 %100, ptr %103, align 8
  %104 = load i64, ptr %7, align 8
  %105 = add i64 256, %104
  %106 = trunc i64 %105 to i32
  %107 = load i64, ptr %20, align 8
  %108 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %107
  store i32 %106, ptr %108, align 4
  %109 = load i64, ptr %7, align 8
  %110 = sub i64 -256, %109
  %111 = trunc i64 %110 to i32
  %112 = load i64, ptr %16, align 16
  %113 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %112
  store i32 %111, ptr %113, align 4
  %114 = load i64, ptr %7, align 8
  %115 = add i64 256, %114
  store i64 %115, ptr %16, align 16
  %116 = load i64, ptr %7, align 8
  %117 = trunc i64 %116 to i32
  call void @heap_adjust(ptr noundef %15, ptr noundef %16, i32 noundef %117, i32 noundef 1)
  %118 = load i64, ptr %7, align 8
  %119 = icmp ugt i64 %118, 1
  br i1 %119, label %85, label %._crit_edge9, !llvm.loop !12

._crit_edge9:                                     ; preds = %85
  br label %120

120:                                              ; preds = %._crit_edge9, %82
  %121 = load i64, ptr %7, align 8
  %122 = add i64 256, %121
  %123 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %122
  store i32 0, ptr %123, align 4
  store i64 0, ptr %23, align 8
  store i64 0, ptr %24, align 8
  store i64 0, ptr %21, align 8
  br i1 true, label %.lr.ph14, label %182

.lr.ph14:                                         ; preds = %120
  br label %124

124:                                              ; preds = %.lr.ph14, %178
  %125 = load i64, ptr %21, align 8
  %126 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %125
  %127 = load i64, ptr %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %124
  %130 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %125
  store i32 0, ptr %130, align 4
  %131 = load i64, ptr %21, align 8
  %132 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %131
  store i8 0, ptr %132, align 1
  br label %177

133:                                              ; preds = %124
  store i64 0, ptr %5, align 8
  store i64 1, ptr %6, align 8
  store i64 0, ptr %22, align 8
  %134 = load i64, ptr %21, align 8
  %135 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %134
  %136 = load i32, ptr %135, align 4
  store i32 %136, ptr %25, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %.lr.ph11, label %158

.lr.ph11:                                         ; preds = %133
  br label %138

138:                                              ; preds = %.lr.ph11, %147
  %139 = load i32, ptr %25, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %138
  %142 = load i64, ptr %6, align 8
  %143 = load i64, ptr %22, align 8
  %144 = add i64 %143, %142
  store i64 %144, ptr %22, align 8
  %145 = load i32, ptr %25, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, ptr %25, align 4
  br label %147

147:                                              ; preds = %141, %138
  %148 = load i32, ptr %25, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [512 x i32], ptr %17, i64 0, i64 %149
  %151 = load i32, ptr %150, align 4
  store i32 %151, ptr %25, align 4
  %152 = load i64, ptr %6, align 8
  %153 = shl i64 %152, 1
  store i64 %153, ptr %6, align 8
  %154 = load i64, ptr %5, align 8
  %155 = add i64 %154, 1
  store i64 %155, ptr %5, align 8
  %156 = load i32, ptr %25, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %138, label %._crit_edge12, !llvm.loop !13

._crit_edge12:                                    ; preds = %147
  br label %158

158:                                              ; preds = %._crit_edge12, %133
  %159 = load i64, ptr %22, align 8
  %160 = trunc i64 %159 to i32
  %161 = load i64, ptr %21, align 8
  %162 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %161
  store i32 %160, ptr %162, align 4
  %163 = load i64, ptr %5, align 8
  %164 = trunc i64 %163 to i8
  %165 = load i64, ptr %21, align 8
  %166 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %165
  store i8 %164, ptr %166, align 1
  %167 = load i64, ptr %22, align 8
  %168 = load i64, ptr %23, align 8
  %169 = icmp ugt i64 %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %158
  store i64 %167, ptr %23, align 8
  br label %171

171:                                              ; preds = %170, %158
  %172 = load i64, ptr %5, align 8
  %173 = load i64, ptr %24, align 8
  %174 = icmp ugt i64 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  store i64 %172, ptr %24, align 8
  br label %176

176:                                              ; preds = %175, %171
  br label %177

177:                                              ; preds = %176, %129
  br label %178

178:                                              ; preds = %177
  %179 = load i64, ptr %21, align 8
  %180 = add i64 %179, 1
  store i64 %180, ptr %21, align 8
  %181 = icmp ult i64 %180, 256
  br i1 %181, label %124, label %._crit_edge15, !llvm.loop !14

._crit_edge15:                                    ; preds = %178
  br label %182

182:                                              ; preds = %._crit_edge15, %120
  %183 = load i64, ptr %24, align 8
  %184 = icmp ugt i64 %183, 32
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = call ptr @__acrt_iob_func(i32 noundef 2)
  %187 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %186, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

188:                                              ; preds = %182
  store i64 0, ptr %26, align 8
  store i8 0, ptr %27, align 1
  store i32 -1, ptr %28, align 4
  %189 = load ptr, ptr %3, align 8
  store ptr %189, ptr %13, align 8
  %190 = load i64, ptr %23, align 8
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %188
  %193 = call ptr @__acrt_iob_func(i32 noundef 2)
  %194 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %193, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

195:                                              ; preds = %188
  store i64 0, ptr %6, align 8
  %196 = load i64, ptr %4, align 8
  %197 = icmp ult i64 0, %196
  br i1 %197, label %.lr.ph20, label %273

.lr.ph20:                                         ; preds = %195
  br label %198

198:                                              ; preds = %.lr.ph20, %268
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
  %208 = load ptr, ptr %13, align 8
  %209 = load i8, ptr %208, align 1
  %210 = zext i8 %209 to i64
  %211 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %210
  %212 = load i8, ptr %211, align 1
  %213 = zext i8 %212 to i64
  %214 = icmp ult i64 0, %213
  br i1 %214, label %.lr.ph17, label %265

.lr.ph17:                                         ; preds = %198
  br label %215

215:                                              ; preds = %.lr.ph17, %255
  %216 = load i32, ptr %28, align 4
  %217 = icmp eq i32 %216, 7
  br i1 %217, label %218, label %231

218:                                              ; preds = %215
  %219 = load i8, ptr %27, align 1
  %220 = load ptr, ptr %14, align 8
  %221 = load i64, ptr %26, align 8
  %222 = getelementptr inbounds nuw i8, ptr %220, i64 %221
  store i8 %219, ptr %222, align 1
  %223 = load i64, ptr %26, align 8
  %224 = add i64 %223, 1
  store i64 %224, ptr %26, align 8
  %225 = load i64, ptr %4, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %230

227:                                              ; preds = %218
  %228 = call ptr @__acrt_iob_func(i32 noundef 2)
  %229 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %228, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

230:                                              ; preds = %218
  store i32 0, ptr %28, align 4
  store i8 0, ptr %27, align 1
  br label %237

231:                                              ; preds = %215
  %232 = add nsw i32 %216, 1
  store i32 %232, ptr %28, align 4
  %233 = load i8, ptr %27, align 1
  %234 = sext i8 %233 to i32
  %235 = shl i32 %234, 1
  %236 = trunc i32 %235 to i8
  store i8 %236, ptr %27, align 1
  br label %237

237:                                              ; preds = %231, %230
  %238 = load ptr, ptr %13, align 8
  %239 = load i8, ptr %238, align 1
  %240 = zext i8 %239 to i64
  %241 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %240
  %242 = load i32, ptr %241, align 4
  %243 = zext i32 %242 to i64
  %244 = load i64, ptr %8, align 8
  %245 = and i64 %243, %244
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %252

247:                                              ; preds = %237
  %248 = load i8, ptr %27, align 1
  %249 = sext i8 %248 to i32
  %250 = or i32 %249, 1
  %251 = trunc i32 %250 to i8
  store i8 %251, ptr %27, align 1
  br label %252

252:                                              ; preds = %247, %237
  %253 = load i64, ptr %8, align 8
  %254 = lshr i64 %253, 1
  store i64 %254, ptr %8, align 8
  br label %255

255:                                              ; preds = %252
  %256 = load i64, ptr %5, align 8
  %257 = add i64 %256, 1
  store i64 %257, ptr %5, align 8
  %258 = load ptr, ptr %13, align 8
  %259 = load i8, ptr %258, align 1
  %260 = zext i8 %259 to i64
  %261 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %260
  %262 = load i8, ptr %261, align 1
  %263 = zext i8 %262 to i64
  %264 = icmp ult i64 %257, %263
  br i1 %264, label %215, label %._crit_edge18, !llvm.loop !15

._crit_edge18:                                    ; preds = %255
  br label %265

265:                                              ; preds = %._crit_edge18, %198
  %266 = load ptr, ptr %13, align 8
  %267 = getelementptr inbounds nuw i8, ptr %266, i32 1
  store ptr %267, ptr %13, align 8
  br label %268

268:                                              ; preds = %265
  %269 = load i64, ptr %6, align 8
  %270 = add i64 %269, 1
  store i64 %270, ptr %6, align 8
  %271 = load i64, ptr %4, align 8
  %272 = icmp ult i64 %270, %271
  br i1 %272, label %198, label %._crit_edge21, !llvm.loop !16

._crit_edge21:                                    ; preds = %268
  br label %273

273:                                              ; preds = %._crit_edge21, %195
  %274 = load i32, ptr %28, align 4
  %275 = sub nsw i32 7, %274
  %276 = load i8, ptr %27, align 1
  %277 = sext i8 %276 to i32
  %278 = shl i32 %277, %275
  %279 = trunc i32 %278 to i8
  store i8 %279, ptr %27, align 1
  %280 = load ptr, ptr %14, align 8
  %281 = load i64, ptr %26, align 8
  %282 = getelementptr inbounds nuw i8, ptr %280, i64 %281
  store i8 %279, ptr %282, align 1
  %283 = load i64, ptr %26, align 8
  %284 = add i64 %283, 1
  store i64 %284, ptr %26, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %29, i8 0, i64 1024, i1 false)
  store ptr %30, ptr %31, align 8
  store i64 0, ptr %6, align 8
  br i1 true, label %.lr.ph26, label %345

.lr.ph26:                                         ; preds = %273
  br label %285

285:                                              ; preds = %.lr.ph26, %341
  %286 = load i64, ptr %6, align 8
  %287 = trunc i64 %286 to i8
  %288 = load ptr, ptr %31, align 8
  store i8 %287, ptr %288, align 1
  %289 = load ptr, ptr %31, align 8
  %290 = getelementptr inbounds nuw i8, ptr %289, i32 1
  store ptr %290, ptr %31, align 8
  %291 = load i64, ptr %6, align 8
  %292 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %291
  %293 = load i32, ptr %292, align 4
  %294 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %291
  %295 = load i8, ptr %294, align 1
  %296 = zext i8 %295 to i32
  %297 = or i32 %293, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %340

299:                                              ; preds = %285
  store i32 0, ptr %9, align 4
  %300 = load i64, ptr %6, align 8
  %301 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %300
  %302 = load i8, ptr %301, align 1
  %303 = zext i8 %302 to i32
  %304 = sub nsw i32 %303, 1
  %305 = shl i32 1, %304
  %306 = sext i32 %305 to i64
  store i64 %306, ptr %8, align 8
  store i64 0, ptr %5, align 8
  %307 = load i64, ptr %6, align 8
  %308 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %307
  %309 = load i8, ptr %308, align 1
  %310 = zext i8 %309 to i64
  %311 = icmp ult i64 0, %310
  br i1 %311, label %.lr.ph23, label %336

.lr.ph23:                                         ; preds = %299
  br label %312

312:                                              ; preds = %.lr.ph23, %328
  %313 = load i32, ptr %9, align 4
  %314 = mul i32 %313, 2
  %315 = add i32 %314, 1
  store i32 %315, ptr %9, align 4
  %316 = load i64, ptr %6, align 8
  %317 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %316
  %318 = load i32, ptr %317, align 4
  %319 = zext i32 %318 to i64
  %320 = load i64, ptr %8, align 8
  %321 = and i64 %319, %320
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %312
  %324 = add i32 %315, 1
  store i32 %324, ptr %9, align 4
  br label %325

325:                                              ; preds = %323, %312
  %326 = load i64, ptr %8, align 8
  %327 = lshr i64 %326, 1
  store i64 %327, ptr %8, align 8
  br label %328

328:                                              ; preds = %325
  %329 = load i64, ptr %5, align 8
  %330 = add i64 %329, 1
  store i64 %330, ptr %5, align 8
  %331 = load i64, ptr %6, align 8
  %332 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %331
  %333 = load i8, ptr %332, align 1
  %334 = zext i8 %333 to i64
  %335 = icmp ult i64 %330, %334
  br i1 %335, label %312, label %._crit_edge24, !llvm.loop !17

._crit_edge24:                                    ; preds = %328
  br label %336

336:                                              ; preds = %._crit_edge24, %299
  %337 = load i32, ptr %9, align 4
  %338 = load i64, ptr %6, align 8
  %339 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %338
  store i32 %337, ptr %339, align 4
  br label %340

340:                                              ; preds = %336, %285
  br label %341

341:                                              ; preds = %340
  %342 = load i64, ptr %6, align 8
  %343 = add i64 %342, 1
  store i64 %343, ptr %6, align 8
  %344 = icmp ult i64 %343, 256
  br i1 %344, label %285, label %._crit_edge27, !llvm.loop !18

._crit_edge27:                                    ; preds = %341
  br label %345

345:                                              ; preds = %._crit_edge27, %273
  store i64 1, ptr %5, align 8
  br i1 true, label %.lr.ph29, label %389

.lr.ph29:                                         ; preds = %345
  br label %346

346:                                              ; preds = %.lr.ph29, %385
  %347 = load i64, ptr %5, align 8
  %348 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %347
  %349 = load i32, ptr %348, align 4
  store i32 %349, ptr %10, align 4
  %350 = load i64, ptr %5, align 8
  %351 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %350
  %352 = load i8, ptr %351, align 1
  store i8 %352, ptr %11, align 1
  %353 = load i64, ptr %5, align 8
  store i64 %353, ptr %6, align 8
  br label %354

354:                                              ; preds = %365, %346
  %355 = load i64, ptr %6, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %363

357:                                              ; preds = %354
  %358 = sub i64 %355, 1
  %359 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %358
  %360 = load i32, ptr %359, align 4
  %361 = load i32, ptr %10, align 4
  %362 = icmp ugt i32 %360, %361
  br label %363

363:                                              ; preds = %357, %354
  %364 = phi i1 [ false, %354 ], [ %362, %357 ]
  br i1 %364, label %365, label %378

365:                                              ; preds = %363
  %366 = load i64, ptr %6, align 8
  %367 = sub i64 %366, 1
  %368 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %367
  %369 = load i32, ptr %368, align 4
  %370 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %366
  store i32 %369, ptr %370, align 4
  %371 = load i64, ptr %6, align 8
  %372 = sub i64 %371, 1
  %373 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %372
  %374 = load i8, ptr %373, align 1
  %375 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %371
  store i8 %374, ptr %375, align 1
  %376 = load i64, ptr %6, align 8
  %377 = add i64 %376, -1
  store i64 %377, ptr %6, align 8
  br label %354, !llvm.loop !19

378:                                              ; preds = %363
  %379 = load i32, ptr %10, align 4
  %380 = load i64, ptr %6, align 8
  %381 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %380
  store i32 %379, ptr %381, align 4
  %382 = load i8, ptr %11, align 1
  %383 = load i64, ptr %6, align 8
  %384 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %383
  store i8 %382, ptr %384, align 1
  br label %385

385:                                              ; preds = %378
  %386 = load i64, ptr %5, align 8
  %387 = add i64 %386, 1
  store i64 %387, ptr %5, align 8
  %388 = icmp ult i64 %387, 256
  br i1 %388, label %346, label %._crit_edge30, !llvm.loop !20

._crit_edge30:                                    ; preds = %385
  br label %389

389:                                              ; preds = %._crit_edge30, %345
  store i64 0, ptr %6, align 8
  %390 = load i32, ptr %29, align 4
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %.lr.ph32, label %399

.lr.ph32:                                         ; preds = %389
  br label %392

392:                                              ; preds = %.lr.ph32, %393
  br label %393

393:                                              ; preds = %392
  %394 = load i64, ptr %6, align 8
  %395 = add i64 %394, 1
  store i64 %395, ptr %6, align 8
  %396 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %395
  %397 = load i32, ptr %396, align 4
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %392, label %._crit_edge33, !llvm.loop !21

._crit_edge33:                                    ; preds = %393
  br label %399

399:                                              ; preds = %._crit_edge33, %389
  store i32 0, ptr %9, align 4
  %400 = load i64, ptr %6, align 8
  store i64 %400, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  %401 = load ptr, ptr %14, align 8
  store ptr %401, ptr %12, align 8
  %402 = load ptr, ptr %3, align 8
  store ptr %402, ptr %13, align 8
  %403 = load i64, ptr %7, align 8
  %404 = load i64, ptr %4, align 8
  %405 = icmp ult i64 %403, %404
  br i1 %405, label %.lr.ph38, label %458

.lr.ph38:                                         ; preds = %399
  br label %406

406:                                              ; preds = %.lr.ph38, %454
  %407 = load i32, ptr %9, align 4
  %408 = mul i32 %407, 2
  %409 = add i32 %408, 1
  store i32 %409, ptr %9, align 4
  %410 = load ptr, ptr %12, align 8
  %411 = load i8, ptr %410, align 1
  %412 = zext i8 %411 to i64
  %413 = load i64, ptr %8, align 8
  %414 = and i64 %412, %413
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %416, label %418

416:                                              ; preds = %406
  %417 = add i32 %409, 1
  store i32 %417, ptr %9, align 4
  br label %418

418:                                              ; preds = %416, %406
  %419 = load i64, ptr %5, align 8
  %420 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %419
  %421 = load i32, ptr %420, align 4
  %422 = load i32, ptr %9, align 4
  %423 = icmp ult i32 %421, %422
  br i1 %423, label %.lr.ph35, label %431

.lr.ph35:                                         ; preds = %418
  br label %424

424:                                              ; preds = %.lr.ph35, %424
  %425 = load i64, ptr %5, align 8
  %426 = add i64 %425, 1
  store i64 %426, ptr %5, align 8
  %427 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %426
  %428 = load i32, ptr %427, align 4
  %429 = load i32, ptr %9, align 4
  %430 = icmp ult i32 %428, %429
  br i1 %430, label %424, label %._crit_edge36, !llvm.loop !22

._crit_edge36:                                    ; preds = %424
  br label %431

431:                                              ; preds = %._crit_edge36, %418
  %432 = load i32, ptr %9, align 4
  %433 = load i64, ptr %5, align 8
  %434 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %433
  %435 = load i32, ptr %434, align 4
  %436 = icmp eq i32 %432, %435
  br i1 %436, label %437, label %446

437:                                              ; preds = %431
  %438 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %433
  %439 = load i8, ptr %438, align 1
  %440 = load ptr, ptr %13, align 8
  store i8 %439, ptr %440, align 1
  %441 = load ptr, ptr %13, align 8
  %442 = getelementptr inbounds nuw i8, ptr %441, i32 1
  store ptr %442, ptr %13, align 8
  %443 = load i64, ptr %7, align 8
  %444 = add i64 %443, 1
  store i64 %444, ptr %7, align 8
  store i32 0, ptr %9, align 4
  %445 = load i64, ptr %6, align 8
  store i64 %445, ptr %5, align 8
  br label %446

446:                                              ; preds = %437, %431
  %447 = load i64, ptr %8, align 8
  %448 = icmp ugt i64 %447, 1
  br i1 %448, label %449, label %451

449:                                              ; preds = %446
  %450 = lshr i64 %447, 1
  store i64 %450, ptr %8, align 8
  br label %454

451:                                              ; preds = %446
  store i64 128, ptr %8, align 8
  %452 = load ptr, ptr %12, align 8
  %453 = getelementptr inbounds nuw i8, ptr %452, i32 1
  store ptr %453, ptr %12, align 8
  br label %454

454:                                              ; preds = %451, %449
  %455 = load i64, ptr %7, align 8
  %456 = load i64, ptr %4, align 8
  %457 = icmp ult i64 %455, %456
  br i1 %457, label %406, label %._crit_edge39, !llvm.loop !23

._crit_edge39:                                    ; preds = %454
  br label %458

458:                                              ; preds = %._crit_edge39, %399
  %459 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %459)
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
  %17 = load i32, ptr %8, align 4
  %18 = load i32, ptr %7, align 4
  %19 = sdiv i32 %18, 2
  %20 = icmp sle i32 %17, %19
  br i1 %20, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %21

21:                                               ; preds = %.lr.ph, %59
  %22 = load i32, ptr %8, align 4
  %23 = add nsw i32 %22, %22
  store i32 %23, ptr %9, align 4
  %24 = load i32, ptr %7, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %21
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

43:                                               ; preds = %41, %26, %21
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
  br i1 %57, label %58, label %59

58:                                               ; preds = %43
  br label %68

59:                                               ; preds = %43
  %60 = load i32, ptr %8, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, ptr %49, i64 %62
  store i64 %54, ptr %63, align 8
  %64 = load i32, ptr %9, align 4
  store i32 %64, ptr %8, align 4
  %65 = load i32, ptr %7, align 4
  %66 = sdiv i32 %65, 2
  %67 = icmp sle i32 %64, %66
  br i1 %67, label %21, label %..loopexit_crit_edge, !llvm.loop !24

..loopexit_crit_edge:                             ; preds = %59
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %68

68:                                               ; preds = %.loopexit, %58
  %69 = load i32, ptr %10, align 4
  %70 = sext i32 %69 to i64
  %71 = load ptr, ptr %6, align 8
  %72 = load i32, ptr %8, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, ptr %71, i64 %74
  store i64 %70, ptr %75, align 8
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
  %13 = load i32, ptr %4, align 4
  %14 = icmp slt i32 1, %13
  br i1 %14, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %12
  br label %15

15:                                               ; preds = %.lr.ph, %23
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds ptr, ptr %16, i64 1
  %18 = load ptr, ptr %17, align 8
  %19 = call i32 @strcmp(ptr noundef %18, ptr noundef @.str.4) #7
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store i8 1, ptr %7, align 1
  br label %28

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22
  %24 = load i32, ptr %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %6, align 4
  %26 = load i32, ptr %4, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %15, label %..loopexit_crit_edge, !llvm.loop !25

..loopexit_crit_edge:                             ; preds = %23
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %12
  br label %28

28:                                               ; preds = %.loopexit, %21
  br label %29

29:                                               ; preds = %28, %2
  %30 = call ptr @generate_test_data(i64 noundef 10000000)
  store ptr %30, ptr %8, align 8
  store i32 0, ptr %6, align 4
  br i1 true, label %.lr.ph1, label %37

.lr.ph1:                                          ; preds = %29
  br label %31

31:                                               ; preds = %.lr.ph1, %33
  %32 = load ptr, ptr %8, align 8
  call void @compdecomp(ptr noundef %32, i64 noundef 10000000)
  br label %33

33:                                               ; preds = %31
  %34 = load i32, ptr %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %6, align 4
  %36 = icmp slt i32 %35, 30
  br i1 %36, label %31, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %33
  br label %37

37:                                               ; preds = %._crit_edge, %29
  store double 0.000000e+00, ptr %9, align 8
  %38 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %38)
  %39 = load i8, ptr %7, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = call ptr @__acrt_iob_func(i32 noundef 1)
  %43 = load double, ptr %9, align 8
  %44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef @.str.5, double noundef %43) #7
  br label %49

45:                                               ; preds = %37
  %46 = call ptr @__acrt_iob_func(i32 noundef 1)
  %47 = load double, ptr %9, align 8
  %48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef @.str.6, double noundef %47) #7
  br label %49

49:                                               ; preds = %45, %41
  %50 = call ptr @__acrt_iob_func(i32 noundef 1)
  %51 = call i32 @fflush(ptr noundef %50)
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
