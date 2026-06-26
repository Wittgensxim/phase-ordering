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
  %2 = call ptr @malloc(i64 noundef %0) #7
  br label %3

3:                                                ; preds = %11, %1
  %.0 = phi ptr [ %2, %1 ], [ %10, %11 ]
  %storemerge = phi i32 [ 0, %1 ], [ %12, %11 ]
  %4 = sext i32 %storemerge to i64
  %5 = icmp ugt i64 %0, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = call i64 @random4()
  %8 = getelementptr inbounds nuw i8, ptr @.str, i64 %7
  %9 = load i8, ptr %8, align 1
  store i8 %9, ptr %.0, align 1
  %10 = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %11

11:                                               ; preds = %6
  %12 = add nsw i32 %storemerge, 1
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
  %11 = call ptr @malloc(i64 noundef %10) #7
  %12 = add i64 %1, 1
  call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %12, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %3, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %4, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %5, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %6, i8 0, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %7, i8 0, i64 256, i1 false)
  br label %13

13:                                               ; preds = %22, %2
  %.046 = phi ptr [ %0, %2 ], [ %21, %22 ]
  %storemerge = phi i64 [ 0, %2 ], [ %23, %22 ]
  %14 = icmp ult i64 %storemerge, %1
  br i1 %14, label %15, label %24

15:                                               ; preds = %13
  %16 = load i8, ptr %.046, align 1
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %17
  %19 = load i64, ptr %18, align 8
  %20 = add i64 %19, 1
  store i64 %20, ptr %18, align 8
  %21 = getelementptr inbounds nuw i8, ptr %.046, i64 1
  br label %22

22:                                               ; preds = %15
  %23 = add i64 %storemerge, 1
  br label %13, !llvm.loop !9

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %34, %24
  %.025 = phi i64 [ 0, %24 ], [ %.126, %34 ]
  %storemerge1 = phi i64 [ 0, %24 ], [ %35, %34 ]
  %26 = icmp ult i64 %storemerge1, 256
  br i1 %26, label %27, label %36

27:                                               ; preds = %25
  %28 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge1
  %29 = load i64, ptr %28, align 8
  %.not19 = icmp eq i64 %29, 0
  br i1 %.not19, label %33, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.025
  store i64 %storemerge1, ptr %31, align 8
  %32 = add i64 %.025, 1
  br label %33

33:                                               ; preds = %30, %27
  %.126 = phi i64 [ %.025, %27 ], [ %32, %30 ]
  br label %34

34:                                               ; preds = %33
  %35 = add i64 %storemerge1, 1
  br label %25, !llvm.loop !10

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %41, %36
  %storemerge2 = phi i64 [ %.025, %36 ], [ %42, %41 ]
  %.not = icmp eq i64 %storemerge2, 0
  br i1 %.not, label %43, label %38

38:                                               ; preds = %37
  %39 = trunc i64 %.025 to i32
  %40 = trunc i64 %storemerge2 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %39, i32 noundef %40)
  br label %41

41:                                               ; preds = %38
  %42 = add i64 %storemerge2, -1
  br label %37, !llvm.loop !11

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %46, %43
  %.227 = phi i64 [ %.025, %43 ], [ %47, %46 ]
  %45 = icmp ugt i64 %.227, 1
  br i1 %45, label %46, label %69

46:                                               ; preds = %44
  %47 = add i64 %.227, -1
  %48 = load i64, ptr %4, align 16
  %49 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %47
  %50 = load i64, ptr %49, align 8
  store i64 %50, ptr %4, align 16
  %51 = trunc i64 %47 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %51, i32 noundef 1)
  %52 = load i64, ptr %4, align 16
  %53 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %52
  %54 = load i64, ptr %53, align 8
  %55 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %48
  %56 = load i64, ptr %55, align 8
  %57 = add i64 %54, %56
  %58 = getelementptr [8 x i8], ptr %3, i64 %47
  %59 = getelementptr i8, ptr %58, i64 2048
  store i64 %57, ptr %59, align 8
  %60 = trunc i64 %47 to i32
  %61 = add i32 %60, 256
  %62 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %48
  store i32 %61, ptr %62, align 4
  %63 = trunc i64 %47 to i32
  %64 = sub i32 -256, %63
  %65 = load i64, ptr %4, align 16
  %66 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %65
  store i32 %64, ptr %66, align 4
  %67 = add i64 %47, 256
  store i64 %67, ptr %4, align 16
  %68 = trunc i64 %47 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %68, i32 noundef 1)
  br label %44, !llvm.loop !12

