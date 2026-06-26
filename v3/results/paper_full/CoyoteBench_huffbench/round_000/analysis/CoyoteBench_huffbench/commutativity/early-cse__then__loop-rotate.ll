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
  %9 = load i32, ptr %6, align 4
  %10 = sext i32 %9 to i64
  %11 = load i64, ptr %2, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %.lr.ph, label %28

.lr.ph:                                           ; preds = %1
  br label %13

13:                                               ; preds = %.lr.ph, %21
  %14 = load ptr, ptr %3, align 8
  %15 = call i64 @random4()
  %16 = getelementptr inbounds nuw i8, ptr %14, i64 %15
  %17 = load i8, ptr %16, align 1
  %18 = load ptr, ptr %5, align 8
  store i8 %17, ptr %18, align 1
  %19 = load ptr, ptr %5, align 8
  %20 = getelementptr inbounds nuw i8, ptr %19, i32 1
  store ptr %20, ptr %5, align 8
  br label %21

21:                                               ; preds = %13
  %22 = load i32, ptr %6, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %6, align 4
  %24 = load i32, ptr %6, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, ptr %2, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %13, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %21
  br label %28

28:                                               ; preds = %._crit_edge, %1
  %29 = load ptr, ptr %4, align 8
  ret ptr %29
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
  %38 = load i64, ptr %5, align 8
  %39 = load i64, ptr %4, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %.lr.ph, label %56

.lr.ph:                                           ; preds = %2
  br label %41

41:                                               ; preds = %.lr.ph, %50
  %42 = load ptr, ptr %13, align 8
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %44
  %46 = load i64, ptr %45, align 8
  %47 = add i64 %46, 1
  store i64 %47, ptr %45, align 8
  %48 = load ptr, ptr %13, align 8
  %49 = getelementptr inbounds nuw i8, ptr %48, i32 1
  store ptr %49, ptr %13, align 8
  br label %50

50:                                               ; preds = %41
  %51 = load i64, ptr %5, align 8
  %52 = add i64 %51, 1
  store i64 %52, ptr %5, align 8
  %53 = load i64, ptr %5, align 8
  %54 = load i64, ptr %4, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %41, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %50
  br label %56

56:                                               ; preds = %._crit_edge, %2
  store i64 0, ptr %7, align 8
  store i64 0, ptr %5, align 8
  %57 = load i64, ptr %5, align 8
  %58 = icmp ult i64 %57, 256
  br i1 %58, label %.lr.ph8, label %75

.lr.ph8:                                          ; preds = %56
  br label %59

59:                                               ; preds = %.lr.ph8, %70
  %60 = phi i64 [ %57, %.lr.ph8 ], [ %73, %70 ]
  %61 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %60
  %62 = load i64, ptr %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i64, ptr %7, align 8
  %66 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %65
  store i64 %60, ptr %66, align 8
  %67 = load i64, ptr %7, align 8
  %68 = add i64 %67, 1
  store i64 %68, ptr %7, align 8
  br label %69

69:                                               ; preds = %64, %59
  br label %70

70:                                               ; preds = %69
  %71 = load i64, ptr %5, align 8
  %72 = add i64 %71, 1
  store i64 %72, ptr %5, align 8
  %73 = load i64, ptr %5, align 8
  %74 = icmp ult i64 %73, 256
  br i1 %74, label %59, label %._crit_edge9, !llvm.loop !10

._crit_edge9:                                     ; preds = %70
  br label %75

75:                                               ; preds = %._crit_edge9, %56
  %76 = load i64, ptr %7, align 8
  store i64 %76, ptr %5, align 8
  %77 = load i64, ptr %5, align 8
  %78 = icmp ugt i64 %77, 0
  br i1 %78, label %.lr.ph11, label %89

.lr.ph11:                                         ; preds = %75
  br label %79

79:                                               ; preds = %.lr.ph11, %84
  %80 = phi i64 [ %77, %.lr.ph11 ], [ %87, %84 ]
  %81 = load i64, ptr %7, align 8
  %82 = trunc i64 %81 to i32
  %83 = trunc i64 %80 to i32
  call void @heap_adjust(ptr noundef %15, ptr noundef %16, i32 noundef %82, i32 noundef %83)
  br label %84

