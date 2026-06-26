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

8:                                                ; preds = %13, %1
  %9 = phi ptr [ %17, %13 ], [ %7, %1 ]
  %10 = phi i32 [ %18, %13 ], [ 0, %1 ]
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, %0
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = call i64 @random4()
  %15 = getelementptr inbounds nuw i8, ptr @.str, i64 %14
  %16 = load i8, ptr %15, align 1
  store i8 %16, ptr %9, align 1
  %17 = getelementptr inbounds nuw i8, ptr %9, i32 1
  store ptr %17, ptr %5, align 8
  %18 = add nsw i32 %10, 1
  store i32 %18, ptr %6, align 4
  br label %8, !llvm.loop !7

19:                                               ; preds = %8
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

34:                                               ; preds = %38, %2
  %35 = phi ptr [ %44, %38 ], [ %0, %2 ]
  %36 = phi i64 [ %45, %38 ], [ 0, %2 ]
  %37 = icmp ult i64 %36, %1
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load i8, ptr %35, align 1
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %40
  %42 = load i64, ptr %41, align 8
  %43 = add i64 %42, 1
  store i64 %43, ptr %41, align 8
  %44 = getelementptr inbounds nuw i8, ptr %35, i32 1
  store ptr %44, ptr %13, align 8
  %45 = add i64 %36, 1
  store i64 %45, ptr %5, align 8
  br label %34, !llvm.loop !9

46:                                               ; preds = %34
  store i64 0, ptr %7, align 8
  store i64 0, ptr %5, align 8
  br label %47

47:                                               ; preds = %68, %46
  %48 = phi i64 [ 0, %46 ], [ %69, %68 ]
  %49 = phi i64 [ 0, %46 ], [ %70, %68 ]
  %50 = icmp samesign ult i64 %49, 256
  br i1 %50, label %51, label %71

51:                                               ; preds = %47
  %52 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %49
  %53 = load i64, ptr %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %48
  store i64 %49, ptr %56, align 8
  %57 = add i64 %48, 1
  store i64 %57, ptr %7, align 8
  br label %58

58:                                               ; preds = %55, %51
  %59 = phi i64 [ %57, %55 ], [ %48, %51 ]
  %60 = add nuw nsw i64 %49, 1
  store i64 %60, ptr %5, align 8
  br label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %60
  %63 = load i64, ptr %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %59
  store i64 %60, ptr %66, align 8
  %67 = add i64 %59, 1
  store i64 %67, ptr %7, align 8
  br label %68

68:                                               ; preds = %65, %61
  %69 = phi i64 [ %67, %65 ], [ %59, %61 ]
  %70 = add nuw nsw i64 %49, 2
  store i64 %70, ptr %5, align 8
  br label %47, !llvm.loop !10

71:                                               ; preds = %47
  %.lcssa34 = phi i64 [ %48, %47 ]
  store i64 %.lcssa34, ptr %5, align 8
  br label %72

72:                                               ; preds = %75, %71
  %73 = phi i64 [ %78, %75 ], [ %.lcssa34, %71 ]
  %74 = icmp ugt i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = trunc i64 %.lcssa34 to i32
  %77 = trunc i64 %73 to i32
  call void @heap_adjust(ptr noundef %15, ptr noundef %16, i32 noundef %76, i32 noundef %77)
  %78 = add i64 %73, -1
  store i64 %78, ptr %5, align 8
  br label %72, !llvm.loop !11

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %83, %79
  %81 = phi i64 [ %84, %83 ], [ %.lcssa34, %79 ]
  %82 = icmp ugt i64 %81, 1
  br i1 %82, label %83, label %102

83:                                               ; preds = %80
  %84 = add i64 %81, -1
  store i64 %84, ptr %7, align 8
  %85 = load i64, ptr %16, align 16
  store i64 %85, ptr %20, align 8
  %86 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %84
  %87 = load i64, ptr %86, align 8
  store i64 %87, ptr %16, align 16
  %88 = trunc i64 %84 to i32
  call void @heap_adjust(ptr noundef %15, ptr noundef %16, i32 noundef %88, i32 noundef 1)
  %89 = load i64, ptr %16, align 16
  %90 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %89
  %91 = load i64, ptr %90, align 8
  %92 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %85
  %93 = load i64, ptr %92, align 8
  %94 = add i64 %91, %93
  %95 = add i64 256, %84
  %96 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %95
  store i64 %94, ptr %96, align 8
  %97 = trunc i64 %95 to i32
  %98 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %85
  store i32 %97, ptr %98, align 4
  %99 = sub i64 -256, %84
  %100 = trunc i64 %99 to i32
  %101 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %89
  store i32 %100, ptr %101, align 4
  store i64 %95, ptr %16, align 16
  call void @heap_adjust(ptr noundef %15, ptr noundef %16, i32 noundef %88, i32 noundef 1)
  br label %80, !llvm.loop !12

