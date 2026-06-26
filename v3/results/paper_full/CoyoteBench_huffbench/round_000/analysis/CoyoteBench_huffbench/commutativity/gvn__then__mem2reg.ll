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
  %2 = call ptr @malloc(i64 noundef %0) #6
  br label %3

3:                                                ; preds = %8, %1
  %4 = phi ptr [ %12, %8 ], [ %2, %1 ]
  %5 = phi i32 [ %13, %8 ], [ 0, %1 ]
  %6 = sext i32 %5 to i64
  %7 = icmp ult i64 %6, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = call i64 @random4()
  %10 = getelementptr inbounds nuw i8, ptr @.str, i64 %9
  %11 = load i8, ptr %10, align 1
  store i8 %11, ptr %4, align 1
  %12 = getelementptr inbounds nuw i8, ptr %4, i32 1
  %13 = add nsw i32 %5, 1
  br label %3, !llvm.loop !7

14:                                               ; preds = %3
  ret ptr %2
}

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @compdecomp(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca [512 x i64], align 16
  %4 = alloca [256 x i64], align 16
  %5 = alloca [512 x i32], align 16
  %6 = alloca [256 x i32], align 16
  %7 = alloca [256 x i8], align 16
  %8 = alloca [256 x i32], align 16
  %9 = alloca [256 x i8], align 16
  %10 = add i64 %1, 1
  %11 = call ptr @malloc(i64 noundef %10) #6
  call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %10, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %5, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %6, i8 0, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %7, i8 0, i64 256, i1 false)
  br label %12

12:                                               ; preds = %16, %2
  %13 = phi ptr [ %22, %16 ], [ %0, %2 ]
  %14 = phi i64 [ %23, %16 ], [ 0, %2 ]
  %15 = icmp ult i64 %14, %1
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load i8, ptr %13, align 1
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %18
  %20 = load i64, ptr %19, align 8
  %21 = add i64 %20, 1
  store i64 %21, ptr %19, align 8
  %22 = getelementptr inbounds nuw i8, ptr %13, i32 1
  %23 = add i64 %14, 1
  br label %12, !llvm.loop !9

24:                                               ; preds = %12
  br label %25

25:                                               ; preds = %36, %24
  %26 = phi i64 [ %37, %36 ], [ 0, %24 ]
  %27 = phi i64 [ %38, %36 ], [ 0, %24 ]
  %28 = icmp ult i64 %27, 256
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %27
  %31 = load i64, ptr %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %26
  store i64 %27, ptr %34, align 8
  %35 = add i64 %26, 1
  br label %36

36:                                               ; preds = %33, %29
  %37 = phi i64 [ %35, %33 ], [ %26, %29 ]
  %38 = add i64 %27, 1
  br label %25, !llvm.loop !10

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %43, %39
  %41 = phi i64 [ %46, %43 ], [ %26, %39 ]
  %42 = icmp ugt i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = trunc i64 %26 to i32
  %45 = trunc i64 %41 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %44, i32 noundef %45)
  %46 = add i64 %41, -1
  br label %40, !llvm.loop !11

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %51, %47
  %49 = phi i64 [ %52, %51 ], [ %26, %47 ]
  %50 = icmp ugt i64 %49, 1
  br i1 %50, label %51, label %70

51:                                               ; preds = %48
  %52 = add i64 %49, -1
  %53 = load i64, ptr %4, align 16
  %54 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %52
  %55 = load i64, ptr %54, align 8
  store i64 %55, ptr %4, align 16
  %56 = trunc i64 %52 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %56, i32 noundef 1)
  %57 = load i64, ptr %4, align 16
  %58 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %57
  %59 = load i64, ptr %58, align 8
  %60 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %53
  %61 = load i64, ptr %60, align 8
  %62 = add i64 %59, %61
  %63 = add i64 256, %52
  %64 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %63
  store i64 %62, ptr %64, align 8
  %65 = trunc i64 %63 to i32
  %66 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %53
  store i32 %65, ptr %66, align 4
  %67 = sub i64 -256, %52
  %68 = trunc i64 %67 to i32
  %69 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %57
  store i32 %68, ptr %69, align 4
  store i64 %63, ptr %4, align 16
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %56, i32 noundef 1)
  br label %48, !llvm.loop !12

