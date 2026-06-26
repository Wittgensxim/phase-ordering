; ModuleID = 'results\cmp_test\cmp_rule_O2\Shootout_nestedloop\Shootout_nestedloop.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Shootout/nestedloop.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %1, ptr %3, align 8
  %12 = icmp eq i32 %0, 2
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %16 = load ptr, ptr %15, align 8
  %17 = call i32 @atoi(ptr noundef %16) #2
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %13
  %20 = phi i32 [ %17, %13 ], [ 46, %18 ]
  store i32 %20, ptr %4, align 4
  store i32 0, ptr %11, align 4
  store i32 0, ptr %5, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %.lr.ph14, label %75

.lr.ph14:                                         ; preds = %19
  br label %22

22:                                               ; preds = %.lr.ph14, %70
  store i32 0, ptr %6, align 4
  %23 = load i32, ptr %4, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %.lr.ph11, label %69

.lr.ph11:                                         ; preds = %22
  br label %25

25:                                               ; preds = %.lr.ph11, %64
  store i32 0, ptr %7, align 4
  %26 = load i32, ptr %4, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %.lr.ph8, label %63

.lr.ph8:                                          ; preds = %25
  br label %28

28:                                               ; preds = %.lr.ph8, %58
  store i32 0, ptr %8, align 4
  %29 = load i32, ptr %4, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %.lr.ph5, label %57

.lr.ph5:                                          ; preds = %28
  br label %31

31:                                               ; preds = %.lr.ph5, %52
  store i32 0, ptr %9, align 4
  %32 = load i32, ptr %4, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %.lr.ph2, label %51

.lr.ph2:                                          ; preds = %31
  br label %34

34:                                               ; preds = %.lr.ph2, %46
  store i32 0, ptr %10, align 4
  %35 = load i32, ptr %4, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %.lr.ph, label %45

.lr.ph:                                           ; preds = %34
  br label %37

37:                                               ; preds = %.lr.ph, %40
  %38 = load i32, ptr %11, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %11, align 4
  br label %40

40:                                               ; preds = %37
  %41 = load i32, ptr %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %10, align 4
  %43 = load i32, ptr %4, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %37, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %40
  br label %45

45:                                               ; preds = %._crit_edge, %34
  br label %46

46:                                               ; preds = %45
  %47 = load i32, ptr %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %9, align 4
  %49 = load i32, ptr %4, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %34, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %46
  br label %51

51:                                               ; preds = %._crit_edge3, %31
  br label %52

52:                                               ; preds = %51
  %53 = load i32, ptr %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, ptr %8, align 4
  %55 = load i32, ptr %4, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %31, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %52
  br label %57

57:                                               ; preds = %._crit_edge6, %28
  br label %58

58:                                               ; preds = %57
  %59 = load i32, ptr %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %7, align 4
  %61 = load i32, ptr %4, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %28, label %._crit_edge9, !llvm.loop !11

._crit_edge9:                                     ; preds = %58
  br label %63

63:                                               ; preds = %._crit_edge9, %25
  br label %64

64:                                               ; preds = %63
  %65 = load i32, ptr %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %6, align 4
  %67 = load i32, ptr %4, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %25, label %._crit_edge12, !llvm.loop !12

._crit_edge12:                                    ; preds = %64
  br label %69

69:                                               ; preds = %._crit_edge12, %22
  br label %70

70:                                               ; preds = %69
  %71 = load i32, ptr %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, ptr %5, align 4
  %73 = load i32, ptr %4, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %22, label %._crit_edge15, !llvm.loop !13

._crit_edge15:                                    ; preds = %70
  br label %75

75:                                               ; preds = %._crit_edge15, %19
  %76 = load i32, ptr %11, align 4
  %77 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %76) #2
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
