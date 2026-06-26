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
  %44 = load i64, ptr %5, align 8
  %45 = load i64, ptr %4, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %.lr.ph, label %62

.lr.ph:                                           ; preds = %2
  br label %47

47:                                               ; preds = %.lr.ph, %56
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
  br label %56

56:                                               ; preds = %47
  %57 = load i64, ptr %5, align 8
  %58 = add i64 %57, 1
  store i64 %58, ptr %5, align 8
  %59 = load i64, ptr %5, align 8
  %60 = load i64, ptr %4, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %47, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %56
  br label %62

62:                                               ; preds = %._crit_edge, %2
  store i64 0, ptr %7, align 8
  store i64 0, ptr %5, align 8
  %63 = load i64, ptr %5, align 8
  %64 = icmp ult i64 %63, 256
  br i1 %64, label %.lr.ph2, label %82

.lr.ph2:                                          ; preds = %62
  br label %65

65:                                               ; preds = %.lr.ph2, %77
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
  %80 = load i64, ptr %5, align 8
  %81 = icmp ult i64 %80, 256
  br i1 %81, label %65, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %77
  br label %82

82:                                               ; preds = %._crit_edge3, %62
  %83 = load i64, ptr %7, align 8
  store i64 %83, ptr %5, align 8
  %84 = load i64, ptr %5, align 8
  %85 = icmp ugt i64 %84, 0
  br i1 %85, label %.lr.ph5, label %98

.lr.ph5:                                          ; preds = %82
  br label %86

86:                                               ; preds = %.lr.ph5, %93
  %87 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  %88 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %89 = load i64, ptr %7, align 8
  %90 = trunc i64 %89 to i32
  %91 = load i64, ptr %5, align 8
  %92 = trunc i64 %91 to i32
  call void @heap_adjust(ptr noundef %87, ptr noundef %88, i32 noundef %90, i32 noundef %92)
  br label %93

93:                                               ; preds = %86
  %94 = load i64, ptr %5, align 8
  %95 = add i64 %94, -1
  store i64 %95, ptr %5, align 8
  %96 = load i64, ptr %5, align 8
  %97 = icmp ugt i64 %96, 0
  br i1 %97, label %86, label %._crit_edge6, !llvm.loop !11

._crit_edge6:                                     ; preds = %93
  br label %98

98:                                               ; preds = %._crit_edge6, %82
  %99 = load i64, ptr %7, align 8
  %100 = icmp ugt i64 %99, 1
  br i1 %100, label %.lr.ph8, label %145

.lr.ph8:                                          ; preds = %98
  br label %101

101:                                              ; preds = %.lr.ph8, %101
  %102 = load i64, ptr %7, align 8
  %103 = add i64 %102, -1
  store i64 %103, ptr %7, align 8
  %104 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %105 = load i64, ptr %104, align 16
  store i64 %105, ptr %20, align 8
  %106 = load i64, ptr %7, align 8
  %107 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %106
  %108 = load i64, ptr %107, align 8
  %109 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  store i64 %108, ptr %109, align 16
  %110 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  %111 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %112 = load i64, ptr %7, align 8
  %113 = trunc i64 %112 to i32
  call void @heap_adjust(ptr noundef %110, ptr noundef %111, i32 noundef %113, i32 noundef 1)
  %114 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %115 = load i64, ptr %114, align 16
  %116 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %115
  %117 = load i64, ptr %116, align 8
  %118 = load i64, ptr %20, align 8
  %119 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %118
  %120 = load i64, ptr %119, align 8
  %121 = add i64 %120, %117
  %122 = load i64, ptr %7, align 8
  %123 = add i64 %122, 256
  %124 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %123
  store i64 %121, ptr %124, align 8
  %125 = load i64, ptr %7, align 8
  %126 = add i64 %125, 256
  %127 = trunc i64 %126 to i32
  %128 = load i64, ptr %20, align 8
  %129 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %128
  store i32 %127, ptr %129, align 4
  %130 = load i64, ptr %7, align 8
  %131 = sub i64 -256, %130
  %132 = trunc i64 %131 to i32
  %133 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %134 = load i64, ptr %133, align 16
  %135 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %134
  store i32 %132, ptr %135, align 4
  %136 = load i64, ptr %7, align 8
  %137 = add i64 %136, 256
  %138 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  store i64 %137, ptr %138, align 16
  %139 = getelementptr inbounds [512 x i64], ptr %15, i64 0, i64 0
  %140 = getelementptr inbounds [256 x i64], ptr %16, i64 0, i64 0
  %141 = load i64, ptr %7, align 8
  %142 = trunc i64 %141 to i32
  call void @heap_adjust(ptr noundef %139, ptr noundef %140, i32 noundef %142, i32 noundef 1)
  %143 = load i64, ptr %7, align 8
  %144 = icmp ugt i64 %143, 1
  br i1 %144, label %101, label %._crit_edge9, !llvm.loop !12

