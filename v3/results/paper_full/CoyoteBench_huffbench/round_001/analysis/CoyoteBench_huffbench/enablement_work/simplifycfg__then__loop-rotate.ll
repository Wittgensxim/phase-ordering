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
  %12 = add i64 %1, 1
  %13 = mul i64 1, %12
  call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %13, i1 false)
  %14 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %14, i8 0, i64 4096, i1 false)
  %15 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %15, i8 0, i64 2048, i1 false)
  %16 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %16, i8 0, i64 2048, i1 false)
  %17 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %17, i8 0, i64 1024, i1 false)
  %18 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %18, i8 0, i64 256, i1 false)
  %19 = icmp ult i64 0, %1
  br i1 %19, label %.lr.ph, label %.preheader8

.lr.ph:                                           ; preds = %2
  br label %20

..preheader8_crit_edge:                           ; preds = %20
  br label %.preheader8

.preheader8:                                      ; preds = %..preheader8_crit_edge, %2
  br label %30

20:                                               ; preds = %.lr.ph, %20
  %.0216 = phi i64 [ 0, %.lr.ph ], [ %27, %20 ]
  %.03315 = phi ptr [ %0, %.lr.ph ], [ %26, %20 ]
  %21 = load i8, ptr %.03315, align 1
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %22
  %24 = load i64, ptr %23, align 8
  %25 = add i64 %24, 1
  store i64 %25, ptr %23, align 8
  %26 = getelementptr inbounds nuw i8, ptr %.03315, i32 1
  %27 = add i64 %.0216, 1
  %28 = icmp ult i64 %27, %1
  br i1 %28, label %20, label %..preheader8_crit_edge, !llvm.loop !9

.preheader7:                                      ; preds = %37
  %.010.lcssa = phi i64 [ %.111, %37 ]
  %29 = icmp ugt i64 %.010.lcssa, 0
  br i1 %29, label %.lr.ph20, label %.preheader6

.lr.ph20:                                         ; preds = %.preheader7
  br label %41

30:                                               ; preds = %.preheader8, %37
  %.1318 = phi i64 [ 0, %.preheader8 ], [ %38, %37 ]
  %.01017 = phi i64 [ 0, %.preheader8 ], [ %.111, %37 ]
  %31 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.1318
  %32 = load i64, ptr %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.01017
  store i64 %.1318, ptr %35, align 8
  %36 = add i64 %.01017, 1
  br label %37

37:                                               ; preds = %30, %34
  %.111 = phi i64 [ %36, %34 ], [ %.01017, %30 ]
  %38 = add i64 %.1318, 1
  %39 = icmp ult i64 %38, 256
  br i1 %39, label %30, label %.preheader7, !llvm.loop !10

..preheader6_crit_edge:                           ; preds = %41
  br label %.preheader6

.preheader6:                                      ; preds = %..preheader6_crit_edge, %.preheader7
  %40 = icmp ugt i64 %.010.lcssa, 1
  br i1 %40, label %.lr.ph22, label %81

.lr.ph22:                                         ; preds = %.preheader6
  br label %48

41:                                               ; preds = %.lr.ph20, %41
  %.2419 = phi i64 [ %.010.lcssa, %.lr.ph20 ], [ %46, %41 ]
  %42 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %43 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %44 = trunc i64 %.010.lcssa to i32
  %45 = trunc i64 %.2419 to i32
  call void @heap_adjust(ptr noundef %42, ptr noundef %43, i32 noundef %44, i32 noundef %45)
  %46 = add i64 %.2419, -1
  %47 = icmp ugt i64 %46, 0
  br i1 %47, label %41, label %..preheader6_crit_edge, !llvm.loop !11

