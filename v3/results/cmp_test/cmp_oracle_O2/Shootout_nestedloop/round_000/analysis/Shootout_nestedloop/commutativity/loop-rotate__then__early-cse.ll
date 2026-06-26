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
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = getelementptr inbounds ptr, ptr %1, i64 1
  %18 = load ptr, ptr %17, align 8
  %19 = call i32 @atoi(ptr noundef %18)
  br label %21

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %16
  %22 = phi i32 [ %19, %16 ], [ 46, %20 ]
  store i32 %22, ptr %6, align 4
  store i32 0, ptr %13, align 4
  store i32 0, ptr %7, align 4
  %23 = load i32, ptr %6, align 4
  %24 = icmp slt i32 0, %23
  br i1 %24, label %.lr.ph14, label %78

.lr.ph14:                                         ; preds = %21
  br label %25

25:                                               ; preds = %.lr.ph14, %73
  store i32 0, ptr %8, align 4
  %26 = load i32, ptr %6, align 4
  %27 = icmp slt i32 0, %26
  br i1 %27, label %.lr.ph11, label %72

.lr.ph11:                                         ; preds = %25
  br label %28

28:                                               ; preds = %.lr.ph11, %67
  store i32 0, ptr %9, align 4
  %29 = load i32, ptr %6, align 4
  %30 = icmp slt i32 0, %29
  br i1 %30, label %.lr.ph8, label %66

.lr.ph8:                                          ; preds = %28
  br label %31

31:                                               ; preds = %.lr.ph8, %61
  store i32 0, ptr %10, align 4
  %32 = load i32, ptr %6, align 4
  %33 = icmp slt i32 0, %32
  br i1 %33, label %.lr.ph5, label %60

.lr.ph5:                                          ; preds = %31
  br label %34

34:                                               ; preds = %.lr.ph5, %55
  store i32 0, ptr %11, align 4
  %35 = load i32, ptr %6, align 4
  %36 = icmp slt i32 0, %35
  br i1 %36, label %.lr.ph2, label %54

.lr.ph2:                                          ; preds = %34
  br label %37

37:                                               ; preds = %.lr.ph2, %49
  store i32 0, ptr %12, align 4
  %38 = load i32, ptr %6, align 4
  %39 = icmp slt i32 0, %38
  br i1 %39, label %.lr.ph, label %48

.lr.ph:                                           ; preds = %37
  br label %40

40:                                               ; preds = %.lr.ph, %43
  %41 = load i32, ptr %13, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %13, align 4
  br label %43

43:                                               ; preds = %40
  %44 = load i32, ptr %12, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %12, align 4
  %46 = load i32, ptr %6, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %40, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %43
  br label %48

48:                                               ; preds = %._crit_edge, %37
  br label %49

49:                                               ; preds = %48
  %50 = load i32, ptr %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, ptr %11, align 4
  %52 = load i32, ptr %6, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %37, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %49
  br label %54

54:                                               ; preds = %._crit_edge3, %34
  br label %55

55:                                               ; preds = %54
  %56 = load i32, ptr %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, ptr %10, align 4
  %58 = load i32, ptr %6, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %34, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %55
  br label %60

60:                                               ; preds = %._crit_edge6, %31
  br label %61

61:                                               ; preds = %60
  %62 = load i32, ptr %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, ptr %9, align 4
  %64 = load i32, ptr %6, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %31, label %._crit_edge9, !llvm.loop !11

._crit_edge9:                                     ; preds = %61
  br label %66

66:                                               ; preds = %._crit_edge9, %28
  br label %67

67:                                               ; preds = %66
  %68 = load i32, ptr %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, ptr %8, align 4
  %70 = load i32, ptr %6, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %28, label %._crit_edge12, !llvm.loop !12

._crit_edge12:                                    ; preds = %67
  br label %72

72:                                               ; preds = %._crit_edge12, %25
  br label %73

73:                                               ; preds = %72
  %74 = load i32, ptr %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, ptr %7, align 4
  %76 = load i32, ptr %6, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %25, label %._crit_edge15, !llvm.loop !13

._crit_edge15:                                    ; preds = %73
  br label %78

78:                                               ; preds = %._crit_edge15, %21
  %79 = load i32, ptr %13, align 4
  %80 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %79)
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
