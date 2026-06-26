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
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.preheader6, label %.lr.ph

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
  %.not79 = icmp eq i64 %.111, 0
  br i1 %.not79, label %.preheader4, label %.lr.ph18

.lr.ph18:                                         ; preds = %.preheader5
  br label %31

21:                                               ; preds = %.preheader6, %27
  %.1316 = phi i64 [ 0, %.preheader6 ], [ %28, %27 ]
  %.01015 = phi i64 [ 0, %.preheader6 ], [ %.111, %27 ]
  %22 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.1316
  %23 = load i64, ptr %22, align 8
  %.not78 = icmp eq i64 %23, 0
  br i1 %.not78, label %27, label %24

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
  br i1 %30, label %.lr.ph20, label %56

.lr.ph20:                                         ; preds = %.preheader4
  br label %35

31:                                               ; preds = %.lr.ph18, %31
  %.2417 = phi i64 [ %.111, %.lr.ph18 ], [ %34, %31 ]
  %32 = trunc i64 %.111 to i32
  %33 = trunc i64 %.2417 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %32, i32 noundef %33)
  %34 = add i64 %.2417, -1
  %.not80 = icmp eq i64 %34, 0
  br i1 %.not80, label %..preheader4_crit_edge, label %31, !llvm.loop !11

35:                                               ; preds = %.lr.ph20, %35
  %.21219 = phi i64 [ %.111, %.lr.ph20 ], [ %36, %35 ]
  %36 = add i64 %.21219, -1
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
  %47 = add i64 %.21219, 255
  %48 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %47
  store i64 %46, ptr %48, align 8
  %49 = trunc i64 %47 to i32
  %50 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %37
  store i32 %49, ptr %50, align 4
  %51 = trunc i64 %.21219 to i32
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

59:                                               ; preds = %56, %81
  %.03932 = phi i64 [ 0, %56 ], [ %.140, %81 ]
  %.04231 = phi i64 [ 0, %56 ], [ %82, %81 ]
  %.04530 = phi i64 [ 0, %56 ], [ %.146, %81 ]
  %60 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04231
  %61 = load i64, ptr %60, align 8
  %.not81 = icmp eq i64 %61, 0
  br i1 %.not81, label %62, label %65

62:                                               ; preds = %59
  %63 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04231
  store i32 0, ptr %63, align 4
  %64 = getelementptr inbounds nuw i8, ptr %7, i64 %.04231
  store i8 0, ptr %64, align 1
  br label %81

65:                                               ; preds = %59
  %66 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.04231
  %67 = load i32, ptr %66, align 4
  %.not82 = icmp eq i32 %67, 0
  br i1 %.not82, label %76, label %.lr.ph26

.lr.ph26:                                         ; preds = %65
  br label %68

68:                                               ; preds = %.lr.ph26, %68
  %.324 = phi i64 [ 0, %.lr.ph26 ], [ %75, %68 ]
  %.0523 = phi i64 [ 1, %.lr.ph26 ], [ %74, %68 ]
  %.03722 = phi i32 [ %67, %.lr.ph26 ], [ %73, %68 ]
  %.04321 = phi i64 [ 0, %.lr.ph26 ], [ %.144, %68 ]
  %69 = icmp slt i32 %.03722, 0
  %70 = select i1 %69, i64 %.0523, i64 0
  %.144 = add i64 %.04321, %70
  %.138 = call i32 @llvm.abs.i32(i32 %.03722, i1 true)
  %71 = zext nneg i32 %.138 to i64
  %72 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %71
  %73 = load i32, ptr %72, align 4
  %74 = shl i64 %.0523, 1
  %75 = add i64 %.324, 1
  %.not83 = icmp eq i32 %73, 0
  br i1 %.not83, label %._crit_edge27, label %68, !llvm.loop !13

._crit_edge27:                                    ; preds = %68
  br label %76

76:                                               ; preds = %._crit_edge27, %65
  %.043.lcssa = phi i64 [ %.144, %._crit_edge27 ], [ 0, %65 ]
  %.3.lcssa = phi i64 [ %75, %._crit_edge27 ], [ 0, %65 ]
  %77 = trunc i64 %.043.lcssa to i32
  %78 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04231
  store i32 %77, ptr %78, align 4
  %79 = trunc i64 %.3.lcssa to i8
  %80 = getelementptr inbounds nuw i8, ptr %7, i64 %.04231
  store i8 %79, ptr %80, align 1
  %spec.select = call i64 @llvm.umax.i64(i64 %.043.lcssa, i64 %.04530)
  %.241 = call i64 @llvm.umax.i64(i64 %.3.lcssa, i64 %.03932)
  br label %81

