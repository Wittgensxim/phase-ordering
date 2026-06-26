; ModuleID = 'results\paper_full\CoyoteBench_huffbench\round_001\output.ll'
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
  %2 = call ptr @malloc(i64 noundef %0) #6
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
  %8 = getelementptr inbounds nuw i8, ptr %.01, i32 1
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
  %11 = call ptr @malloc(i64 noundef %10) #6
  call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %10, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %5, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %6, i8 0, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %7, i8 0, i64 256, i1 false)
  br label %12

12:                                               ; preds = %13, %2
  %.033 = phi ptr [ %0, %2 ], [ %19, %13 ]
  %.02 = phi i64 [ 0, %2 ], [ %20, %13 ]
  %exitcond = icmp ne i64 %.02, %1
  br i1 %exitcond, label %13, label %.preheader8

.preheader8:                                      ; preds = %12
  br label %21

13:                                               ; preds = %12
  %14 = load i8, ptr %.033, align 1
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %15
  %17 = load i64, ptr %16, align 8
  %18 = add i64 %17, 1
  store i64 %18, ptr %16, align 8
  %19 = getelementptr inbounds nuw i8, ptr %.033, i32 1
  %20 = add i64 %.02, 1
  br label %12, !llvm.loop !9

21:                                               ; preds = %.preheader8, %29
  %.010 = phi i64 [ %.111, %29 ], [ 0, %.preheader8 ]
  %.13 = phi i64 [ %30, %29 ], [ 0, %.preheader8 ]
  %exitcond15 = icmp ne i64 %.13, 256
  br i1 %exitcond15, label %22, label %.preheader7

.preheader7:                                      ; preds = %21
  %.010.lcssa = phi i64 [ %.010, %21 ]
  br label %31

22:                                               ; preds = %21
  %23 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.13
  %24 = load i64, ptr %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.010
  store i64 %.13, ptr %27, align 8
  %28 = add i64 %.010, 1
  br label %29

29:                                               ; preds = %26, %22
  %.111 = phi i64 [ %28, %26 ], [ %.010, %22 ]
  %30 = add nuw nsw i64 %.13, 1
  br label %21, !llvm.loop !10

31:                                               ; preds = %.preheader7, %33
  %.24 = phi i64 [ %36, %33 ], [ %.010.lcssa, %.preheader7 ]
  %32 = icmp ugt i64 %.24, 0
  br i1 %32, label %33, label %.preheader6

.preheader6:                                      ; preds = %31
  br label %37

33:                                               ; preds = %31
  %34 = trunc i64 %.010.lcssa to i32
  %35 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %34, i32 noundef %35)
  %36 = add i64 %.24, -1
  br label %31, !llvm.loop !11

37:                                               ; preds = %.preheader6, %39
  %.212 = phi i64 [ %40, %39 ], [ %.010.lcssa, %.preheader6 ]
  %38 = icmp ugt i64 %.212, 1
  br i1 %38, label %39, label %58

39:                                               ; preds = %37
  %40 = add i64 %.212, -1
  %41 = load i64, ptr %4, align 16
  %42 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %40
  %43 = load i64, ptr %42, align 8
  store i64 %43, ptr %4, align 16
  %44 = trunc i64 %40 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %44, i32 noundef 1)
  %45 = load i64, ptr %4, align 16
  %46 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %45
  %47 = load i64, ptr %46, align 8
  %48 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %41
  %49 = load i64, ptr %48, align 8
  %50 = add i64 %47, %49
  %51 = add i64 256, %40
  %52 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %51
  store i64 %50, ptr %52, align 8
  %53 = trunc i64 %51 to i32
  %54 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %41
  store i32 %53, ptr %54, align 4
  %55 = sub i64 -256, %40
  %56 = trunc i64 %55 to i32
  %57 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %45
  store i32 %56, ptr %57, align 4
  store i64 %51, ptr %4, align 16
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %44, i32 noundef 1)
  br label %37, !llvm.loop !12

58:                                               ; preds = %37
  %.212.lcssa = phi i64 [ %.212, %37 ]
  %59 = add i64 256, %.212.lcssa
  %60 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %59
  store i32 0, ptr %60, align 4
  br label %61

