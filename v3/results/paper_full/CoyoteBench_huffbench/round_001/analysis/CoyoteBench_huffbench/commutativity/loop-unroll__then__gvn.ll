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
  br i1 %13, label %14, label %22

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

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %40, %22
  %.010 = phi i64 [ 0, %22 ], [ %.111.1, %40 ]
  %.13 = phi i64 [ 0, %22 ], [ %41, %40 ]
  %24 = icmp samesign ult i64 %.13, 256
  br i1 %24, label %25, label %42

25:                                               ; preds = %23
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
  %34 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %33
  %35 = load i64, ptr %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.111
  store i64 %33, ptr %38, align 8
  %39 = add i64 %.111, 1
  br label %40

40:                                               ; preds = %37, %32
  %.111.1 = phi i64 [ %39, %37 ], [ %.111, %32 ]
  %41 = add nuw nsw i64 %.13, 2
  br label %23, !llvm.loop !10

42:                                               ; preds = %23
  br label %43

43:                                               ; preds = %45, %42
  %.24 = phi i64 [ %.010, %42 ], [ %48, %45 ]
  %44 = icmp ugt i64 %.24, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %43
  %46 = trunc i64 %.010 to i32
  %47 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %46, i32 noundef %47)
  %48 = add i64 %.24, -1
  br label %43, !llvm.loop !11

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %52, %49
  %.212 = phi i64 [ %.010, %49 ], [ %53, %52 ]
  %51 = icmp ugt i64 %.212, 1
  br i1 %51, label %52, label %71

52:                                               ; preds = %50
  %53 = add i64 %.212, -1
  %54 = load i64, ptr %4, align 16
  %55 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %53
  %56 = load i64, ptr %55, align 8
  store i64 %56, ptr %4, align 16
  %57 = trunc i64 %53 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %57, i32 noundef 1)
  %58 = load i64, ptr %4, align 16
  %59 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %58
  %60 = load i64, ptr %59, align 8
  %61 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %54
  %62 = load i64, ptr %61, align 8
  %63 = add i64 %60, %62
  %64 = add i64 256, %53
  %65 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %64
  store i64 %63, ptr %65, align 8
  %66 = trunc i64 %64 to i32
  %67 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %54
  store i32 %66, ptr %67, align 4
  %68 = sub i64 -256, %53
  %69 = trunc i64 %68 to i32
  %70 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %58
  store i32 %69, ptr %70, align 4
  store i64 %64, ptr %4, align 16
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %57, i32 noundef 1)
  br label %50, !llvm.loop !12

71:                                               ; preds = %50
  %72 = add i64 256, %.212
  %73 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %72
  store i32 0, ptr %73, align 4
  br label %74

74:                                               ; preds = %110, %71
  %.045 = phi i64 [ 0, %71 ], [ %.146, %110 ]
  %.042 = phi i64 [ 0, %71 ], [ %111, %110 ]
  %.039 = phi i64 [ 0, %71 ], [ %.140, %110 ]
  %75 = icmp ult i64 %.042, 256
  br i1 %75, label %76, label %112

76:                                               ; preds = %74
  %77 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.042
  %78 = load i64, ptr %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 0, ptr %81, align 4
  %82 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 0, ptr %82, align 1
  br label %110

83:                                               ; preds = %76
  %84 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.042
  %85 = load i32, ptr %84, align 4
  br label %86

86:                                               ; preds = %93, %83
  %.043 = phi i64 [ 0, %83 ], [ %.144, %93 ]
  %.037 = phi i32 [ %85, %83 ], [ %96, %93 ]
  %.05 = phi i64 [ 1, %83 ], [ %97, %93 ]
  %.3 = phi i64 [ 0, %83 ], [ %98, %93 ]
  %87 = icmp ne i32 %.037, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %86
  %89 = icmp slt i32 %.037, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %88
  %91 = add i64 %.043, %.05
  %92 = sub nsw i32 0, %.037
  br label %93

