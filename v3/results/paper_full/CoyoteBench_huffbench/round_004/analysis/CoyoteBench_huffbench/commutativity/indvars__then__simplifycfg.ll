; ModuleID = 'results\paper_full\CoyoteBench_huffbench\round_003\output.ll'
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
  br i1 %34, label %35, label %54

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
  %53 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %41
  store i32 %52, ptr %53, align 4
  store i64 %47, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %40, i32 noundef 1)
  br label %.preheader4, !llvm.loop !12

54:                                               ; preds = %.preheader4
  %.212.lcssa = phi i64 [ %.212, %.preheader4 ]
  %55 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %56 = getelementptr inbounds nuw i8, ptr %55, i64 1024
  store i32 0, ptr %56, align 4
  br label %57

57:                                               ; preds = %76, %54
  %.045 = phi i64 [ 0, %54 ], [ %.146, %76 ]
  %.042 = phi i64 [ 0, %54 ], [ %77, %76 ]
  %.039 = phi i64 [ 0, %54 ], [ %.140, %76 ]
  %exitcond14 = icmp ne i64 %.042, 256
  br i1 %exitcond14, label %58, label %78

58:                                               ; preds = %57
  %59 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.042
  %60 = load i64, ptr %59, align 8
  %.not6 = icmp eq i64 %60, 0
  br i1 %.not6, label %61, label %64

61:                                               ; preds = %58
  %62 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 0, ptr %62, align 4
  %63 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 0, ptr %63, align 1
  br label %76

64:                                               ; preds = %58, %65
  %.043 = phi i64 [ %.144, %65 ], [ 0, %58 ]
  %.042.pn = phi i64 [ %68, %65 ], [ %.042, %58 ]
  %.05 = phi i64 [ %69, %65 ], [ 1, %58 ]
  %.3 = phi i64 [ %70, %65 ], [ 0, %58 ]
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.042.pn
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %71, label %65

65:                                               ; preds = %64
  %66 = icmp slt i32 %.037, 0
  %67 = select i1 %66, i64 %.05, i64 0
  %.144 = add i64 %.043, %67
  %.138 = call i32 @llvm.abs.i32(i32 %.037, i1 true)
  %68 = zext nneg i32 %.138 to i64
  %69 = shl i64 %.05, 1
  %70 = add i64 %.3, 1
  br label %64, !llvm.loop !13

71:                                               ; preds = %64
  %.043.lcssa = phi i64 [ %.043, %64 ]
  %.3.lcssa = phi i64 [ %.3, %64 ]
  %72 = trunc i64 %.043.lcssa to i32
  %73 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 %72, ptr %73, align 4
  %74 = trunc i64 %.3.lcssa to i8
  %75 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 %74, ptr %75, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.045)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.039)
  br label %76

76:                                               ; preds = %71, %61
  %.146 = phi i64 [ %spec.select, %71 ], [ %.045, %61 ]
  %.140 = phi i64 [ %.241, %71 ], [ %.039, %61 ]
  %77 = add nuw nsw i64 %.042, 1
  br label %57, !llvm.loop !14

78:                                               ; preds = %57
  %.045.lcssa = phi i64 [ %.045, %57 ]
  %.039.lcssa = phi i64 [ %.039, %57 ]
  %79 = icmp ugt i64 %.039.lcssa, 32
  br i1 %79, label %80, label %83

80:                                               ; preds = %78
  %81 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %82 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %81)
  call void @exit(i32 noundef 1) #11
  unreachable

83:                                               ; preds = %78
  %84 = icmp eq i64 %.045.lcssa, 0
  br i1 %84, label %85, label %.preheader3

85:                                               ; preds = %83
  %86 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %87 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %86)
  call void @exit(i32 noundef 1) #11
  unreachable

.preheader3:                                      ; preds = %83, %122
  %.134 = phi ptr [ %123, %122 ], [ %0, %83 ]
  %.028 = phi i64 [ %.129.lcssa, %122 ], [ 0, %83 ]
  %.024 = phi i8 [ %.125.lcssa, %122 ], [ 0, %83 ]
  %.16 = phi i64 [ %124, %122 ], [ 0, %83 ]
  %.01 = phi i32 [ %.1.lcssa, %122 ], [ -1, %83 ]
  %exitcond15 = icmp ne i64 %.16, %1
  br i1 %exitcond15, label %88, label %125

