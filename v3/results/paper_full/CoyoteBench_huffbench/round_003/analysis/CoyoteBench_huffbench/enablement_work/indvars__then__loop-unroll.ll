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

3:                                                ; preds = %4, %1
  %indvars.iv = phi i64 [ %indvars.iv.next, %4 ], [ 0, %1 ]
  %.01 = phi ptr [ %2, %1 ], [ %8, %4 ]
  %exitcond = icmp ne i64 %indvars.iv, %0
  br i1 %exitcond, label %4, label %9

4:                                                ; preds = %3
  %5 = call i64 @random4()
  %6 = getelementptr inbounds nuw i8, ptr @.str, i64 %5
  %7 = load i8, ptr %6, align 1
  store i8 %7, ptr %.01, align 1
  %8 = getelementptr inbounds nuw i8, ptr %.01, i64 1
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  br label %3, !llvm.loop !7

9:                                                ; preds = %3
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

12:                                               ; preds = %13, %2
  %.033 = phi ptr [ %0, %2 ], [ %19, %13 ]
  %.02 = phi i64 [ 0, %2 ], [ %20, %13 ]
  %exitcond = icmp ne i64 %.02, %1
  br i1 %exitcond, label %13, label %.preheader6

.preheader6:                                      ; preds = %12
  br label %21

13:                                               ; preds = %12
  %14 = load i8, ptr %.033, align 1
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %15
  %17 = load i64, ptr %16, align 8
  %18 = add i64 %17, 1
  store i64 %18, ptr %16, align 8
  %19 = getelementptr inbounds nuw i8, ptr %.033, i64 1
  %20 = add i64 %.02, 1
  br label %12, !llvm.loop !9

21:                                               ; preds = %36, %.preheader6
  %.010 = phi i64 [ 0, %.preheader6 ], [ %.111.1, %36 ]
  %.13 = phi i64 [ 0, %.preheader6 ], [ %37, %36 ]
  %exitcond13 = icmp ne i64 %.13, 256
  br i1 %exitcond13, label %22, label %.preheader5

.preheader5:                                      ; preds = %21
  %.010.lcssa = phi i64 [ %.010, %21 ]
  br label %38

22:                                               ; preds = %21
  %23 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.13
  %24 = load i64, ptr %23, align 8
  %.not8 = icmp eq i64 %24, 0
  br i1 %.not8, label %28, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.010
  store i64 %.13, ptr %26, align 8
  %27 = add i64 %.010, 1
  br label %28

28:                                               ; preds = %25, %22
  %.111 = phi i64 [ %27, %25 ], [ %.010, %22 ]
  %29 = add nuw nsw i64 %.13, 1
  br label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %29
  %32 = load i64, ptr %31, align 8
  %.not8.1 = icmp eq i64 %32, 0
  br i1 %.not8.1, label %36, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.111
  store i64 %29, ptr %34, align 8
  %35 = add i64 %.111, 1
  br label %36

36:                                               ; preds = %33, %30
  %.111.1 = phi i64 [ %35, %33 ], [ %.111, %30 ]
  %37 = add nuw nsw i64 %.13, 2
  br label %21, !llvm.loop !10

38:                                               ; preds = %.preheader5, %39
  %.24 = phi i64 [ %42, %39 ], [ %.010.lcssa, %.preheader5 ]
  %.not = icmp eq i64 %.24, 0
  br i1 %.not, label %.preheader4, label %39

.preheader4:                                      ; preds = %38
  br label %43

39:                                               ; preds = %38
  %40 = trunc i64 %.010.lcssa to i32
  %41 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %40, i32 noundef %41)
  %42 = add i64 %.24, -1
  br label %38, !llvm.loop !11

43:                                               ; preds = %.preheader4, %45
  %.212 = phi i64 [ %46, %45 ], [ %.010.lcssa, %.preheader4 ]
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
  %.212.lcssa = phi i64 [ %.212, %43 ]
  %66 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 1024
  store i32 0, ptr %67, align 4
  br label %68

