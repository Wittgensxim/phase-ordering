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

3:                                                ; preds = %6, %1
  %.01 = phi ptr [ %2, %1 ], [ %10, %6 ]
  %.0 = phi i32 [ 0, %1 ], [ %11, %6 ]
  %4 = sext i32 %.0 to i64
  %5 = icmp ult i64 %4, %0
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = call i64 @random4()
  %8 = getelementptr inbounds nuw i8, ptr @.str, i64 %7
  %9 = load i8, ptr %8, align 1
  store i8 %9, ptr %.01, align 1
  %10 = getelementptr inbounds nuw i8, ptr %.01, i32 1
  %11 = add nsw i32 %.0, 1
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
  %11 = call ptr @malloc(i64 noundef %10) #6
  call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %10, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %5, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %6, i8 0, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %7, i8 0, i64 256, i1 false)
  br label %12

12:                                               ; preds = %14, %2
  %.033 = phi ptr [ %0, %2 ], [ %20, %14 ]
  %.02 = phi i64 [ 0, %2 ], [ %21, %14 ]
  %13 = icmp ult i64 %.02, %1
  br i1 %13, label %14, label %.preheader8

.preheader8:                                      ; preds = %12
  br label %22

14:                                               ; preds = %12
  %15 = load i8, ptr %.033, align 1
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %16
  %18 = load i64, ptr %17, align 8
  %19 = add i64 %18, 1
  store i64 %19, ptr %17, align 8
  %20 = getelementptr inbounds nuw i8, ptr %.033, i32 1
  %21 = add i64 %.02, 1
  br label %12, !llvm.loop !9

22:                                               ; preds = %.preheader8, %32
  %.010 = phi i64 [ %.111, %32 ], [ 0, %.preheader8 ]
  %.13 = phi i64 [ %33, %32 ], [ 0, %.preheader8 ]
  %23 = icmp ult i64 %.13, 256
  br i1 %23, label %25, label %.preheader7

.preheader7:                                      ; preds = %22
  %.010.lcssa = phi i64 [ %.010, %22 ]
  %24 = trunc i64 %.010.lcssa to i32
  br label %34

25:                                               ; preds = %22
  %26 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.13
  %27 = load i64, ptr %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.010
  store i64 %.13, ptr %30, align 8
  %31 = add i64 %.010, 1
  br label %32

32:                                               ; preds = %29, %25
  %.111 = phi i64 [ %31, %29 ], [ %.010, %25 ]
  %33 = add i64 %.13, 1
  br label %22, !llvm.loop !10

34:                                               ; preds = %.preheader7, %36
  %.24 = phi i64 [ %38, %36 ], [ %.010.lcssa, %.preheader7 ]
  %35 = icmp ugt i64 %.24, 0
  br i1 %35, label %36, label %.preheader6

.preheader6:                                      ; preds = %34
  br label %39

36:                                               ; preds = %34
  %37 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %24, i32 noundef %37)
  %38 = add i64 %.24, -1
  br label %34, !llvm.loop !11

39:                                               ; preds = %.preheader6, %41
  %.212 = phi i64 [ %42, %41 ], [ %.010.lcssa, %.preheader6 ]
  %40 = icmp ugt i64 %.212, 1
  br i1 %40, label %41, label %60

41:                                               ; preds = %39
  %42 = add i64 %.212, -1
  %43 = load i64, ptr %4, align 16
  %44 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %42
  %45 = load i64, ptr %44, align 8
  store i64 %45, ptr %4, align 16
  %46 = trunc i64 %42 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %46, i32 noundef 1)
  %47 = load i64, ptr %4, align 16
  %48 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %47
  %49 = load i64, ptr %48, align 8
  %50 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %43
  %51 = load i64, ptr %50, align 8
  %52 = add i64 %49, %51
  %53 = add i64 256, %42
  %54 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %53
  store i64 %52, ptr %54, align 8
  %55 = trunc i64 %53 to i32
  %56 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %43
  store i32 %55, ptr %56, align 4
  %57 = sub i64 -256, %42
  %58 = trunc i64 %57 to i32
  %59 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %47
  store i32 %58, ptr %59, align 4
  store i64 %53, ptr %4, align 16
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %46, i32 noundef 1)
  br label %39, !llvm.loop !12

