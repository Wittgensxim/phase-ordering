; ModuleID = 'results\paper_full\Adobe-C++_functionobjects\Adobe-C++_functionobjects.ll'
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
  %3 = load ptr, ptr @results, align 8
  %4 = icmp eq ptr %3, null
  %.pre = load i32, ptr @allocated_results, align 4
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr @current_test, align 4
  %.not = icmp slt i32 %6, %.pre
  br i1 %.not, label %16, label %7

7:                                                ; preds = %5, %2
  %8 = add nsw i32 %.pre, 10
  store i32 %8, ptr @allocated_results, align 4
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 4
  %11 = call ptr @realloc(ptr noundef %3, i64 noundef %10) #13
  store ptr %11, ptr @results, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %._crit_edge

._crit_edge:                                      ; preds = %7
  %.pre1 = load i32, ptr @current_test, align 4
  br label %16

13:                                               ; preds = %7
  %14 = load i32, ptr @allocated_results, align 4
  %15 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str, i32 noundef %14)
  call void @exit(i32 noundef -1) #14
  unreachable

16:                                               ; preds = %._crit_edge, %5
  %17 = phi i32 [ %.pre1, %._crit_edge ], [ %6, %5 ]
  %18 = phi ptr [ %11, %._crit_edge ], [ %3, %5 ]
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds [16 x i8], ptr %18, i64 %19
  store double %0, ptr %20, align 8
  %21 = load ptr, ptr @results, align 8
  %22 = getelementptr inbounds [16 x i8], ptr %21, i64 %19
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %1, ptr %23, align 8
  %24 = add nsw i32 %17, 1
  store i32 %24, ptr @current_test, align 4
  ret void
}

; Function Attrs: allocsize(1)
declare dso_local ptr @realloc(ptr noundef, i64 noundef) #1

declare dso_local noundef i32 @__mingw_printf(ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z9summarizePKciiii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = sitofp i32 %1 to double
  %7 = sitofp i32 %2 to double
  %8 = fmul nnan double %6, %7
  %9 = fdiv double %8, 1.000000e+06
  %10 = load i32, ptr @current_test, align 4
  %11 = icmp slt i32 0, %10
  br i1 %11, label %.lr.ph, label %24

.lr.ph:                                           ; preds = %5
  br label %12

12:                                               ; preds = %.lr.ph, %12
  %.010 = phi i32 [ 12, %.lr.ph ], [ %spec.select, %12 ]
  %.039 = phi i32 [ 0, %.lr.ph ], [ %21, %12 ]
  %13 = load ptr, ptr @results, align 8
  %14 = zext nneg i32 %.039 to i64
  %15 = getelementptr inbounds nuw [16 x i8], ptr %13, i64 %14
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8
  %18 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %17) #15
  %19 = trunc i64 %18 to i32
  %20 = icmp slt i32 %.010, %19
  %spec.select = select i1 %20, i32 %19, i32 %.010
  %21 = add nuw nsw i32 %.039, 1
  %22 = load i32, ptr @current_test, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %12, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %12
  %split = phi i32 [ %spec.select, %12 ]
  br label %24

24:                                               ; preds = %._crit_edge, %5
  %.0.lcssa = phi i32 [ %split, %._crit_edge ], [ 12, %5 ]
  %25 = add nsw i32 %.0.lcssa, -12
  %26 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.1, i32 noundef %25, ptr noundef nonnull @.str.2)
  %27 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.3, i32 noundef %.0.lcssa, ptr noundef nonnull @.str.2)
  %28 = load i32, ptr @current_test, align 4
  %29 = icmp slt i32 0, %28
  br i1 %29, label %.lr.ph13, label %.preheader7

.lr.ph13:                                         ; preds = %24
  br label %31

..preheader7_crit_edge:                           ; preds = %31
  %split14 = phi i32 [ %50, %31 ]
  br label %.preheader7

.preheader7:                                      ; preds = %..preheader7_crit_edge, %24
  %.lcssa8 = phi i32 [ %split14, %..preheader7_crit_edge ], [ %28, %24 ]
  %30 = icmp slt i32 0, %.lcssa8
  br i1 %30, label %.lr.ph17, label %60

.lr.ph17:                                         ; preds = %.preheader7
  br label %52

31:                                               ; preds = %.lr.ph13, %31
  %.1411 = phi i32 [ 0, %.lr.ph13 ], [ %49, %31 ]
  %32 = load ptr, ptr @results, align 8
  %33 = zext nneg i32 %.1411 to i64
  %34 = getelementptr inbounds nuw [16 x i8], ptr %32, i64 %33
  %35 = getelementptr inbounds nuw i8, ptr %34, i64 8
  %36 = load ptr, ptr %35, align 8
  %37 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %36) #15
  %38 = trunc i64 %37 to i32
  %39 = sub i32 %.0.lcssa, %38
  %40 = load ptr, ptr @results, align 8
  %41 = getelementptr inbounds nuw [16 x i8], ptr %40, i64 %33
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 8
  %43 = load ptr, ptr %42, align 8
  %44 = load double, ptr %41, align 8
  %45 = fdiv double %9, %44
  %46 = load double, ptr %40, align 8
  %47 = fdiv double %44, %46
  %48 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.4, i32 noundef %.1411, i32 noundef %39, ptr noundef nonnull @.str.5, ptr noundef %43, double noundef %44, double noundef %45, double noundef %47)
  %49 = add nuw nsw i32 %.1411, 1
  %50 = load i32, ptr @current_test, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %31, label %..preheader7_crit_edge, !llvm.loop !9

52:                                               ; preds = %.lr.ph17, %52
  %.0216 = phi double [ 0.000000e+00, %.lr.ph17 ], [ %57, %52 ]
  %.215 = phi i32 [ 0, %.lr.ph17 ], [ %58, %52 ]
  %53 = load ptr, ptr @results, align 8
  %54 = zext nneg i32 %.215 to i64
  %55 = getelementptr inbounds nuw [16 x i8], ptr %53, i64 %54
  %56 = load double, ptr %55, align 8
  %57 = fadd double %.0216, %56
  %58 = add nuw nsw i32 %.215, 1
  %59 = icmp slt i32 %58, %.lcssa8
  br i1 %59, label %52, label %._crit_edge18, !llvm.loop !10

._crit_edge18:                                    ; preds = %52
  %split19 = phi double [ %57, %52 ]
  br label %60

60:                                               ; preds = %._crit_edge18, %.preheader7
  %.02.lcssa = phi double [ %split19, %._crit_edge18 ], [ 0.000000e+00, %.preheader7 ]
  %61 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.6, ptr noundef %0, double noundef %.02.lcssa)
  %62 = load i32, ptr @current_test, align 4
  %63 = icmp sle i32 %62, 1
  %.not = icmp eq i32 %4, 0
  %or.cond = or i1 %63, %.not
  br i1 %or.cond, label %81, label %.preheader

.preheader:                                       ; preds = %60
  br label %64

64:                                               ; preds = %.preheader, %64
  %.0121 = phi double [ 0.000000e+00, %.preheader ], [ %72, %64 ]
  %.320 = phi i32 [ 1, %.preheader ], [ %73, %64 ]
  %65 = load ptr, ptr @results, align 8
  %66 = zext nneg i32 %.320 to i64
  %67 = getelementptr inbounds nuw [16 x i8], ptr %65, i64 %66
  %68 = load double, ptr %67, align 8
  %69 = load double, ptr %65, align 8
  %70 = fdiv double %68, %69
  %71 = call double @log(double noundef %70) #15
  %72 = fadd double %.0121, %71
  %73 = add nuw nsw i32 %.320, 1
  %.pre = load i32, ptr @current_test, align 4
  %74 = icmp slt i32 %73, %.pre
  br i1 %74, label %64, label %75, !llvm.loop !11

75:                                               ; preds = %64
  %.lcssa = phi i32 [ %.pre, %64 ]
  %.01.lcssa = phi double [ %72, %64 ]
  %76 = add nsw i32 %.lcssa, -1
  %77 = sitofp i32 %76 to double
  %78 = fdiv double %.01.lcssa, %77
  %79 = call double @exp(double noundef %78) #15
  %80 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.7, ptr noundef %0, double noundef %79)
  br label %81

81:                                               ; preds = %75, %60
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
  %3 = load i32, ptr @current_test, align 4
  %4 = icmp slt i32 0, %3
  br i1 %4, label %.lr.ph, label %17

.lr.ph:                                           ; preds = %2
  br label %5

5:                                                ; preds = %.lr.ph, %5
  %.05 = phi i32 [ 12, %.lr.ph ], [ %spec.select, %5 ]
  %.024 = phi i32 [ 0, %.lr.ph ], [ %14, %5 ]
  %6 = load ptr, ptr @results, align 8
  %7 = zext nneg i32 %.024 to i64
  %8 = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %10 = load ptr, ptr %9, align 8
  %11 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %10) #15
  %12 = trunc i64 %11 to i32
  %13 = icmp slt i32 %.05, %12
  %spec.select = select i1 %13, i32 %12, i32 %.05
  %14 = add nuw nsw i32 %.024, 1
  %15 = load i32, ptr @current_test, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %5, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %5
  %split = phi i32 [ %spec.select, %5 ]
  br label %17

17:                                               ; preds = %._crit_edge, %2
  %.0.lcssa = phi i32 [ %split, %._crit_edge ], [ 12, %2 ]
  %18 = add nsw i32 %.0.lcssa, -12
  %19 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %18, ptr noundef nonnull @.str.2)
  %20 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %.0.lcssa, ptr noundef nonnull @.str.2)
  %21 = load i32, ptr @current_test, align 4
  %22 = icmp slt i32 0, %21
  br i1 %22, label %.lr.ph8, label %.preheader

.lr.ph8:                                          ; preds = %17
  br label %24

..preheader_crit_edge:                            ; preds = %24
  %split9 = phi i32 [ %40, %24 ]
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %17
  %.lcssa = phi i32 [ %split9, %..preheader_crit_edge ], [ %21, %17 ]
  %23 = icmp slt i32 0, %.lcssa
  br i1 %23, label %.lr.ph12, label %50

.lr.ph12:                                         ; preds = %.preheader
  br label %42

24:                                               ; preds = %.lr.ph8, %24
  %.136 = phi i32 [ 0, %.lr.ph8 ], [ %39, %24 ]
  %25 = load ptr, ptr @results, align 8
  %26 = zext nneg i32 %.136 to i64
  %27 = getelementptr inbounds nuw [16 x i8], ptr %25, i64 %26
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 8
  %29 = load ptr, ptr %28, align 8
  %30 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %29) #15
  %31 = trunc i64 %30 to i32
  %32 = sub i32 %.0.lcssa, %31
  %33 = load ptr, ptr @results, align 8
  %34 = getelementptr inbounds nuw [16 x i8], ptr %33, i64 %26
  %35 = getelementptr inbounds nuw i8, ptr %34, i64 8
  %36 = load ptr, ptr %35, align 8
  %37 = load double, ptr %34, align 8
  %38 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %.136, i32 noundef %32, ptr noundef nonnull @.str.5, ptr noundef %36, double noundef %37)
  %39 = add nuw nsw i32 %.136, 1
  %40 = load i32, ptr @current_test, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %24, label %..preheader_crit_edge, !llvm.loop !13

42:                                               ; preds = %.lr.ph12, %42
  %.0111 = phi double [ 0.000000e+00, %.lr.ph12 ], [ %47, %42 ]
  %.210 = phi i32 [ 0, %.lr.ph12 ], [ %48, %42 ]
  %43 = load ptr, ptr @results, align 8
  %44 = zext nneg i32 %.210 to i64
  %45 = getelementptr inbounds nuw [16 x i8], ptr %43, i64 %44
  %46 = load double, ptr %45, align 8
  %47 = fadd double %.0111, %46
  %48 = add nuw nsw i32 %.210, 1
  %49 = icmp slt i32 %48, %.lcssa
  br i1 %49, label %42, label %._crit_edge13, !llvm.loop !14

._crit_edge13:                                    ; preds = %42
  %split14 = phi double [ %47, %42 ]
  br label %50

50:                                               ; preds = %._crit_edge13, %.preheader
  %.01.lcssa = phi double [ %split14, %._crit_edge13 ], [ 0.000000e+00, %.preheader ]
  %51 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %1, double noundef %.01.lcssa)
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
define dso_local noundef range(i32 -1, 2) i32 @_Z19less_than_function1PKvS0_(ptr noundef %0, ptr noundef %1) #5 {
  %3 = load double, ptr %0, align 8
  %4 = load double, ptr %1, align 8
  %5 = fcmp olt double %3, %4
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = fcmp ogt double %3, %4
  %. = select i1 %7, i32 1, i32 0
  br label %8

8:                                                ; preds = %6, %2
  %.0 = phi i32 [ -1, %2 ], [ %., %6 ]
  ret i32 %.0
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
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 8
  br i1 %7, label %8, label %27

8:                                                ; preds = %3
  %9 = load double, ptr %0, align 8
  br label %10

10:                                               ; preds = %23, %8
  %.01 = phi ptr [ %0, %8 ], [ %.12.lcssa, %23 ]
  %.0 = phi ptr [ %1, %8 ], [ %.lcssa, %23 ]
  br label %11

11:                                               ; preds = %11, %10
  %.1 = phi ptr [ %.0, %10 ], [ %12, %11 ]
  %12 = getelementptr inbounds i8, ptr %.1, i64 -8
  %13 = load double, ptr %12, align 8
  %14 = call noundef zeroext i1 %2(double noundef %9, double noundef %13)
  br i1 %14, label %11, label %15, !llvm.loop !15

15:                                               ; preds = %11
  %.1.lcssa = phi ptr [ %.1, %11 ]
  %.lcssa = phi ptr [ %12, %11 ]
  %16 = icmp ult ptr %.01, %.lcssa
  br i1 %16, label %.preheader, label %26

.preheader:                                       ; preds = %15
  br label %17

17:                                               ; preds = %17, %.preheader
  %.12 = phi ptr [ %20, %17 ], [ %.01, %.preheader ]
  %18 = load double, ptr %.12, align 8
  %19 = call noundef zeroext i1 %2(double noundef %18, double noundef %9)
  %20 = getelementptr inbounds nuw i8, ptr %.12, i64 8
  br i1 %19, label %17, label %21, !llvm.loop !16

21:                                               ; preds = %17
  %.12.lcssa = phi ptr [ %.12, %17 ]
  %22 = icmp ult ptr %.12.lcssa, %.lcssa
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = load double, ptr %.lcssa, align 8
  %25 = load double, ptr %.12.lcssa, align 8
  store double %25, ptr %.lcssa, align 8
  store double %24, ptr %.12.lcssa, align 8
  br label %10, !llvm.loop !17

