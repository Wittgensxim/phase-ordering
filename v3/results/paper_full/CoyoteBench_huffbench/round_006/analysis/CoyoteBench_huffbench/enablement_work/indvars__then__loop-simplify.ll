; ModuleID = 'results\paper_full\CoyoteBench_huffbench\round_005\output.ll'
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
  %.01 = phi ptr [ %8, %4 ], [ %2, %1 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %0
  br i1 %exitcond.not, label %9, label %4

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
  %exitcond.not = icmp eq i64 %.02, %1
  br i1 %exitcond.not, label %.preheader6, label %13

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

21:                                               ; preds = %28, %.preheader6
  %.010 = phi i64 [ %.111, %28 ], [ 0, %.preheader6 ]
  %.13 = phi i64 [ %29, %28 ], [ 0, %.preheader6 ]
  %exitcond13.not = icmp eq i64 %.13, 256
  br i1 %exitcond13.not, label %.preheader5, label %22

.preheader5:                                      ; preds = %21
  %.010.lcssa = phi i64 [ %.010, %21 ]
  br label %30

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
  br label %21, !llvm.loop !10

30:                                               ; preds = %31, %.preheader5
  %.24 = phi i64 [ %34, %31 ], [ %.010.lcssa, %.preheader5 ]
  %.not = icmp eq i64 %.24, 0
  br i1 %.not, label %.preheader4, label %31

.preheader4:                                      ; preds = %30
  br label %35

31:                                               ; preds = %30
  %32 = trunc i64 %.010.lcssa to i32
  %33 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %32, i32 noundef %33)
  %34 = add i64 %.24, -1
  br label %30, !llvm.loop !11

35:                                               ; preds = %37, %.preheader4
  %.212 = phi i64 [ %38, %37 ], [ %.010.lcssa, %.preheader4 ]
  %36 = icmp ugt i64 %.212, 1
  br i1 %36, label %37, label %56

37:                                               ; preds = %35
  %38 = add i64 %.212, -1
  %39 = load i64, ptr %4, align 16
  %40 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %38
  %41 = load i64, ptr %40, align 8
  store i64 %41, ptr %4, align 16
  %42 = trunc i64 %38 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %42, i32 noundef 1)
  %43 = load i64, ptr %4, align 16
  %44 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %43
  %45 = load i64, ptr %44, align 8
  %46 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %39
  %47 = load i64, ptr %46, align 8
  %48 = add i64 %45, %47
  %49 = add i64 %.212, 255
  %50 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %49
  store i64 %48, ptr %50, align 8
  %51 = trunc i64 %49 to i32
  %52 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %39
  store i32 %51, ptr %52, align 4
  %53 = trunc i64 %.212 to i32
  %54 = sub i32 -255, %53
  %55 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %43
  store i32 %54, ptr %55, align 4
  store i64 %49, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %42, i32 noundef 1)
  br label %35, !llvm.loop !12

56:                                               ; preds = %35
  %.212.lcssa = phi i64 [ %.212, %35 ]
  %57 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %58 = getelementptr inbounds nuw i8, ptr %57, i64 1024
  store i32 0, ptr %58, align 4
  br label %59

59:                                               ; preds = %79, %56
  %.045 = phi i64 [ 0, %56 ], [ %.146, %79 ]
  %.042 = phi i64 [ 0, %56 ], [ %80, %79 ]
  %.039 = phi i64 [ 0, %56 ], [ %.140, %79 ]
  %exitcond14.not = icmp eq i64 %.042, 256
  br i1 %exitcond14.not, label %81, label %60

60:                                               ; preds = %59
  %61 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.042
  %62 = load i64, ptr %61, align 8
  %.not6 = icmp eq i64 %62, 0
  br i1 %.not6, label %63, label %66