48:                                               ; preds = %.lr.ph22, %48
  %.21221 = phi i64 [ %.010.lcssa, %.lr.ph22 ], [ %49, %48 ]
  %49 = add i64 %.21221, -1
  %50 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %51 = load i64, ptr %50, align 16
  %52 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %49
  %53 = load i64, ptr %52, align 8
  %54 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %53, ptr %54, align 16
  %55 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %56 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %57 = trunc i64 %49 to i32
  call void @heap_adjust(ptr noundef %55, ptr noundef %56, i32 noundef %57, i32 noundef 1)
  %58 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %59 = load i64, ptr %58, align 16
  %60 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %59
  %61 = load i64, ptr %60, align 8
  %62 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %51
  %63 = load i64, ptr %62, align 8
  %64 = add i64 %61, %63
  %65 = add i64 256, %49
  %66 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %65
  store i64 %64, ptr %66, align 8
  %67 = add i64 256, %49
  %68 = trunc i64 %67 to i32
  %69 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %51
  store i32 %68, ptr %69, align 4
  %70 = sub i64 -256, %49
  %71 = trunc i64 %70 to i32
  %72 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %73 = load i64, ptr %72, align 16
  %74 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %73
  store i32 %71, ptr %74, align 4
  %75 = add i64 256, %49
  %76 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %75, ptr %76, align 16
  %77 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %78 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %79 = trunc i64 %49 to i32
  call void @heap_adjust(ptr noundef %77, ptr noundef %78, i32 noundef %79, i32 noundef 1)
  %80 = icmp ugt i64 %49, 1
  br i1 %80, label %48, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %48
  %split = phi i64 [ %49, %48 ]
  br label %81

81:                                               ; preds = %._crit_edge, %.preheader6
  %.212.lcssa = phi i64 [ %split, %._crit_edge ], [ %.010.lcssa, %.preheader6 ]
  %82 = add i64 256, %.212.lcssa
  %83 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %82
  store i32 0, ptr %83, align 4
  br label %84

84:                                               ; preds = %81, %112
  %.03934 = phi i64 [ 0, %81 ], [ %.140, %112 ]
  %.04233 = phi i64 [ 0, %81 ], [ %113, %112 ]
  %.04532 = phi i64 [ 0, %81 ], [ %.146, %112 ]
  %85 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.04233
  %86 = load i64, ptr %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04233
  store i32 0, ptr %89, align 4
  %90 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04233
  store i8 0, ptr %90, align 1
  br label %112

91:                                               ; preds = %84
  %92 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.04233
  %93 = load i32, ptr %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %.lr.ph28, label %105

.lr.ph28:                                         ; preds = %91
  br label %95

95:                                               ; preds = %.lr.ph28, %95
  %.326 = phi i64 [ 0, %.lr.ph28 ], [ %103, %95 ]
  %.0525 = phi i64 [ 1, %.lr.ph28 ], [ %102, %95 ]
  %.03724 = phi i32 [ %93, %.lr.ph28 ], [ %101, %95 ]
  %.04323 = phi i64 [ 0, %.lr.ph28 ], [ %.144, %95 ]
  %96 = icmp slt i32 %.03724, 0
  %97 = add i64 %.04323, %.0525
  %98 = sub nsw i32 0, %.03724
  %.144 = select i1 %96, i64 %97, i64 %.04323
  %.138 = select i1 %96, i32 %98, i32 %.03724
  %99 = sext i32 %.138 to i64
  %100 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %99
  %101 = load i32, ptr %100, align 4
  %102 = shl i64 %.0525, 1
  %103 = add i64 %.326, 1
  %104 = icmp ne i32 %101, 0
  br i1 %104, label %95, label %._crit_edge29, !llvm.loop !13

._crit_edge29:                                    ; preds = %95
  %split30 = phi i64 [ %.144, %95 ]
  %split31 = phi i64 [ %103, %95 ]
  br label %105

105:                                              ; preds = %._crit_edge29, %91
  %.043.lcssa = phi i64 [ %split30, %._crit_edge29 ], [ 0, %91 ]
  %.3.lcssa = phi i64 [ %split31, %._crit_edge29 ], [ 0, %91 ]
  %106 = trunc i64 %.043.lcssa to i32
  %107 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04233
  store i32 %106, ptr %107, align 4
  %108 = trunc i64 %.3.lcssa to i8
  %109 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04233
  store i8 %108, ptr %109, align 1
  %110 = icmp ugt i64 %.043.lcssa, %.04532
  %spec.select = select i1 %110, i64 %.043.lcssa, i64 %.04532
  %111 = icmp ugt i64 %.3.lcssa, %.03934
  %.241 = select i1 %111, i64 %.3.lcssa, i64 %.03934
  br label %112

112:                                              ; preds = %88, %105
  %.146 = phi i64 [ %spec.select, %105 ], [ %.04532, %88 ]
  %.140 = phi i64 [ %.241, %105 ], [ %.03934, %88 ]
  %113 = add i64 %.04233, 1
  %114 = icmp ult i64 %113, 256
  br i1 %114, label %84, label %115, !llvm.loop !14

