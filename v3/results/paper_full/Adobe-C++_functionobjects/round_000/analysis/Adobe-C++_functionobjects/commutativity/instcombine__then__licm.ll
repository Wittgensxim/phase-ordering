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
  %30 = sext i32 %25 to i64
  %31 = getelementptr inbounds [16 x i8], ptr %29, i64 %30
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr %28, ptr %32, align 8
  %33 = load i32, ptr @current_test, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr @current_test, align 4
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
  %13 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store i32 %4, ptr %7, align 4
  %14 = sitofp i32 %1 to double
  %15 = sitofp i32 %2 to double
  %16 = fmul nnan double %14, %15
  %17 = fdiv double %16, 1.000000e+06
  store double %17, ptr %9, align 8
  store double 0.000000e+00, ptr %10, align 8
  store double 0.000000e+00, ptr %11, align 8
  store i32 12, ptr %12, align 4
  %.promoted = load i32, ptr %13, align 4
  %.promoted4 = load i32, ptr %12, align 4
  br label %18

18:                                               ; preds = %35, %5
  %19 = phi i32 [ %.promoted4, %5 ], [ %34, %35 ]
  %20 = phi i32 [ %.promoted, %5 ], [ %30, %35 ]
  %storemerge = phi i32 [ 0, %5 ], [ %36, %35 ]
  %21 = load i32, ptr @current_test, align 4
  %22 = icmp slt i32 %storemerge, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = load ptr, ptr @results, align 8
  %25 = sext i32 %storemerge to i64
  %26 = getelementptr inbounds [16 x i8], ptr %24, i64 %25
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 8
  %28 = load ptr, ptr %27, align 8
  %29 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %28) #15
  %30 = trunc i64 %29 to i32
  %31 = icmp slt i32 %19, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32, %23
  %34 = phi i32 [ %30, %32 ], [ %19, %23 ]
  br label %35

35:                                               ; preds = %33
  %36 = add nsw i32 %storemerge, 1
  br label %18, !llvm.loop !7

37:                                               ; preds = %18
  %.lcssa5 = phi i32 [ %19, %18 ]
  %.lcssa = phi i32 [ %20, %18 ]
  %storemerge.lcssa = phi i32 [ %storemerge, %18 ]
  store i32 %storemerge.lcssa, ptr %8, align 4
  store i32 %.lcssa, ptr %13, align 4
  store i32 %.lcssa5, ptr %12, align 4
  %38 = load i32, ptr %12, align 4
  %39 = add nsw i32 %38, -12
  %40 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.1, i32 noundef %39, ptr noundef nonnull @.str.2)
  %41 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.3, i32 noundef %38, ptr noundef nonnull @.str.2)
  %42 = load i32, ptr %12, align 4
  %43 = load double, ptr %9, align 8
  br label %44

44:                                               ; preds = %76, %37
  %storemerge1 = phi i32 [ 0, %37 ], [ %77, %76 ]
  %45 = load i32, ptr @current_test, align 4
  %46 = icmp slt i32 %storemerge1, %45
  br i1 %46, label %47, label %78

47:                                               ; preds = %44
  %48 = load ptr, ptr @results, align 8
  %49 = sext i32 %storemerge1 to i64
  %50 = getelementptr inbounds [16 x i8], ptr %48, i64 %49
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 8
  %52 = load ptr, ptr %51, align 8
  %53 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %52) #15
  %54 = trunc i64 %53 to i32
  %55 = sub i32 %42, %54
  %56 = load ptr, ptr @results, align 8
  %57 = sext i32 %storemerge1 to i64
  %58 = getelementptr inbounds [16 x i8], ptr %56, i64 %57
  %59 = getelementptr inbounds nuw i8, ptr %58, i64 8
  %60 = load ptr, ptr %59, align 8
  %61 = sext i32 %storemerge1 to i64
  %62 = getelementptr inbounds [16 x i8], ptr %56, i64 %61
  %63 = load double, ptr %62, align 8
  %64 = load ptr, ptr @results, align 8
  %65 = sext i32 %storemerge1 to i64
  %66 = getelementptr inbounds [16 x i8], ptr %64, i64 %65
  %67 = load double, ptr %66, align 8
  %68 = fdiv double %43, %67
  %69 = sext i32 %storemerge1 to i64
  %70 = getelementptr inbounds [16 x i8], ptr %64, i64 %69
  %71 = load double, ptr %70, align 8
  %72 = load ptr, ptr @results, align 8
  %73 = load double, ptr %72, align 8
  %74 = fdiv double %71, %73
  %75 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.4, i32 noundef %storemerge1, i32 noundef %55, ptr noundef nonnull @.str.5, ptr noundef %60, double noundef %63, double noundef %68, double noundef %74)
  br label %76

76:                                               ; preds = %47
  %77 = add nsw i32 %storemerge1, 1
  br label %44, !llvm.loop !9

78:                                               ; preds = %44
  %storemerge1.lcssa = phi i32 [ %storemerge1, %44 ]
  store i32 %storemerge1.lcssa, ptr %8, align 4
  %79 = load i32, ptr @current_test, align 4
  %80 = load ptr, ptr @results, align 8
  %.promoted8 = load double, ptr %10, align 8
  br label %81

81:                                               ; preds = %89, %78
  %82 = phi double [ %.promoted8, %78 ], [ %88, %89 ]
  %storemerge2 = phi i32 [ 0, %78 ], [ %90, %89 ]
  %83 = icmp slt i32 %storemerge2, %79
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = sext i32 %storemerge2 to i64
  %86 = getelementptr inbounds [16 x i8], ptr %80, i64 %85
  %87 = load double, ptr %86, align 8
  %88 = fadd double %82, %87
  br label %89

89:                                               ; preds = %84
  %90 = add nsw i32 %storemerge2, 1
  br label %81, !llvm.loop !10

91:                                               ; preds = %81
  %.lcssa9 = phi double [ %82, %81 ]
  %storemerge2.lcssa = phi i32 [ %storemerge2, %81 ]
  store i32 %storemerge2.lcssa, ptr %8, align 4
  store double %.lcssa9, ptr %10, align 8
  %92 = load ptr, ptr %6, align 8
  %93 = load double, ptr %10, align 8
  %94 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.6, ptr noundef %92, double noundef %93)
  %95 = load i32, ptr @current_test, align 4
  %96 = icmp sgt i32 %95, 1
  br i1 %96, label %97, label %124

97:                                               ; preds = %91
  %98 = load i32, ptr %7, align 4
  %.not = icmp eq i32 %98, 0
  br i1 %.not, label %124, label %99

99:                                               ; preds = %97
  %.promoted11 = load double, ptr %11, align 8
  br label %100

100:                                              ; preds = %113, %99
  %101 = phi double [ %.promoted11, %99 ], [ %112, %113 ]
  %storemerge3 = phi i32 [ 1, %99 ], [ %114, %113 ]
  %102 = load i32, ptr @current_test, align 4
  %103 = icmp slt i32 %storemerge3, %102
  br i1 %103, label %104, label %115

104:                                              ; preds = %100
  %105 = load ptr, ptr @results, align 8
  %106 = sext i32 %storemerge3 to i64
  %107 = getelementptr inbounds [16 x i8], ptr %105, i64 %106
  %108 = load double, ptr %107, align 8
  %109 = load double, ptr %105, align 8
  %110 = fdiv double %108, %109
  %111 = call double @log(double noundef %110) #15
  %112 = fadd double %101, %111
  br label %113

113:                                              ; preds = %104
  %114 = add nsw i32 %storemerge3, 1
  br label %100, !llvm.loop !11

115:                                              ; preds = %100
  %.lcssa12 = phi double [ %101, %100 ]
  %storemerge3.lcssa = phi i32 [ %storemerge3, %100 ]
  store i32 %storemerge3.lcssa, ptr %8, align 4
  store double %.lcssa12, ptr %11, align 8
  %116 = load ptr, ptr %6, align 8
  %117 = load double, ptr %11, align 8
  %118 = load i32, ptr @current_test, align 4
  %119 = add nsw i32 %118, -1
  %120 = sitofp i32 %119 to double
  %121 = fdiv double %117, %120
  %122 = call double @exp(double noundef %121) #15
  %123 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.7, ptr noundef %116, double noundef %122)
  br label %124

124:                                              ; preds = %115, %97, %91
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
  %8 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  store double 0.000000e+00, ptr %6, align 8
  store i32 12, ptr %7, align 4
  %.promoted = load i32, ptr %8, align 4
  %.promoted3 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %26, %2
  %10 = phi i32 [ %.promoted3, %2 ], [ %25, %26 ]
  %11 = phi i32 [ %.promoted, %2 ], [ %21, %26 ]
  %storemerge = phi i32 [ 0, %2 ], [ %27, %26 ]
  %12 = load i32, ptr @current_test, align 4
  %13 = icmp slt i32 %storemerge, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %9
  %15 = load ptr, ptr @results, align 8
  %16 = sext i32 %storemerge to i64
  %17 = getelementptr inbounds [16 x i8], ptr %15, i64 %16
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %19 = load ptr, ptr %18, align 8
  %20 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %19) #15
  %21 = trunc i64 %20 to i32
  %22 = icmp slt i32 %10, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23, %14
  %25 = phi i32 [ %21, %23 ], [ %10, %14 ]
  br label %26

26:                                               ; preds = %24
  %27 = add nsw i32 %storemerge, 1
  br label %9, !llvm.loop !12

28:                                               ; preds = %9
  %.lcssa4 = phi i32 [ %10, %9 ]
  %.lcssa = phi i32 [ %11, %9 ]
  %storemerge.lcssa = phi i32 [ %storemerge, %9 ]
  store i32 %storemerge.lcssa, ptr %5, align 4
  store i32 %.lcssa, ptr %8, align 4
  store i32 %.lcssa4, ptr %7, align 4
  %29 = load ptr, ptr %3, align 8
  %30 = load i32, ptr %7, align 4
  %31 = add nsw i32 %30, -12
  %32 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %29, ptr noundef nonnull @.str.8, i32 noundef %31, ptr noundef nonnull @.str.2)
  %33 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %29, ptr noundef nonnull @.str.9, i32 noundef %30, ptr noundef nonnull @.str.2)
  %34 = load ptr, ptr %3, align 8
  %35 = load i32, ptr %7, align 4
  br label %36

