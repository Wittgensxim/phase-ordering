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

3:                                                ; preds = %9, %1
  %indvars.iv = phi i64 [ %indvars.iv.next, %9 ], [ 0, %1 ]
  %.08 = phi ptr [ %2, %1 ], [ %8, %9 ]
  %exitcond = icmp ne i64 %indvars.iv, %0
  br i1 %exitcond, label %4, label %10

4:                                                ; preds = %3
  %5 = call i64 @random4()
  %6 = getelementptr inbounds nuw i8, ptr @.str, i64 %5
  %7 = load i8, ptr %6, align 1
  store i8 %7, ptr %.08, align 1
  %8 = getelementptr inbounds nuw i8, ptr %.08, i32 1
  br label %9

9:                                                ; preds = %4
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  br label %3, !llvm.loop !7

10:                                               ; preds = %3
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

19:                                               ; preds = %27, %2
  %.0172 = phi ptr [ %0, %2 ], [ %26, %27 ]
  %.0163 = phi i64 [ 0, %2 ], [ %28, %27 ]
  %exitcond = icmp ne i64 %.0163, %1
  br i1 %exitcond, label %20, label %29

20:                                               ; preds = %19
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
  br label %19, !llvm.loop !9

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %39, %29
  %.0178 = phi i64 [ 0, %29 ], [ %.1179, %39 ]
  %.1164 = phi i64 [ 0, %29 ], [ %40, %39 ]
  %exitcond198 = icmp ne i64 %.1164, 256
  br i1 %exitcond198, label %31, label %41

31:                                               ; preds = %30
  %32 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.1164
  %33 = load i64, ptr %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.0178
  store i64 %.1164, ptr %36, align 8
  %37 = add i64 %.0178, 1
  br label %38

38:                                               ; preds = %35, %31
  %.1179 = phi i64 [ %37, %35 ], [ %.0178, %31 ]
  br label %39

39:                                               ; preds = %38
  %40 = add nuw nsw i64 %.1164, 1
  br label %30, !llvm.loop !10

41:                                               ; preds = %30
  %.0178.lcssa = phi i64 [ %.0178, %30 ]
  br label %42

42:                                               ; preds = %49, %41
  %.2165 = phi i64 [ %.0178.lcssa, %41 ], [ %50, %49 ]
  %43 = icmp ugt i64 %.2165, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %42
  %45 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %46 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %47 = trunc i64 %.0178.lcssa to i32
  %48 = trunc i64 %.2165 to i32
  call void @heap_adjust(ptr noundef %45, ptr noundef %46, i32 noundef %47, i32 noundef %48)
  br label %49

49:                                               ; preds = %44
  %50 = add i64 %.2165, -1
  br label %42, !llvm.loop !11

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %54, %51
  %.2180 = phi i64 [ %.0178.lcssa, %51 ], [ %55, %54 ]
  %53 = icmp ugt i64 %.2180, 1
  br i1 %53, label %54, label %86

54:                                               ; preds = %52
  %55 = add i64 %.2180, -1
  %56 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %57 = load i64, ptr %56, align 16
  %58 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %55
  %59 = load i64, ptr %58, align 8
  %60 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %59, ptr %60, align 16
  %61 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %62 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %63 = trunc i64 %55 to i32
  call void @heap_adjust(ptr noundef %61, ptr noundef %62, i32 noundef %63, i32 noundef 1)
  %64 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %65 = load i64, ptr %64, align 16
  %66 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %65
  %67 = load i64, ptr %66, align 8
  %68 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %57
  %69 = load i64, ptr %68, align 8
  %70 = add i64 %67, %69
  %71 = add i64 256, %55
  %72 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %71
  store i64 %70, ptr %72, align 8
  %73 = add i64 256, %55
  %74 = trunc i64 %73 to i32
  %75 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %57
  store i32 %74, ptr %75, align 4
  %76 = sub i64 -256, %55
  %77 = trunc i64 %76 to i32
  %78 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %79 = load i64, ptr %78, align 16
  %80 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %79
  store i32 %77, ptr %80, align 4
  %81 = add i64 256, %55
  %82 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %81, ptr %82, align 16
  %83 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %84 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %85 = trunc i64 %55 to i32
  call void @heap_adjust(ptr noundef %83, ptr noundef %84, i32 noundef %85, i32 noundef 1)
  br label %52, !llvm.loop !12

