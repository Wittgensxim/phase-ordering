; ModuleID = 'results\paper_full\CoyoteBench_huffbench\round_000\output.ll'
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
  br i1 %12, label %.lr.ph, label %22

.lr.ph:                                           ; preds = %2
  br label %13

13:                                               ; preds = %.lr.ph, %13
  %.0210 = phi i64 [ 0, %.lr.ph ], [ %20, %13 ]
  %.0339 = phi ptr [ %0, %.lr.ph ], [ %19, %13 ]
  %14 = load i8, ptr %.0339, align 1
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %15
  %17 = load i64, ptr %16, align 8
  %18 = add i64 %17, 1
  store i64 %18, ptr %16, align 8
  %19 = getelementptr inbounds nuw i8, ptr %.0339, i32 1
  %20 = add i64 %.0210, 1
  %21 = icmp ult i64 %20, %1
  br i1 %21, label %13, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %13
  br label %22

22:                                               ; preds = %._crit_edge, %2
  br label %23

23:                                               ; preds = %22, %30
  %.1312 = phi i64 [ 0, %22 ], [ %31, %30 ]
  %.01011 = phi i64 [ 0, %22 ], [ %.111, %30 ]
  %24 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.1312
  %25 = load i64, ptr %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.01011
  store i64 %.1312, ptr %28, align 8
  %29 = add i64 %.01011, 1
  br label %30

30:                                               ; preds = %27, %23
  %.111 = phi i64 [ %29, %27 ], [ %.01011, %23 ]
  %31 = add i64 %.1312, 1
  %32 = icmp ult i64 %31, 256
  br i1 %32, label %23, label %33, !llvm.loop !10

33:                                               ; preds = %30
  %.010.lcssa = phi i64 [ %.111, %30 ]
  %34 = icmp ugt i64 %.010.lcssa, 0
  br i1 %34, label %.lr.ph15, label %40

.lr.ph15:                                         ; preds = %33
  br label %35

35:                                               ; preds = %.lr.ph15, %35
  %.2413 = phi i64 [ %.010.lcssa, %.lr.ph15 ], [ %38, %35 ]
  %36 = trunc i64 %.010.lcssa to i32
  %37 = trunc i64 %.2413 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %36, i32 noundef %37)
  %38 = add i64 %.2413, -1
  %39 = icmp ugt i64 %38, 0
  br i1 %39, label %35, label %._crit_edge16, !llvm.loop !11

._crit_edge16:                                    ; preds = %35
  br label %40

40:                                               ; preds = %._crit_edge16, %33
  %41 = icmp ugt i64 %.010.lcssa, 1
  br i1 %41, label %.lr.ph19, label %62

.lr.ph19:                                         ; preds = %40
  br label %42

42:                                               ; preds = %.lr.ph19, %42
  %.21217 = phi i64 [ %.010.lcssa, %.lr.ph19 ], [ %43, %42 ]
  %43 = add i64 %.21217, -1
  %44 = load i64, ptr %4, align 16
  %45 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %43
  %46 = load i64, ptr %45, align 8
  store i64 %46, ptr %4, align 16
  %47 = trunc i64 %43 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %47, i32 noundef 1)
  %48 = load i64, ptr %4, align 16
  %49 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %48
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %44
  %52 = load i64, ptr %51, align 8
  %53 = add i64 %50, %52
  %54 = add i64 256, %43
  %55 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %54
  store i64 %53, ptr %55, align 8
  %56 = trunc i64 %54 to i32
  %57 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %44
  store i32 %56, ptr %57, align 4
  %58 = sub i64 -256, %43
  %59 = trunc i64 %58 to i32
  %60 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %48
  store i32 %59, ptr %60, align 4
  store i64 %54, ptr %4, align 16
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %47, i32 noundef 1)
  %61 = icmp ugt i64 %43, 1
  br i1 %61, label %42, label %._crit_edge20, !llvm.loop !12

._crit_edge20:                                    ; preds = %42
  %split = phi i64 [ %43, %42 ]
  br label %62

62:                                               ; preds = %._crit_edge20, %40
  %.212.lcssa = phi i64 [ %split, %._crit_edge20 ], [ %.010.lcssa, %40 ]
  %63 = add i64 256, %.212.lcssa
  %64 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %63
  store i32 0, ptr %64, align 4
  br label %65

