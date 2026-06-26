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

21:                                               ; preds = %.preheader6, %29
  %.010 = phi i64 [ %.111, %29 ], [ 0, %.preheader6 ]
  %.13 = phi i64 [ %30, %29 ], [ 0, %.preheader6 ]
  %exitcond13 = icmp ne i64 %.13, 256
  br i1 %exitcond13, label %22, label %.preheader5

.preheader5:                                      ; preds = %21
  %.010.lcssa = phi i64 [ %.010, %21 ]
  br label %31

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
  br label %21, !llvm.loop !10

31:                                               ; preds = %.preheader5, %33
  %.24 = phi i64 [ %36, %33 ], [ %.010.lcssa, %.preheader5 ]
  %32 = icmp ugt i64 %.24, 0
  br i1 %32, label %33, label %.preheader4

.preheader4:                                      ; preds = %31
  br label %37

33:                                               ; preds = %31
  %34 = trunc i64 %.010.lcssa to i32
  %35 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %34, i32 noundef %35)
  %36 = add i64 %.24, -1
  br label %31, !llvm.loop !11

37:                                               ; preds = %.preheader4, %39
  %.212 = phi i64 [ %40, %39 ], [ %.010.lcssa, %.preheader4 ]
  %38 = icmp ugt i64 %.212, 1
  br i1 %38, label %39, label %59

39:                                               ; preds = %37
  %40 = add i64 %.212, -1
  %41 = load i64, ptr %4, align 16
  %42 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %40
  %43 = load i64, ptr %42, align 8
  store i64 %43, ptr %4, align 16
  %44 = trunc i64 %40 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %44, i32 noundef 1)
  %45 = load i64, ptr %4, align 16
  %46 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %45
  %47 = load i64, ptr %46, align 8
  %48 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %41
  %49 = load i64, ptr %48, align 8
  %50 = add i64 %47, %49
  %51 = add i64 256, %40
  %52 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %51
  store i64 %50, ptr %52, align 8
  %53 = trunc i64 %51 to i32
  %54 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %41
  store i32 %53, ptr %54, align 4
  %55 = sub i64 -256, %40
  %56 = trunc i64 %55 to i32
  %57 = load i64, ptr %4, align 16
  %58 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %57
  store i32 %56, ptr %58, align 4
  store i64 %51, ptr %4, align 16
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %44, i32 noundef 1)
  br label %37, !llvm.loop !12

59:                                               ; preds = %37
  %.212.lcssa = phi i64 [ %.212, %37 ]
  %60 = add i64 256, %.212.lcssa
  %61 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %60
  store i32 0, ptr %61, align 4
  br label %62

62:                                               ; preds = %91, %59
  %.045 = phi i64 [ 0, %59 ], [ %.146, %91 ]
  %.042 = phi i64 [ 0, %59 ], [ %92, %91 ]
  %.039 = phi i64 [ 0, %59 ], [ %.140, %91 ]
  %exitcond14 = icmp ne i64 %.042, 256
  br i1 %exitcond14, label %63, label %93

63:                                               ; preds = %62
  %64 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.042
  %65 = load i64, ptr %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 0, ptr %68, align 4
  %69 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 0, ptr %69, align 1
  br label %91

70:                                               ; preds = %63
  %71 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.042
  %72 = load i32, ptr %71, align 4
  br label %73

73:                                               ; preds = %75, %70
  %.043 = phi i64 [ 0, %70 ], [ %.144, %75 ]
  %.037 = phi i32 [ %72, %70 ], [ %81, %75 ]
  %.05 = phi i64 [ 1, %70 ], [ %82, %75 ]
  %.3 = phi i64 [ 0, %70 ], [ %83, %75 ]
  %74 = icmp ne i32 %.037, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %73
  %76 = icmp slt i32 %.037, 0
  %77 = add i64 %.043, %.05
  %78 = sub nsw i32 0, %.037
  %.144 = select i1 %76, i64 %77, i64 %.043
  %.138 = select i1 %76, i32 %78, i32 %.037
  %79 = sext i32 %.138 to i64
  %80 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %79
  %81 = load i32, ptr %80, align 4
  %82 = shl i64 %.05, 1
  %83 = add i64 %.3, 1
  br label %73, !llvm.loop !13

