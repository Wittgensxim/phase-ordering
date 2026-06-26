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

18:                                               ; preds = %26, %2
  %.033 = phi ptr [ %0, %2 ], [ %25, %26 ]
  %.02 = phi i64 [ 0, %2 ], [ %27, %26 ]
  %exitcond = icmp ne i64 %.02, %1
  br i1 %exitcond, label %19, label %28

19:                                               ; preds = %18
  %20 = load i8, ptr %.033, align 1
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %21
  %23 = load i64, ptr %22, align 8
  %24 = add i64 %23, 1
  store i64 %24, ptr %22, align 8
  %25 = getelementptr inbounds nuw i8, ptr %.033, i32 1
  br label %26

26:                                               ; preds = %19
  %27 = add i64 %.02, 1
  br label %18, !llvm.loop !9

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %38, %28
  %.010 = phi i64 [ 0, %28 ], [ %.111, %38 ]
  %.13 = phi i64 [ 0, %28 ], [ %39, %38 ]
  %exitcond7 = icmp ne i64 %.13, 256
  br i1 %exitcond7, label %30, label %40

30:                                               ; preds = %29
  %31 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.13
  %32 = load i64, ptr %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.010
  store i64 %.13, ptr %35, align 8
  %36 = add i64 %.010, 1
  br label %37

37:                                               ; preds = %34, %30
  %.111 = phi i64 [ %36, %34 ], [ %.010, %30 ]
  br label %38

38:                                               ; preds = %37
  %39 = add nuw nsw i64 %.13, 1
  br label %29, !llvm.loop !10

40:                                               ; preds = %29
  %.010.lcssa = phi i64 [ %.010, %29 ]
  br label %41

41:                                               ; preds = %48, %40
  %.24 = phi i64 [ %.010.lcssa, %40 ], [ %49, %48 ]
  %42 = icmp ugt i64 %.24, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %41
  %44 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %45 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %46 = trunc i64 %.010.lcssa to i32
  %47 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef %44, ptr noundef %45, i32 noundef %46, i32 noundef %47)
  br label %48

48:                                               ; preds = %43
  %49 = add i64 %.24, -1
  br label %41, !llvm.loop !11

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %53, %50
  %.212 = phi i64 [ %.010.lcssa, %50 ], [ %54, %53 ]
  %52 = icmp ugt i64 %.212, 1
  br i1 %52, label %53, label %85

53:                                               ; preds = %51
  %54 = add i64 %.212, -1
  %55 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %56 = load i64, ptr %55, align 16
  %57 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %54
  %58 = load i64, ptr %57, align 8
  %59 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %58, ptr %59, align 16
  %60 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %61 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %62 = trunc i64 %54 to i32
  call void @heap_adjust(ptr noundef %60, ptr noundef %61, i32 noundef %62, i32 noundef 1)
  %63 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %64 = load i64, ptr %63, align 16
  %65 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %64
  %66 = load i64, ptr %65, align 8
  %67 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %56
  %68 = load i64, ptr %67, align 8
  %69 = add i64 %68, %66
  %70 = add i64 %54, 256
  %71 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %70
  store i64 %69, ptr %71, align 8
  %72 = add i64 %54, 256
  %73 = trunc i64 %72 to i32
  %74 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %56
  store i32 %73, ptr %74, align 4
  %75 = sub i64 -256, %54
  %76 = trunc i64 %75 to i32
  %77 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %78 = load i64, ptr %77, align 16
  %79 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %78
  store i32 %76, ptr %79, align 4
  %80 = add i64 %54, 256
  %81 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %80, ptr %81, align 16
  %82 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %83 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %84 = trunc i64 %54 to i32
  call void @heap_adjust(ptr noundef %82, ptr noundef %83, i32 noundef %84, i32 noundef 1)
  br label %51, !llvm.loop !12

85:                                               ; preds = %51
  %.212.lcssa = phi i64 [ %.212, %51 ]
  %86 = add i64 %.212.lcssa, 256
  %87 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %86
  store i32 0, ptr %87, align 4
  br label %88

88:                                               ; preds = %124, %85
  %.045 = phi i64 [ 0, %85 ], [ %.146, %124 ]
  %.042 = phi i64 [ 0, %85 ], [ %125, %124 ]
  %.039 = phi i64 [ 0, %85 ], [ %.140, %124 ]
  %exitcond8 = icmp ne i64 %.042, 256
  br i1 %exitcond8, label %89, label %126