69:                                               ; preds = %44
  %70 = getelementptr [4 x i8], ptr %5, i64 %.227
  %71 = getelementptr i8, ptr %70, i64 1024
  store i32 0, ptr %71, align 4
  br label %72

72:                                               ; preds = %107, %69
  %.055 = phi i64 [ 0, %69 ], [ %.156, %107 ]
  %.052 = phi i64 [ 0, %69 ], [ %.153, %107 ]
  %storemerge3 = phi i64 [ 0, %69 ], [ %108, %107 ]
  %73 = icmp ult i64 %storemerge3, 256
  br i1 %73, label %74, label %109

74:                                               ; preds = %72
  %75 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge3
  %76 = load i64, ptr %75, align 8
  %.not17 = icmp eq i64 %76, 0
  br i1 %.not17, label %77, label %80

77:                                               ; preds = %74
  %78 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %storemerge3
  store i32 0, ptr %78, align 4
  %79 = getelementptr inbounds nuw i8, ptr %7, i64 %storemerge3
  store i8 0, ptr %79, align 1
  br label %106

80:                                               ; preds = %74
  %81 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %storemerge3
  %82 = load i32, ptr %81, align 4
  br label %83

83:                                               ; preds = %89, %80
  %.058 = phi i64 [ 0, %80 ], [ %.159, %89 ]
  %.050 = phi i32 [ %82, %80 ], [ %92, %89 ]
  %.024 = phi i64 [ 1, %80 ], [ %93, %89 ]
  %.021 = phi i64 [ 0, %80 ], [ %94, %89 ]
  %.not18 = icmp eq i32 %.050, 0
  br i1 %.not18, label %95, label %84

84:                                               ; preds = %83
  %85 = icmp slt i32 %.050, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %84
  %87 = add i64 %.058, %.024
  %88 = sub nsw i32 0, %.050
  br label %89

89:                                               ; preds = %86, %84
  %.159 = phi i64 [ %87, %86 ], [ %.058, %84 ]
  %.151 = phi i32 [ %88, %86 ], [ %.050, %84 ]
  %90 = sext i32 %.151 to i64
  %91 = getelementptr inbounds [4 x i8], ptr %5, i64 %90
  %92 = load i32, ptr %91, align 4
  %93 = shl i64 %.024, 1
  %94 = add i64 %.021, 1
  br label %83, !llvm.loop !13

95:                                               ; preds = %83
  %96 = trunc i64 %.058 to i32
  %97 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %storemerge3
  store i32 %96, ptr %97, align 4
  %98 = trunc i64 %.021 to i8
  %99 = getelementptr inbounds nuw i8, ptr %7, i64 %storemerge3
  store i8 %98, ptr %99, align 1
  %100 = icmp ugt i64 %.058, %.055
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101, %95
  %.257 = phi i64 [ %.058, %101 ], [ %.055, %95 ]
  %103 = icmp ugt i64 %.021, %.052
  br i1 %103, label %104, label %105

104:                                              ; preds = %102
  br label %105

105:                                              ; preds = %104, %102
  %.254 = phi i64 [ %.021, %104 ], [ %.052, %102 ]
  br label %106

106:                                              ; preds = %105, %77
  %.156 = phi i64 [ %.055, %77 ], [ %.257, %105 ]
  %.153 = phi i64 [ %.052, %77 ], [ %.254, %105 ]
  br label %107

107:                                              ; preds = %106
  %108 = add i64 %storemerge3, 1
  br label %72, !llvm.loop !14

109:                                              ; preds = %72
  %110 = icmp ugt i64 %.052, 32
  br i1 %110, label %111, label %114

111:                                              ; preds = %109
  %112 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %113 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %112)
  call void @exit(i32 noundef 1) #9
  unreachable

114:                                              ; preds = %109
  %115 = icmp eq i64 %.055, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %114
  %117 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %118 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %117)
  call void @exit(i32 noundef 1) #9
  unreachable

119:                                              ; preds = %114
  br label %120

