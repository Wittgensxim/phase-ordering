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
  %8 = icmp ult i64 0, %0
  br i1 %8, label %.lr.ph, label %19

.lr.ph:                                           ; preds = %1
  br label %9

9:                                                ; preds = %.lr.ph, %9
  %10 = phi i32 [ 0, %.lr.ph ], [ %16, %9 ]
  %11 = phi ptr [ %7, %.lr.ph ], [ %15, %9 ]
  %12 = call i64 @random4()
  %13 = getelementptr inbounds nuw i8, ptr @.str, i64 %12
  %14 = load i8, ptr %13, align 1
  store i8 %14, ptr %11, align 1
  %15 = getelementptr inbounds nuw i8, ptr %11, i32 1
  store ptr %15, ptr %5, align 8
  %16 = add nsw i32 %10, 1
  store i32 %16, ptr %6, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, %0
  br i1 %18, label %9, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %9
  br label %19

19:                                               ; preds = %._crit_edge, %1
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
  %34 = icmp ult i64 0, %1
  br i1 %34, label %.lr.ph, label %46

.lr.ph:                                           ; preds = %2
  br label %35

35:                                               ; preds = %.lr.ph, %35
  %36 = phi i64 [ 0, %.lr.ph ], [ %44, %35 ]
  %37 = phi ptr [ %0, %.lr.ph ], [ %43, %35 ]
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %39
  %41 = load i64, ptr %40, align 8
  %42 = add i64 %41, 1
  store i64 %42, ptr %40, align 8
  %43 = getelementptr inbounds nuw i8, ptr %37, i32 1
  store ptr %43, ptr %13, align 8
  %44 = add i64 %36, 1
  store i64 %44, ptr %5, align 8
  %45 = icmp ult i64 %44, %1
  br i1 %45, label %35, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %35
  br label %46

46:                                               ; preds = %._crit_edge, %2
  store i64 0, ptr %7, align 8
  store i64 0, ptr %5, align 8
  br label %47

47:                                               ; preds = %46, %56
  %48 = phi i64 [ 0, %46 ], [ %58, %56 ]
  %49 = phi i64 [ 0, %46 ], [ %57, %56 ]
  %50 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %48
  %51 = load i64, ptr %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %49
  store i64 %48, ptr %54, align 8
  %55 = add i64 %49, 1
  store i64 %55, ptr %7, align 8
  br label %56

56:                                               ; preds = %53, %47
  %57 = phi i64 [ %55, %53 ], [ %49, %47 ]
  %58 = add i64 %48, 1
  store i64 %58, ptr %5, align 8
  %59 = icmp ult i64 %58, 256
  br i1 %59, label %47, label %60, !llvm.loop !10

60:                                               ; preds = %56
  %.lcssa34 = phi i64 [ %57, %56 ]
  store i64 %.lcssa34, ptr %5, align 8
  %61 = icmp ugt i64 %.lcssa34, 0
  br i1 %61, label %.lr.ph36, label %68

.lr.ph36:                                         ; preds = %60
  br label %62

62:                                               ; preds = %.lr.ph36, %62
  %63 = phi i64 [ %.lcssa34, %.lr.ph36 ], [ %66, %62 ]
  %64 = trunc i64 %.lcssa34 to i32
  %65 = trunc i64 %63 to i32
  call void @heap_adjust(ptr noundef %15, ptr noundef %16, i32 noundef %64, i32 noundef %65)
  %66 = add i64 %63, -1
  store i64 %66, ptr %5, align 8
  %67 = icmp ugt i64 %66, 0
  br i1 %67, label %62, label %._crit_edge37, !llvm.loop !11

._crit_edge37:                                    ; preds = %62
  br label %68

68:                                               ; preds = %._crit_edge37, %60
  %69 = icmp ugt i64 %.lcssa34, 1
  br i1 %69, label %.lr.ph39, label %91

.lr.ph39:                                         ; preds = %68
  br label %70