60:                                               ; preds = %39
  %.212.lcssa = phi i64 [ %.212, %39 ]
  %61 = add i64 256, %.212.lcssa
  %62 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %61
  store i32 0, ptr %62, align 4
  br label %63

63:                                               ; preds = %93, %60
  %.045 = phi i64 [ 0, %60 ], [ %.146, %93 ]
  %.042 = phi i64 [ 0, %60 ], [ %94, %93 ]
  %.039 = phi i64 [ 0, %60 ], [ %.140, %93 ]
  %64 = icmp ult i64 %.042, 256
  br i1 %64, label %65, label %95

65:                                               ; preds = %63
  %66 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.042
  %67 = load i64, ptr %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 0, ptr %70, align 4
  %71 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 0, ptr %71, align 1
  br label %93

72:                                               ; preds = %65
  %73 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.042
  %74 = load i32, ptr %73, align 4
  br label %75

75:                                               ; preds = %77, %72
  %.043 = phi i64 [ 0, %72 ], [ %.144, %77 ]
  %.037 = phi i32 [ %74, %72 ], [ %83, %77 ]
  %.05 = phi i64 [ 1, %72 ], [ %84, %77 ]
  %.3 = phi i64 [ 0, %72 ], [ %85, %77 ]
  %76 = icmp ne i32 %.037, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %75
  %78 = icmp slt i32 %.037, 0
  %79 = add i64 %.043, %.05
  %80 = sub nsw i32 0, %.037
  %.144 = select i1 %78, i64 %79, i64 %.043
  %.138 = select i1 %78, i32 %80, i32 %.037
  %81 = sext i32 %.138 to i64
  %82 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %81
  %83 = load i32, ptr %82, align 4
  %84 = shl i64 %.05, 1
  %85 = add i64 %.3, 1
  br label %75, !llvm.loop !13

86:                                               ; preds = %75
  %.043.lcssa = phi i64 [ %.043, %75 ]
  %.3.lcssa = phi i64 [ %.3, %75 ]
  %87 = trunc i64 %.043.lcssa to i32
  %88 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 %87, ptr %88, align 4
  %89 = trunc i64 %.3.lcssa to i8
  %90 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 %89, ptr %90, align 1
  %91 = icmp ugt i64 %.043.lcssa, %.045
  %spec.select = select i1 %91, i64 %.043.lcssa, i64 %.045
  %92 = icmp ugt i64 %.3.lcssa, %.039
  %.241 = select i1 %92, i64 %.3.lcssa, i64 %.039
  br label %93

93:                                               ; preds = %86, %69
  %.146 = phi i64 [ %spec.select, %86 ], [ %.045, %69 ]
  %.140 = phi i64 [ %.241, %86 ], [ %.039, %69 ]
  %94 = add i64 %.042, 1
  br label %63, !llvm.loop !14

95:                                               ; preds = %63
  %.045.lcssa = phi i64 [ %.045, %63 ]
  %.039.lcssa = phi i64 [ %.039, %63 ]
  %96 = icmp ugt i64 %.039.lcssa, 32
  br i1 %96, label %97, label %100

97:                                               ; preds = %95
  %98 = call ptr @__acrt_iob_func(i32 noundef 2)
  %99 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %98, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

100:                                              ; preds = %95
  %101 = icmp eq i64 %.045.lcssa, 0
  br i1 %101, label %102, label %.preheader5

.preheader5:                                      ; preds = %100
  br label %105

102:                                              ; preds = %100
  %103 = call ptr @__acrt_iob_func(i32 noundef 2)
  %104 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %103, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

