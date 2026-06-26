; ModuleID = 'results\paper_full\CoyoteBench_huffbench\round_000\output.ll'
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
  br i1 %13, label %14, label %22

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

22:                                               ; preds = %12, %31
  %.010 = phi i64 [ %.111, %31 ], [ 0, %12 ]
  %.13 = phi i64 [ %32, %31 ], [ 0, %12 ]
  %23 = icmp ult i64 %.13, 256
  br i1 %23, label %24, label %33

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
  %32 = add i64 %.13, 1
  br label %22, !llvm.loop !10

33:                                               ; preds = %22, %35
  %.24 = phi i64 [ %38, %35 ], [ %.010, %22 ]
  %34 = icmp ugt i64 %.24, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  %36 = trunc i64 %.010 to i32
  %37 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %36, i32 noundef %37)
  %38 = add i64 %.24, -1
  br label %33, !llvm.loop !11

39:                                               ; preds = %33, %41
  %.212 = phi i64 [ %42, %41 ], [ %.010, %33 ]
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
  %61 = add i64 256, %.212
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
  %87 = trunc i64 %.043 to i32
  %88 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 %87, ptr %88, align 4
  %89 = trunc i64 %.3 to i8
  %90 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 %89, ptr %90, align 1
  %91 = icmp ugt i64 %.043, %.045
  %spec.select = select i1 %91, i64 %.043, i64 %.045
  %92 = icmp ugt i64 %.3, %.039
  %.241 = select i1 %92, i64 %.3, i64 %.039
  br label %93

93:                                               ; preds = %86, %69
  %.146 = phi i64 [ %spec.select, %86 ], [ %.045, %69 ]
  %.140 = phi i64 [ %.241, %86 ], [ %.039, %69 ]
  %94 = add i64 %.042, 1
  br label %63, !llvm.loop !14

95:                                               ; preds = %63
  %96 = icmp ugt i64 %.039, 32
  br i1 %96, label %97, label %100

97:                                               ; preds = %95
  %98 = call ptr @__acrt_iob_func(i32 noundef 2)
  %99 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %98, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

100:                                              ; preds = %95
  %101 = icmp eq i64 %.045, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %100
  %103 = call ptr @__acrt_iob_func(i32 noundef 2)
  %104 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %103, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

105:                                              ; preds = %100, %150
  %.134 = phi ptr [ %151, %150 ], [ %0, %100 ]
  %.028 = phi i64 [ %.129, %150 ], [ 0, %100 ]
  %.024 = phi i8 [ %.125, %150 ], [ 0, %100 ]
  %.16 = phi i64 [ %152, %150 ], [ 0, %100 ]
  %.01 = phi i32 [ %.1, %150 ], [ -1, %100 ]
  %106 = icmp ult i64 %.16, %1
  br i1 %106, label %107, label %153

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

116:                                              ; preds = %138, %107
  %117 = phi i8 [ %108, %107 ], [ %139, %138 ]
  %118 = phi i8 [ %111, %107 ], [ %.pre, %138 ]
  %.129 = phi i64 [ %.028, %107 ], [ %.230, %138 ]
  %.125 = phi i8 [ %.024, %107 ], [ %.327, %138 ]
  %.015 = phi i64 [ %115, %107 ], [ %148, %138 ]
  %.4 = phi i64 [ 0, %107 ], [ %149, %138 ]
  %.1 = phi i32 [ %.01, %107 ], [ %.2, %138 ]
  %119 = zext i8 %117 to i64
  %120 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %119
  %121 = zext i8 %118 to i64
  %122 = icmp ult i64 %.4, %121
  br i1 %122, label %123, label %150

123:                                              ; preds = %116
  %124 = icmp eq i32 %.1, 7
  br i1 %124, label %125, label %133

125:                                              ; preds = %123
  %126 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %126, align 1
  %127 = add i64 %.129, 1
  %128 = icmp eq i64 %127, %1
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = call ptr @__acrt_iob_func(i32 noundef 2)
  %131 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

132:                                              ; preds = %125
  %.pre1 = load i8, ptr %.134, align 1
  %.pre2 = zext i8 %.pre1 to i64
  br label %138

133:                                              ; preds = %123
  %134 = add nsw i32 %.1, 1
  %135 = sext i8 %.125 to i32
  %136 = shl i32 %135, 1
  %137 = trunc i32 %136 to i8
  br label %138

