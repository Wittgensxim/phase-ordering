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
  br i1 %.not, label %17, label %7

7:                                                ; preds = %5, %2
  %8 = add nsw i32 %.pre, 10
  store i32 %8, ptr @allocated_results, align 4
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 4
  %11 = call ptr @realloc(ptr noundef %3, i64 noundef %10) #13
  store ptr %11, ptr @results, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load i32, ptr @allocated_results, align 4
  %15 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str, i32 noundef %14)
  call void @exit(i32 noundef -1) #14
  unreachable

16:                                               ; preds = %7
  %.pre1 = load i32, ptr @current_test, align 4
  br label %17

17:                                               ; preds = %16, %5
  %18 = phi i32 [ %.pre1, %16 ], [ %6, %5 ]
  %19 = phi ptr [ %11, %16 ], [ %3, %5 ]
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds [16 x i8], ptr %19, i64 %20
  store double %0, ptr %21, align 8
  %22 = load ptr, ptr @results, align 8
  %23 = getelementptr inbounds [16 x i8], ptr %22, i64 %20
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %1, ptr %24, align 8
  %25 = add nsw i32 %18, 1
  store i32 %25, ptr @current_test, align 4
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
  br label %10

10:                                               ; preds = %25, %5
  %11 = phi i32 [ %26, %25 ], [ 12, %5 ]
  %12 = phi i32 [ %27, %25 ], [ 0, %5 ]
  %13 = load i32, ptr @current_test, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %10
  %16 = load ptr, ptr @results, align 8
  %17 = zext nneg i32 %12 to i64
  %18 = getelementptr inbounds nuw [16 x i8], ptr %16, i64 %17
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %20 = load ptr, ptr %19, align 8
  %21 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #15
  %22 = trunc i64 %21 to i32
  %23 = icmp slt i32 %11, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24, %15
  %26 = phi i32 [ %22, %24 ], [ %11, %15 ]
  %27 = add nuw nsw i32 %12, 1
  br label %10, !llvm.loop !7

28:                                               ; preds = %10
  %29 = add nsw i32 %11, -12
  %30 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.1, i32 noundef %29, ptr noundef nonnull @.str.2)
  %31 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.3, i32 noundef %11, ptr noundef nonnull @.str.2)
  br label %32

32:                                               ; preds = %36, %28
  %33 = phi i32 [ %54, %36 ], [ 0, %28 ]
  %34 = load i32, ptr @current_test, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %32
  %37 = load ptr, ptr @results, align 8
  %38 = zext nneg i32 %33 to i64
  %39 = getelementptr inbounds nuw [16 x i8], ptr %37, i64 %38
  %40 = getelementptr inbounds nuw i8, ptr %39, i64 8
  %41 = load ptr, ptr %40, align 8
  %42 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %41) #15
  %43 = trunc i64 %42 to i32
  %44 = sub i32 %11, %43
  %45 = load ptr, ptr @results, align 8
  %46 = getelementptr inbounds nuw [16 x i8], ptr %45, i64 %38
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 8
  %48 = load ptr, ptr %47, align 8
  %49 = load double, ptr %46, align 8
  %50 = fdiv double %9, %49
  %51 = load double, ptr %45, align 8
  %52 = fdiv double %49, %51
  %53 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.4, i32 noundef %33, i32 noundef %44, ptr noundef nonnull @.str.5, ptr noundef %48, double noundef %49, double noundef %50, double noundef %52)
  %54 = add nuw nsw i32 %33, 1
  br label %32, !llvm.loop !9

55:                                               ; preds = %32
  br label %56

56:                                               ; preds = %60, %55
  %57 = phi double [ %65, %60 ], [ 0.000000e+00, %55 ]
  %58 = phi i32 [ %66, %60 ], [ 0, %55 ]
  %59 = icmp slt i32 %58, %34
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load ptr, ptr @results, align 8
  %62 = zext nneg i32 %58 to i64
  %63 = getelementptr inbounds nuw [16 x i8], ptr %61, i64 %62
  %64 = load double, ptr %63, align 8
  %65 = fadd double %57, %64
  %66 = add nuw nsw i32 %58, 1
  br label %56, !llvm.loop !10

67:                                               ; preds = %56
  %68 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.6, ptr noundef %0, double noundef %57)
  %69 = load i32, ptr @current_test, align 4
  %70 = icmp sgt i32 %69, 1
  br i1 %70, label %71, label %94

71:                                               ; preds = %67
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %94, label %72

72:                                               ; preds = %71
  br label %73

73:                                               ; preds = %78, %72
  %74 = phi double [ %86, %78 ], [ 0.000000e+00, %72 ]
  %75 = phi i32 [ %.pre, %78 ], [ %69, %72 ]
  %76 = phi i32 [ %87, %78 ], [ 1, %72 ]
  %77 = icmp slt i32 %76, %75
  br i1 %77, label %78, label %88

78:                                               ; preds = %73
  %79 = load ptr, ptr @results, align 8
  %80 = zext nneg i32 %76 to i64
  %81 = getelementptr inbounds nuw [16 x i8], ptr %79, i64 %80
  %82 = load double, ptr %81, align 8
  %83 = load double, ptr %79, align 8
  %84 = fdiv double %82, %83
  %85 = call double @log(double noundef %84) #15
  %86 = fadd double %74, %85
  %87 = add nuw nsw i32 %76, 1
  %.pre = load i32, ptr @current_test, align 4
  br label %73, !llvm.loop !11

88:                                               ; preds = %73
  %89 = add nsw i32 %75, -1
  %90 = sitofp i32 %89 to double
  %91 = fdiv double %74, %90
  %92 = call double @exp(double noundef %91) #15
  %93 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.7, ptr noundef %0, double noundef %92)
  br label %94

94:                                               ; preds = %88, %71, %67
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
  br label %3

3:                                                ; preds = %18, %2
  %4 = phi i32 [ %19, %18 ], [ 12, %2 ]
  %5 = phi i32 [ %20, %18 ], [ 0, %2 ]
  %6 = load i32, ptr @current_test, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = load ptr, ptr @results, align 8
  %10 = zext nneg i32 %5 to i64
  %11 = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %10
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %13 = load ptr, ptr %12, align 8
  %14 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #15
  %15 = trunc i64 %14 to i32
  %16 = icmp slt i32 %4, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  br label %18

18:                                               ; preds = %17, %8
  %19 = phi i32 [ %15, %17 ], [ %4, %8 ]
  %20 = add nuw nsw i32 %5, 1
  br label %3, !llvm.loop !12

21:                                               ; preds = %3
  %22 = add nsw i32 %4, -12
  %23 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %22, ptr noundef nonnull @.str.2)
  %24 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %4, ptr noundef nonnull @.str.2)
  br label %25

25:                                               ; preds = %29, %21
  %26 = phi i32 [ %44, %29 ], [ 0, %21 ]
  %27 = load i32, ptr @current_test, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = load ptr, ptr @results, align 8
  %31 = zext nneg i32 %26 to i64
  %32 = getelementptr inbounds nuw [16 x i8], ptr %30, i64 %31
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 8
  %34 = load ptr, ptr %33, align 8
  %35 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %34) #15
  %36 = trunc i64 %35 to i32
  %37 = sub i32 %4, %36
  %38 = load ptr, ptr @results, align 8
  %39 = getelementptr inbounds nuw [16 x i8], ptr %38, i64 %31
  %40 = getelementptr inbounds nuw i8, ptr %39, i64 8
  %41 = load ptr, ptr %40, align 8
  %42 = load double, ptr %39, align 8
  %43 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %26, i32 noundef %37, ptr noundef nonnull @.str.5, ptr noundef %41, double noundef %42)
  %44 = add nuw nsw i32 %26, 1
  br label %25, !llvm.loop !13

45:                                               ; preds = %25
  br label %46

46:                                               ; preds = %50, %45
  %47 = phi double [ %55, %50 ], [ 0.000000e+00, %45 ]
  %48 = phi i32 [ %56, %50 ], [ 0, %45 ]
  %49 = icmp slt i32 %48, %27
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load ptr, ptr @results, align 8
  %52 = zext nneg i32 %48 to i64
  %53 = getelementptr inbounds nuw [16 x i8], ptr %51, i64 %52
  %54 = load double, ptr %53, align 8
  %55 = fadd double %47, %54
  %56 = add nuw nsw i32 %48, 1
  br label %46, !llvm.loop !14

57:                                               ; preds = %46
  %58 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %1, double noundef %47)
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
  %3 = load double, ptr %0, align 8
  %4 = load double, ptr %1, align 8
  %5 = fcmp olt double %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  br label %11

7:                                                ; preds = %2
  %8 = fcmp ogt double %3, %4
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  br label %11

10:                                               ; preds = %7
  br label %11

11:                                               ; preds = %10, %9, %6
  %12 = phi i32 [ 0, %10 ], [ 1, %9 ], [ -1, %6 ]
  ret i32 %12
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
  store ptr %1, ptr %4, align 8
  store ptr %2, ptr %5, align 8
  %9 = ptrtoint ptr %1 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = icmp sgt i64 %11, 8
  br i1 %12, label %13, label %47

13:                                               ; preds = %3
  %14 = load double, ptr %0, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  br label %15

15:                                               ; preds = %37, %13
  %16 = phi ptr [ %41, %37 ], [ %0, %13 ]
  %17 = phi ptr [ %20, %37 ], [ %1, %13 ]
  br label %18

18:                                               ; preds = %23, %15
  %19 = phi ptr [ %20, %23 ], [ %17, %15 ]
  %20 = getelementptr inbounds i8, ptr %19, i64 -8
  store ptr %20, ptr %7, align 8
  %21 = load double, ptr %20, align 8
  %22 = call noundef zeroext i1 %2(double noundef %14, double noundef %21)
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %18, !llvm.loop !15

24:                                               ; preds = %18
  %25 = icmp ult ptr %16, %20
  br i1 %25, label %27, label %26

26:                                               ; preds = %24
  br label %42

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %32, %27
  %29 = phi ptr [ %33, %32 ], [ %16, %27 ]
  %30 = load double, ptr %29, align 8
  %31 = call noundef zeroext i1 %2(double noundef %30, double noundef %14)
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr %33, ptr %6, align 8
  br label %28, !llvm.loop !16

34:                                               ; preds = %28
  %35 = icmp ult ptr %29, %20
  br i1 %35, label %37, label %36

36:                                               ; preds = %34
  br label %42

37:                                               ; preds = %34
  %38 = load double, ptr %20, align 8
  store double %38, ptr %8, align 8
  %39 = load double, ptr %29, align 8
  store double %39, ptr %20, align 8
  %40 = load double, ptr %8, align 8
  %41 = load ptr, ptr %6, align 8
  store double %40, ptr %41, align 8
  br label %15, !llvm.loop !17

42:                                               ; preds = %36, %26
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %0, ptr noundef %19, ptr noundef %2)
  %43 = load ptr, ptr %7, align 8
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 8
  %45 = load ptr, ptr %4, align 8
  %46 = load ptr, ptr %5, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %44, ptr noundef %45, ptr noundef %46)
  br label %47

47:                                               ; preds = %42, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca double, align 8
  store ptr %1, ptr %4, align 8
  store ptr %2, ptr %5, align 8
  %9 = ptrtoint ptr %1 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = icmp sgt i64 %11, 8
  br i1 %12, label %13, label %47

13:                                               ; preds = %3
  %14 = load double, ptr %0, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  br label %15

15:                                               ; preds = %37, %13
  %16 = phi ptr [ %41, %37 ], [ %0, %13 ]
  %17 = phi ptr [ %20, %37 ], [ %1, %13 ]
  br label %18

18:                                               ; preds = %23, %15
  %19 = phi ptr [ %20, %23 ], [ %17, %15 ]
  %20 = getelementptr inbounds i8, ptr %19, i64 -8
  store ptr %20, ptr %7, align 8
  %21 = load double, ptr %20, align 8
  %22 = call noundef zeroext i1 %2(double noundef %14, double noundef %21)
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %18, !llvm.loop !18

24:                                               ; preds = %18
  %25 = icmp ult ptr %16, %20
  br i1 %25, label %27, label %26

26:                                               ; preds = %24
  br label %42

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %32, %27
  %29 = phi ptr [ %33, %32 ], [ %16, %27 ]
  %30 = load double, ptr %29, align 8
  %31 = call noundef zeroext i1 %2(double noundef %30, double noundef %14)
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr %33, ptr %6, align 8
  br label %28, !llvm.loop !19

34:                                               ; preds = %28
  %35 = icmp ult ptr %29, %20
  br i1 %35, label %37, label %36

36:                                               ; preds = %34
  br label %42

37:                                               ; preds = %34
  %38 = load double, ptr %20, align 8
  store double %38, ptr %8, align 8
  %39 = load double, ptr %29, align 8
  store double %39, ptr %20, align 8
  %40 = load double, ptr %8, align 8
  %41 = load ptr, ptr %6, align 8
  store double %40, ptr %41, align 8
  br label %15, !llvm.loop !20

42:                                               ; preds = %36, %26
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %0, ptr noundef %19, ptr noundef %2)
  %43 = load ptr, ptr %7, align 8
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 8
  %45 = load ptr, ptr %4, align 8
  %46 = load ptr, ptr %5, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %44, ptr noundef %45, ptr noundef %46)
  br label %47