86:                                               ; preds = %52
  %.2180.lcssa = phi i64 [ %.2180, %52 ]
  %87 = add i64 256, %.2180.lcssa
  %88 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %87
  store i32 0, ptr %88, align 4
  br label %89

89:                                               ; preds = %125, %86
  %.0162 = phi i64 [ 0, %86 ], [ %126, %125 ]
  %.0157 = phi i64 [ 0, %86 ], [ %.1158, %125 ]
  %.0154 = phi i64 [ 0, %86 ], [ %.1155, %125 ]
  %exitcond199 = icmp ne i64 %.0162, 256
  br i1 %exitcond199, label %90, label %127

90:                                               ; preds = %89
  %91 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.0162
  %92 = load i64, ptr %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.0162
  store i32 0, ptr %95, align 4
  %96 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.0162
  store i8 0, ptr %96, align 1
  br label %124

97:                                               ; preds = %90
  %98 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.0162
  %99 = load i32, ptr %98, align 4
  br label %100

100:                                              ; preds = %107, %97
  %.0167 = phi i64 [ 1, %97 ], [ %111, %107 ]
  %.3166 = phi i64 [ 0, %97 ], [ %112, %107 ]
  %.0160 = phi i64 [ 0, %97 ], [ %.1161, %107 ]
  %.0152 = phi i32 [ %99, %97 ], [ %110, %107 ]
  %101 = icmp ne i32 %.0152, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %100
  %103 = icmp slt i32 %.0152, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %102
  %105 = add i64 %.0160, %.0167
  %106 = sub nsw i32 0, %.0152
  br label %107

107:                                              ; preds = %104, %102
  %.1161 = phi i64 [ %105, %104 ], [ %.0160, %102 ]
  %.1153 = phi i32 [ %106, %104 ], [ %.0152, %102 ]
  %108 = sext i32 %.1153 to i64
  %109 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %108
  %110 = load i32, ptr %109, align 4
  %111 = shl i64 %.0167, 1
  %112 = add i64 %.3166, 1
  br label %100, !llvm.loop !13

113:                                              ; preds = %100
  %.3166.lcssa = phi i64 [ %.3166, %100 ]
  %.0160.lcssa = phi i64 [ %.0160, %100 ]
  %114 = trunc i64 %.0160.lcssa to i32
  %115 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.0162
  store i32 %114, ptr %115, align 4
  %116 = trunc i64 %.3166.lcssa to i8
  %117 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.0162
  store i8 %116, ptr %117, align 1
  %118 = icmp ugt i64 %.0160.lcssa, %.0157
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %120

120:                                              ; preds = %119, %113
  %.2159 = phi i64 [ %.0160.lcssa, %119 ], [ %.0157, %113 ]
  %121 = icmp ugt i64 %.3166.lcssa, %.0154
  br i1 %121, label %122, label %123

122:                                              ; preds = %120
  br label %123

123:                                              ; preds = %122, %120
  %.2156 = phi i64 [ %.3166.lcssa, %122 ], [ %.0154, %120 ]
  br label %124

124:                                              ; preds = %123, %94
  %.1158 = phi i64 [ %.2159, %123 ], [ %.0157, %94 ]
  %.1155 = phi i64 [ %.2156, %123 ], [ %.0154, %94 ]
  br label %125

125:                                              ; preds = %124
  %126 = add nuw nsw i64 %.0162, 1
  br label %89, !llvm.loop !14

127:                                              ; preds = %89
  %.0157.lcssa = phi i64 [ %.0157, %89 ]
  %.0154.lcssa = phi i64 [ %.0154, %89 ]
  %128 = icmp ugt i64 %.0154.lcssa, 32
  br i1 %128, label %129, label %132

