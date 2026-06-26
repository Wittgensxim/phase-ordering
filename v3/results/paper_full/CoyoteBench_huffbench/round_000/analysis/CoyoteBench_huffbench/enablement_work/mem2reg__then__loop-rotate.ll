; ModuleID = 'results\paper_full\CoyoteBench_huffbench\CoyoteBench_huffbench.ll'
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
  br i1 %3, label %.lr.ph, label %13

.lr.ph:                                           ; preds = %1
  br label %4

4:                                                ; preds = %.lr.ph, %9
  %.03 = phi i32 [ 0, %.lr.ph ], [ %10, %9 ]
  %.012 = phi ptr [ %2, %.lr.ph ], [ %8, %9 ]
  %5 = call i64 @random4()
  %6 = getelementptr inbounds nuw i8, ptr @.str, i64 %5
  %7 = load i8, ptr %6, align 1
  store i8 %7, ptr %.012, align 1
  %8 = getelementptr inbounds nuw i8, ptr %.012, i32 1
  br label %9

9:                                                ; preds = %4
  %10 = add nsw i32 %.03, 1
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, %0
  br i1 %12, label %4, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %9
  br label %13

13:                                               ; preds = %._crit_edge, %1
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
  br i1 %19, label %.lr.ph, label %30

.lr.ph:                                           ; preds = %2
  br label %20

20:                                               ; preds = %.lr.ph, %27
  %.0255 = phi i64 [ 0, %.lr.ph ], [ %28, %27 ]
  %.03354 = phi ptr [ %0, %.lr.ph ], [ %26, %27 ]
  %21 = load i8, ptr %.03354, align 1
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %22
  %24 = load i64, ptr %23, align 8
  %25 = add i64 %24, 1
  store i64 %25, ptr %23, align 8
  %26 = getelementptr inbounds nuw i8, ptr %.03354, i32 1
  br label %27

27:                                               ; preds = %20
  %28 = add i64 %.0255, 1
  %29 = icmp ult i64 %28, %1
  br i1 %29, label %20, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %27
  br label %30

30:                                               ; preds = %._crit_edge, %2
  br label %31

31:                                               ; preds = %30, %39
  %.1357 = phi i64 [ 0, %30 ], [ %40, %39 ]
  %.01056 = phi i64 [ 0, %30 ], [ %.111, %39 ]
  %32 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.1357
  %33 = load i64, ptr %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.01056
  store i64 %.1357, ptr %36, align 8
  %37 = add i64 %.01056, 1
  br label %38

38:                                               ; preds = %35, %31
  %.111 = phi i64 [ %37, %35 ], [ %.01056, %31 ]
  br label %39

39:                                               ; preds = %38
  %40 = add i64 %.1357, 1
  %41 = icmp ult i64 %40, 256
  br i1 %41, label %31, label %42, !llvm.loop !10

42:                                               ; preds = %39
  %.010.lcssa = phi i64 [ %.111, %39 ]
  %43 = icmp ugt i64 %.010.lcssa, 0
  br i1 %43, label %.lr.ph60, label %52

.lr.ph60:                                         ; preds = %42
  br label %44

44:                                               ; preds = %.lr.ph60, %49
  %.2458 = phi i64 [ %.010.lcssa, %.lr.ph60 ], [ %50, %49 ]
  %45 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %46 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %47 = trunc i64 %.010.lcssa to i32
  %48 = trunc i64 %.2458 to i32
  call void @heap_adjust(ptr noundef %45, ptr noundef %46, i32 noundef %47, i32 noundef %48)
  br label %49

49:                                               ; preds = %44
  %50 = add i64 %.2458, -1
  %51 = icmp ugt i64 %50, 0
  br i1 %51, label %44, label %._crit_edge61, !llvm.loop !11

._crit_edge61:                                    ; preds = %49
  br label %52

52:                                               ; preds = %._crit_edge61, %42
  %53 = icmp ugt i64 %.010.lcssa, 1
  br i1 %53, label %.lr.ph64, label %87

.lr.ph64:                                         ; preds = %52
  br label %54