105:                                              ; preds = %.preheader5, %148
  %.134 = phi ptr [ %149, %148 ], [ %0, %.preheader5 ]
  %.028 = phi i64 [ %.129.lcssa, %148 ], [ 0, %.preheader5 ]
  %.024 = phi i8 [ %.125.lcssa, %148 ], [ 0, %.preheader5 ]
  %.16 = phi i64 [ %150, %148 ], [ 0, %.preheader5 ]
  %.01 = phi i32 [ %.1.lcssa, %148 ], [ -1, %.preheader5 ]
  %106 = icmp ult i64 %.16, %1
  br i1 %106, label %107, label %151

107:                                              ; preds = %105
  %108 = load i8, ptr %.134, align 1
  %109 = zext i8 %108 to i64
  %110 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %109
  %111 = load i8, ptr %110, align 1
  %112 = zext i8 %111 to i32
  %113 = sub nsw i32 %112, 1
  %114 = shl i32 1, %113
  %115 = sext i32 %114 to i64
  br label %116

116:                                              ; preds = %136, %107
  %117 = phi i8 [ %108, %107 ], [ %137, %136 ]
  %118 = phi i8 [ %111, %107 ], [ %.pre, %136 ]
  %.129 = phi i64 [ %.028, %107 ], [ %.230, %136 ]
  %.125 = phi i8 [ %.024, %107 ], [ %.327, %136 ]
  %.015 = phi i64 [ %115, %107 ], [ %146, %136 ]
  %.4 = phi i64 [ 0, %107 ], [ %147, %136 ]
  %.1 = phi i32 [ %.01, %107 ], [ %.2, %136 ]
  %119 = zext i8 %117 to i64
  %120 = zext i8 %118 to i64
  %121 = icmp ult i64 %.4, %120
  br i1 %121, label %122, label %148

122:                                              ; preds = %116
  %123 = icmp eq i32 %.1, 7
  br i1 %123, label %124, label %131

124:                                              ; preds = %122
  %125 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %125, align 1
  %126 = add i64 %.129, 1
  %127 = icmp eq i64 %126, %1
  br i1 %127, label %128, label %._crit_edge

._crit_edge:                                      ; preds = %124
  %.pre1 = load i8, ptr %.134, align 1
  %.pre2 = zext i8 %.pre1 to i64
  br label %136

128:                                              ; preds = %124
  %129 = call ptr @__acrt_iob_func(i32 noundef 2)
  %130 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %129, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

131:                                              ; preds = %122
  %132 = add nsw i32 %.1, 1
  %133 = sext i8 %.125 to i32
  %134 = shl i32 %133, 1
  %135 = trunc i32 %134 to i8
  br label %136

136:                                              ; preds = %._crit_edge, %131
  %.pre-phi = phi i64 [ %.pre2, %._crit_edge ], [ %119, %131 ]
  %137 = phi i8 [ %117, %131 ], [ %.pre1, %._crit_edge ]
  %.230 = phi i64 [ %.129, %131 ], [ %126, %._crit_edge ]
  %.226 = phi i8 [ %135, %131 ], [ 0, %._crit_edge ]
  %.2 = phi i32 [ %132, %131 ], [ 0, %._crit_edge ]
  %138 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.pre-phi
  %139 = load i32, ptr %138, align 4
  %140 = zext i32 %139 to i64
  %141 = and i64 %140, %.015
  %142 = icmp ne i64 %141, 0
  %143 = sext i8 %.226 to i32
  %144 = or i32 %143, 1
  %145 = trunc i32 %144 to i8
  %.327 = select i1 %142, i8 %145, i8 %.226
  %146 = lshr i64 %.015, 1
  %147 = add i64 %.4, 1
  %.phi.trans.insert = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %116, !llvm.loop !15

148:                                              ; preds = %116
  %.129.lcssa = phi i64 [ %.129, %116 ]
  %.125.lcssa = phi i8 [ %.125, %116 ]
  %.1.lcssa = phi i32 [ %.1, %116 ]
  %149 = getelementptr inbounds nuw i8, ptr %.134, i32 1
  %150 = add i64 %.16, 1
  br label %105, !llvm.loop !16

