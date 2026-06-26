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
  br i1 %exitcond.not, label %.preheader6.preheader, label %13

.preheader6.preheader:                            ; preds = %12
  br label %.preheader6

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

.preheader6:                                      ; preds = %.preheader6.preheader, %27
  %.010 = phi i64 [ %.111, %27 ], [ 0, %.preheader6.preheader ]
  %.13 = phi i64 [ %28, %27 ], [ 0, %.preheader6.preheader ]
  %exitcond13.not = icmp eq i64 %.13, 256
  br i1 %exitcond13.not, label %.preheader5.preheader, label %21

.preheader5.preheader:                            ; preds = %.preheader6
  %.010.lcssa = phi i64 [ %.010, %.preheader6 ]
  br label %.preheader5

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

.preheader5:                                      ; preds = %.preheader5.preheader, %29
  %.24 = phi i64 [ %32, %29 ], [ %.010.lcssa, %.preheader5.preheader ]
  %.not = icmp eq i64 %.24, 0
  br i1 %.not, label %.preheader4.preheader, label %29

.preheader4.preheader:                            ; preds = %.preheader5
  br label %.preheader4

29:                                               ; preds = %.preheader5
  %30 = trunc i64 %.010.lcssa to i32
  %31 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %30, i32 noundef %31)
  %32 = add i64 %.24, -1
  br label %.preheader5, !llvm.loop !11

.preheader4:                                      ; preds = %.preheader4.preheader, %34
  %.212 = phi i64 [ %35, %34 ], [ %.010.lcssa, %.preheader4.preheader ]
  %33 = icmp ugt i64 %.212, 1
  br i1 %33, label %34, label %53

34:                                               ; preds = %.preheader4
  %35 = add i64 %.212, -1
  %36 = load i64, ptr %4, align 16
  %37 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %35
  %38 = load i64, ptr %37, align 8
  store i64 %38, ptr %4, align 16
  %39 = trunc i64 %35 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %39, i32 noundef 1)
  %40 = load i64, ptr %4, align 16
  %41 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %40
  %42 = load i64, ptr %41, align 8
  %43 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %36
  %44 = load i64, ptr %43, align 8
  %45 = add i64 %42, %44
  %46 = add i64 %.212, 255
  %47 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %46
  store i64 %45, ptr %47, align 8
  %48 = trunc i64 %46 to i32
  %49 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %36
  store i32 %48, ptr %49, align 4
  %50 = trunc i64 %.212 to i32
  %51 = sub i32 -255, %50
  %52 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %40
  store i32 %51, ptr %52, align 4
  store i64 %46, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %39, i32 noundef 1)
  br label %.preheader4, !llvm.loop !12

53:                                               ; preds = %.preheader4
  %.212.lcssa = phi i64 [ %.212, %.preheader4 ]
  %54 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 1024
  store i32 0, ptr %55, align 4
  br label %56

56:                                               ; preds = %75, %53
  %.045 = phi i64 [ 0, %53 ], [ %.146, %75 ]
  %.042 = phi i64 [ 0, %53 ], [ %76, %75 ]
  %.039 = phi i64 [ 0, %53 ], [ %.140, %75 ]
  %exitcond14.not = icmp eq i64 %.042, 256
  br i1 %exitcond14.not, label %77, label %57

57:                                               ; preds = %56
  %58 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.042
  %59 = load i64, ptr %58, align 8
  %.not6 = icmp eq i64 %59, 0
  br i1 %.not6, label %60, label %.preheader7

.preheader7:                                      ; preds = %57
  br label %63

60:                                               ; preds = %57
  %61 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 0, ptr %61, align 4
  %62 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 0, ptr %62, align 1
  br label %75

63:                                               ; preds = %.preheader7, %64
  %.043 = phi i64 [ %.144, %64 ], [ 0, %.preheader7 ]
  %.042.pn = phi i64 [ %67, %64 ], [ %.042, %.preheader7 ]
  %.05 = phi i64 [ %68, %64 ], [ 1, %.preheader7 ]
  %.3 = phi i64 [ %69, %64 ], [ 0, %.preheader7 ]
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.042.pn
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %70, label %64

64:                                               ; preds = %63
  %65 = icmp slt i32 %.037, 0
  %66 = select i1 %65, i64 %.05, i64 0
  %.144 = add i64 %.043, %66
  %.138 = call i32 @llvm.abs.i32(i32 %.037, i1 true)
  %67 = zext nneg i32 %.138 to i64
  %68 = shl i64 %.05, 1
  %69 = add i64 %.3, 1
  br label %63, !llvm.loop !13

