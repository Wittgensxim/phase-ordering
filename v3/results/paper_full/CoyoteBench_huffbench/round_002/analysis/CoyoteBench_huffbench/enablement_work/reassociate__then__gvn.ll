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
  br label %3

3:                                                ; preds = %6, %1
  %.01 = phi ptr [ %2, %1 ], [ %10, %6 ]
  %.0 = phi i32 [ 0, %1 ], [ %11, %6 ]
  %4 = sext i32 %.0 to i64
  %5 = icmp ult i64 %4, %0
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = call i64 @random4()
  %8 = getelementptr inbounds nuw i8, ptr @.str, i64 %7
  %9 = load i8, ptr %8, align 1
  store i8 %9, ptr %.01, align 1
  %10 = getelementptr inbounds nuw i8, ptr %.01, i32 1
  %11 = add nsw i32 %.0, 1
  br label %3, !llvm.loop !7

12:                                               ; preds = %3
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
  br label %12

12:                                               ; preds = %14, %2
  %.033 = phi ptr [ %0, %2 ], [ %20, %14 ]
  %.02 = phi i64 [ 0, %2 ], [ %21, %14 ]
  %13 = icmp ult i64 %.02, %1
  br i1 %13, label %14, label %22

14:                                               ; preds = %12
  %15 = load i8, ptr %.033, align 1
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %16
  %18 = load i64, ptr %17, align 8
  %19 = add i64 %18, 1
  store i64 %19, ptr %17, align 8
  %20 = getelementptr inbounds nuw i8, ptr %.033, i32 1
  %21 = add i64 %.02, 1
  br label %12, !llvm.loop !9

22:                                               ; preds = %31, %12
  %.010 = phi i64 [ %.111, %31 ], [ 0, %12 ]
  %.13 = phi i64 [ %32, %31 ], [ 0, %12 ]
  %23 = icmp ult i64 %.13, 256
  br i1 %23, label %24, label %33

24:                                               ; preds = %22
  %25 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.13
  %26 = load i64, ptr %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %.010
  store i64 %.13, ptr %29, align 8
  %30 = add i64 %.010, 1
  br label %31

31:                                               ; preds = %28, %24
  %.111 = phi i64 [ %30, %28 ], [ %.010, %24 ]
  %32 = add i64 %.13, 1
  br label %22, !llvm.loop !10

33:                                               ; preds = %35, %22
  %.24 = phi i64 [ %38, %35 ], [ %.010, %22 ]
  %34 = icmp ugt i64 %.24, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  %36 = trunc i64 %.010 to i32
  %37 = trunc i64 %.24 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %36, i32 noundef %37)
  %38 = add i64 %.24, -1
  br label %33, !llvm.loop !11

39:                                               ; preds = %41, %33
  %.212 = phi i64 [ %42, %41 ], [ %.010, %33 ]
  %40 = icmp ugt i64 %.212, 1
  br i1 %40, label %41, label %60

41:                                               ; preds = %39
  %42 = add i64 %.212, -1
  %43 = load i64, ptr %4, align 16
  %44 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %42
  %45 = load i64, ptr %44, align 8
  store i64 %45, ptr %4, align 16
  %46 = trunc i64 %42 to i32
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %46, i32 noundef 1)
  %47 = load i64, ptr %4, align 16
  %48 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %47
  %49 = load i64, ptr %48, align 8
  %50 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %43
  %51 = load i64, ptr %50, align 8
  %52 = add i64 %51, %49
  %53 = add i64 %42, 256
  %54 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %53
  store i64 %52, ptr %54, align 8
  %55 = trunc i64 %53 to i32
  %56 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %43
  store i32 %55, ptr %56, align 4
  %57 = sub i64 -256, %42
  %58 = trunc i64 %57 to i32
  %59 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %47
  store i32 %58, ptr %59, align 4
  store i64 %53, ptr %4, align 16
  call void @heap_adjust(ptr noundef %3, ptr noundef %4, i32 noundef %46, i32 noundef 1)
  br label %39, !llvm.loop !12

60:                                               ; preds = %39
  %61 = add i64 %.212, 256
  %62 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %61
  store i32 0, ptr %62, align 4
  br label %63

