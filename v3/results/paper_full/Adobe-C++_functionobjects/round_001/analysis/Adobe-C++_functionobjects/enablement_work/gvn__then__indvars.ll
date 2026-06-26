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
  %.pre = load i32, ptr @allocated_results, align 4
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr @current_test, align 4
  %.not = icmp slt i32 %8, %.pre
  br i1 %.not, label %19, label %9

9:                                                ; preds = %7, %2
  %10 = add nsw i32 %.pre, 10
  store i32 %10, ptr @allocated_results, align 4
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 4
  %13 = call ptr @realloc(ptr noundef %5, i64 noundef %12) #13
  store ptr %13, ptr @results, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i32, ptr @allocated_results, align 4
  %17 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str, i32 noundef %16)
  call void @exit(i32 noundef -1) #14
  unreachable

18:                                               ; preds = %9
  %.pre1 = load i32, ptr @current_test, align 4
  br label %19

19:                                               ; preds = %18, %7
  %20 = phi i32 [ %.pre1, %18 ], [ %8, %7 ]
  %21 = phi ptr [ %13, %18 ], [ %5, %7 ]
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds [16 x i8], ptr %21, i64 %22
  store double %0, ptr %23, align 8
  %24 = load ptr, ptr @results, align 8
  %25 = getelementptr inbounds [16 x i8], ptr %24, i64 %22
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %1, ptr %26, align 8
  %27 = add nsw i32 %20, 1
  store i32 %27, ptr @current_test, align 4
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
  br label %17

17:                                               ; preds = %32, %5
  %indvars.iv = phi i64 [ %indvars.iv.next, %32 ], [ 0, %5 ]
  %18 = phi i32 [ 12, %5 ], [ %33, %32 ]
  %19 = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %19, ptr %8, align 4
  %20 = load i32, ptr @current_test, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp slt i64 %indvars.iv, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load ptr, ptr @results, align 8
  %25 = getelementptr inbounds [16 x i8], ptr %24, i64 %indvars.iv
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %27 = load ptr, ptr %26, align 8
  %28 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %27) #15
  %29 = trunc i64 %28 to i32
  %30 = icmp slt i32 %18, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 %29, ptr %12, align 4
  br label %32

32:                                               ; preds = %31, %23
  %33 = phi i32 [ %29, %31 ], [ %18, %23 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %17, !llvm.loop !7

34:                                               ; preds = %17
  %.lcssa4 = phi i32 [ %18, %17 ]
  %35 = add nsw i32 %.lcssa4, -12
  %36 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.1, i32 noundef %35, ptr noundef nonnull @.str.2)
  %37 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.3, i32 noundef %.lcssa4, ptr noundef nonnull @.str.2)
  br label %38

38:                                               ; preds = %43, %34
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %43 ], [ 0, %34 ]
  %39 = trunc nuw nsw i64 %indvars.iv6 to i32
  store i32 %39, ptr %8, align 4
  %40 = load i32, ptr @current_test, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %indvars.iv6, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %38
  %44 = load ptr, ptr @results, align 8
  %45 = getelementptr inbounds [16 x i8], ptr %44, i64 %indvars.iv6
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 8
  %47 = load ptr, ptr %46, align 8
  %48 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %47) #15
  %49 = trunc i64 %48 to i32
  %50 = sub i32 %.lcssa4, %49
  %51 = load ptr, ptr @results, align 8
  %52 = getelementptr inbounds [16 x i8], ptr %51, i64 %indvars.iv6
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 8
  %54 = load ptr, ptr %53, align 8
  %55 = load double, ptr %52, align 8
  %56 = fdiv double %16, %55
  %57 = load double, ptr %51, align 8
  %58 = fdiv double %55, %57
  %59 = trunc nuw nsw i64 %indvars.iv6 to i32
  %60 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.4, i32 noundef %59, i32 noundef %50, ptr noundef nonnull @.str.5, ptr noundef %54, double noundef %55, double noundef %56, double noundef %58)
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  br label %38, !llvm.loop !9

61:                                               ; preds = %38
  %.lcssa12 = phi i32 [ %40, %38 ]
  %smax = call i32 @llvm.smax.i32(i32 %.lcssa12, i32 0)
  %wide.trip.count = zext i32 %smax to i64
  br label %62

62:                                               ; preds = %65, %61
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %65 ], [ 0, %61 ]
  %63 = phi double [ 0.000000e+00, %61 ], [ %69, %65 ]
  %64 = trunc nuw nsw i64 %indvars.iv9 to i32
  store i32 %64, ptr %8, align 4
  %exitcond = icmp ne i64 %indvars.iv9, %wide.trip.count
  br i1 %exitcond, label %65, label %70

65:                                               ; preds = %62
  %66 = load ptr, ptr @results, align 8
  %67 = getelementptr inbounds [16 x i8], ptr %66, i64 %indvars.iv9
  %68 = load double, ptr %67, align 8
  %69 = fadd double %63, %68
  store double %69, ptr %10, align 8
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  br label %62, !llvm.loop !10

70:                                               ; preds = %62
  %.lcssa2 = phi double [ %63, %62 ]
  %71 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.6, ptr noundef %0, double noundef %.lcssa2)
  %72 = load i32, ptr @current_test, align 4
  %73 = icmp sgt i32 %72, 1
  br i1 %73, label %74, label %96

74:                                               ; preds = %70
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %96, label %75

75:                                               ; preds = %74
  br label %76

76:                                               ; preds = %82, %75
  %indvars.iv13 = phi i64 [ %indvars.iv.next14, %82 ], [ 1, %75 ]
  %77 = phi double [ 0.000000e+00, %75 ], [ %89, %82 ]
  %78 = phi i32 [ %72, %75 ], [ %.pre, %82 ]
  %79 = trunc nuw nsw i64 %indvars.iv13 to i32
  store i32 %79, ptr %8, align 4
  %80 = sext i32 %78 to i64
  %81 = icmp slt i64 %indvars.iv13, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %76
  %83 = load ptr, ptr @results, align 8
  %84 = getelementptr inbounds [16 x i8], ptr %83, i64 %indvars.iv13
  %85 = load double, ptr %84, align 8
  %86 = load double, ptr %83, align 8
  %87 = fdiv double %85, %86
  %88 = call double @log(double noundef %87) #15
  %89 = fadd double %77, %88
  store double %89, ptr %11, align 8
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %.pre = load i32, ptr @current_test, align 4
  br label %76, !llvm.loop !11

90:                                               ; preds = %76
  %.lcssa1 = phi double [ %77, %76 ]
  %.lcssa = phi i32 [ %78, %76 ]
  %91 = add nsw i32 %.lcssa, -1
  %92 = sitofp i32 %91 to double
  %93 = fdiv double %.lcssa1, %92
  %94 = call double @exp(double noundef %93) #15
  %95 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.7, ptr noundef %0, double noundef %94)
  br label %96

96:                                               ; preds = %90, %74, %70
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
  br label %8

8:                                                ; preds = %23, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %23 ], [ 0, %2 ]
  %9 = phi i32 [ 12, %2 ], [ %24, %23 ]
  %10 = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %10, ptr %5, align 4
  %11 = load i32, ptr @current_test, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp slt i64 %indvars.iv, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %8
  %15 = load ptr, ptr @results, align 8
  %16 = getelementptr inbounds [16 x i8], ptr %15, i64 %indvars.iv
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %18 = load ptr, ptr %17, align 8
  %19 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %18) #15
  %20 = trunc i64 %19 to i32
  %21 = icmp slt i32 %9, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 %20, ptr %7, align 4
  br label %23

23:                                               ; preds = %22, %14
  %24 = phi i32 [ %20, %22 ], [ %9, %14 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %8, !llvm.loop !12

25:                                               ; preds = %8
  %.lcssa2 = phi i32 [ %9, %8 ]
  %26 = add nsw i32 %.lcssa2, -12
  %27 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %26, ptr noundef nonnull @.str.2)
  %28 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %.lcssa2, ptr noundef nonnull @.str.2)
  br label %29

29:                                               ; preds = %34, %25
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %34 ], [ 0, %25 ]
  %30 = trunc nuw nsw i64 %indvars.iv4 to i32
  store i32 %30, ptr %5, align 4
  %31 = load i32, ptr @current_test, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp slt i64 %indvars.iv4, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = load ptr, ptr @results, align 8
  %36 = getelementptr inbounds [16 x i8], ptr %35, i64 %indvars.iv4
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 8
  %38 = load ptr, ptr %37, align 8
  %39 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %38) #15
  %40 = trunc i64 %39 to i32
  %41 = sub i32 %.lcssa2, %40
  %42 = load ptr, ptr @results, align 8
  %43 = getelementptr inbounds [16 x i8], ptr %42, i64 %indvars.iv4
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 8
  %45 = load ptr, ptr %44, align 8
  %46 = load double, ptr %43, align 8
  %47 = trunc nuw nsw i64 %indvars.iv4 to i32
  %48 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %47, i32 noundef %41, ptr noundef nonnull @.str.5, ptr noundef %45, double noundef %46)
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  br label %29, !llvm.loop !13

49:                                               ; preds = %29
  %.lcssa10 = phi i32 [ %31, %29 ]
  %smax = call i32 @llvm.smax.i32(i32 %.lcssa10, i32 0)
  %wide.trip.count = zext i32 %smax to i64
  br label %50

50:                                               ; preds = %53, %49
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %53 ], [ 0, %49 ]
  %51 = phi double [ 0.000000e+00, %49 ], [ %57, %53 ]
  %52 = trunc nuw nsw i64 %indvars.iv7 to i32
  store i32 %52, ptr %5, align 4
  %exitcond = icmp ne i64 %indvars.iv7, %wide.trip.count
  br i1 %exitcond, label %53, label %58

53:                                               ; preds = %50
  %54 = load ptr, ptr @results, align 8
  %55 = getelementptr inbounds [16 x i8], ptr %54, i64 %indvars.iv7
  %56 = load double, ptr %55, align 8
  %57 = fadd double %51, %56
  store double %57, ptr %6, align 8
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  br label %50, !llvm.loop !14

58:                                               ; preds = %50
  %.lcssa = phi double [ %51, %50 ]
  %59 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %1, double noundef %.lcssa)
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
  %13 = phi i32 [ 0, %11 ], [ 1, %10 ], [ -1, %7 ]
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
  br i1 %13, label %14, label %44

14:                                               ; preds = %3
  %15 = load double, ptr %0, align 8
  store double %15, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  br label %16

16:                                               ; preds = %38, %14
  %17 = phi ptr [ %.lcssa3, %38 ], [ %0, %14 ]
  %18 = phi ptr [ %.lcssa, %38 ], [ %1, %14 ]
  br label %19

19:                                               ; preds = %24, %16
  %20 = phi ptr [ %21, %24 ], [ %18, %16 ]
  %21 = getelementptr inbounds i8, ptr %20, i64 -8
  store ptr %21, ptr %9, align 8
  %22 = load double, ptr %21, align 8
  %23 = call noundef zeroext i1 %2(double noundef %15, double noundef %22)
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %19, !llvm.loop !15

25:                                               ; preds = %19
  %.lcssa = phi ptr [ %21, %19 ]
  %26 = icmp ult ptr %17, %.lcssa
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  %.lcssa.lcssa = phi ptr [ %.lcssa, %25 ]
  br label %41

28:                                               ; preds = %25
  br label %29

29:                                               ; preds = %33, %28
  %30 = phi ptr [ %34, %33 ], [ %17, %28 ]
  %31 = load double, ptr %30, align 8
  %32 = call noundef zeroext i1 %2(double noundef %31, double noundef %15)
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = getelementptr inbounds nuw i8, ptr %30, i64 8
  store ptr %34, ptr %8, align 8
  br label %29, !llvm.loop !16

35:                                               ; preds = %29
  %.lcssa3 = phi ptr [ %30, %29 ]
  %36 = icmp ult ptr %.lcssa3, %.lcssa
  br i1 %36, label %38, label %37

37:                                               ; preds = %35
  %.lcssa.lcssa1 = phi ptr [ %.lcssa, %35 ]
  br label %41

38:                                               ; preds = %35
  %39 = load double, ptr %.lcssa, align 8
  %40 = load double, ptr %.lcssa3, align 8
  store double %40, ptr %.lcssa, align 8
  store double %39, ptr %.lcssa3, align 8
  br label %16, !llvm.loop !17

41:                                               ; preds = %37, %27
  %.lcssa2 = phi ptr [ %.lcssa.lcssa1, %37 ], [ %.lcssa.lcssa, %27 ]
  %42 = getelementptr inbounds nuw i8, ptr %.lcssa2, i64 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef nonnull %42, ptr noundef %2)
  %43 = load ptr, ptr %5, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %42, ptr noundef %43, ptr noundef %2)
  br label %44

