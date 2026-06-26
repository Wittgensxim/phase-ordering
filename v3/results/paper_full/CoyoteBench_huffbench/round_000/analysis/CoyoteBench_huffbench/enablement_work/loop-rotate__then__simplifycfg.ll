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
  br i1 %13, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %1, %.lr.ph
  %14 = load ptr, ptr %3, align 8
  %15 = call i64 @random4()
  %16 = getelementptr inbounds nuw i8, ptr %14, i64 %15
  %17 = load i8, ptr %16, align 1
  %18 = load ptr, ptr %5, align 8
  store i8 %17, ptr %18, align 1
  %19 = load ptr, ptr %5, align 8
  %20 = getelementptr inbounds nuw i8, ptr %19, i32 1
  store ptr %20, ptr %5, align 8
  %21 = load i32, ptr %6, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %6, align 4
  %23 = load i32, ptr %6, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, ptr %2, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %.lr.ph, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %.lr.ph, %1
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
  %45 = load i64, ptr %5, align 8
  %46 = load i64, ptr %4, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %2, %.lr.ph
  %48 = load ptr, ptr %13, align 8
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i64
  %51 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %50
  %52 = load i64, ptr %51, align 8
  %53 = add i64 %52, 1
  store i64 %53, ptr %51, align 8
  %54 = load ptr, ptr %13, align 8
  %55 = getelementptr inbounds nuw i8, ptr %54, i32 1
  store ptr %55, ptr %13, align 8
  %56 = load i64, ptr %5, align 8
  %57 = add i64 %56, 1
  store i64 %57, ptr %5, align 8
  %58 = load i64, ptr %5, align 8
  %59 = load i64, ptr %4, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %.lr.ph, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph, %2
  store i64 0, ptr %7, align 8
  store i64 0, ptr %5, align 8
  %61 = load i64, ptr %5, align 8
  %62 = icmp ult i64 %61, 256
  br i1 %62, label %.lr.ph2, label %._crit_edge3

.lr.ph2:                                          ; preds = %._crit_edge, %73
  %63 = load i64, ptr %5, align 8
  %64 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %63
  %65 = load i64, ptr %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %.lr.ph2
  %68 = load i64, ptr %5, align 8
  %69 = load i64, ptr %7, align 8
  %70 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %69
  store i64 %68, ptr %70, align 8
  %71 = load i64, ptr %7, align 8
  %72 = add i64 %71, 1
  store i64 %72, ptr %7, align 8
  br label %73

73:                                               ; preds = %.lr.ph2, %67
  %74 = load i64, ptr %5, align 8
  %75 = add i64 %74, 1
  store i64 %75, ptr %5, align 8
  %76 = load i64, ptr %5, align 8
  %77 = icmp ult i64 %76, 256
  br i1 %77, label %.lr.ph2, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %73, %._crit_edge
  %78 = load i64, ptr %7, align 8
  store i64 %78, ptr %5, align 8
  %79 = load i64, ptr %5, align 8
  %80 = icmp ugt i64 %79, 0
  br i1 %80, label %.lr.ph5, label %._crit_edge6

.lr.ph5:                                          ; preds = %._crit_edge3, %.lr.ph5
  %81 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  %82 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %83 = load i64, ptr %7, align 8
  %84 = trunc i64 %83 to i32
  %85 = load i64, ptr %5, align 8
  %86 = trunc i64 %85 to i32
  call void @heap_adjust(ptr noundef %81, ptr noundef %82, i32 noundef %84, i32 noundef %86)
  %87 = load i64, ptr %5, align 8
  %88 = add i64 %87, -1
  store i64 %88, ptr %5, align 8
  %89 = load i64, ptr %5, align 8
  %90 = icmp ugt i64 %89, 0
  br i1 %90, label %.lr.ph5, label %._crit_edge6, !llvm.loop !11

._crit_edge6:                                     ; preds = %.lr.ph5, %._crit_edge3
  %91 = load i64, ptr %7, align 8
  %92 = icmp ugt i64 %91, 1
  br i1 %92, label %.lr.ph8, label %._crit_edge9