138:                                              ; preds = %133, %132
  %.pre-phi = phi i64 [ %119, %133 ], [ %.pre2, %132 ]
  %139 = phi i8 [ %.pre1, %132 ], [ %117, %133 ]
  %.230 = phi i64 [ %127, %132 ], [ %.129, %133 ]
  %.226 = phi i8 [ 0, %132 ], [ %137, %133 ]
  %.2 = phi i32 [ 0, %132 ], [ %134, %133 ]
  %140 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.pre-phi
  %141 = load i32, ptr %140, align 4
  %142 = zext i32 %141 to i64
  %143 = and i64 %142, %.015
  %144 = icmp ne i64 %143, 0
  %145 = sext i8 %.226 to i32
  %146 = or i32 %145, 1
  %147 = trunc i32 %146 to i8
  %.327 = select i1 %144, i8 %147, i8 %.226
  %148 = lshr i64 %.015, 1
  %149 = add i64 %.4, 1
  %.phi.trans.insert = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %116, !llvm.loop !15

150:                                              ; preds = %116
  %151 = getelementptr inbounds nuw i8, ptr %.134, i32 1
  %152 = add i64 %.16, 1
  br label %105, !llvm.loop !16

153:                                              ; preds = %105
  %154 = sub nsw i32 7, %.01
  %155 = sext i8 %.024 to i32
  %156 = shl i32 %155, %154
  %157 = trunc i32 %156 to i8
  %158 = getelementptr inbounds nuw i8, ptr %11, i64 %.028
  store i8 %157, ptr %158, align 1
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 1024, i1 false)
  br label %159

159:                                              ; preds = %189, %153
  %.27 = phi i64 [ 0, %153 ], [ %190, %189 ]
  %.0 = phi ptr [ %9, %153 ], [ %163, %189 ]
  %160 = icmp ult i64 %.27, 256
  br i1 %160, label %161, label %191

161:                                              ; preds = %159
  %162 = trunc i64 %.27 to i8
  store i8 %162, ptr %.0, align 1
  %163 = getelementptr inbounds nuw i8, ptr %.0, i32 1
  %164 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %165 = load i32, ptr %164, align 4
  %166 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %167 = load i8, ptr %166, align 1
  %168 = zext i8 %167 to i32
  %169 = or i32 %165, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %189

171:                                              ; preds = %161
  %172 = sub nsw i32 %168, 1
  %173 = shl i32 1, %172
  %174 = sext i32 %173 to i64
  br label %175

175:                                              ; preds = %178, %171
  %.019 = phi i32 [ 0, %171 ], [ %spec.select3, %178 ]
  %.116 = phi i64 [ %174, %171 ], [ %185, %178 ]
  %.5 = phi i64 [ 0, %171 ], [ %186, %178 ]
  %176 = zext i8 %167 to i64
  %177 = icmp ult i64 %.5, %176
  br i1 %177, label %178, label %187

178:                                              ; preds = %175
  %179 = mul i32 %.019, 2
  %180 = add i32 %179, 1
  %181 = zext i32 %165 to i64
  %182 = and i64 %181, %.116
  %183 = icmp ne i64 %182, 0
  %184 = add i32 %180, 1
  %spec.select3 = select i1 %183, i32 %184, i32 %180
  %185 = lshr i64 %.116, 1
  %186 = add i64 %.5, 1
  br label %175, !llvm.loop !17

187:                                              ; preds = %175
  %188 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.27
  store i32 %.019, ptr %188, align 4
  br label %189

189:                                              ; preds = %187, %161
  %190 = add i64 %.27, 1
  br label %159, !llvm.loop !18

191:                                              ; preds = %159, %.critedge
  %.6 = phi i64 [ %216, %.critedge ], [ 1, %159 ]
  %192 = icmp ult i64 %.6, 256
  br i1 %192, label %193, label %217

193:                                              ; preds = %191
  %194 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %195 = load i32, ptr %194, align 4
  %196 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %197 = load i8, ptr %196, align 1
  br label %198

198:                                              ; preds = %205, %193
  %.38 = phi i64 [ %.6, %193 ], [ %213, %205 ]
  %199 = icmp ne i64 %.38, 0
  br i1 %199, label %200, label %.critedge

200:                                              ; preds = %198
  %201 = sub i64 %.38, 1
  %202 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %201
  %203 = load i32, ptr %202, align 4
  %204 = icmp ugt i32 %203, %195
  br i1 %204, label %205, label %.critedge

