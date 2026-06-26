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
  %2 = call ptr @malloc(i64 noundef %0) #6
  %3 = sext i32 0 to i64
  %4 = icmp ult i64 %3, %0
  br i1 %4, label %.lr.ph, label %14

.lr.ph:                                           ; preds = %1
  br label %5

5:                                                ; preds = %.lr.ph, %10
  %.010 = phi ptr [ %2, %.lr.ph ], [ %9, %10 ]
  %.0 = phi i32 [ 0, %.lr.ph ], [ %11, %10 ]
  %6 = call i64 @random4()
  %7 = getelementptr inbounds nuw i8, ptr @.str, i64 %6
  %8 = load i8, ptr %7, align 1
  store i8 %8, ptr %.010, align 1
  %9 = getelementptr inbounds nuw i8, ptr %.010, i32 1
  br label %10

10:                                               ; preds = %5
  %11 = add nsw i32 %.0, 1
  %12 = sext i32 %11 to i64
  %13 = icmp ult i64 %12, %0
  br i1 %13, label %5, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %10
  br label %14

14:                                               ; preds = %._crit_edge, %1
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
  %12 = add i64 %1, 1
  %13 = mul i64 1, %12
  call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %13, i1 false)
  %14 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %14, i8 0, i64 4096, i1 false)
  %15 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %15, i8 0, i64 2048, i1 false)
  %16 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %16, i8 0, i64 2048, i1 false)
  %17 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %17, i8 0, i64 1024, i1 false)
  %18 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %18, i8 0, i64 256, i1 false)
  %19 = icmp ult i64 0, %1
  br i1 %19, label %.lr.ph, label %30

.lr.ph:                                           ; preds = %2
  br label %20

20:                                               ; preds = %.lr.ph, %27
  %.0241 = phi ptr [ %0, %.lr.ph ], [ %26, %27 ]
  %.0229 = phi i64 [ 0, %.lr.ph ], [ %28, %27 ]
  %21 = load i8, ptr %.0241, align 1
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %22
  %24 = load i64, ptr %23, align 8
  %25 = add i64 %24, 1
  store i64 %25, ptr %23, align 8
  %26 = getelementptr inbounds nuw i8, ptr %.0241, i32 1
  br label %27

27:                                               ; preds = %20
  %28 = add i64 %.0229, 1
  %29 = icmp ult i64 %28, %1
  br i1 %29, label %20, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %27
  br label %30

30:                                               ; preds = %._crit_edge, %2
  %31 = icmp ult i64 0, 256
  br i1 %31, label %.lr.ph2, label %43

.lr.ph2:                                          ; preds = %30
  br label %32

32:                                               ; preds = %.lr.ph2, %40
  %.0247 = phi i64 [ 0, %.lr.ph2 ], [ %.2249, %40 ]
  %.1230 = phi i64 [ 0, %.lr.ph2 ], [ %41, %40 ]
  %33 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.1230
  %34 = load i64, ptr %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.0247
  store i64 %.1230, ptr %37, align 8
  %38 = add i64 %.0247, 1
  br label %39

39:                                               ; preds = %36, %32
  %.2249 = phi i64 [ %38, %36 ], [ %.0247, %32 ]
  br label %40

40:                                               ; preds = %39
  %41 = add i64 %.1230, 1
  %42 = icmp ult i64 %41, 256
  br i1 %42, label %32, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %40
  br label %43

43:                                               ; preds = %._crit_edge3, %30
  %.1248 = phi i64 [ %.2249, %._crit_edge3 ], [ 0, %30 ]
  %44 = icmp ugt i64 %.1248, 0
  br i1 %44, label %.lr.ph5, label %53

.lr.ph5:                                          ; preds = %43
  br label %45

45:                                               ; preds = %.lr.ph5, %50
  %.2231 = phi i64 [ %.1248, %.lr.ph5 ], [ %51, %50 ]
  %46 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %47 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %48 = trunc i64 %.1248 to i32
  %49 = trunc i64 %.2231 to i32
  call void @heap_adjust(ptr noundef %46, ptr noundef %47, i32 noundef %48, i32 noundef %49)
  br label %50

