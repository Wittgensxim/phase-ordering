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

3:                                                ; preds = %8, %1
  %indvars.iv = phi i64 [ %indvars.iv.next, %8 ], [ 0, %1 ]
  %.01 = phi ptr [ %2, %1 ], [ %9, %8 ]
  %exitcond = icmp ne i64 %indvars.iv, %0
  br i1 %exitcond, label %4, label %10

4:                                                ; preds = %3
  %5 = call i64 @random4()
  %6 = getelementptr inbounds nuw i8, ptr @.str, i64 %5
  %7 = load i8, ptr %6, align 1
  store i8 %7, ptr %.01, align 1
  br label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %.01, i64 1
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
  %11 = call ptr @malloc(i64 noundef %10) #7
  %12 = add i64 %1, 1
  call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %12, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %3, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %4, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %5, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %6, i8 0, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %7, i8 0, i64 256, i1 false)
  br label %13

13:                                               ; preds = %20, %2
  %.033 = phi ptr [ %0, %2 ], [ %21, %20 ]
  %.02 = phi i64 [ 0, %2 ], [ %22, %20 ]
  %exitcond = icmp ne i64 %.02, %1
  br i1 %exitcond, label %14, label %23

14:                                               ; preds = %13
  %15 = load i8, ptr %.033, align 1
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %16
  %18 = load i64, ptr %17, align 8
  %19 = add i64 %18, 1
  store i64 %19, ptr %17, align 8
  br label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds nuw i8, ptr %.033, i64 1
  %22 = add i64 %.02, 1
  br label %13, !llvm.loop !9

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %32, %23
  %.010 = phi i64 [ 0, %23 ], [ %.111, %32 ]
  %.13 = phi i64 [ 0, %23 ], [ %33, %32 ]
  %exitcond15 = icmp ne i64 %.13, 256
  br i1 %exitcond15, label %25, label %34

25:                                               ; preds = %24
  %26 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.13
  %27 = load i64, ptr %26, align 8
  %.not8 = icmp eq i64 %27, 0
  br i1 %.not8, label %31, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.010
  store i64 %.13, ptr %29, align 8
  %30 = add i64 %.010, 1
  br label %31

31:                                               ; preds = %28, %25
  %.111 = phi i64 [ %30, %28 ], [ %.010, %25 ]
  br label %32

32:                                               ; preds = %31
  %33 = add nuw nsw i64 %.13, 1
  br label %24, !llvm.loop !10

34:                                               ; preds = %24
  %.010.lcssa = phi i64 [ %.010, %24 ]
  br label %35

35:                                               ; preds = %39, %34
  %.24 = phi i64 [ %.010.lcssa, %34 ], [ %40, %39 ]
  %.not = icmp eq i64 %.24, 0
  br i1 %.not, label %41, label %36

36:                                               ; preds = %35
  %37 = trunc i64 %.010.lcssa to i32
  %38 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %37, i32 noundef %38)
  br label %39

39:                                               ; preds = %36
  %40 = add i64 %.24, -1
  br label %35, !llvm.loop !11

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %44, %41
  %.212 = phi i64 [ %.010.lcssa, %41 ], [ %45, %44 ]
  %43 = icmp ugt i64 %.212, 1
  br i1 %43, label %44, label %67

44:                                               ; preds = %42
  %45 = add i64 %.212, -1
  %46 = load i64, ptr %4, align 16
  %47 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %45
  %48 = load i64, ptr %47, align 8
  store i64 %48, ptr %4, align 16
  %49 = trunc i64 %45 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %49, i32 noundef 1)
  %50 = load i64, ptr %4, align 16
  %51 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %50
  %52 = load i64, ptr %51, align 8
  %53 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %46
  %54 = load i64, ptr %53, align 8
  %55 = add i64 %52, %54
  %56 = getelementptr [8 x i8], ptr %3, i64 %.212
  %57 = getelementptr i8, ptr %56, i64 2040
  store i64 %55, ptr %57, align 8
  %58 = trunc i64 %.212 to i32
  %59 = add i32 %58, 255
  %60 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %46
  store i32 %59, ptr %60, align 4
  %61 = trunc i64 %.212 to i32
  %62 = sub i32 -255, %61
  %63 = load i64, ptr %4, align 16
  %64 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %63
  store i32 %62, ptr %64, align 4
  %65 = add i64 %.212, 255
  store i64 %65, ptr %4, align 16
  %66 = trunc i64 %45 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %66, i32 noundef 1)
  br label %42, !llvm.loop !12