._crit_edge9:                                     ; preds = %101
  br label %145

145:                                              ; preds = %._crit_edge9, %98
  %146 = load i64, ptr %7, align 8
  %147 = add i64 %146, 256
  %148 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %147
  store i32 0, ptr %148, align 4
  store i64 0, ptr %23, align 8
  store i64 0, ptr %24, align 8
  store i64 0, ptr %21, align 8
  %149 = load i64, ptr %21, align 8
  %150 = icmp ult i64 %149, 256
  br i1 %150, label %.lr.ph14, label %214

.lr.ph14:                                         ; preds = %145
  br label %151

151:                                              ; preds = %.lr.ph14, %209
  %152 = load i64, ptr %21, align 8
  %153 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %152
  %154 = load i64, ptr %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %161, label %156

156:                                              ; preds = %151
  %157 = load i64, ptr %21, align 8
  %158 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %157
  store i32 0, ptr %158, align 4
  %159 = load i64, ptr %21, align 8
  %160 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %159
  store i8 0, ptr %160, align 1
  br label %208

161:                                              ; preds = %151
  store i64 0, ptr %5, align 8
  store i64 1, ptr %6, align 8
  store i64 0, ptr %22, align 8
  %162 = load i64, ptr %21, align 8
  %163 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %162
  %164 = load i32, ptr %163, align 4
  store i32 %164, ptr %25, align 4
  %165 = load i32, ptr %25, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %.lr.ph11, label %187

.lr.ph11:                                         ; preds = %161
  br label %167

167:                                              ; preds = %.lr.ph11, %176
  %168 = load i32, ptr %25, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %167
  %171 = load i64, ptr %6, align 8
  %172 = load i64, ptr %22, align 8
  %173 = add i64 %172, %171
  store i64 %173, ptr %22, align 8
  %174 = load i32, ptr %25, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, ptr %25, align 4
  br label %176

176:                                              ; preds = %170, %167
  %177 = load i32, ptr %25, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [512 x i32], ptr %17, i64 0, i64 %178
  %180 = load i32, ptr %179, align 4
  store i32 %180, ptr %25, align 4
  %181 = load i64, ptr %6, align 8
  %182 = shl i64 %181, 1
  store i64 %182, ptr %6, align 8
  %183 = load i64, ptr %5, align 8
  %184 = add i64 %183, 1
  store i64 %184, ptr %5, align 8
  %185 = load i32, ptr %25, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %167, label %._crit_edge12, !llvm.loop !13

._crit_edge12:                                    ; preds = %176
  br label %187

187:                                              ; preds = %._crit_edge12, %161
  %188 = load i64, ptr %22, align 8
  %189 = trunc i64 %188 to i32
  %190 = load i64, ptr %21, align 8
  %191 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %190
  store i32 %189, ptr %191, align 4
  %192 = load i64, ptr %5, align 8
  %193 = trunc i64 %192 to i8
  %194 = load i64, ptr %21, align 8
  %195 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %194
  store i8 %193, ptr %195, align 1
  %196 = load i64, ptr %22, align 8
  %197 = load i64, ptr %23, align 8
  %198 = icmp ugt i64 %196, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %187
  %200 = load i64, ptr %22, align 8
  store i64 %200, ptr %23, align 8
  br label %201

