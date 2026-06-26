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
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %1, %.lr.ph
  %.02 = phi i32 [ %8, %.lr.ph ], [ 0, %1 ]
  %.011 = phi ptr [ %7, %.lr.ph ], [ %2, %1 ]
  %4 = call i64 @random4()
  %5 = getelementptr inbounds nuw i8, ptr @.str, i64 %4
  %6 = load i8, ptr %5, align 1
  store i8 %6, ptr %.011, align 1
  %7 = getelementptr inbounds nuw i8, ptr %.011, i32 1
  %8 = add nsw i32 %.02, 1
  %9 = sext i32 %8 to i64
  %10 = icmp ult i64 %9, %0
  br i1 %10, label %.lr.ph, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %.lr.ph, %1
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

.preheader6:                                      ; preds = %.lr.ph, %2
  br label %22

.lr.ph:                                           ; preds = %2, %.lr.ph
  %.0214 = phi i64 [ %19, %.lr.ph ], [ 0, %2 ]
  %.03313 = phi ptr [ %18, %.lr.ph ], [ %0, %2 ]
  %13 = load i8, ptr %.03313, align 1
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %14
  %16 = load i64, ptr %15, align 8
  %17 = add i64 %16, 1
  store i64 %17, ptr %15, align 8
  %18 = getelementptr inbounds nuw i8, ptr %.03313, i32 1
  %19 = add i64 %.0214, 1
  %20 = icmp ult i64 %19, %1
  br i1 %20, label %.lr.ph, label %.preheader6, !llvm.loop !9

.preheader5:                                      ; preds = %29
  %.010.lcssa = phi i64 [ %.111, %29 ]
  %21 = icmp ugt i64 %.010.lcssa, 0
  br i1 %21, label %.lr.ph18, label %.preheader4

22:                                               ; preds = %.preheader6, %29
  %.1316 = phi i64 [ 0, %.preheader6 ], [ %30, %29 ]
  %.01015 = phi i64 [ 0, %.preheader6 ], [ %.111, %29 ]
  %23 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.1316
  %24 = load i64, ptr %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.01015
  store i64 %.1316, ptr %27, align 8
  %28 = add i64 %.01015, 1
  br label %29

29:                                               ; preds = %26, %22
  %.111 = phi i64 [ %28, %26 ], [ %.01015, %22 ]
  %30 = add i64 %.1316, 1
  %31 = icmp ult i64 %30, 256
  br i1 %31, label %22, label %.preheader5, !llvm.loop !10

.preheader4:                                      ; preds = %.lr.ph18, %.preheader5
  %32 = icmp ugt i64 %.010.lcssa, 1
  br i1 %32, label %.lr.ph20, label %._crit_edge

.lr.ph18:                                         ; preds = %.preheader5, %.lr.ph18
  %.2417 = phi i64 [ %35, %.lr.ph18 ], [ %.010.lcssa, %.preheader5 ]
  %33 = trunc i64 %.010.lcssa to i32
  %34 = trunc i64 %.2417 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %33, i32 noundef %34)
  %35 = add i64 %.2417, -1
  %36 = icmp ugt i64 %35, 0
  br i1 %36, label %.lr.ph18, label %.preheader4, !llvm.loop !11

.lr.ph20:                                         ; preds = %.preheader4, %.lr.ph20
  %.21219 = phi i64 [ %37, %.lr.ph20 ], [ %.010.lcssa, %.preheader4 ]
  %37 = add i64 %.21219, -1
  %38 = load i64, ptr %4, align 16
  %39 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %37
  %40 = load i64, ptr %39, align 8
  store i64 %40, ptr %4, align 16
  %41 = trunc i64 %37 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %41, i32 noundef 1)
  %42 = load i64, ptr %4, align 16
  %43 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %42
  %44 = load i64, ptr %43, align 8
  %45 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %38
  %46 = load i64, ptr %45, align 8
  %47 = add i64 %44, %46
  %48 = add i64 256, %37
  %49 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %48
  store i64 %47, ptr %49, align 8
  %50 = trunc i64 %48 to i32
  %51 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %38
  store i32 %50, ptr %51, align 4
  %52 = sub i64 -256, %37
  %53 = trunc i64 %52 to i32
  %54 = load i64, ptr %4, align 16
  %55 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %54
  store i32 %53, ptr %55, align 4
  store i64 %48, ptr %4, align 16
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %41, i32 noundef 1)
  %56 = icmp ugt i64 %37, 1
  br i1 %56, label %.lr.ph20, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %.lr.ph20, %.preheader4
  %.212.lcssa = phi i64 [ %.010.lcssa, %.preheader4 ], [ %37, %.lr.ph20 ]
  %57 = add i64 256, %.212.lcssa
  %58 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %57
  store i32 0, ptr %58, align 4
  br label %59