.lr.ph8:                                          ; preds = %._crit_edge6, %.lr.ph8
  %93 = load i64, ptr %7, align 8
  %94 = add i64 %93, -1
  store i64 %94, ptr %7, align 8
  %95 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %96 = load i64, ptr %95, align 16
  store i64 %96, ptr %20, align 8
  %97 = load i64, ptr %7, align 8
  %98 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %97
  %99 = load i64, ptr %98, align 8
  %100 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  store i64 %99, ptr %100, align 16
  %101 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  %102 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %103 = load i64, ptr %7, align 8
  %104 = trunc i64 %103 to i32
  call void @heap_adjust(ptr noundef %101, ptr noundef %102, i32 noundef %104, i32 noundef 1)
  %105 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %106 = load i64, ptr %105, align 16
  %107 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %106
  %108 = load i64, ptr %107, align 8
  %109 = load i64, ptr %20, align 8
  %110 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %109
  %111 = load i64, ptr %110, align 8
  %112 = add i64 %108, %111
  %113 = load i64, ptr %7, align 8
  %114 = add i64 256, %113
  %115 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %114
  store i64 %112, ptr %115, align 8
  %116 = load i64, ptr %7, align 8
  %117 = add i64 256, %116
  %118 = trunc i64 %117 to i32
  %119 = load i64, ptr %20, align 8
  %120 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %119
  store i32 %118, ptr %120, align 4
  %121 = load i64, ptr %7, align 8
  %122 = sub i64 -256, %121
  %123 = trunc i64 %122 to i32
  %124 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %125 = load i64, ptr %124, align 16
  %126 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %125
  store i32 %123, ptr %126, align 4
  %127 = load i64, ptr %7, align 8
  %128 = add i64 256, %127
  %129 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  store i64 %128, ptr %129, align 16
  %130 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  %131 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %132 = load i64, ptr %7, align 8
  %133 = trunc i64 %132 to i32
  call void @heap_adjust(ptr noundef %130, ptr noundef %131, i32 noundef %133, i32 noundef 1)
  %134 = load i64, ptr %7, align 8
  %135 = icmp ugt i64 %134, 1
  br i1 %135, label %.lr.ph8, label %._crit_edge9, !llvm.loop !12

._crit_edge9:                                     ; preds = %.lr.ph8, %._crit_edge6
  %136 = load i64, ptr %7, align 8
  %137 = add i64 256, %136
  %138 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %137
  store i32 0, ptr %138, align 4
  store i64 0, ptr %23, align 8
  store i64 0, ptr %24, align 8
  store i64 0, ptr %21, align 8
  %139 = load i64, ptr %21, align 8
  %140 = icmp ult i64 %139, 256
  br i1 %140, label %.lr.ph14, label %._crit_edge15

.lr.ph14:                                         ; preds = %._crit_edge9, %194
  %141 = load i64, ptr %21, align 8
  %142 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %141
  %143 = load i64, ptr %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %.lr.ph14
  %146 = load i64, ptr %21, align 8
  %147 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %146
  store i32 0, ptr %147, align 4
  %148 = load i64, ptr %21, align 8
  %149 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %148
  store i8 0, ptr %149, align 1
  br label %194

150:                                              ; preds = %.lr.ph14
  store i64 0, ptr %5, align 8
  store i64 1, ptr %6, align 8
  store i64 0, ptr %22, align 8
  %151 = load i64, ptr %21, align 8
  %152 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %151
  %153 = load i32, ptr %152, align 4
  store i32 %153, ptr %25, align 4
  %154 = load i32, ptr %25, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %.lr.ph11, label %._crit_edge12

.lr.ph11:                                         ; preds = %150, %164
  %156 = load i32, ptr %25, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %.lr.ph11
  %159 = load i64, ptr %6, align 8
  %160 = load i64, ptr %22, align 8
  %161 = add i64 %160, %159
  store i64 %161, ptr %22, align 8
  %162 = load i32, ptr %25, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, ptr %25, align 4
  br label %164

