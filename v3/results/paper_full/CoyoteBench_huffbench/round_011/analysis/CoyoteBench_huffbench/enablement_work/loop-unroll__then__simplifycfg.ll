; ModuleID = 'results\paper_full\CoyoteBench_huffbench\round_010\output.ll'
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

.preheader6:                                      ; preds = %12, %33
  %.010 = phi i64 [ %.111.1, %33 ], [ 0, %12 ]
  %.13 = phi i64 [ %34, %33 ], [ 0, %12 ]
  %exitcond13.not = icmp eq i64 %.13, 256
  br i1 %exitcond13.not, label %.preheader5.preheader, label %21

.preheader5.preheader:                            ; preds = %.preheader6
  %.010.lcssa = phi i64 [ %.010, %.preheader6 ]
  br label %.preheader5

21:                                               ; preds = %.preheader6
  %22 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.13
  %23 = load i64, ptr %22, align 8
  %.not8 = icmp eq i64 %23, 0
  br i1 %.not8, label %.preheader6.1, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.010
  store i64 %.13, ptr %25, align 8
  %26 = add i64 %.010, 1
  br label %.preheader6.1

.preheader6.1:                                    ; preds = %24, %21
  %.111 = phi i64 [ %26, %24 ], [ %.010, %21 ]
  %27 = add nuw nsw i64 %.13, 1
  %28 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %27
  %29 = load i64, ptr %28, align 8
  %.not8.1 = icmp eq i64 %29, 0
  br i1 %.not8.1, label %33, label %30

30:                                               ; preds = %.preheader6.1
  %31 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.111
  store i64 %27, ptr %31, align 8
  %32 = add i64 %.111, 1
  br label %33

33:                                               ; preds = %30, %.preheader6.1
  %.111.1 = phi i64 [ %32, %30 ], [ %.111, %.preheader6.1 ]
  %34 = add nuw nsw i64 %.13, 2
  br label %.preheader6, !llvm.loop !10

.preheader5:                                      ; preds = %.preheader5.preheader, %35
  %.24 = phi i64 [ %38, %35 ], [ %.010.lcssa, %.preheader5.preheader ]
  %.not = icmp eq i64 %.24, 0
  br i1 %.not, label %.preheader4, label %35

35:                                               ; preds = %.preheader5
  %36 = trunc i64 %.010.lcssa to i32
  %37 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %36, i32 noundef %37)
  %38 = add i64 %.24, -1
  br label %.preheader5, !llvm.loop !11

.preheader4:                                      ; preds = %.preheader5, %40
  %.212 = phi i64 [ %41, %40 ], [ %.010.lcssa, %.preheader5 ]
  %39 = icmp ugt i64 %.212, 1
  br i1 %39, label %40, label %59

40:                                               ; preds = %.preheader4
  %41 = add i64 %.212, -1
  %42 = load i64, ptr %4, align 16
  %43 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %41
  %44 = load i64, ptr %43, align 8
  store i64 %44, ptr %4, align 16
  %45 = trunc i64 %41 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %45, i32 noundef 1)
  %46 = load i64, ptr %4, align 16
  %47 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %46
  %48 = load i64, ptr %47, align 8
  %49 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %42
  %50 = load i64, ptr %49, align 8
  %51 = add i64 %48, %50
  %52 = add i64 %.212, 255
  %53 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %52
  store i64 %51, ptr %53, align 8
  %54 = trunc i64 %52 to i32
  %55 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %42
  store i32 %54, ptr %55, align 4
  %56 = trunc i64 %.212 to i32
  %57 = sub i32 -255, %56
  %58 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %46
  store i32 %57, ptr %58, align 4
  store i64 %52, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %45, i32 noundef 1)
  br label %.preheader4, !llvm.loop !12

59:                                               ; preds = %.preheader4
  %.212.lcssa = phi i64 [ %.212, %.preheader4 ]
  %60 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %61 = getelementptr inbounds nuw i8, ptr %60, i64 1024
  store i32 0, ptr %61, align 4
  br label %62

62:                                               ; preds = %80, %59
  %.045 = phi i64 [ 0, %59 ], [ %.146, %80 ]
  %.042 = phi i64 [ 0, %59 ], [ %81, %80 ]
  %.039 = phi i64 [ 0, %59 ], [ %.140, %80 ]
  %exitcond14.not = icmp eq i64 %.042, 256
  br i1 %exitcond14.not, label %82, label %63

63:                                               ; preds = %62
  %64 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.042
  %65 = load i64, ptr %64, align 8
  %.not6 = icmp eq i64 %65, 0
  br i1 %.not6, label %66, label %.preheader7

