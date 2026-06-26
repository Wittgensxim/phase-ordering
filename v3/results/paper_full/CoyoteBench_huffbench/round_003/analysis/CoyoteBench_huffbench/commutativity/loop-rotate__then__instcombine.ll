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
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %11, label %.lr.ph

.lr.ph:                                           ; preds = %1
  br label %3

3:                                                ; preds = %.lr.ph, %3
  %.02 = phi i32 [ 0, %.lr.ph ], [ %8, %3 ]
  %.011 = phi ptr [ %2, %.lr.ph ], [ %7, %3 ]
  %4 = call i64 @random4()
  %5 = getelementptr inbounds nuw i8, ptr @.str, i64 %4
  %6 = load i8, ptr %5, align 1
  store i8 %6, ptr %.011, align 1
  %7 = getelementptr inbounds nuw i8, ptr %.011, i64 1
  %8 = add nuw nsw i32 %.02, 1
  %9 = zext nneg i32 %8 to i64
  %10 = icmp ugt i64 %0, %9
  br i1 %10, label %3, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %3
  br label %11

11:                                               ; preds = %._crit_edge, %1
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
  %.not78 = icmp eq i64 %1, 0
  br i1 %.not78, label %.preheader6, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %12

..preheader6_crit_edge:                           ; preds = %12
  br label %.preheader6

.preheader6:                                      ; preds = %..preheader6_crit_edge, %2
  br label %21

12:                                               ; preds = %.lr.ph, %12
  %.0214 = phi i64 [ 0, %.lr.ph ], [ %19, %12 ]
  %.03313 = phi ptr [ %0, %.lr.ph ], [ %18, %12 ]
  %13 = load i8, ptr %.03313, align 1
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %14
  %16 = load i64, ptr %15, align 8
  %17 = add i64 %16, 1
  store i64 %17, ptr %15, align 8
  %18 = getelementptr inbounds nuw i8, ptr %.03313, i64 1
  %19 = add i64 %.0214, 1
  %20 = icmp ult i64 %19, %1
  br i1 %20, label %12, label %..preheader6_crit_edge, !llvm.loop !9

.preheader5:                                      ; preds = %27
  %.not17 = icmp eq i64 %.111, 0
  br i1 %.not17, label %.preheader4, label %.lr.ph19

.lr.ph19:                                         ; preds = %.preheader5
  br label %31

21:                                               ; preds = %.preheader6, %27
  %.1316 = phi i64 [ 0, %.preheader6 ], [ %28, %27 ]
  %.01015 = phi i64 [ 0, %.preheader6 ], [ %.111, %27 ]
  %22 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.1316
  %23 = load i64, ptr %22, align 8
  %.not8 = icmp eq i64 %23, 0
  br i1 %.not8, label %27, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.01015
  store i64 %.1316, ptr %25, align 8
  %26 = add i64 %.01015, 1
  br label %27

27:                                               ; preds = %24, %21
  %.111 = phi i64 [ %26, %24 ], [ %.01015, %21 ]
  %28 = add nuw nsw i64 %.1316, 1
  %29 = icmp samesign ult i64 %.1316, 255
  br i1 %29, label %21, label %.preheader5, !llvm.loop !10

..preheader4_crit_edge:                           ; preds = %31
  br label %.preheader4

.preheader4:                                      ; preds = %..preheader4_crit_edge, %.preheader5
  %30 = icmp ugt i64 %.111, 1
  br i1 %30, label %.lr.ph21, label %56

.lr.ph21:                                         ; preds = %.preheader4
  br label %35

31:                                               ; preds = %.lr.ph19, %31
  %.2418 = phi i64 [ %.111, %.lr.ph19 ], [ %34, %31 ]
  %32 = trunc i64 %.111 to i32
  %33 = trunc i64 %.2418 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %32, i32 noundef %33)
  %34 = add i64 %.2418, -1
  %.not = icmp eq i64 %34, 0
  br i1 %.not, label %..preheader4_crit_edge, label %31, !llvm.loop !11

