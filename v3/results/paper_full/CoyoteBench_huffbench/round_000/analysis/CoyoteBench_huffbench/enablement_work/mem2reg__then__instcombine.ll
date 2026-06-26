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
  %.not55 = icmp eq i64 %29, 0
  br i1 %.not55, label %33, label %30

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
  br label %37

37:                                               ; preds = %41, %36
  %.24 = phi i64 [ %.010, %36 ], [ %42, %41 ]
  %.not = icmp eq i64 %.24, 0
  br i1 %.not, label %43, label %38

38:                                               ; preds = %37
  %39 = trunc i64 %.010 to i32
  %40 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %39, i32 noundef %40)
  br label %41

41:                                               ; preds = %38
  %42 = add i64 %.24, -1
  br label %37, !llvm.loop !11

43:                                               ; preds = %37
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
  %.not53 = icmp eq i64 %76, 0
  br i1 %.not53, label %77, label %80

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
  %.not54 = icmp eq i32 %.037, 0
  br i1 %.not54, label %91, label %82

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
  %.not52 = icmp eq i64 %153, 0
  br i1 %.not52, label %156, label %154

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

170:                                              ; preds = %209, %164
  %.27 = phi i64 [ 0, %164 ], [ %210, %209 ]
  %.0 = phi ptr [ %9, %164 ], [ %174, %209 ]
  %171 = icmp samesign ult i64 %.27, 256
  br i1 %171, label %172, label %211

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
  %.not50 = icmp eq i32 %180, 0
  br i1 %.not50, label %208, label %181

181:                                              ; preds = %172
  %182 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %183 = load i8, ptr %182, align 1
  %184 = zext i8 %183 to i32
  %185 = add nsw i32 %184, -1
  %186 = shl nuw i32 1, %185
  %187 = sext i32 %186 to i64
  br label %188

188:                                              ; preds = %203, %181
  %.019 = phi i32 [ 0, %181 ], [ %.120, %203 ]
  %.116 = phi i64 [ %187, %181 ], [ %204, %203 ]
  %.5 = phi i64 [ 0, %181 ], [ %205, %203 ]
  %189 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %190 = load i8, ptr %189, align 1
  %191 = zext i8 %190 to i64
  %192 = icmp ult i64 %.5, %191
  br i1 %192, label %193, label %206

193:                                              ; preds = %188
  %194 = shl i32 %.019, 1
  %195 = or disjoint i32 %194, 1
  %196 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.27
  %197 = load i32, ptr %196, align 4
  %198 = zext i32 %197 to i64
  %199 = and i64 %.116, %198
  %.not51 = icmp eq i64 %199, 0
  br i1 %.not51, label %202, label %200

200:                                              ; preds = %193
  %201 = add i32 %194, 2
  br label %202

202:                                              ; preds = %200, %193
  %.120 = phi i32 [ %201, %200 ], [ %195, %193 ]
  br label %203

203:                                              ; preds = %202
  %204 = lshr i64 %.116, 1
  %205 = add i64 %.5, 1
  br label %188, !llvm.loop !17

206:                                              ; preds = %188
  %207 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.27
  store i32 %.019, ptr %207, align 4
  br label %208

208:                                              ; preds = %206, %172
  br label %209

209:                                              ; preds = %208
  %210 = add nuw nsw i64 %.27, 1
  br label %170, !llvm.loop !18

211:                                              ; preds = %170
  br label %212

212:                                              ; preds = %240, %211
  %.6 = phi i64 [ 1, %211 ], [ %241, %240 ]
  %213 = icmp samesign ult i64 %.6, 256
  br i1 %213, label %214, label %242

214:                                              ; preds = %212
  %215 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.6
  %216 = load i32, ptr %215, align 4
  %217 = getelementptr inbounds nuw i8, ptr %9, i64 %.6
  %218 = load i8, ptr %217, align 1
  br label %219

219:                                              ; preds = %227, %214
  %.38 = phi i64 [ %.6, %214 ], [ %236, %227 ]
  %.not49 = icmp eq i64 %.38, 0
  br i1 %.not49, label %225, label %220

220:                                              ; preds = %219
  %221 = getelementptr [4 x i8], ptr %8, i64 %.38
  %222 = getelementptr i8, ptr %221, i64 -4
  %223 = load i32, ptr %222, align 4
  %224 = icmp ugt i32 %223, %216
  br label %225

225:                                              ; preds = %220, %219
  %226 = phi i1 [ false, %219 ], [ %224, %220 ]
  br i1 %226, label %227, label %237