81:                                               ; preds = %76, %62
  %.146 = phi i64 [ %spec.select, %76 ], [ %.04530, %62 ]
  %.140 = phi i64 [ %.241, %76 ], [ %.03932, %62 ]
  %82 = add nuw nsw i64 %.04231, 1
  %83 = icmp samesign ult i64 %.04231, 255
  br i1 %83, label %59, label %84, !llvm.loop !14

84:                                               ; preds = %81
  %85 = icmp ugt i64 %.140, 32
  br i1 %85, label %86, label %89

86:                                               ; preds = %84
  %87 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %88 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %87)
  call void @exit(i32 noundef 1) #11
  unreachable

89:                                               ; preds = %84
  %90 = icmp eq i64 %.146, 0
  br i1 %90, label %91, label %.preheader3

.preheader3:                                      ; preds = %89
  %.not84 = icmp eq i64 %1, 0
  br i1 %.not84, label %143, label %.lr.ph49

.lr.ph49:                                         ; preds = %.preheader3
  br label %94

91:                                               ; preds = %89
  %92 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %93 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %92)
  call void @exit(i32 noundef 1) #11
  unreachable

94:                                               ; preds = %.lr.ph49, %135
  %.0148 = phi i32 [ -1, %.lr.ph49 ], [ %.1.lcssa, %135 ]
  %.1647 = phi i64 [ 0, %.lr.ph49 ], [ %137, %135 ]
  %.02446 = phi i8 [ 0, %.lr.ph49 ], [ %.125.lcssa, %135 ]
  %.02845 = phi i64 [ 0, %.lr.ph49 ], [ %.129.lcssa, %135 ]
  %.13444 = phi ptr [ %0, %.lr.ph49 ], [ %136, %135 ]
  %95 = load i8, ptr %.13444, align 1
  %96 = zext i8 %95 to i64
  %97 = getelementptr inbounds nuw i8, ptr %7, i64 %96
  %98 = load i8, ptr %97, align 1
  %.not85 = icmp eq i8 %98, 0
  br i1 %.not85, label %135, label %.lr.ph39

.lr.ph39:                                         ; preds = %94
  %99 = load i8, ptr %.13444, align 1
  %100 = zext i8 %99 to i64
  %101 = getelementptr inbounds nuw i8, ptr %7, i64 %100
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %102 to i32
  %104 = add nsw i32 %103, -1
  %105 = shl nuw i32 1, %104
  %106 = sext i32 %105 to i64
  br label %107

107:                                              ; preds = %.lr.ph39, %119
  %.137 = phi i32 [ %.0148, %.lr.ph39 ], [ %.2, %119 ]
  %.436 = phi i64 [ 0, %.lr.ph39 ], [ %128, %119 ]
  %.01535 = phi i64 [ %106, %.lr.ph39 ], [ %127, %119 ]
  %.12534 = phi i8 [ %.02446, %.lr.ph39 ], [ %.327, %119 ]
  %.12933 = phi i64 [ %.02845, %.lr.ph39 ], [ %.230, %119 ]
  %108 = icmp eq i32 %.137, 7
  br i1 %108, label %109, label %116

109:                                              ; preds = %107
  %110 = getelementptr inbounds nuw i8, ptr %11, i64 %.12933
  store i8 %.12534, ptr %110, align 1
  %111 = add i64 %.12933, 1
  %112 = icmp eq i64 %111, %1
  br i1 %112, label %113, label %119

113:                                              ; preds = %109
  %114 = call ptr @__acrt_iob_func(i32 noundef 2) #10
  %115 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %114)
  call void @exit(i32 noundef 1) #11
  unreachable

116:                                              ; preds = %107
  %117 = add nsw i32 %.137, 1
  %118 = shl i8 %.12534, 1
  br label %119