36:                                               ; preds = %57, %28
  %storemerge1 = phi i32 [ 0, %28 ], [ %58, %57 ]
  %37 = load i32, ptr @current_test, align 4
  %38 = icmp slt i32 %storemerge1, %37
  br i1 %38, label %39, label %59

39:                                               ; preds = %36
  %40 = load ptr, ptr @results, align 8
  %41 = sext i32 %storemerge1 to i64
  %42 = getelementptr inbounds [16 x i8], ptr %40, i64 %41
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 8
  %44 = load ptr, ptr %43, align 8
  %45 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %44) #15
  %46 = trunc i64 %45 to i32
  %47 = sub i32 %35, %46
  %48 = load ptr, ptr @results, align 8
  %49 = sext i32 %storemerge1 to i64
  %50 = getelementptr inbounds [16 x i8], ptr %48, i64 %49
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 8
  %52 = load ptr, ptr %51, align 8
  %53 = sext i32 %storemerge1 to i64
  %54 = getelementptr inbounds [16 x i8], ptr %48, i64 %53
  %55 = load double, ptr %54, align 8
  %56 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %34, ptr noundef nonnull @.str.10, i32 noundef %storemerge1, i32 noundef %47, ptr noundef nonnull @.str.5, ptr noundef %52, double noundef %55)
  br label %57

57:                                               ; preds = %39
  %58 = add nsw i32 %storemerge1, 1
  br label %36, !llvm.loop !13

59:                                               ; preds = %36
  %storemerge1.lcssa = phi i32 [ %storemerge1, %36 ]
  store i32 %storemerge1.lcssa, ptr %5, align 4
  %60 = load i32, ptr @current_test, align 4
  %61 = load ptr, ptr @results, align 8
  %.promoted7 = load double, ptr %6, align 8
  br label %62

62:                                               ; preds = %70, %59
  %63 = phi double [ %.promoted7, %59 ], [ %69, %70 ]
  %storemerge2 = phi i32 [ 0, %59 ], [ %71, %70 ]
  %64 = icmp slt i32 %storemerge2, %60
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = sext i32 %storemerge2 to i64
  %67 = getelementptr inbounds [16 x i8], ptr %61, i64 %66
  %68 = load double, ptr %67, align 8
  %69 = fadd double %63, %68
  br label %70

70:                                               ; preds = %65
  %71 = add nsw i32 %storemerge2, 1
  br label %62, !llvm.loop !14

72:                                               ; preds = %62
  %.lcssa8 = phi double [ %63, %62 ]
  %storemerge2.lcssa = phi i32 [ %storemerge2, %62 ]
  store i32 %storemerge2.lcssa, ptr %5, align 4
  store double %.lcssa8, ptr %6, align 8
  %73 = load ptr, ptr %3, align 8
  %74 = load ptr, ptr %4, align 8
  %75 = load double, ptr %6, align 8
  %76 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %73, ptr noundef nonnull @.str.6, ptr noundef %74, double noundef %75)
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
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load double, ptr %0, align 8
  %7 = load double, ptr %1, align 8
  %8 = fcmp olt double %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 -1, ptr %3, align 4
  br label %18

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 8
  %12 = load double, ptr %11, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = load double, ptr %13, align 8
  %15 = fcmp ogt double %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 1, ptr %3, align 4
  br label %18

17:                                               ; preds = %10
  store i32 0, ptr %3, align 4
  br label %18

18:                                               ; preds = %17, %16, %9
  %19 = load i32, ptr %3, align 4
  ret i32 %19
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
  br i1 %13, label %14, label %52

14:                                               ; preds = %3
  %15 = load ptr, ptr %4, align 8
  %16 = load double, ptr %15, align 8
  store double %16, ptr %7, align 8
  store ptr %15, ptr %8, align 8
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
  %50 = getelementptr inbounds nuw i8, ptr %47, i64 8
  %51 = load ptr, ptr %5, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %50, ptr noundef %51, ptr noundef %49)
  br label %52

52:                                               ; preds = %45, %3
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
  br i1 %13, label %14, label %52

14:                                               ; preds = %3
  %15 = load ptr, ptr %4, align 8
  %16 = load double, ptr %15, align 8
  store double %16, ptr %7, align 8
  store ptr %15, ptr %8, align 8
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
  %50 = getelementptr inbounds nuw i8, ptr %47, i64 8
  %51 = load ptr, ptr %5, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %50, ptr noundef %51, ptr noundef %49)
  br label %52

52:                                               ; preds = %45, %3
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
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %15 = load ptr, ptr %14, align 8
  %16 = call i32 @atoi(ptr noundef %15)
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %12
  %19 = phi i32 [ %16, %12 ], [ 300, %17 ]
  store i32 %19, ptr %6, align 4
  %20 = load i32, ptr %3, align 4
  %21 = icmp sgt i32 %20, 2
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 16
  %25 = load ptr, ptr %24, align 8
  %26 = call i32 @atoi(ptr noundef %25)
  br label %28

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %22
  %29 = phi i32 [ %26, %22 ], [ 10000, %27 ]
  store i32 %29, ptr %7, align 4
  %30 = add nsw i32 %29, 123
  call void @srand(i32 noundef %30)
  %31 = sext i32 %29 to i64
  %32 = icmp slt i32 %29, 0
  %33 = shl nsw i64 %31, 3
  %34 = select i1 %32, i64 -1, i64 %33
  %35 = call noalias noundef nonnull ptr @_Znay(i64 noundef %34) #16
  store ptr %35, ptr %8, align 8
  %36 = load i32, ptr %7, align 4
  %37 = load ptr, ptr %8, align 8
  br label %38

38:                                               ; preds = %45, %28
  %storemerge = phi i32 [ 0, %28 ], [ %46, %45 ]
  %39 = icmp slt i32 %storemerge, %36
  br i1 %39, label %40, label %47

40:                                               ; preds = %38
  %41 = call i32 @rand()
  %42 = sitofp i32 %41 to double
  %43 = sext i32 %storemerge to i64
  %44 = getelementptr inbounds [8 x i8], ptr %37, i64 %43
  store double %42, ptr %44, align 8
  br label %45

45:                                               ; preds = %40
  %46 = add nsw i32 %storemerge, 1
  br label %38, !llvm.loop !21

47:                                               ; preds = %38
  %storemerge.lcssa = phi i32 [ %storemerge, %38 ]
  store i32 %storemerge.lcssa, ptr %9, align 4
  %48 = load i32, ptr %7, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp slt i32 %48, 0
  %51 = shl nsw i64 %49, 3
  %52 = select i1 %50, i64 -1, i64 %51
  %53 = call noalias noundef nonnull ptr @_Znay(i64 noundef %52) #16
  store ptr %53, ptr %10, align 8
  %54 = load i32, ptr %6, align 4
  %55 = load ptr, ptr %8, align 8
  %56 = load i32, ptr %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [8 x i8], ptr %55, i64 %57
  %59 = load ptr, ptr %10, align 8
  %60 = sext i32 %56 to i64
  %61 = load i32, ptr %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [8 x i8], ptr %59, i64 %62
  br label %64

64:                                               ; preds = %68, %47
  %storemerge1 = phi i32 [ 0, %47 ], [ %69, %68 ]
  %65 = icmp slt i32 %storemerge1, %54
  br i1 %65, label %66, label %70

66:                                               ; preds = %64
  %67 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %55, ptr noundef %58, ptr noundef %59)
  call void @qsort(ptr noundef %59, i64 noundef %60, i64 noundef 8, ptr noundef nonnull @_Z19less_than_function1PKvS0_)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %59, ptr noundef %63)
  br label %68

68:                                               ; preds = %66
  %69 = add nsw i32 %storemerge1, 1
  br label %64, !llvm.loop !22

70:                                               ; preds = %64
  %storemerge1.lcssa = phi i32 [ %storemerge1, %64 ]
  store i32 %storemerge1.lcssa, ptr %5, align 4
  %71 = load i32, ptr %6, align 4
  %72 = load ptr, ptr %8, align 8
  %73 = load i32, ptr %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [8 x i8], ptr %72, i64 %74
  %76 = load ptr, ptr %10, align 8
  %77 = sext i32 %73 to i64
  %78 = getelementptr inbounds [8 x i8], ptr %76, i64 %77
  %79 = load i32, ptr %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [8 x i8], ptr %76, i64 %80
  br label %82

82:                                               ; preds = %86, %70
  %storemerge2 = phi i32 [ 0, %70 ], [ %87, %86 ]
  %83 = icmp slt i32 %storemerge2, %71
  br i1 %83, label %84, label %88

84:                                               ; preds = %82
  %85 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %72, ptr noundef %75, ptr noundef %76)
  call void @_Z18quicksort_functionPdS_PFbddE(ptr noundef %76, ptr noundef %78, ptr noundef nonnull @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %76, ptr noundef %81)
  br label %86

86:                                               ; preds = %84
  %87 = add nsw i32 %storemerge2, 1
  br label %82, !llvm.loop !23

88:                                               ; preds = %82
  %storemerge2.lcssa = phi i32 [ %storemerge2, %82 ]
  store i32 %storemerge2.lcssa, ptr %5, align 4
  %89 = load i32, ptr %6, align 4
  %90 = load ptr, ptr %8, align 8
  %91 = load i32, ptr %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [8 x i8], ptr %90, i64 %92
  %94 = load ptr, ptr %10, align 8
  %95 = sext i32 %91 to i64
  %96 = getelementptr inbounds [8 x i8], ptr %94, i64 %95
  %97 = load i32, ptr %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [8 x i8], ptr %94, i64 %98
  br label %100

100:                                              ; preds = %104, %88
  %storemerge3 = phi i32 [ 0, %88 ], [ %105, %104 ]
  %101 = icmp slt i32 %storemerge3, %89
  br i1 %101, label %102, label %106

102:                                              ; preds = %100
  %103 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %90, ptr noundef %93, ptr noundef %94)
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %94, ptr noundef %96, ptr noundef nonnull @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %94, ptr noundef %99)
  br label %104

