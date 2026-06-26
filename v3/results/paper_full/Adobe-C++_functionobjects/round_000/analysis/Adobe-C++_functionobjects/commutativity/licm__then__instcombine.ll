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
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store i32 %4, ptr %7, align 4
  %12 = sitofp i32 %1 to double
  %13 = sitofp i32 %2 to double
  %14 = fmul nnan double %12, %13
  %15 = fdiv double %14, 1.000000e+06
  store double %15, ptr %8, align 8
  store double 0.000000e+00, ptr %9, align 8
  store double 0.000000e+00, ptr %10, align 8
  %.promoted1 = load i32, ptr %11, align 4
  br label %16

16:                                               ; preds = %34, %5
  %17 = phi i32 [ %33, %34 ], [ 12, %5 ]
  %18 = phi i32 [ %29, %34 ], [ %.promoted1, %5 ]
  %19 = phi i32 [ %35, %34 ], [ 0, %5 ]
  %20 = load i32, ptr @current_test, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load ptr, ptr @results, align 8
  %24 = zext nneg i32 %19 to i64
  %25 = getelementptr inbounds nuw [16 x i8], ptr %23, i64 %24
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %27 = load ptr, ptr %26, align 8
  %28 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %27) #15
  %29 = trunc i64 %28 to i32
  %30 = icmp slt i32 %17, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %22
  %33 = phi i32 [ %29, %31 ], [ %17, %22 ]
  br label %34

34:                                               ; preds = %32
  %35 = add nuw nsw i32 %19, 1
  br label %16, !llvm.loop !7

36:                                               ; preds = %16
  store i32 %18, ptr %11, align 4
  %37 = add nsw i32 %17, -12
  %38 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.1, i32 noundef %37, ptr noundef nonnull @.str.2)
  %39 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.3, i32 noundef %17, ptr noundef nonnull @.str.2)
  %40 = load double, ptr %8, align 8
  br label %41

41:                                               ; preds = %74, %36
  %42 = phi i32 [ %75, %74 ], [ 0, %36 ]
  %43 = load i32, ptr @current_test, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %76

45:                                               ; preds = %41
  %46 = load ptr, ptr @results, align 8
  %47 = zext nneg i32 %42 to i64
  %48 = getelementptr inbounds nuw [16 x i8], ptr %46, i64 %47
  %49 = getelementptr inbounds nuw i8, ptr %48, i64 8
  %50 = load ptr, ptr %49, align 8
  %51 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %50) #15
  %52 = trunc i64 %51 to i32
  %53 = sub i32 %17, %52
  %54 = load ptr, ptr @results, align 8
  %55 = zext nneg i32 %42 to i64
  %56 = getelementptr inbounds nuw [16 x i8], ptr %54, i64 %55
  %57 = getelementptr inbounds nuw i8, ptr %56, i64 8
  %58 = load ptr, ptr %57, align 8
  %59 = zext nneg i32 %42 to i64
  %60 = getelementptr inbounds nuw [16 x i8], ptr %54, i64 %59
  %61 = load double, ptr %60, align 8
  %62 = load ptr, ptr @results, align 8
  %63 = zext nneg i32 %42 to i64
  %64 = getelementptr inbounds nuw [16 x i8], ptr %62, i64 %63
  %65 = load double, ptr %64, align 8
  %66 = fdiv double %40, %65
  %67 = zext nneg i32 %42 to i64
  %68 = getelementptr inbounds nuw [16 x i8], ptr %62, i64 %67
  %69 = load double, ptr %68, align 8
  %70 = load ptr, ptr @results, align 8
  %71 = load double, ptr %70, align 8
  %72 = fdiv double %69, %71
  %73 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.4, i32 noundef %42, i32 noundef %53, ptr noundef nonnull @.str.5, ptr noundef %58, double noundef %61, double noundef %66, double noundef %72)
  br label %74

74:                                               ; preds = %45
  %75 = add nuw nsw i32 %42, 1
  br label %41, !llvm.loop !9

76:                                               ; preds = %41
  %77 = load i32, ptr @current_test, align 4
  %78 = load ptr, ptr @results, align 8
  %.promoted9 = load double, ptr %9, align 8
  br label %79

79:                                               ; preds = %84, %76
  %80 = phi double [ %88, %84 ], [ %.promoted9, %76 ]
  %81 = phi i32 [ %89, %84 ], [ 0, %76 ]
  %82 = icmp slt i32 %81, %77
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  br label %84

84:                                               ; preds = %83
  %85 = zext nneg i32 %81 to i64
  %86 = getelementptr inbounds nuw [16 x i8], ptr %78, i64 %85
  %87 = load double, ptr %86, align 8
  %88 = fadd double %80, %87
  %89 = add nuw nsw i32 %81, 1
  br label %79, !llvm.loop !10

90:                                               ; preds = %79
  store double %80, ptr %9, align 8
  %91 = load ptr, ptr %6, align 8
  %92 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.6, ptr noundef %91, double noundef %80)
  %93 = load i32, ptr @current_test, align 4
  %94 = icmp sgt i32 %93, 1
  br i1 %94, label %95, label %122

95:                                               ; preds = %90
  %96 = load i32, ptr %7, align 4
  %.not = icmp eq i32 %96, 0
  br i1 %.not, label %122, label %97

97:                                               ; preds = %95
  %.promoted13 = load double, ptr %10, align 8
  br label %98

98:                                               ; preds = %111, %97
  %99 = phi double [ %112, %111 ], [ %.promoted13, %97 ]
  %100 = phi i32 [ %113, %111 ], [ 1, %97 ]
  %101 = load i32, ptr @current_test, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %98
  %104 = load ptr, ptr @results, align 8
  %105 = zext nneg i32 %100 to i64
  %106 = getelementptr inbounds nuw [16 x i8], ptr %104, i64 %105
  %107 = load double, ptr %106, align 8
  %108 = load double, ptr %104, align 8
  %109 = fdiv double %107, %108
  %110 = call double @log(double noundef %109) #15
  br label %111

111:                                              ; preds = %103
  %112 = fadd double %99, %110
  %113 = add nuw nsw i32 %100, 1
  br label %98, !llvm.loop !11

114:                                              ; preds = %98
  store double %99, ptr %10, align 8
  %115 = load ptr, ptr %6, align 8
  %116 = load i32, ptr @current_test, align 4
  %117 = add nsw i32 %116, -1
  %118 = sitofp i32 %117 to double
  %119 = fdiv double %99, %118
  %120 = call double @exp(double noundef %119) #15
  %121 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.7, ptr noundef %115, double noundef %120)
  br label %122

122:                                              ; preds = %114, %95, %90
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
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  %.promoted1 = load i32, ptr %6, align 4
  br label %7

7:                                                ; preds = %25, %2
  %8 = phi i32 [ %24, %25 ], [ 12, %2 ]
  %9 = phi i32 [ %20, %25 ], [ %.promoted1, %2 ]
  %10 = phi i32 [ %26, %25 ], [ 0, %2 ]
  %11 = load i32, ptr @current_test, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %7
  %14 = load ptr, ptr @results, align 8
  %15 = zext nneg i32 %10 to i64
  %16 = getelementptr inbounds nuw [16 x i8], ptr %14, i64 %15
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %18 = load ptr, ptr %17, align 8
  %19 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %18) #15
  %20 = trunc i64 %19 to i32
  %21 = icmp slt i32 %8, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22, %13
  %24 = phi i32 [ %20, %22 ], [ %8, %13 ]
  br label %25

25:                                               ; preds = %23
  %26 = add nuw nsw i32 %10, 1
  br label %7, !llvm.loop !12

27:                                               ; preds = %7
  store i32 %9, ptr %6, align 4
  %28 = load ptr, ptr %3, align 8
  %29 = add nsw i32 %8, -12
  %30 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %28, ptr noundef nonnull @.str.8, i32 noundef %29, ptr noundef nonnull @.str.2)
  %31 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %28, ptr noundef nonnull @.str.9, i32 noundef %8, ptr noundef nonnull @.str.2)
  br label %32

32:                                               ; preds = %54, %27
  %33 = phi i32 [ %55, %54 ], [ 0, %27 ]
  %34 = load i32, ptr @current_test, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %32
  %37 = load ptr, ptr @results, align 8
  %38 = zext nneg i32 %33 to i64
  %39 = getelementptr inbounds nuw [16 x i8], ptr %37, i64 %38
  %40 = getelementptr inbounds nuw i8, ptr %39, i64 8
  %41 = load ptr, ptr %40, align 8
  %42 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %41) #15
  %43 = trunc i64 %42 to i32
  %44 = sub i32 %8, %43
  %45 = load ptr, ptr @results, align 8
  %46 = zext nneg i32 %33 to i64
  %47 = getelementptr inbounds nuw [16 x i8], ptr %45, i64 %46
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 8
  %49 = load ptr, ptr %48, align 8
  %50 = zext nneg i32 %33 to i64
  %51 = getelementptr inbounds nuw [16 x i8], ptr %45, i64 %50
  %52 = load double, ptr %51, align 8
  %53 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %28, ptr noundef nonnull @.str.10, i32 noundef %33, i32 noundef %44, ptr noundef nonnull @.str.5, ptr noundef %49, double noundef %52)
  br label %54

54:                                               ; preds = %36
  %55 = add nuw nsw i32 %33, 1
  br label %32, !llvm.loop !13

56:                                               ; preds = %32
  %57 = load i32, ptr @current_test, align 4
  %58 = load ptr, ptr @results, align 8
  %.promoted9 = load double, ptr %5, align 8
  br label %59

59:                                               ; preds = %64, %56
  %60 = phi double [ %68, %64 ], [ %.promoted9, %56 ]
  %61 = phi i32 [ %69, %64 ], [ 0, %56 ]
  %62 = icmp slt i32 %61, %57
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %63
  %65 = zext nneg i32 %61 to i64
  %66 = getelementptr inbounds nuw [16 x i8], ptr %58, i64 %65
  %67 = load double, ptr %66, align 8
  %68 = fadd double %60, %67
  %69 = add nuw nsw i32 %61, 1
  br label %59, !llvm.loop !14

70:                                               ; preds = %59
  store double %60, ptr %5, align 8
  %71 = load ptr, ptr %3, align 8
  %72 = load ptr, ptr %4, align 8
  %73 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %71, ptr noundef nonnull @.str.6, ptr noundef %72, double noundef %60)
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
  %7 = alloca ptr, align 8
  %8 = alloca double, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %9 = ptrtoint ptr %1 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = icmp sgt i64 %11, 8
  br i1 %12, label %13, label %49

13:                                               ; preds = %3
  %14 = load ptr, ptr %4, align 8
  %15 = load double, ptr %14, align 8
  %16 = load ptr, ptr %5, align 8
  store ptr %16, ptr %7, align 8
  %17 = load ptr, ptr %6, align 8
  %.promoted7 = load double, ptr %8, align 8
  br label %18

18:                                               ; preds = %39, %13
  %19 = phi double [ %40, %39 ], [ %.promoted7, %13 ]
  %.lcssa26 = phi ptr [ %31, %39 ], [ %14, %13 ]
  %.lcssa4 = phi ptr [ %22, %39 ], [ %16, %13 ]
  br label %20

20:                                               ; preds = %25, %18
  %21 = phi ptr [ %22, %25 ], [ %.lcssa4, %18 ]
  %22 = getelementptr inbounds i8, ptr %21, i64 -8
  %23 = load double, ptr %22, align 8
  %24 = call noundef zeroext i1 %17(double noundef %15, double noundef %23)
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %20, !llvm.loop !15

26:                                               ; preds = %20
  %27 = icmp ult ptr %.lcssa26, %22
  br i1 %27, label %29, label %28

28:                                               ; preds = %26
  br label %42

29:                                               ; preds = %26
  br label %30

30:                                               ; preds = %34, %29
  %31 = phi ptr [ %35, %34 ], [ %.lcssa26, %29 ]
  %32 = load double, ptr %31, align 8
  %33 = call noundef zeroext i1 %17(double noundef %32, double noundef %15)
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = getelementptr inbounds nuw i8, ptr %31, i64 8
  br label %30, !llvm.loop !16

36:                                               ; preds = %30
  %37 = icmp ult ptr %31, %22
  br i1 %37, label %39, label %38

38:                                               ; preds = %36
  br label %42

39:                                               ; preds = %36
  %40 = load double, ptr %22, align 8
  %41 = load double, ptr %31, align 8
  store double %41, ptr %22, align 8
  store double %40, ptr %31, align 8
  br label %18, !llvm.loop !17

42:                                               ; preds = %38, %28
  store ptr %22, ptr %7, align 8
  store double %19, ptr %8, align 8
  %43 = load ptr, ptr %4, align 8
  %44 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %43, ptr noundef %21, ptr noundef %44)
  %45 = load ptr, ptr %7, align 8
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 8
  %47 = load ptr, ptr %5, align 8
  %48 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %46, ptr noundef %47, ptr noundef %48)
  br label %49

49:                                               ; preds = %42, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca double, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %9 = ptrtoint ptr %1 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = icmp sgt i64 %11, 8
  br i1 %12, label %13, label %49

13:                                               ; preds = %3
  %14 = load ptr, ptr %4, align 8
  %15 = load double, ptr %14, align 8
  %16 = load ptr, ptr %5, align 8
  store ptr %16, ptr %7, align 8
  %17 = load ptr, ptr %6, align 8
  %.promoted7 = load double, ptr %8, align 8
  br label %18

18:                                               ; preds = %39, %13
  %19 = phi double [ %40, %39 ], [ %.promoted7, %13 ]
  %.lcssa26 = phi ptr [ %31, %39 ], [ %14, %13 ]
  %.lcssa4 = phi ptr [ %22, %39 ], [ %16, %13 ]
  br label %20

20:                                               ; preds = %25, %18
  %21 = phi ptr [ %22, %25 ], [ %.lcssa4, %18 ]
  %22 = getelementptr inbounds i8, ptr %21, i64 -8
  %23 = load double, ptr %22, align 8
  %24 = call noundef zeroext i1 %17(double noundef %15, double noundef %23)
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %20, !llvm.loop !18

26:                                               ; preds = %20
  %27 = icmp ult ptr %.lcssa26, %22
  br i1 %27, label %29, label %28

28:                                               ; preds = %26
  br label %42

29:                                               ; preds = %26
  br label %30

30:                                               ; preds = %34, %29
  %31 = phi ptr [ %35, %34 ], [ %.lcssa26, %29 ]
  %32 = load double, ptr %31, align 8
  %33 = call noundef zeroext i1 %17(double noundef %32, double noundef %15)
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = getelementptr inbounds nuw i8, ptr %31, i64 8
  br label %30, !llvm.loop !19

