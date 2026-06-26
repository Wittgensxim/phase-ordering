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
  %2 = call ptr @malloc(i64 noundef %0) #9
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
  %11 = call ptr @malloc(i64 noundef %10) #9
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
  %.not10 = icmp eq i64 %27, 0
  br i1 %.not10, label %31, label %28

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

66:                                               ; preds = %87, %63
  %.045 = phi i64 [ 0, %63 ], [ %.146, %87 ]
  %.042 = phi i64 [ 0, %63 ], [ %88, %87 ]
  %.039 = phi i64 [ 0, %63 ], [ %.140, %87 ]
  %67 = icmp samesign ult i64 %.042, 256
  br i1 %67, label %68, label %89

68:                                               ; preds = %66
  %69 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.042
  %70 = load i64, ptr %69, align 8
  %.not8 = icmp eq i64 %70, 0
  br i1 %.not8, label %71, label %74

71:                                               ; preds = %68
  %72 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 0, ptr %72, align 4
  %73 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 0, ptr %73, align 1
  br label %87

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %76, %74
  %.043 = phi i64 [ 0, %74 ], [ %.144, %76 ]
  %.042.pn = phi i64 [ %.042, %74 ], [ %79, %76 ]
  %.05 = phi i64 [ 1, %74 ], [ %80, %76 ]
  %.3 = phi i64 [ 0, %74 ], [ %81, %76 ]
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.042.pn
  %.037 = load i32, ptr %.037.in, align 4
  %.not9 = icmp eq i32 %.037, 0
  br i1 %.not9, label %82, label %76

76:                                               ; preds = %75
  %77 = icmp slt i32 %.037, 0
  %78 = select i1 %77, i64 %.05, i64 0
  %.144 = add i64 %.043, %78
  %.138 = call i32 @llvm.abs.i32(i32 %.037, i1 true)
  %79 = zext nneg i32 %.138 to i64
  %80 = shl i64 %.05, 1
  %81 = add i64 %.3, 1
  br label %75, !llvm.loop !13

82:                                               ; preds = %75
  %83 = trunc i64 %.043 to i32
  %84 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 %83, ptr %84, align 4
  %85 = trunc i64 %.3 to i8
  %86 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 %85, ptr %86, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043, i64 %.045)
  %.241 = call i64 @llvm.umax.i64(i64 %.3, i64 %.039)
  br label %87

87:                                               ; preds = %71, %82
  %.146 = phi i64 [ %spec.select, %82 ], [ %.045, %71 ]
  %.140 = phi i64 [ %.241, %82 ], [ %.039, %71 ]
  %88 = add nuw nsw i64 %.042, 1
  br label %66, !llvm.loop !14

89:                                               ; preds = %66
  %90 = icmp ugt i64 %.039, 32
  br i1 %90, label %91, label %94

91:                                               ; preds = %89
  %92 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %93 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %92)
  call void @exit(i32 noundef 1) #11
  unreachable

94:                                               ; preds = %89
  %95 = icmp eq i64 %.045, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %94
  %97 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %98 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %97)
  call void @exit(i32 noundef 1) #11
  unreachable

99:                                               ; preds = %94, %139
  %.134 = phi ptr [ %140, %139 ], [ %0, %94 ]
  %.028 = phi i64 [ %.129, %139 ], [ 0, %94 ]
  %.024 = phi i8 [ %.125, %139 ], [ 0, %94 ]
  %.16 = phi i64 [ %141, %139 ], [ 0, %94 ]
  %.01 = phi i32 [ %.1, %139 ], [ -1, %94 ]
  %100 = icmp ult i64 %.16, %1
  br i1 %100, label %101, label %142

101:                                              ; preds = %99
  %102 = load i8, ptr %.134, align 1
  %103 = zext i8 %102 to i64
  %104 = getelementptr inbounds nuw i8, ptr %7, i64 %103
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i32
  %107 = add nsw i32 %106, -1
  %108 = shl nuw i32 1, %107
  %109 = sext i32 %108 to i64
  br label %110

110:                                              ; preds = %129, %101
  %.129 = phi i64 [ %.028, %101 ], [ %.230, %129 ]
  %.125 = phi i8 [ %.024, %101 ], [ %.327, %129 ]
  %.015 = phi i64 [ %109, %101 ], [ %137, %129 ]
  %.4 = phi i64 [ 0, %101 ], [ %138, %129 ]
  %.1 = phi i32 [ %.01, %101 ], [ %.2, %129 ]
  %111 = load i8, ptr %.134, align 1
  %112 = zext i8 %111 to i64
  %113 = getelementptr inbounds nuw i8, ptr %7, i64 %112
  %114 = load i8, ptr %113, align 1
  %115 = zext i8 %114 to i64
  %116 = icmp ult i64 %.4, %115
  br i1 %116, label %117, label %139

117:                                              ; preds = %110
  %118 = icmp eq i32 %.1, 7
  br i1 %118, label %119, label %126

119:                                              ; preds = %117
  %120 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %120, align 1
  %121 = add i64 %.129, 1
  %122 = icmp eq i64 %121, %1
  br i1 %122, label %123, label %129

