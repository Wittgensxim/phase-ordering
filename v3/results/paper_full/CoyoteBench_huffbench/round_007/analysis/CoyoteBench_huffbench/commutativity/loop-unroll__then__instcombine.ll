; ModuleID = 'results\paper_full\CoyoteBench_huffbench\round_006\output.ll'
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

.preheader6:                                      ; preds = %34, %.preheader6.preheader
  %.010 = phi i64 [ 0, %.preheader6.preheader ], [ %.111.1, %34 ]
  %.13 = phi i64 [ 0, %.preheader6.preheader ], [ %35, %34 ]
  %exitcond13.not = icmp eq i64 %.13, 256
  br i1 %exitcond13.not, label %.preheader5.preheader, label %21

.preheader5.preheader:                            ; preds = %.preheader6
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
  %27 = or disjoint i64 %.13, 1
  br label %28

28:                                               ; preds = %.preheader6.1
  %29 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %27
  %30 = load i64, ptr %29, align 8
  %.not8.1 = icmp eq i64 %30, 0
  br i1 %.not8.1, label %34, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.111
  store i64 %27, ptr %32, align 8
  %33 = add i64 %.111, 1
  br label %34

34:                                               ; preds = %31, %28
  %.111.1 = phi i64 [ %33, %31 ], [ %.111, %28 ]
  %35 = add nuw nsw i64 %.13, 2
  br label %.preheader6, !llvm.loop !10

.preheader5:                                      ; preds = %.preheader5.preheader, %36
  %.24 = phi i64 [ %39, %36 ], [ %.010, %.preheader5.preheader ]
  %.not = icmp eq i64 %.24, 0
  br i1 %.not, label %.preheader4.preheader, label %36

.preheader4.preheader:                            ; preds = %.preheader5
  br label %.preheader4

36:                                               ; preds = %.preheader5
  %37 = trunc i64 %.010 to i32
  %38 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %37, i32 noundef %38)
  %39 = add i64 %.24, -1
  br label %.preheader5, !llvm.loop !11

.preheader4:                                      ; preds = %.preheader4.preheader, %41
  %.212 = phi i64 [ %42, %41 ], [ %.010, %.preheader4.preheader ]
  %40 = icmp ugt i64 %.212, 1
  br i1 %40, label %41, label %60

41:                                               ; preds = %.preheader4
  %42 = add i64 %.212, -1
  %43 = load i64, ptr %4, align 16
  %44 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %42
  %45 = load i64, ptr %44, align 8
  store i64 %45, ptr %4, align 16
  %46 = trunc i64 %42 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %46, i32 noundef 1)
  %47 = load i64, ptr %4, align 16
  %48 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %47
  %49 = load i64, ptr %48, align 8
  %50 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %43
  %51 = load i64, ptr %50, align 8
  %52 = add i64 %49, %51
  %53 = add i64 %.212, 255
  %54 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %53
  store i64 %52, ptr %54, align 8
  %55 = trunc i64 %53 to i32
  %56 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %43
  store i32 %55, ptr %56, align 4
  %57 = trunc i64 %.212 to i32
  %58 = sub i32 -255, %57
  %59 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %47
  store i32 %58, ptr %59, align 4
  store i64 %53, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %46, i32 noundef 1)
  br label %.preheader4, !llvm.loop !12

60:                                               ; preds = %.preheader4
  %61 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212
  %62 = getelementptr inbounds nuw i8, ptr %61, i64 1024
  store i32 0, ptr %62, align 4
  br label %63

63:                                               ; preds = %82, %60
  %.045 = phi i64 [ 0, %60 ], [ %.146, %82 ]
  %.042 = phi i64 [ 0, %60 ], [ %83, %82 ]
  %.039 = phi i64 [ 0, %60 ], [ %.140, %82 ]
  %exitcond14.not = icmp eq i64 %.042, 256
  br i1 %exitcond14.not, label %84, label %64

64:                                               ; preds = %63
  %65 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.042
  %66 = load i64, ptr %65, align 8
  %.not6 = icmp eq i64 %66, 0
  br i1 %.not6, label %67, label %.preheader7

.preheader7:                                      ; preds = %64
  br label %70

