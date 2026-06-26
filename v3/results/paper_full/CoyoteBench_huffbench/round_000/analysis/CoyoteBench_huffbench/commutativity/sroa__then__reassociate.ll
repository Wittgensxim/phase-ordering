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

3:                                                ; preds = %11, %1
  %.08 = phi ptr [ %2, %1 ], [ %10, %11 ]
  %.0 = phi i32 [ 0, %1 ], [ %12, %11 ]
  %4 = sext i32 %.0 to i64
  %5 = icmp ult i64 %4, %0
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = call i64 @random4()
  %8 = getelementptr inbounds nuw i8, ptr @.str, i64 %7
  %9 = load i8, ptr %8, align 1
  store i8 %9, ptr %.08, align 1
  %10 = getelementptr inbounds nuw i8, ptr %.08, i32 1
  br label %11

11:                                               ; preds = %6
  %12 = add nsw i32 %.0, 1
  br label %3, !llvm.loop !7

13:                                               ; preds = %3
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
  call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %12, i1 false)
  %13 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %13, i8 0, i64 4096, i1 false)
  %14 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %14, i8 0, i64 2048, i1 false)
  %15 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %15, i8 0, i64 2048, i1 false)
  %16 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %16, i8 0, i64 1024, i1 false)
  %17 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %17, i8 0, i64 256, i1 false)
  br label %18

18:                                               ; preds = %27, %2
  %.0172 = phi ptr [ %0, %2 ], [ %26, %27 ]
  %.0163 = phi i64 [ 0, %2 ], [ %28, %27 ]
  %19 = icmp ult i64 %.0163, %1
  br i1 %19, label %20, label %29

20:                                               ; preds = %18
  %21 = load i8, ptr %.0172, align 1
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %22
  %24 = load i64, ptr %23, align 8
  %25 = add i64 %24, 1
  store i64 %25, ptr %23, align 8
  %26 = getelementptr inbounds nuw i8, ptr %.0172, i32 1
  br label %27

27:                                               ; preds = %20
  %28 = add i64 %.0163, 1
  br label %18, !llvm.loop !9

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %40, %29
  %.0178 = phi i64 [ 0, %29 ], [ %.1179, %40 ]
  %.1164 = phi i64 [ 0, %29 ], [ %41, %40 ]
  %31 = icmp ult i64 %.1164, 256
  br i1 %31, label %32, label %42

32:                                               ; preds = %30
  %33 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.1164
  %34 = load i64, ptr %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.0178
  store i64 %.1164, ptr %37, align 8
  %38 = add i64 %.0178, 1
  br label %39

39:                                               ; preds = %36, %32
  %.1179 = phi i64 [ %38, %36 ], [ %.0178, %32 ]
  br label %40

40:                                               ; preds = %39
  %41 = add i64 %.1164, 1
  br label %30, !llvm.loop !10

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %50, %42
  %.2165 = phi i64 [ %.0178, %42 ], [ %51, %50 ]
  %44 = icmp ugt i64 %.2165, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %43
  %46 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %47 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %48 = trunc i64 %.0178 to i32
  %49 = trunc i64 %.2165 to i32
  call void @heap_adjust(ptr noundef %46, ptr noundef %47, i32 noundef %48, i32 noundef %49)
  br label %50

50:                                               ; preds = %45
  %51 = add i64 %.2165, -1
  br label %43, !llvm.loop !11

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %55, %52
  %.2180 = phi i64 [ %.0178, %52 ], [ %56, %55 ]
  %54 = icmp ugt i64 %.2180, 1
  br i1 %54, label %55, label %87

