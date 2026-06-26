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

19:                                               ; preds = %21, %2
  %.033 = phi ptr [ %0, %2 ], [ %27, %21 ]
  %.02 = phi i64 [ 0, %2 ], [ %28, %21 ]
  %20 = icmp ult i64 %.02, %1
  br i1 %20, label %21, label %29

21:                                               ; preds = %19
  %22 = load i8, ptr %.033, align 1
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %23
  %25 = load i64, ptr %24, align 8
  %26 = add i64 %25, 1
  store i64 %26, ptr %24, align 8
  %27 = getelementptr inbounds nuw i8, ptr %.033, i32 1
  %28 = add i64 %.02, 1
  br label %19, !llvm.loop !9

29:                                               ; preds = %19, %38
  %.010 = phi i64 [ %.111, %38 ], [ 0, %19 ]
  %.13 = phi i64 [ %39, %38 ], [ 0, %19 ]
  %30 = icmp ult i64 %.13, 256
  br i1 %30, label %31, label %40

31:                                               ; preds = %29
  %32 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.13
  %33 = load i64, ptr %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.010
  store i64 %.13, ptr %36, align 8
  %37 = add i64 %.010, 1
  br label %38

38:                                               ; preds = %31, %35
  %.111 = phi i64 [ %37, %35 ], [ %.010, %31 ]
  %39 = add i64 %.13, 1
  br label %29, !llvm.loop !10

40:                                               ; preds = %29
  %.010.lcssa = phi i64 [ %.010, %29 ]
  %41 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %42 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %43 = trunc i64 %.010.lcssa to i32
  br label %44

44:                                               ; preds = %46, %40
  %.24 = phi i64 [ %.010.lcssa, %40 ], [ %48, %46 ]
  %45 = icmp ugt i64 %.24, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef %41, ptr noundef %42, i32 noundef %43, i32 noundef %47)
  %48 = add i64 %.24, -1
  br label %44, !llvm.loop !11

49:                                               ; preds = %44
  %50 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %51 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %52 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %53 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %54 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %55 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %56 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %57 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %58 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  br label %59

59:                                               ; preds = %61, %49
  %.212 = phi i64 [ %.010.lcssa, %49 ], [ %62, %61 ]
  %60 = icmp ugt i64 %.212, 1
  br i1 %60, label %61, label %84

61:                                               ; preds = %59
  %62 = add i64 %.212, -1
  %63 = load i64, ptr %50, align 16
  %64 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %62
  %65 = load i64, ptr %64, align 8
  store i64 %65, ptr %51, align 16
  %66 = trunc i64 %62 to i32
  call void @heap_adjust(ptr noundef %52, ptr noundef %53, i32 noundef %66, i32 noundef 1)
  %67 = load i64, ptr %54, align 16
  %68 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %67
  %69 = load i64, ptr %68, align 8
  %70 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %63
  %71 = load i64, ptr %70, align 8
  %72 = add i64 %69, %71
  %73 = add i64 256, %62
  %74 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %73
  store i64 %72, ptr %74, align 8
  %75 = add i64 256, %62
  %76 = trunc i64 %75 to i32
  %77 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %63
  store i32 %76, ptr %77, align 4
  %78 = sub i64 -256, %62
  %79 = trunc i64 %78 to i32
  %80 = load i64, ptr %55, align 16
  %81 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %80
  store i32 %79, ptr %81, align 4
  %82 = add i64 256, %62
  store i64 %82, ptr %56, align 16
  %83 = trunc i64 %62 to i32
  call void @heap_adjust(ptr noundef %57, ptr noundef %58, i32 noundef %83, i32 noundef 1)
  br label %59, !llvm.loop !12

84:                                               ; preds = %59
  %.212.lcssa = phi i64 [ %.212, %59 ]
  %85 = add i64 256, %.212.lcssa
  %86 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %85
  store i32 0, ptr %86, align 4
  br label %87

