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
  %7 = call ptr @malloc(i64 noundef %0) #7
  store ptr %7, ptr %4, align 8
  store ptr %7, ptr %5, align 8
  br label %8

8:                                                ; preds = %12, %1
  %storemerge = phi i32 [ 0, %1 ], [ %20, %12 ]
  store i32 %storemerge, ptr %6, align 4
  %9 = sext i32 %storemerge to i64
  %10 = load i64, ptr %2, align 8
  %11 = icmp ugt i64 %10, %9
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load ptr, ptr %3, align 8
  %14 = call i64 @random4()
  %15 = getelementptr inbounds nuw i8, ptr %13, i64 %14
  %16 = load i8, ptr %15, align 1
  %17 = load ptr, ptr %5, align 8
  store i8 %16, ptr %17, align 1
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 1
  store ptr %18, ptr %5, align 8
  %19 = load i32, ptr %6, align 4
  %20 = add nsw i32 %19, 1
  br label %8, !llvm.loop !7

21:                                               ; preds = %8
  %22 = load ptr, ptr %4, align 8
  ret ptr %22
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
  store ptr %0, ptr %13, align 8
  %32 = add i64 %1, 1
  %33 = call ptr @malloc(i64 noundef %32) #7
  store ptr %33, ptr %14, align 8
  %34 = add i64 %1, 1
  call void @llvm.memset.p0.i64(ptr align 1 %33, i8 0, i64 %34, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %15, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %16, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %17, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %18, i8 0, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %19, i8 0, i64 256, i1 false)
  br label %35

35:                                               ; preds = %38, %2
  %storemerge = phi i64 [ 0, %2 ], [ %48, %38 ]
  store i64 %storemerge, ptr %5, align 8
  %36 = load i64, ptr %4, align 8
  %37 = icmp ult i64 %storemerge, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load ptr, ptr %13, align 8
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %41
  %43 = load i64, ptr %42, align 8
  %44 = add i64 %43, 1
  store i64 %44, ptr %42, align 8
  %45 = load ptr, ptr %13, align 8
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 1
  store ptr %46, ptr %13, align 8
  %47 = load i64, ptr %5, align 8
  %48 = add i64 %47, 1
  br label %35, !llvm.loop !9

49:                                               ; preds = %35
  store i64 0, ptr %7, align 8
  br label %50

50:                                               ; preds = %61, %49
  %storemerge1 = phi i64 [ 0, %49 ], [ %63, %61 ]
  store i64 %storemerge1, ptr %5, align 8
  %51 = icmp ult i64 %storemerge1, 256
  br i1 %51, label %52, label %64

52:                                               ; preds = %50
  %53 = load i64, ptr %5, align 8
  %54 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %53
  %55 = load i64, ptr %54, align 8
  %.not19 = icmp eq i64 %55, 0
  br i1 %.not19, label %61, label %56

56:                                               ; preds = %52
  %57 = load i64, ptr %5, align 8
  %58 = load i64, ptr %7, align 8
  %59 = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %58
  store i64 %57, ptr %59, align 8
  %60 = add i64 %58, 1
  store i64 %60, ptr %7, align 8
  br label %61

61:                                               ; preds = %52, %56
  %62 = load i64, ptr %5, align 8
  %63 = add i64 %62, 1
  br label %50, !llvm.loop !10

64:                                               ; preds = %50
  %65 = load i64, ptr %7, align 8
  br label %66

66:                                               ; preds = %67, %64
  %storemerge2 = phi i64 [ %65, %64 ], [ %73, %67 ]
  store i64 %storemerge2, ptr %5, align 8
  %.not = icmp eq i64 %storemerge2, 0
  br i1 %.not, label %74, label %67

67:                                               ; preds = %66
  %68 = load i64, ptr %7, align 8
  %69 = trunc i64 %68 to i32
  %70 = load i64, ptr %5, align 8
  %71 = trunc i64 %70 to i32
  call void @heap_adjust(ptr noundef nonnull %15, ptr noundef nonnull %16, i32 noundef %69, i32 noundef %71)
  %72 = load i64, ptr %5, align 8
  %73 = add i64 %72, -1
  br label %66, !llvm.loop !11