68:                                               ; preds = %88, %65
  %.045 = phi i64 [ 0, %65 ], [ %.146, %88 ]
  %.042 = phi i64 [ 0, %65 ], [ %89, %88 ]
  %.039 = phi i64 [ 0, %65 ], [ %.140, %88 ]
  %exitcond14 = icmp ne i64 %.042, 256
  br i1 %exitcond14, label %69, label %90

69:                                               ; preds = %68
  %70 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.042
  %71 = load i64, ptr %70, align 8
  %.not6 = icmp eq i64 %71, 0
  br i1 %.not6, label %72, label %75

72:                                               ; preds = %69
  %73 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 0, ptr %73, align 4
  %74 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 0, ptr %74, align 1
  br label %88

75:                                               ; preds = %69
  br label %76

76:                                               ; preds = %77, %75
  %.043 = phi i64 [ 0, %75 ], [ %.144, %77 ]
  %.042.pn = phi i64 [ %.042, %75 ], [ %80, %77 ]
  %.05 = phi i64 [ 1, %75 ], [ %81, %77 ]
  %.3 = phi i64 [ 0, %75 ], [ %82, %77 ]
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.042.pn
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %83, label %77

77:                                               ; preds = %76
  %78 = icmp slt i32 %.037, 0
  %79 = select i1 %78, i64 %.05, i64 0
  %.144 = add i64 %.043, %79
  %.138 = call i32 @llvm.abs.i32(i32 %.037, i1 true)
  %80 = zext nneg i32 %.138 to i64
  %81 = shl i64 %.05, 1
  %82 = add i64 %.3, 1
  br label %76, !llvm.loop !13

83:                                               ; preds = %76
  %.043.lcssa = phi i64 [ %.043, %76 ]
  %.3.lcssa = phi i64 [ %.3, %76 ]
  %84 = trunc i64 %.043.lcssa to i32
  %85 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 %84, ptr %85, align 4
  %86 = trunc i64 %.3.lcssa to i8
  %87 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 %86, ptr %87, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.045)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.039)
  br label %88

88:                                               ; preds = %83, %72
  %.146 = phi i64 [ %spec.select, %83 ], [ %.045, %72 ]
  %.140 = phi i64 [ %.241, %83 ], [ %.039, %72 ]
  %89 = add nuw nsw i64 %.042, 1
  br label %68, !llvm.loop !14

90:                                               ; preds = %68
  %.045.lcssa = phi i64 [ %.045, %68 ]
  %.039.lcssa = phi i64 [ %.039, %68 ]
  %91 = icmp ugt i64 %.039.lcssa, 32
  br i1 %91, label %92, label %95

92:                                               ; preds = %90
  %93 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %94 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %93)
  call void @exit(i32 noundef 1) #11
  unreachable

95:                                               ; preds = %90
  %96 = icmp eq i64 %.045.lcssa, 0
  br i1 %96, label %97, label %.preheader3

.preheader3:                                      ; preds = %95
  br label %100

97:                                               ; preds = %95
  %98 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %99 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %98)
  call void @exit(i32 noundef 1) #11
  unreachable

100:                                              ; preds = %.preheader3, %139
  %.134 = phi ptr [ %140, %139 ], [ %0, %.preheader3 ]
  %.028 = phi i64 [ %.129.lcssa, %139 ], [ 0, %.preheader3 ]
  %.024 = phi i8 [ %.125.lcssa, %139 ], [ 0, %.preheader3 ]
  %.16 = phi i64 [ %141, %139 ], [ 0, %.preheader3 ]
  %.01 = phi i32 [ %.1.lcssa, %139 ], [ -1, %.preheader3 ]
  %exitcond15 = icmp ne i64 %.16, %1
  br i1 %exitcond15, label %101, label %142

101:                                              ; preds = %100
  %102 = load i8, ptr %.134, align 1
  %103 = zext i8 %102 to i64
  %104 = getelementptr inbounds nuw i8, ptr %7, i64 %103
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i32
  %107 = add nsw i32 %106, -1
  %108 = shl nuw i32 1, %107
  %109 = sext i32 %108 to i64
  br label %110

