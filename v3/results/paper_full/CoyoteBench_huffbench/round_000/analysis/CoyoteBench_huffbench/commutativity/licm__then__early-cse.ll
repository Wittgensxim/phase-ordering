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
  %7 = load i64, ptr %2, align 8
  %8 = call ptr @malloc(i64 noundef %7) #6
  store ptr %8, ptr %4, align 8
  store ptr %8, ptr %5, align 8
  store i32 0, ptr %6, align 4
  %9 = load i64, ptr %2, align 8
  %10 = load ptr, ptr %3, align 8
  %.promoted1 = load ptr, ptr %5, align 8
  br label %11

11:                                               ; preds = %21, %1
  %12 = phi ptr [ %20, %21 ], [ %.promoted1, %1 ]
  %13 = phi i32 [ %22, %21 ], [ 0, %1 ]
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, %9
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = call i64 @random4()
  %18 = getelementptr inbounds nuw i8, ptr %10, i64 %17
  %19 = load i8, ptr %18, align 1
  store i8 %19, ptr %12, align 1
  %20 = getelementptr inbounds nuw i8, ptr %12, i32 1
  br label %21

21:                                               ; preds = %16
  %22 = add nsw i32 %13, 1
  br label %11, !llvm.loop !7

23:                                               ; preds = %11
  store i32 %13, ptr %6, align 4
  store ptr %12, ptr %5, align 8
  %24 = load ptr, ptr %4, align 8
  ret ptr %24
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
  %32 = load ptr, ptr %3, align 8
  store ptr %32, ptr %13, align 8
  %33 = load i64, ptr %4, align 8
  %34 = add i64 %33, 1
  %35 = call ptr @malloc(i64 noundef %34) #6
  store ptr %35, ptr %14, align 8
  %36 = load i64, ptr %4, align 8
  %37 = add i64 %36, 1
  call void @llvm.memset.p0.i64(ptr align 1 %35, i8 0, i64 %37, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %15, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %16, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %17, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %18, i8 0, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %19, i8 0, i64 256, i1 false)
  store i64 0, ptr %5, align 8
  %38 = load i64, ptr %4, align 8
  %.promoted1 = load ptr, ptr %13, align 8
  br label %39

39:                                               ; preds = %50, %2
  %40 = phi ptr [ %49, %50 ], [ %.promoted1, %2 ]
  %41 = phi i64 [ %51, %50 ], [ 0, %2 ]
  %42 = icmp ult i64 %41, %38
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load i8, ptr %40, align 1
  %45 = zext i8 %44 to i64
  %46 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %45
  %47 = load i64, ptr %46, align 8
  %48 = add i64 %47, 1
  store i64 %48, ptr %46, align 8
  %49 = getelementptr inbounds nuw i8, ptr %40, i32 1
  br label %50

50:                                               ; preds = %43
  %51 = add i64 %41, 1
  br label %39, !llvm.loop !9

52:                                               ; preds = %39
  store i64 %41, ptr %5, align 8
  store ptr %40, ptr %13, align 8
  store i64 0, ptr %7, align 8
  store i64 0, ptr %5, align 8
  %.promoted5 = load i64, ptr %7, align 8
  br label %53

53:                                               ; preds = %66, %52
  %54 = phi i64 [ %65, %66 ], [ %.promoted5, %52 ]
  %55 = phi i64 [ %67, %66 ], [ 0, %52 ]
  %56 = icmp ult i64 %55, 256
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %55
  %59 = load i64, ptr %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %54
  store i64 %55, ptr %62, align 8
  %63 = add i64 %54, 1
  br label %64

64:                                               ; preds = %61, %57
  %65 = phi i64 [ %63, %61 ], [ %54, %57 ]
  br label %66

66:                                               ; preds = %64
  %67 = add i64 %55, 1
  br label %53, !llvm.loop !10

68:                                               ; preds = %53
  store i64 %55, ptr %5, align 8
  store i64 %54, ptr %7, align 8
  store i64 %54, ptr %5, align 8
  %69 = load i64, ptr %7, align 8
  %70 = trunc i64 %69 to i32
  br label %71

