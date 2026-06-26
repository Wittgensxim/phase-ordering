; ModuleID = 'results\paper_full\Adobe-C++_functionobjects\round_000\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Adobe-C++/functionobjects.cpp"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.less_than_functor = type { i8 }
%struct.inline_less_than_functor = type { i8 }
%"struct.std::less" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_comp_iter" = type { ptr }
%"struct.__gnu_cxx::__ops::_Iter_comp_val" = type { ptr }
%"struct.__gnu_cxx::__ops::_Val_comp_iter" = type { ptr }
%"struct.__gnu_cxx::__ops::_Iter_comp_iter.0" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_comp_val.1" = type { i8 }
%"struct.__gnu_cxx::__ops::_Val_comp_iter.2" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_comp_iter.3" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_comp_val.4" = type { i8 }
%"struct.__gnu_cxx::__ops::_Val_comp_iter.5" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_comp_val.7" = type { i8 }
%"struct.__gnu_cxx::__ops::_Val_comp_iter.8" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_less_val" = type { i8 }
%"struct.__gnu_cxx::__ops::_Val_less_iter" = type { i8 }

$_Z9quicksortIPdPFbddEEvT_S3_T0_ = comdat any

$_ZSt4copyIPdS0_ET0_T_S2_S1_ = comdat any

$_Z13verify_sortedIPdEvT_S1_ = comdat any

$_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_ = comdat any

$_ZSt4sortIPdPFbddEEvT_S3_T0_ = comdat any

$_Z9quicksortIPd17less_than_functorEvT_S2_T0_ = comdat any

$_ZSt4sortIPd17less_than_functorEvT_S2_T0_ = comdat any

$_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_ = comdat any

$_ZSt4sortIPd24inline_less_than_functorEvT_S2_T0_ = comdat any

$_Z9quicksortIPdSt4lessIdEEvT_S3_T0_ = comdat any

$_ZSt4sortIPdSt4lessIdEEvT_S3_T0_ = comdat any

$_Z9quicksortIPdEvT_S1_ = comdat any

$_ZSt4sortIPdEvT_S1_ = comdat any

$_ZSt12__miter_baseIPdET_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPdS0_S0_ET2_T0_T1_S1_ = comdat any

$_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_ = comdat any

$_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFbddEEENS0_15_Iter_comp_iterIT_EES5_ = comdat any

$_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_ = comdat any

$_ZSt4__lgIxET_S0_ = comdat any

$_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_ = comdat any

$_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_ = comdat any

$_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_ = comdat any

$_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_ = comdat any

$_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_ = comdat any

$_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_ = comdat any

$_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_ = comdat any

$_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_ = comdat any

$_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEC2EONS0_15_Iter_comp_iterIS3_EE = comdat any

$_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEEEvT_T0_S8_T1_RT2_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEclIPddEEbT_RT0_ = comdat any

$_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_ = comdat any

$_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_S7_T0_ = comdat any

$_ZSt9iter_swapIPdS0_EvT_T0_ = comdat any

$_ZSt4swapIdENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_ = comdat any

$_ZSt11__bit_widthIyEiT_ = comdat any

$_ZSt13__countl_zeroIyEiT_ = comdat any

$_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_ = comdat any

$_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_ = comdat any

$_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_ = comdat any

$_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE = comdat any

$_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZSt9__advanceIPdxEvRT_T0_St26random_access_iterator_tag = comdat any

$_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEclIdPdEEbRT_T0_ = comdat any

$_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEC2EONS0_15_Iter_comp_iterIS3_EE = comdat any

$_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEC2ES3_ = comdat any

$_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_ = comdat any

$_ZN9__gnu_cxx5__ops16__iter_comp_iterI17less_than_functorEENS0_15_Iter_comp_iterIT_EES4_ = comdat any

$_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_ = comdat any

$_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_ = comdat any

$_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_ = comdat any

$_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_ = comdat any

$_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_ = comdat any

$_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_ = comdat any

$_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_ = comdat any

$_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_ = comdat any

$_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE = comdat any

$_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEEEvT_T0_S7_T1_RT2_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEclIPddEEbT_RT0_ = comdat any

$_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_S6_T0_ = comdat any

$_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_S6_T0_ = comdat any

$_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_ = comdat any

$_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_ = comdat any

$_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_ = comdat any

$_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE = comdat any

$_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEclIdPdEEbRT_T0_ = comdat any

$_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE = comdat any

$_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEC2ES2_ = comdat any

$_ZNK24inline_less_than_functorclERKdS1_ = comdat any

$_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_ = comdat any

$_ZN9__gnu_cxx5__ops16__iter_comp_iterI24inline_less_than_functorEENS0_15_Iter_comp_iterIT_EES4_ = comdat any

$_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_ = comdat any

$_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_ = comdat any

$_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_ = comdat any

$_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_ = comdat any

$_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_ = comdat any

$_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_ = comdat any

$_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_ = comdat any

$_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_ = comdat any

$_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE = comdat any

$_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEEEvT_T0_S7_T1_RT2_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEclIPddEEbT_RT0_ = comdat any

$_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_S6_T0_ = comdat any

$_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_S6_T0_ = comdat any

$_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_ = comdat any

$_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_ = comdat any

$_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_ = comdat any

$_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE = comdat any

$_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEclIdPdEEbRT_T0_ = comdat any

$_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE = comdat any

$_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEC2ES2_ = comdat any

$_ZNKSt4lessIdEclERKdS2_ = comdat any

$_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_ = comdat any

$_ZN9__gnu_cxx5__ops16__iter_comp_iterISt4lessIdEEENS0_15_Iter_comp_iterIT_EES5_ = comdat any

$_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_ = comdat any

$_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_ = comdat any

$_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_ = comdat any

$_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_ = comdat any

$_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_ = comdat any

$_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_ = comdat any

$_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_ = comdat any

$_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_ = comdat any

$_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEC2EONS0_15_Iter_comp_iterIS3_EE = comdat any

$_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEEEvT_T0_S8_T1_RT2_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEclIPddEEbT_RT0_ = comdat any

$_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_ = comdat any

$_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_S7_T0_ = comdat any

$_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_ = comdat any

$_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_ = comdat any

$_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_ = comdat any

$_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE = comdat any

$_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEclIdPdEEbRT_T0_ = comdat any

$_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEC2EONS0_15_Iter_comp_iterIS3_EE = comdat any

$_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEC2ES3_ = comdat any

$_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ = comdat any

$_ZN9__gnu_cxx5__ops16__iter_less_iterEv = comdat any

$_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ = comdat any

$_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_ = comdat any

$_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_ = comdat any

$_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_ = comdat any

$_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_ = comdat any

$_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_ = comdat any

$_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_ = comdat any

$_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_ = comdat any

$_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE = comdat any

$_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_ = comdat any

$_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPddEEbT_RT0_ = comdat any

$_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_ = comdat any

$_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_ = comdat any

$_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ = comdat any

$_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ = comdat any

$_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_ = comdat any

$_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE = comdat any

$_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_ = comdat any

@results = dso_local global ptr null, align 8
@current_test = dso_local global i32 0, align 4
@allocated_results = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not allocate %d results\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"\0Atest %*s description   absolute   operations   ratio with\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"number %*s time       per second   test0\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"%2i %*s\22%s\22  %5.2f sec   %5.2f M     %.2f\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"\0ATotal absolute time for %s: %.2f sec\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"\0A%s Penalty: %.2f\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"\0Atest %*s description   absolute\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"number %*s time\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"%2i %*s\22%s\22  %5.2f sec\0A\00", align 1
@start_time = dso_local global i32 0, align 4
@end_time = dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"test %i failed\0A\00", align 1

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z13record_resultdPKc(double noundef %0, ptr noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca ptr, align 8
  store double %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr @results, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr @current_test, align 4
  %9 = load i32, ptr @allocated_results, align 4
  %.not = icmp slt i32 %8, %9
  br i1 %.not, label %22, label %10

10:                                               ; preds = %7, %2
  %11 = load i32, ptr @allocated_results, align 4
  %12 = add nsw i32 %11, 10
  store i32 %12, ptr @allocated_results, align 4
  %13 = load ptr, ptr @results, align 8
  %14 = sext i32 %12 to i64
  %15 = shl nsw i64 %14, 4
  %16 = call ptr @realloc(ptr noundef %13, i64 noundef %15) #13
  store ptr %16, ptr @results, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load i32, ptr @allocated_results, align 4
  %20 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str, i32 noundef %19)
  call void @exit(i32 noundef -1) #14
  unreachable

21:                                               ; preds = %10
  br label %22

22:                                               ; preds = %21, %7
  %23 = load double, ptr %3, align 8
  %24 = load ptr, ptr @results, align 8
  %25 = load i32, ptr @current_test, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [16 x i8], ptr %24, i64 %26
  store double %23, ptr %27, align 8
  %28 = load ptr, ptr %4, align 8
  %29 = load ptr, ptr @results, align 8
  %30 = getelementptr inbounds [16 x i8], ptr %29, i64 %26
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 8
  store ptr %28, ptr %31, align 8
  %32 = load i32, ptr @current_test, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr @current_test, align 4
  ret void
}

; Function Attrs: allocsize(1)
declare dso_local ptr @realloc(ptr noundef, i64 noundef) #1

declare dso_local noundef i32 @__mingw_printf(ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z9summarizePKciiii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store i32 %4, ptr %7, align 4
  %13 = sitofp i32 %1 to double
  %14 = sitofp i32 %2 to double
  %15 = fmul nnan double %13, %14
  %16 = fdiv double %15, 1.000000e+06
  store double %16, ptr %9, align 8
  store double 0.000000e+00, ptr %10, align 8
  store double 0.000000e+00, ptr %11, align 8
  store i32 12, ptr %12, align 4
  %.promoted = load i32, ptr %12, align 4
  br label %17

17:                                               ; preds = %33, %5
  %18 = phi i32 [ %.promoted, %5 ], [ %32, %33 ]
  %storemerge = phi i32 [ 0, %5 ], [ %34, %33 ]
  %19 = load i32, ptr @current_test, align 4
  %20 = icmp slt i32 %storemerge, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = load ptr, ptr @results, align 8
  %23 = sext i32 %storemerge to i64
  %24 = getelementptr inbounds [16 x i8], ptr %22, i64 %23
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 8
  %26 = load ptr, ptr %25, align 8
  %27 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %26) #15
  %28 = trunc i64 %27 to i32
  %29 = icmp slt i32 %18, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %21
  %32 = phi i32 [ %28, %30 ], [ %18, %21 ]
  br label %33

33:                                               ; preds = %31
  %34 = add nsw i32 %storemerge, 1
  br label %17, !llvm.loop !7

35:                                               ; preds = %17
  %.lcssa1 = phi i32 [ %18, %17 ]
  %storemerge.lcssa = phi i32 [ %storemerge, %17 ]
  store i32 %storemerge.lcssa, ptr %8, align 4
  store i32 %.lcssa1, ptr %12, align 4
  %36 = load i32, ptr %12, align 4
  %37 = add nsw i32 %36, -12
  %38 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.1, i32 noundef %37, ptr noundef nonnull @.str.2)
  %39 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.3, i32 noundef %36, ptr noundef nonnull @.str.2)
  %40 = load i32, ptr %12, align 4
  %41 = load double, ptr %9, align 8
  br label %42

42:                                               ; preds = %64, %35
  %storemerge1 = phi i32 [ 0, %35 ], [ %65, %64 ]
  %43 = load i32, ptr @current_test, align 4
  %44 = icmp slt i32 %storemerge1, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %42
  %46 = load ptr, ptr @results, align 8
  %47 = sext i32 %storemerge1 to i64
  %48 = getelementptr inbounds [16 x i8], ptr %46, i64 %47
  %49 = getelementptr inbounds nuw i8, ptr %48, i64 8
  %50 = load ptr, ptr %49, align 8
  %51 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %50) #15
  %52 = trunc i64 %51 to i32
  %53 = sub i32 %40, %52
  %54 = load ptr, ptr @results, align 8
  %55 = sext i32 %storemerge1 to i64
  %56 = getelementptr inbounds [16 x i8], ptr %54, i64 %55
  %57 = getelementptr inbounds nuw i8, ptr %56, i64 8
  %58 = load ptr, ptr %57, align 8
  %59 = load double, ptr %56, align 8
  %60 = fdiv double %41, %59
  %61 = load double, ptr %54, align 8
  %62 = fdiv double %59, %61
  %63 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.4, i32 noundef %storemerge1, i32 noundef %53, ptr noundef nonnull @.str.5, ptr noundef %58, double noundef %59, double noundef %60, double noundef %62)
  br label %64

64:                                               ; preds = %45
  %65 = add nsw i32 %storemerge1, 1
  br label %42, !llvm.loop !9

66:                                               ; preds = %42
  %storemerge1.lcssa = phi i32 [ %storemerge1, %42 ]
  store i32 %storemerge1.lcssa, ptr %8, align 4
  %67 = load i32, ptr @current_test, align 4
  %68 = load ptr, ptr @results, align 8
  %.promoted4 = load double, ptr %10, align 8
  br label %69

69:                                               ; preds = %77, %66
  %70 = phi double [ %.promoted4, %66 ], [ %76, %77 ]
  %storemerge2 = phi i32 [ 0, %66 ], [ %78, %77 ]
  %71 = icmp slt i32 %storemerge2, %67
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = sext i32 %storemerge2 to i64
  %74 = getelementptr inbounds [16 x i8], ptr %68, i64 %73
  %75 = load double, ptr %74, align 8
  %76 = fadd double %70, %75
  br label %77

77:                                               ; preds = %72
  %78 = add nsw i32 %storemerge2, 1
  br label %69, !llvm.loop !10

79:                                               ; preds = %69
  %.lcssa5 = phi double [ %70, %69 ]
  %storemerge2.lcssa = phi i32 [ %storemerge2, %69 ]
  store i32 %storemerge2.lcssa, ptr %8, align 4
  store double %.lcssa5, ptr %10, align 8
  %80 = load ptr, ptr %6, align 8
  %81 = load double, ptr %10, align 8
  %82 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.6, ptr noundef %80, double noundef %81)
  %83 = load i32, ptr @current_test, align 4
  %84 = icmp sgt i32 %83, 1
  br i1 %84, label %85, label %111

85:                                               ; preds = %79
  %86 = load i32, ptr %7, align 4
  %.not = icmp eq i32 %86, 0
  br i1 %.not, label %111, label %87

87:                                               ; preds = %85
  %.promoted7 = load double, ptr %11, align 8
  br label %88

88:                                               ; preds = %101, %87
  %89 = phi double [ %.promoted7, %87 ], [ %100, %101 ]
  %storemerge3 = phi i32 [ 1, %87 ], [ %102, %101 ]
  %90 = load i32, ptr @current_test, align 4
  %91 = icmp slt i32 %storemerge3, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %88
  %93 = load ptr, ptr @results, align 8
  %94 = sext i32 %storemerge3 to i64
  %95 = getelementptr inbounds [16 x i8], ptr %93, i64 %94
  %96 = load double, ptr %95, align 8
  %97 = load double, ptr %93, align 8
  %98 = fdiv double %96, %97
  %99 = call double @log(double noundef %98) #15
  %100 = fadd double %89, %99
  br label %101

101:                                              ; preds = %92
  %102 = add nsw i32 %storemerge3, 1
  br label %88, !llvm.loop !11

103:                                              ; preds = %88
  %.lcssa8 = phi double [ %89, %88 ]
  %storemerge3.lcssa = phi i32 [ %storemerge3, %88 ]
  %.lcssa = phi i32 [ %90, %88 ]
  store i32 %storemerge3.lcssa, ptr %8, align 4
  store double %.lcssa8, ptr %11, align 8
  %104 = load ptr, ptr %6, align 8
  %105 = load double, ptr %11, align 8
  %106 = add nsw i32 %.lcssa, -1
  %107 = sitofp i32 %106 to double
  %108 = fdiv double %105, %107
  %109 = call double @exp(double noundef %108) #15
  %110 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.7, ptr noundef %104, double noundef %109)
  br label %111

111:                                              ; preds = %103, %85, %79
  store i32 0, ptr @current_test, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local i64 @strlen(ptr noundef) #4

; Function Attrs: nounwind
declare dso_local double @log(double noundef) #4

; Function Attrs: nounwind
declare dso_local double @exp(double noundef) #4

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z17summarize_simplefP6_iobufPKc(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  store double 0.000000e+00, ptr %6, align 8
  store i32 12, ptr %7, align 4
  %.promoted = load i32, ptr %7, align 4
  br label %8

8:                                                ; preds = %24, %2
  %9 = phi i32 [ %.promoted, %2 ], [ %23, %24 ]
  %storemerge = phi i32 [ 0, %2 ], [ %25, %24 ]
  %10 = load i32, ptr @current_test, align 4
  %11 = icmp slt i32 %storemerge, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %8
  %13 = load ptr, ptr @results, align 8
  %14 = sext i32 %storemerge to i64
  %15 = getelementptr inbounds [16 x i8], ptr %13, i64 %14
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8
  %18 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %17) #15
  %19 = trunc i64 %18 to i32
  %20 = icmp slt i32 %9, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21, %12
  %23 = phi i32 [ %19, %21 ], [ %9, %12 ]
  br label %24

24:                                               ; preds = %22
  %25 = add nsw i32 %storemerge, 1
  br label %8, !llvm.loop !12

26:                                               ; preds = %8
  %.lcssa = phi i32 [ %9, %8 ]
  %storemerge.lcssa = phi i32 [ %storemerge, %8 ]
  store i32 %storemerge.lcssa, ptr %5, align 4
  store i32 %.lcssa, ptr %7, align 4
  %27 = load ptr, ptr %3, align 8
  %28 = load i32, ptr %7, align 4
  %29 = add nsw i32 %28, -12
  %30 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %27, ptr noundef nonnull @.str.8, i32 noundef %29, ptr noundef nonnull @.str.2)
  %31 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %27, ptr noundef nonnull @.str.9, i32 noundef %28, ptr noundef nonnull @.str.2)
  %32 = load ptr, ptr %3, align 8
  %33 = load i32, ptr %7, align 4
  br label %34

34:                                               ; preds = %53, %26
  %storemerge1 = phi i32 [ 0, %26 ], [ %54, %53 ]
  %35 = load i32, ptr @current_test, align 4
  %36 = icmp slt i32 %storemerge1, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %34
  %38 = load ptr, ptr @results, align 8
  %39 = sext i32 %storemerge1 to i64
  %40 = getelementptr inbounds [16 x i8], ptr %38, i64 %39
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 8
  %42 = load ptr, ptr %41, align 8
  %43 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %42) #15
  %44 = trunc i64 %43 to i32
  %45 = sub i32 %33, %44
  %46 = load ptr, ptr @results, align 8
  %47 = sext i32 %storemerge1 to i64
  %48 = getelementptr inbounds [16 x i8], ptr %46, i64 %47
  %49 = getelementptr inbounds nuw i8, ptr %48, i64 8
  %50 = load ptr, ptr %49, align 8
  %51 = load double, ptr %48, align 8
  %52 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %32, ptr noundef nonnull @.str.10, i32 noundef %storemerge1, i32 noundef %45, ptr noundef nonnull @.str.5, ptr noundef %50, double noundef %51)
  br label %53

53:                                               ; preds = %37
  %54 = add nsw i32 %storemerge1, 1
  br label %34, !llvm.loop !13

55:                                               ; preds = %34
  %storemerge1.lcssa = phi i32 [ %storemerge1, %34 ]
  store i32 %storemerge1.lcssa, ptr %5, align 4
  %56 = load i32, ptr @current_test, align 4
  %57 = load ptr, ptr @results, align 8
  %.promoted3 = load double, ptr %6, align 8
  br label %58

58:                                               ; preds = %66, %55
  %59 = phi double [ %.promoted3, %55 ], [ %65, %66 ]
  %storemerge2 = phi i32 [ 0, %55 ], [ %67, %66 ]
  %60 = icmp slt i32 %storemerge2, %56
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = sext i32 %storemerge2 to i64
  %63 = getelementptr inbounds [16 x i8], ptr %57, i64 %62
  %64 = load double, ptr %63, align 8
  %65 = fadd double %59, %64
  br label %66

66:                                               ; preds = %61
  %67 = add nsw i32 %storemerge2, 1
  br label %58, !llvm.loop !14

68:                                               ; preds = %58
  %.lcssa4 = phi double [ %59, %58 ]
  %storemerge2.lcssa = phi i32 [ %storemerge2, %58 ]
  store i32 %storemerge2.lcssa, ptr %5, align 4
  store double %.lcssa4, ptr %6, align 8
  %69 = load ptr, ptr %3, align 8
  %70 = load ptr, ptr %4, align 8
  %71 = load double, ptr %6, align 8
  %72 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %69, ptr noundef nonnull @.str.6, ptr noundef %70, double noundef %71)
  store i32 0, ptr @current_test, align 4
  ret void
}