26:                                               ; preds = %21, %15
  %.1.lcssa.lcssa = phi ptr [ %.1.lcssa, %21 ], [ %.1.lcssa, %15 ]
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %0, ptr noundef %.1.lcssa.lcssa, ptr noundef %2)
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %.1.lcssa.lcssa, ptr noundef %1, ptr noundef %2)
  br label %27

27:                                               ; preds = %26, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 8
  br i1 %7, label %8, label %27

8:                                                ; preds = %3
  %9 = load double, ptr %0, align 8
  br label %10

10:                                               ; preds = %23, %8
  %.01 = phi ptr [ %0, %8 ], [ %.12.lcssa, %23 ]
  %.0 = phi ptr [ %1, %8 ], [ %.lcssa, %23 ]
  br label %11

11:                                               ; preds = %11, %10
  %.1 = phi ptr [ %.0, %10 ], [ %12, %11 ]
  %12 = getelementptr inbounds i8, ptr %.1, i64 -8
  %13 = load double, ptr %12, align 8
  %14 = call noundef zeroext i1 %2(double noundef %9, double noundef %13)
  br i1 %14, label %11, label %15, !llvm.loop !18

15:                                               ; preds = %11
  %.1.lcssa = phi ptr [ %.1, %11 ]
  %.lcssa = phi ptr [ %12, %11 ]
  %16 = icmp ult ptr %.01, %.lcssa
  br i1 %16, label %.preheader, label %26

.preheader:                                       ; preds = %15
  br label %17

17:                                               ; preds = %17, %.preheader
  %.12 = phi ptr [ %20, %17 ], [ %.01, %.preheader ]
  %18 = load double, ptr %.12, align 8
  %19 = call noundef zeroext i1 %2(double noundef %18, double noundef %9)
  %20 = getelementptr inbounds nuw i8, ptr %.12, i64 8
  br i1 %19, label %17, label %21, !llvm.loop !19

21:                                               ; preds = %17
  %.12.lcssa = phi ptr [ %.12, %17 ]
  %22 = icmp ult ptr %.12.lcssa, %.lcssa
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = load double, ptr %.lcssa, align 8
  %25 = load double, ptr %.12.lcssa, align 8
  store double %25, ptr %.lcssa, align 8
  store double %24, ptr %.12.lcssa, align 8
  br label %10, !llvm.loop !20

26:                                               ; preds = %21, %15
  %.1.lcssa.lcssa = phi ptr [ %.1.lcssa, %21 ], [ %.1.lcssa, %15 ]
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %0, ptr noundef %.1.lcssa.lcssa, ptr noundef %2)
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %.1.lcssa.lcssa, ptr noundef %1, ptr noundef %2)
  br label %27

27:                                               ; preds = %26, %3
  ret void
}

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) #6 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 @atoi(ptr noundef %6)
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi i32 [ %7, %4 ], [ 300, %2 ]
  %10 = icmp sgt i32 %0, 2
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %13 = load ptr, ptr %12, align 8
  %14 = call i32 @atoi(ptr noundef %13)
  br label %15

15:                                               ; preds = %8, %11
  %16 = phi i32 [ %14, %11 ], [ 10000, %8 ]
  %17 = add nsw i32 %16, 123
  call void @srand(i32 noundef %17)
  %18 = sext i32 %16 to i64
  %19 = icmp slt i32 %16, 0
  %20 = shl nsw i64 %18, 3
  %21 = select i1 %19, i64 -1, i64 %20
  %22 = call noalias noundef nonnull ptr @_Znay(i64 noundef %21) #16
  %23 = icmp slt i32 0, %16
  br i1 %23, label %.lr.ph, label %31

.lr.ph:                                           ; preds = %15
  br label %24

24:                                               ; preds = %.lr.ph, %24
  %.013 = phi i32 [ 0, %.lr.ph ], [ %29, %24 ]
  %25 = call i32 @rand()
  %26 = sitofp i32 %25 to double
  %27 = zext nneg i32 %.013 to i64
  %28 = getelementptr inbounds nuw [8 x i8], ptr %22, i64 %27
  store double %26, ptr %28, align 8
  %29 = add nuw nsw i32 %.013, 1
  %30 = icmp slt i32 %29, %16
  br i1 %30, label %24, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %24
  br label %31

31:                                               ; preds = %._crit_edge, %15
  %32 = call noalias noundef nonnull ptr @_Znay(i64 noundef %21) #16
  %33 = icmp slt i32 0, %9
  br i1 %33, label %.lr.ph16, label %.preheader12

.lr.ph16:                                         ; preds = %31
  br label %35

..preheader12_crit_edge:                          ; preds = %35
  br label %.preheader12

.preheader12:                                     ; preds = %..preheader12_crit_edge, %31
  %34 = icmp slt i32 0, %9
  br i1 %34, label %.lr.ph18, label %.preheader11

.lr.ph18:                                         ; preds = %.preheader12
  br label %42

35:                                               ; preds = %.lr.ph16, %35
  %.0114 = phi i32 [ 0, %.lr.ph16 ], [ %39, %35 ]
  %36 = getelementptr inbounds [8 x i8], ptr %22, i64 %18
  %37 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef nonnull %22, ptr noundef nonnull %36, ptr noundef nonnull %32)
  call void @qsort(ptr noundef nonnull %32, i64 noundef %18, i64 noundef 8, ptr noundef nonnull @_Z19less_than_function1PKvS0_)
  %38 = getelementptr inbounds [8 x i8], ptr %32, i64 %18
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef nonnull %32, ptr noundef nonnull %38)
  %39 = add nuw nsw i32 %.0114, 1
  %40 = icmp slt i32 %39, %9
  br i1 %40, label %35, label %..preheader12_crit_edge, !llvm.loop !22

..preheader11_crit_edge:                          ; preds = %42
  br label %.preheader11

.preheader11:                                     ; preds = %..preheader11_crit_edge, %.preheader12
  %41 = icmp slt i32 0, %9
  br i1 %41, label %.lr.ph20, label %.preheader10

.lr.ph20:                                         ; preds = %.preheader11
  br label %49

42:                                               ; preds = %.lr.ph18, %42
  %.117 = phi i32 [ 0, %.lr.ph18 ], [ %46, %42 ]
  %43 = getelementptr inbounds [8 x i8], ptr %22, i64 %18
  %44 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef nonnull %22, ptr noundef nonnull %43, ptr noundef nonnull %32)
  %45 = getelementptr inbounds [8 x i8], ptr %32, i64 %18
  call void @_Z18quicksort_functionPdS_PFbddE(ptr noundef nonnull %32, ptr noundef nonnull %45, ptr noundef nonnull @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef nonnull %32, ptr noundef nonnull %45)
  %46 = add nuw nsw i32 %.117, 1
  %47 = icmp slt i32 %46, %9
  br i1 %47, label %42, label %..preheader11_crit_edge, !llvm.loop !23

..preheader10_crit_edge:                          ; preds = %49
  br label %.preheader10

.preheader10:                                     ; preds = %..preheader10_crit_edge, %.preheader11
  %48 = icmp slt i32 0, %9
  br i1 %48, label %.lr.ph22, label %.preheader9

.lr.ph22:                                         ; preds = %.preheader10
  br label %56

49:                                               ; preds = %.lr.ph20, %49
  %.219 = phi i32 [ 0, %.lr.ph20 ], [ %53, %49 ]
  %50 = getelementptr inbounds [8 x i8], ptr %22, i64 %18
  %51 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef nonnull %22, ptr noundef nonnull %50, ptr noundef nonnull %32)
  %52 = getelementptr inbounds [8 x i8], ptr %32, i64 %18
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %32, ptr noundef nonnull %52, ptr noundef nonnull @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef nonnull %32, ptr noundef nonnull %52)
  %53 = add nuw nsw i32 %.219, 1
  %54 = icmp slt i32 %53, %9
  br i1 %54, label %49, label %..preheader10_crit_edge, !llvm.loop !24

..preheader9_crit_edge:                           ; preds = %56
  br label %.preheader9

.preheader9:                                      ; preds = %..preheader9_crit_edge, %.preheader10
  %55 = icmp slt i32 0, %9
  br i1 %55, label %.lr.ph24, label %.preheader8

.lr.ph24:                                         ; preds = %.preheader9
  br label %63

56:                                               ; preds = %.lr.ph22, %56
  %.321 = phi i32 [ 0, %.lr.ph22 ], [ %60, %56 ]
  %57 = getelementptr inbounds [8 x i8], ptr %22, i64 %18
  %58 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef nonnull %22, ptr noundef nonnull %57, ptr noundef nonnull %32)
  %59 = getelementptr inbounds [8 x i8], ptr %32, i64 %18
  call void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef nonnull %32, ptr noundef nonnull %59)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef nonnull %32, ptr noundef nonnull %59)
  %60 = add nuw nsw i32 %.321, 1
  %61 = icmp slt i32 %60, %9
  br i1 %61, label %56, label %..preheader9_crit_edge, !llvm.loop !25

..preheader8_crit_edge:                           ; preds = %63
  br label %.preheader8

.preheader8:                                      ; preds = %..preheader8_crit_edge, %.preheader9
  %62 = icmp slt i32 0, %9
  br i1 %62, label %.lr.ph26, label %.preheader7

.lr.ph26:                                         ; preds = %.preheader8
  br label %70

63:                                               ; preds = %.lr.ph24, %63
  %.423 = phi i32 [ 0, %.lr.ph24 ], [ %67, %63 ]
  %64 = getelementptr inbounds [8 x i8], ptr %22, i64 %18
  %65 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef nonnull %22, ptr noundef nonnull %64, ptr noundef nonnull %32)
  %66 = getelementptr inbounds [8 x i8], ptr %32, i64 %18
  call void @_ZSt4sortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %32, ptr noundef nonnull %66, ptr noundef nonnull @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef nonnull %32, ptr noundef nonnull %66)
  %67 = add nuw nsw i32 %.423, 1
  %68 = icmp slt i32 %67, %9
  br i1 %68, label %63, label %..preheader8_crit_edge, !llvm.loop !26

..preheader7_crit_edge:                           ; preds = %70
  br label %.preheader7

.preheader7:                                      ; preds = %..preheader7_crit_edge, %.preheader8
  %69 = icmp slt i32 0, %9
  br i1 %69, label %.lr.ph28, label %.preheader6

.lr.ph28:                                         ; preds = %.preheader7
  br label %77

70:                                               ; preds = %.lr.ph26, %70
  %.525 = phi i32 [ 0, %.lr.ph26 ], [ %74, %70 ]
  %71 = getelementptr inbounds [8 x i8], ptr %22, i64 %18
  %72 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef nonnull %22, ptr noundef nonnull %71, ptr noundef nonnull %32)
  %73 = getelementptr inbounds [8 x i8], ptr %32, i64 %18
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef nonnull %32, ptr noundef nonnull %73, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef nonnull %32, ptr noundef nonnull %73)
  %74 = add nuw nsw i32 %.525, 1
  %75 = icmp slt i32 %74, %9
  br i1 %75, label %70, label %..preheader7_crit_edge, !llvm.loop !27

..preheader6_crit_edge:                           ; preds = %77
  br label %.preheader6

.preheader6:                                      ; preds = %..preheader6_crit_edge, %.preheader7
  %76 = icmp slt i32 0, %9
  br i1 %76, label %.lr.ph30, label %.preheader5

.lr.ph30:                                         ; preds = %.preheader6
  br label %84

77:                                               ; preds = %.lr.ph28, %77
  %.627 = phi i32 [ 0, %.lr.ph28 ], [ %81, %77 ]
  %78 = getelementptr inbounds [8 x i8], ptr %32, i64 %18
  call void @_ZSt4sortIPd17less_than_functorEvT_S2_T0_(ptr noundef nonnull %32, ptr noundef nonnull %78, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef nonnull %32, ptr noundef nonnull %78)
  %79 = getelementptr inbounds [8 x i8], ptr %22, i64 %18
  %80 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef nonnull %22, ptr noundef nonnull %79, ptr noundef nonnull %32)
  %81 = add nuw nsw i32 %.627, 1
  %82 = icmp slt i32 %81, %9
  br i1 %82, label %77, label %..preheader6_crit_edge, !llvm.loop !28

..preheader5_crit_edge:                           ; preds = %84
  br label %.preheader5

.preheader5:                                      ; preds = %..preheader5_crit_edge, %.preheader6
  %83 = icmp slt i32 0, %9
  br i1 %83, label %.lr.ph32, label %.preheader4

.lr.ph32:                                         ; preds = %.preheader5
  br label %91

84:                                               ; preds = %.lr.ph30, %84
  %.729 = phi i32 [ 0, %.lr.ph30 ], [ %88, %84 ]
  %85 = getelementptr inbounds [8 x i8], ptr %22, i64 %18
  %86 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef nonnull %22, ptr noundef nonnull %85, ptr noundef nonnull %32)
  %87 = getelementptr inbounds [8 x i8], ptr %32, i64 %18
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef nonnull %32, ptr noundef nonnull %87, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef nonnull %32, ptr noundef nonnull %87)
  %88 = add nuw nsw i32 %.729, 1
  %89 = icmp slt i32 %88, %9
  br i1 %89, label %84, label %..preheader5_crit_edge, !llvm.loop !29

..preheader4_crit_edge:                           ; preds = %91
  br label %.preheader4

.preheader4:                                      ; preds = %..preheader4_crit_edge, %.preheader5
  %90 = icmp slt i32 0, %9
  br i1 %90, label %.lr.ph34, label %.preheader3

.lr.ph34:                                         ; preds = %.preheader4
  br label %98

91:                                               ; preds = %.lr.ph32, %91
  %.831 = phi i32 [ 0, %.lr.ph32 ], [ %95, %91 ]
  %92 = getelementptr inbounds [8 x i8], ptr %22, i64 %18
  %93 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef nonnull %22, ptr noundef nonnull %92, ptr noundef nonnull %32)
  %94 = getelementptr inbounds [8 x i8], ptr %32, i64 %18
  call void @_ZSt4sortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef nonnull %32, ptr noundef nonnull %94, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef nonnull %32, ptr noundef nonnull %94)
  %95 = add nuw nsw i32 %.831, 1
  %96 = icmp slt i32 %95, %9
  br i1 %96, label %91, label %..preheader4_crit_edge, !llvm.loop !30

..preheader3_crit_edge:                           ; preds = %98
  br label %.preheader3

.preheader3:                                      ; preds = %..preheader3_crit_edge, %.preheader4
  %97 = icmp slt i32 0, %9
  br i1 %97, label %.lr.ph36, label %.preheader2

.lr.ph36:                                         ; preds = %.preheader3
  br label %105