84:                                               ; preds = %79
  %85 = load i64, ptr %5, align 8
  %86 = add i64 %85, -1
  store i64 %86, ptr %5, align 8
  %87 = load i64, ptr %5, align 8
  %88 = icmp ugt i64 %87, 0
  br i1 %88, label %79, label %._crit_edge12, !llvm.loop !11

._crit_edge12:                                    ; preds = %84
  br label %89

89:                                               ; preds = %._crit_edge12, %75
  %90 = load i64, ptr %7, align 8
  %91 = icmp ugt i64 %90, 1
  br i1 %91, label %.lr.ph14, label %127

.lr.ph14:                                         ; preds = %89
  br label %92

92:                                               ; preds = %.lr.ph14, %92
  %93 = phi i64 [ %90, %.lr.ph14 ], [ %125, %92 ]
  %94 = add i64 %93, -1
  store i64 %94, ptr %7, align 8
  %95 = load i64, ptr %16, align 16
  store i64 %95, ptr %20, align 8
  %96 = load i64, ptr %7, align 8
  %97 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %96
  %98 = load i64, ptr %97, align 8
  store i64 %98, ptr %16, align 16
  %99 = load i64, ptr %7, align 8
  %100 = trunc i64 %99 to i32
  call void @heap_adjust(ptr noundef %15, ptr noundef %16, i32 noundef %100, i32 noundef 1)
  %101 = load i64, ptr %16, align 16
  %102 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %101
  %103 = load i64, ptr %102, align 8
  %104 = load i64, ptr %20, align 8
  %105 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %104
  %106 = load i64, ptr %105, align 8
  %107 = add i64 %103, %106
  %108 = load i64, ptr %7, align 8
  %109 = add i64 256, %108
  %110 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %109
  store i64 %107, ptr %110, align 8
  %111 = load i64, ptr %7, align 8
  %112 = add i64 256, %111
  %113 = trunc i64 %112 to i32
  %114 = load i64, ptr %20, align 8
  %115 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %114
  store i32 %113, ptr %115, align 4
  %116 = load i64, ptr %7, align 8
  %117 = sub i64 -256, %116
  %118 = trunc i64 %117 to i32
  %119 = load i64, ptr %16, align 16
  %120 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %119
  store i32 %118, ptr %120, align 4
  %121 = load i64, ptr %7, align 8
  %122 = add i64 256, %121
  store i64 %122, ptr %16, align 16
  %123 = load i64, ptr %7, align 8
  %124 = trunc i64 %123 to i32
  call void @heap_adjust(ptr noundef %15, ptr noundef %16, i32 noundef %124, i32 noundef 1)
  %125 = load i64, ptr %7, align 8
  %126 = icmp ugt i64 %125, 1
  br i1 %126, label %92, label %._crit_edge15, !llvm.loop !12

._crit_edge15:                                    ; preds = %92
  %split = phi i64 [ %125, %92 ]
  br label %127

127:                                              ; preds = %._crit_edge15, %89
  %.lcssa6 = phi i64 [ %split, %._crit_edge15 ], [ %90, %89 ]
  %128 = add i64 256, %.lcssa6
  %129 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %128
  store i32 0, ptr %129, align 4
  store i64 0, ptr %23, align 8
  store i64 0, ptr %24, align 8
  store i64 0, ptr %21, align 8
  %130 = load i64, ptr %21, align 8
  %131 = icmp ult i64 %130, 256
  br i1 %131, label %.lr.ph20, label %192

.lr.ph20:                                         ; preds = %127
  br label %132

132:                                              ; preds = %.lr.ph20, %187
  %133 = phi i64 [ %130, %.lr.ph20 ], [ %190, %187 ]
  %134 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %133
  %135 = load i64, ptr %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %132
  %138 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %133
  store i32 0, ptr %138, align 4
  %139 = load i64, ptr %21, align 8
  %140 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %139
  store i8 0, ptr %140, align 1
  br label %186

141:                                              ; preds = %132
  store i64 0, ptr %5, align 8
  store i64 1, ptr %6, align 8
  store i64 0, ptr %22, align 8
  %142 = load i64, ptr %21, align 8
  %143 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %142
  %144 = load i32, ptr %143, align 4
  store i32 %144, ptr %25, align 4
  %145 = load i32, ptr %25, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %.lr.ph17, label %167