71:                                               ; preds = %76, %68
  %72 = phi i64 [ %77, %76 ], [ %54, %68 ]
  %73 = icmp ugt i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = trunc i64 %72 to i32
  call void @heap_adjust(ptr noundef %15, ptr noundef %16, i32 noundef %70, i32 noundef %75)
  br label %76

76:                                               ; preds = %74
  %77 = add i64 %72, -1
  br label %71, !llvm.loop !11

78:                                               ; preds = %71
  store i64 %72, ptr %5, align 8
  %.promoted9 = load i64, ptr %7, align 8
  %.promoted11 = load i64, ptr %20, align 8
  br label %79

79:                                               ; preds = %83, %78
  %80 = phi i64 [ %85, %83 ], [ %.promoted11, %78 ]
  %81 = phi i64 [ %84, %83 ], [ %.promoted9, %78 ]
  %82 = icmp ugt i64 %81, 1
  br i1 %82, label %83, label %103

83:                                               ; preds = %79
  %84 = add i64 %81, -1
  %85 = load i64, ptr %16, align 16
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
  %101 = load i64, ptr %16, align 16
  %102 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %101
  store i32 %100, ptr %102, align 4
  store i64 %95, ptr %16, align 16
  call void @heap_adjust(ptr noundef %15, ptr noundef %16, i32 noundef %88, i32 noundef 1)
  br label %79, !llvm.loop !12

103:                                              ; preds = %79
  store i64 %81, ptr %7, align 8
  store i64 %80, ptr %20, align 8
  %104 = load i64, ptr %7, align 8
  %105 = add i64 256, %104
  %106 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %105
  store i32 0, ptr %106, align 4
  store i64 0, ptr %23, align 8
  store i64 0, ptr %24, align 8
  store i64 0, ptr %21, align 8
  %.promoted23 = load i64, ptr %5, align 8
  %.promoted26 = load i64, ptr %6, align 8
  %.promoted29 = load i64, ptr %22, align 8
  %.promoted32 = load i32, ptr %25, align 4
  %.promoted35 = load i64, ptr %23, align 8
  %.promoted39 = load i64, ptr %24, align 8
  br label %107

107:                                              ; preds = %151, %103
  %.lcssa2042 = phi i64 [ %.lcssa2040, %151 ], [ %.promoted39, %103 ]
  %.lcssa1838 = phi i64 [ %.lcssa1836, %151 ], [ %.promoted35, %103 ]
  %.lcssa1434 = phi i32 [ %.lcssa1433, %151 ], [ %.promoted32, %103 ]
  %.lcssa1831 = phi i64 [ %.lcssa1830, %151 ], [ %.promoted29, %103 ]
  %.lcssa1628 = phi i64 [ %.lcssa1627, %151 ], [ %.promoted26, %103 ]
  %.lcssa2025 = phi i64 [ %.lcssa2024, %151 ], [ %.promoted23, %103 ]
  %108 = phi i64 [ %152, %151 ], [ 0, %103 ]
  %109 = icmp ult i64 %108, 256
  br i1 %109, label %110, label %153

110:                                              ; preds = %107
  %111 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %108
  %112 = load i64, ptr %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %108
  store i32 0, ptr %115, align 4
  %116 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %108
  store i8 0, ptr %116, align 1
  br label %150

117:                                              ; preds = %110
  %118 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %108
  %119 = load i32, ptr %118, align 4
  br label %120

120:                                              ; preds = %131, %117
  %121 = phi i64 [ %138, %131 ], [ 0, %117 ]
  %122 = phi i64 [ %132, %131 ], [ 0, %117 ]
  %123 = phi i64 [ %137, %131 ], [ 1, %117 ]
  %124 = phi i32 [ %136, %131 ], [ %119, %117 ]
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %120
  %127 = icmp slt i32 %124, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %126
  %129 = add i64 %122, %123
  %130 = sub nsw i32 0, %124
  br label %131

