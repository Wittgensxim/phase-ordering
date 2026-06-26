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

8:                                                ; preds = %13, %1
  %9 = phi ptr [ %7, %1 ], [ %17, %13 ]
  %10 = phi i32 [ 0, %1 ], [ %18, %13 ]
  store i32 %10, ptr %6, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ugt i64 %0, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = call i64 @random4()
  %15 = getelementptr inbounds nuw i8, ptr @.str, i64 %14
  %16 = load i8, ptr %15, align 1
  store i8 %16, ptr %9, align 1
  %17 = getelementptr inbounds nuw i8, ptr %9, i64 1
  store ptr %17, ptr %5, align 8
  %18 = add nsw i32 %10, 1
  br label %8, !llvm.loop !7

19:                                               ; preds = %8
  ret ptr %7
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

34:                                               ; preds = %38, %2
  %35 = phi ptr [ %0, %2 ], [ %44, %38 ]
  %36 = phi i64 [ 0, %2 ], [ %45, %38 ]
  store i64 %36, ptr %5, align 8
  %37 = icmp ult i64 %36, %1
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load i8, ptr %35, align 1
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %40
  %42 = load i64, ptr %41, align 8
  %43 = add i64 %42, 1
  store i64 %43, ptr %41, align 8
  %44 = getelementptr inbounds nuw i8, ptr %35, i64 1
  store ptr %44, ptr %13, align 8
  %45 = add i64 %36, 1
  br label %34, !llvm.loop !9

46:                                               ; preds = %34
  store i64 0, ptr %7, align 8
  br label %47

47:                                               ; preds = %57, %46
  %48 = phi i64 [ 0, %46 ], [ %58, %57 ]
  %49 = phi i64 [ 0, %46 ], [ %59, %57 ]
  store i64 %49, ptr %5, align 8
  %50 = icmp ult i64 %49, 256
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %49
  %53 = load i64, ptr %52, align 8
  %.not19 = icmp eq i64 %53, 0
  br i1 %.not19, label %57, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %48
  store i64 %49, ptr %55, align 8
  %56 = add i64 %48, 1
  store i64 %56, ptr %7, align 8
  br label %57

57:                                               ; preds = %54, %51
  %58 = phi i64 [ %56, %54 ], [ %48, %51 ]
  %59 = add i64 %49, 1
  br label %47, !llvm.loop !10

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %63, %60
  %62 = phi i64 [ %48, %60 ], [ %66, %63 ]
  store i64 %62, ptr %5, align 8
  %.not = icmp eq i64 %62, 0
  br i1 %.not, label %67, label %63

63:                                               ; preds = %61
  %64 = trunc i64 %48 to i32
  %65 = trunc i64 %62 to i32
  call void @heap_adjust(ptr noundef nonnull %15, ptr noundef nonnull %16, i32 noundef %64, i32 noundef %65)
  %66 = add i64 %62, -1
  br label %61, !llvm.loop !11

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %71, %67
  %69 = phi i64 [ %72, %71 ], [ %48, %67 ]
  %70 = icmp ugt i64 %69, 1
  br i1 %70, label %71, label %90

71:                                               ; preds = %68
  %72 = add i64 %69, -1
  store i64 %72, ptr %7, align 8
  %73 = load i64, ptr %16, align 16
  store i64 %73, ptr %20, align 8
  %74 = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %72
  %75 = load i64, ptr %74, align 8
  store i64 %75, ptr %16, align 16
  %76 = trunc i64 %72 to i32
  call void @heap_adjust(ptr noundef nonnull %15, ptr noundef nonnull %16, i32 noundef %76, i32 noundef 1)
  %77 = load i64, ptr %16, align 16
  %78 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %77
  %79 = load i64, ptr %78, align 8
  %80 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %73
  %81 = load i64, ptr %80, align 8
  %82 = add i64 %79, %81
  %83 = getelementptr [8 x i8], ptr %15, i64 %72
  %84 = getelementptr i8, ptr %83, i64 2048
  store i64 %82, ptr %84, align 8
  %85 = add i32 %76, 256
  %86 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %73
  store i32 %85, ptr %86, align 4
  %87 = sub i32 -256, %76
  %88 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %77
  store i32 %87, ptr %88, align 4
  %89 = add i64 %72, 256
  store i64 %89, ptr %16, align 16
  call void @heap_adjust(ptr noundef nonnull %15, ptr noundef nonnull %16, i32 noundef %76, i32 noundef 1)
  br label %68, !llvm.loop !12

