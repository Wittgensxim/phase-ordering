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
  %2 = alloca ptr, align 8
  %3 = call ptr @malloc(i64 noundef %0) #7
  store ptr %3, ptr %2, align 8
  br label %4

4:                                                ; preds = %13, %1
  %5 = phi ptr [ %14, %13 ], [ %3, %1 ]
  %6 = phi i32 [ %15, %13 ], [ 0, %1 ]
  %7 = zext nneg i32 %6 to i64
  %8 = icmp ugt i64 %0, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %4
  %10 = call i64 @random4()
  %11 = getelementptr inbounds nuw i8, ptr @.str, i64 %10
  %12 = load i8, ptr %11, align 1
  store i8 %12, ptr %5, align 1
  br label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %15 = add nuw nsw i32 %6, 1
  br label %4, !llvm.loop !7

16:                                               ; preds = %4
  %17 = load ptr, ptr %2, align 8
  ret ptr %17
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
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i8, align 1
  %26 = alloca i32, align 4
  %27 = alloca [256 x i32], align 16
  %28 = alloca [256 x i8], align 16
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  store ptr %0, ptr %13, align 8
  %29 = add i64 %1, 1
  %30 = call ptr @malloc(i64 noundef %29) #7
  store ptr %30, ptr %14, align 8
  %31 = add i64 %1, 1
  call void @llvm.memset.p0.i64(ptr align 1 %30, i8 0, i64 %31, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %15, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %16, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %17, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %18, i8 0, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %19, i8 0, i64 256, i1 false)
  store i64 0, ptr %5, align 8
  %32 = load i64, ptr %4, align 8
  %.promoted1 = load ptr, ptr %13, align 8
  br label %33

33:                                               ; preds = %43, %2
  %34 = phi ptr [ %44, %43 ], [ %.promoted1, %2 ]
  %35 = phi i64 [ %45, %43 ], [ 0, %2 ]
  %36 = icmp ult i64 %35, %32
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load i8, ptr %34, align 1
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %39
  %41 = load i64, ptr %40, align 8
  %42 = add i64 %41, 1
  store i64 %42, ptr %40, align 8
  br label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds nuw i8, ptr %34, i64 1
  %45 = add i64 %35, 1
  br label %33, !llvm.loop !9

46:                                               ; preds = %33
  store i64 %35, ptr %5, align 8
  store ptr %34, ptr %13, align 8
  store i64 0, ptr %7, align 8
  store i64 0, ptr %5, align 8
  br label %47

47:                                               ; preds = %59, %46
  %48 = phi i64 [ %58, %59 ], [ 0, %46 ]
  %49 = phi i64 [ %60, %59 ], [ 0, %46 ]
  %50 = icmp samesign ult i64 %49, 256
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %49
  %53 = load i64, ptr %52, align 8
  %.not131 = icmp eq i64 %53, 0
  br i1 %.not131, label %57, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %48
  store i64 %49, ptr %55, align 8
  %56 = add i64 %48, 1
  br label %57

57:                                               ; preds = %54, %51
  %58 = phi i64 [ %56, %54 ], [ %48, %51 ]
  br label %59

59:                                               ; preds = %57
  %60 = add nuw nsw i64 %49, 1
  br label %47, !llvm.loop !10

61:                                               ; preds = %47
  store i64 %49, ptr %5, align 8
  store i64 %48, ptr %7, align 8
  store i64 %48, ptr %5, align 8
  %62 = trunc i64 %48 to i32
  br label %63

63:                                               ; preds = %67, %61
  %64 = phi i64 [ %68, %67 ], [ %48, %61 ]
  %.not = icmp eq i64 %64, 0
  br i1 %.not, label %69, label %65

65:                                               ; preds = %63
  %66 = trunc i64 %64 to i32
  call void @heap_adjust(ptr noundef nonnull %15, ptr noundef nonnull %16, i32 noundef %62, i32 noundef %66)
  br label %67

67:                                               ; preds = %65
  %68 = add i64 %64, -1
  br label %63, !llvm.loop !11

69:                                               ; preds = %63
  store i64 %64, ptr %5, align 8
  %.promoted9 = load i64, ptr %7, align 8
  %.promoted11 = load i64, ptr %20, align 8
  br label %70

