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
  %7 = call ptr @malloc(i64 noundef %0) #6
  store ptr %7, ptr %4, align 8
  store ptr %7, ptr %5, align 8
  store i32 0, ptr %6, align 4
  br label %8

8:                                                ; preds = %13, %1
  %9 = phi ptr [ %17, %13 ], [ %7, %1 ]
  %10 = phi i32 [ %18, %13 ], [ 0, %1 ]
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, %0
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = call i64 @random4()
  %15 = getelementptr inbounds nuw i8, ptr @.str, i64 %14
  %16 = load i8, ptr %15, align 1
  store i8 %16, ptr %9, align 1
  %17 = getelementptr inbounds nuw i8, ptr %9, i32 1
  store ptr %17, ptr %5, align 8
  %18 = add nsw i32 %10, 1
  store i32 %18, ptr %6, align 4
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
  %33 = call ptr @malloc(i64 noundef %32) #6
  store ptr %33, ptr %14, align 8
  call void @llvm.memset.p0.i64(ptr align 1 %33, i8 0, i64 %32, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %15, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %16, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %17, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %18, i8 0, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %19, i8 0, i64 256, i1 false)
  store i64 0, ptr %5, align 8
  br label %34

34:                                               ; preds = %38, %2
  %35 = phi ptr [ %44, %38 ], [ %0, %2 ]
  %36 = phi i64 [ %45, %38 ], [ 0, %2 ]
  %37 = icmp ult i64 %36, %1
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load i8, ptr %35, align 1
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %40
  %42 = load i64, ptr %41, align 8
  %43 = add i64 %42, 1
  store i64 %43, ptr %41, align 8
  %44 = getelementptr inbounds nuw i8, ptr %35, i32 1
  store ptr %44, ptr %13, align 8
  %45 = add i64 %36, 1
  store i64 %45, ptr %5, align 8
  br label %34, !llvm.loop !9

46:                                               ; preds = %34
  store i64 0, ptr %7, align 8
  store i64 0, ptr %5, align 8
  br label %47

47:                                               ; preds = %58, %46
  %48 = phi i64 [ %59, %58 ], [ 0, %46 ]
  %49 = phi i64 [ %60, %58 ], [ 0, %46 ]
  %50 = icmp ult i64 %49, 256
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %49
  %53 = load i64, ptr %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %48
  store i64 %49, ptr %56, align 8
  %57 = add i64 %48, 1
  store i64 %57, ptr %7, align 8
  br label %58

58:                                               ; preds = %55, %51
  %59 = phi i64 [ %57, %55 ], [ %48, %51 ]
  %60 = add i64 %49, 1
  store i64 %60, ptr %5, align 8
  br label %47, !llvm.loop !10

61:                                               ; preds = %47
  store i64 %48, ptr %5, align 8
  br label %62

62:                                               ; preds = %65, %61
  %63 = phi i64 [ %68, %65 ], [ %48, %61 ]
  %64 = icmp ugt i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = trunc i64 %48 to i32
  %67 = trunc i64 %63 to i32
  call void @heap_adjust(ptr noundef %15, ptr noundef %16, i32 noundef %66, i32 noundef %67)
  %68 = add i64 %63, -1
  store i64 %68, ptr %5, align 8
  br label %62, !llvm.loop !11

69:                                               ; preds = %62, %72
  %70 = phi i64 [ %73, %72 ], [ %48, %62 ]
  %71 = icmp ugt i64 %70, 1
  br i1 %71, label %72, label %91

