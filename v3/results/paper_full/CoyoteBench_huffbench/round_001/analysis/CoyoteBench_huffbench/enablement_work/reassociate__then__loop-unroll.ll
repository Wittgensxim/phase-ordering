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

18:                                               ; preds = %27, %2
  %.033 = phi ptr [ %0, %2 ], [ %26, %27 ]
  %.02 = phi i64 [ 0, %2 ], [ %28, %27 ]
  %19 = icmp ult i64 %.02, %1
  br i1 %19, label %20, label %29

20:                                               ; preds = %18
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
  br label %18, !llvm.loop !9

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %50, %29
  %.010 = phi i64 [ 0, %29 ], [ %.111.1, %50 ]
  %.13 = phi i64 [ 0, %29 ], [ %51, %50 ]
  %31 = icmp samesign ult i64 %.13, 256
  br i1 %31, label %32, label %52

32:                                               ; preds = %30
  %33 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.13
  %34 = load i64, ptr %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.010
  store i64 %.13, ptr %37, align 8
  %38 = add i64 %.010, 1
  br label %39

39:                                               ; preds = %36, %32
  %.111 = phi i64 [ %38, %36 ], [ %.010, %32 ]
  br label %40

40:                                               ; preds = %39
  %41 = add nuw nsw i64 %.13, 1
  br label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %41
  %44 = load i64, ptr %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.111
  store i64 %41, ptr %47, align 8
  %48 = add i64 %.111, 1
  br label %49

49:                                               ; preds = %46, %42
  %.111.1 = phi i64 [ %48, %46 ], [ %.111, %42 ]
  br label %50

50:                                               ; preds = %49
  %51 = add nuw nsw i64 %.13, 2
  br label %30, !llvm.loop !10

52:                                               ; preds = %30
  %.010.lcssa = phi i64 [ %.010, %30 ]
  br label %53

53:                                               ; preds = %60, %52
  %.24 = phi i64 [ %.010.lcssa, %52 ], [ %61, %60 ]
  %54 = icmp ugt i64 %.24, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %53
  %56 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %57 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %58 = trunc i64 %.010.lcssa to i32
  %59 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef %56, ptr noundef %57, i32 noundef %58, i32 noundef %59)
  br label %60

60:                                               ; preds = %55
  %61 = add i64 %.24, -1
  br label %53, !llvm.loop !11

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %65, %62
  %.212 = phi i64 [ %.010.lcssa, %62 ], [ %66, %65 ]
  %64 = icmp ugt i64 %.212, 1
  br i1 %64, label %65, label %97

65:                                               ; preds = %63
  %66 = add i64 %.212, -1
  %67 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %68 = load i64, ptr %67, align 16
  %69 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %66
  %70 = load i64, ptr %69, align 8
  %71 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %70, ptr %71, align 16
  %72 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %73 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %74 = trunc i64 %66 to i32
  call void @heap_adjust(ptr noundef %72, ptr noundef %73, i32 noundef %74, i32 noundef 1)
  %75 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %76 = load i64, ptr %75, align 16
  %77 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %76
  %78 = load i64, ptr %77, align 8
  %79 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %68
  %80 = load i64, ptr %79, align 8
  %81 = add i64 %80, %78
  %82 = add i64 %66, 256
  %83 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %82
  store i64 %81, ptr %83, align 8
  %84 = add i64 %66, 256
  %85 = trunc i64 %84 to i32
  %86 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %68
  store i32 %85, ptr %86, align 4
  %87 = sub i64 -256, %66
  %88 = trunc i64 %87 to i32
  %89 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %90 = load i64, ptr %89, align 16
  %91 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %90
  store i32 %88, ptr %91, align 4
  %92 = add i64 %66, 256
  %93 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %92, ptr %93, align 16
  %94 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %95 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %96 = trunc i64 %66 to i32
  call void @heap_adjust(ptr noundef %94, ptr noundef %95, i32 noundef %96, i32 noundef 1)
  br label %63, !llvm.loop !12

97:                                               ; preds = %63
  %.212.lcssa = phi i64 [ %.212, %63 ]
  %98 = add i64 %.212.lcssa, 256
  %99 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %98
  store i32 0, ptr %99, align 4
  br label %100

