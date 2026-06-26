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

3:                                                ; preds = %6, %1
  %.01 = phi ptr [ %2, %1 ], [ %10, %6 ]
  %.0 = phi i32 [ 0, %1 ], [ %11, %6 ]
  %4 = sext i32 %.0 to i64
  %5 = icmp ult i64 %4, %0
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = call i64 @random4()
  %8 = getelementptr inbounds nuw i8, ptr @.str, i64 %7
  %9 = load i8, ptr %8, align 1
  store i8 %9, ptr %.01, align 1
  %10 = getelementptr inbounds nuw i8, ptr %.01, i32 1
  %11 = add nsw i32 %.0, 1
  br label %3, !llvm.loop !7

12:                                               ; preds = %3
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
  %13 = mul i64 1, %12
  call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %13, i1 false)
  %14 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %14, i8 0, i64 4096, i1 false)
  %15 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %15, i8 0, i64 2048, i1 false)
  %16 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %16, i8 0, i64 2048, i1 false)
  %17 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %17, i8 0, i64 1024, i1 false)
  %18 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %18, i8 0, i64 256, i1 false)
  br label %19

19:                                               ; preds = %21, %2
  %.033 = phi ptr [ %0, %2 ], [ %27, %21 ]
  %.02 = phi i64 [ 0, %2 ], [ %28, %21 ]
  %20 = icmp ult i64 %.02, %1
  br i1 %20, label %21, label %29

21:                                               ; preds = %19
  %22 = load i8, ptr %.033, align 1
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %23
  %25 = load i64, ptr %24, align 8
  %26 = add i64 %25, 1
  store i64 %26, ptr %24, align 8
  %27 = getelementptr inbounds nuw i8, ptr %.033, i32 1
  %28 = add i64 %.02, 1
  br label %19, !llvm.loop !9

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %39, %29
  %.010 = phi i64 [ 0, %29 ], [ %.111, %39 ]
  %.13 = phi i64 [ 0, %29 ], [ %40, %39 ]
  %31 = icmp ult i64 %.13, 256
  br i1 %31, label %32, label %41

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

39:                                               ; preds = %32, %36
  %.111 = phi i64 [ %38, %36 ], [ %.010, %32 ]
  %40 = add i64 %.13, 1
  br label %30, !llvm.loop !10

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %44, %41
  %.24 = phi i64 [ %.010, %41 ], [ %49, %44 ]
  %43 = icmp ugt i64 %.24, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %42
  %45 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %46 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %47 = trunc i64 %.010 to i32
  %48 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef %45, ptr noundef %46, i32 noundef %47, i32 noundef %48)
  %49 = add i64 %.24, -1
  br label %42, !llvm.loop !11

50:                                               ; preds = %42, %52
  %.212 = phi i64 [ %.010, %42 ], [ %53, %52 ]
  %51 = icmp ugt i64 %.212, 1
  br i1 %51, label %52, label %84

52:                                               ; preds = %50
  %53 = add i64 %.212, -1
  %54 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %55 = load i64, ptr %54, align 16
  %56 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %53
  %57 = load i64, ptr %56, align 8
  %58 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %57, ptr %58, align 16
  %59 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %60 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %61 = trunc i64 %53 to i32
  call void @heap_adjust(ptr noundef %59, ptr noundef %60, i32 noundef %61, i32 noundef 1)
  %62 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %63 = load i64, ptr %62, align 16
  %64 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %63
  %65 = load i64, ptr %64, align 8
  %66 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %55
  %67 = load i64, ptr %66, align 8
  %68 = add i64 %65, %67
  %69 = add i64 256, %53
  %70 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %69
  store i64 %68, ptr %70, align 8
  %71 = add i64 256, %53
  %72 = trunc i64 %71 to i32
  %73 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %55
  store i32 %72, ptr %73, align 4
  %74 = sub i64 -256, %53
  %75 = trunc i64 %74 to i32
  %76 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %77 = load i64, ptr %76, align 16
  %78 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %77
  store i32 %75, ptr %78, align 4
  %79 = add i64 256, %53
  %80 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %79, ptr %80, align 16
  %81 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %82 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %83 = trunc i64 %53 to i32
  call void @heap_adjust(ptr noundef %81, ptr noundef %82, i32 noundef %83, i32 noundef 1)
  br label %50, !llvm.loop !12