70:                                               ; preds = %48
  %71 = add i64 256, %49
  %72 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %71
  store i32 0, ptr %72, align 4
  br label %73

73:                                               ; preds = %122, %70
  %74 = phi i64 [ %123, %122 ], [ 0, %70 ]
  %75 = phi i64 [ %124, %122 ], [ 0, %70 ]
  %76 = phi i64 [ %125, %122 ], [ 0, %70 ]
  %77 = phi i64 [ %126, %122 ], [ 0, %70 ]
  %78 = phi i64 [ %127, %122 ], [ 0, %70 ]
  %79 = icmp ult i64 %78, 256
  br i1 %79, label %80, label %128

80:                                               ; preds = %73
  %81 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %78
  %82 = load i64, ptr %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %78
  store i32 0, ptr %85, align 4
  %86 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %78
  store i8 0, ptr %86, align 1
  br label %122

87:                                               ; preds = %80
  %88 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %78
  %89 = load i32, ptr %88, align 4
  br label %90

90:                                               ; preds = %101, %87
  %91 = phi i64 [ %107, %101 ], [ 1, %87 ]
  %92 = phi i64 [ %108, %101 ], [ 0, %87 ]
  %93 = phi i64 [ %103, %101 ], [ 0, %87 ]
  %94 = phi i32 [ %106, %101 ], [ %89, %87 ]
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %90
  %97 = icmp slt i32 %94, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %96
  %99 = add i64 %93, %91
  %100 = sub nsw i32 0, %94
  br label %101

101:                                              ; preds = %98, %96
  %102 = phi i32 [ %100, %98 ], [ %94, %96 ]
  %103 = phi i64 [ %99, %98 ], [ %93, %96 ]
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %104
  %106 = load i32, ptr %105, align 4
  %107 = shl i64 %91, 1
  %108 = add i64 %92, 1
  br label %90, !llvm.loop !13

109:                                              ; preds = %90
  %110 = trunc i64 %93 to i32
  %111 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %78
  store i32 %110, ptr %111, align 4
  %112 = trunc i64 %92 to i8
  %113 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %78
  store i8 %112, ptr %113, align 1
  %114 = icmp ugt i64 %93, %75
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %116

116:                                              ; preds = %115, %109
  %117 = phi i64 [ %93, %115 ], [ %75, %109 ]
  %118 = icmp ugt i64 %92, %74
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  br label %120

120:                                              ; preds = %119, %116
  %121 = phi i64 [ %92, %119 ], [ %74, %116 ]
  br label %122

122:                                              ; preds = %120, %84
  %123 = phi i64 [ %121, %120 ], [ %74, %84 ]
  %124 = phi i64 [ %117, %120 ], [ %75, %84 ]
  %125 = phi i64 [ %117, %120 ], [ %76, %84 ]
  %126 = phi i64 [ %121, %120 ], [ %77, %84 ]
  %127 = add i64 %78, 1
  br label %73, !llvm.loop !14

128:                                              ; preds = %73
  %129 = icmp ugt i64 %77, 32
  br i1 %129, label %130, label %133

130:                                              ; preds = %128
  %131 = call ptr @__acrt_iob_func(i32 noundef 2)
  %132 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %131, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

133:                                              ; preds = %128
  %134 = icmp eq i64 %76, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %133
  %136 = call ptr @__acrt_iob_func(i32 noundef 2)
  %137 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %136, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

138:                                              ; preds = %133
  br label %139

139:                                              ; preds = %206, %138
  %.010 = phi i64 [ 0, %138 ], [ %.111, %206 ]
  %140 = phi ptr [ %207, %206 ], [ %0, %138 ]
  %141 = phi i64 [ %162, %206 ], [ 0, %138 ]
  %142 = phi ptr [ %163, %206 ], [ %11, %138 ]
  %143 = phi i8 [ %164, %206 ], [ 0, %138 ]
  %144 = phi i32 [ %165, %206 ], [ -1, %138 ]
  %145 = phi i64 [ %166, %206 ], [ %1, %138 ]
  %146 = phi i64 [ %208, %206 ], [ 0, %138 ]
  %147 = icmp ult i64 %146, %145
  br i1 %147, label %148, label %209

