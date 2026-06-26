; ModuleID = 'results\paper_full\CoyoteBench_huffbench\round_003\output.ll'
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

.preheader6:                                      ; preds = %12
  br label %22

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

22:                                               ; preds = %.preheader6, %31
  %.010 = phi i64 [ %.111, %31 ], [ 0, %.preheader6 ]
  %.13 = phi i64 [ %32, %31 ], [ 0, %.preheader6 ]
  %23 = icmp samesign ult i64 %.13, 256
  br i1 %23, label %25, label %.preheader5

.preheader5:                                      ; preds = %22
  %.010.lcssa = phi i64 [ %.010, %22 ]
  %24 = trunc i64 %.010.lcssa to i32
  br label %33

25:                                               ; preds = %22
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
  br label %22, !llvm.loop !10

33:                                               ; preds = %.preheader5, %34
  %.24 = phi i64 [ %36, %34 ], [ %.010.lcssa, %.preheader5 ]
  %.not = icmp eq i64 %.24, 0
  br i1 %.not, label %.preheader4, label %34

.preheader4:                                      ; preds = %33
  br label %37

34:                                               ; preds = %33
  %35 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %24, i32 noundef %35)
  %36 = add i64 %.24, -1
  br label %33, !llvm.loop !11

37:                                               ; preds = %.preheader4, %39
  %.212 = phi i64 [ %40, %39 ], [ %.010.lcssa, %.preheader4 ]
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
  %50 = add i64 %47, %49
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
  %.212.lcssa = phi i64 [ %.212, %37 ]
  %59 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
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
  %.144 = add i64 %.043, %73
  %.138 = call i32 @llvm.abs.i32(i32 %.037, i1 true)
  %74 = zext nneg i32 %.138 to i64
  %75 = shl i64 %.05, 1
  %76 = add i64 %.3, 1
  br label %70, !llvm.loop !13

77:                                               ; preds = %70
  %.043.lcssa = phi i64 [ %.043, %70 ]
  %.3.lcssa = phi i64 [ %.3, %70 ]
  %78 = trunc i64 %.043.lcssa to i32
  %79 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 %78, ptr %79, align 4
  %80 = trunc i64 %.3.lcssa to i8
  %81 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 %80, ptr %81, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.045)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.039)
  br label %82

82:                                               ; preds = %77, %66
  %.146 = phi i64 [ %spec.select, %77 ], [ %.045, %66 ]
  %.140 = phi i64 [ %.241, %77 ], [ %.039, %66 ]
  %83 = add nuw nsw i64 %.042, 1
  br label %61, !llvm.loop !14

84:                                               ; preds = %61
  %.045.lcssa = phi i64 [ %.045, %61 ]
  %.039.lcssa = phi i64 [ %.039, %61 ]
  %85 = icmp ugt i64 %.039.lcssa, 32
  br i1 %85, label %86, label %89

86:                                               ; preds = %84
  %87 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %88 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %87)
  call void @exit(i32 noundef 1) #11
  unreachable

89:                                               ; preds = %84
  %90 = icmp eq i64 %.045.lcssa, 0
  br i1 %90, label %91, label %.preheader3

.preheader3:                                      ; preds = %89
  br label %94

91:                                               ; preds = %89
  %92 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %93 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %92)
  call void @exit(i32 noundef 1) #11
  unreachable

94:                                               ; preds = %.preheader3, %130
  %.134 = phi ptr [ %131, %130 ], [ %0, %.preheader3 ]
  %.028 = phi i64 [ %.129.lcssa, %130 ], [ 0, %.preheader3 ]
  %.024 = phi i8 [ %.125.lcssa, %130 ], [ 0, %.preheader3 ]
  %.16 = phi i64 [ %132, %130 ], [ 0, %.preheader3 ]
  %.01 = phi i32 [ %.1.lcssa, %130 ], [ -1, %.preheader3 ]
  %95 = icmp ult i64 %.16, %1
  br i1 %95, label %96, label %133

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

