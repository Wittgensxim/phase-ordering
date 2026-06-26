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
  br i1 %.not, label %21, label %10

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

21:                                               ; preds = %10, %7
  %22 = load double, ptr %3, align 8
  %23 = load ptr, ptr @results, align 8
  %24 = load i32, ptr @current_test, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [16 x i8], ptr %23, i64 %25
  store double %22, ptr %26, align 8
  %27 = load ptr, ptr %4, align 8
  %28 = load ptr, ptr @results, align 8
  %29 = sext i32 %24 to i64
  %30 = getelementptr inbounds [16 x i8], ptr %28, i64 %29
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 8
  store ptr %27, ptr %31, align 8
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
  br label %18

18:                                               ; preds = %34, %5
  %storemerge = phi i32 [ 0, %5 ], [ %36, %34 ]
  store i32 %storemerge, ptr %8, align 4
  %19 = load i32, ptr @current_test, align 4
  %20 = icmp slt i32 %storemerge, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %18
  %22 = load ptr, ptr @results, align 8
  %23 = load i32, ptr %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [16 x i8], ptr %22, i64 %24
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %27 = load ptr, ptr %26, align 8
  %28 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %27) #15
  %29 = trunc i64 %28 to i32
  store i32 %29, ptr %13, align 4
  %30 = load i32, ptr %12, align 4
  %31 = icmp slt i32 %30, %29
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, ptr %13, align 4
  store i32 %33, ptr %12, align 4
  br label %34

34:                                               ; preds = %21, %32
  %35 = load i32, ptr %8, align 4
  %36 = add nsw i32 %35, 1
  br label %18, !llvm.loop !7

37:                                               ; preds = %18
  %38 = load i32, ptr %12, align 4
  %39 = add nsw i32 %38, -12
  %40 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.1, i32 noundef %39, ptr noundef nonnull @.str.2)
  %41 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.3, i32 noundef %38, ptr noundef nonnull @.str.2)
  br label %42

42:                                               ; preds = %45, %37
  %storemerge1 = phi i32 [ 0, %37 ], [ %80, %45 ]
  store i32 %storemerge1, ptr %8, align 4
  %43 = load i32, ptr @current_test, align 4
  %44 = icmp slt i32 %storemerge1, %43
  br i1 %44, label %45, label %81

45:                                               ; preds = %42
  %46 = load i32, ptr %8, align 4
  %47 = load i32, ptr %12, align 4
  %48 = load ptr, ptr @results, align 8
  %49 = sext i32 %46 to i64
  %50 = getelementptr inbounds [16 x i8], ptr %48, i64 %49
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 8
  %52 = load ptr, ptr %51, align 8
  %53 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %52) #15
  %54 = trunc i64 %53 to i32
  %55 = sub i32 %47, %54
  %56 = load ptr, ptr @results, align 8
  %57 = load i32, ptr %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [16 x i8], ptr %56, i64 %58
  %60 = getelementptr inbounds nuw i8, ptr %59, i64 8
  %61 = load ptr, ptr %60, align 8
  %62 = sext i32 %57 to i64
  %63 = getelementptr inbounds [16 x i8], ptr %56, i64 %62
  %64 = load double, ptr %63, align 8
  %65 = load double, ptr %9, align 8
  %66 = load ptr, ptr @results, align 8
  %67 = load i32, ptr %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [16 x i8], ptr %66, i64 %68
  %70 = load double, ptr %69, align 8
  %71 = fdiv double %65, %70
  %72 = sext i32 %67 to i64
  %73 = getelementptr inbounds [16 x i8], ptr %66, i64 %72
  %74 = load double, ptr %73, align 8
  %75 = load ptr, ptr @results, align 8
  %76 = load double, ptr %75, align 8
  %77 = fdiv double %74, %76
  %78 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.4, i32 noundef %46, i32 noundef %55, ptr noundef nonnull @.str.5, ptr noundef %61, double noundef %64, double noundef %71, double noundef %77)
  %79 = load i32, ptr %8, align 4
  %80 = add nsw i32 %79, 1
  br label %42, !llvm.loop !9

81:                                               ; preds = %42, %84
  %storemerge2 = phi i32 [ %93, %84 ], [ 0, %42 ]
  store i32 %storemerge2, ptr %8, align 4
  %82 = load i32, ptr @current_test, align 4
  %83 = icmp slt i32 %storemerge2, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %81
  %85 = load ptr, ptr @results, align 8
  %86 = load i32, ptr %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [16 x i8], ptr %85, i64 %87
  %89 = load double, ptr %88, align 8
  %90 = load double, ptr %10, align 8
  %91 = fadd double %90, %89
  store double %91, ptr %10, align 8
  %92 = load i32, ptr %8, align 4
  %93 = add nsw i32 %92, 1
  br label %81, !llvm.loop !10

94:                                               ; preds = %81
  %95 = load ptr, ptr %6, align 8
  %96 = load double, ptr %10, align 8
  %97 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.6, ptr noundef %95, double noundef %96)
  %98 = load i32, ptr @current_test, align 4
  %99 = icmp sle i32 %98, 1
  %100 = load i32, ptr %7, align 4
  %.not = icmp eq i32 %100, 0
  %or.cond = select i1 %99, i1 true, i1 %.not
  br i1 %or.cond, label %126, label %101

101:                                              ; preds = %94, %104
  %storemerge3 = phi i32 [ %116, %104 ], [ 1, %94 ]
  store i32 %storemerge3, ptr %8, align 4
  %102 = load i32, ptr @current_test, align 4
  %103 = icmp slt i32 %storemerge3, %102
  br i1 %103, label %104, label %117

104:                                              ; preds = %101
  %105 = load ptr, ptr @results, align 8
  %106 = load i32, ptr %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [16 x i8], ptr %105, i64 %107
  %109 = load double, ptr %108, align 8
  %110 = load double, ptr %105, align 8
  %111 = fdiv double %109, %110
  %112 = call double @log(double noundef %111) #15
  %113 = load double, ptr %11, align 8
  %114 = fadd double %113, %112
  store double %114, ptr %11, align 8
  %115 = load i32, ptr %8, align 4
  %116 = add nsw i32 %115, 1
  br label %101, !llvm.loop !11

117:                                              ; preds = %101
  %118 = load ptr, ptr %6, align 8
  %119 = load double, ptr %11, align 8
  %120 = load i32, ptr @current_test, align 4
  %121 = add nsw i32 %120, -1
  %122 = sitofp i32 %121 to double
  %123 = fdiv double %119, %122
  %124 = call double @exp(double noundef %123) #15
  %125 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.7, ptr noundef %118, double noundef %124)
  br label %126

126:                                              ; preds = %117, %94
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
  br label %9

9:                                                ; preds = %25, %2
  %storemerge = phi i32 [ 0, %2 ], [ %27, %25 ]
  store i32 %storemerge, ptr %5, align 4
  %10 = load i32, ptr @current_test, align 4
  %11 = icmp slt i32 %storemerge, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = load ptr, ptr @results, align 8
  %14 = load i32, ptr %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [16 x i8], ptr %13, i64 %15
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %18 = load ptr, ptr %17, align 8
  %19 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %18) #15
  %20 = trunc i64 %19 to i32
  store i32 %20, ptr %8, align 4
  %21 = load i32, ptr %7, align 4
  %22 = icmp slt i32 %21, %20
  br i1 %22, label %23, label %25

23:                                               ; preds = %12
  %24 = load i32, ptr %8, align 4
  store i32 %24, ptr %7, align 4
  br label %25

25:                                               ; preds = %12, %23
  %26 = load i32, ptr %5, align 4
  %27 = add nsw i32 %26, 1
  br label %9, !llvm.loop !12

28:                                               ; preds = %9
  %29 = load ptr, ptr %3, align 8
  %30 = load i32, ptr %7, align 4
  %31 = add nsw i32 %30, -12
  %32 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %29, ptr noundef nonnull @.str.8, i32 noundef %31, ptr noundef nonnull @.str.2)
  %33 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %29, ptr noundef nonnull @.str.9, i32 noundef %30, ptr noundef nonnull @.str.2)
  br label %34

34:                                               ; preds = %37, %28
  %storemerge1 = phi i32 [ 0, %28 ], [ %60, %37 ]
  store i32 %storemerge1, ptr %5, align 4
  %35 = load i32, ptr @current_test, align 4
  %36 = icmp slt i32 %storemerge1, %35
  br i1 %36, label %37, label %61

37:                                               ; preds = %34
  %38 = load ptr, ptr %3, align 8
  %39 = load i32, ptr %5, align 4
  %40 = load i32, ptr %7, align 4
  %41 = load ptr, ptr @results, align 8
  %42 = sext i32 %39 to i64
  %43 = getelementptr inbounds [16 x i8], ptr %41, i64 %42
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 8
  %45 = load ptr, ptr %44, align 8
  %46 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %45) #15
  %47 = trunc i64 %46 to i32
  %48 = sub i32 %40, %47
  %49 = load ptr, ptr @results, align 8
  %50 = load i32, ptr %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [16 x i8], ptr %49, i64 %51
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 8
  %54 = load ptr, ptr %53, align 8
  %55 = sext i32 %50 to i64
  %56 = getelementptr inbounds [16 x i8], ptr %49, i64 %55
  %57 = load double, ptr %56, align 8
  %58 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %38, ptr noundef nonnull @.str.10, i32 noundef %39, i32 noundef %48, ptr noundef nonnull @.str.5, ptr noundef %54, double noundef %57)
  %59 = load i32, ptr %5, align 4
  %60 = add nsw i32 %59, 1
  br label %34, !llvm.loop !13

61:                                               ; preds = %34, %64
  %storemerge2 = phi i32 [ %73, %64 ], [ 0, %34 ]
  store i32 %storemerge2, ptr %5, align 4
  %62 = load i32, ptr @current_test, align 4
  %63 = icmp slt i32 %storemerge2, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %61
  %65 = load ptr, ptr @results, align 8
  %66 = load i32, ptr %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [16 x i8], ptr %65, i64 %67
  %69 = load double, ptr %68, align 8
  %70 = load double, ptr %6, align 8
  %71 = fadd double %70, %69
  store double %71, ptr %6, align 8
  %72 = load i32, ptr %5, align 4
  %73 = add nsw i32 %72, 1
  br label %61, !llvm.loop !14

74:                                               ; preds = %61
  %75 = load ptr, ptr %3, align 8
  %76 = load ptr, ptr %4, align 8
  %77 = load double, ptr %6, align 8
  %78 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %75, ptr noundef nonnull @.str.6, ptr noundef %76, double noundef %77)
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
  br i1 %13, label %14, label %55

14:                                               ; preds = %3
  %15 = load ptr, ptr %4, align 8
  %16 = load double, ptr %15, align 8
  store double %16, ptr %7, align 8
  store ptr %15, ptr %8, align 8
  %17 = load ptr, ptr %5, align 8
  store ptr %17, ptr %9, align 8
  br label %18

18:                                               ; preds = %43, %14
  br label %19

19:                                               ; preds = %19, %18
  %20 = load ptr, ptr %6, align 8
  %21 = load double, ptr %7, align 8
  %22 = load ptr, ptr %9, align 8
  %23 = getelementptr inbounds i8, ptr %22, i64 -8
  store ptr %23, ptr %9, align 8
  %24 = load double, ptr %23, align 8
  %25 = call noundef zeroext i1 %20(double noundef %21, double noundef %24)
  br i1 %25, label %19, label %26, !llvm.loop !15

26:                                               ; preds = %19
  %27 = load ptr, ptr %8, align 8
  %28 = load ptr, ptr %9, align 8
  %29 = icmp ult ptr %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %26, %36
  %31 = load ptr, ptr %6, align 8
  %32 = load ptr, ptr %8, align 8
  %33 = load double, ptr %32, align 8
  %34 = load double, ptr %7, align 8
  %35 = call noundef zeroext i1 %31(double noundef %33, double noundef %34)
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load ptr, ptr %8, align 8
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 8
  store ptr %38, ptr %8, align 8
  br label %30, !llvm.loop !16

39:                                               ; preds = %30
  %40 = load ptr, ptr %8, align 8
  %41 = load ptr, ptr %9, align 8
  %42 = icmp ult ptr %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load ptr, ptr %9, align 8
  %45 = load double, ptr %44, align 8
  %46 = load ptr, ptr %8, align 8
  %47 = load double, ptr %46, align 8
  store double %47, ptr %44, align 8
  store double %45, ptr %46, align 8
  br label %18, !llvm.loop !17

