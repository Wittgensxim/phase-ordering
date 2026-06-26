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

19:                                               ; preds = %20, %2
  %.033 = phi ptr [ %0, %2 ], [ %26, %20 ]
  %.02 = phi i64 [ 0, %2 ], [ %27, %20 ]
  %exitcond = icmp ne i64 %.02, %1
  br i1 %exitcond, label %20, label %28

20:                                               ; preds = %19
  %21 = load i8, ptr %.033, align 1
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %22
  %24 = load i64, ptr %23, align 8
  %25 = add i64 %24, 1
  store i64 %25, ptr %23, align 8
  %26 = getelementptr inbounds nuw i8, ptr %.033, i32 1
  %27 = add i64 %.02, 1
  br label %19, !llvm.loop !9

28:                                               ; preds = %19, %36
  %.010 = phi i64 [ %.111, %36 ], [ 0, %19 ]
  %.13 = phi i64 [ %37, %36 ], [ 0, %19 ]
  %exitcond7 = icmp ne i64 %.13, 256
  br i1 %exitcond7, label %29, label %38

29:                                               ; preds = %28
  %30 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.13
  %31 = load i64, ptr %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.010
  store i64 %.13, ptr %34, align 8
  %35 = add i64 %.010, 1
  br label %36

36:                                               ; preds = %29, %33
  %.111 = phi i64 [ %35, %33 ], [ %.010, %29 ]
  %37 = add nuw nsw i64 %.13, 1
  br label %28, !llvm.loop !10

38:                                               ; preds = %28
  %.010.lcssa = phi i64 [ %.010, %28 ]
  br label %39

39:                                               ; preds = %41, %38
  %.24 = phi i64 [ %.010.lcssa, %38 ], [ %46, %41 ]
  %40 = icmp ugt i64 %.24, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %39
  %42 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %43 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %44 = trunc i64 %.010.lcssa to i32
  %45 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef %42, ptr noundef %43, i32 noundef %44, i32 noundef %45)
  %46 = add i64 %.24, -1
  br label %39, !llvm.loop !11

47:                                               ; preds = %39, %49
  %.212 = phi i64 [ %50, %49 ], [ %.010.lcssa, %39 ]
  %48 = icmp ugt i64 %.212, 1
  br i1 %48, label %49, label %81

49:                                               ; preds = %47
  %50 = add i64 %.212, -1
  %51 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %52 = load i64, ptr %51, align 16
  %53 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %50
  %54 = load i64, ptr %53, align 8
  %55 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %54, ptr %55, align 16
  %56 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %57 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %58 = trunc i64 %50 to i32
  call void @heap_adjust(ptr noundef %56, ptr noundef %57, i32 noundef %58, i32 noundef 1)
  %59 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %60 = load i64, ptr %59, align 16
  %61 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %60
  %62 = load i64, ptr %61, align 8
  %63 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %52
  %64 = load i64, ptr %63, align 8
  %65 = add i64 %62, %64
  %66 = add i64 256, %50
  %67 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %66
  store i64 %65, ptr %67, align 8
  %68 = add i64 256, %50
  %69 = trunc i64 %68 to i32
  %70 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %52
  store i32 %69, ptr %70, align 4
  %71 = sub i64 -256, %50
  %72 = trunc i64 %71 to i32
  %73 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %74 = load i64, ptr %73, align 16
  %75 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %74
  store i32 %72, ptr %75, align 4
  %76 = add i64 256, %50
  %77 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %76, ptr %77, align 16
  %78 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %79 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %80 = trunc i64 %50 to i32
  call void @heap_adjust(ptr noundef %78, ptr noundef %79, i32 noundef %80, i32 noundef 1)
  br label %47, !llvm.loop !12

81:                                               ; preds = %47
  %.212.lcssa = phi i64 [ %.212, %47 ]
  %82 = add i64 256, %.212.lcssa
  %83 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %82
  store i32 0, ptr %83, align 4
  br label %84

84:                                               ; preds = %113, %81
  %.045 = phi i64 [ 0, %81 ], [ %.146, %113 ]
  %.042 = phi i64 [ 0, %81 ], [ %114, %113 ]
  %.039 = phi i64 [ 0, %81 ], [ %.140, %113 ]
  %exitcond8 = icmp ne i64 %.042, 256
  br i1 %exitcond8, label %85, label %115

