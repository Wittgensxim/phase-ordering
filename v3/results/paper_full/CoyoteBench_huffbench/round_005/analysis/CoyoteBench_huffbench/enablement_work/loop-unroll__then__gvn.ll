; ModuleID = 'results\paper_full\CoyoteBench_huffbench\round_004\output.ll'
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

21:                                               ; preds = %35, %.preheader6
  %.010 = phi i64 [ 0, %.preheader6 ], [ %.111.1, %35 ]
  %.13 = phi i64 [ 0, %.preheader6 ], [ %36, %35 ]
  %exitcond13 = icmp ne i64 %.13, 256
  br i1 %exitcond13, label %22, label %.preheader5

.preheader5:                                      ; preds = %21
  br label %37

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
  %30 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %29
  %31 = load i64, ptr %30, align 8
  %.not8.1 = icmp eq i64 %31, 0
  br i1 %.not8.1, label %35, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.111
  store i64 %29, ptr %33, align 8
  %34 = add i64 %.111, 1
  br label %35

35:                                               ; preds = %32, %28
  %.111.1 = phi i64 [ %34, %32 ], [ %.111, %28 ]
  %36 = add nuw nsw i64 %.13, 2
  br label %21, !llvm.loop !10

37:                                               ; preds = %38, %.preheader5
  %.24 = phi i64 [ %41, %38 ], [ %.010, %.preheader5 ]
  %.not = icmp eq i64 %.24, 0
  br i1 %.not, label %.preheader4, label %38

.preheader4:                                      ; preds = %37
  br label %42

38:                                               ; preds = %37
  %39 = trunc i64 %.010 to i32
  %40 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %39, i32 noundef %40)
  %41 = add i64 %.24, -1
  br label %37, !llvm.loop !11

42:                                               ; preds = %44, %.preheader4
  %.212 = phi i64 [ %45, %44 ], [ %.010, %.preheader4 ]
  %43 = icmp ugt i64 %.212, 1
  br i1 %43, label %44, label %63

44:                                               ; preds = %42
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
  br label %42, !llvm.loop !12

63:                                               ; preds = %42
  %64 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 1024
  store i32 0, ptr %65, align 4
  br label %66

66:                                               ; preds = %86, %63
  %.045 = phi i64 [ 0, %63 ], [ %.146, %86 ]
  %.042 = phi i64 [ 0, %63 ], [ %87, %86 ]
  %.039 = phi i64 [ 0, %63 ], [ %.140, %86 ]
  %exitcond14 = icmp ne i64 %.042, 256
  br i1 %exitcond14, label %67, label %88

67:                                               ; preds = %66
  %68 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.042
  %69 = load i64, ptr %68, align 8
  %.not6 = icmp eq i64 %69, 0
  br i1 %.not6, label %70, label %73

70:                                               ; preds = %67
  %71 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 0, ptr %71, align 4
  %72 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 0, ptr %72, align 1
  br label %86

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %75, %73
  %.043 = phi i64 [ 0, %73 ], [ %.144, %75 ]
  %.042.pn = phi i64 [ %.042, %73 ], [ %78, %75 ]
  %.05 = phi i64 [ 1, %73 ], [ %79, %75 ]
  %.3 = phi i64 [ 0, %73 ], [ %80, %75 ]
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
  %82 = trunc i64 %.043 to i32
  %83 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 %82, ptr %83, align 4
  %84 = trunc i64 %.3 to i8
  %85 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 %84, ptr %85, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043, i64 %.045)
  %.241 = call i64 @llvm.umax.i64(i64 %.3, i64 %.039)
  br label %86

86:                                               ; preds = %81, %70
  %.146 = phi i64 [ %spec.select, %81 ], [ %.045, %70 ]
  %.140 = phi i64 [ %.241, %81 ], [ %.039, %70 ]
  %87 = add nuw nsw i64 %.042, 1
  br label %66, !llvm.loop !14

88:                                               ; preds = %66
  %89 = icmp ugt i64 %.039, 32
  br i1 %89, label %90, label %93

90:                                               ; preds = %88
  %91 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %92 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %91)
  call void @exit(i32 noundef 1) #11
  unreachable

93:                                               ; preds = %88
  %94 = icmp eq i64 %.045, 0
  br i1 %94, label %95, label %.preheader3

.preheader3:                                      ; preds = %93
  br label %98