148:                                              ; preds = %139
  %149 = load i8, ptr %140, align 1
  %150 = zext i8 %149 to i64
  %151 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %150
  %152 = load i8, ptr %151, align 1
  %153 = zext i8 %152 to i32
  %154 = sub nsw i32 %153, 1
  %155 = shl i32 1, %154
  %156 = sext i32 %155 to i64
  br label %157

157:                                              ; preds = %202, %148
  %.111 = phi i64 [ %.010, %148 ], [ %.2, %202 ]
  %158 = phi i8 [ %187, %202 ], [ %149, %148 ]
  %159 = phi i64 [ %204, %202 ], [ %156, %148 ]
  %160 = phi i8 [ %.pre4, %202 ], [ %152, %148 ]
  %161 = phi i64 [ %205, %202 ], [ 0, %148 ]
  %162 = phi i64 [ %188, %202 ], [ %141, %148 ]
  %163 = phi ptr [ %189, %202 ], [ %142, %148 ]
  %164 = phi i8 [ %203, %202 ], [ %143, %148 ]
  %165 = phi i32 [ %191, %202 ], [ %144, %148 ]
  %166 = phi i64 [ %192, %202 ], [ %145, %148 ]
  %167 = zext i8 %158 to i64
  %168 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %167
  %169 = zext i8 %160 to i64
  %170 = icmp ult i64 %161, %169
  br i1 %170, label %171, label %206

171:                                              ; preds = %157
  %172 = icmp eq i32 %165, 7
  br i1 %172, label %173, label %181

173:                                              ; preds = %171
  %174 = getelementptr inbounds nuw i8, ptr %11, i64 %162
  store i8 %164, ptr %174, align 1
  %175 = add i64 %162, 1
  %176 = icmp eq i64 %175, %1
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = call ptr @__acrt_iob_func(i32 noundef 2)
  %179 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %178, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

180:                                              ; preds = %173
  %.pre5 = load i8, ptr %140, align 1
  %.pre6 = zext i8 %.pre5 to i64
  br label %186

181:                                              ; preds = %171
  %182 = add nsw i32 %165, 1
  %183 = sext i8 %164 to i32
  %184 = shl i32 %183, 1
  %185 = trunc i32 %184 to i8
  br label %186

186:                                              ; preds = %181, %180
  %.2 = phi i64 [ %175, %180 ], [ %.111, %181 ]
  %.pre-phi = phi i64 [ %167, %181 ], [ %.pre6, %180 ]
  %187 = phi i8 [ %158, %181 ], [ %.pre5, %180 ]
  %188 = phi i64 [ %162, %181 ], [ %175, %180 ]
  %189 = phi ptr [ %163, %181 ], [ %11, %180 ]
  %190 = phi i8 [ %185, %181 ], [ 0, %180 ]
  %191 = phi i32 [ %182, %181 ], [ 0, %180 ]
  %192 = phi i64 [ %166, %181 ], [ %1, %180 ]
  %193 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.pre-phi
  %194 = load i32, ptr %193, align 4
  %195 = zext i32 %194 to i64
  %196 = and i64 %195, %159
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %186
  %199 = sext i8 %190 to i32
  %200 = or i32 %199, 1
  %201 = trunc i32 %200 to i8
  br label %202

202:                                              ; preds = %198, %186
  %203 = phi i8 [ %201, %198 ], [ %190, %186 ]
  %204 = lshr i64 %159, 1
  %205 = add i64 %161, 1
  %.phi.trans.insert3 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.pre-phi
  %.pre4 = load i8, ptr %.phi.trans.insert3, align 1
  br label %157, !llvm.loop !15

206:                                              ; preds = %157
  %207 = getelementptr inbounds nuw i8, ptr %140, i32 1
  %208 = add i64 %146, 1
  br label %139, !llvm.loop !16