85:                                               ; preds = %84
  %86 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.042
  %87 = load i64, ptr %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 0, ptr %90, align 4
  %91 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 0, ptr %91, align 1
  br label %113

92:                                               ; preds = %85
  %93 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.042
  %94 = load i32, ptr %93, align 4
  br label %95

95:                                               ; preds = %97, %92
  %.043 = phi i64 [ 0, %92 ], [ %.144, %97 ]
  %.037 = phi i32 [ %94, %92 ], [ %103, %97 ]
  %.05 = phi i64 [ 1, %92 ], [ %104, %97 ]
  %.3 = phi i64 [ 0, %92 ], [ %105, %97 ]
  %96 = icmp ne i32 %.037, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %95
  %98 = icmp slt i32 %.037, 0
  %99 = add i64 %.043, %.05
  %100 = sub nsw i32 0, %.037
  %.144 = select i1 %98, i64 %99, i64 %.043
  %.138 = select i1 %98, i32 %100, i32 %.037
  %101 = sext i32 %.138 to i64
  %102 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %101
  %103 = load i32, ptr %102, align 4
  %104 = shl i64 %.05, 1
  %105 = add i64 %.3, 1
  br label %95, !llvm.loop !13

106:                                              ; preds = %95
  %.043.lcssa = phi i64 [ %.043, %95 ]
  %.3.lcssa = phi i64 [ %.3, %95 ]
  %107 = trunc i64 %.043.lcssa to i32
  %108 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 %107, ptr %108, align 4
  %109 = trunc i64 %.3.lcssa to i8
  %110 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 %109, ptr %110, align 1
  %111 = icmp ugt i64 %.043.lcssa, %.045
  %spec.select = select i1 %111, i64 %.043.lcssa, i64 %.045
  %112 = icmp ugt i64 %.3.lcssa, %.039
  %.241 = select i1 %112, i64 %.3.lcssa, i64 %.039
  br label %113

113:                                              ; preds = %89, %106
  %.146 = phi i64 [ %spec.select, %106 ], [ %.045, %89 ]
  %.140 = phi i64 [ %.241, %106 ], [ %.039, %89 ]
  %114 = add nuw nsw i64 %.042, 1
  br label %84, !llvm.loop !14

115:                                              ; preds = %84
  %.045.lcssa = phi i64 [ %.045, %84 ]
  %.039.lcssa = phi i64 [ %.039, %84 ]
  %116 = icmp ugt i64 %.039.lcssa, 32
  br i1 %116, label %117, label %120

117:                                              ; preds = %115
  %118 = call ptr @__acrt_iob_func(i32 noundef 2)
  %119 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %118, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

120:                                              ; preds = %115
  %121 = icmp eq i64 %.045.lcssa, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %120
  %123 = call ptr @__acrt_iob_func(i32 noundef 2)
  %124 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %123, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

125:                                              ; preds = %120, %169
  %.134 = phi ptr [ %170, %169 ], [ %0, %120 ]
  %.028 = phi i64 [ %.129.lcssa, %169 ], [ 0, %120 ]
  %.024 = phi i8 [ %.125.lcssa, %169 ], [ 0, %120 ]
  %.16 = phi i64 [ %171, %169 ], [ 0, %120 ]
  %.01 = phi i32 [ %.1.lcssa, %169 ], [ -1, %120 ]
  %exitcond9 = icmp ne i64 %.16, %1
  br i1 %exitcond9, label %126, label %172

126:                                              ; preds = %125
  %127 = load i8, ptr %.134, align 1
  %128 = zext i8 %127 to i64
  %129 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %128
  %130 = load i8, ptr %129, align 1
  %131 = zext i8 %130 to i32
  %132 = sub nsw i32 %131, 1
  %133 = shl i32 1, %132
  %134 = sext i32 %133 to i64
  br label %135

135:                                              ; preds = %156, %126
  %.129 = phi i64 [ %.028, %126 ], [ %.230, %156 ]
  %.125 = phi i8 [ %.024, %126 ], [ %.327, %156 ]
  %.015 = phi i64 [ %134, %126 ], [ %167, %156 ]
  %.4 = phi i64 [ 0, %126 ], [ %168, %156 ]
  %.1 = phi i32 [ %.01, %126 ], [ %.2, %156 ]
  %136 = load i8, ptr %.134, align 1
  %137 = zext i8 %136 to i64
  %138 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %137
  %139 = load i8, ptr %138, align 1
  %140 = zext i8 %139 to i64
  %141 = icmp samesign ult i64 %.4, %140
  br i1 %141, label %142, label %169