67:                                               ; preds = %42
  %.212.lcssa = phi i64 [ %.212, %42 ]
  %68 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 1024
  store i32 0, ptr %69, align 4
  br label %70

70:                                               ; preds = %100, %67
  %.045 = phi i64 [ 0, %67 ], [ %.146, %100 ]
  %.042 = phi i64 [ 0, %67 ], [ %101, %100 ]
  %.039 = phi i64 [ 0, %67 ], [ %.140, %100 ]
  %exitcond16 = icmp ne i64 %.042, 256
  br i1 %exitcond16, label %71, label %102

71:                                               ; preds = %70
  %72 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.042
  %73 = load i64, ptr %72, align 8
  %.not6 = icmp eq i64 %73, 0
  br i1 %.not6, label %74, label %77

74:                                               ; preds = %71
  %75 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 0, ptr %75, align 4
  %76 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 0, ptr %76, align 1
  br label %99

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %84, %77
  %.043 = phi i64 [ 0, %77 ], [ %.144, %84 ]
  %.042.pn = phi i64 [ %.042, %77 ], [ %85, %84 ]
  %.05 = phi i64 [ 1, %77 ], [ %86, %84 ]
  %.3 = phi i64 [ 0, %77 ], [ %87, %84 ]
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.042.pn
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %88, label %79

79:                                               ; preds = %78
  %80 = icmp slt i32 %.037, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %79
  %82 = add i64 %.043, %.05
  %83 = sub nsw i32 0, %.037
  br label %84

84:                                               ; preds = %81, %79
  %.144 = phi i64 [ %82, %81 ], [ %.043, %79 ]
  %.138 = phi i32 [ %83, %81 ], [ %.037, %79 ]
  %85 = zext nneg i32 %.138 to i64
  %86 = shl i64 %.05, 1
  %87 = add i64 %.3, 1
  br label %78, !llvm.loop !13

88:                                               ; preds = %78
  %.043.lcssa = phi i64 [ %.043, %78 ]
  %.3.lcssa = phi i64 [ %.3, %78 ]
  %89 = trunc i64 %.043.lcssa to i32
  %90 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 %89, ptr %90, align 4
  %91 = trunc i64 %.3.lcssa to i8
  %92 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 %91, ptr %92, align 1
  %93 = icmp ugt i64 %.043.lcssa, %.045
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %95

95:                                               ; preds = %94, %88
  %.247 = phi i64 [ %.043.lcssa, %94 ], [ %.045, %88 ]
  %96 = icmp ugt i64 %.3.lcssa, %.039
  br i1 %96, label %97, label %98

97:                                               ; preds = %95
  br label %98

98:                                               ; preds = %97, %95
  %.241 = phi i64 [ %.3.lcssa, %97 ], [ %.039, %95 ]
  br label %99

99:                                               ; preds = %98, %74
  %.146 = phi i64 [ %.247, %98 ], [ %.045, %74 ]
  %.140 = phi i64 [ %.241, %98 ], [ %.039, %74 ]
  br label %100

100:                                              ; preds = %99
  %101 = add nuw nsw i64 %.042, 1
  br label %70, !llvm.loop !14

102:                                              ; preds = %70
  %.045.lcssa = phi i64 [ %.045, %70 ]
  %.039.lcssa = phi i64 [ %.039, %70 ]
  %103 = icmp ugt i64 %.039.lcssa, 32
  br i1 %103, label %104, label %107

104:                                              ; preds = %102
  %105 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %106 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %105)
  call void @exit(i32 noundef 1) #9
  unreachable

107:                                              ; preds = %102
  %108 = icmp eq i64 %.045.lcssa, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %107
  %110 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %111 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %110)
  call void @exit(i32 noundef 1) #9
  unreachable

112:                                              ; preds = %107
  br label %113

113:                                              ; preds = %157, %112
  %.134 = phi ptr [ %0, %112 ], [ %158, %157 ]
  %.028 = phi i64 [ 0, %112 ], [ %.129.lcssa, %157 ]
  %.024 = phi i8 [ 0, %112 ], [ %.125.lcssa, %157 ]
  %.16 = phi i64 [ 0, %112 ], [ %159, %157 ]
  %.01 = phi i32 [ -1, %112 ], [ %.1.lcssa, %157 ]
  %exitcond17 = icmp ne i64 %.16, %1
  br i1 %exitcond17, label %114, label %160