48:                                               ; preds = %39, %26
  %49 = load ptr, ptr %4, align 8
  %50 = load ptr, ptr %9, align 8
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 8
  %52 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %49, ptr noundef nonnull %51, ptr noundef %52)
  %53 = getelementptr inbounds nuw i8, ptr %50, i64 8
  %54 = load ptr, ptr %5, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %53, ptr noundef %54, ptr noundef %52)
  br label %55

55:                                               ; preds = %48, %3
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
  br i1 %13, label %14, label %55

14:                                               ; preds = %3
  %15 = load ptr, ptr %4, align 8
  %16 = load double, ptr %15, align 8
  store double %16, ptr %7, align 8
  store ptr %15, ptr %8, align 8
  %17 = load ptr, ptr %5, align 8
  store ptr %17, ptr %9, align 8
  br label %18

18:                                               ; preds = %43, %14
  br label %19

19:                                               ; preds = %19, %18
  %20 = load ptr, ptr %6, align 8
  %21 = load double, ptr %7, align 8
  %22 = load ptr, ptr %9, align 8
  %23 = getelementptr inbounds i8, ptr %22, i64 -8
  store ptr %23, ptr %9, align 8
  %24 = load double, ptr %23, align 8
  %25 = call noundef zeroext i1 %20(double noundef %21, double noundef %24)
  br i1 %25, label %19, label %26, !llvm.loop !18

26:                                               ; preds = %19
  %27 = load ptr, ptr %8, align 8
  %28 = load ptr, ptr %9, align 8
  %29 = icmp ult ptr %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %26, %36
  %31 = load ptr, ptr %6, align 8
  %32 = load ptr, ptr %8, align 8
  %33 = load double, ptr %32, align 8
  %34 = load double, ptr %7, align 8
  %35 = call noundef zeroext i1 %31(double noundef %33, double noundef %34)
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load ptr, ptr %8, align 8
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 8
  store ptr %38, ptr %8, align 8
  br label %30, !llvm.loop !19

39:                                               ; preds = %30
  %40 = load ptr, ptr %8, align 8
  %41 = load ptr, ptr %9, align 8
  %42 = icmp ult ptr %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load ptr, ptr %9, align 8
  %45 = load double, ptr %44, align 8
  %46 = load ptr, ptr %8, align 8
  %47 = load double, ptr %46, align 8
  store double %47, ptr %44, align 8
  store double %45, ptr %46, align 8
  br label %18, !llvm.loop !20

48:                                               ; preds = %39, %26
  %49 = load ptr, ptr %4, align 8
  %50 = load ptr, ptr %9, align 8
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 8
  %52 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %49, ptr noundef nonnull %51, ptr noundef %52)
  %53 = getelementptr inbounds nuw i8, ptr %50, i64 8
  %54 = load ptr, ptr %5, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %53, ptr noundef %54, ptr noundef %52)
  br label %55

55:                                               ; preds = %48, %3
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
  br label %17

17:                                               ; preds = %2, %12
  %18 = phi i32 [ %16, %12 ], [ 300, %2 ]
  store i32 %18, ptr %6, align 4
  %19 = load i32, ptr %3, align 4
  %20 = icmp sgt i32 %19, 2
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 16
  %24 = load ptr, ptr %23, align 8
  %25 = call i32 @atoi(ptr noundef %24)
  br label %26

26:                                               ; preds = %17, %21
  %27 = phi i32 [ %25, %21 ], [ 10000, %17 ]
  store i32 %27, ptr %7, align 4
  %28 = add nsw i32 %27, 123
  call void @srand(i32 noundef %28)
  %29 = sext i32 %27 to i64
  %30 = icmp slt i32 %27, 0
  %31 = shl nsw i64 %29, 3
  %32 = select i1 %30, i64 -1, i64 %31
  %33 = call noalias noundef nonnull ptr @_Znay(i64 noundef %32) #16
  store ptr %33, ptr %8, align 8
  br label %34

34:                                               ; preds = %37, %26
  %storemerge = phi i32 [ 0, %26 ], [ %45, %37 ]
  store i32 %storemerge, ptr %9, align 4
  %35 = load i32, ptr %7, align 4
  %36 = icmp slt i32 %storemerge, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = call i32 @rand()
  %39 = sitofp i32 %38 to double
  %40 = load ptr, ptr %8, align 8
  %41 = load i32, ptr %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [8 x i8], ptr %40, i64 %42
  store double %39, ptr %43, align 8
  %44 = load i32, ptr %9, align 4
  %45 = add nsw i32 %44, 1
  br label %34, !llvm.loop !21

46:                                               ; preds = %34
  %47 = load i32, ptr %7, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp slt i32 %47, 0
  %50 = shl nsw i64 %48, 3
  %51 = select i1 %49, i64 -1, i64 %50
  %52 = call noalias noundef nonnull ptr @_Znay(i64 noundef %51) #16
  store ptr %52, ptr %10, align 8
  br label %53

53:                                               ; preds = %56, %46
  %storemerge1 = phi i32 [ 0, %46 ], [ %68, %56 ]
  store i32 %storemerge1, ptr %5, align 4
  %54 = load i32, ptr %6, align 4
  %55 = icmp slt i32 %storemerge1, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load ptr, ptr %8, align 8
  %58 = load i32, ptr %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [8 x i8], ptr %57, i64 %59
  %61 = load ptr, ptr %10, align 8
  %62 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %57, ptr noundef %60, ptr noundef %61)
  %63 = sext i32 %58 to i64
  call void @qsort(ptr noundef %61, i64 noundef %63, i64 noundef 8, ptr noundef nonnull @_Z19less_than_function1PKvS0_)
  %64 = load i32, ptr %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [8 x i8], ptr %61, i64 %65
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %61, ptr noundef %66)
  %67 = load i32, ptr %5, align 4
  %68 = add nsw i32 %67, 1
  br label %53, !llvm.loop !22

69:                                               ; preds = %53, %72
  %storemerge2 = phi i32 [ %85, %72 ], [ 0, %53 ]
  store i32 %storemerge2, ptr %5, align 4
  %70 = load i32, ptr %6, align 4
  %71 = icmp slt i32 %storemerge2, %70
  br i1 %71, label %72, label %86

72:                                               ; preds = %69
  %73 = load ptr, ptr %8, align 8
  %74 = load i32, ptr %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [8 x i8], ptr %73, i64 %75
  %77 = load ptr, ptr %10, align 8
  %78 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %73, ptr noundef %76, ptr noundef %77)
  %79 = sext i32 %74 to i64
  %80 = getelementptr inbounds [8 x i8], ptr %77, i64 %79
  call void @_Z18quicksort_functionPdS_PFbddE(ptr noundef %77, ptr noundef %80, ptr noundef nonnull @_Z19less_than_function2dd)
  %81 = load i32, ptr %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [8 x i8], ptr %77, i64 %82
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %77, ptr noundef %83)
  %84 = load i32, ptr %5, align 4
  %85 = add nsw i32 %84, 1
  br label %69, !llvm.loop !23

86:                                               ; preds = %69, %89
  %storemerge3 = phi i32 [ %102, %89 ], [ 0, %69 ]
  store i32 %storemerge3, ptr %5, align 4
  %87 = load i32, ptr %6, align 4
  %88 = icmp slt i32 %storemerge3, %87
  br i1 %88, label %89, label %103

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8
  %91 = load i32, ptr %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [8 x i8], ptr %90, i64 %92
  %94 = load ptr, ptr %10, align 8
  %95 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %90, ptr noundef %93, ptr noundef %94)
  %96 = sext i32 %91 to i64
  %97 = getelementptr inbounds [8 x i8], ptr %94, i64 %96
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %94, ptr noundef %97, ptr noundef nonnull @_Z19less_than_function2dd)
  %98 = load i32, ptr %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [8 x i8], ptr %94, i64 %99
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %94, ptr noundef %100)
  %101 = load i32, ptr %5, align 4
  %102 = add nsw i32 %101, 1
  br label %86, !llvm.loop !24

103:                                              ; preds = %86, %106
  %storemerge4 = phi i32 [ %119, %106 ], [ 0, %86 ]
  store i32 %storemerge4, ptr %5, align 4
  %104 = load i32, ptr %6, align 4
  %105 = icmp slt i32 %storemerge4, %104
  br i1 %105, label %106, label %120

106:                                              ; preds = %103
  %107 = load ptr, ptr %8, align 8
  %108 = load i32, ptr %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [8 x i8], ptr %107, i64 %109
  %111 = load ptr, ptr %10, align 8
  %112 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %107, ptr noundef %110, ptr noundef %111)
  %113 = sext i32 %108 to i64
  %114 = getelementptr inbounds [8 x i8], ptr %111, i64 %113
  call void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef %111, ptr noundef %114)
  %115 = load i32, ptr %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [8 x i8], ptr %111, i64 %116
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %111, ptr noundef %117)
  %118 = load i32, ptr %5, align 4
  %119 = add nsw i32 %118, 1
  br label %103, !llvm.loop !25

120:                                              ; preds = %103, %123
  %storemerge5 = phi i32 [ %136, %123 ], [ 0, %103 ]
  store i32 %storemerge5, ptr %5, align 4
  %121 = load i32, ptr %6, align 4
  %122 = icmp slt i32 %storemerge5, %121
  br i1 %122, label %123, label %137

123:                                              ; preds = %120
  %124 = load ptr, ptr %8, align 8
  %125 = load i32, ptr %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [8 x i8], ptr %124, i64 %126
  %128 = load ptr, ptr %10, align 8
  %129 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %124, ptr noundef %127, ptr noundef %128)
  %130 = sext i32 %125 to i64
  %131 = getelementptr inbounds [8 x i8], ptr %128, i64 %130
  call void @_ZSt4sortIPdPFbddEEvT_S3_T0_(ptr noundef %128, ptr noundef %131, ptr noundef nonnull @_Z19less_than_function2dd)
  %132 = load i32, ptr %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [8 x i8], ptr %128, i64 %133
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %128, ptr noundef %134)
  %135 = load i32, ptr %5, align 4
  %136 = add nsw i32 %135, 1
  br label %120, !llvm.loop !26

137:                                              ; preds = %120, %140
  %storemerge6 = phi i32 [ %153, %140 ], [ 0, %120 ]
  store i32 %storemerge6, ptr %5, align 4
  %138 = load i32, ptr %6, align 4
  %139 = icmp slt i32 %storemerge6, %138
  br i1 %139, label %140, label %154

140:                                              ; preds = %137
  %141 = load ptr, ptr %8, align 8
  %142 = load i32, ptr %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [8 x i8], ptr %141, i64 %143
  %145 = load ptr, ptr %10, align 8
  %146 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %141, ptr noundef %144, ptr noundef %145)
  %147 = sext i32 %142 to i64
  %148 = getelementptr inbounds [8 x i8], ptr %145, i64 %147
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %145, ptr noundef %148, i8 undef)
  %149 = load i32, ptr %7, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [8 x i8], ptr %145, i64 %150
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %145, ptr noundef %151)
  %152 = load i32, ptr %5, align 4
  %153 = add nsw i32 %152, 1
  br label %137, !llvm.loop !27

154:                                              ; preds = %137, %157
  %storemerge7 = phi i32 [ %171, %157 ], [ 0, %137 ]
  store i32 %storemerge7, ptr %5, align 4
  %155 = load i32, ptr %6, align 4
  %156 = icmp slt i32 %storemerge7, %155
  br i1 %156, label %157, label %172

157:                                              ; preds = %154
  %158 = load ptr, ptr %10, align 8
  %159 = load i32, ptr %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [8 x i8], ptr %158, i64 %160
  call void @_ZSt4sortIPd17less_than_functorEvT_S2_T0_(ptr noundef %158, ptr noundef %161, i8 undef)
  %162 = sext i32 %159 to i64
  %163 = getelementptr inbounds [8 x i8], ptr %158, i64 %162
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %158, ptr noundef %163)
  %164 = load ptr, ptr %8, align 8
  %165 = load i32, ptr %7, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [8 x i8], ptr %164, i64 %166
  %168 = load ptr, ptr %10, align 8
  %169 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %164, ptr noundef %167, ptr noundef %168)
  %170 = load i32, ptr %5, align 4
  %171 = add nsw i32 %170, 1
  br label %154, !llvm.loop !28

172:                                              ; preds = %154, %175
  %storemerge8 = phi i32 [ %188, %175 ], [ 0, %154 ]
  store i32 %storemerge8, ptr %5, align 4
  %173 = load i32, ptr %6, align 4
  %174 = icmp slt i32 %storemerge8, %173
  br i1 %174, label %175, label %189