declare dso_local noundef i32 @__mingw_fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z11start_timerv() #0 {
  %1 = call i32 @clock()
  store i32 %1, ptr @start_time, align 4
  ret void
}

declare dso_local i32 @clock() #2

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef double @_Z5timerv() #0 {
  %1 = call i32 @clock()
  store i32 %1, ptr @end_time, align 4
  %2 = load i32, ptr @start_time, align 4
  %3 = sub nsw i32 %1, %2
  %4 = sitofp i32 %3 to double
  %5 = fdiv double %4, 1.000000e+03
  ret double %5
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef i32 @_Z19less_than_function1PKvS0_(ptr noundef %0, ptr noundef %1) #5 {
  %3 = alloca i32, align 4
  %4 = load double, ptr %0, align 8
  %5 = load double, ptr %1, align 8
  %6 = fcmp olt double %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  store i32 -1, ptr %3, align 4
  br label %12

8:                                                ; preds = %2
  %9 = fcmp ogt double %4, %5
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  store i32 1, ptr %3, align 4
  br label %12

11:                                               ; preds = %8
  store i32 0, ptr %3, align 4
  br label %12

12:                                               ; preds = %11, %10, %7
  %13 = load i32, ptr %3, align 4
  ret i32 %13
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef zeroext i1 @_Z19less_than_function2dd(double noundef %0, double noundef %1) #5 {
  %3 = fcmp olt double %0, %1
  ret i1 %3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #5 align 2 {
  %4 = load double, ptr %1, align 8
  %5 = load double, ptr %2, align 8
  %6 = fcmp olt double %4, %5
  ret i1 %6
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z18quicksort_functionPdS_PFbddE(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca double, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %10 = ptrtoint ptr %1 to i64
  %11 = ptrtoint ptr %0 to i64
  %12 = sub i64 %10, %11
  %13 = icmp sgt i64 %12, 8
  br i1 %13, label %14, label %51

14:                                               ; preds = %3
  %15 = load double, ptr %0, align 8
  store double %15, ptr %7, align 8
  %16 = load ptr, ptr %4, align 8
  store ptr %16, ptr %8, align 8
  %17 = load ptr, ptr %5, align 8
  store ptr %17, ptr %9, align 8
  %18 = load ptr, ptr %6, align 8
  %19 = load double, ptr %7, align 8
  %20 = load ptr, ptr %6, align 8
  %21 = load double, ptr %7, align 8
  %.promoted3 = load ptr, ptr %9, align 8
  %.promoted = load ptr, ptr %8, align 8
  br label %22

22:                                               ; preds = %42, %14
  %.lcssa26 = phi ptr [ %.lcssa2, %42 ], [ %.promoted, %14 ]
  %.lcssa4 = phi ptr [ %.lcssa, %42 ], [ %.promoted3, %14 ]
  br label %23

23:                                               ; preds = %28, %22
  %24 = phi ptr [ %25, %28 ], [ %.lcssa4, %22 ]
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load double, ptr %25, align 8
  %27 = call noundef zeroext i1 %18(double noundef %19, double noundef %26)
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %23, !llvm.loop !15

29:                                               ; preds = %23
  %.lcssa = phi ptr [ %25, %23 ]
  %30 = icmp ult ptr %.lcssa26, %.lcssa
  br i1 %30, label %32, label %31

31:                                               ; preds = %29
  %.lcssa26.lcssa = phi ptr [ %.lcssa26, %29 ]
  %.lcssa.lcssa = phi ptr [ %.lcssa, %29 ]
  store ptr %.lcssa.lcssa, ptr %9, align 8
  store ptr %.lcssa26.lcssa, ptr %8, align 8
  br label %45

32:                                               ; preds = %29
  br label %33

33:                                               ; preds = %37, %32
  %34 = phi ptr [ %38, %37 ], [ %.lcssa26, %32 ]
  %35 = load double, ptr %34, align 8
  %36 = call noundef zeroext i1 %20(double noundef %35, double noundef %21)
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = getelementptr inbounds nuw i8, ptr %34, i64 8
  br label %33, !llvm.loop !16

39:                                               ; preds = %33
  %.lcssa2 = phi ptr [ %34, %33 ]
  %40 = icmp ult ptr %.lcssa2, %.lcssa
  br i1 %40, label %42, label %41

41:                                               ; preds = %39
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %39 ]
  %.lcssa.lcssa5 = phi ptr [ %.lcssa, %39 ]
  store ptr %.lcssa.lcssa5, ptr %9, align 8
  store ptr %.lcssa2.lcssa, ptr %8, align 8
  br label %45

42:                                               ; preds = %39
  %43 = load double, ptr %.lcssa, align 8
  %44 = load double, ptr %.lcssa2, align 8
  store double %44, ptr %.lcssa, align 8
  store double %43, ptr %.lcssa2, align 8
  br label %22, !llvm.loop !17

45:                                               ; preds = %41, %31
  %46 = load ptr, ptr %4, align 8
  %47 = load ptr, ptr %9, align 8
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 8
  %49 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %46, ptr noundef nonnull %48, ptr noundef %49)
  %50 = load ptr, ptr %5, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %48, ptr noundef %50, ptr noundef %49)
  br label %51

51:                                               ; preds = %45, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca double, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %10 = ptrtoint ptr %1 to i64
  %11 = ptrtoint ptr %0 to i64
  %12 = sub i64 %10, %11
  %13 = icmp sgt i64 %12, 8
  br i1 %13, label %14, label %51

14:                                               ; preds = %3
  %15 = load double, ptr %0, align 8
  store double %15, ptr %7, align 8
  %16 = load ptr, ptr %4, align 8
  store ptr %16, ptr %8, align 8
  %17 = load ptr, ptr %5, align 8
  store ptr %17, ptr %9, align 8
  %18 = load ptr, ptr %6, align 8
  %19 = load double, ptr %7, align 8
  %20 = load ptr, ptr %6, align 8
  %21 = load double, ptr %7, align 8
  %.promoted3 = load ptr, ptr %9, align 8
  %.promoted = load ptr, ptr %8, align 8
  br label %22

22:                                               ; preds = %42, %14
  %.lcssa26 = phi ptr [ %.lcssa2, %42 ], [ %.promoted, %14 ]
  %.lcssa4 = phi ptr [ %.lcssa, %42 ], [ %.promoted3, %14 ]
  br label %23

23:                                               ; preds = %28, %22
  %24 = phi ptr [ %25, %28 ], [ %.lcssa4, %22 ]
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load double, ptr %25, align 8
  %27 = call noundef zeroext i1 %18(double noundef %19, double noundef %26)
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %23, !llvm.loop !18

29:                                               ; preds = %23
  %.lcssa = phi ptr [ %25, %23 ]
  %30 = icmp ult ptr %.lcssa26, %.lcssa
  br i1 %30, label %32, label %31

31:                                               ; preds = %29
  %.lcssa26.lcssa = phi ptr [ %.lcssa26, %29 ]
  %.lcssa.lcssa = phi ptr [ %.lcssa, %29 ]
  store ptr %.lcssa.lcssa, ptr %9, align 8
  store ptr %.lcssa26.lcssa, ptr %8, align 8
  br label %45

32:                                               ; preds = %29
  br label %33

33:                                               ; preds = %37, %32
  %34 = phi ptr [ %38, %37 ], [ %.lcssa26, %32 ]
  %35 = load double, ptr %34, align 8
  %36 = call noundef zeroext i1 %20(double noundef %35, double noundef %21)
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = getelementptr inbounds nuw i8, ptr %34, i64 8
  br label %33, !llvm.loop !19

39:                                               ; preds = %33
  %.lcssa2 = phi ptr [ %34, %33 ]
  %40 = icmp ult ptr %.lcssa2, %.lcssa
  br i1 %40, label %42, label %41

41:                                               ; preds = %39
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %39 ]
  %.lcssa.lcssa5 = phi ptr [ %.lcssa, %39 ]
  store ptr %.lcssa.lcssa5, ptr %9, align 8
  store ptr %.lcssa2.lcssa, ptr %8, align 8
  br label %45

42:                                               ; preds = %39
  %43 = load double, ptr %.lcssa, align 8
  %44 = load double, ptr %.lcssa2, align 8
  store double %44, ptr %.lcssa, align 8
  store double %43, ptr %.lcssa2, align 8
  br label %22, !llvm.loop !20

45:                                               ; preds = %41, %31
  %46 = load ptr, ptr %4, align 8
  %47 = load ptr, ptr %9, align 8
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 8
  %49 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %46, ptr noundef nonnull %48, ptr noundef %49)
  %50 = load ptr, ptr %5, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %48, ptr noundef %50, ptr noundef %49)
  br label %51

51:                                               ; preds = %45, %3
  ret void
}

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) #6 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  %11 = icmp sgt i32 %0, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %14 = load ptr, ptr %13, align 8
  %15 = call i32 @atoi(ptr noundef %14)
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %12
  %18 = phi i32 [ %15, %12 ], [ 300, %16 ]
  store i32 %18, ptr %6, align 4
  %19 = load i32, ptr %3, align 4
  %20 = icmp sgt i32 %19, 2
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 16
  %24 = load ptr, ptr %23, align 8
  %25 = call i32 @atoi(ptr noundef %24)
  br label %27

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26, %21
  %28 = phi i32 [ %25, %21 ], [ 10000, %26 ]
  store i32 %28, ptr %7, align 4
  %29 = add nsw i32 %28, 123
  call void @srand(i32 noundef %29)
  %30 = sext i32 %28 to i64
  %31 = icmp slt i32 %28, 0
  %32 = shl nsw i64 %30, 3
  %33 = select i1 %31, i64 -1, i64 %32
  %34 = call noalias noundef nonnull ptr @_Znay(i64 noundef %33) #16
  store ptr %34, ptr %8, align 8
  %35 = load i32, ptr %7, align 4
  %36 = load ptr, ptr %8, align 8
  br label %37

37:                                               ; preds = %44, %27
  %storemerge = phi i32 [ 0, %27 ], [ %45, %44 ]
  %38 = icmp slt i32 %storemerge, %35
  br i1 %38, label %39, label %46

39:                                               ; preds = %37
  %40 = call i32 @rand()
  %41 = sitofp i32 %40 to double
  %42 = sext i32 %storemerge to i64
  %43 = getelementptr inbounds [8 x i8], ptr %36, i64 %42
  store double %41, ptr %43, align 8
  br label %44

44:                                               ; preds = %39
  %45 = add nsw i32 %storemerge, 1
  br label %37, !llvm.loop !21

46:                                               ; preds = %37
  %storemerge.lcssa = phi i32 [ %storemerge, %37 ]
  %.lcssa = phi i32 [ %35, %37 ]
  store i32 %storemerge.lcssa, ptr %9, align 4
  %47 = sext i32 %.lcssa to i64
  %48 = icmp slt i32 %.lcssa, 0
  %49 = shl nsw i64 %47, 3
  %50 = select i1 %48, i64 -1, i64 %49
  %51 = call noalias noundef nonnull ptr @_Znay(i64 noundef %50) #16
  store ptr %51, ptr %10, align 8
  %52 = load i32, ptr %6, align 4
  %53 = load ptr, ptr %8, align 8
  %54 = load i32, ptr %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [8 x i8], ptr %53, i64 %55
  %57 = load ptr, ptr %10, align 8
  %58 = load i32, ptr %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [8 x i8], ptr %57, i64 %59
  br label %61

61:                                               ; preds = %65, %46
  %storemerge1 = phi i32 [ 0, %46 ], [ %66, %65 ]
  %62 = icmp slt i32 %storemerge1, %52
  br i1 %62, label %63, label %67

63:                                               ; preds = %61
  %64 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %53, ptr noundef %56, ptr noundef %57)
  call void @qsort(ptr noundef %57, i64 noundef %55, i64 noundef 8, ptr noundef nonnull @_Z19less_than_function1PKvS0_)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %57, ptr noundef %60)
  br label %65

65:                                               ; preds = %63
  %66 = add nsw i32 %storemerge1, 1
  br label %61, !llvm.loop !22

67:                                               ; preds = %61
  %storemerge1.lcssa = phi i32 [ %storemerge1, %61 ]
  store i32 %storemerge1.lcssa, ptr %5, align 4
  %68 = load i32, ptr %6, align 4
  %69 = load ptr, ptr %8, align 8
  %70 = load i32, ptr %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [8 x i8], ptr %69, i64 %71
  %73 = load ptr, ptr %10, align 8
  %74 = getelementptr inbounds [8 x i8], ptr %73, i64 %71
  %75 = load i32, ptr %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [8 x i8], ptr %73, i64 %76
  br label %78

78:                                               ; preds = %82, %67
  %storemerge2 = phi i32 [ 0, %67 ], [ %83, %82 ]
  %79 = icmp slt i32 %storemerge2, %68
  br i1 %79, label %80, label %84

80:                                               ; preds = %78
  %81 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %69, ptr noundef %72, ptr noundef %73)
  call void @_Z18quicksort_functionPdS_PFbddE(ptr noundef %73, ptr noundef %74, ptr noundef nonnull @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %73, ptr noundef %77)
  br label %82

82:                                               ; preds = %80
  %83 = add nsw i32 %storemerge2, 1
  br label %78, !llvm.loop !23

84:                                               ; preds = %78
  %storemerge2.lcssa = phi i32 [ %storemerge2, %78 ]
  store i32 %storemerge2.lcssa, ptr %5, align 4
  %85 = load i32, ptr %6, align 4
  %86 = load ptr, ptr %8, align 8
  %87 = load i32, ptr %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [8 x i8], ptr %86, i64 %88
  %90 = load ptr, ptr %10, align 8
  %91 = getelementptr inbounds [8 x i8], ptr %90, i64 %88
  %92 = load i32, ptr %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [8 x i8], ptr %90, i64 %93
  br label %95

95:                                               ; preds = %99, %84
  %storemerge3 = phi i32 [ 0, %84 ], [ %100, %99 ]
  %96 = icmp slt i32 %storemerge3, %85
  br i1 %96, label %97, label %101

97:                                               ; preds = %95
  %98 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %86, ptr noundef %89, ptr noundef %90)
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %90, ptr noundef %91, ptr noundef nonnull @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %90, ptr noundef %94)
  br label %99

99:                                               ; preds = %97
  %100 = add nsw i32 %storemerge3, 1
  br label %95, !llvm.loop !24

101:                                              ; preds = %95
  %storemerge3.lcssa = phi i32 [ %storemerge3, %95 ]
  store i32 %storemerge3.lcssa, ptr %5, align 4
  %102 = load i32, ptr %6, align 4
  %103 = load ptr, ptr %8, align 8
  %104 = load i32, ptr %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [8 x i8], ptr %103, i64 %105
  %107 = load ptr, ptr %10, align 8
  %108 = getelementptr inbounds [8 x i8], ptr %107, i64 %105
  %109 = load i32, ptr %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [8 x i8], ptr %107, i64 %110
  br label %112

112:                                              ; preds = %116, %101
  %storemerge4 = phi i32 [ 0, %101 ], [ %117, %116 ]
  %113 = icmp slt i32 %storemerge4, %102
  br i1 %113, label %114, label %118

114:                                              ; preds = %112
  %115 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %103, ptr noundef %106, ptr noundef %107)
  call void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef %107, ptr noundef %108)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %107, ptr noundef %111)
  br label %116

116:                                              ; preds = %114
  %117 = add nsw i32 %storemerge4, 1
  br label %112, !llvm.loop !25

118:                                              ; preds = %112
  %storemerge4.lcssa = phi i32 [ %storemerge4, %112 ]
  store i32 %storemerge4.lcssa, ptr %5, align 4
  %119 = load i32, ptr %6, align 4
  %120 = load ptr, ptr %8, align 8
  %121 = load i32, ptr %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [8 x i8], ptr %120, i64 %122
  %124 = load ptr, ptr %10, align 8
  %125 = getelementptr inbounds [8 x i8], ptr %124, i64 %122
  %126 = load i32, ptr %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [8 x i8], ptr %124, i64 %127
  br label %129

129:                                              ; preds = %133, %118
  %storemerge5 = phi i32 [ 0, %118 ], [ %134, %133 ]
  %130 = icmp slt i32 %storemerge5, %119
  br i1 %130, label %131, label %135

131:                                              ; preds = %129
  %132 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %120, ptr noundef %123, ptr noundef %124)
  call void @_ZSt4sortIPdPFbddEEvT_S3_T0_(ptr noundef %124, ptr noundef %125, ptr noundef nonnull @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %124, ptr noundef %128)
  br label %133

133:                                              ; preds = %131
  %134 = add nsw i32 %storemerge5, 1
  br label %129, !llvm.loop !26

135:                                              ; preds = %129
  %storemerge5.lcssa = phi i32 [ %storemerge5, %129 ]
  store i32 %storemerge5.lcssa, ptr %5, align 4
  %136 = load i32, ptr %6, align 4
  %137 = load ptr, ptr %8, align 8
  %138 = load i32, ptr %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [8 x i8], ptr %137, i64 %139
  %141 = load ptr, ptr %10, align 8
  %142 = getelementptr inbounds [8 x i8], ptr %141, i64 %139
  %143 = load i32, ptr %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [8 x i8], ptr %141, i64 %144
  br label %146

146:                                              ; preds = %150, %135
  %storemerge6 = phi i32 [ 0, %135 ], [ %151, %150 ]
  %147 = icmp slt i32 %storemerge6, %136
  br i1 %147, label %148, label %152

148:                                              ; preds = %146
  %149 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %137, ptr noundef %140, ptr noundef %141)
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %141, ptr noundef %142, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %141, ptr noundef %145)
  br label %150

150:                                              ; preds = %148
  %151 = add nsw i32 %storemerge6, 1
  br label %146, !llvm.loop !27

152:                                              ; preds = %146
  %storemerge6.lcssa = phi i32 [ %storemerge6, %146 ]
  store i32 %storemerge6.lcssa, ptr %5, align 4
  %153 = load i32, ptr %6, align 4
  %154 = load ptr, ptr %10, align 8
  %155 = load i32, ptr %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [8 x i8], ptr %154, i64 %156
  %158 = load ptr, ptr %8, align 8
  %159 = load i32, ptr %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [8 x i8], ptr %158, i64 %160
  %162 = load ptr, ptr %10, align 8
  br label %163

163:                                              ; preds = %167, %152
  %storemerge7 = phi i32 [ 0, %152 ], [ %168, %167 ]
  %164 = icmp slt i32 %storemerge7, %153
  br i1 %164, label %165, label %169

165:                                              ; preds = %163
  call void @_ZSt4sortIPd17less_than_functorEvT_S2_T0_(ptr noundef %154, ptr noundef %157, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %154, ptr noundef %157)
  %166 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %158, ptr noundef %161, ptr noundef %162)
  br label %167

167:                                              ; preds = %165
  %168 = add nsw i32 %storemerge7, 1
  br label %163, !llvm.loop !28

169:                                              ; preds = %163
  %storemerge7.lcssa = phi i32 [ %storemerge7, %163 ]
  store i32 %storemerge7.lcssa, ptr %5, align 4
  %170 = load i32, ptr %6, align 4
  %171 = load ptr, ptr %8, align 8
  %172 = load i32, ptr %7, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [8 x i8], ptr %171, i64 %173
  %175 = load ptr, ptr %10, align 8
  %176 = getelementptr inbounds [8 x i8], ptr %175, i64 %173
  %177 = load i32, ptr %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [8 x i8], ptr %175, i64 %178
  br label %180

180:                                              ; preds = %184, %169
  %storemerge8 = phi i32 [ 0, %169 ], [ %185, %184 ]
  %181 = icmp slt i32 %storemerge8, %170
  br i1 %181, label %182, label %186

182:                                              ; preds = %180
  %183 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %171, ptr noundef %174, ptr noundef %175)
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %175, ptr noundef %176, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %175, ptr noundef %179)
  br label %184

184:                                              ; preds = %182
  %185 = add nsw i32 %storemerge8, 1
  br label %180, !llvm.loop !29

186:                                              ; preds = %180
  %storemerge8.lcssa = phi i32 [ %storemerge8, %180 ]
  store i32 %storemerge8.lcssa, ptr %5, align 4
  %187 = load i32, ptr %6, align 4
  %188 = load ptr, ptr %8, align 8
  %189 = load i32, ptr %7, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [8 x i8], ptr %188, i64 %190
  %192 = load ptr, ptr %10, align 8
  %193 = getelementptr inbounds [8 x i8], ptr %192, i64 %190
  %194 = load i32, ptr %7, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [8 x i8], ptr %192, i64 %195
  br label %197

197:                                              ; preds = %201, %186
  %storemerge9 = phi i32 [ 0, %186 ], [ %202, %201 ]
  %198 = icmp slt i32 %storemerge9, %187
  br i1 %198, label %199, label %203

