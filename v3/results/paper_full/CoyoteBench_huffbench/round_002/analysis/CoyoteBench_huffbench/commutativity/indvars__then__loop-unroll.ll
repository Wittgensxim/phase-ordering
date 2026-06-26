; ModuleID = 'results\paper_full\CoyoteBench_huffbench\round_001\output.ll'
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
  br i1 %exitcond, label %13, label %.preheader6

.preheader6:                                      ; preds = %12
  br label %21

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

21:                                               ; preds = %38, %.preheader6
  %.010 = phi i64 [ 0, %.preheader6 ], [ %.111.1, %38 ]
  %.13 = phi i64 [ 0, %.preheader6 ], [ %39, %38 ]
  %exitcond13 = icmp ne i64 %.13, 256
  br i1 %exitcond13, label %22, label %.preheader5

.preheader5:                                      ; preds = %21
  %.010.lcssa = phi i64 [ %.010, %21 ]
  br label %40

22:                                               ; preds = %21
  %23 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.13
  %24 = load i64, ptr %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.010
  store i64 %.13, ptr %27, align 8
  %28 = add i64 %.010, 1
  br label %29

29:                                               ; preds = %26, %22
  %.111 = phi i64 [ %28, %26 ], [ %.010, %22 ]
  %30 = add nuw nsw i64 %.13, 1
  br label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %30
  %33 = load i64, ptr %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.111
  store i64 %30, ptr %36, align 8
  %37 = add i64 %.111, 1
  br label %38

38:                                               ; preds = %35, %31
  %.111.1 = phi i64 [ %37, %35 ], [ %.111, %31 ]
  %39 = add nuw nsw i64 %.13, 2
  br label %21, !llvm.loop !10

40:                                               ; preds = %.preheader5, %42
  %.24 = phi i64 [ %45, %42 ], [ %.010.lcssa, %.preheader5 ]
  %41 = icmp ugt i64 %.24, 0
  br i1 %41, label %42, label %.preheader4

.preheader4:                                      ; preds = %40
  br label %46

42:                                               ; preds = %40
  %43 = trunc i64 %.010.lcssa to i32
  %44 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %43, i32 noundef %44)
  %45 = add i64 %.24, -1
  br label %40, !llvm.loop !11

46:                                               ; preds = %.preheader4, %48
  %.212 = phi i64 [ %49, %48 ], [ %.010.lcssa, %.preheader4 ]
  %47 = icmp ugt i64 %.212, 1
  br i1 %47, label %48, label %68

48:                                               ; preds = %46
  %49 = add i64 %.212, -1
  %50 = load i64, ptr %4, align 16
  %51 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %49
  %52 = load i64, ptr %51, align 8
  store i64 %52, ptr %4, align 16
  %53 = trunc i64 %49 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %53, i32 noundef 1)
  %54 = load i64, ptr %4, align 16
  %55 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %54
  %56 = load i64, ptr %55, align 8
  %57 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %50
  %58 = load i64, ptr %57, align 8
  %59 = add i64 %56, %58
  %60 = add i64 256, %49
  %61 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %60
  store i64 %59, ptr %61, align 8
  %62 = trunc i64 %60 to i32
  %63 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %50
  store i32 %62, ptr %63, align 4
  %64 = sub i64 -256, %49
  %65 = trunc i64 %64 to i32
  %66 = load i64, ptr %4, align 16
  %67 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %66
  store i32 %65, ptr %67, align 4
  store i64 %60, ptr %4, align 16
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %53, i32 noundef 1)
  br label %46, !llvm.loop !12

68:                                               ; preds = %46
  %.212.lcssa = phi i64 [ %.212, %46 ]
  %69 = add i64 256, %.212.lcssa
  %70 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %69
  store i32 0, ptr %70, align 4
  br label %71

71:                                               ; preds = %100, %68
  %.045 = phi i64 [ 0, %68 ], [ %.146, %100 ]
  %.042 = phi i64 [ 0, %68 ], [ %101, %100 ]
  %.039 = phi i64 [ 0, %68 ], [ %.140, %100 ]
  %exitcond14 = icmp ne i64 %.042, 256
  br i1 %exitcond14, label %72, label %102

72:                                               ; preds = %71
  %73 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.042
  %74 = load i64, ptr %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 0, ptr %77, align 4
  %78 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 0, ptr %78, align 1
  br label %100

79:                                               ; preds = %72
  %80 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.042
  %81 = load i32, ptr %80, align 4
  br label %82

