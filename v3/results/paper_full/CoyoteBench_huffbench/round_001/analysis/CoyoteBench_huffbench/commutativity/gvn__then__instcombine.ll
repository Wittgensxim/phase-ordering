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
  call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %10, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %3, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %4, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %5, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %6, i8 0, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %7, i8 0, i64 256, i1 false)
  br label %12

12:                                               ; preds = %14, %2
  %.033 = phi ptr [ %0, %2 ], [ %20, %14 ]
  %.02 = phi i64 [ 0, %2 ], [ %21, %14 ]
  %13 = icmp ult i64 %.02, %1
  br i1 %13, label %14, label %22

14:                                               ; preds = %12
  %15 = load i8, ptr %.033, align 1
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %16
  %18 = load i64, ptr %17, align 8
  %19 = add i64 %18, 1
  store i64 %19, ptr %17, align 8
  %20 = getelementptr inbounds nuw i8, ptr %.033, i64 1
  %21 = add i64 %.02, 1
  br label %12, !llvm.loop !9

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %31, %22
  %.010 = phi i64 [ 0, %22 ], [ %.111, %31 ]
  %.13 = phi i64 [ 0, %22 ], [ %32, %31 ]
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

31:                                               ; preds = %28, %25
  %.111 = phi i64 [ %30, %28 ], [ %.010, %25 ]
  %32 = add nuw nsw i64 %.13, 1
  br label %23, !llvm.loop !10

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %35, %33
  %.24 = phi i64 [ %.010, %33 ], [ %38, %35 ]
  %.not = icmp eq i64 %.24, 0
  br i1 %.not, label %39, label %35

35:                                               ; preds = %34
  %36 = trunc i64 %.010 to i32
  %37 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %36, i32 noundef %37)
  %38 = add i64 %.24, -1
  br label %34, !llvm.loop !11

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %42, %39
  %.212 = phi i64 [ %.010, %39 ], [ %43, %42 ]
  %41 = icmp ugt i64 %.212, 1
  br i1 %41, label %42, label %61

42:                                               ; preds = %40
  %43 = add i64 %.212, -1
  %44 = load i64, ptr %4, align 16
  %45 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %43
  %46 = load i64, ptr %45, align 8
  store i64 %46, ptr %4, align 16
  %47 = trunc i64 %43 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %47, i32 noundef 1)
  %48 = load i64, ptr %4, align 16
  %49 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %48
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %44
  %52 = load i64, ptr %51, align 8
  %53 = add i64 %50, %52
  %54 = add i64 %.212, 255
  %55 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %54
  store i64 %53, ptr %55, align 8
  %56 = trunc i64 %54 to i32
  %57 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %44
  store i32 %56, ptr %57, align 4
  %58 = trunc i64 %.212 to i32
  %59 = sub i32 -255, %58
  %60 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %48
  store i32 %59, ptr %60, align 4
  store i64 %54, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %47, i32 noundef 1)
  br label %40, !llvm.loop !12

61:                                               ; preds = %40
  %62 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212
  %63 = getelementptr inbounds nuw i8, ptr %62, i64 1024
  store i32 0, ptr %63, align 4
  br label %64

64:                                               ; preds = %94, %61
  %.045 = phi i64 [ 0, %61 ], [ %.146, %94 ]
  %.042 = phi i64 [ 0, %61 ], [ %95, %94 ]
  %.039 = phi i64 [ 0, %61 ], [ %.140, %94 ]
  %65 = icmp samesign ult i64 %.042, 256
  br i1 %65, label %66, label %96

66:                                               ; preds = %64
  %67 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.042
  %68 = load i64, ptr %67, align 8
  %.not8 = icmp eq i64 %68, 0
  br i1 %.not8, label %69, label %72

69:                                               ; preds = %66
  %70 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 0, ptr %70, align 4
  %71 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 0, ptr %71, align 1
  br label %94

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %79, %72
  %.043 = phi i64 [ 0, %72 ], [ %.144, %79 ]
  %.042.pn = phi i64 [ %.042, %72 ], [ %80, %79 ]
  %.05 = phi i64 [ 1, %72 ], [ %81, %79 ]
  %.3 = phi i64 [ 0, %72 ], [ %82, %79 ]
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.042.pn
  %.037 = load i32, ptr %.037.in, align 4
  %.not9 = icmp eq i32 %.037, 0
  br i1 %.not9, label %83, label %74