105:                                              ; preds = %122, %96
  %106 = phi i8 [ %97, %96 ], [ %.pre-phi.in, %122 ]
  %107 = phi i8 [ %100, %96 ], [ %.pre, %122 ]
  %.129 = phi i64 [ %.028, %96 ], [ %.230, %122 ]
  %.125 = phi i8 [ %.024, %96 ], [ %.327, %122 ]
  %.015 = phi i64 [ %104, %96 ], [ %128, %122 ]
  %.4 = phi i64 [ 0, %96 ], [ %129, %122 ]
  %.1 = phi i32 [ %.01, %96 ], [ %.2, %122 ]
  %108 = zext i8 %107 to i64
  %109 = icmp ult i64 %.4, %108
  br i1 %109, label %110, label %130

110:                                              ; preds = %105
  %111 = icmp eq i32 %.1, 7
  br i1 %111, label %112, label %119

112:                                              ; preds = %110
  %113 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %113, align 1
  %114 = add i64 %.129, 1
  %115 = icmp eq i64 %114, %1
  br i1 %115, label %116, label %._crit_edge

._crit_edge:                                      ; preds = %112
  %.pre1 = load i8, ptr %.134, align 1
  br label %122

116:                                              ; preds = %112
  %117 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %118 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %117)
  call void @exit(i32 noundef 1) #11
  unreachable

119:                                              ; preds = %110
  %120 = add nsw i32 %.1, 1
  %121 = shl i8 %.125, 1
  br label %122

122:                                              ; preds = %119, %._crit_edge
  %.pre-phi.in = phi i8 [ %.pre1, %._crit_edge ], [ %106, %119 ]
  %.230 = phi i64 [ %114, %._crit_edge ], [ %.129, %119 ]
  %.226 = phi i8 [ 0, %._crit_edge ], [ %121, %119 ]
  %.2 = phi i32 [ 0, %._crit_edge ], [ %120, %119 ]
  %.pre-phi = zext i8 %.pre-phi.in to i64
  %123 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.pre-phi
  %124 = load i32, ptr %123, align 4
  %125 = zext i32 %124 to i64
  %126 = and i64 %.015, %125
  %.not5 = icmp ne i64 %126, 0
  %127 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %127
  %128 = lshr i64 %.015, 1
  %129 = add i64 %.4, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %105, !llvm.loop !15

130:                                              ; preds = %105
  %.129.lcssa = phi i64 [ %.129, %105 ]
  %.125.lcssa = phi i8 [ %.125, %105 ]
  %.1.lcssa = phi i32 [ %.1, %105 ]
  %131 = getelementptr inbounds nuw i8, ptr %.134, i64 1
  %132 = add i64 %.16, 1
  br label %94, !llvm.loop !16

133:                                              ; preds = %94
  %.028.lcssa = phi i64 [ %.028, %94 ]
  %.024.lcssa = phi i8 [ %.024, %94 ]
  %.01.lcssa = phi i32 [ %.01, %94 ]
  %134 = sub nsw i32 7, %.01.lcssa
  %135 = zext i8 %.024.lcssa to i32
  %136 = shl i32 %135, %134
  %137 = trunc i32 %136 to i8
  %138 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %137, ptr %138, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %139

139:                                              ; preds = %167, %133
  %.27 = phi i64 [ 0, %133 ], [ %168, %167 ]
  %.0 = phi ptr [ %9, %133 ], [ %143, %167 ]
  %140 = icmp samesign ult i64 %.27, 256
  br i1 %140, label %141, label %.preheader2

.preheader2:                                      ; preds = %139
  br label %169

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
  br i1 %.not3, label %167, label %150

150:                                              ; preds = %141
  %151 = add nsw i32 %148, -1
  %152 = shl nuw i32 1, %151
  %153 = sext i32 %152 to i64
  %154 = zext i8 %147 to i64
  %155 = zext i32 %145 to i64
  br label %156