93:                                               ; preds = %90, %88
  %.144 = phi i64 [ %91, %90 ], [ %.043, %88 ]
  %.138 = phi i32 [ %92, %90 ], [ %.037, %88 ]
  %94 = sext i32 %.138 to i64
  %95 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %94
  %96 = load i32, ptr %95, align 4
  %97 = shl i64 %.05, 1
  %98 = add i64 %.3, 1
  br label %86, !llvm.loop !13

99:                                               ; preds = %86
  %100 = trunc i64 %.043 to i32
  %101 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 %100, ptr %101, align 4
  %102 = trunc i64 %.3 to i8
  %103 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 %102, ptr %103, align 1
  %104 = icmp ugt i64 %.043, %.045
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  br label %106

106:                                              ; preds = %105, %99
  %.247 = phi i64 [ %.043, %105 ], [ %.045, %99 ]
  %107 = icmp ugt i64 %.3, %.039
  br i1 %107, label %108, label %109

108:                                              ; preds = %106
  br label %109

109:                                              ; preds = %108, %106
  %.241 = phi i64 [ %.3, %108 ], [ %.039, %106 ]
  br label %110

110:                                              ; preds = %109, %80
  %.146 = phi i64 [ %.247, %109 ], [ %.045, %80 ]
  %.140 = phi i64 [ %.241, %109 ], [ %.039, %80 ]
  %111 = add i64 %.042, 1
  br label %74, !llvm.loop !14

112:                                              ; preds = %74
  %113 = icmp ugt i64 %.039, 32
  br i1 %113, label %114, label %117

114:                                              ; preds = %112
  %115 = call ptr @__acrt_iob_func(i32 noundef 2)
  %116 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %115, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

117:                                              ; preds = %112
  %118 = icmp eq i64 %.045, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %117
  %120 = call ptr @__acrt_iob_func(i32 noundef 2)
  %121 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %120, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

122:                                              ; preds = %117
  br label %123

123:                                              ; preds = %170, %122
  %.134 = phi ptr [ %0, %122 ], [ %171, %170 ]
  %.028 = phi i64 [ 0, %122 ], [ %.129, %170 ]
  %.024 = phi i8 [ 0, %122 ], [ %.125, %170 ]
  %.16 = phi i64 [ 0, %122 ], [ %172, %170 ]
  %.01 = phi i32 [ -1, %122 ], [ %.1, %170 ]
  %124 = icmp ult i64 %.16, %1
  br i1 %124, label %125, label %173

125:                                              ; preds = %123
  %126 = load i8, ptr %.134, align 1
  %127 = zext i8 %126 to i64
  %128 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %127
  %129 = load i8, ptr %128, align 1
  %130 = zext i8 %129 to i32
  %131 = sub nsw i32 %130, 1
  %132 = shl i32 1, %131
  %133 = sext i32 %132 to i64
  br label %134

134:                                              ; preds = %167, %125
  %135 = phi i8 [ %126, %125 ], [ %157, %167 ]
  %136 = phi i8 [ %129, %125 ], [ %.pre, %167 ]
  %.129 = phi i64 [ %.028, %125 ], [ %.230, %167 ]
  %.125 = phi i8 [ %.024, %125 ], [ %.327, %167 ]
  %.015 = phi i64 [ %133, %125 ], [ %168, %167 ]
  %.4 = phi i64 [ 0, %125 ], [ %169, %167 ]
  %.1 = phi i32 [ %.01, %125 ], [ %.2, %167 ]
  %137 = zext i8 %135 to i64
  %138 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %137
  %139 = zext i8 %136 to i64
  %140 = icmp ult i64 %.4, %139
  br i1 %140, label %141, label %170

141:                                              ; preds = %134
  %142 = icmp eq i32 %.1, 7
  br i1 %142, label %143, label %151

143:                                              ; preds = %141
  %144 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %144, align 1
  %145 = add i64 %.129, 1
  %146 = icmp eq i64 %145, %1
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = call ptr @__acrt_iob_func(i32 noundef 2)
  %149 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %148, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

150:                                              ; preds = %143
  %.pre7 = load i8, ptr %.134, align 1
  %.pre8 = zext i8 %.pre7 to i64
  br label %156