114:                                              ; preds = %113
  %115 = load i8, ptr %.134, align 1
  %116 = zext i8 %115 to i64
  %117 = getelementptr inbounds nuw i8, ptr %7, i64 %116
  %118 = load i8, ptr %117, align 1
  %119 = zext i8 %118 to i32
  %120 = add nsw i32 %119, -1
  %121 = shl nuw i32 1, %120
  %122 = sext i32 %121 to i64
  br label %123

123:                                              ; preds = %153, %114
  %.129 = phi i64 [ %.028, %114 ], [ %.230, %153 ]
  %.125 = phi i8 [ %.024, %114 ], [ %.327, %153 ]
  %.015 = phi i64 [ %122, %114 ], [ %154, %153 ]
  %.4 = phi i64 [ 0, %114 ], [ %155, %153 ]
  %.1 = phi i32 [ %.01, %114 ], [ %.2, %153 ]
  %124 = load i8, ptr %.134, align 1
  %125 = zext i8 %124 to i64
  %126 = getelementptr inbounds nuw i8, ptr %7, i64 %125
  %127 = load i8, ptr %126, align 1
  %128 = zext i8 %127 to i64
  %129 = icmp samesign ult i64 %.4, %128
  br i1 %129, label %130, label %156

130:                                              ; preds = %123
  %131 = icmp eq i32 %.1, 7
  br i1 %131, label %132, label %140

132:                                              ; preds = %130
  %133 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %133, align 1
  %134 = add i64 %.129, 1
  %135 = icmp eq i64 %134, %1
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %138 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %137)
  call void @exit(i32 noundef 1) #9
  unreachable

139:                                              ; preds = %132
  br label %143

140:                                              ; preds = %130
  %141 = add nsw i32 %.1, 1
  %142 = shl i8 %.125, 1
  br label %143

143:                                              ; preds = %140, %139
  %.230 = phi i64 [ %134, %139 ], [ %.129, %140 ]
  %.226 = phi i8 [ 0, %139 ], [ %142, %140 ]
  %.2 = phi i32 [ 0, %139 ], [ %141, %140 ]
  %144 = load i8, ptr %.134, align 1
  %145 = zext i8 %144 to i64
  %146 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %145
  %147 = load i32, ptr %146, align 4
  %148 = zext i32 %147 to i64
  %149 = and i64 %.015, %148
  %.not5 = icmp eq i64 %149, 0
  br i1 %.not5, label %152, label %150

150:                                              ; preds = %143
  %151 = or disjoint i8 %.226, 1
  br label %152

152:                                              ; preds = %150, %143
  %.327 = phi i8 [ %151, %150 ], [ %.226, %143 ]
  br label %153

153:                                              ; preds = %152
  %154 = lshr i64 %.015, 1
  %155 = add nuw nsw i64 %.4, 1
  br label %123, !llvm.loop !15

156:                                              ; preds = %123
  %.129.lcssa = phi i64 [ %.129, %123 ]
  %.125.lcssa = phi i8 [ %.125, %123 ]
  %.1.lcssa = phi i32 [ %.1, %123 ]
  br label %157

157:                                              ; preds = %156
  %158 = getelementptr inbounds nuw i8, ptr %.134, i64 1
  %159 = add i64 %.16, 1
  br label %113, !llvm.loop !16

160:                                              ; preds = %113
  %.028.lcssa = phi i64 [ %.028, %113 ]
  %.024.lcssa = phi i8 [ %.024, %113 ]
  %.01.lcssa = phi i32 [ %.01, %113 ]
  %161 = sub nsw i32 7, %.01.lcssa
  %162 = zext i8 %.024.lcssa to i32
  %163 = shl i32 %162, %161
  %164 = trunc i32 %163 to i8
  %165 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %164, ptr %165, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %166

166:                                              ; preds = %204, %160
  %.27 = phi i64 [ 0, %160 ], [ %205, %204 ]
  %.0 = phi ptr [ %9, %160 ], [ %169, %204 ]
  %exitcond18 = icmp ne i64 %.27, 256
  br i1 %exitcond18, label %167, label %206

167:                                              ; preds = %166
  %168 = trunc nuw i64 %.27 to i8
  store i8 %168, ptr %.0, align 1
  %169 = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %170 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.27
  %171 = load i32, ptr %170, align 4
  %172 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %173 = load i8, ptr %172, align 1
  %174 = zext i8 %173 to i32
  %175 = or i32 %171, %174
  %.not3 = icmp eq i32 %175, 0
  br i1 %.not3, label %203, label %176

