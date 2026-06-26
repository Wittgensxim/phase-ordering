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

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %73, %69
  %71 = phi i64 [ %74, %73 ], [ %48, %69 ]
  %72 = icmp ugt i64 %71, 1
  br i1 %72, label %73, label %92

73:                                               ; preds = %70
  %74 = add i64 %71, -1
  store i64 %74, ptr %7, align 8
  %75 = load i64, ptr %16, align 16
  store i64 %75, ptr %20, align 8
  %76 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %74
  %77 = load i64, ptr %76, align 8
  store i64 %77, ptr %16, align 16
  %78 = trunc i64 %74 to i32
  call void @heap_adjust(ptr noundef %15, ptr noundef %16, i32 noundef %78, i32 noundef 1)
  %79 = load i64, ptr %16, align 16
  %80 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %79
  %81 = load i64, ptr %80, align 8
  %82 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %75
  %83 = load i64, ptr %82, align 8
  %84 = add i64 %81, %83
  %85 = add i64 256, %74
  %86 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %85
  store i64 %84, ptr %86, align 8
  %87 = trunc i64 %85 to i32
  %88 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %75
  store i32 %87, ptr %88, align 4
  %89 = sub i64 -256, %74
  %90 = trunc i64 %89 to i32
  %91 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %79
  store i32 %90, ptr %91, align 4
  store i64 %85, ptr %16, align 16
  call void @heap_adjust(ptr noundef %15, ptr noundef %16, i32 noundef %78, i32 noundef 1)
  br label %70, !llvm.loop !12

92:                                               ; preds = %70
  %93 = add i64 256, %71
  %94 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %93
  store i32 0, ptr %94, align 4
  store i64 0, ptr %23, align 8
  store i64 0, ptr %24, align 8
  store i64 0, ptr %21, align 8
  br label %95

95:                                               ; preds = %144, %92
  %96 = phi i64 [ %145, %144 ], [ 0, %92 ]
  %97 = phi i64 [ %146, %144 ], [ 0, %92 ]
  %98 = phi i64 [ %147, %144 ], [ 0, %92 ]
  %99 = phi i64 [ %148, %144 ], [ 0, %92 ]
  %100 = phi i64 [ %149, %144 ], [ 0, %92 ]
  %101 = icmp ult i64 %100, 256
  br i1 %101, label %102, label %150

102:                                              ; preds = %95
  %103 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %100
  %104 = load i64, ptr %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %100
  store i32 0, ptr %107, align 4
  %108 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %100
  store i8 0, ptr %108, align 1
  br label %144

109:                                              ; preds = %102
  store i64 0, ptr %5, align 8
  store i64 1, ptr %6, align 8
  store i64 0, ptr %22, align 8
  %110 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %100
  %111 = load i32, ptr %110, align 4
  store i32 %111, ptr %25, align 4
  br label %112

112:                                              ; preds = %123, %109
  %113 = phi i64 [ %129, %123 ], [ 1, %109 ]
  %114 = phi i64 [ %130, %123 ], [ 0, %109 ]
  %115 = phi i64 [ %125, %123 ], [ 0, %109 ]
  %116 = phi i32 [ %128, %123 ], [ %111, %109 ]
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %112
  %119 = icmp slt i32 %116, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %118
  %121 = add i64 %115, %113
  store i64 %121, ptr %22, align 8
  %122 = sub nsw i32 0, %116
  store i32 %122, ptr %25, align 4
  br label %123

123:                                              ; preds = %120, %118
  %124 = phi i32 [ %122, %120 ], [ %116, %118 ]
  %125 = phi i64 [ %121, %120 ], [ %115, %118 ]
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds [512 x i32], ptr %17, i64 0, i64 %126
  %128 = load i32, ptr %127, align 4
  store i32 %128, ptr %25, align 4
  %129 = shl i64 %113, 1
  store i64 %129, ptr %6, align 8
  %130 = add i64 %114, 1
  store i64 %130, ptr %5, align 8
  br label %112, !llvm.loop !13

131:                                              ; preds = %112
  %132 = trunc i64 %115 to i32
  %133 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %100
  store i32 %132, ptr %133, align 4
  %134 = trunc i64 %114 to i8
  %135 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %100
  store i8 %134, ptr %135, align 1
  %136 = icmp ugt i64 %115, %97
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  store i64 %115, ptr %23, align 8
  br label %138

138:                                              ; preds = %137, %131
  %139 = phi i64 [ %115, %137 ], [ %97, %131 ]
  %140 = icmp ugt i64 %114, %96
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  store i64 %114, ptr %24, align 8
  br label %142

