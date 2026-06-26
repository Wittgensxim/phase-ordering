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
  store i32 0, ptr %6, align 4
  %8 = load i64, ptr %2, align 8
  %9 = icmp ugt i64 %8, 0
  br i1 %9, label %.lr.ph, label %23

.lr.ph:                                           ; preds = %1
  br label %10

10:                                               ; preds = %.lr.ph, %17
  %11 = load ptr, ptr %3, align 8
  %12 = call i64 @random4()
  %13 = getelementptr inbounds nuw i8, ptr %11, i64 %12
  %14 = load i8, ptr %13, align 1
  %15 = load ptr, ptr %5, align 8
  store i8 %14, ptr %15, align 1
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 1
  store ptr %16, ptr %5, align 8
  br label %17

17:                                               ; preds = %10
  %18 = load i32, ptr %6, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %6, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, ptr %2, align 8
  %22 = icmp ugt i64 %21, %20
  br i1 %22, label %10, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %17
  br label %23

23:                                               ; preds = %._crit_edge, %1
  %24 = load ptr, ptr %4, align 8
  ret ptr %24
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
  store i64 0, ptr %5, align 8
  %35 = load i64, ptr %4, align 8
  %36 = icmp ult i64 0, %35
  br i1 %36, label %.lr.ph, label %51

.lr.ph:                                           ; preds = %2
  br label %37

37:                                               ; preds = %.lr.ph, %46
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
  store i64 %48, ptr %5, align 8
  %49 = load i64, ptr %4, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %37, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %46
  br label %51

51:                                               ; preds = %._crit_edge, %2
  store i64 0, ptr %7, align 8
  store i64 0, ptr %5, align 8
  br label %52

52:                                               ; preds = %51, %62
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

61:                                               ; preds = %56, %52
  br label %62

62:                                               ; preds = %61
  %63 = load i64, ptr %5, align 8
  %64 = add i64 %63, 1
  store i64 %64, ptr %5, align 8
  %65 = icmp ult i64 %64, 256
  br i1 %65, label %52, label %66, !llvm.loop !10

66:                                               ; preds = %62
  %67 = load i64, ptr %7, align 8
  store i64 %67, ptr %5, align 8
  %.not20 = icmp eq i64 %67, 0
  br i1 %.not20, label %76, label %.lr.ph22

.lr.ph22:                                         ; preds = %66
  br label %68

68:                                               ; preds = %.lr.ph22, %73
  %69 = load i64, ptr %7, align 8
  %70 = trunc i64 %69 to i32
  %71 = load i64, ptr %5, align 8
  %72 = trunc i64 %71 to i32
  call void @heap_adjust(ptr noundef nonnull %15, ptr noundef nonnull %16, i32 noundef %70, i32 noundef %72)
  br label %73

73:                                               ; preds = %68
  %74 = load i64, ptr %5, align 8
  %75 = add i64 %74, -1
  store i64 %75, ptr %5, align 8
  %.not = icmp eq i64 %75, 0
  br i1 %.not, label %._crit_edge23, label %68, !llvm.loop !11

._crit_edge23:                                    ; preds = %73
  br label %76

76:                                               ; preds = %._crit_edge23, %66
  %77 = load i64, ptr %7, align 8
  %78 = icmp ugt i64 %77, 1
  br i1 %78, label %.lr.ph25, label %110

.lr.ph25:                                         ; preds = %76
  br label %79

