; ModuleID = 'results\paper_full\CoyoteBench_huffbench\CoyoteBench_huffbench.ll'
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

40:                                               ; preds = %29, %42
  %.24 = phi i64 [ %47, %42 ], [ %.010, %29 ]
  %41 = icmp ugt i64 %.24, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %40
  %43 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %44 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %45 = trunc i64 %.010 to i32
  %46 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef %43, ptr noundef %44, i32 noundef %45, i32 noundef %46)
  %47 = add i64 %.24, -1
  br label %40, !llvm.loop !11

48:                                               ; preds = %40, %50
  %.212 = phi i64 [ %51, %50 ], [ %.010, %40 ]
  %49 = icmp ugt i64 %.212, 1
  br i1 %49, label %50, label %82

50:                                               ; preds = %48
  %51 = add i64 %.212, -1
  %52 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %53 = load i64, ptr %52, align 16
  %54 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %51
  %55 = load i64, ptr %54, align 8
  %56 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %55, ptr %56, align 16
  %57 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %58 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %59 = trunc i64 %51 to i32
  call void @heap_adjust(ptr noundef %57, ptr noundef %58, i32 noundef %59, i32 noundef 1)
  %60 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %61 = load i64, ptr %60, align 16
  %62 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %61
  %63 = load i64, ptr %62, align 8
  %64 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %53
  %65 = load i64, ptr %64, align 8
  %66 = add i64 %63, %65
  %67 = add i64 256, %51
  %68 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %67
  store i64 %66, ptr %68, align 8
  %69 = add i64 256, %51
  %70 = trunc i64 %69 to i32
  %71 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %53
  store i32 %70, ptr %71, align 4
  %72 = sub i64 -256, %51
  %73 = trunc i64 %72 to i32
  %74 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %75 = load i64, ptr %74, align 16
  %76 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %75
  store i32 %73, ptr %76, align 4
  %77 = add i64 256, %51
  %78 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %77, ptr %78, align 16
  %79 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %80 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %81 = trunc i64 %51 to i32
  call void @heap_adjust(ptr noundef %79, ptr noundef %80, i32 noundef %81, i32 noundef 1)
  br label %48, !llvm.loop !12

82:                                               ; preds = %48
  %83 = add i64 256, %.212
  %84 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %83
  store i32 0, ptr %84, align 4
  br label %85

85:                                               ; preds = %115, %82
  %.045 = phi i64 [ 0, %82 ], [ %.146, %115 ]
  %.042 = phi i64 [ 0, %82 ], [ %116, %115 ]
  %.039 = phi i64 [ 0, %82 ], [ %.140, %115 ]
  %86 = icmp ult i64 %.042, 256
  br i1 %86, label %87, label %117

87:                                               ; preds = %85
  %88 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.042
  %89 = load i64, ptr %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 0, ptr %92, align 4
  %93 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 0, ptr %93, align 1
  br label %115

94:                                               ; preds = %87
  %95 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.042
  %96 = load i32, ptr %95, align 4
  br label %97

97:                                               ; preds = %99, %94
  %.043 = phi i64 [ 0, %94 ], [ %.144, %99 ]
  %.037 = phi i32 [ %96, %94 ], [ %105, %99 ]
  %.05 = phi i64 [ 1, %94 ], [ %106, %99 ]
  %.3 = phi i64 [ 0, %94 ], [ %107, %99 ]
  %98 = icmp ne i32 %.037, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %97
  %100 = icmp slt i32 %.037, 0
  %101 = add i64 %.043, %.05
  %102 = sub nsw i32 0, %.037
  %.144 = select i1 %100, i64 %101, i64 %.043
  %.138 = select i1 %100, i32 %102, i32 %.037
  %103 = sext i32 %.138 to i64
  %104 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %103
  %105 = load i32, ptr %104, align 4
  %106 = shl i64 %.05, 1
  %107 = add i64 %.3, 1
  br label %97, !llvm.loop !13

108:                                              ; preds = %97
  %109 = trunc i64 %.043 to i32
  %110 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 %109, ptr %110, align 4
  %111 = trunc i64 %.3 to i8
  %112 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 %111, ptr %112, align 1
  %113 = icmp ugt i64 %.043, %.045
  %spec.select = select i1 %113, i64 %.043, i64 %.045
  %114 = icmp ugt i64 %.3, %.039
  %.241 = select i1 %114, i64 %.3, i64 %.039
  br label %115

