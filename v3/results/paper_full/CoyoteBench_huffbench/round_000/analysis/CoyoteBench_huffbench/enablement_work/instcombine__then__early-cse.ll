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
  call void @llvm.memset.p0.i64(ptr align 1 %33, i8 0, i64 %32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %15, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %16, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %17, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %18, i8 0, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %19, i8 0, i64 256, i1 false)
  br label %34

34:                                               ; preds = %46, %2
  %storemerge = phi i64 [ 0, %2 ], [ %48, %46 ]
  store i64 %storemerge, ptr %5, align 8
  %35 = load i64, ptr %4, align 8
  %36 = icmp ult i64 %storemerge, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load ptr, ptr %13, align 8
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %40
  %42 = load i64, ptr %41, align 8
  %43 = add i64 %42, 1
  store i64 %43, ptr %41, align 8
  %44 = load ptr, ptr %13, align 8
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 1
  store ptr %45, ptr %13, align 8
  br label %46

46:                                               ; preds = %37
  %47 = load i64, ptr %5, align 8
  %48 = add i64 %47, 1
  br label %34, !llvm.loop !9

49:                                               ; preds = %34
  store i64 0, ptr %7, align 8
  br label %50

50:                                               ; preds = %60, %49
  %storemerge1 = phi i64 [ 0, %49 ], [ %62, %60 ]
  store i64 %storemerge1, ptr %5, align 8
  %51 = icmp ult i64 %storemerge1, 256
  br i1 %51, label %52, label %63

52:                                               ; preds = %50
  %53 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %storemerge1
  %54 = load i64, ptr %53, align 8
  %.not19 = icmp eq i64 %54, 0
  br i1 %.not19, label %59, label %55

55:                                               ; preds = %52
  %56 = load i64, ptr %7, align 8
  %57 = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %56
  store i64 %storemerge1, ptr %57, align 8
  %58 = add i64 %56, 1
  store i64 %58, ptr %7, align 8
  br label %59

59:                                               ; preds = %55, %52
  br label %60

60:                                               ; preds = %59
  %61 = load i64, ptr %5, align 8
  %62 = add i64 %61, 1
  br label %50, !llvm.loop !10

63:                                               ; preds = %50
  %64 = load i64, ptr %7, align 8
  br label %65

65:                                               ; preds = %70, %63
  %storemerge2 = phi i64 [ %64, %63 ], [ %72, %70 ]
  store i64 %storemerge2, ptr %5, align 8
  %.not = icmp eq i64 %storemerge2, 0
  br i1 %.not, label %73, label %66

66:                                               ; preds = %65
  %67 = load i64, ptr %7, align 8
  %68 = trunc i64 %67 to i32
  %69 = trunc i64 %storemerge2 to i32
  call void @heap_adjust(ptr noundef nonnull %15, ptr noundef nonnull %16, i32 noundef %68, i32 noundef %69)
  br label %70

70:                                               ; preds = %66
  %71 = load i64, ptr %5, align 8
  %72 = add i64 %71, -1
  br label %65, !llvm.loop !11

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %77, %73
  %75 = load i64, ptr %7, align 8
  %76 = icmp ugt i64 %75, 1
  br i1 %76, label %77, label %105

77:                                               ; preds = %74
  %78 = add i64 %75, -1
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
  br label %74, !llvm.loop !12

105:                                              ; preds = %74
  %106 = getelementptr [4 x i8], ptr %17, i64 %75
  %107 = getelementptr i8, ptr %106, i64 1024
  store i32 0, ptr %107, align 4
  store i64 0, ptr %23, align 8
  store i64 0, ptr %24, align 8
  br label %108

108:                                              ; preds = %158, %105
  %storemerge3 = phi i64 [ 0, %105 ], [ %160, %158 ]
  store i64 %storemerge3, ptr %21, align 8
  %109 = icmp ult i64 %storemerge3, 256
  br i1 %109, label %110, label %161

110:                                              ; preds = %108
  %111 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %storemerge3
  %112 = load i64, ptr %111, align 8
  %.not17 = icmp eq i64 %112, 0
  br i1 %.not17, label %113, label %116

113:                                              ; preds = %110
  %114 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %storemerge3
  store i32 0, ptr %114, align 4
  %115 = getelementptr inbounds nuw i8, ptr %19, i64 %storemerge3
  store i8 0, ptr %115, align 1
  br label %157

