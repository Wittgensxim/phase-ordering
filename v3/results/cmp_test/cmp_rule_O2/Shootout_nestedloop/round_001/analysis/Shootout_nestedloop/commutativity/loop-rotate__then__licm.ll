; ModuleID = 'results\cmp_test\cmp_rule_O2\Shootout_nestedloop\round_000\input.ll'
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
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %16
  %23 = phi i32 [ %20, %16 ], [ 46, %21 ]
  store i32 %23, ptr %6, align 4
  store i32 0, ptr %13, align 4
  store i32 0, ptr %7, align 4
  %24 = load i32, ptr %7, align 4
  %25 = load i32, ptr %6, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %.lr.ph14, label %80

.lr.ph14:                                         ; preds = %22
  %27 = load i32, ptr %6, align 4
  %28 = load i32, ptr %6, align 4
  %29 = load i32, ptr %6, align 4
  %30 = load i32, ptr %6, align 4
  %31 = load i32, ptr %6, align 4
  %32 = load i32, ptr %6, align 4
  %33 = load i32, ptr %6, align 4
  %34 = load i32, ptr %6, align 4
  %35 = load i32, ptr %6, align 4
  %36 = load i32, ptr %6, align 4
  %37 = load i32, ptr %6, align 4
  %.promoted = load i32, ptr %7, align 4
  %.promoted63 = load i32, ptr %13, align 4
  %.promoted66 = load i32, ptr %12, align 1
  %.promoted69 = load i32, ptr %11, align 1
  %.promoted72 = load i32, ptr %10, align 1
  %.promoted75 = load i32, ptr %9, align 1
  br label %38

38:                                               ; preds = %.lr.ph14, %77
  %.lcssa3546.lcssa76 = phi i32 [ %.promoted75, %.lr.ph14 ], [ %.lcssa3546.lcssa77, %77 ]
  %.lcssa2634.lcssa59.lcssa74 = phi i32 [ %.promoted72, %.lr.ph14 ], [ %.lcssa2634.lcssa59.lcssa73, %77 ]
  %.lcssa2125.lcssa44.lcssa55.lcssa71 = phi i32 [ %.promoted69, %.lr.ph14 ], [ %.lcssa2125.lcssa44.lcssa55.lcssa70, %77 ]
  %.lcssa1719.lcssa32.lcssa40.lcssa52.lcssa68 = phi i32 [ %.promoted66, %.lr.ph14 ], [ %.lcssa1719.lcssa32.lcssa40.lcssa52.lcssa67, %77 ]
  %.lcssa23.lcssa28.lcssa37.lcssa49.lcssa65 = phi i32 [ %.promoted63, %.lr.ph14 ], [ %.lcssa23.lcssa28.lcssa37.lcssa49.lcssa64, %77 ]
  %39 = phi i32 [ %.promoted, %.lr.ph14 ], [ %78, %77 ]
  %40 = icmp slt i32 0, %27
  br i1 %40, label %.lr.ph11, label %76

.lr.ph11:                                         ; preds = %38
  br label %41

41:                                               ; preds = %.lr.ph11, %73
  %.lcssa2634.lcssa58 = phi i32 [ %.lcssa2634.lcssa59.lcssa74, %.lr.ph11 ], [ %.lcssa2634.lcssa59, %73 ]
  %.lcssa2125.lcssa44.lcssa56 = phi i32 [ %.lcssa2125.lcssa44.lcssa55.lcssa71, %.lr.ph11 ], [ %.lcssa2125.lcssa44.lcssa55, %73 ]
  %.lcssa1719.lcssa32.lcssa40.lcssa53 = phi i32 [ %.lcssa1719.lcssa32.lcssa40.lcssa52.lcssa68, %.lr.ph11 ], [ %.lcssa1719.lcssa32.lcssa40.lcssa52, %73 ]
  %.lcssa23.lcssa28.lcssa37.lcssa50 = phi i32 [ %.lcssa23.lcssa28.lcssa37.lcssa49.lcssa65, %.lr.ph11 ], [ %.lcssa23.lcssa28.lcssa37.lcssa49, %73 ]
  %42 = phi i32 [ 0, %.lr.ph11 ], [ %74, %73 ]
  %43 = icmp slt i32 0, %28
  br i1 %43, label %.lr.ph8, label %72

