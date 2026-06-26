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
  br i1 %20, label %21, label %.preheader14

.preheader14:                                     ; preds = %19
  br label %29

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

29:                                               ; preds = %47, %.preheader14
  %.010 = phi i64 [ 0, %.preheader14 ], [ %.111.1, %47 ]
  %.13 = phi i64 [ 0, %.preheader14 ], [ %48, %47 ]
  %30 = icmp samesign ult i64 %.13, 256
  br i1 %30, label %31, label %.preheader13

.preheader13:                                     ; preds = %29
  %.010.lcssa = phi i64 [ %.010, %29 ]
  br label %49

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
  %39 = add nuw nsw i64 %.13, 1
  br label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %39
  %42 = load i64, ptr %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.111
  store i64 %39, ptr %45, align 8
  %46 = add i64 %.111, 1
  br label %47

47:                                               ; preds = %44, %40
  %.111.1 = phi i64 [ %46, %44 ], [ %.111, %40 ]
  %48 = add nuw nsw i64 %.13, 2
  br label %29, !llvm.loop !10

49:                                               ; preds = %.preheader13, %51
  %.24 = phi i64 [ %56, %51 ], [ %.010.lcssa, %.preheader13 ]
  %50 = icmp ugt i64 %.24, 0
  br i1 %50, label %51, label %.preheader12

.preheader12:                                     ; preds = %49
  br label %57

51:                                               ; preds = %49
  %52 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %53 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %54 = trunc i64 %.010.lcssa to i32
  %55 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef %52, ptr noundef %53, i32 noundef %54, i32 noundef %55)
  %56 = add i64 %.24, -1
  br label %49, !llvm.loop !11

57:                                               ; preds = %.preheader12, %59
  %.212 = phi i64 [ %60, %59 ], [ %.010.lcssa, %.preheader12 ]
  %58 = icmp ugt i64 %.212, 1
  br i1 %58, label %59, label %91

59:                                               ; preds = %57
  %60 = add i64 %.212, -1
  %61 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %62 = load i64, ptr %61, align 16
  %63 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %60
  %64 = load i64, ptr %63, align 8
  %65 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %64, ptr %65, align 16
  %66 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %67 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %68 = trunc i64 %60 to i32
  call void @heap_adjust(ptr noundef %66, ptr noundef %67, i32 noundef %68, i32 noundef 1)
  %69 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %70 = load i64, ptr %69, align 16
  %71 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %70
  %72 = load i64, ptr %71, align 8
  %73 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %62
  %74 = load i64, ptr %73, align 8
  %75 = add i64 %72, %74
  %76 = add i64 256, %60
  %77 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %76
  store i64 %75, ptr %77, align 8
  %78 = add i64 256, %60
  %79 = trunc i64 %78 to i32
  %80 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %62
  store i32 %79, ptr %80, align 4
  %81 = sub i64 -256, %60
  %82 = trunc i64 %81 to i32
  %83 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %84 = load i64, ptr %83, align 16
  %85 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %84
  store i32 %82, ptr %85, align 4
  %86 = add i64 256, %60
  %87 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %86, ptr %87, align 16
  %88 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %89 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %90 = trunc i64 %60 to i32
  call void @heap_adjust(ptr noundef %88, ptr noundef %89, i32 noundef %90, i32 noundef 1)
  br label %57, !llvm.loop !12

91:                                               ; preds = %57
  %.212.lcssa = phi i64 [ %.212, %57 ]
  %92 = add i64 256, %.212.lcssa
  %93 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %92
  store i32 0, ptr %93, align 4
  br label %94

94:                                               ; preds = %124, %91
  %.045 = phi i64 [ 0, %91 ], [ %.146, %124 ]
  %.042 = phi i64 [ 0, %91 ], [ %125, %124 ]
  %.039 = phi i64 [ 0, %91 ], [ %.140, %124 ]
  %95 = icmp ult i64 %.042, 256
  br i1 %95, label %96, label %126

96:                                               ; preds = %94
  %97 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.042
  %98 = load i64, ptr %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 0, ptr %101, align 4
  %102 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 0, ptr %102, align 1
  br label %124

103:                                              ; preds = %96
  %104 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.042
  %105 = load i32, ptr %104, align 4
  br label %106