70:                                               ; preds = %74, %69
  %71 = phi i64 [ %76, %74 ], [ %.promoted11, %69 ]
  %72 = phi i64 [ %75, %74 ], [ %.promoted9, %69 ]
  %73 = icmp ugt i64 %72, 1
  br i1 %73, label %74, label %97

74:                                               ; preds = %70
  %75 = add i64 %72, -1
  %76 = load i64, ptr %16, align 16
  %77 = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %75
  %78 = load i64, ptr %77, align 8
  store i64 %78, ptr %16, align 16
  %79 = trunc i64 %75 to i32
  call void @heap_adjust(ptr noundef nonnull %15, ptr noundef nonnull %16, i32 noundef %79, i32 noundef 1)
  %80 = load i64, ptr %16, align 16
  %81 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %80
  %82 = load i64, ptr %81, align 8
  %83 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %76
  %84 = load i64, ptr %83, align 8
  %85 = add i64 %82, %84
  %86 = getelementptr [8 x i8], ptr %15, i64 %72
  %87 = getelementptr i8, ptr %86, i64 2040
  store i64 %85, ptr %87, align 8
  %88 = trunc i64 %72 to i32
  %89 = add i32 %88, 255
  %90 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %76
  store i32 %89, ptr %90, align 4
  %91 = trunc i64 %72 to i32
  %92 = sub i32 -255, %91
  %93 = load i64, ptr %16, align 16
  %94 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %93
  store i32 %92, ptr %94, align 4
  %95 = add i64 %72, 255
  store i64 %95, ptr %16, align 16
  %96 = trunc i64 %75 to i32
  call void @heap_adjust(ptr noundef nonnull %15, ptr noundef nonnull %16, i32 noundef %96, i32 noundef 1)
  br label %70, !llvm.loop !12

97:                                               ; preds = %70
  store i64 %72, ptr %7, align 8
  store i64 %71, ptr %20, align 8
  %98 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %72
  %99 = getelementptr inbounds nuw i8, ptr %98, i64 1024
  store i32 0, ptr %99, align 4
  store i64 0, ptr %22, align 8
  %.promoted23 = load i64, ptr %5, align 8
  %.promoted26 = load i64, ptr %6, align 8
  %.promoted29 = load i64, ptr %21, align 8
  %.promoted32 = load i32, ptr %23, align 4
  br label %100

100:                                              ; preds = %138, %97
  %.lcssa2042 = phi i64 [ %.lcssa2040, %138 ], [ 0, %97 ]
  %.lcssa1838 = phi i64 [ %.lcssa1836, %138 ], [ 0, %97 ]
  %.lcssa1434 = phi i32 [ %.lcssa1433, %138 ], [ %.promoted32, %97 ]
  %.lcssa1831 = phi i64 [ %.lcssa1830, %138 ], [ %.promoted29, %97 ]
  %.lcssa1628 = phi i64 [ %.lcssa1627, %138 ], [ %.promoted26, %97 ]
  %.lcssa2025 = phi i64 [ %.lcssa2024, %138 ], [ %.promoted23, %97 ]
  %101 = phi i64 [ %139, %138 ], [ 0, %97 ]
  %102 = icmp samesign ult i64 %101, 256
  br i1 %102, label %103, label %140

103:                                              ; preds = %100
  %104 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %101
  %105 = load i64, ptr %104, align 8
  %.not129 = icmp eq i64 %105, 0
  br i1 %.not129, label %106, label %109

106:                                              ; preds = %103
  %107 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %101
  store i32 0, ptr %107, align 4
  %108 = getelementptr inbounds nuw i8, ptr %19, i64 %101
  store i8 0, ptr %108, align 1
  br label %137

109:                                              ; preds = %103
  br label %110

110:                                              ; preds = %120, %109
  %111 = phi i64 [ %125, %120 ], [ 0, %109 ]
  %112 = phi i64 [ %121, %120 ], [ 0, %109 ]
  %113 = phi i64 [ %124, %120 ], [ 1, %109 ]
  %.pn = phi i64 [ %123, %120 ], [ %101, %109 ]
  %.in = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %.pn
  %114 = load i32, ptr %.in, align 4
  %.not130 = icmp eq i32 %114, 0
  br i1 %.not130, label %126, label %115

115:                                              ; preds = %110
  %116 = icmp slt i32 %114, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %115
  %118 = add i64 %112, %113
  %119 = sub nsw i32 0, %114
  br label %120

