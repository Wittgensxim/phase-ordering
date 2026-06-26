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
  %2 = call ptr @malloc(i64 noundef %0) #7
  %3 = icmp ugt i64 %0, 0
  br i1 %3, label %.lr.ph, label %13

.lr.ph:                                           ; preds = %1
  br label %4

4:                                                ; preds = %.lr.ph, %8
  %.02 = phi i32 [ 0, %.lr.ph ], [ %10, %8 ]
  %.011 = phi ptr [ %2, %.lr.ph ], [ %9, %8 ]
  %5 = call i64 @random4()
  %6 = getelementptr inbounds nuw i8, ptr @.str, i64 %5
  %7 = load i8, ptr %6, align 1
  store i8 %7, ptr %.011, align 1
  br label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %.011, i64 1
  %10 = add nuw nsw i32 %.02, 1
  %11 = zext nneg i32 %10 to i64
  %12 = icmp ugt i64 %0, %11
  br i1 %12, label %4, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %8
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
  %11 = call ptr @malloc(i64 noundef %10) #7
  %12 = add i64 %1, 1
  call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %12, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %3, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %4, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %5, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %6, i8 0, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %7, i8 0, i64 256, i1 false)
  %13 = icmp ult i64 0, %1
  br i1 %13, label %.lr.ph, label %24

.lr.ph:                                           ; preds = %2
  br label %14

14:                                               ; preds = %.lr.ph, %20
  %.0216 = phi i64 [ 0, %.lr.ph ], [ %22, %20 ]
  %.03315 = phi ptr [ %0, %.lr.ph ], [ %21, %20 ]
  %15 = load i8, ptr %.03315, align 1
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %16
  %18 = load i64, ptr %17, align 8
  %19 = add i64 %18, 1
  store i64 %19, ptr %17, align 8
  br label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds nuw i8, ptr %.03315, i64 1
  %22 = add i64 %.0216, 1
  %23 = icmp ult i64 %22, %1
  br i1 %23, label %14, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %20
  br label %24

24:                                               ; preds = %._crit_edge, %2
  br label %25

25:                                               ; preds = %24, %32
  %.1318 = phi i64 [ 0, %24 ], [ %33, %32 ]
  %.01017 = phi i64 [ 0, %24 ], [ %.111, %32 ]
  %26 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.1318
  %27 = load i64, ptr %26, align 8
  %.not8 = icmp eq i64 %27, 0
  br i1 %.not8, label %31, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.01017
  store i64 %.1318, ptr %29, align 8
  %30 = add i64 %.01017, 1
  br label %31

31:                                               ; preds = %28, %25
  %.111 = phi i64 [ %30, %28 ], [ %.01017, %25 ]
  br label %32

32:                                               ; preds = %31
  %33 = add nuw nsw i64 %.1318, 1
  %34 = icmp samesign ult i64 %33, 256
  br i1 %34, label %25, label %35, !llvm.loop !10

35:                                               ; preds = %32
  %.010.lcssa = phi i64 [ %.111, %32 ]
  %.not19 = icmp eq i64 %.010.lcssa, 0
  br i1 %.not19, label %41, label %.lr.ph22

.lr.ph22:                                         ; preds = %35
  br label %36

36:                                               ; preds = %.lr.ph22, %39
  %.2420 = phi i64 [ %.010.lcssa, %.lr.ph22 ], [ %40, %39 ]
  %37 = trunc i64 %.010.lcssa to i32
  %38 = trunc i64 %.2420 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %37, i32 noundef %38)
  br label %39

39:                                               ; preds = %36
  %40 = add i64 %.2420, -1
  %.not = icmp eq i64 %40, 0
  br i1 %.not, label %._crit_edge23, label %36, !llvm.loop !11

._crit_edge23:                                    ; preds = %39
  br label %41

41:                                               ; preds = %._crit_edge23, %35
  %42 = icmp ugt i64 %.010.lcssa, 1
  br i1 %42, label %.lr.ph26, label %67