119:                                              ; preds = %116, %109
  %.230 = phi i64 [ %.12933, %116 ], [ %111, %109 ]
  %.226 = phi i8 [ %118, %116 ], [ 0, %109 ]
  %.2 = phi i32 [ %117, %116 ], [ 0, %109 ]
  %120 = load i8, ptr %.13444, align 1
  %121 = zext i8 %120 to i64
  %122 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %121
  %123 = load i32, ptr %122, align 4
  %124 = zext i32 %123 to i64
  %125 = and i64 %.01535, %124
  %.not86 = icmp ne i64 %125, 0
  %126 = zext i1 %.not86 to i8
  %.327 = or disjoint i8 %.226, %126
  %127 = lshr i64 %.01535, 1
  %128 = add i64 %.436, 1
  %129 = load i8, ptr %.13444, align 1
  %130 = zext i8 %129 to i64
  %131 = getelementptr inbounds nuw i8, ptr %7, i64 %130
  %132 = load i8, ptr %131, align 1
  %133 = zext i8 %132 to i64
  %134 = icmp ult i64 %128, %133
  br i1 %134, label %107, label %._crit_edge40, !llvm.loop !15

._crit_edge40:                                    ; preds = %119
  br label %135

135:                                              ; preds = %._crit_edge40, %94
  %.129.lcssa = phi i64 [ %.230, %._crit_edge40 ], [ %.02845, %94 ]
  %.125.lcssa = phi i8 [ %.327, %._crit_edge40 ], [ %.02446, %94 ]
  %.1.lcssa = phi i32 [ %.2, %._crit_edge40 ], [ %.0148, %94 ]
  %136 = getelementptr inbounds nuw i8, ptr %.13444, i64 1
  %137 = add i64 %.1647, 1
  %138 = icmp ult i64 %137, %1
  br i1 %138, label %94, label %._crit_edge50, !llvm.loop !16

._crit_edge50:                                    ; preds = %135
  %139 = sub nsw i32 7, %.1.lcssa
  %140 = zext i8 %.125.lcssa to i32
  %141 = shl i32 %140, %139
  %142 = trunc i32 %141 to i8
  br label %143

143:                                              ; preds = %._crit_edge50, %.preheader3
  %.028.lcssa = phi i64 [ %.129.lcssa, %._crit_edge50 ], [ 0, %.preheader3 ]
  %144 = phi i8 [ %142, %._crit_edge50 ], [ 0, %.preheader3 ]
  %145 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %144, ptr %145, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %146

.preheader2:                                      ; preds = %174
  br label %177

146:                                              ; preds = %143, %174
  %.062 = phi ptr [ %9, %143 ], [ %148, %174 ]
  %.2761 = phi i64 [ 0, %143 ], [ %175, %174 ]
  %147 = trunc nuw i64 %.2761 to i8
  store i8 %147, ptr %.062, align 1
  %148 = getelementptr inbounds nuw i8, ptr %.062, i64 1
  %149 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.2761
  %150 = load i32, ptr %149, align 4
  %151 = getelementptr inbounds nuw i8, ptr %7, i64 %.2761
  %152 = load i8, ptr %151, align 1
  %153 = zext i8 %152 to i32
  %154 = or i32 %150, %153
  %.not87 = icmp eq i32 %154, 0
  br i1 %.not87, label %174, label %155

155:                                              ; preds = %146
  %156 = load i8, ptr %151, align 1
  %.not88 = icmp eq i8 %156, 0
  br i1 %.not88, label %172, label %.lr.ph58

.lr.ph58:                                         ; preds = %155
  %157 = add nsw i32 %153, -1
  %158 = shl nuw i32 1, %157
  %159 = sext i32 %158 to i64
  br label %160

160:                                              ; preds = %.lr.ph58, %160
  %.556 = phi i64 [ 0, %.lr.ph58 ], [ %168, %160 ]
  %.11655 = phi i64 [ %159, %.lr.ph58 ], [ %167, %160 ]
  %.01954 = phi i32 [ 0, %.lr.ph58 ], [ %spec.select1, %160 ]
  %161 = shl i32 %.01954, 1
  %162 = or disjoint i32 %161, 1
  %163 = load i32, ptr %149, align 4
  %164 = zext i32 %163 to i64
  %165 = and i64 %.11655, %164
  %.not89 = icmp eq i64 %165, 0
  %166 = add i32 %161, 2
  %spec.select1 = select i1 %.not89, i32 %162, i32 %166
  %167 = lshr i64 %.11655, 1
  %168 = add i64 %.556, 1
  %169 = load i8, ptr %151, align 1
  %170 = zext i8 %169 to i64
  %171 = icmp ult i64 %168, %170
  br i1 %171, label %160, label %._crit_edge59, !llvm.loop !17

._crit_edge59:                                    ; preds = %160
  br label %172

172:                                              ; preds = %._crit_edge59, %155
  %.019.lcssa = phi i32 [ %spec.select1, %._crit_edge59 ], [ 0, %155 ]
  %173 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.2761
  store i32 %.019.lcssa, ptr %173, align 4
  br label %174