50:                                               ; preds = %45
  %51 = add i64 %.2231, -1
  %52 = icmp ugt i64 %51, 0
  br i1 %52, label %45, label %._crit_edge6, !llvm.loop !11

._crit_edge6:                                     ; preds = %50
  br label %53

53:                                               ; preds = %._crit_edge6, %43
  %54 = icmp ugt i64 %.1248, 1
  br i1 %54, label %.lr.ph8, label %88

.lr.ph8:                                          ; preds = %53
  br label %55

55:                                               ; preds = %.lr.ph8, %55
  %.3250 = phi i64 [ %.1248, %.lr.ph8 ], [ %56, %55 ]
  %56 = add i64 %.3250, -1
  %57 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %58 = load i64, ptr %57, align 16
  %59 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %56
  %60 = load i64, ptr %59, align 8
  %61 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %60, ptr %61, align 16
  %62 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %63 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %64 = trunc i64 %56 to i32
  call void @heap_adjust(ptr noundef %62, ptr noundef %63, i32 noundef %64, i32 noundef 1)
  %65 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %66 = load i64, ptr %65, align 16
  %67 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %66
  %68 = load i64, ptr %67, align 8
  %69 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %58
  %70 = load i64, ptr %69, align 8
  %71 = add i64 %68, %70
  %72 = add i64 256, %56
  %73 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %72
  store i64 %71, ptr %73, align 8
  %74 = add i64 256, %56
  %75 = trunc i64 %74 to i32
  %76 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %58
  store i32 %75, ptr %76, align 4
  %77 = sub i64 -256, %56
  %78 = trunc i64 %77 to i32
  %79 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %80 = load i64, ptr %79, align 16
  %81 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %80
  store i32 %78, ptr %81, align 4
  %82 = add i64 256, %56
  %83 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %82, ptr %83, align 16
  %84 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %85 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %86 = trunc i64 %56 to i32
  call void @heap_adjust(ptr noundef %84, ptr noundef %85, i32 noundef %86, i32 noundef 1)
  %87 = icmp ugt i64 %56, 1
  br i1 %87, label %55, label %._crit_edge9, !llvm.loop !12

._crit_edge9:                                     ; preds = %55
  br label %88

88:                                               ; preds = %._crit_edge9, %53
  %.4251 = phi i64 [ %56, %._crit_edge9 ], [ %.1248, %53 ]
  %89 = add i64 256, %.4251
  %90 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %89
  store i32 0, ptr %90, align 4
  %91 = icmp ult i64 0, 256
  br i1 %91, label %.lr.ph14, label %130

.lr.ph14:                                         ; preds = %88
  br label %92

92:                                               ; preds = %.lr.ph14, %127
  %.0228 = phi i64 [ 0, %.lr.ph14 ], [ %128, %127 ]
  %.0221 = phi i64 [ 0, %.lr.ph14 ], [ %.2223, %127 ]
  %.0217 = phi i64 [ 0, %.lr.ph14 ], [ %.2219, %127 ]
  %93 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.0228
  %94 = load i64, ptr %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.0228
  store i32 0, ptr %97, align 4
  %98 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.0228
  store i8 0, ptr %98, align 1
  br label %126

99:                                               ; preds = %92
  %100 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.0228
  %101 = load i32, ptr %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %.lr.ph11, label %115

.lr.ph11:                                         ; preds = %99
  br label %103

103:                                              ; preds = %.lr.ph11, %108
  %.0235 = phi i64 [ 1, %.lr.ph11 ], [ %112, %108 ]
  %.3232 = phi i64 [ 0, %.lr.ph11 ], [ %113, %108 ]
  %.0225 = phi i64 [ 0, %.lr.ph11 ], [ %.2227, %108 ]
  %.0215 = phi i32 [ %101, %.lr.ph11 ], [ %111, %108 ]
  %104 = icmp slt i32 %.0215, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %103
  %106 = add i64 %.0225, %.0235
  %107 = sub nsw i32 0, %.0215
  br label %108

