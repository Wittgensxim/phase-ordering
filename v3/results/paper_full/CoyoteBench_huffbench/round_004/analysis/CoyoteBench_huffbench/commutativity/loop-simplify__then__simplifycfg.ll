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
  br i1 %35, label %36, label %55

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
  %54 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %42
  store i32 %53, ptr %54, align 4
  store i64 %48, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %41, i32 noundef 1)
  br label %.preheader4, !llvm.loop !12

55:                                               ; preds = %.preheader4
  %56 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212
  %57 = getelementptr inbounds nuw i8, ptr %56, i64 1024
  store i32 0, ptr %57, align 4
  br label %58

58:                                               ; preds = %78, %55
  %.045 = phi i64 [ 0, %55 ], [ %.146, %78 ]
  %.042 = phi i64 [ 0, %55 ], [ %79, %78 ]
  %.039 = phi i64 [ 0, %55 ], [ %.140, %78 ]
  %59 = icmp samesign ult i64 %.042, 256
  br i1 %59, label %60, label %80

60:                                               ; preds = %58
  %61 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.042
  %62 = load i64, ptr %61, align 8
  %.not6 = icmp eq i64 %62, 0
  br i1 %.not6, label %63, label %66

63:                                               ; preds = %60
  %64 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 0, ptr %64, align 4
  %65 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 0, ptr %65, align 1
  br label %78

66:                                               ; preds = %60, %67
  %.043 = phi i64 [ %.144, %67 ], [ 0, %60 ]
  %.042.pn = phi i64 [ %70, %67 ], [ %.042, %60 ]
  %.05 = phi i64 [ %71, %67 ], [ 1, %60 ]
  %.3 = phi i64 [ %72, %67 ], [ 0, %60 ]
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.042.pn
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %73, label %67

67:                                               ; preds = %66
  %68 = icmp slt i32 %.037, 0
  %69 = select i1 %68, i64 %.05, i64 0
  %.144 = add i64 %.043, %69
  %.138 = call i32 @llvm.abs.i32(i32 %.037, i1 true)
  %70 = zext nneg i32 %.138 to i64
  %71 = shl i64 %.05, 1
  %72 = add i64 %.3, 1
  br label %66, !llvm.loop !13

73:                                               ; preds = %66
  %74 = trunc i64 %.043 to i32
  %75 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.042
  store i32 %74, ptr %75, align 4
  %76 = trunc i64 %.3 to i8
  %77 = getelementptr inbounds nuw i8, ptr %7, i64 %.042
  store i8 %76, ptr %77, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043, i64 %.045)
  %.241 = call i64 @llvm.umax.i64(i64 %.3, i64 %.039)
  br label %78

78:                                               ; preds = %73, %63
  %.146 = phi i64 [ %spec.select, %73 ], [ %.045, %63 ]
  %.140 = phi i64 [ %.241, %73 ], [ %.039, %63 ]
  %79 = add nuw nsw i64 %.042, 1
  br label %58, !llvm.loop !14

80:                                               ; preds = %58
  %81 = icmp ugt i64 %.039, 32
  br i1 %81, label %82, label %85

82:                                               ; preds = %80
  %83 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %84 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %83)
  call void @exit(i32 noundef 1) #11
  unreachable

85:                                               ; preds = %80
  %86 = icmp eq i64 %.045, 0
  br i1 %86, label %87, label %.preheader3

87:                                               ; preds = %85
  %88 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %89 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %88)
  call void @exit(i32 noundef 1) #11
  unreachable

.preheader3:                                      ; preds = %85, %125
  %.134 = phi ptr [ %126, %125 ], [ %0, %85 ]
  %.028 = phi i64 [ %.129, %125 ], [ 0, %85 ]
  %.024 = phi i8 [ %.125, %125 ], [ 0, %85 ]
  %.16 = phi i64 [ %127, %125 ], [ 0, %85 ]
  %.01 = phi i32 [ %.1, %125 ], [ -1, %85 ]
  %90 = icmp ult i64 %.16, %1
  br i1 %90, label %91, label %128

91:                                               ; preds = %.preheader3
  %92 = load i8, ptr %.134, align 1
  %93 = zext i8 %92 to i64
  %94 = getelementptr inbounds nuw i8, ptr %7, i64 %93
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %95 to i32
  %97 = add nsw i32 %96, -1
  %98 = shl nuw i32 1, %97
  %99 = sext i32 %98 to i64
  br label %100

100:                                              ; preds = %117, %91
  %101 = phi i8 [ %92, %91 ], [ %.pre-phi.in, %117 ]
  %102 = phi i8 [ %95, %91 ], [ %.pre, %117 ]
  %.129 = phi i64 [ %.028, %91 ], [ %.230, %117 ]
  %.125 = phi i8 [ %.024, %91 ], [ %.327, %117 ]
  %.015 = phi i64 [ %99, %91 ], [ %123, %117 ]
  %.4 = phi i64 [ 0, %91 ], [ %124, %117 ]
  %.1 = phi i32 [ %.01, %91 ], [ %.2, %117 ]
  %103 = zext i8 %102 to i64
  %104 = icmp ult i64 %.4, %103
  br i1 %104, label %105, label %125