129:                                              ; preds = %127
  %130 = call ptr @__acrt_iob_func(i32 noundef 2)
  %131 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

132:                                              ; preds = %127
  %133 = icmp eq i64 %.0157.lcssa, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %132
  %135 = call ptr @__acrt_iob_func(i32 noundef 2)
  %136 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %135, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

137:                                              ; preds = %132
  br label %138

138:                                              ; preds = %188, %137
  %.1173 = phi ptr [ %0, %137 ], [ %187, %188 ]
  %.1168 = phi i64 [ 0, %137 ], [ %189, %188 ]
  %.0149 = phi i64 [ 0, %137 ], [ %.1150.lcssa, %188 ]
  %.0146 = phi i8 [ 0, %137 ], [ %.1147.lcssa, %188 ]
  %.0145 = phi i32 [ -1, %137 ], [ %.1.lcssa, %188 ]
  %exitcond200 = icmp ne i64 %.1168, %1
  br i1 %exitcond200, label %139, label %190

139:                                              ; preds = %138
  %140 = load i8, ptr %.1173, align 1
  %141 = zext i8 %140 to i64
  %142 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %141
  %143 = load i8, ptr %142, align 1
  %144 = zext i8 %143 to i32
  %145 = sub nsw i32 %144, 1
  %146 = shl i32 1, %145
  %147 = sext i32 %146 to i64
  br label %148

148:                                              ; preds = %184, %139
  %.0183 = phi i64 [ %147, %139 ], [ %183, %184 ]
  %.4 = phi i64 [ 0, %139 ], [ %185, %184 ]
  %.1150 = phi i64 [ %.0149, %139 ], [ %.2151, %184 ]
  %.1147 = phi i8 [ %.0146, %139 ], [ %.3, %184 ]
  %.1 = phi i32 [ %.0145, %139 ], [ %.2, %184 ]
  %149 = load i8, ptr %.1173, align 1
  %150 = zext i8 %149 to i64
  %151 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %150
  %152 = load i8, ptr %151, align 1
  %153 = zext i8 %152 to i64
  %154 = icmp samesign ult i64 %.4, %153
  br i1 %154, label %155, label %186

155:                                              ; preds = %148
  %156 = icmp eq i32 %.1, 7
  br i1 %156, label %157, label %165

157:                                              ; preds = %155
  %158 = getelementptr inbounds nuw i8, ptr %11, i64 %.1150
  store i8 %.1147, ptr %158, align 1
  %159 = add i64 %.1150, 1
  %160 = icmp eq i64 %159, %1
  br i1 %160, label %161, label %164

161:                                              ; preds = %157
  %162 = call ptr @__acrt_iob_func(i32 noundef 2)
  %163 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %162, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

164:                                              ; preds = %157
  br label %170

165:                                              ; preds = %155
  %166 = add nsw i32 %.1, 1
  %167 = sext i8 %.1147 to i32
  %168 = shl i32 %167, 1
  %169 = trunc i32 %168 to i8
  br label %170

170:                                              ; preds = %165, %164
  %.2151 = phi i64 [ %159, %164 ], [ %.1150, %165 ]
  %.2148 = phi i8 [ 0, %164 ], [ %169, %165 ]
  %.2 = phi i32 [ 0, %164 ], [ %166, %165 ]
  %171 = load i8, ptr %.1173, align 1
  %172 = zext i8 %171 to i64
  %173 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %172
  %174 = load i32, ptr %173, align 4
  %175 = zext i32 %174 to i64
  %176 = and i64 %175, %.0183
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %170
  %179 = sext i8 %.2148 to i32
  %180 = or i32 %179, 1
  %181 = trunc i32 %180 to i8
  br label %182

182:                                              ; preds = %178, %170
  %.3 = phi i8 [ %181, %178 ], [ %.2148, %170 ]
  %183 = lshr i64 %.0183, 1
  br label %184

184:                                              ; preds = %182
  %185 = add nuw nsw i64 %.4, 1
  br label %148, !llvm.loop !15

