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
  %12 = add i64 %1, 1
  call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %12, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %5, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %6, i8 0, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %7, i8 0, i64 256, i1 false)
  br label %13

13:                                               ; preds = %22, %2
  %.033 = phi ptr [ %0, %2 ], [ %21, %22 ]
  %.02 = phi i64 [ 0, %2 ], [ %23, %22 ]
  %14 = icmp ult i64 %.02, %1
  br i1 %14, label %15, label %24

15:                                               ; preds = %13
  %16 = load i8, ptr %.033, align 1
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %17
  %19 = load i64, ptr %18, align 8
  %20 = add i64 %19, 1
  store i64 %20, ptr %18, align 8
  %21 = getelementptr inbounds nuw i8, ptr %.033, i32 1
  br label %22

22:                                               ; preds = %15
  %23 = add i64 %.02, 1
  br label %13, !llvm.loop !9

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %35, %24
  %.010 = phi i64 [ 0, %24 ], [ %.111, %35 ]
  %.13 = phi i64 [ 0, %24 ], [ %36, %35 ]
  %26 = icmp ult i64 %.13, 256
  br i1 %26, label %27, label %37

27:                                               ; preds = %25
  %28 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.13
  %29 = load i64, ptr %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.010
  store i64 %.13, ptr %32, align 8
  %33 = add i64 %.010, 1
  br label %34

34:                                               ; preds = %31, %27
  %.111 = phi i64 [ %33, %31 ], [ %.010, %27 ]
  br label %35

35:                                               ; preds = %34
  %36 = add i64 %.13, 1
  br label %25, !llvm.loop !10

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %43, %37
  %.24 = phi i64 [ %.010, %37 ], [ %44, %43 ]
  %39 = icmp ugt i64 %.24, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %38
  %41 = trunc i64 %.010 to i32
  %42 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %41, i32 noundef %42)
  br label %43

43:                                               ; preds = %40
  %44 = add i64 %.24, -1
  br label %38, !llvm.loop !11

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %48, %45
  %.212 = phi i64 [ %.010, %45 ], [ %49, %48 ]
  %47 = icmp ugt i64 %.212, 1
  br i1 %47, label %48, label %71

48:                                               ; preds = %46
  %49 = add i64 %.212, -1
  %50 = load i64, ptr %4, align 16
  %51 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %49
  %52 = load i64, ptr %51, align 8
  store i64 %52, ptr %4, align 16
  %53 = trunc i64 %49 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %53, i32 noundef 1)
  %54 = load i64, ptr %4, align 16
  %55 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %54
  %56 = load i64, ptr %55, align 8
  %57 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %50
  %58 = load i64, ptr %57, align 8
  %59 = add i64 %56, %58
  %60 = add i64 256, %49
  %61 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %60
  store i64 %59, ptr %61, align 8
  %62 = add i64 256, %49
  %63 = trunc i64 %62 to i32
  %64 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %50
  store i32 %63, ptr %64, align 4
  %65 = sub i64 -256, %49
  %66 = trunc i64 %65 to i32
  %67 = load i64, ptr %4, align 16
  %68 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %67
  store i32 %66, ptr %68, align 4
  %69 = add i64 256, %49
  store i64 %69, ptr %4, align 16
  %70 = trunc i64 %49 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %70, i32 noundef 1)
  br label %46, !llvm.loop !12

71:                                               ; preds = %46
  %72 = add i64 256, %.212
  %73 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %72
  store i32 0, ptr %73, align 4
  br label %74

74:                                               ; preds = %111, %71
  %.045 = phi i64 [ 0, %71 ], [ %.146, %111 ]
  %.042 = phi i64 [ 0, %71 ], [ %112, %111 ]
  %.039 = phi i64 [ 0, %71 ], [ %.140, %111 ]
  %75 = icmp ult i64 %.042, 256
  br i1 %75, label %76, label %113

76:                                               ; preds = %74
  %77 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.042
  %78 = load i64, ptr %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 0, ptr %81, align 4
  %82 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 0, ptr %82, align 1
  br label %110

83:                                               ; preds = %76
  %84 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.042
  %85 = load i32, ptr %84, align 4
  br label %86

86:                                               ; preds = %93, %83
  %.043 = phi i64 [ 0, %83 ], [ %.144, %93 ]
  %.037 = phi i32 [ %85, %83 ], [ %96, %93 ]
  %.05 = phi i64 [ 1, %83 ], [ %97, %93 ]
  %.3 = phi i64 [ 0, %83 ], [ %98, %93 ]
  %87 = icmp ne i32 %.037, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %86
  %89 = icmp slt i32 %.037, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %88
  %91 = add i64 %.043, %.05
  %92 = sub nsw i32 0, %.037
  br label %93