174:                                              ; preds = %172, %146
  %175 = add nuw nsw i64 %.2761, 1
  %176 = icmp samesign ult i64 %.2761, 255
  br i1 %176, label %146, label %.preheader2, !llvm.loop !18

.preheader1:                                      ; preds = %.critedge
  br label %197

177:                                              ; preds = %.preheader2, %.critedge
  %.669 = phi i64 [ 1, %.preheader2 ], [ %195, %.critedge ]
  %178 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.669
  %179 = load i32, ptr %178, align 4
  %180 = getelementptr inbounds nuw i8, ptr %9, i64 %.669
  %181 = load i8, ptr %180, align 1
  br i1 true, label %.lr.ph65, label %.critedge

.lr.ph65:                                         ; preds = %177
  br label %182

182:                                              ; preds = %.lr.ph65, %187
  %.3863 = phi i64 [ %.669, %.lr.ph65 ], [ %192, %187 ]
  %183 = add i64 %.3863, -1
  %184 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %183
  %185 = load i32, ptr %184, align 4
  %186 = icmp ugt i32 %185, %179
  br i1 %186, label %187, label %..critedge_crit_edge

187:                                              ; preds = %182
  %188 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.3863
  store i32 %185, ptr %188, align 4
  %189 = getelementptr inbounds nuw i8, ptr %9, i64 %183
  %190 = load i8, ptr %189, align 1
  %191 = getelementptr inbounds nuw i8, ptr %9, i64 %.3863
  store i8 %190, ptr %191, align 1
  %192 = add i64 %.3863, -1
  %.not90 = icmp eq i64 %192, 0
  br i1 %.not90, label %..critedge_crit_edge67, label %182, !llvm.loop !19

..critedge_crit_edge:                             ; preds = %182
  br label %.critedge

..critedge_crit_edge67:                           ; preds = %187
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge67, %..critedge_crit_edge, %177
  %.38.lcssa = phi i64 [ %.3863, %..critedge_crit_edge ], [ %192, %..critedge_crit_edge67 ], [ poison, %177 ]
  %193 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %179, ptr %193, align 4
  %194 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %181, ptr %194, align 1
  %195 = add nuw nsw i64 %.669, 1
  %196 = icmp samesign ult i64 %.669, 255
  br i1 %196, label %177, label %.preheader1, !llvm.loop !20

197:                                              ; preds = %197, %.preheader1
  %.49 = phi i64 [ %201, %197 ], [ 0, %.preheader1 ]
  %198 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.49
  %199 = load i32, ptr %198, align 4
  %200 = icmp eq i32 %199, 0
  %201 = add i64 %.49, 1
  br i1 %200, label %197, label %.preheader, !llvm.loop !21

.preheader:                                       ; preds = %197
  %.not91 = icmp eq i64 %1, 0
  br i1 %.not91, label %225, label %.lr.ph76

.lr.ph76:                                         ; preds = %.preheader
  br label %202

202:                                              ; preds = %.lr.ph76, %221
  %.775 = phi i64 [ %.49, %.lr.ph76 ], [ %.9, %221 ]
  %.31374 = phi i64 [ 0, %.lr.ph76 ], [ %.414, %221 ]
  %.21773 = phi i64 [ 128, %.lr.ph76 ], [ %.318, %221 ]
  %.22172 = phi i32 [ 0, %.lr.ph76 ], [ %.423, %221 ]
  %.03171 = phi ptr [ %11, %.lr.ph76 ], [ %.132, %221 ]
  %.23570 = phi ptr [ %0, %.lr.ph76 ], [ %.336, %221 ]
  %203 = shl i32 %.22172, 1
  %204 = or disjoint i32 %203, 1
  %205 = load i8, ptr %.03171, align 1
  %206 = zext i8 %205 to i64
  %207 = and i64 %.21773, %206
  %.not92 = icmp eq i64 %207, 0
  %208 = add i32 %203, 2
  %spec.select2 = select i1 %.not92, i32 %204, i32 %208
  br label %209

209:                                              ; preds = %209, %202
  %.8 = phi i64 [ %.775, %202 ], [ %213, %209 ]
  %210 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %211 = load i32, ptr %210, align 4
  %212 = icmp ult i32 %211, %spec.select2
  %213 = add i64 %.8, 1
  br i1 %212, label %209, label %214, !llvm.loop !22