.lr.ph17:                                         ; preds = %141
  br label %147

147:                                              ; preds = %.lr.ph17, %156
  %148 = phi i32 [ %145, %.lr.ph17 ], [ %165, %156 ]
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  %151 = load i64, ptr %6, align 8
  %152 = load i64, ptr %22, align 8
  %153 = add i64 %152, %151
  store i64 %153, ptr %22, align 8
  %154 = load i32, ptr %25, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, ptr %25, align 4
  br label %156

156:                                              ; preds = %150, %147
  %157 = load i32, ptr %25, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [512 x i32], ptr %17, i64 0, i64 %158
  %160 = load i32, ptr %159, align 4
  store i32 %160, ptr %25, align 4
  %161 = load i64, ptr %6, align 8
  %162 = shl i64 %161, 1
  store i64 %162, ptr %6, align 8
  %163 = load i64, ptr %5, align 8
  %164 = add i64 %163, 1
  store i64 %164, ptr %5, align 8
  %165 = load i32, ptr %25, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %147, label %._crit_edge18, !llvm.loop !13

._crit_edge18:                                    ; preds = %156
  br label %167

167:                                              ; preds = %._crit_edge18, %141
  %168 = load i64, ptr %22, align 8
  %169 = trunc i64 %168 to i32
  %170 = load i64, ptr %21, align 8
  %171 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %170
  store i32 %169, ptr %171, align 4
  %172 = load i64, ptr %5, align 8
  %173 = trunc i64 %172 to i8
  %174 = load i64, ptr %21, align 8
  %175 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %174
  store i8 %173, ptr %175, align 1
  %176 = load i64, ptr %22, align 8
  %177 = load i64, ptr %23, align 8
  %178 = icmp ugt i64 %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %167
  store i64 %176, ptr %23, align 8
  br label %180

180:                                              ; preds = %179, %167
  %181 = load i64, ptr %5, align 8
  %182 = load i64, ptr %24, align 8
  %183 = icmp ugt i64 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %180
  store i64 %181, ptr %24, align 8
  br label %185

185:                                              ; preds = %184, %180
  br label %186

186:                                              ; preds = %185, %137
  br label %187

187:                                              ; preds = %186
  %188 = load i64, ptr %21, align 8
  %189 = add i64 %188, 1
  store i64 %189, ptr %21, align 8
  %190 = load i64, ptr %21, align 8
  %191 = icmp ult i64 %190, 256
  br i1 %191, label %132, label %._crit_edge21, !llvm.loop !14

._crit_edge21:                                    ; preds = %187
  br label %192

192:                                              ; preds = %._crit_edge21, %127
  %193 = load i64, ptr %24, align 8
  %194 = icmp ugt i64 %193, 32
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = call ptr @__acrt_iob_func(i32 noundef 2)
  %197 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %196, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

198:                                              ; preds = %192
  store i64 0, ptr %26, align 8
  store i8 0, ptr %27, align 1
  store i32 -1, ptr %28, align 4
  %199 = load ptr, ptr %3, align 8
  store ptr %199, ptr %13, align 8
  %200 = load i64, ptr %23, align 8
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %198
  %203 = call ptr @__acrt_iob_func(i32 noundef 2)
  %204 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %203, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

205:                                              ; preds = %198
  store i64 0, ptr %6, align 8
  %206 = load i64, ptr %6, align 8
  %207 = load i64, ptr %4, align 8
  %208 = icmp ult i64 %206, %207
  br i1 %208, label %.lr.ph27, label %286

.lr.ph27:                                         ; preds = %205
  br label %209

209:                                              ; preds = %.lr.ph27, %280
  %210 = load ptr, ptr %13, align 8
  %211 = load i8, ptr %210, align 1
  %212 = zext i8 %211 to i64
  %213 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %212
  %214 = load i8, ptr %213, align 1
  %215 = zext i8 %214 to i32
  %216 = sub nsw i32 %215, 1
  %217 = shl i32 1, %216
  %218 = sext i32 %217 to i64
  store i64 %218, ptr %8, align 8
  store i64 0, ptr %5, align 8
  %219 = load i64, ptr %5, align 8
  %220 = load ptr, ptr %13, align 8
  %221 = load i8, ptr %220, align 1
  %222 = zext i8 %221 to i64
  %223 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %222
  %224 = load i8, ptr %223, align 1
  %225 = zext i8 %224 to i64
  %226 = icmp ult i64 %219, %225
  br i1 %226, label %.lr.ph23, label %278

