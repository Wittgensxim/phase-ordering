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

51:                                               ; preds = %63, %50
  %storemerge1 = phi i64 [ 0, %50 ], [ %65, %63 ]
  store i64 %storemerge1, ptr %5, align 8
  %52 = icmp ult i64 %storemerge1, 256
  br i1 %52, label %53, label %66

53:                                               ; preds = %51
  %54 = load i64, ptr %5, align 8
  %55 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %54
  %56 = load i64, ptr %55, align 8
  %.not19 = icmp eq i64 %56, 0
  br i1 %.not19, label %62, label %57

57:                                               ; preds = %53
  %58 = load i64, ptr %5, align 8
  %59 = load i64, ptr %7, align 8
  %60 = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %59
  store i64 %58, ptr %60, align 8
  %61 = add i64 %59, 1
  store i64 %61, ptr %7, align 8
  br label %62

62:                                               ; preds = %57, %53
  br label %63

63:                                               ; preds = %62
  %64 = load i64, ptr %5, align 8
  %65 = add i64 %64, 1
  br label %51, !llvm.loop !10

66:                                               ; preds = %51
  %67 = load i64, ptr %7, align 8
  br label %68

68:                                               ; preds = %74, %66
  %storemerge2 = phi i64 [ %67, %66 ], [ %76, %74 ]
  store i64 %storemerge2, ptr %5, align 8
  %.not = icmp eq i64 %storemerge2, 0
  br i1 %.not, label %77, label %69

69:                                               ; preds = %68
  %70 = load i64, ptr %7, align 8
  %71 = trunc i64 %70 to i32
  %72 = load i64, ptr %5, align 8
  %73 = trunc i64 %72 to i32
  call void @heap_adjust(ptr noundef nonnull %15, ptr noundef nonnull %16, i32 noundef %71, i32 noundef %73)
  br label %74

74:                                               ; preds = %69
  %75 = load i64, ptr %5, align 8
  %76 = add i64 %75, -1
  br label %68, !llvm.loop !11

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %81, %77
  %79 = load i64, ptr %7, align 8
  %80 = icmp ugt i64 %79, 1
  br i1 %80, label %81, label %110

81:                                               ; preds = %78
  %82 = load i64, ptr %7, align 8
  %83 = add i64 %82, -1
  store i64 %83, ptr %7, align 8
  %84 = load i64, ptr %16, align 16
  store i64 %84, ptr %20, align 8
  %85 = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %83
  %86 = load i64, ptr %85, align 8
  store i64 %86, ptr %16, align 16
  %87 = trunc i64 %83 to i32
  call void @heap_adjust(ptr noundef nonnull %15, ptr noundef nonnull %16, i32 noundef %87, i32 noundef 1)
  %88 = load i64, ptr %16, align 16
  %89 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %88
  %90 = load i64, ptr %89, align 8
  %91 = load i64, ptr %20, align 8
  %92 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %91
  %93 = load i64, ptr %92, align 8
  %94 = add i64 %90, %93
  %95 = load i64, ptr %7, align 8
  %96 = getelementptr [8 x i8], ptr %15, i64 %95
  %97 = getelementptr i8, ptr %96, i64 2048
  store i64 %94, ptr %97, align 8
  %98 = trunc i64 %95 to i32
  %99 = add i32 %98, 256
  %100 = load i64, ptr %20, align 8
  %101 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %100
  store i32 %99, ptr %101, align 4
  %102 = load i64, ptr %7, align 8
  %103 = trunc i64 %102 to i32
  %104 = sub i32 -256, %103
  %105 = load i64, ptr %16, align 16
  %106 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %105
  store i32 %104, ptr %106, align 4
  %107 = add i64 %102, 256
  store i64 %107, ptr %16, align 16
  %108 = load i64, ptr %7, align 8
  %109 = trunc i64 %108 to i32
  call void @heap_adjust(ptr noundef nonnull %15, ptr noundef nonnull %16, i32 noundef %109, i32 noundef 1)
  br label %78, !llvm.loop !12

110:                                              ; preds = %78
  %111 = load i64, ptr %7, align 8
  %112 = getelementptr [4 x i8], ptr %17, i64 %111
  %113 = getelementptr i8, ptr %112, i64 1024
  store i32 0, ptr %113, align 4
  store i64 0, ptr %23, align 8
  store i64 0, ptr %24, align 8
  br label %114