175:                                              ; preds = %172
  %176 = load ptr, ptr %8, align 8
  %177 = load i32, ptr %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [8 x i8], ptr %176, i64 %178
  %180 = load ptr, ptr %10, align 8
  %181 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %176, ptr noundef %179, ptr noundef %180)
  %182 = sext i32 %177 to i64
  %183 = getelementptr inbounds [8 x i8], ptr %180, i64 %182
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %180, ptr noundef %183, i8 undef)
  %184 = load i32, ptr %7, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [8 x i8], ptr %180, i64 %185
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %180, ptr noundef %186)
  %187 = load i32, ptr %5, align 4
  %188 = add nsw i32 %187, 1
  br label %172, !llvm.loop !29

189:                                              ; preds = %172, %192
  %storemerge9 = phi i32 [ %205, %192 ], [ 0, %172 ]
  store i32 %storemerge9, ptr %5, align 4
  %190 = load i32, ptr %6, align 4
  %191 = icmp slt i32 %storemerge9, %190
  br i1 %191, label %192, label %206

192:                                              ; preds = %189
  %193 = load ptr, ptr %8, align 8
  %194 = load i32, ptr %7, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [8 x i8], ptr %193, i64 %195
  %197 = load ptr, ptr %10, align 8
  %198 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %193, ptr noundef %196, ptr noundef %197)
  %199 = sext i32 %194 to i64
  %200 = getelementptr inbounds [8 x i8], ptr %197, i64 %199
  call void @_ZSt4sortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %197, ptr noundef %200, i8 undef)
  %201 = load i32, ptr %7, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [8 x i8], ptr %197, i64 %202
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %197, ptr noundef %203)
  %204 = load i32, ptr %5, align 4
  %205 = add nsw i32 %204, 1
  br label %189, !llvm.loop !30

206:                                              ; preds = %189, %209
  %storemerge10 = phi i32 [ %222, %209 ], [ 0, %189 ]
  store i32 %storemerge10, ptr %5, align 4
  %207 = load i32, ptr %6, align 4
  %208 = icmp slt i32 %storemerge10, %207
  br i1 %208, label %209, label %223

209:                                              ; preds = %206
  %210 = load ptr, ptr %8, align 8
  %211 = load i32, ptr %7, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [8 x i8], ptr %210, i64 %212
  %214 = load ptr, ptr %10, align 8
  %215 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %210, ptr noundef %213, ptr noundef %214)
  %216 = sext i32 %211 to i64
  %217 = getelementptr inbounds [8 x i8], ptr %214, i64 %216
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %214, ptr noundef %217, i8 undef)
  %218 = load i32, ptr %7, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [8 x i8], ptr %214, i64 %219
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %214, ptr noundef %220)
  %221 = load i32, ptr %5, align 4
  %222 = add nsw i32 %221, 1
  br label %206, !llvm.loop !31

223:                                              ; preds = %206, %226
  %storemerge11 = phi i32 [ %239, %226 ], [ 0, %206 ]
  store i32 %storemerge11, ptr %5, align 4
  %224 = load i32, ptr %6, align 4
  %225 = icmp slt i32 %storemerge11, %224
  br i1 %225, label %226, label %240

226:                                              ; preds = %223
  %227 = load ptr, ptr %8, align 8
  %228 = load i32, ptr %7, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [8 x i8], ptr %227, i64 %229
  %231 = load ptr, ptr %10, align 8
  %232 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %227, ptr noundef %230, ptr noundef %231)
  %233 = sext i32 %228 to i64
  %234 = getelementptr inbounds [8 x i8], ptr %231, i64 %233
  call void @_ZSt4sortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %231, ptr noundef %234, i8 undef)
  %235 = load i32, ptr %7, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [8 x i8], ptr %231, i64 %236
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %231, ptr noundef %237)
  %238 = load i32, ptr %5, align 4
  %239 = add nsw i32 %238, 1
  br label %223, !llvm.loop !32

240:                                              ; preds = %223, %243
  %storemerge12 = phi i32 [ %256, %243 ], [ 0, %223 ]
  store i32 %storemerge12, ptr %5, align 4
  %241 = load i32, ptr %6, align 4
  %242 = icmp slt i32 %storemerge12, %241
  br i1 %242, label %243, label %257

243:                                              ; preds = %240
  %244 = load ptr, ptr %8, align 8
  %245 = load i32, ptr %7, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [8 x i8], ptr %244, i64 %246
  %248 = load ptr, ptr %10, align 8
  %249 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %244, ptr noundef %247, ptr noundef %248)
  %250 = sext i32 %245 to i64
  %251 = getelementptr inbounds [8 x i8], ptr %248, i64 %250
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %248, ptr noundef %251)
  %252 = load i32, ptr %7, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [8 x i8], ptr %248, i64 %253
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %248, ptr noundef %254)
  %255 = load i32, ptr %5, align 4
  %256 = add nsw i32 %255, 1
  br label %240, !llvm.loop !33

257:                                              ; preds = %240, %260
  %storemerge13 = phi i32 [ %273, %260 ], [ 0, %240 ]
  store i32 %storemerge13, ptr %5, align 4
  %258 = load i32, ptr %6, align 4
  %259 = icmp slt i32 %storemerge13, %258
  br i1 %259, label %260, label %274

260:                                              ; preds = %257
  %261 = load ptr, ptr %8, align 8
  %262 = load i32, ptr %7, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [8 x i8], ptr %261, i64 %263
  %265 = load ptr, ptr %10, align 8
  %266 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %261, ptr noundef %264, ptr noundef %265)
  %267 = sext i32 %262 to i64
  %268 = getelementptr inbounds [8 x i8], ptr %265, i64 %267
  call void @_ZSt4sortIPdEvT_S1_(ptr noundef %265, ptr noundef %268)
  %269 = load i32, ptr %7, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [8 x i8], ptr %265, i64 %270
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %265, ptr noundef %271)
  %272 = load i32, ptr %5, align 4
  %273 = add nsw i32 %272, 1
  br label %257, !llvm.loop !34

274:                                              ; preds = %257
  %275 = load ptr, ptr %10, align 8
  %276 = icmp eq ptr %275, null
  br i1 %276, label %278, label %277

277:                                              ; preds = %274
  call void @_ZdaPv(ptr noundef nonnull %275) #17
  br label %278

278:                                              ; preds = %277, %274
  %279 = load ptr, ptr %8, align 8
  %280 = icmp eq ptr %279, null
  br i1 %280, label %282, label %281

281:                                              ; preds = %278
  call void @_ZdaPv(ptr noundef nonnull %279) #17
  br label %282

282:                                              ; preds = %281, %278
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

7:                                                ; preds = %10, %2
  %8 = load ptr, ptr %3, align 8
  %9 = load ptr, ptr %4, align 8
  %.not = icmp eq ptr %8, %9
  br i1 %.not, label %21, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %12, ptr %3, align 8
  %13 = load double, ptr %11, align 8
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %15, ptr %5, align 8
  %16 = load double, ptr %14, align 8
  %17 = fcmp olt double %13, %16
  br i1 %17, label %18, label %7, !llvm.loop !35

18:                                               ; preds = %10
  %19 = load i32, ptr @current_test, align 4
  %20 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.11, i32 noundef %19)
  br label %21

21:                                               ; preds = %18, %7
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
  br i1 %11, label %12, label %50

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 8
  %14 = load double, ptr %13, align 8
  store double %14, ptr %5, align 8
  store ptr %13, ptr %6, align 8
  %15 = load ptr, ptr %4, align 8
  store ptr %15, ptr %7, align 8
  br label %16

16:                                               ; preds = %39, %12
  br label %17

17:                                               ; preds = %17, %16
  %18 = load double, ptr %5, align 8
  %19 = load ptr, ptr %7, align 8
  %20 = getelementptr inbounds i8, ptr %19, i64 -8
  store ptr %20, ptr %7, align 8
  %21 = load double, ptr %20, align 8
  %22 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %18, double noundef %21)
  br i1 %22, label %17, label %23, !llvm.loop !36

23:                                               ; preds = %17
  %24 = load ptr, ptr %6, align 8
  %25 = load ptr, ptr %7, align 8
  %26 = icmp ult ptr %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %23, %32
  %28 = load ptr, ptr %6, align 8
  %29 = load double, ptr %28, align 8
  %30 = load double, ptr %5, align 8
  %31 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %29, double noundef %30)
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load ptr, ptr %6, align 8
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 8
  store ptr %34, ptr %6, align 8
  br label %27, !llvm.loop !37

35:                                               ; preds = %27
  %36 = load ptr, ptr %6, align 8
  %37 = load ptr, ptr %7, align 8
  %38 = icmp ult ptr %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load ptr, ptr %7, align 8
  %41 = load double, ptr %40, align 8
  %42 = load ptr, ptr %6, align 8
  %43 = load double, ptr %42, align 8
  store double %43, ptr %40, align 8
  store double %41, ptr %42, align 8
  br label %16, !llvm.loop !38

44:                                               ; preds = %35, %23
  %45 = load ptr, ptr %3, align 8
  %46 = load ptr, ptr %7, align 8
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %45, ptr noundef nonnull %47, ptr noundef nonnull @_Z19less_than_function2dd)
  %48 = getelementptr inbounds nuw i8, ptr %46, i64 8
  %49 = load ptr, ptr %4, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %48, ptr noundef %49, ptr noundef nonnull @_Z19less_than_function2dd)
  br label %50

50:                                               ; preds = %44, %2
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
  %15 = load ptr, ptr %5, align 8
  %16 = load double, ptr %15, align 8
  store double %16, ptr %7, align 8
  store ptr %15, ptr %8, align 8
  %17 = load ptr, ptr %6, align 8
  store ptr %17, ptr %9, align 8
  br label %18

18:                                               ; preds = %37, %14
  br label %19

19:                                               ; preds = %19, %18
  %20 = load ptr, ptr %9, align 8
  %21 = getelementptr inbounds i8, ptr %20, i64 -8
  store ptr %21, ptr %9, align 8
  %22 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %21)
  br i1 %22, label %19, label %23, !llvm.loop !39

23:                                               ; preds = %19
  %24 = load ptr, ptr %8, align 8
  %25 = load ptr, ptr %9, align 8
  %26 = icmp ult ptr %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %23, %30
  %28 = load ptr, ptr %8, align 8
  %29 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load ptr, ptr %8, align 8
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr %32, ptr %8, align 8
  br label %27, !llvm.loop !40

33:                                               ; preds = %27
  %34 = load ptr, ptr %8, align 8
  %35 = load ptr, ptr %9, align 8
  %36 = icmp ult ptr %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load ptr, ptr %9, align 8
  %39 = load double, ptr %38, align 8
  %40 = load ptr, ptr %8, align 8
  %41 = load double, ptr %40, align 8
  store double %41, ptr %38, align 8
  store double %39, ptr %40, align 8
  br label %18, !llvm.loop !41

42:                                               ; preds = %33, %23
  %43 = load ptr, ptr %5, align 8
  %44 = load ptr, ptr %9, align 8
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 8
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %43, ptr noundef nonnull %45, i8 undef)
  %46 = getelementptr inbounds nuw i8, ptr %44, i64 8
  %47 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef nonnull %46, ptr noundef %47, i8 undef)
  br label %48

48:                                               ; preds = %42, %3
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
  %15 = load ptr, ptr %5, align 8
  %16 = load double, ptr %15, align 8
  store double %16, ptr %7, align 8
  store ptr %15, ptr %8, align 8
  %17 = load ptr, ptr %6, align 8
  store ptr %17, ptr %9, align 8
  br label %18

18:                                               ; preds = %37, %14
  br label %19

19:                                               ; preds = %19, %18
  %20 = load ptr, ptr %9, align 8
  %21 = getelementptr inbounds i8, ptr %20, i64 -8
  store ptr %21, ptr %9, align 8
  %22 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %21)
  br i1 %22, label %19, label %23, !llvm.loop !42

23:                                               ; preds = %19
  %24 = load ptr, ptr %8, align 8
  %25 = load ptr, ptr %9, align 8
  %26 = icmp ult ptr %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %23, %30
  %28 = load ptr, ptr %8, align 8
  %29 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load ptr, ptr %8, align 8
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr %32, ptr %8, align 8
  br label %27, !llvm.loop !43

33:                                               ; preds = %27
  %34 = load ptr, ptr %8, align 8
  %35 = load ptr, ptr %9, align 8
  %36 = icmp ult ptr %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load ptr, ptr %9, align 8
  %39 = load double, ptr %38, align 8
  %40 = load ptr, ptr %8, align 8
  %41 = load double, ptr %40, align 8
  store double %41, ptr %38, align 8
  store double %39, ptr %40, align 8
  br label %18, !llvm.loop !44