201:                                              ; preds = %199, %187
  %202 = load i64, ptr %5, align 8
  %203 = load i64, ptr %24, align 8
  %204 = icmp ugt i64 %202, %203
  br i1 %204, label %205, label %207

205:                                              ; preds = %201
  %206 = load i64, ptr %5, align 8
  store i64 %206, ptr %24, align 8
  br label %207

207:                                              ; preds = %205, %201
  br label %208

208:                                              ; preds = %207, %156
  br label %209

209:                                              ; preds = %208
  %210 = load i64, ptr %21, align 8
  %211 = add i64 %210, 1
  store i64 %211, ptr %21, align 8
  %212 = load i64, ptr %21, align 8
  %213 = icmp ult i64 %212, 256
  br i1 %213, label %151, label %._crit_edge15, !llvm.loop !14

._crit_edge15:                                    ; preds = %209
  br label %214

214:                                              ; preds = %._crit_edge15, %145
  %215 = load i64, ptr %24, align 8
  %216 = icmp ugt i64 %215, 32
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = call ptr @__acrt_iob_func(i32 noundef 2)
  %219 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %218, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

220:                                              ; preds = %214
  store i64 0, ptr %26, align 8
  store i8 0, ptr %27, align 1
  store i32 -1, ptr %28, align 4
  %221 = load ptr, ptr %3, align 8
  store ptr %221, ptr %13, align 8
  %222 = load i64, ptr %23, align 8
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %220
  %225 = call ptr @__acrt_iob_func(i32 noundef 2)
  %226 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %225, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

227:                                              ; preds = %220
  store i64 0, ptr %6, align 8
  %228 = load i64, ptr %6, align 8
  %229 = load i64, ptr %4, align 8
  %230 = icmp ult i64 %228, %229
  br i1 %230, label %.lr.ph20, label %311

.lr.ph20:                                         ; preds = %227
  br label %231

231:                                              ; preds = %.lr.ph20, %305
  %232 = load ptr, ptr %13, align 8
  %233 = load i8, ptr %232, align 1
  %234 = zext i8 %233 to i64
  %235 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %234
  %236 = load i8, ptr %235, align 1
  %237 = zext i8 %236 to i32
  %238 = sub nsw i32 %237, 1
  %239 = shl i32 1, %238
  %240 = sext i32 %239 to i64
  store i64 %240, ptr %8, align 8
  store i64 0, ptr %5, align 8
  %241 = load i64, ptr %5, align 8
  %242 = load ptr, ptr %13, align 8
  %243 = load i8, ptr %242, align 1
  %244 = zext i8 %243 to i64
  %245 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %244
  %246 = load i8, ptr %245, align 1
  %247 = zext i8 %246 to i64
  %248 = icmp ult i64 %241, %247
  br i1 %248, label %.lr.ph17, label %302

.lr.ph17:                                         ; preds = %231
  br label %249

249:                                              ; preds = %.lr.ph17, %291
  %250 = load i32, ptr %28, align 4
  %251 = icmp eq i32 %250, 7
  br i1 %251, label %252, label %266

252:                                              ; preds = %249
  %253 = load i8, ptr %27, align 1
  %254 = load ptr, ptr %14, align 8
  %255 = load i64, ptr %26, align 8
  %256 = getelementptr inbounds nuw i8, ptr %254, i64 %255
  store i8 %253, ptr %256, align 1
  %257 = load i64, ptr %26, align 8
  %258 = add i64 %257, 1
  store i64 %258, ptr %26, align 8
  %259 = load i64, ptr %26, align 8
  %260 = load i64, ptr %4, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %265