79:                                               ; preds = %.lr.ph25, %79
  %80 = load i64, ptr %7, align 8
  %81 = add i64 %80, -1
  store i64 %81, ptr %7, align 8
  %82 = load i64, ptr %16, align 16
  store i64 %82, ptr %20, align 8
  %83 = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %81
  %84 = load i64, ptr %83, align 8
  store i64 %84, ptr %16, align 16
  %85 = trunc i64 %81 to i32
  call void @heap_adjust(ptr noundef nonnull %15, ptr noundef nonnull %16, i32 noundef %85, i32 noundef 1)
  %86 = load i64, ptr %16, align 16
  %87 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %86
  %88 = load i64, ptr %87, align 8
  %89 = load i64, ptr %20, align 8
  %90 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %89
  %91 = load i64, ptr %90, align 8
  %92 = add i64 %88, %91
  %93 = load i64, ptr %7, align 8
  %94 = getelementptr [8 x i8], ptr %15, i64 %93
  %95 = getelementptr i8, ptr %94, i64 2048
  store i64 %92, ptr %95, align 8
  %96 = trunc i64 %93 to i32
  %97 = add i32 %96, 256
  %98 = load i64, ptr %20, align 8
  %99 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %98
  store i32 %97, ptr %99, align 4
  %100 = load i64, ptr %7, align 8
  %101 = trunc i64 %100 to i32
  %102 = sub i32 -256, %101
  %103 = load i64, ptr %16, align 16
  %104 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %103
  store i32 %102, ptr %104, align 4
  %105 = add i64 %100, 256
  store i64 %105, ptr %16, align 16
  %106 = load i64, ptr %7, align 8
  %107 = trunc i64 %106 to i32
  call void @heap_adjust(ptr noundef nonnull %15, ptr noundef nonnull %16, i32 noundef %107, i32 noundef 1)
  %108 = load i64, ptr %7, align 8
  %109 = icmp ugt i64 %108, 1
  br i1 %109, label %79, label %._crit_edge26, !llvm.loop !12

._crit_edge26:                                    ; preds = %79
  br label %110

110:                                              ; preds = %._crit_edge26, %76
  %111 = load i64, ptr %7, align 8
  %112 = getelementptr [4 x i8], ptr %17, i64 %111
  %113 = getelementptr i8, ptr %112, i64 1024
  store i32 0, ptr %113, align 4
  store i64 0, ptr %23, align 8
  store i64 0, ptr %24, align 8
  store i64 0, ptr %21, align 8
  br label %114

114:                                              ; preds = %110, %167
  %115 = load i64, ptr %21, align 8
  %116 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %115
  %117 = load i64, ptr %116, align 8
  %.not17 = icmp eq i64 %117, 0
  br i1 %.not17, label %118, label %122

118:                                              ; preds = %114
  %119 = load i64, ptr %21, align 8
  %120 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %119
  store i32 0, ptr %120, align 4
  %121 = getelementptr inbounds nuw i8, ptr %19, i64 %119
  store i8 0, ptr %121, align 1
  br label %166

122:                                              ; preds = %114
  store i64 0, ptr %5, align 8
  store i64 1, ptr %6, align 8
  store i64 0, ptr %22, align 8
  %123 = load i64, ptr %21, align 8
  %124 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %123
  %125 = load i32, ptr %124, align 4
  store i32 %125, ptr %25, align 4
  %126 = load i32, ptr %25, align 4
  %.not1827 = icmp eq i32 %126, 0
  br i1 %.not1827, label %146, label %.lr.ph29

.lr.ph29:                                         ; preds = %122
  br label %127

127:                                              ; preds = %.lr.ph29, %136
  %128 = load i32, ptr %25, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %127
  %131 = load i64, ptr %6, align 8
  %132 = load i64, ptr %22, align 8
  %133 = add i64 %132, %131
  store i64 %133, ptr %22, align 8
  %134 = load i32, ptr %25, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, ptr %25, align 4
  br label %136

136:                                              ; preds = %130, %127
  %137 = load i32, ptr %25, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [4 x i8], ptr %17, i64 %138
  %140 = load i32, ptr %139, align 4
  store i32 %140, ptr %25, align 4
  %141 = load i64, ptr %6, align 8
  %142 = shl i64 %141, 1
  store i64 %142, ptr %6, align 8
  %143 = load i64, ptr %5, align 8
  %144 = add i64 %143, 1
  store i64 %144, ptr %5, align 8
  %145 = load i32, ptr %25, align 4
  %.not18 = icmp eq i32 %145, 0
  br i1 %.not18, label %._crit_edge30, label %127, !llvm.loop !13