84:                                               ; preds = %50
  %85 = add i64 256, %.212
  %86 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %85
  store i32 0, ptr %86, align 4
  br label %87

87:                                               ; preds = %122, %84
  %.044 = phi i64 [ 0, %84 ], [ %.246, %122 ]
  %.041 = phi i64 [ 0, %84 ], [ %123, %122 ]
  %.039 = phi i64 [ 0, %84 ], [ %.140, %122 ]
  %88 = icmp ult i64 %.041, 256
  br i1 %88, label %89, label %124

89:                                               ; preds = %87
  %90 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.041
  %91 = load i64, ptr %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.041
  store i32 0, ptr %94, align 4
  %95 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.041
  store i8 0, ptr %95, align 1
  br label %122

96:                                               ; preds = %89
  %97 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.041
  %98 = load i32, ptr %97, align 4
  br label %99

99:                                               ; preds = %106, %96
  %.042 = phi i64 [ 0, %96 ], [ %.143, %106 ]
  %.037 = phi i32 [ %98, %96 ], [ %109, %106 ]
  %.05 = phi i64 [ 1, %96 ], [ %110, %106 ]
  %.3 = phi i64 [ 0, %96 ], [ %111, %106 ]
  %100 = icmp ne i32 %.037, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %99
  %102 = icmp slt i32 %.037, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %101
  %104 = add i64 %.042, %.05
  %105 = sub nsw i32 0, %.037
  br label %106

106:                                              ; preds = %103, %101
  %.143 = phi i64 [ %104, %103 ], [ %.042, %101 ]
  %.138 = phi i32 [ %105, %103 ], [ %.037, %101 ]
  %107 = sext i32 %.138 to i64
  %108 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %107
  %109 = load i32, ptr %108, align 4
  %110 = shl i64 %.05, 1
  %111 = add i64 %.3, 1
  br label %99, !llvm.loop !13

112:                                              ; preds = %99
  %113 = trunc i64 %.042 to i32
  %114 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.041
  store i32 %113, ptr %114, align 4
  %115 = trunc i64 %.3 to i8
  %116 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.041
  store i8 %115, ptr %116, align 1
  %117 = icmp ugt i64 %.042, %.044
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %119

119:                                              ; preds = %118, %112
  %.145 = phi i64 [ %.042, %118 ], [ %.044, %112 ]
  %120 = icmp ugt i64 %.3, %.039
  br i1 %120, label %121, label %122

121:                                              ; preds = %119
  br label %122

122:                                              ; preds = %93, %121, %119
  %.246 = phi i64 [ %.145, %121 ], [ %.145, %119 ], [ %.044, %93 ]
  %.140 = phi i64 [ %.3, %121 ], [ %.039, %119 ], [ %.039, %93 ]
  %123 = add i64 %.041, 1
  br label %87, !llvm.loop !14

124:                                              ; preds = %87
  %125 = icmp ugt i64 %.039, 32
  br i1 %125, label %126, label %129

126:                                              ; preds = %124
  %127 = call ptr @__acrt_iob_func(i32 noundef 2)
  %128 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

129:                                              ; preds = %124
  %130 = icmp eq i64 %.044, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %129
  %132 = call ptr @__acrt_iob_func(i32 noundef 2)
  %133 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %132, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

134:                                              ; preds = %129
  br label %135

135:                                              ; preds = %183, %134
  %.134 = phi ptr [ %0, %134 ], [ %184, %183 ]
  %.028 = phi i64 [ 0, %134 ], [ %.129, %183 ]
  %.024 = phi i8 [ 0, %134 ], [ %.125, %183 ]
  %.16 = phi i64 [ 0, %134 ], [ %185, %183 ]
  %.01 = phi i32 [ -1, %134 ], [ %.1, %183 ]
  %136 = icmp ult i64 %.16, %1
  br i1 %136, label %137, label %186

137:                                              ; preds = %135
  %138 = load i8, ptr %.134, align 1
  %139 = zext i8 %138 to i64
  %140 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %139
  %141 = load i8, ptr %140, align 1
  %142 = zext i8 %141 to i32
  %143 = sub nsw i32 %142, 1
  %144 = shl i32 1, %143
  %145 = sext i32 %144 to i64
  br label %146