72:                                               ; preds = %69
  %73 = add i64 %70, -1
  store i64 %73, ptr %7, align 8
  %74 = load i64, ptr %16, align 16
  store i64 %74, ptr %20, align 8
  %75 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %73
  %76 = load i64, ptr %75, align 8
  store i64 %76, ptr %16, align 16
  %77 = trunc i64 %73 to i32
  call void @heap_adjust(ptr noundef %15, ptr noundef %16, i32 noundef %77, i32 noundef 1)
  %78 = load i64, ptr %16, align 16
  %79 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %78
  %80 = load i64, ptr %79, align 8
  %81 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %74
  %82 = load i64, ptr %81, align 8
  %83 = add i64 %80, %82
  %84 = add i64 256, %73
  %85 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %84
  store i64 %83, ptr %85, align 8
  %86 = trunc i64 %84 to i32
  %87 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %74
  store i32 %86, ptr %87, align 4
  %88 = sub i64 -256, %73
  %89 = trunc i64 %88 to i32
  %90 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %78
  store i32 %89, ptr %90, align 4
  store i64 %84, ptr %16, align 16
  call void @heap_adjust(ptr noundef %15, ptr noundef %16, i32 noundef %77, i32 noundef 1)
  br label %69, !llvm.loop !12

91:                                               ; preds = %69
  %92 = add i64 256, %70
  %93 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %92
  store i32 0, ptr %93, align 4
  store i64 0, ptr %23, align 8
  store i64 0, ptr %24, align 8
  store i64 0, ptr %21, align 8
  br label %94

94:                                               ; preds = %141, %91
  %95 = phi i64 [ %142, %141 ], [ 0, %91 ]
  %96 = phi i64 [ %143, %141 ], [ 0, %91 ]
  %97 = phi i64 [ %144, %141 ], [ 0, %91 ]
  %98 = phi i64 [ %145, %141 ], [ 0, %91 ]
  %99 = phi i64 [ %146, %141 ], [ 0, %91 ]
  %100 = icmp ult i64 %99, 256
  br i1 %100, label %101, label %147

101:                                              ; preds = %94
  %102 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %99
  %103 = load i64, ptr %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %99
  store i32 0, ptr %106, align 4
  %107 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %99
  store i8 0, ptr %107, align 1
  br label %141

108:                                              ; preds = %101
  store i64 0, ptr %5, align 8
  store i64 1, ptr %6, align 8
  store i64 0, ptr %22, align 8
  %109 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %99
  %110 = load i32, ptr %109, align 4
  store i32 %110, ptr %25, align 4
  br label %111

111:                                              ; preds = %122, %108
  %112 = phi i64 [ %128, %122 ], [ 1, %108 ]
  %113 = phi i64 [ %129, %122 ], [ 0, %108 ]
  %114 = phi i64 [ %124, %122 ], [ 0, %108 ]
  %115 = phi i32 [ %127, %122 ], [ %110, %108 ]
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %111
  %118 = icmp slt i32 %115, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %117
  %120 = add i64 %114, %112
  store i64 %120, ptr %22, align 8
  %121 = sub nsw i32 0, %115
  store i32 %121, ptr %25, align 4
  br label %122

122:                                              ; preds = %119, %117
  %123 = phi i32 [ %121, %119 ], [ %115, %117 ]
  %124 = phi i64 [ %120, %119 ], [ %114, %117 ]
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds [512 x i32], ptr %17, i64 0, i64 %125
  %127 = load i32, ptr %126, align 4
  store i32 %127, ptr %25, align 4
  %128 = shl i64 %112, 1
  store i64 %128, ptr %6, align 8
  %129 = add i64 %113, 1
  store i64 %129, ptr %5, align 8
  br label %111, !llvm.loop !13

130:                                              ; preds = %111
  %131 = trunc i64 %114 to i32
  %132 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %99
  store i32 %131, ptr %132, align 4
  %133 = trunc i64 %113 to i8
  %134 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %99
  store i8 %133, ptr %134, align 1
  %135 = icmp ugt i64 %114, %96
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  store i64 %114, ptr %23, align 8
  br label %137

137:                                              ; preds = %136, %130
  %138 = phi i64 [ %114, %136 ], [ %96, %130 ]
  %139 = icmp ugt i64 %113, %95
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  store i64 %113, ptr %24, align 8
  br label %141