98:                                               ; preds = %.lr.ph34, %98
  %.933 = phi i32 [ 0, %.lr.ph34 ], [ %102, %98 ]
  %99 = getelementptr inbounds [8 x i8], ptr %22, i64 %18
  %100 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef nonnull %22, ptr noundef nonnull %99, ptr noundef nonnull %32)
  %101 = getelementptr inbounds [8 x i8], ptr %32, i64 %18
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef nonnull %32, ptr noundef nonnull %101, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef nonnull %32, ptr noundef nonnull %101)
  %102 = add nuw nsw i32 %.933, 1
  %103 = icmp slt i32 %102, %9
  br i1 %103, label %98, label %..preheader3_crit_edge, !llvm.loop !31

..preheader2_crit_edge:                           ; preds = %105
  br label %.preheader2

.preheader2:                                      ; preds = %..preheader2_crit_edge, %.preheader3
  %104 = icmp slt i32 0, %9
  br i1 %104, label %.lr.ph38, label %.preheader

.lr.ph38:                                         ; preds = %.preheader2
  br label %112

105:                                              ; preds = %.lr.ph36, %105
  %.1035 = phi i32 [ 0, %.lr.ph36 ], [ %109, %105 ]
  %106 = getelementptr inbounds [8 x i8], ptr %22, i64 %18
  %107 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef nonnull %22, ptr noundef nonnull %106, ptr noundef nonnull %32)
  %108 = getelementptr inbounds [8 x i8], ptr %32, i64 %18
  call void @_ZSt4sortIPdSt4lessIdEEvT_S3_T0_(ptr noundef nonnull %32, ptr noundef nonnull %108, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef nonnull %32, ptr noundef nonnull %108)
  %109 = add nuw nsw i32 %.1035, 1
  %110 = icmp slt i32 %109, %9
  br i1 %110, label %105, label %..preheader2_crit_edge, !llvm.loop !32

..preheader_crit_edge:                            ; preds = %112
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %.preheader2
  %111 = icmp slt i32 0, %9
  br i1 %111, label %.lr.ph40, label %124

.lr.ph40:                                         ; preds = %.preheader
  br label %118

112:                                              ; preds = %.lr.ph38, %112
  %.1137 = phi i32 [ 0, %.lr.ph38 ], [ %116, %112 ]
  %113 = getelementptr inbounds [8 x i8], ptr %22, i64 %18
  %114 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef nonnull %22, ptr noundef nonnull %113, ptr noundef nonnull %32)
  %115 = getelementptr inbounds [8 x i8], ptr %32, i64 %18
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef nonnull %32, ptr noundef nonnull %115)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef nonnull %32, ptr noundef nonnull %115)
  %116 = add nuw nsw i32 %.1137, 1
  %117 = icmp slt i32 %116, %9
  br i1 %117, label %112, label %..preheader_crit_edge, !llvm.loop !33

118:                                              ; preds = %.lr.ph40, %118
  %.1239 = phi i32 [ 0, %.lr.ph40 ], [ %122, %118 ]
  %119 = getelementptr inbounds [8 x i8], ptr %22, i64 %18
  %120 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef nonnull %22, ptr noundef nonnull %119, ptr noundef nonnull %32)
  %121 = getelementptr inbounds [8 x i8], ptr %32, i64 %18
  call void @_ZSt4sortIPdEvT_S1_(ptr noundef nonnull %32, ptr noundef nonnull %121)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef nonnull %32, ptr noundef nonnull %121)
  %122 = add nuw nsw i32 %.1239, 1
  %123 = icmp slt i32 %122, %9
  br i1 %123, label %118, label %._crit_edge41, !llvm.loop !34

._crit_edge41:                                    ; preds = %118
  br label %124

124:                                              ; preds = %._crit_edge41, %.preheader
  call void @_ZdaPv(ptr noundef nonnull %32) #17
  call void @_ZdaPv(ptr noundef nonnull %22) #17
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
  %.02 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not3 = icmp eq ptr %.02, %1
  br i1 %.not3, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %4

3:                                                ; preds = %4
  %.01 = phi ptr [ %8, %4 ]
  %.pn = phi ptr [ %.05, %4 ]
  %.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %.not = icmp eq ptr %.0, %1
  br i1 %.not, label %..loopexit_crit_edge, label %4, !llvm.loop !35

4:                                                ; preds = %.lr.ph, %3
  %.05 = phi ptr [ %.02, %.lr.ph ], [ %.0, %3 ]
  %.014 = phi ptr [ %0, %.lr.ph ], [ %.01, %3 ]
  %5 = load double, ptr %.05, align 8
  %6 = load double, ptr %.014, align 8
  %7 = fcmp olt double %5, %6
  %8 = getelementptr inbounds nuw i8, ptr %.014, i64 8
  br i1 %7, label %9, label %3

9:                                                ; preds = %4
  %10 = load i32, ptr @current_test, align 4
  %11 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.11, i32 noundef %10)
  br label %12

..loopexit_crit_edge:                             ; preds = %3
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %2
  br label %12

12:                                               ; preds = %.loopexit, %9
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef %0, ptr noundef %1) #0 comdat {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = icmp sgt i64 %5, 8
  br i1 %6, label %7, label %26

7:                                                ; preds = %2
  %8 = load double, ptr %0, align 8
  br label %9

9:                                                ; preds = %22, %7
  %.01 = phi ptr [ %0, %7 ], [ %.12.lcssa, %22 ]
  %.0 = phi ptr [ %1, %7 ], [ %.lcssa, %22 ]
  br label %10

10:                                               ; preds = %10, %9
  %.1 = phi ptr [ %.0, %9 ], [ %11, %10 ]
  %11 = getelementptr inbounds i8, ptr %.1, i64 -8
  %12 = load double, ptr %11, align 8
  %13 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %8, double noundef %12)
  br i1 %13, label %10, label %14, !llvm.loop !36

14:                                               ; preds = %10
  %.1.lcssa = phi ptr [ %.1, %10 ]
  %.lcssa = phi ptr [ %11, %10 ]
  %15 = icmp ult ptr %.01, %.lcssa
  br i1 %15, label %.preheader, label %25

.preheader:                                       ; preds = %14
  br label %16

16:                                               ; preds = %16, %.preheader
  %.12 = phi ptr [ %19, %16 ], [ %.01, %.preheader ]
  %17 = load double, ptr %.12, align 8
  %18 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %17, double noundef %8)
  %19 = getelementptr inbounds nuw i8, ptr %.12, i64 8
  br i1 %18, label %16, label %20, !llvm.loop !37

20:                                               ; preds = %16
  %.12.lcssa = phi ptr [ %.12, %16 ]
  %21 = icmp ult ptr %.12.lcssa, %.lcssa
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = load double, ptr %.lcssa, align 8
  %24 = load double, ptr %.12.lcssa, align 8
  store double %24, ptr %.lcssa, align 8
  store double %23, ptr %.12.lcssa, align 8
  br label %9, !llvm.loop !38

25:                                               ; preds = %20, %14
  %.1.lcssa.lcssa = phi ptr [ %.1.lcssa, %20 ], [ %.1.lcssa, %14 ]
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %0, ptr noundef %.1.lcssa.lcssa, ptr noundef nonnull @_Z19less_than_function2dd)
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %.1.lcssa.lcssa, ptr noundef %1, ptr noundef nonnull @_Z19less_than_function2dd)
  br label %26

26:                                               ; preds = %25, %2
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
  %5 = alloca double, align 8
  store i8 %2, ptr %4, align 1
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = icmp sgt i64 %8, 8
  br i1 %9, label %10, label %27

10:                                               ; preds = %3
  %11 = load double, ptr %0, align 8
  store double %11, ptr %5, align 8
  br label %12

12:                                               ; preds = %23, %10
  %.01 = phi ptr [ %0, %10 ], [ %.12.lcssa, %23 ]
  %.0 = phi ptr [ %1, %10 ], [ %.lcssa, %23 ]
  br label %13

13:                                               ; preds = %13, %12
  %.1 = phi ptr [ %.0, %12 ], [ %14, %13 ]
  %14 = getelementptr inbounds i8, ptr %.1, i64 -8
  %15 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %14)
  br i1 %15, label %13, label %16, !llvm.loop !39

16:                                               ; preds = %13
  %.1.lcssa = phi ptr [ %.1, %13 ]
  %.lcssa = phi ptr [ %14, %13 ]
  %17 = icmp ult ptr %.01, %.lcssa
  br i1 %17, label %.preheader, label %26

.preheader:                                       ; preds = %16
  br label %18

18:                                               ; preds = %18, %.preheader
  %.12 = phi ptr [ %20, %18 ], [ %.01, %.preheader ]
  %19 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %.12, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %20 = getelementptr inbounds nuw i8, ptr %.12, i64 8
  br i1 %19, label %18, label %21, !llvm.loop !40

21:                                               ; preds = %18
  %.12.lcssa = phi ptr [ %.12, %18 ]
  %22 = icmp ult ptr %.12.lcssa, %.lcssa
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = load double, ptr %.lcssa, align 8
  %25 = load double, ptr %.12.lcssa, align 8
  store double %25, ptr %.lcssa, align 8
  store double %24, ptr %.12.lcssa, align 8
  br label %12, !llvm.loop !41

26:                                               ; preds = %21, %16
  %.1.lcssa.lcssa = phi ptr [ %.1.lcssa, %21 ], [ %.1.lcssa, %16 ]
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef nonnull %0, ptr noundef %.1.lcssa.lcssa, i8 undef)
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %.1.lcssa.lcssa, ptr noundef %1, i8 undef)
  br label %27

27:                                               ; preds = %26, %3
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
  %5 = alloca double, align 8
  store i8 %2, ptr %4, align 1
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = icmp sgt i64 %8, 8
  br i1 %9, label %10, label %27

10:                                               ; preds = %3
  %11 = load double, ptr %0, align 8
  store double %11, ptr %5, align 8
  br label %12

12:                                               ; preds = %23, %10
  %.01 = phi ptr [ %0, %10 ], [ %.12.lcssa, %23 ]
  %.0 = phi ptr [ %1, %10 ], [ %.lcssa, %23 ]
  br label %13

13:                                               ; preds = %13, %12
  %.1 = phi ptr [ %.0, %12 ], [ %14, %13 ]
  %14 = getelementptr inbounds i8, ptr %.1, i64 -8
  %15 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %14)
  br i1 %15, label %13, label %16, !llvm.loop !42

16:                                               ; preds = %13
  %.1.lcssa = phi ptr [ %.1, %13 ]
  %.lcssa = phi ptr [ %14, %13 ]
  %17 = icmp ult ptr %.01, %.lcssa
  br i1 %17, label %.preheader, label %26

.preheader:                                       ; preds = %16
  br label %18

18:                                               ; preds = %18, %.preheader
  %.12 = phi ptr [ %20, %18 ], [ %.01, %.preheader ]
  %19 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %.12, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %20 = getelementptr inbounds nuw i8, ptr %.12, i64 8
  br i1 %19, label %18, label %21, !llvm.loop !43

21:                                               ; preds = %18
  %.12.lcssa = phi ptr [ %.12, %18 ]
  %22 = icmp ult ptr %.12.lcssa, %.lcssa
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = load double, ptr %.lcssa, align 8
  %25 = load double, ptr %.12.lcssa, align 8
  store double %25, ptr %.lcssa, align 8
  store double %24, ptr %.12.lcssa, align 8
  br label %12, !llvm.loop !44

26:                                               ; preds = %21, %16
  %.1.lcssa.lcssa = phi ptr [ %.1.lcssa, %21 ], [ %.1.lcssa, %16 ]
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef nonnull %0, ptr noundef %.1.lcssa.lcssa, i8 undef)
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %.1.lcssa.lcssa, ptr noundef %1, i8 undef)
  br label %27

27:                                               ; preds = %26, %3
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
  %5 = alloca double, align 8
  store i8 %2, ptr %4, align 1
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = icmp sgt i64 %8, 8
  br i1 %9, label %10, label %27

10:                                               ; preds = %3
  %11 = load double, ptr %0, align 8
  store double %11, ptr %5, align 8
  br label %12

12:                                               ; preds = %23, %10
  %.01 = phi ptr [ %0, %10 ], [ %.12.lcssa, %23 ]
  %.0 = phi ptr [ %1, %10 ], [ %.lcssa, %23 ]
  br label %13

13:                                               ; preds = %13, %12
  %.1 = phi ptr [ %.0, %12 ], [ %14, %13 ]
  %14 = getelementptr inbounds i8, ptr %.1, i64 -8
  %15 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %14)
  br i1 %15, label %13, label %16, !llvm.loop !45

16:                                               ; preds = %13
  %.1.lcssa = phi ptr [ %.1, %13 ]
  %.lcssa = phi ptr [ %14, %13 ]
  %17 = icmp ult ptr %.01, %.lcssa
  br i1 %17, label %.preheader, label %26

.preheader:                                       ; preds = %16
  br label %18

18:                                               ; preds = %18, %.preheader
  %.12 = phi ptr [ %20, %18 ], [ %.01, %.preheader ]
  %19 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %.12, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %20 = getelementptr inbounds nuw i8, ptr %.12, i64 8
  br i1 %19, label %18, label %21, !llvm.loop !46

21:                                               ; preds = %18
  %.12.lcssa = phi ptr [ %.12, %18 ]
  %22 = icmp ult ptr %.12.lcssa, %.lcssa
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = load double, ptr %.lcssa, align 8
  %25 = load double, ptr %.12.lcssa, align 8
  store double %25, ptr %.lcssa, align 8
  store double %24, ptr %.12.lcssa, align 8
  br label %12, !llvm.loop !47

26:                                               ; preds = %21, %16
  %.1.lcssa.lcssa = phi ptr [ %.1.lcssa, %21 ], [ %.1.lcssa, %16 ]
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef nonnull %0, ptr noundef %.1.lcssa.lcssa, i8 undef)
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %.1.lcssa.lcssa, ptr noundef %1, i8 undef)
  br label %27

27:                                               ; preds = %26, %3
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
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = icmp sgt i64 %5, 8
  br i1 %6, label %7, label %25

7:                                                ; preds = %2
  %8 = load double, ptr %0, align 8
  br label %9

9:                                                ; preds = %23, %7
  %10 = phi double [ %8, %7 ], [ %.lcssa, %23 ]
  %.01 = phi ptr [ %0, %7 ], [ %.12.lcssa, %23 ]
  %.0 = phi ptr [ %1, %7 ], [ %.lcssa7, %23 ]
  br label %11