108:                                              ; preds = %105, %103
  %.2227 = phi i64 [ %106, %105 ], [ %.0225, %103 ]
  %.1216 = phi i32 [ %107, %105 ], [ %.0215, %103 ]
  %109 = sext i32 %.1216 to i64
  %110 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %109
  %111 = load i32, ptr %110, align 4
  %112 = shl i64 %.0235, 1
  %113 = add i64 %.3232, 1
  %114 = icmp ne i32 %111, 0
  br i1 %114, label %103, label %._crit_edge12, !llvm.loop !13

._crit_edge12:                                    ; preds = %108
  br label %115

115:                                              ; preds = %._crit_edge12, %99
  %.4233 = phi i64 [ %113, %._crit_edge12 ], [ 0, %99 ]
  %.1226 = phi i64 [ %.2227, %._crit_edge12 ], [ 0, %99 ]
  %116 = trunc i64 %.1226 to i32
  %117 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.0228
  store i32 %116, ptr %117, align 4
  %118 = trunc i64 %.4233 to i8
  %119 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.0228
  store i8 %118, ptr %119, align 1
  %120 = icmp ugt i64 %.1226, %.0221
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %122

122:                                              ; preds = %121, %115
  %.3224 = phi i64 [ %.1226, %121 ], [ %.0221, %115 ]
  %123 = icmp ugt i64 %.4233, %.0217
  br i1 %123, label %124, label %125

124:                                              ; preds = %122
  br label %125

125:                                              ; preds = %124, %122
  %.3220 = phi i64 [ %.4233, %124 ], [ %.0217, %122 ]
  br label %126

126:                                              ; preds = %125, %96
  %.2223 = phi i64 [ %.3224, %125 ], [ %.0221, %96 ]
  %.2219 = phi i64 [ %.3220, %125 ], [ %.0217, %96 ]
  br label %127

127:                                              ; preds = %126
  %128 = add i64 %.0228, 1
  %129 = icmp ult i64 %128, 256
  br i1 %129, label %92, label %._crit_edge15, !llvm.loop !14

._crit_edge15:                                    ; preds = %127
  br label %130

130:                                              ; preds = %._crit_edge15, %88
  %.1222 = phi i64 [ %.2223, %._crit_edge15 ], [ 0, %88 ]
  %.1218 = phi i64 [ %.2219, %._crit_edge15 ], [ 0, %88 ]
  %131 = icmp ugt i64 %.1218, 32
  br i1 %131, label %132, label %135

132:                                              ; preds = %130
  %133 = call ptr @__acrt_iob_func(i32 noundef 2)
  %134 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %133, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

135:                                              ; preds = %130
  %136 = icmp eq i64 %.1222, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %135
  %138 = call ptr @__acrt_iob_func(i32 noundef 2)
  %139 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %138, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

140:                                              ; preds = %135
  %141 = icmp ult i64 0, %1
  br i1 %141, label %.lr.ph20, label %199

.lr.ph20:                                         ; preds = %140
  br label %142

142:                                              ; preds = %.lr.ph20, %196
  %.1242 = phi ptr [ %0, %.lr.ph20 ], [ %195, %196 ]
  %.1236 = phi i64 [ 0, %.lr.ph20 ], [ %197, %196 ]
  %.0210 = phi i64 [ 0, %.lr.ph20 ], [ %.3213, %196 ]
  %.0205 = phi i8 [ 0, %.lr.ph20 ], [ %.3208, %196 ]
  %.0204 = phi i32 [ -1, %.lr.ph20 ], [ %.3, %196 ]
  %143 = load i8, ptr %.1242, align 1
  %144 = zext i8 %143 to i64
  %145 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %144
  %146 = load i8, ptr %145, align 1
  %147 = zext i8 %146 to i32
  %148 = sub nsw i32 %147, 1
  %149 = shl i32 1, %148
  %150 = sext i32 %149 to i64
  %151 = load i8, ptr %.1242, align 1
  %152 = zext i8 %151 to i64
  %153 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %152
  %154 = load i8, ptr %153, align 1
  %155 = zext i8 %154 to i64
  %156 = icmp ult i64 0, %155
  br i1 %156, label %.lr.ph17, label %194