44:                                               ; preds = %41, %3
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
  br i1 %13, label %14, label %44

14:                                               ; preds = %3
  %15 = load double, ptr %0, align 8
  store double %15, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  br label %16

16:                                               ; preds = %38, %14
  %17 = phi ptr [ %.lcssa3, %38 ], [ %0, %14 ]
  %18 = phi ptr [ %.lcssa, %38 ], [ %1, %14 ]
  br label %19

19:                                               ; preds = %24, %16
  %20 = phi ptr [ %21, %24 ], [ %18, %16 ]
  %21 = getelementptr inbounds i8, ptr %20, i64 -8
  store ptr %21, ptr %9, align 8
  %22 = load double, ptr %21, align 8
  %23 = call noundef zeroext i1 %2(double noundef %15, double noundef %22)
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %19, !llvm.loop !18

25:                                               ; preds = %19
  %.lcssa = phi ptr [ %21, %19 ]
  %26 = icmp ult ptr %17, %.lcssa
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  %.lcssa.lcssa = phi ptr [ %.lcssa, %25 ]
  br label %41

28:                                               ; preds = %25
  br label %29

29:                                               ; preds = %33, %28
  %30 = phi ptr [ %34, %33 ], [ %17, %28 ]
  %31 = load double, ptr %30, align 8
  %32 = call noundef zeroext i1 %2(double noundef %31, double noundef %15)
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = getelementptr inbounds nuw i8, ptr %30, i64 8
  store ptr %34, ptr %8, align 8
  br label %29, !llvm.loop !19

35:                                               ; preds = %29
  %.lcssa3 = phi ptr [ %30, %29 ]
  %36 = icmp ult ptr %.lcssa3, %.lcssa
  br i1 %36, label %38, label %37

37:                                               ; preds = %35
  %.lcssa.lcssa1 = phi ptr [ %.lcssa, %35 ]
  br label %41

38:                                               ; preds = %35
  %39 = load double, ptr %.lcssa, align 8
  %40 = load double, ptr %.lcssa3, align 8
  store double %40, ptr %.lcssa, align 8
  store double %39, ptr %.lcssa3, align 8
  br label %16, !llvm.loop !20

41:                                               ; preds = %37, %27
  %.lcssa2 = phi ptr [ %.lcssa.lcssa1, %37 ], [ %.lcssa.lcssa, %27 ]
  %42 = getelementptr inbounds nuw i8, ptr %.lcssa2, i64 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef nonnull %42, ptr noundef %2)
  %43 = load ptr, ptr %5, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %42, ptr noundef %43, ptr noundef %2)
  br label %44

44:                                               ; preds = %41, %3
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
  %19 = icmp sgt i32 %0, 2
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %22 = load ptr, ptr %21, align 8
  %23 = call i32 @atoi(ptr noundef %22)
  br label %25

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi i32 [ %23, %20 ], [ 10000, %24 ]
  store i32 %26, ptr %7, align 4
  %27 = add nsw i32 %26, 123
  call void @srand(i32 noundef %27)
  %28 = sext i32 %26 to i64
  %29 = icmp slt i32 %26, 0
  %30 = shl nsw i64 %28, 3
  %31 = select i1 %29, i64 -1, i64 %30
  %32 = call noalias noundef nonnull ptr @_Znay(i64 noundef %31) #16
  store ptr %32, ptr %8, align 8
  %smax = call i32 @llvm.smax.i32(i32 %26, i32 0)
  %wide.trip.count = zext i32 %smax to i64
  br label %33

33:                                               ; preds = %35, %25
  %indvars.iv = phi i64 [ %indvars.iv.next, %35 ], [ 0, %25 ]
  %34 = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %34, ptr %9, align 4
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %35, label %39

35:                                               ; preds = %33
  %36 = call i32 @rand()
  %37 = sitofp i32 %36 to double
  %38 = getelementptr inbounds [8 x i8], ptr %32, i64 %indvars.iv
  store double %37, ptr %38, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %33, !llvm.loop !21

39:                                               ; preds = %33
  %40 = call noalias noundef nonnull ptr @_Znay(i64 noundef %31) #16
  store ptr %40, ptr %10, align 8
  br label %41

41:                                               ; preds = %44, %39
  %42 = phi i32 [ %26, %39 ], [ %48, %44 ]
  %storemerge1 = phi i32 [ 0, %39 ], [ %52, %44 ]
  store i32 %storemerge1, ptr %5, align 4
  %43 = icmp slt i32 %storemerge1, %18
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = sext i32 %42 to i64
  %46 = getelementptr inbounds [8 x i8], ptr %32, i64 %45
  %47 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %32, ptr noundef %46, ptr noundef %40)
  call void @qsort(ptr noundef %40, i64 noundef %45, i64 noundef 8, ptr noundef nonnull @_Z19less_than_function1PKvS0_)
  %48 = load i32, ptr %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [8 x i8], ptr %40, i64 %49
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %40, ptr noundef %50)
  %51 = load i32, ptr %5, align 4
  %52 = add nsw i32 %51, 1
  br label %41, !llvm.loop !22

53:                                               ; preds = %41
  %.lcssa12 = phi i32 [ %42, %41 ]
  br label %54

54:                                               ; preds = %57, %53
  %55 = phi i32 [ %.lcssa12, %53 ], [ %62, %57 ]
  %storemerge2 = phi i32 [ 0, %53 ], [ %66, %57 ]
  store i32 %storemerge2, ptr %5, align 4
  %56 = icmp slt i32 %storemerge2, %18
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = sext i32 %55 to i64
  %59 = getelementptr inbounds [8 x i8], ptr %32, i64 %58
  %60 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %32, ptr noundef %59, ptr noundef %40)
  %61 = getelementptr inbounds [8 x i8], ptr %40, i64 %58
  call void @_Z18quicksort_functionPdS_PFbddE(ptr noundef %40, ptr noundef %61, ptr noundef nonnull @_Z19less_than_function2dd)
  %62 = load i32, ptr %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [8 x i8], ptr %40, i64 %63
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %40, ptr noundef %64)
  %65 = load i32, ptr %5, align 4
  %66 = add nsw i32 %65, 1
  br label %54, !llvm.loop !23

67:                                               ; preds = %54
  %.lcssa11 = phi i32 [ %55, %54 ]
  br label %68

68:                                               ; preds = %71, %67
  %69 = phi i32 [ %.lcssa11, %67 ], [ %76, %71 ]
  %storemerge3 = phi i32 [ 0, %67 ], [ %80, %71 ]
  store i32 %storemerge3, ptr %5, align 4
  %70 = icmp slt i32 %storemerge3, %18
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = sext i32 %69 to i64
  %73 = getelementptr inbounds [8 x i8], ptr %32, i64 %72
  %74 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %32, ptr noundef %73, ptr noundef %40)
  %75 = getelementptr inbounds [8 x i8], ptr %40, i64 %72
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %40, ptr noundef %75, ptr noundef nonnull @_Z19less_than_function2dd)
  %76 = load i32, ptr %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [8 x i8], ptr %40, i64 %77
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %40, ptr noundef %78)
  %79 = load i32, ptr %5, align 4
  %80 = add nsw i32 %79, 1
  br label %68, !llvm.loop !24

81:                                               ; preds = %68
  %.lcssa10 = phi i32 [ %69, %68 ]
  br label %82

82:                                               ; preds = %85, %81
  %83 = phi i32 [ %.lcssa10, %81 ], [ %90, %85 ]
  %storemerge4 = phi i32 [ 0, %81 ], [ %94, %85 ]
  store i32 %storemerge4, ptr %5, align 4
  %84 = icmp slt i32 %storemerge4, %18
  br i1 %84, label %85, label %95

85:                                               ; preds = %82
  %86 = sext i32 %83 to i64
  %87 = getelementptr inbounds [8 x i8], ptr %32, i64 %86
  %88 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %32, ptr noundef %87, ptr noundef %40)
  %89 = getelementptr inbounds [8 x i8], ptr %40, i64 %86
  call void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef %40, ptr noundef %89)
  %90 = load i32, ptr %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [8 x i8], ptr %40, i64 %91
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %40, ptr noundef %92)
  %93 = load i32, ptr %5, align 4
  %94 = add nsw i32 %93, 1
  br label %82, !llvm.loop !25

95:                                               ; preds = %82
  %.lcssa9 = phi i32 [ %83, %82 ]
  br label %96

96:                                               ; preds = %99, %95
  %97 = phi i32 [ %.lcssa9, %95 ], [ %104, %99 ]
  %storemerge5 = phi i32 [ 0, %95 ], [ %108, %99 ]
  store i32 %storemerge5, ptr %5, align 4
  %98 = icmp slt i32 %storemerge5, %18
  br i1 %98, label %99, label %109

99:                                               ; preds = %96
  %100 = sext i32 %97 to i64
  %101 = getelementptr inbounds [8 x i8], ptr %32, i64 %100
  %102 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %32, ptr noundef %101, ptr noundef %40)
  %103 = getelementptr inbounds [8 x i8], ptr %40, i64 %100
  call void @_ZSt4sortIPdPFbddEEvT_S3_T0_(ptr noundef %40, ptr noundef %103, ptr noundef nonnull @_Z19less_than_function2dd)
  %104 = load i32, ptr %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [8 x i8], ptr %40, i64 %105
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %40, ptr noundef %106)
  %107 = load i32, ptr %5, align 4
  %108 = add nsw i32 %107, 1
  br label %96, !llvm.loop !26

109:                                              ; preds = %96
  %.lcssa8 = phi i32 [ %97, %96 ]
  br label %110

110:                                              ; preds = %113, %109
  %111 = phi i32 [ %.lcssa8, %109 ], [ %118, %113 ]
  %storemerge6 = phi i32 [ 0, %109 ], [ %122, %113 ]
  store i32 %storemerge6, ptr %5, align 4
  %112 = icmp slt i32 %storemerge6, %18
  br i1 %112, label %113, label %123

113:                                              ; preds = %110
  %114 = sext i32 %111 to i64
  %115 = getelementptr inbounds [8 x i8], ptr %32, i64 %114
  %116 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %32, ptr noundef %115, ptr noundef %40)
  %117 = getelementptr inbounds [8 x i8], ptr %40, i64 %114
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %40, ptr noundef %117, i8 undef)
  %118 = load i32, ptr %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [8 x i8], ptr %40, i64 %119
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %40, ptr noundef %120)
  %121 = load i32, ptr %5, align 4
  %122 = add nsw i32 %121, 1
  br label %110, !llvm.loop !27

123:                                              ; preds = %110
  %.lcssa7 = phi i32 [ %111, %110 ]
  br label %124

124:                                              ; preds = %128, %123
  %125 = phi i32 [ %.lcssa7, %123 ], [ %132, %128 ]
  %.pre = phi ptr [ %32, %123 ], [ %131, %128 ]
  %126 = phi ptr [ %40, %123 ], [ %135, %128 ]
  %storemerge7 = phi i32 [ 0, %123 ], [ %138, %128 ]
  store i32 %storemerge7, ptr %5, align 4
  %127 = icmp slt i32 %storemerge7, %18
  br i1 %127, label %128, label %139

128:                                              ; preds = %124
  %129 = sext i32 %125 to i64
  %130 = getelementptr inbounds [8 x i8], ptr %126, i64 %129
  call void @_ZSt4sortIPd17less_than_functorEvT_S2_T0_(ptr noundef %126, ptr noundef %130, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %126, ptr noundef %130)
  %131 = load ptr, ptr %8, align 8
  %132 = load i32, ptr %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [8 x i8], ptr %131, i64 %133
  %135 = load ptr, ptr %10, align 8
  %136 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %131, ptr noundef %134, ptr noundef %135)
  %137 = load i32, ptr %5, align 4
  %138 = add nsw i32 %137, 1
  br label %124, !llvm.loop !28

139:                                              ; preds = %124
  %.lcssa6 = phi i32 [ %125, %124 ]
  %.pre.lcssa = phi ptr [ %.pre, %124 ]
  %.lcssa5 = phi ptr [ %126, %124 ]
  br label %140

140:                                              ; preds = %143, %139
  %141 = phi i32 [ %.lcssa6, %139 ], [ %148, %143 ]
  %storemerge8 = phi i32 [ 0, %139 ], [ %152, %143 ]
  store i32 %storemerge8, ptr %5, align 4
  %142 = icmp slt i32 %storemerge8, %18
  br i1 %142, label %143, label %153

143:                                              ; preds = %140
  %144 = sext i32 %141 to i64
  %145 = getelementptr inbounds [8 x i8], ptr %.pre.lcssa, i64 %144
  %146 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %.pre.lcssa, ptr noundef %145, ptr noundef %.lcssa5)
  %147 = getelementptr inbounds [8 x i8], ptr %.lcssa5, i64 %144
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %.lcssa5, ptr noundef %147, i8 undef)
  %148 = load i32, ptr %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [8 x i8], ptr %.lcssa5, i64 %149
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %.lcssa5, ptr noundef %150)
  %151 = load i32, ptr %5, align 4
  %152 = add nsw i32 %151, 1
  br label %140, !llvm.loop !29