87:                                               ; preds = %117, %84
  %.045 = phi i64 [ 0, %84 ], [ %.146, %117 ]
  %.042 = phi i64 [ 0, %84 ], [ %118, %117 ]
  %.039 = phi i64 [ 0, %84 ], [ %.140, %117 ]
  %88 = icmp ult i64 %.042, 256
  br i1 %88, label %89, label %119

89:                                               ; preds = %87
  %90 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.042
  %91 = load i64, ptr %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 0, ptr %94, align 4
  %95 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 0, ptr %95, align 1
  br label %117

96:                                               ; preds = %89
  %97 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.042
  %98 = load i32, ptr %97, align 4
  br label %99

99:                                               ; preds = %101, %96
  %.043 = phi i64 [ 0, %96 ], [ %.144, %101 ]
  %.037 = phi i32 [ %98, %96 ], [ %107, %101 ]
  %.05 = phi i64 [ 1, %96 ], [ %108, %101 ]
  %.3 = phi i64 [ 0, %96 ], [ %109, %101 ]
  %100 = icmp ne i32 %.037, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %99
  %102 = icmp slt i32 %.037, 0
  %103 = add i64 %.043, %.05
  %104 = sub nsw i32 0, %.037
  %.144 = select i1 %102, i64 %103, i64 %.043
  %.138 = select i1 %102, i32 %104, i32 %.037
  %105 = sext i32 %.138 to i64
  %106 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %105
  %107 = load i32, ptr %106, align 4
  %108 = shl i64 %.05, 1
  %109 = add i64 %.3, 1
  br label %99, !llvm.loop !13

110:                                              ; preds = %99
  %.043.lcssa = phi i64 [ %.043, %99 ]
  %.3.lcssa = phi i64 [ %.3, %99 ]
  %111 = trunc i64 %.043.lcssa to i32
  %112 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 %111, ptr %112, align 4
  %113 = trunc i64 %.3.lcssa to i8
  %114 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 %113, ptr %114, align 1
  %115 = icmp ugt i64 %.043.lcssa, %.045
  %spec.select = select i1 %115, i64 %.043.lcssa, i64 %.045
  %116 = icmp ugt i64 %.3.lcssa, %.039
  %.241 = select i1 %116, i64 %.3.lcssa, i64 %.039
  br label %117

117:                                              ; preds = %93, %110
  %.146 = phi i64 [ %spec.select, %110 ], [ %.045, %93 ]
  %.140 = phi i64 [ %.241, %110 ], [ %.039, %93 ]
  %118 = add i64 %.042, 1
  br label %87, !llvm.loop !14

119:                                              ; preds = %87
  %.045.lcssa = phi i64 [ %.045, %87 ]
  %.039.lcssa = phi i64 [ %.039, %87 ]
  %120 = icmp ugt i64 %.039.lcssa, 32
  br i1 %120, label %121, label %124

121:                                              ; preds = %119
  %122 = call ptr @__acrt_iob_func(i32 noundef 2)
  %123 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %122, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

124:                                              ; preds = %119
  %125 = icmp eq i64 %.045.lcssa, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %124
  %127 = call ptr @__acrt_iob_func(i32 noundef 2)
  %128 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

129:                                              ; preds = %124, %174
  %.134 = phi ptr [ %175, %174 ], [ %0, %124 ]
  %.028 = phi i64 [ %.129.lcssa, %174 ], [ 0, %124 ]
  %.024 = phi i8 [ %.125.lcssa, %174 ], [ 0, %124 ]
  %.16 = phi i64 [ %176, %174 ], [ 0, %124 ]
  %.01 = phi i32 [ %.1.lcssa, %174 ], [ -1, %124 ]
  %130 = icmp ult i64 %.16, %1
  br i1 %130, label %131, label %177

131:                                              ; preds = %129
  %132 = load i8, ptr %.134, align 1
  %133 = zext i8 %132 to i64
  %134 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %133
  %135 = load i8, ptr %134, align 1
  %136 = zext i8 %135 to i32
  %137 = sub nsw i32 %136, 1
  %138 = shl i32 1, %137
  %139 = sext i32 %138 to i64
  br label %140

