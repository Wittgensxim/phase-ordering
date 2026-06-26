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

3:                                                ; preds = %4, %1
  %indvars.iv = phi i64 [ %indvars.iv.next, %4 ], [ 0, %1 ]
  %.01 = phi ptr [ %2, %1 ], [ %8, %4 ]
  %exitcond = icmp ne i64 %indvars.iv, %0
  br i1 %exitcond, label %4, label %9

4:                                                ; preds = %3
  %5 = call i64 @random4()
  %6 = getelementptr inbounds nuw i8, ptr @.str, i64 %5
  %7 = load i8, ptr %6, align 1
  store i8 %7, ptr %.01, align 1
  %8 = getelementptr inbounds nuw i8, ptr %.01, i64 1
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  br label %3, !llvm.loop !7

9:                                                ; preds = %3
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

12:                                               ; preds = %13, %2
  %.033 = phi ptr [ %0, %2 ], [ %19, %13 ]
  %.02 = phi i64 [ 0, %2 ], [ %20, %13 ]
  %exitcond = icmp ne i64 %.02, %1
  br i1 %exitcond, label %13, label %.preheader7

.preheader7:                                      ; preds = %12
  br label %21

13:                                               ; preds = %12
  %14 = load i8, ptr %.033, align 1
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %15
  %17 = load i64, ptr %16, align 8
  %18 = add i64 %17, 1
  store i64 %18, ptr %16, align 8
  %19 = getelementptr inbounds nuw i8, ptr %.033, i64 1
  %20 = add i64 %.02, 1
  br label %12, !llvm.loop !9

21:                                               ; preds = %.preheader7, %28
  %.010 = phi i64 [ %.111, %28 ], [ 0, %.preheader7 ]
  %.13 = phi i64 [ %29, %28 ], [ 0, %.preheader7 ]
  %exitcond14 = icmp ne i64 %.13, 256
  br i1 %exitcond14, label %22, label %.preheader6

.preheader6:                                      ; preds = %21
  %.010.lcssa = phi i64 [ %.010, %21 ]
  br label %30

22:                                               ; preds = %21
  %23 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.13
  %24 = load i64, ptr %23, align 8
  %.not8 = icmp eq i64 %24, 0
  br i1 %.not8, label %28, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.010
  store i64 %.13, ptr %26, align 8
  %27 = add i64 %.010, 1
  br label %28

28:                                               ; preds = %25, %22
  %.111 = phi i64 [ %27, %25 ], [ %.010, %22 ]
  %29 = add nuw nsw i64 %.13, 1
  br label %21, !llvm.loop !10

30:                                               ; preds = %.preheader6, %31
  %.24 = phi i64 [ %34, %31 ], [ %.010.lcssa, %.preheader6 ]
  %.not = icmp eq i64 %.24, 0
  br i1 %.not, label %.preheader5, label %31

.preheader5:                                      ; preds = %30
  br label %35

31:                                               ; preds = %30
  %32 = trunc i64 %.010.lcssa to i32
  %33 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %32, i32 noundef %33)
  %34 = add i64 %.24, -1
  br label %30, !llvm.loop !11

35:                                               ; preds = %.preheader5, %37
  %.212 = phi i64 [ %38, %37 ], [ %.010.lcssa, %.preheader5 ]
  %36 = icmp ugt i64 %.212, 1
  br i1 %36, label %37, label %57

37:                                               ; preds = %35
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
  br label %35, !llvm.loop !12

57:                                               ; preds = %35
  %.212.lcssa = phi i64 [ %.212, %35 ]
  %58 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %59 = getelementptr inbounds nuw i8, ptr %58, i64 1024
  store i32 0, ptr %59, align 4
  br label %60

60:                                               ; preds = %79, %57
  %.045 = phi i64 [ 0, %57 ], [ %.146, %79 ]
  %.042 = phi i64 [ 0, %57 ], [ %80, %79 ]
  %.039 = phi i64 [ 0, %57 ], [ %.140, %79 ]
  %exitcond15 = icmp ne i64 %.042, 256
  br i1 %exitcond15, label %61, label %81

61:                                               ; preds = %60
  %62 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.042
  %63 = load i64, ptr %62, align 8
  %.not6 = icmp eq i64 %63, 0
  br i1 %.not6, label %64, label %.preheader4

.preheader4:                                      ; preds = %61
  br label %67