95:                                               ; preds = %93
  %96 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %97 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %96)
  call void @exit(i32 noundef 1) #11
  unreachable

98:                                               ; preds = %133, %.preheader3
  %.134 = phi ptr [ %134, %133 ], [ %0, %.preheader3 ]
  %.028 = phi i64 [ %.129, %133 ], [ 0, %.preheader3 ]
  %.024 = phi i8 [ %.125, %133 ], [ 0, %.preheader3 ]
  %.16 = phi i64 [ %135, %133 ], [ 0, %.preheader3 ]
  %.01 = phi i32 [ %.1, %133 ], [ -1, %.preheader3 ]
  %exitcond15 = icmp ne i64 %.16, %1
  br i1 %exitcond15, label %99, label %136

99:                                               ; preds = %98
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
  %112 = icmp samesign ult i64 %.4, %111
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
  %132 = add nuw nsw i64 %.4, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %108, !llvm.loop !15

133:                                              ; preds = %108
  %134 = getelementptr inbounds nuw i8, ptr %.134, i64 1
  %135 = add i64 %.16, 1
  br label %98, !llvm.loop !16

136:                                              ; preds = %98
  %137 = sub nsw i32 7, %.01
  %138 = zext i8 %.024 to i32
  %139 = shl i32 %138, %137
  %140 = trunc i32 %139 to i8
  %141 = getelementptr inbounds nuw i8, ptr %11, i64 %.028
  store i8 %140, ptr %141, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %142

142:                                              ; preds = %168, %136
  %.27 = phi i64 [ 0, %136 ], [ %169, %168 ]
  %.0 = phi ptr [ %9, %136 ], [ %145, %168 ]
  %exitcond17 = icmp ne i64 %.27, 256
  br i1 %exitcond17, label %143, label %.preheader2

.preheader2:                                      ; preds = %142
  br label %170

143:                                              ; preds = %142
  %144 = trunc nuw i64 %.27 to i8
  store i8 %144, ptr %.0, align 1
  %145 = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %146 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.27
  %147 = load i32, ptr %146, align 4
  %148 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %149 = load i8, ptr %148, align 1
  %150 = zext i8 %149 to i32
  %151 = or i32 %147, %150
  %.not3 = icmp eq i32 %151, 0
  br i1 %.not3, label %168, label %152

152:                                              ; preds = %143
  %153 = add nsw i32 %150, -1
  %154 = shl nuw i32 1, %153
  %155 = sext i32 %154 to i64
  %156 = zext i8 %149 to i64
  br label %157

157:                                              ; preds = %158, %152
  %.019 = phi i32 [ 0, %152 ], [ %spec.select1, %158 ]
  %.116 = phi i64 [ %155, %152 ], [ %164, %158 ]
  %.5 = phi i64 [ 0, %152 ], [ %165, %158 ]
  %exitcond16 = icmp ne i64 %.5, %156
  br i1 %exitcond16, label %158, label %166

158:                                              ; preds = %157
  %159 = shl i32 %.019, 1
  %160 = or disjoint i32 %159, 1
  %161 = zext i32 %147 to i64
  %162 = and i64 %.116, %161
  %.not4 = icmp eq i64 %162, 0
  %163 = add i32 %159, 2
  %spec.select1 = select i1 %.not4, i32 %160, i32 %163
  %164 = lshr i64 %.116, 1
  %165 = add nuw nsw i64 %.5, 1
  br label %157, !llvm.loop !17

166:                                              ; preds = %157
  %167 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.27
  store i32 %.019, ptr %167, align 4
  br label %168

168:                                              ; preds = %166, %143
  %169 = add nuw nsw i64 %.27, 1
  br label %142, !llvm.loop !18

170:                                              ; preds = %.critedge, %.preheader2
  %.6 = phi i64 [ %189, %.critedge ], [ 1, %.preheader2 ]
  %exitcond18 = icmp ne i64 %.6, 256
  br i1 %exitcond18, label %171, label %.preheader1

.preheader1:                                      ; preds = %170
  br label %190

171:                                              ; preds = %170
  %172 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.6
  %173 = load i32, ptr %172, align 4
  %174 = getelementptr inbounds nuw i8, ptr %9, i64 %.6
  %175 = load i8, ptr %174, align 1
  br label %176

