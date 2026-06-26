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
  br i1 %13, label %14, label %.preheader12

.preheader12:                                     ; preds = %12
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

22:                                               ; preds = %38, %.preheader12
  %.010 = phi i64 [ 0, %.preheader12 ], [ %.111.1, %38 ]
  %.13 = phi i64 [ 0, %.preheader12 ], [ %39, %38 ]
  %23 = icmp samesign ult i64 %.13, 256
  br i1 %23, label %24, label %.preheader11

.preheader11:                                     ; preds = %22
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

40:                                               ; preds = %.preheader11, %41
  %.24 = phi i64 [ %44, %41 ], [ %.010.lcssa, %.preheader11 ]
  %.not = icmp eq i64 %.24, 0
  br i1 %.not, label %.preheader10, label %41

.preheader10:                                     ; preds = %40
  br label %45

41:                                               ; preds = %40
  %42 = trunc i64 %.010.lcssa to i32
  %43 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %42, i32 noundef %43)
  %44 = add i64 %.24, -1
  br label %40, !llvm.loop !11

45:                                               ; preds = %.preheader10, %47
  %.212 = phi i64 [ %48, %47 ], [ %.010.lcssa, %.preheader10 ]
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

70:                                               ; preds = %91, %67
  %.045 = phi i64 [ 0, %67 ], [ %.146, %91 ]
  %.042 = phi i64 [ 0, %67 ], [ %92, %91 ]
  %.039 = phi i64 [ 0, %67 ], [ %.140, %91 ]
  %71 = icmp samesign ult i64 %.042, 256
  br i1 %71, label %72, label %93

72:                                               ; preds = %70
  %73 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.042
  %74 = load i64, ptr %73, align 8
  %.not6 = icmp eq i64 %74, 0
  br i1 %.not6, label %75, label %78

75:                                               ; preds = %72
  %76 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 0, ptr %76, align 4
  %77 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 0, ptr %77, align 1
  br label %91

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %80, %78
  %.043 = phi i64 [ 0, %78 ], [ %.144, %80 ]
  %.042.pn = phi i64 [ %.042, %78 ], [ %83, %80 ]
  %.05 = phi i64 [ 1, %78 ], [ %84, %80 ]
  %.3 = phi i64 [ 0, %78 ], [ %85, %80 ]
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.042.pn
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %86, label %80

80:                                               ; preds = %79
  %81 = icmp slt i32 %.037, 0
  %82 = select i1 %81, i64 %.05, i64 0
  %.144 = add i64 %.043, %82
  %.138 = call i32 @llvm.abs.i32(i32 %.037, i1 true)
  %83 = zext nneg i32 %.138 to i64
  %84 = shl i64 %.05, 1
  %85 = add i64 %.3, 1
  br label %79, !llvm.loop !13

86:                                               ; preds = %79
  %.043.lcssa = phi i64 [ %.043, %79 ]
  %.3.lcssa = phi i64 [ %.3, %79 ]
  %87 = trunc i64 %.043.lcssa to i32
  %88 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 %87, ptr %88, align 4
  %89 = trunc i64 %.3.lcssa to i8
  %90 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 %89, ptr %90, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.045)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.039)
  br label %91

91:                                               ; preds = %86, %75
  %.146 = phi i64 [ %spec.select, %86 ], [ %.045, %75 ]
  %.140 = phi i64 [ %.241, %86 ], [ %.039, %75 ]
  %92 = add nuw nsw i64 %.042, 1
  br label %70, !llvm.loop !14

93:                                               ; preds = %70
  %.045.lcssa = phi i64 [ %.045, %70 ]
  %.039.lcssa = phi i64 [ %.039, %70 ]
  %94 = icmp ugt i64 %.039.lcssa, 32
  br i1 %94, label %95, label %98

95:                                               ; preds = %93
  %96 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %97 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %96)
  call void @exit(i32 noundef 1) #11
  unreachable