262:                                              ; preds = %252
  %263 = call ptr @__acrt_iob_func(i32 noundef 2)
  %264 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %263, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

265:                                              ; preds = %252
  store i32 0, ptr %28, align 4
  store i8 0, ptr %27, align 1
  br label %273

266:                                              ; preds = %249
  %267 = load i32, ptr %28, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, ptr %28, align 4
  %269 = load i8, ptr %27, align 1
  %270 = sext i8 %269 to i32
  %271 = shl i32 %270, 1
  %272 = trunc i32 %271 to i8
  store i8 %272, ptr %27, align 1
  br label %273

273:                                              ; preds = %266, %265
  %274 = load ptr, ptr %13, align 8
  %275 = load i8, ptr %274, align 1
  %276 = zext i8 %275 to i64
  %277 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %276
  %278 = load i32, ptr %277, align 4
  %279 = zext i32 %278 to i64
  %280 = load i64, ptr %8, align 8
  %281 = and i64 %279, %280
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %288

283:                                              ; preds = %273
  %284 = load i8, ptr %27, align 1
  %285 = sext i8 %284 to i32
  %286 = or i32 %285, 1
  %287 = trunc i32 %286 to i8
  store i8 %287, ptr %27, align 1
  br label %288

288:                                              ; preds = %283, %273
  %289 = load i64, ptr %8, align 8
  %290 = lshr i64 %289, 1
  store i64 %290, ptr %8, align 8
  br label %291

291:                                              ; preds = %288
  %292 = load i64, ptr %5, align 8
  %293 = add i64 %292, 1
  store i64 %293, ptr %5, align 8
  %294 = load i64, ptr %5, align 8
  %295 = load ptr, ptr %13, align 8
  %296 = load i8, ptr %295, align 1
  %297 = zext i8 %296 to i64
  %298 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %297
  %299 = load i8, ptr %298, align 1
  %300 = zext i8 %299 to i64
  %301 = icmp ult i64 %294, %300
  br i1 %301, label %249, label %._crit_edge18, !llvm.loop !15

._crit_edge18:                                    ; preds = %291
  br label %302

302:                                              ; preds = %._crit_edge18, %231
  %303 = load ptr, ptr %13, align 8
  %304 = getelementptr inbounds nuw i8, ptr %303, i32 1
  store ptr %304, ptr %13, align 8
  br label %305

305:                                              ; preds = %302
  %306 = load i64, ptr %6, align 8
  %307 = add i64 %306, 1
  store i64 %307, ptr %6, align 8
  %308 = load i64, ptr %6, align 8
  %309 = load i64, ptr %4, align 8
  %310 = icmp ult i64 %308, %309
  br i1 %310, label %231, label %._crit_edge21, !llvm.loop !16

._crit_edge21:                                    ; preds = %305
  br label %311

311:                                              ; preds = %._crit_edge21, %227
  %312 = load i32, ptr %28, align 4
  %313 = sub nsw i32 7, %312
  %314 = load i8, ptr %27, align 1
  %315 = sext i8 %314 to i32
  %316 = shl i32 %315, %313
  %317 = trunc i32 %316 to i8
  store i8 %317, ptr %27, align 1
  %318 = load i8, ptr %27, align 1
  %319 = load ptr, ptr %14, align 8
  %320 = load i64, ptr %26, align 8
  %321 = getelementptr inbounds nuw i8, ptr %319, i64 %320
  store i8 %318, ptr %321, align 1
  %322 = load i64, ptr %26, align 8
  %323 = add i64 %322, 1
  store i64 %323, ptr %26, align 8
  %324 = getelementptr inbounds [256 x i32], ptr %29, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %324, i8 0, i64 1024, i1 false)
  %325 = getelementptr inbounds [256 x i8], ptr %30, i64 0, i64 0
  store ptr %325, ptr %31, align 8
  store i64 0, ptr %6, align 8
  %326 = load i64, ptr %6, align 8
  %327 = icmp ult i64 %326, 256
  br i1 %327, label %.lr.ph26, label %393