61:                                               ; preds = %90, %58
  %.045 = phi i64 [ 0, %58 ], [ %.146, %90 ]
  %.042 = phi i64 [ 0, %58 ], [ %91, %90 ]
  %.039 = phi i64 [ 0, %58 ], [ %.140, %90 ]
  %exitcond16 = icmp ne i64 %.042, 256
  br i1 %exitcond16, label %62, label %92

62:                                               ; preds = %61
  %63 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.042
  %64 = load i64, ptr %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 0, ptr %67, align 4
  %68 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 0, ptr %68, align 1
  br label %90

69:                                               ; preds = %62
  %70 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.042
  %71 = load i32, ptr %70, align 4
  br label %72

72:                                               ; preds = %74, %69
  %.043 = phi i64 [ 0, %69 ], [ %.144, %74 ]
  %.037 = phi i32 [ %71, %69 ], [ %80, %74 ]
  %.05 = phi i64 [ 1, %69 ], [ %81, %74 ]
  %.3 = phi i64 [ 0, %69 ], [ %82, %74 ]
  %73 = icmp ne i32 %.037, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %72
  %75 = icmp slt i32 %.037, 0
  %76 = add i64 %.043, %.05
  %77 = sub nsw i32 0, %.037
  %.144 = select i1 %75, i64 %76, i64 %.043
  %.138 = select i1 %75, i32 %77, i32 %.037
  %78 = sext i32 %.138 to i64
  %79 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %78
  %80 = load i32, ptr %79, align 4
  %81 = shl i64 %.05, 1
  %82 = add i64 %.3, 1
  br label %72, !llvm.loop !13

83:                                               ; preds = %72
  %.043.lcssa = phi i64 [ %.043, %72 ]
  %.3.lcssa = phi i64 [ %.3, %72 ]
  %84 = trunc i64 %.043.lcssa to i32
  %85 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 %84, ptr %85, align 4
  %86 = trunc i64 %.3.lcssa to i8
  %87 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 %86, ptr %87, align 1
  %88 = icmp ugt i64 %.043.lcssa, %.045
  %spec.select = select i1 %88, i64 %.043.lcssa, i64 %.045
  %89 = icmp ugt i64 %.3.lcssa, %.039
  %.241 = select i1 %89, i64 %.3.lcssa, i64 %.039
  br label %90

90:                                               ; preds = %83, %66
  %.146 = phi i64 [ %spec.select, %83 ], [ %.045, %66 ]
  %.140 = phi i64 [ %.241, %83 ], [ %.039, %66 ]
  %91 = add nuw nsw i64 %.042, 1
  br label %61, !llvm.loop !14

92:                                               ; preds = %61
  %.045.lcssa = phi i64 [ %.045, %61 ]
  %.039.lcssa = phi i64 [ %.039, %61 ]
  %93 = icmp ugt i64 %.039.lcssa, 32
  br i1 %93, label %94, label %97

94:                                               ; preds = %92
  %95 = call ptr @__acrt_iob_func(i32 noundef 2)
  %96 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

97:                                               ; preds = %92
  %98 = icmp eq i64 %.045.lcssa, 0
  br i1 %98, label %99, label %.preheader5

.preheader5:                                      ; preds = %97
  br label %102

99:                                               ; preds = %97
  %100 = call ptr @__acrt_iob_func(i32 noundef 2)
  %101 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %100, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

102:                                              ; preds = %.preheader5, %145
  %.134 = phi ptr [ %146, %145 ], [ %0, %.preheader5 ]
  %.028 = phi i64 [ %.129.lcssa, %145 ], [ 0, %.preheader5 ]
  %.024 = phi i8 [ %.125.lcssa, %145 ], [ 0, %.preheader5 ]
  %.16 = phi i64 [ %147, %145 ], [ 0, %.preheader5 ]
  %.01 = phi i32 [ %.1.lcssa, %145 ], [ -1, %.preheader5 ]
  %exitcond17 = icmp ne i64 %.16, %1
  br i1 %exitcond17, label %103, label %148

