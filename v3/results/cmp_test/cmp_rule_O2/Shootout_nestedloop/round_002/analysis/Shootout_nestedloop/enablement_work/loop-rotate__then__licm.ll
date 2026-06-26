; ModuleID = 'results\cmp_test\cmp_rule_O2\Shootout_nestedloop\round_001\output.ll'
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
  %21 = load i32, ptr %3, align 4
  %22 = icmp slt i32 0, %21
  %23 = load i32, ptr %3, align 4
  %24 = icmp slt i32 0, %23
  %25 = load i32, ptr %3, align 4
  %26 = icmp slt i32 0, %25
  %27 = load i32, ptr %3, align 4
  %28 = icmp slt i32 0, %27
  %29 = load i32, ptr %3, align 4
  %30 = icmp slt i32 0, %29
  %31 = load i32, ptr %3, align 4
  %32 = load i32, ptr %3, align 4
  %33 = load i32, ptr %3, align 4
  %34 = load i32, ptr %3, align 4
  %35 = load i32, ptr %3, align 4
  %36 = load i32, ptr %3, align 4
  %.promoted = load i32, ptr %4, align 4
  %.promoted63 = load i32, ptr %10, align 4
  %.promoted66 = load i32, ptr %9, align 1
  %.promoted69 = load i32, ptr %8, align 1
  %.promoted72 = load i32, ptr %7, align 1
  %.promoted75 = load i32, ptr %6, align 1
  br label %37

37:                                               ; preds = %.lr.ph14, %71
  %.lcssa3546.lcssa76 = phi i32 [ %.promoted75, %.lr.ph14 ], [ %.lcssa3546.lcssa77, %71 ]
  %.lcssa2634.lcssa59.lcssa74 = phi i32 [ %.promoted72, %.lr.ph14 ], [ %.lcssa2634.lcssa59.lcssa73, %71 ]
  %.lcssa2125.lcssa44.lcssa55.lcssa71 = phi i32 [ %.promoted69, %.lr.ph14 ], [ %.lcssa2125.lcssa44.lcssa55.lcssa70, %71 ]
  %.lcssa1719.lcssa32.lcssa40.lcssa52.lcssa68 = phi i32 [ %.promoted66, %.lr.ph14 ], [ %.lcssa1719.lcssa32.lcssa40.lcssa52.lcssa67, %71 ]
  %.lcssa23.lcssa28.lcssa37.lcssa49.lcssa65 = phi i32 [ %.promoted63, %.lr.ph14 ], [ %.lcssa23.lcssa28.lcssa37.lcssa49.lcssa64, %71 ]
  %38 = phi i32 [ %.promoted, %.lr.ph14 ], [ %72, %71 ]
  br i1 %22, label %.lr.ph11, label %70

.lr.ph11:                                         ; preds = %37
  br label %39

39:                                               ; preds = %.lr.ph11, %67
  %.lcssa2634.lcssa58 = phi i32 [ %.lcssa2634.lcssa59.lcssa74, %.lr.ph11 ], [ %.lcssa2634.lcssa59, %67 ]
  %.lcssa2125.lcssa44.lcssa56 = phi i32 [ %.lcssa2125.lcssa44.lcssa55.lcssa71, %.lr.ph11 ], [ %.lcssa2125.lcssa44.lcssa55, %67 ]
  %.lcssa1719.lcssa32.lcssa40.lcssa53 = phi i32 [ %.lcssa1719.lcssa32.lcssa40.lcssa52.lcssa68, %.lr.ph11 ], [ %.lcssa1719.lcssa32.lcssa40.lcssa52, %67 ]
  %.lcssa23.lcssa28.lcssa37.lcssa50 = phi i32 [ %.lcssa23.lcssa28.lcssa37.lcssa49.lcssa65, %.lr.ph11 ], [ %.lcssa23.lcssa28.lcssa37.lcssa49, %67 ]
  %40 = phi i32 [ 0, %.lr.ph11 ], [ %68, %67 ]
  br i1 %24, label %.lr.ph8, label %66

