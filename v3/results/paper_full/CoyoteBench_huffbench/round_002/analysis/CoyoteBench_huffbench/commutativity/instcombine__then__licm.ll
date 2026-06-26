; ModuleID = 'results\paper_full\CoyoteBench_huffbench\round_001\output.ll'
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
  br i1 %13, label %14, label %.preheader14

.preheader14:                                     ; preds = %12
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

22:                                               ; preds = %.preheader14, %31
  %.010 = phi i64 [ %.111, %31 ], [ 0, %.preheader14 ]
  %.13 = phi i64 [ %32, %31 ], [ 0, %.preheader14 ]
  %23 = icmp samesign ult i64 %.13, 256
  br i1 %23, label %25, label %.preheader13

.preheader13:                                     ; preds = %22
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

33:                                               ; preds = %.preheader13, %34
  %.24 = phi i64 [ %36, %34 ], [ %.010.lcssa, %.preheader13 ]
  %.not = icmp eq i64 %.24, 0
  br i1 %.not, label %.preheader12, label %34

.preheader12:                                     ; preds = %33
  br label %37

34:                                               ; preds = %33
  %35 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %24, i32 noundef %35)
  %36 = add i64 %.24, -1
  br label %33, !llvm.loop !11

37:                                               ; preds = %.preheader12, %39
  %.212 = phi i64 [ %40, %39 ], [ %.010.lcssa, %.preheader12 ]
  %38 = icmp ugt i64 %.212, 1
  br i1 %38, label %39, label %59

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
  %57 = load i64, ptr %4, align 16
  %58 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %57
  store i32 %56, ptr %58, align 4
  store i64 %51, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %44, i32 noundef 1)
  br label %37, !llvm.loop !12

59:                                               ; preds = %37
  %.212.lcssa = phi i64 [ %.212, %37 ]
  %60 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %61 = getelementptr inbounds nuw i8, ptr %60, i64 1024
  store i32 0, ptr %61, align 4
  br label %62

62:                                               ; preds = %83, %59
  %.045 = phi i64 [ 0, %59 ], [ %.146, %83 ]
  %.042 = phi i64 [ 0, %59 ], [ %84, %83 ]
  %.039 = phi i64 [ 0, %59 ], [ %.140, %83 ]
  %63 = icmp samesign ult i64 %.042, 256
  br i1 %63, label %64, label %85

64:                                               ; preds = %62
  %65 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.042
  %66 = load i64, ptr %65, align 8
  %.not6 = icmp eq i64 %66, 0
  br i1 %.not6, label %67, label %70

67:                                               ; preds = %64
  %68 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 0, ptr %68, align 4
  %69 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 0, ptr %69, align 1
  br label %83

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %72, %70
  %.043 = phi i64 [ 0, %70 ], [ %.144, %72 ]
  %.042.pn = phi i64 [ %.042, %70 ], [ %75, %72 ]
  %.05 = phi i64 [ 1, %70 ], [ %76, %72 ]
  %.3 = phi i64 [ 0, %70 ], [ %77, %72 ]
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.042.pn
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %78, label %72

72:                                               ; preds = %71
  %73 = icmp slt i32 %.037, 0
  %74 = select i1 %73, i64 %.05, i64 0
  %.144 = add i64 %.043, %74
  %.138 = call i32 @llvm.abs.i32(i32 %.037, i1 true)
  %75 = zext nneg i32 %.138 to i64
  %76 = shl i64 %.05, 1
  %77 = add i64 %.3, 1
  br label %71, !llvm.loop !13

78:                                               ; preds = %71
  %.043.lcssa = phi i64 [ %.043, %71 ]
  %.3.lcssa = phi i64 [ %.3, %71 ]
  %79 = trunc i64 %.043.lcssa to i32
  %80 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 %79, ptr %80, align 4
  %81 = trunc i64 %.3.lcssa to i8
  %82 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 %81, ptr %82, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.045)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.039)
  br label %83

83:                                               ; preds = %78, %67
  %.146 = phi i64 [ %spec.select, %78 ], [ %.045, %67 ]
  %.140 = phi i64 [ %.241, %78 ], [ %.039, %67 ]
  %84 = add nuw nsw i64 %.042, 1
  br label %62, !llvm.loop !14

85:                                               ; preds = %62
  %.045.lcssa = phi i64 [ %.045, %62 ]
  %.039.lcssa = phi i64 [ %.039, %62 ]
  %86 = icmp ugt i64 %.039.lcssa, 32
  br i1 %86, label %87, label %90

