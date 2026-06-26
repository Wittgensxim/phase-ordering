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
  br i1 %exitcond, label %13, label %.preheader12

.preheader12:                                     ; preds = %12
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

21:                                               ; preds = %39, %.preheader12
  %.010 = phi i64 [ 0, %.preheader12 ], [ %.111.1, %39 ]
  %.13 = phi i64 [ 0, %.preheader12 ], [ %40, %39 ]
  %22 = icmp samesign ult i64 %.13, 256
  br i1 %22, label %23, label %.preheader11

.preheader11:                                     ; preds = %21
  %.010.lcssa = phi i64 [ %.010, %21 ]
  br label %41

23:                                               ; preds = %21
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
  br label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %31
  %34 = load i64, ptr %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.111
  store i64 %31, ptr %37, align 8
  %38 = add i64 %.111, 1
  br label %39

39:                                               ; preds = %36, %32
  %.111.1 = phi i64 [ %38, %36 ], [ %.111, %32 ]
  %40 = add nuw nsw i64 %.13, 2
  br label %21, !llvm.loop !10

41:                                               ; preds = %.preheader11, %43
  %.24 = phi i64 [ %46, %43 ], [ %.010.lcssa, %.preheader11 ]
  %42 = icmp ugt i64 %.24, 0
  br i1 %42, label %43, label %.preheader10

.preheader10:                                     ; preds = %41
  br label %47

43:                                               ; preds = %41
  %44 = trunc i64 %.010.lcssa to i32
  %45 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %44, i32 noundef %45)
  %46 = add i64 %.24, -1
  br label %41, !llvm.loop !11

47:                                               ; preds = %.preheader10, %49
  %.212 = phi i64 [ %50, %49 ], [ %.010.lcssa, %.preheader10 ]
  %48 = icmp ugt i64 %.212, 1
  br i1 %48, label %49, label %69

49:                                               ; preds = %47
  %50 = add i64 %.212, -1
  %51 = load i64, ptr %4, align 16
  %52 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %50
  %53 = load i64, ptr %52, align 8
  store i64 %53, ptr %4, align 16
  %54 = trunc i64 %50 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %54, i32 noundef 1)
  %55 = load i64, ptr %4, align 16
  %56 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %55
  %57 = load i64, ptr %56, align 8
  %58 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %51
  %59 = load i64, ptr %58, align 8
  %60 = add i64 %57, %59
  %61 = add i64 256, %50
  %62 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %61
  store i64 %60, ptr %62, align 8
  %63 = trunc i64 %61 to i32
  %64 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %51
  store i32 %63, ptr %64, align 4
  %65 = sub i64 -256, %50
  %66 = trunc i64 %65 to i32
  %67 = load i64, ptr %4, align 16
  %68 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %67
  store i32 %66, ptr %68, align 4
  store i64 %61, ptr %4, align 16
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %54, i32 noundef 1)
  br label %47, !llvm.loop !12

69:                                               ; preds = %47
  %.212.lcssa = phi i64 [ %.212, %47 ]
  %70 = add i64 256, %.212.lcssa
  %71 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %70
  store i32 0, ptr %71, align 4
  br label %72

72:                                               ; preds = %101, %69
  %.045 = phi i64 [ 0, %69 ], [ %.146, %101 ]
  %.042 = phi i64 [ 0, %69 ], [ %102, %101 ]
  %.039 = phi i64 [ 0, %69 ], [ %.140, %101 ]
  %exitcond13 = icmp ne i64 %.042, 256
  br i1 %exitcond13, label %73, label %103

73:                                               ; preds = %72
  %74 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.042
  %75 = load i64, ptr %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 0, ptr %78, align 4
  %79 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 0, ptr %79, align 1
  br label %101

80:                                               ; preds = %73
  %81 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.042
  %82 = load i32, ptr %81, align 4
  br label %83

83:                                               ; preds = %85, %80
  %.043 = phi i64 [ 0, %80 ], [ %.144, %85 ]
  %.037 = phi i32 [ %82, %80 ], [ %91, %85 ]
  %.05 = phi i64 [ 1, %80 ], [ %92, %85 ]
  %.3 = phi i64 [ 0, %80 ], [ %93, %85 ]
  %84 = icmp ne i32 %.037, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %83
  %86 = icmp slt i32 %.037, 0
  %87 = add i64 %.043, %.05
  %88 = sub nsw i32 0, %.037
  %.144 = select i1 %86, i64 %87, i64 %.043
  %.138 = select i1 %86, i32 %88, i32 %.037
  %89 = sext i32 %.138 to i64
  %90 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %89
  %91 = load i32, ptr %90, align 4
  %92 = shl i64 %.05, 1
  %93 = add i64 %.3, 1
  br label %83, !llvm.loop !13