114:                                              ; preds = %169, %110
  %storemerge3 = phi i64 [ 0, %110 ], [ %171, %169 ]
  store i64 %storemerge3, ptr %21, align 8
  %115 = icmp ult i64 %storemerge3, 256
  br i1 %115, label %116, label %172

116:                                              ; preds = %114
  %117 = load i64, ptr %21, align 8
  %118 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %117
  %119 = load i64, ptr %118, align 8
  %.not17 = icmp eq i64 %119, 0
  br i1 %.not17, label %120, label %124

120:                                              ; preds = %116
  %121 = load i64, ptr %21, align 8
  %122 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %121
  store i32 0, ptr %122, align 4
  %123 = getelementptr inbounds nuw i8, ptr %19, i64 %121
  store i8 0, ptr %123, align 1
  br label %168

124:                                              ; preds = %116
  store i64 0, ptr %5, align 8
  store i64 1, ptr %6, align 8
  store i64 0, ptr %22, align 8
  %125 = load i64, ptr %21, align 8
  %126 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %125
  %127 = load i32, ptr %126, align 4
  store i32 %127, ptr %25, align 4
  br label %128

128:                                              ; preds = %139, %124
  %129 = load i32, ptr %25, align 4
  %.not18 = icmp eq i32 %129, 0
  br i1 %.not18, label %148, label %130

130:                                              ; preds = %128
  %131 = load i32, ptr %25, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load i64, ptr %6, align 8
  %135 = load i64, ptr %22, align 8
  %136 = add i64 %135, %134
  store i64 %136, ptr %22, align 8
  %137 = load i32, ptr %25, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, ptr %25, align 4
  br label %139

139:                                              ; preds = %133, %130
  %140 = load i32, ptr %25, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [4 x i8], ptr %17, i64 %141
  %143 = load i32, ptr %142, align 4
  store i32 %143, ptr %25, align 4
  %144 = load i64, ptr %6, align 8
  %145 = shl i64 %144, 1
  store i64 %145, ptr %6, align 8
  %146 = load i64, ptr %5, align 8
  %147 = add i64 %146, 1
  store i64 %147, ptr %5, align 8
  br label %128, !llvm.loop !13

148:                                              ; preds = %128
  %149 = load i64, ptr %22, align 8
  %150 = trunc i64 %149 to i32
  %151 = load i64, ptr %21, align 8
  %152 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %151
  store i32 %150, ptr %152, align 4
  %153 = load i64, ptr %5, align 8
  %154 = trunc i64 %153 to i8
  %155 = getelementptr inbounds nuw i8, ptr %19, i64 %151
  store i8 %154, ptr %155, align 1
  %156 = load i64, ptr %22, align 8
  %157 = load i64, ptr %23, align 8
  %158 = icmp ugt i64 %156, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %148
  %160 = load i64, ptr %22, align 8
  store i64 %160, ptr %23, align 8
  br label %161

161:                                              ; preds = %159, %148
  %162 = load i64, ptr %5, align 8
  %163 = load i64, ptr %24, align 8
  %164 = icmp ugt i64 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %161
  %166 = load i64, ptr %5, align 8
  store i64 %166, ptr %24, align 8
  br label %167

167:                                              ; preds = %165, %161
  br label %168

168:                                              ; preds = %167, %120
  br label %169

169:                                              ; preds = %168
  %170 = load i64, ptr %21, align 8
  %171 = add i64 %170, 1
  br label %114, !llvm.loop !14

172:                                              ; preds = %114
  %173 = load i64, ptr %24, align 8
  %174 = icmp ugt i64 %173, 32
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %177 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %176)
  call void @exit(i32 noundef 1) #9
  unreachable

178:                                              ; preds = %172
  store i64 0, ptr %26, align 8
  store i8 0, ptr %27, align 1
  store i32 -1, ptr %28, align 4
  %179 = load ptr, ptr %3, align 8
  store ptr %179, ptr %13, align 8
  %180 = load i64, ptr %23, align 8
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %178
  %183 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %184 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %183)
  call void @exit(i32 noundef 1) #9
  unreachable

185:                                              ; preds = %178
  br label %186

