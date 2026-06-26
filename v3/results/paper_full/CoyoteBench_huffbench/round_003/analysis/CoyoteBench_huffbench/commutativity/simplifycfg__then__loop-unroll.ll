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
  br i1 %13, label %14, label %.preheader13

.preheader13:                                     ; preds = %12
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

22:                                               ; preds = %38, %.preheader13
  %.010 = phi i64 [ 0, %.preheader13 ], [ %.111.1, %38 ]
  %.13 = phi i64 [ 0, %.preheader13 ], [ %39, %38 ]
  %23 = icmp samesign ult i64 %.13, 256
  br i1 %23, label %24, label %.preheader12

.preheader12:                                     ; preds = %22
  %.010.lcssa = phi i64 [ %.010, %22 ]
  br label %40

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
  br label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %31
  %34 = load i64, ptr %33, align 8
  %.not8.1 = icmp eq i64 %34, 0
  br i1 %.not8.1, label %38, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.111
  store i64 %31, ptr %36, align 8
  %37 = add i64 %.111, 1
  br label %38

38:                                               ; preds = %35, %32
  %.111.1 = phi i64 [ %37, %35 ], [ %.111, %32 ]
  %39 = add nuw nsw i64 %.13, 2
  br label %22, !llvm.loop !10

40:                                               ; preds = %.preheader12, %41
  %.24 = phi i64 [ %44, %41 ], [ %.010.lcssa, %.preheader12 ]
  %.not = icmp eq i64 %.24, 0
  br i1 %.not, label %.preheader11, label %41

.preheader11:                                     ; preds = %40
  br label %45

41:                                               ; preds = %40
  %42 = trunc i64 %.010.lcssa to i32
  %43 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %42, i32 noundef %43)
  %44 = add i64 %.24, -1
  br label %40, !llvm.loop !11

45:                                               ; preds = %.preheader11, %47
  %.212 = phi i64 [ %48, %47 ], [ %.010.lcssa, %.preheader11 ]
  %46 = icmp ugt i64 %.212, 1
  br i1 %46, label %47, label %67

47:                                               ; preds = %45
  %48 = add i64 %.212, -1
  %49 = load i64, ptr %4, align 16
  %50 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %48
  %51 = load i64, ptr %50, align 8
  store i64 %51, ptr %4, align 16
  %52 = trunc i64 %48 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %52, i32 noundef 1)
  %53 = load i64, ptr %4, align 16
  %54 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %53
  %55 = load i64, ptr %54, align 8
  %56 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %49
  %57 = load i64, ptr %56, align 8
  %58 = add i64 %55, %57
  %59 = add i64 %.212, 255
  %60 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %59
  store i64 %58, ptr %60, align 8
  %61 = trunc i64 %59 to i32
  %62 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %49
  store i32 %61, ptr %62, align 4
  %63 = trunc i64 %.212 to i32
  %64 = sub i32 -255, %63
  %65 = load i64, ptr %4, align 16
  %66 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %65
  store i32 %64, ptr %66, align 4
  store i64 %59, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %52, i32 noundef 1)
  br label %45, !llvm.loop !12

67:                                               ; preds = %45
  %.212.lcssa = phi i64 [ %.212, %45 ]
  %68 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 1024
  store i32 0, ptr %69, align 4
  br label %70

70:                                               ; preds = %90, %67
  %.045 = phi i64 [ 0, %67 ], [ %.146, %90 ]
  %.042 = phi i64 [ 0, %67 ], [ %91, %90 ]
  %.039 = phi i64 [ 0, %67 ], [ %.140, %90 ]
  %71 = icmp samesign ult i64 %.042, 256
  br i1 %71, label %72, label %92

72:                                               ; preds = %70
  %73 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.042
  %74 = load i64, ptr %73, align 8
  %.not6 = icmp eq i64 %74, 0
  br i1 %.not6, label %75, label %.preheader10

.preheader10:                                     ; preds = %72
  br label %78

75:                                               ; preds = %72
  %76 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 0, ptr %76, align 4
  %77 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 0, ptr %77, align 1
  br label %90

78:                                               ; preds = %.preheader10, %79
  %.043 = phi i64 [ %.144, %79 ], [ 0, %.preheader10 ]
  %.042.pn = phi i64 [ %82, %79 ], [ %.042, %.preheader10 ]
  %.05 = phi i64 [ %83, %79 ], [ 1, %.preheader10 ]
  %.3 = phi i64 [ %84, %79 ], [ 0, %.preheader10 ]
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.042.pn
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %85, label %79