70:                                               ; preds = %.lr.ph39, %70
  %71 = phi i64 [ %.lcssa34, %.lr.ph39 ], [ %72, %70 ]
  %72 = add i64 %71, -1
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
  %90 = icmp ugt i64 %72, 1
  br i1 %90, label %70, label %._crit_edge40, !llvm.loop !12

._crit_edge40:                                    ; preds = %70
  %split = phi i64 [ %72, %70 ]
  br label %91

91:                                               ; preds = %._crit_edge40, %68
  %.lcssa33 = phi i64 [ %split, %._crit_edge40 ], [ %.lcssa34, %68 ]
  %92 = add i64 256, %.lcssa33
  %93 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %92
  store i32 0, ptr %93, align 4
  store i64 0, ptr %23, align 8
  store i64 0, ptr %24, align 8
  store i64 0, ptr %21, align 8
  br label %94

94:                                               ; preds = %91, %141
  %95 = phi i64 [ 0, %91 ], [ %146, %141 ]
  %96 = phi i64 [ 0, %91 ], [ %145, %141 ]
  %97 = phi i64 [ 0, %91 ], [ %144, %141 ]
  %98 = phi i64 [ 0, %91 ], [ %143, %141 ]
  %99 = phi i64 [ 0, %91 ], [ %142, %141 ]
  %100 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %95
  %101 = load i64, ptr %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %94
  %104 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %95
  store i32 0, ptr %104, align 4
  %105 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %95
  store i8 0, ptr %105, align 1
  br label %141

106:                                              ; preds = %94
  store i64 0, ptr %5, align 8
  store i64 1, ptr %6, align 8
  store i64 0, ptr %22, align 8
  %107 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %95
  %108 = load i32, ptr %107, align 4
  store i32 %108, ptr %25, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %.lr.ph42, label %128

.lr.ph42:                                         ; preds = %106
  br label %110

110:                                              ; preds = %.lr.ph42, %119
  %111 = phi i32 [ %108, %.lr.ph42 ], [ %124, %119 ]
  %112 = phi i64 [ 0, %.lr.ph42 ], [ %121, %119 ]
  %113 = phi i64 [ 0, %.lr.ph42 ], [ %126, %119 ]
  %114 = phi i64 [ 1, %.lr.ph42 ], [ %125, %119 ]
  %115 = icmp slt i32 %111, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = add i64 %112, %114
  store i64 %117, ptr %22, align 8
  %118 = sub nsw i32 0, %111
  store i32 %118, ptr %25, align 4
  br label %119

119:                                              ; preds = %116, %110
  %120 = phi i32 [ %118, %116 ], [ %111, %110 ]
  %121 = phi i64 [ %117, %116 ], [ %112, %110 ]
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds [512 x i32], ptr %17, i64 0, i64 %122
  %124 = load i32, ptr %123, align 4
  store i32 %124, ptr %25, align 4
  %125 = shl i64 %114, 1
  store i64 %125, ptr %6, align 8
  %126 = add i64 %113, 1
  store i64 %126, ptr %5, align 8
  %127 = icmp ne i32 %124, 0
  br i1 %127, label %110, label %._crit_edge43, !llvm.loop !13

._crit_edge43:                                    ; preds = %119
  %split44 = phi i64 [ %126, %119 ]
  %split45 = phi i64 [ %121, %119 ]
  br label %128

128:                                              ; preds = %._crit_edge43, %106
  %.lcssa30 = phi i64 [ %split44, %._crit_edge43 ], [ 0, %106 ]
  %.lcssa29 = phi i64 [ %split45, %._crit_edge43 ], [ 0, %106 ]
  %129 = trunc i64 %.lcssa29 to i32
  %130 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %95
  store i32 %129, ptr %130, align 4
  %131 = trunc i64 %.lcssa30 to i8
  %132 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %95
  store i8 %131, ptr %132, align 1
  %133 = icmp ugt i64 %.lcssa29, %98
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  store i64 %.lcssa29, ptr %23, align 8
  br label %135

135:                                              ; preds = %134, %128
  %136 = phi i64 [ %.lcssa29, %134 ], [ %98, %128 ]
  %137 = icmp ugt i64 %.lcssa30, %99
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  store i64 %.lcssa30, ptr %24, align 8
  br label %139

