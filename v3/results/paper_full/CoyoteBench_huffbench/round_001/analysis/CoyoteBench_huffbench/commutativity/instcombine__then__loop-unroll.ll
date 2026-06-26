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
  %2 = call ptr @malloc(i64 noundef %0) #7
  br label %3

3:                                                ; preds = %10, %1
  %.01 = phi ptr [ %2, %1 ], [ %11, %10 ]
  %.0 = phi i32 [ 0, %1 ], [ %12, %10 ]
  %4 = zext nneg i32 %.0 to i64
  %5 = icmp ugt i64 %0, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = call i64 @random4()
  %8 = getelementptr inbounds nuw i8, ptr @.str, i64 %7
  %9 = load i8, ptr %8, align 1
  store i8 %9, ptr %.01, align 1
  br label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds nuw i8, ptr %.01, i64 1
  %12 = add nuw nsw i32 %.0, 1
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
  %11 = call ptr @malloc(i64 noundef %10) #7
  %12 = add i64 %1, 1
  call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %12, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %3, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %4, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %5, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %6, i8 0, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %7, i8 0, i64 256, i1 false)
  br label %13

13:                                               ; preds = %21, %2
  %.033 = phi ptr [ %0, %2 ], [ %22, %21 ]
  %.02 = phi i64 [ 0, %2 ], [ %23, %21 ]
  %14 = icmp ult i64 %.02, %1
  br i1 %14, label %15, label %24

15:                                               ; preds = %13
  %16 = load i8, ptr %.033, align 1
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %17
  %19 = load i64, ptr %18, align 8
  %20 = add i64 %19, 1
  store i64 %20, ptr %18, align 8
  br label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds nuw i8, ptr %.033, i64 1
  %23 = add i64 %.02, 1
  br label %13, !llvm.loop !9

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %43, %24
  %.010 = phi i64 [ 0, %24 ], [ %.111.1, %43 ]
  %.13 = phi i64 [ 0, %24 ], [ %44, %43 ]
  %26 = icmp samesign ult i64 %.13, 256
  br i1 %26, label %27, label %45

27:                                               ; preds = %25
  %28 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.13
  %29 = load i64, ptr %28, align 8
  %.not8 = icmp eq i64 %29, 0
  br i1 %.not8, label %33, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.010
  store i64 %.13, ptr %31, align 8
  %32 = add i64 %.010, 1
  br label %33

33:                                               ; preds = %30, %27
  %.111 = phi i64 [ %32, %30 ], [ %.010, %27 ]
  br label %34

34:                                               ; preds = %33
  %35 = add nuw nsw i64 %.13, 1
  br label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %35
  %38 = load i64, ptr %37, align 8
  %.not8.1 = icmp eq i64 %38, 0
  br i1 %.not8.1, label %42, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.111
  store i64 %35, ptr %40, align 8
  %41 = add i64 %.111, 1
  br label %42

42:                                               ; preds = %39, %36
  %.111.1 = phi i64 [ %41, %39 ], [ %.111, %36 ]
  br label %43

43:                                               ; preds = %42
  %44 = add nuw nsw i64 %.13, 2
  br label %25, !llvm.loop !10

45:                                               ; preds = %25
  %.010.lcssa = phi i64 [ %.010, %25 ]
  br label %46

46:                                               ; preds = %50, %45
  %.24 = phi i64 [ %.010.lcssa, %45 ], [ %51, %50 ]
  %.not = icmp eq i64 %.24, 0
  br i1 %.not, label %52, label %47

47:                                               ; preds = %46
  %48 = trunc i64 %.010.lcssa to i32
  %49 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %48, i32 noundef %49)
  br label %50

50:                                               ; preds = %47
  %51 = add i64 %.24, -1
  br label %46, !llvm.loop !11

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %55, %52
  %.212 = phi i64 [ %.010.lcssa, %52 ], [ %56, %55 ]
  %54 = icmp ugt i64 %.212, 1
  br i1 %54, label %55, label %78

