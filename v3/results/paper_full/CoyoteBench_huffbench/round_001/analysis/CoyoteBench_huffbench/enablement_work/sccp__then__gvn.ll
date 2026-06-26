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

23:                                               ; preds = %32, %22
  %.010 = phi i64 [ 0, %22 ], [ %.111, %32 ]
  %.13 = phi i64 [ 0, %22 ], [ %33, %32 ]
  %24 = icmp ult i64 %.13, 256
  br i1 %24, label %25, label %34

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
  br label %23, !llvm.loop !10

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %37, %34
  %.24 = phi i64 [ %.010, %34 ], [ %40, %37 ]
  %36 = icmp ugt i64 %.24, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  %38 = trunc i64 %.010 to i32
  %39 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %38, i32 noundef %39)
  %40 = add i64 %.24, -1
  br label %35, !llvm.loop !11

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %44, %41
  %.212 = phi i64 [ %.010, %41 ], [ %45, %44 ]
  %43 = icmp ugt i64 %.212, 1
  br i1 %43, label %44, label %63

44:                                               ; preds = %42
  %45 = add i64 %.212, -1
  %46 = load i64, ptr %4, align 16
  %47 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %45
  %48 = load i64, ptr %47, align 8
  store i64 %48, ptr %4, align 16
  %49 = trunc i64 %45 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %49, i32 noundef 1)
  %50 = load i64, ptr %4, align 16
  %51 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %50
  %52 = load i64, ptr %51, align 8
  %53 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %46
  %54 = load i64, ptr %53, align 8
  %55 = add i64 %52, %54
  %56 = add i64 256, %45
  %57 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %56
  store i64 %55, ptr %57, align 8
  %58 = trunc i64 %56 to i32
  %59 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %46
  store i32 %58, ptr %59, align 4
  %60 = sub i64 -256, %45
  %61 = trunc i64 %60 to i32
  %62 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %50
  store i32 %61, ptr %62, align 4
  store i64 %56, ptr %4, align 16
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %49, i32 noundef 1)
  br label %42, !llvm.loop !12

63:                                               ; preds = %42
  %64 = add nuw nsw i64 256, %.212
  %65 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %64
  store i32 0, ptr %65, align 4
  br label %66

66:                                               ; preds = %102, %63
  %.045 = phi i64 [ 0, %63 ], [ %.146, %102 ]
  %.042 = phi i64 [ 0, %63 ], [ %103, %102 ]
  %.039 = phi i64 [ 0, %63 ], [ %.140, %102 ]
  %67 = icmp ult i64 %.042, 256
  br i1 %67, label %68, label %104

68:                                               ; preds = %66
  %69 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.042
  %70 = load i64, ptr %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 0, ptr %73, align 4
  %74 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 0, ptr %74, align 1
  br label %102

75:                                               ; preds = %68
  %76 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.042
  %77 = load i32, ptr %76, align 4
  br label %78

78:                                               ; preds = %85, %75
  %.043 = phi i64 [ 0, %75 ], [ %.144, %85 ]
  %.037 = phi i32 [ %77, %75 ], [ %88, %85 ]
  %.05 = phi i64 [ 1, %75 ], [ %89, %85 ]
  %.3 = phi i64 [ 0, %75 ], [ %90, %85 ]
  %79 = icmp ne i32 %.037, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %78
  %81 = icmp slt i32 %.037, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %80
  %83 = add i64 %.043, %.05
  %84 = sub nsw i32 0, %.037
  br label %85

85:                                               ; preds = %82, %80
  %.144 = phi i64 [ %83, %82 ], [ %.043, %80 ]
  %.138 = phi i32 [ %84, %82 ], [ %.037, %80 ]
  %86 = zext nneg i32 %.138 to i64
  %87 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %86
  %88 = load i32, ptr %87, align 4
  %89 = shl i64 %.05, 1
  %90 = add i64 %.3, 1
  br label %78, !llvm.loop !13

91:                                               ; preds = %78
  %92 = trunc i64 %.043 to i32
  %93 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 %92, ptr %93, align 4
  %94 = trunc i64 %.3 to i8
  %95 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 %94, ptr %95, align 1
  %96 = icmp ugt i64 %.043, %.045
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %98

