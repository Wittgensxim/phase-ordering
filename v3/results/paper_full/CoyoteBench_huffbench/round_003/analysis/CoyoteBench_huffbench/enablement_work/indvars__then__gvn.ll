; ModuleID = 'results\paper_full\CoyoteBench_huffbench\round_002\output.ll'
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

21:                                               ; preds = %.preheader6, %28
  %.010 = phi i64 [ %.111, %28 ], [ 0, %.preheader6 ]
  %.13 = phi i64 [ %29, %28 ], [ 0, %.preheader6 ]
  %exitcond13 = icmp ne i64 %.13, 256
  br i1 %exitcond13, label %22, label %.preheader5

.preheader5:                                      ; preds = %21
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

30:                                               ; preds = %.preheader5, %31
  %.24 = phi i64 [ %34, %31 ], [ %.010, %.preheader5 ]
  %.not = icmp eq i64 %.24, 0
  br i1 %.not, label %.preheader4, label %31

.preheader4:                                      ; preds = %30
  br label %35

31:                                               ; preds = %30
  %32 = trunc i64 %.010 to i32
  %33 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %32, i32 noundef %33)
  %34 = add i64 %.24, -1
  br label %30, !llvm.loop !11

35:                                               ; preds = %.preheader4, %37
  %.212 = phi i64 [ %38, %37 ], [ %.010, %.preheader4 ]
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
  %57 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212
  %58 = getelementptr inbounds nuw i8, ptr %57, i64 1024
  store i32 0, ptr %58, align 4
  br label %59

59:                                               ; preds = %79, %56
  %.045 = phi i64 [ 0, %56 ], [ %.146, %79 ]
  %.042 = phi i64 [ 0, %56 ], [ %80, %79 ]
  %.039 = phi i64 [ 0, %56 ], [ %.140, %79 ]
  %exitcond14 = icmp ne i64 %.042, 256
  br i1 %exitcond14, label %60, label %81

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
  %75 = trunc i64 %.043 to i32
  %76 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 %75, ptr %76, align 4
  %77 = trunc i64 %.3 to i8
  %78 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 %77, ptr %78, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043, i64 %.045)
  %.241 = call i64 @llvm.umax.i64(i64 %.3, i64 %.039)
  br label %79

79:                                               ; preds = %74, %63
  %.146 = phi i64 [ %spec.select, %74 ], [ %.045, %63 ]
  %.140 = phi i64 [ %.241, %74 ], [ %.039, %63 ]
  %80 = add nuw nsw i64 %.042, 1
  br label %59, !llvm.loop !14

81:                                               ; preds = %59
  %82 = icmp ugt i64 %.039, 32
  br i1 %82, label %83, label %86

83:                                               ; preds = %81
  %84 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %85 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %84)
  call void @exit(i32 noundef 1) #11
  unreachable

86:                                               ; preds = %81
  %87 = icmp eq i64 %.045, 0
  br i1 %87, label %88, label %.preheader3

.preheader3:                                      ; preds = %86
  br label %91

88:                                               ; preds = %86
  %89 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %90 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %89)
  call void @exit(i32 noundef 1) #11
  unreachable

91:                                               ; preds = %.preheader3, %129
  %.134 = phi ptr [ %130, %129 ], [ %0, %.preheader3 ]
  %.028 = phi i64 [ %.129, %129 ], [ 0, %.preheader3 ]
  %.024 = phi i8 [ %.125, %129 ], [ 0, %.preheader3 ]
  %.16 = phi i64 [ %131, %129 ], [ 0, %.preheader3 ]
  %.01 = phi i32 [ %.1, %129 ], [ -1, %.preheader3 ]
  %exitcond15 = icmp ne i64 %.16, %1
  br i1 %exitcond15, label %92, label %132

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

101:                                              ; preds = %120, %92
  %102 = phi i8 [ %93, %92 ], [ %121, %120 ]
  %103 = phi i8 [ %96, %92 ], [ %.pre, %120 ]
  %.129 = phi i64 [ %.028, %92 ], [ %.230, %120 ]
  %.125 = phi i8 [ %.024, %92 ], [ %.327, %120 ]
  %.015 = phi i64 [ %100, %92 ], [ %127, %120 ]
  %.4 = phi i64 [ 0, %92 ], [ %128, %120 ]
  %.1 = phi i32 [ %.01, %92 ], [ %.2, %120 ]
  %104 = zext i8 %102 to i64
  %105 = getelementptr inbounds nuw i8, ptr %7, i64 %104
  %106 = zext i8 %103 to i64
  %107 = icmp samesign ult i64 %.4, %106
  br i1 %107, label %108, label %129