94:                                               ; preds = %83
  %.043.lcssa = phi i64 [ %.043, %83 ]
  %.3.lcssa = phi i64 [ %.3, %83 ]
  %95 = trunc i64 %.043.lcssa to i32
  %96 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 %95, ptr %96, align 4
  %97 = trunc i64 %.3.lcssa to i8
  %98 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 %97, ptr %98, align 1
  %99 = icmp ugt i64 %.043.lcssa, %.045
  %spec.select = select i1 %99, i64 %.043.lcssa, i64 %.045
  %100 = icmp ugt i64 %.3.lcssa, %.039
  %.241 = select i1 %100, i64 %.3.lcssa, i64 %.039
  br label %101

101:                                              ; preds = %94, %77
  %.146 = phi i64 [ %spec.select, %94 ], [ %.045, %77 ]
  %.140 = phi i64 [ %.241, %94 ], [ %.039, %77 ]
  %102 = add nuw nsw i64 %.042, 1
  br label %72, !llvm.loop !14

103:                                              ; preds = %72
  %.045.lcssa = phi i64 [ %.045, %72 ]
  %.039.lcssa = phi i64 [ %.039, %72 ]
  %104 = icmp ugt i64 %.039.lcssa, 32
  br i1 %104, label %105, label %108

105:                                              ; preds = %103
  %106 = call ptr @__acrt_iob_func(i32 noundef 2)
  %107 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %106, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

108:                                              ; preds = %103
  %109 = icmp eq i64 %.045.lcssa, 0
  br i1 %109, label %110, label %.preheader3

.preheader3:                                      ; preds = %108
  br label %113

110:                                              ; preds = %108
  %111 = call ptr @__acrt_iob_func(i32 noundef 2)
  %112 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %111, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

113:                                              ; preds = %.preheader3, %157
  %.134 = phi ptr [ %158, %157 ], [ %0, %.preheader3 ]
  %.028 = phi i64 [ %.129.lcssa, %157 ], [ 0, %.preheader3 ]
  %.024 = phi i8 [ %.125.lcssa, %157 ], [ 0, %.preheader3 ]
  %.16 = phi i64 [ %159, %157 ], [ 0, %.preheader3 ]
  %.01 = phi i32 [ %.1.lcssa, %157 ], [ -1, %.preheader3 ]
  %exitcond14 = icmp ne i64 %.16, %1
  br i1 %exitcond14, label %114, label %160

114:                                              ; preds = %113
  %115 = load i8, ptr %.134, align 1
  %116 = zext i8 %115 to i64
  %117 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %116
  %118 = load i8, ptr %117, align 1
  %119 = zext i8 %118 to i32
  %120 = sub nsw i32 %119, 1
  %121 = shl i32 1, %120
  %122 = sext i32 %121 to i64
  br label %123

123:                                              ; preds = %144, %114
  %.129 = phi i64 [ %.028, %114 ], [ %.230, %144 ]
  %.125 = phi i8 [ %.024, %114 ], [ %.327, %144 ]
  %.015 = phi i64 [ %122, %114 ], [ %155, %144 ]
  %.4 = phi i64 [ 0, %114 ], [ %156, %144 ]
  %.1 = phi i32 [ %.01, %114 ], [ %.2, %144 ]
  %124 = load i8, ptr %.134, align 1
  %125 = zext i8 %124 to i64
  %126 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %125
  %127 = load i8, ptr %126, align 1
  %128 = zext i8 %127 to i64
  %129 = icmp samesign ult i64 %.4, %128
  br i1 %129, label %130, label %157

130:                                              ; preds = %123
  %131 = icmp eq i32 %.1, 7
  br i1 %131, label %132, label %139

132:                                              ; preds = %130
  %133 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %133, align 1
  %134 = add i64 %.129, 1
  %135 = icmp eq i64 %134, %1
  br i1 %135, label %136, label %144

136:                                              ; preds = %132
  %137 = call ptr @__acrt_iob_func(i32 noundef 2)
  %138 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %137, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

139:                                              ; preds = %130
  %140 = add nsw i32 %.1, 1
  %141 = sext i8 %.125 to i32
  %142 = shl i32 %141, 1
  %143 = trunc i32 %142 to i8
  br label %144

