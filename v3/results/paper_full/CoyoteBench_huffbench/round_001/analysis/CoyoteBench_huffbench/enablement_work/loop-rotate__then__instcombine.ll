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
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %12, label %.lr.ph

.lr.ph:                                           ; preds = %1
  br label %3

3:                                                ; preds = %.lr.ph, %7
  %.02 = phi i32 [ 0, %.lr.ph ], [ %9, %7 ]
  %.011 = phi ptr [ %2, %.lr.ph ], [ %8, %7 ]
  %4 = call i64 @random4()
  %5 = getelementptr inbounds nuw i8, ptr @.str, i64 %4
  %6 = load i8, ptr %5, align 1
  store i8 %6, ptr %.011, align 1
  br label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %.011, i64 1
  %9 = add nuw nsw i32 %.02, 1
  %10 = zext nneg i32 %9 to i64
  %11 = icmp ugt i64 %0, %10
  br i1 %11, label %3, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %7
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
  %11 = call ptr @malloc(i64 noundef %10) #7
  %12 = add i64 %1, 1
  call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %12, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %3, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %4, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %5, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %6, i8 0, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %7, i8 0, i64 256, i1 false)
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %23, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %13

13:                                               ; preds = %.lr.ph, %19
  %.029 = phi i64 [ 0, %.lr.ph ], [ %21, %19 ]
  %.0337 = phi ptr [ %0, %.lr.ph ], [ %20, %19 ]
  %14 = load i8, ptr %.0337, align 1
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %15
  %17 = load i64, ptr %16, align 8
  %18 = add i64 %17, 1
  store i64 %18, ptr %16, align 8
  br label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds nuw i8, ptr %.0337, i64 1
  %21 = add i64 %.029, 1
  %22 = icmp ult i64 %21, %1
  br i1 %22, label %13, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %19
  br label %23

23:                                               ; preds = %._crit_edge, %2
  br label %24

24:                                               ; preds = %23, %31
  %.1311 = phi i64 [ 0, %23 ], [ %32, %31 ]
  %.01010 = phi i64 [ 0, %23 ], [ %.111, %31 ]
  %25 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.1311
  %26 = load i64, ptr %25, align 8
  %.not78 = icmp eq i64 %26, 0
  br i1 %.not78, label %30, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.01010
  store i64 %.1311, ptr %28, align 8
  %29 = add i64 %.01010, 1
  br label %30

30:                                               ; preds = %27, %24
  %.111 = phi i64 [ %29, %27 ], [ %.01010, %24 ]
  br label %31

31:                                               ; preds = %30
  %32 = add nuw nsw i64 %.1311, 1
  %33 = icmp samesign ult i64 %.1311, 255
  br i1 %33, label %24, label %34, !llvm.loop !10

34:                                               ; preds = %31
  %.not79 = icmp eq i64 %.111, 0
  br i1 %.not79, label %40, label %.lr.ph14

.lr.ph14:                                         ; preds = %34
  br label %35

35:                                               ; preds = %.lr.ph14, %38
  %.2412 = phi i64 [ %.111, %.lr.ph14 ], [ %39, %38 ]
  %36 = trunc i64 %.111 to i32
  %37 = trunc i64 %.2412 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %36, i32 noundef %37)
  br label %38

38:                                               ; preds = %35
  %39 = add i64 %.2412, -1
  %.not80 = icmp eq i64 %39, 0
  br i1 %.not80, label %._crit_edge15, label %35, !llvm.loop !11

._crit_edge15:                                    ; preds = %38
  br label %40

40:                                               ; preds = %._crit_edge15, %34
  %41 = icmp ugt i64 %.111, 1
  br i1 %41, label %.lr.ph18, label %66

.lr.ph18:                                         ; preds = %40
  br label %42

