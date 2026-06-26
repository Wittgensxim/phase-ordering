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

8:                                                ; preds = %19, %1
  %storemerge = phi i32 [ 0, %1 ], [ %21, %19 ]
  store i32 %storemerge, ptr %6, align 4
  %9 = sext i32 %storemerge to i64
  %10 = load i64, ptr %2, align 8
  %11 = icmp ugt i64 %10, %9
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = load ptr, ptr %3, align 8
  %14 = call i64 @random4()
  %15 = getelementptr inbounds nuw i8, ptr %13, i64 %14
  %16 = load i8, ptr %15, align 1
  %17 = load ptr, ptr %5, align 8
  store i8 %16, ptr %17, align 1
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 1
  store ptr %18, ptr %5, align 8
  br label %19

19:                                               ; preds = %12
  %20 = load i32, ptr %6, align 4
  %21 = add nsw i32 %20, 1
  br label %8, !llvm.loop !7

22:                                               ; preds = %8
  %23 = load ptr, ptr %4, align 8
  ret ptr %23
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

35:                                               ; preds = %47, %2
  %storemerge = phi i64 [ 0, %2 ], [ %49, %47 ]
  store i64 %storemerge, ptr %5, align 8
  %36 = load i64, ptr %4, align 8
  %37 = icmp ult i64 %storemerge, %36
  br i1 %37, label %38, label %50

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
  br label %47

47:                                               ; preds = %38
  %48 = load i64, ptr %5, align 8
  %49 = add i64 %48, 1
  br label %35, !llvm.loop !9

50:                                               ; preds = %35
  store i64 0, ptr %7, align 8
  br label %51

51:                                               ; preds = %61, %50
  %storemerge1 = phi i64 [ 0, %50 ], [ %63, %61 ]
  store i64 %storemerge1, ptr %5, align 8
  %52 = icmp ult i64 %storemerge1, 256
  br i1 %52, label %53, label %64

53:                                               ; preds = %51
  %54 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %storemerge1
  %55 = load i64, ptr %54, align 8
  %.not19 = icmp eq i64 %55, 0
  br i1 %.not19, label %60, label %56

56:                                               ; preds = %53
  %57 = load i64, ptr %7, align 8
  %58 = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %57
  store i64 %storemerge1, ptr %58, align 8
  %59 = add i64 %57, 1
  store i64 %59, ptr %7, align 8
  br label %60

60:                                               ; preds = %56, %53
  br label %61

61:                                               ; preds = %60
  %62 = load i64, ptr %5, align 8
  %63 = add i64 %62, 1
  br label %51, !llvm.loop !10

64:                                               ; preds = %51
  %65 = load i64, ptr %7, align 8
  br label %66

66:                                               ; preds = %71, %64
  %storemerge2 = phi i64 [ %65, %64 ], [ %73, %71 ]
  store i64 %storemerge2, ptr %5, align 8
  %.not = icmp eq i64 %storemerge2, 0
  br i1 %.not, label %74, label %67

67:                                               ; preds = %66
  %68 = load i64, ptr %7, align 8
  %69 = trunc i64 %68 to i32
  %70 = trunc i64 %storemerge2 to i32
  call void @heap_adjust(ptr noundef nonnull %15, ptr noundef nonnull %16, i32 noundef %69, i32 noundef %70)
  br label %71

71:                                               ; preds = %67
  %72 = load i64, ptr %5, align 8
  %73 = add i64 %72, -1
  br label %66, !llvm.loop !11

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %78, %74
  %76 = load i64, ptr %7, align 8
  %77 = icmp ugt i64 %76, 1
  br i1 %77, label %78, label %106

78:                                               ; preds = %75
  %79 = add i64 %76, -1
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
  br label %75, !llvm.loop !12

106:                                              ; preds = %75
  %107 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %76
  %108 = getelementptr inbounds nuw i8, ptr %107, i64 1024
  store i32 0, ptr %108, align 4
  store i64 0, ptr %23, align 8
  store i64 0, ptr %24, align 8
  br label %109

