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

30:                                               ; preds = %50, %29
  %.010 = phi i64 [ 0, %29 ], [ %.111.1, %50 ]
  %.13 = phi i64 [ 0, %29 ], [ %51, %50 ]
  %31 = icmp samesign ult i64 %.13, 256
  br i1 %31, label %32, label %52

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
  %41 = add nuw nsw i64 %.13, 1
  br label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %41
  %44 = load i64, ptr %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.111
  store i64 %41, ptr %47, align 8
  %48 = add i64 %.111, 1
  br label %49

49:                                               ; preds = %46, %42
  %.111.1 = phi i64 [ %48, %46 ], [ %.111, %42 ]
  br label %50

50:                                               ; preds = %49
  %51 = add nuw nsw i64 %.13, 2
  br label %30, !llvm.loop !10

52:                                               ; preds = %30
  %.010.lcssa = phi i64 [ %.010, %30 ]
  br label %53

53:                                               ; preds = %60, %52
  %.24 = phi i64 [ %.010.lcssa, %52 ], [ %61, %60 ]
  %54 = icmp ugt i64 %.24, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %53
  %56 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %57 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %58 = trunc i64 %.010.lcssa to i32
  %59 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef %56, ptr noundef %57, i32 noundef %58, i32 noundef %59)
  br label %60

60:                                               ; preds = %55
  %61 = add i64 %.24, -1
  br label %53, !llvm.loop !11

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %65, %62
  %.212 = phi i64 [ %.010.lcssa, %62 ], [ %66, %65 ]
  %64 = icmp ugt i64 %.212, 1
  br i1 %64, label %65, label %97

65:                                               ; preds = %63
  %66 = add i64 %.212, -1
  %67 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %68 = load i64, ptr %67, align 16
  %69 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %66
  %70 = load i64, ptr %69, align 8
  %71 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %70, ptr %71, align 16
  %72 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %73 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %74 = trunc i64 %66 to i32
  call void @heap_adjust(ptr noundef %72, ptr noundef %73, i32 noundef %74, i32 noundef 1)
  %75 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %76 = load i64, ptr %75, align 16
  %77 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %76
  %78 = load i64, ptr %77, align 8
  %79 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %68
  %80 = load i64, ptr %79, align 8
  %81 = add i64 %78, %80
  %82 = add i64 256, %66
  %83 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %82
  store i64 %81, ptr %83, align 8
  %84 = add i64 256, %66
  %85 = trunc i64 %84 to i32
  %86 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %68
  store i32 %85, ptr %86, align 4
  %87 = sub i64 -256, %66
  %88 = trunc i64 %87 to i32
  %89 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %90 = load i64, ptr %89, align 16
  %91 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %90
  store i32 %88, ptr %91, align 4
  %92 = add i64 256, %66
  %93 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %92, ptr %93, align 16
  %94 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %95 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %96 = trunc i64 %66 to i32
  call void @heap_adjust(ptr noundef %94, ptr noundef %95, i32 noundef %96, i32 noundef 1)
  br label %63, !llvm.loop !12

97:                                               ; preds = %63
  %.212.lcssa = phi i64 [ %.212, %63 ]
  %98 = add i64 256, %.212.lcssa
  %99 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %98
  store i32 0, ptr %99, align 4
  br label %100

100:                                              ; preds = %136, %97
  %.045 = phi i64 [ 0, %97 ], [ %.146, %136 ]
  %.042 = phi i64 [ 0, %97 ], [ %137, %136 ]
  %.039 = phi i64 [ 0, %97 ], [ %.140, %136 ]
  %exitcond7 = icmp ne i64 %.042, 256
  br i1 %exitcond7, label %101, label %138

101:                                              ; preds = %100
  %102 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.042
  %103 = load i64, ptr %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 0, ptr %106, align 4
  %107 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 0, ptr %107, align 1
  br label %135

108:                                              ; preds = %101
  %109 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.042
  %110 = load i32, ptr %109, align 4
  br label %111

111:                                              ; preds = %118, %108
  %.043 = phi i64 [ 0, %108 ], [ %.144, %118 ]
  %.037 = phi i32 [ %110, %108 ], [ %121, %118 ]
  %.05 = phi i64 [ 1, %108 ], [ %122, %118 ]
  %.3 = phi i64 [ 0, %108 ], [ %123, %118 ]
  %112 = icmp ne i32 %.037, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %111
  %114 = icmp slt i32 %.037, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %113
  %116 = add i64 %.043, %.05
  %117 = sub nsw i32 0, %.037
  br label %118

118:                                              ; preds = %115, %113
  %.144 = phi i64 [ %116, %115 ], [ %.043, %113 ]
  %.138 = phi i32 [ %117, %115 ], [ %.037, %113 ]
  %119 = sext i32 %.138 to i64
  %120 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %119
  %121 = load i32, ptr %120, align 4
  %122 = shl i64 %.05, 1
  %123 = add i64 %.3, 1
  br label %111, !llvm.loop !13