205:                                              ; preds = %200
  %206 = sub i64 %.38, 1
  %207 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %206
  %208 = load i32, ptr %207, align 4
  %209 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %208, ptr %209, align 4
  %210 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %206
  %211 = load i8, ptr %210, align 1
  %212 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %211, ptr %212, align 1
  %213 = add i64 %.38, -1
  br label %198, !llvm.loop !19

.critedge:                                        ; preds = %198, %200
  %214 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %195, ptr %214, align 4
  %215 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %197, ptr %215, align 1
  %216 = add i64 %.6, 1
  br label %191, !llvm.loop !20

217:                                              ; preds = %191, %221
  %.49 = phi i64 [ %222, %221 ], [ 0, %191 ]
  %218 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %219 = load i32, ptr %218, align 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %217
  %222 = add i64 %.49, 1
  br label %217, !llvm.loop !21

223:                                              ; preds = %217, %246
  %.235 = phi ptr [ %.336, %246 ], [ %0, %217 ]
  %.031 = phi ptr [ %.132, %246 ], [ %11, %217 ]
  %.221 = phi i32 [ %.423, %246 ], [ 0, %217 ]
  %.217 = phi i64 [ %.318, %246 ], [ 128, %217 ]
  %.313 = phi i64 [ %.414, %246 ], [ 0, %217 ]
  %.7 = phi i64 [ %.9, %246 ], [ %.49, %217 ]
  %224 = icmp ult i64 %.313, %1
  br i1 %224, label %225, label %250

225:                                              ; preds = %223
  %226 = mul i32 %.221, 2
  %227 = add i32 %226, 1
  %228 = load i8, ptr %.031, align 1
  %229 = zext i8 %228 to i64
  %230 = and i64 %229, %.217
  %231 = icmp ne i64 %230, 0
  %232 = add i32 %227, 1
  %spec.select4 = select i1 %231, i32 %232, i32 %227
  br label %233

233:                                              ; preds = %237, %225
  %.8 = phi i64 [ %.7, %225 ], [ %238, %237 ]
  %234 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %235 = load i32, ptr %234, align 4
  %236 = icmp ult i32 %235, %spec.select4
  br i1 %236, label %237, label %239

237:                                              ; preds = %233
  %238 = add i64 %.8, 1
  br label %233, !llvm.loop !22

239:                                              ; preds = %233
  %240 = icmp eq i32 %spec.select4, %235
  br i1 %240, label %241, label %246

241:                                              ; preds = %239
  %242 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8
  %243 = load i8, ptr %242, align 1
  store i8 %243, ptr %.235, align 1
  %244 = getelementptr inbounds nuw i8, ptr %.235, i32 1
  %245 = add i64 %.313, 1
  br label %246

246:                                              ; preds = %241, %239
  %.336 = phi ptr [ %244, %241 ], [ %.235, %239 ]
  %.423 = phi i32 [ 0, %241 ], [ %spec.select4, %239 ]
  %.414 = phi i64 [ %245, %241 ], [ %.313, %239 ]
  %.9 = phi i64 [ %.49, %241 ], [ %.8, %239 ]
  %247 = icmp ugt i64 %.217, 1
  %248 = lshr i64 %.217, 1
  %249 = getelementptr inbounds nuw i8, ptr %.031, i32 1
  %.132 = select i1 %247, ptr %.031, ptr %249
  %.318 = select i1 %247, i64 %248, i64 128
  br label %223, !llvm.loop !23

250:                                              ; preds = %223
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
  br i1 %40, label %45, label %41

41:                                               ; preds = %30
  %42 = sub nsw i32 %.01, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, ptr %1, i64 %43
  store i64 %37, ptr %44, align 8
  br label %10, !llvm.loop !24

45:                                               ; preds = %30, %._crit_edge
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %31, %30 ]
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
  br i1 %3, label %4, label %13

4:                                                ; preds = %2, %11
  %.01 = phi i32 [ %12, %11 ], [ 1, %2 ]
  %5 = icmp slt i32 %.01, %0
  br i1 %5, label %6, label %13

6:                                                ; preds = %4
  %7 = getelementptr inbounds ptr, ptr %1, i64 1
  %8 = load ptr, ptr %7, align 8
  %9 = call i32 @strcmp(ptr noundef %8, ptr noundef @.str.4) #7
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = add nsw i32 %.01, 1
  br label %4, !llvm.loop !25

13:                                               ; preds = %4, %6, %2
  %.0 = phi i8 [ 0, %2 ], [ 0, %4 ], [ 1, %6 ]
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
  store i32 %2, ptr @seed, align 4
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
