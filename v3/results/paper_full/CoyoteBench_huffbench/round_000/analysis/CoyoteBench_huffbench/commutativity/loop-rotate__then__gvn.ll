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
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store i64 %0, ptr %2, align 8
  store ptr @.str, ptr %3, align 8
  %7 = call ptr @malloc(i64 noundef %0) #6
  store ptr %7, ptr %4, align 8
  store ptr %7, ptr %5, align 8
  store i32 0, ptr %6, align 4
  %8 = icmp ult i64 0, %0
  br i1 %8, label %.lr.ph, label %19

.lr.ph:                                           ; preds = %1
  br label %9

9:                                                ; preds = %.lr.ph, %9
  %10 = phi i32 [ 0, %.lr.ph ], [ %16, %9 ]
  %11 = phi ptr [ %7, %.lr.ph ], [ %15, %9 ]
  %12 = call i64 @random4()
  %13 = getelementptr inbounds nuw i8, ptr @.str, i64 %12
  %14 = load i8, ptr %13, align 1
  store i8 %14, ptr %11, align 1
  %15 = getelementptr inbounds nuw i8, ptr %11, i32 1
  store ptr %15, ptr %5, align 8
  %16 = add nsw i32 %10, 1
  store i32 %16, ptr %6, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, %0
  br i1 %18, label %9, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %9
  br label %19

