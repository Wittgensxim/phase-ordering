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

.preheader6:                                      ; preds = %12, %30
  %.010 = phi i64 [ %.111, %30 ], [ 0, %12 ]
  %.13 = phi i64 [ %31, %30 ], [ 0, %12 ]
  %22 = icmp samesign ult i64 %.13, 256
  br i1 %22, label %24, label %.preheader5

.preheader5:                                      ; preds = %.preheader6
  %.010.lcssa = phi i64 [ %.010, %.preheader6 ]
  %23 = trunc i64 %.010.lcssa to i32
  br label %32

24:                                               ; preds = %.preheader6
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
  br label %.preheader6, !llvm.loop !10

32:                                               ; preds = %.preheader5, %33
  %.24 = phi i64 [ %35, %33 ], [ %.010.lcssa, %.preheader5 ]
  %.not = icmp eq i64 %.24, 0
  br i1 %.not, label %.preheader4, label %33

33:                                               ; preds = %32
  %34 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %23, i32 noundef %34)
  %35 = add i64 %.24, -1
  br label %32, !llvm.loop !11

.preheader4:                                      ; preds = %32, %37
  %.212 = phi i64 [ %38, %37 ], [ %.010.lcssa, %32 ]
  %36 = icmp ugt i64 %.212, 1
  br i1 %36, label %37, label %57

37:                                               ; preds = %.preheader4
  %38 = add i64 %.212, -1
  %39 = load i64, ptr %4, align 16
  %40 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %38
  %41 = load i64, ptr %40, align 8
  store i64 %41, ptr %4, align 16
  %42 = trunc i64 %38 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %42, i32 noundef 1)
  %43 = load i64, ptr %4, align 16
  %44 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %43
  %45 = load i64, ptr %44, align 8
  %46 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %39
  %47 = load i64, ptr %46, align 8
  %48 = add i64 %45, %47
  %49 = add i64 %.212, 255
  %50 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %49
  store i64 %48, ptr %50, align 8
  %51 = trunc i64 %49 to i32
  %52 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %39
  store i32 %51, ptr %52, align 4
  %53 = trunc i64 %.212 to i32
  %54 = sub i32 -255, %53
  %55 = load i64, ptr %4, align 16
  %56 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %55
  store i32 %54, ptr %56, align 4
  store i64 %49, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %42, i32 noundef 1)
  br label %.preheader4, !llvm.loop !12

57:                                               ; preds = %.preheader4
  %.212.lcssa = phi i64 [ %.212, %.preheader4 ]
  %58 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %59 = getelementptr inbounds nuw i8, ptr %58, i64 1024
  store i32 0, ptr %59, align 4
  br label %60

60:                                               ; preds = %80, %57
  %.045 = phi i64 [ 0, %57 ], [ %.146, %80 ]
  %.042 = phi i64 [ 0, %57 ], [ %81, %80 ]
  %.039 = phi i64 [ 0, %57 ], [ %.140, %80 ]
  %61 = icmp samesign ult i64 %.042, 256
  br i1 %61, label %62, label %82

62:                                               ; preds = %60
  %63 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.042
  %64 = load i64, ptr %63, align 8
  %.not6 = icmp eq i64 %64, 0
  br i1 %.not6, label %65, label %68

65:                                               ; preds = %62
  %66 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 0, ptr %66, align 4
  %67 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 0, ptr %67, align 1
  br label %80

68:                                               ; preds = %62, %69
  %.043 = phi i64 [ %.144, %69 ], [ 0, %62 ]
  %.042.pn = phi i64 [ %72, %69 ], [ %.042, %62 ]
  %.05 = phi i64 [ %73, %69 ], [ 1, %62 ]
  %.3 = phi i64 [ %74, %69 ], [ 0, %62 ]
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.042.pn
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %75, label %69

69:                                               ; preds = %68
  %70 = icmp slt i32 %.037, 0
  %71 = select i1 %70, i64 %.05, i64 0
  %.144 = add i64 %.043, %71
  %.138 = call i32 @llvm.abs.i32(i32 %.037, i1 true)
  %72 = zext nneg i32 %.138 to i64
  %73 = shl i64 %.05, 1
  %74 = add i64 %.3, 1
  br label %68, !llvm.loop !13

75:                                               ; preds = %68
  %.043.lcssa = phi i64 [ %.043, %68 ]
  %.3.lcssa = phi i64 [ %.3, %68 ]
  %76 = trunc i64 %.043.lcssa to i32
  %77 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 %76, ptr %77, align 4
  %78 = trunc i64 %.3.lcssa to i8
  %79 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 %78, ptr %79, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.045)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.039)
  br label %80

