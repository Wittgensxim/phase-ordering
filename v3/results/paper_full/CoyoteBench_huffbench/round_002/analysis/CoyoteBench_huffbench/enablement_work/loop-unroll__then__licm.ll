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

3:                                                ; preds = %6, %1
  %.01 = phi ptr [ %2, %1 ], [ %10, %6 ]
  %.0 = phi i32 [ 0, %1 ], [ %11, %6 ]
  %4 = sext i32 %.0 to i64
  %5 = icmp ult i64 %4, %0
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = call i64 @random4()
  %8 = getelementptr inbounds nuw i8, ptr @.str, i64 %7
  %9 = load i8, ptr %8, align 1
  store i8 %9, ptr %.01, align 1
  %10 = getelementptr inbounds nuw i8, ptr %.01, i32 1
  %11 = add nsw i32 %.0, 1
  br label %3, !llvm.loop !7

12:                                               ; preds = %3
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

12:                                               ; preds = %14, %2
  %.033 = phi ptr [ %0, %2 ], [ %20, %14 ]
  %.02 = phi i64 [ 0, %2 ], [ %21, %14 ]
  %13 = icmp ult i64 %.02, %1
  br i1 %13, label %14, label %.preheader12

.preheader12:                                     ; preds = %12
  br label %22

14:                                               ; preds = %12
  %15 = load i8, ptr %.033, align 1
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %16
  %18 = load i64, ptr %17, align 8
  %19 = add i64 %18, 1
  store i64 %19, ptr %17, align 8
  %20 = getelementptr inbounds nuw i8, ptr %.033, i32 1
  %21 = add i64 %.02, 1
  br label %12, !llvm.loop !9

22:                                               ; preds = %41, %.preheader12
  %.010 = phi i64 [ 0, %.preheader12 ], [ %.111.1, %41 ]
  %.13 = phi i64 [ 0, %.preheader12 ], [ %42, %41 ]
  %23 = icmp samesign ult i64 %.13, 256
  br i1 %23, label %25, label %.preheader11

.preheader11:                                     ; preds = %22
  %.010.lcssa = phi i64 [ %.010, %22 ]
  %24 = trunc i64 %.010.lcssa to i32
  br label %43

25:                                               ; preds = %22
  %26 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.13
  %27 = load i64, ptr %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.010
  store i64 %.13, ptr %30, align 8
  %31 = add i64 %.010, 1
  br label %32

32:                                               ; preds = %29, %25
  %.111 = phi i64 [ %31, %29 ], [ %.010, %25 ]
  %33 = add nuw nsw i64 %.13, 1
  br label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %33
  %36 = load i64, ptr %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.111
  store i64 %33, ptr %39, align 8
  %40 = add i64 %.111, 1
  br label %41

41:                                               ; preds = %38, %34
  %.111.1 = phi i64 [ %40, %38 ], [ %.111, %34 ]
  %42 = add nuw nsw i64 %.13, 2
  br label %22, !llvm.loop !10

43:                                               ; preds = %.preheader11, %45
  %.24 = phi i64 [ %47, %45 ], [ %.010.lcssa, %.preheader11 ]
  %44 = icmp ugt i64 %.24, 0
  br i1 %44, label %45, label %.preheader10

.preheader10:                                     ; preds = %43
  br label %48

45:                                               ; preds = %43
  %46 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %24, i32 noundef %46)
  %47 = add i64 %.24, -1
  br label %43, !llvm.loop !11

48:                                               ; preds = %.preheader10, %50
  %.212 = phi i64 [ %51, %50 ], [ %.010.lcssa, %.preheader10 ]
  %49 = icmp ugt i64 %.212, 1
  br i1 %49, label %50, label %70

