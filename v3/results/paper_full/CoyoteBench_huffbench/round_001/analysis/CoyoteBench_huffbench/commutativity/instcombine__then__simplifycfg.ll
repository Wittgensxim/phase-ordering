; ModuleID = 'results\paper_full\CoyoteBench_huffbench\round_000\output.ll'
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

3:                                                ; preds = %6, %1
  %.01 = phi ptr [ %2, %1 ], [ %10, %6 ]
  %.0 = phi i32 [ 0, %1 ], [ %11, %6 ]
  %4 = zext nneg i32 %.0 to i64
  %5 = icmp ugt i64 %0, %4
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = call i64 @random4()
  %8 = getelementptr inbounds nuw i8, ptr @.str, i64 %7
  %9 = load i8, ptr %8, align 1
  store i8 %9, ptr %.01, align 1
  %10 = getelementptr inbounds nuw i8, ptr %.01, i64 1
  %11 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !7

12:                                               ; preds = %3
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

13:                                               ; preds = %15, %2
  %.033 = phi ptr [ %0, %2 ], [ %21, %15 ]
  %.02 = phi i64 [ 0, %2 ], [ %22, %15 ]
  %14 = icmp ult i64 %.02, %1
  br i1 %14, label %15, label %23

15:                                               ; preds = %13
  %16 = load i8, ptr %.033, align 1
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %17
  %19 = load i64, ptr %18, align 8
  %20 = add i64 %19, 1
  store i64 %20, ptr %18, align 8
  %21 = getelementptr inbounds nuw i8, ptr %.033, i64 1
  %22 = add i64 %.02, 1
  br label %13, !llvm.loop !9

23:                                               ; preds = %13, %31
  %.010 = phi i64 [ %.111, %31 ], [ 0, %13 ]
  %.13 = phi i64 [ %32, %31 ], [ 0, %13 ]
  %24 = icmp samesign ult i64 %.13, 256
  br i1 %24, label %25, label %33

25:                                               ; preds = %23
  %26 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.13
  %27 = load i64, ptr %26, align 8
  %.not8 = icmp eq i64 %27, 0
  br i1 %.not8, label %31, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.010
  store i64 %.13, ptr %29, align 8
  %30 = add i64 %.010, 1
  br label %31

31:                                               ; preds = %25, %28
  %.111 = phi i64 [ %30, %28 ], [ %.010, %25 ]
  %32 = add nuw nsw i64 %.13, 1
  br label %23, !llvm.loop !10

33:                                               ; preds = %23, %34
  %.24 = phi i64 [ %37, %34 ], [ %.010, %23 ]
  %.not = icmp eq i64 %.24, 0
  br i1 %.not, label %38, label %34

34:                                               ; preds = %33
  %35 = trunc i64 %.010 to i32
  %36 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %35, i32 noundef %36)
  %37 = add i64 %.24, -1
  br label %33, !llvm.loop !11

38:                                               ; preds = %33, %40
  %.212 = phi i64 [ %41, %40 ], [ %.010, %33 ]
  %39 = icmp ugt i64 %.212, 1
  br i1 %39, label %40, label %63

40:                                               ; preds = %38
  %41 = add i64 %.212, -1
  %42 = load i64, ptr %4, align 16
  %43 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %41
  %44 = load i64, ptr %43, align 8
  store i64 %44, ptr %4, align 16
  %45 = trunc i64 %41 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %45, i32 noundef 1)
  %46 = load i64, ptr %4, align 16
  %47 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %46
  %48 = load i64, ptr %47, align 8
  %49 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %42
  %50 = load i64, ptr %49, align 8
  %51 = add i64 %48, %50
  %52 = getelementptr [8 x i8], ptr %3, i64 %.212
  %53 = getelementptr i8, ptr %52, i64 2040
  store i64 %51, ptr %53, align 8
  %54 = trunc i64 %.212 to i32
  %55 = add i32 %54, 255
  %56 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %42
  store i32 %55, ptr %56, align 4
  %57 = trunc i64 %.212 to i32
  %58 = sub i32 -255, %57
  %59 = load i64, ptr %4, align 16
  %60 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %59
  store i32 %58, ptr %60, align 4
  %61 = add i64 %.212, 255
  store i64 %61, ptr %4, align 16
  %62 = trunc i64 %41 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %62, i32 noundef 1)
  br label %38, !llvm.loop !12

63:                                               ; preds = %38
  %64 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 1024
  store i32 0, ptr %65, align 4
  br label %66

