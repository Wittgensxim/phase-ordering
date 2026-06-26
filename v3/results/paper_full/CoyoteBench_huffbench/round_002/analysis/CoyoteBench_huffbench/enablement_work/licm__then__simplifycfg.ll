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
  br i1 %13, label %14, label %.preheader6

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

.preheader6:                                      ; preds = %12, %31
  %.010 = phi i64 [ %.111, %31 ], [ 0, %12 ]
  %.13 = phi i64 [ %32, %31 ], [ 0, %12 ]
  %22 = icmp ult i64 %.13, 256
  br i1 %22, label %24, label %.preheader5

.preheader5:                                      ; preds = %.preheader6
  %.010.lcssa = phi i64 [ %.010, %.preheader6 ]
  %23 = trunc i64 %.010.lcssa to i32
  br label %33

24:                                               ; preds = %.preheader6
  %25 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.13
  %26 = load i64, ptr %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.010
  store i64 %.13, ptr %29, align 8
  %30 = add i64 %.010, 1
  br label %31

31:                                               ; preds = %28, %24
  %.111 = phi i64 [ %30, %28 ], [ %.010, %24 ]
  %32 = add i64 %.13, 1
  br label %.preheader6, !llvm.loop !10

33:                                               ; preds = %.preheader5, %35
  %.24 = phi i64 [ %37, %35 ], [ %.010.lcssa, %.preheader5 ]
  %34 = icmp ugt i64 %.24, 0
  br i1 %34, label %35, label %.preheader4

35:                                               ; preds = %33
  %36 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %23, i32 noundef %36)
  %37 = add i64 %.24, -1
  br label %33, !llvm.loop !11

.preheader4:                                      ; preds = %33, %39
  %.212 = phi i64 [ %40, %39 ], [ %.010.lcssa, %33 ]
  %38 = icmp ugt i64 %.212, 1
  br i1 %38, label %39, label %59

39:                                               ; preds = %.preheader4
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
  %57 = load i64, ptr %4, align 16
  %58 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %57
  store i32 %56, ptr %58, align 4
  store i64 %51, ptr %4, align 16
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %44, i32 noundef 1)
  br label %.preheader4, !llvm.loop !12

59:                                               ; preds = %.preheader4
  %.212.lcssa = phi i64 [ %.212, %.preheader4 ]
  %60 = add i64 256, %.212.lcssa
  %61 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %60
  store i32 0, ptr %61, align 4
  br label %62

62:                                               ; preds = %92, %59
  %.045 = phi i64 [ 0, %59 ], [ %.146, %92 ]
  %.042 = phi i64 [ 0, %59 ], [ %93, %92 ]
  %.039 = phi i64 [ 0, %59 ], [ %.140, %92 ]
  %63 = icmp ult i64 %.042, 256
  br i1 %63, label %64, label %94

64:                                               ; preds = %62
  %65 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.042
  %66 = load i64, ptr %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 0, ptr %69, align 4
  %70 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 0, ptr %70, align 1
  br label %92

71:                                               ; preds = %64
  %72 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.042
  %73 = load i32, ptr %72, align 4
  br label %74

74:                                               ; preds = %76, %71
  %.043 = phi i64 [ 0, %71 ], [ %.144, %76 ]
  %.037 = phi i32 [ %73, %71 ], [ %82, %76 ]
  %.05 = phi i64 [ 1, %71 ], [ %83, %76 ]
  %.3 = phi i64 [ 0, %71 ], [ %84, %76 ]
  %75 = icmp ne i32 %.037, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %74
  %77 = icmp slt i32 %.037, 0
  %78 = add i64 %.043, %.05
  %79 = sub nsw i32 0, %.037
  %.144 = select i1 %77, i64 %78, i64 %.043
  %.138 = select i1 %77, i32 %79, i32 %.037
  %80 = sext i32 %.138 to i64
  %81 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %80
  %82 = load i32, ptr %81, align 4
  %83 = shl i64 %.05, 1
  %84 = add i64 %.3, 1
  br label %74, !llvm.loop !13

85:                                               ; preds = %74
  %.043.lcssa = phi i64 [ %.043, %74 ]
  %.3.lcssa = phi i64 [ %.3, %74 ]
  %86 = trunc i64 %.043.lcssa to i32
  %87 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 %86, ptr %87, align 4
  %88 = trunc i64 %.3.lcssa to i8
  %89 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 %88, ptr %89, align 1
  %90 = icmp ugt i64 %.043.lcssa, %.045
  %spec.select = select i1 %90, i64 %.043.lcssa, i64 %.045
  %91 = icmp ugt i64 %.3.lcssa, %.039
  %.241 = select i1 %91, i64 %.3.lcssa, i64 %.039
  br label %92

92:                                               ; preds = %85, %68
  %.146 = phi i64 [ %spec.select, %85 ], [ %.045, %68 ]
  %.140 = phi i64 [ %.241, %85 ], [ %.039, %68 ]
  %93 = add i64 %.042, 1
  br label %62, !llvm.loop !14