93:                                               ; preds = %90, %88
  %.144 = phi i64 [ %91, %90 ], [ %.043, %88 ]
  %.138 = phi i32 [ %92, %90 ], [ %.037, %88 ]
  %94 = sext i32 %.138 to i64
  %95 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %94
  %96 = load i32, ptr %95, align 4
  %97 = shl i64 %.05, 1
  %98 = add i64 %.3, 1
  br label %86, !llvm.loop !13

99:                                               ; preds = %86
  %100 = trunc i64 %.043 to i32
  %101 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 %100, ptr %101, align 4
  %102 = trunc i64 %.3 to i8
  %103 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 %102, ptr %103, align 1
  %104 = icmp ugt i64 %.043, %.045
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  br label %106

106:                                              ; preds = %105, %99
  %.247 = phi i64 [ %.043, %105 ], [ %.045, %99 ]
  %107 = icmp ugt i64 %.3, %.039
  br i1 %107, label %108, label %109

108:                                              ; preds = %106
  br label %109

109:                                              ; preds = %108, %106
  %.241 = phi i64 [ %.3, %108 ], [ %.039, %106 ]
  br label %110

110:                                              ; preds = %109, %80
  %.146 = phi i64 [ %.247, %109 ], [ %.045, %80 ]
  %.140 = phi i64 [ %.241, %109 ], [ %.039, %80 ]
  br label %111

111:                                              ; preds = %110
  %112 = add i64 %.042, 1
  br label %74, !llvm.loop !14

113:                                              ; preds = %74
  %114 = icmp ugt i64 %.039, 32
  br i1 %114, label %115, label %118

115:                                              ; preds = %113
  %116 = call ptr @__acrt_iob_func(i32 noundef 2)
  %117 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %116, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

118:                                              ; preds = %113
  %119 = icmp eq i64 %.045, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %118
  %121 = call ptr @__acrt_iob_func(i32 noundef 2)
  %122 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %121, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

123:                                              ; preds = %118
  br label %124

124:                                              ; preds = %175, %123
  %.134 = phi ptr [ %0, %123 ], [ %174, %175 ]
  %.028 = phi i64 [ 0, %123 ], [ %.129, %175 ]
  %.024 = phi i8 [ 0, %123 ], [ %.125, %175 ]
  %.16 = phi i64 [ 0, %123 ], [ %176, %175 ]
  %.01 = phi i32 [ -1, %123 ], [ %.1, %175 ]
  %125 = icmp ult i64 %.16, %1
  br i1 %125, label %126, label %177

126:                                              ; preds = %124
  %127 = load i8, ptr %.134, align 1
  %128 = zext i8 %127 to i64
  %129 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %128
  %130 = load i8, ptr %129, align 1
  %131 = zext i8 %130 to i32
  %132 = sub nsw i32 %131, 1
  %133 = shl i32 1, %132
  %134 = sext i32 %133 to i64
  br label %135

135:                                              ; preds = %171, %126
  %.129 = phi i64 [ %.028, %126 ], [ %.230, %171 ]
  %.125 = phi i8 [ %.024, %126 ], [ %.327, %171 ]
  %.015 = phi i64 [ %134, %126 ], [ %170, %171 ]
  %.4 = phi i64 [ 0, %126 ], [ %172, %171 ]
  %.1 = phi i32 [ %.01, %126 ], [ %.2, %171 ]
  %136 = load i8, ptr %.134, align 1
  %137 = zext i8 %136 to i64
  %138 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %137
  %139 = load i8, ptr %138, align 1
  %140 = zext i8 %139 to i64
  %141 = icmp ult i64 %.4, %140
  br i1 %141, label %142, label %173

142:                                              ; preds = %135
  %143 = icmp eq i32 %.1, 7
  br i1 %143, label %144, label %152

144:                                              ; preds = %142
  %145 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %145, align 1
  %146 = add i64 %.129, 1
  %147 = icmp eq i64 %146, %1
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = call ptr @__acrt_iob_func(i32 noundef 2)
  %150 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %149, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

151:                                              ; preds = %144
  br label %157

152:                                              ; preds = %142
  %153 = add nsw i32 %.1, 1
  %154 = sext i8 %.125 to i32
  %155 = shl i32 %154, 1
  %156 = trunc i32 %155 to i8
  br label %157

157:                                              ; preds = %152, %151
  %.230 = phi i64 [ %146, %151 ], [ %.129, %152 ]
  %.226 = phi i8 [ 0, %151 ], [ %156, %152 ]
  %.2 = phi i32 [ 0, %151 ], [ %153, %152 ]
  %158 = load i8, ptr %.134, align 1
  %159 = zext i8 %158 to i64
  %160 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %159
  %161 = load i32, ptr %160, align 4
  %162 = zext i32 %161 to i64
  %163 = and i64 %162, %.015
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %157
  %166 = sext i8 %.226 to i32
  %167 = or i32 %166, 1
  %168 = trunc i32 %167 to i8
  br label %169