123:                                              ; preds = %119
  %124 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %125 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %124)
  call void @exit(i32 noundef 1) #11
  unreachable

126:                                              ; preds = %117
  %127 = add nsw i32 %.1, 1
  %128 = shl i8 %.125, 1
  br label %129

129:                                              ; preds = %119, %126
  %.230 = phi i64 [ %.129, %126 ], [ %121, %119 ]
  %.226 = phi i8 [ %128, %126 ], [ 0, %119 ]
  %.2 = phi i32 [ %127, %126 ], [ 0, %119 ]
  %130 = load i8, ptr %.134, align 1
  %131 = zext i8 %130 to i64
  %132 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %131
  %133 = load i32, ptr %132, align 4
  %134 = zext i32 %133 to i64
  %135 = and i64 %.015, %134
  %.not7 = icmp ne i64 %135, 0
  %136 = zext i1 %.not7 to i8
  %.327 = or disjoint i8 %.226, %136
  %137 = lshr i64 %.015, 1
  %138 = add i64 %.4, 1
  br label %110, !llvm.loop !15

139:                                              ; preds = %110
  %140 = getelementptr inbounds nuw i8, ptr %.134, i64 1
  %141 = add i64 %.16, 1
  br label %99, !llvm.loop !16

142:                                              ; preds = %99
  %143 = sub nsw i32 7, %.01
  %144 = zext i8 %.024 to i32
  %145 = shl i32 %144, %143
  %146 = trunc i32 %145 to i8
  %147 = getelementptr inbounds nuw i8, ptr %11, i64 %.028
  store i8 %146, ptr %147, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %148

148:                                              ; preds = %183, %142
  %.27 = phi i64 [ 0, %142 ], [ %184, %183 ]
  %.0 = phi ptr [ %9, %142 ], [ %152, %183 ]
  %149 = icmp samesign ult i64 %.27, 256
  br i1 %149, label %150, label %185

150:                                              ; preds = %148
  %151 = trunc nuw i64 %.27 to i8
  store i8 %151, ptr %.0, align 1
  %152 = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %153 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.27
  %154 = load i32, ptr %153, align 4
  %155 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %156 = load i8, ptr %155, align 1
  %157 = zext i8 %156 to i32
  %158 = or i32 %154, %157
  %.not5 = icmp eq i32 %158, 0
  br i1 %.not5, label %183, label %159

159:                                              ; preds = %150
  %160 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %161 = load i8, ptr %160, align 1
  %162 = zext i8 %161 to i32
  %163 = add nsw i32 %162, -1
  %164 = shl nuw i32 1, %163
  %165 = sext i32 %164 to i64
  br label %166

166:                                              ; preds = %171, %159
  %.019 = phi i32 [ 0, %159 ], [ %spec.select1, %171 ]
  %.116 = phi i64 [ %165, %159 ], [ %179, %171 ]
  %.5 = phi i64 [ 0, %159 ], [ %180, %171 ]
  %167 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %168 = load i8, ptr %167, align 1
  %169 = zext i8 %168 to i64
  %170 = icmp ult i64 %.5, %169
  br i1 %170, label %171, label %181

171:                                              ; preds = %166
  %172 = shl i32 %.019, 1
  %173 = or disjoint i32 %172, 1
  %174 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.27
  %175 = load i32, ptr %174, align 4
  %176 = zext i32 %175 to i64
  %177 = and i64 %.116, %176
  %.not6 = icmp eq i64 %177, 0
  %178 = add i32 %172, 2
  %spec.select1 = select i1 %.not6, i32 %173, i32 %178
  %179 = lshr i64 %.116, 1
  %180 = add i64 %.5, 1
  br label %166, !llvm.loop !17

181:                                              ; preds = %166
  %182 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.27
  store i32 %.019, ptr %182, align 4
  br label %183

183:                                              ; preds = %150, %181
  %184 = add nuw nsw i64 %.27, 1
  br label %148, !llvm.loop !18

185:                                              ; preds = %148, %.critedge
  %.6 = phi i64 [ %210, %.critedge ], [ 1, %148 ]
  %186 = icmp samesign ult i64 %.6, 256
  br i1 %186, label %187, label %211

187:                                              ; preds = %185
  %188 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.6
  %189 = load i32, ptr %188, align 4
  %190 = getelementptr inbounds nuw i8, ptr %9, i64 %.6
  %191 = load i8, ptr %190, align 1
  br label %192

192:                                              ; preds = %198, %187
  %.38 = phi i64 [ %.6, %187 ], [ %207, %198 ]
  %.not4 = icmp eq i64 %.38, 0
  br i1 %.not4, label %.critedge, label %193

193:                                              ; preds = %192
  %194 = getelementptr [4 x i8], ptr %8, i64 %.38
  %195 = getelementptr i8, ptr %194, i64 -4
  %196 = load i32, ptr %195, align 4
  %197 = icmp ugt i32 %196, %189
  br i1 %197, label %198, label %.critedge