164:                                              ; preds = %158, %.lr.ph11
  %165 = load i32, ptr %25, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [512 x i32], ptr %17, i64 0, i64 %166
  %168 = load i32, ptr %167, align 4
  store i32 %168, ptr %25, align 4
  %169 = load i64, ptr %6, align 8
  %170 = shl i64 %169, 1
  store i64 %170, ptr %6, align 8
  %171 = load i64, ptr %5, align 8
  %172 = add i64 %171, 1
  store i64 %172, ptr %5, align 8
  %173 = load i32, ptr %25, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %.lr.ph11, label %._crit_edge12, !llvm.loop !13

._crit_edge12:                                    ; preds = %164, %150
  %175 = load i64, ptr %22, align 8
  %176 = trunc i64 %175 to i32
  %177 = load i64, ptr %21, align 8
  %178 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %177
  store i32 %176, ptr %178, align 4
  %179 = load i64, ptr %5, align 8
  %180 = trunc i64 %179 to i8
  %181 = load i64, ptr %21, align 8
  %182 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %181
  store i8 %180, ptr %182, align 1
  %183 = load i64, ptr %22, align 8
  %184 = load i64, ptr %23, align 8
  %185 = icmp ugt i64 %183, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %._crit_edge12
  %187 = load i64, ptr %22, align 8
  store i64 %187, ptr %23, align 8
  br label %188

188:                                              ; preds = %186, %._crit_edge12
  %189 = load i64, ptr %5, align 8
  %190 = load i64, ptr %24, align 8
  %191 = icmp ugt i64 %189, %190
  br i1 %191, label %192, label %194

192:                                              ; preds = %188
  %193 = load i64, ptr %5, align 8
  store i64 %193, ptr %24, align 8
  br label %194

194:                                              ; preds = %145, %192, %188
  %195 = load i64, ptr %21, align 8
  %196 = add i64 %195, 1
  store i64 %196, ptr %21, align 8
  %197 = load i64, ptr %21, align 8
  %198 = icmp ult i64 %197, 256
  br i1 %198, label %.lr.ph14, label %._crit_edge15, !llvm.loop !14

._crit_edge15:                                    ; preds = %194, %._crit_edge9
  %199 = load i64, ptr %24, align 8
  %200 = icmp ugt i64 %199, 32
  br i1 %200, label %201, label %204

201:                                              ; preds = %._crit_edge15
  %202 = call ptr @__acrt_iob_func(i32 noundef 2)
  %203 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %202, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

204:                                              ; preds = %._crit_edge15
  store i64 0, ptr %26, align 8
  store i8 0, ptr %27, align 1
  store i32 -1, ptr %28, align 4
  %205 = load ptr, ptr %3, align 8
  store ptr %205, ptr %13, align 8
  %206 = load i64, ptr %23, align 8
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %204
  %209 = call ptr @__acrt_iob_func(i32 noundef 2)
  %210 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %209, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

211:                                              ; preds = %204
  store i64 0, ptr %6, align 8
  %212 = load i64, ptr %6, align 8
  %213 = load i64, ptr %4, align 8
  %214 = icmp ult i64 %212, %213
  br i1 %214, label %.lr.ph20, label %._crit_edge21

.lr.ph20:                                         ; preds = %211, %._crit_edge18
  %215 = load ptr, ptr %13, align 8
  %216 = load i8, ptr %215, align 1
  %217 = zext i8 %216 to i64
  %218 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %217
  %219 = load i8, ptr %218, align 1
  %220 = zext i8 %219 to i32
  %221 = sub nsw i32 %220, 1
  %222 = shl i32 1, %221
  %223 = sext i32 %222 to i64
  store i64 %223, ptr %8, align 8
  store i64 0, ptr %5, align 8
  %224 = load i64, ptr %5, align 8
  %225 = load ptr, ptr %13, align 8
  %226 = load i8, ptr %225, align 1
  %227 = zext i8 %226 to i64
  %228 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %227
  %229 = load i8, ptr %228, align 1
  %230 = zext i8 %229 to i64
  %231 = icmp ult i64 %224, %230
  br i1 %231, label %.lr.ph17, label %._crit_edge18

