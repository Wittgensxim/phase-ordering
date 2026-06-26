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
  %18 = add nsw i32 %10, 1
  br label %8, !llvm.loop !7

19:                                               ; preds = %8
  store i32 %10, ptr %6, align 4
  store ptr %9, ptr %5, align 8
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
  %45 = add i64 %36, 1
  br label %34, !llvm.loop !9

46:                                               ; preds = %34
  store i64 %36, ptr %5, align 8
  store ptr %35, ptr %13, align 8
  store i64 0, ptr %7, align 8
  store i64 0, ptr %5, align 8
  br label %47

47:                                               ; preds = %57, %46
  %.promoted9 = phi i64 [ %58, %57 ], [ 0, %46 ]
  %48 = phi i64 [ %59, %57 ], [ 0, %46 ]
  %49 = icmp ult i64 %48, 256
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %48
  %52 = load i64, ptr %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %.promoted9
  store i64 %48, ptr %55, align 8
  %56 = add i64 %.promoted9, 1
  br label %57

57:                                               ; preds = %54, %50
  %58 = phi i64 [ %56, %54 ], [ %.promoted9, %50 ]
  %59 = add i64 %48, 1
  br label %47, !llvm.loop !10

60:                                               ; preds = %47
  store i64 %48, ptr %5, align 8
  store i64 %.promoted9, ptr %7, align 8
  store i64 %.promoted9, ptr %5, align 8
  %61 = trunc i64 %.promoted9 to i32
  br label %62

62:                                               ; preds = %64, %60
  %.promoted23 = phi i64 [ %66, %64 ], [ %.promoted9, %60 ]
  %63 = icmp ugt i64 %.promoted23, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %62
  %65 = trunc i64 %.promoted23 to i32
  call void @heap_adjust(ptr noundef %15, ptr noundef %16, i32 noundef %61, i32 noundef %65)
  %66 = add i64 %.promoted23, -1
  br label %62, !llvm.loop !11

67:                                               ; preds = %62
  store i64 %.promoted23, ptr %5, align 8
  br label %68

68:                                               ; preds = %72, %67
  %69 = phi i64 [ %74, %72 ], [ undef, %67 ]
  %70 = phi i64 [ %73, %72 ], [ %.promoted9, %67 ]
  %71 = icmp ugt i64 %70, 1
  br i1 %71, label %72, label %91

72:                                               ; preds = %68
  %73 = add i64 %70, -1
  %74 = load i64, ptr %16, align 16
  %75 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %73
  %76 = load i64, ptr %75, align 8
  store i64 %76, ptr %16, align 16
  %77 = trunc i64 %73 to i32
  call void @heap_adjust(ptr noundef %15, ptr noundef %16, i32 noundef %77, i32 noundef 1)
  %78 = load i64, ptr %16, align 16
  %79 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %78
  %80 = load i64, ptr %79, align 8
  %81 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %74
  %82 = load i64, ptr %81, align 8
  %83 = add i64 %80, %82
  %84 = add i64 256, %73
  %85 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %84
  store i64 %83, ptr %85, align 8
  %86 = trunc i64 %84 to i32
  %87 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %74
  store i32 %86, ptr %87, align 4
  %88 = sub i64 -256, %73
  %89 = trunc i64 %88 to i32
  %90 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %78
  store i32 %89, ptr %90, align 4
  store i64 %84, ptr %16, align 16
  call void @heap_adjust(ptr noundef %15, ptr noundef %16, i32 noundef %77, i32 noundef 1)
  br label %68, !llvm.loop !12

91:                                               ; preds = %68
  store i64 %70, ptr %7, align 8
  store i64 %69, ptr %20, align 8
  %92 = add i64 256, %70
  %93 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %92
  store i32 0, ptr %93, align 4
  store i64 0, ptr %23, align 8
  store i64 0, ptr %24, align 8
  store i64 0, ptr %21, align 8
  br label %94

94:                                               ; preds = %138, %91
  %.lcssa2042 = phi i64 [ %.lcssa2040, %138 ], [ 0, %91 ]
  %95 = phi i64 [ %.lcssa1836, %138 ], [ 0, %91 ]
  %.lcssa1434 = phi i32 [ %.lcssa1433, %138 ], [ undef, %91 ]
  %.lcssa1831 = phi i64 [ %.lcssa1830, %138 ], [ undef, %91 ]
  %.lcssa1628 = phi i64 [ %.lcssa1627, %138 ], [ undef, %91 ]
  %.promoted67 = phi i64 [ %.lcssa2024, %138 ], [ %.promoted23, %91 ]
  %96 = phi i64 [ %139, %138 ], [ 0, %91 ]
  %97 = icmp ult i64 %96, 256
  br i1 %97, label %98, label %140

