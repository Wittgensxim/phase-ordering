; ModuleID = 'results\paper_full\CoyoteBench_huffbench\CoyoteBench_huffbench.ll'
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
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store i64 %0, ptr %2, align 8
  store ptr @.str, ptr %3, align 8
  %7 = call ptr @malloc(i64 noundef %0) #6
  store ptr %7, ptr %4, align 8
  store ptr %7, ptr %5, align 8
  store i32 0, ptr %6, align 4
  br label %8

8:                                                ; preds = %10, %1
  %indvars.iv = phi i64 [ %indvars.iv.next, %10 ], [ 0, %1 ]
  %9 = phi ptr [ %14, %10 ], [ %7, %1 ]
  %exitcond = icmp ne i64 %indvars.iv, %0
  br i1 %exitcond, label %10, label %16

10:                                               ; preds = %8
  %11 = call i64 @random4()
  %12 = getelementptr inbounds nuw i8, ptr @.str, i64 %11
  %13 = load i8, ptr %12, align 1
  store i8 %13, ptr %9, align 1
  %14 = getelementptr inbounds nuw i8, ptr %9, i32 1
  store ptr %14, ptr %5, align 8
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %15 = trunc nsw i64 %indvars.iv.next to i32
  store i32 %15, ptr %6, align 4
  br label %8, !llvm.loop !7