102:                                              ; preds = %80
  %.lcssa33 = phi i64 [ %81, %80 ]
  %103 = add i64 256, %.lcssa33
  %104 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %103
  store i32 0, ptr %104, align 4
  store i64 0, ptr %23, align 8
  store i64 0, ptr %24, align 8
  store i64 0, ptr %21, align 8
  br label %105

105:                                              ; preds = %154, %102
  %106 = phi i64 [ %155, %154 ], [ 0, %102 ]
  %107 = phi i64 [ %156, %154 ], [ 0, %102 ]
  %108 = phi i64 [ %157, %154 ], [ 0, %102 ]
  %109 = phi i64 [ %158, %154 ], [ 0, %102 ]
  %110 = phi i64 [ %159, %154 ], [ 0, %102 ]
  %111 = icmp ult i64 %110, 256
  br i1 %111, label %112, label %160

112:                                              ; preds = %105
  %113 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %110
  %114 = load i64, ptr %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %110
  store i32 0, ptr %117, align 4
  %118 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %110
  store i8 0, ptr %118, align 1
  br label %154

119:                                              ; preds = %112
  store i64 0, ptr %5, align 8
  store i64 1, ptr %6, align 8
  store i64 0, ptr %22, align 8
  %120 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %110
  %121 = load i32, ptr %120, align 4
  store i32 %121, ptr %25, align 4
  br label %122

122:                                              ; preds = %133, %119
  %123 = phi i64 [ %139, %133 ], [ 1, %119 ]
  %124 = phi i64 [ %140, %133 ], [ 0, %119 ]
  %125 = phi i64 [ %135, %133 ], [ 0, %119 ]
  %126 = phi i32 [ %138, %133 ], [ %121, %119 ]
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %122
  %129 = icmp slt i32 %126, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %128
  %131 = add i64 %125, %123
  store i64 %131, ptr %22, align 8
  %132 = sub nsw i32 0, %126
  store i32 %132, ptr %25, align 4
  br label %133

133:                                              ; preds = %130, %128
  %134 = phi i32 [ %132, %130 ], [ %126, %128 ]
  %135 = phi i64 [ %131, %130 ], [ %125, %128 ]
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds [512 x i32], ptr %17, i64 0, i64 %136
  %138 = load i32, ptr %137, align 4
  store i32 %138, ptr %25, align 4
  %139 = shl i64 %123, 1
  store i64 %139, ptr %6, align 8
  %140 = add i64 %124, 1
  store i64 %140, ptr %5, align 8
  br label %122, !llvm.loop !13

141:                                              ; preds = %122
  %.lcssa30 = phi i64 [ %124, %122 ]
  %.lcssa29 = phi i64 [ %125, %122 ]
  %142 = trunc i64 %.lcssa29 to i32
  %143 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %110
  store i32 %142, ptr %143, align 4
  %144 = trunc i64 %.lcssa30 to i8
  %145 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %110
  store i8 %144, ptr %145, align 1
  %146 = icmp ugt i64 %.lcssa29, %107
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  store i64 %.lcssa29, ptr %23, align 8
  br label %148

148:                                              ; preds = %147, %141
  %149 = phi i64 [ %.lcssa29, %147 ], [ %107, %141 ]
  %150 = icmp ugt i64 %.lcssa30, %106
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  store i64 %.lcssa30, ptr %24, align 8
  br label %152

152:                                              ; preds = %151, %148
  %153 = phi i64 [ %.lcssa30, %151 ], [ %106, %148 ]
  br label %154