131:                                              ; preds = %128, %126
  %132 = phi i64 [ %129, %128 ], [ %122, %126 ]
  %133 = phi i32 [ %130, %128 ], [ %124, %126 ]
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [512 x i32], ptr %17, i64 0, i64 %134
  %136 = load i32, ptr %135, align 4
  %137 = shl i64 %123, 1
  %138 = add i64 %121, 1
  br label %120, !llvm.loop !13

139:                                              ; preds = %120
  %140 = trunc i64 %122 to i32
  %141 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %108
  store i32 %140, ptr %141, align 4
  %142 = trunc i64 %121 to i8
  %143 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %108
  store i8 %142, ptr %143, align 1
  %144 = icmp ugt i64 %122, %.lcssa1838
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  br label %146

146:                                              ; preds = %145, %139
  %.lcssa1837 = phi i64 [ %122, %145 ], [ %.lcssa1838, %139 ]
  %147 = icmp ugt i64 %121, %.lcssa2042
  br i1 %147, label %148, label %149

148:                                              ; preds = %146
  br label %149

149:                                              ; preds = %148, %146
  %.lcssa2041 = phi i64 [ %121, %148 ], [ %.lcssa2042, %146 ]
  br label %150

150:                                              ; preds = %149, %114
  %.lcssa2040 = phi i64 [ %.lcssa2041, %149 ], [ %.lcssa2042, %114 ]
  %.lcssa1836 = phi i64 [ %.lcssa1837, %149 ], [ %.lcssa1838, %114 ]
  %.lcssa1433 = phi i32 [ %124, %149 ], [ %.lcssa1434, %114 ]
  %.lcssa1830 = phi i64 [ %122, %149 ], [ %.lcssa1831, %114 ]
  %.lcssa1627 = phi i64 [ %123, %149 ], [ %.lcssa1628, %114 ]
  %.lcssa2024 = phi i64 [ %121, %149 ], [ %.lcssa2025, %114 ]
  br label %151

151:                                              ; preds = %150
  %152 = add i64 %108, 1
  br label %107, !llvm.loop !14

153:                                              ; preds = %107
  store i64 %108, ptr %21, align 8
  store i64 %.lcssa2025, ptr %5, align 8
  store i64 %.lcssa1628, ptr %6, align 8
  store i64 %.lcssa1831, ptr %22, align 8
  store i32 %.lcssa1434, ptr %25, align 4
  store i64 %.lcssa1838, ptr %23, align 8
  store i64 %.lcssa2042, ptr %24, align 8
  %154 = icmp ugt i64 %.lcssa2042, 32
  br i1 %154, label %155, label %158

155:                                              ; preds = %153
  %156 = call ptr @__acrt_iob_func(i32 noundef 2)
  %157 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %156, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

158:                                              ; preds = %153
  store i64 0, ptr %26, align 8
  store i8 0, ptr %27, align 1
  store i32 -1, ptr %28, align 4
  %159 = load ptr, ptr %3, align 8
  store ptr %159, ptr %13, align 8
  %160 = load i64, ptr %23, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %158
  %163 = call ptr @__acrt_iob_func(i32 noundef 2)
  %164 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %163, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

165:                                              ; preds = %158
  store i64 0, ptr %6, align 8
  %166 = load i64, ptr %4, align 8
  %167 = load ptr, ptr %14, align 8
  %.promoted61 = load ptr, ptr %13, align 8
  %.promoted64 = load i64, ptr %8, align 8
  %.promoted67 = load i64, ptr %5, align 8
  %.promoted69 = load i32, ptr %28, align 4
  %.promoted72 = load i8, ptr %27, align 1
  %.promoted75 = load i64, ptr %26, align 8
  br label %168

168:                                              ; preds = %230, %165
  %.lcssa5376 = phi i64 [ %183, %230 ], [ %.promoted75, %165 ]
  %.lcssa5073 = phi i8 [ %184, %230 ], [ %.promoted72, %165 ]
  %.lcssa4770 = phi i32 [ %185, %230 ], [ %.promoted69, %165 ]
  %.lcssa4468 = phi i64 [ %186, %230 ], [ %.promoted67, %165 ]
  %.lcssa5665 = phi i64 [ %182, %230 ], [ %.promoted64, %165 ]
  %169 = phi ptr [ %229, %230 ], [ %.promoted61, %165 ]
  %170 = phi i64 [ %231, %230 ], [ 0, %165 ]
  %171 = icmp ult i64 %170, %166
  br i1 %171, label %172, label %232