98:                                               ; preds = %94
  %99 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %96
  %100 = load i64, ptr %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %96
  store i32 0, ptr %103, align 4
  %104 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %96
  store i8 0, ptr %104, align 1
  br label %138

105:                                              ; preds = %98
  %106 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %96
  %107 = load i32, ptr %106, align 4
  br label %108

108:                                              ; preds = %119, %105
  %109 = phi i64 [ %126, %119 ], [ 0, %105 ]
  %110 = phi i64 [ %120, %119 ], [ 0, %105 ]
  %111 = phi i64 [ %125, %119 ], [ 1, %105 ]
  %112 = phi i32 [ %124, %119 ], [ %107, %105 ]
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %108
  %115 = icmp slt i32 %112, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %114
  %117 = add i64 %110, %111
  %118 = sub nsw i32 0, %112
  br label %119

119:                                              ; preds = %116, %114
  %120 = phi i64 [ %117, %116 ], [ %110, %114 ]
  %121 = phi i32 [ %118, %116 ], [ %112, %114 ]
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [512 x i32], ptr %17, i64 0, i64 %122
  %124 = load i32, ptr %123, align 4
  %125 = shl i64 %111, 1
  %126 = add i64 %109, 1
  br label %108, !llvm.loop !13

127:                                              ; preds = %108
  %128 = trunc i64 %110 to i32
  %129 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %96
  store i32 %128, ptr %129, align 4
  %130 = trunc i64 %109 to i8
  %131 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %96
  store i8 %130, ptr %131, align 1
  %132 = icmp ugt i64 %110, %95
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  br label %134

134:                                              ; preds = %133, %127
  %.lcssa1837 = phi i64 [ %110, %133 ], [ %95, %127 ]
  %135 = icmp ugt i64 %109, %.lcssa2042
  br i1 %135, label %136, label %137

136:                                              ; preds = %134
  br label %137

137:                                              ; preds = %136, %134
  %.lcssa2041 = phi i64 [ %109, %136 ], [ %.lcssa2042, %134 ]
  br label %138

138:                                              ; preds = %137, %102
  %.lcssa2040 = phi i64 [ %.lcssa2041, %137 ], [ %.lcssa2042, %102 ]
  %.lcssa1836 = phi i64 [ %.lcssa1837, %137 ], [ %95, %102 ]
  %.lcssa1433 = phi i32 [ 0, %137 ], [ %.lcssa1434, %102 ]
  %.lcssa1830 = phi i64 [ %110, %137 ], [ %.lcssa1831, %102 ]
  %.lcssa1627 = phi i64 [ %111, %137 ], [ %.lcssa1628, %102 ]
  %.lcssa2024 = phi i64 [ %109, %137 ], [ %.promoted67, %102 ]
  %139 = add i64 %96, 1
  br label %94, !llvm.loop !14

140:                                              ; preds = %94
  store i64 %96, ptr %21, align 8
  store i64 %.promoted67, ptr %5, align 8
  store i64 %.lcssa1628, ptr %6, align 8
  store i64 %.lcssa1831, ptr %22, align 8
  store i32 %.lcssa1434, ptr %25, align 4
  store i64 %95, ptr %23, align 8
  store i64 %.lcssa2042, ptr %24, align 8
  %141 = icmp ugt i64 %.lcssa2042, 32
  br i1 %141, label %142, label %145

142:                                              ; preds = %140
  %143 = call ptr @__acrt_iob_func(i32 noundef 2)
  %144 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %143, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

145:                                              ; preds = %140
  store i64 0, ptr %26, align 8
  store i8 0, ptr %27, align 1
  store i32 -1, ptr %28, align 4
  store ptr %0, ptr %13, align 8
  %146 = icmp eq i64 %95, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %145
  %148 = call ptr @__acrt_iob_func(i32 noundef 2)
  %149 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %148, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

150:                                              ; preds = %145
  store i64 0, ptr %6, align 8
  br label %151

