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
  call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %12, i1 false)
  %13 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %13, i8 0, i64 4096, i1 false)
  %14 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %14, i8 0, i64 2048, i1 false)
  %15 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %15, i8 0, i64 2048, i1 false)
  %16 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %16, i8 0, i64 1024, i1 false)
  %17 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %17, i8 0, i64 256, i1 false)
  br label %18

18:                                               ; preds = %20, %2
  %.033 = phi ptr [ %0, %2 ], [ %26, %20 ]
  %.02 = phi i64 [ 0, %2 ], [ %27, %20 ]
  %19 = icmp ult i64 %.02, %1
  br i1 %19, label %20, label %28

20:                                               ; preds = %18
  %21 = load i8, ptr %.033, align 1
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %22
  %24 = load i64, ptr %23, align 8
  %25 = add i64 %24, 1
  store i64 %25, ptr %23, align 8
  %26 = getelementptr inbounds nuw i8, ptr %.033, i32 1
  %27 = add i64 %.02, 1
  br label %18, !llvm.loop !9

28:                                               ; preds = %18, %37
  %.010 = phi i64 [ %.111, %37 ], [ 0, %18 ]
  %.13 = phi i64 [ %38, %37 ], [ 0, %18 ]
  %29 = icmp ult i64 %.13, 256
  br i1 %29, label %30, label %39

30:                                               ; preds = %28
  %31 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.13
  %32 = load i64, ptr %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.010
  store i64 %.13, ptr %35, align 8
  %36 = add i64 %.010, 1
  br label %37

37:                                               ; preds = %30, %34
  %.111 = phi i64 [ %36, %34 ], [ %.010, %30 ]
  %38 = add i64 %.13, 1
  br label %28, !llvm.loop !10

39:                                               ; preds = %28, %41
  %.24 = phi i64 [ %46, %41 ], [ %.010, %28 ]
  %40 = icmp ugt i64 %.24, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %39
  %42 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %43 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %44 = trunc i64 %.010 to i32
  %45 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef %42, ptr noundef %43, i32 noundef %44, i32 noundef %45)
  %46 = add i64 %.24, -1
  br label %39, !llvm.loop !11

47:                                               ; preds = %39, %49
  %.212 = phi i64 [ %50, %49 ], [ %.010, %39 ]
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
  %65 = add i64 %64, %62
  %66 = add i64 %50, 256
  %67 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %66
  store i64 %65, ptr %67, align 8
  %68 = add i64 %50, 256
  %69 = trunc i64 %68 to i32
  %70 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %52
  store i32 %69, ptr %70, align 4
  %71 = sub i64 -256, %50
  %72 = trunc i64 %71 to i32
  %73 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %74 = load i64, ptr %73, align 16
  %75 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %74
  store i32 %72, ptr %75, align 4
  %76 = add i64 %50, 256
  %77 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %76, ptr %77, align 16
  %78 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %79 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %80 = trunc i64 %50 to i32
  call void @heap_adjust(ptr noundef %78, ptr noundef %79, i32 noundef %80, i32 noundef 1)
  br label %47, !llvm.loop !12

81:                                               ; preds = %47
  %82 = add i64 %.212, 256
  %83 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %82
  store i32 0, ptr %83, align 4
  br label %84

84:                                               ; preds = %114, %81
  %.045 = phi i64 [ 0, %81 ], [ %.146, %114 ]
  %.042 = phi i64 [ 0, %81 ], [ %115, %114 ]
  %.039 = phi i64 [ 0, %81 ], [ %.140, %114 ]
  %85 = icmp ult i64 %.042, 256
  br i1 %85, label %86, label %116

86:                                               ; preds = %84
  %87 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.042
  %88 = load i64, ptr %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 0, ptr %91, align 4
  %92 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 0, ptr %92, align 1
  br label %114

93:                                               ; preds = %86
  %94 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.042
  %95 = load i32, ptr %94, align 4
  br label %96

96:                                               ; preds = %98, %93
  %.043 = phi i64 [ 0, %93 ], [ %.144, %98 ]
  %.037 = phi i32 [ %95, %93 ], [ %104, %98 ]
  %.05 = phi i64 [ 1, %93 ], [ %105, %98 ]
  %.3 = phi i64 [ 0, %93 ], [ %106, %98 ]
  %97 = icmp ne i32 %.037, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %96
  %99 = icmp slt i32 %.037, 0
  %100 = add i64 %.05, %.043
  %101 = sub nsw i32 0, %.037
  %.144 = select i1 %99, i64 %100, i64 %.043
  %.138 = select i1 %99, i32 %101, i32 %.037
  %102 = sext i32 %.138 to i64
  %103 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %102
  %104 = load i32, ptr %103, align 4
  %105 = shl i64 %.05, 1
  %106 = add i64 %.3, 1
  br label %96, !llvm.loop !13