89:                                               ; preds = %88
  %90 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.042
  %91 = load i64, ptr %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 0, ptr %94, align 4
  %95 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 0, ptr %95, align 1
  br label %123

96:                                               ; preds = %89
  %97 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.042
  %98 = load i32, ptr %97, align 4
  br label %99

99:                                               ; preds = %106, %96
  %.043 = phi i64 [ 0, %96 ], [ %.144, %106 ]
  %.037 = phi i32 [ %98, %96 ], [ %109, %106 ]
  %.05 = phi i64 [ 1, %96 ], [ %110, %106 ]
  %.3 = phi i64 [ 0, %96 ], [ %111, %106 ]
  %100 = icmp ne i32 %.037, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %99
  %102 = icmp slt i32 %.037, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %101
  %104 = add i64 %.05, %.043
  %105 = sub nsw i32 0, %.037
  br label %106

106:                                              ; preds = %103, %101
  %.144 = phi i64 [ %104, %103 ], [ %.043, %101 ]
  %.138 = phi i32 [ %105, %103 ], [ %.037, %101 ]
  %107 = sext i32 %.138 to i64
  %108 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %107
  %109 = load i32, ptr %108, align 4
  %110 = shl i64 %.05, 1
  %111 = add i64 %.3, 1
  br label %99, !llvm.loop !13

112:                                              ; preds = %99
  %.043.lcssa = phi i64 [ %.043, %99 ]
  %.3.lcssa = phi i64 [ %.3, %99 ]
  %113 = trunc i64 %.043.lcssa to i32
  %114 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 %113, ptr %114, align 4
  %115 = trunc i64 %.3.lcssa to i8
  %116 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 %115, ptr %116, align 1
  %117 = icmp ugt i64 %.043.lcssa, %.045
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %119

119:                                              ; preds = %118, %112
  %.247 = phi i64 [ %.043.lcssa, %118 ], [ %.045, %112 ]
  %120 = icmp ugt i64 %.3.lcssa, %.039
  br i1 %120, label %121, label %122

121:                                              ; preds = %119
  br label %122

122:                                              ; preds = %121, %119
  %.241 = phi i64 [ %.3.lcssa, %121 ], [ %.039, %119 ]
  br label %123

123:                                              ; preds = %122, %93
  %.146 = phi i64 [ %.247, %122 ], [ %.045, %93 ]
  %.140 = phi i64 [ %.241, %122 ], [ %.039, %93 ]
  br label %124

124:                                              ; preds = %123
  %125 = add nuw nsw i64 %.042, 1
  br label %88, !llvm.loop !14

126:                                              ; preds = %88
  %.045.lcssa = phi i64 [ %.045, %88 ]
  %.039.lcssa = phi i64 [ %.039, %88 ]
  %127 = icmp ugt i64 %.039.lcssa, 32
  br i1 %127, label %128, label %131

128:                                              ; preds = %126
  %129 = call ptr @__acrt_iob_func(i32 noundef 2)
  %130 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %129, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

131:                                              ; preds = %126
  %132 = icmp eq i64 %.045.lcssa, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %131
  %134 = call ptr @__acrt_iob_func(i32 noundef 2)
  %135 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %134, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

136:                                              ; preds = %131
  br label %137

137:                                              ; preds = %187, %136
  %.134 = phi ptr [ %0, %136 ], [ %186, %187 ]
  %.028 = phi i64 [ 0, %136 ], [ %.129.lcssa, %187 ]
  %.024 = phi i8 [ 0, %136 ], [ %.125.lcssa, %187 ]
  %.16 = phi i64 [ 0, %136 ], [ %188, %187 ]
  %.01 = phi i32 [ -1, %136 ], [ %.1.lcssa, %187 ]
  %exitcond9 = icmp ne i64 %.16, %1
  br i1 %exitcond9, label %138, label %189

138:                                              ; preds = %137
  %139 = load i8, ptr %.134, align 1
  %140 = zext i8 %139 to i64
  %141 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %140
  %142 = load i8, ptr %141, align 1
  %143 = zext i8 %142 to i32
  %144 = sub nsw i32 %143, 1
  %145 = shl i32 1, %144
  %146 = sext i32 %145 to i64
  br label %147

