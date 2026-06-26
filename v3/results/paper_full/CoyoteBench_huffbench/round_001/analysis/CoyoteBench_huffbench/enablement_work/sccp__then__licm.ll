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
  %13 = mul nuw nsw i64 1, %12
  call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %13, i1 false)
  %14 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %14, i8 0, i64 4096, i1 false)
  %15 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %15, i8 0, i64 2048, i1 false)
  %16 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %16, i8 0, i64 2048, i1 false)
  %17 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %17, i8 0, i64 1024, i1 false)
  %18 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 0
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

31:                                               ; preds = %41, %30
  %.010 = phi i64 [ 0, %30 ], [ %.111, %41 ]
  %.13 = phi i64 [ 0, %30 ], [ %42, %41 ]
  %32 = icmp ult i64 %.13, 256
  br i1 %32, label %33, label %43

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
  br label %31, !llvm.loop !10

43:                                               ; preds = %31
  %.010.lcssa = phi i64 [ %.010, %31 ]
  %44 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 0
  %45 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 0
  %46 = trunc i64 %.010.lcssa to i32
  br label %47

47:                                               ; preds = %51, %43
  %.24 = phi i64 [ %.010.lcssa, %43 ], [ %52, %51 ]
  %48 = icmp ugt i64 %.24, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %47
  %50 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef %44, ptr noundef %45, i32 noundef %46, i32 noundef %50)
  br label %51

51:                                               ; preds = %49
  %52 = add i64 %.24, -1
  br label %47, !llvm.loop !11

53:                                               ; preds = %47
  %54 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 0
  %55 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 0
  %56 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 0
  %57 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 0
  %58 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 0
  %59 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 0
  %60 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 0
  %61 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 0
  %62 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 0
  br label %63

63:                                               ; preds = %65, %53
  %.212 = phi i64 [ %.010.lcssa, %53 ], [ %66, %65 ]
  %64 = icmp ugt i64 %.212, 1
  br i1 %64, label %65, label %88

65:                                               ; preds = %63
  %66 = add i64 %.212, -1
  %67 = load i64, ptr %54, align 16
  %68 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %66
  %69 = load i64, ptr %68, align 8
  store i64 %69, ptr %55, align 16
  %70 = trunc i64 %66 to i32
  call void @heap_adjust(ptr noundef %56, ptr noundef %57, i32 noundef %70, i32 noundef 1)
  %71 = load i64, ptr %58, align 16
  %72 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %71
  %73 = load i64, ptr %72, align 8
  %74 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %67
  %75 = load i64, ptr %74, align 8
  %76 = add i64 %73, %75
  %77 = add i64 256, %66
  %78 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %77
  store i64 %76, ptr %78, align 8
  %79 = add i64 256, %66
  %80 = trunc i64 %79 to i32
  %81 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %67
  store i32 %80, ptr %81, align 4
  %82 = sub i64 -256, %66
  %83 = trunc i64 %82 to i32
  %84 = load i64, ptr %59, align 16
  %85 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %84
  store i32 %83, ptr %85, align 4
  %86 = add i64 256, %66
  store i64 %86, ptr %60, align 16
  %87 = trunc i64 %66 to i32
  call void @heap_adjust(ptr noundef %61, ptr noundef %62, i32 noundef %87, i32 noundef 1)
  br label %63, !llvm.loop !12

88:                                               ; preds = %63
  %.212.lcssa = phi i64 [ %.212, %63 ]
  %89 = add nuw nsw i64 256, %.212.lcssa
  %90 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %89
  store i32 0, ptr %90, align 4
  br label %91

91:                                               ; preds = %128, %88
  %.045 = phi i64 [ 0, %88 ], [ %.146, %128 ]
  %.042 = phi i64 [ 0, %88 ], [ %129, %128 ]
  %.039 = phi i64 [ 0, %88 ], [ %.140, %128 ]
  %92 = icmp ult i64 %.042, 256
  br i1 %92, label %93, label %130

93:                                               ; preds = %91
  %94 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.042
  %95 = load i64, ptr %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 0, ptr %98, align 4
  %99 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 0, ptr %99, align 1
  br label %127

