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
  %2 = call ptr @malloc(i64 noundef %0) #6
  %3 = icmp ult i64 0, %0
  br i1 %3, label %.lr.ph, label %12

.lr.ph:                                           ; preds = %1
  br label %4

4:                                                ; preds = %.lr.ph, %4
  %.02 = phi i32 [ 0, %.lr.ph ], [ %9, %4 ]
  %.011 = phi ptr [ %2, %.lr.ph ], [ %8, %4 ]
  %5 = call i64 @random4()
  %6 = getelementptr inbounds nuw i8, ptr @.str, i64 %5
  %7 = load i8, ptr %6, align 1
  store i8 %7, ptr %.011, align 1
  %8 = getelementptr inbounds nuw i8, ptr %.011, i32 1
  %9 = add nsw i32 %.02, 1
  %10 = sext i32 %9 to i64
  %11 = icmp ult i64 %10, %0
  br i1 %11, label %4, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %4
  br label %12

12:                                               ; preds = %._crit_edge, %1
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
  %11 = call ptr @malloc(i64 noundef %10) #6
  call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %10, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %5, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %6, i8 0, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %7, i8 0, i64 256, i1 false)
  %12 = icmp ult i64 0, %1
  br i1 %12, label %.lr.ph, label %.preheader6

.lr.ph:                                           ; preds = %2
  br label %13

..preheader6_crit_edge:                           ; preds = %13
  br label %.preheader6

.preheader6:                                      ; preds = %..preheader6_crit_edge, %2
  br label %23

13:                                               ; preds = %.lr.ph, %13
  %.0214 = phi i64 [ 0, %.lr.ph ], [ %20, %13 ]
  %.03313 = phi ptr [ %0, %.lr.ph ], [ %19, %13 ]
  %14 = load i8, ptr %.03313, align 1
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %15
  %17 = load i64, ptr %16, align 8
  %18 = add i64 %17, 1
  store i64 %18, ptr %16, align 8
  %19 = getelementptr inbounds nuw i8, ptr %.03313, i32 1
  %20 = add i64 %.0214, 1
  %21 = icmp ult i64 %20, %1
  br i1 %21, label %13, label %..preheader6_crit_edge, !llvm.loop !9

.preheader5:                                      ; preds = %30
  %22 = icmp ugt i64 %.111, 0
  br i1 %22, label %.lr.ph18, label %.preheader4

.lr.ph18:                                         ; preds = %.preheader5
  br label %34

23:                                               ; preds = %.preheader6, %30
  %.1316 = phi i64 [ 0, %.preheader6 ], [ %31, %30 ]
  %.01015 = phi i64 [ 0, %.preheader6 ], [ %.111, %30 ]
  %24 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.1316
  %25 = load i64, ptr %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.01015
  store i64 %.1316, ptr %28, align 8
  %29 = add i64 %.01015, 1
  br label %30

30:                                               ; preds = %27, %23
  %.111 = phi i64 [ %29, %27 ], [ %.01015, %23 ]
  %31 = add i64 %.1316, 1
  %32 = icmp ult i64 %31, 256
  br i1 %32, label %23, label %.preheader5, !llvm.loop !10

..preheader4_crit_edge:                           ; preds = %34
  br label %.preheader4

.preheader4:                                      ; preds = %..preheader4_crit_edge, %.preheader5
  %33 = icmp ugt i64 %.111, 1
  br i1 %33, label %.lr.ph20, label %.preheader4._crit_edge

.preheader4._crit_edge:                           ; preds = %.preheader4
  %.pre80 = add i64 256, %.111
  br label %59

.lr.ph20:                                         ; preds = %.preheader4
  br label %39

34:                                               ; preds = %.lr.ph18, %34
  %.2417 = phi i64 [ %.111, %.lr.ph18 ], [ %37, %34 ]
  %35 = trunc i64 %.111 to i32
  %36 = trunc i64 %.2417 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %35, i32 noundef %36)
  %37 = add i64 %.2417, -1
  %38 = icmp ugt i64 %37, 0
  br i1 %38, label %34, label %..preheader4_crit_edge, !llvm.loop !11