209:                                              ; preds = %139
  %210 = sub nsw i32 7, %144
  %211 = sext i8 %143 to i32
  %212 = shl i32 %211, %210
  %213 = trunc i32 %212 to i8
  %214 = getelementptr inbounds nuw i8, ptr %142, i64 %141
  store i8 %213, ptr %214, align 1
  %215 = add i64 %.010, 1
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 1024, i1 false)
  br label %216

216:                                              ; preds = %254, %209
  %217 = phi ptr [ %222, %254 ], [ %9, %209 ]
  %218 = phi i64 [ %255, %254 ], [ 0, %209 ]
  %219 = icmp ult i64 %218, 256
  br i1 %219, label %220, label %256

220:                                              ; preds = %216
  %221 = trunc i64 %218 to i8
  store i8 %221, ptr %217, align 1
  %222 = getelementptr inbounds nuw i8, ptr %217, i32 1
  %223 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %218
  %224 = load i32, ptr %223, align 4
  %225 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %218
  %226 = load i8, ptr %225, align 1
  %227 = zext i8 %226 to i32
  %228 = or i32 %224, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %254

230:                                              ; preds = %220
  %231 = sub nsw i32 %227, 1
  %232 = shl i32 1, %231
  %233 = sext i32 %232 to i64
  br label %234

234:                                              ; preds = %248, %230
  %235 = phi i64 [ %250, %248 ], [ %233, %230 ]
  %236 = phi i32 [ %249, %248 ], [ 0, %230 ]
  %237 = phi i64 [ %251, %248 ], [ 0, %230 ]
  %238 = zext i8 %226 to i64
  %239 = icmp ult i64 %237, %238
  br i1 %239, label %240, label %252

240:                                              ; preds = %234
  %241 = mul i32 %236, 2
  %242 = add i32 %241, 1
  %243 = zext i32 %224 to i64
  %244 = and i64 %243, %235
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %240
  %247 = add i32 %242, 1
  br label %248

248:                                              ; preds = %246, %240
  %249 = phi i32 [ %247, %246 ], [ %242, %240 ]
  %250 = lshr i64 %235, 1
  %251 = add i64 %237, 1
  br label %234, !llvm.loop !17

252:                                              ; preds = %234
  %253 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %218
  store i32 %236, ptr %253, align 4
  br label %254

254:                                              ; preds = %252, %220
  %255 = add i64 %218, 1
  br label %216, !llvm.loop !18

256:                                              ; preds = %216
  br label %257

257:                                              ; preds = %284, %256
  %258 = phi i64 [ %287, %284 ], [ 1, %256 ]
  %259 = icmp ult i64 %258, 256
  br i1 %259, label %260, label %288

260:                                              ; preds = %257
  %261 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %258
  %262 = load i32, ptr %261, align 4
  %263 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %258
  %264 = load i8, ptr %263, align 1
  br label %265

265:                                              ; preds = %275, %260
  %266 = phi i64 [ %283, %275 ], [ %258, %260 ]
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %273

268:                                              ; preds = %265
  %269 = sub i64 %266, 1
  %270 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %269
  %271 = load i32, ptr %270, align 4
  %272 = icmp ugt i32 %271, %262
  br label %273

273:                                              ; preds = %268, %265
  %274 = phi i1 [ false, %265 ], [ %272, %268 ]
  br i1 %274, label %275, label %284

275:                                              ; preds = %273
  %276 = sub i64 %266, 1
  %277 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %276
  %278 = load i32, ptr %277, align 4
  %279 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %266
  store i32 %278, ptr %279, align 4
  %280 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %276
  %281 = load i8, ptr %280, align 1
  %282 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %266
  store i8 %281, ptr %282, align 1
  %283 = add i64 %266, -1
  br label %265, !llvm.loop !19

284:                                              ; preds = %273
  %285 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %266
  store i32 %262, ptr %285, align 4
  %286 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %266
  store i8 %264, ptr %286, align 1
  %287 = add i64 %258, 1
  br label %257, !llvm.loop !20

288:                                              ; preds = %257
  br label %289

289:                                              ; preds = %294, %288
  %.0 = phi i64 [ 0, %288 ], [ %295, %294 ]
  %290 = phi i64 [ %295, %294 ], [ 0, %288 ]
  %291 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %290
  %292 = load i32, ptr %291, align 4
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %289
  %295 = add i64 %290, 1
  br label %289, !llvm.loop !21

