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

.preheader6:                                      ; preds = %12, %30
  %.010 = phi i64 [ %.111, %30 ], [ 0, %12 ]
  %.13 = phi i64 [ %31, %30 ], [ 0, %12 ]
  %22 = icmp ult i64 %.13, 256
  br i1 %22, label %23, label %.preheader5

23:                                               ; preds = %.preheader6
  %24 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.13
  %25 = load i64, ptr %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.010
  store i64 %.13, ptr %28, align 8
  %29 = add i64 %.010, 1
  br label %30

30:                                               ; preds = %27, %23
  %.111 = phi i64 [ %29, %27 ], [ %.010, %23 ]
  %31 = add i64 %.13, 1
  br label %.preheader6, !llvm.loop !10

.preheader5:                                      ; preds = %.preheader6, %33
  %.24 = phi i64 [ %36, %33 ], [ %.010, %.preheader6 ]
  %32 = icmp ugt i64 %.24, 0
  br i1 %32, label %33, label %.preheader4

33:                                               ; preds = %.preheader5
  %34 = trunc i64 %.010 to i32
  %35 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %34, i32 noundef %35)
  %36 = add i64 %.24, -1
  br label %.preheader5, !llvm.loop !11

.preheader4:                                      ; preds = %.preheader5, %38
  %.212 = phi i64 [ %39, %38 ], [ %.010, %.preheader5 ]
  %37 = icmp ugt i64 %.212, 1
  br i1 %37, label %38, label %58

38:                                               ; preds = %.preheader4
  %39 = add i64 %.212, -1
  %40 = load i64, ptr %4, align 16
  %41 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %39
  %42 = load i64, ptr %41, align 8
  store i64 %42, ptr %4, align 16
  %43 = trunc i64 %39 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %43, i32 noundef 1)
  %44 = load i64, ptr %4, align 16
  %45 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %44
  %46 = load i64, ptr %45, align 8
  %47 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %40
  %48 = load i64, ptr %47, align 8
  %49 = add i64 %46, %48
  %50 = add i64 256, %39
  %51 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %50
  store i64 %49, ptr %51, align 8
  %52 = trunc i64 %50 to i32
  %53 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %40
  store i32 %52, ptr %53, align 4
  %54 = sub i64 -256, %39
  %55 = trunc i64 %54 to i32
  %56 = load i64, ptr %4, align 16
  %57 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %56
  store i32 %55, ptr %57, align 4
  store i64 %50, ptr %4, align 16
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %43, i32 noundef 1)
  br label %.preheader4, !llvm.loop !12

58:                                               ; preds = %.preheader4
  %59 = add i64 256, %.212
  %60 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %59
  store i32 0, ptr %60, align 4
  br label %61

61:                                               ; preds = %91, %58
  %.045 = phi i64 [ 0, %58 ], [ %.146, %91 ]
  %.042 = phi i64 [ 0, %58 ], [ %92, %91 ]
  %.039 = phi i64 [ 0, %58 ], [ %.140, %91 ]
  %62 = icmp ult i64 %.042, 256
  br i1 %62, label %63, label %93

63:                                               ; preds = %61
  %64 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.042
  %65 = load i64, ptr %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 0, ptr %68, align 4
  %69 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 0, ptr %69, align 1
  br label %91

70:                                               ; preds = %63
  %71 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.042
  %72 = load i32, ptr %71, align 4
  br label %73

73:                                               ; preds = %75, %70
  %.043 = phi i64 [ 0, %70 ], [ %.144, %75 ]
  %.037 = phi i32 [ %72, %70 ], [ %81, %75 ]
  %.05 = phi i64 [ 1, %70 ], [ %82, %75 ]
  %.3 = phi i64 [ 0, %70 ], [ %83, %75 ]
  %74 = icmp ne i32 %.037, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %73
  %76 = icmp slt i32 %.037, 0
  %77 = add i64 %.043, %.05
  %78 = sub nsw i32 0, %.037
  %.144 = select i1 %76, i64 %77, i64 %.043
  %.138 = select i1 %76, i32 %78, i32 %.037
  %79 = sext i32 %.138 to i64
  %80 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %79
  %81 = load i32, ptr %80, align 4
  %82 = shl i64 %.05, 1
  %83 = add i64 %.3, 1
  br label %73, !llvm.loop !13

84:                                               ; preds = %73
  %85 = trunc i64 %.043 to i32
  %86 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 %85, ptr %86, align 4
  %87 = trunc i64 %.3 to i8
  %88 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 %87, ptr %88, align 1
  %89 = icmp ugt i64 %.043, %.045
  %spec.select = select i1 %89, i64 %.043, i64 %.045
  %90 = icmp ugt i64 %.3, %.039
  %.241 = select i1 %90, i64 %.3, i64 %.039
  br label %91

91:                                               ; preds = %84, %67
  %.146 = phi i64 [ %spec.select, %84 ], [ %.045, %67 ]
  %.140 = phi i64 [ %.241, %84 ], [ %.039, %67 ]
  %92 = add i64 %.042, 1
  br label %61, !llvm.loop !14

