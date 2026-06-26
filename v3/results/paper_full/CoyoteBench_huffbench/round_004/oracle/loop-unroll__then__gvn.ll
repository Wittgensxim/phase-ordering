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

22:                                               ; preds = %37, %.preheader12
  %.010 = phi i64 [ 0, %.preheader12 ], [ %.111.1, %37 ]
  %.13 = phi i64 [ 0, %.preheader12 ], [ %38, %37 ]
  %23 = icmp samesign ult i64 %.13, 256
  br i1 %23, label %24, label %.preheader11

.preheader11:                                     ; preds = %22
  br label %39

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
  %32 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %31
  %33 = load i64, ptr %32, align 8
  %.not8.1 = icmp eq i64 %33, 0
  br i1 %.not8.1, label %37, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.111
  store i64 %31, ptr %35, align 8
  %36 = add i64 %.111, 1
  br label %37

37:                                               ; preds = %34, %30
  %.111.1 = phi i64 [ %36, %34 ], [ %.111, %30 ]
  %38 = add nuw nsw i64 %.13, 2
  br label %22, !llvm.loop !10

39:                                               ; preds = %.preheader11, %40
  %.24 = phi i64 [ %43, %40 ], [ %.010, %.preheader11 ]
  %.not = icmp eq i64 %.24, 0
  br i1 %.not, label %.preheader10, label %40

.preheader10:                                     ; preds = %39
  br label %44

40:                                               ; preds = %39
  %41 = trunc i64 %.010 to i32
  %42 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %41, i32 noundef %42)
  %43 = add i64 %.24, -1
  br label %39, !llvm.loop !11

44:                                               ; preds = %.preheader10, %46
  %.212 = phi i64 [ %47, %46 ], [ %.010, %.preheader10 ]
  %45 = icmp ugt i64 %.212, 1
  br i1 %45, label %46, label %65

46:                                               ; preds = %44
  %47 = add i64 %.212, -1
  %48 = load i64, ptr %4, align 16
  %49 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %47
  %50 = load i64, ptr %49, align 8
  store i64 %50, ptr %4, align 16
  %51 = trunc i64 %47 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %51, i32 noundef 1)
  %52 = load i64, ptr %4, align 16
  %53 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %52
  %54 = load i64, ptr %53, align 8
  %55 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %48
  %56 = load i64, ptr %55, align 8
  %57 = add i64 %54, %56
  %58 = add i64 %.212, 255
  %59 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %58
  store i64 %57, ptr %59, align 8
  %60 = trunc i64 %58 to i32
  %61 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %48
  store i32 %60, ptr %61, align 4
  %62 = trunc i64 %.212 to i32
  %63 = sub i32 -255, %62
  %64 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %52
  store i32 %63, ptr %64, align 4
  store i64 %58, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %51, i32 noundef 1)
  br label %44, !llvm.loop !12

65:                                               ; preds = %44
  %66 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 1024
  store i32 0, ptr %67, align 4
  br label %68

68:                                               ; preds = %89, %65
  %.045 = phi i64 [ 0, %65 ], [ %.146, %89 ]
  %.042 = phi i64 [ 0, %65 ], [ %90, %89 ]
  %.039 = phi i64 [ 0, %65 ], [ %.140, %89 ]
  %69 = icmp samesign ult i64 %.042, 256
  br i1 %69, label %70, label %91

70:                                               ; preds = %68
  %71 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.042
  %72 = load i64, ptr %71, align 8
  %.not6 = icmp eq i64 %72, 0
  br i1 %.not6, label %73, label %76

73:                                               ; preds = %70
  %74 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 0, ptr %74, align 4
  %75 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 0, ptr %75, align 1
  br label %89

76:                                               ; preds = %70
  br label %77

77:                                               ; preds = %78, %76
  %.043 = phi i64 [ 0, %76 ], [ %.144, %78 ]
  %.042.pn = phi i64 [ %.042, %76 ], [ %81, %78 ]
  %.05 = phi i64 [ 1, %76 ], [ %82, %78 ]
  %.3 = phi i64 [ 0, %76 ], [ %83, %78 ]
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.042.pn
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %84, label %78