11:                                               ; preds = %11, %9
  %.1 = phi ptr [ %.0, %9 ], [ %12, %11 ]
  %12 = getelementptr inbounds i8, ptr %.1, i64 -8
  %13 = load double, ptr %12, align 8
  %14 = fcmp olt double %8, %13
  br i1 %14, label %11, label %15, !llvm.loop !48

15:                                               ; preds = %11
  %.1.lcssa = phi ptr [ %.1, %11 ]
  %.lcssa7 = phi ptr [ %12, %11 ]
  %.lcssa = phi double [ %13, %11 ]
  %16 = icmp ult ptr %.01, %.lcssa7
  br i1 %16, label %.preheader, label %24

.preheader:                                       ; preds = %15
  %17 = fcmp olt double %10, %8
  br i1 %17, label %.lr.ph, label %21

.lr.ph:                                           ; preds = %.preheader
  br label %18

18:                                               ; preds = %.lr.ph, %18
  %.129 = phi ptr [ %.01, %.lr.ph ], [ %19, %18 ]
  %19 = getelementptr inbounds nuw i8, ptr %.129, i64 8
  %.pre = load double, ptr %19, align 8
  %20 = fcmp olt double %.pre, %8
  br i1 %20, label %18, label %._crit_edge, !llvm.loop !49

._crit_edge:                                      ; preds = %18
  %split = phi double [ %.pre, %18 ]
  %split10 = phi ptr [ %19, %18 ]
  br label %21

21:                                               ; preds = %._crit_edge, %.preheader
  %.lcssa8 = phi double [ %split, %._crit_edge ], [ %10, %.preheader ]
  %.12.lcssa = phi ptr [ %split10, %._crit_edge ], [ %.01, %.preheader ]
  %22 = icmp ult ptr %.12.lcssa, %.lcssa7
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  store double %.lcssa8, ptr %.lcssa7, align 8
  store double %.lcssa, ptr %.12.lcssa, align 8
  br label %9, !llvm.loop !50

24:                                               ; preds = %21, %15
  %.1.lcssa.lcssa = phi ptr [ %.1.lcssa, %21 ], [ %.1.lcssa, %15 ]
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef nonnull %0, ptr noundef %.1.lcssa.lcssa)
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %.1.lcssa.lcssa, ptr noundef %1)
  br label %25

25:                                               ; preds = %24, %2
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
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 8
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %6, i1 false)
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 %6
  br label %15

10:                                               ; preds = %3
  %11 = icmp eq i64 %6, 8
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = load double, ptr %0, align 8
  store double %13, ptr %2, align 8
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %15

15:                                               ; preds = %10, %12, %8
  %.0 = phi ptr [ %9, %8 ], [ %14, %12 ], [ %2, %10 ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #10

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %2) #0 comdat {
  %4 = inttoptr i64 %2 to ptr
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %12, label %5

5:                                                ; preds = %3
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %9)
  %11 = shl nsw i64 %10, 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %11, i64 %2)
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %2)
  br label %12

12:                                               ; preds = %5, %3
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
  %5 = inttoptr i64 %3 to ptr
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = icmp sgt i64 %8, 128
  br i1 %9, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %10

10:                                               ; preds = %.lr.ph, %13
  %.04 = phi i64 [ %2, %.lr.ph ], [ %14, %13 ]
  %.013 = phi ptr [ %1, %.lr.ph ], [ %15, %13 ]
  %11 = icmp eq i64 %.04, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  %.01.lcssa2 = phi ptr [ %.013, %10 ]
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %.01.lcssa2, ptr noundef %.01.lcssa2, i64 %3)
  br label %19

13:                                               ; preds = %10
  %14 = add nsw i64 %.04, -1
  %15 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %.013, i64 %3)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %15, ptr noundef %.013, i64 noundef %14, i64 %3)
  %16 = ptrtoint ptr %15 to i64
  %17 = sub i64 %16, %7
  %18 = icmp sgt i64 %17, 128
  br i1 %18, label %10, label %..loopexit_crit_edge, !llvm.loop !51

..loopexit_crit_edge:                             ; preds = %13
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %19

19:                                               ; preds = %.loopexit, %12
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
  %4 = inttoptr i64 %2 to ptr
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 128
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef nonnull %10, i64 %2)
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef nonnull %10, ptr noundef %1, i64 %2)
  br label %12

11:                                               ; preds = %3
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %2)
  br label %12

12:                                               ; preds = %11, %9
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
  %4 = inttoptr i64 %2 to ptr
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  %9 = sdiv i64 %8, 2
  %10 = getelementptr inbounds [8 x i8], ptr %0, i64 %9
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = getelementptr inbounds i8, ptr %1, i64 -8
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %10, ptr noundef nonnull %12, i64 %2)
  %13 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_S7_T0_(ptr noundef nonnull %11, ptr noundef %1, ptr noundef %0, i64 %2)
  ret ptr %13
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = inttoptr i64 %3 to ptr
  store ptr %6, ptr %5, align 8
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %7 = icmp ult ptr %1, %2
  br i1 %7, label %.lr.ph, label %14

.lr.ph:                                           ; preds = %4
  br label %8

8:                                                ; preds = %.lr.ph, %11
  %.01 = phi ptr [ %1, %.lr.ph ], [ %12, %11 ]
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %.01, ptr noundef %0)
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %.01, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %11

11:                                               ; preds = %8, %10
  %12 = getelementptr inbounds nuw i8, ptr %.01, i64 8
  %13 = icmp ult ptr %12, %2
  br i1 %13, label %8, label %._crit_edge, !llvm.loop !52

._crit_edge:                                      ; preds = %11
  br label %14

14:                                               ; preds = %._crit_edge, %4
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 8
  br i1 %7, label %.lr.ph, label %13

.lr.ph:                                           ; preds = %3
  br label %8

8:                                                ; preds = %.lr.ph, %8
  %.01 = phi ptr [ %1, %.lr.ph ], [ %9, %8 ]
  %9 = getelementptr inbounds i8, ptr %.01, i64 -8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %10 = ptrtoint ptr %9 to i64
  %11 = sub i64 %10, %5
  %12 = icmp sgt i64 %11, 8
  br i1 %12, label %8, label %._crit_edge, !llvm.loop !53

._crit_edge:                                      ; preds = %8
  br label %13

13:                                               ; preds = %._crit_edge, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp slt i64 %6, 9
  br i1 %7, label %18, label %8

8:                                                ; preds = %3
  %9 = lshr exact i64 %6, 3
  %10 = add nsw i64 %9, -2
  %11 = sdiv i64 %10, 2
  br label %12

12:                                               ; preds = %12, %8
  %.0 = phi i64 [ %11, %8 ], [ %17, %12 ]
  %13 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0
  %14 = load double, ptr %13, align 8
  %15 = load i64, ptr %2, align 8
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %.0, i64 noundef %9, double noundef %14, i64 %15)
  %16 = icmp eq i64 %.0, 0
  %17 = add nsw i64 %.0, -1
  br i1 %16, label %.loopexit, label %12, !llvm.loop !54

.loopexit:                                        ; preds = %12
  br label %18

18:                                               ; preds = %.loopexit, %3
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
  %5 = load double, ptr %2, align 8
  %6 = load double, ptr %0, align 8
  store double %6, ptr %2, align 8
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = load i64, ptr %3, align 8
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %10, double noundef %5, i64 %11)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, i64 %4) #0 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val", align 8
  %8 = inttoptr i64 %4 to ptr
  store ptr %8, ptr %6, align 8
  %9 = add nsw i64 %2, -1
  %10 = sdiv i64 %9, 2
  %11 = icmp slt i64 %1, %10
  br i1 %11, label %.lr.ph, label %24

.lr.ph:                                           ; preds = %5
  br label %12

12:                                               ; preds = %.lr.ph, %12
  %.03 = phi i64 [ %1, %.lr.ph ], [ %spec.select, %12 ]
  %13 = shl i64 %.03, 1
  %14 = add i64 %13, 2
  %15 = getelementptr inbounds [8 x i8], ptr %0, i64 %14
  %16 = getelementptr [8 x i8], ptr %0, i64 %13
  %17 = getelementptr i8, ptr %16, i64 8
  %18 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %15, ptr noundef %17)
  %19 = or disjoint i64 %13, 1
  %spec.select = select i1 %18, i64 %19, i64 %14
  %20 = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select
  %21 = load double, ptr %20, align 8
  %22 = getelementptr inbounds [8 x i8], ptr %0, i64 %.03
  store double %21, ptr %22, align 8
  %23 = icmp slt i64 %spec.select, %10
  br i1 %23, label %12, label %._crit_edge, !llvm.loop !55

._crit_edge:                                      ; preds = %12
  %split = phi i64 [ %spec.select, %12 ]
  br label %24

24:                                               ; preds = %._crit_edge, %5
  %.0.lcssa = phi i64 [ %split, %._crit_edge ], [ %1, %5 ]
  %25 = and i64 %2, 1
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = add nsw i64 %2, -2
  %29 = ashr exact i64 %28, 1
  %30 = icmp eq i64 %.0.lcssa, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = shl nsw i64 %.0.lcssa, 1
  %33 = getelementptr [8 x i8], ptr %0, i64 %32
  %34 = getelementptr i8, ptr %33, i64 8
  %35 = load double, ptr %34, align 8
  %36 = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store double %35, ptr %36, align 8
  %37 = or disjoint i64 %32, 1
  br label %38

38:                                               ; preds = %31, %27, %24
  %.12 = phi i64 [ %37, %31 ], [ %.0.lcssa, %27 ], [ %.0.lcssa, %24 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEEEvT_T0_S8_T1_RT2_(ptr noundef %0, i64 noundef %.12, i64 noundef %1, double noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %7)
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
  %6 = alloca double, align 8
  store double %3, ptr %6, align 8
  %.0.in2 = add nsw i64 %1, -1
  %.03 = sdiv i64 %.0.in2, 2
  %7 = icmp sgt i64 %1, %2
  br i1 %7, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %5
  br label %8

8:                                                ; preds = %.lr.ph, %11
  %.05 = phi i64 [ %.03, %.lr.ph ], [ %.0, %11 ]
  %.014 = phi i64 [ %1, %.lr.ph ], [ %.05, %11 ]
  %9 = getelementptr inbounds [8 x i8], ptr %0, i64 %.05
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEclIPddEEbT_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br i1 %10, label %11, label %..critedge_crit_edge6

11:                                               ; preds = %8
  %12 = load double, ptr %9, align 8
  %13 = getelementptr inbounds [8 x i8], ptr %0, i64 %.014
  store double %12, ptr %13, align 8
  %.0.in = add nsw i64 %.05, -1
  %.0 = sdiv i64 %.0.in, 2
  %14 = icmp sgt i64 %.05, %2
  br i1 %14, label %8, label %..critedge_crit_edge, !llvm.loop !56

..critedge_crit_edge:                             ; preds = %11
  %split = phi i64 [ %.05, %11 ]
  br label %.critedge

..critedge_crit_edge6:                            ; preds = %8
  %split7 = phi i64 [ %.014, %8 ]
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge6, %..critedge_crit_edge, %5
  %.01.lcssa = phi i64 [ %split, %..critedge_crit_edge ], [ %split7, %..critedge_crit_edge6 ], [ %1, %5 ]
  %15 = load double, ptr %6, align 8
  %16 = getelementptr inbounds [8 x i8], ptr %0, i64 %.01.lcssa
  store double %15, ptr %16, align 8
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
  %7 = inttoptr i64 %4 to ptr
  store ptr %7, ptr %6, align 8
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %2)
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %2, ptr noundef %3)
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %23

12:                                               ; preds = %9
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %3)
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %23

15:                                               ; preds = %12
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %23

16:                                               ; preds = %5
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %3)
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %23

19:                                               ; preds = %16
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %2, ptr noundef %3)
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %23

22:                                               ; preds = %19
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %23

23:                                               ; preds = %18, %22, %21, %11, %15, %14
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = inttoptr i64 %3 to ptr
  store ptr %6, ptr %5, align 8
  br label %7

7:                                                ; preds = %16, %4
  %.01 = phi ptr [ %1, %4 ], [ %.12.lcssa, %16 ]
  %.0 = phi ptr [ %0, %4 ], [ %17, %16 ]
  br label %8

8:                                                ; preds = %8, %7
  %.1 = phi ptr [ %.0, %7 ], [ %10, %8 ]
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %.1, ptr noundef %2)
  %10 = getelementptr inbounds nuw i8, ptr %.1, i64 8
  br i1 %9, label %8, label %.preheader, !llvm.loop !57

.preheader:                                       ; preds = %8
  %.1.lcssa = phi ptr [ %.1, %8 ]
  br label %11

11:                                               ; preds = %.preheader, %11
  %.01.pn = phi ptr [ %.12, %11 ], [ %.01, %.preheader ]
  %.12 = getelementptr inbounds i8, ptr %.01.pn, i64 -8
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %2, ptr noundef nonnull %.12)
  br i1 %12, label %11, label %13, !llvm.loop !58

13:                                               ; preds = %11
  %.12.lcssa = phi ptr [ %.12, %11 ]
  %14 = icmp ult ptr %.1.lcssa, %.12.lcssa
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  %.1.lcssa.lcssa = phi ptr [ %.1.lcssa, %13 ]
  ret ptr %.1.lcssa.lcssa

16:                                               ; preds = %13
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1.lcssa, ptr noundef nonnull %.12.lcssa)
  %17 = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 8
  br label %7, !llvm.loop !59
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
  %5 = inttoptr i64 %2 to ptr
  store ptr %5, ptr %4, align 8
  %6 = icmp eq ptr %0, %1
  br i1 %6, label %19, label %.preheader

.preheader:                                       ; preds = %3
  %.02 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not3 = icmp eq ptr %.02, %1
  br i1 %.not3, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  br label %7

7:                                                ; preds = %.lr.ph, %18
  %.05 = phi ptr [ %.02, %.lr.ph ], [ %.0, %18 ]
  %.pn4 = phi ptr [ %0, %.lr.ph ], [ %.05, %18 ]
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %.05, ptr noundef %0)
  br i1 %8, label %9, label %15

9:                                                ; preds = %7
  %10 = load double, ptr %.05, align 8
  %11 = getelementptr inbounds nuw i8, ptr %.pn4, i64 16
  %12 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %13 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %.05)
  %14 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %12, ptr noundef %13, ptr noundef nonnull %11)
  store double %10, ptr %0, align 8
  br label %18

15:                                               ; preds = %7
  %16 = load i64, ptr %4, align 8
  %17 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %16)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef nonnull %.05, i64 %17)
  br label %18

18:                                               ; preds = %9, %15
  %.0 = getelementptr inbounds nuw i8, ptr %.05, i64 8
  %.not = icmp eq ptr %.0, %1
  br i1 %.not, label %..loopexit_crit_edge, label %7, !llvm.loop !60