70:                                               ; preds = %63
  %.043.lcssa = phi i64 [ %.043, %63 ]
  %.3.lcssa = phi i64 [ %.3, %63 ]
  %71 = trunc i64 %.043.lcssa to i32
  %72 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 %71, ptr %72, align 4
  %73 = trunc i64 %.3.lcssa to i8
  %74 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 %73, ptr %74, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.045)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.039)
  br label %75

75:                                               ; preds = %70, %60
  %.146 = phi i64 [ %spec.select, %70 ], [ %.045, %60 ]
  %.140 = phi i64 [ %.241, %70 ], [ %.039, %60 ]
  %76 = add nuw nsw i64 %.042, 1
  br label %56, !llvm.loop !14

77:                                               ; preds = %56
  %.045.lcssa = phi i64 [ %.045, %56 ]
  %.039.lcssa = phi i64 [ %.039, %56 ]
  %78 = icmp ugt i64 %.039.lcssa, 32
  br i1 %78, label %79, label %82

79:                                               ; preds = %77
  %80 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %81 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %80)
  call void @exit(i32 noundef 1) #11
  unreachable

82:                                               ; preds = %77
  %83 = icmp eq i64 %.045.lcssa, 0
  br i1 %83, label %84, label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %82
  br label %.preheader3

84:                                               ; preds = %82
  %85 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %86 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %85)
  call void @exit(i32 noundef 1) #11
  unreachable

.preheader3:                                      ; preds = %.preheader3.preheader, %121
  %.134 = phi ptr [ %122, %121 ], [ %0, %.preheader3.preheader ]
  %.028 = phi i64 [ %.129.lcssa, %121 ], [ 0, %.preheader3.preheader ]
  %.024 = phi i8 [ %.125.lcssa, %121 ], [ 0, %.preheader3.preheader ]
  %.16 = phi i64 [ %123, %121 ], [ 0, %.preheader3.preheader ]
  %.01 = phi i32 [ %.1.lcssa, %121 ], [ -1, %.preheader3.preheader ]
  %exitcond15.not = icmp eq i64 %.16, %1
  br i1 %exitcond15.not, label %124, label %87

87:                                               ; preds = %.preheader3
  %88 = load i8, ptr %.134, align 1
  %89 = zext i8 %88 to i64
  %90 = getelementptr inbounds nuw i8, ptr %7, i64 %89
  %91 = load i8, ptr %90, align 1
  %92 = zext i8 %91 to i32
  %93 = add nsw i32 %92, -1
  %94 = shl nuw i32 1, %93
  %95 = sext i32 %94 to i64
  br label %96

96:                                               ; preds = %113, %87
  %97 = phi i8 [ %88, %87 ], [ %.pre-phi.in, %113 ]
  %98 = phi i8 [ %91, %87 ], [ %.pre, %113 ]
  %.129 = phi i64 [ %.028, %87 ], [ %.230, %113 ]
  %.125 = phi i8 [ %.024, %87 ], [ %.327, %113 ]
  %.015 = phi i64 [ %95, %87 ], [ %119, %113 ]
  %.4 = phi i64 [ 0, %87 ], [ %120, %113 ]
  %.1 = phi i32 [ %.01, %87 ], [ %.2, %113 ]
  %99 = zext i8 %98 to i64
  %100 = icmp samesign ult i64 %.4, %99
  br i1 %100, label %101, label %121

101:                                              ; preds = %96
  %102 = icmp eq i32 %.1, 7
  br i1 %102, label %103, label %110

103:                                              ; preds = %101
  %104 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %104, align 1
  %105 = add i64 %.129, 1
  %106 = icmp eq i64 %105, %1
  br i1 %106, label %107, label %._crit_edge

._crit_edge:                                      ; preds = %103
  %.pre1 = load i8, ptr %.134, align 1
  br label %113

107:                                              ; preds = %103
  %108 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %109 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %108)
  call void @exit(i32 noundef 1) #11
  unreachable

110:                                              ; preds = %101
  %111 = add nsw i32 %.1, 1
  %112 = shl i8 %.125, 1
  br label %113

113:                                              ; preds = %110, %._crit_edge
  %.pre-phi.in = phi i8 [ %.pre1, %._crit_edge ], [ %97, %110 ]
  %.230 = phi i64 [ %105, %._crit_edge ], [ %.129, %110 ]
  %.226 = phi i8 [ 0, %._crit_edge ], [ %112, %110 ]
  %.2 = phi i32 [ 0, %._crit_edge ], [ %111, %110 ]
  %.pre-phi = zext i8 %.pre-phi.in to i64
  %114 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.pre-phi
  %115 = load i32, ptr %114, align 4
  %116 = zext i32 %115 to i64
  %117 = and i64 %.015, %116
  %.not5 = icmp ne i64 %117, 0
  %118 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %118
  %119 = lshr i64 %.015, 1
  %120 = add nuw nsw i64 %.4, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %96, !llvm.loop !15

