; ModuleID = 'results\paper_full\CoyoteBench_huffbench\round_000\output.ll'
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

3:                                                ; preds = %11, %1
  %.01 = phi ptr [ %2, %1 ], [ %10, %11 ]
  %.0 = phi i32 [ 0, %1 ], [ %12, %11 ]
  %4 = sext i32 %.0 to i64
  %5 = icmp ult i64 %4, %0
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = call i64 @random4()
  %8 = getelementptr inbounds nuw i8, ptr @.str, i64 %7
  %9 = load i8, ptr %8, align 1
  store i8 %9, ptr %.01, align 1
  %10 = getelementptr inbounds nuw i8, ptr %.01, i32 1
  br label %11

11:                                               ; preds = %6
  %12 = add nsw i32 %.0, 1
  br label %3, !llvm.loop !7

13:                                               ; preds = %3
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

12:                                               ; preds = %21, %2
  %.033 = phi ptr [ %0, %2 ], [ %20, %21 ]
  %.02 = phi i64 [ 0, %2 ], [ %22, %21 ]
  %13 = icmp ult i64 %.02, %1
  br i1 %13, label %14, label %23

14:                                               ; preds = %12
  %15 = load i8, ptr %.033, align 1
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %16
  %18 = load i64, ptr %17, align 8
  %19 = add i64 %18, 1
  store i64 %19, ptr %17, align 8
  %20 = getelementptr inbounds nuw i8, ptr %.033, i32 1
  br label %21

21:                                               ; preds = %14
  %22 = add i64 %.02, 1
  br label %12, !llvm.loop !9

23:                                               ; preds = %12
  br label %24

24:                                               ; preds = %44, %23
  %.010 = phi i64 [ 0, %23 ], [ %.111.1, %44 ]
  %.13 = phi i64 [ 0, %23 ], [ %45, %44 ]
  %25 = icmp samesign ult i64 %.13, 256
  br i1 %25, label %26, label %46

26:                                               ; preds = %24
  %27 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.13
  %28 = load i64, ptr %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.010
  store i64 %.13, ptr %31, align 8
  %32 = add i64 %.010, 1
  br label %33

33:                                               ; preds = %30, %26
  %.111 = phi i64 [ %32, %30 ], [ %.010, %26 ]
  br label %34

34:                                               ; preds = %33
  %35 = add nuw nsw i64 %.13, 1
  br label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %35
  %38 = load i64, ptr %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.111
  store i64 %35, ptr %41, align 8
  %42 = add i64 %.111, 1
  br label %43

43:                                               ; preds = %40, %36
  %.111.1 = phi i64 [ %42, %40 ], [ %.111, %36 ]
  br label %44

44:                                               ; preds = %43
  %45 = add nuw nsw i64 %.13, 2
  br label %24, !llvm.loop !10

46:                                               ; preds = %24
  br label %47

47:                                               ; preds = %52, %46
  %.24 = phi i64 [ %.010, %46 ], [ %53, %52 ]
  %48 = icmp ugt i64 %.24, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %47
  %50 = trunc i64 %.010 to i32
  %51 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %50, i32 noundef %51)
  br label %52

52:                                               ; preds = %49
  %53 = add i64 %.24, -1
  br label %47, !llvm.loop !11

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %57, %54
  %.212 = phi i64 [ %.010, %54 ], [ %58, %57 ]
  %56 = icmp ugt i64 %.212, 1
  br i1 %56, label %57, label %77

57:                                               ; preds = %55
  %58 = add i64 %.212, -1
  %59 = load i64, ptr %4, align 16
  %60 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %58
  %61 = load i64, ptr %60, align 8
  store i64 %61, ptr %4, align 16
  %62 = trunc i64 %58 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %62, i32 noundef 1)
  %63 = load i64, ptr %4, align 16
  %64 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %63
  %65 = load i64, ptr %64, align 8
  %66 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %59
  %67 = load i64, ptr %66, align 8
  %68 = add i64 %65, %67
  %69 = add i64 256, %58
  %70 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %69
  store i64 %68, ptr %70, align 8
  %71 = trunc i64 %69 to i32
  %72 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %59
  store i32 %71, ptr %72, align 4
  %73 = sub i64 -256, %58
  %74 = trunc i64 %73 to i32
  %75 = load i64, ptr %4, align 16
  %76 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %75
  store i32 %74, ptr %76, align 4
  store i64 %69, ptr %4, align 16
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %62, i32 noundef 1)
  br label %55, !llvm.loop !12

77:                                               ; preds = %55
  %78 = add i64 256, %.212
  %79 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %78
  store i32 0, ptr %79, align 4
  br label %80