.lr.ph17:                                         ; preds = %.lr.ph20, %270
  %232 = load i32, ptr %28, align 4
  %233 = icmp eq i32 %232, 7
  br i1 %233, label %234, label %248

234:                                              ; preds = %.lr.ph17
  %235 = load i8, ptr %27, align 1
  %236 = load ptr, ptr %14, align 8
  %237 = load i64, ptr %26, align 8
  %238 = getelementptr inbounds nuw i8, ptr %236, i64 %237
  store i8 %235, ptr %238, align 1
  %239 = load i64, ptr %26, align 8
  %240 = add i64 %239, 1
  store i64 %240, ptr %26, align 8
  %241 = load i64, ptr %26, align 8
  %242 = load i64, ptr %4, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %247

244:                                              ; preds = %234
  %245 = call ptr @__acrt_iob_func(i32 noundef 2)
  %246 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %245, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

247:                                              ; preds = %234
  store i32 0, ptr %28, align 4
  store i8 0, ptr %27, align 1
  br label %255

248:                                              ; preds = %.lr.ph17
  %249 = load i32, ptr %28, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, ptr %28, align 4
  %251 = load i8, ptr %27, align 1
  %252 = sext i8 %251 to i32
  %253 = shl i32 %252, 1
  %254 = trunc i32 %253 to i8
  store i8 %254, ptr %27, align 1
  br label %255

255:                                              ; preds = %248, %247
  %256 = load ptr, ptr %13, align 8
  %257 = load i8, ptr %256, align 1
  %258 = zext i8 %257 to i64
  %259 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %258
  %260 = load i32, ptr %259, align 4
  %261 = zext i32 %260 to i64
  %262 = load i64, ptr %8, align 8
  %263 = and i64 %261, %262
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %255
  %266 = load i8, ptr %27, align 1
  %267 = sext i8 %266 to i32
  %268 = or i32 %267, 1
  %269 = trunc i32 %268 to i8
  store i8 %269, ptr %27, align 1
  br label %270

270:                                              ; preds = %265, %255
  %271 = load i64, ptr %8, align 8
  %272 = lshr i64 %271, 1
  store i64 %272, ptr %8, align 8
  %273 = load i64, ptr %5, align 8
  %274 = add i64 %273, 1
  store i64 %274, ptr %5, align 8
  %275 = load i64, ptr %5, align 8
  %276 = load ptr, ptr %13, align 8
  %277 = load i8, ptr %276, align 1
  %278 = zext i8 %277 to i64
  %279 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %278
  %280 = load i8, ptr %279, align 1
  %281 = zext i8 %280 to i64
  %282 = icmp ult i64 %275, %281
  br i1 %282, label %.lr.ph17, label %._crit_edge18, !llvm.loop !15

._crit_edge18:                                    ; preds = %270, %.lr.ph20
  %283 = load ptr, ptr %13, align 8
  %284 = getelementptr inbounds nuw i8, ptr %283, i32 1
  store ptr %284, ptr %13, align 8
  %285 = load i64, ptr %6, align 8
  %286 = add i64 %285, 1
  store i64 %286, ptr %6, align 8
  %287 = load i64, ptr %6, align 8
  %288 = load i64, ptr %4, align 8
  %289 = icmp ult i64 %287, %288
  br i1 %289, label %.lr.ph20, label %._crit_edge21, !llvm.loop !16