42:                                               ; preds = %33, %23
  %43 = load ptr, ptr %5, align 8
  %44 = load ptr, ptr %9, align 8
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 8
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %43, ptr noundef nonnull %45, i8 undef)
  %46 = getelementptr inbounds nuw i8, ptr %44, i64 8
  %47 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef nonnull %46, ptr noundef %47, i8 undef)
  br label %48

48:                                               ; preds = %42, %3
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
  %15 = load ptr, ptr %5, align 8
  %16 = load double, ptr %15, align 8
  store double %16, ptr %7, align 8
  store ptr %15, ptr %8, align 8
  %17 = load ptr, ptr %6, align 8
  store ptr %17, ptr %9, align 8
  br label %18

18:                                               ; preds = %37, %14
  br label %19

19:                                               ; preds = %19, %18
  %20 = load ptr, ptr %9, align 8
  %21 = getelementptr inbounds i8, ptr %20, i64 -8
  store ptr %21, ptr %9, align 8
  %22 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %21)
  br i1 %22, label %19, label %23, !llvm.loop !45

23:                                               ; preds = %19
  %24 = load ptr, ptr %8, align 8
  %25 = load ptr, ptr %9, align 8
  %26 = icmp ult ptr %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %23, %30
  %28 = load ptr, ptr %8, align 8
  %29 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load ptr, ptr %8, align 8
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr %32, ptr %8, align 8
  br label %27, !llvm.loop !46

33:                                               ; preds = %27
  %34 = load ptr, ptr %8, align 8
  %35 = load ptr, ptr %9, align 8
  %36 = icmp ult ptr %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load ptr, ptr %9, align 8
  %39 = load double, ptr %38, align 8
  %40 = load ptr, ptr %8, align 8
  %41 = load double, ptr %40, align 8
  store double %41, ptr %38, align 8
  store double %39, ptr %40, align 8
  br label %18, !llvm.loop !47

42:                                               ; preds = %33, %23
  %43 = load ptr, ptr %5, align 8
  %44 = load ptr, ptr %9, align 8
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 8
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %43, ptr noundef nonnull %45, i8 undef)
  %46 = getelementptr inbounds nuw i8, ptr %44, i64 8
  %47 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef nonnull %46, ptr noundef %47, i8 undef)
  br label %48

48:                                               ; preds = %42, %3
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
  br i1 %11, label %12, label %50

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 8
  %14 = load double, ptr %13, align 8
  store double %14, ptr %5, align 8
  store ptr %13, ptr %6, align 8
  %15 = load ptr, ptr %4, align 8
  store ptr %15, ptr %7, align 8
  br label %16

16:                                               ; preds = %39, %12
  br label %17

17:                                               ; preds = %17, %16
  %18 = load double, ptr %5, align 8
  %19 = load ptr, ptr %7, align 8
  %20 = getelementptr inbounds i8, ptr %19, i64 -8
  store ptr %20, ptr %7, align 8
  %21 = load double, ptr %20, align 8
  %22 = fcmp olt double %18, %21
  br i1 %22, label %17, label %23, !llvm.loop !48

23:                                               ; preds = %17
  %24 = load ptr, ptr %6, align 8
  %25 = load ptr, ptr %7, align 8
  %26 = icmp ult ptr %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %23, %32
  %28 = load ptr, ptr %6, align 8
  %29 = load double, ptr %28, align 8
  %30 = load double, ptr %5, align 8
  %31 = fcmp olt double %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load ptr, ptr %6, align 8
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 8
  store ptr %34, ptr %6, align 8
  br label %27, !llvm.loop !49

35:                                               ; preds = %27
  %36 = load ptr, ptr %6, align 8
  %37 = load ptr, ptr %7, align 8
  %38 = icmp ult ptr %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load ptr, ptr %7, align 8
  %41 = load double, ptr %40, align 8
  %42 = load ptr, ptr %6, align 8
  %43 = load double, ptr %42, align 8
  store double %43, ptr %40, align 8
  store double %41, ptr %42, align 8
  br label %16, !llvm.loop !50

44:                                               ; preds = %35, %23
  %45 = load ptr, ptr %3, align 8
  %46 = load ptr, ptr %7, align 8
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 8
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %45, ptr noundef nonnull %47)
  %48 = getelementptr inbounds nuw i8, ptr %46, i64 8
  %49 = load ptr, ptr %4, align 8
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef nonnull %48, ptr noundef %49)
  br label %50

50:                                               ; preds = %44, %2
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
  br label %26

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

26:                                               ; preds = %18, %21, %12
  %27 = load ptr, ptr %5, align 8
  ret ptr %27
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
  br label %10

10:                                               ; preds = %24, %4
  %11 = load ptr, ptr %7, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = ptrtoint ptr %11 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = icmp sgt i64 %15, 128
  br i1 %16, label %17, label %31

17:                                               ; preds = %10
  %18 = load i64, ptr %8, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load ptr, ptr %6, align 8
  %22 = load ptr, ptr %7, align 8
  %23 = load i64, ptr %5, align 8
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %21, ptr noundef %22, ptr noundef %22, i64 %23)
  br label %31

24:                                               ; preds = %17
  %25 = load i64, ptr %8, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, ptr %8, align 8
  %27 = load ptr, ptr %6, align 8
  %28 = load ptr, ptr %7, align 8
  %29 = load i64, ptr %5, align 8
  %30 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_(ptr noundef %27, ptr noundef %28, i64 %29)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %30, ptr noundef %28, i64 noundef %26, i64 %29)
  store ptr %30, ptr %7, align 8
  br label %10, !llvm.loop !51

31:                                               ; preds = %20, %10
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
  br label %11

11:                                               ; preds = %22, %4
  %storemerge = phi ptr [ %1, %4 ], [ %24, %22 ]
  store ptr %storemerge, ptr %9, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = icmp ult ptr %storemerge, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load ptr, ptr %9, align 8
  %16 = load ptr, ptr %6, align 8
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %15, ptr noundef %16)
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load ptr, ptr %6, align 8
  %20 = load ptr, ptr %7, align 8
  %21 = load ptr, ptr %9, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %22

22:                                               ; preds = %14, %18
  %23 = load ptr, ptr %9, align 8
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 8
  br label %11, !llvm.loop !52

25:                                               ; preds = %11
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
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = ptrtoint ptr %8 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = icmp sgt i64 %12, 8
  br i1 %13, label %14, label %19

14:                                               ; preds = %7
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds i8, ptr %15, i64 -8
  store ptr %16, ptr %5, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = load ptr, ptr %6, align 8, !nonnull !53, !align !54
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %17, ptr noundef nonnull %16, ptr noundef nonnull %16, ptr noundef nonnull align 8 dereferenceable(8) %18)
  br label %7, !llvm.loop !55

19:                                               ; preds = %7
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
  br i1 %12, label %34, label %13

13:                                               ; preds = %3
  %14 = load ptr, ptr %5, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = ptrtoint ptr %14 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %16, %17
  %19 = ashr exact i64 %18, 3
  store i64 %19, ptr %7, align 8
  %20 = add nsw i64 %19, -2
  %21 = sdiv i64 %20, 2
  br label %22

22:                                               ; preds = %31, %13
  %storemerge = phi i64 [ %21, %13 ], [ %33, %31 ]
  store i64 %storemerge, ptr %8, align 8
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds [8 x i8], ptr %23, i64 %storemerge
  %25 = load double, ptr %24, align 8
  %26 = load i64, ptr %7, align 8
  %27 = load ptr, ptr %6, align 8, !nonnull !53, !align !54
  %28 = load i64, ptr %27, align 8
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef %23, i64 noundef %storemerge, i64 noundef %26, double noundef %25, i64 %28)
  %29 = load i64, ptr %8, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %22
  %32 = load i64, ptr %8, align 8
  %33 = add nsw i64 %32, -1
  br label %22, !llvm.loop !56

34:                                               ; preds = %22, %3
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
  br label %15

15:                                               ; preds = %33, %5
  %16 = load i64, ptr %12, align 8
  %17 = load i64, ptr %9, align 8
  %18 = add nsw i64 %17, -1
  %19 = sdiv i64 %18, 2
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %15
  %22 = load i64, ptr %12, align 8
  %23 = shl i64 %22, 1
  %24 = add i64 %23, 2
  store i64 %24, ptr %12, align 8
  %25 = load ptr, ptr %7, align 8
  %26 = getelementptr inbounds [8 x i8], ptr %25, i64 %24
  %27 = getelementptr [8 x i8], ptr %25, i64 %23
  %28 = getelementptr i8, ptr %27, i64 8
  %29 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %26, ptr noundef %28)
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i64, ptr %12, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, ptr %12, align 8
  br label %33

33:                                               ; preds = %30, %21
  %34 = load ptr, ptr %7, align 8
  %35 = load i64, ptr %12, align 8
  %36 = getelementptr inbounds [8 x i8], ptr %34, i64 %35
  %37 = load double, ptr %36, align 8
  %38 = load i64, ptr %8, align 8
  %39 = getelementptr inbounds [8 x i8], ptr %34, i64 %38
  store double %37, ptr %39, align 8
  store i64 %35, ptr %8, align 8
  br label %15, !llvm.loop !57

40:                                               ; preds = %15
  %41 = load i64, ptr %9, align 8
  %42 = and i64 %41, 1
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %40
  %45 = load i64, ptr %12, align 8
  %46 = load i64, ptr %9, align 8
  %47 = add nsw i64 %46, -2
  %48 = sdiv i64 %47, 2
  %49 = icmp eq i64 %45, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %44
  %51 = load i64, ptr %12, align 8
  %52 = shl i64 %51, 1
  %53 = add i64 %52, 2
  store i64 %53, ptr %12, align 8
  %54 = load ptr, ptr %7, align 8
  %55 = getelementptr [8 x i8], ptr %54, i64 %52
  %56 = getelementptr i8, ptr %55, i64 8
  %57 = load double, ptr %56, align 8
  %58 = load i64, ptr %8, align 8
  %59 = getelementptr inbounds [8 x i8], ptr %54, i64 %58
  store double %57, ptr %59, align 8
  %60 = load i64, ptr %12, align 8
  %61 = add nsw i64 %60, -1
  store i64 %61, ptr %8, align 8
  br label %62

62:                                               ; preds = %50, %44, %40
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %63 = load ptr, ptr %7, align 8
  %64 = load i64, ptr %8, align 8
  %65 = load i64, ptr %11, align 8
  %66 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEEEvT_T0_S8_T1_RT2_(ptr noundef %63, i64 noundef %64, i64 noundef %65, double noundef %66, ptr noundef nonnull align 8 dereferenceable(8) %13)
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

12:                                               ; preds = %22, %5
  %storemerge.in.in = phi i64 [ %1, %5 ], [ %24, %22 ]
  %storemerge.in = add nsw i64 %storemerge.in.in, -1
  %storemerge = sdiv i64 %storemerge.in, 2
  store i64 %storemerge, ptr %11, align 8
  %13 = load i64, ptr %7, align 8
  %14 = load i64, ptr %8, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %.critedge

16:                                               ; preds = %12
  %17 = load ptr, ptr %10, align 8, !nonnull !53, !align !54
  %18 = load ptr, ptr %6, align 8
  %19 = load i64, ptr %11, align 8
  %20 = getelementptr inbounds [8 x i8], ptr %18, i64 %19
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEclIPddEEbT_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br i1 %21, label %22, label %.critedge

22:                                               ; preds = %16
  %23 = load ptr, ptr %6, align 8
  %24 = load i64, ptr %11, align 8
  %25 = getelementptr inbounds [8 x i8], ptr %23, i64 %24
  %26 = load double, ptr %25, align 8
  %27 = load i64, ptr %7, align 8
  %28 = getelementptr inbounds [8 x i8], ptr %23, i64 %27
  store double %26, ptr %28, align 8
  store i64 %24, ptr %7, align 8
  br label %12, !llvm.loop !58

.critedge:                                        ; preds = %12, %16
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
  br i1 %12, label %13, label %30

13:                                               ; preds = %5
  %14 = load ptr, ptr %9, align 8
  %15 = load ptr, ptr %10, align 8
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %14, ptr noundef %15)
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load ptr, ptr %7, align 8
  %19 = load ptr, ptr %9, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %18, ptr noundef %19)
  br label %47

20:                                               ; preds = %13
  %21 = load ptr, ptr %8, align 8
  %22 = load ptr, ptr %10, align 8
  %23 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %21, ptr noundef %22)
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load ptr, ptr %7, align 8
  %26 = load ptr, ptr %10, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %25, ptr noundef %26)
  br label %47