16:                                               ; preds = %8
  ret ptr %7
}

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @compdecomp(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca [512 x i64], align 16
  %16 = alloca [256 x i64], align 16
  %17 = alloca [512 x i32], align 16
  %18 = alloca [256 x i32], align 16
  %19 = alloca [256 x i8], align 16
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i8, align 1
  %28 = alloca i32, align 4
  %29 = alloca [256 x i32], align 16
  %30 = alloca [256 x i8], align 16
  %31 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  store ptr %0, ptr %13, align 8
  %32 = add i64 %1, 1
  %33 = call ptr @malloc(i64 noundef %32) #6
  store ptr %33, ptr %14, align 8
  call void @llvm.memset.p0.i64(ptr align 1 %33, i8 0, i64 %32, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %15, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %16, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %17, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %18, i8 0, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %19, i8 0, i64 256, i1 false)
  store i64 0, ptr %5, align 8
  br label %34

34:                                               ; preds = %37, %2
  %35 = phi ptr [ %43, %37 ], [ %0, %2 ]
  %36 = phi i64 [ %44, %37 ], [ 0, %2 ]
  %exitcond = icmp ne i64 %36, %1
  br i1 %exitcond, label %37, label %45

37:                                               ; preds = %34
  %38 = load i8, ptr %35, align 1
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %39
  %41 = load i64, ptr %40, align 8
  %42 = add i64 %41, 1
  store i64 %42, ptr %40, align 8
  %43 = getelementptr inbounds nuw i8, ptr %35, i32 1
  store ptr %43, ptr %13, align 8
  %44 = add i64 %36, 1
  store i64 %44, ptr %5, align 8
  br label %34, !llvm.loop !9

45:                                               ; preds = %34
  store i64 0, ptr %7, align 8
  store i64 0, ptr %5, align 8
  br label %46

46:                                               ; preds = %56, %45
  %47 = phi i64 [ %57, %56 ], [ 0, %45 ]
  %48 = phi i64 [ %58, %56 ], [ 0, %45 ]
  %exitcond35 = icmp ne i64 %48, 256
  br i1 %exitcond35, label %49, label %59

49:                                               ; preds = %46
  %50 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %48
  %51 = load i64, ptr %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %47
  store i64 %48, ptr %54, align 8
  %55 = add i64 %47, 1
  store i64 %55, ptr %7, align 8
  br label %56

56:                                               ; preds = %53, %49
  %57 = phi i64 [ %55, %53 ], [ %47, %49 ]
  %58 = add nuw nsw i64 %48, 1
  store i64 %58, ptr %5, align 8
  br label %46, !llvm.loop !10

59:                                               ; preds = %46
  %.lcssa34 = phi i64 [ %47, %46 ]
  store i64 %.lcssa34, ptr %5, align 8
  br label %60

60:                                               ; preds = %63, %59
  %61 = phi i64 [ %66, %63 ], [ %.lcssa34, %59 ]
  %62 = icmp ugt i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = trunc i64 %.lcssa34 to i32
  %65 = trunc i64 %61 to i32
  call void @heap_adjust(ptr noundef %15, ptr noundef %16, i32 noundef %64, i32 noundef %65)
  %66 = add i64 %61, -1
  store i64 %66, ptr %5, align 8
  br label %60, !llvm.loop !11

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %71, %67
  %69 = phi i64 [ %72, %71 ], [ %.lcssa34, %67 ]
  %70 = icmp ugt i64 %69, 1
  br i1 %70, label %71, label %90

71:                                               ; preds = %68
  %72 = add i64 %69, -1
  store i64 %72, ptr %7, align 8
  %73 = load i64, ptr %16, align 16
  store i64 %73, ptr %20, align 8
  %74 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %72
  %75 = load i64, ptr %74, align 8
  store i64 %75, ptr %16, align 16
  %76 = trunc i64 %72 to i32
  call void @heap_adjust(ptr noundef %15, ptr noundef %16, i32 noundef %76, i32 noundef 1)
  %77 = load i64, ptr %16, align 16
  %78 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %77
  %79 = load i64, ptr %78, align 8
  %80 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %73
  %81 = load i64, ptr %80, align 8
  %82 = add i64 %79, %81
  %83 = add i64 256, %72
  %84 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %83
  store i64 %82, ptr %84, align 8
  %85 = trunc i64 %83 to i32
  %86 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %73
  store i32 %85, ptr %86, align 4
  %87 = sub i64 -256, %72
  %88 = trunc i64 %87 to i32
  %89 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %77
  store i32 %88, ptr %89, align 4
  store i64 %83, ptr %16, align 16
  call void @heap_adjust(ptr noundef %15, ptr noundef %16, i32 noundef %76, i32 noundef 1)
  br label %68, !llvm.loop !12

90:                                               ; preds = %68
  %.lcssa33 = phi i64 [ %69, %68 ]
  %91 = add i64 256, %.lcssa33
  %92 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %91
  store i32 0, ptr %92, align 4
  store i64 0, ptr %23, align 8
  store i64 0, ptr %24, align 8
  store i64 0, ptr %21, align 8
  br label %93

93:                                               ; preds = %141, %90
  %94 = phi i64 [ %142, %141 ], [ 0, %90 ]
  %95 = phi i64 [ %143, %141 ], [ 0, %90 ]
  %96 = phi i64 [ %144, %141 ], [ 0, %90 ]
  %97 = phi i64 [ %145, %141 ], [ 0, %90 ]
  %98 = phi i64 [ %146, %141 ], [ 0, %90 ]
  %exitcond36 = icmp ne i64 %98, 256
  br i1 %exitcond36, label %99, label %147

99:                                               ; preds = %93
  %100 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %98
  %101 = load i64, ptr %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %98
  store i32 0, ptr %104, align 4
  %105 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %98
  store i8 0, ptr %105, align 1
  br label %141

106:                                              ; preds = %99
  store i64 0, ptr %5, align 8
  store i64 1, ptr %6, align 8
  store i64 0, ptr %22, align 8
  %107 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %98
  %108 = load i32, ptr %107, align 4
  store i32 %108, ptr %25, align 4
  br label %109

109:                                              ; preds = %120, %106
  %110 = phi i64 [ %126, %120 ], [ 1, %106 ]
  %111 = phi i64 [ %127, %120 ], [ 0, %106 ]
  %112 = phi i64 [ %122, %120 ], [ 0, %106 ]
  %113 = phi i32 [ %125, %120 ], [ %108, %106 ]
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %109
  %116 = icmp slt i32 %113, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %115
  %118 = add i64 %112, %110
  store i64 %118, ptr %22, align 8
  %119 = sub nsw i32 0, %113
  store i32 %119, ptr %25, align 4
  br label %120

120:                                              ; preds = %117, %115
  %121 = phi i32 [ %119, %117 ], [ %113, %115 ]
  %122 = phi i64 [ %118, %117 ], [ %112, %115 ]
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds [512 x i32], ptr %17, i64 0, i64 %123
  %125 = load i32, ptr %124, align 4
  store i32 %125, ptr %25, align 4
  %126 = shl i64 %110, 1
  store i64 %126, ptr %6, align 8
  %127 = add i64 %111, 1
  store i64 %127, ptr %5, align 8
  br label %109, !llvm.loop !13

128:                                              ; preds = %109
  %.lcssa30 = phi i64 [ %111, %109 ]
  %.lcssa29 = phi i64 [ %112, %109 ]
  %129 = trunc i64 %.lcssa29 to i32
  %130 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %98
  store i32 %129, ptr %130, align 4
  %131 = trunc i64 %.lcssa30 to i8
  %132 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %98
  store i8 %131, ptr %132, align 1
  %133 = icmp ugt i64 %.lcssa29, %95
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  store i64 %.lcssa29, ptr %23, align 8
  br label %135

135:                                              ; preds = %134, %128
  %136 = phi i64 [ %.lcssa29, %134 ], [ %95, %128 ]
  %137 = icmp ugt i64 %.lcssa30, %94
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  store i64 %.lcssa30, ptr %24, align 8
  br label %139

139:                                              ; preds = %138, %135
  %140 = phi i64 [ %.lcssa30, %138 ], [ %94, %135 ]
  br label %141

141:                                              ; preds = %139, %103
  %142 = phi i64 [ %140, %139 ], [ %94, %103 ]
  %143 = phi i64 [ %136, %139 ], [ %95, %103 ]
  %144 = phi i64 [ %136, %139 ], [ %96, %103 ]
  %145 = phi i64 [ %140, %139 ], [ %97, %103 ]
  %146 = add nuw nsw i64 %98, 1
  store i64 %146, ptr %21, align 8
  br label %93, !llvm.loop !14

147:                                              ; preds = %93
  %.lcssa32 = phi i64 [ %96, %93 ]
  %.lcssa31 = phi i64 [ %97, %93 ]
  %148 = icmp ugt i64 %.lcssa31, 32
  br i1 %148, label %149, label %152

149:                                              ; preds = %147
  %150 = call ptr @__acrt_iob_func(i32 noundef 2)
  %151 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %150, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

152:                                              ; preds = %147
  store i64 0, ptr %26, align 8
  store i8 0, ptr %27, align 1
  store i32 -1, ptr %28, align 4
  store ptr %0, ptr %13, align 8
  %153 = icmp eq i64 %.lcssa32, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %152
  %155 = call ptr @__acrt_iob_func(i32 noundef 2)
  %156 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %155, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

157:                                              ; preds = %152
  store i64 0, ptr %6, align 8
  br label %158

158:                                              ; preds = %225, %157
  %159 = phi ptr [ %226, %225 ], [ %0, %157 ]
  %160 = phi i64 [ %.lcssa19, %225 ], [ 0, %157 ]
  %161 = phi ptr [ %.lcssa17, %225 ], [ %33, %157 ]
  %162 = phi i8 [ %.lcssa15, %225 ], [ 0, %157 ]
  %163 = phi i32 [ %.lcssa13, %225 ], [ -1, %157 ]
  %164 = phi i64 [ %.lcssa11, %225 ], [ %1, %157 ]
  %165 = phi i64 [ %227, %225 ], [ 0, %157 ]
  %166 = icmp ult i64 %165, %164
  br i1 %166, label %167, label %228

167:                                              ; preds = %158
  %168 = load i8, ptr %159, align 1
  %169 = zext i8 %168 to i64
  %170 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %169
  %171 = load i8, ptr %170, align 1
  %172 = zext i8 %171 to i32
  %173 = sub nsw i32 %172, 1
  %174 = shl i32 1, %173
  %175 = sext i32 %174 to i64
  store i64 %175, ptr %8, align 8
  store i64 0, ptr %5, align 8
  br label %176

176:                                              ; preds = %221, %167
  %177 = phi i8 [ %206, %221 ], [ %168, %167 ]
  %178 = phi i64 [ %223, %221 ], [ %175, %167 ]
  %179 = phi i8 [ %.pre4, %221 ], [ %171, %167 ]
  %180 = phi i64 [ %224, %221 ], [ 0, %167 ]
  %181 = phi i64 [ %207, %221 ], [ %160, %167 ]
  %182 = phi ptr [ %208, %221 ], [ %161, %167 ]
  %183 = phi i8 [ %222, %221 ], [ %162, %167 ]
  %184 = phi i32 [ %210, %221 ], [ %163, %167 ]
  %185 = phi i64 [ %211, %221 ], [ %164, %167 ]
  %186 = zext i8 %177 to i64
  %187 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %186
  %188 = zext i8 %179 to i64
  %189 = icmp samesign ult i64 %180, %188
  br i1 %189, label %190, label %225

190:                                              ; preds = %176
  %191 = icmp eq i32 %184, 7
  br i1 %191, label %192, label %200

192:                                              ; preds = %190
  %193 = getelementptr inbounds nuw i8, ptr %33, i64 %181
  store i8 %183, ptr %193, align 1
  %194 = add i64 %181, 1
  store i64 %194, ptr %26, align 8
  %195 = icmp eq i64 %194, %1
  br i1 %195, label %196, label %199

196:                                              ; preds = %192
  %197 = call ptr @__acrt_iob_func(i32 noundef 2)
  %198 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %197, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

199:                                              ; preds = %192
  store i32 0, ptr %28, align 4
  store i8 0, ptr %27, align 1
  %.pre5 = load i8, ptr %159, align 1
  %.pre6 = zext i8 %.pre5 to i64
  br label %205

200:                                              ; preds = %190
  %201 = add nsw i32 %184, 1
  store i32 %201, ptr %28, align 4
  %202 = sext i8 %183 to i32
  %203 = shl i32 %202, 1
  %204 = trunc i32 %203 to i8
  store i8 %204, ptr %27, align 1
  br label %205

205:                                              ; preds = %200, %199
  %.pre-phi = phi i64 [ %186, %200 ], [ %.pre6, %199 ]
  %206 = phi i8 [ %177, %200 ], [ %.pre5, %199 ]
  %207 = phi i64 [ %181, %200 ], [ %194, %199 ]
  %208 = phi ptr [ %182, %200 ], [ %33, %199 ]
  %209 = phi i8 [ %204, %200 ], [ 0, %199 ]
  %210 = phi i32 [ %201, %200 ], [ 0, %199 ]
  %211 = phi i64 [ %185, %200 ], [ %1, %199 ]
  %212 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %.pre-phi
  %213 = load i32, ptr %212, align 4
  %214 = zext i32 %213 to i64
  %215 = and i64 %214, %178
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %205
  %218 = sext i8 %209 to i32
  %219 = or i32 %218, 1
  %220 = trunc i32 %219 to i8
  store i8 %220, ptr %27, align 1
  br label %221

221:                                              ; preds = %217, %205
  %222 = phi i8 [ %220, %217 ], [ %209, %205 ]
  %223 = lshr i64 %178, 1
  store i64 %223, ptr %8, align 8
  %224 = add nuw nsw i64 %180, 1
  store i64 %224, ptr %5, align 8
  %.phi.trans.insert3 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %.pre-phi
  %.pre4 = load i8, ptr %.phi.trans.insert3, align 1
  br label %176, !llvm.loop !15

225:                                              ; preds = %176
  %.lcssa19 = phi i64 [ %181, %176 ]
  %.lcssa17 = phi ptr [ %182, %176 ]
  %.lcssa15 = phi i8 [ %183, %176 ]
  %.lcssa13 = phi i32 [ %184, %176 ]
  %.lcssa11 = phi i64 [ %185, %176 ]
  %226 = getelementptr inbounds nuw i8, ptr %159, i32 1
  store ptr %226, ptr %13, align 8
  %227 = add nuw i64 %165, 1
  store i64 %227, ptr %6, align 8
  br label %158, !llvm.loop !16

228:                                              ; preds = %158
  %.lcssa27 = phi i64 [ %160, %158 ]
  %.lcssa25 = phi ptr [ %161, %158 ]
  %.lcssa23 = phi i8 [ %162, %158 ]
  %.lcssa21 = phi i32 [ %163, %158 ]
  %229 = sub nsw i32 7, %.lcssa21
  %230 = sext i8 %.lcssa23 to i32
  %231 = shl i32 %230, %229
  %232 = trunc i32 %231 to i8
  store i8 %232, ptr %27, align 1
  %233 = getelementptr inbounds nuw i8, ptr %.lcssa25, i64 %.lcssa27
  store i8 %232, ptr %233, align 1
  %234 = load i64, ptr %26, align 8
  %235 = add i64 %234, 1
  store i64 %235, ptr %26, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %29, i8 0, i64 1024, i1 false)
  store ptr %30, ptr %31, align 8
  store i64 0, ptr %6, align 8
  br label %236