65:                                               ; preds = %62, %99
  %.03932 = phi i64 [ 0, %62 ], [ %.140, %99 ]
  %.04231 = phi i64 [ 0, %62 ], [ %100, %99 ]
  %.04530 = phi i64 [ 0, %62 ], [ %.146, %99 ]
  %66 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.04231
  %67 = load i64, ptr %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04231
  store i32 0, ptr %70, align 4
  %71 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04231
  store i8 0, ptr %71, align 1
  br label %99

72:                                               ; preds = %65
  %73 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.04231
  %74 = load i32, ptr %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %.lr.ph26, label %88

.lr.ph26:                                         ; preds = %72
  br label %76

76:                                               ; preds = %.lr.ph26, %81
  %.324 = phi i64 [ 0, %.lr.ph26 ], [ %86, %81 ]
  %.0523 = phi i64 [ 1, %.lr.ph26 ], [ %85, %81 ]
  %.03722 = phi i32 [ %74, %.lr.ph26 ], [ %84, %81 ]
  %.04321 = phi i64 [ 0, %.lr.ph26 ], [ %.144, %81 ]
  %77 = icmp slt i32 %.03722, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %76
  %79 = add i64 %.04321, %.0523
  %80 = sub nsw i32 0, %.03722
  br label %81

81:                                               ; preds = %78, %76
  %.144 = phi i64 [ %79, %78 ], [ %.04321, %76 ]
  %.138 = phi i32 [ %80, %78 ], [ %.03722, %76 ]
  %82 = sext i32 %.138 to i64
  %83 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %82
  %84 = load i32, ptr %83, align 4
  %85 = shl i64 %.0523, 1
  %86 = add i64 %.324, 1
  %87 = icmp ne i32 %84, 0
  br i1 %87, label %76, label %._crit_edge27, !llvm.loop !13

._crit_edge27:                                    ; preds = %81
  %split28 = phi i64 [ %.144, %81 ]
  %split29 = phi i64 [ %86, %81 ]
  br label %88

88:                                               ; preds = %._crit_edge27, %72
  %.043.lcssa = phi i64 [ %split28, %._crit_edge27 ], [ 0, %72 ]
  %.3.lcssa = phi i64 [ %split29, %._crit_edge27 ], [ 0, %72 ]
  %89 = trunc i64 %.043.lcssa to i32
  %90 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04231
  store i32 %89, ptr %90, align 4
  %91 = trunc i64 %.3.lcssa to i8
  %92 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04231
  store i8 %91, ptr %92, align 1
  %93 = icmp ugt i64 %.043.lcssa, %.04530
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %95

95:                                               ; preds = %94, %88
  %.247 = phi i64 [ %.043.lcssa, %94 ], [ %.04530, %88 ]
  %96 = icmp ugt i64 %.3.lcssa, %.03932
  br i1 %96, label %97, label %98

97:                                               ; preds = %95
  br label %98

98:                                               ; preds = %97, %95
  %.241 = phi i64 [ %.3.lcssa, %97 ], [ %.03932, %95 ]
  br label %99

99:                                               ; preds = %98, %69
  %.146 = phi i64 [ %.247, %98 ], [ %.04530, %69 ]
  %.140 = phi i64 [ %.241, %98 ], [ %.03932, %69 ]
  %100 = add i64 %.04231, 1
  %101 = icmp ult i64 %100, 256
  br i1 %101, label %65, label %102, !llvm.loop !14

102:                                              ; preds = %99
  %.045.lcssa = phi i64 [ %.146, %99 ]
  %.039.lcssa = phi i64 [ %.140, %99 ]
  %103 = icmp ugt i64 %.039.lcssa, 32
  br i1 %103, label %104, label %107

104:                                              ; preds = %102
  %105 = call ptr @__acrt_iob_func(i32 noundef 2)
  %106 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %105, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

107:                                              ; preds = %102
  %108 = icmp eq i64 %.045.lcssa, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %107
  %110 = call ptr @__acrt_iob_func(i32 noundef 2)
  %111 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

112:                                              ; preds = %107
  %113 = icmp ult i64 0, %1
  br i1 %113, label %.lr.ph50, label %166

.lr.ph50:                                         ; preds = %112
  br label %114