78:                                               ; preds = %77
  %79 = icmp slt i32 %.037, 0
  %80 = select i1 %79, i64 %.05, i64 0
  %.144 = add i64 %.043, %80
  %.138 = call i32 @llvm.abs.i32(i32 %.037, i1 true)
  %81 = zext nneg i32 %.138 to i64
  %82 = shl i64 %.05, 1
  %83 = add i64 %.3, 1
  br label %77, !llvm.loop !13

84:                                               ; preds = %77
  %85 = trunc i64 %.043 to i32
  %86 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 %85, ptr %86, align 4
  %87 = trunc i64 %.3 to i8
  %88 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 %87, ptr %88, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043, i64 %.045)
  %.241 = call i64 @llvm.umax.i64(i64 %.3, i64 %.039)
  br label %89

89:                                               ; preds = %84, %73
  %.146 = phi i64 [ %spec.select, %84 ], [ %.045, %73 ]
  %.140 = phi i64 [ %.241, %84 ], [ %.039, %73 ]
  %90 = add nuw nsw i64 %.042, 1
  br label %68, !llvm.loop !14

91:                                               ; preds = %68
  %92 = icmp ugt i64 %.039, 32
  br i1 %92, label %93, label %96

93:                                               ; preds = %91
  %94 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %95 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %94)
  call void @exit(i32 noundef 1) #11
  unreachable

96:                                               ; preds = %91
  %97 = icmp eq i64 %.045, 0
  br i1 %97, label %98, label %.preheader3

.preheader3:                                      ; preds = %96
  br label %101

98:                                               ; preds = %96
  %99 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %100 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %99)
  call void @exit(i32 noundef 1) #11
  unreachable

101:                                              ; preds = %.preheader3, %137
  %.134 = phi ptr [ %138, %137 ], [ %0, %.preheader3 ]
  %.028 = phi i64 [ %.129, %137 ], [ 0, %.preheader3 ]
  %.024 = phi i8 [ %.125, %137 ], [ 0, %.preheader3 ]
  %.16 = phi i64 [ %139, %137 ], [ 0, %.preheader3 ]
  %.01 = phi i32 [ %.1, %137 ], [ -1, %.preheader3 ]
  %102 = icmp ult i64 %.16, %1
  br i1 %102, label %103, label %140

103:                                              ; preds = %101
  %104 = load i8, ptr %.134, align 1
  %105 = zext i8 %104 to i64
  %106 = getelementptr inbounds nuw i8, ptr %7, i64 %105
  %107 = load i8, ptr %106, align 1
  %108 = zext i8 %107 to i32
  %109 = add nsw i32 %108, -1
  %110 = shl nuw i32 1, %109
  %111 = sext i32 %110 to i64
  br label %112

112:                                              ; preds = %129, %103
  %113 = phi i8 [ %104, %103 ], [ %.pre-phi.in, %129 ]
  %114 = phi i8 [ %107, %103 ], [ %.pre, %129 ]
  %.129 = phi i64 [ %.028, %103 ], [ %.230, %129 ]
  %.125 = phi i8 [ %.024, %103 ], [ %.327, %129 ]
  %.015 = phi i64 [ %111, %103 ], [ %135, %129 ]
  %.4 = phi i64 [ 0, %103 ], [ %136, %129 ]
  %.1 = phi i32 [ %.01, %103 ], [ %.2, %129 ]
  %115 = zext i8 %114 to i64
  %116 = icmp ult i64 %.4, %115
  br i1 %116, label %117, label %137

117:                                              ; preds = %112
  %118 = icmp eq i32 %.1, 7
  br i1 %118, label %119, label %126

119:                                              ; preds = %117
  %120 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %120, align 1
  %121 = add i64 %.129, 1
  %122 = icmp eq i64 %121, %1
  br i1 %122, label %123, label %._crit_edge