100:                                              ; preds = %137, %97
  %.045 = phi i64 [ 0, %97 ], [ %.146, %137 ]
  %.042 = phi i64 [ 0, %97 ], [ %138, %137 ]
  %.039 = phi i64 [ 0, %97 ], [ %.140, %137 ]
  %101 = icmp ult i64 %.042, 256
  br i1 %101, label %102, label %139

102:                                              ; preds = %100
  %103 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.042
  %104 = load i64, ptr %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 0, ptr %107, align 4
  %108 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 0, ptr %108, align 1
  br label %136

109:                                              ; preds = %102
  %110 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.042
  %111 = load i32, ptr %110, align 4
  br label %112

112:                                              ; preds = %119, %109
  %.043 = phi i64 [ 0, %109 ], [ %.144, %119 ]
  %.037 = phi i32 [ %111, %109 ], [ %122, %119 ]
  %.05 = phi i64 [ 1, %109 ], [ %123, %119 ]
  %.3 = phi i64 [ 0, %109 ], [ %124, %119 ]
  %113 = icmp ne i32 %.037, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %112
  %115 = icmp slt i32 %.037, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %114
  %117 = add i64 %.05, %.043
  %118 = sub nsw i32 0, %.037
  br label %119

119:                                              ; preds = %116, %114
  %.144 = phi i64 [ %117, %116 ], [ %.043, %114 ]
  %.138 = phi i32 [ %118, %116 ], [ %.037, %114 ]
  %120 = sext i32 %.138 to i64
  %121 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %120
  %122 = load i32, ptr %121, align 4
  %123 = shl i64 %.05, 1
  %124 = add i64 %.3, 1
  br label %112, !llvm.loop !13

125:                                              ; preds = %112
  %.043.lcssa = phi i64 [ %.043, %112 ]
  %.3.lcssa = phi i64 [ %.3, %112 ]
  %126 = trunc i64 %.043.lcssa to i32
  %127 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 %126, ptr %127, align 4
  %128 = trunc i64 %.3.lcssa to i8
  %129 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 %128, ptr %129, align 1
  %130 = icmp ugt i64 %.043.lcssa, %.045
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  br label %132

132:                                              ; preds = %131, %125
  %.247 = phi i64 [ %.043.lcssa, %131 ], [ %.045, %125 ]
  %133 = icmp ugt i64 %.3.lcssa, %.039
  br i1 %133, label %134, label %135

134:                                              ; preds = %132
  br label %135

135:                                              ; preds = %134, %132
  %.241 = phi i64 [ %.3.lcssa, %134 ], [ %.039, %132 ]
  br label %136

136:                                              ; preds = %135, %106
  %.146 = phi i64 [ %.247, %135 ], [ %.045, %106 ]
  %.140 = phi i64 [ %.241, %135 ], [ %.039, %106 ]
  br label %137

137:                                              ; preds = %136
  %138 = add i64 %.042, 1
  br label %100, !llvm.loop !14

139:                                              ; preds = %100
  %.045.lcssa = phi i64 [ %.045, %100 ]
  %.039.lcssa = phi i64 [ %.039, %100 ]
  %140 = icmp ugt i64 %.039.lcssa, 32
  br i1 %140, label %141, label %144

141:                                              ; preds = %139
  %142 = call ptr @__acrt_iob_func(i32 noundef 2)
  %143 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %142, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

144:                                              ; preds = %139
  %145 = icmp eq i64 %.045.lcssa, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %144
  %147 = call ptr @__acrt_iob_func(i32 noundef 2)
  %148 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %147, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

149:                                              ; preds = %144
  br label %150

150:                                              ; preds = %201, %149
  %.134 = phi ptr [ %0, %149 ], [ %200, %201 ]
  %.028 = phi i64 [ 0, %149 ], [ %.129.lcssa, %201 ]
  %.024 = phi i8 [ 0, %149 ], [ %.125.lcssa, %201 ]
  %.16 = phi i64 [ 0, %149 ], [ %202, %201 ]
  %.01 = phi i32 [ -1, %149 ], [ %.1.lcssa, %201 ]
  %151 = icmp ult i64 %.16, %1
  br i1 %151, label %152, label %203

152:                                              ; preds = %150
  %153 = load i8, ptr %.134, align 1
  %154 = zext i8 %153 to i64
  %155 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %154
  %156 = load i8, ptr %155, align 1
  %157 = zext i8 %156 to i32
  %158 = sub nsw i32 %157, 1
  %159 = shl i32 1, %158
  %160 = sext i32 %159 to i64
  br label %161