236:                                              ; preds = %272, %228
  %237 = phi ptr [ %241, %272 ], [ %30, %228 ]
  %238 = phi i64 [ %273, %272 ], [ 0, %228 ]
  %exitcond38 = icmp ne i64 %238, 256
  br i1 %exitcond38, label %239, label %274

239:                                              ; preds = %236
  %240 = trunc i64 %238 to i8
  store i8 %240, ptr %237, align 1
  %241 = getelementptr inbounds nuw i8, ptr %237, i32 1
  store ptr %241, ptr %31, align 8
  %242 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %238
  %243 = load i32, ptr %242, align 4
  %244 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %238
  %245 = load i8, ptr %244, align 1
  %246 = zext i8 %245 to i32
  %247 = or i32 %243, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %272

249:                                              ; preds = %239
  store i32 0, ptr %9, align 4
  %250 = sub nsw i32 %246, 1
  %251 = shl i32 1, %250
  %252 = sext i32 %251 to i64
  store i64 %252, ptr %8, align 8
  store i64 0, ptr %5, align 8
  %253 = zext i8 %245 to i64
  br label %254

254:                                              ; preds = %266, %249
  %255 = phi i64 [ %268, %266 ], [ %252, %249 ]
  %256 = phi i32 [ %267, %266 ], [ 0, %249 ]
  %257 = phi i64 [ %269, %266 ], [ 0, %249 ]
  %exitcond37 = icmp ne i64 %257, %253
  br i1 %exitcond37, label %258, label %270