115:                                              ; preds = %91, %108
  %.146 = phi i64 [ %spec.select, %108 ], [ %.045, %91 ]
  %.140 = phi i64 [ %.241, %108 ], [ %.039, %91 ]
  %116 = add i64 %.042, 1
  br label %85, !llvm.loop !14

117:                                              ; preds = %85
  %118 = icmp ugt i64 %.039, 32
  br i1 %118, label %119, label %122

119:                                              ; preds = %117
  %120 = call ptr @__acrt_iob_func(i32 noundef 2)
  %121 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %120, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

122:                                              ; preds = %117
  %123 = icmp eq i64 %.045, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %122
  %125 = call ptr @__acrt_iob_func(i32 noundef 2)
  %126 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %125, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

127:                                              ; preds = %122, %172
  %.134 = phi ptr [ %173, %172 ], [ %0, %122 ]
  %.028 = phi i64 [ %.129, %172 ], [ 0, %122 ]
  %.024 = phi i8 [ %.125, %172 ], [ 0, %122 ]
  %.16 = phi i64 [ %174, %172 ], [ 0, %122 ]
  %.01 = phi i32 [ %.1, %172 ], [ -1, %122 ]
  %128 = icmp ult i64 %.16, %1
  br i1 %128, label %129, label %175

129:                                              ; preds = %127
  %130 = load i8, ptr %.134, align 1
  %131 = zext i8 %130 to i64
  %132 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %131
  %133 = load i8, ptr %132, align 1
  %134 = zext i8 %133 to i32
  %135 = sub nsw i32 %134, 1
  %136 = shl i32 1, %135
  %137 = sext i32 %136 to i64
  br label %138

138:                                              ; preds = %159, %129
  %.129 = phi i64 [ %.028, %129 ], [ %.230, %159 ]
  %.125 = phi i8 [ %.024, %129 ], [ %.327, %159 ]
  %.015 = phi i64 [ %137, %129 ], [ %170, %159 ]
  %.4 = phi i64 [ 0, %129 ], [ %171, %159 ]
  %.1 = phi i32 [ %.01, %129 ], [ %.2, %159 ]
  %139 = load i8, ptr %.134, align 1
  %140 = zext i8 %139 to i64
  %141 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %140
  %142 = load i8, ptr %141, align 1
  %143 = zext i8 %142 to i64
  %144 = icmp ult i64 %.4, %143
  br i1 %144, label %145, label %172

145:                                              ; preds = %138
  %146 = icmp eq i32 %.1, 7
  br i1 %146, label %147, label %154

147:                                              ; preds = %145
  %148 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %148, align 1
  %149 = add i64 %.129, 1
  %150 = icmp eq i64 %149, %1
  br i1 %150, label %151, label %159

151:                                              ; preds = %147
  %152 = call ptr @__acrt_iob_func(i32 noundef 2)
  %153 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %152, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

154:                                              ; preds = %145
  %155 = add nsw i32 %.1, 1
  %156 = sext i8 %.125 to i32
  %157 = shl i32 %156, 1
  %158 = trunc i32 %157 to i8
  br label %159

159:                                              ; preds = %147, %154
  %.230 = phi i64 [ %.129, %154 ], [ %149, %147 ]
  %.226 = phi i8 [ %158, %154 ], [ 0, %147 ]
  %.2 = phi i32 [ %155, %154 ], [ 0, %147 ]
  %160 = load i8, ptr %.134, align 1
  %161 = zext i8 %160 to i64
  %162 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %161
  %163 = load i32, ptr %162, align 4
  %164 = zext i32 %163 to i64
  %165 = and i64 %164, %.015
  %166 = icmp ne i64 %165, 0
  %167 = sext i8 %.226 to i32
  %168 = or i32 %167, 1
  %169 = trunc i32 %168 to i8
  %.327 = select i1 %166, i8 %169, i8 %.226
  %170 = lshr i64 %.015, 1
  %171 = add i64 %.4, 1
  br label %138, !llvm.loop !15

