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
  %storemerge2 = phi i64 [ %65, %64 ], [ %72, %67 ]
  store i64 %storemerge2, ptr %5, align 8
  %.not = icmp eq i64 %storemerge2, 0
  br i1 %.not, label %73, label %67

67:                                               ; preds = %66
  %68 = load i64, ptr %7, align 8
  %69 = trunc i64 %68 to i32
  %70 = load i64, ptr %5, align 8
  %71 = trunc i64 %70 to i32
  call void @heap_adjust(ptr noundef nonnull %15, ptr noundef nonnull %16, i32 noundef %69, i32 noundef %71)
  %72 = add i64 %70, -1
  br label %66, !llvm.loop !11

73:                                               ; preds = %66, %76
  %74 = load i64, ptr %7, align 8
  %75 = icmp ugt i64 %74, 1
  br i1 %75, label %76, label %105

76:                                               ; preds = %73
  %77 = load i64, ptr %7, align 8
  %78 = add i64 %77, -1
  store i64 %78, ptr %7, align 8
  %79 = load i64, ptr %16, align 16
  store i64 %79, ptr %20, align 8
  %80 = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %78
  %81 = load i64, ptr %80, align 8
  store i64 %81, ptr %16, align 16
  %82 = trunc i64 %78 to i32
  call void @heap_adjust(ptr noundef nonnull %15, ptr noundef nonnull %16, i32 noundef %82, i32 noundef 1)
  %83 = load i64, ptr %16, align 16
  %84 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %83
  %85 = load i64, ptr %84, align 8
  %86 = load i64, ptr %20, align 8
  %87 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %86
  %88 = load i64, ptr %87, align 8
  %89 = add i64 %85, %88
  %90 = load i64, ptr %7, align 8
  %91 = getelementptr [8 x i8], ptr %15, i64 %90
  %92 = getelementptr i8, ptr %91, i64 2048
  store i64 %89, ptr %92, align 8
  %93 = trunc i64 %90 to i32
  %94 = add i32 %93, 256
  %95 = load i64, ptr %20, align 8
  %96 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %95
  store i32 %94, ptr %96, align 4
  %97 = load i64, ptr %7, align 8
  %98 = trunc i64 %97 to i32
  %99 = sub i32 -256, %98
  %100 = load i64, ptr %16, align 16
  %101 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %100
  store i32 %99, ptr %101, align 4
  %102 = add i64 %97, 256
  store i64 %102, ptr %16, align 16
  %103 = load i64, ptr %7, align 8
  %104 = trunc i64 %103 to i32
  call void @heap_adjust(ptr noundef nonnull %15, ptr noundef nonnull %16, i32 noundef %104, i32 noundef 1)
  br label %73, !llvm.loop !12

105:                                              ; preds = %73
  %106 = load i64, ptr %7, align 8
  %107 = getelementptr [4 x i8], ptr %17, i64 %106
  %108 = getelementptr i8, ptr %107, i64 1024
  store i32 0, ptr %108, align 4
  store i64 0, ptr %23, align 8
  store i64 0, ptr %24, align 8
  br label %109

109:                                              ; preds = %162, %105
  %storemerge3 = phi i64 [ 0, %105 ], [ %164, %162 ]
  store i64 %storemerge3, ptr %21, align 8
  %110 = icmp ult i64 %storemerge3, 256
  br i1 %110, label %111, label %165

111:                                              ; preds = %109
  %112 = load i64, ptr %21, align 8
  %113 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %112
  %114 = load i64, ptr %113, align 8
  %.not17 = icmp eq i64 %114, 0
  br i1 %.not17, label %115, label %119

115:                                              ; preds = %111
  %116 = load i64, ptr %21, align 8
  %117 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %116
  store i32 0, ptr %117, align 4
  %118 = getelementptr inbounds nuw i8, ptr %19, i64 %116
  store i8 0, ptr %118, align 1
  br label %162