120:                                              ; preds = %117, %115
  %121 = phi i64 [ %118, %117 ], [ %112, %115 ]
  %122 = phi i32 [ %119, %117 ], [ %114, %115 ]
  %123 = zext nneg i32 %122 to i64
  %124 = shl i64 %113, 1
  %125 = add i64 %111, 1
  br label %110, !llvm.loop !13

126:                                              ; preds = %110
  %127 = trunc i64 %112 to i32
  %128 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %101
  store i32 %127, ptr %128, align 4
  %129 = trunc i64 %111 to i8
  %130 = getelementptr inbounds nuw i8, ptr %19, i64 %101
  store i8 %129, ptr %130, align 1
  %131 = icmp ugt i64 %112, %.lcssa1838
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  br label %133

133:                                              ; preds = %132, %126
  %.lcssa1837 = phi i64 [ %112, %132 ], [ %.lcssa1838, %126 ]
  %134 = icmp ugt i64 %111, %.lcssa2042
  br i1 %134, label %135, label %136

135:                                              ; preds = %133
  br label %136

136:                                              ; preds = %135, %133
  %.lcssa2041 = phi i64 [ %111, %135 ], [ %.lcssa2042, %133 ]
  br label %137

137:                                              ; preds = %136, %106
  %.lcssa2040 = phi i64 [ %.lcssa2041, %136 ], [ %.lcssa2042, %106 ]
  %.lcssa1836 = phi i64 [ %.lcssa1837, %136 ], [ %.lcssa1838, %106 ]
  %.lcssa1433 = phi i32 [ %114, %136 ], [ %.lcssa1434, %106 ]
  %.lcssa1830 = phi i64 [ %112, %136 ], [ %.lcssa1831, %106 ]
  %.lcssa1627 = phi i64 [ %113, %136 ], [ %.lcssa1628, %106 ]
  %.lcssa2024 = phi i64 [ %111, %136 ], [ %.lcssa2025, %106 ]
  br label %138

138:                                              ; preds = %137
  %139 = add nuw nsw i64 %101, 1
  br label %100, !llvm.loop !14

140:                                              ; preds = %100
  store i64 %.lcssa2025, ptr %5, align 8
  store i64 %.lcssa1628, ptr %6, align 8
  store i64 %.lcssa1831, ptr %21, align 8
  store i32 %.lcssa1434, ptr %23, align 4
  store i64 %.lcssa1838, ptr %22, align 8
  %141 = icmp ugt i64 %.lcssa2042, 32
  br i1 %141, label %142, label %145

142:                                              ; preds = %140
  %143 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %144 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %143)
  call void @exit(i32 noundef 1) #9
  unreachable

145:                                              ; preds = %140
  store i64 0, ptr %24, align 8
  store i8 0, ptr %25, align 1
  store i32 -1, ptr %26, align 4
  %146 = load ptr, ptr %3, align 8
  store ptr %146, ptr %13, align 8
  %147 = load i64, ptr %22, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %151 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %150)
  call void @exit(i32 noundef 1) #9
  unreachable

152:                                              ; preds = %145
  store i64 0, ptr %6, align 8
  %153 = load i64, ptr %4, align 8
  %154 = load ptr, ptr %14, align 8
  %.promoted61 = load ptr, ptr %13, align 8
  %.promoted64 = load i64, ptr %8, align 8
  %.promoted67 = load i64, ptr %5, align 8
  %.promoted69 = load i32, ptr %26, align 4
  %.promoted72 = load i8, ptr %25, align 1
  %.promoted75 = load i64, ptr %24, align 8
  br label %155

155:                                              ; preds = %211, %152
  %.lcssa5376 = phi i64 [ %170, %211 ], [ %.promoted75, %152 ]
  %.lcssa5073 = phi i8 [ %171, %211 ], [ %.promoted72, %152 ]
  %.lcssa4770 = phi i32 [ %172, %211 ], [ %.promoted69, %152 ]
  %.lcssa4468 = phi i64 [ %173, %211 ], [ %.promoted67, %152 ]
  %.lcssa5665 = phi i64 [ %169, %211 ], [ %.promoted64, %152 ]
  %156 = phi ptr [ %212, %211 ], [ %.promoted61, %152 ]
  %157 = phi i64 [ %213, %211 ], [ 0, %152 ]
  %158 = icmp ult i64 %157, %153
  br i1 %158, label %159, label %214

