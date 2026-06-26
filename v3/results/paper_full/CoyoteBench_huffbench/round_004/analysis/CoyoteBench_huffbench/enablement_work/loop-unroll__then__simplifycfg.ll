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
  br i1 %13, label %14, label %.preheader12

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

.preheader12:                                     ; preds = %12, %36
  %.010 = phi i64 [ %.111.1, %36 ], [ 0, %12 ]
  %.13 = phi i64 [ %37, %36 ], [ 0, %12 ]
  %22 = icmp samesign ult i64 %.13, 256
  br i1 %22, label %23, label %.preheader11

.preheader11:                                     ; preds = %.preheader12
  %.010.lcssa = phi i64 [ %.010, %.preheader12 ]
  br label %38

23:                                               ; preds = %.preheader12
  %24 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.13
  %25 = load i64, ptr %24, align 8
  %.not8 = icmp eq i64 %25, 0
  br i1 %.not8, label %29, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.010
  store i64 %.13, ptr %27, align 8
  %28 = add i64 %.010, 1
  br label %29

29:                                               ; preds = %26, %23
  %.111 = phi i64 [ %28, %26 ], [ %.010, %23 ]
  %30 = add nuw nsw i64 %.13, 1
  %31 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %30
  %32 = load i64, ptr %31, align 8
  %.not8.1 = icmp eq i64 %32, 0
  br i1 %.not8.1, label %36, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.111
  store i64 %30, ptr %34, align 8
  %35 = add i64 %.111, 1
  br label %36

36:                                               ; preds = %33, %29
  %.111.1 = phi i64 [ %35, %33 ], [ %.111, %29 ]
  %37 = add nuw nsw i64 %.13, 2
  br label %.preheader12, !llvm.loop !10

38:                                               ; preds = %.preheader11, %39
  %.24 = phi i64 [ %42, %39 ], [ %.010.lcssa, %.preheader11 ]
  %.not = icmp eq i64 %.24, 0
  br i1 %.not, label %.preheader10, label %39

39:                                               ; preds = %38
  %40 = trunc i64 %.010.lcssa to i32
  %41 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %40, i32 noundef %41)
  %42 = add i64 %.24, -1
  br label %38, !llvm.loop !11

.preheader10:                                     ; preds = %38, %44
  %.212 = phi i64 [ %45, %44 ], [ %.010.lcssa, %38 ]
  %43 = icmp ugt i64 %.212, 1
  br i1 %43, label %44, label %63

44:                                               ; preds = %.preheader10
  %45 = add i64 %.212, -1
  %46 = load i64, ptr %4, align 16
  %47 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %45
  %48 = load i64, ptr %47, align 8
  store i64 %48, ptr %4, align 16
  %49 = trunc i64 %45 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %49, i32 noundef 1)
  %50 = load i64, ptr %4, align 16
  %51 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %50
  %52 = load i64, ptr %51, align 8
  %53 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %46
  %54 = load i64, ptr %53, align 8
  %55 = add i64 %52, %54
  %56 = add i64 %.212, 255
  %57 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %56
  store i64 %55, ptr %57, align 8
  %58 = trunc i64 %56 to i32
  %59 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %46
  store i32 %58, ptr %59, align 4
  %60 = trunc i64 %.212 to i32
  %61 = sub i32 -255, %60
  %62 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %50
  store i32 %61, ptr %62, align 4
  store i64 %56, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %49, i32 noundef 1)
  br label %.preheader10, !llvm.loop !12

63:                                               ; preds = %.preheader10
  %.212.lcssa = phi i64 [ %.212, %.preheader10 ]
  %64 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 1024
  store i32 0, ptr %65, align 4
  br label %66

66:                                               ; preds = %86, %63
  %.045 = phi i64 [ 0, %63 ], [ %.146, %86 ]
  %.042 = phi i64 [ 0, %63 ], [ %87, %86 ]
  %.039 = phi i64 [ 0, %63 ], [ %.140, %86 ]
  %67 = icmp samesign ult i64 %.042, 256
  br i1 %67, label %68, label %88

68:                                               ; preds = %66
  %69 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.042
  %70 = load i64, ptr %69, align 8
  %.not6 = icmp eq i64 %70, 0
  br i1 %.not6, label %71, label %74

71:                                               ; preds = %68
  %72 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 0, ptr %72, align 4
  %73 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 0, ptr %73, align 1
  br label %86

74:                                               ; preds = %68, %75
  %.043 = phi i64 [ %.144, %75 ], [ 0, %68 ]
  %.042.pn = phi i64 [ %78, %75 ], [ %.042, %68 ]
  %.05 = phi i64 [ %79, %75 ], [ 1, %68 ]
  %.3 = phi i64 [ %80, %75 ], [ 0, %68 ]
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.042.pn
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %81, label %75

