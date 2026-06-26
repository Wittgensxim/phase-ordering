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

24:                                               ; preds = %34, %23
  %.010 = phi i64 [ 0, %23 ], [ %.111, %34 ]
  %.13 = phi i64 [ 0, %23 ], [ %35, %34 ]
  %25 = icmp ult i64 %.13, 256
  br i1 %25, label %26, label %36

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
  %35 = add i64 %.13, 1
  br label %24, !llvm.loop !10

36:                                               ; preds = %24
  %37 = trunc i64 %.010 to i32
  br label %38

38:                                               ; preds = %42, %36
  %.24 = phi i64 [ %.010, %36 ], [ %43, %42 ]
  %39 = icmp ugt i64 %.24, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %37, i32 noundef %41)
  br label %42

42:                                               ; preds = %40
  %43 = add i64 %.24, -1
  br label %38, !llvm.loop !11

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %47, %44
  %.212 = phi i64 [ %.010, %44 ], [ %48, %47 ]
  %46 = icmp ugt i64 %.212, 1
  br i1 %46, label %47, label %67

47:                                               ; preds = %45
  %48 = add i64 %.212, -1
  %49 = load i64, ptr %4, align 16
  %50 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %48
  %51 = load i64, ptr %50, align 8
  store i64 %51, ptr %4, align 16
  %52 = trunc i64 %48 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %52, i32 noundef 1)
  %53 = load i64, ptr %4, align 16
  %54 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %53
  %55 = load i64, ptr %54, align 8
  %56 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %49
  %57 = load i64, ptr %56, align 8
  %58 = add i64 %55, %57
  %59 = add i64 256, %48
  %60 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %59
  store i64 %58, ptr %60, align 8
  %61 = trunc i64 %59 to i32
  %62 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %49
  store i32 %61, ptr %62, align 4
  %63 = sub i64 -256, %48
  %64 = trunc i64 %63 to i32
  %65 = load i64, ptr %4, align 16
  %66 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %65
  store i32 %64, ptr %66, align 4
  store i64 %59, ptr %4, align 16
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %52, i32 noundef 1)
  br label %45, !llvm.loop !12

67:                                               ; preds = %45
  %68 = add i64 256, %.212
  %69 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %68
  store i32 0, ptr %69, align 4
  br label %70

70:                                               ; preds = %107, %67
  %.045 = phi i64 [ 0, %67 ], [ %.146, %107 ]
  %.042 = phi i64 [ 0, %67 ], [ %108, %107 ]
  %.039 = phi i64 [ 0, %67 ], [ %.140, %107 ]
  %71 = icmp ult i64 %.042, 256
  br i1 %71, label %72, label %109

72:                                               ; preds = %70
  %73 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.042
  %74 = load i64, ptr %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 0, ptr %77, align 4
  %78 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 0, ptr %78, align 1
  br label %106

79:                                               ; preds = %72
  %80 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.042
  %81 = load i32, ptr %80, align 4
  br label %82

82:                                               ; preds = %89, %79
  %.043 = phi i64 [ 0, %79 ], [ %.144, %89 ]
  %.037 = phi i32 [ %81, %79 ], [ %92, %89 ]
  %.05 = phi i64 [ 1, %79 ], [ %93, %89 ]
  %.3 = phi i64 [ 0, %79 ], [ %94, %89 ]
  %83 = icmp ne i32 %.037, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %82
  %85 = icmp slt i32 %.037, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %84
  %87 = add i64 %.043, %.05
  %88 = sub nsw i32 0, %.037
  br label %89

89:                                               ; preds = %86, %84
  %.144 = phi i64 [ %87, %86 ], [ %.043, %84 ]
  %.138 = phi i32 [ %88, %86 ], [ %.037, %84 ]
  %90 = sext i32 %.138 to i64
  %91 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %90
  %92 = load i32, ptr %91, align 4
  %93 = shl i64 %.05, 1
  %94 = add i64 %.3, 1
  br label %82, !llvm.loop !13

95:                                               ; preds = %82
  %96 = trunc i64 %.043 to i32
  %97 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 %96, ptr %97, align 4
  %98 = trunc i64 %.3 to i8
  %99 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 %98, ptr %99, align 1
  %100 = icmp ugt i64 %.043, %.045
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101, %95
  %.247 = phi i64 [ %.043, %101 ], [ %.045, %95 ]
  %103 = icmp ugt i64 %.3, %.039
  br i1 %103, label %104, label %105

104:                                              ; preds = %102
  br label %105

105:                                              ; preds = %104, %102
  %.241 = phi i64 [ %.3, %104 ], [ %.039, %102 ]
  br label %106

106:                                              ; preds = %105, %76
  %.146 = phi i64 [ %.247, %105 ], [ %.045, %76 ]
  %.140 = phi i64 [ %.241, %105 ], [ %.039, %76 ]
  br label %107