19:                                               ; preds = %._crit_edge, %1
  ret ptr %7
}

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @compdecomp(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca [512 x i64], align 16
  %16 = alloca [256 x i64], align 16
  %17 = alloca [512 x i32], align 16
  %18 = alloca [256 x i32], align 16
  %19 = alloca [256 x i8], align 16
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i8, align 1
  %28 = alloca i32, align 4
  %29 = alloca [256 x i32], align 16
  %30 = alloca [256 x i8], align 16
  %31 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  store ptr %0, ptr %13, align 8
  %32 = add i64 %1, 1
  %33 = call ptr @malloc(i64 noundef %32) #6
  store ptr %33, ptr %14, align 8
  call void @llvm.memset.p0.i64(ptr align 1 %33, i8 0, i64 %32, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %15, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %16, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %17, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %18, i8 0, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %19, i8 0, i64 256, i1 false)
  store i64 0, ptr %5, align 8
  %34 = icmp ult i64 0, %1
  br i1 %34, label %.lr.ph, label %46

.lr.ph:                                           ; preds = %2
  br label %35

35:                                               ; preds = %.lr.ph, %35
  %36 = phi i64 [ 0, %.lr.ph ], [ %44, %35 ]
  %37 = phi ptr [ %0, %.lr.ph ], [ %43, %35 ]
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %39
  %41 = load i64, ptr %40, align 8
  %42 = add i64 %41, 1
  store i64 %42, ptr %40, align 8
  %43 = getelementptr inbounds nuw i8, ptr %37, i32 1
  store ptr %43, ptr %13, align 8
  %44 = add i64 %36, 1
  store i64 %44, ptr %5, align 8
  %45 = icmp ult i64 %44, %1
  br i1 %45, label %35, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %35
  br label %46

46:                                               ; preds = %._crit_edge, %2
  store i64 0, ptr %7, align 8
  store i64 0, ptr %5, align 8
  br i1 true, label %.lr.ph2, label %._crit_edge40

._crit_edge40:                                    ; preds = %46
  br label %60

.lr.ph2:                                          ; preds = %46
  br label %47

47:                                               ; preds = %.lr.ph2, %56
  %48 = phi i64 [ 0, %.lr.ph2 ], [ %57, %56 ]
  %49 = phi i64 [ 0, %.lr.ph2 ], [ %58, %56 ]
  %50 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %49
  %51 = load i64, ptr %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %48
  store i64 %49, ptr %54, align 8
  %55 = add i64 %48, 1
  store i64 %55, ptr %7, align 8
  br label %56

56:                                               ; preds = %53, %47
  %57 = phi i64 [ %55, %53 ], [ %48, %47 ]
  %58 = add i64 %49, 1
  store i64 %58, ptr %5, align 8
  %59 = icmp ult i64 %58, 256
  br i1 %59, label %47, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %56
  br label %60

60:                                               ; preds = %._crit_edge40, %._crit_edge3
  %61 = phi i64 [ 0, %._crit_edge40 ], [ %57, %._crit_edge3 ]
  store i64 %61, ptr %5, align 8
  %62 = icmp ugt i64 %61, 0
  br i1 %62, label %.lr.ph5, label %69

.lr.ph5:                                          ; preds = %60
  br label %63

63:                                               ; preds = %.lr.ph5, %63
  %64 = phi i64 [ %61, %.lr.ph5 ], [ %67, %63 ]
  %65 = trunc i64 %61 to i32
  %66 = trunc i64 %64 to i32
  call void @heap_adjust(ptr noundef %15, ptr noundef %16, i32 noundef %65, i32 noundef %66)
  %67 = add i64 %64, -1
  store i64 %67, ptr %5, align 8
  %68 = icmp ugt i64 %67, 0
  br i1 %68, label %63, label %._crit_edge6, !llvm.loop !11

._crit_edge6:                                     ; preds = %63
  br label %69

69:                                               ; preds = %._crit_edge6, %60
  %70 = icmp ugt i64 %61, 1
  br i1 %70, label %.lr.ph8, label %._crit_edge48

._crit_edge48:                                    ; preds = %69
  %.pre = add i64 256, %61
  br label %92

.lr.ph8:                                          ; preds = %69
  br label %71

71:                                               ; preds = %.lr.ph8, %71
  %72 = phi i64 [ %61, %.lr.ph8 ], [ %73, %71 ]
  %73 = add i64 %72, -1
  store i64 %73, ptr %7, align 8
  %74 = load i64, ptr %16, align 16
  store i64 %74, ptr %20, align 8
  %75 = getelementptr inbounds nuw [256 x i64], ptr %16, i64 0, i64 %73
  %76 = load i64, ptr %75, align 8
  store i64 %76, ptr %16, align 16
  %77 = trunc i64 %73 to i32
  call void @heap_adjust(ptr noundef %15, ptr noundef %16, i32 noundef %77, i32 noundef 1)
  %78 = load i64, ptr %16, align 16
  %79 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %78
  %80 = load i64, ptr %79, align 8
  %81 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %74
  %82 = load i64, ptr %81, align 8
  %83 = add i64 %80, %82
  %84 = add i64 256, %73
  %85 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %84
  store i64 %83, ptr %85, align 8
  %86 = trunc i64 %84 to i32
  %87 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %74
  store i32 %86, ptr %87, align 4
  %88 = sub i64 -256, %73
  %89 = trunc i64 %88 to i32
  %90 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %78
  store i32 %89, ptr %90, align 4
  store i64 %84, ptr %16, align 16
  call void @heap_adjust(ptr noundef %15, ptr noundef %16, i32 noundef %77, i32 noundef 1)
  %91 = icmp ugt i64 %73, 1
  br i1 %91, label %71, label %._crit_edge9, !llvm.loop !12

._crit_edge9:                                     ; preds = %71
  br label %92

92:                                               ; preds = %._crit_edge48, %._crit_edge9
  %.pre-phi = phi i64 [ %.pre, %._crit_edge48 ], [ %84, %._crit_edge9 ]
  %93 = phi i64 [ %73, %._crit_edge9 ], [ %61, %._crit_edge48 ]
  %94 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %.pre-phi
  store i32 0, ptr %94, align 4
  store i64 0, ptr %23, align 8
  store i64 0, ptr %24, align 8
  store i64 0, ptr %21, align 8
  br i1 true, label %.lr.ph14, label %._crit_edge41

._crit_edge41:                                    ; preds = %92
  br label %147

.lr.ph14:                                         ; preds = %92
  br label %95

95:                                               ; preds = %.lr.ph14, %142
  %96 = phi i64 [ 0, %.lr.ph14 ], [ %143, %142 ]
  %97 = phi i64 [ 0, %.lr.ph14 ], [ %144, %142 ]
  %98 = phi i64 [ 0, %.lr.ph14 ], [ %145, %142 ]
  %99 = getelementptr inbounds nuw [512 x i64], ptr %15, i64 0, i64 %98
  %100 = load i64, ptr %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %95
  %103 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %98
  store i32 0, ptr %103, align 4
  %104 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %98
  store i8 0, ptr %104, align 1
  br label %142

105:                                              ; preds = %95
  store i64 0, ptr %5, align 8
  store i64 1, ptr %6, align 8
  store i64 0, ptr %22, align 8
  %106 = getelementptr inbounds nuw [512 x i32], ptr %17, i64 0, i64 %98
  %107 = load i32, ptr %106, align 4
  store i32 %107, ptr %25, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %.lr.ph11, label %127

.lr.ph11:                                         ; preds = %105
  br label %109

109:                                              ; preds = %.lr.ph11, %118
  %110 = phi i64 [ 0, %.lr.ph11 ], [ %125, %118 ]
  %111 = phi i64 [ 0, %.lr.ph11 ], [ %120, %118 ]
  %112 = phi i64 [ 1, %.lr.ph11 ], [ %124, %118 ]
  %113 = phi i32 [ %107, %.lr.ph11 ], [ %123, %118 ]
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = add i64 %111, %112
  store i64 %116, ptr %22, align 8
  %117 = sub nsw i32 0, %113
  store i32 %117, ptr %25, align 4
  br label %118

118:                                              ; preds = %115, %109
  %119 = phi i32 [ %117, %115 ], [ %113, %109 ]
  %120 = phi i64 [ %116, %115 ], [ %111, %109 ]
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds [512 x i32], ptr %17, i64 0, i64 %121
  %123 = load i32, ptr %122, align 4
  store i32 %123, ptr %25, align 4
  %124 = shl i64 %112, 1
  store i64 %124, ptr %6, align 8
  %125 = add i64 %110, 1
  store i64 %125, ptr %5, align 8
  %126 = icmp ne i32 %123, 0
  br i1 %126, label %109, label %._crit_edge12, !llvm.loop !13

._crit_edge12:                                    ; preds = %118
  br label %127

127:                                              ; preds = %._crit_edge12, %105
  %128 = phi i64 [ %125, %._crit_edge12 ], [ 0, %105 ]
  %129 = phi i64 [ %120, %._crit_edge12 ], [ 0, %105 ]
  %130 = trunc i64 %129 to i32
  %131 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %98
  store i32 %130, ptr %131, align 4
  %132 = trunc i64 %128 to i8
  %133 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %98
  store i8 %132, ptr %133, align 1
  %134 = icmp ugt i64 %129, %97
  br i1 %134, label %135, label %136

135:                                              ; preds = %127
  store i64 %129, ptr %23, align 8
  br label %136

136:                                              ; preds = %135, %127
  %137 = phi i64 [ %129, %135 ], [ %97, %127 ]
  %138 = icmp ugt i64 %128, %96
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  store i64 %128, ptr %24, align 8
  br label %140

140:                                              ; preds = %139, %136
  %141 = phi i64 [ %128, %139 ], [ %96, %136 ]
  br label %142

142:                                              ; preds = %140, %102
  %143 = phi i64 [ %141, %140 ], [ %96, %102 ]
  %144 = phi i64 [ %137, %140 ], [ %97, %102 ]
  %145 = add i64 %98, 1
  store i64 %145, ptr %21, align 8
  %146 = icmp ult i64 %145, 256
  br i1 %146, label %95, label %._crit_edge15, !llvm.loop !14

._crit_edge15:                                    ; preds = %142
  br label %147

147:                                              ; preds = %._crit_edge41, %._crit_edge15
  %148 = phi i64 [ 0, %._crit_edge41 ], [ %144, %._crit_edge15 ]
  %149 = phi i64 [ 0, %._crit_edge41 ], [ %143, %._crit_edge15 ]
  %150 = icmp ugt i64 %149, 32
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = call ptr @__acrt_iob_func(i32 noundef 2)
  %153 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %152, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

154:                                              ; preds = %147
  store i64 0, ptr %26, align 8
  store i8 0, ptr %27, align 1
  store i32 -1, ptr %28, align 4
  store ptr %0, ptr %13, align 8
  %155 = icmp eq i64 %148, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %154
  %157 = call ptr @__acrt_iob_func(i32 noundef 2)
  %158 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %157, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

159:                                              ; preds = %154
  store i64 0, ptr %6, align 8
  br i1 %34, label %.lr.ph20, label %227

.lr.ph20:                                         ; preds = %159
  br label %160

160:                                              ; preds = %.lr.ph20, %220
  %161 = phi i64 [ 0, %.lr.ph20 ], [ %225, %220 ]
  %162 = phi i64 [ 0, %.lr.ph20 ], [ %221, %220 ]
  %163 = phi i8 [ 0, %.lr.ph20 ], [ %222, %220 ]
  %164 = phi i32 [ -1, %.lr.ph20 ], [ %223, %220 ]
  %165 = phi ptr [ %0, %.lr.ph20 ], [ %224, %220 ]
  %166 = load i8, ptr %165, align 1
  %167 = zext i8 %166 to i64
  %168 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %167
  %169 = load i8, ptr %168, align 1
  %170 = zext i8 %169 to i32
  %171 = sub nsw i32 %170, 1
  %172 = shl i32 1, %171
  %173 = sext i32 %172 to i64
  store i64 %173, ptr %8, align 8
  store i64 0, ptr %5, align 8
  %174 = zext i8 %169 to i64
  %175 = icmp ult i64 0, %174
  br i1 %175, label %.lr.ph17, label %220

.lr.ph17:                                         ; preds = %160
  br label %176

176:                                              ; preds = %.lr.ph17, %212
  %177 = phi i8 [ %166, %.lr.ph17 ], [ %198, %212 ]
  %178 = phi i64 [ 0, %.lr.ph17 ], [ %215, %212 ]
  %179 = phi i64 [ %173, %.lr.ph17 ], [ %214, %212 ]
  %180 = phi i64 [ %162, %.lr.ph17 ], [ %199, %212 ]
  %181 = phi i8 [ %163, %.lr.ph17 ], [ %213, %212 ]
  %182 = phi i32 [ %164, %.lr.ph17 ], [ %201, %212 ]
  %183 = icmp eq i32 %182, 7
  br i1 %183, label %184, label %192

184:                                              ; preds = %176
  %185 = getelementptr inbounds nuw i8, ptr %33, i64 %180
  store i8 %181, ptr %185, align 1
  %186 = add i64 %180, 1
  store i64 %186, ptr %26, align 8
  %187 = icmp eq i64 %186, %1
  br i1 %187, label %188, label %191

188:                                              ; preds = %184
  %189 = call ptr @__acrt_iob_func(i32 noundef 2)
  %190 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %189, ptr noundef @.str.3) #7
  call void @exit(i32 noundef 1) #8
  unreachable