67:                                               ; preds = %64
  %68 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 0, ptr %68, align 4
  %69 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 0, ptr %69, align 1
  br label %82

70:                                               ; preds = %.preheader7, %71
  %.043 = phi i64 [ %.144, %71 ], [ 0, %.preheader7 ]
  %.042.pn = phi i64 [ %74, %71 ], [ %.042, %.preheader7 ]
  %.05 = phi i64 [ %75, %71 ], [ 1, %.preheader7 ]
  %.3 = phi i64 [ %76, %71 ], [ 0, %.preheader7 ]
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
  br label %63, !llvm.loop !14

84:                                               ; preds = %63
  %85 = icmp ugt i64 %.039, 32
  br i1 %85, label %86, label %89

86:                                               ; preds = %84
  %87 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %88 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %87)
  call void @exit(i32 noundef 1) #11
  unreachable

89:                                               ; preds = %84
  %90 = icmp eq i64 %.045, 0
  br i1 %90, label %91, label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %89
  br label %.preheader3

91:                                               ; preds = %89
  %92 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %93 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %92)
  call void @exit(i32 noundef 1) #11
  unreachable

.preheader3:                                      ; preds = %.preheader3.preheader, %128
  %.134 = phi ptr [ %129, %128 ], [ %0, %.preheader3.preheader ]
  %.028 = phi i64 [ %.129, %128 ], [ 0, %.preheader3.preheader ]
  %.024 = phi i8 [ %.125, %128 ], [ 0, %.preheader3.preheader ]
  %.16 = phi i64 [ %130, %128 ], [ 0, %.preheader3.preheader ]
  %.01 = phi i32 [ %.1, %128 ], [ -1, %.preheader3.preheader ]
  %exitcond15.not = icmp eq i64 %.16, %1
  br i1 %exitcond15.not, label %131, label %94

94:                                               ; preds = %.preheader3
  %95 = load i8, ptr %.134, align 1
  %96 = zext i8 %95 to i64
  %97 = getelementptr inbounds nuw i8, ptr %7, i64 %96
  %98 = load i8, ptr %97, align 1
  %99 = zext i8 %98 to i32
  %100 = add nsw i32 %99, -1
  %101 = shl nuw i32 1, %100
  %102 = sext i32 %101 to i64
  br label %103

103:                                              ; preds = %120, %94
  %104 = phi i8 [ %95, %94 ], [ %.pre-phi.in, %120 ]
  %105 = phi i8 [ %98, %94 ], [ %.pre, %120 ]
  %.129 = phi i64 [ %.028, %94 ], [ %.230, %120 ]
  %.125 = phi i8 [ %.024, %94 ], [ %.327, %120 ]
  %.015 = phi i64 [ %102, %94 ], [ %126, %120 ]
  %.4 = phi i64 [ 0, %94 ], [ %127, %120 ]
  %.1 = phi i32 [ %.01, %94 ], [ %.2, %120 ]
  %106 = zext i8 %105 to i64
  %107 = icmp samesign ult i64 %.4, %106
  br i1 %107, label %108, label %128

108:                                              ; preds = %103
  %109 = icmp eq i32 %.1, 7
  br i1 %109, label %110, label %117

110:                                              ; preds = %108
  %111 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %111, align 1
  %112 = add i64 %.129, 1
  %113 = icmp eq i64 %112, %1
  br i1 %113, label %114, label %._crit_edge

._crit_edge:                                      ; preds = %110
  %.pre1 = load i8, ptr %.134, align 1
  br label %120

114:                                              ; preds = %110
  %115 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %116 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %115)
  call void @exit(i32 noundef 1) #11
  unreachable

117:                                              ; preds = %108
  %118 = add nsw i32 %.1, 1
  %119 = shl i8 %.125, 1
  br label %120

120:                                              ; preds = %117, %._crit_edge
  %.pre-phi.in = phi i8 [ %.pre1, %._crit_edge ], [ %104, %117 ]
  %.230 = phi i64 [ %112, %._crit_edge ], [ %.129, %117 ]
  %.226 = phi i8 [ 0, %._crit_edge ], [ %119, %117 ]
  %.2 = phi i32 [ 0, %._crit_edge ], [ %118, %117 ]
  %.pre-phi = zext i8 %.pre-phi.in to i64
  %121 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.pre-phi
  %122 = load i32, ptr %121, align 4
  %123 = zext i32 %122 to i64
  %124 = and i64 %.015, %123
  %.not5 = icmp ne i64 %124, 0
  %125 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %125
  %126 = lshr i64 %.015, 1
  %127 = add nuw nsw i64 %.4, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %103, !llvm.loop !15