151:                                              ; preds = %141
  %152 = add nsw i32 %.1, 1
  %153 = sext i8 %.125 to i32
  %154 = shl i32 %153, 1
  %155 = trunc i32 %154 to i8
  br label %156

156:                                              ; preds = %151, %150
  %.pre-phi = phi i64 [ %137, %151 ], [ %.pre8, %150 ]
  %157 = phi i8 [ %.pre7, %150 ], [ %135, %151 ]
  %.230 = phi i64 [ %145, %150 ], [ %.129, %151 ]
  %.226 = phi i8 [ 0, %150 ], [ %155, %151 ]
  %.2 = phi i32 [ 0, %150 ], [ %152, %151 ]
  %158 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.pre-phi
  %159 = load i32, ptr %158, align 4
  %160 = zext i32 %159 to i64
  %161 = and i64 %160, %.015
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %156
  %164 = sext i8 %.226 to i32
  %165 = or i32 %164, 1
  %166 = trunc i32 %165 to i8
  br label %167

167:                                              ; preds = %163, %156
  %.327 = phi i8 [ %166, %163 ], [ %.226, %156 ]
  %168 = lshr i64 %.015, 1
  %169 = add i64 %.4, 1
  %.phi.trans.insert = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %134, !llvm.loop !15

170:                                              ; preds = %134
  %171 = getelementptr inbounds nuw i8, ptr %.134, i32 1
  %172 = add i64 %.16, 1
  br label %123, !llvm.loop !16

173:                                              ; preds = %123
  %174 = sub nsw i32 7, %.01
  %175 = sext i8 %.024 to i32
  %176 = shl i32 %175, %174
  %177 = trunc i32 %176 to i8
  %178 = getelementptr inbounds nuw i8, ptr %11, i64 %.028
  store i8 %177, ptr %178, align 1
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 1024, i1 false)
  br label %179

179:                                              ; preds = %211, %173
  %.27 = phi i64 [ 0, %173 ], [ %212, %211 ]
  %.0 = phi ptr [ %9, %173 ], [ %183, %211 ]
  %180 = icmp ult i64 %.27, 256
  br i1 %180, label %181, label %213

181:                                              ; preds = %179
  %182 = trunc i64 %.27 to i8
  store i8 %182, ptr %.0, align 1
  %183 = getelementptr inbounds nuw i8, ptr %.0, i32 1
  %184 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %185 = load i32, ptr %184, align 4
  %186 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %187 = load i8, ptr %186, align 1
  %188 = zext i8 %187 to i32
  %189 = or i32 %185, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %211

191:                                              ; preds = %181
  %192 = sub nsw i32 %188, 1
  %193 = shl i32 1, %192
  %194 = sext i32 %193 to i64
  br label %195

195:                                              ; preds = %206, %191
  %.019 = phi i32 [ 0, %191 ], [ %.120, %206 ]
  %.116 = phi i64 [ %194, %191 ], [ %207, %206 ]
  %.5 = phi i64 [ 0, %191 ], [ %208, %206 ]
  %196 = zext i8 %187 to i64
  %197 = icmp ult i64 %.5, %196
  br i1 %197, label %198, label %209

198:                                              ; preds = %195
  %199 = mul i32 %.019, 2
  %200 = add i32 %199, 1
  %201 = zext i32 %185 to i64
  %202 = and i64 %201, %.116
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %198
  %205 = add i32 %200, 1
  br label %206

206:                                              ; preds = %204, %198
  %.120 = phi i32 [ %205, %204 ], [ %200, %198 ]
  %207 = lshr i64 %.116, 1
  %208 = add i64 %.5, 1
  br label %195, !llvm.loop !17

209:                                              ; preds = %195
  %210 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.27
  store i32 %.019, ptr %210, align 4
  br label %211

211:                                              ; preds = %209, %181
  %212 = add i64 %.27, 1
  br label %179, !llvm.loop !18

213:                                              ; preds = %179
  br label %214

214:                                              ; preds = %239, %213
  %.6 = phi i64 [ 1, %213 ], [ %242, %239 ]
  %215 = icmp ult i64 %.6, 256
  br i1 %215, label %216, label %243