107:                                              ; preds = %96
  %108 = trunc i64 %.043 to i32
  %109 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 %108, ptr %109, align 4
  %110 = trunc i64 %.3 to i8
  %111 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 %110, ptr %111, align 1
  %112 = icmp ugt i64 %.043, %.045
  %spec.select = select i1 %112, i64 %.043, i64 %.045
  %113 = icmp ugt i64 %.3, %.039
  %.241 = select i1 %113, i64 %.3, i64 %.039
  br label %114

114:                                              ; preds = %90, %107
  %.146 = phi i64 [ %spec.select, %107 ], [ %.045, %90 ]
  %.140 = phi i64 [ %.241, %107 ], [ %.039, %90 ]
  %115 = add i64 %.042, 1
  br label %84, !llvm.loop !14

116:                                              ; preds = %84
  %117 = icmp ugt i64 %.039, 32
  br i1 %117, label %118, label %121

118:                                              ; preds = %116
  %119 = call ptr @__acrt_iob_func(i32 noundef 2)
  %120 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %119, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

121:                                              ; preds = %116
  %122 = icmp eq i64 %.045, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %121
  %124 = call ptr @__acrt_iob_func(i32 noundef 2)
  %125 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %124, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

126:                                              ; preds = %121, %171
  %.134 = phi ptr [ %172, %171 ], [ %0, %121 ]
  %.028 = phi i64 [ %.129, %171 ], [ 0, %121 ]
  %.024 = phi i8 [ %.125, %171 ], [ 0, %121 ]
  %.16 = phi i64 [ %173, %171 ], [ 0, %121 ]
  %.01 = phi i32 [ %.1, %171 ], [ -1, %121 ]
  %127 = icmp ult i64 %.16, %1
  br i1 %127, label %128, label %174

128:                                              ; preds = %126
  %129 = load i8, ptr %.134, align 1
  %130 = zext i8 %129 to i64
  %131 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %130
  %132 = load i8, ptr %131, align 1
  %133 = zext i8 %132 to i32
  %134 = sub nsw i32 %133, 1
  %135 = shl i32 1, %134
  %136 = sext i32 %135 to i64
  br label %137

137:                                              ; preds = %158, %128
  %.129 = phi i64 [ %.028, %128 ], [ %.230, %158 ]
  %.125 = phi i8 [ %.024, %128 ], [ %.327, %158 ]
  %.015 = phi i64 [ %136, %128 ], [ %169, %158 ]
  %.4 = phi i64 [ 0, %128 ], [ %170, %158 ]
  %.1 = phi i32 [ %.01, %128 ], [ %.2, %158 ]
  %138 = load i8, ptr %.134, align 1
  %139 = zext i8 %138 to i64
  %140 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %139
  %141 = load i8, ptr %140, align 1
  %142 = zext i8 %141 to i64
  %143 = icmp ult i64 %.4, %142
  br i1 %143, label %144, label %171

144:                                              ; preds = %137
  %145 = icmp eq i32 %.1, 7
  br i1 %145, label %146, label %153

146:                                              ; preds = %144
  %147 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %147, align 1
  %148 = add i64 %.129, 1
  %149 = icmp eq i64 %148, %1
  br i1 %149, label %150, label %158

150:                                              ; preds = %146
  %151 = call ptr @__acrt_iob_func(i32 noundef 2)
  %152 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %151, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

153:                                              ; preds = %144
  %154 = add nsw i32 %.1, 1
  %155 = sext i8 %.125 to i32
  %156 = shl i32 %155, 1
  %157 = trunc i32 %156 to i8
  br label %158

158:                                              ; preds = %146, %153
  %.230 = phi i64 [ %.129, %153 ], [ %148, %146 ]
  %.226 = phi i8 [ %157, %153 ], [ 0, %146 ]
  %.2 = phi i32 [ %154, %153 ], [ 0, %146 ]
  %159 = load i8, ptr %.134, align 1
  %160 = zext i8 %159 to i64
  %161 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %160
  %162 = load i32, ptr %161, align 4
  %163 = zext i32 %162 to i64
  %164 = and i64 %163, %.015
  %165 = icmp ne i64 %164, 0
  %166 = sext i8 %.226 to i32
  %167 = or i32 %166, 1
  %168 = trunc i32 %167 to i8
  %.327 = select i1 %165, i8 %168, i8 %.226
  %169 = lshr i64 %.015, 1
  %170 = add i64 %.4, 1
  br label %137, !llvm.loop !15

171:                                              ; preds = %137
  %172 = getelementptr inbounds nuw i8, ptr %.134, i32 1
  %173 = add i64 %.16, 1
  br label %126, !llvm.loop !16