191:                                              ; preds = %184
  store i32 0, ptr %28, align 4
  store i8 0, ptr %27, align 1
  %.pre47 = load i8, ptr %165, align 1
  br label %197

192:                                              ; preds = %176
  %193 = add nsw i32 %182, 1
  store i32 %193, ptr %28, align 4
  %194 = sext i8 %181 to i32
  %195 = shl i32 %194, 1
  %196 = trunc i32 %195 to i8
  store i8 %196, ptr %27, align 1
  br label %197

197:                                              ; preds = %192, %191
  %198 = phi i8 [ %177, %192 ], [ %.pre47, %191 ]
  %199 = phi i64 [ %180, %192 ], [ %186, %191 ]
  %200 = phi i8 [ %196, %192 ], [ 0, %191 ]
  %201 = phi i32 [ %193, %192 ], [ 0, %191 ]
  %202 = zext i8 %198 to i64
  %203 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %202
  %204 = load i32, ptr %203, align 4
  %205 = zext i32 %204 to i64
  %206 = and i64 %205, %179
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %197
  %209 = sext i8 %200 to i32
  %210 = or i32 %209, 1
  %211 = trunc i32 %210 to i8
  store i8 %211, ptr %27, align 1
  br label %212

212:                                              ; preds = %208, %197
  %213 = phi i8 [ %211, %208 ], [ %200, %197 ]
  %214 = lshr i64 %179, 1
  store i64 %214, ptr %8, align 8
  %215 = add i64 %178, 1
  store i64 %215, ptr %5, align 8
  %216 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %202
  %217 = load i8, ptr %216, align 1
  %218 = zext i8 %217 to i64
  %219 = icmp ult i64 %215, %218
  br i1 %219, label %176, label %._crit_edge18, !llvm.loop !15

