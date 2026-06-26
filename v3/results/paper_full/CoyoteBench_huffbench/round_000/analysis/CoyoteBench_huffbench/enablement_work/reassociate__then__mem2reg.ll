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
  %13 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %13, i8 0, i64 4096, i1 false)
  %14 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %14, i8 0, i64 2048, i1 false)
  %15 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %15, i8 0, i64 2048, i1 false)
  %16 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %16, i8 0, i64 1024, i1 false)
  %17 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %17, i8 0, i64 256, i1 false)
  br label %18

18:                                               ; preds = %27, %2
  %.033 = phi ptr [ %0, %2 ], [ %26, %27 ]
  %.02 = phi i64 [ 0, %2 ], [ %28, %27 ]
  %19 = icmp ult i64 %.02, %1
  br i1 %19, label %20, label %29

20:                                               ; preds = %18
  %21 = load i8, ptr %.033, align 1
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %22
  %24 = load i64, ptr %23, align 8
  %25 = add i64 %24, 1
  store i64 %25, ptr %23, align 8
  %26 = getelementptr inbounds nuw i8, ptr %.033, i32 1
  br label %27

27:                                               ; preds = %20
  %28 = add i64 %.02, 1
  br label %18, !llvm.loop !9

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %40, %29
  %.010 = phi i64 [ 0, %29 ], [ %.111, %40 ]
  %.13 = phi i64 [ 0, %29 ], [ %41, %40 ]
  %31 = icmp ult i64 %.13, 256
  br i1 %31, label %32, label %42

32:                                               ; preds = %30
  %33 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.13
  %34 = load i64, ptr %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.010
  store i64 %.13, ptr %37, align 8
  %38 = add i64 %.010, 1
  br label %39

39:                                               ; preds = %36, %32
  %.111 = phi i64 [ %38, %36 ], [ %.010, %32 ]
  br label %40

40:                                               ; preds = %39
  %41 = add i64 %.13, 1
  br label %30, !llvm.loop !10

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %50, %42
  %.24 = phi i64 [ %.010, %42 ], [ %51, %50 ]
  %44 = icmp ugt i64 %.24, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %43
  %46 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %47 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %48 = trunc i64 %.010 to i32
  %49 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef %46, ptr noundef %47, i32 noundef %48, i32 noundef %49)
  br label %50

50:                                               ; preds = %45
  %51 = add i64 %.24, -1
  br label %43, !llvm.loop !11

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %55, %52
  %.212 = phi i64 [ %.010, %52 ], [ %56, %55 ]
  %54 = icmp ugt i64 %.212, 1
  br i1 %54, label %55, label %87

55:                                               ; preds = %53
  %56 = add i64 %.212, -1
  %57 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %58 = load i64, ptr %57, align 16
  %59 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %56
  %60 = load i64, ptr %59, align 8
  %61 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %60, ptr %61, align 16
  %62 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %63 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %64 = trunc i64 %56 to i32
  call void @heap_adjust(ptr noundef %62, ptr noundef %63, i32 noundef %64, i32 noundef 1)
  %65 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %66 = load i64, ptr %65, align 16
  %67 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %66
  %68 = load i64, ptr %67, align 8
  %69 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %58
  %70 = load i64, ptr %69, align 8
  %71 = add i64 %70, %68
  %72 = add i64 %56, 256
  %73 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %72
  store i64 %71, ptr %73, align 8
  %74 = add i64 %56, 256
  %75 = trunc i64 %74 to i32
  %76 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %58
  store i32 %75, ptr %76, align 4
  %77 = sub i64 -256, %56
  %78 = trunc i64 %77 to i32
  %79 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %80 = load i64, ptr %79, align 16
  %81 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %80
  store i32 %78, ptr %81, align 4
  %82 = add i64 %56, 256
  %83 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %82, ptr %83, align 16
  %84 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %85 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %86 = trunc i64 %56 to i32
  call void @heap_adjust(ptr noundef %84, ptr noundef %85, i32 noundef %86, i32 noundef 1)
  br label %53, !llvm.loop !12