154:                                              ; preds = %152, %116
  %155 = phi i64 [ %153, %152 ], [ %106, %116 ]
  %156 = phi i64 [ %149, %152 ], [ %107, %116 ]
  %157 = phi i64 [ %149, %152 ], [ %108, %116 ]
  %158 = phi i64 [ %153, %152 ], [ %109, %116 ]
  %159 = add i64 %110, 1
  store i64 %159, ptr %21, align 8
  br label %105, !llvm.loop !14

160:                                              ; preds = %105
  %.lcssa32 = phi i64 [ %108, %105 ]
  %.lcssa31 = phi i64 [ %109, %105 ]
  %161 = icmp ugt i64 %.lcssa31, 32
  br i1 %161, label %162, label %165

162:                                              ; preds = %160
  %163 = call ptr @__acrt_iob_func(i32 noundef 2)
  %164 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %163, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

165:                                              ; preds = %160
  store i64 0, ptr %26, align 8
  store i8 0, ptr %27, align 1
  store i32 -1, ptr %28, align 4
  store ptr %0, ptr %13, align 8
  %166 = icmp eq i64 %.lcssa32, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %165
  %168 = call ptr @__acrt_iob_func(i32 noundef 2)
  %169 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %168, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

170:                                              ; preds = %165
  store i64 0, ptr %6, align 8
  br label %171

171:                                              ; preds = %238, %170
  %172 = phi ptr [ %239, %238 ], [ %0, %170 ]
  %173 = phi i64 [ %.lcssa19, %238 ], [ 0, %170 ]
  %174 = phi ptr [ %.lcssa17, %238 ], [ %33, %170 ]
  %175 = phi i8 [ %.lcssa15, %238 ], [ 0, %170 ]
  %176 = phi i32 [ %.lcssa13, %238 ], [ -1, %170 ]
  %177 = phi i64 [ %.lcssa11, %238 ], [ %1, %170 ]
  %178 = phi i64 [ %240, %238 ], [ 0, %170 ]
  %179 = icmp ult i64 %178, %177
  br i1 %179, label %180, label %241

180:                                              ; preds = %171
  %181 = load i8, ptr %172, align 1
  %182 = zext i8 %181 to i64
  %183 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %182
  %184 = load i8, ptr %183, align 1
  %185 = zext i8 %184 to i32
  %186 = sub nsw i32 %185, 1
  %187 = shl i32 1, %186
  %188 = sext i32 %187 to i64
  store i64 %188, ptr %8, align 8
  store i64 0, ptr %5, align 8
  br label %189

189:                                              ; preds = %234, %180
  %190 = phi i8 [ %219, %234 ], [ %181, %180 ]
  %191 = phi i64 [ %236, %234 ], [ %188, %180 ]
  %192 = phi i8 [ %.pre4, %234 ], [ %184, %180 ]
  %193 = phi i64 [ %237, %234 ], [ 0, %180 ]
  %194 = phi i64 [ %220, %234 ], [ %173, %180 ]
  %195 = phi ptr [ %221, %234 ], [ %174, %180 ]
  %196 = phi i8 [ %235, %234 ], [ %175, %180 ]
  %197 = phi i32 [ %223, %234 ], [ %176, %180 ]
  %198 = phi i64 [ %224, %234 ], [ %177, %180 ]
  %199 = zext i8 %190 to i64
  %200 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %199
  %201 = zext i8 %192 to i64
  %202 = icmp ult i64 %193, %201
  br i1 %202, label %203, label %238

203:                                              ; preds = %189
  %204 = icmp eq i32 %197, 7
  br i1 %204, label %205, label %213

205:                                              ; preds = %203
  %206 = getelementptr inbounds nuw i8, ptr %33, i64 %194
  store i8 %196, ptr %206, align 1
  %207 = add i64 %194, 1
  store i64 %207, ptr %26, align 8
  %208 = icmp eq i64 %207, %1
  br i1 %208, label %209, label %212

209:                                              ; preds = %205
  %210 = call ptr @__acrt_iob_func(i32 noundef 2)
  %211 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %210, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

212:                                              ; preds = %205
  store i32 0, ptr %28, align 4
  store i8 0, ptr %27, align 1
  %.pre5 = load i8, ptr %172, align 1
  %.pre6 = zext i8 %.pre5 to i64
  br label %218

