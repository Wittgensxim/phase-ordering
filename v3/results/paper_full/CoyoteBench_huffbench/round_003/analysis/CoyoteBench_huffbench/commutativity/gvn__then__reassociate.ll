; ModuleID = 'results\paper_full\CoyoteBench_huffbench\round_002\output.ll'
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

22:                                               ; preds = %30, %12
  %.010 = phi i64 [ %.111, %30 ], [ 0, %12 ]
  %.13 = phi i64 [ %31, %30 ], [ 0, %12 ]
  %23 = icmp samesign ult i64 %.13, 256
  br i1 %23, label %24, label %32

24:                                               ; preds = %22
  %25 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.13
  %26 = load i64, ptr %25, align 8
  %.not8 = icmp eq i64 %26, 0
  br i1 %.not8, label %30, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.010
  store i64 %.13, ptr %28, align 8
  %29 = add i64 %.010, 1
  br label %30

30:                                               ; preds = %27, %24
  %.111 = phi i64 [ %29, %27 ], [ %.010, %24 ]
  %31 = add nuw nsw i64 %.13, 1
  br label %22, !llvm.loop !10

32:                                               ; preds = %33, %22
  %.24 = phi i64 [ %36, %33 ], [ %.010, %22 ]
  %.not = icmp eq i64 %.24, 0
  br i1 %.not, label %37, label %33

33:                                               ; preds = %32
  %34 = trunc i64 %.010 to i32
  %35 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %34, i32 noundef %35)
  %36 = add i64 %.24, -1
  br label %32, !llvm.loop !11

37:                                               ; preds = %39, %32
  %.212 = phi i64 [ %40, %39 ], [ %.010, %32 ]
  %38 = icmp ugt i64 %.212, 1
  br i1 %38, label %39, label %58

39:                                               ; preds = %37
  %40 = add i64 %.212, -1
  %41 = load i64, ptr %4, align 16
  %42 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %40
  %43 = load i64, ptr %42, align 8
  store i64 %43, ptr %4, align 16
  %44 = trunc i64 %40 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %44, i32 noundef 1)
  %45 = load i64, ptr %4, align 16
  %46 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %45
  %47 = load i64, ptr %46, align 8
  %48 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %41
  %49 = load i64, ptr %48, align 8
  %50 = add i64 %49, %47
  %51 = add i64 %.212, 255
  %52 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %51
  store i64 %50, ptr %52, align 8
  %53 = trunc i64 %51 to i32
  %54 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %41
  store i32 %53, ptr %54, align 4
  %55 = trunc i64 %.212 to i32
  %56 = sub i32 -255, %55
  %57 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %45
  store i32 %56, ptr %57, align 4
  store i64 %51, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %44, i32 noundef 1)
  br label %37, !llvm.loop !12

58:                                               ; preds = %37
  %59 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212
  %60 = getelementptr inbounds nuw i8, ptr %59, i64 1024
  store i32 0, ptr %60, align 4
  br label %61

61:                                               ; preds = %82, %58
  %.045 = phi i64 [ 0, %58 ], [ %.146, %82 ]
  %.042 = phi i64 [ 0, %58 ], [ %83, %82 ]
  %.039 = phi i64 [ 0, %58 ], [ %.140, %82 ]
  %62 = icmp samesign ult i64 %.042, 256
  br i1 %62, label %63, label %84

63:                                               ; preds = %61
  %64 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.042
  %65 = load i64, ptr %64, align 8
  %.not6 = icmp eq i64 %65, 0
  br i1 %.not6, label %66, label %69

66:                                               ; preds = %63
  %67 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 0, ptr %67, align 4
  %68 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 0, ptr %68, align 1
  br label %82

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %71, %69
  %.043 = phi i64 [ 0, %69 ], [ %.144, %71 ]
  %.042.pn = phi i64 [ %.042, %69 ], [ %74, %71 ]
  %.05 = phi i64 [ 1, %69 ], [ %75, %71 ]
  %.3 = phi i64 [ 0, %69 ], [ %76, %71 ]
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.042.pn
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %77, label %71