47:                                               ; preds = %42, %3
  ret void
}

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) #6 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = icmp sgt i32 %0, 1
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %10 = load ptr, ptr %9, align 8
  %11 = call i32 @atoi(ptr noundef %10)
  br label %13

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %12, %8
  %14 = phi i32 [ %11, %8 ], [ 300, %12 ]
  %15 = icmp sgt i32 %0, 2
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %18 = load ptr, ptr %17, align 8
  %19 = call i32 @atoi(ptr noundef %18)
  br label %21

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20, %16
  %22 = phi i32 [ %19, %16 ], [ 10000, %20 ]
  store i32 %22, ptr %4, align 4
  %23 = add nsw i32 %22, 123
  call void @srand(i32 noundef %23)
  %24 = sext i32 %22 to i64
  %25 = icmp slt i32 %22, 0
  %26 = shl nsw i64 %24, 3
  %27 = select i1 %25, i64 -1, i64 %26
  %28 = call noalias noundef nonnull ptr @_Znay(i64 noundef %27) #16
  store ptr %28, ptr %5, align 8
  br label %29

29:                                               ; preds = %32, %21
  %30 = phi i32 [ %37, %32 ], [ 0, %21 ]
  %31 = icmp slt i32 %30, %22
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = call i32 @rand()
  %34 = sitofp i32 %33 to double
  %35 = zext nneg i32 %30 to i64
  %36 = getelementptr inbounds nuw [8 x i8], ptr %28, i64 %35
  store double %34, ptr %36, align 8
  %37 = add nuw nsw i32 %30, 1
  br label %29, !llvm.loop !21

38:                                               ; preds = %29
  %39 = call noalias noundef nonnull ptr @_Znay(i64 noundef %27) #16
  store ptr %39, ptr %6, align 8
  br label %40

40:                                               ; preds = %44, %38
  %storemerge = phi i32 [ 0, %38 ], [ %53, %44 ]
  %41 = phi i32 [ %22, %38 ], [ %49, %44 ]
  %42 = phi ptr [ %39, %38 ], [ %48, %44 ]
  store i32 %storemerge, ptr %3, align 4
  %43 = icmp slt i32 %storemerge, %14
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = sext i32 %41 to i64
  %46 = getelementptr inbounds [8 x i8], ptr %28, i64 %45
  %47 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef nonnull %28, ptr noundef nonnull %46, ptr noundef %42)
  %48 = load ptr, ptr %6, align 8
  %49 = load i32, ptr %4, align 4
  %50 = sext i32 %49 to i64
  call void @qsort(ptr noundef %48, i64 noundef %50, i64 noundef 8, ptr noundef nonnull @_Z19less_than_function1PKvS0_)
  %51 = getelementptr inbounds [8 x i8], ptr %48, i64 %50
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %48, ptr noundef %51)
  %52 = load i32, ptr %3, align 4
  %53 = add nsw i32 %52, 1
  br label %40, !llvm.loop !22

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %59, %54
  %storemerge1 = phi i32 [ 0, %54 ], [ %68, %59 ]
  %56 = phi i32 [ %41, %54 ], [ %64, %59 ]
  %57 = phi ptr [ %42, %54 ], [ %63, %59 ]
  store i32 %storemerge1, ptr %3, align 4
  %58 = icmp slt i32 %storemerge1, %14
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = sext i32 %56 to i64
  %61 = getelementptr inbounds [8 x i8], ptr %28, i64 %60
  %62 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef nonnull %28, ptr noundef nonnull %61, ptr noundef %57)
  %63 = load ptr, ptr %6, align 8
  %64 = load i32, ptr %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [8 x i8], ptr %63, i64 %65
  call void @_Z18quicksort_functionPdS_PFbddE(ptr noundef %63, ptr noundef %66, ptr noundef nonnull @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %63, ptr noundef %66)
  %67 = load i32, ptr %3, align 4
  %68 = add nsw i32 %67, 1
  br label %55, !llvm.loop !23

69:                                               ; preds = %55
  br label %70

70:                                               ; preds = %74, %69
  %storemerge2 = phi i32 [ 0, %69 ], [ %83, %74 ]
  %71 = phi i32 [ %56, %69 ], [ %79, %74 ]
  %72 = phi ptr [ %57, %69 ], [ %78, %74 ]
  store i32 %storemerge2, ptr %3, align 4
  %73 = icmp slt i32 %storemerge2, %14
  br i1 %73, label %74, label %84

74:                                               ; preds = %70
  %75 = sext i32 %71 to i64
  %76 = getelementptr inbounds [8 x i8], ptr %28, i64 %75
  %77 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef nonnull %28, ptr noundef nonnull %76, ptr noundef %72)
  %78 = load ptr, ptr %6, align 8
  %79 = load i32, ptr %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [8 x i8], ptr %78, i64 %80
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %78, ptr noundef %81, ptr noundef nonnull @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %78, ptr noundef %81)
  %82 = load i32, ptr %3, align 4
  %83 = add nsw i32 %82, 1
  br label %70, !llvm.loop !24

84:                                               ; preds = %70
  br label %85

85:                                               ; preds = %89, %84
  %storemerge3 = phi i32 [ 0, %84 ], [ %98, %89 ]
  %86 = phi i32 [ %71, %84 ], [ %94, %89 ]
  %87 = phi ptr [ %72, %84 ], [ %93, %89 ]
  store i32 %storemerge3, ptr %3, align 4
  %88 = icmp slt i32 %storemerge3, %14
  br i1 %88, label %89, label %99

89:                                               ; preds = %85
  %90 = sext i32 %86 to i64
  %91 = getelementptr inbounds [8 x i8], ptr %28, i64 %90
  %92 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef nonnull %28, ptr noundef nonnull %91, ptr noundef %87)
  %93 = load ptr, ptr %6, align 8
  %94 = load i32, ptr %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [8 x i8], ptr %93, i64 %95
  call void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef %93, ptr noundef %96)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %93, ptr noundef %96)
  %97 = load i32, ptr %3, align 4
  %98 = add nsw i32 %97, 1
  br label %85, !llvm.loop !25

99:                                               ; preds = %85
  br label %100

100:                                              ; preds = %104, %99
  %storemerge4 = phi i32 [ 0, %99 ], [ %113, %104 ]
  %101 = phi i32 [ %86, %99 ], [ %109, %104 ]
  %102 = phi ptr [ %87, %99 ], [ %108, %104 ]
  store i32 %storemerge4, ptr %3, align 4
  %103 = icmp slt i32 %storemerge4, %14
  br i1 %103, label %104, label %114

104:                                              ; preds = %100
  %105 = sext i32 %101 to i64
  %106 = getelementptr inbounds [8 x i8], ptr %28, i64 %105
  %107 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef nonnull %28, ptr noundef nonnull %106, ptr noundef %102)
  %108 = load ptr, ptr %6, align 8
  %109 = load i32, ptr %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [8 x i8], ptr %108, i64 %110
  call void @_ZSt4sortIPdPFbddEEvT_S3_T0_(ptr noundef %108, ptr noundef %111, ptr noundef nonnull @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %108, ptr noundef %111)
  %112 = load i32, ptr %3, align 4
  %113 = add nsw i32 %112, 1
  br label %100, !llvm.loop !26

114:                                              ; preds = %100
  br label %115

115:                                              ; preds = %119, %114
  %storemerge5 = phi i32 [ 0, %114 ], [ %128, %119 ]
  %116 = phi i32 [ %101, %114 ], [ %124, %119 ]
  %117 = phi ptr [ %102, %114 ], [ %123, %119 ]
  store i32 %storemerge5, ptr %3, align 4
  %118 = icmp slt i32 %storemerge5, %14
  br i1 %118, label %119, label %129

119:                                              ; preds = %115
  %120 = sext i32 %116 to i64
  %121 = getelementptr inbounds [8 x i8], ptr %28, i64 %120
  %122 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef nonnull %28, ptr noundef nonnull %121, ptr noundef %117)
  %123 = load ptr, ptr %6, align 8
  %124 = load i32, ptr %4, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [8 x i8], ptr %123, i64 %125
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %123, ptr noundef %126, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %123, ptr noundef %126)
  %127 = load i32, ptr %3, align 4
  %128 = add nsw i32 %127, 1
  br label %115, !llvm.loop !27

129:                                              ; preds = %115
  br label %130

130:                                              ; preds = %135, %129
  %storemerge6 = phi i32 [ 0, %129 ], [ %146, %135 ]
  %131 = phi i32 [ %116, %129 ], [ %139, %135 ]
  %132 = phi ptr [ %28, %129 ], [ %142, %135 ]
  %133 = phi ptr [ %117, %129 ], [ %138, %135 ]
  store i32 %storemerge6, ptr %3, align 4
  %134 = icmp slt i32 %storemerge6, %14
  br i1 %134, label %135, label %147

135:                                              ; preds = %130
  %136 = sext i32 %131 to i64
  %137 = getelementptr inbounds [8 x i8], ptr %133, i64 %136
  call void @_ZSt4sortIPd17less_than_functorEvT_S2_T0_(ptr noundef %133, ptr noundef %137, i8 undef)
  %138 = load ptr, ptr %6, align 8
  %139 = load i32, ptr %4, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [8 x i8], ptr %138, i64 %140
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %138, ptr noundef %141)
  %142 = load ptr, ptr %5, align 8
  %143 = getelementptr inbounds [8 x i8], ptr %142, i64 %140
  %144 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %142, ptr noundef %143, ptr noundef %138)
  %145 = load i32, ptr %3, align 4
  %146 = add nsw i32 %145, 1
  br label %130, !llvm.loop !28

147:                                              ; preds = %130
  br label %148

148:                                              ; preds = %152, %147
  %storemerge7 = phi i32 [ 0, %147 ], [ %161, %152 ]
  %149 = phi i32 [ %131, %147 ], [ %157, %152 ]
  %150 = phi ptr [ %133, %147 ], [ %156, %152 ]
  store i32 %storemerge7, ptr %3, align 4
  %151 = icmp slt i32 %storemerge7, %14
  br i1 %151, label %152, label %162

152:                                              ; preds = %148
  %153 = sext i32 %149 to i64
  %154 = getelementptr inbounds [8 x i8], ptr %132, i64 %153
  %155 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %132, ptr noundef %154, ptr noundef %150)
  %156 = load ptr, ptr %6, align 8
  %157 = load i32, ptr %4, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [8 x i8], ptr %156, i64 %158
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %156, ptr noundef %159, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %156, ptr noundef %159)
  %160 = load i32, ptr %3, align 4
  %161 = add nsw i32 %160, 1
  br label %148, !llvm.loop !29

162:                                              ; preds = %148
  br label %163

163:                                              ; preds = %167, %162
  %storemerge8 = phi i32 [ 0, %162 ], [ %176, %167 ]
  %164 = phi i32 [ %149, %162 ], [ %172, %167 ]
  %165 = phi ptr [ %150, %162 ], [ %171, %167 ]
  store i32 %storemerge8, ptr %3, align 4
  %166 = icmp slt i32 %storemerge8, %14
  br i1 %166, label %167, label %177

167:                                              ; preds = %163
  %168 = sext i32 %164 to i64
  %169 = getelementptr inbounds [8 x i8], ptr %132, i64 %168
  %170 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %132, ptr noundef %169, ptr noundef %165)
  %171 = load ptr, ptr %6, align 8
  %172 = load i32, ptr %4, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [8 x i8], ptr %171, i64 %173
  call void @_ZSt4sortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %171, ptr noundef %174, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %171, ptr noundef %174)
  %175 = load i32, ptr %3, align 4
  %176 = add nsw i32 %175, 1
  br label %163, !llvm.loop !30

177:                                              ; preds = %163
  br label %178

178:                                              ; preds = %182, %177
  %storemerge9 = phi i32 [ 0, %177 ], [ %191, %182 ]
  %179 = phi i32 [ %164, %177 ], [ %187, %182 ]
  %180 = phi ptr [ %165, %177 ], [ %186, %182 ]
  store i32 %storemerge9, ptr %3, align 4
  %181 = icmp slt i32 %storemerge9, %14
  br i1 %181, label %182, label %192

182:                                              ; preds = %178
  %183 = sext i32 %179 to i64
  %184 = getelementptr inbounds [8 x i8], ptr %132, i64 %183
  %185 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %132, ptr noundef %184, ptr noundef %180)
  %186 = load ptr, ptr %6, align 8
  %187 = load i32, ptr %4, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [8 x i8], ptr %186, i64 %188
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %186, ptr noundef %189, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %186, ptr noundef %189)
  %190 = load i32, ptr %3, align 4
  %191 = add nsw i32 %190, 1
  br label %178, !llvm.loop !31

192:                                              ; preds = %178
  br label %193

193:                                              ; preds = %197, %192
  %storemerge10 = phi i32 [ 0, %192 ], [ %206, %197 ]
  %194 = phi i32 [ %179, %192 ], [ %202, %197 ]
  %195 = phi ptr [ %180, %192 ], [ %201, %197 ]
  store i32 %storemerge10, ptr %3, align 4
  %196 = icmp slt i32 %storemerge10, %14
  br i1 %196, label %197, label %207

