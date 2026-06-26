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

19:                                               ; preds = %28, %2
  %.0172 = phi ptr [ %0, %2 ], [ %27, %28 ]
  %.0163 = phi i64 [ 0, %2 ], [ %29, %28 ]
  %20 = icmp ult i64 %.0163, %1
  br i1 %20, label %21, label %30

21:                                               ; preds = %19
  %22 = load i8, ptr %.0172, align 1
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %23
  %25 = load i64, ptr %24, align 8
  %26 = add i64 %25, 1
  store i64 %26, ptr %24, align 8
  %27 = getelementptr inbounds nuw i8, ptr %.0172, i32 1
  br label %28

28:                                               ; preds = %21
  %29 = add i64 %.0163, 1
  br label %19, !llvm.loop !9

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %41, %30
  %.0178 = phi i64 [ 0, %30 ], [ %.1179, %41 ]
  %.1164 = phi i64 [ 0, %30 ], [ %42, %41 ]
  %32 = icmp ult i64 %.1164, 256
  br i1 %32, label %33, label %43

33:                                               ; preds = %31
  %34 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.1164
  %35 = load i64, ptr %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.0178
  store i64 %.1164, ptr %38, align 8
  %39 = add i64 %.0178, 1
  br label %40

40:                                               ; preds = %37, %33
  %.1179 = phi i64 [ %39, %37 ], [ %.0178, %33 ]
  br label %41

41:                                               ; preds = %40
  %42 = add i64 %.1164, 1
  br label %31, !llvm.loop !10

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %51, %43
  %.2165 = phi i64 [ %.0178, %43 ], [ %52, %51 ]
  %45 = icmp ugt i64 %.2165, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %44
  %47 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %48 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %49 = trunc i64 %.0178 to i32
  %50 = trunc i64 %.2165 to i32
  call void @heap_adjust(ptr noundef %47, ptr noundef %48, i32 noundef %49, i32 noundef %50)
  br label %51

51:                                               ; preds = %46
  %52 = add i64 %.2165, -1
  br label %44, !llvm.loop !11

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %56, %53
  %.2180 = phi i64 [ %.0178, %53 ], [ %57, %56 ]
  %55 = icmp ugt i64 %.2180, 1
  br i1 %55, label %56, label %88

56:                                               ; preds = %54
  %57 = add i64 %.2180, -1
  %58 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %59 = load i64, ptr %58, align 16
  %60 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %57
  %61 = load i64, ptr %60, align 8
  %62 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %61, ptr %62, align 16
  %63 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %64 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %65 = trunc i64 %57 to i32
  call void @heap_adjust(ptr noundef %63, ptr noundef %64, i32 noundef %65, i32 noundef 1)
  %66 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %67 = load i64, ptr %66, align 16
  %68 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %67
  %69 = load i64, ptr %68, align 8
  %70 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %59
  %71 = load i64, ptr %70, align 8
  %72 = add i64 %69, %71
  %73 = add i64 256, %57
  %74 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %73
  store i64 %72, ptr %74, align 8
  %75 = add i64 256, %57
  %76 = trunc i64 %75 to i32
  %77 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %59
  store i32 %76, ptr %77, align 4
  %78 = sub i64 -256, %57
  %79 = trunc i64 %78 to i32
  %80 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %81 = load i64, ptr %80, align 16
  %82 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %81
  store i32 %79, ptr %82, align 4
  %83 = add i64 256, %57
  %84 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %83, ptr %84, align 16
  %85 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %86 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %87 = trunc i64 %57 to i32
  call void @heap_adjust(ptr noundef %85, ptr noundef %86, i32 noundef %87, i32 noundef 1)
  br label %54, !llvm.loop !12

88:                                               ; preds = %54
  %89 = add i64 256, %.2180
  %90 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %89
  store i32 0, ptr %90, align 4
  br label %91

91:                                               ; preds = %128, %88
  %.0162 = phi i64 [ 0, %88 ], [ %129, %128 ]
  %.0157 = phi i64 [ 0, %88 ], [ %.1158, %128 ]
  %.0154 = phi i64 [ 0, %88 ], [ %.1155, %128 ]
  %92 = icmp ult i64 %.0162, 256
  br i1 %92, label %93, label %130