27:                                               ; preds = %20
  %28 = load ptr, ptr %7, align 8
  %29 = load ptr, ptr %8, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %28, ptr noundef %29)
  br label %47

30:                                               ; preds = %5
  %31 = load ptr, ptr %8, align 8
  %32 = load ptr, ptr %10, align 8
  %33 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %31, ptr noundef %32)
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load ptr, ptr %7, align 8
  %36 = load ptr, ptr %8, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %35, ptr noundef %36)
  br label %47

37:                                               ; preds = %30
  %38 = load ptr, ptr %9, align 8
  %39 = load ptr, ptr %10, align 8
  %40 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %38, ptr noundef %39)
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load ptr, ptr %7, align 8
  %43 = load ptr, ptr %10, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %42, ptr noundef %43)
  br label %47

44:                                               ; preds = %37
  %45 = load ptr, ptr %7, align 8
  %46 = load ptr, ptr %9, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %45, ptr noundef %46)
  br label %47

47:                                               ; preds = %34, %44, %41, %17, %27, %24
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
  br label %11

11:                                               ; preds = %15, %10
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %8, align 8
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %12, ptr noundef %13)
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load ptr, ptr %6, align 8
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %17, ptr %6, align 8
  br label %11, !llvm.loop !59

18:                                               ; preds = %11
  %19 = load ptr, ptr %7, align 8
  br label %20

20:                                               ; preds = %23, %18
  %.pn = phi ptr [ %19, %18 ], [ %24, %23 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  store ptr %storemerge, ptr %7, align 8
  %21 = load ptr, ptr %8, align 8
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %21, ptr noundef nonnull %storemerge)
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load ptr, ptr %7, align 8
  br label %20, !llvm.loop !60

25:                                               ; preds = %20
  %26 = load ptr, ptr %6, align 8
  %27 = load ptr, ptr %7, align 8
  %28 = icmp ult ptr %26, %27
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %6, align 8
  ret ptr %30

31:                                               ; preds = %25
  %32 = load ptr, ptr %6, align 8
  %33 = load ptr, ptr %7, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %32, ptr noundef %33)
  %34 = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr %34, ptr %6, align 8
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
  br i1 %9, label %32, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %5, align 8
  br label %12

12:                                               ; preds = %30, %10
  %.pn = phi ptr [ %11, %10 ], [ %31, %30 ]
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  store ptr %storemerge, ptr %7, align 8
  %13 = load ptr, ptr %6, align 8
  %.not = icmp eq ptr %storemerge, %13
  br i1 %.not, label %32, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr %7, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %15, ptr noundef %16)
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load ptr, ptr %7, align 8
  %20 = load double, ptr %19, align 8
  %21 = load ptr, ptr %5, align 8
  %22 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %23 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %21)
  %24 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %19)
  %25 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %23, ptr noundef %24, ptr noundef nonnull %22)
  store double %20, ptr %21, align 8
  br label %30

26:                                               ; preds = %14
  %27 = load ptr, ptr %7, align 8
  %28 = load i64, ptr %4, align 8
  %29 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %28)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %27, i64 %29)
  br label %30

30:                                               ; preds = %18, %26
  %31 = load ptr, ptr %7, align 8
  br label %12, !llvm.loop !62

32:                                               ; preds = %3, %12
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
  %storemerge = phi ptr [ %0, %3 ], [ %15, %10 ]
  store ptr %storemerge, ptr %6, align 8
  %9 = load ptr, ptr %5, align 8
  %.not = icmp eq ptr %storemerge, %9
  br i1 %.not, label %16, label %10

10:                                               ; preds = %8
  %11 = load ptr, ptr %6, align 8
  %12 = load i64, ptr %4, align 8
  %13 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %12)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %11, i64 %13)
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 8
  br label %8, !llvm.loop !63

16:                                               ; preds = %8
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
  br label %25

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

25:                                               ; preds = %18, %21, %13
  %26 = load ptr, ptr %5, align 8
  ret ptr %26
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZSt9__advanceIPdxEvRT_T0_St26random_access_iterator_tag(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, i8 %2) #5 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %6 = call i1 @llvm.is.constant.i64(i64 %1)
  %7 = load i64, ptr %5, align 8
  %8 = icmp eq i64 %7, 1
  %or.cond = select i1 %6, i1 %8, i1 false
  br i1 %or.cond, label %9, label %13

9:                                                ; preds = %3
  %10 = load ptr, ptr %4, align 8, !nonnull !53, !align !54
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %12, ptr %10, align 8
  br label %27

13:                                               ; preds = %3
  %14 = load i64, ptr %5, align 8
  %15 = call i1 @llvm.is.constant.i64(i64 %14)
  %16 = load i64, ptr %5, align 8
  %17 = icmp eq i64 %16, -1
  %or.cond3 = select i1 %15, i1 %17, i1 false
  br i1 %or.cond3, label %18, label %22

18:                                               ; preds = %13
  %19 = load ptr, ptr %4, align 8, !nonnull !53, !align !54
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds i8, ptr %20, i64 -8
  store ptr %21, ptr %19, align 8
  br label %27

22:                                               ; preds = %13
  %23 = load i64, ptr %5, align 8
  %24 = load ptr, ptr %4, align 8, !nonnull !53, !align !54
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds [8 x i8], ptr %25, i64 %23
  store ptr %26, ptr %24, align 8
  br label %27

27:                                               ; preds = %18, %22, %9
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
  br label %9

9:                                                ; preds = %23, %4
  %10 = load ptr, ptr %7, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = ptrtoint ptr %10 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = icmp sgt i64 %14, 128
  br i1 %15, label %16, label %30

16:                                               ; preds = %9
  %17 = load i64, ptr %8, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load ptr, ptr %6, align 8
  %21 = load ptr, ptr %7, align 8
  %22 = load i8, ptr %5, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %20, ptr noundef %21, ptr noundef %21, i8 %22)
  br label %30

23:                                               ; preds = %16
  %24 = load i64, ptr %8, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, ptr %8, align 8
  %26 = load ptr, ptr %6, align 8
  %27 = load ptr, ptr %7, align 8
  %28 = load i8, ptr %5, align 1
  %29 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_(ptr noundef %26, ptr noundef %27, i8 %28)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %29, ptr noundef %27, i64 noundef %25, i8 %28)
  store ptr %29, ptr %7, align 8
  br label %9, !llvm.loop !65

30:                                               ; preds = %19, %9
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
  br label %10

10:                                               ; preds = %21, %4
  %storemerge = phi ptr [ %1, %4 ], [ %23, %21 ]
  store ptr %storemerge, ptr %9, align 8
  %11 = load ptr, ptr %8, align 8
  %12 = icmp ult ptr %storemerge, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load ptr, ptr %9, align 8
  %15 = load ptr, ptr %6, align 8
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %14, ptr noundef %15)
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load ptr, ptr %6, align 8
  %19 = load ptr, ptr %7, align 8
  %20 = load ptr, ptr %9, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %21

21:                                               ; preds = %13, %17
  %22 = load ptr, ptr %9, align 8
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 8
  br label %10, !llvm.loop !66

24:                                               ; preds = %10
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
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = ptrtoint ptr %8 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = icmp sgt i64 %12, 8
  br i1 %13, label %14, label %19

14:                                               ; preds = %7
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds i8, ptr %15, i64 -8
  store ptr %16, ptr %5, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = load ptr, ptr %6, align 8, !nonnull !53
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %17, ptr noundef nonnull %16, ptr noundef nonnull %16, ptr noundef nonnull align 1 dereferenceable(1) %18)
  br label %7, !llvm.loop !67

19:                                               ; preds = %7
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
  br i1 %12, label %34, label %13

13:                                               ; preds = %3
  %14 = load ptr, ptr %5, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = ptrtoint ptr %14 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %16, %17
  %19 = ashr exact i64 %18, 3
  store i64 %19, ptr %7, align 8
  %20 = add nsw i64 %19, -2
  %21 = sdiv i64 %20, 2
  br label %22

22:                                               ; preds = %31, %13
  %storemerge = phi i64 [ %21, %13 ], [ %33, %31 ]
  store i64 %storemerge, ptr %8, align 8
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds [8 x i8], ptr %23, i64 %storemerge
  %25 = load double, ptr %24, align 8
  %26 = load i64, ptr %7, align 8
  %27 = load ptr, ptr %6, align 8, !nonnull !53
  %28 = load i8, ptr %27, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %23, i64 noundef %storemerge, i64 noundef %26, double noundef %25, i8 %28)
  %29 = load i64, ptr %8, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %22
  %32 = load i64, ptr %8, align 8
  %33 = add nsw i64 %32, -1
  br label %22, !llvm.loop !68

34:                                               ; preds = %22, %3
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
  br label %14

14:                                               ; preds = %32, %5
  %15 = load i64, ptr %12, align 8
  %16 = load i64, ptr %9, align 8
  %17 = add nsw i64 %16, -1
  %18 = sdiv i64 %17, 2
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %14
  %21 = load i64, ptr %12, align 8
  %22 = shl i64 %21, 1
  %23 = add i64 %22, 2
  store i64 %23, ptr %12, align 8
  %24 = load ptr, ptr %7, align 8
  %25 = getelementptr inbounds [8 x i8], ptr %24, i64 %23
  %26 = getelementptr [8 x i8], ptr %24, i64 %22
  %27 = getelementptr i8, ptr %26, i64 8
  %28 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %25, ptr noundef %27)
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i64, ptr %12, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, ptr %12, align 8
  br label %32

32:                                               ; preds = %29, %20
  %33 = load ptr, ptr %7, align 8
  %34 = load i64, ptr %12, align 8
  %35 = getelementptr inbounds [8 x i8], ptr %33, i64 %34
  %36 = load double, ptr %35, align 8
  %37 = load i64, ptr %8, align 8
  %38 = getelementptr inbounds [8 x i8], ptr %33, i64 %37
  store double %36, ptr %38, align 8
  store i64 %34, ptr %8, align 8
  br label %14, !llvm.loop !69

39:                                               ; preds = %14
  %40 = load i64, ptr %9, align 8
  %41 = and i64 %40, 1
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %39
  %44 = load i64, ptr %12, align 8
  %45 = load i64, ptr %9, align 8
  %46 = add nsw i64 %45, -2
  %47 = sdiv i64 %46, 2
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %43
  %50 = load i64, ptr %12, align 8
  %51 = shl i64 %50, 1
  %52 = add i64 %51, 2
  store i64 %52, ptr %12, align 8
  %53 = load ptr, ptr %7, align 8
  %54 = getelementptr [8 x i8], ptr %53, i64 %51
  %55 = getelementptr i8, ptr %54, i64 8
  %56 = load double, ptr %55, align 8
  %57 = load i64, ptr %8, align 8
  %58 = getelementptr inbounds [8 x i8], ptr %53, i64 %57
  store double %56, ptr %58, align 8
  %59 = load i64, ptr %12, align 8
  %60 = add nsw i64 %59, -1
  store i64 %60, ptr %8, align 8
  br label %61

61:                                               ; preds = %49, %43, %39
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %62 = load ptr, ptr %7, align 8
  %63 = load i64, ptr %8, align 8
  %64 = load i64, ptr %11, align 8
  %65 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %62, i64 noundef %63, i64 noundef %64, double noundef %65, ptr noundef nonnull align 1 dereferenceable(1) %13)
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

12:                                               ; preds = %22, %5
  %storemerge.in.in = phi i64 [ %1, %5 ], [ %24, %22 ]
  %storemerge.in = add nsw i64 %storemerge.in.in, -1
  %storemerge = sdiv i64 %storemerge.in, 2
  store i64 %storemerge, ptr %11, align 8
  %13 = load i64, ptr %7, align 8
  %14 = load i64, ptr %8, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %.critedge

16:                                               ; preds = %12
  %17 = load ptr, ptr %10, align 8, !nonnull !53
  %18 = load ptr, ptr %6, align 8
  %19 = load i64, ptr %11, align 8
  %20 = getelementptr inbounds [8 x i8], ptr %18, i64 %19
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %17, ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br i1 %21, label %22, label %.critedge

22:                                               ; preds = %16
  %23 = load ptr, ptr %6, align 8
  %24 = load i64, ptr %11, align 8
  %25 = getelementptr inbounds [8 x i8], ptr %23, i64 %24
  %26 = load double, ptr %25, align 8
  %27 = load i64, ptr %7, align 8
  %28 = getelementptr inbounds [8 x i8], ptr %23, i64 %27
  store double %26, ptr %28, align 8
  store i64 %24, ptr %7, align 8
  br label %12, !llvm.loop !70