110:                                              ; preds = %129, %101
  %.129 = phi i64 [ %.028, %101 ], [ %.230, %129 ]
  %.125 = phi i8 [ %.024, %101 ], [ %.327, %129 ]
  %.015 = phi i64 [ %109, %101 ], [ %137, %129 ]
  %.4 = phi i64 [ 0, %101 ], [ %138, %129 ]
  %.1 = phi i32 [ %.01, %101 ], [ %.2, %129 ]
  %111 = load i8, ptr %.134, align 1
  %112 = zext i8 %111 to i64
  %113 = getelementptr inbounds nuw i8, ptr %7, i64 %112
  %114 = load i8, ptr %113, align 1
  %115 = zext i8 %114 to i64
  %116 = icmp samesign ult i64 %.4, %115
  br i1 %116, label %117, label %139

117:                                              ; preds = %110
  %118 = icmp eq i32 %.1, 7
  br i1 %118, label %119, label %126

119:                                              ; preds = %117
  %120 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %120, align 1
  %121 = add i64 %.129, 1
  %122 = icmp eq i64 %121, %1
  br i1 %122, label %123, label %129

123:                                              ; preds = %119
  %124 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %125 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %124)
  call void @exit(i32 noundef 1) #11
  unreachable

126:                                              ; preds = %117
  %127 = add nsw i32 %.1, 1
  %128 = shl i8 %.125, 1
  br label %129

129:                                              ; preds = %126, %119
  %.230 = phi i64 [ %.129, %126 ], [ %121, %119 ]
  %.226 = phi i8 [ %128, %126 ], [ 0, %119 ]
  %.2 = phi i32 [ %127, %126 ], [ 0, %119 ]
  %130 = load i8, ptr %.134, align 1
  %131 = zext i8 %130 to i64
  %132 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %131
  %133 = load i32, ptr %132, align 4
  %134 = zext i32 %133 to i64
  %135 = and i64 %.015, %134
  %.not5 = icmp ne i64 %135, 0
  %136 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %136
  %137 = lshr i64 %.015, 1
  %138 = add nuw nsw i64 %.4, 1
  br label %110, !llvm.loop !15

139:                                              ; preds = %110
  %.129.lcssa = phi i64 [ %.129, %110 ]
  %.125.lcssa = phi i8 [ %.125, %110 ]
  %.1.lcssa = phi i32 [ %.1, %110 ]
  %140 = getelementptr inbounds nuw i8, ptr %.134, i64 1
  %141 = add i64 %.16, 1
  br label %100, !llvm.loop !16

142:                                              ; preds = %100
  %.028.lcssa = phi i64 [ %.028, %100 ]
  %.024.lcssa = phi i8 [ %.024, %100 ]
  %.01.lcssa = phi i32 [ %.01, %100 ]
  %143 = sub nsw i32 7, %.01.lcssa
  %144 = zext i8 %.024.lcssa to i32
  %145 = shl i32 %144, %143
  %146 = trunc i32 %145 to i8
  %147 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %146, ptr %147, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %148

148:                                              ; preds = %177, %142
  %.27 = phi i64 [ 0, %142 ], [ %178, %177 ]
  %.0 = phi ptr [ %9, %142 ], [ %151, %177 ]
  %exitcond16 = icmp ne i64 %.27, 256
  br i1 %exitcond16, label %149, label %.preheader2

.preheader2:                                      ; preds = %148
  br label %179

149:                                              ; preds = %148
  %150 = trunc nuw i64 %.27 to i8
  store i8 %150, ptr %.0, align 1
  %151 = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %152 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.27
  %153 = load i32, ptr %152, align 4
  %154 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %155 = load i8, ptr %154, align 1
  %156 = zext i8 %155 to i32
  %157 = or i32 %153, %156
  %.not3 = icmp eq i32 %157, 0
  br i1 %.not3, label %177, label %158

158:                                              ; preds = %149
  %159 = add nsw i32 %156, -1
  %160 = shl nuw i32 1, %159
  %161 = sext i32 %160 to i64
  br label %162