153:                                              ; preds = %140
  %.lcssa4 = phi i32 [ %141, %140 ]
  br label %154

154:                                              ; preds = %157, %153
  %155 = phi i32 [ %.lcssa4, %153 ], [ %162, %157 ]
  %storemerge9 = phi i32 [ 0, %153 ], [ %166, %157 ]
  store i32 %storemerge9, ptr %5, align 4
  %156 = icmp slt i32 %storemerge9, %18
  br i1 %156, label %157, label %167

157:                                              ; preds = %154
  %158 = sext i32 %155 to i64
  %159 = getelementptr inbounds [8 x i8], ptr %.pre.lcssa, i64 %158
  %160 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %.pre.lcssa, ptr noundef %159, ptr noundef %.lcssa5)
  %161 = getelementptr inbounds [8 x i8], ptr %.lcssa5, i64 %158
  call void @_ZSt4sortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %.lcssa5, ptr noundef %161, i8 undef)
  %162 = load i32, ptr %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [8 x i8], ptr %.lcssa5, i64 %163
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %.lcssa5, ptr noundef %164)
  %165 = load i32, ptr %5, align 4
  %166 = add nsw i32 %165, 1
  br label %154, !llvm.loop !30

167:                                              ; preds = %154
  %.lcssa3 = phi i32 [ %155, %154 ]
  br label %168

168:                                              ; preds = %171, %167
  %169 = phi i32 [ %.lcssa3, %167 ], [ %176, %171 ]
  %storemerge10 = phi i32 [ 0, %167 ], [ %180, %171 ]
  store i32 %storemerge10, ptr %5, align 4
  %170 = icmp slt i32 %storemerge10, %18
  br i1 %170, label %171, label %181

171:                                              ; preds = %168
  %172 = sext i32 %169 to i64
  %173 = getelementptr inbounds [8 x i8], ptr %.pre.lcssa, i64 %172
  %174 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %.pre.lcssa, ptr noundef %173, ptr noundef %.lcssa5)
  %175 = getelementptr inbounds [8 x i8], ptr %.lcssa5, i64 %172
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %.lcssa5, ptr noundef %175, i8 undef)
  %176 = load i32, ptr %7, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [8 x i8], ptr %.lcssa5, i64 %177
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %.lcssa5, ptr noundef %178)
  %179 = load i32, ptr %5, align 4
  %180 = add nsw i32 %179, 1
  br label %168, !llvm.loop !31

181:                                              ; preds = %168
  %.lcssa2 = phi i32 [ %169, %168 ]
  br label %182

182:                                              ; preds = %185, %181
  %183 = phi i32 [ %.lcssa2, %181 ], [ %190, %185 ]
  %storemerge11 = phi i32 [ 0, %181 ], [ %194, %185 ]
  store i32 %storemerge11, ptr %5, align 4
  %184 = icmp slt i32 %storemerge11, %18
  br i1 %184, label %185, label %195

185:                                              ; preds = %182
  %186 = sext i32 %183 to i64
  %187 = getelementptr inbounds [8 x i8], ptr %.pre.lcssa, i64 %186
  %188 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %.pre.lcssa, ptr noundef %187, ptr noundef %.lcssa5)
  %189 = getelementptr inbounds [8 x i8], ptr %.lcssa5, i64 %186
  call void @_ZSt4sortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %.lcssa5, ptr noundef %189, i8 undef)
  %190 = load i32, ptr %7, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [8 x i8], ptr %.lcssa5, i64 %191
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %.lcssa5, ptr noundef %192)
  %193 = load i32, ptr %5, align 4
  %194 = add nsw i32 %193, 1
  br label %182, !llvm.loop !32

195:                                              ; preds = %182
  %.lcssa1 = phi i32 [ %183, %182 ]
  br label %196

196:                                              ; preds = %199, %195
  %197 = phi i32 [ %.lcssa1, %195 ], [ %204, %199 ]
  %storemerge12 = phi i32 [ 0, %195 ], [ %208, %199 ]
  store i32 %storemerge12, ptr %5, align 4
  %198 = icmp slt i32 %storemerge12, %18
  br i1 %198, label %199, label %209

199:                                              ; preds = %196
  %200 = sext i32 %197 to i64
  %201 = getelementptr inbounds [8 x i8], ptr %.pre.lcssa, i64 %200
  %202 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %.pre.lcssa, ptr noundef %201, ptr noundef %.lcssa5)
  %203 = getelementptr inbounds [8 x i8], ptr %.lcssa5, i64 %200
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %.lcssa5, ptr noundef %203)
  %204 = load i32, ptr %7, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [8 x i8], ptr %.lcssa5, i64 %205
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %.lcssa5, ptr noundef %206)
  %207 = load i32, ptr %5, align 4
  %208 = add nsw i32 %207, 1
  br label %196, !llvm.loop !33

209:                                              ; preds = %196
  %.lcssa = phi i32 [ %197, %196 ]
  br label %210

210:                                              ; preds = %213, %209
  %211 = phi i32 [ %.lcssa, %209 ], [ %218, %213 ]
  %storemerge13 = phi i32 [ 0, %209 ], [ %222, %213 ]
  store i32 %storemerge13, ptr %5, align 4
  %212 = icmp slt i32 %storemerge13, %18
  br i1 %212, label %213, label %223

213:                                              ; preds = %210
  %214 = sext i32 %211 to i64
  %215 = getelementptr inbounds [8 x i8], ptr %.pre.lcssa, i64 %214
  %216 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %.pre.lcssa, ptr noundef %215, ptr noundef %.lcssa5)
  %217 = getelementptr inbounds [8 x i8], ptr %.lcssa5, i64 %214
  call void @_ZSt4sortIPdEvT_S1_(ptr noundef %.lcssa5, ptr noundef %217)
  %218 = load i32, ptr %7, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [8 x i8], ptr %.lcssa5, i64 %219
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %.lcssa5, ptr noundef %220)
  %221 = load i32, ptr %5, align 4
  %222 = add nsw i32 %221, 1
  br label %210, !llvm.loop !34

223:                                              ; preds = %210
  %224 = icmp eq ptr %.lcssa5, null
  br i1 %224, label %226, label %225

225:                                              ; preds = %223
  call void @_ZdaPv(ptr noundef nonnull %.lcssa5) #17
  br label %226

226:                                              ; preds = %225, %223
  %227 = icmp eq ptr %.pre.lcssa, null
  br i1 %227, label %229, label %228

228:                                              ; preds = %226
  call void @_ZdaPv(ptr noundef nonnull %.pre.lcssa) #17
  br label %229

229:                                              ; preds = %228, %226
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
  br label %7

7:                                                ; preds = %19, %2
  %8 = phi ptr [ %13, %19 ], [ %0, %2 ]
  %9 = phi ptr [ %11, %19 ], [ %6, %2 ]
  %.not = icmp eq ptr %9, %1
  br i1 %.not, label %.loopexit, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %11, ptr %3, align 8
  %12 = load double, ptr %9, align 8
  %13 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %13, ptr %5, align 8
  %14 = load double, ptr %8, align 8
  %15 = fcmp olt double %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, ptr @current_test, align 4
  %18 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.11, i32 noundef %17)
  br label %20

19:                                               ; preds = %10
  br label %7, !llvm.loop !35

.loopexit:                                        ; preds = %7
  br label %20

20:                                               ; preds = %.loopexit, %16
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
  br i1 %11, label %12, label %42

12:                                               ; preds = %2
  %13 = load double, ptr %0, align 8
  store double %13, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  br label %14

14:                                               ; preds = %36, %12
  %15 = phi ptr [ %.lcssa3, %36 ], [ %0, %12 ]
  %16 = phi ptr [ %.lcssa, %36 ], [ %1, %12 ]
  br label %17

17:                                               ; preds = %22, %14
  %18 = phi ptr [ %19, %22 ], [ %16, %14 ]
  %19 = getelementptr inbounds i8, ptr %18, i64 -8
  store ptr %19, ptr %7, align 8
  %20 = load double, ptr %19, align 8
  %21 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %13, double noundef %20)
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %17, !llvm.loop !36

23:                                               ; preds = %17
  %.lcssa = phi ptr [ %19, %17 ]
  %24 = icmp ult ptr %15, %.lcssa
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  %.lcssa.lcssa = phi ptr [ %.lcssa, %23 ]
  br label %39

26:                                               ; preds = %23
  br label %27

27:                                               ; preds = %31, %26
  %28 = phi ptr [ %32, %31 ], [ %15, %26 ]
  %29 = load double, ptr %28, align 8
  %30 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %29, double noundef %13)
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %32, ptr %6, align 8
  br label %27, !llvm.loop !37

33:                                               ; preds = %27
  %.lcssa3 = phi ptr [ %28, %27 ]
  %34 = icmp ult ptr %.lcssa3, %.lcssa
  br i1 %34, label %36, label %35

35:                                               ; preds = %33
  %.lcssa.lcssa1 = phi ptr [ %.lcssa, %33 ]
  br label %39

36:                                               ; preds = %33
  %37 = load double, ptr %.lcssa, align 8
  %38 = load double, ptr %.lcssa3, align 8
  store double %38, ptr %.lcssa, align 8
  store double %37, ptr %.lcssa3, align 8
  br label %14, !llvm.loop !38

39:                                               ; preds = %35, %25
  %.lcssa2 = phi ptr [ %.lcssa.lcssa1, %35 ], [ %.lcssa.lcssa, %25 ]
  %40 = getelementptr inbounds nuw i8, ptr %.lcssa2, i64 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef nonnull %40, ptr noundef nonnull @_Z19less_than_function2dd)
  %41 = load ptr, ptr %4, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %40, ptr noundef %41, ptr noundef nonnull @_Z19less_than_function2dd)
  br label %42

42:                                               ; preds = %39, %2
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
  br i1 %13, label %14, label %43

14:                                               ; preds = %3
  %15 = load double, ptr %0, align 8
  store double %15, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  br label %16

16:                                               ; preds = %36, %14
  %17 = phi ptr [ %.lcssa, %36 ], [ %1, %14 ]
  br label %18

18:                                               ; preds = %22, %16
  %19 = phi ptr [ %20, %22 ], [ %17, %16 ]
  %20 = getelementptr inbounds i8, ptr %19, i64 -8
  store ptr %20, ptr %9, align 8
  %21 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %20)
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %18, !llvm.loop !39

23:                                               ; preds = %18
  %.lcssa = phi ptr [ %20, %18 ]
  %24 = load ptr, ptr %8, align 8
  %25 = icmp ult ptr %24, %.lcssa
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  %.lcssa.lcssa = phi ptr [ %.lcssa, %23 ]
  br label %39

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %31, %27
  %29 = phi ptr [ %32, %31 ], [ %24, %27 ]
  %30 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr %32, ptr %8, align 8
  br label %28, !llvm.loop !40

33:                                               ; preds = %28
  %.lcssa3 = phi ptr [ %29, %28 ]
  %34 = icmp ult ptr %.lcssa3, %.lcssa
  br i1 %34, label %36, label %35

35:                                               ; preds = %33
  %.lcssa.lcssa1 = phi ptr [ %.lcssa, %33 ]
  br label %39

36:                                               ; preds = %33
  %37 = load double, ptr %.lcssa, align 8
  %38 = load double, ptr %.lcssa3, align 8
  store double %38, ptr %.lcssa, align 8
  store double %37, ptr %.lcssa3, align 8
  br label %16, !llvm.loop !41

39:                                               ; preds = %35, %26
  %.lcssa2 = phi ptr [ %.lcssa.lcssa1, %35 ], [ %.lcssa.lcssa, %26 ]
  %40 = load ptr, ptr %5, align 8
  %41 = getelementptr inbounds nuw i8, ptr %.lcssa2, i64 8
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %40, ptr noundef nonnull %41, i8 undef)
  %42 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef nonnull %41, ptr noundef %42, i8 undef)
  br label %43

43:                                               ; preds = %39, %3
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
  br i1 %13, label %14, label %43

14:                                               ; preds = %3
  %15 = load double, ptr %0, align 8
  store double %15, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  br label %16

16:                                               ; preds = %36, %14
  %17 = phi ptr [ %.lcssa, %36 ], [ %1, %14 ]
  br label %18

18:                                               ; preds = %22, %16
  %19 = phi ptr [ %20, %22 ], [ %17, %16 ]
  %20 = getelementptr inbounds i8, ptr %19, i64 -8
  store ptr %20, ptr %9, align 8
  %21 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %20)
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %18, !llvm.loop !42

