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
  br label %3

3:                                                ; preds = %13, %1
  %4 = phi ptr [ %12, %13 ], [ %2, %1 ]
  %5 = phi i32 [ %14, %13 ], [ 0, %1 ]
  %6 = sext i32 %5 to i64
  %7 = icmp ult i64 %6, %0
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = call i64 @random4()
  %10 = getelementptr inbounds nuw i8, ptr @.str, i64 %9
  %11 = load i8, ptr %10, align 1
  store i8 %11, ptr %4, align 1
  %12 = getelementptr inbounds nuw i8, ptr %4, i32 1
  br label %13

13:                                               ; preds = %8
  %14 = add nsw i32 %5, 1
  br label %3, !llvm.loop !7

15:                                               ; preds = %3
  %.lcssa2 = phi ptr [ %4, %3 ]
  %.lcssa = phi i32 [ %5, %3 ]
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
  br label %19

19:                                               ; preds = %30, %2
  %20 = phi ptr [ %29, %30 ], [ %0, %2 ]
  %21 = phi i64 [ %31, %30 ], [ 0, %2 ]
  %22 = icmp ult i64 %21, %1
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load i8, ptr %20, align 1
  %25 = zext i8 %24 to i64
  %26 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %25
  %27 = load i64, ptr %26, align 8
  %28 = add i64 %27, 1
  store i64 %28, ptr %26, align 8
  %29 = getelementptr inbounds nuw i8, ptr %20, i32 1
  br label %30

30:                                               ; preds = %23
  %31 = add i64 %21, 1
  br label %19, !llvm.loop !9

32:                                               ; preds = %19
  %.lcssa2 = phi ptr [ %20, %19 ]
  %.lcssa = phi i64 [ %21, %19 ]
  br label %33

33:                                               ; preds = %46, %32
  %34 = phi i64 [ %45, %46 ], [ 0, %32 ]
  %35 = phi i64 [ %47, %46 ], [ 0, %32 ]
  %36 = icmp ult i64 %35, 256
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  %38 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %35
  %39 = load i64, ptr %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %34
  store i64 %35, ptr %42, align 8
  %43 = add i64 %34, 1
  br label %44

44:                                               ; preds = %41, %37
  %45 = phi i64 [ %43, %41 ], [ %34, %37 ]
  br label %46

46:                                               ; preds = %44
  %47 = add i64 %35, 1
  br label %33, !llvm.loop !10

48:                                               ; preds = %33
  %.lcssa6 = phi i64 [ %34, %33 ]
  %.lcssa4 = phi i64 [ %35, %33 ]
  %49 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %50 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %51 = trunc i64 %.lcssa6 to i32
  br label %52

52:                                               ; preds = %57, %48
  %53 = phi i64 [ %58, %57 ], [ %.lcssa6, %48 ]
  %54 = icmp ugt i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = trunc i64 %53 to i32
  call void @heap_adjust(ptr noundef %49, ptr noundef %50, i32 noundef %51, i32 noundef %56)
  br label %57

57:                                               ; preds = %55
  %58 = add i64 %53, -1
  br label %52, !llvm.loop !11

59:                                               ; preds = %52
  %.lcssa8 = phi i64 [ %53, %52 ]
  %60 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %61 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %62 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %63 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %64 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %65 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %66 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %67 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %68 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  br label %69

69:                                               ; preds = %73, %59
  %70 = phi i64 [ %75, %73 ], [ undef, %59 ]
  %71 = phi i64 [ %74, %73 ], [ %.lcssa6, %59 ]
  %72 = icmp ugt i64 %71, 1
  br i1 %72, label %73, label %96