.lr.ph17:                                         ; preds = %142
  br label %157

157:                                              ; preds = %.lr.ph17, %186
  %.0254 = phi i64 [ %150, %.lr.ph17 ], [ %185, %186 ]
  %.5234 = phi i64 [ 0, %.lr.ph17 ], [ %187, %186 ]
  %.2212 = phi i64 [ %.0210, %.lr.ph17 ], [ %.4214, %186 ]
  %.2207 = phi i8 [ %.0205, %.lr.ph17 ], [ %.5, %186 ]
  %.2 = phi i32 [ %.0204, %.lr.ph17 ], [ %.4, %186 ]
  %158 = icmp eq i32 %.2, 7
  br i1 %158, label %159, label %167

159:                                              ; preds = %157
  %160 = getelementptr inbounds nuw i8, ptr %11, i64 %.2212
  store i8 %.2207, ptr %160, align 1
  %161 = add i64 %.2212, 1
  %162 = icmp eq i64 %161, %1
  br i1 %162, label %163, label %166

163:                                              ; preds = %159
  %164 = call ptr @__acrt_iob_func(i32 noundef 2)
  %165 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %164, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

166:                                              ; preds = %159
  br label %172

167:                                              ; preds = %157
  %168 = add nsw i32 %.2, 1
  %169 = sext i8 %.2207 to i32
  %170 = shl i32 %169, 1
  %171 = trunc i32 %170 to i8
  br label %172

172:                                              ; preds = %167, %166
  %.4214 = phi i64 [ %161, %166 ], [ %.2212, %167 ]
  %.4209 = phi i8 [ 0, %166 ], [ %171, %167 ]
  %.4 = phi i32 [ 0, %166 ], [ %168, %167 ]
  %173 = load i8, ptr %.1242, align 1
  %174 = zext i8 %173 to i64
  %175 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %174
  %176 = load i32, ptr %175, align 4
  %177 = zext i32 %176 to i64
  %178 = and i64 %177, %.0254
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %172
  %181 = sext i8 %.4209 to i32
  %182 = or i32 %181, 1
  %183 = trunc i32 %182 to i8
  br label %184

184:                                              ; preds = %180, %172
  %.5 = phi i8 [ %183, %180 ], [ %.4209, %172 ]
  %185 = lshr i64 %.0254, 1
  br label %186

186:                                              ; preds = %184
  %187 = add i64 %.5234, 1
  %188 = load i8, ptr %.1242, align 1
  %189 = zext i8 %188 to i64
  %190 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %189
  %191 = load i8, ptr %190, align 1
  %192 = zext i8 %191 to i64
  %193 = icmp ult i64 %187, %192
  br i1 %193, label %157, label %._crit_edge18, !llvm.loop !15

._crit_edge18:                                    ; preds = %186
  br label %194

194:                                              ; preds = %._crit_edge18, %142
  %.3213 = phi i64 [ %.4214, %._crit_edge18 ], [ %.0210, %142 ]
  %.3208 = phi i8 [ %.5, %._crit_edge18 ], [ %.0205, %142 ]
  %.3 = phi i32 [ %.4, %._crit_edge18 ], [ %.0204, %142 ]
  %195 = getelementptr inbounds nuw i8, ptr %.1242, i32 1
  br label %196

196:                                              ; preds = %194
  %197 = add i64 %.1236, 1
  %198 = icmp ult i64 %197, %1
  br i1 %198, label %142, label %._crit_edge21, !llvm.loop !16

._crit_edge21:                                    ; preds = %196
  br label %199

