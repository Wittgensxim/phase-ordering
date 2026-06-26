; ModuleID = 'results\cmp_test\cmp_random_O2\Shootout_nestedloop\round_000\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Shootout/nestedloop.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds ptr, ptr %1, i64 1
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 @atoi(ptr noundef %6)
  br label %9

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %8, %4
  %10 = phi i32 [ %7, %4 ], [ 46, %8 ]
  %11 = mul i32 %10, %10
  %12 = mul i32 %11, %11
  %13 = mul i32 %10, %12
  br i1 false, label %.lr.ph14, label %25

.lr.ph14:                                         ; preds = %9
  br label %14

14:                                               ; preds = %.lr.ph14
  br i1 false, label %.lr.ph11, label %24

.lr.ph11:                                         ; preds = %14
  br label %15

15:                                               ; preds = %.lr.ph11
  br i1 false, label %.lr.ph8, label %23

.lr.ph8:                                          ; preds = %15
  br label %16

16:                                               ; preds = %.lr.ph8
  br i1 false, label %.lr.ph5, label %22

.lr.ph5:                                          ; preds = %16
  br label %17

17:                                               ; preds = %.lr.ph5
  br i1 false, label %.lr.ph2, label %21

.lr.ph2:                                          ; preds = %17
  br label %18

18:                                               ; preds = %.lr.ph2
  br i1 false, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %18
  br label %19

19:                                               ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %19
  br label %20

20:                                               ; preds = %._crit_edge, %18
  br label %._crit_edge3

._crit_edge3:                                     ; preds = %20
  br label %21

21:                                               ; preds = %._crit_edge3, %17
  br label %._crit_edge6

._crit_edge6:                                     ; preds = %21
  br label %22

22:                                               ; preds = %._crit_edge6, %16
  br label %._crit_edge9

._crit_edge9:                                     ; preds = %22
  br label %23

23:                                               ; preds = %._crit_edge9, %15
  br label %._crit_edge12

._crit_edge12:                                    ; preds = %23
  br label %24

24:                                               ; preds = %._crit_edge12, %14
  br label %._crit_edge15

._crit_edge15:                                    ; preds = %24
  br label %25

25:                                               ; preds = %._crit_edge15, %9
  %smax = call i32 @llvm.smax.i32(i32 %10, i32 0)
  %26 = mul i32 %13, %smax
  %27 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %26)
  ret i32 0
}

declare dso_local i32 @atoi(ptr noundef) #1

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
