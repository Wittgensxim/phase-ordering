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
  %2 = call ptr @malloc(i64 noundef %0) #7
  br label %3

3:                                                ; preds = %8, %1
  %4 = phi ptr [ %12, %8 ], [ %2, %1 ]
  %5 = phi i32 [ %13, %8 ], [ 0, %1 ]
  %6 = zext nneg i32 %5 to i64
  %7 = icmp ugt i64 %0, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = call i64 @random4()
  %10 = getelementptr inbounds nuw i8, ptr @.str, i64 %9
  %11 = load i8, ptr %10, align 1
  store i8 %11, ptr %4, align 1
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 1
  %13 = add nuw nsw i32 %5, 1
  br label %3, !llvm.loop !7

14:                                               ; preds = %3
  ret ptr %2
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
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca [512 x i64], align 16
  %11 = alloca [256 x i64], align 16
  %12 = alloca [512 x i32], align 16
  %13 = alloca [256 x i32], align 16
  %14 = alloca [256 x i8], align 16
  %15 = alloca i64, align 8
  %16 = alloca [256 x i32], align 16
  %17 = alloca [256 x i8], align 16
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  store ptr %0, ptr %8, align 8
  %18 = add i64 %1, 1
  %19 = call ptr @malloc(i64 noundef %18) #7
  store ptr %19, ptr %9, align 8
  call void @llvm.memset.p0.i64(ptr align 1 %19, i8 0, i64 %18, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %10, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %11, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %12, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %13, i8 0, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %14, i8 0, i64 256, i1 false)
  br label %20

20:                                               ; preds = %24, %2
  %21 = phi ptr [ %30, %24 ], [ %0, %2 ]
  %22 = phi i64 [ %31, %24 ], [ 0, %2 ]
  %23 = icmp ult i64 %22, %1
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load i8, ptr %21, align 1
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %26
  %28 = load i64, ptr %27, align 8
  %29 = add i64 %28, 1
  store i64 %29, ptr %27, align 8
  %30 = getelementptr inbounds nuw i8, ptr %21, i64 1
  store ptr %30, ptr %8, align 8
  %31 = add i64 %22, 1
  br label %20, !llvm.loop !9

32:                                               ; preds = %20
  store i64 0, ptr %6, align 8
  br label %33

33:                                               ; preds = %43, %32
  %34 = phi i64 [ %44, %43 ], [ 0, %32 ]
  %35 = phi i64 [ %45, %43 ], [ 0, %32 ]
  %36 = icmp samesign ult i64 %35, 256
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %35
  %39 = load i64, ptr %38, align 8
  %.not17 = icmp eq i64 %39, 0
  br i1 %.not17, label %43, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %34
  store i64 %35, ptr %41, align 8
  %42 = add i64 %34, 1
  store i64 %42, ptr %6, align 8
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi i64 [ %42, %40 ], [ %34, %37 ]
  %45 = add nuw nsw i64 %35, 1
  br label %33, !llvm.loop !10

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %49, %46
  %48 = phi i64 [ %52, %49 ], [ %34, %46 ]
  %.not = icmp eq i64 %48, 0
  br i1 %.not, label %53, label %49

49:                                               ; preds = %47
  %50 = trunc i64 %34 to i32
  %51 = trunc i64 %48 to i32
  call void @heap_adjust(ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef %50, i32 noundef %51)
  %52 = add i64 %48, -1
  br label %47, !llvm.loop !11

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %57, %53
  %55 = phi i64 [ %58, %57 ], [ %34, %53 ]
  %56 = icmp ugt i64 %55, 1
  br i1 %56, label %57, label %76

57:                                               ; preds = %54
  %58 = add i64 %55, -1
  store i64 %58, ptr %6, align 8
  %59 = load i64, ptr %11, align 16
  %60 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %58
  %61 = load i64, ptr %60, align 8
  store i64 %61, ptr %11, align 16
  %62 = trunc i64 %58 to i32
  call void @heap_adjust(ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef %62, i32 noundef 1)
  %63 = load i64, ptr %11, align 16
  %64 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %63
  %65 = load i64, ptr %64, align 8
  %66 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %59
  %67 = load i64, ptr %66, align 8
  %68 = add i64 %65, %67
  %69 = add i64 %55, 255
  %70 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %69
  store i64 %68, ptr %70, align 8
  %71 = trunc i64 %69 to i32
  %72 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %59
  store i32 %71, ptr %72, align 4
  %73 = trunc i64 %55 to i32
  %74 = sub i32 -255, %73
  %75 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %63
  store i32 %74, ptr %75, align 4
  store i64 %69, ptr %11, align 16
  call void @heap_adjust(ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef %62, i32 noundef 1)
  br label %54, !llvm.loop !12