.lr.ph8:                                          ; preds = %41
  br label %44

44:                                               ; preds = %.lr.ph8, %69
  %.lcssa2125.lcssa43 = phi i32 [ %.lcssa2125.lcssa44.lcssa56, %.lr.ph8 ], [ %.lcssa2125.lcssa44, %69 ]
  %.lcssa1719.lcssa32.lcssa41 = phi i32 [ %.lcssa1719.lcssa32.lcssa40.lcssa53, %.lr.ph8 ], [ %.lcssa1719.lcssa32.lcssa40, %69 ]
  %.lcssa23.lcssa28.lcssa38 = phi i32 [ %.lcssa23.lcssa28.lcssa37.lcssa50, %.lr.ph8 ], [ %.lcssa23.lcssa28.lcssa37, %69 ]
  %45 = phi i32 [ 0, %.lr.ph8 ], [ %70, %69 ]
  %46 = icmp slt i32 0, %29
  br i1 %46, label %.lr.ph5, label %68

.lr.ph5:                                          ; preds = %44
  br label %47

47:                                               ; preds = %.lr.ph5, %65
  %.lcssa1719.lcssa31 = phi i32 [ %.lcssa1719.lcssa32.lcssa41, %.lr.ph5 ], [ %.lcssa1719.lcssa32, %65 ]
  %.lcssa23.lcssa29 = phi i32 [ %.lcssa23.lcssa28.lcssa38, %.lr.ph5 ], [ %.lcssa23.lcssa28, %65 ]
  %48 = phi i32 [ 0, %.lr.ph5 ], [ %66, %65 ]
  %49 = icmp slt i32 0, %30
  br i1 %49, label %.lr.ph2, label %64

.lr.ph2:                                          ; preds = %47
  br label %50

50:                                               ; preds = %.lr.ph2, %61
  %.lcssa24 = phi i32 [ %.lcssa23.lcssa29, %.lr.ph2 ], [ %.lcssa23, %61 ]
  %51 = phi i32 [ 0, %.lr.ph2 ], [ %62, %61 ]
  %52 = icmp slt i32 0, %31
  br i1 %52, label %.lr.ph, label %60

.lr.ph:                                           ; preds = %50
  br label %53

53:                                               ; preds = %.lr.ph, %57
  %54 = phi i32 [ 0, %.lr.ph ], [ %58, %57 ]
  %55 = phi i32 [ %.lcssa24, %.lr.ph ], [ %56, %57 ]
  %56 = add nsw i32 %55, 1
  br label %57

57:                                               ; preds = %53
  %58 = add nsw i32 %54, 1
  %59 = icmp slt i32 %58, %32
  br i1 %59, label %53, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %57
  %.lcssa17 = phi i32 [ %58, %57 ]
  %.lcssa = phi i32 [ %56, %57 ]
  br label %60

60:                                               ; preds = %._crit_edge, %50
  %.lcssa23 = phi i32 [ %.lcssa, %._crit_edge ], [ %.lcssa24, %50 ]
  %.lcssa1719 = phi i32 [ %.lcssa17, %._crit_edge ], [ 0, %50 ]
  br label %61

61:                                               ; preds = %60
  %62 = add nsw i32 %51, 1
  %63 = icmp slt i32 %62, %33
  br i1 %63, label %50, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %61
  %.lcssa23.lcssa = phi i32 [ %.lcssa23, %61 ]
  %.lcssa21 = phi i32 [ %62, %61 ]
  %.lcssa1719.lcssa = phi i32 [ %.lcssa1719, %61 ]
  br label %64

64:                                               ; preds = %._crit_edge3, %47
  %.lcssa1719.lcssa32 = phi i32 [ %.lcssa1719.lcssa, %._crit_edge3 ], [ %.lcssa1719.lcssa31, %47 ]
  %.lcssa23.lcssa28 = phi i32 [ %.lcssa23.lcssa, %._crit_edge3 ], [ %.lcssa23.lcssa29, %47 ]
  %.lcssa2125 = phi i32 [ %.lcssa21, %._crit_edge3 ], [ 0, %47 ]
  br label %65