140:                                              ; preds = %161, %131
  %.129 = phi i64 [ %.028, %131 ], [ %.230, %161 ]
  %.125 = phi i8 [ %.024, %131 ], [ %.327, %161 ]
  %.015 = phi i64 [ %139, %131 ], [ %172, %161 ]
  %.4 = phi i64 [ 0, %131 ], [ %173, %161 ]
  %.1 = phi i32 [ %.01, %131 ], [ %.2, %161 ]
  %141 = load i8, ptr %.134, align 1
  %142 = zext i8 %141 to i64
  %143 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %142
  %144 = load i8, ptr %143, align 1
  %145 = zext i8 %144 to i64
  %146 = icmp ult i64 %.4, %145
  br i1 %146, label %147, label %174

147:                                              ; preds = %140
  %148 = icmp eq i32 %.1, 7
  br i1 %148, label %149, label %156

149:                                              ; preds = %147
  %150 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %150, align 1
  %151 = add i64 %.129, 1
  %152 = icmp eq i64 %151, %1
  br i1 %152, label %153, label %161

153:                                              ; preds = %149
  %154 = call ptr @__acrt_iob_func(i32 noundef 2)
  %155 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %154, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

156:                                              ; preds = %147
  %157 = add nsw i32 %.1, 1
  %158 = sext i8 %.125 to i32
  %159 = shl i32 %158, 1
  %160 = trunc i32 %159 to i8
  br label %161

161:                                              ; preds = %149, %156
  %.230 = phi i64 [ %.129, %156 ], [ %151, %149 ]
  %.226 = phi i8 [ %160, %156 ], [ 0, %149 ]
  %.2 = phi i32 [ %157, %156 ], [ 0, %149 ]
  %162 = load i8, ptr %.134, align 1
  %163 = zext i8 %162 to i64
  %164 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %163
  %165 = load i32, ptr %164, align 4
  %166 = zext i32 %165 to i64
  %167 = and i64 %166, %.015
  %168 = icmp ne i64 %167, 0
  %169 = sext i8 %.226 to i32
  %170 = or i32 %169, 1
  %171 = trunc i32 %170 to i8
  %.327 = select i1 %168, i8 %171, i8 %.226
  %172 = lshr i64 %.015, 1
  %173 = add i64 %.4, 1
  br label %140, !llvm.loop !15

174:                                              ; preds = %140
  %.129.lcssa = phi i64 [ %.129, %140 ]
  %.125.lcssa = phi i8 [ %.125, %140 ]
  %.1.lcssa = phi i32 [ %.1, %140 ]
  %175 = getelementptr inbounds nuw i8, ptr %.134, i32 1
  %176 = add i64 %.16, 1
  br label %129, !llvm.loop !16

177:                                              ; preds = %129
  %.028.lcssa = phi i64 [ %.028, %129 ]
  %.024.lcssa = phi i8 [ %.024, %129 ]
  %.01.lcssa = phi i32 [ %.01, %129 ]
  %178 = sub nsw i32 7, %.01.lcssa
  %179 = sext i8 %.024.lcssa to i32
  %180 = shl i32 %179, %178
  %181 = trunc i32 %180 to i8
  %182 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %181, ptr %182, align 1
  %183 = getelementptr inbounds [256 x i32], ptr %8, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %183, i8 0, i64 1024, i1 false)
  %184 = getelementptr inbounds [256 x i8], ptr %9, i64 0, i64 0
  br label %185

185:                                              ; preds = %222, %177
  %.27 = phi i64 [ 0, %177 ], [ %223, %222 ]
  %.0 = phi ptr [ %184, %177 ], [ %189, %222 ]
  %186 = icmp ult i64 %.27, 256
  br i1 %186, label %187, label %224

187:                                              ; preds = %185
  %188 = trunc i64 %.27 to i8
  store i8 %188, ptr %.0, align 1
  %189 = getelementptr inbounds nuw i8, ptr %.0, i32 1
  %190 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %191 = load i32, ptr %190, align 4
  %192 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %193 = load i8, ptr %192, align 1
  %194 = zext i8 %193 to i32
  %195 = or i32 %191, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %222