142:                                              ; preds = %135
  %143 = icmp eq i32 %.1, 7
  br i1 %143, label %144, label %151

144:                                              ; preds = %142
  %145 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %145, align 1
  %146 = add i64 %.129, 1
  %147 = icmp eq i64 %146, %1
  br i1 %147, label %148, label %156

148:                                              ; preds = %144
  %149 = call ptr @__acrt_iob_func(i32 noundef 2)
  %150 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %149, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

151:                                              ; preds = %142
  %152 = add nsw i32 %.1, 1
  %153 = sext i8 %.125 to i32
  %154 = shl i32 %153, 1
  %155 = trunc i32 %154 to i8
  br label %156

156:                                              ; preds = %144, %151
  %.230 = phi i64 [ %.129, %151 ], [ %146, %144 ]
  %.226 = phi i8 [ %155, %151 ], [ 0, %144 ]
  %.2 = phi i32 [ %152, %151 ], [ 0, %144 ]
  %157 = load i8, ptr %.134, align 1
  %158 = zext i8 %157 to i64
  %159 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %158
  %160 = load i32, ptr %159, align 4
  %161 = zext i32 %160 to i64
  %162 = and i64 %161, %.015
  %163 = icmp ne i64 %162, 0
  %164 = sext i8 %.226 to i32
  %165 = or i32 %164, 1
  %166 = trunc i32 %165 to i8
  %.327 = select i1 %163, i8 %166, i8 %.226
  %167 = lshr i64 %.015, 1
  %168 = add nuw nsw i64 %.4, 1
  br label %135, !llvm.loop !15

169:                                              ; preds = %135
  %.129.lcssa = phi i64 [ %.129, %135 ]
  %.125.lcssa = phi i8 [ %.125, %135 ]
  %.1.lcssa = phi i32 [ %.1, %135 ]
  %170 = getelementptr inbounds nuw i8, ptr %.134, i32 1
  %171 = add i64 %.16, 1
  br label %125, !llvm.loop !16

172:                                              ; preds = %125
  %.028.lcssa = phi i64 [ %.028, %125 ]
  %.024.lcssa = phi i8 [ %.024, %125 ]
  %.01.lcssa = phi i32 [ %.01, %125 ]
  %173 = sub nsw i32 7, %.01.lcssa
  %174 = sext i8 %.024.lcssa to i32
  %175 = shl i32 %174, %173
  %176 = trunc i32 %175 to i8
  %177 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %176, ptr %177, align 1
  %178 = getelementptr inbounds [256 x i32], ptr %8, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %178, i8 0, i64 1024, i1 false)
  %179 = getelementptr inbounds [256 x i8], ptr %9, i64 0, i64 0
  br label %180

180:                                              ; preds = %216, %172
  %.27 = phi i64 [ 0, %172 ], [ %217, %216 ]
  %.0 = phi ptr [ %179, %172 ], [ %183, %216 ]
  %exitcond10 = icmp ne i64 %.27, 256
  br i1 %exitcond10, label %181, label %218

181:                                              ; preds = %180
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
  br i1 %190, label %191, label %216

191:                                              ; preds = %181
  %192 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %193 = load i8, ptr %192, align 1
  %194 = zext i8 %193 to i32
  %195 = sub nsw i32 %194, 1
  %196 = shl i32 1, %195
  %197 = sext i32 %196 to i64
  br label %198

198:                                              ; preds = %203, %191
  %.019 = phi i32 [ 0, %191 ], [ %spec.select12, %203 ]
  %.116 = phi i64 [ %197, %191 ], [ %212, %203 ]
  %.5 = phi i64 [ 0, %191 ], [ %213, %203 ]
  %199 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %200 = load i8, ptr %199, align 1
  %201 = zext i8 %200 to i64
  %202 = icmp samesign ult i64 %.5, %201
  br i1 %202, label %203, label %214