35:                                               ; preds = %.lr.ph21, %35
  %.21220 = phi i64 [ %.111, %.lr.ph21 ], [ %36, %35 ]
  %36 = add i64 %.21220, -1
  %37 = load i64, ptr %4, align 16
  %38 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %36
  %39 = load i64, ptr %38, align 8
  store i64 %39, ptr %4, align 16
  %40 = trunc i64 %36 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %40, i32 noundef 1)
  %41 = load i64, ptr %4, align 16
  %42 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %41
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %37
  %45 = load i64, ptr %44, align 8
  %46 = add i64 %43, %45
  %47 = add i64 %.21220, 255
  %48 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %47
  store i64 %46, ptr %48, align 8
  %49 = trunc i64 %47 to i32
  %50 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %37
  store i32 %49, ptr %50, align 4
  %51 = trunc i64 %.21220 to i32
  %52 = sub i32 -255, %51
  %53 = load i64, ptr %4, align 16
  %54 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %53
  store i32 %52, ptr %54, align 4
  store i64 %47, ptr %4, align 16
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %40, i32 noundef 1)
  %55 = icmp ugt i64 %36, 1
  br i1 %55, label %35, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %35
  br label %56

56:                                               ; preds = %._crit_edge, %.preheader4
  %.212.lcssa = phi i64 [ %36, %._crit_edge ], [ %.111, %.preheader4 ]
  %57 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %58 = getelementptr inbounds nuw i8, ptr %57, i64 1024
  store i32 0, ptr %58, align 4
  br label %59

59:                                               ; preds = %56, %77
  %.03937 = phi i64 [ 0, %56 ], [ %.140, %77 ]
  %.04236 = phi i64 [ 0, %56 ], [ %78, %77 ]
  %.04535 = phi i64 [ 0, %56 ], [ %.146, %77 ]
  %60 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04236
  %61 = load i64, ptr %60, align 8
  %.not6 = icmp eq i64 %61, 0
  br i1 %.not6, label %62, label %65

62:                                               ; preds = %59
  %63 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04236
  store i32 0, ptr %63, align 4
  %64 = getelementptr inbounds nuw i8, ptr %7, i64 %.04236
  store i8 0, ptr %64, align 1
  br label %77

65:                                               ; preds = %59
  %.037.in22 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.04236
  %.03723 = load i32, ptr %.037.in22, align 4
  %.not724 = icmp eq i32 %.03723, 0
  br i1 %.not724, label %72, label %.lr.ph31

.lr.ph31:                                         ; preds = %65
  br label %66

66:                                               ; preds = %.lr.ph31, %66
  %.03729 = phi i32 [ %.03723, %.lr.ph31 ], [ %.037, %66 ]
  %.328 = phi i64 [ 0, %.lr.ph31 ], [ %71, %66 ]
  %.0526 = phi i64 [ 1, %.lr.ph31 ], [ %70, %66 ]
  %.04325 = phi i64 [ 0, %.lr.ph31 ], [ %.144, %66 ]
  %67 = icmp slt i32 %.03729, 0
  %68 = select i1 %67, i64 %.0526, i64 0
  %.144 = add i64 %.04325, %68
  %.138 = call i32 @llvm.abs.i32(i32 %.03729, i1 true)
  %69 = zext nneg i32 %.138 to i64
  %70 = shl i64 %.0526, 1
  %71 = add i64 %.328, 1
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %69
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %._crit_edge32, label %66, !llvm.loop !13

._crit_edge32:                                    ; preds = %66
  br label %72

72:                                               ; preds = %._crit_edge32, %65
  %.043.lcssa = phi i64 [ %.144, %._crit_edge32 ], [ 0, %65 ]
  %.3.lcssa = phi i64 [ %71, %._crit_edge32 ], [ 0, %65 ]
  %73 = trunc i64 %.043.lcssa to i32
  %74 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04236
  store i32 %73, ptr %74, align 4
  %75 = trunc i64 %.3.lcssa to i8
  %76 = getelementptr inbounds nuw i8, ptr %7, i64 %.04236
  store i8 %75, ptr %76, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.04535)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.03937)
  br label %77

77:                                               ; preds = %72, %62
  %.146 = phi i64 [ %spec.select, %72 ], [ %.04535, %62 ]
  %.140 = phi i64 [ %.241, %72 ], [ %.03937, %62 ]
  %78 = add nuw nsw i64 %.04236, 1
  %79 = icmp samesign ult i64 %.04236, 255
  br i1 %79, label %59, label %80, !llvm.loop !14

80:                                               ; preds = %77
  %81 = icmp ugt i64 %.140, 32
  br i1 %81, label %82, label %85