120:                                              ; preds = %166, %119
  %.147 = phi ptr [ %0, %119 ], [ %165, %166 ]
  %.041 = phi i64 [ 0, %119 ], [ %.142, %166 ]
  %.038 = phi i8 [ 0, %119 ], [ %.139, %166 ]
  %.020 = phi i32 [ -1, %119 ], [ %.1, %166 ]
  %storemerge4 = phi i64 [ 0, %119 ], [ %167, %166 ]
  %121 = icmp ult i64 %storemerge4, %1
  br i1 %121, label %122, label %168

122:                                              ; preds = %120
  %123 = load i8, ptr %.147, align 1
  %124 = zext i8 %123 to i64
  %125 = getelementptr inbounds nuw i8, ptr %7, i64 %124
  %126 = load i8, ptr %125, align 1
  %127 = zext i8 %126 to i32
  %128 = add nsw i32 %127, -1
  %129 = shl nuw i32 1, %128
  %130 = sext i32 %129 to i64
  br label %131

131:                                              ; preds = %162, %122
  %.142 = phi i64 [ %.041, %122 ], [ %.243, %162 ]
  %.139 = phi i8 [ %.038, %122 ], [ %.240, %162 ]
  %.029 = phi i64 [ %130, %122 ], [ %161, %162 ]
  %.1 = phi i32 [ %.020, %122 ], [ %.2, %162 ]
  %storemerge14 = phi i64 [ 0, %122 ], [ %163, %162 ]
  %132 = load i8, ptr %.147, align 1
  %133 = zext i8 %132 to i64
  %134 = getelementptr inbounds nuw i8, ptr %7, i64 %133
  %135 = load i8, ptr %134, align 1
  %136 = zext i8 %135 to i64
  %137 = icmp ult i64 %storemerge14, %136
  br i1 %137, label %138, label %164

138:                                              ; preds = %131
  %139 = icmp eq i32 %.1, 7
  br i1 %139, label %140, label %148

140:                                              ; preds = %138
  %141 = getelementptr inbounds nuw i8, ptr %11, i64 %.142
  store i8 %.139, ptr %141, align 1
  %142 = add i64 %.142, 1
  %143 = icmp eq i64 %142, %1
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %146 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %145)
  call void @exit(i32 noundef 1) #9
  unreachable

147:                                              ; preds = %140
  br label %151

148:                                              ; preds = %138
  %149 = add nsw i32 %.1, 1
  %150 = shl i8 %.139, 1
  br label %151

151:                                              ; preds = %148, %147
  %.243 = phi i64 [ %142, %147 ], [ %.142, %148 ]
  %.2 = phi i32 [ 0, %147 ], [ %149, %148 ]
  %storemerge15 = phi i8 [ %150, %148 ], [ 0, %147 ]
  %152 = load i8, ptr %.147, align 1
  %153 = zext i8 %152 to i64
  %154 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %153
  %155 = load i32, ptr %154, align 4
  %156 = zext i32 %155 to i64
  %157 = and i64 %.029, %156
  %.not16 = icmp eq i64 %157, 0
  br i1 %.not16, label %160, label %158

158:                                              ; preds = %151
  %159 = or i8 %storemerge15, 1
  br label %160

160:                                              ; preds = %158, %151
  %.240 = phi i8 [ %storemerge15, %151 ], [ %159, %158 ]
  %161 = lshr i64 %.029, 1
  br label %162

162:                                              ; preds = %160
  %163 = add i64 %storemerge14, 1
  br label %131, !llvm.loop !15

164:                                              ; preds = %131
  %165 = getelementptr inbounds nuw i8, ptr %.147, i64 1
  br label %166

166:                                              ; preds = %164
  %167 = add i64 %storemerge4, 1
  br label %120, !llvm.loop !16

168:                                              ; preds = %120
  %169 = sub nsw i32 7, %.020
  %170 = zext i8 %.038 to i32
  %171 = shl i32 %170, %169
  %172 = trunc i32 %171 to i8
  %173 = getelementptr inbounds nuw i8, ptr %11, i64 %.041
  store i8 %172, ptr %173, align 1
  %174 = add i64 %.041, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %175

175:                                              ; preds = %214, %168
  %.0 = phi ptr [ %9, %168 ], [ %179, %214 ]
  %storemerge5 = phi i64 [ 0, %168 ], [ %215, %214 ]
  %176 = icmp ult i64 %storemerge5, 256
  br i1 %176, label %177, label %216

