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

161:                                              ; preds = %227, %160
  %162 = phi ptr [ %228, %227 ], [ %0, %160 ]
  %163 = phi i64 [ %184, %227 ], [ 0, %160 ]
  %164 = phi ptr [ %185, %227 ], [ %33, %160 ]
  %165 = phi i8 [ %186, %227 ], [ 0, %160 ]
  %166 = phi i32 [ %187, %227 ], [ -1, %160 ]
  %167 = phi i64 [ %188, %227 ], [ %1, %160 ]
  %168 = phi i64 [ %229, %227 ], [ 0, %160 ]
  %169 = icmp ult i64 %168, %167
  br i1 %169, label %170, label %230

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

179:                                              ; preds = %223, %170
  %180 = phi i8 [ %208, %223 ], [ %171, %170 ]
  %181 = phi i64 [ %225, %223 ], [ %178, %170 ]
  %182 = phi i8 [ %.pre4, %223 ], [ %174, %170 ]
  %183 = phi i64 [ %226, %223 ], [ 0, %170 ]
  %184 = phi i64 [ %209, %223 ], [ %163, %170 ]
  %185 = phi ptr [ %210, %223 ], [ %164, %170 ]
  %186 = phi i8 [ %224, %223 ], [ %165, %170 ]
  %187 = phi i32 [ %212, %223 ], [ %166, %170 ]
  %188 = phi i64 [ %213, %223 ], [ %167, %170 ]
  %189 = zext i8 %180 to i64
  %190 = zext i8 %182 to i64
  %191 = icmp ult i64 %183, %190
  br i1 %191, label %192, label %227

192:                                              ; preds = %179
  %193 = icmp eq i32 %187, 7
  br i1 %193, label %194, label %202

194:                                              ; preds = %192
  %195 = getelementptr inbounds nuw i8, ptr %33, i64 %184
  store i8 %186, ptr %195, align 1
  %196 = add i64 %184, 1
  store i64 %196, ptr %26, align 8
  %197 = icmp eq i64 %196, %1
  br i1 %197, label %198, label %201

198:                                              ; preds = %194
  %199 = call ptr @__acrt_iob_func(i32 noundef 2)
  %200 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %199, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

201:                                              ; preds = %194
  store i32 0, ptr %28, align 4
  store i8 0, ptr %27, align 1
  %.pre5 = load i8, ptr %162, align 1
  %.pre6 = zext i8 %.pre5 to i64
  br label %207

202:                                              ; preds = %192
  %203 = add nsw i32 %187, 1
  store i32 %203, ptr %28, align 4
  %204 = sext i8 %186 to i32
  %205 = shl i32 %204, 1
  %206 = trunc i32 %205 to i8
  store i8 %206, ptr %27, align 1
  br label %207

207:                                              ; preds = %202, %201
  %.pre-phi = phi i64 [ %189, %202 ], [ %.pre6, %201 ]
  %208 = phi i8 [ %180, %202 ], [ %.pre5, %201 ]
  %209 = phi i64 [ %184, %202 ], [ %196, %201 ]
  %210 = phi ptr [ %185, %202 ], [ %33, %201 ]
  %211 = phi i8 [ %206, %202 ], [ 0, %201 ]
  %212 = phi i32 [ %203, %202 ], [ 0, %201 ]
  %213 = phi i64 [ %188, %202 ], [ %1, %201 ]
  %214 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %.pre-phi
  %215 = load i32, ptr %214, align 4
  %216 = zext i32 %215 to i64
  %217 = and i64 %216, %181
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %207
  %220 = sext i8 %211 to i32
  %221 = or i32 %220, 1
  %222 = trunc i32 %221 to i8
  store i8 %222, ptr %27, align 1
  br label %223

223:                                              ; preds = %219, %207
  %224 = phi i8 [ %222, %219 ], [ %211, %207 ]
  %225 = lshr i64 %181, 1
  store i64 %225, ptr %8, align 8
  %226 = add i64 %183, 1
  store i64 %226, ptr %5, align 8
  %.phi.trans.insert3 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %.pre-phi
  %.pre4 = load i8, ptr %.phi.trans.insert3, align 1
  br label %179, !llvm.loop !15

227:                                              ; preds = %179
  %228 = getelementptr inbounds nuw i8, ptr %162, i32 1
  store ptr %228, ptr %13, align 8
  %229 = add i64 %168, 1
  store i64 %229, ptr %6, align 8
  br label %161, !llvm.loop !16