186:                                              ; preds = %148
  %.1150.lcssa = phi i64 [ %.1150, %148 ]
  %.1147.lcssa = phi i8 [ %.1147, %148 ]
  %.1.lcssa = phi i32 [ %.1, %148 ]
  %187 = getelementptr inbounds nuw i8, ptr %.1173, i32 1
  br label %188

188:                                              ; preds = %186
  %189 = add i64 %.1168, 1
  br label %138, !llvm.loop !16

190:                                              ; preds = %138
  %.0149.lcssa = phi i64 [ %.0149, %138 ]
  %.0146.lcssa = phi i8 [ %.0146, %138 ]
  %.0145.lcssa = phi i32 [ %.0145, %138 ]
  %191 = sub nsw i32 7, %.0145.lcssa
  %192 = sext i8 %.0146.lcssa to i32
  %193 = shl i32 %192, %191
  %194 = trunc i32 %193 to i8
  %195 = getelementptr inbounds nuw i8, ptr %11, i64 %.0149.lcssa
  store i8 %194, ptr %195, align 1
  %196 = getelementptr inbounds [256 x i32], ptr %8, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %196, i8 0, i64 1024, i1 false)
  %197 = getelementptr inbounds [256 x i8], ptr %9, i64 0, i64 0
  br label %198

198:                                              ; preds = %238, %190
  %.2169 = phi i64 [ 0, %190 ], [ %239, %238 ]
  %.0 = phi ptr [ %197, %190 ], [ %201, %238 ]
  %exitcond201 = icmp ne i64 %.2169, 256
  br i1 %exitcond201, label %199, label %240

199:                                              ; preds = %198
  %200 = trunc i64 %.2169 to i8
  store i8 %200, ptr %.0, align 1
  %201 = getelementptr inbounds nuw i8, ptr %.0, i32 1
  %202 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.2169
  %203 = load i32, ptr %202, align 4
  %204 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2169
  %205 = load i8, ptr %204, align 1
  %206 = zext i8 %205 to i32
  %207 = or i32 %203, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %237

209:                                              ; preds = %199
  %210 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2169
  %211 = load i8, ptr %210, align 1
  %212 = zext i8 %211 to i32
  %213 = sub nsw i32 %212, 1
  %214 = shl i32 1, %213
  %215 = sext i32 %214 to i64
  br label %216

216:                                              ; preds = %233, %209
  %.0187 = phi i32 [ 0, %209 ], [ %.1188, %233 ]
  %.1184 = phi i64 [ %215, %209 ], [ %232, %233 ]
  %.5 = phi i64 [ 0, %209 ], [ %234, %233 ]
  %217 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2169
  %218 = load i8, ptr %217, align 1
  %219 = zext i8 %218 to i64
  %220 = icmp samesign ult i64 %.5, %219
  br i1 %220, label %221, label %235

221:                                              ; preds = %216
  %222 = mul i32 %.0187, 2
  %223 = add i32 %222, 1
  %224 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.2169
  %225 = load i32, ptr %224, align 4
  %226 = zext i32 %225 to i64
  %227 = and i64 %226, %.1184
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %221
  %230 = add i32 %223, 1
  br label %231

231:                                              ; preds = %229, %221
  %.1188 = phi i32 [ %230, %229 ], [ %223, %221 ]
  %232 = lshr i64 %.1184, 1
  br label %233

233:                                              ; preds = %231
  %234 = add nuw nsw i64 %.5, 1
  br label %216, !llvm.loop !17

235:                                              ; preds = %216
  %.0187.lcssa = phi i32 [ %.0187, %216 ]
  %236 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.2169
  store i32 %.0187.lcssa, ptr %236, align 4
  br label %237

237:                                              ; preds = %235, %199
  br label %238

238:                                              ; preds = %237
  %239 = add nuw nsw i64 %.2169, 1
  br label %198, !llvm.loop !18

240:                                              ; preds = %198
  br label %241

241:                                              ; preds = %269, %240
  %.6 = phi i64 [ 1, %240 ], [ %270, %269 ]
  %exitcond202 = icmp ne i64 %.6, 256
  br i1 %exitcond202, label %242, label %271

