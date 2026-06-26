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

3:                                                ; preds = %11, %1
  %.01 = phi ptr [ %2, %1 ], [ %10, %11 ]
  %.0 = phi i32 [ 0, %1 ], [ %12, %11 ]
  %4 = sext i32 %.0 to i64
  %5 = icmp ult i64 %4, %0
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = call i64 @random4()
  %8 = getelementptr inbounds nuw i8, ptr @.str, i64 %7
  %9 = load i8, ptr %8, align 1
  store i8 %9, ptr %.01, align 1
  %10 = getelementptr inbounds nuw i8, ptr %.01, i32 1
  br label %11

11:                                               ; preds = %6
  %12 = add nsw i32 %.0, 1
  br label %3, !llvm.loop !7

13:                                               ; preds = %3
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

19:                                               ; preds = %28, %2
  %.033 = phi ptr [ %0, %2 ], [ %27, %28 ]
  %.02 = phi i64 [ 0, %2 ], [ %29, %28 ]
  %20 = icmp ult i64 %.02, %1
  br i1 %20, label %21, label %30

21:                                               ; preds = %19
  %22 = load i8, ptr %.033, align 1
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %23
  %25 = load i64, ptr %24, align 8
  %26 = add i64 %25, 1
  store i64 %26, ptr %24, align 8
  %27 = getelementptr inbounds nuw i8, ptr %.033, i32 1
  br label %28

28:                                               ; preds = %21
  %29 = add i64 %.02, 1
  br label %19, !llvm.loop !9

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %51, %30
  %.010 = phi i64 [ 0, %30 ], [ %.111.1, %51 ]
  %.13 = phi i64 [ 0, %30 ], [ %52, %51 ]
  %32 = icmp samesign ult i64 %.13, 256
  br i1 %32, label %33, label %53

33:                                               ; preds = %31
  %34 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.13
  %35 = load i64, ptr %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.010
  store i64 %.13, ptr %38, align 8
  %39 = add i64 %.010, 1
  br label %40

40:                                               ; preds = %37, %33
  %.111 = phi i64 [ %39, %37 ], [ %.010, %33 ]
  br label %41

41:                                               ; preds = %40
  %42 = add nuw nsw i64 %.13, 1
  br label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %42
  %45 = load i64, ptr %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.111
  store i64 %42, ptr %48, align 8
  %49 = add i64 %.111, 1
  br label %50

50:                                               ; preds = %47, %43
  %.111.1 = phi i64 [ %49, %47 ], [ %.111, %43 ]
  br label %51

51:                                               ; preds = %50
  %52 = add nuw nsw i64 %.13, 2
  br label %31, !llvm.loop !10

53:                                               ; preds = %31
  %.010.lcssa = phi i64 [ %.010, %31 ]
  br label %54

54:                                               ; preds = %61, %53
  %.24 = phi i64 [ %.010.lcssa, %53 ], [ %62, %61 ]
  %55 = icmp ugt i64 %.24, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %54
  %57 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %58 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %59 = trunc i64 %.010.lcssa to i32
  %60 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef %57, ptr noundef %58, i32 noundef %59, i32 noundef %60)
  br label %61

61:                                               ; preds = %56
  %62 = add i64 %.24, -1
  br label %54, !llvm.loop !11

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %66, %63
  %.212 = phi i64 [ %.010.lcssa, %63 ], [ %67, %66 ]
  %65 = icmp ugt i64 %.212, 1
  br i1 %65, label %66, label %98