80:                                               ; preds = %117, %77
  %.045 = phi i64 [ 0, %77 ], [ %.146, %117 ]
  %.042 = phi i64 [ 0, %77 ], [ %118, %117 ]
  %.039 = phi i64 [ 0, %77 ], [ %.140, %117 ]
  %81 = icmp ult i64 %.042, 256
  br i1 %81, label %82, label %119

82:                                               ; preds = %80
  %83 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.042
  %84 = load i64, ptr %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 0, ptr %87, align 4
  %88 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 0, ptr %88, align 1
  br label %116

89:                                               ; preds = %82
  %90 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.042
  %91 = load i32, ptr %90, align 4
  br label %92

92:                                               ; preds = %99, %89
  %.043 = phi i64 [ 0, %89 ], [ %.144, %99 ]
  %.037 = phi i32 [ %91, %89 ], [ %102, %99 ]
  %.05 = phi i64 [ 1, %89 ], [ %103, %99 ]
  %.3 = phi i64 [ 0, %89 ], [ %104, %99 ]
  %93 = icmp ne i32 %.037, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %92
  %95 = icmp slt i32 %.037, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %94
  %97 = add i64 %.043, %.05
  %98 = sub nsw i32 0, %.037
  br label %99

99:                                               ; preds = %96, %94
  %.144 = phi i64 [ %97, %96 ], [ %.043, %94 ]
  %.138 = phi i32 [ %98, %96 ], [ %.037, %94 ]
  %100 = sext i32 %.138 to i64
  %101 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %100
  %102 = load i32, ptr %101, align 4
  %103 = shl i64 %.05, 1
  %104 = add i64 %.3, 1
  br label %92, !llvm.loop !13

105:                                              ; preds = %92
  %106 = trunc i64 %.043 to i32
  %107 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 %106, ptr %107, align 4
  %108 = trunc i64 %.3 to i8
  %109 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 %108, ptr %109, align 1
  %110 = icmp ugt i64 %.043, %.045
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %112

112:                                              ; preds = %111, %105
  %.247 = phi i64 [ %.043, %111 ], [ %.045, %105 ]
  %113 = icmp ugt i64 %.3, %.039
  br i1 %113, label %114, label %115

114:                                              ; preds = %112
  br label %115

115:                                              ; preds = %114, %112
  %.241 = phi i64 [ %.3, %114 ], [ %.039, %112 ]
  br label %116

116:                                              ; preds = %115, %86
  %.146 = phi i64 [ %.247, %115 ], [ %.045, %86 ]
  %.140 = phi i64 [ %.241, %115 ], [ %.039, %86 ]
  br label %117

117:                                              ; preds = %116
  %118 = add i64 %.042, 1
  br label %80, !llvm.loop !14

119:                                              ; preds = %80
  %120 = icmp ugt i64 %.039, 32
  br i1 %120, label %121, label %124

121:                                              ; preds = %119
  %122 = call ptr @__acrt_iob_func(i32 noundef 2)
  %123 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %122, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

124:                                              ; preds = %119
  %125 = icmp eq i64 %.045, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %124
  %127 = call ptr @__acrt_iob_func(i32 noundef 2)
  %128 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

129:                                              ; preds = %124
  br label %130

130:                                              ; preds = %181, %129
  %.134 = phi ptr [ %0, %129 ], [ %180, %181 ]
  %.028 = phi i64 [ 0, %129 ], [ %.129, %181 ]
  %.024 = phi i8 [ 0, %129 ], [ %.125, %181 ]
  %.16 = phi i64 [ 0, %129 ], [ %182, %181 ]
  %.01 = phi i32 [ -1, %129 ], [ %.1, %181 ]
  %131 = icmp ult i64 %.16, %1
  br i1 %131, label %132, label %183

132:                                              ; preds = %130
  %133 = load i8, ptr %.134, align 1
  %134 = zext i8 %133 to i64
  %135 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %134
  %136 = load i8, ptr %135, align 1
  %137 = zext i8 %136 to i32
  %138 = sub nsw i32 %137, 1
  %139 = shl i32 1, %138
  %140 = sext i32 %139 to i64
  br label %141

141:                                              ; preds = %177, %132
  %.129 = phi i64 [ %.028, %132 ], [ %.230, %177 ]
  %.125 = phi i8 [ %.024, %132 ], [ %.327, %177 ]
  %.015 = phi i64 [ %140, %132 ], [ %176, %177 ]
  %.4 = phi i64 [ 0, %132 ], [ %178, %177 ]
  %.1 = phi i32 [ %.01, %132 ], [ %.2, %177 ]
  %142 = load i8, ptr %.134, align 1
  %143 = zext i8 %142 to i64
  %144 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %143
  %145 = load i8, ptr %144, align 1
  %146 = zext i8 %145 to i64
  %147 = icmp ult i64 %.4, %146
  br i1 %147, label %148, label %179