172:                                              ; preds = %138
  %173 = getelementptr inbounds nuw i8, ptr %.134, i32 1
  %174 = add i64 %.16, 1
  br label %127, !llvm.loop !16

175:                                              ; preds = %127
  %176 = sub nsw i32 7, %.01
  %177 = sext i8 %.024 to i32
  %178 = shl i32 %177, %176
  %179 = trunc i32 %178 to i8
  %180 = getelementptr inbounds nuw i8, ptr %11, i64 %.028
  store i8 %179, ptr %180, align 1
  %181 = add i64 %.028, 1
  %182 = getelementptr inbounds [256 x i32], ptr %8, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %182, i8 0, i64 1024, i1 false)
  %183 = getelementptr inbounds [256 x i8], ptr %9, i64 0, i64 0
  br label %184

184:                                              ; preds = %221, %175
  %.27 = phi i64 [ 0, %175 ], [ %222, %221 ]
  %.0 = phi ptr [ %183, %175 ], [ %188, %221 ]
  %185 = icmp ult i64 %.27, 256
  br i1 %185, label %186, label %223

186:                                              ; preds = %184
  %187 = trunc i64 %.27 to i8
  store i8 %187, ptr %.0, align 1
  %188 = getelementptr inbounds nuw i8, ptr %.0, i32 1
  %189 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %190 = load i32, ptr %189, align 4
  %191 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %192 = load i8, ptr %191, align 1
  %193 = zext i8 %192 to i32
  %194 = or i32 %190, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %221

196:                                              ; preds = %186
  %197 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %198 = load i8, ptr %197, align 1
  %199 = zext i8 %198 to i32
  %200 = sub nsw i32 %199, 1
  %201 = shl i32 1, %200
  %202 = sext i32 %201 to i64
  br label %203

203:                                              ; preds = %208, %196
  %.019 = phi i32 [ 0, %196 ], [ %spec.select48, %208 ]
  %.116 = phi i64 [ %202, %196 ], [ %217, %208 ]
  %.5 = phi i64 [ 0, %196 ], [ %218, %208 ]
  %204 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %205 = load i8, ptr %204, align 1
  %206 = zext i8 %205 to i64
  %207 = icmp ult i64 %.5, %206
  br i1 %207, label %208, label %219

208:                                              ; preds = %203
  %209 = mul i32 %.019, 2
  %210 = add i32 %209, 1
  %211 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %212 = load i32, ptr %211, align 4
  %213 = zext i32 %212 to i64
  %214 = and i64 %213, %.116
  %215 = icmp ne i64 %214, 0
  %216 = add i32 %210, 1
  %spec.select48 = select i1 %215, i32 %216, i32 %210
  %217 = lshr i64 %.116, 1
  %218 = add i64 %.5, 1
  br label %203, !llvm.loop !17

219:                                              ; preds = %203
  %220 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.27
  store i32 %.019, ptr %220, align 4
  br label %221

221:                                              ; preds = %186, %219
  %222 = add i64 %.27, 1
  br label %184, !llvm.loop !18

223:                                              ; preds = %184, %.critedge
  %.6 = phi i64 [ %249, %.critedge ], [ 1, %184 ]
  %224 = icmp ult i64 %.6, 256
  br i1 %224, label %225, label %250

225:                                              ; preds = %223
  %226 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %227 = load i32, ptr %226, align 4
  %228 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %229 = load i8, ptr %228, align 1
  br label %230

230:                                              ; preds = %237, %225
  %.38 = phi i64 [ %.6, %225 ], [ %246, %237 ]
  %231 = icmp ne i64 %.38, 0
  br i1 %231, label %232, label %.critedge

232:                                              ; preds = %230
  %233 = sub i64 %.38, 1
  %234 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %233
  %235 = load i32, ptr %234, align 4
  %236 = icmp ugt i32 %235, %227
  br i1 %236, label %237, label %.critedge

237:                                              ; preds = %232
  %238 = sub i64 %.38, 1
  %239 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %238
  %240 = load i32, ptr %239, align 4
  %241 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %240, ptr %241, align 4
  %242 = sub i64 %.38, 1
  %243 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %242
  %244 = load i8, ptr %243, align 1
  %245 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %244, ptr %245, align 1
  %246 = add i64 %.38, -1
  br label %230, !llvm.loop !19