141:                                              ; preds = %137, %140, %105
  %142 = phi i64 [ %95, %105 ], [ %113, %140 ], [ %95, %137 ]
  %143 = phi i64 [ %96, %105 ], [ %138, %140 ], [ %138, %137 ]
  %144 = phi i64 [ %97, %105 ], [ %138, %140 ], [ %138, %137 ]
  %145 = phi i64 [ %98, %105 ], [ %113, %140 ], [ %95, %137 ]
  %146 = add i64 %99, 1
  store i64 %146, ptr %21, align 8
  br label %94, !llvm.loop !14

147:                                              ; preds = %94
  %148 = icmp ugt i64 %98, 32
  br i1 %148, label %149, label %152

149:                                              ; preds = %147
  %150 = call ptr @__acrt_iob_func(i32 noundef 2)
  %151 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %150, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

152:                                              ; preds = %147
  store i64 0, ptr %26, align 8
  store i8 0, ptr %27, align 1
  store i32 -1, ptr %28, align 4
  store ptr %0, ptr %13, align 8
  %153 = icmp eq i64 %97, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %152
  %155 = call ptr @__acrt_iob_func(i32 noundef 2)
  %156 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %155, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

157:                                              ; preds = %152
  store i64 0, ptr %6, align 8
  br label %158

158:                                              ; preds = %225, %157
  %159 = phi ptr [ %226, %225 ], [ %0, %157 ]
  %160 = phi i64 [ %181, %225 ], [ 0, %157 ]
  %161 = phi ptr [ %182, %225 ], [ %33, %157 ]
  %162 = phi i8 [ %183, %225 ], [ 0, %157 ]
  %163 = phi i32 [ %184, %225 ], [ -1, %157 ]
  %164 = phi i64 [ %185, %225 ], [ %1, %157 ]
  %165 = phi i64 [ %227, %225 ], [ 0, %157 ]
  %166 = icmp ult i64 %165, %164
  br i1 %166, label %167, label %228

167:                                              ; preds = %158
  %168 = load i8, ptr %159, align 1
  %169 = zext i8 %168 to i64
  %170 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %169
  %171 = load i8, ptr %170, align 1
  %172 = zext i8 %171 to i32
  %173 = sub nsw i32 %172, 1
  %174 = shl i32 1, %173
  %175 = sext i32 %174 to i64
  store i64 %175, ptr %8, align 8
  store i64 0, ptr %5, align 8
  br label %176

176:                                              ; preds = %221, %167
  %177 = phi i8 [ %206, %221 ], [ %168, %167 ]
  %178 = phi i64 [ %223, %221 ], [ %175, %167 ]
  %179 = phi i8 [ %.pre4, %221 ], [ %171, %167 ]
  %180 = phi i64 [ %224, %221 ], [ 0, %167 ]
  %181 = phi i64 [ %207, %221 ], [ %160, %167 ]
  %182 = phi ptr [ %208, %221 ], [ %161, %167 ]
  %183 = phi i8 [ %222, %221 ], [ %162, %167 ]
  %184 = phi i32 [ %210, %221 ], [ %163, %167 ]
  %185 = phi i64 [ %211, %221 ], [ %164, %167 ]
  %186 = zext i8 %177 to i64
  %187 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %186
  %188 = zext i8 %179 to i64
  %189 = icmp ult i64 %180, %188
  br i1 %189, label %190, label %225

190:                                              ; preds = %176
  %191 = icmp eq i32 %184, 7
  br i1 %191, label %192, label %200

192:                                              ; preds = %190
  %193 = getelementptr inbounds nuw i8, ptr %33, i64 %181
  store i8 %183, ptr %193, align 1
  %194 = add i64 %181, 1
  store i64 %194, ptr %26, align 8
  %195 = icmp eq i64 %194, %1
  br i1 %195, label %196, label %199

196:                                              ; preds = %192
  %197 = call ptr @__acrt_iob_func(i32 noundef 2)
  %198 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %197, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

199:                                              ; preds = %192
  store i32 0, ptr %28, align 4
  store i8 0, ptr %27, align 1
  %.pre5 = load i8, ptr %159, align 1
  %.pre6 = zext i8 %.pre5 to i64
  br label %205