177:                                              ; preds = %175
  %178 = trunc i64 %storemerge5 to i8
  store i8 %178, ptr %.0, align 1
  %179 = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %180 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %storemerge5
  %181 = load i32, ptr %180, align 4
  %182 = getelementptr inbounds nuw i8, ptr %7, i64 %storemerge5
  %183 = load i8, ptr %182, align 1
  %184 = zext i8 %183 to i32
  %185 = or i32 %181, %184
  %.not11 = icmp eq i32 %185, 0
  br i1 %.not11, label %213, label %186

186:                                              ; preds = %177
  %187 = getelementptr inbounds nuw i8, ptr %7, i64 %storemerge5
  %188 = load i8, ptr %187, align 1
  %189 = zext i8 %188 to i32
  %190 = add nsw i32 %189, -1
  %191 = shl nuw i32 1, %190
  %192 = sext i32 %191 to i64
  br label %193

193:                                              ; preds = %209, %186
  %.033 = phi i32 [ 0, %186 ], [ %.134, %209 ]
  %.130 = phi i64 [ %192, %186 ], [ %208, %209 ]
  %storemerge12 = phi i64 [ 0, %186 ], [ %210, %209 ]
  %194 = getelementptr inbounds nuw i8, ptr %7, i64 %storemerge5
  %195 = load i8, ptr %194, align 1
  %196 = zext i8 %195 to i64
  %197 = icmp ult i64 %storemerge12, %196
  br i1 %197, label %198, label %211

198:                                              ; preds = %193
  %199 = shl i32 %.033, 1
  %200 = or disjoint i32 %199, 1
  %201 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %storemerge5
  %202 = load i32, ptr %201, align 4
  %203 = zext i32 %202 to i64
  %204 = and i64 %.130, %203
  %.not13 = icmp eq i64 %204, 0
  br i1 %.not13, label %207, label %205

205:                                              ; preds = %198
  %206 = add i32 %200, 1
  br label %207

207:                                              ; preds = %205, %198
  %.134 = phi i32 [ %200, %198 ], [ %206, %205 ]
  %208 = lshr i64 %.130, 1
  br label %209

209:                                              ; preds = %207
  %210 = add i64 %storemerge12, 1
  br label %193, !llvm.loop !17

211:                                              ; preds = %193
  %212 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %storemerge5
  store i32 %.033, ptr %212, align 4
  br label %213

213:                                              ; preds = %211, %177
  br label %214

214:                                              ; preds = %213
  %215 = add i64 %storemerge5, 1
  br label %175, !llvm.loop !18

216:                                              ; preds = %175
  br label %217

217:                                              ; preds = %245, %216
  %storemerge6 = phi i64 [ 1, %216 ], [ %246, %245 ]
  %218 = icmp ult i64 %storemerge6, 256
  br i1 %218, label %219, label %247

219:                                              ; preds = %217
  %220 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %storemerge6
  %221 = load i32, ptr %220, align 4
  %222 = getelementptr inbounds nuw i8, ptr %9, i64 %storemerge6
  %223 = load i8, ptr %222, align 1
  br label %224

224:                                              ; preds = %232, %219
  %storemerge9 = phi i64 [ %storemerge6, %219 ], [ %241, %232 ]
  %.not10 = icmp eq i64 %storemerge9, 0
  br i1 %.not10, label %230, label %225

225:                                              ; preds = %224
  %226 = getelementptr [4 x i8], ptr %8, i64 %storemerge9
  %227 = getelementptr i8, ptr %226, i64 -4
  %228 = load i32, ptr %227, align 4
  %229 = icmp ugt i32 %228, %221
  br label %230

230:                                              ; preds = %225, %224
  %231 = phi i1 [ false, %224 ], [ %229, %225 ]
  br i1 %231, label %232, label %242

232:                                              ; preds = %230
  %233 = getelementptr [4 x i8], ptr %8, i64 %storemerge9
  %234 = getelementptr i8, ptr %233, i64 -4
  %235 = load i32, ptr %234, align 4
  %236 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %storemerge9
  store i32 %235, ptr %236, align 4
  %237 = getelementptr i8, ptr %9, i64 %storemerge9
  %238 = getelementptr i8, ptr %237, i64 -1
  %239 = load i8, ptr %238, align 1
  %240 = getelementptr inbounds nuw i8, ptr %9, i64 %storemerge9
  store i8 %239, ptr %240, align 1
  %241 = add i64 %storemerge9, -1
  br label %224, !llvm.loop !19