74:                                               ; preds = %73
  %75 = icmp slt i32 %.037, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %74
  %77 = add i64 %.043, %.05
  %78 = sub nsw i32 0, %.037
  br label %79

79:                                               ; preds = %76, %74
  %.144 = phi i64 [ %77, %76 ], [ %.043, %74 ]
  %.138 = phi i32 [ %78, %76 ], [ %.037, %74 ]
  %80 = zext nneg i32 %.138 to i64
  %81 = shl i64 %.05, 1
  %82 = add i64 %.3, 1
  br label %73, !llvm.loop !13

83:                                               ; preds = %73
  %84 = trunc i64 %.043 to i32
  %85 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 %84, ptr %85, align 4
  %86 = trunc i64 %.3 to i8
  %87 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 %86, ptr %87, align 1
  %88 = icmp ugt i64 %.043, %.045
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %89, %83
  %.247 = phi i64 [ %.043, %89 ], [ %.045, %83 ]
  %91 = icmp ugt i64 %.3, %.039
  br i1 %91, label %92, label %93

92:                                               ; preds = %90
  br label %93

93:                                               ; preds = %92, %90
  %.241 = phi i64 [ %.3, %92 ], [ %.039, %90 ]
  br label %94

94:                                               ; preds = %93, %69
  %.146 = phi i64 [ %.247, %93 ], [ %.045, %69 ]
  %.140 = phi i64 [ %.241, %93 ], [ %.039, %69 ]
  %95 = add nuw nsw i64 %.042, 1
  br label %64, !llvm.loop !14

96:                                               ; preds = %64
  %97 = icmp ugt i64 %.039, 32
  br i1 %97, label %98, label %101

98:                                               ; preds = %96
  %99 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %100 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %99)
  call void @exit(i32 noundef 1) #9
  unreachable

101:                                              ; preds = %96
  %102 = icmp eq i64 %.045, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %101
  %104 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %105 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %104)
  call void @exit(i32 noundef 1) #9
  unreachable

106:                                              ; preds = %101
  br label %107

107:                                              ; preds = %146, %106
  %.134 = phi ptr [ %0, %106 ], [ %147, %146 ]
  %.028 = phi i64 [ 0, %106 ], [ %.129, %146 ]
  %.024 = phi i8 [ 0, %106 ], [ %.125, %146 ]
  %.16 = phi i64 [ 0, %106 ], [ %148, %146 ]
  %.01 = phi i32 [ -1, %106 ], [ %.1, %146 ]
  %108 = icmp ult i64 %.16, %1
  br i1 %108, label %109, label %149

109:                                              ; preds = %107
  %110 = load i8, ptr %.134, align 1
  %111 = zext i8 %110 to i64
  %112 = getelementptr inbounds nuw i8, ptr %7, i64 %111
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i32
  %115 = add nsw i32 %114, -1
  %116 = shl nuw i32 1, %115
  %117 = sext i32 %116 to i64
  br label %118

118:                                              ; preds = %143, %109
  %119 = phi i8 [ %110, %109 ], [ %.pre-phi.in, %143 ]
  %120 = phi i8 [ %113, %109 ], [ %.pre, %143 ]
  %.129 = phi i64 [ %.028, %109 ], [ %.230, %143 ]
  %.125 = phi i8 [ %.024, %109 ], [ %.327, %143 ]
  %.015 = phi i64 [ %117, %109 ], [ %144, %143 ]
  %.4 = phi i64 [ 0, %109 ], [ %145, %143 ]
  %.1 = phi i32 [ %.01, %109 ], [ %.2, %143 ]
  %121 = zext i8 %120 to i64
  %122 = icmp ult i64 %.4, %121
  br i1 %122, label %123, label %146

123:                                              ; preds = %118
  %124 = icmp eq i32 %.1, 7
  br i1 %124, label %125, label %133

125:                                              ; preds = %123
  %126 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %126, align 1
  %127 = add i64 %.129, 1
  %128 = icmp eq i64 %127, %1
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %131 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %130)
  call void @exit(i32 noundef 1) #9
  unreachable

132:                                              ; preds = %125
  %.pre1 = load i8, ptr %.134, align 1
  br label %136

133:                                              ; preds = %123
  %134 = add nsw i32 %.1, 1
  %135 = shl i8 %.125, 1
  br label %136