.critedge:                                        ; preds = %12, %16
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
  br i1 %11, label %12, label %29

12:                                               ; preds = %5
  %13 = load ptr, ptr %9, align 8
  %14 = load ptr, ptr %10, align 8
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %13, ptr noundef %14)
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load ptr, ptr %7, align 8
  %18 = load ptr, ptr %9, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %17, ptr noundef %18)
  br label %46

19:                                               ; preds = %12
  %20 = load ptr, ptr %8, align 8
  %21 = load ptr, ptr %10, align 8
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %20, ptr noundef %21)
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load ptr, ptr %7, align 8
  %25 = load ptr, ptr %10, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %24, ptr noundef %25)
  br label %46

26:                                               ; preds = %19
  %27 = load ptr, ptr %7, align 8
  %28 = load ptr, ptr %8, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %27, ptr noundef %28)
  br label %46

29:                                               ; preds = %5
  %30 = load ptr, ptr %8, align 8
  %31 = load ptr, ptr %10, align 8
  %32 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %30, ptr noundef %31)
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load ptr, ptr %7, align 8
  %35 = load ptr, ptr %8, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %34, ptr noundef %35)
  br label %46

36:                                               ; preds = %29
  %37 = load ptr, ptr %9, align 8
  %38 = load ptr, ptr %10, align 8
  %39 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %37, ptr noundef %38)
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load ptr, ptr %7, align 8
  %42 = load ptr, ptr %10, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %41, ptr noundef %42)
  br label %46

43:                                               ; preds = %36
  %44 = load ptr, ptr %7, align 8
  %45 = load ptr, ptr %9, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %44, ptr noundef %45)
  br label %46

46:                                               ; preds = %33, %43, %40, %16, %26, %23
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
  br label %10

10:                                               ; preds = %14, %9
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %12)
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load ptr, ptr %6, align 8
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %16, ptr %6, align 8
  br label %10, !llvm.loop !71

17:                                               ; preds = %10
  %18 = load ptr, ptr %7, align 8
  br label %19

19:                                               ; preds = %22, %17
  %.pn = phi ptr [ %18, %17 ], [ %23, %22 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  store ptr %storemerge, ptr %7, align 8
  %20 = load ptr, ptr %8, align 8
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %20, ptr noundef nonnull %storemerge)
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load ptr, ptr %7, align 8
  br label %19, !llvm.loop !72

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
  br i1 %8, label %31, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %5, align 8
  br label %11

11:                                               ; preds = %29, %9
  %.pn = phi ptr [ %10, %9 ], [ %30, %29 ]
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  store ptr %storemerge, ptr %7, align 8
  %12 = load ptr, ptr %6, align 8
  %.not = icmp eq ptr %storemerge, %12
  br i1 %.not, label %31, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %7, align 8
  %15 = load ptr, ptr %5, align 8
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %14, ptr noundef %15)
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load ptr, ptr %7, align 8
  %19 = load double, ptr %18, align 8
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %22 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %20)
  %23 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %18)
  %24 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %22, ptr noundef %23, ptr noundef nonnull %21)
  store double %19, ptr %20, align 8
  br label %29

25:                                               ; preds = %13
  %26 = load ptr, ptr %7, align 8
  %27 = load i8, ptr %4, align 1
  %28 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %27)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %26, i8 %28)
  br label %29

29:                                               ; preds = %17, %25
  %30 = load ptr, ptr %7, align 8
  br label %11, !llvm.loop !74

31:                                               ; preds = %3, %11
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
  %storemerge = phi ptr [ %0, %3 ], [ %14, %9 ]
  store ptr %storemerge, ptr %6, align 8
  %8 = load ptr, ptr %5, align 8
  %.not = icmp eq ptr %storemerge, %8
  br i1 %.not, label %15, label %9

9:                                                ; preds = %7
  %10 = load ptr, ptr %6, align 8
  %11 = load i8, ptr %4, align 1
  %12 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %11)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %10, i8 %12)
  %13 = load ptr, ptr %6, align 8
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %7, !llvm.loop !75

15:                                               ; preds = %7
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
  br label %9

9:                                                ; preds = %23, %4
  %10 = load ptr, ptr %7, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = ptrtoint ptr %10 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = icmp sgt i64 %14, 128
  br i1 %15, label %16, label %30

16:                                               ; preds = %9
  %17 = load i64, ptr %8, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load ptr, ptr %6, align 8
  %21 = load ptr, ptr %7, align 8
  %22 = load i8, ptr %5, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %20, ptr noundef %21, ptr noundef %21, i8 %22)
  br label %30

23:                                               ; preds = %16
  %24 = load i64, ptr %8, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, ptr %8, align 8
  %26 = load ptr, ptr %6, align 8
  %27 = load ptr, ptr %7, align 8
  %28 = load i8, ptr %5, align 1
  %29 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_(ptr noundef %26, ptr noundef %27, i8 %28)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %29, ptr noundef %27, i64 noundef %25, i8 %28)
  store ptr %29, ptr %7, align 8
  br label %9, !llvm.loop !77

30:                                               ; preds = %19, %9
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
  br label %10

10:                                               ; preds = %21, %4
  %storemerge = phi ptr [ %1, %4 ], [ %23, %21 ]
  store ptr %storemerge, ptr %9, align 8
  %11 = load ptr, ptr %8, align 8
  %12 = icmp ult ptr %storemerge, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load ptr, ptr %9, align 8
  %15 = load ptr, ptr %6, align 8
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %14, ptr noundef %15)
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load ptr, ptr %6, align 8
  %19 = load ptr, ptr %7, align 8
  %20 = load ptr, ptr %9, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %21

21:                                               ; preds = %13, %17
  %22 = load ptr, ptr %9, align 8
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 8
  br label %10, !llvm.loop !78

24:                                               ; preds = %10
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
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = ptrtoint ptr %8 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = icmp sgt i64 %12, 8
  br i1 %13, label %14, label %19

14:                                               ; preds = %7
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds i8, ptr %15, i64 -8
  store ptr %16, ptr %5, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = load ptr, ptr %6, align 8, !nonnull !53
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %17, ptr noundef nonnull %16, ptr noundef nonnull %16, ptr noundef nonnull align 1 dereferenceable(1) %18)
  br label %7, !llvm.loop !79

19:                                               ; preds = %7
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
  br i1 %12, label %34, label %13

13:                                               ; preds = %3
  %14 = load ptr, ptr %5, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = ptrtoint ptr %14 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %16, %17
  %19 = ashr exact i64 %18, 3
  store i64 %19, ptr %7, align 8
  %20 = add nsw i64 %19, -2
  %21 = sdiv i64 %20, 2
  br label %22

22:                                               ; preds = %31, %13
  %storemerge = phi i64 [ %21, %13 ], [ %33, %31 ]
  store i64 %storemerge, ptr %8, align 8
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds [8 x i8], ptr %23, i64 %storemerge
  %25 = load double, ptr %24, align 8
  %26 = load i64, ptr %7, align 8
  %27 = load ptr, ptr %6, align 8, !nonnull !53
  %28 = load i8, ptr %27, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %23, i64 noundef %storemerge, i64 noundef %26, double noundef %25, i8 %28)
  %29 = load i64, ptr %8, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %22
  %32 = load i64, ptr %8, align 8
  %33 = add nsw i64 %32, -1
  br label %22, !llvm.loop !80

34:                                               ; preds = %22, %3
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
  br label %14

14:                                               ; preds = %32, %5
  %15 = load i64, ptr %12, align 8
  %16 = load i64, ptr %9, align 8
  %17 = add nsw i64 %16, -1
  %18 = sdiv i64 %17, 2
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %14
  %21 = load i64, ptr %12, align 8
  %22 = shl i64 %21, 1
  %23 = add i64 %22, 2
  store i64 %23, ptr %12, align 8
  %24 = load ptr, ptr %7, align 8
  %25 = getelementptr inbounds [8 x i8], ptr %24, i64 %23
  %26 = getelementptr [8 x i8], ptr %24, i64 %22
  %27 = getelementptr i8, ptr %26, i64 8
  %28 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %25, ptr noundef %27)
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i64, ptr %12, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, ptr %12, align 8
  br label %32

32:                                               ; preds = %29, %20
  %33 = load ptr, ptr %7, align 8
  %34 = load i64, ptr %12, align 8
  %35 = getelementptr inbounds [8 x i8], ptr %33, i64 %34
  %36 = load double, ptr %35, align 8
  %37 = load i64, ptr %8, align 8
  %38 = getelementptr inbounds [8 x i8], ptr %33, i64 %37
  store double %36, ptr %38, align 8
  store i64 %34, ptr %8, align 8
  br label %14, !llvm.loop !81

39:                                               ; preds = %14
  %40 = load i64, ptr %9, align 8
  %41 = and i64 %40, 1
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %39
  %44 = load i64, ptr %12, align 8
  %45 = load i64, ptr %9, align 8
  %46 = add nsw i64 %45, -2
  %47 = sdiv i64 %46, 2
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %43
  %50 = load i64, ptr %12, align 8
  %51 = shl i64 %50, 1
  %52 = add i64 %51, 2
  store i64 %52, ptr %12, align 8
  %53 = load ptr, ptr %7, align 8
  %54 = getelementptr [8 x i8], ptr %53, i64 %51
  %55 = getelementptr i8, ptr %54, i64 8
  %56 = load double, ptr %55, align 8
  %57 = load i64, ptr %8, align 8
  %58 = getelementptr inbounds [8 x i8], ptr %53, i64 %57
  store double %56, ptr %58, align 8
  %59 = load i64, ptr %12, align 8
  %60 = add nsw i64 %59, -1
  store i64 %60, ptr %8, align 8
  br label %61

61:                                               ; preds = %49, %43, %39
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %62 = load ptr, ptr %7, align 8
  %63 = load i64, ptr %8, align 8
  %64 = load i64, ptr %11, align 8
  %65 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %62, i64 noundef %63, i64 noundef %64, double noundef %65, ptr noundef nonnull align 1 dereferenceable(1) %13)
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

12:                                               ; preds = %22, %5
  %storemerge.in.in = phi i64 [ %1, %5 ], [ %24, %22 ]
  %storemerge.in = add nsw i64 %storemerge.in.in, -1
  %storemerge = sdiv i64 %storemerge.in, 2
  store i64 %storemerge, ptr %11, align 8
  %13 = load i64, ptr %7, align 8
  %14 = load i64, ptr %8, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %.critedge

16:                                               ; preds = %12
  %17 = load ptr, ptr %10, align 8, !nonnull !53
  %18 = load ptr, ptr %6, align 8
  %19 = load i64, ptr %11, align 8
  %20 = getelementptr inbounds [8 x i8], ptr %18, i64 %19
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %17, ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br i1 %21, label %22, label %.critedge

22:                                               ; preds = %16
  %23 = load ptr, ptr %6, align 8
  %24 = load i64, ptr %11, align 8
  %25 = getelementptr inbounds [8 x i8], ptr %23, i64 %24
  %26 = load double, ptr %25, align 8
  %27 = load i64, ptr %7, align 8
  %28 = getelementptr inbounds [8 x i8], ptr %23, i64 %27
  store double %26, ptr %28, align 8
  store i64 %24, ptr %7, align 8
  br label %12, !llvm.loop !82

.critedge:                                        ; preds = %12, %16
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
  br i1 %11, label %12, label %29

12:                                               ; preds = %5
  %13 = load ptr, ptr %9, align 8
  %14 = load ptr, ptr %10, align 8
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %13, ptr noundef %14)
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load ptr, ptr %7, align 8
  %18 = load ptr, ptr %9, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %17, ptr noundef %18)
  br label %46

19:                                               ; preds = %12
  %20 = load ptr, ptr %8, align 8
  %21 = load ptr, ptr %10, align 8
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %20, ptr noundef %21)
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load ptr, ptr %7, align 8
  %25 = load ptr, ptr %10, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %24, ptr noundef %25)
  br label %46

26:                                               ; preds = %19
  %27 = load ptr, ptr %7, align 8
  %28 = load ptr, ptr %8, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %27, ptr noundef %28)
  br label %46

29:                                               ; preds = %5
  %30 = load ptr, ptr %8, align 8
  %31 = load ptr, ptr %10, align 8
  %32 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %30, ptr noundef %31)
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load ptr, ptr %7, align 8
  %35 = load ptr, ptr %8, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %34, ptr noundef %35)
  br label %46