66:                                               ; preds = %64
  %67 = add i64 %.212, -1
  %68 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %69 = load i64, ptr %68, align 16
  %70 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %67
  %71 = load i64, ptr %70, align 8
  %72 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %71, ptr %72, align 16
  %73 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %74 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %75 = trunc i64 %67 to i32
  call void @heap_adjust(ptr noundef %73, ptr noundef %74, i32 noundef %75, i32 noundef 1)
  %76 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %77 = load i64, ptr %76, align 16
  %78 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %77
  %79 = load i64, ptr %78, align 8
  %80 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %69
  %81 = load i64, ptr %80, align 8
  %82 = add i64 %79, %81
  %83 = add i64 256, %67
  %84 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %83
  store i64 %82, ptr %84, align 8
  %85 = add i64 256, %67
  %86 = trunc i64 %85 to i32
  %87 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %69
  store i32 %86, ptr %87, align 4
  %88 = sub i64 -256, %67
  %89 = trunc i64 %88 to i32
  %90 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %91 = load i64, ptr %90, align 16
  %92 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %91
  store i32 %89, ptr %92, align 4
  %93 = add i64 256, %67
  %94 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %93, ptr %94, align 16
  %95 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %96 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %97 = trunc i64 %67 to i32
  call void @heap_adjust(ptr noundef %95, ptr noundef %96, i32 noundef %97, i32 noundef 1)
  br label %64, !llvm.loop !12

98:                                               ; preds = %64
  %.212.lcssa = phi i64 [ %.212, %64 ]
  %99 = add i64 256, %.212.lcssa
  %100 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %99
  store i32 0, ptr %100, align 4
  br label %101

101:                                              ; preds = %138, %98
  %.045 = phi i64 [ 0, %98 ], [ %.146, %138 ]
  %.042 = phi i64 [ 0, %98 ], [ %139, %138 ]
  %.039 = phi i64 [ 0, %98 ], [ %.140, %138 ]
  %102 = icmp ult i64 %.042, 256
  br i1 %102, label %103, label %140

103:                                              ; preds = %101
  %104 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.042
  %105 = load i64, ptr %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 0, ptr %108, align 4
  %109 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 0, ptr %109, align 1
  br label %137

110:                                              ; preds = %103
  %111 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.042
  %112 = load i32, ptr %111, align 4
  br label %113

113:                                              ; preds = %120, %110
  %.043 = phi i64 [ 0, %110 ], [ %.144, %120 ]
  %.037 = phi i32 [ %112, %110 ], [ %123, %120 ]
  %.05 = phi i64 [ 1, %110 ], [ %124, %120 ]
  %.3 = phi i64 [ 0, %110 ], [ %125, %120 ]
  %114 = icmp ne i32 %.037, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %113
  %116 = icmp slt i32 %.037, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %115
  %118 = add i64 %.043, %.05
  %119 = sub nsw i32 0, %.037
  br label %120

120:                                              ; preds = %117, %115
  %.144 = phi i64 [ %118, %117 ], [ %.043, %115 ]
  %.138 = phi i32 [ %119, %117 ], [ %.037, %115 ]
  %121 = sext i32 %.138 to i64
  %122 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %121
  %123 = load i32, ptr %122, align 4
  %124 = shl i64 %.05, 1
  %125 = add i64 %.3, 1
  br label %113, !llvm.loop !13

126:                                              ; preds = %113
  %.043.lcssa = phi i64 [ %.043, %113 ]
  %.3.lcssa = phi i64 [ %.3, %113 ]
  %127 = trunc i64 %.043.lcssa to i32
  %128 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 %127, ptr %128, align 4
  %129 = trunc i64 %.3.lcssa to i8
  %130 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 %129, ptr %130, align 1
  %131 = icmp ugt i64 %.043.lcssa, %.045
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  br label %133

133:                                              ; preds = %132, %126
  %.247 = phi i64 [ %.043.lcssa, %132 ], [ %.045, %126 ]
  %134 = icmp ugt i64 %.3.lcssa, %.039
  br i1 %134, label %135, label %136

135:                                              ; preds = %133
  br label %136

136:                                              ; preds = %135, %133
  %.241 = phi i64 [ %.3.lcssa, %135 ], [ %.039, %133 ]
  br label %137

137:                                              ; preds = %136, %107
  %.146 = phi i64 [ %.247, %136 ], [ %.045, %107 ]
  %.140 = phi i64 [ %.241, %136 ], [ %.039, %107 ]
  br label %138