98:                                               ; preds = %97, %91
  %.247 = phi i64 [ %.043, %97 ], [ %.045, %91 ]
  %99 = icmp ugt i64 %.3, %.039
  br i1 %99, label %100, label %101

100:                                              ; preds = %98
  br label %101

101:                                              ; preds = %100, %98
  %.241 = phi i64 [ %.3, %100 ], [ %.039, %98 ]
  br label %102

102:                                              ; preds = %101, %72
  %.146 = phi i64 [ %.247, %101 ], [ %.045, %72 ]
  %.140 = phi i64 [ %.241, %101 ], [ %.039, %72 ]
  %103 = add nuw nsw i64 %.042, 1
  br label %66, !llvm.loop !14

104:                                              ; preds = %66
  %105 = icmp ugt i64 %.039, 32
  br i1 %105, label %106, label %109

106:                                              ; preds = %104
  %107 = call ptr @__acrt_iob_func(i32 noundef 2)
  %108 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %107, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

109:                                              ; preds = %104
  %110 = icmp eq i64 %.045, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %109
  %112 = call ptr @__acrt_iob_func(i32 noundef 2)
  %113 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %112, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

114:                                              ; preds = %109
  br label %115

115:                                              ; preds = %162, %114
  %.134 = phi ptr [ %0, %114 ], [ %163, %162 ]
  %.028 = phi i64 [ 0, %114 ], [ %.129, %162 ]
  %.024 = phi i8 [ 0, %114 ], [ %.125, %162 ]
  %.16 = phi i64 [ 0, %114 ], [ %164, %162 ]
  %.01 = phi i32 [ -1, %114 ], [ %.1, %162 ]
  %116 = icmp ult i64 %.16, %1
  br i1 %116, label %117, label %165

117:                                              ; preds = %115
  %118 = load i8, ptr %.134, align 1
  %119 = zext i8 %118 to i64
  %120 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %119
  %121 = load i8, ptr %120, align 1
  %122 = zext i8 %121 to i32
  %123 = sub nsw i32 %122, 1
  %124 = shl nuw i32 1, %123
  %125 = sext i32 %124 to i64
  br label %126

126:                                              ; preds = %159, %117
  %127 = phi i8 [ %118, %117 ], [ %149, %159 ]
  %128 = phi i8 [ %121, %117 ], [ %.pre, %159 ]
  %.129 = phi i64 [ %.028, %117 ], [ %.230, %159 ]
  %.125 = phi i8 [ %.024, %117 ], [ %.327, %159 ]
  %.015 = phi i64 [ %125, %117 ], [ %160, %159 ]
  %.4 = phi i64 [ 0, %117 ], [ %161, %159 ]
  %.1 = phi i32 [ %.01, %117 ], [ %.2, %159 ]
  %129 = zext i8 %127 to i64
  %130 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %129
  %131 = zext i8 %128 to i64
  %132 = icmp ult i64 %.4, %131
  br i1 %132, label %133, label %162

133:                                              ; preds = %126
  %134 = icmp eq i32 %.1, 7
  br i1 %134, label %135, label %143

135:                                              ; preds = %133
  %136 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %136, align 1
  %137 = add i64 %.129, 1
  %138 = icmp eq i64 %137, %1
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = call ptr @__acrt_iob_func(i32 noundef 2)
  %141 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %140, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

142:                                              ; preds = %135
  %.pre5 = load i8, ptr %.134, align 1
  %.pre6 = zext i8 %.pre5 to i64
  br label %148

143:                                              ; preds = %133
  %144 = add nsw i32 %.1, 1
  %145 = sext i8 %.125 to i32
  %146 = shl nsw i32 %145, 1
  %147 = trunc i32 %146 to i8
  br label %148

148:                                              ; preds = %143, %142
  %.pre-phi = phi i64 [ %129, %143 ], [ %.pre6, %142 ]
  %149 = phi i8 [ %.pre5, %142 ], [ %127, %143 ]
  %.230 = phi i64 [ %137, %142 ], [ %.129, %143 ]
  %.226 = phi i8 [ 0, %142 ], [ %147, %143 ]
  %.2 = phi i32 [ 0, %142 ], [ %144, %143 ]
  %150 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.pre-phi
  %151 = load i32, ptr %150, align 4
  %152 = zext i32 %151 to i64
  %153 = and i64 %152, %.015
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %148
  %156 = sext i8 %.226 to i32
  %157 = or i32 %156, 1
  %158 = trunc i32 %157 to i8
  br label %159

