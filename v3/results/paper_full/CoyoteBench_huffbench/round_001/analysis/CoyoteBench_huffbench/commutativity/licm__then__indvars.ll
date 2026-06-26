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

3:                                                ; preds = %9, %1
  %indvars.iv = phi i64 [ %indvars.iv.next, %9 ], [ 0, %1 ]
  %.01 = phi ptr [ %2, %1 ], [ %8, %9 ]
  %exitcond = icmp ne i64 %indvars.iv, %0
  br i1 %exitcond, label %4, label %10

4:                                                ; preds = %3
  %5 = call i64 @random4()
  %6 = getelementptr inbounds nuw i8, ptr @.str, i64 %5
  %7 = load i8, ptr %6, align 1
  store i8 %7, ptr %.01, align 1
  %8 = getelementptr inbounds nuw i8, ptr %.01, i32 1
  br label %9

9:                                                ; preds = %4
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  br label %3, !llvm.loop !7

10:                                               ; preds = %3
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

19:                                               ; preds = %27, %2
  %.033 = phi ptr [ %0, %2 ], [ %26, %27 ]
  %.02 = phi i64 [ 0, %2 ], [ %28, %27 ]
  %exitcond = icmp ne i64 %.02, %1
  br i1 %exitcond, label %20, label %29

20:                                               ; preds = %19
  %21 = load i8, ptr %.033, align 1
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %22
  %24 = load i64, ptr %23, align 8
  %25 = add i64 %24, 1
  store i64 %25, ptr %23, align 8
  %26 = getelementptr inbounds nuw i8, ptr %.033, i32 1
  br label %27

27:                                               ; preds = %20
  %28 = add i64 %.02, 1
  br label %19, !llvm.loop !9

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %39, %29
  %.010 = phi i64 [ 0, %29 ], [ %.111, %39 ]
  %.13 = phi i64 [ 0, %29 ], [ %40, %39 ]
  %exitcond7 = icmp ne i64 %.13, 256
  br i1 %exitcond7, label %31, label %41

31:                                               ; preds = %30
  %32 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.13
  %33 = load i64, ptr %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.010
  store i64 %.13, ptr %36, align 8
  %37 = add i64 %.010, 1
  br label %38

38:                                               ; preds = %35, %31
  %.111 = phi i64 [ %37, %35 ], [ %.010, %31 ]
  br label %39

39:                                               ; preds = %38
  %40 = add nuw nsw i64 %.13, 1
  br label %30, !llvm.loop !10

41:                                               ; preds = %30
  %.010.lcssa = phi i64 [ %.010, %30 ]
  %42 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %43 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %44 = trunc i64 %.010.lcssa to i32
  br label %45

45:                                               ; preds = %49, %41
  %.24 = phi i64 [ %.010.lcssa, %41 ], [ %50, %49 ]
  %46 = icmp ugt i64 %.24, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %45
  %48 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef %42, ptr noundef %43, i32 noundef %44, i32 noundef %48)
  br label %49

49:                                               ; preds = %47
  %50 = add i64 %.24, -1
  br label %45, !llvm.loop !11

51:                                               ; preds = %45
  %52 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %53 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %54 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %55 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %56 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %57 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %58 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %59 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %60 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  br label %61

61:                                               ; preds = %63, %51
  %.212 = phi i64 [ %.010.lcssa, %51 ], [ %64, %63 ]
  %62 = icmp ugt i64 %.212, 1
  br i1 %62, label %63, label %86