39:                                               ; preds = %.lr.ph20, %39
  %.21219 = phi i64 [ %.111, %.lr.ph20 ], [ %40, %39 ]
  %40 = add i64 %.21219, -1
  %41 = load i64, ptr %4, align 16
  %42 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %40
  %43 = load i64, ptr %42, align 8
  store i64 %43, ptr %4, align 16
  %44 = trunc i64 %40 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %44, i32 noundef 1)
  %45 = load i64, ptr %4, align 16
  %46 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %45
  %47 = load i64, ptr %46, align 8
  %48 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %41
  %49 = load i64, ptr %48, align 8
  %50 = add i64 %47, %49
  %51 = add i64 256, %40
  %52 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %51
  store i64 %50, ptr %52, align 8
  %53 = trunc i64 %51 to i32
  %54 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %41
  store i32 %53, ptr %54, align 4
  %55 = sub i64 -256, %40
  %56 = trunc i64 %55 to i32
  %57 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %45
  store i32 %56, ptr %57, align 4
  store i64 %51, ptr %4, align 16
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %44, i32 noundef 1)
  %58 = icmp ugt i64 %40, 1
  br i1 %58, label %39, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %39
  br label %59

59:                                               ; preds = %.preheader4._crit_edge, %._crit_edge
  %.pre-phi = phi i64 [ %.pre80, %.preheader4._crit_edge ], [ %51, %._crit_edge ]
  %.212.lcssa = phi i64 [ %40, %._crit_edge ], [ %.111, %.preheader4._crit_edge ]
  %60 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.pre-phi
  store i32 0, ptr %60, align 4
  br label %61

61:                                               ; preds = %59, %89
  %.03932 = phi i64 [ 0, %59 ], [ %.140, %89 ]
  %.04231 = phi i64 [ 0, %59 ], [ %90, %89 ]
  %.04530 = phi i64 [ 0, %59 ], [ %.146, %89 ]
  %62 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.04231
  %63 = load i64, ptr %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04231
  store i32 0, ptr %66, align 4
  %67 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04231
  store i8 0, ptr %67, align 1
  br label %89

68:                                               ; preds = %61
  %69 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.04231
  %70 = load i32, ptr %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %.lr.ph26, label %82

.lr.ph26:                                         ; preds = %68
  br label %72

72:                                               ; preds = %.lr.ph26, %72
  %.324 = phi i64 [ 0, %.lr.ph26 ], [ %80, %72 ]
  %.0523 = phi i64 [ 1, %.lr.ph26 ], [ %79, %72 ]
  %.03722 = phi i32 [ %70, %.lr.ph26 ], [ %78, %72 ]
  %.04321 = phi i64 [ 0, %.lr.ph26 ], [ %.144, %72 ]
  %73 = icmp slt i32 %.03722, 0
  %74 = add i64 %.04321, %.0523
  %75 = sub nsw i32 0, %.03722
  %.144 = select i1 %73, i64 %74, i64 %.04321
  %.138 = select i1 %73, i32 %75, i32 %.03722
  %76 = sext i32 %.138 to i64
  %77 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %76
  %78 = load i32, ptr %77, align 4
  %79 = shl i64 %.0523, 1
  %80 = add i64 %.324, 1
  %81 = icmp ne i32 %78, 0
  br i1 %81, label %72, label %._crit_edge27, !llvm.loop !13

._crit_edge27:                                    ; preds = %72
  br label %82

82:                                               ; preds = %._crit_edge27, %68
  %.043.lcssa = phi i64 [ %.144, %._crit_edge27 ], [ 0, %68 ]
  %.3.lcssa = phi i64 [ %80, %._crit_edge27 ], [ 0, %68 ]
  %83 = trunc i64 %.043.lcssa to i32
  %84 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04231
  store i32 %83, ptr %84, align 4
  %85 = trunc i64 %.3.lcssa to i8
  %86 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04231
  store i8 %85, ptr %86, align 1
  %87 = icmp ugt i64 %.043.lcssa, %.04530
  %spec.select = select i1 %87, i64 %.043.lcssa, i64 %.04530
  %88 = icmp ugt i64 %.3.lcssa, %.03932
  %.241 = select i1 %88, i64 %.3.lcssa, i64 %.03932
  br label %89