73:                                               ; preds = %69
  %74 = add i64 %71, -1
  %75 = load i64, ptr %60, align 16
  %76 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %74
  %77 = load i64, ptr %76, align 8
  store i64 %77, ptr %61, align 16
  %78 = trunc i64 %74 to i32
  call void @heap_adjust(ptr noundef %62, ptr noundef %63, i32 noundef %78, i32 noundef 1)
  %79 = load i64, ptr %64, align 16
  %80 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %79
  %81 = load i64, ptr %80, align 8
  %82 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %75
  %83 = load i64, ptr %82, align 8
  %84 = add i64 %81, %83
  %85 = add i64 256, %74
  %86 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %85
  store i64 %84, ptr %86, align 8
  %87 = add i64 256, %74
  %88 = trunc i64 %87 to i32
  %89 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %75
  store i32 %88, ptr %89, align 4
  %90 = sub i64 -256, %74
  %91 = trunc i64 %90 to i32
  %92 = load i64, ptr %65, align 16
  %93 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %92
  store i32 %91, ptr %93, align 4
  %94 = add i64 256, %74
  store i64 %94, ptr %66, align 16
  %95 = trunc i64 %74 to i32
  call void @heap_adjust(ptr noundef %67, ptr noundef %68, i32 noundef %95, i32 noundef 1)
  br label %69, !llvm.loop !12

96:                                               ; preds = %69
  %.lcssa12 = phi i64 [ %70, %69 ]
  %.lcssa10 = phi i64 [ %71, %69 ]
  %97 = add i64 256, %.lcssa10
  %98 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %97
  store i32 0, ptr %98, align 4
  br label %99

99:                                               ; preds = %143, %96
  %.lcssa2042 = phi i64 [ %.lcssa2040, %143 ], [ 0, %96 ]
  %.lcssa1838 = phi i64 [ %.lcssa1836, %143 ], [ 0, %96 ]
  %.lcssa1434 = phi i32 [ %.lcssa1433, %143 ], [ undef, %96 ]
  %.lcssa1831 = phi i64 [ %.lcssa1830, %143 ], [ undef, %96 ]
  %.lcssa1628 = phi i64 [ %.lcssa1627, %143 ], [ undef, %96 ]
  %.lcssa2025 = phi i64 [ %.lcssa2024, %143 ], [ %.lcssa8, %96 ]
  %100 = phi i64 [ %144, %143 ], [ 0, %96 ]
  %101 = icmp ult i64 %100, 256
  br i1 %101, label %102, label %145

102:                                              ; preds = %99
  %103 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %100
  %104 = load i64, ptr %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %100
  store i32 0, ptr %107, align 4
  %108 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %100
  store i8 0, ptr %108, align 1
  br label %142

109:                                              ; preds = %102
  %110 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %100
  %111 = load i32, ptr %110, align 4
  br label %112

112:                                              ; preds = %123, %109
  %113 = phi i64 [ %130, %123 ], [ 0, %109 ]
  %114 = phi i64 [ %124, %123 ], [ 0, %109 ]
  %115 = phi i64 [ %129, %123 ], [ 1, %109 ]
  %116 = phi i32 [ %128, %123 ], [ %111, %109 ]
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %112
  %119 = icmp slt i32 %116, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %118
  %121 = add i64 %114, %115
  %122 = sub nsw i32 0, %116
  br label %123

123:                                              ; preds = %120, %118
  %124 = phi i64 [ %121, %120 ], [ %114, %118 ]
  %125 = phi i32 [ %122, %120 ], [ %116, %118 ]
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %126
  %128 = load i32, ptr %127, align 4
  %129 = shl i64 %115, 1
  %130 = add i64 %113, 1
  br label %112, !llvm.loop !13

131:                                              ; preds = %112
  %.lcssa20 = phi i64 [ %113, %112 ]
  %.lcssa18 = phi i64 [ %114, %112 ]
  %.lcssa16 = phi i64 [ %115, %112 ]
  %.lcssa14 = phi i32 [ %116, %112 ]
  %132 = trunc i64 %.lcssa18 to i32
  %133 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %100
  store i32 %132, ptr %133, align 4
  %134 = trunc i64 %.lcssa20 to i8
  %135 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %100
  store i8 %134, ptr %135, align 1
  %136 = icmp ugt i64 %.lcssa18, %.lcssa1838
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  br label %138

