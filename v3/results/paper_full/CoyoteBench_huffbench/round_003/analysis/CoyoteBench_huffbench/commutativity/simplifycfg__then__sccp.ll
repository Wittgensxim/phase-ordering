; ModuleID = 'results\paper_full\CoyoteBench_huffbench\round_002\output.ll'
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
  %2 = call ptr @malloc(i64 noundef %0) #9
  br label %3

3:                                                ; preds = %6, %1
  %.01 = phi ptr [ %2, %1 ], [ %10, %6 ]
  %.0 = phi i32 [ 0, %1 ], [ %11, %6 ]
  %4 = zext nneg i32 %.0 to i64
  %5 = icmp ugt i64 %0, %4
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = call i64 @random4()
  %8 = getelementptr inbounds nuw i8, ptr @.str, i64 %7
  %9 = load i8, ptr %8, align 1
  store i8 %9, ptr %.01, align 1
  %10 = getelementptr inbounds nuw i8, ptr %.01, i64 1
  %11 = add nuw nsw i32 %.0, 1
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
  %11 = call ptr @malloc(i64 noundef %10) #9
  call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %10, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %3, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %4, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %5, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %6, i8 0, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %7, i8 0, i64 256, i1 false)
  br label %12

12:                                               ; preds = %14, %2
  %.033 = phi ptr [ %0, %2 ], [ %20, %14 ]
  %.02 = phi i64 [ 0, %2 ], [ %21, %14 ]
  %13 = icmp ult i64 %.02, %1
  br i1 %13, label %14, label %22

14:                                               ; preds = %12
  %15 = load i8, ptr %.033, align 1
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %16
  %18 = load i64, ptr %17, align 8
  %19 = add i64 %18, 1
  store i64 %19, ptr %17, align 8
  %20 = getelementptr inbounds nuw i8, ptr %.033, i64 1
  %21 = add i64 %.02, 1
  br label %12, !llvm.loop !9

22:                                               ; preds = %30, %12
  %.010 = phi i64 [ %.111, %30 ], [ 0, %12 ]
  %.13 = phi i64 [ %31, %30 ], [ 0, %12 ]
  %23 = icmp samesign ult i64 %.13, 256
  br i1 %23, label %24, label %32

24:                                               ; preds = %22
  %25 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.13
  %26 = load i64, ptr %25, align 8
  %.not8 = icmp eq i64 %26, 0
  br i1 %.not8, label %30, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.010
  store i64 %.13, ptr %28, align 8
  %29 = add i64 %.010, 1
  br label %30

30:                                               ; preds = %27, %24
  %.111 = phi i64 [ %29, %27 ], [ %.010, %24 ]
  %31 = add nuw nsw i64 %.13, 1
  br label %22, !llvm.loop !10

32:                                               ; preds = %33, %22
  %.24 = phi i64 [ %36, %33 ], [ %.010, %22 ]
  %.not = icmp eq i64 %.24, 0
  br i1 %.not, label %37, label %33

33:                                               ; preds = %32
  %34 = trunc i64 %.010 to i32
  %35 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %34, i32 noundef %35)
  %36 = add i64 %.24, -1
  br label %32, !llvm.loop !11

37:                                               ; preds = %39, %32
  %.212 = phi i64 [ %40, %39 ], [ %.010, %32 ]
  %38 = icmp ugt i64 %.212, 1
  br i1 %38, label %39, label %59

39:                                               ; preds = %37
  %40 = add i64 %.212, -1
  %41 = load i64, ptr %4, align 16
  %42 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %40
  %43 = load i64, ptr %42, align 8
  store i64 %43, ptr %4, align 16
  %44 = trunc i64 %40 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %44, i32 noundef 1)
  %45 = load i64, ptr %4, align 16
  %46 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %45
  %47 = load i64, ptr %46, align 8
  %48 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %41
  %49 = load i64, ptr %48, align 8
  %50 = add i64 %47, %49
  %51 = add i64 %.212, 255
  %52 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %51
  store i64 %50, ptr %52, align 8
  %53 = trunc i64 %51 to i32
  %54 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %41
  store i32 %53, ptr %54, align 4
  %55 = trunc i64 %.212 to i32
  %56 = sub i32 -255, %55
  %57 = load i64, ptr %4, align 16
  %58 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %57
  store i32 %56, ptr %58, align 4
  store i64 %51, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %44, i32 noundef 1)
  br label %37, !llvm.loop !12