242:                                              ; preds = %230
  %243 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %storemerge9
  store i32 %221, ptr %243, align 4
  %244 = getelementptr inbounds nuw i8, ptr %9, i64 %storemerge9
  store i8 %223, ptr %244, align 1
  br label %245

245:                                              ; preds = %242
  %246 = add i64 %storemerge6, 1
  br label %217, !llvm.loop !20

247:                                              ; preds = %217
  br label %248

248:                                              ; preds = %253, %247
  %storemerge7 = phi i64 [ 0, %247 ], [ %254, %253 ]
  %249 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %storemerge7
  %250 = load i32, ptr %249, align 4
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %248
  br label %253

253:                                              ; preds = %252
  %254 = add i64 %storemerge7, 1
  br label %248, !llvm.loop !21

255:                                              ; preds = %248
  br label %256

256:                                              ; preds = %288, %255
  %.248 = phi ptr [ %0, %255 ], [ %.349, %288 ]
  %.044 = phi ptr [ %11, %255 ], [ %.145, %288 ]
  %.235 = phi i32 [ 0, %255 ], [ %.437, %288 ]
  %.231 = phi i64 [ 128, %255 ], [ %.332, %288 ]
  %.328 = phi i64 [ 0, %255 ], [ %.4, %288 ]
  %.122 = phi i64 [ %storemerge7, %255 ], [ %.3, %288 ]
  %257 = icmp ult i64 %.328, %1
  br i1 %257, label %258, label %289

258:                                              ; preds = %256
  %259 = shl i32 %.235, 1
  %260 = or disjoint i32 %259, 1
  %261 = load i8, ptr %.044, align 1
  %262 = zext i8 %261 to i64
  %263 = and i64 %.231, %262
  %.not8 = icmp eq i64 %263, 0
  br i1 %.not8, label %266, label %264

264:                                              ; preds = %258
  %265 = add i32 %260, 1
  br label %266

266:                                              ; preds = %264, %258
  %.336 = phi i32 [ %260, %258 ], [ %265, %264 ]
  br label %267

267:                                              ; preds = %271, %266
  %.223 = phi i64 [ %.122, %266 ], [ %272, %271 ]
  %268 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.223
  %269 = load i32, ptr %268, align 4
  %270 = icmp ult i32 %269, %.336
  br i1 %270, label %271, label %273

271:                                              ; preds = %267
  %272 = add i64 %.223, 1
  br label %267, !llvm.loop !22

273:                                              ; preds = %267
  %274 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.223
  %275 = load i32, ptr %274, align 4
  %276 = icmp eq i32 %.336, %275
  br i1 %276, label %277, label %282

277:                                              ; preds = %273
  %278 = getelementptr inbounds nuw i8, ptr %9, i64 %.223
  %279 = load i8, ptr %278, align 1
  store i8 %279, ptr %.248, align 1
  %280 = getelementptr inbounds nuw i8, ptr %.248, i64 1
  %281 = add i64 %.328, 1
  br label %282

282:                                              ; preds = %277, %273
  %.349 = phi ptr [ %280, %277 ], [ %.248, %273 ]
  %.437 = phi i32 [ 0, %277 ], [ %.336, %273 ]
  %.4 = phi i64 [ %281, %277 ], [ %.328, %273 ]
  %.3 = phi i64 [ %storemerge7, %277 ], [ %.223, %273 ]
  %283 = icmp ugt i64 %.231, 1
  br i1 %283, label %284, label %286

284:                                              ; preds = %282
  %285 = lshr i64 %.231, 1
  br label %288

286:                                              ; preds = %282
  %287 = getelementptr inbounds nuw i8, ptr %.044, i64 1
  br label %288

288:                                              ; preds = %286, %284
  %.145 = phi ptr [ %.044, %284 ], [ %287, %286 ]
  %.332 = phi i64 [ %285, %284 ], [ 128, %286 ]
  br label %256, !llvm.loop !23

