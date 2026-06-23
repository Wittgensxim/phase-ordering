; ModuleID = 'E:\llvm-test-suite\SingleSource\UnitTests\2003-04-22-Switch.c'
source_filename = "E:\\llvm-test-suite\\SingleSource\\UnitTests\\2003-04-22-Switch.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [3 x i8] c"C\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"A\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"B\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"D\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  br label %3

3:                                                ; preds = %9, %0
  %4 = load i32, ptr %2, align 4
  %5 = icmp ult i32 %4, 10
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = load i32, ptr %2, align 4
  %8 = call i32 @func(i32 noundef %7)
  br label %9

9:                                                ; preds = %6
  %10 = load i32, ptr %2, align 4
  %11 = add i32 %10, 1
  store i32 %11, ptr %2, align 4
  br label %3, !llvm.loop !7

12:                                               ; preds = %3
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @func(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  store i32 4, ptr %3, align 4
  %4 = load i32, ptr %2, align 4
  switch i32 %4, label %12 [
    i32 8, label %5
    i32 0, label %7
    i32 3, label %7
    i32 2, label %7
    i32 1, label %9
    i32 7, label %9
    i32 9, label %10
  ]

5:                                                ; preds = %1
  %6 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 6, ptr %3, align 4
  br label %7

7:                                                ; preds = %1, %1, %1, %5
  %8 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %14

9:                                                ; preds = %1, %1
  store i32 7, ptr %3, align 4
  br label %10

10:                                               ; preds = %1, %9
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %14

12:                                               ; preds = %1
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store i32 1, ptr %3, align 4
  br label %14

14:                                               ; preds = %12, %10, %7
  %15 = load i32, ptr %3, align 4
  ret i32 %15
}

declare dso_local i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:\\llvm-test-suite\\SingleSource\\UnitTests/2003-04-22-Switch.c", directory: "E:/Phase Ordering")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