55:                                               ; preds = %53
  %56 = add i64 %.212, -1
  %57 = load i64, ptr %4, align 16
  %58 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %56
  %59 = load i64, ptr %58, align 8
  store i64 %59, ptr %4, align 16
  %60 = trunc i64 %56 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %60, i32 noundef 1)
  %61 = load i64, ptr %4, align 16
  %62 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %61
  %63 = load i64, ptr %62, align 8
  %64 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %57
  %65 = load i64, ptr %64, align 8
  %66 = add i64 %63, %65
  %67 = getelementptr [8 x i8], ptr %3, i64 %.212
  %68 = getelementptr i8, ptr %67, i64 2040
  store i64 %66, ptr %68, align 8
  %69 = trunc i64 %.212 to i32
  %70 = add i32 %69, 255
  %71 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %57
  store i32 %70, ptr %71, align 4
  %72 = trunc i64 %.212 to i32
  %73 = sub i32 -255, %72
  %74 = load i64, ptr %4, align 16
  %75 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %74
  store i32 %73, ptr %75, align 4
  %76 = add i64 %.212, 255
  store i64 %76, ptr %4, align 16
  %77 = trunc i64 %56 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %77, i32 noundef 1)
  br label %53, !llvm.loop !12

78:                                               ; preds = %53
  %.212.lcssa = phi i64 [ %.212, %53 ]
  %79 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %80 = getelementptr inbounds nuw i8, ptr %79, i64 1024
  store i32 0, ptr %80, align 4
  br label %81

81:                                               ; preds = %112, %78
  %.045 = phi i64 [ 0, %78 ], [ %.146, %112 ]
  %.042 = phi i64 [ 0, %78 ], [ %113, %112 ]
  %.039 = phi i64 [ 0, %78 ], [ %.140, %112 ]
  %82 = icmp samesign ult i64 %.042, 256
  br i1 %82, label %83, label %114

83:                                               ; preds = %81
  %84 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.042
  %85 = load i64, ptr %84, align 8
  %.not6 = icmp eq i64 %85, 0
  br i1 %.not6, label %86, label %89

86:                                               ; preds = %83
  %87 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 0, ptr %87, align 4
  %88 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 0, ptr %88, align 1
  br label %111

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %96, %89
  %.043 = phi i64 [ 0, %89 ], [ %.144, %96 ]
  %.042.pn = phi i64 [ %.042, %89 ], [ %97, %96 ]
  %.05 = phi i64 [ 1, %89 ], [ %98, %96 ]
  %.3 = phi i64 [ 0, %89 ], [ %99, %96 ]
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.042.pn
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %100, label %91

91:                                               ; preds = %90
  %92 = icmp slt i32 %.037, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %91
  %94 = add i64 %.043, %.05
  %95 = sub nsw i32 0, %.037
  br label %96

96:                                               ; preds = %93, %91
  %.144 = phi i64 [ %94, %93 ], [ %.043, %91 ]
  %.138 = phi i32 [ %95, %93 ], [ %.037, %91 ]
  %97 = zext nneg i32 %.138 to i64
  %98 = shl i64 %.05, 1
  %99 = add i64 %.3, 1
  br label %90, !llvm.loop !13

100:                                              ; preds = %90
  %.043.lcssa = phi i64 [ %.043, %90 ]
  %.3.lcssa = phi i64 [ %.3, %90 ]
  %101 = trunc i64 %.043.lcssa to i32
  %102 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 %101, ptr %102, align 4
  %103 = trunc i64 %.3.lcssa to i8
  %104 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
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

111:                                              ; preds = %110, %86
  %.146 = phi i64 [ %.247, %110 ], [ %.045, %86 ]
  %.140 = phi i64 [ %.241, %110 ], [ %.039, %86 ]
  br label %112

112:                                              ; preds = %111
  %113 = add nuw nsw i64 %.042, 1
  br label %81, !llvm.loop !14

114:                                              ; preds = %81
  %.045.lcssa = phi i64 [ %.045, %81 ]
  %.039.lcssa = phi i64 [ %.039, %81 ]
  %115 = icmp ugt i64 %.039.lcssa, 32
  br i1 %115, label %116, label %119

116:                                              ; preds = %114
  %117 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %118 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %117)
  call void @exit(i32 noundef 1) #9
  unreachable

119:                                              ; preds = %114
  %120 = icmp eq i64 %.045.lcssa, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %119
  %122 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %123 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %122)
  call void @exit(i32 noundef 1) #9
  unreachable

124:                                              ; preds = %119
  br label %125

125:                                              ; preds = %170, %124
  %.134 = phi ptr [ %0, %124 ], [ %171, %170 ]
  %.028 = phi i64 [ 0, %124 ], [ %.129.lcssa, %170 ]
  %.024 = phi i8 [ 0, %124 ], [ %.125.lcssa, %170 ]
  %.16 = phi i64 [ 0, %124 ], [ %172, %170 ]
  %.01 = phi i32 [ -1, %124 ], [ %.1.lcssa, %170 ]
  %126 = icmp ult i64 %.16, %1
  br i1 %126, label %127, label %173

