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

3:                                                ; preds = %6, %1
  %.01 = phi ptr [ %2, %1 ], [ %10, %6 ]
  %.0 = phi i32 [ 0, %1 ], [ %11, %6 ]
  %4 = zext nneg i32 %.0 to i64
  %5 = icmp ugt i64 %0, %4
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = call i64 @random4()
  %8 = getelementptr inbounds nuw i8, ptr @.str, i64 %7
  %9 = load i8, ptr %8, align 1
  store i8 %9, ptr %.01, align 1
  %10 = getelementptr inbounds nuw i8, ptr %.01, i64 1
  %11 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !7

12:                                               ; preds = %3
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

12:                                               ; preds = %14, %2
  %.033 = phi ptr [ %0, %2 ], [ %20, %14 ]
  %.02 = phi i64 [ 0, %2 ], [ %21, %14 ]
  %13 = icmp ult i64 %.02, %1
  br i1 %13, label %14, label %.preheader6

14:                                               ; preds = %12
  %15 = load i8, ptr %.033, align 1
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %16
  %18 = load i64, ptr %17, align 8
  %19 = add i64 %18, 1
  store i64 %19, ptr %17, align 8
  %20 = getelementptr inbounds nuw i8, ptr %.033, i64 1
  %21 = add i64 %.02, 1
  br label %12, !llvm.loop !9

.preheader6:                                      ; preds = %12, %30
  %.010 = phi i64 [ %.111, %30 ], [ 0, %12 ]
  %.13 = phi i64 [ %31, %30 ], [ 0, %12 ]
  %22 = icmp samesign ult i64 %.13, 256
  br i1 %22, label %24, label %.preheader5

.preheader5:                                      ; preds = %.preheader6
  %.010.lcssa = phi i64 [ %.010, %.preheader6 ]
  %23 = trunc i64 %.010.lcssa to i32
  br label %32

24:                                               ; preds = %.preheader6
  %25 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.13
  %26 = load i64, ptr %25, align 8
  %.not8 = icmp eq i64 %26, 0
  br i1 %.not8, label %30, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.010
  store i64 %.13, ptr %28, align 8
  %29 = add i64 %.010, 1
  br label %30

30:                                               ; preds = %27, %24
  %.111 = phi i64 [ %29, %27 ], [ %.010, %24 ]
  %31 = add nuw nsw i64 %.13, 1
  br label %.preheader6, !llvm.loop !10

32:                                               ; preds = %.preheader5, %33
  %.24 = phi i64 [ %35, %33 ], [ %.010.lcssa, %.preheader5 ]
  %.not = icmp eq i64 %.24, 0
  br i1 %.not, label %.preheader4, label %33

33:                                               ; preds = %32
  %34 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %23, i32 noundef %34)
  %35 = add i64 %.24, -1
  br label %32, !llvm.loop !11

.preheader4:                                      ; preds = %32, %37
  %.212 = phi i64 [ %38, %37 ], [ %.010.lcssa, %32 ]
  %36 = icmp ugt i64 %.212, 1
  br i1 %36, label %37, label %56

37:                                               ; preds = %.preheader4
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
  br label %.preheader4, !llvm.loop !12

56:                                               ; preds = %.preheader4
  %.212.lcssa = phi i64 [ %.212, %.preheader4 ]
  %57 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %58 = getelementptr inbounds nuw i8, ptr %57, i64 1024
  store i32 0, ptr %58, align 4
  br label %59

59:                                               ; preds = %79, %56
  %.045 = phi i64 [ 0, %56 ], [ %.146, %79 ]
  %.042 = phi i64 [ 0, %56 ], [ %80, %79 ]
  %.039 = phi i64 [ 0, %56 ], [ %.140, %79 ]
  %60 = icmp samesign ult i64 %.042, 256
  br i1 %60, label %61, label %81

61:                                               ; preds = %59
  %62 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.042
  %63 = load i64, ptr %62, align 8
  %.not6 = icmp eq i64 %63, 0
  br i1 %.not6, label %64, label %67