63:                                               ; preds = %61
  %64 = add i64 %.212, -1
  %65 = load i64, ptr %52, align 16
  %66 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %64
  %67 = load i64, ptr %66, align 8
  store i64 %67, ptr %53, align 16
  %68 = trunc i64 %64 to i32
  call void @heap_adjust(ptr noundef %54, ptr noundef %55, i32 noundef %68, i32 noundef 1)
  %69 = load i64, ptr %56, align 16
  %70 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %69
  %71 = load i64, ptr %70, align 8
  %72 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %65
  %73 = load i64, ptr %72, align 8
  %74 = add i64 %71, %73
  %75 = add i64 256, %64
  %76 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %75
  store i64 %74, ptr %76, align 8
  %77 = add i64 256, %64
  %78 = trunc i64 %77 to i32
  %79 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %65
  store i32 %78, ptr %79, align 4
  %80 = sub i64 -256, %64
  %81 = trunc i64 %80 to i32
  %82 = load i64, ptr %57, align 16
  %83 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %82
  store i32 %81, ptr %83, align 4
  %84 = add i64 256, %64
  store i64 %84, ptr %58, align 16
  %85 = trunc i64 %64 to i32
  call void @heap_adjust(ptr noundef %59, ptr noundef %60, i32 noundef %85, i32 noundef 1)
  br label %61, !llvm.loop !12

86:                                               ; preds = %61
  %.212.lcssa = phi i64 [ %.212, %61 ]
  %87 = add i64 256, %.212.lcssa
  %88 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %87
  store i32 0, ptr %88, align 4
  br label %89

89:                                               ; preds = %125, %86
  %.045 = phi i64 [ 0, %86 ], [ %.146, %125 ]
  %.042 = phi i64 [ 0, %86 ], [ %126, %125 ]
  %.039 = phi i64 [ 0, %86 ], [ %.140, %125 ]
  %exitcond8 = icmp ne i64 %.042, 256
  br i1 %exitcond8, label %90, label %127

90:                                               ; preds = %89
  %91 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.042
  %92 = load i64, ptr %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 0, ptr %95, align 4
  %96 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 0, ptr %96, align 1
  br label %124

97:                                               ; preds = %90
  %98 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.042
  %99 = load i32, ptr %98, align 4
  br label %100

100:                                              ; preds = %107, %97
  %.043 = phi i64 [ 0, %97 ], [ %.144, %107 ]
  %.037 = phi i32 [ %99, %97 ], [ %110, %107 ]
  %.05 = phi i64 [ 1, %97 ], [ %111, %107 ]
  %.3 = phi i64 [ 0, %97 ], [ %112, %107 ]
  %101 = icmp ne i32 %.037, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %100
  %103 = icmp slt i32 %.037, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %102
  %105 = add i64 %.043, %.05
  %106 = sub nsw i32 0, %.037
  br label %107

107:                                              ; preds = %104, %102
  %.144 = phi i64 [ %105, %104 ], [ %.043, %102 ]
  %.138 = phi i32 [ %106, %104 ], [ %.037, %102 ]
  %108 = sext i32 %.138 to i64
  %109 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %108
  %110 = load i32, ptr %109, align 4
  %111 = shl i64 %.05, 1
  %112 = add i64 %.3, 1
  br label %100, !llvm.loop !13

113:                                              ; preds = %100
  %.043.lcssa = phi i64 [ %.043, %100 ]
  %.3.lcssa = phi i64 [ %.3, %100 ]
  %114 = trunc i64 %.043.lcssa to i32
  %115 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 %114, ptr %115, align 4
  %116 = trunc i64 %.3.lcssa to i8
  %117 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 %116, ptr %117, align 1
  %118 = icmp ugt i64 %.043.lcssa, %.045
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %120

120:                                              ; preds = %119, %113
  %.247 = phi i64 [ %.043.lcssa, %119 ], [ %.045, %113 ]
  %121 = icmp ugt i64 %.3.lcssa, %.039
  br i1 %121, label %122, label %123

122:                                              ; preds = %120
  br label %123

123:                                              ; preds = %122, %120
  %.241 = phi i64 [ %.3.lcssa, %122 ], [ %.039, %120 ]
  br label %124

124:                                              ; preds = %123, %94
  %.146 = phi i64 [ %.247, %123 ], [ %.045, %94 ]
  %.140 = phi i64 [ %.241, %123 ], [ %.039, %94 ]
  br label %125

125:                                              ; preds = %124
  %126 = add nuw nsw i64 %.042, 1
  br label %89, !llvm.loop !14