98:                                               ; preds = %93
  %99 = icmp eq i64 %.045.lcssa, 0
  br i1 %99, label %100, label %.preheader3

.preheader3:                                      ; preds = %98
  br label %103

100:                                              ; preds = %98
  %101 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %102 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %101)
  call void @exit(i32 noundef 1) #11
  unreachable

103:                                              ; preds = %.preheader3, %143
  %.134 = phi ptr [ %144, %143 ], [ %0, %.preheader3 ]
  %.028 = phi i64 [ %.129.lcssa, %143 ], [ 0, %.preheader3 ]
  %.024 = phi i8 [ %.125.lcssa, %143 ], [ 0, %.preheader3 ]
  %.16 = phi i64 [ %145, %143 ], [ 0, %.preheader3 ]
  %.01 = phi i32 [ %.1.lcssa, %143 ], [ -1, %.preheader3 ]
  %104 = icmp ult i64 %.16, %1
  br i1 %104, label %105, label %146

105:                                              ; preds = %103
  %106 = load i8, ptr %.134, align 1
  %107 = zext i8 %106 to i64
  %108 = getelementptr inbounds nuw i8, ptr %7, i64 %107
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %109 to i32
  %111 = add nsw i32 %110, -1
  %112 = shl nuw i32 1, %111
  %113 = sext i32 %112 to i64
  br label %114

114:                                              ; preds = %133, %105
  %.129 = phi i64 [ %.028, %105 ], [ %.230, %133 ]
  %.125 = phi i8 [ %.024, %105 ], [ %.327, %133 ]
  %.015 = phi i64 [ %113, %105 ], [ %141, %133 ]
  %.4 = phi i64 [ 0, %105 ], [ %142, %133 ]
  %.1 = phi i32 [ %.01, %105 ], [ %.2, %133 ]
  %115 = load i8, ptr %.134, align 1
  %116 = zext i8 %115 to i64
  %117 = getelementptr inbounds nuw i8, ptr %7, i64 %116
  %118 = load i8, ptr %117, align 1
  %119 = zext i8 %118 to i64
  %120 = icmp ult i64 %.4, %119
  br i1 %120, label %121, label %143

121:                                              ; preds = %114
  %122 = icmp eq i32 %.1, 7
  br i1 %122, label %123, label %130

123:                                              ; preds = %121
  %124 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %124, align 1
  %125 = add i64 %.129, 1
  %126 = icmp eq i64 %125, %1
  br i1 %126, label %127, label %133

127:                                              ; preds = %123
  %128 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %129 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %128)
  call void @exit(i32 noundef 1) #11
  unreachable

130:                                              ; preds = %121
  %131 = add nsw i32 %.1, 1
  %132 = shl i8 %.125, 1
  br label %133

133:                                              ; preds = %130, %123
  %.230 = phi i64 [ %.129, %130 ], [ %125, %123 ]
  %.226 = phi i8 [ %132, %130 ], [ 0, %123 ]
  %.2 = phi i32 [ %131, %130 ], [ 0, %123 ]
  %134 = load i8, ptr %.134, align 1
  %135 = zext i8 %134 to i64
  %136 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %135
  %137 = load i32, ptr %136, align 4
  %138 = zext i32 %137 to i64
  %139 = and i64 %.015, %138
  %.not5 = icmp ne i64 %139, 0
  %140 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %140
  %141 = lshr i64 %.015, 1
  %142 = add nuw nsw i64 %.4, 1
  br label %114, !llvm.loop !15

143:                                              ; preds = %114
  %.129.lcssa = phi i64 [ %.129, %114 ]
  %.125.lcssa = phi i8 [ %.125, %114 ]
  %.1.lcssa = phi i32 [ %.1, %114 ]
  %144 = getelementptr inbounds nuw i8, ptr %.134, i64 1
  %145 = add i64 %.16, 1
  br label %103, !llvm.loop !16