66:                                               ; preds = %63
  %67 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 0, ptr %67, align 4
  %68 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 0, ptr %68, align 1
  br label %80

.preheader7:                                      ; preds = %63, %69
  %.043 = phi i64 [ %.144, %69 ], [ 0, %63 ]
  %.042.pn = phi i64 [ %72, %69 ], [ %.042, %63 ]
  %.05 = phi i64 [ %73, %69 ], [ 1, %63 ]
  %.3 = phi i64 [ %74, %69 ], [ 0, %63 ]
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.042.pn
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %75, label %69

69:                                               ; preds = %.preheader7
  %70 = icmp slt i32 %.037, 0
  %71 = select i1 %70, i64 %.05, i64 0
  %.144 = add i64 %.043, %71
  %.138 = call i32 @llvm.abs.i32(i32 %.037, i1 true)
  %72 = zext nneg i32 %.138 to i64
  %73 = shl i64 %.05, 1
  %74 = add i64 %.3, 1
  br label %.preheader7, !llvm.loop !13

75:                                               ; preds = %.preheader7
  %.043.lcssa = phi i64 [ %.043, %.preheader7 ]
  %.3.lcssa = phi i64 [ %.3, %.preheader7 ]
  %76 = trunc i64 %.043.lcssa to i32
  %77 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 %76, ptr %77, align 4
  %78 = trunc i64 %.3.lcssa to i8
  %79 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 %78, ptr %79, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.045)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.039)
  br label %80

80:                                               ; preds = %75, %66
  %.146 = phi i64 [ %spec.select, %75 ], [ %.045, %66 ]
  %.140 = phi i64 [ %.241, %75 ], [ %.039, %66 ]
  %81 = add nuw nsw i64 %.042, 1
  br label %62, !llvm.loop !14

82:                                               ; preds = %62
  %.045.lcssa = phi i64 [ %.045, %62 ]
  %.039.lcssa = phi i64 [ %.039, %62 ]
  %83 = icmp ugt i64 %.039.lcssa, 32
  br i1 %83, label %84, label %87

84:                                               ; preds = %82
  %85 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %86 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %85)
  call void @exit(i32 noundef 1) #11
  unreachable

87:                                               ; preds = %82
  %88 = icmp eq i64 %.045.lcssa, 0
  br i1 %88, label %89, label %.preheader3

89:                                               ; preds = %87
  %90 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %91 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %90)
  call void @exit(i32 noundef 1) #11
  unreachable

.preheader3:                                      ; preds = %87, %126
  %.134 = phi ptr [ %127, %126 ], [ %0, %87 ]
  %.028 = phi i64 [ %.129.lcssa, %126 ], [ 0, %87 ]
  %.024 = phi i8 [ %.125.lcssa, %126 ], [ 0, %87 ]
  %.16 = phi i64 [ %128, %126 ], [ 0, %87 ]
  %.01 = phi i32 [ %.1.lcssa, %126 ], [ -1, %87 ]
  %exitcond15.not = icmp eq i64 %.16, %1
  br i1 %exitcond15.not, label %129, label %92

92:                                               ; preds = %.preheader3
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
  br label %.preheader3, !llvm.loop !16

129:                                              ; preds = %.preheader3
  %.028.lcssa = phi i64 [ %.028, %.preheader3 ]
  %.024.lcssa = phi i8 [ %.024, %.preheader3 ]
  %.01.lcssa = phi i32 [ %.01, %.preheader3 ]
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

.preheader2:                                      ; preds = %135, %.critedge
  %.6 = phi i64 [ %181, %.critedge ], [ 1, %135 ]
  %exitcond18.not = icmp eq i64 %.6, 256
  br i1 %exitcond18.not, label %.preheader1, label %163

163:                                              ; preds = %.preheader2
  %164 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.6
  %165 = load i32, ptr %164, align 4
  %166 = getelementptr inbounds nuw i8, ptr %9, i64 %.6
  %167 = load i8, ptr %166, align 1
  br label %168

168:                                              ; preds = %174, %163
  %.38 = phi i64 [ %.6, %163 ], [ %170, %174 ]
  %.not2 = icmp eq i64 %.38, 0
  br i1 %.not2, label %.critedge, label %169

169:                                              ; preds = %168
  %170 = add nsw i64 %.38, -1
  %171 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %170
  %172 = load i32, ptr %171, align 4
  %173 = icmp ugt i32 %172, %165
  br i1 %173, label %174, label %.critedge

174:                                              ; preds = %169
  %175 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %172, ptr %175, align 4
  %176 = getelementptr inbounds nuw i8, ptr %9, i64 %170
  %177 = load i8, ptr %176, align 1
  %178 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %177, ptr %178, align 1
  br label %168, !llvm.loop !19