79:                                               ; preds = %78
  %80 = icmp slt i32 %.037, 0
  %81 = select i1 %80, i64 %.05, i64 0
  %.144 = add i64 %.043, %81
  %.138 = call i32 @llvm.abs.i32(i32 %.037, i1 true)
  %82 = zext nneg i32 %.138 to i64
  %83 = shl i64 %.05, 1
  %84 = add i64 %.3, 1
  br label %78, !llvm.loop !13

85:                                               ; preds = %78
  %.043.lcssa = phi i64 [ %.043, %78 ]
  %.3.lcssa = phi i64 [ %.3, %78 ]
  %86 = trunc i64 %.043.lcssa to i32
  %87 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 %86, ptr %87, align 4
  %88 = trunc i64 %.3.lcssa to i8
  %89 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 %88, ptr %89, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.045)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.039)
  br label %90

90:                                               ; preds = %85, %75
  %.146 = phi i64 [ %spec.select, %85 ], [ %.045, %75 ]
  %.140 = phi i64 [ %.241, %85 ], [ %.039, %75 ]
  %91 = add nuw nsw i64 %.042, 1
  br label %70, !llvm.loop !14

92:                                               ; preds = %70
  %.045.lcssa = phi i64 [ %.045, %70 ]
  %.039.lcssa = phi i64 [ %.039, %70 ]
  %93 = icmp ugt i64 %.039.lcssa, 32
  br i1 %93, label %94, label %97

94:                                               ; preds = %92
  %95 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %96 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %95)
  call void @exit(i32 noundef 1) #11
  unreachable

97:                                               ; preds = %92
  %98 = icmp eq i64 %.045.lcssa, 0
  br i1 %98, label %99, label %.preheader3

.preheader3:                                      ; preds = %97
  br label %102

99:                                               ; preds = %97
  %100 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %101 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %100)
  call void @exit(i32 noundef 1) #11
  unreachable

102:                                              ; preds = %.preheader3, %142
  %.134 = phi ptr [ %143, %142 ], [ %0, %.preheader3 ]
  %.028 = phi i64 [ %.129.lcssa, %142 ], [ 0, %.preheader3 ]
  %.024 = phi i8 [ %.125.lcssa, %142 ], [ 0, %.preheader3 ]
  %.16 = phi i64 [ %144, %142 ], [ 0, %.preheader3 ]
  %.01 = phi i32 [ %.1.lcssa, %142 ], [ -1, %.preheader3 ]
  %103 = icmp ult i64 %.16, %1
  br i1 %103, label %104, label %145

104:                                              ; preds = %102
  %105 = load i8, ptr %.134, align 1
  %106 = zext i8 %105 to i64
  %107 = getelementptr inbounds nuw i8, ptr %7, i64 %106
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %108 to i32
  %110 = add nsw i32 %109, -1
  %111 = shl nuw i32 1, %110
  %112 = sext i32 %111 to i64
  br label %113

113:                                              ; preds = %132, %104
  %.129 = phi i64 [ %.028, %104 ], [ %.230, %132 ]
  %.125 = phi i8 [ %.024, %104 ], [ %.327, %132 ]
  %.015 = phi i64 [ %112, %104 ], [ %140, %132 ]
  %.4 = phi i64 [ 0, %104 ], [ %141, %132 ]
  %.1 = phi i32 [ %.01, %104 ], [ %.2, %132 ]
  %114 = load i8, ptr %.134, align 1
  %115 = zext i8 %114 to i64
  %116 = getelementptr inbounds nuw i8, ptr %7, i64 %115
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i64
  %119 = icmp ult i64 %.4, %118
  br i1 %119, label %120, label %142

120:                                              ; preds = %113
  %121 = icmp eq i32 %.1, 7
  br i1 %121, label %122, label %129

122:                                              ; preds = %120
  %123 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %123, align 1
  %124 = add i64 %.129, 1
  %125 = icmp eq i64 %124, %1
  br i1 %125, label %126, label %132

126:                                              ; preds = %122
  %127 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %128 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %127)
  call void @exit(i32 noundef 1) #11
  unreachable

129:                                              ; preds = %120
  %130 = add nsw i32 %.1, 1
  %131 = shl i8 %.125, 1
  br label %132