90:                                               ; preds = %68
  %91 = getelementptr [4 x i8], ptr %17, i64 %69
  %92 = getelementptr i8, ptr %91, i64 1024
  store i32 0, ptr %92, align 4
  store i64 0, ptr %23, align 8
  store i64 0, ptr %24, align 8
  br label %93

93:                                               ; preds = %140, %90
  %94 = phi i64 [ 0, %90 ], [ %141, %140 ]
  %95 = phi i64 [ 0, %90 ], [ %142, %140 ]
  %96 = phi i64 [ 0, %90 ], [ %143, %140 ]
  %97 = phi i64 [ 0, %90 ], [ %144, %140 ]
  %98 = phi i64 [ 0, %90 ], [ %145, %140 ]
  store i64 %98, ptr %21, align 8
  %99 = icmp ult i64 %98, 256
  br i1 %99, label %100, label %146

100:                                              ; preds = %93
  %101 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %98
  %102 = load i64, ptr %101, align 8
  %.not17 = icmp eq i64 %102, 0
  br i1 %.not17, label %103, label %106

103:                                              ; preds = %100
  %104 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %98
  store i32 0, ptr %104, align 4
  %105 = getelementptr inbounds nuw i8, ptr %19, i64 %98
  store i8 0, ptr %105, align 1
  br label %140

106:                                              ; preds = %100
  store i64 0, ptr %5, align 8
  store i64 1, ptr %6, align 8
  store i64 0, ptr %22, align 8
  %107 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %98
  %108 = load i32, ptr %107, align 4
  store i32 %108, ptr %25, align 4
  br label %109

109:                                              ; preds = %119, %106
  %110 = phi i64 [ %126, %119 ], [ 0, %106 ]
  %111 = phi i64 [ %121, %119 ], [ 0, %106 ]
  %112 = phi i64 [ %125, %119 ], [ 1, %106 ]
  %113 = phi i32 [ %124, %119 ], [ %108, %106 ]
  %.not18 = icmp eq i32 %113, 0
  br i1 %.not18, label %127, label %114

114:                                              ; preds = %109
  %115 = icmp slt i32 %113, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %114
  %117 = add i64 %111, %112
  store i64 %117, ptr %22, align 8
  %118 = sub nsw i32 0, %113
  store i32 %118, ptr %25, align 4
  br label %119

119:                                              ; preds = %116, %114
  %120 = phi i32 [ %118, %116 ], [ %113, %114 ]
  %121 = phi i64 [ %117, %116 ], [ %111, %114 ]
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds [4 x i8], ptr %17, i64 %122
  %124 = load i32, ptr %123, align 4
  store i32 %124, ptr %25, align 4
  %125 = shl i64 %112, 1
  store i64 %125, ptr %6, align 8
  %126 = add i64 %110, 1
  store i64 %126, ptr %5, align 8
  br label %109, !llvm.loop !13

127:                                              ; preds = %109
  %128 = trunc i64 %111 to i32
  %129 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %98
  store i32 %128, ptr %129, align 4
  %130 = trunc i64 %110 to i8
  %131 = getelementptr inbounds nuw i8, ptr %19, i64 %98
  store i8 %130, ptr %131, align 1
  %132 = icmp ugt i64 %111, %95
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  store i64 %111, ptr %23, align 8
  br label %134

134:                                              ; preds = %133, %127
  %135 = phi i64 [ %111, %133 ], [ %95, %127 ]
  %136 = icmp ugt i64 %110, %94
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  store i64 %110, ptr %24, align 8
  br label %138