105:                                              ; preds = %100
  %106 = icmp eq i32 %.1, 7
  br i1 %106, label %107, label %114

107:                                              ; preds = %105
  %108 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %108, align 1
  %109 = add i64 %.129, 1
  %110 = icmp eq i64 %109, %1
  br i1 %110, label %111, label %._crit_edge

._crit_edge:                                      ; preds = %107
  %.pre1 = load i8, ptr %.134, align 1
  br label %117

111:                                              ; preds = %107
  %112 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %113 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %112)
  call void @exit(i32 noundef 1) #11
  unreachable

114:                                              ; preds = %105
  %115 = add nsw i32 %.1, 1
  %116 = shl i8 %.125, 1
  br label %117

117:                                              ; preds = %114, %._crit_edge
  %.pre-phi.in = phi i8 [ %.pre1, %._crit_edge ], [ %101, %114 ]
  %.230 = phi i64 [ %109, %._crit_edge ], [ %.129, %114 ]
  %.226 = phi i8 [ 0, %._crit_edge ], [ %116, %114 ]
  %.2 = phi i32 [ 0, %._crit_edge ], [ %115, %114 ]
  %.pre-phi = zext i8 %.pre-phi.in to i64
  %118 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.pre-phi
  %119 = load i32, ptr %118, align 4
  %120 = zext i32 %119 to i64
  %121 = and i64 %.015, %120
  %.not5 = icmp ne i64 %121, 0
  %122 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %122
  %123 = lshr i64 %.015, 1
  %124 = add i64 %.4, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %100, !llvm.loop !15

125:                                              ; preds = %100
  %126 = getelementptr inbounds nuw i8, ptr %.134, i64 1
  %127 = add i64 %.16, 1
  br label %.preheader3, !llvm.loop !16

128:                                              ; preds = %.preheader3
  %129 = sub nsw i32 7, %.01
  %130 = zext i8 %.024 to i32
  %131 = shl i32 %130, %129
  %132 = trunc i32 %131 to i8
  %133 = getelementptr inbounds nuw i8, ptr %11, i64 %.028
  store i8 %132, ptr %133, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %134

134:                                              ; preds = %162, %128
  %.27 = phi i64 [ 0, %128 ], [ %163, %162 ]
  %.0 = phi ptr [ %9, %128 ], [ %138, %162 ]
  %135 = icmp samesign ult i64 %.27, 256
  br i1 %135, label %136, label %.preheader2

136:                                              ; preds = %134
  %137 = trunc nuw i64 %.27 to i8
  store i8 %137, ptr %.0, align 1
  %138 = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %139 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.27
  %140 = load i32, ptr %139, align 4
  %141 = getelementptr inbounds nuw i8, ptr %7, i64 %.27
  %142 = load i8, ptr %141, align 1
  %143 = zext i8 %142 to i32
  %144 = or i32 %140, %143
  %.not3 = icmp eq i32 %144, 0
  br i1 %.not3, label %162, label %145

145:                                              ; preds = %136
  %146 = add nsw i32 %143, -1
  %147 = shl nuw i32 1, %146
  %148 = sext i32 %147 to i64
  br label %149

149:                                              ; preds = %152, %145
  %.019 = phi i32 [ 0, %145 ], [ %spec.select1, %152 ]
  %.116 = phi i64 [ %148, %145 ], [ %158, %152 ]
  %.5 = phi i64 [ 0, %145 ], [ %159, %152 ]
  %150 = zext i8 %142 to i64
  %151 = icmp ult i64 %.5, %150
  br i1 %151, label %152, label %160

152:                                              ; preds = %149
  %153 = shl i32 %.019, 1
  %154 = or disjoint i32 %153, 1
  %155 = zext i32 %140 to i64
  %156 = and i64 %.116, %155
  %.not4 = icmp eq i64 %156, 0
  %157 = add i32 %153, 2
  %spec.select1 = select i1 %.not4, i32 %154, i32 %157
  %158 = lshr i64 %.116, 1
  %159 = add i64 %.5, 1
  br label %149, !llvm.loop !17

160:                                              ; preds = %149
  %161 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.27
  store i32 %.019, ptr %161, align 4
  br label %162

162:                                              ; preds = %160, %136
  %163 = add nuw nsw i64 %.27, 1
  br label %134, !llvm.loop !18

.preheader2:                                      ; preds = %134, %.critedge
  %.6 = phi i64 [ %183, %.critedge ], [ 1, %134 ]
  %164 = icmp samesign ult i64 %.6, 256
  br i1 %164, label %165, label %.preheader1