127:                                              ; preds = %125
  %128 = load i8, ptr %.134, align 1
  %129 = zext i8 %128 to i64
  %130 = getelementptr inbounds nuw i8, ptr %7, i64 %129
  %131 = load i8, ptr %130, align 1
  %132 = zext i8 %131 to i32
  %133 = add nsw i32 %132, -1
  %134 = shl nuw i32 1, %133
  %135 = sext i32 %134 to i64
  br label %136

136:                                              ; preds = %166, %127
  %.129 = phi i64 [ %.028, %127 ], [ %.230, %166 ]
  %.125 = phi i8 [ %.024, %127 ], [ %.327, %166 ]
  %.015 = phi i64 [ %135, %127 ], [ %167, %166 ]
  %.4 = phi i64 [ 0, %127 ], [ %168, %166 ]
  %.1 = phi i32 [ %.01, %127 ], [ %.2, %166 ]
  %137 = load i8, ptr %.134, align 1
  %138 = zext i8 %137 to i64
  %139 = getelementptr inbounds nuw i8, ptr %7, i64 %138
  %140 = load i8, ptr %139, align 1
  %141 = zext i8 %140 to i64
  %142 = icmp ult i64 %.4, %141
  br i1 %142, label %143, label %169

143:                                              ; preds = %136
  %144 = icmp eq i32 %.1, 7
  br i1 %144, label %145, label %153

145:                                              ; preds = %143
  %146 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %146, align 1
  %147 = add i64 %.129, 1
  %148 = icmp eq i64 %147, %1
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %151 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %150)
  call void @exit(i32 noundef 1) #9
  unreachable

152:                                              ; preds = %145
  br label %156

153:                                              ; preds = %143
  %154 = add nsw i32 %.1, 1
  %155 = shl i8 %.125, 1
  br label %156

156:                                              ; preds = %153, %152
  %.230 = phi i64 [ %147, %152 ], [ %.129, %153 ]
  %.226 = phi i8 [ 0, %152 ], [ %155, %153 ]
  %.2 = phi i32 [ 0, %152 ], [ %154, %153 ]
  %157 = load i8, ptr %.134, align 1
  %158 = zext i8 %157 to i64
  %159 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %158
  %160 = load i32, ptr %159, align 4
  %161 = zext i32 %160 to i64
  %162 = and i64 %.015, %161
  %.not5 = icmp eq i64 %162, 0
  br i1 %.not5, label %165, label %163

163:                                              ; preds = %156
  %164 = or disjoint i8 %.226, 1
  br label %165

165:                                              ; preds = %163, %156
  %.327 = phi i8 [ %164, %163 ], [ %.226, %156 ]
  br label %166

166:                                              ; preds = %165
  %167 = lshr i64 %.015, 1
  %168 = add i64 %.4, 1
  br label %136, !llvm.loop !15

169:                                              ; preds = %136
  %.129.lcssa = phi i64 [ %.129, %136 ]
  %.125.lcssa = phi i8 [ %.125, %136 ]
  %.1.lcssa = phi i32 [ %.1, %136 ]
  br label %170

170:                                              ; preds = %169
  %171 = getelementptr inbounds nuw i8, ptr %.134, i64 1
  %172 = add i64 %.16, 1
  br label %125, !llvm.loop !16

173:                                              ; preds = %125
  %.028.lcssa = phi i64 [ %.028, %125 ]
  %.024.lcssa = phi i8 [ %.024, %125 ]
  %.01.lcssa = phi i32 [ %.01, %125 ]
  %174 = sub nsw i32 7, %.01.lcssa
  %175 = zext i8 %.024.lcssa to i32
  %176 = shl i32 %175, %174
  %177 = trunc i32 %176 to i8
  %178 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %177, ptr %178, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %179

179:                                              ; preds = %218, %173
  %.27 = phi i64 [ 0, %173 ], [ %219, %218 ]
  %.0 = phi ptr [ %9, %173 ], [ %183, %218 ]
  %180 = icmp samesign ult i64 %.27, 256
  br i1 %180, label %181, label %220

181:                                              ; preds = %179
  %182 = trunc nuw i64 %.27 to i8
  store i8 %182, ptr %.0, align 1
  %183 = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %184 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.27
  %185 = load i32, ptr %184, align 4
  %186 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %187 = load i8, ptr %186, align 1
  %188 = zext i8 %187 to i32
  %189 = or i32 %185, %188
  %.not3 = icmp eq i32 %189, 0
  br i1 %.not3, label %217, label %190