136:                                              ; preds = %133, %132
  %.pre-phi.in = phi i8 [ %119, %133 ], [ %.pre1, %132 ]
  %.230 = phi i64 [ %.129, %133 ], [ %127, %132 ]
  %.226 = phi i8 [ %135, %133 ], [ 0, %132 ]
  %.2 = phi i32 [ %134, %133 ], [ 0, %132 ]
  %.pre-phi = zext i8 %.pre-phi.in to i64
  %137 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.pre-phi
  %138 = load i32, ptr %137, align 4
  %139 = zext i32 %138 to i64
  %140 = and i64 %.015, %139
  %.not7 = icmp eq i64 %140, 0
  br i1 %.not7, label %143, label %141

141:                                              ; preds = %136
  %142 = or disjoint i8 %.226, 1
  br label %143

143:                                              ; preds = %141, %136
  %.327 = phi i8 [ %142, %141 ], [ %.226, %136 ]
  %144 = lshr i64 %.015, 1
  %145 = add i64 %.4, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %118, !llvm.loop !15

146:                                              ; preds = %118
  %147 = getelementptr inbounds nuw i8, ptr %.134, i64 1
  %148 = add i64 %.16, 1
  br label %107, !llvm.loop !16

149:                                              ; preds = %107
  %150 = sub nsw i32 7, %.01
  %151 = zext i8 %.024 to i32
  %152 = shl i32 %151, %150
  %153 = trunc i32 %152 to i8
  %154 = getelementptr inbounds nuw i8, ptr %11, i64 %.028
  store i8 %153, ptr %154, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %155

155:                                              ; preds = %185, %149
  %.27 = phi i64 [ 0, %149 ], [ %186, %185 ]
  %.0 = phi ptr [ %9, %149 ], [ %159, %185 ]
  %156 = icmp samesign ult i64 %.27, 256
  br i1 %156, label %157, label %187

157:                                              ; preds = %155
  %158 = trunc nuw i64 %.27 to i8
  store i8 %158, ptr %.0, align 1
  %159 = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %160 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.27
  %161 = load i32, ptr %160, align 4
  %162 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %163 = load i8, ptr %162, align 1
  %164 = zext i8 %163 to i32
  %165 = or i32 %161, %164
  %.not5 = icmp eq i32 %165, 0
  br i1 %.not5, label %185, label %166

166:                                              ; preds = %157
  %167 = add nsw i32 %164, -1
  %168 = shl nuw i32 1, %167
  %169 = sext i32 %168 to i64
  br label %170

170:                                              ; preds = %180, %166
  %.019 = phi i32 [ 0, %166 ], [ %.120, %180 ]
  %.116 = phi i64 [ %169, %166 ], [ %181, %180 ]
  %.5 = phi i64 [ 0, %166 ], [ %182, %180 ]
  %171 = zext i8 %163 to i64
  %172 = icmp ult i64 %.5, %171
  br i1 %172, label %173, label %183

173:                                              ; preds = %170
  %174 = shl i32 %.019, 1
  %175 = or disjoint i32 %174, 1
  %176 = zext i32 %161 to i64
  %177 = and i64 %.116, %176
  %.not6 = icmp eq i64 %177, 0
  br i1 %.not6, label %180, label %178

178:                                              ; preds = %173
  %179 = add i32 %174, 2
  br label %180

180:                                              ; preds = %178, %173
  %.120 = phi i32 [ %179, %178 ], [ %175, %173 ]
  %181 = lshr i64 %.116, 1
  %182 = add i64 %.5, 1
  br label %170, !llvm.loop !17

183:                                              ; preds = %170
  %184 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.27
  store i32 %.019, ptr %184, align 4
  br label %185

185:                                              ; preds = %183, %157
  %186 = add nuw nsw i64 %.27, 1
  br label %155, !llvm.loop !18

187:                                              ; preds = %155
  br label %188

188:                                              ; preds = %212, %187
  %.6 = phi i64 [ 1, %187 ], [ %215, %212 ]
  %189 = icmp samesign ult i64 %.6, 256
  br i1 %189, label %190, label %216

190:                                              ; preds = %188
  %191 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.6
  %192 = load i32, ptr %191, align 4
  %193 = getelementptr inbounds nuw i8, ptr %9, i64 %.6
  %194 = load i8, ptr %193, align 1
  br label %195

