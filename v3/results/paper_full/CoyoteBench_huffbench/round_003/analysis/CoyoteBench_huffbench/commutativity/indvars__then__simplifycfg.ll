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

.preheader6:                                      ; preds = %12, %27
  %.010 = phi i64 [ %.111, %27 ], [ 0, %12 ]
  %.13 = phi i64 [ %28, %27 ], [ 0, %12 ]
  %exitcond13 = icmp ne i64 %.13, 256
  br i1 %exitcond13, label %21, label %.preheader5

.preheader5:                                      ; preds = %.preheader6
  %.010.lcssa = phi i64 [ %.010, %.preheader6 ]
  br label %29

21:                                               ; preds = %.preheader6
  %22 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.13
  %23 = load i64, ptr %22, align 8
  %.not8 = icmp eq i64 %23, 0
  br i1 %.not8, label %27, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.010
  store i64 %.13, ptr %25, align 8
  %26 = add i64 %.010, 1
  br label %27

27:                                               ; preds = %24, %21
  %.111 = phi i64 [ %26, %24 ], [ %.010, %21 ]
  %28 = add nuw nsw i64 %.13, 1
  br label %.preheader6, !llvm.loop !10

29:                                               ; preds = %.preheader5, %30
  %.24 = phi i64 [ %33, %30 ], [ %.010.lcssa, %.preheader5 ]
  %.not = icmp eq i64 %.24, 0
  br i1 %.not, label %.preheader4, label %30

30:                                               ; preds = %29
  %31 = trunc i64 %.010.lcssa to i32
  %32 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %31, i32 noundef %32)
  %33 = add i64 %.24, -1
  br label %29, !llvm.loop !11

.preheader4:                                      ; preds = %29, %35
  %.212 = phi i64 [ %36, %35 ], [ %.010.lcssa, %29 ]
  %34 = icmp ugt i64 %.212, 1
  br i1 %34, label %35, label %55

35:                                               ; preds = %.preheader4
  %36 = add i64 %.212, -1
  %37 = load i64, ptr %4, align 16
  %38 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %36
  %39 = load i64, ptr %38, align 8
  store i64 %39, ptr %4, align 16
  %40 = trunc i64 %36 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %40, i32 noundef 1)
  %41 = load i64, ptr %4, align 16
  %42 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %41
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %37
  %45 = load i64, ptr %44, align 8
  %46 = add i64 %43, %45
  %47 = add i64 %.212, 255
  %48 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %47
  store i64 %46, ptr %48, align 8
  %49 = trunc i64 %47 to i32
  %50 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %37
  store i32 %49, ptr %50, align 4
  %51 = trunc i64 %.212 to i32
  %52 = sub i32 -255, %51
  %53 = load i64, ptr %4, align 16
  %54 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %53
  store i32 %52, ptr %54, align 4
  store i64 %47, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %40, i32 noundef 1)
  br label %.preheader4, !llvm.loop !12

55:                                               ; preds = %.preheader4
  %.212.lcssa = phi i64 [ %.212, %.preheader4 ]
  %56 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %57 = getelementptr inbounds nuw i8, ptr %56, i64 1024
  store i32 0, ptr %57, align 4
  br label %58

58:                                               ; preds = %77, %55
  %.045 = phi i64 [ 0, %55 ], [ %.146, %77 ]
  %.042 = phi i64 [ 0, %55 ], [ %78, %77 ]
  %.039 = phi i64 [ 0, %55 ], [ %.140, %77 ]
  %exitcond14 = icmp ne i64 %.042, 256
  br i1 %exitcond14, label %59, label %79

59:                                               ; preds = %58
  %60 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.042
  %61 = load i64, ptr %60, align 8
  %.not6 = icmp eq i64 %61, 0
  br i1 %.not6, label %62, label %65

62:                                               ; preds = %59
  %63 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 0, ptr %63, align 4
  %64 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 0, ptr %64, align 1
  br label %77

65:                                               ; preds = %59, %66
  %.043 = phi i64 [ %.144, %66 ], [ 0, %59 ]
  %.042.pn = phi i64 [ %69, %66 ], [ %.042, %59 ]
  %.05 = phi i64 [ %70, %66 ], [ 1, %59 ]
  %.3 = phi i64 [ %71, %66 ], [ 0, %59 ]
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.042.pn
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %72, label %66

66:                                               ; preds = %65
  %67 = icmp slt i32 %.037, 0
  %68 = select i1 %67, i64 %.05, i64 0
  %.144 = add i64 %.043, %68
  %.138 = call i32 @llvm.abs.i32(i32 %.037, i1 true)
  %69 = zext nneg i32 %.138 to i64
  %70 = shl i64 %.05, 1
  %71 = add i64 %.3, 1
  br label %65, !llvm.loop !13