159:                                              ; preds = %155
  %160 = load i8, ptr %156, align 1
  %161 = zext i8 %160 to i64
  %162 = getelementptr inbounds nuw i8, ptr %19, i64 %161
  %163 = load i8, ptr %162, align 1
  %164 = zext i8 %163 to i32
  %165 = add nsw i32 %164, -1
  %166 = shl nuw i32 1, %165
  %167 = sext i32 %166 to i64
  br label %168

168:                                              ; preds = %207, %159
  %169 = phi i64 [ %208, %207 ], [ %167, %159 ]
  %170 = phi i64 [ %194, %207 ], [ %.lcssa5376, %159 ]
  %171 = phi i8 [ %206, %207 ], [ %.lcssa5073, %159 ]
  %172 = phi i32 [ %196, %207 ], [ %.lcssa4770, %159 ]
  %173 = phi i64 [ %209, %207 ], [ 0, %159 ]
  %174 = load i8, ptr %156, align 1
  %175 = zext i8 %174 to i64
  %176 = getelementptr inbounds nuw i8, ptr %19, i64 %175
  %177 = load i8, ptr %176, align 1
  %178 = zext i8 %177 to i64
  %179 = icmp ult i64 %173, %178
  br i1 %179, label %180, label %210

180:                                              ; preds = %168
  %181 = icmp eq i32 %172, 7
  br i1 %181, label %182, label %190

182:                                              ; preds = %180
  %183 = getelementptr inbounds nuw i8, ptr %154, i64 %170
  store i8 %171, ptr %183, align 1
  %184 = add i64 %170, 1
  %185 = icmp eq i64 %184, %153
  br i1 %185, label %186, label %189

186:                                              ; preds = %182
  store i64 %157, ptr %6, align 8
  store ptr %156, ptr %13, align 8
  store i64 %167, ptr %8, align 8
  store i64 0, ptr %5, align 8
  store i32 %.lcssa4770, ptr %26, align 4
  store i8 %.lcssa5073, ptr %25, align 1
  store i64 %.lcssa5376, ptr %24, align 8
  store i64 %173, ptr %5, align 8
  store i32 %172, ptr %26, align 4
  store i8 %171, ptr %25, align 1
  store i64 %184, ptr %24, align 8
  store i64 %169, ptr %8, align 8
  %187 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %188 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %187)
  call void @exit(i32 noundef 1) #9
  unreachable

189:                                              ; preds = %182
  br label %193

190:                                              ; preds = %180
  %191 = add nsw i32 %172, 1
  %192 = shl i8 %171, 1
  br label %193

193:                                              ; preds = %190, %189
  %194 = phi i64 [ %170, %190 ], [ %184, %189 ]
  %195 = phi i8 [ %192, %190 ], [ 0, %189 ]
  %196 = phi i32 [ %191, %190 ], [ 0, %189 ]
  %197 = load i8, ptr %156, align 1
  %198 = zext i8 %197 to i64
  %199 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %198
  %200 = load i32, ptr %199, align 4
  %201 = zext i32 %200 to i64
  %202 = and i64 %169, %201
  %.not128 = icmp eq i64 %202, 0
  br i1 %.not128, label %205, label %203

203:                                              ; preds = %193
  %204 = or disjoint i8 %195, 1
  br label %205

205:                                              ; preds = %203, %193
  %206 = phi i8 [ %204, %203 ], [ %195, %193 ]
  br label %207

207:                                              ; preds = %205
  %208 = lshr i64 %169, 1
  %209 = add i64 %173, 1
  br label %168, !llvm.loop !15

210:                                              ; preds = %168
  br label %211

211:                                              ; preds = %210
  %212 = getelementptr inbounds nuw i8, ptr %156, i64 1
  %213 = add i64 %157, 1
  br label %155, !llvm.loop !16