87:                                               ; preds = %85
  %88 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %89 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %88)
  call void @exit(i32 noundef 1) #11
  unreachable

90:                                               ; preds = %85
  %91 = icmp eq i64 %.045.lcssa, 0
  br i1 %91, label %92, label %.preheader11

.preheader11:                                     ; preds = %90
  br label %95

92:                                               ; preds = %90
  %93 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %94 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %93)
  call void @exit(i32 noundef 1) #11
  unreachable

95:                                               ; preds = %.preheader11, %135
  %.134 = phi ptr [ %136, %135 ], [ %0, %.preheader11 ]
  %.028 = phi i64 [ %.129.lcssa, %135 ], [ 0, %.preheader11 ]
  %.024 = phi i8 [ %.125.lcssa, %135 ], [ 0, %.preheader11 ]
  %.16 = phi i64 [ %137, %135 ], [ 0, %.preheader11 ]
  %.01 = phi i32 [ %.1.lcssa, %135 ], [ -1, %.preheader11 ]
  %96 = icmp ult i64 %.16, %1
  br i1 %96, label %97, label %138

97:                                               ; preds = %95
  %98 = load i8, ptr %.134, align 1
  %99 = zext i8 %98 to i64
  %100 = getelementptr inbounds nuw i8, ptr %7, i64 %99
  %101 = load i8, ptr %100, align 1
  %102 = zext i8 %101 to i32
  %103 = add nsw i32 %102, -1
  %104 = shl nuw i32 1, %103
  %105 = sext i32 %104 to i64
  br label %106

106:                                              ; preds = %125, %97
  %.129 = phi i64 [ %.028, %97 ], [ %.230, %125 ]
  %.125 = phi i8 [ %.024, %97 ], [ %.327, %125 ]
  %.015 = phi i64 [ %105, %97 ], [ %133, %125 ]
  %.4 = phi i64 [ 0, %97 ], [ %134, %125 ]
  %.1 = phi i32 [ %.01, %97 ], [ %.2, %125 ]
  %107 = load i8, ptr %.134, align 1
  %108 = zext i8 %107 to i64
  %109 = getelementptr inbounds nuw i8, ptr %7, i64 %108
  %110 = load i8, ptr %109, align 1
  %111 = zext i8 %110 to i64
  %112 = icmp ult i64 %.4, %111
  br i1 %112, label %113, label %135

113:                                              ; preds = %106
  %114 = icmp eq i32 %.1, 7
  br i1 %114, label %115, label %122

115:                                              ; preds = %113
  %116 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %116, align 1
  %117 = add i64 %.129, 1
  %118 = icmp eq i64 %117, %1
  br i1 %118, label %119, label %125

119:                                              ; preds = %115
  %120 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %121 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %120)
  call void @exit(i32 noundef 1) #11
  unreachable

122:                                              ; preds = %113
  %123 = add nsw i32 %.1, 1
  %124 = shl i8 %.125, 1
  br label %125

125:                                              ; preds = %122, %115
  %.230 = phi i64 [ %.129, %122 ], [ %117, %115 ]
  %.226 = phi i8 [ %124, %122 ], [ 0, %115 ]
  %.2 = phi i32 [ %123, %122 ], [ 0, %115 ]
  %126 = load i8, ptr %.134, align 1
  %127 = zext i8 %126 to i64
  %128 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %127
  %129 = load i32, ptr %128, align 4
  %130 = zext i32 %129 to i64
  %131 = and i64 %.015, %130
  %.not5 = icmp ne i64 %131, 0
  %132 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %132
  %133 = lshr i64 %.015, 1
  %134 = add i64 %.4, 1
  br label %106, !llvm.loop !15

135:                                              ; preds = %106
  %.129.lcssa = phi i64 [ %.129, %106 ]
  %.125.lcssa = phi i8 [ %.125, %106 ]
  %.1.lcssa = phi i32 [ %.1, %106 ]
  %136 = getelementptr inbounds nuw i8, ptr %.134, i64 1
  %137 = add i64 %.16, 1
  br label %95, !llvm.loop !16

138:                                              ; preds = %95
  %.028.lcssa = phi i64 [ %.028, %95 ]
  %.024.lcssa = phi i8 [ %.024, %95 ]
  %.01.lcssa = phi i32 [ %.01, %95 ]
  %139 = sub nsw i32 7, %.01.lcssa
  %140 = zext i8 %.024.lcssa to i32
  %141 = shl i32 %140, %139
  %142 = trunc i32 %141 to i8
  %143 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %142, ptr %143, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %144