115:                                              ; preds = %112
  %.045.lcssa = phi i64 [ %.146, %112 ]
  %.039.lcssa = phi i64 [ %.140, %112 ]
  %116 = icmp ugt i64 %.039.lcssa, 32
  br i1 %116, label %117, label %120

117:                                              ; preds = %115
  %118 = call ptr @__acrt_iob_func(i32 noundef 2)
  %119 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %118, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

120:                                              ; preds = %115
  %121 = icmp eq i64 %.045.lcssa, 0
  br i1 %121, label %123, label %.preheader5

.preheader5:                                      ; preds = %120
  %122 = icmp ult i64 0, %1
  br i1 %122, label %.lr.ph51, label %178

.lr.ph51:                                         ; preds = %.preheader5
  br label %126

123:                                              ; preds = %120
  %124 = call ptr @__acrt_iob_func(i32 noundef 2)
  %125 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %124, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

126:                                              ; preds = %.lr.ph51, %174
  %.0150 = phi i32 [ -1, %.lr.ph51 ], [ %.1.lcssa, %174 ]
  %.1649 = phi i64 [ 0, %.lr.ph51 ], [ %176, %174 ]
  %.02448 = phi i8 [ 0, %.lr.ph51 ], [ %.125.lcssa, %174 ]
  %.02847 = phi i64 [ 0, %.lr.ph51 ], [ %.129.lcssa, %174 ]
  %.13446 = phi ptr [ %0, %.lr.ph51 ], [ %175, %174 ]
  %127 = load i8, ptr %.13446, align 1
  %128 = zext i8 %127 to i64
  %129 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %128
  %130 = load i8, ptr %129, align 1
  %131 = zext i8 %130 to i32
  %132 = sub nsw i32 %131, 1
  %133 = shl i32 1, %132
  %134 = sext i32 %133 to i64
  %135 = load i8, ptr %.13446, align 1
  %136 = zext i8 %135 to i64
  %137 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %136
  %138 = load i8, ptr %137, align 1
  %139 = zext i8 %138 to i64
  %140 = icmp ult i64 0, %139
  br i1 %140, label %.lr.ph41, label %174

.lr.ph41:                                         ; preds = %126
  br label %141

141:                                              ; preds = %.lr.ph41, %155
  %.139 = phi i32 [ %.0150, %.lr.ph41 ], [ %.2, %155 ]
  %.438 = phi i64 [ 0, %.lr.ph41 ], [ %167, %155 ]
  %.01537 = phi i64 [ %134, %.lr.ph41 ], [ %166, %155 ]
  %.12536 = phi i8 [ %.02448, %.lr.ph41 ], [ %.327, %155 ]
  %.12935 = phi i64 [ %.02847, %.lr.ph41 ], [ %.230, %155 ]
  %142 = icmp eq i32 %.139, 7
  br i1 %142, label %143, label %150

143:                                              ; preds = %141
  %144 = getelementptr inbounds nuw i8, ptr %11, i64 %.12935
  store i8 %.12536, ptr %144, align 1
  %145 = add i64 %.12935, 1
  %146 = icmp eq i64 %145, %1
  br i1 %146, label %147, label %155

147:                                              ; preds = %143
  %148 = call ptr @__acrt_iob_func(i32 noundef 2)
  %149 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %148, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

150:                                              ; preds = %141
  %151 = add nsw i32 %.139, 1
  %152 = sext i8 %.12536 to i32
  %153 = shl i32 %152, 1
  %154 = trunc i32 %153 to i8
  br label %155

155:                                              ; preds = %143, %150
  %.230 = phi i64 [ %.12935, %150 ], [ %145, %143 ]
  %.226 = phi i8 [ %154, %150 ], [ 0, %143 ]
  %.2 = phi i32 [ %151, %150 ], [ 0, %143 ]
  %156 = load i8, ptr %.13446, align 1
  %157 = zext i8 %156 to i64
  %158 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %157
  %159 = load i32, ptr %158, align 4
  %160 = zext i32 %159 to i64
  %161 = and i64 %160, %.01537
  %162 = icmp ne i64 %161, 0
  %163 = sext i8 %.226 to i32
  %164 = or i32 %163, 1
  %165 = trunc i32 %164 to i8
  %.327 = select i1 %162, i8 %165, i8 %.226
  %166 = lshr i64 %.01537, 1
  %167 = add i64 %.438, 1
  %168 = load i8, ptr %.13446, align 1
  %169 = zext i8 %168 to i64
  %170 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %169
  %171 = load i8, ptr %170, align 1
  %172 = zext i8 %171 to i64
  %173 = icmp ult i64 %167, %172
  br i1 %173, label %141, label %._crit_edge42, !llvm.loop !15