63:                                               ; preds = %93, %60
  %.045 = phi i64 [ 0, %60 ], [ %.146, %93 ]
  %.042 = phi i64 [ 0, %60 ], [ %94, %93 ]
  %.039 = phi i64 [ 0, %60 ], [ %.140, %93 ]
  %64 = icmp ult i64 %.042, 256
  br i1 %64, label %65, label %95

65:                                               ; preds = %63
  %66 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %.042
  %67 = load i64, ptr %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 0, ptr %70, align 4
  %71 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 0, ptr %71, align 1
  br label %93

72:                                               ; preds = %65
  %73 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %.042
  %74 = load i32, ptr %73, align 4
  br label %75

75:                                               ; preds = %77, %72
  %.043 = phi i64 [ 0, %72 ], [ %.144, %77 ]
  %.037 = phi i32 [ %74, %72 ], [ %83, %77 ]
  %.05 = phi i64 [ 1, %72 ], [ %84, %77 ]
  %.3 = phi i64 [ 0, %72 ], [ %85, %77 ]
  %76 = icmp ne i32 %.037, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %75
  %78 = icmp slt i32 %.037, 0
  %79 = add i64 %.05, %.043
  %80 = sub nsw i32 0, %.037
  %.144 = select i1 %78, i64 %79, i64 %.043
  %.138 = select i1 %78, i32 %80, i32 %.037
  %81 = sext i32 %.138 to i64
  %82 = getelementptr inbounds [512 x i32], ptr %5, i64 0, i64 %81
  %83 = load i32, ptr %82, align 4
  %84 = shl i64 %.05, 1
  %85 = add i64 %.3, 1
  br label %75, !llvm.loop !13

86:                                               ; preds = %75
  %87 = trunc i64 %.043 to i32
  %88 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.042
  store i32 %87, ptr %88, align 4
  %89 = trunc i64 %.3 to i8
  %90 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.042
  store i8 %89, ptr %90, align 1
  %91 = icmp ugt i64 %.043, %.045
  %spec.select = select i1 %91, i64 %.043, i64 %.045
  %92 = icmp ugt i64 %.3, %.039
  %.241 = select i1 %92, i64 %.3, i64 %.039
  br label %93

93:                                               ; preds = %86, %69
  %.146 = phi i64 [ %spec.select, %86 ], [ %.045, %69 ]
  %.140 = phi i64 [ %.241, %86 ], [ %.039, %69 ]
  %94 = add i64 %.042, 1
  br label %63, !llvm.loop !14

95:                                               ; preds = %63
  %96 = icmp ugt i64 %.039, 32
  br i1 %96, label %97, label %100

97:                                               ; preds = %95
  %98 = call ptr @__acrt_iob_func(i32 noundef 2)
  %99 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %98, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

100:                                              ; preds = %95
  %101 = icmp eq i64 %.045, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %100
  %103 = call ptr @__acrt_iob_func(i32 noundef 2)
  %104 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %103, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

105:                                              ; preds = %149, %100
  %.134 = phi ptr [ %150, %149 ], [ %0, %100 ]
  %.028 = phi i64 [ %.129, %149 ], [ 0, %100 ]
  %.024 = phi i8 [ %.125, %149 ], [ 0, %100 ]
  %.16 = phi i64 [ %151, %149 ], [ 0, %100 ]
  %.01 = phi i32 [ %.1, %149 ], [ -1, %100 ]
  %106 = icmp ult i64 %.16, %1
  br i1 %106, label %107, label %152

107:                                              ; preds = %105
  %108 = load i8, ptr %.134, align 1
  %109 = zext i8 %108 to i64
  %110 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %109
  %111 = load i8, ptr %110, align 1
  %112 = zext i8 %111 to i32
  %113 = sub nsw i32 %112, 1
  %114 = shl i32 1, %113
  %115 = sext i32 %114 to i64
  br label %116

116:                                              ; preds = %137, %107
  %117 = phi i8 [ %108, %107 ], [ %138, %137 ]
  %118 = phi i8 [ %111, %107 ], [ %.pre, %137 ]
  %.129 = phi i64 [ %.028, %107 ], [ %.230, %137 ]
  %.125 = phi i8 [ %.024, %107 ], [ %.327, %137 ]
  %.015 = phi i64 [ %115, %107 ], [ %147, %137 ]
  %.4 = phi i64 [ 0, %107 ], [ %148, %137 ]
  %.1 = phi i32 [ %.01, %107 ], [ %.2, %137 ]
  %119 = zext i8 %117 to i64
  %120 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %119
  %121 = zext i8 %118 to i64
  %122 = icmp ult i64 %.4, %121
  br i1 %122, label %123, label %149

