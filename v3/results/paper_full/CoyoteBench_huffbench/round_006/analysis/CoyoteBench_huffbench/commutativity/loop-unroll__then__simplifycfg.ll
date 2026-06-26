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

.preheader6:                                      ; preds = %12, %34
  %.010 = phi i64 [ %.111.1, %34 ], [ 0, %12 ]
  %.13 = phi i64 [ %35, %34 ], [ 0, %12 ]
  %exitcond13.not = icmp eq i64 %.13, 256
  br i1 %exitcond13.not, label %.preheader5, label %21

.preheader5:                                      ; preds = %.preheader6
  %.010.lcssa = phi i64 [ %.010, %.preheader6 ]
  br label %36

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
  %29 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %28
  %30 = load i64, ptr %29, align 8
  %.not8.1 = icmp eq i64 %30, 0
  br i1 %.not8.1, label %34, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.111
  store i64 %28, ptr %32, align 8
  %33 = add i64 %.111, 1
  br label %34

34:                                               ; preds = %31, %27
  %.111.1 = phi i64 [ %33, %31 ], [ %.111, %27 ]
  %35 = add nuw nsw i64 %.13, 2
  br label %.preheader6, !llvm.loop !10

36:                                               ; preds = %37, %.preheader5
  %.24 = phi i64 [ %40, %37 ], [ %.010.lcssa, %.preheader5 ]
  %.not = icmp eq i64 %.24, 0
  br i1 %.not, label %.preheader4, label %37

37:                                               ; preds = %36
  %38 = trunc i64 %.010.lcssa to i32
  %39 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %38, i32 noundef %39)
  %40 = add i64 %.24, -1
  br label %36, !llvm.loop !11

.preheader4:                                      ; preds = %36, %42
  %.212 = phi i64 [ %43, %42 ], [ %.010.lcssa, %36 ]
  %41 = icmp ugt i64 %.212, 1
  br i1 %41, label %42, label %61

42:                                               ; preds = %.preheader4
  %43 = add i64 %.212, -1
  %44 = load i64, ptr %4, align 16
  %45 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %43
  %46 = load i64, ptr %45, align 8
  store i64 %46, ptr %4, align 16
  %47 = trunc i64 %43 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %47, i32 noundef 1)
  %48 = load i64, ptr %4, align 16
  %49 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %48
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %44
  %52 = load i64, ptr %51, align 8
  %53 = add i64 %50, %52
  %54 = add i64 %.212, 255
  %55 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %54
  store i64 %53, ptr %55, align 8
  %56 = trunc i64 %54 to i32
  %57 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %44
  store i32 %56, ptr %57, align 4
  %58 = trunc i64 %.212 to i32
  %59 = sub i32 -255, %58
  %60 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %48
  store i32 %59, ptr %60, align 4
  store i64 %54, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %47, i32 noundef 1)
  br label %.preheader4, !llvm.loop !12

61:                                               ; preds = %.preheader4
  %.212.lcssa = phi i64 [ %.212, %.preheader4 ]
  %62 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %63 = getelementptr inbounds nuw i8, ptr %62, i64 1024
  store i32 0, ptr %63, align 4
  br label %64

64:                                               ; preds = %83, %61
  %.045 = phi i64 [ 0, %61 ], [ %.146, %83 ]
  %.042 = phi i64 [ 0, %61 ], [ %84, %83 ]
  %.039 = phi i64 [ 0, %61 ], [ %.140, %83 ]
  %exitcond14.not = icmp eq i64 %.042, 256
  br i1 %exitcond14.not, label %85, label %65

65:                                               ; preds = %64
  %66 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.042
  %67 = load i64, ptr %66, align 8
  %.not6 = icmp eq i64 %67, 0
  br i1 %.not6, label %68, label %71

68:                                               ; preds = %65
  %69 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 0, ptr %69, align 4
  %70 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 0, ptr %70, align 1
  br label %83

71:                                               ; preds = %65, %72
  %.043 = phi i64 [ %.144, %72 ], [ 0, %65 ]
  %.042.pn = phi i64 [ %75, %72 ], [ %.042, %65 ]
  %.05 = phi i64 [ %76, %72 ], [ 1, %65 ]
  %.3 = phi i64 [ %77, %72 ], [ 0, %65 ]
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.042.pn
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %78, label %72