169:                                              ; preds = %165, %157
  %.327 = phi i8 [ %168, %165 ], [ %.226, %157 ]
  %170 = lshr i64 %.015, 1
  br label %171

171:                                              ; preds = %169
  %172 = add i64 %.4, 1
  br label %135, !llvm.loop !15

173:                                              ; preds = %135
  %174 = getelementptr inbounds nuw i8, ptr %.134, i32 1
  br label %175

175:                                              ; preds = %173
  %176 = add i64 %.16, 1
  br label %124, !llvm.loop !16

177:                                              ; preds = %124
  %178 = sub nsw i32 7, %.01
  %179 = sext i8 %.024 to i32
  %180 = shl i32 %179, %178
  %181 = trunc i32 %180 to i8
  %182 = getelementptr inbounds nuw i8, ptr %11, i64 %.028
  store i8 %181, ptr %182, align 1
  %183 = add i64 %.028, 1
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 1024, i1 false)
  br label %184

184:                                              ; preds = %225, %177
  %.27 = phi i64 [ 0, %177 ], [ %226, %225 ]
  %.0 = phi ptr [ %9, %177 ], [ %188, %225 ]
  %185 = icmp ult i64 %.27, 256
  br i1 %185, label %186, label %227

186:                                              ; preds = %184
  %187 = trunc i64 %.27 to i8
  store i8 %187, ptr %.0, align 1
  %188 = getelementptr inbounds nuw i8, ptr %.0, i32 1
  %189 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %190 = load i32, ptr %189, align 4
  %191 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %192 = load i8, ptr %191, align 1
  %193 = zext i8 %192 to i32
  %194 = or i32 %190, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %224

196:                                              ; preds = %186
  %197 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %198 = load i8, ptr %197, align 1
  %199 = zext i8 %198 to i32
  %200 = sub nsw i32 %199, 1
  %201 = shl i32 1, %200
  %202 = sext i32 %201 to i64
  br label %203

203:                                              ; preds = %220, %196
  %.019 = phi i32 [ 0, %196 ], [ %.120, %220 ]
  %.116 = phi i64 [ %202, %196 ], [ %219, %220 ]
  %.5 = phi i64 [ 0, %196 ], [ %221, %220 ]
  %204 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %205 = load i8, ptr %204, align 1
  %206 = zext i8 %205 to i64
  %207 = icmp ult i64 %.5, %206
  br i1 %207, label %208, label %222

208:                                              ; preds = %203
  %209 = mul i32 %.019, 2
  %210 = add i32 %209, 1
  %211 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %212 = load i32, ptr %211, align 4
  %213 = zext i32 %212 to i64
  %214 = and i64 %213, %.116
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %208
  %217 = add i32 %210, 1
  br label %218

218:                                              ; preds = %216, %208
  %.120 = phi i32 [ %217, %216 ], [ %210, %208 ]
  %219 = lshr i64 %.116, 1
  br label %220

220:                                              ; preds = %218
  %221 = add i64 %.5, 1
  br label %203, !llvm.loop !17

222:                                              ; preds = %203
  %223 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.27
  store i32 %.019, ptr %223, align 4
  br label %224

224:                                              ; preds = %222, %186
  br label %225

225:                                              ; preds = %224
  %226 = add i64 %.27, 1
  br label %184, !llvm.loop !18

227:                                              ; preds = %184
  br label %228

228:                                              ; preds = %257, %227
  %.6 = phi i64 [ 1, %227 ], [ %258, %257 ]
  %229 = icmp ult i64 %.6, 256
  br i1 %229, label %230, label %259

230:                                              ; preds = %228
  %231 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %232 = load i32, ptr %231, align 4
  %233 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %234 = load i8, ptr %233, align 1
  br label %235

235:                                              ; preds = %244, %230
  %.38 = phi i64 [ %.6, %230 ], [ %253, %244 ]
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
  br i1 %243, label %244, label %254

244:                                              ; preds = %242
  %245 = sub i64 %.38, 1
  %246 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %245
  %247 = load i32, ptr %246, align 4
  %248 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %247, ptr %248, align 4
  %249 = sub i64 %.38, 1
  %250 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %249
  %251 = load i8, ptr %250, align 1
  %252 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %251, ptr %252, align 1
  %253 = add i64 %.38, -1
  br label %235, !llvm.loop !19