89:                                               ; preds = %82, %65
  %.146 = phi i64 [ %spec.select, %82 ], [ %.04530, %65 ]
  %.140 = phi i64 [ %.241, %82 ], [ %.03932, %65 ]
  %90 = add i64 %.04231, 1
  %91 = icmp ult i64 %90, 256
  br i1 %91, label %61, label %92, !llvm.loop !14

92:                                               ; preds = %89
  %93 = icmp ugt i64 %.140, 32
  br i1 %93, label %94, label %97

94:                                               ; preds = %92
  %95 = call ptr @__acrt_iob_func(i32 noundef 2)
  %96 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

97:                                               ; preds = %92
  %98 = icmp eq i64 %.146, 0
  br i1 %98, label %99, label %.preheader3

.preheader3:                                      ; preds = %97
  br i1 %12, label %.lr.ph49, label %149

.lr.ph49:                                         ; preds = %.preheader3
  br label %102

99:                                               ; preds = %97
  %100 = call ptr @__acrt_iob_func(i32 noundef 2)
  %101 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %100, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

102:                                              ; preds = %.lr.ph49, %145
  %.0148 = phi i32 [ -1, %.lr.ph49 ], [ %.1.lcssa, %145 ]
  %.1647 = phi i64 [ 0, %.lr.ph49 ], [ %147, %145 ]
  %.02446 = phi i8 [ 0, %.lr.ph49 ], [ %.125.lcssa, %145 ]
  %.02845 = phi i64 [ 0, %.lr.ph49 ], [ %.129.lcssa, %145 ]
  %.13444 = phi ptr [ %0, %.lr.ph49 ], [ %146, %145 ]
  %103 = load i8, ptr %.13444, align 1
  %104 = zext i8 %103 to i64
  %105 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %104
  %106 = load i8, ptr %105, align 1
  %107 = zext i8 %106 to i32
  %108 = sub nsw i32 %107, 1
  %109 = shl i32 1, %108
  %110 = sext i32 %109 to i64
  %111 = zext i8 %106 to i64
  %112 = icmp ult i64 0, %111
  br i1 %112, label %.lr.ph39, label %145

.lr.ph39:                                         ; preds = %102
  br label %113

113:                                              ; preds = %.lr.ph39, %128
  %114 = phi i8 [ %103, %.lr.ph39 ], [ %129, %128 ]
  %.137 = phi i32 [ %.0148, %.lr.ph39 ], [ %.2, %128 ]
  %.436 = phi i64 [ 0, %.lr.ph39 ], [ %140, %128 ]
  %.01535 = phi i64 [ %110, %.lr.ph39 ], [ %139, %128 ]
  %.12534 = phi i8 [ %.02446, %.lr.ph39 ], [ %.327, %128 ]
  %.12933 = phi i64 [ %.02845, %.lr.ph39 ], [ %.230, %128 ]
  %115 = icmp eq i32 %.137, 7
  br i1 %115, label %116, label %123

116:                                              ; preds = %113
  %117 = getelementptr inbounds nuw i8, ptr %11, i64 %.12933
  store i8 %.12534, ptr %117, align 1
  %118 = add i64 %.12933, 1
  %119 = icmp eq i64 %118, %1
  br i1 %119, label %120, label %._crit_edge78

._crit_edge78:                                    ; preds = %116
  %.pre = load i8, ptr %.13444, align 1
  br label %128

120:                                              ; preds = %116
  %121 = call ptr @__acrt_iob_func(i32 noundef 2)
  %122 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %121, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

123:                                              ; preds = %113
  %124 = add nsw i32 %.137, 1
  %125 = sext i8 %.12534 to i32
  %126 = shl i32 %125, 1
  %127 = trunc i32 %126 to i8
  br label %128