242:                                              ; preds = %241
  %243 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %244 = load i32, ptr %243, align 4
  %245 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %246 = load i8, ptr %245, align 1
  br label %247

247:                                              ; preds = %256, %242
  %.3170 = phi i64 [ %.6, %242 ], [ %265, %256 ]
  %248 = icmp ne i64 %.3170, 0
  br i1 %248, label %249, label %254

249:                                              ; preds = %247
  %250 = sub nuw i64 %.3170, 1
  %251 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %250
  %252 = load i32, ptr %251, align 4
  %253 = icmp ugt i32 %252, %244
  br label %254

254:                                              ; preds = %249, %247
  %255 = phi i1 [ false, %247 ], [ %253, %249 ]
  br i1 %255, label %256, label %266

256:                                              ; preds = %254
  %257 = sub i64 %.3170, 1
  %258 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %257
  %259 = load i32, ptr %258, align 4
  %260 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.3170
  store i32 %259, ptr %260, align 4
  %261 = sub i64 %.3170, 1
  %262 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %261
  %263 = load i8, ptr %262, align 1
  %264 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.3170
  store i8 %263, ptr %264, align 1
  %265 = add i64 %.3170, -1
  br label %247, !llvm.loop !19

266:                                              ; preds = %254
  %.3170.lcssa = phi i64 [ %.3170, %254 ]
  %267 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.3170.lcssa
  store i32 %244, ptr %267, align 4
  %268 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.3170.lcssa
  store i8 %246, ptr %268, align 1
  br label %269

269:                                              ; preds = %266
  %270 = add nuw nsw i64 %.6, 1
  br label %241, !llvm.loop !20

271:                                              ; preds = %241
  br label %272

272:                                              ; preds = %277, %271
  %.4171 = phi i64 [ 0, %271 ], [ %278, %277 ]
  %273 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.4171
  %274 = load i32, ptr %273, align 4
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %272
  br label %277

277:                                              ; preds = %276
  %278 = add i64 %.4171, 1
  br label %272, !llvm.loop !21

279:                                              ; preds = %272
  %.4171.lcssa = phi i64 [ %.4171, %272 ]
  br label %280

280:                                              ; preds = %313, %279
  %.2189 = phi i32 [ 0, %279 ], [ %.4191, %313 ]
  %.2185 = phi i64 [ 128, %279 ], [ %.3186, %313 ]
  %.3181 = phi i64 [ 0, %279 ], [ %.4182, %313 ]
  %.0176 = phi ptr [ %11, %279 ], [ %.1177, %313 ]
  %.2174 = phi ptr [ %0, %279 ], [ %.3175, %313 ]
  %.7 = phi i64 [ %.4171.lcssa, %279 ], [ %.9, %313 ]
  %281 = icmp ult i64 %.3181, %1
  br i1 %281, label %282, label %314

282:                                              ; preds = %280
  %283 = mul i32 %.2189, 2
  %284 = add i32 %283, 1
  %285 = load i8, ptr %.0176, align 1
  %286 = zext i8 %285 to i64
  %287 = and i64 %286, %.2185
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %291

289:                                              ; preds = %282
  %290 = add i32 %284, 1
  br label %291

291:                                              ; preds = %289, %282
  %.3190 = phi i32 [ %290, %289 ], [ %284, %282 ]
  br label %292

292:                                              ; preds = %296, %291
  %.8 = phi i64 [ %.7, %291 ], [ %297, %296 ]
  %293 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %294 = load i32, ptr %293, align 4
  %295 = icmp ult i32 %294, %.3190
  br i1 %295, label %296, label %298

296:                                              ; preds = %292
  %297 = add i64 %.8, 1
  br label %292, !llvm.loop !22

298:                                              ; preds = %292
  %.8.lcssa = phi i64 [ %.8, %292 ]
  %299 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8.lcssa
  %300 = load i32, ptr %299, align 4
  %301 = icmp eq i32 %.3190, %300
  br i1 %301, label %302, label %307