74:                                               ; preds = %66, %77
  %75 = load i64, ptr %7, align 8
  %76 = icmp ugt i64 %75, 1
  br i1 %76, label %77, label %106

77:                                               ; preds = %74
  %78 = load i64, ptr %7, align 8
  %79 = add i64 %78, -1
  store i64 %79, ptr %7, align 8
  %80 = load i64, ptr %16, align 16
  store i64 %80, ptr %20, align 8
  %81 = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %79
  %82 = load i64, ptr %81, align 8
  store i64 %82, ptr %16, align 16
  %83 = trunc i64 %79 to i32
  call void @heap_adjust(ptr noundef nonnull %15, ptr noundef nonnull %16, i32 noundef %83, i32 noundef 1)
  %84 = load i64, ptr %16, align 16
  %85 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %84
  %86 = load i64, ptr %85, align 8
  %87 = load i64, ptr %20, align 8
  %88 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %87
  %89 = load i64, ptr %88, align 8
  %90 = add i64 %86, %89
  %91 = load i64, ptr %7, align 8
  %92 = getelementptr [8 x i8], ptr %15, i64 %91
  %93 = getelementptr i8, ptr %92, i64 2048
  store i64 %90, ptr %93, align 8
  %94 = trunc i64 %91 to i32
  %95 = add i32 %94, 256
  %96 = load i64, ptr %20, align 8
  %97 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %96
  store i32 %95, ptr %97, align 4
  %98 = load i64, ptr %7, align 8
  %99 = trunc i64 %98 to i32
  %100 = sub i32 -256, %99
  %101 = load i64, ptr %16, align 16
  %102 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %101
  store i32 %100, ptr %102, align 4
  %103 = add i64 %98, 256
  store i64 %103, ptr %16, align 16
  %104 = load i64, ptr %7, align 8
  %105 = trunc i64 %104 to i32
  call void @heap_adjust(ptr noundef nonnull %15, ptr noundef nonnull %16, i32 noundef %105, i32 noundef 1)
  br label %74, !llvm.loop !12

106:                                              ; preds = %74
  %107 = load i64, ptr %7, align 8
  %108 = getelementptr [4 x i8], ptr %17, i64 %107
  %109 = getelementptr i8, ptr %108, i64 1024
  store i32 0, ptr %109, align 4
  store i64 0, ptr %23, align 8
  store i64 0, ptr %24, align 8
  br label %110

110:                                              ; preds = %163, %106
  %storemerge3 = phi i64 [ 0, %106 ], [ %165, %163 ]
  store i64 %storemerge3, ptr %21, align 8
  %111 = icmp ult i64 %storemerge3, 256
  br i1 %111, label %112, label %166

112:                                              ; preds = %110
  %113 = load i64, ptr %21, align 8
  %114 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %113
  %115 = load i64, ptr %114, align 8
  %.not17 = icmp eq i64 %115, 0
  br i1 %.not17, label %116, label %120

116:                                              ; preds = %112
  %117 = load i64, ptr %21, align 8
  %118 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %117
  store i32 0, ptr %118, align 4
  %119 = getelementptr inbounds nuw i8, ptr %19, i64 %117
  store i8 0, ptr %119, align 1
  br label %163

120:                                              ; preds = %112
  store i64 0, ptr %5, align 8
  store i64 1, ptr %6, align 8
  store i64 0, ptr %22, align 8
  %121 = load i64, ptr %21, align 8
  %122 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %121
  %123 = load i32, ptr %122, align 4
  store i32 %123, ptr %25, align 4
  br label %124

124:                                              ; preds = %135, %120
  %125 = load i32, ptr %25, align 4
  %.not18 = icmp eq i32 %125, 0
  br i1 %.not18, label %144, label %126