128:                                              ; preds = %._crit_edge78, %123
  %129 = phi i8 [ %114, %123 ], [ %.pre, %._crit_edge78 ]
  %.230 = phi i64 [ %.12933, %123 ], [ %118, %._crit_edge78 ]
  %.226 = phi i8 [ %127, %123 ], [ 0, %._crit_edge78 ]
  %.2 = phi i32 [ %124, %123 ], [ 0, %._crit_edge78 ]
  %130 = zext i8 %129 to i64
  %131 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %130
  %132 = load i32, ptr %131, align 4
  %133 = zext i32 %132 to i64
  %134 = and i64 %133, %.01535
  %135 = icmp ne i64 %134, 0
  %136 = sext i8 %.226 to i32
  %137 = or i32 %136, 1
  %138 = trunc i32 %137 to i8
  %.327 = select i1 %135, i8 %138, i8 %.226
  %139 = lshr i64 %.01535, 1
  %140 = add i64 %.436, 1
  %141 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %130
  %142 = load i8, ptr %141, align 1
  %143 = zext i8 %142 to i64
  %144 = icmp ult i64 %140, %143
  br i1 %144, label %113, label %._crit_edge40, !llvm.loop !15

._crit_edge40:                                    ; preds = %128
  br label %145

145:                                              ; preds = %._crit_edge40, %102
  %.129.lcssa = phi i64 [ %.230, %._crit_edge40 ], [ %.02845, %102 ]
  %.125.lcssa = phi i8 [ %.327, %._crit_edge40 ], [ %.02446, %102 ]
  %.1.lcssa = phi i32 [ %.2, %._crit_edge40 ], [ %.0148, %102 ]
  %146 = getelementptr inbounds nuw i8, ptr %.13444, i32 1
  %147 = add i64 %.1647, 1
  %148 = icmp ult i64 %147, %1
  br i1 %148, label %102, label %._crit_edge50, !llvm.loop !16

._crit_edge50:                                    ; preds = %145
  br label %149

149:                                              ; preds = %._crit_edge50, %.preheader3
  %.028.lcssa = phi i64 [ %.129.lcssa, %._crit_edge50 ], [ 0, %.preheader3 ]
  %.024.lcssa = phi i8 [ %.125.lcssa, %._crit_edge50 ], [ 0, %.preheader3 ]
  %.01.lcssa = phi i32 [ %.1.lcssa, %._crit_edge50 ], [ -1, %.preheader3 ]
  %150 = sub nsw i32 7, %.01.lcssa
  %151 = sext i8 %.024.lcssa to i32
  %152 = shl i32 %151, %150
  %153 = trunc i32 %152 to i8
  %154 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %153, ptr %154, align 1
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 1024, i1 false)
  br label %155

.preheader2:                                      ; preds = %183
  br label %186

155:                                              ; preds = %149, %183
  %.062 = phi ptr [ %9, %149 ], [ %157, %183 ]
  %.2761 = phi i64 [ 0, %149 ], [ %184, %183 ]
  %156 = trunc i64 %.2761 to i8
  store i8 %156, ptr %.062, align 1
  %157 = getelementptr inbounds nuw i8, ptr %.062, i32 1
  %158 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.2761
  %159 = load i32, ptr %158, align 4
  %160 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2761
  %161 = load i8, ptr %160, align 1
  %162 = zext i8 %161 to i32
  %163 = or i32 %159, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %183

165:                                              ; preds = %155
  %166 = sub nsw i32 %162, 1
  %167 = shl i32 1, %166
  %168 = sext i32 %167 to i64
  %169 = zext i8 %161 to i64
  %170 = icmp ult i64 0, %169
  br i1 %170, label %.lr.ph58, label %181

.lr.ph58:                                         ; preds = %165
  br label %171

171:                                              ; preds = %.lr.ph58, %171
  %.556 = phi i64 [ 0, %.lr.ph58 ], [ %179, %171 ]
  %.11655 = phi i64 [ %168, %.lr.ph58 ], [ %178, %171 ]
  %.01954 = phi i32 [ 0, %.lr.ph58 ], [ %spec.select1, %171 ]
  %172 = mul i32 %.01954, 2
  %173 = add i32 %172, 1
  %174 = zext i32 %159 to i64
  %175 = and i64 %174, %.11655
  %176 = icmp ne i64 %175, 0
  %177 = add i32 %173, 1
  %spec.select1 = select i1 %176, i32 %177, i32 %173
  %178 = lshr i64 %.11655, 1
  %179 = add i64 %.556, 1
  %180 = icmp ult i64 %179, %169
  br i1 %180, label %171, label %._crit_edge59, !llvm.loop !17