199:                                              ; preds = %197
  %200 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %188, ptr noundef %191, ptr noundef %192)
  call void @_ZSt4sortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %192, ptr noundef %193, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %192, ptr noundef %196)
  br label %201

201:                                              ; preds = %199
  %202 = add nsw i32 %storemerge9, 1
  br label %197, !llvm.loop !30

203:                                              ; preds = %197
  %storemerge9.lcssa = phi i32 [ %storemerge9, %197 ]
  store i32 %storemerge9.lcssa, ptr %5, align 4
  %204 = load i32, ptr %6, align 4
  %205 = load ptr, ptr %8, align 8
  %206 = load i32, ptr %7, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [8 x i8], ptr %205, i64 %207
  %209 = load ptr, ptr %10, align 8
  %210 = getelementptr inbounds [8 x i8], ptr %209, i64 %207
  %211 = load i32, ptr %7, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [8 x i8], ptr %209, i64 %212
  br label %214

214:                                              ; preds = %218, %203
  %storemerge10 = phi i32 [ 0, %203 ], [ %219, %218 ]
  %215 = icmp slt i32 %storemerge10, %204
  br i1 %215, label %216, label %220

216:                                              ; preds = %214
  %217 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %205, ptr noundef %208, ptr noundef %209)
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %209, ptr noundef %210, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %209, ptr noundef %213)
  br label %218

218:                                              ; preds = %216
  %219 = add nsw i32 %storemerge10, 1
  br label %214, !llvm.loop !31

220:                                              ; preds = %214
  %storemerge10.lcssa = phi i32 [ %storemerge10, %214 ]
  store i32 %storemerge10.lcssa, ptr %5, align 4
  %221 = load i32, ptr %6, align 4
  %222 = load ptr, ptr %8, align 8
  %223 = load i32, ptr %7, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [8 x i8], ptr %222, i64 %224
  %226 = load ptr, ptr %10, align 8
  %227 = getelementptr inbounds [8 x i8], ptr %226, i64 %224
  %228 = load i32, ptr %7, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [8 x i8], ptr %226, i64 %229
  br label %231

231:                                              ; preds = %235, %220
  %storemerge11 = phi i32 [ 0, %220 ], [ %236, %235 ]
  %232 = icmp slt i32 %storemerge11, %221
  br i1 %232, label %233, label %237

233:                                              ; preds = %231
  %234 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %222, ptr noundef %225, ptr noundef %226)
  call void @_ZSt4sortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %226, ptr noundef %227, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %226, ptr noundef %230)
  br label %235

235:                                              ; preds = %233
  %236 = add nsw i32 %storemerge11, 1
  br label %231, !llvm.loop !32

237:                                              ; preds = %231
  %storemerge11.lcssa = phi i32 [ %storemerge11, %231 ]
  store i32 %storemerge11.lcssa, ptr %5, align 4
  %238 = load i32, ptr %6, align 4
  %239 = load ptr, ptr %8, align 8
  %240 = load i32, ptr %7, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [8 x i8], ptr %239, i64 %241
  %243 = load ptr, ptr %10, align 8
  %244 = getelementptr inbounds [8 x i8], ptr %243, i64 %241
  %245 = load i32, ptr %7, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [8 x i8], ptr %243, i64 %246
  br label %248

248:                                              ; preds = %252, %237
  %storemerge12 = phi i32 [ 0, %237 ], [ %253, %252 ]
  %249 = icmp slt i32 %storemerge12, %238
  br i1 %249, label %250, label %254

250:                                              ; preds = %248
  %251 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %239, ptr noundef %242, ptr noundef %243)
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %243, ptr noundef %244)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %243, ptr noundef %247)
  br label %252

252:                                              ; preds = %250
  %253 = add nsw i32 %storemerge12, 1
  br label %248, !llvm.loop !33

254:                                              ; preds = %248
  %storemerge12.lcssa = phi i32 [ %storemerge12, %248 ]
  store i32 %storemerge12.lcssa, ptr %5, align 4
  %255 = load i32, ptr %6, align 4
  %256 = load ptr, ptr %8, align 8
  %257 = load i32, ptr %7, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [8 x i8], ptr %256, i64 %258
  %260 = load ptr, ptr %10, align 8
  %261 = getelementptr inbounds [8 x i8], ptr %260, i64 %258
  %262 = load i32, ptr %7, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [8 x i8], ptr %260, i64 %263
  br label %265

265:                                              ; preds = %269, %254
  %storemerge13 = phi i32 [ 0, %254 ], [ %270, %269 ]
  %266 = icmp slt i32 %storemerge13, %255
  br i1 %266, label %267, label %271

267:                                              ; preds = %265
  %268 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %256, ptr noundef %259, ptr noundef %260)
  call void @_ZSt4sortIPdEvT_S1_(ptr noundef %260, ptr noundef %261)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %260, ptr noundef %264)
  br label %269

269:                                              ; preds = %267
  %270 = add nsw i32 %storemerge13, 1
  br label %265, !llvm.loop !34

271:                                              ; preds = %265
  %storemerge13.lcssa = phi i32 [ %storemerge13, %265 ]
  store i32 %storemerge13.lcssa, ptr %5, align 4
  %272 = load ptr, ptr %10, align 8
  %273 = icmp eq ptr %272, null
  br i1 %273, label %275, label %274

274:                                              ; preds = %271
  call void @_ZdaPv(ptr noundef nonnull %272) #17
  br label %275

275:                                              ; preds = %274, %271
  %276 = load ptr, ptr %8, align 8
  %277 = icmp eq ptr %276, null
  br i1 %277, label %279, label %278

278:                                              ; preds = %275
  call void @_ZdaPv(ptr noundef nonnull %276) #17
  br label %279

279:                                              ; preds = %278, %275
  ret i32 0
}

declare dso_local i32 @atoi(ptr noundef) #2

declare dso_local void @srand(i32 noundef) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noalias noundef nonnull ptr @_Znay(i64 noundef) #8

declare dso_local i32 @rand() #2

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
  %4 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %5 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %1)
  %6 = call noundef ptr @_ZSt14__copy_move_a2ILb0EPdS0_S0_ET2_T0_T1_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2)
  ret ptr %6
}

declare dso_local void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %0, ptr noundef %1) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  store ptr %0, ptr %5, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %6, ptr %3, align 8
  %7 = load ptr, ptr %4, align 8
  %.promoted = load ptr, ptr %3, align 8
  %.promoted2 = load ptr, ptr %5, align 8
  br label %8

8:                                                ; preds = %20, %2
  %9 = phi ptr [ %14, %20 ], [ %.promoted2, %2 ]
  %10 = phi ptr [ %12, %20 ], [ %.promoted, %2 ]
  %.not = icmp eq ptr %10, %7
  br i1 %.not, label %.loopexit, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %13 = load double, ptr %10, align 8
  %14 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %15 = load double, ptr %9, align 8
  %16 = fcmp olt double %13, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %.lcssa4 = phi ptr [ %14, %11 ]
  %.lcssa1 = phi ptr [ %12, %11 ]
  store ptr %.lcssa1, ptr %3, align 8
  store ptr %.lcssa4, ptr %5, align 8
  %18 = load i32, ptr @current_test, align 4
  %19 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.11, i32 noundef %18)
  br label %21

20:                                               ; preds = %11
  br label %8, !llvm.loop !35

.loopexit:                                        ; preds = %8
  %.lcssa3 = phi ptr [ %9, %8 ]
  %.lcssa = phi ptr [ %10, %8 ]
  store ptr %.lcssa, ptr %3, align 8
  store ptr %.lcssa3, ptr %5, align 8
  br label %21

21:                                               ; preds = %.loopexit, %17
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef %0, ptr noundef %1) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca double, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = icmp sgt i64 %10, 8
  br i1 %11, label %12, label %46

12:                                               ; preds = %2
  %13 = load double, ptr %0, align 8
  store double %13, ptr %5, align 8
  %14 = load ptr, ptr %3, align 8
  store ptr %14, ptr %6, align 8
  %15 = load ptr, ptr %4, align 8
  store ptr %15, ptr %7, align 8
  %16 = load double, ptr %5, align 8
  %17 = load double, ptr %5, align 8
  %.promoted3 = load ptr, ptr %7, align 8
  %.promoted = load ptr, ptr %6, align 8
  br label %18

18:                                               ; preds = %38, %12
  %.lcssa26 = phi ptr [ %.lcssa2, %38 ], [ %.promoted, %12 ]
  %.lcssa4 = phi ptr [ %.lcssa, %38 ], [ %.promoted3, %12 ]
  br label %19

19:                                               ; preds = %24, %18
  %20 = phi ptr [ %21, %24 ], [ %.lcssa4, %18 ]
  %21 = getelementptr inbounds i8, ptr %20, i64 -8
  %22 = load double, ptr %21, align 8
  %23 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %16, double noundef %22)
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %19, !llvm.loop !36

25:                                               ; preds = %19
  %.lcssa = phi ptr [ %21, %19 ]
  %26 = icmp ult ptr %.lcssa26, %.lcssa
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  %.lcssa26.lcssa = phi ptr [ %.lcssa26, %25 ]
  %.lcssa.lcssa = phi ptr [ %.lcssa, %25 ]
  store ptr %.lcssa.lcssa, ptr %7, align 8
  store ptr %.lcssa26.lcssa, ptr %6, align 8
  br label %41

28:                                               ; preds = %25
  br label %29

29:                                               ; preds = %33, %28
  %30 = phi ptr [ %34, %33 ], [ %.lcssa26, %28 ]
  %31 = load double, ptr %30, align 8
  %32 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %31, double noundef %17)
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = getelementptr inbounds nuw i8, ptr %30, i64 8
  br label %29, !llvm.loop !37

35:                                               ; preds = %29
  %.lcssa2 = phi ptr [ %30, %29 ]
  %36 = icmp ult ptr %.lcssa2, %.lcssa
  br i1 %36, label %38, label %37

37:                                               ; preds = %35
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %35 ]
  %.lcssa.lcssa5 = phi ptr [ %.lcssa, %35 ]
  store ptr %.lcssa.lcssa5, ptr %7, align 8
  store ptr %.lcssa2.lcssa, ptr %6, align 8
  br label %41

38:                                               ; preds = %35
  %39 = load double, ptr %.lcssa, align 8
  %40 = load double, ptr %.lcssa2, align 8
  store double %40, ptr %.lcssa, align 8
  store double %39, ptr %.lcssa2, align 8
  br label %18, !llvm.loop !38

41:                                               ; preds = %37, %27
  %42 = load ptr, ptr %3, align 8
  %43 = load ptr, ptr %7, align 8
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %42, ptr noundef nonnull %44, ptr noundef nonnull @_Z19less_than_function2dd)
  %45 = load ptr, ptr %4, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %44, ptr noundef %45, ptr noundef nonnull @_Z19less_than_function2dd)
  br label %46

46:                                               ; preds = %41, %2
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt4sortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
  %4 = call i64 @_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFbddEEENS0_15_Iter_comp_iterIT_EES5_(ptr noundef %2)
  call void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %struct.less_than_functor, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca double, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %10 = ptrtoint ptr %1 to i64
  %11 = ptrtoint ptr %0 to i64
  %12 = sub i64 %10, %11
  %13 = icmp sgt i64 %12, 8
  br i1 %13, label %14, label %48

14:                                               ; preds = %3
  %15 = load double, ptr %0, align 8
  store double %15, ptr %7, align 8
  %16 = load ptr, ptr %5, align 8
  store ptr %16, ptr %8, align 8
  %17 = load ptr, ptr %6, align 8
  store ptr %17, ptr %9, align 8
  br label %18

18:                                               ; preds = %40, %14
  %.promoted = load ptr, ptr %9, align 8
  br label %19

19:                                               ; preds = %23, %18
  %20 = phi ptr [ %21, %23 ], [ %.promoted, %18 ]
  %21 = getelementptr inbounds i8, ptr %20, i64 -8
  %22 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %21)
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %19, !llvm.loop !39

24:                                               ; preds = %19
  %.lcssa = phi ptr [ %21, %19 ]
  store ptr %.lcssa, ptr %9, align 8
  %25 = load ptr, ptr %8, align 8
  %26 = load ptr, ptr %9, align 8
  %27 = icmp ult ptr %25, %26
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %43

29:                                               ; preds = %24
  %.promoted1 = load ptr, ptr %8, align 8
  br label %30

30:                                               ; preds = %33, %29
  %31 = phi ptr [ %34, %33 ], [ %.promoted1, %29 ]
  %32 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = getelementptr inbounds nuw i8, ptr %31, i64 8
  br label %30, !llvm.loop !40

35:                                               ; preds = %30
  %.lcssa2 = phi ptr [ %31, %30 ]
  store ptr %.lcssa2, ptr %8, align 8
  %36 = load ptr, ptr %8, align 8
  %37 = load ptr, ptr %9, align 8
  %38 = icmp ult ptr %36, %37
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  br label %43

40:                                               ; preds = %35
  %41 = load double, ptr %37, align 8
  %42 = load double, ptr %36, align 8
  store double %42, ptr %37, align 8
  store double %41, ptr %36, align 8
  br label %18, !llvm.loop !41

43:                                               ; preds = %39, %28
  %44 = load ptr, ptr %5, align 8
  %45 = load ptr, ptr %9, align 8
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 8
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %44, ptr noundef nonnull %46, i8 undef)
  %47 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef nonnull %46, ptr noundef %47, i8 undef)
  br label %48

48:                                               ; preds = %43, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt4sortIPd17less_than_functorEvT_S2_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = call i8 @_ZN9__gnu_cxx5__ops16__iter_comp_iterI17less_than_functorEENS0_15_Iter_comp_iterIT_EES4_(i8 undef)
  call void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %struct.inline_less_than_functor, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca double, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %10 = ptrtoint ptr %1 to i64
  %11 = ptrtoint ptr %0 to i64
  %12 = sub i64 %10, %11
  %13 = icmp sgt i64 %12, 8
  br i1 %13, label %14, label %48

14:                                               ; preds = %3
  %15 = load double, ptr %0, align 8
  store double %15, ptr %7, align 8
  %16 = load ptr, ptr %5, align 8
  store ptr %16, ptr %8, align 8
  %17 = load ptr, ptr %6, align 8
  store ptr %17, ptr %9, align 8
  br label %18

18:                                               ; preds = %40, %14
  %.promoted = load ptr, ptr %9, align 8
  br label %19

19:                                               ; preds = %23, %18
  %20 = phi ptr [ %21, %23 ], [ %.promoted, %18 ]
  %21 = getelementptr inbounds i8, ptr %20, i64 -8
  %22 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %21)
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %19, !llvm.loop !42

24:                                               ; preds = %19
  %.lcssa = phi ptr [ %21, %19 ]
  store ptr %.lcssa, ptr %9, align 8
  %25 = load ptr, ptr %8, align 8
  %26 = load ptr, ptr %9, align 8
  %27 = icmp ult ptr %25, %26
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %43

29:                                               ; preds = %24
  %.promoted1 = load ptr, ptr %8, align 8
  br label %30

30:                                               ; preds = %33, %29
  %31 = phi ptr [ %34, %33 ], [ %.promoted1, %29 ]
  %32 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = getelementptr inbounds nuw i8, ptr %31, i64 8
  br label %30, !llvm.loop !43

35:                                               ; preds = %30
  %.lcssa2 = phi ptr [ %31, %30 ]
  store ptr %.lcssa2, ptr %8, align 8
  %36 = load ptr, ptr %8, align 8
  %37 = load ptr, ptr %9, align 8
  %38 = icmp ult ptr %36, %37
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  br label %43

40:                                               ; preds = %35
  %41 = load double, ptr %37, align 8
  %42 = load double, ptr %36, align 8
  store double %42, ptr %37, align 8
  store double %41, ptr %36, align 8
  br label %18, !llvm.loop !44

43:                                               ; preds = %39, %28
  %44 = load ptr, ptr %5, align 8
  %45 = load ptr, ptr %9, align 8
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 8
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %44, ptr noundef nonnull %46, i8 undef)
  %47 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef nonnull %46, ptr noundef %47, i8 undef)
  br label %48

48:                                               ; preds = %43, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt4sortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = call i8 @_ZN9__gnu_cxx5__ops16__iter_comp_iterI24inline_less_than_functorEENS0_15_Iter_comp_iterIT_EES4_(i8 undef)
  call void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.std::less", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca double, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %10 = ptrtoint ptr %1 to i64
  %11 = ptrtoint ptr %0 to i64
  %12 = sub i64 %10, %11
  %13 = icmp sgt i64 %12, 8
  br i1 %13, label %14, label %48

14:                                               ; preds = %3
  %15 = load double, ptr %0, align 8
  store double %15, ptr %7, align 8
  %16 = load ptr, ptr %5, align 8
  store ptr %16, ptr %8, align 8
  %17 = load ptr, ptr %6, align 8
  store ptr %17, ptr %9, align 8
  br label %18

18:                                               ; preds = %40, %14
  %.promoted = load ptr, ptr %9, align 8
  br label %19

19:                                               ; preds = %23, %18
  %20 = phi ptr [ %21, %23 ], [ %.promoted, %18 ]
  %21 = getelementptr inbounds i8, ptr %20, i64 -8
  %22 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %21)
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %19, !llvm.loop !45

24:                                               ; preds = %19
  %.lcssa = phi ptr [ %21, %19 ]
  store ptr %.lcssa, ptr %9, align 8
  %25 = load ptr, ptr %8, align 8
  %26 = load ptr, ptr %9, align 8
  %27 = icmp ult ptr %25, %26
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %43

29:                                               ; preds = %24
  %.promoted1 = load ptr, ptr %8, align 8
  br label %30

30:                                               ; preds = %33, %29
  %31 = phi ptr [ %34, %33 ], [ %.promoted1, %29 ]
  %32 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = getelementptr inbounds nuw i8, ptr %31, i64 8
  br label %30, !llvm.loop !46

35:                                               ; preds = %30
  %.lcssa2 = phi ptr [ %31, %30 ]
  store ptr %.lcssa2, ptr %8, align 8
  %36 = load ptr, ptr %8, align 8
  %37 = load ptr, ptr %9, align 8
  %38 = icmp ult ptr %36, %37
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  br label %43

40:                                               ; preds = %35
  %41 = load double, ptr %37, align 8
  %42 = load double, ptr %36, align 8
  store double %42, ptr %37, align 8
  store double %41, ptr %36, align 8
  br label %18, !llvm.loop !47

43:                                               ; preds = %39, %28
  %44 = load ptr, ptr %5, align 8
  %45 = load ptr, ptr %9, align 8
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 8
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %44, ptr noundef nonnull %46, i8 undef)
  %47 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef nonnull %46, ptr noundef %47, i8 undef)
  br label %48

48:                                               ; preds = %43, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt4sortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = call i8 @_ZN9__gnu_cxx5__ops16__iter_comp_iterISt4lessIdEEENS0_15_Iter_comp_iterIT_EES5_(i8 undef)
  call void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPdEvT_S1_(ptr noundef %0, ptr noundef %1) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca double, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = icmp sgt i64 %10, 8
  br i1 %11, label %12, label %46

12:                                               ; preds = %2
  %13 = load double, ptr %0, align 8
  store double %13, ptr %5, align 8
  %14 = load ptr, ptr %3, align 8
  store ptr %14, ptr %6, align 8
  %15 = load ptr, ptr %4, align 8
  store ptr %15, ptr %7, align 8
  %16 = load double, ptr %5, align 8
  %17 = load double, ptr %5, align 8
  %.promoted6 = load ptr, ptr %7, align 8
  %.promoted = load ptr, ptr %6, align 8
  br label %18

18:                                               ; preds = %39, %12
  %.lcssa59 = phi ptr [ %.lcssa5, %39 ], [ %.promoted, %12 ]
  %.lcssa7 = phi ptr [ %.lcssa, %39 ], [ %.promoted6, %12 ]
  br label %19

19:                                               ; preds = %24, %18
  %20 = phi ptr [ %21, %24 ], [ %.lcssa7, %18 ]
  %21 = getelementptr inbounds i8, ptr %20, i64 -8
  %22 = load double, ptr %21, align 8
  %23 = fcmp olt double %16, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %19, !llvm.loop !48

25:                                               ; preds = %19
  %.lcssa = phi ptr [ %21, %19 ]
  %.lcssa3 = phi ptr [ %20, %19 ]
  %26 = getelementptr inbounds i8, ptr %.lcssa3, i64 -8
  %27 = icmp ult ptr %.lcssa59, %26
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  %.lcssa59.lcssa = phi ptr [ %.lcssa59, %25 ]
  %.lcssa.lcssa = phi ptr [ %.lcssa, %25 ]
  store ptr %.lcssa.lcssa, ptr %7, align 8
  store ptr %.lcssa59.lcssa, ptr %6, align 8
  br label %41

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %34, %29
  %31 = phi ptr [ %35, %34 ], [ %.lcssa59, %29 ]
  %32 = load double, ptr %31, align 8
  %33 = fcmp olt double %32, %17
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = getelementptr inbounds nuw i8, ptr %31, i64 8
  br label %30, !llvm.loop !49

