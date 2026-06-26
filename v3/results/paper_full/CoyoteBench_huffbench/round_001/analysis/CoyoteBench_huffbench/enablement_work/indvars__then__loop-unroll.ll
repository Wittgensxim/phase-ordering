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

19:                                               ; preds = %27, %2
  %.033 = phi ptr [ %0, %2 ], [ %26, %27 ]
  %.02 = phi i64 [ 0, %2 ], [ %28, %27 ]
  %exitcond = icmp ne i64 %.02, %1
  br i1 %exitcond, label %20, label %29

20:                                               ; preds = %19
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
  br label %19, !llvm.loop !9

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %49, %29
  %.010 = phi i64 [ 0, %29 ], [ %.111.1, %49 ]
  %.13 = phi i64 [ 0, %29 ], [ %50, %49 ]
  %exitcond7 = icmp ne i64 %.13, 256
  br i1 %exitcond7, label %31, label %51

31:                                               ; preds = %30
  %32 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.13
  %33 = load i64, ptr %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.010
  store i64 %.13, ptr %36, align 8
  %37 = add i64 %.010, 1
  br label %38

38:                                               ; preds = %35, %31
  %.111 = phi i64 [ %37, %35 ], [ %.010, %31 ]
  br label %39

39:                                               ; preds = %38
  %40 = add nuw nsw i64 %.13, 1
  br label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %40
  %43 = load i64, ptr %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.111
  store i64 %40, ptr %46, align 8
  %47 = add i64 %.111, 1
  br label %48

48:                                               ; preds = %45, %41
  %.111.1 = phi i64 [ %47, %45 ], [ %.111, %41 ]
  br label %49

49:                                               ; preds = %48
  %50 = add nuw nsw i64 %.13, 2
  br label %30, !llvm.loop !10

51:                                               ; preds = %30
  %.010.lcssa = phi i64 [ %.010, %30 ]
  br label %52

52:                                               ; preds = %59, %51
  %.24 = phi i64 [ %.010.lcssa, %51 ], [ %60, %59 ]
  %53 = icmp ugt i64 %.24, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %52
  %55 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %56 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %57 = trunc i64 %.010.lcssa to i32
  %58 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef %55, ptr noundef %56, i32 noundef %57, i32 noundef %58)
  br label %59

59:                                               ; preds = %54
  %60 = add i64 %.24, -1
  br label %52, !llvm.loop !11

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %64, %61
  %.212 = phi i64 [ %.010.lcssa, %61 ], [ %65, %64 ]
  %63 = icmp ugt i64 %.212, 1
  br i1 %63, label %64, label %96

64:                                               ; preds = %62
  %65 = add i64 %.212, -1
  %66 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %67 = load i64, ptr %66, align 16
  %68 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %65
  %69 = load i64, ptr %68, align 8
  %70 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %69, ptr %70, align 16
  %71 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %72 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %73 = trunc i64 %65 to i32
  call void @heap_adjust(ptr noundef %71, ptr noundef %72, i32 noundef %73, i32 noundef 1)
  %74 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %75 = load i64, ptr %74, align 16
  %76 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %75
  %77 = load i64, ptr %76, align 8
  %78 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %67
  %79 = load i64, ptr %78, align 8
  %80 = add i64 %77, %79
  %81 = add i64 256, %65
  %82 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %81
  store i64 %80, ptr %82, align 8
  %83 = add i64 256, %65
  %84 = trunc i64 %83 to i32
  %85 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %67
  store i32 %84, ptr %85, align 4
  %86 = sub i64 -256, %65
  %87 = trunc i64 %86 to i32
  %88 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %89 = load i64, ptr %88, align 16
  %90 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %89
  store i32 %87, ptr %90, align 4
  %91 = add i64 256, %65
  %92 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %91, ptr %92, align 16
  %93 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %94 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %95 = trunc i64 %65 to i32
  call void @heap_adjust(ptr noundef %93, ptr noundef %94, i32 noundef %95, i32 noundef 1)
  br label %62, !llvm.loop !12

96:                                               ; preds = %62
  %.212.lcssa = phi i64 [ %.212, %62 ]
  %97 = add i64 256, %.212.lcssa
  %98 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %97
  store i32 0, ptr %98, align 4
  br label %99