59:                                               ; preds = %._crit_edge, %85
  %.03932 = phi i64 [ 0, %._crit_edge ], [ %.140, %85 ]
  %.04231 = phi i64 [ 0, %._crit_edge ], [ %86, %85 ]
  %.04530 = phi i64 [ 0, %._crit_edge ], [ %.146, %85 ]
  %60 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.04231
  %61 = load i64, ptr %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04231
  store i32 0, ptr %64, align 4
  %65 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04231
  store i8 0, ptr %65, align 1
  br label %85

66:                                               ; preds = %59
  %67 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.04231
  %68 = load i32, ptr %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %.lr.ph26, label %._crit_edge27

.lr.ph26:                                         ; preds = %66, %.lr.ph26
  %.324 = phi i64 [ %77, %.lr.ph26 ], [ 0, %66 ]
  %.0523 = phi i64 [ %76, %.lr.ph26 ], [ 1, %66 ]
  %.03722 = phi i32 [ %75, %.lr.ph26 ], [ %68, %66 ]
  %.04321 = phi i64 [ %.144, %.lr.ph26 ], [ 0, %66 ]
  %70 = icmp slt i32 %.03722, 0
  %71 = add i64 %.04321, %.0523
  %72 = sub nsw i32 0, %.03722
  %.144 = select i1 %70, i64 %71, i64 %.04321
  %.138 = select i1 %70, i32 %72, i32 %.03722
  %73 = sext i32 %.138 to i64
  %74 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %73
  %75 = load i32, ptr %74, align 4
  %76 = shl i64 %.0523, 1
  %77 = add i64 %.324, 1
  %78 = icmp ne i32 %75, 0
  br i1 %78, label %.lr.ph26, label %._crit_edge27, !llvm.loop !13

._crit_edge27:                                    ; preds = %.lr.ph26, %66
  %.043.lcssa = phi i64 [ 0, %66 ], [ %.144, %.lr.ph26 ]
  %.3.lcssa = phi i64 [ 0, %66 ], [ %77, %.lr.ph26 ]
  %79 = trunc i64 %.043.lcssa to i32
  %80 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04231
  store i32 %79, ptr %80, align 4
  %81 = trunc i64 %.3.lcssa to i8
  %82 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04231
  store i8 %81, ptr %82, align 1
  %83 = icmp ugt i64 %.043.lcssa, %.04530
  %spec.select = select i1 %83, i64 %.043.lcssa, i64 %.04530
  %84 = icmp ugt i64 %.3.lcssa, %.03932
  %.241 = select i1 %84, i64 %.3.lcssa, i64 %.03932
  br label %85

85:                                               ; preds = %._crit_edge27, %63
  %.146 = phi i64 [ %spec.select, %._crit_edge27 ], [ %.04530, %63 ]
  %.140 = phi i64 [ %.241, %._crit_edge27 ], [ %.03932, %63 ]
  %86 = add i64 %.04231, 1
  %87 = icmp ult i64 %86, 256
  br i1 %87, label %59, label %88, !llvm.loop !14

88:                                               ; preds = %85
  %.045.lcssa = phi i64 [ %.146, %85 ]
  %.039.lcssa = phi i64 [ %.140, %85 ]
  %89 = icmp ugt i64 %.039.lcssa, 32
  br i1 %89, label %90, label %93

90:                                               ; preds = %88
  %91 = call ptr @__acrt_iob_func(i32 noundef 2)
  %92 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

93:                                               ; preds = %88
  %94 = icmp eq i64 %.045.lcssa, 0
  br i1 %94, label %96, label %.preheader3

.preheader3:                                      ; preds = %93
  %95 = icmp ult i64 0, %1
  br i1 %95, label %.lr.ph49, label %._crit_edge50