36:                                               ; preds = %30
  %.lcssa5 = phi ptr [ %31, %30 ]
  %.lcssa2 = phi ptr [ %31, %30 ]
  %.lcssa1 = phi double [ %32, %30 ]
  %37 = icmp ult ptr %.lcssa2, %.lcssa
  br i1 %37, label %39, label %38

38:                                               ; preds = %36
  %.lcssa5.lcssa = phi ptr [ %.lcssa5, %36 ]
  %.lcssa.lcssa8 = phi ptr [ %.lcssa, %36 ]
  store ptr %.lcssa.lcssa8, ptr %7, align 8
  store ptr %.lcssa5.lcssa, ptr %6, align 8
  br label %41

39:                                               ; preds = %36
  %40 = load double, ptr %.lcssa, align 8
  store double %.lcssa1, ptr %.lcssa, align 8
  store double %40, ptr %.lcssa2, align 8
  br label %18, !llvm.loop !50

41:                                               ; preds = %38, %28
  %42 = load ptr, ptr %3, align 8
  %43 = load ptr, ptr %7, align 8
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 8
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %42, ptr noundef nonnull %44)
  %45 = load ptr, ptr %4, align 8
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef nonnull %44, ptr noundef %45)
  br label %46

46:                                               ; preds = %41, %2
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt4sortIPdEvT_S1_(ptr noundef %0, ptr noundef %1) #0 comdat {
  %3 = call i8 @_ZN9__gnu_cxx5__ops16__iter_less_iterEv()
  call void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 undef)
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdaPv(ptr noundef) #9

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0) #5 comdat {
  ret ptr %0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPdS0_S0_ET2_T0_T1_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %2, ptr %5, align 8
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  store i64 %10, ptr %6, align 8
  %11 = icmp sgt i64 %10, 1
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 8
  %14 = load ptr, ptr %4, align 8
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %13, ptr align 8 %14, i64 %9, i1 false)
  %15 = load i64, ptr %6, align 8
  %16 = getelementptr inbounds [8 x i8], ptr %13, i64 %15
  store ptr %16, ptr %5, align 8
  br label %25

17:                                               ; preds = %3
  %18 = icmp eq i64 %9, 8
  br i1 %18, label %19, label %24

19:                                               ; preds = %17
  %20 = load ptr, ptr %4, align 8
  %21 = load double, ptr %20, align 8
  %22 = load ptr, ptr %5, align 8
  store double %21, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %23, ptr %5, align 8
  br label %24

24:                                               ; preds = %19, %17
  br label %25

25:                                               ; preds = %24, %12
  %26 = load ptr, ptr %5, align 8
  ret ptr %26
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #10

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = inttoptr i64 %2 to ptr
  store ptr %7, ptr %4, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %18, label %8

8:                                                ; preds = %3
  %9 = ptrtoint ptr %1 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 3
  %13 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %12)
  %14 = shl nsw i64 %13, 1
  %15 = load i64, ptr %4, align 8
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %14, i64 %15)
  %16 = load ptr, ptr %5, align 8
  %17 = load ptr, ptr %6, align 8
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %16, ptr noundef %17, i64 %15)
  br label %18

18:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i64 @_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFbddEEENS0_15_Iter_comp_iterIT_EES5_(ptr noundef %0) #0 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  call void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEC2ES3_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %0)
  %3 = load ptr, ptr %2, align 8
  %4 = ptrtoint ptr %3 to i64
  ret i64 %4
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = inttoptr i64 %3 to ptr
  store ptr %9, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = ptrtoint ptr %10 to i64
  %12 = load ptr, ptr %6, align 8
  %13 = load i64, ptr %5, align 8
  %.promoted = load ptr, ptr %7, align 8
  %.promoted5 = load i64, ptr %8, align 8
  br label %14

14:                                               ; preds = %24, %4
  %15 = phi i64 [ %25, %24 ], [ %.promoted5, %4 ]
  %16 = phi ptr [ %26, %24 ], [ %.promoted, %4 ]
  %17 = ptrtoint ptr %16 to i64
  %18 = sub i64 %17, %11
  %19 = icmp sgt i64 %18, 128
  br i1 %19, label %20, label %.loopexit

20:                                               ; preds = %14
  %21 = icmp eq i64 %15, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %20
  %.lcssa7 = phi i64 [ %15, %20 ]
  %.lcssa4 = phi ptr [ %16, %20 ]
  %.lcssa3 = phi ptr [ %16, %20 ]
  %.lcssa1 = phi ptr [ %10, %20 ]
  store ptr %.lcssa4, ptr %7, align 8
  store i64 %.lcssa7, ptr %8, align 8
  %23 = load i64, ptr %5, align 8
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %.lcssa1, ptr noundef %.lcssa3, ptr noundef %.lcssa3, i64 %23)
  br label %27

24:                                               ; preds = %20
  %25 = add nsw i64 %15, -1
  %26 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_(ptr noundef %12, ptr noundef %16, i64 %13)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %26, ptr noundef %16, i64 noundef %25, i64 %13)
  br label %14, !llvm.loop !51

.loopexit:                                        ; preds = %14
  %.lcssa6 = phi i64 [ %15, %14 ]
  %.lcssa = phi ptr [ %16, %14 ]
  store ptr %.lcssa, ptr %7, align 8
  store i64 %.lcssa6, ptr %8, align 8
  br label %27

27:                                               ; preds = %.loopexit, %22
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %0) #5 comdat {
  %2 = call noundef i32 @_ZSt11__bit_widthIyEiT_(i64 noundef %0) #15
  %3 = add nsw i32 %2, -1
  %4 = sext i32 %3 to i64
  ret i64 %4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = inttoptr i64 %2 to ptr
  store ptr %7, ptr %4, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = icmp sgt i64 %10, 128
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %14 = load i64, ptr %4, align 8
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef nonnull %13, i64 %14)
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 128
  %17 = load ptr, ptr %6, align 8
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef nonnull %16, ptr noundef %17, i64 %14)
  br label %20

18:                                               ; preds = %3
  %19 = load i64, ptr %4, align 8
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %19)
  br label %20

20:                                               ; preds = %18, %12
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = inttoptr i64 %3 to ptr
  store ptr %6, ptr %5, align 8
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3)
  call void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = inttoptr i64 %2 to ptr
  store ptr %7, ptr %4, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = sdiv i64 %11, 2
  %13 = getelementptr inbounds [8 x i8], ptr %0, i64 %12
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %16 = getelementptr inbounds i8, ptr %1, i64 -8
  %17 = load i64, ptr %4, align 8
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_(ptr noundef %14, ptr noundef nonnull %15, ptr noundef %13, ptr noundef nonnull %16, i64 %17)
  %18 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_S7_T0_(ptr noundef nonnull %15, ptr noundef %1, ptr noundef %14, i64 %17)
  ret ptr %18
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = inttoptr i64 %3 to ptr
  store ptr %10, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %11 = load ptr, ptr %8, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %6, align 8
  %14 = load ptr, ptr %7, align 8
  br label %15

15:                                               ; preds = %21, %4
  %storemerge = phi ptr [ %1, %4 ], [ %22, %21 ]
  %16 = icmp ult ptr %storemerge, %11
  br i1 %16, label %17, label %23

17:                                               ; preds = %15
  %18 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %storemerge, ptr noundef %12)
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %13, ptr noundef %14, ptr noundef %storemerge, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %20

20:                                               ; preds = %19, %17
  br label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  br label %15, !llvm.loop !52

23:                                               ; preds = %15
  %storemerge.lcssa = phi ptr [ %storemerge, %15 ]
  store ptr %storemerge.lcssa, ptr %9, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = ptrtoint ptr %7 to i64
  %9 = load ptr, ptr %4, align 8
  %10 = load ptr, ptr %6, align 8, !nonnull !53, !align !54
  %.promoted = load ptr, ptr %5, align 8
  br label %11

11:                                               ; preds = %16, %3
  %12 = phi ptr [ %17, %16 ], [ %.promoted, %3 ]
  %13 = ptrtoint ptr %12 to i64
  %14 = sub i64 %13, %8
  %15 = icmp sgt i64 %14, 8
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, ptr %12, i64 -8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %9, ptr noundef nonnull %17, ptr noundef nonnull %17, ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %11, !llvm.loop !55

18:                                               ; preds = %11
  %.lcssa = phi ptr [ %12, %11 ]
  store ptr %.lcssa, ptr %5, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %2, ptr %5, align 8
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = icmp slt i64 %11, 2
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %28

14:                                               ; preds = %3
  store i64 %11, ptr %6, align 8
  %15 = add nsw i64 %11, -2
  %16 = sdiv i64 %15, 2
  %17 = load ptr, ptr %4, align 8
  %18 = load i64, ptr %6, align 8
  %19 = load ptr, ptr %5, align 8, !nonnull !53, !align !54
  br label %20

20:                                               ; preds = %26, %14
  %storemerge = phi i64 [ %16, %14 ], [ %27, %26 ]
  %21 = getelementptr inbounds [8 x i8], ptr %17, i64 %storemerge
  %22 = load double, ptr %21, align 8
  %23 = load i64, ptr %19, align 8
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef %17, i64 noundef %storemerge, i64 noundef %18, double noundef %22, i64 %23)
  %24 = icmp eq i64 %storemerge, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  %storemerge.lcssa = phi i64 [ %storemerge, %20 ]
  store i64 %storemerge.lcssa, ptr %7, align 8
  br label %28

26:                                               ; preds = %20
  %27 = add nsw i64 %storemerge, -1
  br label %20, !llvm.loop !56

28:                                               ; preds = %25, %13
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) #0 comdat align 2 {
  %4 = load ptr, ptr %0, align 8
  %5 = load double, ptr %1, align 8
  %6 = load double, ptr %2, align 8
  %7 = call noundef zeroext i1 %4(double noundef %5, double noundef %6)
  ret i1 %7
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #0 comdat {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca double, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %3, ptr %7, align 8
  %9 = load double, ptr %2, align 8
  store double %9, ptr %8, align 8
  %10 = load double, ptr %0, align 8
  store double %10, ptr %2, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = ptrtoint ptr %12 to i64
  %14 = ptrtoint ptr %11 to i64
  %15 = sub i64 %13, %14
  %16 = ashr exact i64 %15, 3
  %17 = load double, ptr %8, align 8
  %18 = load ptr, ptr %7, align 8, !nonnull !53, !align !54
  %19 = load i64, ptr %18, align 8
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef %11, i64 noundef 0, i64 noundef %16, double noundef %17, i64 %19)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, i64 %4) #0 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca double, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val", align 8
  %14 = inttoptr i64 %4 to ptr
  store ptr %14, ptr %6, align 8
  store ptr %0, ptr %7, align 8
  store i64 %1, ptr %8, align 8
  store i64 %2, ptr %9, align 8
  store double %3, ptr %10, align 8
  store i64 %1, ptr %11, align 8
  store i64 %1, ptr %12, align 8
  %15 = load i64, ptr %9, align 8
  %16 = add nsw i64 %15, -1
  %17 = sdiv i64 %16, 2
  %18 = load ptr, ptr %7, align 8
  %19 = load ptr, ptr %7, align 8
  %.promoted = load i64, ptr %12, align 8
  %.promoted3 = load i64, ptr %8, align 8
  br label %20

20:                                               ; preds = %33, %5
  %21 = phi i64 [ %34, %33 ], [ %.promoted3, %5 ]
  %22 = phi i64 [ %34, %33 ], [ %.promoted, %5 ]
  %23 = icmp slt i64 %22, %17
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = shl i64 %22, 1
  %26 = add i64 %25, 2
  %27 = getelementptr inbounds [8 x i8], ptr %18, i64 %26
  %28 = getelementptr [8 x i8], ptr %18, i64 %25
  %29 = getelementptr i8, ptr %28, i64 8
  %30 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %27, ptr noundef %29)
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = add nsw i64 %26, -1
  br label %33

33:                                               ; preds = %31, %24
  %34 = phi i64 [ %32, %31 ], [ %26, %24 ]
  %35 = getelementptr inbounds [8 x i8], ptr %19, i64 %34
  %36 = load double, ptr %35, align 8
  %37 = getelementptr inbounds [8 x i8], ptr %19, i64 %21
  store double %36, ptr %37, align 8
  br label %20, !llvm.loop !57

38:                                               ; preds = %20
  %.lcssa4 = phi i64 [ %21, %20 ]
  %.lcssa2 = phi i64 [ %22, %20 ]
  %.lcssa1 = phi i64 [ %22, %20 ]
  %.lcssa = phi i64 [ %15, %20 ]
  store i64 %.lcssa2, ptr %12, align 8
  store i64 %.lcssa4, ptr %8, align 8
  %39 = and i64 %.lcssa, 1
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %38
  %42 = add nsw i64 %.lcssa, -2
  %43 = ashr exact i64 %42, 1
  %44 = icmp eq i64 %.lcssa1, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = shl i64 %.lcssa1, 1
  %47 = add i64 %46, 2
  store i64 %47, ptr %12, align 8
  %48 = load ptr, ptr %7, align 8
  %49 = getelementptr [8 x i8], ptr %48, i64 %46
  %50 = getelementptr i8, ptr %49, i64 8
  %51 = load double, ptr %50, align 8
  %52 = load i64, ptr %8, align 8
  %53 = getelementptr inbounds [8 x i8], ptr %48, i64 %52
  store double %51, ptr %53, align 8
  %54 = load i64, ptr %12, align 8
  %55 = add nsw i64 %54, -1
  store i64 %55, ptr %8, align 8
  br label %56

56:                                               ; preds = %45, %41, %38
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %57 = load ptr, ptr %7, align 8
  %58 = load i64, ptr %8, align 8
  %59 = load i64, ptr %11, align 8
  %60 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEEEvT_T0_S8_T1_RT2_(ptr noundef %57, i64 noundef %58, i64 noundef %59, double noundef %60, ptr noundef nonnull align 8 dereferenceable(8) %13)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 {
  %3 = load ptr, ptr %1, align 8
  store ptr %3, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEEEvT_T0_S8_T1_RT2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #0 comdat {
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  store double %3, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  %12 = load i64, ptr %8, align 8
  %13 = load ptr, ptr %10, align 8, !nonnull !53, !align !54
  %14 = load ptr, ptr %6, align 8
  %15 = load ptr, ptr %6, align 8
  %.promoted = load i64, ptr %7, align 8
  br label %16

16:                                               ; preds = %23, %5
  %storemerge1 = phi i64 [ %.promoted, %5 ], [ %storemerge, %23 ]
  %storemerge.in.in = phi i64 [ %1, %5 ], [ %storemerge, %23 ]
  %storemerge.in = add nsw i64 %storemerge.in.in, -1
  %storemerge = sdiv i64 %storemerge.in, 2
  %17 = icmp sgt i64 %storemerge1, %12
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = getelementptr inbounds [8 x i8], ptr %14, i64 %storemerge
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEclIPddEEbT_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %19, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %21

21:                                               ; preds = %18, %16
  %22 = phi i1 [ false, %16 ], [ %20, %18 ]
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = getelementptr inbounds [8 x i8], ptr %15, i64 %storemerge
  %25 = load double, ptr %24, align 8
  %26 = getelementptr inbounds [8 x i8], ptr %15, i64 %storemerge1
  store double %25, ptr %26, align 8
  br label %16, !llvm.loop !58

27:                                               ; preds = %21
  %storemerge1.lcssa = phi i64 [ %storemerge1, %21 ]
  %storemerge.lcssa = phi i64 [ %storemerge, %21 ]
  store i64 %storemerge.lcssa, ptr %11, align 8
  store i64 %storemerge1.lcssa, ptr %7, align 8
  %28 = load double, ptr %9, align 8
  %29 = load ptr, ptr %6, align 8
  %30 = load i64, ptr %7, align 8
  %31 = getelementptr inbounds [8 x i8], ptr %29, i64 %30
  store double %28, ptr %31, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEclIPddEEbT_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 comdat align 2 {
  %4 = load ptr, ptr %0, align 8
  %5 = load double, ptr %1, align 8
  %6 = load double, ptr %2, align 8
  %7 = call noundef zeroext i1 %4(double noundef %5, double noundef %6)
  ret i1 %7
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 %4) #0 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = inttoptr i64 %4 to ptr
  store ptr %11, ptr %6, align 8
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  store ptr %3, ptr %10, align 8
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %2)
  br i1 %12, label %13, label %32

13:                                               ; preds = %5
  %14 = load ptr, ptr %9, align 8
  %15 = load ptr, ptr %10, align 8
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %14, ptr noundef %15)
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load ptr, ptr %7, align 8
  %19 = load ptr, ptr %9, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %18, ptr noundef %19)
  br label %31

20:                                               ; preds = %13
  %21 = load ptr, ptr %8, align 8
  %22 = load ptr, ptr %10, align 8
  %23 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %21, ptr noundef %22)
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load ptr, ptr %7, align 8
  %26 = load ptr, ptr %10, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %25, ptr noundef %26)
  br label %30

27:                                               ; preds = %20
  %28 = load ptr, ptr %7, align 8
  %29 = load ptr, ptr %8, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %28, ptr noundef %29)
  br label %30

30:                                               ; preds = %27, %24
  br label %31

31:                                               ; preds = %30, %17
  br label %51

32:                                               ; preds = %5
  %33 = load ptr, ptr %8, align 8
  %34 = load ptr, ptr %10, align 8
  %35 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %33, ptr noundef %34)
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load ptr, ptr %7, align 8
  %38 = load ptr, ptr %8, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %37, ptr noundef %38)
  br label %50

39:                                               ; preds = %32
  %40 = load ptr, ptr %9, align 8
  %41 = load ptr, ptr %10, align 8
  %42 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %40, ptr noundef %41)
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load ptr, ptr %7, align 8
  %45 = load ptr, ptr %10, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %44, ptr noundef %45)
  br label %49

46:                                               ; preds = %39
  %47 = load ptr, ptr %7, align 8
  %48 = load ptr, ptr %9, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %47, ptr noundef %48)
  br label %49

49:                                               ; preds = %46, %43
  br label %50

50:                                               ; preds = %49, %36
  br label %51

51:                                               ; preds = %50, %31
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = inttoptr i64 %3 to ptr
  store ptr %9, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  br label %10

10:                                               ; preds = %29, %4
  %11 = load ptr, ptr %8, align 8
  %.promoted = load ptr, ptr %6, align 8
  br label %12

12:                                               ; preds = %15, %10
  %13 = phi ptr [ %16, %15 ], [ %.promoted, %10 ]
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %13, ptr noundef %11)
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %12, !llvm.loop !59

17:                                               ; preds = %12
  %.lcssa1 = phi ptr [ %13, %12 ]
  store ptr %.lcssa1, ptr %6, align 8
  %18 = load ptr, ptr %7, align 8
  br label %19

19:                                               ; preds = %22, %17
  %.pn = phi ptr [ %18, %17 ], [ %23, %22 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  store ptr %storemerge, ptr %7, align 8
  %20 = load ptr, ptr %8, align 8
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %20, ptr noundef nonnull %storemerge)
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load ptr, ptr %7, align 8
  br label %19, !llvm.loop !60

24:                                               ; preds = %19
  %25 = load ptr, ptr %6, align 8
  %26 = load ptr, ptr %7, align 8
  %27 = icmp ult ptr %25, %26
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  %.lcssa = phi ptr [ %25, %24 ]
  ret ptr %.lcssa

29:                                               ; preds = %24
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %25, ptr noundef nonnull %26)
  %30 = load ptr, ptr %6, align 8
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 8
  store ptr %31, ptr %6, align 8
  br label %10, !llvm.loop !61
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1) #5 comdat {
  call void @_ZSt4swapIdENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZSt4swapIdENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #5 comdat {
  %3 = load double, ptr %0, align 8
  %4 = load double, ptr %1, align 8
  store double %4, ptr %0, align 8
  store double %3, ptr %1, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZSt11__bit_widthIyEiT_(i64 noundef %0) #5 comdat {
  %2 = call noundef i32 @_ZSt13__countl_zeroIyEiT_(i64 noundef %0) #15
  %3 = sub nsw i32 64, %2
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZSt13__countl_zeroIyEiT_(i64 noundef %0) #5 comdat {
  %2 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %0, i1 false)
  %3 = trunc nuw nsw i64 %2 to i32
  ret i32 %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = inttoptr i64 %2 to ptr
  store ptr %8, ptr %4, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %9 = icmp eq ptr %0, %1
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %32

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %30, %11
  %.pn = phi ptr [ %0, %11 ], [ %31, %30 ]
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  store ptr %storemerge, ptr %7, align 8
  %13 = load ptr, ptr %6, align 8
  %.not = icmp eq ptr %storemerge, %13
  br i1 %.not, label %.loopexit, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr %5, align 8
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %storemerge, ptr noundef %15)
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load ptr, ptr %7, align 8
  %19 = load double, ptr %18, align 8
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %22 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %20)
  %23 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %18)
  %24 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %22, ptr noundef %23, ptr noundef nonnull %21)
  store double %19, ptr %20, align 8
  br label %29