109:                                              ; preds = %160, %106
  %storemerge3 = phi i64 [ 0, %106 ], [ %162, %160 ]
  store i64 %storemerge3, ptr %21, align 8
  %110 = icmp ult i64 %storemerge3, 256
  br i1 %110, label %111, label %163

111:                                              ; preds = %109
  %112 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %storemerge3
  %113 = load i64, ptr %112, align 8
  %.not17 = icmp eq i64 %113, 0
  br i1 %.not17, label %114, label %118

114:                                              ; preds = %111
  %115 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %storemerge3
  store i32 0, ptr %115, align 4
  %116 = load i64, ptr %21, align 8
  %117 = getelementptr inbounds nuw i8, ptr %19, i64 %116
  store i8 0, ptr %117, align 1
  br label %159

118:                                              ; preds = %111
  store i64 0, ptr %5, align 8
  store i64 1, ptr %6, align 8
  store i64 0, ptr %22, align 8
  %119 = load i64, ptr %21, align 8
  %120 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %119
  %121 = load i32, ptr %120, align 4
  store i32 %121, ptr %25, align 4
  br label %122

122:                                              ; preds = %132, %118
  %123 = load i32, ptr %25, align 4
  %.not18 = icmp eq i32 %123, 0
  br i1 %.not18, label %141, label %124

124:                                              ; preds = %122
  %125 = icmp slt i32 %123, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %124
  %127 = load i64, ptr %6, align 8
  %128 = load i64, ptr %22, align 8
  %129 = add i64 %128, %127
  store i64 %129, ptr %22, align 8
  %130 = load i32, ptr %25, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, ptr %25, align 4
  br label %132

132:                                              ; preds = %126, %124
  %133 = load i32, ptr %25, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [4 x i8], ptr %17, i64 %134
  %136 = load i32, ptr %135, align 4
  store i32 %136, ptr %25, align 4
  %137 = load i64, ptr %6, align 8
  %138 = shl i64 %137, 1
  store i64 %138, ptr %6, align 8
  %139 = load i64, ptr %5, align 8
  %140 = add i64 %139, 1
  store i64 %140, ptr %5, align 8
  br label %122, !llvm.loop !13

141:                                              ; preds = %122
  %142 = load i64, ptr %22, align 8
  %143 = trunc i64 %142 to i32
  %144 = load i64, ptr %21, align 8
  %145 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %144
  store i32 %143, ptr %145, align 4
  %146 = load i64, ptr %5, align 8
  %147 = trunc i64 %146 to i8
  %148 = getelementptr inbounds nuw i8, ptr %19, i64 %144
  store i8 %147, ptr %148, align 1
  %149 = load i64, ptr %22, align 8
  %150 = load i64, ptr %23, align 8
  %151 = icmp ugt i64 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %141
  store i64 %149, ptr %23, align 8
  br label %153

153:                                              ; preds = %152, %141
  %154 = load i64, ptr %5, align 8
  %155 = load i64, ptr %24, align 8
  %156 = icmp ugt i64 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  store i64 %154, ptr %24, align 8
  br label %158

158:                                              ; preds = %157, %153
  br label %159

159:                                              ; preds = %158, %114
  br label %160

160:                                              ; preds = %159
  %161 = load i64, ptr %21, align 8
  %162 = add i64 %161, 1
  br label %109, !llvm.loop !14

163:                                              ; preds = %109
  %164 = load i64, ptr %24, align 8
  %165 = icmp ugt i64 %164, 32
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %168 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %167)
  call void @exit(i32 noundef 1) #9
  unreachable

169:                                              ; preds = %163
  store i64 0, ptr %26, align 8
  store i8 0, ptr %27, align 1
  store i32 -1, ptr %28, align 4
  %170 = load ptr, ptr %3, align 8
  store ptr %170, ptr %13, align 8
  %171 = load i64, ptr %23, align 8
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %169
  %174 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %175 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %174)
  call void @exit(i32 noundef 1) #9
  unreachable

176:                                              ; preds = %169
  br label %177