258:                                              ; preds = %254
  %259 = mul i32 %256, 2
  %260 = add i32 %259, 1
  store i32 %260, ptr %9, align 4
  %261 = zext i32 %243 to i64
  %262 = and i64 %261, %255
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %258
  %265 = add i32 %260, 1
  store i32 %265, ptr %9, align 4
  br label %266

266:                                              ; preds = %264, %258
  %267 = phi i32 [ %265, %264 ], [ %260, %258 ]
  %268 = lshr i64 %255, 1
  store i64 %268, ptr %8, align 8
  %269 = add nuw nsw i64 %257, 1
  store i64 %269, ptr %5, align 8
  br label %254, !llvm.loop !17

270:                                              ; preds = %254
  %.lcssa10 = phi i32 [ %256, %254 ]
  %271 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %238
  store i32 %.lcssa10, ptr %271, align 4
  br label %272

272:                                              ; preds = %270, %239
  %273 = add nuw nsw i64 %238, 1
  store i64 %273, ptr %6, align 8
  br label %236, !llvm.loop !18

274:                                              ; preds = %236
  store i64 1, ptr %5, align 8
  br label %275

275:                                              ; preds = %301, %274
  %276 = phi i64 [ %304, %301 ], [ 1, %274 ]
  %exitcond39 = icmp ne i64 %276, 256
  br i1 %exitcond39, label %277, label %305