138:                                              ; preds = %137, %131
  %.lcssa1837 = phi i64 [ %.lcssa18, %137 ], [ %.lcssa1838, %131 ]
  %139 = icmp ugt i64 %.lcssa20, %.lcssa2042
  br i1 %139, label %140, label %141

140:                                              ; preds = %138
  br label %141

141:                                              ; preds = %140, %138
  %.lcssa2041 = phi i64 [ %.lcssa20, %140 ], [ %.lcssa2042, %138 ]
  br label %142

142:                                              ; preds = %141, %106
  %.lcssa2040 = phi i64 [ %.lcssa2041, %141 ], [ %.lcssa2042, %106 ]
  %.lcssa1836 = phi i64 [ %.lcssa1837, %141 ], [ %.lcssa1838, %106 ]
  %.lcssa1433 = phi i32 [ %.lcssa14, %141 ], [ %.lcssa1434, %106 ]
  %.lcssa1830 = phi i64 [ %.lcssa18, %141 ], [ %.lcssa1831, %106 ]
  %.lcssa1627 = phi i64 [ %.lcssa16, %141 ], [ %.lcssa1628, %106 ]
  %.lcssa2024 = phi i64 [ %.lcssa20, %141 ], [ %.lcssa2025, %106 ]
  br label %143

143:                                              ; preds = %142
  %144 = add i64 %100, 1
  br label %99, !llvm.loop !14

145:                                              ; preds = %99
  %.lcssa2042.lcssa = phi i64 [ %.lcssa2042, %99 ]
  %.lcssa1838.lcssa = phi i64 [ %.lcssa1838, %99 ]
  %.lcssa1434.lcssa = phi i32 [ %.lcssa1434, %99 ]
  %.lcssa1831.lcssa = phi i64 [ %.lcssa1831, %99 ]
  %.lcssa1628.lcssa = phi i64 [ %.lcssa1628, %99 ]
  %.lcssa2025.lcssa = phi i64 [ %.lcssa2025, %99 ]
  %.lcssa22 = phi i64 [ %100, %99 ]
  %146 = icmp ugt i64 %.lcssa2042.lcssa, 32
  br i1 %146, label %147, label %150

147:                                              ; preds = %145
  %148 = call ptr @__acrt_iob_func(i32 noundef 2)
  %149 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %148, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

150:                                              ; preds = %145
  %151 = icmp eq i64 %.lcssa1838.lcssa, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %150
  %153 = call ptr @__acrt_iob_func(i32 noundef 2)
  %154 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %153, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

155:                                              ; preds = %150
  br label %156

156:                                              ; preds = %218, %155
  %.lcssa5376 = phi i64 [ %.lcssa53, %218 ], [ 0, %155 ]
  %.lcssa5073 = phi i8 [ %.lcssa50, %218 ], [ 0, %155 ]
  %.lcssa4770 = phi i32 [ %.lcssa47, %218 ], [ -1, %155 ]
  %.lcssa4468 = phi i64 [ %.lcssa44, %218 ], [ %.lcssa2025.lcssa, %155 ]
  %.lcssa5665 = phi i64 [ %.lcssa56, %218 ], [ undef, %155 ]
  %157 = phi ptr [ %217, %218 ], [ %0, %155 ]
  %158 = phi i64 [ %219, %218 ], [ 0, %155 ]
  %159 = icmp ult i64 %158, %1
  br i1 %159, label %160, label %220

160:                                              ; preds = %156
  %161 = load i8, ptr %157, align 1
  %162 = zext i8 %161 to i64
  %163 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %162
  %164 = load i8, ptr %163, align 1
  %165 = zext i8 %164 to i32
  %166 = sub nsw i32 %165, 1
  %167 = shl i32 1, %166
  %168 = sext i32 %167 to i64
  br label %169