72:                                               ; preds = %65
  %.043.lcssa = phi i64 [ %.043, %65 ]
  %.3.lcssa = phi i64 [ %.3, %65 ]
  %73 = trunc i64 %.043.lcssa to i32
  %74 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 %73, ptr %74, align 4
  %75 = trunc i64 %.3.lcssa to i8
  %76 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 %75, ptr %76, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.045)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.039)
  br label %77

77:                                               ; preds = %72, %62
  %.146 = phi i64 [ %spec.select, %72 ], [ %.045, %62 ]
  %.140 = phi i64 [ %.241, %72 ], [ %.039, %62 ]
  %78 = add nuw nsw i64 %.042, 1
  br label %58, !llvm.loop !14

79:                                               ; preds = %58
  %.045.lcssa = phi i64 [ %.045, %58 ]
  %.039.lcssa = phi i64 [ %.039, %58 ]
  %80 = icmp ugt i64 %.039.lcssa, 32
  br i1 %80, label %81, label %84

81:                                               ; preds = %79
  %82 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %83 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %82)
  call void @exit(i32 noundef 1) #11
  unreachable

84:                                               ; preds = %79
  %85 = icmp eq i64 %.045.lcssa, 0
  br i1 %85, label %86, label %.preheader3

86:                                               ; preds = %84
  %87 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %88 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %87)
  call void @exit(i32 noundef 1) #11
  unreachable

.preheader3:                                      ; preds = %84, %127
  %.134 = phi ptr [ %128, %127 ], [ %0, %84 ]
  %.028 = phi i64 [ %.129.lcssa, %127 ], [ 0, %84 ]
  %.024 = phi i8 [ %.125.lcssa, %127 ], [ 0, %84 ]
  %.16 = phi i64 [ %129, %127 ], [ 0, %84 ]
  %.01 = phi i32 [ %.1.lcssa, %127 ], [ -1, %84 ]
  %exitcond15 = icmp ne i64 %.16, %1
  br i1 %exitcond15, label %89, label %130

89:                                               ; preds = %.preheader3
  %90 = load i8, ptr %.134, align 1
  %91 = zext i8 %90 to i64
  %92 = getelementptr inbounds nuw i8, ptr %7, i64 %91
  %93 = load i8, ptr %92, align 1
  %94 = zext i8 %93 to i32
  %95 = add nsw i32 %94, -1
  %96 = shl nuw i32 1, %95
  %97 = sext i32 %96 to i64
  br label %98

98:                                               ; preds = %117, %89
  %.129 = phi i64 [ %.028, %89 ], [ %.230, %117 ]
  %.125 = phi i8 [ %.024, %89 ], [ %.327, %117 ]
  %.015 = phi i64 [ %97, %89 ], [ %125, %117 ]
  %.4 = phi i64 [ 0, %89 ], [ %126, %117 ]
  %.1 = phi i32 [ %.01, %89 ], [ %.2, %117 ]
  %99 = load i8, ptr %.134, align 1
  %100 = zext i8 %99 to i64
  %101 = getelementptr inbounds nuw i8, ptr %7, i64 %100
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %102 to i64
  %104 = icmp samesign ult i64 %.4, %103
  br i1 %104, label %105, label %127

105:                                              ; preds = %98
  %106 = icmp eq i32 %.1, 7
  br i1 %106, label %107, label %114

107:                                              ; preds = %105
  %108 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %108, align 1
  %109 = add i64 %.129, 1
  %110 = icmp eq i64 %109, %1
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %113 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %112)
  call void @exit(i32 noundef 1) #11
  unreachable

114:                                              ; preds = %105
  %115 = add nsw i32 %.1, 1
  %116 = shl i8 %.125, 1
  br label %117

117:                                              ; preds = %114, %107
  %.230 = phi i64 [ %.129, %114 ], [ %109, %107 ]
  %.226 = phi i8 [ %116, %114 ], [ 0, %107 ]
  %.2 = phi i32 [ %115, %114 ], [ 0, %107 ]
  %118 = load i8, ptr %.134, align 1
  %119 = zext i8 %118 to i64
  %120 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %119
  %121 = load i32, ptr %120, align 4
  %122 = zext i32 %121 to i64
  %123 = and i64 %.015, %122
  %.not5 = icmp ne i64 %123, 0
  %124 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %124
  %125 = lshr i64 %.015, 1
  %126 = add nuw nsw i64 %.4, 1
  br label %98, !llvm.loop !15