104:                                              ; preds = %102
  %105 = add nsw i32 %storemerge3, 1
  br label %100, !llvm.loop !24

106:                                              ; preds = %100
  %storemerge3.lcssa = phi i32 [ %storemerge3, %100 ]
  store i32 %storemerge3.lcssa, ptr %5, align 4
  %107 = load i32, ptr %6, align 4
  %108 = load ptr, ptr %8, align 8
  %109 = load i32, ptr %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [8 x i8], ptr %108, i64 %110
  %112 = load ptr, ptr %10, align 8
  %113 = sext i32 %109 to i64
  %114 = getelementptr inbounds [8 x i8], ptr %112, i64 %113
  %115 = load i32, ptr %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [8 x i8], ptr %112, i64 %116
  br label %118

118:                                              ; preds = %122, %106
  %storemerge4 = phi i32 [ 0, %106 ], [ %123, %122 ]
  %119 = icmp slt i32 %storemerge4, %107
  br i1 %119, label %120, label %124

120:                                              ; preds = %118
  %121 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %108, ptr noundef %111, ptr noundef %112)
  call void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef %112, ptr noundef %114)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %112, ptr noundef %117)
  br label %122

122:                                              ; preds = %120
  %123 = add nsw i32 %storemerge4, 1
  br label %118, !llvm.loop !25

124:                                              ; preds = %118
  %storemerge4.lcssa = phi i32 [ %storemerge4, %118 ]
  store i32 %storemerge4.lcssa, ptr %5, align 4
  %125 = load i32, ptr %6, align 4
  %126 = load ptr, ptr %8, align 8
  %127 = load i32, ptr %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [8 x i8], ptr %126, i64 %128
  %130 = load ptr, ptr %10, align 8
  %131 = sext i32 %127 to i64
  %132 = getelementptr inbounds [8 x i8], ptr %130, i64 %131
  %133 = load i32, ptr %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [8 x i8], ptr %130, i64 %134
  br label %136

136:                                              ; preds = %140, %124
  %storemerge5 = phi i32 [ 0, %124 ], [ %141, %140 ]
  %137 = icmp slt i32 %storemerge5, %125
  br i1 %137, label %138, label %142

138:                                              ; preds = %136
  %139 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %126, ptr noundef %129, ptr noundef %130)
  call void @_ZSt4sortIPdPFbddEEvT_S3_T0_(ptr noundef %130, ptr noundef %132, ptr noundef nonnull @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %130, ptr noundef %135)
  br label %140

140:                                              ; preds = %138
  %141 = add nsw i32 %storemerge5, 1
  br label %136, !llvm.loop !26

142:                                              ; preds = %136
  %storemerge5.lcssa = phi i32 [ %storemerge5, %136 ]
  store i32 %storemerge5.lcssa, ptr %5, align 4
  %143 = load i32, ptr %6, align 4
  %144 = load ptr, ptr %8, align 8
  %145 = load i32, ptr %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [8 x i8], ptr %144, i64 %146
  %148 = load ptr, ptr %10, align 8
  %149 = sext i32 %145 to i64
  %150 = getelementptr inbounds [8 x i8], ptr %148, i64 %149
  %151 = load i32, ptr %7, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [8 x i8], ptr %148, i64 %152
  br label %154

154:                                              ; preds = %158, %142
  %storemerge6 = phi i32 [ 0, %142 ], [ %159, %158 ]
  %155 = icmp slt i32 %storemerge6, %143
  br i1 %155, label %156, label %160

156:                                              ; preds = %154
  %157 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %144, ptr noundef %147, ptr noundef %148)
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %148, ptr noundef %150, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %148, ptr noundef %153)
  br label %158

158:                                              ; preds = %156
  %159 = add nsw i32 %storemerge6, 1
  br label %154, !llvm.loop !27

160:                                              ; preds = %154
  %storemerge6.lcssa = phi i32 [ %storemerge6, %154 ]
  store i32 %storemerge6.lcssa, ptr %5, align 4
  %161 = load i32, ptr %6, align 4
  %162 = load ptr, ptr %10, align 8
  %163 = load i32, ptr %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [8 x i8], ptr %162, i64 %164
  %166 = sext i32 %163 to i64
  %167 = getelementptr inbounds [8 x i8], ptr %162, i64 %166
  %168 = load ptr, ptr %8, align 8
  %169 = load i32, ptr %7, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [8 x i8], ptr %168, i64 %170
  %172 = load ptr, ptr %10, align 8
  br label %173

173:                                              ; preds = %177, %160
  %storemerge7 = phi i32 [ 0, %160 ], [ %178, %177 ]
  %174 = icmp slt i32 %storemerge7, %161
  br i1 %174, label %175, label %179

175:                                              ; preds = %173
  call void @_ZSt4sortIPd17less_than_functorEvT_S2_T0_(ptr noundef %162, ptr noundef %165, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %162, ptr noundef %167)
  %176 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %168, ptr noundef %171, ptr noundef %172)
  br label %177

177:                                              ; preds = %175
  %178 = add nsw i32 %storemerge7, 1
  br label %173, !llvm.loop !28

179:                                              ; preds = %173
  %storemerge7.lcssa = phi i32 [ %storemerge7, %173 ]
  store i32 %storemerge7.lcssa, ptr %5, align 4
  %180 = load i32, ptr %6, align 4
  %181 = load ptr, ptr %8, align 8
  %182 = load i32, ptr %7, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [8 x i8], ptr %181, i64 %183
  %185 = load ptr, ptr %10, align 8
  %186 = sext i32 %182 to i64
  %187 = getelementptr inbounds [8 x i8], ptr %185, i64 %186
  %188 = load i32, ptr %7, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [8 x i8], ptr %185, i64 %189
  br label %191

191:                                              ; preds = %195, %179
  %storemerge8 = phi i32 [ 0, %179 ], [ %196, %195 ]
  %192 = icmp slt i32 %storemerge8, %180
  br i1 %192, label %193, label %197

193:                                              ; preds = %191
  %194 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %181, ptr noundef %184, ptr noundef %185)
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %185, ptr noundef %187, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %185, ptr noundef %190)
  br label %195

195:                                              ; preds = %193
  %196 = add nsw i32 %storemerge8, 1
  br label %191, !llvm.loop !29

197:                                              ; preds = %191
  %storemerge8.lcssa = phi i32 [ %storemerge8, %191 ]
  store i32 %storemerge8.lcssa, ptr %5, align 4
  %198 = load i32, ptr %6, align 4
  %199 = load ptr, ptr %8, align 8
  %200 = load i32, ptr %7, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [8 x i8], ptr %199, i64 %201
  %203 = load ptr, ptr %10, align 8
  %204 = sext i32 %200 to i64
  %205 = getelementptr inbounds [8 x i8], ptr %203, i64 %204
  %206 = load i32, ptr %7, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [8 x i8], ptr %203, i64 %207
  br label %209

209:                                              ; preds = %213, %197
  %storemerge9 = phi i32 [ 0, %197 ], [ %214, %213 ]
  %210 = icmp slt i32 %storemerge9, %198
  br i1 %210, label %211, label %215

211:                                              ; preds = %209
  %212 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %199, ptr noundef %202, ptr noundef %203)
  call void @_ZSt4sortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %203, ptr noundef %205, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %203, ptr noundef %208)
  br label %213

213:                                              ; preds = %211
  %214 = add nsw i32 %storemerge9, 1
  br label %209, !llvm.loop !30

215:                                              ; preds = %209
  %storemerge9.lcssa = phi i32 [ %storemerge9, %209 ]
  store i32 %storemerge9.lcssa, ptr %5, align 4
  %216 = load i32, ptr %6, align 4
  %217 = load ptr, ptr %8, align 8
  %218 = load i32, ptr %7, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [8 x i8], ptr %217, i64 %219
  %221 = load ptr, ptr %10, align 8
  %222 = sext i32 %218 to i64
  %223 = getelementptr inbounds [8 x i8], ptr %221, i64 %222
  %224 = load i32, ptr %7, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [8 x i8], ptr %221, i64 %225
  br label %227

227:                                              ; preds = %231, %215
  %storemerge10 = phi i32 [ 0, %215 ], [ %232, %231 ]
  %228 = icmp slt i32 %storemerge10, %216
  br i1 %228, label %229, label %233

229:                                              ; preds = %227
  %230 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %217, ptr noundef %220, ptr noundef %221)
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %221, ptr noundef %223, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %221, ptr noundef %226)
  br label %231

231:                                              ; preds = %229
  %232 = add nsw i32 %storemerge10, 1
  br label %227, !llvm.loop !31

233:                                              ; preds = %227
  %storemerge10.lcssa = phi i32 [ %storemerge10, %227 ]
  store i32 %storemerge10.lcssa, ptr %5, align 4
  %234 = load i32, ptr %6, align 4
  %235 = load ptr, ptr %8, align 8
  %236 = load i32, ptr %7, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [8 x i8], ptr %235, i64 %237
  %239 = load ptr, ptr %10, align 8
  %240 = sext i32 %236 to i64
  %241 = getelementptr inbounds [8 x i8], ptr %239, i64 %240
  %242 = load i32, ptr %7, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [8 x i8], ptr %239, i64 %243
  br label %245

245:                                              ; preds = %249, %233
  %storemerge11 = phi i32 [ 0, %233 ], [ %250, %249 ]
  %246 = icmp slt i32 %storemerge11, %234
  br i1 %246, label %247, label %251

247:                                              ; preds = %245
  %248 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %235, ptr noundef %238, ptr noundef %239)
  call void @_ZSt4sortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %239, ptr noundef %241, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %239, ptr noundef %244)
  br label %249

249:                                              ; preds = %247
  %250 = add nsw i32 %storemerge11, 1
  br label %245, !llvm.loop !32

