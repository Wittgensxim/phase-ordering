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

23:                                               ; preds = %41, %22
  %.010 = phi i64 [ 0, %22 ], [ %.111.1, %41 ]
  %.13 = phi i64 [ 0, %22 ], [ %42, %41 ]
  %24 = icmp samesign ult i64 %.13, 256
  br i1 %24, label %25, label %43

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
  br label %23, !llvm.loop !10

43:                                               ; preds = %23
  %.010.lcssa = phi i64 [ %.010, %23 ]
  br label %44

44:                                               ; preds = %46, %43
  %.24 = phi i64 [ %.010.lcssa, %43 ], [ %49, %46 ]
  %45 = icmp ugt i64 %.24, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %44
  %47 = trunc i64 %.010.lcssa to i32
  %48 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %47, i32 noundef %48)
  %49 = add i64 %.24, -1
  br label %44, !llvm.loop !11

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %53, %50
  %.212 = phi i64 [ %.010.lcssa, %50 ], [ %54, %53 ]
  %52 = icmp ugt i64 %.212, 1
  br i1 %52, label %53, label %72

53:                                               ; preds = %51
  %54 = add i64 %.212, -1
  %55 = load i64, ptr %4, align 16
  %56 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %54
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %4, align 16
  %58 = trunc i64 %54 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %58, i32 noundef 1)
  %59 = load i64, ptr %4, align 16
  %60 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %59
  %61 = load i64, ptr %60, align 8
  %62 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %55
  %63 = load i64, ptr %62, align 8
  %64 = add i64 %61, %63
  %65 = add i64 256, %54
  %66 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %65
  store i64 %64, ptr %66, align 8
  %67 = trunc i64 %65 to i32
  %68 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %55
  store i32 %67, ptr %68, align 4
  %69 = sub i64 -256, %54
  %70 = trunc i64 %69 to i32
  %71 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %59
  store i32 %70, ptr %71, align 4
  store i64 %65, ptr %4, align 16
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %58, i32 noundef 1)
  br label %51, !llvm.loop !12

72:                                               ; preds = %51
  %.212.lcssa = phi i64 [ %.212, %51 ]
  %73 = add i64 256, %.212.lcssa
  %74 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %73
  store i32 0, ptr %74, align 4
  br label %75

75:                                               ; preds = %111, %72
  %.045 = phi i64 [ 0, %72 ], [ %.146, %111 ]
  %.042 = phi i64 [ 0, %72 ], [ %112, %111 ]
  %.039 = phi i64 [ 0, %72 ], [ %.140, %111 ]
  %76 = icmp ult i64 %.042, 256
  br i1 %76, label %77, label %113

77:                                               ; preds = %75
  %78 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.042
  %79 = load i64, ptr %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 0, ptr %82, align 4
  %83 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 0, ptr %83, align 1
  br label %111

84:                                               ; preds = %77
  %85 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.042
  %86 = load i32, ptr %85, align 4
  br label %87

87:                                               ; preds = %94, %84
  %.043 = phi i64 [ 0, %84 ], [ %.144, %94 ]
  %.037 = phi i32 [ %86, %84 ], [ %97, %94 ]
  %.05 = phi i64 [ 1, %84 ], [ %98, %94 ]
  %.3 = phi i64 [ 0, %84 ], [ %99, %94 ]
  %88 = icmp ne i32 %.037, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %87
  %90 = icmp slt i32 %.037, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %89
  %92 = add i64 %.043, %.05
  %93 = sub nsw i32 0, %.037
  br label %94

94:                                               ; preds = %91, %89
  %.144 = phi i64 [ %92, %91 ], [ %.043, %89 ]
  %.138 = phi i32 [ %93, %91 ], [ %.037, %89 ]
  %95 = sext i32 %.138 to i64
  %96 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %95
  %97 = load i32, ptr %96, align 4
  %98 = shl i64 %.05, 1
  %99 = add i64 %.3, 1
  br label %87, !llvm.loop !13

100:                                              ; preds = %87
  %.043.lcssa = phi i64 [ %.043, %87 ]
  %.3.lcssa = phi i64 [ %.3, %87 ]
  %101 = trunc i64 %.043.lcssa to i32
  %102 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 %101, ptr %102, align 4
  %103 = trunc i64 %.3.lcssa to i8
  %104 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 %103, ptr %104, align 1
  %105 = icmp ugt i64 %.043.lcssa, %.045
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %107