203:                                              ; preds = %198
  %204 = mul i32 %.019, 2
  %205 = add i32 %204, 1
  %206 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %207 = load i32, ptr %206, align 4
  %208 = zext i32 %207 to i64
  %209 = and i64 %208, %.116
  %210 = icmp ne i64 %209, 0
  %211 = add i32 %205, 1
  %spec.select12 = select i1 %210, i32 %211, i32 %205
  %212 = lshr i64 %.116, 1
  %213 = add nuw nsw i64 %.5, 1
  br label %198, !llvm.loop !17

214:                                              ; preds = %198
  %.019.lcssa = phi i32 [ %.019, %198 ]
  %215 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.27
  store i32 %.019.lcssa, ptr %215, align 4
  br label %216

216:                                              ; preds = %181, %214
  %217 = add nuw nsw i64 %.27, 1
  br label %180, !llvm.loop !18

218:                                              ; preds = %180, %.critedge
  %.6 = phi i64 [ %243, %.critedge ], [ 1, %180 ]
  %exitcond11 = icmp ne i64 %.6, 256
  br i1 %exitcond11, label %219, label %244

219:                                              ; preds = %218
  %220 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %221 = load i32, ptr %220, align 4
  %222 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %223 = load i8, ptr %222, align 1
  br label %224

224:                                              ; preds = %231, %219
  %.38 = phi i64 [ %.6, %219 ], [ %240, %231 ]
  %225 = icmp ne i64 %.38, 0
  br i1 %225, label %226, label %.critedge

226:                                              ; preds = %224
  %227 = sub nuw i64 %.38, 1
  %228 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %227
  %229 = load i32, ptr %228, align 4
  %230 = icmp ugt i32 %229, %221
  br i1 %230, label %231, label %.critedge

231:                                              ; preds = %226
  %232 = sub i64 %.38, 1
  %233 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %232
  %234 = load i32, ptr %233, align 4
  %235 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %234, ptr %235, align 4
  %236 = sub i64 %.38, 1
  %237 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %236
  %238 = load i8, ptr %237, align 1
  %239 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %238, ptr %239, align 1
  %240 = add i64 %.38, -1
  br label %224, !llvm.loop !19

.critedge:                                        ; preds = %224, %226
  %.38.lcssa = phi i64 [ %.38, %226 ], [ %.38, %224 ]
  %241 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %221, ptr %241, align 4
  %242 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %223, ptr %242, align 1
  %243 = add nuw nsw i64 %.6, 1
  br label %218, !llvm.loop !20

244:                                              ; preds = %218, %248
  %.49 = phi i64 [ %249, %248 ], [ 0, %218 ]
  %245 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %246 = load i32, ptr %245, align 4
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %244
  %249 = add i64 %.49, 1
  br label %244, !llvm.loop !21

250:                                              ; preds = %244
  %.49.lcssa = phi i64 [ %.49, %244 ]
  br label %251

251:                                              ; preds = %276, %250
  %.235 = phi ptr [ %0, %250 ], [ %.336, %276 ]
  %.031 = phi ptr [ %11, %250 ], [ %.132, %276 ]
  %.221 = phi i32 [ 0, %250 ], [ %.423, %276 ]
  %.217 = phi i64 [ 128, %250 ], [ %.318, %276 ]
  %.313 = phi i64 [ 0, %250 ], [ %.414, %276 ]
  %.7 = phi i64 [ %.49.lcssa, %250 ], [ %.9, %276 ]
  %252 = icmp ult i64 %.313, %1
  br i1 %252, label %253, label %280

253:                                              ; preds = %251
  %254 = mul i32 %.221, 2
  %255 = add i32 %254, 1
  %256 = load i8, ptr %.031, align 1
  %257 = zext i8 %256 to i64
  %258 = and i64 %257, %.217
  %259 = icmp ne i64 %258, 0
  %260 = add i32 %255, 1
  %spec.select13 = select i1 %259, i32 %260, i32 %255
  br label %261

261:                                              ; preds = %265, %253
  %.8 = phi i64 [ %.7, %253 ], [ %266, %265 ]
  %262 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %263 = load i32, ptr %262, align 4
  %264 = icmp ult i32 %263, %spec.select13
  br i1 %264, label %265, label %267

265:                                              ; preds = %261
  %266 = add i64 %.8, 1
  br label %261, !llvm.loop !22

267:                                              ; preds = %261
  %.8.lcssa = phi i64 [ %.8, %261 ]
  %268 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8.lcssa
  %269 = load i32, ptr %268, align 4
  %270 = icmp eq i32 %spec.select13, %269
  br i1 %270, label %271, label %276