.lr.ph23:                                         ; preds = %209
  br label %227

227:                                              ; preds = %.lr.ph23, %267
  %228 = load i32, ptr %28, align 4
  %229 = icmp eq i32 %228, 7
  br i1 %229, label %230, label %243

230:                                              ; preds = %227
  %231 = load i8, ptr %27, align 1
  %232 = load ptr, ptr %14, align 8
  %233 = load i64, ptr %26, align 8
  %234 = getelementptr inbounds nuw i8, ptr %232, i64 %233
  store i8 %231, ptr %234, align 1
  %235 = load i64, ptr %26, align 8
  %236 = add i64 %235, 1
  store i64 %236, ptr %26, align 8
  %237 = load i64, ptr %4, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %230
  %240 = call ptr @__acrt_iob_func(i32 noundef 2)
  %241 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %240, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

242:                                              ; preds = %230
  store i32 0, ptr %28, align 4
  store i8 0, ptr %27, align 1
  br label %249

243:                                              ; preds = %227
  %244 = add nsw i32 %228, 1
  store i32 %244, ptr %28, align 4
  %245 = load i8, ptr %27, align 1
  %246 = sext i8 %245 to i32
  %247 = shl i32 %246, 1
  %248 = trunc i32 %247 to i8
  store i8 %248, ptr %27, align 1
  br label %249

249:                                              ; preds = %243, %242
  %250 = load ptr, ptr %13, align 8
  %251 = load i8, ptr %250, align 1
  %252 = zext i8 %251 to i64
  %253 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %252
  %254 = load i32, ptr %253, align 4
  %255 = zext i32 %254 to i64
  %256 = load i64, ptr %8, align 8
  %257 = and i64 %255, %256
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %249
  %260 = load i8, ptr %27, align 1
  %261 = sext i8 %260 to i32
  %262 = or i32 %261, 1
  %263 = trunc i32 %262 to i8
  store i8 %263, ptr %27, align 1
  br label %264

264:                                              ; preds = %259, %249
  %265 = load i64, ptr %8, align 8
  %266 = lshr i64 %265, 1
  store i64 %266, ptr %8, align 8
  br label %267

267:                                              ; preds = %264
  %268 = load i64, ptr %5, align 8
  %269 = add i64 %268, 1
  store i64 %269, ptr %5, align 8
  %270 = load i64, ptr %5, align 8
  %271 = load ptr, ptr %13, align 8
  %272 = load i8, ptr %271, align 1
  %273 = zext i8 %272 to i64
  %274 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %273
  %275 = load i8, ptr %274, align 1
  %276 = zext i8 %275 to i64
  %277 = icmp ult i64 %270, %276
  br i1 %277, label %227, label %._crit_edge24, !llvm.loop !15

._crit_edge24:                                    ; preds = %267
  %split25 = phi ptr [ %271, %267 ]
  br label %278

278:                                              ; preds = %._crit_edge24, %209
  %.lcssa4 = phi ptr [ %split25, %._crit_edge24 ], [ %220, %209 ]
  %279 = getelementptr inbounds nuw i8, ptr %.lcssa4, i32 1
  store ptr %279, ptr %13, align 8
  br label %280

280:                                              ; preds = %278
  %281 = load i64, ptr %6, align 8
  %282 = add i64 %281, 1
  store i64 %282, ptr %6, align 8
  %283 = load i64, ptr %6, align 8
  %284 = load i64, ptr %4, align 8
  %285 = icmp ult i64 %283, %284
  br i1 %285, label %209, label %._crit_edge28, !llvm.loop !16

._crit_edge28:                                    ; preds = %280
  br label %286