214:                                              ; preds = %155
  store i64 %157, ptr %6, align 8
  store ptr %156, ptr %13, align 8
  store i64 %.lcssa5665, ptr %8, align 8
  store i64 %.lcssa4468, ptr %5, align 8
  store i32 %.lcssa4770, ptr %26, align 4
  store i8 %.lcssa5073, ptr %25, align 1
  store i64 %.lcssa5376, ptr %24, align 8
  %215 = sub nsw i32 7, %.lcssa4770
  %216 = zext i8 %.lcssa5073 to i32
  %217 = shl i32 %216, %215
  %218 = trunc i32 %217 to i8
  store i8 %218, ptr %25, align 1
  %219 = load ptr, ptr %14, align 8
  %220 = load i64, ptr %24, align 8
  %221 = getelementptr inbounds nuw i8, ptr %219, i64 %220
  store i8 %218, ptr %221, align 1
  %222 = add i64 %220, 1
  store i64 %222, ptr %24, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %27, i8 0, i64 1024, i1 false)
  store i64 0, ptr %6, align 8
  %.promoted88 = load i32, ptr %9, align 4
  %.promoted91 = load i64, ptr %8, align 8
  br label %223

223:                                              ; preds = %266, %214
  %.lcssa8393 = phi i64 [ %.lcssa8392, %266 ], [ %.promoted91, %214 ]
  %.lcssa8190 = phi i32 [ %.lcssa8189, %266 ], [ %.promoted88, %214 ]
  %224 = phi ptr [ %229, %266 ], [ %28, %214 ]
  %225 = phi i64 [ %267, %266 ], [ 0, %214 ]
  %226 = icmp samesign ult i64 %225, 256
  br i1 %226, label %227, label %268

227:                                              ; preds = %223
  %228 = trunc nuw i64 %225 to i8
  store i8 %228, ptr %224, align 1
  %229 = getelementptr inbounds nuw i8, ptr %224, i64 1
  %230 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %225
  %231 = load i32, ptr %230, align 4
  %232 = getelementptr inbounds nuw i8, ptr %19, i64 %225
  %233 = load i8, ptr %232, align 1
  %234 = zext i8 %233 to i32
  %235 = or i32 %231, %234
  %.not126 = icmp eq i32 %235, 0
  br i1 %.not126, label %265, label %236

236:                                              ; preds = %227
  %237 = getelementptr inbounds nuw i8, ptr %19, i64 %225
  %238 = load i8, ptr %237, align 1
  %239 = zext i8 %238 to i32
  %240 = add nsw i32 %239, -1
  %241 = shl nuw i32 1, %240
  %242 = sext i32 %241 to i64
  %243 = zext i8 %238 to i64
  %244 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %225
  br label %245

245:                                              ; preds = %260, %236
  %246 = phi i64 [ %261, %260 ], [ %242, %236 ]
  %247 = phi i32 [ %259, %260 ], [ 0, %236 ]
  %248 = phi i64 [ %262, %260 ], [ 0, %236 ]
  %249 = icmp ult i64 %248, %243
  br i1 %249, label %250, label %263

250:                                              ; preds = %245
  %251 = shl i32 %247, 1
  %252 = or disjoint i32 %251, 1
  %253 = load i32, ptr %244, align 4
  %254 = zext i32 %253 to i64
  %255 = and i64 %246, %254
  %.not127 = icmp eq i64 %255, 0
  br i1 %.not127, label %258, label %256

256:                                              ; preds = %250
  %257 = add i32 %251, 2
  br label %258

258:                                              ; preds = %256, %250
  %259 = phi i32 [ %257, %256 ], [ %252, %250 ]
  br label %260

260:                                              ; preds = %258
  %261 = lshr i64 %246, 1
  %262 = add i64 %248, 1
  br label %245, !llvm.loop !17

263:                                              ; preds = %245
  %264 = getelementptr inbounds nuw [4 x i8], ptr %27, i64 %225
  store i32 %247, ptr %264, align 4
  br label %265

265:                                              ; preds = %263, %227
  %.lcssa8392 = phi i64 [ %246, %263 ], [ %.lcssa8393, %227 ]
  %.lcssa8189 = phi i32 [ %247, %263 ], [ %.lcssa8190, %227 ]
  br label %266

266:                                              ; preds = %265
  %267 = add nuw nsw i64 %225, 1
  br label %223, !llvm.loop !18

268:                                              ; preds = %223
  store i64 %225, ptr %6, align 8
  store i32 %.lcssa8190, ptr %9, align 4
  store i64 %.lcssa8393, ptr %8, align 8
  store i64 1, ptr %5, align 8
  %.promoted101 = load i32, ptr %10, align 4
  %.promoted103 = load i8, ptr %11, align 1
  br label %269