63:                                               ; preds = %60
  %64 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 0, ptr %64, align 4
  %65 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 0, ptr %65, align 1
  br label %79

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %68, %66
  %.043 = phi i64 [ 0, %66 ], [ %.144, %68 ]
  %.042.pn = phi i64 [ %.042, %66 ], [ %71, %68 ]
  %.05 = phi i64 [ 1, %66 ], [ %72, %68 ]
  %.3 = phi i64 [ 0, %66 ], [ %73, %68 ]
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.042.pn
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %74, label %68

68:                                               ; preds = %67
  %69 = icmp slt i32 %.037, 0
  %70 = select i1 %69, i64 %.05, i64 0
  %.144 = add i64 %.043, %70
  %.138 = call i32 @llvm.abs.i32(i32 %.037, i1 true)
  %71 = zext nneg i32 %.138 to i64
  %72 = shl i64 %.05, 1
  %73 = add i64 %.3, 1
  br label %67, !llvm.loop !13

74:                                               ; preds = %67
  %.043.lcssa = phi i64 [ %.043, %67 ]
  %.3.lcssa = phi i64 [ %.3, %67 ]
  %75 = trunc i64 %.043.lcssa to i32
  %76 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 %75, ptr %76, align 4
  %77 = trunc i64 %.3.lcssa to i8
  %78 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 %77, ptr %78, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.045)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.039)
  br label %79

79:                                               ; preds = %74, %63
  %.146 = phi i64 [ %spec.select, %74 ], [ %.045, %63 ]
  %.140 = phi i64 [ %.241, %74 ], [ %.039, %63 ]
  %80 = add nuw nsw i64 %.042, 1
  br label %59, !llvm.loop !14

81:                                               ; preds = %59
  %.045.lcssa = phi i64 [ %.045, %59 ]
  %.039.lcssa = phi i64 [ %.039, %59 ]
  %82 = icmp ugt i64 %.039.lcssa, 32
  br i1 %82, label %83, label %86

83:                                               ; preds = %81
  %84 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %85 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %84)
  call void @exit(i32 noundef 1) #11
  unreachable

86:                                               ; preds = %81
  %87 = icmp eq i64 %.045.lcssa, 0
  br i1 %87, label %88, label %.preheader3

.preheader3:                                      ; preds = %86
  br label %91

88:                                               ; preds = %86
  %89 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %90 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %89)
  call void @exit(i32 noundef 1) #11
  unreachable

91:                                               ; preds = %126, %.preheader3
  %.134 = phi ptr [ %127, %126 ], [ %0, %.preheader3 ]
  %.028 = phi i64 [ %.129.lcssa, %126 ], [ 0, %.preheader3 ]
  %.024 = phi i8 [ %.125.lcssa, %126 ], [ 0, %.preheader3 ]
  %.16 = phi i64 [ %128, %126 ], [ 0, %.preheader3 ]
  %.01 = phi i32 [ %.1.lcssa, %126 ], [ -1, %.preheader3 ]
  %exitcond15.not = icmp eq i64 %.16, %1
  br i1 %exitcond15.not, label %129, label %92

92:                                               ; preds = %91
  %93 = load i8, ptr %.134, align 1
  %94 = zext i8 %93 to i64
  %95 = getelementptr inbounds nuw i8, ptr %7, i64 %94
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %96 to i32
  %98 = add nsw i32 %97, -1
  %99 = shl nuw i32 1, %98
  %100 = sext i32 %99 to i64
  br label %101

101:                                              ; preds = %118, %92
  %102 = phi i8 [ %93, %92 ], [ %.pre-phi.in, %118 ]
  %103 = phi i8 [ %96, %92 ], [ %.pre, %118 ]
  %.129 = phi i64 [ %.028, %92 ], [ %.230, %118 ]
  %.125 = phi i8 [ %.024, %92 ], [ %.327, %118 ]
  %.015 = phi i64 [ %100, %92 ], [ %124, %118 ]
  %.4 = phi i64 [ 0, %92 ], [ %125, %118 ]
  %.1 = phi i32 [ %.01, %92 ], [ %.2, %118 ]
  %104 = zext i8 %103 to i64
  %105 = icmp samesign ult i64 %.4, %104
  br i1 %105, label %106, label %126