.lr.ph8:                                          ; preds = %39
  br label %41

41:                                               ; preds = %.lr.ph8, %63
  %.lcssa2125.lcssa43 = phi i32 [ %.lcssa2125.lcssa44.lcssa56, %.lr.ph8 ], [ %.lcssa2125.lcssa44, %63 ]
  %.lcssa1719.lcssa32.lcssa41 = phi i32 [ %.lcssa1719.lcssa32.lcssa40.lcssa53, %.lr.ph8 ], [ %.lcssa1719.lcssa32.lcssa40, %63 ]
  %.lcssa23.lcssa28.lcssa38 = phi i32 [ %.lcssa23.lcssa28.lcssa37.lcssa50, %.lr.ph8 ], [ %.lcssa23.lcssa28.lcssa37, %63 ]
  %42 = phi i32 [ 0, %.lr.ph8 ], [ %64, %63 ]
  br i1 %26, label %.lr.ph5, label %62

.lr.ph5:                                          ; preds = %41
  br label %43

43:                                               ; preds = %.lr.ph5, %59
  %.lcssa1719.lcssa31 = phi i32 [ %.lcssa1719.lcssa32.lcssa41, %.lr.ph5 ], [ %.lcssa1719.lcssa32, %59 ]
  %.lcssa23.lcssa29 = phi i32 [ %.lcssa23.lcssa28.lcssa38, %.lr.ph5 ], [ %.lcssa23.lcssa28, %59 ]
  %44 = phi i32 [ 0, %.lr.ph5 ], [ %60, %59 ]
  br i1 %28, label %.lr.ph2, label %58

.lr.ph2:                                          ; preds = %43
  br label %45

45:                                               ; preds = %.lr.ph2, %55
  %.lcssa24 = phi i32 [ %.lcssa23.lcssa29, %.lr.ph2 ], [ %.lcssa23, %55 ]
  %46 = phi i32 [ 0, %.lr.ph2 ], [ %56, %55 ]
  br i1 %30, label %.lr.ph, label %54

.lr.ph:                                           ; preds = %45
  br label %47

47:                                               ; preds = %.lr.ph, %51
  %48 = phi i32 [ 0, %.lr.ph ], [ %52, %51 ]
  %49 = phi i32 [ %.lcssa24, %.lr.ph ], [ %50, %51 ]
  %50 = add nsw i32 %49, 1
  br label %51

51:                                               ; preds = %47
  %52 = add nsw i32 %48, 1
  %53 = icmp slt i32 %52, %31
  br i1 %53, label %47, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %51
  %.lcssa17 = phi i32 [ %52, %51 ]
  %.lcssa = phi i32 [ %50, %51 ]
  br label %54

54:                                               ; preds = %._crit_edge, %45
  %.lcssa23 = phi i32 [ %.lcssa, %._crit_edge ], [ %.lcssa24, %45 ]
  %.lcssa1719 = phi i32 [ %.lcssa17, %._crit_edge ], [ 0, %45 ]
  br label %55

55:                                               ; preds = %54
  %56 = add nsw i32 %46, 1
  %57 = icmp slt i32 %56, %32
  br i1 %57, label %45, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %55
  %.lcssa23.lcssa = phi i32 [ %.lcssa23, %55 ]
  %.lcssa21 = phi i32 [ %56, %55 ]
  %.lcssa1719.lcssa = phi i32 [ %.lcssa1719, %55 ]
  br label %58

58:                                               ; preds = %._crit_edge3, %43
  %.lcssa1719.lcssa32 = phi i32 [ %.lcssa1719.lcssa, %._crit_edge3 ], [ %.lcssa1719.lcssa31, %43 ]
  %.lcssa23.lcssa28 = phi i32 [ %.lcssa23.lcssa, %._crit_edge3 ], [ %.lcssa23.lcssa29, %43 ]
  %.lcssa2125 = phi i32 [ %.lcssa21, %._crit_edge3 ], [ 0, %43 ]
  br label %59