96:                                               ; preds = %93
  %97 = call ptr @__acrt_iob_func(i32 noundef 2)
  %98 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %97, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

.lr.ph49:                                         ; preds = %.preheader3, %._crit_edge40
  %.0148 = phi i32 [ %.1.lcssa, %._crit_edge40 ], [ -1, %.preheader3 ]
  %.1647 = phi i64 [ %146, %._crit_edge40 ], [ 0, %.preheader3 ]
  %.02446 = phi i8 [ %.125.lcssa, %._crit_edge40 ], [ 0, %.preheader3 ]
  %.02845 = phi i64 [ %.129.lcssa, %._crit_edge40 ], [ 0, %.preheader3 ]
  %.13444 = phi ptr [ %145, %._crit_edge40 ], [ %0, %.preheader3 ]
  %99 = load i8, ptr %.13444, align 1
  %100 = zext i8 %99 to i64
  %101 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %100
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %102 to i32
  %104 = sub nsw i32 %103, 1
  %105 = shl i32 1, %104
  %106 = sext i32 %105 to i64
  %107 = load i8, ptr %.13444, align 1
  %108 = zext i8 %107 to i64
  %109 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %108
  %110 = load i8, ptr %109, align 1
  %111 = zext i8 %110 to i64
  %112 = icmp ult i64 0, %111
  br i1 %112, label %.lr.ph39, label %._crit_edge40

.lr.ph39:                                         ; preds = %.lr.ph49, %126
  %.137 = phi i32 [ %.2, %126 ], [ %.0148, %.lr.ph49 ]
  %.436 = phi i64 [ %138, %126 ], [ 0, %.lr.ph49 ]
  %.01535 = phi i64 [ %137, %126 ], [ %106, %.lr.ph49 ]
  %.12534 = phi i8 [ %.327, %126 ], [ %.02446, %.lr.ph49 ]
  %.12933 = phi i64 [ %.230, %126 ], [ %.02845, %.lr.ph49 ]
  %113 = icmp eq i32 %.137, 7
  br i1 %113, label %114, label %121

114:                                              ; preds = %.lr.ph39
  %115 = getelementptr inbounds nuw i8, ptr %11, i64 %.12933
  store i8 %.12534, ptr %115, align 1
  %116 = add i64 %.12933, 1
  %117 = icmp eq i64 %116, %1
  br i1 %117, label %118, label %126

118:                                              ; preds = %114
  %119 = call ptr @__acrt_iob_func(i32 noundef 2)
  %120 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %119, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

121:                                              ; preds = %.lr.ph39
  %122 = add nsw i32 %.137, 1
  %123 = sext i8 %.12534 to i32
  %124 = shl i32 %123, 1
  %125 = trunc i32 %124 to i8
  br label %126

126:                                              ; preds = %121, %114
  %.230 = phi i64 [ %.12933, %121 ], [ %116, %114 ]
  %.226 = phi i8 [ %125, %121 ], [ 0, %114 ]
  %.2 = phi i32 [ %122, %121 ], [ 0, %114 ]
  %127 = load i8, ptr %.13444, align 1
  %128 = zext i8 %127 to i64
  %129 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %128
  %130 = load i32, ptr %129, align 4
  %131 = zext i32 %130 to i64
  %132 = and i64 %131, %.01535
  %133 = icmp ne i64 %132, 0
  %134 = sext i8 %.226 to i32
  %135 = or i32 %134, 1
  %136 = trunc i32 %135 to i8
  %.327 = select i1 %133, i8 %136, i8 %.226
  %137 = lshr i64 %.01535, 1
  %138 = add i64 %.436, 1
  %139 = load i8, ptr %.13444, align 1
  %140 = zext i8 %139 to i64
  %141 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %140
  %142 = load i8, ptr %141, align 1
  %143 = zext i8 %142 to i64
  %144 = icmp ult i64 %138, %143
  br i1 %144, label %.lr.ph39, label %._crit_edge40, !llvm.loop !15