147:                                              ; preds = %183, %138
  %.129 = phi i64 [ %.028, %138 ], [ %.230, %183 ]
  %.125 = phi i8 [ %.024, %138 ], [ %.327, %183 ]
  %.015 = phi i64 [ %146, %138 ], [ %182, %183 ]
  %.4 = phi i64 [ 0, %138 ], [ %184, %183 ]
  %.1 = phi i32 [ %.01, %138 ], [ %.2, %183 ]
  %148 = load i8, ptr %.134, align 1
  %149 = zext i8 %148 to i64
  %150 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %149
  %151 = load i8, ptr %150, align 1
  %152 = zext i8 %151 to i64
  %153 = icmp samesign ult i64 %.4, %152
  br i1 %153, label %154, label %185

154:                                              ; preds = %147
  %155 = icmp eq i32 %.1, 7
  br i1 %155, label %156, label %164

156:                                              ; preds = %154
  %157 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %157, align 1
  %158 = add i64 %.129, 1
  %159 = icmp eq i64 %158, %1
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = call ptr @__acrt_iob_func(i32 noundef 2)
  %162 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %161, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

163:                                              ; preds = %156
  br label %169

164:                                              ; preds = %154
  %165 = add nsw i32 %.1, 1
  %166 = sext i8 %.125 to i32
  %167 = shl i32 %166, 1
  %168 = trunc i32 %167 to i8
  br label %169

169:                                              ; preds = %164, %163
  %.230 = phi i64 [ %158, %163 ], [ %.129, %164 ]
  %.226 = phi i8 [ 0, %163 ], [ %168, %164 ]
  %.2 = phi i32 [ 0, %163 ], [ %165, %164 ]
  %170 = load i8, ptr %.134, align 1
  %171 = zext i8 %170 to i64
  %172 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %171
  %173 = load i32, ptr %172, align 4
  %174 = zext i32 %173 to i64
  %175 = and i64 %174, %.015
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %169
  %178 = sext i8 %.226 to i32
  %179 = or i32 %178, 1
  %180 = trunc i32 %179 to i8
  br label %181

181:                                              ; preds = %177, %169
  %.327 = phi i8 [ %180, %177 ], [ %.226, %169 ]
  %182 = lshr i64 %.015, 1
  br label %183

183:                                              ; preds = %181
  %184 = add nuw nsw i64 %.4, 1
  br label %147, !llvm.loop !15

185:                                              ; preds = %147
  %.129.lcssa = phi i64 [ %.129, %147 ]
  %.125.lcssa = phi i8 [ %.125, %147 ]
  %.1.lcssa = phi i32 [ %.1, %147 ]
  %186 = getelementptr inbounds nuw i8, ptr %.134, i32 1
  br label %187

187:                                              ; preds = %185
  %188 = add i64 %.16, 1
  br label %137, !llvm.loop !16

189:                                              ; preds = %137
  %.028.lcssa = phi i64 [ %.028, %137 ]
  %.024.lcssa = phi i8 [ %.024, %137 ]
  %.01.lcssa = phi i32 [ %.01, %137 ]
  %190 = sub nsw i32 7, %.01.lcssa
  %191 = sext i8 %.024.lcssa to i32
  %192 = shl i32 %191, %190
  %193 = trunc i32 %192 to i8
  %194 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %193, ptr %194, align 1
  %195 = getelementptr inbounds [256 x i32], ptr %8, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %195, i8 0, i64 1024, i1 false)
  %196 = getelementptr inbounds [256 x i8], ptr %9, i64 0, i64 0
  br label %197

197:                                              ; preds = %237, %189
  %.27 = phi i64 [ 0, %189 ], [ %238, %237 ]
  %.0 = phi ptr [ %196, %189 ], [ %200, %237 ]
  %exitcond10 = icmp ne i64 %.27, 256
  br i1 %exitcond10, label %198, label %239

198:                                              ; preds = %197
  %199 = trunc i64 %.27 to i8
  store i8 %199, ptr %.0, align 1
  %200 = getelementptr inbounds nuw i8, ptr %.0, i32 1
  %201 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %202 = load i32, ptr %201, align 4
  %203 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %204 = load i8, ptr %203, align 1
  %205 = zext i8 %204 to i32
  %206 = or i32 %205, %202
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %236

208:                                              ; preds = %198
  %209 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %210 = load i8, ptr %209, align 1
  %211 = zext i8 %210 to i32
  %212 = sub nsw i32 %211, 1
  %213 = shl i32 1, %212
  %214 = sext i32 %213 to i64
  br label %215