213:                                              ; preds = %203
  %214 = add nsw i32 %197, 1
  store i32 %214, ptr %28, align 4
  %215 = sext i8 %196 to i32
  %216 = shl i32 %215, 1
  %217 = trunc i32 %216 to i8
  store i8 %217, ptr %27, align 1
  br label %218

218:                                              ; preds = %213, %212
  %.pre-phi = phi i64 [ %199, %213 ], [ %.pre6, %212 ]
  %219 = phi i8 [ %190, %213 ], [ %.pre5, %212 ]
  %220 = phi i64 [ %194, %213 ], [ %207, %212 ]
  %221 = phi ptr [ %195, %213 ], [ %33, %212 ]
  %222 = phi i8 [ %217, %213 ], [ 0, %212 ]
  %223 = phi i32 [ %214, %213 ], [ 0, %212 ]
  %224 = phi i64 [ %198, %213 ], [ %1, %212 ]
  %225 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %.pre-phi
  %226 = load i32, ptr %225, align 4
  %227 = zext i32 %226 to i64
  %228 = and i64 %227, %191
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %218
  %231 = sext i8 %222 to i32
  %232 = or i32 %231, 1
  %233 = trunc i32 %232 to i8
  store i8 %233, ptr %27, align 1
  br label %234

234:                                              ; preds = %230, %218
  %235 = phi i8 [ %233, %230 ], [ %222, %218 ]
  %236 = lshr i64 %191, 1
  store i64 %236, ptr %8, align 8
  %237 = add i64 %193, 1
  store i64 %237, ptr %5, align 8
  %.phi.trans.insert3 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %.pre-phi
  %.pre4 = load i8, ptr %.phi.trans.insert3, align 1
  br label %189, !llvm.loop !15

238:                                              ; preds = %189
  %.lcssa19 = phi i64 [ %194, %189 ]
  %.lcssa17 = phi ptr [ %195, %189 ]
  %.lcssa15 = phi i8 [ %196, %189 ]
  %.lcssa13 = phi i32 [ %197, %189 ]
  %.lcssa11 = phi i64 [ %198, %189 ]
  %239 = getelementptr inbounds nuw i8, ptr %172, i32 1
  store ptr %239, ptr %13, align 8
  %240 = add i64 %178, 1
  store i64 %240, ptr %6, align 8
  br label %171, !llvm.loop !16

241:                                              ; preds = %171
  %.lcssa27 = phi i64 [ %173, %171 ]
  %.lcssa25 = phi ptr [ %174, %171 ]
  %.lcssa23 = phi i8 [ %175, %171 ]
  %.lcssa21 = phi i32 [ %176, %171 ]
  %242 = sub nsw i32 7, %.lcssa21
  %243 = sext i8 %.lcssa23 to i32
  %244 = shl i32 %243, %242
  %245 = trunc i32 %244 to i8
  store i8 %245, ptr %27, align 1
  %246 = getelementptr inbounds nuw i8, ptr %.lcssa25, i64 %.lcssa27
  store i8 %245, ptr %246, align 1
  %247 = load i64, ptr %26, align 8
  %248 = add i64 %247, 1
  store i64 %248, ptr %26, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %29, i8 0, i64 1024, i1 false)
  store ptr %30, ptr %31, align 8
  store i64 0, ptr %6, align 8
  br label %249

249:                                              ; preds = %287, %241
  %250 = phi ptr [ %255, %287 ], [ %30, %241 ]
  %251 = phi i64 [ %288, %287 ], [ 0, %241 ]
  %252 = icmp ult i64 %251, 256
  br i1 %252, label %253, label %289

253:                                              ; preds = %249
  %254 = trunc i64 %251 to i8
  store i8 %254, ptr %250, align 1
  %255 = getelementptr inbounds nuw i8, ptr %250, i32 1
  store ptr %255, ptr %31, align 8
  %256 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %251
  %257 = load i32, ptr %256, align 4
  %258 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %251
  %259 = load i8, ptr %258, align 1
  %260 = zext i8 %259 to i32
  %261 = or i32 %257, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %287

263:                                              ; preds = %253
  store i32 0, ptr %9, align 4
  %264 = sub nsw i32 %260, 1
  %265 = shl i32 1, %264
  %266 = sext i32 %265 to i64
  store i64 %266, ptr %8, align 8
  store i64 0, ptr %5, align 8
  br label %267