107:                                              ; preds = %106
  %108 = add i64 %.042, 1
  br label %70, !llvm.loop !14

109:                                              ; preds = %70
  %110 = icmp ugt i64 %.039, 32
  br i1 %110, label %111, label %114

111:                                              ; preds = %109
  %112 = call ptr @__acrt_iob_func(i32 noundef 2)
  %113 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %112, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

114:                                              ; preds = %109
  %115 = icmp eq i64 %.045, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %114
  %117 = call ptr @__acrt_iob_func(i32 noundef 2)
  %118 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %117, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

119:                                              ; preds = %114
  br label %120

120:                                              ; preds = %171, %119
  %.134 = phi ptr [ %0, %119 ], [ %170, %171 ]
  %.028 = phi i64 [ 0, %119 ], [ %.129, %171 ]
  %.024 = phi i8 [ 0, %119 ], [ %.125, %171 ]
  %.16 = phi i64 [ 0, %119 ], [ %172, %171 ]
  %.01 = phi i32 [ -1, %119 ], [ %.1, %171 ]
  %121 = icmp ult i64 %.16, %1
  br i1 %121, label %122, label %173

122:                                              ; preds = %120
  %123 = load i8, ptr %.134, align 1
  %124 = zext i8 %123 to i64
  %125 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %124
  %126 = load i8, ptr %125, align 1
  %127 = zext i8 %126 to i32
  %128 = sub nsw i32 %127, 1
  %129 = shl i32 1, %128
  %130 = sext i32 %129 to i64
  br label %131

131:                                              ; preds = %167, %122
  %.129 = phi i64 [ %.028, %122 ], [ %.230, %167 ]
  %.125 = phi i8 [ %.024, %122 ], [ %.327, %167 ]
  %.015 = phi i64 [ %130, %122 ], [ %166, %167 ]
  %.4 = phi i64 [ 0, %122 ], [ %168, %167 ]
  %.1 = phi i32 [ %.01, %122 ], [ %.2, %167 ]
  %132 = load i8, ptr %.134, align 1
  %133 = zext i8 %132 to i64
  %134 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %133
  %135 = load i8, ptr %134, align 1
  %136 = zext i8 %135 to i64
  %137 = icmp ult i64 %.4, %136
  br i1 %137, label %138, label %169

138:                                              ; preds = %131
  %139 = icmp eq i32 %.1, 7
  br i1 %139, label %140, label %148

140:                                              ; preds = %138
  %141 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %141, align 1
  %142 = add i64 %.129, 1
  %143 = icmp eq i64 %142, %1
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = call ptr @__acrt_iob_func(i32 noundef 2)
  %146 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %145, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

147:                                              ; preds = %140
  br label %153

148:                                              ; preds = %138
  %149 = add nsw i32 %.1, 1
  %150 = sext i8 %.125 to i32
  %151 = shl i32 %150, 1
  %152 = trunc i32 %151 to i8
  br label %153

153:                                              ; preds = %148, %147
  %.230 = phi i64 [ %142, %147 ], [ %.129, %148 ]
  %.226 = phi i8 [ 0, %147 ], [ %152, %148 ]
  %.2 = phi i32 [ 0, %147 ], [ %149, %148 ]
  %154 = load i8, ptr %.134, align 1
  %155 = zext i8 %154 to i64
  %156 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %155
  %157 = load i32, ptr %156, align 4
  %158 = zext i32 %157 to i64
  %159 = and i64 %158, %.015
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %153
  %162 = sext i8 %.226 to i32
  %163 = or i32 %162, 1
  %164 = trunc i32 %163 to i8
  br label %165

165:                                              ; preds = %161, %153
  %.327 = phi i8 [ %164, %161 ], [ %.226, %153 ]
  %166 = lshr i64 %.015, 1
  br label %167

167:                                              ; preds = %165
  %168 = add i64 %.4, 1
  br label %131, !llvm.loop !15

169:                                              ; preds = %131
  %170 = getelementptr inbounds nuw i8, ptr %.134, i32 1
  br label %171

171:                                              ; preds = %169
  %172 = add i64 %.16, 1
  br label %120, !llvm.loop !16

173:                                              ; preds = %120
  %174 = sub nsw i32 7, %.01
  %175 = sext i8 %.024 to i32
  %176 = shl i32 %175, %174
  %177 = trunc i32 %176 to i8
  %178 = getelementptr inbounds nuw i8, ptr %11, i64 %.028
  store i8 %177, ptr %178, align 1
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 1024, i1 false)
  br label %179

179:                                              ; preds = %214, %173
  %.27 = phi i64 [ 0, %173 ], [ %215, %214 ]
  %.0 = phi ptr [ %9, %173 ], [ %183, %214 ]
  %180 = icmp ult i64 %.27, 256
  br i1 %180, label %181, label %216