144:                                              ; preds = %174, %138
  %.27 = phi i64 [ 0, %138 ], [ %175, %174 ]
  %.0 = phi ptr [ %9, %138 ], [ %148, %174 ]
  %145 = icmp samesign ult i64 %.27, 256
  br i1 %145, label %146, label %.preheader10

.preheader10:                                     ; preds = %144
  br label %176

146:                                              ; preds = %144
  %147 = trunc nuw i64 %.27 to i8
  store i8 %147, ptr %.0, align 1
  %148 = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %149 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.27
  %150 = load i32, ptr %149, align 4
  %151 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %152 = load i8, ptr %151, align 1
  %153 = zext i8 %152 to i32
  %154 = or i32 %150, %153
  %.not3 = icmp eq i32 %154, 0
  br i1 %.not3, label %174, label %155

155:                                              ; preds = %146
  %156 = add nsw i32 %153, -1
  %157 = shl nuw i32 1, %156
  %158 = sext i32 %157 to i64
  %159 = load i8, ptr %151, align 1
  %160 = zext i8 %159 to i64
  br label %161

161:                                              ; preds = %163, %155
  %.019 = phi i32 [ 0, %155 ], [ %spec.select1, %163 ]
  %.116 = phi i64 [ %158, %155 ], [ %170, %163 ]
  %.5 = phi i64 [ 0, %155 ], [ %171, %163 ]
  %162 = icmp ult i64 %.5, %160
  br i1 %162, label %163, label %172

163:                                              ; preds = %161
  %164 = shl i32 %.019, 1
  %165 = or disjoint i32 %164, 1
  %166 = load i32, ptr %149, align 4
  %167 = zext i32 %166 to i64
  %168 = and i64 %.116, %167
  %.not4 = icmp eq i64 %168, 0
  %169 = add i32 %164, 2
  %spec.select1 = select i1 %.not4, i32 %165, i32 %169
  %170 = lshr i64 %.116, 1
  %171 = add i64 %.5, 1
  br label %161, !llvm.loop !17

172:                                              ; preds = %161
  %.019.lcssa = phi i32 [ %.019, %161 ]
  %173 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.27
  store i32 %.019.lcssa, ptr %173, align 4
  br label %174

174:                                              ; preds = %172, %146
  %175 = add nuw nsw i64 %.27, 1
  br label %144, !llvm.loop !18

176:                                              ; preds = %.preheader10, %.critedge
  %.6 = phi i64 [ %197, %.critedge ], [ 1, %.preheader10 ]
  %177 = icmp samesign ult i64 %.6, 256
  br i1 %177, label %178, label %.preheader9

.preheader9:                                      ; preds = %176
  br label %198

178:                                              ; preds = %176
  %179 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.6
  %180 = load i32, ptr %179, align 4
  %181 = getelementptr inbounds nuw i8, ptr %9, i64 %.6
  %182 = load i8, ptr %181, align 1
  br label %183

183:                                              ; preds = %189, %178
  %.38 = phi i64 [ %.6, %178 ], [ %194, %189 ]
  %.not2 = icmp eq i64 %.38, 0
  br i1 %.not2, label %.critedge, label %184

184:                                              ; preds = %183
  %185 = add i64 %.38, -1
  %186 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %185
  %187 = load i32, ptr %186, align 4
  %188 = icmp ugt i32 %187, %180
  br i1 %188, label %189, label %.critedge

189:                                              ; preds = %184
  %190 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %187, ptr %190, align 4
  %191 = getelementptr inbounds nuw i8, ptr %9, i64 %185
  %192 = load i8, ptr %191, align 1
  %193 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %192, ptr %193, align 1
  %194 = add i64 %.38, -1
  br label %183, !llvm.loop !19

.critedge:                                        ; preds = %184, %183
  %.38.lcssa = phi i64 [ %.38, %184 ], [ %.38, %183 ]
  %195 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %180, ptr %195, align 4
  %196 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %182, ptr %196, align 1
  %197 = add nuw nsw i64 %.6, 1
  br label %176, !llvm.loop !20

198:                                              ; preds = %.preheader9, %202
  %.49 = phi i64 [ %203, %202 ], [ 0, %.preheader9 ]
  %199 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %200 = load i32, ptr %199, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %.preheader

.preheader:                                       ; preds = %198
  %.49.lcssa = phi i64 [ %.49, %198 ]
  br label %204

202:                                              ; preds = %198
  %203 = add i64 %.49, 1
  br label %198, !llvm.loop !21