127:                                              ; preds = %98
  %.129.lcssa = phi i64 [ %.129, %98 ]
  %.125.lcssa = phi i8 [ %.125, %98 ]
  %.1.lcssa = phi i32 [ %.1, %98 ]
  %128 = getelementptr inbounds nuw i8, ptr %.134, i64 1
  %129 = add i64 %.16, 1
  br label %.preheader3, !llvm.loop !16

130:                                              ; preds = %.preheader3
  %.028.lcssa = phi i64 [ %.028, %.preheader3 ]
  %.024.lcssa = phi i8 [ %.024, %.preheader3 ]
  %.01.lcssa = phi i32 [ %.01, %.preheader3 ]
  %131 = sub nsw i32 7, %.01.lcssa
  %132 = zext i8 %.024.lcssa to i32
  %133 = shl i32 %132, %131
  %134 = trunc i32 %133 to i8
  %135 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %134, ptr %135, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %136

136:                                              ; preds = %165, %130
  %.27 = phi i64 [ 0, %130 ], [ %166, %165 ]
  %.0 = phi ptr [ %9, %130 ], [ %139, %165 ]
  %exitcond16 = icmp ne i64 %.27, 256
  br i1 %exitcond16, label %137, label %.preheader2

137:                                              ; preds = %136
  %138 = trunc nuw i64 %.27 to i8
  store i8 %138, ptr %.0, align 1
  %139 = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %140 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.27
  %141 = load i32, ptr %140, align 4
  %142 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %143 = load i8, ptr %142, align 1
  %144 = zext i8 %143 to i32
  %145 = or i32 %141, %144
  %.not3 = icmp eq i32 %145, 0
  br i1 %.not3, label %165, label %146

146:                                              ; preds = %137
  %147 = add nsw i32 %144, -1
  %148 = shl nuw i32 1, %147
  %149 = sext i32 %148 to i64
  br label %150

150:                                              ; preds = %154, %146
  %.019 = phi i32 [ 0, %146 ], [ %spec.select1, %154 ]
  %.116 = phi i64 [ %149, %146 ], [ %161, %154 ]
  %.5 = phi i64 [ 0, %146 ], [ %162, %154 ]
  %151 = load i8, ptr %142, align 1
  %152 = zext i8 %151 to i64
  %153 = icmp samesign ult i64 %.5, %152
  br i1 %153, label %154, label %163

154:                                              ; preds = %150
  %155 = shl i32 %.019, 1
  %156 = or disjoint i32 %155, 1
  %157 = load i32, ptr %140, align 4
  %158 = zext i32 %157 to i64
  %159 = and i64 %.116, %158
  %.not4 = icmp eq i64 %159, 0
  %160 = add i32 %155, 2
  %spec.select1 = select i1 %.not4, i32 %156, i32 %160
  %161 = lshr i64 %.116, 1
  %162 = add nuw nsw i64 %.5, 1
  br label %150, !llvm.loop !17

163:                                              ; preds = %150
  %.019.lcssa = phi i32 [ %.019, %150 ]
  %164 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.27
  store i32 %.019.lcssa, ptr %164, align 4
  br label %165

165:                                              ; preds = %163, %137
  %166 = add nuw nsw i64 %.27, 1
  br label %136, !llvm.loop !18

.preheader2:                                      ; preds = %136, %.critedge
  %.6 = phi i64 [ %185, %.critedge ], [ 1, %136 ]
  %exitcond17 = icmp ne i64 %.6, 256
  br i1 %exitcond17, label %167, label %.preheader1

167:                                              ; preds = %.preheader2
  %168 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.6
  %169 = load i32, ptr %168, align 4
  %170 = getelementptr inbounds nuw i8, ptr %9, i64 %.6
  %171 = load i8, ptr %170, align 1
  br label %172

172:                                              ; preds = %178, %167
  %.38 = phi i64 [ %.6, %167 ], [ %174, %178 ]
  %.not2 = icmp eq i64 %.38, 0
  br i1 %.not2, label %.critedge, label %173

173:                                              ; preds = %172
  %174 = add nsw i64 %.38, -1
  %175 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %174
  %176 = load i32, ptr %175, align 4
  %177 = icmp ugt i32 %176, %169
  br i1 %177, label %178, label %.critedge

178:                                              ; preds = %173
  %179 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %176, ptr %179, align 4
  %180 = getelementptr inbounds nuw i8, ptr %9, i64 %174
  %181 = load i8, ptr %180, align 1
  %182 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %181, ptr %182, align 1
  br label %172, !llvm.loop !19

.critedge:                                        ; preds = %173, %172
  %.38.lcssa = phi i64 [ %.38, %173 ], [ 0, %172 ]
  %183 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %169, ptr %183, align 4
  %184 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %171, ptr %184, align 1
  %185 = add nuw nsw i64 %.6, 1
  br label %.preheader2, !llvm.loop !20

