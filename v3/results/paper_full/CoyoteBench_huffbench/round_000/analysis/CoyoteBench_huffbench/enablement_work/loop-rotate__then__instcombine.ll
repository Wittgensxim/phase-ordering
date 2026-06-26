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
  %7 = call ptr @malloc(i64 noundef %0) #7
  store ptr %7, ptr %4, align 8
  store ptr %7, ptr %5, align 8
  store i32 0, ptr %6, align 4
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %21, label %.lr.ph

.lr.ph:                                           ; preds = %1
  br label %8

8:                                                ; preds = %.lr.ph, %15
  %9 = load ptr, ptr %3, align 8
  %10 = call i64 @random4()
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 %10
  %12 = load i8, ptr %11, align 1
  %13 = load ptr, ptr %5, align 8
  store i8 %12, ptr %13, align 1
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 1
  store ptr %14, ptr %5, align 8
  br label %15

15:                                               ; preds = %8
  %16 = load i32, ptr %6, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, ptr %2, align 8
  %20 = icmp ugt i64 %19, %18
  br i1 %20, label %8, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %15
  br label %21

21:                                               ; preds = %._crit_edge, %1
  %22 = load ptr, ptr %4, align 8
  ret ptr %22
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
  %33 = call ptr @malloc(i64 noundef %32) #7
  store ptr %33, ptr %14, align 8
  %34 = add i64 %1, 1
  call void @llvm.memset.p0.i64(ptr align 1 %33, i8 0, i64 %34, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %15, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %16, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %17, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %18, i8 0, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %19, i8 0, i64 256, i1 false)
  store i64 0, ptr %5, align 8
  %35 = load i64, ptr %4, align 8
  %.not = icmp eq i64 %35, 0
  br i1 %.not, label %50, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %36

36:                                               ; preds = %.lr.ph, %45
  %37 = load ptr, ptr %13, align 8
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %39
  %41 = load i64, ptr %40, align 8
  %42 = add i64 %41, 1
  store i64 %42, ptr %40, align 8
  %43 = load ptr, ptr %13, align 8
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 1
  store ptr %44, ptr %13, align 8
  br label %45

45:                                               ; preds = %36
  %46 = load i64, ptr %5, align 8
  %47 = add i64 %46, 1
  store i64 %47, ptr %5, align 8
  %48 = load i64, ptr %4, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %36, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %45
  br label %50

50:                                               ; preds = %._crit_edge, %2
  store i64 0, ptr %7, align 8
  store i64 0, ptr %5, align 8
  br i1 true, label %.lr.ph2, label %65

.lr.ph2:                                          ; preds = %50
  br label %51

51:                                               ; preds = %.lr.ph2, %61
  %52 = load i64, ptr %5, align 8
  %53 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %52
  %54 = load i64, ptr %53, align 8
  %.not40 = icmp eq i64 %54, 0
  br i1 %.not40, label %60, label %55

55:                                               ; preds = %51
  %56 = load i64, ptr %5, align 8
  %57 = load i64, ptr %7, align 8
  %58 = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %57
  store i64 %56, ptr %58, align 8
  %59 = add i64 %57, 1
  store i64 %59, ptr %7, align 8
  br label %60

60:                                               ; preds = %55, %51
  br label %61

61:                                               ; preds = %60
  %62 = load i64, ptr %5, align 8
  %63 = add i64 %62, 1
  store i64 %63, ptr %5, align 8
  %64 = icmp ult i64 %63, 256
  br i1 %64, label %51, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %61
  br label %65

65:                                               ; preds = %._crit_edge3, %50
  %66 = load i64, ptr %7, align 8
  store i64 %66, ptr %5, align 8
  %.not41 = icmp eq i64 %66, 0
  br i1 %.not41, label %75, label %.lr.ph5

.lr.ph5:                                          ; preds = %65
  br label %67

67:                                               ; preds = %.lr.ph5, %72
  %68 = load i64, ptr %7, align 8
  %69 = trunc i64 %68 to i32
  %70 = load i64, ptr %5, align 8
  %71 = trunc i64 %70 to i32
  call void @heap_adjust(ptr noundef nonnull %15, ptr noundef nonnull %16, i32 noundef %69, i32 noundef %71)
  br label %72

72:                                               ; preds = %67
  %73 = load i64, ptr %5, align 8
  %74 = add i64 %73, -1
  store i64 %74, ptr %5, align 8
  %.not42 = icmp eq i64 %74, 0
  br i1 %.not42, label %._crit_edge6, label %67, !llvm.loop !11