142:                                              ; preds = %141, %138
  %143 = phi i64 [ %114, %141 ], [ %96, %138 ]
  br label %144

144:                                              ; preds = %142, %106
  %145 = phi i64 [ %143, %142 ], [ %96, %106 ]
  %146 = phi i64 [ %139, %142 ], [ %97, %106 ]
  %147 = phi i64 [ %139, %142 ], [ %98, %106 ]
  %148 = phi i64 [ %143, %142 ], [ %99, %106 ]
  %149 = add i64 %100, 1
  store i64 %149, ptr %21, align 8
  br label %95, !llvm.loop !14

150:                                              ; preds = %95
  %151 = icmp ugt i64 %99, 32
  br i1 %151, label %152, label %155

152:                                              ; preds = %150
  %153 = call ptr @__acrt_iob_func(i32 noundef 2)
  %154 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %153, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

155:                                              ; preds = %150
  store i64 0, ptr %26, align 8
  store i8 0, ptr %27, align 1
  store i32 -1, ptr %28, align 4
  store ptr %0, ptr %13, align 8
  %156 = icmp eq i64 %98, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %155
  %158 = call ptr @__acrt_iob_func(i32 noundef 2)
  %159 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %158, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

160:                                              ; preds = %155
  store i64 0, ptr %6, align 8
  br label %161

161:                                              ; preds = %228, %160
  %162 = phi ptr [ %229, %228 ], [ %0, %160 ]
  %163 = phi i64 [ %184, %228 ], [ 0, %160 ]
  %164 = phi ptr [ %185, %228 ], [ %33, %160 ]
  %165 = phi i8 [ %186, %228 ], [ 0, %160 ]
  %166 = phi i32 [ %187, %228 ], [ -1, %160 ]
  %167 = phi i64 [ %188, %228 ], [ %1, %160 ]
  %168 = phi i64 [ %230, %228 ], [ 0, %160 ]
  %169 = icmp ult i64 %168, %167
  br i1 %169, label %170, label %231

170:                                              ; preds = %161
  %171 = load i8, ptr %162, align 1
  %172 = zext i8 %171 to i64
  %173 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %172
  %174 = load i8, ptr %173, align 1
  %175 = zext i8 %174 to i32
  %176 = sub nsw i32 %175, 1
  %177 = shl i32 1, %176
  %178 = sext i32 %177 to i64
  store i64 %178, ptr %8, align 8
  store i64 0, ptr %5, align 8
  br label %179

179:                                              ; preds = %224, %170
  %180 = phi i8 [ %209, %224 ], [ %171, %170 ]
  %181 = phi i64 [ %226, %224 ], [ %178, %170 ]
  %182 = phi i8 [ %.pre4, %224 ], [ %174, %170 ]
  %183 = phi i64 [ %227, %224 ], [ 0, %170 ]
  %184 = phi i64 [ %210, %224 ], [ %163, %170 ]
  %185 = phi ptr [ %211, %224 ], [ %164, %170 ]
  %186 = phi i8 [ %225, %224 ], [ %165, %170 ]
  %187 = phi i32 [ %213, %224 ], [ %166, %170 ]
  %188 = phi i64 [ %214, %224 ], [ %167, %170 ]
  %189 = zext i8 %180 to i64
  %190 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %189
  %191 = zext i8 %182 to i64
  %192 = icmp ult i64 %183, %191
  br i1 %192, label %193, label %228

193:                                              ; preds = %179
  %194 = icmp eq i32 %187, 7
  br i1 %194, label %195, label %203

195:                                              ; preds = %193
  %196 = getelementptr inbounds nuw i8, ptr %33, i64 %184
  store i8 %186, ptr %196, align 1
  %197 = add i64 %184, 1
  store i64 %197, ptr %26, align 8
  %198 = icmp eq i64 %197, %1
  br i1 %198, label %199, label %202

199:                                              ; preds = %195
  %200 = call ptr @__acrt_iob_func(i32 noundef 2)
  %201 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %200, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

202:                                              ; preds = %195
  store i32 0, ptr %28, align 4
  store i8 0, ptr %27, align 1
  %.pre5 = load i8, ptr %162, align 1
  %.pre6 = zext i8 %.pre5 to i64
  br label %208