159:                                              ; preds = %155, %148
  %.327 = phi i8 [ %158, %155 ], [ %.226, %148 ]
  %160 = lshr i64 %.015, 1
  %161 = add nuw nsw i64 %.4, 1
  %.phi.trans.insert = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %126, !llvm.loop !15

162:                                              ; preds = %126
  %163 = getelementptr inbounds nuw i8, ptr %.134, i32 1
  %164 = add i64 %.16, 1
  br label %115, !llvm.loop !16

165:                                              ; preds = %115
  %166 = sub nsw i32 7, %.01
  %167 = sext i8 %.024 to i32
  %168 = shl i32 %167, %166
  %169 = trunc i32 %168 to i8
  %170 = getelementptr inbounds nuw i8, ptr %11, i64 %.028
  store i8 %169, ptr %170, align 1
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 1024, i1 false)
  br label %171

171:                                              ; preds = %203, %165
  %.27 = phi i64 [ 0, %165 ], [ %204, %203 ]
  %.0 = phi ptr [ %9, %165 ], [ %175, %203 ]
  %172 = icmp ult i64 %.27, 256
  br i1 %172, label %173, label %205

173:                                              ; preds = %171
  %174 = trunc nuw i64 %.27 to i8
  store i8 %174, ptr %.0, align 1
  %175 = getelementptr inbounds nuw i8, ptr %.0, i32 1
  %176 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %177 = load i32, ptr %176, align 4
  %178 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %179 = load i8, ptr %178, align 1
  %180 = zext i8 %179 to i32
  %181 = or i32 %177, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %203

183:                                              ; preds = %173
  %184 = sub nsw i32 %180, 1
  %185 = shl nuw i32 1, %184
  %186 = sext i32 %185 to i64
  br label %187

187:                                              ; preds = %198, %183
  %.019 = phi i32 [ 0, %183 ], [ %.120, %198 ]
  %.116 = phi i64 [ %186, %183 ], [ %199, %198 ]
  %.5 = phi i64 [ 0, %183 ], [ %200, %198 ]
  %188 = zext i8 %179 to i64
  %189 = icmp ult i64 %.5, %188
  br i1 %189, label %190, label %201

190:                                              ; preds = %187
  %191 = mul i32 %.019, 2
  %192 = add i32 %191, 1
  %193 = zext i32 %177 to i64
  %194 = and i64 %193, %.116
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %190
  %197 = add i32 %192, 1
  br label %198

198:                                              ; preds = %196, %190
  %.120 = phi i32 [ %197, %196 ], [ %192, %190 ]
  %199 = lshr i64 %.116, 1
  %200 = add nuw nsw i64 %.5, 1
  br label %187, !llvm.loop !17

201:                                              ; preds = %187
  %202 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.27
  store i32 %.019, ptr %202, align 4
  br label %203

203:                                              ; preds = %201, %173
  %204 = add nuw nsw i64 %.27, 1
  br label %171, !llvm.loop !18

205:                                              ; preds = %171
  br label %206

206:                                              ; preds = %231, %205
  %.6 = phi i64 [ 1, %205 ], [ %234, %231 ]
  %207 = icmp ult i64 %.6, 256
  br i1 %207, label %208, label %235

208:                                              ; preds = %206
  %209 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %210 = load i32, ptr %209, align 4
  %211 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %212 = load i8, ptr %211, align 1
  br label %213

213:                                              ; preds = %222, %208
  %.38 = phi i64 [ %.6, %208 ], [ %230, %222 ]
  %214 = icmp ne i64 %.38, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %213
  %216 = sub nuw i64 %.38, 1
  %217 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %216
  %218 = load i32, ptr %217, align 4
  %219 = icmp ugt i32 %218, %210
  br label %220

220:                                              ; preds = %215, %213
  %221 = phi i1 [ false, %213 ], [ %219, %215 ]
  br i1 %221, label %222, label %231

222:                                              ; preds = %220
  %223 = sub i64 %.38, 1
  %224 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %223
  %225 = load i32, ptr %224, align 4
  %226 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %225, ptr %226, align 4
  %227 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %223
  %228 = load i8, ptr %227, align 1
  %229 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %228, ptr %229, align 1
  %230 = add i64 %.38, -1
  br label %213, !llvm.loop !19