251:                                              ; preds = %245
  %storemerge11.lcssa = phi i32 [ %storemerge11, %245 ]
  store i32 %storemerge11.lcssa, ptr %5, align 4
  %252 = load i32, ptr %6, align 4
  %253 = load ptr, ptr %8, align 8
  %254 = load i32, ptr %7, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [8 x i8], ptr %253, i64 %255
  %257 = load ptr, ptr %10, align 8
  %258 = sext i32 %254 to i64
  %259 = getelementptr inbounds [8 x i8], ptr %257, i64 %258
  %260 = load i32, ptr %7, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [8 x i8], ptr %257, i64 %261
  br label %263

263:                                              ; preds = %267, %251
  %storemerge12 = phi i32 [ 0, %251 ], [ %268, %267 ]
  %264 = icmp slt i32 %storemerge12, %252
  br i1 %264, label %265, label %269

265:                                              ; preds = %263
  %266 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %253, ptr noundef %256, ptr noundef %257)
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %257, ptr noundef %259)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %257, ptr noundef %262)
  br label %267

267:                                              ; preds = %265
  %268 = add nsw i32 %storemerge12, 1
  br label %263, !llvm.loop !33

269:                                              ; preds = %263
  %storemerge12.lcssa = phi i32 [ %storemerge12, %263 ]
  store i32 %storemerge12.lcssa, ptr %5, align 4
  %270 = load i32, ptr %6, align 4
  %271 = load ptr, ptr %8, align 8
  %272 = load i32, ptr %7, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [8 x i8], ptr %271, i64 %273
  %275 = load ptr, ptr %10, align 8
  %276 = sext i32 %272 to i64
  %277 = getelementptr inbounds [8 x i8], ptr %275, i64 %276
  %278 = load i32, ptr %7, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [8 x i8], ptr %275, i64 %279
  br label %281

281:                                              ; preds = %285, %269
  %storemerge13 = phi i32 [ 0, %269 ], [ %286, %285 ]
  %282 = icmp slt i32 %storemerge13, %270
  br i1 %282, label %283, label %287

283:                                              ; preds = %281
  %284 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %271, ptr noundef %274, ptr noundef %275)
  call void @_ZSt4sortIPdEvT_S1_(ptr noundef %275, ptr noundef %277)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %275, ptr noundef %280)
  br label %285

285:                                              ; preds = %283
  %286 = add nsw i32 %storemerge13, 1
  br label %281, !llvm.loop !34

287:                                              ; preds = %281
  %storemerge13.lcssa = phi i32 [ %storemerge13, %281 ]
  store i32 %storemerge13.lcssa, ptr %5, align 4
  %288 = load ptr, ptr %10, align 8
  %289 = icmp eq ptr %288, null
  br i1 %289, label %291, label %290

290:                                              ; preds = %287
  call void @_ZdaPv(ptr noundef nonnull %288) #17
  br label %291

291:                                              ; preds = %290, %287
  %292 = load ptr, ptr %8, align 8
  %293 = icmp eq ptr %292, null
  br i1 %293, label %295, label %294

294:                                              ; preds = %291
  call void @_ZdaPv(ptr noundef nonnull %292) #17
  br label %295

295:                                              ; preds = %294, %291
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
  br i1 %11, label %12, label %47

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 8
  %14 = load double, ptr %13, align 8
  store double %14, ptr %5, align 8
  store ptr %13, ptr %6, align 8
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
  %45 = getelementptr inbounds nuw i8, ptr %43, i64 8
  %46 = load ptr, ptr %4, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %45, ptr noundef %46, ptr noundef nonnull @_Z19less_than_function2dd)
  br label %47

47:                                               ; preds = %41, %2
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
  br i1 %13, label %14, label %51

14:                                               ; preds = %3
  %15 = load ptr, ptr %5, align 8
  %16 = load double, ptr %15, align 8
  store double %16, ptr %7, align 8
  store ptr %15, ptr %8, align 8
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
  br label %45

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
  br label %45

40:                                               ; preds = %35
  %41 = load ptr, ptr %9, align 8
  %42 = load double, ptr %41, align 8
  %43 = load ptr, ptr %8, align 8
  %44 = load double, ptr %43, align 8
  store double %44, ptr %41, align 8
  store double %42, ptr %43, align 8
  br label %18, !llvm.loop !41

45:                                               ; preds = %39, %28
  %46 = load ptr, ptr %5, align 8
  %47 = load ptr, ptr %9, align 8
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 8
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %46, ptr noundef nonnull %48, i8 undef)
  %49 = getelementptr inbounds nuw i8, ptr %47, i64 8
  %50 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef nonnull %49, ptr noundef %50, i8 undef)
  br label %51

51:                                               ; preds = %45, %3
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
  br i1 %13, label %14, label %51

14:                                               ; preds = %3
  %15 = load ptr, ptr %5, align 8
  %16 = load double, ptr %15, align 8
  store double %16, ptr %7, align 8
  store ptr %15, ptr %8, align 8
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
  br label %45

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
  br label %45

40:                                               ; preds = %35
  %41 = load ptr, ptr %9, align 8
  %42 = load double, ptr %41, align 8
  %43 = load ptr, ptr %8, align 8
  %44 = load double, ptr %43, align 8
  store double %44, ptr %41, align 8
  store double %42, ptr %43, align 8
  br label %18, !llvm.loop !44

45:                                               ; preds = %39, %28
  %46 = load ptr, ptr %5, align 8
  %47 = load ptr, ptr %9, align 8
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 8
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %46, ptr noundef nonnull %48, i8 undef)
  %49 = getelementptr inbounds nuw i8, ptr %47, i64 8
  %50 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef nonnull %49, ptr noundef %50, i8 undef)
  br label %51

51:                                               ; preds = %45, %3
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
  br i1 %13, label %14, label %51

14:                                               ; preds = %3
  %15 = load ptr, ptr %5, align 8
  %16 = load double, ptr %15, align 8
  store double %16, ptr %7, align 8
  store ptr %15, ptr %8, align 8
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
  br label %45

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
  br label %45

40:                                               ; preds = %35
  %41 = load ptr, ptr %9, align 8
  %42 = load double, ptr %41, align 8
  %43 = load ptr, ptr %8, align 8
  %44 = load double, ptr %43, align 8
  store double %44, ptr %41, align 8
  store double %42, ptr %43, align 8
  br label %18, !llvm.loop !47

45:                                               ; preds = %39, %28
  %46 = load ptr, ptr %5, align 8
  %47 = load ptr, ptr %9, align 8
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 8
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %46, ptr noundef nonnull %48, i8 undef)
  %49 = getelementptr inbounds nuw i8, ptr %47, i64 8
  %50 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef nonnull %49, ptr noundef %50, i8 undef)
  br label %51

51:                                               ; preds = %45, %3
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
  br i1 %11, label %12, label %47

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 8
  %14 = load double, ptr %13, align 8
  store double %14, ptr %5, align 8
  store ptr %13, ptr %6, align 8
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
  %23 = fcmp olt double %16, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %19, !llvm.loop !48

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
  %32 = fcmp olt double %31, %17
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = getelementptr inbounds nuw i8, ptr %30, i64 8
  br label %29, !llvm.loop !49

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
  br label %18, !llvm.loop !50

41:                                               ; preds = %37, %27
  %42 = load ptr, ptr %3, align 8
  %43 = load ptr, ptr %7, align 8
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 8
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %42, ptr noundef nonnull %44)
  %45 = getelementptr inbounds nuw i8, ptr %43, i64 8
  %46 = load ptr, ptr %4, align 8
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef nonnull %45, ptr noundef %46)
  br label %47

47:                                               ; preds = %41, %2
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
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = load i64, ptr %6, align 8
  %16 = shl i64 %15, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %13, ptr align 8 %14, i64 %16, i1 false)
  %17 = getelementptr inbounds [8 x i8], ptr %13, i64 %15
  store ptr %17, ptr %5, align 8
  br label %27

18:                                               ; preds = %3
  %19 = load i64, ptr %6, align 8
  %20 = icmp eq i64 %19, 1
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load ptr, ptr %4, align 8
  %23 = load double, ptr %22, align 8
  %24 = load ptr, ptr %5, align 8
  store double %23, ptr %24, align 8
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %25, ptr %5, align 8
  br label %26

26:                                               ; preds = %21, %18
  br label %27

27:                                               ; preds = %26, %12
  %28 = load ptr, ptr %5, align 8
  ret ptr %28
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
  br i1 %.not, label %20, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = ptrtoint ptr %10 to i64
  %12 = ptrtoint ptr %9 to i64
  %13 = sub i64 %11, %12
  %14 = ashr exact i64 %13, 3
  %15 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %14)
  %16 = shl nsw i64 %15, 1
  %17 = load i64, ptr %4, align 8
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %9, ptr noundef %10, i64 noundef %16, i64 %17)
  %18 = load ptr, ptr %5, align 8
  %19 = load ptr, ptr %6, align 8
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %18, ptr noundef %19, i64 %17)
  br label %20

20:                                               ; preds = %8, %3
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
  %.promoted2 = load i64, ptr %8, align 8
  br label %14

14:                                               ; preds = %26, %4
  %15 = phi i64 [ %27, %26 ], [ %.promoted2, %4 ]
  %16 = phi ptr [ %28, %26 ], [ %.promoted, %4 ]
  %17 = ptrtoint ptr %16 to i64
  %18 = sub i64 %17, %11
  %19 = icmp sgt i64 %18, 128
  br i1 %19, label %20, label %.loopexit

20:                                               ; preds = %14
  %21 = icmp eq i64 %15, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  %.lcssa4 = phi i64 [ %15, %20 ]
  %.lcssa1 = phi ptr [ %16, %20 ]
  store ptr %.lcssa1, ptr %7, align 8
  store i64 %.lcssa4, ptr %8, align 8
  %23 = load ptr, ptr %6, align 8
  %24 = load ptr, ptr %7, align 8
  %25 = load i64, ptr %5, align 8
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %23, ptr noundef %24, ptr noundef %24, i64 %25)
  br label %29

26:                                               ; preds = %20
  %27 = add nsw i64 %15, -1
  %28 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_(ptr noundef %12, ptr noundef %16, i64 %13)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %28, ptr noundef %16, i64 noundef %27, i64 %13)
  br label %14, !llvm.loop !51