82:                                               ; preds = %84, %79
  %.043 = phi i64 [ 0, %79 ], [ %.144, %84 ]
  %.037 = phi i32 [ %81, %79 ], [ %90, %84 ]
  %.05 = phi i64 [ 1, %79 ], [ %91, %84 ]
  %.3 = phi i64 [ 0, %79 ], [ %92, %84 ]
  %83 = icmp ne i32 %.037, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %82
  %85 = icmp slt i32 %.037, 0
  %86 = add i64 %.043, %.05
  %87 = sub nsw i32 0, %.037
  %.144 = select i1 %85, i64 %86, i64 %.043
  %.138 = select i1 %85, i32 %87, i32 %.037
  %88 = sext i32 %.138 to i64
  %89 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %88
  %90 = load i32, ptr %89, align 4
  %91 = shl i64 %.05, 1
  %92 = add i64 %.3, 1
  br label %82, !llvm.loop !13

93:                                               ; preds = %82
  %.043.lcssa = phi i64 [ %.043, %82 ]
  %.3.lcssa = phi i64 [ %.3, %82 ]
  %94 = trunc i64 %.043.lcssa to i32
  %95 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 %94, ptr %95, align 4
  %96 = trunc i64 %.3.lcssa to i8
  %97 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 %96, ptr %97, align 1
  %98 = icmp ugt i64 %.043.lcssa, %.045
  %spec.select = select i1 %98, i64 %.043.lcssa, i64 %.045
  %99 = icmp ugt i64 %.3.lcssa, %.039
  %.241 = select i1 %99, i64 %.3.lcssa, i64 %.039
  br label %100

100:                                              ; preds = %93, %76
  %.146 = phi i64 [ %spec.select, %93 ], [ %.045, %76 ]
  %.140 = phi i64 [ %.241, %93 ], [ %.039, %76 ]
  %101 = add nuw nsw i64 %.042, 1
  br label %71, !llvm.loop !14

102:                                              ; preds = %71
  %.045.lcssa = phi i64 [ %.045, %71 ]
  %.039.lcssa = phi i64 [ %.039, %71 ]
  %103 = icmp ugt i64 %.039.lcssa, 32
  br i1 %103, label %104, label %107

104:                                              ; preds = %102
  %105 = call ptr @__acrt_iob_func(i32 noundef 2)
  %106 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %105, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

107:                                              ; preds = %102
  %108 = icmp eq i64 %.045.lcssa, 0
  br i1 %108, label %109, label %.preheader3

.preheader3:                                      ; preds = %107
  br label %112

109:                                              ; preds = %107
  %110 = call ptr @__acrt_iob_func(i32 noundef 2)
  %111 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

112:                                              ; preds = %.preheader3, %156
  %.134 = phi ptr [ %157, %156 ], [ %0, %.preheader3 ]
  %.028 = phi i64 [ %.129.lcssa, %156 ], [ 0, %.preheader3 ]
  %.024 = phi i8 [ %.125.lcssa, %156 ], [ 0, %.preheader3 ]
  %.16 = phi i64 [ %158, %156 ], [ 0, %.preheader3 ]
  %.01 = phi i32 [ %.1.lcssa, %156 ], [ -1, %.preheader3 ]
  %exitcond15 = icmp ne i64 %.16, %1
  br i1 %exitcond15, label %113, label %159

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

122:                                              ; preds = %143, %113
  %.129 = phi i64 [ %.028, %113 ], [ %.230, %143 ]
  %.125 = phi i8 [ %.024, %113 ], [ %.327, %143 ]
  %.015 = phi i64 [ %121, %113 ], [ %154, %143 ]
  %.4 = phi i64 [ 0, %113 ], [ %155, %143 ]
  %.1 = phi i32 [ %.01, %113 ], [ %.2, %143 ]
  %123 = load i8, ptr %.134, align 1
  %124 = zext i8 %123 to i64
  %125 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %124
  %126 = load i8, ptr %125, align 1
  %127 = zext i8 %126 to i64
  %128 = icmp samesign ult i64 %.4, %127
  br i1 %128, label %129, label %156

129:                                              ; preds = %122
  %130 = icmp eq i32 %.1, 7
  br i1 %130, label %131, label %138

131:                                              ; preds = %129
  %132 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %132, align 1
  %133 = add i64 %.129, 1
  %134 = icmp eq i64 %133, %1
  br i1 %134, label %135, label %143

135:                                              ; preds = %131
  %136 = call ptr @__acrt_iob_func(i32 noundef 2)
  %137 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %136, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

138:                                              ; preds = %129
  %139 = add nsw i32 %.1, 1
  %140 = sext i8 %.125 to i32
  %141 = shl i32 %140, 1
  %142 = trunc i32 %141 to i8
  br label %143