176:                                              ; preds = %182, %171
  %.38 = phi i64 [ %.6, %171 ], [ %178, %182 ]
  %.not2 = icmp eq i64 %.38, 0
  br i1 %.not2, label %.critedge, label %177

177:                                              ; preds = %176
  %178 = add nsw i64 %.38, -1
  %179 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %178
  %180 = load i32, ptr %179, align 4
  %181 = icmp ugt i32 %180, %173
  br i1 %181, label %182, label %.critedge

182:                                              ; preds = %177
  %183 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %180, ptr %183, align 4
  %184 = getelementptr inbounds nuw i8, ptr %9, i64 %178
  %185 = load i8, ptr %184, align 1
  %186 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %185, ptr %186, align 1
  br label %176, !llvm.loop !19

.critedge:                                        ; preds = %177, %176
  %.38.lcssa = phi i64 [ %.38, %177 ], [ 0, %176 ]
  %187 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %173, ptr %187, align 4
  %188 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %175, ptr %188, align 1
  %189 = add nuw nsw i64 %.6, 1
  br label %170, !llvm.loop !20

190:                                              ; preds = %194, %.preheader1
  %.49 = phi i64 [ %195, %194 ], [ 0, %.preheader1 ]
  %191 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %192 = load i32, ptr %191, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %.preheader

.preheader:                                       ; preds = %190
  br label %196

194:                                              ; preds = %190
  %195 = add i64 %.49, 1
  br label %190, !llvm.loop !21

196:                                              ; preds = %218, %.preheader
  %.235 = phi ptr [ %.336, %218 ], [ %0, %.preheader ]
  %.031 = phi ptr [ %.132, %218 ], [ %11, %.preheader ]
  %.221 = phi i32 [ %.423, %218 ], [ 0, %.preheader ]
  %.217 = phi i64 [ %.318, %218 ], [ 128, %.preheader ]
  %.313 = phi i64 [ %.414, %218 ], [ 0, %.preheader ]
  %.7 = phi i64 [ %.9, %218 ], [ %.49, %.preheader ]
  %197 = icmp ult i64 %.313, %1
  br i1 %197, label %198, label %221

198:                                              ; preds = %196
  %199 = shl i32 %.221, 1
  %200 = or disjoint i32 %199, 1
  %201 = load i8, ptr %.031, align 1
  %202 = zext i8 %201 to i64
  %203 = and i64 %.217, %202
  %.not1 = icmp eq i64 %203, 0
  %204 = add i32 %199, 2
  %spec.select2 = select i1 %.not1, i32 %200, i32 %204
  br label %205

205:                                              ; preds = %209, %198
  %.8 = phi i64 [ %.7, %198 ], [ %210, %209 ]
  %206 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %207 = load i32, ptr %206, align 4
  %208 = icmp ult i32 %207, %spec.select2
  br i1 %208, label %209, label %211

209:                                              ; preds = %205
  %210 = add i64 %.8, 1
  br label %205, !llvm.loop !22

211:                                              ; preds = %205
  %212 = icmp eq i32 %spec.select2, %207
  br i1 %212, label %213, label %218

213:                                              ; preds = %211
  %214 = getelementptr inbounds nuw i8, ptr %9, i64 %.8
  %215 = load i8, ptr %214, align 1
  store i8 %215, ptr %.235, align 1
  %216 = getelementptr inbounds nuw i8, ptr %.235, i64 1
  %217 = add nuw i64 %.313, 1
  br label %218

218:                                              ; preds = %213, %211
  %.336 = phi ptr [ %216, %213 ], [ %.235, %211 ]
  %.423 = phi i32 [ 0, %213 ], [ %spec.select2, %211 ]
  %.414 = phi i64 [ %217, %213 ], [ %.313, %211 ]
  %.9 = phi i64 [ %.49, %213 ], [ %.8, %211 ]
  %219 = icmp ult i64 %.217, 2
  %220 = lshr i64 %.217, 1
  %.132.idx = zext i1 %219 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.031, i64 %.132.idx
  %.318 = select i1 %219, i64 128, i64 %220
  br label %196, !llvm.loop !23

221:                                              ; preds = %196
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
  br label %42

42:                                               ; preds = %split, %._crit_edge
  %43 = ashr exact i64 %9, 32
  %44 = sext i32 %.01 to i64
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

.loopexit:                                        ; preds = %6, %5
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