121:                                              ; preds = %96
  %.129.lcssa = phi i64 [ %.129, %96 ]
  %.125.lcssa = phi i8 [ %.125, %96 ]
  %.1.lcssa = phi i32 [ %.1, %96 ]
  %122 = getelementptr inbounds nuw i8, ptr %.134, i64 1
  %123 = add i64 %.16, 1
  br label %.preheader3, !llvm.loop !16

124:                                              ; preds = %.preheader3
  %.028.lcssa = phi i64 [ %.028, %.preheader3 ]
  %.024.lcssa = phi i8 [ %.024, %.preheader3 ]
  %.01.lcssa = phi i32 [ %.01, %.preheader3 ]
  %125 = sub nsw i32 7, %.01.lcssa
  %126 = zext i8 %.024.lcssa to i32
  %127 = shl i32 %126, %125
  %128 = trunc i32 %127 to i8
  %129 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %128, ptr %129, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %130

130:                                              ; preds = %156, %124
  %.27 = phi i64 [ 0, %124 ], [ %157, %156 ]
  %.0 = phi ptr [ %9, %124 ], [ %133, %156 ]
  %exitcond17.not = icmp eq i64 %.27, 256
  br i1 %exitcond17.not, label %.preheader2.preheader, label %131

.preheader2.preheader:                            ; preds = %130
  br label %.preheader2

131:                                              ; preds = %130
  %132 = trunc nuw i64 %.27 to i8
  store i8 %132, ptr %.0, align 1
  %133 = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %134 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.27
  %135 = load i32, ptr %134, align 4
  %136 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %137 = load i8, ptr %136, align 1
  %138 = zext i8 %137 to i32
  %139 = or i32 %135, %138
  %.not3 = icmp eq i32 %139, 0
  br i1 %.not3, label %156, label %140

140:                                              ; preds = %131
  %141 = add nsw i32 %138, -1
  %142 = shl nuw i32 1, %141
  %143 = sext i32 %142 to i64
  %144 = zext i8 %137 to i64
  br label %145

145:                                              ; preds = %146, %140
  %.019 = phi i32 [ 0, %140 ], [ %spec.select1, %146 ]
  %.116 = phi i64 [ %143, %140 ], [ %152, %146 ]
  %.5 = phi i64 [ 0, %140 ], [ %153, %146 ]
  %exitcond16.not = icmp eq i64 %.5, %144
  br i1 %exitcond16.not, label %154, label %146

146:                                              ; preds = %145
  %147 = shl i32 %.019, 1
  %148 = or disjoint i32 %147, 1
  %149 = zext i32 %135 to i64
  %150 = and i64 %.116, %149
  %.not4 = icmp eq i64 %150, 0
  %151 = add i32 %147, 2
  %spec.select1 = select i1 %.not4, i32 %148, i32 %151
  %152 = lshr i64 %.116, 1
  %153 = add nuw nsw i64 %.5, 1
  br label %145, !llvm.loop !17

154:                                              ; preds = %145
  %.019.lcssa = phi i32 [ %.019, %145 ]
  %155 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.27
  store i32 %.019.lcssa, ptr %155, align 4
  br label %156

156:                                              ; preds = %154, %131
  %157 = add nuw nsw i64 %.27, 1
  br label %130, !llvm.loop !18

.preheader2:                                      ; preds = %.preheader2.preheader, %.critedge
  %.6 = phi i64 [ %176, %.critedge ], [ 1, %.preheader2.preheader ]
  %exitcond18.not = icmp eq i64 %.6, 256
  br i1 %exitcond18.not, label %.preheader1.preheader, label %158

.preheader1.preheader:                            ; preds = %.preheader2
  br label %.preheader1

158:                                              ; preds = %.preheader2
  %159 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.6
  %160 = load i32, ptr %159, align 4
  %161 = getelementptr inbounds nuw i8, ptr %9, i64 %.6
  %162 = load i8, ptr %161, align 1
  br label %163

163:                                              ; preds = %169, %158
  %.38 = phi i64 [ %.6, %158 ], [ %165, %169 ]
  %.not2 = icmp eq i64 %.38, 0
  br i1 %.not2, label %.critedge, label %164

164:                                              ; preds = %163
  %165 = add nsw i64 %.38, -1
  %166 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %165
  %167 = load i32, ptr %166, align 4
  %168 = icmp ugt i32 %167, %160
  br i1 %168, label %169, label %.critedge