204:                                              ; preds = %.preheader, %226
  %.235 = phi ptr [ %.336, %226 ], [ %0, %.preheader ]
  %.031 = phi ptr [ %.132, %226 ], [ %11, %.preheader ]
  %.221 = phi i32 [ %.423, %226 ], [ 0, %.preheader ]
  %.217 = phi i64 [ %.318, %226 ], [ 128, %.preheader ]
  %.313 = phi i64 [ %.414, %226 ], [ 0, %.preheader ]
  %.7 = phi i64 [ %.9, %226 ], [ %.49.lcssa, %.preheader ]
  %205 = icmp ult i64 %.313, %1
  br i1 %205, label %206, label %229

206:                                              ; preds = %204
  %207 = shl i32 %.221, 1
  %208 = or disjoint i32 %207, 1
  %209 = load i8, ptr %.031, align 1
  %210 = zext i8 %209 to i64
  %211 = and i64 %.217, %210
  %.not1 = icmp eq i64 %211, 0
  %212 = add i32 %207, 2
  %spec.select2 = select i1 %.not1, i32 %208, i32 %212
  br label %213

213:                                              ; preds = %217, %206
  %.8 = phi i64 [ %.7, %206 ], [ %218, %217 ]
  %214 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %215 = load i32, ptr %214, align 4
  %216 = icmp ult i32 %215, %spec.select2
  br i1 %216, label %217, label %219

217:                                              ; preds = %213
  %218 = add i64 %.8, 1
  br label %213, !llvm.loop !22

219:                                              ; preds = %213
  %.8.lcssa = phi i64 [ %.8, %213 ]
  %.lcssa = phi i32 [ %215, %213 ]
  %220 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %220, label %221, label %226

221:                                              ; preds = %219
  %222 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %223 = load i8, ptr %222, align 1
  store i8 %223, ptr %.235, align 1
  %224 = getelementptr inbounds nuw i8, ptr %.235, i64 1
  %225 = add i64 %.313, 1
  br label %226

226:                                              ; preds = %221, %219
  %.336 = phi ptr [ %224, %221 ], [ %.235, %219 ]
  %.423 = phi i32 [ 0, %221 ], [ %spec.select2, %219 ]
  %.414 = phi i64 [ %225, %221 ], [ %.313, %219 ]
  %.9 = phi i64 [ %.49.lcssa, %221 ], [ %.8.lcssa, %219 ]
  %227 = icmp ult i64 %.217, 2
  %228 = lshr i64 %.217, 1
  %.132.idx = zext i1 %227 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.031, i64 %.132.idx
  %.318 = select i1 %227, i64 128, i64 %228
  br label %204, !llvm.loop !23

229:                                              ; preds = %204
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

12:                                               ; preds = %39, %4
  %.01 = phi i32 [ %3, %4 ], [ %.0, %39 ]
  %.not = icmp sgt i32 %.01, %9
  br i1 %.not, label %43, label %13

13:                                               ; preds = %12
  %14 = shl nsw i32 %.01, 1
  %15 = icmp slt i32 %14, %2
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = sext i32 %14 to i64
  %18 = getelementptr [8 x i8], ptr %1, i64 %17
  %19 = getelementptr i8, ptr %18, i64 -8
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %20
  %22 = load i64, ptr %21, align 8
  %23 = sext i32 %14 to i64
  %24 = getelementptr inbounds [8 x i8], ptr %1, i64 %23
  %25 = load i64, ptr %24, align 8
  %26 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %25
  %27 = load i64, ptr %26, align 8
  %28 = icmp ugt i64 %22, %27
  %29 = zext i1 %28 to i32
  %spec.select = or disjoint i32 %14, %29
  br label %30

30:                                               ; preds = %16, %13
  %.0 = phi i32 [ %14, %13 ], [ %spec.select, %16 ]
  %31 = load i64, ptr %11, align 8
  %32 = sext i32 %.0 to i64
  %33 = getelementptr [8 x i8], ptr %1, i64 %32
  %34 = getelementptr i8, ptr %33, i64 -8
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %35
  %37 = load i64, ptr %36, align 8
  %38 = icmp ult i64 %31, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %30
  %40 = sext i32 %.01 to i64
  %41 = getelementptr [8 x i8], ptr %1, i64 %40
  %42 = getelementptr i8, ptr %41, i64 -8
  store i64 %35, ptr %42, align 8
  br label %12, !llvm.loop !24

43:                                               ; preds = %30, %12
  %.01.lcssa = phi i32 [ %.01, %30 ], [ %.01, %12 ]
  %sext1 = shl i64 %8, 32
  %44 = ashr exact i64 %sext1, 32
  %45 = sext i32 %.01.lcssa to i64
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