.lr.ph26:                                         ; preds = %41
  br label %43

43:                                               ; preds = %.lr.ph26, %43
  %.21224 = phi i64 [ %.010.lcssa, %.lr.ph26 ], [ %44, %43 ]
  %44 = add i64 %.21224, -1
  %45 = load i64, ptr %4, align 16
  %46 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %44
  %47 = load i64, ptr %46, align 8
  store i64 %47, ptr %4, align 16
  %48 = trunc i64 %44 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %48, i32 noundef 1)
  %49 = load i64, ptr %4, align 16
  %50 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %49
  %51 = load i64, ptr %50, align 8
  %52 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %45
  %53 = load i64, ptr %52, align 8
  %54 = add i64 %51, %53
  %55 = getelementptr [8 x i8], ptr %3, i64 %.21224
  %56 = getelementptr i8, ptr %55, i64 2040
  store i64 %54, ptr %56, align 8
  %57 = trunc i64 %.21224 to i32
  %58 = add i32 %57, 255
  %59 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %45
  store i32 %58, ptr %59, align 4
  %60 = trunc i64 %.21224 to i32
  %61 = sub i32 -255, %60
  %62 = load i64, ptr %4, align 16
  %63 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %62
  store i32 %61, ptr %63, align 4
  %64 = add i64 %.21224, 255
  store i64 %64, ptr %4, align 16
  %65 = trunc i64 %44 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %65, i32 noundef 1)
  %66 = icmp ugt i64 %44, 1
  br i1 %66, label %43, label %._crit_edge27, !llvm.loop !12

._crit_edge27:                                    ; preds = %43
  %split = phi i64 [ %44, %43 ]
  br label %67

67:                                               ; preds = %._crit_edge27, %41
  %.212.lcssa = phi i64 [ %split, %._crit_edge27 ], [ %.010.lcssa, %41 ]
  %68 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 1024
  store i32 0, ptr %69, align 4
  br label %70

70:                                               ; preds = %67, %98
  %.03942 = phi i64 [ 0, %67 ], [ %.140, %98 ]
  %.04241 = phi i64 [ 0, %67 ], [ %99, %98 ]
  %.04540 = phi i64 [ 0, %67 ], [ %.146, %98 ]
  %71 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04241
  %72 = load i64, ptr %71, align 8
  %.not6 = icmp eq i64 %72, 0
  br i1 %.not6, label %73, label %76

73:                                               ; preds = %70
  %74 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04241
  store i32 0, ptr %74, align 4
  %75 = getelementptr inbounds nuw i8, ptr %7, i64 %.04241
  store i8 0, ptr %75, align 1
  br label %97

76:                                               ; preds = %70
  %.037.in28 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.04241
  %.03729 = load i32, ptr %.037.in28, align 4
  %.not730 = icmp eq i32 %.03729, 0
  br i1 %.not730, label %86, label %.lr.ph36

.lr.ph36:                                         ; preds = %76
  br label %77

77:                                               ; preds = %.lr.ph36, %82
  %.03734 = phi i32 [ %.03729, %.lr.ph36 ], [ %.037, %82 ]
  %.333 = phi i64 [ 0, %.lr.ph36 ], [ %85, %82 ]
  %.0532 = phi i64 [ 1, %.lr.ph36 ], [ %84, %82 ]
  %.04331 = phi i64 [ 0, %.lr.ph36 ], [ %.144, %82 ]
  %78 = icmp slt i32 %.03734, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %77
  %80 = add i64 %.04331, %.0532
  %81 = sub nsw i32 0, %.03734
  br label %82

82:                                               ; preds = %79, %77
  %.144 = phi i64 [ %80, %79 ], [ %.04331, %77 ]
  %.138 = phi i32 [ %81, %79 ], [ %.03734, %77 ]
  %83 = zext nneg i32 %.138 to i64
  %84 = shl i64 %.0532, 1
  %85 = add i64 %.333, 1
  %.037.in = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %83
  %.037 = load i32, ptr %.037.in, align 4
  %.not7 = icmp eq i32 %.037, 0
  br i1 %.not7, label %._crit_edge37, label %77, !llvm.loop !13