42:                                               ; preds = %.lr.ph18, %42
  %.21216 = phi i64 [ %.111, %.lr.ph18 ], [ %43, %42 ]
  %43 = add i64 %.21216, -1
  %44 = load i64, ptr %4, align 16
  %45 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %43
  %46 = load i64, ptr %45, align 8
  store i64 %46, ptr %4, align 16
  %47 = trunc i64 %43 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %47, i32 noundef 1)
  %48 = load i64, ptr %4, align 16
  %49 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %48
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %44
  %52 = load i64, ptr %51, align 8
  %53 = add i64 %50, %52
  %54 = getelementptr [8 x i8], ptr %3, i64 %.21216
  %55 = getelementptr i8, ptr %54, i64 2040
  store i64 %53, ptr %55, align 8
  %56 = trunc i64 %.21216 to i32
  %57 = add i32 %56, 255
  %58 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %44
  store i32 %57, ptr %58, align 4
  %59 = trunc i64 %.21216 to i32
  %60 = sub i32 -255, %59
  %61 = load i64, ptr %4, align 16
  %62 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %61
  store i32 %60, ptr %62, align 4
  %63 = add i64 %.21216, 255
  store i64 %63, ptr %4, align 16
  %64 = trunc i64 %43 to i32
  call void @heap_adjust(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %64, i32 noundef 1)
  %65 = icmp ugt i64 %43, 1
  br i1 %65, label %42, label %._crit_edge19, !llvm.loop !12

._crit_edge19:                                    ; preds = %42
  br label %66

66:                                               ; preds = %._crit_edge19, %40
  %.212.lcssa = phi i64 [ %43, %._crit_edge19 ], [ %.111, %40 ]
  %67 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.212.lcssa
  %68 = getelementptr inbounds nuw i8, ptr %67, i64 1024
  store i32 0, ptr %68, align 4
  br label %69

69:                                               ; preds = %66, %101
  %.03931 = phi i64 [ 0, %66 ], [ %.140, %101 ]
  %.04230 = phi i64 [ 0, %66 ], [ %102, %101 ]
  %.04529 = phi i64 [ 0, %66 ], [ %.146, %101 ]
  %70 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04230
  %71 = load i64, ptr %70, align 8
  %.not81 = icmp eq i64 %71, 0
  br i1 %.not81, label %72, label %75

72:                                               ; preds = %69
  %73 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04230
  store i32 0, ptr %73, align 4
  %74 = getelementptr inbounds nuw i8, ptr %7, i64 %.04230
  store i8 0, ptr %74, align 1
  br label %100

75:                                               ; preds = %69
  %76 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.04230
  %77 = load i32, ptr %76, align 4
  %.not82 = icmp eq i32 %77, 0
  br i1 %.not82, label %89, label %.lr.ph25

.lr.ph25:                                         ; preds = %75
  br label %78

78:                                               ; preds = %.lr.ph25, %83
  %.323 = phi i64 [ 0, %.lr.ph25 ], [ %88, %83 ]
  %.0522 = phi i64 [ 1, %.lr.ph25 ], [ %87, %83 ]
  %.03721 = phi i32 [ %77, %.lr.ph25 ], [ %86, %83 ]
  %.04320 = phi i64 [ 0, %.lr.ph25 ], [ %.144, %83 ]
  %79 = icmp slt i32 %.03721, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %78
  %81 = add i64 %.04320, %.0522
  %82 = sub nsw i32 0, %.03721
  br label %83

83:                                               ; preds = %80, %78
  %.144 = phi i64 [ %81, %80 ], [ %.04320, %78 ]
  %.138 = phi i32 [ %82, %80 ], [ %.03721, %78 ]
  %84 = zext nneg i32 %.138 to i64
  %85 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %84
  %86 = load i32, ptr %85, align 4
  %87 = shl i64 %.0522, 1
  %88 = add i64 %.323, 1
  %.not83 = icmp eq i32 %86, 0
  br i1 %.not83, label %._crit_edge26, label %78, !llvm.loop !13

._crit_edge26:                                    ; preds = %83
  br label %89