286:                                              ; preds = %._crit_edge28, %205
  %287 = load i32, ptr %28, align 4
  %288 = sub nsw i32 7, %287
  %289 = load i8, ptr %27, align 1
  %290 = sext i8 %289 to i32
  %291 = shl i32 %290, %288
  %292 = trunc i32 %291 to i8
  store i8 %292, ptr %27, align 1
  %293 = load ptr, ptr %14, align 8
  %294 = load i64, ptr %26, align 8
  %295 = getelementptr inbounds nuw i8, ptr %293, i64 %294
  store i8 %292, ptr %295, align 1
  %296 = load i64, ptr %26, align 8
  %297 = add i64 %296, 1
  store i64 %297, ptr %26, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %29, i8 0, i64 1024, i1 false)
  store ptr %30, ptr %31, align 8
  store i64 0, ptr %6, align 8
  %298 = load i64, ptr %6, align 8
  %299 = icmp ult i64 %298, 256
  br i1 %299, label %.lr.ph34, label %362

.lr.ph34:                                         ; preds = %286
  br label %300

300:                                              ; preds = %.lr.ph34, %357
  %301 = phi i64 [ %298, %.lr.ph34 ], [ %360, %357 ]
  %302 = trunc i64 %301 to i8
  %303 = load ptr, ptr %31, align 8
  store i8 %302, ptr %303, align 1
  %304 = load ptr, ptr %31, align 8
  %305 = getelementptr inbounds nuw i8, ptr %304, i32 1
  store ptr %305, ptr %31, align 8
  %306 = load i64, ptr %6, align 8
  %307 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %306
  %308 = load i32, ptr %307, align 4
  %309 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %306
  %310 = load i8, ptr %309, align 1
  %311 = zext i8 %310 to i32
  %312 = or i32 %308, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %356

314:                                              ; preds = %300
  store i32 0, ptr %9, align 4
  %315 = load i64, ptr %6, align 8
  %316 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %315
  %317 = load i8, ptr %316, align 1
  %318 = zext i8 %317 to i32
  %319 = sub nsw i32 %318, 1
  %320 = shl i32 1, %319
  %321 = sext i32 %320 to i64
  store i64 %321, ptr %8, align 8
  store i64 0, ptr %5, align 8
  %322 = load i64, ptr %5, align 8
  %323 = load i64, ptr %6, align 8
  %324 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %323
  %325 = load i8, ptr %324, align 1
  %326 = zext i8 %325 to i64
  %327 = icmp ult i64 %322, %326
  br i1 %327, label %.lr.ph30, label %353

.lr.ph30:                                         ; preds = %314
  br label %328

328:                                              ; preds = %.lr.ph30, %344
  %329 = load i32, ptr %9, align 4
  %330 = mul i32 %329, 2
  %331 = add i32 %330, 1
  store i32 %331, ptr %9, align 4
  %332 = load i64, ptr %6, align 8
  %333 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %332
  %334 = load i32, ptr %333, align 4
  %335 = zext i32 %334 to i64
  %336 = load i64, ptr %8, align 8
  %337 = and i64 %335, %336
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %341

339:                                              ; preds = %328
  %340 = add i32 %331, 1
  store i32 %340, ptr %9, align 4
  br label %341

341:                                              ; preds = %339, %328
  %342 = load i64, ptr %8, align 8
  %343 = lshr i64 %342, 1
  store i64 %343, ptr %8, align 8
  br label %344

344:                                              ; preds = %341
  %345 = load i64, ptr %5, align 8
  %346 = add i64 %345, 1
  store i64 %346, ptr %5, align 8
  %347 = load i64, ptr %5, align 8
  %348 = load i64, ptr %6, align 8
  %349 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %348
  %350 = load i8, ptr %349, align 1
  %351 = zext i8 %350 to i64
  %352 = icmp ult i64 %347, %351
  br i1 %352, label %328, label %._crit_edge31, !llvm.loop !17

._crit_edge31:                                    ; preds = %344
  %split32 = phi i64 [ %348, %344 ]
  br label %353

353:                                              ; preds = %._crit_edge31, %314
  %.lcssa3 = phi i64 [ %split32, %._crit_edge31 ], [ %323, %314 ]
  %354 = load i32, ptr %9, align 4
  %355 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %.lcssa3
  store i32 %354, ptr %355, align 4
  br label %356

356:                                              ; preds = %353, %300
  br label %357