82:                                               ; preds = %80
  %83 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %84 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %83)
  call void @exit(i32 noundef 1) #11
  unreachable

85:                                               ; preds = %80
  %86 = icmp eq i64 %.146, 0
  br i1 %86, label %87, label %.preheader3

.preheader3:                                      ; preds = %85
  %.not79 = icmp eq i64 %1, 0
  br i1 %.not79, label %139, label %.lr.ph54

.lr.ph54:                                         ; preds = %.preheader3
  br label %90

87:                                               ; preds = %85
  %88 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %89 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %88)
  call void @exit(i32 noundef 1) #11
  unreachable

90:                                               ; preds = %.lr.ph54, %131
  %.0153 = phi i32 [ -1, %.lr.ph54 ], [ %.1.lcssa, %131 ]
  %.1652 = phi i64 [ 0, %.lr.ph54 ], [ %133, %131 ]
  %.02451 = phi i8 [ 0, %.lr.ph54 ], [ %.125.lcssa, %131 ]
  %.02850 = phi i64 [ 0, %.lr.ph54 ], [ %.129.lcssa, %131 ]
  %.13449 = phi ptr [ %0, %.lr.ph54 ], [ %132, %131 ]
  %91 = load i8, ptr %.13449, align 1
  %92 = zext i8 %91 to i64
  %93 = getelementptr inbounds nuw i8, ptr %7, i64 %92
  %94 = load i8, ptr %93, align 1
  %.not80 = icmp eq i8 %94, 0
  br i1 %.not80, label %131, label %.lr.ph44

.lr.ph44:                                         ; preds = %90
  %95 = load i8, ptr %.13449, align 1
  %96 = zext i8 %95 to i64
  %97 = getelementptr inbounds nuw i8, ptr %7, i64 %96
  %98 = load i8, ptr %97, align 1
  %99 = zext i8 %98 to i32
  %100 = add nsw i32 %99, -1
  %101 = shl nuw i32 1, %100
  %102 = sext i32 %101 to i64
  br label %103

103:                                              ; preds = %.lr.ph44, %115
  %.142 = phi i32 [ %.0153, %.lr.ph44 ], [ %.2, %115 ]
  %.441 = phi i64 [ 0, %.lr.ph44 ], [ %124, %115 ]
  %.01540 = phi i64 [ %102, %.lr.ph44 ], [ %123, %115 ]
  %.12539 = phi i8 [ %.02451, %.lr.ph44 ], [ %.327, %115 ]
  %.12938 = phi i64 [ %.02850, %.lr.ph44 ], [ %.230, %115 ]
  %104 = icmp eq i32 %.142, 7
  br i1 %104, label %105, label %112

105:                                              ; preds = %103
  %106 = getelementptr inbounds nuw i8, ptr %11, i64 %.12938
  store i8 %.12539, ptr %106, align 1
  %107 = add i64 %.12938, 1
  %108 = icmp eq i64 %107, %1
  br i1 %108, label %109, label %115

109:                                              ; preds = %105
  %110 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %111 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %110)
  call void @exit(i32 noundef 1) #11
  unreachable

112:                                              ; preds = %103
  %113 = add nsw i32 %.142, 1
  %114 = shl i8 %.12539, 1
  br label %115

115:                                              ; preds = %112, %105
  %.230 = phi i64 [ %.12938, %112 ], [ %107, %105 ]
  %.226 = phi i8 [ %114, %112 ], [ 0, %105 ]
  %.2 = phi i32 [ %113, %112 ], [ 0, %105 ]
  %116 = load i8, ptr %.13449, align 1
  %117 = zext i8 %116 to i64
  %118 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %117
  %119 = load i32, ptr %118, align 4
  %120 = zext i32 %119 to i64
  %121 = and i64 %.01540, %120
  %.not5 = icmp ne i64 %121, 0
  %122 = zext i1 %.not5 to i8
  %.327 = or disjoint i8 %.226, %122
  %123 = lshr i64 %.01540, 1
  %124 = add i64 %.441, 1
  %125 = load i8, ptr %.13449, align 1
  %126 = zext i8 %125 to i64
  %127 = getelementptr inbounds nuw i8, ptr %7, i64 %126
  %128 = load i8, ptr %127, align 1
  %129 = zext i8 %128 to i64
  %130 = icmp ult i64 %124, %129
  br i1 %130, label %103, label %._crit_edge45, !llvm.loop !15

