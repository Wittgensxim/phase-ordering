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
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 @atoi(ptr noundef %6) #3
  br label %9

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %8, %4
  %10 = phi i32 [ %7, %4 ], [ 46, %8 ]
  br label %11

11:                                               ; preds = %9
  br i1 false, label %12, label %34

12:                                               ; preds = %11
  br label %13

13:                                               ; preds = %12
  br i1 false, label %14, label %32

14:                                               ; preds = %13
  br label %15

15:                                               ; preds = %14
  br i1 false, label %16, label %30

16:                                               ; preds = %15
  br label %17

17:                                               ; preds = %16
  br i1 false, label %18, label %28

18:                                               ; preds = %17
  br label %19

19:                                               ; preds = %18
  br i1 false, label %20, label %26

20:                                               ; preds = %19
  br label %21

21:                                               ; preds = %20
  br i1 false, label %22, label %24

22:                                               ; preds = %21
  br label %23

23:                                               ; preds = %22
  unreachable

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %24
  unreachable

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26
  unreachable

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28
  unreachable

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %30
  unreachable

32:                                               ; preds = %13
  br label %33

33:                                               ; preds = %32
  unreachable

34:                                               ; preds = %11
  %35 = mul i32 %10, %10
  %36 = mul i32 %35, %35
  %37 = mul i32 %10, %36
  %smax = call i32 @llvm.smax.i32(i32 %10, i32 0)
  %38 = mul i32 %37, %smax
  %39 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %38) #3
  ret i32 0
}

declare dso_local i32 @atoi(ptr noundef) #1

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

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