156:                                              ; preds = %158, %150
  %.019 = phi i32 [ 0, %150 ], [ %spec.select1, %158 ]
  %.116 = phi i64 [ %153, %150 ], [ %163, %158 ]
  %.5 = phi i64 [ 0, %150 ], [ %164, %158 ]
  %157 = icmp ult i64 %.5, %154
  br i1 %157, label %158, label %165

158:                                              ; preds = %156
  %159 = shl i32 %.019, 1
  %160 = or disjoint i32 %159, 1
  %161 = and i64 %.116, %155
  %.not4 = icmp eq i64 %161, 0
  %162 = add i32 %159, 2
  %spec.select1 = select i1 %.not4, i32 %160, i32 %162
  %163 = lshr i64 %.116, 1
  %164 = add i64 %.5, 1
  br label %156, !llvm.loop !17

165:                                              ; preds = %156
  %.019.lcssa = phi i32 [ %.019, %156 ]
  %166 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.27
  store i32 %.019.lcssa, ptr %166, align 4
  br label %167

167:                                              ; preds = %165, %141
  %168 = add nuw nsw i64 %.27, 1
  br label %139, !llvm.loop !18

169:                                              ; preds = %.preheader2, %.critedge
  %.6 = phi i64 [ %189, %.critedge ], [ 1, %.preheader2 ]
  %170 = icmp samesign ult i64 %.6, 256
  br i1 %170, label %171, label %.preheader1

.preheader1:                                      ; preds = %169
  br label %190

171:                                              ; preds = %169
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
  %178 = add i64 %.38, -1
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
  %.38.lcssa = phi i64 [ %.38, %177 ], [ %.38, %176 ]
  %187 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %173, ptr %187, align 4
  %188 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %175, ptr %188, align 1
  %189 = add nuw nsw i64 %.6, 1
  br label %169, !llvm.loop !20

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
  %217 = add i64 %.313, 1
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
  %9 = sdiv i32 %2, 2
  %sext = shl i64 %8, 32
  %10 = ashr exact i64 %sext, 29
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  br label %12

12:                                               ; preds = %37, %4
  %.01 = phi i32 [ %3, %4 ], [ %.0, %37 ]
  %.not = icmp sgt i32 %.01, %9
  br i1 %.not, label %._crit_edge, label %13

._crit_edge:                                      ; preds = %12
  %.01.lcssa = phi i32 [ %.01, %12 ]
  %.pre = shl i64 %8, 32
  br label %41

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
  br i1 %36, label %split, label %37

37:                                               ; preds = %28
  %38 = sext i32 %.01 to i64
  %39 = getelementptr [8 x i8], ptr %1, i64 %38
  %40 = getelementptr i8, ptr %39, i64 -8
  store i64 %33, ptr %40, align 8
  br label %12, !llvm.loop !24

split:                                            ; preds = %28
  %sext.lcssa = phi i64 [ %sext, %28 ]
  %.01.lcssa1 = phi i32 [ %.01, %28 ]
  br label %41

41:                                               ; preds = %split, %._crit_edge
  %.012 = phi i32 [ %.01.lcssa1, %split ], [ %.01.lcssa, %._crit_edge ]
  %sext1.pre-phi = phi i64 [ %sext.lcssa, %split ], [ %.pre, %._crit_edge ]
  %42 = ashr exact i64 %sext1.pre-phi, 32
  %43 = sext i32 %.012 to i64
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
  br i1 %3, label %.preheader, label %12

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

.loopexit:                                        ; preds = %5, %7
  %.not1.ph = phi i1 [ false, %7 ], [ true, %5 ]
  br label %12

12:                                               ; preds = %.loopexit, %2
  %.not1 = phi i1 [ true, %2 ], [ %.not1.ph, %.loopexit ]
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
  %6 = add i32 %.neg1, %5
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