71:                                               ; preds = %70
  %72 = icmp slt i32 %.037, 0
  %73 = select i1 %72, i64 %.05, i64 0
  %.144 = add i64 %73, %.043
  %.138 = call i32 @llvm.abs.i32(i32 %.037, i1 true)
  %74 = zext nneg i32 %.138 to i64
  %75 = shl i64 %.05, 1
  %76 = add i64 %.3, 1
  br label %70, !llvm.loop !13

77:                                               ; preds = %70
  %78 = trunc i64 %.043 to i32
  %79 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 %78, ptr %79, align 4
  %80 = trunc i64 %.3 to i8
  %81 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 %80, ptr %81, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043, i64 %.045)
  %.241 = call i64 @llvm.umax.i64(i64 %.3, i64 %.039)
  br label %82

82:                                               ; preds = %77, %66
  %.146 = phi i64 [ %spec.select, %77 ], [ %.045, %66 ]
  %.140 = phi i64 [ %.241, %77 ], [ %.039, %66 ]
  %83 = add nuw nsw i64 %.042, 1
  br label %61, !llvm.loop !14

84:                                               ; preds = %61
  %85 = icmp ugt i64 %.039, 32
  br i1 %85, label %86, label %89

86:                                               ; preds = %84
  %87 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %88 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %87)
  call void @exit(i32 noundef 1) #11
  unreachable

89:                                               ; preds = %84
  %90 = icmp eq i64 %.045, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %89
  %92 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %93 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %92)
  call void @exit(i32 noundef 1) #11
  unreachable

94:                                               ; preds = %132, %89
  %.134 = phi ptr [ %133, %132 ], [ %0, %89 ]
  %.028 = phi i64 [ %.129, %132 ], [ 0, %89 ]
  %.024 = phi i8 [ %.125, %132 ], [ 0, %89 ]
  %.16 = phi i64 [ %134, %132 ], [ 0, %89 ]
  %.01 = phi i32 [ %.1, %132 ], [ -1, %89 ]
  %95 = icmp ult i64 %.16, %1
  br i1 %95, label %96, label %135

96:                                               ; preds = %94
  %97 = load i8, ptr %.134, align 1
  %98 = zext i8 %97 to i64
  %99 = getelementptr inbounds nuw i8, ptr %7, i64 %98
  %100 = load i8, ptr %99, align 1
  %101 = zext i8 %100 to i32
  %102 = add nsw i32 %101, -1
  %103 = shl nuw i32 1, %102
  %104 = sext i32 %103 to i64
  br label %105

105:                                              ; preds = %123, %96
  %106 = phi i8 [ %97, %96 ], [ %124, %123 ]
  %107 = phi i8 [ %100, %96 ], [ %.pre, %123 ]
  %.129 = phi i64 [ %.028, %96 ], [ %.230, %123 ]
  %.125 = phi i8 [ %.024, %96 ], [ %.327, %123 ]
  %.015 = phi i64 [ %104, %96 ], [ %130, %123 ]
  %.4 = phi i64 [ 0, %96 ], [ %131, %123 ]
  %.1 = phi i32 [ %.01, %96 ], [ %.2, %123 ]
  %108 = zext i8 %106 to i64
  %109 = zext i8 %107 to i64
  %110 = icmp ult i64 %.4, %109
  br i1 %110, label %111, label %132

111:                                              ; preds = %105
  %112 = icmp eq i32 %.1, 7
  br i1 %112, label %113, label %120

113:                                              ; preds = %111
  %114 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %114, align 1
  %115 = add i64 %.129, 1
  %116 = icmp eq i64 %115, %1
  br i1 %116, label %117, label %._crit_edge