88:                                               ; preds = %.preheader3
  %89 = load i8, ptr %.134, align 1
  %90 = zext i8 %89 to i64
  %91 = getelementptr inbounds nuw i8, ptr %7, i64 %90
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %92 to i32
  %94 = add nsw i32 %93, -1
  %95 = shl nuw i32 1, %94
  %96 = sext i32 %95 to i64
  br label %97

97:                                               ; preds = %114, %88
  %98 = phi i8 [ %89, %88 ], [ %.pre-phi.in, %114 ]
  %99 = phi i8 [ %92, %88 ], [ %.pre, %114 ]
  %.129 = phi i64 [ %.028, %88 ], [ %.230, %114 ]
  %.125 = phi i8 [ %.024, %88 ], [ %.327, %114 ]
  %.015 = phi i64 [ %96, %88 ], [ %120, %114 ]
  %.4 = phi i64 [ 0, %88 ], [ %121, %114 ]
  %.1 = phi i32 [ %.01, %88 ], [ %.2, %114 ]
  %100 = zext i8 %99 to i64
  %101 = icmp samesign ult i64 %.4, %100
  br i1 %101, label %102, label %122

102:                                              ; preds = %97
  %103 = icmp eq i32 %.1, 7
  br i1 %103, label %104, label %111

104:                                              ; preds = %102
  %105 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %105, align 1
  %106 = add i64 %.129, 1
  %107 = icmp eq i64 %106, %1
  br i1 %107, label %108, label %._crit_edge

._crit_edge:                                      ; preds = %104
  %.pre1 = load i8, ptr %.134, align 1
  br label %114

108:                                              ; preds = %104
  %109 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %110 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %109)
  call void @exit(i32 noundef 1) #11
  unreachable

111:                                              ; preds = %102
  %112 = add nsw i32 %.1, 1
  %113 = shl i8 %.125, 1
  br label %114

114:                                              ; preds = %111, %._crit_edge
  %.pre-phi.in = phi i8 [ %.pre1, %._crit_edge ], [ %98, %111 ]
  %.230 = phi i64 [ %106, %._crit_edge ], [ %.129, %111 ]
  %.226 = phi i8 [ 0, %._crit_edge ], [ %113, %111 ]
  %.2 = phi i32 [ 0, %._crit_edge ], [ %112, %111 ]
  %.pre-phi = zext i8 %.pre-phi.in to i64
  %115 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.pre-phi
  %116 = load i32, ptr %115, align 4
  %117 = zext i32 %116 to i64
  %118 = and i64 %.015, %117
  %.not5 = icmp ne i64 %118, 0
  %119 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %119
  %120 = lshr i64 %.015, 1
  %121 = add nuw nsw i64 %.4, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %97, !llvm.loop !15

122:                                              ; preds = %97
  %.129.lcssa = phi i64 [ %.129, %97 ]
  %.125.lcssa = phi i8 [ %.125, %97 ]
  %.1.lcssa = phi i32 [ %.1, %97 ]
  %123 = getelementptr inbounds nuw i8, ptr %.134, i64 1
  %124 = add i64 %.16, 1
  br label %.preheader3, !llvm.loop !16

125:                                              ; preds = %.preheader3
  %.028.lcssa = phi i64 [ %.028, %.preheader3 ]
  %.024.lcssa = phi i8 [ %.024, %.preheader3 ]
  %.01.lcssa = phi i32 [ %.01, %.preheader3 ]
  %126 = sub nsw i32 7, %.01.lcssa
  %127 = zext i8 %.024.lcssa to i32
  %128 = shl i32 %127, %126
  %129 = trunc i32 %128 to i8
  %130 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %129, ptr %130, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %131

131:                                              ; preds = %157, %125
  %.27 = phi i64 [ 0, %125 ], [ %158, %157 ]
  %.0 = phi ptr [ %9, %125 ], [ %134, %157 ]
  %exitcond17 = icmp ne i64 %.27, 256
  br i1 %exitcond17, label %132, label %.preheader2