151:                                              ; preds = %209, %150
  %.lcssa5376 = phi i64 [ %168, %209 ], [ 0, %150 ]
  %.lcssa5073 = phi i8 [ %169, %209 ], [ 0, %150 ]
  %.lcssa4770 = phi i32 [ %170, %209 ], [ -1, %150 ]
  %.lcssa4468 = phi i64 [ %171, %209 ], [ %.promoted67, %150 ]
  %.lcssa5665 = phi i64 [ %167, %209 ], [ undef, %150 ]
  %152 = phi ptr [ %210, %209 ], [ %0, %150 ]
  %153 = phi i64 [ %211, %209 ], [ 0, %150 ]
  %154 = icmp ult i64 %153, %1
  br i1 %154, label %155, label %212

155:                                              ; preds = %151
  %156 = load i8, ptr %152, align 1
  %157 = zext i8 %156 to i64
  %158 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %157
  %159 = load i8, ptr %158, align 1
  %160 = zext i8 %159 to i32
  %161 = sub nsw i32 %160, 1
  %162 = shl i32 1, %161
  %163 = sext i32 %162 to i64
  br label %164

164:                                              ; preds = %205, %155
  %165 = phi i8 [ %192, %205 ], [ %156, %155 ]
  %166 = phi i8 [ %.pre, %205 ], [ %159, %155 ]
  %167 = phi i64 [ %207, %205 ], [ %163, %155 ]
  %168 = phi i64 [ %193, %205 ], [ %.lcssa5376, %155 ]
  %169 = phi i8 [ %206, %205 ], [ %.lcssa5073, %155 ]
  %170 = phi i32 [ %195, %205 ], [ %.lcssa4770, %155 ]
  %171 = phi i64 [ %208, %205 ], [ 0, %155 ]
  %172 = zext i8 %165 to i64
  %173 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %172
  %174 = zext i8 %166 to i64
  %175 = icmp ult i64 %171, %174
  br i1 %175, label %176, label %209

176:                                              ; preds = %164
  %177 = icmp eq i32 %170, 7
  br i1 %177, label %178, label %186

178:                                              ; preds = %176
  %179 = getelementptr inbounds nuw i8, ptr %33, i64 %168
  store i8 %169, ptr %179, align 1
  %180 = add i64 %168, 1
  %181 = icmp eq i64 %180, %1
  br i1 %181, label %182, label %185

182:                                              ; preds = %178
  store i64 %153, ptr %6, align 8
  store ptr %152, ptr %13, align 8
  store i64 %163, ptr %8, align 8
  store i64 0, ptr %5, align 8
  store i32 %.lcssa4770, ptr %28, align 4
  store i8 %.lcssa5073, ptr %27, align 1
  store i64 %.lcssa5376, ptr %26, align 8
  store i64 %171, ptr %5, align 8
  store i32 7, ptr %28, align 4
  store i8 %169, ptr %27, align 1
  store i64 %1, ptr %26, align 8
  store i64 %167, ptr %8, align 8
  %183 = call ptr @__acrt_iob_func(i32 noundef 2)
  %184 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %183, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

185:                                              ; preds = %178
  %.pre124 = load i8, ptr %152, align 1
  %.pre125 = zext i8 %.pre124 to i64
  br label %191

186:                                              ; preds = %176
  %187 = add nsw i32 %170, 1
  %188 = sext i8 %169 to i32
  %189 = shl i32 %188, 1
  %190 = trunc i32 %189 to i8
  br label %191

191:                                              ; preds = %186, %185
  %.pre-phi = phi i64 [ %172, %186 ], [ %.pre125, %185 ]
  %192 = phi i8 [ %165, %186 ], [ %.pre124, %185 ]
  %193 = phi i64 [ %168, %186 ], [ %180, %185 ]
  %194 = phi i8 [ %190, %186 ], [ 0, %185 ]
  %195 = phi i32 [ %187, %186 ], [ 0, %185 ]
  %196 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %.pre-phi
  %197 = load i32, ptr %196, align 4
  %198 = zext i32 %197 to i64
  %199 = and i64 %198, %167
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %191
  %202 = sext i8 %194 to i32
  %203 = or i32 %202, 1
  %204 = trunc i32 %203 to i8
  br label %205

205:                                              ; preds = %201, %191
  %206 = phi i8 [ %204, %201 ], [ %194, %191 ]
  %207 = lshr i64 %167, 1
  %208 = add i64 %171, 1
  %.phi.trans.insert = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %164, !llvm.loop !15

209:                                              ; preds = %164
  %210 = getelementptr inbounds nuw i8, ptr %152, i32 1
  %211 = add i64 %153, 1
  br label %151, !llvm.loop !16