54:                                               ; preds = %.lr.ph64, %54
  %.21262 = phi i64 [ %.010.lcssa, %.lr.ph64 ], [ %55, %54 ]
  %55 = add i64 %.21262, -1
  %56 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %57 = load i64, ptr %56, align 16
  %58 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %55
  %59 = load i64, ptr %58, align 8
  %60 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %59, ptr %60, align 16
  %61 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %62 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %63 = trunc i64 %55 to i32
  call void @heap_adjust(ptr noundef %61, ptr noundef %62, i32 noundef %63, i32 noundef 1)
  %64 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %65 = load i64, ptr %64, align 16
  %66 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %65
  %67 = load i64, ptr %66, align 8
  %68 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %57
  %69 = load i64, ptr %68, align 8
  %70 = add i64 %67, %69
  %71 = add i64 256, %55
  %72 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %71
  store i64 %70, ptr %72, align 8
  %73 = add i64 256, %55
  %74 = trunc i64 %73 to i32
  %75 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %57
  store i32 %74, ptr %75, align 4
  %76 = sub i64 -256, %55
  %77 = trunc i64 %76 to i32
  %78 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %79 = load i64, ptr %78, align 16
  %80 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %79
  store i32 %77, ptr %80, align 4
  %81 = add i64 256, %55
  %82 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  store i64 %81, ptr %82, align 16
  %83 = getelementptr inbounds [512 x i64], ptr %3, i64 0, i64 0
  %84 = getelementptr inbounds [256 x i64], ptr %4, i64 0, i64 0
  %85 = trunc i64 %55 to i32
  call void @heap_adjust(ptr noundef %83, ptr noundef %84, i32 noundef %85, i32 noundef 1)
  %86 = icmp ugt i64 %55, 1
  br i1 %86, label %54, label %._crit_edge65, !llvm.loop !12

._crit_edge65:                                    ; preds = %54
  %split = phi i64 [ %55, %54 ]
  br label %87

87:                                               ; preds = %._crit_edge65, %52
  %.212.lcssa = phi i64 [ %split, %._crit_edge65 ], [ %.010.lcssa, %52 ]
  %88 = add i64 256, %.212.lcssa
  %89 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %88
  store i32 0, ptr %89, align 4
  br label %90

90:                                               ; preds = %87, %125
  %.03977 = phi i64 [ 0, %87 ], [ %.140, %125 ]
  %.04276 = phi i64 [ 0, %87 ], [ %126, %125 ]
  %.04575 = phi i64 [ 0, %87 ], [ %.146, %125 ]
  %91 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.04276
  %92 = load i64, ptr %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04276
  store i32 0, ptr %95, align 4
  %96 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04276
  store i8 0, ptr %96, align 1
  br label %124

97:                                               ; preds = %90
  %98 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.04276
  %99 = load i32, ptr %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %.lr.ph71, label %113

.lr.ph71:                                         ; preds = %97
  br label %101

101:                                              ; preds = %.lr.ph71, %106
  %.369 = phi i64 [ 0, %.lr.ph71 ], [ %111, %106 ]
  %.0568 = phi i64 [ 1, %.lr.ph71 ], [ %110, %106 ]
  %.03767 = phi i32 [ %99, %.lr.ph71 ], [ %109, %106 ]
  %.04366 = phi i64 [ 0, %.lr.ph71 ], [ %.144, %106 ]
  %102 = icmp slt i32 %.03767, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %101
  %104 = add i64 %.04366, %.0568
  %105 = sub nsw i32 0, %.03767
  br label %106

106:                                              ; preds = %103, %101
  %.144 = phi i64 [ %104, %103 ], [ %.04366, %101 ]
  %.138 = phi i32 [ %105, %103 ], [ %.03767, %101 ]
  %107 = sext i32 %.138 to i64
  %108 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %107
  %109 = load i32, ptr %108, align 4
  %110 = shl i64 %.0568, 1
  %111 = add i64 %.369, 1
  %112 = icmp ne i32 %109, 0
  br i1 %112, label %101, label %._crit_edge72, !llvm.loop !13

._crit_edge72:                                    ; preds = %106
  %split73 = phi i64 [ %.144, %106 ]
  %split74 = phi i64 [ %111, %106 ]
  br label %113