66:                                               ; preds = %89, %63
  %.045 = phi i64 [ 0, %63 ], [ %.146, %89 ]
  %.042 = phi i64 [ 0, %63 ], [ %90, %89 ]
  %.039 = phi i64 [ 0, %63 ], [ %.140, %89 ]
  %67 = icmp samesign ult i64 %.042, 256
  br i1 %67, label %68, label %91

68:                                               ; preds = %66
  %69 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.042
  %70 = load i64, ptr %69, align 8
  %.not6 = icmp eq i64 %70, 0
  br i1 %.not6, label %71, label %74

71:                                               ; preds = %68
  %72 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 0, ptr %72, align 4
  %73 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 0, ptr %73, align 1
  br label %89

74:                                               ; preds = %68, %75
  %.043 = phi i64 [ %.144, %75 ], [ 0, %68 ]
  %.042.pn = phi i64 [ %79, %75 ], [ %.042, %68 ]
  %.05 = phi i64 [ %80, %75 ], [ 1, %68 ]
  %.3 = phi i64 [ %81, %75 ], [ 0, %68 ]
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.042.pn
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %82, label %75

75:                                               ; preds = %74
  %76 = icmp slt i32 %.037, 0
  %77 = add i64 %.043, %.05
  %78 = sub nsw i32 0, %.037
  %.144 = select i1 %76, i64 %77, i64 %.043
  %.138 = select i1 %76, i32 %78, i32 %.037
  %79 = zext nneg i32 %.138 to i64
  %80 = shl i64 %.05, 1
  %81 = add i64 %.3, 1
  br label %74, !llvm.loop !13

82:                                               ; preds = %74
  %83 = trunc i64 %.043 to i32
  %84 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 %83, ptr %84, align 4
  %85 = trunc i64 %.3 to i8
  %86 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 %85, ptr %86, align 1
  %87 = icmp ugt i64 %.043, %.045
  %spec.select = select i1 %87, i64 %.043, i64 %.045
  %88 = icmp ugt i64 %.3, %.039
  %.241 = select i1 %88, i64 %.3, i64 %.039
  br label %89

89:                                               ; preds = %71, %82
  %.146 = phi i64 [ %spec.select, %82 ], [ %.045, %71 ]
  %.140 = phi i64 [ %.241, %82 ], [ %.039, %71 ]
  %90 = add nuw nsw i64 %.042, 1
  br label %66, !llvm.loop !14

91:                                               ; preds = %66
  %92 = icmp ugt i64 %.039, 32
  br i1 %92, label %93, label %96

93:                                               ; preds = %91
  %94 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %95 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %94)
  call void @exit(i32 noundef 1) #9
  unreachable

96:                                               ; preds = %91
  %97 = icmp eq i64 %.045, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %96
  %99 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %100 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %99)
  call void @exit(i32 noundef 1) #9
  unreachable

101:                                              ; preds = %96, %141
  %.134 = phi ptr [ %142, %141 ], [ %0, %96 ]
  %.028 = phi i64 [ %.129, %141 ], [ 0, %96 ]
  %.024 = phi i8 [ %.125, %141 ], [ 0, %96 ]
  %.16 = phi i64 [ %143, %141 ], [ 0, %96 ]
  %.01 = phi i32 [ %.1, %141 ], [ -1, %96 ]
  %102 = icmp ult i64 %.16, %1
  br i1 %102, label %103, label %144

103:                                              ; preds = %101
  %104 = load i8, ptr %.134, align 1
  %105 = zext i8 %104 to i64
  %106 = getelementptr inbounds nuw i8, ptr %7, i64 %105
  %107 = load i8, ptr %106, align 1
  %108 = zext i8 %107 to i32
  %109 = add nsw i32 %108, -1
  %110 = shl nuw i32 1, %109
  %111 = sext i32 %110 to i64
  br label %112

112:                                              ; preds = %131, %103
  %.129 = phi i64 [ %.028, %103 ], [ %.230, %131 ]
  %.125 = phi i8 [ %.024, %103 ], [ %spec.select9, %131 ]
  %.015 = phi i64 [ %111, %103 ], [ %139, %131 ]
  %.4 = phi i64 [ 0, %103 ], [ %140, %131 ]
  %.1 = phi i32 [ %.01, %103 ], [ %.2, %131 ]
  %113 = load i8, ptr %.134, align 1
  %114 = zext i8 %113 to i64
  %115 = getelementptr inbounds nuw i8, ptr %7, i64 %114
  %116 = load i8, ptr %115, align 1
  %117 = zext i8 %116 to i64
  %118 = icmp ult i64 %.4, %117
  br i1 %118, label %119, label %141