.critedge:                                        ; preds = %230, %232
  %247 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %227, ptr %247, align 4
  %248 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %229, ptr %248, align 1
  %249 = add i64 %.6, 1
  br label %223, !llvm.loop !20

250:                                              ; preds = %223, %254
  %.49 = phi i64 [ %255, %254 ], [ 0, %223 ]
  %251 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %252 = load i32, ptr %251, align 4
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %250
  %255 = add i64 %.49, 1
  br label %250, !llvm.loop !21

256:                                              ; preds = %250, %281
  %.235 = phi ptr [ %.336, %281 ], [ %0, %250 ]
  %.031 = phi ptr [ %.132, %281 ], [ %11, %250 ]
  %.221 = phi i32 [ %.423, %281 ], [ 0, %250 ]
  %.217 = phi i64 [ %.318, %281 ], [ 128, %250 ]
  %.313 = phi i64 [ %.414, %281 ], [ 0, %250 ]
  %.7 = phi i64 [ %.9, %281 ], [ %.49, %250 ]
  %257 = icmp ult i64 %.313, %1
  br i1 %257, label %258, label %285

258:                                              ; preds = %256
  %259 = mul i32 %.221, 2
  %260 = add i32 %259, 1
  %261 = load i8, ptr %.031, align 1
  %262 = zext i8 %261 to i64
  %263 = and i64 %262, %.217
  %264 = icmp ne i64 %263, 0
  %265 = add i32 %260, 1
  %spec.select49 = select i1 %264, i32 %265, i32 %260
  br label %266

266:                                              ; preds = %270, %258
  %.8 = phi i64 [ %.7, %258 ], [ %271, %270 ]
  %267 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %268 = load i32, ptr %267, align 4
  %269 = icmp ult i32 %268, %spec.select49
  br i1 %269, label %270, label %272

270:                                              ; preds = %266
  %271 = add i64 %.8, 1
  br label %266, !llvm.loop !22

272:                                              ; preds = %266
  %273 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %274 = load i32, ptr %273, align 4
  %275 = icmp eq i32 %spec.select49, %274
  br i1 %275, label %276, label %281

276:                                              ; preds = %272
  %277 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8
  %278 = load i8, ptr %277, align 1
  store i8 %278, ptr %.235, align 1
  %279 = getelementptr inbounds nuw i8, ptr %.235, i32 1
  %280 = add i64 %.313, 1
  br label %281

281:                                              ; preds = %276, %272
  %.336 = phi ptr [ %279, %276 ], [ %.235, %272 ]
  %.423 = phi i32 [ 0, %276 ], [ %spec.select49, %272 ]
  %.414 = phi i64 [ %280, %276 ], [ %.313, %272 ]
  %.9 = phi i64 [ %.49, %276 ], [ %.8, %272 ]
  %282 = icmp ugt i64 %.217, 1
  %283 = lshr i64 %.217, 1
  %284 = getelementptr inbounds nuw i8, ptr %.031, i32 1
  %.132 = select i1 %282, ptr %.031, ptr %284
  %.318 = select i1 %282, i64 %283, i64 128
  br label %256, !llvm.loop !23

285:                                              ; preds = %256
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
  %50 = sext i32 %9 to i64
  %51 = sub nsw i32 %.01, 1
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
  br i1 %3, label %4, label %13

4:                                                ; preds = %2, %11
  %.01 = phi i32 [ %12, %11 ], [ 1, %2 ]
  %5 = icmp slt i32 %.01, %0
  br i1 %5, label %6, label %13

6:                                                ; preds = %4
  %7 = getelementptr inbounds ptr, ptr %1, i64 1
  %8 = load ptr, ptr %7, align 8
  %9 = call i32 @strcmp(ptr noundef %8, ptr noundef @.str.4) #7
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = add nsw i32 %.01, 1
  br label %4, !llvm.loop !25

13:                                               ; preds = %4, %6, %2
  %.0 = phi i8 [ 0, %2 ], [ 0, %4 ], [ 1, %6 ]
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