72:                                               ; preds = %71
  %73 = icmp slt i32 %.037, 0
  %74 = select i1 %73, i64 %.05, i64 0
  %.144 = add i64 %.043, %74
  %.138 = call i32 @llvm.abs.i32(i32 %.037, i1 true)
  %75 = zext nneg i32 %.138 to i64
  %76 = shl i64 %.05, 1
  %77 = add i64 %.3, 1
  br label %71, !llvm.loop !13

78:                                               ; preds = %71
  %.043.lcssa = phi i64 [ %.043, %71 ]
  %.3.lcssa = phi i64 [ %.3, %71 ]
  %79 = trunc i64 %.043.lcssa to i32
  %80 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 %79, ptr %80, align 4
  %81 = trunc i64 %.3.lcssa to i8
  %82 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 %81, ptr %82, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.045)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.039)
  br label %83

83:                                               ; preds = %78, %68
  %.146 = phi i64 [ %spec.select, %78 ], [ %.045, %68 ]
  %.140 = phi i64 [ %.241, %78 ], [ %.039, %68 ]
  %84 = add nuw nsw i64 %.042, 1
  br label %64, !llvm.loop !14

85:                                               ; preds = %64
  %.045.lcssa = phi i64 [ %.045, %64 ]
  %.039.lcssa = phi i64 [ %.039, %64 ]
  %86 = icmp ugt i64 %.039.lcssa, 32
  br i1 %86, label %87, label %90

87:                                               ; preds = %85
  %88 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %89 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %88)
  call void @exit(i32 noundef 1) #11
  unreachable

90:                                               ; preds = %85
  %91 = icmp eq i64 %.045.lcssa, 0
  br i1 %91, label %92, label %.preheader3

92:                                               ; preds = %90
  %93 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %94 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %93)
  call void @exit(i32 noundef 1) #11
  unreachable

.preheader3:                                      ; preds = %90, %129
  %.134 = phi ptr [ %130, %129 ], [ %0, %90 ]
  %.028 = phi i64 [ %.129.lcssa, %129 ], [ 0, %90 ]
  %.024 = phi i8 [ %.125.lcssa, %129 ], [ 0, %90 ]
  %.16 = phi i64 [ %131, %129 ], [ 0, %90 ]
  %.01 = phi i32 [ %.1.lcssa, %129 ], [ -1, %90 ]
  %exitcond15.not = icmp eq i64 %.16, %1
  br i1 %exitcond15.not, label %132, label %95

95:                                               ; preds = %.preheader3
  %96 = load i8, ptr %.134, align 1
  %97 = zext i8 %96 to i64
  %98 = getelementptr inbounds nuw i8, ptr %7, i64 %97
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i32
  %101 = add nsw i32 %100, -1
  %102 = shl nuw i32 1, %101
  %103 = sext i32 %102 to i64
  br label %104

104:                                              ; preds = %121, %95
  %105 = phi i8 [ %96, %95 ], [ %.pre-phi.in, %121 ]
  %106 = phi i8 [ %99, %95 ], [ %.pre, %121 ]
  %.129 = phi i64 [ %.028, %95 ], [ %.230, %121 ]
  %.125 = phi i8 [ %.024, %95 ], [ %.327, %121 ]
  %.015 = phi i64 [ %103, %95 ], [ %127, %121 ]
  %.4 = phi i64 [ 0, %95 ], [ %128, %121 ]
  %.1 = phi i32 [ %.01, %95 ], [ %.2, %121 ]
  %107 = zext i8 %106 to i64
  %108 = icmp samesign ult i64 %.4, %107
  br i1 %108, label %109, label %129

109:                                              ; preds = %104
  %110 = icmp eq i32 %.1, 7
  br i1 %110, label %111, label %118

111:                                              ; preds = %109
  %112 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %112, align 1
  %113 = add i64 %.129, 1
  %114 = icmp eq i64 %113, %1
  br i1 %114, label %115, label %._crit_edge

._crit_edge:                                      ; preds = %111
  %.pre1 = load i8, ptr %.134, align 1
  br label %121

115:                                              ; preds = %111
  %116 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %117 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %116)
  call void @exit(i32 noundef 1) #11
  unreachable

118:                                              ; preds = %109
  %119 = add nsw i32 %.1, 1
  %120 = shl i8 %.125, 1
  br label %121