..loopexit_crit_edge:                             ; preds = %18
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.preheader
  br label %19

19:                                               ; preds = %.loopexit, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %2) #0 comdat {
  %4 = inttoptr i64 %2 to ptr
  %.not1 = icmp eq ptr %0, %1
  br i1 %.not1, label %8, label %.lr.ph

.lr.ph:                                           ; preds = %3
  br label %5

5:                                                ; preds = %.lr.ph, %5
  %.02 = phi ptr [ %0, %.lr.ph ], [ %7, %5 ]
  %6 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %2)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %.02, i64 %6)
  %7 = getelementptr inbounds nuw i8, ptr %.02, i64 8
  %.not = icmp eq ptr %7, %1
  br i1 %.not, label %._crit_edge, label %5, !llvm.loop !61

._crit_edge:                                      ; preds = %5
  br label %8

8:                                                ; preds = %._crit_edge, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %0, i64 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %4 = alloca double, align 8
  %5 = inttoptr i64 %1 to ptr
  store ptr %5, ptr %3, align 8
  %6 = load double, ptr %0, align 8
  store double %6, ptr %4, align 8
  %.012 = getelementptr inbounds i8, ptr %0, i64 -8
  %7 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEclIdPdEEbRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %.012)
  br i1 %7, label %.lr.ph, label %11

.lr.ph:                                           ; preds = %2
  br label %8

8:                                                ; preds = %.lr.ph, %8
  %.014 = phi ptr [ %.012, %.lr.ph ], [ %.01, %8 ]
  %.03 = phi ptr [ %0, %.lr.ph ], [ %.014, %8 ]
  %9 = load double, ptr %.014, align 8
  store double %9, ptr %.03, align 8
  %.01 = getelementptr inbounds i8, ptr %.014, i64 -8
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEclIdPdEEbRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %.01)
  br i1 %10, label %8, label %._crit_edge, !llvm.loop !62

._crit_edge:                                      ; preds = %8
  %split = phi ptr [ %.014, %8 ]
  br label %11

11:                                               ; preds = %._crit_edge, %2
  %.0.lcssa = phi ptr [ %split, %._crit_edge ], [ %0, %2 ]
  %12 = load double, ptr %4, align 8
  store double %12, ptr %.0.lcssa, align 8
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
  store ptr %2, ptr %4, align 8
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  %9 = sub nsw i64 0, %8
  call void @_ZSt9__advanceIPdxEvRT_T0_St26random_access_iterator_tag(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %9, i8 undef)
  %10 = icmp sgt i64 %8, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load ptr, ptr %4, align 8
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %12, ptr align 8 %0, i64 %7, i1 false)
  br label %18

13:                                               ; preds = %3
  %14 = icmp eq i64 %7, 8
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = load double, ptr %0, align 8
  %17 = load ptr, ptr %4, align 8
  store double %16, ptr %17, align 8
  br label %18

18:                                               ; preds = %13, %15, %11
  %19 = load ptr, ptr %4, align 8
  ret ptr %19
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZSt9__advanceIPdxEvRT_T0_St26random_access_iterator_tag(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, i8 %2) #5 comdat {
  %4 = call i1 @llvm.is.constant.i64(i64 %1)
  %5 = icmp eq i64 %1, 1
  %or.cond = and i1 %4, %5
  br i1 %or.cond, label %6, label %9

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %15

9:                                                ; preds = %3
  %10 = call i1 @llvm.is.constant.i64(i64 %1)
  %11 = icmp eq i64 %1, -1
  %or.cond2 = and i1 %10, %11
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr inbounds [8 x i8], ptr %12, i64 %1
  %14 = getelementptr inbounds i8, ptr %12, i64 -8
  %storemerge = select i1 %or.cond2, ptr %14, ptr %13
  br label %15

15:                                               ; preds = %9, %6
  %storemerge1 = phi ptr [ %storemerge, %9 ], [ %8, %6 ]
  store ptr %storemerge1, ptr %0, align 8
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
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %11, label %4

4:                                                ; preds = %3
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  %9 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %8)
  %10 = shl nsw i64 %9, 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %10, i8 %2)
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2)
  br label %11

11:                                               ; preds = %4, %3
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
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 128
  br i1 %8, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %9

9:                                                ; preds = %.lr.ph, %12
  %.04 = phi i64 [ %2, %.lr.ph ], [ %13, %12 ]
  %.013 = phi ptr [ %1, %.lr.ph ], [ %14, %12 ]
  %10 = icmp eq i64 %.04, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  %.01.lcssa2 = phi ptr [ %.013, %9 ]
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %.01.lcssa2, ptr noundef %.01.lcssa2, i8 %3)
  br label %18

12:                                               ; preds = %9
  %13 = add nsw i64 %.04, -1
  %14 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %.013, i8 %3)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %14, ptr noundef %.013, i64 noundef %13, i8 %3)
  %15 = ptrtoint ptr %14 to i64
  %16 = sub i64 %15, %6
  %17 = icmp sgt i64 %16, 128
  br i1 %17, label %9, label %..loopexit_crit_edge, !llvm.loop !63

..loopexit_crit_edge:                             ; preds = %12
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %18

18:                                               ; preds = %.loopexit, %11
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 128
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef nonnull %9, i8 %2)
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef nonnull %9, ptr noundef %1, i8 %2)
  br label %11

10:                                               ; preds = %3
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2)
  br label %11

11:                                               ; preds = %10, %8
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
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 3
  %8 = sdiv i64 %7, 2
  %9 = getelementptr inbounds [8 x i8], ptr %0, i64 %8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = getelementptr inbounds i8, ptr %1, i64 -8
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_S6_T0_(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %9, ptr noundef nonnull %11, i8 %2)
  %12 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_S6_T0_(ptr noundef nonnull %10, ptr noundef %1, ptr noundef %0, i8 %2)
  ret ptr %12
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  store i8 %3, ptr %5, align 1
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %6 = icmp ult ptr %1, %2
  br i1 %6, label %.lr.ph, label %13

.lr.ph:                                           ; preds = %4
  br label %7

7:                                                ; preds = %.lr.ph, %10
  %.01 = phi ptr [ %1, %.lr.ph ], [ %11, %10 ]
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.01, ptr noundef %0)
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %.01, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %10

10:                                               ; preds = %7, %9
  %11 = getelementptr inbounds nuw i8, ptr %.01, i64 8
  %12 = icmp ult ptr %11, %2
  br i1 %12, label %7, label %._crit_edge, !llvm.loop !64

._crit_edge:                                      ; preds = %10
  br label %13

13:                                               ; preds = %._crit_edge, %4
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 8
  br i1 %7, label %.lr.ph, label %13

.lr.ph:                                           ; preds = %3
  br label %8

8:                                                ; preds = %.lr.ph, %8
  %.01 = phi ptr [ %1, %.lr.ph ], [ %9, %8 ]
  %9 = getelementptr inbounds i8, ptr %.01, i64 -8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %10 = ptrtoint ptr %9 to i64
  %11 = sub i64 %10, %5
  %12 = icmp sgt i64 %11, 8
  br i1 %12, label %8, label %._crit_edge, !llvm.loop !65

._crit_edge:                                      ; preds = %8
  br label %13

13:                                               ; preds = %._crit_edge, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp slt i64 %6, 9
  br i1 %7, label %18, label %8

8:                                                ; preds = %3
  %9 = lshr exact i64 %6, 3
  %10 = add nsw i64 %9, -2
  %11 = sdiv i64 %10, 2
  br label %12

12:                                               ; preds = %12, %8
  %.0 = phi i64 [ %11, %8 ], [ %17, %12 ]
  %13 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0
  %14 = load double, ptr %13, align 8
  %15 = load i8, ptr %2, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %.0, i64 noundef %9, double noundef %14, i8 %15)
  %16 = icmp eq i64 %.0, 0
  %17 = add nsw i64 %.0, -1
  br i1 %16, label %.loopexit, label %12, !llvm.loop !66

.loopexit:                                        ; preds = %12
  br label %18

18:                                               ; preds = %.loopexit, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) #5 comdat align 2 {
  %4 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %4
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #0 comdat {
  %5 = load double, ptr %2, align 8
  %6 = load double, ptr %0, align 8
  store double %6, ptr %2, align 8
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = load i8, ptr %3, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %10, double noundef %5, i8 %11)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, i8 %4) #0 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.1", align 1
  store i8 %4, ptr %6, align 1
  %8 = add nsw i64 %2, -1
  %9 = sdiv i64 %8, 2
  %10 = icmp slt i64 %1, %9
  br i1 %10, label %.lr.ph, label %23

.lr.ph:                                           ; preds = %5
  br label %11

11:                                               ; preds = %.lr.ph, %11
  %.03 = phi i64 [ %1, %.lr.ph ], [ %spec.select, %11 ]
  %12 = shl i64 %.03, 1
  %13 = add i64 %12, 2
  %14 = getelementptr inbounds [8 x i8], ptr %0, i64 %13
  %15 = getelementptr [8 x i8], ptr %0, i64 %12
  %16 = getelementptr i8, ptr %15, i64 8
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %14, ptr noundef %16)
  %18 = or disjoint i64 %12, 1
  %spec.select = select i1 %17, i64 %18, i64 %13
  %19 = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select
  %20 = load double, ptr %19, align 8
  %21 = getelementptr inbounds [8 x i8], ptr %0, i64 %.03
  store double %20, ptr %21, align 8
  %22 = icmp slt i64 %spec.select, %9
  br i1 %22, label %11, label %._crit_edge, !llvm.loop !67

._crit_edge:                                      ; preds = %11
  %split = phi i64 [ %spec.select, %11 ]
  br label %23

23:                                               ; preds = %._crit_edge, %5
  %.0.lcssa = phi i64 [ %split, %._crit_edge ], [ %1, %5 ]
  %24 = and i64 %2, 1
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = add nsw i64 %2, -2
  %28 = ashr exact i64 %27, 1
  %29 = icmp eq i64 %.0.lcssa, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = shl nsw i64 %.0.lcssa, 1
  %32 = getelementptr [8 x i8], ptr %0, i64 %31
  %33 = getelementptr i8, ptr %32, i64 8
  %34 = load double, ptr %33, align 8
  %35 = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store double %34, ptr %35, align 8
  %36 = or disjoint i64 %31, 1
  br label %37

37:                                               ; preds = %30, %26, %23
  %.12 = phi i64 [ %36, %30 ], [ %.0.lcssa, %26 ], [ %.0.lcssa, %23 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %0, i64 noundef %.12, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %7)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #0 comdat {
  %6 = alloca double, align 8
  store double %3, ptr %6, align 8
  %.0.in2 = add nsw i64 %1, -1
  %.03 = sdiv i64 %.0.in2, 2
  %7 = icmp sgt i64 %1, %2
  br i1 %7, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %5
  br label %8

8:                                                ; preds = %.lr.ph, %11
  %.05 = phi i64 [ %.03, %.lr.ph ], [ %.0, %11 ]
  %.014 = phi i64 [ %1, %.lr.ph ], [ %.05, %11 ]
  %9 = getelementptr inbounds [8 x i8], ptr %0, i64 %.05
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br i1 %10, label %11, label %..critedge_crit_edge6

11:                                               ; preds = %8
  %12 = load double, ptr %9, align 8
  %13 = getelementptr inbounds [8 x i8], ptr %0, i64 %.014
  store double %12, ptr %13, align 8
  %.0.in = add nsw i64 %.05, -1
  %.0 = sdiv i64 %.0.in, 2
  %14 = icmp sgt i64 %.05, %2
  br i1 %14, label %8, label %..critedge_crit_edge, !llvm.loop !68

..critedge_crit_edge:                             ; preds = %11
  %split = phi i64 [ %.05, %11 ]
  br label %.critedge

..critedge_crit_edge6:                            ; preds = %8
  %split7 = phi i64 [ %.014, %8 ]
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge6, %..critedge_crit_edge, %5
  %.01.lcssa = phi i64 [ %split, %..critedge_crit_edge ], [ %split7, %..critedge_crit_edge6 ], [ %1, %5 ]
  %15 = load double, ptr %6, align 8
  %16 = getelementptr inbounds [8 x i8], ptr %0, i64 %.01.lcssa
  store double %15, ptr %16, align 8
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
  store i8 %4, ptr %6, align 1
  %7 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %2)
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %22

11:                                               ; preds = %8
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %22

14:                                               ; preds = %11
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %22

15:                                               ; preds = %5
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %22

18:                                               ; preds = %15
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %22

21:                                               ; preds = %18
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %22

22:                                               ; preds = %17, %21, %20, %10, %14, %13
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #5 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  store i8 %3, ptr %5, align 1
  br label %6

6:                                                ; preds = %15, %4
  %.01 = phi ptr [ %1, %4 ], [ %.12.lcssa, %15 ]
  %.0 = phi ptr [ %0, %4 ], [ %16, %15 ]
  br label %7

7:                                                ; preds = %7, %6
  %.1 = phi ptr [ %.0, %6 ], [ %9, %7 ]
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.1, ptr noundef %2)
  %9 = getelementptr inbounds nuw i8, ptr %.1, i64 8
  br i1 %8, label %7, label %.preheader, !llvm.loop !69

.preheader:                                       ; preds = %7
  %.1.lcssa = phi ptr [ %.1, %7 ]
  br label %10

10:                                               ; preds = %.preheader, %10
  %.01.pn = phi ptr [ %.12, %10 ], [ %.01, %.preheader ]
  %.12 = getelementptr inbounds i8, ptr %.01.pn, i64 -8
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef nonnull %.12)
  br i1 %11, label %10, label %12, !llvm.loop !70

12:                                               ; preds = %10
  %.12.lcssa = phi ptr [ %.12, %10 ]
  %13 = icmp ult ptr %.1.lcssa, %.12.lcssa
  br i1 %13, label %15, label %14

14:                                               ; preds = %12
  %.1.lcssa.lcssa = phi ptr [ %.1.lcssa, %12 ]
  ret ptr %.1.lcssa.lcssa

15:                                               ; preds = %12
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1.lcssa, ptr noundef nonnull %.12.lcssa)
  %16 = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 8
  br label %6, !llvm.loop !71
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  store i8 %2, ptr %4, align 1
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %18, label %.preheader

.preheader:                                       ; preds = %3
  %.02 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not3 = icmp eq ptr %.02, %1
  br i1 %.not3, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  br label %6

6:                                                ; preds = %.lr.ph, %17
  %.05 = phi ptr [ %.02, %.lr.ph ], [ %.0, %17 ]
  %.pn4 = phi ptr [ %0, %.lr.ph ], [ %.05, %17 ]
  %7 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull %.05, ptr noundef %0)
  br i1 %7, label %8, label %14

