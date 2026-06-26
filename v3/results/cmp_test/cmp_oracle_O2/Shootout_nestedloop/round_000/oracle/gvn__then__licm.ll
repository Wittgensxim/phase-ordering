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
  %14 = icmp eq i32 %0, 2
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = getelementptr inbounds ptr, ptr %1, i64 1
  %17 = load ptr, ptr %16, align 8
  %18 = call i32 @atoi(ptr noundef %17)
  br label %20

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi i32 [ %18, %15 ], [ 46, %19 ]
  store i32 %21, ptr %6, align 4
  store i32 0, ptr %13, align 4
  store i32 0, ptr %7, align 4
  %.promoted51 = load i32, ptr %8, align 1
  %.promoted = load i32, ptr %9, align 1
  %.promoted54 = load i32, ptr %10, align 1
  %.promoted56 = load i32, ptr %11, align 1
  %.promoted58 = load i32, ptr %12, align 1
  %.promoted60 = load i32, ptr %13, align 1
  %.promoted62 = load i32, ptr %7, align 1
  br label %22

22:                                               ; preds = %83, %20
  %23 = phi i32 [ %84, %83 ], [ %.promoted62, %20 ]
  %.lcssa1622.lcssa28.lcssa37.lcssa49.lcssa61 = phi i32 [ %.lcssa1622.lcssa28.lcssa37.lcssa49.lcssa, %83 ], [ %.promoted60, %20 ]
  %.lcssa1820.lcssa26.lcssa36.lcssa47.lcssa59 = phi i32 [ %.lcssa1820.lcssa26.lcssa36.lcssa47.lcssa, %83 ], [ %.promoted58, %20 ]
  %.lcssa2325.lcssa34.lcssa45.lcssa57 = phi i32 [ %.lcssa2325.lcssa34.lcssa45.lcssa, %83 ], [ %.promoted56, %20 ]
  %.lcssa3032.lcssa43.lcssa55 = phi i32 [ %.lcssa3032.lcssa43.lcssa, %83 ], [ %.promoted54, %20 ]
  %.lcssa3941.lcssa53 = phi i32 [ %.lcssa3941.lcssa, %83 ], [ %.promoted, %20 ]
  %.lcssa5052 = phi i32 [ %.lcssa50, %83 ], [ %.promoted51, %20 ]
  %24 = phi i32 [ %.lcssa14, %83 ], [ %21, %20 ]
  %25 = phi i32 [ %.lcssa13, %83 ], [ %21, %20 ]
  %26 = phi i32 [ %.lcssa12, %83 ], [ %21, %20 ]
  %27 = phi i32 [ %.lcssa11, %83 ], [ %21, %20 ]
  %28 = phi i32 [ %.lcssa10, %83 ], [ 0, %20 ]
  %29 = phi i32 [ %84, %83 ], [ 0, %20 ]
  %30 = icmp slt i32 %29, %27
  br i1 %30, label %31, label %85

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %81, %31
  %33 = phi i32 [ %82, %81 ], [ 0, %31 ]
  %.lcssa1622.lcssa28.lcssa37.lcssa49 = phi i32 [ %.lcssa1622.lcssa28.lcssa37.lcssa, %81 ], [ %.lcssa1622.lcssa28.lcssa37.lcssa49.lcssa61, %31 ]
  %.lcssa1820.lcssa26.lcssa36.lcssa47 = phi i32 [ %.lcssa1820.lcssa26.lcssa36.lcssa, %81 ], [ %.lcssa1820.lcssa26.lcssa36.lcssa47.lcssa59, %31 ]
  %.lcssa2325.lcssa34.lcssa45 = phi i32 [ %.lcssa2325.lcssa34.lcssa, %81 ], [ %.lcssa2325.lcssa34.lcssa45.lcssa57, %31 ]
  %.lcssa3032.lcssa43 = phi i32 [ %.lcssa3032.lcssa, %81 ], [ %.lcssa3032.lcssa43.lcssa55, %31 ]
  %.lcssa3941 = phi i32 [ %.lcssa39, %81 ], [ %.lcssa3941.lcssa53, %31 ]
  %34 = phi i32 [ %.lcssa9, %81 ], [ %24, %31 ]
  %35 = phi i32 [ %.lcssa8, %81 ], [ %25, %31 ]
  %36 = phi i32 [ %.lcssa7, %81 ], [ %26, %31 ]
  %37 = phi i32 [ %.lcssa7, %81 ], [ %27, %31 ]
  %38 = phi i32 [ %82, %81 ], [ 0, %31 ]
  %39 = phi i32 [ %.lcssa6, %81 ], [ %28, %31 ]
  %40 = icmp slt i32 %38, %37
  br i1 %40, label %41, label %83

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %79, %41
  %43 = phi i32 [ %80, %79 ], [ 0, %41 ]
  %.lcssa1622.lcssa28.lcssa37 = phi i32 [ %.lcssa1622.lcssa28.lcssa, %79 ], [ %.lcssa1622.lcssa28.lcssa37.lcssa49, %41 ]
  %.lcssa1820.lcssa26.lcssa36 = phi i32 [ %.lcssa1820.lcssa26.lcssa, %79 ], [ %.lcssa1820.lcssa26.lcssa36.lcssa47, %41 ]
  %.lcssa2325.lcssa34 = phi i32 [ %.lcssa2325.lcssa, %79 ], [ %.lcssa2325.lcssa34.lcssa45, %41 ]
  %.lcssa3032 = phi i32 [ %.lcssa30, %79 ], [ %.lcssa3032.lcssa43, %41 ]
  %44 = phi i32 [ %.lcssa5, %79 ], [ %34, %41 ]
  %45 = phi i32 [ %.lcssa4, %79 ], [ %35, %41 ]
  %46 = phi i32 [ %.lcssa4, %79 ], [ %36, %41 ]
  %47 = phi i32 [ %80, %79 ], [ 0, %41 ]
  %48 = phi i32 [ %.lcssa3, %79 ], [ %39, %41 ]
  %49 = icmp slt i32 %47, %46
  br i1 %49, label %50, label %81

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %77, %50
  %52 = phi i32 [ %78, %77 ], [ 0, %50 ]
  %.lcssa1622.lcssa28 = phi i32 [ %.lcssa1622.lcssa, %77 ], [ %.lcssa1622.lcssa28.lcssa37, %50 ]
  %.lcssa1820.lcssa26 = phi i32 [ %.lcssa1820.lcssa, %77 ], [ %.lcssa1820.lcssa26.lcssa36, %50 ]
  %.lcssa2325 = phi i32 [ %.lcssa23, %77 ], [ %.lcssa2325.lcssa34, %50 ]
  %53 = phi i32 [ %.lcssa2, %77 ], [ %44, %50 ]
  %54 = phi i32 [ %.lcssa2, %77 ], [ %45, %50 ]
  %55 = phi i32 [ %78, %77 ], [ 0, %50 ]
  %56 = phi i32 [ %.lcssa1, %77 ], [ %48, %50 ]
  %57 = icmp slt i32 %55, %54
  br i1 %57, label %58, label %79

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %75, %58
  %60 = phi i32 [ %76, %75 ], [ 0, %58 ]
  %.lcssa1622 = phi i32 [ %.lcssa16, %75 ], [ %.lcssa1622.lcssa28, %58 ]
  %.lcssa1820 = phi i32 [ %.lcssa18, %75 ], [ %.lcssa1820.lcssa26, %58 ]
  %61 = phi i32 [ %21, %75 ], [ %53, %58 ]
  %62 = phi i32 [ %76, %75 ], [ 0, %58 ]
  %63 = phi i32 [ %.lcssa, %75 ], [ %56, %58 ]
  %64 = icmp slt i32 %62, %61
  br i1 %64, label %65, label %77

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %72, %65
  %67 = phi i32 [ %74, %72 ], [ 0, %65 ]
  %68 = phi i32 [ %73, %72 ], [ %.lcssa1622, %65 ]
  %69 = phi i32 [ %74, %72 ], [ 0, %65 ]
  %70 = phi i32 [ %73, %72 ], [ %63, %65 ]
  %71 = icmp slt i32 %69, %21
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = add nsw i32 %70, 1
  %74 = add nsw i32 %69, 1
  br label %66, !llvm.loop !7