144:                                              ; preds = %139, %132
  %.230 = phi i64 [ %.129, %139 ], [ %134, %132 ]
  %.226 = phi i8 [ %143, %139 ], [ 0, %132 ]
  %.2 = phi i32 [ %140, %139 ], [ 0, %132 ]
  %145 = load i8, ptr %.134, align 1
  %146 = zext i8 %145 to i64
  %147 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %146
  %148 = load i32, ptr %147, align 4
  %149 = zext i32 %148 to i64
  %150 = and i64 %149, %.015
  %151 = icmp ne i64 %150, 0
  %152 = sext i8 %.226 to i32
  %153 = or i32 %152, 1
  %154 = trunc i32 %153 to i8
  %.327 = select i1 %151, i8 %154, i8 %.226
  %155 = lshr i64 %.015, 1
  %156 = add nuw nsw i64 %.4, 1
  br label %123, !llvm.loop !15

157:                                              ; preds = %123
  %.129.lcssa = phi i64 [ %.129, %123 ]
  %.125.lcssa = phi i8 [ %.125, %123 ]
  %.1.lcssa = phi i32 [ %.1, %123 ]
  %158 = getelementptr inbounds nuw i8, ptr %.134, i32 1
  %159 = add i64 %.16, 1
  br label %113, !llvm.loop !16

160:                                              ; preds = %113
  %.028.lcssa = phi i64 [ %.028, %113 ]
  %.024.lcssa = phi i8 [ %.024, %113 ]
  %.01.lcssa = phi i32 [ %.01, %113 ]
  %161 = sub nsw i32 7, %.01.lcssa
  %162 = sext i8 %.024.lcssa to i32
  %163 = shl i32 %162, %161
  %164 = trunc i32 %163 to i8
  %165 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %164, ptr %165, align 1
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 1024, i1 false)
  br label %166

166:                                              ; preds = %197, %160
  %.27 = phi i64 [ 0, %160 ], [ %198, %197 ]
  %.0 = phi ptr [ %9, %160 ], [ %169, %197 ]
  %exitcond15 = icmp ne i64 %.27, 256
  br i1 %exitcond15, label %167, label %.preheader2

.preheader2:                                      ; preds = %166
  br label %199

167:                                              ; preds = %166
  %168 = trunc i64 %.27 to i8
  store i8 %168, ptr %.0, align 1
  %169 = getelementptr inbounds nuw i8, ptr %.0, i32 1
  %170 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %171 = load i32, ptr %170, align 4
  %172 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %173 = load i8, ptr %172, align 1
  %174 = zext i8 %173 to i32
  %175 = or i32 %171, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %197

177:                                              ; preds = %167
  %178 = sub nsw i32 %174, 1
  %179 = shl i32 1, %178
  %180 = sext i32 %179 to i64
  br label %181

181:                                              ; preds = %185, %177
  %.019 = phi i32 [ 0, %177 ], [ %spec.select1, %185 ]
  %.116 = phi i64 [ %180, %177 ], [ %193, %185 ]
  %.5 = phi i64 [ 0, %177 ], [ %194, %185 ]
  %182 = load i8, ptr %172, align 1
  %183 = zext i8 %182 to i64
  %184 = icmp samesign ult i64 %.5, %183
  br i1 %184, label %185, label %195

185:                                              ; preds = %181
  %186 = mul i32 %.019, 2
  %187 = add i32 %186, 1
  %188 = load i32, ptr %170, align 4
  %189 = zext i32 %188 to i64
  %190 = and i64 %189, %.116
  %191 = icmp ne i64 %190, 0
  %192 = add i32 %187, 1
  %spec.select1 = select i1 %191, i32 %192, i32 %187
  %193 = lshr i64 %.116, 1
  %194 = add nuw nsw i64 %.5, 1
  br label %181, !llvm.loop !17

195:                                              ; preds = %181
  %.019.lcssa = phi i32 [ %.019, %181 ]
  %196 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.27
  store i32 %.019.lcssa, ptr %196, align 4
  br label %197

197:                                              ; preds = %195, %167
  %198 = add nuw nsw i64 %.27, 1
  br label %166, !llvm.loop !18

199:                                              ; preds = %.preheader2, %.critedge
  %.6 = phi i64 [ %220, %.critedge ], [ 1, %.preheader2 ]
  %exitcond16 = icmp ne i64 %.6, 256
  br i1 %exitcond16, label %200, label %.preheader1

.preheader1:                                      ; preds = %199
  br label %221