25:                                               ; preds = %14
  %26 = load ptr, ptr %7, align 8
  %27 = load i64, ptr %4, align 8
  %28 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %27)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %26, i64 %28)
  br label %29

29:                                               ; preds = %25, %17
  br label %30

30:                                               ; preds = %29
  %31 = load ptr, ptr %7, align 8
  br label %12, !llvm.loop !62

.loopexit:                                        ; preds = %12
  br label %32

32:                                               ; preds = %.loopexit, %10
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = inttoptr i64 %2 to ptr
  store ptr %7, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %4, align 8
  br label %10

10:                                               ; preds = %13, %3
  %storemerge = phi ptr [ %0, %3 ], [ %14, %13 ]
  %.not = icmp eq ptr %storemerge, %8
  br i1 %.not, label %15, label %11

11:                                               ; preds = %10
  %12 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %9)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %storemerge, i64 %12)
  br label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  br label %10, !llvm.loop !63

15:                                               ; preds = %10
  %storemerge.lcssa = phi ptr [ %storemerge, %10 ]
  store ptr %storemerge.lcssa, ptr %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %0, i64 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %4 = alloca ptr, align 8
  %5 = alloca double, align 8
  %6 = alloca ptr, align 8
  %7 = inttoptr i64 %1 to ptr
  store ptr %7, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %8 = load double, ptr %0, align 8
  store double %8, ptr %5, align 8
  br label %9

9:                                                ; preds = %11, %2
  %.pn = phi ptr [ %0, %2 ], [ %12, %11 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  store ptr %storemerge, ptr %6, align 8
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEclIdPdEEbRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %storemerge)
  br i1 %10, label %11, label %15

11:                                               ; preds = %9
  %12 = load ptr, ptr %6, align 8
  %13 = load double, ptr %12, align 8
  %14 = load ptr, ptr %4, align 8
  store double %13, ptr %14, align 8
  store ptr %12, ptr %4, align 8
  br label %9, !llvm.loop !64

15:                                               ; preds = %9
  %16 = load double, ptr %5, align 8
  %17 = load ptr, ptr %4, align 8
  store double %16, ptr %17, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %0) #0 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %4 = inttoptr i64 %0 to ptr
  store ptr %4, ptr %3, align 8
  call void @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %5 = load ptr, ptr %2, align 8
  %6 = ptrtoint ptr %5 to i64
  ret i64 %6
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %2, ptr %5, align 8
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = sub nsw i64 0, %9
  call void @_ZSt9__advanceIPdxEvRT_T0_St26random_access_iterator_tag(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %10, i8 undef)
  %11 = icmp sgt i64 %9, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 8
  %14 = load ptr, ptr %4, align 8
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %13, ptr align 8 %14, i64 %8, i1 false)
  br label %22

15:                                               ; preds = %3
  %16 = icmp eq i64 %8, 8
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = load ptr, ptr %4, align 8
  %19 = load double, ptr %18, align 8
  %20 = load ptr, ptr %5, align 8
  store double %19, ptr %20, align 8
  br label %21

21:                                               ; preds = %17, %15
  br label %22

22:                                               ; preds = %21, %12
  %23 = load ptr, ptr %5, align 8
  ret ptr %23
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZSt9__advanceIPdxEvRT_T0_St26random_access_iterator_tag(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, i8 %2) #5 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %6 = call i1 @llvm.is.constant.i64(i64 %1)
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = icmp eq i64 %1, 1
  br i1 %8, label %9, label %13

9:                                                ; preds = %7
  %10 = load ptr, ptr %4, align 8, !nonnull !53, !align !54
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %12, ptr %10, align 8
  br label %28

13:                                               ; preds = %7, %3
  %14 = load i64, ptr %5, align 8
  %15 = call i1 @llvm.is.constant.i64(i64 %14)
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = icmp eq i64 %14, -1
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = load ptr, ptr %4, align 8, !nonnull !53, !align !54
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds i8, ptr %20, i64 -8
  store ptr %21, ptr %19, align 8
  br label %27

22:                                               ; preds = %16, %13
  %23 = load i64, ptr %5, align 8
  %24 = load ptr, ptr %4, align 8, !nonnull !53, !align !54
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds [8 x i8], ptr %25, i64 %23
  store ptr %26, ptr %24, align 8
  br label %27

27:                                               ; preds = %22, %18
  br label %28

28:                                               ; preds = %27, %9
  ret void
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #12

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEclIdPdEEbRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) #0 comdat align 2 {
  %4 = load ptr, ptr %0, align 8
  %5 = load double, ptr %1, align 8
  %6 = load double, ptr %2, align 8
  %7 = call noundef zeroext i1 %4(double noundef %5, double noundef %6)
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 {
  %3 = load ptr, ptr %1, align 8
  store ptr %3, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEC2ES3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 {
  store ptr %1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %17, label %7

7:                                                ; preds = %3
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %11)
  %13 = shl nsw i64 %12, 1
  %14 = load i8, ptr %4, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %13, i8 %14)
  %15 = load ptr, ptr %5, align 8
  %16 = load ptr, ptr %6, align 8
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %15, ptr noundef %16, i8 %14)
  br label %17

17:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i8 @_ZN9__gnu_cxx5__ops16__iter_comp_iterI17less_than_functorEENS0_15_Iter_comp_iterIT_EES4_(i8 %0) #0 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  call void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEC2ES2_(ptr noundef nonnull align 1 dereferenceable(1) %2, i8 undef)
  %3 = load i8, ptr %2, align 1
  ret i8 %3
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  store i8 %3, ptr %5, align 1
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = ptrtoint ptr %9 to i64
  %11 = load ptr, ptr %6, align 8
  %12 = load i8, ptr %5, align 1
  %.promoted = load ptr, ptr %7, align 8
  %.promoted5 = load i64, ptr %8, align 8
  br label %13

13:                                               ; preds = %23, %4
  %14 = phi i64 [ %24, %23 ], [ %.promoted5, %4 ]
  %15 = phi ptr [ %25, %23 ], [ %.promoted, %4 ]
  %16 = ptrtoint ptr %15 to i64
  %17 = sub i64 %16, %10
  %18 = icmp sgt i64 %17, 128
  br i1 %18, label %19, label %.loopexit

19:                                               ; preds = %13
  %20 = icmp eq i64 %14, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  %.lcssa7 = phi i64 [ %14, %19 ]
  %.lcssa4 = phi ptr [ %15, %19 ]
  %.lcssa3 = phi ptr [ %15, %19 ]
  %.lcssa1 = phi ptr [ %9, %19 ]
  store ptr %.lcssa4, ptr %7, align 8
  store i64 %.lcssa7, ptr %8, align 8
  %22 = load i8, ptr %5, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %.lcssa1, ptr noundef %.lcssa3, ptr noundef %.lcssa3, i8 %22)
  br label %26

23:                                               ; preds = %19
  %24 = add nsw i64 %14, -1
  %25 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_(ptr noundef %11, ptr noundef %15, i8 %12)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %25, ptr noundef %15, i64 noundef %24, i8 %12)
  br label %13, !llvm.loop !65

.loopexit:                                        ; preds = %13
  %.lcssa6 = phi i64 [ %14, %13 ]
  %.lcssa = phi ptr [ %15, %13 ]
  store ptr %.lcssa, ptr %7, align 8
  store i64 %.lcssa6, ptr %8, align 8
  br label %26

26:                                               ; preds = %.loopexit, %21
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = icmp sgt i64 %9, 128
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %13 = load i8, ptr %4, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef nonnull %12, i8 %13)
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 128
  %16 = load ptr, ptr %6, align 8
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef nonnull %15, ptr noundef %16, i8 %13)
  br label %19

17:                                               ; preds = %3
  %18 = load i8, ptr %4, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %18)
  br label %19

19:                                               ; preds = %17, %11
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  store i8 %3, ptr %5, align 1
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3)
  call void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = sdiv i64 %10, 2
  %12 = getelementptr inbounds [8 x i8], ptr %0, i64 %11
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %15 = getelementptr inbounds i8, ptr %1, i64 -8
  %16 = load i8, ptr %4, align 1
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_S6_T0_(ptr noundef %13, ptr noundef nonnull %14, ptr noundef %12, ptr noundef nonnull %15, i8 %16)
  %17 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_S6_T0_(ptr noundef nonnull %14, ptr noundef %1, ptr noundef %13, i8 %16)
  ret ptr %17
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store i8 %3, ptr %5, align 1
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %10 = load ptr, ptr %8, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %7, align 8
  br label %14

14:                                               ; preds = %20, %4
  %storemerge = phi ptr [ %1, %4 ], [ %21, %20 ]
  %15 = icmp ult ptr %storemerge, %10
  br i1 %15, label %16, label %22

16:                                               ; preds = %14
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %storemerge, ptr noundef %11)
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %12, ptr noundef %13, ptr noundef %storemerge, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %19

19:                                               ; preds = %18, %16
  br label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  br label %14, !llvm.loop !66

22:                                               ; preds = %14
  %storemerge.lcssa = phi ptr [ %storemerge, %14 ]
  store ptr %storemerge.lcssa, ptr %9, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = ptrtoint ptr %7 to i64
  %9 = load ptr, ptr %4, align 8
  %10 = load ptr, ptr %6, align 8, !nonnull !53
  %.promoted = load ptr, ptr %5, align 8
  br label %11

11:                                               ; preds = %16, %3
  %12 = phi ptr [ %17, %16 ], [ %.promoted, %3 ]
  %13 = ptrtoint ptr %12 to i64
  %14 = sub i64 %13, %8
  %15 = icmp sgt i64 %14, 8
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, ptr %12, i64 -8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %9, ptr noundef nonnull %17, ptr noundef nonnull %17, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %11, !llvm.loop !67

18:                                               ; preds = %11
  %.lcssa = phi ptr [ %12, %11 ]
  store ptr %.lcssa, ptr %5, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %2, ptr %5, align 8
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = icmp slt i64 %11, 2
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %28

14:                                               ; preds = %3
  store i64 %11, ptr %6, align 8
  %15 = add nsw i64 %11, -2
  %16 = sdiv i64 %15, 2
  %17 = load ptr, ptr %4, align 8
  %18 = load i64, ptr %6, align 8
  %19 = load ptr, ptr %5, align 8, !nonnull !53
  br label %20

20:                                               ; preds = %26, %14
  %storemerge = phi i64 [ %16, %14 ], [ %27, %26 ]
  %21 = getelementptr inbounds [8 x i8], ptr %17, i64 %storemerge
  %22 = load double, ptr %21, align 8
  %23 = load i8, ptr %19, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %17, i64 noundef %storemerge, i64 noundef %18, double noundef %22, i8 %23)
  %24 = icmp eq i64 %storemerge, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  %storemerge.lcssa = phi i64 [ %storemerge, %20 ]
  store i64 %storemerge.lcssa, ptr %7, align 8
  br label %28

26:                                               ; preds = %20
  %27 = add nsw i64 %storemerge, -1
  br label %20, !llvm.loop !68

28:                                               ; preds = %25, %13
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) #5 comdat align 2 {
  %4 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %4
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #0 comdat {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca double, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %3, ptr %7, align 8
  %9 = load double, ptr %2, align 8
  store double %9, ptr %8, align 8
  %10 = load double, ptr %0, align 8
  store double %10, ptr %2, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = ptrtoint ptr %12 to i64
  %14 = ptrtoint ptr %11 to i64
  %15 = sub i64 %13, %14
  %16 = ashr exact i64 %15, 3
  %17 = load double, ptr %8, align 8
  %18 = load ptr, ptr %7, align 8, !nonnull !53
  %19 = load i8, ptr %18, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %11, i64 noundef 0, i64 noundef %16, double noundef %17, i8 %19)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, i8 %4) #0 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca double, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.1", align 1
  store i8 %4, ptr %6, align 1
  store ptr %0, ptr %7, align 8
  store i64 %1, ptr %8, align 8
  store i64 %2, ptr %9, align 8
  store double %3, ptr %10, align 8
  store i64 %1, ptr %11, align 8
  store i64 %1, ptr %12, align 8
  %14 = load i64, ptr %9, align 8
  %15 = add nsw i64 %14, -1
  %16 = sdiv i64 %15, 2
  %17 = load ptr, ptr %7, align 8
  %18 = load ptr, ptr %7, align 8
  %.promoted = load i64, ptr %12, align 8
  %.promoted3 = load i64, ptr %8, align 8
  br label %19

19:                                               ; preds = %32, %5
  %20 = phi i64 [ %33, %32 ], [ %.promoted3, %5 ]
  %21 = phi i64 [ %33, %32 ], [ %.promoted, %5 ]
  %22 = icmp slt i64 %21, %16
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = shl i64 %21, 1
  %25 = add i64 %24, 2
  %26 = getelementptr inbounds [8 x i8], ptr %17, i64 %25
  %27 = getelementptr [8 x i8], ptr %17, i64 %24
  %28 = getelementptr i8, ptr %27, i64 8
  %29 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %26, ptr noundef %28)
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = add nsw i64 %25, -1
  br label %32

32:                                               ; preds = %30, %23
  %33 = phi i64 [ %31, %30 ], [ %25, %23 ]
  %34 = getelementptr inbounds [8 x i8], ptr %18, i64 %33
  %35 = load double, ptr %34, align 8
  %36 = getelementptr inbounds [8 x i8], ptr %18, i64 %20
  store double %35, ptr %36, align 8
  br label %19, !llvm.loop !69

37:                                               ; preds = %19
  %.lcssa4 = phi i64 [ %20, %19 ]
  %.lcssa2 = phi i64 [ %21, %19 ]
  %.lcssa1 = phi i64 [ %21, %19 ]
  %.lcssa = phi i64 [ %14, %19 ]
  store i64 %.lcssa2, ptr %12, align 8
  store i64 %.lcssa4, ptr %8, align 8
  %38 = and i64 %.lcssa, 1
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %37
  %41 = add nsw i64 %.lcssa, -2
  %42 = ashr exact i64 %41, 1
  %43 = icmp eq i64 %.lcssa1, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = shl i64 %.lcssa1, 1
  %46 = add i64 %45, 2
  store i64 %46, ptr %12, align 8
  %47 = load ptr, ptr %7, align 8
  %48 = getelementptr [8 x i8], ptr %47, i64 %45
  %49 = getelementptr i8, ptr %48, i64 8
  %50 = load double, ptr %49, align 8
  %51 = load i64, ptr %8, align 8
  %52 = getelementptr inbounds [8 x i8], ptr %47, i64 %51
  store double %50, ptr %52, align 8
  %53 = load i64, ptr %12, align 8
  %54 = add nsw i64 %53, -1
  store i64 %54, ptr %8, align 8
  br label %55

55:                                               ; preds = %44, %40, %37
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %56 = load ptr, ptr %7, align 8
  %57 = load i64, ptr %8, align 8
  %58 = load i64, ptr %11, align 8
  %59 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %56, i64 noundef %57, i64 noundef %58, double noundef %59, ptr noundef nonnull align 1 dereferenceable(1) %13)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #0 comdat {
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  store double %3, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  %12 = load i64, ptr %8, align 8
  %13 = load ptr, ptr %10, align 8, !nonnull !53
  %14 = load ptr, ptr %6, align 8
  %15 = load ptr, ptr %6, align 8
  %.promoted = load i64, ptr %7, align 8
  br label %16

16:                                               ; preds = %23, %5
  %storemerge1 = phi i64 [ %.promoted, %5 ], [ %storemerge, %23 ]
  %storemerge.in.in = phi i64 [ %1, %5 ], [ %storemerge, %23 ]
  %storemerge.in = add nsw i64 %storemerge.in.in, -1
  %storemerge = sdiv i64 %storemerge.in, 2
  %17 = icmp sgt i64 %storemerge1, %12
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = getelementptr inbounds [8 x i8], ptr %14, i64 %storemerge
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef %19, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %21

21:                                               ; preds = %18, %16
  %22 = phi i1 [ false, %16 ], [ %20, %18 ]
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = getelementptr inbounds [8 x i8], ptr %15, i64 %storemerge
  %25 = load double, ptr %24, align 8
  %26 = getelementptr inbounds [8 x i8], ptr %15, i64 %storemerge1
  store double %25, ptr %26, align 8
  br label %16, !llvm.loop !70

27:                                               ; preds = %21
  %storemerge1.lcssa = phi i64 [ %storemerge1, %21 ]
  %storemerge.lcssa = phi i64 [ %storemerge, %21 ]
  store i64 %storemerge.lcssa, ptr %11, align 8
  store i64 %storemerge1.lcssa, ptr %7, align 8
  %28 = load double, ptr %9, align 8
  %29 = load ptr, ptr %6, align 8
  %30 = load i64, ptr %7, align 8
  %31 = getelementptr inbounds [8 x i8], ptr %29, i64 %30
  store double %28, ptr %31, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #5 comdat align 2 {
  %4 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 %4) #5 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store i8 %4, ptr %6, align 1
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  store ptr %3, ptr %10, align 8
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %2)
  br i1 %11, label %12, label %31

12:                                               ; preds = %5
  %13 = load ptr, ptr %9, align 8
  %14 = load ptr, ptr %10, align 8
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %13, ptr noundef %14)
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load ptr, ptr %7, align 8
  %18 = load ptr, ptr %9, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %17, ptr noundef %18)
  br label %30

19:                                               ; preds = %12
  %20 = load ptr, ptr %8, align 8
  %21 = load ptr, ptr %10, align 8
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %20, ptr noundef %21)
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load ptr, ptr %7, align 8
  %25 = load ptr, ptr %10, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %24, ptr noundef %25)
  br label %29

26:                                               ; preds = %19
  %27 = load ptr, ptr %7, align 8
  %28 = load ptr, ptr %8, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %27, ptr noundef %28)
  br label %29

29:                                               ; preds = %26, %23
  br label %30

30:                                               ; preds = %29, %16
  br label %50

31:                                               ; preds = %5
  %32 = load ptr, ptr %8, align 8
  %33 = load ptr, ptr %10, align 8
  %34 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %32, ptr noundef %33)
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load ptr, ptr %7, align 8
  %37 = load ptr, ptr %8, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %36, ptr noundef %37)
  br label %49

38:                                               ; preds = %31
  %39 = load ptr, ptr %9, align 8
  %40 = load ptr, ptr %10, align 8
  %41 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %39, ptr noundef %40)
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load ptr, ptr %7, align 8
  %44 = load ptr, ptr %10, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %43, ptr noundef %44)
  br label %48

45:                                               ; preds = %38
  %46 = load ptr, ptr %7, align 8
  %47 = load ptr, ptr %9, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %46, ptr noundef %47)
  br label %48

48:                                               ; preds = %45, %42
  br label %49

49:                                               ; preds = %48, %35
  br label %50

50:                                               ; preds = %49, %30
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #5 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store i8 %3, ptr %5, align 1
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  br label %9

9:                                                ; preds = %28, %4
  %10 = load ptr, ptr %8, align 8
  %.promoted = load ptr, ptr %6, align 8
  br label %11

11:                                               ; preds = %14, %9
  %12 = phi ptr [ %15, %14 ], [ %.promoted, %9 ]
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %12, ptr noundef %10)
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 8
  br label %11, !llvm.loop !71

16:                                               ; preds = %11
  %.lcssa1 = phi ptr [ %12, %11 ]
  store ptr %.lcssa1, ptr %6, align 8
  %17 = load ptr, ptr %7, align 8
  br label %18

18:                                               ; preds = %21, %16
  %.pn = phi ptr [ %17, %16 ], [ %22, %21 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  store ptr %storemerge, ptr %7, align 8
  %19 = load ptr, ptr %8, align 8
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %19, ptr noundef nonnull %storemerge)
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load ptr, ptr %7, align 8
  br label %18, !llvm.loop !72

23:                                               ; preds = %18
  %24 = load ptr, ptr %6, align 8
  %25 = load ptr, ptr %7, align 8
  %26 = icmp ult ptr %24, %25
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  %.lcssa = phi ptr [ %24, %23 ]
  ret ptr %.lcssa

28:                                               ; preds = %23
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %24, ptr noundef nonnull %25)
  %29 = load ptr, ptr %6, align 8
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr %30, ptr %6, align 8
  br label %9, !llvm.loop !73
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %8 = icmp eq ptr %0, %1
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %31