162:                                              ; preds = %166, %158
  %.019 = phi i32 [ 0, %158 ], [ %spec.select1, %166 ]
  %.116 = phi i64 [ %161, %158 ], [ %173, %166 ]
  %.5 = phi i64 [ 0, %158 ], [ %174, %166 ]
  %163 = load i8, ptr %154, align 1
  %164 = zext i8 %163 to i64
  %165 = icmp samesign ult i64 %.5, %164
  br i1 %165, label %166, label %175

166:                                              ; preds = %162
  %167 = shl i32 %.019, 1
  %168 = or disjoint i32 %167, 1
  %169 = load i32, ptr %152, align 4
  %170 = zext i32 %169 to i64
  %171 = and i64 %.116, %170
  %.not4 = icmp eq i64 %171, 0
  %172 = add i32 %167, 2
  %spec.select1 = select i1 %.not4, i32 %168, i32 %172
  %173 = lshr i64 %.116, 1
  %174 = add nuw nsw i64 %.5, 1
  br label %162, !llvm.loop !17

175:                                              ; preds = %162
  %.019.lcssa = phi i32 [ %.019, %162 ]
  %176 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.27
  store i32 %.019.lcssa, ptr %176, align 4
  br label %177

177:                                              ; preds = %175, %149
  %178 = add nuw nsw i64 %.27, 1
  br label %148, !llvm.loop !18

179:                                              ; preds = %.preheader2, %.critedge
  %.6 = phi i64 [ %198, %.critedge ], [ 1, %.preheader2 ]
  %exitcond17 = icmp ne i64 %.6, 256
  br i1 %exitcond17, label %180, label %.preheader1

.preheader1:                                      ; preds = %179
  br label %199

180:                                              ; preds = %179
  %181 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.6
  %182 = load i32, ptr %181, align 4
  %183 = getelementptr inbounds nuw i8, ptr %9, i64 %.6
  %184 = load i8, ptr %183, align 1
  br label %185

185:                                              ; preds = %191, %180
  %.38 = phi i64 [ %.6, %180 ], [ %187, %191 ]
  %.not2 = icmp eq i64 %.38, 0
  br i1 %.not2, label %.critedge, label %186

186:                                              ; preds = %185
  %187 = add nsw i64 %.38, -1
  %188 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %187
  %189 = load i32, ptr %188, align 4
  %190 = icmp ugt i32 %189, %182
  br i1 %190, label %191, label %.critedge

191:                                              ; preds = %186
  %192 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %189, ptr %192, align 4
  %193 = getelementptr inbounds nuw i8, ptr %9, i64 %187
  %194 = load i8, ptr %193, align 1
  %195 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %194, ptr %195, align 1
  br label %185, !llvm.loop !19

.critedge:                                        ; preds = %186, %185
  %.38.lcssa = phi i64 [ %.38, %186 ], [ 0, %185 ]
  %196 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %182, ptr %196, align 4
  %197 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %184, ptr %197, align 1
  %198 = add nuw nsw i64 %.6, 1
  br label %179, !llvm.loop !20

199:                                              ; preds = %.preheader1, %203
  %.49 = phi i64 [ %204, %203 ], [ 0, %.preheader1 ]
  %200 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %201 = load i32, ptr %200, align 4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %.preheader

.preheader:                                       ; preds = %199
  %.49.lcssa = phi i64 [ %.49, %199 ]
  br label %205

203:                                              ; preds = %199
  %204 = add i64 %.49, 1
  br label %199, !llvm.loop !21

205:                                              ; preds = %.preheader, %227
  %.235 = phi ptr [ %.336, %227 ], [ %0, %.preheader ]
  %.031 = phi ptr [ %.132, %227 ], [ %11, %.preheader ]
  %.221 = phi i32 [ %.423, %227 ], [ 0, %.preheader ]
  %.217 = phi i64 [ %.318, %227 ], [ 128, %.preheader ]
  %.313 = phi i64 [ %.414, %227 ], [ 0, %.preheader ]
  %.7 = phi i64 [ %.9, %227 ], [ %.49.lcssa, %.preheader ]
  %206 = icmp ult i64 %.313, %1
  br i1 %206, label %207, label %230