114:                                              ; preds = %.lr.ph50, %162
  %.0148 = phi i32 [ -1, %.lr.ph50 ], [ %.1.lcssa, %162 ]
  %.1647 = phi i64 [ 0, %.lr.ph50 ], [ %164, %162 ]
  %.02446 = phi i8 [ 0, %.lr.ph50 ], [ %.125.lcssa, %162 ]
  %.02845 = phi i64 [ 0, %.lr.ph50 ], [ %.129.lcssa, %162 ]
  %.13444 = phi ptr [ %0, %.lr.ph50 ], [ %163, %162 ]
  %115 = load i8, ptr %.13444, align 1
  %116 = zext i8 %115 to i64
  %117 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %116
  %118 = load i8, ptr %117, align 1
  %119 = zext i8 %118 to i32
  %120 = sub nsw i32 %119, 1
  %121 = shl i32 1, %120
  %122 = sext i32 %121 to i64
  %123 = zext i8 %115 to i64
  %124 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %123
  %125 = zext i8 %118 to i64
  %126 = icmp ult i64 0, %125
  br i1 %126, label %.lr.ph39, label %162

.lr.ph39:                                         ; preds = %114
  br label %127

127:                                              ; preds = %.lr.ph39, %155
  %128 = phi i64 [ %123, %.lr.ph39 ], [ %158, %155 ]
  %.137 = phi i32 [ %.0148, %.lr.ph39 ], [ %.2, %155 ]
  %.436 = phi i64 [ 0, %.lr.ph39 ], [ %157, %155 ]
  %.01535 = phi i64 [ %122, %.lr.ph39 ], [ %156, %155 ]
  %.12534 = phi i8 [ %.02446, %.lr.ph39 ], [ %.327, %155 ]
  %.12933 = phi i64 [ %.02845, %.lr.ph39 ], [ %.230, %155 ]
  %129 = phi i8 [ %115, %.lr.ph39 ], [ %145, %155 ]
  %130 = icmp eq i32 %.137, 7
  br i1 %130, label %131, label %139

131:                                              ; preds = %127
  %132 = getelementptr inbounds nuw i8, ptr %11, i64 %.12933
  store i8 %.12534, ptr %132, align 1
  %133 = add i64 %.12933, 1
  %134 = icmp eq i64 %133, %1
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = call ptr @__acrt_iob_func(i32 noundef 2)
  %137 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %136, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

138:                                              ; preds = %131
  %.pre1 = load i8, ptr %.13444, align 1
  %.pre2 = zext i8 %.pre1 to i64
  br label %144

139:                                              ; preds = %127
  %140 = add nsw i32 %.137, 1
  %141 = sext i8 %.12534 to i32
  %142 = shl i32 %141, 1
  %143 = trunc i32 %142 to i8
  br label %144

144:                                              ; preds = %139, %138
  %.pre-phi = phi i64 [ %128, %139 ], [ %.pre2, %138 ]
  %145 = phi i8 [ %.pre1, %138 ], [ %129, %139 ]
  %.230 = phi i64 [ %133, %138 ], [ %.12933, %139 ]
  %.226 = phi i8 [ 0, %138 ], [ %143, %139 ]
  %.2 = phi i32 [ 0, %138 ], [ %140, %139 ]
  %146 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.pre-phi
  %147 = load i32, ptr %146, align 4
  %148 = zext i32 %147 to i64
  %149 = and i64 %148, %.01535
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %144
  %152 = sext i8 %.226 to i32
  %153 = or i32 %152, 1
  %154 = trunc i32 %153 to i8
  br label %155

155:                                              ; preds = %151, %144
  %.327 = phi i8 [ %154, %151 ], [ %.226, %144 ]
  %156 = lshr i64 %.01535, 1
  %157 = add i64 %.436, 1
  %.phi.trans.insert = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  %158 = zext i8 %145 to i64
  %159 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %158
  %160 = zext i8 %.pre to i64
  %161 = icmp ult i64 %157, %160
  br i1 %161, label %127, label %._crit_edge40, !llvm.loop !15

._crit_edge40:                                    ; preds = %155
  %split41 = phi i64 [ %.230, %155 ]
  %split42 = phi i8 [ %.327, %155 ]
  %split43 = phi i32 [ %.2, %155 ]
  br label %162

162:                                              ; preds = %._crit_edge40, %114
  %.129.lcssa = phi i64 [ %split41, %._crit_edge40 ], [ %.02845, %114 ]
  %.125.lcssa = phi i8 [ %split42, %._crit_edge40 ], [ %.02446, %114 ]
  %.1.lcssa = phi i32 [ %split43, %._crit_edge40 ], [ %.0148, %114 ]
  %163 = getelementptr inbounds nuw i8, ptr %.13444, i32 1
  %164 = add i64 %.1647, 1
  %165 = icmp ult i64 %164, %1
  br i1 %165, label %114, label %._crit_edge51, !llvm.loop !16

