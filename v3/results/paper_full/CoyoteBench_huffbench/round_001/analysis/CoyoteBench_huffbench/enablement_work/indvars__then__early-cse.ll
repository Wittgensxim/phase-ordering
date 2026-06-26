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

3:                                                ; preds = %9, %1
  %indvars.iv = phi i64 [ %indvars.iv.next, %9 ], [ 0, %1 ]
  %.01 = phi ptr [ %2, %1 ], [ %8, %9 ]
  %exitcond = icmp ne i64 %indvars.iv, %0
  br i1 %exitcond, label %4, label %10

4:                                                ; preds = %3
  %5 = call i64 @random4()
  %6 = getelementptr inbounds nuw i8, ptr @.str, i64 %5
  %7 = load i8, ptr %6, align 1
  store i8 %7, ptr %.01, align 1
  %8 = getelementptr inbounds nuw i8, ptr %.01, i32 1
  br label %9

9:                                                ; preds = %4
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  br label %3, !llvm.loop !7

10:                                               ; preds = %3
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

12:                                               ; preds = %20, %2
  %.033 = phi ptr [ %0, %2 ], [ %19, %20 ]
  %.02 = phi i64 [ 0, %2 ], [ %21, %20 ]
  %exitcond = icmp ne i64 %.02, %1
  br i1 %exitcond, label %13, label %22

13:                                               ; preds = %12
  %14 = load i8, ptr %.033, align 1
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %15
  %17 = load i64, ptr %16, align 8
  %18 = add i64 %17, 1
  store i64 %18, ptr %16, align 8
  %19 = getelementptr inbounds nuw i8, ptr %.033, i32 1
  br label %20

20:                                               ; preds = %13
  %21 = add i64 %.02, 1
  br label %12, !llvm.loop !9

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %32, %22
  %.010 = phi i64 [ 0, %22 ], [ %.111, %32 ]
  %.13 = phi i64 [ 0, %22 ], [ %33, %32 ]
  %exitcond7 = icmp ne i64 %.13, 256
  br i1 %exitcond7, label %24, label %34

24:                                               ; preds = %23
  %25 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.13
  %26 = load i64, ptr %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.010
  store i64 %.13, ptr %29, align 8
  %30 = add i64 %.010, 1
  br label %31

31:                                               ; preds = %28, %24
  %.111 = phi i64 [ %30, %28 ], [ %.010, %24 ]
  br label %32

32:                                               ; preds = %31
  %33 = add nuw nsw i64 %.13, 1
  br label %23, !llvm.loop !10

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %40, %34
  %.24 = phi i64 [ %.010, %34 ], [ %41, %40 ]
  %36 = icmp ugt i64 %.24, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %35
  %38 = trunc i64 %.010 to i32
  %39 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %38, i32 noundef %39)
  br label %40

40:                                               ; preds = %37
  %41 = add i64 %.24, -1
  br label %35, !llvm.loop !11

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %45, %42
  %.212 = phi i64 [ %.010, %42 ], [ %46, %45 ]
  %44 = icmp ugt i64 %.212, 1
  br i1 %44, label %45, label %65

45:                                               ; preds = %43
  %46 = add i64 %.212, -1
  %47 = load i64, ptr %4, align 16
  %48 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %46
  %49 = load i64, ptr %48, align 8
  store i64 %49, ptr %4, align 16
  %50 = trunc i64 %46 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %50, i32 noundef 1)
  %51 = load i64, ptr %4, align 16
  %52 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %51
  %53 = load i64, ptr %52, align 8
  %54 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %47
  %55 = load i64, ptr %54, align 8
  %56 = add i64 %53, %55
  %57 = add i64 256, %46
  %58 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %57
  store i64 %56, ptr %58, align 8
  %59 = trunc i64 %57 to i32
  %60 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %47
  store i32 %59, ptr %60, align 4
  %61 = sub i64 -256, %46
  %62 = trunc i64 %61 to i32
  %63 = load i64, ptr %4, align 16
  %64 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %63
  store i32 %62, ptr %64, align 4
  store i64 %57, ptr %4, align 16
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %50, i32 noundef 1)
  br label %43, !llvm.loop !12