169:                                              ; preds = %164
  %170 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %167, ptr %170, align 4
  %171 = getelementptr inbounds nuw i8, ptr %9, i64 %165
  %172 = load i8, ptr %171, align 1
  %173 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %172, ptr %173, align 1
  br label %163, !llvm.loop !19

.critedge:                                        ; preds = %164, %163
  %.38.lcssa = phi i64 [ %.38, %164 ], [ 0, %163 ]
  %174 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %160, ptr %174, align 4
  %175 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %162, ptr %175, align 1
  %176 = add nuw nsw i64 %.6, 1
  br label %.preheader2, !llvm.loop !20

.preheader1:                                      ; preds = %.preheader1.preheader, %180
  %.49 = phi i64 [ %181, %180 ], [ 0, %.preheader1.preheader ]
  %177 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %178 = load i32, ptr %177, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader1
  %.49.lcssa = phi i64 [ %.49, %.preheader1 ]
  br label %.preheader

180:                                              ; preds = %.preheader1
  %181 = add i64 %.49, 1
  br label %.preheader1, !llvm.loop !21

.preheader:                                       ; preds = %.preheader.preheader, %203
  %.235 = phi ptr [ %.336, %203 ], [ %0, %.preheader.preheader ]
  %.031 = phi ptr [ %.132, %203 ], [ %11, %.preheader.preheader ]
  %.221 = phi i32 [ %.423, %203 ], [ 0, %.preheader.preheader ]
  %.217 = phi i64 [ %.318, %203 ], [ 128, %.preheader.preheader ]
  %.313 = phi i64 [ %.414, %203 ], [ 0, %.preheader.preheader ]
  %.7 = phi i64 [ %.9, %203 ], [ %.49.lcssa, %.preheader.preheader ]
  %182 = icmp ult i64 %.313, %1
  br i1 %182, label %183, label %206

183:                                              ; preds = %.preheader
  %184 = shl i32 %.221, 1
  %185 = or disjoint i32 %184, 1
  %186 = load i8, ptr %.031, align 1
  %187 = zext i8 %186 to i64
  %188 = and i64 %.217, %187
  %.not1 = icmp eq i64 %188, 0
  %189 = add i32 %184, 2
  %spec.select2 = select i1 %.not1, i32 %185, i32 %189
  br label %190

190:                                              ; preds = %194, %183
  %.8 = phi i64 [ %.7, %183 ], [ %195, %194 ]
  %191 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %192 = load i32, ptr %191, align 4
  %193 = icmp ult i32 %192, %spec.select2
  br i1 %193, label %194, label %196

194:                                              ; preds = %190
  %195 = add i64 %.8, 1
  br label %190, !llvm.loop !22

196:                                              ; preds = %190
  %.8.lcssa = phi i64 [ %.8, %190 ]
  %.lcssa = phi i32 [ %192, %190 ]
  %197 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %197, label %198, label %203

198:                                              ; preds = %196
  %199 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %200 = load i8, ptr %199, align 1
  store i8 %200, ptr %.235, align 1
  %201 = getelementptr inbounds nuw i8, ptr %.235, i64 1
  %202 = add nuw i64 %.313, 1
  br label %203

203:                                              ; preds = %198, %196
  %.336 = phi ptr [ %201, %198 ], [ %.235, %196 ]
  %.423 = phi i32 [ 0, %198 ], [ %spec.select2, %196 ]
  %.414 = phi i64 [ %202, %198 ], [ %.313, %196 ]
  %.9 = phi i64 [ %.49.lcssa, %198 ], [ %.8.lcssa, %196 ]
  %204 = icmp ult i64 %.217, 2
  %205 = lshr i64 %.217, 1
  %.132.idx = zext i1 %204 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.031, i64 %.132.idx
  %.318 = select i1 %204, i64 128, i64 %205
  br label %.preheader, !llvm.loop !23

206:                                              ; preds = %.preheader
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
  br i1 %exitcond.not, label %.loopexit.loopexit, label %6

6:                                                ; preds = %5
  %7 = load ptr, ptr %4, align 8
  %8 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(4) @.str.4) #10
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %.loopexit.loopexit, label %9

9:                                                ; preds = %6
  %10 = add nuw i32 %.01, 1
  br label %5, !llvm.loop !25

.loopexit.loopexit:                               ; preds = %6, %5
  %exitcond.not.lcssa = phi i1 [ %exitcond.not, %6 ], [ %exitcond.not, %5 ]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %2
  %.not1 = phi i1 [ true, %2 ], [ %exitcond.not.lcssa, %.loopexit.loopexit ]
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