161:                                              ; preds = %197, %152
  %.129 = phi i64 [ %.028, %152 ], [ %.230, %197 ]
  %.125 = phi i8 [ %.024, %152 ], [ %.327, %197 ]
  %.015 = phi i64 [ %160, %152 ], [ %196, %197 ]
  %.4 = phi i64 [ 0, %152 ], [ %198, %197 ]
  %.1 = phi i32 [ %.01, %152 ], [ %.2, %197 ]
  %162 = load i8, ptr %.134, align 1
  %163 = zext i8 %162 to i64
  %164 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %163
  %165 = load i8, ptr %164, align 1
  %166 = zext i8 %165 to i64
  %167 = icmp ult i64 %.4, %166
  br i1 %167, label %168, label %199

168:                                              ; preds = %161
  %169 = icmp eq i32 %.1, 7
  br i1 %169, label %170, label %178

170:                                              ; preds = %168
  %171 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %171, align 1
  %172 = add i64 %.129, 1
  %173 = icmp eq i64 %172, %1
  br i1 %173, label %174, label %177

174:                                              ; preds = %170
  %175 = call ptr @__acrt_iob_func(i32 noundef 2)
  %176 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %175, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

177:                                              ; preds = %170
  br label %183

178:                                              ; preds = %168
  %179 = add nsw i32 %.1, 1
  %180 = sext i8 %.125 to i32
  %181 = shl i32 %180, 1
  %182 = trunc i32 %181 to i8
  br label %183

183:                                              ; preds = %178, %177
  %.230 = phi i64 [ %172, %177 ], [ %.129, %178 ]
  %.226 = phi i8 [ 0, %177 ], [ %182, %178 ]
  %.2 = phi i32 [ 0, %177 ], [ %179, %178 ]
  %184 = load i8, ptr %.134, align 1
  %185 = zext i8 %184 to i64
  %186 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %185
  %187 = load i32, ptr %186, align 4
  %188 = zext i32 %187 to i64
  %189 = and i64 %188, %.015
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %183
  %192 = sext i8 %.226 to i32
  %193 = or i32 %192, 1
  %194 = trunc i32 %193 to i8
  br label %195

195:                                              ; preds = %191, %183
  %.327 = phi i8 [ %194, %191 ], [ %.226, %183 ]
  %196 = lshr i64 %.015, 1
  br label %197

197:                                              ; preds = %195
  %198 = add i64 %.4, 1
  br label %161, !llvm.loop !15

199:                                              ; preds = %161
  %.129.lcssa = phi i64 [ %.129, %161 ]
  %.125.lcssa = phi i8 [ %.125, %161 ]
  %.1.lcssa = phi i32 [ %.1, %161 ]
  %200 = getelementptr inbounds nuw i8, ptr %.134, i32 1
  br label %201

201:                                              ; preds = %199
  %202 = add i64 %.16, 1
  br label %150, !llvm.loop !16

203:                                              ; preds = %150
  %.028.lcssa = phi i64 [ %.028, %150 ]
  %.024.lcssa = phi i8 [ %.024, %150 ]
  %.01.lcssa = phi i32 [ %.01, %150 ]
  %204 = sub nsw i32 7, %.01.lcssa
  %205 = sext i8 %.024.lcssa to i32
  %206 = shl i32 %205, %204
  %207 = trunc i32 %206 to i8
  %208 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %207, ptr %208, align 1
  %209 = getelementptr inbounds [256 x i32], ptr %8, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %209, i8 0, i64 1024, i1 false)
  %210 = getelementptr inbounds [256 x i8], ptr %9, i64 0, i64 0
  br label %211

211:                                              ; preds = %252, %203
  %.27 = phi i64 [ 0, %203 ], [ %253, %252 ]
  %.0 = phi ptr [ %210, %203 ], [ %215, %252 ]
  %212 = icmp ult i64 %.27, 256
  br i1 %212, label %213, label %254

213:                                              ; preds = %211
  %214 = trunc i64 %.27 to i8
  store i8 %214, ptr %.0, align 1
  %215 = getelementptr inbounds nuw i8, ptr %.0, i32 1
  %216 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %217 = load i32, ptr %216, align 4
  %218 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %219 = load i8, ptr %218, align 1
  %220 = zext i8 %219 to i32
  %221 = or i32 %220, %217
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %251

