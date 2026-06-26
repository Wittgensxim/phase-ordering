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
  br i1 %33, label %.lr.ph20, label %60

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
  %57 = load i64, ptr %4, align 16
  %58 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %57
  store i32 %56, ptr %58, align 4
  store i64 %51, ptr %4, align 16
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %44, i32 noundef 1)
  %59 = icmp ugt i64 %40, 1
  br i1 %59, label %39, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %39
  br label %60

60:                                               ; preds = %._crit_edge, %.preheader4
  %.212.lcssa = phi i64 [ %40, %._crit_edge ], [ %.111, %.preheader4 ]
  %61 = add i64 256, %.212.lcssa
  %62 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %61
  store i32 0, ptr %62, align 4
  br label %63

63:                                               ; preds = %60, %91
  %.03932 = phi i64 [ 0, %60 ], [ %.140, %91 ]
  %.04231 = phi i64 [ 0, %60 ], [ %92, %91 ]
  %.04530 = phi i64 [ 0, %60 ], [ %.146, %91 ]
  %64 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.04231
  %65 = load i64, ptr %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04231
  store i32 0, ptr %68, align 4
  %69 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04231
  store i8 0, ptr %69, align 1
  br label %91

70:                                               ; preds = %63
  %71 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.04231
  %72 = load i32, ptr %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %.lr.ph26, label %84

.lr.ph26:                                         ; preds = %70
  br label %74

74:                                               ; preds = %.lr.ph26, %74
  %.324 = phi i64 [ 0, %.lr.ph26 ], [ %82, %74 ]
  %.0523 = phi i64 [ 1, %.lr.ph26 ], [ %81, %74 ]
  %.03722 = phi i32 [ %72, %.lr.ph26 ], [ %80, %74 ]
  %.04321 = phi i64 [ 0, %.lr.ph26 ], [ %.144, %74 ]
  %75 = icmp slt i32 %.03722, 0
  %76 = add i64 %.04321, %.0523
  %77 = sub nsw i32 0, %.03722
  %.144 = select i1 %75, i64 %76, i64 %.04321
  %.138 = select i1 %75, i32 %77, i32 %.03722
  %78 = sext i32 %.138 to i64
  %79 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %78
  %80 = load i32, ptr %79, align 4
  %81 = shl i64 %.0523, 1
  %82 = add i64 %.324, 1
  %83 = icmp ne i32 %80, 0
  br i1 %83, label %74, label %._crit_edge27, !llvm.loop !13

._crit_edge27:                                    ; preds = %74
  br label %84

84:                                               ; preds = %._crit_edge27, %70
  %.043.lcssa = phi i64 [ %.144, %._crit_edge27 ], [ 0, %70 ]
  %.3.lcssa = phi i64 [ %82, %._crit_edge27 ], [ 0, %70 ]
  %85 = trunc i64 %.043.lcssa to i32
  %86 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04231
  store i32 %85, ptr %86, align 4
  %87 = trunc i64 %.3.lcssa to i8
  %88 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04231
  store i8 %87, ptr %88, align 1
  %89 = icmp ugt i64 %.043.lcssa, %.04530
  %spec.select = select i1 %89, i64 %.043.lcssa, i64 %.04530
  %90 = icmp ugt i64 %.3.lcssa, %.03932
  %.241 = select i1 %90, i64 %.3.lcssa, i64 %.03932
  br label %91

91:                                               ; preds = %84, %67
  %.146 = phi i64 [ %spec.select, %84 ], [ %.04530, %67 ]
  %.140 = phi i64 [ %.241, %84 ], [ %.03932, %67 ]
  %92 = add i64 %.04231, 1
  %93 = icmp ult i64 %92, 256
  br i1 %93, label %63, label %94, !llvm.loop !14

94:                                               ; preds = %91
  %95 = icmp ugt i64 %.140, 32
  br i1 %95, label %96, label %99

96:                                               ; preds = %94
  %97 = call ptr @__acrt_iob_func(i32 noundef 2)
  %98 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %97, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

99:                                               ; preds = %94
  %100 = icmp eq i64 %.146, 0
  br i1 %100, label %101, label %.preheader3

.preheader3:                                      ; preds = %99
  br i1 %12, label %.lr.ph49, label %150

.lr.ph49:                                         ; preds = %.preheader3
  br label %104

101:                                              ; preds = %99
  %102 = call ptr @__acrt_iob_func(i32 noundef 2)
  %103 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %102, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