143:                                              ; preds = %138, %131
  %.230 = phi i64 [ %.129, %138 ], [ %133, %131 ]
  %.226 = phi i8 [ %142, %138 ], [ 0, %131 ]
  %.2 = phi i32 [ %139, %138 ], [ 0, %131 ]
  %144 = load i8, ptr %.134, align 1
  %145 = zext i8 %144 to i64
  %146 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %145
  %147 = load i32, ptr %146, align 4
  %148 = zext i32 %147 to i64
  %149 = and i64 %148, %.015
  %150 = icmp ne i64 %149, 0
  %151 = sext i8 %.226 to i32
  %152 = or i32 %151, 1
  %153 = trunc i32 %152 to i8
  %.327 = select i1 %150, i8 %153, i8 %.226
  %154 = lshr i64 %.015, 1
  %155 = add nuw nsw i64 %.4, 1
  br label %122, !llvm.loop !15

156:                                              ; preds = %122
  %.129.lcssa = phi i64 [ %.129, %122 ]
  %.125.lcssa = phi i8 [ %.125, %122 ]
  %.1.lcssa = phi i32 [ %.1, %122 ]
  %157 = getelementptr inbounds nuw i8, ptr %.134, i32 1
  %158 = add i64 %.16, 1
  br label %112, !llvm.loop !16

159:                                              ; preds = %112
  %.028.lcssa = phi i64 [ %.028, %112 ]
  %.024.lcssa = phi i8 [ %.024, %112 ]
  %.01.lcssa = phi i32 [ %.01, %112 ]
  %160 = sub nsw i32 7, %.01.lcssa
  %161 = sext i8 %.024.lcssa to i32
  %162 = shl i32 %161, %160
  %163 = trunc i32 %162 to i8
  %164 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %163, ptr %164, align 1
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 1024, i1 false)
  br label %165

165:                                              ; preds = %196, %159
  %.27 = phi i64 [ 0, %159 ], [ %197, %196 ]
  %.0 = phi ptr [ %9, %159 ], [ %168, %196 ]
  %exitcond16 = icmp ne i64 %.27, 256
  br i1 %exitcond16, label %166, label %.preheader2

.preheader2:                                      ; preds = %165
  br label %198

166:                                              ; preds = %165
  %167 = trunc i64 %.27 to i8
  store i8 %167, ptr %.0, align 1
  %168 = getelementptr inbounds nuw i8, ptr %.0, i32 1
  %169 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %170 = load i32, ptr %169, align 4
  %171 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %172 = load i8, ptr %171, align 1
  %173 = zext i8 %172 to i32
  %174 = or i32 %170, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %196

176:                                              ; preds = %166
  %177 = sub nsw i32 %173, 1
  %178 = shl i32 1, %177
  %179 = sext i32 %178 to i64
  br label %180

180:                                              ; preds = %184, %176
  %.019 = phi i32 [ 0, %176 ], [ %spec.select1, %184 ]
  %.116 = phi i64 [ %179, %176 ], [ %192, %184 ]
  %.5 = phi i64 [ 0, %176 ], [ %193, %184 ]
  %181 = load i8, ptr %171, align 1
  %182 = zext i8 %181 to i64
  %183 = icmp samesign ult i64 %.5, %182
  br i1 %183, label %184, label %194

184:                                              ; preds = %180
  %185 = mul i32 %.019, 2
  %186 = add i32 %185, 1
  %187 = load i32, ptr %169, align 4
  %188 = zext i32 %187 to i64
  %189 = and i64 %188, %.116
  %190 = icmp ne i64 %189, 0
  %191 = add i32 %186, 1
  %spec.select1 = select i1 %190, i32 %191, i32 %186
  %192 = lshr i64 %.116, 1
  %193 = add nuw nsw i64 %.5, 1
  br label %180, !llvm.loop !17

194:                                              ; preds = %180
  %.019.lcssa = phi i32 [ %.019, %180 ]
  %195 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.27
  store i32 %.019.lcssa, ptr %195, align 4
  br label %196

196:                                              ; preds = %194, %166
  %197 = add nuw nsw i64 %.27, 1
  br label %165, !llvm.loop !18

198:                                              ; preds = %.preheader2, %.critedge
  %.6 = phi i64 [ %219, %.critedge ], [ 1, %.preheader2 ]
  %exitcond17 = icmp ne i64 %.6, 256
  br i1 %exitcond17, label %199, label %.preheader1

.preheader1:                                      ; preds = %198
  br label %220

199:                                              ; preds = %198
  %200 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %201 = load i32, ptr %200, align 4
  %202 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %203 = load i8, ptr %202, align 1
  br label %204

204:                                              ; preds = %211, %199
  %.38 = phi i64 [ %.6, %199 ], [ %216, %211 ]
  %205 = icmp ne i64 %.38, 0
  br i1 %205, label %206, label %.critedge