._crit_edge30:                                    ; preds = %136
  br label %146

146:                                              ; preds = %._crit_edge30, %122
  %147 = load i64, ptr %22, align 8
  %148 = trunc i64 %147 to i32
  %149 = load i64, ptr %21, align 8
  %150 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %149
  store i32 %148, ptr %150, align 4
  %151 = load i64, ptr %5, align 8
  %152 = trunc i64 %151 to i8
  %153 = getelementptr inbounds nuw i8, ptr %19, i64 %149
  store i8 %152, ptr %153, align 1
  %154 = load i64, ptr %22, align 8
  %155 = load i64, ptr %23, align 8
  %156 = icmp ugt i64 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %146
  %158 = load i64, ptr %22, align 8
  store i64 %158, ptr %23, align 8
  br label %159

159:                                              ; preds = %157, %146
  %160 = load i64, ptr %5, align 8
  %161 = load i64, ptr %24, align 8
  %162 = icmp ugt i64 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = load i64, ptr %5, align 8
  store i64 %164, ptr %24, align 8
  br label %165

165:                                              ; preds = %163, %159
  br label %166

166:                                              ; preds = %165, %118
  br label %167

167:                                              ; preds = %166
  %168 = load i64, ptr %21, align 8
  %169 = add i64 %168, 1
  store i64 %169, ptr %21, align 8
  %170 = icmp ult i64 %169, 256
  br i1 %170, label %114, label %171, !llvm.loop !14

171:                                              ; preds = %167
  %172 = load i64, ptr %24, align 8
  %173 = icmp ugt i64 %172, 32
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %176 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %175)
  call void @exit(i32 noundef 1) #9
  unreachable

177:                                              ; preds = %171
  store i64 0, ptr %26, align 8
  store i8 0, ptr %27, align 1
  store i32 -1, ptr %28, align 4
  %178 = load ptr, ptr %3, align 8
  store ptr %178, ptr %13, align 8
  %179 = load i64, ptr %23, align 8
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %177
  %182 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %183 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %182)
  call void @exit(i32 noundef 1) #9
  unreachable

184:                                              ; preds = %177
  store i64 0, ptr %6, align 8
  %185 = load i64, ptr %4, align 8
  %186 = icmp ult i64 0, %185
  br i1 %186, label %.lr.ph35, label %257

.lr.ph35:                                         ; preds = %184
  br label %187

187:                                              ; preds = %.lr.ph35, %252
  %188 = load ptr, ptr %13, align 8
  %189 = load i8, ptr %188, align 1
  %190 = zext i8 %189 to i64
  %191 = getelementptr inbounds nuw i8, ptr %19, i64 %190
  %192 = load i8, ptr %191, align 1
  %193 = zext i8 %192 to i32
  %194 = add nsw i32 %193, -1
  %195 = shl nuw i32 1, %194
  %196 = sext i32 %195 to i64
  store i64 %196, ptr %8, align 8
  store i64 0, ptr %5, align 8
  %197 = load ptr, ptr %13, align 8
  %198 = load i8, ptr %197, align 1
  %199 = zext i8 %198 to i64
  %200 = getelementptr inbounds nuw i8, ptr %19, i64 %199
  %201 = load i8, ptr %200, align 1
  %202 = zext i8 %201 to i64
  %203 = icmp ult i64 0, %202
  br i1 %203, label %.lr.ph32, label %249

.lr.ph32:                                         ; preds = %187
  br label %204

204:                                              ; preds = %.lr.ph32, %239
  %205 = load i32, ptr %28, align 4
  %206 = icmp eq i32 %205, 7
  br i1 %206, label %207, label %219