271:                                              ; preds = %267
  %272 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %273 = load i8, ptr %272, align 1
  store i8 %273, ptr %.235, align 1
  %274 = getelementptr inbounds nuw i8, ptr %.235, i32 1
  %275 = add i64 %.313, 1
  br label %276

276:                                              ; preds = %271, %267
  %.336 = phi ptr [ %274, %271 ], [ %.235, %267 ]
  %.423 = phi i32 [ 0, %271 ], [ %spec.select13, %267 ]
  %.414 = phi i64 [ %275, %271 ], [ %.313, %267 ]
  %.9 = phi i64 [ %.49.lcssa, %271 ], [ %.8.lcssa, %267 ]
  %277 = icmp ugt i64 %.217, 1
  %278 = lshr i64 %.217, 1
  %279 = getelementptr inbounds nuw i8, ptr %.031, i32 1
  %.132 = select i1 %277, ptr %.031, ptr %279
  %.318 = select i1 %277, i64 %278, i64 128
  br label %251, !llvm.loop !23

280:                                              ; preds = %251
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

10:                                               ; preds = %41, %4
  %.01 = phi i32 [ %3, %4 ], [ %.0, %41 ]
  %11 = sdiv i32 %2, 2
  %12 = icmp sle i32 %.01, %11
  br i1 %12, label %13, label %.loopexit

13:                                               ; preds = %10
  %14 = add nsw i32 %.01, %.01
  %15 = icmp slt i32 %14, %2
  br i1 %15, label %16, label %30

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
  %29 = add nsw i32 %14, 1
  %spec.select = select i1 %28, i32 %29, i32 %14
  br label %30

30:                                               ; preds = %16, %13
  %.0 = phi i32 [ %14, %13 ], [ %spec.select, %16 ]
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
  br i1 %40, label %.loopexit, label %41

41:                                               ; preds = %30
  %42 = sub nsw i32 %.0, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, ptr %1, i64 %43
  %45 = load i64, ptr %44, align 8
  %46 = sub nsw i32 %.01, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, ptr %1, i64 %47
  store i64 %45, ptr %48, align 8
  br label %10, !llvm.loop !24

.loopexit:                                        ; preds = %10, %30
  %.012 = phi i32 [ %.01, %30 ], [ %.01, %10 ]
  %49 = sext i32 %9 to i64
  %50 = sub nsw i32 %.012, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, ptr %1, i64 %51
  store i64 %49, ptr %52, align 8
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
  br i1 %3, label %4, label %.loopexit

4:                                                ; preds = %2, %10
  %.01 = phi i32 [ %11, %10 ], [ 1, %2 ]
  %exitcond = icmp ne i32 %.01, %0
  br i1 %exitcond, label %5, label %.loopexit

5:                                                ; preds = %4
  %6 = getelementptr inbounds ptr, ptr %1, i64 1
  %7 = load ptr, ptr %6, align 8
  %8 = call i32 @strcmp(ptr noundef %7, ptr noundef @.str.4) #7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %.loopexit

10:                                               ; preds = %5
  %11 = add nuw i32 %.01, 1
  br label %4, !llvm.loop !25

.loopexit:                                        ; preds = %5, %4, %2
  %.0 = phi i8 [ 0, %2 ], [ 1, %5 ], [ 0, %4 ]
  %12 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %13

13:                                               ; preds = %14, %.loopexit
  %.12 = phi i32 [ 0, %.loopexit ], [ %15, %14 ]
  %exitcond1 = icmp ne i32 %.12, 30
  br i1 %exitcond1, label %14, label %16

14:                                               ; preds = %13
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  %15 = add nuw nsw i32 %.12, 1
  br label %13, !llvm.loop !26

16:                                               ; preds = %13
  call void @free(ptr noundef %12)
  %17 = icmp ne i8 %.0, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = call ptr @__acrt_iob_func(i32 noundef 1)
  %20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.5, double noundef 0.000000e+00) #7
  br label %24

21:                                               ; preds = %16
  %22 = call ptr @__acrt_iob_func(i32 noundef 1)
  %23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.6, double noundef 0.000000e+00) #7
  br label %24

24:                                               ; preds = %21, %18
  %25 = call ptr @__acrt_iob_func(i32 noundef 1)
  %26 = call i32 @fflush(ptr noundef %25)
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