107:                                              ; preds = %106, %100
  %.247 = phi i64 [ %.043.lcssa, %106 ], [ %.045, %100 ]
  %108 = icmp ugt i64 %.3.lcssa, %.039
  br i1 %108, label %109, label %110

109:                                              ; preds = %107
  br label %110

110:                                              ; preds = %109, %107
  %.241 = phi i64 [ %.3.lcssa, %109 ], [ %.039, %107 ]
  br label %111

111:                                              ; preds = %110, %81
  %.146 = phi i64 [ %.247, %110 ], [ %.045, %81 ]
  %.140 = phi i64 [ %.241, %110 ], [ %.039, %81 ]
  %112 = add i64 %.042, 1
  br label %75, !llvm.loop !14

113:                                              ; preds = %75
  %.045.lcssa = phi i64 [ %.045, %75 ]
  %.039.lcssa = phi i64 [ %.039, %75 ]
  %114 = icmp ugt i64 %.039.lcssa, 32
  br i1 %114, label %115, label %118

115:                                              ; preds = %113
  %116 = call ptr @__acrt_iob_func(i32 noundef 2)
  %117 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %116, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

118:                                              ; preds = %113
  %119 = icmp eq i64 %.045.lcssa, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %118
  %121 = call ptr @__acrt_iob_func(i32 noundef 2)
  %122 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %121, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

123:                                              ; preds = %118
  br label %124

124:                                              ; preds = %171, %123
  %.134 = phi ptr [ %0, %123 ], [ %172, %171 ]
  %.028 = phi i64 [ 0, %123 ], [ %.129.lcssa, %171 ]
  %.024 = phi i8 [ 0, %123 ], [ %.125.lcssa, %171 ]
  %.16 = phi i64 [ 0, %123 ], [ %173, %171 ]
  %.01 = phi i32 [ -1, %123 ], [ %.1.lcssa, %171 ]
  %125 = icmp ult i64 %.16, %1
  br i1 %125, label %126, label %174

126:                                              ; preds = %124
  %127 = load i8, ptr %.134, align 1
  %128 = zext i8 %127 to i64
  %129 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %128
  %130 = load i8, ptr %129, align 1
  %131 = zext i8 %130 to i32
  %132 = sub nsw i32 %131, 1
  %133 = shl i32 1, %132
  %134 = sext i32 %133 to i64
  br label %135

135:                                              ; preds = %168, %126
  %136 = phi i8 [ %127, %126 ], [ %158, %168 ]
  %137 = phi i8 [ %130, %126 ], [ %.pre, %168 ]
  %.129 = phi i64 [ %.028, %126 ], [ %.230, %168 ]
  %.125 = phi i8 [ %.024, %126 ], [ %.327, %168 ]
  %.015 = phi i64 [ %134, %126 ], [ %169, %168 ]
  %.4 = phi i64 [ 0, %126 ], [ %170, %168 ]
  %.1 = phi i32 [ %.01, %126 ], [ %.2, %168 ]
  %138 = zext i8 %136 to i64
  %139 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %138
  %140 = zext i8 %137 to i64
  %141 = icmp ult i64 %.4, %140
  br i1 %141, label %142, label %171

142:                                              ; preds = %135
  %143 = icmp eq i32 %.1, 7
  br i1 %143, label %144, label %152

144:                                              ; preds = %142
  %145 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %145, align 1
  %146 = add i64 %.129, 1
  %147 = icmp eq i64 %146, %1
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = call ptr @__acrt_iob_func(i32 noundef 2)
  %150 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %149, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

151:                                              ; preds = %144
  %.pre1 = load i8, ptr %.134, align 1
  %.pre2 = zext i8 %.pre1 to i64
  br label %157

152:                                              ; preds = %142
  %153 = add nsw i32 %.1, 1
  %154 = sext i8 %.125 to i32
  %155 = shl i32 %154, 1
  %156 = trunc i32 %155 to i8
  br label %157

157:                                              ; preds = %152, %151
  %.pre-phi = phi i64 [ %138, %152 ], [ %.pre2, %151 ]
  %158 = phi i8 [ %.pre1, %151 ], [ %136, %152 ]
  %.230 = phi i64 [ %146, %151 ], [ %.129, %152 ]
  %.226 = phi i8 [ 0, %151 ], [ %156, %152 ]
  %.2 = phi i32 [ 0, %151 ], [ %153, %152 ]
  %159 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.pre-phi
  %160 = load i32, ptr %159, align 4
  %161 = zext i32 %160 to i64
  %162 = and i64 %161, %.015
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %157
  %165 = sext i8 %.226 to i32
  %166 = or i32 %165, 1
  %167 = trunc i32 %166 to i8
  br label %168