23:                                               ; preds = %18
  %.lcssa = phi ptr [ %20, %18 ]
  %24 = load ptr, ptr %8, align 8
  %25 = icmp ult ptr %24, %.lcssa
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  %.lcssa.lcssa = phi ptr [ %.lcssa, %23 ]
  br label %39

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %31, %27
  %29 = phi ptr [ %32, %31 ], [ %24, %27 ]
  %30 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr %32, ptr %8, align 8
  br label %28, !llvm.loop !43

33:                                               ; preds = %28
  %.lcssa3 = phi ptr [ %29, %28 ]
  %34 = icmp ult ptr %.lcssa3, %.lcssa
  br i1 %34, label %36, label %35

35:                                               ; preds = %33
  %.lcssa.lcssa1 = phi ptr [ %.lcssa, %33 ]
  br label %39

36:                                               ; preds = %33
  %37 = load double, ptr %.lcssa, align 8
  %38 = load double, ptr %.lcssa3, align 8
  store double %38, ptr %.lcssa, align 8
  store double %37, ptr %.lcssa3, align 8
  br label %16, !llvm.loop !44

39:                                               ; preds = %35, %26
  %.lcssa2 = phi ptr [ %.lcssa.lcssa1, %35 ], [ %.lcssa.lcssa, %26 ]
  %40 = load ptr, ptr %5, align 8
  %41 = getelementptr inbounds nuw i8, ptr %.lcssa2, i64 8
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %40, ptr noundef nonnull %41, i8 undef)
  %42 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef nonnull %41, ptr noundef %42, i8 undef)
  br label %43

43:                                               ; preds = %39, %3
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
  br i1 %13, label %14, label %43

14:                                               ; preds = %3
  %15 = load double, ptr %0, align 8
  store double %15, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  br label %16

16:                                               ; preds = %36, %14
  %17 = phi ptr [ %.lcssa, %36 ], [ %1, %14 ]
  br label %18

18:                                               ; preds = %22, %16
  %19 = phi ptr [ %20, %22 ], [ %17, %16 ]
  %20 = getelementptr inbounds i8, ptr %19, i64 -8
  store ptr %20, ptr %9, align 8
  %21 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %20)
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %18, !llvm.loop !45

23:                                               ; preds = %18
  %.lcssa = phi ptr [ %20, %18 ]
  %24 = load ptr, ptr %8, align 8
  %25 = icmp ult ptr %24, %.lcssa
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  %.lcssa.lcssa = phi ptr [ %.lcssa, %23 ]
  br label %39

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %31, %27
  %29 = phi ptr [ %32, %31 ], [ %24, %27 ]
  %30 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr %32, ptr %8, align 8
  br label %28, !llvm.loop !46

33:                                               ; preds = %28
  %.lcssa3 = phi ptr [ %29, %28 ]
  %34 = icmp ult ptr %.lcssa3, %.lcssa
  br i1 %34, label %36, label %35

35:                                               ; preds = %33
  %.lcssa.lcssa1 = phi ptr [ %.lcssa, %33 ]
  br label %39

36:                                               ; preds = %33
  %37 = load double, ptr %.lcssa, align 8
  %38 = load double, ptr %.lcssa3, align 8
  store double %38, ptr %.lcssa, align 8
  store double %37, ptr %.lcssa3, align 8
  br label %16, !llvm.loop !47

39:                                               ; preds = %35, %26
  %.lcssa2 = phi ptr [ %.lcssa.lcssa1, %35 ], [ %.lcssa.lcssa, %26 ]
  %40 = load ptr, ptr %5, align 8
  %41 = getelementptr inbounds nuw i8, ptr %.lcssa2, i64 8
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %40, ptr noundef nonnull %41, i8 undef)
  %42 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef nonnull %41, ptr noundef %42, i8 undef)
  br label %43

43:                                               ; preds = %39, %3
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
  br i1 %11, label %12, label %42

12:                                               ; preds = %2
  %13 = load double, ptr %0, align 8
  store double %13, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  br label %14

14:                                               ; preds = %37, %12
  %15 = phi ptr [ %.lcssa4, %37 ], [ %0, %12 ]
  %16 = phi double [ %.lcssa, %37 ], [ %13, %12 ]
  %17 = phi ptr [ %.lcssa1, %37 ], [ %1, %12 ]
  br label %18

18:                                               ; preds = %23, %14
  %19 = phi ptr [ %20, %23 ], [ %17, %14 ]
  %20 = getelementptr inbounds i8, ptr %19, i64 -8
  store ptr %20, ptr %7, align 8
  %21 = load double, ptr %20, align 8
  %22 = fcmp olt double %13, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %18, !llvm.loop !48

24:                                               ; preds = %18
  %.lcssa1 = phi ptr [ %20, %18 ]
  %.lcssa = phi double [ %21, %18 ]
  %25 = icmp ult ptr %15, %.lcssa1
  br i1 %25, label %27, label %26

26:                                               ; preds = %24
  %.lcssa1.lcssa = phi ptr [ %.lcssa1, %24 ]
  br label %39

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %32, %27
  %29 = phi ptr [ %33, %32 ], [ %15, %27 ]
  %30 = phi double [ %.pre, %32 ], [ %16, %27 ]
  %31 = fcmp olt double %30, %13
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr %33, ptr %6, align 8
  %.pre = load double, ptr %33, align 8
  br label %28, !llvm.loop !49

34:                                               ; preds = %28
  %.lcssa4 = phi ptr [ %29, %28 ]
  %35 = icmp ult ptr %.lcssa4, %.lcssa1
  br i1 %35, label %37, label %36

36:                                               ; preds = %34
  %.lcssa1.lcssa2 = phi ptr [ %.lcssa1, %34 ]
  br label %39

37:                                               ; preds = %34
  %38 = load double, ptr %.lcssa4, align 8
  store double %38, ptr %.lcssa1, align 8
  store double %.lcssa, ptr %.lcssa4, align 8
  br label %14, !llvm.loop !50

39:                                               ; preds = %36, %26
  %.lcssa13 = phi ptr [ %.lcssa1.lcssa2, %36 ], [ %.lcssa1.lcssa, %26 ]
  %40 = getelementptr inbounds nuw i8, ptr %.lcssa13, i64 8
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %0, ptr noundef nonnull %40)
  %41 = load ptr, ptr %4, align 8
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef nonnull %40, ptr noundef %41)
  br label %42

42:                                               ; preds = %39, %2
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
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %9, i1 false)
  %13 = getelementptr inbounds [8 x i8], ptr %2, i64 %10
  store ptr %13, ptr %5, align 8
  br label %21

14:                                               ; preds = %3
  %15 = icmp eq i64 %9, 8
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = load double, ptr %0, align 8
  store double %17, ptr %2, align 8
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %18, ptr %5, align 8
  br label %19

19:                                               ; preds = %16, %14
  %20 = phi ptr [ %18, %16 ], [ %2, %14 ]
  br label %21

21:                                               ; preds = %19, %12
  %22 = phi ptr [ %20, %19 ], [ %13, %12 ]
  ret ptr %22
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
  br i1 %.not, label %15, label %8

8:                                                ; preds = %3
  %9 = ptrtoint ptr %1 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 3
  %13 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %12)
  %14 = shl nsw i64 %13, 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %14, i64 %2)
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %2)
  br label %15

15:                                               ; preds = %8, %3
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
  br label %10

10:                                               ; preds = %20, %4
  %11 = phi i64 [ %21, %20 ], [ %2, %4 ]
  %12 = phi ptr [ %22, %20 ], [ %1, %4 ]
  %13 = ptrtoint ptr %12 to i64
  %14 = ptrtoint ptr %0 to i64
  %15 = sub i64 %13, %14
  %16 = icmp sgt i64 %15, 128
  br i1 %16, label %17, label %.loopexit

17:                                               ; preds = %10
  %18 = icmp eq i64 %11, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  %.lcssa1 = phi ptr [ %12, %17 ]
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %.lcssa1, ptr noundef %.lcssa1, i64 %3)
  br label %23

20:                                               ; preds = %17
  %21 = add nsw i64 %11, -1
  store i64 %21, ptr %8, align 8
  %22 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %12, i64 %3)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %22, ptr noundef %12, i64 noundef %21, i64 %3)
  store ptr %22, ptr %7, align 8
  br label %10, !llvm.loop !51

.loopexit:                                        ; preds = %10
  br label %23

23:                                               ; preds = %.loopexit, %19
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
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef nonnull %13, i64 %2)
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef nonnull %13, ptr noundef %1, i64 %2)
  br label %15

14:                                               ; preds = %3
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %2)
  br label %15

15:                                               ; preds = %14, %12
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
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %15 = getelementptr inbounds i8, ptr %1, i64 -8
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_(ptr noundef %0, ptr noundef nonnull %14, ptr noundef %13, ptr noundef nonnull %15, i64 %2)
  %16 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_S7_T0_(ptr noundef nonnull %14, ptr noundef %1, ptr noundef %0, i64 %2)
  ret ptr %16
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
  br label %11

11:                                               ; preds = %18, %4
  %12 = phi ptr [ %0, %4 ], [ %19, %18 ]
  %storemerge = phi ptr [ %1, %4 ], [ %20, %18 ]
  store ptr %storemerge, ptr %9, align 8
  %13 = icmp ult ptr %storemerge, %2
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %storemerge, ptr noundef %12)
  %.pre = load ptr, ptr %9, align 8
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = load ptr, ptr %7, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %17, ptr noundef %.pre, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %0, %16 ], [ %12, %14 ]
  %20 = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  br label %11, !llvm.loop !52

21:                                               ; preds = %11
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
  br label %7

7:                                                ; preds = %14, %3
  %8 = phi ptr [ %.pre, %14 ], [ %0, %3 ]
  %9 = phi ptr [ %15, %14 ], [ %1, %3 ]
  %10 = ptrtoint ptr %9 to i64
  %11 = ptrtoint ptr %8 to i64
  %12 = sub i64 %10, %11
  %13 = icmp sgt i64 %12, 8
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = getelementptr inbounds i8, ptr %9, i64 -8
  store ptr %15, ptr %5, align 8
  %16 = load ptr, ptr %6, align 8, !nonnull !53, !align !54
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %8, ptr noundef nonnull %15, ptr noundef nonnull %15, ptr noundef nonnull align 8 dereferenceable(8) %16)
  %.pre = load ptr, ptr %4, align 8
  br label %7, !llvm.loop !55

17:                                               ; preds = %7
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
  br label %25

14:                                               ; preds = %3
  store i64 %11, ptr %6, align 8
  %15 = add nsw i64 %11, -2
  %16 = sdiv i64 %15, 2
  br label %17

17:                                               ; preds = %23, %14
  %storemerge = phi i64 [ %16, %14 ], [ %24, %23 ]
  store i64 %storemerge, ptr %7, align 8
  %18 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge
  %19 = load double, ptr %18, align 8
  %20 = load i64, ptr %2, align 8
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %storemerge, i64 noundef %11, double noundef %19, i64 %20)
  %21 = icmp eq i64 %storemerge, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %25

23:                                               ; preds = %17
  %24 = add nsw i64 %storemerge, -1
  br label %17, !llvm.loop !56

25:                                               ; preds = %22, %13
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
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = ashr exact i64 %13, 3
  %15 = load i64, ptr %3, align 8
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef 0, i64 noundef %14, double noundef %9, i64 %15)
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
  br label %15

15:                                               ; preds = %30, %5
  %16 = phi ptr [ %32, %30 ], [ %0, %5 ]
  %17 = phi i64 [ %31, %30 ], [ %1, %5 ]
  %18 = add nsw i64 %2, -1
  %19 = sdiv i64 %18, 2
  %20 = icmp slt i64 %17, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = shl i64 %17, 1
  %23 = add i64 %22, 2
  store i64 %23, ptr %12, align 8
  %24 = getelementptr inbounds [8 x i8], ptr %16, i64 %23
  %25 = getelementptr [8 x i8], ptr %16, i64 %22
  %26 = getelementptr i8, ptr %25, i64 8
  %27 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %24, ptr noundef %26)
  %.pre = load i64, ptr %12, align 8
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = add nsw i64 %.pre, -1
  store i64 %29, ptr %12, align 8
  br label %30

30:                                               ; preds = %28, %21
  %31 = phi i64 [ %29, %28 ], [ %.pre, %21 ]
  %32 = load ptr, ptr %7, align 8
  %33 = getelementptr inbounds [8 x i8], ptr %32, i64 %31
  %34 = load double, ptr %33, align 8
  %35 = load i64, ptr %8, align 8
  %36 = getelementptr inbounds [8 x i8], ptr %32, i64 %35
  store double %34, ptr %36, align 8
  store i64 %31, ptr %8, align 8
  br label %15, !llvm.loop !57