267:                                              ; preds = %281, %263
  %268 = phi i64 [ %283, %281 ], [ %266, %263 ]
  %269 = phi i32 [ %282, %281 ], [ 0, %263 ]
  %270 = phi i64 [ %284, %281 ], [ 0, %263 ]
  %271 = zext i8 %259 to i64
  %272 = icmp ult i64 %270, %271
  br i1 %272, label %273, label %285

273:                                              ; preds = %267
  %274 = mul i32 %269, 2
  %275 = add i32 %274, 1
  store i32 %275, ptr %9, align 4
  %276 = zext i32 %257 to i64
  %277 = and i64 %276, %268
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %281

279:                                              ; preds = %273
  %280 = add i32 %275, 1
  store i32 %280, ptr %9, align 4
  br label %281

281:                                              ; preds = %279, %273
  %282 = phi i32 [ %280, %279 ], [ %275, %273 ]
  %283 = lshr i64 %268, 1
  store i64 %283, ptr %8, align 8
  %284 = add i64 %270, 1
  store i64 %284, ptr %5, align 8
  br label %267, !llvm.loop !17

285:                                              ; preds = %267
  %.lcssa10 = phi i32 [ %269, %267 ]
  %286 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %251
  store i32 %.lcssa10, ptr %286, align 4
  br label %287

287:                                              ; preds = %285, %253
  %288 = add i64 %251, 1
  store i64 %288, ptr %6, align 8
  br label %249, !llvm.loop !18

289:                                              ; preds = %249
  store i64 1, ptr %5, align 8
  br label %290

290:                                              ; preds = %317, %289
  %291 = phi i64 [ %320, %317 ], [ 1, %289 ]
  %292 = icmp ult i64 %291, 256
  br i1 %292, label %293, label %321

293:                                              ; preds = %290
  %294 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %291
  %295 = load i32, ptr %294, align 4
  store i32 %295, ptr %10, align 4
  %296 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %291
  %297 = load i8, ptr %296, align 1
  store i8 %297, ptr %11, align 1
  store i64 %291, ptr %6, align 8
  br label %298

298:                                              ; preds = %308, %293
  %299 = phi i64 [ %316, %308 ], [ %291, %293 ]
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %306

301:                                              ; preds = %298
  %302 = sub i64 %299, 1
  %303 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %302
  %304 = load i32, ptr %303, align 4
  %305 = icmp ugt i32 %304, %295
  br label %306

306:                                              ; preds = %301, %298
  %307 = phi i1 [ false, %298 ], [ %305, %301 ]
  br i1 %307, label %308, label %317

308:                                              ; preds = %306
  %309 = sub i64 %299, 1
  %310 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %309
  %311 = load i32, ptr %310, align 4
  %312 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %299
  store i32 %311, ptr %312, align 4
  %313 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %309
  %314 = load i8, ptr %313, align 1
  %315 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %299
  store i8 %314, ptr %315, align 1
  %316 = add i64 %299, -1
  store i64 %316, ptr %6, align 8
  br label %298, !llvm.loop !19

317:                                              ; preds = %306
  %.lcssa9 = phi i64 [ %299, %306 ]
  %318 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %.lcssa9
  store i32 %295, ptr %318, align 4
  %319 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %.lcssa9
  store i8 %297, ptr %319, align 1
  %320 = add i64 %291, 1
  store i64 %320, ptr %5, align 8
  br label %290, !llvm.loop !20

321:                                              ; preds = %290
  store i64 0, ptr %6, align 8
  br label %322

322:                                              ; preds = %327, %321
  %323 = phi i64 [ %328, %327 ], [ 0, %321 ]
  %324 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %323
  %325 = load i32, ptr %324, align 4
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %329

327:                                              ; preds = %322
  %328 = add i64 %323, 1
  store i64 %328, ptr %6, align 8
  br label %322, !llvm.loop !21

329:                                              ; preds = %322
  %.lcssa8 = phi i64 [ %323, %322 ]
  store i32 0, ptr %9, align 4
  store i64 %.lcssa8, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  %330 = load ptr, ptr %14, align 8
  store ptr %330, ptr %12, align 8
  %331 = load ptr, ptr %3, align 8
  store ptr %331, ptr %13, align 8
  %.pre = load i64, ptr %4, align 8
  br label %332