124:                                              ; preds = %111
  %.043.lcssa = phi i64 [ %.043, %111 ]
  %.3.lcssa = phi i64 [ %.3, %111 ]
  %125 = trunc i64 %.043.lcssa to i32
  %126 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 %125, ptr %126, align 4
  %127 = trunc i64 %.3.lcssa to i8
  %128 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 %127, ptr %128, align 1
  %129 = icmp ugt i64 %.043.lcssa, %.045
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  br label %131

131:                                              ; preds = %130, %124
  %.247 = phi i64 [ %.043.lcssa, %130 ], [ %.045, %124 ]
  %132 = icmp ugt i64 %.3.lcssa, %.039
  br i1 %132, label %133, label %134

133:                                              ; preds = %131
  br label %134

134:                                              ; preds = %133, %131
  %.241 = phi i64 [ %.3.lcssa, %133 ], [ %.039, %131 ]
  br label %135

135:                                              ; preds = %134, %105
  %.146 = phi i64 [ %.247, %134 ], [ %.045, %105 ]
  %.140 = phi i64 [ %.241, %134 ], [ %.039, %105 ]
  br label %136

136:                                              ; preds = %135
  %137 = add nuw nsw i64 %.042, 1
  br label %100, !llvm.loop !14

138:                                              ; preds = %100
  %.045.lcssa = phi i64 [ %.045, %100 ]
  %.039.lcssa = phi i64 [ %.039, %100 ]
  %139 = icmp ugt i64 %.039.lcssa, 32
  br i1 %139, label %140, label %143

140:                                              ; preds = %138
  %141 = call ptr @__acrt_iob_func(i32 noundef 2)
  %142 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %141, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

143:                                              ; preds = %138
  %144 = icmp eq i64 %.045.lcssa, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %143
  %146 = call ptr @__acrt_iob_func(i32 noundef 2)
  %147 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %146, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

148:                                              ; preds = %143
  br label %149

149:                                              ; preds = %199, %148
  %.134 = phi ptr [ %0, %148 ], [ %198, %199 ]
  %.028 = phi i64 [ 0, %148 ], [ %.129.lcssa, %199 ]
  %.024 = phi i8 [ 0, %148 ], [ %.125.lcssa, %199 ]
  %.16 = phi i64 [ 0, %148 ], [ %200, %199 ]
  %.01 = phi i32 [ -1, %148 ], [ %.1.lcssa, %199 ]
  %exitcond8 = icmp ne i64 %.16, %1
  br i1 %exitcond8, label %150, label %201

150:                                              ; preds = %149
  %151 = load i8, ptr %.134, align 1
  %152 = zext i8 %151 to i64
  %153 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %152
  %154 = load i8, ptr %153, align 1
  %155 = zext i8 %154 to i32
  %156 = sub nsw i32 %155, 1
  %157 = shl i32 1, %156
  %158 = sext i32 %157 to i64
  br label %159

159:                                              ; preds = %195, %150
  %.129 = phi i64 [ %.028, %150 ], [ %.230, %195 ]
  %.125 = phi i8 [ %.024, %150 ], [ %.327, %195 ]
  %.015 = phi i64 [ %158, %150 ], [ %194, %195 ]
  %.4 = phi i64 [ 0, %150 ], [ %196, %195 ]
  %.1 = phi i32 [ %.01, %150 ], [ %.2, %195 ]
  %160 = load i8, ptr %.134, align 1
  %161 = zext i8 %160 to i64
  %162 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %161
  %163 = load i8, ptr %162, align 1
  %164 = zext i8 %163 to i64
  %165 = icmp samesign ult i64 %.4, %164
  br i1 %165, label %166, label %197

166:                                              ; preds = %159
  %167 = icmp eq i32 %.1, 7
  br i1 %167, label %168, label %176

168:                                              ; preds = %166
  %169 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %169, align 1
  %170 = add i64 %.129, 1
  %171 = icmp eq i64 %170, %1
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = call ptr @__acrt_iob_func(i32 noundef 2)
  %174 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %173, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

175:                                              ; preds = %168
  br label %181

176:                                              ; preds = %166
  %177 = add nsw i32 %.1, 1
  %178 = sext i8 %.125 to i32
  %179 = shl i32 %178, 1
  %180 = trunc i32 %179 to i8
  br label %181