200:                                              ; preds = %199
  %201 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %202 = load i32, ptr %201, align 4
  %203 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %204 = load i8, ptr %203, align 1
  br label %205

205:                                              ; preds = %212, %200
  %.38 = phi i64 [ %.6, %200 ], [ %217, %212 ]
  %206 = icmp ne i64 %.38, 0
  br i1 %206, label %207, label %.critedge

207:                                              ; preds = %205
  %208 = sub nuw nsw i64 %.38, 1
  %209 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %208
  %210 = load i32, ptr %209, align 4
  %211 = icmp ugt i32 %210, %202
  br i1 %211, label %212, label %.critedge

212:                                              ; preds = %207
  %213 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %210, ptr %213, align 4
  %214 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %208
  %215 = load i8, ptr %214, align 1
  %216 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %215, ptr %216, align 1
  %217 = add nsw i64 %.38, -1
  br label %205, !llvm.loop !19

.critedge:                                        ; preds = %207, %205
  %.38.lcssa = phi i64 [ %.38, %207 ], [ 0, %205 ]
  %218 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %202, ptr %218, align 4
  %219 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %204, ptr %219, align 1
  %220 = add nuw nsw i64 %.6, 1
  br label %199, !llvm.loop !20

221:                                              ; preds = %.preheader1, %225
  %.49 = phi i64 [ %226, %225 ], [ 0, %.preheader1 ]
  %222 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %223 = load i32, ptr %222, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %.preheader

.preheader:                                       ; preds = %221
  %.49.lcssa = phi i64 [ %.49, %221 ]
  br label %227

225:                                              ; preds = %221
  %226 = add i64 %.49, 1
  br label %221, !llvm.loop !21

227:                                              ; preds = %.preheader, %250
  %.235 = phi ptr [ %.336, %250 ], [ %0, %.preheader ]
  %.031 = phi ptr [ %.132, %250 ], [ %11, %.preheader ]
  %.221 = phi i32 [ %.423, %250 ], [ 0, %.preheader ]
  %.217 = phi i64 [ %.318, %250 ], [ 128, %.preheader ]
  %.313 = phi i64 [ %.414, %250 ], [ 0, %.preheader ]
  %.7 = phi i64 [ %.9, %250 ], [ %.49.lcssa, %.preheader ]
  %228 = icmp ult i64 %.313, %1
  br i1 %228, label %229, label %254

229:                                              ; preds = %227
  %230 = mul i32 %.221, 2
  %231 = add i32 %230, 1
  %232 = load i8, ptr %.031, align 1
  %233 = zext i8 %232 to i64
  %234 = and i64 %233, %.217
  %235 = icmp ne i64 %234, 0
  %236 = add i32 %231, 1
  %spec.select2 = select i1 %235, i32 %236, i32 %231
  br label %237

237:                                              ; preds = %241, %229
  %.8 = phi i64 [ %.7, %229 ], [ %242, %241 ]
  %238 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %239 = load i32, ptr %238, align 4
  %240 = icmp ult i32 %239, %spec.select2
  br i1 %240, label %241, label %243

241:                                              ; preds = %237
  %242 = add i64 %.8, 1
  br label %237, !llvm.loop !22

243:                                              ; preds = %237
  %.8.lcssa = phi i64 [ %.8, %237 ]
  %.lcssa = phi i32 [ %239, %237 ]
  %244 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %244, label %245, label %250

245:                                              ; preds = %243
  %246 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %247 = load i8, ptr %246, align 1
  store i8 %247, ptr %.235, align 1
  %248 = getelementptr inbounds nuw i8, ptr %.235, i32 1
  %249 = add nuw i64 %.313, 1
  br label %250

250:                                              ; preds = %245, %243
  %.336 = phi ptr [ %248, %245 ], [ %.235, %243 ]
  %.423 = phi i32 [ 0, %245 ], [ %spec.select2, %243 ]
  %.414 = phi i64 [ %249, %245 ], [ %.313, %243 ]
  %.9 = phi i64 [ %.49.lcssa, %245 ], [ %.8.lcssa, %243 ]
  %251 = icmp ugt i64 %.217, 1
  %252 = lshr i64 %.217, 1
  %253 = getelementptr inbounds nuw i8, ptr %.031, i32 1
  %.132 = select i1 %251, ptr %.031, ptr %253
  %.318 = select i1 %251, i64 %252, i64 128
  br label %227, !llvm.loop !23

254:                                              ; preds = %227
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