37:                                               ; preds = %15
  %.lcssa1 = phi ptr [ %16, %15 ]
  %.lcssa = phi i64 [ %17, %15 ]
  %38 = and i64 %2, 1
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = add nsw i64 %2, -2
  %42 = ashr exact i64 %41, 1
  %43 = icmp eq i64 %.lcssa, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = shl i64 %.lcssa, 1
  %46 = add i64 %45, 2
  store i64 %46, ptr %12, align 8
  %47 = getelementptr [8 x i8], ptr %.lcssa1, i64 %45
  %48 = getelementptr i8, ptr %47, i64 8
  %49 = load double, ptr %48, align 8
  %50 = getelementptr inbounds [8 x i8], ptr %.lcssa1, i64 %.lcssa
  store double %49, ptr %50, align 8
  %51 = add nsw i64 %46, -1
  store i64 %51, ptr %8, align 8
  br label %52

52:                                               ; preds = %44, %40, %37
  %53 = phi i64 [ %51, %44 ], [ %.lcssa, %40 ], [ %.lcssa, %37 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEEEvT_T0_S8_T1_RT2_(ptr noundef %.lcssa1, i64 noundef %53, i64 noundef %1, double noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %13)
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
  br label %12

12:                                               ; preds = %21, %5
  %13 = phi ptr [ %0, %5 ], [ %22, %21 ]
  %14 = phi i64 [ %1, %5 ], [ %23, %21 ]
  %storemerge.in = add nsw i64 %14, -1
  %storemerge = sdiv i64 %storemerge.in, 2
  store i64 %storemerge, ptr %11, align 8
  %15 = icmp sgt i64 %14, %2
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = getelementptr inbounds [8 x i8], ptr %13, i64 %storemerge
  %18 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEclIPddEEbT_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %17, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %19

19:                                               ; preds = %16, %12
  %20 = phi i1 [ false, %12 ], [ %18, %16 ]
  br i1 %20, label %21, label %28

21:                                               ; preds = %19
  %22 = load ptr, ptr %6, align 8
  %23 = load i64, ptr %11, align 8
  %24 = getelementptr inbounds [8 x i8], ptr %22, i64 %23
  %25 = load double, ptr %24, align 8
  %26 = load i64, ptr %7, align 8
  %27 = getelementptr inbounds [8 x i8], ptr %22, i64 %26
  store double %25, ptr %27, align 8
  store i64 %23, ptr %7, align 8
  br label %12, !llvm.loop !58

28:                                               ; preds = %19
  %29 = load double, ptr %9, align 8
  %30 = load ptr, ptr %6, align 8
  %31 = load i64, ptr %7, align 8
  %32 = getelementptr inbounds [8 x i8], ptr %30, i64 %31
  store double %29, ptr %32, align 8
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
  br i1 %12, label %13, label %22

13:                                               ; preds = %5
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %2, ptr noundef %3)
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %21

16:                                               ; preds = %13
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %3)
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %20

19:                                               ; preds = %16
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %20

20:                                               ; preds = %19, %18
  br label %21

21:                                               ; preds = %20, %15
  br label %31

22:                                               ; preds = %5
  %23 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %3)
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %30

25:                                               ; preds = %22
  %26 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %2, ptr noundef %3)
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %29

28:                                               ; preds = %25
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %29

29:                                               ; preds = %28, %27
  br label %30

30:                                               ; preds = %29, %24
  br label %31

31:                                               ; preds = %30, %21
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

10:                                               ; preds = %31, %4
  %11 = phi ptr [ %32, %31 ], [ %0, %4 ]
  br label %12

12:                                               ; preds = %16, %10
  %13 = phi ptr [ %18, %16 ], [ %11, %10 ]
  %14 = load ptr, ptr %8, align 8
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %13, ptr noundef %14)
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load ptr, ptr %6, align 8
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %18, ptr %6, align 8
  br label %12, !llvm.loop !59

19:                                               ; preds = %12
  %20 = load ptr, ptr %7, align 8
  br label %21

21:                                               ; preds = %24, %19
  %.pn = phi ptr [ %20, %19 ], [ %25, %24 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  store ptr %storemerge, ptr %7, align 8
  %22 = load ptr, ptr %8, align 8
  %23 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %22, ptr noundef nonnull %storemerge)
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load ptr, ptr %7, align 8
  br label %21, !llvm.loop !60

26:                                               ; preds = %21
  %27 = load ptr, ptr %6, align 8
  %28 = load ptr, ptr %7, align 8
  %29 = icmp ult ptr %27, %28
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  %.lcssa = phi ptr [ %27, %26 ]
  ret ptr %.lcssa

31:                                               ; preds = %26
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %27, ptr noundef nonnull %28)
  %32 = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr %32, ptr %6, align 8
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
  br label %31

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %29, %11
  %13 = phi ptr [ %1, %11 ], [ %.pre, %29 ]
  %.pn = phi ptr [ %0, %11 ], [ %30, %29 ]
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  store ptr %storemerge, ptr %7, align 8
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
  %30 = phi ptr [ %26, %25 ], [ %18, %17 ]
  %.pre = load ptr, ptr %6, align 8
  br label %12, !llvm.loop !62

.loopexit:                                        ; preds = %12
  br label %31

31:                                               ; preds = %.loopexit, %10
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
  br label %8

8:                                                ; preds = %10, %3
  %9 = phi ptr [ %0, %3 ], [ %12, %10 ]
  store ptr %9, ptr %6, align 8
  %.not = icmp eq ptr %9, %1
  br i1 %.not, label %13, label %10

10:                                               ; preds = %8
  %11 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %2)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %9, i64 %11)
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %8, !llvm.loop !63

13:                                               ; preds = %8
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
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 8
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %13, ptr align 8 %0, i64 %8, i1 false)
  br label %20

14:                                               ; preds = %3
  %15 = icmp eq i64 %8, 8
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = load double, ptr %0, align 8
  %18 = load ptr, ptr %5, align 8
  store double %17, ptr %18, align 8
  br label %19

19:                                               ; preds = %16, %14
  br label %20

20:                                               ; preds = %19, %12
  %21 = load ptr, ptr %5, align 8
  ret ptr %21
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZSt9__advanceIPdxEvRT_T0_St26random_access_iterator_tag(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, i8 %2) #5 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %6 = call i1 @llvm.is.constant.i64(i64 %1)
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = icmp eq i64 %1, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %11, ptr %0, align 8
  br label %23

12:                                               ; preds = %7, %3
  %13 = call i1 @llvm.is.constant.i64(i64 %1)
  br i1 %13, label %14, label %19

14:                                               ; preds = %12
  %15 = icmp eq i64 %1, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = load ptr, ptr %0, align 8
  %18 = getelementptr inbounds i8, ptr %17, i64 -8
  store ptr %18, ptr %0, align 8
  br label %22

19:                                               ; preds = %14, %12
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr inbounds [8 x i8], ptr %20, i64 %1
  store ptr %21, ptr %0, align 8
  br label %22

22:                                               ; preds = %19, %16
  br label %23

23:                                               ; preds = %22, %9
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
  br i1 %.not, label %14, label %7

7:                                                ; preds = %3
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %11)
  %13 = shl nsw i64 %12, 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %13, i8 %2)
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2)
  br label %14

14:                                               ; preds = %7, %3
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
  br label %9

9:                                                ; preds = %19, %4
  %10 = phi i64 [ %20, %19 ], [ %2, %4 ]
  %11 = phi ptr [ %21, %19 ], [ %1, %4 ]
  %12 = ptrtoint ptr %11 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = icmp sgt i64 %14, 128
  br i1 %15, label %16, label %.loopexit

16:                                               ; preds = %9
  %17 = icmp eq i64 %10, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  %.lcssa1 = phi ptr [ %11, %16 ]
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %.lcssa1, ptr noundef %.lcssa1, i8 %3)
  br label %22

19:                                               ; preds = %16
  %20 = add nsw i64 %10, -1
  store i64 %20, ptr %8, align 8
  %21 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %11, i8 %3)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %21, ptr noundef %11, i64 noundef %20, i8 %3)
  store ptr %21, ptr %7, align 8
  br label %9, !llvm.loop !65

.loopexit:                                        ; preds = %9
  br label %22

22:                                               ; preds = %.loopexit, %18
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
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef nonnull %12, i8 %2)
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef nonnull %12, ptr noundef %1, i8 %2)
  br label %14

13:                                               ; preds = %3
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2)
  br label %14

14:                                               ; preds = %13, %11
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
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %14 = getelementptr inbounds i8, ptr %1, i64 -8
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_S6_T0_(ptr noundef %0, ptr noundef nonnull %13, ptr noundef %12, ptr noundef nonnull %14, i8 %2)
  %15 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_S6_T0_(ptr noundef nonnull %13, ptr noundef %1, ptr noundef %0, i8 %2)
  ret ptr %15
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
  br label %10

10:                                               ; preds = %17, %4
  %11 = phi ptr [ %0, %4 ], [ %18, %17 ]
  %storemerge = phi ptr [ %1, %4 ], [ %19, %17 ]
  store ptr %storemerge, ptr %9, align 8
  %12 = icmp ult ptr %storemerge, %2
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %storemerge, ptr noundef %11)
  %.pre = load ptr, ptr %9, align 8
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = load ptr, ptr %7, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %16, ptr noundef %.pre, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi ptr [ %0, %15 ], [ %11, %13 ]
  %19 = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  br label %10, !llvm.loop !66

20:                                               ; preds = %10
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
  br label %7

7:                                                ; preds = %14, %3
  %8 = phi ptr [ %.pre, %14 ], [ %0, %3 ]
  %9 = phi ptr [ %15, %14 ], [ %1, %3 ]
  %10 = ptrtoint ptr %9 to i64
  %11 = ptrtoint ptr %8 to i64
  %12 = sub i64 %10, %11
  %13 = icmp sgt i64 %12, 8
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = getelementptr inbounds i8, ptr %9, i64 -8
  store ptr %15, ptr %5, align 8
  %16 = load ptr, ptr %6, align 8, !nonnull !53
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %8, ptr noundef nonnull %15, ptr noundef nonnull %15, ptr noundef nonnull align 1 dereferenceable(1) %16)
  %.pre = load ptr, ptr %4, align 8
  br label %7, !llvm.loop !67

17:                                               ; preds = %7
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
  br label %25

14:                                               ; preds = %3
  store i64 %11, ptr %6, align 8
  %15 = add nsw i64 %11, -2
  %16 = sdiv i64 %15, 2
  br label %17

17:                                               ; preds = %23, %14
  %storemerge = phi i64 [ %16, %14 ], [ %24, %23 ]
  store i64 %storemerge, ptr %7, align 8
  %18 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge
  %19 = load double, ptr %18, align 8
  %20 = load i8, ptr %2, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %storemerge, i64 noundef %11, double noundef %19, i8 %20)
  %21 = icmp eq i64 %storemerge, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %25

23:                                               ; preds = %17
  %24 = add nsw i64 %storemerge, -1
  br label %17, !llvm.loop !68

25:                                               ; preds = %22, %13
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
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = ashr exact i64 %13, 3
  %15 = load i8, ptr %3, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef 0, i64 noundef %14, double noundef %9, i8 %15)
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
  br label %14

14:                                               ; preds = %29, %5
  %15 = phi ptr [ %31, %29 ], [ %0, %5 ]
  %16 = phi i64 [ %30, %29 ], [ %1, %5 ]
  %17 = add nsw i64 %2, -1
  %18 = sdiv i64 %17, 2
  %19 = icmp slt i64 %16, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = shl i64 %16, 1
  %22 = add i64 %21, 2
  store i64 %22, ptr %12, align 8
  %23 = getelementptr inbounds [8 x i8], ptr %15, i64 %22
  %24 = getelementptr [8 x i8], ptr %15, i64 %21
  %25 = getelementptr i8, ptr %24, i64 8
  %26 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %23, ptr noundef %25)
  %.pre = load i64, ptr %12, align 8
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = add nsw i64 %.pre, -1
  store i64 %28, ptr %12, align 8
  br label %29

29:                                               ; preds = %27, %20
  %30 = phi i64 [ %28, %27 ], [ %.pre, %20 ]
  %31 = load ptr, ptr %7, align 8
  %32 = getelementptr inbounds [8 x i8], ptr %31, i64 %30
  %33 = load double, ptr %32, align 8
  %34 = load i64, ptr %8, align 8
  %35 = getelementptr inbounds [8 x i8], ptr %31, i64 %34
  store double %33, ptr %35, align 8
  store i64 %30, ptr %8, align 8
  br label %14, !llvm.loop !69