212:                                              ; preds = %151
  store i64 %153, ptr %6, align 8
  store ptr %152, ptr %13, align 8
  store i64 %.lcssa5665, ptr %8, align 8
  store i64 %.lcssa4468, ptr %5, align 8
  store i32 %.lcssa4770, ptr %28, align 4
  store i8 %.lcssa5073, ptr %27, align 1
  store i64 %.lcssa5376, ptr %26, align 8
  %213 = sub nsw i32 7, %.lcssa4770
  %214 = sext i8 %.lcssa5073 to i32
  %215 = shl i32 %214, %213
  %216 = trunc i32 %215 to i8
  store i8 %216, ptr %27, align 1
  %217 = getelementptr inbounds nuw i8, ptr %33, i64 %.lcssa5376
  store i8 %216, ptr %217, align 1
  %218 = add i64 %.lcssa5376, 1
  store i64 %218, ptr %26, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %29, i8 0, i64 1024, i1 false)
  store ptr %30, ptr %31, align 8
  store i64 0, ptr %6, align 8
  br label %219

219:                                              ; preds = %257, %212
  %.lcssa7996 = phi i64 [ %.lcssa7995, %257 ], [ %.lcssa4468, %212 ]
  %.lcssa8393 = phi i64 [ %.lcssa8392, %257 ], [ %.lcssa5665, %212 ]
  %.lcssa8190 = phi i32 [ %.lcssa8189, %257 ], [ undef, %212 ]
  %220 = phi ptr [ %225, %257 ], [ %30, %212 ]
  %221 = phi i64 [ %258, %257 ], [ 0, %212 ]
  %222 = icmp ult i64 %221, 256
  br i1 %222, label %223, label %259

223:                                              ; preds = %219
  %224 = trunc i64 %221 to i8
  store i8 %224, ptr %220, align 1
  %225 = getelementptr inbounds nuw i8, ptr %220, i32 1
  %226 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %221
  %227 = load i32, ptr %226, align 4
  %228 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %221
  %229 = load i8, ptr %228, align 1
  %230 = zext i8 %229 to i32
  %231 = or i32 %227, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %257

233:                                              ; preds = %223
  %234 = sub nsw i32 %230, 1
  %235 = shl i32 1, %234
  %236 = sext i32 %235 to i64
  %237 = zext i8 %229 to i64
  br label %238

238:                                              ; preds = %251, %233
  %239 = phi i64 [ %253, %251 ], [ %236, %233 ]
  %240 = phi i32 [ %252, %251 ], [ 0, %233 ]
  %241 = phi i64 [ %254, %251 ], [ 0, %233 ]
  %242 = icmp ult i64 %241, %237
  br i1 %242, label %243, label %255

243:                                              ; preds = %238
  %244 = mul i32 %240, 2
  %245 = add i32 %244, 1
  %246 = zext i32 %227 to i64
  %247 = and i64 %246, %239
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %243
  %250 = add i32 %245, 1
  br label %251

251:                                              ; preds = %249, %243
  %252 = phi i32 [ %250, %249 ], [ %245, %243 ]
  %253 = lshr i64 %239, 1
  %254 = add i64 %241, 1
  br label %238, !llvm.loop !17

255:                                              ; preds = %238
  %256 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %221
  store i32 %240, ptr %256, align 4
  br label %257

257:                                              ; preds = %255, %223
  %.lcssa7995 = phi i64 [ %241, %255 ], [ %.lcssa7996, %223 ]
  %.lcssa8392 = phi i64 [ %239, %255 ], [ %.lcssa8393, %223 ]
  %.lcssa8189 = phi i32 [ %240, %255 ], [ %.lcssa8190, %223 ]
  %258 = add i64 %221, 1
  br label %219, !llvm.loop !18

259:                                              ; preds = %219
  store i64 %221, ptr %6, align 8
  store ptr %220, ptr %31, align 8
  store i32 %.lcssa8190, ptr %9, align 4
  store i64 %.lcssa8393, ptr %8, align 8
  store i64 %.lcssa7996, ptr %5, align 8
  store i64 1, ptr %5, align 8
  br label %260

260:                                              ; preds = %289, %259
  %.lcssa98106 = phi i64 [ %271, %289 ], [ %221, %259 ]
  %261 = phi i8 [ %269, %289 ], [ undef, %259 ]
  %262 = phi i32 [ %267, %289 ], [ undef, %259 ]
  %263 = phi i64 [ %292, %289 ], [ 1, %259 ]
  %264 = icmp ult i64 %263, 256
  br i1 %264, label %265, label %293