181:                                              ; preds = %176, %175
  %.230 = phi i64 [ %170, %175 ], [ %.129, %176 ]
  %.226 = phi i8 [ 0, %175 ], [ %180, %176 ]
  %.2 = phi i32 [ 0, %175 ], [ %177, %176 ]
  %182 = load i8, ptr %.134, align 1
  %183 = zext i8 %182 to i64
  %184 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %183
  %185 = load i32, ptr %184, align 4
  %186 = zext i32 %185 to i64
  %187 = and i64 %186, %.015
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %181
  %190 = sext i8 %.226 to i32
  %191 = or i32 %190, 1
  %192 = trunc i32 %191 to i8
  br label %193

193:                                              ; preds = %189, %181
  %.327 = phi i8 [ %192, %189 ], [ %.226, %181 ]
  %194 = lshr i64 %.015, 1
  br label %195

195:                                              ; preds = %193
  %196 = add nuw nsw i64 %.4, 1
  br label %159, !llvm.loop !15

197:                                              ; preds = %159
  %.129.lcssa = phi i64 [ %.129, %159 ]
  %.125.lcssa = phi i8 [ %.125, %159 ]
  %.1.lcssa = phi i32 [ %.1, %159 ]
  %198 = getelementptr inbounds nuw i8, ptr %.134, i32 1
  br label %199

199:                                              ; preds = %197
  %200 = add i64 %.16, 1
  br label %149, !llvm.loop !16

201:                                              ; preds = %149
  %.028.lcssa = phi i64 [ %.028, %149 ]
  %.024.lcssa = phi i8 [ %.024, %149 ]
  %.01.lcssa = phi i32 [ %.01, %149 ]
  %202 = sub nsw i32 7, %.01.lcssa
  %203 = sext i8 %.024.lcssa to i32
  %204 = shl i32 %203, %202
  %205 = trunc i32 %204 to i8
  %206 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %205, ptr %206, align 1
  %207 = getelementptr inbounds [256 x i32], ptr %8, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %207, i8 0, i64 1024, i1 false)
  %208 = getelementptr inbounds [256 x i8], ptr %9, i64 0, i64 0
  br label %209

209:                                              ; preds = %249, %201
  %.27 = phi i64 [ 0, %201 ], [ %250, %249 ]
  %.0 = phi ptr [ %208, %201 ], [ %212, %249 ]
  %exitcond9 = icmp ne i64 %.27, 256
  br i1 %exitcond9, label %210, label %251

210:                                              ; preds = %209
  %211 = trunc i64 %.27 to i8
  store i8 %211, ptr %.0, align 1
  %212 = getelementptr inbounds nuw i8, ptr %.0, i32 1
  %213 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %214 = load i32, ptr %213, align 4
  %215 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %216 = load i8, ptr %215, align 1
  %217 = zext i8 %216 to i32
  %218 = or i32 %214, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %248

220:                                              ; preds = %210
  %221 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %222 = load i8, ptr %221, align 1
  %223 = zext i8 %222 to i32
  %224 = sub nsw i32 %223, 1
  %225 = shl i32 1, %224
  %226 = sext i32 %225 to i64
  br label %227

227:                                              ; preds = %244, %220
  %.019 = phi i32 [ 0, %220 ], [ %.120, %244 ]
  %.116 = phi i64 [ %226, %220 ], [ %243, %244 ]
  %.5 = phi i64 [ 0, %220 ], [ %245, %244 ]
  %228 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %229 = load i8, ptr %228, align 1
  %230 = zext i8 %229 to i64
  %231 = icmp samesign ult i64 %.5, %230
  br i1 %231, label %232, label %246

232:                                              ; preds = %227
  %233 = mul i32 %.019, 2
  %234 = add i32 %233, 1
  %235 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %236 = load i32, ptr %235, align 4
  %237 = zext i32 %236 to i64
  %238 = and i64 %237, %.116
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %232
  %241 = add i32 %234, 1
  br label %242

242:                                              ; preds = %240, %232
  %.120 = phi i32 [ %241, %240 ], [ %234, %232 ]
  %243 = lshr i64 %.116, 1
  br label %244

244:                                              ; preds = %242
  %245 = add nuw nsw i64 %.5, 1
  br label %227, !llvm.loop !17

246:                                              ; preds = %227
  %.019.lcssa = phi i32 [ %.019, %227 ]
  %247 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.27
  store i32 %.019.lcssa, ptr %247, align 4
  br label %248

248:                                              ; preds = %246, %210
  br label %249

249:                                              ; preds = %248
  %250 = add nuw nsw i64 %.27, 1
  br label %209, !llvm.loop !18

251:                                              ; preds = %209
  br label %252

252:                                              ; preds = %280, %251
  %.6 = phi i64 [ 1, %251 ], [ %281, %280 ]
  %exitcond10 = icmp ne i64 %.6, 256
  br i1 %exitcond10, label %253, label %282

253:                                              ; preds = %252
  %254 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %255 = load i32, ptr %254, align 4
  %256 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %257 = load i8, ptr %256, align 1
  br label %258

