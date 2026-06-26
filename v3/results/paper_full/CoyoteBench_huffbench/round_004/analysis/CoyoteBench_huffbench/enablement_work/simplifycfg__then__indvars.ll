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
  br i1 %exitcond, label %13, label %.preheader7

.preheader7:                                      ; preds = %12
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

21:                                               ; preds = %.preheader7, %28
  %.010 = phi i64 [ %.111, %28 ], [ 0, %.preheader7 ]
  %.13 = phi i64 [ %29, %28 ], [ 0, %.preheader7 ]
  %exitcond14 = icmp ne i64 %.13, 256
  br i1 %exitcond14, label %22, label %.preheader6

.preheader6:                                      ; preds = %21
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

30:                                               ; preds = %.preheader6, %31
  %.24 = phi i64 [ %34, %31 ], [ %.010.lcssa, %.preheader6 ]
  %.not = icmp eq i64 %.24, 0
  br i1 %.not, label %.preheader5, label %31

.preheader5:                                      ; preds = %30
  br label %35

31:                                               ; preds = %30
  %32 = trunc i64 %.010.lcssa to i32
  %33 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %32, i32 noundef %33)
  %34 = add i64 %.24, -1
  br label %30, !llvm.loop !11

35:                                               ; preds = %.preheader5, %37
  %.212 = phi i64 [ %38, %37 ], [ %.010.lcssa, %.preheader5 ]
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

59:                                               ; preds = %78, %56
  %.045 = phi i64 [ 0, %56 ], [ %.146, %78 ]
  %.042 = phi i64 [ 0, %56 ], [ %79, %78 ]
  %.039 = phi i64 [ 0, %56 ], [ %.140, %78 ]
  %exitcond15 = icmp ne i64 %.042, 256
  br i1 %exitcond15, label %60, label %80

60:                                               ; preds = %59
  %61 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.042
  %62 = load i64, ptr %61, align 8
  %.not6 = icmp eq i64 %62, 0
  br i1 %.not6, label %63, label %.preheader4

.preheader4:                                      ; preds = %60
  br label %66

63:                                               ; preds = %60
  %64 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 0, ptr %64, align 4
  %65 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 0, ptr %65, align 1
  br label %78

66:                                               ; preds = %.preheader4, %67
  %.043 = phi i64 [ %.144, %67 ], [ 0, %.preheader4 ]
  %.042.pn = phi i64 [ %70, %67 ], [ %.042, %.preheader4 ]
  %.05 = phi i64 [ %71, %67 ], [ 1, %.preheader4 ]
  %.3 = phi i64 [ %72, %67 ], [ 0, %.preheader4 ]
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.042.pn
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %73, label %67

67:                                               ; preds = %66
  %68 = icmp slt i32 %.037, 0
  %69 = select i1 %68, i64 %.05, i64 0
  %.144 = add i64 %.043, %69
  %.138 = call i32 @llvm.abs.i32(i32 %.037, i1 true)
  %70 = zext nneg i32 %.138 to i64
  %71 = shl i64 %.05, 1
  %72 = add i64 %.3, 1
  br label %66, !llvm.loop !13

73:                                               ; preds = %66
  %.043.lcssa = phi i64 [ %.043, %66 ]
  %.3.lcssa = phi i64 [ %.3, %66 ]
  %74 = trunc i64 %.043.lcssa to i32
  %75 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 %74, ptr %75, align 4
  %76 = trunc i64 %.3.lcssa to i8
  %77 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 %76, ptr %77, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.045)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.039)
  br label %78

78:                                               ; preds = %73, %63
  %.146 = phi i64 [ %spec.select, %73 ], [ %.045, %63 ]
  %.140 = phi i64 [ %.241, %73 ], [ %.039, %63 ]
  %79 = add nuw nsw i64 %.042, 1
  br label %59, !llvm.loop !14

80:                                               ; preds = %59
  %.045.lcssa = phi i64 [ %.045, %59 ]
  %.039.lcssa = phi i64 [ %.039, %59 ]
  %81 = icmp ugt i64 %.039.lcssa, 32
  br i1 %81, label %82, label %85

82:                                               ; preds = %80
  %83 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %84 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %83)
  call void @exit(i32 noundef 1) #11
  unreachable

85:                                               ; preds = %80
  %86 = icmp eq i64 %.045.lcssa, 0
  br i1 %86, label %87, label %.preheader3

.preheader3:                                      ; preds = %85
  br label %90

87:                                               ; preds = %85
  %88 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %89 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %88)
  call void @exit(i32 noundef 1) #11
  unreachable