64:                                               ; preds = %61
  %65 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 0, ptr %65, align 4
  %66 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 0, ptr %66, align 1
  br label %79

67:                                               ; preds = %.preheader4, %68
  %.043 = phi i64 [ %.144, %68 ], [ 0, %.preheader4 ]
  %.042.pn = phi i64 [ %71, %68 ], [ %.042, %.preheader4 ]
  %.05 = phi i64 [ %72, %68 ], [ 1, %.preheader4 ]
  %.3 = phi i64 [ %73, %68 ], [ 0, %.preheader4 ]
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
  %.043.lcssa = phi i64 [ %.043, %67 ]
  %.3.lcssa = phi i64 [ %.3, %67 ]
  %75 = trunc i64 %.043.lcssa to i32
  %76 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 %75, ptr %76, align 4
  %77 = trunc i64 %.3.lcssa to i8
  %78 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 %77, ptr %78, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.045)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.039)
  br label %79

79:                                               ; preds = %74, %64
  %.146 = phi i64 [ %spec.select, %74 ], [ %.045, %64 ]
  %.140 = phi i64 [ %.241, %74 ], [ %.039, %64 ]
  %80 = add nuw nsw i64 %.042, 1
  br label %60, !llvm.loop !14

81:                                               ; preds = %60
  %.045.lcssa = phi i64 [ %.045, %60 ]
  %.039.lcssa = phi i64 [ %.039, %60 ]
  %82 = icmp ugt i64 %.039.lcssa, 32
  br i1 %82, label %83, label %86

83:                                               ; preds = %81
  %84 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %85 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %84)
  call void @exit(i32 noundef 1) #11
  unreachable

86:                                               ; preds = %81
  %87 = icmp eq i64 %.045.lcssa, 0
  br i1 %87, label %88, label %.preheader3

.preheader3:                                      ; preds = %86
  br label %91

88:                                               ; preds = %86
  %89 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %90 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %89)
  call void @exit(i32 noundef 1) #11
  unreachable

91:                                               ; preds = %.preheader3, %130
  %.134 = phi ptr [ %131, %130 ], [ %0, %.preheader3 ]
  %.028 = phi i64 [ %.129.lcssa, %130 ], [ 0, %.preheader3 ]
  %.024 = phi i8 [ %.125.lcssa, %130 ], [ 0, %.preheader3 ]
  %.16 = phi i64 [ %132, %130 ], [ 0, %.preheader3 ]
  %.01 = phi i32 [ %.1.lcssa, %130 ], [ -1, %.preheader3 ]
  %exitcond16 = icmp ne i64 %.16, %1
  br i1 %exitcond16, label %92, label %133

92:                                               ; preds = %91
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
  %107 = icmp samesign ult i64 %.4, %106
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
  %129 = add nuw nsw i64 %.4, 1
  br label %101, !llvm.loop !15

130:                                              ; preds = %101
  %.129.lcssa = phi i64 [ %.129, %101 ]
  %.125.lcssa = phi i8 [ %.125, %101 ]
  %.1.lcssa = phi i32 [ %.1, %101 ]
  %131 = getelementptr inbounds nuw i8, ptr %.134, i64 1
  %132 = add i64 %.16, 1
  br label %91, !llvm.loop !16

133:                                              ; preds = %91
  %.028.lcssa = phi i64 [ %.028, %91 ]
  %.024.lcssa = phi i8 [ %.024, %91 ]
  %.01.lcssa = phi i32 [ %.01, %91 ]
  %134 = sub nsw i32 7, %.01.lcssa
  %135 = zext i8 %.024.lcssa to i32
  %136 = shl i32 %135, %134
  %137 = trunc i32 %136 to i8
  %138 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %137, ptr %138, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %139

139:                                              ; preds = %168, %133
  %.27 = phi i64 [ 0, %133 ], [ %169, %168 ]
  %.0 = phi ptr [ %9, %133 ], [ %142, %168 ]
  %exitcond17 = icmp ne i64 %.27, 256
  br i1 %exitcond17, label %140, label %.preheader2

.preheader2:                                      ; preds = %139
  br label %170

140:                                              ; preds = %139
  %141 = trunc nuw i64 %.27 to i8
  store i8 %141, ptr %.0, align 1
  %142 = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %143 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.27
  %144 = load i32, ptr %143, align 4
  %145 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %146 = load i8, ptr %145, align 1
  %147 = zext i8 %146 to i32
  %148 = or i32 %144, %147
  %.not3 = icmp eq i32 %148, 0
  br i1 %.not3, label %168, label %149

