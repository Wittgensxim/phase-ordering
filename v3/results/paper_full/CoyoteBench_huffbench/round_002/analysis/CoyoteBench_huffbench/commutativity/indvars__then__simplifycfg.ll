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

.preheader6:                                      ; preds = %12, %28
  %.010 = phi i64 [ %.111, %28 ], [ 0, %12 ]
  %.13 = phi i64 [ %29, %28 ], [ 0, %12 ]
  %exitcond13 = icmp ne i64 %.13, 256
  br i1 %exitcond13, label %21, label %.preheader5

.preheader5:                                      ; preds = %.preheader6
  %.010.lcssa = phi i64 [ %.010, %.preheader6 ]
  br label %30

21:                                               ; preds = %.preheader6
  %22 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.13
  %23 = load i64, ptr %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.010
  store i64 %.13, ptr %26, align 8
  %27 = add i64 %.010, 1
  br label %28

28:                                               ; preds = %25, %21
  %.111 = phi i64 [ %27, %25 ], [ %.010, %21 ]
  %29 = add nuw nsw i64 %.13, 1
  br label %.preheader6, !llvm.loop !10

30:                                               ; preds = %.preheader5, %32
  %.24 = phi i64 [ %35, %32 ], [ %.010.lcssa, %.preheader5 ]
  %31 = icmp ugt i64 %.24, 0
  br i1 %31, label %32, label %.preheader4

32:                                               ; preds = %30
  %33 = trunc i64 %.010.lcssa to i32
  %34 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %33, i32 noundef %34)
  %35 = add i64 %.24, -1
  br label %30, !llvm.loop !11

.preheader4:                                      ; preds = %30, %37
  %.212 = phi i64 [ %38, %37 ], [ %.010.lcssa, %30 ]
  %36 = icmp ugt i64 %.212, 1
  br i1 %36, label %37, label %57

37:                                               ; preds = %.preheader4
  %38 = add i64 %.212, -1
  %39 = load i64, ptr %4, align 16
  %40 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %38
  %41 = load i64, ptr %40, align 8
  store i64 %41, ptr %4, align 16
  %42 = trunc i64 %38 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %42, i32 noundef 1)
  %43 = load i64, ptr %4, align 16
  %44 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %43
  %45 = load i64, ptr %44, align 8
  %46 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %39
  %47 = load i64, ptr %46, align 8
  %48 = add i64 %45, %47
  %49 = add i64 256, %38
  %50 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %49
  store i64 %48, ptr %50, align 8
  %51 = trunc i64 %49 to i32
  %52 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %39
  store i32 %51, ptr %52, align 4
  %53 = sub i64 -256, %38
  %54 = trunc i64 %53 to i32
  %55 = load i64, ptr %4, align 16
  %56 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %55
  store i32 %54, ptr %56, align 4
  store i64 %49, ptr %4, align 16
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %42, i32 noundef 1)
  br label %.preheader4, !llvm.loop !12

57:                                               ; preds = %.preheader4
  %.212.lcssa = phi i64 [ %.212, %.preheader4 ]
  %58 = add i64 256, %.212.lcssa
  %59 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %58
  store i32 0, ptr %59, align 4
  br label %60

60:                                               ; preds = %89, %57
  %.045 = phi i64 [ 0, %57 ], [ %.146, %89 ]
  %.042 = phi i64 [ 0, %57 ], [ %90, %89 ]
  %.039 = phi i64 [ 0, %57 ], [ %.140, %89 ]
  %exitcond14 = icmp ne i64 %.042, 256
  br i1 %exitcond14, label %61, label %91

61:                                               ; preds = %60
  %62 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.042
  %63 = load i64, ptr %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 0, ptr %66, align 4
  %67 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 0, ptr %67, align 1
  br label %89

68:                                               ; preds = %61
  %69 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.042
  %70 = load i32, ptr %69, align 4
  br label %71

71:                                               ; preds = %73, %68
  %.043 = phi i64 [ 0, %68 ], [ %.144, %73 ]
  %.037 = phi i32 [ %70, %68 ], [ %79, %73 ]
  %.05 = phi i64 [ 1, %68 ], [ %80, %73 ]
  %.3 = phi i64 [ 0, %68 ], [ %81, %73 ]
  %72 = icmp ne i32 %.037, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %71
  %74 = icmp slt i32 %.037, 0
  %75 = add i64 %.043, %.05
  %76 = sub nsw i32 0, %.037
  %.144 = select i1 %74, i64 %75, i64 %.043
  %.138 = select i1 %74, i32 %76, i32 %.037
  %77 = sext i32 %.138 to i64
  %78 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4
  %80 = shl i64 %.05, 1
  %81 = add i64 %.3, 1
  br label %71, !llvm.loop !13