197:                                              ; preds = %193
  %198 = sext i32 %194 to i64
  %199 = getelementptr inbounds [8 x i8], ptr %132, i64 %198
  %200 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %132, ptr noundef %199, ptr noundef %195)
  %201 = load ptr, ptr %6, align 8
  %202 = load i32, ptr %4, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [8 x i8], ptr %201, i64 %203
  call void @_ZSt4sortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %201, ptr noundef %204, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %201, ptr noundef %204)
  %205 = load i32, ptr %3, align 4
  %206 = add nsw i32 %205, 1
  br label %193, !llvm.loop !32

207:                                              ; preds = %193
  br label %208

208:                                              ; preds = %212, %207
  %storemerge11 = phi i32 [ 0, %207 ], [ %221, %212 ]
  %209 = phi i32 [ %194, %207 ], [ %217, %212 ]
  %210 = phi ptr [ %195, %207 ], [ %216, %212 ]
  store i32 %storemerge11, ptr %3, align 4
  %211 = icmp slt i32 %storemerge11, %14
  br i1 %211, label %212, label %222

212:                                              ; preds = %208
  %213 = sext i32 %209 to i64
  %214 = getelementptr inbounds [8 x i8], ptr %132, i64 %213
  %215 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %132, ptr noundef %214, ptr noundef %210)
  %216 = load ptr, ptr %6, align 8
  %217 = load i32, ptr %4, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [8 x i8], ptr %216, i64 %218
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %216, ptr noundef %219)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %216, ptr noundef %219)
  %220 = load i32, ptr %3, align 4
  %221 = add nsw i32 %220, 1
  br label %208, !llvm.loop !33

222:                                              ; preds = %208
  br label %223

223:                                              ; preds = %227, %222
  %storemerge12 = phi i32 [ 0, %222 ], [ %236, %227 ]
  %224 = phi i32 [ %209, %222 ], [ %232, %227 ]
  %225 = phi ptr [ %210, %222 ], [ %231, %227 ]
  store i32 %storemerge12, ptr %3, align 4
  %226 = icmp slt i32 %storemerge12, %14
  br i1 %226, label %227, label %237

227:                                              ; preds = %223
  %228 = sext i32 %224 to i64
  %229 = getelementptr inbounds [8 x i8], ptr %132, i64 %228
  %230 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %132, ptr noundef %229, ptr noundef %225)
  %231 = load ptr, ptr %6, align 8
  %232 = load i32, ptr %4, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [8 x i8], ptr %231, i64 %233
  call void @_ZSt4sortIPdEvT_S1_(ptr noundef %231, ptr noundef %234)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %231, ptr noundef %234)
  %235 = load i32, ptr %3, align 4
  %236 = add nsw i32 %235, 1
  br label %223, !llvm.loop !34

237:                                              ; preds = %223
  %238 = icmp eq ptr %225, null
  br i1 %238, label %240, label %239

239:                                              ; preds = %237
  call void @_ZdaPv(ptr noundef nonnull %225) #17
  %.pre = load ptr, ptr %5, align 8
  br label %240

240:                                              ; preds = %239, %237
  %241 = phi ptr [ %.pre, %239 ], [ %132, %237 ]
  %242 = icmp eq ptr %241, null
  br i1 %242, label %244, label %243

243:                                              ; preds = %240
  call void @_ZdaPv(ptr noundef nonnull %241) #17
  br label %244

244:                                              ; preds = %243, %240
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
  br i1 %.not, label %15, label %6

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

15:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef %0, ptr noundef %1) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca double, align 8
  store ptr %1, ptr %3, align 8
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = icmp sgt i64 %9, 8
  br i1 %10, label %11, label %44

11:                                               ; preds = %2
  %12 = load double, ptr %0, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  br label %13

13:                                               ; preds = %35, %11
  %14 = phi ptr [ %39, %35 ], [ %0, %11 ]
  %15 = phi ptr [ %18, %35 ], [ %1, %11 ]
  br label %16

16:                                               ; preds = %21, %13
  %17 = phi ptr [ %18, %21 ], [ %15, %13 ]
  %18 = getelementptr inbounds i8, ptr %17, i64 -8
  store ptr %18, ptr %5, align 8
  %19 = load double, ptr %18, align 8
  %20 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %12, double noundef %19)
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %16, !llvm.loop !36

22:                                               ; preds = %16
  %23 = icmp ult ptr %14, %18
  br i1 %23, label %25, label %24

24:                                               ; preds = %22
  br label %40

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %30, %25
  %27 = phi ptr [ %31, %30 ], [ %14, %25 ]
  %28 = load double, ptr %27, align 8
  %29 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %28, double noundef %12)
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr %31, ptr %4, align 8
  br label %26, !llvm.loop !37

32:                                               ; preds = %26
  %33 = icmp ult ptr %27, %18
  br i1 %33, label %35, label %34

34:                                               ; preds = %32
  br label %40

35:                                               ; preds = %32
  %36 = load double, ptr %18, align 8
  store double %36, ptr %6, align 8
  %37 = load double, ptr %27, align 8
  store double %37, ptr %18, align 8
  %38 = load double, ptr %6, align 8
  %39 = load ptr, ptr %4, align 8
  store double %38, ptr %39, align 8
  br label %13, !llvm.loop !38

40:                                               ; preds = %34, %24
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %0, ptr noundef %17, ptr noundef nonnull @_Z19less_than_function2dd)
  %41 = load ptr, ptr %5, align 8
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 8
  %43 = load ptr, ptr %3, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %42, ptr noundef %43, ptr noundef nonnull @_Z19less_than_function2dd)
  br label %44

44:                                               ; preds = %40, %2
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
  %10 = alloca double, align 8
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = icmp sgt i64 %13, 8
  br i1 %14, label %15, label %47

15:                                               ; preds = %3
  %16 = load double, ptr %0, align 8
  store double %16, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  br label %17

17:                                               ; preds = %37, %15
  %18 = phi ptr [ %21, %37 ], [ %1, %15 ]
  br label %19

19:                                               ; preds = %23, %17
  %20 = phi ptr [ %21, %23 ], [ %18, %17 ]
  %21 = getelementptr inbounds i8, ptr %20, i64 -8
  store ptr %21, ptr %9, align 8
  %22 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %21)
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %19, !llvm.loop !39

24:                                               ; preds = %19
  %25 = load ptr, ptr %8, align 8
  %26 = icmp ult ptr %25, %21
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  br label %42

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %32, %28
  %30 = phi ptr [ %33, %32 ], [ %25, %28 ]
  %31 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = getelementptr inbounds nuw i8, ptr %30, i64 8
  store ptr %33, ptr %8, align 8
  br label %29, !llvm.loop !40

34:                                               ; preds = %29
  %35 = icmp ult ptr %30, %21
  br i1 %35, label %37, label %36

36:                                               ; preds = %34
  br label %42

37:                                               ; preds = %34
  %38 = load double, ptr %21, align 8
  store double %38, ptr %10, align 8
  %39 = load double, ptr %30, align 8
  store double %39, ptr %21, align 8
  %40 = load double, ptr %10, align 8
  %41 = load ptr, ptr %8, align 8
  store double %40, ptr %41, align 8
  br label %17, !llvm.loop !41

42:                                               ; preds = %36, %27
  %43 = load ptr, ptr %5, align 8
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %43, ptr noundef %20, i8 undef)
  %44 = load ptr, ptr %9, align 8
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 8
  %46 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef nonnull %45, ptr noundef %46, i8 undef)
  br label %47

47:                                               ; preds = %42, %3
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
  %10 = alloca double, align 8
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = icmp sgt i64 %13, 8
  br i1 %14, label %15, label %47

15:                                               ; preds = %3
  %16 = load double, ptr %0, align 8
  store double %16, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  br label %17

17:                                               ; preds = %37, %15
  %18 = phi ptr [ %21, %37 ], [ %1, %15 ]
  br label %19

19:                                               ; preds = %23, %17
  %20 = phi ptr [ %21, %23 ], [ %18, %17 ]
  %21 = getelementptr inbounds i8, ptr %20, i64 -8
  store ptr %21, ptr %9, align 8
  %22 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %21)
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %19, !llvm.loop !42

24:                                               ; preds = %19
  %25 = load ptr, ptr %8, align 8
  %26 = icmp ult ptr %25, %21
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  br label %42

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %32, %28
  %30 = phi ptr [ %33, %32 ], [ %25, %28 ]
  %31 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = getelementptr inbounds nuw i8, ptr %30, i64 8
  store ptr %33, ptr %8, align 8
  br label %29, !llvm.loop !43

34:                                               ; preds = %29
  %35 = icmp ult ptr %30, %21
  br i1 %35, label %37, label %36

36:                                               ; preds = %34
  br label %42

37:                                               ; preds = %34
  %38 = load double, ptr %21, align 8
  store double %38, ptr %10, align 8
  %39 = load double, ptr %30, align 8
  store double %39, ptr %21, align 8
  %40 = load double, ptr %10, align 8
  %41 = load ptr, ptr %8, align 8
  store double %40, ptr %41, align 8
  br label %17, !llvm.loop !44

42:                                               ; preds = %36, %27
  %43 = load ptr, ptr %5, align 8
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %43, ptr noundef %20, i8 undef)
  %44 = load ptr, ptr %9, align 8
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 8
  %46 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef nonnull %45, ptr noundef %46, i8 undef)
  br label %47

47:                                               ; preds = %42, %3
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
  %10 = alloca double, align 8
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = icmp sgt i64 %13, 8
  br i1 %14, label %15, label %47

15:                                               ; preds = %3
  %16 = load double, ptr %0, align 8
  store double %16, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  br label %17

17:                                               ; preds = %37, %15
  %18 = phi ptr [ %21, %37 ], [ %1, %15 ]
  br label %19

19:                                               ; preds = %23, %17
  %20 = phi ptr [ %21, %23 ], [ %18, %17 ]
  %21 = getelementptr inbounds i8, ptr %20, i64 -8
  store ptr %21, ptr %9, align 8
  %22 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %21)
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %19, !llvm.loop !45

24:                                               ; preds = %19
  %25 = load ptr, ptr %8, align 8
  %26 = icmp ult ptr %25, %21
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  br label %42

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %32, %28
  %30 = phi ptr [ %33, %32 ], [ %25, %28 ]
  %31 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = getelementptr inbounds nuw i8, ptr %30, i64 8
  store ptr %33, ptr %8, align 8
  br label %29, !llvm.loop !46

34:                                               ; preds = %29
  %35 = icmp ult ptr %30, %21
  br i1 %35, label %37, label %36

36:                                               ; preds = %34
  br label %42

37:                                               ; preds = %34
  %38 = load double, ptr %21, align 8
  store double %38, ptr %10, align 8
  %39 = load double, ptr %30, align 8
  store double %39, ptr %21, align 8
  %40 = load double, ptr %10, align 8
  %41 = load ptr, ptr %8, align 8
  store double %40, ptr %41, align 8
  br label %17, !llvm.loop !47

42:                                               ; preds = %36, %27
  %43 = load ptr, ptr %5, align 8
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %43, ptr noundef %20, i8 undef)
  %44 = load ptr, ptr %9, align 8
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 8
  %46 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef nonnull %45, ptr noundef %46, i8 undef)
  br label %47

47:                                               ; preds = %42, %3
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
  store ptr %1, ptr %3, align 8
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = icmp sgt i64 %9, 8
  br i1 %10, label %11, label %44

11:                                               ; preds = %2
  %12 = load double, ptr %0, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  br label %13

13:                                               ; preds = %36, %11
  %14 = phi double [ %38, %36 ], [ %12, %11 ]
  %15 = phi ptr [ %39, %36 ], [ %0, %11 ]
  %16 = phi ptr [ %19, %36 ], [ %1, %11 ]
  br label %17

17:                                               ; preds = %22, %13
  %18 = phi ptr [ %19, %22 ], [ %16, %13 ]
  %19 = getelementptr inbounds i8, ptr %18, i64 -8
  store ptr %19, ptr %5, align 8
  %20 = load double, ptr %19, align 8
  %21 = fcmp olt double %12, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %17, !llvm.loop !48

23:                                               ; preds = %17
  %24 = icmp ult ptr %15, %19
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  br label %40

26:                                               ; preds = %23
  br label %27

27:                                               ; preds = %31, %26
  %28 = phi double [ %.pre, %31 ], [ %14, %26 ]
  %29 = phi ptr [ %32, %31 ], [ %15, %26 ]
  %30 = fcmp olt double %28, %12
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr %32, ptr %4, align 8
  %.pre = load double, ptr %32, align 8
  br label %27, !llvm.loop !49

33:                                               ; preds = %27
  %34 = icmp ult ptr %29, %19
  br i1 %34, label %36, label %35

35:                                               ; preds = %33
  br label %40

36:                                               ; preds = %33
  store double %20, ptr %6, align 8
  %37 = load double, ptr %29, align 8
  store double %37, ptr %19, align 8
  %38 = load double, ptr %6, align 8
  %39 = load ptr, ptr %4, align 8
  store double %38, ptr %39, align 8
  br label %13, !llvm.loop !50