197:                                              ; preds = %187
  %198 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %199 = load i8, ptr %198, align 1
  %200 = zext i8 %199 to i32
  %201 = sub nsw i32 %200, 1
  %202 = shl i32 1, %201
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %205 = load i8, ptr %204, align 1
  %206 = zext i8 %205 to i64
  %207 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  br label %208

208:                                              ; preds = %210, %197
  %.019 = phi i32 [ 0, %197 ], [ %spec.select7, %210 ]
  %.116 = phi i64 [ %203, %197 ], [ %218, %210 ]
  %.5 = phi i64 [ 0, %197 ], [ %219, %210 ]
  %209 = icmp ult i64 %.5, %206
  br i1 %209, label %210, label %220

210:                                              ; preds = %208
  %211 = mul i32 %.019, 2
  %212 = add i32 %211, 1
  %213 = load i32, ptr %207, align 4
  %214 = zext i32 %213 to i64
  %215 = and i64 %214, %.116
  %216 = icmp ne i64 %215, 0
  %217 = add i32 %212, 1
  %spec.select7 = select i1 %216, i32 %217, i32 %212
  %218 = lshr i64 %.116, 1
  %219 = add i64 %.5, 1
  br label %208, !llvm.loop !17

220:                                              ; preds = %208
  %.019.lcssa = phi i32 [ %.019, %208 ]
  %221 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.27
  store i32 %.019.lcssa, ptr %221, align 4
  br label %222

222:                                              ; preds = %187, %220
  %223 = add i64 %.27, 1
  br label %185, !llvm.loop !18

224:                                              ; preds = %185, %.critedge
  %.6 = phi i64 [ %250, %.critedge ], [ 1, %185 ]
  %225 = icmp ult i64 %.6, 256
  br i1 %225, label %226, label %251

226:                                              ; preds = %224
  %227 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %228 = load i32, ptr %227, align 4
  %229 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %230 = load i8, ptr %229, align 1
  br label %231

231:                                              ; preds = %238, %226
  %.38 = phi i64 [ %.6, %226 ], [ %247, %238 ]
  %232 = icmp ne i64 %.38, 0
  br i1 %232, label %233, label %.critedge

233:                                              ; preds = %231
  %234 = sub i64 %.38, 1
  %235 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %234
  %236 = load i32, ptr %235, align 4
  %237 = icmp ugt i32 %236, %228
  br i1 %237, label %238, label %.critedge

238:                                              ; preds = %233
  %239 = sub i64 %.38, 1
  %240 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %239
  %241 = load i32, ptr %240, align 4
  %242 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %241, ptr %242, align 4
  %243 = sub i64 %.38, 1
  %244 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %243
  %245 = load i8, ptr %244, align 1
  %246 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %245, ptr %246, align 1
  %247 = add i64 %.38, -1
  br label %231, !llvm.loop !19

.critedge:                                        ; preds = %231, %233
  %.38.lcssa = phi i64 [ %.38, %233 ], [ %.38, %231 ]
  %248 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %228, ptr %248, align 4
  %249 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %230, ptr %249, align 1
  %250 = add i64 %.6, 1
  br label %224, !llvm.loop !20

251:                                              ; preds = %224, %255
  %.49 = phi i64 [ %256, %255 ], [ 0, %224 ]
  %252 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %253 = load i32, ptr %252, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %257

255:                                              ; preds = %251
  %256 = add i64 %.49, 1
  br label %251, !llvm.loop !21

257:                                              ; preds = %251
  %.49.lcssa = phi i64 [ %.49, %251 ]
  br label %258

258:                                              ; preds = %283, %257
  %.235 = phi ptr [ %0, %257 ], [ %.336, %283 ]
  %.031 = phi ptr [ %11, %257 ], [ %.132, %283 ]
  %.221 = phi i32 [ 0, %257 ], [ %.423, %283 ]
  %.217 = phi i64 [ 128, %257 ], [ %.318, %283 ]
  %.313 = phi i64 [ 0, %257 ], [ %.414, %283 ]
  %.7 = phi i64 [ %.49.lcssa, %257 ], [ %.9, %283 ]
  %259 = icmp ult i64 %.313, %1
  br i1 %259, label %260, label %287