258:                                              ; preds = %267, %253
  %.38 = phi i64 [ %.6, %253 ], [ %276, %267 ]
  %259 = icmp ne i64 %.38, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %258
  %261 = sub nuw i64 %.38, 1
  %262 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %261
  %263 = load i32, ptr %262, align 4
  %264 = icmp ugt i32 %263, %255
  br label %265

265:                                              ; preds = %260, %258
  %266 = phi i1 [ false, %258 ], [ %264, %260 ]
  br i1 %266, label %267, label %277

267:                                              ; preds = %265
  %268 = sub i64 %.38, 1
  %269 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %268
  %270 = load i32, ptr %269, align 4
  %271 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %270, ptr %271, align 4
  %272 = sub i64 %.38, 1
  %273 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %272
  %274 = load i8, ptr %273, align 1
  %275 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %274, ptr %275, align 1
  %276 = add i64 %.38, -1
  br label %258, !llvm.loop !19

277:                                              ; preds = %265
  %.38.lcssa = phi i64 [ %.38, %265 ]
  %278 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %255, ptr %278, align 4
  %279 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %257, ptr %279, align 1
  br label %280

280:                                              ; preds = %277
  %281 = add nuw nsw i64 %.6, 1
  br label %252, !llvm.loop !20

282:                                              ; preds = %252
  br label %283

283:                                              ; preds = %288, %282
  %.49 = phi i64 [ 0, %282 ], [ %289, %288 ]
  %284 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %285 = load i32, ptr %284, align 4
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %283
  br label %288

288:                                              ; preds = %287
  %289 = add i64 %.49, 1
  br label %283, !llvm.loop !21

290:                                              ; preds = %283
  %.49.lcssa = phi i64 [ %.49, %283 ]
  br label %291

291:                                              ; preds = %324, %290
  %.235 = phi ptr [ %0, %290 ], [ %.336, %324 ]
  %.031 = phi ptr [ %11, %290 ], [ %.132, %324 ]
  %.221 = phi i32 [ 0, %290 ], [ %.423, %324 ]
  %.217 = phi i64 [ 128, %290 ], [ %.318, %324 ]
  %.313 = phi i64 [ 0, %290 ], [ %.414, %324 ]
  %.7 = phi i64 [ %.49.lcssa, %290 ], [ %.9, %324 ]
  %292 = icmp ult i64 %.313, %1
  br i1 %292, label %293, label %325

293:                                              ; preds = %291
  %294 = mul i32 %.221, 2
  %295 = add i32 %294, 1
  %296 = load i8, ptr %.031, align 1
  %297 = zext i8 %296 to i64
  %298 = and i64 %297, %.217
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %302

300:                                              ; preds = %293
  %301 = add i32 %295, 1
  br label %302

302:                                              ; preds = %300, %293
  %.322 = phi i32 [ %301, %300 ], [ %295, %293 ]
  br label %303

303:                                              ; preds = %307, %302
  %.8 = phi i64 [ %.7, %302 ], [ %308, %307 ]
  %304 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %305 = load i32, ptr %304, align 4
  %306 = icmp ult i32 %305, %.322
  br i1 %306, label %307, label %309

307:                                              ; preds = %303
  %308 = add i64 %.8, 1
  br label %303, !llvm.loop !22

309:                                              ; preds = %303
  %.8.lcssa = phi i64 [ %.8, %303 ]
  %310 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8.lcssa
  %311 = load i32, ptr %310, align 4
  %312 = icmp eq i32 %.322, %311
  br i1 %312, label %313, label %318

313:                                              ; preds = %309
  %314 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %315 = load i8, ptr %314, align 1
  store i8 %315, ptr %.235, align 1
  %316 = getelementptr inbounds nuw i8, ptr %.235, i32 1
  %317 = add i64 %.313, 1
  br label %318

318:                                              ; preds = %313, %309
  %.336 = phi ptr [ %316, %313 ], [ %.235, %309 ]
  %.423 = phi i32 [ 0, %313 ], [ %.322, %309 ]
  %.414 = phi i64 [ %317, %313 ], [ %.313, %309 ]
  %.9 = phi i64 [ %.49.lcssa, %313 ], [ %.8.lcssa, %309 ]
  %319 = icmp ugt i64 %.217, 1
  br i1 %319, label %320, label %322

320:                                              ; preds = %318
  %321 = lshr i64 %.217, 1
  br label %324

322:                                              ; preds = %318
  %323 = getelementptr inbounds nuw i8, ptr %.031, i32 1
  br label %324

324:                                              ; preds = %322, %320
  %.132 = phi ptr [ %.031, %320 ], [ %323, %322 ]
  %.318 = phi i64 [ %321, %320 ], [ 128, %322 ]
  br label %291, !llvm.loop !23

325:                                              ; preds = %291
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