.lr.ph26:                                         ; preds = %311
  br label %328

328:                                              ; preds = %.lr.ph26, %388
  %329 = load i64, ptr %6, align 8
  %330 = trunc i64 %329 to i8
  %331 = load ptr, ptr %31, align 8
  store i8 %330, ptr %331, align 1
  %332 = load ptr, ptr %31, align 8
  %333 = getelementptr inbounds nuw i8, ptr %332, i32 1
  store ptr %333, ptr %31, align 8
  %334 = load i64, ptr %6, align 8
  %335 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %334
  %336 = load i32, ptr %335, align 4
  %337 = load i64, ptr %6, align 8
  %338 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %337
  %339 = load i8, ptr %338, align 1
  %340 = zext i8 %339 to i32
  %341 = or i32 %340, %336
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %387

343:                                              ; preds = %328
  store i32 0, ptr %9, align 4
  %344 = load i64, ptr %6, align 8
  %345 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %344
  %346 = load i8, ptr %345, align 1
  %347 = zext i8 %346 to i32
  %348 = sub nsw i32 %347, 1
  %349 = shl i32 1, %348
  %350 = sext i32 %349 to i64
  store i64 %350, ptr %8, align 8
  store i64 0, ptr %5, align 8
  %351 = load i64, ptr %5, align 8
  %352 = load i64, ptr %6, align 8
  %353 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %352
  %354 = load i8, ptr %353, align 1
  %355 = zext i8 %354 to i64
  %356 = icmp ult i64 %351, %355
  br i1 %356, label %.lr.ph23, label %383

.lr.ph23:                                         ; preds = %343
  br label %357

357:                                              ; preds = %.lr.ph23, %374
  %358 = load i32, ptr %9, align 4
  %359 = mul i32 %358, 2
  %360 = add i32 %359, 1
  store i32 %360, ptr %9, align 4
  %361 = load i64, ptr %6, align 8
  %362 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %361
  %363 = load i32, ptr %362, align 4
  %364 = zext i32 %363 to i64
  %365 = load i64, ptr %8, align 8
  %366 = and i64 %364, %365
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %371

368:                                              ; preds = %357
  %369 = load i32, ptr %9, align 4
  %370 = add i32 %369, 1
  store i32 %370, ptr %9, align 4
  br label %371

371:                                              ; preds = %368, %357
  %372 = load i64, ptr %8, align 8
  %373 = lshr i64 %372, 1
  store i64 %373, ptr %8, align 8
  br label %374

374:                                              ; preds = %371
  %375 = load i64, ptr %5, align 8
  %376 = add i64 %375, 1
  store i64 %376, ptr %5, align 8
  %377 = load i64, ptr %5, align 8
  %378 = load i64, ptr %6, align 8
  %379 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %378
  %380 = load i8, ptr %379, align 1
  %381 = zext i8 %380 to i64
  %382 = icmp ult i64 %377, %381
  br i1 %382, label %357, label %._crit_edge24, !llvm.loop !17

._crit_edge24:                                    ; preds = %374
  br label %383

383:                                              ; preds = %._crit_edge24, %343
  %384 = load i32, ptr %9, align 4
  %385 = load i64, ptr %6, align 8
  %386 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %385
  store i32 %384, ptr %386, align 4
  br label %387

387:                                              ; preds = %383, %328
  br label %388

388:                                              ; preds = %387
  %389 = load i64, ptr %6, align 8
  %390 = add i64 %389, 1
  store i64 %390, ptr %6, align 8
  %391 = load i64, ptr %6, align 8
  %392 = icmp ult i64 %391, 256
  br i1 %392, label %328, label %._crit_edge27, !llvm.loop !18

._crit_edge27:                                    ; preds = %388
  br label %393

393:                                              ; preds = %._crit_edge27, %311
  store i64 1, ptr %5, align 8
  %394 = load i64, ptr %5, align 8
  %395 = icmp ult i64 %394, 256
  br i1 %395, label %.lr.ph29, label %443