94:                                               ; preds = %62
  %.045.lcssa = phi i64 [ %.045, %62 ]
  %.039.lcssa = phi i64 [ %.039, %62 ]
  %95 = icmp ugt i64 %.039.lcssa, 32
  br i1 %95, label %96, label %99

96:                                               ; preds = %94
  %97 = call ptr @__acrt_iob_func(i32 noundef 2)
  %98 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %97, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

99:                                               ; preds = %94
  %100 = icmp eq i64 %.045.lcssa, 0
  br i1 %100, label %101, label %.preheader3

101:                                              ; preds = %99
  %102 = call ptr @__acrt_iob_func(i32 noundef 2)
  %103 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %102, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

.preheader3:                                      ; preds = %99, %148
  %.134 = phi ptr [ %149, %148 ], [ %0, %99 ]
  %.028 = phi i64 [ %.129.lcssa, %148 ], [ 0, %99 ]
  %.024 = phi i8 [ %.125.lcssa, %148 ], [ 0, %99 ]
  %.16 = phi i64 [ %150, %148 ], [ 0, %99 ]
  %.01 = phi i32 [ %.1.lcssa, %148 ], [ -1, %99 ]
  %104 = icmp ult i64 %.16, %1
  br i1 %104, label %105, label %151

105:                                              ; preds = %.preheader3
  %106 = load i8, ptr %.134, align 1
  %107 = zext i8 %106 to i64
  %108 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %107
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %109 to i32
  %111 = sub nsw i32 %110, 1
  %112 = shl i32 1, %111
  %113 = sext i32 %112 to i64
  br label %114

114:                                              ; preds = %135, %105
  %.129 = phi i64 [ %.028, %105 ], [ %.230, %135 ]
  %.125 = phi i8 [ %.024, %105 ], [ %.327, %135 ]
  %.015 = phi i64 [ %113, %105 ], [ %146, %135 ]
  %.4 = phi i64 [ 0, %105 ], [ %147, %135 ]
  %.1 = phi i32 [ %.01, %105 ], [ %.2, %135 ]
  %115 = load i8, ptr %.134, align 1
  %116 = zext i8 %115 to i64
  %117 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %116
  %118 = load i8, ptr %117, align 1
  %119 = zext i8 %118 to i64
  %120 = icmp ult i64 %.4, %119
  br i1 %120, label %121, label %148

121:                                              ; preds = %114
  %122 = icmp eq i32 %.1, 7
  br i1 %122, label %123, label %130

123:                                              ; preds = %121
  %124 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %124, align 1
  %125 = add i64 %.129, 1
  %126 = icmp eq i64 %125, %1
  br i1 %126, label %127, label %135

127:                                              ; preds = %123
  %128 = call ptr @__acrt_iob_func(i32 noundef 2)
  %129 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %128, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

130:                                              ; preds = %121
  %131 = add nsw i32 %.1, 1
  %132 = sext i8 %.125 to i32
  %133 = shl i32 %132, 1
  %134 = trunc i32 %133 to i8
  br label %135

135:                                              ; preds = %130, %123
  %.230 = phi i64 [ %.129, %130 ], [ %125, %123 ]
  %.226 = phi i8 [ %134, %130 ], [ 0, %123 ]
  %.2 = phi i32 [ %131, %130 ], [ 0, %123 ]
  %136 = load i8, ptr %.134, align 1
  %137 = zext i8 %136 to i64
  %138 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %137
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
  br label %114, !llvm.loop !15

148:                                              ; preds = %114
  %.129.lcssa = phi i64 [ %.129, %114 ]
  %.125.lcssa = phi i8 [ %.125, %114 ]
  %.1.lcssa = phi i32 [ %.1, %114 ]
  %149 = getelementptr inbounds nuw i8, ptr %.134, i32 1
  %150 = add i64 %.16, 1
  br label %.preheader3, !llvm.loop !16

151:                                              ; preds = %.preheader3
  %.028.lcssa = phi i64 [ %.028, %.preheader3 ]
  %.024.lcssa = phi i8 [ %.024, %.preheader3 ]
  %.01.lcssa = phi i32 [ %.01, %.preheader3 ]
  %152 = sub nsw i32 7, %.01.lcssa
  %153 = sext i8 %.024.lcssa to i32
  %154 = shl i32 %153, %152
  %155 = trunc i32 %154 to i8
  %156 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %155, ptr %156, align 1
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 1024, i1 false)
  br label %157

157:                                              ; preds = %189, %151
  %.27 = phi i64 [ 0, %151 ], [ %190, %189 ]
  %.0 = phi ptr [ %9, %151 ], [ %161, %189 ]
  %158 = icmp ult i64 %.27, 256
  br i1 %158, label %159, label %.preheader2

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
  br i1 %168, label %169, label %189

169:                                              ; preds = %159
  %170 = sub nsw i32 %166, 1
  %171 = shl i32 1, %170
  %172 = sext i32 %171 to i64
  %173 = load i8, ptr %164, align 1
  %174 = zext i8 %173 to i64
  br label %175