36:                                               ; preds = %30
  %37 = icmp ult ptr %31, %22
  br i1 %37, label %39, label %38

38:                                               ; preds = %36
  br label %42

39:                                               ; preds = %36
  %40 = load double, ptr %22, align 8
  %41 = load double, ptr %31, align 8
  store double %41, ptr %22, align 8
  store double %40, ptr %31, align 8
  br label %18, !llvm.loop !20

42:                                               ; preds = %38, %28
  store ptr %22, ptr %7, align 8
  store double %19, ptr %8, align 8
  %43 = load ptr, ptr %4, align 8
  %44 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %43, ptr noundef %21, ptr noundef %44)
  %45 = load ptr, ptr %7, align 8
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 8
  %47 = load ptr, ptr %5, align 8
  %48 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %46, ptr noundef %47, ptr noundef %48)
  br label %49

49:                                               ; preds = %42, %3
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
  %9 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  %10 = icmp sgt i32 %0, 1
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %14 = load ptr, ptr %13, align 8
  %15 = call i32 @atoi(ptr noundef %14)
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %11
  %18 = phi i32 [ %15, %11 ], [ 300, %16 ]
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
  br label %36

36:                                               ; preds = %44, %27
  %37 = phi i32 [ %45, %44 ], [ 0, %27 ]
  %38 = icmp slt i32 %37, %35
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = call i32 @rand()
  %41 = sitofp i32 %40 to double
  %42 = zext nneg i32 %37 to i64
  %43 = getelementptr inbounds nuw [8 x i8], ptr %34, i64 %42
  store double %41, ptr %43, align 8
  br label %44

44:                                               ; preds = %39
  %45 = add nuw nsw i32 %37, 1
  br label %36, !llvm.loop !21

46:                                               ; preds = %36
  %47 = load i32, ptr %7, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp slt i32 %47, 0
  %50 = shl nsw i64 %48, 3
  %51 = select i1 %49, i64 -1, i64 %50
  %52 = call noalias noundef nonnull ptr @_Znay(i64 noundef %51) #16
  store ptr %52, ptr %9, align 8
  store i32 0, ptr %5, align 4
  %53 = load i32, ptr %6, align 4
  %54 = load ptr, ptr %8, align 8
  %55 = load i32, ptr %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [8 x i8], ptr %54, i64 %56
  %58 = load ptr, ptr %9, align 8
  %59 = sext i32 %55 to i64
  %60 = sext i32 %55 to i64
  %61 = getelementptr inbounds [8 x i8], ptr %58, i64 %60
  %.promoted1 = load i32, ptr %5, align 4
  br label %62

62:                                               ; preds = %67, %46
  %63 = phi i32 [ %68, %67 ], [ %.promoted1, %46 ]
  %64 = icmp slt i32 %63, %53
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %54, ptr noundef %57, ptr noundef %58)
  call void @qsort(ptr noundef %58, i64 noundef %59, i64 noundef 8, ptr noundef nonnull @_Z19less_than_function1PKvS0_)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %58, ptr noundef %61)
  br label %67

67:                                               ; preds = %65
  %68 = add nsw i32 %63, 1
  br label %62, !llvm.loop !22

69:                                               ; preds = %62
  store i32 0, ptr %5, align 4
  %70 = load i32, ptr %6, align 4
  %71 = load ptr, ptr %8, align 8
  %72 = load i32, ptr %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [8 x i8], ptr %71, i64 %73
  %75 = load ptr, ptr %9, align 8
  %76 = sext i32 %72 to i64
  %77 = getelementptr inbounds [8 x i8], ptr %75, i64 %76
  %78 = sext i32 %72 to i64
  %79 = getelementptr inbounds [8 x i8], ptr %75, i64 %78
  %.promoted3 = load i32, ptr %5, align 4
  br label %80

80:                                               ; preds = %85, %69
  %81 = phi i32 [ %86, %85 ], [ %.promoted3, %69 ]
  %82 = icmp slt i32 %81, %70
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %71, ptr noundef %74, ptr noundef %75)
  call void @_Z18quicksort_functionPdS_PFbddE(ptr noundef %75, ptr noundef %77, ptr noundef nonnull @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %75, ptr noundef %79)
  br label %85

85:                                               ; preds = %83
  %86 = add nsw i32 %81, 1
  br label %80, !llvm.loop !23

87:                                               ; preds = %80
  store i32 0, ptr %5, align 4
  %88 = load i32, ptr %6, align 4
  %89 = load ptr, ptr %8, align 8
  %90 = load i32, ptr %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [8 x i8], ptr %89, i64 %91
  %93 = load ptr, ptr %9, align 8
  %94 = sext i32 %90 to i64
  %95 = getelementptr inbounds [8 x i8], ptr %93, i64 %94
  %96 = sext i32 %90 to i64
  %97 = getelementptr inbounds [8 x i8], ptr %93, i64 %96
  %.promoted5 = load i32, ptr %5, align 4
  br label %98

98:                                               ; preds = %103, %87
  %99 = phi i32 [ %104, %103 ], [ %.promoted5, %87 ]
  %100 = icmp slt i32 %99, %88
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %89, ptr noundef %92, ptr noundef %93)
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %93, ptr noundef %95, ptr noundef nonnull @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %93, ptr noundef %97)
  br label %103

103:                                              ; preds = %101
  %104 = add nsw i32 %99, 1
  br label %98, !llvm.loop !24

105:                                              ; preds = %98
  store i32 0, ptr %5, align 4
  %106 = load i32, ptr %6, align 4
  %107 = load ptr, ptr %8, align 8
  %108 = load i32, ptr %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [8 x i8], ptr %107, i64 %109
  %111 = load ptr, ptr %9, align 8
  %112 = sext i32 %108 to i64
  %113 = getelementptr inbounds [8 x i8], ptr %111, i64 %112
  %114 = sext i32 %108 to i64
  %115 = getelementptr inbounds [8 x i8], ptr %111, i64 %114
  %.promoted7 = load i32, ptr %5, align 4
  br label %116

116:                                              ; preds = %121, %105
  %117 = phi i32 [ %122, %121 ], [ %.promoted7, %105 ]
  %118 = icmp slt i32 %117, %106
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %107, ptr noundef %110, ptr noundef %111)
  call void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef %111, ptr noundef %113)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %111, ptr noundef %115)
  br label %121

121:                                              ; preds = %119
  %122 = add nsw i32 %117, 1
  br label %116, !llvm.loop !25

123:                                              ; preds = %116
  store i32 0, ptr %5, align 4
  %124 = load i32, ptr %6, align 4
  %125 = load ptr, ptr %8, align 8
  %126 = load i32, ptr %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [8 x i8], ptr %125, i64 %127
  %129 = load ptr, ptr %9, align 8
  %130 = sext i32 %126 to i64
  %131 = getelementptr inbounds [8 x i8], ptr %129, i64 %130
  %132 = sext i32 %126 to i64
  %133 = getelementptr inbounds [8 x i8], ptr %129, i64 %132
  %.promoted9 = load i32, ptr %5, align 4
  br label %134

134:                                              ; preds = %139, %123
  %135 = phi i32 [ %140, %139 ], [ %.promoted9, %123 ]
  %136 = icmp slt i32 %135, %124
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %125, ptr noundef %128, ptr noundef %129)
  call void @_ZSt4sortIPdPFbddEEvT_S3_T0_(ptr noundef %129, ptr noundef %131, ptr noundef nonnull @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %129, ptr noundef %133)
  br label %139

139:                                              ; preds = %137
  %140 = add nsw i32 %135, 1
  br label %134, !llvm.loop !26

141:                                              ; preds = %134
  store i32 0, ptr %5, align 4
  %142 = load i32, ptr %6, align 4
  %143 = load ptr, ptr %8, align 8
  %144 = load i32, ptr %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [8 x i8], ptr %143, i64 %145
  %147 = load ptr, ptr %9, align 8
  %148 = sext i32 %144 to i64
  %149 = getelementptr inbounds [8 x i8], ptr %147, i64 %148
  %150 = sext i32 %144 to i64
  %151 = getelementptr inbounds [8 x i8], ptr %147, i64 %150
  %.promoted11 = load i32, ptr %5, align 4
  br label %152

152:                                              ; preds = %157, %141
  %153 = phi i32 [ %158, %157 ], [ %.promoted11, %141 ]
  %154 = icmp slt i32 %153, %142
  br i1 %154, label %155, label %159

155:                                              ; preds = %152
  %156 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %143, ptr noundef %146, ptr noundef %147)
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %147, ptr noundef %149, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %147, ptr noundef %151)
  br label %157

157:                                              ; preds = %155
  %158 = add nsw i32 %153, 1
  br label %152, !llvm.loop !27

159:                                              ; preds = %152
  store i32 0, ptr %5, align 4
  %160 = load i32, ptr %6, align 4
  %161 = load ptr, ptr %9, align 8
  %162 = load i32, ptr %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [8 x i8], ptr %161, i64 %163
  %165 = sext i32 %162 to i64
  %166 = getelementptr inbounds [8 x i8], ptr %161, i64 %165
  %167 = load ptr, ptr %8, align 8
  %168 = sext i32 %162 to i64
  %169 = getelementptr inbounds [8 x i8], ptr %167, i64 %168
  %170 = load ptr, ptr %9, align 8
  %.promoted13 = load i32, ptr %5, align 4
  br label %171

171:                                              ; preds = %176, %159
  %172 = phi i32 [ %177, %176 ], [ %.promoted13, %159 ]
  %173 = icmp slt i32 %172, %160
  br i1 %173, label %174, label %178

174:                                              ; preds = %171
  call void @_ZSt4sortIPd17less_than_functorEvT_S2_T0_(ptr noundef %161, ptr noundef %164, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %161, ptr noundef %166)
  %175 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %167, ptr noundef %169, ptr noundef %170)
  br label %176

176:                                              ; preds = %174
  %177 = add nsw i32 %172, 1
  br label %171, !llvm.loop !28

178:                                              ; preds = %171
  store i32 0, ptr %5, align 4
  %179 = load i32, ptr %6, align 4
  %180 = load ptr, ptr %8, align 8
  %181 = load i32, ptr %7, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [8 x i8], ptr %180, i64 %182
  %184 = load ptr, ptr %9, align 8
  %185 = sext i32 %181 to i64
  %186 = getelementptr inbounds [8 x i8], ptr %184, i64 %185
  %187 = sext i32 %181 to i64
  %188 = getelementptr inbounds [8 x i8], ptr %184, i64 %187
  %.promoted15 = load i32, ptr %5, align 4
  br label %189

189:                                              ; preds = %194, %178
  %190 = phi i32 [ %195, %194 ], [ %.promoted15, %178 ]
  %191 = icmp slt i32 %190, %179
  br i1 %191, label %192, label %196

192:                                              ; preds = %189
  %193 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %180, ptr noundef %183, ptr noundef %184)
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %184, ptr noundef %186, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %184, ptr noundef %188)
  br label %194

194:                                              ; preds = %192
  %195 = add nsw i32 %190, 1
  br label %189, !llvm.loop !29

196:                                              ; preds = %189
  store i32 0, ptr %5, align 4
  %197 = load i32, ptr %6, align 4
  %198 = load ptr, ptr %8, align 8
  %199 = load i32, ptr %7, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [8 x i8], ptr %198, i64 %200
  %202 = load ptr, ptr %9, align 8
  %203 = sext i32 %199 to i64
  %204 = getelementptr inbounds [8 x i8], ptr %202, i64 %203
  %205 = sext i32 %199 to i64
  %206 = getelementptr inbounds [8 x i8], ptr %202, i64 %205
  %.promoted17 = load i32, ptr %5, align 4
  br label %207

207:                                              ; preds = %212, %196
  %208 = phi i32 [ %213, %212 ], [ %.promoted17, %196 ]
  %209 = icmp slt i32 %208, %197
  br i1 %209, label %210, label %214

210:                                              ; preds = %207
  %211 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %198, ptr noundef %201, ptr noundef %202)
  call void @_ZSt4sortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %202, ptr noundef %204, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %202, ptr noundef %206)
  br label %212

212:                                              ; preds = %210
  %213 = add nsw i32 %208, 1
  br label %207, !llvm.loop !30

214:                                              ; preds = %207
  store i32 0, ptr %5, align 4
  %215 = load i32, ptr %6, align 4
  %216 = load ptr, ptr %8, align 8
  %217 = load i32, ptr %7, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [8 x i8], ptr %216, i64 %218
  %220 = load ptr, ptr %9, align 8
  %221 = sext i32 %217 to i64
  %222 = getelementptr inbounds [8 x i8], ptr %220, i64 %221
  %223 = sext i32 %217 to i64
  %224 = getelementptr inbounds [8 x i8], ptr %220, i64 %223
  %.promoted19 = load i32, ptr %5, align 4
  br label %225

225:                                              ; preds = %230, %214
  %226 = phi i32 [ %231, %230 ], [ %.promoted19, %214 ]
  %227 = icmp slt i32 %226, %215
  br i1 %227, label %228, label %232

228:                                              ; preds = %225
  %229 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %216, ptr noundef %219, ptr noundef %220)
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %220, ptr noundef %222, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %220, ptr noundef %224)
  br label %230

230:                                              ; preds = %228
  %231 = add nsw i32 %226, 1
  br label %225, !llvm.loop !31

232:                                              ; preds = %225
  store i32 0, ptr %5, align 4
  %233 = load i32, ptr %6, align 4
  %234 = load ptr, ptr %8, align 8
  %235 = load i32, ptr %7, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [8 x i8], ptr %234, i64 %236
  %238 = load ptr, ptr %9, align 8
  %239 = sext i32 %235 to i64
  %240 = getelementptr inbounds [8 x i8], ptr %238, i64 %239
  %241 = sext i32 %235 to i64
  %242 = getelementptr inbounds [8 x i8], ptr %238, i64 %241
  %.promoted21 = load i32, ptr %5, align 4
  br label %243

243:                                              ; preds = %248, %232
  %244 = phi i32 [ %249, %248 ], [ %.promoted21, %232 ]
  %245 = icmp slt i32 %244, %233
  br i1 %245, label %246, label %250

246:                                              ; preds = %243
  %247 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %234, ptr noundef %237, ptr noundef %238)
  call void @_ZSt4sortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %238, ptr noundef %240, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %238, ptr noundef %242)
  br label %248