._crit_edge51:                                    ; preds = %162
  %split52 = phi i64 [ %.129.lcssa, %162 ]
  %split53 = phi i8 [ %.125.lcssa, %162 ]
  %split54 = phi i32 [ %.1.lcssa, %162 ]
  br label %166

166:                                              ; preds = %._crit_edge51, %112
  %.028.lcssa = phi i64 [ %split52, %._crit_edge51 ], [ 0, %112 ]
  %.024.lcssa = phi i8 [ %split53, %._crit_edge51 ], [ 0, %112 ]
  %.01.lcssa = phi i32 [ %split54, %._crit_edge51 ], [ -1, %112 ]
  %167 = sub nsw i32 7, %.01.lcssa
  %168 = sext i8 %.024.lcssa to i32
  %169 = shl i32 %168, %167
  %170 = trunc i32 %169 to i8
  %171 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %170, ptr %171, align 1
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 1024, i1 false)
  br label %172

172:                                              ; preds = %166, %202
  %.063 = phi ptr [ %9, %166 ], [ %174, %202 ]
  %.2762 = phi i64 [ 0, %166 ], [ %203, %202 ]
  %173 = trunc i64 %.2762 to i8
  store i8 %173, ptr %.063, align 1
  %174 = getelementptr inbounds nuw i8, ptr %.063, i32 1
  %175 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.2762
  %176 = load i32, ptr %175, align 4
  %177 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2762
  %178 = load i8, ptr %177, align 1
  %179 = zext i8 %178 to i32
  %180 = or i32 %176, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %202

182:                                              ; preds = %172
  %183 = sub nsw i32 %179, 1
  %184 = shl i32 1, %183
  %185 = sext i32 %184 to i64
  %186 = zext i8 %178 to i64
  %187 = icmp ult i64 0, %186
  br i1 %187, label %.lr.ph59, label %200

.lr.ph59:                                         ; preds = %182
  br label %188

188:                                              ; preds = %.lr.ph59, %196
  %.557 = phi i64 [ 0, %.lr.ph59 ], [ %198, %196 ]
  %.11656 = phi i64 [ %185, %.lr.ph59 ], [ %197, %196 ]
  %.01955 = phi i32 [ 0, %.lr.ph59 ], [ %.120, %196 ]
  %189 = mul i32 %.01955, 2
  %190 = add i32 %189, 1
  %191 = zext i32 %176 to i64
  %192 = and i64 %191, %.11656
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %188
  %195 = add i32 %190, 1
  br label %196

196:                                              ; preds = %194, %188
  %.120 = phi i32 [ %195, %194 ], [ %190, %188 ]
  %197 = lshr i64 %.11656, 1
  %198 = add i64 %.557, 1
  %199 = icmp ult i64 %198, %186
  br i1 %199, label %188, label %._crit_edge60, !llvm.loop !17

._crit_edge60:                                    ; preds = %196
  %split61 = phi i32 [ %.120, %196 ]
  br label %200

200:                                              ; preds = %._crit_edge60, %182
  %.019.lcssa = phi i32 [ %split61, %._crit_edge60 ], [ 0, %182 ]
  %201 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.2762
  store i32 %.019.lcssa, ptr %201, align 4
  br label %202

202:                                              ; preds = %200, %172
  %203 = add i64 %.2762, 1
  %204 = icmp ult i64 %203, 256
  br i1 %204, label %172, label %205, !llvm.loop !18

205:                                              ; preds = %202
  br label %206

206:                                              ; preds = %205, %229
  %.664 = phi i64 [ 1, %205 ], [ %232, %229 ]
  %207 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.664
  %208 = load i32, ptr %207, align 4
  %209 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.664
  %210 = load i8, ptr %209, align 1
  br label %211

211:                                              ; preds = %220, %206
  %.38 = phi i64 [ %.664, %206 ], [ %228, %220 ]
  %212 = icmp ne i64 %.38, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %211
  %214 = sub i64 %.38, 1
  %215 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %214
  %216 = load i32, ptr %215, align 4
  %217 = icmp ugt i32 %216, %208
  br label %218

218:                                              ; preds = %213, %211
  %219 = phi i1 [ false, %211 ], [ %217, %213 ]
  br i1 %219, label %220, label %229