106:                                              ; preds = %108, %103
  %.043 = phi i64 [ 0, %103 ], [ %.144, %108 ]
  %.037 = phi i32 [ %105, %103 ], [ %114, %108 ]
  %.05 = phi i64 [ 1, %103 ], [ %115, %108 ]
  %.3 = phi i64 [ 0, %103 ], [ %116, %108 ]
  %107 = icmp ne i32 %.037, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %106
  %109 = icmp slt i32 %.037, 0
  %110 = add i64 %.043, %.05
  %111 = sub nsw i32 0, %.037
  %.144 = select i1 %109, i64 %110, i64 %.043
  %.138 = select i1 %109, i32 %111, i32 %.037
  %112 = sext i32 %.138 to i64
  %113 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %112
  %114 = load i32, ptr %113, align 4
  %115 = shl i64 %.05, 1
  %116 = add i64 %.3, 1
  br label %106, !llvm.loop !13

117:                                              ; preds = %106
  %.043.lcssa = phi i64 [ %.043, %106 ]
  %.3.lcssa = phi i64 [ %.3, %106 ]
  %118 = trunc i64 %.043.lcssa to i32
  %119 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 %118, ptr %119, align 4
  %120 = trunc i64 %.3.lcssa to i8
  %121 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 %120, ptr %121, align 1
  %122 = icmp ugt i64 %.043.lcssa, %.045
  %spec.select = select i1 %122, i64 %.043.lcssa, i64 %.045
  %123 = icmp ugt i64 %.3.lcssa, %.039
  %.241 = select i1 %123, i64 %.3.lcssa, i64 %.039
  br label %124

124:                                              ; preds = %100, %117
  %.146 = phi i64 [ %spec.select, %117 ], [ %.045, %100 ]
  %.140 = phi i64 [ %.241, %117 ], [ %.039, %100 ]
  %125 = add i64 %.042, 1
  br label %94, !llvm.loop !14

126:                                              ; preds = %94
  %.045.lcssa = phi i64 [ %.045, %94 ]
  %.039.lcssa = phi i64 [ %.039, %94 ]
  %127 = icmp ugt i64 %.039.lcssa, 32
  br i1 %127, label %128, label %131

128:                                              ; preds = %126
  %129 = call ptr @__acrt_iob_func(i32 noundef 2)
  %130 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %129, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

131:                                              ; preds = %126
  %132 = icmp eq i64 %.045.lcssa, 0
  br i1 %132, label %133, label %.preheader5

.preheader5:                                      ; preds = %131
  br label %136

133:                                              ; preds = %131
  %134 = call ptr @__acrt_iob_func(i32 noundef 2)
  %135 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %134, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

136:                                              ; preds = %.preheader5, %181
  %.134 = phi ptr [ %182, %181 ], [ %0, %.preheader5 ]
  %.028 = phi i64 [ %.129.lcssa, %181 ], [ 0, %.preheader5 ]
  %.024 = phi i8 [ %.125.lcssa, %181 ], [ 0, %.preheader5 ]
  %.16 = phi i64 [ %183, %181 ], [ 0, %.preheader5 ]
  %.01 = phi i32 [ %.1.lcssa, %181 ], [ -1, %.preheader5 ]
  %137 = icmp ult i64 %.16, %1
  br i1 %137, label %138, label %184

138:                                              ; preds = %136
  %139 = load i8, ptr %.134, align 1
  %140 = zext i8 %139 to i64
  %141 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %140
  %142 = load i8, ptr %141, align 1
  %143 = zext i8 %142 to i32
  %144 = sub nsw i32 %143, 1
  %145 = shl i32 1, %144
  %146 = sext i32 %145 to i64
  br label %147

147:                                              ; preds = %168, %138
  %.129 = phi i64 [ %.028, %138 ], [ %.230, %168 ]
  %.125 = phi i8 [ %.024, %138 ], [ %.327, %168 ]
  %.015 = phi i64 [ %146, %138 ], [ %179, %168 ]
  %.4 = phi i64 [ 0, %138 ], [ %180, %168 ]
  %.1 = phi i32 [ %.01, %138 ], [ %.2, %168 ]
  %148 = load i8, ptr %.134, align 1
  %149 = zext i8 %148 to i64
  %150 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %149
  %151 = load i8, ptr %150, align 1
  %152 = zext i8 %151 to i64
  %153 = icmp ult i64 %.4, %152
  br i1 %153, label %154, label %181

154:                                              ; preds = %147
  %155 = icmp eq i32 %.1, 7
  br i1 %155, label %156, label %163

156:                                              ; preds = %154
  %157 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %157, align 1
  %158 = add i64 %.129, 1
  %159 = icmp eq i64 %158, %1
  br i1 %159, label %160, label %168

160:                                              ; preds = %156
  %161 = call ptr @__acrt_iob_func(i32 noundef 2)
  %162 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %161, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

163:                                              ; preds = %154
  %164 = add nsw i32 %.1, 1
  %165 = sext i8 %.125 to i32
  %166 = shl i32 %165, 1
  %167 = trunc i32 %166 to i8
  br label %168