138:                                              ; preds = %137, %134
  %139 = phi i64 [ %110, %137 ], [ %94, %134 ]
  br label %140

140:                                              ; preds = %138, %103
  %141 = phi i64 [ %139, %138 ], [ %94, %103 ]
  %142 = phi i64 [ %135, %138 ], [ %95, %103 ]
  %143 = phi i64 [ %135, %138 ], [ %96, %103 ]
  %144 = phi i64 [ %139, %138 ], [ %97, %103 ]
  %145 = add i64 %98, 1
  br label %93, !llvm.loop !14

146:                                              ; preds = %93
  %147 = icmp ugt i64 %97, 32
  br i1 %147, label %148, label %151

148:                                              ; preds = %146
  %149 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %150 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %149)
  call void @exit(i32 noundef 1) #9
  unreachable

151:                                              ; preds = %146
  store i64 0, ptr %26, align 8
  store i8 0, ptr %27, align 1
  store i32 -1, ptr %28, align 4
  store ptr %0, ptr %13, align 8
  %152 = icmp eq i64 %96, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %151
  %154 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %155 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %154)
  call void @exit(i32 noundef 1) #9
  unreachable

156:                                              ; preds = %151
  br label %157

157:                                              ; preds = %219, %156
  %158 = phi ptr [ %0, %156 ], [ %220, %219 ]
  %159 = phi i64 [ 0, %156 ], [ %177, %219 ]
  %160 = phi ptr [ %33, %156 ], [ %178, %219 ]
  %161 = phi i8 [ 0, %156 ], [ %179, %219 ]
  %162 = phi i32 [ -1, %156 ], [ %180, %219 ]
  %163 = phi i64 [ %1, %156 ], [ %181, %219 ]
  %164 = phi i64 [ 0, %156 ], [ %221, %219 ]
  store i64 %164, ptr %6, align 8
  %165 = icmp ult i64 %164, %163
  br i1 %165, label %166, label %222

166:                                              ; preds = %157
  %167 = load i8, ptr %158, align 1
  %168 = zext i8 %167 to i64
  %169 = getelementptr inbounds nuw i8, ptr %19, i64 %168
  %170 = load i8, ptr %169, align 1
  %171 = zext i8 %170 to i32
  %172 = add nsw i32 %171, -1
  %173 = shl nuw i32 1, %172
  %174 = sext i32 %173 to i64
  store i64 %174, ptr %8, align 8
  br label %175

175:                                              ; preds = %215, %166
  %176 = phi i64 [ %174, %166 ], [ %217, %215 ]
  %177 = phi i64 [ %159, %166 ], [ %204, %215 ]
  %178 = phi ptr [ %160, %166 ], [ %205, %215 ]
  %179 = phi i8 [ %161, %166 ], [ %216, %215 ]
  %180 = phi i32 [ %162, %166 ], [ %206, %215 ]
  %181 = phi i64 [ %163, %166 ], [ %207, %215 ]
  %182 = phi i64 [ 0, %166 ], [ %218, %215 ]
  store i64 %182, ptr %5, align 8
  %183 = load i8, ptr %158, align 1
  %184 = zext i8 %183 to i64
  %185 = getelementptr inbounds nuw i8, ptr %19, i64 %184
  %186 = load i8, ptr %185, align 1
  %187 = zext i8 %186 to i64
  %188 = icmp ult i64 %182, %187
  br i1 %188, label %189, label %219

189:                                              ; preds = %175
  %190 = icmp eq i32 %180, 7
  br i1 %190, label %191, label %199

191:                                              ; preds = %189
  %192 = getelementptr inbounds nuw i8, ptr %33, i64 %177
  store i8 %179, ptr %192, align 1
  %193 = add i64 %177, 1
  store i64 %193, ptr %26, align 8
  %194 = icmp eq i64 %193, %1
  br i1 %194, label %195, label %198

195:                                              ; preds = %191
  %196 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %197 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %196)
  call void @exit(i32 noundef 1) #9
  unreachable