230:                                              ; preds = %161
  %231 = sub nsw i32 7, %166
  %232 = sext i8 %165 to i32
  %233 = shl i32 %232, %231
  %234 = trunc i32 %233 to i8
  store i8 %234, ptr %27, align 1
  %235 = getelementptr inbounds nuw i8, ptr %164, i64 %163
  store i8 %234, ptr %235, align 1
  %236 = load i64, ptr %26, align 8
  %237 = add i64 %236, 1
  store i64 %237, ptr %26, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %29, i8 0, i64 1024, i1 false)
  store ptr %30, ptr %31, align 8
  store i64 0, ptr %6, align 8
  br label %238

238:                                              ; preds = %276, %230
  %239 = phi ptr [ %244, %276 ], [ %30, %230 ]
  %240 = phi i64 [ %277, %276 ], [ 0, %230 ]
  %241 = icmp ult i64 %240, 256
  br i1 %241, label %242, label %278

242:                                              ; preds = %238
  %243 = trunc i64 %240 to i8
  store i8 %243, ptr %239, align 1
  %244 = getelementptr inbounds nuw i8, ptr %239, i32 1
  store ptr %244, ptr %31, align 8
  %245 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %240
  %246 = load i32, ptr %245, align 4
  %247 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %240
  %248 = load i8, ptr %247, align 1
  %249 = zext i8 %248 to i32
  %250 = or i32 %246, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %276

252:                                              ; preds = %242
  store i32 0, ptr %9, align 4
  %253 = sub nsw i32 %249, 1
  %254 = shl i32 1, %253
  %255 = sext i32 %254 to i64
  store i64 %255, ptr %8, align 8
  store i64 0, ptr %5, align 8
  br label %256

256:                                              ; preds = %270, %252
  %257 = phi i64 [ %272, %270 ], [ %255, %252 ]
  %258 = phi i32 [ %271, %270 ], [ 0, %252 ]
  %259 = phi i64 [ %273, %270 ], [ 0, %252 ]
  %260 = zext i8 %248 to i64
  %261 = icmp ult i64 %259, %260
  br i1 %261, label %262, label %274

262:                                              ; preds = %256
  %263 = mul i32 %258, 2
  %264 = add i32 %263, 1
  store i32 %264, ptr %9, align 4
  %265 = zext i32 %246 to i64
  %266 = and i64 %265, %257
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %262
  %269 = add i32 %264, 1
  store i32 %269, ptr %9, align 4
  br label %270

270:                                              ; preds = %268, %262
  %271 = phi i32 [ %269, %268 ], [ %264, %262 ]
  %272 = lshr i64 %257, 1
  store i64 %272, ptr %8, align 8
  %273 = add i64 %259, 1
  store i64 %273, ptr %5, align 8
  br label %256, !llvm.loop !17

274:                                              ; preds = %256
  %275 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %240
  store i32 %258, ptr %275, align 4
  br label %276

276:                                              ; preds = %274, %242
  %277 = add i64 %240, 1
  store i64 %277, ptr %6, align 8
  br label %238, !llvm.loop !18

278:                                              ; preds = %238
  store i64 1, ptr %5, align 8
  br label %279

279:                                              ; preds = %306, %278
  %280 = phi i64 [ %309, %306 ], [ 1, %278 ]
  %281 = icmp ult i64 %280, 256
  br i1 %281, label %282, label %310

282:                                              ; preds = %279
  %283 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %280
  %284 = load i32, ptr %283, align 4
  store i32 %284, ptr %10, align 4
  %285 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %280
  %286 = load i8, ptr %285, align 1
  store i8 %286, ptr %11, align 1
  store i64 %280, ptr %6, align 8
  br label %287

287:                                              ; preds = %297, %282
  %288 = phi i64 [ %305, %297 ], [ %280, %282 ]
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %295

290:                                              ; preds = %287
  %291 = sub i64 %288, 1
  %292 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %291
  %293 = load i32, ptr %292, align 4
  %294 = icmp ugt i32 %293, %284
  br label %295

295:                                              ; preds = %290, %287
  %296 = phi i1 [ false, %287 ], [ %294, %290 ]
  br i1 %296, label %297, label %306

297:                                              ; preds = %295
  %298 = sub i64 %288, 1
  %299 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %298
  %300 = load i32, ptr %299, align 4
  %301 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %288
  store i32 %300, ptr %301, align 4
  %302 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %298
  %303 = load i8, ptr %302, align 1
  %304 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %288
  store i8 %303, ptr %304, align 1
  %305 = add i64 %288, -1
  store i64 %305, ptr %6, align 8
  br label %287, !llvm.loop !19

