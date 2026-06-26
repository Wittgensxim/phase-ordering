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
  %.not8 = icmp eq i64 %27, 0
  br i1 %.not8, label %31, label %28

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
  br i1 %41, label %42, label %62

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
  %54 = getelementptr [8 x i8], ptr %3, i64 %.212
  %55 = getelementptr i8, ptr %54, i64 2040
  store i64 %53, ptr %55, align 8
  %56 = trunc i64 %.212 to i32
  %57 = add i32 %56, 255
  %58 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %44
  store i32 %57, ptr %58, align 4
  %59 = sub i32 -255, %56
  %60 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %48
  store i32 %59, ptr %60, align 4
  %61 = add i64 %.212, 255
  store i64 %61, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %47, i32 noundef 1)
  br label %40, !llvm.loop !12

62:                                               ; preds = %40
  %63 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212
  %64 = getelementptr inbounds nuw i8, ptr %63, i64 1024
  store i32 0, ptr %64, align 4
  br label %65

65:                                               ; preds = %95, %62
  %.045 = phi i64 [ 0, %62 ], [ %.146, %95 ]
  %.042 = phi i64 [ 0, %62 ], [ %96, %95 ]
  %.039 = phi i64 [ 0, %62 ], [ %.140, %95 ]
  %66 = icmp samesign ult i64 %.042, 256
  br i1 %66, label %67, label %97

67:                                               ; preds = %65
  %68 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.042
  %69 = load i64, ptr %68, align 8
  %.not6 = icmp eq i64 %69, 0
  br i1 %.not6, label %70, label %73

70:                                               ; preds = %67
  %71 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 0, ptr %71, align 4
  %72 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 0, ptr %72, align 1
  br label %95

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %80, %73
  %.043 = phi i64 [ 0, %73 ], [ %.144, %80 ]
  %.042.pn = phi i64 [ %.042, %73 ], [ %81, %80 ]
  %.05 = phi i64 [ 1, %73 ], [ %82, %80 ]
  %.3 = phi i64 [ 0, %73 ], [ %83, %80 ]
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.042.pn
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %84, label %75

75:                                               ; preds = %74
  %76 = icmp slt i32 %.037, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %75
  %78 = add i64 %.043, %.05
  %79 = sub nsw i32 0, %.037
  br label %80

80:                                               ; preds = %77, %75
  %.144 = phi i64 [ %78, %77 ], [ %.043, %75 ]
  %.138 = phi i32 [ %79, %77 ], [ %.037, %75 ]
  %81 = zext nneg i32 %.138 to i64
  %82 = shl i64 %.05, 1
  %83 = add i64 %.3, 1
  br label %74, !llvm.loop !13

84:                                               ; preds = %74
  %85 = trunc i64 %.043 to i32
  %86 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 %85, ptr %86, align 4
  %87 = trunc i64 %.3 to i8
  %88 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 %87, ptr %88, align 1
  %89 = icmp ugt i64 %.043, %.045
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %90, %84
  %.247 = phi i64 [ %.043, %90 ], [ %.045, %84 ]
  %92 = icmp ugt i64 %.3, %.039
  br i1 %92, label %93, label %94

93:                                               ; preds = %91
  br label %94

94:                                               ; preds = %93, %91
  %.241 = phi i64 [ %.3, %93 ], [ %.039, %91 ]
  br label %95

95:                                               ; preds = %94, %70
  %.146 = phi i64 [ %.247, %94 ], [ %.045, %70 ]
  %.140 = phi i64 [ %.241, %94 ], [ %.039, %70 ]
  %96 = add nuw nsw i64 %.042, 1
  br label %65, !llvm.loop !14

97:                                               ; preds = %65
  %98 = icmp ugt i64 %.039, 32
  br i1 %98, label %99, label %102

99:                                               ; preds = %97
  %100 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %101 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %100)
  call void @exit(i32 noundef 1) #9
  unreachable

102:                                              ; preds = %97
  %103 = icmp eq i64 %.045, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %102
  %105 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %106 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %105)
  call void @exit(i32 noundef 1) #9
  unreachable

107:                                              ; preds = %102
  br label %108

108:                                              ; preds = %150, %107
  %.134 = phi ptr [ %0, %107 ], [ %151, %150 ]
  %.028 = phi i64 [ 0, %107 ], [ %.129, %150 ]
  %.024 = phi i8 [ 0, %107 ], [ %.125, %150 ]
  %.16 = phi i64 [ 0, %107 ], [ %152, %150 ]
  %.01 = phi i32 [ -1, %107 ], [ %.1, %150 ]
  %109 = icmp ult i64 %.16, %1
  br i1 %109, label %110, label %153