176:                                              ; preds = %167
  %177 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %178 = load i8, ptr %177, align 1
  %179 = zext i8 %178 to i32
  %180 = add nsw i32 %179, -1
  %181 = shl nuw i32 1, %180
  %182 = sext i32 %181 to i64
  br label %183

183:                                              ; preds = %198, %176
  %.019 = phi i32 [ 0, %176 ], [ %.120, %198 ]
  %.116 = phi i64 [ %182, %176 ], [ %199, %198 ]
  %.5 = phi i64 [ 0, %176 ], [ %200, %198 ]
  %184 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %185 = load i8, ptr %184, align 1
  %186 = zext i8 %185 to i64
  %187 = icmp samesign ult i64 %.5, %186
  br i1 %187, label %188, label %201

188:                                              ; preds = %183
  %189 = shl i32 %.019, 1
  %190 = or disjoint i32 %189, 1
  %191 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.27
  %192 = load i32, ptr %191, align 4
  %193 = zext i32 %192 to i64
  %194 = and i64 %.116, %193
  %.not4 = icmp eq i64 %194, 0
  br i1 %.not4, label %197, label %195

195:                                              ; preds = %188
  %196 = add i32 %189, 2
  br label %197

197:                                              ; preds = %195, %188
  %.120 = phi i32 [ %196, %195 ], [ %190, %188 ]
  br label %198

198:                                              ; preds = %197
  %199 = lshr i64 %.116, 1
  %200 = add nuw nsw i64 %.5, 1
  br label %183, !llvm.loop !17

201:                                              ; preds = %183
  %.019.lcssa = phi i32 [ %.019, %183 ]
  %202 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.27
  store i32 %.019.lcssa, ptr %202, align 4
  br label %203

203:                                              ; preds = %201, %167
  br label %204

204:                                              ; preds = %203
  %205 = add nuw nsw i64 %.27, 1
  br label %166, !llvm.loop !18

206:                                              ; preds = %166
  br label %207

207:                                              ; preds = %234, %206
  %.6 = phi i64 [ 1, %206 ], [ %235, %234 ]
  %exitcond19 = icmp ne i64 %.6, 256
  br i1 %exitcond19, label %208, label %236

208:                                              ; preds = %207
  %209 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.6
  %210 = load i32, ptr %209, align 4
  %211 = getelementptr inbounds nuw i8, ptr %9, i64 %.6
  %212 = load i8, ptr %211, align 1
  br label %213

213:                                              ; preds = %221, %208
  %.38 = phi i64 [ %.6, %208 ], [ %230, %221 ]
  %.not2 = icmp eq i64 %.38, 0
  br i1 %.not2, label %219, label %214

214:                                              ; preds = %213
  %215 = getelementptr [4 x i8], ptr %8, i64 %.38
  %216 = getelementptr i8, ptr %215, i64 -4
  %217 = load i32, ptr %216, align 4
  %218 = icmp ugt i32 %217, %210
  br label %219

219:                                              ; preds = %214, %213
  %220 = phi i1 [ false, %213 ], [ %218, %214 ]
  br i1 %220, label %221, label %231

221:                                              ; preds = %219
  %222 = getelementptr [4 x i8], ptr %8, i64 %.38
  %223 = getelementptr i8, ptr %222, i64 -4
  %224 = load i32, ptr %223, align 4
  %225 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %224, ptr %225, align 4
  %226 = getelementptr i8, ptr %9, i64 %.38
  %227 = getelementptr i8, ptr %226, i64 -1
  %228 = load i8, ptr %227, align 1
  %229 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %228, ptr %229, align 1
  %230 = add i64 %.38, -1
  br label %213, !llvm.loop !19

231:                                              ; preds = %219
  %.38.lcssa = phi i64 [ %.38, %219 ]
  %232 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %210, ptr %232, align 4
  %233 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %212, ptr %233, align 1
  br label %234

234:                                              ; preds = %231
  %235 = add nuw nsw i64 %.6, 1
  br label %207, !llvm.loop !20

236:                                              ; preds = %207
  br label %237

237:                                              ; preds = %242, %236
  %.49 = phi i64 [ 0, %236 ], [ %243, %242 ]
  %238 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %239 = load i32, ptr %238, align 4
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %237
  br label %242