._crit_edge37:                                    ; preds = %82
  %split38 = phi i64 [ %.144, %82 ]
  %split39 = phi i64 [ %85, %82 ]
  br label %86

86:                                               ; preds = %._crit_edge37, %76
  %.043.lcssa = phi i64 [ %split38, %._crit_edge37 ], [ 0, %76 ]
  %.3.lcssa = phi i64 [ %split39, %._crit_edge37 ], [ 0, %76 ]
  %87 = trunc i64 %.043.lcssa to i32
  %88 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04241
  store i32 %87, ptr %88, align 4
  %89 = trunc i64 %.3.lcssa to i8
  %90 = getelementptr inbounds nuw i8, ptr %7, i64 %.04241
  store i8 %89, ptr %90, align 1
  %91 = icmp ugt i64 %.043.lcssa, %.04540
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %93

93:                                               ; preds = %92, %86
  %.247 = phi i64 [ %.043.lcssa, %92 ], [ %.04540, %86 ]
  %94 = icmp ugt i64 %.3.lcssa, %.03942
  br i1 %94, label %95, label %96

95:                                               ; preds = %93
  br label %96

96:                                               ; preds = %95, %93
  %.241 = phi i64 [ %.3.lcssa, %95 ], [ %.03942, %93 ]
  br label %97

97:                                               ; preds = %96, %73
  %.146 = phi i64 [ %.247, %96 ], [ %.04540, %73 ]
  %.140 = phi i64 [ %.241, %96 ], [ %.03942, %73 ]
  br label %98

98:                                               ; preds = %97
  %99 = add nuw nsw i64 %.04241, 1
  %100 = icmp samesign ult i64 %99, 256
  br i1 %100, label %70, label %101, !llvm.loop !14

101:                                              ; preds = %98
  %.045.lcssa = phi i64 [ %.146, %98 ]
  %.039.lcssa = phi i64 [ %.140, %98 ]
  %102 = icmp ugt i64 %.039.lcssa, 32
  br i1 %102, label %103, label %106

103:                                              ; preds = %101
  %104 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %105 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %104)
  call void @exit(i32 noundef 1) #9
  unreachable

106:                                              ; preds = %101
  %107 = icmp eq i64 %.045.lcssa, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %106
  %109 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %110 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %109)
  call void @exit(i32 noundef 1) #9
  unreachable

111:                                              ; preds = %106
  %112 = icmp ult i64 0, %1
  br i1 %112, label %.lr.ph60, label %165

.lr.ph60:                                         ; preds = %111
  br label %113

113:                                              ; preds = %.lr.ph60, %161
  %.0158 = phi i32 [ -1, %.lr.ph60 ], [ %.1.lcssa, %161 ]
  %.1657 = phi i64 [ 0, %.lr.ph60 ], [ %163, %161 ]
  %.02456 = phi i8 [ 0, %.lr.ph60 ], [ %.125.lcssa, %161 ]
  %.02855 = phi i64 [ 0, %.lr.ph60 ], [ %.129.lcssa, %161 ]
  %.13454 = phi ptr [ %0, %.lr.ph60 ], [ %162, %161 ]
  %114 = load i8, ptr %.13454, align 1
  %115 = zext i8 %114 to i64
  %116 = getelementptr inbounds nuw i8, ptr %7, i64 %115
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i32
  %119 = add nsw i32 %118, -1
  %120 = shl nuw i32 1, %119
  %121 = sext i32 %120 to i64
  %122 = load i8, ptr %.13454, align 1
  %123 = zext i8 %122 to i64
  %124 = getelementptr inbounds nuw i8, ptr %7, i64 %123
  %125 = load i8, ptr %124, align 1
  %126 = zext i8 %125 to i64
  %127 = icmp ult i64 0, %126
  br i1 %127, label %.lr.ph49, label %160