._crit_edge21:                                    ; preds = %._crit_edge18, %211
  %290 = load i32, ptr %28, align 4
  %291 = sub nsw i32 7, %290
  %292 = load i8, ptr %27, align 1
  %293 = sext i8 %292 to i32
  %294 = shl i32 %293, %291
  %295 = trunc i32 %294 to i8
  store i8 %295, ptr %27, align 1
  %296 = load i8, ptr %27, align 1
  %297 = load ptr, ptr %14, align 8
  %298 = load i64, ptr %26, align 8
  %299 = getelementptr inbounds nuw i8, ptr %297, i64 %298
  store i8 %296, ptr %299, align 1
  %300 = load i64, ptr %26, align 8
  %301 = add i64 %300, 1
  store i64 %301, ptr %26, align 8
  %302 = getelementptr inbounds [256 x i32], ptr %29, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %302, i8 0, i64 1024, i1 false)
  %303 = getelementptr inbounds [256 x i8], ptr %30, i64 0, i64 0
  store ptr %303, ptr %31, align 8
  store i64 0, ptr %6, align 8
  %304 = load i64, ptr %6, align 8
  %305 = icmp ult i64 %304, 256
  br i1 %305, label %.lr.ph26, label %._crit_edge27

.lr.ph26:                                         ; preds = %._crit_edge21, %361
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
  %318 = or i32 %313, %317
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %361

320:                                              ; preds = %.lr.ph26
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
  %328 = load i64, ptr %5, align 8
  %329 = load i64, ptr %6, align 8
  %330 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %329
  %331 = load i8, ptr %330, align 1
  %332 = zext i8 %331 to i64
  %333 = icmp ult i64 %328, %332
  br i1 %333, label %.lr.ph23, label %._crit_edge24

.lr.ph23:                                         ; preds = %320, %347
  %334 = load i32, ptr %9, align 4
  %335 = mul i32 %334, 2
  %336 = add i32 %335, 1
  store i32 %336, ptr %9, align 4
  %337 = load i64, ptr %6, align 8
  %338 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %337
  %339 = load i32, ptr %338, align 4
  %340 = zext i32 %339 to i64
  %341 = load i64, ptr %8, align 8
  %342 = and i64 %340, %341
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %347

344:                                              ; preds = %.lr.ph23
  %345 = load i32, ptr %9, align 4
  %346 = add i32 %345, 1
  store i32 %346, ptr %9, align 4
  br label %347

347:                                              ; preds = %344, %.lr.ph23
  %348 = load i64, ptr %8, align 8
  %349 = lshr i64 %348, 1
  store i64 %349, ptr %8, align 8
  %350 = load i64, ptr %5, align 8
  %351 = add i64 %350, 1
  store i64 %351, ptr %5, align 8
  %352 = load i64, ptr %5, align 8
  %353 = load i64, ptr %6, align 8
  %354 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %353
  %355 = load i8, ptr %354, align 1
  %356 = zext i8 %355 to i64
  %357 = icmp ult i64 %352, %356
  br i1 %357, label %.lr.ph23, label %._crit_edge24, !llvm.loop !17

._crit_edge24:                                    ; preds = %347, %320
  %358 = load i32, ptr %9, align 4
  %359 = load i64, ptr %6, align 8
  %360 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %359
  store i32 %358, ptr %360, align 4
  br label %361

361:                                              ; preds = %.lr.ph26, %._crit_edge24
  %362 = load i64, ptr %6, align 8
  %363 = add i64 %362, 1
  store i64 %363, ptr %6, align 8
  %364 = load i64, ptr %6, align 8
  %365 = icmp ult i64 %364, 256
  br i1 %365, label %.lr.ph26, label %._crit_edge27, !llvm.loop !18

._crit_edge27:                                    ; preds = %361, %._crit_edge21
  store i64 1, ptr %5, align 8
  %366 = load i64, ptr %5, align 8
  %367 = icmp ult i64 %366, 256
  br i1 %367, label %.lr.ph29, label %._crit_edge30