146:                                              ; preds = %103
  %.028.lcssa = phi i64 [ %.028, %103 ]
  %.024.lcssa = phi i8 [ %.024, %103 ]
  %.01.lcssa = phi i32 [ %.01, %103 ]
  %147 = sub nsw i32 7, %.01.lcssa
  %148 = zext i8 %.024.lcssa to i32
  %149 = shl i32 %148, %147
  %150 = trunc i32 %149 to i8
  %151 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %150, ptr %151, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %152

152:                                              ; preds = %182, %146
  %.27 = phi i64 [ 0, %146 ], [ %183, %182 ]
  %.0 = phi ptr [ %9, %146 ], [ %156, %182 ]
  %153 = icmp samesign ult i64 %.27, 256
  br i1 %153, label %154, label %.preheader2

.preheader2:                                      ; preds = %152
  br label %184

154:                                              ; preds = %152
  %155 = trunc nuw i64 %.27 to i8
  store i8 %155, ptr %.0, align 1
  %156 = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %157 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.27
  %158 = load i32, ptr %157, align 4
  %159 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %160 = load i8, ptr %159, align 1
  %161 = zext i8 %160 to i32
  %162 = or i32 %158, %161
  %.not3 = icmp eq i32 %162, 0
  br i1 %.not3, label %182, label %163

163:                                              ; preds = %154
  %164 = add nsw i32 %161, -1
  %165 = shl nuw i32 1, %164
  %166 = sext i32 %165 to i64
  br label %167

167:                                              ; preds = %171, %163
  %.019 = phi i32 [ 0, %163 ], [ %spec.select1, %171 ]
  %.116 = phi i64 [ %166, %163 ], [ %178, %171 ]
  %.5 = phi i64 [ 0, %163 ], [ %179, %171 ]
  %168 = load i8, ptr %159, align 1
  %169 = zext i8 %168 to i64
  %170 = icmp ult i64 %.5, %169
  br i1 %170, label %171, label %180

171:                                              ; preds = %167
  %172 = shl i32 %.019, 1
  %173 = or disjoint i32 %172, 1
  %174 = load i32, ptr %157, align 4
  %175 = zext i32 %174 to i64
  %176 = and i64 %.116, %175
  %.not4 = icmp eq i64 %176, 0
  %177 = add i32 %172, 2
  %spec.select1 = select i1 %.not4, i32 %173, i32 %177
  %178 = lshr i64 %.116, 1
  %179 = add nuw nsw i64 %.5, 1
  br label %167, !llvm.loop !17

180:                                              ; preds = %167
  %.019.lcssa = phi i32 [ %.019, %167 ]
  %181 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.27
  store i32 %.019.lcssa, ptr %181, align 4
  br label %182

182:                                              ; preds = %180, %154
  %183 = add nuw nsw i64 %.27, 1
  br label %152, !llvm.loop !18

184:                                              ; preds = %.preheader2, %.critedge
  %.6 = phi i64 [ %204, %.critedge ], [ 1, %.preheader2 ]
  %185 = icmp samesign ult i64 %.6, 256
  br i1 %185, label %186, label %.preheader1

.preheader1:                                      ; preds = %184
  br label %205

186:                                              ; preds = %184
  %187 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.6
  %188 = load i32, ptr %187, align 4
  %189 = getelementptr inbounds nuw i8, ptr %9, i64 %.6
  %190 = load i8, ptr %189, align 1
  br label %191

191:                                              ; preds = %197, %186
  %.38 = phi i64 [ %.6, %186 ], [ %193, %197 ]
  %.not2 = icmp eq i64 %.38, 0
  br i1 %.not2, label %.critedge, label %192

192:                                              ; preds = %191
  %193 = add nsw i64 %.38, -1
  %194 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %193
  %195 = load i32, ptr %194, align 4
  %196 = icmp ugt i32 %195, %188
  br i1 %196, label %197, label %.critedge