168:                                              ; preds = %164, %157
  %.327 = phi i8 [ %167, %164 ], [ %.226, %157 ]
  %169 = lshr i64 %.015, 1
  %170 = add i64 %.4, 1
  %.phi.trans.insert = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %135, !llvm.loop !15

171:                                              ; preds = %135
  %.129.lcssa = phi i64 [ %.129, %135 ]
  %.125.lcssa = phi i8 [ %.125, %135 ]
  %.1.lcssa = phi i32 [ %.1, %135 ]
  %172 = getelementptr inbounds nuw i8, ptr %.134, i32 1
  %173 = add i64 %.16, 1
  br label %124, !llvm.loop !16

174:                                              ; preds = %124
  %.028.lcssa = phi i64 [ %.028, %124 ]
  %.024.lcssa = phi i8 [ %.024, %124 ]
  %.01.lcssa = phi i32 [ %.01, %124 ]
  %175 = sub nsw i32 7, %.01.lcssa
  %176 = sext i8 %.024.lcssa to i32
  %177 = shl i32 %176, %175
  %178 = trunc i32 %177 to i8
  %179 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %178, ptr %179, align 1
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 1024, i1 false)
  br label %180

180:                                              ; preds = %212, %174
  %.27 = phi i64 [ 0, %174 ], [ %213, %212 ]
  %.0 = phi ptr [ %9, %174 ], [ %184, %212 ]
  %181 = icmp ult i64 %.27, 256
  br i1 %181, label %182, label %214

182:                                              ; preds = %180
  %183 = trunc i64 %.27 to i8
  store i8 %183, ptr %.0, align 1
  %184 = getelementptr inbounds nuw i8, ptr %.0, i32 1
  %185 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %186 = load i32, ptr %185, align 4
  %187 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %188 = load i8, ptr %187, align 1
  %189 = zext i8 %188 to i32
  %190 = or i32 %186, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %212

192:                                              ; preds = %182
  %193 = sub nsw i32 %189, 1
  %194 = shl i32 1, %193
  %195 = sext i32 %194 to i64
  br label %196

196:                                              ; preds = %207, %192
  %.019 = phi i32 [ 0, %192 ], [ %.120, %207 ]
  %.116 = phi i64 [ %195, %192 ], [ %208, %207 ]
  %.5 = phi i64 [ 0, %192 ], [ %209, %207 ]
  %197 = zext i8 %188 to i64
  %198 = icmp ult i64 %.5, %197
  br i1 %198, label %199, label %210

199:                                              ; preds = %196
  %200 = mul i32 %.019, 2
  %201 = add i32 %200, 1
  %202 = zext i32 %186 to i64
  %203 = and i64 %202, %.116
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %199
  %206 = add i32 %201, 1
  br label %207

207:                                              ; preds = %205, %199
  %.120 = phi i32 [ %206, %205 ], [ %201, %199 ]
  %208 = lshr i64 %.116, 1
  %209 = add i64 %.5, 1
  br label %196, !llvm.loop !17

210:                                              ; preds = %196
  %.019.lcssa = phi i32 [ %.019, %196 ]
  %211 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.27
  store i32 %.019.lcssa, ptr %211, align 4
  br label %212

212:                                              ; preds = %210, %182
  %213 = add i64 %.27, 1
  br label %180, !llvm.loop !18

214:                                              ; preds = %180
  br label %215

215:                                              ; preds = %240, %214
  %.6 = phi i64 [ 1, %214 ], [ %243, %240 ]
  %216 = icmp ult i64 %.6, 256
  br i1 %216, label %217, label %244

217:                                              ; preds = %215
  %218 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %219 = load i32, ptr %218, align 4
  %220 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %221 = load i8, ptr %220, align 1
  br label %222

222:                                              ; preds = %231, %217
  %.38 = phi i64 [ %.6, %217 ], [ %239, %231 ]
  %223 = icmp ne i64 %.38, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %222
  %225 = sub i64 %.38, 1
  %226 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %225
  %227 = load i32, ptr %226, align 4
  %228 = icmp ugt i32 %227, %219
  br label %229

229:                                              ; preds = %224, %222
  %230 = phi i1 [ false, %222 ], [ %228, %224 ]
  br i1 %230, label %231, label %240

231:                                              ; preds = %229
  %232 = sub i64 %.38, 1
  %233 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %232
  %234 = load i32, ptr %233, align 4
  %235 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %234, ptr %235, align 4
  %236 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %232
  %237 = load i8, ptr %236, align 1
  %238 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %237, ptr %238, align 1
  %239 = add i64 %.38, -1
  br label %222, !llvm.loop !19