._crit_edge42:                                    ; preds = %155
  %split43 = phi i64 [ %.230, %155 ]
  %split44 = phi i8 [ %.327, %155 ]
  %split45 = phi i32 [ %.2, %155 ]
  br label %174

174:                                              ; preds = %._crit_edge42, %126
  %.129.lcssa = phi i64 [ %split43, %._crit_edge42 ], [ %.02847, %126 ]
  %.125.lcssa = phi i8 [ %split44, %._crit_edge42 ], [ %.02448, %126 ]
  %.1.lcssa = phi i32 [ %split45, %._crit_edge42 ], [ %.0150, %126 ]
  %175 = getelementptr inbounds nuw i8, ptr %.13446, i32 1
  %176 = add i64 %.1649, 1
  %177 = icmp ult i64 %176, %1
  br i1 %177, label %126, label %._crit_edge52, !llvm.loop !16

._crit_edge52:                                    ; preds = %174
  %split53 = phi i64 [ %.129.lcssa, %174 ]
  %split54 = phi i8 [ %.125.lcssa, %174 ]
  %split55 = phi i32 [ %.1.lcssa, %174 ]
  br label %178

178:                                              ; preds = %._crit_edge52, %.preheader5
  %.028.lcssa = phi i64 [ %split53, %._crit_edge52 ], [ 0, %.preheader5 ]
  %.024.lcssa = phi i8 [ %split54, %._crit_edge52 ], [ 0, %.preheader5 ]
  %.01.lcssa = phi i32 [ %split55, %._crit_edge52 ], [ -1, %.preheader5 ]
  %179 = sub nsw i32 7, %.01.lcssa
  %180 = sext i8 %.024.lcssa to i32
  %181 = shl i32 %180, %179
  %182 = trunc i32 %181 to i8
  %183 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %182, ptr %183, align 1
  %184 = getelementptr inbounds [256 x i32], ptr %8, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %184, i8 0, i64 1024, i1 false)
  %185 = getelementptr inbounds [256 x i8], ptr %9, i64 0, i64 0
  br label %186

.preheader4:                                      ; preds = %223
  br label %226

186:                                              ; preds = %178, %223
  %.064 = phi ptr [ %185, %178 ], [ %188, %223 ]
  %.2763 = phi i64 [ 0, %178 ], [ %224, %223 ]
  %187 = trunc i64 %.2763 to i8
  store i8 %187, ptr %.064, align 1
  %188 = getelementptr inbounds nuw i8, ptr %.064, i32 1
  %189 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.2763
  %190 = load i32, ptr %189, align 4
  %191 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2763
  %192 = load i8, ptr %191, align 1
  %193 = zext i8 %192 to i32
  %194 = or i32 %190, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %223

196:                                              ; preds = %186
  %197 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2763
  %198 = load i8, ptr %197, align 1
  %199 = zext i8 %198 to i32
  %200 = sub nsw i32 %199, 1
  %201 = shl i32 1, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.2763
  %204 = load i8, ptr %203, align 1
  %205 = zext i8 %204 to i64
  %206 = icmp ult i64 0, %205
  br i1 %206, label %.lr.ph60, label %221

.lr.ph60:                                         ; preds = %196
  br label %207

207:                                              ; preds = %.lr.ph60, %207
  %.558 = phi i64 [ 0, %.lr.ph60 ], [ %217, %207 ]
  %.11657 = phi i64 [ %202, %.lr.ph60 ], [ %216, %207 ]
  %.01956 = phi i32 [ 0, %.lr.ph60 ], [ %spec.select1, %207 ]
  %208 = mul i32 %.01956, 2
  %209 = add i32 %208, 1
  %210 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.2763
  %211 = load i32, ptr %210, align 4
  %212 = zext i32 %211 to i64
  %213 = and i64 %212, %.11657
  %214 = icmp ne i64 %213, 0
  %215 = add i32 %209, 1
  %spec.select1 = select i1 %214, i32 %215, i32 %209
  %216 = lshr i64 %.11657, 1
  %217 = add i64 %.558, 1
  %218 = load i8, ptr %203, align 1
  %219 = zext i8 %218 to i64
  %220 = icmp ult i64 %217, %219
  br i1 %220, label %207, label %._crit_edge61, !llvm.loop !17