._crit_edge45:                                    ; preds = %115
  br label %131

131:                                              ; preds = %._crit_edge45, %90
  %.129.lcssa = phi i64 [ %.230, %._crit_edge45 ], [ %.02850, %90 ]
  %.125.lcssa = phi i8 [ %.327, %._crit_edge45 ], [ %.02451, %90 ]
  %.1.lcssa = phi i32 [ %.2, %._crit_edge45 ], [ %.0153, %90 ]
  %132 = getelementptr inbounds nuw i8, ptr %.13449, i64 1
  %133 = add i64 %.1652, 1
  %134 = icmp ult i64 %133, %1
  br i1 %134, label %90, label %._crit_edge55, !llvm.loop !16

._crit_edge55:                                    ; preds = %131
  %135 = sub nsw i32 7, %.1.lcssa
  %136 = zext i8 %.125.lcssa to i32
  %137 = shl i32 %136, %135
  %138 = trunc i32 %137 to i8
  br label %139

139:                                              ; preds = %._crit_edge55, %.preheader3
  %.028.lcssa = phi i64 [ %.129.lcssa, %._crit_edge55 ], [ 0, %.preheader3 ]
  %140 = phi i8 [ %138, %._crit_edge55 ], [ 0, %.preheader3 ]
  %141 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %140, ptr %141, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %142

.preheader2:                                      ; preds = %170
  br label %173

142:                                              ; preds = %139, %170
  %.067 = phi ptr [ %9, %139 ], [ %144, %170 ]
  %.2766 = phi i64 [ 0, %139 ], [ %171, %170 ]
  %143 = trunc nuw i64 %.2766 to i8
  store i8 %143, ptr %.067, align 1
  %144 = getelementptr inbounds nuw i8, ptr %.067, i64 1
  %145 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.2766
  %146 = load i32, ptr %145, align 4
  %147 = getelementptr inbounds nuw i8, ptr %7, i64 %.2766
  %148 = load i8, ptr %147, align 1
  %149 = zext i8 %148 to i32
  %150 = or i32 %146, %149
  %.not3 = icmp eq i32 %150, 0
  br i1 %.not3, label %170, label %151

151:                                              ; preds = %142
  %152 = load i8, ptr %147, align 1
  %.not81 = icmp eq i8 %152, 0
  br i1 %.not81, label %168, label %.lr.ph63

.lr.ph63:                                         ; preds = %151
  %153 = add nsw i32 %149, -1
  %154 = shl nuw i32 1, %153
  %155 = sext i32 %154 to i64
  br label %156

156:                                              ; preds = %.lr.ph63, %156
  %.561 = phi i64 [ 0, %.lr.ph63 ], [ %164, %156 ]
  %.11660 = phi i64 [ %155, %.lr.ph63 ], [ %163, %156 ]
  %.01959 = phi i32 [ 0, %.lr.ph63 ], [ %spec.select1, %156 ]
  %157 = shl i32 %.01959, 1
  %158 = or disjoint i32 %157, 1
  %159 = load i32, ptr %145, align 4
  %160 = zext i32 %159 to i64
  %161 = and i64 %.11660, %160
  %.not4 = icmp eq i64 %161, 0
  %162 = add i32 %157, 2
  %spec.select1 = select i1 %.not4, i32 %158, i32 %162
  %163 = lshr i64 %.11660, 1
  %164 = add i64 %.561, 1
  %165 = load i8, ptr %147, align 1
  %166 = zext i8 %165 to i64
  %167 = icmp ult i64 %164, %166
  br i1 %167, label %156, label %._crit_edge64, !llvm.loop !17

._crit_edge64:                                    ; preds = %156
  br label %168

168:                                              ; preds = %._crit_edge64, %151
  %.019.lcssa = phi i32 [ %spec.select1, %._crit_edge64 ], [ 0, %151 ]
  %169 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.2766
  store i32 %.019.lcssa, ptr %169, align 4
  br label %170

170:                                              ; preds = %168, %142
  %171 = add nuw nsw i64 %.2766, 1
  %172 = icmp samesign ult i64 %.2766, 255
  br i1 %172, label %142, label %.preheader2, !llvm.loop !18

.preheader1:                                      ; preds = %.critedge
  br label %192