._crit_edge6:                                     ; preds = %72
  br label %75

75:                                               ; preds = %._crit_edge6, %65
  %76 = load i64, ptr %7, align 8
  %77 = icmp ugt i64 %76, 1
  br i1 %77, label %.lr.ph8, label %108

.lr.ph8:                                          ; preds = %75
  br label %78

78:                                               ; preds = %.lr.ph8, %78
  %79 = load i64, ptr %7, align 8
  %80 = add i64 %79, -1
  store i64 %80, ptr %7, align 8
  %81 = load i64, ptr %16, align 16
  store i64 %81, ptr %20, align 8
  %82 = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %80
  %83 = load i64, ptr %82, align 8
  store i64 %83, ptr %16, align 16
  %84 = trunc i64 %80 to i32
  call void @heap_adjust(ptr noundef nonnull %15, ptr noundef nonnull %16, i32 noundef %84, i32 noundef 1)
  %85 = load i64, ptr %16, align 16
  %86 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %85
  %87 = load i64, ptr %86, align 8
  %88 = load i64, ptr %20, align 8
  %89 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %88
  %90 = load i64, ptr %89, align 8
  %91 = add i64 %87, %90
  %92 = load i64, ptr %7, align 8
  %93 = getelementptr [8 x i8], ptr %15, i64 %92
  %94 = getelementptr i8, ptr %93, i64 2048
  store i64 %91, ptr %94, align 8
  %95 = trunc i64 %92 to i32
  %96 = add i32 %95, 256
  %97 = load i64, ptr %20, align 8
  %98 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %97
  store i32 %96, ptr %98, align 4
  %99 = load i64, ptr %7, align 8
  %100 = trunc i64 %99 to i32
  %101 = sub i32 -256, %100
  %102 = load i64, ptr %16, align 16
  %103 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %102
  store i32 %101, ptr %103, align 4
  %104 = add i64 %99, 256
  store i64 %104, ptr %16, align 16
  %105 = load i64, ptr %7, align 8
  %106 = trunc i64 %105 to i32
  call void @heap_adjust(ptr noundef nonnull %15, ptr noundef nonnull %16, i32 noundef %106, i32 noundef 1)
  %107 = icmp ugt i64 %105, 1
  br i1 %107, label %78, label %._crit_edge9, !llvm.loop !12

._crit_edge9:                                     ; preds = %78
  br label %108

108:                                              ; preds = %._crit_edge9, %75
  %109 = load i64, ptr %7, align 8
  %110 = getelementptr [4 x i8], ptr %17, i64 %109
  %111 = getelementptr i8, ptr %110, i64 1024
  store i32 0, ptr %111, align 4
  store i64 0, ptr %23, align 8
  store i64 0, ptr %24, align 8
  store i64 0, ptr %21, align 8
  br i1 true, label %.lr.ph14, label %168

.lr.ph14:                                         ; preds = %108
  br label %112

112:                                              ; preds = %.lr.ph14, %164
  %113 = load i64, ptr %21, align 8
  %114 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %113
  %115 = load i64, ptr %114, align 8
  %.not43 = icmp eq i64 %115, 0
  br i1 %.not43, label %116, label %120

116:                                              ; preds = %112
  %117 = load i64, ptr %21, align 8
  %118 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %117
  store i32 0, ptr %118, align 4
  %119 = getelementptr inbounds nuw i8, ptr %19, i64 %117
  store i8 0, ptr %119, align 1
  br label %163

120:                                              ; preds = %112
  store i64 0, ptr %5, align 8
  store i64 1, ptr %6, align 8
  store i64 0, ptr %22, align 8
  %121 = load i64, ptr %21, align 8
  %122 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %121
  %123 = load i32, ptr %122, align 4
  store i32 %123, ptr %25, align 4
  %.not44 = icmp eq i32 %123, 0
  br i1 %.not44, label %143, label %.lr.ph11

.lr.ph11:                                         ; preds = %120
  br label %124

124:                                              ; preds = %.lr.ph11, %133
  %125 = load i32, ptr %25, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %124
  %128 = load i64, ptr %6, align 8
  %129 = load i64, ptr %22, align 8
  %130 = add i64 %129, %128
  store i64 %130, ptr %22, align 8
  %131 = load i32, ptr %25, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, ptr %25, align 4
  br label %133