132:                                              ; preds = %131
  %133 = trunc nuw i64 %.27 to i8
  store i8 %133, ptr %.0, align 1
  %134 = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %135 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.27
  %136 = load i32, ptr %135, align 4
  %137 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %138 = load i8, ptr %137, align 1
  %139 = zext i8 %138 to i32
  %140 = or i32 %136, %139
  %.not3 = icmp eq i32 %140, 0
  br i1 %.not3, label %157, label %141

141:                                              ; preds = %132
  %142 = add nsw i32 %139, -1
  %143 = shl nuw i32 1, %142
  %144 = sext i32 %143 to i64
  %145 = zext i8 %138 to i64
  br label %146

146:                                              ; preds = %147, %141
  %.019 = phi i32 [ 0, %141 ], [ %spec.select1, %147 ]
  %.116 = phi i64 [ %144, %141 ], [ %153, %147 ]
  %.5 = phi i64 [ 0, %141 ], [ %154, %147 ]
  %exitcond16 = icmp ne i64 %.5, %145
  br i1 %exitcond16, label %147, label %155

147:                                              ; preds = %146
  %148 = shl i32 %.019, 1
  %149 = or disjoint i32 %148, 1
  %150 = zext i32 %136 to i64
  %151 = and i64 %.116, %150
  %.not4 = icmp eq i64 %151, 0
  %152 = add i32 %148, 2
  %spec.select1 = select i1 %.not4, i32 %149, i32 %152
  %153 = lshr i64 %.116, 1
  %154 = add nuw nsw i64 %.5, 1
  br label %146, !llvm.loop !17

155:                                              ; preds = %146
  %.019.lcssa = phi i32 [ %.019, %146 ]
  %156 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.27
  store i32 %.019.lcssa, ptr %156, align 4
  br label %157

157:                                              ; preds = %155, %132
  %158 = add nuw nsw i64 %.27, 1
  br label %131, !llvm.loop !18

.preheader2:                                      ; preds = %131, %.critedge
  %.6 = phi i64 [ %177, %.critedge ], [ 1, %131 ]
  %exitcond18 = icmp ne i64 %.6, 256
  br i1 %exitcond18, label %159, label %.preheader1

159:                                              ; preds = %.preheader2
  %160 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.6
  %161 = load i32, ptr %160, align 4
  %162 = getelementptr inbounds nuw i8, ptr %9, i64 %.6
  %163 = load i8, ptr %162, align 1
  br label %164

164:                                              ; preds = %170, %159
  %.38 = phi i64 [ %.6, %159 ], [ %166, %170 ]
  %.not2 = icmp eq i64 %.38, 0
  br i1 %.not2, label %.critedge, label %165

165:                                              ; preds = %164
  %166 = add nsw i64 %.38, -1
  %167 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %166
  %168 = load i32, ptr %167, align 4
  %169 = icmp ugt i32 %168, %161
  br i1 %169, label %170, label %.critedge

170:                                              ; preds = %165
  %171 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %168, ptr %171, align 4
  %172 = getelementptr inbounds nuw i8, ptr %9, i64 %166
  %173 = load i8, ptr %172, align 1
  %174 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %173, ptr %174, align 1
  br label %164, !llvm.loop !19

.critedge:                                        ; preds = %165, %164
  %.38.lcssa = phi i64 [ %.38, %165 ], [ 0, %164 ]
  %175 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %161, ptr %175, align 4
  %176 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %163, ptr %176, align 1
  %177 = add nuw nsw i64 %.6, 1
  br label %.preheader2, !llvm.loop !20

.preheader1:                                      ; preds = %.preheader2, %181
  %.49 = phi i64 [ %182, %181 ], [ 0, %.preheader2 ]
  %178 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %179 = load i32, ptr %178, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %.preheader

.preheader:                                       ; preds = %.preheader1
  %.49.lcssa = phi i64 [ %.49, %.preheader1 ]
  br label %183

181:                                              ; preds = %.preheader1
  %182 = add i64 %.49, 1
  br label %.preheader1, !llvm.loop !21

183:                                              ; preds = %.preheader, %205
  %.235 = phi ptr [ %.336, %205 ], [ %0, %.preheader ]
  %.031 = phi ptr [ %.132, %205 ], [ %11, %.preheader ]
  %.221 = phi i32 [ %.423, %205 ], [ 0, %.preheader ]
  %.217 = phi i64 [ %.318, %205 ], [ 128, %.preheader ]
  %.313 = phi i64 [ %.414, %205 ], [ 0, %.preheader ]
  %.7 = phi i64 [ %.9, %205 ], [ %.49.lcssa, %.preheader ]
  %184 = icmp ult i64 %.313, %1
  br i1 %184, label %185, label %208