108:                                              ; preds = %101
  %109 = icmp eq i32 %.1, 7
  br i1 %109, label %110, label %117

110:                                              ; preds = %108
  %111 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %111, align 1
  %112 = add i64 %.129, 1
  %113 = icmp eq i64 %112, %1
  br i1 %113, label %114, label %._crit_edge

._crit_edge:                                      ; preds = %110
  %.pre18 = load i8, ptr %.134, align 1
  %.pre19 = zext i8 %.pre18 to i64
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

120:                                              ; preds = %._crit_edge, %117
  %.pre-phi = phi i64 [ %.pre19, %._crit_edge ], [ %104, %117 ]
  %121 = phi i8 [ %102, %117 ], [ %.pre18, %._crit_edge ]
  %.230 = phi i64 [ %.129, %117 ], [ %112, %._crit_edge ]
  %.226 = phi i8 [ %119, %117 ], [ 0, %._crit_edge ]
  %.2 = phi i32 [ %118, %117 ], [ 0, %._crit_edge ]
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
  br label %101, !llvm.loop !15

129:                                              ; preds = %101
  %130 = getelementptr inbounds nuw i8, ptr %.134, i64 1
  %131 = add i64 %.16, 1
  br label %91, !llvm.loop !16

132:                                              ; preds = %91
  %133 = sub nsw i32 7, %.01
  %134 = zext i8 %.024 to i32
  %135 = shl i32 %134, %133
  %136 = trunc i32 %135 to i8
  %137 = getelementptr inbounds nuw i8, ptr %11, i64 %.028
  store i8 %136, ptr %137, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %138

138:                                              ; preds = %165, %132
  %.27 = phi i64 [ 0, %132 ], [ %166, %165 ]
  %.0 = phi ptr [ %9, %132 ], [ %141, %165 ]
  %exitcond16 = icmp ne i64 %.27, 256
  br i1 %exitcond16, label %139, label %.preheader2

.preheader2:                                      ; preds = %138
  br label %167

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
  br i1 %.not3, label %165, label %148

148:                                              ; preds = %139
  %149 = add nsw i32 %146, -1
  %150 = shl nuw i32 1, %149
  %151 = sext i32 %150 to i64
  br label %152

152:                                              ; preds = %155, %148
  %.019 = phi i32 [ 0, %148 ], [ %spec.select1, %155 ]
  %.116 = phi i64 [ %151, %148 ], [ %161, %155 ]
  %.5 = phi i64 [ 0, %148 ], [ %162, %155 ]
  %153 = zext i8 %145 to i64
  %154 = icmp samesign ult i64 %.5, %153
  br i1 %154, label %155, label %163

155:                                              ; preds = %152
  %156 = shl i32 %.019, 1
  %157 = or disjoint i32 %156, 1
  %158 = zext i32 %143 to i64
  %159 = and i64 %.116, %158
  %.not4 = icmp eq i64 %159, 0
  %160 = add i32 %156, 2
  %spec.select1 = select i1 %.not4, i32 %157, i32 %160
  %161 = lshr i64 %.116, 1
  %162 = add nuw nsw i64 %.5, 1
  br label %152, !llvm.loop !17

163:                                              ; preds = %152
  %164 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.27
  store i32 %.019, ptr %164, align 4
  br label %165

165:                                              ; preds = %163, %139
  %166 = add nuw nsw i64 %.27, 1
  br label %138, !llvm.loop !18

167:                                              ; preds = %.preheader2, %.critedge
  %.6 = phi i64 [ %186, %.critedge ], [ 1, %.preheader2 ]
  %exitcond17 = icmp ne i64 %.6, 256
  br i1 %exitcond17, label %168, label %.preheader1

.preheader1:                                      ; preds = %167
  br label %187

168:                                              ; preds = %167
  %169 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.6
  %170 = load i32, ptr %169, align 4
  %171 = getelementptr inbounds nuw i8, ptr %9, i64 %.6
  %172 = load i8, ptr %171, align 1
  br label %173

173:                                              ; preds = %179, %168
  %.38 = phi i64 [ %.6, %168 ], [ %175, %179 ]
  %.not2 = icmp eq i64 %.38, 0
  br i1 %.not2, label %.critedge, label %174