216:                                              ; preds = %214
  %217 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %218 = load i32, ptr %217, align 4
  %219 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %220 = load i8, ptr %219, align 1
  br label %221

221:                                              ; preds = %230, %216
  %.38 = phi i64 [ %.6, %216 ], [ %238, %230 ]
  %222 = icmp ne i64 %.38, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %221
  %224 = sub i64 %.38, 1
  %225 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %224
  %226 = load i32, ptr %225, align 4
  %227 = icmp ugt i32 %226, %218
  br label %228

228:                                              ; preds = %223, %221
  %229 = phi i1 [ false, %221 ], [ %227, %223 ]
  br i1 %229, label %230, label %239

230:                                              ; preds = %228
  %231 = sub i64 %.38, 1
  %232 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %231
  %233 = load i32, ptr %232, align 4
  %234 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %233, ptr %234, align 4
  %235 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %231
  %236 = load i8, ptr %235, align 1
  %237 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %236, ptr %237, align 1
  %238 = add i64 %.38, -1
  br label %221, !llvm.loop !19

239:                                              ; preds = %228
  %240 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %218, ptr %240, align 4
  %241 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %220, ptr %241, align 1
  %242 = add i64 %.6, 1
  br label %214, !llvm.loop !20

243:                                              ; preds = %214
  br label %244

244:                                              ; preds = %248, %243
  %.49 = phi i64 [ 0, %243 ], [ %249, %248 ]
  %245 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %246 = load i32, ptr %245, align 4
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %244
  %249 = add i64 %.49, 1
  br label %244, !llvm.loop !21

250:                                              ; preds = %244
  br label %251

251:                                              ; preds = %282, %250
  %.235 = phi ptr [ %0, %250 ], [ %.336, %282 ]
  %.031 = phi ptr [ %11, %250 ], [ %.132, %282 ]
  %.221 = phi i32 [ 0, %250 ], [ %.423, %282 ]
  %.217 = phi i64 [ 128, %250 ], [ %.318, %282 ]
  %.313 = phi i64 [ 0, %250 ], [ %.414, %282 ]
  %.7 = phi i64 [ %.49, %250 ], [ %.9, %282 ]
  %252 = icmp ult i64 %.313, %1
  br i1 %252, label %253, label %283

253:                                              ; preds = %251
  %254 = mul i32 %.221, 2
  %255 = add i32 %254, 1
  %256 = load i8, ptr %.031, align 1
  %257 = zext i8 %256 to i64
  %258 = and i64 %257, %.217
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %253
  %261 = add i32 %255, 1
  br label %262

262:                                              ; preds = %260, %253
  %.322 = phi i32 [ %261, %260 ], [ %255, %253 ]
  br label %263

263:                                              ; preds = %267, %262
  %.8 = phi i64 [ %.7, %262 ], [ %268, %267 ]
  %264 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %265 = load i32, ptr %264, align 4
  %266 = icmp ult i32 %265, %.322
  br i1 %266, label %267, label %269

267:                                              ; preds = %263
  %268 = add i64 %.8, 1
  br label %263, !llvm.loop !22

269:                                              ; preds = %263
  %270 = icmp eq i32 %.322, %265
  br i1 %270, label %271, label %276

271:                                              ; preds = %269
  %272 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8
  %273 = load i8, ptr %272, align 1
  store i8 %273, ptr %.235, align 1
  %274 = getelementptr inbounds nuw i8, ptr %.235, i32 1
  %275 = add i64 %.313, 1
  br label %276

276:                                              ; preds = %271, %269
  %.336 = phi ptr [ %274, %271 ], [ %.235, %269 ]
  %.423 = phi i32 [ 0, %271 ], [ %.322, %269 ]
  %.414 = phi i64 [ %275, %271 ], [ %.313, %269 ]
  %.9 = phi i64 [ %.49, %271 ], [ %.8, %269 ]
  %277 = icmp ugt i64 %.217, 1
  br i1 %277, label %278, label %280

278:                                              ; preds = %276
  %279 = lshr i64 %.217, 1
  br label %282