55:                                               ; preds = %53
  %56 = add i64 %.2180, -1
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
  %71 = add i64 %70, %68
  %72 = add i64 %56, 256
  %73 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %72
  store i64 %71, ptr %73, align 8
  %74 = add i64 %56, 256
  %75 = trunc i64 %74 to i32
  %76 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %58
  store i32 %75, ptr %76, align 4
  %77 = sub i64 -256, %56
  %78 = trunc i64 %77 to i32
  %79 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %80 = load i64, ptr %79, align 16
  %81 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %80
  store i32 %78, ptr %81, align 4
  %82 = add i64 %56, 256
  %83 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %82, ptr %83, align 16
  %84 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %85 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %86 = trunc i64 %56 to i32
  call void @heap_adjust(ptr noundef %84, ptr noundef %85, i32 noundef %86, i32 noundef 1)
  br label %53, !llvm.loop !12

87:                                               ; preds = %53
  %88 = add i64 %.2180, 256
  %89 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %88
  store i32 0, ptr %89, align 4
  br label %90

90:                                               ; preds = %127, %87
  %.0162 = phi i64 [ 0, %87 ], [ %128, %127 ]
  %.0157 = phi i64 [ 0, %87 ], [ %.1158, %127 ]
  %.0154 = phi i64 [ 0, %87 ], [ %.1155, %127 ]
  %91 = icmp ult i64 %.0162, 256
  br i1 %91, label %92, label %129

92:                                               ; preds = %90
  %93 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.0162
  %94 = load i64, ptr %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.0162
  store i32 0, ptr %97, align 4
  %98 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.0162
  store i8 0, ptr %98, align 1
  br label %126

99:                                               ; preds = %92
  %100 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.0162
  %101 = load i32, ptr %100, align 4
  br label %102

102:                                              ; preds = %109, %99
  %.0167 = phi i64 [ 1, %99 ], [ %113, %109 ]
  %.3166 = phi i64 [ 0, %99 ], [ %114, %109 ]
  %.0160 = phi i64 [ 0, %99 ], [ %.1161, %109 ]
  %.0152 = phi i32 [ %101, %99 ], [ %112, %109 ]
  %103 = icmp ne i32 %.0152, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %102
  %105 = icmp slt i32 %.0152, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %104
  %107 = add i64 %.0160, %.0167
  %108 = sub nsw i32 0, %.0152
  br label %109

109:                                              ; preds = %106, %104
  %.1161 = phi i64 [ %107, %106 ], [ %.0160, %104 ]
  %.1153 = phi i32 [ %108, %106 ], [ %.0152, %104 ]
  %110 = sext i32 %.1153 to i64
  %111 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %110
  %112 = load i32, ptr %111, align 4
  %113 = shl i64 %.0167, 1
  %114 = add i64 %.3166, 1
  br label %102, !llvm.loop !13

115:                                              ; preds = %102
  %116 = trunc i64 %.0160 to i32
  %117 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.0162
  store i32 %116, ptr %117, align 4
  %118 = trunc i64 %.3166 to i8
  %119 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.0162
  store i8 %118, ptr %119, align 1
  %120 = icmp ugt i64 %.0160, %.0157
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %122

122:                                              ; preds = %121, %115
  %.2159 = phi i64 [ %.0160, %121 ], [ %.0157, %115 ]
  %123 = icmp ugt i64 %.3166, %.0154
  br i1 %123, label %124, label %125

124:                                              ; preds = %122
  br label %125

125:                                              ; preds = %124, %122
  %.2156 = phi i64 [ %.3166, %124 ], [ %.0154, %122 ]
  br label %126

126:                                              ; preds = %125, %96
  %.1158 = phi i64 [ %.2159, %125 ], [ %.0157, %96 ]
  %.1155 = phi i64 [ %.2156, %125 ], [ %.0154, %96 ]
  br label %127

127:                                              ; preds = %126
  %128 = add i64 %.0162, 1
  br label %90, !llvm.loop !14

129:                                              ; preds = %90
  %130 = icmp ugt i64 %.0154, 32
  br i1 %130, label %131, label %134

131:                                              ; preds = %129
  %132 = call ptr @__acrt_iob_func(i32 noundef 2)
  %133 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %132, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