186:                                              ; preds = %248, %185
  %storemerge4 = phi i64 [ 0, %185 ], [ %250, %248 ]
  store i64 %storemerge4, ptr %6, align 8
  %187 = load i64, ptr %4, align 8
  %188 = icmp ult i64 %storemerge4, %187
  br i1 %188, label %189, label %251

189:                                              ; preds = %186
  %190 = load ptr, ptr %13, align 8
  %191 = load i8, ptr %190, align 1
  %192 = zext i8 %191 to i64
  %193 = getelementptr inbounds nuw i8, ptr %19, i64 %192
  %194 = load i8, ptr %193, align 1
  %195 = zext i8 %194 to i32
  %196 = add nsw i32 %195, -1
  %197 = shl nuw i32 1, %196
  %198 = sext i32 %197 to i64
  store i64 %198, ptr %8, align 8
  br label %199

199:                                              ; preds = %242, %189
  %storemerge14 = phi i64 [ 0, %189 ], [ %244, %242 ]
  store i64 %storemerge14, ptr %5, align 8
  %200 = load ptr, ptr %13, align 8
  %201 = load i8, ptr %200, align 1
  %202 = zext i8 %201 to i64
  %203 = getelementptr inbounds nuw i8, ptr %19, i64 %202
  %204 = load i8, ptr %203, align 1
  %205 = zext i8 %204 to i64
  %206 = icmp ult i64 %storemerge14, %205
  br i1 %206, label %207, label %245

207:                                              ; preds = %199
  %208 = load i32, ptr %28, align 4
  %209 = icmp eq i32 %208, 7
  br i1 %209, label %210, label %222

210:                                              ; preds = %207
  %211 = load i8, ptr %27, align 1
  %212 = load ptr, ptr %14, align 8
  %213 = load i64, ptr %26, align 8
  %214 = getelementptr inbounds nuw i8, ptr %212, i64 %213
  store i8 %211, ptr %214, align 1
  %215 = add i64 %213, 1
  store i64 %215, ptr %26, align 8
  %216 = load i64, ptr %4, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %221

218:                                              ; preds = %210
  %219 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %220 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %219)
  call void @exit(i32 noundef 1) #9
  unreachable

221:                                              ; preds = %210
  store i32 0, ptr %28, align 4
  br label %227

222:                                              ; preds = %207
  %223 = load i32, ptr %28, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, ptr %28, align 4
  %225 = load i8, ptr %27, align 1
  %226 = shl i8 %225, 1
  br label %227

227:                                              ; preds = %222, %221
  %storemerge15 = phi i8 [ %226, %222 ], [ 0, %221 ]
  store i8 %storemerge15, ptr %27, align 1
  %228 = load ptr, ptr %13, align 8
  %229 = load i8, ptr %228, align 1
  %230 = zext i8 %229 to i64
  %231 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %230
  %232 = load i32, ptr %231, align 4
  %233 = zext i32 %232 to i64
  %234 = load i64, ptr %8, align 8
  %235 = and i64 %234, %233
  %.not16 = icmp eq i64 %235, 0
  br i1 %.not16, label %239, label %236

236:                                              ; preds = %227
  %237 = load i8, ptr %27, align 1
  %238 = or i8 %237, 1
  store i8 %238, ptr %27, align 1
  br label %239

239:                                              ; preds = %236, %227
  %240 = load i64, ptr %8, align 8
  %241 = lshr i64 %240, 1
  store i64 %241, ptr %8, align 8
  br label %242

242:                                              ; preds = %239
  %243 = load i64, ptr %5, align 8
  %244 = add i64 %243, 1
  br label %199, !llvm.loop !15

245:                                              ; preds = %199
  %246 = load ptr, ptr %13, align 8
  %247 = getelementptr inbounds nuw i8, ptr %246, i64 1
  store ptr %247, ptr %13, align 8
  br label %248

248:                                              ; preds = %245
  %249 = load i64, ptr %6, align 8
  %250 = add i64 %249, 1
  br label %186, !llvm.loop !16