269:                                              ; preds = %301, %268
  %270 = phi i8 [ %278, %301 ], [ %.promoted103, %268 ]
  %271 = phi i32 [ %276, %301 ], [ %.promoted101, %268 ]
  %272 = phi i64 [ %302, %301 ], [ 1, %268 ]
  %273 = icmp samesign ult i64 %272, 256
  br i1 %273, label %274, label %303

274:                                              ; preds = %269
  %275 = getelementptr inbounds nuw [4 x i8], ptr %27, i64 %272
  %276 = load i32, ptr %275, align 4
  %277 = getelementptr inbounds nuw i8, ptr %28, i64 %272
  %278 = load i8, ptr %277, align 1
  br label %279

279:                                              ; preds = %288, %274
  %280 = phi i64 [ %297, %288 ], [ %272, %274 ]
  %.not125 = icmp eq i64 %280, 0
  br i1 %.not125, label %286, label %281

281:                                              ; preds = %279
  %282 = getelementptr [4 x i8], ptr %27, i64 %280
  %283 = getelementptr i8, ptr %282, i64 -4
  %284 = load i32, ptr %283, align 4
  %285 = icmp ugt i32 %284, %276
  br label %286

286:                                              ; preds = %281, %279
  %287 = phi i1 [ false, %279 ], [ %285, %281 ]
  br i1 %287, label %288, label %298

288:                                              ; preds = %286
  %289 = getelementptr [4 x i8], ptr %27, i64 %280
  %290 = getelementptr i8, ptr %289, i64 -4
  %291 = load i32, ptr %290, align 4
  %292 = getelementptr inbounds nuw [4 x i8], ptr %27, i64 %280
  store i32 %291, ptr %292, align 4
  %293 = getelementptr i8, ptr %28, i64 %280
  %294 = getelementptr i8, ptr %293, i64 -1
  %295 = load i8, ptr %294, align 1
  %296 = getelementptr inbounds nuw i8, ptr %28, i64 %280
  store i8 %295, ptr %296, align 1
  %297 = add i64 %280, -1
  br label %279, !llvm.loop !19

298:                                              ; preds = %286
  %299 = getelementptr inbounds nuw [4 x i8], ptr %27, i64 %280
  store i32 %276, ptr %299, align 4
  %300 = getelementptr inbounds nuw i8, ptr %28, i64 %280
  store i8 %278, ptr %300, align 1
  br label %301

301:                                              ; preds = %298
  %302 = add nuw nsw i64 %272, 1
  br label %269, !llvm.loop !20

303:                                              ; preds = %269
  store i64 %272, ptr %5, align 8
  store i32 %271, ptr %10, align 4
  store i8 %270, ptr %11, align 1
  store i64 0, ptr %6, align 8
  br label %304

304:                                              ; preds = %310, %303
  %305 = phi i64 [ %311, %310 ], [ 0, %303 ]
  %306 = getelementptr inbounds nuw [4 x i8], ptr %27, i64 %305
  %307 = load i32, ptr %306, align 4
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %312

309:                                              ; preds = %304
  br label %310

310:                                              ; preds = %309
  %311 = add i64 %305, 1
  br label %304, !llvm.loop !21

312:                                              ; preds = %304
  store i64 %305, ptr %6, align 8
  store i32 0, ptr %9, align 4
  store i64 %305, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  %313 = load ptr, ptr %14, align 8
  store ptr %313, ptr %12, align 8
  %314 = load ptr, ptr %3, align 8
  store ptr %314, ptr %13, align 8
  %315 = load i64, ptr %4, align 8
  %316 = load i64, ptr %6, align 8
  %.promoted111 = load i64, ptr %7, align 8
  %.promoted113 = load i32, ptr %9, align 4
  %.promoted115 = load ptr, ptr %12, align 8
  %.promoted117 = load i64, ptr %8, align 8
  %.promoted119 = load i64, ptr %5, align 8
  %.promoted122 = load ptr, ptr %13, align 8
  br label %317

317:                                              ; preds = %359, %312
  %318 = phi ptr [ %351, %359 ], [ %.promoted122, %312 ]
  %.lcssa110120 = phi i64 [ %.lcssa110121, %359 ], [ %.promoted119, %312 ]
  %319 = phi i64 [ %360, %359 ], [ %.promoted117, %312 ]
  %320 = phi ptr [ %361, %359 ], [ %.promoted115, %312 ]
  %321 = phi i32 [ %352, %359 ], [ %.promoted113, %312 ]
  %322 = phi i64 [ %353, %359 ], [ %.promoted111, %312 ]
  %323 = icmp ult i64 %322, %315
  br i1 %323, label %324, label %362