277:                                              ; preds = %275
  %278 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %276
  %279 = load i32, ptr %278, align 4
  store i32 %279, ptr %10, align 4
  %280 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %276
  %281 = load i8, ptr %280, align 1
  store i8 %281, ptr %11, align 1
  store i64 %276, ptr %6, align 8
  br label %282

282:                                              ; preds = %292, %277
  %283 = phi i64 [ %300, %292 ], [ %276, %277 ]
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %290

285:                                              ; preds = %282
  %286 = sub nuw i64 %283, 1
  %287 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %286
  %288 = load i32, ptr %287, align 4
  %289 = icmp ugt i32 %288, %279
  br label %290

290:                                              ; preds = %285, %282
  %291 = phi i1 [ false, %282 ], [ %289, %285 ]
  br i1 %291, label %292, label %301

292:                                              ; preds = %290
  %293 = sub i64 %283, 1
  %294 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %293
  %295 = load i32, ptr %294, align 4
  %296 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %283
  store i32 %295, ptr %296, align 4
  %297 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %293
  %298 = load i8, ptr %297, align 1
  %299 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %283
  store i8 %298, ptr %299, align 1
  %300 = add i64 %283, -1
  store i64 %300, ptr %6, align 8
  br label %282, !llvm.loop !19

301:                                              ; preds = %290
  %.lcssa9 = phi i64 [ %283, %290 ]
  %302 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %.lcssa9
  store i32 %279, ptr %302, align 4
  %303 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %.lcssa9
  store i8 %281, ptr %303, align 1
  %304 = add nuw nsw i64 %276, 1
  store i64 %304, ptr %5, align 8
  br label %275, !llvm.loop !20