251:                                              ; preds = %186
  %252 = load i32, ptr %28, align 4
  %253 = sub nsw i32 7, %252
  %254 = load i8, ptr %27, align 1
  %255 = zext i8 %254 to i32
  %256 = shl i32 %255, %253
  %257 = trunc i32 %256 to i8
  store i8 %257, ptr %27, align 1
  %258 = load ptr, ptr %14, align 8
  %259 = load i64, ptr %26, align 8
  %260 = getelementptr inbounds nuw i8, ptr %258, i64 %259
  store i8 %257, ptr %260, align 1
  %261 = add i64 %259, 1
  store i64 %261, ptr %26, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %29, i8 0, i64 1024, i1 false)
  store ptr %30, ptr %31, align 8
  br label %262

262:                                              ; preds = %314, %251
  %storemerge5 = phi i64 [ 0, %251 ], [ %316, %314 ]
  store i64 %storemerge5, ptr %6, align 8
  %263 = icmp ult i64 %storemerge5, 256
  br i1 %263, label %264, label %317

264:                                              ; preds = %262
  %265 = load i64, ptr %6, align 8
  %266 = trunc i64 %265 to i8
  %267 = load ptr, ptr %31, align 8
  store i8 %266, ptr %267, align 1
  %268 = getelementptr inbounds nuw i8, ptr %267, i64 1
  store ptr %268, ptr %31, align 8
  %269 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %265
  %270 = load i32, ptr %269, align 4
  %271 = load i64, ptr %6, align 8
  %272 = getelementptr inbounds nuw i8, ptr %19, i64 %271
  %273 = load i8, ptr %272, align 1
  %274 = zext i8 %273 to i32
  %275 = or i32 %270, %274
  %.not11 = icmp eq i32 %275, 0
  br i1 %.not11, label %313, label %276

276:                                              ; preds = %264
  store i32 0, ptr %9, align 4
  %277 = load i64, ptr %6, align 8
  %278 = getelementptr inbounds nuw i8, ptr %19, i64 %277
  %279 = load i8, ptr %278, align 1
  %280 = zext i8 %279 to i32
  %281 = add nsw i32 %280, -1
  %282 = shl nuw i32 1, %281
  %283 = sext i32 %282 to i64
  store i64 %283, ptr %8, align 8
  br label %284

284:                                              ; preds = %306, %276
  %storemerge12 = phi i64 [ 0, %276 ], [ %308, %306 ]
  store i64 %storemerge12, ptr %5, align 8
  %285 = load i64, ptr %6, align 8
  %286 = getelementptr inbounds nuw i8, ptr %19, i64 %285
  %287 = load i8, ptr %286, align 1
  %288 = zext i8 %287 to i64
  %289 = icmp ult i64 %storemerge12, %288
  br i1 %289, label %290, label %309

290:                                              ; preds = %284
  %291 = load i32, ptr %9, align 4
  %292 = shl i32 %291, 1
  %293 = or disjoint i32 %292, 1
  store i32 %293, ptr %9, align 4
  %294 = load i64, ptr %6, align 8
  %295 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %294
  %296 = load i32, ptr %295, align 4
  %297 = zext i32 %296 to i64
  %298 = load i64, ptr %8, align 8
  %299 = and i64 %298, %297
  %.not13 = icmp eq i64 %299, 0
  br i1 %.not13, label %303, label %300

300:                                              ; preds = %290
  %301 = load i32, ptr %9, align 4
  %302 = add i32 %301, 1
  store i32 %302, ptr %9, align 4
  br label %303

303:                                              ; preds = %300, %290
  %304 = load i64, ptr %8, align 8
  %305 = lshr i64 %304, 1
  store i64 %305, ptr %8, align 8
  br label %306

306:                                              ; preds = %303
  %307 = load i64, ptr %5, align 8
  %308 = add i64 %307, 1
  br label %284, !llvm.loop !17

309:                                              ; preds = %284
  %310 = load i32, ptr %9, align 4
  %311 = load i64, ptr %6, align 8
  %312 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %311
  store i32 %310, ptr %312, align 4
  br label %313

313:                                              ; preds = %309, %264
  br label %314

314:                                              ; preds = %313
  %315 = load i64, ptr %6, align 8
  %316 = add i64 %315, 1
  br label %262, !llvm.loop !18

317:                                              ; preds = %262
  br label %318