215:                                              ; preds = %232, %208
  %.019 = phi i32 [ 0, %208 ], [ %.120, %232 ]
  %.116 = phi i64 [ %214, %208 ], [ %231, %232 ]
  %.5 = phi i64 [ 0, %208 ], [ %233, %232 ]
  %216 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %217 = load i8, ptr %216, align 1
  %218 = zext i8 %217 to i64
  %219 = icmp samesign ult i64 %.5, %218
  br i1 %219, label %220, label %234

220:                                              ; preds = %215
  %221 = mul i32 %.019, 2
  %222 = add i32 %221, 1
  %223 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %224 = load i32, ptr %223, align 4
  %225 = zext i32 %224 to i64
  %226 = and i64 %225, %.116
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %220
  %229 = add i32 %222, 1
  br label %230

230:                                              ; preds = %228, %220
  %.120 = phi i32 [ %229, %228 ], [ %222, %220 ]
  %231 = lshr i64 %.116, 1
  br label %232

232:                                              ; preds = %230
  %233 = add nuw nsw i64 %.5, 1
  br label %215, !llvm.loop !17

234:                                              ; preds = %215
  %.019.lcssa = phi i32 [ %.019, %215 ]
  %235 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.27
  store i32 %.019.lcssa, ptr %235, align 4
  br label %236

236:                                              ; preds = %234, %198
  br label %237

237:                                              ; preds = %236
  %238 = add nuw nsw i64 %.27, 1
  br label %197, !llvm.loop !18

239:                                              ; preds = %197
  br label %240

240:                                              ; preds = %268, %239
  %.6 = phi i64 [ 1, %239 ], [ %269, %268 ]
  %exitcond11 = icmp ne i64 %.6, 256
  br i1 %exitcond11, label %241, label %270

241:                                              ; preds = %240
  %242 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %243 = load i32, ptr %242, align 4
  %244 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %245 = load i8, ptr %244, align 1
  br label %246

246:                                              ; preds = %255, %241
  %.38 = phi i64 [ %.6, %241 ], [ %264, %255 ]
  %247 = icmp ne i64 %.38, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %246
  %249 = sub nuw i64 %.38, 1
  %250 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %249
  %251 = load i32, ptr %250, align 4
  %252 = icmp ugt i32 %251, %243
  br label %253

253:                                              ; preds = %248, %246
  %254 = phi i1 [ false, %246 ], [ %252, %248 ]
  br i1 %254, label %255, label %265

255:                                              ; preds = %253
  %256 = sub i64 %.38, 1
  %257 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %256
  %258 = load i32, ptr %257, align 4
  %259 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %258, ptr %259, align 4
  %260 = sub i64 %.38, 1
  %261 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %260
  %262 = load i8, ptr %261, align 1
  %263 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %262, ptr %263, align 1
  %264 = add i64 %.38, -1
  br label %246, !llvm.loop !19

265:                                              ; preds = %253
  %.38.lcssa = phi i64 [ %.38, %253 ]
  %266 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %243, ptr %266, align 4
  %267 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %245, ptr %267, align 1
  br label %268

268:                                              ; preds = %265
  %269 = add nuw nsw i64 %.6, 1
  br label %240, !llvm.loop !20

270:                                              ; preds = %240
  br label %271

271:                                              ; preds = %276, %270
  %.49 = phi i64 [ 0, %270 ], [ %277, %276 ]
  %272 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %273 = load i32, ptr %272, align 4
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %271
  br label %276

276:                                              ; preds = %275
  %277 = add i64 %.49, 1
  br label %271, !llvm.loop !21

278:                                              ; preds = %271
  %.49.lcssa = phi i64 [ %.49, %271 ]
  br label %279

279:                                              ; preds = %312, %278
  %.235 = phi ptr [ %0, %278 ], [ %.336, %312 ]
  %.031 = phi ptr [ %11, %278 ], [ %.132, %312 ]
  %.221 = phi i32 [ 0, %278 ], [ %.423, %312 ]
  %.217 = phi i64 [ 128, %278 ], [ %.318, %312 ]
  %.313 = phi i64 [ 0, %278 ], [ %.414, %312 ]
  %.7 = phi i64 [ %.49.lcssa, %278 ], [ %.9, %312 ]
  %280 = icmp ult i64 %.313, %1
  br i1 %280, label %281, label %313