168:                                              ; preds = %156, %163
  %.230 = phi i64 [ %.129, %163 ], [ %158, %156 ]
  %.226 = phi i8 [ %167, %163 ], [ 0, %156 ]
  %.2 = phi i32 [ %164, %163 ], [ 0, %156 ]
  %169 = load i8, ptr %.134, align 1
  %170 = zext i8 %169 to i64
  %171 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %170
  %172 = load i32, ptr %171, align 4
  %173 = zext i32 %172 to i64
  %174 = and i64 %173, %.015
  %175 = icmp ne i64 %174, 0
  %176 = sext i8 %.226 to i32
  %177 = or i32 %176, 1
  %178 = trunc i32 %177 to i8
  %.327 = select i1 %175, i8 %178, i8 %.226
  %179 = lshr i64 %.015, 1
  %180 = add i64 %.4, 1
  br label %147, !llvm.loop !15

181:                                              ; preds = %147
  %.129.lcssa = phi i64 [ %.129, %147 ]
  %.125.lcssa = phi i8 [ %.125, %147 ]
  %.1.lcssa = phi i32 [ %.1, %147 ]
  %182 = getelementptr inbounds nuw i8, ptr %.134, i32 1
  %183 = add i64 %.16, 1
  br label %136, !llvm.loop !16

184:                                              ; preds = %136
  %.028.lcssa = phi i64 [ %.028, %136 ]
  %.024.lcssa = phi i8 [ %.024, %136 ]
  %.01.lcssa = phi i32 [ %.01, %136 ]
  %185 = sub nsw i32 7, %.01.lcssa
  %186 = sext i8 %.024.lcssa to i32
  %187 = shl i32 %186, %185
  %188 = trunc i32 %187 to i8
  %189 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %188, ptr %189, align 1
  %190 = getelementptr inbounds [256 x i32], ptr %8, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %190, i8 0, i64 1024, i1 false)
  %191 = getelementptr inbounds [256 x i8], ptr %9, i64 0, i64 0
  br label %192

192:                                              ; preds = %229, %184
  %.27 = phi i64 [ 0, %184 ], [ %230, %229 ]
  %.0 = phi ptr [ %191, %184 ], [ %196, %229 ]
  %193 = icmp ult i64 %.27, 256
  br i1 %193, label %194, label %.preheader4

.preheader4:                                      ; preds = %192
  br label %231

194:                                              ; preds = %192
  %195 = trunc i64 %.27 to i8
  store i8 %195, ptr %.0, align 1
  %196 = getelementptr inbounds nuw i8, ptr %.0, i32 1
  %197 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %198 = load i32, ptr %197, align 4
  %199 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %200 = load i8, ptr %199, align 1
  %201 = zext i8 %200 to i32
  %202 = or i32 %198, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %229

204:                                              ; preds = %194
  %205 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %206 = load i8, ptr %205, align 1
  %207 = zext i8 %206 to i32
  %208 = sub nsw i32 %207, 1
  %209 = shl i32 1, %208
  %210 = sext i32 %209 to i64
  br label %211

211:                                              ; preds = %216, %204
  %.019 = phi i32 [ 0, %204 ], [ %spec.select1, %216 ]
  %.116 = phi i64 [ %210, %204 ], [ %225, %216 ]
  %.5 = phi i64 [ 0, %204 ], [ %226, %216 ]
  %212 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %213 = load i8, ptr %212, align 1
  %214 = zext i8 %213 to i64
  %215 = icmp ult i64 %.5, %214
  br i1 %215, label %216, label %227

216:                                              ; preds = %211
  %217 = mul i32 %.019, 2
  %218 = add i32 %217, 1
  %219 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %220 = load i32, ptr %219, align 4
  %221 = zext i32 %220 to i64
  %222 = and i64 %221, %.116
  %223 = icmp ne i64 %222, 0
  %224 = add i32 %218, 1
  %spec.select1 = select i1 %223, i32 %224, i32 %218
  %225 = lshr i64 %.116, 1
  %226 = add i64 %.5, 1
  br label %211, !llvm.loop !17

227:                                              ; preds = %211
  %.019.lcssa = phi i32 [ %.019, %211 ]
  %228 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.27
  store i32 %.019.lcssa, ptr %228, align 4
  br label %229

229:                                              ; preds = %194, %227
  %230 = add i64 %.27, 1
  br label %192, !llvm.loop !18

231:                                              ; preds = %.preheader4, %.critedge
  %.6 = phi i64 [ %257, %.critedge ], [ 1, %.preheader4 ]
  %232 = icmp ult i64 %.6, 256
  br i1 %232, label %233, label %.preheader3

.preheader3:                                      ; preds = %231
  br label %258