305:                                              ; preds = %275
  store i64 0, ptr %6, align 8
  br label %306

306:                                              ; preds = %311, %305
  %307 = phi i64 [ %312, %311 ], [ 0, %305 ]
  %308 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %307
  %309 = load i32, ptr %308, align 4
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %306
  %312 = add i64 %307, 1
  store i64 %312, ptr %6, align 8
  br label %306, !llvm.loop !21

313:                                              ; preds = %306
  %.lcssa8 = phi i64 [ %307, %306 ]
  store i32 0, ptr %9, align 4
  store i64 %.lcssa8, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  %314 = load ptr, ptr %14, align 8
  store ptr %314, ptr %12, align 8
  %315 = load ptr, ptr %3, align 8
  store ptr %315, ptr %13, align 8
  %.pre = load i64, ptr %4, align 8
  br label %316

316:                                              ; preds = %363, %313
  %317 = phi ptr [ %354, %363 ], [ %315, %313 ]
  %318 = phi i64 [ %355, %363 ], [ %.lcssa8, %313 ]
  %319 = phi i64 [ %364, %363 ], [ 128, %313 ]
  %320 = phi ptr [ %365, %363 ], [ %314, %313 ]
  %321 = phi i32 [ %356, %363 ], [ 0, %313 ]
  %322 = phi i64 [ %357, %363 ], [ 0, %313 ]
  %323 = icmp ult i64 %322, %.pre
  br i1 %323, label %324, label %366

324:                                              ; preds = %316
  %325 = mul i32 %321, 2
  %326 = add i32 %325, 1
  store i32 %326, ptr %9, align 4
  %327 = load i8, ptr %320, align 1
  %328 = zext i8 %327 to i64
  %329 = and i64 %328, %319
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %333

331:                                              ; preds = %324
  %332 = add i32 %326, 1
  store i32 %332, ptr %9, align 4
  br label %333

333:                                              ; preds = %331, %324
  %334 = phi i32 [ %332, %331 ], [ %326, %324 ]
  br label %335

335:                                              ; preds = %340, %333
  %336 = phi i64 [ %341, %340 ], [ %318, %333 ]
  %337 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %336
  %338 = load i32, ptr %337, align 4
  %339 = icmp ult i32 %338, %334
  br i1 %339, label %340, label %342

340:                                              ; preds = %335
  %341 = add i64 %336, 1
  store i64 %341, ptr %5, align 8
  br label %335, !llvm.loop !22

342:                                              ; preds = %335
  %.lcssa7 = phi i64 [ %336, %335 ]
  %.lcssa = phi i32 [ %338, %335 ]
  %343 = icmp eq i32 %334, %.lcssa
  br i1 %343, label %344, label %352