87:                                               ; preds = %53
  %88 = add i64 %.212, 256
  %89 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %88
  store i32 0, ptr %89, align 4
  br label %90

90:                                               ; preds = %127, %87
  %.045 = phi i64 [ 0, %87 ], [ %.146, %127 ]
  %.042 = phi i64 [ 0, %87 ], [ %128, %127 ]
  %.039 = phi i64 [ 0, %87 ], [ %.140, %127 ]
  %91 = icmp ult i64 %.042, 256
  br i1 %91, label %92, label %129

92:                                               ; preds = %90
  %93 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.042
  %94 = load i64, ptr %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 0, ptr %97, align 4
  %98 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 0, ptr %98, align 1
  br label %126

99:                                               ; preds = %92
  %100 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.042
  %101 = load i32, ptr %100, align 4
  br label %102

102:                                              ; preds = %109, %99
  %.043 = phi i64 [ 0, %99 ], [ %.144, %109 ]
  %.037 = phi i32 [ %101, %99 ], [ %112, %109 ]
  %.05 = phi i64 [ 1, %99 ], [ %113, %109 ]
  %.3 = phi i64 [ 0, %99 ], [ %114, %109 ]
  %103 = icmp ne i32 %.037, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %102
  %105 = icmp slt i32 %.037, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %104
  %107 = add i64 %.043, %.05
  %108 = sub nsw i32 0, %.037
  br label %109

109:                                              ; preds = %106, %104
  %.144 = phi i64 [ %107, %106 ], [ %.043, %104 ]
  %.138 = phi i32 [ %108, %106 ], [ %.037, %104 ]
  %110 = sext i32 %.138 to i64
  %111 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %110
  %112 = load i32, ptr %111, align 4
  %113 = shl i64 %.05, 1
  %114 = add i64 %.3, 1
  br label %102, !llvm.loop !13

115:                                              ; preds = %102
  %116 = trunc i64 %.043 to i32
  %117 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 %116, ptr %117, align 4
  %118 = trunc i64 %.3 to i8
  %119 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 %118, ptr %119, align 1
  %120 = icmp ugt i64 %.043, %.045
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %122

122:                                              ; preds = %121, %115
  %.247 = phi i64 [ %.043, %121 ], [ %.045, %115 ]
  %123 = icmp ugt i64 %.3, %.039
  br i1 %123, label %124, label %125

124:                                              ; preds = %122
  br label %125

125:                                              ; preds = %124, %122
  %.241 = phi i64 [ %.3, %124 ], [ %.039, %122 ]
  br label %126

126:                                              ; preds = %125, %96
  %.146 = phi i64 [ %.247, %125 ], [ %.045, %96 ]
  %.140 = phi i64 [ %.241, %125 ], [ %.039, %96 ]
  br label %127

127:                                              ; preds = %126
  %128 = add i64 %.042, 1
  br label %90, !llvm.loop !14

129:                                              ; preds = %90
  %130 = icmp ugt i64 %.039, 32
  br i1 %130, label %131, label %134

131:                                              ; preds = %129
  %132 = call ptr @__acrt_iob_func(i32 noundef 2)
  %133 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %132, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

134:                                              ; preds = %129
  %135 = icmp eq i64 %.045, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %134
  %137 = call ptr @__acrt_iob_func(i32 noundef 2)
  %138 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %137, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

139:                                              ; preds = %134
  br label %140

140:                                              ; preds = %191, %139
  %.134 = phi ptr [ %0, %139 ], [ %190, %191 ]
  %.028 = phi i64 [ 0, %139 ], [ %.129, %191 ]
  %.024 = phi i8 [ 0, %139 ], [ %.125, %191 ]
  %.16 = phi i64 [ 0, %139 ], [ %192, %191 ]
  %.01 = phi i32 [ -1, %139 ], [ %.1, %191 ]
  %141 = icmp ult i64 %.16, %1
  br i1 %141, label %142, label %193

142:                                              ; preds = %140
  %143 = load i8, ptr %.134, align 1
  %144 = zext i8 %143 to i64
  %145 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %144
  %146 = load i8, ptr %145, align 1
  %147 = zext i8 %146 to i32
  %148 = sub nsw i32 %147, 1
  %149 = shl i32 1, %148
  %150 = sext i32 %149 to i64
  br label %151