139:                                              ; preds = %138, %135
  %140 = phi i64 [ %.lcssa30, %138 ], [ %99, %135 ]
  br label %141

141:                                              ; preds = %139, %103
  %142 = phi i64 [ %140, %139 ], [ %99, %103 ]
  %143 = phi i64 [ %136, %139 ], [ %98, %103 ]
  %144 = phi i64 [ %136, %139 ], [ %97, %103 ]
  %145 = phi i64 [ %140, %139 ], [ %96, %103 ]
  %146 = add i64 %95, 1
  store i64 %146, ptr %21, align 8
  %147 = icmp ult i64 %146, 256
  br i1 %147, label %94, label %148, !llvm.loop !14

148:                                              ; preds = %141
  %.lcssa32 = phi i64 [ %144, %141 ]
  %.lcssa31 = phi i64 [ %145, %141 ]
  %149 = icmp ugt i64 %.lcssa31, 32
  br i1 %149, label %150, label %153

150:                                              ; preds = %148
  %151 = call ptr @__acrt_iob_func(i32 noundef 2)
  %152 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %151, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

153:                                              ; preds = %148
  store i64 0, ptr %26, align 8
  store i8 0, ptr %27, align 1
  store i32 -1, ptr %28, align 4
  store ptr %0, ptr %13, align 8
  %154 = icmp eq i64 %.lcssa32, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %153
  %156 = call ptr @__acrt_iob_func(i32 noundef 2)
  %157 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %156, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

158:                                              ; preds = %153
  store i64 0, ptr %6, align 8
  %159 = icmp ult i64 0, %1
  br i1 %159, label %.lr.ph55, label %232

.lr.ph55:                                         ; preds = %158
  br label %160

160:                                              ; preds = %.lr.ph55, %228
  %161 = phi i64 [ 0, %.lr.ph55 ], [ %230, %228 ]
  %162 = phi i64 [ %1, %.lr.ph55 ], [ %.lcssa11, %228 ]
  %163 = phi i32 [ -1, %.lr.ph55 ], [ %.lcssa13, %228 ]
  %164 = phi i8 [ 0, %.lr.ph55 ], [ %.lcssa15, %228 ]
  %165 = phi ptr [ %33, %.lr.ph55 ], [ %.lcssa17, %228 ]
  %166 = phi i64 [ 0, %.lr.ph55 ], [ %.lcssa19, %228 ]
  %167 = phi ptr [ %0, %.lr.ph55 ], [ %229, %228 ]
  %168 = load i8, ptr %167, align 1
  %169 = zext i8 %168 to i64
  %170 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %169
  %171 = load i8, ptr %170, align 1
  %172 = zext i8 %171 to i32
  %173 = sub nsw i32 %172, 1
  %174 = shl i32 1, %173
  %175 = sext i32 %174 to i64
  store i64 %175, ptr %8, align 8
  store i64 0, ptr %5, align 8
  %176 = zext i8 %168 to i64
  %177 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %176
  %178 = zext i8 %171 to i64
  %179 = icmp ult i64 0, %178
  br i1 %179, label %.lr.ph47, label %228

.lr.ph47:                                         ; preds = %160
  br label %180

180:                                              ; preds = %.lr.ph47, %220
  %181 = phi i64 [ %176, %.lr.ph47 ], [ %224, %220 ]
  %182 = phi i64 [ %162, %.lr.ph47 ], [ %210, %220 ]
  %183 = phi i32 [ %163, %.lr.ph47 ], [ %209, %220 ]
  %184 = phi i8 [ %164, %.lr.ph47 ], [ %221, %220 ]
  %185 = phi ptr [ %165, %.lr.ph47 ], [ %207, %220 ]
  %186 = phi i64 [ %166, %.lr.ph47 ], [ %206, %220 ]
  %187 = phi i64 [ 0, %.lr.ph47 ], [ %223, %220 ]
  %188 = phi i64 [ %175, %.lr.ph47 ], [ %222, %220 ]
  %189 = phi i8 [ %168, %.lr.ph47 ], [ %205, %220 ]
  %190 = icmp eq i32 %183, 7
  br i1 %190, label %191, label %199