123:                                              ; preds = %116
  %124 = icmp eq i32 %.1, 7
  br i1 %124, label %125, label %132

125:                                              ; preds = %123
  %126 = getelementptr inbounds nuw i8, ptr %11, i64 %.129
  store i8 %.125, ptr %126, align 1
  %127 = add i64 %.129, 1
  %128 = icmp eq i64 %127, %1
  br i1 %128, label %129, label %._crit_edge

._crit_edge:                                      ; preds = %125
  %.pre1 = load i8, ptr %.134, align 1
  %.pre2 = zext i8 %.pre1 to i64
  br label %137

129:                                              ; preds = %125
  %130 = call ptr @__acrt_iob_func(i32 noundef 2)
  %131 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

132:                                              ; preds = %123
  %133 = add nsw i32 %.1, 1
  %134 = sext i8 %.125 to i32
  %135 = shl i32 %134, 1
  %136 = trunc i32 %135 to i8
  br label %137

137:                                              ; preds = %._crit_edge, %132
  %.pre-phi = phi i64 [ %.pre2, %._crit_edge ], [ %119, %132 ]
  %138 = phi i8 [ %117, %132 ], [ %.pre1, %._crit_edge ]
  %.230 = phi i64 [ %.129, %132 ], [ %127, %._crit_edge ]
  %.226 = phi i8 [ %136, %132 ], [ 0, %._crit_edge ]
  %.2 = phi i32 [ %133, %132 ], [ 0, %._crit_edge ]
  %139 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.pre-phi
  %140 = load i32, ptr %139, align 4
  %141 = zext i32 %140 to i64
  %142 = and i64 %141, %.015
  %143 = icmp ne i64 %142, 0
  %144 = sext i8 %.226 to i32
  %145 = or i32 %144, 1
  %146 = trunc i32 %145 to i8
  %.327 = select i1 %143, i8 %146, i8 %.226
  %147 = lshr i64 %.015, 1
  %148 = add i64 %.4, 1
  %.phi.trans.insert = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.pre-phi
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %116, !llvm.loop !15

149:                                              ; preds = %116
  %150 = getelementptr inbounds nuw i8, ptr %.134, i32 1
  %151 = add i64 %.16, 1
  br label %105, !llvm.loop !16

152:                                              ; preds = %105
  %153 = sub nsw i32 7, %.01
  %154 = sext i8 %.024 to i32
  %155 = shl i32 %154, %153
  %156 = trunc i32 %155 to i8
  %157 = getelementptr inbounds nuw i8, ptr %11, i64 %.028
  store i8 %156, ptr %157, align 1
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 1024, i1 false)
  br label %158

158:                                              ; preds = %188, %152
  %.27 = phi i64 [ 0, %152 ], [ %189, %188 ]
  %.0 = phi ptr [ %9, %152 ], [ %162, %188 ]
  %159 = icmp ult i64 %.27, 256
  br i1 %159, label %160, label %190

160:                                              ; preds = %158
  %161 = trunc i64 %.27 to i8
  store i8 %161, ptr %.0, align 1
  %162 = getelementptr inbounds nuw i8, ptr %.0, i32 1
  %163 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %.27
  %164 = load i32, ptr %163, align 4
  %165 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %.27
  %166 = load i8, ptr %165, align 1
  %167 = zext i8 %166 to i32
  %168 = or i32 %167, %164
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %188

170:                                              ; preds = %160
  %171 = sub nsw i32 %167, 1
  %172 = shl i32 1, %171
  %173 = sext i32 %172 to i64
  br label %174

174:                                              ; preds = %177, %170
  %.019 = phi i32 [ 0, %170 ], [ %spec.select1, %177 ]
  %.116 = phi i64 [ %173, %170 ], [ %184, %177 ]
  %.5 = phi i64 [ 0, %170 ], [ %185, %177 ]
  %175 = zext i8 %166 to i64
  %176 = icmp ult i64 %.5, %175
  br i1 %176, label %177, label %186