.loopexit:                                        ; preds = %14
  %.lcssa3 = phi i64 [ %15, %14 ]
  %.lcssa = phi ptr [ %16, %14 ]
  store ptr %.lcssa, ptr %7, align 8
  store i64 %.lcssa3, ptr %8, align 8
  br label %29

29:                                               ; preds = %.loopexit, %22
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
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 128
  %15 = load i64, ptr %4, align 8
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %13, ptr noundef nonnull %14, i64 %15)
  %16 = getelementptr inbounds nuw i8, ptr %13, i64 128
  %17 = load ptr, ptr %6, align 8
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef nonnull %16, ptr noundef %17, i64 %15)
  br label %22

18:                                               ; preds = %3
  %19 = load ptr, ptr %5, align 8
  %20 = load ptr, ptr %6, align 8
  %21 = load i64, ptr %4, align 8
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %19, ptr noundef %20, i64 %21)
  br label %22

22:                                               ; preds = %18, %12
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
  %16 = load ptr, ptr %6, align 8
  %17 = getelementptr inbounds i8, ptr %16, i64 -8
  %18 = load i64, ptr %4, align 8
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_(ptr noundef %14, ptr noundef nonnull %15, ptr noundef %13, ptr noundef nonnull %17, i64 %18)
  %19 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %20 = load ptr, ptr %5, align 8
  %21 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_S7_T0_(ptr noundef nonnull %19, ptr noundef %16, ptr noundef %20, i64 %18)
  ret ptr %21
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
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %9 = ptrtoint ptr %1 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = icmp slt i64 %11, 9
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %34

14:                                               ; preds = %3
  %15 = load ptr, ptr %5, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = ptrtoint ptr %15 to i64
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %17, %18
  %20 = ashr exact i64 %19, 3
  store i64 %20, ptr %7, align 8
  %21 = add nsw i64 %20, -2
  %22 = sdiv i64 %21, 2
  %23 = load ptr, ptr %4, align 8
  %24 = load i64, ptr %7, align 8
  %25 = load ptr, ptr %6, align 8, !nonnull !53, !align !54
  br label %26

26:                                               ; preds = %32, %14
  %storemerge = phi i64 [ %22, %14 ], [ %33, %32 ]
  %27 = getelementptr inbounds [8 x i8], ptr %23, i64 %storemerge
  %28 = load double, ptr %27, align 8
  %29 = load i64, ptr %25, align 8
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef %23, i64 noundef %storemerge, i64 noundef %24, double noundef %28, i64 %29)
  %30 = icmp eq i64 %storemerge, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  %storemerge.lcssa = phi i64 [ %storemerge, %26 ]
  store i64 %storemerge.lcssa, ptr %8, align 8
  br label %34

32:                                               ; preds = %26
  %33 = add nsw i64 %storemerge, -1
  br label %26, !llvm.loop !56

34:                                               ; preds = %31, %13
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
  %.promoted1 = load i64, ptr %8, align 8
  br label %20

20:                                               ; preds = %33, %5
  %21 = phi i64 [ %34, %33 ], [ %.promoted1, %5 ]
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
  %.lcssa2 = phi i64 [ %21, %20 ]
  %.lcssa = phi i64 [ %22, %20 ]
  store i64 %.lcssa, ptr %12, align 8
  store i64 %.lcssa2, ptr %8, align 8
  %39 = load i64, ptr %9, align 8
  %40 = and i64 %39, 1
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = load i64, ptr %12, align 8
  %44 = load i64, ptr %9, align 8
  %45 = add nsw i64 %44, -2
  %46 = sdiv i64 %45, 2
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %42
  %49 = load i64, ptr %12, align 8
  %50 = shl i64 %49, 1
  %51 = add i64 %50, 2
  store i64 %51, ptr %12, align 8
  %52 = load ptr, ptr %7, align 8
  %53 = getelementptr [8 x i8], ptr %52, i64 %50
  %54 = getelementptr i8, ptr %53, i64 8
  %55 = load double, ptr %54, align 8
  %56 = load i64, ptr %8, align 8
  %57 = getelementptr inbounds [8 x i8], ptr %52, i64 %56
  store double %55, ptr %57, align 8
  %58 = load i64, ptr %12, align 8
  %59 = add nsw i64 %58, -1
  store i64 %59, ptr %8, align 8
  br label %60

60:                                               ; preds = %48, %42, %38
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %61 = load ptr, ptr %7, align 8
  %62 = load i64, ptr %8, align 8
  %63 = load i64, ptr %11, align 8
  %64 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEEEvT_T0_S8_T1_RT2_(ptr noundef %61, i64 noundef %62, i64 noundef %63, double noundef %64, ptr noundef nonnull align 8 dereferenceable(8) %13)
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

10:                                               ; preds = %30, %4
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
  %.lcssa = phi ptr [ %13, %12 ]
  store ptr %.lcssa, ptr %6, align 8
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
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %6, align 8
  ret ptr %29

30:                                               ; preds = %24
  %31 = load ptr, ptr %6, align 8
  %32 = load ptr, ptr %7, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %31, ptr noundef %32)
  %33 = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr %33, ptr %6, align 8
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
  br label %30

11:                                               ; preds = %3
  %12 = load ptr, ptr %5, align 8
  %13 = load ptr, ptr %6, align 8
  %14 = load ptr, ptr %5, align 8
  %15 = load ptr, ptr %5, align 8
  br label %16

16:                                               ; preds = %29, %11
  %.pn = phi ptr [ %12, %11 ], [ %storemerge, %29 ]
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %.not = icmp eq ptr %storemerge, %13
  br i1 %.not, label %.loopexit, label %17

17:                                               ; preds = %16
  %18 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %storemerge, ptr noundef %14)
  br i1 %18, label %19, label %25

19:                                               ; preds = %17
  %20 = load double, ptr %storemerge, align 8
  %21 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  %22 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %15)
  %23 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %storemerge)
  %24 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %22, ptr noundef %23, ptr noundef nonnull %21)
  store double %20, ptr %15, align 8
  br label %28

25:                                               ; preds = %17
  %26 = load i64, ptr %4, align 8
  %27 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %26)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %storemerge, i64 %27)
  br label %28

28:                                               ; preds = %25, %19
  br label %29

29:                                               ; preds = %28
  br label %16, !llvm.loop !62

.loopexit:                                        ; preds = %16
  %storemerge.lcssa = phi ptr [ %storemerge, %16 ]
  store ptr %storemerge.lcssa, ptr %7, align 8
  br label %30

30:                                               ; preds = %.loopexit, %10
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
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %2, ptr %5, align 8
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  store i64 %10, ptr %6, align 8
  %11 = sub nsw i64 0, %10
  call void @_ZSt9__advanceIPdxEvRT_T0_St26random_access_iterator_tag(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %11, i8 undef)
  %12 = icmp sgt i64 %10, 1
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load ptr, ptr %5, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = load i64, ptr %6, align 8
  %17 = shl i64 %16, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %14, ptr align 8 %15, i64 %17, i1 false)
  br label %26

18:                                               ; preds = %3
  %19 = load i64, ptr %6, align 8
  %20 = icmp eq i64 %19, 1
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load ptr, ptr %4, align 8
  %23 = load double, ptr %22, align 8
  %24 = load ptr, ptr %5, align 8
  store double %23, ptr %24, align 8
  br label %25

25:                                               ; preds = %21, %18
  br label %26

26:                                               ; preds = %25, %13
  %27 = load ptr, ptr %5, align 8
  ret ptr %27
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZSt9__advanceIPdxEvRT_T0_St26random_access_iterator_tag(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, i8 %2) #5 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %6 = call i1 @llvm.is.constant.i64(i64 %1)
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = load i64, ptr %5, align 8
  %9 = icmp eq i64 %8, 1
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load ptr, ptr %4, align 8, !nonnull !53, !align !54
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %13, ptr %11, align 8
  br label %30

14:                                               ; preds = %7, %3
  %15 = load i64, ptr %5, align 8
  %16 = call i1 @llvm.is.constant.i64(i64 %15)
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i64, ptr %5, align 8
  %19 = icmp eq i64 %18, -1
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load ptr, ptr %4, align 8, !nonnull !53, !align !54
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds i8, ptr %22, i64 -8
  store ptr %23, ptr %21, align 8
  br label %29

24:                                               ; preds = %17, %14
  %25 = load i64, ptr %5, align 8
  %26 = load ptr, ptr %4, align 8, !nonnull !53, !align !54
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds [8 x i8], ptr %27, i64 %25
  store ptr %28, ptr %26, align 8
  br label %29

29:                                               ; preds = %24, %20
  br label %30

30:                                               ; preds = %29, %10
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
  br i1 %.not, label %19, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = ptrtoint ptr %9 to i64
  %11 = ptrtoint ptr %8 to i64
  %12 = sub i64 %10, %11
  %13 = ashr exact i64 %12, 3
  %14 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %13)
  %15 = shl nsw i64 %14, 1
  %16 = load i8, ptr %4, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %8, ptr noundef %9, i64 noundef %15, i8 %16)
  %17 = load ptr, ptr %5, align 8
  %18 = load ptr, ptr %6, align 8
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %17, ptr noundef %18, i8 %16)
  br label %19

19:                                               ; preds = %7, %3
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
  %.promoted2 = load i64, ptr %8, align 8
  br label %13

13:                                               ; preds = %25, %4
  %14 = phi i64 [ %26, %25 ], [ %.promoted2, %4 ]
  %15 = phi ptr [ %27, %25 ], [ %.promoted, %4 ]
  %16 = ptrtoint ptr %15 to i64
  %17 = sub i64 %16, %10
  %18 = icmp sgt i64 %17, 128
  br i1 %18, label %19, label %.loopexit

19:                                               ; preds = %13
  %20 = icmp eq i64 %14, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  %.lcssa4 = phi i64 [ %14, %19 ]
  %.lcssa1 = phi ptr [ %15, %19 ]
  store ptr %.lcssa1, ptr %7, align 8
  store i64 %.lcssa4, ptr %8, align 8
  %22 = load ptr, ptr %6, align 8
  %23 = load ptr, ptr %7, align 8
  %24 = load i8, ptr %5, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %22, ptr noundef %23, ptr noundef %23, i8 %24)
  br label %28