177:                                              ; preds = %237, %176
  %storemerge4 = phi i64 [ 0, %176 ], [ %239, %237 ]
  store i64 %storemerge4, ptr %6, align 8
  %178 = load i64, ptr %4, align 8
  %179 = icmp ult i64 %storemerge4, %178
  br i1 %179, label %180, label %240

180:                                              ; preds = %177
  %181 = load ptr, ptr %13, align 8
  %182 = load i8, ptr %181, align 1
  %183 = zext i8 %182 to i64
  %184 = getelementptr inbounds nuw i8, ptr %19, i64 %183
  %185 = load i8, ptr %184, align 1
  %186 = zext i8 %185 to i32
  %187 = add nsw i32 %186, -1
  %188 = shl nuw i32 1, %187
  %189 = sext i32 %188 to i64
  store i64 %189, ptr %8, align 8
  br label %190

190:                                              ; preds = %232, %180
  %storemerge14 = phi i64 [ 0, %180 ], [ %234, %232 ]
  store i64 %storemerge14, ptr %5, align 8
  %191 = load ptr, ptr %13, align 8
  %192 = load i8, ptr %191, align 1
  %193 = zext i8 %192 to i64
  %194 = getelementptr inbounds nuw i8, ptr %19, i64 %193
  %195 = load i8, ptr %194, align 1
  %196 = zext i8 %195 to i64
  %197 = icmp ult i64 %storemerge14, %196
  br i1 %197, label %198, label %235

198:                                              ; preds = %190
  %199 = load i32, ptr %28, align 4
  %200 = icmp eq i32 %199, 7
  br i1 %200, label %201, label %213

201:                                              ; preds = %198
  %202 = load i8, ptr %27, align 1
  %203 = load ptr, ptr %14, align 8
  %204 = load i64, ptr %26, align 8
  %205 = getelementptr inbounds nuw i8, ptr %203, i64 %204
  store i8 %202, ptr %205, align 1
  %206 = add i64 %204, 1
  store i64 %206, ptr %26, align 8
  %207 = load i64, ptr %4, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %212

209:                                              ; preds = %201
  %210 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %211 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %210)
  call void @exit(i32 noundef 1) #9
  unreachable

212:                                              ; preds = %201
  store i32 0, ptr %28, align 4
  br label %217

213:                                              ; preds = %198
  %214 = add nsw i32 %199, 1
  store i32 %214, ptr %28, align 4
  %215 = load i8, ptr %27, align 1
  %216 = shl i8 %215, 1
  br label %217

217:                                              ; preds = %213, %212
  %storemerge15 = phi i8 [ %216, %213 ], [ 0, %212 ]
  store i8 %storemerge15, ptr %27, align 1
  %218 = load ptr, ptr %13, align 8
  %219 = load i8, ptr %218, align 1
  %220 = zext i8 %219 to i64
  %221 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %220
  %222 = load i32, ptr %221, align 4
  %223 = zext i32 %222 to i64
  %224 = load i64, ptr %8, align 8
  %225 = and i64 %224, %223
  %.not16 = icmp eq i64 %225, 0
  br i1 %.not16, label %229, label %226

226:                                              ; preds = %217
  %227 = load i8, ptr %27, align 1
  %228 = or i8 %227, 1
  store i8 %228, ptr %27, align 1
  br label %229

229:                                              ; preds = %226, %217
  %230 = load i64, ptr %8, align 8
  %231 = lshr i64 %230, 1
  store i64 %231, ptr %8, align 8
  br label %232

232:                                              ; preds = %229
  %233 = load i64, ptr %5, align 8
  %234 = add i64 %233, 1
  br label %190, !llvm.loop !15

235:                                              ; preds = %190
  %236 = getelementptr inbounds nuw i8, ptr %191, i64 1
  store ptr %236, ptr %13, align 8
  br label %237

237:                                              ; preds = %235
  %238 = load i64, ptr %6, align 8
  %239 = add i64 %238, 1
  br label %177, !llvm.loop !16