64:                                               ; preds = %61
  %65 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 0, ptr %65, align 4
  %66 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 0, ptr %66, align 1
  br label %79

67:                                               ; preds = %61, %68
  %.043 = phi i64 [ %.144, %68 ], [ 0, %61 ]
  %.042.pn = phi i64 [ %71, %68 ], [ %.042, %61 ]
  %.05 = phi i64 [ %72, %68 ], [ 1, %61 ]
  %.3 = phi i64 [ %73, %68 ], [ 0, %61 ]
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

79:                                               ; preds = %74, %64
  %.146 = phi i64 [ %spec.select, %74 ], [ %.045, %64 ]
  %.140 = phi i64 [ %.241, %74 ], [ %.039, %64 ]
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

88:                                               ; preds = %86
  %89 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %90 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %89)
  call void @exit(i32 noundef 1) #11
  unreachable

.preheader3:                                      ; preds = %86, %126
  %.134 = phi ptr [ %127, %126 ], [ %0, %86 ]
  %.028 = phi i64 [ %.129.lcssa, %126 ], [ 0, %86 ]
  %.024 = phi i8 [ %.125.lcssa, %126 ], [ 0, %86 ]
  %.16 = phi i64 [ %128, %126 ], [ 0, %86 ]
  %.01 = phi i32 [ %.1.lcssa, %126 ], [ -1, %86 ]
  %91 = icmp ult i64 %.16, %1
  br i1 %91, label %92, label %129

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
  %105 = icmp ult i64 %.4, %104
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
  %125 = add i64 %.4, 1
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

135:                                              ; preds = %163, %129
  %.27 = phi i64 [ 0, %129 ], [ %164, %163 ]
  %.0 = phi ptr [ %9, %129 ], [ %139, %163 ]
  %136 = icmp samesign ult i64 %.27, 256
  br i1 %136, label %137, label %.preheader2

137:                                              ; preds = %135
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
  br i1 %.not3, label %163, label %146

146:                                              ; preds = %137
  %147 = add nsw i32 %144, -1
  %148 = shl nuw i32 1, %147
  %149 = sext i32 %148 to i64
  %150 = zext i8 %143 to i64
  %151 = zext i32 %141 to i64
  br label %152

152:                                              ; preds = %154, %146
  %.019 = phi i32 [ 0, %146 ], [ %spec.select1, %154 ]
  %.116 = phi i64 [ %149, %146 ], [ %159, %154 ]
  %.5 = phi i64 [ 0, %146 ], [ %160, %154 ]
  %153 = icmp ult i64 %.5, %150
  br i1 %153, label %154, label %161

154:                                              ; preds = %152
  %155 = shl i32 %.019, 1
  %156 = or disjoint i32 %155, 1
  %157 = and i64 %.116, %151
  %.not4 = icmp eq i64 %157, 0
  %158 = add i32 %155, 2
  %spec.select1 = select i1 %.not4, i32 %156, i32 %158
  %159 = lshr i64 %.116, 1
  %160 = add i64 %.5, 1
  br label %152, !llvm.loop !17

161:                                              ; preds = %152
  %.019.lcssa = phi i32 [ %.019, %152 ]
  %162 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.27
  store i32 %.019.lcssa, ptr %162, align 4
  br label %163

163:                                              ; preds = %161, %137
  %164 = add nuw nsw i64 %.27, 1
  br label %135, !llvm.loop !18

.preheader2:                                      ; preds = %135, %.critedge
  %.6 = phi i64 [ %184, %.critedge ], [ 1, %135 ]
  %165 = icmp samesign ult i64 %.6, 256
  br i1 %165, label %166, label %.preheader1

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
  %173 = add i64 %.38, -1
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
  %.38.lcssa = phi i64 [ %.38, %172 ], [ %.38, %171 ]
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

190:                                              ; preds = %.preheader, %212
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
  %211 = add i64 %.313, 1
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
  %9 = sdiv i32 %2, 2
  %sext = shl i64 %8, 32
  %10 = ashr exact i64 %sext, 29
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  br label %12