148:                                              ; preds = %141
  %149 = icmp eq i32 %.1, 7
  br i1 %149, label %150, label %158

150:                                              ; preds = %148
  %151 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %151, align 1
  %152 = add i64 %.129, 1
  %153 = icmp eq i64 %152, %1
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = call ptr @__acrt_iob_func(i32 noundef 2)
  %156 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %155, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

157:                                              ; preds = %150
  br label %163

158:                                              ; preds = %148
  %159 = add nsw i32 %.1, 1
  %160 = sext i8 %.125 to i32
  %161 = shl i32 %160, 1
  %162 = trunc i32 %161 to i8
  br label %163

163:                                              ; preds = %158, %157
  %.230 = phi i64 [ %152, %157 ], [ %.129, %158 ]
  %.226 = phi i8 [ 0, %157 ], [ %162, %158 ]
  %.2 = phi i32 [ 0, %157 ], [ %159, %158 ]
  %164 = load i8, ptr %.134, align 1
  %165 = zext i8 %164 to i64
  %166 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %165
  %167 = load i32, ptr %166, align 4
  %168 = zext i32 %167 to i64
  %169 = and i64 %168, %.015
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %163
  %172 = sext i8 %.226 to i32
  %173 = or i32 %172, 1
  %174 = trunc i32 %173 to i8
  br label %175

175:                                              ; preds = %171, %163
  %.327 = phi i8 [ %174, %171 ], [ %.226, %163 ]
  %176 = lshr i64 %.015, 1
  br label %177

177:                                              ; preds = %175
  %178 = add i64 %.4, 1
  br label %141, !llvm.loop !15

179:                                              ; preds = %141
  %180 = getelementptr inbounds nuw i8, ptr %.134, i32 1
  br label %181

181:                                              ; preds = %179
  %182 = add i64 %.16, 1
  br label %130, !llvm.loop !16

183:                                              ; preds = %130
  %184 = sub nsw i32 7, %.01
  %185 = sext i8 %.024 to i32
  %186 = shl i32 %185, %184
  %187 = trunc i32 %186 to i8
  %188 = getelementptr inbounds nuw i8, ptr %11, i64 %.028
  store i8 %187, ptr %188, align 1
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 1024, i1 false)
  br label %189

189:                                              ; preds = %225, %183
  %.27 = phi i64 [ 0, %183 ], [ %226, %225 ]
  %.0 = phi ptr [ %9, %183 ], [ %193, %225 ]
  %190 = icmp ult i64 %.27, 256
  br i1 %190, label %191, label %227

191:                                              ; preds = %189
  %192 = trunc i64 %.27 to i8
  store i8 %192, ptr %.0, align 1
  %193 = getelementptr inbounds nuw i8, ptr %.0, i32 1
  %194 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %195 = load i32, ptr %194, align 4
  %196 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %197 = load i8, ptr %196, align 1
  %198 = zext i8 %197 to i32
  %199 = or i32 %195, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %224

201:                                              ; preds = %191
  %202 = sub nsw i32 %198, 1
  %203 = shl i32 1, %202
  %204 = sext i32 %203 to i64
  br label %205

205:                                              ; preds = %220, %201
  %.019 = phi i32 [ 0, %201 ], [ %.120, %220 ]
  %.116 = phi i64 [ %204, %201 ], [ %219, %220 ]
  %.5 = phi i64 [ 0, %201 ], [ %221, %220 ]
  %206 = load i8, ptr %196, align 1
  %207 = zext i8 %206 to i64
  %208 = icmp ult i64 %.5, %207
  br i1 %208, label %209, label %222

209:                                              ; preds = %205
  %210 = mul i32 %.019, 2
  %211 = add i32 %210, 1
  %212 = load i32, ptr %194, align 4
  %213 = zext i32 %212 to i64
  %214 = and i64 %213, %.116
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %209
  %217 = add i32 %211, 1
  br label %218

218:                                              ; preds = %216, %209
  %.120 = phi i32 [ %217, %216 ], [ %211, %209 ]
  %219 = lshr i64 %.116, 1
  br label %220

220:                                              ; preds = %218
  %221 = add i64 %.5, 1
  br label %205, !llvm.loop !17

222:                                              ; preds = %205
  %223 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.27
  store i32 %.019, ptr %223, align 4
  br label %224

224:                                              ; preds = %222, %191
  br label %225