._crit_edge18:                                    ; preds = %212
  br label %220

220:                                              ; preds = %._crit_edge18, %160
  %221 = phi i64 [ %199, %._crit_edge18 ], [ %162, %160 ]
  %222 = phi i8 [ %213, %._crit_edge18 ], [ %163, %160 ]
  %223 = phi i32 [ %201, %._crit_edge18 ], [ %164, %160 ]
  %224 = getelementptr inbounds nuw i8, ptr %165, i32 1
  store ptr %224, ptr %13, align 8
  %225 = add i64 %161, 1
  store i64 %225, ptr %6, align 8
  %226 = icmp ult i64 %225, %1
  br i1 %226, label %160, label %._crit_edge21, !llvm.loop !16

._crit_edge21:                                    ; preds = %220
  br label %227

227:                                              ; preds = %._crit_edge21, %159
  %228 = phi i64 [ %221, %._crit_edge21 ], [ 0, %159 ]
  %229 = phi i8 [ %222, %._crit_edge21 ], [ 0, %159 ]
  %230 = phi i32 [ %223, %._crit_edge21 ], [ -1, %159 ]
  %231 = sub nsw i32 7, %230
  %232 = sext i8 %229 to i32
  %233 = shl i32 %232, %231
  %234 = trunc i32 %233 to i8
  store i8 %234, ptr %27, align 1
  %235 = getelementptr inbounds nuw i8, ptr %33, i64 %228
  store i8 %234, ptr %235, align 1
  %236 = add i64 %228, 1
  store i64 %236, ptr %26, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %29, i8 0, i64 1024, i1 false)
  store ptr %30, ptr %31, align 8
  store i64 0, ptr %6, align 8
  br i1 true, label %.lr.ph26, label %._crit_edge42