191:                                              ; preds = %180
  %192 = getelementptr inbounds nuw i8, ptr %33, i64 %186
  store i8 %184, ptr %192, align 1
  %193 = add i64 %186, 1
  store i64 %193, ptr %26, align 8
  %194 = icmp eq i64 %193, %1
  br i1 %194, label %195, label %198

195:                                              ; preds = %191
  %196 = call ptr @__acrt_iob_func(i32 noundef 2)
  %197 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %196, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

198:                                              ; preds = %191
  store i32 0, ptr %28, align 4
  store i8 0, ptr %27, align 1
  %.pre5 = load i8, ptr %167, align 1
  %.pre6 = zext i8 %.pre5 to i64
  br label %204

199:                                              ; preds = %180
  %200 = add nsw i32 %183, 1
  store i32 %200, ptr %28, align 4
  %201 = sext i8 %184 to i32
  %202 = shl i32 %201, 1
  %203 = trunc i32 %202 to i8
  store i8 %203, ptr %27, align 1
  br label %204

204:                                              ; preds = %199, %198
  %.pre-phi = phi i64 [ %181, %199 ], [ %.pre6, %198 ]
  %205 = phi i8 [ %189, %199 ], [ %.pre5, %198 ]
  %206 = phi i64 [ %186, %199 ], [ %193, %198 ]
  %207 = phi ptr [ %185, %199 ], [ %33, %198 ]
  %208 = phi i8 [ %203, %199 ], [ 0, %198 ]
  %209 = phi i32 [ %200, %199 ], [ 0, %198 ]
  %210 = phi i64 [ %182, %199 ], [ %1, %198 ]
  %211 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %.pre-phi
  %212 = load i32, ptr %211, align 4
  %213 = zext i32 %212 to i64
  %214 = and i64 %213, %188
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %204
  %217 = sext i8 %208 to i32
  %218 = or i32 %217, 1
  %219 = trunc i32 %218 to i8
  store i8 %219, ptr %27, align 1
  br label %220

220:                                              ; preds = %216, %204
  %221 = phi i8 [ %219, %216 ], [ %208, %204 ]
  %222 = lshr i64 %188, 1
  store i64 %222, ptr %8, align 8
  %223 = add i64 %187, 1
  store i64 %223, ptr %5, align 8
  %.phi.trans.insert3 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %.pre-phi
  %.pre4 = load i8, ptr %.phi.trans.insert3, align 1
  %224 = zext i8 %205 to i64
  %225 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %224
  %226 = zext i8 %.pre4 to i64
  %227 = icmp ult i64 %223, %226
  br i1 %227, label %180, label %._crit_edge48, !llvm.loop !15

._crit_edge48:                                    ; preds = %220
  %split49 = phi i64 [ %206, %220 ]
  %split50 = phi ptr [ %207, %220 ]
  %split51 = phi i8 [ %221, %220 ]
  %split52 = phi i32 [ %209, %220 ]
  %split53 = phi i64 [ %210, %220 ]
  br label %228

228:                                              ; preds = %._crit_edge48, %160
  %.lcssa19 = phi i64 [ %split49, %._crit_edge48 ], [ %166, %160 ]
  %.lcssa17 = phi ptr [ %split50, %._crit_edge48 ], [ %165, %160 ]
  %.lcssa15 = phi i8 [ %split51, %._crit_edge48 ], [ %164, %160 ]
  %.lcssa13 = phi i32 [ %split52, %._crit_edge48 ], [ %163, %160 ]
  %.lcssa11 = phi i64 [ %split53, %._crit_edge48 ], [ %162, %160 ]
  %229 = getelementptr inbounds nuw i8, ptr %167, i32 1
  store ptr %229, ptr %13, align 8
  %230 = add i64 %161, 1
  store i64 %230, ptr %6, align 8
  %231 = icmp ult i64 %230, %.lcssa11
  br i1 %231, label %160, label %._crit_edge56, !llvm.loop !16