.lr.ph29:                                         ; preds = %._crit_edge27, %.critedge
  %368 = load i64, ptr %5, align 8
  %369 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %368
  %370 = load i32, ptr %369, align 4
  store i32 %370, ptr %10, align 4
  %371 = load i64, ptr %5, align 8
  %372 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %371
  %373 = load i8, ptr %372, align 1
  store i8 %373, ptr %11, align 1
  %374 = load i64, ptr %5, align 8
  store i64 %374, ptr %6, align 8
  br label %375

375:                                              ; preds = %385, %.lr.ph29
  %376 = load i64, ptr %6, align 8
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %.critedge

378:                                              ; preds = %375
  %379 = load i64, ptr %6, align 8
  %380 = sub i64 %379, 1
  %381 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %380
  %382 = load i32, ptr %381, align 4
  %383 = load i32, ptr %10, align 4
  %384 = icmp ugt i32 %382, %383
  br i1 %384, label %385, label %.critedge

385:                                              ; preds = %378
  %386 = load i64, ptr %6, align 8
  %387 = sub i64 %386, 1
  %388 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %387
  %389 = load i32, ptr %388, align 4
  %390 = load i64, ptr %6, align 8
  %391 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %390
  store i32 %389, ptr %391, align 4
  %392 = load i64, ptr %6, align 8
  %393 = sub i64 %392, 1
  %394 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %393
  %395 = load i8, ptr %394, align 1
  %396 = load i64, ptr %6, align 8
  %397 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %396
  store i8 %395, ptr %397, align 1
  %398 = load i64, ptr %6, align 8
  %399 = add i64 %398, -1
  store i64 %399, ptr %6, align 8
  br label %375, !llvm.loop !19

.critedge:                                        ; preds = %375, %378
  %400 = load i32, ptr %10, align 4
  %401 = load i64, ptr %6, align 8
  %402 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %401
  store i32 %400, ptr %402, align 4
  %403 = load i8, ptr %11, align 1
  %404 = load i64, ptr %6, align 8
  %405 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %404
  store i8 %403, ptr %405, align 1
  %406 = load i64, ptr %5, align 8
  %407 = add i64 %406, 1
  store i64 %407, ptr %5, align 8
  %408 = load i64, ptr %5, align 8
  %409 = icmp ult i64 %408, 256
  br i1 %409, label %.lr.ph29, label %._crit_edge30, !llvm.loop !20

._crit_edge30:                                    ; preds = %.critedge, %._crit_edge27
  store i64 0, ptr %6, align 8
  %410 = load i64, ptr %6, align 8
  %411 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %410
  %412 = load i32, ptr %411, align 4
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %.lr.ph32, label %._crit_edge33

.lr.ph32:                                         ; preds = %._crit_edge30, %.lr.ph32
  %414 = load i64, ptr %6, align 8
  %415 = add i64 %414, 1
  store i64 %415, ptr %6, align 8
  %416 = load i64, ptr %6, align 8
  %417 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %416
  %418 = load i32, ptr %417, align 4
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %.lr.ph32, label %._crit_edge33, !llvm.loop !21

._crit_edge33:                                    ; preds = %.lr.ph32, %._crit_edge30
  store i32 0, ptr %9, align 4
  %420 = load i64, ptr %6, align 8
  store i64 %420, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  %421 = load ptr, ptr %14, align 8
  store ptr %421, ptr %12, align 8
  %422 = load ptr, ptr %3, align 8
  store ptr %422, ptr %13, align 8
  %423 = load i64, ptr %7, align 8
  %424 = load i64, ptr %4, align 8
  %425 = icmp ult i64 %423, %424
  br i1 %425, label %.lr.ph38, label %._crit_edge39

.lr.ph38:                                         ; preds = %._crit_edge33, %475
  %426 = load i32, ptr %9, align 4
  %427 = mul i32 %426, 2
  %428 = add i32 %427, 1
  store i32 %428, ptr %9, align 4
  %429 = load ptr, ptr %12, align 8
  %430 = load i8, ptr %429, align 1
  %431 = zext i8 %430 to i64
  %432 = load i64, ptr %8, align 8
  %433 = and i64 %431, %432
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %435, label %438