199:                                              ; preds = %._crit_edge21, %140
  %.1211 = phi i64 [ %.3213, %._crit_edge21 ], [ 0, %140 ]
  %.1206 = phi i8 [ %.3208, %._crit_edge21 ], [ 0, %140 ]
  %.1 = phi i32 [ %.3, %._crit_edge21 ], [ -1, %140 ]
  %200 = sub nsw i32 7, %.1
  %201 = sext i8 %.1206 to i32
  %202 = shl i32 %201, %200
  %203 = trunc i32 %202 to i8
  %204 = getelementptr inbounds nuw i8, ptr %11, i64 %.1211
  store i8 %203, ptr %204, align 1
  %205 = add i64 %.1211, 1
  %206 = getelementptr inbounds [256 x i32], ptr %8, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %206, i8 0, i64 1024, i1 false)
  %207 = getelementptr inbounds [256 x i8], ptr %9, i64 0, i64 0
  %208 = icmp ult i64 0, 256
  br i1 %208, label %.lr.ph26, label %254

.lr.ph26:                                         ; preds = %199
  br label %209

209:                                              ; preds = %.lr.ph26, %251
  %.2237 = phi i64 [ 0, %.lr.ph26 ], [ %252, %251 ]
  %.0 = phi ptr [ %207, %.lr.ph26 ], [ %211, %251 ]
  %210 = trunc i64 %.2237 to i8
  store i8 %210, ptr %.0, align 1
  %211 = getelementptr inbounds nuw i8, ptr %.0, i32 1
  %212 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.2237
  %213 = load i32, ptr %212, align 4
  %214 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2237
  %215 = load i8, ptr %214, align 1
  %216 = zext i8 %215 to i32
  %217 = or i32 %213, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %250

219:                                              ; preds = %209
  %220 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2237
  %221 = load i8, ptr %220, align 1
  %222 = zext i8 %221 to i32
  %223 = sub nsw i32 %222, 1
  %224 = shl i32 1, %223
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2237
  %227 = load i8, ptr %226, align 1
  %228 = zext i8 %227 to i64
  %229 = icmp ult i64 0, %228
  br i1 %229, label %.lr.ph23, label %248

.lr.ph23:                                         ; preds = %219
  br label %230

230:                                              ; preds = %.lr.ph23, %242
  %.0258 = phi i32 [ 0, %.lr.ph23 ], [ %.2260, %242 ]
  %.1255 = phi i64 [ %225, %.lr.ph23 ], [ %241, %242 ]
  %.6 = phi i64 [ 0, %.lr.ph23 ], [ %243, %242 ]
  %231 = mul i32 %.0258, 2
  %232 = add i32 %231, 1
  %233 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.2237
  %234 = load i32, ptr %233, align 4
  %235 = zext i32 %234 to i64
  %236 = and i64 %235, %.1255
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %230
  %239 = add i32 %232, 1
  br label %240

240:                                              ; preds = %238, %230
  %.2260 = phi i32 [ %239, %238 ], [ %232, %230 ]
  %241 = lshr i64 %.1255, 1
  br label %242

242:                                              ; preds = %240
  %243 = add i64 %.6, 1
  %244 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2237
  %245 = load i8, ptr %244, align 1
  %246 = zext i8 %245 to i64
  %247 = icmp ult i64 %243, %246
  br i1 %247, label %230, label %._crit_edge24, !llvm.loop !17

._crit_edge24:                                    ; preds = %242
  br label %248

248:                                              ; preds = %._crit_edge24, %219
  %.1259 = phi i32 [ %.2260, %._crit_edge24 ], [ 0, %219 ]
  %249 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.2237
  store i32 %.1259, ptr %249, align 4
  br label %250

250:                                              ; preds = %248, %209
  br label %251

251:                                              ; preds = %250
  %252 = add i64 %.2237, 1
  %253 = icmp ult i64 %252, 256
  br i1 %253, label %209, label %._crit_edge27, !llvm.loop !18

._crit_edge27:                                    ; preds = %251
  br label %254

254:                                              ; preds = %._crit_edge27, %199
  %255 = icmp ult i64 1, 256
  br i1 %255, label %.lr.ph29, label %286

.lr.ph29:                                         ; preds = %254
  br label %256