195:                                              ; preds = %203, %190
  %.38 = phi i64 [ %.6, %190 ], [ %211, %203 ]
  %.not4 = icmp eq i64 %.38, 0
  br i1 %.not4, label %201, label %196

196:                                              ; preds = %195
  %197 = getelementptr [4 x i8], ptr %8, i64 %.38
  %198 = getelementptr i8, ptr %197, i64 -4
  %199 = load i32, ptr %198, align 4
  %200 = icmp ugt i32 %199, %192
  br label %201

201:                                              ; preds = %196, %195
  %202 = phi i1 [ false, %195 ], [ %200, %196 ]
  br i1 %202, label %203, label %212

203:                                              ; preds = %201
  %204 = add i64 %.38, -1
  %205 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %204
  %206 = load i32, ptr %205, align 4
  %207 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %206, ptr %207, align 4
  %208 = getelementptr inbounds nuw i8, ptr %9, i64 %204
  %209 = load i8, ptr %208, align 1
  %210 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %209, ptr %210, align 1
  %211 = add i64 %.38, -1
  br label %195, !llvm.loop !19

212:                                              ; preds = %201
  %213 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %192, ptr %213, align 4
  %214 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %194, ptr %214, align 1
  %215 = add nuw nsw i64 %.6, 1
  br label %188, !llvm.loop !20

216:                                              ; preds = %188
  br label %217

217:                                              ; preds = %221, %216
  %.49 = phi i64 [ 0, %216 ], [ %222, %221 ]
  %218 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %219 = load i32, ptr %218, align 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %217
  %222 = add i64 %.49, 1
  br label %217, !llvm.loop !21

223:                                              ; preds = %217
  br label %224

224:                                              ; preds = %254, %223
  %.235 = phi ptr [ %0, %223 ], [ %.336, %254 ]
  %.031 = phi ptr [ %11, %223 ], [ %.132, %254 ]
  %.221 = phi i32 [ 0, %223 ], [ %.423, %254 ]
  %.217 = phi i64 [ 128, %223 ], [ %.318, %254 ]
  %.313 = phi i64 [ 0, %223 ], [ %.414, %254 ]
  %.7 = phi i64 [ %.49, %223 ], [ %.9, %254 ]
  %225 = icmp ult i64 %.313, %1
  br i1 %225, label %226, label %255

226:                                              ; preds = %224
  %227 = shl i32 %.221, 1
  %228 = or disjoint i32 %227, 1
  %229 = load i8, ptr %.031, align 1
  %230 = zext i8 %229 to i64
  %231 = and i64 %.217, %230
  %.not3 = icmp eq i64 %231, 0
  br i1 %.not3, label %234, label %232

232:                                              ; preds = %226
  %233 = add i32 %227, 2
  br label %234

234:                                              ; preds = %232, %226
  %.322 = phi i32 [ %233, %232 ], [ %228, %226 ]
  br label %235

235:                                              ; preds = %239, %234
  %.8 = phi i64 [ %.7, %234 ], [ %240, %239 ]
  %236 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %237 = load i32, ptr %236, align 4
  %238 = icmp ult i32 %237, %.322
  br i1 %238, label %239, label %241

239:                                              ; preds = %235
  %240 = add i64 %.8, 1
  br label %235, !llvm.loop !22

241:                                              ; preds = %235
  %242 = icmp eq i32 %.322, %237
  br i1 %242, label %243, label %248

243:                                              ; preds = %241
  %244 = getelementptr inbounds nuw i8, ptr %9, i64 %.8
  %245 = load i8, ptr %244, align 1
  store i8 %245, ptr %.235, align 1
  %246 = getelementptr inbounds nuw i8, ptr %.235, i64 1
  %247 = add i64 %.313, 1
  br label %248

248:                                              ; preds = %243, %241
  %.336 = phi ptr [ %246, %243 ], [ %.235, %241 ]
  %.423 = phi i32 [ 0, %243 ], [ %.322, %241 ]
  %.414 = phi i64 [ %247, %243 ], [ %.313, %241 ]
  %.9 = phi i64 [ %.49, %243 ], [ %.8, %241 ]
  %249 = icmp ugt i64 %.217, 1
  br i1 %249, label %250, label %252

250:                                              ; preds = %248
  %251 = lshr i64 %.217, 1
  br label %254