165:                                              ; preds = %.preheader2
  %166 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.6
  %167 = load i32, ptr %166, align 4
  %168 = getelementptr inbounds nuw i8, ptr %9, i64 %.6
  %169 = load i8, ptr %168, align 1
  br label %170

170:                                              ; preds = %176, %165
  %.38 = phi i64 [ %.6, %165 ], [ %172, %176 ]
  %.not2 = icmp eq i64 %.38, 0
  br i1 %.not2, label %.critedge, label %171

171:                                              ; preds = %170
  %172 = add i64 %.38, -1
  %173 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %172
  %174 = load i32, ptr %173, align 4
  %175 = icmp ugt i32 %174, %167
  br i1 %175, label %176, label %.critedge

176:                                              ; preds = %171
  %177 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %174, ptr %177, align 4
  %178 = getelementptr inbounds nuw i8, ptr %9, i64 %172
  %179 = load i8, ptr %178, align 1
  %180 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %179, ptr %180, align 1
  br label %170, !llvm.loop !19

.critedge:                                        ; preds = %171, %170
  %181 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %167, ptr %181, align 4
  %182 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %169, ptr %182, align 1
  %183 = add nuw nsw i64 %.6, 1
  br label %.preheader2, !llvm.loop !20

.preheader1:                                      ; preds = %.preheader2, %187
  %.49 = phi i64 [ %188, %187 ], [ 0, %.preheader2 ]
  %184 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %185 = load i32, ptr %184, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %.preheader

187:                                              ; preds = %.preheader1
  %188 = add i64 %.49, 1
  br label %.preheader1, !llvm.loop !21

.preheader:                                       ; preds = %.preheader1, %210
  %.235 = phi ptr [ %.336, %210 ], [ %0, %.preheader1 ]
  %.031 = phi ptr [ %.132, %210 ], [ %11, %.preheader1 ]
  %.221 = phi i32 [ %.423, %210 ], [ 0, %.preheader1 ]
  %.217 = phi i64 [ %.318, %210 ], [ 128, %.preheader1 ]
  %.313 = phi i64 [ %.414, %210 ], [ 0, %.preheader1 ]
  %.7 = phi i64 [ %.9, %210 ], [ %.49, %.preheader1 ]
  %189 = icmp ult i64 %.313, %1
  br i1 %189, label %190, label %213

190:                                              ; preds = %.preheader
  %191 = shl i32 %.221, 1
  %192 = or disjoint i32 %191, 1
  %193 = load i8, ptr %.031, align 1
  %194 = zext i8 %193 to i64
  %195 = and i64 %.217, %194
  %.not1 = icmp eq i64 %195, 0
  %196 = add i32 %191, 2
  %spec.select2 = select i1 %.not1, i32 %192, i32 %196
  br label %197

197:                                              ; preds = %201, %190
  %.8 = phi i64 [ %.7, %190 ], [ %202, %201 ]
  %198 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %199 = load i32, ptr %198, align 4
  %200 = icmp ult i32 %199, %spec.select2
  br i1 %200, label %201, label %203

201:                                              ; preds = %197
  %202 = add i64 %.8, 1
  br label %197, !llvm.loop !22

203:                                              ; preds = %197
  %204 = icmp eq i32 %spec.select2, %199
  br i1 %204, label %205, label %210

205:                                              ; preds = %203
  %206 = getelementptr inbounds nuw i8, ptr %9, i64 %.8
  %207 = load i8, ptr %206, align 1
  store i8 %207, ptr %.235, align 1
  %208 = getelementptr inbounds nuw i8, ptr %.235, i64 1
  %209 = add i64 %.313, 1
  br label %210

210:                                              ; preds = %205, %203
  %.336 = phi ptr [ %208, %205 ], [ %.235, %203 ]
  %.423 = phi i32 [ 0, %205 ], [ %spec.select2, %203 ]
  %.414 = phi i64 [ %209, %205 ], [ %.313, %203 ]
  %.9 = phi i64 [ %.49, %205 ], [ %.8, %203 ]
  %211 = icmp ult i64 %.217, 2
  %212 = lshr i64 %.217, 1
  %.132.idx = zext i1 %211 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.031, i64 %.132.idx
  %.318 = select i1 %211, i64 128, i64 %212
  br label %.preheader, !llvm.loop !23

213:                                              ; preds = %.preheader
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
  br label %split

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

split:                                            ; preds = %26, %._crit_edge
  %sext1.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %sext, %26 ]
  %41 = ashr exact i64 %sext1.pre-phi, 32
  %42 = sext i32 %.01 to i64
  %43 = getelementptr [8 x i8], ptr %1, i64 %42
  %44 = getelementptr i8, ptr %43, i64 -8
  store i64 %41, ptr %44, align 8
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