82:                                               ; preds = %71
  %.043.lcssa = phi i64 [ %.043, %71 ]
  %.3.lcssa = phi i64 [ %.3, %71 ]
  %83 = trunc i64 %.043.lcssa to i32
  %84 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 %83, ptr %84, align 4
  %85 = trunc i64 %.3.lcssa to i8
  %86 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 %85, ptr %86, align 1
  %87 = icmp ugt i64 %.043.lcssa, %.045
  %spec.select = select i1 %87, i64 %.043.lcssa, i64 %.045
  %88 = icmp ugt i64 %.3.lcssa, %.039
  %.241 = select i1 %88, i64 %.3.lcssa, i64 %.039
  br label %89

89:                                               ; preds = %82, %65
  %.146 = phi i64 [ %spec.select, %82 ], [ %.045, %65 ]
  %.140 = phi i64 [ %.241, %82 ], [ %.039, %65 ]
  %90 = add nuw nsw i64 %.042, 1
  br label %60, !llvm.loop !14

91:                                               ; preds = %60
  %.045.lcssa = phi i64 [ %.045, %60 ]
  %.039.lcssa = phi i64 [ %.039, %60 ]
  %92 = icmp ugt i64 %.039.lcssa, 32
  br i1 %92, label %93, label %96

93:                                               ; preds = %91
  %94 = call ptr @__acrt_iob_func(i32 noundef 2)
  %95 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %94, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

96:                                               ; preds = %91
  %97 = icmp eq i64 %.045.lcssa, 0
  br i1 %97, label %98, label %.preheader3

98:                                               ; preds = %96
  %99 = call ptr @__acrt_iob_func(i32 noundef 2)
  %100 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %99, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

.preheader3:                                      ; preds = %96, %144
  %.134 = phi ptr [ %145, %144 ], [ %0, %96 ]
  %.028 = phi i64 [ %.129.lcssa, %144 ], [ 0, %96 ]
  %.024 = phi i8 [ %.125.lcssa, %144 ], [ 0, %96 ]
  %.16 = phi i64 [ %146, %144 ], [ 0, %96 ]
  %.01 = phi i32 [ %.1.lcssa, %144 ], [ -1, %96 ]
  %exitcond15 = icmp ne i64 %.16, %1
  br i1 %exitcond15, label %101, label %147

101:                                              ; preds = %.preheader3
  %102 = load i8, ptr %.134, align 1
  %103 = zext i8 %102 to i64
  %104 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %103
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i32
  %107 = sub nsw i32 %106, 1
  %108 = shl i32 1, %107
  %109 = sext i32 %108 to i64
  br label %110

110:                                              ; preds = %131, %101
  %.129 = phi i64 [ %.028, %101 ], [ %.230, %131 ]
  %.125 = phi i8 [ %.024, %101 ], [ %.327, %131 ]
  %.015 = phi i64 [ %109, %101 ], [ %142, %131 ]
  %.4 = phi i64 [ 0, %101 ], [ %143, %131 ]
  %.1 = phi i32 [ %.01, %101 ], [ %.2, %131 ]
  %111 = load i8, ptr %.134, align 1
  %112 = zext i8 %111 to i64
  %113 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %112
  %114 = load i8, ptr %113, align 1
  %115 = zext i8 %114 to i64
  %116 = icmp samesign ult i64 %.4, %115
  br i1 %116, label %117, label %144

117:                                              ; preds = %110
  %118 = icmp eq i32 %.1, 7
  br i1 %118, label %119, label %126

119:                                              ; preds = %117
  %120 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %120, align 1
  %121 = add i64 %.129, 1
  %122 = icmp eq i64 %121, %1
  br i1 %122, label %123, label %131

123:                                              ; preds = %119
  %124 = call ptr @__acrt_iob_func(i32 noundef 2)
  %125 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %124, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

126:                                              ; preds = %117
  %127 = add nsw i32 %.1, 1
  %128 = sext i8 %.125 to i32
  %129 = shl i32 %128, 1
  %130 = trunc i32 %129 to i8
  br label %131