59:                                               ; preds = %37
  %60 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212
  %61 = getelementptr inbounds nuw i8, ptr %60, i64 1024
  store i32 0, ptr %61, align 4
  br label %62

62:                                               ; preds = %82, %59
  %.045 = phi i64 [ 0, %59 ], [ %.146, %82 ]
  %.042 = phi i64 [ 0, %59 ], [ %83, %82 ]
  %.039 = phi i64 [ 0, %59 ], [ %.140, %82 ]
  %63 = icmp samesign ult i64 %.042, 256
  br i1 %63, label %64, label %84

64:                                               ; preds = %62
  %65 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.042
  %66 = load i64, ptr %65, align 8
  %.not6 = icmp eq i64 %66, 0
  br i1 %.not6, label %67, label %70

67:                                               ; preds = %64
  %68 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 0, ptr %68, align 4
  %69 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 0, ptr %69, align 1
  br label %82

70:                                               ; preds = %64, %71
  %.043 = phi i64 [ %.144, %71 ], [ 0, %64 ]
  %.042.pn = phi i64 [ %74, %71 ], [ %.042, %64 ]
  %.05 = phi i64 [ %75, %71 ], [ 1, %64 ]
  %.3 = phi i64 [ %76, %71 ], [ 0, %64 ]
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.042.pn
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %77, label %71

71:                                               ; preds = %70
  %72 = icmp slt i32 %.037, 0
  %73 = select i1 %72, i64 %.05, i64 0
  %.144 = add i64 %.043, %73
  %.138 = call i32 @llvm.abs.i32(i32 %.037, i1 true)
  %74 = zext nneg i32 %.138 to i64
  %75 = shl i64 %.05, 1
  %76 = add i64 %.3, 1
  br label %70, !llvm.loop !13

77:                                               ; preds = %70
  %78 = trunc i64 %.043 to i32
  %79 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 %78, ptr %79, align 4
  %80 = trunc i64 %.3 to i8
  %81 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 %80, ptr %81, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043, i64 %.045)
  %.241 = call i64 @llvm.umax.i64(i64 %.3, i64 %.039)
  br label %82

82:                                               ; preds = %77, %67
  %.146 = phi i64 [ %spec.select, %77 ], [ %.045, %67 ]
  %.140 = phi i64 [ %.241, %77 ], [ %.039, %67 ]
  %83 = add nuw nsw i64 %.042, 1
  br label %62, !llvm.loop !14

84:                                               ; preds = %62
  %85 = icmp ugt i64 %.039, 32
  br i1 %85, label %86, label %89

86:                                               ; preds = %84
  %87 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %88 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %87)
  call void @exit(i32 noundef 1) #11
  unreachable

89:                                               ; preds = %84
  %90 = icmp eq i64 %.045, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %89
  %92 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %93 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %92)
  call void @exit(i32 noundef 1) #11
  unreachable

94:                                               ; preds = %134, %89
  %.134 = phi ptr [ %135, %134 ], [ %0, %89 ]
  %.028 = phi i64 [ %.129, %134 ], [ 0, %89 ]
  %.024 = phi i8 [ %.125, %134 ], [ 0, %89 ]
  %.16 = phi i64 [ %136, %134 ], [ 0, %89 ]
  %.01 = phi i32 [ %.1, %134 ], [ -1, %89 ]
  %95 = icmp ult i64 %.16, %1
  br i1 %95, label %96, label %137

96:                                               ; preds = %94
  %97 = load i8, ptr %.134, align 1
  %98 = zext i8 %97 to i64
  %99 = getelementptr inbounds nuw i8, ptr %7, i64 %98
  %100 = load i8, ptr %99, align 1
  %101 = zext i8 %100 to i32
  %102 = add nsw i32 %101, -1
  %103 = shl nuw i32 1, %102
  %104 = sext i32 %103 to i64
  br label %105

105:                                              ; preds = %124, %96
  %.129 = phi i64 [ %.028, %96 ], [ %.230, %124 ]
  %.125 = phi i8 [ %.024, %96 ], [ %.327, %124 ]
  %.015 = phi i64 [ %104, %96 ], [ %132, %124 ]
  %.4 = phi i64 [ 0, %96 ], [ %133, %124 ]
  %.1 = phi i32 [ %.01, %96 ], [ %.2, %124 ]
  %106 = load i8, ptr %.134, align 1
  %107 = zext i8 %106 to i64
  %108 = getelementptr inbounds nuw i8, ptr %7, i64 %107
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %109 to i64
  %111 = icmp ult i64 %.4, %110
  br i1 %111, label %112, label %134