.lr.ph49:                                         ; preds = %113
  br label %128

128:                                              ; preds = %.lr.ph49, %151
  %.147 = phi i32 [ %.0158, %.lr.ph49 ], [ %.2, %151 ]
  %.446 = phi i64 [ 0, %.lr.ph49 ], [ %153, %151 ]
  %.01545 = phi i64 [ %121, %.lr.ph49 ], [ %152, %151 ]
  %.12544 = phi i8 [ %.02456, %.lr.ph49 ], [ %.327, %151 ]
  %.12943 = phi i64 [ %.02855, %.lr.ph49 ], [ %.230, %151 ]
  %129 = icmp eq i32 %.147, 7
  br i1 %129, label %130, label %138

130:                                              ; preds = %128
  %131 = getelementptr inbounds nuw i8, ptr %11, i64 %.12943
  store i8 %.12544, ptr %131, align 1
  %132 = add i64 %.12943, 1
  %133 = icmp eq i64 %132, %1
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %136 = call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %135)
  call void @exit(i32 noundef 1) #9
  unreachable

137:                                              ; preds = %130
  br label %141

138:                                              ; preds = %128
  %139 = add nsw i32 %.147, 1
  %140 = shl i8 %.12544, 1
  br label %141

141:                                              ; preds = %138, %137
  %.230 = phi i64 [ %132, %137 ], [ %.12943, %138 ]
  %.226 = phi i8 [ 0, %137 ], [ %140, %138 ]
  %.2 = phi i32 [ 0, %137 ], [ %139, %138 ]
  %142 = load i8, ptr %.13454, align 1
  %143 = zext i8 %142 to i64
  %144 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %143
  %145 = load i32, ptr %144, align 4
  %146 = zext i32 %145 to i64
  %147 = and i64 %.01545, %146
  %.not5 = icmp eq i64 %147, 0
  br i1 %.not5, label %150, label %148

148:                                              ; preds = %141
  %149 = or disjoint i8 %.226, 1
  br label %150

150:                                              ; preds = %148, %141
  %.327 = phi i8 [ %149, %148 ], [ %.226, %141 ]
  br label %151

151:                                              ; preds = %150
  %152 = lshr i64 %.01545, 1
  %153 = add i64 %.446, 1
  %154 = load i8, ptr %.13454, align 1
  %155 = zext i8 %154 to i64
  %156 = getelementptr inbounds nuw i8, ptr %7, i64 %155
  %157 = load i8, ptr %156, align 1
  %158 = zext i8 %157 to i64
  %159 = icmp ult i64 %153, %158
  br i1 %159, label %128, label %._crit_edge50, !llvm.loop !15

._crit_edge50:                                    ; preds = %151
  %split51 = phi i64 [ %.230, %151 ]
  %split52 = phi i8 [ %.327, %151 ]
  %split53 = phi i32 [ %.2, %151 ]
  br label %160

160:                                              ; preds = %._crit_edge50, %113
  %.129.lcssa = phi i64 [ %split51, %._crit_edge50 ], [ %.02855, %113 ]
  %.125.lcssa = phi i8 [ %split52, %._crit_edge50 ], [ %.02456, %113 ]
  %.1.lcssa = phi i32 [ %split53, %._crit_edge50 ], [ %.0158, %113 ]
  br label %161

161:                                              ; preds = %160
  %162 = getelementptr inbounds nuw i8, ptr %.13454, i64 1
  %163 = add i64 %.1657, 1
  %164 = icmp ult i64 %163, %1
  br i1 %164, label %113, label %._crit_edge61, !llvm.loop !16

._crit_edge61:                                    ; preds = %161
  %split62 = phi i64 [ %.129.lcssa, %161 ]
  %split63 = phi i8 [ %.125.lcssa, %161 ]
  %split64 = phi i32 [ %.1.lcssa, %161 ]
  br label %165

