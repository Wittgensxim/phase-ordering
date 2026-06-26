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
  br i1 %exitcond, label %13, label %.preheader6

.preheader6:                                      ; preds = %12
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

21:                                               ; preds = %.preheader6, %29
  %.010 = phi i64 [ %.111, %29 ], [ 0, %.preheader6 ]
  %.13 = phi i64 [ %30, %29 ], [ 0, %.preheader6 ]
  %exitcond13 = icmp ne i64 %.13, 256
  br i1 %exitcond13, label %22, label %.preheader5

.preheader5:                                      ; preds = %21
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

31:                                               ; preds = %.preheader5, %33
  %.24 = phi i64 [ %36, %33 ], [ %.010, %.preheader5 ]
  %32 = icmp ugt i64 %.24, 0
  br i1 %32, label %33, label %.preheader4

.preheader4:                                      ; preds = %31
  br label %37

33:                                               ; preds = %31
  %34 = trunc i64 %.010 to i32
  %35 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %34, i32 noundef %35)
  %36 = add i64 %.24, -1
  br label %31, !llvm.loop !11

37:                                               ; preds = %.preheader4, %39
  %.212 = phi i64 [ %40, %39 ], [ %.010, %.preheader4 ]
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
  %59 = add i64 256, %.212
  %60 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %59
  store i32 0, ptr %60, align 4
  br label %61

61:                                               ; preds = %90, %58
  %.045 = phi i64 [ 0, %58 ], [ %.146, %90 ]
  %.042 = phi i64 [ 0, %58 ], [ %91, %90 ]
  %.039 = phi i64 [ 0, %58 ], [ %.140, %90 ]
  %exitcond14 = icmp ne i64 %.042, 256
  br i1 %exitcond14, label %62, label %92

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
  %84 = trunc i64 %.043 to i32
  %85 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 %84, ptr %85, align 4
  %86 = trunc i64 %.3 to i8
  %87 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 %86, ptr %87, align 1
  %88 = icmp ugt i64 %.043, %.045
  %spec.select = select i1 %88, i64 %.043, i64 %.045
  %89 = icmp ugt i64 %.3, %.039
  %.241 = select i1 %89, i64 %.3, i64 %.039
  br label %90

90:                                               ; preds = %83, %66
  %.146 = phi i64 [ %spec.select, %83 ], [ %.045, %66 ]
  %.140 = phi i64 [ %.241, %83 ], [ %.039, %66 ]
  %91 = add nuw nsw i64 %.042, 1
  br label %61, !llvm.loop !14

92:                                               ; preds = %61
  %93 = icmp ugt i64 %.039, 32
  br i1 %93, label %94, label %97

94:                                               ; preds = %92
  %95 = call ptr @__acrt_iob_func(i32 noundef 2)
  %96 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

97:                                               ; preds = %92
  %98 = icmp eq i64 %.045, 0
  br i1 %98, label %99, label %.preheader3

.preheader3:                                      ; preds = %97
  br label %102

99:                                               ; preds = %97
  %100 = call ptr @__acrt_iob_func(i32 noundef 2)
  %101 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %100, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

102:                                              ; preds = %.preheader3, %145
  %.134 = phi ptr [ %146, %145 ], [ %0, %.preheader3 ]
  %.028 = phi i64 [ %.129, %145 ], [ 0, %.preheader3 ]
  %.024 = phi i8 [ %.125, %145 ], [ 0, %.preheader3 ]
  %.16 = phi i64 [ %147, %145 ], [ 0, %.preheader3 ]
  %.01 = phi i32 [ %.1, %145 ], [ -1, %.preheader3 ]
  %exitcond15 = icmp ne i64 %.16, %1
  br i1 %exitcond15, label %103, label %148

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
  %.pre18 = load i8, ptr %.134, align 1
  %.pre19 = zext i8 %.pre18 to i64
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
  %.pre-phi = phi i64 [ %.pre19, %._crit_edge ], [ %115, %128 ]
  %134 = phi i8 [ %113, %128 ], [ %.pre18, %._crit_edge ]
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
  %146 = getelementptr inbounds nuw i8, ptr %.134, i32 1
  %147 = add i64 %.16, 1
  br label %102, !llvm.loop !16

148:                                              ; preds = %102
  %149 = sub nsw i32 7, %.01
  %150 = sext i8 %.024 to i32
  %151 = shl i32 %150, %149
  %152 = trunc i32 %151 to i8
  %153 = getelementptr inbounds nuw i8, ptr %11, i64 %.028
  store i8 %152, ptr %153, align 1
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 1024, i1 false)
  br label %154