175:                                              ; preds = %177, %169
  %.019 = phi i32 [ 0, %169 ], [ %spec.select1, %177 ]
  %.116 = phi i64 [ %172, %169 ], [ %185, %177 ]
  %.5 = phi i64 [ 0, %169 ], [ %186, %177 ]
  %176 = icmp ult i64 %.5, %174
  br i1 %176, label %177, label %187

177:                                              ; preds = %175
  %178 = mul i32 %.019, 2
  %179 = add i32 %178, 1
  %180 = load i32, ptr %162, align 4
  %181 = zext i32 %180 to i64
  %182 = and i64 %181, %.116
  %183 = icmp ne i64 %182, 0
  %184 = add i32 %179, 1
  %spec.select1 = select i1 %183, i32 %184, i32 %179
  %185 = lshr i64 %.116, 1
  %186 = add i64 %.5, 1
  br label %175, !llvm.loop !17

187:                                              ; preds = %175
  %.019.lcssa = phi i32 [ %.019, %175 ]
  %188 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.27
  store i32 %.019.lcssa, ptr %188, align 4
  br label %189

189:                                              ; preds = %187, %159
  %190 = add i64 %.27, 1
  br label %157, !llvm.loop !18

.preheader2:                                      ; preds = %157, %.critedge
  %.6 = phi i64 [ %212, %.critedge ], [ 1, %157 ]
  %191 = icmp ult i64 %.6, 256
  br i1 %191, label %192, label %.preheader1

192:                                              ; preds = %.preheader2
  %193 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %194 = load i32, ptr %193, align 4
  %195 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %196 = load i8, ptr %195, align 1
  br label %197

197:                                              ; preds = %204, %192
  %.38 = phi i64 [ %.6, %192 ], [ %209, %204 ]
  %198 = icmp ne i64 %.38, 0
  br i1 %198, label %199, label %.critedge

199:                                              ; preds = %197
  %200 = sub i64 %.38, 1
  %201 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %200
  %202 = load i32, ptr %201, align 4
  %203 = icmp ugt i32 %202, %194
  br i1 %203, label %204, label %.critedge

204:                                              ; preds = %199
  %205 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %202, ptr %205, align 4
  %206 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %200
  %207 = load i8, ptr %206, align 1
  %208 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %207, ptr %208, align 1
  %209 = add i64 %.38, -1
  br label %197, !llvm.loop !19

.critedge:                                        ; preds = %199, %197
  %.38.lcssa = phi i64 [ %.38, %199 ], [ %.38, %197 ]
  %210 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %194, ptr %210, align 4
  %211 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %196, ptr %211, align 1
  %212 = add i64 %.6, 1
  br label %.preheader2, !llvm.loop !20

.preheader1:                                      ; preds = %.preheader2, %216
  %.49 = phi i64 [ %217, %216 ], [ 0, %.preheader2 ]
  %213 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %214 = load i32, ptr %213, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %.preheader

.preheader:                                       ; preds = %.preheader1
  %.49.lcssa = phi i64 [ %.49, %.preheader1 ]
  br label %218

216:                                              ; preds = %.preheader1
  %217 = add i64 %.49, 1
  br label %.preheader1, !llvm.loop !21

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
  br i1 %14, label %15, label %45

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
  br i1 %40, label %45, label %41

41:                                               ; preds = %32
  %42 = sub nsw i32 %.01, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, ptr %1, i64 %43
  store i64 %37, ptr %44, align 8
  br label %13, !llvm.loop !24

45:                                               ; preds = %32, %13
  %.01.lcssa = phi i32 [ %.01, %32 ], [ %.01, %13 ]
  %46 = sext i32 %9 to i64
  %47 = sub nsw i32 %.01.lcssa, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, ptr %1, i64 %48
  store i64 %46, ptr %49, align 8
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

.loopexit:                                        ; preds = %7, %5, %2
  %.0 = phi i8 [ 0, %2 ], [ 1, %7 ], [ 0, %5 ]
  %13 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %14

14:                                               ; preds = %16, %.loopexit
  %.12 = phi i32 [ 0, %.loopexit ], [ %17, %16 ]
  %15 = icmp slt i32 %.12, 30
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  call void @compdecomp(ptr noundef %13, i64 noundef 10000000)
  %17 = add nsw i32 %.12, 1
  br label %14, !llvm.loop !26

18:                                               ; preds = %14
  call void @free(ptr noundef %13)
  %19 = icmp ne i8 %.0, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = call ptr @__acrt_iob_func(i32 noundef 1)
  %22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.5, double noundef 0.000000e+00) #7
  br label %26

23:                                               ; preds = %18
  %24 = call ptr @__acrt_iob_func(i32 noundef 1)
  %25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef @.str.6, double noundef 0.000000e+00) #7
  br label %26

26:                                               ; preds = %23, %20
  %27 = call ptr @__acrt_iob_func(i32 noundef 1)
  %28 = call i32 @fflush(ptr noundef %27)
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
  %13 = load i32, ptr @seed, align 4
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