40:                                               ; preds = %35, %25
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef nonnull %0, ptr noundef %18)
  %41 = load ptr, ptr %5, align 8
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 8
  %43 = load ptr, ptr %3, align 8
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef nonnull %42, ptr noundef %43)
  br label %44

44:                                               ; preds = %40, %2
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
  br label %17

10:                                               ; preds = %3
  %11 = icmp eq i64 %6, 8
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = load double, ptr %0, align 8
  store double %13, ptr %2, align 8
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %15

15:                                               ; preds = %12, %10
  %16 = phi ptr [ %14, %12 ], [ %2, %10 ]
  br label %17

17:                                               ; preds = %15, %8
  %18 = phi ptr [ %16, %15 ], [ %9, %8 ]
  ret ptr %18
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #10

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %5 = inttoptr i64 %2 to ptr
  store ptr %5, ptr %4, align 8
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %14, label %6

6:                                                ; preds = %3
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %10)
  %12 = shl nsw i64 %11, 1
  %13 = load i64, ptr %4, align 8
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %12, i64 %13)
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %13)
  br label %14

14:                                               ; preds = %6, %3
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
  %6 = inttoptr i64 %3 to ptr
  store ptr %6, ptr %5, align 8
  br label %7

7:                                                ; preds = %18, %4
  %8 = phi i64 [ %19, %18 ], [ %2, %4 ]
  %9 = phi ptr [ %21, %18 ], [ %1, %4 ]
  %10 = ptrtoint ptr %9 to i64
  %11 = ptrtoint ptr %0 to i64
  %12 = sub i64 %10, %11
  %13 = icmp sgt i64 %12, 128
  br i1 %13, label %14, label %22

14:                                               ; preds = %7
  %15 = icmp eq i64 %8, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = load i64, ptr %5, align 8
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %9, ptr noundef %9, i64 %17)
  br label %22

18:                                               ; preds = %14
  %19 = add nsw i64 %8, -1
  %20 = load i64, ptr %5, align 8
  %21 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %9, i64 %20)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %21, ptr noundef %9, i64 noundef %19, i64 %20)
  br label %7, !llvm.loop !51

22:                                               ; preds = %16, %7
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
  %5 = inttoptr i64 %2 to ptr
  store ptr %5, ptr %4, align 8
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = icmp sgt i64 %8, 128
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %12 = load i64, ptr %4, align 8
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef nonnull %11, i64 %12)
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef nonnull %11, ptr noundef %1, i64 %12)
  br label %15

13:                                               ; preds = %3
  %14 = load i64, ptr %4, align 8
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %14)
  br label %15

15:                                               ; preds = %13, %10
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
  %5 = inttoptr i64 %2 to ptr
  store ptr %5, ptr %4, align 8
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = sdiv i64 %9, 2
  %11 = getelementptr inbounds [8 x i8], ptr %0, i64 %10
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = getelementptr inbounds i8, ptr %1, i64 -8
  %14 = load i64, ptr %4, align 8
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %11, ptr noundef nonnull %13, i64 %14)
  %15 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_S7_T0_(ptr noundef nonnull %12, ptr noundef %1, ptr noundef %0, i64 %14)
  ret ptr %15
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = inttoptr i64 %3 to ptr
  store ptr %8, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %9

9:                                                ; preds = %15, %4
  %storemerge = phi ptr [ %1, %4 ], [ %16, %15 ]
  store ptr %storemerge, ptr %7, align 8
  %10 = icmp ult ptr %storemerge, %2
  br i1 %10, label %11, label %17

11:                                               ; preds = %9
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %storemerge, ptr noundef %0)
  %.pre = load ptr, ptr %7, align 8
  br i1 %12, label %13, label %15

13:                                               ; preds = %11
  %14 = load ptr, ptr %6, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %14, ptr noundef %.pre, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %15

15:                                               ; preds = %13, %11
  %16 = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  br label %9, !llvm.loop !52

17:                                               ; preds = %9
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 comdat {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  br label %5

5:                                                ; preds = %11, %3
  %6 = phi ptr [ %12, %11 ], [ %1, %3 ]
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = icmp sgt i64 %9, 8
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = getelementptr inbounds i8, ptr %6, i64 -8
  %13 = load ptr, ptr %4, align 8, !nonnull !53, !align !54
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %12, ptr noundef nonnull align 8 dereferenceable(8) %13)
  br label %5, !llvm.loop !55

14:                                               ; preds = %5
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 3
  %8 = icmp slt i64 %7, 2
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %22

10:                                               ; preds = %3
  %11 = add nsw i64 %7, -2
  %12 = sdiv i64 %11, 2
  br label %13

13:                                               ; preds = %20, %10
  %14 = phi i64 [ %21, %20 ], [ %12, %10 ]
  %15 = getelementptr inbounds [8 x i8], ptr %0, i64 %14
  %16 = load double, ptr %15, align 8
  %17 = load i64, ptr %2, align 8
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %14, i64 noundef %7, double noundef %16, i64 %17)
  %18 = icmp eq i64 %14, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %22

20:                                               ; preds = %13
  %21 = add nsw i64 %14, -1
  br label %13, !llvm.loop !56

22:                                               ; preds = %19, %9
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
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val", align 8
  %11 = inttoptr i64 %4 to ptr
  store ptr %11, ptr %6, align 8
  store ptr %0, ptr %7, align 8
  store i64 %1, ptr %8, align 8
  store i64 %1, ptr %9, align 8
  br label %12

12:                                               ; preds = %27, %5
  %13 = phi ptr [ %29, %27 ], [ %0, %5 ]
  %14 = phi i64 [ %28, %27 ], [ %1, %5 ]
  %15 = add nsw i64 %2, -1
  %16 = sdiv i64 %15, 2
  %17 = icmp slt i64 %14, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %12
  %19 = shl i64 %14, 1
  %20 = add i64 %19, 2
  store i64 %20, ptr %9, align 8
  %21 = getelementptr inbounds [8 x i8], ptr %13, i64 %20
  %22 = getelementptr [8 x i8], ptr %13, i64 %19
  %23 = getelementptr i8, ptr %22, i64 8
  %24 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %21, ptr noundef %23)
  %.pre = load i64, ptr %9, align 8
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = add nsw i64 %.pre, -1
  store i64 %26, ptr %9, align 8
  br label %27

27:                                               ; preds = %25, %18
  %28 = phi i64 [ %26, %25 ], [ %.pre, %18 ]
  %29 = load ptr, ptr %7, align 8
  %30 = getelementptr inbounds [8 x i8], ptr %29, i64 %28
  %31 = load double, ptr %30, align 8
  %32 = load i64, ptr %8, align 8
  %33 = getelementptr inbounds [8 x i8], ptr %29, i64 %32
  store double %31, ptr %33, align 8
  store i64 %28, ptr %8, align 8
  br label %12, !llvm.loop !57

34:                                               ; preds = %12
  %35 = and i64 %2, 1
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = add nsw i64 %2, -2
  %39 = ashr exact i64 %38, 1
  %40 = icmp eq i64 %14, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = shl i64 %14, 1
  %43 = add i64 %42, 2
  store i64 %43, ptr %9, align 8
  %44 = or disjoint i64 %42, 1
  %45 = getelementptr inbounds [8 x i8], ptr %13, i64 %44
  %46 = load double, ptr %45, align 8
  %47 = getelementptr inbounds [8 x i8], ptr %13, i64 %14
  store double %46, ptr %47, align 8
  store i64 %44, ptr %8, align 8
  br label %48

48:                                               ; preds = %41, %37, %34
  %49 = phi i64 [ %44, %41 ], [ %14, %37 ], [ %14, %34 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEEEvT_T0_S8_T1_RT2_(ptr noundef %13, i64 noundef %49, i64 noundef %1, double noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %10)
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
  %8 = alloca double, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store double %3, ptr %8, align 8
  br label %10

10:                                               ; preds = %19, %5
  %11 = phi ptr [ %0, %5 ], [ %20, %19 ]
  %12 = phi i64 [ %1, %5 ], [ %21, %19 ]
  %storemerge.in = add nsw i64 %12, -1
  %storemerge = sdiv i64 %storemerge.in, 2
  store i64 %storemerge, ptr %9, align 8
  %13 = icmp sgt i64 %12, %2
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds [8 x i8], ptr %11, i64 %storemerge
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEclIPddEEbT_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %15, ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi i1 [ false, %10 ], [ %16, %14 ]
  br i1 %18, label %19, label %26

19:                                               ; preds = %17
  %20 = load ptr, ptr %6, align 8
  %21 = load i64, ptr %9, align 8
  %22 = getelementptr inbounds [8 x i8], ptr %20, i64 %21
  %23 = load double, ptr %22, align 8
  %24 = load i64, ptr %7, align 8
  %25 = getelementptr inbounds [8 x i8], ptr %20, i64 %24
  store double %23, ptr %25, align 8
  store i64 %21, ptr %7, align 8
  br label %10, !llvm.loop !58

26:                                               ; preds = %17
  %27 = load double, ptr %8, align 8
  %28 = load ptr, ptr %6, align 8
  %29 = load i64, ptr %7, align 8
  %30 = getelementptr inbounds [8 x i8], ptr %28, i64 %29
  store double %27, ptr %30, align 8
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
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %2, ptr noundef %3)
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %17

12:                                               ; preds = %9
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %3)
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %16

15:                                               ; preds = %12
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %16

16:                                               ; preds = %15, %14
  br label %17

17:                                               ; preds = %16, %11
  br label %27

18:                                               ; preds = %5
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %3)
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %26

21:                                               ; preds = %18
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %2, ptr noundef %3)
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %25

24:                                               ; preds = %21
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %25

25:                                               ; preds = %24, %23
  br label %26

26:                                               ; preds = %25, %20
  br label %27

27:                                               ; preds = %26, %17
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

10:                                               ; preds = %32, %4
  %11 = phi ptr [ %.pre1, %32 ], [ %2, %4 ]
  %12 = phi ptr [ %33, %32 ], [ %0, %4 ]
  br label %13

13:                                               ; preds = %17, %10
  %14 = phi ptr [ %.pre, %17 ], [ %11, %10 ]
  %15 = phi ptr [ %19, %17 ], [ %12, %10 ]
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %15, ptr noundef %14)
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load ptr, ptr %6, align 8
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %19, ptr %6, align 8
  %.pre = load ptr, ptr %8, align 8
  br label %13, !llvm.loop !59

20:                                               ; preds = %13
  %21 = load ptr, ptr %7, align 8
  %22 = getelementptr inbounds i8, ptr %21, i64 -8
  store ptr %22, ptr %7, align 8
  %.pre1 = load ptr, ptr %8, align 8
  br label %23

23:                                               ; preds = %26, %20
  %24 = phi ptr [ %27, %26 ], [ %22, %20 ]
  %25 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %.pre1, ptr noundef nonnull %24)
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = getelementptr inbounds i8, ptr %24, i64 -8
  store ptr %27, ptr %7, align 8
  br label %23, !llvm.loop !60

28:                                               ; preds = %23
  %29 = load ptr, ptr %6, align 8
  %30 = icmp ult ptr %29, %24
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  ret ptr %29

32:                                               ; preds = %28
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %29, ptr noundef nonnull %24)
  %33 = getelementptr inbounds nuw i8, ptr %29, i64 8
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
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca double, align 8
  %10 = inttoptr i64 %2 to ptr
  store ptr %10, ptr %6, align 8
  store ptr %0, ptr %7, align 8
  %11 = icmp eq ptr %0, %1
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %36

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %33, %13
  %.pn = phi ptr [ %0, %13 ], [ %34, %33 ]
  %15 = phi ptr [ %0, %13 ], [ %35, %33 ]
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  store ptr %storemerge, ptr %8, align 8
  %.not = icmp eq ptr %storemerge, %1
  br i1 %.not, label %36, label %16

16:                                               ; preds = %14
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %storemerge, ptr noundef %15)
  br i1 %17, label %18, label %29

18:                                               ; preds = %16
  %19 = load ptr, ptr %8, align 8
  %20 = load double, ptr %19, align 8
  store double %20, ptr %9, align 8
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %19, ptr %4, align 8
  store ptr %21, ptr %5, align 8
  %22 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %15)
  %23 = load ptr, ptr %4, align 8
  %24 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %23)
  %25 = load ptr, ptr %5, align 8
  %26 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %22, ptr noundef %24, ptr noundef %25)
  %27 = load double, ptr %9, align 8
  %28 = load ptr, ptr %7, align 8
  store double %27, ptr %28, align 8
  %.pre = load ptr, ptr %8, align 8
  br label %33

29:                                               ; preds = %16
  %30 = load ptr, ptr %8, align 8
  %31 = load i64, ptr %6, align 8
  %32 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %31)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %30, i64 %32)
  br label %33

33:                                               ; preds = %29, %18
  %34 = phi ptr [ %30, %29 ], [ %.pre, %18 ]
  %35 = phi ptr [ %15, %29 ], [ %28, %18 ]
  br label %14, !llvm.loop !62

36:                                               ; preds = %14, %12
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %5 = inttoptr i64 %2 to ptr
  store ptr %5, ptr %4, align 8
  br label %6