151:                                              ; preds = %187, %142
  %.129 = phi i64 [ %.028, %142 ], [ %.230, %187 ]
  %.125 = phi i8 [ %.024, %142 ], [ %.327, %187 ]
  %.015 = phi i64 [ %150, %142 ], [ %186, %187 ]
  %.4 = phi i64 [ 0, %142 ], [ %188, %187 ]
  %.1 = phi i32 [ %.01, %142 ], [ %.2, %187 ]
  %152 = load i8, ptr %.134, align 1
  %153 = zext i8 %152 to i64
  %154 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %153
  %155 = load i8, ptr %154, align 1
  %156 = zext i8 %155 to i64
  %157 = icmp ult i64 %.4, %156
  br i1 %157, label %158, label %189

158:                                              ; preds = %151
  %159 = icmp eq i32 %.1, 7
  br i1 %159, label %160, label %168

160:                                              ; preds = %158
  %161 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %161, align 1
  %162 = add i64 %.129, 1
  %163 = icmp eq i64 %162, %1
  br i1 %163, label %164, label %167

164:                                              ; preds = %160
  %165 = call ptr @__acrt_iob_func(i32 noundef 2)
  %166 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %165, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

167:                                              ; preds = %160
  br label %173

168:                                              ; preds = %158
  %169 = add nsw i32 %.1, 1
  %170 = sext i8 %.125 to i32
  %171 = shl i32 %170, 1
  %172 = trunc i32 %171 to i8
  br label %173

173:                                              ; preds = %168, %167
  %.230 = phi i64 [ %162, %167 ], [ %.129, %168 ]
  %.226 = phi i8 [ 0, %167 ], [ %172, %168 ]
  %.2 = phi i32 [ 0, %167 ], [ %169, %168 ]
  %174 = load i8, ptr %.134, align 1
  %175 = zext i8 %174 to i64
  %176 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %175
  %177 = load i32, ptr %176, align 4
  %178 = zext i32 %177 to i64
  %179 = and i64 %178, %.015
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %173
  %182 = sext i8 %.226 to i32
  %183 = or i32 %182, 1
  %184 = trunc i32 %183 to i8
  br label %185

185:                                              ; preds = %181, %173
  %.327 = phi i8 [ %184, %181 ], [ %.226, %173 ]
  %186 = lshr i64 %.015, 1
  br label %187

187:                                              ; preds = %185
  %188 = add i64 %.4, 1
  br label %151, !llvm.loop !15

189:                                              ; preds = %151
  %190 = getelementptr inbounds nuw i8, ptr %.134, i32 1
  br label %191

191:                                              ; preds = %189
  %192 = add i64 %.16, 1
  br label %140, !llvm.loop !16

193:                                              ; preds = %140
  %194 = sub nsw i32 7, %.01
  %195 = sext i8 %.024 to i32
  %196 = shl i32 %195, %194
  %197 = trunc i32 %196 to i8
  %198 = getelementptr inbounds nuw i8, ptr %11, i64 %.028
  store i8 %197, ptr %198, align 1
  %199 = add i64 %.028, 1
  %200 = getelementptr inbounds [256 x i32], ptr %8, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %200, i8 0, i64 1024, i1 false)
  %201 = getelementptr inbounds [256 x i8], ptr %9, i64 0, i64 0
  br label %202

202:                                              ; preds = %243, %193
  %.27 = phi i64 [ 0, %193 ], [ %244, %243 ]
  %.0 = phi ptr [ %201, %193 ], [ %206, %243 ]
  %203 = icmp ult i64 %.27, 256
  br i1 %203, label %204, label %245

204:                                              ; preds = %202
  %205 = trunc i64 %.27 to i8
  store i8 %205, ptr %.0, align 1
  %206 = getelementptr inbounds nuw i8, ptr %.0, i32 1
  %207 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %208 = load i32, ptr %207, align 4
  %209 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %210 = load i8, ptr %209, align 1
  %211 = zext i8 %210 to i32
  %212 = or i32 %211, %208
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %242