._crit_edge61:                                    ; preds = %207
  %split62 = phi i32 [ %spec.select1, %207 ]
  br label %221

221:                                              ; preds = %._crit_edge61, %196
  %.019.lcssa = phi i32 [ %split62, %._crit_edge61 ], [ 0, %196 ]
  %222 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.2763
  store i32 %.019.lcssa, ptr %222, align 4
  br label %223

223:                                              ; preds = %186, %221
  %224 = add i64 %.2763, 1
  %225 = icmp ult i64 %224, 256
  br i1 %225, label %186, label %.preheader4, !llvm.loop !18

.preheader3:                                      ; preds = %.critedge
  br label %252

226:                                              ; preds = %.preheader4, %.critedge
  %.671 = phi i64 [ 1, %.preheader4 ], [ %250, %.critedge ]
  %227 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.671
  %228 = load i32, ptr %227, align 4
  %229 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.671
  %230 = load i8, ptr %229, align 1
  %231 = icmp ne i64 %.671, 0
  br i1 %231, label %.lr.ph67, label %.critedge

.lr.ph67:                                         ; preds = %226
  br label %232

232:                                              ; preds = %.lr.ph67, %237
  %.3865 = phi i64 [ %.671, %.lr.ph67 ], [ %246, %237 ]
  %233 = sub i64 %.3865, 1
  %234 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %233
  %235 = load i32, ptr %234, align 4
  %236 = icmp ugt i32 %235, %228
  br i1 %236, label %237, label %..critedge_crit_edge69

237:                                              ; preds = %232
  %238 = sub i64 %.3865, 1
  %239 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %238
  %240 = load i32, ptr %239, align 4
  %241 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.3865
  store i32 %240, ptr %241, align 4
  %242 = sub i64 %.3865, 1
  %243 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %242
  %244 = load i8, ptr %243, align 1
  %245 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.3865
  store i8 %244, ptr %245, align 1
  %246 = add i64 %.3865, -1
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %232, label %..critedge_crit_edge, !llvm.loop !19

..critedge_crit_edge:                             ; preds = %237
  %split68 = phi i64 [ %246, %237 ]
  br label %.critedge

..critedge_crit_edge69:                           ; preds = %232
  %split70 = phi i64 [ %.3865, %232 ]
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge69, %..critedge_crit_edge, %226
  %.38.lcssa = phi i64 [ %split68, %..critedge_crit_edge ], [ %split70, %..critedge_crit_edge69 ], [ %.671, %226 ]
  %248 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %228, ptr %248, align 4
  %249 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %230, ptr %249, align 1
  %250 = add i64 %.671, 1
  %251 = icmp ult i64 %250, 256
  br i1 %251, label %226, label %.preheader3, !llvm.loop !20

252:                                              ; preds = %252, %.preheader3
  %.49 = phi i64 [ %256, %252 ], [ 0, %.preheader3 ]
  %253 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %254 = load i32, ptr %253, align 4
  %255 = icmp eq i32 %254, 0
  %256 = add i64 %.49, 1
  br i1 %255, label %252, label %.preheader, !llvm.loop !21

.preheader:                                       ; preds = %252
  %.49.lcssa = phi i64 [ %.49, %252 ]
  %257 = icmp ult i64 0, %1
  br i1 %257, label %.lr.ph78, label %285

.lr.ph78:                                         ; preds = %.preheader
  br label %258

258:                                              ; preds = %.lr.ph78, %280
  %.777 = phi i64 [ %.49.lcssa, %.lr.ph78 ], [ %.9, %280 ]
  %.31376 = phi i64 [ 0, %.lr.ph78 ], [ %.414, %280 ]
  %.21775 = phi i64 [ 128, %.lr.ph78 ], [ %.318, %280 ]
  %.22174 = phi i32 [ 0, %.lr.ph78 ], [ %.423, %280 ]
  %.03173 = phi ptr [ %11, %.lr.ph78 ], [ %.132, %280 ]
  %.23572 = phi ptr [ %0, %.lr.ph78 ], [ %.336, %280 ]
  %259 = mul i32 %.22174, 2
  %260 = add i32 %259, 1
  %261 = load i8, ptr %.03173, align 1
  %262 = zext i8 %261 to i64
  %263 = and i64 %262, %.21775
  %264 = icmp ne i64 %263, 0
  %265 = add i32 %260, 1
  %spec.select2 = select i1 %264, i32 %265, i32 %260
  br label %266

