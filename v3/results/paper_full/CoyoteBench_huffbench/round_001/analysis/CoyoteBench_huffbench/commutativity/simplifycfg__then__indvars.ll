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
  br i1 %exitcond, label %20, label %.preheader8

.preheader8:                                      ; preds = %19
  br label %28

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

28:                                               ; preds = %.preheader8, %36
  %.010 = phi i64 [ %.111, %36 ], [ 0, %.preheader8 ]
  %.13 = phi i64 [ %37, %36 ], [ 0, %.preheader8 ]
  %exitcond15 = icmp ne i64 %.13, 256
  br i1 %exitcond15, label %29, label %.preheader7

.preheader7:                                      ; preds = %28
  %.010.lcssa = phi i64 [ %.010, %28 ]
  br label %38

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

38:                                               ; preds = %.preheader7, %40
  %.24 = phi i64 [ %45, %40 ], [ %.010.lcssa, %.preheader7 ]
  %39 = icmp ugt i64 %.24, 0
  br i1 %39, label %40, label %.preheader6

.preheader6:                                      ; preds = %38
  br label %46

40:                                               ; preds = %38
  %41 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %42 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %43 = trunc i64 %.010.lcssa to i32
  %44 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef %41, ptr noundef %42, i32 noundef %43, i32 noundef %44)
  %45 = add i64 %.24, -1
  br label %38, !llvm.loop !11

46:                                               ; preds = %.preheader6, %48
  %.212 = phi i64 [ %49, %48 ], [ %.010.lcssa, %.preheader6 ]
  %47 = icmp ugt i64 %.212, 1
  br i1 %47, label %48, label %80

48:                                               ; preds = %46
  %49 = add i64 %.212, -1
  %50 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %51 = load i64, ptr %50, align 16
  %52 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %49
  %53 = load i64, ptr %52, align 8
  %54 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %53, ptr %54, align 16
  %55 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %56 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %57 = trunc i64 %49 to i32
  call void @heap_adjust(ptr noundef %55, ptr noundef %56, i32 noundef %57, i32 noundef 1)
  %58 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %59 = load i64, ptr %58, align 16
  %60 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %59
  %61 = load i64, ptr %60, align 8
  %62 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %51
  %63 = load i64, ptr %62, align 8
  %64 = add i64 %61, %63
  %65 = add i64 256, %49
  %66 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %65
  store i64 %64, ptr %66, align 8
  %67 = add i64 256, %49
  %68 = trunc i64 %67 to i32
  %69 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %51
  store i32 %68, ptr %69, align 4
  %70 = sub i64 -256, %49
  %71 = trunc i64 %70 to i32
  %72 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %73 = load i64, ptr %72, align 16
  %74 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %73
  store i32 %71, ptr %74, align 4
  %75 = add i64 256, %49
  %76 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %75, ptr %76, align 16
  %77 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %78 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %79 = trunc i64 %49 to i32
  call void @heap_adjust(ptr noundef %77, ptr noundef %78, i32 noundef %79, i32 noundef 1)
  br label %46, !llvm.loop !12

80:                                               ; preds = %46
  %.212.lcssa = phi i64 [ %.212, %46 ]
  %81 = add i64 256, %.212.lcssa
  %82 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %81
  store i32 0, ptr %82, align 4
  br label %83

83:                                               ; preds = %112, %80
  %.045 = phi i64 [ 0, %80 ], [ %.146, %112 ]
  %.042 = phi i64 [ 0, %80 ], [ %113, %112 ]
  %.039 = phi i64 [ 0, %80 ], [ %.140, %112 ]
  %exitcond16 = icmp ne i64 %.042, 256
  br i1 %exitcond16, label %84, label %114

84:                                               ; preds = %83
  %85 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.042
  %86 = load i64, ptr %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 0, ptr %89, align 4
  %90 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 0, ptr %90, align 1
  br label %112

91:                                               ; preds = %84
  %92 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.042
  %93 = load i32, ptr %92, align 4
  br label %94