._crit_edge56:                                    ; preds = %228
  %split57 = phi i64 [ %.lcssa19, %228 ]
  %split58 = phi ptr [ %.lcssa17, %228 ]
  %split59 = phi i8 [ %.lcssa15, %228 ]
  %split60 = phi i32 [ %.lcssa13, %228 ]
  br label %232

232:                                              ; preds = %._crit_edge56, %158
  %.lcssa27 = phi i64 [ %split57, %._crit_edge56 ], [ 0, %158 ]
  %.lcssa25 = phi ptr [ %split58, %._crit_edge56 ], [ %33, %158 ]
  %.lcssa23 = phi i8 [ %split59, %._crit_edge56 ], [ 0, %158 ]
  %.lcssa21 = phi i32 [ %split60, %._crit_edge56 ], [ -1, %158 ]
  %233 = sub nsw i32 7, %.lcssa21
  %234 = sext i8 %.lcssa23 to i32
  %235 = shl i32 %234, %233
  %236 = trunc i32 %235 to i8
  store i8 %236, ptr %27, align 1
  %237 = getelementptr inbounds nuw i8, ptr %.lcssa25, i64 %.lcssa27
  store i8 %236, ptr %237, align 1
  %238 = load i64, ptr %26, align 8
  %239 = add i64 %238, 1
  store i64 %239, ptr %26, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %29, i8 0, i64 1024, i1 false)
  store ptr %30, ptr %31, align 8
  store i64 0, ptr %6, align 8
  br label %240

240:                                              ; preds = %232, %276
  %241 = phi i64 [ 0, %232 ], [ %277, %276 ]
  %242 = phi ptr [ %30, %232 ], [ %244, %276 ]
  %243 = trunc i64 %241 to i8
  store i8 %243, ptr %242, align 1
  %244 = getelementptr inbounds nuw i8, ptr %242, i32 1
  store ptr %244, ptr %31, align 8
  %245 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %241
  %246 = load i32, ptr %245, align 4
  %247 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %241
  %248 = load i8, ptr %247, align 1
  %249 = zext i8 %248 to i32
  %250 = or i32 %246, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %276

252:                                              ; preds = %240
  store i32 0, ptr %9, align 4
  %253 = sub nsw i32 %249, 1
  %254 = shl i32 1, %253
  %255 = sext i32 %254 to i64
  store i64 %255, ptr %8, align 8
  store i64 0, ptr %5, align 8
  %256 = zext i8 %248 to i64
  %257 = icmp ult i64 0, %256
  br i1 %257, label %.lr.ph62, label %274

.lr.ph62:                                         ; preds = %252
  br label %258

258:                                              ; preds = %.lr.ph62, %269
  %259 = phi i64 [ 0, %.lr.ph62 ], [ %272, %269 ]
  %260 = phi i32 [ 0, %.lr.ph62 ], [ %270, %269 ]
  %261 = phi i64 [ %255, %.lr.ph62 ], [ %271, %269 ]
  %262 = mul i32 %260, 2
  %263 = add i32 %262, 1
  store i32 %263, ptr %9, align 4
  %264 = zext i32 %246 to i64
  %265 = and i64 %264, %261
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %258
  %268 = add i32 %263, 1
  store i32 %268, ptr %9, align 4
  br label %269

269:                                              ; preds = %267, %258
  %270 = phi i32 [ %268, %267 ], [ %263, %258 ]
  %271 = lshr i64 %261, 1
  store i64 %271, ptr %8, align 8
  %272 = add i64 %259, 1
  store i64 %272, ptr %5, align 8
  %273 = icmp ult i64 %272, %256
  br i1 %273, label %258, label %._crit_edge63, !llvm.loop !17

._crit_edge63:                                    ; preds = %269
  %split64 = phi i32 [ %270, %269 ]
  br label %274

274:                                              ; preds = %._crit_edge63, %252
  %.lcssa10 = phi i32 [ %split64, %._crit_edge63 ], [ 0, %252 ]
  %275 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %241
  store i32 %.lcssa10, ptr %275, align 4
  br label %276