225:                                              ; preds = %224
  %226 = add i64 %.27, 1
  br label %189, !llvm.loop !18

227:                                              ; preds = %189
  br label %228

228:                                              ; preds = %256, %227
  %.6 = phi i64 [ 1, %227 ], [ %257, %256 ]
  %229 = icmp ult i64 %.6, 256
  br i1 %229, label %230, label %258

230:                                              ; preds = %228
  %231 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %232 = load i32, ptr %231, align 4
  %233 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %234 = load i8, ptr %233, align 1
  br label %235

235:                                              ; preds = %244, %230
  %.38 = phi i64 [ %.6, %230 ], [ %252, %244 ]
  %236 = icmp ne i64 %.38, 0
  br i1 %236, label %237, label %242

237:                                              ; preds = %235
  %238 = sub i64 %.38, 1
  %239 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %238
  %240 = load i32, ptr %239, align 4
  %241 = icmp ugt i32 %240, %232
  br label %242

242:                                              ; preds = %237, %235
  %243 = phi i1 [ false, %235 ], [ %241, %237 ]
  br i1 %243, label %244, label %253

244:                                              ; preds = %242
  %245 = sub i64 %.38, 1
  %246 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %245
  %247 = load i32, ptr %246, align 4
  %248 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %247, ptr %248, align 4
  %249 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %245
  %250 = load i8, ptr %249, align 1
  %251 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %250, ptr %251, align 1
  %252 = add i64 %.38, -1
  br label %235, !llvm.loop !19

253:                                              ; preds = %242
  %254 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %232, ptr %254, align 4
  %255 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %234, ptr %255, align 1
  br label %256

256:                                              ; preds = %253
  %257 = add i64 %.6, 1
  br label %228, !llvm.loop !20

258:                                              ; preds = %228
  br label %259

259:                                              ; preds = %264, %258
  %.49 = phi i64 [ 0, %258 ], [ %265, %264 ]
  %260 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %261 = load i32, ptr %260, align 4
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %259
  br label %264

264:                                              ; preds = %263
  %265 = add i64 %.49, 1
  br label %259, !llvm.loop !21

266:                                              ; preds = %259
  br label %267

267:                                              ; preds = %298, %266
  %.235 = phi ptr [ %0, %266 ], [ %.336, %298 ]
  %.031 = phi ptr [ %11, %266 ], [ %.132, %298 ]
  %.221 = phi i32 [ 0, %266 ], [ %.423, %298 ]
  %.217 = phi i64 [ 128, %266 ], [ %.318, %298 ]
  %.313 = phi i64 [ 0, %266 ], [ %.414, %298 ]
  %.7 = phi i64 [ %.49, %266 ], [ %.9, %298 ]
  %268 = icmp ult i64 %.313, %1
  br i1 %268, label %269, label %299

269:                                              ; preds = %267
  %270 = mul i32 %.221, 2
  %271 = add i32 %270, 1
  %272 = load i8, ptr %.031, align 1
  %273 = zext i8 %272 to i64
  %274 = and i64 %273, %.217
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %269
  %277 = add i32 %271, 1
  br label %278

278:                                              ; preds = %276, %269
  %.322 = phi i32 [ %277, %276 ], [ %271, %269 ]
  br label %279

279:                                              ; preds = %283, %278
  %.8 = phi i64 [ %.7, %278 ], [ %284, %283 ]
  %280 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %281 = load i32, ptr %280, align 4
  %282 = icmp ult i32 %281, %.322
  br i1 %282, label %283, label %285

283:                                              ; preds = %279
  %284 = add i64 %.8, 1
  br label %279, !llvm.loop !22

285:                                              ; preds = %279
  %286 = icmp eq i32 %.322, %281
  br i1 %286, label %287, label %292

287:                                              ; preds = %285
  %288 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8
  %289 = load i8, ptr %288, align 1
  store i8 %289, ptr %.235, align 1
  %290 = getelementptr inbounds nuw i8, ptr %.235, i32 1
  %291 = add i64 %.313, 1
  br label %292

292:                                              ; preds = %287, %285
  %.336 = phi ptr [ %290, %287 ], [ %.235, %285 ]
  %.423 = phi i32 [ 0, %287 ], [ %.322, %285 ]
  %.414 = phi i64 [ %291, %287 ], [ %.313, %285 ]
  %.9 = phi i64 [ %.49, %287 ], [ %.8, %285 ]
  %293 = icmp ugt i64 %.217, 1
  br i1 %293, label %294, label %296

294:                                              ; preds = %292
  %295 = lshr i64 %.217, 1
  br label %298

296:                                              ; preds = %292
  %297 = getelementptr inbounds nuw i8, ptr %.031, i32 1
  br label %298

