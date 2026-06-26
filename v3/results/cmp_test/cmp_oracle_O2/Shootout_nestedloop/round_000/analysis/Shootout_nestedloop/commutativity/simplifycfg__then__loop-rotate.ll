; ModuleID = 'results\cmp_test\cmp_oracle_O2\Shootout_nestedloop\Shootout_nestedloop.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Shootout/nestedloop.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  %14 = load i32, ptr %4, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8
  %20 = call i32 @atoi(ptr noundef %19)
  br label %21

21:                                               ; preds = %2, %16
  %22 = phi i32 [ %20, %16 ], [ 46, %2 ]
  store i32 %22, ptr %6, align 4
  store i32 0, ptr %13, align 4
  store i32 0, ptr %7, align 4
  %23 = load i32, ptr %7, align 4
  %24 = load i32, ptr %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %.lr.ph14, label %84

.lr.ph14:                                         ; preds = %21
  br label %26

26:                                               ; preds = %.lr.ph14, %78
  store i32 0, ptr %8, align 4
  %27 = load i32, ptr %8, align 4
  %28 = load i32, ptr %6, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %.lr.ph11, label %78

.lr.ph11:                                         ; preds = %26
  br label %30

30:                                               ; preds = %.lr.ph11, %72
  store i32 0, ptr %9, align 4
  %31 = load i32, ptr %9, align 4
  %32 = load i32, ptr %6, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %.lr.ph8, label %72

.lr.ph8:                                          ; preds = %30
  br label %34

34:                                               ; preds = %.lr.ph8, %66
  store i32 0, ptr %10, align 4
  %35 = load i32, ptr %10, align 4
  %36 = load i32, ptr %6, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %.lr.ph5, label %66

.lr.ph5:                                          ; preds = %34
  br label %38

38:                                               ; preds = %.lr.ph5, %60
  store i32 0, ptr %11, align 4
  %39 = load i32, ptr %11, align 4
  %40 = load i32, ptr %6, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %.lr.ph2, label %60

.lr.ph2:                                          ; preds = %38
  br label %42

42:                                               ; preds = %.lr.ph2, %54
  store i32 0, ptr %12, align 4
  %43 = load i32, ptr %12, align 4
  %44 = load i32, ptr %6, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %.lr.ph, label %54

.lr.ph:                                           ; preds = %42
  br label %46

46:                                               ; preds = %.lr.ph, %46
  %47 = load i32, ptr %13, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %13, align 4
  %49 = load i32, ptr %12, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr %12, align 4
  %51 = load i32, ptr %12, align 4
  %52 = load i32, ptr %6, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %46, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %46
  br label %54

54:                                               ; preds = %._crit_edge, %42
  %55 = load i32, ptr %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %11, align 4
  %57 = load i32, ptr %11, align 4
  %58 = load i32, ptr %6, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %42, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %54
  br label %60

60:                                               ; preds = %._crit_edge3, %38
  %61 = load i32, ptr %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, ptr %10, align 4
  %63 = load i32, ptr %10, align 4
  %64 = load i32, ptr %6, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %38, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %60
  br label %66

66:                                               ; preds = %._crit_edge6, %34
  %67 = load i32, ptr %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, ptr %9, align 4
  %69 = load i32, ptr %9, align 4
  %70 = load i32, ptr %6, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %34, label %._crit_edge9, !llvm.loop !11

._crit_edge9:                                     ; preds = %66
  br label %72

72:                                               ; preds = %._crit_edge9, %30
  %73 = load i32, ptr %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, ptr %8, align 4
  %75 = load i32, ptr %8, align 4
  %76 = load i32, ptr %6, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %30, label %._crit_edge12, !llvm.loop !12

._crit_edge12:                                    ; preds = %72
  br label %78

78:                                               ; preds = %._crit_edge12, %26
  %79 = load i32, ptr %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, ptr %7, align 4
  %81 = load i32, ptr %7, align 4
  %82 = load i32, ptr %6, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %26, label %._crit_edge15, !llvm.loop !13

._crit_edge15:                                    ; preds = %78
  br label %84

84:                                               ; preds = %._crit_edge15, %21
  %85 = load i32, ptr %13, align 4
  %86 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %85)
  ret i32 0
}

declare dso_local i32 @atoi(ptr noundef) #1

declare dso_local i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Shootout/nestedloop.c", directory: "E:/Phase Ordering/v3")
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