276:                                              ; preds = %274, %240
  %277 = add i64 %241, 1
  store i64 %277, ptr %6, align 8
  %278 = icmp ult i64 %277, 256
  br i1 %278, label %240, label %279, !llvm.loop !18

279:                                              ; preds = %276
  store i64 1, ptr %5, align 8
  br label %280

280:                                              ; preds = %279, %305
  %281 = phi i64 [ 1, %279 ], [ %308, %305 ]
  %282 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %281
  %283 = load i32, ptr %282, align 4
  store i32 %283, ptr %10, align 4
  %284 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %281
  %285 = load i8, ptr %284, align 1
  store i8 %285, ptr %11, align 1
  store i64 %281, ptr %6, align 8
  br label %286

286:                                              ; preds = %296, %280
  %287 = phi i64 [ %304, %296 ], [ %281, %280 ]
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %294

289:                                              ; preds = %286
  %290 = sub i64 %287, 1
  %291 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %290
  %292 = load i32, ptr %291, align 4
  %293 = icmp ugt i32 %292, %283
  br label %294

294:                                              ; preds = %289, %286
  %295 = phi i1 [ false, %286 ], [ %293, %289 ]
  br i1 %295, label %296, label %305

296:                                              ; preds = %294
  %297 = sub i64 %287, 1
  %298 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %297
  %299 = load i32, ptr %298, align 4
  %300 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %287
  store i32 %299, ptr %300, align 4
  %301 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %297
  %302 = load i8, ptr %301, align 1
  %303 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %287
  store i8 %302, ptr %303, align 1
  %304 = add i64 %287, -1
  store i64 %304, ptr %6, align 8
  br label %286, !llvm.loop !19

305:                                              ; preds = %294
  %.lcssa9 = phi i64 [ %287, %294 ]
  %306 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %.lcssa9
  store i32 %283, ptr %306, align 4
  %307 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %.lcssa9
  store i8 %285, ptr %307, align 1
  %308 = add i64 %281, 1
  store i64 %308, ptr %5, align 8
  %309 = icmp ult i64 %308, 256
  br i1 %309, label %280, label %310, !llvm.loop !20

310:                                              ; preds = %305
  store i64 0, ptr %6, align 8
  %311 = load i32, ptr %29, align 4
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %.lr.ph66, label %319

.lr.ph66:                                         ; preds = %310
  br label %313

313:                                              ; preds = %.lr.ph66, %313
  %314 = phi i64 [ 0, %.lr.ph66 ], [ %315, %313 ]
  %315 = add i64 %314, 1
  store i64 %315, ptr %6, align 8
  %316 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %315
  %317 = load i32, ptr %316, align 4
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %313, label %._crit_edge67, !llvm.loop !21

._crit_edge67:                                    ; preds = %313
  %split68 = phi i64 [ %315, %313 ]
  br label %319

319:                                              ; preds = %._crit_edge67, %310
  %.lcssa8 = phi i64 [ %split68, %._crit_edge67 ], [ 0, %310 ]
  store i32 0, ptr %9, align 4
  store i64 %.lcssa8, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  %320 = load ptr, ptr %14, align 8
  store ptr %320, ptr %12, align 8
  %321 = load ptr, ptr %3, align 8
  store ptr %321, ptr %13, align 8
  %.pre = load i64, ptr %4, align 8
  %322 = icmp ult i64 0, %.pre
  br i1 %322, label %.lr.ph75, label %374

.lr.ph75:                                         ; preds = %319
  br label %323

323:                                              ; preds = %.lr.ph75, %370
  %324 = phi i64 [ 0, %.lr.ph75 ], [ %364, %370 ]
  %325 = phi i32 [ 0, %.lr.ph75 ], [ %363, %370 ]
  %326 = phi ptr [ %320, %.lr.ph75 ], [ %372, %370 ]
  %327 = phi i64 [ 128, %.lr.ph75 ], [ %371, %370 ]
  %328 = phi i64 [ %.lcssa8, %.lr.ph75 ], [ %362, %370 ]
  %329 = phi ptr [ %321, %.lr.ph75 ], [ %361, %370 ]
  %330 = mul i32 %325, 2
  %331 = add i32 %330, 1
  store i32 %331, ptr %9, align 4
  %332 = load i8, ptr %326, align 1
  %333 = zext i8 %332 to i64
  %334 = and i64 %333, %327
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %338

