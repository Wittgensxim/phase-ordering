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

25:                                               ; preds = %34, %24
  %.010 = phi i64 [ 0, %24 ], [ %.111, %34 ]
  %.13 = phi i64 [ 0, %24 ], [ %35, %34 ]
  %26 = icmp samesign ult i64 %.13, 256
  br i1 %26, label %27, label %36

27:                                               ; preds = %25
  %28 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.13
  %29 = load i64, ptr %28, align 8
  %.not14 = icmp eq i64 %29, 0
  br i1 %.not14, label %33, label %30

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
  br label %25, !llvm.loop !10

36:                                               ; preds = %25
  %37 = trunc i64 %.010 to i32
  br label %38

38:                                               ; preds = %41, %36
  %.24 = phi i64 [ %.010, %36 ], [ %42, %41 ]
  %.not = icmp eq i64 %.24, 0
  br i1 %.not, label %43, label %39

39:                                               ; preds = %38
  %40 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %37, i32 noundef %40)
  br label %41

41:                                               ; preds = %39
  %42 = add i64 %.24, -1
  br label %38, !llvm.loop !11

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %46, %43
  %.212 = phi i64 [ %.010, %43 ], [ %47, %46 ]
  %45 = icmp ugt i64 %.212, 1
  br i1 %45, label %46, label %69

46:                                               ; preds = %44
  %47 = add i64 %.212, -1
  %48 = load i64, ptr %4, align 16
  %49 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %47
  %50 = load i64, ptr %49, align 8
  store i64 %50, ptr %4, align 16
  %51 = trunc i64 %47 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %51, i32 noundef 1)
  %52 = load i64, ptr %4, align 16
  %53 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %52
  %54 = load i64, ptr %53, align 8
  %55 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %48
  %56 = load i64, ptr %55, align 8
  %57 = add i64 %54, %56
  %58 = getelementptr [8 x i8], ptr %3, i64 %.212
  %59 = getelementptr i8, ptr %58, i64 2040
  store i64 %57, ptr %59, align 8
  %60 = trunc i64 %.212 to i32
  %61 = add i32 %60, 255
  %62 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %48
  store i32 %61, ptr %62, align 4
  %63 = trunc i64 %.212 to i32
  %64 = sub i32 -255, %63
  %65 = load i64, ptr %4, align 16
  %66 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %65
  store i32 %64, ptr %66, align 4
  %67 = add i64 %.212, 255
  store i64 %67, ptr %4, align 16
  %68 = trunc i64 %47 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %68, i32 noundef 1)
  br label %44, !llvm.loop !12

69:                                               ; preds = %44
  %70 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 1024
  store i32 0, ptr %71, align 4
  br label %72

72:                                               ; preds = %103, %69
  %.045 = phi i64 [ 0, %69 ], [ %.146, %103 ]
  %.042 = phi i64 [ 0, %69 ], [ %104, %103 ]
  %.039 = phi i64 [ 0, %69 ], [ %.140, %103 ]
  %73 = icmp samesign ult i64 %.042, 256
  br i1 %73, label %74, label %105

74:                                               ; preds = %72
  %75 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.042
  %76 = load i64, ptr %75, align 8
  %.not12 = icmp eq i64 %76, 0
  br i1 %.not12, label %77, label %80

77:                                               ; preds = %74
  %78 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 0, ptr %78, align 4
  %79 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 0, ptr %79, align 1
  br label %102

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %87, %80
  %.043 = phi i64 [ 0, %80 ], [ %.144, %87 ]
  %.042.pn = phi i64 [ %.042, %80 ], [ %88, %87 ]
  %.05 = phi i64 [ 1, %80 ], [ %89, %87 ]
  %.3 = phi i64 [ 0, %80 ], [ %90, %87 ]
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.042.pn
  %.037 = load i32, ptr %.037.in, align 4
  %.not13 = icmp eq i32 %.037, 0
  br i1 %.not13, label %91, label %82

82:                                               ; preds = %81
  %83 = icmp slt i32 %.037, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %82
  %85 = add i64 %.043, %.05
  %86 = sub nsw i32 0, %.037
  br label %87

