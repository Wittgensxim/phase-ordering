; ModuleID = 'results\paper_full\CoyoteBench_huffbench\round_009\output.ll'
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
  %.24 = phi i64 [ %39, %36 ], [ %.010.lcssa, %.preheader5.preheader ]
  %.not = icmp eq i64 %.24, 0
  br i1 %.not, label %.preheader4.preheader, label %36

.preheader4.preheader:                            ; preds = %.preheader5
  br label %.preheader4

36:                                               ; preds = %.preheader5
  %37 = trunc i64 %.010.lcssa to i32
  %38 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %37, i32 noundef %38)
  %39 = add i64 %.24, -1
  br label %.preheader5, !llvm.loop !11

.preheader4:                                      ; preds = %.preheader4.preheader, %41
  %.212 = phi i64 [ %42, %41 ], [ %.010.lcssa, %.preheader4.preheader ]
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
  %.212.lcssa = phi i64 [ %.212, %.preheader4 ]
  %61 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %62 = getelementptr inbounds nuw i8, ptr %61, i64 1024
  store i32 0, ptr %62, align 4
  br label %63

63:                                               ; preds = %81, %60
  %.045 = phi i64 [ 0, %60 ], [ %.146, %81 ]
  %.042 = phi i64 [ 0, %60 ], [ %82, %81 ]
  %.039 = phi i64 [ 0, %60 ], [ %.140, %81 ]
  %exitcond14.not = icmp eq i64 %.042, 256
  br i1 %exitcond14.not, label %83, label %64

64:                                               ; preds = %63
  %65 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.042
  %66 = load i64, ptr %65, align 8
  %.not6 = icmp eq i64 %66, 0
  br i1 %.not6, label %67, label %.preheader7.preheader

.preheader7.preheader:                            ; preds = %64
  br label %.preheader7

67:                                               ; preds = %64
  %68 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 0, ptr %68, align 4
  %69 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 0, ptr %69, align 1
  br label %81

.preheader7:                                      ; preds = %.preheader7.preheader, %70
  %.043 = phi i64 [ %.144, %70 ], [ 0, %.preheader7.preheader ]
  %.042.pn = phi i64 [ %73, %70 ], [ %.042, %.preheader7.preheader ]
  %.05 = phi i64 [ %74, %70 ], [ 1, %.preheader7.preheader ]
  %.3 = phi i64 [ %75, %70 ], [ 0, %.preheader7.preheader ]
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.042.pn
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %76, label %70

70:                                               ; preds = %.preheader7
  %71 = icmp slt i32 %.037, 0
  %72 = select i1 %71, i64 %.05, i64 0
  %.144 = add i64 %.043, %72
  %.138 = call i32 @llvm.abs.i32(i32 %.037, i1 true)
  %73 = zext nneg i32 %.138 to i64
  %74 = shl i64 %.05, 1
  %75 = add i64 %.3, 1
  br label %.preheader7, !llvm.loop !13

76:                                               ; preds = %.preheader7
  %.043.lcssa = phi i64 [ %.043, %.preheader7 ]
  %.3.lcssa = phi i64 [ %.3, %.preheader7 ]
  %77 = trunc i64 %.043.lcssa to i32
  %78 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 %77, ptr %78, align 4
  %79 = trunc i64 %.3.lcssa to i8
  %80 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 %79, ptr %80, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.045)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.039)
  br label %81

81:                                               ; preds = %76, %67
  %.146 = phi i64 [ %spec.select, %76 ], [ %.045, %67 ]
  %.140 = phi i64 [ %.241, %76 ], [ %.039, %67 ]
  %82 = add nuw nsw i64 %.042, 1
  br label %63, !llvm.loop !14

83:                                               ; preds = %63
  %.045.lcssa = phi i64 [ %.045, %63 ]
  %.039.lcssa = phi i64 [ %.039, %63 ]
  %84 = icmp ugt i64 %.039.lcssa, 32
  br i1 %84, label %85, label %88

85:                                               ; preds = %83
  %86 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %87 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %86)
  call void @exit(i32 noundef 1) #11
  unreachable

88:                                               ; preds = %83
  %89 = icmp eq i64 %.045.lcssa, 0
  br i1 %89, label %90, label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %88
  br label %.preheader3

90:                                               ; preds = %88
  %91 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %92 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %91)
  call void @exit(i32 noundef 1) #11
  unreachable