198:                                              ; preds = %191
  store i32 0, ptr %28, align 4
  %.pre22 = load i8, ptr %158, align 1
  %.pre23 = zext i8 %.pre22 to i64
  br label %202

199:                                              ; preds = %189
  %200 = add nsw i32 %180, 1
  store i32 %200, ptr %28, align 4
  %201 = shl i8 %179, 1
  br label %202

202:                                              ; preds = %199, %198
  %.pre-phi = phi i64 [ %184, %199 ], [ %.pre23, %198 ]
  %203 = phi i8 [ %183, %199 ], [ %.pre22, %198 ]
  %204 = phi i64 [ %177, %199 ], [ %193, %198 ]
  %205 = phi ptr [ %178, %199 ], [ %33, %198 ]
  %206 = phi i32 [ %200, %199 ], [ 0, %198 ]
  %207 = phi i64 [ %181, %199 ], [ %1, %198 ]
  %208 = phi i8 [ %201, %199 ], [ 0, %198 ]
  store i8 %208, ptr %27, align 1
  %209 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %.pre-phi
  %210 = load i32, ptr %209, align 4
  %211 = zext i32 %210 to i64
  %212 = and i64 %176, %211
  %.not16 = icmp eq i64 %212, 0
  br i1 %.not16, label %215, label %213

213:                                              ; preds = %202
  %214 = or i8 %208, 1
  store i8 %214, ptr %27, align 1
  br label %215

215:                                              ; preds = %213, %202
  %216 = phi i8 [ %214, %213 ], [ %208, %202 ]
  %217 = lshr i64 %176, 1
  store i64 %217, ptr %8, align 8
  %218 = add i64 %182, 1
  br label %175, !llvm.loop !15

219:                                              ; preds = %175
  %220 = getelementptr inbounds nuw i8, ptr %158, i64 1
  store ptr %220, ptr %13, align 8
  %221 = add i64 %164, 1
  br label %157, !llvm.loop !16

222:                                              ; preds = %157
  %223 = sub nsw i32 7, %162
  %224 = zext i8 %161 to i32
  %225 = shl i32 %224, %223
  %226 = trunc i32 %225 to i8
  store i8 %226, ptr %27, align 1
  %227 = getelementptr inbounds nuw i8, ptr %160, i64 %159
  store i8 %226, ptr %227, align 1
  %228 = add i64 %159, 1
  store i64 %228, ptr %26, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %29, i8 0, i64 1024, i1 false)
  store ptr %30, ptr %31, align 8
  br label %229

229:                                              ; preds = %265, %222
  %230 = phi ptr [ %30, %222 ], [ %235, %265 ]
  %231 = phi i64 [ 0, %222 ], [ %266, %265 ]
  store i64 %231, ptr %6, align 8
  %232 = icmp ult i64 %231, 256
  br i1 %232, label %233, label %267

233:                                              ; preds = %229
  %234 = trunc i64 %231 to i8
  store i8 %234, ptr %230, align 1
  %235 = getelementptr inbounds nuw i8, ptr %230, i64 1
  store ptr %235, ptr %31, align 8
  %236 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %231
  %237 = load i32, ptr %236, align 4
  %238 = getelementptr inbounds nuw i8, ptr %19, i64 %231
  %239 = load i8, ptr %238, align 1
  %240 = zext i8 %239 to i32
  %241 = or i32 %237, %240
  %.not11 = icmp eq i32 %241, 0
  br i1 %.not11, label %265, label %242

242:                                              ; preds = %233
  store i32 0, ptr %9, align 4
  %243 = add nsw i32 %240, -1
  %244 = shl nuw i32 1, %243
  %245 = sext i32 %244 to i64
  store i64 %245, ptr %8, align 8
  br label %246

246:                                              ; preds = %259, %242
  %247 = phi i64 [ %245, %242 ], [ %261, %259 ]
  %248 = phi i32 [ 0, %242 ], [ %260, %259 ]
  %249 = phi i64 [ 0, %242 ], [ %262, %259 ]
  store i64 %249, ptr %5, align 8
  %250 = zext i8 %239 to i64
  %251 = icmp ult i64 %249, %250
  br i1 %251, label %252, label %263