87:                                               ; preds = %84, %82
  %.144 = phi i64 [ %85, %84 ], [ %.043, %82 ]
  %.138 = phi i32 [ %86, %84 ], [ %.037, %82 ]
  %88 = zext nneg i32 %.138 to i64
  %89 = shl i64 %.05, 1
  %90 = add i64 %.3, 1
  br label %81, !llvm.loop !13

91:                                               ; preds = %81
  %92 = trunc i64 %.043 to i32
  %93 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 %92, ptr %93, align 4
  %94 = trunc i64 %.3 to i8
  %95 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
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

102:                                              ; preds = %101, %77
  %.146 = phi i64 [ %.247, %101 ], [ %.045, %77 ]
  %.140 = phi i64 [ %.241, %101 ], [ %.039, %77 ]
  br label %103

103:                                              ; preds = %102
  %104 = add nuw nsw i64 %.042, 1
  br label %72, !llvm.loop !14

105:                                              ; preds = %72
  %106 = icmp ugt i64 %.039, 32
  br i1 %106, label %107, label %110

107:                                              ; preds = %105
  %108 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %109 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %108)
  call void @exit(i32 noundef 1) #9
  unreachable

110:                                              ; preds = %105
  %111 = icmp eq i64 %.045, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %110
  %113 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %114 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %113)
  call void @exit(i32 noundef 1) #9
  unreachable

115:                                              ; preds = %110
  br label %116

116:                                              ; preds = %161, %115
  %.134 = phi ptr [ %0, %115 ], [ %162, %161 ]
  %.028 = phi i64 [ 0, %115 ], [ %.129, %161 ]
  %.024 = phi i8 [ 0, %115 ], [ %.125, %161 ]
  %.16 = phi i64 [ 0, %115 ], [ %163, %161 ]
  %.01 = phi i32 [ -1, %115 ], [ %.1, %161 ]
  %117 = icmp ult i64 %.16, %1
  br i1 %117, label %118, label %164

118:                                              ; preds = %116
  %119 = load i8, ptr %.134, align 1
  %120 = zext i8 %119 to i64
  %121 = getelementptr inbounds nuw i8, ptr %7, i64 %120
  %122 = load i8, ptr %121, align 1
  %123 = zext i8 %122 to i32
  %124 = add nsw i32 %123, -1
  %125 = shl nuw i32 1, %124
  %126 = sext i32 %125 to i64
  br label %127

127:                                              ; preds = %157, %118
  %.129 = phi i64 [ %.028, %118 ], [ %.230, %157 ]
  %.125 = phi i8 [ %.024, %118 ], [ %.327, %157 ]
  %.015 = phi i64 [ %126, %118 ], [ %158, %157 ]
  %.4 = phi i64 [ 0, %118 ], [ %159, %157 ]
  %.1 = phi i32 [ %.01, %118 ], [ %.2, %157 ]
  %128 = load i8, ptr %.134, align 1
  %129 = zext i8 %128 to i64
  %130 = getelementptr inbounds nuw i8, ptr %7, i64 %129
  %131 = load i8, ptr %130, align 1
  %132 = zext i8 %131 to i64
  %133 = icmp ult i64 %.4, %132
  br i1 %133, label %134, label %160

134:                                              ; preds = %127
  %135 = icmp eq i32 %.1, 7
  br i1 %135, label %136, label %144

136:                                              ; preds = %134
  %137 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %137, align 1
  %138 = add i64 %.129, 1
  %139 = icmp eq i64 %138, %1
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %142 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %141)
  call void @exit(i32 noundef 1) #9
  unreachable

143:                                              ; preds = %136
  br label %147

144:                                              ; preds = %134
  %145 = add nsw i32 %.1, 1
  %146 = shl i8 %.125, 1
  br label %147

147:                                              ; preds = %144, %143
  %.230 = phi i64 [ %138, %143 ], [ %.129, %144 ]
  %.226 = phi i8 [ 0, %143 ], [ %146, %144 ]
  %.2 = phi i32 [ 0, %143 ], [ %145, %144 ]
  %148 = load i8, ptr %.134, align 1
  %149 = zext i8 %148 to i64
  %150 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %149
  %151 = load i32, ptr %150, align 4
  %152 = zext i32 %151 to i64
  %153 = and i64 %.015, %152
  %.not11 = icmp eq i64 %153, 0
  br i1 %.not11, label %156, label %154