113:                                              ; preds = %._crit_edge72, %97
  %.043.lcssa = phi i64 [ %split73, %._crit_edge72 ], [ 0, %97 ]
  %.3.lcssa = phi i64 [ %split74, %._crit_edge72 ], [ 0, %97 ]
  %114 = trunc i64 %.043.lcssa to i32
  %115 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.04276
  store i32 %114, ptr %115, align 4
  %116 = trunc i64 %.3.lcssa to i8
  %117 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.04276
  store i8 %116, ptr %117, align 1
  %118 = icmp ugt i64 %.043.lcssa, %.04575
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %120

120:                                              ; preds = %119, %113
  %.247 = phi i64 [ %.043.lcssa, %119 ], [ %.04575, %113 ]
  %121 = icmp ugt i64 %.3.lcssa, %.03977
  br i1 %121, label %122, label %123

122:                                              ; preds = %120
  br label %123

123:                                              ; preds = %122, %120
  %.241 = phi i64 [ %.3.lcssa, %122 ], [ %.03977, %120 ]
  br label %124

124:                                              ; preds = %123, %94
  %.146 = phi i64 [ %.247, %123 ], [ %.04575, %94 ]
  %.140 = phi i64 [ %.241, %123 ], [ %.03977, %94 ]
  br label %125

125:                                              ; preds = %124
  %126 = add i64 %.04276, 1
  %127 = icmp ult i64 %126, 256
  br i1 %127, label %90, label %128, !llvm.loop !14

128:                                              ; preds = %125
  %.045.lcssa = phi i64 [ %.146, %125 ]
  %.039.lcssa = phi i64 [ %.140, %125 ]
  %129 = icmp ugt i64 %.039.lcssa, 32
  br i1 %129, label %130, label %133

130:                                              ; preds = %128
  %131 = call ptr @__acrt_iob_func(i32 noundef 2)
  %132 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %131, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

133:                                              ; preds = %128
  %134 = icmp eq i64 %.045.lcssa, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %133
  %136 = call ptr @__acrt_iob_func(i32 noundef 2)
  %137 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %136, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

138:                                              ; preds = %133
  %139 = icmp ult i64 0, %1
  br i1 %139, label %.lr.ph95, label %197

.lr.ph95:                                         ; preds = %138
  br label %140

140:                                              ; preds = %.lr.ph95, %194
  %.0193 = phi i32 [ -1, %.lr.ph95 ], [ %.1.lcssa, %194 ]
  %.1692 = phi i64 [ 0, %.lr.ph95 ], [ %195, %194 ]
  %.02491 = phi i8 [ 0, %.lr.ph95 ], [ %.125.lcssa, %194 ]
  %.02890 = phi i64 [ 0, %.lr.ph95 ], [ %.129.lcssa, %194 ]
  %.13489 = phi ptr [ %0, %.lr.ph95 ], [ %193, %194 ]
  %141 = load i8, ptr %.13489, align 1
  %142 = zext i8 %141 to i64
  %143 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %142
  %144 = load i8, ptr %143, align 1
  %145 = zext i8 %144 to i32
  %146 = sub nsw i32 %145, 1
  %147 = shl i32 1, %146
  %148 = sext i32 %147 to i64
  %149 = load i8, ptr %.13489, align 1
  %150 = zext i8 %149 to i64
  %151 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %150
  %152 = load i8, ptr %151, align 1
  %153 = zext i8 %152 to i64
  %154 = icmp ult i64 0, %153
  br i1 %154, label %.lr.ph84, label %192

.lr.ph84:                                         ; preds = %140
  br label %155

155:                                              ; preds = %.lr.ph84, %184
  %.182 = phi i32 [ %.0193, %.lr.ph84 ], [ %.2, %184 ]
  %.481 = phi i64 [ 0, %.lr.ph84 ], [ %185, %184 ]
  %.01580 = phi i64 [ %148, %.lr.ph84 ], [ %183, %184 ]
  %.12579 = phi i8 [ %.02491, %.lr.ph84 ], [ %.327, %184 ]
  %.12978 = phi i64 [ %.02890, %.lr.ph84 ], [ %.230, %184 ]
  %156 = icmp eq i32 %.182, 7
  br i1 %156, label %157, label %165