104:                                              ; preds = %.lr.ph49, %146
  %.0148 = phi i32 [ -1, %.lr.ph49 ], [ %.1.lcssa, %146 ]
  %.1647 = phi i64 [ 0, %.lr.ph49 ], [ %148, %146 ]
  %.02446 = phi i8 [ 0, %.lr.ph49 ], [ %.125.lcssa, %146 ]
  %.02845 = phi i64 [ 0, %.lr.ph49 ], [ %.129.lcssa, %146 ]
  %.13444 = phi ptr [ %0, %.lr.ph49 ], [ %147, %146 ]
  %105 = load i8, ptr %.13444, align 1
  %106 = zext i8 %105 to i64
  %107 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %106
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %108 to i32
  %110 = sub nsw i32 %109, 1
  %111 = shl i32 1, %110
  %112 = sext i32 %111 to i64
  %113 = zext i8 %108 to i64
  %114 = icmp ult i64 0, %113
  br i1 %114, label %.lr.ph39, label %146

.lr.ph39:                                         ; preds = %104
  br label %115

115:                                              ; preds = %.lr.ph39, %129
  %.137 = phi i32 [ %.0148, %.lr.ph39 ], [ %.2, %129 ]
  %.436 = phi i64 [ 0, %.lr.ph39 ], [ %141, %129 ]
  %.01535 = phi i64 [ %112, %.lr.ph39 ], [ %140, %129 ]
  %.12534 = phi i8 [ %.02446, %.lr.ph39 ], [ %.327, %129 ]
  %.12933 = phi i64 [ %.02845, %.lr.ph39 ], [ %.230, %129 ]
  %116 = icmp eq i32 %.137, 7
  br i1 %116, label %117, label %124

117:                                              ; preds = %115
  %118 = getelementptr inbounds nuw i8, ptr %11, i64 %.12933
  store i8 %.12534, ptr %118, align 1
  %119 = add i64 %.12933, 1
  %120 = icmp eq i64 %119, %1
  br i1 %120, label %121, label %129

121:                                              ; preds = %117
  %122 = call ptr @__acrt_iob_func(i32 noundef 2)
  %123 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %122, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

124:                                              ; preds = %115
  %125 = add nsw i32 %.137, 1
  %126 = sext i8 %.12534 to i32
  %127 = shl i32 %126, 1
  %128 = trunc i32 %127 to i8
  br label %129

129:                                              ; preds = %124, %117
  %.230 = phi i64 [ %.12933, %124 ], [ %119, %117 ]
  %.226 = phi i8 [ %128, %124 ], [ 0, %117 ]
  %.2 = phi i32 [ %125, %124 ], [ 0, %117 ]
  %130 = load i8, ptr %.13444, align 1
  %131 = zext i8 %130 to i64
  %132 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %131
  %133 = load i32, ptr %132, align 4
  %134 = zext i32 %133 to i64
  %135 = and i64 %134, %.01535
  %136 = icmp ne i64 %135, 0
  %137 = sext i8 %.226 to i32
  %138 = or i32 %137, 1
  %139 = trunc i32 %138 to i8
  %.327 = select i1 %136, i8 %139, i8 %.226
  %140 = lshr i64 %.01535, 1
  %141 = add i64 %.436, 1
  %142 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %131
  %143 = load i8, ptr %142, align 1
  %144 = zext i8 %143 to i64
  %145 = icmp ult i64 %141, %144
  br i1 %145, label %115, label %._crit_edge40, !llvm.loop !15

._crit_edge40:                                    ; preds = %129
  br label %146

146:                                              ; preds = %._crit_edge40, %104
  %.129.lcssa = phi i64 [ %.230, %._crit_edge40 ], [ %.02845, %104 ]
  %.125.lcssa = phi i8 [ %.327, %._crit_edge40 ], [ %.02446, %104 ]
  %.1.lcssa = phi i32 [ %.2, %._crit_edge40 ], [ %.0148, %104 ]
  %147 = getelementptr inbounds nuw i8, ptr %.13444, i32 1
  %148 = add i64 %.1647, 1
  %149 = icmp ult i64 %148, %1
  br i1 %149, label %104, label %._crit_edge50, !llvm.loop !16

._crit_edge50:                                    ; preds = %146
  br label %150