169:                                              ; preds = %214, %160
  %170 = phi i64 [ %213, %214 ], [ %168, %160 ]
  %171 = phi i64 [ %197, %214 ], [ %.lcssa5376, %160 ]
  %172 = phi i8 [ %212, %214 ], [ %.lcssa5073, %160 ]
  %173 = phi i32 [ %199, %214 ], [ %.lcssa4770, %160 ]
  %174 = phi i64 [ %215, %214 ], [ 0, %160 ]
  %175 = load i8, ptr %157, align 1
  %176 = zext i8 %175 to i64
  %177 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %176
  %178 = load i8, ptr %177, align 1
  %179 = zext i8 %178 to i64
  %180 = icmp ult i64 %174, %179
  br i1 %180, label %181, label %216

181:                                              ; preds = %169
  %182 = icmp eq i32 %173, 7
  br i1 %182, label %183, label %191

183:                                              ; preds = %181
  %184 = getelementptr inbounds nuw i8, ptr %11, i64 %171
  store i8 %172, ptr %184, align 1
  %185 = add i64 %171, 1
  %186 = icmp eq i64 %185, %1
  br i1 %186, label %187, label %190

187:                                              ; preds = %183
  %.lcssa5376.lcssa77 = phi i64 [ %.lcssa5376, %183 ]
  %.lcssa5073.lcssa74 = phi i8 [ %.lcssa5073, %183 ]
  %.lcssa4770.lcssa71 = phi i32 [ %.lcssa4770, %183 ]
  %.lcssa66 = phi i64 [ %168, %183 ]
  %.lcssa63 = phi ptr [ %157, %183 ]
  %.lcssa60 = phi i64 [ %158, %183 ]
  %.lcssa57 = phi i64 [ %170, %183 ]
  %.lcssa54 = phi i64 [ %185, %183 ]
  %.lcssa51 = phi i8 [ %172, %183 ]
  %.lcssa48 = phi i32 [ %173, %183 ]
  %.lcssa45 = phi i64 [ %174, %183 ]
  %188 = call ptr @__acrt_iob_func(i32 noundef 2)
  %189 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %188, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

190:                                              ; preds = %183
  br label %196

191:                                              ; preds = %181
  %192 = add nsw i32 %173, 1
  %193 = sext i8 %172 to i32
  %194 = shl i32 %193, 1
  %195 = trunc i32 %194 to i8
  br label %196

196:                                              ; preds = %191, %190
  %197 = phi i64 [ %171, %191 ], [ %185, %190 ]
  %198 = phi i8 [ %195, %191 ], [ 0, %190 ]
  %199 = phi i32 [ %192, %191 ], [ 0, %190 ]
  %200 = load i8, ptr %157, align 1
  %201 = zext i8 %200 to i64
  %202 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %201
  %203 = load i32, ptr %202, align 4
  %204 = zext i32 %203 to i64
  %205 = and i64 %204, %170
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %196
  %208 = sext i8 %198 to i32
  %209 = or i32 %208, 1
  %210 = trunc i32 %209 to i8
  br label %211

211:                                              ; preds = %207, %196
  %212 = phi i8 [ %210, %207 ], [ %198, %196 ]
  %213 = lshr i64 %170, 1
  br label %214

214:                                              ; preds = %211
  %215 = add i64 %174, 1
  br label %169, !llvm.loop !15

216:                                              ; preds = %169
  %.lcssa56 = phi i64 [ %170, %169 ]
  %.lcssa53 = phi i64 [ %171, %169 ]
  %.lcssa50 = phi i8 [ %172, %169 ]
  %.lcssa47 = phi i32 [ %173, %169 ]
  %.lcssa44 = phi i64 [ %174, %169 ]
  %217 = getelementptr inbounds nuw i8, ptr %157, i32 1
  br label %218

218:                                              ; preds = %216
  %219 = add i64 %158, 1
  br label %156, !llvm.loop !16