50:                                               ; preds = %48
  %51 = add i64 %.212, -1
  %52 = load i64, ptr %4, align 16
  %53 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %51
  %54 = load i64, ptr %53, align 8
  store i64 %54, ptr %4, align 16
  %55 = trunc i64 %51 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %55, i32 noundef 1)
  %56 = load i64, ptr %4, align 16
  %57 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %56
  %58 = load i64, ptr %57, align 8
  %59 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %52
  %60 = load i64, ptr %59, align 8
  %61 = add i64 %58, %60
  %62 = add i64 256, %51
  %63 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %62
  store i64 %61, ptr %63, align 8
  %64 = trunc i64 %62 to i32
  %65 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %52
  store i32 %64, ptr %65, align 4
  %66 = sub i64 -256, %51
  %67 = trunc i64 %66 to i32
  %68 = load i64, ptr %4, align 16
  %69 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %68
  store i32 %67, ptr %69, align 4
  store i64 %62, ptr %4, align 16
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %55, i32 noundef 1)
  br label %48, !llvm.loop !12

70:                                               ; preds = %48
  %.212.lcssa = phi i64 [ %.212, %48 ]
  %71 = add i64 256, %.212.lcssa
  %72 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %71
  store i32 0, ptr %72, align 4
  br label %73

73:                                               ; preds = %103, %70
  %.045 = phi i64 [ 0, %70 ], [ %.146, %103 ]
  %.042 = phi i64 [ 0, %70 ], [ %104, %103 ]
  %.039 = phi i64 [ 0, %70 ], [ %.140, %103 ]
  %74 = icmp ult i64 %.042, 256
  br i1 %74, label %75, label %105

75:                                               ; preds = %73
  %76 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.042
  %77 = load i64, ptr %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 0, ptr %80, align 4
  %81 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 0, ptr %81, align 1
  br label %103

82:                                               ; preds = %75
  %83 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.042
  %84 = load i32, ptr %83, align 4
  br label %85

85:                                               ; preds = %87, %82
  %.043 = phi i64 [ 0, %82 ], [ %.144, %87 ]
  %.037 = phi i32 [ %84, %82 ], [ %93, %87 ]
  %.05 = phi i64 [ 1, %82 ], [ %94, %87 ]
  %.3 = phi i64 [ 0, %82 ], [ %95, %87 ]
  %86 = icmp ne i32 %.037, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %85
  %88 = icmp slt i32 %.037, 0
  %89 = add i64 %.043, %.05
  %90 = sub nsw i32 0, %.037
  %.144 = select i1 %88, i64 %89, i64 %.043
  %.138 = select i1 %88, i32 %90, i32 %.037
  %91 = sext i32 %.138 to i64
  %92 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %91
  %93 = load i32, ptr %92, align 4
  %94 = shl i64 %.05, 1
  %95 = add i64 %.3, 1
  br label %85, !llvm.loop !13

96:                                               ; preds = %85
  %.043.lcssa = phi i64 [ %.043, %85 ]
  %.3.lcssa = phi i64 [ %.3, %85 ]
  %97 = trunc i64 %.043.lcssa to i32
  %98 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 %97, ptr %98, align 4
  %99 = trunc i64 %.3.lcssa to i8
  %100 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 %99, ptr %100, align 1
  %101 = icmp ugt i64 %.043.lcssa, %.045
  %spec.select = select i1 %101, i64 %.043.lcssa, i64 %.045
  %102 = icmp ugt i64 %.3.lcssa, %.039
  %.241 = select i1 %102, i64 %.3.lcssa, i64 %.039
  br label %103

103:                                              ; preds = %96, %79
  %.146 = phi i64 [ %spec.select, %96 ], [ %.045, %79 ]
  %.140 = phi i64 [ %.241, %96 ], [ %.039, %79 ]
  %104 = add i64 %.042, 1
  br label %73, !llvm.loop !14

105:                                              ; preds = %73
  %.045.lcssa = phi i64 [ %.045, %73 ]
  %.039.lcssa = phi i64 [ %.039, %73 ]
  %106 = icmp ugt i64 %.039.lcssa, 32
  br i1 %106, label %107, label %110

