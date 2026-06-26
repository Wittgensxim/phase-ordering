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

31:                                               ; preds = %24, %28
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
  br i1 %40, label %41, label %61

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
  %59 = load i64, ptr %4, align 16
  %60 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %59
  store i32 %58, ptr %60, align 4
  store i64 %53, ptr %4, align 16
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %46, i32 noundef 1)
  br label %39, !llvm.loop !12

61:                                               ; preds = %39
  %62 = add i64 256, %.212
  %63 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %62
  store i32 0, ptr %63, align 4
  br label %64

64:                                               ; preds = %94, %61
  %.045 = phi i64 [ 0, %61 ], [ %.146, %94 ]
  %.042 = phi i64 [ 0, %61 ], [ %95, %94 ]
  %.039 = phi i64 [ 0, %61 ], [ %.140, %94 ]
  %65 = icmp ult i64 %.042, 256
  br i1 %65, label %66, label %96

66:                                               ; preds = %64
  %67 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.042
  %68 = load i64, ptr %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 0, ptr %71, align 4
  %72 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 0, ptr %72, align 1
  br label %94

73:                                               ; preds = %66
  %74 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.042
  %75 = load i32, ptr %74, align 4
  br label %76

76:                                               ; preds = %78, %73
  %.043 = phi i64 [ 0, %73 ], [ %.144, %78 ]
  %.037 = phi i32 [ %75, %73 ], [ %84, %78 ]
  %.05 = phi i64 [ 1, %73 ], [ %85, %78 ]
  %.3 = phi i64 [ 0, %73 ], [ %86, %78 ]
  %77 = icmp ne i32 %.037, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %76
  %79 = icmp slt i32 %.037, 0
  %80 = add i64 %.043, %.05
  %81 = sub nsw i32 0, %.037
  %.144 = select i1 %79, i64 %80, i64 %.043
  %.138 = select i1 %79, i32 %81, i32 %.037
  %82 = sext i32 %.138 to i64
  %83 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %82
  %84 = load i32, ptr %83, align 4
  %85 = shl i64 %.05, 1
  %86 = add i64 %.3, 1
  br label %76, !llvm.loop !13

87:                                               ; preds = %76
  %88 = trunc i64 %.043 to i32
  %89 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 %88, ptr %89, align 4
  %90 = trunc i64 %.3 to i8
  %91 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 %90, ptr %91, align 1
  %92 = icmp ugt i64 %.043, %.045
  %spec.select = select i1 %92, i64 %.043, i64 %.045
  %93 = icmp ugt i64 %.3, %.039
  %.241 = select i1 %93, i64 %.3, i64 %.039
  br label %94

94:                                               ; preds = %70, %87
  %.146 = phi i64 [ %spec.select, %87 ], [ %.045, %70 ]
  %.140 = phi i64 [ %.241, %87 ], [ %.039, %70 ]
  %95 = add i64 %.042, 1
  br label %64, !llvm.loop !14

96:                                               ; preds = %64
  %97 = icmp ugt i64 %.039, 32
  br i1 %97, label %98, label %101

98:                                               ; preds = %96
  %99 = call ptr @__acrt_iob_func(i32 noundef 2)
  %100 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %99, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

101:                                              ; preds = %96
  %102 = icmp eq i64 %.045, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %101
  %104 = call ptr @__acrt_iob_func(i32 noundef 2)
  %105 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %104, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

106:                                              ; preds = %101, %151
  %.134 = phi ptr [ %152, %151 ], [ %0, %101 ]
  %.028 = phi i64 [ %.129, %151 ], [ 0, %101 ]
  %.024 = phi i8 [ %.125, %151 ], [ 0, %101 ]
  %.16 = phi i64 [ %153, %151 ], [ 0, %101 ]
  %.01 = phi i32 [ %.1, %151 ], [ -1, %101 ]
  %107 = icmp ult i64 %.16, %1
  br i1 %107, label %108, label %154

108:                                              ; preds = %106
  %109 = load i8, ptr %.134, align 1
  %110 = zext i8 %109 to i64
  %111 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %110
  %112 = load i8, ptr %111, align 1
  %113 = zext i8 %112 to i32
  %114 = sub nsw i32 %113, 1
  %115 = shl i32 1, %114
  %116 = sext i32 %115 to i64
  br label %117

117:                                              ; preds = %138, %108
  %.129 = phi i64 [ %.028, %108 ], [ %.230, %138 ]
  %.125 = phi i8 [ %.024, %108 ], [ %.327, %138 ]
  %.015 = phi i64 [ %116, %108 ], [ %149, %138 ]
  %.4 = phi i64 [ 0, %108 ], [ %150, %138 ]
  %.1 = phi i32 [ %.01, %108 ], [ %.2, %138 ]
  %118 = load i8, ptr %.134, align 1
  %119 = zext i8 %118 to i64
  %120 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %119
  %121 = load i8, ptr %120, align 1
  %122 = zext i8 %121 to i64
  %123 = icmp ult i64 %.4, %122
  br i1 %123, label %124, label %151

124:                                              ; preds = %117
  %125 = icmp eq i32 %.1, 7
  br i1 %125, label %126, label %133

126:                                              ; preds = %124
  %127 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %127, align 1
  %128 = add i64 %.129, 1
  %129 = icmp eq i64 %128, %1
  br i1 %129, label %130, label %138

130:                                              ; preds = %126
  %131 = call ptr @__acrt_iob_func(i32 noundef 2)
  %132 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %131, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

133:                                              ; preds = %124
  %134 = add nsw i32 %.1, 1
  %135 = sext i8 %.125 to i32
  %136 = shl i32 %135, 1
  %137 = trunc i32 %136 to i8
  br label %138

