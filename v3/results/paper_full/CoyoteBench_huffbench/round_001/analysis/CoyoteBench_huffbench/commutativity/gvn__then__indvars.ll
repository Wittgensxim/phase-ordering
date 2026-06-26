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

3:                                                ; preds = %4, %1
  %indvars.iv = phi i64 [ %indvars.iv.next, %4 ], [ 0, %1 ]
  %.01 = phi ptr [ %2, %1 ], [ %8, %4 ]
  %exitcond = icmp ne i64 %indvars.iv, %0
  br i1 %exitcond, label %4, label %9

4:                                                ; preds = %3
  %5 = call i64 @random4()
  %6 = getelementptr inbounds nuw i8, ptr @.str, i64 %5
  %7 = load i8, ptr %6, align 1
  store i8 %7, ptr %.01, align 1
  %8 = getelementptr inbounds nuw i8, ptr %.01, i32 1
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  br label %3, !llvm.loop !7

9:                                                ; preds = %3
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

12:                                               ; preds = %13, %2
  %.033 = phi ptr [ %0, %2 ], [ %19, %13 ]
  %.02 = phi i64 [ 0, %2 ], [ %20, %13 ]
  %exitcond = icmp ne i64 %.02, %1
  br i1 %exitcond, label %13, label %21

13:                                               ; preds = %12
  %14 = load i8, ptr %.033, align 1
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %15
  %17 = load i64, ptr %16, align 8
  %18 = add i64 %17, 1
  store i64 %18, ptr %16, align 8
  %19 = getelementptr inbounds nuw i8, ptr %.033, i32 1
  %20 = add i64 %.02, 1
  br label %12, !llvm.loop !9

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %30, %21
  %.010 = phi i64 [ 0, %21 ], [ %.111, %30 ]
  %.13 = phi i64 [ 0, %21 ], [ %31, %30 ]
  %exitcond9 = icmp ne i64 %.13, 256
  br i1 %exitcond9, label %23, label %32

23:                                               ; preds = %22
  %24 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.13
  %25 = load i64, ptr %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.010
  store i64 %.13, ptr %28, align 8
  %29 = add i64 %.010, 1
  br label %30

30:                                               ; preds = %27, %23
  %.111 = phi i64 [ %29, %27 ], [ %.010, %23 ]
  %31 = add nuw nsw i64 %.13, 1
  br label %22, !llvm.loop !10

32:                                               ; preds = %22
  %.010.lcssa = phi i64 [ %.010, %22 ]
  br label %33

33:                                               ; preds = %35, %32
  %.24 = phi i64 [ %.010.lcssa, %32 ], [ %38, %35 ]
  %34 = icmp ugt i64 %.24, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  %36 = trunc i64 %.010.lcssa to i32
  %37 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %36, i32 noundef %37)
  %38 = add i64 %.24, -1
  br label %33, !llvm.loop !11

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %42, %39
  %.212 = phi i64 [ %.010.lcssa, %39 ], [ %43, %42 ]
  %41 = icmp ugt i64 %.212, 1
  br i1 %41, label %42, label %61

42:                                               ; preds = %40
  %43 = add i64 %.212, -1
  %44 = load i64, ptr %4, align 16
  %45 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %43
  %46 = load i64, ptr %45, align 8
  store i64 %46, ptr %4, align 16
  %47 = trunc i64 %43 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %47, i32 noundef 1)
  %48 = load i64, ptr %4, align 16
  %49 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %48
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %44
  %52 = load i64, ptr %51, align 8
  %53 = add i64 %50, %52
  %54 = add i64 256, %43
  %55 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %54
  store i64 %53, ptr %55, align 8
  %56 = trunc i64 %54 to i32
  %57 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %44
  store i32 %56, ptr %57, align 4
  %58 = sub i64 -256, %43
  %59 = trunc i64 %58 to i32
  %60 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %48
  store i32 %59, ptr %60, align 4
  store i64 %54, ptr %4, align 16
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %47, i32 noundef 1)
  br label %40, !llvm.loop !12