127:                                              ; preds = %89
  %.045.lcssa = phi i64 [ %.045, %89 ]
  %.039.lcssa = phi i64 [ %.039, %89 ]
  %128 = icmp ugt i64 %.039.lcssa, 32
  br i1 %128, label %129, label %132

129:                                              ; preds = %127
  %130 = call ptr @__acrt_iob_func(i32 noundef 2)
  %131 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

132:                                              ; preds = %127
  %133 = icmp eq i64 %.045.lcssa, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %132
  %135 = call ptr @__acrt_iob_func(i32 noundef 2)
  %136 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %135, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

137:                                              ; preds = %132
  br label %138

138:                                              ; preds = %188, %137
  %.134 = phi ptr [ %0, %137 ], [ %187, %188 ]
  %.028 = phi i64 [ 0, %137 ], [ %.129.lcssa, %188 ]
  %.024 = phi i8 [ 0, %137 ], [ %.125.lcssa, %188 ]
  %.16 = phi i64 [ 0, %137 ], [ %189, %188 ]
  %.01 = phi i32 [ -1, %137 ], [ %.1.lcssa, %188 ]
  %exitcond9 = icmp ne i64 %.16, %1
  br i1 %exitcond9, label %139, label %190

139:                                              ; preds = %138
  %140 = load i8, ptr %.134, align 1
  %141 = zext i8 %140 to i64
  %142 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %141
  %143 = load i8, ptr %142, align 1
  %144 = zext i8 %143 to i32
  %145 = sub nsw i32 %144, 1
  %146 = shl i32 1, %145
  %147 = sext i32 %146 to i64
  br label %148

148:                                              ; preds = %184, %139
  %.129 = phi i64 [ %.028, %139 ], [ %.230, %184 ]
  %.125 = phi i8 [ %.024, %139 ], [ %.327, %184 ]
  %.015 = phi i64 [ %147, %139 ], [ %183, %184 ]
  %.4 = phi i64 [ 0, %139 ], [ %185, %184 ]
  %.1 = phi i32 [ %.01, %139 ], [ %.2, %184 ]
  %149 = load i8, ptr %.134, align 1
  %150 = zext i8 %149 to i64
  %151 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %150
  %152 = load i8, ptr %151, align 1
  %153 = zext i8 %152 to i64
  %154 = icmp samesign ult i64 %.4, %153
  br i1 %154, label %155, label %186

155:                                              ; preds = %148
  %156 = icmp eq i32 %.1, 7
  br i1 %156, label %157, label %165

157:                                              ; preds = %155
  %158 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %158, align 1
  %159 = add i64 %.129, 1
  %160 = icmp eq i64 %159, %1
  br i1 %160, label %161, label %164

161:                                              ; preds = %157
  %162 = call ptr @__acrt_iob_func(i32 noundef 2)
  %163 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %162, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

164:                                              ; preds = %157
  br label %170

165:                                              ; preds = %155
  %166 = add nsw i32 %.1, 1
  %167 = sext i8 %.125 to i32
  %168 = shl i32 %167, 1
  %169 = trunc i32 %168 to i8
  br label %170

170:                                              ; preds = %165, %164
  %.230 = phi i64 [ %159, %164 ], [ %.129, %165 ]
  %.226 = phi i8 [ 0, %164 ], [ %169, %165 ]
  %.2 = phi i32 [ 0, %164 ], [ %166, %165 ]
  %171 = load i8, ptr %.134, align 1
  %172 = zext i8 %171 to i64
  %173 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %172
  %174 = load i32, ptr %173, align 4
  %175 = zext i32 %174 to i64
  %176 = and i64 %175, %.015
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %170
  %179 = sext i8 %.226 to i32
  %180 = or i32 %179, 1
  %181 = trunc i32 %180 to i8
  br label %182

182:                                              ; preds = %178, %170
  %.327 = phi i8 [ %181, %178 ], [ %.226, %170 ]
  %183 = lshr i64 %.015, 1
  br label %184

184:                                              ; preds = %182
  %185 = add nuw nsw i64 %.4, 1
  br label %148, !llvm.loop !15