100:                                              ; preds = %93
  %101 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.042
  %102 = load i32, ptr %101, align 4
  br label %103

103:                                              ; preds = %110, %100
  %.043 = phi i64 [ 0, %100 ], [ %.144, %110 ]
  %.037 = phi i32 [ %102, %100 ], [ %113, %110 ]
  %.05 = phi i64 [ 1, %100 ], [ %114, %110 ]
  %.3 = phi i64 [ 0, %100 ], [ %115, %110 ]
  %104 = icmp ne i32 %.037, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %103
  %106 = icmp slt i32 %.037, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %105
  %108 = add i64 %.043, %.05
  %109 = sub nsw i32 0, %.037
  br label %110

110:                                              ; preds = %107, %105
  %.144 = phi i64 [ %108, %107 ], [ %.043, %105 ]
  %.138 = phi i32 [ %109, %107 ], [ %.037, %105 ]
  %111 = zext nneg i32 %.138 to i64
  %112 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %111
  %113 = load i32, ptr %112, align 4
  %114 = shl i64 %.05, 1
  %115 = add i64 %.3, 1
  br label %103, !llvm.loop !13

116:                                              ; preds = %103
  %.043.lcssa = phi i64 [ %.043, %103 ]
  %.3.lcssa = phi i64 [ %.3, %103 ]
  %117 = trunc i64 %.043.lcssa to i32
  %118 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 %117, ptr %118, align 4
  %119 = trunc i64 %.3.lcssa to i8
  %120 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 %119, ptr %120, align 1
  %121 = icmp ugt i64 %.043.lcssa, %.045
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %123

123:                                              ; preds = %122, %116
  %.247 = phi i64 [ %.043.lcssa, %122 ], [ %.045, %116 ]
  %124 = icmp ugt i64 %.3.lcssa, %.039
  br i1 %124, label %125, label %126

125:                                              ; preds = %123
  br label %126

126:                                              ; preds = %125, %123
  %.241 = phi i64 [ %.3.lcssa, %125 ], [ %.039, %123 ]
  br label %127

127:                                              ; preds = %126, %97
  %.146 = phi i64 [ %.247, %126 ], [ %.045, %97 ]
  %.140 = phi i64 [ %.241, %126 ], [ %.039, %97 ]
  br label %128

128:                                              ; preds = %127
  %129 = add nuw nsw i64 %.042, 1
  br label %91, !llvm.loop !14

130:                                              ; preds = %91
  %.045.lcssa = phi i64 [ %.045, %91 ]
  %.039.lcssa = phi i64 [ %.039, %91 ]
  %131 = icmp ugt i64 %.039.lcssa, 32
  br i1 %131, label %132, label %135

132:                                              ; preds = %130
  %133 = call ptr @__acrt_iob_func(i32 noundef 2)
  %134 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %133, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

135:                                              ; preds = %130
  %136 = icmp eq i64 %.045.lcssa, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %135
  %138 = call ptr @__acrt_iob_func(i32 noundef 2)
  %139 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %138, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

140:                                              ; preds = %135
  br label %141

141:                                              ; preds = %192, %140
  %.134 = phi ptr [ %0, %140 ], [ %191, %192 ]
  %.028 = phi i64 [ 0, %140 ], [ %.129.lcssa, %192 ]
  %.024 = phi i8 [ 0, %140 ], [ %.125.lcssa, %192 ]
  %.16 = phi i64 [ 0, %140 ], [ %193, %192 ]
  %.01 = phi i32 [ -1, %140 ], [ %.1.lcssa, %192 ]
  %142 = icmp ult i64 %.16, %1
  br i1 %142, label %143, label %194

143:                                              ; preds = %141
  %144 = load i8, ptr %.134, align 1
  %145 = zext i8 %144 to i64
  %146 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %145
  %147 = load i8, ptr %146, align 1
  %148 = zext i8 %147 to i32
  %149 = sub nsw i32 %148, 1
  %150 = shl nuw i32 1, %149
  %151 = sext i32 %150 to i64
  br label %152