177:                                              ; preds = %174
  %178 = mul i32 %.019, 2
  %179 = add i32 %178, 1
  %180 = zext i32 %164 to i64
  %181 = and i64 %180, %.116
  %182 = icmp ne i64 %181, 0
  %183 = add i32 %179, 1
  %spec.select1 = select i1 %182, i32 %183, i32 %179
  %184 = lshr i64 %.116, 1
  %185 = add i64 %.5, 1
  br label %174, !llvm.loop !17

186:                                              ; preds = %174
  %187 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.27
  store i32 %.019, ptr %187, align 4
  br label %188

188:                                              ; preds = %186, %160
  %189 = add i64 %.27, 1
  br label %158, !llvm.loop !18

190:                                              ; preds = %.critedge, %158
  %.6 = phi i64 [ %212, %.critedge ], [ 1, %158 ]
  %191 = icmp ult i64 %.6, 256
  br i1 %191, label %192, label %213

192:                                              ; preds = %190
  %193 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.6
  %194 = load i32, ptr %193, align 4
  %195 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.6
  %196 = load i8, ptr %195, align 1
  br label %197

197:                                              ; preds = %204, %192
  %.38 = phi i64 [ %.6, %192 ], [ %209, %204 ]
  %198 = icmp ne i64 %.38, 0
  br i1 %198, label %199, label %.critedge

199:                                              ; preds = %197
  %200 = sub i64 %.38, 1
  %201 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %200
  %202 = load i32, ptr %201, align 4
  %203 = icmp ugt i32 %202, %194
  br i1 %203, label %204, label %.critedge

204:                                              ; preds = %199
  %205 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %202, ptr %205, align 4
  %206 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %200
  %207 = load i8, ptr %206, align 1
  %208 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %207, ptr %208, align 1
  %209 = add i64 %.38, -1
  br label %197, !llvm.loop !19

.critedge:                                        ; preds = %199, %197
  %210 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.38
  store i32 %194, ptr %210, align 4
  %211 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.38
  store i8 %196, ptr %211, align 1
  %212 = add i64 %.6, 1
  br label %190, !llvm.loop !20

213:                                              ; preds = %217, %190
  %.49 = phi i64 [ %218, %217 ], [ 0, %190 ]
  %214 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.49
  %215 = load i32, ptr %214, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %213
  %218 = add i64 %.49, 1
  br label %213, !llvm.loop !21

219:                                              ; preds = %242, %213
  %.235 = phi ptr [ %.336, %242 ], [ %0, %213 ]
  %.031 = phi ptr [ %.132, %242 ], [ %11, %213 ]
  %.221 = phi i32 [ %.423, %242 ], [ 0, %213 ]
  %.217 = phi i64 [ %.318, %242 ], [ 128, %213 ]
  %.313 = phi i64 [ %.414, %242 ], [ 0, %213 ]
  %.7 = phi i64 [ %.9, %242 ], [ %.49, %213 ]
  %220 = icmp ult i64 %.313, %1
  br i1 %220, label %221, label %246

221:                                              ; preds = %219
  %222 = mul i32 %.221, 2
  %223 = add i32 %222, 1
  %224 = load i8, ptr %.031, align 1
  %225 = zext i8 %224 to i64
  %226 = and i64 %225, %.217
  %227 = icmp ne i64 %226, 0
  %228 = add i32 %223, 1
  %spec.select2 = select i1 %227, i32 %228, i32 %223
  br label %229

229:                                              ; preds = %233, %221
  %.8 = phi i64 [ %.7, %221 ], [ %234, %233 ]
  %230 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %.8
  %231 = load i32, ptr %230, align 4
  %232 = icmp ult i32 %231, %spec.select2
  br i1 %232, label %233, label %235

233:                                              ; preds = %229
  %234 = add i64 %.8, 1
  br label %229, !llvm.loop !22

235:                                              ; preds = %229
  %236 = icmp eq i32 %spec.select2, %231
  br i1 %236, label %237, label %242

237:                                              ; preds = %235
  %238 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %.8
  %239 = load i8, ptr %238, align 1
  store i8 %239, ptr %.235, align 1
  %240 = getelementptr inbounds nuw i8, ptr %.235, i32 1
  %241 = add i64 %.313, 1
  br label %242