302:                                              ; preds = %298
  %303 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %304 = load i8, ptr %303, align 1
  store i8 %304, ptr %.2174, align 1
  %305 = getelementptr inbounds nuw i8, ptr %.2174, i32 1
  %306 = add i64 %.3181, 1
  br label %307

307:                                              ; preds = %302, %298
  %.4191 = phi i32 [ 0, %302 ], [ %.3190, %298 ]
  %.4182 = phi i64 [ %306, %302 ], [ %.3181, %298 ]
  %.3175 = phi ptr [ %305, %302 ], [ %.2174, %298 ]
  %.9 = phi i64 [ %.4171.lcssa, %302 ], [ %.8.lcssa, %298 ]
  %308 = icmp ugt i64 %.2185, 1
  br i1 %308, label %309, label %311

309:                                              ; preds = %307
  %310 = lshr i64 %.2185, 1
  br label %313

311:                                              ; preds = %307
  %312 = getelementptr inbounds nuw i8, ptr %.0176, i32 1
  br label %313

313:                                              ; preds = %311, %309
  %.3186 = phi i64 [ %310, %309 ], [ 128, %311 ]
  %.1177 = phi ptr [ %.0176, %309 ], [ %312, %311 ]
  br label %280, !llvm.loop !23

314:                                              ; preds = %280
  %315 = add i64 %.0149.lcssa, 1
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
  br i1 %12, label %13, label %.loopexit

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
  %.0.lcssa28 = phi i32 [ %.0, %31 ]
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

.loopexit:                                        ; preds = %10
  %.0.lcssa = phi i32 [ %.0, %10 ]
  br label %51

51:                                               ; preds = %.loopexit, %42
  %.029 = phi i32 [ %.0.lcssa, %.loopexit ], [ %.0.lcssa28, %42 ]
  %52 = sext i32 %9 to i64
  %53 = sub nsw i32 %.029, 1
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
  br i1 %3, label %4, label %16

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %13, %4
  %.0 = phi i32 [ 1, %4 ], [ %14, %13 ]
  %exitcond = icmp ne i32 %.0, %0
  br i1 %exitcond, label %6, label %.loopexit

6:                                                ; preds = %5
  %7 = getelementptr inbounds ptr, ptr %1, i64 1
  %8 = load ptr, ptr %7, align 8
  %9 = call i32 @strcmp(ptr noundef %8, ptr noundef @.str.4) #7
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  br label %15

12:                                               ; preds = %6
  br label %13

13:                                               ; preds = %12
  %14 = add nuw i32 %.0, 1
  br label %5, !llvm.loop !25

.loopexit:                                        ; preds = %5
  br label %15

15:                                               ; preds = %.loopexit, %11
  %.112 = phi i8 [ 1, %11 ], [ 0, %.loopexit ]
  br label %16

16:                                               ; preds = %15, %2
  %.011 = phi i8 [ %.112, %15 ], [ 0, %2 ]
  %17 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %18

18:                                               ; preds = %20, %16
  %.1 = phi i32 [ 0, %16 ], [ %21, %20 ]
  %exitcond13 = icmp ne i32 %.1, 30
  br i1 %exitcond13, label %19, label %22

19:                                               ; preds = %18
  call void @compdecomp(ptr noundef %17, i64 noundef 10000000)
  br label %20

20:                                               ; preds = %19
  %21 = add nuw nsw i32 %.1, 1
  br label %18, !llvm.loop !26

22:                                               ; preds = %18
  call void @free(ptr noundef %17)
  %23 = icmp ne i8 %.011, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = call ptr @__acrt_iob_func(i32 noundef 1)
  %26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.5, double noundef 0.000000e+00) #7
  br label %30

27:                                               ; preds = %22
  %28 = call ptr @__acrt_iob_func(i32 noundef 1)
  %29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.6, double noundef 0.000000e+00) #7
  br label %30

30:                                               ; preds = %27, %24
  %31 = call ptr @__acrt_iob_func(i32 noundef 1)
  %32 = call i32 @fflush(ptr noundef %31)
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