131:                                              ; preds = %126, %119
  %.230 = phi i64 [ %.129, %126 ], [ %121, %119 ]
  %.226 = phi i8 [ %130, %126 ], [ 0, %119 ]
  %.2 = phi i32 [ %127, %126 ], [ 0, %119 ]
  %132 = load i8, ptr %.134, align 1
  %133 = zext i8 %132 to i64
  %134 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %133
  %135 = load i32, ptr %134, align 4
  %136 = zext i32 %135 to i64
  %137 = and i64 %136, %.015
  %138 = icmp ne i64 %137, 0
  %139 = sext i8 %.226 to i32
  %140 = or i32 %139, 1
  %141 = trunc i32 %140 to i8
  %.327 = select i1 %138, i8 %141, i8 %.226
  %142 = lshr i64 %.015, 1
  %143 = add nuw nsw i64 %.4, 1
  br label %110, !llvm.loop !15

144:                                              ; preds = %110
  %.129.lcssa = phi i64 [ %.129, %110 ]
  %.125.lcssa = phi i8 [ %.125, %110 ]
  %.1.lcssa = phi i32 [ %.1, %110 ]
  %145 = getelementptr inbounds nuw i8, ptr %.134, i32 1
  %146 = add i64 %.16, 1
  br label %.preheader3, !llvm.loop !16

147:                                              ; preds = %.preheader3
  %.028.lcssa = phi i64 [ %.028, %.preheader3 ]
  %.024.lcssa = phi i8 [ %.024, %.preheader3 ]
  %.01.lcssa = phi i32 [ %.01, %.preheader3 ]
  %148 = sub nsw i32 7, %.01.lcssa
  %149 = sext i8 %.024.lcssa to i32
  %150 = shl i32 %149, %148
  %151 = trunc i32 %150 to i8
  %152 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %151, ptr %152, align 1
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 1024, i1 false)
  br label %153

153:                                              ; preds = %184, %147
  %.27 = phi i64 [ 0, %147 ], [ %185, %184 ]
  %.0 = phi ptr [ %9, %147 ], [ %156, %184 ]
  %exitcond16 = icmp ne i64 %.27, 256
  br i1 %exitcond16, label %154, label %.preheader2

154:                                              ; preds = %153
  %155 = trunc i64 %.27 to i8
  store i8 %155, ptr %.0, align 1
  %156 = getelementptr inbounds nuw i8, ptr %.0, i32 1
  %157 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %158 = load i32, ptr %157, align 4
  %159 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %160 = load i8, ptr %159, align 1
  %161 = zext i8 %160 to i32
  %162 = or i32 %158, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %184

164:                                              ; preds = %154
  %165 = sub nsw i32 %161, 1
  %166 = shl i32 1, %165
  %167 = sext i32 %166 to i64
  br label %168

168:                                              ; preds = %172, %164
  %.019 = phi i32 [ 0, %164 ], [ %spec.select1, %172 ]
  %.116 = phi i64 [ %167, %164 ], [ %180, %172 ]
  %.5 = phi i64 [ 0, %164 ], [ %181, %172 ]
  %169 = load i8, ptr %159, align 1
  %170 = zext i8 %169 to i64
  %171 = icmp samesign ult i64 %.5, %170
  br i1 %171, label %172, label %182

172:                                              ; preds = %168
  %173 = mul i32 %.019, 2
  %174 = add i32 %173, 1
  %175 = load i32, ptr %157, align 4
  %176 = zext i32 %175 to i64
  %177 = and i64 %176, %.116
  %178 = icmp ne i64 %177, 0
  %179 = add i32 %174, 1
  %spec.select1 = select i1 %178, i32 %179, i32 %174
  %180 = lshr i64 %.116, 1
  %181 = add nuw nsw i64 %.5, 1
  br label %168, !llvm.loop !17

182:                                              ; preds = %168
  %.019.lcssa = phi i32 [ %.019, %168 ]
  %183 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.27
  store i32 %.019.lcssa, ptr %183, align 4
  br label %184

184:                                              ; preds = %182, %154
  %185 = add nuw nsw i64 %.27, 1
  br label %153, !llvm.loop !18

.preheader2:                                      ; preds = %153, %.critedge
  %.6 = phi i64 [ %206, %.critedge ], [ 1, %153 ]
  %exitcond17 = icmp ne i64 %.6, 256
  br i1 %exitcond17, label %186, label %.preheader1

186:                                              ; preds = %.preheader2
  %187 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %188 = load i32, ptr %187, align 4
  %189 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %190 = load i8, ptr %189, align 1
  br label %191