80:                                               ; preds = %75, %65
  %.146 = phi i64 [ %spec.select, %75 ], [ %.045, %65 ]
  %.140 = phi i64 [ %.241, %75 ], [ %.039, %65 ]
  %81 = add nuw nsw i64 %.042, 1
  br label %60, !llvm.loop !14

82:                                               ; preds = %60
  %.045.lcssa = phi i64 [ %.045, %60 ]
  %.039.lcssa = phi i64 [ %.039, %60 ]
  %83 = icmp ugt i64 %.039.lcssa, 32
  br i1 %83, label %84, label %87

84:                                               ; preds = %82
  %85 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %86 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %85)
  call void @exit(i32 noundef 1) #11
  unreachable

87:                                               ; preds = %82
  %88 = icmp eq i64 %.045.lcssa, 0
  br i1 %88, label %89, label %.preheader3

89:                                               ; preds = %87
  %90 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %91 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %90)
  call void @exit(i32 noundef 1) #11
  unreachable

.preheader3:                                      ; preds = %87, %131
  %.134 = phi ptr [ %132, %131 ], [ %0, %87 ]
  %.028 = phi i64 [ %.129.lcssa, %131 ], [ 0, %87 ]
  %.024 = phi i8 [ %.125.lcssa, %131 ], [ 0, %87 ]
  %.16 = phi i64 [ %133, %131 ], [ 0, %87 ]
  %.01 = phi i32 [ %.1.lcssa, %131 ], [ -1, %87 ]
  %92 = icmp ult i64 %.16, %1
  br i1 %92, label %93, label %134

93:                                               ; preds = %.preheader3
  %94 = load i8, ptr %.134, align 1
  %95 = zext i8 %94 to i64
  %96 = getelementptr inbounds nuw i8, ptr %7, i64 %95
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %97 to i32
  %99 = add nsw i32 %98, -1
  %100 = shl nuw i32 1, %99
  %101 = sext i32 %100 to i64
  br label %102

102:                                              ; preds = %121, %93
  %.129 = phi i64 [ %.028, %93 ], [ %.230, %121 ]
  %.125 = phi i8 [ %.024, %93 ], [ %.327, %121 ]
  %.015 = phi i64 [ %101, %93 ], [ %129, %121 ]
  %.4 = phi i64 [ 0, %93 ], [ %130, %121 ]
  %.1 = phi i32 [ %.01, %93 ], [ %.2, %121 ]
  %103 = load i8, ptr %.134, align 1
  %104 = zext i8 %103 to i64
  %105 = getelementptr inbounds nuw i8, ptr %7, i64 %104
  %106 = load i8, ptr %105, align 1
  %107 = zext i8 %106 to i64
  %108 = icmp ult i64 %.4, %107
  br i1 %108, label %109, label %131

109:                                              ; preds = %102
  %110 = icmp eq i32 %.1, 7
  br i1 %110, label %111, label %118

111:                                              ; preds = %109
  %112 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %112, align 1
  %113 = add i64 %.129, 1
  %114 = icmp eq i64 %113, %1
  br i1 %114, label %115, label %121

115:                                              ; preds = %111
  %116 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %117 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %116)
  call void @exit(i32 noundef 1) #11
  unreachable

118:                                              ; preds = %109
  %119 = add nsw i32 %.1, 1
  %120 = shl i8 %.125, 1
  br label %121

121:                                              ; preds = %118, %111
  %.230 = phi i64 [ %.129, %118 ], [ %113, %111 ]
  %.226 = phi i8 [ %120, %118 ], [ 0, %111 ]
  %.2 = phi i32 [ %119, %118 ], [ 0, %111 ]
  %122 = load i8, ptr %.134, align 1
  %123 = zext i8 %122 to i64
  %124 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %123
  %125 = load i32, ptr %124, align 4
  %126 = zext i32 %125 to i64
  %127 = and i64 %.015, %126
  %.not5 = icmp ne i64 %127, 0
  %128 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %128
  %129 = lshr i64 %.015, 1
  %130 = add i64 %.4, 1
  br label %102, !llvm.loop !15