10:                                               ; preds = %3
  br label %11

11:                                               ; preds = %29, %10
  %.pn = phi ptr [ %0, %10 ], [ %30, %29 ]
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  store ptr %storemerge, ptr %7, align 8
  %12 = load ptr, ptr %6, align 8
  %.not = icmp eq ptr %storemerge, %12
  br i1 %.not, label %.loopexit, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %5, align 8
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull %storemerge, ptr noundef %14)
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load ptr, ptr %7, align 8
  %18 = load double, ptr %17, align 8
  %19 = load ptr, ptr %5, align 8
  %20 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %21 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %19)
  %22 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %17)
  %23 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %21, ptr noundef %22, ptr noundef nonnull %20)
  store double %18, ptr %19, align 8
  br label %28

24:                                               ; preds = %13
  %25 = load ptr, ptr %7, align 8
  %26 = load i8, ptr %4, align 1
  %27 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %26)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %25, i8 %27)
  br label %28

28:                                               ; preds = %24, %16
  br label %29

29:                                               ; preds = %28
  %30 = load ptr, ptr %7, align 8
  br label %11, !llvm.loop !74

.loopexit:                                        ; preds = %11
  br label %31

31:                                               ; preds = %.loopexit, %9
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i8 %2, ptr %4, align 1
  store ptr %1, ptr %5, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = load i8, ptr %4, align 1
  br label %9

9:                                                ; preds = %12, %3
  %storemerge = phi ptr [ %0, %3 ], [ %13, %12 ]
  %.not = icmp eq ptr %storemerge, %7
  br i1 %.not, label %14, label %10

10:                                               ; preds = %9
  %11 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %8)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %storemerge, i8 %11)
  br label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  br label %9, !llvm.loop !75

14:                                               ; preds = %9
  %storemerge.lcssa = phi ptr [ %storemerge, %9 ]
  store ptr %storemerge.lcssa, ptr %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %0, i8 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", align 1
  %4 = alloca ptr, align 8
  %5 = alloca double, align 8
  %6 = alloca ptr, align 8
  store i8 %1, ptr %3, align 1
  store ptr %0, ptr %4, align 8
  %7 = load double, ptr %0, align 8
  store double %7, ptr %5, align 8
  br label %8

8:                                                ; preds = %10, %2
  %.pn = phi ptr [ %0, %2 ], [ %11, %10 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  store ptr %storemerge, ptr %6, align 8
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %storemerge)
  br i1 %9, label %10, label %14

10:                                               ; preds = %8
  %11 = load ptr, ptr %6, align 8
  %12 = load double, ptr %11, align 8
  %13 = load ptr, ptr %4, align 8
  store double %12, ptr %13, align 8
  store ptr %11, ptr %4, align 8
  br label %8, !llvm.loop !76

14:                                               ; preds = %8
  %15 = load double, ptr %5, align 8
  %16 = load ptr, ptr %4, align 8
  store double %15, ptr %16, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %0) #0 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", align 1
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  store i8 %0, ptr %3, align 1
  call void @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %4 = load i8, ptr %2, align 1
  ret i8 %4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) #5 comdat align 2 {
  %4 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEC2ES2_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 %1) unnamed_addr #5 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #5 comdat align 2 {
  %4 = load double, ptr %1, align 8
  %5 = load double, ptr %2, align 8
  %6 = fcmp olt double %4, %5
  ret i1 %6
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %17, label %7

7:                                                ; preds = %3
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %11)
  %13 = shl nsw i64 %12, 1
  %14 = load i8, ptr %4, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %13, i8 %14)
  %15 = load ptr, ptr %5, align 8
  %16 = load ptr, ptr %6, align 8
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %15, ptr noundef %16, i8 %14)
  br label %17

17:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i8 @_ZN9__gnu_cxx5__ops16__iter_comp_iterI24inline_less_than_functorEENS0_15_Iter_comp_iterIT_EES4_(i8 %0) #0 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  call void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEC2ES2_(ptr noundef nonnull align 1 dereferenceable(1) %2, i8 undef)
  %3 = load i8, ptr %2, align 1
  ret i8 %3
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  store i8 %3, ptr %5, align 1
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = ptrtoint ptr %9 to i64
  %11 = load ptr, ptr %6, align 8
  %12 = load i8, ptr %5, align 1
  %.promoted = load ptr, ptr %7, align 8
  %.promoted5 = load i64, ptr %8, align 8
  br label %13

13:                                               ; preds = %23, %4
  %14 = phi i64 [ %24, %23 ], [ %.promoted5, %4 ]
  %15 = phi ptr [ %25, %23 ], [ %.promoted, %4 ]
  %16 = ptrtoint ptr %15 to i64
  %17 = sub i64 %16, %10
  %18 = icmp sgt i64 %17, 128
  br i1 %18, label %19, label %.loopexit

19:                                               ; preds = %13
  %20 = icmp eq i64 %14, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  %.lcssa7 = phi i64 [ %14, %19 ]
  %.lcssa4 = phi ptr [ %15, %19 ]
  %.lcssa3 = phi ptr [ %15, %19 ]
  %.lcssa1 = phi ptr [ %9, %19 ]
  store ptr %.lcssa4, ptr %7, align 8
  store i64 %.lcssa7, ptr %8, align 8
  %22 = load i8, ptr %5, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %.lcssa1, ptr noundef %.lcssa3, ptr noundef %.lcssa3, i8 %22)
  br label %26

23:                                               ; preds = %19
  %24 = add nsw i64 %14, -1
  %25 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_(ptr noundef %11, ptr noundef %15, i8 %12)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %25, ptr noundef %15, i64 noundef %24, i8 %12)
  br label %13, !llvm.loop !77

.loopexit:                                        ; preds = %13
  %.lcssa6 = phi i64 [ %14, %13 ]
  %.lcssa = phi ptr [ %15, %13 ]
  store ptr %.lcssa, ptr %7, align 8
  store i64 %.lcssa6, ptr %8, align 8
  br label %26

26:                                               ; preds = %.loopexit, %21
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = icmp sgt i64 %9, 128
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %13 = load i8, ptr %4, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef nonnull %12, i8 %13)
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 128
  %16 = load ptr, ptr %6, align 8
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef nonnull %15, ptr noundef %16, i8 %13)
  br label %19

17:                                               ; preds = %3
  %18 = load i8, ptr %4, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %18)
  br label %19

19:                                               ; preds = %17, %11
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  store i8 %3, ptr %5, align 1
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3)
  call void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = sdiv i64 %10, 2
  %12 = getelementptr inbounds [8 x i8], ptr %0, i64 %11
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %15 = getelementptr inbounds i8, ptr %1, i64 -8
  %16 = load i8, ptr %4, align 1
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_S6_T0_(ptr noundef %13, ptr noundef nonnull %14, ptr noundef %12, ptr noundef nonnull %15, i8 %16)
  %17 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_S6_T0_(ptr noundef nonnull %14, ptr noundef %1, ptr noundef %13, i8 %16)
  ret ptr %17
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store i8 %3, ptr %5, align 1
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %10 = load ptr, ptr %8, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %7, align 8
  br label %14

14:                                               ; preds = %20, %4
  %storemerge = phi ptr [ %1, %4 ], [ %21, %20 ]
  %15 = icmp ult ptr %storemerge, %10
  br i1 %15, label %16, label %22

16:                                               ; preds = %14
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %storemerge, ptr noundef %11)
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %12, ptr noundef %13, ptr noundef %storemerge, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %19

19:                                               ; preds = %18, %16
  br label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  br label %14, !llvm.loop !78

22:                                               ; preds = %14
  %storemerge.lcssa = phi ptr [ %storemerge, %14 ]
  store ptr %storemerge.lcssa, ptr %9, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = ptrtoint ptr %7 to i64
  %9 = load ptr, ptr %4, align 8
  %10 = load ptr, ptr %6, align 8, !nonnull !53
  %.promoted = load ptr, ptr %5, align 8
  br label %11

11:                                               ; preds = %16, %3
  %12 = phi ptr [ %17, %16 ], [ %.promoted, %3 ]
  %13 = ptrtoint ptr %12 to i64
  %14 = sub i64 %13, %8
  %15 = icmp sgt i64 %14, 8
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, ptr %12, i64 -8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %9, ptr noundef nonnull %17, ptr noundef nonnull %17, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %11, !llvm.loop !79

18:                                               ; preds = %11
  %.lcssa = phi ptr [ %12, %11 ]
  store ptr %.lcssa, ptr %5, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %2, ptr %5, align 8
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = icmp slt i64 %11, 2
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %28

14:                                               ; preds = %3
  store i64 %11, ptr %6, align 8
  %15 = add nsw i64 %11, -2
  %16 = sdiv i64 %15, 2
  %17 = load ptr, ptr %4, align 8
  %18 = load i64, ptr %6, align 8
  %19 = load ptr, ptr %5, align 8, !nonnull !53
  br label %20

20:                                               ; preds = %26, %14
  %storemerge = phi i64 [ %16, %14 ], [ %27, %26 ]
  %21 = getelementptr inbounds [8 x i8], ptr %17, i64 %storemerge
  %22 = load double, ptr %21, align 8
  %23 = load i8, ptr %19, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %17, i64 noundef %storemerge, i64 noundef %18, double noundef %22, i8 %23)
  %24 = icmp eq i64 %storemerge, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  %storemerge.lcssa = phi i64 [ %storemerge, %20 ]
  store i64 %storemerge.lcssa, ptr %7, align 8
  br label %28

26:                                               ; preds = %20
  %27 = add nsw i64 %storemerge, -1
  br label %20, !llvm.loop !80

28:                                               ; preds = %25, %13
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) #5 comdat align 2 {
  %4 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %4
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #0 comdat {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca double, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %3, ptr %7, align 8
  %9 = load double, ptr %2, align 8
  store double %9, ptr %8, align 8
  %10 = load double, ptr %0, align 8
  store double %10, ptr %2, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = ptrtoint ptr %12 to i64
  %14 = ptrtoint ptr %11 to i64
  %15 = sub i64 %13, %14
  %16 = ashr exact i64 %15, 3
  %17 = load double, ptr %8, align 8
  %18 = load ptr, ptr %7, align 8, !nonnull !53
  %19 = load i8, ptr %18, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %11, i64 noundef 0, i64 noundef %16, double noundef %17, i8 %19)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, i8 %4) #0 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca double, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.4", align 1
  store i8 %4, ptr %6, align 1
  store ptr %0, ptr %7, align 8
  store i64 %1, ptr %8, align 8
  store i64 %2, ptr %9, align 8
  store double %3, ptr %10, align 8
  store i64 %1, ptr %11, align 8
  store i64 %1, ptr %12, align 8
  %14 = load i64, ptr %9, align 8
  %15 = add nsw i64 %14, -1
  %16 = sdiv i64 %15, 2
  %17 = load ptr, ptr %7, align 8
  %18 = load ptr, ptr %7, align 8
  %.promoted = load i64, ptr %12, align 8
  %.promoted3 = load i64, ptr %8, align 8
  br label %19

19:                                               ; preds = %32, %5
  %20 = phi i64 [ %33, %32 ], [ %.promoted3, %5 ]
  %21 = phi i64 [ %33, %32 ], [ %.promoted, %5 ]
  %22 = icmp slt i64 %21, %16
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = shl i64 %21, 1
  %25 = add i64 %24, 2
  %26 = getelementptr inbounds [8 x i8], ptr %17, i64 %25
  %27 = getelementptr [8 x i8], ptr %17, i64 %24
  %28 = getelementptr i8, ptr %27, i64 8
  %29 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %26, ptr noundef %28)
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = add nsw i64 %25, -1
  br label %32

32:                                               ; preds = %30, %23
  %33 = phi i64 [ %31, %30 ], [ %25, %23 ]
  %34 = getelementptr inbounds [8 x i8], ptr %18, i64 %33
  %35 = load double, ptr %34, align 8
  %36 = getelementptr inbounds [8 x i8], ptr %18, i64 %20
  store double %35, ptr %36, align 8
  br label %19, !llvm.loop !81

37:                                               ; preds = %19
  %.lcssa4 = phi i64 [ %20, %19 ]
  %.lcssa2 = phi i64 [ %21, %19 ]
  %.lcssa1 = phi i64 [ %21, %19 ]
  %.lcssa = phi i64 [ %14, %19 ]
  store i64 %.lcssa2, ptr %12, align 8
  store i64 %.lcssa4, ptr %8, align 8
  %38 = and i64 %.lcssa, 1
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %37
  %41 = add nsw i64 %.lcssa, -2
  %42 = ashr exact i64 %41, 1
  %43 = icmp eq i64 %.lcssa1, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = shl i64 %.lcssa1, 1
  %46 = add i64 %45, 2
  store i64 %46, ptr %12, align 8
  %47 = load ptr, ptr %7, align 8
  %48 = getelementptr [8 x i8], ptr %47, i64 %45
  %49 = getelementptr i8, ptr %48, i64 8
  %50 = load double, ptr %49, align 8
  %51 = load i64, ptr %8, align 8
  %52 = getelementptr inbounds [8 x i8], ptr %47, i64 %51
  store double %50, ptr %52, align 8
  %53 = load i64, ptr %12, align 8
  %54 = add nsw i64 %53, -1
  store i64 %54, ptr %8, align 8
  br label %55

55:                                               ; preds = %44, %40, %37
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %56 = load ptr, ptr %7, align 8
  %57 = load i64, ptr %8, align 8
  %58 = load i64, ptr %11, align 8
  %59 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %56, i64 noundef %57, i64 noundef %58, double noundef %59, ptr noundef nonnull align 1 dereferenceable(1) %13)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #0 comdat {
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  store double %3, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  %12 = load i64, ptr %8, align 8
  %13 = load ptr, ptr %10, align 8, !nonnull !53
  %14 = load ptr, ptr %6, align 8
  %15 = load ptr, ptr %6, align 8
  %.promoted = load i64, ptr %7, align 8
  br label %16

16:                                               ; preds = %23, %5
  %storemerge1 = phi i64 [ %.promoted, %5 ], [ %storemerge, %23 ]
  %storemerge.in.in = phi i64 [ %1, %5 ], [ %storemerge, %23 ]
  %storemerge.in = add nsw i64 %storemerge.in.in, -1
  %storemerge = sdiv i64 %storemerge.in, 2
  %17 = icmp sgt i64 %storemerge1, %12
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = getelementptr inbounds [8 x i8], ptr %14, i64 %storemerge
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef %19, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %21

21:                                               ; preds = %18, %16
  %22 = phi i1 [ false, %16 ], [ %20, %18 ]
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = getelementptr inbounds [8 x i8], ptr %15, i64 %storemerge
  %25 = load double, ptr %24, align 8
  %26 = getelementptr inbounds [8 x i8], ptr %15, i64 %storemerge1
  store double %25, ptr %26, align 8
  br label %16, !llvm.loop !82

27:                                               ; preds = %21
  %storemerge1.lcssa = phi i64 [ %storemerge1, %21 ]
  %storemerge.lcssa = phi i64 [ %storemerge, %21 ]
  store i64 %storemerge.lcssa, ptr %11, align 8
  store i64 %storemerge1.lcssa, ptr %7, align 8
  %28 = load double, ptr %9, align 8
  %29 = load ptr, ptr %6, align 8
  %30 = load i64, ptr %7, align 8
  %31 = getelementptr inbounds [8 x i8], ptr %29, i64 %30
  store double %28, ptr %31, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #5 comdat align 2 {
  %4 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 %4) #5 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store i8 %4, ptr %6, align 1
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  store ptr %3, ptr %10, align 8
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %2)
  br i1 %11, label %12, label %31

12:                                               ; preds = %5
  %13 = load ptr, ptr %9, align 8
  %14 = load ptr, ptr %10, align 8
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %13, ptr noundef %14)
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load ptr, ptr %7, align 8
  %18 = load ptr, ptr %9, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %17, ptr noundef %18)
  br label %30

19:                                               ; preds = %12
  %20 = load ptr, ptr %8, align 8
  %21 = load ptr, ptr %10, align 8
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %20, ptr noundef %21)
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load ptr, ptr %7, align 8
  %25 = load ptr, ptr %10, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %24, ptr noundef %25)
  br label %29

26:                                               ; preds = %19
  %27 = load ptr, ptr %7, align 8
  %28 = load ptr, ptr %8, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %27, ptr noundef %28)
  br label %29

29:                                               ; preds = %26, %23
  br label %30

30:                                               ; preds = %29, %16
  br label %50

31:                                               ; preds = %5
  %32 = load ptr, ptr %8, align 8
  %33 = load ptr, ptr %10, align 8
  %34 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %32, ptr noundef %33)
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load ptr, ptr %7, align 8
  %37 = load ptr, ptr %8, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %36, ptr noundef %37)
  br label %49

38:                                               ; preds = %31
  %39 = load ptr, ptr %9, align 8
  %40 = load ptr, ptr %10, align 8
  %41 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %39, ptr noundef %40)
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load ptr, ptr %7, align 8
  %44 = load ptr, ptr %10, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %43, ptr noundef %44)
  br label %48

45:                                               ; preds = %38
  %46 = load ptr, ptr %7, align 8
  %47 = load ptr, ptr %9, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %46, ptr noundef %47)
  br label %48

48:                                               ; preds = %45, %42
  br label %49

49:                                               ; preds = %48, %35
  br label %50

50:                                               ; preds = %49, %30
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #5 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store i8 %3, ptr %5, align 1
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  br label %9

9:                                                ; preds = %28, %4
  %10 = load ptr, ptr %8, align 8
  %.promoted = load ptr, ptr %6, align 8
  br label %11

11:                                               ; preds = %14, %9
  %12 = phi ptr [ %15, %14 ], [ %.promoted, %9 ]
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %12, ptr noundef %10)
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 8
  br label %11, !llvm.loop !83

16:                                               ; preds = %11
  %.lcssa1 = phi ptr [ %12, %11 ]
  store ptr %.lcssa1, ptr %6, align 8
  %17 = load ptr, ptr %7, align 8
  br label %18

18:                                               ; preds = %21, %16
  %.pn = phi ptr [ %17, %16 ], [ %22, %21 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  store ptr %storemerge, ptr %7, align 8
  %19 = load ptr, ptr %8, align 8
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %19, ptr noundef nonnull %storemerge)
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load ptr, ptr %7, align 8
  br label %18, !llvm.loop !84

23:                                               ; preds = %18
  %24 = load ptr, ptr %6, align 8
  %25 = load ptr, ptr %7, align 8
  %26 = icmp ult ptr %24, %25
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  %.lcssa = phi ptr [ %24, %23 ]
  ret ptr %.lcssa

28:                                               ; preds = %23
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %24, ptr noundef nonnull %25)
  %29 = load ptr, ptr %6, align 8
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr %30, ptr %6, align 8
  br label %9, !llvm.loop !85
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %8 = icmp eq ptr %0, %1
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %31

10:                                               ; preds = %3
  br label %11

11:                                               ; preds = %29, %10
  %.pn = phi ptr [ %0, %10 ], [ %30, %29 ]
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  store ptr %storemerge, ptr %7, align 8
  %12 = load ptr, ptr %6, align 8
  %.not = icmp eq ptr %storemerge, %12
  br i1 %.not, label %.loopexit, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %5, align 8
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull %storemerge, ptr noundef %14)
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load ptr, ptr %7, align 8
  %18 = load double, ptr %17, align 8
  %19 = load ptr, ptr %5, align 8
  %20 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %21 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %19)
  %22 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %17)
  %23 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %21, ptr noundef %22, ptr noundef nonnull %20)
  store double %18, ptr %19, align 8
  br label %28

24:                                               ; preds = %13
  %25 = load ptr, ptr %7, align 8
  %26 = load i8, ptr %4, align 1
  %27 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %26)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %25, i8 %27)
  br label %28

28:                                               ; preds = %24, %16
  br label %29

29:                                               ; preds = %28
  %30 = load ptr, ptr %7, align 8
  br label %11, !llvm.loop !86

.loopexit:                                        ; preds = %11
  br label %31

31:                                               ; preds = %.loopexit, %9
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i8 %2, ptr %4, align 1
  store ptr %1, ptr %5, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = load i8, ptr %4, align 1
  br label %9

9:                                                ; preds = %12, %3
  %storemerge = phi ptr [ %0, %3 ], [ %13, %12 ]
  %.not = icmp eq ptr %storemerge, %7
  br i1 %.not, label %14, label %10

10:                                               ; preds = %9
  %11 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %8)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %storemerge, i8 %11)
  br label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  br label %9, !llvm.loop !87