89:                                               ; preds = %._crit_edge26, %75
  %.043.lcssa = phi i64 [ %.144, %._crit_edge26 ], [ 0, %75 ]
  %.3.lcssa = phi i64 [ %88, %._crit_edge26 ], [ 0, %75 ]
  %90 = trunc i64 %.043.lcssa to i32
  %91 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04230
  store i32 %90, ptr %91, align 4
  %92 = trunc i64 %.3.lcssa to i8
  %93 = getelementptr inbounds nuw i8, ptr %7, i64 %.04230
  store i8 %92, ptr %93, align 1
  %94 = icmp ugt i64 %.043.lcssa, %.04529
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %95, %89
  %.247 = phi i64 [ %.043.lcssa, %95 ], [ %.04529, %89 ]
  %97 = icmp ugt i64 %.3.lcssa, %.03931
  br i1 %97, label %98, label %99

98:                                               ; preds = %96
  br label %99

99:                                               ; preds = %98, %96
  %.241 = phi i64 [ %.3.lcssa, %98 ], [ %.03931, %96 ]
  br label %100

100:                                              ; preds = %99, %72
  %.146 = phi i64 [ %.247, %99 ], [ %.04529, %72 ]
  %.140 = phi i64 [ %.241, %99 ], [ %.03931, %72 ]
  br label %101

101:                                              ; preds = %100
  %102 = add nuw nsw i64 %.04230, 1
  %103 = icmp samesign ult i64 %.04230, 255
  br i1 %103, label %69, label %104, !llvm.loop !14

104:                                              ; preds = %101
  %105 = icmp ugt i64 %.140, 32
  br i1 %105, label %106, label %109

106:                                              ; preds = %104
  %107 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %108 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %107)
  call void @exit(i32 noundef 1) #9
  unreachable

109:                                              ; preds = %104
  %110 = icmp eq i64 %.146, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %109
  %112 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %113 = call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %112)
  call void @exit(i32 noundef 1) #9
  unreachable

114:                                              ; preds = %109
  %.not84 = icmp eq i64 %1, 0
  br i1 %.not84, label %169, label %.lr.ph49

.lr.ph49:                                         ; preds = %114
  br label %115

115:                                              ; preds = %.lr.ph49, %161
  %.0147 = phi i32 [ -1, %.lr.ph49 ], [ %.1.lcssa, %161 ]
  %.1646 = phi i64 [ 0, %.lr.ph49 ], [ %163, %161 ]
  %.02445 = phi i8 [ 0, %.lr.ph49 ], [ %.125.lcssa, %161 ]
  %.02844 = phi i64 [ 0, %.lr.ph49 ], [ %.129.lcssa, %161 ]
  %.13443 = phi ptr [ %0, %.lr.ph49 ], [ %162, %161 ]
  %116 = load i8, ptr %.13443, align 1
  %117 = zext i8 %116 to i64
  %118 = getelementptr inbounds nuw i8, ptr %7, i64 %117
  %119 = load i8, ptr %118, align 1
  %.not85 = icmp eq i8 %119, 0
  br i1 %.not85, label %160, label %.lr.ph38

.lr.ph38:                                         ; preds = %115
  %120 = load i8, ptr %.13443, align 1
  %121 = zext i8 %120 to i64
  %122 = getelementptr inbounds nuw i8, ptr %7, i64 %121
  %123 = load i8, ptr %122, align 1
  %124 = zext i8 %123 to i32
  %125 = add nsw i32 %124, -1
  %126 = shl nuw i32 1, %125
  %127 = sext i32 %126 to i64
  br label %128

128:                                              ; preds = %.lr.ph38, %151
  %.136 = phi i32 [ %.0147, %.lr.ph38 ], [ %.2, %151 ]
  %.435 = phi i64 [ 0, %.lr.ph38 ], [ %153, %151 ]
  %.01534 = phi i64 [ %127, %.lr.ph38 ], [ %152, %151 ]
  %.12533 = phi i8 [ %.02445, %.lr.ph38 ], [ %.327, %151 ]
  %.12932 = phi i64 [ %.02844, %.lr.ph38 ], [ %.230, %151 ]
  %129 = icmp eq i32 %.136, 7
  br i1 %129, label %130, label %138