106:                                              ; preds = %101
  %107 = icmp eq i32 %.1, 7
  br i1 %107, label %108, label %115

108:                                              ; preds = %106
  %109 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %109, align 1
  %110 = add i64 %.129, 1
  %111 = icmp eq i64 %110, %1
  br i1 %111, label %112, label %._crit_edge

._crit_edge:                                      ; preds = %108
  %.pre1 = load i8, ptr %.134, align 1
  br label %118

112:                                              ; preds = %108
  %113 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %114 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %113)
  call void @exit(i32 noundef 1) #11
  unreachable

115:                                              ; preds = %106
  %116 = add nsw i32 %.1, 1
  %117 = shl i8 %.125, 1
  br label %118

118:                                              ; preds = %115, %._crit_edge
  %.pre-phi.in = phi i8 [ %.pre1, %._crit_edge ], [ %102, %115 ]
  %.230 = phi i64 [ %110, %._crit_edge ], [ %.129, %115 ]
  %.226 = phi i8 [ 0, %._crit_edge ], [ %117, %115 ]
  %.2 = phi i32 [ 0, %._crit_edge ], [ %116, %115 ]
  %.pre-phi = zext i8 %.pre-phi.in to i64
  %119 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.pre-phi
  %120 = load i32, ptr %119, align 4
  %121 = zext i32 %120 to i64
  %122 = and i64 %.015, %121
  %.not5 = icmp ne i64 %122, 0
  %123 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %123
  %124 = lshr i64 %.015, 1
  %125 = add nuw nsw i64 %.4, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %101, !llvm.loop !15

126:                                              ; preds = %101
  %.129.lcssa = phi i64 [ %.129, %101 ]
  %.125.lcssa = phi i8 [ %.125, %101 ]
  %.1.lcssa = phi i32 [ %.1, %101 ]
  %127 = getelementptr inbounds nuw i8, ptr %.134, i64 1
  %128 = add i64 %.16, 1
  br label %91, !llvm.loop !16

129:                                              ; preds = %91
  %.028.lcssa = phi i64 [ %.028, %91 ]
  %.024.lcssa = phi i8 [ %.024, %91 ]
  %.01.lcssa = phi i32 [ %.01, %91 ]
  %130 = sub nsw i32 7, %.01.lcssa
  %131 = zext i8 %.024.lcssa to i32
  %132 = shl i32 %131, %130
  %133 = trunc i32 %132 to i8
  %134 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %133, ptr %134, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %135

135:                                              ; preds = %161, %129
  %.27 = phi i64 [ 0, %129 ], [ %162, %161 ]
  %.0 = phi ptr [ %9, %129 ], [ %138, %161 ]
  %exitcond17.not = icmp eq i64 %.27, 256
  br i1 %exitcond17.not, label %.preheader2, label %136

.preheader2:                                      ; preds = %135
  br label %163

136:                                              ; preds = %135
  %137 = trunc nuw i64 %.27 to i8
  store i8 %137, ptr %.0, align 1
  %138 = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %139 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.27
  %140 = load i32, ptr %139, align 4
  %141 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %142 = load i8, ptr %141, align 1
  %143 = zext i8 %142 to i32
  %144 = or i32 %140, %143
  %.not3 = icmp eq i32 %144, 0
  br i1 %.not3, label %161, label %145

145:                                              ; preds = %136
  %146 = add nsw i32 %143, -1
  %147 = shl nuw i32 1, %146
  %148 = sext i32 %147 to i64
  %149 = zext i8 %142 to i64
  br label %150