152:                                              ; preds = %188, %143
  %.129 = phi i64 [ %.028, %143 ], [ %.230, %188 ]
  %.125 = phi i8 [ %.024, %143 ], [ %.327, %188 ]
  %.015 = phi i64 [ %151, %143 ], [ %187, %188 ]
  %.4 = phi i64 [ 0, %143 ], [ %189, %188 ]
  %.1 = phi i32 [ %.01, %143 ], [ %.2, %188 ]
  %153 = load i8, ptr %.134, align 1
  %154 = zext i8 %153 to i64
  %155 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %154
  %156 = load i8, ptr %155, align 1
  %157 = zext i8 %156 to i64
  %158 = icmp ult i64 %.4, %157
  br i1 %158, label %159, label %190

159:                                              ; preds = %152
  %160 = icmp eq i32 %.1, 7
  br i1 %160, label %161, label %169

161:                                              ; preds = %159
  %162 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %162, align 1
  %163 = add i64 %.129, 1
  %164 = icmp eq i64 %163, %1
  br i1 %164, label %165, label %168

165:                                              ; preds = %161
  %166 = call ptr @__acrt_iob_func(i32 noundef 2)
  %167 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %166, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

168:                                              ; preds = %161
  br label %174

169:                                              ; preds = %159
  %170 = add nsw i32 %.1, 1
  %171 = sext i8 %.125 to i32
  %172 = shl nsw i32 %171, 1
  %173 = trunc i32 %172 to i8
  br label %174

174:                                              ; preds = %169, %168
  %.230 = phi i64 [ %163, %168 ], [ %.129, %169 ]
  %.226 = phi i8 [ 0, %168 ], [ %173, %169 ]
  %.2 = phi i32 [ 0, %168 ], [ %170, %169 ]
  %175 = load i8, ptr %.134, align 1
  %176 = zext i8 %175 to i64
  %177 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %176
  %178 = load i32, ptr %177, align 4
  %179 = zext i32 %178 to i64
  %180 = and i64 %179, %.015
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %174
  %183 = sext i8 %.226 to i32
  %184 = or i32 %183, 1
  %185 = trunc i32 %184 to i8
  br label %186

186:                                              ; preds = %182, %174
  %.327 = phi i8 [ %185, %182 ], [ %.226, %174 ]
  %187 = lshr i64 %.015, 1
  br label %188

188:                                              ; preds = %186
  %189 = add nuw nsw i64 %.4, 1
  br label %152, !llvm.loop !15

190:                                              ; preds = %152
  %.129.lcssa = phi i64 [ %.129, %152 ]
  %.125.lcssa = phi i8 [ %.125, %152 ]
  %.1.lcssa = phi i32 [ %.1, %152 ]
  %191 = getelementptr inbounds nuw i8, ptr %.134, i32 1
  br label %192

192:                                              ; preds = %190
  %193 = add i64 %.16, 1
  br label %141, !llvm.loop !16

194:                                              ; preds = %141
  %.028.lcssa = phi i64 [ %.028, %141 ]
  %.024.lcssa = phi i8 [ %.024, %141 ]
  %.01.lcssa = phi i32 [ %.01, %141 ]
  %195 = sub nsw i32 7, %.01.lcssa
  %196 = sext i8 %.024.lcssa to i32
  %197 = shl i32 %196, %195
  %198 = trunc i32 %197 to i8
  %199 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %198, ptr %199, align 1
  %200 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %200, i8 0, i64 1024, i1 false)
  %201 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 0
  br label %202

202:                                              ; preds = %243, %194
  %.27 = phi i64 [ 0, %194 ], [ %244, %243 ]
  %.0 = phi ptr [ %201, %194 ], [ %206, %243 ]
  %203 = icmp ult i64 %.27, 256
  br i1 %203, label %204, label %245

204:                                              ; preds = %202
  %205 = trunc nuw i64 %.27 to i8
  store i8 %205, ptr %.0, align 1
  %206 = getelementptr inbounds nuw i8, ptr %.0, i32 1
  %207 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %208 = load i32, ptr %207, align 4
  %209 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %210 = load i8, ptr %209, align 1
  %211 = zext i8 %210 to i32
  %212 = or i32 %208, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %242