103:                                              ; preds = %102
  %104 = load i8, ptr %.134, align 1
  %105 = zext i8 %104 to i64
  %106 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %105
  %107 = load i8, ptr %106, align 1
  %108 = zext i8 %107 to i32
  %109 = sub nsw i32 %108, 1
  %110 = shl i32 1, %109
  %111 = sext i32 %110 to i64
  br label %112

112:                                              ; preds = %133, %103
  %113 = phi i8 [ %104, %103 ], [ %134, %133 ]
  %114 = phi i8 [ %107, %103 ], [ %.pre, %133 ]
  %.129 = phi i64 [ %.028, %103 ], [ %.230, %133 ]
  %.125 = phi i8 [ %.024, %103 ], [ %.327, %133 ]
  %.015 = phi i64 [ %111, %103 ], [ %143, %133 ]
  %.4 = phi i64 [ 0, %103 ], [ %144, %133 ]
  %.1 = phi i32 [ %.01, %103 ], [ %.2, %133 ]
  %115 = zext i8 %113 to i64
  %116 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %115
  %117 = zext i8 %114 to i64
  %118 = icmp samesign ult i64 %.4, %117
  br i1 %118, label %119, label %145

119:                                              ; preds = %112
  %120 = icmp eq i32 %.1, 7
  br i1 %120, label %121, label %128

121:                                              ; preds = %119
  %122 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %122, align 1
  %123 = add i64 %.129, 1
  %124 = icmp eq i64 %123, %1
  br i1 %124, label %125, label %._crit_edge

._crit_edge:                                      ; preds = %121
  %.pre1 = load i8, ptr %.134, align 1
  %.pre2 = zext i8 %.pre1 to i64
  br label %133

125:                                              ; preds = %121
  %126 = call ptr @__acrt_iob_func(i32 noundef 2)
  %127 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %126, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

128:                                              ; preds = %119
  %129 = add nsw i32 %.1, 1
  %130 = sext i8 %.125 to i32
  %131 = shl i32 %130, 1
  %132 = trunc i32 %131 to i8
  br label %133

133:                                              ; preds = %._crit_edge, %128
  %.pre-phi = phi i64 [ %.pre2, %._crit_edge ], [ %115, %128 ]
  %134 = phi i8 [ %113, %128 ], [ %.pre1, %._crit_edge ]
  %.230 = phi i64 [ %.129, %128 ], [ %123, %._crit_edge ]
  %.226 = phi i8 [ %132, %128 ], [ 0, %._crit_edge ]
  %.2 = phi i32 [ %129, %128 ], [ 0, %._crit_edge ]
  %135 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.pre-phi
  %136 = load i32, ptr %135, align 4
  %137 = zext i32 %136 to i64
  %138 = and i64 %137, %.015
  %139 = icmp ne i64 %138, 0
  %140 = sext i8 %.226 to i32
  %141 = or i32 %140, 1
  %142 = trunc i32 %141 to i8
  %.327 = select i1 %139, i8 %142, i8 %.226
  %143 = lshr i64 %.015, 1
  %144 = add nuw nsw i64 %.4, 1
  %.phi.trans.insert = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %112, !llvm.loop !15

145:                                              ; preds = %112
  %.129.lcssa = phi i64 [ %.129, %112 ]
  %.125.lcssa = phi i8 [ %.125, %112 ]
  %.1.lcssa = phi i32 [ %.1, %112 ]
  %146 = getelementptr inbounds nuw i8, ptr %.134, i32 1
  %147 = add i64 %.16, 1
  br label %102, !llvm.loop !16

148:                                              ; preds = %102
  %.028.lcssa = phi i64 [ %.028, %102 ]
  %.024.lcssa = phi i8 [ %.024, %102 ]
  %.01.lcssa = phi i32 [ %.01, %102 ]
  %149 = sub nsw i32 7, %.01.lcssa
  %150 = sext i8 %.024.lcssa to i32
  %151 = shl i32 %150, %149
  %152 = trunc i32 %151 to i8
  %153 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %152, ptr %153, align 1
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 1024, i1 false)
  br label %154

154:                                              ; preds = %182, %148
  %.27 = phi i64 [ 0, %148 ], [ %183, %182 ]
  %.0 = phi ptr [ %9, %148 ], [ %157, %182 ]
  %exitcond19 = icmp ne i64 %.27, 256
  br i1 %exitcond19, label %155, label %.preheader4