._crit_edge:                                      ; preds = %113
  %.pre1 = load i8, ptr %.134, align 1
  %.pre2 = zext i8 %.pre1 to i64
  br label %123

117:                                              ; preds = %113
  %118 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %119 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %118)
  call void @exit(i32 noundef 1) #11
  unreachable

120:                                              ; preds = %111
  %121 = add nsw i32 %.1, 1
  %122 = shl i8 %.125, 1
  br label %123

123:                                              ; preds = %._crit_edge, %120
  %.pre-phi = phi i64 [ %.pre2, %._crit_edge ], [ %108, %120 ]
  %124 = phi i8 [ %106, %120 ], [ %.pre1, %._crit_edge ]
  %.230 = phi i64 [ %.129, %120 ], [ %115, %._crit_edge ]
  %.226 = phi i8 [ %122, %120 ], [ 0, %._crit_edge ]
  %.2 = phi i32 [ %121, %120 ], [ 0, %._crit_edge ]
  %125 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.pre-phi
  %126 = load i32, ptr %125, align 4
  %127 = zext i32 %126 to i64
  %128 = and i64 %127, %.015
  %.not5 = icmp ne i64 %128, 0
  %129 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %129, %.226
  %130 = lshr i64 %.015, 1
  %131 = add i64 %.4, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %105, !llvm.loop !15

132:                                              ; preds = %105
  %133 = getelementptr inbounds nuw i8, ptr %.134, i64 1
  %134 = add i64 %.16, 1
  br label %94, !llvm.loop !16

135:                                              ; preds = %94
  %136 = sub nsw i32 7, %.01
  %137 = zext i8 %.024 to i32
  %138 = shl i32 %137, %136
  %139 = trunc i32 %138 to i8
  %140 = getelementptr inbounds nuw i8, ptr %11, i64 %.028
  store i8 %139, ptr %140, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %141

141:                                              ; preds = %169, %135
  %.27 = phi i64 [ 0, %135 ], [ %170, %169 ]
  %.0 = phi ptr [ %9, %135 ], [ %145, %169 ]
  %142 = icmp samesign ult i64 %.27, 256
  br i1 %142, label %143, label %171

143:                                              ; preds = %141
  %144 = trunc nuw i64 %.27 to i8
  store i8 %144, ptr %.0, align 1
  %145 = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %146 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.27
  %147 = load i32, ptr %146, align 4
  %148 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %149 = load i8, ptr %148, align 1
  %150 = zext i8 %149 to i32
  %151 = or i32 %150, %147
  %.not3 = icmp eq i32 %151, 0
  br i1 %.not3, label %169, label %152

152:                                              ; preds = %143
  %153 = add nsw i32 %150, -1
  %154 = shl nuw i32 1, %153
  %155 = sext i32 %154 to i64
  br label %156

156:                                              ; preds = %159, %152
  %.019 = phi i32 [ 0, %152 ], [ %spec.select1, %159 ]
  %.116 = phi i64 [ %155, %152 ], [ %165, %159 ]
  %.5 = phi i64 [ 0, %152 ], [ %166, %159 ]
  %157 = zext i8 %149 to i64
  %158 = icmp ult i64 %.5, %157
  br i1 %158, label %159, label %167

159:                                              ; preds = %156
  %160 = shl i32 %.019, 1
  %161 = or disjoint i32 %160, 1
  %162 = zext i32 %147 to i64
  %163 = and i64 %.116, %162
  %.not4 = icmp eq i64 %163, 0
  %164 = add i32 %160, 2
  %spec.select1 = select i1 %.not4, i32 %161, i32 %164
  %165 = lshr i64 %.116, 1
  %166 = add i64 %.5, 1
  br label %156, !llvm.loop !17

167:                                              ; preds = %156
  %168 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.27
  store i32 %.019, ptr %168, align 4
  br label %169