200:                                              ; preds = %190
  %201 = add nsw i32 %184, 1
  store i32 %201, ptr %28, align 4
  %202 = sext i8 %183 to i32
  %203 = shl i32 %202, 1
  %204 = trunc i32 %203 to i8
  store i8 %204, ptr %27, align 1
  br label %205

205:                                              ; preds = %200, %199
  %.pre-phi = phi i64 [ %186, %200 ], [ %.pre6, %199 ]
  %206 = phi i8 [ %177, %200 ], [ %.pre5, %199 ]
  %207 = phi i64 [ %181, %200 ], [ %194, %199 ]
  %208 = phi ptr [ %182, %200 ], [ %33, %199 ]
  %209 = phi i8 [ %204, %200 ], [ 0, %199 ]
  %210 = phi i32 [ %201, %200 ], [ 0, %199 ]
  %211 = phi i64 [ %185, %200 ], [ %1, %199 ]
  %212 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %.pre-phi
  %213 = load i32, ptr %212, align 4
  %214 = zext i32 %213 to i64
  %215 = and i64 %214, %178
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %205
  %218 = sext i8 %209 to i32
  %219 = or i32 %218, 1
  %220 = trunc i32 %219 to i8
  store i8 %220, ptr %27, align 1
  br label %221

221:                                              ; preds = %217, %205
  %222 = phi i8 [ %220, %217 ], [ %209, %205 ]
  %223 = lshr i64 %178, 1
  store i64 %223, ptr %8, align 8
  %224 = add i64 %180, 1
  store i64 %224, ptr %5, align 8
  %.phi.trans.insert3 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %.pre-phi
  %.pre4 = load i8, ptr %.phi.trans.insert3, align 1
  br label %176, !llvm.loop !15

225:                                              ; preds = %176
  %226 = getelementptr inbounds nuw i8, ptr %159, i32 1
  store ptr %226, ptr %13, align 8
  %227 = add i64 %165, 1
  store i64 %227, ptr %6, align 8
  br label %158, !llvm.loop !16

228:                                              ; preds = %158
  %229 = sub nsw i32 7, %163
  %230 = sext i8 %162 to i32
  %231 = shl i32 %230, %229
  %232 = trunc i32 %231 to i8
  store i8 %232, ptr %27, align 1
  %233 = getelementptr inbounds nuw i8, ptr %161, i64 %160
  store i8 %232, ptr %233, align 1
  %234 = load i64, ptr %26, align 8
  %235 = add i64 %234, 1
  store i64 %235, ptr %26, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %29, i8 0, i64 1024, i1 false)
  store ptr %30, ptr %31, align 8
  store i64 0, ptr %6, align 8
  br label %236

236:                                              ; preds = %274, %228
  %237 = phi ptr [ %242, %274 ], [ %30, %228 ]
  %238 = phi i64 [ %275, %274 ], [ 0, %228 ]
  %239 = icmp ult i64 %238, 256
  br i1 %239, label %240, label %276

240:                                              ; preds = %236
  %241 = trunc i64 %238 to i8
  store i8 %241, ptr %237, align 1
  %242 = getelementptr inbounds nuw i8, ptr %237, i32 1
  store ptr %242, ptr %31, align 8
  %243 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %238
  %244 = load i32, ptr %243, align 4
  %245 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %238
  %246 = load i8, ptr %245, align 1
  %247 = zext i8 %246 to i32
  %248 = or i32 %244, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %274

250:                                              ; preds = %240
  store i32 0, ptr %9, align 4
  %251 = sub nsw i32 %247, 1
  %252 = shl i32 1, %251
  %253 = sext i32 %252 to i64
  store i64 %253, ptr %8, align 8
  store i64 0, ptr %5, align 8
  br label %254

254:                                              ; preds = %268, %250
  %255 = phi i64 [ %270, %268 ], [ %253, %250 ]
  %256 = phi i32 [ %269, %268 ], [ 0, %250 ]
  %257 = phi i64 [ %271, %268 ], [ 0, %250 ]
  %258 = zext i8 %246 to i64
  %259 = icmp ult i64 %257, %258
  br i1 %259, label %260, label %272