75:                                               ; preds = %66
  %.lcssa18 = phi i32 [ %67, %66 ]
  %.lcssa16 = phi i32 [ %68, %66 ]
  %.lcssa = phi i32 [ %70, %66 ]
  %76 = add nsw i32 %62, 1
  br label %59, !llvm.loop !9

77:                                               ; preds = %59
  %.lcssa23 = phi i32 [ %60, %59 ]
  %.lcssa1622.lcssa = phi i32 [ %.lcssa1622, %59 ]
  %.lcssa1820.lcssa = phi i32 [ %.lcssa1820, %59 ]
  %.lcssa2 = phi i32 [ %61, %59 ]
  %.lcssa1 = phi i32 [ %63, %59 ]
  %78 = add nsw i32 %55, 1
  br label %51, !llvm.loop !10

79:                                               ; preds = %51
  %.lcssa30 = phi i32 [ %52, %51 ]
  %.lcssa1622.lcssa28.lcssa = phi i32 [ %.lcssa1622.lcssa28, %51 ]
  %.lcssa1820.lcssa26.lcssa = phi i32 [ %.lcssa1820.lcssa26, %51 ]
  %.lcssa2325.lcssa = phi i32 [ %.lcssa2325, %51 ]
  %.lcssa5 = phi i32 [ %53, %51 ]
  %.lcssa4 = phi i32 [ %54, %51 ]
  %.lcssa3 = phi i32 [ %56, %51 ]
  %80 = add nsw i32 %47, 1
  br label %42, !llvm.loop !11