149:                                              ; preds = %140
  %150 = add nsw i32 %147, -1
  %151 = shl nuw i32 1, %150
  %152 = sext i32 %151 to i64
  br label %153

153:                                              ; preds = %157, %149
  %.019 = phi i32 [ 0, %149 ], [ %spec.select1, %157 ]
  %.116 = phi i64 [ %152, %149 ], [ %164, %157 ]
  %.5 = phi i64 [ 0, %149 ], [ %165, %157 ]
  %154 = load i8, ptr %145, align 1
  %155 = zext i8 %154 to i64
  %156 = icmp samesign ult i64 %.5, %155
  br i1 %156, label %157, label %166

157:                                              ; preds = %153
  %158 = shl i32 %.019, 1
  %159 = or disjoint i32 %158, 1
  %160 = load i32, ptr %143, align 4
  %161 = zext i32 %160 to i64
  %162 = and i64 %.116, %161
  %.not4 = icmp eq i64 %162, 0
  %163 = add i32 %158, 2
  %spec.select1 = select i1 %.not4, i32 %159, i32 %163
  %164 = lshr i64 %.116, 1
  %165 = add nuw nsw i64 %.5, 1
  br label %153, !llvm.loop !17

166:                                              ; preds = %153
  %.019.lcssa = phi i32 [ %.019, %153 ]
  %167 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.27
  store i32 %.019.lcssa, ptr %167, align 4
  br label %168

168:                                              ; preds = %166, %140
  %169 = add nuw nsw i64 %.27, 1
  br label %139, !llvm.loop !18

170:                                              ; preds = %.preheader2, %.critedge
  %.6 = phi i64 [ %189, %.critedge ], [ 1, %.preheader2 ]
  %exitcond18 = icmp ne i64 %.6, 256
  br i1 %exitcond18, label %171, label %.preheader1

.preheader1:                                      ; preds = %170
  br label %190

171:                                              ; preds = %170
  %172 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.6
  %173 = load i32, ptr %172, align 4
  %174 = getelementptr inbounds nuw i8, ptr %9, i64 %.6
  %175 = load i8, ptr %174, align 1
  br label %176

176:                                              ; preds = %182, %171
  %.38 = phi i64 [ %.6, %171 ], [ %178, %182 ]
  %.not2 = icmp eq i64 %.38, 0
  br i1 %.not2, label %.critedge, label %177

177:                                              ; preds = %176
  %178 = add nsw i64 %.38, -1
  %179 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %178
  %180 = load i32, ptr %179, align 4
  %181 = icmp ugt i32 %180, %173
  br i1 %181, label %182, label %.critedge

182:                                              ; preds = %177
  %183 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %180, ptr %183, align 4
  %184 = getelementptr inbounds nuw i8, ptr %9, i64 %178
  %185 = load i8, ptr %184, align 1
  %186 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %185, ptr %186, align 1
  br label %176, !llvm.loop !19

.critedge:                                        ; preds = %177, %176
  %.38.lcssa = phi i64 [ %.38, %177 ], [ 0, %176 ]
  %187 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %173, ptr %187, align 4
  %188 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %175, ptr %188, align 1
  %189 = add nuw nsw i64 %.6, 1
  br label %170, !llvm.loop !20

190:                                              ; preds = %.preheader1, %194
  %.49 = phi i64 [ %195, %194 ], [ 0, %.preheader1 ]
  %191 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %192 = load i32, ptr %191, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %.preheader

.preheader:                                       ; preds = %190
  %.49.lcssa = phi i64 [ %.49, %190 ]
  br label %196

194:                                              ; preds = %190
  %195 = add i64 %.49, 1
  br label %190, !llvm.loop !21

196:                                              ; preds = %.preheader, %218
  %.235 = phi ptr [ %.336, %218 ], [ %0, %.preheader ]
  %.031 = phi ptr [ %.132, %218 ], [ %11, %.preheader ]
  %.221 = phi i32 [ %.423, %218 ], [ 0, %.preheader ]
  %.217 = phi i64 [ %.318, %218 ], [ 128, %.preheader ]
  %.313 = phi i64 [ %.414, %218 ], [ 0, %.preheader ]
  %.7 = phi i64 [ %.9, %218 ], [ %.49.lcssa, %.preheader ]
  %197 = icmp ult i64 %.313, %1
  br i1 %197, label %198, label %221