242:                                              ; preds = %241
  %243 = add i64 %.49, 1
  br label %237, !llvm.loop !21

244:                                              ; preds = %237
  %.49.lcssa = phi i64 [ %.49, %237 ]
  br label %245

245:                                              ; preds = %277, %244
  %.235 = phi ptr [ %0, %244 ], [ %.336, %277 ]
  %.031 = phi ptr [ %11, %244 ], [ %.132, %277 ]
  %.221 = phi i32 [ 0, %244 ], [ %.423, %277 ]
  %.217 = phi i64 [ 128, %244 ], [ %.318, %277 ]
  %.313 = phi i64 [ 0, %244 ], [ %.414, %277 ]
  %.7 = phi i64 [ %.49.lcssa, %244 ], [ %.9, %277 ]
  %246 = icmp ult i64 %.313, %1
  br i1 %246, label %247, label %278

247:                                              ; preds = %245
  %248 = shl i32 %.221, 1
  %249 = or disjoint i32 %248, 1
  %250 = load i8, ptr %.031, align 1
  %251 = zext i8 %250 to i64
  %252 = and i64 %.217, %251
  %.not1 = icmp eq i64 %252, 0
  br i1 %.not1, label %255, label %253

253:                                              ; preds = %247
  %254 = add i32 %248, 2
  br label %255

255:                                              ; preds = %253, %247
  %.322 = phi i32 [ %254, %253 ], [ %249, %247 ]
  br label %256

256:                                              ; preds = %260, %255
  %.8 = phi i64 [ %.7, %255 ], [ %261, %260 ]
  %257 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %258 = load i32, ptr %257, align 4
  %259 = icmp ult i32 %258, %.322
  br i1 %259, label %260, label %262

260:                                              ; preds = %256
  %261 = add i64 %.8, 1
  br label %256, !llvm.loop !22

262:                                              ; preds = %256
  %.8.lcssa = phi i64 [ %.8, %256 ]
  %263 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8.lcssa
  %264 = load i32, ptr %263, align 4
  %265 = icmp eq i32 %.322, %264
  br i1 %265, label %266, label %271

266:                                              ; preds = %262
  %267 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %268 = load i8, ptr %267, align 1
  store i8 %268, ptr %.235, align 1
  %269 = getelementptr inbounds nuw i8, ptr %.235, i64 1
  %270 = add i64 %.313, 1
  br label %271

271:                                              ; preds = %266, %262
  %.336 = phi ptr [ %269, %266 ], [ %.235, %262 ]
  %.423 = phi i32 [ 0, %266 ], [ %.322, %262 ]
  %.414 = phi i64 [ %270, %266 ], [ %.313, %262 ]
  %.9 = phi i64 [ %.49.lcssa, %266 ], [ %.8.lcssa, %262 ]
  %272 = icmp ugt i64 %.217, 1
  br i1 %272, label %273, label %275

273:                                              ; preds = %271
  %274 = lshr i64 %.217, 1
  br label %277

275:                                              ; preds = %271
  %276 = getelementptr inbounds nuw i8, ptr %.031, i64 1
  br label %277

277:                                              ; preds = %275, %273
  %.132 = phi ptr [ %.031, %273 ], [ %276, %275 ]
  %.318 = phi i64 [ %274, %273 ], [ 128, %275 ]
  br label %245, !llvm.loop !23

278:                                              ; preds = %245
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
  %exitcond = icmp eq i32 %.01, %0
  br i1 %exitcond, label %.loopexit, label %7

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
  %14 = add nuw i32 %.01, 1
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

19:                                               ; preds = %21, %17
  %.12 = phi i32 [ 0, %17 ], [ %22, %21 ]
  %exitcond3 = icmp ne i32 %.12, 30
  br i1 %exitcond3, label %20, label %23

20:                                               ; preds = %19
  call void @compdecomp(ptr noundef %18, i64 noundef 10000000)
  br label %21

21:                                               ; preds = %20
  %22 = add nuw nsw i32 %.12, 1
  br label %19, !llvm.loop !26

23:                                               ; preds = %19
  call void @free(ptr noundef %18) #8
  br i1 %.0, label %27, label %24

24:                                               ; preds = %23
  %25 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.5, double noundef 0.000000e+00) #8
  br label %30

27:                                               ; preds = %23
  %28 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.6, double noundef 0.000000e+00) #8
  br label %30

30:                                               ; preds = %27, %24
  %31 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %32 = call i32 @fflush(ptr noundef %31) #8
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