174:                                              ; preds = %173
  %175 = add nsw i64 %.38, -1
  %176 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %175
  %177 = load i32, ptr %176, align 4
  %178 = icmp ugt i32 %177, %170
  br i1 %178, label %179, label %.critedge

179:                                              ; preds = %174
  %180 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %177, ptr %180, align 4
  %181 = getelementptr inbounds nuw i8, ptr %9, i64 %175
  %182 = load i8, ptr %181, align 1
  %183 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %182, ptr %183, align 1
  br label %173, !llvm.loop !19

.critedge:                                        ; preds = %174, %173
  %.38.lcssa = phi i64 [ %.38, %174 ], [ 0, %173 ]
  %184 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %170, ptr %184, align 4
  %185 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %172, ptr %185, align 1
  %186 = add nuw nsw i64 %.6, 1
  br label %167, !llvm.loop !20

187:                                              ; preds = %.preheader1, %191
  %.49 = phi i64 [ %192, %191 ], [ 0, %.preheader1 ]
  %188 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %189 = load i32, ptr %188, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %.preheader

.preheader:                                       ; preds = %187
  br label %193

191:                                              ; preds = %187
  %192 = add i64 %.49, 1
  br label %187, !llvm.loop !21

193:                                              ; preds = %.preheader, %215
  %.235 = phi ptr [ %.336, %215 ], [ %0, %.preheader ]
  %.031 = phi ptr [ %.132, %215 ], [ %11, %.preheader ]
  %.221 = phi i32 [ %.423, %215 ], [ 0, %.preheader ]
  %.217 = phi i64 [ %.318, %215 ], [ 128, %.preheader ]
  %.313 = phi i64 [ %.414, %215 ], [ 0, %.preheader ]
  %.7 = phi i64 [ %.9, %215 ], [ %.49, %.preheader ]
  %194 = icmp ult i64 %.313, %1
  br i1 %194, label %195, label %218

195:                                              ; preds = %193
  %196 = shl i32 %.221, 1
  %197 = or disjoint i32 %196, 1
  %198 = load i8, ptr %.031, align 1
  %199 = zext i8 %198 to i64
  %200 = and i64 %.217, %199
  %.not1 = icmp eq i64 %200, 0
  %201 = add i32 %196, 2
  %spec.select2 = select i1 %.not1, i32 %197, i32 %201
  br label %202

202:                                              ; preds = %206, %195
  %.8 = phi i64 [ %.7, %195 ], [ %207, %206 ]
  %203 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %204 = load i32, ptr %203, align 4
  %205 = icmp ult i32 %204, %spec.select2
  br i1 %205, label %206, label %208

206:                                              ; preds = %202
  %207 = add i64 %.8, 1
  br label %202, !llvm.loop !22

208:                                              ; preds = %202
  %209 = icmp eq i32 %spec.select2, %204
  br i1 %209, label %210, label %215

210:                                              ; preds = %208
  %211 = getelementptr inbounds nuw i8, ptr %9, i64 %.8
  %212 = load i8, ptr %211, align 1
  store i8 %212, ptr %.235, align 1
  %213 = getelementptr inbounds nuw i8, ptr %.235, i64 1
  %214 = add nuw i64 %.313, 1
  br label %215

215:                                              ; preds = %210, %208
  %.336 = phi ptr [ %213, %210 ], [ %.235, %208 ]
  %.423 = phi i32 [ 0, %210 ], [ %spec.select2, %208 ]
  %.414 = phi i64 [ %214, %210 ], [ %.313, %208 ]
  %.9 = phi i64 [ %.49, %210 ], [ %.8, %208 ]
  %216 = icmp ult i64 %.217, 2
  %217 = lshr i64 %.217, 1
  %.132.idx = zext i1 %216 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.031, i64 %.132.idx
  %.318 = select i1 %216, i64 128, i64 %217
  br label %193, !llvm.loop !23

218:                                              ; preds = %193
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
  %.pre = shl i64 %8, 32
  br label %41

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

split:                                            ; preds = %26
  br label %41

41:                                               ; preds = %split, %._crit_edge
  %sext1.pre-phi = phi i64 [ %sext, %split ], [ %.pre, %._crit_edge ]
  %42 = ashr exact i64 %sext1.pre-phi, 32
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