94:                                               ; preds = %96, %91
  %.043 = phi i64 [ 0, %91 ], [ %.144, %96 ]
  %.037 = phi i32 [ %93, %91 ], [ %102, %96 ]
  %.05 = phi i64 [ 1, %91 ], [ %103, %96 ]
  %.3 = phi i64 [ 0, %91 ], [ %104, %96 ]
  %95 = icmp ne i32 %.037, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %94
  %97 = icmp slt i32 %.037, 0
  %98 = add i64 %.043, %.05
  %99 = sub nsw i32 0, %.037
  %.144 = select i1 %97, i64 %98, i64 %.043
  %.138 = select i1 %97, i32 %99, i32 %.037
  %100 = sext i32 %.138 to i64
  %101 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %100
  %102 = load i32, ptr %101, align 4
  %103 = shl i64 %.05, 1
  %104 = add i64 %.3, 1
  br label %94, !llvm.loop !13

105:                                              ; preds = %94
  %.043.lcssa = phi i64 [ %.043, %94 ]
  %.3.lcssa = phi i64 [ %.3, %94 ]
  %106 = trunc i64 %.043.lcssa to i32
  %107 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 %106, ptr %107, align 4
  %108 = trunc i64 %.3.lcssa to i8
  %109 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 %108, ptr %109, align 1
  %110 = icmp ugt i64 %.043.lcssa, %.045
  %spec.select = select i1 %110, i64 %.043.lcssa, i64 %.045
  %111 = icmp ugt i64 %.3.lcssa, %.039
  %.241 = select i1 %111, i64 %.3.lcssa, i64 %.039
  br label %112

112:                                              ; preds = %88, %105
  %.146 = phi i64 [ %spec.select, %105 ], [ %.045, %88 ]
  %.140 = phi i64 [ %.241, %105 ], [ %.039, %88 ]
  %113 = add nuw nsw i64 %.042, 1
  br label %83, !llvm.loop !14

114:                                              ; preds = %83
  %.045.lcssa = phi i64 [ %.045, %83 ]
  %.039.lcssa = phi i64 [ %.039, %83 ]
  %115 = icmp ugt i64 %.039.lcssa, 32
  br i1 %115, label %116, label %119

116:                                              ; preds = %114
  %117 = call ptr @__acrt_iob_func(i32 noundef 2)
  %118 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %117, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

119:                                              ; preds = %114
  %120 = icmp eq i64 %.045.lcssa, 0
  br i1 %120, label %121, label %.preheader5

.preheader5:                                      ; preds = %119
  br label %124

121:                                              ; preds = %119
  %122 = call ptr @__acrt_iob_func(i32 noundef 2)
  %123 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %122, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

124:                                              ; preds = %.preheader5, %168
  %.134 = phi ptr [ %169, %168 ], [ %0, %.preheader5 ]
  %.028 = phi i64 [ %.129.lcssa, %168 ], [ 0, %.preheader5 ]
  %.024 = phi i8 [ %.125.lcssa, %168 ], [ 0, %.preheader5 ]
  %.16 = phi i64 [ %170, %168 ], [ 0, %.preheader5 ]
  %.01 = phi i32 [ %.1.lcssa, %168 ], [ -1, %.preheader5 ]
  %exitcond17 = icmp ne i64 %.16, %1
  br i1 %exitcond17, label %125, label %171

125:                                              ; preds = %124
  %126 = load i8, ptr %.134, align 1
  %127 = zext i8 %126 to i64
  %128 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %127
  %129 = load i8, ptr %128, align 1
  %130 = zext i8 %129 to i32
  %131 = sub nsw i32 %130, 1
  %132 = shl i32 1, %131
  %133 = sext i32 %132 to i64
  br label %134

134:                                              ; preds = %155, %125
  %.129 = phi i64 [ %.028, %125 ], [ %.230, %155 ]
  %.125 = phi i8 [ %.024, %125 ], [ %.327, %155 ]
  %.015 = phi i64 [ %133, %125 ], [ %166, %155 ]
  %.4 = phi i64 [ 0, %125 ], [ %167, %155 ]
  %.1 = phi i32 [ %.01, %125 ], [ %.2, %155 ]
  %135 = load i8, ptr %.134, align 1
  %136 = zext i8 %135 to i64
  %137 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %136
  %138 = load i8, ptr %137, align 1
  %139 = zext i8 %138 to i64
  %140 = icmp samesign ult i64 %.4, %139
  br i1 %140, label %141, label %168