150:                                              ; preds = %._crit_edge50, %.preheader3
  %.028.lcssa = phi i64 [ %.129.lcssa, %._crit_edge50 ], [ 0, %.preheader3 ]
  %.024.lcssa = phi i8 [ %.125.lcssa, %._crit_edge50 ], [ 0, %.preheader3 ]
  %.01.lcssa = phi i32 [ %.1.lcssa, %._crit_edge50 ], [ -1, %.preheader3 ]
  %151 = sub nsw i32 7, %.01.lcssa
  %152 = sext i8 %.024.lcssa to i32
  %153 = shl i32 %152, %151
  %154 = trunc i32 %153 to i8
  %155 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %154, ptr %155, align 1
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 1024, i1 false)
  br label %156

.preheader2:                                      ; preds = %187
  br label %190

156:                                              ; preds = %150, %187
  %.062 = phi ptr [ %9, %150 ], [ %158, %187 ]
  %.2761 = phi i64 [ 0, %150 ], [ %188, %187 ]
  %157 = trunc i64 %.2761 to i8
  store i8 %157, ptr %.062, align 1
  %158 = getelementptr inbounds nuw i8, ptr %.062, i32 1
  %159 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.2761
  %160 = load i32, ptr %159, align 4
  %161 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2761
  %162 = load i8, ptr %161, align 1
  %163 = zext i8 %162 to i32
  %164 = or i32 %160, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %187

166:                                              ; preds = %156
  %167 = sub nsw i32 %163, 1
  %168 = shl i32 1, %167
  %169 = sext i32 %168 to i64
  %170 = zext i8 %162 to i64
  %171 = icmp ult i64 0, %170
  br i1 %171, label %.lr.ph58, label %185

.lr.ph58:                                         ; preds = %166
  br label %172

172:                                              ; preds = %.lr.ph58, %172
  %.556 = phi i64 [ 0, %.lr.ph58 ], [ %181, %172 ]
  %.11655 = phi i64 [ %169, %.lr.ph58 ], [ %180, %172 ]
  %.01954 = phi i32 [ 0, %.lr.ph58 ], [ %spec.select1, %172 ]
  %173 = mul i32 %.01954, 2
  %174 = add i32 %173, 1
  %175 = load i32, ptr %159, align 4
  %176 = zext i32 %175 to i64
  %177 = and i64 %176, %.11655
  %178 = icmp ne i64 %177, 0
  %179 = add i32 %174, 1
  %spec.select1 = select i1 %178, i32 %179, i32 %174
  %180 = lshr i64 %.11655, 1
  %181 = add i64 %.556, 1
  %182 = load i8, ptr %161, align 1
  %183 = zext i8 %182 to i64
  %184 = icmp ult i64 %181, %183
  br i1 %184, label %172, label %._crit_edge59, !llvm.loop !17

._crit_edge59:                                    ; preds = %172
  br label %185

185:                                              ; preds = %._crit_edge59, %166
  %.019.lcssa = phi i32 [ %spec.select1, %._crit_edge59 ], [ 0, %166 ]
  %186 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.2761
  store i32 %.019.lcssa, ptr %186, align 4
  br label %187

187:                                              ; preds = %185, %156
  %188 = add i64 %.2761, 1
  %189 = icmp ult i64 %188, 256
  br i1 %189, label %156, label %.preheader2, !llvm.loop !18

.preheader1:                                      ; preds = %.critedge
  br label %211

190:                                              ; preds = %.preheader2, %.critedge
  %.669 = phi i64 [ 1, %.preheader2 ], [ %209, %.critedge ]
  %191 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.669
  %192 = load i32, ptr %191, align 4
  %193 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.669
  %194 = load i8, ptr %193, align 1
  br i1 true, label %.lr.ph65, label %.critedge

.lr.ph65:                                         ; preds = %190
  br label %195

195:                                              ; preds = %.lr.ph65, %200
  %.3863 = phi i64 [ %.669, %.lr.ph65 ], [ %205, %200 ]
  %196 = sub i64 %.3863, 1
  %197 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %196
  %198 = load i32, ptr %197, align 4
  %199 = icmp ugt i32 %198, %192
  br i1 %199, label %200, label %..critedge_crit_edge

200:                                              ; preds = %195
  %201 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.3863
  store i32 %198, ptr %201, align 4
  %202 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %196
  %203 = load i8, ptr %202, align 1
  %204 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.3863
  store i8 %203, ptr %204, align 1
  %205 = add i64 %.3863, -1
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %195, label %..critedge_crit_edge67, !llvm.loop !19