6:                                                ; preds = %8, %3
  %7 = phi ptr [ %11, %8 ], [ %0, %3 ]
  %.not = icmp eq ptr %7, %1
  br i1 %.not, label %12, label %8

8:                                                ; preds = %6
  %9 = load i64, ptr %4, align 8
  %10 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %9)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %7, i64 %10)
  %11 = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %6, !llvm.loop !63

12:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %0, i64 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %4 = alloca double, align 8
  %5 = alloca ptr, align 8
  %6 = inttoptr i64 %1 to ptr
  store ptr %6, ptr %3, align 8
  %7 = load double, ptr %0, align 8
  store double %7, ptr %4, align 8
  br label %8

8:                                                ; preds = %11, %2
  %.pn = phi ptr [ %0, %2 ], [ %13, %11 ]
  %9 = phi ptr [ %0, %2 ], [ %storemerge, %11 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  store ptr %storemerge, ptr %5, align 8
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEclIdPdEEbRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %storemerge)
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load double, ptr %storemerge, align 8
  store double %12, ptr %9, align 8
  %13 = load ptr, ptr %5, align 8
  br label %8, !llvm.loop !64

14:                                               ; preds = %8
  %15 = load double, ptr %4, align 8
  store double %15, ptr %9, align 8
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
  br label %19

13:                                               ; preds = %3
  %14 = icmp eq i64 %7, 8
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = load double, ptr %0, align 8
  %17 = load ptr, ptr %4, align 8
  store double %16, ptr %17, align 8
  br label %18

18:                                               ; preds = %15, %13
  br label %19

19:                                               ; preds = %18, %11
  %20 = load ptr, ptr %4, align 8
  ret ptr %20
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZSt9__advanceIPdxEvRT_T0_St26random_access_iterator_tag(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, i8 %2) #5 comdat {
  %4 = call i1 @llvm.is.constant.i64(i64 %1)
  br i1 %4, label %5, label %10

5:                                                ; preds = %3
  %6 = icmp eq i64 %1, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %5
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %21

10:                                               ; preds = %5, %3
  %11 = call i1 @llvm.is.constant.i64(i64 %1)
  br i1 %11, label %12, label %17

12:                                               ; preds = %10
  %13 = icmp eq i64 %1, -1
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr inbounds i8, ptr %15, i64 -8
  br label %20

17:                                               ; preds = %12, %10
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr inbounds [8 x i8], ptr %18, i64 %1
  br label %20

20:                                               ; preds = %17, %14
  %storemerge = phi ptr [ %19, %17 ], [ %16, %14 ]
  br label %21

21:                                               ; preds = %20, %7
  %storemerge1 = phi ptr [ %storemerge, %20 ], [ %9, %7 ]
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
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  store i8 %2, ptr %4, align 1
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %13, label %5

5:                                                ; preds = %3
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %9)
  %11 = shl nsw i64 %10, 1
  %12 = load i8, ptr %4, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %11, i8 %12)
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %12)
  br label %13

13:                                               ; preds = %5, %3
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
  store i8 %3, ptr %5, align 1
  br label %6

6:                                                ; preds = %17, %4
  %7 = phi i64 [ %18, %17 ], [ %2, %4 ]
  %8 = phi ptr [ %20, %17 ], [ %1, %4 ]
  %9 = ptrtoint ptr %8 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = icmp sgt i64 %11, 128
  br i1 %12, label %13, label %21

13:                                               ; preds = %6
  %14 = icmp eq i64 %7, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = load i8, ptr %5, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %8, ptr noundef %8, i8 %16)
  br label %21

17:                                               ; preds = %13
  %18 = add nsw i64 %7, -1
  %19 = load i8, ptr %5, align 1
  %20 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %8, i8 %19)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %20, ptr noundef %8, i64 noundef %18, i8 %19)
  br label %6, !llvm.loop !65

21:                                               ; preds = %15, %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  store i8 %2, ptr %4, align 1
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 128
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %11 = load i8, ptr %4, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef nonnull %10, i8 %11)
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef nonnull %10, ptr noundef %1, i8 %11)
  br label %14

12:                                               ; preds = %3
  %13 = load i8, ptr %4, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %13)
  br label %14

14:                                               ; preds = %12, %9
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
  store i8 %2, ptr %4, align 1
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  %9 = sdiv i64 %8, 2
  %10 = getelementptr inbounds [8 x i8], ptr %0, i64 %9
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = getelementptr inbounds i8, ptr %1, i64 -8
  %13 = load i8, ptr %4, align 1
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_S6_T0_(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %10, ptr noundef nonnull %12, i8 %13)
  %14 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_S6_T0_(ptr noundef nonnull %11, ptr noundef %1, ptr noundef %0, i8 %13)
  ret ptr %14
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store i8 %3, ptr %5, align 1
  store ptr %1, ptr %6, align 8
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %8

8:                                                ; preds = %14, %4
  %storemerge = phi ptr [ %1, %4 ], [ %15, %14 ]
  store ptr %storemerge, ptr %7, align 8
  %9 = icmp ult ptr %storemerge, %2
  br i1 %9, label %10, label %16

10:                                               ; preds = %8
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %storemerge, ptr noundef %0)
  %.pre = load ptr, ptr %7, align 8
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = load ptr, ptr %6, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %13, ptr noundef %.pre, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %14

14:                                               ; preds = %12, %10
  %15 = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  br label %8, !llvm.loop !66

16:                                               ; preds = %8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  br label %5

5:                                                ; preds = %11, %3
  %6 = phi ptr [ %12, %11 ], [ %1, %3 ]
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = icmp sgt i64 %9, 8
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = getelementptr inbounds i8, ptr %6, i64 -8
  %13 = load ptr, ptr %4, align 8, !nonnull !53
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %12, ptr noundef nonnull align 1 dereferenceable(1) %13)
  br label %5, !llvm.loop !67

14:                                               ; preds = %5
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 3
  %8 = icmp slt i64 %7, 2
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %22

10:                                               ; preds = %3
  %11 = add nsw i64 %7, -2
  %12 = sdiv i64 %11, 2
  br label %13

13:                                               ; preds = %20, %10
  %14 = phi i64 [ %21, %20 ], [ %12, %10 ]
  %15 = getelementptr inbounds [8 x i8], ptr %0, i64 %14
  %16 = load double, ptr %15, align 8
  %17 = load i8, ptr %2, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %14, i64 noundef %7, double noundef %16, i8 %17)
  %18 = icmp eq i64 %14, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %22

20:                                               ; preds = %13
  %21 = add nsw i64 %14, -1
  br label %13, !llvm.loop !68

22:                                               ; preds = %19, %9
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
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.1", align 1
  store i8 %4, ptr %6, align 1
  store ptr %0, ptr %7, align 8
  store i64 %1, ptr %8, align 8
  store i64 %1, ptr %9, align 8
  br label %11

11:                                               ; preds = %26, %5
  %12 = phi ptr [ %28, %26 ], [ %0, %5 ]
  %13 = phi i64 [ %27, %26 ], [ %1, %5 ]
  %14 = add nsw i64 %2, -1
  %15 = sdiv i64 %14, 2
  %16 = icmp slt i64 %13, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %11
  %18 = shl i64 %13, 1
  %19 = add i64 %18, 2
  store i64 %19, ptr %9, align 8
  %20 = getelementptr inbounds [8 x i8], ptr %12, i64 %19
  %21 = getelementptr [8 x i8], ptr %12, i64 %18
  %22 = getelementptr i8, ptr %21, i64 8
  %23 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %20, ptr noundef %22)
  %.pre = load i64, ptr %9, align 8
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = add nsw i64 %.pre, -1
  store i64 %25, ptr %9, align 8
  br label %26

26:                                               ; preds = %24, %17
  %27 = phi i64 [ %25, %24 ], [ %.pre, %17 ]
  %28 = load ptr, ptr %7, align 8
  %29 = getelementptr inbounds [8 x i8], ptr %28, i64 %27
  %30 = load double, ptr %29, align 8
  %31 = load i64, ptr %8, align 8
  %32 = getelementptr inbounds [8 x i8], ptr %28, i64 %31
  store double %30, ptr %32, align 8
  store i64 %27, ptr %8, align 8
  br label %11, !llvm.loop !69

33:                                               ; preds = %11
  %34 = and i64 %2, 1
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = add nsw i64 %2, -2
  %38 = ashr exact i64 %37, 1
  %39 = icmp eq i64 %13, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = shl i64 %13, 1
  %42 = add i64 %41, 2
  store i64 %42, ptr %9, align 8
  %43 = or disjoint i64 %41, 1
  %44 = getelementptr inbounds [8 x i8], ptr %12, i64 %43
  %45 = load double, ptr %44, align 8
  %46 = getelementptr inbounds [8 x i8], ptr %12, i64 %13
  store double %45, ptr %46, align 8
  store i64 %43, ptr %8, align 8
  br label %47

47:                                               ; preds = %40, %36, %33
  %48 = phi i64 [ %43, %40 ], [ %13, %36 ], [ %13, %33 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %12, i64 noundef %48, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %10)
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
  %8 = alloca double, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store double %3, ptr %8, align 8
  br label %10

10:                                               ; preds = %19, %5
  %11 = phi ptr [ %0, %5 ], [ %20, %19 ]
  %12 = phi i64 [ %1, %5 ], [ %21, %19 ]
  %storemerge.in = add nsw i64 %12, -1
  %storemerge = sdiv i64 %storemerge.in, 2
  store i64 %storemerge, ptr %9, align 8
  %13 = icmp sgt i64 %12, %2
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds [8 x i8], ptr %11, i64 %storemerge
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %15, ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi i1 [ false, %10 ], [ %16, %14 ]
  br i1 %18, label %19, label %26

19:                                               ; preds = %17
  %20 = load ptr, ptr %6, align 8
  %21 = load i64, ptr %9, align 8
  %22 = getelementptr inbounds [8 x i8], ptr %20, i64 %21
  %23 = load double, ptr %22, align 8
  %24 = load i64, ptr %7, align 8
  %25 = getelementptr inbounds [8 x i8], ptr %20, i64 %24
  store double %23, ptr %25, align 8
  store i64 %21, ptr %7, align 8
  br label %10, !llvm.loop !70

26:                                               ; preds = %17
  %27 = load double, ptr %8, align 8
  %28 = load ptr, ptr %6, align 8
  %29 = load i64, ptr %7, align 8
  %30 = getelementptr inbounds [8 x i8], ptr %28, i64 %29
  store double %27, ptr %30, align 8
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
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %16

11:                                               ; preds = %8
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %15

14:                                               ; preds = %11
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %15

15:                                               ; preds = %14, %13
  br label %16

16:                                               ; preds = %15, %10
  br label %26

17:                                               ; preds = %5
  %18 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %25

20:                                               ; preds = %17
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %24

23:                                               ; preds = %20
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %24

24:                                               ; preds = %23, %22
  br label %25

25:                                               ; preds = %24, %19
  br label %26

26:                                               ; preds = %25, %16
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

9:                                                ; preds = %31, %4
  %10 = phi ptr [ %.pre1, %31 ], [ %2, %4 ]
  %11 = phi ptr [ %32, %31 ], [ %0, %4 ]
  br label %12

12:                                               ; preds = %16, %9
  %13 = phi ptr [ %.pre, %16 ], [ %10, %9 ]
  %14 = phi ptr [ %18, %16 ], [ %11, %9 ]
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %14, ptr noundef %13)
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load ptr, ptr %6, align 8
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %18, ptr %6, align 8
  %.pre = load ptr, ptr %8, align 8
  br label %12, !llvm.loop !71

19:                                               ; preds = %12
  %20 = load ptr, ptr %7, align 8
  %21 = getelementptr inbounds i8, ptr %20, i64 -8
  store ptr %21, ptr %7, align 8
  %.pre1 = load ptr, ptr %8, align 8
  br label %22

22:                                               ; preds = %25, %19
  %23 = phi ptr [ %26, %25 ], [ %21, %19 ]
  %24 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.pre1, ptr noundef nonnull %23)
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = getelementptr inbounds i8, ptr %23, i64 -8
  store ptr %26, ptr %7, align 8
  br label %22, !llvm.loop !72

27:                                               ; preds = %22
  %28 = load ptr, ptr %6, align 8
  %29 = icmp ult ptr %28, %23
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  ret ptr %28

31:                                               ; preds = %27
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %28, ptr noundef nonnull %23)
  %32 = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %32, ptr %6, align 8
  br label %9, !llvm.loop !73
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca double, align 8
  store i8 %2, ptr %6, align 1
  store ptr %0, ptr %7, align 8
  %10 = icmp eq ptr %0, %1
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %35

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %32, %12
  %.pn = phi ptr [ %0, %12 ], [ %33, %32 ]
  %14 = phi ptr [ %0, %12 ], [ %34, %32 ]
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  store ptr %storemerge, ptr %8, align 8
  %.not = icmp eq ptr %storemerge, %1
  br i1 %.not, label %35, label %15

15:                                               ; preds = %13
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull %storemerge, ptr noundef %14)
  br i1 %16, label %17, label %28