298:                                              ; preds = %296, %294
  %.132 = phi ptr [ %.031, %294 ], [ %297, %296 ]
  %.318 = phi i64 [ %295, %294 ], [ 128, %296 ]
  br label %267, !llvm.loop !23

299:                                              ; preds = %267
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

10:                                               ; preds = %43, %4
  %.01 = phi i32 [ %3, %4 ], [ %.0, %43 ]
  %11 = sdiv i32 %2, 2
  %12 = icmp sle i32 %.01, %11
  br i1 %12, label %13, label %.loopexit

13:                                               ; preds = %10
  %14 = add nsw i32 %.01, %.01
  %15 = icmp slt i32 %14, %2
  br i1 %15, label %16, label %31

16:                                               ; preds = %13
  %17 = sub nsw i32 %14, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, ptr %1, i64 %18
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds nuw i64, ptr %0, i64 %20
  %22 = load i64, ptr %21, align 8
  %23 = sext i32 %14 to i64
  %24 = getelementptr inbounds i64, ptr %1, i64 %23
  %25 = load i64, ptr %24, align 8
  %26 = getelementptr inbounds nuw i64, ptr %0, i64 %25
  %27 = load i64, ptr %26, align 8
  %28 = icmp ugt i64 %22, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %16
  %30 = add nsw i32 %14, 1
  br label %31

31:                                               ; preds = %29, %16, %13
  %.0 = phi i32 [ %30, %29 ], [ %14, %16 ], [ %14, %13 ]
  %32 = sext i32 %9 to i64
  %33 = getelementptr inbounds i64, ptr %0, i64 %32
  %34 = load i64, ptr %33, align 8
  %35 = sub nsw i32 %.0, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, ptr %1, i64 %36
  %38 = load i64, ptr %37, align 8
  %39 = getelementptr inbounds nuw i64, ptr %0, i64 %38
  %40 = load i64, ptr %39, align 8
  %41 = icmp ult i64 %34, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %47

43:                                               ; preds = %31
  %44 = sub nsw i32 %.01, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, ptr %1, i64 %45
  store i64 %38, ptr %46, align 8
  br label %10, !llvm.loop !24

.loopexit:                                        ; preds = %10
  br label %47

47:                                               ; preds = %.loopexit, %42
  %.012 = phi i32 [ %.01, %.loopexit ], [ %.01, %42 ]
  %48 = sext i32 %9 to i64
  %49 = sub nsw i32 %.012, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, ptr %1, i64 %50
  store i64 %48, ptr %51, align 8
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
  br i1 %3, label %4, label %17

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %14, %4
  %.01 = phi i32 [ 1, %4 ], [ %15, %14 ]
  %6 = icmp slt i32 %.01, %0
  br i1 %6, label %7, label %.loopexit

7:                                                ; preds = %5
  %8 = getelementptr inbounds ptr, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8
  %10 = call i32 @strcmp(ptr noundef %9, ptr noundef @.str.4) #7
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  br label %16

13:                                               ; preds = %7
  br label %14

14:                                               ; preds = %13
  %15 = add nsw i32 %.01, 1
  br label %5, !llvm.loop !25

.loopexit:                                        ; preds = %5
  br label %16

16:                                               ; preds = %.loopexit, %12
  %.1 = phi i8 [ 1, %12 ], [ 0, %.loopexit ]
  br label %17

17:                                               ; preds = %16, %2
  %.0 = phi i8 [ %.1, %16 ], [ 0, %2 ]
  %18 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %19

19:                                               ; preds = %22, %17
  %.12 = phi i32 [ 0, %17 ], [ %23, %22 ]
  %20 = icmp slt i32 %.12, 30
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  call void @compdecomp(ptr noundef %18, i64 noundef 10000000)
  br label %22

22:                                               ; preds = %21
  %23 = add nsw i32 %.12, 1
  br label %19, !llvm.loop !26

24:                                               ; preds = %19
  call void @free(ptr noundef %18)
  %25 = icmp ne i8 %.0, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = call ptr @__acrt_iob_func(i32 noundef 1)
  %28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef @.str.5, double noundef 0.000000e+00) #7
  br label %32

29:                                               ; preds = %24
  %30 = call ptr @__acrt_iob_func(i32 noundef 1)
  %31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef @.str.6, double noundef 0.000000e+00) #7
  br label %32

32:                                               ; preds = %29, %26
  %33 = call ptr @__acrt_iob_func(i32 noundef 1)
  %34 = call i32 @fflush(ptr noundef %33)
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
  %13 = load i32, ptr @seed, align 4
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