154:                                              ; preds = %147
  %155 = or disjoint i8 %.226, 1
  br label %156

156:                                              ; preds = %154, %147
  %.327 = phi i8 [ %155, %154 ], [ %.226, %147 ]
  br label %157

157:                                              ; preds = %156
  %158 = lshr i64 %.015, 1
  %159 = add i64 %.4, 1
  br label %127, !llvm.loop !15

160:                                              ; preds = %127
  br label %161

161:                                              ; preds = %160
  %162 = getelementptr inbounds nuw i8, ptr %.134, i64 1
  %163 = add i64 %.16, 1
  br label %116, !llvm.loop !16

164:                                              ; preds = %116
  %165 = sub nsw i32 7, %.01
  %166 = zext i8 %.024 to i32
  %167 = shl i32 %166, %165
  %168 = trunc i32 %167 to i8
  %169 = getelementptr inbounds nuw i8, ptr %11, i64 %.028
  store i8 %168, ptr %169, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %170

170:                                              ; preds = %207, %164
  %.27 = phi i64 [ 0, %164 ], [ %208, %207 ]
  %.0 = phi ptr [ %9, %164 ], [ %174, %207 ]
  %171 = icmp samesign ult i64 %.27, 256
  br i1 %171, label %172, label %209

172:                                              ; preds = %170
  %173 = trunc nuw i64 %.27 to i8
  store i8 %173, ptr %.0, align 1
  %174 = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %175 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.27
  %176 = load i32, ptr %175, align 4
  %177 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %178 = load i8, ptr %177, align 1
  %179 = zext i8 %178 to i32
  %180 = or i32 %176, %179
  %.not9 = icmp eq i32 %180, 0
  br i1 %.not9, label %206, label %181

181:                                              ; preds = %172
  %182 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %183 = load i8, ptr %182, align 1
  %184 = zext i8 %183 to i32
  %185 = add nsw i32 %184, -1
  %186 = shl nuw i32 1, %185
  %187 = sext i32 %186 to i64
  %188 = zext i8 %183 to i64
  %189 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.27
  br label %190

190:                                              ; preds = %201, %181
  %.019 = phi i32 [ 0, %181 ], [ %.120, %201 ]
  %.116 = phi i64 [ %187, %181 ], [ %202, %201 ]
  %.5 = phi i64 [ 0, %181 ], [ %203, %201 ]
  %191 = icmp ult i64 %.5, %188
  br i1 %191, label %192, label %204

192:                                              ; preds = %190
  %193 = shl i32 %.019, 1
  %194 = or disjoint i32 %193, 1
  %195 = load i32, ptr %189, align 4
  %196 = zext i32 %195 to i64
  %197 = and i64 %.116, %196
  %.not10 = icmp eq i64 %197, 0
  br i1 %.not10, label %200, label %198

198:                                              ; preds = %192
  %199 = add i32 %193, 2
  br label %200

200:                                              ; preds = %198, %192
  %.120 = phi i32 [ %199, %198 ], [ %194, %192 ]
  br label %201

201:                                              ; preds = %200
  %202 = lshr i64 %.116, 1
  %203 = add i64 %.5, 1
  br label %190, !llvm.loop !17

204:                                              ; preds = %190
  %205 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.27
  store i32 %.019, ptr %205, align 4
  br label %206

206:                                              ; preds = %204, %172
  br label %207

207:                                              ; preds = %206
  %208 = add nuw nsw i64 %.27, 1
  br label %170, !llvm.loop !18

209:                                              ; preds = %170
  br label %210

210:                                              ; preds = %238, %209
  %.6 = phi i64 [ 1, %209 ], [ %239, %238 ]
  %211 = icmp samesign ult i64 %.6, 256
  br i1 %211, label %212, label %240

212:                                              ; preds = %210
  %213 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.6
  %214 = load i32, ptr %213, align 4
  %215 = getelementptr inbounds nuw i8, ptr %9, i64 %.6
  %216 = load i8, ptr %215, align 1
  br label %217