248:                                              ; preds = %246
  %249 = add nsw i32 %244, 1
  br label %243, !llvm.loop !32

250:                                              ; preds = %243
  store i32 0, ptr %5, align 4
  %251 = load i32, ptr %6, align 4
  %252 = load ptr, ptr %8, align 8
  %253 = load i32, ptr %7, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [8 x i8], ptr %252, i64 %254
  %256 = load ptr, ptr %9, align 8
  %257 = sext i32 %253 to i64
  %258 = getelementptr inbounds [8 x i8], ptr %256, i64 %257
  %259 = sext i32 %253 to i64
  %260 = getelementptr inbounds [8 x i8], ptr %256, i64 %259
  %.promoted23 = load i32, ptr %5, align 4
  br label %261

261:                                              ; preds = %266, %250
  %262 = phi i32 [ %267, %266 ], [ %.promoted23, %250 ]
  %263 = icmp slt i32 %262, %251
  br i1 %263, label %264, label %268

264:                                              ; preds = %261
  %265 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %252, ptr noundef %255, ptr noundef %256)
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %256, ptr noundef %258)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %256, ptr noundef %260)
  br label %266

266:                                              ; preds = %264
  %267 = add nsw i32 %262, 1
  br label %261, !llvm.loop !33

268:                                              ; preds = %261
  store i32 0, ptr %5, align 4
  %269 = load i32, ptr %6, align 4
  %270 = load ptr, ptr %8, align 8
  %271 = load i32, ptr %7, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [8 x i8], ptr %270, i64 %272
  %274 = load ptr, ptr %9, align 8
  %275 = sext i32 %271 to i64
  %276 = getelementptr inbounds [8 x i8], ptr %274, i64 %275
  %277 = sext i32 %271 to i64
  %278 = getelementptr inbounds [8 x i8], ptr %274, i64 %277
  %.promoted25 = load i32, ptr %5, align 4
  br label %279

279:                                              ; preds = %284, %268
  %280 = phi i32 [ %285, %284 ], [ %.promoted25, %268 ]
  %281 = icmp slt i32 %280, %269
  br i1 %281, label %282, label %286

282:                                              ; preds = %279
  %283 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %270, ptr noundef %273, ptr noundef %274)
  call void @_ZSt4sortIPdEvT_S1_(ptr noundef %274, ptr noundef %276)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %274, ptr noundef %278)
  br label %284

284:                                              ; preds = %282
  %285 = add nsw i32 %280, 1
  br label %279, !llvm.loop !34

286:                                              ; preds = %279
  store i32 %280, ptr %5, align 4
  %287 = load ptr, ptr %9, align 8
  %288 = icmp eq ptr %287, null
  br i1 %288, label %290, label %289

289:                                              ; preds = %286
  call void @_ZdaPv(ptr noundef nonnull %287) #17
  br label %290

290:                                              ; preds = %289, %286
  %291 = load ptr, ptr %8, align 8
  %292 = icmp eq ptr %291, null
  br i1 %292, label %294, label %293

293:                                              ; preds = %290
  call void @_ZdaPv(ptr noundef nonnull %291) #17
  br label %294

294:                                              ; preds = %293, %290
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
  br label %3

3:                                                ; preds = %13, %2
  %4 = phi ptr [ %14, %13 ], [ %0, %2 ]
  %.pn = phi ptr [ %5, %13 ], [ %0, %2 ]
  %5 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %.not = icmp eq ptr %5, %1
  br i1 %.not, label %.loopexit, label %6

6:                                                ; preds = %3
  %7 = load double, ptr %5, align 8
  %8 = load double, ptr %4, align 8
  %9 = fcmp olt double %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load i32, ptr @current_test, align 4
  %12 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.11, i32 noundef %11)
  br label %15

13:                                               ; preds = %6
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %3, !llvm.loop !35

.loopexit:                                        ; preds = %3
  br label %15

15:                                               ; preds = %.loopexit, %10
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef %0, ptr noundef %1) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca double, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = icmp sgt i64 %9, 8
  br i1 %10, label %11, label %44

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 8
  %13 = load double, ptr %12, align 8
  %14 = load ptr, ptr %4, align 8
  store ptr %14, ptr %5, align 8
  %.promoted7 = load double, ptr %6, align 8
  br label %15

15:                                               ; preds = %36, %11
  %16 = phi double [ %37, %36 ], [ %.promoted7, %11 ]
  %.lcssa26 = phi ptr [ %28, %36 ], [ %12, %11 ]
  %.lcssa4 = phi ptr [ %19, %36 ], [ %14, %11 ]
  br label %17

17:                                               ; preds = %22, %15
  %18 = phi ptr [ %19, %22 ], [ %.lcssa4, %15 ]
  %19 = getelementptr inbounds i8, ptr %18, i64 -8
  %20 = load double, ptr %19, align 8
  %21 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %13, double noundef %20)
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %17, !llvm.loop !36

23:                                               ; preds = %17
  %24 = icmp ult ptr %.lcssa26, %19
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  br label %39

26:                                               ; preds = %23
  br label %27

27:                                               ; preds = %31, %26
  %28 = phi ptr [ %32, %31 ], [ %.lcssa26, %26 ]
  %29 = load double, ptr %28, align 8
  %30 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %29, double noundef %13)
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = getelementptr inbounds nuw i8, ptr %28, i64 8
  br label %27, !llvm.loop !37

33:                                               ; preds = %27
  %34 = icmp ult ptr %28, %19
  br i1 %34, label %36, label %35

35:                                               ; preds = %33
  br label %39

36:                                               ; preds = %33
  %37 = load double, ptr %19, align 8
  %38 = load double, ptr %28, align 8
  store double %38, ptr %19, align 8
  store double %37, ptr %28, align 8
  br label %15, !llvm.loop !38

39:                                               ; preds = %35, %25
  store ptr %19, ptr %5, align 8
  store double %16, ptr %6, align 8
  %40 = load ptr, ptr %3, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %40, ptr noundef %18, ptr noundef nonnull @_Z19less_than_function2dd)
  %41 = load ptr, ptr %5, align 8
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 8
  %43 = load ptr, ptr %4, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %42, ptr noundef %43, ptr noundef nonnull @_Z19less_than_function2dd)
  br label %44

44:                                               ; preds = %39, %2
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
  br i1 %13, label %14, label %49

14:                                               ; preds = %3
  %15 = load ptr, ptr %5, align 8
  %16 = load double, ptr %15, align 8
  store double %16, ptr %7, align 8
  store ptr %15, ptr %8, align 8
  %17 = load ptr, ptr %6, align 8
  store ptr %17, ptr %9, align 8
  br label %18

18:                                               ; preds = %38, %14
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
  store ptr %21, ptr %9, align 8
  %25 = load ptr, ptr %8, align 8
  %26 = icmp ult ptr %25, %21
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  br label %43

28:                                               ; preds = %24
  %.promoted1 = load ptr, ptr %8, align 8
  br label %29

29:                                               ; preds = %32, %28
  %30 = phi ptr [ %33, %32 ], [ %.promoted1, %28 ]
  %31 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = getelementptr inbounds nuw i8, ptr %30, i64 8
  br label %29, !llvm.loop !40

34:                                               ; preds = %29
  store ptr %30, ptr %8, align 8
  %35 = load ptr, ptr %9, align 8
  %36 = icmp ult ptr %30, %35
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  br label %43

38:                                               ; preds = %34
  %39 = load ptr, ptr %9, align 8
  %40 = load double, ptr %39, align 8
  %41 = load ptr, ptr %8, align 8
  %42 = load double, ptr %41, align 8
  store double %42, ptr %39, align 8
  store double %40, ptr %41, align 8
  br label %18, !llvm.loop !41

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %5, align 8
  %45 = load ptr, ptr %9, align 8
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 8
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %44, ptr noundef nonnull %46, i8 undef)
  %47 = getelementptr inbounds nuw i8, ptr %45, i64 8
  %48 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef nonnull %47, ptr noundef %48, i8 undef)
  br label %49

49:                                               ; preds = %43, %3
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
  br i1 %13, label %14, label %49

14:                                               ; preds = %3
  %15 = load ptr, ptr %5, align 8
  %16 = load double, ptr %15, align 8
  store double %16, ptr %7, align 8
  store ptr %15, ptr %8, align 8
  %17 = load ptr, ptr %6, align 8
  store ptr %17, ptr %9, align 8
  br label %18

18:                                               ; preds = %38, %14
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
  store ptr %21, ptr %9, align 8
  %25 = load ptr, ptr %8, align 8
  %26 = icmp ult ptr %25, %21
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  br label %43

28:                                               ; preds = %24
  %.promoted1 = load ptr, ptr %8, align 8
  br label %29

29:                                               ; preds = %32, %28
  %30 = phi ptr [ %33, %32 ], [ %.promoted1, %28 ]
  %31 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = getelementptr inbounds nuw i8, ptr %30, i64 8
  br label %29, !llvm.loop !43

34:                                               ; preds = %29
  store ptr %30, ptr %8, align 8
  %35 = load ptr, ptr %9, align 8
  %36 = icmp ult ptr %30, %35
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  br label %43

38:                                               ; preds = %34
  %39 = load ptr, ptr %9, align 8
  %40 = load double, ptr %39, align 8
  %41 = load ptr, ptr %8, align 8
  %42 = load double, ptr %41, align 8
  store double %42, ptr %39, align 8
  store double %40, ptr %41, align 8
  br label %18, !llvm.loop !44

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %5, align 8
  %45 = load ptr, ptr %9, align 8
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 8
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %44, ptr noundef nonnull %46, i8 undef)
  %47 = getelementptr inbounds nuw i8, ptr %45, i64 8
  %48 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef nonnull %47, ptr noundef %48, i8 undef)
  br label %49

49:                                               ; preds = %43, %3
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
  br i1 %13, label %14, label %49

14:                                               ; preds = %3
  %15 = load ptr, ptr %5, align 8
  %16 = load double, ptr %15, align 8
  store double %16, ptr %7, align 8
  store ptr %15, ptr %8, align 8
  %17 = load ptr, ptr %6, align 8
  store ptr %17, ptr %9, align 8
  br label %18

18:                                               ; preds = %38, %14
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
  store ptr %21, ptr %9, align 8
  %25 = load ptr, ptr %8, align 8
  %26 = icmp ult ptr %25, %21
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  br label %43

28:                                               ; preds = %24
  %.promoted1 = load ptr, ptr %8, align 8
  br label %29

29:                                               ; preds = %32, %28
  %30 = phi ptr [ %33, %32 ], [ %.promoted1, %28 ]
  %31 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = getelementptr inbounds nuw i8, ptr %30, i64 8
  br label %29, !llvm.loop !46

34:                                               ; preds = %29
  store ptr %30, ptr %8, align 8
  %35 = load ptr, ptr %9, align 8
  %36 = icmp ult ptr %30, %35
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  br label %43

38:                                               ; preds = %34
  %39 = load ptr, ptr %9, align 8
  %40 = load double, ptr %39, align 8
  %41 = load ptr, ptr %8, align 8
  %42 = load double, ptr %41, align 8
  store double %42, ptr %39, align 8
  store double %40, ptr %41, align 8
  br label %18, !llvm.loop !47

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %5, align 8
  %45 = load ptr, ptr %9, align 8
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 8
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %44, ptr noundef nonnull %46, i8 undef)
  %47 = getelementptr inbounds nuw i8, ptr %45, i64 8
  %48 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef nonnull %47, ptr noundef %48, i8 undef)
  br label %49

49:                                               ; preds = %43, %3
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
  %5 = alloca ptr, align 8
  %6 = alloca double, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = icmp sgt i64 %9, 8
  br i1 %10, label %11, label %44

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 8
  %13 = load double, ptr %12, align 8
  %14 = load ptr, ptr %4, align 8
  store ptr %14, ptr %5, align 8
  %.promoted7 = load double, ptr %6, align 8
  br label %15

15:                                               ; preds = %36, %11
  %16 = phi double [ %37, %36 ], [ %.promoted7, %11 ]
  %.lcssa26 = phi ptr [ %28, %36 ], [ %12, %11 ]
  %.lcssa4 = phi ptr [ %19, %36 ], [ %14, %11 ]
  br label %17

17:                                               ; preds = %22, %15
  %18 = phi ptr [ %19, %22 ], [ %.lcssa4, %15 ]
  %19 = getelementptr inbounds i8, ptr %18, i64 -8
  %20 = load double, ptr %19, align 8
  %21 = fcmp olt double %13, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %17, !llvm.loop !48

23:                                               ; preds = %17
  %24 = icmp ult ptr %.lcssa26, %19
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  br label %39

26:                                               ; preds = %23
  br label %27

27:                                               ; preds = %31, %26
  %28 = phi ptr [ %32, %31 ], [ %.lcssa26, %26 ]
  %29 = load double, ptr %28, align 8
  %30 = fcmp olt double %29, %13
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = getelementptr inbounds nuw i8, ptr %28, i64 8
  br label %27, !llvm.loop !49

33:                                               ; preds = %27
  %34 = icmp ult ptr %28, %19
  br i1 %34, label %36, label %35

35:                                               ; preds = %33
  br label %39

36:                                               ; preds = %33
  %37 = load double, ptr %19, align 8
  %38 = load double, ptr %28, align 8
  store double %38, ptr %19, align 8
  store double %37, ptr %28, align 8
  br label %15, !llvm.loop !50

39:                                               ; preds = %35, %25
  store ptr %19, ptr %5, align 8
  store double %16, ptr %6, align 8
  %40 = load ptr, ptr %3, align 8
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %40, ptr noundef %18)
  %41 = load ptr, ptr %5, align 8
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 8
  %43 = load ptr, ptr %4, align 8
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef nonnull %42, ptr noundef %43)
  br label %44

44:                                               ; preds = %39, %2
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
  %8 = inttoptr i64 %3 to ptr
  store ptr %8, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %9 = ptrtoint ptr %0 to i64
  %.promoted5 = load ptr, ptr %7, align 8
  br label %10

10:                                               ; preds = %22, %4
  %11 = phi ptr [ %25, %22 ], [ %.promoted5, %4 ]
  %12 = phi i64 [ %23, %22 ], [ %2, %4 ]
  %13 = phi ptr [ %25, %22 ], [ %1, %4 ]
  %14 = ptrtoint ptr %13 to i64
  %15 = sub i64 %14, %9
  %16 = icmp sgt i64 %15, 128
  br i1 %16, label %17, label %.loopexit