220:                                              ; preds = %156
  %.lcssa5376.lcssa = phi i64 [ %.lcssa5376, %156 ]
  %.lcssa5073.lcssa = phi i8 [ %.lcssa5073, %156 ]
  %.lcssa4770.lcssa = phi i32 [ %.lcssa4770, %156 ]
  %.lcssa4468.lcssa = phi i64 [ %.lcssa4468, %156 ]
  %.lcssa5665.lcssa = phi i64 [ %.lcssa5665, %156 ]
  %.lcssa62 = phi ptr [ %157, %156 ]
  %.lcssa59 = phi i64 [ %158, %156 ]
  %221 = sub nsw i32 7, %.lcssa4770.lcssa
  %222 = sext i8 %.lcssa5073.lcssa to i32
  %223 = shl i32 %222, %221
  %224 = trunc i32 %223 to i8
  %225 = getelementptr inbounds nuw i8, ptr %11, i64 %.lcssa5376.lcssa
  store i8 %224, ptr %225, align 1
  %226 = add i64 %.lcssa5376.lcssa, 1
  %227 = getelementptr inbounds [256 x i32], ptr %8, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %227, i8 0, i64 1024, i1 false)
  %228 = getelementptr inbounds [256 x i8], ptr %9, i64 0, i64 0
  br label %229

229:                                              ; preds = %276, %220
  %.lcssa7996 = phi i64 [ %.lcssa7995, %276 ], [ %.lcssa4468.lcssa, %220 ]
  %.lcssa8393 = phi i64 [ %.lcssa8392, %276 ], [ %.lcssa5665.lcssa, %220 ]
  %.lcssa8190 = phi i32 [ %.lcssa8189, %276 ], [ undef, %220 ]
  %230 = phi ptr [ %235, %276 ], [ %228, %220 ]
  %231 = phi i64 [ %277, %276 ], [ 0, %220 ]
  %232 = icmp ult i64 %231, 256
  br i1 %232, label %233, label %278

233:                                              ; preds = %229
  %234 = trunc i64 %231 to i8
  store i8 %234, ptr %230, align 1
  %235 = getelementptr inbounds nuw i8, ptr %230, i32 1
  %236 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %231
  %237 = load i32, ptr %236, align 4
  %238 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %231
  %239 = load i8, ptr %238, align 1
  %240 = zext i8 %239 to i32
  %241 = or i32 %237, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %275

243:                                              ; preds = %233
  %244 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %231
  %245 = load i8, ptr %244, align 1
  %246 = zext i8 %245 to i32
  %247 = sub nsw i32 %246, 1
  %248 = shl i32 1, %247
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %231
  %251 = load i8, ptr %250, align 1
  %252 = zext i8 %251 to i64
  %253 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %231
  br label %254

254:                                              ; preds = %271, %243
  %255 = phi i64 [ %270, %271 ], [ %249, %243 ]
  %256 = phi i32 [ %269, %271 ], [ 0, %243 ]
  %257 = phi i64 [ %272, %271 ], [ 0, %243 ]
  %258 = icmp ult i64 %257, %252
  br i1 %258, label %259, label %273

259:                                              ; preds = %254
  %260 = mul i32 %256, 2
  %261 = add i32 %260, 1
  %262 = load i32, ptr %253, align 4
  %263 = zext i32 %262 to i64
  %264 = and i64 %263, %255
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %259
  %267 = add i32 %261, 1
  br label %268

268:                                              ; preds = %266, %259
  %269 = phi i32 [ %267, %266 ], [ %261, %259 ]
  %270 = lshr i64 %255, 1
  br label %271

271:                                              ; preds = %268
  %272 = add i64 %257, 1
  br label %254, !llvm.loop !17

273:                                              ; preds = %254
  %.lcssa83 = phi i64 [ %255, %254 ]
  %.lcssa81 = phi i32 [ %256, %254 ]
  %.lcssa79 = phi i64 [ %257, %254 ]
  %274 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %231
  store i32 %.lcssa81, ptr %274, align 4
  br label %275