223:                                              ; preds = %213
  %224 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %225 = load i8, ptr %224, align 1
  %226 = zext i8 %225 to i32
  %227 = sub nsw i32 %226, 1
  %228 = shl i32 1, %227
  %229 = sext i32 %228 to i64
  br label %230

230:                                              ; preds = %247, %223
  %.019 = phi i32 [ 0, %223 ], [ %.120, %247 ]
  %.116 = phi i64 [ %229, %223 ], [ %246, %247 ]
  %.5 = phi i64 [ 0, %223 ], [ %248, %247 ]
  %231 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %232 = load i8, ptr %231, align 1
  %233 = zext i8 %232 to i64
  %234 = icmp ult i64 %.5, %233
  br i1 %234, label %235, label %249

235:                                              ; preds = %230
  %236 = mul i32 %.019, 2
  %237 = add i32 %236, 1
  %238 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %239 = load i32, ptr %238, align 4
  %240 = zext i32 %239 to i64
  %241 = and i64 %240, %.116
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %235
  %244 = add i32 %237, 1
  br label %245

245:                                              ; preds = %243, %235
  %.120 = phi i32 [ %244, %243 ], [ %237, %235 ]
  %246 = lshr i64 %.116, 1
  br label %247

247:                                              ; preds = %245
  %248 = add i64 %.5, 1
  br label %230, !llvm.loop !17

249:                                              ; preds = %230
  %.019.lcssa = phi i32 [ %.019, %230 ]
  %250 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.27
  store i32 %.019.lcssa, ptr %250, align 4
  br label %251

251:                                              ; preds = %249, %213
  br label %252

252:                                              ; preds = %251
  %253 = add i64 %.27, 1
  br label %211, !llvm.loop !18

254:                                              ; preds = %211
  br label %255

255:                                              ; preds = %284, %254
  %.6 = phi i64 [ 1, %254 ], [ %285, %284 ]
  %256 = icmp ult i64 %.6, 256
  br i1 %256, label %257, label %286

257:                                              ; preds = %255
  %258 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %259 = load i32, ptr %258, align 4
  %260 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %261 = load i8, ptr %260, align 1
  br label %262

262:                                              ; preds = %271, %257
  %.38 = phi i64 [ %.6, %257 ], [ %280, %271 ]
  %263 = icmp ne i64 %.38, 0
  br i1 %263, label %264, label %269

264:                                              ; preds = %262
  %265 = sub i64 %.38, 1
  %266 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %265
  %267 = load i32, ptr %266, align 4
  %268 = icmp ugt i32 %267, %259
  br label %269

269:                                              ; preds = %264, %262
  %270 = phi i1 [ false, %262 ], [ %268, %264 ]
  br i1 %270, label %271, label %281

271:                                              ; preds = %269
  %272 = sub i64 %.38, 1
  %273 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %272
  %274 = load i32, ptr %273, align 4
  %275 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %274, ptr %275, align 4
  %276 = sub i64 %.38, 1
  %277 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %276
  %278 = load i8, ptr %277, align 1
  %279 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %278, ptr %279, align 1
  %280 = add i64 %.38, -1
  br label %262, !llvm.loop !19

281:                                              ; preds = %269
  %.38.lcssa = phi i64 [ %.38, %269 ]
  %282 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %259, ptr %282, align 4
  %283 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %261, ptr %283, align 1
  br label %284

284:                                              ; preds = %281
  %285 = add i64 %.6, 1
  br label %255, !llvm.loop !20

286:                                              ; preds = %255
  br label %287

287:                                              ; preds = %292, %286
  %.49 = phi i64 [ 0, %286 ], [ %293, %292 ]
  %288 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %289 = load i32, ptr %288, align 4
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %294

291:                                              ; preds = %287
  br label %292

292:                                              ; preds = %291
  %293 = add i64 %.49, 1
  br label %287, !llvm.loop !21

294:                                              ; preds = %287
  %.49.lcssa = phi i64 [ %.49, %287 ]
  br label %295