116:                                              ; preds = %110
  store i64 0, ptr %5, align 8
  store i64 1, ptr %6, align 8
  store i64 0, ptr %22, align 8
  %117 = load i64, ptr %21, align 8
  %118 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %117
  %119 = load i32, ptr %118, align 4
  store i32 %119, ptr %25, align 4
  br label %120

120:                                              ; preds = %130, %116
  %121 = load i32, ptr %25, align 4
  %.not18 = icmp eq i32 %121, 0
  br i1 %.not18, label %139, label %122

122:                                              ; preds = %120
  %123 = icmp slt i32 %121, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %122
  %125 = load i64, ptr %6, align 8
  %126 = load i64, ptr %22, align 8
  %127 = add i64 %126, %125
  store i64 %127, ptr %22, align 8
  %128 = load i32, ptr %25, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, ptr %25, align 4
  br label %130

130:                                              ; preds = %124, %122
  %131 = load i32, ptr %25, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [4 x i8], ptr %17, i64 %132
  %134 = load i32, ptr %133, align 4
  store i32 %134, ptr %25, align 4
  %135 = load i64, ptr %6, align 8
  %136 = shl i64 %135, 1
  store i64 %136, ptr %6, align 8
  %137 = load i64, ptr %5, align 8
  %138 = add i64 %137, 1
  store i64 %138, ptr %5, align 8
  br label %120, !llvm.loop !13

139:                                              ; preds = %120
  %140 = load i64, ptr %22, align 8
  %141 = trunc i64 %140 to i32
  %142 = load i64, ptr %21, align 8
  %143 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %142
  store i32 %141, ptr %143, align 4
  %144 = load i64, ptr %5, align 8
  %145 = trunc i64 %144 to i8
  %146 = getelementptr inbounds nuw i8, ptr %19, i64 %142
  store i8 %145, ptr %146, align 1
  %147 = load i64, ptr %22, align 8
  %148 = load i64, ptr %23, align 8
  %149 = icmp ugt i64 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %139
  store i64 %147, ptr %23, align 8
  br label %151

151:                                              ; preds = %150, %139
  %152 = load i64, ptr %5, align 8
  %153 = load i64, ptr %24, align 8
  %154 = icmp ugt i64 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  store i64 %152, ptr %24, align 8
  br label %156

156:                                              ; preds = %155, %151
  br label %157

157:                                              ; preds = %156, %113
  br label %158

158:                                              ; preds = %157
  %159 = load i64, ptr %21, align 8
  %160 = add i64 %159, 1
  br label %108, !llvm.loop !14

161:                                              ; preds = %108
  %162 = load i64, ptr %24, align 8
  %163 = icmp ugt i64 %162, 32
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %166 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %165)
  call void @exit(i32 noundef 1) #9
  unreachable

167:                                              ; preds = %161
  store i64 0, ptr %26, align 8
  store i8 0, ptr %27, align 1
  store i32 -1, ptr %28, align 4
  %168 = load ptr, ptr %3, align 8
  store ptr %168, ptr %13, align 8
  %169 = load i64, ptr %23, align 8
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %167
  %172 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %173 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %172)
  call void @exit(i32 noundef 1) #9
  unreachable

174:                                              ; preds = %167
  br label %175

175:                                              ; preds = %234, %174
  %storemerge4 = phi i64 [ 0, %174 ], [ %236, %234 ]
  store i64 %storemerge4, ptr %6, align 8
  %176 = load i64, ptr %4, align 8
  %177 = icmp ult i64 %storemerge4, %176
  br i1 %177, label %178, label %237

178:                                              ; preds = %175
  %179 = load ptr, ptr %13, align 8
  %180 = load i8, ptr %179, align 1
  %181 = zext i8 %180 to i64
  %182 = getelementptr inbounds nuw i8, ptr %19, i64 %181
  %183 = load i8, ptr %182, align 1
  %184 = zext i8 %183 to i32
  %185 = add nsw i32 %184, -1
  %186 = shl nuw i32 1, %185
  %187 = sext i32 %186 to i64
  store i64 %187, ptr %8, align 8
  br label %188