76:                                               ; preds = %54
  %77 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %55
  %78 = getelementptr inbounds nuw i8, ptr %77, i64 1024
  store i32 0, ptr %78, align 4
  br label %79

79:                                               ; preds = %126, %76
  %80 = phi i64 [ %127, %126 ], [ 0, %76 ]
  %81 = phi i64 [ %128, %126 ], [ 0, %76 ]
  %82 = phi i64 [ %129, %126 ], [ 0, %76 ]
  %83 = phi i64 [ %130, %126 ], [ 0, %76 ]
  %84 = phi i64 [ %131, %126 ], [ 0, %76 ]
  %85 = icmp samesign ult i64 %84, 256
  br i1 %85, label %86, label %132

86:                                               ; preds = %79
  %87 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %84
  %88 = load i64, ptr %87, align 8
  %.not15 = icmp eq i64 %88, 0
  br i1 %.not15, label %89, label %92

89:                                               ; preds = %86
  %90 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %84
  store i32 0, ptr %90, align 4
  %91 = getelementptr inbounds nuw i8, ptr %14, i64 %84
  store i8 0, ptr %91, align 1
  br label %126

92:                                               ; preds = %86
  store i64 1, ptr %5, align 8
  %93 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %84
  %94 = load i32, ptr %93, align 4
  br label %95

95:                                               ; preds = %105, %92
  %96 = phi i64 [ %111, %105 ], [ 1, %92 ]
  %97 = phi i64 [ %112, %105 ], [ 0, %92 ]
  %98 = phi i64 [ %107, %105 ], [ 0, %92 ]
  %99 = phi i32 [ %110, %105 ], [ %94, %92 ]
  %.not16 = icmp eq i32 %99, 0
  br i1 %.not16, label %113, label %100

100:                                              ; preds = %95
  %101 = icmp slt i32 %99, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %100
  %103 = add i64 %98, %96
  %104 = sub nsw i32 0, %99
  br label %105

105:                                              ; preds = %102, %100
  %106 = phi i32 [ %104, %102 ], [ %99, %100 ]
  %107 = phi i64 [ %103, %102 ], [ %98, %100 ]
  %108 = zext nneg i32 %106 to i64
  %109 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %108
  %110 = load i32, ptr %109, align 4
  %111 = shl i64 %96, 1
  store i64 %111, ptr %5, align 8
  %112 = add i64 %97, 1
  br label %95, !llvm.loop !13

113:                                              ; preds = %95
  %114 = trunc i64 %98 to i32
  %115 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %84
  store i32 %114, ptr %115, align 4
  %116 = trunc i64 %97 to i8
  %117 = getelementptr inbounds nuw i8, ptr %14, i64 %84
  store i8 %116, ptr %117, align 1
  %118 = icmp ugt i64 %98, %81
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %120

120:                                              ; preds = %119, %113
  %121 = phi i64 [ %98, %119 ], [ %81, %113 ]
  %122 = icmp ugt i64 %97, %80
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %124

124:                                              ; preds = %123, %120
  %125 = phi i64 [ %97, %123 ], [ %80, %120 ]
  br label %126

126:                                              ; preds = %124, %89
  %127 = phi i64 [ %125, %124 ], [ %80, %89 ]
  %128 = phi i64 [ %121, %124 ], [ %81, %89 ]
  %129 = phi i64 [ %121, %124 ], [ %82, %89 ]
  %130 = phi i64 [ %125, %124 ], [ %83, %89 ]
  %131 = add nuw nsw i64 %84, 1
  br label %79, !llvm.loop !14

132:                                              ; preds = %79
  %133 = icmp ugt i64 %83, 32
  br i1 %133, label %134, label %137

134:                                              ; preds = %132
  %135 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %136 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %135)
  call void @exit(i32 noundef 1) #9
  unreachable

137:                                              ; preds = %132
  store i64 0, ptr %15, align 8
  store ptr %0, ptr %8, align 8
  %138 = icmp eq i64 %82, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %137
  %140 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %141 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %140)
  call void @exit(i32 noundef 1) #9
  unreachable

142:                                              ; preds = %137
  br label %143