231:                                              ; preds = %220
  %232 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %210, ptr %232, align 4
  %233 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %212, ptr %233, align 1
  %234 = add nuw nsw i64 %.6, 1
  br label %206, !llvm.loop !20

235:                                              ; preds = %206
  br label %236

236:                                              ; preds = %240, %235
  %.49 = phi i64 [ 0, %235 ], [ %241, %240 ]
  %237 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %238 = load i32, ptr %237, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %236
  %241 = add i64 %.49, 1
  br label %236, !llvm.loop !21

242:                                              ; preds = %236
  br label %243

243:                                              ; preds = %274, %242
  %.235 = phi ptr [ %0, %242 ], [ %.336, %274 ]
  %.031 = phi ptr [ %11, %242 ], [ %.132, %274 ]
  %.221 = phi i32 [ 0, %242 ], [ %.423, %274 ]
  %.217 = phi i64 [ 128, %242 ], [ %.318, %274 ]
  %.313 = phi i64 [ 0, %242 ], [ %.414, %274 ]
  %.7 = phi i64 [ %.49, %242 ], [ %.9, %274 ]
  %244 = icmp ult i64 %.313, %1
  br i1 %244, label %245, label %275

245:                                              ; preds = %243
  %246 = mul i32 %.221, 2
  %247 = add i32 %246, 1
  %248 = load i8, ptr %.031, align 1
  %249 = zext i8 %248 to i64
  %250 = and i64 %249, %.217
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %245
  %253 = add i32 %247, 1
  br label %254

254:                                              ; preds = %252, %245
  %.322 = phi i32 [ %253, %252 ], [ %247, %245 ]
  br label %255

255:                                              ; preds = %259, %254
  %.8 = phi i64 [ %.7, %254 ], [ %260, %259 ]
  %256 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %257 = load i32, ptr %256, align 4
  %258 = icmp ult i32 %257, %.322
  br i1 %258, label %259, label %261

259:                                              ; preds = %255
  %260 = add i64 %.8, 1
  br label %255, !llvm.loop !22

261:                                              ; preds = %255
  %262 = icmp eq i32 %.322, %257
  br i1 %262, label %263, label %268

263:                                              ; preds = %261
  %264 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8
  %265 = load i8, ptr %264, align 1
  store i8 %265, ptr %.235, align 1
  %266 = getelementptr inbounds nuw i8, ptr %.235, i32 1
  %267 = add i64 %.313, 1
  br label %268

268:                                              ; preds = %263, %261
  %.336 = phi ptr [ %266, %263 ], [ %.235, %261 ]
  %.423 = phi i32 [ 0, %263 ], [ %.322, %261 ]
  %.414 = phi i64 [ %267, %263 ], [ %.313, %261 ]
  %.9 = phi i64 [ %.49, %263 ], [ %.8, %261 ]
  %269 = icmp ugt i64 %.217, 1
  br i1 %269, label %270, label %272

270:                                              ; preds = %268
  %271 = lshr i64 %.217, 1
  br label %274

272:                                              ; preds = %268
  %273 = getelementptr inbounds nuw i8, ptr %.031, i32 1
  br label %274

274:                                              ; preds = %272, %270
  %.132 = phi ptr [ %.031, %270 ], [ %273, %272 ]
  %.318 = phi i64 [ %271, %270 ], [ 128, %272 ]
  br label %243, !llvm.loop !23

275:                                              ; preds = %243
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
  br i1 %12, label %13, label %._crit_edge

._crit_edge:                                      ; preds = %10
  %.pre = sext i32 %9 to i64
  br label %47

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

47:                                               ; preds = %._crit_edge, %42
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %32, %42 ]
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
  br i1 %6, label %7, label %15

7:                                                ; preds = %5
  %8 = getelementptr inbounds nuw ptr, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8
  %10 = call i32 @strcmp(ptr noundef %9, ptr noundef @.str.4) #7
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  br label %15

13:                                               ; preds = %7
  %14 = add nsw i32 %.01, 1
  br label %5, !llvm.loop !25

15:                                               ; preds = %12, %5
  %.1 = phi i8 [ 1, %12 ], [ 0, %5 ]
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
define internal range(i64 -31, 32) i64 @random4() #0 {
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