296:                                              ; preds = %289
  br label %297

297:                                              ; preds = %341, %296
  %.012 = phi ptr [ %0, %296 ], [ %.113, %341 ]
  %.08 = phi i64 [ 128, %296 ], [ %.19, %341 ]
  %.07 = phi i64 [ 0, %296 ], [ %.1, %341 ]
  %298 = phi ptr [ %332, %341 ], [ %0, %296 ]
  %299 = phi i64 [ %333, %341 ], [ %290, %296 ]
  %300 = phi i64 [ %342, %341 ], [ 128, %296 ]
  %301 = phi ptr [ %343, %341 ], [ %11, %296 ]
  %302 = phi i32 [ %334, %341 ], [ 0, %296 ]
  %303 = phi i64 [ %335, %341 ], [ 0, %296 ]
  %304 = icmp ult i64 %303, %1
  br i1 %304, label %305, label %344

305:                                              ; preds = %297
  %306 = mul i32 %302, 2
  %307 = add i32 %306, 1
  %308 = load i8, ptr %301, align 1
  %309 = zext i8 %308 to i64
  %310 = and i64 %309, %300
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %314

312:                                              ; preds = %305
  %313 = add i32 %307, 1
  br label %314

314:                                              ; preds = %312, %305
  %315 = phi i32 [ %313, %312 ], [ %307, %305 ]
  br label %316

316:                                              ; preds = %321, %314
  %317 = phi i64 [ %322, %321 ], [ %299, %314 ]
  %318 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %317
  %319 = load i32, ptr %318, align 4
  %320 = icmp ult i32 %319, %315
  br i1 %320, label %321, label %323

321:                                              ; preds = %316
  %322 = add i64 %317, 1
  br label %316, !llvm.loop !22

323:                                              ; preds = %316
  %324 = icmp eq i32 %315, %319
  br i1 %324, label %325, label %330

325:                                              ; preds = %323
  %326 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %317
  %327 = load i8, ptr %326, align 1
  store i8 %327, ptr %298, align 1
  %328 = getelementptr inbounds nuw i8, ptr %.012, i32 1
  %329 = add i64 %.07, 1
  br label %330

330:                                              ; preds = %325, %323
  %.113 = phi ptr [ %328, %325 ], [ %.012, %323 ]
  %.1 = phi i64 [ %329, %325 ], [ %.07, %323 ]
  %331 = phi i64 [ %.08, %325 ], [ %300, %323 ]
  %332 = phi ptr [ %328, %325 ], [ %298, %323 ]
  %333 = phi i64 [ %.0, %325 ], [ %317, %323 ]
  %334 = phi i32 [ 0, %325 ], [ %315, %323 ]
  %335 = phi i64 [ %329, %325 ], [ %303, %323 ]
  %336 = icmp ugt i64 %331, 1
  br i1 %336, label %337, label %339

337:                                              ; preds = %330
  %338 = lshr i64 %331, 1
  br label %341

339:                                              ; preds = %330
  %340 = getelementptr inbounds nuw i8, ptr %301, i32 1
  br label %341

341:                                              ; preds = %339, %337
  %.19 = phi i64 [ %338, %337 ], [ 128, %339 ]
  %342 = phi i64 [ 128, %339 ], [ %338, %337 ]
  %343 = phi ptr [ %340, %339 ], [ %301, %337 ]
  br label %297, !llvm.loop !23