81:                                               ; preds = %42
  %.lcssa39 = phi i32 [ %43, %42 ]
  %.lcssa1622.lcssa28.lcssa37.lcssa = phi i32 [ %.lcssa1622.lcssa28.lcssa37, %42 ]
  %.lcssa1820.lcssa26.lcssa36.lcssa = phi i32 [ %.lcssa1820.lcssa26.lcssa36, %42 ]
  %.lcssa2325.lcssa34.lcssa = phi i32 [ %.lcssa2325.lcssa34, %42 ]
  %.lcssa3032.lcssa = phi i32 [ %.lcssa3032, %42 ]
  %.lcssa9 = phi i32 [ %44, %42 ]
  %.lcssa8 = phi i32 [ %45, %42 ]
  %.lcssa7 = phi i32 [ %46, %42 ]
  %.lcssa6 = phi i32 [ %48, %42 ]
  %82 = add nsw i32 %38, 1
  br label %32, !llvm.loop !12

83:                                               ; preds = %32
  %.lcssa50 = phi i32 [ %33, %32 ]
  %.lcssa1622.lcssa28.lcssa37.lcssa49.lcssa = phi i32 [ %.lcssa1622.lcssa28.lcssa37.lcssa49, %32 ]
  %.lcssa1820.lcssa26.lcssa36.lcssa47.lcssa = phi i32 [ %.lcssa1820.lcssa26.lcssa36.lcssa47, %32 ]
  %.lcssa2325.lcssa34.lcssa45.lcssa = phi i32 [ %.lcssa2325.lcssa34.lcssa45, %32 ]
  %.lcssa3032.lcssa43.lcssa = phi i32 [ %.lcssa3032.lcssa43, %32 ]
  %.lcssa3941.lcssa = phi i32 [ %.lcssa3941, %32 ]
  %.lcssa14 = phi i32 [ %34, %32 ]
  %.lcssa13 = phi i32 [ %35, %32 ]
  %.lcssa12 = phi i32 [ %36, %32 ]
  %.lcssa11 = phi i32 [ %37, %32 ]
  %.lcssa10 = phi i32 [ %39, %32 ]
  %84 = add nsw i32 %29, 1
  br label %22, !llvm.loop !13

85:                                               ; preds = %22
  %.lcssa63 = phi i32 [ %23, %22 ]
  %.lcssa1622.lcssa28.lcssa37.lcssa49.lcssa61.lcssa = phi i32 [ %.lcssa1622.lcssa28.lcssa37.lcssa49.lcssa61, %22 ]
  %.lcssa1820.lcssa26.lcssa36.lcssa47.lcssa59.lcssa = phi i32 [ %.lcssa1820.lcssa26.lcssa36.lcssa47.lcssa59, %22 ]
  %.lcssa2325.lcssa34.lcssa45.lcssa57.lcssa = phi i32 [ %.lcssa2325.lcssa34.lcssa45.lcssa57, %22 ]
  %.lcssa3032.lcssa43.lcssa55.lcssa = phi i32 [ %.lcssa3032.lcssa43.lcssa55, %22 ]
  %.lcssa3941.lcssa53.lcssa = phi i32 [ %.lcssa3941.lcssa53, %22 ]
  %.lcssa5052.lcssa = phi i32 [ %.lcssa5052, %22 ]
  %.lcssa15 = phi i32 [ %28, %22 ]
  store i32 %.lcssa5052.lcssa, ptr %8, align 1
  store i32 %.lcssa3941.lcssa53.lcssa, ptr %9, align 1
  store i32 %.lcssa3032.lcssa43.lcssa55.lcssa, ptr %10, align 1
  store i32 %.lcssa2325.lcssa34.lcssa45.lcssa57.lcssa, ptr %11, align 1
  store i32 %.lcssa1820.lcssa26.lcssa36.lcssa47.lcssa59.lcssa, ptr %12, align 1
  store i32 %.lcssa1622.lcssa28.lcssa37.lcssa49.lcssa61.lcssa, ptr %13, align 1
  store i32 %.lcssa63, ptr %7, align 1
  %86 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %.lcssa15)
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