61:                                               ; preds = %40
  %.212.lcssa = phi i64 [ %.212, %40 ]
  %62 = add i64 256, %.212.lcssa
  %63 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %62
  store i32 0, ptr %63, align 4
  br label %64

64:                                               ; preds = %99, %61
  %.045 = phi i64 [ 0, %61 ], [ %.146, %99 ]
  %.042 = phi i64 [ 0, %61 ], [ %100, %99 ]
  %.039 = phi i64 [ 0, %61 ], [ %.140, %99 ]
  %exitcond10 = icmp ne i64 %.042, 256
  br i1 %exitcond10, label %65, label %101

65:                                               ; preds = %64
  %66 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.042
  %67 = load i64, ptr %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 0, ptr %70, align 4
  %71 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 0, ptr %71, align 1
  br label %99

72:                                               ; preds = %65
  %73 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.042
  %74 = load i32, ptr %73, align 4
  br label %75

75:                                               ; preds = %82, %72
  %.043 = phi i64 [ 0, %72 ], [ %.144, %82 ]
  %.037 = phi i32 [ %74, %72 ], [ %85, %82 ]
  %.05 = phi i64 [ 1, %72 ], [ %86, %82 ]
  %.3 = phi i64 [ 0, %72 ], [ %87, %82 ]
  %76 = icmp ne i32 %.037, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %75
  %78 = icmp slt i32 %.037, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %77
  %80 = add i64 %.043, %.05
  %81 = sub nsw i32 0, %.037
  br label %82

82:                                               ; preds = %79, %77
  %.144 = phi i64 [ %80, %79 ], [ %.043, %77 ]
  %.138 = phi i32 [ %81, %79 ], [ %.037, %77 ]
  %83 = sext i32 %.138 to i64
  %84 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %83
  %85 = load i32, ptr %84, align 4
  %86 = shl i64 %.05, 1
  %87 = add i64 %.3, 1
  br label %75, !llvm.loop !13

88:                                               ; preds = %75
  %.043.lcssa = phi i64 [ %.043, %75 ]
  %.3.lcssa = phi i64 [ %.3, %75 ]
  %89 = trunc i64 %.043.lcssa to i32
  %90 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 %89, ptr %90, align 4
  %91 = trunc i64 %.3.lcssa to i8
  %92 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 %91, ptr %92, align 1
  %93 = icmp ugt i64 %.043.lcssa, %.045
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %95

95:                                               ; preds = %94, %88
  %.247 = phi i64 [ %.043.lcssa, %94 ], [ %.045, %88 ]
  %96 = icmp ugt i64 %.3.lcssa, %.039
  br i1 %96, label %97, label %98

97:                                               ; preds = %95
  br label %98

98:                                               ; preds = %97, %95
  %.241 = phi i64 [ %.3.lcssa, %97 ], [ %.039, %95 ]
  br label %99

99:                                               ; preds = %98, %69
  %.146 = phi i64 [ %.247, %98 ], [ %.045, %69 ]
  %.140 = phi i64 [ %.241, %98 ], [ %.039, %69 ]
  %100 = add nuw nsw i64 %.042, 1
  br label %64, !llvm.loop !14

101:                                              ; preds = %64
  %.045.lcssa = phi i64 [ %.045, %64 ]
  %.039.lcssa = phi i64 [ %.039, %64 ]
  %102 = icmp ugt i64 %.039.lcssa, 32
  br i1 %102, label %103, label %106

103:                                              ; preds = %101
  %104 = call ptr @__acrt_iob_func(i32 noundef 2)
  %105 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %104, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

106:                                              ; preds = %101
  %107 = icmp eq i64 %.045.lcssa, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %106
  %109 = call ptr @__acrt_iob_func(i32 noundef 2)
  %110 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %109, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

111:                                              ; preds = %106
  br label %112