174:                                              ; preds = %126
  %175 = sub nsw i32 7, %.01
  %176 = sext i8 %.024 to i32
  %177 = shl i32 %176, %175
  %178 = trunc i32 %177 to i8
  %179 = getelementptr inbounds nuw i8, ptr %11, i64 %.028
  store i8 %178, ptr %179, align 1
  %180 = getelementptr inbounds [256 x i32], ptr %8, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %180, i8 0, i64 1024, i1 false)
  %181 = getelementptr inbounds [256 x i8], ptr %9, i64 0, i64 0
  br label %182

182:                                              ; preds = %219, %174
  %.27 = phi i64 [ 0, %174 ], [ %220, %219 ]
  %.0 = phi ptr [ %181, %174 ], [ %186, %219 ]
  %183 = icmp ult i64 %.27, 256
  br i1 %183, label %184, label %221

184:                                              ; preds = %182
  %185 = trunc i64 %.27 to i8
  store i8 %185, ptr %.0, align 1
  %186 = getelementptr inbounds nuw i8, ptr %.0, i32 1
  %187 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %188 = load i32, ptr %187, align 4
  %189 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %190 = load i8, ptr %189, align 1
  %191 = zext i8 %190 to i32
  %192 = or i32 %191, %188
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %219

194:                                              ; preds = %184
  %195 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %196 = load i8, ptr %195, align 1
  %197 = zext i8 %196 to i32
  %198 = sub nsw i32 %197, 1
  %199 = shl i32 1, %198
  %200 = sext i32 %199 to i64
  br label %201

201:                                              ; preds = %206, %194
  %.019 = phi i32 [ 0, %194 ], [ %spec.select1, %206 ]
  %.116 = phi i64 [ %200, %194 ], [ %215, %206 ]
  %.5 = phi i64 [ 0, %194 ], [ %216, %206 ]
  %202 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %203 = load i8, ptr %202, align 1
  %204 = zext i8 %203 to i64
  %205 = icmp ult i64 %.5, %204
  br i1 %205, label %206, label %217

206:                                              ; preds = %201
  %207 = mul i32 %.019, 2
  %208 = add i32 %207, 1
  %209 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %210 = load i32, ptr %209, align 4
  %211 = zext i32 %210 to i64
  %212 = and i64 %211, %.116
  %213 = icmp ne i64 %212, 0
  %214 = add i32 %208, 1
  %spec.select1 = select i1 %213, i32 %214, i32 %208
  %215 = lshr i64 %.116, 1
  %216 = add i64 %.5, 1
  br label %201, !llvm.loop !17

217:                                              ; preds = %201
  %218 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.27
  store i32 %.019, ptr %218, align 4
  br label %219

219:                                              ; preds = %184, %217
  %220 = add i64 %.27, 1
  br label %182, !llvm.loop !18

221:                                              ; preds = %182, %.critedge
  %.6 = phi i64 [ %247, %.critedge ], [ 1, %182 ]
  %222 = icmp ult i64 %.6, 256
  br i1 %222, label %223, label %248

223:                                              ; preds = %221
  %224 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %225 = load i32, ptr %224, align 4
  %226 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %227 = load i8, ptr %226, align 1
  br label %228

228:                                              ; preds = %235, %223
  %.38 = phi i64 [ %.6, %223 ], [ %244, %235 ]
  %229 = icmp ne i64 %.38, 0
  br i1 %229, label %230, label %.critedge

230:                                              ; preds = %228
  %231 = sub i64 %.38, 1
  %232 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %231
  %233 = load i32, ptr %232, align 4
  %234 = icmp ugt i32 %233, %225
  br i1 %234, label %235, label %.critedge

235:                                              ; preds = %230
  %236 = sub i64 %.38, 1
  %237 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %236
  %238 = load i32, ptr %237, align 4
  %239 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %238, ptr %239, align 4
  %240 = sub i64 %.38, 1
  %241 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %240
  %242 = load i8, ptr %241, align 1
  %243 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %242, ptr %243, align 1
  %244 = add i64 %.38, -1
  br label %228, !llvm.loop !19

.critedge:                                        ; preds = %228, %230
  %245 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %225, ptr %245, align 4
  %246 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %227, ptr %246, align 1
  %247 = add i64 %.6, 1
  br label %221, !llvm.loop !20

248:                                              ; preds = %221, %252
  %.49 = phi i64 [ %253, %252 ], [ 0, %221 ]
  %249 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %250 = load i32, ptr %249, align 4
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %248
  %253 = add i64 %.49, 1
  br label %248, !llvm.loop !21