150:                                              ; preds = %151, %145
  %.019 = phi i32 [ 0, %145 ], [ %spec.select1, %151 ]
  %.116 = phi i64 [ %148, %145 ], [ %157, %151 ]
  %.5 = phi i64 [ 0, %145 ], [ %158, %151 ]
  %exitcond16.not = icmp eq i64 %.5, %149
  br i1 %exitcond16.not, label %159, label %151

151:                                              ; preds = %150
  %152 = shl i32 %.019, 1
  %153 = or disjoint i32 %152, 1
  %154 = zext i32 %140 to i64
  %155 = and i64 %.116, %154
  %.not4 = icmp eq i64 %155, 0
  %156 = add i32 %152, 2
  %spec.select1 = select i1 %.not4, i32 %153, i32 %156
  %157 = lshr i64 %.116, 1
  %158 = add nuw nsw i64 %.5, 1
  br label %150, !llvm.loop !17

159:                                              ; preds = %150
  %.019.lcssa = phi i32 [ %.019, %150 ]
  %160 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.27
  store i32 %.019.lcssa, ptr %160, align 4
  br label %161

161:                                              ; preds = %159, %136
  %162 = add nuw nsw i64 %.27, 1
  br label %135, !llvm.loop !18

163:                                              ; preds = %.critedge, %.preheader2
  %.6 = phi i64 [ %182, %.critedge ], [ 1, %.preheader2 ]
  %exitcond18.not = icmp eq i64 %.6, 256
  br i1 %exitcond18.not, label %.preheader1, label %164

.preheader1:                                      ; preds = %163
  br label %183

164:                                              ; preds = %163
  %165 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.6
  %166 = load i32, ptr %165, align 4
  %167 = getelementptr inbounds nuw i8, ptr %9, i64 %.6
  %168 = load i8, ptr %167, align 1
  br label %169

169:                                              ; preds = %175, %164
  %.38 = phi i64 [ %.6, %164 ], [ %171, %175 ]
  %.not2 = icmp eq i64 %.38, 0
  br i1 %.not2, label %.critedge, label %170

170:                                              ; preds = %169
  %171 = add nsw i64 %.38, -1
  %172 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %171
  %173 = load i32, ptr %172, align 4
  %174 = icmp ugt i32 %173, %166
  br i1 %174, label %175, label %.critedge

175:                                              ; preds = %170
  %176 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %173, ptr %176, align 4
  %177 = getelementptr inbounds nuw i8, ptr %9, i64 %171
  %178 = load i8, ptr %177, align 1
  %179 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %178, ptr %179, align 1
  br label %169, !llvm.loop !19

.critedge:                                        ; preds = %170, %169
  %.38.lcssa = phi i64 [ %.38, %170 ], [ 0, %169 ]
  %180 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %166, ptr %180, align 4
  %181 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %168, ptr %181, align 1
  %182 = add nuw nsw i64 %.6, 1
  br label %163, !llvm.loop !20

183:                                              ; preds = %187, %.preheader1
  %.49 = phi i64 [ %188, %187 ], [ 0, %.preheader1 ]
  %184 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %185 = load i32, ptr %184, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %.preheader

.preheader:                                       ; preds = %183
  %.49.lcssa = phi i64 [ %.49, %183 ]
  br label %189

187:                                              ; preds = %183
  %188 = add i64 %.49, 1
  br label %183, !llvm.loop !21

189:                                              ; preds = %211, %.preheader
  %.235 = phi ptr [ %.336, %211 ], [ %0, %.preheader ]
  %.031 = phi ptr [ %.132, %211 ], [ %11, %.preheader ]
  %.221 = phi i32 [ %.423, %211 ], [ 0, %.preheader ]
  %.217 = phi i64 [ %.318, %211 ], [ 128, %.preheader ]
  %.313 = phi i64 [ %.414, %211 ], [ 0, %.preheader ]
  %.7 = phi i64 [ %.9, %211 ], [ %.49.lcssa, %.preheader ]
  %190 = icmp ult i64 %.313, %1
  br i1 %190, label %191, label %214