185:                                              ; preds = %183
  %186 = shl i32 %.221, 1
  %187 = or disjoint i32 %186, 1
  %188 = load i8, ptr %.031, align 1
  %189 = zext i8 %188 to i64
  %190 = and i64 %.217, %189
  %.not1 = icmp eq i64 %190, 0
  %191 = add i32 %186, 2
  %spec.select2 = select i1 %.not1, i32 %187, i32 %191
  br label %192

192:                                              ; preds = %196, %185
  %.8 = phi i64 [ %.7, %185 ], [ %197, %196 ]
  %193 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %194 = load i32, ptr %193, align 4
  %195 = icmp ult i32 %194, %spec.select2
  br i1 %195, label %196, label %198

196:                                              ; preds = %192
  %197 = add i64 %.8, 1
  br label %192, !llvm.loop !22

198:                                              ; preds = %192
  %.8.lcssa = phi i64 [ %.8, %192 ]
  %.lcssa = phi i32 [ %194, %192 ]
  %199 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %199, label %200, label %205

200:                                              ; preds = %198
  %201 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %202 = load i8, ptr %201, align 1
  store i8 %202, ptr %.235, align 1
  %203 = getelementptr inbounds nuw i8, ptr %.235, i64 1
  %204 = add nuw i64 %.313, 1
  br label %205

205:                                              ; preds = %200, %198
  %.336 = phi ptr [ %203, %200 ], [ %.235, %198 ]
  %.423 = phi i32 [ 0, %200 ], [ %spec.select2, %198 ]
  %.414 = phi i64 [ %204, %200 ], [ %.313, %198 ]
  %.9 = phi i64 [ %.49.lcssa, %200 ], [ %.8.lcssa, %198 ]
  %206 = icmp ult i64 %.217, 2
  %207 = lshr i64 %.217, 1
  %.132.idx = zext i1 %206 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.031, i64 %.132.idx
  %.318 = select i1 %206, i64 128, i64 %207
  br label %183, !llvm.loop !23

208:                                              ; preds = %183
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
  %9 = shl i64 %8, 32
  br label %10

10:                                               ; preds = %38, %4
  %.01 = phi i32 [ %3, %4 ], [ %.0, %38 ]
  %11 = sdiv i32 %2, 2
  %.not = icmp sgt i32 %.01, %11
  br i1 %.not, label %._crit_edge, label %12

._crit_edge:                                      ; preds = %10
  %.01.lcssa = phi i32 [ %.01, %10 ]
  %.pre = shl i64 %8, 32
  br label %split

12:                                               ; preds = %10
  %13 = shl nsw i32 %.01, 1
  %14 = icmp slt i32 %13, %2
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = sext i32 %13 to i64
  %17 = getelementptr [8 x i8], ptr %1, i64 %16
  %18 = getelementptr i8, ptr %17, i64 -8
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %19
  %21 = load i64, ptr %20, align 8
  %22 = load i64, ptr %17, align 8
  %23 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %22
  %24 = load i64, ptr %23, align 8
  %25 = icmp ugt i64 %21, %24
  %26 = zext i1 %25 to i32
  %spec.select = or disjoint i32 %13, %26
  br label %27

27:                                               ; preds = %15, %12
  %.0 = phi i32 [ %13, %12 ], [ %spec.select, %15 ]
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
  br i1 %37, label %split, label %38

38:                                               ; preds = %27
  %39 = sext i32 %.01 to i64
  %40 = getelementptr [8 x i8], ptr %1, i64 %39
  %41 = getelementptr i8, ptr %40, i64 -8
  store i64 %34, ptr %41, align 8
  br label %10, !llvm.loop !24

split:                                            ; preds = %27, %._crit_edge
  %.012 = phi i32 [ %.01.lcssa, %._crit_edge ], [ %.01, %27 ]
  %sext1.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %9, %27 ]
  %42 = ashr exact i64 %sext1.pre-phi, 32
  %43 = sext i32 %.012 to i64
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