._crit_edge40:                                    ; preds = %126, %.lr.ph49
  %.129.lcssa = phi i64 [ %.02845, %.lr.ph49 ], [ %.230, %126 ]
  %.125.lcssa = phi i8 [ %.02446, %.lr.ph49 ], [ %.327, %126 ]
  %.1.lcssa = phi i32 [ %.0148, %.lr.ph49 ], [ %.2, %126 ]
  %145 = getelementptr inbounds nuw i8, ptr %.13444, i32 1
  %146 = add i64 %.1647, 1
  %147 = icmp ult i64 %146, %1
  br i1 %147, label %.lr.ph49, label %._crit_edge50, !llvm.loop !16

._crit_edge50:                                    ; preds = %._crit_edge40, %.preheader3
  %.028.lcssa = phi i64 [ 0, %.preheader3 ], [ %.129.lcssa, %._crit_edge40 ]
  %.024.lcssa = phi i8 [ 0, %.preheader3 ], [ %.125.lcssa, %._crit_edge40 ]
  %.01.lcssa = phi i32 [ -1, %.preheader3 ], [ %.1.lcssa, %._crit_edge40 ]
  %148 = sub nsw i32 7, %.01.lcssa
  %149 = sext i8 %.024.lcssa to i32
  %150 = shl i32 %149, %148
  %151 = trunc i32 %150 to i8
  %152 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %151, ptr %152, align 1
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 1024, i1 false)
  br label %153

153:                                              ; preds = %._crit_edge50, %183
  %.062 = phi ptr [ %9, %._crit_edge50 ], [ %155, %183 ]
  %.2761 = phi i64 [ 0, %._crit_edge50 ], [ %184, %183 ]
  %154 = trunc i64 %.2761 to i8
  store i8 %154, ptr %.062, align 1
  %155 = getelementptr inbounds nuw i8, ptr %.062, i32 1
  %156 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.2761
  %157 = load i32, ptr %156, align 4
  %158 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2761
  %159 = load i8, ptr %158, align 1
  %160 = zext i8 %159 to i32
  %161 = or i32 %157, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %183

163:                                              ; preds = %153
  %164 = sub nsw i32 %160, 1
  %165 = shl i32 1, %164
  %166 = sext i32 %165 to i64
  %167 = load i8, ptr %158, align 1
  %168 = zext i8 %167 to i64
  %169 = icmp ult i64 0, %168
  br i1 %169, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %163, %.lr.ph58
  %.556 = phi i64 [ %178, %.lr.ph58 ], [ 0, %163 ]
  %.11655 = phi i64 [ %177, %.lr.ph58 ], [ %166, %163 ]
  %.01954 = phi i32 [ %spec.select1, %.lr.ph58 ], [ 0, %163 ]
  %170 = mul i32 %.01954, 2
  %171 = add i32 %170, 1
  %172 = load i32, ptr %156, align 4
  %173 = zext i32 %172 to i64
  %174 = and i64 %173, %.11655
  %175 = icmp ne i64 %174, 0
  %176 = add i32 %171, 1
  %spec.select1 = select i1 %175, i32 %176, i32 %171
  %177 = lshr i64 %.11655, 1
  %178 = add i64 %.556, 1
  %179 = load i8, ptr %158, align 1
  %180 = zext i8 %179 to i64
  %181 = icmp ult i64 %178, %180
  br i1 %181, label %.lr.ph58, label %._crit_edge59, !llvm.loop !17

._crit_edge59:                                    ; preds = %.lr.ph58, %163
  %.019.lcssa = phi i32 [ 0, %163 ], [ %spec.select1, %.lr.ph58 ]
  %182 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.2761
  store i32 %.019.lcssa, ptr %182, align 4
  br label %183

183:                                              ; preds = %._crit_edge59, %153
  %184 = add i64 %.2761, 1
  %185 = icmp ult i64 %184, 256
  br i1 %185, label %153, label %.preheader2, !llvm.loop !18

.preheader2:                                      ; preds = %183, %.critedge
  %.669 = phi i64 [ %204, %.critedge ], [ 1, %183 ]
  %186 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.669
  %187 = load i32, ptr %186, align 4
  %188 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.669
  %189 = load i8, ptr %188, align 1
  %190 = icmp ne i64 %.669, 0
  br i1 %190, label %.lr.ph65, label %.critedge

.lr.ph65:                                         ; preds = %.preheader2, %195
  %.3863 = phi i64 [ %200, %195 ], [ %.669, %.preheader2 ]
  %191 = sub i64 %.3863, 1
  %192 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %191
  %193 = load i32, ptr %192, align 4
  %194 = icmp ugt i32 %193, %187
  br i1 %194, label %195, label %.critedge