133:                                              ; preds = %127, %124
  %134 = load i32, ptr %25, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [4 x i8], ptr %17, i64 %135
  %137 = load i32, ptr %136, align 4
  store i32 %137, ptr %25, align 4
  %138 = load i64, ptr %6, align 8
  %139 = shl i64 %138, 1
  store i64 %139, ptr %6, align 8
  %140 = load i64, ptr %5, align 8
  %141 = add i64 %140, 1
  store i64 %141, ptr %5, align 8
  %142 = load i32, ptr %25, align 4
  %.not45 = icmp eq i32 %142, 0
  br i1 %.not45, label %._crit_edge12, label %124, !llvm.loop !13

._crit_edge12:                                    ; preds = %133
  br label %143

143:                                              ; preds = %._crit_edge12, %120
  %144 = load i64, ptr %22, align 8
  %145 = trunc i64 %144 to i32
  %146 = load i64, ptr %21, align 8
  %147 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %146
  store i32 %145, ptr %147, align 4
  %148 = load i64, ptr %5, align 8
  %149 = trunc i64 %148 to i8
  %150 = getelementptr inbounds nuw i8, ptr %19, i64 %146
  store i8 %149, ptr %150, align 1
  %151 = load i64, ptr %22, align 8
  %152 = load i64, ptr %23, align 8
  %153 = icmp ugt i64 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %143
  %155 = load i64, ptr %22, align 8
  store i64 %155, ptr %23, align 8
  br label %156

156:                                              ; preds = %154, %143
  %157 = load i64, ptr %5, align 8
  %158 = load i64, ptr %24, align 8
  %159 = icmp ugt i64 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = load i64, ptr %5, align 8
  store i64 %161, ptr %24, align 8
  br label %162

162:                                              ; preds = %160, %156
  br label %163

163:                                              ; preds = %162, %116
  br label %164

164:                                              ; preds = %163
  %165 = load i64, ptr %21, align 8
  %166 = add i64 %165, 1
  store i64 %166, ptr %21, align 8
  %167 = icmp ult i64 %166, 256
  br i1 %167, label %112, label %._crit_edge15, !llvm.loop !14

._crit_edge15:                                    ; preds = %164
  br label %168

168:                                              ; preds = %._crit_edge15, %108
  %169 = load i64, ptr %24, align 8
  %170 = icmp ugt i64 %169, 32
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %173 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %172)
  call void @exit(i32 noundef 1) #9
  unreachable

174:                                              ; preds = %168
  store i64 0, ptr %26, align 8
  store i8 0, ptr %27, align 1
  store i32 -1, ptr %28, align 4
  %175 = load ptr, ptr %3, align 8
  store ptr %175, ptr %13, align 8
  %176 = load i64, ptr %23, align 8
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %174
  %179 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %180 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %179)
  call void @exit(i32 noundef 1) #9
  unreachable

181:                                              ; preds = %174
  store i64 0, ptr %6, align 8
  %182 = load i64, ptr %4, align 8
  %.not46 = icmp eq i64 %182, 0
  br i1 %.not46, label %251, label %.lr.ph20

.lr.ph20:                                         ; preds = %181
  br label %183

183:                                              ; preds = %.lr.ph20, %246
  %184 = load ptr, ptr %13, align 8
  %185 = load i8, ptr %184, align 1
  %186 = zext i8 %185 to i64
  %187 = getelementptr inbounds nuw i8, ptr %19, i64 %186
  %188 = load i8, ptr %187, align 1
  %189 = zext i8 %188 to i32
  %190 = add nsw i32 %189, -1
  %191 = shl nuw i32 1, %190
  %192 = sext i32 %191 to i64
  store i64 %192, ptr %8, align 8
  store i64 0, ptr %5, align 8
  %193 = load ptr, ptr %13, align 8
  %194 = load i8, ptr %193, align 1
  %195 = zext i8 %194 to i64
  %196 = getelementptr inbounds nuw i8, ptr %19, i64 %195
  %197 = load i8, ptr %196, align 1
  %.not47 = icmp eq i8 %197, 0
  br i1 %.not47, label %243, label %.lr.ph17

.lr.ph17:                                         ; preds = %183
  br label %198

198:                                              ; preds = %.lr.ph17, %233
  %199 = load i32, ptr %28, align 4
  %200 = icmp eq i32 %199, 7
  br i1 %200, label %201, label %213