134:                                              ; preds = %129
  %135 = icmp eq i64 %.0157, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %134
  %137 = call ptr @__acrt_iob_func(i32 noundef 2)
  %138 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %137, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

139:                                              ; preds = %134
  br label %140

140:                                              ; preds = %191, %139
  %.1173 = phi ptr [ %0, %139 ], [ %190, %191 ]
  %.1168 = phi i64 [ 0, %139 ], [ %192, %191 ]
  %.0149 = phi i64 [ 0, %139 ], [ %.1150, %191 ]
  %.0146 = phi i8 [ 0, %139 ], [ %.1147, %191 ]
  %.0145 = phi i32 [ -1, %139 ], [ %.1, %191 ]
  %141 = icmp ult i64 %.1168, %1
  br i1 %141, label %142, label %193

142:                                              ; preds = %140
  %143 = load i8, ptr %.1173, align 1
  %144 = zext i8 %143 to i64
  %145 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %144
  %146 = load i8, ptr %145, align 1
  %147 = zext i8 %146 to i32
  %148 = sub nsw i32 %147, 1
  %149 = shl i32 1, %148
  %150 = sext i32 %149 to i64
  br label %151

151:                                              ; preds = %187, %142
  %.0183 = phi i64 [ %150, %142 ], [ %186, %187 ]
  %.4 = phi i64 [ 0, %142 ], [ %188, %187 ]
  %.1150 = phi i64 [ %.0149, %142 ], [ %.2151, %187 ]
  %.1147 = phi i8 [ %.0146, %142 ], [ %.3, %187 ]
  %.1 = phi i32 [ %.0145, %142 ], [ %.2, %187 ]
  %152 = load i8, ptr %.1173, align 1
  %153 = zext i8 %152 to i64
  %154 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %153
  %155 = load i8, ptr %154, align 1
  %156 = zext i8 %155 to i64
  %157 = icmp ult i64 %.4, %156
  br i1 %157, label %158, label %189

158:                                              ; preds = %151
  %159 = icmp eq i32 %.1, 7
  br i1 %159, label %160, label %168

160:                                              ; preds = %158
  %161 = getelementptr inbounds nuw i8, ptr %11, i64 %.1150
  store i8 %.1147, ptr %161, align 1
  %162 = add i64 %.1150, 1
  %163 = icmp eq i64 %162, %1
  br i1 %163, label %164, label %167

164:                                              ; preds = %160
  %165 = call ptr @__acrt_iob_func(i32 noundef 2)
  %166 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %165, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

167:                                              ; preds = %160
  br label %173

168:                                              ; preds = %158
  %169 = add nsw i32 %.1, 1
  %170 = sext i8 %.1147 to i32
  %171 = shl i32 %170, 1
  %172 = trunc i32 %171 to i8
  br label %173

173:                                              ; preds = %168, %167
  %.2151 = phi i64 [ %162, %167 ], [ %.1150, %168 ]
  %.2148 = phi i8 [ 0, %167 ], [ %172, %168 ]
  %.2 = phi i32 [ 0, %167 ], [ %169, %168 ]
  %174 = load i8, ptr %.1173, align 1
  %175 = zext i8 %174 to i64
  %176 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %175
  %177 = load i32, ptr %176, align 4
  %178 = zext i32 %177 to i64
  %179 = and i64 %178, %.0183
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %173
  %182 = sext i8 %.2148 to i32
  %183 = or i32 %182, 1
  %184 = trunc i32 %183 to i8
  br label %185

185:                                              ; preds = %181, %173
  %.3 = phi i8 [ %184, %181 ], [ %.2148, %173 ]
  %186 = lshr i64 %.0183, 1
  br label %187

187:                                              ; preds = %185
  %188 = add i64 %.4, 1
  br label %151, !llvm.loop !15

189:                                              ; preds = %151
  %190 = getelementptr inbounds nuw i8, ptr %.1173, i32 1
  br label %191

191:                                              ; preds = %189
  %192 = add i64 %.1168, 1
  br label %140, !llvm.loop !16