138:                                              ; preds = %137
  %139 = add i64 %.042, 1
  br label %101, !llvm.loop !14

140:                                              ; preds = %101
  %.045.lcssa = phi i64 [ %.045, %101 ]
  %.039.lcssa = phi i64 [ %.039, %101 ]
  %141 = icmp ugt i64 %.039.lcssa, 32
  br i1 %141, label %142, label %145

142:                                              ; preds = %140
  %143 = call ptr @__acrt_iob_func(i32 noundef 2)
  %144 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %143, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

145:                                              ; preds = %140
  %146 = icmp eq i64 %.045.lcssa, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %145
  %148 = call ptr @__acrt_iob_func(i32 noundef 2)
  %149 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %148, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

150:                                              ; preds = %145
  br label %151

151:                                              ; preds = %202, %150
  %.134 = phi ptr [ %0, %150 ], [ %201, %202 ]
  %.028 = phi i64 [ 0, %150 ], [ %.129.lcssa, %202 ]
  %.024 = phi i8 [ 0, %150 ], [ %.125.lcssa, %202 ]
  %.16 = phi i64 [ 0, %150 ], [ %203, %202 ]
  %.01 = phi i32 [ -1, %150 ], [ %.1.lcssa, %202 ]
  %152 = icmp ult i64 %.16, %1
  br i1 %152, label %153, label %204

153:                                              ; preds = %151
  %154 = load i8, ptr %.134, align 1
  %155 = zext i8 %154 to i64
  %156 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %155
  %157 = load i8, ptr %156, align 1
  %158 = zext i8 %157 to i32
  %159 = sub nsw i32 %158, 1
  %160 = shl i32 1, %159
  %161 = sext i32 %160 to i64
  br label %162

162:                                              ; preds = %198, %153
  %.129 = phi i64 [ %.028, %153 ], [ %.230, %198 ]
  %.125 = phi i8 [ %.024, %153 ], [ %.327, %198 ]
  %.015 = phi i64 [ %161, %153 ], [ %197, %198 ]
  %.4 = phi i64 [ 0, %153 ], [ %199, %198 ]
  %.1 = phi i32 [ %.01, %153 ], [ %.2, %198 ]
  %163 = load i8, ptr %.134, align 1
  %164 = zext i8 %163 to i64
  %165 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %164
  %166 = load i8, ptr %165, align 1
  %167 = zext i8 %166 to i64
  %168 = icmp ult i64 %.4, %167
  br i1 %168, label %169, label %200

169:                                              ; preds = %162
  %170 = icmp eq i32 %.1, 7
  br i1 %170, label %171, label %179

171:                                              ; preds = %169
  %172 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %172, align 1
  %173 = add i64 %.129, 1
  %174 = icmp eq i64 %173, %1
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = call ptr @__acrt_iob_func(i32 noundef 2)
  %177 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %176, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

178:                                              ; preds = %171
  br label %184

179:                                              ; preds = %169
  %180 = add nsw i32 %.1, 1
  %181 = sext i8 %.125 to i32
  %182 = shl i32 %181, 1
  %183 = trunc i32 %182 to i8
  br label %184

184:                                              ; preds = %179, %178
  %.230 = phi i64 [ %173, %178 ], [ %.129, %179 ]
  %.226 = phi i8 [ 0, %178 ], [ %183, %179 ]
  %.2 = phi i32 [ 0, %178 ], [ %180, %179 ]
  %185 = load i8, ptr %.134, align 1
  %186 = zext i8 %185 to i64
  %187 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %186
  %188 = load i32, ptr %187, align 4
  %189 = zext i32 %188 to i64
  %190 = and i64 %189, %.015
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %184
  %193 = sext i8 %.226 to i32
  %194 = or i32 %193, 1
  %195 = trunc i32 %194 to i8
  br label %196

196:                                              ; preds = %192, %184
  %.327 = phi i8 [ %195, %192 ], [ %.226, %184 ]
  %197 = lshr i64 %.015, 1
  br label %198