12:                                               ; preds = %37, %4
  %.01 = phi i32 [ %3, %4 ], [ %.0, %37 ]
  %.not = icmp sgt i32 %.01, %9
  br i1 %.not, label %._crit_edge, label %13

._crit_edge:                                      ; preds = %12
  %.01.lcssa = phi i32 [ %.01, %12 ]
  %.pre = shl i64 %8, 32
  br label %split

13:                                               ; preds = %12
  %14 = shl nsw i32 %.01, 1
  %15 = icmp slt i32 %14, %2
  br i1 %15, label %16, label %28

16:                                               ; preds = %13
  %17 = sext i32 %14 to i64
  %18 = getelementptr [8 x i8], ptr %1, i64 %17
  %19 = getelementptr i8, ptr %18, i64 -8
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %20
  %22 = load i64, ptr %21, align 8
  %23 = load i64, ptr %18, align 8
  %24 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %23
  %25 = load i64, ptr %24, align 8
  %26 = icmp ugt i64 %22, %25
  %27 = zext i1 %26 to i32
  %spec.select = or disjoint i32 %14, %27
  br label %28

28:                                               ; preds = %16, %13
  %.0 = phi i32 [ %14, %13 ], [ %spec.select, %16 ]
  %29 = load i64, ptr %11, align 8
  %30 = sext i32 %.0 to i64
  %31 = getelementptr [8 x i8], ptr %1, i64 %30
  %32 = getelementptr i8, ptr %31, i64 -8
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %33
  %35 = load i64, ptr %34, align 8
  %36 = icmp ult i64 %29, %35
  br i1 %36, label %split, label %37

37:                                               ; preds = %28
  %38 = sext i32 %.01 to i64
  %39 = getelementptr [8 x i8], ptr %1, i64 %38
  %40 = getelementptr i8, ptr %39, i64 -8
  store i64 %33, ptr %40, align 8
  br label %12, !llvm.loop !24

split:                                            ; preds = %28, %._crit_edge
  %.012 = phi i32 [ %.01.lcssa, %._crit_edge ], [ %.01, %28 ]
  %sext1.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %sext, %28 ]
  %41 = ashr exact i64 %sext1.pre-phi, 32
  %42 = sext i32 %.012 to i64
  %43 = getelementptr [8 x i8], ptr %1, i64 %42
  %44 = getelementptr i8, ptr %43, i64 -8
  store i64 %41, ptr %44, align 8
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

5:                                                ; preds = %.preheader, %10
  %.01 = phi i32 [ %11, %10 ], [ 1, %.preheader ]
  %6 = icmp slt i32 %.01, %0
  br i1 %6, label %7, label %.loopexit

7:                                                ; preds = %5
  %8 = load ptr, ptr %4, align 8
  %9 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(4) @.str.4) #10
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %.loopexit, label %10

10:                                               ; preds = %7
  %11 = add nuw nsw i32 %.01, 1
  br label %5, !llvm.loop !25

.loopexit:                                        ; preds = %7, %5, %2
  %.not1 = phi i1 [ true, %2 ], [ false, %7 ], [ true, %5 ]
  %12 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %13

13:                                               ; preds = %15, %.loopexit
  %.12 = phi i32 [ 0, %.loopexit ], [ %16, %15 ]
  %14 = icmp samesign ult i32 %.12, 30
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  %16 = add nuw nsw i32 %.12, 1
  br label %13, !llvm.loop !26

17:                                               ; preds = %13
  call void @free(ptr noundef %12) #10
  br i1 %.not1, label %21, label %18

18:                                               ; preds = %17
  %19 = call ptr @__acrt_iob_func(i32 noundef 1) #10
  %20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.5, double noundef 0.000000e+00) #10
  br label %24

21:                                               ; preds = %17
  %22 = call ptr @__acrt_iob_func(i32 noundef 1) #10
  %23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.6, double noundef 0.000000e+00) #10
  br label %24

24:                                               ; preds = %21, %18
  %25 = call ptr @__acrt_iob_func(i32 noundef 1) #10
  %26 = call i32 @fflush(ptr noundef %25) #10
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