240:                                              ; preds = %177
  %241 = load i32, ptr %28, align 4
  %242 = sub nsw i32 7, %241
  %243 = load i8, ptr %27, align 1
  %244 = zext i8 %243 to i32
  %245 = shl i32 %244, %242
  %246 = trunc i32 %245 to i8
  store i8 %246, ptr %27, align 1
  %247 = load ptr, ptr %14, align 8
  %248 = load i64, ptr %26, align 8
  %249 = getelementptr inbounds nuw i8, ptr %247, i64 %248
  store i8 %246, ptr %249, align 1
  %250 = add i64 %248, 1
  store i64 %250, ptr %26, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %29, i8 0, i64 1024, i1 false)
  store ptr %30, ptr %31, align 8
  br label %251

251:                                              ; preds = %300, %240
  %storemerge5 = phi i64 [ 0, %240 ], [ %302, %300 ]
  store i64 %storemerge5, ptr %6, align 8
  %252 = icmp ult i64 %storemerge5, 256
  br i1 %252, label %253, label %303

253:                                              ; preds = %251
  %254 = trunc nuw i64 %storemerge5 to i8
  %255 = load ptr, ptr %31, align 8
  store i8 %254, ptr %255, align 1
  %256 = getelementptr inbounds nuw i8, ptr %255, i64 1
  store ptr %256, ptr %31, align 8
  %257 = load i64, ptr %6, align 8
  %258 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %257
  %259 = load i32, ptr %258, align 4
  %260 = getelementptr inbounds nuw i8, ptr %19, i64 %257
  %261 = load i8, ptr %260, align 1
  %262 = zext i8 %261 to i32
  %263 = or i32 %259, %262
  %.not11 = icmp eq i32 %263, 0
  br i1 %.not11, label %299, label %264

264:                                              ; preds = %253
  store i32 0, ptr %9, align 4
  %265 = load i64, ptr %6, align 8
  %266 = getelementptr inbounds nuw i8, ptr %19, i64 %265
  %267 = load i8, ptr %266, align 1
  %268 = zext i8 %267 to i32
  %269 = add nsw i32 %268, -1
  %270 = shl nuw i32 1, %269
  %271 = sext i32 %270 to i64
  store i64 %271, ptr %8, align 8
  br label %272

272:                                              ; preds = %293, %264
  %storemerge12 = phi i64 [ 0, %264 ], [ %295, %293 ]
  store i64 %storemerge12, ptr %5, align 8
  %273 = load i64, ptr %6, align 8
  %274 = getelementptr inbounds nuw i8, ptr %19, i64 %273
  %275 = load i8, ptr %274, align 1
  %276 = zext i8 %275 to i64
  %277 = icmp ult i64 %storemerge12, %276
  br i1 %277, label %278, label %296

278:                                              ; preds = %272
  %279 = load i32, ptr %9, align 4
  %280 = shl i32 %279, 1
  %281 = or disjoint i32 %280, 1
  store i32 %281, ptr %9, align 4
  %282 = load i64, ptr %6, align 8
  %283 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %282
  %284 = load i32, ptr %283, align 4
  %285 = zext i32 %284 to i64
  %286 = load i64, ptr %8, align 8
  %287 = and i64 %286, %285
  %.not13 = icmp eq i64 %287, 0
  br i1 %.not13, label %290, label %288

288:                                              ; preds = %278
  %289 = add i32 %280, 2
  store i32 %289, ptr %9, align 4
  br label %290

290:                                              ; preds = %288, %278
  %291 = load i64, ptr %8, align 8
  %292 = lshr i64 %291, 1
  store i64 %292, ptr %8, align 8
  br label %293

293:                                              ; preds = %290
  %294 = load i64, ptr %5, align 8
  %295 = add i64 %294, 1
  br label %272, !llvm.loop !17

296:                                              ; preds = %272
  %297 = load i32, ptr %9, align 4
  %298 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %273
  store i32 %297, ptr %298, align 4
  br label %299

299:                                              ; preds = %296, %253
  br label %300