107:                                              ; preds = %105
  %108 = call ptr @__acrt_iob_func(i32 noundef 2)
  %109 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %108, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

110:                                              ; preds = %105
  %111 = icmp eq i64 %.045.lcssa, 0
  br i1 %111, label %112, label %.preheader3

.preheader3:                                      ; preds = %110
  br label %115

112:                                              ; preds = %110
  %113 = call ptr @__acrt_iob_func(i32 noundef 2)
  %114 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %113, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

115:                                              ; preds = %.preheader3, %160
  %.134 = phi ptr [ %161, %160 ], [ %0, %.preheader3 ]
  %.028 = phi i64 [ %.129.lcssa, %160 ], [ 0, %.preheader3 ]
  %.024 = phi i8 [ %.125.lcssa, %160 ], [ 0, %.preheader3 ]
  %.16 = phi i64 [ %162, %160 ], [ 0, %.preheader3 ]
  %.01 = phi i32 [ %.1.lcssa, %160 ], [ -1, %.preheader3 ]
  %116 = icmp ult i64 %.16, %1
  br i1 %116, label %117, label %163

117:                                              ; preds = %115
  %118 = load i8, ptr %.134, align 1
  %119 = zext i8 %118 to i64
  %120 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %119
  %121 = load i8, ptr %120, align 1
  %122 = zext i8 %121 to i32
  %123 = sub nsw i32 %122, 1
  %124 = shl i32 1, %123
  %125 = sext i32 %124 to i64
  br label %126

126:                                              ; preds = %147, %117
  %.129 = phi i64 [ %.028, %117 ], [ %.230, %147 ]
  %.125 = phi i8 [ %.024, %117 ], [ %.327, %147 ]
  %.015 = phi i64 [ %125, %117 ], [ %158, %147 ]
  %.4 = phi i64 [ 0, %117 ], [ %159, %147 ]
  %.1 = phi i32 [ %.01, %117 ], [ %.2, %147 ]
  %127 = load i8, ptr %.134, align 1
  %128 = zext i8 %127 to i64
  %129 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %128
  %130 = load i8, ptr %129, align 1
  %131 = zext i8 %130 to i64
  %132 = icmp ult i64 %.4, %131
  br i1 %132, label %133, label %160

133:                                              ; preds = %126
  %134 = icmp eq i32 %.1, 7
  br i1 %134, label %135, label %142

135:                                              ; preds = %133
  %136 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %136, align 1
  %137 = add i64 %.129, 1
  %138 = icmp eq i64 %137, %1
  br i1 %138, label %139, label %147

139:                                              ; preds = %135
  %140 = call ptr @__acrt_iob_func(i32 noundef 2)
  %141 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %140, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

142:                                              ; preds = %133
  %143 = add nsw i32 %.1, 1
  %144 = sext i8 %.125 to i32
  %145 = shl i32 %144, 1
  %146 = trunc i32 %145 to i8
  br label %147

147:                                              ; preds = %142, %135
  %.230 = phi i64 [ %.129, %142 ], [ %137, %135 ]
  %.226 = phi i8 [ %146, %142 ], [ 0, %135 ]
  %.2 = phi i32 [ %143, %142 ], [ 0, %135 ]
  %148 = load i8, ptr %.134, align 1
  %149 = zext i8 %148 to i64
  %150 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %149
  %151 = load i32, ptr %150, align 4
  %152 = zext i32 %151 to i64
  %153 = and i64 %152, %.015
  %154 = icmp ne i64 %153, 0
  %155 = sext i8 %.226 to i32
  %156 = or i32 %155, 1
  %157 = trunc i32 %156 to i8
  %.327 = select i1 %154, i8 %157, i8 %.226
  %158 = lshr i64 %.015, 1
  %159 = add i64 %.4, 1
  br label %126, !llvm.loop !15