17:                                               ; preds = %10
  %18 = icmp eq i64 %12, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  store ptr %11, ptr %7, align 8
  %20 = load ptr, ptr %6, align 8
  %21 = load i64, ptr %5, align 8
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %20, ptr noundef %13, ptr noundef %13, i64 %21)
  br label %26

22:                                               ; preds = %17
  %23 = add nsw i64 %12, -1
  %24 = load i64, ptr %5, align 8
  %25 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %13, i64 %24)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %25, ptr noundef %13, i64 noundef %23, i64 %24)
  br label %10, !llvm.loop !51

.loopexit:                                        ; preds = %10
  store ptr %11, ptr %7, align 8
  br label %26

26:                                               ; preds = %.loopexit, %19
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
  %6 = inttoptr i64 %3 to ptr
  store ptr %6, ptr %5, align 8
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %7

7:                                                ; preds = %14, %4
  %8 = phi ptr [ %15, %14 ], [ %1, %4 ]
  %9 = icmp ult ptr %8, %2
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %8, ptr noundef %0)
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %13

13:                                               ; preds = %12, %10
  br label %14

14:                                               ; preds = %13
  %15 = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %7, !llvm.loop !52

16:                                               ; preds = %7
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 comdat {
  %4 = ptrtoint ptr %0 to i64
  br label %5

5:                                                ; preds = %10, %3
  %6 = phi ptr [ %11, %10 ], [ %1, %3 ]
  %7 = ptrtoint ptr %6 to i64
  %8 = sub i64 %7, %4
  %9 = icmp sgt i64 %8, 8
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, ptr %6, i64 -8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %11, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %5, !llvm.loop !53

12:                                               ; preds = %5
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = icmp slt i64 %9, 9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %32

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = ptrtoint ptr %13 to i64
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %15, %16
  %18 = ashr exact i64 %17, 3
  %19 = add nsw i64 %18, -2
  %20 = sdiv i64 %19, 2
  %21 = load ptr, ptr %4, align 8
  %22 = load ptr, ptr %6, align 8, !nonnull !54, !align !55
  br label %23

23:                                               ; preds = %30, %12
  %24 = phi i64 [ %31, %30 ], [ %20, %12 ]
  %25 = getelementptr inbounds [8 x i8], ptr %21, i64 %24
  %26 = load double, ptr %25, align 8
  %27 = load i64, ptr %22, align 8
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef %21, i64 noundef %24, i64 noundef %18, double noundef %26, i64 %27)
  %28 = icmp eq i64 %24, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %32

30:                                               ; preds = %23
  %31 = add nsw i64 %24, -1
  br label %23, !llvm.loop !56

32:                                               ; preds = %29, %11
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
  %18 = load ptr, ptr %7, align 8, !nonnull !54, !align !55
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
  %15 = add nsw i64 %2, -1
  %16 = sdiv i64 %15, 2
  %17 = load ptr, ptr %7, align 8
  %.promoted1 = load i64, ptr %8, align 8
  br label %18

18:                                               ; preds = %31, %5
  %19 = phi i64 [ %32, %31 ], [ %.promoted1, %5 ]
  %20 = phi i64 [ %32, %31 ], [ %1, %5 ]
  %21 = icmp slt i64 %20, %16
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = shl i64 %20, 1
  %24 = add i64 %23, 2
  %25 = getelementptr inbounds [8 x i8], ptr %17, i64 %24
  %26 = getelementptr [8 x i8], ptr %17, i64 %23
  %27 = getelementptr i8, ptr %26, i64 8
  %28 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %25, ptr noundef %27)
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = or disjoint i64 %23, 1
  br label %31

31:                                               ; preds = %29, %22
  %32 = phi i64 [ %30, %29 ], [ %24, %22 ]
  %33 = getelementptr inbounds [8 x i8], ptr %17, i64 %32
  %34 = load double, ptr %33, align 8
  %35 = getelementptr inbounds [8 x i8], ptr %17, i64 %19
  store double %34, ptr %35, align 8
  br label %18, !llvm.loop !57

36:                                               ; preds = %18
  store i64 %20, ptr %12, align 8
  store i64 %19, ptr %8, align 8
  %37 = load i64, ptr %9, align 8
  %38 = and i64 %37, 1
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %36
  %41 = load i64, ptr %12, align 8
  %42 = load i64, ptr %9, align 8
  %43 = add nsw i64 %42, -2
  %44 = sdiv i64 %43, 2
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %40
  %47 = load i64, ptr %12, align 8
  %48 = shl i64 %47, 1
  %49 = add i64 %48, 2
  store i64 %49, ptr %12, align 8
  %50 = load ptr, ptr %7, align 8
  %51 = getelementptr [8 x i8], ptr %50, i64 %48
  %52 = getelementptr i8, ptr %51, i64 8
  %53 = load double, ptr %52, align 8
  %54 = load i64, ptr %8, align 8
  %55 = getelementptr inbounds [8 x i8], ptr %50, i64 %54
  store double %53, ptr %55, align 8
  %56 = load i64, ptr %12, align 8
  %57 = add nsw i64 %56, -1
  store i64 %57, ptr %8, align 8
  br label %58

58:                                               ; preds = %46, %40, %36
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %59 = load ptr, ptr %7, align 8
  %60 = load i64, ptr %8, align 8
  %61 = load i64, ptr %11, align 8
  %62 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEEEvT_T0_S8_T1_RT2_(ptr noundef %59, i64 noundef %60, i64 noundef %61, double noundef %62, ptr noundef nonnull align 8 dereferenceable(8) %13)
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
  %7 = alloca double, align 8
  store ptr %0, ptr %6, align 8
  store double %3, ptr %7, align 8
  br label %8

8:                                                ; preds = %17, %5
  %9 = phi i64 [ %10, %17 ], [ %1, %5 ]
  %.in = add nsw i64 %9, -1
  %10 = sdiv i64 %.in, 2
  %11 = icmp sgt i64 %9, %2
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds [8 x i8], ptr %0, i64 %10
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEclIPddEEbT_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi i1 [ false, %8 ], [ %14, %12 ]
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = getelementptr inbounds [8 x i8], ptr %0, i64 %10
  %19 = load double, ptr %18, align 8
  %20 = getelementptr inbounds [8 x i8], ptr %0, i64 %9
  store double %19, ptr %20, align 8
  br label %8, !llvm.loop !58

21:                                               ; preds = %15
  %22 = load double, ptr %7, align 8
  %23 = load ptr, ptr %6, align 8
  %24 = getelementptr inbounds [8 x i8], ptr %23, i64 %9
  store double %22, ptr %24, align 8
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
  %6 = inttoptr i64 %3 to ptr
  store ptr %6, ptr %5, align 8
  br label %7

7:                                                ; preds = %21, %4
  %.lcssa25 = phi ptr [ %15, %21 ], [ %1, %4 ]
  %.lcssa4 = phi ptr [ %22, %21 ], [ %0, %4 ]
  br label %8

8:                                                ; preds = %11, %7
  %9 = phi ptr [ %12, %11 ], [ %.lcssa4, %7 ]
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %9, ptr noundef %2)
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %8, !llvm.loop !59

13:                                               ; preds = %8
  br label %14

14:                                               ; preds = %17, %13
  %.pn = phi ptr [ %15, %17 ], [ %.lcssa25, %13 ]
  %15 = getelementptr inbounds i8, ptr %.pn, i64 -8
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %2, ptr noundef nonnull %15)
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %14, !llvm.loop !60

18:                                               ; preds = %14
  %19 = icmp ult ptr %9, %15
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  ret ptr %9

21:                                               ; preds = %18
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %9, ptr noundef nonnull %15)
  %22 = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %7, !llvm.loop !61
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
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca double, align 8
  %22 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %23 = inttoptr i64 %2 to ptr
  store ptr %23, ptr %18, align 8
  store ptr %0, ptr %19, align 8
  store ptr %1, ptr %20, align 8
  %24 = icmp eq ptr %0, %1
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %75

26:                                               ; preds = %3
  %27 = load ptr, ptr %19, align 8
  %28 = load ptr, ptr %20, align 8
  %.promoted1 = load ptr, ptr %22, align 8
  %.promoted3 = load double, ptr %21, align 8
  %.promoted5 = load ptr, ptr %15, align 8
  %.promoted7 = load ptr, ptr %16, align 8
  %.promoted9 = load ptr, ptr %17, align 8
  %.promoted11 = load ptr, ptr %12, align 8
  %.promoted13 = load ptr, ptr %13, align 8
  %.promoted15 = load ptr, ptr %7, align 8
  %.promoted17 = load ptr, ptr %8, align 8
  %.promoted19 = load ptr, ptr %9, align 8
  %.promoted21 = load ptr, ptr %4, align 8
  %.promoted23 = load ptr, ptr %5, align 8
  %.promoted25 = load ptr, ptr %6, align 8
  %.promoted27 = load ptr, ptr %10, align 1
  %.promoted29 = load ptr, ptr %11, align 1
  br label %29

29:                                               ; preds = %74, %26
  %30 = phi ptr [ %59, %74 ], [ %.promoted29, %26 ]
  %31 = phi ptr [ %60, %74 ], [ %.promoted27, %26 ]
  %32 = phi ptr [ %61, %74 ], [ %.promoted25, %26 ]
  %33 = phi ptr [ %62, %74 ], [ %.promoted23, %26 ]
  %34 = phi ptr [ %63, %74 ], [ %.promoted21, %26 ]
  %35 = phi ptr [ %64, %74 ], [ %.promoted19, %26 ]
  %36 = phi ptr [ %65, %74 ], [ %.promoted17, %26 ]
  %37 = phi ptr [ %66, %74 ], [ %.promoted15, %26 ]
  %38 = phi ptr [ %67, %74 ], [ %.promoted13, %26 ]
  %39 = phi ptr [ %68, %74 ], [ %.promoted11, %26 ]
  %40 = phi ptr [ %69, %74 ], [ %.promoted9, %26 ]
  %41 = phi ptr [ %70, %74 ], [ %.promoted7, %26 ]
  %42 = phi ptr [ %71, %74 ], [ %.promoted5, %26 ]
  %43 = phi double [ %72, %74 ], [ %.promoted3, %26 ]
  %44 = phi ptr [ %73, %74 ], [ %.promoted1, %26 ]
  %.pn = phi ptr [ %45, %74 ], [ %27, %26 ]
  %45 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %.not = icmp eq ptr %45, %28
  br i1 %.not, label %.loopexit, label %46

46:                                               ; preds = %29
  %47 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull %45, ptr noundef %27)
  br i1 %47, label %48, label %54

48:                                               ; preds = %46
  %49 = load double, ptr %45, align 8
  %50 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %51 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %27)
  %52 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %45)
  store ptr %50, ptr %14, align 8
  %53 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %51, ptr noundef %52, ptr noundef nonnull %50)
  store double %49, ptr %27, align 8
  br label %58

54:                                               ; preds = %46
  %55 = load i64, ptr %18, align 8
  %56 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %55)
  %57 = inttoptr i64 %56 to ptr
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef nonnull %45, i64 %56)
  br label %58

58:                                               ; preds = %54, %48
  %59 = phi ptr [ %30, %54 ], [ %53, %48 ]
  %60 = phi ptr [ %31, %54 ], [ %14, %48 ]
  %61 = phi ptr [ %32, %54 ], [ %50, %48 ]
  %62 = phi ptr [ %33, %54 ], [ %52, %48 ]
  %63 = phi ptr [ %34, %54 ], [ %51, %48 ]
  %64 = phi ptr [ %35, %54 ], [ %50, %48 ]
  %65 = phi ptr [ %36, %54 ], [ %52, %48 ]
  %66 = phi ptr [ %37, %54 ], [ %51, %48 ]
  %67 = phi ptr [ %38, %54 ], [ %52, %48 ]
  %68 = phi ptr [ %39, %54 ], [ %51, %48 ]
  %69 = phi ptr [ %40, %54 ], [ %50, %48 ]
  %70 = phi ptr [ %41, %54 ], [ %45, %48 ]
  %71 = phi ptr [ %42, %54 ], [ %27, %48 ]
  %72 = phi double [ %43, %54 ], [ %49, %48 ]
  %73 = phi ptr [ %57, %54 ], [ %44, %48 ]
  br label %74

74:                                               ; preds = %58
  br label %29, !llvm.loop !62

.loopexit:                                        ; preds = %29
  store ptr %44, ptr %22, align 8
  store double %43, ptr %21, align 8
  store ptr %42, ptr %15, align 8
  store ptr %41, ptr %16, align 8
  store ptr %40, ptr %17, align 8
  store ptr %39, ptr %12, align 8
  store ptr %38, ptr %13, align 8
  store ptr %37, ptr %7, align 8
  store ptr %36, ptr %8, align 8
  store ptr %35, ptr %9, align 8
  store ptr %34, ptr %4, align 8
  store ptr %33, ptr %5, align 8
  store ptr %32, ptr %6, align 8
  store ptr %31, ptr %10, align 1
  store ptr %30, ptr %11, align 1
  br label %75

75:                                               ; preds = %.loopexit, %25
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %6 = inttoptr i64 %2 to ptr
  store ptr %6, ptr %4, align 8
  %.promoted1 = load ptr, ptr %5, align 8
  br label %7

7:                                                ; preds = %13, %3
  %8 = phi ptr [ %14, %13 ], [ %.promoted1, %3 ]
  %9 = phi ptr [ %15, %13 ], [ %0, %3 ]
  %.not = icmp eq ptr %9, %1
  br i1 %.not, label %16, label %10

10:                                               ; preds = %7
  %11 = load i64, ptr %4, align 8
  %12 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %11)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %9, i64 %12)
  br label %13

13:                                               ; preds = %10
  %14 = inttoptr i64 %12 to ptr
  %15 = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %7, !llvm.loop !63

16:                                               ; preds = %7
  store ptr %8, ptr %5, align 8
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
  br label %7

7:                                                ; preds = %11, %2
  %8 = phi ptr [ %9, %11 ], [ %0, %2 ]
  %9 = getelementptr inbounds i8, ptr %8, i64 -8
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEclIdPdEEbRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %9)
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load double, ptr %9, align 8
  store double %12, ptr %8, align 8
  br label %7, !llvm.loop !64

13:                                               ; preds = %7
  %14 = load double, ptr %4, align 8
  store double %14, ptr %8, align 8
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
  %11 = load ptr, ptr %4, align 8, !nonnull !54, !align !55
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
  %21 = load ptr, ptr %4, align 8, !nonnull !54, !align !55
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds i8, ptr %22, i64 -8
  store ptr %23, ptr %21, align 8
  br label %29