17:                                               ; preds = %15
  %18 = load ptr, ptr %8, align 8
  %19 = load double, ptr %18, align 8
  store double %19, ptr %9, align 8
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %18, ptr %4, align 8
  store ptr %20, ptr %5, align 8
  %21 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %14)
  %22 = load ptr, ptr %4, align 8
  %23 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %22)
  %24 = load ptr, ptr %5, align 8
  %25 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %21, ptr noundef %23, ptr noundef %24)
  %26 = load double, ptr %9, align 8
  %27 = load ptr, ptr %7, align 8
  store double %26, ptr %27, align 8
  %.pre = load ptr, ptr %8, align 8
  br label %32

28:                                               ; preds = %15
  %29 = load ptr, ptr %8, align 8
  %30 = load i8, ptr %6, align 1
  %31 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %30)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %29, i8 %31)
  br label %32

32:                                               ; preds = %28, %17
  %33 = phi ptr [ %29, %28 ], [ %.pre, %17 ]
  %34 = phi ptr [ %14, %28 ], [ %27, %17 ]
  br label %13, !llvm.loop !74

35:                                               ; preds = %13, %11
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  store i8 %2, ptr %4, align 1
  br label %5

5:                                                ; preds = %7, %3
  %6 = phi ptr [ %10, %7 ], [ %0, %3 ]
  %.not = icmp eq ptr %6, %1
  br i1 %.not, label %11, label %7

7:                                                ; preds = %5
  %8 = load i8, ptr %4, align 1
  %9 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %8)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %6, i8 %9)
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %5, !llvm.loop !75

11:                                               ; preds = %5
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %0, i8 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", align 1
  %4 = alloca double, align 8
  %5 = alloca ptr, align 8
  store i8 %1, ptr %3, align 1
  %6 = load double, ptr %0, align 8
  store double %6, ptr %4, align 8
  br label %7

7:                                                ; preds = %10, %2
  %.pn = phi ptr [ %0, %2 ], [ %12, %10 ]
  %8 = phi ptr [ %0, %2 ], [ %storemerge, %10 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  store ptr %storemerge, ptr %5, align 8
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %storemerge)
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load double, ptr %storemerge, align 8
  store double %11, ptr %8, align 8
  %12 = load ptr, ptr %5, align 8
  br label %7, !llvm.loop !76

13:                                               ; preds = %7
  %14 = load double, ptr %4, align 8
  store double %14, ptr %8, align 8
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
  store i8 %2, ptr %4, align 1
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %13, label %5

5:                                                ; preds = %3
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %9)
  %11 = shl nsw i64 %10, 1
  %12 = load i8, ptr %4, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %11, i8 %12)
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %12)
  br label %13

13:                                               ; preds = %5, %3
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
  store i8 %3, ptr %5, align 1
  br label %6

6:                                                ; preds = %17, %4
  %7 = phi i64 [ %18, %17 ], [ %2, %4 ]
  %8 = phi ptr [ %20, %17 ], [ %1, %4 ]
  %9 = ptrtoint ptr %8 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = icmp sgt i64 %11, 128
  br i1 %12, label %13, label %21

13:                                               ; preds = %6
  %14 = icmp eq i64 %7, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = load i8, ptr %5, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %8, ptr noundef %8, i8 %16)
  br label %21

17:                                               ; preds = %13
  %18 = add nsw i64 %7, -1
  %19 = load i8, ptr %5, align 1
  %20 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %8, i8 %19)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %20, ptr noundef %8, i64 noundef %18, i8 %19)
  br label %6, !llvm.loop !77

21:                                               ; preds = %15, %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  store i8 %2, ptr %4, align 1
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 128
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %11 = load i8, ptr %4, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef nonnull %10, i8 %11)
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef nonnull %10, ptr noundef %1, i8 %11)
  br label %14

12:                                               ; preds = %3
  %13 = load i8, ptr %4, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %13)
  br label %14

14:                                               ; preds = %12, %9
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
  store i8 %2, ptr %4, align 1
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  %9 = sdiv i64 %8, 2
  %10 = getelementptr inbounds [8 x i8], ptr %0, i64 %9
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = getelementptr inbounds i8, ptr %1, i64 -8
  %13 = load i8, ptr %4, align 1
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_S6_T0_(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %10, ptr noundef nonnull %12, i8 %13)
  %14 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_S6_T0_(ptr noundef nonnull %11, ptr noundef %1, ptr noundef %0, i8 %13)
  ret ptr %14
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store i8 %3, ptr %5, align 1
  store ptr %1, ptr %6, align 8
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %8

8:                                                ; preds = %14, %4
  %storemerge = phi ptr [ %1, %4 ], [ %15, %14 ]
  store ptr %storemerge, ptr %7, align 8
  %9 = icmp ult ptr %storemerge, %2
  br i1 %9, label %10, label %16

10:                                               ; preds = %8
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %storemerge, ptr noundef %0)
  %.pre = load ptr, ptr %7, align 8
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = load ptr, ptr %6, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %13, ptr noundef %.pre, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %14

14:                                               ; preds = %12, %10
  %15 = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  br label %8, !llvm.loop !78

16:                                               ; preds = %8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  br label %5

5:                                                ; preds = %11, %3
  %6 = phi ptr [ %12, %11 ], [ %1, %3 ]
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = icmp sgt i64 %9, 8
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = getelementptr inbounds i8, ptr %6, i64 -8
  %13 = load ptr, ptr %4, align 8, !nonnull !53
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %12, ptr noundef nonnull align 1 dereferenceable(1) %13)
  br label %5, !llvm.loop !79

14:                                               ; preds = %5
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 3
  %8 = icmp slt i64 %7, 2
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %22

10:                                               ; preds = %3
  %11 = add nsw i64 %7, -2
  %12 = sdiv i64 %11, 2
  br label %13

13:                                               ; preds = %20, %10
  %14 = phi i64 [ %21, %20 ], [ %12, %10 ]
  %15 = getelementptr inbounds [8 x i8], ptr %0, i64 %14
  %16 = load double, ptr %15, align 8
  %17 = load i8, ptr %2, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %14, i64 noundef %7, double noundef %16, i8 %17)
  %18 = icmp eq i64 %14, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %22

20:                                               ; preds = %13
  %21 = add nsw i64 %14, -1
  br label %13, !llvm.loop !80

22:                                               ; preds = %19, %9
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
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.4", align 1
  store i8 %4, ptr %6, align 1
  store ptr %0, ptr %7, align 8
  store i64 %1, ptr %8, align 8
  store i64 %1, ptr %9, align 8
  br label %11

11:                                               ; preds = %26, %5
  %12 = phi ptr [ %28, %26 ], [ %0, %5 ]
  %13 = phi i64 [ %27, %26 ], [ %1, %5 ]
  %14 = add nsw i64 %2, -1
  %15 = sdiv i64 %14, 2
  %16 = icmp slt i64 %13, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %11
  %18 = shl i64 %13, 1
  %19 = add i64 %18, 2
  store i64 %19, ptr %9, align 8
  %20 = getelementptr inbounds [8 x i8], ptr %12, i64 %19
  %21 = getelementptr [8 x i8], ptr %12, i64 %18
  %22 = getelementptr i8, ptr %21, i64 8
  %23 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %20, ptr noundef %22)
  %.pre = load i64, ptr %9, align 8
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = add nsw i64 %.pre, -1
  store i64 %25, ptr %9, align 8
  br label %26

26:                                               ; preds = %24, %17
  %27 = phi i64 [ %25, %24 ], [ %.pre, %17 ]
  %28 = load ptr, ptr %7, align 8
  %29 = getelementptr inbounds [8 x i8], ptr %28, i64 %27
  %30 = load double, ptr %29, align 8
  %31 = load i64, ptr %8, align 8
  %32 = getelementptr inbounds [8 x i8], ptr %28, i64 %31
  store double %30, ptr %32, align 8
  store i64 %27, ptr %8, align 8
  br label %11, !llvm.loop !81

33:                                               ; preds = %11
  %34 = and i64 %2, 1
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = add nsw i64 %2, -2
  %38 = ashr exact i64 %37, 1
  %39 = icmp eq i64 %13, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = shl i64 %13, 1
  %42 = add i64 %41, 2
  store i64 %42, ptr %9, align 8
  %43 = or disjoint i64 %41, 1
  %44 = getelementptr inbounds [8 x i8], ptr %12, i64 %43
  %45 = load double, ptr %44, align 8
  %46 = getelementptr inbounds [8 x i8], ptr %12, i64 %13
  store double %45, ptr %46, align 8
  store i64 %43, ptr %8, align 8
  br label %47

47:                                               ; preds = %40, %36, %33
  %48 = phi i64 [ %43, %40 ], [ %13, %36 ], [ %13, %33 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %12, i64 noundef %48, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %10)
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
  %8 = alloca double, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store double %3, ptr %8, align 8
  br label %10

10:                                               ; preds = %19, %5
  %11 = phi ptr [ %0, %5 ], [ %20, %19 ]
  %12 = phi i64 [ %1, %5 ], [ %21, %19 ]
  %storemerge.in = add nsw i64 %12, -1
  %storemerge = sdiv i64 %storemerge.in, 2
  store i64 %storemerge, ptr %9, align 8
  %13 = icmp sgt i64 %12, %2
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds [8 x i8], ptr %11, i64 %storemerge
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %15, ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi i1 [ false, %10 ], [ %16, %14 ]
  br i1 %18, label %19, label %26

19:                                               ; preds = %17
  %20 = load ptr, ptr %6, align 8
  %21 = load i64, ptr %9, align 8
  %22 = getelementptr inbounds [8 x i8], ptr %20, i64 %21
  %23 = load double, ptr %22, align 8
  %24 = load i64, ptr %7, align 8
  %25 = getelementptr inbounds [8 x i8], ptr %20, i64 %24
  store double %23, ptr %25, align 8
  store i64 %21, ptr %7, align 8
  br label %10, !llvm.loop !82

26:                                               ; preds = %17
  %27 = load double, ptr %8, align 8
  %28 = load ptr, ptr %6, align 8
  %29 = load i64, ptr %7, align 8
  %30 = getelementptr inbounds [8 x i8], ptr %28, i64 %29
  store double %27, ptr %30, align 8
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
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %16

11:                                               ; preds = %8
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %15

14:                                               ; preds = %11
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %15

15:                                               ; preds = %14, %13
  br label %16

16:                                               ; preds = %15, %10
  br label %26

17:                                               ; preds = %5
  %18 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %25

20:                                               ; preds = %17
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %24

23:                                               ; preds = %20
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %24

24:                                               ; preds = %23, %22
  br label %25

25:                                               ; preds = %24, %19
  br label %26

26:                                               ; preds = %25, %16
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

9:                                                ; preds = %31, %4
  %10 = phi ptr [ %.pre1, %31 ], [ %2, %4 ]
  %11 = phi ptr [ %32, %31 ], [ %0, %4 ]
  br label %12

12:                                               ; preds = %16, %9
  %13 = phi ptr [ %.pre, %16 ], [ %10, %9 ]
  %14 = phi ptr [ %18, %16 ], [ %11, %9 ]
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %14, ptr noundef %13)
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load ptr, ptr %6, align 8
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %18, ptr %6, align 8
  %.pre = load ptr, ptr %8, align 8
  br label %12, !llvm.loop !83

19:                                               ; preds = %12
  %20 = load ptr, ptr %7, align 8
  %21 = getelementptr inbounds i8, ptr %20, i64 -8
  store ptr %21, ptr %7, align 8
  %.pre1 = load ptr, ptr %8, align 8
  br label %22

22:                                               ; preds = %25, %19
  %23 = phi ptr [ %26, %25 ], [ %21, %19 ]
  %24 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.pre1, ptr noundef nonnull %23)
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = getelementptr inbounds i8, ptr %23, i64 -8
  store ptr %26, ptr %7, align 8
  br label %22, !llvm.loop !84

27:                                               ; preds = %22
  %28 = load ptr, ptr %6, align 8
  %29 = icmp ult ptr %28, %23
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  ret ptr %28

31:                                               ; preds = %27
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %28, ptr noundef nonnull %23)
  %32 = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %32, ptr %6, align 8
  br label %9, !llvm.loop !85
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca double, align 8
  store i8 %2, ptr %6, align 1
  store ptr %0, ptr %7, align 8
  %10 = icmp eq ptr %0, %1
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %35

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %32, %12
  %.pn = phi ptr [ %0, %12 ], [ %33, %32 ]
  %14 = phi ptr [ %0, %12 ], [ %34, %32 ]
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  store ptr %storemerge, ptr %8, align 8
  %.not = icmp eq ptr %storemerge, %1
  br i1 %.not, label %35, label %15

15:                                               ; preds = %13
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull %storemerge, ptr noundef %14)
  br i1 %16, label %17, label %28

17:                                               ; preds = %15
  %18 = load ptr, ptr %8, align 8
  %19 = load double, ptr %18, align 8
  store double %19, ptr %9, align 8
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %18, ptr %4, align 8
  store ptr %20, ptr %5, align 8
  %21 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %14)
  %22 = load ptr, ptr %4, align 8
  %23 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %22)
  %24 = load ptr, ptr %5, align 8
  %25 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %21, ptr noundef %23, ptr noundef %24)
  %26 = load double, ptr %9, align 8
  %27 = load ptr, ptr %7, align 8
  store double %26, ptr %27, align 8
  %.pre = load ptr, ptr %8, align 8
  br label %32