198:                                              ; preds = %196
  %199 = add i64 %.4, 1
  br label %162, !llvm.loop !15

200:                                              ; preds = %162
  %.129.lcssa = phi i64 [ %.129, %162 ]
  %.125.lcssa = phi i8 [ %.125, %162 ]
  %.1.lcssa = phi i32 [ %.1, %162 ]
  %201 = getelementptr inbounds nuw i8, ptr %.134, i32 1
  br label %202

202:                                              ; preds = %200
  %203 = add i64 %.16, 1
  br label %151, !llvm.loop !16

204:                                              ; preds = %151
  %.028.lcssa = phi i64 [ %.028, %151 ]
  %.024.lcssa = phi i8 [ %.024, %151 ]
  %.01.lcssa = phi i32 [ %.01, %151 ]
  %205 = sub nsw i32 7, %.01.lcssa
  %206 = sext i8 %.024.lcssa to i32
  %207 = shl i32 %206, %205
  %208 = trunc i32 %207 to i8
  %209 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %208, ptr %209, align 1
  %210 = add i64 %.028.lcssa, 1
  %211 = getelementptr inbounds [256 x i32], ptr %8, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %211, i8 0, i64 1024, i1 false)
  %212 = getelementptr inbounds [256 x i8], ptr %9, i64 0, i64 0
  br label %213

213:                                              ; preds = %254, %204
  %.27 = phi i64 [ 0, %204 ], [ %255, %254 ]
  %.0 = phi ptr [ %212, %204 ], [ %217, %254 ]
  %214 = icmp ult i64 %.27, 256
  br i1 %214, label %215, label %256

215:                                              ; preds = %213
  %216 = trunc i64 %.27 to i8
  store i8 %216, ptr %.0, align 1
  %217 = getelementptr inbounds nuw i8, ptr %.0, i32 1
  %218 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %219 = load i32, ptr %218, align 4
  %220 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %221 = load i8, ptr %220, align 1
  %222 = zext i8 %221 to i32
  %223 = or i32 %219, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %253

225:                                              ; preds = %215
  %226 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %227 = load i8, ptr %226, align 1
  %228 = zext i8 %227 to i32
  %229 = sub nsw i32 %228, 1
  %230 = shl i32 1, %229
  %231 = sext i32 %230 to i64
  br label %232

232:                                              ; preds = %249, %225
  %.019 = phi i32 [ 0, %225 ], [ %.120, %249 ]
  %.116 = phi i64 [ %231, %225 ], [ %248, %249 ]
  %.5 = phi i64 [ 0, %225 ], [ %250, %249 ]
  %233 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %234 = load i8, ptr %233, align 1
  %235 = zext i8 %234 to i64
  %236 = icmp ult i64 %.5, %235
  br i1 %236, label %237, label %251

237:                                              ; preds = %232
  %238 = mul i32 %.019, 2
  %239 = add i32 %238, 1
  %240 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %241 = load i32, ptr %240, align 4
  %242 = zext i32 %241 to i64
  %243 = and i64 %242, %.116
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %237
  %246 = add i32 %239, 1
  br label %247

247:                                              ; preds = %245, %237
  %.120 = phi i32 [ %246, %245 ], [ %239, %237 ]
  %248 = lshr i64 %.116, 1
  br label %249

249:                                              ; preds = %247
  %250 = add i64 %.5, 1
  br label %232, !llvm.loop !17

251:                                              ; preds = %232
  %.019.lcssa = phi i32 [ %.019, %232 ]
  %252 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.27
  store i32 %.019.lcssa, ptr %252, align 4
  br label %253

253:                                              ; preds = %251, %215
  br label %254

254:                                              ; preds = %253
  %255 = add i64 %.27, 1
  br label %213, !llvm.loop !18

256:                                              ; preds = %213
  br label %257

257:                                              ; preds = %286, %256
  %.6 = phi i64 [ 1, %256 ], [ %287, %286 ]
  %258 = icmp ult i64 %.6, 256
  br i1 %258, label %259, label %288