172:                                              ; preds = %168
  %173 = load i8, ptr %169, align 1
  %174 = zext i8 %173 to i64
  %175 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %174
  %176 = load i8, ptr %175, align 1
  %177 = zext i8 %176 to i32
  %178 = sub nsw i32 %177, 1
  %179 = shl i32 1, %178
  %180 = sext i32 %179 to i64
  br label %181

181:                                              ; preds = %226, %172
  %182 = phi i64 [ %225, %226 ], [ %180, %172 ]
  %183 = phi i64 [ %209, %226 ], [ %.lcssa5376, %172 ]
  %184 = phi i8 [ %224, %226 ], [ %.lcssa5073, %172 ]
  %185 = phi i32 [ %211, %226 ], [ %.lcssa4770, %172 ]
  %186 = phi i64 [ %227, %226 ], [ 0, %172 ]
  %187 = load i8, ptr %169, align 1
  %188 = zext i8 %187 to i64
  %189 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %188
  %190 = load i8, ptr %189, align 1
  %191 = zext i8 %190 to i64
  %192 = icmp ult i64 %186, %191
  br i1 %192, label %193, label %228

193:                                              ; preds = %181
  %194 = icmp eq i32 %185, 7
  br i1 %194, label %195, label %203

195:                                              ; preds = %193
  %196 = getelementptr inbounds nuw i8, ptr %167, i64 %183
  store i8 %184, ptr %196, align 1
  %197 = add i64 %183, 1
  %198 = icmp eq i64 %197, %166
  br i1 %198, label %199, label %202

199:                                              ; preds = %195
  store i64 %170, ptr %6, align 8
  store ptr %169, ptr %13, align 8
  store i64 %180, ptr %8, align 8
  store i64 0, ptr %5, align 8
  store i32 %.lcssa4770, ptr %28, align 4
  store i8 %.lcssa5073, ptr %27, align 1
  store i64 %.lcssa5376, ptr %26, align 8
  store i64 %186, ptr %5, align 8
  store i32 %185, ptr %28, align 4
  store i8 %184, ptr %27, align 1
  store i64 %197, ptr %26, align 8
  store i64 %182, ptr %8, align 8
  %200 = call ptr @__acrt_iob_func(i32 noundef 2)
  %201 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %200, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

202:                                              ; preds = %195
  br label %208

203:                                              ; preds = %193
  %204 = add nsw i32 %185, 1
  %205 = sext i8 %184 to i32
  %206 = shl i32 %205, 1
  %207 = trunc i32 %206 to i8
  br label %208

208:                                              ; preds = %203, %202
  %209 = phi i64 [ %183, %203 ], [ %197, %202 ]
  %210 = phi i8 [ %207, %203 ], [ 0, %202 ]
  %211 = phi i32 [ %204, %203 ], [ 0, %202 ]
  %212 = load i8, ptr %169, align 1
  %213 = zext i8 %212 to i64
  %214 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %213
  %215 = load i32, ptr %214, align 4
  %216 = zext i32 %215 to i64
  %217 = and i64 %216, %182
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %208
  %220 = sext i8 %210 to i32
  %221 = or i32 %220, 1
  %222 = trunc i32 %221 to i8
  br label %223

223:                                              ; preds = %219, %208
  %224 = phi i8 [ %222, %219 ], [ %210, %208 ]
  %225 = lshr i64 %182, 1
  br label %226

226:                                              ; preds = %223
  %227 = add i64 %186, 1
  br label %181, !llvm.loop !15

228:                                              ; preds = %181
  %229 = getelementptr inbounds nuw i8, ptr %169, i32 1
  br label %230

230:                                              ; preds = %228
  %231 = add i64 %170, 1
  br label %168, !llvm.loop !16