275:                                              ; preds = %273, %233
  %.lcssa7995 = phi i64 [ %.lcssa79, %273 ], [ %.lcssa7996, %233 ]
  %.lcssa8392 = phi i64 [ %.lcssa83, %273 ], [ %.lcssa8393, %233 ]
  %.lcssa8189 = phi i32 [ %.lcssa81, %273 ], [ %.lcssa8190, %233 ]
  br label %276

276:                                              ; preds = %275
  %277 = add i64 %231, 1
  br label %229, !llvm.loop !18

278:                                              ; preds = %229
  %.lcssa7996.lcssa = phi i64 [ %.lcssa7996, %229 ]
  %.lcssa8393.lcssa = phi i64 [ %.lcssa8393, %229 ]
  %.lcssa8190.lcssa = phi i32 [ %.lcssa8190, %229 ]
  %.lcssa87 = phi ptr [ %230, %229 ]
  %.lcssa85 = phi i64 [ %231, %229 ]
  br label %279

279:                                              ; preds = %312, %278
  %.lcssa98106 = phi i64 [ %.lcssa98, %312 ], [ %.lcssa85, %278 ]
  %280 = phi i8 [ %288, %312 ], [ undef, %278 ]
  %281 = phi i32 [ %286, %312 ], [ undef, %278 ]
  %282 = phi i64 [ %313, %312 ], [ 1, %278 ]
  %283 = icmp ult i64 %282, 256
  br i1 %283, label %284, label %314

284:                                              ; preds = %279
  %285 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %282
  %286 = load i32, ptr %285, align 4
  %287 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %282
  %288 = load i8, ptr %287, align 1
  br label %289

289:                                              ; preds = %299, %284
  %290 = phi i64 [ %308, %299 ], [ %282, %284 ]
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %297

292:                                              ; preds = %289
  %293 = sub i64 %290, 1
  %294 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %293
  %295 = load i32, ptr %294, align 4
  %296 = icmp ugt i32 %295, %286
  br label %297

297:                                              ; preds = %292, %289
  %298 = phi i1 [ false, %289 ], [ %296, %292 ]
  br i1 %298, label %299, label %309

299:                                              ; preds = %297
  %300 = sub i64 %290, 1
  %301 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %300
  %302 = load i32, ptr %301, align 4
  %303 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %290
  store i32 %302, ptr %303, align 4
  %304 = sub i64 %290, 1
  %305 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %304
  %306 = load i8, ptr %305, align 1
  %307 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %290
  store i8 %306, ptr %307, align 1
  %308 = add i64 %290, -1
  br label %289, !llvm.loop !19

309:                                              ; preds = %297
  %.lcssa98 = phi i64 [ %290, %297 ]
  %310 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.lcssa98
  store i32 %286, ptr %310, align 4
  %311 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.lcssa98
  store i8 %288, ptr %311, align 1
  br label %312

312:                                              ; preds = %309
  %313 = add i64 %282, 1
  br label %279, !llvm.loop !20

314:                                              ; preds = %279
  %.lcssa98106.lcssa = phi i64 [ %.lcssa98106, %279 ]
  %.lcssa104 = phi i8 [ %280, %279 ]
  %.lcssa102 = phi i32 [ %281, %279 ]
  %.lcssa100 = phi i64 [ %282, %279 ]
  br label %315

315:                                              ; preds = %321, %314
  %316 = phi i64 [ %322, %321 ], [ 0, %314 ]
  %317 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %316
  %318 = load i32, ptr %317, align 4
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %323

320:                                              ; preds = %315
  br label %321

321:                                              ; preds = %320
  %322 = add i64 %316, 1
  br label %315, !llvm.loop !21

323:                                              ; preds = %315
  %.lcssa108 = phi i64 [ %316, %315 ]
  br label %324