193:                                              ; preds = %140
  %194 = sub nsw i32 7, %.0145
  %195 = sext i8 %.0146 to i32
  %196 = shl i32 %195, %194
  %197 = trunc i32 %196 to i8
  %198 = getelementptr inbounds nuw i8, ptr %11, i64 %.0149
  store i8 %197, ptr %198, align 1
  %199 = getelementptr inbounds [256 x i32], ptr %8, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %199, i8 0, i64 1024, i1 false)
  %200 = getelementptr inbounds [256 x i8], ptr %9, i64 0, i64 0
  br label %201

201:                                              ; preds = %242, %193
  %.2169 = phi i64 [ 0, %193 ], [ %243, %242 ]
  %.0 = phi ptr [ %200, %193 ], [ %205, %242 ]
  %202 = icmp ult i64 %.2169, 256
  br i1 %202, label %203, label %244

203:                                              ; preds = %201
  %204 = trunc i64 %.2169 to i8
  store i8 %204, ptr %.0, align 1
  %205 = getelementptr inbounds nuw i8, ptr %.0, i32 1
  %206 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.2169
  %207 = load i32, ptr %206, align 4
  %208 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2169
  %209 = load i8, ptr %208, align 1
  %210 = zext i8 %209 to i32
  %211 = or i32 %210, %207
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %241

213:                                              ; preds = %203
  %214 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2169
  %215 = load i8, ptr %214, align 1
  %216 = zext i8 %215 to i32
  %217 = sub nsw i32 %216, 1
  %218 = shl i32 1, %217
  %219 = sext i32 %218 to i64
  br label %220

220:                                              ; preds = %237, %213
  %.0187 = phi i32 [ 0, %213 ], [ %.1188, %237 ]
  %.1184 = phi i64 [ %219, %213 ], [ %236, %237 ]
  %.5 = phi i64 [ 0, %213 ], [ %238, %237 ]
  %221 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2169
  %222 = load i8, ptr %221, align 1
  %223 = zext i8 %222 to i64
  %224 = icmp ult i64 %.5, %223
  br i1 %224, label %225, label %239

225:                                              ; preds = %220
  %226 = mul i32 %.0187, 2
  %227 = add i32 %226, 1
  %228 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.2169
  %229 = load i32, ptr %228, align 4
  %230 = zext i32 %229 to i64
  %231 = and i64 %230, %.1184
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %225
  %234 = add i32 %227, 1
  br label %235

235:                                              ; preds = %233, %225
  %.1188 = phi i32 [ %234, %233 ], [ %227, %225 ]
  %236 = lshr i64 %.1184, 1
  br label %237

237:                                              ; preds = %235
  %238 = add i64 %.5, 1
  br label %220, !llvm.loop !17

239:                                              ; preds = %220
  %240 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.2169
  store i32 %.0187, ptr %240, align 4
  br label %241

241:                                              ; preds = %239, %203
  br label %242

242:                                              ; preds = %241
  %243 = add i64 %.2169, 1
  br label %201, !llvm.loop !18

244:                                              ; preds = %201
  br label %245

245:                                              ; preds = %274, %244
  %.6 = phi i64 [ 1, %244 ], [ %275, %274 ]
  %246 = icmp ult i64 %.6, 256
  br i1 %246, label %247, label %276

247:                                              ; preds = %245
  %248 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %249 = load i32, ptr %248, align 4
  %250 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %251 = load i8, ptr %250, align 1
  br label %252

252:                                              ; preds = %261, %247
  %.3170 = phi i64 [ %.6, %247 ], [ %270, %261 ]
  %253 = icmp ne i64 %.3170, 0
  br i1 %253, label %254, label %259

254:                                              ; preds = %252
  %255 = sub i64 %.3170, 1
  %256 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %255
  %257 = load i32, ptr %256, align 4
  %258 = icmp ugt i32 %257, %249
  br label %259