59:                                               ; preds = %58
  %60 = add nsw i32 %44, 1
  %61 = icmp slt i32 %60, %33
  br i1 %61, label %43, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %59
  %.lcssa1719.lcssa32.lcssa = phi i32 [ %.lcssa1719.lcssa32, %59 ]
  %.lcssa23.lcssa28.lcssa = phi i32 [ %.lcssa23.lcssa28, %59 ]
  %.lcssa26 = phi i32 [ %60, %59 ]
  %.lcssa2125.lcssa = phi i32 [ %.lcssa2125, %59 ]
  br label %62

62:                                               ; preds = %._crit_edge6, %41
  %.lcssa2125.lcssa44 = phi i32 [ %.lcssa2125.lcssa, %._crit_edge6 ], [ %.lcssa2125.lcssa43, %41 ]
  %.lcssa1719.lcssa32.lcssa40 = phi i32 [ %.lcssa1719.lcssa32.lcssa, %._crit_edge6 ], [ %.lcssa1719.lcssa32.lcssa41, %41 ]
  %.lcssa23.lcssa28.lcssa37 = phi i32 [ %.lcssa23.lcssa28.lcssa, %._crit_edge6 ], [ %.lcssa23.lcssa28.lcssa38, %41 ]
  %.lcssa2634 = phi i32 [ %.lcssa26, %._crit_edge6 ], [ 0, %41 ]
  br label %63

63:                                               ; preds = %62
  %64 = add nsw i32 %42, 1
  %65 = icmp slt i32 %64, %34
  br i1 %65, label %41, label %._crit_edge9, !llvm.loop !11

._crit_edge9:                                     ; preds = %63
  %.lcssa2125.lcssa44.lcssa = phi i32 [ %.lcssa2125.lcssa44, %63 ]
  %.lcssa1719.lcssa32.lcssa40.lcssa = phi i32 [ %.lcssa1719.lcssa32.lcssa40, %63 ]
  %.lcssa23.lcssa28.lcssa37.lcssa = phi i32 [ %.lcssa23.lcssa28.lcssa37, %63 ]
  %.lcssa35 = phi i32 [ %64, %63 ]
  %.lcssa2634.lcssa = phi i32 [ %.lcssa2634, %63 ]
  br label %66

66:                                               ; preds = %._crit_edge9, %39
  %.lcssa2634.lcssa59 = phi i32 [ %.lcssa2634.lcssa, %._crit_edge9 ], [ %.lcssa2634.lcssa58, %39 ]
  %.lcssa2125.lcssa44.lcssa55 = phi i32 [ %.lcssa2125.lcssa44.lcssa, %._crit_edge9 ], [ %.lcssa2125.lcssa44.lcssa56, %39 ]
  %.lcssa1719.lcssa32.lcssa40.lcssa52 = phi i32 [ %.lcssa1719.lcssa32.lcssa40.lcssa, %._crit_edge9 ], [ %.lcssa1719.lcssa32.lcssa40.lcssa53, %39 ]
  %.lcssa23.lcssa28.lcssa37.lcssa49 = phi i32 [ %.lcssa23.lcssa28.lcssa37.lcssa, %._crit_edge9 ], [ %.lcssa23.lcssa28.lcssa37.lcssa50, %39 ]
  %.lcssa3546 = phi i32 [ %.lcssa35, %._crit_edge9 ], [ 0, %39 ]
  br label %67

67:                                               ; preds = %66
  %68 = add nsw i32 %40, 1
  %69 = icmp slt i32 %68, %35
  br i1 %69, label %39, label %._crit_edge12, !llvm.loop !12