201:                                              ; preds = %198
  %202 = load i8, ptr %27, align 1
  %203 = load ptr, ptr %14, align 8
  %204 = load i64, ptr %26, align 8
  %205 = getelementptr inbounds nuw i8, ptr %203, i64 %204
  store i8 %202, ptr %205, align 1
  %206 = add i64 %204, 1
  store i64 %206, ptr %26, align 8
  %207 = load i64, ptr %4, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %212

209:                                              ; preds = %201
  %210 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %211 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %210)
  call void @exit(i32 noundef 1) #9
  unreachable

212:                                              ; preds = %201
  store i32 0, ptr %28, align 4
  br label %218

213:                                              ; preds = %198
  %214 = load i32, ptr %28, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, ptr %28, align 4
  %216 = load i8, ptr %27, align 1
  %217 = shl i8 %216, 1
  br label %218

218:                                              ; preds = %213, %212
  %storemerge = phi i8 [ %217, %213 ], [ 0, %212 ]
  store i8 %storemerge, ptr %27, align 1
  %219 = load ptr, ptr %13, align 8
  %220 = load i8, ptr %219, align 1
  %221 = zext i8 %220 to i64
  %222 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %221
  %223 = load i32, ptr %222, align 4
  %224 = zext i32 %223 to i64
  %225 = load i64, ptr %8, align 8
  %226 = and i64 %225, %224
  %.not48 = icmp eq i64 %226, 0
  br i1 %.not48, label %230, label %227

227:                                              ; preds = %218
  %228 = load i8, ptr %27, align 1
  %229 = or i8 %228, 1
  store i8 %229, ptr %27, align 1
  br label %230

230:                                              ; preds = %227, %218
  %231 = load i64, ptr %8, align 8
  %232 = lshr i64 %231, 1
  store i64 %232, ptr %8, align 8
  br label %233

233:                                              ; preds = %230
  %234 = load i64, ptr %5, align 8
  %235 = add i64 %234, 1
  store i64 %235, ptr %5, align 8
  %236 = load ptr, ptr %13, align 8
  %237 = load i8, ptr %236, align 1
  %238 = zext i8 %237 to i64
  %239 = getelementptr inbounds nuw i8, ptr %19, i64 %238
  %240 = load i8, ptr %239, align 1
  %241 = zext i8 %240 to i64
  %242 = icmp ult i64 %235, %241
  br i1 %242, label %198, label %._crit_edge18, !llvm.loop !15

._crit_edge18:                                    ; preds = %233
  br label %243

243:                                              ; preds = %._crit_edge18, %183
  %244 = load ptr, ptr %13, align 8
  %245 = getelementptr inbounds nuw i8, ptr %244, i64 1
  store ptr %245, ptr %13, align 8
  br label %246

246:                                              ; preds = %243
  %247 = load i64, ptr %6, align 8
  %248 = add i64 %247, 1
  store i64 %248, ptr %6, align 8
  %249 = load i64, ptr %4, align 8
  %250 = icmp ult i64 %248, %249
  br i1 %250, label %183, label %._crit_edge21, !llvm.loop !16

._crit_edge21:                                    ; preds = %246
  br label %251

251:                                              ; preds = %._crit_edge21, %181
  %252 = load i32, ptr %28, align 4
  %253 = sub nsw i32 7, %252
  %254 = load i8, ptr %27, align 1
  %255 = zext i8 %254 to i32
  %256 = shl i32 %255, %253
  %257 = trunc i32 %256 to i8
  store i8 %257, ptr %27, align 1
  %258 = load ptr, ptr %14, align 8
  %259 = load i64, ptr %26, align 8
  %260 = getelementptr inbounds nuw i8, ptr %258, i64 %259
  store i8 %257, ptr %260, align 1
  %261 = add i64 %259, 1
  store i64 %261, ptr %26, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %29, i8 0, i64 1024, i1 false)
  store ptr %30, ptr %31, align 8
  store i64 0, ptr %6, align 8
  br i1 true, label %.lr.ph26, label %318

.lr.ph26:                                         ; preds = %251
  br label %262

262:                                              ; preds = %.lr.ph26, %314
  %263 = load i64, ptr %6, align 8
  %264 = trunc i64 %263 to i8
  %265 = load ptr, ptr %31, align 8
  store i8 %264, ptr %265, align 1
  %266 = getelementptr inbounds nuw i8, ptr %265, i64 1
  store ptr %266, ptr %31, align 8
  %267 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %263
  %268 = load i32, ptr %267, align 4
  %269 = load i64, ptr %6, align 8
  %270 = getelementptr inbounds nuw i8, ptr %19, i64 %269
  %271 = load i8, ptr %270, align 1
  %272 = zext i8 %271 to i32
  %273 = or i32 %268, %272
  %.not49 = icmp eq i32 %273, 0
  br i1 %.not49, label %313, label %274

