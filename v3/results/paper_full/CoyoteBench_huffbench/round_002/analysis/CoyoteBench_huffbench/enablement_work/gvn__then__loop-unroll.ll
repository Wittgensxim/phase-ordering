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
  br i1 %13, label %14, label %.preheader14

.preheader14:                                     ; preds = %12
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

22:                                               ; preds = %40, %.preheader14
  %.010 = phi i64 [ 0, %.preheader14 ], [ %.111.1, %40 ]
  %.13 = phi i64 [ 0, %.preheader14 ], [ %41, %40 ]
  %23 = icmp samesign ult i64 %.13, 256
  br i1 %23, label %24, label %.preheader13

.preheader13:                                     ; preds = %22
  %.010.lcssa = phi i64 [ %.010, %22 ]
  br label %42

24:                                               ; preds = %22
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
  %32 = add nuw nsw i64 %.13, 1
  br label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %32
  %35 = load i64, ptr %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.111
  store i64 %32, ptr %38, align 8
  %39 = add i64 %.111, 1
  br label %40

40:                                               ; preds = %37, %33
  %.111.1 = phi i64 [ %39, %37 ], [ %.111, %33 ]
  %41 = add nuw nsw i64 %.13, 2
  br label %22, !llvm.loop !10

42:                                               ; preds = %.preheader13, %44
  %.24 = phi i64 [ %47, %44 ], [ %.010.lcssa, %.preheader13 ]
  %43 = icmp ugt i64 %.24, 0
  br i1 %43, label %44, label %.preheader12

.preheader12:                                     ; preds = %42
  br label %48

44:                                               ; preds = %42
  %45 = trunc i64 %.010.lcssa to i32
  %46 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %45, i32 noundef %46)
  %47 = add i64 %.24, -1
  br label %42, !llvm.loop !11

48:                                               ; preds = %.preheader12, %50
  %.212 = phi i64 [ %51, %50 ], [ %.010.lcssa, %.preheader12 ]
  %49 = icmp ugt i64 %.212, 1
  br i1 %49, label %50, label %69

50:                                               ; preds = %48
  %51 = add i64 %.212, -1
  %52 = load i64, ptr %4, align 16
  %53 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %51
  %54 = load i64, ptr %53, align 8
  store i64 %54, ptr %4, align 16
  %55 = trunc i64 %51 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %55, i32 noundef 1)
  %56 = load i64, ptr %4, align 16
  %57 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %56
  %58 = load i64, ptr %57, align 8
  %59 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %52
  %60 = load i64, ptr %59, align 8
  %61 = add i64 %58, %60
  %62 = add i64 256, %51
  %63 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %62
  store i64 %61, ptr %63, align 8
  %64 = trunc i64 %62 to i32
  %65 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %52
  store i32 %64, ptr %65, align 4
  %66 = sub i64 -256, %51
  %67 = trunc i64 %66 to i32
  %68 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %56
  store i32 %67, ptr %68, align 4
  store i64 %62, ptr %4, align 16
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %55, i32 noundef 1)
  br label %48, !llvm.loop !12

69:                                               ; preds = %48
  %.212.lcssa = phi i64 [ %.212, %48 ]
  %70 = add i64 256, %.212.lcssa
  %71 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %70
  store i32 0, ptr %71, align 4
  br label %72

72:                                               ; preds = %102, %69
  %.045 = phi i64 [ 0, %69 ], [ %.146, %102 ]
  %.042 = phi i64 [ 0, %69 ], [ %103, %102 ]
  %.039 = phi i64 [ 0, %69 ], [ %.140, %102 ]
  %73 = icmp ult i64 %.042, 256
  br i1 %73, label %74, label %104

74:                                               ; preds = %72
  %75 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.042
  %76 = load i64, ptr %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 0, ptr %79, align 4
  %80 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 0, ptr %80, align 1
  br label %102

81:                                               ; preds = %74
  %82 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.042
  %83 = load i32, ptr %82, align 4
  br label %84

84:                                               ; preds = %86, %81
  %.043 = phi i64 [ 0, %81 ], [ %.144, %86 ]
  %.037 = phi i32 [ %83, %81 ], [ %92, %86 ]
  %.05 = phi i64 [ 1, %81 ], [ %93, %86 ]
  %.3 = phi i64 [ 0, %81 ], [ %94, %86 ]
  %85 = icmp ne i32 %.037, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %84
  %87 = icmp slt i32 %.037, 0
  %88 = add i64 %.043, %.05
  %89 = sub nsw i32 0, %.037
  %.144 = select i1 %87, i64 %88, i64 %.043
  %.138 = select i1 %87, i32 %89, i32 %.037
  %90 = sext i32 %.138 to i64
  %91 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %90
  %92 = load i32, ptr %91, align 4
  %93 = shl i64 %.05, 1
  %94 = add i64 %.3, 1
  br label %84, !llvm.loop !13