188:                                              ; preds = %229, %178
  %storemerge14 = phi i64 [ 0, %178 ], [ %231, %229 ]
  store i64 %storemerge14, ptr %5, align 8
  %189 = load ptr, ptr %13, align 8
  %190 = load i8, ptr %189, align 1
  %191 = zext i8 %190 to i64
  %192 = getelementptr inbounds nuw i8, ptr %19, i64 %191
  %193 = load i8, ptr %192, align 1
  %194 = zext i8 %193 to i64
  %195 = icmp ult i64 %storemerge14, %194
  br i1 %195, label %196, label %232

196:                                              ; preds = %188
  %197 = load i32, ptr %28, align 4
  %198 = icmp eq i32 %197, 7
  br i1 %198, label %199, label %211

199:                                              ; preds = %196
  %200 = load i8, ptr %27, align 1
  %201 = load ptr, ptr %14, align 8
  %202 = load i64, ptr %26, align 8
  %203 = getelementptr inbounds nuw i8, ptr %201, i64 %202
  store i8 %200, ptr %203, align 1
  %204 = add i64 %202, 1
  store i64 %204, ptr %26, align 8
  %205 = load i64, ptr %4, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %210

207:                                              ; preds = %199
  %208 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %209 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %208)
  call void @exit(i32 noundef 1) #9
  unreachable

210:                                              ; preds = %199
  store i32 0, ptr %28, align 4
  br label %215

211:                                              ; preds = %196
  %212 = add nsw i32 %197, 1
  store i32 %212, ptr %28, align 4
  %213 = load i8, ptr %27, align 1
  %214 = shl i8 %213, 1
  br label %215

215:                                              ; preds = %211, %210
  %storemerge15 = phi i8 [ %214, %211 ], [ 0, %210 ]
  store i8 %storemerge15, ptr %27, align 1
  %216 = load ptr, ptr %13, align 8
  %217 = load i8, ptr %216, align 1
  %218 = zext i8 %217 to i64
  %219 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %218
  %220 = load i32, ptr %219, align 4
  %221 = zext i32 %220 to i64
  %222 = load i64, ptr %8, align 8
  %223 = and i64 %222, %221
  %.not16 = icmp eq i64 %223, 0
  br i1 %.not16, label %226, label %224

224:                                              ; preds = %215
  %225 = or i8 %storemerge15, 1
  store i8 %225, ptr %27, align 1
  br label %226

226:                                              ; preds = %224, %215
  %227 = load i64, ptr %8, align 8
  %228 = lshr i64 %227, 1
  store i64 %228, ptr %8, align 8
  br label %229

229:                                              ; preds = %226
  %230 = load i64, ptr %5, align 8
  %231 = add i64 %230, 1
  br label %188, !llvm.loop !15

232:                                              ; preds = %188
  %233 = getelementptr inbounds nuw i8, ptr %189, i64 1
  store ptr %233, ptr %13, align 8
  br label %234

234:                                              ; preds = %232
  %235 = load i64, ptr %6, align 8
  %236 = add i64 %235, 1
  br label %175, !llvm.loop !16

237:                                              ; preds = %175
  %238 = load i32, ptr %28, align 4
  %239 = sub nsw i32 7, %238
  %240 = load i8, ptr %27, align 1
  %241 = zext i8 %240 to i32
  %242 = shl i32 %241, %239
  %243 = trunc i32 %242 to i8
  store i8 %243, ptr %27, align 1
  %244 = load ptr, ptr %14, align 8
  %245 = load i64, ptr %26, align 8
  %246 = getelementptr inbounds nuw i8, ptr %244, i64 %245
  store i8 %243, ptr %246, align 1
  %247 = add i64 %245, 1
  store i64 %247, ptr %26, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %29, i8 0, i64 1024, i1 false)
  store ptr %30, ptr %31, align 8
  br label %248

248:                                              ; preds = %297, %237
  %storemerge5 = phi i64 [ 0, %237 ], [ %299, %297 ]
  store i64 %storemerge5, ptr %6, align 8
  %249 = icmp ult i64 %storemerge5, 256
  br i1 %249, label %250, label %300