186:                                              ; preds = %148
  %.129.lcssa = phi i64 [ %.129, %148 ]
  %.125.lcssa = phi i8 [ %.125, %148 ]
  %.1.lcssa = phi i32 [ %.1, %148 ]
  %187 = getelementptr inbounds nuw i8, ptr %.134, i32 1
  br label %188

188:                                              ; preds = %186
  %189 = add i64 %.16, 1
  br label %138, !llvm.loop !16

190:                                              ; preds = %138
  %.028.lcssa = phi i64 [ %.028, %138 ]
  %.024.lcssa = phi i8 [ %.024, %138 ]
  %.01.lcssa = phi i32 [ %.01, %138 ]
  %191 = sub nsw i32 7, %.01.lcssa
  %192 = sext i8 %.024.lcssa to i32
  %193 = shl i32 %192, %191
  %194 = trunc i32 %193 to i8
  %195 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %194, ptr %195, align 1
  %196 = getelementptr inbounds [256 x i32], ptr %8, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %196, i8 0, i64 1024, i1 false)
  %197 = getelementptr inbounds [256 x i8], ptr %9, i64 0, i64 0
  br label %198

198:                                              ; preds = %237, %190
  %.27 = phi i64 [ 0, %190 ], [ %238, %237 ]
  %.0 = phi ptr [ %197, %190 ], [ %201, %237 ]
  %exitcond11 = icmp ne i64 %.27, 256
  br i1 %exitcond11, label %199, label %239

199:                                              ; preds = %198
  %200 = trunc i64 %.27 to i8
  store i8 %200, ptr %.0, align 1
  %201 = getelementptr inbounds nuw i8, ptr %.0, i32 1
  %202 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %203 = load i32, ptr %202, align 4
  %204 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %205 = load i8, ptr %204, align 1
  %206 = zext i8 %205 to i32
  %207 = or i32 %203, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %236

209:                                              ; preds = %199
  %210 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %211 = load i8, ptr %210, align 1
  %212 = zext i8 %211 to i32
  %213 = sub nsw i32 %212, 1
  %214 = shl i32 1, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %217 = load i8, ptr %216, align 1
  %218 = zext i8 %217 to i64
  %219 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  br label %220

220:                                              ; preds = %232, %209
  %.019 = phi i32 [ 0, %209 ], [ %.120, %232 ]
  %.116 = phi i64 [ %215, %209 ], [ %231, %232 ]
  %.5 = phi i64 [ 0, %209 ], [ %233, %232 ]
  %exitcond10 = icmp ne i64 %.5, %218
  br i1 %exitcond10, label %221, label %234

221:                                              ; preds = %220
  %222 = mul i32 %.019, 2
  %223 = add i32 %222, 1
  %224 = load i32, ptr %219, align 4
  %225 = zext i32 %224 to i64
  %226 = and i64 %225, %.116
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %221
  %229 = add i32 %223, 1
  br label %230

230:                                              ; preds = %228, %221
  %.120 = phi i32 [ %229, %228 ], [ %223, %221 ]
  %231 = lshr i64 %.116, 1
  br label %232

232:                                              ; preds = %230
  %233 = add nuw nsw i64 %.5, 1
  br label %220, !llvm.loop !17

234:                                              ; preds = %220
  %.019.lcssa = phi i32 [ %.019, %220 ]
  %235 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.27
  store i32 %.019.lcssa, ptr %235, align 4
  br label %236

236:                                              ; preds = %234, %199
  br label %237

237:                                              ; preds = %236
  %238 = add nuw nsw i64 %.27, 1
  br label %198, !llvm.loop !18

239:                                              ; preds = %198
  br label %240

240:                                              ; preds = %268, %239
  %.6 = phi i64 [ 1, %239 ], [ %269, %268 ]
  %exitcond12 = icmp ne i64 %.6, 256
  br i1 %exitcond12, label %241, label %270

241:                                              ; preds = %240
  %242 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %243 = load i32, ptr %242, align 4
  %244 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %245 = load i8, ptr %244, align 1
  br label %246