198:                                              ; preds = %193
  %199 = getelementptr [4 x i8], ptr %8, i64 %.38
  %200 = getelementptr i8, ptr %199, i64 -4
  %201 = load i32, ptr %200, align 4
  %202 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %201, ptr %202, align 4
  %203 = getelementptr i8, ptr %9, i64 %.38
  %204 = getelementptr i8, ptr %203, i64 -1
  %205 = load i8, ptr %204, align 1
  %206 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %205, ptr %206, align 1
  %207 = add i64 %.38, -1
  br label %192, !llvm.loop !19

.critedge:                                        ; preds = %192, %193
  %208 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %189, ptr %208, align 4
  %209 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %191, ptr %209, align 1
  %210 = add nuw nsw i64 %.6, 1
  br label %185, !llvm.loop !20

211:                                              ; preds = %185, %215
  %.49 = phi i64 [ %216, %215 ], [ 0, %185 ]
  %212 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %213 = load i32, ptr %212, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %211
  %216 = add i64 %.49, 1
  br label %211, !llvm.loop !21

217:                                              ; preds = %211, %241
  %.235 = phi ptr [ %.336, %241 ], [ %0, %211 ]
  %.031 = phi ptr [ %.132, %241 ], [ %11, %211 ]
  %.221 = phi i32 [ %.423, %241 ], [ 0, %211 ]
  %.217 = phi i64 [ %.318, %241 ], [ 128, %211 ]
  %.313 = phi i64 [ %.414, %241 ], [ 0, %211 ]
  %.7 = phi i64 [ %.9, %241 ], [ %.49, %211 ]
  %218 = icmp ult i64 %.313, %1
  br i1 %218, label %219, label %244

219:                                              ; preds = %217
  %220 = shl i32 %.221, 1
  %221 = or disjoint i32 %220, 1
  %222 = load i8, ptr %.031, align 1
  %223 = zext i8 %222 to i64
  %224 = and i64 %.217, %223
  %.not3 = icmp eq i64 %224, 0
  %225 = add i32 %220, 2
  %spec.select2 = select i1 %.not3, i32 %221, i32 %225
  br label %226

226:                                              ; preds = %230, %219
  %.8 = phi i64 [ %.7, %219 ], [ %231, %230 ]
  %227 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %228 = load i32, ptr %227, align 4
  %229 = icmp ult i32 %228, %spec.select2
  br i1 %229, label %230, label %232

230:                                              ; preds = %226
  %231 = add i64 %.8, 1
  br label %226, !llvm.loop !22

232:                                              ; preds = %226
  %233 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %234 = load i32, ptr %233, align 4
  %235 = icmp eq i32 %spec.select2, %234
  br i1 %235, label %236, label %241

236:                                              ; preds = %232
  %237 = getelementptr inbounds nuw i8, ptr %9, i64 %.8
  %238 = load i8, ptr %237, align 1
  store i8 %238, ptr %.235, align 1
  %239 = getelementptr inbounds nuw i8, ptr %.235, i64 1
  %240 = add i64 %.313, 1
  br label %241

241:                                              ; preds = %236, %232
  %.336 = phi ptr [ %239, %236 ], [ %.235, %232 ]
  %.423 = phi i32 [ 0, %236 ], [ %spec.select2, %232 ]
  %.414 = phi i64 [ %240, %236 ], [ %.313, %232 ]
  %.9 = phi i64 [ %.49, %236 ], [ %.8, %232 ]
  %242 = icmp ult i64 %.217, 2
  %243 = lshr i64 %.217, 1
  %.132.idx = zext i1 %242 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.031, i64 %.132.idx
  %.318 = select i1 %242, i64 128, i64 %243
  br label %217, !llvm.loop !23

244:                                              ; preds = %217
  call void @free(ptr noundef %11) #10
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
  %27 = zext i1 %26 to i32
  %spec.select = or disjoint i32 %12, %27
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
  %5 = icmp slt i32 %.01, %0
  br i1 %5, label %6, label %12

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %8 = load ptr, ptr %7, align 8
  %9 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(4) @.str.4) #10
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %12, label %10

10:                                               ; preds = %6
  %11 = add nuw nsw i32 %.01, 1
  br label %4, !llvm.loop !25

12:                                               ; preds = %4, %6, %2
  %.not1 = phi i1 [ true, %2 ], [ true, %4 ], [ false, %6 ]
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
  call void @free(ptr noundef %13) #10
  br i1 %.not1, label %22, label %19

19:                                               ; preds = %18
  %20 = call ptr @__acrt_iob_func(i32 noundef 1) #10
  %21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.5, double noundef 0.000000e+00) #10
  br label %25

22:                                               ; preds = %18
  %23 = call ptr @__acrt_iob_func(i32 noundef 1) #10
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.6, double noundef 0.000000e+00) #10
  br label %25

25:                                               ; preds = %22, %19
  %26 = call ptr @__acrt_iob_func(i32 noundef 1) #10
  %27 = call i32 @fflush(ptr noundef %26) #10
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind }
attributes #11 = { cold noreturn nounwind }

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