318:                                              ; preds = %355, %317
  %storemerge6 = phi i64 [ 1, %317 ], [ %357, %355 ]
  store i64 %storemerge6, ptr %5, align 8
  %319 = icmp ult i64 %storemerge6, 256
  br i1 %319, label %320, label %358

320:                                              ; preds = %318
  %321 = load i64, ptr %5, align 8
  %322 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %321
  %323 = load i32, ptr %322, align 4
  store i32 %323, ptr %10, align 4
  %324 = getelementptr inbounds nuw i8, ptr %30, i64 %321
  %325 = load i8, ptr %324, align 1
  store i8 %325, ptr %11, align 1
  %326 = load i64, ptr %5, align 8
  br label %327

327:                                              ; preds = %337, %320
  %storemerge9 = phi i64 [ %326, %320 ], [ %348, %337 ]
  store i64 %storemerge9, ptr %6, align 8
  %.not10 = icmp eq i64 %storemerge9, 0
  br i1 %.not10, label %335, label %328

328:                                              ; preds = %327
  %329 = load i64, ptr %6, align 8
  %330 = getelementptr [4 x i8], ptr %29, i64 %329
  %331 = getelementptr i8, ptr %330, i64 -4
  %332 = load i32, ptr %331, align 4
  %333 = load i32, ptr %10, align 4
  %334 = icmp ugt i32 %332, %333
  br label %335

335:                                              ; preds = %328, %327
  %336 = phi i1 [ false, %327 ], [ %334, %328 ]
  br i1 %336, label %337, label %349

337:                                              ; preds = %335
  %338 = load i64, ptr %6, align 8
  %339 = getelementptr [4 x i8], ptr %29, i64 %338
  %340 = getelementptr i8, ptr %339, i64 -4
  %341 = load i32, ptr %340, align 4
  %342 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %338
  store i32 %341, ptr %342, align 4
  %343 = getelementptr i8, ptr %30, i64 %338
  %344 = getelementptr i8, ptr %343, i64 -1
  %345 = load i8, ptr %344, align 1
  %346 = load i64, ptr %6, align 8
  %347 = getelementptr inbounds nuw i8, ptr %30, i64 %346
  store i8 %345, ptr %347, align 1
  %348 = add i64 %346, -1
  br label %327, !llvm.loop !19

349:                                              ; preds = %335
  %350 = load i32, ptr %10, align 4
  %351 = load i64, ptr %6, align 8
  %352 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %351
  store i32 %350, ptr %352, align 4
  %353 = load i8, ptr %11, align 1
  %354 = getelementptr inbounds nuw i8, ptr %30, i64 %351
  store i8 %353, ptr %354, align 1
  br label %355

355:                                              ; preds = %349
  %356 = load i64, ptr %5, align 8
  %357 = add i64 %356, 1
  br label %318, !llvm.loop !20

358:                                              ; preds = %318
  br label %359

359:                                              ; preds = %364, %358
  %storemerge7 = phi i64 [ 0, %358 ], [ %366, %364 ]
  store i64 %storemerge7, ptr %6, align 8
  %360 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %storemerge7
  %361 = load i32, ptr %360, align 4
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %367

363:                                              ; preds = %359
  br label %364

364:                                              ; preds = %363
  %365 = load i64, ptr %6, align 8
  %366 = add i64 %365, 1
  br label %359, !llvm.loop !21

367:                                              ; preds = %359
  store i32 0, ptr %9, align 4
  %368 = load i64, ptr %6, align 8
  store i64 %368, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  %369 = load ptr, ptr %14, align 8
  store ptr %369, ptr %12, align 8
  %370 = load ptr, ptr %3, align 8
  store ptr %370, ptr %13, align 8
  br label %371

371:                                              ; preds = %421, %367
  %372 = load i64, ptr %7, align 8
  %373 = load i64, ptr %4, align 8
  %374 = icmp ult i64 %372, %373
  br i1 %374, label %375, label %422

375:                                              ; preds = %371
  %376 = load i32, ptr %9, align 4
  %377 = shl i32 %376, 1
  %378 = or disjoint i32 %377, 1
  store i32 %378, ptr %9, align 4
  %379 = load ptr, ptr %12, align 8
  %380 = load i8, ptr %379, align 1
  %381 = zext i8 %380 to i64
  %382 = load i64, ptr %8, align 8
  %383 = and i64 %382, %381
  %.not8 = icmp eq i64 %383, 0
  br i1 %.not8, label %387, label %384