157:                                              ; preds = %155
  %158 = getelementptr inbounds nuw i8, ptr %11, i64 %.12978
  store i8 %.12579, ptr %158, align 1
  %159 = add i64 %.12978, 1
  %160 = icmp eq i64 %159, %1
  br i1 %160, label %161, label %164

161:                                              ; preds = %157
  %162 = call ptr @__acrt_iob_func(i32 noundef 2)
  %163 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %162, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

164:                                              ; preds = %157
  br label %170

165:                                              ; preds = %155
  %166 = add nsw i32 %.182, 1
  %167 = sext i8 %.12579 to i32
  %168 = shl i32 %167, 1
  %169 = trunc i32 %168 to i8
  br label %170

170:                                              ; preds = %165, %164
  %.230 = phi i64 [ %159, %164 ], [ %.12978, %165 ]
  %.226 = phi i8 [ 0, %164 ], [ %169, %165 ]
  %.2 = phi i32 [ 0, %164 ], [ %166, %165 ]
  %171 = load i8, ptr %.13489, align 1
  %172 = zext i8 %171 to i64
  %173 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %172
  %174 = load i32, ptr %173, align 4
  %175 = zext i32 %174 to i64
  %176 = and i64 %175, %.01580
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %170
  %179 = sext i8 %.226 to i32
  %180 = or i32 %179, 1
  %181 = trunc i32 %180 to i8
  br label %182

182:                                              ; preds = %178, %170
  %.327 = phi i8 [ %181, %178 ], [ %.226, %170 ]
  %183 = lshr i64 %.01580, 1
  br label %184

184:                                              ; preds = %182
  %185 = add i64 %.481, 1
  %186 = load i8, ptr %.13489, align 1
  %187 = zext i8 %186 to i64
  %188 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %187
  %189 = load i8, ptr %188, align 1
  %190 = zext i8 %189 to i64
  %191 = icmp ult i64 %185, %190
  br i1 %191, label %155, label %._crit_edge85, !llvm.loop !15

._crit_edge85:                                    ; preds = %184
  %split86 = phi i64 [ %.230, %184 ]
  %split87 = phi i8 [ %.327, %184 ]
  %split88 = phi i32 [ %.2, %184 ]
  br label %192

192:                                              ; preds = %._crit_edge85, %140
  %.129.lcssa = phi i64 [ %split86, %._crit_edge85 ], [ %.02890, %140 ]
  %.125.lcssa = phi i8 [ %split87, %._crit_edge85 ], [ %.02491, %140 ]
  %.1.lcssa = phi i32 [ %split88, %._crit_edge85 ], [ %.0193, %140 ]
  %193 = getelementptr inbounds nuw i8, ptr %.13489, i32 1
  br label %194

194:                                              ; preds = %192
  %195 = add i64 %.1692, 1
  %196 = icmp ult i64 %195, %1
  br i1 %196, label %140, label %._crit_edge96, !llvm.loop !16

._crit_edge96:                                    ; preds = %194
  %split97 = phi i64 [ %.129.lcssa, %194 ]
  %split98 = phi i8 [ %.125.lcssa, %194 ]
  %split99 = phi i32 [ %.1.lcssa, %194 ]
  br label %197

197:                                              ; preds = %._crit_edge96, %138
  %.028.lcssa = phi i64 [ %split97, %._crit_edge96 ], [ 0, %138 ]
  %.024.lcssa = phi i8 [ %split98, %._crit_edge96 ], [ 0, %138 ]
  %.01.lcssa = phi i32 [ %split99, %._crit_edge96 ], [ -1, %138 ]
  %198 = sub nsw i32 7, %.01.lcssa
  %199 = sext i8 %.024.lcssa to i32
  %200 = shl i32 %199, %198
  %201 = trunc i32 %200 to i8
  %202 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %201, ptr %202, align 1
  %203 = add i64 %.028.lcssa, 1
  %204 = getelementptr inbounds [256 x i32], ptr %8, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %204, i8 0, i64 1024, i1 false)
  %205 = getelementptr inbounds [256 x i8], ptr %9, i64 0, i64 0
  br label %206