.preheader3:                                      ; preds = %.preheader3.preheader, %127
  %.134 = phi ptr [ %128, %127 ], [ %0, %.preheader3.preheader ]
  %.028 = phi i64 [ %.129.lcssa, %127 ], [ 0, %.preheader3.preheader ]
  %.024 = phi i8 [ %.125.lcssa, %127 ], [ 0, %.preheader3.preheader ]
  %.16 = phi i64 [ %129, %127 ], [ 0, %.preheader3.preheader ]
  %.01 = phi i32 [ %.1.lcssa, %127 ], [ -1, %.preheader3.preheader ]
  %exitcond15.not = icmp eq i64 %.16, %1
  br i1 %exitcond15.not, label %130, label %93

93:                                               ; preds = %.preheader3
  %94 = load i8, ptr %.134, align 1
  %95 = zext i8 %94 to i64
  %96 = getelementptr inbounds nuw i8, ptr %7, i64 %95
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %97 to i32
  %99 = add nsw i32 %98, -1
  %100 = shl nuw i32 1, %99
  %101 = sext i32 %100 to i64
  br label %102

102:                                              ; preds = %119, %93
  %103 = phi i8 [ %94, %93 ], [ %.pre-phi.in, %119 ]
  %104 = phi i8 [ %97, %93 ], [ %.pre, %119 ]
  %.129 = phi i64 [ %.028, %93 ], [ %.230, %119 ]
  %.125 = phi i8 [ %.024, %93 ], [ %.327, %119 ]
  %.015 = phi i64 [ %101, %93 ], [ %125, %119 ]
  %.4 = phi i64 [ 0, %93 ], [ %126, %119 ]
  %.1 = phi i32 [ %.01, %93 ], [ %.2, %119 ]
  %105 = zext i8 %104 to i64
  %106 = icmp samesign ult i64 %.4, %105
  br i1 %106, label %107, label %127

107:                                              ; preds = %102
  %108 = icmp eq i32 %.1, 7
  br i1 %108, label %109, label %116

109:                                              ; preds = %107
  %110 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %110, align 1
  %111 = add i64 %.129, 1
  %112 = icmp eq i64 %111, %1
  br i1 %112, label %113, label %._crit_edge

._crit_edge:                                      ; preds = %109
  %.pre1 = load i8, ptr %.134, align 1
  br label %119

113:                                              ; preds = %109
  %114 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %115 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %114)
  call void @exit(i32 noundef 1) #11
  unreachable

116:                                              ; preds = %107
  %117 = add nsw i32 %.1, 1
  %118 = shl i8 %.125, 1
  br label %119

119:                                              ; preds = %116, %._crit_edge
  %.pre-phi.in = phi i8 [ %.pre1, %._crit_edge ], [ %103, %116 ]
  %.230 = phi i64 [ %111, %._crit_edge ], [ %.129, %116 ]
  %.226 = phi i8 [ 0, %._crit_edge ], [ %118, %116 ]
  %.2 = phi i32 [ 0, %._crit_edge ], [ %117, %116 ]
  %.pre-phi = zext i8 %.pre-phi.in to i64
  %120 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.pre-phi
  %121 = load i32, ptr %120, align 4
  %122 = zext i32 %121 to i64
  %123 = and i64 %.015, %122
  %.not5 = icmp ne i64 %123, 0
  %124 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %124
  %125 = lshr i64 %.015, 1
  %126 = add nuw nsw i64 %.4, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %102, !llvm.loop !15

127:                                              ; preds = %102
  %.129.lcssa = phi i64 [ %.129, %102 ]
  %.125.lcssa = phi i8 [ %.125, %102 ]
  %.1.lcssa = phi i32 [ %.1, %102 ]
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

136:                                              ; preds = %162, %130
  %.27 = phi i64 [ 0, %130 ], [ %163, %162 ]
  %.0 = phi ptr [ %9, %130 ], [ %139, %162 ]
  %exitcond17.not = icmp eq i64 %.27, 256
  br i1 %exitcond17.not, label %.preheader2.preheader, label %137

.preheader2.preheader:                            ; preds = %136
  br label %.preheader2

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
  br i1 %.not3, label %162, label %146

146:                                              ; preds = %137
  %147 = add nsw i32 %144, -1
  %148 = shl nuw i32 1, %147
  %149 = sext i32 %148 to i64
  %150 = zext i8 %143 to i64
  br label %151

151:                                              ; preds = %152, %146
  %.019 = phi i32 [ 0, %146 ], [ %spec.select1, %152 ]
  %.116 = phi i64 [ %149, %146 ], [ %158, %152 ]
  %.5 = phi i64 [ 0, %146 ], [ %159, %152 ]
  %exitcond16.not = icmp eq i64 %.5, %150
  br i1 %exitcond16.not, label %160, label %152