154:                                              ; preds = %183, %148
  %.27 = phi i64 [ 0, %148 ], [ %184, %183 ]
  %.0 = phi ptr [ %9, %148 ], [ %157, %183 ]
  %exitcond16 = icmp ne i64 %.27, 256
  br i1 %exitcond16, label %155, label %.preheader2

.preheader2:                                      ; preds = %154
  br label %185

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
  br i1 %164, label %165, label %183

165:                                              ; preds = %155
  %166 = sub nsw i32 %162, 1
  %167 = shl i32 1, %166
  %168 = sext i32 %167 to i64
  br label %169

169:                                              ; preds = %172, %165
  %.019 = phi i32 [ 0, %165 ], [ %spec.select1, %172 ]
  %.116 = phi i64 [ %168, %165 ], [ %179, %172 ]
  %.5 = phi i64 [ 0, %165 ], [ %180, %172 ]
  %170 = zext i8 %161 to i64
  %171 = icmp samesign ult i64 %.5, %170
  br i1 %171, label %172, label %181

172:                                              ; preds = %169
  %173 = mul i32 %.019, 2
  %174 = add i32 %173, 1
  %175 = zext i32 %159 to i64
  %176 = and i64 %175, %.116
  %177 = icmp ne i64 %176, 0
  %178 = add i32 %174, 1
  %spec.select1 = select i1 %177, i32 %178, i32 %174
  %179 = lshr i64 %.116, 1
  %180 = add nuw nsw i64 %.5, 1
  br label %169, !llvm.loop !17

181:                                              ; preds = %169
  %182 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.27
  store i32 %.019, ptr %182, align 4
  br label %183

183:                                              ; preds = %181, %155
  %184 = add nuw nsw i64 %.27, 1
  br label %154, !llvm.loop !18

185:                                              ; preds = %.preheader2, %.critedge
  %.6 = phi i64 [ %206, %.critedge ], [ 1, %.preheader2 ]
  %exitcond17 = icmp ne i64 %.6, 256
  br i1 %exitcond17, label %186, label %.preheader1

.preheader1:                                      ; preds = %185
  br label %207

186:                                              ; preds = %185
  %187 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %188 = load i32, ptr %187, align 4
  %189 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %190 = load i8, ptr %189, align 1
  br label %191

191:                                              ; preds = %198, %186
  %.38 = phi i64 [ %.6, %186 ], [ %203, %198 ]
  %192 = icmp ne i64 %.38, 0
  br i1 %192, label %193, label %.critedge

193:                                              ; preds = %191
  %194 = sub nuw nsw i64 %.38, 1
  %195 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %194
  %196 = load i32, ptr %195, align 4
  %197 = icmp ugt i32 %196, %188
  br i1 %197, label %198, label %.critedge

198:                                              ; preds = %193
  %199 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %196, ptr %199, align 4
  %200 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %194
  %201 = load i8, ptr %200, align 1
  %202 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %201, ptr %202, align 1
  %203 = add nsw i64 %.38, -1
  br label %191, !llvm.loop !19

.critedge:                                        ; preds = %193, %191
  %.38.lcssa = phi i64 [ %.38, %193 ], [ 0, %191 ]
  %204 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %188, ptr %204, align 4
  %205 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %190, ptr %205, align 1
  %206 = add nuw nsw i64 %.6, 1
  br label %185, !llvm.loop !20

207:                                              ; preds = %.preheader1, %211
  %.49 = phi i64 [ %212, %211 ], [ 0, %.preheader1 ]
  %208 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %209 = load i32, ptr %208, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %.preheader

.preheader:                                       ; preds = %207
  br label %213

211:                                              ; preds = %207
  %212 = add i64 %.49, 1
  br label %207, !llvm.loop !21

213:                                              ; preds = %.preheader, %236
  %.235 = phi ptr [ %.336, %236 ], [ %0, %.preheader ]
  %.031 = phi ptr [ %.132, %236 ], [ %11, %.preheader ]
  %.221 = phi i32 [ %.423, %236 ], [ 0, %.preheader ]
  %.217 = phi i64 [ %.318, %236 ], [ 128, %.preheader ]
  %.313 = phi i64 [ %.414, %236 ], [ 0, %.preheader ]
  %.7 = phi i64 [ %.9, %236 ], [ %.49, %.preheader ]
  %214 = icmp ult i64 %.313, %1
  br i1 %214, label %215, label %240