165:                                              ; preds = %._crit_edge61, %111
  %.028.lcssa = phi i64 [ %split62, %._crit_edge61 ], [ 0, %111 ]
  %.024.lcssa = phi i8 [ %split63, %._crit_edge61 ], [ 0, %111 ]
  %.01.lcssa = phi i32 [ %split64, %._crit_edge61 ], [ -1, %111 ]
  %166 = sub nsw i32 7, %.01.lcssa
  %167 = zext i8 %.024.lcssa to i32
  %168 = shl i32 %167, %166
  %169 = trunc i32 %168 to i8
  %170 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %169, ptr %170, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %171

171:                                              ; preds = %165, %210
  %.073 = phi ptr [ %9, %165 ], [ %173, %210 ]
  %.2772 = phi i64 [ 0, %165 ], [ %211, %210 ]
  %172 = trunc nuw i64 %.2772 to i8
  store i8 %172, ptr %.073, align 1
  %173 = getelementptr inbounds nuw i8, ptr %.073, i64 1
  %174 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.2772
  %175 = load i32, ptr %174, align 4
  %176 = getelementptr inbounds nuw i8, ptr %7, i64 %.2772
  %177 = load i8, ptr %176, align 1
  %178 = zext i8 %177 to i32
  %179 = or i32 %175, %178
  %.not3 = icmp eq i32 %179, 0
  br i1 %.not3, label %209, label %180

180:                                              ; preds = %171
  %181 = getelementptr inbounds nuw i8, ptr %7, i64 %.2772
  %182 = load i8, ptr %181, align 1
  %183 = zext i8 %182 to i32
  %184 = add nsw i32 %183, -1
  %185 = shl nuw i32 1, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds nuw i8, ptr %7, i64 %.2772
  %188 = load i8, ptr %187, align 1
  %189 = zext i8 %188 to i64
  %190 = icmp ult i64 0, %189
  br i1 %190, label %.lr.ph69, label %207

.lr.ph69:                                         ; preds = %180
  br label %191

191:                                              ; preds = %.lr.ph69, %201
  %.567 = phi i64 [ 0, %.lr.ph69 ], [ %203, %201 ]
  %.11666 = phi i64 [ %186, %.lr.ph69 ], [ %202, %201 ]
  %.01965 = phi i32 [ 0, %.lr.ph69 ], [ %.120, %201 ]
  %192 = shl i32 %.01965, 1
  %193 = or disjoint i32 %192, 1
  %194 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.2772
  %195 = load i32, ptr %194, align 4
  %196 = zext i32 %195 to i64
  %197 = and i64 %.11666, %196
  %.not4 = icmp eq i64 %197, 0
  br i1 %.not4, label %200, label %198

198:                                              ; preds = %191
  %199 = add i32 %192, 2
  br label %200

200:                                              ; preds = %198, %191
  %.120 = phi i32 [ %199, %198 ], [ %193, %191 ]
  br label %201

201:                                              ; preds = %200
  %202 = lshr i64 %.11666, 1
  %203 = add i64 %.567, 1
  %204 = load i8, ptr %187, align 1
  %205 = zext i8 %204 to i64
  %206 = icmp ult i64 %203, %205
  br i1 %206, label %191, label %._crit_edge70, !llvm.loop !17

._crit_edge70:                                    ; preds = %201
  %split71 = phi i32 [ %.120, %201 ]
  br label %207

207:                                              ; preds = %._crit_edge70, %180
  %.019.lcssa = phi i32 [ %split71, %._crit_edge70 ], [ 0, %180 ]
  %208 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.2772
  store i32 %.019.lcssa, ptr %208, align 4
  br label %209

209:                                              ; preds = %207, %171
  br label %210

210:                                              ; preds = %209
  %211 = add nuw nsw i64 %.2772, 1
  %212 = icmp samesign ult i64 %211, 256
  br i1 %212, label %171, label %213, !llvm.loop !18

213:                                              ; preds = %210
  br label %214

