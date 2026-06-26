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
  %33 = add i64 %.13, 1
  br label %23, !llvm.loop !10

34:                                               ; preds = %23
  %.010.lcssa = phi i64 [ %.010, %23 ]
  %35 = trunc i64 %.010.lcssa to i32
  br label %36

36:                                               ; preds = %38, %34
  %.24 = phi i64 [ %.010.lcssa, %34 ], [ %40, %38 ]
  %37 = icmp ugt i64 %.24, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %35, i32 noundef %39)
  %40 = add i64 %.24, -1
  br label %36, !llvm.loop !11

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %44, %41
  %.212 = phi i64 [ %.010.lcssa, %41 ], [ %45, %44 ]
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
  %.212.lcssa = phi i64 [ %.212, %42 ]
  %64 = add i64 256, %.212.lcssa
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
  %86 = sext i32 %.138 to i64
  %87 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %86
  %88 = load i32, ptr %87, align 4
  %89 = shl i64 %.05, 1
  %90 = add i64 %.3, 1
  br label %78, !llvm.loop !13

91:                                               ; preds = %78
  %.043.lcssa = phi i64 [ %.043, %78 ]
  %.3.lcssa = phi i64 [ %.3, %78 ]
  %92 = trunc i64 %.043.lcssa to i32
  %93 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 %92, ptr %93, align 4
  %94 = trunc i64 %.3.lcssa to i8
  %95 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 %94, ptr %95, align 1
  %96 = icmp ugt i64 %.043.lcssa, %.045
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %98

98:                                               ; preds = %97, %91
  %.247 = phi i64 [ %.043.lcssa, %97 ], [ %.045, %91 ]
  %99 = icmp ugt i64 %.3.lcssa, %.039
  br i1 %99, label %100, label %101

100:                                              ; preds = %98
  br label %101

101:                                              ; preds = %100, %98
  %.241 = phi i64 [ %.3.lcssa, %100 ], [ %.039, %98 ]
  br label %102

102:                                              ; preds = %101, %72
  %.146 = phi i64 [ %.247, %101 ], [ %.045, %72 ]
  %.140 = phi i64 [ %.241, %101 ], [ %.039, %72 ]
  %103 = add i64 %.042, 1
  br label %66, !llvm.loop !14

104:                                              ; preds = %66
  %.045.lcssa = phi i64 [ %.045, %66 ]
  %.039.lcssa = phi i64 [ %.039, %66 ]
  %105 = icmp ugt i64 %.039.lcssa, 32
  br i1 %105, label %106, label %109

106:                                              ; preds = %104
  %107 = call ptr @__acrt_iob_func(i32 noundef 2)
  %108 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %107, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

109:                                              ; preds = %104
  %110 = icmp eq i64 %.045.lcssa, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %109
  %112 = call ptr @__acrt_iob_func(i32 noundef 2)
  %113 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %112, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

114:                                              ; preds = %109
  br label %115

115:                                              ; preds = %161, %114
  %.134 = phi ptr [ %0, %114 ], [ %162, %161 ]
  %.028 = phi i64 [ 0, %114 ], [ %.129.lcssa, %161 ]
  %.024 = phi i8 [ 0, %114 ], [ %.125.lcssa, %161 ]
  %.16 = phi i64 [ 0, %114 ], [ %163, %161 ]
  %.01 = phi i32 [ -1, %114 ], [ %.1.lcssa, %161 ]
  %116 = icmp ult i64 %.16, %1
  br i1 %116, label %117, label %164

117:                                              ; preds = %115
  %118 = load i8, ptr %.134, align 1
  %119 = zext i8 %118 to i64
  %120 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %119
  %121 = load i8, ptr %120, align 1
  %122 = zext i8 %121 to i32
  %123 = sub nsw i32 %122, 1
  %124 = shl i32 1, %123
  %125 = sext i32 %124 to i64
  br label %126