259:                                              ; preds = %254, %252
  %260 = phi i1 [ false, %252 ], [ %258, %254 ]
  br i1 %260, label %261, label %271

261:                                              ; preds = %259
  %262 = sub i64 %.3170, 1
  %263 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %262
  %264 = load i32, ptr %263, align 4
  %265 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.3170
  store i32 %264, ptr %265, align 4
  %266 = sub i64 %.3170, 1
  %267 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %266
  %268 = load i8, ptr %267, align 1
  %269 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.3170
  store i8 %268, ptr %269, align 1
  %270 = add i64 %.3170, -1
  br label %252, !llvm.loop !19

271:                                              ; preds = %259
  %272 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.3170
  store i32 %249, ptr %272, align 4
  %273 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.3170
  store i8 %251, ptr %273, align 1
  br label %274

274:                                              ; preds = %271
  %275 = add i64 %.6, 1
  br label %245, !llvm.loop !20

276:                                              ; preds = %245
  br label %277

277:                                              ; preds = %282, %276
  %.4171 = phi i64 [ 0, %276 ], [ %283, %282 ]
  %278 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.4171
  %279 = load i32, ptr %278, align 4
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %277
  br label %282

282:                                              ; preds = %281
  %283 = add i64 %.4171, 1
  br label %277, !llvm.loop !21

284:                                              ; preds = %277
  br label %285

285:                                              ; preds = %318, %284
  %.2189 = phi i32 [ 0, %284 ], [ %.4191, %318 ]
  %.2185 = phi i64 [ 128, %284 ], [ %.3186, %318 ]
  %.3181 = phi i64 [ 0, %284 ], [ %.4182, %318 ]
  %.0176 = phi ptr [ %11, %284 ], [ %.1177, %318 ]
  %.2174 = phi ptr [ %0, %284 ], [ %.3175, %318 ]
  %.7 = phi i64 [ %.4171, %284 ], [ %.9, %318 ]
  %286 = icmp ult i64 %.3181, %1
  br i1 %286, label %287, label %319

287:                                              ; preds = %285
  %288 = mul i32 %.2189, 2
  %289 = add i32 %288, 1
  %290 = load i8, ptr %.0176, align 1
  %291 = zext i8 %290 to i64
  %292 = and i64 %291, %.2185
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %287
  %295 = add i32 %289, 1
  br label %296

296:                                              ; preds = %294, %287
  %.3190 = phi i32 [ %295, %294 ], [ %289, %287 ]
  br label %297

297:                                              ; preds = %301, %296
  %.8 = phi i64 [ %.7, %296 ], [ %302, %301 ]
  %298 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %299 = load i32, ptr %298, align 4
  %300 = icmp ult i32 %299, %.3190
  br i1 %300, label %301, label %303

301:                                              ; preds = %297
  %302 = add i64 %.8, 1
  br label %297, !llvm.loop !22

303:                                              ; preds = %297
  %304 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %305 = load i32, ptr %304, align 4
  %306 = icmp eq i32 %.3190, %305
  br i1 %306, label %307, label %312

307:                                              ; preds = %303
  %308 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8
  %309 = load i8, ptr %308, align 1
  store i8 %309, ptr %.2174, align 1
  %310 = getelementptr inbounds nuw i8, ptr %.2174, i32 1
  %311 = add i64 %.3181, 1
  br label %312

312:                                              ; preds = %307, %303
  %.4191 = phi i32 [ 0, %307 ], [ %.3190, %303 ]
  %.4182 = phi i64 [ %311, %307 ], [ %.3181, %303 ]
  %.3175 = phi ptr [ %310, %307 ], [ %.2174, %303 ]
  %.9 = phi i64 [ %.4171, %307 ], [ %.8, %303 ]
  %313 = icmp ugt i64 %.2185, 1
  br i1 %313, label %314, label %316

314:                                              ; preds = %312
  %315 = lshr i64 %.2185, 1
  br label %318