306:                                              ; preds = %295
  %307 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %288
  store i32 %284, ptr %307, align 4
  %308 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %288
  store i8 %286, ptr %308, align 1
  %309 = add i64 %280, 1
  store i64 %309, ptr %5, align 8
  br label %279, !llvm.loop !20

310:                                              ; preds = %279
  store i64 0, ptr %6, align 8
  br label %311

311:                                              ; preds = %316, %310
  %312 = phi i64 [ %317, %316 ], [ 0, %310 ]
  %313 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %312
  %314 = load i32, ptr %313, align 4
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %318

316:                                              ; preds = %311
  %317 = add i64 %312, 1
  store i64 %317, ptr %6, align 8
  br label %311, !llvm.loop !21

318:                                              ; preds = %311
  store i32 0, ptr %9, align 4
  store i64 %312, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  %319 = load ptr, ptr %14, align 8
  store ptr %319, ptr %12, align 8
  %320 = load ptr, ptr %3, align 8
  store ptr %320, ptr %13, align 8
  %.pre = load i64, ptr %4, align 8
  br label %321

321:                                              ; preds = %368, %318
  %322 = phi ptr [ %359, %368 ], [ %320, %318 ]
  %323 = phi i64 [ %360, %368 ], [ %312, %318 ]
  %324 = phi i64 [ %369, %368 ], [ 128, %318 ]
  %325 = phi ptr [ %370, %368 ], [ %319, %318 ]
  %326 = phi i32 [ %361, %368 ], [ 0, %318 ]
  %327 = phi i64 [ %362, %368 ], [ 0, %318 ]
  %328 = icmp ult i64 %327, %.pre
  br i1 %328, label %329, label %371

329:                                              ; preds = %321
  %330 = mul i32 %326, 2
  %331 = add i32 %330, 1
  store i32 %331, ptr %9, align 4
  %332 = load i8, ptr %325, align 1
  %333 = zext i8 %332 to i64
  %334 = and i64 %333, %324
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %338

336:                                              ; preds = %329
  %337 = add i32 %331, 1
  store i32 %337, ptr %9, align 4
  br label %338

338:                                              ; preds = %336, %329
  %339 = phi i32 [ %337, %336 ], [ %331, %329 ]
  br label %340

340:                                              ; preds = %345, %338
  %341 = phi i64 [ %346, %345 ], [ %323, %338 ]
  %342 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %341
  %343 = load i32, ptr %342, align 4
  %344 = icmp ult i32 %343, %339
  br i1 %344, label %345, label %347

345:                                              ; preds = %340
  %346 = add i64 %341, 1
  store i64 %346, ptr %5, align 8
  br label %340, !llvm.loop !22

347:                                              ; preds = %340
  %348 = icmp eq i32 %339, %343
  br i1 %348, label %349, label %357

349:                                              ; preds = %347
  %350 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %341
  %351 = load i8, ptr %350, align 1
  store i8 %351, ptr %322, align 1
  %352 = load ptr, ptr %13, align 8
  %353 = getelementptr inbounds nuw i8, ptr %352, i32 1
  store ptr %353, ptr %13, align 8
  %354 = load i64, ptr %7, align 8
  %355 = add i64 %354, 1
  store i64 %355, ptr %7, align 8
  store i32 0, ptr %9, align 4
  %356 = load i64, ptr %6, align 8
  store i64 %356, ptr %5, align 8
  %.pre1 = load i64, ptr %8, align 8
  br label %357

357:                                              ; preds = %349, %347
  %358 = phi i64 [ %.pre1, %349 ], [ %324, %347 ]
  %359 = phi ptr [ %353, %349 ], [ %322, %347 ]
  %360 = phi i64 [ %356, %349 ], [ %341, %347 ]
  %361 = phi i32 [ 0, %349 ], [ %339, %347 ]
  %362 = phi i64 [ %355, %349 ], [ %327, %347 ]
  %363 = icmp ugt i64 %358, 1
  br i1 %363, label %364, label %366

364:                                              ; preds = %357
  %365 = lshr i64 %358, 1
  store i64 %365, ptr %8, align 8
  br label %368

366:                                              ; preds = %357
  store i64 128, ptr %8, align 8
  %367 = getelementptr inbounds nuw i8, ptr %325, i32 1
  store ptr %367, ptr %12, align 8
  br label %368

368:                                              ; preds = %366, %364
  %369 = phi i64 [ 128, %366 ], [ %365, %364 ]
  %370 = phi ptr [ %367, %366 ], [ %325, %364 ]
  br label %321, !llvm.loop !23

371:                                              ; preds = %321
  call void @free(ptr noundef %319)
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