95:                                               ; preds = %84
  %.043.lcssa = phi i64 [ %.043, %84 ]
  %.3.lcssa = phi i64 [ %.3, %84 ]
  %96 = trunc i64 %.043.lcssa to i32
  %97 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 %96, ptr %97, align 4
  %98 = trunc i64 %.3.lcssa to i8
  %99 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 %98, ptr %99, align 1
  %100 = icmp ugt i64 %.043.lcssa, %.045
  %spec.select = select i1 %100, i64 %.043.lcssa, i64 %.045
  %101 = icmp ugt i64 %.3.lcssa, %.039
  %.241 = select i1 %101, i64 %.3.lcssa, i64 %.039
  br label %102

102:                                              ; preds = %95, %78
  %.146 = phi i64 [ %spec.select, %95 ], [ %.045, %78 ]
  %.140 = phi i64 [ %.241, %95 ], [ %.039, %78 ]
  %103 = add i64 %.042, 1
  br label %72, !llvm.loop !14

104:                                              ; preds = %72
  %.045.lcssa = phi i64 [ %.045, %72 ]
  %.039.lcssa = phi i64 [ %.039, %72 ]
  %105 = icmp ugt i64 %.039.lcssa, 32
  br i1 %105, label %106, label %109

106:                                              ; preds = %104
  %107 = call ptr @__acrt_iob_func(i32 noundef 2)
  %108 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %107, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

109:                                              ; preds = %104
  %110 = icmp eq i64 %.045.lcssa, 0
  br i1 %110, label %111, label %.preheader5

.preheader5:                                      ; preds = %109
  br label %114

111:                                              ; preds = %109
  %112 = call ptr @__acrt_iob_func(i32 noundef 2)
  %113 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %112, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

114:                                              ; preds = %.preheader5, %158
  %.134 = phi ptr [ %159, %158 ], [ %0, %.preheader5 ]
  %.028 = phi i64 [ %.129.lcssa, %158 ], [ 0, %.preheader5 ]
  %.024 = phi i8 [ %.125.lcssa, %158 ], [ 0, %.preheader5 ]
  %.16 = phi i64 [ %160, %158 ], [ 0, %.preheader5 ]
  %.01 = phi i32 [ %.1.lcssa, %158 ], [ -1, %.preheader5 ]
  %115 = icmp ult i64 %.16, %1
  br i1 %115, label %116, label %161

116:                                              ; preds = %114
  %117 = load i8, ptr %.134, align 1
  %118 = zext i8 %117 to i64
  %119 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %118
  %120 = load i8, ptr %119, align 1
  %121 = zext i8 %120 to i32
  %122 = sub nsw i32 %121, 1
  %123 = shl i32 1, %122
  %124 = sext i32 %123 to i64
  br label %125

125:                                              ; preds = %146, %116
  %126 = phi i8 [ %117, %116 ], [ %147, %146 ]
  %127 = phi i8 [ %120, %116 ], [ %.pre, %146 ]
  %.129 = phi i64 [ %.028, %116 ], [ %.230, %146 ]
  %.125 = phi i8 [ %.024, %116 ], [ %.327, %146 ]
  %.015 = phi i64 [ %124, %116 ], [ %156, %146 ]
  %.4 = phi i64 [ 0, %116 ], [ %157, %146 ]
  %.1 = phi i32 [ %.01, %116 ], [ %.2, %146 ]
  %128 = zext i8 %126 to i64
  %129 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %128
  %130 = zext i8 %127 to i64
  %131 = icmp ult i64 %.4, %130
  br i1 %131, label %132, label %158

132:                                              ; preds = %125
  %133 = icmp eq i32 %.1, 7
  br i1 %133, label %134, label %141

134:                                              ; preds = %132
  %135 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %135, align 1
  %136 = add i64 %.129, 1
  %137 = icmp eq i64 %136, %1
  br i1 %137, label %138, label %._crit_edge

._crit_edge:                                      ; preds = %134
  %.pre1 = load i8, ptr %.134, align 1
  %.pre2 = zext i8 %.pre1 to i64
  br label %146

138:                                              ; preds = %134
  %139 = call ptr @__acrt_iob_func(i32 noundef 2)
  %140 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %139, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

141:                                              ; preds = %132
  %142 = add nsw i32 %.1, 1
  %143 = sext i8 %.125 to i32
  %144 = shl i32 %143, 1
  %145 = trunc i32 %144 to i8
  br label %146