217:                                              ; preds = %225, %212
  %.38 = phi i64 [ %.6, %212 ], [ %234, %225 ]
  %.not8 = icmp eq i64 %.38, 0
  br i1 %.not8, label %223, label %218

218:                                              ; preds = %217
  %219 = getelementptr [4 x i8], ptr %8, i64 %.38
  %220 = getelementptr i8, ptr %219, i64 -4
  %221 = load i32, ptr %220, align 4
  %222 = icmp ugt i32 %221, %214
  br label %223

223:                                              ; preds = %218, %217
  %224 = phi i1 [ false, %217 ], [ %222, %218 ]
  br i1 %224, label %225, label %235

225:                                              ; preds = %223
  %226 = getelementptr [4 x i8], ptr %8, i64 %.38
  %227 = getelementptr i8, ptr %226, i64 -4
  %228 = load i32, ptr %227, align 4
  %229 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %228, ptr %229, align 4
  %230 = getelementptr i8, ptr %9, i64 %.38
  %231 = getelementptr i8, ptr %230, i64 -1
  %232 = load i8, ptr %231, align 1
  %233 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %232, ptr %233, align 1
  %234 = add i64 %.38, -1
  br label %217, !llvm.loop !19

235:                                              ; preds = %223
  %236 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %214, ptr %236, align 4
  %237 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %216, ptr %237, align 1
  br label %238

238:                                              ; preds = %235
  %239 = add nuw nsw i64 %.6, 1
  br label %210, !llvm.loop !20

240:                                              ; preds = %210
  br label %241

241:                                              ; preds = %246, %240
  %.49 = phi i64 [ 0, %240 ], [ %247, %246 ]
  %242 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %243 = load i32, ptr %242, align 4
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %241
  br label %246

246:                                              ; preds = %245
  %247 = add i64 %.49, 1
  br label %241, !llvm.loop !21

248:                                              ; preds = %241
  br label %249

249:                                              ; preds = %281, %248
  %.235 = phi ptr [ %0, %248 ], [ %.336, %281 ]
  %.031 = phi ptr [ %11, %248 ], [ %.132, %281 ]
  %.221 = phi i32 [ 0, %248 ], [ %.423, %281 ]
  %.217 = phi i64 [ 128, %248 ], [ %.318, %281 ]
  %.313 = phi i64 [ 0, %248 ], [ %.414, %281 ]
  %.7 = phi i64 [ %.49, %248 ], [ %.9, %281 ]
  %250 = icmp ult i64 %.313, %1
  br i1 %250, label %251, label %282

251:                                              ; preds = %249
  %252 = shl i32 %.221, 1
  %253 = or disjoint i32 %252, 1
  %254 = load i8, ptr %.031, align 1
  %255 = zext i8 %254 to i64
  %256 = and i64 %.217, %255
  %.not7 = icmp eq i64 %256, 0
  br i1 %.not7, label %259, label %257

257:                                              ; preds = %251
  %258 = add i32 %252, 2
  br label %259

259:                                              ; preds = %257, %251
  %.322 = phi i32 [ %258, %257 ], [ %253, %251 ]
  br label %260

260:                                              ; preds = %264, %259
  %.8 = phi i64 [ %.7, %259 ], [ %265, %264 ]
  %261 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %262 = load i32, ptr %261, align 4
  %263 = icmp ult i32 %262, %.322
  br i1 %263, label %264, label %266

264:                                              ; preds = %260
  %265 = add i64 %.8, 1
  br label %260, !llvm.loop !22

266:                                              ; preds = %260
  %267 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %268 = load i32, ptr %267, align 4
  %269 = icmp eq i32 %.322, %268
  br i1 %269, label %270, label %275

270:                                              ; preds = %266
  %271 = getelementptr inbounds nuw i8, ptr %9, i64 %.8
  %272 = load i8, ptr %271, align 1
  store i8 %272, ptr %.235, align 1
  %273 = getelementptr inbounds nuw i8, ptr %.235, i64 1
  %274 = add i64 %.313, 1
  br label %275