214:                                              ; preds = %209
  %215 = icmp eq i32 %spec.select2, %211
  br i1 %215, label %216, label %221

216:                                              ; preds = %214
  %217 = getelementptr inbounds nuw i8, ptr %9, i64 %.8
  %218 = load i8, ptr %217, align 1
  store i8 %218, ptr %.23570, align 1
  %219 = getelementptr inbounds nuw i8, ptr %.23570, i64 1
  %220 = add i64 %.31374, 1
  br label %221

221:                                              ; preds = %216, %214
  %.336 = phi ptr [ %219, %216 ], [ %.23570, %214 ]
  %.423 = phi i32 [ 0, %216 ], [ %spec.select2, %214 ]
  %.414 = phi i64 [ %220, %216 ], [ %.31374, %214 ]
  %.9 = phi i64 [ %.49, %216 ], [ %.8, %214 ]
  %222 = icmp ult i64 %.21773, 2
  %223 = lshr i64 %.21773, 1
  %.132.idx = zext i1 %222 to i64
  %.132 = getelementptr inbounds nuw i8, ptr %.03171, i64 %.132.idx
  %.318 = select i1 %222, i64 128, i64 %223
  %224 = icmp ult i64 %.414, %1
  br i1 %224, label %202, label %._crit_edge77, !llvm.loop !23

._crit_edge77:                                    ; preds = %221
  br label %225

225:                                              ; preds = %._crit_edge77, %.preheader
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
  %.not = icmp sgt i32 %3, %9
  br i1 %.not, label %42, label %.lr.ph

.lr.ph:                                           ; preds = %4
  br label %10

10:                                               ; preds = %.lr.ph, %38
  %.011 = phi i32 [ %3, %.lr.ph ], [ %.0, %38 ]
  %11 = shl nsw i32 %.011, 1
  %12 = icmp slt i32 %11, %2
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = sext i32 %11 to i64
  %15 = getelementptr [8 x i8], ptr %1, i64 %14
  %16 = getelementptr i8, ptr %15, i64 -8
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %17
  %19 = load i64, ptr %18, align 8
  %20 = sext i32 %11 to i64
  %21 = getelementptr inbounds [8 x i8], ptr %1, i64 %20
  %22 = load i64, ptr %21, align 8
  %23 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %22
  %24 = load i64, ptr %23, align 8
  %25 = icmp ugt i64 %19, %24
  %26 = zext i1 %25 to i32
  %spec.select = or disjoint i32 %11, %26
  br label %27

27:                                               ; preds = %13, %10
  %.0 = phi i32 [ %11, %10 ], [ %spec.select, %13 ]
  %sext = shl i64 %8, 32
  %28 = ashr exact i64 %sext, 29
  %29 = getelementptr inbounds i8, ptr %0, i64 %28
  %30 = load i64, ptr %29, align 8
  %31 = sext i32 %.0 to i64
  %32 = getelementptr [8 x i8], ptr %1, i64 %31
  %33 = getelementptr i8, ptr %32, i64 -8
  %34 = load i64, ptr %33, align 8
  %35 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %34
  %36 = load i64, ptr %35, align 8
  %37 = icmp ult i64 %30, %36
  br i1 %37, label %._crit_edge, label %38

38:                                               ; preds = %27
  %39 = sext i32 %.011 to i64
  %40 = getelementptr [8 x i8], ptr %1, i64 %39
  %41 = getelementptr i8, ptr %40, i64 -8
  store i64 %34, ptr %41, align 8
  %.not4 = icmp sgt i32 %.0, %9
  br i1 %.not4, label %._crit_edge2, label %10, !llvm.loop !24

._crit_edge:                                      ; preds = %27
  br label %42

._crit_edge2:                                     ; preds = %38
  br label %42

42:                                               ; preds = %._crit_edge2, %._crit_edge, %4
  %.01.lcssa = phi i32 [ %.011, %._crit_edge ], [ %.0, %._crit_edge2 ], [ %3, %4 ]
  %sext5 = shl i64 %8, 32
  %43 = ashr exact i64 %sext5, 32
  %44 = sext i32 %.01.lcssa to i64
  %45 = getelementptr [8 x i8], ptr %1, i64 %44
  %46 = getelementptr i8, ptr %45, i64 -8
  store i64 %43, ptr %46, align 8
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
  %.0 = phi i1 [ true, %2 ], [ %.not, %.loopexit ]
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
  br i1 %.0, label %20, label %17

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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) #8

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind }
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