._crit_edge59:                                    ; preds = %171
  br label %181

181:                                              ; preds = %._crit_edge59, %165
  %.019.lcssa = phi i32 [ %spec.select1, %._crit_edge59 ], [ 0, %165 ]
  %182 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.2761
  store i32 %.019.lcssa, ptr %182, align 4
  br label %183

183:                                              ; preds = %181, %155
  %184 = add i64 %.2761, 1
  %185 = icmp ult i64 %184, 256
  br i1 %185, label %155, label %.preheader2, !llvm.loop !18

.preheader1:                                      ; preds = %.critedge
  br label %207

186:                                              ; preds = %.preheader2, %.critedge
  %.669 = phi i64 [ 1, %.preheader2 ], [ %205, %.critedge ]
  %187 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.669
  %188 = load i32, ptr %187, align 4
  %189 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.669
  %190 = load i8, ptr %189, align 1
  br i1 true, label %.lr.ph65, label %..critedge_crit_edge79

..critedge_crit_edge79:                           ; preds = %186
  br label %.critedge

.lr.ph65:                                         ; preds = %186
  br label %191

191:                                              ; preds = %.lr.ph65, %196
  %.3863 = phi i64 [ %.669, %.lr.ph65 ], [ %201, %196 ]
  %192 = sub i64 %.3863, 1
  %193 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %192
  %194 = load i32, ptr %193, align 4
  %195 = icmp ugt i32 %194, %188
  br i1 %195, label %196, label %..critedge_crit_edge

196:                                              ; preds = %191
  %197 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.3863
  store i32 %194, ptr %197, align 4
  %198 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %192
  %199 = load i8, ptr %198, align 1
  %200 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.3863
  store i8 %199, ptr %200, align 1
  %201 = add i64 %.3863, -1
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %191, label %..critedge_crit_edge67, !llvm.loop !19

..critedge_crit_edge:                             ; preds = %191
  br label %.critedge

..critedge_crit_edge67:                           ; preds = %196
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge79, %..critedge_crit_edge67, %..critedge_crit_edge
  %.38.lcssa = phi i64 [ %.3863, %..critedge_crit_edge ], [ 0, %..critedge_crit_edge67 ], [ poison, %..critedge_crit_edge79 ]
  %203 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %188, ptr %203, align 4
  %204 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %190, ptr %204, align 1
  %205 = add i64 %.669, 1
  %206 = icmp ult i64 %205, 256
  br i1 %206, label %186, label %.preheader1, !llvm.loop !20

207:                                              ; preds = %207, %.preheader1
  %.49 = phi i64 [ %211, %207 ], [ 0, %.preheader1 ]
  %208 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %209 = load i32, ptr %208, align 4
  %210 = icmp eq i32 %209, 0
  %211 = add i64 %.49, 1
  br i1 %210, label %207, label %.preheader, !llvm.loop !21

.preheader:                                       ; preds = %207
  br i1 %12, label %.lr.ph76, label %237

.lr.ph76:                                         ; preds = %.preheader
  br label %212

212:                                              ; preds = %.lr.ph76, %232
  %.775 = phi i64 [ %.49, %.lr.ph76 ], [ %.9, %232 ]
  %.31374 = phi i64 [ 0, %.lr.ph76 ], [ %.414, %232 ]
  %.21773 = phi i64 [ 128, %.lr.ph76 ], [ %.318, %232 ]
  %.22172 = phi i32 [ 0, %.lr.ph76 ], [ %.423, %232 ]
  %.03171 = phi ptr [ %11, %.lr.ph76 ], [ %.132, %232 ]
  %.23570 = phi ptr [ %0, %.lr.ph76 ], [ %.336, %232 ]
  %213 = mul i32 %.22172, 2
  %214 = add i32 %213, 1
  %215 = load i8, ptr %.03171, align 1
  %216 = zext i8 %215 to i64
  %217 = and i64 %216, %.21773
  %218 = icmp ne i64 %217, 0
  %219 = add i32 %214, 1
  %spec.select2 = select i1 %218, i32 %219, i32 %214
  br label %220