242:                                              ; preds = %237, %235
  %.336 = phi ptr [ %240, %237 ], [ %.235, %235 ]
  %.423 = phi i32 [ 0, %237 ], [ %spec.select2, %235 ]
  %.414 = phi i64 [ %241, %237 ], [ %.313, %235 ]
  %.9 = phi i64 [ %.49, %237 ], [ %.8, %235 ]
  %243 = icmp ugt i64 %.217, 1
  %244 = lshr i64 %.217, 1
  %245 = getelementptr inbounds nuw i8, ptr %.031, i32 1
  %.132 = select i1 %243, ptr %.031, ptr %245
  %.318 = select i1 %243, i64 %244, i64 128
  br label %219, !llvm.loop !23

246:                                              ; preds = %219
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
  br label %10

10:                                               ; preds = %40, %4
  %.01 = phi i32 [ %3, %4 ], [ %.0, %40 ]
  %11 = sdiv i32 %2, 2
  %12 = icmp sle i32 %.01, %11
  br i1 %12, label %13, label %._crit_edge

._crit_edge:                                      ; preds = %10
  %.pre = sext i32 %9 to i64
  br label %44

13:                                               ; preds = %10
  %factor = mul i32 %.01, 2
  %14 = icmp slt i32 %factor, %2
  br i1 %14, label %15, label %29

15:                                               ; preds = %13
  %16 = sub nsw i32 %factor, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, ptr %1, i64 %17
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds nuw i64, ptr %0, i64 %19
  %21 = load i64, ptr %20, align 8
  %22 = sext i32 %factor to i64
  %23 = getelementptr inbounds i64, ptr %1, i64 %22
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds nuw i64, ptr %0, i64 %24
  %26 = load i64, ptr %25, align 8
  %27 = icmp ugt i64 %21, %26
  %28 = add nsw i32 %factor, 1
  %spec.select = select i1 %27, i32 %28, i32 %factor
  br label %29

29:                                               ; preds = %15, %13
  %.0 = phi i32 [ %factor, %13 ], [ %spec.select, %15 ]
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
  br i1 %39, label %split, label %40

40:                                               ; preds = %29
  %41 = sub nsw i32 %.01, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, ptr %1, i64 %42
  store i64 %36, ptr %43, align 8
  br label %10, !llvm.loop !24

split:                                            ; preds = %29
  br label %44

44:                                               ; preds = %split, %._crit_edge
  %.pre-phi = phi i64 [ %30, %split ], [ %.pre, %._crit_edge ]
  %45 = sub nsw i32 %.01, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, ptr %1, i64 %46
  store i64 %.pre-phi, ptr %47, align 8
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
  br i1 %3, label %4, label %13

4:                                                ; preds = %11, %2
  %.01 = phi i32 [ %12, %11 ], [ 1, %2 ]
  %5 = icmp slt i32 %.01, %0
  br i1 %5, label %6, label %13

6:                                                ; preds = %4
  %7 = getelementptr inbounds ptr, ptr %1, i64 1
  %8 = load ptr, ptr %7, align 8
  %9 = call i32 @strcmp(ptr noundef %8, ptr noundef @.str.4) #7
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = add nsw i32 %.01, 1
  br label %4, !llvm.loop !25

13:                                               ; preds = %6, %4, %2
  %.0 = phi i8 [ 0, %2 ], [ 0, %4 ], [ 1, %6 ]
  %14 = call ptr @generate_test_data(i64 noundef 10000000)
  br label %15

15:                                               ; preds = %17, %13
  %.12 = phi i32 [ 0, %13 ], [ %18, %17 ]
  %16 = icmp slt i32 %.12, 30
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  call void @compdecomp(ptr noundef %14, i64 noundef 10000000)
  %18 = add nsw i32 %.12, 1
  br label %15, !llvm.loop !26

19:                                               ; preds = %15
  call void @free(ptr noundef %14)
  %20 = icmp ne i8 %.0, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = call ptr @__acrt_iob_func(i32 noundef 1)
  %23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.5, double noundef 0.000000e+00) #7
  br label %27

24:                                               ; preds = %19
  %25 = call ptr @__acrt_iob_func(i32 noundef 1)
  %26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.6, double noundef 0.000000e+00) #7
  br label %27

27:                                               ; preds = %24, %21
  %28 = call ptr @__acrt_iob_func(i32 noundef 1)
  %29 = call i32 @fflush(ptr noundef %28)
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
  %6 = mul nsw i32 %5, 16807
  %7 = mul nsw i32 %3, 2836
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