24:                                               ; preds = %17, %14
  %25 = load i64, ptr %5, align 8
  %26 = load ptr, ptr %4, align 8, !nonnull !54, !align !55
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
  store i8 %3, ptr %5, align 1
  store ptr %0, ptr %6, align 8
  %8 = ptrtoint ptr %0 to i64
  %.promoted5 = load ptr, ptr %7, align 8
  br label %9

9:                                                ; preds = %21, %4
  %10 = phi ptr [ %24, %21 ], [ %.promoted5, %4 ]
  %11 = phi i64 [ %22, %21 ], [ %2, %4 ]
  %12 = phi ptr [ %24, %21 ], [ %1, %4 ]
  %13 = ptrtoint ptr %12 to i64
  %14 = sub i64 %13, %8
  %15 = icmp sgt i64 %14, 128
  br i1 %15, label %16, label %.loopexit

16:                                               ; preds = %9
  %17 = icmp eq i64 %11, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  store ptr %10, ptr %7, align 8
  %19 = load ptr, ptr %6, align 8
  %20 = load i8, ptr %5, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %19, ptr noundef %12, ptr noundef %12, i8 %20)
  br label %25

21:                                               ; preds = %16
  %22 = add nsw i64 %11, -1
  %23 = load i8, ptr %5, align 1
  %24 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %12, i8 %23)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %24, ptr noundef %12, i64 noundef %22, i8 %23)
  br label %9, !llvm.loop !65

.loopexit:                                        ; preds = %9
  store ptr %10, ptr %7, align 8
  br label %25

25:                                               ; preds = %.loopexit, %18
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
  store i8 %3, ptr %5, align 1
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %6

6:                                                ; preds = %13, %4
  %7 = phi ptr [ %14, %13 ], [ %1, %4 ]
  %8 = icmp ult ptr %7, %2
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %7, ptr noundef %0)
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %12

12:                                               ; preds = %11, %9
  br label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %6, !llvm.loop !66

15:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = ptrtoint ptr %0 to i64
  br label %5

5:                                                ; preds = %10, %3
  %6 = phi ptr [ %11, %10 ], [ %1, %3 ]
  %7 = ptrtoint ptr %6 to i64
  %8 = sub i64 %7, %4
  %9 = icmp sgt i64 %8, 8
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, ptr %6, i64 -8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %11, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %5, !llvm.loop !67

12:                                               ; preds = %5
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = icmp slt i64 %9, 9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %32

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = ptrtoint ptr %13 to i64
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %15, %16
  %18 = ashr exact i64 %17, 3
  %19 = add nsw i64 %18, -2
  %20 = sdiv i64 %19, 2
  %21 = load ptr, ptr %4, align 8
  %22 = load ptr, ptr %6, align 8, !nonnull !54
  br label %23

23:                                               ; preds = %30, %12
  %24 = phi i64 [ %31, %30 ], [ %20, %12 ]
  %25 = getelementptr inbounds [8 x i8], ptr %21, i64 %24
  %26 = load double, ptr %25, align 8
  %27 = load i8, ptr %22, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %21, i64 noundef %24, i64 noundef %18, double noundef %26, i8 %27)
  %28 = icmp eq i64 %24, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %32

30:                                               ; preds = %23
  %31 = add nsw i64 %24, -1
  br label %23, !llvm.loop !68

32:                                               ; preds = %29, %11
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
  %18 = load ptr, ptr %7, align 8, !nonnull !54
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
  %14 = add nsw i64 %2, -1
  %15 = sdiv i64 %14, 2
  %16 = load ptr, ptr %7, align 8
  %.promoted1 = load i64, ptr %8, align 8
  br label %17

17:                                               ; preds = %30, %5
  %18 = phi i64 [ %31, %30 ], [ %.promoted1, %5 ]
  %19 = phi i64 [ %31, %30 ], [ %1, %5 ]
  %20 = icmp slt i64 %19, %15
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = shl i64 %19, 1
  %23 = add i64 %22, 2
  %24 = getelementptr inbounds [8 x i8], ptr %16, i64 %23
  %25 = getelementptr [8 x i8], ptr %16, i64 %22
  %26 = getelementptr i8, ptr %25, i64 8
  %27 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %24, ptr noundef %26)
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = or disjoint i64 %22, 1
  br label %30

30:                                               ; preds = %28, %21
  %31 = phi i64 [ %29, %28 ], [ %23, %21 ]
  %32 = getelementptr inbounds [8 x i8], ptr %16, i64 %31
  %33 = load double, ptr %32, align 8
  %34 = getelementptr inbounds [8 x i8], ptr %16, i64 %18
  store double %33, ptr %34, align 8
  br label %17, !llvm.loop !69

35:                                               ; preds = %17
  store i64 %19, ptr %12, align 8
  store i64 %18, ptr %8, align 8
  %36 = load i64, ptr %9, align 8
  %37 = and i64 %36, 1
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %35
  %40 = load i64, ptr %12, align 8
  %41 = load i64, ptr %9, align 8
  %42 = add nsw i64 %41, -2
  %43 = sdiv i64 %42, 2
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load i64, ptr %12, align 8
  %47 = shl i64 %46, 1
  %48 = add i64 %47, 2
  store i64 %48, ptr %12, align 8
  %49 = load ptr, ptr %7, align 8
  %50 = getelementptr [8 x i8], ptr %49, i64 %47
  %51 = getelementptr i8, ptr %50, i64 8
  %52 = load double, ptr %51, align 8
  %53 = load i64, ptr %8, align 8
  %54 = getelementptr inbounds [8 x i8], ptr %49, i64 %53
  store double %52, ptr %54, align 8
  %55 = load i64, ptr %12, align 8
  %56 = add nsw i64 %55, -1
  store i64 %56, ptr %8, align 8
  br label %57

57:                                               ; preds = %45, %39, %35
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %58 = load ptr, ptr %7, align 8
  %59 = load i64, ptr %8, align 8
  %60 = load i64, ptr %11, align 8
  %61 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %58, i64 noundef %59, i64 noundef %60, double noundef %61, ptr noundef nonnull align 1 dereferenceable(1) %13)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #0 comdat {
  %6 = alloca ptr, align 8
  %7 = alloca double, align 8
  store ptr %0, ptr %6, align 8
  store double %3, ptr %7, align 8
  br label %8

8:                                                ; preds = %17, %5
  %9 = phi i64 [ %10, %17 ], [ %1, %5 ]
  %.in = add nsw i64 %9, -1
  %10 = sdiv i64 %.in, 2
  %11 = icmp sgt i64 %9, %2
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds [8 x i8], ptr %0, i64 %10
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi i1 [ false, %8 ], [ %14, %12 ]
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = getelementptr inbounds [8 x i8], ptr %0, i64 %10
  %19 = load double, ptr %18, align 8
  %20 = getelementptr inbounds [8 x i8], ptr %0, i64 %9
  store double %19, ptr %20, align 8
  br label %8, !llvm.loop !70

21:                                               ; preds = %15
  %22 = load double, ptr %7, align 8
  %23 = load ptr, ptr %6, align 8
  %24 = getelementptr inbounds [8 x i8], ptr %23, i64 %9
  store double %22, ptr %24, align 8
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
  store i8 %3, ptr %5, align 1
  br label %6

6:                                                ; preds = %20, %4
  %.lcssa25 = phi ptr [ %14, %20 ], [ %1, %4 ]
  %.lcssa4 = phi ptr [ %21, %20 ], [ %0, %4 ]
  br label %7

7:                                                ; preds = %10, %6
  %8 = phi ptr [ %11, %10 ], [ %.lcssa4, %6 ]
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %8, ptr noundef %2)
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %7, !llvm.loop !71

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %16, %12
  %.pn = phi ptr [ %14, %16 ], [ %.lcssa25, %12 ]
  %14 = getelementptr inbounds i8, ptr %.pn, i64 -8
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef nonnull %14)
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %13, !llvm.loop !72

17:                                               ; preds = %13
  %18 = icmp ult ptr %8, %14
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  ret ptr %8

20:                                               ; preds = %17
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %8, ptr noundef nonnull %14)
  %21 = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %6, !llvm.loop !73
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca double, align 8
  %22 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", align 1
  store i8 %2, ptr %18, align 1
  store ptr %0, ptr %19, align 8
  store ptr %1, ptr %20, align 8
  %23 = icmp eq ptr %0, %1
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %73

25:                                               ; preds = %3
  %26 = load ptr, ptr %19, align 8
  %27 = load ptr, ptr %20, align 8
  %.promoted1 = load i8, ptr %22, align 1
  %.promoted3 = load double, ptr %21, align 8
  %.promoted5 = load ptr, ptr %15, align 8
  %.promoted7 = load ptr, ptr %16, align 8
  %.promoted9 = load ptr, ptr %17, align 8
  %.promoted11 = load ptr, ptr %12, align 8
  %.promoted13 = load ptr, ptr %13, align 8
  %.promoted15 = load ptr, ptr %7, align 8
  %.promoted17 = load ptr, ptr %8, align 8
  %.promoted19 = load ptr, ptr %9, align 8
  %.promoted21 = load ptr, ptr %4, align 8
  %.promoted23 = load ptr, ptr %5, align 8
  %.promoted25 = load ptr, ptr %6, align 8
  %.promoted27 = load ptr, ptr %10, align 1
  %.promoted29 = load ptr, ptr %11, align 1
  br label %28

28:                                               ; preds = %72, %25
  %29 = phi ptr [ %57, %72 ], [ %.promoted29, %25 ]
  %30 = phi ptr [ %58, %72 ], [ %.promoted27, %25 ]
  %31 = phi ptr [ %59, %72 ], [ %.promoted25, %25 ]
  %32 = phi ptr [ %60, %72 ], [ %.promoted23, %25 ]
  %33 = phi ptr [ %61, %72 ], [ %.promoted21, %25 ]
  %34 = phi ptr [ %62, %72 ], [ %.promoted19, %25 ]
  %35 = phi ptr [ %63, %72 ], [ %.promoted17, %25 ]
  %36 = phi ptr [ %64, %72 ], [ %.promoted15, %25 ]
  %37 = phi ptr [ %65, %72 ], [ %.promoted13, %25 ]
  %38 = phi ptr [ %66, %72 ], [ %.promoted11, %25 ]
  %39 = phi ptr [ %67, %72 ], [ %.promoted9, %25 ]
  %40 = phi ptr [ %68, %72 ], [ %.promoted7, %25 ]
  %41 = phi ptr [ %69, %72 ], [ %.promoted5, %25 ]
  %42 = phi double [ %70, %72 ], [ %.promoted3, %25 ]
  %43 = phi i8 [ %71, %72 ], [ %.promoted1, %25 ]
  %.pn = phi ptr [ %44, %72 ], [ %26, %25 ]
  %44 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %.not = icmp eq ptr %44, %27
  br i1 %.not, label %.loopexit, label %45

45:                                               ; preds = %28
  %46 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef nonnull %44, ptr noundef %26)
  br i1 %46, label %47, label %53

47:                                               ; preds = %45
  %48 = load double, ptr %44, align 8
  %49 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %50 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %26)
  %51 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %44)
  store ptr %49, ptr %14, align 8
  %52 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %50, ptr noundef %51, ptr noundef nonnull %49)
  store double %48, ptr %26, align 8
  br label %56

53:                                               ; preds = %45
  %54 = load i8, ptr %18, align 1
  %55 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %54)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef nonnull %44, i8 %55)
  br label %56

56:                                               ; preds = %53, %47
  %57 = phi ptr [ %29, %53 ], [ %52, %47 ]
  %58 = phi ptr [ %30, %53 ], [ %14, %47 ]
  %59 = phi ptr [ %31, %53 ], [ %49, %47 ]
  %60 = phi ptr [ %32, %53 ], [ %51, %47 ]
  %61 = phi ptr [ %33, %53 ], [ %50, %47 ]
  %62 = phi ptr [ %34, %53 ], [ %49, %47 ]
  %63 = phi ptr [ %35, %53 ], [ %51, %47 ]
  %64 = phi ptr [ %36, %53 ], [ %50, %47 ]
  %65 = phi ptr [ %37, %53 ], [ %51, %47 ]
  %66 = phi ptr [ %38, %53 ], [ %50, %47 ]
  %67 = phi ptr [ %39, %53 ], [ %49, %47 ]
  %68 = phi ptr [ %40, %53 ], [ %44, %47 ]
  %69 = phi ptr [ %41, %53 ], [ %26, %47 ]
  %70 = phi double [ %42, %53 ], [ %48, %47 ]
  %71 = phi i8 [ %55, %53 ], [ %43, %47 ]
  br label %72

72:                                               ; preds = %56
  br label %28, !llvm.loop !74

.loopexit:                                        ; preds = %28
  store i8 %43, ptr %22, align 1
  store double %42, ptr %21, align 8
  store ptr %41, ptr %15, align 8
  store ptr %40, ptr %16, align 8
  store ptr %39, ptr %17, align 8
  store ptr %38, ptr %12, align 8
  store ptr %37, ptr %13, align 8
  store ptr %36, ptr %7, align 8
  store ptr %35, ptr %8, align 8
  store ptr %34, ptr %9, align 8
  store ptr %33, ptr %4, align 8
  store ptr %32, ptr %5, align 8
  store ptr %31, ptr %6, align 8
  store ptr %30, ptr %10, align 1
  store ptr %29, ptr %11, align 1
  br label %73

73:                                               ; preds = %.loopexit, %24
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", align 1
  store i8 %2, ptr %4, align 1
  %.promoted1 = load i8, ptr %5, align 1
  br label %6

6:                                                ; preds = %12, %3
  %7 = phi i8 [ %11, %12 ], [ %.promoted1, %3 ]
  %8 = phi ptr [ %13, %12 ], [ %0, %3 ]
  %.not = icmp eq ptr %8, %1
  br i1 %.not, label %14, label %9

9:                                                ; preds = %6
  %10 = load i8, ptr %4, align 1
  %11 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %10)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %8, i8 %11)
  br label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %6, !llvm.loop !75

14:                                               ; preds = %6
  store i8 %7, ptr %5, align 1
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %0, i8 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", align 1
  %4 = alloca double, align 8
  store i8 %1, ptr %3, align 1
  %5 = load double, ptr %0, align 8
  store double %5, ptr %4, align 8
  br label %6

6:                                                ; preds = %10, %2
  %7 = phi ptr [ %8, %10 ], [ %0, %2 ]
  %8 = getelementptr inbounds i8, ptr %7, i64 -8
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %8)
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load double, ptr %8, align 8
  store double %11, ptr %7, align 8
  br label %6, !llvm.loop !76