300:                                              ; preds = %299
  %301 = load i64, ptr %6, align 8
  %302 = add i64 %301, 1
  br label %251, !llvm.loop !18

303:                                              ; preds = %251
  br label %304

304:                                              ; preds = %339, %303
  %storemerge6 = phi i64 [ 1, %303 ], [ %341, %339 ]
  store i64 %storemerge6, ptr %5, align 8
  %305 = icmp ult i64 %storemerge6, 256
  br i1 %305, label %306, label %342

306:                                              ; preds = %304
  %307 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %storemerge6
  %308 = load i32, ptr %307, align 4
  store i32 %308, ptr %10, align 4
  %309 = load i64, ptr %5, align 8
  %310 = getelementptr inbounds nuw i8, ptr %30, i64 %309
  %311 = load i8, ptr %310, align 1
  store i8 %311, ptr %11, align 1
  br label %312

312:                                              ; preds = %321, %306
  %storemerge9 = phi i64 [ %309, %306 ], [ %332, %321 ]
  store i64 %storemerge9, ptr %6, align 8
  %.not10 = icmp eq i64 %storemerge9, 0
  br i1 %.not10, label %319, label %313

313:                                              ; preds = %312
  %314 = getelementptr [4 x i8], ptr %29, i64 %storemerge9
  %315 = getelementptr i8, ptr %314, i64 -4
  %316 = load i32, ptr %315, align 4
  %317 = load i32, ptr %10, align 4
  %318 = icmp ugt i32 %316, %317
  br label %319

319:                                              ; preds = %313, %312
  %320 = phi i1 [ false, %312 ], [ %318, %313 ]
  br i1 %320, label %321, label %333

321:                                              ; preds = %319
  %322 = load i64, ptr %6, align 8
  %323 = getelementptr [4 x i8], ptr %29, i64 %322
  %324 = getelementptr i8, ptr %323, i64 -4
  %325 = load i32, ptr %324, align 4
  %326 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %322
  store i32 %325, ptr %326, align 4
  %327 = getelementptr i8, ptr %30, i64 %322
  %328 = getelementptr i8, ptr %327, i64 -1
  %329 = load i8, ptr %328, align 1
  %330 = getelementptr inbounds nuw i8, ptr %30, i64 %322
  store i8 %329, ptr %330, align 1
  %331 = load i64, ptr %6, align 8
  %332 = add i64 %331, -1
  br label %312, !llvm.loop !19

333:                                              ; preds = %319
  %334 = load i32, ptr %10, align 4
  %335 = load i64, ptr %6, align 8
  %336 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %335
  store i32 %334, ptr %336, align 4
  %337 = load i8, ptr %11, align 1
  %338 = getelementptr inbounds nuw i8, ptr %30, i64 %335
  store i8 %337, ptr %338, align 1
  br label %339

339:                                              ; preds = %333
  %340 = load i64, ptr %5, align 8
  %341 = add i64 %340, 1
  br label %304, !llvm.loop !20

342:                                              ; preds = %304
  br label %343

343:                                              ; preds = %348, %342
  %storemerge7 = phi i64 [ 0, %342 ], [ %349, %348 ]
  store i64 %storemerge7, ptr %6, align 8
  %344 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %storemerge7
  %345 = load i32, ptr %344, align 4
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %350

347:                                              ; preds = %343
  br label %348

348:                                              ; preds = %347
  %349 = add i64 %storemerge7, 1
  br label %343, !llvm.loop !21

350:                                              ; preds = %343
  store i32 0, ptr %9, align 4
  %351 = load i64, ptr %6, align 8
  store i64 %351, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  %352 = load ptr, ptr %14, align 8
  store ptr %352, ptr %12, align 8
  %353 = load ptr, ptr %3, align 8
  store ptr %353, ptr %13, align 8
  br label %354

354:                                              ; preds = %396, %350
  %355 = load i64, ptr %7, align 8
  %356 = load i64, ptr %4, align 8
  %357 = icmp ult i64 %355, %356
  br i1 %357, label %358, label %397