260:                                              ; preds = %254
  %261 = mul i32 %256, 2
  %262 = add i32 %261, 1
  store i32 %262, ptr %9, align 4
  %263 = zext i32 %244 to i64
  %264 = and i64 %263, %255
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %260
  %267 = add i32 %262, 1
  store i32 %267, ptr %9, align 4
  br label %268

268:                                              ; preds = %266, %260
  %269 = phi i32 [ %267, %266 ], [ %262, %260 ]
  %270 = lshr i64 %255, 1
  store i64 %270, ptr %8, align 8
  %271 = add i64 %257, 1
  store i64 %271, ptr %5, align 8
  br label %254, !llvm.loop !17

272:                                              ; preds = %254
  %273 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %238
  store i32 %256, ptr %273, align 4
  br label %274

274:                                              ; preds = %272, %240
  %275 = add i64 %238, 1
  store i64 %275, ptr %6, align 8
  br label %236, !llvm.loop !18

276:                                              ; preds = %236
  store i64 1, ptr %5, align 8
  br label %277

277:                                              ; preds = %.critedge, %276
  %278 = phi i64 [ %304, %.critedge ], [ 1, %276 ]
  %279 = icmp ult i64 %278, 256
  br i1 %279, label %280, label %305

280:                                              ; preds = %277
  %281 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %278
  %282 = load i32, ptr %281, align 4
  store i32 %282, ptr %10, align 4
  %283 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %278
  %284 = load i8, ptr %283, align 1
  store i8 %284, ptr %11, align 1
  store i64 %278, ptr %6, align 8
  br label %285

285:                                              ; preds = %293, %280
  %286 = phi i64 [ %301, %293 ], [ %278, %280 ]
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %.critedge

288:                                              ; preds = %285
  %289 = sub i64 %286, 1
  %290 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %289
  %291 = load i32, ptr %290, align 4
  %292 = icmp ugt i32 %291, %282
  br i1 %292, label %293, label %.critedge

293:                                              ; preds = %288
  %294 = sub i64 %286, 1
  %295 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %294
  %296 = load i32, ptr %295, align 4
  %297 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %286
  store i32 %296, ptr %297, align 4
  %298 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %294
  %299 = load i8, ptr %298, align 1
  %300 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %286
  store i8 %299, ptr %300, align 1
  %301 = add i64 %286, -1
  store i64 %301, ptr %6, align 8
  br label %285, !llvm.loop !19

.critedge:                                        ; preds = %285, %288
  %302 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %286
  store i32 %282, ptr %302, align 4
  %303 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %286
  store i8 %284, ptr %303, align 1
  %304 = add i64 %278, 1
  store i64 %304, ptr %5, align 8
  br label %277, !llvm.loop !20

305:                                              ; preds = %277
  store i64 0, ptr %6, align 8
  br label %306

306:                                              ; preds = %311, %305
  %307 = phi i64 [ %312, %311 ], [ 0, %305 ]
  %308 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %307
  %309 = load i32, ptr %308, align 4
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %306
  %312 = add i64 %307, 1
  store i64 %312, ptr %6, align 8
  br label %306, !llvm.loop !21

313:                                              ; preds = %306
  store i32 0, ptr %9, align 4
  store i64 %307, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  %314 = load ptr, ptr %14, align 8
  store ptr %314, ptr %12, align 8
  %315 = load ptr, ptr %3, align 8
  store ptr %315, ptr %13, align 8
  %.pre = load i64, ptr %4, align 8
  br label %316

316:                                              ; preds = %363, %313
  %317 = phi ptr [ %354, %363 ], [ %315, %313 ]
  %318 = phi i64 [ %355, %363 ], [ %307, %313 ]
  %319 = phi i64 [ %364, %363 ], [ 128, %313 ]
  %320 = phi ptr [ %365, %363 ], [ %314, %313 ]
  %321 = phi i32 [ %356, %363 ], [ 0, %313 ]
  %322 = phi i64 [ %357, %363 ], [ 0, %313 ]
  %323 = icmp ult i64 %322, %.pre
  br i1 %323, label %324, label %366