252:                                              ; preds = %246
  %253 = shl i32 %248, 1
  %254 = or disjoint i32 %253, 1
  store i32 %254, ptr %9, align 4
  %255 = zext i32 %237 to i64
  %256 = and i64 %247, %255
  %.not13 = icmp eq i64 %256, 0
  br i1 %.not13, label %259, label %257

257:                                              ; preds = %252
  %258 = add i32 %254, 1
  store i32 %258, ptr %9, align 4
  br label %259

259:                                              ; preds = %257, %252
  %260 = phi i32 [ %258, %257 ], [ %254, %252 ]
  %261 = lshr i64 %247, 1
  store i64 %261, ptr %8, align 8
  %262 = add i64 %249, 1
  br label %246, !llvm.loop !17

263:                                              ; preds = %246
  %264 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %231
  store i32 %248, ptr %264, align 4
  br label %265

265:                                              ; preds = %263, %233
  %266 = add i64 %231, 1
  br label %229, !llvm.loop !18

267:                                              ; preds = %229
  br label %268

268:                                              ; preds = %293, %267
  %269 = phi i64 [ 1, %267 ], [ %296, %293 ]
  store i64 %269, ptr %5, align 8
  %270 = icmp ult i64 %269, 256
  br i1 %270, label %271, label %297

271:                                              ; preds = %268
  %272 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %269
  %273 = load i32, ptr %272, align 4
  store i32 %273, ptr %10, align 4
  %274 = getelementptr inbounds nuw i8, ptr %30, i64 %269
  %275 = load i8, ptr %274, align 1
  store i8 %275, ptr %11, align 1
  br label %276

276:                                              ; preds = %285, %271
  %277 = phi i64 [ %269, %271 ], [ %292, %285 ]
  store i64 %277, ptr %6, align 8
  %.not10 = icmp eq i64 %277, 0
  br i1 %.not10, label %283, label %278

278:                                              ; preds = %276
  %279 = getelementptr [4 x i8], ptr %29, i64 %277
  %280 = getelementptr i8, ptr %279, i64 -4
  %281 = load i32, ptr %280, align 4
  %282 = icmp ugt i32 %281, %273
  br label %283

283:                                              ; preds = %278, %276
  %284 = phi i1 [ false, %276 ], [ %282, %278 ]
  br i1 %284, label %285, label %293

285:                                              ; preds = %283
  %286 = getelementptr [4 x i8], ptr %29, i64 %277
  %287 = getelementptr i8, ptr %286, i64 -4
  %288 = load i32, ptr %287, align 4
  store i32 %288, ptr %286, align 4
  %289 = getelementptr i8, ptr %30, i64 %277
  %290 = getelementptr i8, ptr %289, i64 -1
  %291 = load i8, ptr %290, align 1
  store i8 %291, ptr %289, align 1
  %292 = add i64 %277, -1
  br label %276, !llvm.loop !19

293:                                              ; preds = %283
  %294 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %277
  store i32 %273, ptr %294, align 4
  %295 = getelementptr inbounds nuw i8, ptr %30, i64 %277
  store i8 %275, ptr %295, align 1
  %296 = add i64 %269, 1
  br label %268, !llvm.loop !20

297:                                              ; preds = %268
  br label %298

298:                                              ; preds = %303, %297
  %299 = phi i64 [ 0, %297 ], [ %304, %303 ]
  store i64 %299, ptr %6, align 8
  %300 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %299
  %301 = load i32, ptr %300, align 4
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %305

303:                                              ; preds = %298
  %304 = add i64 %299, 1
  br label %298, !llvm.loop !21

305:                                              ; preds = %298
  store i32 0, ptr %9, align 4
  store i64 %299, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  %306 = load ptr, ptr %14, align 8
  store ptr %306, ptr %12, align 8
  %307 = load ptr, ptr %3, align 8
  store ptr %307, ptr %13, align 8
  %.pre = load i64, ptr %4, align 8
  br label %308