._crit_edge42:                                    ; preds = %227
  br label %277

.lr.ph26:                                         ; preds = %227
  br label %237

237:                                              ; preds = %.lr.ph26, %274
  %238 = phi ptr [ %30, %.lr.ph26 ], [ %241, %274 ]
  %239 = phi i64 [ 0, %.lr.ph26 ], [ %275, %274 ]
  %240 = trunc i64 %239 to i8
  store i8 %240, ptr %238, align 1
  %241 = getelementptr inbounds nuw i8, ptr %238, i32 1
  store ptr %241, ptr %31, align 8
  %242 = getelementptr inbounds nuw [256 x i32], ptr %18, i64 0, i64 %239
  %243 = load i32, ptr %242, align 4
  %244 = getelementptr inbounds nuw [256 x i8], ptr %19, i64 0, i64 %239
  %245 = load i8, ptr %244, align 1
  %246 = zext i8 %245 to i32
  %247 = or i32 %243, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %274

249:                                              ; preds = %237
  store i32 0, ptr %9, align 4
  %250 = sub nsw i32 %246, 1
  %251 = shl i32 1, %250
  %252 = sext i32 %251 to i64
  store i64 %252, ptr %8, align 8
  store i64 0, ptr %5, align 8
  %253 = zext i8 %245 to i64
  %254 = icmp ult i64 0, %253
  br i1 %254, label %.lr.ph23, label %271

.lr.ph23:                                         ; preds = %249
  br label %255

255:                                              ; preds = %.lr.ph23, %266
  %256 = phi i64 [ 0, %.lr.ph23 ], [ %269, %266 ]
  %257 = phi i64 [ %252, %.lr.ph23 ], [ %268, %266 ]
  %258 = phi i32 [ 0, %.lr.ph23 ], [ %267, %266 ]
  %259 = mul i32 %258, 2
  %260 = add i32 %259, 1
  store i32 %260, ptr %9, align 4
  %261 = zext i32 %243 to i64
  %262 = and i64 %261, %257
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %255
  %265 = add i32 %260, 1
  store i32 %265, ptr %9, align 4
  br label %266

266:                                              ; preds = %264, %255
  %267 = phi i32 [ %265, %264 ], [ %260, %255 ]
  %268 = lshr i64 %257, 1
  store i64 %268, ptr %8, align 8
  %269 = add i64 %256, 1
  store i64 %269, ptr %5, align 8
  %270 = icmp ult i64 %269, %253
  br i1 %270, label %255, label %._crit_edge24, !llvm.loop !17

._crit_edge24:                                    ; preds = %266
  br label %271

271:                                              ; preds = %._crit_edge24, %249
  %272 = phi i32 [ %267, %._crit_edge24 ], [ 0, %249 ]
  %273 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %239
  store i32 %272, ptr %273, align 4
  br label %274

274:                                              ; preds = %271, %237
  %275 = add i64 %239, 1
  store i64 %275, ptr %6, align 8
  %276 = icmp ult i64 %275, 256
  br i1 %276, label %237, label %._crit_edge27, !llvm.loop !18

._crit_edge27:                                    ; preds = %274
  br label %277

277:                                              ; preds = %._crit_edge42, %._crit_edge27
  store i64 1, ptr %5, align 8
  br i1 true, label %.lr.ph29, label %._crit_edge43

._crit_edge43:                                    ; preds = %277
  br label %308

.lr.ph29:                                         ; preds = %277
  br label %278

278:                                              ; preds = %.lr.ph29, %303
  %279 = phi i64 [ 1, %.lr.ph29 ], [ %306, %303 ]
  %280 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %279
  %281 = load i32, ptr %280, align 4
  store i32 %281, ptr %10, align 4
  %282 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %279
  %283 = load i8, ptr %282, align 1
  store i8 %283, ptr %11, align 1
  store i64 %279, ptr %6, align 8
  br label %284

284:                                              ; preds = %294, %278
  %285 = phi i64 [ %302, %294 ], [ %279, %278 ]
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %292

287:                                              ; preds = %284
  %288 = sub i64 %285, 1
  %289 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %288
  %290 = load i32, ptr %289, align 4
  %291 = icmp ugt i32 %290, %281
  br label %292

292:                                              ; preds = %287, %284
  %293 = phi i1 [ false, %284 ], [ %291, %287 ]
  br i1 %293, label %294, label %303