119:                                              ; preds = %112
  %120 = icmp eq i32 %.1, 7
  br i1 %120, label %121, label %128

121:                                              ; preds = %119
  %122 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %122, align 1
  %123 = add i64 %.129, 1
  %124 = icmp eq i64 %123, %1
  br i1 %124, label %125, label %131

125:                                              ; preds = %121
  %126 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %127 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %126)
  call void @exit(i32 noundef 1) #9
  unreachable

128:                                              ; preds = %119
  %129 = add nsw i32 %.1, 1
  %130 = shl i8 %.125, 1
  br label %131

131:                                              ; preds = %121, %128
  %.230 = phi i64 [ %.129, %128 ], [ %123, %121 ]
  %.226 = phi i8 [ %130, %128 ], [ 0, %121 ]
  %.2 = phi i32 [ %129, %128 ], [ 0, %121 ]
  %132 = load i8, ptr %.134, align 1
  %133 = zext i8 %132 to i64
  %134 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %133
  %135 = load i32, ptr %134, align 4
  %136 = zext i32 %135 to i64
  %137 = and i64 %.015, %136
  %.not5 = icmp eq i64 %137, 0
  %138 = or disjoint i8 %.226, 1
  %spec.select9 = select i1 %.not5, i8 %.226, i8 %138
  %139 = lshr i64 %.015, 1
  %140 = add i64 %.4, 1
  br label %112, !llvm.loop !15

141:                                              ; preds = %112
  %142 = getelementptr inbounds nuw i8, ptr %.134, i64 1
  %143 = add i64 %.16, 1
  br label %101, !llvm.loop !16

144:                                              ; preds = %101
  %145 = sub nsw i32 7, %.01
  %146 = zext i8 %.024 to i32
  %147 = shl i32 %146, %145
  %148 = trunc i32 %147 to i8
  %149 = getelementptr inbounds nuw i8, ptr %11, i64 %.028
  store i8 %148, ptr %149, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %150

150:                                              ; preds = %185, %144
  %.27 = phi i64 [ 0, %144 ], [ %186, %185 ]
  %.0 = phi ptr [ %9, %144 ], [ %154, %185 ]
  %151 = icmp samesign ult i64 %.27, 256
  br i1 %151, label %152, label %187

152:                                              ; preds = %150
  %153 = trunc nuw i64 %.27 to i8
  store i8 %153, ptr %.0, align 1
  %154 = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %155 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.27
  %156 = load i32, ptr %155, align 4
  %157 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %158 = load i8, ptr %157, align 1
  %159 = zext i8 %158 to i32
  %160 = or i32 %156, %159
  %.not3 = icmp eq i32 %160, 0
  br i1 %.not3, label %185, label %161

161:                                              ; preds = %152
  %162 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %163 = load i8, ptr %162, align 1
  %164 = zext i8 %163 to i32
  %165 = add nsw i32 %164, -1
  %166 = shl nuw i32 1, %165
  %167 = sext i32 %166 to i64
  br label %168

168:                                              ; preds = %173, %161
  %.019 = phi i32 [ 0, %161 ], [ %spec.select10, %173 ]
  %.116 = phi i64 [ %167, %161 ], [ %181, %173 ]
  %.5 = phi i64 [ 0, %161 ], [ %182, %173 ]
  %169 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %170 = load i8, ptr %169, align 1
  %171 = zext i8 %170 to i64
  %172 = icmp ult i64 %.5, %171
  br i1 %172, label %173, label %183

173:                                              ; preds = %168
  %174 = shl i32 %.019, 1
  %175 = or disjoint i32 %174, 1
  %176 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.27
  %177 = load i32, ptr %176, align 4
  %178 = zext i32 %177 to i64
  %179 = and i64 %.116, %178
  %.not4 = icmp eq i64 %179, 0
  %180 = add i32 %174, 2
  %spec.select10 = select i1 %.not4, i32 %175, i32 %180
  %181 = lshr i64 %.116, 1
  %182 = add i64 %.5, 1
  br label %168, !llvm.loop !17

183:                                              ; preds = %168
  %184 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.27
  store i32 %.019, ptr %184, align 4
  br label %185

185:                                              ; preds = %152, %183
  %186 = add nuw nsw i64 %.27, 1
  br label %150, !llvm.loop !18