203:                                              ; preds = %193
  %204 = add nsw i32 %187, 1
  store i32 %204, ptr %28, align 4
  %205 = sext i8 %186 to i32
  %206 = shl i32 %205, 1
  %207 = trunc i32 %206 to i8
  store i8 %207, ptr %27, align 1
  br label %208

208:                                              ; preds = %203, %202
  %.pre-phi = phi i64 [ %189, %203 ], [ %.pre6, %202 ]
  %209 = phi i8 [ %180, %203 ], [ %.pre5, %202 ]
  %210 = phi i64 [ %184, %203 ], [ %197, %202 ]
  %211 = phi ptr [ %185, %203 ], [ %33, %202 ]
  %212 = phi i8 [ %207, %203 ], [ 0, %202 ]
  %213 = phi i32 [ %204, %203 ], [ 0, %202 ]
  %214 = phi i64 [ %188, %203 ], [ %1, %202 ]
  %215 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %.pre-phi
  %216 = load i32, ptr %215, align 4
  %217 = zext i32 %216 to i64
  %218 = and i64 %217, %181
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %208
  %221 = sext i8 %212 to i32
  %222 = or i32 %221, 1
  %223 = trunc i32 %222 to i8
  store i8 %223, ptr %27, align 1
  br label %224

224:                                              ; preds = %220, %208
  %225 = phi i8 [ %223, %220 ], [ %212, %208 ]
  %226 = lshr i64 %181, 1
  store i64 %226, ptr %8, align 8
  %227 = add i64 %183, 1
  store i64 %227, ptr %5, align 8
  %.phi.trans.insert3 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %.pre-phi
  %.pre4 = load i8, ptr %.phi.trans.insert3, align 1
  br label %179, !llvm.loop !15

228:                                              ; preds = %179
  %229 = getelementptr inbounds nuw i8, ptr %162, i32 1
  store ptr %229, ptr %13, align 8
  %230 = add i64 %168, 1
  store i64 %230, ptr %6, align 8
  br label %161, !llvm.loop !16

231:                                              ; preds = %161
  %232 = sub nsw i32 7, %166
  %233 = sext i8 %165 to i32
  %234 = shl i32 %233, %232
  %235 = trunc i32 %234 to i8
  store i8 %235, ptr %27, align 1
  %236 = getelementptr inbounds nuw i8, ptr %164, i64 %163
  store i8 %235, ptr %236, align 1
  %237 = load i64, ptr %26, align 8
  %238 = add i64 %237, 1
  store i64 %238, ptr %26, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %29, i8 0, i64 1024, i1 false)
  store ptr %30, ptr %31, align 8
  store i64 0, ptr %6, align 8
  br label %239

239:                                              ; preds = %277, %231
  %240 = phi ptr [ %245, %277 ], [ %30, %231 ]
  %241 = phi i64 [ %278, %277 ], [ 0, %231 ]
  %242 = icmp ult i64 %241, 256
  br i1 %242, label %243, label %279

243:                                              ; preds = %239
  %244 = trunc i64 %241 to i8
  store i8 %244, ptr %240, align 1
  %245 = getelementptr inbounds nuw i8, ptr %240, i32 1
  store ptr %245, ptr %31, align 8
  %246 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %241
  %247 = load i32, ptr %246, align 4
  %248 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %241
  %249 = load i8, ptr %248, align 1
  %250 = zext i8 %249 to i32
  %251 = or i32 %247, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %277

253:                                              ; preds = %243
  store i32 0, ptr %9, align 4
  %254 = sub nsw i32 %250, 1
  %255 = shl i32 1, %254
  %256 = sext i32 %255 to i64
  store i64 %256, ptr %8, align 8
  store i64 0, ptr %5, align 8
  br label %257

257:                                              ; preds = %271, %253
  %258 = phi i64 [ %273, %271 ], [ %256, %253 ]
  %259 = phi i32 [ %272, %271 ], [ 0, %253 ]
  %260 = phi i64 [ %274, %271 ], [ 0, %253 ]
  %261 = zext i8 %249 to i64
  %262 = icmp ult i64 %260, %261
  br i1 %262, label %263, label %275

263:                                              ; preds = %257
  %264 = mul i32 %259, 2
  %265 = add i32 %264, 1
  store i32 %265, ptr %9, align 4
  %266 = zext i32 %247 to i64
  %267 = and i64 %266, %258
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %263
  %270 = add i32 %265, 1
  store i32 %270, ptr %9, align 4
  br label %271