308:                                              ; preds = %353, %305
  %309 = phi ptr [ %344, %353 ], [ %307, %305 ]
  %310 = phi i64 [ %345, %353 ], [ %299, %305 ]
  %311 = phi i64 [ %354, %353 ], [ 128, %305 ]
  %312 = phi ptr [ %355, %353 ], [ %306, %305 ]
  %313 = phi i32 [ %346, %353 ], [ 0, %305 ]
  %314 = phi i64 [ %347, %353 ], [ 0, %305 ]
  %315 = icmp ult i64 %314, %.pre
  br i1 %315, label %316, label %356

316:                                              ; preds = %308
  %317 = shl i32 %313, 1
  %318 = or disjoint i32 %317, 1
  store i32 %318, ptr %9, align 4
  %319 = load i8, ptr %312, align 1
  %320 = zext i8 %319 to i64
  %321 = and i64 %311, %320
  %.not8 = icmp eq i64 %321, 0
  br i1 %.not8, label %324, label %322

322:                                              ; preds = %316
  %323 = add i32 %318, 1
  store i32 %323, ptr %9, align 4
  br label %324

324:                                              ; preds = %322, %316
  %325 = phi i32 [ %323, %322 ], [ %318, %316 ]
  br label %326

326:                                              ; preds = %331, %324
  %327 = phi i64 [ %332, %331 ], [ %310, %324 ]
  %328 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %327
  %329 = load i32, ptr %328, align 4
  %330 = icmp ult i32 %329, %325
  br i1 %330, label %331, label %333

331:                                              ; preds = %326
  %332 = add i64 %327, 1
  store i64 %332, ptr %5, align 8
  br label %326, !llvm.loop !22

333:                                              ; preds = %326
  %334 = icmp eq i32 %325, %329
  br i1 %334, label %335, label %342

335:                                              ; preds = %333
  %336 = getelementptr inbounds nuw i8, ptr %30, i64 %327
  %337 = load i8, ptr %336, align 1
  store i8 %337, ptr %309, align 1
  %338 = getelementptr inbounds nuw i8, ptr %309, i64 1
  store ptr %338, ptr %13, align 8
  %339 = load i64, ptr %7, align 8
  %340 = add i64 %339, 1
  store i64 %340, ptr %7, align 8
  store i32 0, ptr %9, align 4
  %341 = load i64, ptr %6, align 8
  store i64 %341, ptr %5, align 8
  %.pre20 = load i64, ptr %8, align 8
  br label %342

342:                                              ; preds = %335, %333
  %343 = phi i64 [ %.pre20, %335 ], [ %311, %333 ]
  %344 = phi ptr [ %338, %335 ], [ %309, %333 ]
  %345 = phi i64 [ %341, %335 ], [ %327, %333 ]
  %346 = phi i32 [ 0, %335 ], [ %325, %333 ]
  %347 = phi i64 [ %340, %335 ], [ %314, %333 ]
  %348 = icmp ugt i64 %343, 1
  br i1 %348, label %349, label %351

349:                                              ; preds = %342
  %350 = lshr i64 %343, 1
  store i64 %350, ptr %8, align 8
  br label %353

351:                                              ; preds = %342
  store i64 128, ptr %8, align 8
  %352 = getelementptr inbounds nuw i8, ptr %312, i64 1
  store ptr %352, ptr %12, align 8
  br label %353

353:                                              ; preds = %351, %349
  %354 = phi i64 [ 128, %351 ], [ %350, %349 ]
  %355 = phi ptr [ %352, %351 ], [ %312, %349 ]
  br label %308, !llvm.loop !23

356:                                              ; preds = %308
  call void @free(ptr noundef %306) #8
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

16:                                               ; preds = %48, %4
  %17 = phi i32 [ %36, %48 ], [ %3, %4 ]
  %18 = sdiv i32 %2, 2
  %.not = icmp sgt i32 %17, %18
  br i1 %.not, label %._crit_edge, label %19

._crit_edge:                                      ; preds = %16
  %.pre = sext i32 %15 to i64
  br label %52