112:                                              ; preds = %158, %111
  %.134 = phi ptr [ %0, %111 ], [ %159, %158 ]
  %.028 = phi i64 [ 0, %111 ], [ %.129.lcssa, %158 ]
  %.024 = phi i8 [ 0, %111 ], [ %.125.lcssa, %158 ]
  %.16 = phi i64 [ 0, %111 ], [ %160, %158 ]
  %.01 = phi i32 [ -1, %111 ], [ %.1.lcssa, %158 ]
  %exitcond11 = icmp ne i64 %.16, %1
  br i1 %exitcond11, label %113, label %161

113:                                              ; preds = %112
  %114 = load i8, ptr %.134, align 1
  %115 = zext i8 %114 to i64
  %116 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %115
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i32
  %119 = sub nsw i32 %118, 1
  %120 = shl i32 1, %119
  %121 = sext i32 %120 to i64
  br label %122

122:                                              ; preds = %155, %113
  %123 = phi i8 [ %114, %113 ], [ %145, %155 ]
  %124 = phi i8 [ %117, %113 ], [ %.pre, %155 ]
  %.129 = phi i64 [ %.028, %113 ], [ %.230, %155 ]
  %.125 = phi i8 [ %.024, %113 ], [ %.327, %155 ]
  %.015 = phi i64 [ %121, %113 ], [ %156, %155 ]
  %.4 = phi i64 [ 0, %113 ], [ %157, %155 ]
  %.1 = phi i32 [ %.01, %113 ], [ %.2, %155 ]
  %125 = zext i8 %123 to i64
  %126 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %125
  %127 = zext i8 %124 to i64
  %128 = icmp samesign ult i64 %.4, %127
  br i1 %128, label %129, label %158

129:                                              ; preds = %122
  %130 = icmp eq i32 %.1, 7
  br i1 %130, label %131, label %139

131:                                              ; preds = %129
  %132 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %132, align 1
  %133 = add i64 %.129, 1
  %134 = icmp eq i64 %133, %1
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = call ptr @__acrt_iob_func(i32 noundef 2)
  %137 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %136, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

138:                                              ; preds = %131
  %.pre1 = load i8, ptr %.134, align 1
  %.pre2 = zext i8 %.pre1 to i64
  br label %144

139:                                              ; preds = %129
  %140 = add nsw i32 %.1, 1
  %141 = sext i8 %.125 to i32
  %142 = shl i32 %141, 1
  %143 = trunc i32 %142 to i8
  br label %144

144:                                              ; preds = %139, %138
  %.pre-phi = phi i64 [ %125, %139 ], [ %.pre2, %138 ]
  %145 = phi i8 [ %.pre1, %138 ], [ %123, %139 ]
  %.230 = phi i64 [ %133, %138 ], [ %.129, %139 ]
  %.226 = phi i8 [ 0, %138 ], [ %143, %139 ]
  %.2 = phi i32 [ 0, %138 ], [ %140, %139 ]
  %146 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.pre-phi
  %147 = load i32, ptr %146, align 4
  %148 = zext i32 %147 to i64
  %149 = and i64 %148, %.015
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %144
  %152 = sext i8 %.226 to i32
  %153 = or i32 %152, 1
  %154 = trunc i32 %153 to i8
  br label %155

155:                                              ; preds = %151, %144
  %.327 = phi i8 [ %154, %151 ], [ %.226, %144 ]
  %156 = lshr i64 %.015, 1
  %157 = add nuw nsw i64 %.4, 1
  %.phi.trans.insert = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %122, !llvm.loop !15

158:                                              ; preds = %122
  %.129.lcssa = phi i64 [ %.129, %122 ]
  %.125.lcssa = phi i8 [ %.125, %122 ]
  %.1.lcssa = phi i32 [ %.1, %122 ]
  %159 = getelementptr inbounds nuw i8, ptr %.134, i32 1
  %160 = add i64 %.16, 1
  br label %112, !llvm.loop !16

161:                                              ; preds = %112
  %.028.lcssa = phi i64 [ %.028, %112 ]
  %.024.lcssa = phi i8 [ %.024, %112 ]
  %.01.lcssa = phi i32 [ %.01, %112 ]
  %162 = sub nsw i32 7, %.01.lcssa
  %163 = sext i8 %.024.lcssa to i32
  %164 = shl i32 %163, %162
  %165 = trunc i32 %164 to i8
  %166 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %165, ptr %166, align 1
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 1024, i1 false)
  br label %167