181:                                              ; preds = %179
  %182 = trunc i64 %.27 to i8
  store i8 %182, ptr %.0, align 1
  %183 = getelementptr inbounds nuw i8, ptr %.0, i32 1
  %184 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %185 = load i32, ptr %184, align 4
  %186 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %187 = load i8, ptr %186, align 1
  %188 = zext i8 %187 to i32
  %189 = or i32 %185, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %213

191:                                              ; preds = %181
  %192 = sub nsw i32 %188, 1
  %193 = shl i32 1, %192
  %194 = sext i32 %193 to i64
  %195 = zext i8 %187 to i64
  br label %196

196:                                              ; preds = %209, %191
  %.019 = phi i32 [ 0, %191 ], [ %.120, %209 ]
  %.116 = phi i64 [ %194, %191 ], [ %208, %209 ]
  %.5 = phi i64 [ 0, %191 ], [ %210, %209 ]
  %197 = icmp ult i64 %.5, %195
  br i1 %197, label %198, label %211

198:                                              ; preds = %196
  %199 = mul i32 %.019, 2
  %200 = add i32 %199, 1
  %201 = load i32, ptr %184, align 4
  %202 = zext i32 %201 to i64
  %203 = and i64 %202, %.116
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %198
  %206 = add i32 %200, 1
  br label %207

207:                                              ; preds = %205, %198
  %.120 = phi i32 [ %206, %205 ], [ %200, %198 ]
  %208 = lshr i64 %.116, 1
  br label %209

209:                                              ; preds = %207
  %210 = add i64 %.5, 1
  br label %196, !llvm.loop !17

211:                                              ; preds = %196
  %212 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.27
  store i32 %.019, ptr %212, align 4
  br label %213

213:                                              ; preds = %211, %181
  br label %214

214:                                              ; preds = %213
  %215 = add i64 %.27, 1
  br label %179, !llvm.loop !18

216:                                              ; preds = %179
  br label %217

217:                                              ; preds = %245, %216
  %.6 = phi i64 [ 1, %216 ], [ %246, %245 ]
  %218 = icmp ult i64 %.6, 256
  br i1 %218, label %219, label %247

219:                                              ; preds = %217
  %220 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %221 = load i32, ptr %220, align 4
  %222 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %223 = load i8, ptr %222, align 1
  br label %224

224:                                              ; preds = %233, %219
  %.38 = phi i64 [ %.6, %219 ], [ %241, %233 ]
  %225 = icmp ne i64 %.38, 0
  br i1 %225, label %226, label %231

226:                                              ; preds = %224
  %227 = sub i64 %.38, 1
  %228 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %227
  %229 = load i32, ptr %228, align 4
  %230 = icmp ugt i32 %229, %221
  br label %231

231:                                              ; preds = %226, %224
  %232 = phi i1 [ false, %224 ], [ %230, %226 ]
  br i1 %232, label %233, label %242

233:                                              ; preds = %231
  %234 = sub i64 %.38, 1
  %235 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %234
  %236 = load i32, ptr %235, align 4
  %237 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %236, ptr %237, align 4
  %238 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %234
  %239 = load i8, ptr %238, align 1
  %240 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %239, ptr %240, align 1
  %241 = add i64 %.38, -1
  br label %224, !llvm.loop !19

242:                                              ; preds = %231
  %243 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %221, ptr %243, align 4
  %244 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %223, ptr %244, align 1
  br label %245

245:                                              ; preds = %242
  %246 = add i64 %.6, 1
  br label %217, !llvm.loop !20

247:                                              ; preds = %217
  br label %248

248:                                              ; preds = %253, %247
  %.49 = phi i64 [ 0, %247 ], [ %254, %253 ]
  %249 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %250 = load i32, ptr %249, align 4
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %248
  br label %253

253:                                              ; preds = %252
  %254 = add i64 %.49, 1
  br label %248, !llvm.loop !21

255:                                              ; preds = %248
  br label %256

256:                                              ; preds = %287, %255
  %.235 = phi ptr [ %0, %255 ], [ %.336, %287 ]
  %.031 = phi ptr [ %11, %255 ], [ %.132, %287 ]
  %.221 = phi i32 [ 0, %255 ], [ %.423, %287 ]
  %.217 = phi i64 [ 128, %255 ], [ %.318, %287 ]
  %.313 = phi i64 [ 0, %255 ], [ %.414, %287 ]
  %.7 = phi i64 [ %.49, %255 ], [ %.9, %287 ]
  %257 = icmp ult i64 %.313, %1
  br i1 %257, label %258, label %288

258:                                              ; preds = %256
  %259 = mul i32 %.221, 2
  %260 = add i32 %259, 1
  %261 = load i8, ptr %.031, align 1
  %262 = zext i8 %261 to i64
  %263 = and i64 %262, %.217
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %258
  %266 = add i32 %260, 1
  br label %267