173:                                              ; preds = %.preheader2, %.critedge
  %.669 = phi i64 [ 1, %.preheader2 ], [ %190, %.critedge ]
  %174 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.669
  %175 = load i32, ptr %174, align 4
  %176 = getelementptr inbounds nuw i8, ptr %9, i64 %.669
  %177 = load i8, ptr %176, align 1
  br label %178

178:                                              ; preds = %173, %183
  %.3868 = phi i64 [ %.669, %173 ], [ %179, %183 ]
  %179 = add i64 %.3868, -1
  %180 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %179
  %181 = load i32, ptr %180, align 4
  %182 = icmp ugt i32 %181, %175
  br i1 %182, label %183, label %.critedge

183:                                              ; preds = %178
  %184 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.3868
  store i32 %181, ptr %184, align 4
  %185 = getelementptr inbounds nuw i8, ptr %9, i64 %179
  %186 = load i8, ptr %185, align 1
  %187 = getelementptr inbounds nuw i8, ptr %9, i64 %.3868
  store i8 %186, ptr %187, align 1
  %.not2 = icmp eq i64 %179, 0
  br i1 %.not2, label %.critedge, label %178, !llvm.loop !19

.critedge:                                        ; preds = %178, %183
  %.38.lcssa = phi i64 [ %.3868, %178 ], [ %179, %183 ]
  %188 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %175, ptr %188, align 4
  %189 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %177, ptr %189, align 1
  %190 = add nuw nsw i64 %.669, 1
  %191 = icmp samesign ult i64 %.669, 255
  br i1 %191, label %173, label %.preheader1, !llvm.loop !20

192:                                              ; preds = %192, %.preheader1
  %.49 = phi i64 [ %196, %192 ], [ 0, %.preheader1 ]
  %193 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %194 = load i32, ptr %193, align 4
  %195 = icmp eq i32 %194, 0
  %196 = add i64 %.49, 1
  br i1 %195, label %192, label %.preheader, !llvm.loop !21

.preheader:                                       ; preds = %192
  %.not82 = icmp eq i64 %1, 0
  br i1 %.not82, label %220, label %.lr.ph76

.lr.ph76:                                         ; preds = %.preheader
  br label %197

197:                                              ; preds = %.lr.ph76, %216
  %.775 = phi i64 [ %.49, %.lr.ph76 ], [ %.9, %216 ]
  %.31374 = phi i64 [ 0, %.lr.ph76 ], [ %.414, %216 ]
  %.21773 = phi i64 [ 128, %.lr.ph76 ], [ %.318, %216 ]
  %.22172 = phi i32 [ 0, %.lr.ph76 ], [ %.423, %216 ]
  %.03171 = phi ptr [ %11, %.lr.ph76 ], [ %.132, %216 ]
  %.23570 = phi ptr [ %0, %.lr.ph76 ], [ %.336, %216 ]
  %198 = shl i32 %.22172, 1
  %199 = or disjoint i32 %198, 1
  %200 = load i8, ptr %.03171, align 1
  %201 = zext i8 %200 to i64
  %202 = and i64 %.21773, %201
  %.not1 = icmp eq i64 %202, 0
  %203 = add i32 %198, 2
  %spec.select2 = select i1 %.not1, i32 %199, i32 %203
  br label %204

204:                                              ; preds = %204, %197
  %.8 = phi i64 [ %.775, %197 ], [ %208, %204 ]
  %205 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %206 = load i32, ptr %205, align 4
  %207 = icmp ult i32 %206, %spec.select2
  %208 = add i64 %.8, 1
  br i1 %207, label %204, label %209, !llvm.loop !22

209:                                              ; preds = %204
  %210 = icmp eq i32 %spec.select2, %206
  br i1 %210, label %211, label %216

211:                                              ; preds = %209
  %212 = getelementptr inbounds nuw i8, ptr %9, i64 %.8
  %213 = load i8, ptr %212, align 1
  store i8 %213, ptr %.23570, align 1
  %214 = getelementptr inbounds nuw i8, ptr %.23570, i64 1
  %215 = add i64 %.31374, 1
  br label %216

