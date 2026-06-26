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
  call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %10, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %3, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %4, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %5, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %6, i8 0, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %7, i8 0, i64 256, i1 false)
  br label %12

12:                                               ; preds = %20, %2
  %.033 = phi ptr [ %0, %2 ], [ %21, %20 ]
  %.02 = phi i64 [ 0, %2 ], [ %22, %20 ]
  %13 = icmp ult i64 %.02, %1
  br i1 %13, label %14, label %23

14:                                               ; preds = %12
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
  br label %12, !llvm.loop !9

23:                                               ; preds = %12
  br label %24

24:                                               ; preds = %33, %23
  %.010 = phi i64 [ 0, %23 ], [ %.111, %33 ]
  %.13 = phi i64 [ 0, %23 ], [ %34, %33 ]
  %25 = icmp samesign ult i64 %.13, 256
  br i1 %25, label %26, label %35

26:                                               ; preds = %24
  %27 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.13
  %28 = load i64, ptr %27, align 8
  %.not8 = icmp eq i64 %28, 0
  br i1 %.not8, label %32, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.010
  store i64 %.13, ptr %30, align 8
  %31 = add i64 %.010, 1
  br label %32

32:                                               ; preds = %29, %26
  %.111 = phi i64 [ %31, %29 ], [ %.010, %26 ]
  br label %33

33:                                               ; preds = %32
  %34 = add nuw nsw i64 %.13, 1
  br label %24, !llvm.loop !10

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %40, %35
  %.24 = phi i64 [ %.010, %35 ], [ %41, %40 ]
  %.not = icmp eq i64 %.24, 0
  br i1 %.not, label %42, label %37

37:                                               ; preds = %36
  %38 = trunc i64 %.010 to i32
  %39 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %38, i32 noundef %39)
  br label %40

40:                                               ; preds = %37
  %41 = add i64 %.24, -1
  br label %36, !llvm.loop !11

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %45, %42
  %.212 = phi i64 [ %.010, %42 ], [ %46, %45 ]
  %44 = icmp ugt i64 %.212, 1
  br i1 %44, label %45, label %65

45:                                               ; preds = %43
  %46 = add i64 %.212, -1
  %47 = load i64, ptr %4, align 16
  %48 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %46
  %49 = load i64, ptr %48, align 8
  store i64 %49, ptr %4, align 16
  %50 = trunc i64 %46 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %50, i32 noundef 1)
  %51 = load i64, ptr %4, align 16
  %52 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %51
  %53 = load i64, ptr %52, align 8
  %54 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %47
  %55 = load i64, ptr %54, align 8
  %56 = add i64 %53, %55
  %57 = add i64 %.212, 255
  %58 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %57
  store i64 %56, ptr %58, align 8
  %59 = trunc i64 %57 to i32
  %60 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %47
  store i32 %59, ptr %60, align 4
  %61 = trunc i64 %.212 to i32
  %62 = sub i32 -255, %61
  %63 = load i64, ptr %4, align 16
  %64 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %63
  store i32 %62, ptr %64, align 4
  store i64 %57, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %50, i32 noundef 1)
  br label %43, !llvm.loop !12

65:                                               ; preds = %43
  %66 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 1024
  store i32 0, ptr %67, align 4
  br label %68

68:                                               ; preds = %99, %65
  %.045 = phi i64 [ 0, %65 ], [ %.146, %99 ]
  %.042 = phi i64 [ 0, %65 ], [ %100, %99 ]
  %.039 = phi i64 [ 0, %65 ], [ %.140, %99 ]
  %69 = icmp samesign ult i64 %.042, 256
  br i1 %69, label %70, label %101

70:                                               ; preds = %68
  %71 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.042
  %72 = load i64, ptr %71, align 8
  %.not6 = icmp eq i64 %72, 0
  br i1 %.not6, label %73, label %76

73:                                               ; preds = %70
  %74 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 0, ptr %74, align 4
  %75 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 0, ptr %75, align 1
  br label %98

76:                                               ; preds = %70
  br label %77

77:                                               ; preds = %83, %76
  %.043 = phi i64 [ 0, %76 ], [ %.144, %83 ]
  %.042.pn = phi i64 [ %.042, %76 ], [ %84, %83 ]
  %.05 = phi i64 [ 1, %76 ], [ %85, %83 ]
  %.3 = phi i64 [ 0, %76 ], [ %86, %83 ]
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.042.pn
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %87, label %78