99:                                               ; preds = %135, %96
  %.045 = phi i64 [ 0, %96 ], [ %.146, %135 ]
  %.042 = phi i64 [ 0, %96 ], [ %136, %135 ]
  %.039 = phi i64 [ 0, %96 ], [ %.140, %135 ]
  %exitcond8 = icmp ne i64 %.042, 256
  br i1 %exitcond8, label %100, label %137

100:                                              ; preds = %99
  %101 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.042
  %102 = load i64, ptr %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 0, ptr %105, align 4
  %106 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 0, ptr %106, align 1
  br label %134

107:                                              ; preds = %100
  %108 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.042
  %109 = load i32, ptr %108, align 4
  br label %110

110:                                              ; preds = %117, %107
  %.043 = phi i64 [ 0, %107 ], [ %.144, %117 ]
  %.037 = phi i32 [ %109, %107 ], [ %120, %117 ]
  %.05 = phi i64 [ 1, %107 ], [ %121, %117 ]
  %.3 = phi i64 [ 0, %107 ], [ %122, %117 ]
  %111 = icmp ne i32 %.037, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %110
  %113 = icmp slt i32 %.037, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %112
  %115 = add i64 %.043, %.05
  %116 = sub nsw i32 0, %.037
  br label %117

117:                                              ; preds = %114, %112
  %.144 = phi i64 [ %115, %114 ], [ %.043, %112 ]
  %.138 = phi i32 [ %116, %114 ], [ %.037, %112 ]
  %118 = sext i32 %.138 to i64
  %119 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %118
  %120 = load i32, ptr %119, align 4
  %121 = shl i64 %.05, 1
  %122 = add i64 %.3, 1
  br label %110, !llvm.loop !13

123:                                              ; preds = %110
  %.043.lcssa = phi i64 [ %.043, %110 ]
  %.3.lcssa = phi i64 [ %.3, %110 ]
  %124 = trunc i64 %.043.lcssa to i32
  %125 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 %124, ptr %125, align 4
  %126 = trunc i64 %.3.lcssa to i8
  %127 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 %126, ptr %127, align 1
  %128 = icmp ugt i64 %.043.lcssa, %.045
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  br label %130

130:                                              ; preds = %129, %123
  %.247 = phi i64 [ %.043.lcssa, %129 ], [ %.045, %123 ]
  %131 = icmp ugt i64 %.3.lcssa, %.039
  br i1 %131, label %132, label %133

132:                                              ; preds = %130
  br label %133

133:                                              ; preds = %132, %130
  %.241 = phi i64 [ %.3.lcssa, %132 ], [ %.039, %130 ]
  br label %134

134:                                              ; preds = %133, %104
  %.146 = phi i64 [ %.247, %133 ], [ %.045, %104 ]
  %.140 = phi i64 [ %.241, %133 ], [ %.039, %104 ]
  br label %135

135:                                              ; preds = %134
  %136 = add nuw nsw i64 %.042, 1
  br label %99, !llvm.loop !14

137:                                              ; preds = %99
  %.045.lcssa = phi i64 [ %.045, %99 ]
  %.039.lcssa = phi i64 [ %.039, %99 ]
  %138 = icmp ugt i64 %.039.lcssa, 32
  br i1 %138, label %139, label %142

139:                                              ; preds = %137
  %140 = call ptr @__acrt_iob_func(i32 noundef 2)
  %141 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %140, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

142:                                              ; preds = %137
  %143 = icmp eq i64 %.045.lcssa, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %142
  %145 = call ptr @__acrt_iob_func(i32 noundef 2)
  %146 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %145, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

147:                                              ; preds = %142
  br label %148

148:                                              ; preds = %198, %147
  %.134 = phi ptr [ %0, %147 ], [ %197, %198 ]
  %.028 = phi i64 [ 0, %147 ], [ %.129.lcssa, %198 ]
  %.024 = phi i8 [ 0, %147 ], [ %.125.lcssa, %198 ]
  %.16 = phi i64 [ 0, %147 ], [ %199, %198 ]
  %.01 = phi i32 [ -1, %147 ], [ %.1.lcssa, %198 ]
  %exitcond9 = icmp ne i64 %.16, %1
  br i1 %exitcond9, label %149, label %200