246:                                              ; preds = %255, %241
  %.38 = phi i64 [ %.6, %241 ], [ %264, %255 ]
  %247 = icmp ne i64 %.38, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %246
  %249 = sub nuw i64 %.38, 1
  %250 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %249
  %251 = load i32, ptr %250, align 4
  %252 = icmp ugt i32 %251, %243
  br label %253

253:                                              ; preds = %248, %246
  %254 = phi i1 [ false, %246 ], [ %252, %248 ]
  br i1 %254, label %255, label %265

255:                                              ; preds = %253
  %256 = sub i64 %.38, 1
  %257 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %256
  %258 = load i32, ptr %257, align 4
  %259 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %258, ptr %259, align 4
  %260 = sub i64 %.38, 1
  %261 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %260
  %262 = load i8, ptr %261, align 1
  %263 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %262, ptr %263, align 1
  %264 = add i64 %.38, -1
  br label %246, !llvm.loop !19

265:                                              ; preds = %253
  %.38.lcssa = phi i64 [ %.38, %253 ]
  %266 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %243, ptr %266, align 4
  %267 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %245, ptr %267, align 1
  br label %268

268:                                              ; preds = %265
  %269 = add nuw nsw i64 %.6, 1
  br label %240, !llvm.loop !20

270:                                              ; preds = %240
  br label %271

271:                                              ; preds = %276, %270
  %.49 = phi i64 [ 0, %270 ], [ %277, %276 ]
  %272 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %273 = load i32, ptr %272, align 4
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %271
  br label %276

276:                                              ; preds = %275
  %277 = add i64 %.49, 1
  br label %271, !llvm.loop !21

278:                                              ; preds = %271
  %.49.lcssa = phi i64 [ %.49, %271 ]
  br label %279

279:                                              ; preds = %312, %278
  %.235 = phi ptr [ %0, %278 ], [ %.336, %312 ]
  %.031 = phi ptr [ %11, %278 ], [ %.132, %312 ]
  %.221 = phi i32 [ 0, %278 ], [ %.423, %312 ]
  %.217 = phi i64 [ 128, %278 ], [ %.318, %312 ]
  %.313 = phi i64 [ 0, %278 ], [ %.414, %312 ]
  %.7 = phi i64 [ %.49.lcssa, %278 ], [ %.9, %312 ]
  %280 = icmp ult i64 %.313, %1
  br i1 %280, label %281, label %313

281:                                              ; preds = %279
  %282 = mul i32 %.221, 2
  %283 = add i32 %282, 1
  %284 = load i8, ptr %.031, align 1
  %285 = zext i8 %284 to i64
  %286 = and i64 %285, %.217
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %281
  %289 = add i32 %283, 1
  br label %290

290:                                              ; preds = %288, %281
  %.322 = phi i32 [ %289, %288 ], [ %283, %281 ]
  br label %291

291:                                              ; preds = %295, %290
  %.8 = phi i64 [ %.7, %290 ], [ %296, %295 ]
  %292 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %293 = load i32, ptr %292, align 4
  %294 = icmp ult i32 %293, %.322
  br i1 %294, label %295, label %297

295:                                              ; preds = %291
  %296 = add i64 %.8, 1
  br label %291, !llvm.loop !22

297:                                              ; preds = %291
  %.8.lcssa = phi i64 [ %.8, %291 ]
  %298 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8.lcssa
  %299 = load i32, ptr %298, align 4
  %300 = icmp eq i32 %.322, %299
  br i1 %300, label %301, label %306

301:                                              ; preds = %297
  %302 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %303 = load i8, ptr %302, align 1
  store i8 %303, ptr %.235, align 1
  %304 = getelementptr inbounds nuw i8, ptr %.235, i32 1
  %305 = add i64 %.313, 1
  br label %306

306:                                              ; preds = %301, %297
  %.336 = phi ptr [ %304, %301 ], [ %.235, %297 ]
  %.423 = phi i32 [ 0, %301 ], [ %.322, %297 ]
  %.414 = phi i64 [ %305, %301 ], [ %.313, %297 ]
  %.9 = phi i64 [ %.49.lcssa, %301 ], [ %.8.lcssa, %297 ]
  %307 = icmp ugt i64 %.217, 1
  br i1 %307, label %308, label %310

