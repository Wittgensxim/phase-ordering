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
  br i1 %13, label %14, label %.preheader6

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

.preheader6:                                      ; preds = %12, %29
  %.010 = phi i64 [ %.111, %29 ], [ 0, %12 ]
  %.13 = phi i64 [ %30, %29 ], [ 0, %12 ]
  %22 = icmp samesign ult i64 %.13, 256
  br i1 %22, label %23, label %.preheader5

23:                                               ; preds = %.preheader6
  %24 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.13
  %25 = load i64, ptr %24, align 8
  %.not8 = icmp eq i64 %25, 0
  br i1 %.not8, label %29, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.010
  store i64 %.13, ptr %27, align 8
  %28 = add i64 %.010, 1
  br label %29

29:                                               ; preds = %26, %23
  %.111 = phi i64 [ %28, %26 ], [ %.010, %23 ]
  %30 = add nuw nsw i64 %.13, 1
  br label %.preheader6, !llvm.loop !10

.preheader5:                                      ; preds = %.preheader6, %31
  %.24 = phi i64 [ %34, %31 ], [ %.010, %.preheader6 ]
  %.not = icmp eq i64 %.24, 0
  br i1 %.not, label %.preheader4, label %31

31:                                               ; preds = %.preheader5
  %32 = trunc i64 %.010 to i32
  %33 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %32, i32 noundef %33)
  %34 = add i64 %.24, -1
  br label %.preheader5, !llvm.loop !11

.preheader4:                                      ; preds = %.preheader5, %36
  %.212 = phi i64 [ %37, %36 ], [ %.010, %.preheader5 ]
  %35 = icmp ugt i64 %.212, 1
  br i1 %35, label %36, label %56

36:                                               ; preds = %.preheader4
  %37 = add i64 %.212, -1
  %38 = load i64, ptr %4, align 16
  %39 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %37
  %40 = load i64, ptr %39, align 8
  store i64 %40, ptr %4, align 16
  %41 = trunc i64 %37 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %41, i32 noundef 1)
  %42 = load i64, ptr %4, align 16
  %43 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %42
  %44 = load i64, ptr %43, align 8
  %45 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %38
  %46 = load i64, ptr %45, align 8
  %47 = add i64 %44, %46
  %48 = add i64 %.212, 255
  %49 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %48
  store i64 %47, ptr %49, align 8
  %50 = trunc i64 %48 to i32
  %51 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %38
  store i32 %50, ptr %51, align 4
  %52 = trunc i64 %.212 to i32
  %53 = sub i32 -255, %52
  %54 = load i64, ptr %4, align 16
  %55 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %54
  store i32 %53, ptr %55, align 4
  store i64 %48, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %41, i32 noundef 1)
  br label %.preheader4, !llvm.loop !12

56:                                               ; preds = %.preheader4
  %57 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212
  %58 = getelementptr inbounds nuw i8, ptr %57, i64 1024
  store i32 0, ptr %58, align 4
  br label %59

59:                                               ; preds = %79, %56
  %.045 = phi i64 [ 0, %56 ], [ %.146, %79 ]
  %.042 = phi i64 [ 0, %56 ], [ %80, %79 ]
  %.039 = phi i64 [ 0, %56 ], [ %.140, %79 ]
  %60 = icmp samesign ult i64 %.042, 256
  br i1 %60, label %61, label %81

61:                                               ; preds = %59
  %62 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.042
  %63 = load i64, ptr %62, align 8
  %.not6 = icmp eq i64 %63, 0
  br i1 %.not6, label %64, label %67

64:                                               ; preds = %61
  %65 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 0, ptr %65, align 4
  %66 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 0, ptr %66, align 1
  br label %79

67:                                               ; preds = %61, %68
  %.043 = phi i64 [ %.144, %68 ], [ 0, %61 ]
  %.042.pn = phi i64 [ %71, %68 ], [ %.042, %61 ]
  %.05 = phi i64 [ %72, %68 ], [ 1, %61 ]
  %.3 = phi i64 [ %73, %68 ], [ 0, %61 ]
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.042.pn
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %74, label %68

68:                                               ; preds = %67
  %69 = icmp slt i32 %.037, 0
  %70 = select i1 %69, i64 %.05, i64 0
  %.144 = add i64 %.043, %70
  %.138 = call i32 @llvm.abs.i32(i32 %.037, i1 true)
  %71 = zext nneg i32 %.138 to i64
  %72 = shl i64 %.05, 1
  %73 = add i64 %.3, 1
  br label %67, !llvm.loop !13