232:                                              ; preds = %168
  store i64 %170, ptr %6, align 8
  store ptr %169, ptr %13, align 8
  store i64 %.lcssa5665, ptr %8, align 8
  store i64 %.lcssa4468, ptr %5, align 8
  store i32 %.lcssa4770, ptr %28, align 4
  store i8 %.lcssa5073, ptr %27, align 1
  store i64 %.lcssa5376, ptr %26, align 8
  %233 = load i32, ptr %28, align 4
  %234 = sub nsw i32 7, %233
  %235 = load i8, ptr %27, align 1
  %236 = sext i8 %235 to i32
  %237 = shl i32 %236, %234
  %238 = trunc i32 %237 to i8
  store i8 %238, ptr %27, align 1
  %239 = load ptr, ptr %14, align 8
  %240 = load i64, ptr %26, align 8
  %241 = getelementptr inbounds nuw i8, ptr %239, i64 %240
  store i8 %238, ptr %241, align 1
  %242 = load i64, ptr %26, align 8
  %243 = add i64 %242, 1
  store i64 %243, ptr %26, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %29, i8 0, i64 1024, i1 false)
  store ptr %30, ptr %31, align 8
  store i64 0, ptr %6, align 8
  %.promoted86 = load ptr, ptr %31, align 8
  %.promoted88 = load i32, ptr %9, align 4
  %.promoted91 = load i64, ptr %8, align 8
  %.promoted94 = load i64, ptr %5, align 8
  br label %244

244:                                              ; preds = %285, %232
  %.lcssa7996 = phi i64 [ %.lcssa7995, %285 ], [ %.promoted94, %232 ]
  %.lcssa8393 = phi i64 [ %.lcssa8392, %285 ], [ %.promoted91, %232 ]
  %.lcssa8190 = phi i32 [ %.lcssa8189, %285 ], [ %.promoted88, %232 ]
  %245 = phi ptr [ %250, %285 ], [ %.promoted86, %232 ]
  %246 = phi i64 [ %286, %285 ], [ 0, %232 ]
  %247 = icmp ult i64 %246, 256
  br i1 %247, label %248, label %287

248:                                              ; preds = %244
  %249 = trunc i64 %246 to i8
  store i8 %249, ptr %245, align 1
  %250 = getelementptr inbounds nuw i8, ptr %245, i32 1
  %251 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %246
  %252 = load i32, ptr %251, align 4
  %253 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %246
  %254 = load i8, ptr %253, align 1
  %255 = zext i8 %254 to i32
  %256 = or i32 %252, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %284

258:                                              ; preds = %248
  %259 = sub nsw i32 %255, 1
  %260 = shl i32 1, %259
  %261 = sext i32 %260 to i64
  %262 = zext i8 %254 to i64
  br label %263

263:                                              ; preds = %280, %258
  %264 = phi i64 [ %279, %280 ], [ %261, %258 ]
  %265 = phi i32 [ %278, %280 ], [ 0, %258 ]
  %266 = phi i64 [ %281, %280 ], [ 0, %258 ]
  %267 = icmp ult i64 %266, %262
  br i1 %267, label %268, label %282

268:                                              ; preds = %263
  %269 = mul i32 %265, 2
  %270 = add i32 %269, 1
  %271 = load i32, ptr %251, align 4
  %272 = zext i32 %271 to i64
  %273 = and i64 %272, %264
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %268
  %276 = add i32 %270, 1
  br label %277

277:                                              ; preds = %275, %268
  %278 = phi i32 [ %276, %275 ], [ %270, %268 ]
  %279 = lshr i64 %264, 1
  br label %280

280:                                              ; preds = %277
  %281 = add i64 %266, 1
  br label %263, !llvm.loop !17

282:                                              ; preds = %263
  %283 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %246
  store i32 %265, ptr %283, align 4
  br label %284

284:                                              ; preds = %282, %248
  %.lcssa7995 = phi i64 [ %266, %282 ], [ %.lcssa7996, %248 ]
  %.lcssa8392 = phi i64 [ %264, %282 ], [ %.lcssa8393, %248 ]
  %.lcssa8189 = phi i32 [ %265, %282 ], [ %.lcssa8190, %248 ]
  br label %285

285:                                              ; preds = %284
  %286 = add i64 %246, 1
  br label %244, !llvm.loop !18