143:                                              ; preds = %196, %142
  %storemerge = phi i64 [ 0, %142 ], [ %198, %196 ]
  %144 = phi ptr [ %0, %142 ], [ %197, %196 ]
  %145 = phi i64 [ 0, %142 ], [ %163, %196 ]
  %146 = phi i8 [ 0, %142 ], [ %164, %196 ]
  %147 = phi i32 [ -1, %142 ], [ %165, %196 ]
  store i64 %storemerge, ptr %5, align 8
  %148 = icmp ult i64 %storemerge, %1
  br i1 %148, label %149, label %199

149:                                              ; preds = %143
  %150 = load i8, ptr %144, align 1
  %151 = zext i8 %150 to i64
  %152 = getelementptr inbounds nuw i8, ptr %14, i64 %151
  %153 = load i8, ptr %152, align 1
  %154 = zext i8 %153 to i32
  %155 = add nsw i32 %154, -1
  %156 = shl nuw i32 1, %155
  %157 = sext i32 %156 to i64
  store i64 %157, ptr %7, align 8
  br label %158

158:                                              ; preds = %192, %149
  %159 = phi i8 [ %182, %192 ], [ %150, %149 ]
  %160 = phi i64 [ %194, %192 ], [ %157, %149 ]
  %161 = phi i8 [ %.pre4, %192 ], [ %153, %149 ]
  %162 = phi i64 [ %195, %192 ], [ 0, %149 ]
  %163 = phi i64 [ %183, %192 ], [ %145, %149 ]
  %164 = phi i8 [ %193, %192 ], [ %146, %149 ]
  %165 = phi i32 [ %185, %192 ], [ %147, %149 ]
  %166 = zext i8 %161 to i64
  %167 = icmp ult i64 %162, %166
  br i1 %167, label %168, label %196

168:                                              ; preds = %158
  %169 = icmp eq i32 %165, 7
  br i1 %169, label %170, label %178

170:                                              ; preds = %168
  %171 = getelementptr inbounds nuw i8, ptr %19, i64 %163
  store i8 %164, ptr %171, align 1
  %172 = add i64 %163, 1
  store i64 %172, ptr %15, align 8
  %173 = icmp eq i64 %172, %1
  br i1 %173, label %174, label %177

174:                                              ; preds = %170
  %175 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %176 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %175)
  call void @exit(i32 noundef 1) #9
  unreachable

177:                                              ; preds = %170
  %.pre5 = load i8, ptr %144, align 1
  br label %181

178:                                              ; preds = %168
  %179 = add nsw i32 %165, 1
  %180 = shl i8 %164, 1
  br label %181

181:                                              ; preds = %178, %177
  %182 = phi i8 [ %159, %178 ], [ %.pre5, %177 ]
  %183 = phi i64 [ %163, %178 ], [ %172, %177 ]
  %184 = phi i8 [ %180, %178 ], [ 0, %177 ]
  %185 = phi i32 [ %179, %178 ], [ 0, %177 ]
  %.pre-phi = zext i8 %182 to i64
  %186 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %.pre-phi
  %187 = load i32, ptr %186, align 4
  %188 = zext i32 %187 to i64
  %189 = and i64 %160, %188
  %.not14 = icmp eq i64 %189, 0
  br i1 %.not14, label %192, label %190

190:                                              ; preds = %181
  %191 = or disjoint i8 %184, 1
  br label %192

192:                                              ; preds = %190, %181
  %193 = phi i8 [ %191, %190 ], [ %184, %181 ]
  %194 = lshr i64 %160, 1
  store i64 %194, ptr %7, align 8
  %195 = add i64 %162, 1
  %.phi.trans.insert3 = getelementptr inbounds nuw i8, ptr %14, i64 %.pre-phi
  %.pre4 = load i8, ptr %.phi.trans.insert3, align 1
  br label %158, !llvm.loop !15

196:                                              ; preds = %158
  %197 = getelementptr inbounds nuw i8, ptr %144, i64 1
  store ptr %197, ptr %8, align 8
  %198 = add i64 %storemerge, 1
  br label %143, !llvm.loop !16

199:                                              ; preds = %143
  %200 = sub nsw i32 7, %147
  %201 = zext i8 %146 to i32
  %202 = shl i32 %201, %200
  %203 = trunc i32 %202 to i8
  %204 = getelementptr inbounds nuw i8, ptr %19, i64 %145
  store i8 %203, ptr %204, align 1
  %205 = load i64, ptr %15, align 8
  %206 = add i64 %205, 1
  store i64 %206, ptr %15, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %16, i8 0, i64 1024, i1 false)
  br label %207