167:                                              ; preds = %197, %161
  %.27 = phi i64 [ 0, %161 ], [ %198, %197 ]
  %.0 = phi ptr [ %9, %161 ], [ %170, %197 ]
  %exitcond13 = icmp ne i64 %.27, 256
  br i1 %exitcond13, label %168, label %199

168:                                              ; preds = %167
  %169 = trunc i64 %.27 to i8
  store i8 %169, ptr %.0, align 1
  %170 = getelementptr inbounds nuw i8, ptr %.0, i32 1
  %171 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %172 = load i32, ptr %171, align 4
  %173 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %174 = load i8, ptr %173, align 1
  %175 = zext i8 %174 to i32
  %176 = or i32 %172, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %197

178:                                              ; preds = %168
  %179 = sub nsw i32 %175, 1
  %180 = shl i32 1, %179
  %181 = sext i32 %180 to i64
  %182 = zext i8 %174 to i64
  br label %183

183:                                              ; preds = %192, %178
  %.019 = phi i32 [ 0, %178 ], [ %.120, %192 ]
  %.116 = phi i64 [ %181, %178 ], [ %193, %192 ]
  %.5 = phi i64 [ 0, %178 ], [ %194, %192 ]
  %exitcond12 = icmp ne i64 %.5, %182
  br i1 %exitcond12, label %184, label %195

184:                                              ; preds = %183
  %185 = mul i32 %.019, 2
  %186 = add i32 %185, 1
  %187 = zext i32 %172 to i64
  %188 = and i64 %187, %.116
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %184
  %191 = add i32 %186, 1
  br label %192

192:                                              ; preds = %190, %184
  %.120 = phi i32 [ %191, %190 ], [ %186, %184 ]
  %193 = lshr i64 %.116, 1
  %194 = add nuw nsw i64 %.5, 1
  br label %183, !llvm.loop !17

195:                                              ; preds = %183
  %.019.lcssa = phi i32 [ %.019, %183 ]
  %196 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.27
  store i32 %.019.lcssa, ptr %196, align 4
  br label %197

197:                                              ; preds = %195, %168
  %198 = add nuw nsw i64 %.27, 1
  br label %167, !llvm.loop !18

199:                                              ; preds = %167
  br label %200

200:                                              ; preds = %224, %199
  %.6 = phi i64 [ 1, %199 ], [ %227, %224 ]
  %exitcond14 = icmp ne i64 %.6, 256
  br i1 %exitcond14, label %201, label %228

201:                                              ; preds = %200
  %202 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %203 = load i32, ptr %202, align 4
  %204 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %205 = load i8, ptr %204, align 1
  br label %206

206:                                              ; preds = %215, %201
  %.38 = phi i64 [ %.6, %201 ], [ %223, %215 ]
  %207 = icmp ne i64 %.38, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %206
  %209 = sub nuw i64 %.38, 1
  %210 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %209
  %211 = load i32, ptr %210, align 4
  %212 = icmp ugt i32 %211, %203
  br label %213

213:                                              ; preds = %208, %206
  %214 = phi i1 [ false, %206 ], [ %212, %208 ]
  br i1 %214, label %215, label %224

215:                                              ; preds = %213
  %216 = sub i64 %.38, 1
  %217 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %216
  %218 = load i32, ptr %217, align 4
  %219 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %218, ptr %219, align 4
  %220 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %216
  %221 = load i8, ptr %220, align 1
  %222 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %221, ptr %222, align 1
  %223 = add i64 %.38, -1
  br label %206, !llvm.loop !19

224:                                              ; preds = %213
  %.38.lcssa = phi i64 [ %.38, %213 ]
  %225 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %203, ptr %225, align 4
  %226 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %205, ptr %226, align 1
  %227 = add nuw nsw i64 %.6, 1
  br label %200, !llvm.loop !20