..critedge_crit_edge:                             ; preds = %195
  br label %.critedge

..critedge_crit_edge67:                           ; preds = %200
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge67, %..critedge_crit_edge, %190
  %.38.lcssa = phi i64 [ %.3863, %..critedge_crit_edge ], [ %205, %..critedge_crit_edge67 ], [ %.669, %190 ]
  %207 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %192, ptr %207, align 4
  %208 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %194, ptr %208, align 1
  %209 = add i64 %.669, 1
  %210 = icmp ult i64 %209, 256
  br i1 %210, label %190, label %.preheader1, !llvm.loop !20

211:                                              ; preds = %211, %.preheader1
  %.49 = phi i64 [ %215, %211 ], [ 0, %.preheader1 ]
  %212 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %213 = load i32, ptr %212, align 4
  %214 = icmp eq i32 %213, 0
  %215 = add i64 %.49, 1
  br i1 %214, label %211, label %.preheader, !llvm.loop !21

.preheader:                                       ; preds = %211
  br i1 %12, label %.lr.ph76, label %241

.lr.ph76:                                         ; preds = %.preheader
  br label %216

216:                                              ; preds = %.lr.ph76, %236
  %.775 = phi i64 [ %.49, %.lr.ph76 ], [ %.9, %236 ]
  %.31374 = phi i64 [ 0, %.lr.ph76 ], [ %.414, %236 ]
  %.21773 = phi i64 [ 128, %.lr.ph76 ], [ %.318, %236 ]
  %.22172 = phi i32 [ 0, %.lr.ph76 ], [ %.423, %236 ]
  %.03171 = phi ptr [ %11, %.lr.ph76 ], [ %.132, %236 ]
  %.23570 = phi ptr [ %0, %.lr.ph76 ], [ %.336, %236 ]
  %217 = mul i32 %.22172, 2
  %218 = add i32 %217, 1
  %219 = load i8, ptr %.03171, align 1
  %220 = zext i8 %219 to i64
  %221 = and i64 %220, %.21773
  %222 = icmp ne i64 %221, 0
  %223 = add i32 %218, 1
  %spec.select2 = select i1 %222, i32 %223, i32 %218
  br label %224

224:                                              ; preds = %224, %216
  %.8 = phi i64 [ %.775, %216 ], [ %228, %224 ]
  %225 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %226 = load i32, ptr %225, align 4
  %227 = icmp ult i32 %226, %spec.select2
  %228 = add i64 %.8, 1
  br i1 %227, label %224, label %229, !llvm.loop !22

229:                                              ; preds = %224
  %230 = icmp eq i32 %spec.select2, %226
  br i1 %230, label %231, label %236

231:                                              ; preds = %229
  %232 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8
  %233 = load i8, ptr %232, align 1
  store i8 %233, ptr %.23570, align 1
  %234 = getelementptr inbounds nuw i8, ptr %.23570, i32 1
  %235 = add i64 %.31374, 1
  br label %236

236:                                              ; preds = %231, %229
  %.336 = phi ptr [ %234, %231 ], [ %.23570, %229 ]
  %.423 = phi i32 [ 0, %231 ], [ %spec.select2, %229 ]
  %.414 = phi i64 [ %235, %231 ], [ %.31374, %229 ]
  %.9 = phi i64 [ %.49, %231 ], [ %.8, %229 ]
  %237 = icmp ugt i64 %.21773, 1
  %238 = lshr i64 %.21773, 1
  %239 = getelementptr inbounds nuw i8, ptr %.03171, i32 1
  %.132 = select i1 %237, ptr %.03171, ptr %239
  %.318 = select i1 %237, i64 %238, i64 128
  %240 = icmp ult i64 %.414, %1
  br i1 %240, label %216, label %._crit_edge77, !llvm.loop !23

._crit_edge77:                                    ; preds = %236
  br label %241

241:                                              ; preds = %._crit_edge77, %.preheader
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
  br i1 %11, label %.lr.ph, label %45

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
  br label %45

._crit_edge2:                                     ; preds = %40
  br label %45

45:                                               ; preds = %._crit_edge2, %._crit_edge, %4
  %.01.lcssa = phi i32 [ %.011, %._crit_edge ], [ %.0, %._crit_edge2 ], [ %3, %4 ]
  %46 = sext i32 %9 to i64
  %47 = sub nsw i32 %.01.lcssa, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, ptr %1, i64 %48
  store i64 %46, ptr %49, align 8
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