19:                                               ; preds = %16
  %20 = shl nsw i32 %17, 1
  store i32 %20, ptr %9, align 4
  %21 = icmp slt i32 %20, %2
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = sext i32 %20 to i64
  %24 = getelementptr [8 x i8], ptr %1, i64 %23
  %25 = getelementptr i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 8
  %27 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %26
  %28 = load i64, ptr %27, align 8
  %29 = load i64, ptr %24, align 8
  %30 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %29
  %31 = load i64, ptr %30, align 8
  %32 = icmp ugt i64 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = add nsw i32 %20, 1
  store i32 %34, ptr %9, align 4
  br label %35

35:                                               ; preds = %33, %22, %19
  %36 = phi i32 [ %34, %33 ], [ %20, %22 ], [ %20, %19 ]
  %37 = sext i32 %15 to i64
  %38 = getelementptr inbounds [8 x i8], ptr %0, i64 %37
  %39 = load i64, ptr %38, align 8
  %40 = sext i32 %36 to i64
  %41 = getelementptr [8 x i8], ptr %1, i64 %40
  %42 = getelementptr i8, ptr %41, i64 -8
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %43
  %45 = load i64, ptr %44, align 8
  %46 = icmp ult i64 %39, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  br label %52

48:                                               ; preds = %35
  %49 = sext i32 %17 to i64
  %50 = getelementptr [8 x i8], ptr %1, i64 %49
  %51 = getelementptr i8, ptr %50, i64 -8
  store i64 %43, ptr %51, align 8
  store i32 %36, ptr %8, align 4
  br label %16, !llvm.loop !24

52:                                               ; preds = %._crit_edge, %47
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %37, %47 ]
  %53 = sext i32 %17 to i64
  %54 = getelementptr [8 x i8], ptr %1, i64 %53
  %55 = getelementptr i8, ptr %54, i64 -8
  store i64 %.pre-phi, ptr %55, align 8
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

11:                                               ; preds = %19, %10
  %12 = phi i32 [ 1, %10 ], [ %20, %19 ]
  store i32 %12, ptr %5, align 4
  %13 = icmp slt i32 %12, %0
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %16 = load ptr, ptr %15, align 8
  %17 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(4) @.str.4) #8
  %.not = icmp eq i32 %17, 0
  br i1 %.not, label %18, label %19

18:                                               ; preds = %14
  store i8 1, ptr %6, align 1
  br label %21

19:                                               ; preds = %14
  %20 = add nsw i32 %12, 1
  br label %11, !llvm.loop !25

21:                                               ; preds = %18, %11
  %22 = phi i8 [ 1, %18 ], [ 0, %11 ]
  br label %23

23:                                               ; preds = %21, %2
  %24 = phi i8 [ %22, %21 ], [ 0, %2 ]
  %25 = call ptr @generate_test_data(i64 noundef 10000000)
  store ptr %25, ptr %7, align 8
  br label %26

26:                                               ; preds = %29, %23
  %27 = phi i32 [ 0, %23 ], [ %30, %29 ]
  store i32 %27, ptr %5, align 4
  %28 = icmp slt i32 %27, 30
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  call void @compdecomp(ptr noundef %25, i64 noundef 10000000)
  %30 = add nsw i32 %27, 1
  br label %26, !llvm.loop !26

31:                                               ; preds = %26
  store double 0.000000e+00, ptr %8, align 8
  call void @free(ptr noundef %25) #8
  %.not2 = icmp eq i8 %24, 0
  br i1 %.not2, label %35, label %32

32:                                               ; preds = %31
  %33 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.5, double noundef 0.000000e+00) #8
  br label %38

35:                                               ; preds = %31
  %36 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef nonnull @.str.6, double noundef 0.000000e+00) #8
  br label %38

38:                                               ; preds = %35, %32
  %39 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %40 = call i32 @fflush(ptr noundef %39) #8
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
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = add nsw i32 %6, 2147483647
  store i32 %9, ptr @seed, align 4
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