.preheader1:                                      ; preds = %.preheader2, %189
  %.49 = phi i64 [ %190, %189 ], [ 0, %.preheader2 ]
  %186 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %187 = load i32, ptr %186, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %.preheader

.preheader:                                       ; preds = %.preheader1
  %.49.lcssa = phi i64 [ %.49, %.preheader1 ]
  br label %191

189:                                              ; preds = %.preheader1
  %190 = add i64 %.49, 1
  br label %.preheader1, !llvm.loop !21

191:                                              ; preds = %.preheader, %213
  %.235 = phi ptr [ %.336, %213 ], [ %0, %.preheader ]
  %.031 = phi ptr [ %.132, %213 ], [ %11, %.preheader ]
  %.221 = phi i32 [ %.423, %213 ], [ 0, %.preheader ]
  %.217 = phi i64 [ %.318, %213 ], [ 128, %.preheader ]
  %.313 = phi i64 [ %.414, %213 ], [ 0, %.preheader ]
  %.7 = phi i64 [ %.9, %213 ], [ %.49.lcssa, %.preheader ]
  %192 = icmp ult i64 %.313, %1
  br i1 %192, label %193, label %216

193:                                              ; preds = %191
  %194 = shl i32 %.221, 1
  %195 = or disjoint i32 %194, 1
  %196 = load i8, ptr %.031, align 1
  %197 = zext i8 %196 to i64
  %198 = and i64 %.217, %197
  %.not1 = icmp eq i64 %198, 0
  %199 = add i32 %194, 2
  %spec.select2 = select i1 %.not1, i32 %195, i32 %199
  br label %200

200:                                              ; preds = %204, %193
  %.8 = phi i64 [ %.7, %193 ], [ %205, %204 ]
  %201 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %202 = load i32, ptr %201, align 4
  %203 = icmp ult i32 %202, %spec.select2
  br i1 %203, label %204, label %206

204:                                              ; preds = %200
  %205 = add i64 %.8, 1
  br label %200, !llvm.loop !22

206:                                              ; preds = %200
  %.8.lcssa = phi i64 [ %.8, %200 ]
  %.lcssa = phi i32 [ %202, %200 ]
  %207 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %207, label %208, label %213

208:                                              ; preds = %206
  %209 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %210 = load i8, ptr %209, align 1
  store i8 %210, ptr %.235, align 1
  %211 = getelementptr inbounds nuw i8, ptr %.235, i64 1
  %212 = add nuw i64 %.313, 1
  br label %213

213:                                              ; preds = %208, %206
  %.336 = phi ptr [ %211, %208 ], [ %.235, %206 ]
  %.423 = phi i32 [ 0, %208 ], [ %spec.select2, %206 ]
  %.414 = phi i64 [ %212, %208 ], [ %.313, %206 ]
  %.9 = phi i64 [ %.49.lcssa, %208 ], [ %.8.lcssa, %206 ]
  %214 = icmp ult i64 %.217, 2
  %215 = lshr i64 %.217, 1
  %.132.idx = zext i1 %214 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.031, i64 %.132.idx
  %.318 = select i1 %214, i64 128, i64 %215
  br label %191, !llvm.loop !23

216:                                              ; preds = %191
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
  br i1 %3, label %.preheader, label %.loopexit

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

.loopexit:                                        ; preds = %6, %5, %2
  %.not1 = phi i1 [ true, %2 ], [ false, %6 ], [ true, %5 ]
  %11 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %12

12:                                               ; preds = %13, %.loopexit
  %.12 = phi i32 [ 0, %.loopexit ], [ %14, %13 ]
  %exitcond1 = icmp ne i32 %.12, 30
  br i1 %exitcond1, label %13, label %15

13:                                               ; preds = %12
  call void @compdecomp(ptr noundef %11, i64 noundef 10000000)
  %14 = add nuw nsw i32 %.12, 1
  br label %12, !llvm.loop !26

15:                                               ; preds = %12
  call void @free(ptr noundef %11) #10
  br i1 %.not1, label %19, label %16

16:                                               ; preds = %15
  %17 = call ptr @__acrt_iob_func(i32 noundef 1) #10
  %18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.5, double noundef 0.000000e+00) #10
  br label %22

19:                                               ; preds = %15
  %20 = call ptr @__acrt_iob_func(i32 noundef 1) #10
  %21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.6, double noundef 0.000000e+00) #10
  br label %22

22:                                               ; preds = %19, %16
  %23 = call ptr @__acrt_iob_func(i32 noundef 1) #10
  %24 = call i32 @fflush(ptr noundef %23) #10
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