12:                                               ; preds = %6
  %13 = load double, ptr %4, align 8
  store double %13, ptr %7, align 8
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
  store i8 %3, ptr %5, align 1
  store ptr %0, ptr %6, align 8
  %8 = ptrtoint ptr %0 to i64
  %.promoted5 = load ptr, ptr %7, align 8
  br label %9

9:                                                ; preds = %21, %4
  %10 = phi ptr [ %24, %21 ], [ %.promoted5, %4 ]
  %11 = phi i64 [ %22, %21 ], [ %2, %4 ]
  %12 = phi ptr [ %24, %21 ], [ %1, %4 ]
  %13 = ptrtoint ptr %12 to i64
  %14 = sub i64 %13, %8
  %15 = icmp sgt i64 %14, 128
  br i1 %15, label %16, label %.loopexit

16:                                               ; preds = %9
  %17 = icmp eq i64 %11, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  store ptr %10, ptr %7, align 8
  %19 = load ptr, ptr %6, align 8
  %20 = load i8, ptr %5, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %19, ptr noundef %12, ptr noundef %12, i8 %20)
  br label %25

21:                                               ; preds = %16
  %22 = add nsw i64 %11, -1
  %23 = load i8, ptr %5, align 1
  %24 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %12, i8 %23)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %24, ptr noundef %12, i64 noundef %22, i8 %23)
  br label %9, !llvm.loop !77

.loopexit:                                        ; preds = %9
  store ptr %10, ptr %7, align 8
  br label %25

25:                                               ; preds = %.loopexit, %18
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
  store i8 %3, ptr %5, align 1
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %6

6:                                                ; preds = %13, %4
  %7 = phi ptr [ %14, %13 ], [ %1, %4 ]
  %8 = icmp ult ptr %7, %2
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %7, ptr noundef %0)
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %12

12:                                               ; preds = %11, %9
  br label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %6, !llvm.loop !78

15:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = ptrtoint ptr %0 to i64
  br label %5

5:                                                ; preds = %10, %3
  %6 = phi ptr [ %11, %10 ], [ %1, %3 ]
  %7 = ptrtoint ptr %6 to i64
  %8 = sub i64 %7, %4
  %9 = icmp sgt i64 %8, 8
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, ptr %6, i64 -8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %11, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %5, !llvm.loop !79

12:                                               ; preds = %5
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = icmp slt i64 %9, 9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %32

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = ptrtoint ptr %13 to i64
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %15, %16
  %18 = ashr exact i64 %17, 3
  %19 = add nsw i64 %18, -2
  %20 = sdiv i64 %19, 2
  %21 = load ptr, ptr %4, align 8
  %22 = load ptr, ptr %6, align 8, !nonnull !54
  br label %23

23:                                               ; preds = %30, %12
  %24 = phi i64 [ %31, %30 ], [ %20, %12 ]
  %25 = getelementptr inbounds [8 x i8], ptr %21, i64 %24
  %26 = load double, ptr %25, align 8
  %27 = load i8, ptr %22, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %21, i64 noundef %24, i64 noundef %18, double noundef %26, i8 %27)
  %28 = icmp eq i64 %24, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %32

30:                                               ; preds = %23
  %31 = add nsw i64 %24, -1
  br label %23, !llvm.loop !80

32:                                               ; preds = %29, %11
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
  %18 = load ptr, ptr %7, align 8, !nonnull !54
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
  %14 = add nsw i64 %2, -1
  %15 = sdiv i64 %14, 2
  %16 = load ptr, ptr %7, align 8
  %.promoted1 = load i64, ptr %8, align 8
  br label %17

17:                                               ; preds = %30, %5
  %18 = phi i64 [ %31, %30 ], [ %.promoted1, %5 ]
  %19 = phi i64 [ %31, %30 ], [ %1, %5 ]
  %20 = icmp slt i64 %19, %15
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = shl i64 %19, 1
  %23 = add i64 %22, 2
  %24 = getelementptr inbounds [8 x i8], ptr %16, i64 %23
  %25 = getelementptr [8 x i8], ptr %16, i64 %22
  %26 = getelementptr i8, ptr %25, i64 8
  %27 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %24, ptr noundef %26)
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = or disjoint i64 %22, 1
  br label %30

30:                                               ; preds = %28, %21
  %31 = phi i64 [ %29, %28 ], [ %23, %21 ]
  %32 = getelementptr inbounds [8 x i8], ptr %16, i64 %31
  %33 = load double, ptr %32, align 8
  %34 = getelementptr inbounds [8 x i8], ptr %16, i64 %18
  store double %33, ptr %34, align 8
  br label %17, !llvm.loop !81

35:                                               ; preds = %17
  store i64 %19, ptr %12, align 8
  store i64 %18, ptr %8, align 8
  %36 = load i64, ptr %9, align 8
  %37 = and i64 %36, 1
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %35
  %40 = load i64, ptr %12, align 8
  %41 = load i64, ptr %9, align 8
  %42 = add nsw i64 %41, -2
  %43 = sdiv i64 %42, 2
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load i64, ptr %12, align 8
  %47 = shl i64 %46, 1
  %48 = add i64 %47, 2
  store i64 %48, ptr %12, align 8
  %49 = load ptr, ptr %7, align 8
  %50 = getelementptr [8 x i8], ptr %49, i64 %47
  %51 = getelementptr i8, ptr %50, i64 8
  %52 = load double, ptr %51, align 8
  %53 = load i64, ptr %8, align 8
  %54 = getelementptr inbounds [8 x i8], ptr %49, i64 %53
  store double %52, ptr %54, align 8
  %55 = load i64, ptr %12, align 8
  %56 = add nsw i64 %55, -1
  store i64 %56, ptr %8, align 8
  br label %57

57:                                               ; preds = %45, %39, %35
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %58 = load ptr, ptr %7, align 8
  %59 = load i64, ptr %8, align 8
  %60 = load i64, ptr %11, align 8
  %61 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %58, i64 noundef %59, i64 noundef %60, double noundef %61, ptr noundef nonnull align 1 dereferenceable(1) %13)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #0 comdat {
  %6 = alloca ptr, align 8
  %7 = alloca double, align 8
  store ptr %0, ptr %6, align 8
  store double %3, ptr %7, align 8
  br label %8

8:                                                ; preds = %17, %5
  %9 = phi i64 [ %10, %17 ], [ %1, %5 ]
  %.in = add nsw i64 %9, -1
  %10 = sdiv i64 %.in, 2
  %11 = icmp sgt i64 %9, %2
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds [8 x i8], ptr %0, i64 %10
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi i1 [ false, %8 ], [ %14, %12 ]
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = getelementptr inbounds [8 x i8], ptr %0, i64 %10
  %19 = load double, ptr %18, align 8
  %20 = getelementptr inbounds [8 x i8], ptr %0, i64 %9
  store double %19, ptr %20, align 8
  br label %8, !llvm.loop !82

21:                                               ; preds = %15
  %22 = load double, ptr %7, align 8
  %23 = load ptr, ptr %6, align 8
  %24 = getelementptr inbounds [8 x i8], ptr %23, i64 %9
  store double %22, ptr %24, align 8
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
  store i8 %3, ptr %5, align 1
  br label %6

6:                                                ; preds = %20, %4
  %.lcssa25 = phi ptr [ %14, %20 ], [ %1, %4 ]
  %.lcssa4 = phi ptr [ %21, %20 ], [ %0, %4 ]
  br label %7

7:                                                ; preds = %10, %6
  %8 = phi ptr [ %11, %10 ], [ %.lcssa4, %6 ]
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %8, ptr noundef %2)
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %7, !llvm.loop !83

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %16, %12
  %.pn = phi ptr [ %14, %16 ], [ %.lcssa25, %12 ]
  %14 = getelementptr inbounds i8, ptr %.pn, i64 -8
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef nonnull %14)
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %13, !llvm.loop !84

17:                                               ; preds = %13
  %18 = icmp ult ptr %8, %14
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  ret ptr %8

20:                                               ; preds = %17
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %8, ptr noundef nonnull %14)
  %21 = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %6, !llvm.loop !85
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca double, align 8
  %22 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", align 1
  store i8 %2, ptr %18, align 1
  store ptr %0, ptr %19, align 8
  store ptr %1, ptr %20, align 8
  %23 = icmp eq ptr %0, %1
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %73

25:                                               ; preds = %3
  %26 = load ptr, ptr %19, align 8
  %27 = load ptr, ptr %20, align 8
  %.promoted1 = load i8, ptr %22, align 1
  %.promoted3 = load double, ptr %21, align 8
  %.promoted5 = load ptr, ptr %15, align 8
  %.promoted7 = load ptr, ptr %16, align 8
  %.promoted9 = load ptr, ptr %17, align 8
  %.promoted11 = load ptr, ptr %12, align 8
  %.promoted13 = load ptr, ptr %13, align 8
  %.promoted15 = load ptr, ptr %7, align 8
  %.promoted17 = load ptr, ptr %8, align 8
  %.promoted19 = load ptr, ptr %9, align 8
  %.promoted21 = load ptr, ptr %4, align 8
  %.promoted23 = load ptr, ptr %5, align 8
  %.promoted25 = load ptr, ptr %6, align 8
  %.promoted27 = load ptr, ptr %10, align 1
  %.promoted29 = load ptr, ptr %11, align 1
  br label %28

28:                                               ; preds = %72, %25
  %29 = phi ptr [ %57, %72 ], [ %.promoted29, %25 ]
  %30 = phi ptr [ %58, %72 ], [ %.promoted27, %25 ]
  %31 = phi ptr [ %59, %72 ], [ %.promoted25, %25 ]
  %32 = phi ptr [ %60, %72 ], [ %.promoted23, %25 ]
  %33 = phi ptr [ %61, %72 ], [ %.promoted21, %25 ]
  %34 = phi ptr [ %62, %72 ], [ %.promoted19, %25 ]
  %35 = phi ptr [ %63, %72 ], [ %.promoted17, %25 ]
  %36 = phi ptr [ %64, %72 ], [ %.promoted15, %25 ]
  %37 = phi ptr [ %65, %72 ], [ %.promoted13, %25 ]
  %38 = phi ptr [ %66, %72 ], [ %.promoted11, %25 ]
  %39 = phi ptr [ %67, %72 ], [ %.promoted9, %25 ]
  %40 = phi ptr [ %68, %72 ], [ %.promoted7, %25 ]
  %41 = phi ptr [ %69, %72 ], [ %.promoted5, %25 ]
  %42 = phi double [ %70, %72 ], [ %.promoted3, %25 ]
  %43 = phi i8 [ %71, %72 ], [ %.promoted1, %25 ]
  %.pn = phi ptr [ %44, %72 ], [ %26, %25 ]
  %44 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %.not = icmp eq ptr %44, %27
  br i1 %.not, label %.loopexit, label %45

45:                                               ; preds = %28
  %46 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef nonnull %44, ptr noundef %26)
  br i1 %46, label %47, label %53

47:                                               ; preds = %45
  %48 = load double, ptr %44, align 8
  %49 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %50 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %26)
  %51 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %44)
  store ptr %49, ptr %14, align 8
  %52 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %50, ptr noundef %51, ptr noundef nonnull %49)
  store double %48, ptr %26, align 8
  br label %56

53:                                               ; preds = %45
  %54 = load i8, ptr %18, align 1
  %55 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %54)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef nonnull %44, i8 %55)
  br label %56

56:                                               ; preds = %53, %47
  %57 = phi ptr [ %29, %53 ], [ %52, %47 ]
  %58 = phi ptr [ %30, %53 ], [ %14, %47 ]
  %59 = phi ptr [ %31, %53 ], [ %49, %47 ]
  %60 = phi ptr [ %32, %53 ], [ %51, %47 ]
  %61 = phi ptr [ %33, %53 ], [ %50, %47 ]
  %62 = phi ptr [ %34, %53 ], [ %49, %47 ]
  %63 = phi ptr [ %35, %53 ], [ %51, %47 ]
  %64 = phi ptr [ %36, %53 ], [ %50, %47 ]
  %65 = phi ptr [ %37, %53 ], [ %51, %47 ]
  %66 = phi ptr [ %38, %53 ], [ %50, %47 ]
  %67 = phi ptr [ %39, %53 ], [ %49, %47 ]
  %68 = phi ptr [ %40, %53 ], [ %44, %47 ]
  %69 = phi ptr [ %41, %53 ], [ %26, %47 ]
  %70 = phi double [ %42, %53 ], [ %48, %47 ]
  %71 = phi i8 [ %55, %53 ], [ %43, %47 ]
  br label %72

72:                                               ; preds = %56
  br label %28, !llvm.loop !86

.loopexit:                                        ; preds = %28
  store i8 %43, ptr %22, align 1
  store double %42, ptr %21, align 8
  store ptr %41, ptr %15, align 8
  store ptr %40, ptr %16, align 8
  store ptr %39, ptr %17, align 8
  store ptr %38, ptr %12, align 8
  store ptr %37, ptr %13, align 8
  store ptr %36, ptr %7, align 8
  store ptr %35, ptr %8, align 8
  store ptr %34, ptr %9, align 8
  store ptr %33, ptr %4, align 8
  store ptr %32, ptr %5, align 8
  store ptr %31, ptr %6, align 8
  store ptr %30, ptr %10, align 1
  store ptr %29, ptr %11, align 1
  br label %73

73:                                               ; preds = %.loopexit, %24
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", align 1
  store i8 %2, ptr %4, align 1
  %.promoted1 = load i8, ptr %5, align 1
  br label %6

6:                                                ; preds = %12, %3
  %7 = phi i8 [ %11, %12 ], [ %.promoted1, %3 ]
  %8 = phi ptr [ %13, %12 ], [ %0, %3 ]
  %.not = icmp eq ptr %8, %1
  br i1 %.not, label %14, label %9

9:                                                ; preds = %6
  %10 = load i8, ptr %4, align 1
  %11 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %10)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %8, i8 %11)
  br label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %6, !llvm.loop !87

14:                                               ; preds = %6
  store i8 %7, ptr %5, align 1
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %0, i8 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", align 1
  %4 = alloca double, align 8
  store i8 %1, ptr %3, align 1
  %5 = load double, ptr %0, align 8
  store double %5, ptr %4, align 8
  br label %6