25:                                               ; preds = %19
  %26 = add nsw i64 %14, -1
  %27 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_(ptr noundef %11, ptr noundef %15, i8 %12)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %27, ptr noundef %15, i64 noundef %26, i8 %12)
  br label %13, !llvm.loop !65

.loopexit:                                        ; preds = %13
  %.lcssa3 = phi i64 [ %14, %13 ]
  %.lcssa = phi ptr [ %15, %13 ]
  store ptr %.lcssa, ptr %7, align 8
  store i64 %.lcssa3, ptr %8, align 8
  br label %28

28:                                               ; preds = %.loopexit, %21
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
  %12 = load ptr, ptr %5, align 8
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 128
  %14 = load i8, ptr %4, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %12, ptr noundef nonnull %13, i8 %14)
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 128
  %16 = load ptr, ptr %6, align 8
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef nonnull %15, ptr noundef %16, i8 %14)
  br label %21

17:                                               ; preds = %3
  %18 = load ptr, ptr %5, align 8
  %19 = load ptr, ptr %6, align 8
  %20 = load i8, ptr %4, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %18, ptr noundef %19, i8 %20)
  br label %21

21:                                               ; preds = %17, %11
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
  %15 = load ptr, ptr %6, align 8
  %16 = getelementptr inbounds i8, ptr %15, i64 -8
  %17 = load i8, ptr %4, align 1
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_S6_T0_(ptr noundef %13, ptr noundef nonnull %14, ptr noundef %12, ptr noundef nonnull %16, i8 %17)
  %18 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %19 = load ptr, ptr %5, align 8
  %20 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_S6_T0_(ptr noundef nonnull %18, ptr noundef %15, ptr noundef %19, i8 %17)
  ret ptr %20
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
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %9 = ptrtoint ptr %1 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = icmp slt i64 %11, 9
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %34

14:                                               ; preds = %3
  %15 = load ptr, ptr %5, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = ptrtoint ptr %15 to i64
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %17, %18
  %20 = ashr exact i64 %19, 3
  store i64 %20, ptr %7, align 8
  %21 = add nsw i64 %20, -2
  %22 = sdiv i64 %21, 2
  %23 = load ptr, ptr %4, align 8
  %24 = load i64, ptr %7, align 8
  %25 = load ptr, ptr %6, align 8, !nonnull !53
  br label %26

26:                                               ; preds = %32, %14
  %storemerge = phi i64 [ %22, %14 ], [ %33, %32 ]
  %27 = getelementptr inbounds [8 x i8], ptr %23, i64 %storemerge
  %28 = load double, ptr %27, align 8
  %29 = load i8, ptr %25, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %23, i64 noundef %storemerge, i64 noundef %24, double noundef %28, i8 %29)
  %30 = icmp eq i64 %storemerge, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  %storemerge.lcssa = phi i64 [ %storemerge, %26 ]
  store i64 %storemerge.lcssa, ptr %8, align 8
  br label %34

32:                                               ; preds = %26
  %33 = add nsw i64 %storemerge, -1
  br label %26, !llvm.loop !68

34:                                               ; preds = %31, %13
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
  %.promoted1 = load i64, ptr %8, align 8
  br label %19

19:                                               ; preds = %32, %5
  %20 = phi i64 [ %33, %32 ], [ %.promoted1, %5 ]
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
  %.lcssa2 = phi i64 [ %20, %19 ]
  %.lcssa = phi i64 [ %21, %19 ]
  store i64 %.lcssa, ptr %12, align 8
  store i64 %.lcssa2, ptr %8, align 8
  %38 = load i64, ptr %9, align 8
  %39 = and i64 %38, 1
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = load i64, ptr %12, align 8
  %43 = load i64, ptr %9, align 8
  %44 = add nsw i64 %43, -2
  %45 = sdiv i64 %44, 2
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %41
  %48 = load i64, ptr %12, align 8
  %49 = shl i64 %48, 1
  %50 = add i64 %49, 2
  store i64 %50, ptr %12, align 8
  %51 = load ptr, ptr %7, align 8
  %52 = getelementptr [8 x i8], ptr %51, i64 %49
  %53 = getelementptr i8, ptr %52, i64 8
  %54 = load double, ptr %53, align 8
  %55 = load i64, ptr %8, align 8
  %56 = getelementptr inbounds [8 x i8], ptr %51, i64 %55
  store double %54, ptr %56, align 8
  %57 = load i64, ptr %12, align 8
  %58 = add nsw i64 %57, -1
  store i64 %58, ptr %8, align 8
  br label %59

59:                                               ; preds = %47, %41, %37
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %60 = load ptr, ptr %7, align 8
  %61 = load i64, ptr %8, align 8
  %62 = load i64, ptr %11, align 8
  %63 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %60, i64 noundef %61, i64 noundef %62, double noundef %63, ptr noundef nonnull align 1 dereferenceable(1) %13)
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

9:                                                ; preds = %29, %4
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
  %.lcssa = phi ptr [ %12, %11 ]
  store ptr %.lcssa, ptr %6, align 8
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
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %6, align 8
  ret ptr %28

29:                                               ; preds = %23
  %30 = load ptr, ptr %6, align 8
  %31 = load ptr, ptr %7, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %30, ptr noundef %31)
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 8
  store ptr %32, ptr %6, align 8
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
  br label %29

10:                                               ; preds = %3
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = load ptr, ptr %5, align 8
  br label %15

15:                                               ; preds = %28, %10
  %.pn = phi ptr [ %11, %10 ], [ %storemerge, %28 ]
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %.not = icmp eq ptr %storemerge, %12
  br i1 %.not, label %.loopexit, label %16

16:                                               ; preds = %15
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %storemerge, ptr noundef %13)
  br i1 %17, label %18, label %24

18:                                               ; preds = %16
  %19 = load double, ptr %storemerge, align 8
  %20 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  %21 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %14)
  %22 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %storemerge)
  %23 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %21, ptr noundef %22, ptr noundef nonnull %20)
  store double %19, ptr %14, align 8
  br label %27

24:                                               ; preds = %16
  %25 = load i8, ptr %4, align 1
  %26 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %25)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %storemerge, i8 %26)
  br label %27

27:                                               ; preds = %24, %18
  br label %28

28:                                               ; preds = %27
  br label %15, !llvm.loop !74

.loopexit:                                        ; preds = %15
  %storemerge.lcssa = phi ptr [ %storemerge, %15 ]
  store ptr %storemerge.lcssa, ptr %7, align 8
  br label %29

29:                                               ; preds = %.loopexit, %9
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
  br i1 %.not, label %19, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = ptrtoint ptr %9 to i64
  %11 = ptrtoint ptr %8 to i64
  %12 = sub i64 %10, %11
  %13 = ashr exact i64 %12, 3
  %14 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %13)
  %15 = shl nsw i64 %14, 1
  %16 = load i8, ptr %4, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %8, ptr noundef %9, i64 noundef %15, i8 %16)
  %17 = load ptr, ptr %5, align 8
  %18 = load ptr, ptr %6, align 8
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %17, ptr noundef %18, i8 %16)
  br label %19

19:                                               ; preds = %7, %3
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
  %.promoted2 = load i64, ptr %8, align 8
  br label %13

13:                                               ; preds = %25, %4
  %14 = phi i64 [ %26, %25 ], [ %.promoted2, %4 ]
  %15 = phi ptr [ %27, %25 ], [ %.promoted, %4 ]
  %16 = ptrtoint ptr %15 to i64
  %17 = sub i64 %16, %10
  %18 = icmp sgt i64 %17, 128
  br i1 %18, label %19, label %.loopexit

19:                                               ; preds = %13
  %20 = icmp eq i64 %14, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  %.lcssa4 = phi i64 [ %14, %19 ]
  %.lcssa1 = phi ptr [ %15, %19 ]
  store ptr %.lcssa1, ptr %7, align 8
  store i64 %.lcssa4, ptr %8, align 8
  %22 = load ptr, ptr %6, align 8
  %23 = load ptr, ptr %7, align 8
  %24 = load i8, ptr %5, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %22, ptr noundef %23, ptr noundef %23, i8 %24)
  br label %28

25:                                               ; preds = %19
  %26 = add nsw i64 %14, -1
  %27 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_(ptr noundef %11, ptr noundef %15, i8 %12)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %27, ptr noundef %15, i64 noundef %26, i8 %12)
  br label %13, !llvm.loop !77

.loopexit:                                        ; preds = %13
  %.lcssa3 = phi i64 [ %14, %13 ]
  %.lcssa = phi ptr [ %15, %13 ]
  store ptr %.lcssa, ptr %7, align 8
  store i64 %.lcssa3, ptr %8, align 8
  br label %28

28:                                               ; preds = %.loopexit, %21
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
  %12 = load ptr, ptr %5, align 8
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 128
  %14 = load i8, ptr %4, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %12, ptr noundef nonnull %13, i8 %14)
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 128
  %16 = load ptr, ptr %6, align 8
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef nonnull %15, ptr noundef %16, i8 %14)
  br label %21

17:                                               ; preds = %3
  %18 = load ptr, ptr %5, align 8
  %19 = load ptr, ptr %6, align 8
  %20 = load i8, ptr %4, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %18, ptr noundef %19, i8 %20)
  br label %21

21:                                               ; preds = %17, %11
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
  %15 = load ptr, ptr %6, align 8
  %16 = getelementptr inbounds i8, ptr %15, i64 -8
  %17 = load i8, ptr %4, align 1
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_S6_T0_(ptr noundef %13, ptr noundef nonnull %14, ptr noundef %12, ptr noundef nonnull %16, i8 %17)
  %18 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %19 = load ptr, ptr %5, align 8
  %20 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_S6_T0_(ptr noundef nonnull %18, ptr noundef %15, ptr noundef %19, i8 %17)
  ret ptr %20
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
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %9 = ptrtoint ptr %1 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = icmp slt i64 %11, 9
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %34