259:                                              ; preds = %257
  %260 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %261 = load i32, ptr %260, align 4
  %262 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %263 = load i8, ptr %262, align 1
  br label %264

264:                                              ; preds = %273, %259
  %.38 = phi i64 [ %.6, %259 ], [ %282, %273 ]
  %265 = icmp ne i64 %.38, 0
  br i1 %265, label %266, label %271

266:                                              ; preds = %264
  %267 = sub i64 %.38, 1
  %268 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %267
  %269 = load i32, ptr %268, align 4
  %270 = icmp ugt i32 %269, %261
  br label %271

271:                                              ; preds = %266, %264
  %272 = phi i1 [ false, %264 ], [ %270, %266 ]
  br i1 %272, label %273, label %283

273:                                              ; preds = %271
  %274 = sub i64 %.38, 1
  %275 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %274
  %276 = load i32, ptr %275, align 4
  %277 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %276, ptr %277, align 4
  %278 = sub i64 %.38, 1
  %279 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %278
  %280 = load i8, ptr %279, align 1
  %281 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %280, ptr %281, align 1
  %282 = add i64 %.38, -1
  br label %264, !llvm.loop !19

283:                                              ; preds = %271
  %.38.lcssa = phi i64 [ %.38, %271 ]
  %284 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %261, ptr %284, align 4
  %285 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %263, ptr %285, align 1
  br label %286

286:                                              ; preds = %283
  %287 = add i64 %.6, 1
  br label %257, !llvm.loop !20

288:                                              ; preds = %257
  br label %289

289:                                              ; preds = %294, %288
  %.49 = phi i64 [ 0, %288 ], [ %295, %294 ]
  %290 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %291 = load i32, ptr %290, align 4
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %296

293:                                              ; preds = %289
  br label %294

294:                                              ; preds = %293
  %295 = add i64 %.49, 1
  br label %289, !llvm.loop !21

296:                                              ; preds = %289
  %.49.lcssa = phi i64 [ %.49, %289 ]
  br label %297

297:                                              ; preds = %330, %296
  %.235 = phi ptr [ %0, %296 ], [ %.336, %330 ]
  %.031 = phi ptr [ %11, %296 ], [ %.132, %330 ]
  %.221 = phi i32 [ 0, %296 ], [ %.423, %330 ]
  %.217 = phi i64 [ 128, %296 ], [ %.318, %330 ]
  %.313 = phi i64 [ 0, %296 ], [ %.414, %330 ]
  %.7 = phi i64 [ %.49.lcssa, %296 ], [ %.9, %330 ]
  %298 = icmp ult i64 %.313, %1
  br i1 %298, label %299, label %331

299:                                              ; preds = %297
  %300 = mul i32 %.221, 2
  %301 = add i32 %300, 1
  %302 = load i8, ptr %.031, align 1
  %303 = zext i8 %302 to i64
  %304 = and i64 %303, %.217
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %299
  %307 = add i32 %301, 1
  br label %308

308:                                              ; preds = %306, %299
  %.322 = phi i32 [ %307, %306 ], [ %301, %299 ]
  br label %309

309:                                              ; preds = %313, %308
  %.8 = phi i64 [ %.7, %308 ], [ %314, %313 ]
  %310 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %311 = load i32, ptr %310, align 4
  %312 = icmp ult i32 %311, %.322
  br i1 %312, label %313, label %315

313:                                              ; preds = %309
  %314 = add i64 %.8, 1
  br label %309, !llvm.loop !22

315:                                              ; preds = %309
  %.8.lcssa = phi i64 [ %.8, %309 ]
  %316 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8.lcssa
  %317 = load i32, ptr %316, align 4
  %318 = icmp eq i32 %.322, %317
  br i1 %318, label %319, label %324

319:                                              ; preds = %315
  %320 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %321 = load i8, ptr %320, align 1
  store i8 %321, ptr %.235, align 1
  %322 = getelementptr inbounds nuw i8, ptr %.235, i32 1
  %323 = add i64 %.313, 1
  br label %324