206:                                              ; preds = %197, %247
  %.0108 = phi ptr [ %205, %197 ], [ %208, %247 ]
  %.27107 = phi i64 [ 0, %197 ], [ %248, %247 ]
  %207 = trunc i64 %.27107 to i8
  store i8 %207, ptr %.0108, align 1
  %208 = getelementptr inbounds nuw i8, ptr %.0108, i32 1
  %209 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27107
  %210 = load i32, ptr %209, align 4
  %211 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27107
  %212 = load i8, ptr %211, align 1
  %213 = zext i8 %212 to i32
  %214 = or i32 %210, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %246

216:                                              ; preds = %206
  %217 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27107
  %218 = load i8, ptr %217, align 1
  %219 = zext i8 %218 to i32
  %220 = sub nsw i32 %219, 1
  %221 = shl i32 1, %220
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27107
  %224 = load i8, ptr %223, align 1
  %225 = zext i8 %224 to i64
  %226 = icmp ult i64 0, %225
  br i1 %226, label %.lr.ph104, label %244

.lr.ph104:                                        ; preds = %216
  br label %227

227:                                              ; preds = %.lr.ph104, %239
  %.5102 = phi i64 [ 0, %.lr.ph104 ], [ %240, %239 ]
  %.116101 = phi i64 [ %222, %.lr.ph104 ], [ %238, %239 ]
  %.019100 = phi i32 [ 0, %.lr.ph104 ], [ %.120, %239 ]
  %228 = mul i32 %.019100, 2
  %229 = add i32 %228, 1
  %230 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27107
  %231 = load i32, ptr %230, align 4
  %232 = zext i32 %231 to i64
  %233 = and i64 %232, %.116101
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %227
  %236 = add i32 %229, 1
  br label %237

237:                                              ; preds = %235, %227
  %.120 = phi i32 [ %236, %235 ], [ %229, %227 ]
  %238 = lshr i64 %.116101, 1
  br label %239

239:                                              ; preds = %237
  %240 = add i64 %.5102, 1
  %241 = load i8, ptr %223, align 1
  %242 = zext i8 %241 to i64
  %243 = icmp ult i64 %240, %242
  br i1 %243, label %227, label %._crit_edge105, !llvm.loop !17

._crit_edge105:                                   ; preds = %239
  %split106 = phi i32 [ %.120, %239 ]
  br label %244

244:                                              ; preds = %._crit_edge105, %216
  %.019.lcssa = phi i32 [ %split106, %._crit_edge105 ], [ 0, %216 ]
  %245 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.27107
  store i32 %.019.lcssa, ptr %245, align 4
  br label %246

246:                                              ; preds = %244, %206
  br label %247

247:                                              ; preds = %246
  %248 = add i64 %.27107, 1
  %249 = icmp ult i64 %248, 256
  br i1 %249, label %206, label %250, !llvm.loop !18

250:                                              ; preds = %247
  br label %251

251:                                              ; preds = %250, %278
  %.6109 = phi i64 [ 1, %250 ], [ %279, %278 ]
  %252 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6109
  %253 = load i32, ptr %252, align 4
  %254 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6109
  %255 = load i8, ptr %254, align 1
  br label %256

256:                                              ; preds = %265, %251
  %.38 = phi i64 [ %.6109, %251 ], [ %274, %265 ]
  %257 = icmp ne i64 %.38, 0
  br i1 %257, label %258, label %263

258:                                              ; preds = %256
  %259 = sub i64 %.38, 1
  %260 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %259
  %261 = load i32, ptr %260, align 4
  %262 = icmp ugt i32 %261, %253
  br label %263

263:                                              ; preds = %258, %256
  %264 = phi i1 [ false, %256 ], [ %262, %258 ]
  br i1 %264, label %265, label %275