214:                                              ; preds = %213, %240
  %.674 = phi i64 [ 1, %213 ], [ %241, %240 ]
  %215 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.674
  %216 = load i32, ptr %215, align 4
  %217 = getelementptr inbounds nuw i8, ptr %9, i64 %.674
  %218 = load i8, ptr %217, align 1
  br label %219

219:                                              ; preds = %227, %214
  %.38 = phi i64 [ %.674, %214 ], [ %236, %227 ]
  %.not2 = icmp eq i64 %.38, 0
  br i1 %.not2, label %225, label %220

220:                                              ; preds = %219
  %221 = getelementptr [4 x i8], ptr %8, i64 %.38
  %222 = getelementptr i8, ptr %221, i64 -4
  %223 = load i32, ptr %222, align 4
  %224 = icmp ugt i32 %223, %216
  br label %225

225:                                              ; preds = %220, %219
  %226 = phi i1 [ false, %219 ], [ %224, %220 ]
  br i1 %226, label %227, label %237

227:                                              ; preds = %225
  %228 = getelementptr [4 x i8], ptr %8, i64 %.38
  %229 = getelementptr i8, ptr %228, i64 -4
  %230 = load i32, ptr %229, align 4
  %231 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %230, ptr %231, align 4
  %232 = getelementptr i8, ptr %9, i64 %.38
  %233 = getelementptr i8, ptr %232, i64 -1
  %234 = load i8, ptr %233, align 1
  %235 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %234, ptr %235, align 1
  %236 = add i64 %.38, -1
  br label %219, !llvm.loop !19

237:                                              ; preds = %225
  %.38.lcssa = phi i64 [ %.38, %225 ]
  %238 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38.lcssa
  store i32 %216, ptr %238, align 4
  %239 = getelementptr inbounds nuw i8, ptr %9, i64 %.38.lcssa
  store i8 %218, ptr %239, align 1
  br label %240

240:                                              ; preds = %237
  %241 = add nuw nsw i64 %.674, 1
  %242 = icmp samesign ult i64 %241, 256
  br i1 %242, label %214, label %243, !llvm.loop !20

243:                                              ; preds = %240
  %244 = load i32, ptr %8, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %.lr.ph77, label %252

.lr.ph77:                                         ; preds = %243
  br label %246

246:                                              ; preds = %.lr.ph77, %247
  %.4975 = phi i64 [ 0, %.lr.ph77 ], [ %248, %247 ]
  br label %247

247:                                              ; preds = %246
  %248 = add i64 %.4975, 1
  %249 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %248
  %250 = load i32, ptr %249, align 4
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %246, label %._crit_edge78, !llvm.loop !21

._crit_edge78:                                    ; preds = %247
  %split79 = phi i64 [ %248, %247 ]
  br label %252

252:                                              ; preds = %._crit_edge78, %243
  %.49.lcssa = phi i64 [ %split79, %._crit_edge78 ], [ 0, %243 ]
  %253 = icmp ult i64 0, %1
  br i1 %253, label %.lr.ph87, label %285

.lr.ph87:                                         ; preds = %252
  br label %254

254:                                              ; preds = %.lr.ph87, %283
  %.785 = phi i64 [ %.49.lcssa, %.lr.ph87 ], [ %.9, %283 ]
  %.31384 = phi i64 [ 0, %.lr.ph87 ], [ %.414, %283 ]
  %.21783 = phi i64 [ 128, %.lr.ph87 ], [ %.318, %283 ]
  %.22182 = phi i32 [ 0, %.lr.ph87 ], [ %.423, %283 ]
  %.03181 = phi ptr [ %11, %.lr.ph87 ], [ %.132, %283 ]
  %.23580 = phi ptr [ %0, %.lr.ph87 ], [ %.336, %283 ]
  %255 = shl i32 %.22182, 1
  %256 = or disjoint i32 %255, 1
  %257 = load i8, ptr %.03181, align 1
  %258 = zext i8 %257 to i64
  %259 = and i64 %.21783, %258
  %.not1 = icmp eq i64 %259, 0
  br i1 %.not1, label %262, label %260