141:                                              ; preds = %134
  %142 = icmp eq i32 %.1, 7
  br i1 %142, label %143, label %150

143:                                              ; preds = %141
  %144 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %144, align 1
  %145 = add i64 %.129, 1
  %146 = icmp eq i64 %145, %1
  br i1 %146, label %147, label %155

147:                                              ; preds = %143
  %148 = call ptr @__acrt_iob_func(i32 noundef 2)
  %149 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %148, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

150:                                              ; preds = %141
  %151 = add nsw i32 %.1, 1
  %152 = sext i8 %.125 to i32
  %153 = shl i32 %152, 1
  %154 = trunc i32 %153 to i8
  br label %155

155:                                              ; preds = %143, %150
  %.230 = phi i64 [ %.129, %150 ], [ %145, %143 ]
  %.226 = phi i8 [ %154, %150 ], [ 0, %143 ]
  %.2 = phi i32 [ %151, %150 ], [ 0, %143 ]
  %156 = load i8, ptr %.134, align 1
  %157 = zext i8 %156 to i64
  %158 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %157
  %159 = load i32, ptr %158, align 4
  %160 = zext i32 %159 to i64
  %161 = and i64 %160, %.015
  %162 = icmp ne i64 %161, 0
  %163 = sext i8 %.226 to i32
  %164 = or i32 %163, 1
  %165 = trunc i32 %164 to i8
  %.327 = select i1 %162, i8 %165, i8 %.226
  %166 = lshr i64 %.015, 1
  %167 = add nuw nsw i64 %.4, 1
  br label %134, !llvm.loop !15

168:                                              ; preds = %134
  %.129.lcssa = phi i64 [ %.129, %134 ]
  %.125.lcssa = phi i8 [ %.125, %134 ]
  %.1.lcssa = phi i32 [ %.1, %134 ]
  %169 = getelementptr inbounds nuw i8, ptr %.134, i32 1
  %170 = add i64 %.16, 1
  br label %124, !llvm.loop !16

171:                                              ; preds = %124
  %.028.lcssa = phi i64 [ %.028, %124 ]
  %.024.lcssa = phi i8 [ %.024, %124 ]
  %.01.lcssa = phi i32 [ %.01, %124 ]
  %172 = sub nsw i32 7, %.01.lcssa
  %173 = sext i8 %.024.lcssa to i32
  %174 = shl i32 %173, %172
  %175 = trunc i32 %174 to i8
  %176 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %175, ptr %176, align 1
  %177 = getelementptr inbounds [256 x i32], ptr %8, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %177, i8 0, i64 1024, i1 false)
  %178 = getelementptr inbounds [256 x i8], ptr %9, i64 0, i64 0
  br label %179

179:                                              ; preds = %215, %171
  %.27 = phi i64 [ 0, %171 ], [ %216, %215 ]
  %.0 = phi ptr [ %178, %171 ], [ %182, %215 ]
  %exitcond18 = icmp ne i64 %.27, 256
  br i1 %exitcond18, label %180, label %.preheader4

.preheader4:                                      ; preds = %179
  br label %217

180:                                              ; preds = %179
  %181 = trunc i64 %.27 to i8
  store i8 %181, ptr %.0, align 1
  %182 = getelementptr inbounds nuw i8, ptr %.0, i32 1
  %183 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %184 = load i32, ptr %183, align 4
  %185 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %186 = load i8, ptr %185, align 1
  %187 = zext i8 %186 to i32
  %188 = or i32 %184, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %215

190:                                              ; preds = %180
  %191 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %192 = load i8, ptr %191, align 1
  %193 = zext i8 %192 to i32
  %194 = sub nsw i32 %193, 1
  %195 = shl i32 1, %194
  %196 = sext i32 %195 to i64
  br label %197

197:                                              ; preds = %202, %190
  %.019 = phi i32 [ 0, %190 ], [ %spec.select1, %202 ]
  %.116 = phi i64 [ %196, %190 ], [ %211, %202 ]
  %.5 = phi i64 [ 0, %190 ], [ %212, %202 ]
  %198 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %199 = load i8, ptr %198, align 1
  %200 = zext i8 %199 to i64
  %201 = icmp samesign ult i64 %.5, %200
  br i1 %201, label %202, label %213