274:                                              ; preds = %262
  store i32 0, ptr %9, align 4
  %275 = load i64, ptr %6, align 8
  %276 = getelementptr inbounds nuw i8, ptr %19, i64 %275
  %277 = load i8, ptr %276, align 1
  %278 = zext i8 %277 to i32
  %279 = add nsw i32 %278, -1
  %280 = shl nuw i32 1, %279
  %281 = sext i32 %280 to i64
  store i64 %281, ptr %8, align 8
  store i64 0, ptr %5, align 8
  %282 = load i64, ptr %6, align 8
  %283 = getelementptr inbounds nuw i8, ptr %19, i64 %282
  %284 = load i8, ptr %283, align 1
  %.not50 = icmp eq i8 %284, 0
  br i1 %.not50, label %309, label %.lr.ph23

.lr.ph23:                                         ; preds = %274
  br label %285

285:                                              ; preds = %.lr.ph23, %301
  %286 = load i32, ptr %9, align 4
  %287 = shl i32 %286, 1
  %288 = or disjoint i32 %287, 1
  store i32 %288, ptr %9, align 4
  %289 = load i64, ptr %6, align 8
  %290 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %289
  %291 = load i32, ptr %290, align 4
  %292 = zext i32 %291 to i64
  %293 = load i64, ptr %8, align 8
  %294 = and i64 %293, %292
  %.not51 = icmp eq i64 %294, 0
  br i1 %.not51, label %298, label %295

295:                                              ; preds = %285
  %296 = load i32, ptr %9, align 4
  %297 = add i32 %296, 1
  store i32 %297, ptr %9, align 4
  br label %298

298:                                              ; preds = %295, %285
  %299 = load i64, ptr %8, align 8
  %300 = lshr i64 %299, 1
  store i64 %300, ptr %8, align 8
  br label %301

301:                                              ; preds = %298
  %302 = load i64, ptr %5, align 8
  %303 = add i64 %302, 1
  store i64 %303, ptr %5, align 8
  %304 = load i64, ptr %6, align 8
  %305 = getelementptr inbounds nuw i8, ptr %19, i64 %304
  %306 = load i8, ptr %305, align 1
  %307 = zext i8 %306 to i64
  %308 = icmp ult i64 %303, %307
  br i1 %308, label %285, label %._crit_edge24, !llvm.loop !17

._crit_edge24:                                    ; preds = %301
  br label %309

309:                                              ; preds = %._crit_edge24, %274
  %310 = load i32, ptr %9, align 4
  %311 = load i64, ptr %6, align 8
  %312 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %311
  store i32 %310, ptr %312, align 4
  br label %313

313:                                              ; preds = %309, %262
  br label %314

314:                                              ; preds = %313
  %315 = load i64, ptr %6, align 8
  %316 = add i64 %315, 1
  store i64 %316, ptr %6, align 8
  %317 = icmp ult i64 %316, 256
  br i1 %317, label %262, label %._crit_edge27, !llvm.loop !18

._crit_edge27:                                    ; preds = %314
  br label %318

318:                                              ; preds = %._crit_edge27, %251
  store i64 1, ptr %5, align 8
  br i1 true, label %.lr.ph29, label %358

.lr.ph29:                                         ; preds = %318
  br label %319

319:                                              ; preds = %.lr.ph29, %354
  %320 = load i64, ptr %5, align 8
  %321 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %320
  %322 = load i32, ptr %321, align 4
  store i32 %322, ptr %10, align 4
  %323 = getelementptr inbounds nuw i8, ptr %30, i64 %320
  %324 = load i8, ptr %323, align 1
  store i8 %324, ptr %11, align 1
  %325 = load i64, ptr %5, align 8
  br label %326

326:                                              ; preds = %336, %319
  %storemerge52 = phi i64 [ %325, %319 ], [ %347, %336 ]
  store i64 %storemerge52, ptr %6, align 8
  %.not53 = icmp eq i64 %storemerge52, 0
  br i1 %.not53, label %334, label %327