287:                                              ; preds = %244
  store i64 %246, ptr %6, align 8
  store ptr %245, ptr %31, align 8
  store i32 %.lcssa8190, ptr %9, align 4
  store i64 %.lcssa8393, ptr %8, align 8
  store i64 1, ptr %5, align 8
  %.promoted101 = load i32, ptr %10, align 4
  %.promoted103 = load i8, ptr %11, align 1
  %.promoted105 = load i64, ptr %6, align 8
  br label %288

288:                                              ; preds = %320, %287
  %.lcssa98106 = phi i64 [ %299, %320 ], [ %.promoted105, %287 ]
  %289 = phi i8 [ %297, %320 ], [ %.promoted103, %287 ]
  %290 = phi i32 [ %295, %320 ], [ %.promoted101, %287 ]
  %291 = phi i64 [ %321, %320 ], [ 1, %287 ]
  %292 = icmp ult i64 %291, 256
  br i1 %292, label %293, label %322

293:                                              ; preds = %288
  %294 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %291
  %295 = load i32, ptr %294, align 4
  %296 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %291
  %297 = load i8, ptr %296, align 1
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
  br label %298, !llvm.loop !19

317:                                              ; preds = %306
  %318 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %299
  store i32 %295, ptr %318, align 4
  %319 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %299
  store i8 %297, ptr %319, align 1
  br label %320

320:                                              ; preds = %317
  %321 = add i64 %291, 1
  br label %288, !llvm.loop !20

322:                                              ; preds = %288
  store i64 %291, ptr %5, align 8
  store i32 %290, ptr %10, align 4
  store i8 %289, ptr %11, align 1
  store i64 0, ptr %6, align 8
  br label %323

323:                                              ; preds = %329, %322
  %324 = phi i64 [ %330, %329 ], [ 0, %322 ]
  %325 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %324
  %326 = load i32, ptr %325, align 4
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %331

328:                                              ; preds = %323
  br label %329

329:                                              ; preds = %328
  %330 = add i64 %324, 1
  br label %323, !llvm.loop !21

331:                                              ; preds = %323
  store i64 %324, ptr %6, align 8
  store i32 0, ptr %9, align 4
  %332 = load i64, ptr %6, align 8
  store i64 %332, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  %333 = load ptr, ptr %14, align 8
  store ptr %333, ptr %12, align 8
  %334 = load ptr, ptr %3, align 8
  store ptr %334, ptr %13, align 8
  %335 = load i64, ptr %4, align 8
  %336 = load i64, ptr %6, align 8
  %.promoted111 = load i64, ptr %7, align 8
  %.promoted113 = load i32, ptr %9, align 4
  %.promoted115 = load ptr, ptr %12, align 8
  %.promoted117 = load i64, ptr %8, align 8
  %.promoted119 = load i64, ptr %5, align 8
  br label %337

337:                                              ; preds = %378, %331
  %338 = phi ptr [ %370, %378 ], [ %334, %331 ]
  %.lcssa110120 = phi i64 [ %.lcssa110121, %378 ], [ %.promoted119, %331 ]
  %339 = phi i64 [ %379, %378 ], [ %.promoted117, %331 ]
  %340 = phi ptr [ %380, %378 ], [ %.promoted115, %331 ]
  %341 = phi i32 [ %371, %378 ], [ %.promoted113, %331 ]
  %342 = phi i64 [ %372, %378 ], [ %.promoted111, %331 ]
  %343 = icmp ult i64 %342, %335
  br i1 %343, label %344, label %381

344:                                              ; preds = %337
  %345 = mul i32 %341, 2
  %346 = add i32 %345, 1
  %347 = load i8, ptr %340, align 1
  %348 = zext i8 %347 to i64
  %349 = and i64 %348, %339
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %353

351:                                              ; preds = %344
  %352 = add i32 %346, 1
  br label %353

353:                                              ; preds = %351, %344
  %354 = phi i32 [ %352, %351 ], [ %346, %344 ]
  br label %355