169:                                              ; preds = %167, %143
  %170 = add nuw nsw i64 %.27, 1
  br label %141, !llvm.loop !18

171:                                              ; preds = %.critedge, %141
  %.6 = phi i64 [ %191, %.critedge ], [ 1, %141 ]
  %172 = icmp samesign ult i64 %.6, 256
  br i1 %172, label %173, label %192

173:                                              ; preds = %171
  %174 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.6
  %175 = load i32, ptr %174, align 4
  %176 = getelementptr inbounds nuw i8, ptr %9, i64 %.6
  %177 = load i8, ptr %176, align 1
  br label %178

178:                                              ; preds = %184, %173
  %.38 = phi i64 [ %.6, %173 ], [ %180, %184 ]
  %.not2 = icmp eq i64 %.38, 0
  br i1 %.not2, label %.critedge, label %179

179:                                              ; preds = %178
  %180 = add i64 %.38, -1
  %181 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %180
  %182 = load i32, ptr %181, align 4
  %183 = icmp ugt i32 %182, %175
  br i1 %183, label %184, label %.critedge

184:                                              ; preds = %179
  %185 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %182, ptr %185, align 4
  %186 = getelementptr inbounds nuw i8, ptr %9, i64 %180
  %187 = load i8, ptr %186, align 1
  %188 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %187, ptr %188, align 1
  br label %178, !llvm.loop !19

.critedge:                                        ; preds = %179, %178
  %189 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %175, ptr %189, align 4
  %190 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %177, ptr %190, align 1
  %191 = add nuw nsw i64 %.6, 1
  br label %171, !llvm.loop !20

192:                                              ; preds = %196, %171
  %.49 = phi i64 [ %197, %196 ], [ 0, %171 ]
  %193 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %194 = load i32, ptr %193, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %192
  %197 = add i64 %.49, 1
  br label %192, !llvm.loop !21

198:                                              ; preds = %220, %192
  %.235 = phi ptr [ %.336, %220 ], [ %0, %192 ]
  %.031 = phi ptr [ %.132, %220 ], [ %11, %192 ]
  %.221 = phi i32 [ %.423, %220 ], [ 0, %192 ]
  %.217 = phi i64 [ %.318, %220 ], [ 128, %192 ]
  %.313 = phi i64 [ %.414, %220 ], [ 0, %192 ]
  %.7 = phi i64 [ %.9, %220 ], [ %.49, %192 ]
  %199 = icmp ult i64 %.313, %1
  br i1 %199, label %200, label %223

200:                                              ; preds = %198
  %201 = shl i32 %.221, 1
  %202 = or disjoint i32 %201, 1
  %203 = load i8, ptr %.031, align 1
  %204 = zext i8 %203 to i64
  %205 = and i64 %204, %.217
  %.not1 = icmp eq i64 %205, 0
  %206 = add i32 %201, 2
  %spec.select2 = select i1 %.not1, i32 %202, i32 %206
  br label %207

207:                                              ; preds = %211, %200
  %.8 = phi i64 [ %.7, %200 ], [ %212, %211 ]
  %208 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %209 = load i32, ptr %208, align 4
  %210 = icmp ult i32 %209, %spec.select2
  br i1 %210, label %211, label %213

211:                                              ; preds = %207
  %212 = add i64 %.8, 1
  br label %207, !llvm.loop !22

213:                                              ; preds = %207
  %214 = icmp eq i32 %spec.select2, %209
  br i1 %214, label %215, label %220

215:                                              ; preds = %213
  %216 = getelementptr inbounds nuw i8, ptr %9, i64 %.8
  %217 = load i8, ptr %216, align 1
  store i8 %217, ptr %.235, align 1
  %218 = getelementptr inbounds nuw i8, ptr %.235, i64 1
  %219 = add i64 %.313, 1
  br label %220