207:                                              ; preds = %204
  %208 = load i8, ptr %27, align 1
  %209 = load ptr, ptr %14, align 8
  %210 = load i64, ptr %26, align 8
  %211 = getelementptr inbounds nuw i8, ptr %209, i64 %210
  store i8 %208, ptr %211, align 1
  %212 = add i64 %210, 1
  store i64 %212, ptr %26, align 8
  %213 = load i64, ptr %4, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %207
  %216 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %217 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %216)
  call void @exit(i32 noundef 1) #9
  unreachable

218:                                              ; preds = %207
  store i32 0, ptr %28, align 4
  br label %224

219:                                              ; preds = %204
  %220 = load i32, ptr %28, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, ptr %28, align 4
  %222 = load i8, ptr %27, align 1
  %223 = shl i8 %222, 1
  br label %224

224:                                              ; preds = %219, %218
  %storemerge15 = phi i8 [ %223, %219 ], [ 0, %218 ]
  store i8 %storemerge15, ptr %27, align 1
  %225 = load ptr, ptr %13, align 8
  %226 = load i8, ptr %225, align 1
  %227 = zext i8 %226 to i64
  %228 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %227
  %229 = load i32, ptr %228, align 4
  %230 = zext i32 %229 to i64
  %231 = load i64, ptr %8, align 8
  %232 = and i64 %231, %230
  %.not16 = icmp eq i64 %232, 0
  br i1 %.not16, label %236, label %233

233:                                              ; preds = %224
  %234 = load i8, ptr %27, align 1
  %235 = or i8 %234, 1
  store i8 %235, ptr %27, align 1
  br label %236

236:                                              ; preds = %233, %224
  %237 = load i64, ptr %8, align 8
  %238 = lshr i64 %237, 1
  store i64 %238, ptr %8, align 8
  br label %239

239:                                              ; preds = %236
  %240 = load i64, ptr %5, align 8
  %241 = add i64 %240, 1
  store i64 %241, ptr %5, align 8
  %242 = load ptr, ptr %13, align 8
  %243 = load i8, ptr %242, align 1
  %244 = zext i8 %243 to i64
  %245 = getelementptr inbounds nuw i8, ptr %19, i64 %244
  %246 = load i8, ptr %245, align 1
  %247 = zext i8 %246 to i64
  %248 = icmp ult i64 %241, %247
  br i1 %248, label %204, label %._crit_edge33, !llvm.loop !15

._crit_edge33:                                    ; preds = %239
  br label %249

249:                                              ; preds = %._crit_edge33, %187
  %250 = load ptr, ptr %13, align 8
  %251 = getelementptr inbounds nuw i8, ptr %250, i64 1
  store ptr %251, ptr %13, align 8
  br label %252

252:                                              ; preds = %249
  %253 = load i64, ptr %6, align 8
  %254 = add i64 %253, 1
  store i64 %254, ptr %6, align 8
  %255 = load i64, ptr %4, align 8
  %256 = icmp ult i64 %254, %255
  br i1 %256, label %187, label %._crit_edge36, !llvm.loop !16

._crit_edge36:                                    ; preds = %252
  br label %257

257:                                              ; preds = %._crit_edge36, %184
  %258 = load i32, ptr %28, align 4
  %259 = sub nsw i32 7, %258
  %260 = load i8, ptr %27, align 1
  %261 = zext i8 %260 to i32
  %262 = shl i32 %261, %259
  %263 = trunc i32 %262 to i8
  store i8 %263, ptr %27, align 1
  %264 = load ptr, ptr %14, align 8
  %265 = load i64, ptr %26, align 8
  %266 = getelementptr inbounds nuw i8, ptr %264, i64 %265
  store i8 %263, ptr %266, align 1
  %267 = add i64 %265, 1
  store i64 %267, ptr %26, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %29, i8 0, i64 1024, i1 false)
  store ptr %30, ptr %31, align 8
  store i64 0, ptr %6, align 8
  br label %268