324:                                              ; preds = %317
  %325 = shl i32 %321, 1
  %326 = or disjoint i32 %325, 1
  %327 = load i8, ptr %320, align 1
  %328 = zext i8 %327 to i64
  %329 = and i64 %319, %328
  %.not124 = icmp eq i64 %329, 0
  br i1 %.not124, label %332, label %330

330:                                              ; preds = %324
  %331 = add i32 %325, 2
  br label %332

332:                                              ; preds = %330, %324
  %333 = phi i32 [ %331, %330 ], [ %326, %324 ]
  br label %334

334:                                              ; preds = %339, %332
  %335 = phi i64 [ %340, %339 ], [ %.lcssa110120, %332 ]
  %336 = getelementptr inbounds nuw [4 x i8], ptr %27, i64 %335
  %337 = load i32, ptr %336, align 4
  %338 = icmp ult i32 %337, %333
  br i1 %338, label %339, label %341

339:                                              ; preds = %334
  %340 = add i64 %335, 1
  br label %334, !llvm.loop !22

341:                                              ; preds = %334
  %342 = getelementptr inbounds nuw [4 x i8], ptr %27, i64 %335
  %343 = load i32, ptr %342, align 4
  %344 = icmp eq i32 %333, %343
  br i1 %344, label %345, label %350

345:                                              ; preds = %341
  %346 = getelementptr inbounds nuw i8, ptr %28, i64 %335
  %347 = load i8, ptr %346, align 1
  store i8 %347, ptr %318, align 1
  %348 = getelementptr inbounds nuw i8, ptr %318, i64 1
  %349 = add i64 %322, 1
  br label %350

350:                                              ; preds = %345, %341
  %351 = phi ptr [ %348, %345 ], [ %318, %341 ]
  %.lcssa110121 = phi i64 [ %316, %345 ], [ %335, %341 ]
  %352 = phi i32 [ 0, %345 ], [ %333, %341 ]
  %353 = phi i64 [ %349, %345 ], [ %322, %341 ]
  %354 = icmp ugt i64 %319, 1
  br i1 %354, label %355, label %357

355:                                              ; preds = %350
  %356 = lshr i64 %319, 1
  br label %359

357:                                              ; preds = %350
  %358 = getelementptr inbounds nuw i8, ptr %320, i64 1
  br label %359

359:                                              ; preds = %357, %355
  %360 = phi i64 [ 128, %357 ], [ %356, %355 ]
  %361 = phi ptr [ %358, %357 ], [ %320, %355 ]
  br label %317, !llvm.loop !23

362:                                              ; preds = %317
  store i64 %322, ptr %7, align 8
  store i32 %321, ptr %9, align 4
  store ptr %320, ptr %12, align 8
  store i64 %319, ptr %8, align 8
  store i64 %.lcssa110120, ptr %5, align 8
  store ptr %318, ptr %13, align 8
  %363 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %363) #8
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
  %16 = load i32, ptr %7, align 4
  %17 = sdiv i32 %16, 2
  %18 = load ptr, ptr %5, align 8
  %19 = load ptr, ptr %6, align 8
  %sext = shl i64 %14, 32
  %20 = ashr exact i64 %sext, 29
  %21 = getelementptr inbounds i8, ptr %18, i64 %20
  %.promoted = load i32, ptr %8, align 4
  %.promoted2 = load i32, ptr %9, align 4
  br label %22

22:                                               ; preds = %54, %4
  %23 = phi i32 [ %44, %54 ], [ %.promoted2, %4 ]
  %24 = phi i32 [ %44, %54 ], [ %.promoted, %4 ]
  %.not = icmp sgt i32 %24, %17
  br i1 %.not, label %.loopexit, label %25

25:                                               ; preds = %22
  %26 = shl nsw i32 %24, 1
  %27 = icmp slt i32 %26, %16
  br i1 %27, label %28, label %43