324:                                              ; preds = %367, %323
  %325 = phi ptr [ %359, %367 ], [ %0, %323 ]
  %.lcssa110120 = phi i64 [ %.lcssa110121, %367 ], [ %.lcssa108, %323 ]
  %326 = phi i64 [ %368, %367 ], [ 128, %323 ]
  %327 = phi ptr [ %369, %367 ], [ %11, %323 ]
  %328 = phi i32 [ %360, %367 ], [ 0, %323 ]
  %329 = phi i64 [ %361, %367 ], [ 0, %323 ]
  %330 = icmp ult i64 %329, %1
  br i1 %330, label %331, label %370

331:                                              ; preds = %324
  %332 = mul i32 %328, 2
  %333 = add i32 %332, 1
  %334 = load i8, ptr %327, align 1
  %335 = zext i8 %334 to i64
  %336 = and i64 %335, %326
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %340

338:                                              ; preds = %331
  %339 = add i32 %333, 1
  br label %340

340:                                              ; preds = %338, %331
  %341 = phi i32 [ %339, %338 ], [ %333, %331 ]
  br label %342

342:                                              ; preds = %347, %340
  %343 = phi i64 [ %348, %347 ], [ %.lcssa110120, %340 ]
  %344 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %343
  %345 = load i32, ptr %344, align 4
  %346 = icmp ult i32 %345, %341
  br i1 %346, label %347, label %349

347:                                              ; preds = %342
  %348 = add i64 %343, 1
  br label %342, !llvm.loop !22

349:                                              ; preds = %342
  %.lcssa110 = phi i64 [ %343, %342 ]
  %350 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.lcssa110
  %351 = load i32, ptr %350, align 4
  %352 = icmp eq i32 %341, %351
  br i1 %352, label %353, label %358

353:                                              ; preds = %349
  %354 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.lcssa110
  %355 = load i8, ptr %354, align 1
  store i8 %355, ptr %325, align 1
  %356 = getelementptr inbounds nuw i8, ptr %325, i32 1
  %357 = add i64 %329, 1
  br label %358

358:                                              ; preds = %353, %349
  %359 = phi ptr [ %356, %353 ], [ %325, %349 ]
  %.lcssa110121 = phi i64 [ %.lcssa108, %353 ], [ %.lcssa110, %349 ]
  %360 = phi i32 [ 0, %353 ], [ %341, %349 ]
  %361 = phi i64 [ %357, %353 ], [ %329, %349 ]
  %362 = icmp ugt i64 %326, 1
  br i1 %362, label %363, label %365

363:                                              ; preds = %358
  %364 = lshr i64 %326, 1
  br label %367

365:                                              ; preds = %358
  %366 = getelementptr inbounds nuw i8, ptr %327, i32 1
  br label %367

367:                                              ; preds = %365, %363
  %368 = phi i64 [ 128, %365 ], [ %364, %363 ]
  %369 = phi ptr [ %366, %365 ], [ %327, %363 ]
  br label %324, !llvm.loop !23

370:                                              ; preds = %324
  %.lcssa123 = phi ptr [ %325, %324 ]
  %.lcssa110120.lcssa = phi i64 [ %.lcssa110120, %324 ]
  %.lcssa118 = phi i64 [ %326, %324 ]
  %.lcssa116 = phi ptr [ %327, %324 ]
  %.lcssa114 = phi i32 [ %328, %324 ]
  %.lcssa112 = phi i64 [ %329, %324 ]
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
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds i64, ptr %0, i64 %11
  br label %13

13:                                               ; preds = %46, %4
  %14 = phi i32 [ %36, %46 ], [ undef, %4 ]
  %15 = phi i32 [ %36, %46 ], [ %3, %4 ]
  %16 = icmp sle i32 %15, %10
  br i1 %16, label %17, label %.loopexit

17:                                               ; preds = %13
  %18 = add nsw i32 %15, %15
  %19 = icmp slt i32 %18, %2
  br i1 %19, label %20, label %35