93:                                               ; preds = %91
  %94 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.0162
  %95 = load i64, ptr %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.0162
  store i32 0, ptr %98, align 4
  %99 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.0162
  store i8 0, ptr %99, align 1
  br label %127

100:                                              ; preds = %93
  %101 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.0162
  %102 = load i32, ptr %101, align 4
  br label %103

103:                                              ; preds = %110, %100
  %.0167 = phi i64 [ 1, %100 ], [ %114, %110 ]
  %.3166 = phi i64 [ 0, %100 ], [ %115, %110 ]
  %.0160 = phi i64 [ 0, %100 ], [ %.1161, %110 ]
  %.0152 = phi i32 [ %102, %100 ], [ %113, %110 ]
  %104 = icmp ne i32 %.0152, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %103
  %106 = icmp slt i32 %.0152, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %105
  %108 = add i64 %.0160, %.0167
  %109 = sub nsw i32 0, %.0152
  br label %110

110:                                              ; preds = %107, %105
  %.1161 = phi i64 [ %108, %107 ], [ %.0160, %105 ]
  %.1153 = phi i32 [ %109, %107 ], [ %.0152, %105 ]
  %111 = sext i32 %.1153 to i64
  %112 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %111
  %113 = load i32, ptr %112, align 4
  %114 = shl i64 %.0167, 1
  %115 = add i64 %.3166, 1
  br label %103, !llvm.loop !13

116:                                              ; preds = %103
  %117 = trunc i64 %.0160 to i32
  %118 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.0162
  store i32 %117, ptr %118, align 4
  %119 = trunc i64 %.3166 to i8
  %120 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.0162
  store i8 %119, ptr %120, align 1
  %121 = icmp ugt i64 %.0160, %.0157
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %123

123:                                              ; preds = %122, %116
  %.2159 = phi i64 [ %.0160, %122 ], [ %.0157, %116 ]
  %124 = icmp ugt i64 %.3166, %.0154
  br i1 %124, label %125, label %126

125:                                              ; preds = %123
  br label %126

126:                                              ; preds = %125, %123
  %.2156 = phi i64 [ %.3166, %125 ], [ %.0154, %123 ]
  br label %127

127:                                              ; preds = %126, %97
  %.1158 = phi i64 [ %.2159, %126 ], [ %.0157, %97 ]
  %.1155 = phi i64 [ %.2156, %126 ], [ %.0154, %97 ]
  br label %128

128:                                              ; preds = %127
  %129 = add i64 %.0162, 1
  br label %91, !llvm.loop !14

130:                                              ; preds = %91
  %131 = icmp ugt i64 %.0154, 32
  br i1 %131, label %132, label %135

132:                                              ; preds = %130
  %133 = call ptr @__acrt_iob_func(i32 noundef 2)
  %134 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %133, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

135:                                              ; preds = %130
  %136 = icmp eq i64 %.0157, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %135
  %138 = call ptr @__acrt_iob_func(i32 noundef 2)
  %139 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %138, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

140:                                              ; preds = %135
  br label %141

141:                                              ; preds = %192, %140
  %.1173 = phi ptr [ %0, %140 ], [ %191, %192 ]
  %.1168 = phi i64 [ 0, %140 ], [ %193, %192 ]
  %.0149 = phi i64 [ 0, %140 ], [ %.1150, %192 ]
  %.0146 = phi i8 [ 0, %140 ], [ %.1147, %192 ]
  %.0145 = phi i32 [ -1, %140 ], [ %.1, %192 ]
  %142 = icmp ult i64 %.1168, %1
  br i1 %142, label %143, label %194

143:                                              ; preds = %141
  %144 = load i8, ptr %.1173, align 1
  %145 = zext i8 %144 to i64
  %146 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %145
  %147 = load i8, ptr %146, align 1
  %148 = zext i8 %147 to i32
  %149 = sub nsw i32 %148, 1
  %150 = shl i32 1, %149
  %151 = sext i32 %150 to i64
  br label %152