267:                                              ; preds = %265, %258
  %.322 = phi i32 [ %266, %265 ], [ %260, %258 ]
  br label %268

268:                                              ; preds = %272, %267
  %.8 = phi i64 [ %.7, %267 ], [ %273, %272 ]
  %269 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %270 = load i32, ptr %269, align 4
  %271 = icmp ult i32 %270, %.322
  br i1 %271, label %272, label %274

272:                                              ; preds = %268
  %273 = add i64 %.8, 1
  br label %268, !llvm.loop !22

274:                                              ; preds = %268
  %275 = icmp eq i32 %.322, %270
  br i1 %275, label %276, label %281

276:                                              ; preds = %274
  %277 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8
  %278 = load i8, ptr %277, align 1
  store i8 %278, ptr %.235, align 1
  %279 = getelementptr inbounds nuw i8, ptr %.235, i32 1
  %280 = add i64 %.313, 1
  br label %281

281:                                              ; preds = %276, %274
  %.336 = phi ptr [ %279, %276 ], [ %.235, %274 ]
  %.423 = phi i32 [ 0, %276 ], [ %.322, %274 ]
  %.414 = phi i64 [ %280, %276 ], [ %.313, %274 ]
  %.9 = phi i64 [ %.49, %276 ], [ %.8, %274 ]
  %282 = icmp ugt i64 %.217, 1
  br i1 %282, label %283, label %285

283:                                              ; preds = %281
  %284 = lshr i64 %.217, 1
  br label %287

285:                                              ; preds = %281
  %286 = getelementptr inbounds nuw i8, ptr %.031, i32 1
  br label %287

287:                                              ; preds = %285, %283
  %.132 = phi ptr [ %.031, %283 ], [ %286, %285 ]
  %.318 = phi i64 [ %284, %283 ], [ 128, %285 ]
  br label %256, !llvm.loop !23

288:                                              ; preds = %256
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
  %10 = sdiv i32 %2, 2
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds i64, ptr %0, i64 %11
  br label %13

13:                                               ; preds = %43, %4
  %.01 = phi i32 [ %3, %4 ], [ %.0, %43 ]
  %14 = icmp sle i32 %.01, %10
  br i1 %14, label %15, label %.loopexit

15:                                               ; preds = %13
  %16 = add nsw i32 %.01, %.01
  %17 = icmp slt i32 %16, %2
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = sub nsw i32 %16, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, ptr %1, i64 %20
  %22 = load i64, ptr %21, align 8
  %23 = getelementptr inbounds nuw i64, ptr %0, i64 %22
  %24 = load i64, ptr %23, align 8
  %25 = sext i32 %16 to i64
  %26 = getelementptr inbounds i64, ptr %1, i64 %25
  %27 = load i64, ptr %26, align 8
  %28 = getelementptr inbounds nuw i64, ptr %0, i64 %27
  %29 = load i64, ptr %28, align 8
  %30 = icmp ugt i64 %24, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %18
  %32 = add nsw i32 %16, 1
  br label %33

33:                                               ; preds = %31, %18, %15
  %.0 = phi i32 [ %32, %31 ], [ %16, %18 ], [ %16, %15 ]
  %34 = load i64, ptr %12, align 8
  %35 = sub nsw i32 %.0, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, ptr %1, i64 %36
  %38 = load i64, ptr %37, align 8
  %39 = getelementptr inbounds nuw i64, ptr %0, i64 %38
  %40 = load i64, ptr %39, align 8
  %41 = icmp ult i64 %34, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %47

43:                                               ; preds = %33
  %44 = sub nsw i32 %.01, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, ptr %1, i64 %45
  store i64 %38, ptr %46, align 8
  br label %13, !llvm.loop !24

.loopexit:                                        ; preds = %13
  br label %47

47:                                               ; preds = %.loopexit, %42
  %.012 = phi i32 [ %.01, %.loopexit ], [ %.01, %42 ]
  %48 = sub nsw i32 %.012, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, ptr %1, i64 %49
  store i64 %11, ptr %50, align 8
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
  %5 = getelementptr inbounds ptr, ptr %1, i64 1
  br label %6

6:                                                ; preds = %14, %4
  %.01 = phi i32 [ 1, %4 ], [ %15, %14 ]
  %7 = icmp slt i32 %.01, %0
  br i1 %7, label %8, label %.loopexit

8:                                                ; preds = %6
  %9 = load ptr, ptr %5, align 8
  %10 = call i32 @strcmp(ptr noundef %9, ptr noundef @.str.4) #7
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  br label %16

13:                                               ; preds = %8
  br label %14

14:                                               ; preds = %13
  %15 = add nsw i32 %.01, 1
  br label %6, !llvm.loop !25

.loopexit:                                        ; preds = %6
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