324:                                              ; preds = %316
  %325 = mul i32 %321, 2
  %326 = add i32 %325, 1
  store i32 %326, ptr %9, align 4
  %327 = load i8, ptr %320, align 1
  %328 = zext i8 %327 to i64
  %329 = and i64 %328, %319
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %333

331:                                              ; preds = %324
  %332 = add i32 %326, 1
  store i32 %332, ptr %9, align 4
  br label %333

333:                                              ; preds = %331, %324
  %334 = phi i32 [ %332, %331 ], [ %326, %324 ]
  br label %335

335:                                              ; preds = %340, %333
  %336 = phi i64 [ %341, %340 ], [ %318, %333 ]
  %337 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %336
  %338 = load i32, ptr %337, align 4
  %339 = icmp ult i32 %338, %334
  br i1 %339, label %340, label %342

340:                                              ; preds = %335
  %341 = add i64 %336, 1
  store i64 %341, ptr %5, align 8
  br label %335, !llvm.loop !22

342:                                              ; preds = %335
  %343 = icmp eq i32 %334, %338
  br i1 %343, label %344, label %352

344:                                              ; preds = %342
  %345 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %336
  %346 = load i8, ptr %345, align 1
  store i8 %346, ptr %317, align 1
  %347 = load ptr, ptr %13, align 8
  %348 = getelementptr inbounds nuw i8, ptr %347, i32 1
  store ptr %348, ptr %13, align 8
  %349 = load i64, ptr %7, align 8
  %350 = add i64 %349, 1
  store i64 %350, ptr %7, align 8
  store i32 0, ptr %9, align 4
  %351 = load i64, ptr %6, align 8
  store i64 %351, ptr %5, align 8
  %.pre1 = load i64, ptr %8, align 8
  br label %352

352:                                              ; preds = %344, %342
  %353 = phi i64 [ %.pre1, %344 ], [ %319, %342 ]
  %354 = phi ptr [ %348, %344 ], [ %317, %342 ]
  %355 = phi i64 [ %351, %344 ], [ %336, %342 ]
  %356 = phi i32 [ 0, %344 ], [ %334, %342 ]
  %357 = phi i64 [ %350, %344 ], [ %322, %342 ]
  %358 = icmp ugt i64 %353, 1
  br i1 %358, label %359, label %361

359:                                              ; preds = %352
  %360 = lshr i64 %353, 1
  store i64 %360, ptr %8, align 8
  br label %363

361:                                              ; preds = %352
  store i64 128, ptr %8, align 8
  %362 = getelementptr inbounds nuw i8, ptr %320, i32 1
  store ptr %362, ptr %12, align 8
  br label %363

363:                                              ; preds = %361, %359
  %364 = phi i64 [ 128, %361 ], [ %360, %359 ]
  %365 = phi ptr [ %362, %361 ], [ %320, %359 ]
  br label %316, !llvm.loop !23

366:                                              ; preds = %316
  call void @free(ptr noundef %314)
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
  %11 = sub nsw i32 %3, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i64, ptr %1, i64 %12
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, ptr %10, align 4
  br label %16

16:                                               ; preds = %50, %4
  %17 = phi i32 [ %39, %50 ], [ %3, %4 ]
  %18 = sdiv i32 %2, 2
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %._crit_edge

._crit_edge:                                      ; preds = %16
  %.pre = sext i32 %15 to i64
  br label %54

20:                                               ; preds = %16
  %21 = add nsw i32 %17, %17
  store i32 %21, ptr %9, align 4
  %22 = icmp slt i32 %21, %2
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = sub nsw i32 %21, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, ptr %1, i64 %25
  %27 = load i64, ptr %26, align 8
  %28 = getelementptr inbounds nuw i64, ptr %0, i64 %27
  %29 = load i64, ptr %28, align 8
  %30 = sext i32 %21 to i64
  %31 = getelementptr inbounds i64, ptr %1, i64 %30
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr inbounds nuw i64, ptr %0, i64 %32
  %34 = load i64, ptr %33, align 8
  %35 = icmp ugt i64 %29, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %23
  %37 = add nsw i32 %21, 1
  store i32 %37, ptr %9, align 4
  br label %38