36:                                               ; preds = %29
  %37 = load ptr, ptr %9, align 8
  %38 = load ptr, ptr %10, align 8
  %39 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %37, ptr noundef %38)
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load ptr, ptr %7, align 8
  %42 = load ptr, ptr %10, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %41, ptr noundef %42)
  br label %46

43:                                               ; preds = %36
  %44 = load ptr, ptr %7, align 8
  %45 = load ptr, ptr %9, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %44, ptr noundef %45)
  br label %46

46:                                               ; preds = %33, %43, %40, %16, %26, %23
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
  br label %10

10:                                               ; preds = %14, %9
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %12)
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load ptr, ptr %6, align 8
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %16, ptr %6, align 8
  br label %10, !llvm.loop !83

17:                                               ; preds = %10
  %18 = load ptr, ptr %7, align 8
  br label %19

19:                                               ; preds = %22, %17
  %.pn = phi ptr [ %18, %17 ], [ %23, %22 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  store ptr %storemerge, ptr %7, align 8
  %20 = load ptr, ptr %8, align 8
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %20, ptr noundef nonnull %storemerge)
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load ptr, ptr %7, align 8
  br label %19, !llvm.loop !84

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
  br i1 %8, label %31, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %5, align 8
  br label %11

11:                                               ; preds = %29, %9
  %.pn = phi ptr [ %10, %9 ], [ %30, %29 ]
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  store ptr %storemerge, ptr %7, align 8
  %12 = load ptr, ptr %6, align 8
  %.not = icmp eq ptr %storemerge, %12
  br i1 %.not, label %31, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %7, align 8
  %15 = load ptr, ptr %5, align 8
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %14, ptr noundef %15)
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load ptr, ptr %7, align 8
  %19 = load double, ptr %18, align 8
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %22 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %20)
  %23 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %18)
  %24 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %22, ptr noundef %23, ptr noundef nonnull %21)
  store double %19, ptr %20, align 8
  br label %29

25:                                               ; preds = %13
  %26 = load ptr, ptr %7, align 8
  %27 = load i8, ptr %4, align 1
  %28 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %27)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %26, i8 %28)
  br label %29

29:                                               ; preds = %17, %25
  %30 = load ptr, ptr %7, align 8
  br label %11, !llvm.loop !86

31:                                               ; preds = %3, %11
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
  %storemerge = phi ptr [ %0, %3 ], [ %14, %9 ]
  store ptr %storemerge, ptr %6, align 8
  %8 = load ptr, ptr %5, align 8
  %.not = icmp eq ptr %storemerge, %8
  br i1 %.not, label %15, label %9

9:                                                ; preds = %7
  %10 = load ptr, ptr %6, align 8
  %11 = load i8, ptr %4, align 1
  %12 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %11)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %10, i8 %12)
  %13 = load ptr, ptr %6, align 8
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %7, !llvm.loop !87

15:                                               ; preds = %7
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
  br label %9

9:                                                ; preds = %23, %4
  %10 = load ptr, ptr %7, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = ptrtoint ptr %10 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = icmp sgt i64 %14, 128
  br i1 %15, label %16, label %30

16:                                               ; preds = %9
  %17 = load i64, ptr %8, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load ptr, ptr %6, align 8
  %21 = load ptr, ptr %7, align 8
  %22 = load i8, ptr %5, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %20, ptr noundef %21, ptr noundef %21, i8 %22)
  br label %30

23:                                               ; preds = %16
  %24 = load i64, ptr %8, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, ptr %8, align 8
  %26 = load ptr, ptr %6, align 8
  %27 = load ptr, ptr %7, align 8
  %28 = load i8, ptr %5, align 1
  %29 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_(ptr noundef %26, ptr noundef %27, i8 %28)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %29, ptr noundef %27, i64 noundef %25, i8 %28)
  store ptr %29, ptr %7, align 8
  br label %9, !llvm.loop !89

30:                                               ; preds = %19, %9
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
  br label %10

10:                                               ; preds = %21, %4
  %storemerge = phi ptr [ %1, %4 ], [ %23, %21 ]
  store ptr %storemerge, ptr %9, align 8
  %11 = load ptr, ptr %8, align 8
  %12 = icmp ult ptr %storemerge, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load ptr, ptr %9, align 8
  %15 = load ptr, ptr %6, align 8
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %14, ptr noundef %15)
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load ptr, ptr %6, align 8
  %19 = load ptr, ptr %7, align 8
  %20 = load ptr, ptr %9, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %21

21:                                               ; preds = %13, %17
  %22 = load ptr, ptr %9, align 8
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 8
  br label %10, !llvm.loop !90

24:                                               ; preds = %10
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
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = ptrtoint ptr %8 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = icmp sgt i64 %12, 8
  br i1 %13, label %14, label %19

14:                                               ; preds = %7
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds i8, ptr %15, i64 -8
  store ptr %16, ptr %5, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = load ptr, ptr %6, align 8, !nonnull !53
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %17, ptr noundef nonnull %16, ptr noundef nonnull %16, ptr noundef nonnull align 1 dereferenceable(1) %18)
  br label %7, !llvm.loop !91

19:                                               ; preds = %7
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
  br i1 %12, label %34, label %13

13:                                               ; preds = %3
  %14 = load ptr, ptr %5, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = ptrtoint ptr %14 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %16, %17
  %19 = ashr exact i64 %18, 3
  store i64 %19, ptr %7, align 8
  %20 = add nsw i64 %19, -2
  %21 = sdiv i64 %20, 2
  br label %22

22:                                               ; preds = %31, %13
  %storemerge = phi i64 [ %21, %13 ], [ %33, %31 ]
  store i64 %storemerge, ptr %8, align 8
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds [8 x i8], ptr %23, i64 %storemerge
  %25 = load double, ptr %24, align 8
  %26 = load i64, ptr %7, align 8
  %27 = load ptr, ptr %6, align 8, !nonnull !53
  %28 = load i8, ptr %27, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %23, i64 noundef %storemerge, i64 noundef %26, double noundef %25, i8 %28)
  %29 = load i64, ptr %8, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %22
  %32 = load i64, ptr %8, align 8
  %33 = add nsw i64 %32, -1
  br label %22, !llvm.loop !92

34:                                               ; preds = %22, %3
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
  br label %14

14:                                               ; preds = %32, %5
  %15 = load i64, ptr %12, align 8
  %16 = load i64, ptr %9, align 8
  %17 = add nsw i64 %16, -1
  %18 = sdiv i64 %17, 2
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %14
  %21 = load i64, ptr %12, align 8
  %22 = shl i64 %21, 1
  %23 = add i64 %22, 2
  store i64 %23, ptr %12, align 8
  %24 = load ptr, ptr %7, align 8
  %25 = getelementptr inbounds [8 x i8], ptr %24, i64 %23
  %26 = getelementptr [8 x i8], ptr %24, i64 %22
  %27 = getelementptr i8, ptr %26, i64 8
  %28 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %25, ptr noundef %27)
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i64, ptr %12, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, ptr %12, align 8
  br label %32

32:                                               ; preds = %29, %20
  %33 = load ptr, ptr %7, align 8
  %34 = load i64, ptr %12, align 8
  %35 = getelementptr inbounds [8 x i8], ptr %33, i64 %34
  %36 = load double, ptr %35, align 8
  %37 = load i64, ptr %8, align 8
  %38 = getelementptr inbounds [8 x i8], ptr %33, i64 %37
  store double %36, ptr %38, align 8
  store i64 %34, ptr %8, align 8
  br label %14, !llvm.loop !93

39:                                               ; preds = %14
  %40 = load i64, ptr %9, align 8
  %41 = and i64 %40, 1
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %39
  %44 = load i64, ptr %12, align 8
  %45 = load i64, ptr %9, align 8
  %46 = add nsw i64 %45, -2
  %47 = sdiv i64 %46, 2
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %43
  %50 = load i64, ptr %12, align 8
  %51 = shl i64 %50, 1
  %52 = add i64 %51, 2
  store i64 %52, ptr %12, align 8
  %53 = load ptr, ptr %7, align 8
  %54 = getelementptr [8 x i8], ptr %53, i64 %51
  %55 = getelementptr i8, ptr %54, i64 8
  %56 = load double, ptr %55, align 8
  %57 = load i64, ptr %8, align 8
  %58 = getelementptr inbounds [8 x i8], ptr %53, i64 %57
  store double %56, ptr %58, align 8
  %59 = load i64, ptr %12, align 8
  %60 = add nsw i64 %59, -1
  store i64 %60, ptr %8, align 8
  br label %61

61:                                               ; preds = %49, %43, %39
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %62 = load ptr, ptr %7, align 8
  %63 = load i64, ptr %8, align 8
  %64 = load i64, ptr %11, align 8
  %65 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEEEvT_T0_S8_T1_RT2_(ptr noundef %62, i64 noundef %63, i64 noundef %64, double noundef %65, ptr noundef nonnull align 1 dereferenceable(1) %13)
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

12:                                               ; preds = %22, %5
  %storemerge.in.in = phi i64 [ %1, %5 ], [ %24, %22 ]
  %storemerge.in = add nsw i64 %storemerge.in.in, -1
  %storemerge = sdiv i64 %storemerge.in, 2
  store i64 %storemerge, ptr %11, align 8
  %13 = load i64, ptr %7, align 8
  %14 = load i64, ptr %8, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %.critedge

16:                                               ; preds = %12
  %17 = load ptr, ptr %10, align 8, !nonnull !53
  %18 = load ptr, ptr %6, align 8
  %19 = load i64, ptr %11, align 8
  %20 = getelementptr inbounds [8 x i8], ptr %18, i64 %19
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %17, ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br i1 %21, label %22, label %.critedge

22:                                               ; preds = %16
  %23 = load ptr, ptr %6, align 8
  %24 = load i64, ptr %11, align 8
  %25 = getelementptr inbounds [8 x i8], ptr %23, i64 %24
  %26 = load double, ptr %25, align 8
  %27 = load i64, ptr %7, align 8
  %28 = getelementptr inbounds [8 x i8], ptr %23, i64 %27
  store double %26, ptr %28, align 8
  store i64 %24, ptr %7, align 8
  br label %12, !llvm.loop !94

.critedge:                                        ; preds = %12, %16
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
  br i1 %11, label %12, label %29

12:                                               ; preds = %5
  %13 = load ptr, ptr %9, align 8
  %14 = load ptr, ptr %10, align 8
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %13, ptr noundef %14)
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load ptr, ptr %7, align 8
  %18 = load ptr, ptr %9, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %17, ptr noundef %18)
  br label %46

19:                                               ; preds = %12
  %20 = load ptr, ptr %8, align 8
  %21 = load ptr, ptr %10, align 8
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %20, ptr noundef %21)
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load ptr, ptr %7, align 8
  %25 = load ptr, ptr %10, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %24, ptr noundef %25)
  br label %46

26:                                               ; preds = %19
  %27 = load ptr, ptr %7, align 8
  %28 = load ptr, ptr %8, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %27, ptr noundef %28)
  br label %46

29:                                               ; preds = %5
  %30 = load ptr, ptr %8, align 8
  %31 = load ptr, ptr %10, align 8
  %32 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %30, ptr noundef %31)
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load ptr, ptr %7, align 8
  %35 = load ptr, ptr %8, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %34, ptr noundef %35)
  br label %46

36:                                               ; preds = %29
  %37 = load ptr, ptr %9, align 8
  %38 = load ptr, ptr %10, align 8
  %39 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %37, ptr noundef %38)
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load ptr, ptr %7, align 8
  %42 = load ptr, ptr %10, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %41, ptr noundef %42)
  br label %46

43:                                               ; preds = %36
  %44 = load ptr, ptr %7, align 8
  %45 = load ptr, ptr %9, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %44, ptr noundef %45)
  br label %46

46:                                               ; preds = %33, %43, %40, %16, %26, %23
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
  br label %10

10:                                               ; preds = %14, %9
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %12)
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load ptr, ptr %6, align 8
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %16, ptr %6, align 8
  br label %10, !llvm.loop !95

17:                                               ; preds = %10
  %18 = load ptr, ptr %7, align 8
  br label %19

19:                                               ; preds = %22, %17
  %.pn = phi ptr [ %18, %17 ], [ %23, %22 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  store ptr %storemerge, ptr %7, align 8
  %20 = load ptr, ptr %8, align 8
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %20, ptr noundef nonnull %storemerge)
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load ptr, ptr %7, align 8
  br label %19, !llvm.loop !96

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
  br i1 %8, label %31, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %5, align 8
  br label %11