160:                                              ; preds = %126
  %.129.lcssa = phi i64 [ %.129, %126 ]
  %.125.lcssa = phi i8 [ %.125, %126 ]
  %.1.lcssa = phi i32 [ %.1, %126 ]
  %161 = getelementptr inbounds nuw i8, ptr %.134, i32 1
  %162 = add i64 %.16, 1
  br label %115, !llvm.loop !16

163:                                              ; preds = %115
  %.028.lcssa = phi i64 [ %.028, %115 ]
  %.024.lcssa = phi i8 [ %.024, %115 ]
  %.01.lcssa = phi i32 [ %.01, %115 ]
  %164 = sub nsw i32 7, %.01.lcssa
  %165 = sext i8 %.024.lcssa to i32
  %166 = shl i32 %165, %164
  %167 = trunc i32 %166 to i8
  %168 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %167, ptr %168, align 1
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 1024, i1 false)
  br label %169

169:                                              ; preds = %201, %163
  %.27 = phi i64 [ 0, %163 ], [ %202, %201 ]
  %.0 = phi ptr [ %9, %163 ], [ %173, %201 ]
  %170 = icmp ult i64 %.27, 256
  br i1 %170, label %171, label %.preheader2

.preheader2:                                      ; preds = %169
  br label %203

171:                                              ; preds = %169
  %172 = trunc i64 %.27 to i8
  store i8 %172, ptr %.0, align 1
  %173 = getelementptr inbounds nuw i8, ptr %.0, i32 1
  %174 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %175 = load i32, ptr %174, align 4
  %176 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %177 = load i8, ptr %176, align 1
  %178 = zext i8 %177 to i32
  %179 = or i32 %175, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %201

181:                                              ; preds = %171
  %182 = sub nsw i32 %178, 1
  %183 = shl i32 1, %182
  %184 = sext i32 %183 to i64
  %185 = load i8, ptr %176, align 1
  %186 = zext i8 %185 to i64
  br label %187

187:                                              ; preds = %189, %181
  %.019 = phi i32 [ 0, %181 ], [ %spec.select1, %189 ]
  %.116 = phi i64 [ %184, %181 ], [ %197, %189 ]
  %.5 = phi i64 [ 0, %181 ], [ %198, %189 ]
  %188 = icmp ult i64 %.5, %186
  br i1 %188, label %189, label %199

189:                                              ; preds = %187
  %190 = mul i32 %.019, 2
  %191 = add i32 %190, 1
  %192 = load i32, ptr %174, align 4
  %193 = zext i32 %192 to i64
  %194 = and i64 %193, %.116
  %195 = icmp ne i64 %194, 0
  %196 = add i32 %191, 1
  %spec.select1 = select i1 %195, i32 %196, i32 %191
  %197 = lshr i64 %.116, 1
  %198 = add i64 %.5, 1
  br label %187, !llvm.loop !17

199:                                              ; preds = %187
  %.019.lcssa = phi i32 [ %.019, %187 ]
  %200 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.27
  store i32 %.019.lcssa, ptr %200, align 4
  br label %201

201:                                              ; preds = %199, %171
  %202 = add i64 %.27, 1
  br label %169, !llvm.loop !18

203:                                              ; preds = %.preheader2, %.critedge
  %.6 = phi i64 [ %225, %.critedge ], [ 1, %.preheader2 ]
  %204 = icmp ult i64 %.6, 256
  br i1 %204, label %205, label %.preheader1

.preheader1:                                      ; preds = %203
  br label %226

205:                                              ; preds = %203
  %206 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %207 = load i32, ptr %206, align 4
  %208 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %209 = load i8, ptr %208, align 1
  br label %210

210:                                              ; preds = %217, %205
  %.38 = phi i64 [ %.6, %205 ], [ %222, %217 ]
  %211 = icmp ne i64 %.38, 0
  br i1 %211, label %212, label %.critedge