138:                                              ; preds = %126, %133
  %.230 = phi i64 [ %.129, %133 ], [ %128, %126 ]
  %.226 = phi i8 [ %137, %133 ], [ 0, %126 ]
  %.2 = phi i32 [ %134, %133 ], [ 0, %126 ]
  %139 = load i8, ptr %.134, align 1
  %140 = zext i8 %139 to i64
  %141 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %140
  %142 = load i32, ptr %141, align 4
  %143 = zext i32 %142 to i64
  %144 = and i64 %143, %.015
  %145 = icmp ne i64 %144, 0
  %146 = sext i8 %.226 to i32
  %147 = or i32 %146, 1
  %148 = trunc i32 %147 to i8
  %.327 = select i1 %145, i8 %148, i8 %.226
  %149 = lshr i64 %.015, 1
  %150 = add i64 %.4, 1
  br label %117, !llvm.loop !15

151:                                              ; preds = %117
  %152 = getelementptr inbounds nuw i8, ptr %.134, i32 1
  %153 = add i64 %.16, 1
  br label %106, !llvm.loop !16

154:                                              ; preds = %106
  %155 = sub nsw i32 7, %.01
  %156 = sext i8 %.024 to i32
  %157 = shl i32 %156, %155
  %158 = trunc i32 %157 to i8
  %159 = getelementptr inbounds nuw i8, ptr %11, i64 %.028
  store i8 %158, ptr %159, align 1
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 1024, i1 false)
  br label %160

160:                                              ; preds = %192, %154
  %.27 = phi i64 [ 0, %154 ], [ %193, %192 ]
  %.0 = phi ptr [ %9, %154 ], [ %164, %192 ]
  %161 = icmp ult i64 %.27, 256
  br i1 %161, label %162, label %194

162:                                              ; preds = %160
  %163 = trunc i64 %.27 to i8
  store i8 %163, ptr %.0, align 1
  %164 = getelementptr inbounds nuw i8, ptr %.0, i32 1
  %165 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %166 = load i32, ptr %165, align 4
  %167 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %168 = load i8, ptr %167, align 1
  %169 = zext i8 %168 to i32
  %170 = or i32 %166, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %192

172:                                              ; preds = %162
  %173 = sub nsw i32 %169, 1
  %174 = shl i32 1, %173
  %175 = sext i32 %174 to i64
  br label %176

176:                                              ; preds = %180, %172
  %.019 = phi i32 [ 0, %172 ], [ %spec.select1, %180 ]
  %.116 = phi i64 [ %175, %172 ], [ %188, %180 ]
  %.5 = phi i64 [ 0, %172 ], [ %189, %180 ]
  %177 = load i8, ptr %167, align 1
  %178 = zext i8 %177 to i64
  %179 = icmp ult i64 %.5, %178
  br i1 %179, label %180, label %190

180:                                              ; preds = %176
  %181 = mul i32 %.019, 2
  %182 = add i32 %181, 1
  %183 = load i32, ptr %165, align 4
  %184 = zext i32 %183 to i64
  %185 = and i64 %184, %.116
  %186 = icmp ne i64 %185, 0
  %187 = add i32 %182, 1
  %spec.select1 = select i1 %186, i32 %187, i32 %182
  %188 = lshr i64 %.116, 1
  %189 = add i64 %.5, 1
  br label %176, !llvm.loop !17

190:                                              ; preds = %176
  %191 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.27
  store i32 %.019, ptr %191, align 4
  br label %192

192:                                              ; preds = %162, %190
  %193 = add i64 %.27, 1
  br label %160, !llvm.loop !18

194:                                              ; preds = %160, %.critedge
  %.6 = phi i64 [ %216, %.critedge ], [ 1, %160 ]
  %195 = icmp ult i64 %.6, 256
  br i1 %195, label %196, label %217

196:                                              ; preds = %194
  %197 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %198 = load i32, ptr %197, align 4
  %199 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %200 = load i8, ptr %199, align 1
  br label %201

201:                                              ; preds = %208, %196
  %.38 = phi i64 [ %.6, %196 ], [ %213, %208 ]
  %202 = icmp ne i64 %.38, 0
  br i1 %202, label %203, label %.critedge

203:                                              ; preds = %201
  %204 = sub i64 %.38, 1
  %205 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %204
  %206 = load i32, ptr %205, align 4
  %207 = icmp ugt i32 %206, %198
  br i1 %207, label %208, label %.critedge

208:                                              ; preds = %203
  %209 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %206, ptr %209, align 4
  %210 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %204
  %211 = load i8, ptr %210, align 1
  %212 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %211, ptr %212, align 1
  %213 = add i64 %.38, -1
  br label %201, !llvm.loop !19

.critedge:                                        ; preds = %201, %203
  %214 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %198, ptr %214, align 4
  %215 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %200, ptr %215, align 1
  %216 = add i64 %.6, 1
  br label %194, !llvm.loop !20

217:                                              ; preds = %194, %221
  %.49 = phi i64 [ %222, %221 ], [ 0, %194 ]
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
  %spec.select2 = select i1 %231, i32 %232, i32 %227
  br label %233

233:                                              ; preds = %237, %225
  %.8 = phi i64 [ %.7, %225 ], [ %238, %237 ]
  %234 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %235 = load i32, ptr %234, align 4
  %236 = icmp ult i32 %235, %spec.select2
  br i1 %236, label %237, label %239

237:                                              ; preds = %233
  %238 = add i64 %.8, 1
  br label %233, !llvm.loop !22

239:                                              ; preds = %233
  %240 = icmp eq i32 %spec.select2, %235
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
  %.423 = phi i32 [ 0, %241 ], [ %spec.select2, %239 ]
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