256:                                              ; preds = %.lr.ph29, %283
  %.7 = phi i64 [ 1, %.lr.ph29 ], [ %284, %283 ]
  %257 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.7
  %258 = load i32, ptr %257, align 4
  %259 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.7
  %260 = load i8, ptr %259, align 1
  br label %261

261:                                              ; preds = %270, %256
  %.3238 = phi i64 [ %.7, %256 ], [ %279, %270 ]
  %262 = icmp ne i64 %.3238, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %261
  %264 = sub i64 %.3238, 1
  %265 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %264
  %266 = load i32, ptr %265, align 4
  %267 = icmp ugt i32 %266, %258
  br label %268

268:                                              ; preds = %263, %261
  %269 = phi i1 [ false, %261 ], [ %267, %263 ]
  br i1 %269, label %270, label %280

270:                                              ; preds = %268
  %271 = sub i64 %.3238, 1
  %272 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %271
  %273 = load i32, ptr %272, align 4
  %274 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.3238
  store i32 %273, ptr %274, align 4
  %275 = sub i64 %.3238, 1
  %276 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %275
  %277 = load i8, ptr %276, align 1
  %278 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.3238
  store i8 %277, ptr %278, align 1
  %279 = add i64 %.3238, -1
  br label %261, !llvm.loop !19

280:                                              ; preds = %268
  %281 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.3238
  store i32 %258, ptr %281, align 4
  %282 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.3238
  store i8 %260, ptr %282, align 1
  br label %283

283:                                              ; preds = %280
  %284 = add i64 %.7, 1
  %285 = icmp ult i64 %284, 256
  br i1 %285, label %256, label %._crit_edge30, !llvm.loop !20

._crit_edge30:                                    ; preds = %283
  br label %286

286:                                              ; preds = %._crit_edge30, %254
  %287 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 0
  %288 = load i32, ptr %287, align 4
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %.lr.ph32, label %296

.lr.ph32:                                         ; preds = %286
  br label %290

290:                                              ; preds = %.lr.ph32, %291
  %.4239 = phi i64 [ 0, %.lr.ph32 ], [ %292, %291 ]
  br label %291

291:                                              ; preds = %290
  %292 = add i64 %.4239, 1
  %293 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %292
  %294 = load i32, ptr %293, align 4
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %290, label %._crit_edge33, !llvm.loop !21

._crit_edge33:                                    ; preds = %291
  br label %296

296:                                              ; preds = %._crit_edge33, %286
  %.5240 = phi i64 [ %292, %._crit_edge33 ], [ 0, %286 ]
  %297 = icmp ult i64 0, %1
  br i1 %297, label %.lr.ph38, label %333

.lr.ph38:                                         ; preds = %296
  br label %298

298:                                              ; preds = %.lr.ph38, %331
  %.3261 = phi i32 [ 0, %.lr.ph38 ], [ %.5263, %331 ]
  %.2256 = phi i64 [ 128, %.lr.ph38 ], [ %.3257, %331 ]
  %.5252 = phi i64 [ 0, %.lr.ph38 ], [ %.6253, %331 ]
  %.0245 = phi ptr [ %11, %.lr.ph38 ], [ %.1246, %331 ]
  %.2243 = phi ptr [ %0, %.lr.ph38 ], [ %.3244, %331 ]
  %.8 = phi i64 [ %.5240, %.lr.ph38 ], [ %.11, %331 ]
  %299 = mul i32 %.3261, 2
  %300 = add i32 %299, 1
  %301 = load i8, ptr %.0245, align 1
  %302 = zext i8 %301 to i64
  %303 = and i64 %302, %.2256
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %307

305:                                              ; preds = %298
  %306 = add i32 %300, 1
  br label %307

307:                                              ; preds = %305, %298
  %.4262 = phi i32 [ %306, %305 ], [ %300, %298 ]
  %308 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %309 = load i32, ptr %308, align 4
  %310 = icmp ult i32 %309, %.4262
  br i1 %310, label %.lr.ph35, label %316

.lr.ph35:                                         ; preds = %307
  br label %311