132:                                              ; preds = %129, %122
  %.230 = phi i64 [ %.129, %129 ], [ %124, %122 ]
  %.226 = phi i8 [ %131, %129 ], [ 0, %122 ]
  %.2 = phi i32 [ %130, %129 ], [ 0, %122 ]
  %133 = load i8, ptr %.134, align 1
  %134 = zext i8 %133 to i64
  %135 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %134
  %136 = load i32, ptr %135, align 4
  %137 = zext i32 %136 to i64
  %138 = and i64 %.015, %137
  %.not5 = icmp ne i64 %138, 0
  %139 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %139
  %140 = lshr i64 %.015, 1
  %141 = add i64 %.4, 1
  br label %113, !llvm.loop !15

142:                                              ; preds = %113
  %.129.lcssa = phi i64 [ %.129, %113 ]
  %.125.lcssa = phi i8 [ %.125, %113 ]
  %.1.lcssa = phi i32 [ %.1, %113 ]
  %143 = getelementptr inbounds nuw i8, ptr %.134, i64 1
  %144 = add i64 %.16, 1
  br label %102, !llvm.loop !16

145:                                              ; preds = %102
  %.028.lcssa = phi i64 [ %.028, %102 ]
  %.024.lcssa = phi i8 [ %.024, %102 ]
  %.01.lcssa = phi i32 [ %.01, %102 ]
  %146 = sub nsw i32 7, %.01.lcssa
  %147 = zext i8 %.024.lcssa to i32
  %148 = shl i32 %147, %146
  %149 = trunc i32 %148 to i8
  %150 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %149, ptr %150, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %151

151:                                              ; preds = %181, %145
  %.27 = phi i64 [ 0, %145 ], [ %182, %181 ]
  %.0 = phi ptr [ %9, %145 ], [ %155, %181 ]
  %152 = icmp samesign ult i64 %.27, 256
  br i1 %152, label %153, label %.preheader2

.preheader2:                                      ; preds = %151
  br label %183

153:                                              ; preds = %151
  %154 = trunc nuw i64 %.27 to i8
  store i8 %154, ptr %.0, align 1
  %155 = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %156 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.27
  %157 = load i32, ptr %156, align 4
  %158 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %159 = load i8, ptr %158, align 1
  %160 = zext i8 %159 to i32
  %161 = or i32 %157, %160
  %.not3 = icmp eq i32 %161, 0
  br i1 %.not3, label %181, label %162

162:                                              ; preds = %153
  %163 = add nsw i32 %160, -1
  %164 = shl nuw i32 1, %163
  %165 = sext i32 %164 to i64
  br label %166

166:                                              ; preds = %170, %162
  %.019 = phi i32 [ 0, %162 ], [ %spec.select1, %170 ]
  %.116 = phi i64 [ %165, %162 ], [ %177, %170 ]
  %.5 = phi i64 [ 0, %162 ], [ %178, %170 ]
  %167 = load i8, ptr %158, align 1
  %168 = zext i8 %167 to i64
  %169 = icmp ult i64 %.5, %168
  br i1 %169, label %170, label %179

170:                                              ; preds = %166
  %171 = shl i32 %.019, 1
  %172 = or disjoint i32 %171, 1
  %173 = load i32, ptr %156, align 4
  %174 = zext i32 %173 to i64
  %175 = and i64 %.116, %174
  %.not4 = icmp eq i64 %175, 0
  %176 = add i32 %171, 2
  %spec.select1 = select i1 %.not4, i32 %172, i32 %176
  %177 = lshr i64 %.116, 1
  %178 = add i64 %.5, 1
  br label %166, !llvm.loop !17

179:                                              ; preds = %166
  %.019.lcssa = phi i32 [ %.019, %166 ]
  %180 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.27
  store i32 %.019.lcssa, ptr %180, align 4
  br label %181

181:                                              ; preds = %179, %153
  %182 = add nuw nsw i64 %.27, 1
  br label %151, !llvm.loop !18

183:                                              ; preds = %.preheader2, %.critedge
  %.6 = phi i64 [ %203, %.critedge ], [ 1, %.preheader2 ]
  %184 = icmp samesign ult i64 %.6, 256
  br i1 %184, label %185, label %.preheader1

.preheader1:                                      ; preds = %183
  br label %204