220:                                              ; preds = %218
  %221 = sub i64 %.38, 1
  %222 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %221
  %223 = load i32, ptr %222, align 4
  %224 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %223, ptr %224, align 4
  %225 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %221
  %226 = load i8, ptr %225, align 1
  %227 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %226, ptr %227, align 1
  %228 = add i64 %.38, -1
  br label %211, !llvm.loop !19

229:                                              ; preds = %218
  %.38.lcssa = phi i64 [ %.38, %218 ]
  %230 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %208, ptr %230, align 4
  %231 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %210, ptr %231, align 1
  %232 = add i64 %.664, 1
  %233 = icmp ult i64 %232, 256
  br i1 %233, label %206, label %234, !llvm.loop !20

234:                                              ; preds = %229
  br label %235

235:                                              ; preds = %235, %234
  %.49 = phi i64 [ 0, %234 ], [ %239, %235 ]
  %236 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %237 = load i32, ptr %236, align 4
  %238 = icmp eq i32 %237, 0
  %239 = add i64 %.49, 1
  br i1 %238, label %235, label %240, !llvm.loop !21

240:                                              ; preds = %235
  %.49.lcssa = phi i64 [ %.49, %235 ]
  %241 = icmp ult i64 0, %1
  br i1 %241, label %.lr.ph72, label %272

.lr.ph72:                                         ; preds = %240
  br label %242

242:                                              ; preds = %.lr.ph72, %270
  %.770 = phi i64 [ %.49.lcssa, %.lr.ph72 ], [ %.9, %270 ]
  %.31369 = phi i64 [ 0, %.lr.ph72 ], [ %.414, %270 ]
  %.21768 = phi i64 [ 128, %.lr.ph72 ], [ %.318, %270 ]
  %.22167 = phi i32 [ 0, %.lr.ph72 ], [ %.423, %270 ]
  %.03166 = phi ptr [ %11, %.lr.ph72 ], [ %.132, %270 ]
  %.23565 = phi ptr [ %0, %.lr.ph72 ], [ %.336, %270 ]
  %243 = mul i32 %.22167, 2
  %244 = add i32 %243, 1
  %245 = load i8, ptr %.03166, align 1
  %246 = zext i8 %245 to i64
  %247 = and i64 %246, %.21768
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %242
  %250 = add i32 %244, 1
  br label %251

251:                                              ; preds = %249, %242
  %.322 = phi i32 [ %250, %249 ], [ %244, %242 ]
  br label %252

252:                                              ; preds = %252, %251
  %.8 = phi i64 [ %.770, %251 ], [ %256, %252 ]
  %253 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %254 = load i32, ptr %253, align 4
  %255 = icmp ult i32 %254, %.322
  %256 = add i64 %.8, 1
  br i1 %255, label %252, label %257, !llvm.loop !22

257:                                              ; preds = %252
  %.8.lcssa = phi i64 [ %.8, %252 ]
  %.lcssa = phi i32 [ %254, %252 ]
  %258 = icmp eq i32 %.322, %.lcssa
  br i1 %258, label %259, label %264

259:                                              ; preds = %257
  %260 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %261 = load i8, ptr %260, align 1
  store i8 %261, ptr %.23565, align 1
  %262 = getelementptr inbounds nuw i8, ptr %.23565, i32 1
  %263 = add i64 %.31369, 1
  br label %264

264:                                              ; preds = %259, %257
  %.336 = phi ptr [ %262, %259 ], [ %.23565, %257 ]
  %.423 = phi i32 [ 0, %259 ], [ %.322, %257 ]
  %.414 = phi i64 [ %263, %259 ], [ %.31369, %257 ]
  %.9 = phi i64 [ %.49.lcssa, %259 ], [ %.8.lcssa, %257 ]
  %265 = icmp ugt i64 %.21768, 1
  br i1 %265, label %266, label %268

266:                                              ; preds = %264
  %267 = lshr i64 %.21768, 1
  br label %270

268:                                              ; preds = %264
  %269 = getelementptr inbounds nuw i8, ptr %.03166, i32 1
  br label %270

270:                                              ; preds = %268, %266
  %.132 = phi ptr [ %.03166, %266 ], [ %269, %268 ]
  %.318 = phi i64 [ %267, %266 ], [ 128, %268 ]
  %271 = icmp ult i64 %.414, %1
  br i1 %271, label %242, label %._crit_edge73, !llvm.loop !23