.lr.ph29:                                         ; preds = %393
  br label %396

396:                                              ; preds = %.lr.ph29, %438
  %397 = load i64, ptr %5, align 8
  %398 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %397
  %399 = load i32, ptr %398, align 4
  store i32 %399, ptr %10, align 4
  %400 = load i64, ptr %5, align 8
  %401 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %400
  %402 = load i8, ptr %401, align 1
  store i8 %402, ptr %11, align 1
  %403 = load i64, ptr %5, align 8
  store i64 %403, ptr %6, align 8
  br label %404

404:                                              ; preds = %416, %396
  %405 = load i64, ptr %6, align 8
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %407, label %414

407:                                              ; preds = %404
  %408 = load i64, ptr %6, align 8
  %409 = sub i64 %408, 1
  %410 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %409
  %411 = load i32, ptr %410, align 4
  %412 = load i32, ptr %10, align 4
  %413 = icmp ugt i32 %411, %412
  br label %414

414:                                              ; preds = %407, %404
  %415 = phi i1 [ false, %404 ], [ %413, %407 ]
  br i1 %415, label %416, label %431

416:                                              ; preds = %414
  %417 = load i64, ptr %6, align 8
  %418 = sub i64 %417, 1
  %419 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %418
  %420 = load i32, ptr %419, align 4
  %421 = load i64, ptr %6, align 8
  %422 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %421
  store i32 %420, ptr %422, align 4
  %423 = load i64, ptr %6, align 8
  %424 = sub i64 %423, 1
  %425 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %424
  %426 = load i8, ptr %425, align 1
  %427 = load i64, ptr %6, align 8
  %428 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %427
  store i8 %426, ptr %428, align 1
  %429 = load i64, ptr %6, align 8
  %430 = add i64 %429, -1
  store i64 %430, ptr %6, align 8
  br label %404, !llvm.loop !19

431:                                              ; preds = %414
  %432 = load i32, ptr %10, align 4
  %433 = load i64, ptr %6, align 8
  %434 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %433
  store i32 %432, ptr %434, align 4
  %435 = load i8, ptr %11, align 1
  %436 = load i64, ptr %6, align 8
  %437 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %436
  store i8 %435, ptr %437, align 1
  br label %438

438:                                              ; preds = %431
  %439 = load i64, ptr %5, align 8
  %440 = add i64 %439, 1
  store i64 %440, ptr %5, align 8
  %441 = load i64, ptr %5, align 8
  %442 = icmp ult i64 %441, 256
  br i1 %442, label %396, label %._crit_edge30, !llvm.loop !20

._crit_edge30:                                    ; preds = %438
  br label %443

443:                                              ; preds = %._crit_edge30, %393
  store i64 0, ptr %6, align 8
  %444 = load i64, ptr %6, align 8
  %445 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %444
  %446 = load i32, ptr %445, align 4
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %.lr.ph32, label %456

.lr.ph32:                                         ; preds = %443
  br label %448

448:                                              ; preds = %.lr.ph32, %449
  br label %449

449:                                              ; preds = %448
  %450 = load i64, ptr %6, align 8
  %451 = add i64 %450, 1
  store i64 %451, ptr %6, align 8
  %452 = load i64, ptr %6, align 8
  %453 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %452
  %454 = load i32, ptr %453, align 4
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %448, label %._crit_edge33, !llvm.loop !21

._crit_edge33:                                    ; preds = %449
  br label %456

456:                                              ; preds = %._crit_edge33, %443
  store i32 0, ptr %9, align 4
  %457 = load i64, ptr %6, align 8
  store i64 %457, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  %458 = load ptr, ptr %14, align 8
  store ptr %458, ptr %12, align 8
  %459 = load ptr, ptr %3, align 8
  store ptr %459, ptr %13, align 8
  %460 = load i64, ptr %7, align 8
  %461 = load i64, ptr %4, align 8
  %462 = icmp ult i64 %460, %461
  br i1 %462, label %.lr.ph38, label %519