260:                                              ; preds = %254
  %261 = add i32 %255, 2
  br label %262

262:                                              ; preds = %260, %254
  %.322 = phi i32 [ %261, %260 ], [ %256, %254 ]
  br label %263

263:                                              ; preds = %263, %262
  %.8 = phi i64 [ %.785, %262 ], [ %267, %263 ]
  %264 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %265 = load i32, ptr %264, align 4
  %266 = icmp ult i32 %265, %.322
  %267 = add i64 %.8, 1
  br i1 %266, label %263, label %268, !llvm.loop !22

268:                                              ; preds = %263
  %.8.lcssa = phi i64 [ %.8, %263 ]
  %269 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8.lcssa
  %270 = load i32, ptr %269, align 4
  %271 = icmp eq i32 %.322, %270
  br i1 %271, label %272, label %277

272:                                              ; preds = %268
  %273 = getelementptr inbounds nuw i8, ptr %9, i64 %.8.lcssa
  %274 = load i8, ptr %273, align 1
  store i8 %274, ptr %.23580, align 1
  %275 = getelementptr inbounds nuw i8, ptr %.23580, i64 1
  %276 = add i64 %.31384, 1
  br label %277

277:                                              ; preds = %272, %268
  %.336 = phi ptr [ %275, %272 ], [ %.23580, %268 ]
  %.423 = phi i32 [ 0, %272 ], [ %.322, %268 ]
  %.414 = phi i64 [ %276, %272 ], [ %.31384, %268 ]
  %.9 = phi i64 [ %.49.lcssa, %272 ], [ %.8.lcssa, %268 ]
  %278 = icmp ugt i64 %.21783, 1
  br i1 %278, label %279, label %281

279:                                              ; preds = %277
  %280 = lshr i64 %.21783, 1
  br label %283

281:                                              ; preds = %277
  %282 = getelementptr inbounds nuw i8, ptr %.03181, i64 1
  br label %283

283:                                              ; preds = %281, %279
  %.132 = phi ptr [ %.03181, %279 ], [ %282, %281 ]
  %.318 = phi i64 [ %280, %279 ], [ 128, %281 ]
  %284 = icmp ult i64 %.414, %1
  br i1 %284, label %254, label %._crit_edge88, !llvm.loop !23

._crit_edge88:                                    ; preds = %283
  br label %285

285:                                              ; preds = %._crit_edge88, %252
  call void @free(ptr noundef %11) #8
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
  %.not4 = icmp sgt i32 %3, %9
  br i1 %.not4, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %4
  br label %10

10:                                               ; preds = %.lr.ph, %40
  %.015 = phi i32 [ %3, %.lr.ph ], [ %.0, %40 ]
  %11 = shl nsw i32 %.015, 1
  %12 = icmp slt i32 %11, %2
  br i1 %12, label %13, label %28

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
  br i1 %25, label %26, label %28

26:                                               ; preds = %13
  %27 = or disjoint i32 %11, 1
  br label %28

28:                                               ; preds = %26, %13, %10
  %.0 = phi i32 [ %27, %26 ], [ %11, %13 ], [ %11, %10 ]
  %sext = shl i64 %8, 32
  %29 = ashr exact i64 %sext, 29
  %30 = getelementptr inbounds i8, ptr %0, i64 %29
  %31 = load i64, ptr %30, align 8
  %32 = sext i32 %.0 to i64
  %33 = getelementptr [8 x i8], ptr %1, i64 %32
  %34 = getelementptr i8, ptr %33, i64 -8
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %35
  %37 = load i64, ptr %36, align 8
  %38 = icmp ult i64 %31, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  %.01.lcssa2 = phi i32 [ %.015, %28 ]
  br label %48