75:                                               ; preds = %74
  %76 = icmp slt i32 %.037, 0
  %77 = select i1 %76, i64 %.05, i64 0
  %.144 = add i64 %.043, %77
  %.138 = call i32 @llvm.abs.i32(i32 %.037, i1 true)
  %78 = zext nneg i32 %.138 to i64
  %79 = shl i64 %.05, 1
  %80 = add i64 %.3, 1
  br label %74, !llvm.loop !13

81:                                               ; preds = %74
  %.043.lcssa = phi i64 [ %.043, %74 ]
  %.3.lcssa = phi i64 [ %.3, %74 ]
  %82 = trunc i64 %.043.lcssa to i32
  %83 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 %82, ptr %83, align 4
  %84 = trunc i64 %.3.lcssa to i8
  %85 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 %84, ptr %85, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.045)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.039)
  br label %86

86:                                               ; preds = %81, %71
  %.146 = phi i64 [ %spec.select, %81 ], [ %.045, %71 ]
  %.140 = phi i64 [ %.241, %81 ], [ %.039, %71 ]
  %87 = add nuw nsw i64 %.042, 1
  br label %66, !llvm.loop !14

88:                                               ; preds = %66
  %.045.lcssa = phi i64 [ %.045, %66 ]
  %.039.lcssa = phi i64 [ %.039, %66 ]
  %89 = icmp ugt i64 %.039.lcssa, 32
  br i1 %89, label %90, label %93

90:                                               ; preds = %88
  %91 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %92 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %91)
  call void @exit(i32 noundef 1) #11
  unreachable

93:                                               ; preds = %88
  %94 = icmp eq i64 %.045.lcssa, 0
  br i1 %94, label %95, label %.preheader3

95:                                               ; preds = %93
  %96 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %97 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %96)
  call void @exit(i32 noundef 1) #11
  unreachable

.preheader3:                                      ; preds = %93, %133
  %.134 = phi ptr [ %134, %133 ], [ %0, %93 ]
  %.028 = phi i64 [ %.129.lcssa, %133 ], [ 0, %93 ]
  %.024 = phi i8 [ %.125.lcssa, %133 ], [ 0, %93 ]
  %.16 = phi i64 [ %135, %133 ], [ 0, %93 ]
  %.01 = phi i32 [ %.1.lcssa, %133 ], [ -1, %93 ]
  %98 = icmp ult i64 %.16, %1
  br i1 %98, label %99, label %136

99:                                               ; preds = %.preheader3
  %100 = load i8, ptr %.134, align 1
  %101 = zext i8 %100 to i64
  %102 = getelementptr inbounds nuw i8, ptr %7, i64 %101
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i32
  %105 = add nsw i32 %104, -1
  %106 = shl nuw i32 1, %105
  %107 = sext i32 %106 to i64
  br label %108

108:                                              ; preds = %125, %99
  %109 = phi i8 [ %100, %99 ], [ %.pre-phi.in, %125 ]
  %110 = phi i8 [ %103, %99 ], [ %.pre, %125 ]
  %.129 = phi i64 [ %.028, %99 ], [ %.230, %125 ]
  %.125 = phi i8 [ %.024, %99 ], [ %.327, %125 ]
  %.015 = phi i64 [ %107, %99 ], [ %131, %125 ]
  %.4 = phi i64 [ 0, %99 ], [ %132, %125 ]
  %.1 = phi i32 [ %.01, %99 ], [ %.2, %125 ]
  %111 = zext i8 %110 to i64
  %112 = icmp ult i64 %.4, %111
  br i1 %112, label %113, label %133

113:                                              ; preds = %108
  %114 = icmp eq i32 %.1, 7
  br i1 %114, label %115, label %122

115:                                              ; preds = %113
  %116 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %116, align 1
  %117 = add i64 %.129, 1
  %118 = icmp eq i64 %117, %1
  br i1 %118, label %119, label %._crit_edge

._crit_edge:                                      ; preds = %115
  %.pre1 = load i8, ptr %.134, align 1
  br label %125

119:                                              ; preds = %115
  %120 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %121 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %120)
  call void @exit(i32 noundef 1) #11
  unreachable

122:                                              ; preds = %113
  %123 = add nsw i32 %.1, 1
  %124 = shl i8 %.125, 1
  br label %125