265:                                              ; preds = %263
  %266 = sub i64 %.38, 1
  %267 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %266
  %268 = load i32, ptr %267, align 4
  %269 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %268, ptr %269, align 4
  %270 = sub i64 %.38, 1
  %271 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %270
  %272 = load i8, ptr %271, align 1
  %273 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %272, ptr %273, align 1
  %274 = add i64 %.38, -1
  br label %256, !llvm.loop !19

275:                                              ; preds = %263
  %.38.lcssa = phi i64 [ %.38, %263 ]
  %276 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38.lcssa
  store i32 %253, ptr %276, align 4
  %277 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38.lcssa
  store i8 %255, ptr %277, align 1
  br label %278

278:                                              ; preds = %275
  %279 = add i64 %.6109, 1
  %280 = icmp ult i64 %279, 256
  br i1 %280, label %251, label %281, !llvm.loop !20

281:                                              ; preds = %278
  %282 = load i32, ptr %8, align 4
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %.lr.ph112, label %290

.lr.ph112:                                        ; preds = %281
  br label %284

284:                                              ; preds = %.lr.ph112, %285
  %.49110 = phi i64 [ 0, %.lr.ph112 ], [ %286, %285 ]
  br label %285

285:                                              ; preds = %284
  %286 = add i64 %.49110, 1
  %287 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %286
  %288 = load i32, ptr %287, align 4
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %284, label %._crit_edge113, !llvm.loop !21

._crit_edge113:                                   ; preds = %285
  %split114 = phi i64 [ %286, %285 ]
  br label %290

290:                                              ; preds = %._crit_edge113, %281
  %.49.lcssa = phi i64 [ %split114, %._crit_edge113 ], [ 0, %281 ]
  %291 = icmp ult i64 0, %1
  br i1 %291, label %.lr.ph122, label %324

.lr.ph122:                                        ; preds = %290
  br label %292

292:                                              ; preds = %.lr.ph122, %322
  %.7120 = phi i64 [ %.49.lcssa, %.lr.ph122 ], [ %.9, %322 ]
  %.313119 = phi i64 [ 0, %.lr.ph122 ], [ %.414, %322 ]
  %.217118 = phi i64 [ 128, %.lr.ph122 ], [ %.318, %322 ]
  %.221117 = phi i32 [ 0, %.lr.ph122 ], [ %.423, %322 ]
  %.031116 = phi ptr [ %11, %.lr.ph122 ], [ %.132, %322 ]
  %.235115 = phi ptr [ %0, %.lr.ph122 ], [ %.336, %322 ]
  %293 = mul i32 %.221117, 2
  %294 = add i32 %293, 1
  %295 = load i8, ptr %.031116, align 1
  %296 = zext i8 %295 to i64
  %297 = and i64 %296, %.217118
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %301

299:                                              ; preds = %292
  %300 = add i32 %294, 1
  br label %301

301:                                              ; preds = %299, %292
  %.322 = phi i32 [ %300, %299 ], [ %294, %292 ]
  br label %302

302:                                              ; preds = %302, %301
  %.8 = phi i64 [ %.7120, %301 ], [ %306, %302 ]
  %303 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %304 = load i32, ptr %303, align 4
  %305 = icmp ult i32 %304, %.322
  %306 = add i64 %.8, 1
  br i1 %305, label %302, label %307, !llvm.loop !22

307:                                              ; preds = %302
  %.8.lcssa = phi i64 [ %.8, %302 ]
  %308 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8.lcssa
  %309 = load i32, ptr %308, align 4
  %310 = icmp eq i32 %.322, %309
  br i1 %310, label %311, label %316

311:                                              ; preds = %307
  %312 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8.lcssa
  %313 = load i8, ptr %312, align 1
  store i8 %313, ptr %.235115, align 1
  %314 = getelementptr inbounds nuw i8, ptr %.235115, i32 1
  %315 = add i64 %.313119, 1
  br label %316

316:                                              ; preds = %311, %307
  %.336 = phi ptr [ %314, %311 ], [ %.235115, %307 ]
  %.423 = phi i32 [ 0, %311 ], [ %.322, %307 ]
  %.414 = phi i64 [ %315, %311 ], [ %.313119, %307 ]
  %.9 = phi i64 [ %.49.lcssa, %311 ], [ %.8.lcssa, %307 ]
  %317 = icmp ugt i64 %.217118, 1
  br i1 %317, label %318, label %320