38:                                               ; preds = %36, %23, %20
  %39 = phi i32 [ %37, %36 ], [ %21, %23 ], [ %21, %20 ]
  %40 = sext i32 %15 to i64
  %41 = getelementptr inbounds i64, ptr %0, i64 %40
  %42 = load i64, ptr %41, align 8
  %43 = sub nsw i32 %39, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, ptr %1, i64 %44
  %46 = load i64, ptr %45, align 8
  %47 = getelementptr inbounds nuw i64, ptr %0, i64 %46
  %48 = load i64, ptr %47, align 8
  %49 = icmp ult i64 %42, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %38
  %51 = sub nsw i32 %17, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, ptr %1, i64 %52
  store i64 %46, ptr %53, align 8
  store i32 %39, ptr %8, align 4
  br label %16, !llvm.loop !24

54:                                               ; preds = %38, %._crit_edge
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %40, %38 ]
  %55 = sub nsw i32 %17, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, ptr %1, i64 %56
  store i64 %.pre-phi, ptr %57, align 8
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
  %10 = icmp sgt i32 %0, 1
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  store i32 1, ptr %6, align 4
  br label %12

12:                                               ; preds = %21, %11
  %13 = phi i32 [ %22, %21 ], [ 1, %11 ]
  %14 = icmp slt i32 %13, %0
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = getelementptr inbounds ptr, ptr %1, i64 1
  %17 = load ptr, ptr %16, align 8
  %18 = call i32 @strcmp(ptr noundef %17, ptr noundef @.str.4) #7
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store i8 1, ptr %7, align 1
  br label %23

21:                                               ; preds = %15
  %22 = add nsw i32 %13, 1
  store i32 %22, ptr %6, align 4
  br label %12, !llvm.loop !25

23:                                               ; preds = %12, %20, %2
  %24 = phi i8 [ 0, %2 ], [ 1, %20 ], [ 0, %12 ]
  %25 = call ptr @generate_test_data(i64 noundef 10000000)
  store ptr %25, ptr %8, align 8
  store i32 0, ptr %6, align 4
  br label %26

26:                                               ; preds = %29, %23
  %27 = phi i32 [ %30, %29 ], [ 0, %23 ]
  %28 = icmp slt i32 %27, 30
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  call void @compdecomp(ptr noundef %25, i64 noundef 10000000)
  %30 = add nsw i32 %27, 1
  store i32 %30, ptr %6, align 4
  br label %26, !llvm.loop !26

31:                                               ; preds = %26
  store double 0.000000e+00, ptr %9, align 8
  call void @free(ptr noundef %25)
  %32 = icmp ne i8 %24, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = call ptr @__acrt_iob_func(i32 noundef 1)
  %35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef @.str.5, double noundef 0.000000e+00) #7
  br label %39

36:                                               ; preds = %31
  %37 = call ptr @__acrt_iob_func(i32 noundef 1)
  %38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef @.str.6, double noundef 0.000000e+00) #7
  br label %39

39:                                               ; preds = %36, %33
  %40 = call ptr @__acrt_iob_func(i32 noundef 1)
  %41 = call i32 @fflush(ptr noundef %40)
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
  %6 = mul nsw i32 %5, 127773
  %7 = sub nsw i32 %4, %6
  %8 = mul nsw i32 16807, %7
  %9 = mul nsw i32 2836, %5
  %10 = sub nsw i32 %8, %9
  store i32 %10, ptr @seed, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = add nsw i32 %10, 2147483647
  store i32 %13, ptr @seed, align 4
  br label %14

14:                                               ; preds = %12, %0
  %15 = phi i32 [ %13, %12 ], [ %10, %0 ]
  %16 = srem i32 %15, 32
  %17 = sext i32 %16 to i64
  store i64 %17, ptr %2, align 8
  %18 = xor i32 %15, 123459876
  store i32 %18, ptr @seed, align 4
  ret i64 %17
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