202:                                              ; preds = %197
  %203 = mul i32 %.019, 2
  %204 = add i32 %203, 1
  %205 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %206 = load i32, ptr %205, align 4
  %207 = zext i32 %206 to i64
  %208 = and i64 %207, %.116
  %209 = icmp ne i64 %208, 0
  %210 = add i32 %204, 1
  %spec.select1 = select i1 %209, i32 %210, i32 %204
  %211 = lshr i64 %.116, 1
  %212 = add nuw nsw i64 %.5, 1
  br label %197, !llvm.loop !17

213:                                              ; preds = %197
  %.019.lcssa = phi i32 [ %.019, %197 ]
  %214 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.27
  store i32 %.019.lcssa, ptr %214, align 4
  br label %215

215:                                              ; preds = %180, %213
  %216 = add nuw nsw i64 %.27, 1
  br label %179, !llvm.loop !18

217:                                              ; preds = %.preheader4, %.critedge
  %.6 = phi i64 [ %242, %.critedge ], [ 1, %.preheader4 ]
  %exitcond19 = icmp ne i64 %.6, 256
  br i1 %exitcond19, label %218, label %.preheader3

.preheader3:                                      ; preds = %217
  br label %243

218:                                              ; preds = %217
  %219 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %220 = load i32, ptr %219, align 4
  %221 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %222 = load i8, ptr %221, align 1
  br label %223

223:                                              ; preds = %230, %218
  %.38 = phi i64 [ %.6, %218 ], [ %239, %230 ]
  %224 = icmp ne i64 %.38, 0
  br i1 %224, label %225, label %.critedge

225:                                              ; preds = %223
  %226 = sub nuw nsw i64 %.38, 1
  %227 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %226
  %228 = load i32, ptr %227, align 4
  %229 = icmp ugt i32 %228, %220
  br i1 %229, label %230, label %.critedge

230:                                              ; preds = %225
  %231 = sub nuw nsw i64 %.38, 1
  %232 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %231
  %233 = load i32, ptr %232, align 4
  %234 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %233, ptr %234, align 4
  %235 = sub nuw nsw i64 %.38, 1
  %236 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %235
  %237 = load i8, ptr %236, align 1
  %238 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %237, ptr %238, align 1
  %239 = add nsw i64 %.38, -1
  br label %223, !llvm.loop !19

.critedge:                                        ; preds = %223, %225
  %.38.lcssa = phi i64 [ 0, %223 ], [ %.38, %225 ]
  %240 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %220, ptr %240, align 4
  %241 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %222, ptr %241, align 1
  %242 = add nuw nsw i64 %.6, 1
  br label %217, !llvm.loop !20

243:                                              ; preds = %.preheader3, %247
  %.49 = phi i64 [ %248, %247 ], [ 0, %.preheader3 ]
  %244 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %245 = load i32, ptr %244, align 4
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %.preheader

.preheader:                                       ; preds = %243
  %.49.lcssa = phi i64 [ %.49, %243 ]
  br label %249

247:                                              ; preds = %243
  %248 = add i64 %.49, 1
  br label %243, !llvm.loop !21

249:                                              ; preds = %.preheader, %274
  %.235 = phi ptr [ %.336, %274 ], [ %0, %.preheader ]
  %.031 = phi ptr [ %.132, %274 ], [ %11, %.preheader ]
  %.221 = phi i32 [ %.423, %274 ], [ 0, %.preheader ]
  %.217 = phi i64 [ %.318, %274 ], [ 128, %.preheader ]
  %.313 = phi i64 [ %.414, %274 ], [ 0, %.preheader ]
  %.7 = phi i64 [ %.9, %274 ], [ %.49.lcssa, %.preheader ]
  %250 = icmp ult i64 %.313, %1
  br i1 %250, label %251, label %278

251:                                              ; preds = %249
  %252 = mul i32 %.221, 2
  %253 = add i32 %252, 1
  %254 = load i8, ptr %.031, align 1
  %255 = zext i8 %254 to i64
  %256 = and i64 %255, %.217
  %257 = icmp ne i64 %256, 0
  %258 = add i32 %253, 1
  %spec.select2 = select i1 %257, i32 %258, i32 %253
  br label %259