._crit_edge73:                                    ; preds = %270
  br label %272

272:                                              ; preds = %._crit_edge73, %240
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

.lr.ph:                                           ; preds = %4
  br label %12

.._crit_edge_crit_edge:                           ; preds = %42
  %split = phi i32 [ %.0, %42 ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %4
  %.01.lcssa = phi i32 [ %split, %.._crit_edge_crit_edge ], [ %3, %4 ]
  %.pre = sext i32 %9 to i64
  br label %47

12:                                               ; preds = %.lr.ph, %42
  %.013 = phi i32 [ %3, %.lr.ph ], [ %.0, %42 ]
  %13 = add nsw i32 %.013, %.013
  %14 = icmp slt i32 %13, %2
  br i1 %14, label %15, label %30

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
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = add nsw i32 %13, 1
  br label %30

30:                                               ; preds = %28, %15, %12
  %.0 = phi i32 [ %29, %28 ], [ %13, %15 ], [ %13, %12 ]
  %31 = sext i32 %9 to i64
  %32 = getelementptr inbounds i64, ptr %0, i64 %31
  %33 = load i64, ptr %32, align 8
  %34 = sub nsw i32 %.0, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, ptr %1, i64 %35
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds nuw i64, ptr %0, i64 %37
  %39 = load i64, ptr %38, align 8
  %40 = icmp ult i64 %33, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  %.lcssa = phi i64 [ %31, %30 ]
  %.01.lcssa1 = phi i32 [ %.013, %30 ]
  br label %47

42:                                               ; preds = %30
  %43 = sub nsw i32 %.013, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, ptr %1, i64 %44
  store i64 %37, ptr %45, align 8
  %46 = icmp sle i32 %.0, %10
  br i1 %46, label %12, label %.._crit_edge_crit_edge, !llvm.loop !24

47:                                               ; preds = %._crit_edge, %41
  %.012 = phi i32 [ %.01.lcssa, %._crit_edge ], [ %.01.lcssa1, %41 ]
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %.lcssa, %41 ]
  %48 = sub nsw i32 %.012, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, ptr %1, i64 %49
  store i64 %.pre-phi, ptr %50, align 8
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
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  br label %7

5:                                                ; preds = %7
  %.01 = phi i32 [ %12, %7 ]
  %6 = icmp slt i32 %.01, %0
  br i1 %6, label %7, label %.loopexit, !llvm.loop !25

7:                                                ; preds = %4, %5
  %.011 = phi i32 [ 1, %4 ], [ %.01, %5 ]
  %8 = getelementptr inbounds ptr, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8
  %10 = call i32 @strcmp(ptr noundef %9, ptr noundef @.str.4) #7
  %11 = icmp ne i32 %10, 0
  %12 = add nsw i32 %.011, 1
  br i1 %11, label %5, label %13

13:                                               ; preds = %7
  br label %14

.loopexit:                                        ; preds = %5
  br label %14

14:                                               ; preds = %.loopexit, %13
  %.1 = phi i8 [ 1, %13 ], [ 0, %.loopexit ]
  br label %15

15:                                               ; preds = %14, %2
  %.0 = phi i8 [ %.1, %14 ], [ 0, %2 ]
  %16 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %17

17:                                               ; preds = %15, %17
  %.122 = phi i32 [ 0, %15 ], [ %18, %17 ]
  call void @compdecomp(ptr noundef %16, i64 noundef 10000000)
  %18 = add nsw i32 %.122, 1
  %19 = icmp slt i32 %18, 30
  br i1 %19, label %17, label %20, !llvm.loop !26

20:                                               ; preds = %17
  call void @free(ptr noundef %16)
  %21 = icmp ne i8 %.0, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = call ptr @__acrt_iob_func(i32 noundef 1)
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.5, double noundef 0.000000e+00) #7
  br label %28

25:                                               ; preds = %20
  %26 = call ptr @__acrt_iob_func(i32 noundef 1)
  %27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str.6, double noundef 0.000000e+00) #7
  br label %28

28:                                               ; preds = %25, %22
  %29 = call ptr @__acrt_iob_func(i32 noundef 1)
  %30 = call i32 @fflush(ptr noundef %29)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

declare dso_local i32 @fflush(ptr noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal i64 @random4() #0 {
  %1 = load i32, ptr @seed, align 4
  %2 = xor i32 %1, 123459876
  store i32 %2, ptr @seed, align 4
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