130:                                              ; preds = %128
  %131 = getelementptr inbounds nuw i8, ptr %11, i64 %.12932
  store i8 %.12533, ptr %131, align 1
  %132 = add i64 %.12932, 1
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
  %139 = add nsw i32 %.136, 1
  %140 = shl i8 %.12533, 1
  br label %141

141:                                              ; preds = %138, %137
  %.230 = phi i64 [ %132, %137 ], [ %.12932, %138 ]
  %.226 = phi i8 [ 0, %137 ], [ %140, %138 ]
  %.2 = phi i32 [ 0, %137 ], [ %139, %138 ]
  %142 = load i8, ptr %.13443, align 1
  %143 = zext i8 %142 to i64
  %144 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %143
  %145 = load i32, ptr %144, align 4
  %146 = zext i32 %145 to i64
  %147 = and i64 %.01534, %146
  %.not86 = icmp eq i64 %147, 0
  br i1 %.not86, label %150, label %148

148:                                              ; preds = %141
  %149 = or disjoint i8 %.226, 1
  br label %150

150:                                              ; preds = %148, %141
  %.327 = phi i8 [ %149, %148 ], [ %.226, %141 ]
  br label %151

151:                                              ; preds = %150
  %152 = lshr i64 %.01534, 1
  %153 = add i64 %.435, 1
  %154 = load i8, ptr %.13443, align 1
  %155 = zext i8 %154 to i64
  %156 = getelementptr inbounds nuw i8, ptr %7, i64 %155
  %157 = load i8, ptr %156, align 1
  %158 = zext i8 %157 to i64
  %159 = icmp ult i64 %153, %158
  br i1 %159, label %128, label %._crit_edge39, !llvm.loop !15

._crit_edge39:                                    ; preds = %151
  br label %160

160:                                              ; preds = %._crit_edge39, %115
  %.129.lcssa = phi i64 [ %.230, %._crit_edge39 ], [ %.02844, %115 ]
  %.125.lcssa = phi i8 [ %.327, %._crit_edge39 ], [ %.02445, %115 ]
  %.1.lcssa = phi i32 [ %.2, %._crit_edge39 ], [ %.0147, %115 ]
  br label %161

161:                                              ; preds = %160
  %162 = getelementptr inbounds nuw i8, ptr %.13443, i64 1
  %163 = add i64 %.1646, 1
  %164 = icmp ult i64 %163, %1
  br i1 %164, label %115, label %._crit_edge50, !llvm.loop !16

._crit_edge50:                                    ; preds = %161
  %165 = sub nsw i32 7, %.1.lcssa
  %166 = zext i8 %.125.lcssa to i32
  %167 = shl i32 %166, %165
  %168 = trunc i32 %167 to i8
  br label %169

169:                                              ; preds = %._crit_edge50, %114
  %.028.lcssa = phi i64 [ %.129.lcssa, %._crit_edge50 ], [ 0, %114 ]
  %170 = phi i8 [ %168, %._crit_edge50 ], [ 0, %114 ]
  %171 = getelementptr inbounds nuw i8, ptr %11, i64 %.028.lcssa
  store i8 %170, ptr %171, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  br label %172

172:                                              ; preds = %169, %209
  %.062 = phi ptr [ %9, %169 ], [ %174, %209 ]
  %.2761 = phi i64 [ 0, %169 ], [ %210, %209 ]
  %173 = trunc nuw i64 %.2761 to i8
  store i8 %173, ptr %.062, align 1
  %174 = getelementptr inbounds nuw i8, ptr %.062, i64 1
  %175 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.2761
  %176 = load i32, ptr %175, align 4
  %177 = getelementptr inbounds nuw i8, ptr %7, i64 %.2761
  %178 = load i8, ptr %177, align 1
  %179 = zext i8 %178 to i32
  %180 = or i32 %176, %179
  %.not87 = icmp eq i32 %180, 0
  br i1 %.not87, label %208, label %181