336:                                              ; preds = %323
  %337 = add i32 %331, 1
  store i32 %337, ptr %9, align 4
  br label %338

338:                                              ; preds = %336, %323
  %339 = phi i32 [ %337, %336 ], [ %331, %323 ]
  %340 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %328
  %341 = load i32, ptr %340, align 4
  %342 = icmp ult i32 %341, %339
  br i1 %342, label %.lr.ph70, label %349

.lr.ph70:                                         ; preds = %338
  br label %343

343:                                              ; preds = %.lr.ph70, %343
  %344 = phi i64 [ %328, %.lr.ph70 ], [ %345, %343 ]
  %345 = add i64 %344, 1
  store i64 %345, ptr %5, align 8
  %346 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %345
  %347 = load i32, ptr %346, align 4
  %348 = icmp ult i32 %347, %339
  br i1 %348, label %343, label %._crit_edge71, !llvm.loop !22

._crit_edge71:                                    ; preds = %343
  %split72 = phi i64 [ %345, %343 ]
  %split73 = phi i32 [ %347, %343 ]
  br label %349

349:                                              ; preds = %._crit_edge71, %338
  %.lcssa7 = phi i64 [ %split72, %._crit_edge71 ], [ %328, %338 ]
  %.lcssa = phi i32 [ %split73, %._crit_edge71 ], [ %341, %338 ]
  %350 = icmp eq i32 %339, %.lcssa
  br i1 %350, label %351, label %359

351:                                              ; preds = %349
  %352 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %.lcssa7
  %353 = load i8, ptr %352, align 1
  store i8 %353, ptr %329, align 1
  %354 = load ptr, ptr %13, align 8
  %355 = getelementptr inbounds nuw i8, ptr %354, i32 1
  store ptr %355, ptr %13, align 8
  %356 = load i64, ptr %7, align 8
  %357 = add i64 %356, 1
  store i64 %357, ptr %7, align 8
  store i32 0, ptr %9, align 4
  %358 = load i64, ptr %6, align 8
  store i64 %358, ptr %5, align 8
  %.pre1 = load i64, ptr %8, align 8
  br label %359

359:                                              ; preds = %351, %349
  %360 = phi i64 [ %.pre1, %351 ], [ %327, %349 ]
  %361 = phi ptr [ %355, %351 ], [ %329, %349 ]
  %362 = phi i64 [ %358, %351 ], [ %.lcssa7, %349 ]
  %363 = phi i32 [ 0, %351 ], [ %339, %349 ]
  %364 = phi i64 [ %357, %351 ], [ %324, %349 ]
  %365 = icmp ugt i64 %360, 1
  br i1 %365, label %366, label %368

366:                                              ; preds = %359
  %367 = lshr i64 %360, 1
  store i64 %367, ptr %8, align 8
  br label %370

368:                                              ; preds = %359
  store i64 128, ptr %8, align 8
  %369 = getelementptr inbounds nuw i8, ptr %326, i32 1
  store ptr %369, ptr %12, align 8
  br label %370

370:                                              ; preds = %368, %366
  %371 = phi i64 [ 128, %368 ], [ %367, %366 ]
  %372 = phi ptr [ %369, %368 ], [ %326, %366 ]
  %373 = icmp ult i64 %364, %.pre
  br i1 %373, label %323, label %._crit_edge76, !llvm.loop !23

._crit_edge76:                                    ; preds = %370
  br label %374

374:                                              ; preds = %._crit_edge76, %319
  call void @free(ptr noundef %320)
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
  %16 = sdiv i32 %2, 2
  %17 = icmp sle i32 %3, %16
  br i1 %17, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %4
  br label %18