207:                                              ; preds = %242, %199
  %storemerge7 = phi i64 [ 0, %199 ], [ %243, %242 ]
  %208 = phi ptr [ %17, %199 ], [ %212, %242 ]
  store i64 %storemerge7, ptr %5, align 8
  %209 = icmp samesign ult i64 %storemerge7, 256
  br i1 %209, label %210, label %244

210:                                              ; preds = %207
  %211 = trunc nuw i64 %storemerge7 to i8
  store i8 %211, ptr %208, align 1
  %212 = getelementptr inbounds nuw i8, ptr %208, i64 1
  %213 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %storemerge7
  %214 = load i32, ptr %213, align 4
  %215 = getelementptr inbounds nuw i8, ptr %14, i64 %storemerge7
  %216 = load i8, ptr %215, align 1
  %217 = zext i8 %216 to i32
  %218 = or i32 %214, %217
  %.not12 = icmp eq i32 %218, 0
  br i1 %.not12, label %242, label %219

219:                                              ; preds = %210
  %220 = add nsw i32 %217, -1
  %221 = shl nuw i32 1, %220
  %222 = sext i32 %221 to i64
  store i64 %222, ptr %7, align 8
  br label %223

223:                                              ; preds = %236, %219
  %224 = phi i64 [ %238, %236 ], [ %222, %219 ]
  %225 = phi i32 [ %237, %236 ], [ 0, %219 ]
  %226 = phi i64 [ %239, %236 ], [ 0, %219 ]
  %227 = zext i8 %216 to i64
  %228 = icmp ult i64 %226, %227
  br i1 %228, label %229, label %240

229:                                              ; preds = %223
  %230 = shl i32 %225, 1
  %231 = or disjoint i32 %230, 1
  %232 = zext i32 %214 to i64
  %233 = and i64 %224, %232
  %.not13 = icmp eq i64 %233, 0
  br i1 %.not13, label %236, label %234

234:                                              ; preds = %229
  %235 = add i32 %230, 2
  br label %236

236:                                              ; preds = %234, %229
  %237 = phi i32 [ %235, %234 ], [ %231, %229 ]
  %238 = lshr i64 %224, 1
  store i64 %238, ptr %7, align 8
  %239 = add i64 %226, 1
  br label %223, !llvm.loop !17

240:                                              ; preds = %223
  %241 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %storemerge7
  store i32 %225, ptr %241, align 4
  br label %242

242:                                              ; preds = %240, %210
  %243 = add nuw nsw i64 %storemerge7, 1
  br label %207, !llvm.loop !18

244:                                              ; preds = %207
  br label %245

245:                                              ; preds = %270, %244
  %246 = phi i64 [ %273, %270 ], [ 1, %244 ]
  %247 = icmp samesign ult i64 %246, 256
  br i1 %247, label %248, label %274

248:                                              ; preds = %245
  %249 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %246
  %250 = load i32, ptr %249, align 4
  %251 = getelementptr inbounds nuw i8, ptr %17, i64 %246
  %252 = load i8, ptr %251, align 1
  br label %253

253:                                              ; preds = %261, %248
  %storemerge10 = phi i64 [ %246, %248 ], [ %269, %261 ]
  store i64 %storemerge10, ptr %5, align 8
  %.not11 = icmp eq i64 %storemerge10, 0
  br i1 %.not11, label %259, label %254

254:                                              ; preds = %253
  %255 = getelementptr [4 x i8], ptr %16, i64 %storemerge10
  %256 = getelementptr i8, ptr %255, i64 -4
  %257 = load i32, ptr %256, align 4
  %258 = icmp ugt i32 %257, %250
  br label %259

259:                                              ; preds = %254, %253
  %260 = phi i1 [ false, %253 ], [ %258, %254 ]
  br i1 %260, label %261, label %270

261:                                              ; preds = %259
  %262 = add i64 %storemerge10, -1
  %263 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %262
  %264 = load i32, ptr %263, align 4
  %265 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %storemerge10
  store i32 %264, ptr %265, align 4
  %266 = getelementptr inbounds nuw i8, ptr %17, i64 %262
  %267 = load i8, ptr %266, align 1
  %268 = getelementptr inbounds nuw i8, ptr %17, i64 %storemerge10
  store i8 %267, ptr %268, align 1
  %269 = add i64 %storemerge10, -1
  br label %253, !llvm.loop !19