214:                                              ; preds = %204
  %215 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %216 = load i8, ptr %215, align 1
  %217 = zext i8 %216 to i32
  %218 = sub nsw i32 %217, 1
  %219 = shl nuw i32 1, %218
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %222 = load i8, ptr %221, align 1
  %223 = zext i8 %222 to i64
  %224 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  br label %225

225:                                              ; preds = %238, %214
  %.019 = phi i32 [ 0, %214 ], [ %.120, %238 ]
  %.116 = phi i64 [ %220, %214 ], [ %237, %238 ]
  %.5 = phi i64 [ 0, %214 ], [ %239, %238 ]
  %226 = icmp ult i64 %.5, %223
  br i1 %226, label %227, label %240

227:                                              ; preds = %225
  %228 = mul i32 %.019, 2
  %229 = add i32 %228, 1
  %230 = load i32, ptr %224, align 4
  %231 = zext i32 %230 to i64
  %232 = and i64 %231, %.116
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %227
  %235 = add i32 %229, 1
  br label %236

236:                                              ; preds = %234, %227
  %.120 = phi i32 [ %235, %234 ], [ %229, %227 ]
  %237 = lshr i64 %.116, 1
  br label %238

238:                                              ; preds = %236
  %239 = add nuw nsw i64 %.5, 1
  br label %225, !llvm.loop !17

240:                                              ; preds = %225
  %.019.lcssa = phi i32 [ %.019, %225 ]
  %241 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.27
  store i32 %.019.lcssa, ptr %241, align 4
  br label %242

242:                                              ; preds = %240, %204
  br label %243

243:                                              ; preds = %242
  %244 = add nuw nsw i64 %.27, 1
  br label %202, !llvm.loop !18

245:                                              ; preds = %202
  br label %246

246:                                              ; preds = %275, %245
  %.6 = phi i64 [ 1, %245 ], [ %276, %275 ]
  %247 = icmp ult i64 %.6, 256
  br i1 %247, label %248, label %277

248:                                              ; preds = %246
  %249 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %250 = load i32, ptr %249, align 4
  %251 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %252 = load i8, ptr %251, align 1
  br label %253

253:                                              ; preds = %262, %248
  %.38 = phi i64 [ %.6, %248 ], [ %271, %262 ]
  %254 = icmp ne i64 %.38, 0
  br i1 %254, label %255, label %260

255:                                              ; preds = %253
  %256 = sub nuw i64 %.38, 1
  %257 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %256
  %258 = load i32, ptr %257, align 4
  %259 = icmp ugt i32 %258, %250
  br label %260

260:                                              ; preds = %255, %253
  %261 = phi i1 [ false, %253 ], [ %259, %255 ]
  br i1 %261, label %262, label %272

262:                                              ; preds = %260
  %263 = sub i64 %.38, 1
  %264 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %263
  %265 = load i32, ptr %264, align 4
  %266 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %265, ptr %266, align 4
  %267 = sub i64 %.38, 1
  %268 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %267
  %269 = load i8, ptr %268, align 1
  %270 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %269, ptr %270, align 1
  %271 = add i64 %.38, -1
  br label %253, !llvm.loop !19

272:                                              ; preds = %260
  %.38.lcssa = phi i64 [ %.38, %260 ]
  %273 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %250, ptr %273, align 4
  %274 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %252, ptr %274, align 1
  br label %275

275:                                              ; preds = %272
  %276 = add nuw nsw i64 %.6, 1
  br label %246, !llvm.loop !20

277:                                              ; preds = %246
  br label %278

278:                                              ; preds = %283, %277
  %.49 = phi i64 [ 0, %277 ], [ %284, %283 ]
  %279 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %280 = load i32, ptr %279, align 4
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %278
  br label %283

283:                                              ; preds = %282
  %284 = add i64 %.49, 1
  br label %278, !llvm.loop !21

285:                                              ; preds = %278
  %.49.lcssa = phi i64 [ %.49, %278 ]
  br label %286