126:                                              ; preds = %124
  %127 = load i32, ptr %25, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %126
  %130 = load i64, ptr %6, align 8
  %131 = load i64, ptr %22, align 8
  %132 = add i64 %131, %130
  store i64 %132, ptr %22, align 8
  %133 = load i32, ptr %25, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, ptr %25, align 4
  br label %135

135:                                              ; preds = %129, %126
  %136 = load i32, ptr %25, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [4 x i8], ptr %17, i64 %137
  %139 = load i32, ptr %138, align 4
  store i32 %139, ptr %25, align 4
  %140 = load i64, ptr %6, align 8
  %141 = shl i64 %140, 1
  store i64 %141, ptr %6, align 8
  %142 = load i64, ptr %5, align 8
  %143 = add i64 %142, 1
  store i64 %143, ptr %5, align 8
  br label %124, !llvm.loop !13

144:                                              ; preds = %124
  %145 = load i64, ptr %22, align 8
  %146 = trunc i64 %145 to i32
  %147 = load i64, ptr %21, align 8
  %148 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %147
  store i32 %146, ptr %148, align 4
  %149 = load i64, ptr %5, align 8
  %150 = trunc i64 %149 to i8
  %151 = getelementptr inbounds nuw i8, ptr %19, i64 %147
  store i8 %150, ptr %151, align 1
  %152 = load i64, ptr %22, align 8
  %153 = load i64, ptr %23, align 8
  %154 = icmp ugt i64 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %144
  %156 = load i64, ptr %22, align 8
  store i64 %156, ptr %23, align 8
  br label %157

157:                                              ; preds = %155, %144
  %158 = load i64, ptr %5, align 8
  %159 = load i64, ptr %24, align 8
  %160 = icmp ugt i64 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %157
  %162 = load i64, ptr %5, align 8
  store i64 %162, ptr %24, align 8
  br label %163

163:                                              ; preds = %116, %161, %157
  %164 = load i64, ptr %21, align 8
  %165 = add i64 %164, 1
  br label %110, !llvm.loop !14

166:                                              ; preds = %110
  %167 = load i64, ptr %24, align 8
  %168 = icmp ugt i64 %167, 32
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %171 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %170)
  call void @exit(i32 noundef 1) #9
  unreachable

172:                                              ; preds = %166
  store i64 0, ptr %26, align 8
  store i8 0, ptr %27, align 1
  store i32 -1, ptr %28, align 4
  %173 = load ptr, ptr %3, align 8
  store ptr %173, ptr %13, align 8
  %174 = load i64, ptr %23, align 8
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %178 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %177)
  call void @exit(i32 noundef 1) #9
  unreachable

179:                                              ; preds = %172, %237
  %storemerge4 = phi i64 [ %241, %237 ], [ 0, %172 ]
  store i64 %storemerge4, ptr %6, align 8
  %180 = load i64, ptr %4, align 8
  %181 = icmp ult i64 %storemerge4, %180
  br i1 %181, label %182, label %242

182:                                              ; preds = %179
  %183 = load ptr, ptr %13, align 8
  %184 = load i8, ptr %183, align 1
  %185 = zext i8 %184 to i64
  %186 = getelementptr inbounds nuw i8, ptr %19, i64 %185
  %187 = load i8, ptr %186, align 1
  %188 = zext i8 %187 to i32
  %189 = add nsw i32 %188, -1
  %190 = shl nuw i32 1, %189
  %191 = sext i32 %190 to i64
  store i64 %191, ptr %8, align 8
  br label %192

192:                                              ; preds = %232, %182
  %storemerge14 = phi i64 [ 0, %182 ], [ %236, %232 ]
  store i64 %storemerge14, ptr %5, align 8
  %193 = load ptr, ptr %13, align 8
  %194 = load i8, ptr %193, align 1
  %195 = zext i8 %194 to i64
  %196 = getelementptr inbounds nuw i8, ptr %19, i64 %195
  %197 = load i8, ptr %196, align 1
  %198 = zext i8 %197 to i64
  %199 = icmp ult i64 %storemerge14, %198
  br i1 %199, label %200, label %237