270:                                              ; preds = %259
  %271 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %storemerge10
  store i32 %250, ptr %271, align 4
  %272 = getelementptr inbounds nuw i8, ptr %17, i64 %storemerge10
  store i8 %252, ptr %272, align 1
  %273 = add nuw nsw i64 %246, 1
  br label %245, !llvm.loop !20

274:                                              ; preds = %245
  br label %275

275:                                              ; preds = %279, %274
  %storemerge8 = phi i64 [ 0, %274 ], [ %280, %279 ]
  store i64 %storemerge8, ptr %5, align 8
  %276 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %storemerge8
  %277 = load i32, ptr %276, align 4
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %281

279:                                              ; preds = %275
  %280 = add i64 %storemerge8, 1
  br label %275, !llvm.loop !21

281:                                              ; preds = %275
  store i64 128, ptr %7, align 8
  store i64 0, ptr %6, align 8
  %282 = load ptr, ptr %9, align 8
  %283 = load ptr, ptr %3, align 8
  store ptr %283, ptr %8, align 8
  %.pre = load i64, ptr %4, align 8
  br label %284

284:                                              ; preds = %330, %281
  %285 = phi ptr [ %321, %330 ], [ %283, %281 ]
  %286 = phi i64 [ %322, %330 ], [ %storemerge8, %281 ]
  %287 = phi i64 [ %331, %330 ], [ 128, %281 ]
  %288 = phi ptr [ %332, %330 ], [ %282, %281 ]
  %289 = phi i32 [ %323, %330 ], [ 0, %281 ]
  %290 = phi i64 [ %324, %330 ], [ 0, %281 ]
  %291 = icmp ult i64 %290, %.pre
  br i1 %291, label %292, label %333

292:                                              ; preds = %284
  %293 = shl i32 %289, 1
  %294 = or disjoint i32 %293, 1
  %295 = load i8, ptr %288, align 1
  %296 = zext i8 %295 to i64
  %297 = and i64 %287, %296
  %.not9 = icmp eq i64 %297, 0
  br i1 %.not9, label %300, label %298

298:                                              ; preds = %292
  %299 = add i32 %293, 2
  br label %300

300:                                              ; preds = %298, %292
  %301 = phi i32 [ %299, %298 ], [ %294, %292 ]
  br label %302

302:                                              ; preds = %307, %300
  %303 = phi i64 [ %308, %307 ], [ %286, %300 ]
  %304 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %303
  %305 = load i32, ptr %304, align 4
  %306 = icmp ult i32 %305, %301
  br i1 %306, label %307, label %309

307:                                              ; preds = %302
  %308 = add i64 %303, 1
  br label %302, !llvm.loop !22

309:                                              ; preds = %302
  %310 = icmp eq i32 %301, %305
  br i1 %310, label %311, label %319

311:                                              ; preds = %309
  %312 = getelementptr inbounds nuw i8, ptr %17, i64 %303
  %313 = load i8, ptr %312, align 1
  store i8 %313, ptr %285, align 1
  %314 = load ptr, ptr %8, align 8
  %315 = getelementptr inbounds nuw i8, ptr %314, i64 1
  store ptr %315, ptr %8, align 8
  %316 = load i64, ptr %6, align 8
  %317 = add i64 %316, 1
  store i64 %317, ptr %6, align 8
  %318 = load i64, ptr %5, align 8
  %.pre1 = load i64, ptr %7, align 8
  br label %319

319:                                              ; preds = %311, %309
  %320 = phi i64 [ %.pre1, %311 ], [ %287, %309 ]
  %321 = phi ptr [ %315, %311 ], [ %285, %309 ]
  %322 = phi i64 [ %318, %311 ], [ %303, %309 ]
  %323 = phi i32 [ 0, %311 ], [ %301, %309 ]
  %324 = phi i64 [ %317, %311 ], [ %290, %309 ]
  %325 = icmp ugt i64 %320, 1
  br i1 %325, label %326, label %328

326:                                              ; preds = %319
  %327 = lshr i64 %320, 1
  store i64 %327, ptr %7, align 8
  br label %330

328:                                              ; preds = %319
  store i64 128, ptr %7, align 8
  %329 = getelementptr inbounds nuw i8, ptr %288, i64 1
  br label %330