190:                                              ; preds = %181
  %191 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %192 = load i8, ptr %191, align 1
  %193 = zext i8 %192 to i32
  %194 = add nsw i32 %193, -1
  %195 = shl nuw i32 1, %194
  %196 = sext i32 %195 to i64
  br label %197

197:                                              ; preds = %212, %190
  %.019 = phi i32 [ 0, %190 ], [ %.120, %212 ]
  %.116 = phi i64 [ %196, %190 ], [ %213, %212 ]
  %.5 = phi i64 [ 0, %190 ], [ %214, %212 ]
  %198 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %199 = load i8, ptr %198, align 1
  %200 = zext i8 %199 to i64
  %201 = icmp ult i64 %.5, %200
  br i1 %201, label %202, label %215

202:                                              ; preds = %197
  %203 = shl i32 %.019, 1
  %204 = or disjoint i32 %203, 1
  %205 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.27
  %206 = load i32, ptr %205, align 4
  %207 = zext i32 %206 to i64
  %208 = and i64 %.116, %207
  %.not4 = icmp eq i64 %208, 0
  br i1 %.not4, label %211, label %209

209:                                              ; preds = %202
  %210 = add i32 %203, 2
  br label %211

211:                                              ; preds = %209, %202
  %.120 = phi i32 [ %210, %209 ], [ %204, %202 ]
  br label %212

212:                                              ; preds = %211
  %213 = lshr i64 %.116, 1
  %214 = add i64 %.5, 1
  br label %197, !llvm.loop !17

215:                                              ; preds = %197
  %.019.lcssa = phi i32 [ %.019, %197 ]
  %216 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.27
  store i32 %.019.lcssa, ptr %216, align 4
  br label %217

217:                                              ; preds = %215, %181
  br label %218

218:                                              ; preds = %217
  %219 = add nuw nsw i64 %.27, 1
  br label %179, !llvm.loop !18

220:                                              ; preds = %179
  br label %221

221:                                              ; preds = %249, %220
  %.6 = phi i64 [ 1, %220 ], [ %250, %249 ]
  %222 = icmp samesign ult i64 %.6, 256
  br i1 %222, label %223, label %251

223:                                              ; preds = %221
  %224 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.6
  %225 = load i32, ptr %224, align 4
  %226 = getelementptr inbounds nuw i8, ptr %9, i64 %.6
  %227 = load i8, ptr %226, align 1
  br label %228

228:                                              ; preds = %236, %223
  %.38 = phi i64 [ %.6, %223 ], [ %245, %236 ]
  %.not2 = icmp eq i64 %.38, 0
  br i1 %.not2, label %234, label %229

229:                                              ; preds = %228
  %230 = getelementptr [4 x i8], ptr %8, i64 %.38
  %231 = getelementptr i8, ptr %230, i64 -4
  %232 = load i32, ptr %231, align 4
  %233 = icmp ugt i32 %232, %225
  br label %234

234:                                              ; preds = %229, %228
  %235 = phi i1 [ false, %228 ], [ %233, %229 ]
  br i1 %235, label %236, label %246

236:                                              ; preds = %234
  %237 = getelementptr [4 x i8], ptr %8, i64 %.38
  %238 = getelementptr i8, ptr %237, i64 -4
  %239 = load i32, ptr %238, align 4
  %240 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %239, ptr %240, align 4
  %241 = getelementptr i8, ptr %9, i64 %.38
  %242 = getelementptr i8, ptr %241, i64 -1
  %243 = load i8, ptr %242, align 1
  %244 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %243, ptr %244, align 1
  %245 = add i64 %.38, -1
  br label %228, !llvm.loop !19

246:                                              ; preds = %234
  %.38.lcssa = phi i64 [ %.38, %234 ]
  %247 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %225, ptr %247, align 4
  %248 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %227, ptr %248, align 1
  br label %249

249:                                              ; preds = %246
  %250 = add nuw nsw i64 %.6, 1
  br label %221, !llvm.loop !20

251:                                              ; preds = %221
  br label %252

252:                                              ; preds = %257, %251
  %.49 = phi i64 [ 0, %251 ], [ %258, %257 ]
  %253 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %254 = load i32, ptr %253, align 4
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %252
  br label %257

257:                                              ; preds = %256
  %258 = add i64 %.49, 1
  br label %252, !llvm.loop !21

259:                                              ; preds = %252
  %.49.lcssa = phi i64 [ %.49, %252 ]
  br label %260