181:                                              ; preds = %172
  %182 = getelementptr inbounds nuw i8, ptr %7, i64 %.2761
  %183 = load i8, ptr %182, align 1
  %.not88 = icmp eq i8 %183, 0
  br i1 %.not88, label %206, label %.lr.ph58

.lr.ph58:                                         ; preds = %181
  %184 = getelementptr inbounds nuw i8, ptr %7, i64 %.2761
  %185 = load i8, ptr %184, align 1
  %186 = zext i8 %185 to i32
  %187 = add nsw i32 %186, -1
  %188 = shl nuw i32 1, %187
  %189 = sext i32 %188 to i64
  br label %190

190:                                              ; preds = %.lr.ph58, %200
  %.556 = phi i64 [ 0, %.lr.ph58 ], [ %202, %200 ]
  %.11655 = phi i64 [ %189, %.lr.ph58 ], [ %201, %200 ]
  %.01954 = phi i32 [ 0, %.lr.ph58 ], [ %.120, %200 ]
  %191 = shl i32 %.01954, 1
  %192 = or disjoint i32 %191, 1
  %193 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.2761
  %194 = load i32, ptr %193, align 4
  %195 = zext i32 %194 to i64
  %196 = and i64 %.11655, %195
  %.not89 = icmp eq i64 %196, 0
  br i1 %.not89, label %199, label %197

197:                                              ; preds = %190
  %198 = add i32 %191, 2
  br label %199

199:                                              ; preds = %197, %190
  %.120 = phi i32 [ %198, %197 ], [ %192, %190 ]
  br label %200

200:                                              ; preds = %199
  %201 = lshr i64 %.11655, 1
  %202 = add i64 %.556, 1
  %203 = load i8, ptr %182, align 1
  %204 = zext i8 %203 to i64
  %205 = icmp ult i64 %202, %204
  br i1 %205, label %190, label %._crit_edge59, !llvm.loop !17

._crit_edge59:                                    ; preds = %200
  br label %206

206:                                              ; preds = %._crit_edge59, %181
  %.019.lcssa = phi i32 [ %.120, %._crit_edge59 ], [ 0, %181 ]
  %207 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.2761
  store i32 %.019.lcssa, ptr %207, align 4
  br label %208

208:                                              ; preds = %206, %172
  br label %209

209:                                              ; preds = %208
  %210 = add nuw nsw i64 %.2761, 1
  %211 = icmp samesign ult i64 %.2761, 255
  br i1 %211, label %172, label %212, !llvm.loop !18

212:                                              ; preds = %209
  br label %213

213:                                              ; preds = %212, %239
  %.663 = phi i64 [ 1, %212 ], [ %240, %239 ]
  %214 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.663
  %215 = load i32, ptr %214, align 4
  %216 = getelementptr inbounds nuw i8, ptr %9, i64 %.663
  %217 = load i8, ptr %216, align 1
  br label %218

218:                                              ; preds = %226, %213
  %.38 = phi i64 [ %.663, %213 ], [ %235, %226 ]
  %.not90 = icmp eq i64 %.38, 0
  br i1 %.not90, label %224, label %219

219:                                              ; preds = %218
  %220 = getelementptr [4 x i8], ptr %8, i64 %.38
  %221 = getelementptr i8, ptr %220, i64 -4
  %222 = load i32, ptr %221, align 4
  %223 = icmp ugt i32 %222, %215
  br label %224

224:                                              ; preds = %219, %218
  %225 = phi i1 [ false, %218 ], [ %223, %219 ]
  br i1 %225, label %226, label %236

226:                                              ; preds = %224
  %227 = getelementptr [4 x i8], ptr %8, i64 %.38
  %228 = getelementptr i8, ptr %227, i64 -4
  %229 = load i32, ptr %228, align 4
  %230 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %229, ptr %230, align 4
  %231 = getelementptr i8, ptr %9, i64 %.38
  %232 = getelementptr i8, ptr %231, i64 -1
  %233 = load i8, ptr %232, align 1
  %234 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %233, ptr %234, align 1
  %235 = add i64 %.38, -1
  br label %218, !llvm.loop !19