200:                                              ; preds = %192
  %201 = load i32, ptr %28, align 4
  %202 = icmp eq i32 %201, 7
  br i1 %202, label %203, label %215

203:                                              ; preds = %200
  %204 = load i8, ptr %27, align 1
  %205 = load ptr, ptr %14, align 8
  %206 = load i64, ptr %26, align 8
  %207 = getelementptr inbounds nuw i8, ptr %205, i64 %206
  store i8 %204, ptr %207, align 1
  %208 = add i64 %206, 1
  store i64 %208, ptr %26, align 8
  %209 = load i64, ptr %4, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %214

211:                                              ; preds = %203
  %212 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %213 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %212)
  call void @exit(i32 noundef 1) #9
  unreachable

214:                                              ; preds = %203
  store i32 0, ptr %28, align 4
  br label %220

215:                                              ; preds = %200
  %216 = load i32, ptr %28, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, ptr %28, align 4
  %218 = load i8, ptr %27, align 1
  %219 = shl i8 %218, 1
  br label %220

220:                                              ; preds = %215, %214
  %storemerge15 = phi i8 [ %219, %215 ], [ 0, %214 ]
  store i8 %storemerge15, ptr %27, align 1
  %221 = load ptr, ptr %13, align 8
  %222 = load i8, ptr %221, align 1
  %223 = zext i8 %222 to i64
  %224 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %223
  %225 = load i32, ptr %224, align 4
  %226 = zext i32 %225 to i64
  %227 = load i64, ptr %8, align 8
  %228 = and i64 %227, %226
  %.not16 = icmp eq i64 %228, 0
  br i1 %.not16, label %232, label %229

229:                                              ; preds = %220
  %230 = load i8, ptr %27, align 1
  %231 = or i8 %230, 1
  store i8 %231, ptr %27, align 1
  br label %232

232:                                              ; preds = %229, %220
  %233 = load i64, ptr %8, align 8
  %234 = lshr i64 %233, 1
  store i64 %234, ptr %8, align 8
  %235 = load i64, ptr %5, align 8
  %236 = add i64 %235, 1
  br label %192, !llvm.loop !15

237:                                              ; preds = %192
  %238 = load ptr, ptr %13, align 8
  %239 = getelementptr inbounds nuw i8, ptr %238, i64 1
  store ptr %239, ptr %13, align 8
  %240 = load i64, ptr %6, align 8
  %241 = add i64 %240, 1
  br label %179, !llvm.loop !16

242:                                              ; preds = %179
  %243 = load i32, ptr %28, align 4
  %244 = sub nsw i32 7, %243
  %245 = load i8, ptr %27, align 1
  %246 = zext i8 %245 to i32
  %247 = shl i32 %246, %244
  %248 = trunc i32 %247 to i8
  store i8 %248, ptr %27, align 1
  %249 = load ptr, ptr %14, align 8
  %250 = load i64, ptr %26, align 8
  %251 = getelementptr inbounds nuw i8, ptr %249, i64 %250
  store i8 %248, ptr %251, align 1
  %252 = add i64 %250, 1
  store i64 %252, ptr %26, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %29, i8 0, i64 1024, i1 false)
  store ptr %30, ptr %31, align 8
  br label %253

253:                                              ; preds = %303, %242
  %storemerge5 = phi i64 [ 0, %242 ], [ %305, %303 ]
  store i64 %storemerge5, ptr %6, align 8
  %254 = icmp ult i64 %storemerge5, 256
  br i1 %254, label %255, label %306

255:                                              ; preds = %253
  %256 = load i64, ptr %6, align 8
  %257 = trunc i64 %256 to i8
  %258 = load ptr, ptr %31, align 8
  store i8 %257, ptr %258, align 1
  %259 = getelementptr inbounds nuw i8, ptr %258, i64 1
  store ptr %259, ptr %31, align 8
  %260 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %256
  %261 = load i32, ptr %260, align 4
  %262 = load i64, ptr %6, align 8
  %263 = getelementptr inbounds nuw i8, ptr %19, i64 %262
  %264 = load i8, ptr %263, align 1
  %265 = zext i8 %264 to i32
  %266 = or i32 %261, %265
  %.not11 = icmp eq i32 %266, 0
  br i1 %.not11, label %303, label %267