268:                                              ; preds = %257, %322
  %269 = load i64, ptr %6, align 8
  %270 = trunc i64 %269 to i8
  %271 = load ptr, ptr %31, align 8
  store i8 %270, ptr %271, align 1
  %272 = getelementptr inbounds nuw i8, ptr %271, i64 1
  store ptr %272, ptr %31, align 8
  %273 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %269
  %274 = load i32, ptr %273, align 4
  %275 = load i64, ptr %6, align 8
  %276 = getelementptr inbounds nuw i8, ptr %19, i64 %275
  %277 = load i8, ptr %276, align 1
  %278 = zext i8 %277 to i32
  %279 = or i32 %274, %278
  %.not11 = icmp eq i32 %279, 0
  br i1 %.not11, label %321, label %280

280:                                              ; preds = %268
  store i32 0, ptr %9, align 4
  %281 = load i64, ptr %6, align 8
  %282 = getelementptr inbounds nuw i8, ptr %19, i64 %281
  %283 = load i8, ptr %282, align 1
  %284 = zext i8 %283 to i32
  %285 = add nsw i32 %284, -1
  %286 = shl nuw i32 1, %285
  %287 = sext i32 %286 to i64
  store i64 %287, ptr %8, align 8
  store i64 0, ptr %5, align 8
  %288 = load i64, ptr %6, align 8
  %289 = getelementptr inbounds nuw i8, ptr %19, i64 %288
  %290 = load i8, ptr %289, align 1
  %291 = zext i8 %290 to i64
  %292 = icmp ult i64 0, %291
  br i1 %292, label %.lr.ph38, label %317

.lr.ph38:                                         ; preds = %280
  br label %293

293:                                              ; preds = %.lr.ph38, %309
  %294 = load i32, ptr %9, align 4
  %295 = shl i32 %294, 1
  %296 = or disjoint i32 %295, 1
  store i32 %296, ptr %9, align 4
  %297 = load i64, ptr %6, align 8
  %298 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %297
  %299 = load i32, ptr %298, align 4
  %300 = zext i32 %299 to i64
  %301 = load i64, ptr %8, align 8
  %302 = and i64 %301, %300
  %.not13 = icmp eq i64 %302, 0
  br i1 %.not13, label %306, label %303

303:                                              ; preds = %293
  %304 = load i32, ptr %9, align 4
  %305 = add i32 %304, 1
  store i32 %305, ptr %9, align 4
  br label %306

306:                                              ; preds = %303, %293
  %307 = load i64, ptr %8, align 8
  %308 = lshr i64 %307, 1
  store i64 %308, ptr %8, align 8
  br label %309

309:                                              ; preds = %306
  %310 = load i64, ptr %5, align 8
  %311 = add i64 %310, 1
  store i64 %311, ptr %5, align 8
  %312 = load i64, ptr %6, align 8
  %313 = getelementptr inbounds nuw i8, ptr %19, i64 %312
  %314 = load i8, ptr %313, align 1
  %315 = zext i8 %314 to i64
  %316 = icmp ult i64 %311, %315
  br i1 %316, label %293, label %._crit_edge39, !llvm.loop !17

._crit_edge39:                                    ; preds = %309
  br label %317

317:                                              ; preds = %._crit_edge39, %280
  %318 = load i32, ptr %9, align 4
  %319 = load i64, ptr %6, align 8
  %320 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %319
  store i32 %318, ptr %320, align 4
  br label %321

321:                                              ; preds = %317, %268
  br label %322

322:                                              ; preds = %321
  %323 = load i64, ptr %6, align 8
  %324 = add i64 %323, 1
  store i64 %324, ptr %6, align 8
  %325 = icmp ult i64 %324, 256
  br i1 %325, label %268, label %326, !llvm.loop !18

326:                                              ; preds = %322
  store i64 1, ptr %5, align 8
  br label %327