236:                                              ; preds = %224
  %237 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.38
  store i32 %215, ptr %237, align 4
  %238 = getelementptr inbounds nuw i8, ptr %9, i64 %.38
  store i8 %217, ptr %238, align 1
  br label %239

239:                                              ; preds = %236
  %240 = add nuw nsw i64 %.663, 1
  %241 = icmp samesign ult i64 %.663, 255
  br i1 %241, label %213, label %242, !llvm.loop !20

242:                                              ; preds = %239
  %243 = load i32, ptr %8, align 4
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %.lr.ph66, label %251

.lr.ph66:                                         ; preds = %242
  br label %245

245:                                              ; preds = %.lr.ph66, %246
  %.4964 = phi i64 [ 0, %.lr.ph66 ], [ %247, %246 ]
  br label %246

246:                                              ; preds = %245
  %247 = add i64 %.4964, 1
  %248 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %247
  %249 = load i32, ptr %248, align 4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %245, label %._crit_edge67, !llvm.loop !21

._crit_edge67:                                    ; preds = %246
  br label %251

251:                                              ; preds = %._crit_edge67, %242
  %.49.lcssa = phi i64 [ %247, %._crit_edge67 ], [ 0, %242 ]
  %.not91 = icmp eq i64 %1, 0
  br i1 %.not91, label %283, label %.lr.ph76

.lr.ph76:                                         ; preds = %251
  br label %252

252:                                              ; preds = %.lr.ph76, %281
  %.774 = phi i64 [ %.49.lcssa, %.lr.ph76 ], [ %.9, %281 ]
  %.31373 = phi i64 [ 0, %.lr.ph76 ], [ %.414, %281 ]
  %.21772 = phi i64 [ 128, %.lr.ph76 ], [ %.318, %281 ]
  %.22171 = phi i32 [ 0, %.lr.ph76 ], [ %.423, %281 ]
  %.03170 = phi ptr [ %11, %.lr.ph76 ], [ %.132, %281 ]
  %.23569 = phi ptr [ %0, %.lr.ph76 ], [ %.336, %281 ]
  %253 = shl i32 %.22171, 1
  %254 = or disjoint i32 %253, 1
  %255 = load i8, ptr %.03170, align 1
  %256 = zext i8 %255 to i64
  %257 = and i64 %.21772, %256
  %.not92 = icmp eq i64 %257, 0
  br i1 %.not92, label %260, label %258

258:                                              ; preds = %252
  %259 = add i32 %253, 2
  br label %260

260:                                              ; preds = %258, %252
  %.322 = phi i32 [ %259, %258 ], [ %254, %252 ]
  br label %261

261:                                              ; preds = %261, %260
  %.8 = phi i64 [ %.774, %260 ], [ %265, %261 ]
  %262 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %263 = load i32, ptr %262, align 4
  %264 = icmp ult i32 %263, %.322
  %265 = add i64 %.8, 1
  br i1 %264, label %261, label %266, !llvm.loop !22

266:                                              ; preds = %261
  %267 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.8
  %268 = load i32, ptr %267, align 4
  %269 = icmp eq i32 %.322, %268
  br i1 %269, label %270, label %275

270:                                              ; preds = %266
  %271 = getelementptr inbounds nuw i8, ptr %9, i64 %.8
  %272 = load i8, ptr %271, align 1
  store i8 %272, ptr %.23569, align 1
  %273 = getelementptr inbounds nuw i8, ptr %.23569, i64 1
  %274 = add i64 %.31373, 1
  br label %275

275:                                              ; preds = %270, %266
  %.336 = phi ptr [ %273, %270 ], [ %.23569, %266 ]
  %.423 = phi i32 [ 0, %270 ], [ %.322, %266 ]
  %.414 = phi i64 [ %274, %270 ], [ %.31373, %266 ]
  %.9 = phi i64 [ %.49.lcssa, %270 ], [ %.8, %266 ]
  %276 = icmp ugt i64 %.21772, 1
  br i1 %276, label %277, label %279