._crit_edge12:                                    ; preds = %67
  %.lcssa2634.lcssa59.lcssa = phi i32 [ %.lcssa2634.lcssa59, %67 ]
  %.lcssa2125.lcssa44.lcssa55.lcssa = phi i32 [ %.lcssa2125.lcssa44.lcssa55, %67 ]
  %.lcssa1719.lcssa32.lcssa40.lcssa52.lcssa = phi i32 [ %.lcssa1719.lcssa32.lcssa40.lcssa52, %67 ]
  %.lcssa23.lcssa28.lcssa37.lcssa49.lcssa = phi i32 [ %.lcssa23.lcssa28.lcssa37.lcssa49, %67 ]
  %.lcssa47 = phi i32 [ %68, %67 ]
  %.lcssa3546.lcssa = phi i32 [ %.lcssa3546, %67 ]
  br label %70

70:                                               ; preds = %._crit_edge12, %37
  %.lcssa3546.lcssa77 = phi i32 [ %.lcssa3546.lcssa, %._crit_edge12 ], [ %.lcssa3546.lcssa76, %37 ]
  %.lcssa2634.lcssa59.lcssa73 = phi i32 [ %.lcssa2634.lcssa59.lcssa, %._crit_edge12 ], [ %.lcssa2634.lcssa59.lcssa74, %37 ]
  %.lcssa2125.lcssa44.lcssa55.lcssa70 = phi i32 [ %.lcssa2125.lcssa44.lcssa55.lcssa, %._crit_edge12 ], [ %.lcssa2125.lcssa44.lcssa55.lcssa71, %37 ]
  %.lcssa1719.lcssa32.lcssa40.lcssa52.lcssa67 = phi i32 [ %.lcssa1719.lcssa32.lcssa40.lcssa52.lcssa, %._crit_edge12 ], [ %.lcssa1719.lcssa32.lcssa40.lcssa52.lcssa68, %37 ]
  %.lcssa23.lcssa28.lcssa37.lcssa49.lcssa64 = phi i32 [ %.lcssa23.lcssa28.lcssa37.lcssa49.lcssa, %._crit_edge12 ], [ %.lcssa23.lcssa28.lcssa37.lcssa49.lcssa65, %37 ]
  %.lcssa4761 = phi i32 [ %.lcssa47, %._crit_edge12 ], [ 0, %37 ]
  br label %71

71:                                               ; preds = %70
  %72 = add nsw i32 %38, 1
  %73 = icmp slt i32 %72, %36
  br i1 %73, label %37, label %._crit_edge15, !llvm.loop !13

._crit_edge15:                                    ; preds = %71
  %.lcssa3546.lcssa77.lcssa = phi i32 [ %.lcssa3546.lcssa77, %71 ]
  %.lcssa2634.lcssa59.lcssa73.lcssa = phi i32 [ %.lcssa2634.lcssa59.lcssa73, %71 ]
  %.lcssa2125.lcssa44.lcssa55.lcssa70.lcssa = phi i32 [ %.lcssa2125.lcssa44.lcssa55.lcssa70, %71 ]
  %.lcssa1719.lcssa32.lcssa40.lcssa52.lcssa67.lcssa = phi i32 [ %.lcssa1719.lcssa32.lcssa40.lcssa52.lcssa67, %71 ]
  %.lcssa23.lcssa28.lcssa37.lcssa49.lcssa64.lcssa = phi i32 [ %.lcssa23.lcssa28.lcssa37.lcssa49.lcssa64, %71 ]
  %.lcssa62 = phi i32 [ %72, %71 ]
  %.lcssa4761.lcssa = phi i32 [ %.lcssa4761, %71 ]
  store i32 %.lcssa4761.lcssa, ptr %5, align 4
  store i32 %.lcssa62, ptr %4, align 4
  store i32 %.lcssa23.lcssa28.lcssa37.lcssa49.lcssa64.lcssa, ptr %10, align 4
  store i32 %.lcssa1719.lcssa32.lcssa40.lcssa52.lcssa67.lcssa, ptr %9, align 1
  store i32 %.lcssa2125.lcssa44.lcssa55.lcssa70.lcssa, ptr %8, align 1
  store i32 %.lcssa2634.lcssa59.lcssa73.lcssa, ptr %7, align 1
  store i32 %.lcssa3546.lcssa77.lcssa, ptr %6, align 1
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