250:                                              ; preds = %248
  %251 = trunc i64 %storemerge5 to i8
  %252 = load ptr, ptr %31, align 8
  store i8 %251, ptr %252, align 1
  %253 = getelementptr inbounds nuw i8, ptr %252, i64 1
  store ptr %253, ptr %31, align 8
  %254 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %storemerge5
  %255 = load i32, ptr %254, align 4
  %256 = load i64, ptr %6, align 8
  %257 = getelementptr inbounds nuw i8, ptr %19, i64 %256
  %258 = load i8, ptr %257, align 1
  %259 = zext i8 %258 to i32
  %260 = or i32 %255, %259
  %.not11 = icmp eq i32 %260, 0
  br i1 %.not11, label %296, label %261

261:                                              ; preds = %250
  store i32 0, ptr %9, align 4
  %262 = load i64, ptr %6, align 8
  %263 = getelementptr inbounds nuw i8, ptr %19, i64 %262
  %264 = load i8, ptr %263, align 1
  %265 = zext i8 %264 to i32
  %266 = add nsw i32 %265, -1
  %267 = shl nuw i32 1, %266
  %268 = sext i32 %267 to i64
  store i64 %268, ptr %8, align 8
  br label %269

269:                                              ; preds = %290, %261
  %storemerge12 = phi i64 [ 0, %261 ], [ %292, %290 ]
  store i64 %storemerge12, ptr %5, align 8
  %270 = load i64, ptr %6, align 8
  %271 = getelementptr inbounds nuw i8, ptr %19, i64 %270
  %272 = load i8, ptr %271, align 1
  %273 = zext i8 %272 to i64
  %274 = icmp ult i64 %storemerge12, %273
  br i1 %274, label %275, label %293

275:                                              ; preds = %269
  %276 = load i32, ptr %9, align 4
  %277 = shl i32 %276, 1
  %278 = or disjoint i32 %277, 1
  store i32 %278, ptr %9, align 4
  %279 = load i64, ptr %6, align 8
  %280 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %279
  %281 = load i32, ptr %280, align 4
  %282 = zext i32 %281 to i64
  %283 = load i64, ptr %8, align 8
  %284 = and i64 %283, %282
  %.not13 = icmp eq i64 %284, 0
  br i1 %.not13, label %287, label %285

285:                                              ; preds = %275
  %286 = add i32 %278, 1
  store i32 %286, ptr %9, align 4
  br label %287

287:                                              ; preds = %285, %275
  %288 = load i64, ptr %8, align 8
  %289 = lshr i64 %288, 1
  store i64 %289, ptr %8, align 8
  br label %290

290:                                              ; preds = %287
  %291 = load i64, ptr %5, align 8
  %292 = add i64 %291, 1
  br label %269, !llvm.loop !17

293:                                              ; preds = %269
  %294 = load i32, ptr %9, align 4
  %295 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %270
  store i32 %294, ptr %295, align 4
  br label %296

296:                                              ; preds = %293, %250
  br label %297

297:                                              ; preds = %296
  %298 = load i64, ptr %6, align 8
  %299 = add i64 %298, 1
  br label %248, !llvm.loop !18

300:                                              ; preds = %248
  br label %301

301:                                              ; preds = %335, %300
  %storemerge6 = phi i64 [ 1, %300 ], [ %337, %335 ]
  store i64 %storemerge6, ptr %5, align 8
  %302 = icmp ult i64 %storemerge6, 256
  br i1 %302, label %303, label %338

303:                                              ; preds = %301
  %304 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %storemerge6
  %305 = load i32, ptr %304, align 4
  store i32 %305, ptr %10, align 4
  %306 = getelementptr inbounds nuw i8, ptr %30, i64 %storemerge6
  %307 = load i8, ptr %306, align 1
  store i8 %307, ptr %11, align 1
  %308 = load i64, ptr %5, align 8
  br label %309

309:                                              ; preds = %318, %303
  %storemerge9 = phi i64 [ %308, %303 ], [ %328, %318 ]
  store i64 %storemerge9, ptr %6, align 8
  %.not10 = icmp eq i64 %storemerge9, 0
  br i1 %.not10, label %316, label %310

310:                                              ; preds = %309
  %311 = getelementptr [4 x i8], ptr %29, i64 %storemerge9
  %312 = getelementptr i8, ptr %311, i64 -4
  %313 = load i32, ptr %312, align 4
  %314 = load i32, ptr %10, align 4
  %315 = icmp ugt i32 %313, %314
  br label %316