131:                                              ; preds = %102
  %.129.lcssa = phi i64 [ %.129, %102 ]
  %.125.lcssa = phi i8 [ %.125, %102 ]
  %.1.lcssa = phi i32 [ %.1, %102 ]
  %132 = getelementptr inbounds nuw i8, ptr %.134, i64 1
  %133 = add i64 %.16, 1
  br label %.preheader3, !llvm.loop !16

134:                                              ; preds = %.preheader3
  %.028.lcssa = phi i64 [ %.028, %.preheader3 ]
  %.024.lcssa = phi i8 [ %.024, %.preheader3 ]
  %.01.lcssa = phi i32 [ %.01, %.preheader3 ]
  %135 = sub nsw i32 7, %.01.lcssa
  %136 = zext i8 %.024.lcssa to i32
  %137 = shl i32 %136, %135
  %138 = trunc i32 %137 to i8
  %139 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %138, ptr %139, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %140

140:                                              ; preds = %170, %134
  %.27 = phi i64 [ 0, %134 ], [ %171, %170 ]
  %.0 = phi ptr [ %9, %134 ], [ %144, %170 ]
  %141 = icmp samesign ult i64 %.27, 256
  br i1 %141, label %142, label %.preheader2

142:                                              ; preds = %140
  %143 = trunc nuw i64 %.27 to i8
  store i8 %143, ptr %.0, align 1
  %144 = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %145 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.27
  %146 = load i32, ptr %145, align 4
  %147 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %148 = load i8, ptr %147, align 1
  %149 = zext i8 %148 to i32
  %150 = or i32 %146, %149
  %.not3 = icmp eq i32 %150, 0
  br i1 %.not3, label %170, label %151

151:                                              ; preds = %142
  %152 = add nsw i32 %149, -1
  %153 = shl nuw i32 1, %152
  %154 = sext i32 %153 to i64
  %155 = load i8, ptr %147, align 1
  %156 = zext i8 %155 to i64
  br label %157

157:                                              ; preds = %159, %151
  %.019 = phi i32 [ 0, %151 ], [ %spec.select1, %159 ]
  %.116 = phi i64 [ %154, %151 ], [ %166, %159 ]
  %.5 = phi i64 [ 0, %151 ], [ %167, %159 ]
  %158 = icmp ult i64 %.5, %156
  br i1 %158, label %159, label %168

159:                                              ; preds = %157
  %160 = shl i32 %.019, 1
  %161 = or disjoint i32 %160, 1
  %162 = load i32, ptr %145, align 4
  %163 = zext i32 %162 to i64
  %164 = and i64 %.116, %163
  %.not4 = icmp eq i64 %164, 0
  %165 = add i32 %160, 2
  %spec.select1 = select i1 %.not4, i32 %161, i32 %165
  %166 = lshr i64 %.116, 1
  %167 = add i64 %.5, 1
  br label %157, !llvm.loop !17

168:                                              ; preds = %157
  %.019.lcssa = phi i32 [ %.019, %157 ]
  %169 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.27
  store i32 %.019.lcssa, ptr %169, align 4
  br label %170

170:                                              ; preds = %168, %142
  %171 = add nuw nsw i64 %.27, 1
  br label %140, !llvm.loop !18

.preheader2:                                      ; preds = %140, %.critedge
  %.6 = phi i64 [ %191, %.critedge ], [ 1, %140 ]
  %172 = icmp samesign ult i64 %.6, 256
  br i1 %172, label %173, label %.preheader1

173:                                              ; preds = %.preheader2
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
  %.38.lcssa = phi i64 [ %.38, %179 ], [ %.38, %178 ]
  %189 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %175, ptr %189, align 4
  %190 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %177, ptr %190, align 1
  %191 = add nuw nsw i64 %.6, 1
  br label %.preheader2, !llvm.loop !20

.preheader1:                                      ; preds = %.preheader2, %195
  %.49 = phi i64 [ %196, %195 ], [ 0, %.preheader2 ]
  %192 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %193 = load i32, ptr %192, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %.preheader

.preheader:                                       ; preds = %.preheader1
  %.49.lcssa = phi i64 [ %.49, %.preheader1 ]
  br label %197

195:                                              ; preds = %.preheader1
  %196 = add i64 %.49, 1
  br label %.preheader1, !llvm.loop !21

197:                                              ; preds = %.preheader, %219
  %.235 = phi ptr [ %.336, %219 ], [ %0, %.preheader ]
  %.031 = phi ptr [ %.132, %219 ], [ %11, %.preheader ]
  %.221 = phi i32 [ %.423, %219 ], [ 0, %.preheader ]
  %.217 = phi i64 [ %.318, %219 ], [ 128, %.preheader ]
  %.313 = phi i64 [ %.414, %219 ], [ 0, %.preheader ]
  %.7 = phi i64 [ %.9, %219 ], [ %.49.lcssa, %.preheader ]
  %198 = icmp ult i64 %.313, %1
  br i1 %198, label %199, label %222