215:                                              ; preds = %213
  %216 = mul i32 %.221, 2
  %217 = add i32 %216, 1
  %218 = load i8, ptr %.031, align 1
  %219 = zext i8 %218 to i64
  %220 = and i64 %219, %.217
  %221 = icmp ne i64 %220, 0
  %222 = add i32 %217, 1
  %spec.select2 = select i1 %221, i32 %222, i32 %217
  br label %223

223:                                              ; preds = %227, %215
  %.8 = phi i64 [ %.7, %215 ], [ %228, %227 ]
  %224 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %225 = load i32, ptr %224, align 4
  %226 = icmp ult i32 %225, %spec.select2
  br i1 %226, label %227, label %229

227:                                              ; preds = %223
  %228 = add i64 %.8, 1
  br label %223, !llvm.loop !22

229:                                              ; preds = %223
  %230 = icmp eq i32 %spec.select2, %225
  br i1 %230, label %231, label %236

231:                                              ; preds = %229
  %232 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8
  %233 = load i8, ptr %232, align 1
  store i8 %233, ptr %.235, align 1
  %234 = getelementptr inbounds nuw i8, ptr %.235, i32 1
  %235 = add nuw i64 %.313, 1
  br label %236

236:                                              ; preds = %231, %229
  %.336 = phi ptr [ %234, %231 ], [ %.235, %229 ]
  %.423 = phi i32 [ 0, %231 ], [ %spec.select2, %229 ]
  %.414 = phi i64 [ %235, %231 ], [ %.313, %229 ]
  %.9 = phi i64 [ %.49, %231 ], [ %.8, %229 ]
  %237 = icmp ugt i64 %.217, 1
  %238 = lshr i64 %.217, 1
  %239 = getelementptr inbounds nuw i8, ptr %.031, i32 1
  %.132 = select i1 %237, ptr %.031, ptr %239
  %.318 = select i1 %237, i64 %238, i64 128
  br label %213, !llvm.loop !23

240:                                              ; preds = %213
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
  br label %10

10:                                               ; preds = %41, %4
  %.01 = phi i32 [ %3, %4 ], [ %.0, %41 ]
  %11 = sdiv i32 %2, 2
  %12 = icmp sle i32 %.01, %11
  br i1 %12, label %13, label %._crit_edge

._crit_edge:                                      ; preds = %10
  %.pre = sext i32 %9 to i64
  br label %45

13:                                               ; preds = %10
  %14 = add nsw i32 %.01, %.01
  %15 = icmp slt i32 %14, %2
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = sub nsw i32 %14, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, ptr %1, i64 %18
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds nuw i64, ptr %0, i64 %20
  %22 = load i64, ptr %21, align 8
  %23 = sext i32 %14 to i64
  %24 = getelementptr inbounds i64, ptr %1, i64 %23
  %25 = load i64, ptr %24, align 8
  %26 = getelementptr inbounds nuw i64, ptr %0, i64 %25
  %27 = load i64, ptr %26, align 8
  %28 = icmp ugt i64 %22, %27
  %29 = add nsw i32 %14, 1
  %spec.select = select i1 %28, i32 %29, i32 %14
  br label %30

30:                                               ; preds = %16, %13
  %.0 = phi i32 [ %14, %13 ], [ %spec.select, %16 ]
  %31 = sext i32 %9 to i64
  %32 = getelementptr inbounds i64, ptr %0, i64 %31
  %33 = load i64, ptr %32, align 8
  %34 = sub nsw i32 %.0, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, ptr %1, i64 %35
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds nuw i64, ptr %0, i64 %37
  %39 = load i64, ptr %38, align 8
  %40 = icmp ult i64 %33, %39
  br i1 %40, label %split, label %41

41:                                               ; preds = %30
  %42 = sub nsw i32 %.01, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, ptr %1, i64 %43
  store i64 %37, ptr %44, align 8
  br label %10, !llvm.loop !24

split:                                            ; preds = %30
  br label %45

45:                                               ; preds = %split, %._crit_edge
  %.pre-phi = phi i64 [ %31, %split ], [ %.pre, %._crit_edge ]
  %46 = sub nsw i32 %.01, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, ptr %1, i64 %47
  store i64 %.pre-phi, ptr %48, align 8
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
