; ModuleID = 'results\cmp_test\cmp_rule_O2\Shootout_nestedloop\round_002\input.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Shootout/nestedloop.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = icmp eq i32 %0, 2
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %14 = load ptr, ptr %13, align 8
  %15 = call i32 @atoi(ptr noundef %14) #2
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %12
  %18 = phi i32 [ %15, %12 ], [ 46, %16 ]
  store i32 %18, ptr %3, align 4
  store i32 0, ptr %10, align 4
  store i32 0, ptr %4, align 4
  %19 = load i32, ptr %3, align 4
  %20 = icmp slt i32 0, %19
  br i1 %20, label %.lr.ph14, label %74

.lr.ph14:                                         ; preds = %17
  br label %21

21:                                               ; preds = %.lr.ph14, %69
  store i32 0, ptr %5, align 4
  %22 = load i32, ptr %3, align 4
  %23 = icmp slt i32 0, %22
  br i1 %23, label %.lr.ph11, label %68

.lr.ph11:                                         ; preds = %21
  br label %24

24:                                               ; preds = %.lr.ph11, %63
  store i32 0, ptr %6, align 4
  %25 = load i32, ptr %3, align 4
  %26 = icmp slt i32 0, %25
  br i1 %26, label %.lr.ph8, label %62

.lr.ph8:                                          ; preds = %24
  br label %27

27:                                               ; preds = %.lr.ph8, %57
  store i32 0, ptr %7, align 4
  %28 = load i32, ptr %3, align 4
  %29 = icmp slt i32 0, %28
  br i1 %29, label %.lr.ph5, label %56

.lr.ph5:                                          ; preds = %27
  br label %30

30:                                               ; preds = %.lr.ph5, %51
  store i32 0, ptr %8, align 4
  %31 = load i32, ptr %3, align 4
  %32 = icmp slt i32 0, %31
  br i1 %32, label %.lr.ph2, label %50

.lr.ph2:                                          ; preds = %30
  br label %33

33:                                               ; preds = %.lr.ph2, %45
  store i32 0, ptr %9, align 4
  %34 = load i32, ptr %3, align 4
  %35 = icmp slt i32 0, %34
  br i1 %35, label %.lr.ph, label %44

.lr.ph:                                           ; preds = %33
  br label %36

36:                                               ; preds = %.lr.ph, %39
  %37 = load i32, ptr %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %10, align 4
  br label %39

39:                                               ; preds = %36
  %40 = load i32, ptr %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %9, align 4
  %42 = load i32, ptr %3, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %36, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %39
  br label %44

44:                                               ; preds = %._crit_edge, %33
  br label %45

45:                                               ; preds = %44
  %46 = load i32, ptr %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %8, align 4
  %48 = load i32, ptr %3, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %33, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %45
  br label %50

50:                                               ; preds = %._crit_edge3, %30
  br label %51

51:                                               ; preds = %50
  %52 = load i32, ptr %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %7, align 4
  %54 = load i32, ptr %3, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %30, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %51
  br label %56

56:                                               ; preds = %._crit_edge6, %27
  br label %57

57:                                               ; preds = %56
  %58 = load i32, ptr %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %6, align 4
  %60 = load i32, ptr %3, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %27, label %._crit_edge9, !llvm.loop !11

._crit_edge9:                                     ; preds = %57
  br label %62

62:                                               ; preds = %._crit_edge9, %24
  br label %63

63:                                               ; preds = %62
  %64 = load i32, ptr %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %5, align 4
  %66 = load i32, ptr %3, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %24, label %._crit_edge12, !llvm.loop !12

._crit_edge12:                                    ; preds = %63
  br label %68

68:                                               ; preds = %._crit_edge12, %21
  br label %69

69:                                               ; preds = %68
  %70 = load i32, ptr %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %4, align 4
  %72 = load i32, ptr %3, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %21, label %._crit_edge15, !llvm.loop !13

._crit_edge15:                                    ; preds = %69
  br label %74

74:                                               ; preds = %._crit_edge15, %17
  %75 = load i32, ptr %10, align 4
  %76 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %75) #2
  ret i32 0
}

declare dso_local i32 @atoi(ptr noundef) #1

declare dso_local i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