74:                                               ; preds = %67
  %75 = trunc i64 %.043 to i32
  %76 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 %75, ptr %76, align 4
  %77 = trunc i64 %.3 to i8
  %78 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 %77, ptr %78, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043, i64 %.045)
  %.241 = call i64 @llvm.umax.i64(i64 %.3, i64 %.039)
  br label %79

79:                                               ; preds = %74, %64
  %.146 = phi i64 [ %spec.select, %74 ], [ %.045, %64 ]
  %.140 = phi i64 [ %.241, %74 ], [ %.039, %64 ]
  %80 = add nuw nsw i64 %.042, 1
  br label %59, !llvm.loop !14

81:                                               ; preds = %59
  %82 = icmp ugt i64 %.039, 32
  br i1 %82, label %83, label %86

83:                                               ; preds = %81
  %84 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %85 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %84)
  call void @exit(i32 noundef 1) #11
  unreachable

86:                                               ; preds = %81
  %87 = icmp eq i64 %.045, 0
  br i1 %87, label %88, label %.preheader3

88:                                               ; preds = %86
  %89 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %90 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %89)
  call void @exit(i32 noundef 1) #11
  unreachable

.preheader3:                                      ; preds = %86, %130
  %.134 = phi ptr [ %131, %130 ], [ %0, %86 ]
  %.028 = phi i64 [ %.129, %130 ], [ 0, %86 ]
  %.024 = phi i8 [ %.125, %130 ], [ 0, %86 ]
  %.16 = phi i64 [ %132, %130 ], [ 0, %86 ]
  %.01 = phi i32 [ %.1, %130 ], [ -1, %86 ]
  %91 = icmp ult i64 %.16, %1
  br i1 %91, label %92, label %133

92:                                               ; preds = %.preheader3
  %93 = load i8, ptr %.134, align 1
  %94 = zext i8 %93 to i64
  %95 = getelementptr inbounds nuw i8, ptr %7, i64 %94
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %96 to i32
  %98 = add nsw i32 %97, -1
  %99 = shl nuw i32 1, %98
  %100 = sext i32 %99 to i64
  br label %101

101:                                              ; preds = %120, %92
  %.129 = phi i64 [ %.028, %92 ], [ %.230, %120 ]
  %.125 = phi i8 [ %.024, %92 ], [ %.327, %120 ]
  %.015 = phi i64 [ %100, %92 ], [ %128, %120 ]
  %.4 = phi i64 [ 0, %92 ], [ %129, %120 ]
  %.1 = phi i32 [ %.01, %92 ], [ %.2, %120 ]
  %102 = load i8, ptr %.134, align 1
  %103 = zext i8 %102 to i64
  %104 = getelementptr inbounds nuw i8, ptr %7, i64 %103
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i64
  %107 = icmp ult i64 %.4, %106
  br i1 %107, label %108, label %130

108:                                              ; preds = %101
  %109 = icmp eq i32 %.1, 7
  br i1 %109, label %110, label %117

110:                                              ; preds = %108
  %111 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %111, align 1
  %112 = add i64 %.129, 1
  %113 = icmp eq i64 %112, %1
  br i1 %113, label %114, label %120

114:                                              ; preds = %110
  %115 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %116 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %115)
  call void @exit(i32 noundef 1) #11
  unreachable

117:                                              ; preds = %108
  %118 = add nsw i32 %.1, 1
  %119 = shl i8 %.125, 1
  br label %120

120:                                              ; preds = %117, %110
  %.230 = phi i64 [ %.129, %117 ], [ %112, %110 ]
  %.226 = phi i8 [ %119, %117 ], [ 0, %110 ]
  %.2 = phi i32 [ %118, %117 ], [ 0, %110 ]
  %121 = load i8, ptr %.134, align 1
  %122 = zext i8 %121 to i64
  %123 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %122
  %124 = load i32, ptr %123, align 4
  %125 = zext i32 %124 to i64
  %126 = and i64 %.015, %125
  %.not5 = icmp ne i64 %126, 0
  %127 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %127
  %128 = lshr i64 %.015, 1
  %129 = add i64 %.4, 1
  br label %101, !llvm.loop !15

130:                                              ; preds = %101
  %131 = getelementptr inbounds nuw i8, ptr %.134, i64 1
  %132 = add i64 %.16, 1
  br label %.preheader3, !llvm.loop !16

133:                                              ; preds = %.preheader3
  %134 = sub nsw i32 7, %.01
  %135 = zext i8 %.024 to i32
  %136 = shl i32 %135, %134
  %137 = trunc i32 %136 to i8
  %138 = getelementptr inbounds nuw i8, ptr %11, i64 %.028
  store i8 %137, ptr %138, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %139

