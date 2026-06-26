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
  br i1 %exitcond, label %13, label %.preheader12

.preheader12:                                     ; preds = %12
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

21:                                               ; preds = %37, %.preheader12
  %.010 = phi i64 [ 0, %.preheader12 ], [ %.111.1, %37 ]
  %.13 = phi i64 [ 0, %.preheader12 ], [ %38, %37 ]
  %22 = icmp samesign ult i64 %.13, 256
  br i1 %22, label %23, label %.preheader11

.preheader11:                                     ; preds = %21
  %.010.lcssa = phi i64 [ %.010, %21 ]
  br label %39

23:                                               ; preds = %21
  %24 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.13
  %25 = load i64, ptr %24, align 8
  %.not8 = icmp eq i64 %25, 0
  br i1 %.not8, label %29, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.010
  store i64 %.13, ptr %27, align 8
  %28 = add i64 %.010, 1
  br label %29

29:                                               ; preds = %26, %23
  %.111 = phi i64 [ %28, %26 ], [ %.010, %23 ]
  %30 = add nuw nsw i64 %.13, 1
  br label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %30
  %33 = load i64, ptr %32, align 8
  %.not8.1 = icmp eq i64 %33, 0
  br i1 %.not8.1, label %37, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.111
  store i64 %30, ptr %35, align 8
  %36 = add i64 %.111, 1
  br label %37

37:                                               ; preds = %34, %31
  %.111.1 = phi i64 [ %36, %34 ], [ %.111, %31 ]
  %38 = add nuw nsw i64 %.13, 2
  br label %21, !llvm.loop !10

39:                                               ; preds = %.preheader11, %40
  %.24 = phi i64 [ %43, %40 ], [ %.010.lcssa, %.preheader11 ]
  %.not = icmp eq i64 %.24, 0
  br i1 %.not, label %.preheader10, label %40

.preheader10:                                     ; preds = %39
  br label %44

40:                                               ; preds = %39
  %41 = trunc i64 %.010.lcssa to i32
  %42 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %41, i32 noundef %42)
  %43 = add i64 %.24, -1
  br label %39, !llvm.loop !11

44:                                               ; preds = %.preheader10, %46
  %.212 = phi i64 [ %47, %46 ], [ %.010.lcssa, %.preheader10 ]
  %45 = icmp ugt i64 %.212, 1
  br i1 %45, label %46, label %66

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
  %58 = add i64 %.212, 255
  %59 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %58
  store i64 %57, ptr %59, align 8
  %60 = trunc i64 %58 to i32
  %61 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %48
  store i32 %60, ptr %61, align 4
  %62 = trunc i64 %.212 to i32
  %63 = sub i32 -255, %62
  %64 = load i64, ptr %4, align 16
  %65 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %64
  store i32 %63, ptr %65, align 4
  store i64 %58, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %51, i32 noundef 1)
  br label %44, !llvm.loop !12

66:                                               ; preds = %44
  %.212.lcssa = phi i64 [ %.212, %44 ]
  %67 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %68 = getelementptr inbounds nuw i8, ptr %67, i64 1024
  store i32 0, ptr %68, align 4
  br label %69

69:                                               ; preds = %89, %66
  %.045 = phi i64 [ 0, %66 ], [ %.146, %89 ]
  %.042 = phi i64 [ 0, %66 ], [ %90, %89 ]
  %.039 = phi i64 [ 0, %66 ], [ %.140, %89 ]
  %exitcond13 = icmp ne i64 %.042, 256
  br i1 %exitcond13, label %70, label %91

70:                                               ; preds = %69
  %71 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.042
  %72 = load i64, ptr %71, align 8
  %.not6 = icmp eq i64 %72, 0
  br i1 %.not6, label %73, label %76

73:                                               ; preds = %70
  %74 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 0, ptr %74, align 4
  %75 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 0, ptr %75, align 1
  br label %89

76:                                               ; preds = %70
  br label %77

77:                                               ; preds = %78, %76
  %.043 = phi i64 [ 0, %76 ], [ %.144, %78 ]
  %.042.pn = phi i64 [ %.042, %76 ], [ %81, %78 ]
  %.05 = phi i64 [ 1, %76 ], [ %82, %78 ]
  %.3 = phi i64 [ 0, %76 ], [ %83, %78 ]
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.042.pn
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %84, label %78