316:                                              ; preds = %310, %309
  %317 = phi i1 [ false, %309 ], [ %315, %310 ]
  br i1 %317, label %318, label %329

318:                                              ; preds = %316
  %319 = load i64, ptr %6, align 8
  %320 = getelementptr [4 x i8], ptr %29, i64 %319
  %321 = getelementptr i8, ptr %320, i64 -4
  %322 = load i32, ptr %321, align 4
  store i32 %322, ptr %320, align 4
  %323 = getelementptr i8, ptr %30, i64 %319
  %324 = getelementptr i8, ptr %323, i64 -1
  %325 = load i8, ptr %324, align 1
  %326 = load i64, ptr %6, align 8
  %327 = getelementptr inbounds nuw i8, ptr %30, i64 %326
  store i8 %325, ptr %327, align 1
  %328 = add i64 %326, -1
  br label %309, !llvm.loop !19

329:                                              ; preds = %316
  %330 = load i32, ptr %10, align 4
  %331 = load i64, ptr %6, align 8
  %332 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %331
  store i32 %330, ptr %332, align 4
  %333 = load i8, ptr %11, align 1
  %334 = getelementptr inbounds nuw i8, ptr %30, i64 %331
  store i8 %333, ptr %334, align 1
  br label %335

335:                                              ; preds = %329
  %336 = load i64, ptr %5, align 8
  %337 = add i64 %336, 1
  br label %301, !llvm.loop !20

338:                                              ; preds = %301
  br label %339

339:                                              ; preds = %344, %338
  %storemerge7 = phi i64 [ 0, %338 ], [ %345, %344 ]
  store i64 %storemerge7, ptr %6, align 8
  %340 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %storemerge7
  %341 = load i32, ptr %340, align 4
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %346

343:                                              ; preds = %339
  br label %344

344:                                              ; preds = %343
  %345 = add i64 %storemerge7, 1
  br label %339, !llvm.loop !21

346:                                              ; preds = %339
  store i32 0, ptr %9, align 4
  %347 = load i64, ptr %6, align 8
  store i64 %347, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  %348 = load ptr, ptr %14, align 8
  store ptr %348, ptr %12, align 8
  %349 = load ptr, ptr %3, align 8
  store ptr %349, ptr %13, align 8
  br label %350

350:                                              ; preds = %392, %346
  %351 = load i64, ptr %7, align 8
  %352 = load i64, ptr %4, align 8
  %353 = icmp ult i64 %351, %352
  br i1 %353, label %354, label %393

354:                                              ; preds = %350
  %355 = load i32, ptr %9, align 4
  %356 = shl i32 %355, 1
  %357 = or disjoint i32 %356, 1
  store i32 %357, ptr %9, align 4
  %358 = load ptr, ptr %12, align 8
  %359 = load i8, ptr %358, align 1
  %360 = zext i8 %359 to i64
  %361 = load i64, ptr %8, align 8
  %362 = and i64 %361, %360
  %.not8 = icmp eq i64 %362, 0
  br i1 %.not8, label %365, label %363

363:                                              ; preds = %354
  %364 = add i32 %357, 1
  store i32 %364, ptr %9, align 4
  br label %365

365:                                              ; preds = %363, %354
  br label %366

366:                                              ; preds = %372, %365
  %367 = load i64, ptr %5, align 8
  %368 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %367
  %369 = load i32, ptr %368, align 4
  %370 = load i32, ptr %9, align 4
  %371 = icmp ult i32 %369, %370
  br i1 %371, label %372, label %374

372:                                              ; preds = %366
  %373 = add i64 %367, 1
  store i64 %373, ptr %5, align 8
  br label %366, !llvm.loop !22

374:                                              ; preds = %366
  %375 = icmp eq i32 %370, %369
  br i1 %375, label %376, label %384

376:                                              ; preds = %374
  %377 = getelementptr inbounds nuw i8, ptr %30, i64 %367
  %378 = load i8, ptr %377, align 1
  %379 = load ptr, ptr %13, align 8
  store i8 %378, ptr %379, align 1
  %380 = getelementptr inbounds nuw i8, ptr %379, i64 1
  store ptr %380, ptr %13, align 8
  %381 = load i64, ptr %7, align 8
  %382 = add i64 %381, 1
  store i64 %382, ptr %7, align 8
  store i32 0, ptr %9, align 4
  %383 = load i64, ptr %6, align 8
  store i64 %383, ptr %5, align 8
  br label %384