8:                                                ; preds = %6
  %9 = load double, ptr %.05, align 8
  %10 = getelementptr inbounds nuw i8, ptr %.pn4, i64 16
  %11 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %12 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %.05)
  %13 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %11, ptr noundef %12, ptr noundef nonnull %10)
  store double %9, ptr %0, align 8
  br label %17

14:                                               ; preds = %6
  %15 = load i8, ptr %4, align 1
  %16 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %15)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef nonnull %.05, i8 %16)
  br label %17

17:                                               ; preds = %8, %14
  %.0 = getelementptr inbounds nuw i8, ptr %.05, i64 8
  %.not = icmp eq ptr %.0, %1
  br i1 %.not, label %..loopexit_crit_edge, label %6, !llvm.loop !72

..loopexit_crit_edge:                             ; preds = %17
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.preheader
  br label %18

18:                                               ; preds = %.loopexit, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %.not1 = icmp eq ptr %0, %1
  br i1 %.not1, label %7, label %.lr.ph

.lr.ph:                                           ; preds = %3
  br label %4

4:                                                ; preds = %.lr.ph, %4
  %.02 = phi ptr [ %0, %.lr.ph ], [ %6, %4 ]
  %5 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %2)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %.02, i8 %5)
  %6 = getelementptr inbounds nuw i8, ptr %.02, i64 8
  %.not = icmp eq ptr %6, %1
  br i1 %.not, label %._crit_edge, label %4, !llvm.loop !73

._crit_edge:                                      ; preds = %4
  br label %7

7:                                                ; preds = %._crit_edge, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %0, i8 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", align 1
  %4 = alloca double, align 8
  store i8 %1, ptr %3, align 1
  %5 = load double, ptr %0, align 8
  store double %5, ptr %4, align 8
  %.012 = getelementptr inbounds i8, ptr %0, i64 -8
  %6 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %.012)
  br i1 %6, label %.lr.ph, label %10

.lr.ph:                                           ; preds = %2
  br label %7

7:                                                ; preds = %.lr.ph, %7
  %.014 = phi ptr [ %.012, %.lr.ph ], [ %.01, %7 ]
  %.03 = phi ptr [ %0, %.lr.ph ], [ %.014, %7 ]
  %8 = load double, ptr %.014, align 8
  store double %8, ptr %.03, align 8
  %.01 = getelementptr inbounds i8, ptr %.014, i64 -8
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %.01)
  br i1 %9, label %7, label %._crit_edge, !llvm.loop !74

._crit_edge:                                      ; preds = %7
  %split = phi ptr [ %.014, %7 ]
  br label %10

10:                                               ; preds = %._crit_edge, %2
  %.0.lcssa = phi ptr [ %split, %._crit_edge ], [ %0, %2 ]
  %11 = load double, ptr %4, align 8
  store double %11, ptr %.0.lcssa, align 8
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
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %11, label %4

4:                                                ; preds = %3
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  %9 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %8)
  %10 = shl nsw i64 %9, 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %10, i8 %2)
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2)
  br label %11

11:                                               ; preds = %4, %3
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
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 128
  br i1 %8, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %9

9:                                                ; preds = %.lr.ph, %12
  %.04 = phi i64 [ %2, %.lr.ph ], [ %13, %12 ]
  %.013 = phi ptr [ %1, %.lr.ph ], [ %14, %12 ]
  %10 = icmp eq i64 %.04, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  %.01.lcssa2 = phi ptr [ %.013, %9 ]
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %.01.lcssa2, ptr noundef %.01.lcssa2, i8 %3)
  br label %18

12:                                               ; preds = %9
  %13 = add nsw i64 %.04, -1
  %14 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %.013, i8 %3)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %14, ptr noundef %.013, i64 noundef %13, i8 %3)
  %15 = ptrtoint ptr %14 to i64
  %16 = sub i64 %15, %6
  %17 = icmp sgt i64 %16, 128
  br i1 %17, label %9, label %..loopexit_crit_edge, !llvm.loop !75

..loopexit_crit_edge:                             ; preds = %12
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %18

18:                                               ; preds = %.loopexit, %11
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 128
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef nonnull %9, i8 %2)
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef nonnull %9, ptr noundef %1, i8 %2)
  br label %11

10:                                               ; preds = %3
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2)
  br label %11

11:                                               ; preds = %10, %8
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
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 3
  %8 = sdiv i64 %7, 2
  %9 = getelementptr inbounds [8 x i8], ptr %0, i64 %8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = getelementptr inbounds i8, ptr %1, i64 -8
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_S6_T0_(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %9, ptr noundef nonnull %11, i8 %2)
  %12 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_S6_T0_(ptr noundef nonnull %10, ptr noundef %1, ptr noundef %0, i8 %2)
  ret ptr %12
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  store i8 %3, ptr %5, align 1
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %6 = icmp ult ptr %1, %2
  br i1 %6, label %.lr.ph, label %13

.lr.ph:                                           ; preds = %4
  br label %7

7:                                                ; preds = %.lr.ph, %10
  %.01 = phi ptr [ %1, %.lr.ph ], [ %11, %10 ]
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.01, ptr noundef %0)
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %.01, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %10

10:                                               ; preds = %7, %9
  %11 = getelementptr inbounds nuw i8, ptr %.01, i64 8
  %12 = icmp ult ptr %11, %2
  br i1 %12, label %7, label %._crit_edge, !llvm.loop !76

._crit_edge:                                      ; preds = %10
  br label %13

13:                                               ; preds = %._crit_edge, %4
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 8
  br i1 %7, label %.lr.ph, label %13

.lr.ph:                                           ; preds = %3
  br label %8

8:                                                ; preds = %.lr.ph, %8
  %.01 = phi ptr [ %1, %.lr.ph ], [ %9, %8 ]
  %9 = getelementptr inbounds i8, ptr %.01, i64 -8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %10 = ptrtoint ptr %9 to i64
  %11 = sub i64 %10, %5
  %12 = icmp sgt i64 %11, 8
  br i1 %12, label %8, label %._crit_edge, !llvm.loop !77

._crit_edge:                                      ; preds = %8
  br label %13

13:                                               ; preds = %._crit_edge, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp slt i64 %6, 9
  br i1 %7, label %18, label %8

8:                                                ; preds = %3
  %9 = lshr exact i64 %6, 3
  %10 = add nsw i64 %9, -2
  %11 = sdiv i64 %10, 2
  br label %12

12:                                               ; preds = %12, %8
  %.0 = phi i64 [ %11, %8 ], [ %17, %12 ]
  %13 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0
  %14 = load double, ptr %13, align 8
  %15 = load i8, ptr %2, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %.0, i64 noundef %9, double noundef %14, i8 %15)
  %16 = icmp eq i64 %.0, 0
  %17 = add nsw i64 %.0, -1
  br i1 %16, label %.loopexit, label %12, !llvm.loop !78

.loopexit:                                        ; preds = %12
  br label %18

18:                                               ; preds = %.loopexit, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) #5 comdat align 2 {
  %4 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %4
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #0 comdat {
  %5 = load double, ptr %2, align 8
  %6 = load double, ptr %0, align 8
  store double %6, ptr %2, align 8
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = load i8, ptr %3, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %10, double noundef %5, i8 %11)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, i8 %4) #0 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.4", align 1
  store i8 %4, ptr %6, align 1
  %8 = add nsw i64 %2, -1
  %9 = sdiv i64 %8, 2
  %10 = icmp slt i64 %1, %9
  br i1 %10, label %.lr.ph, label %23

.lr.ph:                                           ; preds = %5
  br label %11

11:                                               ; preds = %.lr.ph, %11
  %.03 = phi i64 [ %1, %.lr.ph ], [ %spec.select, %11 ]
  %12 = shl i64 %.03, 1
  %13 = add i64 %12, 2
  %14 = getelementptr inbounds [8 x i8], ptr %0, i64 %13
  %15 = getelementptr [8 x i8], ptr %0, i64 %12
  %16 = getelementptr i8, ptr %15, i64 8
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %14, ptr noundef %16)
  %18 = or disjoint i64 %12, 1
  %spec.select = select i1 %17, i64 %18, i64 %13
  %19 = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select
  %20 = load double, ptr %19, align 8
  %21 = getelementptr inbounds [8 x i8], ptr %0, i64 %.03
  store double %20, ptr %21, align 8
  %22 = icmp slt i64 %spec.select, %9
  br i1 %22, label %11, label %._crit_edge, !llvm.loop !79

._crit_edge:                                      ; preds = %11
  %split = phi i64 [ %spec.select, %11 ]
  br label %23

23:                                               ; preds = %._crit_edge, %5
  %.0.lcssa = phi i64 [ %split, %._crit_edge ], [ %1, %5 ]
  %24 = and i64 %2, 1
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = add nsw i64 %2, -2
  %28 = ashr exact i64 %27, 1
  %29 = icmp eq i64 %.0.lcssa, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = shl nsw i64 %.0.lcssa, 1
  %32 = getelementptr [8 x i8], ptr %0, i64 %31
  %33 = getelementptr i8, ptr %32, i64 8
  %34 = load double, ptr %33, align 8
  %35 = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store double %34, ptr %35, align 8
  %36 = or disjoint i64 %31, 1
  br label %37

37:                                               ; preds = %30, %26, %23
  %.12 = phi i64 [ %36, %30 ], [ %.0.lcssa, %26 ], [ %.0.lcssa, %23 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %0, i64 noundef %.12, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %7)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #0 comdat {
  %6 = alloca double, align 8
  store double %3, ptr %6, align 8
  %.0.in2 = add nsw i64 %1, -1
  %.03 = sdiv i64 %.0.in2, 2
  %7 = icmp sgt i64 %1, %2
  br i1 %7, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %5
  br label %8

8:                                                ; preds = %.lr.ph, %11
  %.05 = phi i64 [ %.03, %.lr.ph ], [ %.0, %11 ]
  %.014 = phi i64 [ %1, %.lr.ph ], [ %.05, %11 ]
  %9 = getelementptr inbounds [8 x i8], ptr %0, i64 %.05
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br i1 %10, label %11, label %..critedge_crit_edge6

11:                                               ; preds = %8
  %12 = load double, ptr %9, align 8
  %13 = getelementptr inbounds [8 x i8], ptr %0, i64 %.014
  store double %12, ptr %13, align 8
  %.0.in = add nsw i64 %.05, -1
  %.0 = sdiv i64 %.0.in, 2
  %14 = icmp sgt i64 %.05, %2
  br i1 %14, label %8, label %..critedge_crit_edge, !llvm.loop !80

..critedge_crit_edge:                             ; preds = %11
  %split = phi i64 [ %.05, %11 ]
  br label %.critedge

..critedge_crit_edge6:                            ; preds = %8
  %split7 = phi i64 [ %.014, %8 ]
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge6, %..critedge_crit_edge, %5
  %.01.lcssa = phi i64 [ %split, %..critedge_crit_edge ], [ %split7, %..critedge_crit_edge6 ], [ %1, %5 ]
  %15 = load double, ptr %6, align 8
  %16 = getelementptr inbounds [8 x i8], ptr %0, i64 %.01.lcssa
  store double %15, ptr %16, align 8
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
  store i8 %4, ptr %6, align 1
  %7 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %2)
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %22

11:                                               ; preds = %8
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %22

14:                                               ; preds = %11
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %22

15:                                               ; preds = %5
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %22

18:                                               ; preds = %15
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %22

21:                                               ; preds = %18
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %22

22:                                               ; preds = %17, %21, %20, %10, %14, %13
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #5 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  store i8 %3, ptr %5, align 1
  br label %6

6:                                                ; preds = %15, %4
  %.01 = phi ptr [ %1, %4 ], [ %.12.lcssa, %15 ]
  %.0 = phi ptr [ %0, %4 ], [ %16, %15 ]
  br label %7

7:                                                ; preds = %7, %6
  %.1 = phi ptr [ %.0, %6 ], [ %9, %7 ]
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.1, ptr noundef %2)
  %9 = getelementptr inbounds nuw i8, ptr %.1, i64 8
  br i1 %8, label %7, label %.preheader, !llvm.loop !81

.preheader:                                       ; preds = %7
  %.1.lcssa = phi ptr [ %.1, %7 ]
  br label %10

10:                                               ; preds = %.preheader, %10
  %.01.pn = phi ptr [ %.12, %10 ], [ %.01, %.preheader ]
  %.12 = getelementptr inbounds i8, ptr %.01.pn, i64 -8
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef nonnull %.12)
  br i1 %11, label %10, label %12, !llvm.loop !82

12:                                               ; preds = %10
  %.12.lcssa = phi ptr [ %.12, %10 ]
  %13 = icmp ult ptr %.1.lcssa, %.12.lcssa
  br i1 %13, label %15, label %14

14:                                               ; preds = %12
  %.1.lcssa.lcssa = phi ptr [ %.1.lcssa, %12 ]
  ret ptr %.1.lcssa.lcssa

15:                                               ; preds = %12
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1.lcssa, ptr noundef nonnull %.12.lcssa)
  %16 = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 8
  br label %6, !llvm.loop !83
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  store i8 %2, ptr %4, align 1
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %18, label %.preheader

.preheader:                                       ; preds = %3
  %.02 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not3 = icmp eq ptr %.02, %1
  br i1 %.not3, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  br label %6

6:                                                ; preds = %.lr.ph, %17
  %.05 = phi ptr [ %.02, %.lr.ph ], [ %.0, %17 ]
  %.pn4 = phi ptr [ %0, %.lr.ph ], [ %.05, %17 ]
  %7 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull %.05, ptr noundef %0)
  br i1 %7, label %8, label %14

8:                                                ; preds = %6
  %9 = load double, ptr %.05, align 8
  %10 = getelementptr inbounds nuw i8, ptr %.pn4, i64 16
  %11 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %12 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %.05)
  %13 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %11, ptr noundef %12, ptr noundef nonnull %10)
  store double %9, ptr %0, align 8
  br label %17

14:                                               ; preds = %6
  %15 = load i8, ptr %4, align 1
  %16 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %15)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef nonnull %.05, i8 %16)
  br label %17

17:                                               ; preds = %8, %14
  %.0 = getelementptr inbounds nuw i8, ptr %.05, i64 8
  %.not = icmp eq ptr %.0, %1
  br i1 %.not, label %..loopexit_crit_edge, label %6, !llvm.loop !84

..loopexit_crit_edge:                             ; preds = %17
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.preheader
  br label %18

18:                                               ; preds = %.loopexit, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %.not1 = icmp eq ptr %0, %1
  br i1 %.not1, label %7, label %.lr.ph

.lr.ph:                                           ; preds = %3
  br label %4