78:                                               ; preds = %77
  %79 = icmp slt i32 %.037, 0
  %80 = select i1 %79, i64 %.05, i64 0
  %.144 = add i64 %.043, %80
  %.138 = call i32 @llvm.abs.i32(i32 %.037, i1 true)
  %81 = zext nneg i32 %.138 to i64
  %82 = shl i64 %.05, 1
  %83 = add i64 %.3, 1
  br label %77, !llvm.loop !13

84:                                               ; preds = %77
  %.043.lcssa = phi i64 [ %.043, %77 ]
  %.3.lcssa = phi i64 [ %.3, %77 ]
  %85 = trunc i64 %.043.lcssa to i32
  %86 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 %85, ptr %86, align 4
  %87 = trunc i64 %.3.lcssa to i8
  %88 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 %87, ptr %88, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.045)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.039)
  br label %89

89:                                               ; preds = %84, %73
  %.146 = phi i64 [ %spec.select, %84 ], [ %.045, %73 ]
  %.140 = phi i64 [ %.241, %84 ], [ %.039, %73 ]
  %90 = add nuw nsw i64 %.042, 1
  br label %69, !llvm.loop !14

91:                                               ; preds = %69
  %.045.lcssa = phi i64 [ %.045, %69 ]
  %.039.lcssa = phi i64 [ %.039, %69 ]
  %92 = icmp ugt i64 %.039.lcssa, 32
  br i1 %92, label %93, label %96

93:                                               ; preds = %91
  %94 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %95 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %94)
  call void @exit(i32 noundef 1) #11
  unreachable

96:                                               ; preds = %91
  %97 = icmp eq i64 %.045.lcssa, 0
  br i1 %97, label %98, label %.preheader3

.preheader3:                                      ; preds = %96
  br label %101

98:                                               ; preds = %96
  %99 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %100 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %99)
  call void @exit(i32 noundef 1) #11
  unreachable

101:                                              ; preds = %.preheader3, %140
  %.134 = phi ptr [ %141, %140 ], [ %0, %.preheader3 ]
  %.028 = phi i64 [ %.129.lcssa, %140 ], [ 0, %.preheader3 ]
  %.024 = phi i8 [ %.125.lcssa, %140 ], [ 0, %.preheader3 ]
  %.16 = phi i64 [ %142, %140 ], [ 0, %.preheader3 ]
  %.01 = phi i32 [ %.1.lcssa, %140 ], [ -1, %.preheader3 ]
  %exitcond14 = icmp ne i64 %.16, %1
  br i1 %exitcond14, label %102, label %143

102:                                              ; preds = %101
  %103 = load i8, ptr %.134, align 1
  %104 = zext i8 %103 to i64
  %105 = getelementptr inbounds nuw i8, ptr %7, i64 %104
  %106 = load i8, ptr %105, align 1
  %107 = zext i8 %106 to i32
  %108 = add nsw i32 %107, -1
  %109 = shl nuw i32 1, %108
  %110 = sext i32 %109 to i64
  br label %111

111:                                              ; preds = %130, %102
  %.129 = phi i64 [ %.028, %102 ], [ %.230, %130 ]
  %.125 = phi i8 [ %.024, %102 ], [ %.327, %130 ]
  %.015 = phi i64 [ %110, %102 ], [ %138, %130 ]
  %.4 = phi i64 [ 0, %102 ], [ %139, %130 ]
  %.1 = phi i32 [ %.01, %102 ], [ %.2, %130 ]
  %112 = load i8, ptr %.134, align 1
  %113 = zext i8 %112 to i64
  %114 = getelementptr inbounds nuw i8, ptr %7, i64 %113
  %115 = load i8, ptr %114, align 1
  %116 = zext i8 %115 to i64
  %117 = icmp samesign ult i64 %.4, %116
  br i1 %117, label %118, label %140

118:                                              ; preds = %111
  %119 = icmp eq i32 %.1, 7
  br i1 %119, label %120, label %127

120:                                              ; preds = %118
  %121 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %121, align 1
  %122 = add i64 %.129, 1
  %123 = icmp eq i64 %122, %1
  br i1 %123, label %124, label %130

124:                                              ; preds = %120
  %125 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %126 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %125)
  call void @exit(i32 noundef 1) #11
  unreachable

127:                                              ; preds = %118
  %128 = add nsw i32 %.1, 1
  %129 = shl i8 %.125, 1
  br label %130