308:                                              ; preds = %306
  %309 = lshr i64 %.217, 1
  br label %312

310:                                              ; preds = %306
  %311 = getelementptr inbounds nuw i8, ptr %.031, i32 1
  br label %312

312:                                              ; preds = %310, %308
  %.132 = phi ptr [ %.031, %308 ], [ %311, %310 ]
  %.318 = phi i64 [ %309, %308 ], [ 128, %310 ]
  br label %279, !llvm.loop !23

313:                                              ; preds = %279
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

13:                                               ; preds = %43, %4
  %.01 = phi i32 [ %3, %4 ], [ %.0, %43 ]
  %14 = icmp sle i32 %.01, %10
  br i1 %14, label %15, label %.loopexit

15:                                               ; preds = %13
  %16 = add nsw i32 %.01, %.01
  %17 = icmp slt i32 %16, %2
  br i1 %17, label %18, label %33

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
  br i1 %30, label %31, label %33

31:                                               ; preds = %18
  %32 = add nsw i32 %16, 1
  br label %33

33:                                               ; preds = %31, %18, %15
  %.0 = phi i32 [ %32, %31 ], [ %16, %18 ], [ %16, %15 ]
  %34 = load i64, ptr %12, align 8
  %35 = sub nsw i32 %.0, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, ptr %1, i64 %36
  %38 = load i64, ptr %37, align 8
  %39 = getelementptr inbounds nuw i64, ptr %0, i64 %38
  %40 = load i64, ptr %39, align 8
  %41 = icmp ult i64 %34, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  %.01.lcssa1 = phi i32 [ %.01, %33 ]
  br label %51

43:                                               ; preds = %33
  %44 = sub nsw i32 %.0, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, ptr %1, i64 %45
  %47 = load i64, ptr %46, align 8
  %48 = sub nsw i32 %.01, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, ptr %1, i64 %49
  store i64 %47, ptr %50, align 8
  br label %13, !llvm.loop !24

.loopexit:                                        ; preds = %13
  %.01.lcssa = phi i32 [ %.01, %13 ]
  br label %51

51:                                               ; preds = %.loopexit, %42
  %.012 = phi i32 [ %.01.lcssa, %.loopexit ], [ %.01.lcssa1, %42 ]
  %52 = sext i32 %9 to i64
  %53 = sub nsw i32 %.012, 1
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
  br i1 %3, label %4, label %16

4:                                                ; preds = %2
  %5 = getelementptr inbounds ptr, ptr %1, i64 1
  br label %6

6:                                                ; preds = %13, %4
  %.01 = phi i32 [ 1, %4 ], [ %14, %13 ]
  %exitcond = icmp ne i32 %.01, %0
  br i1 %exitcond, label %7, label %.loopexit

7:                                                ; preds = %6
  %8 = load ptr, ptr %5, align 8
  %9 = call i32 @strcmp(ptr noundef %8, ptr noundef @.str.4) #7
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  br label %15

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %12
  %14 = add nuw i32 %.01, 1
  br label %6, !llvm.loop !25

.loopexit:                                        ; preds = %6
  br label %15

15:                                               ; preds = %.loopexit, %11
  %.1 = phi i8 [ 1, %11 ], [ 0, %.loopexit ]
  br label %16

16:                                               ; preds = %15, %2
  %.0 = phi i8 [ %.1, %15 ], [ 0, %2 ]
  %17 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %18

18:                                               ; preds = %20, %16
  %.12 = phi i32 [ 0, %16 ], [ %21, %20 ]
  %exitcond1 = icmp ne i32 %.12, 30
  br i1 %exitcond1, label %19, label %22

19:                                               ; preds = %18
  call void @compdecomp(ptr noundef %17, i64 noundef 10000000)
  br label %20

20:                                               ; preds = %19
  %21 = add nuw nsw i32 %.12, 1
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