65:                                               ; preds = %64
  %66 = add nsw i32 %48, 1
  %67 = icmp slt i32 %66, %34
  br i1 %67, label %47, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %65
  %.lcssa1719.lcssa32.lcssa = phi i32 [ %.lcssa1719.lcssa32, %65 ]
  %.lcssa23.lcssa28.lcssa = phi i32 [ %.lcssa23.lcssa28, %65 ]
  %.lcssa26 = phi i32 [ %66, %65 ]
  %.lcssa2125.lcssa = phi i32 [ %.lcssa2125, %65 ]
  br label %68

68:                                               ; preds = %._crit_edge6, %44
  %.lcssa2125.lcssa44 = phi i32 [ %.lcssa2125.lcssa, %._crit_edge6 ], [ %.lcssa2125.lcssa43, %44 ]
  %.lcssa1719.lcssa32.lcssa40 = phi i32 [ %.lcssa1719.lcssa32.lcssa, %._crit_edge6 ], [ %.lcssa1719.lcssa32.lcssa41, %44 ]
  %.lcssa23.lcssa28.lcssa37 = phi i32 [ %.lcssa23.lcssa28.lcssa, %._crit_edge6 ], [ %.lcssa23.lcssa28.lcssa38, %44 ]
  %.lcssa2634 = phi i32 [ %.lcssa26, %._crit_edge6 ], [ 0, %44 ]
  br label %69

69:                                               ; preds = %68
  %70 = add nsw i32 %45, 1
  %71 = icmp slt i32 %70, %35
  br i1 %71, label %44, label %._crit_edge9, !llvm.loop !11

._crit_edge9:                                     ; preds = %69
  %.lcssa2125.lcssa44.lcssa = phi i32 [ %.lcssa2125.lcssa44, %69 ]
  %.lcssa1719.lcssa32.lcssa40.lcssa = phi i32 [ %.lcssa1719.lcssa32.lcssa40, %69 ]
  %.lcssa23.lcssa28.lcssa37.lcssa = phi i32 [ %.lcssa23.lcssa28.lcssa37, %69 ]
  %.lcssa35 = phi i32 [ %70, %69 ]
  %.lcssa2634.lcssa = phi i32 [ %.lcssa2634, %69 ]
  br label %72

72:                                               ; preds = %._crit_edge9, %41
  %.lcssa2634.lcssa59 = phi i32 [ %.lcssa2634.lcssa, %._crit_edge9 ], [ %.lcssa2634.lcssa58, %41 ]
  %.lcssa2125.lcssa44.lcssa55 = phi i32 [ %.lcssa2125.lcssa44.lcssa, %._crit_edge9 ], [ %.lcssa2125.lcssa44.lcssa56, %41 ]
  %.lcssa1719.lcssa32.lcssa40.lcssa52 = phi i32 [ %.lcssa1719.lcssa32.lcssa40.lcssa, %._crit_edge9 ], [ %.lcssa1719.lcssa32.lcssa40.lcssa53, %41 ]
  %.lcssa23.lcssa28.lcssa37.lcssa49 = phi i32 [ %.lcssa23.lcssa28.lcssa37.lcssa, %._crit_edge9 ], [ %.lcssa23.lcssa28.lcssa37.lcssa50, %41 ]
  %.lcssa3546 = phi i32 [ %.lcssa35, %._crit_edge9 ], [ 0, %41 ]
  br label %73

73:                                               ; preds = %72
  %74 = add nsw i32 %42, 1
  %75 = icmp slt i32 %74, %36
  br i1 %75, label %41, label %._crit_edge12, !llvm.loop !12