327:                                              ; preds = %326, %362
  %328 = load i64, ptr %5, align 8
  %329 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %328
  %330 = load i32, ptr %329, align 4
  store i32 %330, ptr %10, align 4
  %331 = getelementptr inbounds nuw i8, ptr %30, i64 %328
  %332 = load i8, ptr %331, align 1
  store i8 %332, ptr %11, align 1
  %333 = load i64, ptr %5, align 8
  br label %334

334:                                              ; preds = %344, %327
  %storemerge9 = phi i64 [ %333, %327 ], [ %355, %344 ]
  store i64 %storemerge9, ptr %6, align 8
  %.not10 = icmp eq i64 %storemerge9, 0
  br i1 %.not10, label %342, label %335

335:                                              ; preds = %334
  %336 = load i64, ptr %6, align 8
  %337 = getelementptr [4 x i8], ptr %29, i64 %336
  %338 = getelementptr i8, ptr %337, i64 -4
  %339 = load i32, ptr %338, align 4
  %340 = load i32, ptr %10, align 4
  %341 = icmp ugt i32 %339, %340
  br label %342

342:                                              ; preds = %335, %334
  %343 = phi i1 [ false, %334 ], [ %341, %335 ]
  br i1 %343, label %344, label %356

344:                                              ; preds = %342
  %345 = load i64, ptr %6, align 8
  %346 = getelementptr [4 x i8], ptr %29, i64 %345
  %347 = getelementptr i8, ptr %346, i64 -4
  %348 = load i32, ptr %347, align 4
  %349 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %345
  store i32 %348, ptr %349, align 4
  %350 = getelementptr i8, ptr %30, i64 %345
  %351 = getelementptr i8, ptr %350, i64 -1
  %352 = load i8, ptr %351, align 1
  %353 = load i64, ptr %6, align 8
  %354 = getelementptr inbounds nuw i8, ptr %30, i64 %353
  store i8 %352, ptr %354, align 1
  %355 = add i64 %353, -1
  br label %334, !llvm.loop !19

356:                                              ; preds = %342
  %357 = load i32, ptr %10, align 4
  %358 = load i64, ptr %6, align 8
  %359 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %358
  store i32 %357, ptr %359, align 4
  %360 = load i8, ptr %11, align 1
  %361 = getelementptr inbounds nuw i8, ptr %30, i64 %358
  store i8 %360, ptr %361, align 1
  br label %362

362:                                              ; preds = %356
  %363 = load i64, ptr %5, align 8
  %364 = add i64 %363, 1
  store i64 %364, ptr %5, align 8
  %365 = icmp ult i64 %364, 256
  br i1 %365, label %327, label %366, !llvm.loop !20

366:                                              ; preds = %362
  store i64 0, ptr %6, align 8
  %367 = load i32, ptr %29, align 4
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %.lr.ph41, label %376

.lr.ph41:                                         ; preds = %366
  br label %369

369:                                              ; preds = %.lr.ph41, %370
  br label %370

370:                                              ; preds = %369
  %371 = load i64, ptr %6, align 8
  %372 = add i64 %371, 1
  store i64 %372, ptr %6, align 8
  %373 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %372
  %374 = load i32, ptr %373, align 4
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %369, label %._crit_edge42, !llvm.loop !21

._crit_edge42:                                    ; preds = %370
  br label %376

376:                                              ; preds = %._crit_edge42, %366
  store i32 0, ptr %9, align 4
  %377 = load i64, ptr %6, align 8
  store i64 %377, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  %378 = load ptr, ptr %14, align 8
  store ptr %378, ptr %12, align 8
  %379 = load ptr, ptr %3, align 8
  store ptr %379, ptr %13, align 8
  %380 = load i64, ptr %7, align 8
  %381 = load i64, ptr %4, align 8
  %382 = icmp ult i64 %380, %381
  br i1 %382, label %.lr.ph47, label %437

.lr.ph47:                                         ; preds = %376
  br label %383