327:                                              ; preds = %326
  %328 = load i64, ptr %6, align 8
  %329 = getelementptr [4 x i8], ptr %29, i64 %328
  %330 = getelementptr i8, ptr %329, i64 -4
  %331 = load i32, ptr %330, align 4
  %332 = load i32, ptr %10, align 4
  %333 = icmp ugt i32 %331, %332
  br label %334

334:                                              ; preds = %327, %326
  %335 = phi i1 [ false, %326 ], [ %333, %327 ]
  br i1 %335, label %336, label %348

336:                                              ; preds = %334
  %337 = load i64, ptr %6, align 8
  %338 = getelementptr [4 x i8], ptr %29, i64 %337
  %339 = getelementptr i8, ptr %338, i64 -4
  %340 = load i32, ptr %339, align 4
  %341 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %337
  store i32 %340, ptr %341, align 4
  %342 = getelementptr i8, ptr %30, i64 %337
  %343 = getelementptr i8, ptr %342, i64 -1
  %344 = load i8, ptr %343, align 1
  %345 = load i64, ptr %6, align 8
  %346 = getelementptr inbounds nuw i8, ptr %30, i64 %345
  store i8 %344, ptr %346, align 1
  %347 = add i64 %345, -1
  br label %326, !llvm.loop !19

348:                                              ; preds = %334
  %349 = load i32, ptr %10, align 4
  %350 = load i64, ptr %6, align 8
  %351 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %350
  store i32 %349, ptr %351, align 4
  %352 = load i8, ptr %11, align 1
  %353 = getelementptr inbounds nuw i8, ptr %30, i64 %350
  store i8 %352, ptr %353, align 1
  br label %354

354:                                              ; preds = %348
  %355 = load i64, ptr %5, align 8
  %356 = add i64 %355, 1
  store i64 %356, ptr %5, align 8
  %357 = icmp ult i64 %356, 256
  br i1 %357, label %319, label %._crit_edge30, !llvm.loop !20

._crit_edge30:                                    ; preds = %354
  br label %358

358:                                              ; preds = %._crit_edge30, %318
  store i64 0, ptr %6, align 8
  %359 = load i32, ptr %29, align 4
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %.lr.ph32, label %368

.lr.ph32:                                         ; preds = %358
  br label %361

361:                                              ; preds = %.lr.ph32, %362
  br label %362

362:                                              ; preds = %361
  %363 = load i64, ptr %6, align 8
  %364 = add i64 %363, 1
  store i64 %364, ptr %6, align 8
  %365 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %364
  %366 = load i32, ptr %365, align 4
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %361, label %._crit_edge33, !llvm.loop !21

._crit_edge33:                                    ; preds = %362
  br label %368

368:                                              ; preds = %._crit_edge33, %358
  store i32 0, ptr %9, align 4
  %369 = load i64, ptr %6, align 8
  store i64 %369, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  %370 = load ptr, ptr %14, align 8
  store ptr %370, ptr %12, align 8
  %371 = load ptr, ptr %3, align 8
  store ptr %371, ptr %13, align 8
  %372 = load i64, ptr %4, align 8
  %.not54 = icmp eq i64 %372, 0
  br i1 %.not54, label %426, label %.lr.ph38

.lr.ph38:                                         ; preds = %368
  br label %373

373:                                              ; preds = %.lr.ph38, %422
  %374 = load i32, ptr %9, align 4
  %375 = shl i32 %374, 1
  %376 = or disjoint i32 %375, 1
  store i32 %376, ptr %9, align 4
  %377 = load ptr, ptr %12, align 8
  %378 = load i8, ptr %377, align 1
  %379 = zext i8 %378 to i64
  %380 = load i64, ptr %8, align 8
  %381 = and i64 %380, %379
  %.not55 = icmp eq i64 %381, 0
  br i1 %.not55, label %385, label %382

382:                                              ; preds = %373
  %383 = load i32, ptr %9, align 4
  %384 = add i32 %383, 1
  store i32 %384, ptr %9, align 4
  br label %385

385:                                              ; preds = %382, %373
  %386 = load i64, ptr %5, align 8
  %387 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %386
  %388 = load i32, ptr %387, align 4
  %389 = load i32, ptr %9, align 4
  %390 = icmp ult i32 %388, %389
  br i1 %390, label %.lr.ph35, label %398

.lr.ph35:                                         ; preds = %385
  br label %391

391:                                              ; preds = %.lr.ph35, %391
  %392 = load i64, ptr %5, align 8
  %393 = add i64 %392, 1
  store i64 %393, ptr %5, align 8
  %394 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %393
  %395 = load i32, ptr %394, align 4
  %396 = load i32, ptr %9, align 4
  %397 = icmp ult i32 %395, %396
  br i1 %397, label %391, label %._crit_edge36, !llvm.loop !22