.preheader4:                                      ; preds = %154
  br label %184

155:                                              ; preds = %154
  %156 = trunc i64 %.27 to i8
  store i8 %156, ptr %.0, align 1
  %157 = getelementptr inbounds nuw i8, ptr %.0, i32 1
  %158 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %159 = load i32, ptr %158, align 4
  %160 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %161 = load i8, ptr %160, align 1
  %162 = zext i8 %161 to i32
  %163 = or i32 %159, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %182

165:                                              ; preds = %155
  %166 = sub nsw i32 %162, 1
  %167 = shl i32 1, %166
  %168 = sext i32 %167 to i64
  %169 = zext i8 %161 to i64
  br label %170

170:                                              ; preds = %171, %165
  %.019 = phi i32 [ 0, %165 ], [ %spec.select1, %171 ]
  %.116 = phi i64 [ %168, %165 ], [ %178, %171 ]
  %.5 = phi i64 [ 0, %165 ], [ %179, %171 ]
  %exitcond18 = icmp ne i64 %.5, %169
  br i1 %exitcond18, label %171, label %180

171:                                              ; preds = %170
  %172 = mul i32 %.019, 2
  %173 = add i32 %172, 1
  %174 = zext i32 %159 to i64
  %175 = and i64 %174, %.116
  %176 = icmp ne i64 %175, 0
  %177 = add i32 %173, 1
  %spec.select1 = select i1 %176, i32 %177, i32 %173
  %178 = lshr i64 %.116, 1
  %179 = add nuw nsw i64 %.5, 1
  br label %170, !llvm.loop !17

180:                                              ; preds = %170
  %.019.lcssa = phi i32 [ %.019, %170 ]
  %181 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.27
  store i32 %.019.lcssa, ptr %181, align 4
  br label %182

182:                                              ; preds = %180, %155
  %183 = add nuw nsw i64 %.27, 1
  br label %154, !llvm.loop !18

184:                                              ; preds = %.preheader4, %.critedge
  %.6 = phi i64 [ %205, %.critedge ], [ 1, %.preheader4 ]
  %exitcond20 = icmp ne i64 %.6, 256
  br i1 %exitcond20, label %185, label %.preheader3

.preheader3:                                      ; preds = %184
  br label %206

185:                                              ; preds = %184
  %186 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %187 = load i32, ptr %186, align 4
  %188 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %189 = load i8, ptr %188, align 1
  br label %190

190:                                              ; preds = %197, %185
  %.38 = phi i64 [ %.6, %185 ], [ %202, %197 ]
  %191 = icmp ne i64 %.38, 0
  br i1 %191, label %192, label %.critedge

192:                                              ; preds = %190
  %193 = sub nuw nsw i64 %.38, 1
  %194 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %193
  %195 = load i32, ptr %194, align 4
  %196 = icmp ugt i32 %195, %187
  br i1 %196, label %197, label %.critedge

197:                                              ; preds = %192
  %198 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %195, ptr %198, align 4
  %199 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %193
  %200 = load i8, ptr %199, align 1
  %201 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %200, ptr %201, align 1
  %202 = add nsw i64 %.38, -1
  br label %190, !llvm.loop !19

.critedge:                                        ; preds = %192, %190
  %.38.lcssa = phi i64 [ %.38, %192 ], [ 0, %190 ]
  %203 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %187, ptr %203, align 4
  %204 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %189, ptr %204, align 1
  %205 = add nuw nsw i64 %.6, 1
  br label %184, !llvm.loop !20

206:                                              ; preds = %.preheader3, %210
  %.49 = phi i64 [ %211, %210 ], [ 0, %.preheader3 ]
  %207 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %208 = load i32, ptr %207, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %.preheader

.preheader:                                       ; preds = %206
  %.49.lcssa = phi i64 [ %.49, %206 ]
  br label %212

210:                                              ; preds = %206
  %211 = add i64 %.49, 1
  br label %206, !llvm.loop !21