281:                                              ; preds = %279
  %282 = mul i32 %.221, 2
  %283 = add i32 %282, 1
  %284 = load i8, ptr %.031, align 1
  %285 = zext i8 %284 to i64
  %286 = and i64 %285, %.217
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %281
  %289 = add i32 %283, 1
  br label %290

290:                                              ; preds = %288, %281
  %.322 = phi i32 [ %289, %288 ], [ %283, %281 ]
  br label %291

291:                                              ; preds = %295, %290
  %.8 = phi i64 [ %.7, %290 ], [ %296, %295 ]
  %292 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %293 = load i32, ptr %292, align 4
  %294 = icmp ult i32 %293, %.322
  br i1 %294, label %295, label %297

295:                                              ; preds = %291
  %296 = add i64 %.8, 1
  br label %291, !llvm.loop !22

297:                                              ; preds = %291
  %.8.lcssa = phi i64 [ %.8, %291 ]
  %298 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8.lcssa
  %299 = load i32, ptr %298, align 4
  %300 = icmp eq i32 %.322, %299
  br i1 %300, label %301, label %306

301:                                              ; preds = %297
  %302 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %303 = load i8, ptr %302, align 1
  store i8 %303, ptr %.235, align 1
  %304 = getelementptr inbounds nuw i8, ptr %.235, i32 1
  %305 = add i64 %.313, 1
  br label %306

306:                                              ; preds = %301, %297
  %.336 = phi ptr [ %304, %301 ], [ %.235, %297 ]
  %.423 = phi i32 [ 0, %301 ], [ %.322, %297 ]
  %.414 = phi i64 [ %305, %301 ], [ %.313, %297 ]
  %.9 = phi i64 [ %.49.lcssa, %301 ], [ %.8.lcssa, %297 ]
  %307 = icmp ugt i64 %.217, 1
  br i1 %307, label %308, label %310

308:                                              ; preds = %306
  %309 = lshr i64 %.217, 1
  br label %312

310:                                              ; preds = %306
  %311 = getelementptr inbounds nuw i8, ptr %.031, i32 1
  br label %312

312:                                              ; preds = %310, %308
  %.132 = phi ptr [ %.031, %308 ], [ %311, %310 ]
  %.318 = phi i64 [ %309, %308 ], [ 128, %310 ]
  br label %279, !llvm.loop !23

313:                                              ; preds = %279
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
  br i1 %12, label %13, label %.loopexit

13:                                               ; preds = %10
  %factor = mul i32 %.01, 2
  %14 = icmp slt i32 %factor, %2
  br i1 %14, label %15, label %30

15:                                               ; preds = %13
  %16 = sub nsw i32 %factor, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, ptr %1, i64 %17
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds nuw i64, ptr %0, i64 %19
  %21 = load i64, ptr %20, align 8
  %22 = sext i32 %factor to i64
  %23 = getelementptr inbounds i64, ptr %1, i64 %22
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds nuw i64, ptr %0, i64 %24
  %26 = load i64, ptr %25, align 8
  %27 = icmp ugt i64 %21, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = add nsw i32 %factor, 1
  br label %30

30:                                               ; preds = %28, %15, %13
  %.0 = phi i32 [ %29, %28 ], [ %factor, %15 ], [ %factor, %13 ]
  %31 = sext i32 %9 to i64
  %32 = getelementptr inbounds i64, ptr %0, i64 %31
  %33 = load i64, ptr %32, align 8
  %34 = sub nsw i32 %.0, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, ptr %1, i64 %35
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds nuw i64, ptr %0, i64 %37
  %39 = load i64, ptr %38, align 8
  %40 = icmp ult i64 %33, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  %.01.lcssa1 = phi i32 [ %.01, %30 ]
  br label %50

42:                                               ; preds = %30
  %43 = sub nsw i32 %.0, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, ptr %1, i64 %44
  %46 = load i64, ptr %45, align 8
  %47 = sub nsw i32 %.01, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, ptr %1, i64 %48
  store i64 %46, ptr %49, align 8
  br label %10, !llvm.loop !24

.loopexit:                                        ; preds = %10
  %.01.lcssa = phi i32 [ %.01, %10 ]
  br label %50

50:                                               ; preds = %.loopexit, %41
  %.012 = phi i32 [ %.01.lcssa, %.loopexit ], [ %.01.lcssa1, %41 ]
  %51 = sext i32 %9 to i64
  %52 = sub nsw i32 %.012, 1
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