254:                                              ; preds = %242
  %255 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %232, ptr %255, align 4
  %256 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %234, ptr %256, align 1
  br label %257

257:                                              ; preds = %254
  %258 = add i64 %.6, 1
  br label %228, !llvm.loop !20

259:                                              ; preds = %228
  br label %260

260:                                              ; preds = %265, %259
  %.49 = phi i64 [ 0, %259 ], [ %266, %265 ]
  %261 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %262 = load i32, ptr %261, align 4
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %260
  br label %265

265:                                              ; preds = %264
  %266 = add i64 %.49, 1
  br label %260, !llvm.loop !21

267:                                              ; preds = %260
  br label %268

268:                                              ; preds = %299, %267
  %.235 = phi ptr [ %0, %267 ], [ %.336, %299 ]
  %.031 = phi ptr [ %11, %267 ], [ %.132, %299 ]
  %.221 = phi i32 [ 0, %267 ], [ %.423, %299 ]
  %.217 = phi i64 [ 128, %267 ], [ %.318, %299 ]
  %.313 = phi i64 [ 0, %267 ], [ %.414, %299 ]
  %.7 = phi i64 [ %.49, %267 ], [ %.9, %299 ]
  %269 = icmp ult i64 %.313, %1
  br i1 %269, label %270, label %300

270:                                              ; preds = %268
  %271 = mul i32 %.221, 2
  %272 = add i32 %271, 1
  %273 = load i8, ptr %.031, align 1
  %274 = zext i8 %273 to i64
  %275 = and i64 %274, %.217
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %270
  %278 = add i32 %272, 1
  br label %279

279:                                              ; preds = %277, %270
  %.322 = phi i32 [ %278, %277 ], [ %272, %270 ]
  br label %280

280:                                              ; preds = %284, %279
  %.8 = phi i64 [ %.7, %279 ], [ %285, %284 ]
  %281 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %282 = load i32, ptr %281, align 4
  %283 = icmp ult i32 %282, %.322
  br i1 %283, label %284, label %286

284:                                              ; preds = %280
  %285 = add i64 %.8, 1
  br label %280, !llvm.loop !22

286:                                              ; preds = %280
  %287 = icmp eq i32 %.322, %282
  br i1 %287, label %288, label %293

288:                                              ; preds = %286
  %289 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8
  %290 = load i8, ptr %289, align 1
  store i8 %290, ptr %.235, align 1
  %291 = getelementptr inbounds nuw i8, ptr %.235, i32 1
  %292 = add i64 %.313, 1
  br label %293

293:                                              ; preds = %288, %286
  %.336 = phi ptr [ %291, %288 ], [ %.235, %286 ]
  %.423 = phi i32 [ 0, %288 ], [ %.322, %286 ]
  %.414 = phi i64 [ %292, %288 ], [ %.313, %286 ]
  %.9 = phi i64 [ %.49, %288 ], [ %.8, %286 ]
  %294 = icmp ugt i64 %.217, 1
  br i1 %294, label %295, label %297

295:                                              ; preds = %293
  %296 = lshr i64 %.217, 1
  br label %299

297:                                              ; preds = %293
  %298 = getelementptr inbounds nuw i8, ptr %.031, i32 1
  br label %299

299:                                              ; preds = %297, %295
  %.132 = phi ptr [ %.031, %295 ], [ %298, %297 ]
  %.318 = phi i64 [ %296, %295 ], [ 128, %297 ]
  br label %268, !llvm.loop !23

300:                                              ; preds = %268
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
  br i1 %12, label %13, label %47

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

47:                                               ; preds = %42, %10
  %48 = sext i32 %9 to i64
  %49 = sub nsw i32 %.01, 1
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
  br i1 %6, label %7, label %16

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

16:                                               ; preds = %12, %5
  %.1 = phi i8 [ 1, %12 ], [ 0, %5 ]
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
  store i32 %2, ptr @seed, align 4
  %3 = sdiv i32 %2, 127773
  %4 = load i32, ptr @seed, align 4
  %5 = mul nsw i32 %3, 127773
  %6 = sub nsw i32 %4, %5
  %7 = mul nsw i32 16807, %6
  %8 = mul nsw i32 2836, %3
  %9 = sub nsw i32 %7, %8
  store i32 %9, ptr @seed, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = add nsw i32 %9, 2147483647
  store i32 %12, ptr @seed, align 4
  br label %13

13:                                               ; preds = %11, %0
  %14 = load i32, ptr @seed, align 4
  %15 = srem i32 %14, 32
  %16 = sext i32 %15 to i64
  %17 = load i32, ptr @seed, align 4
  %18 = xor i32 %17, 123459876
  store i32 %18, ptr @seed, align 4
  ret i64 %16
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