._crit_edge36:                                    ; preds = %391
  br label %398

398:                                              ; preds = %._crit_edge36, %385
  %399 = load i32, ptr %9, align 4
  %400 = load i64, ptr %5, align 8
  %401 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %400
  %402 = load i32, ptr %401, align 4
  %403 = icmp eq i32 %399, %402
  br i1 %403, label %404, label %413

404:                                              ; preds = %398
  %405 = load i64, ptr %5, align 8
  %406 = getelementptr inbounds nuw i8, ptr %30, i64 %405
  %407 = load i8, ptr %406, align 1
  %408 = load ptr, ptr %13, align 8
  store i8 %407, ptr %408, align 1
  %409 = getelementptr inbounds nuw i8, ptr %408, i64 1
  store ptr %409, ptr %13, align 8
  %410 = load i64, ptr %7, align 8
  %411 = add i64 %410, 1
  store i64 %411, ptr %7, align 8
  store i32 0, ptr %9, align 4
  %412 = load i64, ptr %6, align 8
  store i64 %412, ptr %5, align 8
  br label %413

413:                                              ; preds = %404, %398
  %414 = load i64, ptr %8, align 8
  %415 = icmp ugt i64 %414, 1
  br i1 %415, label %416, label %419

416:                                              ; preds = %413
  %417 = load i64, ptr %8, align 8
  %418 = lshr i64 %417, 1
  store i64 %418, ptr %8, align 8
  br label %422

419:                                              ; preds = %413
  store i64 128, ptr %8, align 8
  %420 = load ptr, ptr %12, align 8
  %421 = getelementptr inbounds nuw i8, ptr %420, i64 1
  store ptr %421, ptr %12, align 8
  br label %422

422:                                              ; preds = %419, %416
  %423 = load i64, ptr %7, align 8
  %424 = load i64, ptr %4, align 8
  %425 = icmp ult i64 %423, %424
  br i1 %425, label %373, label %._crit_edge39, !llvm.loop !23

._crit_edge39:                                    ; preds = %422
  br label %426

426:                                              ; preds = %._crit_edge39, %368
  %427 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %427) #8
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
  %11 = sext i32 %3 to i64
  %12 = getelementptr [8 x i8], ptr %1, i64 %11
  %13 = getelementptr i8, ptr %12, i64 -8
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, ptr %10, align 4
  %16 = load i32, ptr %8, align 4
  %17 = load i32, ptr %7, align 4
  %18 = sdiv i32 %17, 2
  %.not = icmp sgt i32 %16, %18
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %4
  br label %19

19:                                               ; preds = %.lr.ph, %62
  %20 = load i32, ptr %8, align 4
  %21 = shl nsw i32 %20, 1
  store i32 %21, ptr %9, align 4
  %22 = load i32, ptr %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8
  %26 = load ptr, ptr %6, align 8
  %27 = load i32, ptr %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr [8 x i8], ptr %26, i64 %28
  %30 = getelementptr i8, ptr %29, i64 -8
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr inbounds nuw [8 x i8], ptr %25, i64 %31
  %33 = load i64, ptr %32, align 8
  %34 = load ptr, ptr %5, align 8
  %35 = load ptr, ptr %6, align 8
  %36 = load i32, ptr %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8 x i8], ptr %35, i64 %37
  %39 = load i64, ptr %38, align 8
  %40 = getelementptr inbounds nuw [8 x i8], ptr %34, i64 %39
  %41 = load i64, ptr %40, align 8
  %42 = icmp ugt i64 %33, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %24
  %44 = load i32, ptr %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %9, align 4
  br label %46

46:                                               ; preds = %43, %24, %19
  %47 = load ptr, ptr %5, align 8
  %48 = load i32, ptr %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [8 x i8], ptr %47, i64 %49
  %51 = load i64, ptr %50, align 8
  %52 = load ptr, ptr %6, align 8
  %53 = load i32, ptr %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr [8 x i8], ptr %52, i64 %54
  %56 = getelementptr i8, ptr %55, i64 -8
  %57 = load i64, ptr %56, align 8
  %58 = getelementptr inbounds nuw [8 x i8], ptr %47, i64 %57
  %59 = load i64, ptr %58, align 8
  %60 = icmp ult i64 %51, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %46
  br label %76