252:                                              ; preds = %248
  %253 = getelementptr inbounds nuw i8, ptr %.031, i64 1
  br label %254

254:                                              ; preds = %252, %250
  %.132 = phi ptr [ %.031, %250 ], [ %253, %252 ]
  %.318 = phi i64 [ %251, %250 ], [ 128, %252 ]
  br label %224, !llvm.loop !23

255:                                              ; preds = %224
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

9:                                                ; preds = %41, %4
  %.01 = phi i32 [ %3, %4 ], [ %.0, %41 ]
  %10 = sdiv i32 %2, 2
  %.not = icmp sgt i32 %.01, %10
  br i1 %.not, label %._crit_edge, label %11

._crit_edge:                                      ; preds = %9
  %sext = shl i64 %8, 32
  %.pre = ashr exact i64 %sext, 32
  br label %45

11:                                               ; preds = %9
  %12 = shl nsw i32 %.01, 1
  %13 = icmp slt i32 %12, %2
  br i1 %13, label %14, label %29

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
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = or disjoint i32 %12, 1
  br label %29

29:                                               ; preds = %27, %14, %11
  %.0 = phi i32 [ %28, %27 ], [ %12, %14 ], [ %12, %11 ]
  %sext1 = shl i64 %8, 32
  %30 = ashr exact i64 %sext1, 32
  %31 = getelementptr inbounds [8 x i8], ptr %0, i64 %30
  %32 = load i64, ptr %31, align 8
  %33 = sext i32 %.0 to i64
  %34 = getelementptr [8 x i8], ptr %1, i64 %33
  %35 = getelementptr i8, ptr %34, i64 -8
  %36 = load i64, ptr %35, align 8
  %37 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %36
  %38 = load i64, ptr %37, align 8
  %39 = icmp ult i64 %32, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %45

41:                                               ; preds = %29
  %42 = sext i32 %.01 to i64
  %43 = getelementptr [8 x i8], ptr %1, i64 %42
  %44 = getelementptr i8, ptr %43, i64 -8
  store i64 %36, ptr %44, align 8
  br label %9, !llvm.loop !24

45:                                               ; preds = %._crit_edge, %40
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %30, %40 ]
  %46 = sext i32 %.01 to i64
  %47 = getelementptr [8 x i8], ptr %1, i64 %46
  %48 = getelementptr i8, ptr %47, i64 -8
  store i64 %.pre-phi, ptr %48, align 8
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
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %12, %4
  %.01 = phi i32 [ 1, %4 ], [ %13, %12 ]
  %6 = icmp sge i32 %.01, %0
  br i1 %6, label %14, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %9 = load ptr, ptr %8, align 8
  %10 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(4) @.str.4) #8
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %11, label %12

11:                                               ; preds = %7
  br label %14

12:                                               ; preds = %7
  %13 = add nuw nsw i32 %.01, 1
  br label %5, !llvm.loop !25

14:                                               ; preds = %11, %5
  br label %15

15:                                               ; preds = %14, %2
  %.0 = phi i1 [ %6, %14 ], [ true, %2 ]
  %16 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %17

17:                                               ; preds = %19, %15
  %.12 = phi i32 [ 0, %15 ], [ %20, %19 ]
  %18 = icmp samesign ult i32 %.12, 30
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  call void @compdecomp(ptr noundef %16, i64 noundef 10000000)
  %20 = add nuw nsw i32 %.12, 1
  br label %17, !llvm.loop !26

21:                                               ; preds = %17
  call void @free(ptr noundef %16) #8
  br i1 %.0, label %25, label %22

22:                                               ; preds = %21
  %23 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.5, double noundef 0.000000e+00) #8
  br label %28

25:                                               ; preds = %21
  %26 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.6, double noundef 0.000000e+00) #8
  br label %28

28:                                               ; preds = %25, %22
  %29 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %30 = call i32 @fflush(ptr noundef %29) #8
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
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = add nsw i32 %6, 2147483647
  br label %10

10:                                               ; preds = %8, %0
  %11 = phi i32 [ %9, %8 ], [ %6, %0 ]
  %12 = srem i32 %11, 32
  %13 = sext i32 %12 to i64
  %14 = xor i32 %11, 123459876
  store i32 %14, ptr @seed, align 4
  ret i64 %13
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