355:                                              ; preds = %360, %353
  %356 = phi i64 [ %361, %360 ], [ %.lcssa110120, %353 ]
  %357 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %356
  %358 = load i32, ptr %357, align 4
  %359 = icmp ult i32 %358, %354
  br i1 %359, label %360, label %362

360:                                              ; preds = %355
  %361 = add i64 %356, 1
  br label %355, !llvm.loop !22

362:                                              ; preds = %355
  %363 = icmp eq i32 %354, %358
  br i1 %363, label %364, label %369

364:                                              ; preds = %362
  %365 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %356
  %366 = load i8, ptr %365, align 1
  store i8 %366, ptr %338, align 1
  %367 = getelementptr inbounds nuw i8, ptr %338, i32 1
  %368 = add i64 %342, 1
  br label %369

369:                                              ; preds = %364, %362
  %370 = phi ptr [ %367, %364 ], [ %338, %362 ]
  %.lcssa110121 = phi i64 [ %336, %364 ], [ %356, %362 ]
  %371 = phi i32 [ 0, %364 ], [ %354, %362 ]
  %372 = phi i64 [ %368, %364 ], [ %342, %362 ]
  %373 = icmp ugt i64 %339, 1
  br i1 %373, label %374, label %376

374:                                              ; preds = %369
  %375 = lshr i64 %339, 1
  br label %378

376:                                              ; preds = %369
  %377 = getelementptr inbounds nuw i8, ptr %340, i32 1
  br label %378

378:                                              ; preds = %376, %374
  %379 = phi i64 [ 128, %376 ], [ %375, %374 ]
  %380 = phi ptr [ %377, %376 ], [ %340, %374 ]
  br label %337, !llvm.loop !23

381:                                              ; preds = %337
  store i64 %342, ptr %7, align 8
  store i32 %341, ptr %9, align 4
  store ptr %340, ptr %12, align 8
  store i64 %339, ptr %8, align 8
  store i64 %.lcssa110120, ptr %5, align 8
  store ptr %338, ptr %13, align 8
  %382 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %382)
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
  %11 = load ptr, ptr %6, align 8
  %12 = sub nsw i32 %3, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, ptr %11, i64 %13
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i32
  store i32 %16, ptr %10, align 4
  %17 = load i32, ptr %7, align 4
  %18 = sdiv i32 %17, 2
  %19 = load ptr, ptr %5, align 8
  %20 = load ptr, ptr %6, align 8
  %21 = sext i32 %16 to i64
  %22 = getelementptr inbounds i64, ptr %19, i64 %21
  %.promoted = load i32, ptr %8, align 4
  %.promoted2 = load i32, ptr %9, align 4
  br label %23

23:                                               ; preds = %56, %4
  %24 = phi i32 [ %46, %56 ], [ %.promoted2, %4 ]
  %25 = phi i32 [ %46, %56 ], [ %.promoted, %4 ]
  %26 = icmp sle i32 %25, %18
  br i1 %26, label %27, label %.loopexit

27:                                               ; preds = %23
  %28 = add nsw i32 %25, %25
  %29 = icmp slt i32 %28, %17
  br i1 %29, label %30, label %45

30:                                               ; preds = %27
  %31 = sub nsw i32 %28, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, ptr %20, i64 %32
  %34 = load i64, ptr %33, align 8
  %35 = getelementptr inbounds nuw i64, ptr %19, i64 %34
  %36 = load i64, ptr %35, align 8
  %37 = sext i32 %28 to i64
  %38 = getelementptr inbounds i64, ptr %20, i64 %37
  %39 = load i64, ptr %38, align 8
  %40 = getelementptr inbounds nuw i64, ptr %19, i64 %39
  %41 = load i64, ptr %40, align 8
  %42 = icmp ugt i64 %36, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %30
  %44 = add nsw i32 %28, 1
  br label %45

45:                                               ; preds = %43, %30, %27
  %46 = phi i32 [ %44, %43 ], [ %28, %30 ], [ %28, %27 ]
  %47 = load i64, ptr %22, align 8
  %48 = sub nsw i32 %46, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, ptr %20, i64 %49
  %51 = load i64, ptr %50, align 8
  %52 = getelementptr inbounds nuw i64, ptr %19, i64 %51
  %53 = load i64, ptr %52, align 8
  %54 = icmp ult i64 %47, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  store i32 %25, ptr %8, align 4
  store i32 %46, ptr %9, align 4
  br label %60