93:                                               ; preds = %61
  %94 = icmp ugt i64 %.039, 32
  br i1 %94, label %95, label %98

95:                                               ; preds = %93
  %96 = call ptr @__acrt_iob_func(i32 noundef 2)
  %97 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %96, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

98:                                               ; preds = %93
  %99 = icmp eq i64 %.045, 0
  br i1 %99, label %100, label %.preheader3

100:                                              ; preds = %98
  %101 = call ptr @__acrt_iob_func(i32 noundef 2)
  %102 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %101, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

.preheader3:                                      ; preds = %98, %147
  %.134 = phi ptr [ %148, %147 ], [ %0, %98 ]
  %.028 = phi i64 [ %.129, %147 ], [ 0, %98 ]
  %.024 = phi i8 [ %.125, %147 ], [ 0, %98 ]
  %.16 = phi i64 [ %149, %147 ], [ 0, %98 ]
  %.01 = phi i32 [ %.1, %147 ], [ -1, %98 ]
  %103 = icmp ult i64 %.16, %1
  br i1 %103, label %104, label %150

104:                                              ; preds = %.preheader3
  %105 = load i8, ptr %.134, align 1
  %106 = zext i8 %105 to i64
  %107 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %106
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %108 to i32
  %110 = sub nsw i32 %109, 1
  %111 = shl i32 1, %110
  %112 = sext i32 %111 to i64
  br label %113

113:                                              ; preds = %134, %104
  %.129 = phi i64 [ %.028, %104 ], [ %.230, %134 ]
  %.125 = phi i8 [ %.024, %104 ], [ %.327, %134 ]
  %.015 = phi i64 [ %112, %104 ], [ %145, %134 ]
  %.4 = phi i64 [ 0, %104 ], [ %146, %134 ]
  %.1 = phi i32 [ %.01, %104 ], [ %.2, %134 ]
  %114 = load i8, ptr %.134, align 1
  %115 = zext i8 %114 to i64
  %116 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %115
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i64
  %119 = icmp ult i64 %.4, %118
  br i1 %119, label %120, label %147

120:                                              ; preds = %113
  %121 = icmp eq i32 %.1, 7
  br i1 %121, label %122, label %129

122:                                              ; preds = %120
  %123 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %123, align 1
  %124 = add i64 %.129, 1
  %125 = icmp eq i64 %124, %1
  br i1 %125, label %126, label %134

126:                                              ; preds = %122
  %127 = call ptr @__acrt_iob_func(i32 noundef 2)
  %128 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

129:                                              ; preds = %120
  %130 = add nsw i32 %.1, 1
  %131 = sext i8 %.125 to i32
  %132 = shl i32 %131, 1
  %133 = trunc i32 %132 to i8
  br label %134

134:                                              ; preds = %129, %122
  %.230 = phi i64 [ %.129, %129 ], [ %124, %122 ]
  %.226 = phi i8 [ %133, %129 ], [ 0, %122 ]
  %.2 = phi i32 [ %130, %129 ], [ 0, %122 ]
  %135 = load i8, ptr %.134, align 1
  %136 = zext i8 %135 to i64
  %137 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %136
  %138 = load i32, ptr %137, align 4
  %139 = zext i32 %138 to i64
  %140 = and i64 %139, %.015
  %141 = icmp ne i64 %140, 0
  %142 = sext i8 %.226 to i32
  %143 = or i32 %142, 1
  %144 = trunc i32 %143 to i8
  %.327 = select i1 %141, i8 %144, i8 %.226
  %145 = lshr i64 %.015, 1
  %146 = add i64 %.4, 1
  br label %113, !llvm.loop !15

147:                                              ; preds = %113
  %148 = getelementptr inbounds nuw i8, ptr %.134, i32 1
  %149 = add i64 %.16, 1
  br label %.preheader3, !llvm.loop !16

150:                                              ; preds = %.preheader3
  %151 = sub nsw i32 7, %.01
  %152 = sext i8 %.024 to i32
  %153 = shl i32 %152, %151
  %154 = trunc i32 %153 to i8
  %155 = getelementptr inbounds nuw i8, ptr %11, i64 %.028
  store i8 %154, ptr %155, align 1
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 1024, i1 false)
  br label %156

156:                                              ; preds = %188, %150
  %.27 = phi i64 [ 0, %150 ], [ %189, %188 ]
  %.0 = phi ptr [ %9, %150 ], [ %160, %188 ]
  %157 = icmp ult i64 %.27, 256
  br i1 %157, label %158, label %.preheader2

158:                                              ; preds = %156
  %159 = trunc i64 %.27 to i8
  store i8 %159, ptr %.0, align 1
  %160 = getelementptr inbounds nuw i8, ptr %.0, i32 1
  %161 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %162 = load i32, ptr %161, align 4
  %163 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %164 = load i8, ptr %163, align 1
  %165 = zext i8 %164 to i32
  %166 = or i32 %162, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %188