152:                                              ; preds = %151
  %153 = shl i32 %.019, 1
  %154 = or disjoint i32 %153, 1
  %155 = zext i32 %141 to i64
  %156 = and i64 %.116, %155
  %.not4 = icmp eq i64 %156, 0
  %157 = add i32 %153, 2
  %spec.select1 = select i1 %.not4, i32 %154, i32 %157
  %158 = lshr i64 %.116, 1
  %159 = add nuw nsw i64 %.5, 1
  br label %151, !llvm.loop !17

160:                                              ; preds = %151
  %.019.lcssa = phi i32 [ %.019, %151 ]
  %161 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.27
  store i32 %.019.lcssa, ptr %161, align 4
  br label %162

162:                                              ; preds = %160, %137
  %163 = add nuw nsw i64 %.27, 1
  br label %136, !llvm.loop !18

.preheader2:                                      ; preds = %.preheader2.preheader, %.critedge
  %.6 = phi i64 [ %182, %.critedge ], [ 1, %.preheader2.preheader ]
  %exitcond18.not = icmp eq i64 %.6, 256
  br i1 %exitcond18.not, label %.preheader1.preheader, label %164

.preheader1.preheader:                            ; preds = %.preheader2
  br label %.preheader1

164:                                              ; preds = %.preheader2
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
  br label %.preheader2, !llvm.loop !20

.preheader1:                                      ; preds = %.preheader1.preheader, %186
  %.49 = phi i64 [ %187, %186 ], [ 0, %.preheader1.preheader ]
  %183 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %184 = load i32, ptr %183, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader1
  %.49.lcssa = phi i64 [ %.49, %.preheader1 ]
  br label %.preheader

186:                                              ; preds = %.preheader1
  %187 = add i64 %.49, 1
  br label %.preheader1, !llvm.loop !21

.preheader:                                       ; preds = %.preheader.preheader, %209
  %.235 = phi ptr [ %.336, %209 ], [ %0, %.preheader.preheader ]
  %.031 = phi ptr [ %.132, %209 ], [ %11, %.preheader.preheader ]
  %.221 = phi i32 [ %.423, %209 ], [ 0, %.preheader.preheader ]
  %.217 = phi i64 [ %.318, %209 ], [ 128, %.preheader.preheader ]
  %.313 = phi i64 [ %.414, %209 ], [ 0, %.preheader.preheader ]
  %.7 = phi i64 [ %.9, %209 ], [ %.49.lcssa, %.preheader.preheader ]
  %188 = icmp ult i64 %.313, %1
  br i1 %188, label %189, label %212

189:                                              ; preds = %.preheader
  %190 = shl i32 %.221, 1
  %191 = or disjoint i32 %190, 1
  %192 = load i8, ptr %.031, align 1
  %193 = zext i8 %192 to i64
  %194 = and i64 %.217, %193
  %.not1 = icmp eq i64 %194, 0
  %195 = add i32 %190, 2
  %spec.select2 = select i1 %.not1, i32 %191, i32 %195
  br label %196

196:                                              ; preds = %200, %189
  %.8 = phi i64 [ %.7, %189 ], [ %201, %200 ]
  %197 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %198 = load i32, ptr %197, align 4
  %199 = icmp ult i32 %198, %spec.select2
  br i1 %199, label %200, label %202

200:                                              ; preds = %196
  %201 = add i64 %.8, 1
  br label %196, !llvm.loop !22

202:                                              ; preds = %196
  %.8.lcssa = phi i64 [ %.8, %196 ]
  %.lcssa = phi i32 [ %198, %196 ]
  %203 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %203, label %204, label %209

204:                                              ; preds = %202
  %205 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %206 = load i8, ptr %205, align 1
  store i8 %206, ptr %.235, align 1
  %207 = getelementptr inbounds nuw i8, ptr %.235, i64 1
  %208 = add nuw i64 %.313, 1
  br label %209

209:                                              ; preds = %204, %202
  %.336 = phi ptr [ %207, %204 ], [ %.235, %202 ]
  %.423 = phi i32 [ 0, %204 ], [ %spec.select2, %202 ]
  %.414 = phi i64 [ %208, %204 ], [ %.313, %202 ]
  %.9 = phi i64 [ %.49.lcssa, %204 ], [ %.8.lcssa, %202 ]
  %210 = icmp ult i64 %.217, 2
  %211 = lshr i64 %.217, 1
  %.132.idx = zext i1 %210 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.031, i64 %.132.idx
  %.318 = select i1 %210, i64 128, i64 %211
  br label %.preheader, !llvm.loop !23

212:                                              ; preds = %.preheader
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