14:                                               ; preds = %3
  %15 = load ptr, ptr %5, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = ptrtoint ptr %15 to i64
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %17, %18
  %20 = ashr exact i64 %19, 3
  store i64 %20, ptr %7, align 8
  %21 = add nsw i64 %20, -2
  %22 = sdiv i64 %21, 2
  %23 = load ptr, ptr %4, align 8
  %24 = load i64, ptr %7, align 8
  %25 = load ptr, ptr %6, align 8, !nonnull !53
  br label %26

26:                                               ; preds = %32, %14
  %storemerge = phi i64 [ %22, %14 ], [ %33, %32 ]
  %27 = getelementptr inbounds [8 x i8], ptr %23, i64 %storemerge
  %28 = load double, ptr %27, align 8
  %29 = load i8, ptr %25, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %23, i64 noundef %storemerge, i64 noundef %24, double noundef %28, i8 %29)
  %30 = icmp eq i64 %storemerge, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  %storemerge.lcssa = phi i64 [ %storemerge, %26 ]
  store i64 %storemerge.lcssa, ptr %8, align 8
  br label %34

32:                                               ; preds = %26
  %33 = add nsw i64 %storemerge, -1
  br label %26, !llvm.loop !80

34:                                               ; preds = %31, %13
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
  %.promoted1 = load i64, ptr %8, align 8
  br label %19

19:                                               ; preds = %32, %5
  %20 = phi i64 [ %33, %32 ], [ %.promoted1, %5 ]
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
  %.lcssa2 = phi i64 [ %20, %19 ]
  %.lcssa = phi i64 [ %21, %19 ]
  store i64 %.lcssa, ptr %12, align 8
  store i64 %.lcssa2, ptr %8, align 8
  %38 = load i64, ptr %9, align 8
  %39 = and i64 %38, 1
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = load i64, ptr %12, align 8
  %43 = load i64, ptr %9, align 8
  %44 = add nsw i64 %43, -2
  %45 = sdiv i64 %44, 2
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %41
  %48 = load i64, ptr %12, align 8
  %49 = shl i64 %48, 1
  %50 = add i64 %49, 2
  store i64 %50, ptr %12, align 8
  %51 = load ptr, ptr %7, align 8
  %52 = getelementptr [8 x i8], ptr %51, i64 %49
  %53 = getelementptr i8, ptr %52, i64 8
  %54 = load double, ptr %53, align 8
  %55 = load i64, ptr %8, align 8
  %56 = getelementptr inbounds [8 x i8], ptr %51, i64 %55
  store double %54, ptr %56, align 8
  %57 = load i64, ptr %12, align 8
  %58 = add nsw i64 %57, -1
  store i64 %58, ptr %8, align 8
  br label %59

59:                                               ; preds = %47, %41, %37
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %60 = load ptr, ptr %7, align 8
  %61 = load i64, ptr %8, align 8
  %62 = load i64, ptr %11, align 8
  %63 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %60, i64 noundef %61, i64 noundef %62, double noundef %63, ptr noundef nonnull align 1 dereferenceable(1) %13)
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

9:                                                ; preds = %29, %4
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
  %.lcssa = phi ptr [ %12, %11 ]
  store ptr %.lcssa, ptr %6, align 8
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
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %6, align 8
  ret ptr %28

29:                                               ; preds = %23
  %30 = load ptr, ptr %6, align 8
  %31 = load ptr, ptr %7, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %30, ptr noundef %31)
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 8
  store ptr %32, ptr %6, align 8
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
  br label %29

10:                                               ; preds = %3
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = load ptr, ptr %5, align 8
  br label %15

15:                                               ; preds = %28, %10
  %.pn = phi ptr [ %11, %10 ], [ %storemerge, %28 ]
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %.not = icmp eq ptr %storemerge, %12
  br i1 %.not, label %.loopexit, label %16

16:                                               ; preds = %15
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %storemerge, ptr noundef %13)
  br i1 %17, label %18, label %24

18:                                               ; preds = %16
  %19 = load double, ptr %storemerge, align 8
  %20 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  %21 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %14)
  %22 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %storemerge)
  %23 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %21, ptr noundef %22, ptr noundef nonnull %20)
  store double %19, ptr %14, align 8
  br label %27

24:                                               ; preds = %16
  %25 = load i8, ptr %4, align 1
  %26 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %25)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %storemerge, i8 %26)
  br label %27

27:                                               ; preds = %24, %18
  br label %28

28:                                               ; preds = %27
  br label %15, !llvm.loop !86

.loopexit:                                        ; preds = %15
  %storemerge.lcssa = phi ptr [ %storemerge, %15 ]
  store ptr %storemerge.lcssa, ptr %7, align 8
  br label %29

29:                                               ; preds = %.loopexit, %9
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
  br i1 %.not, label %19, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = ptrtoint ptr %9 to i64
  %11 = ptrtoint ptr %8 to i64
  %12 = sub i64 %10, %11
  %13 = ashr exact i64 %12, 3
  %14 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %13)
  %15 = shl nsw i64 %14, 1
  %16 = load i8, ptr %4, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %8, ptr noundef %9, i64 noundef %15, i8 %16)
  %17 = load ptr, ptr %5, align 8
  %18 = load ptr, ptr %6, align 8
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %17, ptr noundef %18, i8 %16)
  br label %19

19:                                               ; preds = %7, %3
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
  %.promoted2 = load i64, ptr %8, align 8
  br label %13

13:                                               ; preds = %25, %4
  %14 = phi i64 [ %26, %25 ], [ %.promoted2, %4 ]
  %15 = phi ptr [ %27, %25 ], [ %.promoted, %4 ]
  %16 = ptrtoint ptr %15 to i64
  %17 = sub i64 %16, %10
  %18 = icmp sgt i64 %17, 128
  br i1 %18, label %19, label %.loopexit

19:                                               ; preds = %13
  %20 = icmp eq i64 %14, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  %.lcssa4 = phi i64 [ %14, %19 ]
  %.lcssa1 = phi ptr [ %15, %19 ]
  store ptr %.lcssa1, ptr %7, align 8
  store i64 %.lcssa4, ptr %8, align 8
  %22 = load ptr, ptr %6, align 8
  %23 = load ptr, ptr %7, align 8
  %24 = load i8, ptr %5, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %22, ptr noundef %23, ptr noundef %23, i8 %24)
  br label %28

25:                                               ; preds = %19
  %26 = add nsw i64 %14, -1
  %27 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_(ptr noundef %11, ptr noundef %15, i8 %12)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %27, ptr noundef %15, i64 noundef %26, i8 %12)
  br label %13, !llvm.loop !89

.loopexit:                                        ; preds = %13
  %.lcssa3 = phi i64 [ %14, %13 ]
  %.lcssa = phi ptr [ %15, %13 ]
  store ptr %.lcssa, ptr %7, align 8
  store i64 %.lcssa3, ptr %8, align 8
  br label %28

28:                                               ; preds = %.loopexit, %21
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
  %12 = load ptr, ptr %5, align 8
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 128
  %14 = load i8, ptr %4, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %12, ptr noundef nonnull %13, i8 %14)
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 128
  %16 = load ptr, ptr %6, align 8
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef nonnull %15, ptr noundef %16, i8 %14)
  br label %21

17:                                               ; preds = %3
  %18 = load ptr, ptr %5, align 8
  %19 = load ptr, ptr %6, align 8
  %20 = load i8, ptr %4, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %18, ptr noundef %19, i8 %20)
  br label %21

21:                                               ; preds = %17, %11
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
  %15 = load ptr, ptr %6, align 8
  %16 = getelementptr inbounds i8, ptr %15, i64 -8
  %17 = load i8, ptr %4, align 1
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_(ptr noundef %13, ptr noundef nonnull %14, ptr noundef %12, ptr noundef nonnull %16, i8 %17)
  %18 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %19 = load ptr, ptr %5, align 8
  %20 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_S7_T0_(ptr noundef nonnull %18, ptr noundef %15, ptr noundef %19, i8 %17)
  ret ptr %20
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
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %9 = ptrtoint ptr %1 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = icmp slt i64 %11, 9
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %34

14:                                               ; preds = %3
  %15 = load ptr, ptr %5, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = ptrtoint ptr %15 to i64
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %17, %18
  %20 = ashr exact i64 %19, 3
  store i64 %20, ptr %7, align 8
  %21 = add nsw i64 %20, -2
  %22 = sdiv i64 %21, 2
  %23 = load ptr, ptr %4, align 8
  %24 = load i64, ptr %7, align 8
  %25 = load ptr, ptr %6, align 8, !nonnull !53
  br label %26

26:                                               ; preds = %32, %14
  %storemerge = phi i64 [ %22, %14 ], [ %33, %32 ]
  %27 = getelementptr inbounds [8 x i8], ptr %23, i64 %storemerge
  %28 = load double, ptr %27, align 8
  %29 = load i8, ptr %25, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %23, i64 noundef %storemerge, i64 noundef %24, double noundef %28, i8 %29)
  %30 = icmp eq i64 %storemerge, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  %storemerge.lcssa = phi i64 [ %storemerge, %26 ]
  store i64 %storemerge.lcssa, ptr %8, align 8
  br label %34

32:                                               ; preds = %26
  %33 = add nsw i64 %storemerge, -1
  br label %26, !llvm.loop !92

34:                                               ; preds = %31, %13
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
  %.promoted1 = load i64, ptr %8, align 8
  br label %19

19:                                               ; preds = %32, %5
  %20 = phi i64 [ %33, %32 ], [ %.promoted1, %5 ]
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
  %.lcssa2 = phi i64 [ %20, %19 ]
  %.lcssa = phi i64 [ %21, %19 ]
  store i64 %.lcssa, ptr %12, align 8
  store i64 %.lcssa2, ptr %8, align 8
  %38 = load i64, ptr %9, align 8
  %39 = and i64 %38, 1
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = load i64, ptr %12, align 8
  %43 = load i64, ptr %9, align 8
  %44 = add nsw i64 %43, -2
  %45 = sdiv i64 %44, 2
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %41
  %48 = load i64, ptr %12, align 8
  %49 = shl i64 %48, 1
  %50 = add i64 %49, 2
  store i64 %50, ptr %12, align 8
  %51 = load ptr, ptr %7, align 8
  %52 = getelementptr [8 x i8], ptr %51, i64 %49
  %53 = getelementptr i8, ptr %52, i64 8
  %54 = load double, ptr %53, align 8
  %55 = load i64, ptr %8, align 8
  %56 = getelementptr inbounds [8 x i8], ptr %51, i64 %55
  store double %54, ptr %56, align 8
  %57 = load i64, ptr %12, align 8
  %58 = add nsw i64 %57, -1
  store i64 %58, ptr %8, align 8
  br label %59