289:                                              ; preds = %256
  call void @free(ptr noundef %11) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal void @heap_adjust(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = sext i32 %3 to i64
  %6 = getelementptr [8 x i8], ptr %1, i64 %5
  %7 = getelementptr i8, ptr %6, i64 -8
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i32
  br label %10

10:                                               ; preds = %42, %4
  %.01 = phi i32 [ %3, %4 ], [ %.0, %42 ]
  %11 = sdiv i32 %2, 2
  %.not = icmp sgt i32 %.01, %11
  br i1 %.not, label %50, label %12

12:                                               ; preds = %10
  %13 = shl nsw i32 %.01, 1
  %14 = icmp slt i32 %13, %2
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = sext i32 %13 to i64
  %17 = getelementptr [8 x i8], ptr %1, i64 %16
  %18 = getelementptr i8, ptr %17, i64 -8
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %19
  %21 = load i64, ptr %20, align 8
  %22 = sext i32 %13 to i64
  %23 = getelementptr inbounds [8 x i8], ptr %1, i64 %22
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %24
  %26 = load i64, ptr %25, align 8
  %27 = icmp ugt i64 %21, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = add nsw i32 %13, 1
  br label %30

30:                                               ; preds = %28, %15, %12
  %.0 = phi i32 [ %29, %28 ], [ %13, %15 ], [ %13, %12 ]
  %31 = sext i32 %9 to i64
  %32 = getelementptr inbounds [8 x i8], ptr %0, i64 %31
  %33 = load i64, ptr %32, align 8
  %34 = sext i32 %.0 to i64
  %35 = getelementptr [8 x i8], ptr %1, i64 %34
  %36 = getelementptr i8, ptr %35, i64 -8
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %37
  %39 = load i64, ptr %38, align 8
  %40 = icmp ult i64 %33, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  br label %50

42:                                               ; preds = %30
  %43 = sext i32 %.0 to i64
  %44 = getelementptr [8 x i8], ptr %1, i64 %43
  %45 = getelementptr i8, ptr %44, i64 -8
  %46 = load i64, ptr %45, align 8
  %47 = sext i32 %.01 to i64
  %48 = getelementptr [8 x i8], ptr %1, i64 %47
  %49 = getelementptr i8, ptr %48, i64 -8
  store i64 %46, ptr %49, align 8
  br label %10, !llvm.loop !24

50:                                               ; preds = %41, %10
  %51 = sext i32 %9 to i64
  %52 = sext i32 %.01 to i64
  %53 = getelementptr [8 x i8], ptr %1, i64 %52
  %54 = getelementptr i8, ptr %53, i64 -8
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
  br i1 %3, label %4, label %16

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %13, %4
  %storemerge = phi i32 [ 1, %4 ], [ %14, %13 ]
  %6 = icmp slt i32 %storemerge, %0
  br i1 %6, label %7, label %15

7:                                                ; preds = %5
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %9 = load ptr, ptr %8, align 8
  %10 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(4) @.str.4) #8
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %11, label %12

11:                                               ; preds = %7
  br label %15

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %12
  %14 = add nsw i32 %storemerge, 1
  br label %5, !llvm.loop !25

15:                                               ; preds = %11, %5
  %.1 = phi i8 [ 1, %11 ], [ 0, %5 ]
  br label %16

16:                                               ; preds = %15, %2
  %.0 = phi i8 [ %.1, %15 ], [ 0, %2 ]
  %17 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %18

18:                                               ; preds = %21, %16
  %storemerge1 = phi i32 [ 0, %16 ], [ %22, %21 ]
  %19 = icmp slt i32 %storemerge1, 30
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  call void @compdecomp(ptr noundef %17, i64 noundef 10000000)
  br label %21

21:                                               ; preds = %20
  %22 = add nsw i32 %storemerge1, 1
  br label %18, !llvm.loop !26

23:                                               ; preds = %18
  call void @free(ptr noundef %17) #8
  %.not2 = icmp eq i8 %.0, 0
  br i1 %.not2, label %27, label %24

24:                                               ; preds = %23
  %25 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.5, double noundef 0.000000e+00) #8
  br label %30

27:                                               ; preds = %23
  %28 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.6, double noundef 0.000000e+00) #8
  br label %30

30:                                               ; preds = %27, %24
  %31 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %32 = call i32 @fflush(ptr noundef %31) #8
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