384:                                              ; preds = %376, %374
  %385 = load i64, ptr %8, align 8
  %386 = icmp ugt i64 %385, 1
  br i1 %386, label %387, label %389

387:                                              ; preds = %384
  %388 = lshr i64 %385, 1
  store i64 %388, ptr %8, align 8
  br label %392

389:                                              ; preds = %384
  store i64 128, ptr %8, align 8
  %390 = load ptr, ptr %12, align 8
  %391 = getelementptr inbounds nuw i8, ptr %390, i64 1
  store ptr %391, ptr %12, align 8
  br label %392

392:                                              ; preds = %389, %387
  br label %350, !llvm.loop !23

393:                                              ; preds = %350
  %394 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %394) #8
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

16:                                               ; preds = %55, %4
  %17 = load i32, ptr %8, align 4
  %18 = load i32, ptr %7, align 4
  %19 = sdiv i32 %18, 2
  %.not = icmp sgt i32 %17, %19
  br i1 %.not, label %61, label %20

20:                                               ; preds = %16
  %21 = shl nsw i32 %17, 1
  store i32 %21, ptr %9, align 4
  %22 = load i32, ptr %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = load ptr, ptr %5, align 8
  %26 = load ptr, ptr %6, align 8
  %27 = sext i32 %21 to i64
  %28 = getelementptr [8 x i8], ptr %26, i64 %27
  %29 = getelementptr i8, ptr %28, i64 -8
  %30 = load i64, ptr %29, align 8
  %31 = getelementptr inbounds nuw [8 x i8], ptr %25, i64 %30
  %32 = load i64, ptr %31, align 8
  %33 = load i64, ptr %28, align 8
  %34 = getelementptr inbounds nuw [8 x i8], ptr %25, i64 %33
  %35 = load i64, ptr %34, align 8
  %36 = icmp ugt i64 %32, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = add nsw i32 %21, 1
  store i32 %38, ptr %9, align 4
  br label %39

39:                                               ; preds = %37, %24, %20
  %40 = load ptr, ptr %5, align 8
  %41 = load i32, ptr %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [8 x i8], ptr %40, i64 %42
  %44 = load i64, ptr %43, align 8
  %45 = load ptr, ptr %6, align 8
  %46 = load i32, ptr %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr [8 x i8], ptr %45, i64 %47
  %49 = getelementptr i8, ptr %48, i64 -8
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr inbounds nuw [8 x i8], ptr %40, i64 %50
  %52 = load i64, ptr %51, align 8
  %53 = icmp ult i64 %44, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %39
  br label %61

55:                                               ; preds = %39
  %56 = load i32, ptr %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr [8 x i8], ptr %45, i64 %57
  %59 = getelementptr i8, ptr %58, i64 -8
  store i64 %50, ptr %59, align 8
  %60 = load i32, ptr %9, align 4
  store i32 %60, ptr %8, align 4
  br label %16, !llvm.loop !24

61:                                               ; preds = %54, %16
  %62 = load i32, ptr %10, align 4
  %63 = sext i32 %62 to i64
  %64 = load ptr, ptr %6, align 8
  %65 = load i32, ptr %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr [8 x i8], ptr %64, i64 %66
  %68 = getelementptr i8, ptr %67, i64 -8
  store i64 %63, ptr %68, align 8
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
  %3 = sdiv i32 %2, 127773
  %.neg = mul i32 %3, -127773
  %4 = add i32 %.neg, %2
  %5 = mul nsw i32 %4, 16807
  %.neg1 = mul nsw i32 %3, -2836
  %6 = add i32 %.neg1, %5
  store i32 %6, ptr @seed, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = add nsw i32 %6, 2147483647
  store i32 %9, ptr @seed, align 4
  br label %10

10:                                               ; preds = %8, %0
  %11 = load i32, ptr @seed, align 4
  %12 = srem i32 %11, 32
  %13 = sext i32 %12 to i64
  %14 = xor i32 %11, 123459876
  store i32 %14, ptr @seed, align 4
  ret i64 %13
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