6:                                                ; preds = %10, %2
  %7 = phi ptr [ %8, %10 ], [ %0, %2 ]
  %8 = getelementptr inbounds i8, ptr %7, i64 -8
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %8)
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load double, ptr %8, align 8
  store double %11, ptr %7, align 8
  br label %6, !llvm.loop !88

12:                                               ; preds = %6
  %13 = load double, ptr %4, align 8
  store double %13, ptr %7, align 8
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
  store i8 %3, ptr %5, align 1
  store ptr %0, ptr %6, align 8
  %8 = ptrtoint ptr %0 to i64
  %.promoted5 = load ptr, ptr %7, align 8
  br label %9

9:                                                ; preds = %21, %4
  %10 = phi ptr [ %24, %21 ], [ %.promoted5, %4 ]
  %11 = phi i64 [ %22, %21 ], [ %2, %4 ]
  %12 = phi ptr [ %24, %21 ], [ %1, %4 ]
  %13 = ptrtoint ptr %12 to i64
  %14 = sub i64 %13, %8
  %15 = icmp sgt i64 %14, 128
  br i1 %15, label %16, label %.loopexit

16:                                               ; preds = %9
  %17 = icmp eq i64 %11, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  store ptr %10, ptr %7, align 8
  %19 = load ptr, ptr %6, align 8
  %20 = load i8, ptr %5, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %19, ptr noundef %12, ptr noundef %12, i8 %20)
  br label %25

21:                                               ; preds = %16
  %22 = add nsw i64 %11, -1
  %23 = load i8, ptr %5, align 1
  %24 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %12, i8 %23)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %24, ptr noundef %12, i64 noundef %22, i8 %23)
  br label %9, !llvm.loop !89

.loopexit:                                        ; preds = %9
  store ptr %10, ptr %7, align 8
  br label %25

25:                                               ; preds = %.loopexit, %18
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
  store i8 %3, ptr %5, align 1
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %6

6:                                                ; preds = %13, %4
  %7 = phi ptr [ %14, %13 ], [ %1, %4 ]
  %8 = icmp ult ptr %7, %2
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %7, ptr noundef %0)
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %12

12:                                               ; preds = %11, %9
  br label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %6, !llvm.loop !90

15:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = ptrtoint ptr %0 to i64
  br label %5

5:                                                ; preds = %10, %3
  %6 = phi ptr [ %11, %10 ], [ %1, %3 ]
  %7 = ptrtoint ptr %6 to i64
  %8 = sub i64 %7, %4
  %9 = icmp sgt i64 %8, 8
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, ptr %6, i64 -8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %11, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %5, !llvm.loop !91

12:                                               ; preds = %5
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = icmp slt i64 %9, 9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %32

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = ptrtoint ptr %13 to i64
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %15, %16
  %18 = ashr exact i64 %17, 3
  %19 = add nsw i64 %18, -2
  %20 = sdiv i64 %19, 2
  %21 = load ptr, ptr %4, align 8
  %22 = load ptr, ptr %6, align 8, !nonnull !54
  br label %23

23:                                               ; preds = %30, %12
  %24 = phi i64 [ %31, %30 ], [ %20, %12 ]
  %25 = getelementptr inbounds [8 x i8], ptr %21, i64 %24
  %26 = load double, ptr %25, align 8
  %27 = load i8, ptr %22, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %21, i64 noundef %24, i64 noundef %18, double noundef %26, i8 %27)
  %28 = icmp eq i64 %24, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %32

30:                                               ; preds = %23
  %31 = add nsw i64 %24, -1
  br label %23, !llvm.loop !92

32:                                               ; preds = %29, %11
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
  %18 = load ptr, ptr %7, align 8, !nonnull !54
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
  %14 = add nsw i64 %2, -1
  %15 = sdiv i64 %14, 2
  %16 = load ptr, ptr %7, align 8
  %.promoted1 = load i64, ptr %8, align 8
  br label %17

17:                                               ; preds = %30, %5
  %18 = phi i64 [ %31, %30 ], [ %.promoted1, %5 ]
  %19 = phi i64 [ %31, %30 ], [ %1, %5 ]
  %20 = icmp slt i64 %19, %15
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = shl i64 %19, 1
  %23 = add i64 %22, 2
  %24 = getelementptr inbounds [8 x i8], ptr %16, i64 %23
  %25 = getelementptr [8 x i8], ptr %16, i64 %22
  %26 = getelementptr i8, ptr %25, i64 8
  %27 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %24, ptr noundef %26)
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = or disjoint i64 %22, 1
  br label %30

30:                                               ; preds = %28, %21
  %31 = phi i64 [ %29, %28 ], [ %23, %21 ]
  %32 = getelementptr inbounds [8 x i8], ptr %16, i64 %31
  %33 = load double, ptr %32, align 8
  %34 = getelementptr inbounds [8 x i8], ptr %16, i64 %18
  store double %33, ptr %34, align 8
  br label %17, !llvm.loop !93

35:                                               ; preds = %17
  store i64 %19, ptr %12, align 8
  store i64 %18, ptr %8, align 8
  %36 = load i64, ptr %9, align 8
  %37 = and i64 %36, 1
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %35
  %40 = load i64, ptr %12, align 8
  %41 = load i64, ptr %9, align 8
  %42 = add nsw i64 %41, -2
  %43 = sdiv i64 %42, 2
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load i64, ptr %12, align 8
  %47 = shl i64 %46, 1
  %48 = add i64 %47, 2
  store i64 %48, ptr %12, align 8
  %49 = load ptr, ptr %7, align 8
  %50 = getelementptr [8 x i8], ptr %49, i64 %47
  %51 = getelementptr i8, ptr %50, i64 8
  %52 = load double, ptr %51, align 8
  %53 = load i64, ptr %8, align 8
  %54 = getelementptr inbounds [8 x i8], ptr %49, i64 %53
  store double %52, ptr %54, align 8
  %55 = load i64, ptr %12, align 8
  %56 = add nsw i64 %55, -1
  store i64 %56, ptr %8, align 8
  br label %57

57:                                               ; preds = %45, %39, %35
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %58 = load ptr, ptr %7, align 8
  %59 = load i64, ptr %8, align 8
  %60 = load i64, ptr %11, align 8
  %61 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEEEvT_T0_S8_T1_RT2_(ptr noundef %58, i64 noundef %59, i64 noundef %60, double noundef %61, ptr noundef nonnull align 1 dereferenceable(1) %13)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEEEvT_T0_S8_T1_RT2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #0 comdat {
  %6 = alloca ptr, align 8
  %7 = alloca double, align 8
  store ptr %0, ptr %6, align 8
  store double %3, ptr %7, align 8
  br label %8

8:                                                ; preds = %17, %5
  %9 = phi i64 [ %10, %17 ], [ %1, %5 ]
  %.in = add nsw i64 %9, -1
  %10 = sdiv i64 %.in, 2
  %11 = icmp sgt i64 %9, %2
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds [8 x i8], ptr %0, i64 %10
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi i1 [ false, %8 ], [ %14, %12 ]
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = getelementptr inbounds [8 x i8], ptr %0, i64 %10
  %19 = load double, ptr %18, align 8
  %20 = getelementptr inbounds [8 x i8], ptr %0, i64 %9
  store double %19, ptr %20, align 8
  br label %8, !llvm.loop !94

21:                                               ; preds = %15
  %22 = load double, ptr %7, align 8
  %23 = load ptr, ptr %6, align 8
  %24 = getelementptr inbounds [8 x i8], ptr %23, i64 %9
  store double %22, ptr %24, align 8
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
  store i8 %3, ptr %5, align 1
  br label %6

6:                                                ; preds = %20, %4
  %.lcssa25 = phi ptr [ %14, %20 ], [ %1, %4 ]
  %.lcssa4 = phi ptr [ %21, %20 ], [ %0, %4 ]
  br label %7

7:                                                ; preds = %10, %6
  %8 = phi ptr [ %11, %10 ], [ %.lcssa4, %6 ]
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %8, ptr noundef %2)
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %7, !llvm.loop !95

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %16, %12
  %.pn = phi ptr [ %14, %16 ], [ %.lcssa25, %12 ]
  %14 = getelementptr inbounds i8, ptr %.pn, i64 -8
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef nonnull %14)
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %13, !llvm.loop !96

17:                                               ; preds = %13
  %18 = icmp ult ptr %8, %14
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  ret ptr %8

20:                                               ; preds = %17
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %8, ptr noundef nonnull %14)
  %21 = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %6, !llvm.loop !97
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca double, align 8
  %22 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", align 1
  store i8 %2, ptr %18, align 1
  store ptr %0, ptr %19, align 8
  store ptr %1, ptr %20, align 8
  %23 = icmp eq ptr %0, %1
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %73

25:                                               ; preds = %3
  %26 = load ptr, ptr %19, align 8
  %27 = load ptr, ptr %20, align 8
  %.promoted1 = load i8, ptr %22, align 1
  %.promoted3 = load double, ptr %21, align 8
  %.promoted5 = load ptr, ptr %15, align 8
  %.promoted7 = load ptr, ptr %16, align 8
  %.promoted9 = load ptr, ptr %17, align 8
  %.promoted11 = load ptr, ptr %12, align 8
  %.promoted13 = load ptr, ptr %13, align 8
  %.promoted15 = load ptr, ptr %7, align 8
  %.promoted17 = load ptr, ptr %8, align 8
  %.promoted19 = load ptr, ptr %9, align 8
  %.promoted21 = load ptr, ptr %4, align 8
  %.promoted23 = load ptr, ptr %5, align 8
  %.promoted25 = load ptr, ptr %6, align 8
  %.promoted27 = load ptr, ptr %10, align 1
  %.promoted29 = load ptr, ptr %11, align 1
  br label %28

28:                                               ; preds = %72, %25
  %29 = phi ptr [ %57, %72 ], [ %.promoted29, %25 ]
  %30 = phi ptr [ %58, %72 ], [ %.promoted27, %25 ]
  %31 = phi ptr [ %59, %72 ], [ %.promoted25, %25 ]
  %32 = phi ptr [ %60, %72 ], [ %.promoted23, %25 ]
  %33 = phi ptr [ %61, %72 ], [ %.promoted21, %25 ]
  %34 = phi ptr [ %62, %72 ], [ %.promoted19, %25 ]
  %35 = phi ptr [ %63, %72 ], [ %.promoted17, %25 ]
  %36 = phi ptr [ %64, %72 ], [ %.promoted15, %25 ]
  %37 = phi ptr [ %65, %72 ], [ %.promoted13, %25 ]
  %38 = phi ptr [ %66, %72 ], [ %.promoted11, %25 ]
  %39 = phi ptr [ %67, %72 ], [ %.promoted9, %25 ]
  %40 = phi ptr [ %68, %72 ], [ %.promoted7, %25 ]
  %41 = phi ptr [ %69, %72 ], [ %.promoted5, %25 ]
  %42 = phi double [ %70, %72 ], [ %.promoted3, %25 ]
  %43 = phi i8 [ %71, %72 ], [ %.promoted1, %25 ]
  %.pn = phi ptr [ %44, %72 ], [ %26, %25 ]
  %44 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %.not = icmp eq ptr %44, %27
  br i1 %.not, label %.loopexit, label %45

45:                                               ; preds = %28
  %46 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef nonnull %44, ptr noundef %26)
  br i1 %46, label %47, label %53

47:                                               ; preds = %45
  %48 = load double, ptr %44, align 8
  %49 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %50 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %26)
  %51 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %44)
  store ptr %49, ptr %14, align 8
  %52 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %50, ptr noundef %51, ptr noundef nonnull %49)
  store double %48, ptr %26, align 8
  br label %56

53:                                               ; preds = %45
  %54 = load i8, ptr %18, align 1
  %55 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %54)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef nonnull %44, i8 %55)
  br label %56

56:                                               ; preds = %53, %47
  %57 = phi ptr [ %29, %53 ], [ %52, %47 ]
  %58 = phi ptr [ %30, %53 ], [ %14, %47 ]
  %59 = phi ptr [ %31, %53 ], [ %49, %47 ]
  %60 = phi ptr [ %32, %53 ], [ %51, %47 ]
  %61 = phi ptr [ %33, %53 ], [ %50, %47 ]
  %62 = phi ptr [ %34, %53 ], [ %49, %47 ]
  %63 = phi ptr [ %35, %53 ], [ %51, %47 ]
  %64 = phi ptr [ %36, %53 ], [ %50, %47 ]
  %65 = phi ptr [ %37, %53 ], [ %51, %47 ]
  %66 = phi ptr [ %38, %53 ], [ %50, %47 ]
  %67 = phi ptr [ %39, %53 ], [ %49, %47 ]
  %68 = phi ptr [ %40, %53 ], [ %44, %47 ]
  %69 = phi ptr [ %41, %53 ], [ %26, %47 ]
  %70 = phi double [ %42, %53 ], [ %48, %47 ]
  %71 = phi i8 [ %55, %53 ], [ %43, %47 ]
  br label %72

72:                                               ; preds = %56
  br label %28, !llvm.loop !98

.loopexit:                                        ; preds = %28
  store i8 %43, ptr %22, align 1
  store double %42, ptr %21, align 8
  store ptr %41, ptr %15, align 8
  store ptr %40, ptr %16, align 8
  store ptr %39, ptr %17, align 8
  store ptr %38, ptr %12, align 8
  store ptr %37, ptr %13, align 8
  store ptr %36, ptr %7, align 8
  store ptr %35, ptr %8, align 8
  store ptr %34, ptr %9, align 8
  store ptr %33, ptr %4, align 8
  store ptr %32, ptr %5, align 8
  store ptr %31, ptr %6, align 8
  store ptr %30, ptr %10, align 1
  store ptr %29, ptr %11, align 1
  br label %73

73:                                               ; preds = %.loopexit, %24
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", align 1
  store i8 %2, ptr %4, align 1
  %.promoted1 = load i8, ptr %5, align 1
  br label %6

6:                                                ; preds = %12, %3
  %7 = phi i8 [ %11, %12 ], [ %.promoted1, %3 ]
  %8 = phi ptr [ %13, %12 ], [ %0, %3 ]
  %.not = icmp eq ptr %8, %1
  br i1 %.not, label %14, label %9

9:                                                ; preds = %6
  %10 = load i8, ptr %4, align 1
  %11 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %10)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %8, i8 %11)
  br label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %6, !llvm.loop !99

14:                                               ; preds = %6
  store i8 %7, ptr %5, align 1
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %0, i8 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", align 1
  %4 = alloca double, align 8
  store i8 %1, ptr %3, align 1
  %5 = load double, ptr %0, align 8
  store double %5, ptr %4, align 8
  br label %6