384:                                              ; preds = %375
  %385 = load i32, ptr %9, align 4
  %386 = add i32 %385, 1
  store i32 %386, ptr %9, align 4
  br label %387

387:                                              ; preds = %384, %375
  br label %388

388:                                              ; preds = %394, %387
  %389 = load i64, ptr %5, align 8
  %390 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %389
  %391 = load i32, ptr %390, align 4
  %392 = load i32, ptr %9, align 4
  %393 = icmp ult i32 %391, %392
  br i1 %393, label %394, label %397

394:                                              ; preds = %388
  %395 = load i64, ptr %5, align 8
  %396 = add i64 %395, 1
  store i64 %396, ptr %5, align 8
  br label %388, !llvm.loop !22

397:                                              ; preds = %388
  %398 = load i32, ptr %9, align 4
  %399 = load i64, ptr %5, align 8
  %400 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %399
  %401 = load i32, ptr %400, align 4
  %402 = icmp eq i32 %398, %401
  br i1 %402, label %403, label %412

403:                                              ; preds = %397
  %404 = load i64, ptr %5, align 8
  %405 = getelementptr inbounds nuw i8, ptr %30, i64 %404
  %406 = load i8, ptr %405, align 1
  %407 = load ptr, ptr %13, align 8
  store i8 %406, ptr %407, align 1
  %408 = getelementptr inbounds nuw i8, ptr %407, i64 1
  store ptr %408, ptr %13, align 8
  %409 = load i64, ptr %7, align 8
  %410 = add i64 %409, 1
  store i64 %410, ptr %7, align 8
  store i32 0, ptr %9, align 4
  %411 = load i64, ptr %6, align 8
  store i64 %411, ptr %5, align 8
  br label %412

412:                                              ; preds = %403, %397
  %413 = load i64, ptr %8, align 8
  %414 = icmp ugt i64 %413, 1
  br i1 %414, label %415, label %418

415:                                              ; preds = %412
  %416 = load i64, ptr %8, align 8
  %417 = lshr i64 %416, 1
  store i64 %417, ptr %8, align 8
  br label %421

418:                                              ; preds = %412
  store i64 128, ptr %8, align 8
  %419 = load ptr, ptr %12, align 8
  %420 = getelementptr inbounds nuw i8, ptr %419, i64 1
  store ptr %420, ptr %12, align 8
  br label %421

421:                                              ; preds = %418, %415
  br label %371, !llvm.loop !23

422:                                              ; preds = %371
  %423 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %423) #8
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

16:                                               ; preds = %63, %4
  %17 = load i32, ptr %8, align 4
  %18 = load i32, ptr %7, align 4
  %19 = sdiv i32 %18, 2
  %.not = icmp sgt i32 %17, %19
  br i1 %.not, label %75, label %20

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
  br i1 %61, label %62, label %63

62:                                               ; preds = %47
  br label %75

63:                                               ; preds = %47
  %64 = load ptr, ptr %6, align 8
  %65 = load i32, ptr %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr [8 x i8], ptr %64, i64 %66
  %68 = getelementptr i8, ptr %67, i64 -8
  %69 = load i64, ptr %68, align 8
  %70 = load i32, ptr %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr [8 x i8], ptr %64, i64 %71
  %73 = getelementptr i8, ptr %72, i64 -8
  store i64 %69, ptr %73, align 8
  %74 = load i32, ptr %9, align 4
  store i32 %74, ptr %8, align 4
  br label %16, !llvm.loop !24

75:                                               ; preds = %62, %16
  %76 = load i32, ptr %10, align 4
  %77 = sext i32 %76 to i64
  %78 = load ptr, ptr %6, align 8
  %79 = load i32, ptr %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr [8 x i8], ptr %78, i64 %80
  %82 = getelementptr i8, ptr %81, i64 -8
  store i64 %77, ptr %82, align 8
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
define internal range(i64 -31, 32) i64 @random4() #0 {
  %1 = load i32, ptr @seed, align 4
  %2 = xor i32 %1, 123459876
  store i32 %2, ptr @seed, align 4
  %3 = sdiv i32 %2, 127773
  %.neg = mul nsw i32 %3, -127773
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