4:                                                ; preds = %.lr.ph, %4
  %.02 = phi ptr [ %0, %.lr.ph ], [ %6, %4 ]
  %5 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %2)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %.02, i8 %5)
  %6 = getelementptr inbounds nuw i8, ptr %.02, i64 8
  %.not = icmp eq ptr %6, %1
  br i1 %.not, label %._crit_edge, label %4, !llvm.loop !85

._crit_edge:                                      ; preds = %4
  br label %7

7:                                                ; preds = %._crit_edge, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %0, i8 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", align 1
  %4 = alloca double, align 8
  store i8 %1, ptr %3, align 1
  %5 = load double, ptr %0, align 8
  store double %5, ptr %4, align 8
  %.012 = getelementptr inbounds i8, ptr %0, i64 -8
  %6 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %.012)
  br i1 %6, label %.lr.ph, label %10

.lr.ph:                                           ; preds = %2
  br label %7

7:                                                ; preds = %.lr.ph, %7
  %.014 = phi ptr [ %.012, %.lr.ph ], [ %.01, %7 ]
  %.03 = phi ptr [ %0, %.lr.ph ], [ %.014, %7 ]
  %8 = load double, ptr %.014, align 8
  store double %8, ptr %.03, align 8
  %.01 = getelementptr inbounds i8, ptr %.014, i64 -8
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %.01)
  br i1 %9, label %7, label %._crit_edge, !llvm.loop !86

._crit_edge:                                      ; preds = %7
  %split = phi ptr [ %.014, %7 ]
  br label %10

10:                                               ; preds = %._crit_edge, %2
  %.0.lcssa = phi ptr [ %split, %._crit_edge ], [ %0, %2 ]
  %11 = load double, ptr %4, align 8
  store double %11, ptr %.0.lcssa, align 8
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
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %11, label %4

4:                                                ; preds = %3
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  %9 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %8)
  %10 = shl nsw i64 %9, 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %10, i8 %2)
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2)
  br label %11

11:                                               ; preds = %4, %3
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
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 128
  br i1 %8, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %9

9:                                                ; preds = %.lr.ph, %12
  %.04 = phi i64 [ %2, %.lr.ph ], [ %13, %12 ]
  %.013 = phi ptr [ %1, %.lr.ph ], [ %14, %12 ]
  %10 = icmp eq i64 %.04, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  %.01.lcssa2 = phi ptr [ %.013, %9 ]
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %.01.lcssa2, ptr noundef %.01.lcssa2, i8 %3)
  br label %18

12:                                               ; preds = %9
  %13 = add nsw i64 %.04, -1
  %14 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %.013, i8 %3)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %14, ptr noundef %.013, i64 noundef %13, i8 %3)
  %15 = ptrtoint ptr %14 to i64
  %16 = sub i64 %15, %6
  %17 = icmp sgt i64 %16, 128
  br i1 %17, label %9, label %..loopexit_crit_edge, !llvm.loop !87

..loopexit_crit_edge:                             ; preds = %12
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %18

18:                                               ; preds = %.loopexit, %11
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 128
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef nonnull %9, i8 %2)
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef nonnull %9, ptr noundef %1, i8 %2)
  br label %11

10:                                               ; preds = %3
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2)
  br label %11

11:                                               ; preds = %10, %8
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
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 3
  %8 = sdiv i64 %7, 2
  %9 = getelementptr inbounds [8 x i8], ptr %0, i64 %8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = getelementptr inbounds i8, ptr %1, i64 -8
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %9, ptr noundef nonnull %11, i8 %2)
  %12 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_S7_T0_(ptr noundef nonnull %10, ptr noundef %1, ptr noundef %0, i8 %2)
  ret ptr %12
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store i8 %3, ptr %5, align 1
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %6 = icmp ult ptr %1, %2
  br i1 %6, label %.lr.ph, label %13

.lr.ph:                                           ; preds = %4
  br label %7

7:                                                ; preds = %.lr.ph, %10
  %.01 = phi ptr [ %1, %.lr.ph ], [ %11, %10 ]
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.01, ptr noundef %0)
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %.01, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %10

10:                                               ; preds = %7, %9
  %11 = getelementptr inbounds nuw i8, ptr %.01, i64 8
  %12 = icmp ult ptr %11, %2
  br i1 %12, label %7, label %._crit_edge, !llvm.loop !88

._crit_edge:                                      ; preds = %10
  br label %13

13:                                               ; preds = %._crit_edge, %4
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 8
  br i1 %7, label %.lr.ph, label %13

.lr.ph:                                           ; preds = %3
  br label %8

8:                                                ; preds = %.lr.ph, %8
  %.01 = phi ptr [ %1, %.lr.ph ], [ %9, %8 ]
  %9 = getelementptr inbounds i8, ptr %.01, i64 -8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %10 = ptrtoint ptr %9 to i64
  %11 = sub i64 %10, %5
  %12 = icmp sgt i64 %11, 8
  br i1 %12, label %8, label %._crit_edge, !llvm.loop !89

._crit_edge:                                      ; preds = %8
  br label %13

13:                                               ; preds = %._crit_edge, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp slt i64 %6, 9
  br i1 %7, label %18, label %8

8:                                                ; preds = %3
  %9 = lshr exact i64 %6, 3
  %10 = add nsw i64 %9, -2
  %11 = sdiv i64 %10, 2
  br label %12

12:                                               ; preds = %12, %8
  %.0 = phi i64 [ %11, %8 ], [ %17, %12 ]
  %13 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0
  %14 = load double, ptr %13, align 8
  %15 = load i8, ptr %2, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %.0, i64 noundef %9, double noundef %14, i8 %15)
  %16 = icmp eq i64 %.0, 0
  %17 = add nsw i64 %.0, -1
  br i1 %16, label %.loopexit, label %12, !llvm.loop !90

.loopexit:                                        ; preds = %12
  br label %18

18:                                               ; preds = %.loopexit, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) #5 comdat align 2 {
  %4 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %4
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #0 comdat {
  %5 = load double, ptr %2, align 8
  %6 = load double, ptr %0, align 8
  store double %6, ptr %2, align 8
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = load i8, ptr %3, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %10, double noundef %5, i8 %11)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, i8 %4) #0 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.7", align 1
  store i8 %4, ptr %6, align 1
  %8 = add nsw i64 %2, -1
  %9 = sdiv i64 %8, 2
  %10 = icmp slt i64 %1, %9
  br i1 %10, label %.lr.ph, label %23

.lr.ph:                                           ; preds = %5
  br label %11

11:                                               ; preds = %.lr.ph, %11
  %.03 = phi i64 [ %1, %.lr.ph ], [ %spec.select, %11 ]
  %12 = shl i64 %.03, 1
  %13 = add i64 %12, 2
  %14 = getelementptr inbounds [8 x i8], ptr %0, i64 %13
  %15 = getelementptr [8 x i8], ptr %0, i64 %12
  %16 = getelementptr i8, ptr %15, i64 8
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %14, ptr noundef %16)
  %18 = or disjoint i64 %12, 1
  %spec.select = select i1 %17, i64 %18, i64 %13
  %19 = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select
  %20 = load double, ptr %19, align 8
  %21 = getelementptr inbounds [8 x i8], ptr %0, i64 %.03
  store double %20, ptr %21, align 8
  %22 = icmp slt i64 %spec.select, %9
  br i1 %22, label %11, label %._crit_edge, !llvm.loop !91

._crit_edge:                                      ; preds = %11
  %split = phi i64 [ %spec.select, %11 ]
  br label %23

23:                                               ; preds = %._crit_edge, %5
  %.0.lcssa = phi i64 [ %split, %._crit_edge ], [ %1, %5 ]
  %24 = and i64 %2, 1
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = add nsw i64 %2, -2
  %28 = ashr exact i64 %27, 1
  %29 = icmp eq i64 %.0.lcssa, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = shl nsw i64 %.0.lcssa, 1
  %32 = getelementptr [8 x i8], ptr %0, i64 %31
  %33 = getelementptr i8, ptr %32, i64 8
  %34 = load double, ptr %33, align 8
  %35 = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store double %34, ptr %35, align 8
  %36 = or disjoint i64 %31, 1
  br label %37

37:                                               ; preds = %30, %26, %23
  %.12 = phi i64 [ %36, %30 ], [ %.0.lcssa, %26 ], [ %.0.lcssa, %23 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEEEvT_T0_S8_T1_RT2_(ptr noundef %0, i64 noundef %.12, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %7)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEEEvT_T0_S8_T1_RT2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #0 comdat {
  %6 = alloca double, align 8
  store double %3, ptr %6, align 8
  %.0.in2 = add nsw i64 %1, -1
  %.03 = sdiv i64 %.0.in2, 2
  %7 = icmp sgt i64 %1, %2
  br i1 %7, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %5
  br label %8

8:                                                ; preds = %.lr.ph, %11
  %.05 = phi i64 [ %.03, %.lr.ph ], [ %.0, %11 ]
  %.014 = phi i64 [ %1, %.lr.ph ], [ %.05, %11 ]
  %9 = getelementptr inbounds [8 x i8], ptr %0, i64 %.05
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br i1 %10, label %11, label %..critedge_crit_edge6

11:                                               ; preds = %8
  %12 = load double, ptr %9, align 8
  %13 = getelementptr inbounds [8 x i8], ptr %0, i64 %.014
  store double %12, ptr %13, align 8
  %.0.in = add nsw i64 %.05, -1
  %.0 = sdiv i64 %.0.in, 2
  %14 = icmp sgt i64 %.05, %2
  br i1 %14, label %8, label %..critedge_crit_edge, !llvm.loop !92

..critedge_crit_edge:                             ; preds = %11
  %split = phi i64 [ %.05, %11 ]
  br label %.critedge

..critedge_crit_edge6:                            ; preds = %8
  %split7 = phi i64 [ %.014, %8 ]
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge6, %..critedge_crit_edge, %5
  %.01.lcssa = phi i64 [ %split, %..critedge_crit_edge ], [ %split7, %..critedge_crit_edge6 ], [ %1, %5 ]
  %15 = load double, ptr %6, align 8
  %16 = getelementptr inbounds [8 x i8], ptr %0, i64 %.01.lcssa
  store double %15, ptr %16, align 8
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
  store i8 %4, ptr %6, align 1
  %7 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %2)
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %22

11:                                               ; preds = %8
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %22

14:                                               ; preds = %11
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %22

15:                                               ; preds = %5
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %22

18:                                               ; preds = %15
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %22

21:                                               ; preds = %18
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %22

22:                                               ; preds = %17, %21, %20, %10, %14, %13
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #5 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store i8 %3, ptr %5, align 1
  br label %6

6:                                                ; preds = %15, %4
  %.01 = phi ptr [ %1, %4 ], [ %.12.lcssa, %15 ]
  %.0 = phi ptr [ %0, %4 ], [ %16, %15 ]
  br label %7

7:                                                ; preds = %7, %6
  %.1 = phi ptr [ %.0, %6 ], [ %9, %7 ]
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.1, ptr noundef %2)
  %9 = getelementptr inbounds nuw i8, ptr %.1, i64 8
  br i1 %8, label %7, label %.preheader, !llvm.loop !93

.preheader:                                       ; preds = %7
  %.1.lcssa = phi ptr [ %.1, %7 ]
  br label %10

10:                                               ; preds = %.preheader, %10
  %.01.pn = phi ptr [ %.12, %10 ], [ %.01, %.preheader ]
  %.12 = getelementptr inbounds i8, ptr %.01.pn, i64 -8
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef nonnull %.12)
  br i1 %11, label %10, label %12, !llvm.loop !94

12:                                               ; preds = %10
  %.12.lcssa = phi ptr [ %.12, %10 ]
  %13 = icmp ult ptr %.1.lcssa, %.12.lcssa
  br i1 %13, label %15, label %14

14:                                               ; preds = %12
  %.1.lcssa.lcssa = phi ptr [ %.1.lcssa, %12 ]
  ret ptr %.1.lcssa.lcssa

15:                                               ; preds = %12
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1.lcssa, ptr noundef nonnull %.12.lcssa)
  %16 = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 8
  br label %6, !llvm.loop !95
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store i8 %2, ptr %4, align 1
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %18, label %.preheader

.preheader:                                       ; preds = %3
  %.02 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not3 = icmp eq ptr %.02, %1
  br i1 %.not3, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  br label %6

6:                                                ; preds = %.lr.ph, %17
  %.05 = phi ptr [ %.02, %.lr.ph ], [ %.0, %17 ]
  %.pn4 = phi ptr [ %0, %.lr.ph ], [ %.05, %17 ]
  %7 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull %.05, ptr noundef %0)
  br i1 %7, label %8, label %14

8:                                                ; preds = %6
  %9 = load double, ptr %.05, align 8
  %10 = getelementptr inbounds nuw i8, ptr %.pn4, i64 16
  %11 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %12 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %.05)
  %13 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %11, ptr noundef %12, ptr noundef nonnull %10)
  store double %9, ptr %0, align 8
  br label %17

14:                                               ; preds = %6
  %15 = load i8, ptr %4, align 1
  %16 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %15)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef nonnull %.05, i8 %16)
  br label %17

17:                                               ; preds = %8, %14
  %.0 = getelementptr inbounds nuw i8, ptr %.05, i64 8
  %.not = icmp eq ptr %.0, %1
  br i1 %.not, label %..loopexit_crit_edge, label %6, !llvm.loop !96

..loopexit_crit_edge:                             ; preds = %17
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.preheader
  br label %18

18:                                               ; preds = %.loopexit, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %.not1 = icmp eq ptr %0, %1
  br i1 %.not1, label %7, label %.lr.ph

.lr.ph:                                           ; preds = %3
  br label %4

4:                                                ; preds = %.lr.ph, %4
  %.02 = phi ptr [ %0, %.lr.ph ], [ %6, %4 ]
  %5 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %2)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %.02, i8 %5)
  %6 = getelementptr inbounds nuw i8, ptr %.02, i64 8
  %.not = icmp eq ptr %6, %1
  br i1 %.not, label %._crit_edge, label %4, !llvm.loop !97

._crit_edge:                                      ; preds = %4
  br label %7

7:                                                ; preds = %._crit_edge, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %0, i8 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", align 1
  %4 = alloca double, align 8
  store i8 %1, ptr %3, align 1
  %5 = load double, ptr %0, align 8
  store double %5, ptr %4, align 8
  %.012 = getelementptr inbounds i8, ptr %0, i64 -8
  %6 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %.012)
  br i1 %6, label %.lr.ph, label %10

.lr.ph:                                           ; preds = %2
  br label %7