311:                                              ; preds = %.lr.ph35, %311
  %.9 = phi i64 [ %.8, %.lr.ph35 ], [ %312, %311 ]
  %312 = add i64 %.9, 1
  %313 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %312
  %314 = load i32, ptr %313, align 4
  %315 = icmp ult i32 %314, %.4262
  br i1 %315, label %311, label %._crit_edge36, !llvm.loop !22

._crit_edge36:                                    ; preds = %311
  br label %316

316:                                              ; preds = %._crit_edge36, %307
  %.10 = phi i64 [ %312, %._crit_edge36 ], [ %.8, %307 ]
  %317 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.10
  %318 = load i32, ptr %317, align 4
  %319 = icmp eq i32 %.4262, %318
  br i1 %319, label %320, label %325

320:                                              ; preds = %316
  %321 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.10
  %322 = load i8, ptr %321, align 1
  store i8 %322, ptr %.2243, align 1
  %323 = getelementptr inbounds nuw i8, ptr %.2243, i32 1
  %324 = add i64 %.5252, 1
  br label %325

325:                                              ; preds = %320, %316
  %.5263 = phi i32 [ 0, %320 ], [ %.4262, %316 ]
  %.6253 = phi i64 [ %324, %320 ], [ %.5252, %316 ]
  %.3244 = phi ptr [ %323, %320 ], [ %.2243, %316 ]
  %.11 = phi i64 [ %.5240, %320 ], [ %.10, %316 ]
  %326 = icmp ugt i64 %.2256, 1
  br i1 %326, label %327, label %329

327:                                              ; preds = %325
  %328 = lshr i64 %.2256, 1
  br label %331

329:                                              ; preds = %325
  %330 = getelementptr inbounds nuw i8, ptr %.0245, i32 1
  br label %331

331:                                              ; preds = %329, %327
  %.3257 = phi i64 [ %328, %327 ], [ 128, %329 ]
  %.1246 = phi ptr [ %.0245, %327 ], [ %330, %329 ]
  %332 = icmp ult i64 %.6253, %1
  br i1 %332, label %298, label %._crit_edge39, !llvm.loop !23

._crit_edge39:                                    ; preds = %331
  br label %333

333:                                              ; preds = %._crit_edge39, %296
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
  %11 = icmp sle i32 %3, %10
  br i1 %11, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %12

12:                                               ; preds = %.lr.ph, %42
  %.0 = phi i32 [ %3, %.lr.ph ], [ %.029, %42 ]
  %13 = add nsw i32 %.0, %.0
  %14 = icmp slt i32 %13, %2
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = sub nsw i32 %13, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, ptr %1, i64 %17
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds nuw i64, ptr %0, i64 %19
  %21 = load i64, ptr %20, align 8
  %22 = sext i32 %13 to i64
  %23 = getelementptr inbounds i64, ptr %1, i64 %22
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds nuw i64, ptr %0, i64 %24
  %26 = load i64, ptr %25, align 8
  %27 = icmp ugt i64 %21, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = add nsw i32 %13, 1
  br label %30

30:                                               ; preds = %28, %15, %12
  %.029 = phi i32 [ %29, %28 ], [ %13, %15 ], [ %13, %12 ]
  %31 = sext i32 %9 to i64
  %32 = getelementptr inbounds i64, ptr %0, i64 %31
  %33 = load i64, ptr %32, align 8
  %34 = sub nsw i32 %.029, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, ptr %1, i64 %35
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds nuw i64, ptr %0, i64 %37
  %39 = load i64, ptr %38, align 8
  %40 = icmp ult i64 %33, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  br label %52

42:                                               ; preds = %30
  %43 = sub nsw i32 %.029, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, ptr %1, i64 %44
  %46 = load i64, ptr %45, align 8
  %47 = sub nsw i32 %.0, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, ptr %1, i64 %48
  store i64 %46, ptr %49, align 8
  %50 = sdiv i32 %2, 2
  %51 = icmp sle i32 %.029, %50
  br i1 %51, label %12, label %..loopexit_crit_edge, !llvm.loop !24