254:                                              ; preds = %248, %279
  %.235 = phi ptr [ %.336, %279 ], [ %0, %248 ]
  %.031 = phi ptr [ %.132, %279 ], [ %11, %248 ]
  %.221 = phi i32 [ %.423, %279 ], [ 0, %248 ]
  %.217 = phi i64 [ %.318, %279 ], [ 128, %248 ]
  %.313 = phi i64 [ %.414, %279 ], [ 0, %248 ]
  %.7 = phi i64 [ %.9, %279 ], [ %.49, %248 ]
  %255 = icmp ult i64 %.313, %1
  br i1 %255, label %256, label %283

256:                                              ; preds = %254
  %257 = mul i32 %.221, 2
  %258 = add i32 %257, 1
  %259 = load i8, ptr %.031, align 1
  %260 = zext i8 %259 to i64
  %261 = and i64 %260, %.217
  %262 = icmp ne i64 %261, 0
  %263 = add i32 %258, 1
  %spec.select2 = select i1 %262, i32 %263, i32 %258
  br label %264

264:                                              ; preds = %268, %256
  %.8 = phi i64 [ %.7, %256 ], [ %269, %268 ]
  %265 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %266 = load i32, ptr %265, align 4
  %267 = icmp ult i32 %266, %spec.select2
  br i1 %267, label %268, label %270

268:                                              ; preds = %264
  %269 = add i64 %.8, 1
  br label %264, !llvm.loop !22

270:                                              ; preds = %264
  %271 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %272 = load i32, ptr %271, align 4
  %273 = icmp eq i32 %spec.select2, %272
  br i1 %273, label %274, label %279

274:                                              ; preds = %270
  %275 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8
  %276 = load i8, ptr %275, align 1
  store i8 %276, ptr %.235, align 1
  %277 = getelementptr inbounds nuw i8, ptr %.235, i32 1
  %278 = add i64 %.313, 1
  br label %279

279:                                              ; preds = %274, %270
  %.336 = phi ptr [ %277, %274 ], [ %.235, %270 ]
  %.423 = phi i32 [ 0, %274 ], [ %spec.select2, %270 ]
  %.414 = phi i64 [ %278, %274 ], [ %.313, %270 ]
  %.9 = phi i64 [ %.49, %274 ], [ %.8, %270 ]
  %280 = icmp ugt i64 %.217, 1
  %281 = lshr i64 %.217, 1
  %282 = getelementptr inbounds nuw i8, ptr %.031, i32 1
  %.132 = select i1 %280, ptr %.031, ptr %282
  %.318 = select i1 %280, i64 %281, i64 128
  br label %254, !llvm.loop !23

283:                                              ; preds = %254
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

10:                                               ; preds = %40, %4
  %.01 = phi i32 [ %3, %4 ], [ %.0, %40 ]
  %11 = sdiv i32 %2, 2
  %12 = icmp sle i32 %.01, %11
  br i1 %12, label %13, label %48

13:                                               ; preds = %10
  %factor = mul i32 %.01, 2
  %14 = icmp slt i32 %factor, %2
  br i1 %14, label %15, label %29

15:                                               ; preds = %13
  %16 = sub nsw i32 %factor, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, ptr %1, i64 %17
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds nuw i64, ptr %0, i64 %19
  %21 = load i64, ptr %20, align 8
  %22 = sext i32 %factor to i64
  %23 = getelementptr inbounds i64, ptr %1, i64 %22
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds nuw i64, ptr %0, i64 %24
  %26 = load i64, ptr %25, align 8
  %27 = icmp ugt i64 %21, %26
  %28 = add nsw i32 %factor, 1
  %spec.select = select i1 %27, i32 %28, i32 %factor
  br label %29

29:                                               ; preds = %15, %13
  %.0 = phi i32 [ %factor, %13 ], [ %spec.select, %15 ]
  %30 = sext i32 %9 to i64
  %31 = getelementptr inbounds i64, ptr %0, i64 %30
  %32 = load i64, ptr %31, align 8
  %33 = sub nsw i32 %.0, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, ptr %1, i64 %34
  %36 = load i64, ptr %35, align 8
  %37 = getelementptr inbounds nuw i64, ptr %0, i64 %36
  %38 = load i64, ptr %37, align 8
  %39 = icmp ult i64 %32, %38
  br i1 %39, label %48, label %40

40:                                               ; preds = %29
  %41 = sub nsw i32 %.0, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, ptr %1, i64 %42
  %44 = load i64, ptr %43, align 8
  %45 = sub nsw i32 %.01, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, ptr %1, i64 %46
  store i64 %44, ptr %47, align 8
  br label %10, !llvm.loop !24

48:                                               ; preds = %29, %10
  %49 = sext i32 %9 to i64
  %50 = sub nsw i32 %.01, 1
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
  %8 = mul nsw i32 %7, 16807
  %9 = mul nsw i32 %4, 2836
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