84:                                               ; preds = %73
  %.043.lcssa = phi i64 [ %.043, %73 ]
  %.3.lcssa = phi i64 [ %.3, %73 ]
  %85 = trunc i64 %.043.lcssa to i32
  %86 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 %85, ptr %86, align 4
  %87 = trunc i64 %.3.lcssa to i8
  %88 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 %87, ptr %88, align 1
  %89 = icmp ugt i64 %.043.lcssa, %.045
  %spec.select = select i1 %89, i64 %.043.lcssa, i64 %.045
  %90 = icmp ugt i64 %.3.lcssa, %.039
  %.241 = select i1 %90, i64 %.3.lcssa, i64 %.039
  br label %91

91:                                               ; preds = %84, %67
  %.146 = phi i64 [ %spec.select, %84 ], [ %.045, %67 ]
  %.140 = phi i64 [ %.241, %84 ], [ %.039, %67 ]
  %92 = add nuw nsw i64 %.042, 1
  br label %62, !llvm.loop !14

93:                                               ; preds = %62
  %.045.lcssa = phi i64 [ %.045, %62 ]
  %.039.lcssa = phi i64 [ %.039, %62 ]
  %94 = icmp ugt i64 %.039.lcssa, 32
  br i1 %94, label %95, label %98

95:                                               ; preds = %93
  %96 = call ptr @__acrt_iob_func(i32 noundef 2)
  %97 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %96, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

98:                                               ; preds = %93
  %99 = icmp eq i64 %.045.lcssa, 0
  br i1 %99, label %100, label %.preheader3

.preheader3:                                      ; preds = %98
  br label %103

100:                                              ; preds = %98
  %101 = call ptr @__acrt_iob_func(i32 noundef 2)
  %102 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %101, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

103:                                              ; preds = %.preheader3, %147
  %.134 = phi ptr [ %148, %147 ], [ %0, %.preheader3 ]
  %.028 = phi i64 [ %.129.lcssa, %147 ], [ 0, %.preheader3 ]
  %.024 = phi i8 [ %.125.lcssa, %147 ], [ 0, %.preheader3 ]
  %.16 = phi i64 [ %149, %147 ], [ 0, %.preheader3 ]
  %.01 = phi i32 [ %.1.lcssa, %147 ], [ -1, %.preheader3 ]
  %exitcond15 = icmp ne i64 %.16, %1
  br i1 %exitcond15, label %104, label %150

104:                                              ; preds = %103
  %105 = load i8, ptr %.134, align 1
  %106 = zext i8 %105 to i64
  %107 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %106
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %108 to i32
  %110 = sub nsw i32 %109, 1
  %111 = shl i32 1, %110
  %112 = sext i32 %111 to i64
  br label %113

113:                                              ; preds = %134, %104
  %.129 = phi i64 [ %.028, %104 ], [ %.230, %134 ]
  %.125 = phi i8 [ %.024, %104 ], [ %.327, %134 ]
  %.015 = phi i64 [ %112, %104 ], [ %145, %134 ]
  %.4 = phi i64 [ 0, %104 ], [ %146, %134 ]
  %.1 = phi i32 [ %.01, %104 ], [ %.2, %134 ]
  %114 = load i8, ptr %.134, align 1
  %115 = zext i8 %114 to i64
  %116 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %115
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i64
  %119 = icmp samesign ult i64 %.4, %118
  br i1 %119, label %120, label %147

120:                                              ; preds = %113
  %121 = icmp eq i32 %.1, 7
  br i1 %121, label %122, label %129

122:                                              ; preds = %120
  %123 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %123, align 1
  %124 = add i64 %.129, 1
  %125 = icmp eq i64 %124, %1
  br i1 %125, label %126, label %134

126:                                              ; preds = %122
  %127 = call ptr @__acrt_iob_func(i32 noundef 2)
  %128 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

129:                                              ; preds = %120
  %130 = add nsw i32 %.1, 1
  %131 = sext i8 %.125 to i32
  %132 = shl i32 %131, 1
  %133 = trunc i32 %132 to i8
  br label %134