220:                                              ; preds = %220, %212
  %.8 = phi i64 [ %.775, %212 ], [ %224, %220 ]
  %221 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %222 = load i32, ptr %221, align 4
  %223 = icmp ult i32 %222, %spec.select2
  %224 = add i64 %.8, 1
  br i1 %223, label %220, label %225, !llvm.loop !22

225:                                              ; preds = %220
  %226 = icmp eq i32 %spec.select2, %222
  br i1 %226, label %227, label %232

227:                                              ; preds = %225
  %228 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8
  %229 = load i8, ptr %228, align 1
  store i8 %229, ptr %.23570, align 1
  %230 = getelementptr inbounds nuw i8, ptr %.23570, i32 1
  %231 = add i64 %.31374, 1
  br label %232

232:                                              ; preds = %227, %225
  %.336 = phi ptr [ %230, %227 ], [ %.23570, %225 ]
  %.423 = phi i32 [ 0, %227 ], [ %spec.select2, %225 ]
  %.414 = phi i64 [ %231, %227 ], [ %.31374, %225 ]
  %.9 = phi i64 [ %.49, %227 ], [ %.8, %225 ]
  %233 = icmp ugt i64 %.21773, 1
  %234 = lshr i64 %.21773, 1
  %235 = getelementptr inbounds nuw i8, ptr %.03171, i32 1
  %.132 = select i1 %233, ptr %.03171, ptr %235
  %.318 = select i1 %233, i64 %234, i64 128
  %236 = icmp ult i64 %.414, %1
  br i1 %236, label %212, label %._crit_edge77, !llvm.loop !23

._crit_edge77:                                    ; preds = %232
  br label %237