295:                                              ; preds = %328, %294
  %.235 = phi ptr [ %0, %294 ], [ %.336, %328 ]
  %.031 = phi ptr [ %11, %294 ], [ %.132, %328 ]
  %.221 = phi i32 [ 0, %294 ], [ %.423, %328 ]
  %.217 = phi i64 [ 128, %294 ], [ %.318, %328 ]
  %.313 = phi i64 [ 0, %294 ], [ %.414, %328 ]
  %.7 = phi i64 [ %.49.lcssa, %294 ], [ %.9, %328 ]
  %296 = icmp ult i64 %.313, %1
  br i1 %296, label %297, label %329

297:                                              ; preds = %295
  %298 = mul i32 %.221, 2
  %299 = add i32 %298, 1
  %300 = load i8, ptr %.031, align 1
  %301 = zext i8 %300 to i64
  %302 = and i64 %301, %.217
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %306

304:                                              ; preds = %297
  %305 = add i32 %299, 1
  br label %306

306:                                              ; preds = %304, %297
  %.322 = phi i32 [ %305, %304 ], [ %299, %297 ]
  br label %307

307:                                              ; preds = %311, %306
  %.8 = phi i64 [ %.7, %306 ], [ %312, %311 ]
  %308 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %309 = load i32, ptr %308, align 4
  %310 = icmp ult i32 %309, %.322
  br i1 %310, label %311, label %313

311:                                              ; preds = %307
  %312 = add i64 %.8, 1
  br label %307, !llvm.loop !22

313:                                              ; preds = %307
  %.8.lcssa = phi i64 [ %.8, %307 ]
  %314 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8.lcssa
  %315 = load i32, ptr %314, align 4
  %316 = icmp eq i32 %.322, %315
  br i1 %316, label %317, label %322

317:                                              ; preds = %313
  %318 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %319 = load i8, ptr %318, align 1
  store i8 %319, ptr %.235, align 1
  %320 = getelementptr inbounds nuw i8, ptr %.235, i32 1
  %321 = add i64 %.313, 1
  br label %322

322:                                              ; preds = %317, %313
  %.336 = phi ptr [ %320, %317 ], [ %.235, %313 ]
  %.423 = phi i32 [ 0, %317 ], [ %.322, %313 ]
  %.414 = phi i64 [ %321, %317 ], [ %.313, %313 ]
  %.9 = phi i64 [ %.49.lcssa, %317 ], [ %.8.lcssa, %313 ]
  %323 = icmp ugt i64 %.217, 1
  br i1 %323, label %324, label %326

324:                                              ; preds = %322
  %325 = lshr i64 %.217, 1
  br label %328

326:                                              ; preds = %322
  %327 = getelementptr inbounds nuw i8, ptr %.031, i32 1
  br label %328

328:                                              ; preds = %326, %324
  %.132 = phi ptr [ %.031, %324 ], [ %327, %326 ]
  %.318 = phi i64 [ %325, %324 ], [ 128, %326 ]
  br label %295, !llvm.loop !23

329:                                              ; preds = %295
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

10:                                               ; preds = %42, %4
  %.01 = phi i32 [ %3, %4 ], [ %.0, %42 ]
  %11 = sdiv i32 %2, 2
  %12 = icmp sle i32 %.01, %11
  br i1 %12, label %13, label %.loopexit

13:                                               ; preds = %10
  %factor = mul i32 %.01, 2
  %14 = icmp slt i32 %factor, %2
  br i1 %14, label %15, label %30

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
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = add nsw i32 %factor, 1
  br label %30

30:                                               ; preds = %28, %15, %13
  %.0 = phi i32 [ %29, %28 ], [ %factor, %15 ], [ %factor, %13 ]
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
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  %.01.lcssa1 = phi i32 [ %.01, %30 ]
  br label %50

42:                                               ; preds = %30
  %43 = sub nsw i32 %.0, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, ptr %1, i64 %44
  %46 = load i64, ptr %45, align 8
  %47 = sub nsw i32 %.01, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, ptr %1, i64 %48
  store i64 %46, ptr %49, align 8
  br label %10, !llvm.loop !24

.loopexit:                                        ; preds = %10
  %.01.lcssa = phi i32 [ %.01, %10 ]
  br label %50

50:                                               ; preds = %.loopexit, %41
  %.012 = phi i32 [ %.01.lcssa, %.loopexit ], [ %.01.lcssa1, %41 ]
  %51 = sext i32 %9 to i64
  %52 = sub nsw i32 %.012, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, ptr %1, i64 %53
  store i64 %51, ptr %54, align 8
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