7:                                                ; preds = %.lr.ph, %7
  %.014 = phi ptr [ %.012, %.lr.ph ], [ %.01, %7 ]
  %.03 = phi ptr [ %0, %.lr.ph ], [ %.014, %7 ]
  %8 = load double, ptr %.014, align 8
  store double %8, ptr %.03, align 8
  %.01 = getelementptr inbounds i8, ptr %.014, i64 -8
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %.01)
  br i1 %9, label %7, label %._crit_edge, !llvm.loop !98

._crit_edge:                                      ; preds = %7
  %split = phi ptr [ %.014, %7 ]
  br label %10

10:                                               ; preds = %._crit_edge, %2
  %.0.lcssa = phi ptr [ %split, %._crit_edge ], [ %0, %2 ]
  %11 = load double, ptr %4, align 8
  store double %11, ptr %.0.lcssa, align 8
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
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %11, label %4

4:                                                ; preds = %3
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  %9 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %8)
  %10 = shl nsw i64 %9, 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %10, i8 undef)
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 undef)
  br label %11

11:                                               ; preds = %4, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local i8 @_ZN9__gnu_cxx5__ops16__iter_less_iterEv() #5 comdat {
  ret i8 undef
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i8 %3) #0 comdat {
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 128
  br i1 %8, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %9

9:                                                ; preds = %.lr.ph, %12
  %.04 = phi i64 [ %2, %.lr.ph ], [ %13, %12 ]
  %.013 = phi ptr [ %1, %.lr.ph ], [ %14, %12 ]
  %10 = icmp eq i64 %.04, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  %.01.lcssa2 = phi ptr [ %.013, %9 ]
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %.01.lcssa2, ptr noundef %.01.lcssa2, i8 undef)
  br label %18

12:                                               ; preds = %9
  %13 = add nsw i64 %.04, -1
  %14 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(ptr noundef %0, ptr noundef %.013, i8 undef)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %14, ptr noundef %.013, i64 noundef %13, i8 undef)
  %15 = ptrtoint ptr %14 to i64
  %16 = sub i64 %15, %6
  %17 = icmp sgt i64 %16, 128
  br i1 %17, label %9, label %..loopexit_crit_edge, !llvm.loop !99

..loopexit_crit_edge:                             ; preds = %12
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %18

18:                                               ; preds = %.loopexit, %11
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 128
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef nonnull %9, i8 undef)
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %9, ptr noundef %1, i8 undef)
  br label %11

10:                                               ; preds = %3
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 undef)
  br label %11

11:                                               ; preds = %10, %8
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
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 3
  %8 = sdiv i64 %7, 2
  %9 = getelementptr inbounds [8 x i8], ptr %0, i64 %8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = getelementptr inbounds i8, ptr %1, i64 -8
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %9, ptr noundef nonnull %11, i8 undef)
  %12 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_(ptr noundef nonnull %10, ptr noundef %1, ptr noundef %0, i8 undef)
  ret ptr %12
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store i8 %3, ptr %5, align 1
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %6 = icmp ult ptr %1, %2
  br i1 %6, label %.lr.ph, label %13

.lr.ph:                                           ; preds = %4
  br label %7

7:                                                ; preds = %.lr.ph, %10
  %.01 = phi ptr [ %1, %.lr.ph ], [ %11, %10 ]
  %8 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.01, ptr noundef %0)
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %.01, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %10

10:                                               ; preds = %7, %9
  %11 = getelementptr inbounds nuw i8, ptr %.01, i64 8
  %12 = icmp ult ptr %11, %2
  br i1 %12, label %7, label %._crit_edge, !llvm.loop !100

._crit_edge:                                      ; preds = %10
  br label %13

13:                                               ; preds = %._crit_edge, %4
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 8
  br i1 %7, label %.lr.ph, label %13

.lr.ph:                                           ; preds = %3
  br label %8

8:                                                ; preds = %.lr.ph, %8
  %.01 = phi ptr [ %1, %.lr.ph ], [ %9, %8 ]
  %9 = getelementptr inbounds i8, ptr %.01, i64 -8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %10 = ptrtoint ptr %9 to i64
  %11 = sub i64 %10, %5
  %12 = icmp sgt i64 %11, 8
  br i1 %12, label %8, label %._crit_edge, !llvm.loop !101

._crit_edge:                                      ; preds = %8
  br label %13

13:                                               ; preds = %._crit_edge, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp slt i64 %6, 9
  br i1 %7, label %17, label %8

8:                                                ; preds = %3
  %9 = lshr exact i64 %6, 3
  %10 = add nsw i64 %9, -2
  %11 = sdiv i64 %10, 2
  br label %12

12:                                               ; preds = %12, %8
  %.0 = phi i64 [ %11, %8 ], [ %16, %12 ]
  %13 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0
  %14 = load double, ptr %13, align 8
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %0, i64 noundef %.0, i64 noundef %9, double noundef %14, i8 undef)
  %15 = icmp eq i64 %.0, 0
  %16 = add nsw i64 %.0, -1
  br i1 %15, label %.loopexit, label %12, !llvm.loop !102

.loopexit:                                        ; preds = %12
  br label %17

17:                                               ; preds = %.loopexit, %3
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
  %5 = load double, ptr %2, align 8
  %6 = load double, ptr %0, align 8
  store double %6, ptr %2, align 8
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %10, double noundef %5, i8 undef)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, i8 %4) #0 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_val", align 1
  store i8 %4, ptr %6, align 1
  %8 = add nsw i64 %2, -1
  %9 = sdiv i64 %8, 2
  %10 = icmp slt i64 %1, %9
  br i1 %10, label %.lr.ph, label %23

.lr.ph:                                           ; preds = %5
  br label %11

11:                                               ; preds = %.lr.ph, %11
  %.03 = phi i64 [ %1, %.lr.ph ], [ %spec.select, %11 ]
  %12 = shl i64 %.03, 1
  %13 = add i64 %12, 2
  %14 = getelementptr inbounds [8 x i8], ptr %0, i64 %13
  %15 = getelementptr [8 x i8], ptr %0, i64 %12
  %16 = getelementptr i8, ptr %15, i64 8
  %17 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %14, ptr noundef %16)
  %18 = or disjoint i64 %12, 1
  %spec.select = select i1 %17, i64 %18, i64 %13
  %19 = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select
  %20 = load double, ptr %19, align 8
  %21 = getelementptr inbounds [8 x i8], ptr %0, i64 %.03
  store double %20, ptr %21, align 8
  %22 = icmp slt i64 %spec.select, %9
  br i1 %22, label %11, label %._crit_edge, !llvm.loop !103

._crit_edge:                                      ; preds = %11
  %split = phi i64 [ %spec.select, %11 ]
  br label %23

23:                                               ; preds = %._crit_edge, %5
  %.0.lcssa = phi i64 [ %split, %._crit_edge ], [ %1, %5 ]
  %24 = and i64 %2, 1
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = add nsw i64 %2, -2
  %28 = ashr exact i64 %27, 1
  %29 = icmp eq i64 %.0.lcssa, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = shl nsw i64 %.0.lcssa, 1
  %32 = getelementptr [8 x i8], ptr %0, i64 %31
  %33 = getelementptr i8, ptr %32, i64 8
  %34 = load double, ptr %33, align 8
  %35 = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store double %34, ptr %35, align 8
  %36 = or disjoint i64 %31, 1
  br label %37

37:                                               ; preds = %30, %26, %23
  %.12 = phi i64 [ %36, %30 ], [ %.0.lcssa, %26 ], [ %.0.lcssa, %23 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(ptr noundef nonnull align 1 dereferenceable(1) %7, i8 undef)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_(ptr noundef %0, i64 noundef %.12, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %7)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 %1) unnamed_addr #5 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #0 comdat {
  %6 = alloca double, align 8
  store double %3, ptr %6, align 8
  %.0.in2 = add nsw i64 %1, -1
  %.03 = sdiv i64 %.0.in2, 2
  %7 = icmp sgt i64 %1, %2
  br i1 %7, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %5
  br label %8

8:                                                ; preds = %.lr.ph, %11
  %.05 = phi i64 [ %.03, %.lr.ph ], [ %.0, %11 ]
  %.014 = phi i64 [ %1, %.lr.ph ], [ %.05, %11 ]
  %9 = getelementptr inbounds [8 x i8], ptr %0, i64 %.05
  %10 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br i1 %10, label %11, label %..critedge_crit_edge6

11:                                               ; preds = %8
  %12 = load double, ptr %9, align 8
  %13 = getelementptr inbounds [8 x i8], ptr %0, i64 %.014
  store double %12, ptr %13, align 8
  %.0.in = add nsw i64 %.05, -1
  %.0 = sdiv i64 %.0.in, 2
  %14 = icmp sgt i64 %.05, %2
  br i1 %14, label %8, label %..critedge_crit_edge, !llvm.loop !104

..critedge_crit_edge:                             ; preds = %11
  %split = phi i64 [ %.05, %11 ]
  br label %.critedge

..critedge_crit_edge6:                            ; preds = %8
  %split7 = phi i64 [ %.014, %8 ]
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge6, %..critedge_crit_edge, %5
  %.01.lcssa = phi i64 [ %split, %..critedge_crit_edge ], [ %split7, %..critedge_crit_edge6 ], [ %1, %5 ]
  %15 = load double, ptr %6, align 8
  %16 = getelementptr inbounds [8 x i8], ptr %0, i64 %.01.lcssa
  store double %15, ptr %16, align 8
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
  store i8 %4, ptr %6, align 1
  %7 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %2)
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %22

11:                                               ; preds = %8
  %12 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %22

14:                                               ; preds = %11
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %22

15:                                               ; preds = %5
  %16 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %22

18:                                               ; preds = %15
  %19 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %22

21:                                               ; preds = %18
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %22

22:                                               ; preds = %17, %21, %20, %10, %14, %13
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #5 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store i8 %3, ptr %5, align 1
  br label %6

6:                                                ; preds = %15, %4
  %.01 = phi ptr [ %1, %4 ], [ %.12.lcssa, %15 ]
  %.0 = phi ptr [ %0, %4 ], [ %16, %15 ]
  br label %7

7:                                                ; preds = %7, %6
  %.1 = phi ptr [ %.0, %6 ], [ %9, %7 ]
  %8 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.1, ptr noundef %2)
  %9 = getelementptr inbounds nuw i8, ptr %.1, i64 8
  br i1 %8, label %7, label %.preheader, !llvm.loop !105

.preheader:                                       ; preds = %7
  %.1.lcssa = phi ptr [ %.1, %7 ]
  br label %10

10:                                               ; preds = %.preheader, %10
  %.01.pn = phi ptr [ %.12, %10 ], [ %.01, %.preheader ]
  %.12 = getelementptr inbounds i8, ptr %.01.pn, i64 -8
  %11 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef nonnull %.12)
  br i1 %11, label %10, label %12, !llvm.loop !106

12:                                               ; preds = %10
  %.12.lcssa = phi ptr [ %.12, %10 ]
  %13 = icmp ult ptr %.1.lcssa, %.12.lcssa
  br i1 %13, label %15, label %14

14:                                               ; preds = %12
  %.1.lcssa.lcssa = phi ptr [ %.1.lcssa, %12 ]
  ret ptr %.1.lcssa.lcssa

15:                                               ; preds = %12
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1.lcssa, ptr noundef nonnull %.12.lcssa)
  %16 = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 8
  br label %6, !llvm.loop !107
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store i8 %2, ptr %4, align 1
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %17, label %.preheader

.preheader:                                       ; preds = %3
  %.02 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not3 = icmp eq ptr %.02, %1
  br i1 %.not3, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  br label %6

6:                                                ; preds = %.lr.ph, %16
  %.05 = phi ptr [ %.02, %.lr.ph ], [ %.0, %16 ]
  %.pn4 = phi ptr [ %0, %.lr.ph ], [ %.05, %16 ]
  %7 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull %.05, ptr noundef %0)
  br i1 %7, label %8, label %14

8:                                                ; preds = %6
  %9 = load double, ptr %.05, align 8
  %10 = getelementptr inbounds nuw i8, ptr %.pn4, i64 16
  %11 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %12 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %.05)
  %13 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %11, ptr noundef %12, ptr noundef nonnull %10)
  store double %9, ptr %0, align 8
  br label %16

14:                                               ; preds = %6
  %15 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 undef)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef nonnull %.05, i8 undef)
  br label %16

16:                                               ; preds = %8, %14
  %.0 = getelementptr inbounds nuw i8, ptr %.05, i64 8
  %.not = icmp eq ptr %.0, %1
  br i1 %.not, label %..loopexit_crit_edge, label %6, !llvm.loop !108

..loopexit_crit_edge:                             ; preds = %16
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.preheader
  br label %17

17:                                               ; preds = %.loopexit, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %.not1 = icmp eq ptr %0, %1
  br i1 %.not1, label %7, label %.lr.ph

.lr.ph:                                           ; preds = %3
  br label %4

4:                                                ; preds = %.lr.ph, %4
  %.02 = phi ptr [ %0, %.lr.ph ], [ %6, %4 ]
  %5 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 undef)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %.02, i8 undef)
  %6 = getelementptr inbounds nuw i8, ptr %.02, i64 8
  %.not = icmp eq ptr %6, %1
  br i1 %.not, label %._crit_edge, label %4, !llvm.loop !109

._crit_edge:                                      ; preds = %4
  br label %7

7:                                                ; preds = %._crit_edge, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %0, i8 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_less_iter", align 1
  %4 = alloca double, align 8
  store i8 %1, ptr %3, align 1
  %5 = load double, ptr %0, align 8
  store double %5, ptr %4, align 8
  %.012 = getelementptr inbounds i8, ptr %0, i64 -8
  %6 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %.012)
  br i1 %6, label %.lr.ph, label %10

.lr.ph:                                           ; preds = %2
  br label %7

7:                                                ; preds = %.lr.ph, %7
  %.014 = phi ptr [ %.012, %.lr.ph ], [ %.01, %7 ]
  %.03 = phi ptr [ %0, %.lr.ph ], [ %.014, %7 ]
  %8 = load double, ptr %.014, align 8
  store double %8, ptr %.03, align 8
  %.01 = getelementptr inbounds i8, ptr %.014, i64 -8
  %9 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %.01)
  br i1 %9, label %7, label %._crit_edge, !llvm.loop !110

._crit_edge:                                      ; preds = %7
  %split = phi ptr [ %.014, %7 ]
  br label %10

10:                                               ; preds = %._crit_edge, %2
  %.0.lcssa = phi ptr [ %split, %._crit_edge ], [ %0, %2 ]
  %11 = load double, ptr %4, align 8
  store double %11, ptr %.0.lcssa, align 8
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
!53 = distinct !{!53, !8}
!54 = distinct !{!54, !8}
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