237:                                              ; preds = %._crit_edge77, %.preheader
  call void @free(ptr noundef %11)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal void @heap_adjust(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = sub nsw i32 %3, 1
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i64, ptr %1, i64 %6
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = sdiv i32 %2, 2
  %11 = icmp sle i32 %3, %10
  br i1 %11, label %.lr.ph, label %._crit_edge6

._crit_edge6:                                     ; preds = %4
  %.pre7 = sext i32 %9 to i64
  br label %45

.lr.ph:                                           ; preds = %4
  br label %12

12:                                               ; preds = %.lr.ph, %40
  %.011 = phi i32 [ %3, %.lr.ph ], [ %.0, %40 ]
  %13 = add nsw i32 %.011, %.011
  %14 = icmp slt i32 %13, %2
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = sub nsw i32 %13, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, ptr %1, i64 %17
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds nuw i64, ptr %0, i64 %19
  %21 = load i64, ptr %20, align 8
  %22 = sext i32 %13 to i64
  %23 = getelementptr inbounds i64, ptr %1, i64 %22
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds nuw i64, ptr %0, i64 %24
  %26 = load i64, ptr %25, align 8
  %27 = icmp ugt i64 %21, %26
  %28 = add nsw i32 %13, 1
  %spec.select = select i1 %27, i32 %28, i32 %13
  br label %29

29:                                               ; preds = %15, %12
  %.0 = phi i32 [ %13, %12 ], [ %spec.select, %15 ]
  %30 = sext i32 %9 to i64
  %31 = getelementptr inbounds i64, ptr %0, i64 %30
  %32 = load i64, ptr %31, align 8
  %33 = sub nsw i32 %.0, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, ptr %1, i64 %34
  %36 = load i64, ptr %35, align 8
  %37 = getelementptr inbounds nuw i64, ptr %0, i64 %36
  %38 = load i64, ptr %37, align 8
  %39 = icmp ult i64 %32, %38
  br i1 %39, label %._crit_edge, label %40

40:                                               ; preds = %29
  %41 = sub nsw i32 %.011, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, ptr %1, i64 %42
  store i64 %36, ptr %43, align 8
  %44 = icmp sle i32 %.0, %10
  br i1 %44, label %12, label %._crit_edge2, !llvm.loop !24

._crit_edge:                                      ; preds = %29
  %.pre = sub nsw i32 %.011, 1
  %.pre4 = sext i32 %.pre to i64
  br label %45

._crit_edge2:                                     ; preds = %40
  br label %45

45:                                               ; preds = %._crit_edge6, %._crit_edge2, %._crit_edge
  %.pre-phi8 = phi i64 [ %.pre7, %._crit_edge6 ], [ %30, %._crit_edge2 ], [ %30, %._crit_edge ]
  %.pre-phi5 = phi i64 [ %34, %._crit_edge2 ], [ %.pre4, %._crit_edge ], [ %6, %._crit_edge6 ]
  %.pre-phi = phi i32 [ %33, %._crit_edge2 ], [ %.pre, %._crit_edge ], [ %5, %._crit_edge6 ]
  %.01.lcssa = phi i32 [ %.011, %._crit_edge ], [ %.0, %._crit_edge2 ], [ %3, %._crit_edge6 ]
  %46 = getelementptr inbounds i64, ptr %1, i64 %.pre-phi5
  store i64 %.pre-phi8, ptr %46, align 8
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
  %4 = getelementptr inbounds ptr, ptr %1, i64 1
  br label %7

5:                                                ; preds = %7
  %6 = icmp slt i32 %11, %0
  br i1 %6, label %7, label %.loopexit, !llvm.loop !25

7:                                                ; preds = %.preheader, %5
  %.011 = phi i32 [ 1, %.preheader ], [ %11, %5 ]
  %8 = load ptr, ptr %4, align 8
  %9 = call i32 @strcmp(ptr noundef %8, ptr noundef @.str.4) #7
  %10 = icmp ne i32 %9, 0
  %11 = add nsw i32 %.011, 1
  br i1 %10, label %5, label %.loopexit

.loopexit:                                        ; preds = %5, %7
  %.0.ph = phi i8 [ 1, %7 ], [ 0, %5 ]
  br label %12

12:                                               ; preds = %.loopexit, %2
  %.0 = phi i8 [ 0, %2 ], [ %.0.ph, %.loopexit ]
  %13 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %14

14:                                               ; preds = %12, %14
  %.122 = phi i32 [ 0, %12 ], [ %15, %14 ]
  call void @compdecomp(ptr noundef %13, i64 noundef 10000000)
  %15 = add nsw i32 %.122, 1
  %16 = icmp slt i32 %15, 30
  br i1 %16, label %14, label %17, !llvm.loop !26

17:                                               ; preds = %14
  call void @free(ptr noundef %13)
  %18 = icmp ne i8 %.0, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = call ptr @__acrt_iob_func(i32 noundef 1)
  %21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.5, double noundef 0.000000e+00) #7
  br label %25

22:                                               ; preds = %17
  %23 = call ptr @__acrt_iob_func(i32 noundef 1)
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.6, double noundef 0.000000e+00) #7
  br label %25

25:                                               ; preds = %22, %19
  %26 = call ptr @__acrt_iob_func(i32 noundef 1)
  %27 = call i32 @fflush(ptr noundef %26)
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
  %4 = mul nsw i32 %3, 127773
  %5 = sub nsw i32 %2, %4
  %6 = mul nsw i32 16807, %5
  %7 = mul nsw i32 2836, %3
  %8 = sub nsw i32 %6, %7
  store i32 %8, ptr @seed, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = add nsw i32 %8, 2147483647
  store i32 %11, ptr @seed, align 4
  br label %12

12:                                               ; preds = %10, %0
  %13 = phi i32 [ %11, %10 ], [ %8, %0 ]
  %14 = srem i32 %13, 32
  %15 = sext i32 %14 to i64
  %16 = xor i32 %13, 123459876
  store i32 %16, ptr @seed, align 4
  ret i64 %15
}

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(0) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

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