139:                                              ; preds = %169, %133
  %.27 = phi i64 [ 0, %133 ], [ %170, %169 ]
  %.0 = phi ptr [ %9, %133 ], [ %143, %169 ]
  %140 = icmp samesign ult i64 %.27, 256
  br i1 %140, label %141, label %.preheader2

141:                                              ; preds = %139
  %142 = trunc nuw i64 %.27 to i8
  store i8 %142, ptr %.0, align 1
  %143 = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %144 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.27
  %145 = load i32, ptr %144, align 4
  %146 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %147 = load i8, ptr %146, align 1
  %148 = zext i8 %147 to i32
  %149 = or i32 %145, %148
  %.not3 = icmp eq i32 %149, 0
  br i1 %.not3, label %169, label %150

150:                                              ; preds = %141
  %151 = add nsw i32 %148, -1
  %152 = shl nuw i32 1, %151
  %153 = sext i32 %152 to i64
  br label %154

154:                                              ; preds = %158, %150
  %.019 = phi i32 [ 0, %150 ], [ %spec.select1, %158 ]
  %.116 = phi i64 [ %153, %150 ], [ %165, %158 ]
  %.5 = phi i64 [ 0, %150 ], [ %166, %158 ]
  %155 = load i8, ptr %146, align 1
  %156 = zext i8 %155 to i64
  %157 = icmp ult i64 %.5, %156
  br i1 %157, label %158, label %167

158:                                              ; preds = %154
  %159 = shl i32 %.019, 1
  %160 = or disjoint i32 %159, 1
  %161 = load i32, ptr %144, align 4
  %162 = zext i32 %161 to i64
  %163 = and i64 %.116, %162
  %.not4 = icmp eq i64 %163, 0
  %164 = add i32 %159, 2
  %spec.select1 = select i1 %.not4, i32 %160, i32 %164
  %165 = lshr i64 %.116, 1
  %166 = add i64 %.5, 1
  br label %154, !llvm.loop !17

167:                                              ; preds = %154
  %168 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.27
  store i32 %.019, ptr %168, align 4
  br label %169

169:                                              ; preds = %167, %141
  %170 = add nuw nsw i64 %.27, 1
  br label %139, !llvm.loop !18

.preheader2:                                      ; preds = %139, %.critedge
  %.6 = phi i64 [ %190, %.critedge ], [ 1, %139 ]
  %171 = icmp samesign ult i64 %.6, 256
  br i1 %171, label %172, label %.preheader1

172:                                              ; preds = %.preheader2
  %173 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.6
  %174 = load i32, ptr %173, align 4
  %175 = getelementptr inbounds nuw i8, ptr %9, i64 %.6
  %176 = load i8, ptr %175, align 1
  br label %177

177:                                              ; preds = %183, %172
  %.38 = phi i64 [ %.6, %172 ], [ %179, %183 ]
  %.not2 = icmp eq i64 %.38, 0
  br i1 %.not2, label %.critedge, label %178

178:                                              ; preds = %177
  %179 = add i64 %.38, -1
  %180 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %179
  %181 = load i32, ptr %180, align 4
  %182 = icmp ugt i32 %181, %174
  br i1 %182, label %183, label %.critedge

183:                                              ; preds = %178
  %184 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %181, ptr %184, align 4
  %185 = getelementptr inbounds nuw i8, ptr %9, i64 %179
  %186 = load i8, ptr %185, align 1
  %187 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %186, ptr %187, align 1
  br label %177, !llvm.loop !19

.critedge:                                        ; preds = %178, %177
  %188 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %174, ptr %188, align 4
  %189 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %176, ptr %189, align 1
  %190 = add nuw nsw i64 %.6, 1
  br label %.preheader2, !llvm.loop !20

.preheader1:                                      ; preds = %.preheader2, %194
  %.49 = phi i64 [ %195, %194 ], [ 0, %.preheader2 ]
  %191 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %192 = load i32, ptr %191, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %.preheader

194:                                              ; preds = %.preheader1
  %195 = add i64 %.49, 1
  br label %.preheader1, !llvm.loop !21

.preheader:                                       ; preds = %.preheader1, %217
  %.235 = phi ptr [ %.336, %217 ], [ %0, %.preheader1 ]
  %.031 = phi ptr [ %.132, %217 ], [ %11, %.preheader1 ]
  %.221 = phi i32 [ %.423, %217 ], [ 0, %.preheader1 ]
  %.217 = phi i64 [ %.318, %217 ], [ 128, %.preheader1 ]
  %.313 = phi i64 [ %.414, %217 ], [ 0, %.preheader1 ]
  %.7 = phi i64 [ %.9, %217 ], [ %.49, %.preheader1 ]
  %196 = icmp ult i64 %.313, %1
  br i1 %196, label %197, label %220