265:                                              ; preds = %260
  %266 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %263
  %267 = load i32, ptr %266, align 4
  %268 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %263
  %269 = load i8, ptr %268, align 1
  br label %270

270:                                              ; preds = %280, %265
  %271 = phi i64 [ %288, %280 ], [ %263, %265 ]
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %278

273:                                              ; preds = %270
  %274 = sub i64 %271, 1
  %275 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %274
  %276 = load i32, ptr %275, align 4
  %277 = icmp ugt i32 %276, %267
  br label %278

278:                                              ; preds = %273, %270
  %279 = phi i1 [ false, %270 ], [ %277, %273 ]
  br i1 %279, label %280, label %289

280:                                              ; preds = %278
  %281 = sub i64 %271, 1
  %282 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %281
  %283 = load i32, ptr %282, align 4
  %284 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %271
  store i32 %283, ptr %284, align 4
  %285 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %281
  %286 = load i8, ptr %285, align 1
  %287 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %271
  store i8 %286, ptr %287, align 1
  %288 = add i64 %271, -1
  br label %270, !llvm.loop !19

289:                                              ; preds = %278
  %290 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %271
  store i32 %267, ptr %290, align 4
  %291 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %271
  store i8 %269, ptr %291, align 1
  %292 = add i64 %263, 1
  br label %260, !llvm.loop !20

293:                                              ; preds = %260
  store i64 %263, ptr %5, align 8
  store i32 %262, ptr %10, align 4
  store i8 %261, ptr %11, align 1
  store i64 %.lcssa98106, ptr %6, align 8
  store i64 0, ptr %6, align 8
  br label %294

294:                                              ; preds = %299, %293
  %295 = phi i64 [ %300, %299 ], [ 0, %293 ]
  %296 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %295
  %297 = load i32, ptr %296, align 4
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %301

299:                                              ; preds = %294
  %300 = add i64 %295, 1
  br label %294, !llvm.loop !21

301:                                              ; preds = %294
  store i64 %295, ptr %6, align 8
  store i32 0, ptr %9, align 4
  store i64 %295, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  store ptr %33, ptr %12, align 8
  store ptr %0, ptr %13, align 8
  br label %302

302:                                              ; preds = %343, %301
  %303 = phi ptr [ %335, %343 ], [ %0, %301 ]
  %.lcssa110120 = phi i64 [ %.lcssa110121, %343 ], [ %295, %301 ]
  %304 = phi i64 [ %344, %343 ], [ 128, %301 ]
  %305 = phi ptr [ %345, %343 ], [ %33, %301 ]
  %306 = phi i32 [ %336, %343 ], [ 0, %301 ]
  %307 = phi i64 [ %337, %343 ], [ 0, %301 ]
  %308 = icmp ult i64 %307, %1
  br i1 %308, label %309, label %346

309:                                              ; preds = %302
  %310 = mul i32 %306, 2
  %311 = add i32 %310, 1
  %312 = load i8, ptr %305, align 1
  %313 = zext i8 %312 to i64
  %314 = and i64 %313, %304
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %318

316:                                              ; preds = %309
  %317 = add i32 %311, 1
  br label %318

318:                                              ; preds = %316, %309
  %319 = phi i32 [ %317, %316 ], [ %311, %309 ]
  br label %320

320:                                              ; preds = %325, %318
  %321 = phi i64 [ %326, %325 ], [ %.lcssa110120, %318 ]
  %322 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %321
  %323 = load i32, ptr %322, align 4
  %324 = icmp ult i32 %323, %319
  br i1 %324, label %325, label %327

325:                                              ; preds = %320
  %326 = add i64 %321, 1
  br label %320, !llvm.loop !22

327:                                              ; preds = %320
  %328 = icmp eq i32 %319, %323
  br i1 %328, label %329, label %334

329:                                              ; preds = %327
  %330 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %321
  %331 = load i8, ptr %330, align 1
  store i8 %331, ptr %303, align 1
  %332 = getelementptr inbounds nuw i8, ptr %303, i32 1
  %333 = add i64 %307, 1
  br label %334