121:                                              ; preds = %118, %._crit_edge
  %.pre-phi.in = phi i8 [ %.pre1, %._crit_edge ], [ %105, %118 ]
  %.230 = phi i64 [ %113, %._crit_edge ], [ %.129, %118 ]
  %.226 = phi i8 [ 0, %._crit_edge ], [ %120, %118 ]
  %.2 = phi i32 [ 0, %._crit_edge ], [ %119, %118 ]
  %.pre-phi = zext i8 %.pre-phi.in to i64
  %122 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.pre-phi
  %123 = load i32, ptr %122, align 4
  %124 = zext i32 %123 to i64
  %125 = and i64 %.015, %124
  %.not5 = icmp ne i64 %125, 0
  %126 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %126
  %127 = lshr i64 %.015, 1
  %128 = add nuw nsw i64 %.4, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %104, !llvm.loop !15

129:                                              ; preds = %104
  %.129.lcssa = phi i64 [ %.129, %104 ]
  %.125.lcssa = phi i8 [ %.125, %104 ]
  %.1.lcssa = phi i32 [ %.1, %104 ]
  %130 = getelementptr inbounds nuw i8, ptr %.134, i64 1
  %131 = add i64 %.16, 1
  br label %.preheader3, !llvm.loop !16

132:                                              ; preds = %.preheader3
  %.028.lcssa = phi i64 [ %.028, %.preheader3 ]
  %.024.lcssa = phi i8 [ %.024, %.preheader3 ]
  %.01.lcssa = phi i32 [ %.01, %.preheader3 ]
  %133 = sub nsw i32 7, %.01.lcssa
  %134 = zext i8 %.024.lcssa to i32
  %135 = shl i32 %134, %133
  %136 = trunc i32 %135 to i8
  %137 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %136, ptr %137, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %138

138:                                              ; preds = %164, %132
  %.27 = phi i64 [ 0, %132 ], [ %165, %164 ]
  %.0 = phi ptr [ %9, %132 ], [ %141, %164 ]
  %exitcond17.not = icmp eq i64 %.27, 256
  br i1 %exitcond17.not, label %.preheader2, label %139

139:                                              ; preds = %138
  %140 = trunc nuw i64 %.27 to i8
  store i8 %140, ptr %.0, align 1
  %141 = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %142 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.27
  %143 = load i32, ptr %142, align 4
  %144 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %145 = load i8, ptr %144, align 1
  %146 = zext i8 %145 to i32
  %147 = or i32 %143, %146
  %.not3 = icmp eq i32 %147, 0
  br i1 %.not3, label %164, label %148

148:                                              ; preds = %139
  %149 = add nsw i32 %146, -1
  %150 = shl nuw i32 1, %149
  %151 = sext i32 %150 to i64
  %152 = zext i8 %145 to i64
  br label %153

153:                                              ; preds = %154, %148
  %.019 = phi i32 [ 0, %148 ], [ %spec.select1, %154 ]
  %.116 = phi i64 [ %151, %148 ], [ %160, %154 ]
  %.5 = phi i64 [ 0, %148 ], [ %161, %154 ]
  %exitcond16.not = icmp eq i64 %.5, %152
  br i1 %exitcond16.not, label %162, label %154

154:                                              ; preds = %153
  %155 = shl i32 %.019, 1
  %156 = or disjoint i32 %155, 1
  %157 = zext i32 %143 to i64
  %158 = and i64 %.116, %157
  %.not4 = icmp eq i64 %158, 0
  %159 = add i32 %155, 2
  %spec.select1 = select i1 %.not4, i32 %156, i32 %159
  %160 = lshr i64 %.116, 1
  %161 = add nuw nsw i64 %.5, 1
  br label %153, !llvm.loop !17

162:                                              ; preds = %153
  %.019.lcssa = phi i32 [ %.019, %153 ]
  %163 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.27
  store i32 %.019.lcssa, ptr %163, align 4
  br label %164

164:                                              ; preds = %162, %139
  %165 = add nuw nsw i64 %.27, 1
  br label %138, !llvm.loop !18

.preheader2:                                      ; preds = %138, %.critedge
  %.6 = phi i64 [ %184, %.critedge ], [ 1, %138 ]
  %exitcond18.not = icmp eq i64 %.6, 256
  br i1 %exitcond18.not, label %.preheader1, label %166

166:                                              ; preds = %.preheader2
  %167 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.6
  %168 = load i32, ptr %167, align 4
  %169 = getelementptr inbounds nuw i8, ptr %9, i64 %.6
  %170 = load i8, ptr %169, align 1
  br label %171

171:                                              ; preds = %177, %166
  %.38 = phi i64 [ %.6, %166 ], [ %173, %177 ]
  %.not2 = icmp eq i64 %.38, 0
  br i1 %.not2, label %.critedge, label %172

