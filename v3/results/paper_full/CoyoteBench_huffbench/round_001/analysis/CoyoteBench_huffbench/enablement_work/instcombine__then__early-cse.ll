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
  br i1 %44, label %45, label %66

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
  %57 = getelementptr [8 x i8], ptr %3, i64 %.212
  %58 = getelementptr i8, ptr %57, i64 2040
  store i64 %56, ptr %58, align 8
  %59 = trunc i64 %.212 to i32
  %60 = add i32 %59, 255
  %61 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %47
  store i32 %60, ptr %61, align 4
  %62 = sub i32 -255, %59
  %63 = load i64, ptr %4, align 16
  %64 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %63
  store i32 %62, ptr %64, align 4
  %65 = add i64 %.212, 255
  store i64 %65, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %50, i32 noundef 1)
  br label %43, !llvm.loop !12

66:                                               ; preds = %43
  %67 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212
  %68 = getelementptr inbounds nuw i8, ptr %67, i64 1024
  store i32 0, ptr %68, align 4
  br label %69

69:                                               ; preds = %100, %66
  %.045 = phi i64 [ 0, %66 ], [ %.146, %100 ]
  %.042 = phi i64 [ 0, %66 ], [ %101, %100 ]
  %.039 = phi i64 [ 0, %66 ], [ %.140, %100 ]
  %70 = icmp samesign ult i64 %.042, 256
  br i1 %70, label %71, label %102

71:                                               ; preds = %69
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
  %89 = trunc i64 %.043 to i32
  %90 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 %89, ptr %90, align 4
  %91 = trunc i64 %.3 to i8
  %92 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 %91, ptr %92, align 1
  %93 = icmp ugt i64 %.043, %.045
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %95

95:                                               ; preds = %94, %88
  %.247 = phi i64 [ %.043, %94 ], [ %.045, %88 ]
  %96 = icmp ugt i64 %.3, %.039
  br i1 %96, label %97, label %98

97:                                               ; preds = %95
  br label %98

98:                                               ; preds = %97, %95
  %.241 = phi i64 [ %.3, %97 ], [ %.039, %95 ]
  br label %99

99:                                               ; preds = %98, %74
  %.146 = phi i64 [ %.247, %98 ], [ %.045, %74 ]
  %.140 = phi i64 [ %.241, %98 ], [ %.039, %74 ]
  br label %100

100:                                              ; preds = %99
  %101 = add nuw nsw i64 %.042, 1
  br label %69, !llvm.loop !14

102:                                              ; preds = %69
  %103 = icmp ugt i64 %.039, 32
  br i1 %103, label %104, label %107

104:                                              ; preds = %102
  %105 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %106 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %105)
  call void @exit(i32 noundef 1) #9
  unreachable

107:                                              ; preds = %102
  %108 = icmp eq i64 %.045, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %107
  %110 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %111 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %110)
  call void @exit(i32 noundef 1) #9
  unreachable

112:                                              ; preds = %107
  br label %113

113:                                              ; preds = %158, %112
  %.134 = phi ptr [ %0, %112 ], [ %159, %158 ]
  %.028 = phi i64 [ 0, %112 ], [ %.129, %158 ]
  %.024 = phi i8 [ 0, %112 ], [ %.125, %158 ]
  %.16 = phi i64 [ 0, %112 ], [ %160, %158 ]
  %.01 = phi i32 [ -1, %112 ], [ %.1, %158 ]
  %114 = icmp ult i64 %.16, %1
  br i1 %114, label %115, label %161

115:                                              ; preds = %113
  %116 = load i8, ptr %.134, align 1
  %117 = zext i8 %116 to i64
  %118 = getelementptr inbounds nuw i8, ptr %7, i64 %117
  %119 = load i8, ptr %118, align 1
  %120 = zext i8 %119 to i32
  %121 = add nsw i32 %120, -1
  %122 = shl nuw i32 1, %121
  %123 = sext i32 %122 to i64
  br label %124

124:                                              ; preds = %154, %115
  %.129 = phi i64 [ %.028, %115 ], [ %.230, %154 ]
  %.125 = phi i8 [ %.024, %115 ], [ %.327, %154 ]
  %.015 = phi i64 [ %123, %115 ], [ %155, %154 ]
  %.4 = phi i64 [ 0, %115 ], [ %156, %154 ]
  %.1 = phi i32 [ %.01, %115 ], [ %.2, %154 ]
  %125 = load i8, ptr %.134, align 1
  %126 = zext i8 %125 to i64
  %127 = getelementptr inbounds nuw i8, ptr %7, i64 %126
  %128 = load i8, ptr %127, align 1
  %129 = zext i8 %128 to i64
  %130 = icmp ult i64 %.4, %129
  br i1 %130, label %131, label %157