65:                                               ; preds = %43
  %66 = add i64 256, %.212
  %67 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %66
  store i32 0, ptr %67, align 4
  br label %68

68:                                               ; preds = %104, %65
  %.045 = phi i64 [ 0, %65 ], [ %.146, %104 ]
  %.042 = phi i64 [ 0, %65 ], [ %105, %104 ]
  %.039 = phi i64 [ 0, %65 ], [ %.140, %104 ]
  %exitcond8 = icmp ne i64 %.042, 256
  br i1 %exitcond8, label %69, label %106

69:                                               ; preds = %68
  %70 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.042
  %71 = load i64, ptr %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 0, ptr %74, align 4
  %75 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 0, ptr %75, align 1
  br label %103

76:                                               ; preds = %69
  %77 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.042
  %78 = load i32, ptr %77, align 4
  br label %79

79:                                               ; preds = %86, %76
  %.043 = phi i64 [ 0, %76 ], [ %.144, %86 ]
  %.037 = phi i32 [ %78, %76 ], [ %89, %86 ]
  %.05 = phi i64 [ 1, %76 ], [ %90, %86 ]
  %.3 = phi i64 [ 0, %76 ], [ %91, %86 ]
  %80 = icmp ne i32 %.037, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %79
  %82 = icmp slt i32 %.037, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %81
  %84 = add i64 %.043, %.05
  %85 = sub nsw i32 0, %.037
  br label %86

86:                                               ; preds = %83, %81
  %.144 = phi i64 [ %84, %83 ], [ %.043, %81 ]
  %.138 = phi i32 [ %85, %83 ], [ %.037, %81 ]
  %87 = sext i32 %.138 to i64
  %88 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %87
  %89 = load i32, ptr %88, align 4
  %90 = shl i64 %.05, 1
  %91 = add i64 %.3, 1
  br label %79, !llvm.loop !13

92:                                               ; preds = %79
  %93 = trunc i64 %.043 to i32
  %94 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 %93, ptr %94, align 4
  %95 = trunc i64 %.3 to i8
  %96 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 %95, ptr %96, align 1
  %97 = icmp ugt i64 %.043, %.045
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %99

99:                                               ; preds = %98, %92
  %.247 = phi i64 [ %.043, %98 ], [ %.045, %92 ]
  %100 = icmp ugt i64 %.3, %.039
  br i1 %100, label %101, label %102

101:                                              ; preds = %99
  br label %102

102:                                              ; preds = %101, %99
  %.241 = phi i64 [ %.3, %101 ], [ %.039, %99 ]
  br label %103

103:                                              ; preds = %102, %73
  %.146 = phi i64 [ %.247, %102 ], [ %.045, %73 ]
  %.140 = phi i64 [ %.241, %102 ], [ %.039, %73 ]
  br label %104

104:                                              ; preds = %103
  %105 = add nuw nsw i64 %.042, 1
  br label %68, !llvm.loop !14

106:                                              ; preds = %68
  %107 = icmp ugt i64 %.039, 32
  br i1 %107, label %108, label %111

108:                                              ; preds = %106
  %109 = call ptr @__acrt_iob_func(i32 noundef 2)
  %110 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %109, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

111:                                              ; preds = %106
  %112 = icmp eq i64 %.045, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %111
  %114 = call ptr @__acrt_iob_func(i32 noundef 2)
  %115 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

116:                                              ; preds = %111
  br label %117

117:                                              ; preds = %167, %116
  %.134 = phi ptr [ %0, %116 ], [ %166, %167 ]
  %.028 = phi i64 [ 0, %116 ], [ %.129, %167 ]
  %.024 = phi i8 [ 0, %116 ], [ %.125, %167 ]
  %.16 = phi i64 [ 0, %116 ], [ %168, %167 ]
  %.01 = phi i32 [ -1, %116 ], [ %.1, %167 ]
  %exitcond9 = icmp ne i64 %.16, %1
  br i1 %exitcond9, label %118, label %169

118:                                              ; preds = %117
  %119 = load i8, ptr %.134, align 1
  %120 = zext i8 %119 to i64
  %121 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %120
  %122 = load i8, ptr %121, align 1
  %123 = zext i8 %122 to i32
  %124 = sub nsw i32 %123, 1
  %125 = shl i32 1, %124
  %126 = sext i32 %125 to i64
  br label %127