..loopexit_crit_edge:                             ; preds = %42
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  %.2 = phi i32 [ %.029, %..loopexit_crit_edge ], [ %3, %4 ]
  br label %52

52:                                               ; preds = %.loopexit, %41
  %.1 = phi i32 [ %.0, %41 ], [ %.2, %.loopexit ]
  %53 = sext i32 %9 to i64
  %54 = sub nsw i32 %.1, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, ptr %1, i64 %55
  store i64 %53, ptr %56, align 8
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
  br i1 %3, label %4, label %17

4:                                                ; preds = %2
  %5 = icmp slt i32 1, %0
  br i1 %5, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %6

6:                                                ; preds = %.lr.ph, %13
  %.0 = phi i32 [ 1, %.lr.ph ], [ %14, %13 ]
  %7 = getelementptr inbounds ptr, ptr %1, i64 1
  %8 = load ptr, ptr %7, align 8
  %9 = call i32 @strcmp(ptr noundef %8, ptr noundef @.str.4) #7
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  br label %16

12:                                               ; preds = %6
  br label %13

13:                                               ; preds = %12
  %14 = add nsw i32 %.0, 1
  %15 = icmp slt i32 %14, %0
  br i1 %15, label %6, label %..loopexit_crit_edge, !llvm.loop !25

..loopexit_crit_edge:                             ; preds = %13
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %16

16:                                               ; preds = %.loopexit, %11
  %.116 = phi i8 [ 0, %.loopexit ], [ 1, %11 ]
  br label %17

17:                                               ; preds = %16, %2
  %.015 = phi i8 [ %.116, %16 ], [ 0, %2 ]
  %18 = call ptr @generate_test_data(i64 noundef 10000000)
  %19 = icmp slt i32 0, 30
  br i1 %19, label %.lr.ph1, label %24

.lr.ph1:                                          ; preds = %17
  br label %20

20:                                               ; preds = %.lr.ph1, %21
  %.1 = phi i32 [ 0, %.lr.ph1 ], [ %22, %21 ]
  call void @compdecomp(ptr noundef %18, i64 noundef 10000000)
  br label %21

21:                                               ; preds = %20
  %22 = add nsw i32 %.1, 1
  %23 = icmp slt i32 %22, 30
  br i1 %23, label %20, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %21
  br label %24

24:                                               ; preds = %._crit_edge, %17
  call void @free(ptr noundef %18)
  %25 = icmp ne i8 %.015, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = call ptr @__acrt_iob_func(i32 noundef 1)
  %28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef @.str.5, double noundef 0.000000e+00) #7
  br label %32

29:                                               ; preds = %24
  %30 = call ptr @__acrt_iob_func(i32 noundef 1)
  %31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef @.str.6, double noundef 0.000000e+00) #7
  br label %32

32:                                               ; preds = %29, %26
  %33 = call ptr @__acrt_iob_func(i32 noundef 1)
  %34 = call i32 @fflush(ptr noundef %33)
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
  %3 = load i32, ptr @seed, align 4
  %4 = sdiv i32 %3, 127773
  %5 = load i32, ptr @seed, align 4
  %6 = mul nsw i32 %4, 127773
  %7 = sub nsw i32 %5, %6
  %8 = mul nsw i32 16807, %7
  %9 = mul nsw i32 2836, %4
  %10 = sub nsw i32 %8, %9
  store i32 %10, ptr @seed, align 4
  %11 = load i32, ptr @seed, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = load i32, ptr @seed, align 4
  %15 = add nsw i32 %14, 2147483647
  store i32 %15, ptr @seed, align 4
  br label %16

16:                                               ; preds = %13, %0
  %17 = load i32, ptr @seed, align 4
  %18 = srem i32 %17, 32
  %19 = sext i32 %18 to i64
  %20 = load i32, ptr @seed, align 4
  %21 = xor i32 %20, 123459876
  store i32 %21, ptr @seed, align 4
  ret i64 %19
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