267:                                              ; preds = %255
  store i32 0, ptr %9, align 4
  %268 = load i64, ptr %6, align 8
  %269 = getelementptr inbounds nuw i8, ptr %19, i64 %268
  %270 = load i8, ptr %269, align 1
  %271 = zext i8 %270 to i32
  %272 = add nsw i32 %271, -1
  %273 = shl nuw i32 1, %272
  %274 = sext i32 %273 to i64
  store i64 %274, ptr %8, align 8
  br label %275

275:                                              ; preds = %294, %267
  %storemerge12 = phi i64 [ 0, %267 ], [ %298, %294 ]
  store i64 %storemerge12, ptr %5, align 8
  %276 = load i64, ptr %6, align 8
  %277 = getelementptr inbounds nuw i8, ptr %19, i64 %276
  %278 = load i8, ptr %277, align 1
  %279 = zext i8 %278 to i64
  %280 = icmp ult i64 %storemerge12, %279
  br i1 %280, label %281, label %299

281:                                              ; preds = %275
  %282 = load i32, ptr %9, align 4
  %283 = shl i32 %282, 1
  %284 = or disjoint i32 %283, 1
  store i32 %284, ptr %9, align 4
  %285 = load i64, ptr %6, align 8
  %286 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %285
  %287 = load i32, ptr %286, align 4
  %288 = zext i32 %287 to i64
  %289 = load i64, ptr %8, align 8
  %290 = and i64 %289, %288
  %.not13 = icmp eq i64 %290, 0
  br i1 %.not13, label %294, label %291

291:                                              ; preds = %281
  %292 = load i32, ptr %9, align 4
  %293 = add i32 %292, 1
  store i32 %293, ptr %9, align 4
  br label %294

294:                                              ; preds = %291, %281
  %295 = load i64, ptr %8, align 8
  %296 = lshr i64 %295, 1
  store i64 %296, ptr %8, align 8
  %297 = load i64, ptr %5, align 8
  %298 = add i64 %297, 1
  br label %275, !llvm.loop !17

299:                                              ; preds = %275
  %300 = load i32, ptr %9, align 4
  %301 = load i64, ptr %6, align 8
  %302 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %301
  store i32 %300, ptr %302, align 4
  br label %303

303:                                              ; preds = %255, %299
  %304 = load i64, ptr %6, align 8
  %305 = add i64 %304, 1
  br label %253, !llvm.loop !18

306:                                              ; preds = %253, %.critedge
  %storemerge6 = phi i64 [ %341, %.critedge ], [ 1, %253 ]
  store i64 %storemerge6, ptr %5, align 8
  %307 = icmp ult i64 %storemerge6, 256
  br i1 %307, label %308, label %342

308:                                              ; preds = %306
  %309 = load i64, ptr %5, align 8
  %310 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %309
  %311 = load i32, ptr %310, align 4
  store i32 %311, ptr %10, align 4
  %312 = getelementptr inbounds nuw i8, ptr %30, i64 %309
  %313 = load i8, ptr %312, align 1
  store i8 %313, ptr %11, align 1
  %314 = load i64, ptr %5, align 8
  br label %315

315:                                              ; preds = %323, %308
  %storemerge9 = phi i64 [ %314, %308 ], [ %334, %323 ]
  store i64 %storemerge9, ptr %6, align 8
  %.not10 = icmp eq i64 %storemerge9, 0
  br i1 %.not10, label %.critedge, label %316

316:                                              ; preds = %315
  %317 = load i64, ptr %6, align 8
  %318 = getelementptr [4 x i8], ptr %29, i64 %317
  %319 = getelementptr i8, ptr %318, i64 -4
  %320 = load i32, ptr %319, align 4
  %321 = load i32, ptr %10, align 4
  %322 = icmp ugt i32 %320, %321
  br i1 %322, label %323, label %.critedge