212:                                              ; preds = %.preheader, %235
  %.235 = phi ptr [ %.336, %235 ], [ %0, %.preheader ]
  %.031 = phi ptr [ %.132, %235 ], [ %11, %.preheader ]
  %.221 = phi i32 [ %.423, %235 ], [ 0, %.preheader ]
  %.217 = phi i64 [ %.318, %235 ], [ 128, %.preheader ]
  %.313 = phi i64 [ %.414, %235 ], [ 0, %.preheader ]
  %.7 = phi i64 [ %.9, %235 ], [ %.49.lcssa, %.preheader ]
  %213 = icmp ult i64 %.313, %1
  br i1 %213, label %214, label %239

214:                                              ; preds = %212
  %215 = mul i32 %.221, 2
  %216 = add i32 %215, 1
  %217 = load i8, ptr %.031, align 1
  %218 = zext i8 %217 to i64
  %219 = and i64 %218, %.217
  %220 = icmp ne i64 %219, 0
  %221 = add i32 %216, 1
  %spec.select2 = select i1 %220, i32 %221, i32 %216
  br label %222

222:                                              ; preds = %226, %214
  %.8 = phi i64 [ %.7, %214 ], [ %227, %226 ]
  %223 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %224 = load i32, ptr %223, align 4
  %225 = icmp ult i32 %224, %spec.select2
  br i1 %225, label %226, label %228

226:                                              ; preds = %222
  %227 = add i64 %.8, 1
  br label %222, !llvm.loop !22

228:                                              ; preds = %222
  %.8.lcssa = phi i64 [ %.8, %222 ]
  %.lcssa = phi i32 [ %224, %222 ]
  %229 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %229, label %230, label %235

230:                                              ; preds = %228
  %231 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %232 = load i8, ptr %231, align 1
  store i8 %232, ptr %.235, align 1
  %233 = getelementptr inbounds nuw i8, ptr %.235, i32 1
  %234 = add nuw i64 %.313, 1
  br label %235

235:                                              ; preds = %230, %228
  %.336 = phi ptr [ %233, %230 ], [ %.235, %228 ]
  %.423 = phi i32 [ 0, %230 ], [ %spec.select2, %228 ]
  %.414 = phi i64 [ %234, %230 ], [ %.313, %228 ]
  %.9 = phi i64 [ %.49.lcssa, %230 ], [ %.8.lcssa, %228 ]
  %236 = icmp ugt i64 %.217, 1
  %237 = lshr i64 %.217, 1
  %238 = getelementptr inbounds nuw i8, ptr %.031, i32 1
  %.132 = select i1 %236, ptr %.031, ptr %238
  %.318 = select i1 %236, i64 %237, i64 128
  br label %212, !llvm.loop !23