260:                                              ; preds = %292, %259
  %.235 = phi ptr [ %0, %259 ], [ %.336, %292 ]
  %.031 = phi ptr [ %11, %259 ], [ %.132, %292 ]
  %.221 = phi i32 [ 0, %259 ], [ %.423, %292 ]
  %.217 = phi i64 [ 128, %259 ], [ %.318, %292 ]
  %.313 = phi i64 [ 0, %259 ], [ %.414, %292 ]
  %.7 = phi i64 [ %.49.lcssa, %259 ], [ %.9, %292 ]
  %261 = icmp ult i64 %.313, %1
  br i1 %261, label %262, label %293

262:                                              ; preds = %260
  %263 = shl i32 %.221, 1
  %264 = or disjoint i32 %263, 1
  %265 = load i8, ptr %.031, align 1
  %266 = zext i8 %265 to i64
  %267 = and i64 %.217, %266
  %.not1 = icmp eq i64 %267, 0
  br i1 %.not1, label %270, label %268

268:                                              ; preds = %262
  %269 = add i32 %263, 2
  br label %270

270:                                              ; preds = %268, %262
  %.322 = phi i32 [ %269, %268 ], [ %264, %262 ]
  br label %271

271:                                              ; preds = %275, %270
  %.8 = phi i64 [ %.7, %270 ], [ %276, %275 ]
  %272 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %273 = load i32, ptr %272, align 4
  %274 = icmp ult i32 %273, %.322
  br i1 %274, label %275, label %277

275:                                              ; preds = %271
  %276 = add i64 %.8, 1
  br label %271, !llvm.loop !22

277:                                              ; preds = %271
  %.8.lcssa = phi i64 [ %.8, %271 ]
  %278 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8.lcssa
  %279 = load i32, ptr %278, align 4
  %280 = icmp eq i32 %.322, %279
  br i1 %280, label %281, label %286

281:                                              ; preds = %277
  %282 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %283 = load i8, ptr %282, align 1
  store i8 %283, ptr %.235, align 1
  %284 = getelementptr inbounds nuw i8, ptr %.235, i64 1
  %285 = add i64 %.313, 1
  br label %286

286:                                              ; preds = %281, %277
  %.336 = phi ptr [ %284, %281 ], [ %.235, %277 ]
  %.423 = phi i32 [ 0, %281 ], [ %.322, %277 ]
  %.414 = phi i64 [ %285, %281 ], [ %.313, %277 ]
  %.9 = phi i64 [ %.49.lcssa, %281 ], [ %.8.lcssa, %277 ]
  %287 = icmp ugt i64 %.217, 1
  br i1 %287, label %288, label %290

288:                                              ; preds = %286
  %289 = lshr i64 %.217, 1
  br label %292

290:                                              ; preds = %286
  %291 = getelementptr inbounds nuw i8, ptr %.031, i64 1
  br label %292

292:                                              ; preds = %290, %288
  %.132 = phi ptr [ %.031, %288 ], [ %291, %290 ]
  %.318 = phi i64 [ %289, %288 ], [ 128, %290 ]
  br label %260, !llvm.loop !23