214:                                              ; preds = %204
  %215 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %216 = load i8, ptr %215, align 1
  %217 = zext i8 %216 to i32
  %218 = sub nsw i32 %217, 1
  %219 = shl i32 1, %218
  %220 = sext i32 %219 to i64
  br label %221

221:                                              ; preds = %238, %214
  %.019 = phi i32 [ 0, %214 ], [ %.120, %238 ]
  %.116 = phi i64 [ %220, %214 ], [ %237, %238 ]
  %.5 = phi i64 [ 0, %214 ], [ %239, %238 ]
  %222 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %223 = load i8, ptr %222, align 1
  %224 = zext i8 %223 to i64
  %225 = icmp ult i64 %.5, %224
  br i1 %225, label %226, label %240

226:                                              ; preds = %221
  %227 = mul i32 %.019, 2
  %228 = add i32 %227, 1
  %229 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %230 = load i32, ptr %229, align 4
  %231 = zext i32 %230 to i64
  %232 = and i64 %231, %.116
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %226
  %235 = add i32 %228, 1
  br label %236

236:                                              ; preds = %234, %226
  %.120 = phi i32 [ %235, %234 ], [ %228, %226 ]
  %237 = lshr i64 %.116, 1
  br label %238

238:                                              ; preds = %236
  %239 = add i64 %.5, 1
  br label %221, !llvm.loop !17

240:                                              ; preds = %221
  %241 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.27
  store i32 %.019, ptr %241, align 4
  br label %242

242:                                              ; preds = %240, %204
  br label %243

243:                                              ; preds = %242
  %244 = add i64 %.27, 1
  br label %202, !llvm.loop !18

245:                                              ; preds = %202
  br label %246

246:                                              ; preds = %275, %245
  %.6 = phi i64 [ 1, %245 ], [ %276, %275 ]
  %247 = icmp ult i64 %.6, 256
  br i1 %247, label %248, label %277

248:                                              ; preds = %246
  %249 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %250 = load i32, ptr %249, align 4
  %251 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %252 = load i8, ptr %251, align 1
  br label %253

253:                                              ; preds = %262, %248
  %.38 = phi i64 [ %.6, %248 ], [ %271, %262 ]
  %254 = icmp ne i64 %.38, 0
  br i1 %254, label %255, label %260

255:                                              ; preds = %253
  %256 = sub i64 %.38, 1
  %257 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %256
  %258 = load i32, ptr %257, align 4
  %259 = icmp ugt i32 %258, %250
  br label %260

260:                                              ; preds = %255, %253
  %261 = phi i1 [ false, %253 ], [ %259, %255 ]
  br i1 %261, label %262, label %272

262:                                              ; preds = %260
  %263 = sub i64 %.38, 1
  %264 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %263
  %265 = load i32, ptr %264, align 4
  %266 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %265, ptr %266, align 4
  %267 = sub i64 %.38, 1
  %268 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %267
  %269 = load i8, ptr %268, align 1
  %270 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %269, ptr %270, align 1
  %271 = add i64 %.38, -1
  br label %253, !llvm.loop !19

272:                                              ; preds = %260
  %273 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %250, ptr %273, align 4
  %274 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %252, ptr %274, align 1
  br label %275

275:                                              ; preds = %272
  %276 = add i64 %.6, 1
  br label %246, !llvm.loop !20

277:                                              ; preds = %246
  br label %278

278:                                              ; preds = %283, %277
  %.49 = phi i64 [ 0, %277 ], [ %284, %283 ]
  %279 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %280 = load i32, ptr %279, align 4
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %278
  br label %283

283:                                              ; preds = %282
  %284 = add i64 %.49, 1
  br label %278, !llvm.loop !21

285:                                              ; preds = %278
  br label %286

286:                                              ; preds = %319, %285
  %.235 = phi ptr [ %0, %285 ], [ %.336, %319 ]
  %.031 = phi ptr [ %11, %285 ], [ %.132, %319 ]
  %.221 = phi i32 [ 0, %285 ], [ %.423, %319 ]
  %.217 = phi i64 [ 128, %285 ], [ %.318, %319 ]
  %.313 = phi i64 [ 0, %285 ], [ %.414, %319 ]
  %.7 = phi i64 [ %.49, %285 ], [ %.9, %319 ]
  %287 = icmp ult i64 %.313, %1
  br i1 %287, label %288, label %320