197:                                              ; preds = %.preheader
  %198 = shl i32 %.221, 1
  %199 = or disjoint i32 %198, 1
  %200 = load i8, ptr %.031, align 1
  %201 = zext i8 %200 to i64
  %202 = and i64 %.217, %201
  %.not1 = icmp eq i64 %202, 0
  %203 = add i32 %198, 2
  %spec.select2 = select i1 %.not1, i32 %199, i32 %203
  br label %204

204:                                              ; preds = %208, %197
  %.8 = phi i64 [ %.7, %197 ], [ %209, %208 ]
  %205 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %206 = load i32, ptr %205, align 4
  %207 = icmp ult i32 %206, %spec.select2
  br i1 %207, label %208, label %210

208:                                              ; preds = %204
  %209 = add i64 %.8, 1
  br label %204, !llvm.loop !22

210:                                              ; preds = %204
  %211 = icmp eq i32 %spec.select2, %206
  br i1 %211, label %212, label %217

212:                                              ; preds = %210
  %213 = getelementptr inbounds nuw i8, ptr %9, i64 %.8
  %214 = load i8, ptr %213, align 1
  store i8 %214, ptr %.235, align 1
  %215 = getelementptr inbounds nuw i8, ptr %.235, i64 1
  %216 = add i64 %.313, 1
  br label %217

217:                                              ; preds = %212, %210
  %.336 = phi ptr [ %215, %212 ], [ %.235, %210 ]
  %.423 = phi i32 [ 0, %212 ], [ %spec.select2, %210 ]
  %.414 = phi i64 [ %216, %212 ], [ %.313, %210 ]
  %.9 = phi i64 [ %.49, %212 ], [ %.8, %210 ]
  %218 = icmp ult i64 %.217, 2
  %219 = lshr i64 %.217, 1
  %.132.idx = zext i1 %218 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.031, i64 %.132.idx
  %.318 = select i1 %218, i64 128, i64 %219
  br label %.preheader, !llvm.loop !23

220:                                              ; preds = %.preheader
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
  br i1 %.not, label %41, label %11

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
  %spec.select = or disjoint i32 %12, %25
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
  br i1 %36, label %41, label %37

37:                                               ; preds = %26
  %38 = sext i32 %.01 to i64
  %39 = getelementptr [8 x i8], ptr %1, i64 %38
  %40 = getelementptr i8, ptr %39, i64 -8
  store i64 %33, ptr %40, align 8
  br label %9, !llvm.loop !24

41:                                               ; preds = %26, %9
  %sext1 = shl i64 %8, 32
  %42 = ashr exact i64 %sext1, 32
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
  br i1 %3, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %2
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %5

5:                                                ; preds = %.preheader, %10
  %.01 = phi i32 [ %11, %10 ], [ 1, %.preheader ]
  %6 = icmp slt i32 %.01, %0
  br i1 %6, label %7, label %.loopexit

7:                                                ; preds = %5
  %8 = load ptr, ptr %4, align 8
  %9 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(4) @.str.4) #10
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %.loopexit, label %10

10:                                               ; preds = %7
  %11 = add nuw nsw i32 %.01, 1
  br label %5, !llvm.loop !25

.loopexit:                                        ; preds = %7, %5, %2
  %.not1 = phi i1 [ true, %2 ], [ false, %7 ], [ true, %5 ]
  %12 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %13

13:                                               ; preds = %15, %.loopexit
  %.12 = phi i32 [ 0, %.loopexit ], [ %16, %15 ]
  %14 = icmp samesign ult i32 %.12, 30
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  %16 = add nuw nsw i32 %.12, 1
  br label %13, !llvm.loop !26

17:                                               ; preds = %13
  call void @free(ptr noundef %12) #10
  br i1 %.not1, label %21, label %18

18:                                               ; preds = %17
  %19 = call ptr @__acrt_iob_func(i32 noundef 1) #10
  %20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.5, double noundef 0.000000e+00) #10
  br label %24

21:                                               ; preds = %17
  %22 = call ptr @__acrt_iob_func(i32 noundef 1) #10
  %23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.6, double noundef 0.000000e+00) #10
  br label %24

24:                                               ; preds = %21, %18
  %25 = call ptr @__acrt_iob_func(i32 noundef 1) #10
  %26 = call i32 @fflush(ptr noundef %25) #10
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
  %6 = add i32 %.neg1, %5
  %7 = icmp slt i32 %6, 0
  %8 = add nsw i32 %6, 2147483647
  %spec.select = select i1 %7, i32 %8, i32 %6
  %9 = srem i32 %spec.select, 32
  %10 = sext i32 %9 to i64
  %11 = xor i32 %spec.select, 123459876
  store i32 %11, ptr @seed, align 4
  ret i64 %10
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