212:                                              ; preds = %210
  %213 = sub i64 %.38, 1
  %214 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %213
  %215 = load i32, ptr %214, align 4
  %216 = icmp ugt i32 %215, %207
  br i1 %216, label %217, label %.critedge

217:                                              ; preds = %212
  %218 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %215, ptr %218, align 4
  %219 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %213
  %220 = load i8, ptr %219, align 1
  %221 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %220, ptr %221, align 1
  %222 = add i64 %.38, -1
  br label %210, !llvm.loop !19

.critedge:                                        ; preds = %212, %210
  %.38.lcssa = phi i64 [ %.38, %212 ], [ %.38, %210 ]
  %223 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %207, ptr %223, align 4
  %224 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %209, ptr %224, align 1
  %225 = add i64 %.6, 1
  br label %203, !llvm.loop !20

226:                                              ; preds = %.preheader1, %230
  %.49 = phi i64 [ %231, %230 ], [ 0, %.preheader1 ]
  %227 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %228 = load i32, ptr %227, align 4
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %.preheader

.preheader:                                       ; preds = %226
  %.49.lcssa = phi i64 [ %.49, %226 ]
  br label %232

230:                                              ; preds = %226
  %231 = add i64 %.49, 1
  br label %226, !llvm.loop !21

232:                                              ; preds = %.preheader, %255
  %.235 = phi ptr [ %.336, %255 ], [ %0, %.preheader ]
  %.031 = phi ptr [ %.132, %255 ], [ %11, %.preheader ]
  %.221 = phi i32 [ %.423, %255 ], [ 0, %.preheader ]
  %.217 = phi i64 [ %.318, %255 ], [ 128, %.preheader ]
  %.313 = phi i64 [ %.414, %255 ], [ 0, %.preheader ]
  %.7 = phi i64 [ %.9, %255 ], [ %.49.lcssa, %.preheader ]
  %233 = icmp ult i64 %.313, %1
  br i1 %233, label %234, label %259

234:                                              ; preds = %232
  %235 = mul i32 %.221, 2
  %236 = add i32 %235, 1
  %237 = load i8, ptr %.031, align 1
  %238 = zext i8 %237 to i64
  %239 = and i64 %238, %.217
  %240 = icmp ne i64 %239, 0
  %241 = add i32 %236, 1
  %spec.select2 = select i1 %240, i32 %241, i32 %236
  br label %242

242:                                              ; preds = %246, %234
  %.8 = phi i64 [ %.7, %234 ], [ %247, %246 ]
  %243 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %244 = load i32, ptr %243, align 4
  %245 = icmp ult i32 %244, %spec.select2
  br i1 %245, label %246, label %248

246:                                              ; preds = %242
  %247 = add i64 %.8, 1
  br label %242, !llvm.loop !22

248:                                              ; preds = %242
  %.8.lcssa = phi i64 [ %.8, %242 ]
  %.lcssa = phi i32 [ %244, %242 ]
  %249 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %249, label %250, label %255

250:                                              ; preds = %248
  %251 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %252 = load i8, ptr %251, align 1
  store i8 %252, ptr %.235, align 1
  %253 = getelementptr inbounds nuw i8, ptr %.235, i32 1
  %254 = add i64 %.313, 1
  br label %255

255:                                              ; preds = %250, %248
  %.336 = phi ptr [ %253, %250 ], [ %.235, %248 ]
  %.423 = phi i32 [ 0, %250 ], [ %spec.select2, %248 ]
  %.414 = phi i64 [ %254, %250 ], [ %.313, %248 ]
  %.9 = phi i64 [ %.49.lcssa, %250 ], [ %.8.lcssa, %248 ]
  %256 = icmp ugt i64 %.217, 1
  %257 = lshr i64 %.217, 1
  %258 = getelementptr inbounds nuw i8, ptr %.031, i32 1
  %.132 = select i1 %256, ptr %.031, ptr %258
  %.318 = select i1 %256, i64 %257, i64 128
  br label %232, !llvm.loop !23