127:                                              ; preds = %163, %118
  %.129 = phi i64 [ %.028, %118 ], [ %.230, %163 ]
  %.125 = phi i8 [ %.024, %118 ], [ %.327, %163 ]
  %.015 = phi i64 [ %126, %118 ], [ %162, %163 ]
  %.4 = phi i64 [ 0, %118 ], [ %164, %163 ]
  %.1 = phi i32 [ %.01, %118 ], [ %.2, %163 ]
  %128 = load i8, ptr %.134, align 1
  %129 = zext i8 %128 to i64
  %130 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %129
  %131 = load i8, ptr %130, align 1
  %132 = zext i8 %131 to i64
  %133 = icmp samesign ult i64 %.4, %132
  br i1 %133, label %134, label %165

134:                                              ; preds = %127
  %135 = icmp eq i32 %.1, 7
  br i1 %135, label %136, label %144

136:                                              ; preds = %134
  %137 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %137, align 1
  %138 = add i64 %.129, 1
  %139 = icmp eq i64 %138, %1
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = call ptr @__acrt_iob_func(i32 noundef 2)
  %142 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %141, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

143:                                              ; preds = %136
  br label %149

144:                                              ; preds = %134
  %145 = add nsw i32 %.1, 1
  %146 = sext i8 %.125 to i32
  %147 = shl i32 %146, 1
  %148 = trunc i32 %147 to i8
  br label %149

149:                                              ; preds = %144, %143
  %.230 = phi i64 [ %138, %143 ], [ %.129, %144 ]
  %.226 = phi i8 [ 0, %143 ], [ %148, %144 ]
  %.2 = phi i32 [ 0, %143 ], [ %145, %144 ]
  %150 = load i8, ptr %.134, align 1
  %151 = zext i8 %150 to i64
  %152 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %151
  %153 = load i32, ptr %152, align 4
  %154 = zext i32 %153 to i64
  %155 = and i64 %154, %.015
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %149
  %158 = sext i8 %.226 to i32
  %159 = or i32 %158, 1
  %160 = trunc i32 %159 to i8
  br label %161

161:                                              ; preds = %157, %149
  %.327 = phi i8 [ %160, %157 ], [ %.226, %149 ]
  %162 = lshr i64 %.015, 1
  br label %163

163:                                              ; preds = %161
  %164 = add nuw nsw i64 %.4, 1
  br label %127, !llvm.loop !15

165:                                              ; preds = %127
  %166 = getelementptr inbounds nuw i8, ptr %.134, i32 1
  br label %167

167:                                              ; preds = %165
  %168 = add i64 %.16, 1
  br label %117, !llvm.loop !16

169:                                              ; preds = %117
  %170 = sub nsw i32 7, %.01
  %171 = sext i8 %.024 to i32
  %172 = shl i32 %171, %170
  %173 = trunc i32 %172 to i8
  %174 = getelementptr inbounds nuw i8, ptr %11, i64 %.028
  store i8 %173, ptr %174, align 1
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 1024, i1 false)
  br label %175

175:                                              ; preds = %210, %169
  %.27 = phi i64 [ 0, %169 ], [ %211, %210 ]
  %.0 = phi ptr [ %9, %169 ], [ %178, %210 ]
  %exitcond10 = icmp ne i64 %.27, 256
  br i1 %exitcond10, label %176, label %212

176:                                              ; preds = %175
  %177 = trunc i64 %.27 to i8
  store i8 %177, ptr %.0, align 1
  %178 = getelementptr inbounds nuw i8, ptr %.0, i32 1
  %179 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %180 = load i32, ptr %179, align 4
  %181 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %182 = load i8, ptr %181, align 1
  %183 = zext i8 %182 to i32
  %184 = or i32 %180, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %209

186:                                              ; preds = %176
  %187 = sub nsw i32 %183, 1
  %188 = shl i32 1, %187
  %189 = sext i32 %188 to i64
  br label %190