126:                                              ; preds = %158, %117
  %127 = phi i8 [ %118, %117 ], [ %148, %158 ]
  %128 = phi i8 [ %121, %117 ], [ %.pre, %158 ]
  %.129 = phi i64 [ %.028, %117 ], [ %.230, %158 ]
  %.125 = phi i8 [ %.024, %117 ], [ %.327, %158 ]
  %.015 = phi i64 [ %125, %117 ], [ %159, %158 ]
  %.4 = phi i64 [ 0, %117 ], [ %160, %158 ]
  %.1 = phi i32 [ %.01, %117 ], [ %.2, %158 ]
  %129 = zext i8 %127 to i64
  %130 = zext i8 %128 to i64
  %131 = icmp ult i64 %.4, %130
  br i1 %131, label %132, label %161

132:                                              ; preds = %126
  %133 = icmp eq i32 %.1, 7
  br i1 %133, label %134, label %142

134:                                              ; preds = %132
  %135 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %135, align 1
  %136 = add i64 %.129, 1
  %137 = icmp eq i64 %136, %1
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  %139 = call ptr @__acrt_iob_func(i32 noundef 2)
  %140 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %139, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

141:                                              ; preds = %134
  %.pre1 = load i8, ptr %.134, align 1
  %.pre2 = zext i8 %.pre1 to i64
  br label %147

142:                                              ; preds = %132
  %143 = add nsw i32 %.1, 1
  %144 = sext i8 %.125 to i32
  %145 = shl i32 %144, 1
  %146 = trunc i32 %145 to i8
  br label %147

147:                                              ; preds = %142, %141
  %.pre-phi = phi i64 [ %129, %142 ], [ %.pre2, %141 ]
  %148 = phi i8 [ %.pre1, %141 ], [ %127, %142 ]
  %.230 = phi i64 [ %136, %141 ], [ %.129, %142 ]
  %.226 = phi i8 [ 0, %141 ], [ %146, %142 ]
  %.2 = phi i32 [ 0, %141 ], [ %143, %142 ]
  %149 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.pre-phi
  %150 = load i32, ptr %149, align 4
  %151 = zext i32 %150 to i64
  %152 = and i64 %151, %.015
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %147
  %155 = sext i8 %.226 to i32
  %156 = or i32 %155, 1
  %157 = trunc i32 %156 to i8
  br label %158

158:                                              ; preds = %154, %147
  %.327 = phi i8 [ %157, %154 ], [ %.226, %147 ]
  %159 = lshr i64 %.015, 1
  %160 = add i64 %.4, 1
  %.phi.trans.insert = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %126, !llvm.loop !15

161:                                              ; preds = %126
  %.129.lcssa = phi i64 [ %.129, %126 ]
  %.125.lcssa = phi i8 [ %.125, %126 ]
  %.1.lcssa = phi i32 [ %.1, %126 ]
  %162 = getelementptr inbounds nuw i8, ptr %.134, i32 1
  %163 = add i64 %.16, 1
  br label %115, !llvm.loop !16

164:                                              ; preds = %115
  %.028.lcssa = phi i64 [ %.028, %115 ]
  %.024.lcssa = phi i8 [ %.024, %115 ]
  %.01.lcssa = phi i32 [ %.01, %115 ]
  %165 = sub nsw i32 7, %.01.lcssa
  %166 = sext i8 %.024.lcssa to i32
  %167 = shl i32 %166, %165
  %168 = trunc i32 %167 to i8
  %169 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %168, ptr %169, align 1
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 1024, i1 false)
  br label %170

170:                                              ; preds = %202, %164
  %.27 = phi i64 [ 0, %164 ], [ %203, %202 ]
  %.0 = phi ptr [ %9, %164 ], [ %174, %202 ]
  %171 = icmp ult i64 %.27, 256
  br i1 %171, label %172, label %204