187:                                              ; preds = %150, %.critedge
  %.6 = phi i64 [ %212, %.critedge ], [ 1, %150 ]
  %188 = icmp samesign ult i64 %.6, 256
  br i1 %188, label %189, label %213

189:                                              ; preds = %187
  %190 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.6
  %191 = load i32, ptr %190, align 4
  %192 = getelementptr inbounds nuw i8, ptr %9, i64 %.6
  %193 = load i8, ptr %192, align 1
  br label %194

194:                                              ; preds = %200, %189
  %.38 = phi i64 [ %.6, %189 ], [ %209, %200 ]
  %.not2 = icmp eq i64 %.38, 0
  br i1 %.not2, label %.critedge, label %195

195:                                              ; preds = %194
  %196 = getelementptr [4 x i8], ptr %8, i64 %.38
  %197 = getelementptr i8, ptr %196, i64 -4
  %198 = load i32, ptr %197, align 4
  %199 = icmp ugt i32 %198, %191
  br i1 %199, label %200, label %.critedge

200:                                              ; preds = %195
  %201 = getelementptr [4 x i8], ptr %8, i64 %.38
  %202 = getelementptr i8, ptr %201, i64 -4
  %203 = load i32, ptr %202, align 4
  %204 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %203, ptr %204, align 4
  %205 = getelementptr i8, ptr %9, i64 %.38
  %206 = getelementptr i8, ptr %205, i64 -1
  %207 = load i8, ptr %206, align 1
  %208 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %207, ptr %208, align 1
  %209 = add i64 %.38, -1
  br label %194, !llvm.loop !19

.critedge:                                        ; preds = %194, %195
  %210 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %191, ptr %210, align 4
  %211 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %193, ptr %211, align 1
  %212 = add nuw nsw i64 %.6, 1
  br label %187, !llvm.loop !20

213:                                              ; preds = %187, %217
  %.49 = phi i64 [ %218, %217 ], [ 0, %187 ]
  %214 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %215 = load i32, ptr %214, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %213
  %218 = add i64 %.49, 1
  br label %213, !llvm.loop !21

219:                                              ; preds = %213, %243
  %.235 = phi ptr [ %.336, %243 ], [ %0, %213 ]
  %.031 = phi ptr [ %.132, %243 ], [ %11, %213 ]
  %.221 = phi i32 [ %.423, %243 ], [ 0, %213 ]
  %.217 = phi i64 [ %.318, %243 ], [ 128, %213 ]
  %.313 = phi i64 [ %.414, %243 ], [ 0, %213 ]
  %.7 = phi i64 [ %.9, %243 ], [ %.49, %213 ]
  %220 = icmp ult i64 %.313, %1
  br i1 %220, label %221, label %247

221:                                              ; preds = %219
  %222 = shl i32 %.221, 1
  %223 = or disjoint i32 %222, 1
  %224 = load i8, ptr %.031, align 1
  %225 = zext i8 %224 to i64
  %226 = and i64 %.217, %225
  %.not1 = icmp eq i64 %226, 0
  %227 = add i32 %222, 2
  %spec.select11 = select i1 %.not1, i32 %223, i32 %227
  br label %228

228:                                              ; preds = %232, %221
  %.8 = phi i64 [ %.7, %221 ], [ %233, %232 ]
  %229 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %230 = load i32, ptr %229, align 4
  %231 = icmp ult i32 %230, %spec.select11
  br i1 %231, label %232, label %234

232:                                              ; preds = %228
  %233 = add i64 %.8, 1
  br label %228, !llvm.loop !22

234:                                              ; preds = %228
  %235 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %236 = load i32, ptr %235, align 4
  %237 = icmp eq i32 %spec.select11, %236
  br i1 %237, label %238, label %243

238:                                              ; preds = %234
  %239 = getelementptr inbounds nuw i8, ptr %9, i64 %.8
  %240 = load i8, ptr %239, align 1
  store i8 %240, ptr %.235, align 1
  %241 = getelementptr inbounds nuw i8, ptr %.235, i64 1
  %242 = add i64 %.313, 1
  br label %243