228:                                              ; preds = %200
  br label %229

229:                                              ; preds = %233, %228
  %.49 = phi i64 [ 0, %228 ], [ %234, %233 ]
  %230 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %231 = load i32, ptr %230, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %229
  %234 = add i64 %.49, 1
  br label %229, !llvm.loop !21

235:                                              ; preds = %229
  %.49.lcssa = phi i64 [ %.49, %229 ]
  br label %236

236:                                              ; preds = %267, %235
  %.235 = phi ptr [ %0, %235 ], [ %.336, %267 ]
  %.031 = phi ptr [ %11, %235 ], [ %.132, %267 ]
  %.221 = phi i32 [ 0, %235 ], [ %.423, %267 ]
  %.217 = phi i64 [ 128, %235 ], [ %.318, %267 ]
  %.313 = phi i64 [ 0, %235 ], [ %.414, %267 ]
  %.7 = phi i64 [ %.49.lcssa, %235 ], [ %.9, %267 ]
  %237 = icmp ult i64 %.313, %1
  br i1 %237, label %238, label %268

238:                                              ; preds = %236
  %239 = mul i32 %.221, 2
  %240 = add i32 %239, 1
  %241 = load i8, ptr %.031, align 1
  %242 = zext i8 %241 to i64
  %243 = and i64 %242, %.217
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %238
  %246 = add i32 %240, 1
  br label %247

247:                                              ; preds = %245, %238
  %.322 = phi i32 [ %246, %245 ], [ %240, %238 ]
  br label %248

248:                                              ; preds = %252, %247
  %.8 = phi i64 [ %.7, %247 ], [ %253, %252 ]
  %249 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %250 = load i32, ptr %249, align 4
  %251 = icmp ult i32 %250, %.322
  br i1 %251, label %252, label %254

252:                                              ; preds = %248
  %253 = add i64 %.8, 1
  br label %248, !llvm.loop !22

254:                                              ; preds = %248
  %.8.lcssa = phi i64 [ %.8, %248 ]
  %.lcssa = phi i32 [ %250, %248 ]
  %255 = icmp eq i32 %.322, %.lcssa
  br i1 %255, label %256, label %261

256:                                              ; preds = %254
  %257 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %258 = load i8, ptr %257, align 1
  store i8 %258, ptr %.235, align 1
  %259 = getelementptr inbounds nuw i8, ptr %.235, i32 1
  %260 = add i64 %.313, 1
  br label %261

261:                                              ; preds = %256, %254
  %.336 = phi ptr [ %259, %256 ], [ %.235, %254 ]
  %.423 = phi i32 [ 0, %256 ], [ %.322, %254 ]
  %.414 = phi i64 [ %260, %256 ], [ %.313, %254 ]
  %.9 = phi i64 [ %.49.lcssa, %256 ], [ %.8.lcssa, %254 ]
  %262 = icmp ugt i64 %.217, 1
  br i1 %262, label %263, label %265

263:                                              ; preds = %261
  %264 = lshr i64 %.217, 1
  br label %267

265:                                              ; preds = %261
  %266 = getelementptr inbounds nuw i8, ptr %.031, i32 1
  br label %267

267:                                              ; preds = %265, %263
  %.132 = phi ptr [ %.031, %263 ], [ %266, %265 ]
  %.318 = phi i64 [ %264, %263 ], [ 128, %265 ]
  br label %236, !llvm.loop !23

268:                                              ; preds = %236
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
  %10 = sext i32 %9 to i64
  br label %11

11:                                               ; preds = %44, %4
  %.01 = phi i32 [ %3, %4 ], [ %.0, %44 ]
  %12 = sdiv i32 %2, 2
  %13 = icmp sle i32 %.01, %12
  br i1 %13, label %14, label %._crit_edge

._crit_edge:                                      ; preds = %11
  %.01.lcssa = phi i32 [ %.01, %11 ]
  %.pre = sext i32 %9 to i64
  br label %48