293:                                              ; preds = %260
  call void @free(ptr noundef %11) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal void @heap_adjust(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = sext i32 %3 to i64
  %6 = getelementptr [8 x i8], ptr %1, i64 %5
  %7 = getelementptr i8, ptr %6, i64 -8
  %8 = load i64, ptr %7, align 8
  br label %9

9:                                                ; preds = %41, %4
  %.01 = phi i32 [ %3, %4 ], [ %.0, %41 ]
  %10 = sdiv i32 %2, 2
  %.not = icmp sgt i32 %.01, %10
  br i1 %.not, label %.loopexit, label %11

11:                                               ; preds = %9
  %12 = shl nsw i32 %.01, 1
  %13 = icmp slt i32 %12, %2
  br i1 %13, label %14, label %29

14:                                               ; preds = %11
  %15 = sext i32 %12 to i64
  %16 = getelementptr [8 x i8], ptr %1, i64 %15
  %17 = getelementptr i8, ptr %16, i64 -8
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %18
  %20 = load i64, ptr %19, align 8
  %21 = sext i32 %12 to i64
  %22 = getelementptr inbounds [8 x i8], ptr %1, i64 %21
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %23
  %25 = load i64, ptr %24, align 8
  %26 = icmp ugt i64 %20, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = or disjoint i32 %12, 1
  br label %29

29:                                               ; preds = %27, %14, %11
  %.0 = phi i32 [ %28, %27 ], [ %12, %14 ], [ %12, %11 ]
  %sext = shl i64 %8, 32
  %30 = ashr exact i64 %sext, 29
  %31 = getelementptr inbounds i8, ptr %0, i64 %30
  %32 = load i64, ptr %31, align 8
  %33 = sext i32 %.0 to i64
  %34 = getelementptr [8 x i8], ptr %1, i64 %33
  %35 = getelementptr i8, ptr %34, i64 -8
  %36 = load i64, ptr %35, align 8
  %37 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %36
  %38 = load i64, ptr %37, align 8
  %39 = icmp ult i64 %32, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  %.01.lcssa2 = phi i32 [ %.01, %29 ]
  br label %49

41:                                               ; preds = %29
  %42 = sext i32 %.0 to i64
  %43 = getelementptr [8 x i8], ptr %1, i64 %42
  %44 = getelementptr i8, ptr %43, i64 -8
  %45 = load i64, ptr %44, align 8
  %46 = sext i32 %.01 to i64
  %47 = getelementptr [8 x i8], ptr %1, i64 %46
  %48 = getelementptr i8, ptr %47, i64 -8
  store i64 %45, ptr %48, align 8
  br label %9, !llvm.loop !24

.loopexit:                                        ; preds = %9
  %.01.lcssa = phi i32 [ %.01, %9 ]
  br label %49

49:                                               ; preds = %.loopexit, %40
  %.013 = phi i32 [ %.01.lcssa, %.loopexit ], [ %.01.lcssa2, %40 ]
  %sext1 = shl i64 %8, 32
  %50 = ashr exact i64 %sext1, 32
  %51 = sext i32 %.013 to i64
  %52 = getelementptr [8 x i8], ptr %1, i64 %51
  %53 = getelementptr i8, ptr %52, i64 -8
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
  br i1 %3, label %4, label %17

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %13, %4
  %.01 = phi i32 [ 1, %4 ], [ %14, %13 ]
  %6 = icmp sge i32 %.01, %0
  br i1 %6, label %.loopexit, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %9 = load ptr, ptr %8, align 8
  %10 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(4) @.str.4) #8
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %11, label %12

11:                                               ; preds = %7
  %.lcssa2 = phi i1 [ %6, %7 ]
  br label %15

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %12
  %14 = add nuw nsw i32 %.01, 1
  br label %5, !llvm.loop !25

.loopexit:                                        ; preds = %5
  %.lcssa = phi i1 [ %6, %5 ]
  br label %15

15:                                               ; preds = %.loopexit, %11
  %16 = phi i1 [ %.lcssa, %.loopexit ], [ %.lcssa2, %11 ]
  br label %17

17:                                               ; preds = %15, %2
  %.0 = phi i1 [ %16, %15 ], [ true, %2 ]
  %18 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %19

19:                                               ; preds = %22, %17
  %.12 = phi i32 [ 0, %17 ], [ %23, %22 ]
  %20 = icmp samesign ult i32 %.12, 30
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  call void @compdecomp(ptr noundef %18, i64 noundef 10000000)
  br label %22

22:                                               ; preds = %21
  %23 = add nuw nsw i32 %.12, 1
  br label %19, !llvm.loop !26

24:                                               ; preds = %19
  call void @free(ptr noundef %18) #8
  br i1 %.0, label %28, label %25

25:                                               ; preds = %24
  %26 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.5, double noundef 0.000000e+00) #8
  br label %31

28:                                               ; preds = %24
  %29 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.6, double noundef 0.000000e+00) #8
  br label %31

31:                                               ; preds = %28, %25
  %32 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %33 = call i32 @fflush(ptr noundef %32) #8
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
  %.neg = mul i32 %3, -127773
  %4 = add i32 %.neg, %2
  %5 = mul nsw i32 %4, 16807
  %.neg1 = mul nsw i32 %3, -2836
  %6 = add i32 %.neg1, %5
  store i32 %6, ptr @seed, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, ptr @seed, align 4
  %10 = add nsw i32 %9, 2147483647
  store i32 %10, ptr @seed, align 4
  br label %11

11:                                               ; preds = %8, %0
  %12 = load i32, ptr @seed, align 4
  %13 = srem i32 %12, 32
  %14 = sext i32 %13 to i64
  %15 = xor i32 %12, 123459876
  store i32 %15, ptr @seed, align 4
  ret i64 %14
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) #6

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }
attributes #9 = { cold noreturn nounwind }

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