125:                                              ; preds = %122, %._crit_edge
  %.pre-phi.in = phi i8 [ %.pre1, %._crit_edge ], [ %109, %122 ]
  %.230 = phi i64 [ %117, %._crit_edge ], [ %.129, %122 ]
  %.226 = phi i8 [ 0, %._crit_edge ], [ %124, %122 ]
  %.2 = phi i32 [ 0, %._crit_edge ], [ %123, %122 ]
  %.pre-phi = zext i8 %.pre-phi.in to i64
  %126 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.pre-phi
  %127 = load i32, ptr %126, align 4
  %128 = zext i32 %127 to i64
  %129 = and i64 %.015, %128
  %.not5 = icmp ne i64 %129, 0
  %130 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %130
  %131 = lshr i64 %.015, 1
  %132 = add i64 %.4, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %108, !llvm.loop !15

133:                                              ; preds = %108
  %.129.lcssa = phi i64 [ %.129, %108 ]
  %.125.lcssa = phi i8 [ %.125, %108 ]
  %.1.lcssa = phi i32 [ %.1, %108 ]
  %134 = getelementptr inbounds nuw i8, ptr %.134, i64 1
  %135 = add i64 %.16, 1
  br label %.preheader3, !llvm.loop !16

136:                                              ; preds = %.preheader3
  %.028.lcssa = phi i64 [ %.028, %.preheader3 ]
  %.024.lcssa = phi i8 [ %.024, %.preheader3 ]
  %.01.lcssa = phi i32 [ %.01, %.preheader3 ]
  %137 = sub nsw i32 7, %.01.lcssa
  %138 = zext i8 %.024.lcssa to i32
  %139 = shl i32 %138, %137
  %140 = trunc i32 %139 to i8
  %141 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %140, ptr %141, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %142

142:                                              ; preds = %170, %136
  %.27 = phi i64 [ 0, %136 ], [ %171, %170 ]
  %.0 = phi ptr [ %9, %136 ], [ %146, %170 ]
  %143 = icmp samesign ult i64 %.27, 256
  br i1 %143, label %144, label %.preheader2

144:                                              ; preds = %142
  %145 = trunc nuw i64 %.27 to i8
  store i8 %145, ptr %.0, align 1
  %146 = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %147 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.27
  %148 = load i32, ptr %147, align 4
  %149 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %150 = load i8, ptr %149, align 1
  %151 = zext i8 %150 to i32
  %152 = or i32 %148, %151
  %.not3 = icmp eq i32 %152, 0
  br i1 %.not3, label %170, label %153

153:                                              ; preds = %144
  %154 = add nsw i32 %151, -1
  %155 = shl nuw i32 1, %154
  %156 = sext i32 %155 to i64
  br label %157

157:                                              ; preds = %160, %153
  %.019 = phi i32 [ 0, %153 ], [ %spec.select1, %160 ]
  %.116 = phi i64 [ %156, %153 ], [ %166, %160 ]
  %.5 = phi i64 [ 0, %153 ], [ %167, %160 ]
  %158 = zext i8 %150 to i64
  %159 = icmp ult i64 %.5, %158
  br i1 %159, label %160, label %168

160:                                              ; preds = %157
  %161 = shl i32 %.019, 1
  %162 = or disjoint i32 %161, 1
  %163 = zext i32 %148 to i64
  %164 = and i64 %.116, %163
  %.not4 = icmp eq i64 %164, 0
  %165 = add i32 %161, 2
  %spec.select1 = select i1 %.not4, i32 %162, i32 %165
  %166 = lshr i64 %.116, 1
  %167 = add i64 %.5, 1
  br label %157, !llvm.loop !17

168:                                              ; preds = %157
  %.019.lcssa = phi i32 [ %.019, %157 ]
  %169 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.27
  store i32 %.019.lcssa, ptr %169, align 4
  br label %170

170:                                              ; preds = %168, %144
  %171 = add nuw nsw i64 %.27, 1
  br label %142, !llvm.loop !18

.preheader2:                                      ; preds = %142, %.critedge
  %.6 = phi i64 [ %191, %.critedge ], [ 1, %142 ]
  %172 = icmp samesign ult i64 %.6, 256
  br i1 %172, label %173, label %.preheader1

173:                                              ; preds = %.preheader2
  %174 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.6
  %175 = load i32, ptr %174, align 4
  %176 = getelementptr inbounds nuw i8, ptr %9, i64 %.6
  %177 = load i8, ptr %176, align 1
  br label %178

178:                                              ; preds = %184, %173
  %.38 = phi i64 [ %.6, %173 ], [ %180, %184 ]
  %.not2 = icmp eq i64 %.38, 0
  br i1 %.not2, label %.critedge, label %179

179:                                              ; preds = %178
  %180 = add i64 %.38, -1
  %181 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %180
  %182 = load i32, ptr %181, align 4
  %183 = icmp ugt i32 %182, %175
  br i1 %183, label %184, label %.critedge