358:                                              ; preds = %354
  %359 = load i32, ptr %9, align 4
  %360 = shl i32 %359, 1
  %361 = or disjoint i32 %360, 1
  store i32 %361, ptr %9, align 4
  %362 = load ptr, ptr %12, align 8
  %363 = load i8, ptr %362, align 1
  %364 = zext i8 %363 to i64
  %365 = load i64, ptr %8, align 8
  %366 = and i64 %365, %364
  %.not8 = icmp eq i64 %366, 0
  br i1 %.not8, label %369, label %367

367:                                              ; preds = %358
  %368 = add i32 %360, 2
  store i32 %368, ptr %9, align 4
  br label %369

369:                                              ; preds = %367, %358
  br label %370

370:                                              ; preds = %376, %369
  %371 = load i64, ptr %5, align 8
  %372 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %371
  %373 = load i32, ptr %372, align 4
  %374 = load i32, ptr %9, align 4
  %375 = icmp ult i32 %373, %374
  br i1 %375, label %376, label %378

376:                                              ; preds = %370
  %377 = add i64 %371, 1
  store i64 %377, ptr %5, align 8
  br label %370, !llvm.loop !22

378:                                              ; preds = %370
  %379 = icmp eq i32 %374, %373
  br i1 %379, label %380, label %388

380:                                              ; preds = %378
  %381 = getelementptr inbounds nuw i8, ptr %30, i64 %371
  %382 = load i8, ptr %381, align 1
  %383 = load ptr, ptr %13, align 8
  store i8 %382, ptr %383, align 1
  %384 = getelementptr inbounds nuw i8, ptr %383, i64 1
  store ptr %384, ptr %13, align 8
  %385 = load i64, ptr %7, align 8
  %386 = add i64 %385, 1
  store i64 %386, ptr %7, align 8
  store i32 0, ptr %9, align 4
  %387 = load i64, ptr %6, align 8
  store i64 %387, ptr %5, align 8
  br label %388

388:                                              ; preds = %380, %378
  %389 = load i64, ptr %8, align 8
  %390 = icmp ugt i64 %389, 1
  br i1 %390, label %391, label %393

391:                                              ; preds = %388
  %392 = lshr i64 %389, 1
  store i64 %392, ptr %8, align 8
  br label %396

393:                                              ; preds = %388
  store i64 128, ptr %8, align 8
  %394 = load ptr, ptr %12, align 8
  %395 = getelementptr inbounds nuw i8, ptr %394, i64 1
  store ptr %395, ptr %12, align 8
  br label %396

396:                                              ; preds = %393, %391
  br label %354, !llvm.loop !23

397:                                              ; preds = %354
  %398 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %398) #8
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

16:                                               ; preds = %57, %4
  %17 = load i32, ptr %8, align 4
  %18 = load i32, ptr %7, align 4
  %19 = sdiv i32 %18, 2
  %.not = icmp sgt i32 %17, %19
  br i1 %.not, label %63, label %20

20:                                               ; preds = %16
  %21 = shl nsw i32 %17, 1
  store i32 %21, ptr %9, align 4
  %22 = load i32, ptr %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = load ptr, ptr %5, align 8
  %26 = load ptr, ptr %6, align 8
  %27 = sext i32 %21 to i64
  %28 = getelementptr [8 x i8], ptr %26, i64 %27
  %29 = getelementptr i8, ptr %28, i64 -8
  %30 = load i64, ptr %29, align 8
  %31 = getelementptr inbounds nuw [8 x i8], ptr %25, i64 %30
  %32 = load i64, ptr %31, align 8
  %33 = sext i32 %21 to i64
  %34 = getelementptr inbounds [8 x i8], ptr %26, i64 %33
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds nuw [8 x i8], ptr %25, i64 %35
  %37 = load i64, ptr %36, align 8
  %38 = icmp ugt i64 %32, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %24
  %40 = or disjoint i32 %21, 1
  store i32 %40, ptr %9, align 4
  br label %41