207:                                              ; preds = %205
  %208 = shl i32 %.221, 1
  %209 = or disjoint i32 %208, 1
  %210 = load i8, ptr %.031, align 1
  %211 = zext i8 %210 to i64
  %212 = and i64 %.217, %211
  %.not1 = icmp eq i64 %212, 0
  %213 = add i32 %208, 2
  %spec.select2 = select i1 %.not1, i32 %209, i32 %213
  br label %214

214:                                              ; preds = %218, %207
  %.8 = phi i64 [ %.7, %207 ], [ %219, %218 ]
  %215 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %216 = load i32, ptr %215, align 4
  %217 = icmp ult i32 %216, %spec.select2
  br i1 %217, label %218, label %220

218:                                              ; preds = %214
  %219 = add i64 %.8, 1
  br label %214, !llvm.loop !22

220:                                              ; preds = %214
  %.8.lcssa = phi i64 [ %.8, %214 ]
  %.lcssa = phi i32 [ %216, %214 ]
  %221 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %221, label %222, label %227

222:                                              ; preds = %220
  %223 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %224 = load i8, ptr %223, align 1
  store i8 %224, ptr %.235, align 1
  %225 = getelementptr inbounds nuw i8, ptr %.235, i64 1
  %226 = add nuw i64 %.313, 1
  br label %227

227:                                              ; preds = %222, %220
  %.336 = phi ptr [ %225, %222 ], [ %.235, %220 ]
  %.423 = phi i32 [ 0, %222 ], [ %spec.select2, %220 ]
  %.414 = phi i64 [ %226, %222 ], [ %.313, %220 ]
  %.9 = phi i64 [ %.49.lcssa, %222 ], [ %.8.lcssa, %220 ]
  %228 = icmp ult i64 %.217, 2
  %229 = lshr i64 %.217, 1
  %.132.idx = zext i1 %228 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.031, i64 %.132.idx
  %.318 = select i1 %228, i64 128, i64 %229
  br label %205, !llvm.loop !23

230:                                              ; preds = %205
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
  %.01.lcssa = phi i32 [ %.01, %26 ], [ %.01, %9 ]
  %sext1 = shl i64 %8, 32
  %42 = ashr exact i64 %sext1, 32
  %43 = sext i32 %.01.lcssa to i64
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
  br i1 %3, label %.preheader, label %11

.preheader:                                       ; preds = %2
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %5

5:                                                ; preds = %.preheader, %9
  %.01 = phi i32 [ %10, %9 ], [ 1, %.preheader ]
  %exitcond = icmp ne i32 %.01, %0
  br i1 %exitcond, label %6, label %.loopexit

6:                                                ; preds = %5
  %7 = load ptr, ptr %4, align 8
  %8 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(4) @.str.4) #10
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %.loopexit, label %9

9:                                                ; preds = %6
  %10 = add nuw i32 %.01, 1
  br label %5, !llvm.loop !25

.loopexit:                                        ; preds = %5, %6
  %.not1.ph = phi i1 [ false, %6 ], [ true, %5 ]
  br label %11

11:                                               ; preds = %.loopexit, %2
  %.not1 = phi i1 [ true, %2 ], [ %.not1.ph, %.loopexit ]
  %12 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %13

13:                                               ; preds = %14, %11
  %.12 = phi i32 [ 0, %11 ], [ %15, %14 ]
  %exitcond1 = icmp ne i32 %.12, 30
  br i1 %exitcond1, label %14, label %16

14:                                               ; preds = %13
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  %15 = add nuw nsw i32 %.12, 1
  br label %13, !llvm.loop !26

16:                                               ; preds = %13
  call void @free(ptr noundef %12) #10
  br i1 %.not1, label %20, label %17

17:                                               ; preds = %16
  %18 = call ptr @__acrt_iob_func(i32 noundef 1) #10
  %19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.5, double noundef 0.000000e+00) #10
  br label %23

20:                                               ; preds = %16
  %21 = call ptr @__acrt_iob_func(i32 noundef 1) #10
  %22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.6, double noundef 0.000000e+00) #10
  br label %23

23:                                               ; preds = %20, %17
  %24 = call ptr @__acrt_iob_func(i32 noundef 1) #10
  %25 = call i32 @fflush(ptr noundef %24) #10
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