28:                                               ; preds = %25
  %29 = sext i32 %26 to i64
  %30 = getelementptr [8 x i8], ptr %19, i64 %29
  %31 = getelementptr i8, ptr %30, i64 -8
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %32
  %34 = load i64, ptr %33, align 8
  %35 = sext i32 %26 to i64
  %36 = getelementptr inbounds [8 x i8], ptr %19, i64 %35
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %37
  %39 = load i64, ptr %38, align 8
  %40 = icmp ugt i64 %34, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  %42 = or disjoint i32 %26, 1
  br label %43

43:                                               ; preds = %41, %28, %25
  %44 = phi i32 [ %42, %41 ], [ %26, %28 ], [ %26, %25 ]
  %45 = load i64, ptr %21, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr [8 x i8], ptr %19, i64 %46
  %48 = getelementptr i8, ptr %47, i64 -8
  %49 = load i64, ptr %48, align 8
  %50 = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %49
  %51 = load i64, ptr %50, align 8
  %52 = icmp ult i64 %45, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %62

54:                                               ; preds = %43
  %55 = sext i32 %44 to i64
  %56 = getelementptr [8 x i8], ptr %19, i64 %55
  %57 = getelementptr i8, ptr %56, i64 -8
  %58 = load i64, ptr %57, align 8
  %59 = sext i32 %24 to i64
  %60 = getelementptr [8 x i8], ptr %19, i64 %59
  %61 = getelementptr i8, ptr %60, i64 -8
  store i64 %58, ptr %61, align 8
  br label %22, !llvm.loop !24

.loopexit:                                        ; preds = %22
  br label %62

62:                                               ; preds = %.loopexit, %53
  %storemerge = phi i32 [ %23, %.loopexit ], [ %44, %53 ]
  store i32 %24, ptr %8, align 4
  store i32 %storemerge, ptr %9, align 4
  %63 = load i32, ptr %10, align 4
  %64 = sext i32 %63 to i64
  %65 = load ptr, ptr %6, align 8
  %66 = sext i32 %24 to i64
  %67 = getelementptr [8 x i8], ptr %65, i64 %66
  %68 = getelementptr i8, ptr %67, i64 -8
  store i64 %64, ptr %68, align 8
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
  %5 = alloca i8, align 1
  %6 = alloca ptr, align 8
  %7 = alloca double, align 8
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store i8 0, ptr %5, align 1
  %8 = icmp sgt i32 %0, 1
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load i32, ptr %3, align 4
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %13

13:                                               ; preds = %21, %9
  %14 = phi i32 [ %22, %21 ], [ 1, %9 ]
  %15 = icmp slt i32 %14, %10
  br i1 %15, label %16, label %.loopexit

16:                                               ; preds = %13
  %17 = load ptr, ptr %12, align 8
  %18 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(4) @.str.4) #8
  %.not = icmp eq i32 %18, 0
  br i1 %.not, label %19, label %20

19:                                               ; preds = %16
  store i8 1, ptr %5, align 1
  br label %23

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %20
  %22 = add nuw nsw i32 %14, 1
  br label %13, !llvm.loop !25

.loopexit:                                        ; preds = %13
  br label %23

23:                                               ; preds = %.loopexit, %19
  br label %24

24:                                               ; preds = %23, %2
  %25 = call ptr @generate_test_data(i64 noundef 10000000)
  store ptr %25, ptr %6, align 8
  br label %26

26:                                               ; preds = %30, %24
  %27 = phi i32 [ %31, %30 ], [ 0, %24 ]
  %28 = icmp samesign ult i32 %27, 30
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  call void @compdecomp(ptr noundef %25, i64 noundef 10000000)
  br label %30

30:                                               ; preds = %29
  %31 = add nuw nsw i32 %27, 1
  br label %26, !llvm.loop !26

32:                                               ; preds = %26
  store double 0.000000e+00, ptr %7, align 8
  %33 = load ptr, ptr %6, align 8
  call void @free(ptr noundef %33) #8
  %34 = load i8, ptr %5, align 1
  %.not4 = icmp eq i8 %34, 0
  br i1 %.not4, label %39, label %35

35:                                               ; preds = %32
  %36 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %37 = load double, ptr %7, align 8
  %38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef nonnull @.str.5, double noundef %37) #8
  br label %43

39:                                               ; preds = %32
  %40 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %41 = load double, ptr %7, align 8
  %42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef nonnull @.str.6, double noundef %41) #8
  br label %43

43:                                               ; preds = %39, %35
  %44 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %45 = call i32 @fflush(ptr noundef %44) #8
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