383:                                              ; preds = %.lr.ph47, %433
  %384 = load i32, ptr %9, align 4
  %385 = shl i32 %384, 1
  %386 = or disjoint i32 %385, 1
  store i32 %386, ptr %9, align 4
  %387 = load ptr, ptr %12, align 8
  %388 = load i8, ptr %387, align 1
  %389 = zext i8 %388 to i64
  %390 = load i64, ptr %8, align 8
  %391 = and i64 %390, %389
  %.not8 = icmp eq i64 %391, 0
  br i1 %.not8, label %395, label %392

392:                                              ; preds = %383
  %393 = load i32, ptr %9, align 4
  %394 = add i32 %393, 1
  store i32 %394, ptr %9, align 4
  br label %395

395:                                              ; preds = %392, %383
  %396 = load i64, ptr %5, align 8
  %397 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %396
  %398 = load i32, ptr %397, align 4
  %399 = load i32, ptr %9, align 4
  %400 = icmp ult i32 %398, %399
  br i1 %400, label %.lr.ph44, label %409

.lr.ph44:                                         ; preds = %395
  br label %401

401:                                              ; preds = %.lr.ph44, %401
  %402 = load i64, ptr %5, align 8
  %403 = add i64 %402, 1
  store i64 %403, ptr %5, align 8
  %404 = load i64, ptr %5, align 8
  %405 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %404
  %406 = load i32, ptr %405, align 4
  %407 = load i32, ptr %9, align 4
  %408 = icmp ult i32 %406, %407
  br i1 %408, label %401, label %._crit_edge45, !llvm.loop !22

._crit_edge45:                                    ; preds = %401
  br label %409

409:                                              ; preds = %._crit_edge45, %395
  %410 = load i32, ptr %9, align 4
  %411 = load i64, ptr %5, align 8
  %412 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %411
  %413 = load i32, ptr %412, align 4
  %414 = icmp eq i32 %410, %413
  br i1 %414, label %415, label %424

415:                                              ; preds = %409
  %416 = load i64, ptr %5, align 8
  %417 = getelementptr inbounds nuw i8, ptr %30, i64 %416
  %418 = load i8, ptr %417, align 1
  %419 = load ptr, ptr %13, align 8
  store i8 %418, ptr %419, align 1
  %420 = getelementptr inbounds nuw i8, ptr %419, i64 1
  store ptr %420, ptr %13, align 8
  %421 = load i64, ptr %7, align 8
  %422 = add i64 %421, 1
  store i64 %422, ptr %7, align 8
  store i32 0, ptr %9, align 4
  %423 = load i64, ptr %6, align 8
  store i64 %423, ptr %5, align 8
  br label %424

424:                                              ; preds = %415, %409
  %425 = load i64, ptr %8, align 8
  %426 = icmp ugt i64 %425, 1
  br i1 %426, label %427, label %430

427:                                              ; preds = %424
  %428 = load i64, ptr %8, align 8
  %429 = lshr i64 %428, 1
  store i64 %429, ptr %8, align 8
  br label %433

430:                                              ; preds = %424
  store i64 128, ptr %8, align 8
  %431 = load ptr, ptr %12, align 8
  %432 = getelementptr inbounds nuw i8, ptr %431, i64 1
  store ptr %432, ptr %12, align 8
  br label %433

433:                                              ; preds = %430, %427
  %434 = load i64, ptr %7, align 8
  %435 = load i64, ptr %4, align 8
  %436 = icmp ult i64 %434, %435
  br i1 %436, label %383, label %._crit_edge48, !llvm.loop !23

._crit_edge48:                                    ; preds = %433
  br label %437

437:                                              ; preds = %._crit_edge48, %376
  %438 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %438) #8
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
  %16 = load i32, ptr %8, align 4
  %17 = load i32, ptr %7, align 4
  %18 = sdiv i32 %17, 2
  %.not1 = icmp sgt i32 %16, %18
  br i1 %.not1, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %4
  br label %19