172:                                              ; preds = %170
  %173 = trunc i64 %.27 to i8
  store i8 %173, ptr %.0, align 1
  %174 = getelementptr inbounds nuw i8, ptr %.0, i32 1
  %175 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %176 = load i32, ptr %175, align 4
  %177 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %178 = load i8, ptr %177, align 1
  %179 = zext i8 %178 to i32
  %180 = or i32 %176, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %202

182:                                              ; preds = %172
  %183 = sub nsw i32 %179, 1
  %184 = shl i32 1, %183
  %185 = sext i32 %184 to i64
  %186 = zext i8 %178 to i64
  %187 = zext i32 %176 to i64
  br label %188

188:                                              ; preds = %197, %182
  %.019 = phi i32 [ 0, %182 ], [ %.120, %197 ]
  %.116 = phi i64 [ %185, %182 ], [ %198, %197 ]
  %.5 = phi i64 [ 0, %182 ], [ %199, %197 ]
  %189 = icmp ult i64 %.5, %186
  br i1 %189, label %190, label %200

190:                                              ; preds = %188
  %191 = mul i32 %.019, 2
  %192 = add i32 %191, 1
  %193 = and i64 %187, %.116
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %190
  %196 = add i32 %192, 1
  br label %197

197:                                              ; preds = %195, %190
  %.120 = phi i32 [ %196, %195 ], [ %192, %190 ]
  %198 = lshr i64 %.116, 1
  %199 = add i64 %.5, 1
  br label %188, !llvm.loop !17

200:                                              ; preds = %188
  %.019.lcssa = phi i32 [ %.019, %188 ]
  %201 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.27
  store i32 %.019.lcssa, ptr %201, align 4
  br label %202

202:                                              ; preds = %200, %172
  %203 = add i64 %.27, 1
  br label %170, !llvm.loop !18

204:                                              ; preds = %170
  br label %205

205:                                              ; preds = %230, %204
  %.6 = phi i64 [ 1, %204 ], [ %233, %230 ]
  %206 = icmp ult i64 %.6, 256
  br i1 %206, label %207, label %234

207:                                              ; preds = %205
  %208 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %209 = load i32, ptr %208, align 4
  %210 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %211 = load i8, ptr %210, align 1
  br label %212

212:                                              ; preds = %221, %207
  %.38 = phi i64 [ %.6, %207 ], [ %229, %221 ]
  %213 = icmp ne i64 %.38, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %212
  %215 = sub i64 %.38, 1
  %216 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %215
  %217 = load i32, ptr %216, align 4
  %218 = icmp ugt i32 %217, %209
  br label %219

219:                                              ; preds = %214, %212
  %220 = phi i1 [ false, %212 ], [ %218, %214 ]
  br i1 %220, label %221, label %230

221:                                              ; preds = %219
  %222 = sub i64 %.38, 1
  %223 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %222
  %224 = load i32, ptr %223, align 4
  %225 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %224, ptr %225, align 4
  %226 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %222
  %227 = load i8, ptr %226, align 1
  %228 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %227, ptr %228, align 1
  %229 = add i64 %.38, -1
  br label %212, !llvm.loop !19

230:                                              ; preds = %219
  %.38.lcssa = phi i64 [ %.38, %219 ]
  %231 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %209, ptr %231, align 4
  %232 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %211, ptr %232, align 1
  %233 = add i64 %.6, 1
  br label %205, !llvm.loop !20

234:                                              ; preds = %205
  br label %235

235:                                              ; preds = %239, %234
  %.49 = phi i64 [ 0, %234 ], [ %240, %239 ]
  %236 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %237 = load i32, ptr %236, align 4
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %235
  %240 = add i64 %.49, 1
  br label %235, !llvm.loop !21

241:                                              ; preds = %235
  %.49.lcssa = phi i64 [ %.49, %235 ]
  br label %242