195:                                              ; preds = %.lr.ph65
  %196 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.3863
  store i32 %193, ptr %196, align 4
  %197 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %191
  %198 = load i8, ptr %197, align 1
  %199 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.3863
  store i8 %198, ptr %199, align 1
  %200 = add i64 %.3863, -1
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %.lr.ph65, label %.critedge, !llvm.loop !19

.critedge:                                        ; preds = %195, %.lr.ph65, %.preheader2
  %.38.lcssa = phi i64 [ %.669, %.preheader2 ], [ %.3863, %.lr.ph65 ], [ %200, %195 ]
  %202 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %187, ptr %202, align 4
  %203 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %189, ptr %203, align 1
  %204 = add i64 %.669, 1
  %205 = icmp ult i64 %204, 256
  br i1 %205, label %.preheader2, label %.preheader1, !llvm.loop !20

.preheader1:                                      ; preds = %.critedge, %.preheader1
  %.49 = phi i64 [ %209, %.preheader1 ], [ 0, %.critedge ]
  %206 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %207 = load i32, ptr %206, align 4
  %208 = icmp eq i32 %207, 0
  %209 = add i64 %.49, 1
  br i1 %208, label %.preheader1, label %.preheader, !llvm.loop !21

.preheader:                                       ; preds = %.preheader1
  %.49.lcssa = phi i64 [ %.49, %.preheader1 ]
  %210 = icmp ult i64 0, %1
  br i1 %210, label %.lr.ph76, label %._crit_edge77

.lr.ph76:                                         ; preds = %.preheader, %230
  %.775 = phi i64 [ %.9, %230 ], [ %.49.lcssa, %.preheader ]
  %.31374 = phi i64 [ %.414, %230 ], [ 0, %.preheader ]
  %.21773 = phi i64 [ %.318, %230 ], [ 128, %.preheader ]
  %.22172 = phi i32 [ %.423, %230 ], [ 0, %.preheader ]
  %.03171 = phi ptr [ %.132, %230 ], [ %11, %.preheader ]
  %.23570 = phi ptr [ %.336, %230 ], [ %0, %.preheader ]
  %211 = mul i32 %.22172, 2
  %212 = add i32 %211, 1
  %213 = load i8, ptr %.03171, align 1
  %214 = zext i8 %213 to i64
  %215 = and i64 %214, %.21773
  %216 = icmp ne i64 %215, 0
  %217 = add i32 %212, 1
  %spec.select2 = select i1 %216, i32 %217, i32 %212
  br label %218

218:                                              ; preds = %218, %.lr.ph76
  %.8 = phi i64 [ %.775, %.lr.ph76 ], [ %222, %218 ]
  %219 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %220 = load i32, ptr %219, align 4
  %221 = icmp ult i32 %220, %spec.select2
  %222 = add i64 %.8, 1
  br i1 %221, label %218, label %223, !llvm.loop !22

223:                                              ; preds = %218
  %.8.lcssa = phi i64 [ %.8, %218 ]
  %.lcssa = phi i32 [ %220, %218 ]
  %224 = icmp eq i32 %spec.select2, %.lcssa
  br i1 %224, label %225, label %230

225:                                              ; preds = %223
  %226 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %227 = load i8, ptr %226, align 1
  store i8 %227, ptr %.23570, align 1
  %228 = getelementptr inbounds nuw i8, ptr %.23570, i32 1
  %229 = add i64 %.31374, 1
  br label %230

230:                                              ; preds = %225, %223
  %.336 = phi ptr [ %228, %225 ], [ %.23570, %223 ]
  %.423 = phi i32 [ 0, %225 ], [ %spec.select2, %223 ]
  %.414 = phi i64 [ %229, %225 ], [ %.31374, %223 ]
  %.9 = phi i64 [ %.49.lcssa, %225 ], [ %.8.lcssa, %223 ]
  %231 = icmp ugt i64 %.21773, 1
  %232 = lshr i64 %.21773, 1
  %233 = getelementptr inbounds nuw i8, ptr %.03171, i32 1
  %.132 = select i1 %231, ptr %.03171, ptr %233
  %.318 = select i1 %231, i64 %232, i64 128
  %234 = icmp ult i64 %.414, %1
  br i1 %234, label %.lr.ph76, label %._crit_edge77, !llvm.loop !23

