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
  %21 = load i32, ptr %4, align 4
  %22 = icmp slt i32 0, %21
  br i1 %22, label %.lr.ph19, label %76

.lr.ph19:                                         ; preds = %19
  br label %23

23:                                               ; preds = %.lr.ph19, %71
  store i32 0, ptr %6, align 4
  %24 = load i32, ptr %4, align 4
  %25 = icmp slt i32 0, %24
  br i1 %25, label %.lr.ph16, label %70

.lr.ph16:                                         ; preds = %23
  br label %26

26:                                               ; preds = %.lr.ph16, %65
  store i32 0, ptr %7, align 4
  %27 = load i32, ptr %4, align 4
  %28 = icmp slt i32 0, %27
  br i1 %28, label %.lr.ph13, label %64

.lr.ph13:                                         ; preds = %26
  br label %29

29:                                               ; preds = %.lr.ph13, %59
  store i32 0, ptr %8, align 4
  %30 = load i32, ptr %4, align 4
  %31 = icmp slt i32 0, %30
  br i1 %31, label %.lr.ph10, label %58

.lr.ph10:                                         ; preds = %29
  br label %32

32:                                               ; preds = %.lr.ph10, %53
  store i32 0, ptr %9, align 4
  %33 = load i32, ptr %4, align 4
  %34 = icmp slt i32 0, %33
  br i1 %34, label %.lr.ph7, label %52

.lr.ph7:                                          ; preds = %32
  br label %35

35:                                               ; preds = %.lr.ph7, %47
  store i32 0, ptr %10, align 4
  %36 = load i32, ptr %4, align 4
  %37 = icmp slt i32 0, %36
  br i1 %37, label %.lr.ph, label %46

.lr.ph:                                           ; preds = %35
  br label %38

38:                                               ; preds = %.lr.ph, %41
  %39 = load i32, ptr %11, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %11, align 4
  br label %41

41:                                               ; preds = %38
  %42 = load i32, ptr %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %10, align 4
  %44 = load i32, ptr %4, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %38, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %41
  br label %46

46:                                               ; preds = %._crit_edge, %35
  br label %47

47:                                               ; preds = %46
  %48 = load i32, ptr %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %9, align 4
  %50 = load i32, ptr %4, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %35, label %._crit_edge8, !llvm.loop !9

._crit_edge8:                                     ; preds = %47
  br label %52

52:                                               ; preds = %._crit_edge8, %32
  br label %53

53:                                               ; preds = %52
  %54 = load i32, ptr %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, ptr %8, align 4
  %56 = load i32, ptr %4, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %32, label %._crit_edge11, !llvm.loop !10

._crit_edge11:                                    ; preds = %53
  br label %58

58:                                               ; preds = %._crit_edge11, %29
  br label %59

59:                                               ; preds = %58
  %60 = load i32, ptr %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr %7, align 4
  %62 = load i32, ptr %4, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %29, label %._crit_edge14, !llvm.loop !11

._crit_edge14:                                    ; preds = %59
  br label %64

64:                                               ; preds = %._crit_edge14, %26
  br label %65

65:                                               ; preds = %64
  %66 = load i32, ptr %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, ptr %6, align 4
  %68 = load i32, ptr %4, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %26, label %._crit_edge17, !llvm.loop !12

._crit_edge17:                                    ; preds = %65
  br label %70

70:                                               ; preds = %._crit_edge17, %23
  br label %71

71:                                               ; preds = %70
  %72 = load i32, ptr %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr %5, align 4
  %74 = load i32, ptr %4, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %23, label %._crit_edge20, !llvm.loop !13

._crit_edge20:                                    ; preds = %71
  br label %76

76:                                               ; preds = %._crit_edge20, %19
  %77 = load i32, ptr %11, align 4
  %78 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %77) #2
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