41:                                               ; preds = %39, %24, %20
  %42 = load ptr, ptr %5, align 8
  %43 = load i32, ptr %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [8 x i8], ptr %42, i64 %44
  %46 = load i64, ptr %45, align 8
  %47 = load ptr, ptr %6, align 8
  %48 = load i32, ptr %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr [8 x i8], ptr %47, i64 %49
  %51 = getelementptr i8, ptr %50, i64 -8
  %52 = load i64, ptr %51, align 8
  %53 = getelementptr inbounds nuw [8 x i8], ptr %42, i64 %52
  %54 = load i64, ptr %53, align 8
  %55 = icmp ult i64 %46, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %41
  br label %63

57:                                               ; preds = %41
  %58 = load i32, ptr %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr [8 x i8], ptr %47, i64 %59
  %61 = getelementptr i8, ptr %60, i64 -8
  store i64 %52, ptr %61, align 8
  %62 = load i32, ptr %9, align 4
  store i32 %62, ptr %8, align 4
  br label %16, !llvm.loop !24

63:                                               ; preds = %56, %16
  %64 = load i32, ptr %10, align 4
  %65 = sext i32 %64 to i64
  %66 = load ptr, ptr %6, align 8
  %67 = load i32, ptr %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr [8 x i8], ptr %66, i64 %68
  %70 = getelementptr i8, ptr %69, i64 -8
  store i64 %65, ptr %70, align 8
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
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %21, %10
  %storemerge = phi i32 [ 1, %10 ], [ %23, %21 ]
  store i32 %storemerge, ptr %5, align 4
  %12 = load i32, ptr %3, align 4
  %13 = icmp slt i32 %storemerge, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8
  %18 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(4) @.str.4) #8
  %.not = icmp eq i32 %18, 0
  br i1 %.not, label %19, label %20

19:                                               ; preds = %14
  store i8 1, ptr %6, align 1
  br label %24

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20
  %22 = load i32, ptr %5, align 4
  %23 = add nsw i32 %22, 1
  br label %11, !llvm.loop !25

24:                                               ; preds = %19, %11
  br label %25

25:                                               ; preds = %24, %2
  %26 = call ptr @generate_test_data(i64 noundef 10000000)
  store ptr %26, ptr %7, align 8
  br label %27

27:                                               ; preds = %31, %25
  %storemerge1 = phi i32 [ 0, %25 ], [ %33, %31 ]
  store i32 %storemerge1, ptr %5, align 4
  %28 = icmp slt i32 %storemerge1, 30
  br i1 %28, label %29, label %34

29:                                               ; preds = %27
  %30 = load ptr, ptr %7, align 8
  call void @compdecomp(ptr noundef %30, i64 noundef 10000000)
  br label %31

31:                                               ; preds = %29
  %32 = load i32, ptr %5, align 4
  %33 = add nsw i32 %32, 1
  br label %27, !llvm.loop !26

34:                                               ; preds = %27
  store double 0.000000e+00, ptr %8, align 8
  %35 = load ptr, ptr %7, align 8
  call void @free(ptr noundef %35) #8
  %36 = load i8, ptr %6, align 1
  %.not2 = icmp eq i8 %36, 0
  br i1 %.not2, label %41, label %37

37:                                               ; preds = %34
  %38 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %39 = load double, ptr %8, align 8
  %40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef nonnull @.str.5, double noundef %39) #8
  br label %45

41:                                               ; preds = %34
  %42 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %43 = load double, ptr %8, align 8
  %44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str.6, double noundef %43) #8
  br label %45

45:                                               ; preds = %41, %37
  %46 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %47 = call i32 @fflush(ptr noundef %46) #8
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
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = add nsw i32 %6, 2147483647
  br label %10

10:                                               ; preds = %8, %0
  %storemerge = phi i32 [ %9, %8 ], [ %6, %0 ]
  store i32 %storemerge, ptr @seed, align 4
  %11 = srem i32 %storemerge, 32
  %12 = sext i32 %11 to i64
  %13 = xor i32 %storemerge, 123459876
  store i32 %13, ptr @seed, align 4
  ret i64 %12
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