78:                                               ; preds = %77
  %79 = icmp slt i32 %.037, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %78
  %81 = add i64 %.043, %.05
  %82 = sub nsw i32 0, %.037
  br label %83

83:                                               ; preds = %80, %78
  %.144 = phi i64 [ %81, %80 ], [ %.043, %78 ]
  %.138 = phi i32 [ %82, %80 ], [ %.037, %78 ]
  %84 = zext nneg i32 %.138 to i64
  %85 = shl i64 %.05, 1
  %86 = add i64 %.3, 1
  br label %77, !llvm.loop !13

87:                                               ; preds = %77
  %88 = trunc i64 %.043 to i32
  %89 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 %88, ptr %89, align 4
  %90 = trunc i64 %.3 to i8
  %91 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 %90, ptr %91, align 1
  %92 = icmp ugt i64 %.043, %.045
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %94

94:                                               ; preds = %93, %87
  %.247 = phi i64 [ %.043, %93 ], [ %.045, %87 ]
  %95 = icmp ugt i64 %.3, %.039
  br i1 %95, label %96, label %97

96:                                               ; preds = %94
  br label %97

97:                                               ; preds = %96, %94
  %.241 = phi i64 [ %.3, %96 ], [ %.039, %94 ]
  br label %98

98:                                               ; preds = %97, %73
  %.146 = phi i64 [ %.247, %97 ], [ %.045, %73 ]
  %.140 = phi i64 [ %.241, %97 ], [ %.039, %73 ]
  br label %99

99:                                               ; preds = %98
  %100 = add nuw nsw i64 %.042, 1
  br label %68, !llvm.loop !14

101:                                              ; preds = %68
  %102 = icmp ugt i64 %.039, 32
  br i1 %102, label %103, label %106

103:                                              ; preds = %101
  %104 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %105 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %104)
  call void @exit(i32 noundef 1) #9
  unreachable

106:                                              ; preds = %101
  %107 = icmp eq i64 %.045, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %106
  %109 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %110 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %109)
  call void @exit(i32 noundef 1) #9
  unreachable

111:                                              ; preds = %106
  br label %112

112:                                              ; preds = %157, %111
  %.134 = phi ptr [ %0, %111 ], [ %158, %157 ]
  %.028 = phi i64 [ 0, %111 ], [ %.129, %157 ]
  %.024 = phi i8 [ 0, %111 ], [ %.125, %157 ]
  %.16 = phi i64 [ 0, %111 ], [ %159, %157 ]
  %.01 = phi i32 [ -1, %111 ], [ %.1, %157 ]
  %113 = icmp ult i64 %.16, %1
  br i1 %113, label %114, label %160

114:                                              ; preds = %112
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
  %129 = icmp ult i64 %.4, %128
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
  %155 = add i64 %.4, 1
  br label %123, !llvm.loop !15

156:                                              ; preds = %123
  br label %157

157:                                              ; preds = %156
  %158 = getelementptr inbounds nuw i8, ptr %.134, i64 1
  %159 = add i64 %.16, 1
  br label %112, !llvm.loop !16

160:                                              ; preds = %112
  %161 = sub nsw i32 7, %.01
  %162 = zext i8 %.024 to i32
  %163 = shl i32 %162, %161
  %164 = trunc i32 %163 to i8
  %165 = getelementptr inbounds nuw i8, ptr %11, i64 %.028
  store i8 %164, ptr %165, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %166

166:                                              ; preds = %200, %160
  %.27 = phi i64 [ 0, %160 ], [ %201, %200 ]
  %.0 = phi ptr [ %9, %160 ], [ %170, %200 ]
  %167 = icmp samesign ult i64 %.27, 256
  br i1 %167, label %168, label %202

168:                                              ; preds = %166
  %169 = trunc nuw i64 %.27 to i8
  store i8 %169, ptr %.0, align 1
  %170 = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %171 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.27
  %172 = load i32, ptr %171, align 4
  %173 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %174 = load i8, ptr %173, align 1
  %175 = zext i8 %174 to i32
  %176 = or i32 %172, %175
  %.not3 = icmp eq i32 %176, 0
  br i1 %.not3, label %199, label %177

177:                                              ; preds = %168
  %178 = add nsw i32 %175, -1
  %179 = shl nuw i32 1, %178
  %180 = sext i32 %179 to i64
  br label %181

181:                                              ; preds = %194, %177
  %.019 = phi i32 [ 0, %177 ], [ %.120, %194 ]
  %.116 = phi i64 [ %180, %177 ], [ %195, %194 ]
  %.5 = phi i64 [ 0, %177 ], [ %196, %194 ]
  %182 = load i8, ptr %173, align 1
  %183 = zext i8 %182 to i64
  %184 = icmp ult i64 %.5, %183
  br i1 %184, label %185, label %197