191:                                              ; preds = %198, %186
  %.38 = phi i64 [ %.6, %186 ], [ %203, %198 ]
  %192 = icmp ne i64 %.38, 0
  br i1 %192, label %193, label %.critedge

193:                                              ; preds = %191
  %194 = sub nuw nsw i64 %.38, 1
  %195 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %194
  %196 = load i32, ptr %195, align 4
  %197 = icmp ugt i32 %196, %188
  br i1 %197, label %198, label %.critedge

198:                                              ; preds = %193
  %199 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %196, ptr %199, align 4
  %200 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %194
  %201 = load i8, ptr %200, align 1
  %202 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %201, ptr %202, align 1
  %203 = add nsw i64 %.38, -1
  br label %191, !llvm.loop !19

.critedge:                                        ; preds = %193, %191
  %.38.lcssa = phi i64 [ %.38, %193 ], [ 0, %191 ]
  %204 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %188, ptr %204, align 4
  %205 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %190, ptr %205, align 1
  %206 = add nuw nsw i64 %.6, 1
  br label %.preheader2, !llvm.loop !20

.preheader1:                                      ; preds = %.preheader2, %210
  %.49 = phi i64 [ %211, %210 ], [ 0, %.preheader2 ]
  %207 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %208 = load i32, ptr %207, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %.preheader

.preheader:                                       ; preds = %.preheader1
  %.49.lcssa = phi i64 [ %.49, %.preheader1 ]
  br label %212

210:                                              ; preds = %.preheader1
  %211 = add i64 %.49, 1
  br label %.preheader1, !llvm.loop !21

212:                                              ; preds = %.preheader, %235
  %.235 = phi ptr [ %.336, %235 ], [ %0, %.preheader ]
  %.031 = phi ptr [ %.132, %235 ], [ %11, %.preheader ]
  %.221 = phi i32 [ %.423, %235 ], [ 0, %.preheader ]
  %.217 = phi i64 [ %.318, %235 ], [ 128, %.preheader ]
  %.313 = phi i64 [ %.414, %235 ], [ 0, %.preheader ]
  %.7 = phi i64 [ %.9, %235 ], [ %.49.lcssa, %.preheader ]
  %213 = icmp ult i64 %.313, %1
  br i1 %213, label %214, label %239

214:                                              ; preds = %212
  %215 = mul i32 %.221, 2
  %216 = add i32 %215, 1
  %217 = load i8, ptr %.031, align 1
  %218 = zext i8 %217 to i64
  %219 = and i64 %218, %.217
  %220 = icmp ne i64 %219, 0
  %221 = add i32 %216, 1
  %spec.select2 = select i1 %220, i32 %221, i32 %216
  br label %222

222:                                              ; preds = %226, %214
  %.8 = phi i64 [ %.7, %214 ], [ %227, %226 ]
  %223 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %224 = load i32, ptr %223, align 4
  %225 = icmp ult i32 %224, %spec.select2
  br i1 %225, label %226, label %228

226:                                              ; preds = %222
  %227 = add i64 %.8, 1
  br label %222, !llvm.loop !22

228:                                              ; preds = %222
  %.8.lcssa = phi i64 [ %.8, %222 ]
  %.lcssa = phi i32 [ %224, %222 ]
  %229 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %229, label %230, label %235

230:                                              ; preds = %228
  %231 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %232 = load i8, ptr %231, align 1
  store i8 %232, ptr %.235, align 1
  %233 = getelementptr inbounds nuw i8, ptr %.235, i32 1
  %234 = add nuw i64 %.313, 1
  br label %235

235:                                              ; preds = %230, %228
  %.336 = phi ptr [ %233, %230 ], [ %.235, %228 ]
  %.423 = phi i32 [ 0, %230 ], [ %spec.select2, %228 ]
  %.414 = phi i64 [ %234, %230 ], [ %.313, %228 ]
  %.9 = phi i64 [ %.49.lcssa, %230 ], [ %.8.lcssa, %228 ]
  %236 = icmp ugt i64 %.217, 1
  %237 = lshr i64 %.217, 1
  %238 = getelementptr inbounds nuw i8, ptr %.031, i32 1
  %.132 = select i1 %236, ptr %.031, ptr %238
  %.318 = select i1 %236, i64 %237, i64 128
  br label %212, !llvm.loop !23

239:                                              ; preds = %212
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
  br i1 %3, label %.preheader, label %.loopexit

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

.loopexit:                                        ; preds = %6, %5, %2
  %.0 = phi i8 [ 0, %2 ], [ 1, %6 ], [ 0, %5 ]
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