323:                                              ; preds = %316
  %324 = load i64, ptr %6, align 8
  %325 = getelementptr [4 x i8], ptr %29, i64 %324
  %326 = getelementptr i8, ptr %325, i64 -4
  %327 = load i32, ptr %326, align 4
  %328 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %324
  store i32 %327, ptr %328, align 4
  %329 = getelementptr i8, ptr %30, i64 %324
  %330 = getelementptr i8, ptr %329, i64 -1
  %331 = load i8, ptr %330, align 1
  %332 = load i64, ptr %6, align 8
  %333 = getelementptr inbounds nuw i8, ptr %30, i64 %332
  store i8 %331, ptr %333, align 1
  %334 = add i64 %332, -1
  br label %315, !llvm.loop !19

.critedge:                                        ; preds = %315, %316
  %335 = load i32, ptr %10, align 4
  %336 = load i64, ptr %6, align 8
  %337 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %336
  store i32 %335, ptr %337, align 4
  %338 = load i8, ptr %11, align 1
  %339 = getelementptr inbounds nuw i8, ptr %30, i64 %336
  store i8 %338, ptr %339, align 1
  %340 = load i64, ptr %5, align 8
  %341 = add i64 %340, 1
  br label %306, !llvm.loop !20

342:                                              ; preds = %306, %346
  %storemerge7 = phi i64 [ %348, %346 ], [ 0, %306 ]
  store i64 %storemerge7, ptr %6, align 8
  %343 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %storemerge7
  %344 = load i32, ptr %343, align 4
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %349

346:                                              ; preds = %342
  %347 = load i64, ptr %6, align 8
  %348 = add i64 %347, 1
  br label %342, !llvm.loop !21

349:                                              ; preds = %342
  store i32 0, ptr %9, align 4
  %350 = load i64, ptr %6, align 8
  store i64 %350, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  %351 = load ptr, ptr %14, align 8
  store ptr %351, ptr %12, align 8
  %352 = load ptr, ptr %3, align 8
  store ptr %352, ptr %13, align 8
  br label %353

353:                                              ; preds = %403, %349
  %354 = load i64, ptr %7, align 8
  %355 = load i64, ptr %4, align 8
  %356 = icmp ult i64 %354, %355
  br i1 %356, label %357, label %404

357:                                              ; preds = %353
  %358 = load i32, ptr %9, align 4
  %359 = shl i32 %358, 1
  %360 = or disjoint i32 %359, 1
  store i32 %360, ptr %9, align 4
  %361 = load ptr, ptr %12, align 8
  %362 = load i8, ptr %361, align 1
  %363 = zext i8 %362 to i64
  %364 = load i64, ptr %8, align 8
  %365 = and i64 %364, %363
  %.not8 = icmp eq i64 %365, 0
  br i1 %.not8, label %369, label %366

366:                                              ; preds = %357
  %367 = load i32, ptr %9, align 4
  %368 = add i32 %367, 1
  store i32 %368, ptr %9, align 4
  br label %369

369:                                              ; preds = %366, %357
  br label %370

370:                                              ; preds = %376, %369
  %371 = load i64, ptr %5, align 8
  %372 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %371
  %373 = load i32, ptr %372, align 4
  %374 = load i32, ptr %9, align 4
  %375 = icmp ult i32 %373, %374
  br i1 %375, label %376, label %379

376:                                              ; preds = %370
  %377 = load i64, ptr %5, align 8
  %378 = add i64 %377, 1
  store i64 %378, ptr %5, align 8
  br label %370, !llvm.loop !22

379:                                              ; preds = %370
  %380 = load i32, ptr %9, align 4
  %381 = load i64, ptr %5, align 8
  %382 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %381
  %383 = load i32, ptr %382, align 4
  %384 = icmp eq i32 %380, %383
  br i1 %384, label %385, label %394