318:                                              ; preds = %316
  %319 = lshr i64 %.217118, 1
  br label %322

320:                                              ; preds = %316
  %321 = getelementptr inbounds nuw i8, ptr %.031116, i32 1
  br label %322

322:                                              ; preds = %320, %318
  %.132 = phi ptr [ %.031116, %318 ], [ %321, %320 ]
  %.318 = phi i64 [ %319, %318 ], [ 128, %320 ]
  %323 = icmp ult i64 %.414, %1
  br i1 %323, label %292, label %._crit_edge123, !llvm.loop !23

._crit_edge123:                                   ; preds = %322
  br label %324

324:                                              ; preds = %._crit_edge123, %290
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
  br i1 %11, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %12

12:                                               ; preds = %.lr.ph, %42
  %.014 = phi i32 [ %3, %.lr.ph ], [ %.0, %42 ]
  %13 = add nsw i32 %.014, %.014
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
  %.01.lcssa2 = phi i32 [ %.014, %30 ]
  br label %51

42:                                               ; preds = %30
  %43 = sub nsw i32 %.0, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, ptr %1, i64 %44
  %46 = load i64, ptr %45, align 8
  %47 = sub nsw i32 %.014, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, ptr %1, i64 %48
  store i64 %46, ptr %49, align 8
  %50 = icmp sle i32 %.0, %10
  br i1 %50, label %12, label %..loopexit_crit_edge, !llvm.loop !24

..loopexit_crit_edge:                             ; preds = %42
  %split = phi i32 [ %.0, %42 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  %.01.lcssa = phi i32 [ %split, %..loopexit_crit_edge ], [ %3, %4 ]
  br label %51

51:                                               ; preds = %.loopexit, %41
  %.013 = phi i32 [ %.01.lcssa, %.loopexit ], [ %.01.lcssa2, %41 ]
  %52 = sext i32 %9 to i64
  %53 = sub nsw i32 %.013, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, ptr %1, i64 %54
  store i64 %52, ptr %55, align 8
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
  br i1 %3, label %4, label %16

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4, %12
  %.013 = phi i32 [ 1, %4 ], [ %13, %12 ]
  %6 = getelementptr inbounds ptr, ptr %1, i64 1
  %7 = load ptr, ptr %6, align 8
  %8 = call i32 @strcmp(ptr noundef %7, ptr noundef @.str.4) #7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  br label %15

11:                                               ; preds = %5
  br label %12

12:                                               ; preds = %11
  %13 = add nsw i32 %.013, 1
  %14 = icmp slt i32 %13, %0
  br i1 %14, label %5, label %.loopexit, !llvm.loop !25

.loopexit:                                        ; preds = %12
  br label %15

15:                                               ; preds = %.loopexit, %10
  %.1 = phi i8 [ 1, %10 ], [ 0, %.loopexit ]
  br label %16

16:                                               ; preds = %15, %2
  %.0 = phi i8 [ %.1, %15 ], [ 0, %2 ]
  %17 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %18

18:                                               ; preds = %16, %19
  %.124 = phi i32 [ 0, %16 ], [ %20, %19 ]
  call void @compdecomp(ptr noundef %17, i64 noundef 10000000)
  br label %19

19:                                               ; preds = %18
  %20 = add nsw i32 %.124, 1
  %21 = icmp slt i32 %20, 30
  br i1 %21, label %18, label %22, !llvm.loop !26

22:                                               ; preds = %19
  call void @free(ptr noundef %17)
  %23 = icmp ne i8 %.0, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = call ptr @__acrt_iob_func(i32 noundef 1)
  %26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.5, double noundef 0.000000e+00) #7
  br label %30

27:                                               ; preds = %22
  %28 = call ptr @__acrt_iob_func(i32 noundef 1)
  %29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.6, double noundef 0.000000e+00) #7
  br label %30

30:                                               ; preds = %27, %24
  %31 = call ptr @__acrt_iob_func(i32 noundef 1)
  %32 = call i32 @fflush(ptr noundef %31)
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