184:                                              ; preds = %179
  %185 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %182, ptr %185, align 4
  %186 = getelementptr inbounds nuw i8, ptr %9, i64 %180
  %187 = load i8, ptr %186, align 1
  %188 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %187, ptr %188, align 1
  br label %178, !llvm.loop !19

.critedge:                                        ; preds = %179, %178
  %.38.lcssa = phi i64 [ %.38, %179 ], [ %.38, %178 ]
  %189 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %175, ptr %189, align 4
  %190 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %177, ptr %190, align 1
  %191 = add nuw nsw i64 %.6, 1
  br label %.preheader2, !llvm.loop !20

.preheader1:                                      ; preds = %.preheader2, %195
  %.49 = phi i64 [ %196, %195 ], [ 0, %.preheader2 ]
  %192 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %193 = load i32, ptr %192, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %.preheader

.preheader:                                       ; preds = %.preheader1
  %.49.lcssa = phi i64 [ %.49, %.preheader1 ]
  br label %197

195:                                              ; preds = %.preheader1
  %196 = add i64 %.49, 1
  br label %.preheader1, !llvm.loop !21

197:                                              ; preds = %.preheader, %219
  %.235 = phi ptr [ %.336, %219 ], [ %0, %.preheader ]
  %.031 = phi ptr [ %.132, %219 ], [ %11, %.preheader ]
  %.221 = phi i32 [ %.423, %219 ], [ 0, %.preheader ]
  %.217 = phi i64 [ %.318, %219 ], [ 128, %.preheader ]
  %.313 = phi i64 [ %.414, %219 ], [ 0, %.preheader ]
  %.7 = phi i64 [ %.9, %219 ], [ %.49.lcssa, %.preheader ]
  %198 = icmp ult i64 %.313, %1
  br i1 %198, label %199, label %222

199:                                              ; preds = %197
  %200 = shl i32 %.221, 1
  %201 = or disjoint i32 %200, 1
  %202 = load i8, ptr %.031, align 1
  %203 = zext i8 %202 to i64
  %204 = and i64 %.217, %203
  %.not1 = icmp eq i64 %204, 0
  %205 = add i32 %200, 2
  %spec.select2 = select i1 %.not1, i32 %201, i32 %205
  br label %206

206:                                              ; preds = %210, %199
  %.8 = phi i64 [ %.7, %199 ], [ %211, %210 ]
  %207 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %208 = load i32, ptr %207, align 4
  %209 = icmp ult i32 %208, %spec.select2
  br i1 %209, label %210, label %212

210:                                              ; preds = %206
  %211 = add i64 %.8, 1
  br label %206, !llvm.loop !22

212:                                              ; preds = %206
  %.8.lcssa = phi i64 [ %.8, %206 ]
  %.lcssa = phi i32 [ %208, %206 ]
  %213 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %213, label %214, label %219

214:                                              ; preds = %212
  %215 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %216 = load i8, ptr %215, align 1
  store i8 %216, ptr %.235, align 1
  %217 = getelementptr inbounds nuw i8, ptr %.235, i64 1
  %218 = add i64 %.313, 1
  br label %219

219:                                              ; preds = %214, %212
  %.336 = phi ptr [ %217, %214 ], [ %.235, %212 ]
  %.423 = phi i32 [ 0, %214 ], [ %spec.select2, %212 ]
  %.414 = phi i64 [ %218, %214 ], [ %.313, %212 ]
  %.9 = phi i64 [ %.49.lcssa, %214 ], [ %.8.lcssa, %212 ]
  %220 = icmp ult i64 %.217, 2
  %221 = lshr i64 %.217, 1
  %.132.idx = zext i1 %220 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.031, i64 %.132.idx
  %.318 = select i1 %220, i64 128, i64 %221
  br label %197, !llvm.loop !23

222:                                              ; preds = %197
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
  br i1 %.not, label %._crit_edge, label %11

._crit_edge:                                      ; preds = %9
  %.01.lcssa = phi i32 [ %.01, %9 ]
  %.pre = shl i64 %8, 32
  br label %split

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
  br i1 %36, label %split, label %37

37:                                               ; preds = %26
  %38 = sext i32 %.01 to i64
  %39 = getelementptr [8 x i8], ptr %1, i64 %38
  %40 = getelementptr i8, ptr %39, i64 -8
  store i64 %33, ptr %40, align 8
  br label %9, !llvm.loop !24

split:                                            ; preds = %26, %._crit_edge
  %.012 = phi i32 [ %.01.lcssa, %._crit_edge ], [ %.01, %26 ]
  %sext1.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %sext, %26 ]
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