316:                                              ; preds = %312
  %317 = getelementptr inbounds nuw i8, ptr %.0176, i32 1
  br label %318

318:                                              ; preds = %316, %314
  %.3186 = phi i64 [ %315, %314 ], [ 128, %316 ]
  %.1177 = phi ptr [ %.0176, %314 ], [ %317, %316 ]
  br label %285, !llvm.loop !23

319:                                              ; preds = %285
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

10:                                               ; preds = %42, %4
  %.0 = phi i32 [ %3, %4 ], [ %.027, %42 ]
  %11 = sdiv i32 %2, 2
  %12 = icmp sle i32 %.0, %11
  br i1 %12, label %13, label %50

13:                                               ; preds = %10
  %factor = mul i32 %.0, 2
  %14 = icmp slt i32 %factor, %2
  br i1 %14, label %15, label %30

15:                                               ; preds = %13
  %16 = sub nsw i32 %factor, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, ptr %1, i64 %17
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds nuw i64, ptr %0, i64 %19
  %21 = load i64, ptr %20, align 8
  %22 = sext i32 %factor to i64
  %23 = getelementptr inbounds i64, ptr %1, i64 %22
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds nuw i64, ptr %0, i64 %24
  %26 = load i64, ptr %25, align 8
  %27 = icmp ugt i64 %21, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = add nsw i32 %factor, 1
  br label %30

30:                                               ; preds = %28, %15, %13
  %.027 = phi i32 [ %29, %28 ], [ %factor, %15 ], [ %factor, %13 ]
  %31 = sext i32 %9 to i64
  %32 = getelementptr inbounds i64, ptr %0, i64 %31
  %33 = load i64, ptr %32, align 8
  %34 = sub nsw i32 %.027, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, ptr %1, i64 %35
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds nuw i64, ptr %0, i64 %37
  %39 = load i64, ptr %38, align 8
  %40 = icmp ult i64 %33, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  br label %50

42:                                               ; preds = %30
  %43 = sub nsw i32 %.027, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, ptr %1, i64 %44
  %46 = load i64, ptr %45, align 8
  %47 = sub nsw i32 %.0, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, ptr %1, i64 %48
  store i64 %46, ptr %49, align 8
  br label %10, !llvm.loop !24

50:                                               ; preds = %41, %10
  %51 = sext i32 %9 to i64
  %52 = sub nsw i32 %.0, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, ptr %1, i64 %53
  store i64 %51, ptr %54, align 8
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
  br label %5

5:                                                ; preds = %14, %4
  %.0 = phi i32 [ 1, %4 ], [ %15, %14 ]
  %6 = icmp slt i32 %.0, %0
  br i1 %6, label %7, label %16

7:                                                ; preds = %5
  %8 = getelementptr inbounds ptr, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8
  %10 = call i32 @strcmp(ptr noundef %9, ptr noundef @.str.4) #7
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  br label %16

13:                                               ; preds = %7
  br label %14

14:                                               ; preds = %13
  %15 = add nsw i32 %.0, 1
  br label %5, !llvm.loop !25

16:                                               ; preds = %12, %5
  %.112 = phi i8 [ 1, %12 ], [ 0, %5 ]
  br label %17

17:                                               ; preds = %16, %2
  %.011 = phi i8 [ %.112, %16 ], [ 0, %2 ]
  %18 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %19

19:                                               ; preds = %22, %17
  %.1 = phi i32 [ 0, %17 ], [ %23, %22 ]
  %20 = icmp slt i32 %.1, 30
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  call void @compdecomp(ptr noundef %18, i64 noundef 10000000)
  br label %22

22:                                               ; preds = %21
  %23 = add nsw i32 %.1, 1
  br label %19, !llvm.loop !26

24:                                               ; preds = %19
  call void @free(ptr noundef %18)
  %25 = icmp ne i8 %.011, 0
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
  %8 = mul nsw i32 %7, 16807
  %9 = mul nsw i32 %4, 2836
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