344:                                              ; preds = %342
  %345 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %.lcssa7
  %346 = load i8, ptr %345, align 1
  store i8 %346, ptr %317, align 1
  %347 = load ptr, ptr %13, align 8
  %348 = getelementptr inbounds nuw i8, ptr %347, i32 1
  store ptr %348, ptr %13, align 8
  %349 = load i64, ptr %7, align 8
  %350 = add i64 %349, 1
  store i64 %350, ptr %7, align 8
  store i32 0, ptr %9, align 4
  %351 = load i64, ptr %6, align 8
  store i64 %351, ptr %5, align 8
  %.pre1 = load i64, ptr %8, align 8
  br label %352

352:                                              ; preds = %344, %342
  %353 = phi i64 [ %.pre1, %344 ], [ %319, %342 ]
  %354 = phi ptr [ %348, %344 ], [ %317, %342 ]
  %355 = phi i64 [ %351, %344 ], [ %.lcssa7, %342 ]
  %356 = phi i32 [ 0, %344 ], [ %334, %342 ]
  %357 = phi i64 [ %350, %344 ], [ %322, %342 ]
  %358 = icmp ugt i64 %353, 1
  br i1 %358, label %359, label %361

359:                                              ; preds = %352
  %360 = lshr i64 %353, 1
  store i64 %360, ptr %8, align 8
  br label %363

361:                                              ; preds = %352
  store i64 128, ptr %8, align 8
  %362 = getelementptr inbounds nuw i8, ptr %320, i32 1
  store ptr %362, ptr %12, align 8
  br label %363

363:                                              ; preds = %361, %359
  %364 = phi i64 [ 128, %361 ], [ %360, %359 ]
  %365 = phi ptr [ %362, %361 ], [ %320, %359 ]
  br label %316, !llvm.loop !23

366:                                              ; preds = %316
  call void @free(ptr noundef %314)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal void @heap_adjust(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  %11 = sub nsw i32 %3, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i64, ptr %1, i64 %12
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, ptr %10, align 4
  %16 = sext i32 %15 to i64
  br label %17

17:                                               ; preds = %52, %4
  %18 = phi i32 [ %40, %52 ], [ %3, %4 ]
  %19 = sdiv i32 %2, 2
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %._crit_edge

._crit_edge:                                      ; preds = %17
  %.lcssa = phi i32 [ %18, %17 ]
  %.pre = sext i32 %15 to i64
  br label %56

21:                                               ; preds = %17
  %22 = add nsw i32 %18, %18
  store i32 %22, ptr %9, align 4
  %23 = icmp slt i32 %22, %2
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = sub nsw i32 %22, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, ptr %1, i64 %26
  %28 = load i64, ptr %27, align 8
  %29 = getelementptr inbounds nuw i64, ptr %0, i64 %28
  %30 = load i64, ptr %29, align 8
  %31 = sext i32 %22 to i64
  %32 = getelementptr inbounds i64, ptr %1, i64 %31
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr inbounds nuw i64, ptr %0, i64 %33
  %35 = load i64, ptr %34, align 8
  %36 = icmp ugt i64 %30, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = add nsw i32 %22, 1
  store i32 %38, ptr %9, align 4
  br label %39

39:                                               ; preds = %37, %24, %21
  %40 = phi i32 [ %38, %37 ], [ %22, %24 ], [ %22, %21 ]
  %41 = sext i32 %15 to i64
  %42 = getelementptr inbounds i64, ptr %0, i64 %41
  %43 = load i64, ptr %42, align 8
  %44 = sub nsw i32 %40, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, ptr %1, i64 %45
  %47 = load i64, ptr %46, align 8
  %48 = getelementptr inbounds nuw i64, ptr %0, i64 %47
  %49 = load i64, ptr %48, align 8
  %50 = icmp ult i64 %43, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  %.lcssa1 = phi i32 [ %18, %39 ]
  br label %56

52:                                               ; preds = %39
  %53 = sub nsw i32 %18, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, ptr %1, i64 %54
  store i64 %47, ptr %55, align 8
  store i32 %40, ptr %8, align 4
  br label %17, !llvm.loop !24

56:                                               ; preds = %._crit_edge, %51
  %57 = phi i32 [ %.lcssa, %._crit_edge ], [ %.lcssa1, %51 ]
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %16, %51 ]
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, ptr %1, i64 %59
  store i64 %.pre-phi, ptr %60, align 8
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
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca ptr, align 8
  %9 = alloca double, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store i8 0, ptr %7, align 1
  %10 = icmp sgt i32 %0, 1
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  store i32 1, ptr %6, align 4
  br label %12