.._crit_edge_crit_edge:                           ; preds = %50
  %split = phi i32 [ %38, %50 ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %4
  %.lcssa = phi i32 [ %split, %.._crit_edge_crit_edge ], [ %3, %4 ]
  %.pre = sext i32 %15 to i64
  br label %55

18:                                               ; preds = %.lr.ph, %50
  %19 = phi i32 [ %3, %.lr.ph ], [ %38, %50 ]
  %20 = add nsw i32 %19, %19
  store i32 %20, ptr %9, align 4
  %21 = icmp slt i32 %20, %2
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = sub nsw i32 %20, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, ptr %1, i64 %24
  %26 = load i64, ptr %25, align 8
  %27 = getelementptr inbounds nuw i64, ptr %0, i64 %26
  %28 = load i64, ptr %27, align 8
  %29 = sext i32 %20 to i64
  %30 = getelementptr inbounds i64, ptr %1, i64 %29
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr inbounds nuw i64, ptr %0, i64 %31
  %33 = load i64, ptr %32, align 8
  %34 = icmp ugt i64 %28, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %22
  %36 = add nsw i32 %20, 1
  store i32 %36, ptr %9, align 4
  br label %37

37:                                               ; preds = %35, %22, %18
  %38 = phi i32 [ %36, %35 ], [ %20, %22 ], [ %20, %18 ]
  %39 = sext i32 %15 to i64
  %40 = getelementptr inbounds i64, ptr %0, i64 %39
  %41 = load i64, ptr %40, align 8
  %42 = sub nsw i32 %38, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, ptr %1, i64 %43
  %45 = load i64, ptr %44, align 8
  %46 = getelementptr inbounds nuw i64, ptr %0, i64 %45
  %47 = load i64, ptr %46, align 8
  %48 = icmp ult i64 %41, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  %.lcssa2 = phi i64 [ %39, %37 ]
  %.lcssa1 = phi i32 [ %19, %37 ]
  br label %55

50:                                               ; preds = %37
  %51 = sub nsw i32 %19, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, ptr %1, i64 %52
  store i64 %45, ptr %53, align 8
  store i32 %38, ptr %8, align 4
  %54 = icmp sle i32 %38, %16
  br i1 %54, label %18, label %.._crit_edge_crit_edge, !llvm.loop !24

55:                                               ; preds = %._crit_edge, %49
  %56 = phi i32 [ %.lcssa, %._crit_edge ], [ %.lcssa1, %49 ]
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %.lcssa2, %49 ]
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, ptr %1, i64 %58
  store i64 %.pre-phi, ptr %59, align 8
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

12:                                               ; preds = %11, %19
  %13 = phi i32 [ 1, %11 ], [ %20, %19 ]
  %14 = getelementptr inbounds ptr, ptr %1, i64 1
  %15 = load ptr, ptr %14, align 8
  %16 = call i32 @strcmp(ptr noundef %15, ptr noundef @.str.4) #7
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  store i8 1, ptr %7, align 1
  br label %22

19:                                               ; preds = %12
  %20 = add nsw i32 %13, 1
  store i32 %20, ptr %6, align 4
  %21 = icmp slt i32 %20, %0
  br i1 %21, label %12, label %.loopexit, !llvm.loop !25

.loopexit:                                        ; preds = %19
  br label %22

22:                                               ; preds = %.loopexit, %18
  %23 = phi i8 [ 1, %18 ], [ 0, %.loopexit ]
  br label %24

24:                                               ; preds = %22, %2
  %25 = phi i8 [ %23, %22 ], [ 0, %2 ]
  %26 = call ptr @generate_test_data(i64 noundef 10000000)
  store ptr %26, ptr %8, align 8
  store i32 0, ptr %6, align 4
  br label %27

27:                                               ; preds = %24, %27
  %28 = phi i32 [ 0, %24 ], [ %29, %27 ]
  call void @compdecomp(ptr noundef %26, i64 noundef 10000000)
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %6, align 4
  %30 = icmp slt i32 %29, 30
  br i1 %30, label %27, label %31, !llvm.loop !26

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