28:                                               ; preds = %15
  %29 = load ptr, ptr %8, align 8
  %30 = load i8, ptr %6, align 1
  %31 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %30)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %29, i8 %31)
  br label %32

32:                                               ; preds = %28, %17
  %33 = phi ptr [ %29, %28 ], [ %.pre, %17 ]
  %34 = phi ptr [ %14, %28 ], [ %27, %17 ]
  br label %13, !llvm.loop !86

35:                                               ; preds = %13, %11
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  store i8 %2, ptr %4, align 1
  br label %5

5:                                                ; preds = %7, %3
  %6 = phi ptr [ %10, %7 ], [ %0, %3 ]
  %.not = icmp eq ptr %6, %1
  br i1 %.not, label %11, label %7

7:                                                ; preds = %5
  %8 = load i8, ptr %4, align 1
  %9 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %8)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %6, i8 %9)
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %5, !llvm.loop !87

11:                                               ; preds = %5
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %0, i8 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", align 1
  %4 = alloca double, align 8
  %5 = alloca ptr, align 8
  store i8 %1, ptr %3, align 1
  %6 = load double, ptr %0, align 8
  store double %6, ptr %4, align 8
  br label %7

7:                                                ; preds = %10, %2
  %.pn = phi ptr [ %0, %2 ], [ %12, %10 ]
  %8 = phi ptr [ %0, %2 ], [ %storemerge, %10 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  store ptr %storemerge, ptr %5, align 8
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %storemerge)
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load double, ptr %storemerge, align 8
  store double %11, ptr %8, align 8
  %12 = load ptr, ptr %5, align 8
  br label %7, !llvm.loop !88

13:                                               ; preds = %7
  %14 = load double, ptr %4, align 8
  store double %14, ptr %8, align 8
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
  store i8 %2, ptr %4, align 1
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %13, label %5

5:                                                ; preds = %3
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %9)
  %11 = shl nsw i64 %10, 1
  %12 = load i8, ptr %4, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %11, i8 %12)
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %12)
  br label %13

13:                                               ; preds = %5, %3
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
  store i8 %3, ptr %5, align 1
  br label %6

6:                                                ; preds = %17, %4
  %7 = phi i64 [ %18, %17 ], [ %2, %4 ]
  %8 = phi ptr [ %20, %17 ], [ %1, %4 ]
  %9 = ptrtoint ptr %8 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = icmp sgt i64 %11, 128
  br i1 %12, label %13, label %21

13:                                               ; preds = %6
  %14 = icmp eq i64 %7, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = load i8, ptr %5, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %8, ptr noundef %8, i8 %16)
  br label %21

17:                                               ; preds = %13
  %18 = add nsw i64 %7, -1
  %19 = load i8, ptr %5, align 1
  %20 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %8, i8 %19)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %20, ptr noundef %8, i64 noundef %18, i8 %19)
  br label %6, !llvm.loop !89

21:                                               ; preds = %15, %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store i8 %2, ptr %4, align 1
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 128
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %11 = load i8, ptr %4, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef nonnull %10, i8 %11)
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef nonnull %10, ptr noundef %1, i8 %11)
  br label %14

12:                                               ; preds = %3
  %13 = load i8, ptr %4, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %13)
  br label %14

14:                                               ; preds = %12, %9
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
  store i8 %2, ptr %4, align 1
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  %9 = sdiv i64 %8, 2
  %10 = getelementptr inbounds [8 x i8], ptr %0, i64 %9
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = getelementptr inbounds i8, ptr %1, i64 -8
  %13 = load i8, ptr %4, align 1
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %10, ptr noundef nonnull %12, i8 %13)
  %14 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_S7_T0_(ptr noundef nonnull %11, ptr noundef %1, ptr noundef %0, i8 %13)
  ret ptr %14
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store i8 %3, ptr %5, align 1
  store ptr %1, ptr %6, align 8
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %8

8:                                                ; preds = %14, %4
  %storemerge = phi ptr [ %1, %4 ], [ %15, %14 ]
  store ptr %storemerge, ptr %7, align 8
  %9 = icmp ult ptr %storemerge, %2
  br i1 %9, label %10, label %16

10:                                               ; preds = %8
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %storemerge, ptr noundef %0)
  %.pre = load ptr, ptr %7, align 8
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = load ptr, ptr %6, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %13, ptr noundef %.pre, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %14

14:                                               ; preds = %12, %10
  %15 = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  br label %8, !llvm.loop !90

16:                                               ; preds = %8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  br label %5

5:                                                ; preds = %11, %3
  %6 = phi ptr [ %12, %11 ], [ %1, %3 ]
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = icmp sgt i64 %9, 8
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = getelementptr inbounds i8, ptr %6, i64 -8
  %13 = load ptr, ptr %4, align 8, !nonnull !53
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %12, ptr noundef nonnull align 1 dereferenceable(1) %13)
  br label %5, !llvm.loop !91

14:                                               ; preds = %5
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 3
  %8 = icmp slt i64 %7, 2
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %22

10:                                               ; preds = %3
  %11 = add nsw i64 %7, -2
  %12 = sdiv i64 %11, 2
  br label %13

13:                                               ; preds = %20, %10
  %14 = phi i64 [ %21, %20 ], [ %12, %10 ]
  %15 = getelementptr inbounds [8 x i8], ptr %0, i64 %14
  %16 = load double, ptr %15, align 8
  %17 = load i8, ptr %2, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %14, i64 noundef %7, double noundef %16, i8 %17)
  %18 = icmp eq i64 %14, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %22

20:                                               ; preds = %13
  %21 = add nsw i64 %14, -1
  br label %13, !llvm.loop !92

22:                                               ; preds = %19, %9
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
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.7", align 1
  store i8 %4, ptr %6, align 1
  store ptr %0, ptr %7, align 8
  store i64 %1, ptr %8, align 8
  store i64 %1, ptr %9, align 8
  br label %11

11:                                               ; preds = %26, %5
  %12 = phi ptr [ %28, %26 ], [ %0, %5 ]
  %13 = phi i64 [ %27, %26 ], [ %1, %5 ]
  %14 = add nsw i64 %2, -1
  %15 = sdiv i64 %14, 2
  %16 = icmp slt i64 %13, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %11
  %18 = shl i64 %13, 1
  %19 = add i64 %18, 2
  store i64 %19, ptr %9, align 8
  %20 = getelementptr inbounds [8 x i8], ptr %12, i64 %19
  %21 = getelementptr [8 x i8], ptr %12, i64 %18
  %22 = getelementptr i8, ptr %21, i64 8
  %23 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %20, ptr noundef %22)
  %.pre = load i64, ptr %9, align 8
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = add nsw i64 %.pre, -1
  store i64 %25, ptr %9, align 8
  br label %26

26:                                               ; preds = %24, %17
  %27 = phi i64 [ %25, %24 ], [ %.pre, %17 ]
  %28 = load ptr, ptr %7, align 8
  %29 = getelementptr inbounds [8 x i8], ptr %28, i64 %27
  %30 = load double, ptr %29, align 8
  %31 = load i64, ptr %8, align 8
  %32 = getelementptr inbounds [8 x i8], ptr %28, i64 %31
  store double %30, ptr %32, align 8
  store i64 %27, ptr %8, align 8
  br label %11, !llvm.loop !93

33:                                               ; preds = %11
  %34 = and i64 %2, 1
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = add nsw i64 %2, -2
  %38 = ashr exact i64 %37, 1
  %39 = icmp eq i64 %13, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = shl i64 %13, 1
  %42 = add i64 %41, 2
  store i64 %42, ptr %9, align 8
  %43 = or disjoint i64 %41, 1
  %44 = getelementptr inbounds [8 x i8], ptr %12, i64 %43
  %45 = load double, ptr %44, align 8
  %46 = getelementptr inbounds [8 x i8], ptr %12, i64 %13
  store double %45, ptr %46, align 8
  store i64 %43, ptr %8, align 8
  br label %47

47:                                               ; preds = %40, %36, %33
  %48 = phi i64 [ %43, %40 ], [ %13, %36 ], [ %13, %33 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEEEvT_T0_S8_T1_RT2_(ptr noundef %12, i64 noundef %48, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %10)
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
  %8 = alloca double, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store double %3, ptr %8, align 8
  br label %10

10:                                               ; preds = %19, %5
  %11 = phi ptr [ %0, %5 ], [ %20, %19 ]
  %12 = phi i64 [ %1, %5 ], [ %21, %19 ]
  %storemerge.in = add nsw i64 %12, -1
  %storemerge = sdiv i64 %storemerge.in, 2
  store i64 %storemerge, ptr %9, align 8
  %13 = icmp sgt i64 %12, %2
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds [8 x i8], ptr %11, i64 %storemerge
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %15, ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi i1 [ false, %10 ], [ %16, %14 ]
  br i1 %18, label %19, label %26

19:                                               ; preds = %17
  %20 = load ptr, ptr %6, align 8
  %21 = load i64, ptr %9, align 8
  %22 = getelementptr inbounds [8 x i8], ptr %20, i64 %21
  %23 = load double, ptr %22, align 8
  %24 = load i64, ptr %7, align 8
  %25 = getelementptr inbounds [8 x i8], ptr %20, i64 %24
  store double %23, ptr %25, align 8
  store i64 %21, ptr %7, align 8
  br label %10, !llvm.loop !94

26:                                               ; preds = %17
  %27 = load double, ptr %8, align 8
  %28 = load ptr, ptr %6, align 8
  %29 = load i64, ptr %7, align 8
  %30 = getelementptr inbounds [8 x i8], ptr %28, i64 %29
  store double %27, ptr %30, align 8
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
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %16

11:                                               ; preds = %8
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %15

14:                                               ; preds = %11
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %15

15:                                               ; preds = %14, %13
  br label %16

16:                                               ; preds = %15, %10
  br label %26

17:                                               ; preds = %5
  %18 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %25

20:                                               ; preds = %17
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %24

23:                                               ; preds = %20
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %24

24:                                               ; preds = %23, %22
  br label %25

25:                                               ; preds = %24, %19
  br label %26

26:                                               ; preds = %25, %16
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

9:                                                ; preds = %31, %4
  %10 = phi ptr [ %.pre1, %31 ], [ %2, %4 ]
  %11 = phi ptr [ %32, %31 ], [ %0, %4 ]
  br label %12

12:                                               ; preds = %16, %9
  %13 = phi ptr [ %.pre, %16 ], [ %10, %9 ]
  %14 = phi ptr [ %18, %16 ], [ %11, %9 ]
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %14, ptr noundef %13)
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load ptr, ptr %6, align 8
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %18, ptr %6, align 8
  %.pre = load ptr, ptr %8, align 8
  br label %12, !llvm.loop !95

19:                                               ; preds = %12
  %20 = load ptr, ptr %7, align 8
  %21 = getelementptr inbounds i8, ptr %20, i64 -8
  store ptr %21, ptr %7, align 8
  %.pre1 = load ptr, ptr %8, align 8
  br label %22

22:                                               ; preds = %25, %19
  %23 = phi ptr [ %26, %25 ], [ %21, %19 ]
  %24 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.pre1, ptr noundef nonnull %23)
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = getelementptr inbounds i8, ptr %23, i64 -8
  store ptr %26, ptr %7, align 8
  br label %22, !llvm.loop !96

27:                                               ; preds = %22
  %28 = load ptr, ptr %6, align 8
  %29 = icmp ult ptr %28, %23
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  ret ptr %28

31:                                               ; preds = %27
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %28, ptr noundef nonnull %23)
  %32 = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %32, ptr %6, align 8
  br label %9, !llvm.loop !97
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca double, align 8
  store i8 %2, ptr %6, align 1
  store ptr %0, ptr %7, align 8
  %10 = icmp eq ptr %0, %1
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %35

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %32, %12
  %.pn = phi ptr [ %0, %12 ], [ %33, %32 ]
  %14 = phi ptr [ %0, %12 ], [ %34, %32 ]
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  store ptr %storemerge, ptr %8, align 8
  %.not = icmp eq ptr %storemerge, %1
  br i1 %.not, label %35, label %15

15:                                               ; preds = %13
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull %storemerge, ptr noundef %14)
  br i1 %16, label %17, label %28

17:                                               ; preds = %15
  %18 = load ptr, ptr %8, align 8
  %19 = load double, ptr %18, align 8
  store double %19, ptr %9, align 8
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %18, ptr %4, align 8
  store ptr %20, ptr %5, align 8
  %21 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %14)
  %22 = load ptr, ptr %4, align 8
  %23 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %22)
  %24 = load ptr, ptr %5, align 8
  %25 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %21, ptr noundef %23, ptr noundef %24)
  %26 = load double, ptr %9, align 8
  %27 = load ptr, ptr %7, align 8
  store double %26, ptr %27, align 8
  %.pre = load ptr, ptr %8, align 8
  br label %32

28:                                               ; preds = %15
  %29 = load ptr, ptr %8, align 8
  %30 = load i8, ptr %6, align 1
  %31 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %30)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %29, i8 %31)
  br label %32