19:                                               ; preds = %.lr.ph, %62
  %20 = load i32, ptr %8, align 4
  %21 = shl nsw i32 %20, 1
  store i32 %21, ptr %9, align 4
  %22 = load i32, ptr %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8
  %26 = load ptr, ptr %6, align 8
  %27 = load i32, ptr %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr [8 x i8], ptr %26, i64 %28
  %30 = getelementptr i8, ptr %29, i64 -8
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr inbounds nuw [8 x i8], ptr %25, i64 %31
  %33 = load i64, ptr %32, align 8
  %34 = load ptr, ptr %5, align 8
  %35 = load ptr, ptr %6, align 8
  %36 = load i32, ptr %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8 x i8], ptr %35, i64 %37
  %39 = load i64, ptr %38, align 8
  %40 = getelementptr inbounds nuw [8 x i8], ptr %34, i64 %39
  %41 = load i64, ptr %40, align 8
  %42 = icmp ugt i64 %33, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %24
  %44 = load i32, ptr %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %9, align 4
  br label %46

46:                                               ; preds = %43, %24, %19
  %47 = load ptr, ptr %5, align 8
  %48 = load i32, ptr %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [8 x i8], ptr %47, i64 %49
  %51 = load i64, ptr %50, align 8
  %52 = load ptr, ptr %6, align 8
  %53 = load i32, ptr %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr [8 x i8], ptr %52, i64 %54
  %56 = getelementptr i8, ptr %55, i64 -8
  %57 = load i64, ptr %56, align 8
  %58 = getelementptr inbounds nuw [8 x i8], ptr %47, i64 %57
  %59 = load i64, ptr %58, align 8
  %60 = icmp ult i64 %51, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %46
  br label %77

62:                                               ; preds = %46
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
  %74 = load i32, ptr %8, align 4
  %75 = load i32, ptr %7, align 4
  %76 = sdiv i32 %75, 2
  %.not = icmp sgt i32 %74, %76
  br i1 %.not, label %..loopexit_crit_edge, label %19, !llvm.loop !24

..loopexit_crit_edge:                             ; preds = %62
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %77

77:                                               ; preds = %.loopexit, %61
  %78 = load i32, ptr %10, align 4
  %79 = sext i32 %78 to i64
  %80 = load ptr, ptr %6, align 8
  %81 = load i32, ptr %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr [8 x i8], ptr %80, i64 %82
  %84 = getelementptr i8, ptr %83, i64 -8
  store i64 %79, ptr %84, align 8
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
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  store i32 1, ptr %5, align 4
  %11 = load i32, ptr %3, align 4
  %12 = icmp slt i32 1, %11
  br i1 %12, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %10
  br label %13

13:                                               ; preds = %.lr.ph, %20
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %16 = load ptr, ptr %15, align 8
  %17 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(4) @.str.4) #8
  %.not = icmp eq i32 %17, 0
  br i1 %.not, label %18, label %19

18:                                               ; preds = %13
  store i8 1, ptr %6, align 1
  br label %25

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19
  %21 = load i32, ptr %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %5, align 4
  %23 = load i32, ptr %3, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %13, label %..loopexit_crit_edge, !llvm.loop !25

..loopexit_crit_edge:                             ; preds = %20
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %10
  br label %25

25:                                               ; preds = %.loopexit, %18
  br label %26

26:                                               ; preds = %25, %2
  %27 = call ptr @generate_test_data(i64 noundef 10000000)
  store ptr %27, ptr %7, align 8
  store i32 0, ptr %5, align 4
  br label %28

28:                                               ; preds = %26, %30
  %29 = load ptr, ptr %7, align 8
  call void @compdecomp(ptr noundef %29, i64 noundef 10000000)
  br label %30

30:                                               ; preds = %28
  %31 = load i32, ptr %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %5, align 4
  %33 = icmp slt i32 %32, 30
  br i1 %33, label %28, label %34, !llvm.loop !26

34:                                               ; preds = %30
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