324:                                              ; preds = %319, %315
  %.336 = phi ptr [ %322, %319 ], [ %.235, %315 ]
  %.423 = phi i32 [ 0, %319 ], [ %.322, %315 ]
  %.414 = phi i64 [ %323, %319 ], [ %.313, %315 ]
  %.9 = phi i64 [ %.49.lcssa, %319 ], [ %.8.lcssa, %315 ]
  %325 = icmp ugt i64 %.217, 1
  br i1 %325, label %326, label %328

326:                                              ; preds = %324
  %327 = lshr i64 %.217, 1
  br label %330

328:                                              ; preds = %324
  %329 = getelementptr inbounds nuw i8, ptr %.031, i32 1
  br label %330

330:                                              ; preds = %328, %326
  %.132 = phi ptr [ %.031, %326 ], [ %329, %328 ]
  %.318 = phi i64 [ %327, %326 ], [ 128, %328 ]
  br label %297, !llvm.loop !23

331:                                              ; preds = %297
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
  %.01.lcssa2 = phi i32 [ %.01, %31 ]
  br label %51

43:                                               ; preds = %31
  %44 = sub nsw i32 %.0, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, ptr %1, i64 %45
  %47 = load i64, ptr %46, align 8
  %48 = sub nsw i32 %.01, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, ptr %1, i64 %49
  store i64 %47, ptr %50, align 8
  br label %10, !llvm.loop !24

.loopexit:                                        ; preds = %10
  %.01.lcssa = phi i32 [ %.01, %10 ]
  br label %51

51:                                               ; preds = %.loopexit, %42
  %.013 = phi i32 [ %.01.lcssa, %.loopexit ], [ %.01.lcssa2, %42 ]
  %52 = sext i32 %9 to i64
  %53 = sub nsw i32 %.013, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, ptr %1, i64 %54
  store i64 %52, ptr %55, align 8
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
  br i1 %3, label %4, label %17

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %14, %4
  %.01 = phi i32 [ 1, %4 ], [ %15, %14 ]
  %6 = icmp slt i32 %.01, %0
  br i1 %6, label %7, label %.loopexit

7:                                                ; preds = %5
  %8 = getelementptr inbounds ptr, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8
  %10 = call i32 @strcmp(ptr noundef %9, ptr noundef @.str.4) #7
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  br label %16

13:                                               ; preds = %7
  br label %14

14:                                               ; preds = %13
  %15 = add nsw i32 %.01, 1
  br label %5, !llvm.loop !25

.loopexit:                                        ; preds = %5
  br label %16

16:                                               ; preds = %.loopexit, %12
  %.1 = phi i8 [ 1, %12 ], [ 0, %.loopexit ]
  br label %17

17:                                               ; preds = %16, %2
  %.0 = phi i8 [ %.1, %16 ], [ 0, %2 ]
  %18 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %19

19:                                               ; preds = %22, %17
  %.12 = phi i32 [ 0, %17 ], [ %23, %22 ]
  %20 = icmp slt i32 %.12, 30
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  call void @compdecomp(ptr noundef %18, i64 noundef 10000000)
  br label %22

22:                                               ; preds = %21
  %23 = add nsw i32 %.12, 1
  br label %19, !llvm.loop !26

24:                                               ; preds = %19
  call void @free(ptr noundef %18)
  %25 = icmp ne i8 %.0, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = call ptr @__acrt_iob_func(i32 noundef 1)
  %28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef @.str.5, double noundef 0.000000e+00) #7
  br label %32

29:                                               ; preds = %24
  %30 = call ptr @__acrt_iob_func(i32 noundef 1)
  %31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef @.str.6, double noundef 0.000000e+00) #7
  br label %32

32:                                               ; preds = %29, %26
  %33 = call ptr @__acrt_iob_func(i32 noundef 1)
  %34 = call i32 @fflush(ptr noundef %33)
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