14:                                               ; preds = %11
  %15 = add nsw i32 %.01, %.01
  %16 = icmp slt i32 %15, %2
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = sub nsw i32 %15, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, ptr %1, i64 %19
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds nuw i64, ptr %0, i64 %21
  %23 = load i64, ptr %22, align 8
  %24 = sext i32 %15 to i64
  %25 = getelementptr inbounds i64, ptr %1, i64 %24
  %26 = load i64, ptr %25, align 8
  %27 = getelementptr inbounds nuw i64, ptr %0, i64 %26
  %28 = load i64, ptr %27, align 8
  %29 = icmp ugt i64 %23, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %17
  %31 = add nsw i32 %15, 1
  br label %32

32:                                               ; preds = %30, %17, %14
  %.0 = phi i32 [ %31, %30 ], [ %15, %17 ], [ %15, %14 ]
  %33 = sext i32 %9 to i64
  %34 = getelementptr inbounds i64, ptr %0, i64 %33
  %35 = load i64, ptr %34, align 8
  %36 = sub nsw i32 %.0, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, ptr %1, i64 %37
  %39 = load i64, ptr %38, align 8
  %40 = getelementptr inbounds nuw i64, ptr %0, i64 %39
  %41 = load i64, ptr %40, align 8
  %42 = icmp ult i64 %35, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  %.01.lcssa1 = phi i32 [ %.01, %32 ]
  br label %48

44:                                               ; preds = %32
  %45 = sub nsw i32 %.01, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, ptr %1, i64 %46
  store i64 %39, ptr %47, align 8
  br label %11, !llvm.loop !24

48:                                               ; preds = %._crit_edge, %43
  %.012 = phi i32 [ %.01.lcssa, %._crit_edge ], [ %.01.lcssa1, %43 ]
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %10, %43 ]
  %49 = sub nsw i32 %.012, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, ptr %1, i64 %50
  store i64 %.pre-phi, ptr %51, align 8
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

5:                                                ; preds = %12, %4
  %.01 = phi i32 [ 1, %4 ], [ %13, %12 ]
  %exitcond = icmp ne i32 %.01, %0
  br i1 %exitcond, label %6, label %.loopexit

6:                                                ; preds = %5
  %7 = getelementptr inbounds ptr, ptr %1, i64 1
  %8 = load ptr, ptr %7, align 8
  %9 = call i32 @strcmp(ptr noundef %8, ptr noundef @.str.4) #7
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  br label %14

12:                                               ; preds = %6
  %13 = add nuw i32 %.01, 1
  br label %5, !llvm.loop !25

.loopexit:                                        ; preds = %5
  br label %14

14:                                               ; preds = %.loopexit, %11
  %.1 = phi i8 [ 1, %11 ], [ 0, %.loopexit ]
  br label %15

15:                                               ; preds = %14, %2
  %.0 = phi i8 [ %.1, %14 ], [ 0, %2 ]
  %16 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %17

17:                                               ; preds = %18, %15
  %.12 = phi i32 [ 0, %15 ], [ %19, %18 ]
  %exitcond1 = icmp ne i32 %.12, 30
  br i1 %exitcond1, label %18, label %20

18:                                               ; preds = %17
  call void @compdecomp(ptr noundef %16, i64 noundef 10000000)
  %19 = add nuw nsw i32 %.12, 1
  br label %17, !llvm.loop !26

20:                                               ; preds = %17
  call void @free(ptr noundef %16)
  %21 = icmp ne i8 %.0, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = call ptr @__acrt_iob_func(i32 noundef 1)
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.5, double noundef 0.000000e+00) #7
  br label %28

25:                                               ; preds = %20
  %26 = call ptr @__acrt_iob_func(i32 noundef 1)
  %27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str.6, double noundef 0.000000e+00) #7
  br label %28

28:                                               ; preds = %25, %22
  %29 = call ptr @__acrt_iob_func(i32 noundef 1)
  %30 = call i32 @fflush(ptr noundef %29)
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
  %13 = phi i32 [ %11, %10 ], [ %8, %0 ]
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