206:                                              ; preds = %204
  %207 = sub nuw nsw i64 %.38, 1
  %208 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %207
  %209 = load i32, ptr %208, align 4
  %210 = icmp ugt i32 %209, %201
  br i1 %210, label %211, label %.critedge

211:                                              ; preds = %206
  %212 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %209, ptr %212, align 4
  %213 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %207
  %214 = load i8, ptr %213, align 1
  %215 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %214, ptr %215, align 1
  %216 = add nsw i64 %.38, -1
  br label %204, !llvm.loop !19

.critedge:                                        ; preds = %206, %204
  %.38.lcssa = phi i64 [ %.38, %206 ], [ 0, %204 ]
  %217 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %201, ptr %217, align 4
  %218 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %203, ptr %218, align 1
  %219 = add nuw nsw i64 %.6, 1
  br label %198, !llvm.loop !20

220:                                              ; preds = %.preheader1, %224
  %.49 = phi i64 [ %225, %224 ], [ 0, %.preheader1 ]
  %221 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %222 = load i32, ptr %221, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %.preheader

.preheader:                                       ; preds = %220
  %.49.lcssa = phi i64 [ %.49, %220 ]
  br label %226

224:                                              ; preds = %220
  %225 = add i64 %.49, 1
  br label %220, !llvm.loop !21

226:                                              ; preds = %.preheader, %249
  %.235 = phi ptr [ %.336, %249 ], [ %0, %.preheader ]
  %.031 = phi ptr [ %.132, %249 ], [ %11, %.preheader ]
  %.221 = phi i32 [ %.423, %249 ], [ 0, %.preheader ]
  %.217 = phi i64 [ %.318, %249 ], [ 128, %.preheader ]
  %.313 = phi i64 [ %.414, %249 ], [ 0, %.preheader ]
  %.7 = phi i64 [ %.9, %249 ], [ %.49.lcssa, %.preheader ]
  %227 = icmp ult i64 %.313, %1
  br i1 %227, label %228, label %253

228:                                              ; preds = %226
  %229 = mul i32 %.221, 2
  %230 = add i32 %229, 1
  %231 = load i8, ptr %.031, align 1
  %232 = zext i8 %231 to i64
  %233 = and i64 %232, %.217
  %234 = icmp ne i64 %233, 0
  %235 = add i32 %230, 1
  %spec.select2 = select i1 %234, i32 %235, i32 %230
  br label %236

236:                                              ; preds = %240, %228
  %.8 = phi i64 [ %.7, %228 ], [ %241, %240 ]
  %237 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %238 = load i32, ptr %237, align 4
  %239 = icmp ult i32 %238, %spec.select2
  br i1 %239, label %240, label %242

240:                                              ; preds = %236
  %241 = add i64 %.8, 1
  br label %236, !llvm.loop !22

242:                                              ; preds = %236
  %.8.lcssa = phi i64 [ %.8, %236 ]
  %.lcssa = phi i32 [ %238, %236 ]
  %243 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %243, label %244, label %249

244:                                              ; preds = %242
  %245 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %246 = load i8, ptr %245, align 1
  store i8 %246, ptr %.235, align 1
  %247 = getelementptr inbounds nuw i8, ptr %.235, i32 1
  %248 = add nuw i64 %.313, 1
  br label %249

249:                                              ; preds = %244, %242
  %.336 = phi ptr [ %247, %244 ], [ %.235, %242 ]
  %.423 = phi i32 [ 0, %244 ], [ %spec.select2, %242 ]
  %.414 = phi i64 [ %248, %244 ], [ %.313, %242 ]
  %.9 = phi i64 [ %.49.lcssa, %244 ], [ %.8.lcssa, %242 ]
  %250 = icmp ugt i64 %.217, 1
  %251 = lshr i64 %.217, 1
  %252 = getelementptr inbounds nuw i8, ptr %.031, i32 1
  %.132 = select i1 %250, ptr %.031, ptr %252
  %.318 = select i1 %250, i64 %251, i64 128
  br label %226, !llvm.loop !23

253:                                              ; preds = %226
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
  br i1 %12, label %13, label %45

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
  br i1 %40, label %45, label %41

41:                                               ; preds = %30
  %42 = sub nsw i32 %.01, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, ptr %1, i64 %43
  store i64 %37, ptr %44, align 8
  br label %10, !llvm.loop !24

45:                                               ; preds = %30, %10
  %.01.lcssa = phi i32 [ %.01, %30 ], [ %.01, %10 ]
  %46 = sext i32 %9 to i64
  %47 = sub nsw i32 %.01.lcssa, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, ptr %1, i64 %48
  store i64 %46, ptr %49, align 8
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

.loopexit:                                        ; preds = %5, %6
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