62:                                               ; preds = %46
  %63 = load ptr, ptr %6, align 8
  %64 = load i32, ptr %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr [8 x i8], ptr %63, i64 %65
  %67 = getelementptr i8, ptr %66, i64 -8
  %68 = load i64, ptr %67, align 8
  %69 = load i32, ptr %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr [8 x i8], ptr %63, i64 %70
  %72 = getelementptr i8, ptr %71, i64 -8
  store i64 %68, ptr %72, align 8
  %73 = load i32, ptr %9, align 4
  store i32 %73, ptr %8, align 4
  %74 = load i32, ptr %7, align 4
  %75 = sdiv i32 %74, 2
  %.not1 = icmp sgt i32 %73, %75
  br i1 %.not1, label %..loopexit_crit_edge, label %19, !llvm.loop !24

..loopexit_crit_edge:                             ; preds = %62
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %76

76:                                               ; preds = %.loopexit, %61
  %77 = load i32, ptr %10, align 4
  %78 = sext i32 %77 to i64
  %79 = load ptr, ptr %6, align 8
  %80 = load i32, ptr %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr [8 x i8], ptr %79, i64 %81
  %83 = getelementptr i8, ptr %82, i64 -8
  store i64 %78, ptr %83, align 8
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
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 8
  %8 = alloca double, align 8
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store i8 0, ptr %6, align 1
  %9 = icmp sgt i32 %0, 1
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  store i32 1, ptr %5, align 4
  %11 = load i32, ptr %3, align 4
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %10
  br label %13

13:                                               ; preds = %.lr.ph, %20
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %16 = load ptr, ptr %15, align 8
  %17 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(4) @.str.4) #8
  %.not = icmp eq i32 %17, 0
  br i1 %.not, label %18, label %19

18:                                               ; preds = %13
  store i8 1, ptr %6, align 1
  br label %25

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19
  %21 = load i32, ptr %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %5, align 4
  %23 = load i32, ptr %3, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %13, label %..loopexit_crit_edge, !llvm.loop !25

..loopexit_crit_edge:                             ; preds = %20
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %10
  br label %25

25:                                               ; preds = %.loopexit, %18
  br label %26

26:                                               ; preds = %25, %2
  %27 = call ptr @generate_test_data(i64 noundef 10000000)
  store ptr %27, ptr %7, align 8
  store i32 0, ptr %5, align 4
  br i1 true, label %.lr.ph1, label %34

.lr.ph1:                                          ; preds = %26
  br label %28

28:                                               ; preds = %.lr.ph1, %30
  %29 = load ptr, ptr %7, align 8
  call void @compdecomp(ptr noundef %29, i64 noundef 10000000)
  br label %30

30:                                               ; preds = %28
  %31 = load i32, ptr %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %5, align 4
  %33 = icmp slt i32 %31, 29
  br i1 %33, label %28, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %30
  br label %34

34:                                               ; preds = %._crit_edge, %26
  store double 0.000000e+00, ptr %8, align 8
  %35 = load ptr, ptr %7, align 8
  call void @free(ptr noundef %35) #8
  %36 = load i8, ptr %6, align 1
  %.not2 = icmp eq i8 %36, 0
  br i1 %.not2, label %41, label %37

37:                                               ; preds = %34
  %38 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %39 = load double, ptr %8, align 8
  %40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef nonnull @.str.5, double noundef %39) #8
  br label %45

41:                                               ; preds = %34
  %42 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %43 = load double, ptr %8, align 8
  %44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str.6, double noundef %43) #8
  br label %45

45:                                               ; preds = %41, %37
  %46 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %47 = call i32 @fflush(ptr noundef %46) #8
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
  %.neg = mul i32 %3, -127773
  %4 = add i32 %.neg, %2
  %5 = mul nsw i32 %4, 16807
  %.neg1 = mul nsw i32 %3, -2836
  %6 = add i32 %.neg1, %5
  store i32 %6, ptr @seed, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, ptr @seed, align 4
  %10 = add nsw i32 %9, 2147483647
  store i32 %10, ptr @seed, align 4
  br label %11

11:                                               ; preds = %8, %0
  %12 = load i32, ptr @seed, align 4
  %13 = srem i32 %12, 32
  %14 = sext i32 %13 to i64
  %15 = xor i32 %12, 123459876
  store i32 %15, ptr @seed, align 4
  ret i64 %14
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) #6

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }
attributes #9 = { cold noreturn nounwind }

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