149:                                              ; preds = %148
  %150 = load i8, ptr %.134, align 1
  %151 = zext i8 %150 to i64
  %152 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %151
  %153 = load i8, ptr %152, align 1
  %154 = zext i8 %153 to i32
  %155 = sub nsw i32 %154, 1
  %156 = shl i32 1, %155
  %157 = sext i32 %156 to i64
  br label %158

158:                                              ; preds = %194, %149
  %.129 = phi i64 [ %.028, %149 ], [ %.230, %194 ]
  %.125 = phi i8 [ %.024, %149 ], [ %.327, %194 ]
  %.015 = phi i64 [ %157, %149 ], [ %193, %194 ]
  %.4 = phi i64 [ 0, %149 ], [ %195, %194 ]
  %.1 = phi i32 [ %.01, %149 ], [ %.2, %194 ]
  %159 = load i8, ptr %.134, align 1
  %160 = zext i8 %159 to i64
  %161 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %160
  %162 = load i8, ptr %161, align 1
  %163 = zext i8 %162 to i64
  %164 = icmp samesign ult i64 %.4, %163
  br i1 %164, label %165, label %196

165:                                              ; preds = %158
  %166 = icmp eq i32 %.1, 7
  br i1 %166, label %167, label %175

167:                                              ; preds = %165
  %168 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %168, align 1
  %169 = add i64 %.129, 1
  %170 = icmp eq i64 %169, %1
  br i1 %170, label %171, label %174

171:                                              ; preds = %167
  %172 = call ptr @__acrt_iob_func(i32 noundef 2)
  %173 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %172, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

174:                                              ; preds = %167
  br label %180

175:                                              ; preds = %165
  %176 = add nsw i32 %.1, 1
  %177 = sext i8 %.125 to i32
  %178 = shl i32 %177, 1
  %179 = trunc i32 %178 to i8
  br label %180

180:                                              ; preds = %175, %174
  %.230 = phi i64 [ %169, %174 ], [ %.129, %175 ]
  %.226 = phi i8 [ 0, %174 ], [ %179, %175 ]
  %.2 = phi i32 [ 0, %174 ], [ %176, %175 ]
  %181 = load i8, ptr %.134, align 1
  %182 = zext i8 %181 to i64
  %183 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %182
  %184 = load i32, ptr %183, align 4
  %185 = zext i32 %184 to i64
  %186 = and i64 %185, %.015
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %180
  %189 = sext i8 %.226 to i32
  %190 = or i32 %189, 1
  %191 = trunc i32 %190 to i8
  br label %192

192:                                              ; preds = %188, %180
  %.327 = phi i8 [ %191, %188 ], [ %.226, %180 ]
  %193 = lshr i64 %.015, 1
  br label %194

194:                                              ; preds = %192
  %195 = add nuw nsw i64 %.4, 1
  br label %158, !llvm.loop !15

196:                                              ; preds = %158
  %.129.lcssa = phi i64 [ %.129, %158 ]
  %.125.lcssa = phi i8 [ %.125, %158 ]
  %.1.lcssa = phi i32 [ %.1, %158 ]
  %197 = getelementptr inbounds nuw i8, ptr %.134, i32 1
  br label %198

198:                                              ; preds = %196
  %199 = add i64 %.16, 1
  br label %148, !llvm.loop !16

200:                                              ; preds = %148
  %.028.lcssa = phi i64 [ %.028, %148 ]
  %.024.lcssa = phi i8 [ %.024, %148 ]
  %.01.lcssa = phi i32 [ %.01, %148 ]
  %201 = sub nsw i32 7, %.01.lcssa
  %202 = sext i8 %.024.lcssa to i32
  %203 = shl i32 %202, %201
  %204 = trunc i32 %203 to i8
  %205 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %204, ptr %205, align 1
  %206 = getelementptr inbounds [256 x i32], ptr %8, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %206, i8 0, i64 1024, i1 false)
  %207 = getelementptr inbounds [256 x i8], ptr %9, i64 0, i64 0
  br label %208