198:                                              ; preds = %196
  %199 = shl i32 %.221, 1
  %200 = or disjoint i32 %199, 1
  %201 = load i8, ptr %.031, align 1
  %202 = zext i8 %201 to i64
  %203 = and i64 %.217, %202
  %.not1 = icmp eq i64 %203, 0
  %204 = add i32 %199, 2
  %spec.select2 = select i1 %.not1, i32 %200, i32 %204
  br label %205

205:                                              ; preds = %209, %198
  %.8 = phi i64 [ %.7, %198 ], [ %210, %209 ]
  %206 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %207 = load i32, ptr %206, align 4
  %208 = icmp ult i32 %207, %spec.select2
  br i1 %208, label %209, label %211

209:                                              ; preds = %205
  %210 = add i64 %.8, 1
  br label %205, !llvm.loop !22

211:                                              ; preds = %205
  %.8.lcssa = phi i64 [ %.8, %205 ]
  %.lcssa = phi i32 [ %207, %205 ]
  %212 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %212, label %213, label %218

213:                                              ; preds = %211
  %214 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %215 = load i8, ptr %214, align 1
  store i8 %215, ptr %.235, align 1
  %216 = getelementptr inbounds nuw i8, ptr %.235, i64 1
  %217 = add nuw i64 %.313, 1
  br label %218

218:                                              ; preds = %213, %211
  %.336 = phi ptr [ %216, %213 ], [ %.235, %211 ]
  %.423 = phi i32 [ 0, %213 ], [ %spec.select2, %211 ]
  %.414 = phi i64 [ %217, %213 ], [ %.313, %211 ]
  %.9 = phi i64 [ %.49.lcssa, %213 ], [ %.8.lcssa, %211 ]
  %219 = icmp ult i64 %.217, 2
  %220 = lshr i64 %.217, 1
  %.132.idx = zext i1 %219 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.031, i64 %.132.idx
  %.318 = select i1 %219, i64 128, i64 %220
  br label %196, !llvm.loop !23

221:                                              ; preds = %196
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
  %.01.lcssa = phi i32 [ %.01, %26 ], [ %.01, %9 ]
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
  br i1 %3, label %.preheader, label %11

.preheader:                                       ; preds = %2
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %5

5:                                                ; preds = %.preheader, %9
  %.01 = phi i32 [ %10, %9 ], [ 1, %.preheader ]
  %exitcond = icmp ne i32 %.01, %0
  br i1 %exitcond, label %6, label %.loopexit

6:                                                ; preds = %5
  %7 = load ptr, ptr %4, align 8
  %8 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(4) @.str.4) #10
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %.loopexit, label %9

9:                                                ; preds = %6
  %10 = add nuw i32 %.01, 1
  br label %5, !llvm.loop !25

.loopexit:                                        ; preds = %5, %6
  %.not1.ph = phi i1 [ false, %6 ], [ true, %5 ]
  br label %11

11:                                               ; preds = %.loopexit, %2
  %.not1 = phi i1 [ true, %2 ], [ %.not1.ph, %.loopexit ]
  %12 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %13

13:                                               ; preds = %14, %11
  %.12 = phi i32 [ 0, %11 ], [ %15, %14 ]
  %exitcond1 = icmp ne i32 %.12, 30
  br i1 %exitcond1, label %14, label %16

14:                                               ; preds = %13
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  %15 = add nuw nsw i32 %.12, 1
  br label %13, !llvm.loop !26

16:                                               ; preds = %13
  call void @free(ptr noundef %12) #10
  br i1 %.not1, label %20, label %17

17:                                               ; preds = %16
  %18 = call ptr @__acrt_iob_func(i32 noundef 1) #10
  %19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.5, double noundef 0.000000e+00) #10
  br label %23

20:                                               ; preds = %16
  %21 = call ptr @__acrt_iob_func(i32 noundef 1) #10
  %22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.6, double noundef 0.000000e+00) #10
  br label %23

23:                                               ; preds = %20, %17
  %24 = call ptr @__acrt_iob_func(i32 noundef 1) #10
  %25 = call i32 @fflush(ptr noundef %24) #10
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