385:                                              ; preds = %379
  %386 = load i64, ptr %5, align 8
  %387 = getelementptr inbounds nuw i8, ptr %30, i64 %386
  %388 = load i8, ptr %387, align 1
  %389 = load ptr, ptr %13, align 8
  store i8 %388, ptr %389, align 1
  %390 = getelementptr inbounds nuw i8, ptr %389, i64 1
  store ptr %390, ptr %13, align 8
  %391 = load i64, ptr %7, align 8
  %392 = add i64 %391, 1
  store i64 %392, ptr %7, align 8
  store i32 0, ptr %9, align 4
  %393 = load i64, ptr %6, align 8
  store i64 %393, ptr %5, align 8
  br label %394

394:                                              ; preds = %385, %379
  %395 = load i64, ptr %8, align 8
  %396 = icmp ugt i64 %395, 1
  br i1 %396, label %397, label %400

397:                                              ; preds = %394
  %398 = load i64, ptr %8, align 8
  %399 = lshr i64 %398, 1
  store i64 %399, ptr %8, align 8
  br label %403

400:                                              ; preds = %394
  store i64 128, ptr %8, align 8
  %401 = load ptr, ptr %12, align 8
  %402 = getelementptr inbounds nuw i8, ptr %401, i64 1
  store ptr %402, ptr %12, align 8
  br label %403

403:                                              ; preds = %400, %397
  br label %353, !llvm.loop !23

404:                                              ; preds = %353
  %405 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %405) #8
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
  %11 = sext i32 %3 to i64
  %12 = getelementptr [8 x i8], ptr %1, i64 %11
  %13 = getelementptr i8, ptr %12, i64 -8
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, ptr %10, align 4
  br label %16

16:                                               ; preds = %62, %4
  %17 = load i32, ptr %8, align 4
  %18 = load i32, ptr %7, align 4
  %19 = sdiv i32 %18, 2
  %.not = icmp sgt i32 %17, %19
  br i1 %.not, label %74, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %8, align 4
  %22 = shl nsw i32 %21, 1
  store i32 %22, ptr %9, align 4
  %23 = load i32, ptr %7, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %20
  %26 = load ptr, ptr %5, align 8
  %27 = load ptr, ptr %6, align 8
  %28 = load i32, ptr %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr [8 x i8], ptr %27, i64 %29
  %31 = getelementptr i8, ptr %30, i64 -8
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr inbounds nuw [8 x i8], ptr %26, i64 %32
  %34 = load i64, ptr %33, align 8
  %35 = load ptr, ptr %5, align 8
  %36 = load ptr, ptr %6, align 8
  %37 = load i32, ptr %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [8 x i8], ptr %36, i64 %38
  %40 = load i64, ptr %39, align 8
  %41 = getelementptr inbounds nuw [8 x i8], ptr %35, i64 %40
  %42 = load i64, ptr %41, align 8
  %43 = icmp ugt i64 %34, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %25
  %45 = load i32, ptr %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %9, align 4
  br label %47

47:                                               ; preds = %44, %25, %20
  %48 = load ptr, ptr %5, align 8
  %49 = load i32, ptr %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [8 x i8], ptr %48, i64 %50
  %52 = load i64, ptr %51, align 8
  %53 = load ptr, ptr %6, align 8
  %54 = load i32, ptr %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr [8 x i8], ptr %53, i64 %55
  %57 = getelementptr i8, ptr %56, i64 -8
  %58 = load i64, ptr %57, align 8
  %59 = getelementptr inbounds nuw [8 x i8], ptr %48, i64 %58
  %60 = load i64, ptr %59, align 8
  %61 = icmp ult i64 %52, %60
  br i1 %61, label %74, label %62

62:                                               ; preds = %47
  %63 = load ptr, ptr %6, align 8
  %64 = load i32, ptr %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr [8 x i8], ptr %63, i64 %65
  %67 = getelementptr i8, ptr %66, i64 -8
  %68 = load i64, ptr %67, align 8
  %69 = load i32, ptr %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr [8 x i8], ptr %63, i64 %70
  %72 = getelementptr i8, ptr %71, i64 -8
  store i64 %68, ptr %72, align 8
  %73 = load i32, ptr %9, align 4
  store i32 %73, ptr %8, align 4
  br label %16, !llvm.loop !24