332:                                              ; preds = %379, %329
  %333 = phi ptr [ %370, %379 ], [ %331, %329 ]
  %334 = phi i64 [ %371, %379 ], [ %.lcssa8, %329 ]
  %335 = phi i64 [ %380, %379 ], [ 128, %329 ]
  %336 = phi ptr [ %381, %379 ], [ %330, %329 ]
  %337 = phi i32 [ %372, %379 ], [ 0, %329 ]
  %338 = phi i64 [ %373, %379 ], [ 0, %329 ]
  %339 = icmp ult i64 %338, %.pre
  br i1 %339, label %340, label %382

340:                                              ; preds = %332
  %341 = mul i32 %337, 2
  %342 = add i32 %341, 1
  store i32 %342, ptr %9, align 4
  %343 = load i8, ptr %336, align 1
  %344 = zext i8 %343 to i64
  %345 = and i64 %344, %335
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %349

347:                                              ; preds = %340
  %348 = add i32 %342, 1
  store i32 %348, ptr %9, align 4
  br label %349

349:                                              ; preds = %347, %340
  %350 = phi i32 [ %348, %347 ], [ %342, %340 ]
  br label %351

351:                                              ; preds = %356, %349
  %352 = phi i64 [ %357, %356 ], [ %334, %349 ]
  %353 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %352
  %354 = load i32, ptr %353, align 4
  %355 = icmp ult i32 %354, %350
  br i1 %355, label %356, label %358

356:                                              ; preds = %351
  %357 = add i64 %352, 1
  store i64 %357, ptr %5, align 8
  br label %351, !llvm.loop !22

358:                                              ; preds = %351
  %.lcssa7 = phi i64 [ %352, %351 ]
  %.lcssa = phi i32 [ %354, %351 ]
  %359 = icmp eq i32 %350, %.lcssa
  br i1 %359, label %360, label %368

360:                                              ; preds = %358
  %361 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %.lcssa7
  %362 = load i8, ptr %361, align 1
  store i8 %362, ptr %333, align 1
  %363 = load ptr, ptr %13, align 8
  %364 = getelementptr inbounds nuw i8, ptr %363, i32 1
  store ptr %364, ptr %13, align 8
  %365 = load i64, ptr %7, align 8
  %366 = add i64 %365, 1
  store i64 %366, ptr %7, align 8
  store i32 0, ptr %9, align 4
  %367 = load i64, ptr %6, align 8
  store i64 %367, ptr %5, align 8
  %.pre1 = load i64, ptr %8, align 8
  br label %368

368:                                              ; preds = %360, %358
  %369 = phi i64 [ %.pre1, %360 ], [ %335, %358 ]
  %370 = phi ptr [ %364, %360 ], [ %333, %358 ]
  %371 = phi i64 [ %367, %360 ], [ %.lcssa7, %358 ]
  %372 = phi i32 [ 0, %360 ], [ %350, %358 ]
  %373 = phi i64 [ %366, %360 ], [ %338, %358 ]
  %374 = icmp ugt i64 %369, 1
  br i1 %374, label %375, label %377

375:                                              ; preds = %368
  %376 = lshr i64 %369, 1
  store i64 %376, ptr %8, align 8
  br label %379

377:                                              ; preds = %368
  store i64 128, ptr %8, align 8
  %378 = getelementptr inbounds nuw i8, ptr %336, i32 1
  store ptr %378, ptr %12, align 8
  br label %379

379:                                              ; preds = %377, %375
  %380 = phi i64 [ 128, %377 ], [ %376, %375 ]
  %381 = phi ptr [ %378, %377 ], [ %336, %375 ]
  br label %332, !llvm.loop !23

382:                                              ; preds = %332
  call void @free(ptr noundef %330)
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
  br label %16

16:                                               ; preds = %51, %4
  %17 = phi i32 [ %39, %51 ], [ %3, %4 ]
  %18 = sdiv i32 %2, 2
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %._crit_edge

._crit_edge:                                      ; preds = %16
  %.lcssa = phi i32 [ %17, %16 ]
  %.pre = sext i32 %15 to i64
  br label %55