14:                                               ; preds = %9
  %storemerge.lcssa = phi ptr [ %storemerge, %9 ]
  store ptr %storemerge.lcssa, ptr %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %0, i8 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", align 1
  %4 = alloca ptr, align 8
  %5 = alloca double, align 8
  %6 = alloca ptr, align 8
  store i8 %1, ptr %3, align 1
  store ptr %0, ptr %4, align 8
  %7 = load double, ptr %0, align 8
  store double %7, ptr %5, align 8
  br label %8

8:                                                ; preds = %10, %2
  %.pn = phi ptr [ %0, %2 ], [ %11, %10 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  store ptr %storemerge, ptr %6, align 8
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %storemerge)
  br i1 %9, label %10, label %14

10:                                               ; preds = %8
  %11 = load ptr, ptr %6, align 8
  %12 = load double, ptr %11, align 8
  %13 = load ptr, ptr %4, align 8
  store double %12, ptr %13, align 8
  store ptr %11, ptr %4, align 8
  br label %8, !llvm.loop !88

14:                                               ; preds = %8
  %15 = load double, ptr %5, align 8
  %16 = load ptr, ptr %4, align 8
  store double %15, ptr %16, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %0) #0 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", align 1
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  store i8 %0, ptr %3, align 1
  call void @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %4 = load i8, ptr %2, align 1
  ret i8 %4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) #5 comdat align 2 {
  %4 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEC2ES2_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 %1) unnamed_addr #5 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #5 comdat align 2 {
  %4 = load double, ptr %1, align 8
  %5 = load double, ptr %2, align 8
  %6 = fcmp olt double %4, %5
  ret i1 %6
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %17, label %7

7:                                                ; preds = %3
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %11)
  %13 = shl nsw i64 %12, 1
  %14 = load i8, ptr %4, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %13, i8 %14)
  %15 = load ptr, ptr %5, align 8
  %16 = load ptr, ptr %6, align 8
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %15, ptr noundef %16, i8 %14)
  br label %17

17:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i8 @_ZN9__gnu_cxx5__ops16__iter_comp_iterISt4lessIdEEENS0_15_Iter_comp_iterIT_EES5_(i8 %0) #0 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  call void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEC2ES3_(ptr noundef nonnull align 1 dereferenceable(1) %2, i8 undef)
  %3 = load i8, ptr %2, align 1
  ret i8 %3
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  store i8 %3, ptr %5, align 1
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = ptrtoint ptr %9 to i64
  %11 = load ptr, ptr %6, align 8
  %12 = load i8, ptr %5, align 1
  %.promoted = load ptr, ptr %7, align 8
  %.promoted5 = load i64, ptr %8, align 8
  br label %13

13:                                               ; preds = %23, %4
  %14 = phi i64 [ %24, %23 ], [ %.promoted5, %4 ]
  %15 = phi ptr [ %25, %23 ], [ %.promoted, %4 ]
  %16 = ptrtoint ptr %15 to i64
  %17 = sub i64 %16, %10
  %18 = icmp sgt i64 %17, 128
  br i1 %18, label %19, label %.loopexit

19:                                               ; preds = %13
  %20 = icmp eq i64 %14, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  %.lcssa7 = phi i64 [ %14, %19 ]
  %.lcssa4 = phi ptr [ %15, %19 ]
  %.lcssa3 = phi ptr [ %15, %19 ]
  %.lcssa1 = phi ptr [ %9, %19 ]
  store ptr %.lcssa4, ptr %7, align 8
  store i64 %.lcssa7, ptr %8, align 8
  %22 = load i8, ptr %5, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %.lcssa1, ptr noundef %.lcssa3, ptr noundef %.lcssa3, i8 %22)
  br label %26

23:                                               ; preds = %19
  %24 = add nsw i64 %14, -1
  %25 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_(ptr noundef %11, ptr noundef %15, i8 %12)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %25, ptr noundef %15, i64 noundef %24, i8 %12)
  br label %13, !llvm.loop !89

.loopexit:                                        ; preds = %13
  %.lcssa6 = phi i64 [ %14, %13 ]
  %.lcssa = phi ptr [ %15, %13 ]
  store ptr %.lcssa, ptr %7, align 8
  store i64 %.lcssa6, ptr %8, align 8
  br label %26

26:                                               ; preds = %.loopexit, %21
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = icmp sgt i64 %9, 128
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %13 = load i8, ptr %4, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef nonnull %12, i8 %13)
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 128
  %16 = load ptr, ptr %6, align 8
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef nonnull %15, ptr noundef %16, i8 %13)
  br label %19

17:                                               ; preds = %3
  %18 = load i8, ptr %4, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %18)
  br label %19

19:                                               ; preds = %17, %11
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store i8 %3, ptr %5, align 1
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3)
  call void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = sdiv i64 %10, 2
  %12 = getelementptr inbounds [8 x i8], ptr %0, i64 %11
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %15 = getelementptr inbounds i8, ptr %1, i64 -8
  %16 = load i8, ptr %4, align 1
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_(ptr noundef %13, ptr noundef nonnull %14, ptr noundef %12, ptr noundef nonnull %15, i8 %16)
  %17 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_S7_T0_(ptr noundef nonnull %14, ptr noundef %1, ptr noundef %13, i8 %16)
  ret ptr %17
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store i8 %3, ptr %5, align 1
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %10 = load ptr, ptr %8, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %7, align 8
  br label %14

14:                                               ; preds = %20, %4
  %storemerge = phi ptr [ %1, %4 ], [ %21, %20 ]
  %15 = icmp ult ptr %storemerge, %10
  br i1 %15, label %16, label %22

16:                                               ; preds = %14
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %storemerge, ptr noundef %11)
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %12, ptr noundef %13, ptr noundef %storemerge, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %19

19:                                               ; preds = %18, %16
  br label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  br label %14, !llvm.loop !90

22:                                               ; preds = %14
  %storemerge.lcssa = phi ptr [ %storemerge, %14 ]
  store ptr %storemerge.lcssa, ptr %9, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = ptrtoint ptr %7 to i64
  %9 = load ptr, ptr %4, align 8
  %10 = load ptr, ptr %6, align 8, !nonnull !53
  %.promoted = load ptr, ptr %5, align 8
  br label %11

11:                                               ; preds = %16, %3
  %12 = phi ptr [ %17, %16 ], [ %.promoted, %3 ]
  %13 = ptrtoint ptr %12 to i64
  %14 = sub i64 %13, %8
  %15 = icmp sgt i64 %14, 8
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, ptr %12, i64 -8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %9, ptr noundef nonnull %17, ptr noundef nonnull %17, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %11, !llvm.loop !91

18:                                               ; preds = %11
  %.lcssa = phi ptr [ %12, %11 ]
  store ptr %.lcssa, ptr %5, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %2, ptr %5, align 8
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = icmp slt i64 %11, 2
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %28

14:                                               ; preds = %3
  store i64 %11, ptr %6, align 8
  %15 = add nsw i64 %11, -2
  %16 = sdiv i64 %15, 2
  %17 = load ptr, ptr %4, align 8
  %18 = load i64, ptr %6, align 8
  %19 = load ptr, ptr %5, align 8, !nonnull !53
  br label %20

20:                                               ; preds = %26, %14
  %storemerge = phi i64 [ %16, %14 ], [ %27, %26 ]
  %21 = getelementptr inbounds [8 x i8], ptr %17, i64 %storemerge
  %22 = load double, ptr %21, align 8
  %23 = load i8, ptr %19, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %17, i64 noundef %storemerge, i64 noundef %18, double noundef %22, i8 %23)
  %24 = icmp eq i64 %storemerge, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  %storemerge.lcssa = phi i64 [ %storemerge, %20 ]
  store i64 %storemerge.lcssa, ptr %7, align 8
  br label %28

26:                                               ; preds = %20
  %27 = add nsw i64 %storemerge, -1
  br label %20, !llvm.loop !92

28:                                               ; preds = %25, %13
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) #5 comdat align 2 {
  %4 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %4
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #0 comdat {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca double, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %3, ptr %7, align 8
  %9 = load double, ptr %2, align 8
  store double %9, ptr %8, align 8
  %10 = load double, ptr %0, align 8
  store double %10, ptr %2, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = ptrtoint ptr %12 to i64
  %14 = ptrtoint ptr %11 to i64
  %15 = sub i64 %13, %14
  %16 = ashr exact i64 %15, 3
  %17 = load double, ptr %8, align 8
  %18 = load ptr, ptr %7, align 8, !nonnull !53
  %19 = load i8, ptr %18, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %11, i64 noundef 0, i64 noundef %16, double noundef %17, i8 %19)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, i8 %4) #0 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca double, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.7", align 1
  store i8 %4, ptr %6, align 1
  store ptr %0, ptr %7, align 8
  store i64 %1, ptr %8, align 8
  store i64 %2, ptr %9, align 8
  store double %3, ptr %10, align 8
  store i64 %1, ptr %11, align 8
  store i64 %1, ptr %12, align 8
  %14 = load i64, ptr %9, align 8
  %15 = add nsw i64 %14, -1
  %16 = sdiv i64 %15, 2
  %17 = load ptr, ptr %7, align 8
  %18 = load ptr, ptr %7, align 8
  %.promoted = load i64, ptr %12, align 8
  %.promoted3 = load i64, ptr %8, align 8
  br label %19

19:                                               ; preds = %32, %5
  %20 = phi i64 [ %33, %32 ], [ %.promoted3, %5 ]
  %21 = phi i64 [ %33, %32 ], [ %.promoted, %5 ]
  %22 = icmp slt i64 %21, %16
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = shl i64 %21, 1
  %25 = add i64 %24, 2
  %26 = getelementptr inbounds [8 x i8], ptr %17, i64 %25
  %27 = getelementptr [8 x i8], ptr %17, i64 %24
  %28 = getelementptr i8, ptr %27, i64 8
  %29 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %26, ptr noundef %28)
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = add nsw i64 %25, -1
  br label %32

32:                                               ; preds = %30, %23
  %33 = phi i64 [ %31, %30 ], [ %25, %23 ]
  %34 = getelementptr inbounds [8 x i8], ptr %18, i64 %33
  %35 = load double, ptr %34, align 8
  %36 = getelementptr inbounds [8 x i8], ptr %18, i64 %20
  store double %35, ptr %36, align 8
  br label %19, !llvm.loop !93

37:                                               ; preds = %19
  %.lcssa4 = phi i64 [ %20, %19 ]
  %.lcssa2 = phi i64 [ %21, %19 ]
  %.lcssa1 = phi i64 [ %21, %19 ]
  %.lcssa = phi i64 [ %14, %19 ]
  store i64 %.lcssa2, ptr %12, align 8
  store i64 %.lcssa4, ptr %8, align 8
  %38 = and i64 %.lcssa, 1
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %37
  %41 = add nsw i64 %.lcssa, -2
  %42 = ashr exact i64 %41, 1
  %43 = icmp eq i64 %.lcssa1, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = shl i64 %.lcssa1, 1
  %46 = add i64 %45, 2
  store i64 %46, ptr %12, align 8
  %47 = load ptr, ptr %7, align 8
  %48 = getelementptr [8 x i8], ptr %47, i64 %45
  %49 = getelementptr i8, ptr %48, i64 8
  %50 = load double, ptr %49, align 8
  %51 = load i64, ptr %8, align 8
  %52 = getelementptr inbounds [8 x i8], ptr %47, i64 %51
  store double %50, ptr %52, align 8
  %53 = load i64, ptr %12, align 8
  %54 = add nsw i64 %53, -1
  store i64 %54, ptr %8, align 8
  br label %55

55:                                               ; preds = %44, %40, %37
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %56 = load ptr, ptr %7, align 8
  %57 = load i64, ptr %8, align 8
  %58 = load i64, ptr %11, align 8
  %59 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEEEvT_T0_S8_T1_RT2_(ptr noundef %56, i64 noundef %57, i64 noundef %58, double noundef %59, ptr noundef nonnull align 1 dereferenceable(1) %13)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEEEvT_T0_S8_T1_RT2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #0 comdat {
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  store double %3, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  %12 = load i64, ptr %8, align 8
  %13 = load ptr, ptr %10, align 8, !nonnull !53
  %14 = load ptr, ptr %6, align 8
  %15 = load ptr, ptr %6, align 8
  %.promoted = load i64, ptr %7, align 8
  br label %16

16:                                               ; preds = %23, %5
  %storemerge1 = phi i64 [ %.promoted, %5 ], [ %storemerge, %23 ]
  %storemerge.in.in = phi i64 [ %1, %5 ], [ %storemerge, %23 ]
  %storemerge.in = add nsw i64 %storemerge.in.in, -1
  %storemerge = sdiv i64 %storemerge.in, 2
  %17 = icmp sgt i64 %storemerge1, %12
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = getelementptr inbounds [8 x i8], ptr %14, i64 %storemerge
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef %19, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %21

21:                                               ; preds = %18, %16
  %22 = phi i1 [ false, %16 ], [ %20, %18 ]
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = getelementptr inbounds [8 x i8], ptr %15, i64 %storemerge
  %25 = load double, ptr %24, align 8
  %26 = getelementptr inbounds [8 x i8], ptr %15, i64 %storemerge1
  store double %25, ptr %26, align 8
  br label %16, !llvm.loop !94

27:                                               ; preds = %21
  %storemerge1.lcssa = phi i64 [ %storemerge1, %21 ]
  %storemerge.lcssa = phi i64 [ %storemerge, %21 ]
  store i64 %storemerge.lcssa, ptr %11, align 8
  store i64 %storemerge1.lcssa, ptr %7, align 8
  %28 = load double, ptr %9, align 8
  %29 = load ptr, ptr %6, align 8
  %30 = load i64, ptr %7, align 8
  %31 = getelementptr inbounds [8 x i8], ptr %29, i64 %30
  store double %28, ptr %31, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #5 comdat align 2 {
  %4 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 %4) #5 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store i8 %4, ptr %6, align 1
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  store ptr %3, ptr %10, align 8
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %2)
  br i1 %11, label %12, label %31

12:                                               ; preds = %5
  %13 = load ptr, ptr %9, align 8
  %14 = load ptr, ptr %10, align 8
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %13, ptr noundef %14)
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load ptr, ptr %7, align 8
  %18 = load ptr, ptr %9, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %17, ptr noundef %18)
  br label %30

19:                                               ; preds = %12
  %20 = load ptr, ptr %8, align 8
  %21 = load ptr, ptr %10, align 8
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %20, ptr noundef %21)
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load ptr, ptr %7, align 8
  %25 = load ptr, ptr %10, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %24, ptr noundef %25)
  br label %29

26:                                               ; preds = %19
  %27 = load ptr, ptr %7, align 8
  %28 = load ptr, ptr %8, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %27, ptr noundef %28)
  br label %29

29:                                               ; preds = %26, %23
  br label %30

30:                                               ; preds = %29, %16
  br label %50

31:                                               ; preds = %5
  %32 = load ptr, ptr %8, align 8
  %33 = load ptr, ptr %10, align 8
  %34 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %32, ptr noundef %33)
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load ptr, ptr %7, align 8
  %37 = load ptr, ptr %8, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %36, ptr noundef %37)
  br label %49

38:                                               ; preds = %31
  %39 = load ptr, ptr %9, align 8
  %40 = load ptr, ptr %10, align 8
  %41 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %39, ptr noundef %40)
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load ptr, ptr %7, align 8
  %44 = load ptr, ptr %10, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %43, ptr noundef %44)
  br label %48

45:                                               ; preds = %38
  %46 = load ptr, ptr %7, align 8
  %47 = load ptr, ptr %9, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %46, ptr noundef %47)
  br label %48

48:                                               ; preds = %45, %42
  br label %49

49:                                               ; preds = %48, %35
  br label %50

50:                                               ; preds = %49, %30
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #5 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store i8 %3, ptr %5, align 1
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  br label %9

9:                                                ; preds = %28, %4
  %10 = load ptr, ptr %8, align 8
  %.promoted = load ptr, ptr %6, align 8
  br label %11

11:                                               ; preds = %14, %9
  %12 = phi ptr [ %15, %14 ], [ %.promoted, %9 ]
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %12, ptr noundef %10)
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 8
  br label %11, !llvm.loop !95

16:                                               ; preds = %11
  %.lcssa1 = phi ptr [ %12, %11 ]
  store ptr %.lcssa1, ptr %6, align 8
  %17 = load ptr, ptr %7, align 8
  br label %18

18:                                               ; preds = %21, %16
  %.pn = phi ptr [ %17, %16 ], [ %22, %21 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  store ptr %storemerge, ptr %7, align 8
  %19 = load ptr, ptr %8, align 8
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %19, ptr noundef nonnull %storemerge)
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load ptr, ptr %7, align 8
  br label %18, !llvm.loop !96

23:                                               ; preds = %18
  %24 = load ptr, ptr %6, align 8
  %25 = load ptr, ptr %7, align 8
  %26 = icmp ult ptr %24, %25
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  %.lcssa = phi ptr [ %24, %23 ]
  ret ptr %.lcssa

28:                                               ; preds = %23
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %24, ptr noundef nonnull %25)
  %29 = load ptr, ptr %6, align 8
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr %30, ptr %6, align 8
  br label %9, !llvm.loop !97
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %8 = icmp eq ptr %0, %1
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %31

10:                                               ; preds = %3
  br label %11

11:                                               ; preds = %29, %10
  %.pn = phi ptr [ %0, %10 ], [ %30, %29 ]
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  store ptr %storemerge, ptr %7, align 8
  %12 = load ptr, ptr %6, align 8
  %.not = icmp eq ptr %storemerge, %12
  br i1 %.not, label %.loopexit, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %5, align 8
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull %storemerge, ptr noundef %14)
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load ptr, ptr %7, align 8
  %18 = load double, ptr %17, align 8
  %19 = load ptr, ptr %5, align 8
  %20 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %21 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %19)
  %22 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %17)
  %23 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %21, ptr noundef %22, ptr noundef nonnull %20)
  store double %18, ptr %19, align 8
  br label %28

24:                                               ; preds = %13
  %25 = load ptr, ptr %7, align 8
  %26 = load i8, ptr %4, align 1
  %27 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %26)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %25, i8 %27)
  br label %28

28:                                               ; preds = %24, %16
  br label %29

29:                                               ; preds = %28
  %30 = load ptr, ptr %7, align 8
  br label %11, !llvm.loop !98

.loopexit:                                        ; preds = %11
  br label %31

31:                                               ; preds = %.loopexit, %9
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i8 %2, ptr %4, align 1
  store ptr %1, ptr %5, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = load i8, ptr %4, align 1
  br label %9

9:                                                ; preds = %12, %3
  %storemerge = phi ptr [ %0, %3 ], [ %13, %12 ]
  %.not = icmp eq ptr %storemerge, %7
  br i1 %.not, label %14, label %10

10:                                               ; preds = %9
  %11 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %8)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %storemerge, i8 %11)
  br label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  br label %9, !llvm.loop !99

14:                                               ; preds = %9
  %storemerge.lcssa = phi ptr [ %storemerge, %9 ]
  store ptr %storemerge.lcssa, ptr %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %0, i8 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", align 1
  %4 = alloca ptr, align 8
  %5 = alloca double, align 8
  %6 = alloca ptr, align 8
  store i8 %1, ptr %3, align 1
  store ptr %0, ptr %4, align 8
  %7 = load double, ptr %0, align 8
  store double %7, ptr %5, align 8
  br label %8

8:                                                ; preds = %10, %2
  %.pn = phi ptr [ %0, %2 ], [ %11, %10 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  store ptr %storemerge, ptr %6, align 8
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %storemerge)
  br i1 %9, label %10, label %14

10:                                               ; preds = %8
  %11 = load ptr, ptr %6, align 8
  %12 = load double, ptr %11, align 8
  %13 = load ptr, ptr %4, align 8
  store double %12, ptr %13, align 8
  store ptr %11, ptr %4, align 8
  br label %8, !llvm.loop !100

14:                                               ; preds = %8
  %15 = load double, ptr %5, align 8
  %16 = load ptr, ptr %4, align 8
  store double %15, ptr %16, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %0) #0 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", align 1
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store i8 %0, ptr %3, align 1
  call void @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %4 = load i8, ptr %2, align 1
  ret i8 %4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) #5 comdat align 2 {
  %4 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEC2ES3_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 %1) unnamed_addr #5 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %15, label %6

6:                                                ; preds = %3
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %10)
  %12 = shl nsw i64 %11, 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %12, i8 undef)
  %13 = load ptr, ptr %4, align 8
  %14 = load ptr, ptr %5, align 8
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %13, ptr noundef %14, i8 undef)
  br label %15

15:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local i8 @_ZN9__gnu_cxx5__ops16__iter_less_iterEv() #5 comdat {
  ret i8 undef
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i8 %3) #0 comdat {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = ptrtoint ptr %8 to i64
  %10 = load ptr, ptr %5, align 8
  %.promoted = load ptr, ptr %6, align 8
  %.promoted5 = load i64, ptr %7, align 8
  br label %11