74:                                               ; preds = %47, %16
  %75 = load i32, ptr %10, align 4
  %76 = sext i32 %75 to i64
  %77 = load ptr, ptr %6, align 8
  %78 = load i32, ptr %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr [8 x i8], ptr %77, i64 %79
  %81 = getelementptr i8, ptr %80, i64 -8
  store i64 %76, ptr %81, align 8
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
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 8
  %8 = alloca double, align 8
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store i8 0, ptr %6, align 1
  %9 = icmp sgt i32 %0, 1
  br i1 %9, label %10, label %22

10:                                               ; preds = %2, %19
  %storemerge = phi i32 [ %21, %19 ], [ 1, %2 ]
  store i32 %storemerge, ptr %5, align 4
  %11 = load i32, ptr %3, align 4
  %12 = icmp slt i32 %storemerge, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %16 = load ptr, ptr %15, align 8
  %17 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(4) @.str.4) #8
  %.not = icmp eq i32 %17, 0
  br i1 %.not, label %18, label %19

18:                                               ; preds = %13
  store i8 1, ptr %6, align 1
  br label %22

19:                                               ; preds = %13
  %20 = load i32, ptr %5, align 4
  %21 = add nsw i32 %20, 1
  br label %10, !llvm.loop !25

22:                                               ; preds = %10, %18, %2
  %23 = call ptr @generate_test_data(i64 noundef 10000000)
  store ptr %23, ptr %7, align 8
  br label %24

24:                                               ; preds = %26, %22
  %storemerge1 = phi i32 [ 0, %22 ], [ %29, %26 ]
  store i32 %storemerge1, ptr %5, align 4
  %25 = icmp slt i32 %storemerge1, 30
  br i1 %25, label %26, label %30

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8
  call void @compdecomp(ptr noundef %27, i64 noundef 10000000)
  %28 = load i32, ptr %5, align 4
  %29 = add nsw i32 %28, 1
  br label %24, !llvm.loop !26

30:                                               ; preds = %24
  store double 0.000000e+00, ptr %8, align 8
  %31 = load ptr, ptr %7, align 8
  call void @free(ptr noundef %31) #8
  %32 = load i8, ptr %6, align 1
  %.not2 = icmp eq i8 %32, 0
  br i1 %.not2, label %37, label %33

33:                                               ; preds = %30
  %34 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %35 = load double, ptr %8, align 8
  %36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str.5, double noundef %35) #8
  br label %41

37:                                               ; preds = %30
  %38 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %39 = load double, ptr %8, align 8
  %40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef nonnull @.str.6, double noundef %39) #8
  br label %41

41:                                               ; preds = %37, %33
  %42 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %43 = call i32 @fflush(ptr noundef %42) #8
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

declare dso_local i32 @fflush(ptr noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal i64 @random4() #0 {
  %1 = load i32, ptr @seed, align 4
  %2 = xor i32 %1, 123459876
  store i32 %2, ptr @seed, align 4
  %3 = sdiv i32 %2, 127773
  %.neg = mul i32 %3, -127773
  %4 = add i32 %.neg, %2
  %5 = mul nsw i32 %4, 16807
  %.neg1 = mul nsw i32 %3, -2836
  %6 = add i32 %.neg1, %5
  store i32 %6, ptr @seed, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, ptr @seed, align 4
  %10 = add nsw i32 %9, 2147483647
  store i32 %10, ptr @seed, align 4
  br label %11

11:                                               ; preds = %8, %0
  %12 = load i32, ptr @seed, align 4
  %13 = srem i32 %12, 32
  %14 = sext i32 %13 to i64
  %15 = xor i32 %12, 123459876
  store i32 %15, ptr @seed, align 4
  ret i64 %14
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) #6

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }
attributes #9 = { cold noreturn nounwind }

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