59:                                               ; preds = %47, %41, %37
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %60 = load ptr, ptr %7, align 8
  %61 = load i64, ptr %8, align 8
  %62 = load i64, ptr %11, align 8
  %63 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEEEvT_T0_S8_T1_RT2_(ptr noundef %60, i64 noundef %61, i64 noundef %62, double noundef %63, ptr noundef nonnull align 1 dereferenceable(1) %13)
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

9:                                                ; preds = %29, %4
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
  %.lcssa = phi ptr [ %12, %11 ]
  store ptr %.lcssa, ptr %6, align 8
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
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %6, align 8
  ret ptr %28

29:                                               ; preds = %23
  %30 = load ptr, ptr %6, align 8
  %31 = load ptr, ptr %7, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %30, ptr noundef %31)
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 8
  store ptr %32, ptr %6, align 8
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
  br label %29

10:                                               ; preds = %3
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = load ptr, ptr %5, align 8
  br label %15

15:                                               ; preds = %28, %10
  %.pn = phi ptr [ %11, %10 ], [ %storemerge, %28 ]
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %.not = icmp eq ptr %storemerge, %12
  br i1 %.not, label %.loopexit, label %16

16:                                               ; preds = %15
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %storemerge, ptr noundef %13)
  br i1 %17, label %18, label %24

18:                                               ; preds = %16
  %19 = load double, ptr %storemerge, align 8
  %20 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  %21 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %14)
  %22 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %storemerge)
  %23 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %21, ptr noundef %22, ptr noundef nonnull %20)
  store double %19, ptr %14, align 8
  br label %27

24:                                               ; preds = %16
  %25 = load i8, ptr %4, align 1
  %26 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %25)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %storemerge, i8 %26)
  br label %27

27:                                               ; preds = %24, %18
  br label %28

28:                                               ; preds = %27
  br label %15, !llvm.loop !98

.loopexit:                                        ; preds = %15
  %storemerge.lcssa = phi ptr [ %storemerge, %15 ]
  store ptr %storemerge.lcssa, ptr %7, align 8
  br label %29

29:                                               ; preds = %.loopexit, %9
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
  br i1 %.not, label %17, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = ptrtoint ptr %8 to i64
  %10 = ptrtoint ptr %7 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 3
  %13 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %12)
  %14 = shl nsw i64 %13, 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %7, ptr noundef %8, i64 noundef %14, i8 undef)
  %15 = load ptr, ptr %4, align 8
  %16 = load ptr, ptr %5, align 8
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %15, ptr noundef %16, i8 undef)
  br label %17

17:                                               ; preds = %6, %3
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
  %.promoted2 = load i64, ptr %7, align 8
  br label %11

11:                                               ; preds = %22, %4
  %12 = phi i64 [ %23, %22 ], [ %.promoted2, %4 ]
  %13 = phi ptr [ %24, %22 ], [ %.promoted, %4 ]
  %14 = ptrtoint ptr %13 to i64
  %15 = sub i64 %14, %9
  %16 = icmp sgt i64 %15, 128
  br i1 %16, label %17, label %.loopexit

17:                                               ; preds = %11
  %18 = icmp eq i64 %12, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %.lcssa4 = phi i64 [ %12, %17 ]
  %.lcssa1 = phi ptr [ %13, %17 ]
  store ptr %.lcssa1, ptr %6, align 8
  store i64 %.lcssa4, ptr %7, align 8
  %20 = load ptr, ptr %5, align 8
  %21 = load ptr, ptr %6, align 8
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %20, ptr noundef %21, ptr noundef %21, i8 undef)
  br label %25

22:                                               ; preds = %17
  %23 = add nsw i64 %12, -1
  %24 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(ptr noundef %10, ptr noundef %13, i8 undef)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %24, ptr noundef %13, i64 noundef %23, i8 undef)
  br label %11, !llvm.loop !101

.loopexit:                                        ; preds = %11
  %.lcssa3 = phi i64 [ %12, %11 ]
  %.lcssa = phi ptr [ %13, %11 ]
  store ptr %.lcssa, ptr %6, align 8
  store i64 %.lcssa3, ptr %7, align 8
  br label %25

25:                                               ; preds = %.loopexit, %19
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
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 128
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %11, ptr noundef nonnull %12, i8 undef)
  %13 = getelementptr inbounds nuw i8, ptr %11, i64 128
  %14 = load ptr, ptr %5, align 8
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %13, ptr noundef %14, i8 undef)
  br label %18

15:                                               ; preds = %3
  %16 = load ptr, ptr %4, align 8
  %17 = load ptr, ptr %5, align 8
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %16, ptr noundef %17, i8 undef)
  br label %18

18:                                               ; preds = %15, %10
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
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds i8, ptr %14, i64 -8
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_(ptr noundef %12, ptr noundef nonnull %13, ptr noundef %11, ptr noundef nonnull %15, i8 undef)
  %16 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %17 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_(ptr noundef nonnull %16, ptr noundef %14, ptr noundef %12, i8 undef)
  ret ptr %17
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
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = icmp slt i64 %10, 9
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %31

13:                                               ; preds = %3
  %14 = load ptr, ptr %5, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = ptrtoint ptr %14 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %16, %17
  %19 = ashr exact i64 %18, 3
  store i64 %19, ptr %6, align 8
  %20 = add nsw i64 %19, -2
  %21 = sdiv i64 %20, 2
  %22 = load ptr, ptr %4, align 8
  %23 = load i64, ptr %6, align 8
  br label %24

24:                                               ; preds = %29, %13
  %storemerge = phi i64 [ %21, %13 ], [ %30, %29 ]
  %25 = getelementptr inbounds [8 x i8], ptr %22, i64 %storemerge
  %26 = load double, ptr %25, align 8
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %22, i64 noundef %storemerge, i64 noundef %23, double noundef %26, i8 undef)
  %27 = icmp eq i64 %storemerge, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  %storemerge.lcssa = phi i64 [ %storemerge, %24 ]
  store i64 %storemerge.lcssa, ptr %7, align 8
  br label %31

29:                                               ; preds = %24
  %30 = add nsw i64 %storemerge, -1
  br label %24, !llvm.loop !104

31:                                               ; preds = %28, %12
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
  %.promoted1 = load i64, ptr %8, align 8
  br label %19

19:                                               ; preds = %32, %5
  %20 = phi i64 [ %33, %32 ], [ %.promoted1, %5 ]
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
  %.lcssa2 = phi i64 [ %20, %19 ]
  %.lcssa = phi i64 [ %21, %19 ]
  store i64 %.lcssa, ptr %12, align 8
  store i64 %.lcssa2, ptr %8, align 8
  %38 = load i64, ptr %9, align 8
  %39 = and i64 %38, 1
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = load i64, ptr %12, align 8
  %43 = load i64, ptr %9, align 8
  %44 = add nsw i64 %43, -2
  %45 = sdiv i64 %44, 2
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %41
  %48 = load i64, ptr %12, align 8
  %49 = shl i64 %48, 1
  %50 = add i64 %49, 2
  store i64 %50, ptr %12, align 8
  %51 = load ptr, ptr %7, align 8
  %52 = getelementptr [8 x i8], ptr %51, i64 %49
  %53 = getelementptr i8, ptr %52, i64 8
  %54 = load double, ptr %53, align 8
  %55 = load i64, ptr %8, align 8
  %56 = getelementptr inbounds [8 x i8], ptr %51, i64 %55
  store double %54, ptr %56, align 8
  %57 = load i64, ptr %12, align 8
  %58 = add nsw i64 %57, -1
  store i64 %58, ptr %8, align 8
  br label %59

59:                                               ; preds = %47, %41, %37
  call void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(ptr noundef nonnull align 1 dereferenceable(1) %13, i8 undef)
  %60 = load ptr, ptr %7, align 8
  %61 = load i64, ptr %8, align 8
  %62 = load i64, ptr %11, align 8
  %63 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_(ptr noundef %60, i64 noundef %61, i64 noundef %62, double noundef %63, ptr noundef nonnull align 1 dereferenceable(1) %13)
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

9:                                                ; preds = %29, %4
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
  %.lcssa = phi ptr [ %12, %11 ]
  store ptr %.lcssa, ptr %6, align 8
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
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %6, align 8
  ret ptr %28

29:                                               ; preds = %23
  %30 = load ptr, ptr %6, align 8
  %31 = load ptr, ptr %7, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %30, ptr noundef %31)
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 8
  store ptr %32, ptr %6, align 8
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
  br label %28

10:                                               ; preds = %3
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = load ptr, ptr %5, align 8
  br label %15

15:                                               ; preds = %27, %10
  %.pn = phi ptr [ %11, %10 ], [ %storemerge, %27 ]
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %.not = icmp eq ptr %storemerge, %12
  br i1 %.not, label %.loopexit, label %16

16:                                               ; preds = %15
  %17 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %storemerge, ptr noundef %13)
  br i1 %17, label %18, label %24

18:                                               ; preds = %16
  %19 = load double, ptr %storemerge, align 8
  %20 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  %21 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %14)
  %22 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %storemerge)
  %23 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %21, ptr noundef %22, ptr noundef nonnull %20)
  store double %19, ptr %14, align 8
  br label %26

24:                                               ; preds = %16
  %25 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 undef)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %storemerge, i8 undef)
  br label %26

26:                                               ; preds = %24, %18
  br label %27

27:                                               ; preds = %26
  br label %15, !llvm.loop !110

.loopexit:                                        ; preds = %15
  %storemerge.lcssa = phi ptr [ %storemerge, %15 ]
  store ptr %storemerge.lcssa, ptr %7, align 8
  br label %28

28:                                               ; preds = %.loopexit, %9
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