185:                                              ; preds = %181
  %186 = shl i32 %.019, 1
  %187 = or disjoint i32 %186, 1
  %188 = load i32, ptr %171, align 4
  %189 = zext i32 %188 to i64
  %190 = and i64 %.116, %189
  %.not4 = icmp eq i64 %190, 0
  br i1 %.not4, label %193, label %191

191:                                              ; preds = %185
  %192 = add i32 %186, 2
  br label %193

193:                                              ; preds = %191, %185
  %.120 = phi i32 [ %192, %191 ], [ %187, %185 ]
  br label %194

194:                                              ; preds = %193
  %195 = lshr i64 %.116, 1
  %196 = add i64 %.5, 1
  br label %181, !llvm.loop !17

197:                                              ; preds = %181
  %198 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.27
  store i32 %.019, ptr %198, align 4
  br label %199

199:                                              ; preds = %197, %168
  br label %200

200:                                              ; preds = %199
  %201 = add nuw nsw i64 %.27, 1
  br label %166, !llvm.loop !18

202:                                              ; preds = %166
  br label %203

203:                                              ; preds = %230, %202
  %.6 = phi i64 [ 1, %202 ], [ %231, %230 ]
  %204 = icmp samesign ult i64 %.6, 256
  br i1 %204, label %205, label %232

205:                                              ; preds = %203
  %206 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.6
  %207 = load i32, ptr %206, align 4
  %208 = getelementptr inbounds nuw i8, ptr %9, i64 %.6
  %209 = load i8, ptr %208, align 1
  br label %210

210:                                              ; preds = %218, %205
  %.38 = phi i64 [ %.6, %205 ], [ %226, %218 ]
  %.not2 = icmp eq i64 %.38, 0
  br i1 %.not2, label %216, label %211

211:                                              ; preds = %210
  %212 = getelementptr [4 x i8], ptr %8, i64 %.38
  %213 = getelementptr i8, ptr %212, i64 -4
  %214 = load i32, ptr %213, align 4
  %215 = icmp ugt i32 %214, %207
  br label %216

216:                                              ; preds = %211, %210
  %217 = phi i1 [ false, %210 ], [ %215, %211 ]
  br i1 %217, label %218, label %227

218:                                              ; preds = %216
  %219 = add i64 %.38, -1
  %220 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %219
  %221 = load i32, ptr %220, align 4
  %222 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %221, ptr %222, align 4
  %223 = getelementptr inbounds nuw i8, ptr %9, i64 %219
  %224 = load i8, ptr %223, align 1
  %225 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %224, ptr %225, align 1
  %226 = add i64 %.38, -1
  br label %210, !llvm.loop !19

227:                                              ; preds = %216
  %228 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %207, ptr %228, align 4
  %229 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %209, ptr %229, align 1
  br label %230

230:                                              ; preds = %227
  %231 = add nuw nsw i64 %.6, 1
  br label %203, !llvm.loop !20

232:                                              ; preds = %203
  br label %233

233:                                              ; preds = %238, %232
  %.49 = phi i64 [ 0, %232 ], [ %239, %238 ]
  %234 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %235 = load i32, ptr %234, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %233
  br label %238

238:                                              ; preds = %237
  %239 = add i64 %.49, 1
  br label %233, !llvm.loop !21

240:                                              ; preds = %233
  br label %241

241:                                              ; preds = %271, %240
  %.235 = phi ptr [ %0, %240 ], [ %.336, %271 ]
  %.031 = phi ptr [ %11, %240 ], [ %.132, %271 ]
  %.221 = phi i32 [ 0, %240 ], [ %.423, %271 ]
  %.217 = phi i64 [ 128, %240 ], [ %.318, %271 ]
  %.313 = phi i64 [ 0, %240 ], [ %.414, %271 ]
  %.7 = phi i64 [ %.49, %240 ], [ %.9, %271 ]
  %242 = icmp ult i64 %.313, %1
  br i1 %242, label %243, label %272

243:                                              ; preds = %241
  %244 = shl i32 %.221, 1
  %245 = or disjoint i32 %244, 1
  %246 = load i8, ptr %.031, align 1
  %247 = zext i8 %246 to i64
  %248 = and i64 %.217, %247
  %.not1 = icmp eq i64 %248, 0
  br i1 %.not1, label %251, label %249