130:                                              ; preds = %127, %120
  %.230 = phi i64 [ %.129, %127 ], [ %122, %120 ]
  %.226 = phi i8 [ %129, %127 ], [ 0, %120 ]
  %.2 = phi i32 [ %128, %127 ], [ 0, %120 ]
  %131 = load i8, ptr %.134, align 1
  %132 = zext i8 %131 to i64
  %133 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %132
  %134 = load i32, ptr %133, align 4
  %135 = zext i32 %134 to i64
  %136 = and i64 %.015, %135
  %.not5 = icmp ne i64 %136, 0
  %137 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %137
  %138 = lshr i64 %.015, 1
  %139 = add nuw nsw i64 %.4, 1
  br label %111, !llvm.loop !15

140:                                              ; preds = %111
  %.129.lcssa = phi i64 [ %.129, %111 ]
  %.125.lcssa = phi i8 [ %.125, %111 ]
  %.1.lcssa = phi i32 [ %.1, %111 ]
  %141 = getelementptr inbounds nuw i8, ptr %.134, i64 1
  %142 = add i64 %.16, 1
  br label %101, !llvm.loop !16

143:                                              ; preds = %101
  %.028.lcssa = phi i64 [ %.028, %101 ]
  %.024.lcssa = phi i8 [ %.024, %101 ]
  %.01.lcssa = phi i32 [ %.01, %101 ]
  %144 = sub nsw i32 7, %.01.lcssa
  %145 = zext i8 %.024.lcssa to i32
  %146 = shl i32 %145, %144
  %147 = trunc i32 %146 to i8
  %148 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %147, ptr %148, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %149

149:                                              ; preds = %178, %143
  %.27 = phi i64 [ 0, %143 ], [ %179, %178 ]
  %.0 = phi ptr [ %9, %143 ], [ %152, %178 ]
  %exitcond15 = icmp ne i64 %.27, 256
  br i1 %exitcond15, label %150, label %.preheader2

.preheader2:                                      ; preds = %149
  br label %180

150:                                              ; preds = %149
  %151 = trunc nuw i64 %.27 to i8
  store i8 %151, ptr %.0, align 1
  %152 = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %153 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.27
  %154 = load i32, ptr %153, align 4
  %155 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %156 = load i8, ptr %155, align 1
  %157 = zext i8 %156 to i32
  %158 = or i32 %154, %157
  %.not3 = icmp eq i32 %158, 0
  br i1 %.not3, label %178, label %159

159:                                              ; preds = %150
  %160 = add nsw i32 %157, -1
  %161 = shl nuw i32 1, %160
  %162 = sext i32 %161 to i64
  br label %163

163:                                              ; preds = %167, %159
  %.019 = phi i32 [ 0, %159 ], [ %spec.select1, %167 ]
  %.116 = phi i64 [ %162, %159 ], [ %174, %167 ]
  %.5 = phi i64 [ 0, %159 ], [ %175, %167 ]
  %164 = load i8, ptr %155, align 1
  %165 = zext i8 %164 to i64
  %166 = icmp samesign ult i64 %.5, %165
  br i1 %166, label %167, label %176

167:                                              ; preds = %163
  %168 = shl i32 %.019, 1
  %169 = or disjoint i32 %168, 1
  %170 = load i32, ptr %153, align 4
  %171 = zext i32 %170 to i64
  %172 = and i64 %.116, %171
  %.not4 = icmp eq i64 %172, 0
  %173 = add i32 %168, 2
  %spec.select1 = select i1 %.not4, i32 %169, i32 %173
  %174 = lshr i64 %.116, 1
  %175 = add nuw nsw i64 %.5, 1
  br label %163, !llvm.loop !17

176:                                              ; preds = %163
  %.019.lcssa = phi i32 [ %.019, %163 ]
  %177 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.27
  store i32 %.019.lcssa, ptr %177, align 4
  br label %178

178:                                              ; preds = %176, %150
  %179 = add nuw nsw i64 %.27, 1
  br label %149, !llvm.loop !18

180:                                              ; preds = %.preheader2, %.critedge
  %.6 = phi i64 [ %199, %.critedge ], [ 1, %.preheader2 ]
  %exitcond16 = icmp ne i64 %.6, 256
  br i1 %exitcond16, label %181, label %.preheader1

.preheader1:                                      ; preds = %180
  br label %200