227:                                              ; preds = %225
  %228 = getelementptr [4 x i8], ptr %8, i64 %.38
  %229 = getelementptr i8, ptr %228, i64 -4
  %230 = load i32, ptr %229, align 4
  %231 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %230, ptr %231, align 4
  %232 = getelementptr i8, ptr %9, i64 %.38
  %233 = getelementptr i8, ptr %232, i64 -1
  %234 = load i8, ptr %233, align 1
  %235 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %234, ptr %235, align 1
  %236 = add i64 %.38, -1
  br label %219, !llvm.loop !19

237:                                              ; preds = %225
  %238 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %216, ptr %238, align 4
  %239 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %218, ptr %239, align 1
  br label %240

240:                                              ; preds = %237
  %241 = add nuw nsw i64 %.6, 1
  br label %212, !llvm.loop !20

242:                                              ; preds = %212
  br label %243

243:                                              ; preds = %248, %242
  %.49 = phi i64 [ 0, %242 ], [ %249, %248 ]
  %244 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %245 = load i32, ptr %244, align 4
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %243
  br label %248

248:                                              ; preds = %247
  %249 = add i64 %.49, 1
  br label %243, !llvm.loop !21

250:                                              ; preds = %243
  br label %251

251:                                              ; preds = %283, %250
  %.235 = phi ptr [ %0, %250 ], [ %.336, %283 ]
  %.031 = phi ptr [ %11, %250 ], [ %.132, %283 ]
  %.221 = phi i32 [ 0, %250 ], [ %.423, %283 ]
  %.217 = phi i64 [ 128, %250 ], [ %.318, %283 ]
  %.313 = phi i64 [ 0, %250 ], [ %.414, %283 ]
  %.7 = phi i64 [ %.49, %250 ], [ %.9, %283 ]
  %252 = icmp ult i64 %.313, %1
  br i1 %252, label %253, label %284

253:                                              ; preds = %251
  %254 = shl i32 %.221, 1
  %255 = or disjoint i32 %254, 1
  %256 = load i8, ptr %.031, align 1
  %257 = zext i8 %256 to i64
  %258 = and i64 %.217, %257
  %.not48 = icmp eq i64 %258, 0
  br i1 %.not48, label %261, label %259

259:                                              ; preds = %253
  %260 = add i32 %254, 2
  br label %261

261:                                              ; preds = %259, %253
  %.322 = phi i32 [ %260, %259 ], [ %255, %253 ]
  br label %262

262:                                              ; preds = %266, %261
  %.8 = phi i64 [ %.7, %261 ], [ %267, %266 ]
  %263 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %264 = load i32, ptr %263, align 4
  %265 = icmp ult i32 %264, %.322
  br i1 %265, label %266, label %268

266:                                              ; preds = %262
  %267 = add i64 %.8, 1
  br label %262, !llvm.loop !22

268:                                              ; preds = %262
  %269 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %270 = load i32, ptr %269, align 4
  %271 = icmp eq i32 %.322, %270
  br i1 %271, label %272, label %277

272:                                              ; preds = %268
  %273 = getelementptr inbounds nuw i8, ptr %9, i64 %.8
  %274 = load i8, ptr %273, align 1
  store i8 %274, ptr %.235, align 1
  %275 = getelementptr inbounds nuw i8, ptr %.235, i64 1
  %276 = add i64 %.313, 1
  br label %277

277:                                              ; preds = %272, %268
  %.336 = phi ptr [ %275, %272 ], [ %.235, %268 ]
  %.423 = phi i32 [ 0, %272 ], [ %.322, %268 ]
  %.414 = phi i64 [ %276, %272 ], [ %.313, %268 ]
  %.9 = phi i64 [ %.49, %272 ], [ %.8, %268 ]
  %278 = icmp ugt i64 %.217, 1
  br i1 %278, label %279, label %281

279:                                              ; preds = %277
  %280 = lshr i64 %.217, 1
  br label %283

281:                                              ; preds = %277
  %282 = getelementptr inbounds nuw i8, ptr %.031, i64 1
  br label %283

283:                                              ; preds = %281, %279
  %.132 = phi ptr [ %.031, %279 ], [ %282, %281 ]
  %.318 = phi i64 [ %280, %279 ], [ 128, %281 ]
  br label %251, !llvm.loop !23

284:                                              ; preds = %251
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
  br i1 %.not, label %49, label %11

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

49:                                               ; preds = %40, %9
  %sext2 = shl i64 %8, 32
  %50 = ashr exact i64 %sext2, 32
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