271:                                              ; preds = %269, %263
  %272 = phi i32 [ %270, %269 ], [ %265, %263 ]
  %273 = lshr i64 %258, 1
  store i64 %273, ptr %8, align 8
  %274 = add i64 %260, 1
  store i64 %274, ptr %5, align 8
  br label %257, !llvm.loop !17

275:                                              ; preds = %257
  %276 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %241
  store i32 %259, ptr %276, align 4
  br label %277

277:                                              ; preds = %275, %243
  %278 = add i64 %241, 1
  store i64 %278, ptr %6, align 8
  br label %239, !llvm.loop !18

279:                                              ; preds = %239
  store i64 1, ptr %5, align 8
  br label %280

280:                                              ; preds = %307, %279
  %281 = phi i64 [ %310, %307 ], [ 1, %279 ]
  %282 = icmp ult i64 %281, 256
  br i1 %282, label %283, label %311

283:                                              ; preds = %280
  %284 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %281
  %285 = load i32, ptr %284, align 4
  store i32 %285, ptr %10, align 4
  %286 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %281
  %287 = load i8, ptr %286, align 1
  store i8 %287, ptr %11, align 1
  store i64 %281, ptr %6, align 8
  br label %288

288:                                              ; preds = %298, %283
  %289 = phi i64 [ %306, %298 ], [ %281, %283 ]
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %296

291:                                              ; preds = %288
  %292 = sub i64 %289, 1
  %293 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %292
  %294 = load i32, ptr %293, align 4
  %295 = icmp ugt i32 %294, %285
  br label %296

296:                                              ; preds = %291, %288
  %297 = phi i1 [ false, %288 ], [ %295, %291 ]
  br i1 %297, label %298, label %307

298:                                              ; preds = %296
  %299 = sub i64 %289, 1
  %300 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %299
  %301 = load i32, ptr %300, align 4
  %302 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %289
  store i32 %301, ptr %302, align 4
  %303 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %299
  %304 = load i8, ptr %303, align 1
  %305 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %289
  store i8 %304, ptr %305, align 1
  %306 = add i64 %289, -1
  store i64 %306, ptr %6, align 8
  br label %288, !llvm.loop !19

307:                                              ; preds = %296
  %308 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %289
  store i32 %285, ptr %308, align 4
  %309 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %289
  store i8 %287, ptr %309, align 1
  %310 = add i64 %281, 1
  store i64 %310, ptr %5, align 8
  br label %280, !llvm.loop !20

311:                                              ; preds = %280
  store i64 0, ptr %6, align 8
  br label %312

312:                                              ; preds = %317, %311
  %313 = phi i64 [ %318, %317 ], [ 0, %311 ]
  %314 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %313
  %315 = load i32, ptr %314, align 4
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %319

317:                                              ; preds = %312
  %318 = add i64 %313, 1
  store i64 %318, ptr %6, align 8
  br label %312, !llvm.loop !21

319:                                              ; preds = %312
  store i32 0, ptr %9, align 4
  store i64 %313, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  %320 = load ptr, ptr %14, align 8
  store ptr %320, ptr %12, align 8
  %321 = load ptr, ptr %3, align 8
  store ptr %321, ptr %13, align 8
  %.pre = load i64, ptr %4, align 8
  br label %322

322:                                              ; preds = %369, %319
  %323 = phi ptr [ %360, %369 ], [ %321, %319 ]
  %324 = phi i64 [ %361, %369 ], [ %313, %319 ]
  %325 = phi i64 [ %370, %369 ], [ 128, %319 ]
  %326 = phi ptr [ %371, %369 ], [ %320, %319 ]
  %327 = phi i32 [ %362, %369 ], [ 0, %319 ]
  %328 = phi i64 [ %363, %369 ], [ 0, %319 ]
  %329 = icmp ult i64 %328, %.pre
  br i1 %329, label %330, label %372

330:                                              ; preds = %322
  %331 = mul i32 %327, 2
  %332 = add i32 %331, 1
  store i32 %332, ptr %9, align 4
  %333 = load i8, ptr %326, align 1
  %334 = zext i8 %333 to i64
  %335 = and i64 %334, %325
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %339

337:                                              ; preds = %330
  %338 = add i32 %332, 1
  store i32 %338, ptr %9, align 4
  br label %339

339:                                              ; preds = %337, %330
  %340 = phi i32 [ %338, %337 ], [ %332, %330 ]
  br label %341

341:                                              ; preds = %346, %339
  %342 = phi i64 [ %347, %346 ], [ %324, %339 ]
  %343 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %342
  %344 = load i32, ptr %343, align 4
  %345 = icmp ult i32 %344, %340
  br i1 %345, label %346, label %348