146:                                              ; preds = %._crit_edge, %141
  %.pre-phi = phi i64 [ %.pre2, %._crit_edge ], [ %128, %141 ]
  %147 = phi i8 [ %126, %141 ], [ %.pre1, %._crit_edge ]
  %.230 = phi i64 [ %.129, %141 ], [ %136, %._crit_edge ]
  %.226 = phi i8 [ %145, %141 ], [ 0, %._crit_edge ]
  %.2 = phi i32 [ %142, %141 ], [ 0, %._crit_edge ]
  %148 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.pre-phi
  %149 = load i32, ptr %148, align 4
  %150 = zext i32 %149 to i64
  %151 = and i64 %150, %.015
  %152 = icmp ne i64 %151, 0
  %153 = sext i8 %.226 to i32
  %154 = or i32 %153, 1
  %155 = trunc i32 %154 to i8
  %.327 = select i1 %152, i8 %155, i8 %.226
  %156 = lshr i64 %.015, 1
  %157 = add i64 %.4, 1
  %.phi.trans.insert = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %125, !llvm.loop !15

158:                                              ; preds = %125
  %.129.lcssa = phi i64 [ %.129, %125 ]
  %.125.lcssa = phi i8 [ %.125, %125 ]
  %.1.lcssa = phi i32 [ %.1, %125 ]
  %159 = getelementptr inbounds nuw i8, ptr %.134, i32 1
  %160 = add i64 %.16, 1
  br label %114, !llvm.loop !16

161:                                              ; preds = %114
  %.028.lcssa = phi i64 [ %.028, %114 ]
  %.024.lcssa = phi i8 [ %.024, %114 ]
  %.01.lcssa = phi i32 [ %.01, %114 ]
  %162 = sub nsw i32 7, %.01.lcssa
  %163 = sext i8 %.024.lcssa to i32
  %164 = shl i32 %163, %162
  %165 = trunc i32 %164 to i8
  %166 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %165, ptr %166, align 1
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 1024, i1 false)
  br label %167

167:                                              ; preds = %197, %161
  %.27 = phi i64 [ 0, %161 ], [ %198, %197 ]
  %.0 = phi ptr [ %9, %161 ], [ %171, %197 ]
  %168 = icmp ult i64 %.27, 256
  br i1 %168, label %169, label %.preheader4

.preheader4:                                      ; preds = %167
  br label %199

169:                                              ; preds = %167
  %170 = trunc i64 %.27 to i8
  store i8 %170, ptr %.0, align 1
  %171 = getelementptr inbounds nuw i8, ptr %.0, i32 1
  %172 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %173 = load i32, ptr %172, align 4
  %174 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %175 = load i8, ptr %174, align 1
  %176 = zext i8 %175 to i32
  %177 = or i32 %173, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %197

179:                                              ; preds = %169
  %180 = sub nsw i32 %176, 1
  %181 = shl i32 1, %180
  %182 = sext i32 %181 to i64
  br label %183

183:                                              ; preds = %186, %179
  %.019 = phi i32 [ 0, %179 ], [ %spec.select1, %186 ]
  %.116 = phi i64 [ %182, %179 ], [ %193, %186 ]
  %.5 = phi i64 [ 0, %179 ], [ %194, %186 ]
  %184 = zext i8 %175 to i64
  %185 = icmp ult i64 %.5, %184
  br i1 %185, label %186, label %195

186:                                              ; preds = %183
  %187 = mul i32 %.019, 2
  %188 = add i32 %187, 1
  %189 = zext i32 %173 to i64
  %190 = and i64 %189, %.116
  %191 = icmp ne i64 %190, 0
  %192 = add i32 %188, 1
  %spec.select1 = select i1 %191, i32 %192, i32 %188
  %193 = lshr i64 %.116, 1
  %194 = add i64 %.5, 1
  br label %183, !llvm.loop !17

195:                                              ; preds = %183
  %.019.lcssa = phi i32 [ %.019, %183 ]
  %196 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.27
  store i32 %.019.lcssa, ptr %196, align 4
  br label %197

197:                                              ; preds = %195, %169
  %198 = add i64 %.27, 1
  br label %167, !llvm.loop !18

199:                                              ; preds = %.preheader4, %.critedge
  %.6 = phi i64 [ %221, %.critedge ], [ 1, %.preheader4 ]
  %200 = icmp ult i64 %.6, 256
  br i1 %200, label %201, label %.preheader3

.preheader3:                                      ; preds = %199
  br label %222