286:                                              ; preds = %319, %285
  %.235 = phi ptr [ %0, %285 ], [ %.336, %319 ]
  %.031 = phi ptr [ %11, %285 ], [ %.132, %319 ]
  %.221 = phi i32 [ 0, %285 ], [ %.423, %319 ]
  %.217 = phi i64 [ 128, %285 ], [ %.318, %319 ]
  %.313 = phi i64 [ 0, %285 ], [ %.414, %319 ]
  %.7 = phi i64 [ %.49.lcssa, %285 ], [ %.9, %319 ]
  %287 = icmp ult i64 %.313, %1
  br i1 %287, label %288, label %320

288:                                              ; preds = %286
  %289 = mul i32 %.221, 2
  %290 = add i32 %289, 1
  %291 = load i8, ptr %.031, align 1
  %292 = zext i8 %291 to i64
  %293 = and i64 %292, %.217
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %288
  %296 = add i32 %290, 1
  br label %297

297:                                              ; preds = %295, %288
  %.322 = phi i32 [ %296, %295 ], [ %290, %288 ]
  br label %298

298:                                              ; preds = %302, %297
  %.8 = phi i64 [ %.7, %297 ], [ %303, %302 ]
  %299 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %300 = load i32, ptr %299, align 4
  %301 = icmp ult i32 %300, %.322
  br i1 %301, label %302, label %304

302:                                              ; preds = %298
  %303 = add i64 %.8, 1
  br label %298, !llvm.loop !22

304:                                              ; preds = %298
  %.8.lcssa = phi i64 [ %.8, %298 ]
  %305 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8.lcssa
  %306 = load i32, ptr %305, align 4
  %307 = icmp eq i32 %.322, %306
  br i1 %307, label %308, label %313

308:                                              ; preds = %304
  %309 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %310 = load i8, ptr %309, align 1
  store i8 %310, ptr %.235, align 1
  %311 = getelementptr inbounds nuw i8, ptr %.235, i32 1
  %312 = add i64 %.313, 1
  br label %313

313:                                              ; preds = %308, %304
  %.336 = phi ptr [ %311, %308 ], [ %.235, %304 ]
  %.423 = phi i32 [ 0, %308 ], [ %.322, %304 ]
  %.414 = phi i64 [ %312, %308 ], [ %.313, %304 ]
  %.9 = phi i64 [ %.49.lcssa, %308 ], [ %.8.lcssa, %304 ]
  %314 = icmp ugt i64 %.217, 1
  br i1 %314, label %315, label %317

315:                                              ; preds = %313
  %316 = lshr i64 %.217, 1
  br label %319

317:                                              ; preds = %313
  %318 = getelementptr inbounds nuw i8, ptr %.031, i32 1
  br label %319

319:                                              ; preds = %317, %315
  %.132 = phi ptr [ %.031, %315 ], [ %318, %317 ]
  %.318 = phi i64 [ %316, %315 ], [ 128, %317 ]
  br label %286, !llvm.loop !23

320:                                              ; preds = %286
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
  %.01.lcssa3 = phi i32 [ %.01, %33 ]
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
  %.014 = phi i32 [ %.01.lcssa, %.loopexit ], [ %.01.lcssa3, %42 ]
  %52 = sext i32 %9 to i64
  %53 = sub nsw i32 %.014, 1
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
  %5 = getelementptr inbounds nuw ptr, ptr %1, i64 1
  br label %6

6:                                                ; preds = %14, %4
  %.01 = phi i32 [ 1, %4 ], [ %15, %14 ]
  %7 = icmp slt i32 %.01, %0
  br i1 %7, label %8, label %.loopexit

8:                                                ; preds = %6
  %9 = load ptr, ptr %5, align 8
  %10 = call i32 @strcmp(ptr noundef %9, ptr noundef @.str.4) #7
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  br label %16

13:                                               ; preds = %8
  br label %14

14:                                               ; preds = %13
  %15 = add nsw i32 %.01, 1
  br label %6, !llvm.loop !25

.loopexit:                                        ; preds = %6
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
define internal range(i64 -31, 32) i64 @random4() #0 {
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