191:                                              ; preds = %189
  %192 = shl i32 %.221, 1
  %193 = or disjoint i32 %192, 1
  %194 = load i8, ptr %.031, align 1
  %195 = zext i8 %194 to i64
  %196 = and i64 %.217, %195
  %.not1 = icmp eq i64 %196, 0
  %197 = add i32 %192, 2
  %spec.select2 = select i1 %.not1, i32 %193, i32 %197
  br label %198

198:                                              ; preds = %202, %191
  %.8 = phi i64 [ %.7, %191 ], [ %203, %202 ]
  %199 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %200 = load i32, ptr %199, align 4
  %201 = icmp ult i32 %200, %spec.select2
  br i1 %201, label %202, label %204

202:                                              ; preds = %198
  %203 = add i64 %.8, 1
  br label %198, !llvm.loop !22

204:                                              ; preds = %198
  %.8.lcssa = phi i64 [ %.8, %198 ]
  %.lcssa = phi i32 [ %200, %198 ]
  %205 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %205, label %206, label %211

206:                                              ; preds = %204
  %207 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %208 = load i8, ptr %207, align 1
  store i8 %208, ptr %.235, align 1
  %209 = getelementptr inbounds nuw i8, ptr %.235, i64 1
  %210 = add nuw i64 %.313, 1
  br label %211

211:                                              ; preds = %206, %204
  %.336 = phi ptr [ %209, %206 ], [ %.235, %204 ]
  %.423 = phi i32 [ 0, %206 ], [ %spec.select2, %204 ]
  %.414 = phi i64 [ %210, %206 ], [ %.313, %204 ]
  %.9 = phi i64 [ %.49.lcssa, %206 ], [ %.8.lcssa, %204 ]
  %212 = icmp ult i64 %.217, 2
  %213 = lshr i64 %.217, 1
  %.132.idx = zext i1 %212 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.031, i64 %.132.idx
  %.318 = select i1 %212, i64 128, i64 %213
  br label %189, !llvm.loop !23

214:                                              ; preds = %189
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
  br label %42

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
  %28 = ashr exact i64 %9, 29
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

split:                                            ; preds = %27
  %.01.lcssa1 = phi i32 [ %.01, %27 ]
  br label %42

42:                                               ; preds = %split, %._crit_edge
  %.012 = phi i32 [ %.01.lcssa1, %split ], [ %.01.lcssa, %._crit_edge ]
  %43 = ashr exact i64 %9, 32
  %44 = sext i32 %.012 to i64
  %45 = getelementptr [8 x i8], ptr %1, i64 %44
  %46 = getelementptr i8, ptr %45, i64 -8
  store i64 %43, ptr %46, align 8
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

5:                                                ; preds = %9, %.preheader
  %.01 = phi i32 [ %10, %9 ], [ 1, %.preheader ]
  %exitcond.not = icmp eq i32 %.01, %0
  br i1 %exitcond.not, label %.loopexit, label %6

6:                                                ; preds = %5
  %7 = load ptr, ptr %4, align 8
  %8 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(4) @.str.4) #10
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %.loopexit, label %9

9:                                                ; preds = %6
  %10 = add nuw i32 %.01, 1
  br label %5, !llvm.loop !25

.loopexit:                                        ; preds = %6, %5
  %exitcond.not.lcssa = phi i1 [ %exitcond.not, %6 ], [ %exitcond.not, %5 ]
  br label %11

11:                                               ; preds = %.loopexit, %2
  %.not1 = phi i1 [ true, %2 ], [ %exitcond.not.lcssa, %.loopexit ]
  %12 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %13

13:                                               ; preds = %14, %11
  %.12 = phi i32 [ 0, %11 ], [ %15, %14 ]
  %exitcond1.not = icmp eq i32 %.12, 30
  br i1 %exitcond1.not, label %16, label %14

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