152:                                              ; preds = %188, %143
  %.0183 = phi i64 [ %151, %143 ], [ %187, %188 ]
  %.4 = phi i64 [ 0, %143 ], [ %189, %188 ]
  %.1150 = phi i64 [ %.0149, %143 ], [ %.2151, %188 ]
  %.1147 = phi i8 [ %.0146, %143 ], [ %.3, %188 ]
  %.1 = phi i32 [ %.0145, %143 ], [ %.2, %188 ]
  %153 = load i8, ptr %.1173, align 1
  %154 = zext i8 %153 to i64
  %155 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %154
  %156 = load i8, ptr %155, align 1
  %157 = zext i8 %156 to i64
  %158 = icmp ult i64 %.4, %157
  br i1 %158, label %159, label %190

159:                                              ; preds = %152
  %160 = icmp eq i32 %.1, 7
  br i1 %160, label %161, label %169

161:                                              ; preds = %159
  %162 = getelementptr inbounds nuw i8, ptr %11, i64 %.1150
  store i8 %.1147, ptr %162, align 1
  %163 = add i64 %.1150, 1
  %164 = icmp eq i64 %163, %1
  br i1 %164, label %165, label %168

165:                                              ; preds = %161
  %166 = call ptr @__acrt_iob_func(i32 noundef 2)
  %167 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %166, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

168:                                              ; preds = %161
  br label %174

169:                                              ; preds = %159
  %170 = add nsw i32 %.1, 1
  %171 = sext i8 %.1147 to i32
  %172 = shl i32 %171, 1
  %173 = trunc i32 %172 to i8
  br label %174

174:                                              ; preds = %169, %168
  %.2151 = phi i64 [ %163, %168 ], [ %.1150, %169 ]
  %.2148 = phi i8 [ 0, %168 ], [ %173, %169 ]
  %.2 = phi i32 [ 0, %168 ], [ %170, %169 ]
  %175 = load i8, ptr %.1173, align 1
  %176 = zext i8 %175 to i64
  %177 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %176
  %178 = load i32, ptr %177, align 4
  %179 = zext i32 %178 to i64
  %180 = and i64 %179, %.0183
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %174
  %183 = sext i8 %.2148 to i32
  %184 = or i32 %183, 1
  %185 = trunc i32 %184 to i8
  br label %186

186:                                              ; preds = %182, %174
  %.3 = phi i8 [ %185, %182 ], [ %.2148, %174 ]
  %187 = lshr i64 %.0183, 1
  br label %188

188:                                              ; preds = %186
  %189 = add i64 %.4, 1
  br label %152, !llvm.loop !15

190:                                              ; preds = %152
  %191 = getelementptr inbounds nuw i8, ptr %.1173, i32 1
  br label %192

192:                                              ; preds = %190
  %193 = add i64 %.1168, 1
  br label %141, !llvm.loop !16

194:                                              ; preds = %141
  %195 = sub nsw i32 7, %.0145
  %196 = sext i8 %.0146 to i32
  %197 = shl i32 %196, %195
  %198 = trunc i32 %197 to i8
  %199 = getelementptr inbounds nuw i8, ptr %11, i64 %.0149
  store i8 %198, ptr %199, align 1
  %200 = add i64 %.0149, 1
  %201 = getelementptr inbounds [256 x i32], ptr %8, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %201, i8 0, i64 1024, i1 false)
  %202 = getelementptr inbounds [256 x i8], ptr %9, i64 0, i64 0
  br label %203

203:                                              ; preds = %244, %194
  %.2169 = phi i64 [ 0, %194 ], [ %245, %244 ]
  %.0 = phi ptr [ %202, %194 ], [ %207, %244 ]
  %204 = icmp ult i64 %.2169, 256
  br i1 %204, label %205, label %246

205:                                              ; preds = %203
  %206 = trunc i64 %.2169 to i8
  store i8 %206, ptr %.0, align 1
  %207 = getelementptr inbounds nuw i8, ptr %.0, i32 1
  %208 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.2169
  %209 = load i32, ptr %208, align 4
  %210 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2169
  %211 = load i8, ptr %210, align 1
  %212 = zext i8 %211 to i32
  %213 = or i32 %209, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %243

215:                                              ; preds = %205
  %216 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2169
  %217 = load i8, ptr %216, align 1
  %218 = zext i8 %217 to i32
  %219 = sub nsw i32 %218, 1
  %220 = shl i32 1, %219
  %221 = sext i32 %220 to i64
  br label %222