134:                                              ; preds = %129, %122
  %.230 = phi i64 [ %.129, %129 ], [ %124, %122 ]
  %.226 = phi i8 [ %133, %129 ], [ 0, %122 ]
  %.2 = phi i32 [ %130, %129 ], [ 0, %122 ]
  %135 = load i8, ptr %.134, align 1
  %136 = zext i8 %135 to i64
  %137 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %136
  %138 = load i32, ptr %137, align 4
  %139 = zext i32 %138 to i64
  %140 = and i64 %139, %.015
  %141 = icmp ne i64 %140, 0
  %142 = sext i8 %.226 to i32
  %143 = or i32 %142, 1
  %144 = trunc i32 %143 to i8
  %.327 = select i1 %141, i8 %144, i8 %.226
  %145 = lshr i64 %.015, 1
  %146 = add nuw nsw i64 %.4, 1
  br label %113, !llvm.loop !15

147:                                              ; preds = %113
  %.129.lcssa = phi i64 [ %.129, %113 ]
  %.125.lcssa = phi i8 [ %.125, %113 ]
  %.1.lcssa = phi i32 [ %.1, %113 ]
  %148 = getelementptr inbounds nuw i8, ptr %.134, i32 1
  %149 = add i64 %.16, 1
  br label %103, !llvm.loop !16

150:                                              ; preds = %103
  %.028.lcssa = phi i64 [ %.028, %103 ]
  %.024.lcssa = phi i8 [ %.024, %103 ]
  %.01.lcssa = phi i32 [ %.01, %103 ]
  %151 = sub nsw i32 7, %.01.lcssa
  %152 = sext i8 %.024.lcssa to i32
  %153 = shl i32 %152, %151
  %154 = trunc i32 %153 to i8
  %155 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %154, ptr %155, align 1
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 1024, i1 false)
  br label %156

156:                                              ; preds = %187, %150
  %.27 = phi i64 [ 0, %150 ], [ %188, %187 ]
  %.0 = phi ptr [ %9, %150 ], [ %159, %187 ]
  %exitcond16 = icmp ne i64 %.27, 256
  br i1 %exitcond16, label %157, label %.preheader2

.preheader2:                                      ; preds = %156
  br label %189

157:                                              ; preds = %156
  %158 = trunc i64 %.27 to i8
  store i8 %158, ptr %.0, align 1
  %159 = getelementptr inbounds nuw i8, ptr %.0, i32 1
  %160 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %161 = load i32, ptr %160, align 4
  %162 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %163 = load i8, ptr %162, align 1
  %164 = zext i8 %163 to i32
  %165 = or i32 %161, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %187

167:                                              ; preds = %157
  %168 = sub nsw i32 %164, 1
  %169 = shl i32 1, %168
  %170 = sext i32 %169 to i64
  br label %171

171:                                              ; preds = %175, %167
  %.019 = phi i32 [ 0, %167 ], [ %spec.select1, %175 ]
  %.116 = phi i64 [ %170, %167 ], [ %183, %175 ]
  %.5 = phi i64 [ 0, %167 ], [ %184, %175 ]
  %172 = load i8, ptr %162, align 1
  %173 = zext i8 %172 to i64
  %174 = icmp samesign ult i64 %.5, %173
  br i1 %174, label %175, label %185

175:                                              ; preds = %171
  %176 = mul i32 %.019, 2
  %177 = add i32 %176, 1
  %178 = load i32, ptr %160, align 4
  %179 = zext i32 %178 to i64
  %180 = and i64 %179, %.116
  %181 = icmp ne i64 %180, 0
  %182 = add i32 %177, 1
  %spec.select1 = select i1 %181, i32 %182, i32 %177
  %183 = lshr i64 %.116, 1
  %184 = add nuw nsw i64 %.5, 1
  br label %171, !llvm.loop !17

185:                                              ; preds = %171
  %.019.lcssa = phi i32 [ %.019, %171 ]
  %186 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.27
  store i32 %.019.lcssa, ptr %186, align 4
  br label %187

187:                                              ; preds = %185, %157
  %188 = add nuw nsw i64 %.27, 1
  br label %156, !llvm.loop !18

189:                                              ; preds = %.preheader2, %.critedge
  %.6 = phi i64 [ %210, %.critedge ], [ 1, %.preheader2 ]
  %exitcond17 = icmp ne i64 %.6, 256
  br i1 %exitcond17, label %190, label %.preheader1

.preheader1:                                      ; preds = %189
  br label %211

190:                                              ; preds = %189
  %191 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %192 = load i32, ptr %191, align 4
  %193 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %194 = load i8, ptr %193, align 1
  br label %195