199:                                              ; preds = %197
  %200 = shl i32 %.221, 1
  %201 = or disjoint i32 %200, 1
  %202 = load i8, ptr %.031, align 1
  %203 = zext i8 %202 to i64
  %204 = and i64 %.217, %203
  %.not1 = icmp eq i64 %204, 0
  %205 = add i32 %200, 2
  %spec.select2 = select i1 %.not1, i32 %201, i32 %205
  br label %206

206:                                              ; preds = %210, %199
  %.8 = phi i64 [ %.7, %199 ], [ %211, %210 ]
  %207 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %208 = load i32, ptr %207, align 4
  %209 = icmp ult i32 %208, %spec.select2
  br i1 %209, label %210, label %212

210:                                              ; preds = %206
  %211 = add i64 %.8, 1
  br label %206, !llvm.loop !22

212:                                              ; preds = %206
  %.8.lcssa = phi i64 [ %.8, %206 ]
  %.lcssa = phi i32 [ %208, %206 ]
  %213 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %213, label %214, label %219

214:                                              ; preds = %212
  %215 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %216 = load i8, ptr %215, align 1
  store i8 %216, ptr %.235, align 1
  %217 = getelementptr inbounds nuw i8, ptr %.235, i64 1
  %218 = add i64 %.313, 1
  br label %219

219:                                              ; preds = %214, %212
  %.336 = phi ptr [ %217, %214 ], [ %.235, %212 ]
  %.423 = phi i32 [ 0, %214 ], [ %spec.select2, %212 ]
  %.414 = phi i64 [ %218, %214 ], [ %.313, %212 ]
  %.9 = phi i64 [ %.49.lcssa, %214 ], [ %.8.lcssa, %212 ]
  %220 = icmp ult i64 %.217, 2
  %221 = lshr i64 %.217, 1
  %.132.idx = zext i1 %220 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.031, i64 %.132.idx
  %.318 = select i1 %220, i64 128, i64 %221
  br label %197, !llvm.loop !23

222:                                              ; preds = %197
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
  %9 = sdiv i32 %2, 2
  %sext = shl i64 %8, 32
  %10 = ashr exact i64 %sext, 29
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  br label %12

12:                                               ; preds = %37, %4
  %.01 = phi i32 [ %3, %4 ], [ %.0, %37 ]
  %.not = icmp sgt i32 %.01, %9
  br i1 %.not, label %41, label %13

13:                                               ; preds = %12
  %14 = shl nsw i32 %.01, 1
  %15 = icmp slt i32 %14, %2
  br i1 %15, label %16, label %28

16:                                               ; preds = %13
  %17 = sext i32 %14 to i64
  %18 = getelementptr [8 x i8], ptr %1, i64 %17
  %19 = getelementptr i8, ptr %18, i64 -8
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %20
  %22 = load i64, ptr %21, align 8
  %23 = load i64, ptr %18, align 8
  %24 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %23
  %25 = load i64, ptr %24, align 8
  %26 = icmp ugt i64 %22, %25
  %27 = zext i1 %26 to i32
  %spec.select = or disjoint i32 %14, %27
  br label %28

28:                                               ; preds = %16, %13
  %.0 = phi i32 [ %14, %13 ], [ %spec.select, %16 ]
  %29 = load i64, ptr %11, align 8
  %30 = sext i32 %.0 to i64
  %31 = getelementptr [8 x i8], ptr %1, i64 %30
  %32 = getelementptr i8, ptr %31, i64 -8
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %33
  %35 = load i64, ptr %34, align 8
  %36 = icmp ult i64 %29, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %28
  %38 = sext i32 %.01 to i64
  %39 = getelementptr [8 x i8], ptr %1, i64 %38
  %40 = getelementptr i8, ptr %39, i64 -8
  store i64 %33, ptr %40, align 8
  br label %12, !llvm.loop !24

41:                                               ; preds = %28, %12
  %.01.lcssa = phi i32 [ %.01, %28 ], [ %.01, %12 ]
  %sext1 = shl i64 %8, 32
  %42 = ashr exact i64 %sext1, 32
  %43 = sext i32 %.01.lcssa to i64
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