334:                                              ; preds = %329, %327
  %335 = phi ptr [ %332, %329 ], [ %303, %327 ]
  %.lcssa110121 = phi i64 [ %295, %329 ], [ %321, %327 ]
  %336 = phi i32 [ 0, %329 ], [ %319, %327 ]
  %337 = phi i64 [ %333, %329 ], [ %307, %327 ]
  %338 = icmp ugt i64 %304, 1
  br i1 %338, label %339, label %341

339:                                              ; preds = %334
  %340 = lshr i64 %304, 1
  br label %343

341:                                              ; preds = %334
  %342 = getelementptr inbounds nuw i8, ptr %305, i32 1
  br label %343

343:                                              ; preds = %341, %339
  %344 = phi i64 [ 128, %341 ], [ %340, %339 ]
  %345 = phi ptr [ %342, %341 ], [ %305, %339 ]
  br label %302, !llvm.loop !23

346:                                              ; preds = %302
  store i64 %307, ptr %7, align 8
  store i32 %306, ptr %9, align 4
  store ptr %305, ptr %12, align 8
  store i64 %304, ptr %8, align 8
  store i64 %.lcssa110120, ptr %5, align 8
  store ptr %303, ptr %13, align 8
  %347 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %347)
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
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds i64, ptr %0, i64 %17
  br label %19

19:                                               ; preds = %52, %4
  %20 = phi i32 [ %42, %52 ], [ undef, %4 ]
  %21 = phi i32 [ %42, %52 ], [ %3, %4 ]
  %22 = icmp sle i32 %21, %16
  br i1 %22, label %23, label %.loopexit

23:                                               ; preds = %19
  %24 = add nsw i32 %21, %21
  %25 = icmp slt i32 %24, %2
  br i1 %25, label %26, label %41

26:                                               ; preds = %23
  %27 = sub nsw i32 %24, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, ptr %1, i64 %28
  %30 = load i64, ptr %29, align 8
  %31 = getelementptr inbounds nuw i64, ptr %0, i64 %30
  %32 = load i64, ptr %31, align 8
  %33 = sext i32 %24 to i64
  %34 = getelementptr inbounds i64, ptr %1, i64 %33
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds nuw i64, ptr %0, i64 %35
  %37 = load i64, ptr %36, align 8
  %38 = icmp ugt i64 %32, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = add nsw i32 %24, 1
  br label %41

41:                                               ; preds = %39, %26, %23
  %42 = phi i32 [ %40, %39 ], [ %24, %26 ], [ %24, %23 ]
  %43 = load i64, ptr %18, align 8
  %44 = sub nsw i32 %42, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, ptr %1, i64 %45
  %47 = load i64, ptr %46, align 8
  %48 = getelementptr inbounds nuw i64, ptr %0, i64 %47
  %49 = load i64, ptr %48, align 8
  %50 = icmp ult i64 %43, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  store i32 %21, ptr %8, align 4
  store i32 %42, ptr %9, align 4
  br label %56

52:                                               ; preds = %41
  %53 = sub nsw i32 %21, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, ptr %1, i64 %54
  store i64 %47, ptr %55, align 8
  br label %19, !llvm.loop !24

.loopexit:                                        ; preds = %19
  store i32 %21, ptr %8, align 4
  store i32 %20, ptr %9, align 4
  br label %56

56:                                               ; preds = %.loopexit, %51
  %57 = sub nsw i32 %21, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, ptr %1, i64 %58
  store i64 %17, ptr %59, align 8
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
  %12 = getelementptr inbounds ptr, ptr %1, i64 1
  br label %13

13:                                               ; preds = %21, %11
  %14 = phi i32 [ %22, %21 ], [ 1, %11 ]
  %15 = icmp slt i32 %14, %0
  br i1 %15, label %16, label %.loopexit

16:                                               ; preds = %13
  %17 = load ptr, ptr %12, align 8
  %18 = call i32 @strcmp(ptr noundef %17, ptr noundef @.str.4) #7
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store i32 %14, ptr %6, align 4
  store i8 1, ptr %7, align 1
  br label %23

21:                                               ; preds = %16
  %22 = add nsw i32 %14, 1
  br label %13, !llvm.loop !25

.loopexit:                                        ; preds = %13
  store i32 %14, ptr %6, align 4
  br label %23

23:                                               ; preds = %.loopexit, %20
  %24 = phi i8 [ 0, %.loopexit ], [ 1, %20 ]
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
  br label %28, !llvm.loop !26

33:                                               ; preds = %28
  store i32 %29, ptr %6, align 4
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