11:                                               ; preds = %20, %4
  %12 = phi i64 [ %21, %20 ], [ %.promoted5, %4 ]
  %13 = phi ptr [ %22, %20 ], [ %.promoted, %4 ]
  %14 = ptrtoint ptr %13 to i64
  %15 = sub i64 %14, %9
  %16 = icmp sgt i64 %15, 128
  br i1 %16, label %17, label %.loopexit

17:                                               ; preds = %11
  %18 = icmp eq i64 %12, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  %.lcssa7 = phi i64 [ %12, %17 ]
  %.lcssa4 = phi ptr [ %13, %17 ]
  %.lcssa3 = phi ptr [ %13, %17 ]
  %.lcssa1 = phi ptr [ %8, %17 ]
  store ptr %.lcssa4, ptr %6, align 8
  store i64 %.lcssa7, ptr %7, align 8
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %.lcssa1, ptr noundef %.lcssa3, ptr noundef %.lcssa3, i8 undef)
  br label %23

20:                                               ; preds = %17
  %21 = add nsw i64 %12, -1
  %22 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(ptr noundef %10, ptr noundef %13, i8 undef)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %22, ptr noundef %13, i64 noundef %21, i8 undef)
  br label %11, !llvm.loop !101

.loopexit:                                        ; preds = %11
  %.lcssa6 = phi i64 [ %12, %11 ]
  %.lcssa = phi ptr [ %13, %11 ]
  store ptr %.lcssa, ptr %6, align 8
  store i64 %.lcssa6, ptr %7, align 8
  br label %23

23:                                               ; preds = %.loopexit, %19
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = icmp sgt i64 %8, 128
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef nonnull %11, i8 undef)
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 128
  %14 = load ptr, ptr %5, align 8
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %13, ptr noundef %14, i8 undef)
  br label %16

15:                                               ; preds = %3
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 undef)
  br label %16

16:                                               ; preds = %15, %10
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store i8 %3, ptr %5, align 1
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 undef)
  call void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = sdiv i64 %9, 2
  %11 = getelementptr inbounds [8 x i8], ptr %0, i64 %10
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %14 = getelementptr inbounds i8, ptr %1, i64 -8
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_(ptr noundef %12, ptr noundef nonnull %13, ptr noundef %11, ptr noundef nonnull %14, i8 undef)
  %15 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_(ptr noundef nonnull %13, ptr noundef %1, ptr noundef %12, i8 undef)
  ret ptr %15
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store i8 %3, ptr %5, align 1
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %10 = load ptr, ptr %8, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %7, align 8
  br label %14

14:                                               ; preds = %20, %4
  %storemerge = phi ptr [ %1, %4 ], [ %21, %20 ]
  %15 = icmp ult ptr %storemerge, %10
  br i1 %15, label %16, label %22

16:                                               ; preds = %14
  %17 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %storemerge, ptr noundef %11)
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %12, ptr noundef %13, ptr noundef %storemerge, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %19

19:                                               ; preds = %18, %16
  br label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  br label %14, !llvm.loop !102

22:                                               ; preds = %14
  %storemerge.lcssa = phi ptr [ %storemerge, %14 ]
  store ptr %storemerge.lcssa, ptr %9, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = ptrtoint ptr %7 to i64
  %9 = load ptr, ptr %4, align 8
  %10 = load ptr, ptr %6, align 8, !nonnull !53
  %.promoted = load ptr, ptr %5, align 8
  br label %11

11:                                               ; preds = %16, %3
  %12 = phi ptr [ %17, %16 ], [ %.promoted, %3 ]
  %13 = ptrtoint ptr %12 to i64
  %14 = sub i64 %13, %8
  %15 = icmp sgt i64 %14, 8
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, ptr %12, i64 -8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %9, ptr noundef nonnull %17, ptr noundef nonnull %17, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %11, !llvm.loop !103

18:                                               ; preds = %11
  %.lcssa = phi ptr [ %12, %11 ]
  store ptr %.lcssa, ptr %5, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp slt i64 %9, 2
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %24

12:                                               ; preds = %3
  store i64 %9, ptr %5, align 8
  %13 = add nsw i64 %9, -2
  %14 = sdiv i64 %13, 2
  %15 = load ptr, ptr %4, align 8
  %16 = load i64, ptr %5, align 8
  br label %17

17:                                               ; preds = %22, %12
  %storemerge = phi i64 [ %14, %12 ], [ %23, %22 ]
  %18 = getelementptr inbounds [8 x i8], ptr %15, i64 %storemerge
  %19 = load double, ptr %18, align 8
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %15, i64 noundef %storemerge, i64 noundef %16, double noundef %19, i8 undef)
  %20 = icmp eq i64 %storemerge, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %24

22:                                               ; preds = %17
  %23 = add nsw i64 %storemerge, -1
  br label %17, !llvm.loop !104

24:                                               ; preds = %21, %11
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) #5 comdat align 2 {
  %4 = load double, ptr %1, align 8
  %5 = load double, ptr %2, align 8
  %6 = fcmp olt double %4, %5
  ret i1 %6
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #0 comdat {
  %5 = alloca double, align 8
  %6 = load double, ptr %2, align 8
  store double %6, ptr %5, align 8
  %7 = load double, ptr %0, align 8
  store double %7, ptr %2, align 8
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = load double, ptr %5, align 8
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %11, double noundef %12, i8 undef)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, i8 %4) #0 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca double, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_val", align 1
  store i8 %4, ptr %6, align 1
  store ptr %0, ptr %7, align 8
  store i64 %1, ptr %8, align 8
  store i64 %2, ptr %9, align 8
  store double %3, ptr %10, align 8
  store i64 %1, ptr %11, align 8
  store i64 %1, ptr %12, align 8
  %14 = load i64, ptr %9, align 8
  %15 = add nsw i64 %14, -1
  %16 = sdiv i64 %15, 2
  %17 = load ptr, ptr %7, align 8
  %18 = load ptr, ptr %7, align 8
  %.promoted = load i64, ptr %12, align 8
  %.promoted3 = load i64, ptr %8, align 8
  br label %19

19:                                               ; preds = %32, %5
  %20 = phi i64 [ %33, %32 ], [ %.promoted3, %5 ]
  %21 = phi i64 [ %33, %32 ], [ %.promoted, %5 ]
  %22 = icmp slt i64 %21, %16
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = shl i64 %21, 1
  %25 = add i64 %24, 2
  %26 = getelementptr inbounds [8 x i8], ptr %17, i64 %25
  %27 = getelementptr [8 x i8], ptr %17, i64 %24
  %28 = getelementptr i8, ptr %27, i64 8
  %29 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %26, ptr noundef %28)
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = add nsw i64 %25, -1
  br label %32

32:                                               ; preds = %30, %23
  %33 = phi i64 [ %31, %30 ], [ %25, %23 ]
  %34 = getelementptr inbounds [8 x i8], ptr %18, i64 %33
  %35 = load double, ptr %34, align 8
  %36 = getelementptr inbounds [8 x i8], ptr %18, i64 %20
  store double %35, ptr %36, align 8
  br label %19, !llvm.loop !105

37:                                               ; preds = %19
  %.lcssa4 = phi i64 [ %20, %19 ]
  %.lcssa2 = phi i64 [ %21, %19 ]
  %.lcssa1 = phi i64 [ %21, %19 ]
  %.lcssa = phi i64 [ %14, %19 ]
  store i64 %.lcssa2, ptr %12, align 8
  store i64 %.lcssa4, ptr %8, align 8
  %38 = and i64 %.lcssa, 1
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %37
  %41 = add nsw i64 %.lcssa, -2
  %42 = ashr exact i64 %41, 1
  %43 = icmp eq i64 %.lcssa1, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = shl i64 %.lcssa1, 1
  %46 = add i64 %45, 2
  store i64 %46, ptr %12, align 8
  %47 = load ptr, ptr %7, align 8
  %48 = getelementptr [8 x i8], ptr %47, i64 %45
  %49 = getelementptr i8, ptr %48, i64 8
  %50 = load double, ptr %49, align 8
  %51 = load i64, ptr %8, align 8
  %52 = getelementptr inbounds [8 x i8], ptr %47, i64 %51
  store double %50, ptr %52, align 8
  %53 = load i64, ptr %12, align 8
  %54 = add nsw i64 %53, -1
  store i64 %54, ptr %8, align 8
  br label %55

55:                                               ; preds = %44, %40, %37
  call void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(ptr noundef nonnull align 1 dereferenceable(1) %13, i8 undef)
  %56 = load ptr, ptr %7, align 8
  %57 = load i64, ptr %8, align 8
  %58 = load i64, ptr %11, align 8
  %59 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_(ptr noundef %56, i64 noundef %57, i64 noundef %58, double noundef %59, ptr noundef nonnull align 1 dereferenceable(1) %13)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 %1) unnamed_addr #5 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #0 comdat {
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  store double %3, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  %12 = load i64, ptr %8, align 8
  %13 = load ptr, ptr %10, align 8, !nonnull !53
  %14 = load ptr, ptr %6, align 8
  %15 = load ptr, ptr %6, align 8
  %.promoted = load i64, ptr %7, align 8
  br label %16

16:                                               ; preds = %23, %5
  %storemerge1 = phi i64 [ %.promoted, %5 ], [ %storemerge, %23 ]
  %storemerge.in.in = phi i64 [ %1, %5 ], [ %storemerge, %23 ]
  %storemerge.in = add nsw i64 %storemerge.in.in, -1
  %storemerge = sdiv i64 %storemerge.in, 2
  %17 = icmp sgt i64 %storemerge1, %12
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = getelementptr inbounds [8 x i8], ptr %14, i64 %storemerge
  %20 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef %19, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %21

21:                                               ; preds = %18, %16
  %22 = phi i1 [ false, %16 ], [ %20, %18 ]
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = getelementptr inbounds [8 x i8], ptr %15, i64 %storemerge
  %25 = load double, ptr %24, align 8
  %26 = getelementptr inbounds [8 x i8], ptr %15, i64 %storemerge1
  store double %25, ptr %26, align 8
  br label %16, !llvm.loop !106

27:                                               ; preds = %21
  %storemerge1.lcssa = phi i64 [ %storemerge1, %21 ]
  %storemerge.lcssa = phi i64 [ %storemerge, %21 ]
  store i64 %storemerge.lcssa, ptr %11, align 8
  store i64 %storemerge1.lcssa, ptr %7, align 8
  %28 = load double, ptr %9, align 8
  %29 = load ptr, ptr %6, align 8
  %30 = load i64, ptr %7, align 8
  %31 = getelementptr inbounds [8 x i8], ptr %29, i64 %30
  store double %28, ptr %31, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #5 comdat align 2 {
  %4 = load double, ptr %1, align 8
  %5 = load double, ptr %2, align 8
  %6 = fcmp olt double %4, %5
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 %4) #5 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store i8 %4, ptr %6, align 1
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  store ptr %3, ptr %10, align 8
  %11 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %2)
  br i1 %11, label %12, label %31

12:                                               ; preds = %5
  %13 = load ptr, ptr %9, align 8
  %14 = load ptr, ptr %10, align 8
  %15 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %13, ptr noundef %14)
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load ptr, ptr %7, align 8
  %18 = load ptr, ptr %9, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %17, ptr noundef %18)
  br label %30

19:                                               ; preds = %12
  %20 = load ptr, ptr %8, align 8
  %21 = load ptr, ptr %10, align 8
  %22 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %20, ptr noundef %21)
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load ptr, ptr %7, align 8
  %25 = load ptr, ptr %10, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %24, ptr noundef %25)
  br label %29

26:                                               ; preds = %19
  %27 = load ptr, ptr %7, align 8
  %28 = load ptr, ptr %8, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %27, ptr noundef %28)
  br label %29

29:                                               ; preds = %26, %23
  br label %30

30:                                               ; preds = %29, %16
  br label %50

31:                                               ; preds = %5
  %32 = load ptr, ptr %8, align 8
  %33 = load ptr, ptr %10, align 8
  %34 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %32, ptr noundef %33)
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load ptr, ptr %7, align 8
  %37 = load ptr, ptr %8, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %36, ptr noundef %37)
  br label %49

38:                                               ; preds = %31
  %39 = load ptr, ptr %9, align 8
  %40 = load ptr, ptr %10, align 8
  %41 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %39, ptr noundef %40)
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load ptr, ptr %7, align 8
  %44 = load ptr, ptr %10, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %43, ptr noundef %44)
  br label %48

45:                                               ; preds = %38
  %46 = load ptr, ptr %7, align 8
  %47 = load ptr, ptr %9, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %46, ptr noundef %47)
  br label %48

48:                                               ; preds = %45, %42
  br label %49

49:                                               ; preds = %48, %35
  br label %50

50:                                               ; preds = %49, %30
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #5 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store i8 %3, ptr %5, align 1
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  br label %9

9:                                                ; preds = %28, %4
  %10 = load ptr, ptr %8, align 8
  %.promoted = load ptr, ptr %6, align 8
  br label %11

11:                                               ; preds = %14, %9
  %12 = phi ptr [ %15, %14 ], [ %.promoted, %9 ]
  %13 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %12, ptr noundef %10)
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 8
  br label %11, !llvm.loop !107

16:                                               ; preds = %11
  %.lcssa1 = phi ptr [ %12, %11 ]
  store ptr %.lcssa1, ptr %6, align 8
  %17 = load ptr, ptr %7, align 8
  br label %18

18:                                               ; preds = %21, %16
  %.pn = phi ptr [ %17, %16 ], [ %22, %21 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  store ptr %storemerge, ptr %7, align 8
  %19 = load ptr, ptr %8, align 8
  %20 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %19, ptr noundef nonnull %storemerge)
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load ptr, ptr %7, align 8
  br label %18, !llvm.loop !108

23:                                               ; preds = %18
  %24 = load ptr, ptr %6, align 8
  %25 = load ptr, ptr %7, align 8
  %26 = icmp ult ptr %24, %25
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  %.lcssa = phi ptr [ %24, %23 ]
  ret ptr %.lcssa

28:                                               ; preds = %23
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %24, ptr noundef nonnull %25)
  %29 = load ptr, ptr %6, align 8
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr %30, ptr %6, align 8
  br label %9, !llvm.loop !109
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %8 = icmp eq ptr %0, %1
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %30

10:                                               ; preds = %3
  br label %11

11:                                               ; preds = %28, %10
  %.pn = phi ptr [ %0, %10 ], [ %29, %28 ]
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  store ptr %storemerge, ptr %7, align 8
  %12 = load ptr, ptr %6, align 8
  %.not = icmp eq ptr %storemerge, %12
  br i1 %.not, label %.loopexit, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %5, align 8
  %15 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull %storemerge, ptr noundef %14)
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load ptr, ptr %7, align 8
  %18 = load double, ptr %17, align 8
  %19 = load ptr, ptr %5, align 8
  %20 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %21 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %19)
  %22 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %17)
  %23 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %21, ptr noundef %22, ptr noundef nonnull %20)
  store double %18, ptr %19, align 8
  br label %27

24:                                               ; preds = %13
  %25 = load ptr, ptr %7, align 8
  %26 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 undef)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %25, i8 undef)
  br label %27

27:                                               ; preds = %24, %16
  br label %28

28:                                               ; preds = %27
  %29 = load ptr, ptr %7, align 8
  br label %11, !llvm.loop !110

.loopexit:                                        ; preds = %11
  br label %30

30:                                               ; preds = %.loopexit, %9
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  br label %7

7:                                                ; preds = %10, %3
  %storemerge = phi ptr [ %0, %3 ], [ %11, %10 ]
  %.not = icmp eq ptr %storemerge, %6
  br i1 %.not, label %12, label %8

8:                                                ; preds = %7
  %9 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 undef)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %storemerge, i8 undef)
  br label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  br label %7, !llvm.loop !111

12:                                               ; preds = %7
  %storemerge.lcssa = phi ptr [ %storemerge, %7 ]
  store ptr %storemerge.lcssa, ptr %5, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %0, i8 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_less_iter", align 1
  %4 = alloca ptr, align 8
  %5 = alloca double, align 8
  %6 = alloca ptr, align 8
  store i8 %1, ptr %3, align 1
  store ptr %0, ptr %4, align 8
  %7 = load double, ptr %0, align 8
  store double %7, ptr %5, align 8
  br label %8

8:                                                ; preds = %10, %2
  %.pn = phi ptr [ %0, %2 ], [ %11, %10 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  store ptr %storemerge, ptr %6, align 8
  %9 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %storemerge)
  br i1 %9, label %10, label %14

10:                                               ; preds = %8
  %11 = load ptr, ptr %6, align 8
  %12 = load double, ptr %11, align 8
  %13 = load ptr, ptr %4, align 8
  store double %12, ptr %13, align 8
  store ptr %11, ptr %4, align 8
  br label %8, !llvm.loop !112

14:                                               ; preds = %8
  %15 = load double, ptr %5, align 8
  %16 = load ptr, ptr %4, align 8
  store double %15, ptr %16, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 %0) #5 comdat {
  ret i8 undef
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) #5 comdat align 2 {
  %4 = load double, ptr %1, align 8
  %5 = load double, ptr %2, align 8
  %6 = fcmp olt double %4, %5
  ret i1 %6
}

attributes #0 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { allocsize(1) }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { nounwind }
attributes #16 = { builtin allocsize(0) }
attributes #17 = { builtin nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Adobe-C++/functionobjects.cpp", directory: "E:/Phase Ordering/v3")
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
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !8}
!25 = distinct !{!25, !8}
!26 = distinct !{!26, !8}
!27 = distinct !{!27, !8}
!28 = distinct !{!28, !8}
!29 = distinct !{!29, !8}
!30 = distinct !{!30, !8}
!31 = distinct !{!31, !8}
!32 = distinct !{!32, !8}
!33 = distinct !{!33, !8}
!34 = distinct !{!34, !8}
!35 = distinct !{!35, !8}
!36 = distinct !{!36, !8}
!37 = distinct !{!37, !8}
!38 = distinct !{!38, !8}
!39 = distinct !{!39, !8}
!40 = distinct !{!40, !8}
!41 = distinct !{!41, !8}
!42 = distinct !{!42, !8}
!43 = distinct !{!43, !8}
!44 = distinct !{!44, !8}
!45 = distinct !{!45, !8}
!46 = distinct !{!46, !8}
!47 = distinct !{!47, !8}
!48 = distinct !{!48, !8}
!49 = distinct !{!49, !8}
!50 = distinct !{!50, !8}
!51 = distinct !{!51, !8}
!52 = distinct !{!52, !8}
!53 = !{}
!54 = !{i64 8}
!55 = distinct !{!55, !8}
!56 = distinct !{!56, !8}
!57 = distinct !{!57, !8}
!58 = distinct !{!58, !8}
!59 = distinct !{!59, !8}
!60 = distinct !{!60, !8}
!61 = distinct !{!61, !8}
!62 = distinct !{!62, !8}
!63 = distinct !{!63, !8}
!64 = distinct !{!64, !8}
!65 = distinct !{!65, !8}
!66 = distinct !{!66, !8}
!67 = distinct !{!67, !8}
!68 = distinct !{!68, !8}
!69 = distinct !{!69, !8}
!70 = distinct !{!70, !8}
!71 = distinct !{!71, !8}
!72 = distinct !{!72, !8}
!73 = distinct !{!73, !8}
!74 = distinct !{!74, !8}
!75 = distinct !{!75, !8}
!76 = distinct !{!76, !8}
!77 = distinct !{!77, !8}
!78 = distinct !{!78, !8}
!79 = distinct !{!79, !8}
!80 = distinct !{!80, !8}
!81 = distinct !{!81, !8}
!82 = distinct !{!82, !8}
!83 = distinct !{!83, !8}
!84 = distinct !{!84, !8}
!85 = distinct !{!85, !8}
!86 = distinct !{!86, !8}
!87 = distinct !{!87, !8}
!88 = distinct !{!88, !8}
!89 = distinct !{!89, !8}
!90 = distinct !{!90, !8}
!91 = distinct !{!91, !8}
!92 = distinct !{!92, !8}
!93 = distinct !{!93, !8}
!94 = distinct !{!94, !8}
!95 = distinct !{!95, !8}
!96 = distinct !{!96, !8}
!97 = distinct !{!97, !8}
!98 = distinct !{!98, !8}
!99 = distinct !{!99, !8}
!100 = distinct !{!100, !8}
!101 = distinct !{!101, !8}
!102 = distinct !{!102, !8}
!103 = distinct !{!103, !8}
!104 = distinct !{!104, !8}
!105 = distinct !{!105, !8}
!106 = distinct !{!106, !8}
!107 = distinct !{!107, !8}
!108 = distinct !{!108, !8}
!109 = distinct !{!109, !8}
!110 = distinct !{!110, !8}
!111 = distinct !{!111, !8}
!112 = distinct !{!112, !8}