294:                                              ; preds = %292
  %295 = sub i64 %285, 1
  %296 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %295
  %297 = load i32, ptr %296, align 4
  %298 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %285
  store i32 %297, ptr %298, align 4
  %299 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %295
  %300 = load i8, ptr %299, align 1
  %301 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %285
  store i8 %300, ptr %301, align 1
  %302 = add i64 %285, -1
  store i64 %302, ptr %6, align 8
  br label %284, !llvm.loop !19

303:                                              ; preds = %292
  %304 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %285
  store i32 %281, ptr %304, align 4
  %305 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %285
  store i8 %283, ptr %305, align 1
  %306 = add i64 %279, 1
  store i64 %306, ptr %5, align 8
  %307 = icmp ult i64 %306, 256
  br i1 %307, label %278, label %._crit_edge30, !llvm.loop !20

._crit_edge30:                                    ; preds = %303
  br label %308

308:                                              ; preds = %._crit_edge43, %._crit_edge30
  store i64 0, ptr %6, align 8
  %309 = load i32, ptr %29, align 4
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %.lr.ph32, label %317

.lr.ph32:                                         ; preds = %308
  br label %311

311:                                              ; preds = %.lr.ph32, %311
  %312 = phi i64 [ 0, %.lr.ph32 ], [ %313, %311 ]
  %313 = add i64 %312, 1
  store i64 %313, ptr %6, align 8
  %314 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %313
  %315 = load i32, ptr %314, align 4
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %311, label %._crit_edge33, !llvm.loop !21

._crit_edge33:                                    ; preds = %311
  br label %317

317:                                              ; preds = %._crit_edge33, %308
  %318 = phi i64 [ %313, %._crit_edge33 ], [ 0, %308 ]
  store i32 0, ptr %9, align 4
  store i64 %318, ptr %5, align 8
  store i64 128, ptr %8, align 8
  store i64 0, ptr %7, align 8
  store ptr %33, ptr %12, align 8
  store ptr %0, ptr %13, align 8
  br i1 %34, label %.lr.ph38, label %374

.lr.ph38:                                         ; preds = %317
  br label %319

319:                                              ; preds = %.lr.ph38, %369
  %320 = phi i64 [ 0, %.lr.ph38 ], [ %359, %369 ]
  %321 = phi ptr [ %0, %.lr.ph38 ], [ %361, %369 ]
  %322 = phi i64 [ %318, %.lr.ph38 ], [ %362, %369 ]
  %323 = phi i64 [ 128, %.lr.ph38 ], [ %370, %369 ]
  %324 = phi ptr [ %33, %.lr.ph38 ], [ %371, %369 ]
  %325 = phi i32 [ 0, %.lr.ph38 ], [ %363, %369 ]
  %326 = mul i32 %325, 2
  %327 = add i32 %326, 1
  store i32 %327, ptr %9, align 4
  %328 = load i8, ptr %324, align 1
  %329 = zext i8 %328 to i64
  %330 = and i64 %329, %323
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %334

332:                                              ; preds = %319
  %333 = add i32 %327, 1
  store i32 %333, ptr %9, align 4
  br label %334

334:                                              ; preds = %332, %319
  %335 = phi i32 [ %333, %332 ], [ %327, %319 ]
  %336 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %322
  %337 = load i32, ptr %336, align 4
  %338 = icmp ult i32 %337, %335
  br i1 %338, label %.lr.ph35, label %._crit_edge44

._crit_edge44:                                    ; preds = %334
  br label %345

.lr.ph35:                                         ; preds = %334
  br label %339

339:                                              ; preds = %.lr.ph35, %339
  %340 = phi i64 [ %322, %.lr.ph35 ], [ %341, %339 ]
  %341 = add i64 %340, 1
  store i64 %341, ptr %5, align 8
  %342 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %341
  %343 = load i32, ptr %342, align 4
  %344 = icmp ult i32 %343, %335
  br i1 %344, label %339, label %._crit_edge36, !llvm.loop !22

._crit_edge36:                                    ; preds = %339
  br label %345

345:                                              ; preds = %._crit_edge44, %._crit_edge36
  %346 = phi i32 [ %343, %._crit_edge36 ], [ %337, %._crit_edge44 ]
  %347 = phi i64 [ %341, %._crit_edge36 ], [ %322, %._crit_edge44 ]
  %348 = getelementptr inbounds nuw [256 x i32], ptr %29, i64 0, i64 %347
  %349 = icmp eq i32 %335, %346
  br i1 %349, label %350, label %358