6:                                                ; preds = %10, %2
  %7 = phi ptr [ %8, %10 ], [ %0, %2 ]
  %8 = getelementptr inbounds i8, ptr %7, i64 -8
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %8)
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load double, ptr %8, align 8
  store double %11, ptr %7, align 8
  br label %6, !llvm.loop !100

12:                                               ; preds = %6
  %13 = load double, ptr %4, align 8
  store double %13, ptr %7, align 8
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
  store ptr %0, ptr %5, align 8
  %7 = ptrtoint ptr %0 to i64
  %.promoted5 = load ptr, ptr %6, align 8
  br label %8

8:                                                ; preds = %19, %4
  %9 = phi ptr [ %21, %19 ], [ %.promoted5, %4 ]
  %10 = phi i64 [ %20, %19 ], [ %2, %4 ]
  %11 = phi ptr [ %21, %19 ], [ %1, %4 ]
  %12 = ptrtoint ptr %11 to i64
  %13 = sub i64 %12, %7
  %14 = icmp sgt i64 %13, 128
  br i1 %14, label %15, label %.loopexit

15:                                               ; preds = %8
  %16 = icmp eq i64 %10, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  store ptr %9, ptr %6, align 8
  %18 = load ptr, ptr %5, align 8
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %18, ptr noundef %11, ptr noundef %11, i8 undef)
  br label %22

19:                                               ; preds = %15
  %20 = add nsw i64 %10, -1
  %21 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(ptr noundef %0, ptr noundef %11, i8 undef)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %21, ptr noundef %11, i64 noundef %20, i8 undef)
  br label %8, !llvm.loop !101

.loopexit:                                        ; preds = %8
  store ptr %9, ptr %6, align 8
  br label %22

22:                                               ; preds = %.loopexit, %17
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
  store i8 %3, ptr %5, align 1
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %6

6:                                                ; preds = %13, %4
  %7 = phi ptr [ %14, %13 ], [ %1, %4 ]
  %8 = icmp ult ptr %7, %2
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %7, ptr noundef %0)
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %12

12:                                               ; preds = %11, %9
  br label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %6, !llvm.loop !102

15:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = ptrtoint ptr %0 to i64
  br label %5

5:                                                ; preds = %10, %3
  %6 = phi ptr [ %11, %10 ], [ %1, %3 ]
  %7 = ptrtoint ptr %6 to i64
  %8 = sub i64 %7, %4
  %9 = icmp sgt i64 %8, 8
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, ptr %6, i64 -8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %11, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %5, !llvm.loop !103

12:                                               ; preds = %5
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = icmp slt i64 %8, 9
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %29

11:                                               ; preds = %3
  %12 = load ptr, ptr %5, align 8
  %13 = load ptr, ptr %4, align 8
  %14 = ptrtoint ptr %12 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = ashr exact i64 %16, 3
  %18 = add nsw i64 %17, -2
  %19 = sdiv i64 %18, 2
  %20 = load ptr, ptr %4, align 8
  br label %21

21:                                               ; preds = %27, %11
  %22 = phi i64 [ %28, %27 ], [ %19, %11 ]
  %23 = getelementptr inbounds [8 x i8], ptr %20, i64 %22
  %24 = load double, ptr %23, align 8
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %20, i64 noundef %22, i64 noundef %17, double noundef %24, i8 undef)
  %25 = icmp eq i64 %22, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %29

27:                                               ; preds = %21
  %28 = add nsw i64 %22, -1
  br label %21, !llvm.loop !104

29:                                               ; preds = %26, %10
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
  %14 = add nsw i64 %2, -1
  %15 = sdiv i64 %14, 2
  %16 = load ptr, ptr %7, align 8
  %.promoted1 = load i64, ptr %8, align 8
  br label %17

17:                                               ; preds = %30, %5
  %18 = phi i64 [ %31, %30 ], [ %.promoted1, %5 ]
  %19 = phi i64 [ %31, %30 ], [ %1, %5 ]
  %20 = icmp slt i64 %19, %15
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = shl i64 %19, 1
  %23 = add i64 %22, 2
  %24 = getelementptr inbounds [8 x i8], ptr %16, i64 %23
  %25 = getelementptr [8 x i8], ptr %16, i64 %22
  %26 = getelementptr i8, ptr %25, i64 8
  %27 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %24, ptr noundef %26)
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = or disjoint i64 %22, 1
  br label %30

30:                                               ; preds = %28, %21
  %31 = phi i64 [ %29, %28 ], [ %23, %21 ]
  %32 = getelementptr inbounds [8 x i8], ptr %16, i64 %31
  %33 = load double, ptr %32, align 8
  %34 = getelementptr inbounds [8 x i8], ptr %16, i64 %18
  store double %33, ptr %34, align 8
  br label %17, !llvm.loop !105

35:                                               ; preds = %17
  store i64 %19, ptr %12, align 8
  store i64 %18, ptr %8, align 8
  %36 = load i64, ptr %9, align 8
  %37 = and i64 %36, 1
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %35
  %40 = load i64, ptr %12, align 8
  %41 = load i64, ptr %9, align 8
  %42 = add nsw i64 %41, -2
  %43 = sdiv i64 %42, 2
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load i64, ptr %12, align 8
  %47 = shl i64 %46, 1
  %48 = add i64 %47, 2
  store i64 %48, ptr %12, align 8
  %49 = load ptr, ptr %7, align 8
  %50 = getelementptr [8 x i8], ptr %49, i64 %47
  %51 = getelementptr i8, ptr %50, i64 8
  %52 = load double, ptr %51, align 8
  %53 = load i64, ptr %8, align 8
  %54 = getelementptr inbounds [8 x i8], ptr %49, i64 %53
  store double %52, ptr %54, align 8
  %55 = load i64, ptr %12, align 8
  %56 = add nsw i64 %55, -1
  store i64 %56, ptr %8, align 8
  br label %57

57:                                               ; preds = %45, %39, %35
  call void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(ptr noundef nonnull align 1 dereferenceable(1) %13, i8 undef)
  %58 = load ptr, ptr %7, align 8
  %59 = load i64, ptr %8, align 8
  %60 = load i64, ptr %11, align 8
  %61 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_(ptr noundef %58, i64 noundef %59, i64 noundef %60, double noundef %61, ptr noundef nonnull align 1 dereferenceable(1) %13)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 %1) unnamed_addr #5 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #0 comdat {
  %6 = alloca ptr, align 8
  %7 = alloca double, align 8
  store ptr %0, ptr %6, align 8
  store double %3, ptr %7, align 8
  br label %8

8:                                                ; preds = %17, %5
  %9 = phi i64 [ %10, %17 ], [ %1, %5 ]
  %.in = add nsw i64 %9, -1
  %10 = sdiv i64 %.in, 2
  %11 = icmp sgt i64 %9, %2
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds [8 x i8], ptr %0, i64 %10
  %14 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi i1 [ false, %8 ], [ %14, %12 ]
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = getelementptr inbounds [8 x i8], ptr %0, i64 %10
  %19 = load double, ptr %18, align 8
  %20 = getelementptr inbounds [8 x i8], ptr %0, i64 %9
  store double %19, ptr %20, align 8
  br label %8, !llvm.loop !106

21:                                               ; preds = %15
  %22 = load double, ptr %7, align 8
  %23 = load ptr, ptr %6, align 8
  %24 = getelementptr inbounds [8 x i8], ptr %23, i64 %9
  store double %22, ptr %24, align 8
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
  store i8 %3, ptr %5, align 1
  br label %6

6:                                                ; preds = %20, %4
  %.lcssa25 = phi ptr [ %14, %20 ], [ %1, %4 ]
  %.lcssa4 = phi ptr [ %21, %20 ], [ %0, %4 ]
  br label %7

7:                                                ; preds = %10, %6
  %8 = phi ptr [ %11, %10 ], [ %.lcssa4, %6 ]
  %9 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %8, ptr noundef %2)
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %7, !llvm.loop !107

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %16, %12
  %.pn = phi ptr [ %14, %16 ], [ %.lcssa25, %12 ]
  %14 = getelementptr inbounds i8, ptr %.pn, i64 -8
  %15 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef nonnull %14)
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %13, !llvm.loop !108

17:                                               ; preds = %13
  %18 = icmp ult ptr %8, %14
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  ret ptr %8

20:                                               ; preds = %17
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %8, ptr noundef nonnull %14)
  %21 = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %6, !llvm.loop !109
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca double, align 8
  store i8 %2, ptr %18, align 1
  store ptr %0, ptr %19, align 8
  store ptr %1, ptr %20, align 8
  %22 = icmp eq ptr %0, %1
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %69

24:                                               ; preds = %3
  %25 = load ptr, ptr %19, align 8
  %26 = load ptr, ptr %20, align 8
  %.promoted1 = load double, ptr %21, align 8
  %.promoted3 = load ptr, ptr %15, align 8
  %.promoted5 = load ptr, ptr %16, align 8
  %.promoted7 = load ptr, ptr %17, align 8
  %.promoted9 = load ptr, ptr %12, align 8
  %.promoted11 = load ptr, ptr %13, align 8
  %.promoted13 = load ptr, ptr %7, align 8
  %.promoted15 = load ptr, ptr %8, align 8
  %.promoted17 = load ptr, ptr %9, align 8
  %.promoted19 = load ptr, ptr %4, align 8
  %.promoted21 = load ptr, ptr %5, align 8
  %.promoted23 = load ptr, ptr %6, align 8
  %.promoted25 = load ptr, ptr %10, align 1
  %.promoted27 = load ptr, ptr %11, align 1
  br label %27

27:                                               ; preds = %68, %24
  %28 = phi ptr [ %54, %68 ], [ %.promoted27, %24 ]
  %29 = phi ptr [ %55, %68 ], [ %.promoted25, %24 ]
  %30 = phi ptr [ %56, %68 ], [ %.promoted23, %24 ]
  %31 = phi ptr [ %57, %68 ], [ %.promoted21, %24 ]
  %32 = phi ptr [ %58, %68 ], [ %.promoted19, %24 ]
  %33 = phi ptr [ %59, %68 ], [ %.promoted17, %24 ]
  %34 = phi ptr [ %60, %68 ], [ %.promoted15, %24 ]
  %35 = phi ptr [ %61, %68 ], [ %.promoted13, %24 ]
  %36 = phi ptr [ %62, %68 ], [ %.promoted11, %24 ]
  %37 = phi ptr [ %63, %68 ], [ %.promoted9, %24 ]
  %38 = phi ptr [ %64, %68 ], [ %.promoted7, %24 ]
  %39 = phi ptr [ %65, %68 ], [ %.promoted5, %24 ]
  %40 = phi ptr [ %66, %68 ], [ %.promoted3, %24 ]
  %41 = phi double [ %67, %68 ], [ %.promoted1, %24 ]
  %.pn = phi ptr [ %42, %68 ], [ %25, %24 ]
  %42 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %.not = icmp eq ptr %42, %26
  br i1 %.not, label %.loopexit, label %43

43:                                               ; preds = %27
  %44 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef nonnull %42, ptr noundef %25)
  br i1 %44, label %45, label %51

45:                                               ; preds = %43
  %46 = load double, ptr %42, align 8
  %47 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %48 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %25)
  %49 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %42)
  store ptr %47, ptr %14, align 8
  %50 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %48, ptr noundef %49, ptr noundef nonnull %47)
  store double %46, ptr %25, align 8
  br label %53

51:                                               ; preds = %43
  %52 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 undef)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef nonnull %42, i8 undef)
  br label %53

53:                                               ; preds = %51, %45
  %54 = phi ptr [ %28, %51 ], [ %50, %45 ]
  %55 = phi ptr [ %29, %51 ], [ %14, %45 ]
  %56 = phi ptr [ %30, %51 ], [ %47, %45 ]
  %57 = phi ptr [ %31, %51 ], [ %49, %45 ]
  %58 = phi ptr [ %32, %51 ], [ %48, %45 ]
  %59 = phi ptr [ %33, %51 ], [ %47, %45 ]
  %60 = phi ptr [ %34, %51 ], [ %49, %45 ]
  %61 = phi ptr [ %35, %51 ], [ %48, %45 ]
  %62 = phi ptr [ %36, %51 ], [ %49, %45 ]
  %63 = phi ptr [ %37, %51 ], [ %48, %45 ]
  %64 = phi ptr [ %38, %51 ], [ %47, %45 ]
  %65 = phi ptr [ %39, %51 ], [ %42, %45 ]
  %66 = phi ptr [ %40, %51 ], [ %25, %45 ]
  %67 = phi double [ %41, %51 ], [ %46, %45 ]
  br label %68

68:                                               ; preds = %53
  br label %27, !llvm.loop !110

.loopexit:                                        ; preds = %27
  store double %41, ptr %21, align 8
  store ptr %40, ptr %15, align 8
  store ptr %39, ptr %16, align 8
  store ptr %38, ptr %17, align 8
  store ptr %37, ptr %12, align 8
  store ptr %36, ptr %13, align 8
  store ptr %35, ptr %7, align 8
  store ptr %34, ptr %8, align 8
  store ptr %33, ptr %9, align 8
  store ptr %32, ptr %4, align 8
  store ptr %31, ptr %5, align 8
  store ptr %30, ptr %6, align 8
  store ptr %29, ptr %10, align 1
  store ptr %28, ptr %11, align 1
  br label %69

69:                                               ; preds = %.loopexit, %23
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  br label %4

4:                                                ; preds = %8, %3
  %5 = phi ptr [ %9, %8 ], [ %0, %3 ]
  %.not = icmp eq ptr %5, %1
  br i1 %.not, label %10, label %6

6:                                                ; preds = %4
  %7 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 undef)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %5, i8 undef)
  br label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %4, !llvm.loop !111

10:                                               ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %0, i8 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_less_iter", align 1
  %4 = alloca double, align 8
  store i8 %1, ptr %3, align 1
  %5 = load double, ptr %0, align 8
  store double %5, ptr %4, align 8
  br label %6

6:                                                ; preds = %10, %2
  %7 = phi ptr [ %8, %10 ], [ %0, %2 ]
  %8 = getelementptr inbounds i8, ptr %7, i64 -8
  %9 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %8)
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load double, ptr %8, align 8
  store double %11, ptr %7, align 8
  br label %6, !llvm.loop !112

12:                                               ; preds = %6
  %13 = load double, ptr %4, align 8
  store double %13, ptr %7, align 8
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
!54 = !{}
!55 = !{i64 8}
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