216:                                              ; preds = %211, %209
  %.336 = phi ptr [ %214, %211 ], [ %.23570, %209 ]
  %.423 = phi i32 [ 0, %211 ], [ %spec.select2, %209 ]
  %.414 = phi i64 [ %215, %211 ], [ %.31374, %209 ]
  %.9 = phi i64 [ %.49, %211 ], [ %.8, %209 ]
  %217 = icmp ult i64 %.21773, 2
  %218 = lshr i64 %.21773, 1
  %.132.idx = zext i1 %217 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.03171, i64 %.132.idx
  %.318 = select i1 %217, i64 128, i64 %218
  %219 = icmp ult i64 %.414, %1
  br i1 %219, label %197, label %._crit_edge77, !llvm.loop !23

._crit_edge77:                                    ; preds = %216
  br label %220

220:                                              ; preds = %._crit_edge77, %.preheader
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
  %.not1 = icmp sgt i32 %3, %9
  br i1 %.not1, label %40, label %.lr.ph

.lr.ph:                                           ; preds = %4
  br label %10

10:                                               ; preds = %.lr.ph, %36
  %.012 = phi i32 [ %3, %.lr.ph ], [ %.0, %36 ]
  %11 = shl nsw i32 %.012, 1
  %12 = icmp slt i32 %11, %2
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = sext i32 %11 to i64
  %15 = getelementptr [8 x i8], ptr %1, i64 %14
  %16 = getelementptr i8, ptr %15, i64 -8
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %17
  %19 = load i64, ptr %18, align 8
  %20 = load i64, ptr %15, align 8
  %21 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %20
  %22 = load i64, ptr %21, align 8
  %23 = icmp ugt i64 %19, %22
  %24 = zext i1 %23 to i32
  %spec.select = or disjoint i32 %11, %24
  br label %25

25:                                               ; preds = %13, %10
  %.0 = phi i32 [ %11, %10 ], [ %spec.select, %13 ]
  %sext = shl i64 %8, 32
  %26 = ashr exact i64 %sext, 29
  %27 = getelementptr inbounds i8, ptr %0, i64 %26
  %28 = load i64, ptr %27, align 8
  %29 = sext i32 %.0 to i64
  %30 = getelementptr [8 x i8], ptr %1, i64 %29
  %31 = getelementptr i8, ptr %30, i64 -8
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %32
  %34 = load i64, ptr %33, align 8
  %35 = icmp ult i64 %28, %34
  br i1 %35, label %._crit_edge, label %36

36:                                               ; preds = %25
  %37 = sext i32 %.012 to i64
  %38 = getelementptr [8 x i8], ptr %1, i64 %37
  %39 = getelementptr i8, ptr %38, i64 -8
  store i64 %32, ptr %39, align 8
  %.not = icmp sgt i32 %.0, %9
  br i1 %.not, label %._crit_edge3, label %10, !llvm.loop !24

._crit_edge:                                      ; preds = %25
  br label %40

._crit_edge3:                                     ; preds = %36
  br label %40

40:                                               ; preds = %._crit_edge3, %._crit_edge, %4
  %.01.lcssa = phi i32 [ %.012, %._crit_edge ], [ %.0, %._crit_edge3 ], [ %3, %4 ]
  %sext1 = shl i64 %8, 32
  %41 = ashr exact i64 %sext1, 32
  %42 = sext i32 %.01.lcssa to i64
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
  br i1 %3, label %.preheader, label %11

.preheader:                                       ; preds = %2
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %8

5:                                                ; preds = %8
  %6 = add nuw nsw i32 %.011, 1
  %7 = icmp slt i32 %6, %0
  br i1 %7, label %8, label %.loopexit, !llvm.loop !25

8:                                                ; preds = %.preheader, %5
  %.011 = phi i32 [ 1, %.preheader ], [ %6, %5 ]
  %9 = load ptr, ptr %4, align 8
  %10 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(4) @.str.4) #10
  %.not = icmp ne i32 %10, 0
  br i1 %.not, label %5, label %.loopexit

.loopexit:                                        ; preds = %5, %8
  br label %11

11:                                               ; preds = %.loopexit, %2
  %.not1 = phi i1 [ true, %2 ], [ %.not, %.loopexit ]
  %12 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %13

13:                                               ; preds = %11, %13
  %.122 = phi i32 [ 0, %11 ], [ %14, %13 ]
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  %14 = add nuw nsw i32 %.122, 1
  %15 = icmp samesign ult i32 %.122, 29
  br i1 %15, label %13, label %16, !llvm.loop !26

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