330:                                              ; preds = %328, %326
  %331 = phi i64 [ 128, %328 ], [ %327, %326 ]
  %332 = phi ptr [ %329, %328 ], [ %288, %326 ]
  br label %284, !llvm.loop !23

333:                                              ; preds = %284
  call void @free(ptr noundef %282) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal void @heap_adjust(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = sext i32 %3 to i64
  %6 = getelementptr [8 x i8], ptr %1, i64 %5
  %7 = getelementptr i8, ptr %6, i64 -8
  %8 = load i64, ptr %7, align 8
  br label %9

9:                                                ; preds = %43, %4
  %10 = phi i32 [ %31, %43 ], [ %3, %4 ]
  %11 = sdiv i32 %2, 2
  %.not = icmp sgt i32 %10, %11
  br i1 %.not, label %._crit_edge, label %12

._crit_edge:                                      ; preds = %9
  %sext = shl i64 %8, 32
  %.pre = ashr exact i64 %sext, 32
  br label %47

12:                                               ; preds = %9
  %13 = shl nsw i32 %10, 1
  %14 = icmp slt i32 %13, %2
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = sext i32 %13 to i64
  %17 = getelementptr [8 x i8], ptr %1, i64 %16
  %18 = getelementptr i8, ptr %17, i64 -8
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %19
  %21 = load i64, ptr %20, align 8
  %22 = sext i32 %13 to i64
  %23 = getelementptr inbounds [8 x i8], ptr %1, i64 %22
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %24
  %26 = load i64, ptr %25, align 8
  %27 = icmp ugt i64 %21, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = or disjoint i32 %13, 1
  br label %30

30:                                               ; preds = %28, %15, %12
  %31 = phi i32 [ %29, %28 ], [ %13, %15 ], [ %13, %12 ]
  %sext1 = shl i64 %8, 32
  %32 = ashr exact i64 %sext1, 32
  %33 = getelementptr inbounds [8 x i8], ptr %0, i64 %32
  %34 = load i64, ptr %33, align 8
  %35 = sext i32 %31 to i64
  %36 = getelementptr [8 x i8], ptr %1, i64 %35
  %37 = getelementptr i8, ptr %36, i64 -8
  %38 = load i64, ptr %37, align 8
  %39 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %38
  %40 = load i64, ptr %39, align 8
  %41 = icmp ult i64 %34, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  br label %47

43:                                               ; preds = %30
  %44 = sext i32 %10 to i64
  %45 = getelementptr [8 x i8], ptr %1, i64 %44
  %46 = getelementptr i8, ptr %45, i64 -8
  store i64 %38, ptr %46, align 8
  br label %9, !llvm.loop !24

47:                                               ; preds = %._crit_edge, %42
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %32, %42 ]
  %48 = sext i32 %10 to i64
  %49 = getelementptr [8 x i8], ptr %1, i64 %48
  %50 = getelementptr i8, ptr %49, i64 -8
  store i64 %.pre-phi, ptr %50, align 8
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
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %4, label %16

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %13, %4
  %6 = phi i32 [ %14, %13 ], [ 1, %4 ]
  %7 = icmp sge i32 %6, %0
  br i1 %7, label %15, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %10 = load ptr, ptr %9, align 8
  %11 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(4) @.str.4) #8
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %12, label %13

12:                                               ; preds = %8
  br label %15

13:                                               ; preds = %8
  %14 = add nuw nsw i32 %6, 1
  br label %5, !llvm.loop !25

15:                                               ; preds = %12, %5
  br label %16

16:                                               ; preds = %15, %2
  %.not1 = phi i1 [ %7, %15 ], [ true, %2 ]
  %17 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %18

18:                                               ; preds = %21, %16
  %19 = phi i32 [ %22, %21 ], [ 0, %16 ]
  %20 = icmp samesign ult i32 %19, 30
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  call void @compdecomp(ptr noundef %17, i64 noundef 10000000)
  %22 = add nuw nsw i32 %19, 1
  br label %18, !llvm.loop !26

23:                                               ; preds = %18
  call void @free(ptr noundef %17) #8
  br i1 %.not1, label %27, label %24

24:                                               ; preds = %23
  %25 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.5, double noundef 0.000000e+00) #8
  br label %30

27:                                               ; preds = %23
  %28 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.6, double noundef 0.000000e+00) #8
  br label %30

30:                                               ; preds = %27, %24
  %31 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %32 = call i32 @fflush(ptr noundef %31) #8
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
  %11 = phi i32 [ %9, %8 ], [ %6, %0 ]
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