131:                                              ; preds = %124
  %132 = icmp eq i32 %.1, 7
  br i1 %132, label %133, label %141

133:                                              ; preds = %131
  %134 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %134, align 1
  %135 = add i64 %.129, 1
  %136 = icmp eq i64 %135, %1
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %139 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %138)
  call void @exit(i32 noundef 1) #9
  unreachable

140:                                              ; preds = %133
  br label %144

141:                                              ; preds = %131
  %142 = add nsw i32 %.1, 1
  %143 = shl i8 %.125, 1
  br label %144

144:                                              ; preds = %141, %140
  %.230 = phi i64 [ %135, %140 ], [ %.129, %141 ]
  %.226 = phi i8 [ 0, %140 ], [ %143, %141 ]
  %.2 = phi i32 [ 0, %140 ], [ %142, %141 ]
  %145 = load i8, ptr %.134, align 1
  %146 = zext i8 %145 to i64
  %147 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %146
  %148 = load i32, ptr %147, align 4
  %149 = zext i32 %148 to i64
  %150 = and i64 %.015, %149
  %.not5 = icmp eq i64 %150, 0
  br i1 %.not5, label %153, label %151

151:                                              ; preds = %144
  %152 = or disjoint i8 %.226, 1
  br label %153

153:                                              ; preds = %151, %144
  %.327 = phi i8 [ %152, %151 ], [ %.226, %144 ]
  br label %154

154:                                              ; preds = %153
  %155 = lshr i64 %.015, 1
  %156 = add i64 %.4, 1
  br label %124, !llvm.loop !15

157:                                              ; preds = %124
  br label %158

158:                                              ; preds = %157
  %159 = getelementptr inbounds nuw i8, ptr %.134, i64 1
  %160 = add i64 %.16, 1
  br label %113, !llvm.loop !16

161:                                              ; preds = %113
  %162 = sub nsw i32 7, %.01
  %163 = zext i8 %.024 to i32
  %164 = shl i32 %163, %162
  %165 = trunc i32 %164 to i8
  %166 = getelementptr inbounds nuw i8, ptr %11, i64 %.028
  store i8 %165, ptr %166, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %167

167:                                              ; preds = %201, %161
  %.27 = phi i64 [ 0, %161 ], [ %202, %201 ]
  %.0 = phi ptr [ %9, %161 ], [ %171, %201 ]
  %168 = icmp samesign ult i64 %.27, 256
  br i1 %168, label %169, label %203

169:                                              ; preds = %167
  %170 = trunc nuw i64 %.27 to i8
  store i8 %170, ptr %.0, align 1
  %171 = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %172 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.27
  %173 = load i32, ptr %172, align 4
  %174 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %175 = load i8, ptr %174, align 1
  %176 = zext i8 %175 to i32
  %177 = or i32 %173, %176
  %.not3 = icmp eq i32 %177, 0
  br i1 %.not3, label %200, label %178

178:                                              ; preds = %169
  %179 = add nsw i32 %176, -1
  %180 = shl nuw i32 1, %179
  %181 = sext i32 %180 to i64
  br label %182

182:                                              ; preds = %195, %178
  %.019 = phi i32 [ 0, %178 ], [ %.120, %195 ]
  %.116 = phi i64 [ %181, %178 ], [ %196, %195 ]
  %.5 = phi i64 [ 0, %178 ], [ %197, %195 ]
  %183 = load i8, ptr %174, align 1
  %184 = zext i8 %183 to i64
  %185 = icmp ult i64 %.5, %184
  br i1 %185, label %186, label %198

186:                                              ; preds = %182
  %187 = shl i32 %.019, 1
  %188 = or disjoint i32 %187, 1
  %189 = load i32, ptr %172, align 4
  %190 = zext i32 %189 to i64
  %191 = and i64 %.116, %190
  %.not4 = icmp eq i64 %191, 0
  br i1 %.not4, label %194, label %192

192:                                              ; preds = %186
  %193 = add i32 %187, 2
  br label %194

194:                                              ; preds = %192, %186
  %.120 = phi i32 [ %193, %192 ], [ %188, %186 ]
  br label %195

195:                                              ; preds = %194
  %196 = lshr i64 %.116, 1
  %197 = add i64 %.5, 1
  br label %182, !llvm.loop !17

198:                                              ; preds = %182
  %199 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.27
  store i32 %.019, ptr %199, align 4
  br label %200

200:                                              ; preds = %198, %169
  br label %201

201:                                              ; preds = %200
  %202 = add nuw nsw i64 %.27, 1
  br label %167, !llvm.loop !18

203:                                              ; preds = %167
  br label %204