222:                                              ; preds = %239, %215
  %.0187 = phi i32 [ 0, %215 ], [ %.1188, %239 ]
  %.1184 = phi i64 [ %221, %215 ], [ %238, %239 ]
  %.5 = phi i64 [ 0, %215 ], [ %240, %239 ]
  %223 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2169
  %224 = load i8, ptr %223, align 1
  %225 = zext i8 %224 to i64
  %226 = icmp ult i64 %.5, %225
  br i1 %226, label %227, label %241

227:                                              ; preds = %222
  %228 = mul i32 %.0187, 2
  %229 = add i32 %228, 1
  %230 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.2169
  %231 = load i32, ptr %230, align 4
  %232 = zext i32 %231 to i64
  %233 = and i64 %232, %.1184
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %227
  %236 = add i32 %229, 1
  br label %237

237:                                              ; preds = %235, %227
  %.1188 = phi i32 [ %236, %235 ], [ %229, %227 ]
  %238 = lshr i64 %.1184, 1
  br label %239

239:                                              ; preds = %237
  %240 = add i64 %.5, 1
  br label %222, !llvm.loop !17

241:                                              ; preds = %222
  %242 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.2169
  store i32 %.0187, ptr %242, align 4
  br label %243

243:                                              ; preds = %241, %205
  br label %244

244:                                              ; preds = %243
  %245 = add i64 %.2169, 1
  br label %203, !llvm.loop !18

246:                                              ; preds = %203
  br label %247

247:                                              ; preds = %276, %246
  %.6 = phi i64 [ 1, %246 ], [ %277, %276 ]
  %248 = icmp ult i64 %.6, 256
  br i1 %248, label %249, label %278

249:                                              ; preds = %247
  %250 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %251 = load i32, ptr %250, align 4
  %252 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %253 = load i8, ptr %252, align 1
  br label %254

254:                                              ; preds = %263, %249
  %.3170 = phi i64 [ %.6, %249 ], [ %272, %263 ]
  %255 = icmp ne i64 %.3170, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %254
  %257 = sub i64 %.3170, 1
  %258 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %257
  %259 = load i32, ptr %258, align 4
  %260 = icmp ugt i32 %259, %251
  br label %261

261:                                              ; preds = %256, %254
  %262 = phi i1 [ false, %254 ], [ %260, %256 ]
  br i1 %262, label %263, label %273

263:                                              ; preds = %261
  %264 = sub i64 %.3170, 1
  %265 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %264
  %266 = load i32, ptr %265, align 4
  %267 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.3170
  store i32 %266, ptr %267, align 4
  %268 = sub i64 %.3170, 1
  %269 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %268
  %270 = load i8, ptr %269, align 1
  %271 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.3170
  store i8 %270, ptr %271, align 1
  %272 = add i64 %.3170, -1
  br label %254, !llvm.loop !19

273:                                              ; preds = %261
  %274 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.3170
  store i32 %251, ptr %274, align 4
  %275 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.3170
  store i8 %253, ptr %275, align 1
  br label %276

276:                                              ; preds = %273
  %277 = add i64 %.6, 1
  br label %247, !llvm.loop !20

278:                                              ; preds = %247
  br label %279

279:                                              ; preds = %284, %278
  %.4171 = phi i64 [ 0, %278 ], [ %285, %284 ]
  %280 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.4171
  %281 = load i32, ptr %280, align 4
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %279
  br label %284

284:                                              ; preds = %283
  %285 = add i64 %.4171, 1
  br label %279, !llvm.loop !21

286:                                              ; preds = %279
  br label %287

287:                                              ; preds = %320, %286
  %.2189 = phi i32 [ 0, %286 ], [ %.4191, %320 ]
  %.2185 = phi i64 [ 128, %286 ], [ %.3186, %320 ]
  %.3181 = phi i64 [ 0, %286 ], [ %.4182, %320 ]
  %.0176 = phi ptr [ %11, %286 ], [ %.1177, %320 ]
  %.2174 = phi ptr [ %0, %286 ], [ %.3175, %320 ]
  %.7 = phi i64 [ %.4171, %286 ], [ %.9, %320 ]
  %288 = icmp ult i64 %.3181, %1
  br i1 %288, label %289, label %321