112:                                              ; preds = %105
  %113 = icmp eq i32 %.1, 7
  br i1 %113, label %114, label %121

114:                                              ; preds = %112
  %115 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %115, align 1
  %116 = add i64 %.129, 1
  %117 = icmp eq i64 %116, %1
  br i1 %117, label %118, label %124

118:                                              ; preds = %114
  %119 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %120 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %119)
  call void @exit(i32 noundef 1) #11
  unreachable

121:                                              ; preds = %112
  %122 = add nsw i32 %.1, 1
  %123 = shl i8 %.125, 1
  br label %124

124:                                              ; preds = %121, %114
  %.230 = phi i64 [ %.129, %121 ], [ %116, %114 ]
  %.226 = phi i8 [ %123, %121 ], [ 0, %114 ]
  %.2 = phi i32 [ %122, %121 ], [ 0, %114 ]
  %125 = load i8, ptr %.134, align 1
  %126 = zext i8 %125 to i64
  %127 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %126
  %128 = load i32, ptr %127, align 4
  %129 = zext i32 %128 to i64
  %130 = and i64 %.015, %129
  %.not5 = icmp ne i64 %130, 0
  %131 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %131
  %132 = lshr i64 %.015, 1
  %133 = add nuw nsw i64 %.4, 1
  br label %105, !llvm.loop !15

134:                                              ; preds = %105
  %135 = getelementptr inbounds nuw i8, ptr %.134, i64 1
  %136 = add i64 %.16, 1
  br label %94, !llvm.loop !16

137:                                              ; preds = %94
  %138 = sub nsw i32 7, %.01
  %139 = zext i8 %.024 to i32
  %140 = shl i32 %139, %138
  %141 = trunc i32 %140 to i8
  %142 = getelementptr inbounds nuw i8, ptr %11, i64 %.028
  store i8 %141, ptr %142, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %143

143:                                              ; preds = %173, %137
  %.27 = phi i64 [ 0, %137 ], [ %174, %173 ]
  %.0 = phi ptr [ %9, %137 ], [ %147, %173 ]
  %144 = icmp samesign ult i64 %.27, 256
  br i1 %144, label %145, label %175

145:                                              ; preds = %143
  %146 = trunc nuw i64 %.27 to i8
  store i8 %146, ptr %.0, align 1
  %147 = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %148 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.27
  %149 = load i32, ptr %148, align 4
  %150 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %151 = load i8, ptr %150, align 1
  %152 = zext i8 %151 to i32
  %153 = or i32 %149, %152
  %.not3 = icmp eq i32 %153, 0
  br i1 %.not3, label %173, label %154

154:                                              ; preds = %145
  %155 = add nsw i32 %152, -1
  %156 = shl nuw i32 1, %155
  %157 = sext i32 %156 to i64
  br label %158

158:                                              ; preds = %162, %154
  %.019 = phi i32 [ 0, %154 ], [ %spec.select1, %162 ]
  %.116 = phi i64 [ %157, %154 ], [ %169, %162 ]
  %.5 = phi i64 [ 0, %154 ], [ %170, %162 ]
  %159 = load i8, ptr %150, align 1
  %160 = zext i8 %159 to i64
  %161 = icmp ult i64 %.5, %160
  br i1 %161, label %162, label %171

162:                                              ; preds = %158
  %163 = shl i32 %.019, 1
  %164 = or disjoint i32 %163, 1
  %165 = load i32, ptr %148, align 4
  %166 = zext i32 %165 to i64
  %167 = and i64 %.116, %166
  %.not4 = icmp eq i64 %167, 0
  %168 = add i32 %163, 2
  %spec.select1 = select i1 %.not4, i32 %164, i32 %168
  %169 = lshr i64 %.116, 1
  %170 = add nuw nsw i64 %.5, 1
  br label %158, !llvm.loop !17

171:                                              ; preds = %158
  %172 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.27
  store i32 %.019, ptr %172, align 4
  br label %173

173:                                              ; preds = %171, %145
  %174 = add nuw nsw i64 %.27, 1
  br label %143, !llvm.loop !18