220:                                              ; preds = %215, %213
  %.336 = phi ptr [ %218, %215 ], [ %.235, %213 ]
  %.423 = phi i32 [ 0, %215 ], [ %spec.select2, %213 ]
  %.414 = phi i64 [ %219, %215 ], [ %.313, %213 ]
  %.9 = phi i64 [ %.49, %215 ], [ %.8, %213 ]
  %221 = icmp ult i64 %.217, 2
  %222 = lshr i64 %.217, 1
  %.132.idx = zext i1 %221 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.031, i64 %.132.idx
  %.318 = select i1 %221, i64 128, i64 %222
  br label %198, !llvm.loop !23

223:                                              ; preds = %198
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

9:                                                ; preds = %37, %4
  %.01 = phi i32 [ %3, %4 ], [ %.0, %37 ]
  %10 = sdiv i32 %2, 2
  %.not = icmp sgt i32 %.01, %10
  br i1 %.not, label %._crit_edge, label %11

._crit_edge:                                      ; preds = %9
  %.pre = shl i64 %8, 32
  br label %41

11:                                               ; preds = %9
  %12 = shl nsw i32 %.01, 1
  %13 = icmp slt i32 %12, %2
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = sext i32 %12 to i64
  %16 = getelementptr [8 x i8], ptr %1, i64 %15
  %17 = getelementptr i8, ptr %16, i64 -8
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %18
  %20 = load i64, ptr %19, align 8
  %21 = load i64, ptr %16, align 8
  %22 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %21
  %23 = load i64, ptr %22, align 8
  %24 = icmp ugt i64 %20, %23
  %25 = zext i1 %24 to i32
  %spec.select = or disjoint i32 %25, %12
  br label %26

26:                                               ; preds = %14, %11
  %.0 = phi i32 [ %12, %11 ], [ %spec.select, %14 ]
  %sext = shl i64 %8, 32
  %27 = ashr exact i64 %sext, 29
  %28 = getelementptr inbounds i8, ptr %0, i64 %27
  %29 = load i64, ptr %28, align 8
  %30 = sext i32 %.0 to i64
  %31 = getelementptr [8 x i8], ptr %1, i64 %30
  %32 = getelementptr i8, ptr %31, i64 -8
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %33
  %35 = load i64, ptr %34, align 8
  %36 = icmp ult i64 %29, %35
  br i1 %36, label %split, label %37

37:                                               ; preds = %26
  %38 = sext i32 %.01 to i64
  %39 = getelementptr [8 x i8], ptr %1, i64 %38
  %40 = getelementptr i8, ptr %39, i64 -8
  store i64 %33, ptr %40, align 8
  br label %9, !llvm.loop !24

split:                                            ; preds = %26
  br label %41

41:                                               ; preds = %split, %._crit_edge
  %sext1.pre-phi = phi i64 [ %sext, %split ], [ %.pre, %._crit_edge ]
  %42 = ashr exact i64 %sext1.pre-phi, 32
  %43 = sext i32 %.01 to i64
  %44 = getelementptr [8 x i8], ptr %1, i64 %43
  %45 = getelementptr i8, ptr %44, i64 -8
  store i64 %42, ptr %45, align 8
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

4:                                                ; preds = %10, %2
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

12:                                               ; preds = %6, %4, %2
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
  %3 = sdiv i32 %2, 127773
  %.neg = mul i32 %3, -127773
  %4 = add i32 %.neg, %2
  %5 = mul nsw i32 %4, 16807
  %.neg1 = mul nsw i32 %3, -2836
  %6 = add i32 %5, %.neg1
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = add nsw i32 %6, 2147483647
  br label %10

10:                                               ; preds = %8, %0
  %storemerge = phi i32 [ %9, %8 ], [ %6, %0 ]
  %11 = srem i32 %storemerge, 32
  %12 = sext i32 %11 to i64
  %13 = xor i32 %storemerge, 123459876
  store i32 %13, ptr @seed, align 4
  ret i64 %12
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