346:                                              ; preds = %341
  %347 = add i64 %342, 1
  store i64 %347, ptr %5, align 8
  br label %341, !llvm.loop !22

348:                                              ; preds = %341
  %349 = icmp eq i32 %340, %344
  br i1 %349, label %350, label %358

350:                                              ; preds = %348
  %351 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %342
  %352 = load i8, ptr %351, align 1
  store i8 %352, ptr %323, align 1
  %353 = load ptr, ptr %13, align 8
  %354 = getelementptr inbounds nuw i8, ptr %353, i32 1
  store ptr %354, ptr %13, align 8
  %355 = load i64, ptr %7, align 8
  %356 = add i64 %355, 1
  store i64 %356, ptr %7, align 8
  store i32 0, ptr %9, align 4
  %357 = load i64, ptr %6, align 8
  store i64 %357, ptr %5, align 8
  %.pre1 = load i64, ptr %8, align 8
  br label %358

358:                                              ; preds = %350, %348
  %359 = phi i64 [ %.pre1, %350 ], [ %325, %348 ]
  %360 = phi ptr [ %354, %350 ], [ %323, %348 ]
  %361 = phi i64 [ %357, %350 ], [ %342, %348 ]
  %362 = phi i32 [ 0, %350 ], [ %340, %348 ]
  %363 = phi i64 [ %356, %350 ], [ %328, %348 ]
  %364 = icmp ugt i64 %359, 1
  br i1 %364, label %365, label %367

365:                                              ; preds = %358
  %366 = lshr i64 %359, 1
  store i64 %366, ptr %8, align 8
  br label %369

367:                                              ; preds = %358
  store i64 128, ptr %8, align 8
  %368 = getelementptr inbounds nuw i8, ptr %326, i32 1
  store ptr %368, ptr %12, align 8
  br label %369

369:                                              ; preds = %367, %365
  %370 = phi i64 [ 128, %367 ], [ %366, %365 ]
  %371 = phi ptr [ %368, %367 ], [ %326, %365 ]
  br label %322, !llvm.loop !23

372:                                              ; preds = %322
  call void @free(ptr noundef %320)
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

16:                                               ; preds = %51, %4
  %17 = phi i32 [ %39, %51 ], [ %3, %4 ]
  %18 = sdiv i32 %2, 2
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %._crit_edge

._crit_edge:                                      ; preds = %16
  %.pre = sext i32 %15 to i64
  br label %55

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
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %55

51:                                               ; preds = %38
  %52 = sub nsw i32 %17, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, ptr %1, i64 %53
  store i64 %46, ptr %54, align 8
  store i32 %39, ptr %8, align 4
  br label %16, !llvm.loop !24

55:                                               ; preds = %._crit_edge, %50
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %40, %50 ]
  %56 = sub nsw i32 %17, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, ptr %1, i64 %57
  store i64 %.pre-phi, ptr %58, align 8
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
  br i1 %10, label %11, label %25

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

23:                                               ; preds = %20, %12
  %24 = phi i8 [ 1, %20 ], [ 0, %12 ]
  br label %25

25:                                               ; preds = %23, %2
  %26 = phi i8 [ %24, %23 ], [ 0, %2 ]
  %27 = call ptr @generate_test_data(i64 noundef 10000000)
  store ptr %27, ptr %8, align 8
  store i32 0, ptr %6, align 4
  br label %28

28:                                               ; preds = %31, %25
  %29 = phi i32 [ %32, %31 ], [ 0, %25 ]
  %30 = icmp slt i32 %29, 30
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  call void @compdecomp(ptr noundef %27, i64 noundef 10000000)
  %32 = add nsw i32 %29, 1
  store i32 %32, ptr %6, align 4
  br label %28, !llvm.loop !26

33:                                               ; preds = %28
  store double 0.000000e+00, ptr %9, align 8
  call void @free(ptr noundef %27)
  %34 = icmp ne i8 %26, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = call ptr @__acrt_iob_func(i32 noundef 1)
  %37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.5, double noundef 0.000000e+00) #7
  br label %41

38:                                               ; preds = %33
  %39 = call ptr @__acrt_iob_func(i32 noundef 1)
  %40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef @.str.6, double noundef 0.000000e+00) #7
  br label %41

41:                                               ; preds = %38, %35
  %42 = call ptr @__acrt_iob_func(i32 noundef 1)
  %43 = call i32 @fflush(ptr noundef %42)
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