181:                                              ; preds = %180
  %182 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.6
  %183 = load i32, ptr %182, align 4
  %184 = getelementptr inbounds nuw i8, ptr %9, i64 %.6
  %185 = load i8, ptr %184, align 1
  br label %186

186:                                              ; preds = %192, %181
  %.38 = phi i64 [ %.6, %181 ], [ %188, %192 ]
  %.not2 = icmp eq i64 %.38, 0
  br i1 %.not2, label %.critedge, label %187

187:                                              ; preds = %186
  %188 = add nsw i64 %.38, -1
  %189 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %188
  %190 = load i32, ptr %189, align 4
  %191 = icmp ugt i32 %190, %183
  br i1 %191, label %192, label %.critedge

192:                                              ; preds = %187
  %193 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %190, ptr %193, align 4
  %194 = getelementptr inbounds nuw i8, ptr %9, i64 %188
  %195 = load i8, ptr %194, align 1
  %196 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %195, ptr %196, align 1
  br label %186, !llvm.loop !19

.critedge:                                        ; preds = %187, %186
  %.38.lcssa = phi i64 [ %.38, %187 ], [ 0, %186 ]
  %197 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %183, ptr %197, align 4
  %198 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %185, ptr %198, align 1
  %199 = add nuw nsw i64 %.6, 1
  br label %180, !llvm.loop !20

200:                                              ; preds = %.preheader1, %204
  %.49 = phi i64 [ %205, %204 ], [ 0, %.preheader1 ]
  %201 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %202 = load i32, ptr %201, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %.preheader

.preheader:                                       ; preds = %200
  %.49.lcssa = phi i64 [ %.49, %200 ]
  br label %206

204:                                              ; preds = %200
  %205 = add i64 %.49, 1
  br label %200, !llvm.loop !21

206:                                              ; preds = %.preheader, %228
  %.235 = phi ptr [ %.336, %228 ], [ %0, %.preheader ]
  %.031 = phi ptr [ %.132, %228 ], [ %11, %.preheader ]
  %.221 = phi i32 [ %.423, %228 ], [ 0, %.preheader ]
  %.217 = phi i64 [ %.318, %228 ], [ 128, %.preheader ]
  %.313 = phi i64 [ %.414, %228 ], [ 0, %.preheader ]
  %.7 = phi i64 [ %.9, %228 ], [ %.49.lcssa, %.preheader ]
  %207 = icmp ult i64 %.313, %1
  br i1 %207, label %208, label %231

208:                                              ; preds = %206
  %209 = shl i32 %.221, 1
  %210 = or disjoint i32 %209, 1
  %211 = load i8, ptr %.031, align 1
  %212 = zext i8 %211 to i64
  %213 = and i64 %.217, %212
  %.not1 = icmp eq i64 %213, 0
  %214 = add i32 %209, 2
  %spec.select2 = select i1 %.not1, i32 %210, i32 %214
  br label %215

215:                                              ; preds = %219, %208
  %.8 = phi i64 [ %.7, %208 ], [ %220, %219 ]
  %216 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %217 = load i32, ptr %216, align 4
  %218 = icmp ult i32 %217, %spec.select2
  br i1 %218, label %219, label %221

219:                                              ; preds = %215
  %220 = add i64 %.8, 1
  br label %215, !llvm.loop !22

221:                                              ; preds = %215
  %.8.lcssa = phi i64 [ %.8, %215 ]
  %.lcssa = phi i32 [ %217, %215 ]
  %222 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %222, label %223, label %228

223:                                              ; preds = %221
  %224 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %225 = load i8, ptr %224, align 1
  store i8 %225, ptr %.235, align 1
  %226 = getelementptr inbounds nuw i8, ptr %.235, i64 1
  %227 = add nuw i64 %.313, 1
  br label %228

228:                                              ; preds = %223, %221
  %.336 = phi ptr [ %226, %223 ], [ %.235, %221 ]
  %.423 = phi i32 [ 0, %223 ], [ %spec.select2, %221 ]
  %.414 = phi i64 [ %227, %223 ], [ %.313, %221 ]
  %.9 = phi i64 [ %.49.lcssa, %223 ], [ %.8.lcssa, %221 ]
  %229 = icmp ult i64 %.217, 2
  %230 = lshr i64 %.217, 1
  %.132.idx = zext i1 %229 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.031, i64 %.132.idx
  %.318 = select i1 %229, i64 128, i64 %230
  br label %206, !llvm.loop !23

231:                                              ; preds = %206
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