357:                                              ; preds = %356
  %358 = load i64, ptr %6, align 8
  %359 = add i64 %358, 1
  store i64 %359, ptr %6, align 8
  %360 = load i64, ptr %6, align 8
  %361 = icmp ult i64 %360, 256
  br i1 %361, label %300, label %._crit_edge35, !llvm.loop !18

._crit_edge35:                                    ; preds = %357
  br label %362

362:                                              ; preds = %._crit_edge35, %286
  store i64 1, ptr %5, align 8
  %363 = load i64, ptr %5, align 8
  %364 = icmp ult i64 %363, 256
  br i1 %364, label %.lr.ph37, label %409

.lr.ph37:                                         ; preds = %362
  br label %365

365:                                              ; preds = %.lr.ph37, %404
  %366 = phi i64 [ %363, %.lr.ph37 ], [ %407, %404 ]
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

373:                                              ; preds = %384, %365
  %374 = load i64, ptr %6, align 8
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %382

376:                                              ; preds = %373
  %377 = sub i64 %374, 1
  %378 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %377
  %379 = load i32, ptr %378, align 4
  %380 = load i32, ptr %10, align 4
  %381 = icmp ugt i32 %379, %380
  br label %382

382:                                              ; preds = %376, %373
  %383 = phi i1 [ false, %373 ], [ %381, %376 ]
  br i1 %383, label %384, label %397

384:                                              ; preds = %382
  %385 = load i64, ptr %6, align 8
  %386 = sub i64 %385, 1
  %387 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %386
  %388 = load i32, ptr %387, align 4
  %389 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %385
  store i32 %388, ptr %389, align 4
  %390 = load i64, ptr %6, align 8
  %391 = sub i64 %390, 1
  %392 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %391
  %393 = load i8, ptr %392, align 1
  %394 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %390
  store i8 %393, ptr %394, align 1
  %395 = load i64, ptr %6, align 8
  %396 = add i64 %395, -1
  store i64 %396, ptr %6, align 8
  br label %373, !llvm.loop !19

397:                                              ; preds = %382
  %398 = load i32, ptr %10, align 4
  %399 = load i64, ptr %6, align 8
  %400 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %399
  store i32 %398, ptr %400, align 4
  %401 = load i8, ptr %11, align 1
  %402 = load i64, ptr %6, align 8
  %403 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %402
  store i8 %401, ptr %403, align 1
  br label %404

404:                                              ; preds = %397
  %405 = load i64, ptr %5, align 8
  %406 = add i64 %405, 1
  store i64 %406, ptr %5, align 8
  %407 = load i64, ptr %5, align 8
  %408 = icmp ult i64 %407, 256
  br i1 %408, label %365, label %._crit_edge38, !llvm.loop !20

._crit_edge38:                                    ; preds = %404
  br label %409

409:                                              ; preds = %._crit_edge38, %362
  store i64 0, ptr %6, align 8
  %410 = load i64, ptr %6, align 8
  %411 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %410
  %412 = load i32, ptr %411, align 4
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %.lr.ph40, label %422

.lr.ph40:                                         ; preds = %409
  br label %414

414:                                              ; preds = %.lr.ph40, %416
  %415 = phi i64 [ %410, %.lr.ph40 ], [ %418, %416 ]
  br label %416

416:                                              ; preds = %414
  %417 = add i64 %415, 1
  store i64 %417, ptr %6, align 8
  %418 = load i64, ptr %6, align 8
  %419 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %418
  %420 = load i32, ptr %419, align 4
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %414, label %._crit_edge41, !llvm.loop !21

._crit_edge41:                                    ; preds = %416
  br label %422

422:                                              ; preds = %._crit_edge41, %409
  store i32 0, ptr %9, align 4
  %423 = load i64, ptr %6, align 8
  store i64 %423, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  %424 = load ptr, ptr %14, align 8
  store ptr %424, ptr %12, align 8
  %425 = load ptr, ptr %3, align 8
  store ptr %425, ptr %13, align 8
  %426 = load i64, ptr %7, align 8
  %427 = load i64, ptr %4, align 8
  %428 = icmp ult i64 %426, %427
  br i1 %428, label %.lr.ph49, label %478

.lr.ph49:                                         ; preds = %422
  br label %429