197:                                              ; preds = %192
  %198 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %195, ptr %198, align 4
  %199 = getelementptr inbounds nuw i8, ptr %9, i64 %193
  %200 = load i8, ptr %199, align 1
  %201 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %200, ptr %201, align 1
  br label %191, !llvm.loop !19

.critedge:                                        ; preds = %192, %191
  %.38.lcssa = phi i64 [ %.38, %192 ], [ 0, %191 ]
  %202 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %188, ptr %202, align 4
  %203 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %190, ptr %203, align 1
  %204 = add nuw nsw i64 %.6, 1
  br label %184, !llvm.loop !20

205:                                              ; preds = %.preheader1, %209
  %.49 = phi i64 [ %210, %209 ], [ 0, %.preheader1 ]
  %206 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %207 = load i32, ptr %206, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %.preheader

.preheader:                                       ; preds = %205
  %.49.lcssa = phi i64 [ %.49, %205 ]
  br label %211

209:                                              ; preds = %205
  %210 = add i64 %.49, 1
  br label %205, !llvm.loop !21

211:                                              ; preds = %.preheader, %233
  %.235 = phi ptr [ %.336, %233 ], [ %0, %.preheader ]
  %.031 = phi ptr [ %.132, %233 ], [ %11, %.preheader ]
  %.221 = phi i32 [ %.423, %233 ], [ 0, %.preheader ]
  %.217 = phi i64 [ %.318, %233 ], [ 128, %.preheader ]
  %.313 = phi i64 [ %.414, %233 ], [ 0, %.preheader ]
  %.7 = phi i64 [ %.9, %233 ], [ %.49.lcssa, %.preheader ]
  %212 = icmp ult i64 %.313, %1
  br i1 %212, label %213, label %236

213:                                              ; preds = %211
  %214 = shl i32 %.221, 1
  %215 = or disjoint i32 %214, 1
  %216 = load i8, ptr %.031, align 1
  %217 = zext i8 %216 to i64
  %218 = and i64 %.217, %217
  %.not1 = icmp eq i64 %218, 0
  %219 = add i32 %214, 2
  %spec.select2 = select i1 %.not1, i32 %215, i32 %219
  br label %220

220:                                              ; preds = %224, %213
  %.8 = phi i64 [ %.7, %213 ], [ %225, %224 ]
  %221 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %222 = load i32, ptr %221, align 4
  %223 = icmp ult i32 %222, %spec.select2
  br i1 %223, label %224, label %226

224:                                              ; preds = %220
  %225 = add i64 %.8, 1
  br label %220, !llvm.loop !22

226:                                              ; preds = %220
  %.8.lcssa = phi i64 [ %.8, %220 ]
  %.lcssa = phi i32 [ %222, %220 ]
  %227 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %227, label %228, label %233

228:                                              ; preds = %226
  %229 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %230 = load i8, ptr %229, align 1
  store i8 %230, ptr %.235, align 1
  %231 = getelementptr inbounds nuw i8, ptr %.235, i64 1
  %232 = add i64 %.313, 1
  br label %233

233:                                              ; preds = %228, %226
  %.336 = phi ptr [ %231, %228 ], [ %.235, %226 ]
  %.423 = phi i32 [ 0, %228 ], [ %spec.select2, %226 ]
  %.414 = phi i64 [ %232, %228 ], [ %.313, %226 ]
  %.9 = phi i64 [ %.49.lcssa, %228 ], [ %.8.lcssa, %226 ]
  %234 = icmp ult i64 %.217, 2
  %235 = lshr i64 %.217, 1
  %.132.idx = zext i1 %234 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.031, i64 %.132.idx
  %.318 = select i1 %234, i64 128, i64 %235
  br label %211, !llvm.loop !23

236:                                              ; preds = %211
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
define internal range(i64 -1, 32) i64 @random4() #0 {
  %1 = load i32, ptr @seed, align 4
  %2 = xor i32 %1, 123459876
  %3 = sdiv i32 %2, 127773
  %.neg = mul nsw i32 %3, -127773
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