175:                                              ; preds = %.critedge, %143
  %.6 = phi i64 [ %195, %.critedge ], [ 1, %143 ]
  %176 = icmp samesign ult i64 %.6, 256
  br i1 %176, label %177, label %196

177:                                              ; preds = %175
  %178 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.6
  %179 = load i32, ptr %178, align 4
  %180 = getelementptr inbounds nuw i8, ptr %9, i64 %.6
  %181 = load i8, ptr %180, align 1
  br label %182

182:                                              ; preds = %188, %177
  %.38 = phi i64 [ %.6, %177 ], [ %184, %188 ]
  %.not2 = icmp eq i64 %.38, 0
  br i1 %.not2, label %.critedge, label %183

183:                                              ; preds = %182
  %184 = add nsw i64 %.38, -1
  %185 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %184
  %186 = load i32, ptr %185, align 4
  %187 = icmp ugt i32 %186, %179
  br i1 %187, label %188, label %.critedge

188:                                              ; preds = %183
  %189 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %186, ptr %189, align 4
  %190 = getelementptr inbounds nuw i8, ptr %9, i64 %184
  %191 = load i8, ptr %190, align 1
  %192 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %191, ptr %192, align 1
  br label %182, !llvm.loop !19

.critedge:                                        ; preds = %183, %182
  %193 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %179, ptr %193, align 4
  %194 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %181, ptr %194, align 1
  %195 = add nuw nsw i64 %.6, 1
  br label %175, !llvm.loop !20

196:                                              ; preds = %200, %175
  %.49 = phi i64 [ %201, %200 ], [ 0, %175 ]
  %197 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %198 = load i32, ptr %197, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %196
  %201 = add i64 %.49, 1
  br label %196, !llvm.loop !21

202:                                              ; preds = %224, %196
  %.235 = phi ptr [ %.336, %224 ], [ %0, %196 ]
  %.031 = phi ptr [ %.132, %224 ], [ %11, %196 ]
  %.221 = phi i32 [ %.423, %224 ], [ 0, %196 ]
  %.217 = phi i64 [ %.318, %224 ], [ 128, %196 ]
  %.313 = phi i64 [ %.414, %224 ], [ 0, %196 ]
  %.7 = phi i64 [ %.9, %224 ], [ %.49, %196 ]
  %203 = icmp ult i64 %.313, %1
  br i1 %203, label %204, label %227

204:                                              ; preds = %202
  %205 = shl i32 %.221, 1
  %206 = or disjoint i32 %205, 1
  %207 = load i8, ptr %.031, align 1
  %208 = zext i8 %207 to i64
  %209 = and i64 %.217, %208
  %.not1 = icmp eq i64 %209, 0
  %210 = add i32 %205, 2
  %spec.select2 = select i1 %.not1, i32 %206, i32 %210
  br label %211

211:                                              ; preds = %215, %204
  %.8 = phi i64 [ %.7, %204 ], [ %216, %215 ]
  %212 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %213 = load i32, ptr %212, align 4
  %214 = icmp ult i32 %213, %spec.select2
  br i1 %214, label %215, label %217

215:                                              ; preds = %211
  %216 = add i64 %.8, 1
  br label %211, !llvm.loop !22

217:                                              ; preds = %211
  %218 = icmp eq i32 %spec.select2, %213
  br i1 %218, label %219, label %224

219:                                              ; preds = %217
  %220 = getelementptr inbounds nuw i8, ptr %9, i64 %.8
  %221 = load i8, ptr %220, align 1
  store i8 %221, ptr %.235, align 1
  %222 = getelementptr inbounds nuw i8, ptr %.235, i64 1
  %223 = add i64 %.313, 1
  br label %224

224:                                              ; preds = %219, %217
  %.336 = phi ptr [ %222, %219 ], [ %.235, %217 ]
  %.423 = phi i32 [ 0, %219 ], [ %spec.select2, %217 ]
  %.414 = phi i64 [ %223, %219 ], [ %.313, %217 ]
  %.9 = phi i64 [ %.49, %219 ], [ %.8, %217 ]
  %225 = icmp ult i64 %.217, 2
  %226 = lshr i64 %.217, 1
  %.132.idx = zext i1 %225 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.031, i64 %.132.idx
  %.318 = select i1 %225, i64 128, i64 %226
  br label %202, !llvm.loop !23

227:                                              ; preds = %202
  call void @free(ptr noundef %11) #10
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