435:                                              ; preds = %.lr.ph38
  %436 = load i32, ptr %9, align 4
  %437 = add i32 %436, 1
  store i32 %437, ptr %9, align 4
  br label %438

438:                                              ; preds = %435, %.lr.ph38
  %439 = load i64, ptr %5, align 8
  %440 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %439
  %441 = load i32, ptr %440, align 4
  %442 = load i32, ptr %9, align 4
  %443 = icmp ult i32 %441, %442
  br i1 %443, label %.lr.ph35, label %._crit_edge36

.lr.ph35:                                         ; preds = %438, %.lr.ph35
  %444 = load i64, ptr %5, align 8
  %445 = add i64 %444, 1
  store i64 %445, ptr %5, align 8
  %446 = load i64, ptr %5, align 8
  %447 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %446
  %448 = load i32, ptr %447, align 4
  %449 = load i32, ptr %9, align 4
  %450 = icmp ult i32 %448, %449
  br i1 %450, label %.lr.ph35, label %._crit_edge36, !llvm.loop !22

._crit_edge36:                                    ; preds = %.lr.ph35, %438
  %451 = load i32, ptr %9, align 4
  %452 = load i64, ptr %5, align 8
  %453 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %452
  %454 = load i32, ptr %453, align 4
  %455 = icmp eq i32 %451, %454
  br i1 %455, label %456, label %466

456:                                              ; preds = %._crit_edge36
  %457 = load i64, ptr %5, align 8
  %458 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %457
  %459 = load i8, ptr %458, align 1
  %460 = load ptr, ptr %13, align 8
  store i8 %459, ptr %460, align 1
  %461 = load ptr, ptr %13, align 8
  %462 = getelementptr inbounds nuw i8, ptr %461, i32 1
  store ptr %462, ptr %13, align 8
  %463 = load i64, ptr %7, align 8
  %464 = add i64 %463, 1
  store i64 %464, ptr %7, align 8
  store i32 0, ptr %9, align 4
  %465 = load i64, ptr %6, align 8
  store i64 %465, ptr %5, align 8
  br label %466

466:                                              ; preds = %456, %._crit_edge36
  %467 = load i64, ptr %8, align 8
  %468 = icmp ugt i64 %467, 1
  br i1 %468, label %469, label %472

469:                                              ; preds = %466
  %470 = load i64, ptr %8, align 8
  %471 = lshr i64 %470, 1
  store i64 %471, ptr %8, align 8
  br label %475

472:                                              ; preds = %466
  store i64 128, ptr %8, align 8
  %473 = load ptr, ptr %12, align 8
  %474 = getelementptr inbounds nuw i8, ptr %473, i32 1
  store ptr %474, ptr %12, align 8
  br label %475

475:                                              ; preds = %472, %469
  %476 = load i64, ptr %7, align 8
  %477 = load i64, ptr %4, align 8
  %478 = icmp ult i64 %476, %477
  br i1 %478, label %.lr.ph38, label %._crit_edge39, !llvm.loop !23

._crit_edge39:                                    ; preds = %475, %._crit_edge33
  %479 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %479)
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

.lr.ph:                                           ; preds = %4, %66
  %22 = load i32, ptr %8, align 4
  %23 = load i32, ptr %8, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, ptr %9, align 4
  %25 = load i32, ptr %9, align 4
  %26 = load i32, ptr %7, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %.lr.ph
  %29 = load ptr, ptr %5, align 8
  %30 = load ptr, ptr %6, align 8
  %31 = load i32, ptr %9, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, ptr %30, i64 %33
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds nuw i64, ptr %29, i64 %35
  %37 = load i64, ptr %36, align 8
  %38 = load ptr, ptr %5, align 8
  %39 = load ptr, ptr %6, align 8
  %40 = load i32, ptr %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, ptr %39, i64 %41
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds nuw i64, ptr %38, i64 %43
  %45 = load i64, ptr %44, align 8
  %46 = icmp ugt i64 %37, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %28
  %48 = load i32, ptr %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %9, align 4
  br label %50