240:                                              ; preds = %229
  %.38.lcssa = phi i64 [ %.38, %229 ]
  %241 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %219, ptr %241, align 4
  %242 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %221, ptr %242, align 1
  %243 = add i64 %.6, 1
  br label %215, !llvm.loop !20

244:                                              ; preds = %215
  br label %245

245:                                              ; preds = %249, %244
  %.49 = phi i64 [ 0, %244 ], [ %250, %249 ]
  %246 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %247 = load i32, ptr %246, align 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %245
  %250 = add i64 %.49, 1
  br label %245, !llvm.loop !21

251:                                              ; preds = %245
  %.49.lcssa = phi i64 [ %.49, %245 ]
  br label %252

252:                                              ; preds = %283, %251
  %.235 = phi ptr [ %0, %251 ], [ %.336, %283 ]
  %.031 = phi ptr [ %11, %251 ], [ %.132, %283 ]
  %.221 = phi i32 [ 0, %251 ], [ %.423, %283 ]
  %.217 = phi i64 [ 128, %251 ], [ %.318, %283 ]
  %.313 = phi i64 [ 0, %251 ], [ %.414, %283 ]
  %.7 = phi i64 [ %.49.lcssa, %251 ], [ %.9, %283 ]
  %253 = icmp ult i64 %.313, %1
  br i1 %253, label %254, label %284

254:                                              ; preds = %252
  %255 = mul i32 %.221, 2
  %256 = add i32 %255, 1
  %257 = load i8, ptr %.031, align 1
  %258 = zext i8 %257 to i64
  %259 = and i64 %258, %.217
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %254
  %262 = add i32 %256, 1
  br label %263

263:                                              ; preds = %261, %254
  %.322 = phi i32 [ %262, %261 ], [ %256, %254 ]
  br label %264

264:                                              ; preds = %268, %263
  %.8 = phi i64 [ %.7, %263 ], [ %269, %268 ]
  %265 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %266 = load i32, ptr %265, align 4
  %267 = icmp ult i32 %266, %.322
  br i1 %267, label %268, label %270

268:                                              ; preds = %264
  %269 = add i64 %.8, 1
  br label %264, !llvm.loop !22

270:                                              ; preds = %264
  %.8.lcssa = phi i64 [ %.8, %264 ]
  %.lcssa = phi i32 [ %266, %264 ]
  %271 = icmp eq i32 %.322, %.lcssa
  br i1 %271, label %272, label %277

272:                                              ; preds = %270
  %273 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %274 = load i8, ptr %273, align 1
  store i8 %274, ptr %.235, align 1
  %275 = getelementptr inbounds nuw i8, ptr %.235, i32 1
  %276 = add i64 %.313, 1
  br label %277

277:                                              ; preds = %272, %270
  %.336 = phi ptr [ %275, %272 ], [ %.235, %270 ]
  %.423 = phi i32 [ 0, %272 ], [ %.322, %270 ]
  %.414 = phi i64 [ %276, %272 ], [ %.313, %270 ]
  %.9 = phi i64 [ %.49.lcssa, %272 ], [ %.8.lcssa, %270 ]
  %278 = icmp ugt i64 %.217, 1
  br i1 %278, label %279, label %281

279:                                              ; preds = %277
  %280 = lshr i64 %.217, 1
  br label %283

281:                                              ; preds = %277
  %282 = getelementptr inbounds nuw i8, ptr %.031, i32 1
  br label %283

283:                                              ; preds = %281, %279
  %.132 = phi ptr [ %.031, %279 ], [ %282, %281 ]
  %.318 = phi i64 [ %280, %279 ], [ 128, %281 ]
  br label %252, !llvm.loop !23

284:                                              ; preds = %252
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
  %.01.lcssa = phi i32 [ %.01, %10 ]
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
  %.lcssa = phi i64 [ %32, %31 ]
  %.01.lcssa1 = phi i32 [ %.01, %31 ]
  br label %47

43:                                               ; preds = %31
  %44 = sub nsw i32 %.01, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, ptr %1, i64 %45
  store i64 %38, ptr %46, align 8
  br label %10, !llvm.loop !24

47:                                               ; preds = %._crit_edge, %42
  %.012 = phi i32 [ %.01.lcssa, %._crit_edge ], [ %.01.lcssa1, %42 ]
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %.lcssa, %42 ]
  %48 = sub nsw i32 %.012, 1
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