288:                                              ; preds = %286
  %289 = mul i32 %.221, 2
  %290 = add i32 %289, 1
  %291 = load i8, ptr %.031, align 1
  %292 = zext i8 %291 to i64
  %293 = and i64 %292, %.217
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %288
  %296 = add i32 %290, 1
  br label %297

297:                                              ; preds = %295, %288
  %.322 = phi i32 [ %296, %295 ], [ %290, %288 ]
  br label %298

298:                                              ; preds = %302, %297
  %.8 = phi i64 [ %.7, %297 ], [ %303, %302 ]
  %299 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %300 = load i32, ptr %299, align 4
  %301 = icmp ult i32 %300, %.322
  br i1 %301, label %302, label %304

302:                                              ; preds = %298
  %303 = add i64 %.8, 1
  br label %298, !llvm.loop !22

304:                                              ; preds = %298
  %305 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %306 = load i32, ptr %305, align 4
  %307 = icmp eq i32 %.322, %306
  br i1 %307, label %308, label %313

308:                                              ; preds = %304
  %309 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8
  %310 = load i8, ptr %309, align 1
  store i8 %310, ptr %.235, align 1
  %311 = getelementptr inbounds nuw i8, ptr %.235, i32 1
  %312 = add i64 %.313, 1
  br label %313

313:                                              ; preds = %308, %304
  %.336 = phi ptr [ %311, %308 ], [ %.235, %304 ]
  %.423 = phi i32 [ 0, %308 ], [ %.322, %304 ]
  %.414 = phi i64 [ %312, %308 ], [ %.313, %304 ]
  %.9 = phi i64 [ %.49, %308 ], [ %.8, %304 ]
  %314 = icmp ugt i64 %.217, 1
  br i1 %314, label %315, label %317

315:                                              ; preds = %313
  %316 = lshr i64 %.217, 1
  br label %319

317:                                              ; preds = %313
  %318 = getelementptr inbounds nuw i8, ptr %.031, i32 1
  br label %319

319:                                              ; preds = %317, %315
  %.132 = phi ptr [ %.031, %315 ], [ %318, %317 ]
  %.318 = phi i64 [ %316, %315 ], [ 128, %317 ]
  br label %286, !llvm.loop !23

320:                                              ; preds = %286
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
  br i1 %12, label %13, label %51

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
  br label %51

43:                                               ; preds = %31
  %44 = sub nsw i32 %.0, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, ptr %1, i64 %45
  %47 = load i64, ptr %46, align 8
  %48 = sub nsw i32 %.01, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, ptr %1, i64 %49
  store i64 %47, ptr %50, align 8
  br label %10, !llvm.loop !24

51:                                               ; preds = %42, %10
  %52 = sext i32 %9 to i64
  %53 = sub nsw i32 %.01, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, ptr %1, i64 %54
  store i64 %52, ptr %55, align 8
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
  %3 = load i32, ptr @seed, align 4
  %4 = sdiv i32 %3, 127773
  %5 = load i32, ptr @seed, align 4
  %6 = mul nsw i32 %4, 127773
  %7 = sub nsw i32 %5, %6
  %8 = mul nsw i32 %7, 16807
  %9 = mul nsw i32 %4, 2836
  %10 = sub nsw i32 %8, %9
  store i32 %10, ptr @seed, align 4
  %11 = load i32, ptr @seed, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = load i32, ptr @seed, align 4
  %15 = add nsw i32 %14, 2147483647
  store i32 %15, ptr @seed, align 4
  br label %16

16:                                               ; preds = %13, %0
  %17 = load i32, ptr @seed, align 4
  %18 = srem i32 %17, 32
  %19 = sext i32 %18 to i64
  %20 = load i32, ptr @seed, align 4
  %21 = xor i32 %20, 123459876
  store i32 %21, ptr @seed, align 4
  ret i64 %19
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