50:                                               ; preds = %47, %28, %.lr.ph
  %51 = load ptr, ptr %5, align 8
  %52 = load i32, ptr %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, ptr %51, i64 %53
  %55 = load i64, ptr %54, align 8
  %56 = load ptr, ptr %5, align 8
  %57 = load ptr, ptr %6, align 8
  %58 = load i32, ptr %9, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, ptr %57, i64 %60
  %62 = load i64, ptr %61, align 8
  %63 = getelementptr inbounds nuw i64, ptr %56, i64 %62
  %64 = load i64, ptr %63, align 8
  %65 = icmp ult i64 %55, %64
  br i1 %65, label %.loopexit, label %66

66:                                               ; preds = %50
  %67 = load ptr, ptr %6, align 8
  %68 = load i32, ptr %9, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, ptr %67, i64 %70
  %72 = load i64, ptr %71, align 8
  %73 = load ptr, ptr %6, align 8
  %74 = load i32, ptr %8, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, ptr %73, i64 %76
  store i64 %72, ptr %77, align 8
  %78 = load i32, ptr %9, align 4
  store i32 %78, ptr %8, align 4
  %79 = load i32, ptr %8, align 4
  %80 = load i32, ptr %7, align 4
  %81 = sdiv i32 %80, 2
  %82 = icmp sle i32 %79, %81
  br i1 %82, label %.lr.ph, label %.loopexit, !llvm.loop !24

.loopexit:                                        ; preds = %4, %66, %50
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
  br i1 %11, label %12, label %.loopexit

12:                                               ; preds = %2
  store i32 1, ptr %6, align 4
  %13 = load i32, ptr %6, align 4
  %14 = load i32, ptr %4, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %12, %22
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds ptr, ptr %16, i64 1
  %18 = load ptr, ptr %17, align 8
  %19 = call i32 @strcmp(ptr noundef %18, ptr noundef @.str.4) #7
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %.lr.ph
  store i8 1, ptr %7, align 1
  br label %.loopexit

22:                                               ; preds = %.lr.ph
  %23 = load i32, ptr %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %6, align 4
  %25 = load i32, ptr %6, align 4
  %26 = load i32, ptr %4, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %.lr.ph, label %.loopexit, !llvm.loop !25

.loopexit:                                        ; preds = %21, %22, %12, %2
  %28 = call ptr @generate_test_data(i64 noundef 10000000)
  store ptr %28, ptr %8, align 8
  store i32 0, ptr %6, align 4
  %29 = load i32, ptr %6, align 4
  %30 = icmp slt i32 %29, 30
  br i1 %30, label %.lr.ph1, label %._crit_edge

.lr.ph1:                                          ; preds = %.loopexit, %.lr.ph1
  %31 = load ptr, ptr %8, align 8
  call void @compdecomp(ptr noundef %31, i64 noundef 10000000)
  %32 = load i32, ptr %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %6, align 4
  %34 = load i32, ptr %6, align 4
  %35 = icmp slt i32 %34, 30
  br i1 %35, label %.lr.ph1, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %.lr.ph1, %.loopexit
  store double 0.000000e+00, ptr %9, align 8
  %36 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %36)
  %37 = load i8, ptr %7, align 1
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %._crit_edge
  %40 = call ptr @__acrt_iob_func(i32 noundef 1)
  %41 = load double, ptr %9, align 8
  %42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef @.str.5, double noundef %41) #7
  br label %47

43:                                               ; preds = %._crit_edge
  %44 = call ptr @__acrt_iob_func(i32 noundef 1)
  %45 = load double, ptr %9, align 8
  %46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef @.str.6, double noundef %45) #7
  br label %47

47:                                               ; preds = %43, %39
  %48 = call ptr @__acrt_iob_func(i32 noundef 1)
  %49 = call i32 @fflush(ptr noundef %48)
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