239:                                              ; preds = %212
  call void @free(ptr noundef %11)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal void @heap_adjust(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = sub nsw i32 %3, 1
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i64, ptr %1, i64 %6
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = sext i32 %9 to i64
  br label %11

11:                                               ; preds = %42, %4
  %.01 = phi i32 [ %3, %4 ], [ %.0, %42 ]
  %12 = sdiv i32 %2, 2
  %13 = icmp sle i32 %.01, %12
  br i1 %13, label %14, label %._crit_edge

._crit_edge:                                      ; preds = %11
  %.01.lcssa = phi i32 [ %.01, %11 ]
  %.pre = sext i32 %9 to i64
  br label %46

14:                                               ; preds = %11
  %15 = add nsw i32 %.01, %.01
  %16 = icmp slt i32 %15, %2
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = sub nsw i32 %15, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, ptr %1, i64 %19
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds nuw i64, ptr %0, i64 %21
  %23 = load i64, ptr %22, align 8
  %24 = sext i32 %15 to i64
  %25 = getelementptr inbounds i64, ptr %1, i64 %24
  %26 = load i64, ptr %25, align 8
  %27 = getelementptr inbounds nuw i64, ptr %0, i64 %26
  %28 = load i64, ptr %27, align 8
  %29 = icmp ugt i64 %23, %28
  %30 = add nsw i32 %15, 1
  %spec.select = select i1 %29, i32 %30, i32 %15
  br label %31

31:                                               ; preds = %17, %14
  %.0 = phi i32 [ %15, %14 ], [ %spec.select, %17 ]
  %32 = sext i32 %9 to i64
  %33 = getelementptr inbounds i64, ptr %0, i64 %32
  %34 = load i64, ptr %33, align 8
  %35 = sub nsw i32 %.0, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, ptr %1, i64 %36
  %38 = load i64, ptr %37, align 8
  %39 = getelementptr inbounds nuw i64, ptr %0, i64 %38
  %40 = load i64, ptr %39, align 8
  %41 = icmp ult i64 %34, %40
  br i1 %41, label %split, label %42

42:                                               ; preds = %31
  %43 = sub nsw i32 %.01, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, ptr %1, i64 %44
  store i64 %38, ptr %45, align 8
  br label %11, !llvm.loop !24

split:                                            ; preds = %31
  %.01.lcssa1 = phi i32 [ %.01, %31 ]
  br label %46

46:                                               ; preds = %split, %._crit_edge
  %.012 = phi i32 [ %.01.lcssa1, %split ], [ %.01.lcssa, %._crit_edge ]
  %.pre-phi = phi i64 [ %10, %split ], [ %.pre, %._crit_edge ]
  %47 = sub nsw i32 %.012, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, ptr %1, i64 %48
  store i64 %.pre-phi, ptr %49, align 8
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
  br i1 %3, label %.preheader, label %12

.preheader:                                       ; preds = %2
  %4 = getelementptr inbounds ptr, ptr %1, i64 1
  br label %5

5:                                                ; preds = %.preheader, %10
  %.01 = phi i32 [ %11, %10 ], [ 1, %.preheader ]
  %exitcond = icmp ne i32 %.01, %0
  br i1 %exitcond, label %6, label %.loopexit

6:                                                ; preds = %5
  %7 = load ptr, ptr %4, align 8
  %8 = call i32 @strcmp(ptr noundef %7, ptr noundef @.str.4) #7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %.loopexit

10:                                               ; preds = %6
  %11 = add nuw i32 %.01, 1
  br label %5, !llvm.loop !25

.loopexit:                                        ; preds = %5, %6
  %.0.ph = phi i8 [ 1, %6 ], [ 0, %5 ]
  br label %12

12:                                               ; preds = %.loopexit, %2
  %.0 = phi i8 [ 0, %2 ], [ %.0.ph, %.loopexit ]
  %13 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %14

14:                                               ; preds = %15, %12
  %.12 = phi i32 [ 0, %12 ], [ %16, %15 ]
  %exitcond1 = icmp ne i32 %.12, 30
  br i1 %exitcond1, label %15, label %17

15:                                               ; preds = %14
  call void @compdecomp(ptr noundef %13, i64 noundef 10000000)
  %16 = add nuw nsw i32 %.12, 1
  br label %14, !llvm.loop !26

17:                                               ; preds = %14
  call void @free(ptr noundef %13)
  %18 = icmp ne i8 %.0, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = call ptr @__acrt_iob_func(i32 noundef 1)
  %21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.5, double noundef 0.000000e+00) #7
  br label %25

22:                                               ; preds = %17
  %23 = call ptr @__acrt_iob_func(i32 noundef 1)
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.6, double noundef 0.000000e+00) #7
  br label %25

25:                                               ; preds = %22, %19
  %26 = call ptr @__acrt_iob_func(i32 noundef 1)
  %27 = call i32 @fflush(ptr noundef %26)
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
  %4 = mul nsw i32 %3, 127773
  %5 = sub nsw i32 %2, %4
  %6 = mul nsw i32 16807, %5
  %7 = mul nsw i32 2836, %3
  %8 = sub nsw i32 %6, %7
  store i32 %8, ptr @seed, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = add nsw i32 %8, 2147483647
  store i32 %11, ptr @seed, align 4
  br label %12

12:                                               ; preds = %10, %0
  %13 = phi i32 [ %11, %10 ], [ %8, %0 ]
  %14 = srem i32 %13, 32
  %15 = sext i32 %14 to i64
  %16 = xor i32 %13, 123459876
  store i32 %16, ptr @seed, align 4
  ret i64 %15
}

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(0) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

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