204:                                              ; preds = %230, %203
  %.6 = phi i64 [ 1, %203 ], [ %231, %230 ]
  %205 = icmp samesign ult i64 %.6, 256
  br i1 %205, label %206, label %232

206:                                              ; preds = %204
  %207 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.6
  %208 = load i32, ptr %207, align 4
  %209 = getelementptr inbounds nuw i8, ptr %9, i64 %.6
  %210 = load i8, ptr %209, align 1
  br label %211

211:                                              ; preds = %219, %206
  %.38 = phi i64 [ %.6, %206 ], [ %226, %219 ]
  %.not2 = icmp eq i64 %.38, 0
  br i1 %.not2, label %217, label %212

212:                                              ; preds = %211
  %213 = getelementptr [4 x i8], ptr %8, i64 %.38
  %214 = getelementptr i8, ptr %213, i64 -4
  %215 = load i32, ptr %214, align 4
  %216 = icmp ugt i32 %215, %208
  br label %217

217:                                              ; preds = %212, %211
  %218 = phi i1 [ false, %211 ], [ %216, %212 ]
  br i1 %218, label %219, label %227

219:                                              ; preds = %217
  %220 = getelementptr [4 x i8], ptr %8, i64 %.38
  %221 = getelementptr i8, ptr %220, i64 -4
  %222 = load i32, ptr %221, align 4
  store i32 %222, ptr %220, align 4
  %223 = getelementptr i8, ptr %9, i64 %.38
  %224 = getelementptr i8, ptr %223, i64 -1
  %225 = load i8, ptr %224, align 1
  store i8 %225, ptr %223, align 1
  %226 = add i64 %.38, -1
  br label %211, !llvm.loop !19

227:                                              ; preds = %217
  %228 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %208, ptr %228, align 4
  %229 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %210, ptr %229, align 1
  br label %230

230:                                              ; preds = %227
  %231 = add nuw nsw i64 %.6, 1
  br label %204, !llvm.loop !20

232:                                              ; preds = %204
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

9:                                                ; preds = %39, %4
  %.01 = phi i32 [ %3, %4 ], [ %.0, %39 ]
  %10 = sdiv i32 %2, 2
  %.not = icmp sgt i32 %.01, %10
  br i1 %.not, label %43, label %11

11:                                               ; preds = %9
  %12 = shl nsw i32 %.01, 1
  %13 = icmp slt i32 %12, %2
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = sext i32 %12 to i64
  %16 = getelementptr [8 x i8], ptr %1, i64 %15
  %17 = getelementptr i8, ptr %16, i64 -8
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %18
  %20 = load i64, ptr %19, align 8
  %21 = load i64, ptr %16, align 8
  %22 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %21
  %23 = load i64, ptr %22, align 8
  %24 = icmp ugt i64 %20, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = or disjoint i32 %12, 1
  br label %27

27:                                               ; preds = %25, %14, %11
  %.0 = phi i32 [ %26, %25 ], [ %12, %14 ], [ %12, %11 ]
  %sext = shl i64 %8, 32
  %28 = ashr exact i64 %sext, 29
  %29 = getelementptr inbounds i8, ptr %0, i64 %28
  %30 = load i64, ptr %29, align 8
  %31 = sext i32 %.0 to i64
  %32 = getelementptr [8 x i8], ptr %1, i64 %31
  %33 = getelementptr i8, ptr %32, i64 -8
  %34 = load i64, ptr %33, align 8
  %35 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %34
  %36 = load i64, ptr %35, align 8
  %37 = icmp ult i64 %30, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %43

39:                                               ; preds = %27
  %40 = sext i32 %.01 to i64
  %41 = getelementptr [8 x i8], ptr %1, i64 %40
  %42 = getelementptr i8, ptr %41, i64 -8
  store i64 %34, ptr %42, align 8
  br label %9, !llvm.loop !24

43:                                               ; preds = %38, %9
  %sext1 = shl i64 %8, 32
  %44 = ashr exact i64 %sext1, 32
  %45 = sext i32 %.01 to i64
  %46 = getelementptr [8 x i8], ptr %1, i64 %45
  %47 = getelementptr i8, ptr %46, i64 -8
  store i64 %44, ptr %47, align 8
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
  store i32 %6, ptr @seed, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = add nsw i32 %6, 2147483647
  store i32 %9, ptr @seed, align 4
  br label %10

10:                                               ; preds = %8, %0
  %11 = load i32, ptr @seed, align 4
  %12 = srem i32 %11, 32
  %13 = sext i32 %12 to i64
  %14 = xor i32 %11, 123459876
  store i32 %14, ptr @seed, align 4
  ret i64 %13
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