._crit_edge:                                      ; preds = %119
  %.pre1 = load i8, ptr %.134, align 1
  br label %129

123:                                              ; preds = %119
  %124 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %125 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %124)
  call void @exit(i32 noundef 1) #11
  unreachable

126:                                              ; preds = %117
  %127 = add nsw i32 %.1, 1
  %128 = shl i8 %.125, 1
  br label %129

129:                                              ; preds = %126, %._crit_edge
  %.pre-phi.in = phi i8 [ %.pre1, %._crit_edge ], [ %113, %126 ]
  %.230 = phi i64 [ %121, %._crit_edge ], [ %.129, %126 ]
  %.226 = phi i8 [ 0, %._crit_edge ], [ %128, %126 ]
  %.2 = phi i32 [ 0, %._crit_edge ], [ %127, %126 ]
  %.pre-phi = zext i8 %.pre-phi.in to i64
  %130 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.pre-phi
  %131 = load i32, ptr %130, align 4
  %132 = zext i32 %131 to i64
  %133 = and i64 %.015, %132
  %.not5 = icmp ne i64 %133, 0
  %134 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %134
  %135 = lshr i64 %.015, 1
  %136 = add i64 %.4, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %112, !llvm.loop !15

137:                                              ; preds = %112
  %138 = getelementptr inbounds nuw i8, ptr %.134, i64 1
  %139 = add i64 %.16, 1
  br label %101, !llvm.loop !16

140:                                              ; preds = %101
  %141 = sub nsw i32 7, %.01
  %142 = zext i8 %.024 to i32
  %143 = shl i32 %142, %141
  %144 = trunc i32 %143 to i8
  %145 = getelementptr inbounds nuw i8, ptr %11, i64 %.028
  store i8 %144, ptr %145, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %146

146:                                              ; preds = %174, %140
  %.27 = phi i64 [ 0, %140 ], [ %175, %174 ]
  %.0 = phi ptr [ %9, %140 ], [ %150, %174 ]
  %147 = icmp samesign ult i64 %.27, 256
  br i1 %147, label %148, label %.preheader2

.preheader2:                                      ; preds = %146
  br label %176

148:                                              ; preds = %146
  %149 = trunc nuw i64 %.27 to i8
  store i8 %149, ptr %.0, align 1
  %150 = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %151 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.27
  %152 = load i32, ptr %151, align 4
  %153 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %154 = load i8, ptr %153, align 1
  %155 = zext i8 %154 to i32
  %156 = or i32 %152, %155
  %.not3 = icmp eq i32 %156, 0
  br i1 %.not3, label %174, label %157

157:                                              ; preds = %148
  %158 = add nsw i32 %155, -1
  %159 = shl nuw i32 1, %158
  %160 = sext i32 %159 to i64
  br label %161

161:                                              ; preds = %164, %157
  %.019 = phi i32 [ 0, %157 ], [ %spec.select1, %164 ]
  %.116 = phi i64 [ %160, %157 ], [ %170, %164 ]
  %.5 = phi i64 [ 0, %157 ], [ %171, %164 ]
  %162 = zext i8 %154 to i64
  %163 = icmp ult i64 %.5, %162
  br i1 %163, label %164, label %172

164:                                              ; preds = %161
  %165 = shl i32 %.019, 1
  %166 = or disjoint i32 %165, 1
  %167 = zext i32 %152 to i64
  %168 = and i64 %.116, %167
  %.not4 = icmp eq i64 %168, 0
  %169 = add i32 %165, 2
  %spec.select1 = select i1 %.not4, i32 %166, i32 %169
  %170 = lshr i64 %.116, 1
  %171 = add i64 %.5, 1
  br label %161, !llvm.loop !17

172:                                              ; preds = %161
  %173 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.27
  store i32 %.019, ptr %173, align 4
  br label %174

174:                                              ; preds = %172, %148
  %175 = add nuw nsw i64 %.27, 1
  br label %146, !llvm.loop !18