36:                                               ; preds = %14
  %.lcssa1 = phi ptr [ %15, %14 ]
  %.lcssa = phi i64 [ %16, %14 ]
  %37 = and i64 %2, 1
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = add nsw i64 %2, -2
  %41 = ashr exact i64 %40, 1
  %42 = icmp eq i64 %.lcssa, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = shl i64 %.lcssa, 1
  %45 = add i64 %44, 2
  store i64 %45, ptr %12, align 8
  %46 = getelementptr [8 x i8], ptr %.lcssa1, i64 %44
  %47 = getelementptr i8, ptr %46, i64 8
  %48 = load double, ptr %47, align 8
  %49 = getelementptr inbounds [8 x i8], ptr %.lcssa1, i64 %.lcssa
  store double %48, ptr %49, align 8
  %50 = add nsw i64 %45, -1
  store i64 %50, ptr %8, align 8
  br label %51

51:                                               ; preds = %43, %39, %36
  %52 = phi i64 [ %50, %43 ], [ %.lcssa, %39 ], [ %.lcssa, %36 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %.lcssa1, i64 noundef %52, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %13)
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
  br label %12

12:                                               ; preds = %21, %5
  %13 = phi ptr [ %0, %5 ], [ %22, %21 ]
  %14 = phi i64 [ %1, %5 ], [ %23, %21 ]
  %storemerge.in = add nsw i64 %14, -1
  %storemerge = sdiv i64 %storemerge.in, 2
  store i64 %storemerge, ptr %11, align 8
  %15 = icmp sgt i64 %14, %2
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = getelementptr inbounds [8 x i8], ptr %13, i64 %storemerge
  %18 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %17, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %19

19:                                               ; preds = %16, %12
  %20 = phi i1 [ false, %12 ], [ %18, %16 ]
  br i1 %20, label %21, label %28

21:                                               ; preds = %19
  %22 = load ptr, ptr %6, align 8
  %23 = load i64, ptr %11, align 8
  %24 = getelementptr inbounds [8 x i8], ptr %22, i64 %23
  %25 = load double, ptr %24, align 8
  %26 = load i64, ptr %7, align 8
  %27 = getelementptr inbounds [8 x i8], ptr %22, i64 %26
  store double %25, ptr %27, align 8
  store i64 %23, ptr %7, align 8
  br label %12, !llvm.loop !70

28:                                               ; preds = %19
  %29 = load double, ptr %9, align 8
  %30 = load ptr, ptr %6, align 8
  %31 = load i64, ptr %7, align 8
  %32 = getelementptr inbounds [8 x i8], ptr %30, i64 %31
  store double %29, ptr %32, align 8
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
  br i1 %11, label %12, label %21

12:                                               ; preds = %5
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %20

15:                                               ; preds = %12
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %19

18:                                               ; preds = %15
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %19

19:                                               ; preds = %18, %17
  br label %20

20:                                               ; preds = %19, %14
  br label %30

21:                                               ; preds = %5
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %29

24:                                               ; preds = %21
  %25 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %28

27:                                               ; preds = %24
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %28

28:                                               ; preds = %27, %26
  br label %29

29:                                               ; preds = %28, %23
  br label %30

30:                                               ; preds = %29, %20
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

9:                                                ; preds = %30, %4
  %10 = phi ptr [ %31, %30 ], [ %0, %4 ]
  br label %11

11:                                               ; preds = %15, %9
  %12 = phi ptr [ %17, %15 ], [ %10, %9 ]
  %13 = load ptr, ptr %8, align 8
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %12, ptr noundef %13)
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load ptr, ptr %6, align 8
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %17, ptr %6, align 8
  br label %11, !llvm.loop !71

18:                                               ; preds = %11
  %19 = load ptr, ptr %7, align 8
  br label %20

20:                                               ; preds = %23, %18
  %.pn = phi ptr [ %19, %18 ], [ %24, %23 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  store ptr %storemerge, ptr %7, align 8
  %21 = load ptr, ptr %8, align 8
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %21, ptr noundef nonnull %storemerge)
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load ptr, ptr %7, align 8
  br label %20, !llvm.loop !72

25:                                               ; preds = %20
  %26 = load ptr, ptr %6, align 8
  %27 = load ptr, ptr %7, align 8
  %28 = icmp ult ptr %26, %27
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  %.lcssa = phi ptr [ %26, %25 ]
  ret ptr %.lcssa

30:                                               ; preds = %25
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %26, ptr noundef nonnull %27)
  %31 = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %31, ptr %6, align 8
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
  br label %30

10:                                               ; preds = %3
  br label %11

11:                                               ; preds = %28, %10
  %12 = phi ptr [ %1, %10 ], [ %.pre, %28 ]
  %.pn = phi ptr [ %0, %10 ], [ %29, %28 ]
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  store ptr %storemerge, ptr %7, align 8
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
  %29 = phi ptr [ %25, %24 ], [ %17, %16 ]
  %.pre = load ptr, ptr %6, align 8
  br label %11, !llvm.loop !74

.loopexit:                                        ; preds = %11
  br label %30

30:                                               ; preds = %.loopexit, %9
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i8 %2, ptr %4, align 1
  store ptr %1, ptr %5, align 8
  br label %7

7:                                                ; preds = %9, %3
  %8 = phi ptr [ %0, %3 ], [ %11, %9 ]
  store ptr %8, ptr %6, align 8
  %.not = icmp eq ptr %8, %1
  br i1 %.not, label %12, label %9

9:                                                ; preds = %7
  %10 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %2)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %8, i8 %10)
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %7, !llvm.loop !75

12:                                               ; preds = %7
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
  br i1 %.not, label %14, label %7

7:                                                ; preds = %3
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %11)
  %13 = shl nsw i64 %12, 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %13, i8 %2)
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2)
  br label %14

14:                                               ; preds = %7, %3
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
  br label %9

9:                                                ; preds = %19, %4
  %10 = phi i64 [ %20, %19 ], [ %2, %4 ]
  %11 = phi ptr [ %21, %19 ], [ %1, %4 ]
  %12 = ptrtoint ptr %11 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = icmp sgt i64 %14, 128
  br i1 %15, label %16, label %.loopexit

16:                                               ; preds = %9
  %17 = icmp eq i64 %10, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  %.lcssa1 = phi ptr [ %11, %16 ]
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %.lcssa1, ptr noundef %.lcssa1, i8 %3)
  br label %22

19:                                               ; preds = %16
  %20 = add nsw i64 %10, -1
  store i64 %20, ptr %8, align 8
  %21 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %11, i8 %3)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %21, ptr noundef %11, i64 noundef %20, i8 %3)
  store ptr %21, ptr %7, align 8
  br label %9, !llvm.loop !77

.loopexit:                                        ; preds = %9
  br label %22

22:                                               ; preds = %.loopexit, %18
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
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef nonnull %12, i8 %2)
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef nonnull %12, ptr noundef %1, i8 %2)
  br label %14

13:                                               ; preds = %3
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2)
  br label %14

14:                                               ; preds = %13, %11
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
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %14 = getelementptr inbounds i8, ptr %1, i64 -8
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_S6_T0_(ptr noundef %0, ptr noundef nonnull %13, ptr noundef %12, ptr noundef nonnull %14, i8 %2)
  %15 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_S6_T0_(ptr noundef nonnull %13, ptr noundef %1, ptr noundef %0, i8 %2)
  ret ptr %15
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
  br label %10

10:                                               ; preds = %17, %4
  %11 = phi ptr [ %0, %4 ], [ %18, %17 ]
  %storemerge = phi ptr [ %1, %4 ], [ %19, %17 ]
  store ptr %storemerge, ptr %9, align 8
  %12 = icmp ult ptr %storemerge, %2
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %storemerge, ptr noundef %11)
  %.pre = load ptr, ptr %9, align 8
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = load ptr, ptr %7, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %16, ptr noundef %.pre, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi ptr [ %0, %15 ], [ %11, %13 ]
  %19 = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  br label %10, !llvm.loop !78

20:                                               ; preds = %10
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
  br label %7

7:                                                ; preds = %14, %3
  %8 = phi ptr [ %.pre, %14 ], [ %0, %3 ]
  %9 = phi ptr [ %15, %14 ], [ %1, %3 ]
  %10 = ptrtoint ptr %9 to i64
  %11 = ptrtoint ptr %8 to i64
  %12 = sub i64 %10, %11
  %13 = icmp sgt i64 %12, 8
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = getelementptr inbounds i8, ptr %9, i64 -8
  store ptr %15, ptr %5, align 8
  %16 = load ptr, ptr %6, align 8, !nonnull !53
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %8, ptr noundef nonnull %15, ptr noundef nonnull %15, ptr noundef nonnull align 1 dereferenceable(1) %16)
  %.pre = load ptr, ptr %4, align 8
  br label %7, !llvm.loop !79

17:                                               ; preds = %7
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
  br label %25

14:                                               ; preds = %3
  store i64 %11, ptr %6, align 8
  %15 = add nsw i64 %11, -2
  %16 = sdiv i64 %15, 2
  br label %17

17:                                               ; preds = %23, %14
  %storemerge = phi i64 [ %16, %14 ], [ %24, %23 ]
  store i64 %storemerge, ptr %7, align 8
  %18 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge
  %19 = load double, ptr %18, align 8
  %20 = load i8, ptr %2, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %storemerge, i64 noundef %11, double noundef %19, i8 %20)
  %21 = icmp eq i64 %storemerge, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %25

23:                                               ; preds = %17
  %24 = add nsw i64 %storemerge, -1
  br label %17, !llvm.loop !80

25:                                               ; preds = %22, %13
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
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = ashr exact i64 %13, 3
  %15 = load i8, ptr %3, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef 0, i64 noundef %14, double noundef %9, i8 %15)
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
  br label %14

14:                                               ; preds = %29, %5
  %15 = phi ptr [ %31, %29 ], [ %0, %5 ]
  %16 = phi i64 [ %30, %29 ], [ %1, %5 ]
  %17 = add nsw i64 %2, -1
  %18 = sdiv i64 %17, 2
  %19 = icmp slt i64 %16, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = shl i64 %16, 1
  %22 = add i64 %21, 2
  store i64 %22, ptr %12, align 8
  %23 = getelementptr inbounds [8 x i8], ptr %15, i64 %22
  %24 = getelementptr [8 x i8], ptr %15, i64 %21
  %25 = getelementptr i8, ptr %24, i64 8
  %26 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %23, ptr noundef %25)
  %.pre = load i64, ptr %12, align 8
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = add nsw i64 %.pre, -1
  store i64 %28, ptr %12, align 8
  br label %29

29:                                               ; preds = %27, %20
  %30 = phi i64 [ %28, %27 ], [ %.pre, %20 ]
  %31 = load ptr, ptr %7, align 8
  %32 = getelementptr inbounds [8 x i8], ptr %31, i64 %30
  %33 = load double, ptr %32, align 8
  %34 = load i64, ptr %8, align 8
  %35 = getelementptr inbounds [8 x i8], ptr %31, i64 %34
  store double %33, ptr %35, align 8
  store i64 %30, ptr %8, align 8
  br label %14, !llvm.loop !81

36:                                               ; preds = %14
  %.lcssa1 = phi ptr [ %15, %14 ]
  %.lcssa = phi i64 [ %16, %14 ]
  %37 = and i64 %2, 1
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = add nsw i64 %2, -2
  %41 = ashr exact i64 %40, 1
  %42 = icmp eq i64 %.lcssa, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = shl i64 %.lcssa, 1
  %45 = add i64 %44, 2
  store i64 %45, ptr %12, align 8
  %46 = getelementptr [8 x i8], ptr %.lcssa1, i64 %44
  %47 = getelementptr i8, ptr %46, i64 8
  %48 = load double, ptr %47, align 8
  %49 = getelementptr inbounds [8 x i8], ptr %.lcssa1, i64 %.lcssa
  store double %48, ptr %49, align 8
  %50 = add nsw i64 %45, -1
  store i64 %50, ptr %8, align 8
  br label %51

51:                                               ; preds = %43, %39, %36
  %52 = phi i64 [ %50, %43 ], [ %.lcssa, %39 ], [ %.lcssa, %36 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %.lcssa1, i64 noundef %52, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %13)
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
  br label %12

12:                                               ; preds = %21, %5
  %13 = phi ptr [ %0, %5 ], [ %22, %21 ]
  %14 = phi i64 [ %1, %5 ], [ %23, %21 ]
  %storemerge.in = add nsw i64 %14, -1
  %storemerge = sdiv i64 %storemerge.in, 2
  store i64 %storemerge, ptr %11, align 8
  %15 = icmp sgt i64 %14, %2
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = getelementptr inbounds [8 x i8], ptr %13, i64 %storemerge
  %18 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %17, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %19

19:                                               ; preds = %16, %12
  %20 = phi i1 [ false, %12 ], [ %18, %16 ]
  br i1 %20, label %21, label %28

21:                                               ; preds = %19
  %22 = load ptr, ptr %6, align 8
  %23 = load i64, ptr %11, align 8
  %24 = getelementptr inbounds [8 x i8], ptr %22, i64 %23
  %25 = load double, ptr %24, align 8
  %26 = load i64, ptr %7, align 8
  %27 = getelementptr inbounds [8 x i8], ptr %22, i64 %26
  store double %25, ptr %27, align 8
  store i64 %23, ptr %7, align 8
  br label %12, !llvm.loop !82