56:                                               ; preds = %45
  %57 = sub nsw i32 %25, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, ptr %20, i64 %58
  store i64 %51, ptr %59, align 8
  br label %23, !llvm.loop !24

.loopexit:                                        ; preds = %23
  store i32 %25, ptr %8, align 4
  store i32 %24, ptr %9, align 4
  br label %60

60:                                               ; preds = %.loopexit, %55
  %61 = load i32, ptr %10, align 4
  %62 = sext i32 %61 to i64
  %63 = load ptr, ptr %6, align 8
  %64 = load i32, ptr %8, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, ptr %63, i64 %66
  store i64 %62, ptr %67, align 8
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
  %10 = load i32, ptr %4, align 4
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  store i32 1, ptr %6, align 4
  %13 = load i32, ptr %4, align 4
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds ptr, ptr %14, i64 1
  br label %16

16:                                               ; preds = %25, %12
  %17 = phi i32 [ %26, %25 ], [ 1, %12 ]
  %18 = icmp slt i32 %17, %13
  br i1 %18, label %19, label %.loopexit

19:                                               ; preds = %16
  %20 = load ptr, ptr %15, align 8
  %21 = call i32 @strcmp(ptr noundef %20, ptr noundef @.str.4) #7
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 %17, ptr %6, align 4
  store i8 1, ptr %7, align 1
  br label %27

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %24
  %26 = add nsw i32 %17, 1
  br label %16, !llvm.loop !25

.loopexit:                                        ; preds = %16
  store i32 %17, ptr %6, align 4
  br label %27

27:                                               ; preds = %.loopexit, %23
  br label %28

28:                                               ; preds = %27, %2
  %29 = call ptr @generate_test_data(i64 noundef 10000000)
  store ptr %29, ptr %8, align 8
  store i32 0, ptr %6, align 4
  %30 = load ptr, ptr %8, align 8
  br label %31

31:                                               ; preds = %35, %28
  %32 = phi i32 [ %36, %35 ], [ 0, %28 ]
  %33 = icmp slt i32 %32, 30
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  call void @compdecomp(ptr noundef %30, i64 noundef 10000000)
  br label %35

35:                                               ; preds = %34
  %36 = add nsw i32 %32, 1
  br label %31, !llvm.loop !26

37:                                               ; preds = %31
  store i32 %32, ptr %6, align 4
  store double 0.000000e+00, ptr %9, align 8
  %38 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %38)
  %39 = load i8, ptr %7, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = call ptr @__acrt_iob_func(i32 noundef 1)
  %43 = load double, ptr %9, align 8
  %44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef @.str.5, double noundef %43) #7
  br label %49

45:                                               ; preds = %37
  %46 = call ptr @__acrt_iob_func(i32 noundef 1)
  %47 = load double, ptr %9, align 8
  %48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef @.str.6, double noundef %47) #7
  br label %49

49:                                               ; preds = %45, %41
  %50 = call ptr @__acrt_iob_func(i32 noundef 1)
  %51 = call i32 @fflush(ptr noundef %50)
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
  %6 = load i32, ptr @seed, align 4
  %7 = mul nsw i32 %5, 127773
  %8 = sub nsw i32 %6, %7
  %9 = mul nsw i32 16807, %8
  %10 = mul nsw i32 2836, %5
  %11 = sub nsw i32 %9, %10
  store i32 %11, ptr @seed, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = add nsw i32 %11, 2147483647
  store i32 %14, ptr @seed, align 4
  br label %15

15:                                               ; preds = %13, %0
  %16 = load i32, ptr @seed, align 4
  %17 = srem i32 %16, 32
  %18 = sext i32 %17 to i64
  store i64 %18, ptr %2, align 8
  %19 = load i32, ptr @seed, align 4
  %20 = xor i32 %19, 123459876
  store i32 %20, ptr @seed, align 4
  %21 = load i64, ptr %2, align 8
  ret i64 %21
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