119:                                              ; preds = %111
  store i64 0, ptr %5, align 8
  store i64 1, ptr %6, align 8
  store i64 0, ptr %22, align 8
  %120 = load i64, ptr %21, align 8
  %121 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %120
  %122 = load i32, ptr %121, align 4
  store i32 %122, ptr %25, align 4
  br label %123

123:                                              ; preds = %134, %119
  %124 = load i32, ptr %25, align 4
  %.not18 = icmp eq i32 %124, 0
  br i1 %.not18, label %143, label %125

125:                                              ; preds = %123
  %126 = load i32, ptr %25, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load i64, ptr %6, align 8
  %130 = load i64, ptr %22, align 8
  %131 = add i64 %130, %129
  store i64 %131, ptr %22, align 8
  %132 = load i32, ptr %25, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, ptr %25, align 4
  br label %134

134:                                              ; preds = %128, %125
  %135 = load i32, ptr %25, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [4 x i8], ptr %17, i64 %136
  %138 = load i32, ptr %137, align 4
  store i32 %138, ptr %25, align 4
  %139 = load i64, ptr %6, align 8
  %140 = shl i64 %139, 1
  store i64 %140, ptr %6, align 8
  %141 = load i64, ptr %5, align 8
  %142 = add i64 %141, 1
  store i64 %142, ptr %5, align 8
  br label %123, !llvm.loop !13

143:                                              ; preds = %123
  %144 = load i64, ptr %22, align 8
  %145 = trunc i64 %144 to i32
  %146 = load i64, ptr %21, align 8
  %147 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %146
  store i32 %145, ptr %147, align 4
  %148 = load i64, ptr %5, align 8
  %149 = trunc i64 %148 to i8
  %150 = getelementptr inbounds nuw i8, ptr %19, i64 %146
  store i8 %149, ptr %150, align 1
  %151 = load i64, ptr %22, align 8
  %152 = load i64, ptr %23, align 8
  %153 = icmp ugt i64 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %143
  %155 = load i64, ptr %22, align 8
  store i64 %155, ptr %23, align 8
  br label %156

156:                                              ; preds = %154, %143
  %157 = load i64, ptr %5, align 8
  %158 = load i64, ptr %24, align 8
  %159 = icmp ugt i64 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = load i64, ptr %5, align 8
  store i64 %161, ptr %24, align 8
  br label %162

162:                                              ; preds = %115, %160, %156
  %163 = load i64, ptr %21, align 8
  %164 = add i64 %163, 1
  br label %109, !llvm.loop !14

165:                                              ; preds = %109
  %166 = load i64, ptr %24, align 8
  %167 = icmp ugt i64 %166, 32
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %170 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %169)
  call void @exit(i32 noundef 1) #9
  unreachable

171:                                              ; preds = %165
  store i64 0, ptr %26, align 8
  store i8 0, ptr %27, align 1
  store i32 -1, ptr %28, align 4
  %172 = load ptr, ptr %3, align 8
  store ptr %172, ptr %13, align 8
  %173 = load i64, ptr %23, align 8
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %177 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %176)
  call void @exit(i32 noundef 1) #9
  unreachable

178:                                              ; preds = %171
  br label %179

179:                                              ; preds = %237, %178
  %storemerge4 = phi i64 [ 0, %178 ], [ %241, %237 ]
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

306:                                              ; preds = %253
  br label %307

307:                                              ; preds = %.critedge, %306
  %storemerge6 = phi i64 [ 1, %306 ], [ %342, %.critedge ]
  store i64 %storemerge6, ptr %5, align 8
  %308 = icmp ult i64 %storemerge6, 256
  br i1 %308, label %309, label %343

309:                                              ; preds = %307
  %310 = load i64, ptr %5, align 8
  %311 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %310
  %312 = load i32, ptr %311, align 4
  store i32 %312, ptr %10, align 4
  %313 = getelementptr inbounds nuw i8, ptr %30, i64 %310
  %314 = load i8, ptr %313, align 1
  store i8 %314, ptr %11, align 1
  %315 = load i64, ptr %5, align 8
  br label %316