28:                                               ; preds = %19
  %29 = load double, ptr %9, align 8
  %30 = load ptr, ptr %6, align 8
  %31 = load i64, ptr %7, align 8
  %32 = getelementptr inbounds [8 x i8], ptr %30, i64 %31
  store double %29, ptr %32, align 8
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
  br i1 %11, label %12, label %21

12:                                               ; preds = %5
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %20

15:                                               ; preds = %12
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %19

18:                                               ; preds = %15
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %19

19:                                               ; preds = %18, %17
  br label %20

20:                                               ; preds = %19, %14
  br label %30

21:                                               ; preds = %5
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %29

24:                                               ; preds = %21
  %25 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %28

27:                                               ; preds = %24
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %28

28:                                               ; preds = %27, %26
  br label %29

29:                                               ; preds = %28, %23
  br label %30

30:                                               ; preds = %29, %20
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

9:                                                ; preds = %30, %4
  %10 = phi ptr [ %31, %30 ], [ %0, %4 ]
  br label %11

11:                                               ; preds = %15, %9
  %12 = phi ptr [ %17, %15 ], [ %10, %9 ]
  %13 = load ptr, ptr %8, align 8
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %12, ptr noundef %13)
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load ptr, ptr %6, align 8
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %17, ptr %6, align 8
  br label %11, !llvm.loop !83

18:                                               ; preds = %11
  %19 = load ptr, ptr %7, align 8
  br label %20

20:                                               ; preds = %23, %18
  %.pn = phi ptr [ %19, %18 ], [ %24, %23 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  store ptr %storemerge, ptr %7, align 8
  %21 = load ptr, ptr %8, align 8
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %21, ptr noundef nonnull %storemerge)
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load ptr, ptr %7, align 8
  br label %20, !llvm.loop !84

25:                                               ; preds = %20
  %26 = load ptr, ptr %6, align 8
  %27 = load ptr, ptr %7, align 8
  %28 = icmp ult ptr %26, %27
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  %.lcssa = phi ptr [ %26, %25 ]
  ret ptr %.lcssa

30:                                               ; preds = %25
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %26, ptr noundef nonnull %27)
  %31 = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %31, ptr %6, align 8
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
  br label %30

10:                                               ; preds = %3
  br label %11

11:                                               ; preds = %28, %10
  %12 = phi ptr [ %1, %10 ], [ %.pre, %28 ]
  %.pn = phi ptr [ %0, %10 ], [ %29, %28 ]
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  store ptr %storemerge, ptr %7, align 8
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
  %29 = phi ptr [ %25, %24 ], [ %17, %16 ]
  %.pre = load ptr, ptr %6, align 8
  br label %11, !llvm.loop !86

.loopexit:                                        ; preds = %11
  br label %30

30:                                               ; preds = %.loopexit, %9
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i8 %2, ptr %4, align 1
  store ptr %1, ptr %5, align 8
  br label %7

7:                                                ; preds = %9, %3
  %8 = phi ptr [ %0, %3 ], [ %11, %9 ]
  store ptr %8, ptr %6, align 8
  %.not = icmp eq ptr %8, %1
  br i1 %.not, label %12, label %9

9:                                                ; preds = %7
  %10 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %2)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %8, i8 %10)
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %7, !llvm.loop !87

12:                                               ; preds = %7
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
  br i1 %.not, label %14, label %7

7:                                                ; preds = %3
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %11)
  %13 = shl nsw i64 %12, 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %13, i8 %2)
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2)
  br label %14

14:                                               ; preds = %7, %3
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
  br label %9

9:                                                ; preds = %19, %4
  %10 = phi i64 [ %20, %19 ], [ %2, %4 ]
  %11 = phi ptr [ %21, %19 ], [ %1, %4 ]
  %12 = ptrtoint ptr %11 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = icmp sgt i64 %14, 128
  br i1 %15, label %16, label %.loopexit

16:                                               ; preds = %9
  %17 = icmp eq i64 %10, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  %.lcssa1 = phi ptr [ %11, %16 ]
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %.lcssa1, ptr noundef %.lcssa1, i8 %3)
  br label %22

19:                                               ; preds = %16
  %20 = add nsw i64 %10, -1
  store i64 %20, ptr %8, align 8
  %21 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %11, i8 %3)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %21, ptr noundef %11, i64 noundef %20, i8 %3)
  store ptr %21, ptr %7, align 8
  br label %9, !llvm.loop !89

.loopexit:                                        ; preds = %9
  br label %22

22:                                               ; preds = %.loopexit, %18
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
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef nonnull %12, i8 %2)
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef nonnull %12, ptr noundef %1, i8 %2)
  br label %14

13:                                               ; preds = %3
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2)
  br label %14

14:                                               ; preds = %13, %11
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
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %14 = getelementptr inbounds i8, ptr %1, i64 -8
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_(ptr noundef %0, ptr noundef nonnull %13, ptr noundef %12, ptr noundef nonnull %14, i8 %2)
  %15 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_S7_T0_(ptr noundef nonnull %13, ptr noundef %1, ptr noundef %0, i8 %2)
  ret ptr %15
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
  br label %10

10:                                               ; preds = %17, %4
  %11 = phi ptr [ %0, %4 ], [ %18, %17 ]
  %storemerge = phi ptr [ %1, %4 ], [ %19, %17 ]
  store ptr %storemerge, ptr %9, align 8
  %12 = icmp ult ptr %storemerge, %2
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %storemerge, ptr noundef %11)
  %.pre = load ptr, ptr %9, align 8
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = load ptr, ptr %7, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %16, ptr noundef %.pre, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi ptr [ %0, %15 ], [ %11, %13 ]
  %19 = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  br label %10, !llvm.loop !90

20:                                               ; preds = %10
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
  br label %7

7:                                                ; preds = %14, %3
  %8 = phi ptr [ %.pre, %14 ], [ %0, %3 ]
  %9 = phi ptr [ %15, %14 ], [ %1, %3 ]
  %10 = ptrtoint ptr %9 to i64
  %11 = ptrtoint ptr %8 to i64
  %12 = sub i64 %10, %11
  %13 = icmp sgt i64 %12, 8
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = getelementptr inbounds i8, ptr %9, i64 -8
  store ptr %15, ptr %5, align 8
  %16 = load ptr, ptr %6, align 8, !nonnull !53
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %8, ptr noundef nonnull %15, ptr noundef nonnull %15, ptr noundef nonnull align 1 dereferenceable(1) %16)
  %.pre = load ptr, ptr %4, align 8
  br label %7, !llvm.loop !91

17:                                               ; preds = %7
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
  br label %25

14:                                               ; preds = %3
  store i64 %11, ptr %6, align 8
  %15 = add nsw i64 %11, -2
  %16 = sdiv i64 %15, 2
  br label %17

17:                                               ; preds = %23, %14
  %storemerge = phi i64 [ %16, %14 ], [ %24, %23 ]
  store i64 %storemerge, ptr %7, align 8
  %18 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge
  %19 = load double, ptr %18, align 8
  %20 = load i8, ptr %2, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %storemerge, i64 noundef %11, double noundef %19, i8 %20)
  %21 = icmp eq i64 %storemerge, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %25

23:                                               ; preds = %17
  %24 = add nsw i64 %storemerge, -1
  br label %17, !llvm.loop !92

25:                                               ; preds = %22, %13
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
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = ashr exact i64 %13, 3
  %15 = load i8, ptr %3, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef 0, i64 noundef %14, double noundef %9, i8 %15)
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
  br label %14

14:                                               ; preds = %29, %5
  %15 = phi ptr [ %31, %29 ], [ %0, %5 ]
  %16 = phi i64 [ %30, %29 ], [ %1, %5 ]
  %17 = add nsw i64 %2, -1
  %18 = sdiv i64 %17, 2
  %19 = icmp slt i64 %16, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = shl i64 %16, 1
  %22 = add i64 %21, 2
  store i64 %22, ptr %12, align 8
  %23 = getelementptr inbounds [8 x i8], ptr %15, i64 %22
  %24 = getelementptr [8 x i8], ptr %15, i64 %21
  %25 = getelementptr i8, ptr %24, i64 8
  %26 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %23, ptr noundef %25)
  %.pre = load i64, ptr %12, align 8
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = add nsw i64 %.pre, -1
  store i64 %28, ptr %12, align 8
  br label %29

29:                                               ; preds = %27, %20
  %30 = phi i64 [ %28, %27 ], [ %.pre, %20 ]
  %31 = load ptr, ptr %7, align 8
  %32 = getelementptr inbounds [8 x i8], ptr %31, i64 %30
  %33 = load double, ptr %32, align 8
  %34 = load i64, ptr %8, align 8
  %35 = getelementptr inbounds [8 x i8], ptr %31, i64 %34
  store double %33, ptr %35, align 8
  store i64 %30, ptr %8, align 8
  br label %14, !llvm.loop !93

36:                                               ; preds = %14
  %.lcssa1 = phi ptr [ %15, %14 ]
  %.lcssa = phi i64 [ %16, %14 ]
  %37 = and i64 %2, 1
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = add nsw i64 %2, -2
  %41 = ashr exact i64 %40, 1
  %42 = icmp eq i64 %.lcssa, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = shl i64 %.lcssa, 1
  %45 = add i64 %44, 2
  store i64 %45, ptr %12, align 8
  %46 = getelementptr [8 x i8], ptr %.lcssa1, i64 %44
  %47 = getelementptr i8, ptr %46, i64 8
  %48 = load double, ptr %47, align 8
  %49 = getelementptr inbounds [8 x i8], ptr %.lcssa1, i64 %.lcssa
  store double %48, ptr %49, align 8
  %50 = add nsw i64 %45, -1
  store i64 %50, ptr %8, align 8
  br label %51

51:                                               ; preds = %43, %39, %36
  %52 = phi i64 [ %50, %43 ], [ %.lcssa, %39 ], [ %.lcssa, %36 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEEEvT_T0_S8_T1_RT2_(ptr noundef %.lcssa1, i64 noundef %52, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %13)
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
  br label %12

12:                                               ; preds = %21, %5
  %13 = phi ptr [ %0, %5 ], [ %22, %21 ]
  %14 = phi i64 [ %1, %5 ], [ %23, %21 ]
  %storemerge.in = add nsw i64 %14, -1
  %storemerge = sdiv i64 %storemerge.in, 2
  store i64 %storemerge, ptr %11, align 8
  %15 = icmp sgt i64 %14, %2
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = getelementptr inbounds [8 x i8], ptr %13, i64 %storemerge
  %18 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %17, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %19

19:                                               ; preds = %16, %12
  %20 = phi i1 [ false, %12 ], [ %18, %16 ]
  br i1 %20, label %21, label %28

21:                                               ; preds = %19
  %22 = load ptr, ptr %6, align 8
  %23 = load i64, ptr %11, align 8
  %24 = getelementptr inbounds [8 x i8], ptr %22, i64 %23
  %25 = load double, ptr %24, align 8
  %26 = load i64, ptr %7, align 8
  %27 = getelementptr inbounds [8 x i8], ptr %22, i64 %26
  store double %25, ptr %27, align 8
  store i64 %23, ptr %7, align 8
  br label %12, !llvm.loop !94

28:                                               ; preds = %19
  %29 = load double, ptr %9, align 8
  %30 = load ptr, ptr %6, align 8
  %31 = load i64, ptr %7, align 8
  %32 = getelementptr inbounds [8 x i8], ptr %30, i64 %31
  store double %29, ptr %32, align 8
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
  br i1 %11, label %12, label %21

12:                                               ; preds = %5
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %20

15:                                               ; preds = %12
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %19

18:                                               ; preds = %15
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %19

19:                                               ; preds = %18, %17
  br label %20

20:                                               ; preds = %19, %14
  br label %30

21:                                               ; preds = %5
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %29

24:                                               ; preds = %21
  %25 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %28

27:                                               ; preds = %24
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %28

28:                                               ; preds = %27, %26
  br label %29

29:                                               ; preds = %28, %23
  br label %30

30:                                               ; preds = %29, %20
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

9:                                                ; preds = %30, %4
  %10 = phi ptr [ %31, %30 ], [ %0, %4 ]
  br label %11

11:                                               ; preds = %15, %9
  %12 = phi ptr [ %17, %15 ], [ %10, %9 ]
  %13 = load ptr, ptr %8, align 8
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %12, ptr noundef %13)
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load ptr, ptr %6, align 8
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %17, ptr %6, align 8
  br label %11, !llvm.loop !95

18:                                               ; preds = %11
  %19 = load ptr, ptr %7, align 8
  br label %20