.critedge:                                        ; preds = %169, %168
  %.38.lcssa = phi i64 [ %.38, %169 ], [ 0, %168 ]
  %179 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %165, ptr %179, align 4
  %180 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %167, ptr %180, align 1
  %181 = add nuw nsw i64 %.6, 1
  br label %.preheader2, !llvm.loop !20

.preheader1:                                      ; preds = %.preheader2, %185
  %.49 = phi i64 [ %186, %185 ], [ 0, %.preheader2 ]
  %182 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %183 = load i32, ptr %182, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader1
  %.49.lcssa = phi i64 [ %.49, %.preheader1 ]
  br label %.preheader

185:                                              ; preds = %.preheader1
  %186 = add i64 %.49, 1
  br label %.preheader1, !llvm.loop !21

.preheader:                                       ; preds = %.preheader.preheader, %208
  %.235 = phi ptr [ %.336, %208 ], [ %0, %.preheader.preheader ]
  %.031 = phi ptr [ %.132, %208 ], [ %11, %.preheader.preheader ]
  %.221 = phi i32 [ %.423, %208 ], [ 0, %.preheader.preheader ]
  %.217 = phi i64 [ %.318, %208 ], [ 128, %.preheader.preheader ]
  %.313 = phi i64 [ %.414, %208 ], [ 0, %.preheader.preheader ]
  %.7 = phi i64 [ %.9, %208 ], [ %.49.lcssa, %.preheader.preheader ]
  %187 = icmp ult i64 %.313, %1
  br i1 %187, label %188, label %211

188:                                              ; preds = %.preheader
  %189 = shl i32 %.221, 1
  %190 = or disjoint i32 %189, 1
  %191 = load i8, ptr %.031, align 1
  %192 = zext i8 %191 to i64
  %193 = and i64 %.217, %192
  %.not1 = icmp eq i64 %193, 0
  %194 = add i32 %189, 2
  %spec.select2 = select i1 %.not1, i32 %190, i32 %194
  br label %195

195:                                              ; preds = %199, %188
  %.8 = phi i64 [ %.7, %188 ], [ %200, %199 ]
  %196 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %197 = load i32, ptr %196, align 4
  %198 = icmp ult i32 %197, %spec.select2
  br i1 %198, label %199, label %201

199:                                              ; preds = %195
  %200 = add i64 %.8, 1
  br label %195, !llvm.loop !22

201:                                              ; preds = %195
  %.8.lcssa = phi i64 [ %.8, %195 ]
  %.lcssa = phi i32 [ %197, %195 ]
  %202 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %202, label %203, label %208

203:                                              ; preds = %201
  %204 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %205 = load i8, ptr %204, align 1
  store i8 %205, ptr %.235, align 1
  %206 = getelementptr inbounds nuw i8, ptr %.235, i64 1
  %207 = add nuw i64 %.313, 1
  br label %208

208:                                              ; preds = %203, %201
  %.336 = phi ptr [ %206, %203 ], [ %.235, %201 ]
  %.423 = phi i32 [ 0, %203 ], [ %spec.select2, %201 ]
  %.414 = phi i64 [ %207, %203 ], [ %.313, %201 ]
  %.9 = phi i64 [ %.49.lcssa, %203 ], [ %.8.lcssa, %201 ]
  %209 = icmp ult i64 %.217, 2
  %210 = lshr i64 %.217, 1
  %.132.idx = zext i1 %209 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.031, i64 %.132.idx
  %.318 = select i1 %209, i64 128, i64 %210
  br label %.preheader, !llvm.loop !23

211:                                              ; preds = %.preheader
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
  br i1 %37, label %._crit_edge, label %38

38:                                               ; preds = %27
  %39 = sext i32 %.01 to i64
  %40 = getelementptr [8 x i8], ptr %1, i64 %39
  %41 = getelementptr i8, ptr %40, i64 -8
  store i64 %34, ptr %41, align 8
  br label %10, !llvm.loop !24

._crit_edge:                                      ; preds = %27, %10
  %.01.lcssa = phi i32 [ %.01, %27 ], [ %.01, %10 ]
  %42 = ashr exact i64 %9, 32
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

.loopexit:                                        ; preds = %6, %5, %2
  %.not1 = phi i1 [ true, %2 ], [ %exitcond.not, %5 ], [ %exitcond.not, %6 ]
  %11 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %12

12:                                               ; preds = %13, %.loopexit
  %.12 = phi i32 [ 0, %.loopexit ], [ %14, %13 ]
  %exitcond1.not = icmp eq i32 %.12, 30
  br i1 %exitcond1.not, label %15, label %13

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