344:                                              ; preds = %297
  call void @free(ptr noundef %11)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal void @heap_adjust(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = sub nsw i32 %3, 1
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i64, ptr %1, i64 %6
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i32
  br label %10

10:                                               ; preds = %45, %4
  %11 = phi i32 [ %33, %45 ], [ %3, %4 ]
  %12 = sdiv i32 %2, 2
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %._crit_edge

._crit_edge:                                      ; preds = %10
  %.pre = sext i32 %9 to i64
  br label %49

14:                                               ; preds = %10
  %15 = add nsw i32 %11, %11
  %16 = icmp slt i32 %15, %2
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = sub nsw i32 %15, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, ptr %1, i64 %19
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds nuw i64, ptr %0, i64 %21
  %23 = load i64, ptr %22, align 8
  %24 = sext i32 %15 to i64
  %25 = getelementptr inbounds i64, ptr %1, i64 %24
  %26 = load i64, ptr %25, align 8
  %27 = getelementptr inbounds nuw i64, ptr %0, i64 %26
  %28 = load i64, ptr %27, align 8
  %29 = icmp ugt i64 %23, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %17
  %31 = add nsw i32 %15, 1
  br label %32

32:                                               ; preds = %30, %17, %14
  %33 = phi i32 [ %31, %30 ], [ %15, %17 ], [ %15, %14 ]
  %34 = sext i32 %9 to i64
  %35 = getelementptr inbounds i64, ptr %0, i64 %34
  %36 = load i64, ptr %35, align 8
  %37 = sub nsw i32 %33, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, ptr %1, i64 %38
  %40 = load i64, ptr %39, align 8
  %41 = getelementptr inbounds nuw i64, ptr %0, i64 %40
  %42 = load i64, ptr %41, align 8
  %43 = icmp ult i64 %36, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %49

45:                                               ; preds = %32
  %46 = sub nsw i32 %11, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, ptr %1, i64 %47
  store i64 %40, ptr %48, align 8
  br label %10, !llvm.loop !24

49:                                               ; preds = %._crit_edge, %44
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %34, %44 ]
  %50 = sub nsw i32 %11, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, ptr %1, i64 %51
  store i64 %.pre-phi, ptr %52, align 8
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
  br i1 %3, label %4, label %18

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %14, %4
  %6 = phi i32 [ %15, %14 ], [ 1, %4 ]
  %7 = icmp slt i32 %6, %0
  br i1 %7, label %8, label %16

8:                                                ; preds = %5
  %9 = getelementptr inbounds ptr, ptr %1, i64 1
  %10 = load ptr, ptr %9, align 8
  %11 = call i32 @strcmp(ptr noundef %10, ptr noundef @.str.4) #7
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  br label %16

14:                                               ; preds = %8
  %15 = add nsw i32 %6, 1
  br label %5, !llvm.loop !25

16:                                               ; preds = %13, %5
  %17 = phi i8 [ 1, %13 ], [ 0, %5 ]
  br label %18

18:                                               ; preds = %16, %2
  %19 = phi i8 [ %17, %16 ], [ 0, %2 ]
  %20 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %21

21:                                               ; preds = %24, %18
  %22 = phi i32 [ %25, %24 ], [ 0, %18 ]
  %23 = icmp slt i32 %22, 30
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  call void @compdecomp(ptr noundef %20, i64 noundef 10000000)
  %25 = add nsw i32 %22, 1
  br label %21, !llvm.loop !26

26:                                               ; preds = %21
  call void @free(ptr noundef %20)
  %27 = icmp ne i8 %19, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = call ptr @__acrt_iob_func(i32 noundef 1)
  %30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef @.str.5, double noundef 0.000000e+00) #7
  br label %34

31:                                               ; preds = %26
  %32 = call ptr @__acrt_iob_func(i32 noundef 1)
  %33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str.6, double noundef 0.000000e+00) #7
  br label %34

34:                                               ; preds = %31, %28
  %35 = call ptr @__acrt_iob_func(i32 noundef 1)
  %36 = call i32 @fflush(ptr noundef %35)
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
  %4 = mul nsw i32 %3, 127773
  %5 = sub nsw i32 %2, %4
  %6 = mul nsw i32 16807, %5
  %7 = mul nsw i32 2836, %3
  %8 = sub nsw i32 %6, %7
  store i32 %8, ptr @seed, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = add nsw i32 %8, 2147483647
  store i32 %11, ptr @seed, align 4
  br label %12

12:                                               ; preds = %10, %0
  %13 = phi i32 [ %11, %10 ], [ %8, %0 ]
  %14 = srem i32 %13, 32
  %15 = sext i32 %14 to i64
  %16 = xor i32 %13, 123459876
  store i32 %16, ptr @seed, align 4
  ret i64 %15
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