146:                                              ; preds = %180, %137
  %.129 = phi i64 [ %.028, %137 ], [ %.230, %180 ]
  %.125 = phi i8 [ %.024, %137 ], [ %.327, %180 ]
  %.015 = phi i64 [ %145, %137 ], [ %181, %180 ]
  %.4 = phi i64 [ 0, %137 ], [ %182, %180 ]
  %.1 = phi i32 [ %.01, %137 ], [ %.2, %180 ]
  %147 = load i8, ptr %.134, align 1
  %148 = zext i8 %147 to i64
  %149 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %148
  %150 = load i8, ptr %149, align 1
  %151 = zext i8 %150 to i64
  %152 = icmp ult i64 %.4, %151
  br i1 %152, label %153, label %183

153:                                              ; preds = %146
  %154 = icmp eq i32 %.1, 7
  br i1 %154, label %155, label %163

155:                                              ; preds = %153
  %156 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %156, align 1
  %157 = add i64 %.129, 1
  %158 = icmp eq i64 %157, %1
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = call ptr @__acrt_iob_func(i32 noundef 2)
  %161 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %160, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

162:                                              ; preds = %155
  br label %168

163:                                              ; preds = %153
  %164 = add nsw i32 %.1, 1
  %165 = sext i8 %.125 to i32
  %166 = shl i32 %165, 1
  %167 = trunc i32 %166 to i8
  br label %168

168:                                              ; preds = %163, %162
  %.230 = phi i64 [ %157, %162 ], [ %.129, %163 ]
  %.226 = phi i8 [ 0, %162 ], [ %167, %163 ]
  %.2 = phi i32 [ 0, %162 ], [ %164, %163 ]
  %169 = load i8, ptr %.134, align 1
  %170 = zext i8 %169 to i64
  %171 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %170
  %172 = load i32, ptr %171, align 4
  %173 = zext i32 %172 to i64
  %174 = and i64 %173, %.015
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %168
  %177 = sext i8 %.226 to i32
  %178 = or i32 %177, 1
  %179 = trunc i32 %178 to i8
  br label %180

180:                                              ; preds = %176, %168
  %.327 = phi i8 [ %179, %176 ], [ %.226, %168 ]
  %181 = lshr i64 %.015, 1
  %182 = add i64 %.4, 1
  br label %146, !llvm.loop !15

183:                                              ; preds = %146
  %184 = getelementptr inbounds nuw i8, ptr %.134, i32 1
  %185 = add i64 %.16, 1
  br label %135, !llvm.loop !16

186:                                              ; preds = %135
  %187 = sub nsw i32 7, %.01
  %188 = sext i8 %.024 to i32
  %189 = shl i32 %188, %187
  %190 = trunc i32 %189 to i8
  %191 = getelementptr inbounds nuw i8, ptr %11, i64 %.028
  store i8 %190, ptr %191, align 1
  %192 = add i64 %.028, 1
  %193 = getelementptr inbounds [256 x i32], ptr %8, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %193, i8 0, i64 1024, i1 false)
  %194 = getelementptr inbounds [256 x i8], ptr %9, i64 0, i64 0
  br label %195

195:                                              ; preds = %234, %186
  %.27 = phi i64 [ 0, %186 ], [ %235, %234 ]
  %.0 = phi ptr [ %194, %186 ], [ %199, %234 ]
  %196 = icmp ult i64 %.27, 256
  br i1 %196, label %197, label %236

197:                                              ; preds = %195
  %198 = trunc i64 %.27 to i8
  store i8 %198, ptr %.0, align 1
  %199 = getelementptr inbounds nuw i8, ptr %.0, i32 1
  %200 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %201 = load i32, ptr %200, align 4
  %202 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %203 = load i8, ptr %202, align 1
  %204 = zext i8 %203 to i32
  %205 = or i32 %201, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %234

207:                                              ; preds = %197
  %208 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %209 = load i8, ptr %208, align 1
  %210 = zext i8 %209 to i32
  %211 = sub nsw i32 %210, 1
  %212 = shl i32 1, %211
  %213 = sext i32 %212 to i64
  br label %214