9:                                                ; preds = %37, %4
  %.01 = phi i32 [ %3, %4 ], [ %.0, %37 ]
  %10 = sdiv i32 %2, 2
  %.not = icmp sgt i32 %.01, %10
  br i1 %.not, label %41, label %11

11:                                               ; preds = %9
  %12 = shl nsw i32 %.01, 1
  %13 = icmp slt i32 %12, %2
  br i1 %13, label %14, label %26

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
  %25 = zext i1 %24 to i32
  %spec.select = or disjoint i32 %12, %25
  br label %26

26:                                               ; preds = %14, %11
  %.0 = phi i32 [ %12, %11 ], [ %spec.select, %14 ]
  %sext = shl i64 %8, 32
  %27 = ashr exact i64 %sext, 29
  %28 = getelementptr inbounds i8, ptr %0, i64 %27
  %29 = load i64, ptr %28, align 8
  %30 = sext i32 %.0 to i64
  %31 = getelementptr [8 x i8], ptr %1, i64 %30
  %32 = getelementptr i8, ptr %31, i64 -8
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %33
  %35 = load i64, ptr %34, align 8
  %36 = icmp ult i64 %29, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %26
  %38 = sext i32 %.01 to i64
  %39 = getelementptr [8 x i8], ptr %1, i64 %38
  %40 = getelementptr i8, ptr %39, i64 -8
  store i64 %33, ptr %40, align 8
  br label %9, !llvm.loop !24

41:                                               ; preds = %26, %9
  %sext1 = shl i64 %8, 32
  %42 = ashr exact i64 %sext1, 32
  %43 = sext i32 %.01 to i64
  %44 = getelementptr [8 x i8], ptr %1, i64 %43
  %45 = getelementptr i8, ptr %44, i64 -8
  store i64 %42, ptr %45, align 8
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
  br i1 %3, label %4, label %12

4:                                                ; preds = %10, %2
  %.01 = phi i32 [ %11, %10 ], [ 1, %2 ]
  %5 = icmp slt i32 %.01, %0
  br i1 %5, label %6, label %12

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %8 = load ptr, ptr %7, align 8
  %9 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(4) @.str.4) #10
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %12, label %10

10:                                               ; preds = %6
  %11 = add nuw nsw i32 %.01, 1
  br label %4, !llvm.loop !25

12:                                               ; preds = %6, %4, %2
  %.not1 = phi i1 [ true, %2 ], [ true, %4 ], [ false, %6 ]
  %13 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %14

14:                                               ; preds = %16, %12
  %.12 = phi i32 [ 0, %12 ], [ %17, %16 ]
  %15 = icmp samesign ult i32 %.12, 30
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  call void @compdecomp(ptr noundef %13, i64 noundef 10000000)
  %17 = add nuw nsw i32 %.12, 1
  br label %14, !llvm.loop !26

18:                                               ; preds = %14
  call void @free(ptr noundef %13) #10
  br i1 %.not1, label %22, label %19

19:                                               ; preds = %18
  %20 = call ptr @__acrt_iob_func(i32 noundef 1) #10
  %21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.5, double noundef 0.000000e+00) #10
  br label %25

22:                                               ; preds = %18
  %23 = call ptr @__acrt_iob_func(i32 noundef 1) #10
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.6, double noundef 0.000000e+00) #10
  br label %25

25:                                               ; preds = %22, %19
  %26 = call ptr @__acrt_iob_func(i32 noundef 1) #10
  %27 = call i32 @fflush(ptr noundef %26) #10
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

declare dso_local i32 @fflush(ptr noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal range(i64 -31, 32) i64 @random4() #0 {
  %1 = load i32, ptr @seed, align 4
  %2 = xor i32 %1, 123459876
  %3 = sdiv i32 %2, 127773
  %.neg = mul nsw i32 %3, -127773
  %4 = add i32 %.neg, %2
  %5 = mul nsw i32 %4, 16807
  %.neg1 = mul nsw i32 %3, -2836
  %6 = add i32 %.neg1, %5
  %7 = icmp slt i32 %6, 0
  %8 = add nsw i32 %6, 2147483647
  %spec.select = select i1 %7, i32 %8, i32 %6
  %9 = srem i32 %spec.select, 32
  %10 = sext i32 %9 to i64
  %11 = xor i32 %spec.select, 123459876
  store i32 %11, ptr @seed, align 4
  ret i64 %10
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind }
attributes #11 = { cold noreturn nounwind }

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