40:                                               ; preds = %28
  %41 = sext i32 %.0 to i64
  %42 = getelementptr [8 x i8], ptr %1, i64 %41
  %43 = getelementptr i8, ptr %42, i64 -8
  %44 = load i64, ptr %43, align 8
  %45 = sext i32 %.015 to i64
  %46 = getelementptr [8 x i8], ptr %1, i64 %45
  %47 = getelementptr i8, ptr %46, i64 -8
  store i64 %44, ptr %47, align 8
  %.not = icmp sgt i32 %.0, %9
  br i1 %.not, label %..loopexit_crit_edge, label %10, !llvm.loop !24

..loopexit_crit_edge:                             ; preds = %40
  %split = phi i32 [ %.0, %40 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  %.01.lcssa = phi i32 [ %split, %..loopexit_crit_edge ], [ %3, %4 ]
  br label %48

48:                                               ; preds = %.loopexit, %39
  %.013 = phi i32 [ %.01.lcssa, %.loopexit ], [ %.01.lcssa2, %39 ]
  %sext1 = shl i64 %8, 32
  %49 = ashr exact i64 %sext1, 32
  %50 = sext i32 %.013 to i64
  %51 = getelementptr [8 x i8], ptr %1, i64 %50
  %52 = getelementptr i8, ptr %51, i64 -8
  store i64 %49, ptr %52, align 8
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
  br i1 %3, label %4, label %17

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4, %12
  %6 = phi i1 [ false, %4 ], [ %14, %12 ]
  %.013 = phi i32 [ 1, %4 ], [ %13, %12 ]
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %8 = load ptr, ptr %7, align 8
  %9 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(4) @.str.4) #8
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %10, label %11

10:                                               ; preds = %5
  %.lcssa2 = phi i1 [ %6, %5 ]
  br label %15

11:                                               ; preds = %5
  br label %12

12:                                               ; preds = %11
  %13 = add nuw nsw i32 %.013, 1
  %14 = icmp sge i32 %13, %0
  br i1 %14, label %.loopexit, label %5, !llvm.loop !25

.loopexit:                                        ; preds = %12
  %.lcssa = phi i1 [ %14, %12 ]
  br label %15

15:                                               ; preds = %.loopexit, %10
  %16 = phi i1 [ %.lcssa, %.loopexit ], [ %.lcssa2, %10 ]
  br label %17

17:                                               ; preds = %15, %2
  %.0 = phi i1 [ %16, %15 ], [ true, %2 ]
  %18 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %19

19:                                               ; preds = %17, %20
  %.124 = phi i32 [ 0, %17 ], [ %21, %20 ]
  call void @compdecomp(ptr noundef %18, i64 noundef 10000000)
  br label %20

20:                                               ; preds = %19
  %21 = add nuw nsw i32 %.124, 1
  %22 = icmp samesign ult i32 %21, 30
  br i1 %22, label %19, label %23, !llvm.loop !26

23:                                               ; preds = %20
  call void @free(ptr noundef %18) #8
  br i1 %.0, label %27, label %24

24:                                               ; preds = %23
  %25 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.5, double noundef 0.000000e+00) #8
  br label %30

27:                                               ; preds = %23
  %28 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.6, double noundef 0.000000e+00) #8
  br label %30

30:                                               ; preds = %27, %24
  %31 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %32 = call i32 @fflush(ptr noundef %31) #8
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
  %.neg = mul i32 %3, -127773
  %4 = add i32 %.neg, %2
  %5 = mul nsw i32 %4, 16807
  %.neg1 = mul nsw i32 %3, -2836
  %6 = add i32 %.neg1, %5
  store i32 %6, ptr @seed, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, ptr @seed, align 4
  %10 = add nsw i32 %9, 2147483647
  store i32 %10, ptr @seed, align 4
  br label %11

11:                                               ; preds = %8, %0
  %12 = load i32, ptr @seed, align 4
  %13 = srem i32 %12, 32
  %14 = sext i32 %13 to i64
  %15 = xor i32 %12, 123459876
  store i32 %15, ptr @seed, align 4
  ret i64 %14
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) #6

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }
attributes #9 = { cold noreturn nounwind }

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