214:                                              ; preds = %229, %207
  %.019 = phi i32 [ 0, %207 ], [ %.120, %229 ]
  %.116 = phi i64 [ %213, %207 ], [ %230, %229 ]
  %.5 = phi i64 [ 0, %207 ], [ %231, %229 ]
  %215 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %216 = load i8, ptr %215, align 1
  %217 = zext i8 %216 to i64
  %218 = icmp ult i64 %.5, %217
  br i1 %218, label %219, label %232

219:                                              ; preds = %214
  %220 = mul i32 %.019, 2
  %221 = add i32 %220, 1
  %222 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %223 = load i32, ptr %222, align 4
  %224 = zext i32 %223 to i64
  %225 = and i64 %224, %.116
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %219
  %228 = add i32 %221, 1
  br label %229

229:                                              ; preds = %227, %219
  %.120 = phi i32 [ %228, %227 ], [ %221, %219 ]
  %230 = lshr i64 %.116, 1
  %231 = add i64 %.5, 1
  br label %214, !llvm.loop !17

232:                                              ; preds = %214
  %233 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.27
  store i32 %.019, ptr %233, align 4
  br label %234

234:                                              ; preds = %197, %232
  %235 = add i64 %.27, 1
  br label %195, !llvm.loop !18

236:                                              ; preds = %195
  br label %237

237:                                              ; preds = %.critedge, %236
  %.6 = phi i64 [ 1, %236 ], [ %263, %.critedge ]
  %238 = icmp ult i64 %.6, 256
  br i1 %238, label %239, label %264

239:                                              ; preds = %237
  %240 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %241 = load i32, ptr %240, align 4
  %242 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %243 = load i8, ptr %242, align 1
  br label %244

244:                                              ; preds = %251, %239
  %.38 = phi i64 [ %.6, %239 ], [ %260, %251 ]
  %245 = icmp ne i64 %.38, 0
  br i1 %245, label %246, label %.critedge

246:                                              ; preds = %244
  %247 = sub i64 %.38, 1
  %248 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %247
  %249 = load i32, ptr %248, align 4
  %250 = icmp ugt i32 %249, %241
  br i1 %250, label %251, label %.critedge

251:                                              ; preds = %246
  %252 = sub i64 %.38, 1
  %253 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %252
  %254 = load i32, ptr %253, align 4
  %255 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %254, ptr %255, align 4
  %256 = sub i64 %.38, 1
  %257 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %256
  %258 = load i8, ptr %257, align 1
  %259 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %258, ptr %259, align 1
  %260 = add i64 %.38, -1
  br label %244, !llvm.loop !19

.critedge:                                        ; preds = %244, %246
  %261 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %241, ptr %261, align 4
  %262 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %243, ptr %262, align 1
  %263 = add i64 %.6, 1
  br label %237, !llvm.loop !20

264:                                              ; preds = %237
  br label %265

265:                                              ; preds = %269, %264
  %.49 = phi i64 [ 0, %264 ], [ %270, %269 ]
  %266 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %267 = load i32, ptr %266, align 4
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %265
  %270 = add i64 %.49, 1
  br label %265, !llvm.loop !21

271:                                              ; preds = %265
  br label %272

272:                                              ; preds = %305, %271
  %.235 = phi ptr [ %0, %271 ], [ %.336, %305 ]
  %.031 = phi ptr [ %11, %271 ], [ %.132, %305 ]
  %.221 = phi i32 [ 0, %271 ], [ %.423, %305 ]
  %.217 = phi i64 [ 128, %271 ], [ %.318, %305 ]
  %.313 = phi i64 [ 0, %271 ], [ %.414, %305 ]
  %.7 = phi i64 [ %.49, %271 ], [ %.9, %305 ]
  %273 = icmp ult i64 %.313, %1
  br i1 %273, label %274, label %306

274:                                              ; preds = %272
  %275 = mul i32 %.221, 2
  %276 = add i32 %275, 1
  %277 = load i8, ptr %.031, align 1
  %278 = zext i8 %277 to i64
  %279 = and i64 %278, %.217
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %283

281:                                              ; preds = %274
  %282 = add i32 %276, 1
  br label %283

283:                                              ; preds = %281, %274
  %.322 = phi i32 [ %282, %281 ], [ %276, %274 ]
  br label %284

284:                                              ; preds = %288, %283
  %.8 = phi i64 [ %.7, %283 ], [ %289, %288 ]
  %285 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %286 = load i32, ptr %285, align 4
  %287 = icmp ult i32 %286, %.322
  br i1 %287, label %288, label %290