151:                                              ; preds = %105
  %.028.lcssa = phi i64 [ %.028, %105 ]
  %.024.lcssa = phi i8 [ %.024, %105 ]
  %.01.lcssa = phi i32 [ %.01, %105 ]
  %152 = sub nsw i32 7, %.01.lcssa
  %153 = sext i8 %.024.lcssa to i32
  %154 = shl i32 %153, %152
  %155 = trunc i32 %154 to i8
  %156 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %155, ptr %156, align 1
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 1024, i1 false)
  br label %157

157:                                              ; preds = %187, %151
  %.27 = phi i64 [ 0, %151 ], [ %188, %187 ]
  %.0 = phi ptr [ %9, %151 ], [ %161, %187 ]
  %158 = icmp ult i64 %.27, 256
  br i1 %158, label %159, label %.preheader4

.preheader4:                                      ; preds = %157
  br label %189

159:                                              ; preds = %157
  %160 = trunc i64 %.27 to i8
  store i8 %160, ptr %.0, align 1
  %161 = getelementptr inbounds nuw i8, ptr %.0, i32 1
  %162 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %163 = load i32, ptr %162, align 4
  %164 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %165 = load i8, ptr %164, align 1
  %166 = zext i8 %165 to i32
  %167 = or i32 %163, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %187

169:                                              ; preds = %159
  %170 = sub nsw i32 %166, 1
  %171 = shl i32 1, %170
  %172 = sext i32 %171 to i64
  %173 = zext i8 %165 to i64
  %174 = zext i32 %163 to i64
  br label %175

175:                                              ; preds = %177, %169
  %.019 = phi i32 [ 0, %169 ], [ %spec.select1, %177 ]
  %.116 = phi i64 [ %172, %169 ], [ %183, %177 ]
  %.5 = phi i64 [ 0, %169 ], [ %184, %177 ]
  %176 = icmp ult i64 %.5, %173
  br i1 %176, label %177, label %185

177:                                              ; preds = %175
  %178 = mul i32 %.019, 2
  %179 = add i32 %178, 1
  %180 = and i64 %174, %.116
  %181 = icmp ne i64 %180, 0
  %182 = add i32 %179, 1
  %spec.select1 = select i1 %181, i32 %182, i32 %179
  %183 = lshr i64 %.116, 1
  %184 = add i64 %.5, 1
  br label %175, !llvm.loop !17

185:                                              ; preds = %175
  %.019.lcssa = phi i32 [ %.019, %175 ]
  %186 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.27
  store i32 %.019.lcssa, ptr %186, align 4
  br label %187

187:                                              ; preds = %185, %159
  %188 = add i64 %.27, 1
  br label %157, !llvm.loop !18

189:                                              ; preds = %.preheader4, %.critedge
  %.6 = phi i64 [ %211, %.critedge ], [ 1, %.preheader4 ]
  %190 = icmp ult i64 %.6, 256
  br i1 %190, label %191, label %.preheader3

.preheader3:                                      ; preds = %189
  br label %212

191:                                              ; preds = %189
  %192 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %193 = load i32, ptr %192, align 4
  %194 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %195 = load i8, ptr %194, align 1
  br label %196

196:                                              ; preds = %203, %191
  %.38 = phi i64 [ %.6, %191 ], [ %208, %203 ]
  %197 = icmp ne i64 %.38, 0
  br i1 %197, label %198, label %.critedge

198:                                              ; preds = %196
  %199 = sub i64 %.38, 1
  %200 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %199
  %201 = load i32, ptr %200, align 4
  %202 = icmp ugt i32 %201, %193
  br i1 %202, label %203, label %.critedge

203:                                              ; preds = %198
  %204 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %201, ptr %204, align 4
  %205 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %199
  %206 = load i8, ptr %205, align 1
  %207 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %206, ptr %207, align 1
  %208 = add i64 %.38, -1
  br label %196, !llvm.loop !19