259:                                              ; preds = %232
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
  %10 = sdiv i32 %2, 2
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds i64, ptr %0, i64 %11
  br label %13

13:                                               ; preds = %41, %4
  %.01 = phi i32 [ %3, %4 ], [ %.0, %41 ]
  %14 = icmp sle i32 %.01, %10
  br i1 %14, label %15, label %45

15:                                               ; preds = %13
  %16 = add nsw i32 %.01, %.01
  %17 = icmp slt i32 %16, %2
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = sub nsw i32 %16, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, ptr %1, i64 %20
  %22 = load i64, ptr %21, align 8
  %23 = getelementptr inbounds nuw i64, ptr %0, i64 %22
  %24 = load i64, ptr %23, align 8
  %25 = sext i32 %16 to i64
  %26 = getelementptr inbounds i64, ptr %1, i64 %25
  %27 = load i64, ptr %26, align 8
  %28 = getelementptr inbounds nuw i64, ptr %0, i64 %27
  %29 = load i64, ptr %28, align 8
  %30 = icmp ugt i64 %24, %29
  %31 = add nsw i32 %16, 1
  %spec.select = select i1 %30, i32 %31, i32 %16
  br label %32

32:                                               ; preds = %18, %15
  %.0 = phi i32 [ %16, %15 ], [ %spec.select, %18 ]
  %33 = load i64, ptr %12, align 8
  %34 = sub nsw i32 %.0, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, ptr %1, i64 %35
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds nuw i64, ptr %0, i64 %37
  %39 = load i64, ptr %38, align 8
  %40 = icmp ult i64 %33, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %32
  %42 = sub nsw i32 %.01, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, ptr %1, i64 %43
  store i64 %37, ptr %44, align 8
  br label %13, !llvm.loop !24

45:                                               ; preds = %32, %13
  %.01.lcssa = phi i32 [ %.01, %32 ], [ %.01, %13 ]
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
  br i1 %3, label %.preheader, label %13

.preheader:                                       ; preds = %2
  %4 = getelementptr inbounds ptr, ptr %1, i64 1
  br label %5

5:                                                ; preds = %.preheader, %11
  %.01 = phi i32 [ %12, %11 ], [ 1, %.preheader ]
  %6 = icmp slt i32 %.01, %0
  br i1 %6, label %7, label %.loopexit

7:                                                ; preds = %5
  %8 = load ptr, ptr %4, align 8
  %9 = call i32 @strcmp(ptr noundef %8, ptr noundef @.str.4) #7
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %.loopexit

11:                                               ; preds = %7
  %12 = add nsw i32 %.01, 1
  br label %5, !llvm.loop !25

.loopexit:                                        ; preds = %5, %7
  %.0.ph = phi i8 [ 1, %7 ], [ 0, %5 ]
  br label %13

13:                                               ; preds = %.loopexit, %2
  %.0 = phi i8 [ 0, %2 ], [ %.0.ph, %.loopexit ]
  %14 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %15

15:                                               ; preds = %17, %13
  %.12 = phi i32 [ 0, %13 ], [ %18, %17 ]
  %16 = icmp slt i32 %.12, 30
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  call void @compdecomp(ptr noundef %14, i64 noundef 10000000)
  %18 = add nsw i32 %.12, 1
  br label %15, !llvm.loop !26

19:                                               ; preds = %15
  call void @free(ptr noundef %14)
  %20 = icmp ne i8 %.0, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = call ptr @__acrt_iob_func(i32 noundef 1)
  %23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.5, double noundef 0.000000e+00) #7
  br label %27

24:                                               ; preds = %19
  %25 = call ptr @__acrt_iob_func(i32 noundef 1)
  %26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.6, double noundef 0.000000e+00) #7
  br label %27

27:                                               ; preds = %24, %21
  %28 = call ptr @__acrt_iob_func(i32 noundef 1)
  %29 = call i32 @fflush(ptr noundef %28)
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