20:                                               ; preds = %23, %18
  %.pn = phi ptr [ %19, %18 ], [ %24, %23 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  store ptr %storemerge, ptr %7, align 8
  %21 = load ptr, ptr %8, align 8
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %21, ptr noundef nonnull %storemerge)
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load ptr, ptr %7, align 8
  br label %20, !llvm.loop !96

25:                                               ; preds = %20
  %26 = load ptr, ptr %6, align 8
  %27 = load ptr, ptr %7, align 8
  %28 = icmp ult ptr %26, %27
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  %.lcssa = phi ptr [ %26, %25 ]
  ret ptr %.lcssa

30:                                               ; preds = %25
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %26, ptr noundef nonnull %27)
  %31 = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %31, ptr %6, align 8
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
  br label %30

10:                                               ; preds = %3
  br label %11

11:                                               ; preds = %28, %10
  %12 = phi ptr [ %1, %10 ], [ %.pre, %28 ]
  %.pn = phi ptr [ %0, %10 ], [ %29, %28 ]
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  store ptr %storemerge, ptr %7, align 8
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
  %29 = phi ptr [ %25, %24 ], [ %17, %16 ]
  %.pre = load ptr, ptr %6, align 8
  br label %11, !llvm.loop !98

.loopexit:                                        ; preds = %11
  br label %30

30:                                               ; preds = %.loopexit, %9
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i8 %2, ptr %4, align 1
  store ptr %1, ptr %5, align 8
  br label %7

7:                                                ; preds = %9, %3
  %8 = phi ptr [ %0, %3 ], [ %11, %9 ]
  store ptr %8, ptr %6, align 8
  %.not = icmp eq ptr %8, %1
  br i1 %.not, label %12, label %9

9:                                                ; preds = %7
  %10 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %2)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %8, i8 %10)
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %7, !llvm.loop !99

12:                                               ; preds = %7
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
  br i1 %.not, label %13, label %6

6:                                                ; preds = %3
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %10)
  %12 = shl nsw i64 %11, 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %12, i8 undef)
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 undef)
  br label %13

13:                                               ; preds = %6, %3
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
  br label %8

8:                                                ; preds = %18, %4
  %9 = phi i64 [ %19, %18 ], [ %2, %4 ]
  %10 = phi ptr [ %20, %18 ], [ %1, %4 ]
  %11 = ptrtoint ptr %10 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = icmp sgt i64 %13, 128
  br i1 %14, label %15, label %.loopexit

15:                                               ; preds = %8
  %16 = icmp eq i64 %9, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  %.lcssa1 = phi ptr [ %10, %15 ]
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %.lcssa1, ptr noundef %.lcssa1, i8 undef)
  br label %21

18:                                               ; preds = %15
  %19 = add nsw i64 %9, -1
  store i64 %19, ptr %7, align 8
  %20 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(ptr noundef %0, ptr noundef %10, i8 undef)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %20, ptr noundef %10, i64 noundef %19, i8 undef)
  store ptr %20, ptr %6, align 8
  br label %8, !llvm.loop !101

.loopexit:                                        ; preds = %8
  br label %21

21:                                               ; preds = %.loopexit, %17
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
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef nonnull %11, i8 undef)
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %11, ptr noundef %1, i8 undef)
  br label %13

12:                                               ; preds = %3
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 undef)
  br label %13

13:                                               ; preds = %12, %10
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
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = getelementptr inbounds i8, ptr %1, i64 -8
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %11, ptr noundef nonnull %13, i8 undef)
  %14 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_(ptr noundef nonnull %12, ptr noundef %1, ptr noundef %0, i8 undef)
  ret ptr %14
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
  br label %10

10:                                               ; preds = %17, %4
  %11 = phi ptr [ %0, %4 ], [ %18, %17 ]
  %storemerge = phi ptr [ %1, %4 ], [ %19, %17 ]
  store ptr %storemerge, ptr %9, align 8
  %12 = icmp ult ptr %storemerge, %2
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %storemerge, ptr noundef %11)
  %.pre = load ptr, ptr %9, align 8
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = load ptr, ptr %7, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %0, ptr noundef %16, ptr noundef %.pre, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi ptr [ %0, %15 ], [ %11, %13 ]
  %19 = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  br label %10, !llvm.loop !102

20:                                               ; preds = %10
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
  br label %7

7:                                                ; preds = %14, %3
  %8 = phi ptr [ %.pre, %14 ], [ %0, %3 ]
  %9 = phi ptr [ %15, %14 ], [ %1, %3 ]
  %10 = ptrtoint ptr %9 to i64
  %11 = ptrtoint ptr %8 to i64
  %12 = sub i64 %10, %11
  %13 = icmp sgt i64 %12, 8
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = getelementptr inbounds i8, ptr %9, i64 -8
  store ptr %15, ptr %5, align 8
  %16 = load ptr, ptr %6, align 8, !nonnull !53
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %8, ptr noundef nonnull %15, ptr noundef nonnull %15, ptr noundef nonnull align 1 dereferenceable(1) %16)
  %.pre = load ptr, ptr %4, align 8
  br label %7, !llvm.loop !103

17:                                               ; preds = %7
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
  br label %22

12:                                               ; preds = %3
  store i64 %9, ptr %5, align 8
  %13 = add nsw i64 %9, -2
  %14 = sdiv i64 %13, 2
  br label %15

15:                                               ; preds = %20, %12
  %storemerge = phi i64 [ %14, %12 ], [ %21, %20 ]
  %16 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge
  %17 = load double, ptr %16, align 8
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %0, i64 noundef %storemerge, i64 noundef %9, double noundef %17, i8 undef)
  %18 = icmp eq i64 %storemerge, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %22

20:                                               ; preds = %15
  %21 = add nsw i64 %storemerge, -1
  br label %15, !llvm.loop !104

22:                                               ; preds = %19, %11
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
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %11, double noundef %6, i8 undef)
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
  br label %14

14:                                               ; preds = %29, %5
  %15 = phi ptr [ %31, %29 ], [ %0, %5 ]
  %16 = phi i64 [ %30, %29 ], [ %1, %5 ]
  %17 = add nsw i64 %2, -1
  %18 = sdiv i64 %17, 2
  %19 = icmp slt i64 %16, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = shl i64 %16, 1
  %22 = add i64 %21, 2
  store i64 %22, ptr %12, align 8
  %23 = getelementptr inbounds [8 x i8], ptr %15, i64 %22
  %24 = getelementptr [8 x i8], ptr %15, i64 %21
  %25 = getelementptr i8, ptr %24, i64 8
  %26 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %23, ptr noundef %25)
  %.pre = load i64, ptr %12, align 8
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = add nsw i64 %.pre, -1
  store i64 %28, ptr %12, align 8
  br label %29

29:                                               ; preds = %27, %20
  %30 = phi i64 [ %28, %27 ], [ %.pre, %20 ]
  %31 = load ptr, ptr %7, align 8
  %32 = getelementptr inbounds [8 x i8], ptr %31, i64 %30
  %33 = load double, ptr %32, align 8
  %34 = load i64, ptr %8, align 8
  %35 = getelementptr inbounds [8 x i8], ptr %31, i64 %34
  store double %33, ptr %35, align 8
  store i64 %30, ptr %8, align 8
  br label %14, !llvm.loop !105

36:                                               ; preds = %14
  %.lcssa1 = phi ptr [ %15, %14 ]
  %.lcssa = phi i64 [ %16, %14 ]
  %37 = and i64 %2, 1
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = add nsw i64 %2, -2
  %41 = ashr exact i64 %40, 1
  %42 = icmp eq i64 %.lcssa, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = shl i64 %.lcssa, 1
  %45 = add i64 %44, 2
  store i64 %45, ptr %12, align 8
  %46 = getelementptr [8 x i8], ptr %.lcssa1, i64 %44
  %47 = getelementptr i8, ptr %46, i64 8
  %48 = load double, ptr %47, align 8
  %49 = getelementptr inbounds [8 x i8], ptr %.lcssa1, i64 %.lcssa
  store double %48, ptr %49, align 8
  %50 = add nsw i64 %45, -1
  store i64 %50, ptr %8, align 8
  br label %51

51:                                               ; preds = %43, %39, %36
  %52 = phi i64 [ %50, %43 ], [ %.lcssa, %39 ], [ %.lcssa, %36 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(ptr noundef nonnull align 1 dereferenceable(1) %13, i8 undef)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_(ptr noundef %.lcssa1, i64 noundef %52, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %13)
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
  br label %12

12:                                               ; preds = %21, %5
  %13 = phi ptr [ %0, %5 ], [ %22, %21 ]
  %14 = phi i64 [ %1, %5 ], [ %23, %21 ]
  %storemerge.in = add nsw i64 %14, -1
  %storemerge = sdiv i64 %storemerge.in, 2
  store i64 %storemerge, ptr %11, align 8
  %15 = icmp sgt i64 %14, %2
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = getelementptr inbounds [8 x i8], ptr %13, i64 %storemerge
  %18 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %17, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %19

19:                                               ; preds = %16, %12
  %20 = phi i1 [ false, %12 ], [ %18, %16 ]
  br i1 %20, label %21, label %28

21:                                               ; preds = %19
  %22 = load ptr, ptr %6, align 8
  %23 = load i64, ptr %11, align 8
  %24 = getelementptr inbounds [8 x i8], ptr %22, i64 %23
  %25 = load double, ptr %24, align 8
  %26 = load i64, ptr %7, align 8
  %27 = getelementptr inbounds [8 x i8], ptr %22, i64 %26
  store double %25, ptr %27, align 8
  store i64 %23, ptr %7, align 8
  br label %12, !llvm.loop !106

28:                                               ; preds = %19
  %29 = load double, ptr %9, align 8
  %30 = load ptr, ptr %6, align 8
  %31 = load i64, ptr %7, align 8
  %32 = getelementptr inbounds [8 x i8], ptr %30, i64 %31
  store double %29, ptr %32, align 8
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
  br i1 %11, label %12, label %21

12:                                               ; preds = %5
  %13 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %20

15:                                               ; preds = %12
  %16 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %19

18:                                               ; preds = %15
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %19

19:                                               ; preds = %18, %17
  br label %20

20:                                               ; preds = %19, %14
  br label %30

21:                                               ; preds = %5
  %22 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %29

24:                                               ; preds = %21
  %25 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %28

27:                                               ; preds = %24
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %28

28:                                               ; preds = %27, %26
  br label %29

29:                                               ; preds = %28, %23
  br label %30

30:                                               ; preds = %29, %20
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

9:                                                ; preds = %30, %4
  %10 = phi ptr [ %31, %30 ], [ %0, %4 ]
  br label %11

11:                                               ; preds = %15, %9
  %12 = phi ptr [ %17, %15 ], [ %10, %9 ]
  %13 = load ptr, ptr %8, align 8
  %14 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %12, ptr noundef %13)
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load ptr, ptr %6, align 8
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %17, ptr %6, align 8
  br label %11, !llvm.loop !107

18:                                               ; preds = %11
  %19 = load ptr, ptr %7, align 8
  br label %20

20:                                               ; preds = %23, %18
  %.pn = phi ptr [ %19, %18 ], [ %24, %23 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  store ptr %storemerge, ptr %7, align 8
  %21 = load ptr, ptr %8, align 8
  %22 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %21, ptr noundef nonnull %storemerge)
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load ptr, ptr %7, align 8
  br label %20, !llvm.loop !108

25:                                               ; preds = %20
  %26 = load ptr, ptr %6, align 8
  %27 = load ptr, ptr %7, align 8
  %28 = icmp ult ptr %26, %27
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  %.lcssa = phi ptr [ %26, %25 ]
  ret ptr %.lcssa

30:                                               ; preds = %25
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %26, ptr noundef nonnull %27)
  %31 = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %31, ptr %6, align 8
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
  br label %29

10:                                               ; preds = %3
  br label %11

11:                                               ; preds = %27, %10
  %12 = phi ptr [ %1, %10 ], [ %.pre, %27 ]
  %.pn = phi ptr [ %0, %10 ], [ %28, %27 ]
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  store ptr %storemerge, ptr %7, align 8
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
  %28 = phi ptr [ %25, %24 ], [ %17, %16 ]
  %.pre = load ptr, ptr %6, align 8
  br label %11, !llvm.loop !110

.loopexit:                                        ; preds = %11
  br label %29

29:                                               ; preds = %.loopexit, %9
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8
  br label %6

6:                                                ; preds = %8, %3
  %7 = phi ptr [ %0, %3 ], [ %10, %8 ]
  store ptr %7, ptr %5, align 8
  %.not = icmp eq ptr %7, %1
  br i1 %.not, label %11, label %8

8:                                                ; preds = %6
  %9 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 undef)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %7, i8 undef)
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %6, !llvm.loop !111

11:                                               ; preds = %6
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

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