._crit_edge77:                                    ; preds = %230, %.preheader
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
  br i1 %11, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %4, %39
  %.011 = phi i32 [ %.0, %39 ], [ %3, %4 ]
  %12 = add nsw i32 %.011, %.011
  %13 = icmp slt i32 %12, %2
  br i1 %13, label %14, label %28

14:                                               ; preds = %.lr.ph
  %15 = sub nsw i32 %12, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, ptr %1, i64 %16
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr inbounds nuw i64, ptr %0, i64 %18
  %20 = load i64, ptr %19, align 8
  %21 = sext i32 %12 to i64
  %22 = getelementptr inbounds i64, ptr %1, i64 %21
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds nuw i64, ptr %0, i64 %23
  %25 = load i64, ptr %24, align 8
  %26 = icmp ugt i64 %20, %25
  %27 = add nsw i32 %12, 1
  %spec.select = select i1 %26, i32 %27, i32 %12
  br label %28

28:                                               ; preds = %14, %.lr.ph
  %.0 = phi i32 [ %12, %.lr.ph ], [ %spec.select, %14 ]
  %29 = sext i32 %9 to i64
  %30 = getelementptr inbounds i64, ptr %0, i64 %29
  %31 = load i64, ptr %30, align 8
  %32 = sub nsw i32 %.0, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, ptr %1, i64 %33
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds nuw i64, ptr %0, i64 %35
  %37 = load i64, ptr %36, align 8
  %38 = icmp ult i64 %31, %37
  br i1 %38, label %._crit_edge, label %39

39:                                               ; preds = %28
  %40 = sub nsw i32 %.011, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, ptr %1, i64 %41
  store i64 %35, ptr %42, align 8
  %43 = icmp sle i32 %.0, %10
  br i1 %43, label %.lr.ph, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %39, %28, %4
  %.01.lcssa = phi i32 [ %3, %4 ], [ %.011, %28 ], [ %.0, %39 ]
  %44 = sext i32 %9 to i64
  %45 = sub nsw i32 %.01.lcssa, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, ptr %1, i64 %46
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
  br i1 %3, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %2
  %4 = getelementptr inbounds ptr, ptr %1, i64 1
  br label %7

5:                                                ; preds = %7
  %.01 = phi i32 [ %11, %7 ]
  %6 = icmp slt i32 %.01, %0
  br i1 %6, label %7, label %.loopexit, !llvm.loop !25

7:                                                ; preds = %.preheader, %5
  %.011 = phi i32 [ 1, %.preheader ], [ %.01, %5 ]
  %8 = load ptr, ptr %4, align 8
  %9 = call i32 @strcmp(ptr noundef %8, ptr noundef @.str.4) #7
  %10 = icmp ne i32 %9, 0
  %11 = add nsw i32 %.011, 1
  br i1 %10, label %5, label %.loopexit

.loopexit:                                        ; preds = %7, %5, %2
  %.0 = phi i8 [ 0, %2 ], [ 1, %7 ], [ 0, %5 ]
  %12 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %13

13:                                               ; preds = %.loopexit, %13
  %.122 = phi i32 [ 0, %.loopexit ], [ %14, %13 ]
  call void @compdecomp(ptr noundef %12, i64 noundef 10000000)
  %14 = add nsw i32 %.122, 1
  %15 = icmp slt i32 %14, 30
  br i1 %15, label %13, label %16, !llvm.loop !26

16:                                               ; preds = %13
  call void @free(ptr noundef %12)
  %17 = icmp ne i8 %.0, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = call ptr @__acrt_iob_func(i32 noundef 1)
  %20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.5, double noundef 0.000000e+00) #7
  br label %24

21:                                               ; preds = %16
  %22 = call ptr @__acrt_iob_func(i32 noundef 1)
  %23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.6, double noundef 0.000000e+00) #7
  br label %24

24:                                               ; preds = %21, %18
  %25 = call ptr @__acrt_iob_func(i32 noundef 1)
  %26 = call i32 @fflush(ptr noundef %25)
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
  %13 = load i32, ptr @seed, align 4
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