316:                                              ; preds = %324, %309
  %storemerge9 = phi i64 [ %315, %309 ], [ %335, %324 ]
  store i64 %storemerge9, ptr %6, align 8
  %.not10 = icmp eq i64 %storemerge9, 0
  br i1 %.not10, label %.critedge, label %317

317:                                              ; preds = %316
  %318 = load i64, ptr %6, align 8
  %319 = getelementptr [4 x i8], ptr %29, i64 %318
  %320 = getelementptr i8, ptr %319, i64 -4
  %321 = load i32, ptr %320, align 4
  %322 = load i32, ptr %10, align 4
  %323 = icmp ugt i32 %321, %322
  br i1 %323, label %324, label %.critedge

324:                                              ; preds = %317
  %325 = load i64, ptr %6, align 8
  %326 = getelementptr [4 x i8], ptr %29, i64 %325
  %327 = getelementptr i8, ptr %326, i64 -4
  %328 = load i32, ptr %327, align 4
  %329 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %325
  store i32 %328, ptr %329, align 4
  %330 = getelementptr i8, ptr %30, i64 %325
  %331 = getelementptr i8, ptr %330, i64 -1
  %332 = load i8, ptr %331, align 1
  %333 = load i64, ptr %6, align 8
  %334 = getelementptr inbounds nuw i8, ptr %30, i64 %333
  store i8 %332, ptr %334, align 1
  %335 = add i64 %333, -1
  br label %316, !llvm.loop !19

.critedge:                                        ; preds = %316, %317
  %336 = load i32, ptr %10, align 4
  %337 = load i64, ptr %6, align 8
  %338 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %337
  store i32 %336, ptr %338, align 4
  %339 = load i8, ptr %11, align 1
  %340 = getelementptr inbounds nuw i8, ptr %30, i64 %337
  store i8 %339, ptr %340, align 1
  %341 = load i64, ptr %5, align 8
  %342 = add i64 %341, 1
  br label %307, !llvm.loop !20

343:                                              ; preds = %307
  br label %344

344:                                              ; preds = %348, %343
  %storemerge7 = phi i64 [ 0, %343 ], [ %350, %348 ]
  store i64 %storemerge7, ptr %6, align 8
  %345 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %storemerge7
  %346 = load i32, ptr %345, align 4
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %351

348:                                              ; preds = %344
  %349 = load i64, ptr %6, align 8
  %350 = add i64 %349, 1
  br label %344, !llvm.loop !21

351:                                              ; preds = %344
  store i32 0, ptr %9, align 4
  %352 = load i64, ptr %6, align 8
  store i64 %352, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  %353 = load ptr, ptr %14, align 8
  store ptr %353, ptr %12, align 8
  %354 = load ptr, ptr %3, align 8
  store ptr %354, ptr %13, align 8
  br label %355

355:                                              ; preds = %405, %351
  %356 = load i64, ptr %7, align 8
  %357 = load i64, ptr %4, align 8
  %358 = icmp ult i64 %356, %357
  br i1 %358, label %359, label %406

359:                                              ; preds = %355
  %360 = load i32, ptr %9, align 4
  %361 = shl i32 %360, 1
  %362 = or disjoint i32 %361, 1
  store i32 %362, ptr %9, align 4
  %363 = load ptr, ptr %12, align 8
  %364 = load i8, ptr %363, align 1
  %365 = zext i8 %364 to i64
  %366 = load i64, ptr %8, align 8
  %367 = and i64 %366, %365
  %.not8 = icmp eq i64 %367, 0
  br i1 %.not8, label %371, label %368

368:                                              ; preds = %359
  %369 = load i32, ptr %9, align 4
  %370 = add i32 %369, 1
  store i32 %370, ptr %9, align 4
  br label %371

371:                                              ; preds = %368, %359
  br label %372

372:                                              ; preds = %378, %371
  %373 = load i64, ptr %5, align 8
  %374 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %373
  %375 = load i32, ptr %374, align 4
  %376 = load i32, ptr %9, align 4
  %377 = icmp ult i32 %375, %376
  br i1 %377, label %378, label %381