195:                                              ; preds = %202, %190
  %.38 = phi i64 [ %.6, %190 ], [ %207, %202 ]
  %196 = icmp ne i64 %.38, 0
  br i1 %196, label %197, label %.critedge

197:                                              ; preds = %195
  %198 = sub nuw nsw i64 %.38, 1
  %199 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %198
  %200 = load i32, ptr %199, align 4
  %201 = icmp ugt i32 %200, %192
  br i1 %201, label %202, label %.critedge

202:                                              ; preds = %197
  %203 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %200, ptr %203, align 4
  %204 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %198
  %205 = load i8, ptr %204, align 1
  %206 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %205, ptr %206, align 1
  %207 = add nsw i64 %.38, -1
  br label %195, !llvm.loop !19

.critedge:                                        ; preds = %197, %195
  %.38.lcssa = phi i64 [ %.38, %197 ], [ 0, %195 ]
  %208 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %192, ptr %208, align 4
  %209 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %194, ptr %209, align 1
  %210 = add nuw nsw i64 %.6, 1
  br label %189, !llvm.loop !20

211:                                              ; preds = %.preheader1, %215
  %.49 = phi i64 [ %216, %215 ], [ 0, %.preheader1 ]
  %212 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %213 = load i32, ptr %212, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %.preheader

.preheader:                                       ; preds = %211
  %.49.lcssa = phi i64 [ %.49, %211 ]
  br label %217

215:                                              ; preds = %211
  %216 = add i64 %.49, 1
  br label %211, !llvm.loop !21

217:                                              ; preds = %.preheader, %240
  %.235 = phi ptr [ %.336, %240 ], [ %0, %.preheader ]
  %.031 = phi ptr [ %.132, %240 ], [ %11, %.preheader ]
  %.221 = phi i32 [ %.423, %240 ], [ 0, %.preheader ]
  %.217 = phi i64 [ %.318, %240 ], [ 128, %.preheader ]
  %.313 = phi i64 [ %.414, %240 ], [ 0, %.preheader ]
  %.7 = phi i64 [ %.9, %240 ], [ %.49.lcssa, %.preheader ]
  %218 = icmp ult i64 %.313, %1
  br i1 %218, label %219, label %244

219:                                              ; preds = %217
  %220 = mul i32 %.221, 2
  %221 = add i32 %220, 1
  %222 = load i8, ptr %.031, align 1
  %223 = zext i8 %222 to i64
  %224 = and i64 %223, %.217
  %225 = icmp ne i64 %224, 0
  %226 = add i32 %221, 1
  %spec.select2 = select i1 %225, i32 %226, i32 %221
  br label %227

227:                                              ; preds = %231, %219
  %.8 = phi i64 [ %.7, %219 ], [ %232, %231 ]
  %228 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %229 = load i32, ptr %228, align 4
  %230 = icmp ult i32 %229, %spec.select2
  br i1 %230, label %231, label %233

231:                                              ; preds = %227
  %232 = add i64 %.8, 1
  br label %227, !llvm.loop !22

233:                                              ; preds = %227
  %.8.lcssa = phi i64 [ %.8, %227 ]
  %.lcssa = phi i32 [ %229, %227 ]
  %234 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %234, label %235, label %240

235:                                              ; preds = %233
  %236 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %237 = load i8, ptr %236, align 1
  store i8 %237, ptr %.235, align 1
  %238 = getelementptr inbounds nuw i8, ptr %.235, i32 1
  %239 = add nuw i64 %.313, 1
  br label %240

240:                                              ; preds = %235, %233
  %.336 = phi ptr [ %238, %235 ], [ %.235, %233 ]
  %.423 = phi i32 [ 0, %235 ], [ %spec.select2, %233 ]
  %.414 = phi i64 [ %239, %235 ], [ %.313, %233 ]
  %.9 = phi i64 [ %.49.lcssa, %235 ], [ %.8.lcssa, %233 ]
  %241 = icmp ugt i64 %.217, 1
  %242 = lshr i64 %.217, 1
  %243 = getelementptr inbounds nuw i8, ptr %.031, i32 1
  %.132 = select i1 %241, ptr %.031, ptr %243
  %.318 = select i1 %241, i64 %242, i64 128
  br label %217, !llvm.loop !23

244:                                              ; preds = %217
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