.critedge:                                        ; preds = %198, %196
  %.38.lcssa = phi i64 [ %.38, %198 ], [ %.38, %196 ]
  %209 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %193, ptr %209, align 4
  %210 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %195, ptr %210, align 1
  %211 = add i64 %.6, 1
  br label %189, !llvm.loop !20

212:                                              ; preds = %.preheader3, %216
  %.49 = phi i64 [ %217, %216 ], [ 0, %.preheader3 ]
  %213 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %214 = load i32, ptr %213, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %.preheader

.preheader:                                       ; preds = %212
  %.49.lcssa = phi i64 [ %.49, %212 ]
  br label %218

216:                                              ; preds = %212
  %217 = add i64 %.49, 1
  br label %212, !llvm.loop !21

218:                                              ; preds = %.preheader, %241
  %.235 = phi ptr [ %.336, %241 ], [ %0, %.preheader ]
  %.031 = phi ptr [ %.132, %241 ], [ %11, %.preheader ]
  %.221 = phi i32 [ %.423, %241 ], [ 0, %.preheader ]
  %.217 = phi i64 [ %.318, %241 ], [ 128, %.preheader ]
  %.313 = phi i64 [ %.414, %241 ], [ 0, %.preheader ]
  %.7 = phi i64 [ %.9, %241 ], [ %.49.lcssa, %.preheader ]
  %219 = icmp ult i64 %.313, %1
  br i1 %219, label %220, label %245

220:                                              ; preds = %218
  %221 = mul i32 %.221, 2
  %222 = add i32 %221, 1
  %223 = load i8, ptr %.031, align 1
  %224 = zext i8 %223 to i64
  %225 = and i64 %224, %.217
  %226 = icmp ne i64 %225, 0
  %227 = add i32 %222, 1
  %spec.select2 = select i1 %226, i32 %227, i32 %222
  br label %228

228:                                              ; preds = %232, %220
  %.8 = phi i64 [ %.7, %220 ], [ %233, %232 ]
  %229 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %230 = load i32, ptr %229, align 4
  %231 = icmp ult i32 %230, %spec.select2
  br i1 %231, label %232, label %234

232:                                              ; preds = %228
  %233 = add i64 %.8, 1
  br label %228, !llvm.loop !22

234:                                              ; preds = %228
  %.8.lcssa = phi i64 [ %.8, %228 ]
  %.lcssa = phi i32 [ %230, %228 ]
  %235 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %235, label %236, label %241

236:                                              ; preds = %234
  %237 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %238 = load i8, ptr %237, align 1
  store i8 %238, ptr %.235, align 1
  %239 = getelementptr inbounds nuw i8, ptr %.235, i32 1
  %240 = add i64 %.313, 1
  br label %241

241:                                              ; preds = %236, %234
  %.336 = phi ptr [ %239, %236 ], [ %.235, %234 ]
  %.423 = phi i32 [ 0, %236 ], [ %spec.select2, %234 ]
  %.414 = phi i64 [ %240, %236 ], [ %.313, %234 ]
  %.9 = phi i64 [ %.49.lcssa, %236 ], [ %.8.lcssa, %234 ]
  %242 = icmp ugt i64 %.217, 1
  %243 = lshr i64 %.217, 1
  %244 = getelementptr inbounds nuw i8, ptr %.031, i32 1
  %.132 = select i1 %242, ptr %.031, ptr %244
  %.318 = select i1 %242, i64 %243, i64 128
  br label %218, !llvm.loop !23

245:                                              ; preds = %218
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
  %10 = sdiv i32 %2, 2
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds i64, ptr %0, i64 %11
  br label %13

13:                                               ; preds = %41, %4
  %.01 = phi i32 [ %3, %4 ], [ %.0, %41 ]
  %14 = icmp sle i32 %.01, %10
  br i1 %14, label %15, label %._crit_edge

._crit_edge:                                      ; preds = %13
  %.01.lcssa = phi i32 [ %.01, %13 ]
  %.pre = sext i32 %9 to i64
  br label %45