280:                                              ; preds = %276
  %281 = getelementptr inbounds nuw i8, ptr %.031, i32 1
  br label %282

282:                                              ; preds = %280, %278
  %.132 = phi ptr [ %.031, %278 ], [ %281, %280 ]
  %.318 = phi i64 [ %279, %278 ], [ 128, %280 ]
  br label %251, !llvm.loop !23

283:                                              ; preds = %251
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

10:                                               ; preds = %43, %4
  %.01 = phi i32 [ %3, %4 ], [ %.0, %43 ]
  %11 = sdiv i32 %2, 2
  %12 = icmp sle i32 %.01, %11
  br i1 %12, label %13, label %.loopexit

13:                                               ; preds = %10
  %14 = add nsw i32 %.01, %.01
  %15 = icmp slt i32 %14, %2
  br i1 %15, label %16, label %31

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
  br i1 %28, label %29, label %31

29:                                               ; preds = %16
  %30 = add nsw i32 %14, 1
  br label %31

31:                                               ; preds = %29, %16, %13
  %.0 = phi i32 [ %30, %29 ], [ %14, %16 ], [ %14, %13 ]
  %32 = sext i32 %9 to i64
  %33 = getelementptr inbounds i64, ptr %0, i64 %32
  %34 = load i64, ptr %33, align 8
  %35 = sub nsw i32 %.0, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, ptr %1, i64 %36
  %38 = load i64, ptr %37, align 8
  %39 = getelementptr inbounds nuw i64, ptr %0, i64 %38
  %40 = load i64, ptr %39, align 8
  %41 = icmp ult i64 %34, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %47

43:                                               ; preds = %31
  %44 = sub nsw i32 %.01, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, ptr %1, i64 %45
  store i64 %38, ptr %46, align 8
  br label %10, !llvm.loop !24

.loopexit:                                        ; preds = %10
  %.pre = sext i32 %9 to i64
  br label %47

47:                                               ; preds = %.loopexit, %42
  %.pre-phi = phi i64 [ %.pre, %.loopexit ], [ %32, %42 ]
  %48 = sub nsw i32 %.01, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, ptr %1, i64 %49
  store i64 %.pre-phi, ptr %50, align 8
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
  br i1 %3, label %4, label %16

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %13, %4
  %.01 = phi i32 [ 1, %4 ], [ %14, %13 ]
  %6 = icmp slt i32 %.01, %0
  br i1 %6, label %7, label %.loopexit

7:                                                ; preds = %5
  %8 = getelementptr inbounds ptr, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8
  %10 = call i32 @strcmp(ptr noundef %9, ptr noundef @.str.4) #7
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  br label %15

13:                                               ; preds = %7
  %14 = add nsw i32 %.01, 1
  br label %5, !llvm.loop !25

.loopexit:                                        ; preds = %5
  br label %15

15:                                               ; preds = %.loopexit, %12
  %.1 = phi i8 [ 1, %12 ], [ 0, %.loopexit ]
  br label %16

16:                                               ; preds = %15, %2
  %.0 = phi i8 [ %.1, %15 ], [ 0, %2 ]
  %17 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %18

18:                                               ; preds = %20, %16
  %.12 = phi i32 [ 0, %16 ], [ %21, %20 ]
  %19 = icmp slt i32 %.12, 30
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  call void @compdecomp(ptr noundef %17, i64 noundef 10000000)
  %21 = add nsw i32 %.12, 1
  br label %18, !llvm.loop !26

22:                                               ; preds = %18
  call void @free(ptr noundef %17)
  %23 = icmp ne i8 %.0, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = call ptr @__acrt_iob_func(i32 noundef 1)
  %26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.5, double noundef 0.000000e+00) #7
  br label %30

27:                                               ; preds = %22
  %28 = call ptr @__acrt_iob_func(i32 noundef 1)
  %29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.6, double noundef 0.000000e+00) #7
  br label %30

30:                                               ; preds = %27, %24
  %31 = call ptr @__acrt_iob_func(i32 noundef 1)
  %32 = call i32 @fflush(ptr noundef %31)
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
  %13 = phi i32 [ %11, %10 ], [ %8, %0 ]
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