243:                                              ; preds = %238, %234
  %.336 = phi ptr [ %241, %238 ], [ %.235, %234 ]
  %.423 = phi i32 [ 0, %238 ], [ %spec.select11, %234 ]
  %.414 = phi i64 [ %242, %238 ], [ %.313, %234 ]
  %.9 = phi i64 [ %.49, %238 ], [ %.8, %234 ]
  %244 = icmp ugt i64 %.217, 1
  %245 = lshr i64 %.217, 1
  %246 = getelementptr inbounds nuw i8, ptr %.031, i64 1
  %.132 = select i1 %244, ptr %.031, ptr %246
  %.318 = select i1 %244, i64 %245, i64 128
  br label %219, !llvm.loop !23

247:                                              ; preds = %219
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
  br label %9

9:                                                ; preds = %39, %4
  %.01 = phi i32 [ %3, %4 ], [ %.0, %39 ]
  %10 = sdiv i32 %2, 2
  %.not = icmp sgt i32 %.01, %10
  br i1 %.not, label %47, label %11

11:                                               ; preds = %9
  %12 = shl nsw i32 %.01, 1
  %13 = icmp slt i32 %12, %2
  br i1 %13, label %14, label %28

14:                                               ; preds = %11
  %15 = sext i32 %12 to i64
  %16 = getelementptr [8 x i8], ptr %1, i64 %15
  %17 = getelementptr i8, ptr %16, i64 -8
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %18
  %20 = load i64, ptr %19, align 8
  %21 = sext i32 %12 to i64
  %22 = getelementptr inbounds [8 x i8], ptr %1, i64 %21
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %23
  %25 = load i64, ptr %24, align 8
  %26 = icmp ugt i64 %20, %25
  %27 = or disjoint i32 %12, 1
  %spec.select = select i1 %26, i32 %27, i32 %12
  br label %28

28:                                               ; preds = %14, %11
  %.0 = phi i32 [ %12, %11 ], [ %spec.select, %14 ]
  %sext = shl i64 %8, 32
  %29 = ashr exact i64 %sext, 29
  %30 = getelementptr inbounds i8, ptr %0, i64 %29
  %31 = load i64, ptr %30, align 8
  %32 = sext i32 %.0 to i64
  %33 = getelementptr [8 x i8], ptr %1, i64 %32
  %34 = getelementptr i8, ptr %33, i64 -8
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %35
  %37 = load i64, ptr %36, align 8
  %38 = icmp ult i64 %31, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %28
  %40 = sext i32 %.0 to i64
  %41 = getelementptr [8 x i8], ptr %1, i64 %40
  %42 = getelementptr i8, ptr %41, i64 -8
  %43 = load i64, ptr %42, align 8
  %44 = sext i32 %.01 to i64
  %45 = getelementptr [8 x i8], ptr %1, i64 %44
  %46 = getelementptr i8, ptr %45, i64 -8
  store i64 %43, ptr %46, align 8
  br label %9, !llvm.loop !24

47:                                               ; preds = %28, %9
  %sext1 = shl i64 %8, 32
  %48 = ashr exact i64 %sext1, 32
  %49 = sext i32 %.01 to i64
  %50 = getelementptr [8 x i8], ptr %1, i64 %49
  %51 = getelementptr i8, ptr %50, i64 -8
  store i64 %48, ptr %51, align 8
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
  br i1 %3, label %4, label %12

4:                                                ; preds = %2, %10
  %.01 = phi i32 [ %11, %10 ], [ 1, %2 ]
  %5 = icmp sge i32 %.01, %0
  br i1 %5, label %12, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %8 = load ptr, ptr %7, align 8
  %9 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(4) @.str.4) #8
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %12, label %10

10:                                               ; preds = %6
  %11 = add nuw nsw i32 %.01, 1
  br label %4, !llvm.loop !25

12:                                               ; preds = %4, %6, %2
  %.0 = phi i1 [ true, %2 ], [ %5, %6 ], [ %5, %4 ]
  %13 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %14

14:                                               ; preds = %16, %12
  %.12 = phi i32 [ 0, %12 ], [ %17, %16 ]
  %15 = icmp samesign ult i32 %.12, 30
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  call void @compdecomp(ptr noundef %13, i64 noundef 10000000)
  %17 = add nuw nsw i32 %.12, 1
  br label %14, !llvm.loop !26

18:                                               ; preds = %14
  call void @free(ptr noundef %13) #8
  br i1 %.0, label %22, label %19

19:                                               ; preds = %18
  %20 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.5, double noundef 0.000000e+00) #8
  br label %25

22:                                               ; preds = %18
  %23 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.6, double noundef 0.000000e+00) #8
  br label %25

25:                                               ; preds = %22, %19
  %26 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %27 = call i32 @fflush(ptr noundef %26) #8
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