249:                                              ; preds = %243
  %250 = add i32 %244, 2
  br label %251

251:                                              ; preds = %249, %243
  %.322 = phi i32 [ %250, %249 ], [ %245, %243 ]
  br label %252

252:                                              ; preds = %256, %251
  %.8 = phi i64 [ %.7, %251 ], [ %257, %256 ]
  %253 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %254 = load i32, ptr %253, align 4
  %255 = icmp ult i32 %254, %.322
  br i1 %255, label %256, label %258

256:                                              ; preds = %252
  %257 = add i64 %.8, 1
  br label %252, !llvm.loop !22

258:                                              ; preds = %252
  %259 = icmp eq i32 %.322, %254
  br i1 %259, label %260, label %265

260:                                              ; preds = %258
  %261 = getelementptr inbounds nuw i8, ptr %9, i64 %.8
  %262 = load i8, ptr %261, align 1
  store i8 %262, ptr %.235, align 1
  %263 = getelementptr inbounds nuw i8, ptr %.235, i64 1
  %264 = add i64 %.313, 1
  br label %265

265:                                              ; preds = %260, %258
  %.336 = phi ptr [ %263, %260 ], [ %.235, %258 ]
  %.423 = phi i32 [ 0, %260 ], [ %.322, %258 ]
  %.414 = phi i64 [ %264, %260 ], [ %.313, %258 ]
  %.9 = phi i64 [ %.49, %260 ], [ %.8, %258 ]
  %266 = icmp ugt i64 %.217, 1
  br i1 %266, label %267, label %269

267:                                              ; preds = %265
  %268 = lshr i64 %.217, 1
  br label %271

269:                                              ; preds = %265
  %270 = getelementptr inbounds nuw i8, ptr %.031, i64 1
  br label %271

271:                                              ; preds = %269, %267
  %.132 = phi ptr [ %.031, %267 ], [ %270, %269 ]
  %.318 = phi i64 [ %268, %267 ], [ 128, %269 ]
  br label %241, !llvm.loop !23

272:                                              ; preds = %241
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
  br i1 %.not, label %45, label %11

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
  br label %45

41:                                               ; preds = %29
  %42 = sext i32 %.01 to i64
  %43 = getelementptr [8 x i8], ptr %1, i64 %42
  %44 = getelementptr i8, ptr %43, i64 -8
  store i64 %36, ptr %44, align 8
  br label %9, !llvm.loop !24

45:                                               ; preds = %40, %9
  %sext1 = shl i64 %8, 32
  %46 = ashr exact i64 %sext1, 32
  %47 = sext i32 %.01 to i64
  %48 = getelementptr [8 x i8], ptr %1, i64 %47
  %49 = getelementptr i8, ptr %48, i64 -8
  store i64 %46, ptr %49, align 8
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
  %6 = icmp sge i32 %.01, %0
  br i1 %6, label %15, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %9 = load ptr, ptr %8, align 8
  %10 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(4) @.str.4) #8
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %11, label %12

11:                                               ; preds = %7
  br label %15

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %12
  %14 = add nuw nsw i32 %.01, 1
  br label %5, !llvm.loop !25

15:                                               ; preds = %11, %5
  br label %16

16:                                               ; preds = %15, %2
  %.0 = phi i1 [ %6, %15 ], [ true, %2 ]
  %17 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %18

18:                                               ; preds = %21, %16
  %.12 = phi i32 [ 0, %16 ], [ %22, %21 ]
  %19 = icmp samesign ult i32 %.12, 30
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  call void @compdecomp(ptr noundef %17, i64 noundef 10000000)
  br label %21

21:                                               ; preds = %20
  %22 = add nuw nsw i32 %.12, 1
  br label %18, !llvm.loop !26

23:                                               ; preds = %18
  call void @free(ptr noundef %17) #8
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
  %3 = sdiv i32 %2, 127773
  %.neg = mul i32 %3, -127773
  %4 = add i32 %.neg, %2
  %5 = mul nsw i32 %4, 16807
  %.neg1 = mul nsw i32 %3, -2836
  %6 = add i32 %.neg1, %5
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = add nsw i32 %6, 2147483647
  br label %10

10:                                               ; preds = %8, %0
  %storemerge = phi i32 [ %9, %8 ], [ %6, %0 ]
  %11 = srem i32 %storemerge, 32
  %12 = sext i32 %11 to i64
  %13 = xor i32 %storemerge, 123459876
  store i32 %13, ptr @seed, align 4
  ret i64 %12
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