90:                                               ; preds = %.preheader3, %125
  %.134 = phi ptr [ %126, %125 ], [ %0, %.preheader3 ]
  %.028 = phi i64 [ %.129.lcssa, %125 ], [ 0, %.preheader3 ]
  %.024 = phi i8 [ %.125.lcssa, %125 ], [ 0, %.preheader3 ]
  %.16 = phi i64 [ %127, %125 ], [ 0, %.preheader3 ]
  %.01 = phi i32 [ %.1.lcssa, %125 ], [ -1, %.preheader3 ]
  %exitcond16 = icmp ne i64 %.16, %1
  br i1 %exitcond16, label %91, label %128

91:                                               ; preds = %90
  %92 = load i8, ptr %.134, align 1
  %93 = zext i8 %92 to i64
  %94 = getelementptr inbounds nuw i8, ptr %7, i64 %93
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %95 to i32
  %97 = add nsw i32 %96, -1
  %98 = shl nuw i32 1, %97
  %99 = sext i32 %98 to i64
  br label %100

100:                                              ; preds = %117, %91
  %101 = phi i8 [ %92, %91 ], [ %.pre-phi.in, %117 ]
  %102 = phi i8 [ %95, %91 ], [ %.pre, %117 ]
  %.129 = phi i64 [ %.028, %91 ], [ %.230, %117 ]
  %.125 = phi i8 [ %.024, %91 ], [ %.327, %117 ]
  %.015 = phi i64 [ %99, %91 ], [ %123, %117 ]
  %.4 = phi i64 [ 0, %91 ], [ %124, %117 ]
  %.1 = phi i32 [ %.01, %91 ], [ %.2, %117 ]
  %103 = zext i8 %102 to i64
  %104 = icmp samesign ult i64 %.4, %103
  br i1 %104, label %105, label %125

105:                                              ; preds = %100
  %106 = icmp eq i32 %.1, 7
  br i1 %106, label %107, label %114

107:                                              ; preds = %105
  %108 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %108, align 1
  %109 = add i64 %.129, 1
  %110 = icmp eq i64 %109, %1
  br i1 %110, label %111, label %._crit_edge

._crit_edge:                                      ; preds = %107
  %.pre1 = load i8, ptr %.134, align 1
  br label %117

111:                                              ; preds = %107
  %112 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %113 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %112)
  call void @exit(i32 noundef 1) #11
  unreachable

114:                                              ; preds = %105
  %115 = add nsw i32 %.1, 1
  %116 = shl i8 %.125, 1
  br label %117

117:                                              ; preds = %114, %._crit_edge
  %.pre-phi.in = phi i8 [ %.pre1, %._crit_edge ], [ %101, %114 ]
  %.230 = phi i64 [ %109, %._crit_edge ], [ %.129, %114 ]
  %.226 = phi i8 [ 0, %._crit_edge ], [ %116, %114 ]
  %.2 = phi i32 [ 0, %._crit_edge ], [ %115, %114 ]
  %.pre-phi = zext i8 %.pre-phi.in to i64
  %118 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.pre-phi
  %119 = load i32, ptr %118, align 4
  %120 = zext i32 %119 to i64
  %121 = and i64 %.015, %120
  %.not5 = icmp ne i64 %121, 0
  %122 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %122
  %123 = lshr i64 %.015, 1
  %124 = add nuw nsw i64 %.4, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %100, !llvm.loop !15

125:                                              ; preds = %100
  %.129.lcssa = phi i64 [ %.129, %100 ]
  %.125.lcssa = phi i8 [ %.125, %100 ]
  %.1.lcssa = phi i32 [ %.1, %100 ]
  %126 = getelementptr inbounds nuw i8, ptr %.134, i64 1
  %127 = add i64 %.16, 1
  br label %90, !llvm.loop !16

128:                                              ; preds = %90
  %.028.lcssa = phi i64 [ %.028, %90 ]
  %.024.lcssa = phi i8 [ %.024, %90 ]
  %.01.lcssa = phi i32 [ %.01, %90 ]
  %129 = sub nsw i32 7, %.01.lcssa
  %130 = zext i8 %.024.lcssa to i32
  %131 = shl i32 %130, %129
  %132 = trunc i32 %131 to i8
  %133 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %132, ptr %133, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %134

134:                                              ; preds = %160, %128
  %.27 = phi i64 [ 0, %128 ], [ %161, %160 ]
  %.0 = phi ptr [ %9, %128 ], [ %137, %160 ]
  %exitcond18 = icmp ne i64 %.27, 256
  br i1 %exitcond18, label %135, label %.preheader2

.preheader2:                                      ; preds = %134
  br label %162

135:                                              ; preds = %134
  %136 = trunc nuw i64 %.27 to i8
  store i8 %136, ptr %.0, align 1
  %137 = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %138 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.27
  %139 = load i32, ptr %138, align 4
  %140 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %141 = load i8, ptr %140, align 1
  %142 = zext i8 %141 to i32
  %143 = or i32 %139, %142
  %.not3 = icmp eq i32 %143, 0
  br i1 %.not3, label %160, label %144