.lr.ph38:                                         ; preds = %456
  br label %463

463:                                              ; preds = %.lr.ph38, %515
  %464 = load i32, ptr %9, align 4
  %465 = mul i32 %464, 2
  %466 = add i32 %465, 1
  store i32 %466, ptr %9, align 4
  %467 = load ptr, ptr %12, align 8
  %468 = load i8, ptr %467, align 1
  %469 = zext i8 %468 to i64
  %470 = load i64, ptr %8, align 8
  %471 = and i64 %469, %470
  %472 = icmp ne i64 %471, 0
  br i1 %472, label %473, label %476

473:                                              ; preds = %463
  %474 = load i32, ptr %9, align 4
  %475 = add i32 %474, 1
  store i32 %475, ptr %9, align 4
  br label %476

476:                                              ; preds = %473, %463
  %477 = load i64, ptr %5, align 8
  %478 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %477
  %479 = load i32, ptr %478, align 4
  %480 = load i32, ptr %9, align 4
  %481 = icmp ult i32 %479, %480
  br i1 %481, label %.lr.ph35, label %490

.lr.ph35:                                         ; preds = %476
  br label %482

482:                                              ; preds = %.lr.ph35, %482
  %483 = load i64, ptr %5, align 8
  %484 = add i64 %483, 1
  store i64 %484, ptr %5, align 8
  %485 = load i64, ptr %5, align 8
  %486 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %485
  %487 = load i32, ptr %486, align 4
  %488 = load i32, ptr %9, align 4
  %489 = icmp ult i32 %487, %488
  br i1 %489, label %482, label %._crit_edge36, !llvm.loop !22

._crit_edge36:                                    ; preds = %482
  br label %490

490:                                              ; preds = %._crit_edge36, %476
  %491 = load i32, ptr %9, align 4
  %492 = load i64, ptr %5, align 8
  %493 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %492
  %494 = load i32, ptr %493, align 4
  %495 = icmp eq i32 %491, %494
  br i1 %495, label %496, label %506

496:                                              ; preds = %490
  %497 = load i64, ptr %5, align 8
  %498 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %497
  %499 = load i8, ptr %498, align 1
  %500 = load ptr, ptr %13, align 8
  store i8 %499, ptr %500, align 1
  %501 = load ptr, ptr %13, align 8
  %502 = getelementptr inbounds nuw i8, ptr %501, i32 1
  store ptr %502, ptr %13, align 8
  %503 = load i64, ptr %7, align 8
  %504 = add i64 %503, 1
  store i64 %504, ptr %7, align 8
  store i32 0, ptr %9, align 4
  %505 = load i64, ptr %6, align 8
  store i64 %505, ptr %5, align 8
  br label %506

506:                                              ; preds = %496, %490
  %507 = load i64, ptr %8, align 8
  %508 = icmp ugt i64 %507, 1
  br i1 %508, label %509, label %512

509:                                              ; preds = %506
  %510 = load i64, ptr %8, align 8
  %511 = lshr i64 %510, 1
  store i64 %511, ptr %8, align 8
  br label %515

512:                                              ; preds = %506
  store i64 128, ptr %8, align 8
  %513 = load ptr, ptr %12, align 8
  %514 = getelementptr inbounds nuw i8, ptr %513, i32 1
  store ptr %514, ptr %12, align 8
  br label %515

515:                                              ; preds = %512, %509
  %516 = load i64, ptr %7, align 8
  %517 = load i64, ptr %4, align 8
  %518 = icmp ult i64 %516, %517
  br i1 %518, label %463, label %._crit_edge39, !llvm.loop !23

._crit_edge39:                                    ; preds = %515
  br label %519

519:                                              ; preds = %._crit_edge39, %456
  %520 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %520)
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
  %25 = add nsw i32 %24, %23
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
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
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