429:                                              ; preds = %.lr.ph49, %474
  %430 = load i32, ptr %9, align 4
  %431 = mul i32 %430, 2
  %432 = add i32 %431, 1
  store i32 %432, ptr %9, align 4
  %433 = load ptr, ptr %12, align 8
  %434 = load i8, ptr %433, align 1
  %435 = zext i8 %434 to i64
  %436 = load i64, ptr %8, align 8
  %437 = and i64 %435, %436
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %441

439:                                              ; preds = %429
  %440 = add i32 %432, 1
  store i32 %440, ptr %9, align 4
  br label %441

441:                                              ; preds = %439, %429
  %442 = load i64, ptr %5, align 8
  %443 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %442
  %444 = load i32, ptr %443, align 4
  %445 = load i32, ptr %9, align 4
  %446 = icmp ult i32 %444, %445
  br i1 %446, label %.lr.ph43, label %455

.lr.ph43:                                         ; preds = %441
  br label %447

447:                                              ; preds = %.lr.ph43, %447
  %448 = phi i64 [ %442, %.lr.ph43 ], [ %450, %447 ]
  %449 = add i64 %448, 1
  store i64 %449, ptr %5, align 8
  %450 = load i64, ptr %5, align 8
  %451 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %450
  %452 = load i32, ptr %451, align 4
  %453 = load i32, ptr %9, align 4
  %454 = icmp ult i32 %452, %453
  br i1 %454, label %447, label %._crit_edge44, !llvm.loop !22

._crit_edge44:                                    ; preds = %447
  %split45 = phi i64 [ %450, %447 ]
  %split46 = phi i32 [ %452, %447 ]
  %split47 = phi i32 [ %453, %447 ]
  br label %455

455:                                              ; preds = %._crit_edge44, %441
  %.lcssa2 = phi i64 [ %split45, %._crit_edge44 ], [ %442, %441 ]
  %.lcssa1 = phi i32 [ %split46, %._crit_edge44 ], [ %444, %441 ]
  %.lcssa = phi i32 [ %split47, %._crit_edge44 ], [ %445, %441 ]
  %456 = icmp eq i32 %.lcssa, %.lcssa1
  br i1 %456, label %457, label %466

457:                                              ; preds = %455
  %458 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %.lcssa2
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

466:                                              ; preds = %457, %455
  %467 = load i64, ptr %8, align 8
  %468 = icmp ugt i64 %467, 1
  br i1 %468, label %469, label %471

469:                                              ; preds = %466
  %470 = lshr i64 %467, 1
  store i64 %470, ptr %8, align 8
  br label %474

471:                                              ; preds = %466
  store i64 128, ptr %8, align 8
  %472 = load ptr, ptr %12, align 8
  %473 = getelementptr inbounds nuw i8, ptr %472, i32 1
  store ptr %473, ptr %12, align 8
  br label %474

474:                                              ; preds = %471, %469
  %475 = load i64, ptr %7, align 8
  %476 = load i64, ptr %4, align 8
  %477 = icmp ult i64 %475, %476
  br i1 %477, label %429, label %._crit_edge50, !llvm.loop !23

._crit_edge50:                                    ; preds = %474
  br label %478

478:                                              ; preds = %._crit_edge50, %422
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
  %22 = phi i32 [ %17, %.lr.ph ], [ %65, %59 ]
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
  br label %69

59:                                               ; preds = %43
  %60 = load i32, ptr %8, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, ptr %49, i64 %62
  store i64 %54, ptr %63, align 8
  %64 = load i32, ptr %9, align 4
  store i32 %64, ptr %8, align 4
  %65 = load i32, ptr %8, align 4
  %66 = load i32, ptr %7, align 4
  %67 = sdiv i32 %66, 2
  %68 = icmp sle i32 %65, %67
  br i1 %68, label %21, label %..loopexit_crit_edge, !llvm.loop !24

..loopexit_crit_edge:                             ; preds = %59
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %69

69:                                               ; preds = %.loopexit, %58
  %70 = load i32, ptr %10, align 4
  %71 = sext i32 %70 to i64
  %72 = load ptr, ptr %6, align 8
  %73 = load i32, ptr %8, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, ptr %72, i64 %75
  store i64 %71, ptr %76, align 8
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