288:                                              ; preds = %284
  %289 = add i64 %.8, 1
  br label %284, !llvm.loop !22

290:                                              ; preds = %284
  %291 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %292 = load i32, ptr %291, align 4
  %293 = icmp eq i32 %.322, %292
  br i1 %293, label %294, label %299

294:                                              ; preds = %290
  %295 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8
  %296 = load i8, ptr %295, align 1
  store i8 %296, ptr %.235, align 1
  %297 = getelementptr inbounds nuw i8, ptr %.235, i32 1
  %298 = add i64 %.313, 1
  br label %299

299:                                              ; preds = %294, %290
  %.336 = phi ptr [ %297, %294 ], [ %.235, %290 ]
  %.423 = phi i32 [ 0, %294 ], [ %.322, %290 ]
  %.414 = phi i64 [ %298, %294 ], [ %.313, %290 ]
  %.9 = phi i64 [ %.49, %294 ], [ %.8, %290 ]
  %300 = icmp ugt i64 %.217, 1
  br i1 %300, label %301, label %303

301:                                              ; preds = %299
  %302 = lshr i64 %.217, 1
  br label %305

303:                                              ; preds = %299
  %304 = getelementptr inbounds nuw i8, ptr %.031, i32 1
  br label %305

305:                                              ; preds = %303, %301
  %.132 = phi ptr [ %.031, %301 ], [ %304, %303 ]
  %.318 = phi i64 [ %302, %301 ], [ 128, %303 ]
  br label %272, !llvm.loop !23

306:                                              ; preds = %272
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

10:                                               ; preds = %42, %4
  %.01 = phi i32 [ %3, %4 ], [ %.0, %42 ]
  %11 = sdiv i32 %2, 2
  %12 = icmp sle i32 %.01, %11
  br i1 %12, label %13, label %50

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
  br i1 %41, label %50, label %42

42:                                               ; preds = %31
  %43 = sub nsw i32 %.0, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, ptr %1, i64 %44
  %46 = load i64, ptr %45, align 8
  %47 = sub nsw i32 %.01, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, ptr %1, i64 %48
  store i64 %46, ptr %49, align 8
  br label %10, !llvm.loop !24

50:                                               ; preds = %31, %10
  %51 = sext i32 %9 to i64
  %52 = sub nsw i32 %.01, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, ptr %1, i64 %53
  store i64 %51, ptr %54, align 8
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
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %13, %4
  %.01 = phi i32 [ 1, %4 ], [ %14, %13 ]
  %6 = icmp slt i32 %.01, %0
  br i1 %6, label %7, label %15

7:                                                ; preds = %5
  %8 = getelementptr inbounds ptr, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8
  %10 = call i32 @strcmp(ptr noundef %9, ptr noundef @.str.4) #7
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  br label %15

13:                                               ; preds = %7
  %14 = add nsw i32 %.01, 1
  br label %5, !llvm.loop !25

15:                                               ; preds = %5, %12, %2
  %.0 = phi i8 [ 1, %12 ], [ 0, %5 ], [ 0, %2 ]
  %16 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %17

17:                                               ; preds = %19, %15
  %.1 = phi i32 [ 0, %15 ], [ %20, %19 ]
  %18 = icmp slt i32 %.1, 30
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  call void @compdecomp(ptr noundef %16, i64 noundef 10000000)
  %20 = add nsw i32 %.1, 1
  br label %17, !llvm.loop !26

21:                                               ; preds = %17
  call void @free(ptr noundef %16)
  %22 = icmp ne i8 %.0, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = call ptr @__acrt_iob_func(i32 noundef 1)
  %25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef @.str.5, double noundef 0.000000e+00) #7
  br label %29

26:                                               ; preds = %21
  %27 = call ptr @__acrt_iob_func(i32 noundef 1)
  %28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef @.str.6, double noundef 0.000000e+00) #7
  br label %29

29:                                               ; preds = %26, %23
  %30 = call ptr @__acrt_iob_func(i32 noundef 1)
  %31 = call i32 @fflush(ptr noundef %30)
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
  %8 = mul nsw i32 16807, %7
  %9 = mul nsw i32 2836, %4
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