233:                                              ; preds = %231
  %234 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %235 = load i32, ptr %234, align 4
  %236 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %237 = load i8, ptr %236, align 1
  br label %238

238:                                              ; preds = %245, %233
  %.38 = phi i64 [ %.6, %233 ], [ %254, %245 ]
  %239 = icmp ne i64 %.38, 0
  br i1 %239, label %240, label %.critedge

240:                                              ; preds = %238
  %241 = sub i64 %.38, 1
  %242 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %241
  %243 = load i32, ptr %242, align 4
  %244 = icmp ugt i32 %243, %235
  br i1 %244, label %245, label %.critedge

245:                                              ; preds = %240
  %246 = sub i64 %.38, 1
  %247 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %246
  %248 = load i32, ptr %247, align 4
  %249 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %248, ptr %249, align 4
  %250 = sub i64 %.38, 1
  %251 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %250
  %252 = load i8, ptr %251, align 1
  %253 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %252, ptr %253, align 1
  %254 = add i64 %.38, -1
  br label %238, !llvm.loop !19

.critedge:                                        ; preds = %238, %240
  %.38.lcssa = phi i64 [ %.38, %238 ], [ %.38, %240 ]
  %255 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %235, ptr %255, align 4
  %256 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %237, ptr %256, align 1
  %257 = add i64 %.6, 1
  br label %231, !llvm.loop !20

258:                                              ; preds = %.preheader3, %262
  %.49 = phi i64 [ %263, %262 ], [ 0, %.preheader3 ]
  %259 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %260 = load i32, ptr %259, align 4
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %.preheader

.preheader:                                       ; preds = %258
  %.49.lcssa = phi i64 [ %.49, %258 ]
  br label %264

262:                                              ; preds = %258
  %263 = add i64 %.49, 1
  br label %258, !llvm.loop !21

264:                                              ; preds = %.preheader, %289
  %.235 = phi ptr [ %.336, %289 ], [ %0, %.preheader ]
  %.031 = phi ptr [ %.132, %289 ], [ %11, %.preheader ]
  %.221 = phi i32 [ %.423, %289 ], [ 0, %.preheader ]
  %.217 = phi i64 [ %.318, %289 ], [ 128, %.preheader ]
  %.313 = phi i64 [ %.414, %289 ], [ 0, %.preheader ]
  %.7 = phi i64 [ %.9, %289 ], [ %.49.lcssa, %.preheader ]
  %265 = icmp ult i64 %.313, %1
  br i1 %265, label %266, label %293

266:                                              ; preds = %264
  %267 = mul i32 %.221, 2
  %268 = add i32 %267, 1
  %269 = load i8, ptr %.031, align 1
  %270 = zext i8 %269 to i64
  %271 = and i64 %270, %.217
  %272 = icmp ne i64 %271, 0
  %273 = add i32 %268, 1
  %spec.select2 = select i1 %272, i32 %273, i32 %268
  br label %274

274:                                              ; preds = %278, %266
  %.8 = phi i64 [ %.7, %266 ], [ %279, %278 ]
  %275 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %276 = load i32, ptr %275, align 4
  %277 = icmp ult i32 %276, %spec.select2
  br i1 %277, label %278, label %280

278:                                              ; preds = %274
  %279 = add i64 %.8, 1
  br label %274, !llvm.loop !22

280:                                              ; preds = %274
  %.8.lcssa = phi i64 [ %.8, %274 ]
  %281 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8.lcssa
  %282 = load i32, ptr %281, align 4
  %283 = icmp eq i32 %spec.select2, %282
  br i1 %283, label %284, label %289

284:                                              ; preds = %280
  %285 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %286 = load i8, ptr %285, align 1
  store i8 %286, ptr %.235, align 1
  %287 = getelementptr inbounds nuw i8, ptr %.235, i32 1
  %288 = add i64 %.313, 1
  br label %289

289:                                              ; preds = %284, %280
  %.336 = phi ptr [ %287, %284 ], [ %.235, %280 ]
  %.423 = phi i32 [ 0, %284 ], [ %spec.select2, %280 ]
  %.414 = phi i64 [ %288, %284 ], [ %.313, %280 ]
  %.9 = phi i64 [ %.49.lcssa, %284 ], [ %.8.lcssa, %280 ]
  %290 = icmp ugt i64 %.217, 1
  %291 = lshr i64 %.217, 1
  %292 = getelementptr inbounds nuw i8, ptr %.031, i32 1
  %.132 = select i1 %290, ptr %.031, ptr %292
  %.318 = select i1 %290, i64 %291, i64 128
  br label %264, !llvm.loop !23

293:                                              ; preds = %264
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

.loopexit:                                        ; preds = %7, %5
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