176:                                              ; preds = %.preheader2, %.critedge
  %.6 = phi i64 [ %196, %.critedge ], [ 1, %.preheader2 ]
  %177 = icmp samesign ult i64 %.6, 256
  br i1 %177, label %178, label %.preheader1

.preheader1:                                      ; preds = %176
  br label %197

178:                                              ; preds = %176
  %179 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.6
  %180 = load i32, ptr %179, align 4
  %181 = getelementptr inbounds nuw i8, ptr %9, i64 %.6
  %182 = load i8, ptr %181, align 1
  br label %183

183:                                              ; preds = %189, %178
  %.38 = phi i64 [ %.6, %178 ], [ %185, %189 ]
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
  br label %183, !llvm.loop !19

.critedge:                                        ; preds = %184, %183
  %.38.lcssa = phi i64 [ %.38, %184 ], [ 0, %183 ]
  %194 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %180, ptr %194, align 4
  %195 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %182, ptr %195, align 1
  %196 = add nuw nsw i64 %.6, 1
  br label %176, !llvm.loop !20

197:                                              ; preds = %.preheader1, %201
  %.49 = phi i64 [ %202, %201 ], [ 0, %.preheader1 ]
  %198 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %199 = load i32, ptr %198, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %.preheader

.preheader:                                       ; preds = %197
  br label %203

201:                                              ; preds = %197
  %202 = add i64 %.49, 1
  br label %197, !llvm.loop !21

203:                                              ; preds = %.preheader, %225
  %.235 = phi ptr [ %.336, %225 ], [ %0, %.preheader ]
  %.031 = phi ptr [ %.132, %225 ], [ %11, %.preheader ]
  %.221 = phi i32 [ %.423, %225 ], [ 0, %.preheader ]
  %.217 = phi i64 [ %.318, %225 ], [ 128, %.preheader ]
  %.313 = phi i64 [ %.414, %225 ], [ 0, %.preheader ]
  %.7 = phi i64 [ %.9, %225 ], [ %.49, %.preheader ]
  %204 = icmp ult i64 %.313, %1
  br i1 %204, label %205, label %228

205:                                              ; preds = %203
  %206 = shl i32 %.221, 1
  %207 = or disjoint i32 %206, 1
  %208 = load i8, ptr %.031, align 1
  %209 = zext i8 %208 to i64
  %210 = and i64 %.217, %209
  %.not1 = icmp eq i64 %210, 0
  %211 = add i32 %206, 2
  %spec.select2 = select i1 %.not1, i32 %207, i32 %211
  br label %212

212:                                              ; preds = %216, %205
  %.8 = phi i64 [ %.7, %205 ], [ %217, %216 ]
  %213 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %214 = load i32, ptr %213, align 4
  %215 = icmp ult i32 %214, %spec.select2
  br i1 %215, label %216, label %218

216:                                              ; preds = %212
  %217 = add i64 %.8, 1
  br label %212, !llvm.loop !22

218:                                              ; preds = %212
  %219 = icmp eq i32 %spec.select2, %214
  br i1 %219, label %220, label %225

220:                                              ; preds = %218
  %221 = getelementptr inbounds nuw i8, ptr %9, i64 %.8
  %222 = load i8, ptr %221, align 1
  store i8 %222, ptr %.235, align 1
  %223 = getelementptr inbounds nuw i8, ptr %.235, i64 1
  %224 = add i64 %.313, 1
  br label %225

225:                                              ; preds = %220, %218
  %.336 = phi ptr [ %223, %220 ], [ %.235, %218 ]
  %.423 = phi i32 [ 0, %220 ], [ %spec.select2, %218 ]
  %.414 = phi i64 [ %224, %220 ], [ %.313, %218 ]
  %.9 = phi i64 [ %.49, %220 ], [ %.8, %218 ]
  %226 = icmp ult i64 %.217, 2
  %227 = lshr i64 %.217, 1
  %.132.idx = zext i1 %226 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.031, i64 %.132.idx
  %.318 = select i1 %226, i64 128, i64 %227
  br label %203, !llvm.loop !23

228:                                              ; preds = %203
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