128:                                              ; preds = %103
  %129 = getelementptr inbounds nuw i8, ptr %.134, i64 1
  %130 = add i64 %.16, 1
  br label %.preheader3, !llvm.loop !16

131:                                              ; preds = %.preheader3
  %132 = sub nsw i32 7, %.01
  %133 = zext i8 %.024 to i32
  %134 = shl i32 %133, %132
  %135 = trunc i32 %134 to i8
  %136 = getelementptr inbounds nuw i8, ptr %11, i64 %.028
  store i8 %135, ptr %136, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %137

137:                                              ; preds = %163, %131
  %.27 = phi i64 [ 0, %131 ], [ %164, %163 ]
  %.0 = phi ptr [ %9, %131 ], [ %140, %163 ]
  %exitcond17.not = icmp eq i64 %.27, 256
  br i1 %exitcond17.not, label %.preheader2.preheader, label %138

.preheader2.preheader:                            ; preds = %137
  br label %.preheader2

138:                                              ; preds = %137
  %139 = trunc nuw i64 %.27 to i8
  store i8 %139, ptr %.0, align 1
  %140 = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %141 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.27
  %142 = load i32, ptr %141, align 4
  %143 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %144 = load i8, ptr %143, align 1
  %145 = zext i8 %144 to i32
  %146 = or i32 %142, %145
  %.not3 = icmp eq i32 %146, 0
  br i1 %.not3, label %163, label %147

147:                                              ; preds = %138
  %148 = add nsw i32 %145, -1
  %149 = shl nuw i32 1, %148
  %150 = sext i32 %149 to i64
  %151 = zext i8 %144 to i64
  br label %152

152:                                              ; preds = %153, %147
  %.019 = phi i32 [ 0, %147 ], [ %spec.select1, %153 ]
  %.116 = phi i64 [ %150, %147 ], [ %159, %153 ]
  %.5 = phi i64 [ 0, %147 ], [ %160, %153 ]
  %exitcond16.not = icmp eq i64 %.5, %151
  br i1 %exitcond16.not, label %161, label %153

153:                                              ; preds = %152
  %154 = shl i32 %.019, 1
  %155 = or disjoint i32 %154, 1
  %156 = zext i32 %142 to i64
  %157 = and i64 %.116, %156
  %.not4 = icmp eq i64 %157, 0
  %158 = add i32 %154, 2
  %spec.select1 = select i1 %.not4, i32 %155, i32 %158
  %159 = lshr i64 %.116, 1
  %160 = add nuw nsw i64 %.5, 1
  br label %152, !llvm.loop !17

161:                                              ; preds = %152
  %162 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.27
  store i32 %.019, ptr %162, align 4
  br label %163

163:                                              ; preds = %161, %138
  %164 = add nuw nsw i64 %.27, 1
  br label %137, !llvm.loop !18

.preheader2:                                      ; preds = %.preheader2.preheader, %.critedge
  %.6 = phi i64 [ %183, %.critedge ], [ 1, %.preheader2.preheader ]
  %exitcond18.not = icmp eq i64 %.6, 256
  br i1 %exitcond18.not, label %.preheader1.preheader, label %165

.preheader1.preheader:                            ; preds = %.preheader2
  br label %.preheader1

165:                                              ; preds = %.preheader2
  %166 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.6
  %167 = load i32, ptr %166, align 4
  %168 = getelementptr inbounds nuw i8, ptr %9, i64 %.6
  %169 = load i8, ptr %168, align 1
  br label %170

170:                                              ; preds = %176, %165
  %.38 = phi i64 [ %.6, %165 ], [ %172, %176 ]
  %.not2 = icmp eq i64 %.38, 0
  br i1 %.not2, label %.critedge, label %171