11:                                               ; preds = %29, %9
  %.pn = phi ptr [ %10, %9 ], [ %30, %29 ]
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  store ptr %storemerge, ptr %7, align 8
  %12 = load ptr, ptr %6, align 8
  %.not = icmp eq ptr %storemerge, %12
  br i1 %.not, label %31, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %7, align 8
  %15 = load ptr, ptr %5, align 8
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %14, ptr noundef %15)
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load ptr, ptr %7, align 8
  %19 = load double, ptr %18, align 8
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %22 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %20)
  %23 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %18)
  %24 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %22, ptr noundef %23, ptr noundef nonnull %21)
  store double %19, ptr %20, align 8
  br label %29

25:                                               ; preds = %13
  %26 = load ptr, ptr %7, align 8
  %27 = load i8, ptr %4, align 1
  %28 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %27)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %26, i8 %28)
  br label %29

29:                                               ; preds = %17, %25
  %30 = load ptr, ptr %7, align 8
  br label %11, !llvm.loop !98

31:                                               ; preds = %3, %11
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
  %storemerge = phi ptr [ %0, %3 ], [ %14, %9 ]
  store ptr %storemerge, ptr %6, align 8
  %8 = load ptr, ptr %5, align 8
  %.not = icmp eq ptr %storemerge, %8
  br i1 %.not, label %15, label %9

9:                                                ; preds = %7
  %10 = load ptr, ptr %6, align 8
  %11 = load i8, ptr %4, align 1
  %12 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %11)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %10, i8 %12)
  %13 = load ptr, ptr %6, align 8
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %7, !llvm.loop !99

15:                                               ; preds = %7
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
  br label %8

8:                                                ; preds = %21, %4
  %9 = load ptr, ptr %6, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = ptrtoint ptr %9 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = icmp sgt i64 %13, 128
  br i1 %14, label %15, label %27

15:                                               ; preds = %8
  %16 = load i64, ptr %7, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load ptr, ptr %5, align 8
  %20 = load ptr, ptr %6, align 8
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %19, ptr noundef %20, ptr noundef %20, i8 undef)
  br label %27

21:                                               ; preds = %15
  %22 = load i64, ptr %7, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, ptr %7, align 8
  %24 = load ptr, ptr %5, align 8
  %25 = load ptr, ptr %6, align 8
  %26 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(ptr noundef %24, ptr noundef %25, i8 undef)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %26, ptr noundef %25, i64 noundef %23, i8 undef)
  store ptr %26, ptr %6, align 8
  br label %8, !llvm.loop !101

27:                                               ; preds = %18, %8
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
  br label %10

10:                                               ; preds = %21, %4
  %storemerge = phi ptr [ %1, %4 ], [ %23, %21 ]
  store ptr %storemerge, ptr %9, align 8
  %11 = load ptr, ptr %8, align 8
  %12 = icmp ult ptr %storemerge, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load ptr, ptr %9, align 8
  %15 = load ptr, ptr %6, align 8
  %16 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %14, ptr noundef %15)
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load ptr, ptr %6, align 8
  %19 = load ptr, ptr %7, align 8
  %20 = load ptr, ptr %9, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %21

21:                                               ; preds = %13, %17
  %22 = load ptr, ptr %9, align 8
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 8
  br label %10, !llvm.loop !102

24:                                               ; preds = %10
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
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = ptrtoint ptr %8 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = icmp sgt i64 %12, 8
  br i1 %13, label %14, label %19

14:                                               ; preds = %7
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds i8, ptr %15, i64 -8
  store ptr %16, ptr %5, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = load ptr, ptr %6, align 8, !nonnull !53
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %17, ptr noundef nonnull %16, ptr noundef nonnull %16, ptr noundef nonnull align 1 dereferenceable(1) %18)
  br label %7, !llvm.loop !103

19:                                               ; preds = %7
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
  br i1 %11, label %30, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = ptrtoint ptr %13 to i64
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %15, %16
  %18 = ashr exact i64 %17, 3
  store i64 %18, ptr %6, align 8
  %19 = add nsw i64 %18, -2
  %20 = sdiv i64 %19, 2
  br label %21

21:                                               ; preds = %27, %12
  %storemerge = phi i64 [ %20, %12 ], [ %29, %27 ]
  store i64 %storemerge, ptr %7, align 8
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds [8 x i8], ptr %22, i64 %storemerge
  %24 = load double, ptr %23, align 8
  %25 = load i64, ptr %6, align 8
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %22, i64 noundef %storemerge, i64 noundef %25, double noundef %24, i8 undef)
  %26 = icmp eq i64 %storemerge, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i64, ptr %7, align 8
  %29 = add nsw i64 %28, -1
  br label %21, !llvm.loop !104

30:                                               ; preds = %21, %3
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
  br label %14

14:                                               ; preds = %32, %5
  %15 = load i64, ptr %12, align 8
  %16 = load i64, ptr %9, align 8
  %17 = add nsw i64 %16, -1
  %18 = sdiv i64 %17, 2
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %14
  %21 = load i64, ptr %12, align 8
  %22 = shl i64 %21, 1
  %23 = add i64 %22, 2
  store i64 %23, ptr %12, align 8
  %24 = load ptr, ptr %7, align 8
  %25 = getelementptr inbounds [8 x i8], ptr %24, i64 %23
  %26 = getelementptr [8 x i8], ptr %24, i64 %22
  %27 = getelementptr i8, ptr %26, i64 8
  %28 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %25, ptr noundef %27)
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i64, ptr %12, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, ptr %12, align 8
  br label %32

32:                                               ; preds = %29, %20
  %33 = load ptr, ptr %7, align 8
  %34 = load i64, ptr %12, align 8
  %35 = getelementptr inbounds [8 x i8], ptr %33, i64 %34
  %36 = load double, ptr %35, align 8
  %37 = load i64, ptr %8, align 8
  %38 = getelementptr inbounds [8 x i8], ptr %33, i64 %37
  store double %36, ptr %38, align 8
  store i64 %34, ptr %8, align 8
  br label %14, !llvm.loop !105

39:                                               ; preds = %14
  %40 = load i64, ptr %9, align 8
  %41 = and i64 %40, 1
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %39
  %44 = load i64, ptr %12, align 8
  %45 = load i64, ptr %9, align 8
  %46 = add nsw i64 %45, -2
  %47 = sdiv i64 %46, 2
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %43
  %50 = load i64, ptr %12, align 8
  %51 = shl i64 %50, 1
  %52 = add i64 %51, 2
  store i64 %52, ptr %12, align 8
  %53 = load ptr, ptr %7, align 8
  %54 = getelementptr [8 x i8], ptr %53, i64 %51
  %55 = getelementptr i8, ptr %54, i64 8
  %56 = load double, ptr %55, align 8
  %57 = load i64, ptr %8, align 8
  %58 = getelementptr inbounds [8 x i8], ptr %53, i64 %57
  store double %56, ptr %58, align 8
  %59 = load i64, ptr %12, align 8
  %60 = add nsw i64 %59, -1
  store i64 %60, ptr %8, align 8
  br label %61

61:                                               ; preds = %49, %43, %39
  call void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(ptr noundef nonnull align 1 dereferenceable(1) %13, i8 undef)
  %62 = load ptr, ptr %7, align 8
  %63 = load i64, ptr %8, align 8
  %64 = load i64, ptr %11, align 8
  %65 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_(ptr noundef %62, i64 noundef %63, i64 noundef %64, double noundef %65, ptr noundef nonnull align 1 dereferenceable(1) %13)
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

12:                                               ; preds = %22, %5
  %storemerge.in.in = phi i64 [ %1, %5 ], [ %24, %22 ]
  %storemerge.in = add nsw i64 %storemerge.in.in, -1
  %storemerge = sdiv i64 %storemerge.in, 2
  store i64 %storemerge, ptr %11, align 8
  %13 = load i64, ptr %7, align 8
  %14 = load i64, ptr %8, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %.critedge

16:                                               ; preds = %12
  %17 = load ptr, ptr %10, align 8, !nonnull !53
  %18 = load ptr, ptr %6, align 8
  %19 = load i64, ptr %11, align 8
  %20 = getelementptr inbounds [8 x i8], ptr %18, i64 %19
  %21 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %17, ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br i1 %21, label %22, label %.critedge

22:                                               ; preds = %16
  %23 = load ptr, ptr %6, align 8
  %24 = load i64, ptr %11, align 8
  %25 = getelementptr inbounds [8 x i8], ptr %23, i64 %24
  %26 = load double, ptr %25, align 8
  %27 = load i64, ptr %7, align 8
  %28 = getelementptr inbounds [8 x i8], ptr %23, i64 %27
  store double %26, ptr %28, align 8
  store i64 %24, ptr %7, align 8
  br label %12, !llvm.loop !106

.critedge:                                        ; preds = %12, %16
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
  br i1 %11, label %12, label %29

12:                                               ; preds = %5
  %13 = load ptr, ptr %9, align 8
  %14 = load ptr, ptr %10, align 8
  %15 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %13, ptr noundef %14)
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load ptr, ptr %7, align 8
  %18 = load ptr, ptr %9, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %17, ptr noundef %18)
  br label %46

19:                                               ; preds = %12
  %20 = load ptr, ptr %8, align 8
  %21 = load ptr, ptr %10, align 8
  %22 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %20, ptr noundef %21)
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load ptr, ptr %7, align 8
  %25 = load ptr, ptr %10, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %24, ptr noundef %25)
  br label %46

26:                                               ; preds = %19
  %27 = load ptr, ptr %7, align 8
  %28 = load ptr, ptr %8, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %27, ptr noundef %28)
  br label %46

29:                                               ; preds = %5
  %30 = load ptr, ptr %8, align 8
  %31 = load ptr, ptr %10, align 8
  %32 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %30, ptr noundef %31)
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load ptr, ptr %7, align 8
  %35 = load ptr, ptr %8, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %34, ptr noundef %35)
  br label %46

36:                                               ; preds = %29
  %37 = load ptr, ptr %9, align 8
  %38 = load ptr, ptr %10, align 8
  %39 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %37, ptr noundef %38)
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load ptr, ptr %7, align 8
  %42 = load ptr, ptr %10, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %41, ptr noundef %42)
  br label %46

43:                                               ; preds = %36
  %44 = load ptr, ptr %7, align 8
  %45 = load ptr, ptr %9, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %44, ptr noundef %45)
  br label %46

46:                                               ; preds = %33, %43, %40, %16, %26, %23
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
  br label %10

10:                                               ; preds = %14, %9
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %12)
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load ptr, ptr %6, align 8
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %16, ptr %6, align 8
  br label %10, !llvm.loop !107

17:                                               ; preds = %10
  %18 = load ptr, ptr %7, align 8
  br label %19

19:                                               ; preds = %22, %17
  %.pn = phi ptr [ %18, %17 ], [ %23, %22 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  store ptr %storemerge, ptr %7, align 8
  %20 = load ptr, ptr %8, align 8
  %21 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %20, ptr noundef nonnull %storemerge)
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load ptr, ptr %7, align 8
  br label %19, !llvm.loop !108

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
  br i1 %8, label %30, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %5, align 8
  br label %11

11:                                               ; preds = %28, %9
  %.pn = phi ptr [ %10, %9 ], [ %29, %28 ]
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  store ptr %storemerge, ptr %7, align 8
  %12 = load ptr, ptr %6, align 8
  %.not = icmp eq ptr %storemerge, %12
  br i1 %.not, label %30, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %7, align 8
  %15 = load ptr, ptr %5, align 8
  %16 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %14, ptr noundef %15)
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load ptr, ptr %7, align 8
  %19 = load double, ptr %18, align 8
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %22 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %20)
  %23 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %18)
  %24 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %22, ptr noundef %23, ptr noundef nonnull %21)
  store double %19, ptr %20, align 8
  br label %28

25:                                               ; preds = %13
  %26 = load ptr, ptr %7, align 8
  %27 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 undef)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %26, i8 undef)
  br label %28

28:                                               ; preds = %17, %25
  %29 = load ptr, ptr %7, align 8
  br label %11, !llvm.loop !110

30:                                               ; preds = %3, %11
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8
  br label %6

6:                                                ; preds = %8, %3
  %storemerge = phi ptr [ %0, %3 ], [ %12, %8 ]
  store ptr %storemerge, ptr %5, align 8
  %7 = load ptr, ptr %4, align 8
  %.not = icmp eq ptr %storemerge, %7
  br i1 %.not, label %13, label %8

8:                                                ; preds = %6
  %9 = load ptr, ptr %5, align 8
  %10 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 undef)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %9, i8 undef)
  %11 = load ptr, ptr %5, align 8
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %6, !llvm.loop !111

13:                                               ; preds = %6
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