172:                                              ; preds = %171
  %173 = add nsw i64 %.38, -1
  %174 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %173
  %175 = load i32, ptr %174, align 4
  %176 = icmp ugt i32 %175, %168
  br i1 %176, label %177, label %.critedge

177:                                              ; preds = %172
  %178 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %175, ptr %178, align 4
  %179 = getelementptr inbounds nuw i8, ptr %9, i64 %173
  %180 = load i8, ptr %179, align 1
  %181 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %180, ptr %181, align 1
  br label %171, !llvm.loop !19

.critedge:                                        ; preds = %172, %171
  %.38.lcssa = phi i64 [ %.38, %172 ], [ 0, %171 ]
  %182 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %168, ptr %182, align 4
  %183 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %170, ptr %183, align 1
  %184 = add nuw nsw i64 %.6, 1
  br label %.preheader2, !llvm.loop !20

.preheader1:                                      ; preds = %.preheader2, %188
  %.49 = phi i64 [ %189, %188 ], [ 0, %.preheader2 ]
  %185 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %186 = load i32, ptr %185, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %.preheader

.preheader:                                       ; preds = %.preheader1
  %.49.lcssa = phi i64 [ %.49, %.preheader1 ]
  br label %190

188:                                              ; preds = %.preheader1
  %189 = add i64 %.49, 1
  br label %.preheader1, !llvm.loop !21

190:                                              ; preds = %212, %.preheader
  %.235 = phi ptr [ %.336, %212 ], [ %0, %.preheader ]
  %.031 = phi ptr [ %.132, %212 ], [ %11, %.preheader ]
  %.221 = phi i32 [ %.423, %212 ], [ 0, %.preheader ]
  %.217 = phi i64 [ %.318, %212 ], [ 128, %.preheader ]
  %.313 = phi i64 [ %.414, %212 ], [ 0, %.preheader ]
  %.7 = phi i64 [ %.9, %212 ], [ %.49.lcssa, %.preheader ]
  %191 = icmp ult i64 %.313, %1
  br i1 %191, label %192, label %215

192:                                              ; preds = %190
  %193 = shl i32 %.221, 1
  %194 = or disjoint i32 %193, 1
  %195 = load i8, ptr %.031, align 1
  %196 = zext i8 %195 to i64
  %197 = and i64 %.217, %196
  %.not1 = icmp eq i64 %197, 0
  %198 = add i32 %193, 2
  %spec.select2 = select i1 %.not1, i32 %194, i32 %198
  br label %199

199:                                              ; preds = %203, %192
  %.8 = phi i64 [ %.7, %192 ], [ %204, %203 ]
  %200 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %201 = load i32, ptr %200, align 4
  %202 = icmp ult i32 %201, %spec.select2
  br i1 %202, label %203, label %205

203:                                              ; preds = %199
  %204 = add i64 %.8, 1
  br label %199, !llvm.loop !22

205:                                              ; preds = %199
  %.8.lcssa = phi i64 [ %.8, %199 ]
  %.lcssa = phi i32 [ %201, %199 ]
  %206 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %206, label %207, label %212

207:                                              ; preds = %205
  %208 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %209 = load i8, ptr %208, align 1
  store i8 %209, ptr %.235, align 1
  %210 = getelementptr inbounds nuw i8, ptr %.235, i64 1
  %211 = add nuw i64 %.313, 1
  br label %212

212:                                              ; preds = %207, %205
  %.336 = phi ptr [ %210, %207 ], [ %.235, %205 ]
  %.423 = phi i32 [ 0, %207 ], [ %spec.select2, %205 ]
  %.414 = phi i64 [ %211, %207 ], [ %.313, %205 ]
  %.9 = phi i64 [ %.49.lcssa, %207 ], [ %.8.lcssa, %205 ]
  %213 = icmp ult i64 %.217, 2
  %214 = lshr i64 %.217, 1
  %.132.idx = zext i1 %213 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.031, i64 %.132.idx
  %.318 = select i1 %213, i64 128, i64 %214
  br label %190, !llvm.loop !23

215:                                              ; preds = %190
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
  %.012 = phi i32 [ %.01, %10 ], [ %.01, %27 ]
  %42 = ashr exact i64 %9, 32
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

.loopexit:                                        ; preds = %5, %6, %2
  %.not1 = phi i1 [ true, %2 ], [ %exitcond.not, %6 ], [ %exitcond.not, %5 ]
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