277:                                              ; preds = %275
  %278 = lshr i64 %.21772, 1
  br label %281

279:                                              ; preds = %275
  %280 = getelementptr inbounds nuw i8, ptr %.03170, i64 1
  br label %281

281:                                              ; preds = %279, %277
  %.132 = phi ptr [ %.03170, %277 ], [ %280, %279 ]
  %.318 = phi i64 [ %278, %277 ], [ 128, %279 ]
  %282 = icmp ult i64 %.414, %1
  br i1 %282, label %252, label %._crit_edge77, !llvm.loop !23

._crit_edge77:                                    ; preds = %281
  br label %283

283:                                              ; preds = %._crit_edge77, %251
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
  %.not = icmp sgt i32 %3, %9
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %4
  br label %10

10:                                               ; preds = %.lr.ph, %40
  %.013 = phi i32 [ %3, %.lr.ph ], [ %.0, %40 ]
  %11 = shl nsw i32 %.013, 1
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
  br label %48

40:                                               ; preds = %28
  %41 = sext i32 %.0 to i64
  %42 = getelementptr [8 x i8], ptr %1, i64 %41
  %43 = getelementptr i8, ptr %42, i64 -8
  %44 = load i64, ptr %43, align 8
  %45 = sext i32 %.013 to i64
  %46 = getelementptr [8 x i8], ptr %1, i64 %45
  %47 = getelementptr i8, ptr %46, i64 -8
  store i64 %44, ptr %47, align 8
  %.not4 = icmp sgt i32 %.0, %9
  br i1 %.not4, label %..loopexit_crit_edge, label %10, !llvm.loop !24

..loopexit_crit_edge:                             ; preds = %40
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  %.01.lcssa = phi i32 [ %.0, %..loopexit_crit_edge ], [ %3, %4 ]
  br label %48

48:                                               ; preds = %.loopexit, %39
  %.012 = phi i32 [ %.01.lcssa, %.loopexit ], [ %.013, %39 ]
  %sext5 = shl i64 %8, 32
  %49 = ashr exact i64 %sext5, 32
  %50 = sext i32 %.012 to i64
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
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4, %11
  %.011 = phi i32 [ 1, %4 ], [ %12, %11 ]
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %7 = load ptr, ptr %6, align 8
  %8 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(4) @.str.4) #8
  %.not = icmp ne i32 %8, 0
  br i1 %.not, label %10, label %9

9:                                                ; preds = %5
  br label %14

10:                                               ; preds = %5
  br label %11

11:                                               ; preds = %10
  %12 = add nuw nsw i32 %.011, 1
  %13 = icmp slt i32 %12, %0
  br i1 %13, label %5, label %.loopexit, !llvm.loop !25

.loopexit:                                        ; preds = %11
  br label %14

14:                                               ; preds = %.loopexit, %9
  br label %15

15:                                               ; preds = %14, %2
  %.0 = phi i1 [ %.not, %14 ], [ true, %2 ]
  %16 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %17

17:                                               ; preds = %15, %18
  %.122 = phi i32 [ 0, %15 ], [ %19, %18 ]
  call void @compdecomp(ptr noundef %16, i64 noundef 10000000)
  br label %18

18:                                               ; preds = %17
  %19 = add nuw nsw i32 %.122, 1
  %20 = icmp samesign ult i32 %.122, 29
  br i1 %20, label %17, label %21, !llvm.loop !26

21:                                               ; preds = %18
  call void @free(ptr noundef %16) #8
  br i1 %.0, label %25, label %22

22:                                               ; preds = %21
  %23 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.5, double noundef 0.000000e+00) #8
  br label %28

25:                                               ; preds = %21
  %26 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.6, double noundef 0.000000e+00) #8
  br label %28

28:                                               ; preds = %25, %22
  %29 = call ptr @__acrt_iob_func(i32 noundef 1) #8
  %30 = call i32 @fflush(ptr noundef %29) #8
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