201:                                              ; preds = %199
  %202 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %203 = load i32, ptr %202, align 4
  %204 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %205 = load i8, ptr %204, align 1
  br label %206

206:                                              ; preds = %213, %201
  %.38 = phi i64 [ %.6, %201 ], [ %218, %213 ]
  %207 = icmp ne i64 %.38, 0
  br i1 %207, label %208, label %.critedge

208:                                              ; preds = %206
  %209 = sub i64 %.38, 1
  %210 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %209
  %211 = load i32, ptr %210, align 4
  %212 = icmp ugt i32 %211, %203
  br i1 %212, label %213, label %.critedge

213:                                              ; preds = %208
  %214 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %211, ptr %214, align 4
  %215 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %209
  %216 = load i8, ptr %215, align 1
  %217 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %216, ptr %217, align 1
  %218 = add i64 %.38, -1
  br label %206, !llvm.loop !19

.critedge:                                        ; preds = %208, %206
  %.38.lcssa = phi i64 [ %.38, %208 ], [ %.38, %206 ]
  %219 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %203, ptr %219, align 4
  %220 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %205, ptr %220, align 1
  %221 = add i64 %.6, 1
  br label %199, !llvm.loop !20

222:                                              ; preds = %.preheader3, %226
  %.49 = phi i64 [ %227, %226 ], [ 0, %.preheader3 ]
  %223 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %224 = load i32, ptr %223, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %.preheader

.preheader:                                       ; preds = %222
  %.49.lcssa = phi i64 [ %.49, %222 ]
  br label %228

226:                                              ; preds = %222
  %227 = add i64 %.49, 1
  br label %222, !llvm.loop !21

228:                                              ; preds = %.preheader, %251
  %.235 = phi ptr [ %.336, %251 ], [ %0, %.preheader ]
  %.031 = phi ptr [ %.132, %251 ], [ %11, %.preheader ]
  %.221 = phi i32 [ %.423, %251 ], [ 0, %.preheader ]
  %.217 = phi i64 [ %.318, %251 ], [ 128, %.preheader ]
  %.313 = phi i64 [ %.414, %251 ], [ 0, %.preheader ]
  %.7 = phi i64 [ %.9, %251 ], [ %.49.lcssa, %.preheader ]
  %229 = icmp ult i64 %.313, %1
  br i1 %229, label %230, label %255

230:                                              ; preds = %228
  %231 = mul i32 %.221, 2
  %232 = add i32 %231, 1
  %233 = load i8, ptr %.031, align 1
  %234 = zext i8 %233 to i64
  %235 = and i64 %234, %.217
  %236 = icmp ne i64 %235, 0
  %237 = add i32 %232, 1
  %spec.select2 = select i1 %236, i32 %237, i32 %232
  br label %238

238:                                              ; preds = %242, %230
  %.8 = phi i64 [ %.7, %230 ], [ %243, %242 ]
  %239 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %240 = load i32, ptr %239, align 4
  %241 = icmp ult i32 %240, %spec.select2
  br i1 %241, label %242, label %244

242:                                              ; preds = %238
  %243 = add i64 %.8, 1
  br label %238, !llvm.loop !22

244:                                              ; preds = %238
  %.8.lcssa = phi i64 [ %.8, %238 ]
  %.lcssa = phi i32 [ %240, %238 ]
  %245 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %245, label %246, label %251

246:                                              ; preds = %244
  %247 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %248 = load i8, ptr %247, align 1
  store i8 %248, ptr %.235, align 1
  %249 = getelementptr inbounds nuw i8, ptr %.235, i32 1
  %250 = add i64 %.313, 1
  br label %251

251:                                              ; preds = %246, %244
  %.336 = phi ptr [ %249, %246 ], [ %.235, %244 ]
  %.423 = phi i32 [ 0, %246 ], [ %spec.select2, %244 ]
  %.414 = phi i64 [ %250, %246 ], [ %.313, %244 ]
  %.9 = phi i64 [ %.49.lcssa, %246 ], [ %.8.lcssa, %244 ]
  %252 = icmp ugt i64 %.217, 1
  %253 = lshr i64 %.217, 1
  %254 = getelementptr inbounds nuw i8, ptr %.031, i32 1
  %.132 = select i1 %252, ptr %.031, ptr %254
  %.318 = select i1 %252, i64 %253, i64 128
  br label %228, !llvm.loop !23

255:                                              ; preds = %228
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
  %.01.lcssa = phi i32 [ %.01, %10 ]
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
  %.lcssa = phi i64 [ %31, %30 ]
  %.01.lcssa1 = phi i32 [ %.01, %30 ]
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