20:                                               ; preds = %16
  %21 = add nsw i32 %17, %17
  store i32 %21, ptr %9, align 4
  %22 = icmp slt i32 %21, %2
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = sub nsw i32 %21, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, ptr %1, i64 %25
  %27 = load i64, ptr %26, align 8
  %28 = getelementptr inbounds nuw i64, ptr %0, i64 %27
  %29 = load i64, ptr %28, align 8
  %30 = sext i32 %21 to i64
  %31 = getelementptr inbounds i64, ptr %1, i64 %30
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr inbounds nuw i64, ptr %0, i64 %32
  %34 = load i64, ptr %33, align 8
  %35 = icmp ugt i64 %29, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %23
  %37 = add nsw i32 %21, 1
  store i32 %37, ptr %9, align 4
  br label %38

38:                                               ; preds = %36, %23, %20
  %39 = phi i32 [ %37, %36 ], [ %21, %23 ], [ %21, %20 ]
  %40 = sext i32 %15 to i64
  %41 = getelementptr inbounds i64, ptr %0, i64 %40
  %42 = load i64, ptr %41, align 8
  %43 = sub nsw i32 %39, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, ptr %1, i64 %44
  %46 = load i64, ptr %45, align 8
  %47 = getelementptr inbounds nuw i64, ptr %0, i64 %46
  %48 = load i64, ptr %47, align 8
  %49 = icmp ult i64 %42, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  %.lcssa2 = phi i64 [ %40, %38 ]
  %.lcssa1 = phi i32 [ %17, %38 ]
  br label %55

51:                                               ; preds = %38
  %52 = sub nsw i32 %17, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, ptr %1, i64 %53
  store i64 %46, ptr %54, align 8
  store i32 %39, ptr %8, align 4
  br label %16, !llvm.loop !24

55:                                               ; preds = %._crit_edge, %50
  %56 = phi i32 [ %.lcssa, %._crit_edge ], [ %.lcssa1, %50 ]
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %.lcssa2, %50 ]
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
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  store i32 1, ptr %6, align 4
  br label %12

12:                                               ; preds = %21, %11
  %13 = phi i32 [ %22, %21 ], [ 1, %11 ]
  %14 = icmp slt i32 %13, %0
  br i1 %14, label %15, label %.loopexit

15:                                               ; preds = %12
  %16 = getelementptr inbounds ptr, ptr %1, i64 1
  %17 = load ptr, ptr %16, align 8
  %18 = call i32 @strcmp(ptr noundef %17, ptr noundef @.str.4) #7
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store i8 1, ptr %7, align 1
  br label %23

21:                                               ; preds = %15
  %22 = add nsw i32 %13, 1
  store i32 %22, ptr %6, align 4
  br label %12, !llvm.loop !25

.loopexit:                                        ; preds = %12
  br label %23

23:                                               ; preds = %.loopexit, %20
  %24 = phi i8 [ 1, %20 ], [ 0, %.loopexit ]
  br label %25

25:                                               ; preds = %23, %2
  %26 = phi i8 [ %24, %23 ], [ 0, %2 ]
  %27 = call ptr @generate_test_data(i64 noundef 10000000)
  store ptr %27, ptr %8, align 8
  store i32 0, ptr %6, align 4
  br label %28

28:                                               ; preds = %31, %25
  %29 = phi i32 [ %32, %31 ], [ 0, %25 ]
  %30 = icmp slt i32 %29, 30
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  call void @compdecomp(ptr noundef %27, i64 noundef 10000000)
  %32 = add nsw i32 %29, 1
  store i32 %32, ptr %6, align 4
  br label %28, !llvm.loop !26

33:                                               ; preds = %28
  store double 0.000000e+00, ptr %9, align 8
  call void @free(ptr noundef %27)
  %34 = icmp ne i8 %26, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = call ptr @__acrt_iob_func(i32 noundef 1)
  %37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.5, double noundef 0.000000e+00) #7
  br label %41

38:                                               ; preds = %33
  %39 = call ptr @__acrt_iob_func(i32 noundef 1)
  %40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef @.str.6, double noundef 0.000000e+00) #7
  br label %41

41:                                               ; preds = %38, %35
  %42 = call ptr @__acrt_iob_func(i32 noundef 1)
  %43 = call i32 @fflush(ptr noundef %42)
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