144:                                              ; preds = %135
  %145 = add nsw i32 %142, -1
  %146 = shl nuw i32 1, %145
  %147 = sext i32 %146 to i64
  %148 = zext i8 %141 to i64
  br label %149

149:                                              ; preds = %150, %144
  %.019 = phi i32 [ 0, %144 ], [ %spec.select1, %150 ]
  %.116 = phi i64 [ %147, %144 ], [ %156, %150 ]
  %.5 = phi i64 [ 0, %144 ], [ %157, %150 ]
  %exitcond17 = icmp ne i64 %.5, %148
  br i1 %exitcond17, label %150, label %158

150:                                              ; preds = %149
  %151 = shl i32 %.019, 1
  %152 = or disjoint i32 %151, 1
  %153 = zext i32 %139 to i64
  %154 = and i64 %.116, %153
  %.not4 = icmp eq i64 %154, 0
  %155 = add i32 %151, 2
  %spec.select1 = select i1 %.not4, i32 %152, i32 %155
  %156 = lshr i64 %.116, 1
  %157 = add nuw nsw i64 %.5, 1
  br label %149, !llvm.loop !17

158:                                              ; preds = %149
  %.019.lcssa = phi i32 [ %.019, %149 ]
  %159 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.27
  store i32 %.019.lcssa, ptr %159, align 4
  br label %160

160:                                              ; preds = %158, %135
  %161 = add nuw nsw i64 %.27, 1
  br label %134, !llvm.loop !18

162:                                              ; preds = %.preheader2, %.critedge
  %.6 = phi i64 [ %181, %.critedge ], [ 1, %.preheader2 ]
  %exitcond19 = icmp ne i64 %.6, 256
  br i1 %exitcond19, label %163, label %.preheader1

.preheader1:                                      ; preds = %162
  br label %182

163:                                              ; preds = %162
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
  br label %162, !llvm.loop !20

182:                                              ; preds = %.preheader1, %186
  %.49 = phi i64 [ %187, %186 ], [ 0, %.preheader1 ]
  %183 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %184 = load i32, ptr %183, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %.preheader

.preheader:                                       ; preds = %182
  %.49.lcssa = phi i64 [ %.49, %182 ]
  br label %188

186:                                              ; preds = %182
  %187 = add i64 %.49, 1
  br label %182, !llvm.loop !21

188:                                              ; preds = %.preheader, %210
  %.235 = phi ptr [ %.336, %210 ], [ %0, %.preheader ]
  %.031 = phi ptr [ %.132, %210 ], [ %11, %.preheader ]
  %.221 = phi i32 [ %.423, %210 ], [ 0, %.preheader ]
  %.217 = phi i64 [ %.318, %210 ], [ 128, %.preheader ]
  %.313 = phi i64 [ %.414, %210 ], [ 0, %.preheader ]
  %.7 = phi i64 [ %.9, %210 ], [ %.49.lcssa, %.preheader ]
  %189 = icmp ult i64 %.313, %1
  br i1 %189, label %190, label %213

190:                                              ; preds = %188
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
  %.8.lcssa = phi i64 [ %.8, %197 ]
  %.lcssa = phi i32 [ %199, %197 ]
  %204 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %204, label %205, label %210

205:                                              ; preds = %203
  %206 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %207 = load i8, ptr %206, align 1
  store i8 %207, ptr %.235, align 1
  %208 = getelementptr inbounds nuw i8, ptr %.235, i64 1
  %209 = add nuw i64 %.313, 1
  br label %210

210:                                              ; preds = %205, %203
  %.336 = phi ptr [ %208, %205 ], [ %.235, %203 ]
  %.423 = phi i32 [ 0, %205 ], [ %spec.select2, %203 ]
  %.414 = phi i64 [ %209, %205 ], [ %.313, %203 ]
  %.9 = phi i64 [ %.49.lcssa, %205 ], [ %.8.lcssa, %203 ]
  %211 = icmp ult i64 %.217, 2
  %212 = lshr i64 %.217, 1
  %.132.idx = zext i1 %211 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.031, i64 %.132.idx
  %.318 = select i1 %211, i64 128, i64 %212
  br label %188, !llvm.loop !23

213:                                              ; preds = %188
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
  br i1 %37, label %split.loopexit, label %38

38:                                               ; preds = %27
  %39 = sext i32 %.01 to i64
  %40 = getelementptr [8 x i8], ptr %1, i64 %39
  %41 = getelementptr i8, ptr %40, i64 -8
  store i64 %34, ptr %41, align 8
  br label %10, !llvm.loop !24

split.loopexit:                                   ; preds = %27
  %.01.lcssa1 = phi i32 [ %.01, %27 ]
  br label %split

split:                                            ; preds = %split.loopexit, %._crit_edge
  %.012 = phi i32 [ %.01.lcssa, %._crit_edge ], [ %.01.lcssa1, %split.loopexit ]
  %sext1.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %9, %split.loopexit ]
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