190:                                              ; preds = %205, %186
  %.019 = phi i32 [ 0, %186 ], [ %.120, %205 ]
  %.116 = phi i64 [ %189, %186 ], [ %204, %205 ]
  %.5 = phi i64 [ 0, %186 ], [ %206, %205 ]
  %191 = load i8, ptr %181, align 1
  %192 = zext i8 %191 to i64
  %193 = icmp samesign ult i64 %.5, %192
  br i1 %193, label %194, label %207

194:                                              ; preds = %190
  %195 = mul i32 %.019, 2
  %196 = add i32 %195, 1
  %197 = load i32, ptr %179, align 4
  %198 = zext i32 %197 to i64
  %199 = and i64 %198, %.116
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %194
  %202 = add i32 %196, 1
  br label %203

203:                                              ; preds = %201, %194
  %.120 = phi i32 [ %202, %201 ], [ %196, %194 ]
  %204 = lshr i64 %.116, 1
  br label %205

205:                                              ; preds = %203
  %206 = add nuw nsw i64 %.5, 1
  br label %190, !llvm.loop !17

207:                                              ; preds = %190
  %208 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.27
  store i32 %.019, ptr %208, align 4
  br label %209

209:                                              ; preds = %207, %176
  br label %210

210:                                              ; preds = %209
  %211 = add nuw nsw i64 %.27, 1
  br label %175, !llvm.loop !18

212:                                              ; preds = %175
  br label %213

213:                                              ; preds = %240, %212
  %.6 = phi i64 [ 1, %212 ], [ %241, %240 ]
  %exitcond11 = icmp ne i64 %.6, 256
  br i1 %exitcond11, label %214, label %242

214:                                              ; preds = %213
  %215 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %216 = load i32, ptr %215, align 4
  %217 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %218 = load i8, ptr %217, align 1
  br label %219

219:                                              ; preds = %228, %214
  %.38 = phi i64 [ %.6, %214 ], [ %236, %228 ]
  %220 = icmp ne i64 %.38, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %219
  %222 = sub nuw i64 %.38, 1
  %223 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %222
  %224 = load i32, ptr %223, align 4
  %225 = icmp ugt i32 %224, %216
  br label %226

226:                                              ; preds = %221, %219
  %227 = phi i1 [ false, %219 ], [ %225, %221 ]
  br i1 %227, label %228, label %237

228:                                              ; preds = %226
  %229 = sub i64 %.38, 1
  %230 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %229
  %231 = load i32, ptr %230, align 4
  %232 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %231, ptr %232, align 4
  %233 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %229
  %234 = load i8, ptr %233, align 1
  %235 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %234, ptr %235, align 1
  %236 = add i64 %.38, -1
  br label %219, !llvm.loop !19

237:                                              ; preds = %226
  %238 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %216, ptr %238, align 4
  %239 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %218, ptr %239, align 1
  br label %240

240:                                              ; preds = %237
  %241 = add nuw nsw i64 %.6, 1
  br label %213, !llvm.loop !20

242:                                              ; preds = %213
  br label %243

243:                                              ; preds = %248, %242
  %.49 = phi i64 [ 0, %242 ], [ %249, %248 ]
  %244 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %245 = load i32, ptr %244, align 4
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %243
  br label %248

248:                                              ; preds = %247
  %249 = add i64 %.49, 1
  br label %243, !llvm.loop !21

250:                                              ; preds = %243
  br label %251

251:                                              ; preds = %282, %250
  %.235 = phi ptr [ %0, %250 ], [ %.336, %282 ]
  %.031 = phi ptr [ %11, %250 ], [ %.132, %282 ]
  %.221 = phi i32 [ 0, %250 ], [ %.423, %282 ]
  %.217 = phi i64 [ 128, %250 ], [ %.318, %282 ]
  %.313 = phi i64 [ 0, %250 ], [ %.414, %282 ]
  %.7 = phi i64 [ %.49, %250 ], [ %.9, %282 ]
  %252 = icmp ult i64 %.313, %1
  br i1 %252, label %253, label %283

253:                                              ; preds = %251
  %254 = mul i32 %.221, 2
  %255 = add i32 %254, 1
  %256 = load i8, ptr %.031, align 1
  %257 = zext i8 %256 to i64
  %258 = and i64 %257, %.217
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %253
  %261 = add i32 %255, 1
  br label %262