110:                                              ; preds = %108
  %111 = load i8, ptr %.134, align 1
  %112 = zext i8 %111 to i64
  %113 = getelementptr inbounds nuw i8, ptr %7, i64 %112
  %114 = load i8, ptr %113, align 1
  %115 = zext i8 %114 to i32
  %116 = add nsw i32 %115, -1
  %117 = shl nuw i32 1, %116
  %118 = sext i32 %117 to i64
  br label %119

119:                                              ; preds = %147, %110
  %120 = phi i8 [ %111, %110 ], [ %140, %147 ]
  %121 = phi i8 [ %114, %110 ], [ %.pre, %147 ]
  %.129 = phi i64 [ %.028, %110 ], [ %.230, %147 ]
  %.125 = phi i8 [ %.024, %110 ], [ %.327, %147 ]
  %.015 = phi i64 [ %118, %110 ], [ %148, %147 ]
  %.4 = phi i64 [ 0, %110 ], [ %149, %147 ]
  %.1 = phi i32 [ %.01, %110 ], [ %.2, %147 ]
  %122 = zext i8 %120 to i64
  %123 = getelementptr inbounds nuw i8, ptr %7, i64 %122
  %124 = zext i8 %121 to i64
  %125 = icmp ult i64 %.4, %124
  br i1 %125, label %126, label %150

126:                                              ; preds = %119
  %127 = icmp eq i32 %.1, 7
  br i1 %127, label %128, label %136

128:                                              ; preds = %126
  %129 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %129, align 1
  %130 = add i64 %.129, 1
  %131 = icmp eq i64 %130, %1
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %134 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %133)
  call void @exit(i32 noundef 1) #9
  unreachable

135:                                              ; preds = %128
  %.pre9 = load i8, ptr %.134, align 1
  %.pre10 = zext i8 %.pre9 to i64
  br label %139

136:                                              ; preds = %126
  %137 = add nsw i32 %.1, 1
  %138 = shl i8 %.125, 1
  br label %139

139:                                              ; preds = %136, %135
  %.pre-phi = phi i64 [ %122, %136 ], [ %.pre10, %135 ]
  %140 = phi i8 [ %.pre9, %135 ], [ %120, %136 ]
  %.230 = phi i64 [ %130, %135 ], [ %.129, %136 ]
  %.226 = phi i8 [ 0, %135 ], [ %138, %136 ]
  %.2 = phi i32 [ 0, %135 ], [ %137, %136 ]
  %141 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.pre-phi
  %142 = load i32, ptr %141, align 4
  %143 = zext i32 %142 to i64
  %144 = and i64 %.015, %143
  %.not5 = icmp eq i64 %144, 0
  br i1 %.not5, label %147, label %145

145:                                              ; preds = %139
  %146 = or disjoint i8 %.226, 1
  br label %147

147:                                              ; preds = %145, %139
  %.327 = phi i8 [ %146, %145 ], [ %.226, %139 ]
  %148 = lshr i64 %.015, 1
  %149 = add i64 %.4, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %119, !llvm.loop !15

150:                                              ; preds = %119
  %151 = getelementptr inbounds nuw i8, ptr %.134, i64 1
  %152 = add i64 %.16, 1
  br label %108, !llvm.loop !16

153:                                              ; preds = %108
  %154 = sub nsw i32 7, %.01
  %155 = zext i8 %.024 to i32
  %156 = shl i32 %155, %154
  %157 = trunc i32 %156 to i8
  %158 = getelementptr inbounds nuw i8, ptr %11, i64 %.028
  store i8 %157, ptr %158, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %159

159:                                              ; preds = %189, %153
  %.27 = phi i64 [ 0, %153 ], [ %190, %189 ]
  %.0 = phi ptr [ %9, %153 ], [ %163, %189 ]
  %160 = icmp samesign ult i64 %.27, 256
  br i1 %160, label %161, label %191

161:                                              ; preds = %159
  %162 = trunc nuw i64 %.27 to i8
  store i8 %162, ptr %.0, align 1
  %163 = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %164 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.27
  %165 = load i32, ptr %164, align 4
  %166 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %167 = load i8, ptr %166, align 1
  %168 = zext i8 %167 to i32
  %169 = or i32 %165, %168
  %.not3 = icmp eq i32 %169, 0
  br i1 %.not3, label %189, label %170