20:                                               ; preds = %17
  %21 = sub nsw i32 %18, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, ptr %1, i64 %22
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds nuw i64, ptr %0, i64 %24
  %26 = load i64, ptr %25, align 8
  %27 = sext i32 %18 to i64
  %28 = getelementptr inbounds i64, ptr %1, i64 %27
  %29 = load i64, ptr %28, align 8
  %30 = getelementptr inbounds nuw i64, ptr %0, i64 %29
  %31 = load i64, ptr %30, align 8
  %32 = icmp ugt i64 %26, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %20
  %34 = add nsw i32 %18, 1
  br label %35

35:                                               ; preds = %33, %20, %17
  %36 = phi i32 [ %34, %33 ], [ %18, %20 ], [ %18, %17 ]
  %37 = load i64, ptr %12, align 8
  %38 = sub nsw i32 %36, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, ptr %1, i64 %39
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr inbounds nuw i64, ptr %0, i64 %41
  %43 = load i64, ptr %42, align 8
  %44 = icmp ult i64 %37, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  %.lcssa4 = phi i32 [ %36, %35 ]
  %.lcssa1 = phi i32 [ %15, %35 ]
  br label %54

46:                                               ; preds = %35
  %47 = sub nsw i32 %36, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, ptr %1, i64 %48
  %50 = load i64, ptr %49, align 8
  %51 = sub nsw i32 %15, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, ptr %1, i64 %52
  store i64 %50, ptr %53, align 8
  br label %13, !llvm.loop !24

.loopexit:                                        ; preds = %13
  %.lcssa3 = phi i32 [ %14, %13 ]
  %.lcssa = phi i32 [ %15, %13 ]
  br label %54

54:                                               ; preds = %.loopexit, %45
  %.0 = phi i32 [ %.lcssa1, %45 ], [ %.lcssa, %.loopexit ]
  %55 = sext i32 %9 to i64
  %56 = sub nsw i32 %.0, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, ptr %1, i64 %57
  store i64 %55, ptr %58, align 8
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
  br i1 %3, label %4, label %18

4:                                                ; preds = %2
  %5 = getelementptr inbounds ptr, ptr %1, i64 1
  br label %6

6:                                                ; preds = %15, %4
  %7 = phi i32 [ %16, %15 ], [ 1, %4 ]
  %8 = icmp slt i32 %7, %0
  br i1 %8, label %9, label %.loopexit

9:                                                ; preds = %6
  %10 = load ptr, ptr %5, align 8
  %11 = call i32 @strcmp(ptr noundef %10, ptr noundef @.str.4) #7
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  %.lcssa1 = phi i32 [ %7, %9 ]
  br label %17

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %14
  %16 = add nsw i32 %7, 1
  br label %6, !llvm.loop !25

.loopexit:                                        ; preds = %6
  %.lcssa = phi i32 [ %7, %6 ]
  br label %17

17:                                               ; preds = %.loopexit, %13
  %.1 = phi i8 [ 1, %13 ], [ 0, %.loopexit ]
  br label %18

18:                                               ; preds = %17, %2
  %.0 = phi i8 [ %.1, %17 ], [ 0, %2 ]
  %19 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %20

20:                                               ; preds = %24, %18
  %21 = phi i32 [ %25, %24 ], [ 0, %18 ]
  %22 = icmp slt i32 %21, 30
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  call void @compdecomp(ptr noundef %19, i64 noundef 10000000)
  br label %24

24:                                               ; preds = %23
  %25 = add nsw i32 %21, 1
  br label %20, !llvm.loop !26

26:                                               ; preds = %20
  %.lcssa3 = phi i32 [ %21, %20 ]
  call void @free(ptr noundef %19)
  %27 = icmp ne i8 %.0, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = call ptr @__acrt_iob_func(i32 noundef 1)
  %30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef @.str.5, double noundef 0.000000e+00) #7
  br label %34

31:                                               ; preds = %26
  %32 = call ptr @__acrt_iob_func(i32 noundef 1)
  %33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str.6, double noundef 0.000000e+00) #7
  br label %34

34:                                               ; preds = %31, %28
  %35 = call ptr @__acrt_iob_func(i32 noundef 1)
  %36 = call i32 @fflush(ptr noundef %35)
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