260:                                              ; preds = %258
  %261 = mul i32 %.221, 2
  %262 = add i32 %261, 1
  %263 = load i8, ptr %.031, align 1
  %264 = zext i8 %263 to i64
  %265 = and i64 %264, %.217
  %266 = icmp ne i64 %265, 0
  %267 = add i32 %262, 1
  %spec.select8 = select i1 %266, i32 %267, i32 %262
  br label %268

268:                                              ; preds = %272, %260
  %.8 = phi i64 [ %.7, %260 ], [ %273, %272 ]
  %269 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %270 = load i32, ptr %269, align 4
  %271 = icmp ult i32 %270, %spec.select8
  br i1 %271, label %272, label %274

272:                                              ; preds = %268
  %273 = add i64 %.8, 1
  br label %268, !llvm.loop !22

274:                                              ; preds = %268
  %.8.lcssa = phi i64 [ %.8, %268 ]
  %275 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8.lcssa
  %276 = load i32, ptr %275, align 4
  %277 = icmp eq i32 %spec.select8, %276
  br i1 %277, label %278, label %283

278:                                              ; preds = %274
  %279 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %280 = load i8, ptr %279, align 1
  store i8 %280, ptr %.235, align 1
  %281 = getelementptr inbounds nuw i8, ptr %.235, i32 1
  %282 = add i64 %.313, 1
  br label %283

283:                                              ; preds = %278, %274
  %.336 = phi ptr [ %281, %278 ], [ %.235, %274 ]
  %.423 = phi i32 [ 0, %278 ], [ %spec.select8, %274 ]
  %.414 = phi i64 [ %282, %278 ], [ %.313, %274 ]
  %.9 = phi i64 [ %.49.lcssa, %278 ], [ %.8.lcssa, %274 ]
  %284 = icmp ugt i64 %.217, 1
  %285 = lshr i64 %.217, 1
  %286 = getelementptr inbounds nuw i8, ptr %.031, i32 1
  %.132 = select i1 %284, ptr %.031, ptr %286
  %.318 = select i1 %284, i64 %285, i64 128
  br label %258, !llvm.loop !23

287:                                              ; preds = %258
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
  br i1 %14, label %15, label %.loopexit

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
  br i1 %40, label %.loopexit, label %41

41:                                               ; preds = %32
  %42 = sub nsw i32 %.0, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, ptr %1, i64 %43
  %45 = load i64, ptr %44, align 8
  %46 = sub nsw i32 %.01, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, ptr %1, i64 %47
  store i64 %45, ptr %48, align 8
  br label %13, !llvm.loop !24

.loopexit:                                        ; preds = %13, %32
  %.012 = phi i32 [ %.01, %32 ], [ %.01, %13 ]
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

4:                                                ; preds = %2
  %5 = getelementptr inbounds ptr, ptr %1, i64 1
  br label %6

6:                                                ; preds = %12, %4
  %.01 = phi i32 [ 1, %4 ], [ %13, %12 ]
  %7 = icmp slt i32 %.01, %0
  br i1 %7, label %8, label %.loopexit

8:                                                ; preds = %6
  %9 = load ptr, ptr %5, align 8
  %10 = call i32 @strcmp(ptr noundef %9, ptr noundef @.str.4) #7
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %.loopexit

12:                                               ; preds = %8
  %13 = add nsw i32 %.01, 1
  br label %6, !llvm.loop !25

.loopexit:                                        ; preds = %8, %6, %2
  %.0 = phi i8 [ 0, %2 ], [ 1, %8 ], [ 0, %6 ]
  %14 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %15

15:                                               ; preds = %17, %.loopexit
  %.12 = phi i32 [ 0, %.loopexit ], [ %18, %17 ]
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