185:                                              ; preds = %183
  %186 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.6
  %187 = load i32, ptr %186, align 4
  %188 = getelementptr inbounds nuw i8, ptr %9, i64 %.6
  %189 = load i8, ptr %188, align 1
  br label %190

190:                                              ; preds = %196, %185
  %.38 = phi i64 [ %.6, %185 ], [ %192, %196 ]
  %.not2 = icmp eq i64 %.38, 0
  br i1 %.not2, label %.critedge, label %191

191:                                              ; preds = %190
  %192 = add i64 %.38, -1
  %193 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %192
  %194 = load i32, ptr %193, align 4
  %195 = icmp ugt i32 %194, %187
  br i1 %195, label %196, label %.critedge

196:                                              ; preds = %191
  %197 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %194, ptr %197, align 4
  %198 = getelementptr inbounds nuw i8, ptr %9, i64 %192
  %199 = load i8, ptr %198, align 1
  %200 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %199, ptr %200, align 1
  br label %190, !llvm.loop !19

.critedge:                                        ; preds = %191, %190
  %.38.lcssa = phi i64 [ %.38, %191 ], [ %.38, %190 ]
  %201 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %187, ptr %201, align 4
  %202 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %189, ptr %202, align 1
  %203 = add nuw nsw i64 %.6, 1
  br label %183, !llvm.loop !20

204:                                              ; preds = %.preheader1, %208
  %.49 = phi i64 [ %209, %208 ], [ 0, %.preheader1 ]
  %205 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %206 = load i32, ptr %205, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %.preheader

.preheader:                                       ; preds = %204
  %.49.lcssa = phi i64 [ %.49, %204 ]
  br label %210

208:                                              ; preds = %204
  %209 = add i64 %.49, 1
  br label %204, !llvm.loop !21

210:                                              ; preds = %.preheader, %232
  %.235 = phi ptr [ %.336, %232 ], [ %0, %.preheader ]
  %.031 = phi ptr [ %.132, %232 ], [ %11, %.preheader ]
  %.221 = phi i32 [ %.423, %232 ], [ 0, %.preheader ]
  %.217 = phi i64 [ %.318, %232 ], [ 128, %.preheader ]
  %.313 = phi i64 [ %.414, %232 ], [ 0, %.preheader ]
  %.7 = phi i64 [ %.9, %232 ], [ %.49.lcssa, %.preheader ]
  %211 = icmp ult i64 %.313, %1
  br i1 %211, label %212, label %235

212:                                              ; preds = %210
  %213 = shl i32 %.221, 1
  %214 = or disjoint i32 %213, 1
  %215 = load i8, ptr %.031, align 1
  %216 = zext i8 %215 to i64
  %217 = and i64 %.217, %216
  %.not1 = icmp eq i64 %217, 0
  %218 = add i32 %213, 2
  %spec.select2 = select i1 %.not1, i32 %214, i32 %218
  br label %219

219:                                              ; preds = %223, %212
  %.8 = phi i64 [ %.7, %212 ], [ %224, %223 ]
  %220 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %221 = load i32, ptr %220, align 4
  %222 = icmp ult i32 %221, %spec.select2
  br i1 %222, label %223, label %225

223:                                              ; preds = %219
  %224 = add i64 %.8, 1
  br label %219, !llvm.loop !22

225:                                              ; preds = %219
  %.8.lcssa = phi i64 [ %.8, %219 ]
  %.lcssa = phi i32 [ %221, %219 ]
  %226 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %226, label %227, label %232

227:                                              ; preds = %225
  %228 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %229 = load i8, ptr %228, align 1
  store i8 %229, ptr %.235, align 1
  %230 = getelementptr inbounds nuw i8, ptr %.235, i64 1
  %231 = add i64 %.313, 1
  br label %232

232:                                              ; preds = %227, %225
  %.336 = phi ptr [ %230, %227 ], [ %.235, %225 ]
  %.423 = phi i32 [ 0, %227 ], [ %spec.select2, %225 ]
  %.414 = phi i64 [ %231, %227 ], [ %.313, %225 ]
  %.9 = phi i64 [ %.49.lcssa, %227 ], [ %.8.lcssa, %225 ]
  %233 = icmp ult i64 %.217, 2
  %234 = lshr i64 %.217, 1
  %.132.idx = zext i1 %233 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.031, i64 %.132.idx
  %.318 = select i1 %233, i64 128, i64 %234
  br label %210, !llvm.loop !23

235:                                              ; preds = %210
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