242:                                              ; preds = %273, %241
  %.235 = phi ptr [ %0, %241 ], [ %.336, %273 ]
  %.031 = phi ptr [ %11, %241 ], [ %.132, %273 ]
  %.221 = phi i32 [ 0, %241 ], [ %.423, %273 ]
  %.217 = phi i64 [ 128, %241 ], [ %.318, %273 ]
  %.313 = phi i64 [ 0, %241 ], [ %.414, %273 ]
  %.7 = phi i64 [ %.49.lcssa, %241 ], [ %.9, %273 ]
  %243 = icmp ult i64 %.313, %1
  br i1 %243, label %244, label %274

244:                                              ; preds = %242
  %245 = mul i32 %.221, 2
  %246 = add i32 %245, 1
  %247 = load i8, ptr %.031, align 1
  %248 = zext i8 %247 to i64
  %249 = and i64 %248, %.217
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %244
  %252 = add i32 %246, 1
  br label %253

253:                                              ; preds = %251, %244
  %.322 = phi i32 [ %252, %251 ], [ %246, %244 ]
  br label %254

254:                                              ; preds = %258, %253
  %.8 = phi i64 [ %.7, %253 ], [ %259, %258 ]
  %255 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %256 = load i32, ptr %255, align 4
  %257 = icmp ult i32 %256, %.322
  br i1 %257, label %258, label %260

258:                                              ; preds = %254
  %259 = add i64 %.8, 1
  br label %254, !llvm.loop !22

260:                                              ; preds = %254
  %.8.lcssa = phi i64 [ %.8, %254 ]
  %.lcssa = phi i32 [ %256, %254 ]
  %261 = icmp eq i32 %.322, %.lcssa
  br i1 %261, label %262, label %267

262:                                              ; preds = %260
  %263 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %264 = load i8, ptr %263, align 1
  store i8 %264, ptr %.235, align 1
  %265 = getelementptr inbounds nuw i8, ptr %.235, i32 1
  %266 = add i64 %.313, 1
  br label %267

267:                                              ; preds = %262, %260
  %.336 = phi ptr [ %265, %262 ], [ %.235, %260 ]
  %.423 = phi i32 [ 0, %262 ], [ %.322, %260 ]
  %.414 = phi i64 [ %266, %262 ], [ %.313, %260 ]
  %.9 = phi i64 [ %.49.lcssa, %262 ], [ %.8.lcssa, %260 ]
  %268 = icmp ugt i64 %.217, 1
  br i1 %268, label %269, label %271

269:                                              ; preds = %267
  %270 = lshr i64 %.217, 1
  br label %273

271:                                              ; preds = %267
  %272 = getelementptr inbounds nuw i8, ptr %.031, i32 1
  br label %273

273:                                              ; preds = %271, %269
  %.132 = phi ptr [ %.031, %269 ], [ %272, %271 ]
  %.318 = phi i64 [ %270, %269 ], [ 128, %271 ]
  br label %242, !llvm.loop !23

274:                                              ; preds = %242
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
  br i1 %14, label %15, label %._crit_edge

._crit_edge:                                      ; preds = %13
  %.01.lcssa = phi i32 [ %.01, %13 ]
  %.pre = sext i32 %9 to i64
  br label %47

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
  %.lcssa = phi i64 [ %11, %33 ]
  %.01.lcssa1 = phi i32 [ %.01, %33 ]
  br label %47

43:                                               ; preds = %33
  %44 = sub nsw i32 %.01, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, ptr %1, i64 %45
  store i64 %38, ptr %46, align 8
  br label %13, !llvm.loop !24

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
  %5 = getelementptr inbounds ptr, ptr %1, i64 1
  br label %6

6:                                                ; preds = %13, %4
  %.01 = phi i32 [ 1, %4 ], [ %14, %13 ]
  %7 = icmp slt i32 %.01, %0
  br i1 %7, label %8, label %.loopexit

8:                                                ; preds = %6
  %9 = load ptr, ptr %5, align 8
  %10 = call i32 @strcmp(ptr noundef %9, ptr noundef @.str.4) #7
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  br label %15

13:                                               ; preds = %8
  %14 = add nsw i32 %.01, 1
  br label %6, !llvm.loop !25

.loopexit:                                        ; preds = %6
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