170:                                              ; preds = %161
  %171 = add nsw i32 %168, -1
  %172 = shl nuw i32 1, %171
  %173 = sext i32 %172 to i64
  br label %174

174:                                              ; preds = %184, %170
  %.019 = phi i32 [ 0, %170 ], [ %.120, %184 ]
  %.116 = phi i64 [ %173, %170 ], [ %185, %184 ]
  %.5 = phi i64 [ 0, %170 ], [ %186, %184 ]
  %175 = zext i8 %167 to i64
  %176 = icmp ult i64 %.5, %175
  br i1 %176, label %177, label %187

177:                                              ; preds = %174
  %178 = shl i32 %.019, 1
  %179 = or disjoint i32 %178, 1
  %180 = zext i32 %165 to i64
  %181 = and i64 %.116, %180
  %.not4 = icmp eq i64 %181, 0
  br i1 %.not4, label %184, label %182

182:                                              ; preds = %177
  %183 = add i32 %178, 2
  br label %184

184:                                              ; preds = %182, %177
  %.120 = phi i32 [ %183, %182 ], [ %179, %177 ]
  %185 = lshr i64 %.116, 1
  %186 = add i64 %.5, 1
  br label %174, !llvm.loop !17

187:                                              ; preds = %174
  %188 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.27
  store i32 %.019, ptr %188, align 4
  br label %189

189:                                              ; preds = %187, %161
  %190 = add nuw nsw i64 %.27, 1
  br label %159, !llvm.loop !18

191:                                              ; preds = %159
  br label %192

192:                                              ; preds = %215, %191
  %.6 = phi i64 [ 1, %191 ], [ %218, %215 ]
  %193 = icmp samesign ult i64 %.6, 256
  br i1 %193, label %194, label %219

194:                                              ; preds = %192
  %195 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.6
  %196 = load i32, ptr %195, align 4
  %197 = getelementptr inbounds nuw i8, ptr %9, i64 %.6
  %198 = load i8, ptr %197, align 1
  br label %199

199:                                              ; preds = %207, %194
  %.38 = phi i64 [ %.6, %194 ], [ %214, %207 ]
  %.not2 = icmp eq i64 %.38, 0
  br i1 %.not2, label %205, label %200

200:                                              ; preds = %199
  %201 = getelementptr [4 x i8], ptr %8, i64 %.38
  %202 = getelementptr i8, ptr %201, i64 -4
  %203 = load i32, ptr %202, align 4
  %204 = icmp ugt i32 %203, %196
  br label %205

205:                                              ; preds = %200, %199
  %206 = phi i1 [ false, %199 ], [ %204, %200 ]
  br i1 %206, label %207, label %215

207:                                              ; preds = %205
  %208 = getelementptr [4 x i8], ptr %8, i64 %.38
  %209 = getelementptr i8, ptr %208, i64 -4
  %210 = load i32, ptr %209, align 4
  store i32 %210, ptr %208, align 4
  %211 = getelementptr i8, ptr %9, i64 %.38
  %212 = getelementptr i8, ptr %211, i64 -1
  %213 = load i8, ptr %212, align 1
  store i8 %213, ptr %211, align 1
  %214 = add i64 %.38, -1
  br label %199, !llvm.loop !19

215:                                              ; preds = %205
  %216 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %196, ptr %216, align 4
  %217 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %198, ptr %217, align 1
  %218 = add nuw nsw i64 %.6, 1
  br label %192, !llvm.loop !20

219:                                              ; preds = %192
  br label %220

220:                                              ; preds = %224, %219
  %.49 = phi i64 [ 0, %219 ], [ %225, %224 ]
  %221 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %222 = load i32, ptr %221, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %220
  %225 = add i64 %.49, 1
  br label %220, !llvm.loop !21

226:                                              ; preds = %220
  br label %227

227:                                              ; preds = %257, %226
  %.235 = phi ptr [ %0, %226 ], [ %.336, %257 ]
  %.031 = phi ptr [ %11, %226 ], [ %.132, %257 ]
  %.221 = phi i32 [ 0, %226 ], [ %.423, %257 ]
  %.217 = phi i64 [ 128, %226 ], [ %.318, %257 ]
  %.313 = phi i64 [ 0, %226 ], [ %.414, %257 ]
  %.7 = phi i64 [ %.49, %226 ], [ %.9, %257 ]
  %228 = icmp ult i64 %.313, %1
  br i1 %228, label %229, label %258