266:                                              ; preds = %266, %258
  %.8 = phi i64 [ %.777, %258 ], [ %270, %266 ]
  %267 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %268 = load i32, ptr %267, align 4
  %269 = icmp ult i32 %268, %spec.select2
  %270 = add i64 %.8, 1
  br i1 %269, label %266, label %271, !llvm.loop !22

271:                                              ; preds = %266
  %.8.lcssa = phi i64 [ %.8, %266 ]
  %272 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8.lcssa
  %273 = load i32, ptr %272, align 4
  %274 = icmp eq i32 %spec.select2, %273
  br i1 %274, label %275, label %280

275:                                              ; preds = %271
  %276 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %277 = load i8, ptr %276, align 1
  store i8 %277, ptr %.23572, align 1
  %278 = getelementptr inbounds nuw i8, ptr %.23572, i32 1
  %279 = add i64 %.31376, 1
  br label %280

280:                                              ; preds = %275, %271
  %.336 = phi ptr [ %278, %275 ], [ %.23572, %271 ]
  %.423 = phi i32 [ 0, %275 ], [ %spec.select2, %271 ]
  %.414 = phi i64 [ %279, %275 ], [ %.31376, %271 ]
  %.9 = phi i64 [ %.49.lcssa, %275 ], [ %.8.lcssa, %271 ]
  %281 = icmp ugt i64 %.21775, 1
  %282 = lshr i64 %.21775, 1
  %283 = getelementptr inbounds nuw i8, ptr %.03173, i32 1
  %.132 = select i1 %281, ptr %.03173, ptr %283
  %.318 = select i1 %281, i64 %282, i64 128
  %284 = icmp ult i64 %.414, %1
  br i1 %284, label %258, label %._crit_edge79, !llvm.loop !23

._crit_edge79:                                    ; preds = %280
  br label %285

285:                                              ; preds = %._crit_edge79, %.preheader
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
  br i1 %11, label %.lr.ph, label %49

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
  %41 = sub nsw i32 %.0, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, ptr %1, i64 %42
  %44 = load i64, ptr %43, align 8
  %45 = sub nsw i32 %.011, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, ptr %1, i64 %46
  store i64 %44, ptr %47, align 8
  %48 = icmp sle i32 %.0, %10
  br i1 %48, label %12, label %._crit_edge2, !llvm.loop !24

._crit_edge:                                      ; preds = %29
  %split = phi i32 [ %.011, %29 ]
  br label %49

._crit_edge2:                                     ; preds = %40
  %split3 = phi i32 [ %.0, %40 ]
  br label %49

49:                                               ; preds = %._crit_edge2, %._crit_edge, %4
  %.01.lcssa = phi i32 [ %split, %._crit_edge ], [ %split3, %._crit_edge2 ], [ %3, %4 ]
  %50 = sext i32 %9 to i64
  %51 = sub nsw i32 %.01.lcssa, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, ptr %1, i64 %52
  store i64 %50, ptr %53, align 8
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

.loopexit:                                        ; preds = %7, %5
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
  store i32 %2, ptr @seed, align 4
  %3 = load i32, ptr @seed, align 4
  %4 = sdiv i32 %3, 127773
  %5 = load i32, ptr @seed, align 4
  %6 = mul nsw i32 %4, 127773
  %7 = sub nsw i32 %5, %6
  %8 = mul nsw i32 16807, %7
  %9 = mul nsw i32 2836, %4
  %10 = sub nsw i32 %8, %9
  store i32 %10, ptr @seed, align 4
  %11 = load i32, ptr @seed, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = load i32, ptr @seed, align 4
  %15 = add nsw i32 %14, 2147483647
  store i32 %15, ptr @seed, align 4
  br label %16

16:                                               ; preds = %13, %0
  %17 = load i32, ptr @seed, align 4
  %18 = srem i32 %17, 32
  %19 = sext i32 %18 to i64
  %20 = load i32, ptr @seed, align 4
  %21 = xor i32 %20, 123459876
  store i32 %21, ptr @seed, align 4
  ret i64 %19
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