208:                                              ; preds = %248, %200
  %.27 = phi i64 [ 0, %200 ], [ %249, %248 ]
  %.0 = phi ptr [ %207, %200 ], [ %211, %248 ]
  %exitcond10 = icmp ne i64 %.27, 256
  br i1 %exitcond10, label %209, label %250

209:                                              ; preds = %208
  %210 = trunc i64 %.27 to i8
  store i8 %210, ptr %.0, align 1
  %211 = getelementptr inbounds nuw i8, ptr %.0, i32 1
  %212 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %213 = load i32, ptr %212, align 4
  %214 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %215 = load i8, ptr %214, align 1
  %216 = zext i8 %215 to i32
  %217 = or i32 %213, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %247

219:                                              ; preds = %209
  %220 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %221 = load i8, ptr %220, align 1
  %222 = zext i8 %221 to i32
  %223 = sub nsw i32 %222, 1
  %224 = shl i32 1, %223
  %225 = sext i32 %224 to i64
  br label %226

226:                                              ; preds = %243, %219
  %.019 = phi i32 [ 0, %219 ], [ %.120, %243 ]
  %.116 = phi i64 [ %225, %219 ], [ %242, %243 ]
  %.5 = phi i64 [ 0, %219 ], [ %244, %243 ]
  %227 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %228 = load i8, ptr %227, align 1
  %229 = zext i8 %228 to i64
  %230 = icmp samesign ult i64 %.5, %229
  br i1 %230, label %231, label %245

231:                                              ; preds = %226
  %232 = mul i32 %.019, 2
  %233 = add i32 %232, 1
  %234 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %235 = load i32, ptr %234, align 4
  %236 = zext i32 %235 to i64
  %237 = and i64 %236, %.116
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %231
  %240 = add i32 %233, 1
  br label %241

241:                                              ; preds = %239, %231
  %.120 = phi i32 [ %240, %239 ], [ %233, %231 ]
  %242 = lshr i64 %.116, 1
  br label %243

243:                                              ; preds = %241
  %244 = add nuw nsw i64 %.5, 1
  br label %226, !llvm.loop !17

245:                                              ; preds = %226
  %.019.lcssa = phi i32 [ %.019, %226 ]
  %246 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.27
  store i32 %.019.lcssa, ptr %246, align 4
  br label %247

247:                                              ; preds = %245, %209
  br label %248

248:                                              ; preds = %247
  %249 = add nuw nsw i64 %.27, 1
  br label %208, !llvm.loop !18

250:                                              ; preds = %208
  br label %251

251:                                              ; preds = %279, %250
  %.6 = phi i64 [ 1, %250 ], [ %280, %279 ]
  %exitcond11 = icmp ne i64 %.6, 256
  br i1 %exitcond11, label %252, label %281

252:                                              ; preds = %251
  %253 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %254 = load i32, ptr %253, align 4
  %255 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %256 = load i8, ptr %255, align 1
  br label %257

257:                                              ; preds = %266, %252
  %.38 = phi i64 [ %.6, %252 ], [ %275, %266 ]
  %258 = icmp ne i64 %.38, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %257
  %260 = sub nuw i64 %.38, 1
  %261 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %260
  %262 = load i32, ptr %261, align 4
  %263 = icmp ugt i32 %262, %254
  br label %264

264:                                              ; preds = %259, %257
  %265 = phi i1 [ false, %257 ], [ %263, %259 ]
  br i1 %265, label %266, label %276

266:                                              ; preds = %264
  %267 = sub i64 %.38, 1
  %268 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %267
  %269 = load i32, ptr %268, align 4
  %270 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %269, ptr %270, align 4
  %271 = sub i64 %.38, 1
  %272 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %271
  %273 = load i8, ptr %272, align 1
  %274 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %273, ptr %274, align 1
  %275 = add i64 %.38, -1
  br label %257, !llvm.loop !19

276:                                              ; preds = %264
  %.38.lcssa = phi i64 [ %.38, %264 ]
  %277 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %254, ptr %277, align 4
  %278 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %256, ptr %278, align 1
  br label %279