229:                                              ; preds = %227
  %230 = shl i32 %.221, 1
  %231 = or disjoint i32 %230, 1
  %232 = load i8, ptr %.031, align 1
  %233 = zext i8 %232 to i64
  %234 = and i64 %.217, %233
  %.not1 = icmp eq i64 %234, 0
  br i1 %.not1, label %237, label %235

235:                                              ; preds = %229
  %236 = add i32 %230, 2
  br label %237

237:                                              ; preds = %235, %229
  %.322 = phi i32 [ %236, %235 ], [ %231, %229 ]
  br label %238

238:                                              ; preds = %242, %237
  %.8 = phi i64 [ %.7, %237 ], [ %243, %242 ]
  %239 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %240 = load i32, ptr %239, align 4
  %241 = icmp ult i32 %240, %.322
  br i1 %241, label %242, label %244

242:                                              ; preds = %238
  %243 = add i64 %.8, 1
  br label %238, !llvm.loop !22

244:                                              ; preds = %238
  %245 = icmp eq i32 %.322, %240
  br i1 %245, label %246, label %251

246:                                              ; preds = %244
  %247 = getelementptr inbounds nuw i8, ptr %9, i64 %.8
  %248 = load i8, ptr %247, align 1
  store i8 %248, ptr %.235, align 1
  %249 = getelementptr inbounds nuw i8, ptr %.235, i64 1
  %250 = add i64 %.313, 1
  br label %251

251:                                              ; preds = %246, %244
  %.336 = phi ptr [ %249, %246 ], [ %.235, %244 ]
  %.423 = phi i32 [ 0, %246 ], [ %.322, %244 ]
  %.414 = phi i64 [ %250, %246 ], [ %.313, %244 ]
  %.9 = phi i64 [ %.49, %246 ], [ %.8, %244 ]
  %252 = icmp ugt i64 %.217, 1
  br i1 %252, label %253, label %255

253:                                              ; preds = %251
  %254 = lshr i64 %.217, 1
  br label %257

255:                                              ; preds = %251
  %256 = getelementptr inbounds nuw i8, ptr %.031, i64 1
  br label %257

257:                                              ; preds = %255, %253
  %.132 = phi ptr [ %.031, %253 ], [ %256, %255 ]
  %.318 = phi i64 [ %254, %253 ], [ 128, %255 ]
  br label %227, !llvm.loop !23

258:                                              ; preds = %227
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
  br i1 %.not, label %._crit_edge, label %11

._crit_edge:                                      ; preds = %9
  %.pre = shl i64 %8, 32
  br label %43

11:                                               ; preds = %9
  %12 = shl nsw i32 %.01, 1
  %13 = icmp slt i32 %12, %2
  br i1 %13, label %14, label %27

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
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = or disjoint i32 %12, 1
  br label %27

27:                                               ; preds = %25, %14, %11
  %.0 = phi i32 [ %26, %25 ], [ %12, %14 ], [ %12, %11 ]
  %sext = shl i64 %8, 32
  %28 = ashr exact i64 %sext, 29
  %29 = getelementptr inbounds i8, ptr %0, i64 %28
  %30 = load i64, ptr %29, align 8
  %31 = sext i32 %.0 to i64
  %32 = getelementptr [8 x i8], ptr %1, i64 %31
  %33 = getelementptr i8, ptr %32, i64 -8
  %34 = load i64, ptr %33, align 8
  %35 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %34
  %36 = load i64, ptr %35, align 8
  %37 = icmp ult i64 %30, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %43

39:                                               ; preds = %27
  %40 = sext i32 %.01 to i64
  %41 = getelementptr [8 x i8], ptr %1, i64 %40
  %42 = getelementptr i8, ptr %41, i64 -8
  store i64 %34, ptr %42, align 8
  br label %9, !llvm.loop !24

43:                                               ; preds = %._crit_edge, %38
  %sext1.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %sext, %38 ]
  %44 = ashr exact i64 %sext1.pre-phi, 32
  %45 = sext i32 %.01 to i64
  %46 = getelementptr [8 x i8], ptr %1, i64 %45
  %47 = getelementptr i8, ptr %46, i64 -8
  store i64 %44, ptr %47, align 8
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
  store i32 %6, ptr @seed, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = add nsw i32 %6, 2147483647
  store i32 %9, ptr @seed, align 4
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