._crit_edge12:                                    ; preds = %73
  %.lcssa2634.lcssa59.lcssa = phi i32 [ %.lcssa2634.lcssa59, %73 ]
  %.lcssa2125.lcssa44.lcssa55.lcssa = phi i32 [ %.lcssa2125.lcssa44.lcssa55, %73 ]
  %.lcssa1719.lcssa32.lcssa40.lcssa52.lcssa = phi i32 [ %.lcssa1719.lcssa32.lcssa40.lcssa52, %73 ]
  %.lcssa23.lcssa28.lcssa37.lcssa49.lcssa = phi i32 [ %.lcssa23.lcssa28.lcssa37.lcssa49, %73 ]
  %.lcssa47 = phi i32 [ %74, %73 ]
  %.lcssa3546.lcssa = phi i32 [ %.lcssa3546, %73 ]
  br label %76

76:                                               ; preds = %._crit_edge12, %38
  %.lcssa3546.lcssa77 = phi i32 [ %.lcssa3546.lcssa, %._crit_edge12 ], [ %.lcssa3546.lcssa76, %38 ]
  %.lcssa2634.lcssa59.lcssa73 = phi i32 [ %.lcssa2634.lcssa59.lcssa, %._crit_edge12 ], [ %.lcssa2634.lcssa59.lcssa74, %38 ]
  %.lcssa2125.lcssa44.lcssa55.lcssa70 = phi i32 [ %.lcssa2125.lcssa44.lcssa55.lcssa, %._crit_edge12 ], [ %.lcssa2125.lcssa44.lcssa55.lcssa71, %38 ]
  %.lcssa1719.lcssa32.lcssa40.lcssa52.lcssa67 = phi i32 [ %.lcssa1719.lcssa32.lcssa40.lcssa52.lcssa, %._crit_edge12 ], [ %.lcssa1719.lcssa32.lcssa40.lcssa52.lcssa68, %38 ]
  %.lcssa23.lcssa28.lcssa37.lcssa49.lcssa64 = phi i32 [ %.lcssa23.lcssa28.lcssa37.lcssa49.lcssa, %._crit_edge12 ], [ %.lcssa23.lcssa28.lcssa37.lcssa49.lcssa65, %38 ]
  %.lcssa4761 = phi i32 [ %.lcssa47, %._crit_edge12 ], [ 0, %38 ]
  br label %77

77:                                               ; preds = %76
  %78 = add nsw i32 %39, 1
  %79 = icmp slt i32 %78, %37
  br i1 %79, label %38, label %._crit_edge15, !llvm.loop !13

._crit_edge15:                                    ; preds = %77
  %.lcssa3546.lcssa77.lcssa = phi i32 [ %.lcssa3546.lcssa77, %77 ]
  %.lcssa2634.lcssa59.lcssa73.lcssa = phi i32 [ %.lcssa2634.lcssa59.lcssa73, %77 ]
  %.lcssa2125.lcssa44.lcssa55.lcssa70.lcssa = phi i32 [ %.lcssa2125.lcssa44.lcssa55.lcssa70, %77 ]
  %.lcssa1719.lcssa32.lcssa40.lcssa52.lcssa67.lcssa = phi i32 [ %.lcssa1719.lcssa32.lcssa40.lcssa52.lcssa67, %77 ]
  %.lcssa23.lcssa28.lcssa37.lcssa49.lcssa64.lcssa = phi i32 [ %.lcssa23.lcssa28.lcssa37.lcssa49.lcssa64, %77 ]
  %.lcssa62 = phi i32 [ %78, %77 ]
  %.lcssa4761.lcssa = phi i32 [ %.lcssa4761, %77 ]
  store i32 %.lcssa4761.lcssa, ptr %8, align 4
  store i32 %.lcssa62, ptr %7, align 4
  store i32 %.lcssa23.lcssa28.lcssa37.lcssa49.lcssa64.lcssa, ptr %13, align 4
  store i32 %.lcssa1719.lcssa32.lcssa40.lcssa52.lcssa67.lcssa, ptr %12, align 1
  store i32 %.lcssa2125.lcssa44.lcssa55.lcssa70.lcssa, ptr %11, align 1
  store i32 %.lcssa2634.lcssa59.lcssa73.lcssa, ptr %10, align 1
  store i32 %.lcssa3546.lcssa77.lcssa, ptr %9, align 1
  br label %80

80:                                               ; preds = %._crit_edge15, %22
  %81 = load i32, ptr %13, align 4
  %82 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %81)
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