12:                                               ; preds = %20, %11
  %13 = phi i32 [ %21, %20 ], [ 1, %11 ]
  %exitcond = icmp ne i32 %13, %0
  br i1 %exitcond, label %14, label %.loopexit

14:                                               ; preds = %12
  %15 = getelementptr inbounds ptr, ptr %1, i64 1
  %16 = load ptr, ptr %15, align 8
  %17 = call i32 @strcmp(ptr noundef %16, ptr noundef @.str.4) #7
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i8 1, ptr %7, align 1
  br label %22

20:                                               ; preds = %14
  %21 = add nuw i32 %13, 1
  store i32 %21, ptr %6, align 4
  br label %12, !llvm.loop !25

.loopexit:                                        ; preds = %12
  br label %22

22:                                               ; preds = %.loopexit, %19
  %23 = phi i8 [ 1, %19 ], [ 0, %.loopexit ]
  br label %24

24:                                               ; preds = %22, %2
  %25 = phi i8 [ %23, %22 ], [ 0, %2 ]
  %26 = call ptr @generate_test_data(i64 noundef 10000000)
  store ptr %26, ptr %8, align 8
  store i32 0, ptr %6, align 4
  br label %27

27:                                               ; preds = %29, %24
  %28 = phi i32 [ %30, %29 ], [ 0, %24 ]
  %exitcond1 = icmp ne i32 %28, 30
  br i1 %exitcond1, label %29, label %31

29:                                               ; preds = %27
  call void @compdecomp(ptr noundef %26, i64 noundef 10000000)
  %30 = add nuw nsw i32 %28, 1
  store i32 %30, ptr %6, align 4
  br label %27, !llvm.loop !26

31:                                               ; preds = %27
  store double 0.000000e+00, ptr %9, align 8
  call void @free(ptr noundef %26)
  %32 = icmp ne i8 %25, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = call ptr @__acrt_iob_func(i32 noundef 1)
  %35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef @.str.5, double noundef 0.000000e+00) #7
  br label %39

36:                                               ; preds = %31
  %37 = call ptr @__acrt_iob_func(i32 noundef 1)
  %38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef @.str.6, double noundef 0.000000e+00) #7
  br label %39

39:                                               ; preds = %36, %33
  %40 = call ptr @__acrt_iob_func(i32 noundef 1)
  %41 = call i32 @fflush(ptr noundef %40)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

declare dso_local i32 @fflush(ptr noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal i64 @random4() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i32, ptr @seed, align 4
  %4 = xor i32 %3, 123459876
  store i32 %4, ptr @seed, align 4
  %5 = sdiv i32 %4, 127773
  store i32 %5, ptr %1, align 4
  %6 = mul nsw i32 %5, 127773
  %7 = sub nsw i32 %4, %6
  %8 = mul nsw i32 16807, %7
  %9 = mul nsw i32 2836, %5
  %10 = sub nsw i32 %8, %9
  store i32 %10, ptr @seed, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = add nsw i32 %10, 2147483647
  store i32 %13, ptr @seed, align 4
  br label %14

14:                                               ; preds = %12, %0
  %15 = phi i32 [ %13, %12 ], [ %10, %0 ]
  %16 = srem i32 %15, 32
  %17 = sext i32 %16 to i64
  store i64 %17, ptr %2, align 8
  %18 = xor i32 %15, 123459876
  store i32 %18, ptr @seed, align 4
  ret i64 %17
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