279:                                              ; preds = %276
  %280 = add nuw nsw i64 %.6, 1
  br label %251, !llvm.loop !20

281:                                              ; preds = %251
  br label %282

282:                                              ; preds = %287, %281
  %.49 = phi i64 [ 0, %281 ], [ %288, %287 ]
  %283 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %284 = load i32, ptr %283, align 4
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %282
  br label %287

287:                                              ; preds = %286
  %288 = add i64 %.49, 1
  br label %282, !llvm.loop !21

289:                                              ; preds = %282
  %.49.lcssa = phi i64 [ %.49, %282 ]
  br label %290

290:                                              ; preds = %323, %289
  %.235 = phi ptr [ %0, %289 ], [ %.336, %323 ]
  %.031 = phi ptr [ %11, %289 ], [ %.132, %323 ]
  %.221 = phi i32 [ 0, %289 ], [ %.423, %323 ]
  %.217 = phi i64 [ 128, %289 ], [ %.318, %323 ]
  %.313 = phi i64 [ 0, %289 ], [ %.414, %323 ]
  %.7 = phi i64 [ %.49.lcssa, %289 ], [ %.9, %323 ]
  %291 = icmp ult i64 %.313, %1
  br i1 %291, label %292, label %324

292:                                              ; preds = %290
  %293 = mul i32 %.221, 2
  %294 = add i32 %293, 1
  %295 = load i8, ptr %.031, align 1
  %296 = zext i8 %295 to i64
  %297 = and i64 %296, %.217
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %301

299:                                              ; preds = %292
  %300 = add i32 %294, 1
  br label %301

301:                                              ; preds = %299, %292
  %.322 = phi i32 [ %300, %299 ], [ %294, %292 ]
  br label %302

302:                                              ; preds = %306, %301
  %.8 = phi i64 [ %.7, %301 ], [ %307, %306 ]
  %303 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %304 = load i32, ptr %303, align 4
  %305 = icmp ult i32 %304, %.322
  br i1 %305, label %306, label %308

306:                                              ; preds = %302
  %307 = add i64 %.8, 1
  br label %302, !llvm.loop !22

308:                                              ; preds = %302
  %.8.lcssa = phi i64 [ %.8, %302 ]
  %309 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8.lcssa
  %310 = load i32, ptr %309, align 4
  %311 = icmp eq i32 %.322, %310
  br i1 %311, label %312, label %317

312:                                              ; preds = %308
  %313 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %314 = load i8, ptr %313, align 1
  store i8 %314, ptr %.235, align 1
  %315 = getelementptr inbounds nuw i8, ptr %.235, i32 1
  %316 = add i64 %.313, 1
  br label %317

317:                                              ; preds = %312, %308
  %.336 = phi ptr [ %315, %312 ], [ %.235, %308 ]
  %.423 = phi i32 [ 0, %312 ], [ %.322, %308 ]
  %.414 = phi i64 [ %316, %312 ], [ %.313, %308 ]
  %.9 = phi i64 [ %.49.lcssa, %312 ], [ %.8.lcssa, %308 ]
  %318 = icmp ugt i64 %.217, 1
  br i1 %318, label %319, label %321

319:                                              ; preds = %317
  %320 = lshr i64 %.217, 1
  br label %323

321:                                              ; preds = %317
  %322 = getelementptr inbounds nuw i8, ptr %.031, i32 1
  br label %323

323:                                              ; preds = %321, %319
  %.132 = phi ptr [ %.031, %319 ], [ %322, %321 ]
  %.318 = phi i64 [ %320, %319 ], [ 128, %321 ]
  br label %290, !llvm.loop !23

324:                                              ; preds = %290
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
  %.01.lcssa1 = phi i32 [ %.01, %31 ]
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

.loopexit:                                        ; preds = %10
  %.01.lcssa = phi i32 [ %.01, %10 ]
  br label %51

51:                                               ; preds = %.loopexit, %42
  %.012 = phi i32 [ %.01.lcssa, %.loopexit ], [ %.01.lcssa1, %42 ]
  %52 = sext i32 %9 to i64
  %53 = sub nsw i32 %.012, 1
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