350:                                              ; preds = %345
  %351 = getelementptr inbounds nuw [256 x i8], ptr %30, i64 0, i64 %347
  %352 = load i8, ptr %351, align 1
  store i8 %352, ptr %321, align 1
  %353 = load ptr, ptr %13, align 8
  %354 = getelementptr inbounds nuw i8, ptr %353, i32 1
  store ptr %354, ptr %13, align 8
  %355 = load i64, ptr %7, align 8
  %356 = add i64 %355, 1
  store i64 %356, ptr %7, align 8
  store i32 0, ptr %9, align 4
  %357 = load i64, ptr %6, align 8
  store i64 %357, ptr %5, align 8
  %.pre45 = load i64, ptr %8, align 8
  br label %358

358:                                              ; preds = %350, %345
  %359 = phi i64 [ %356, %350 ], [ %320, %345 ]
  %360 = phi i64 [ %.pre45, %350 ], [ %323, %345 ]
  %361 = phi ptr [ %354, %350 ], [ %321, %345 ]
  %362 = phi i64 [ %357, %350 ], [ %347, %345 ]
  %363 = phi i32 [ 0, %350 ], [ %335, %345 ]
  %364 = icmp ugt i64 %360, 1
  br i1 %364, label %365, label %367

365:                                              ; preds = %358
  %366 = lshr i64 %360, 1
  store i64 %366, ptr %8, align 8
  br label %369

367:                                              ; preds = %358
  store i64 128, ptr %8, align 8
  %368 = getelementptr inbounds nuw i8, ptr %324, i32 1
  store ptr %368, ptr %12, align 8
  br label %369

369:                                              ; preds = %367, %365
  %370 = phi i64 [ 128, %367 ], [ %366, %365 ]
  %371 = phi ptr [ %368, %367 ], [ %324, %365 ]
  %372 = load i64, ptr %4, align 8
  %373 = icmp ult i64 %359, %372
  br i1 %373, label %319, label %._crit_edge39, !llvm.loop !23

._crit_edge39:                                    ; preds = %369
  %.pre46 = load ptr, ptr %14, align 8
  br label %374