378:                                              ; preds = %372
  %379 = load i64, ptr %5, align 8
  %380 = add i64 %379, 1
  store i64 %380, ptr %5, align 8
  br label %372, !llvm.loop !22

381:                                              ; preds = %372
  %382 = load i32, ptr %9, align 4
  %383 = load i64, ptr %5, align 8
  %384 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %383
  %385 = load i32, ptr %384, align 4
  %386 = icmp eq i32 %382, %385
  br i1 %386, label %387, label %396

387:                                              ; preds = %381
  %388 = load i64, ptr %5, align 8
  %389 = getelementptr inbounds nuw i8, ptr %30, i64 %388
  %390 = load i8, ptr %389, align 1
  %391 = load ptr, ptr %13, align 8
  store i8 %390, ptr %391, align 1
  %392 = getelementptr inbounds nuw i8, ptr %391, i64 1
  store ptr %392, ptr %13, align 8
  %393 = load i64, ptr %7, align 8
  %394 = add i64 %393, 1
  store i64 %394, ptr %7, align 8
  store i32 0, ptr %9, align 4
  %395 = load i64, ptr %6, align 8
  store i64 %395, ptr %5, align 8
  br label %396

396:                                              ; preds = %387, %381
  %397 = load i64, ptr %8, align 8
  %398 = icmp ugt i64 %397, 1
  br i1 %398, label %399, label %402

399:                                              ; preds = %396
  %400 = load i64, ptr %8, align 8
  %401 = lshr i64 %400, 1
  store i64 %401, ptr %8, align 8
  br label %405

402:                                              ; preds = %396
  store i64 128, ptr %8, align 8
  %403 = load ptr, ptr %12, align 8
  %404 = getelementptr inbounds nuw i8, ptr %403, i64 1
  store ptr %404, ptr %12, align 8
  br label %405

405:                                              ; preds = %402, %399
  br label %355, !llvm.loop !23

406:                                              ; preds = %355
  %407 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %407) #8
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
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %20, %10
  %storemerge = phi i32 [ 1, %10 ], [ %22, %20 ]
  store i32 %storemerge, ptr %5, align 4
  %12 = load i32, ptr %3, align 4
  %13 = icmp slt i32 %storemerge, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8
  %18 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(4) @.str.4) #8
  %.not = icmp eq i32 %18, 0
  br i1 %.not, label %19, label %20

19:                                               ; preds = %14
  store i8 1, ptr %6, align 1
  br label %23

20:                                               ; preds = %14
  %21 = load i32, ptr %5, align 4
  %22 = add nsw i32 %21, 1
  br label %11, !llvm.loop !25

23:                                               ; preds = %11, %19, %2
  %24 = call ptr @generate_test_data(i64 noundef 10000000)
  store ptr %24, ptr %7, align 8
  br label %25

25:                                               ; preds = %27, %23
  %storemerge1 = phi i32 [ 0, %23 ], [ %30, %27 ]
  store i32 %storemerge1, ptr %5, align 4
  %26 = icmp slt i32 %storemerge1, 30
  br i1 %26, label %27, label %31

27:                                               ; preds = %25
  %28 = load ptr, ptr %7, align 8
  call void @compdecomp(ptr noundef %28, i64 noundef 10000000)
  %29 = load i32, ptr %5, align 4
  %30 = add nsw i32 %29, 1
  br label %25, !llvm.loop !26

31:                                               ; preds = %25
  store double 0.000000e+00, ptr %8, align 8
  %32 = load ptr, ptr %7, align 8
  call void @free(ptr noundef %32) #8
  %33 = load i8, ptr %6, align 1
  %.not2 = icmp eq i8 %33, 0
  br i1 %.not2, label %38, label %34

34:                                               ; preds = %31
  %35 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %36 = load double, ptr %8, align 8
  %37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.5, double noundef %36) #8
  br label %42

38:                                               ; preds = %31
  %39 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %40 = load double, ptr %8, align 8
  %41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef nonnull @.str.6, double noundef %40) #8
  br label %42

42:                                               ; preds = %38, %34
  %43 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %44 = call i32 @fflush(ptr noundef %43) #8
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