168:                                              ; preds = %158
  %169 = sub nsw i32 %165, 1
  %170 = shl i32 1, %169
  %171 = sext i32 %170 to i64
  br label %172

172:                                              ; preds = %176, %168
  %.019 = phi i32 [ 0, %168 ], [ %spec.select1, %176 ]
  %.116 = phi i64 [ %171, %168 ], [ %184, %176 ]
  %.5 = phi i64 [ 0, %168 ], [ %185, %176 ]
  %173 = load i8, ptr %163, align 1
  %174 = zext i8 %173 to i64
  %175 = icmp ult i64 %.5, %174
  br i1 %175, label %176, label %186

176:                                              ; preds = %172
  %177 = mul i32 %.019, 2
  %178 = add i32 %177, 1
  %179 = load i32, ptr %161, align 4
  %180 = zext i32 %179 to i64
  %181 = and i64 %180, %.116
  %182 = icmp ne i64 %181, 0
  %183 = add i32 %178, 1
  %spec.select1 = select i1 %182, i32 %183, i32 %178
  %184 = lshr i64 %.116, 1
  %185 = add i64 %.5, 1
  br label %172, !llvm.loop !17

186:                                              ; preds = %172
  %187 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.27
  store i32 %.019, ptr %187, align 4
  br label %188

188:                                              ; preds = %186, %158
  %189 = add i64 %.27, 1
  br label %156, !llvm.loop !18

.preheader2:                                      ; preds = %156, %.critedge
  %.6 = phi i64 [ %211, %.critedge ], [ 1, %156 ]
  %190 = icmp ult i64 %.6, 256
  br i1 %190, label %191, label %.preheader1

191:                                              ; preds = %.preheader2
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
  %209 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %193, ptr %209, align 4
  %210 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %195, ptr %210, align 1
  %211 = add i64 %.6, 1
  br label %.preheader2, !llvm.loop !20

.preheader1:                                      ; preds = %.preheader2, %215
  %.49 = phi i64 [ %216, %215 ], [ 0, %.preheader2 ]
  %212 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %213 = load i32, ptr %212, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %.preheader

215:                                              ; preds = %.preheader1
  %216 = add i64 %.49, 1
  br label %.preheader1, !llvm.loop !21

.preheader:                                       ; preds = %.preheader1, %239
  %.235 = phi ptr [ %.336, %239 ], [ %0, %.preheader1 ]
  %.031 = phi ptr [ %.132, %239 ], [ %11, %.preheader1 ]
  %.221 = phi i32 [ %.423, %239 ], [ 0, %.preheader1 ]
  %.217 = phi i64 [ %.318, %239 ], [ 128, %.preheader1 ]
  %.313 = phi i64 [ %.414, %239 ], [ 0, %.preheader1 ]
  %.7 = phi i64 [ %.9, %239 ], [ %.49, %.preheader1 ]
  %217 = icmp ult i64 %.313, %1
  br i1 %217, label %218, label %243

218:                                              ; preds = %.preheader
  %219 = mul i32 %.221, 2
  %220 = add i32 %219, 1
  %221 = load i8, ptr %.031, align 1
  %222 = zext i8 %221 to i64
  %223 = and i64 %222, %.217
  %224 = icmp ne i64 %223, 0
  %225 = add i32 %220, 1
  %spec.select2 = select i1 %224, i32 %225, i32 %220
  br label %226

226:                                              ; preds = %230, %218
  %.8 = phi i64 [ %.7, %218 ], [ %231, %230 ]
  %227 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %228 = load i32, ptr %227, align 4
  %229 = icmp ult i32 %228, %spec.select2
  br i1 %229, label %230, label %232

230:                                              ; preds = %226
  %231 = add i64 %.8, 1
  br label %226, !llvm.loop !22

232:                                              ; preds = %226
  %233 = icmp eq i32 %spec.select2, %228
  br i1 %233, label %234, label %239

234:                                              ; preds = %232
  %235 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8
  %236 = load i8, ptr %235, align 1
  store i8 %236, ptr %.235, align 1
  %237 = getelementptr inbounds nuw i8, ptr %.235, i32 1
  %238 = add i64 %.313, 1
  br label %239

239:                                              ; preds = %234, %232
  %.336 = phi ptr [ %237, %234 ], [ %.235, %232 ]
  %.423 = phi i32 [ 0, %234 ], [ %spec.select2, %232 ]
  %.414 = phi i64 [ %238, %234 ], [ %.313, %232 ]
  %.9 = phi i64 [ %.49, %234 ], [ %.8, %232 ]
  %240 = icmp ugt i64 %.217, 1
  %241 = lshr i64 %.217, 1
  %242 = getelementptr inbounds nuw i8, ptr %.031, i32 1
  %.132 = select i1 %240, ptr %.031, ptr %242
  %.318 = select i1 %240, i64 %241, i64 128
  br label %.preheader, !llvm.loop !23

243:                                              ; preds = %.preheader
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
  br i1 %12, label %13, label %45

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

45:                                               ; preds = %30, %10
  %46 = sext i32 %9 to i64
  %47 = sub nsw i32 %.01, 1
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