262:                                              ; preds = %260, %253
  %.322 = phi i32 [ %261, %260 ], [ %255, %253 ]
  br label %263

263:                                              ; preds = %267, %262
  %.8 = phi i64 [ %.7, %262 ], [ %268, %267 ]
  %264 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %265 = load i32, ptr %264, align 4
  %266 = icmp ult i32 %265, %.322
  br i1 %266, label %267, label %269

267:                                              ; preds = %263
  %268 = add i64 %.8, 1
  br label %263, !llvm.loop !22

269:                                              ; preds = %263
  %270 = icmp eq i32 %.322, %265
  br i1 %270, label %271, label %276

271:                                              ; preds = %269
  %272 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8
  %273 = load i8, ptr %272, align 1
  store i8 %273, ptr %.235, align 1
  %274 = getelementptr inbounds nuw i8, ptr %.235, i32 1
  %275 = add i64 %.313, 1
  br label %276

276:                                              ; preds = %271, %269
  %.336 = phi ptr [ %274, %271 ], [ %.235, %269 ]
  %.423 = phi i32 [ 0, %271 ], [ %.322, %269 ]
  %.414 = phi i64 [ %275, %271 ], [ %.313, %269 ]
  %.9 = phi i64 [ %.49, %271 ], [ %.8, %269 ]
  %277 = icmp ugt i64 %.217, 1
  br i1 %277, label %278, label %280

278:                                              ; preds = %276
  %279 = lshr i64 %.217, 1
  br label %282

280:                                              ; preds = %276
  %281 = getelementptr inbounds nuw i8, ptr %.031, i32 1
  br label %282

282:                                              ; preds = %280, %278
  %.132 = phi ptr [ %.031, %278 ], [ %281, %280 ]
  %.318 = phi i64 [ %279, %278 ], [ 128, %280 ]
  br label %251, !llvm.loop !23

283:                                              ; preds = %251
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
  br i1 %3, label %4, label %16

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %13, %4
  %.01 = phi i32 [ 1, %4 ], [ %14, %13 ]
  %exitcond = icmp ne i32 %.01, %0
  br i1 %exitcond, label %6, label %.loopexit

6:                                                ; preds = %5
  %7 = getelementptr inbounds ptr, ptr %1, i64 1
  %8 = load ptr, ptr %7, align 8
  %9 = call i32 @strcmp(ptr noundef %8, ptr noundef @.str.4) #7
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  br label %15

12:                                               ; preds = %6
  br label %13

13:                                               ; preds = %12
  %14 = add nuw i32 %.01, 1
  br label %5, !llvm.loop !25

.loopexit:                                        ; preds = %5
  br label %15

15:                                               ; preds = %.loopexit, %11
  %.1 = phi i8 [ 1, %11 ], [ 0, %.loopexit ]
  br label %16

16:                                               ; preds = %15, %2
  %.0 = phi i8 [ %.1, %15 ], [ 0, %2 ]
  %17 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %18

18:                                               ; preds = %20, %16
  %.12 = phi i32 [ 0, %16 ], [ %21, %20 ]
  %exitcond1 = icmp ne i32 %.12, 30
  br i1 %exitcond1, label %19, label %22

19:                                               ; preds = %18
  call void @compdecomp(ptr noundef %17, i64 noundef 10000000)
  br label %20

20:                                               ; preds = %19
  %21 = add nuw nsw i32 %.12, 1
  br label %18, !llvm.loop !26

22:                                               ; preds = %18
  call void @free(ptr noundef %17)
  %23 = icmp ne i8 %.0, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = call ptr @__acrt_iob_func(i32 noundef 1)
  %26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.5, double noundef 0.000000e+00) #7
  br label %30

27:                                               ; preds = %22
  %28 = call ptr @__acrt_iob_func(i32 noundef 1)
  %29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.6, double noundef 0.000000e+00) #7
  br label %30

30:                                               ; preds = %27, %24
  %31 = call ptr @__acrt_iob_func(i32 noundef 1)
  %32 = call i32 @fflush(ptr noundef %31)
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