171:                                              ; preds = %170
  %172 = add nsw i64 %.38, -1
  %173 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %172
  %174 = load i32, ptr %173, align 4
  %175 = icmp ugt i32 %174, %167
  br i1 %175, label %176, label %.critedge

176:                                              ; preds = %171
  %177 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %174, ptr %177, align 4
  %178 = getelementptr inbounds nuw i8, ptr %9, i64 %172
  %179 = load i8, ptr %178, align 1
  %180 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %179, ptr %180, align 1
  br label %170, !llvm.loop !19

.critedge:                                        ; preds = %171, %170
  %.38.lcssa = phi i64 [ %.38, %171 ], [ 0, %170 ]
  %181 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %167, ptr %181, align 4
  %182 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %169, ptr %182, align 1
  %183 = add nuw nsw i64 %.6, 1
  br label %.preheader2, !llvm.loop !20

.preheader1:                                      ; preds = %.preheader1.preheader, %187
  %.49 = phi i64 [ %188, %187 ], [ 0, %.preheader1.preheader ]
  %184 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %185 = load i32, ptr %184, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader1
  br label %.preheader

187:                                              ; preds = %.preheader1
  %188 = add i64 %.49, 1
  br label %.preheader1, !llvm.loop !21

.preheader:                                       ; preds = %.preheader.preheader, %210
  %.235 = phi ptr [ %.336, %210 ], [ %0, %.preheader.preheader ]
  %.031 = phi ptr [ %.132, %210 ], [ %11, %.preheader.preheader ]
  %.221 = phi i32 [ %.423, %210 ], [ 0, %.preheader.preheader ]
  %.217 = phi i64 [ %.318, %210 ], [ 128, %.preheader.preheader ]
  %.313 = phi i64 [ %.414, %210 ], [ 0, %.preheader.preheader ]
  %.7 = phi i64 [ %.9, %210 ], [ %.49, %.preheader.preheader ]
  %189 = icmp ult i64 %.313, %1
  br i1 %189, label %190, label %213

190:                                              ; preds = %.preheader
  %191 = shl i32 %.221, 1
  %192 = or disjoint i32 %191, 1
  %193 = load i8, ptr %.031, align 1
  %194 = zext i8 %193 to i64
  %195 = and i64 %.217, %194
  %.not1 = icmp eq i64 %195, 0
  %196 = add i32 %191, 2
  %spec.select2 = select i1 %.not1, i32 %192, i32 %196
  br label %197

197:                                              ; preds = %201, %190
  %.8 = phi i64 [ %.7, %190 ], [ %202, %201 ]
  %198 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %199 = load i32, ptr %198, align 4
  %200 = icmp ult i32 %199, %spec.select2
  br i1 %200, label %201, label %203

201:                                              ; preds = %197
  %202 = add i64 %.8, 1
  br label %197, !llvm.loop !22

203:                                              ; preds = %197
  %204 = icmp eq i32 %spec.select2, %199
  br i1 %204, label %205, label %210

205:                                              ; preds = %203
  %206 = getelementptr inbounds nuw i8, ptr %9, i64 %.8
  %207 = load i8, ptr %206, align 1
  store i8 %207, ptr %.235, align 1
  %208 = getelementptr inbounds nuw i8, ptr %.235, i64 1
  %209 = add nuw i64 %.313, 1
  br label %210

210:                                              ; preds = %205, %203
  %.336 = phi ptr [ %208, %205 ], [ %.235, %203 ]
  %.423 = phi i32 [ 0, %205 ], [ %spec.select2, %203 ]
  %.414 = phi i64 [ %209, %205 ], [ %.313, %203 ]
  %.9 = phi i64 [ %.49, %205 ], [ %.8, %203 ]
  %211 = icmp ult i64 %.217, 2
  %212 = lshr i64 %.217, 1
  %.132.idx = zext i1 %211 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.031, i64 %.132.idx
  %.318 = select i1 %211, i64 128, i64 %212
  br label %.preheader, !llvm.loop !23

213:                                              ; preds = %.preheader
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
  %42 = ashr exact i64 %9, 32
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

.loopexit.loopexit:                               ; preds = %5, %6
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %2
  %.not1 = phi i1 [ true, %2 ], [ %exitcond.not, %.loopexit.loopexit ]
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