374:                                              ; preds = %._crit_edge39, %317
  %375 = phi ptr [ %.pre46, %._crit_edge39 ], [ %33, %317 ]
  call void @free(ptr noundef %375)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal void @heap_adjust(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  %11 = sub nsw i32 %3, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i64, ptr %1, i64 %12
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, ptr %10, align 4
  %16 = sdiv i32 %2, 2
  %17 = icmp sle i32 %3, %16
  br i1 %17, label %.lr.ph, label %..loopexit_crit_edge1

..loopexit_crit_edge1:                            ; preds = %4
  %.pre2 = sext i32 %15 to i64
  br label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %18

18:                                               ; preds = %.lr.ph, %50
  %19 = phi i32 [ %3, %.lr.ph ], [ %38, %50 ]
  %20 = add nsw i32 %19, %19
  store i32 %20, ptr %9, align 4
  %21 = icmp slt i32 %20, %2
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = sub nsw i32 %20, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, ptr %1, i64 %24
  %26 = load i64, ptr %25, align 8
  %27 = getelementptr inbounds nuw i64, ptr %0, i64 %26
  %28 = load i64, ptr %27, align 8
  %29 = sext i32 %20 to i64
  %30 = getelementptr inbounds i64, ptr %1, i64 %29
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr inbounds nuw i64, ptr %0, i64 %31
  %33 = load i64, ptr %32, align 8
  %34 = icmp ugt i64 %28, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %22
  %36 = add nsw i32 %20, 1
  store i32 %36, ptr %9, align 4
  br label %37

37:                                               ; preds = %35, %22, %18
  %38 = phi i32 [ %36, %35 ], [ %20, %22 ], [ %20, %18 ]
  %39 = sext i32 %15 to i64
  %40 = getelementptr inbounds i64, ptr %0, i64 %39
  %41 = load i64, ptr %40, align 8
  %42 = sub nsw i32 %38, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, ptr %1, i64 %43
  %45 = load i64, ptr %44, align 8
  %46 = getelementptr inbounds nuw i64, ptr %0, i64 %45
  %47 = load i64, ptr %46, align 8
  %48 = icmp ult i64 %41, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  br label %56

50:                                               ; preds = %37
  %51 = sub nsw i32 %19, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, ptr %1, i64 %52
  store i64 %45, ptr %53, align 8
  store i32 %38, ptr %8, align 4
  %54 = icmp sle i32 %38, %16
  br i1 %54, label %18, label %..loopexit_crit_edge, !llvm.loop !24

..loopexit_crit_edge:                             ; preds = %50
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge1, %..loopexit_crit_edge
  %.pre.pre-phi = phi i64 [ %.pre2, %..loopexit_crit_edge1 ], [ %39, %..loopexit_crit_edge ]
  %55 = phi i32 [ %38, %..loopexit_crit_edge ], [ %3, %..loopexit_crit_edge1 ]
  br label %56

56:                                               ; preds = %.loopexit, %49
  %.pre-phi = phi i64 [ %.pre.pre-phi, %.loopexit ], [ %39, %49 ]
  %57 = phi i32 [ %55, %.loopexit ], [ %19, %49 ]
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, ptr %1, i64 %59
  store i64 %.pre-phi, ptr %60, align 8
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
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca ptr, align 8
  %9 = alloca double, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store i8 0, ptr %7, align 1
  %10 = icmp sgt i32 %0, 1
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  store i32 1, ptr %6, align 4
  br i1 true, label %.lr.ph, label %..loopexit_crit_edge2

..loopexit_crit_edge2:                            ; preds = %11
  br label %.loopexit

.lr.ph:                                           ; preds = %11
  br label %12

12:                                               ; preds = %.lr.ph, %19
  %13 = phi i32 [ 1, %.lr.ph ], [ %20, %19 ]
  %14 = getelementptr inbounds ptr, ptr %1, i64 1
  %15 = load ptr, ptr %14, align 8
  %16 = call i32 @strcmp(ptr noundef %15, ptr noundef @.str.4) #7
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  store i8 1, ptr %7, align 1
  br label %22

19:                                               ; preds = %12
  %20 = add nsw i32 %13, 1
  store i32 %20, ptr %6, align 4
  %21 = icmp slt i32 %20, %0
  br i1 %21, label %12, label %..loopexit_crit_edge, !llvm.loop !25

..loopexit_crit_edge:                             ; preds = %19
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge2, %..loopexit_crit_edge
  br label %22

22:                                               ; preds = %.loopexit, %18
  %23 = phi i8 [ 0, %.loopexit ], [ 1, %18 ]
  br label %24

24:                                               ; preds = %22, %2
  %25 = phi i8 [ %23, %22 ], [ 0, %2 ]
  %26 = call ptr @generate_test_data(i64 noundef 10000000)
  store ptr %26, ptr %8, align 8
  store i32 0, ptr %6, align 4
  br i1 true, label %.lr.ph1, label %._crit_edge3

._crit_edge3:                                     ; preds = %24
  br label %31

.lr.ph1:                                          ; preds = %24
  br label %27

27:                                               ; preds = %.lr.ph1, %27
  %28 = phi i32 [ 0, %.lr.ph1 ], [ %29, %27 ]
  call void @compdecomp(ptr noundef %26, i64 noundef 10000000)
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %6, align 4
  %30 = icmp slt i32 %29, 30
  br i1 %30, label %27, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %27
  br label %31

31:                                               ; preds = %._crit_edge3, %._crit_edge
  store double 0.000000e+00, ptr %9, align 8
  call void @free(ptr noundef %26)
  %32 = icmp ne i8 %25, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = call ptr @__acrt_iob_func(i32 noundef 1)
  %35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef @.str.5, double noundef 0.000000e+00) #7
  br label %39

36:                                               ; preds = %31
  %37 = call ptr @__acrt_iob_func(i32 noundef 1)
  %38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef @.str.6, double noundef 0.000000e+00) #7
  br label %39

39:                                               ; preds = %36, %33
  %40 = call ptr @__acrt_iob_func(i32 noundef 1)
  %41 = call i32 @fflush(ptr noundef %40)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

declare dso_local i32 @fflush(ptr noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal i64 @random4() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i32, ptr @seed, align 4
  %4 = xor i32 %3, 123459876
  store i32 %4, ptr @seed, align 4
  %5 = sdiv i32 %4, 127773
  store i32 %5, ptr %1, align 4
  %6 = mul nsw i32 %5, 127773
  %7 = sub nsw i32 %4, %6
  %8 = mul nsw i32 16807, %7
  %9 = mul nsw i32 2836, %5
  %10 = sub nsw i32 %8, %9
  store i32 %10, ptr @seed, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = add nsw i32 %10, 2147483647
  store i32 %13, ptr @seed, align 4
  br label %14

14:                                               ; preds = %12, %0
  %15 = phi i32 [ %13, %12 ], [ %10, %0 ]
  %16 = srem i32 %15, 32
  %17 = sext i32 %16 to i64
  store i64 %17, ptr %2, align 8
  %18 = xor i32 %15, 123459876
  store i32 %18, ptr @seed, align 4
  ret i64 %17
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