289:                                              ; preds = %287
  %290 = mul i32 %.2189, 2
  %291 = add i32 %290, 1
  %292 = load i8, ptr %.0176, align 1
  %293 = zext i8 %292 to i64
  %294 = and i64 %293, %.2185
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %298

296:                                              ; preds = %289
  %297 = add i32 %291, 1
  br label %298

298:                                              ; preds = %296, %289
  %.3190 = phi i32 [ %297, %296 ], [ %291, %289 ]
  br label %299

299:                                              ; preds = %303, %298
  %.8 = phi i64 [ %.7, %298 ], [ %304, %303 ]
  %300 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %301 = load i32, ptr %300, align 4
  %302 = icmp ult i32 %301, %.3190
  br i1 %302, label %303, label %305

303:                                              ; preds = %299
  %304 = add i64 %.8, 1
  br label %299, !llvm.loop !22

305:                                              ; preds = %299
  %306 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %307 = load i32, ptr %306, align 4
  %308 = icmp eq i32 %.3190, %307
  br i1 %308, label %309, label %314

309:                                              ; preds = %305
  %310 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8
  %311 = load i8, ptr %310, align 1
  store i8 %311, ptr %.2174, align 1
  %312 = getelementptr inbounds nuw i8, ptr %.2174, i32 1
  %313 = add i64 %.3181, 1
  br label %314

314:                                              ; preds = %309, %305
  %.4191 = phi i32 [ 0, %309 ], [ %.3190, %305 ]
  %.4182 = phi i64 [ %313, %309 ], [ %.3181, %305 ]
  %.3175 = phi ptr [ %312, %309 ], [ %.2174, %305 ]
  %.9 = phi i64 [ %.4171, %309 ], [ %.8, %305 ]
  %315 = icmp ugt i64 %.2185, 1
  br i1 %315, label %316, label %318

316:                                              ; preds = %314
  %317 = lshr i64 %.2185, 1
  br label %320

318:                                              ; preds = %314
  %319 = getelementptr inbounds nuw i8, ptr %.0176, i32 1
  br label %320

320:                                              ; preds = %318, %316
  %.3186 = phi i64 [ %317, %316 ], [ 128, %318 ]
  %.1177 = phi ptr [ %.0176, %316 ], [ %319, %318 ]
  br label %287, !llvm.loop !23

321:                                              ; preds = %287
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

10:                                               ; preds = %43, %4
  %.0 = phi i32 [ %3, %4 ], [ %.027, %43 ]
  %11 = sdiv i32 %2, 2
  %12 = icmp sle i32 %.0, %11
  br i1 %12, label %13, label %51

13:                                               ; preds = %10
  %14 = add nsw i32 %.0, %.0
  %15 = icmp slt i32 %14, %2
  br i1 %15, label %16, label %31

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
  br i1 %28, label %29, label %31

29:                                               ; preds = %16
  %30 = add nsw i32 %14, 1
  br label %31

31:                                               ; preds = %29, %16, %13
  %.027 = phi i32 [ %30, %29 ], [ %14, %16 ], [ %14, %13 ]
  %32 = sext i32 %9 to i64
  %33 = getelementptr inbounds i64, ptr %0, i64 %32
  %34 = load i64, ptr %33, align 8
  %35 = sub nsw i32 %.027, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, ptr %1, i64 %36
  %38 = load i64, ptr %37, align 8
  %39 = getelementptr inbounds nuw i64, ptr %0, i64 %38
  %40 = load i64, ptr %39, align 8
  %41 = icmp ult i64 %34, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %51

43:                                               ; preds = %31
  %44 = sub nsw i32 %.027, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, ptr %1, i64 %45
  %47 = load i64, ptr %46, align 8
  %48 = sub nsw i32 %.0, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, ptr %1, i64 %49
  store i64 %47, ptr %50, align 8
  br label %10, !llvm.loop !24

51:                                               ; preds = %42, %10
  %52 = sext i32 %9 to i64
  %53 = sub nsw i32 %.0, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, ptr %1, i64 %54
  store i64 %52, ptr %55, align 8
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