259:                                              ; preds = %263, %251
  %.8 = phi i64 [ %.7, %251 ], [ %264, %263 ]
  %260 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %261 = load i32, ptr %260, align 4
  %262 = icmp ult i32 %261, %spec.select2
  br i1 %262, label %263, label %265

263:                                              ; preds = %259
  %264 = add i64 %.8, 1
  br label %259, !llvm.loop !22

265:                                              ; preds = %259
  %.8.lcssa = phi i64 [ %.8, %259 ]
  %266 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8.lcssa
  %267 = load i32, ptr %266, align 4
  %268 = icmp eq i32 %spec.select2, %267
  br i1 %268, label %269, label %274

269:                                              ; preds = %265
  %270 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %271 = load i8, ptr %270, align 1
  store i8 %271, ptr %.235, align 1
  %272 = getelementptr inbounds nuw i8, ptr %.235, i32 1
  %273 = add nuw i64 %.313, 1
  br label %274

274:                                              ; preds = %269, %265
  %.336 = phi ptr [ %272, %269 ], [ %.235, %265 ]
  %.423 = phi i32 [ 0, %269 ], [ %spec.select2, %265 ]
  %.414 = phi i64 [ %273, %269 ], [ %.313, %265 ]
  %.9 = phi i64 [ %.49.lcssa, %269 ], [ %.8.lcssa, %265 ]
  %275 = icmp ugt i64 %.217, 1
  %276 = lshr i64 %.217, 1
  %277 = getelementptr inbounds nuw i8, ptr %.031, i32 1
  %.132 = select i1 %275, ptr %.031, ptr %277
  %.318 = select i1 %275, i64 %276, i64 128
  br label %249, !llvm.loop !23

278:                                              ; preds = %249
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
  br i1 %12, label %13, label %49

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
  br i1 %40, label %49, label %41

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

49:                                               ; preds = %30, %10
  %.01.lcssa = phi i32 [ %.01, %30 ], [ %.01, %10 ]
  %50 = sext i32 %9 to i64
  %51 = sub nsw i32 %.01.lcssa, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, ptr %1, i64 %52
  store i64 %50, ptr %53, align 8
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
  br i1 %3, label %.preheader, label %12

.preheader:                                       ; preds = %2
  %4 = getelementptr inbounds ptr, ptr %1, i64 1
  br label %5

5:                                                ; preds = %.preheader, %10
  %.01 = phi i32 [ %11, %10 ], [ 1, %.preheader ]
  %exitcond = icmp ne i32 %.01, %0
  br i1 %exitcond, label %6, label %.loopexit

6:                                                ; preds = %5
  %7 = load ptr, ptr %4, align 8
  %8 = call i32 @strcmp(ptr noundef %7, ptr noundef @.str.4) #7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %.loopexit

10:                                               ; preds = %6
  %11 = add nuw i32 %.01, 1
  br label %5, !llvm.loop !25

.loopexit:                                        ; preds = %6, %5
  %.0.ph = phi i8 [ 1, %6 ], [ 0, %5 ]
  br label %12

12:                                               ; preds = %.loopexit, %2
  %.0 = phi i8 [ 0, %2 ], [ %.0.ph, %.loopexit ]
  %13 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %14

14:                                               ; preds = %15, %12
  %.12 = phi i32 [ 0, %12 ], [ %16, %15 ]
  %exitcond1 = icmp ne i32 %.12, 30
  br i1 %exitcond1, label %15, label %17

15:                                               ; preds = %14
  call void @compdecomp(ptr noundef %13, i64 noundef 10000000)
  %16 = add nuw nsw i32 %.12, 1
  br label %14, !llvm.loop !26

17:                                               ; preds = %14
  call void @free(ptr noundef %13)
  %18 = icmp ne i8 %.0, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = call ptr @__acrt_iob_func(i32 noundef 1)
  %21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.5, double noundef 0.000000e+00) #7
  br label %25

22:                                               ; preds = %17
  %23 = call ptr @__acrt_iob_func(i32 noundef 1)
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.6, double noundef 0.000000e+00) #7
  br label %25

25:                                               ; preds = %22, %19
  %26 = call ptr @__acrt_iob_func(i32 noundef 1)
  %27 = call i32 @fflush(ptr noundef %26)
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