32:                                               ; preds = %28, %17
  %33 = phi ptr [ %29, %28 ], [ %.pre, %17 ]
  %34 = phi ptr [ %14, %28 ], [ %27, %17 ]
  br label %13, !llvm.loop !98

35:                                               ; preds = %13, %11
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store i8 %2, ptr %4, align 1
  br label %5

5:                                                ; preds = %7, %3
  %6 = phi ptr [ %10, %7 ], [ %0, %3 ]
  %.not = icmp eq ptr %6, %1
  br i1 %.not, label %11, label %7

7:                                                ; preds = %5
  %8 = load i8, ptr %4, align 1
  %9 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %8)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %6, i8 %9)
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %5, !llvm.loop !99

11:                                               ; preds = %5
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %0, i8 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", align 1
  %4 = alloca double, align 8
  %5 = alloca ptr, align 8
  store i8 %1, ptr %3, align 1
  %6 = load double, ptr %0, align 8
  store double %6, ptr %4, align 8
  br label %7

7:                                                ; preds = %10, %2
  %.pn = phi ptr [ %0, %2 ], [ %12, %10 ]
  %8 = phi ptr [ %0, %2 ], [ %storemerge, %10 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  store ptr %storemerge, ptr %5, align 8
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %storemerge)
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load double, ptr %storemerge, align 8
  store double %11, ptr %8, align 8
  %12 = load ptr, ptr %5, align 8
  br label %7, !llvm.loop !100

13:                                               ; preds = %7
  %14 = load double, ptr %4, align 8
  store double %14, ptr %8, align 8
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
  br label %5

5:                                                ; preds = %15, %4
  %6 = phi i64 [ %16, %15 ], [ %2, %4 ]
  %7 = phi ptr [ %17, %15 ], [ %1, %4 ]
  %8 = ptrtoint ptr %7 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = icmp sgt i64 %10, 128
  br i1 %11, label %12, label %18

12:                                               ; preds = %5
  %13 = icmp eq i64 %6, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %7, ptr noundef %7, i8 undef)
  br label %18

15:                                               ; preds = %12
  %16 = add nsw i64 %6, -1
  %17 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(ptr noundef %0, ptr noundef %7, i8 undef)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %17, ptr noundef %7, i64 noundef %16, i8 undef)
  br label %5, !llvm.loop !101

18:                                               ; preds = %14, %5
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
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store i8 %3, ptr %5, align 1
  store ptr %1, ptr %6, align 8
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %8

8:                                                ; preds = %14, %4
  %storemerge = phi ptr [ %1, %4 ], [ %15, %14 ]
  store ptr %storemerge, ptr %7, align 8
  %9 = icmp ult ptr %storemerge, %2
  br i1 %9, label %10, label %16

10:                                               ; preds = %8
  %11 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %storemerge, ptr noundef %0)
  %.pre = load ptr, ptr %7, align 8
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = load ptr, ptr %6, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %0, ptr noundef %13, ptr noundef %.pre, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %14

14:                                               ; preds = %12, %10
  %15 = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  br label %8, !llvm.loop !102

16:                                               ; preds = %8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  br label %5

5:                                                ; preds = %11, %3
  %6 = phi ptr [ %12, %11 ], [ %1, %3 ]
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = icmp sgt i64 %9, 8
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = getelementptr inbounds i8, ptr %6, i64 -8
  %13 = load ptr, ptr %4, align 8, !nonnull !53
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %12, ptr noundef nonnull align 1 dereferenceable(1) %13)
  br label %5, !llvm.loop !103

14:                                               ; preds = %5
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 3
  %8 = icmp slt i64 %7, 2
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %21

10:                                               ; preds = %3
  %11 = add nsw i64 %7, -2
  %12 = sdiv i64 %11, 2
  br label %13

13:                                               ; preds = %19, %10
  %14 = phi i64 [ %20, %19 ], [ %12, %10 ]
  %15 = getelementptr inbounds [8 x i8], ptr %0, i64 %14
  %16 = load double, ptr %15, align 8
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %0, i64 noundef %14, i64 noundef %7, double noundef %16, i8 undef)
  %17 = icmp eq i64 %14, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %21

19:                                               ; preds = %13
  %20 = add nsw i64 %14, -1
  br label %13, !llvm.loop !104

21:                                               ; preds = %18, %9
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
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_val", align 1
  store i8 %4, ptr %6, align 1
  store ptr %0, ptr %7, align 8
  store i64 %1, ptr %8, align 8
  store i64 %1, ptr %9, align 8
  br label %11

11:                                               ; preds = %26, %5
  %12 = phi ptr [ %28, %26 ], [ %0, %5 ]
  %13 = phi i64 [ %27, %26 ], [ %1, %5 ]
  %14 = add nsw i64 %2, -1
  %15 = sdiv i64 %14, 2
  %16 = icmp slt i64 %13, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %11
  %18 = shl i64 %13, 1
  %19 = add i64 %18, 2
  store i64 %19, ptr %9, align 8
  %20 = getelementptr inbounds [8 x i8], ptr %12, i64 %19
  %21 = getelementptr [8 x i8], ptr %12, i64 %18
  %22 = getelementptr i8, ptr %21, i64 8
  %23 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %20, ptr noundef %22)
  %.pre = load i64, ptr %9, align 8
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = add nsw i64 %.pre, -1
  store i64 %25, ptr %9, align 8
  br label %26

26:                                               ; preds = %24, %17
  %27 = phi i64 [ %25, %24 ], [ %.pre, %17 ]
  %28 = load ptr, ptr %7, align 8
  %29 = getelementptr inbounds [8 x i8], ptr %28, i64 %27
  %30 = load double, ptr %29, align 8
  %31 = load i64, ptr %8, align 8
  %32 = getelementptr inbounds [8 x i8], ptr %28, i64 %31
  store double %30, ptr %32, align 8
  store i64 %27, ptr %8, align 8
  br label %11, !llvm.loop !105

33:                                               ; preds = %11
  %34 = and i64 %2, 1
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = add nsw i64 %2, -2
  %38 = ashr exact i64 %37, 1
  %39 = icmp eq i64 %13, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = shl i64 %13, 1
  %42 = add i64 %41, 2
  store i64 %42, ptr %9, align 8
  %43 = or disjoint i64 %41, 1
  %44 = getelementptr inbounds [8 x i8], ptr %12, i64 %43
  %45 = load double, ptr %44, align 8
  %46 = getelementptr inbounds [8 x i8], ptr %12, i64 %13
  store double %45, ptr %46, align 8
  store i64 %43, ptr %8, align 8
  br label %47

47:                                               ; preds = %40, %36, %33
  %48 = phi i64 [ %43, %40 ], [ %13, %36 ], [ %13, %33 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(ptr noundef nonnull align 1 dereferenceable(1) %10, i8 undef)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_(ptr noundef %12, i64 noundef %48, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %10)
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
  %8 = alloca double, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store double %3, ptr %8, align 8
  br label %10

10:                                               ; preds = %19, %5
  %11 = phi ptr [ %0, %5 ], [ %20, %19 ]
  %12 = phi i64 [ %1, %5 ], [ %21, %19 ]
  %storemerge.in = add nsw i64 %12, -1
  %storemerge = sdiv i64 %storemerge.in, 2
  store i64 %storemerge, ptr %9, align 8
  %13 = icmp sgt i64 %12, %2
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds [8 x i8], ptr %11, i64 %storemerge
  %16 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %15, ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi i1 [ false, %10 ], [ %16, %14 ]
  br i1 %18, label %19, label %26

19:                                               ; preds = %17
  %20 = load ptr, ptr %6, align 8
  %21 = load i64, ptr %9, align 8
  %22 = getelementptr inbounds [8 x i8], ptr %20, i64 %21
  %23 = load double, ptr %22, align 8
  %24 = load i64, ptr %7, align 8
  %25 = getelementptr inbounds [8 x i8], ptr %20, i64 %24
  store double %23, ptr %25, align 8
  store i64 %21, ptr %7, align 8
  br label %10, !llvm.loop !106

26:                                               ; preds = %17
  %27 = load double, ptr %8, align 8
  %28 = load ptr, ptr %6, align 8
  %29 = load i64, ptr %7, align 8
  %30 = getelementptr inbounds [8 x i8], ptr %28, i64 %29
  store double %27, ptr %30, align 8
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
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %16

11:                                               ; preds = %8
  %12 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %15

14:                                               ; preds = %11
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %15

15:                                               ; preds = %14, %13
  br label %16

16:                                               ; preds = %15, %10
  br label %26

17:                                               ; preds = %5
  %18 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %25

20:                                               ; preds = %17
  %21 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %24

23:                                               ; preds = %20
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %24

24:                                               ; preds = %23, %22
  br label %25

25:                                               ; preds = %24, %19
  br label %26

26:                                               ; preds = %25, %16
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

9:                                                ; preds = %31, %4
  %10 = phi ptr [ %.pre1, %31 ], [ %2, %4 ]
  %11 = phi ptr [ %32, %31 ], [ %0, %4 ]
  br label %12

12:                                               ; preds = %16, %9
  %13 = phi ptr [ %.pre, %16 ], [ %10, %9 ]
  %14 = phi ptr [ %18, %16 ], [ %11, %9 ]
  %15 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %14, ptr noundef %13)
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load ptr, ptr %6, align 8
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %18, ptr %6, align 8
  %.pre = load ptr, ptr %8, align 8
  br label %12, !llvm.loop !107

19:                                               ; preds = %12
  %20 = load ptr, ptr %7, align 8
  %21 = getelementptr inbounds i8, ptr %20, i64 -8
  store ptr %21, ptr %7, align 8
  %.pre1 = load ptr, ptr %8, align 8
  br label %22

22:                                               ; preds = %25, %19
  %23 = phi ptr [ %26, %25 ], [ %21, %19 ]
  %24 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.pre1, ptr noundef nonnull %23)
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = getelementptr inbounds i8, ptr %23, i64 -8
  store ptr %26, ptr %7, align 8
  br label %22, !llvm.loop !108

27:                                               ; preds = %22
  %28 = load ptr, ptr %6, align 8
  %29 = icmp ult ptr %28, %23
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  ret ptr %28

31:                                               ; preds = %27
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %28, ptr noundef nonnull %23)
  %32 = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %32, ptr %6, align 8
  br label %9, !llvm.loop !109
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca double, align 8
  store i8 %2, ptr %6, align 1
  store ptr %0, ptr %7, align 8
  %10 = icmp eq ptr %0, %1
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %34

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %31, %12
  %.pn = phi ptr [ %0, %12 ], [ %32, %31 ]
  %14 = phi ptr [ %0, %12 ], [ %33, %31 ]
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  store ptr %storemerge, ptr %8, align 8
  %.not = icmp eq ptr %storemerge, %1
  br i1 %.not, label %34, label %15

15:                                               ; preds = %13
  %16 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull %storemerge, ptr noundef %14)
  br i1 %16, label %17, label %28

17:                                               ; preds = %15
  %18 = load ptr, ptr %8, align 8
  %19 = load double, ptr %18, align 8
  store double %19, ptr %9, align 8
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %18, ptr %4, align 8
  store ptr %20, ptr %5, align 8
  %21 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %14)
  %22 = load ptr, ptr %4, align 8
  %23 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %22)
  %24 = load ptr, ptr %5, align 8
  %25 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %21, ptr noundef %23, ptr noundef %24)
  %26 = load double, ptr %9, align 8
  %27 = load ptr, ptr %7, align 8
  store double %26, ptr %27, align 8
  %.pre = load ptr, ptr %8, align 8
  br label %31

28:                                               ; preds = %15
  %29 = load ptr, ptr %8, align 8
  %30 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 undef)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %29, i8 undef)
  br label %31

31:                                               ; preds = %28, %17
  %32 = phi ptr [ %29, %28 ], [ %.pre, %17 ]
  %33 = phi ptr [ %14, %28 ], [ %27, %17 ]
  br label %13, !llvm.loop !110

34:                                               ; preds = %13, %11
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  br label %4

4:                                                ; preds = %6, %3
  %5 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %.not = icmp eq ptr %5, %1
  br i1 %.not, label %9, label %6

6:                                                ; preds = %4
  %7 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 undef)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %5, i8 undef)
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %4, !llvm.loop !111

9:                                                ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %0, i8 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_less_iter", align 1
  %4 = alloca double, align 8
  %5 = alloca ptr, align 8
  store i8 %1, ptr %3, align 1
  %6 = load double, ptr %0, align 8
  store double %6, ptr %4, align 8
  br label %7

7:                                                ; preds = %10, %2
  %.pn = phi ptr [ %0, %2 ], [ %12, %10 ]
  %8 = phi ptr [ %0, %2 ], [ %storemerge, %10 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  store ptr %storemerge, ptr %5, align 8
  %9 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %storemerge)
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load double, ptr %storemerge, align 8
  store double %11, ptr %8, align 8
  %12 = load ptr, ptr %5, align 8
  br label %7, !llvm.loop !112

13:                                               ; preds = %7
  %14 = load double, ptr %4, align 8
  store double %14, ptr %8, align 8
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