15:                                               ; preds = %13
  %16 = add nsw i32 %.01, %.01
  %17 = icmp slt i32 %16, %2
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = sub nsw i32 %16, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, ptr %1, i64 %20
  %22 = load i64, ptr %21, align 8
  %23 = getelementptr inbounds nuw i64, ptr %0, i64 %22
  %24 = load i64, ptr %23, align 8
  %25 = sext i32 %16 to i64
  %26 = getelementptr inbounds i64, ptr %1, i64 %25
  %27 = load i64, ptr %26, align 8
  %28 = getelementptr inbounds nuw i64, ptr %0, i64 %27
  %29 = load i64, ptr %28, align 8
  %30 = icmp ugt i64 %24, %29
  %31 = add nsw i32 %16, 1
  %spec.select = select i1 %30, i32 %31, i32 %16
  br label %32

32:                                               ; preds = %18, %15
  %.0 = phi i32 [ %16, %15 ], [ %spec.select, %18 ]
  %33 = load i64, ptr %12, align 8
  %34 = sub nsw i32 %.0, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, ptr %1, i64 %35
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds nuw i64, ptr %0, i64 %37
  %39 = load i64, ptr %38, align 8
  %40 = icmp ult i64 %33, %39
  br i1 %40, label %split, label %41

41:                                               ; preds = %32
  %42 = sub nsw i32 %.01, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, ptr %1, i64 %43
  store i64 %37, ptr %44, align 8
  br label %13, !llvm.loop !24

split:                                            ; preds = %32
  %.lcssa = phi i64 [ %11, %32 ]
  %.01.lcssa1 = phi i32 [ %.01, %32 ]
  br label %45

45:                                               ; preds = %split, %._crit_edge
  %.012 = phi i32 [ %.01.lcssa1, %split ], [ %.01.lcssa, %._crit_edge ]
  %.pre-phi = phi i64 [ %.lcssa, %split ], [ %.pre, %._crit_edge ]
  %46 = sub nsw i32 %.012, 1
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
  br i1 %3, label %.preheader, label %13

.preheader:                                       ; preds = %2
  %4 = getelementptr inbounds ptr, ptr %1, i64 1
  br label %5

5:                                                ; preds = %.preheader, %11
  %.01 = phi i32 [ %12, %11 ], [ 1, %.preheader ]
  %6 = icmp slt i32 %.01, %0
  br i1 %6, label %7, label %.loopexit

7:                                                ; preds = %5
  %8 = load ptr, ptr %4, align 8
  %9 = call i32 @strcmp(ptr noundef %8, ptr noundef @.str.4) #7
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %.loopexit

11:                                               ; preds = %7
  %12 = add nsw i32 %.01, 1
  br label %5, !llvm.loop !25

.loopexit:                                        ; preds = %5, %7
  %.0.ph = phi i8 [ 1, %7 ], [ 0, %5 ]
  br label %13

13:                                               ; preds = %.loopexit, %2
  %.0 = phi i8 [ 0, %2 ], [ %.0.ph, %.loopexit ]
  %14 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %15

15:                                               ; preds = %17, %13
  %.12 = phi i32 [ 0, %13 ], [ %18, %17 ]
  %16 = icmp slt i32 %.12, 30
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  call void @compdecomp(ptr noundef %14, i64 noundef 10000000)
  %18 = add nsw i32 %.12, 1
  br label %15, !llvm.loop !26

19:                                               ; preds = %15
  call void @free(ptr noundef %14)
  %20 = icmp ne i8 %.0, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = call ptr @__acrt_iob_func(i32 noundef 1)
  %23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.5, double noundef 0.000000e+00) #7
  br label %27

24:                                               ; preds = %19
  %25 = call ptr @__acrt_iob_func(i32 noundef 1)
  %26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.6, double noundef 0.000000e+00) #7
  br label %27

27:                                               ; preds = %24, %21
  %28 = call ptr @__acrt_iob_func(i32 noundef 1)
  %29 = call i32 @fflush(ptr noundef %28)
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