275:                                              ; preds = %270, %266
  %.336 = phi ptr [ %273, %270 ], [ %.235, %266 ]
  %.423 = phi i32 [ 0, %270 ], [ %.322, %266 ]
  %.414 = phi i64 [ %274, %270 ], [ %.313, %266 ]
  %.9 = phi i64 [ %.49, %270 ], [ %.8, %266 ]
  %276 = icmp ugt i64 %.217, 1
  br i1 %276, label %277, label %279

277:                                              ; preds = %275
  %278 = lshr i64 %.217, 1
  br label %281

279:                                              ; preds = %275
  %280 = getelementptr inbounds nuw i8, ptr %.031, i64 1
  br label %281

281:                                              ; preds = %279, %277
  %.132 = phi ptr [ %.031, %277 ], [ %280, %279 ]
  %.318 = phi i64 [ %278, %277 ], [ 128, %279 ]
  br label %249, !llvm.loop !23

282:                                              ; preds = %249
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
  %9 = sdiv i32 %2, 2
  %sext = shl i64 %8, 32
  %10 = ashr exact i64 %sext, 29
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  br label %12

12:                                               ; preds = %41, %4
  %.01 = phi i32 [ %3, %4 ], [ %.0, %41 ]
  %.not = icmp sgt i32 %.01, %9
  br i1 %.not, label %.loopexit, label %13

13:                                               ; preds = %12
  %14 = shl nsw i32 %.01, 1
  %15 = icmp slt i32 %14, %2
  br i1 %15, label %16, label %31

16:                                               ; preds = %13
  %17 = sext i32 %14 to i64
  %18 = getelementptr [8 x i8], ptr %1, i64 %17
  %19 = getelementptr i8, ptr %18, i64 -8
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %20
  %22 = load i64, ptr %21, align 8
  %23 = sext i32 %14 to i64
  %24 = getelementptr inbounds [8 x i8], ptr %1, i64 %23
  %25 = load i64, ptr %24, align 8
  %26 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %25
  %27 = load i64, ptr %26, align 8
  %28 = icmp ugt i64 %22, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %16
  %30 = or disjoint i32 %14, 1
  br label %31

31:                                               ; preds = %29, %16, %13
  %.0 = phi i32 [ %30, %29 ], [ %14, %16 ], [ %14, %13 ]
  %32 = load i64, ptr %11, align 8
  %33 = sext i32 %.0 to i64
  %34 = getelementptr [8 x i8], ptr %1, i64 %33
  %35 = getelementptr i8, ptr %34, i64 -8
  %36 = load i64, ptr %35, align 8
  %37 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %36
  %38 = load i64, ptr %37, align 8
  %39 = icmp ult i64 %32, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %49

41:                                               ; preds = %31
  %42 = sext i32 %.0 to i64
  %43 = getelementptr [8 x i8], ptr %1, i64 %42
  %44 = getelementptr i8, ptr %43, i64 -8
  %45 = load i64, ptr %44, align 8
  %46 = sext i32 %.01 to i64
  %47 = getelementptr [8 x i8], ptr %1, i64 %46
  %48 = getelementptr i8, ptr %47, i64 -8
  store i64 %45, ptr %48, align 8
  br label %12, !llvm.loop !24

.loopexit:                                        ; preds = %12
  br label %49

49:                                               ; preds = %.loopexit, %40
  %sext3 = shl i64 %8, 32
  %50 = ashr exact i64 %sext3, 32
  %51 = sext i32 %.01 to i64
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
  br i1 %3, label %4, label %16

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %6

6:                                                ; preds = %13, %4
  %.01 = phi i32 [ 1, %4 ], [ %14, %13 ]
  %7 = icmp sge i32 %.01, %0
  br i1 %7, label %.loopexit, label %8

8:                                                ; preds = %6
  %9 = load ptr, ptr %5, align 8
  %10 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(4) @.str.4) #8
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %11, label %12

11:                                               ; preds = %8
  br label %15

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %12
  %14 = add nuw nsw i32 %.01, 1
  br label %6, !llvm.loop !25

.loopexit:                                        ; preds = %6
  br label %15

15:                                               ; preds = %.loopexit, %11
  br label %16

16:                                               ; preds = %15, %2
  %.0 = phi i1 [ %7, %15 ], [ true, %2 ]
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
