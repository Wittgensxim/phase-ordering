; ModuleID = 'results\paper_full\Adobe-C++_functionobjects\Adobe-C++_functionobjects.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Adobe-C++/functionobjects.cpp"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.one_result = type { double, ptr }
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
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr @current_test, align 4
  %7 = icmp sge i32 %6, %.pre
  br i1 %7, label %8, label %18

8:                                                ; preds = %5, %2
  %9 = add nsw i32 %.pre, 10
  store i32 %9, ptr @allocated_results, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 16
  %12 = call ptr @realloc(ptr noundef %3, i64 noundef %11) #13
  store ptr %12, ptr @results, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load i32, ptr @allocated_results, align 4
  %16 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str, i32 noundef %15)
  call void @exit(i32 noundef -1) #14
  unreachable

17:                                               ; preds = %8
  %.pre2 = load i32, ptr @current_test, align 4
  br label %18

18:                                               ; preds = %17, %5
  %19 = phi i32 [ %.pre2, %17 ], [ %6, %5 ]
  %20 = phi ptr [ %12, %17 ], [ %3, %5 ]
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds %struct.one_result, ptr %20, i64 %21
  store double %0, ptr %22, align 8
  %23 = load ptr, ptr @results, align 8
  %24 = getelementptr inbounds %struct.one_result, ptr %23, i64 %21
  %25 = getelementptr inbounds nuw %struct.one_result, ptr %24, i32 0, i32 1
  store ptr %1, ptr %25, align 8
  %26 = add nsw i32 %19, 1
  store i32 %26, ptr @current_test, align 4
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
  %8 = fmul double %6, %7
  %9 = fdiv double %8, 1.000000e+06
  br label %10

10:                                               ; preds = %23, %5
  %.032 = phi i32 [ 12, %5 ], [ %.133, %23 ]
  %.0 = phi i32 [ 0, %5 ], [ %24, %23 ]
  %11 = load i32, ptr @current_test, align 4
  %12 = icmp slt i32 %.0, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load ptr, ptr @results, align 8
  %15 = sext i32 %.0 to i64
  %16 = getelementptr inbounds %struct.one_result, ptr %14, i64 %15
  %17 = getelementptr inbounds nuw %struct.one_result, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = call i64 @strlen(ptr noundef %18) #15
  %20 = trunc i64 %19 to i32
  %21 = icmp sgt i32 %20, %.032
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22, %13
  %.133 = phi i32 [ %20, %22 ], [ %.032, %13 ]
  %24 = add nsw i32 %.0, 1
  br label %10, !llvm.loop !7

25:                                               ; preds = %10
  %26 = sub nsw i32 %.032, 12
  %27 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.1, i32 noundef %26, ptr noundef @.str.2)
  %28 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.3, i32 noundef %.032, ptr noundef @.str.2)
  br label %29

29:                                               ; preds = %32, %25
  %.1 = phi i32 [ 0, %25 ], [ %51, %32 ]
  %30 = load i32, ptr @current_test, align 4
  %31 = icmp slt i32 %.1, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %29
  %33 = sext i32 %.032 to i64
  %34 = load ptr, ptr @results, align 8
  %35 = sext i32 %.1 to i64
  %36 = getelementptr inbounds %struct.one_result, ptr %34, i64 %35
  %37 = getelementptr inbounds nuw %struct.one_result, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 8
  %39 = call i64 @strlen(ptr noundef %38) #15
  %40 = sub i64 %33, %39
  %41 = trunc i64 %40 to i32
  %42 = load ptr, ptr @results, align 8
  %43 = getelementptr inbounds %struct.one_result, ptr %42, i64 %35
  %44 = getelementptr inbounds nuw %struct.one_result, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8
  %46 = load double, ptr %43, align 8
  %47 = fdiv double %9, %46
  %48 = load double, ptr %42, align 8
  %49 = fdiv double %46, %48
  %50 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.4, i32 noundef %.1, i32 noundef %41, ptr noundef @.str.5, ptr noundef %45, double noundef %46, double noundef %47, double noundef %49)
  %51 = add nsw i32 %.1, 1
  br label %29, !llvm.loop !9

52:                                               ; preds = %29
  br label %53

53:                                               ; preds = %55, %52
  %.035 = phi double [ 0.000000e+00, %52 ], [ %60, %55 ]
  %.2 = phi i32 [ 0, %52 ], [ %61, %55 ]
  %54 = icmp slt i32 %.2, %30
  br i1 %54, label %55, label %62

55:                                               ; preds = %53
  %56 = load ptr, ptr @results, align 8
  %57 = sext i32 %.2 to i64
  %58 = getelementptr inbounds %struct.one_result, ptr %56, i64 %57
  %59 = load double, ptr %58, align 8
  %60 = fadd double %.035, %59
  %61 = add nsw i32 %.2, 1
  br label %53, !llvm.loop !10

62:                                               ; preds = %53
  %63 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.6, ptr noundef %0, double noundef %.035)
  %64 = load i32, ptr @current_test, align 4
  %65 = icmp sgt i32 %64, 1
  br i1 %65, label %66, label %88

66:                                               ; preds = %62
  %67 = icmp ne i32 %4, 0
  br i1 %67, label %68, label %88

68:                                               ; preds = %66
  br label %69

69:                                               ; preds = %72, %68
  %70 = phi i32 [ %64, %68 ], [ %.pre, %72 ]
  %.034 = phi double [ 0.000000e+00, %68 ], [ %80, %72 ]
  %.3 = phi i32 [ 1, %68 ], [ %81, %72 ]
  %71 = icmp slt i32 %.3, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %69
  %73 = load ptr, ptr @results, align 8
  %74 = sext i32 %.3 to i64
  %75 = getelementptr inbounds %struct.one_result, ptr %73, i64 %74
  %76 = load double, ptr %75, align 8
  %77 = load double, ptr %73, align 8
  %78 = fdiv double %76, %77
  %79 = call double @log(double noundef %78) #15
  %80 = fadd double %.034, %79
  %81 = add nsw i32 %.3, 1
  %.pre = load i32, ptr @current_test, align 4
  br label %69, !llvm.loop !11

82:                                               ; preds = %69
  %83 = sub nsw i32 %70, 1
  %84 = sitofp i32 %83 to double
  %85 = fdiv double %.034, %84
  %86 = call double @exp(double noundef %85) #15
  %87 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.7, ptr noundef %0, double noundef %86)
  br label %88

88:                                               ; preds = %82, %66, %62
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

3:                                                ; preds = %16, %2
  %.024 = phi i32 [ 12, %2 ], [ %.125, %16 ]
  %.0 = phi i32 [ 0, %2 ], [ %17, %16 ]
  %4 = load i32, ptr @current_test, align 4
  %5 = icmp slt i32 %.0, %4
  br i1 %5, label %6, label %18

6:                                                ; preds = %3
  %7 = load ptr, ptr @results, align 8
  %8 = sext i32 %.0 to i64
  %9 = getelementptr inbounds %struct.one_result, ptr %7, i64 %8
  %10 = getelementptr inbounds nuw %struct.one_result, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = call i64 @strlen(ptr noundef %11) #15
  %13 = trunc i64 %12 to i32
  %14 = icmp sgt i32 %13, %.024
  br i1 %14, label %15, label %16

15:                                               ; preds = %6
  br label %16

16:                                               ; preds = %15, %6
  %.125 = phi i32 [ %13, %15 ], [ %.024, %6 ]
  %17 = add nsw i32 %.0, 1
  br label %3, !llvm.loop !12

18:                                               ; preds = %3
  %19 = sub nsw i32 %.024, 12
  %20 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.8, i32 noundef %19, ptr noundef @.str.2)
  %21 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.9, i32 noundef %.024, ptr noundef @.str.2)
  br label %22

22:                                               ; preds = %25, %18
  %.1 = phi i32 [ 0, %18 ], [ %41, %25 ]
  %23 = load i32, ptr @current_test, align 4
  %24 = icmp slt i32 %.1, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %22
  %26 = sext i32 %.024 to i64
  %27 = load ptr, ptr @results, align 8
  %28 = sext i32 %.1 to i64
  %29 = getelementptr inbounds %struct.one_result, ptr %27, i64 %28
  %30 = getelementptr inbounds nuw %struct.one_result, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8
  %32 = call i64 @strlen(ptr noundef %31) #15
  %33 = sub i64 %26, %32
  %34 = trunc i64 %33 to i32
  %35 = load ptr, ptr @results, align 8
  %36 = getelementptr inbounds %struct.one_result, ptr %35, i64 %28
  %37 = getelementptr inbounds nuw %struct.one_result, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 8
  %39 = load double, ptr %36, align 8
  %40 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.10, i32 noundef %.1, i32 noundef %34, ptr noundef @.str.5, ptr noundef %38, double noundef %39)
  %41 = add nsw i32 %.1, 1
  br label %22, !llvm.loop !13

42:                                               ; preds = %22
  br label %43

43:                                               ; preds = %45, %42
  %.026 = phi double [ 0.000000e+00, %42 ], [ %50, %45 ]
  %.2 = phi i32 [ 0, %42 ], [ %51, %45 ]
  %44 = icmp slt i32 %.2, %23
  br i1 %44, label %45, label %52

45:                                               ; preds = %43
  %46 = load ptr, ptr @results, align 8
  %47 = sext i32 %.2 to i64
  %48 = getelementptr inbounds %struct.one_result, ptr %46, i64 %47
  %49 = load double, ptr %48, align 8
  %50 = fadd double %.026, %49
  %51 = add nsw i32 %.2, 1
  br label %43, !llvm.loop !14

52:                                               ; preds = %43
  %53 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.6, ptr noundef %1, double noundef %.026)
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
  %.0 = phi i32 [ -1, %6 ], [ 1, %9 ], [ 0, %10 ]
  ret i32 %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef zeroext i1 @_Z19less_than_function2dd(double noundef %0, double noundef %1) #5 {
  %3 = fcmp olt double %0, %1
  %4 = zext i1 %3 to i64
  ret i1 %3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #5 align 2 {
  %4 = load double, ptr %1, align 8
  %5 = load double, ptr %2, align 8
  %6 = fcmp olt double %4, %5
  %7 = zext i1 %6 to i64
  ret i1 %6
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z18quicksort_functionPdS_PFbddE(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = sdiv exact i64 %6, 8
  %8 = icmp sgt i64 %7, 1
  br i1 %8, label %9, label %34

9:                                                ; preds = %3
  %10 = load double, ptr %0, align 8
  br label %11

11:                                               ; preds = %29, %9
  %.027 = phi ptr [ %1, %9 ], [ %13, %29 ]
  %.0 = phi ptr [ %0, %9 ], [ %.1, %29 ]
  br label %12

12:                                               ; preds = %16, %11
  %.128 = phi ptr [ %.027, %11 ], [ %13, %16 ]
  %13 = getelementptr inbounds double, ptr %.128, i32 -1
  %14 = load double, ptr %13, align 8
  %15 = call noundef zeroext i1 %2(double noundef %10, double noundef %14)
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %12, !llvm.loop !15

17:                                               ; preds = %12
  %18 = icmp ult ptr %.0, %13
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  br label %32

20:                                               ; preds = %17
  br label %21

21:                                               ; preds = %24, %20
  %.1 = phi ptr [ %.0, %20 ], [ %25, %24 ]
  %22 = load double, ptr %.1, align 8
  %23 = call noundef zeroext i1 %2(double noundef %22, double noundef %10)
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = getelementptr inbounds nuw double, ptr %.1, i32 1
  br label %21, !llvm.loop !16

26:                                               ; preds = %21
  %27 = icmp ult ptr %.1, %13
  br i1 %27, label %29, label %28

28:                                               ; preds = %26
  br label %32

29:                                               ; preds = %26
  %30 = load double, ptr %13, align 8
  %31 = load double, ptr %.1, align 8
  store double %31, ptr %13, align 8
  store double %30, ptr %.1, align 8
  br label %11, !llvm.loop !17

32:                                               ; preds = %28, %19
  %33 = getelementptr inbounds double, ptr %13, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %33, ptr noundef %2)
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %33, ptr noundef %1, ptr noundef %2)
  br label %34

34:                                               ; preds = %32, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = sdiv exact i64 %6, 8
  %8 = icmp sgt i64 %7, 1
  br i1 %8, label %9, label %34

9:                                                ; preds = %3
  %10 = load double, ptr %0, align 8
  br label %11

11:                                               ; preds = %29, %9
  %.027 = phi ptr [ %1, %9 ], [ %13, %29 ]
  %.0 = phi ptr [ %0, %9 ], [ %.1, %29 ]
  br label %12

12:                                               ; preds = %16, %11
  %.128 = phi ptr [ %.027, %11 ], [ %13, %16 ]
  %13 = getelementptr inbounds double, ptr %.128, i32 -1
  %14 = load double, ptr %13, align 8
  %15 = call noundef zeroext i1 %2(double noundef %10, double noundef %14)
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %12, !llvm.loop !18

17:                                               ; preds = %12
  %18 = icmp ult ptr %.0, %13
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  br label %32

20:                                               ; preds = %17
  br label %21

21:                                               ; preds = %24, %20
  %.1 = phi ptr [ %.0, %20 ], [ %25, %24 ]
  %22 = load double, ptr %.1, align 8
  %23 = call noundef zeroext i1 %2(double noundef %22, double noundef %10)
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = getelementptr inbounds nuw double, ptr %.1, i32 1
  br label %21, !llvm.loop !19

26:                                               ; preds = %21
  %27 = icmp ult ptr %.1, %13
  br i1 %27, label %29, label %28

28:                                               ; preds = %26
  br label %32

29:                                               ; preds = %26
  %30 = load double, ptr %13, align 8
  %31 = load double, ptr %.1, align 8
  store double %31, ptr %13, align 8
  store double %30, ptr %.1, align 8
  br label %11, !llvm.loop !20

32:                                               ; preds = %28, %19
  %33 = getelementptr inbounds double, ptr %13, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %33, ptr noundef %2)
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %33, ptr noundef %1, ptr noundef %2)
  br label %34

34:                                               ; preds = %32, %3
  ret void
}

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) #6 {
  %3 = icmp slt i32 1, %0
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds ptr, ptr %1, i64 1
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 @atoi(ptr noundef %6)
  br label %9

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %8, %4
  %10 = phi i32 [ %7, %4 ], [ 300, %8 ]
  %11 = icmp slt i32 2, %0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = getelementptr inbounds ptr, ptr %1, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = call i32 @atoi(ptr noundef %14)
  br label %17

16:                                               ; preds = %9
  br label %17

17:                                               ; preds = %16, %12
  %18 = phi i32 [ %15, %12 ], [ 10000, %16 ]
  %19 = add nsw i32 %18, 123
  call void @srand(i32 noundef %19)
  %20 = sext i32 %18 to i64
  %21 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %20, i64 8)
  %22 = extractvalue { i64, i1 } %21, 1
  %23 = extractvalue { i64, i1 } %21, 0
  %24 = select i1 %22, i64 -1, i64 %23
  %25 = call noalias noundef nonnull ptr @_Znay(i64 noundef %24) #16
  br label %26

26:                                               ; preds = %28, %17
  %.0186 = phi i32 [ 0, %17 ], [ %33, %28 ]
  %27 = icmp slt i32 %.0186, %18
  br i1 %27, label %28, label %34

28:                                               ; preds = %26
  %29 = call i32 @rand()
  %30 = sitofp i32 %29 to double
  %31 = sext i32 %.0186 to i64
  %32 = getelementptr inbounds double, ptr %25, i64 %31
  store double %30, ptr %32, align 8
  %33 = add nsw i32 %.0186, 1
  br label %26, !llvm.loop !21

34:                                               ; preds = %26
  %35 = call noalias noundef nonnull ptr @_Znay(i64 noundef %24) #16
  br label %36

36:                                               ; preds = %38, %34
  %.0 = phi i32 [ 0, %34 ], [ %42, %38 ]
  %37 = icmp slt i32 %.0, %10
  br i1 %37, label %38, label %43

38:                                               ; preds = %36
  %39 = getelementptr inbounds double, ptr %25, i64 %20
  %40 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %25, ptr noundef %39, ptr noundef %35)
  call void @qsort(ptr noundef %35, i64 noundef %20, i64 noundef 8, ptr noundef @_Z19less_than_function1PKvS0_)
  %41 = getelementptr inbounds double, ptr %35, i64 %20
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %35, ptr noundef %41)
  %42 = add nsw i32 %.0, 1
  br label %36, !llvm.loop !22

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %46, %43
  %.1 = phi i32 [ 0, %43 ], [ %50, %46 ]
  %45 = icmp slt i32 %.1, %10
  br i1 %45, label %46, label %51

46:                                               ; preds = %44
  %47 = getelementptr inbounds double, ptr %25, i64 %20
  %48 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %25, ptr noundef %47, ptr noundef %35)
  %49 = getelementptr inbounds double, ptr %35, i64 %20
  call void @_Z18quicksort_functionPdS_PFbddE(ptr noundef %35, ptr noundef %49, ptr noundef @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %35, ptr noundef %49)
  %50 = add nsw i32 %.1, 1
  br label %44, !llvm.loop !23

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %54, %51
  %.2 = phi i32 [ 0, %51 ], [ %58, %54 ]
  %53 = icmp slt i32 %.2, %10
  br i1 %53, label %54, label %59

54:                                               ; preds = %52
  %55 = getelementptr inbounds double, ptr %25, i64 %20
  %56 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %25, ptr noundef %55, ptr noundef %35)
  %57 = getelementptr inbounds double, ptr %35, i64 %20
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %35, ptr noundef %57, ptr noundef @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %35, ptr noundef %57)
  %58 = add nsw i32 %.2, 1
  br label %52, !llvm.loop !24

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %62, %59
  %.3 = phi i32 [ 0, %59 ], [ %66, %62 ]
  %61 = icmp slt i32 %.3, %10
  br i1 %61, label %62, label %67

62:                                               ; preds = %60
  %63 = getelementptr inbounds double, ptr %25, i64 %20
  %64 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %25, ptr noundef %63, ptr noundef %35)
  %65 = getelementptr inbounds double, ptr %35, i64 %20
  call void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef %35, ptr noundef %65)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %35, ptr noundef %65)
  %66 = add nsw i32 %.3, 1
  br label %60, !llvm.loop !25

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %70, %67
  %.4 = phi i32 [ 0, %67 ], [ %74, %70 ]
  %69 = icmp slt i32 %.4, %10
  br i1 %69, label %70, label %75

70:                                               ; preds = %68
  %71 = getelementptr inbounds double, ptr %25, i64 %20
  %72 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %25, ptr noundef %71, ptr noundef %35)
  %73 = getelementptr inbounds double, ptr %35, i64 %20
  call void @_ZSt4sortIPdPFbddEEvT_S3_T0_(ptr noundef %35, ptr noundef %73, ptr noundef @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %35, ptr noundef %73)
  %74 = add nsw i32 %.4, 1
  br label %68, !llvm.loop !26

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %78, %75
  %.5 = phi i32 [ 0, %75 ], [ %82, %78 ]
  %77 = icmp slt i32 %.5, %10
  br i1 %77, label %78, label %83

78:                                               ; preds = %76
  %79 = getelementptr inbounds double, ptr %25, i64 %20
  %80 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %25, ptr noundef %79, ptr noundef %35)
  %81 = getelementptr inbounds double, ptr %35, i64 %20
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %35, ptr noundef %81, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %35, ptr noundef %81)
  %82 = add nsw i32 %.5, 1
  br label %76, !llvm.loop !27

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %86, %83
  %.6 = phi i32 [ 0, %83 ], [ %90, %86 ]
  %85 = icmp slt i32 %.6, %10
  br i1 %85, label %86, label %91

86:                                               ; preds = %84
  %87 = getelementptr inbounds double, ptr %35, i64 %20
  call void @_ZSt4sortIPd17less_than_functorEvT_S2_T0_(ptr noundef %35, ptr noundef %87, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %35, ptr noundef %87)
  %88 = getelementptr inbounds double, ptr %25, i64 %20
  %89 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %25, ptr noundef %88, ptr noundef %35)
  %90 = add nsw i32 %.6, 1
  br label %84, !llvm.loop !28

91:                                               ; preds = %84
  br label %92

92:                                               ; preds = %94, %91
  %.7 = phi i32 [ 0, %91 ], [ %98, %94 ]
  %93 = icmp slt i32 %.7, %10
  br i1 %93, label %94, label %99

94:                                               ; preds = %92
  %95 = getelementptr inbounds double, ptr %25, i64 %20
  %96 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %25, ptr noundef %95, ptr noundef %35)
  %97 = getelementptr inbounds double, ptr %35, i64 %20
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %35, ptr noundef %97, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %35, ptr noundef %97)
  %98 = add nsw i32 %.7, 1
  br label %92, !llvm.loop !29

99:                                               ; preds = %92
  br label %100

100:                                              ; preds = %102, %99
  %.8 = phi i32 [ 0, %99 ], [ %106, %102 ]
  %101 = icmp slt i32 %.8, %10
  br i1 %101, label %102, label %107

102:                                              ; preds = %100
  %103 = getelementptr inbounds double, ptr %25, i64 %20
  %104 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %25, ptr noundef %103, ptr noundef %35)
  %105 = getelementptr inbounds double, ptr %35, i64 %20
  call void @_ZSt4sortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %35, ptr noundef %105, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %35, ptr noundef %105)
  %106 = add nsw i32 %.8, 1
  br label %100, !llvm.loop !30

107:                                              ; preds = %100
  br label %108

108:                                              ; preds = %110, %107
  %.9 = phi i32 [ 0, %107 ], [ %114, %110 ]
  %109 = icmp slt i32 %.9, %10
  br i1 %109, label %110, label %115

110:                                              ; preds = %108
  %111 = getelementptr inbounds double, ptr %25, i64 %20
  %112 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %25, ptr noundef %111, ptr noundef %35)
  %113 = getelementptr inbounds double, ptr %35, i64 %20
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %35, ptr noundef %113, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %35, ptr noundef %113)
  %114 = add nsw i32 %.9, 1
  br label %108, !llvm.loop !31

115:                                              ; preds = %108
  br label %116

116:                                              ; preds = %118, %115
  %.10 = phi i32 [ 0, %115 ], [ %122, %118 ]
  %117 = icmp slt i32 %.10, %10
  br i1 %117, label %118, label %123

118:                                              ; preds = %116
  %119 = getelementptr inbounds double, ptr %25, i64 %20
  %120 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %25, ptr noundef %119, ptr noundef %35)
  %121 = getelementptr inbounds double, ptr %35, i64 %20
  call void @_ZSt4sortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %35, ptr noundef %121, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %35, ptr noundef %121)
  %122 = add nsw i32 %.10, 1
  br label %116, !llvm.loop !32

123:                                              ; preds = %116
  br label %124

124:                                              ; preds = %126, %123
  %.11 = phi i32 [ 0, %123 ], [ %130, %126 ]
  %125 = icmp slt i32 %.11, %10
  br i1 %125, label %126, label %131

126:                                              ; preds = %124
  %127 = getelementptr inbounds double, ptr %25, i64 %20
  %128 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %25, ptr noundef %127, ptr noundef %35)
  %129 = getelementptr inbounds double, ptr %35, i64 %20
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %35, ptr noundef %129)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %35, ptr noundef %129)
  %130 = add nsw i32 %.11, 1
  br label %124, !llvm.loop !33

131:                                              ; preds = %124
  br label %132

132:                                              ; preds = %134, %131
  %.12 = phi i32 [ 0, %131 ], [ %138, %134 ]
  %133 = icmp slt i32 %.12, %10
  br i1 %133, label %134, label %139

134:                                              ; preds = %132
  %135 = getelementptr inbounds double, ptr %25, i64 %20
  %136 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %25, ptr noundef %135, ptr noundef %35)
  %137 = getelementptr inbounds double, ptr %35, i64 %20
  call void @_ZSt4sortIPdEvT_S1_(ptr noundef %35, ptr noundef %137)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %35, ptr noundef %137)
  %138 = add nsw i32 %.12, 1
  br label %132, !llvm.loop !34

139:                                              ; preds = %132
  br i1 false, label %._crit_edge, label %140

._crit_edge:                                      ; preds = %139
  br label %141

140:                                              ; preds = %139
  call void @_ZdaPv(ptr noundef %35) #17
  br label %141

141:                                              ; preds = %._crit_edge, %140
  br i1 false, label %._crit_edge187, label %142

._crit_edge187:                                   ; preds = %141
  br label %143

142:                                              ; preds = %141
  call void @_ZdaPv(ptr noundef %25) #17
  br label %143

143:                                              ; preds = %._crit_edge187, %142
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
  %3 = getelementptr inbounds nuw double, ptr %0, i32 1
  br label %4

4:                                                ; preds = %15, %2
  %.06 = phi ptr [ %3, %2 ], [ %7, %15 ]
  %.0 = phi ptr [ %0, %2 ], [ %9, %15 ]
  %5 = icmp ne ptr %.06, %1
  br i1 %5, label %6, label %16

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw double, ptr %.06, i32 1
  %8 = load double, ptr %.06, align 8
  %9 = getelementptr inbounds nuw double, ptr %.0, i32 1
  %10 = load double, ptr %.0, align 8
  %11 = fcmp olt double %8, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = load i32, ptr @current_test, align 4
  %14 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.11, i32 noundef %13)
  br label %16

15:                                               ; preds = %6
  br label %4, !llvm.loop !35

16:                                               ; preds = %12, %4
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef %0, ptr noundef %1) #0 comdat {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = sdiv exact i64 %5, 8
  %7 = icmp sgt i64 %6, 1
  br i1 %7, label %8, label %33

8:                                                ; preds = %2
  %9 = load double, ptr %0, align 8
  br label %10

10:                                               ; preds = %28, %8
  %.023 = phi ptr [ %1, %8 ], [ %12, %28 ]
  %.0 = phi ptr [ %0, %8 ], [ %.1, %28 ]
  br label %11

11:                                               ; preds = %15, %10
  %.124 = phi ptr [ %.023, %10 ], [ %12, %15 ]
  %12 = getelementptr inbounds double, ptr %.124, i32 -1
  %13 = load double, ptr %12, align 8
  %14 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %9, double noundef %13)
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %11, !llvm.loop !36

16:                                               ; preds = %11
  %17 = icmp ult ptr %.0, %12
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  br label %31

19:                                               ; preds = %16
  br label %20

20:                                               ; preds = %23, %19
  %.1 = phi ptr [ %.0, %19 ], [ %24, %23 ]
  %21 = load double, ptr %.1, align 8
  %22 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %21, double noundef %9)
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = getelementptr inbounds nuw double, ptr %.1, i32 1
  br label %20, !llvm.loop !37

25:                                               ; preds = %20
  %26 = icmp ult ptr %.1, %12
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  br label %31

28:                                               ; preds = %25
  %29 = load double, ptr %12, align 8
  %30 = load double, ptr %.1, align 8
  store double %30, ptr %12, align 8
  store double %29, ptr %.1, align 8
  br label %10, !llvm.loop !38

31:                                               ; preds = %27, %18
  %32 = getelementptr inbounds double, ptr %12, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %32, ptr noundef @_Z19less_than_function2dd)
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %32, ptr noundef %1, ptr noundef @_Z19less_than_function2dd)
  br label %33

33:                                               ; preds = %31, %2
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt4sortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
  %4 = call i64 @_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFbddEEENS0_15_Iter_comp_iterIT_EES5_(ptr noundef %2)
  %5 = inttoptr i64 %4 to ptr
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
  %9 = sdiv exact i64 %8, 8
  %10 = icmp sgt i64 %9, 1
  br i1 %10, label %11, label %34

11:                                               ; preds = %3
  %12 = load double, ptr %0, align 8
  store double %12, ptr %5, align 8
  br label %13

13:                                               ; preds = %29, %11
  %.022 = phi ptr [ %1, %11 ], [ %15, %29 ]
  %.0 = phi ptr [ %0, %11 ], [ %.1, %29 ]
  br label %14

14:                                               ; preds = %17, %13
  %.123 = phi ptr [ %.022, %13 ], [ %15, %17 ]
  %15 = getelementptr inbounds double, ptr %.123, i32 -1
  %16 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %15)
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %14, !llvm.loop !39

18:                                               ; preds = %14
  %19 = icmp ult ptr %.0, %15
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  br label %32

21:                                               ; preds = %18
  br label %22

22:                                               ; preds = %24, %21
  %.1 = phi ptr [ %.0, %21 ], [ %25, %24 ]
  %23 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %.1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %23, label %24, label %26

24:                                               ; preds = %22
  %25 = getelementptr inbounds nuw double, ptr %.1, i32 1
  br label %22, !llvm.loop !40

26:                                               ; preds = %22
  %27 = icmp ult ptr %.1, %15
  br i1 %27, label %29, label %28

28:                                               ; preds = %26
  br label %32

29:                                               ; preds = %26
  %30 = load double, ptr %15, align 8
  %31 = load double, ptr %.1, align 8
  store double %31, ptr %15, align 8
  store double %30, ptr %.1, align 8
  br label %13, !llvm.loop !41

32:                                               ; preds = %28, %20
  %33 = getelementptr inbounds double, ptr %15, i64 1
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %0, ptr noundef %33, i8 undef)
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %33, ptr noundef %1, i8 undef)
  br label %34

34:                                               ; preds = %32, %3
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
  %9 = sdiv exact i64 %8, 8
  %10 = icmp sgt i64 %9, 1
  br i1 %10, label %11, label %34

11:                                               ; preds = %3
  %12 = load double, ptr %0, align 8
  store double %12, ptr %5, align 8
  br label %13

13:                                               ; preds = %29, %11
  %.022 = phi ptr [ %1, %11 ], [ %15, %29 ]
  %.0 = phi ptr [ %0, %11 ], [ %.1, %29 ]
  br label %14

14:                                               ; preds = %17, %13
  %.123 = phi ptr [ %.022, %13 ], [ %15, %17 ]
  %15 = getelementptr inbounds double, ptr %.123, i32 -1
  %16 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %15)
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %14, !llvm.loop !42

18:                                               ; preds = %14
  %19 = icmp ult ptr %.0, %15
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  br label %32

21:                                               ; preds = %18
  br label %22

22:                                               ; preds = %24, %21
  %.1 = phi ptr [ %.0, %21 ], [ %25, %24 ]
  %23 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %.1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %23, label %24, label %26

24:                                               ; preds = %22
  %25 = getelementptr inbounds nuw double, ptr %.1, i32 1
  br label %22, !llvm.loop !43

26:                                               ; preds = %22
  %27 = icmp ult ptr %.1, %15
  br i1 %27, label %29, label %28

28:                                               ; preds = %26
  br label %32

29:                                               ; preds = %26
  %30 = load double, ptr %15, align 8
  %31 = load double, ptr %.1, align 8
  store double %31, ptr %15, align 8
  store double %30, ptr %.1, align 8
  br label %13, !llvm.loop !44

32:                                               ; preds = %28, %20
  %33 = getelementptr inbounds double, ptr %15, i64 1
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %0, ptr noundef %33, i8 undef)
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %33, ptr noundef %1, i8 undef)
  br label %34

34:                                               ; preds = %32, %3
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
  %9 = sdiv exact i64 %8, 8
  %10 = icmp sgt i64 %9, 1
  br i1 %10, label %11, label %34

11:                                               ; preds = %3
  %12 = load double, ptr %0, align 8
  store double %12, ptr %5, align 8
  br label %13

13:                                               ; preds = %29, %11
  %.022 = phi ptr [ %1, %11 ], [ %15, %29 ]
  %.0 = phi ptr [ %0, %11 ], [ %.1, %29 ]
  br label %14

14:                                               ; preds = %17, %13
  %.123 = phi ptr [ %.022, %13 ], [ %15, %17 ]
  %15 = getelementptr inbounds double, ptr %.123, i32 -1
  %16 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %15)
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %14, !llvm.loop !45

18:                                               ; preds = %14
  %19 = icmp ult ptr %.0, %15
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  br label %32

21:                                               ; preds = %18
  br label %22

22:                                               ; preds = %24, %21
  %.1 = phi ptr [ %.0, %21 ], [ %25, %24 ]
  %23 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %.1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %23, label %24, label %26

24:                                               ; preds = %22
  %25 = getelementptr inbounds nuw double, ptr %.1, i32 1
  br label %22, !llvm.loop !46

26:                                               ; preds = %22
  %27 = icmp ult ptr %.1, %15
  br i1 %27, label %29, label %28

28:                                               ; preds = %26
  br label %32

29:                                               ; preds = %26
  %30 = load double, ptr %15, align 8
  %31 = load double, ptr %.1, align 8
  store double %31, ptr %15, align 8
  store double %30, ptr %.1, align 8
  br label %13, !llvm.loop !47

32:                                               ; preds = %28, %20
  %33 = getelementptr inbounds double, ptr %15, i64 1
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %0, ptr noundef %33, i8 undef)
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %33, ptr noundef %1, i8 undef)
  br label %34

34:                                               ; preds = %32, %3
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
  %6 = sdiv exact i64 %5, 8
  %7 = icmp sgt i64 %6, 1
  br i1 %7, label %8, label %32

8:                                                ; preds = %2
  %9 = load double, ptr %0, align 8
  br label %10

10:                                               ; preds = %29, %8
  %11 = phi double [ %9, %8 ], [ %14, %29 ]
  %.023 = phi ptr [ %1, %8 ], [ %13, %29 ]
  %.0 = phi ptr [ %0, %8 ], [ %.1, %29 ]
  br label %12

12:                                               ; preds = %16, %10
  %.124 = phi ptr [ %.023, %10 ], [ %13, %16 ]
  %13 = getelementptr inbounds double, ptr %.124, i32 -1
  %14 = load double, ptr %13, align 8
  %15 = fcmp olt double %9, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %12, !llvm.loop !48

17:                                               ; preds = %12
  %18 = icmp ult ptr %.0, %13
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  br label %30

20:                                               ; preds = %17
  br label %21

21:                                               ; preds = %24, %20
  %22 = phi double [ %11, %20 ], [ %.pre, %24 ]
  %.1 = phi ptr [ %.0, %20 ], [ %25, %24 ]
  %23 = fcmp olt double %22, %9
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = getelementptr inbounds nuw double, ptr %.1, i32 1
  %.pre = load double, ptr %25, align 8
  br label %21, !llvm.loop !49

26:                                               ; preds = %21
  %27 = icmp ult ptr %.1, %13
  br i1 %27, label %29, label %28

28:                                               ; preds = %26
  br label %30

29:                                               ; preds = %26
  store double %22, ptr %13, align 8
  store double %14, ptr %.1, align 8
  br label %10, !llvm.loop !50

30:                                               ; preds = %28, %19
  %31 = getelementptr inbounds double, ptr %13, i64 1
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %0, ptr noundef %31)
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %31, ptr noundef %1)
  br label %32

32:                                               ; preds = %30, %2
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
  %7 = sdiv exact i64 %6, 8
  %8 = icmp sgt i64 %7, 1
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %6, i1 false)
  %10 = getelementptr inbounds double, ptr %2, i64 %7
  br label %17

11:                                               ; preds = %3
  %12 = icmp eq i64 %7, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %11
  %14 = load double, ptr %0, align 8
  store double %14, ptr %2, align 8
  %15 = getelementptr inbounds nuw double, ptr %2, i32 1
  br label %16

16:                                               ; preds = %13, %11
  %.1 = phi ptr [ %15, %13 ], [ %2, %11 ]
  br label %17

17:                                               ; preds = %16, %9
  %.0 = phi ptr [ %10, %9 ], [ %.1, %16 ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #10

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %2) #0 comdat {
  %4 = inttoptr i64 %2 to ptr
  %5 = icmp ne ptr %0, %1
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 8
  %11 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %10)
  %12 = mul nsw i64 %11, 2
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %12, i64 %2)
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %2)
  br label %13

13:                                               ; preds = %6, %3
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
  br label %6

6:                                                ; preds = %15, %4
  %.015 = phi i64 [ %2, %4 ], [ %16, %15 ]
  %.0 = phi ptr [ %1, %4 ], [ %17, %15 ]
  %7 = ptrtoint ptr %.0 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 8
  %11 = icmp sgt i64 %10, 16
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = icmp eq i64 %.015, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %.0, ptr noundef %.0, i64 %3)
  br label %18

15:                                               ; preds = %12
  %16 = add nsw i64 %.015, -1
  %17 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %.0, i64 %3)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %17, ptr noundef %.0, i64 noundef %16, i64 %3)
  br label %6, !llvm.loop !51

18:                                               ; preds = %14, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %0) #5 comdat {
  %2 = call noundef i32 @_ZSt11__bit_widthIyEiT_(i64 noundef %0) #15
  %3 = sub nsw i32 %2, 1
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
  %8 = sdiv exact i64 %7, 8
  %9 = icmp sgt i64 %8, 16
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = getelementptr inbounds double, ptr %0, i64 16
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %11, i64 %2)
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %11, ptr noundef %1, i64 %2)
  br label %13

12:                                               ; preds = %3
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %2)
  br label %13

13:                                               ; preds = %12, %10
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
  %8 = sdiv exact i64 %7, 8
  %9 = sdiv i64 %8, 2
  %10 = getelementptr inbounds double, ptr %0, i64 %9
  %11 = getelementptr inbounds double, ptr %0, i64 1
  %12 = getelementptr inbounds double, ptr %1, i64 -1
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_(ptr noundef %0, ptr noundef %11, ptr noundef %10, ptr noundef %12, i64 %2)
  %13 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_S7_T0_(ptr noundef %11, ptr noundef %1, ptr noundef %0, i64 %2)
  ret ptr %13
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = inttoptr i64 %3 to ptr
  store ptr %6, ptr %5, align 8
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %7

7:                                                ; preds = %12, %4
  %.0 = phi ptr [ %1, %4 ], [ %13, %12 ]
  %8 = icmp ult ptr %.0, %2
  br i1 %8, label %9, label %14

9:                                                ; preds = %7
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %.0, ptr noundef %0)
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %.0, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %12

12:                                               ; preds = %11, %9
  %13 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %7, !llvm.loop !52

14:                                               ; preds = %7
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 comdat {
  br label %4

4:                                                ; preds = %10, %3
  %.0 = phi ptr [ %1, %3 ], [ %11, %10 ]
  %5 = ptrtoint ptr %.0 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 8
  %9 = icmp sgt i64 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = getelementptr inbounds double, ptr %.0, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %11, ptr noundef %11, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %4, !llvm.loop !53

12:                                               ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = sdiv exact i64 %6, 8
  %8 = icmp slt i64 %7, 2
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %21

10:                                               ; preds = %3
  %11 = sub nsw i64 %7, 2
  %12 = sdiv i64 %11, 2
  br label %13

13:                                               ; preds = %19, %10
  %.0 = phi i64 [ %12, %10 ], [ %20, %19 ]
  %14 = getelementptr inbounds double, ptr %0, i64 %.0
  %15 = load double, ptr %14, align 8
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8
  %16 = ptrtoint ptr %.sroa.0.0.copyload to i64
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %.0, i64 noundef %7, double noundef %15, i64 %16)
  %17 = icmp eq i64 %.0, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %21

19:                                               ; preds = %13
  %20 = add nsw i64 %.0, -1
  br label %13, !llvm.loop !54

21:                                               ; preds = %18, %9
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
  %10 = sdiv exact i64 %9, 8
  %.sroa.0.0.copyload = load ptr, ptr %3, align 8
  %11 = ptrtoint ptr %.sroa.0.0.copyload to i64
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef 0, i64 noundef %10, double noundef %5, i64 %11)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, i64 %4) #0 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val", align 8
  %8 = inttoptr i64 %4 to ptr
  store ptr %8, ptr %6, align 8
  br label %9

9:                                                ; preds = %22, %5
  %.027 = phi i64 [ %1, %5 ], [ %.1, %22 ]
  %10 = sub nsw i64 %2, 1
  %11 = sdiv i64 %10, 2
  %12 = icmp slt i64 %.027, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = add nsw i64 %.027, 1
  %15 = mul nsw i64 2, %14
  %16 = getelementptr inbounds double, ptr %0, i64 %15
  %17 = sub nsw i64 %15, 1
  %18 = getelementptr inbounds double, ptr %0, i64 %17
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %16, ptr noundef %18)
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = add nsw i64 %15, -1
  br label %22

22:                                               ; preds = %20, %13
  %.1 = phi i64 [ %21, %20 ], [ %15, %13 ]
  %23 = getelementptr inbounds double, ptr %0, i64 %.1
  %24 = load double, ptr %23, align 8
  %25 = getelementptr inbounds double, ptr %0, i64 %.027
  store double %24, ptr %25, align 8
  br label %9, !llvm.loop !55

26:                                               ; preds = %9
  %27 = and i64 %2, 1
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = sub nsw i64 %2, 2
  %31 = sdiv i64 %30, 2
  %32 = icmp eq i64 %.027, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = add nsw i64 %.027, 1
  %35 = mul nsw i64 2, %34
  %36 = sub nsw i64 %35, 1
  %37 = getelementptr inbounds double, ptr %0, i64 %36
  %38 = load double, ptr %37, align 8
  %39 = getelementptr inbounds double, ptr %0, i64 %.027
  store double %38, ptr %39, align 8
  br label %40

40:                                               ; preds = %33, %29, %26
  %.128 = phi i64 [ %36, %33 ], [ %.027, %29 ], [ %.027, %26 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEEEvT_T0_S8_T1_RT2_(ptr noundef %0, i64 noundef %.128, i64 noundef %1, double noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %7)
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
  %7 = sub nsw i64 %1, 1
  %8 = sdiv i64 %7, 2
  br label %9

9:                                                ; preds = %16, %5
  %.013 = phi i64 [ %1, %5 ], [ %.0, %16 ]
  %.0 = phi i64 [ %8, %5 ], [ %21, %16 ]
  %10 = icmp sgt i64 %.013, %2
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  %12 = getelementptr inbounds double, ptr %0, i64 %.0
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEclIPddEEbT_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi i1 [ false, %9 ], [ %13, %11 ]
  br i1 %15, label %16, label %22

16:                                               ; preds = %14
  %17 = getelementptr inbounds double, ptr %0, i64 %.0
  %18 = load double, ptr %17, align 8
  %19 = getelementptr inbounds double, ptr %0, i64 %.013
  store double %18, ptr %19, align 8
  %20 = sub nsw i64 %.0, 1
  %21 = sdiv i64 %20, 2
  br label %9, !llvm.loop !56

22:                                               ; preds = %14
  %23 = load double, ptr %6, align 8
  %24 = getelementptr inbounds double, ptr %0, i64 %.013
  store double %23, ptr %24, align 8
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
  %6 = inttoptr i64 %3 to ptr
  store ptr %6, ptr %5, align 8
  br label %7

7:                                                ; preds = %21, %4
  %.013 = phi ptr [ %1, %4 ], [ %.114, %21 ]
  %.0 = phi ptr [ %0, %4 ], [ %22, %21 ]
  br label %8

8:                                                ; preds = %10, %7
  %.1 = phi ptr [ %.0, %7 ], [ %11, %10 ]
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %.1, ptr noundef %2)
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  %11 = getelementptr inbounds nuw double, ptr %.1, i32 1
  br label %8, !llvm.loop !57

12:                                               ; preds = %8
  %13 = getelementptr inbounds double, ptr %.013, i32 -1
  br label %14

14:                                               ; preds = %16, %12
  %.114 = phi ptr [ %13, %12 ], [ %17, %16 ]
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %2, ptr noundef %.114)
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = getelementptr inbounds double, ptr %.114, i32 -1
  br label %14, !llvm.loop !58

18:                                               ; preds = %14
  %19 = icmp ult ptr %.1, %.114
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  ret ptr %.1

21:                                               ; preds = %18
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1, ptr noundef %.114)
  %22 = getelementptr inbounds nuw double, ptr %.1, i32 1
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
  %2 = call i64 @llvm.ctlz.i64(i64 %0, i1 true)
  %3 = trunc i64 %2 to i32
  %4 = icmp eq i64 %0, 0
  %5 = select i1 %4, i32 64, i32 %3
  ret i32 %5
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %5 = inttoptr i64 %2 to ptr
  store ptr %5, ptr %4, align 8
  %6 = icmp eq ptr %0, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  br label %26

8:                                                ; preds = %3
  %9 = getelementptr inbounds double, ptr %0, i64 1
  br label %10

10:                                               ; preds = %24, %8
  %.0 = phi ptr [ %9, %8 ], [ %25, %24 ]
  %11 = icmp ne ptr %.0, %1
  br i1 %11, label %12, label %26

12:                                               ; preds = %10
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %.0, ptr noundef %0)
  br i1 %13, label %14, label %20

14:                                               ; preds = %12
  %15 = load double, ptr %.0, align 8
  %16 = getelementptr inbounds double, ptr %.0, i64 1
  %17 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %18 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %.0)
  %19 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %17, ptr noundef %18, ptr noundef %16)
  store double %15, ptr %0, align 8
  br label %24

20:                                               ; preds = %12
  %.sroa.0.0.copyload = load ptr, ptr %4, align 8
  %21 = ptrtoint ptr %.sroa.0.0.copyload to i64
  %22 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %21)
  %23 = inttoptr i64 %22 to ptr
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %.0, i64 %22)
  br label %24

24:                                               ; preds = %20, %14
  %25 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %10, !llvm.loop !60

26:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %2) #0 comdat {
  %4 = inttoptr i64 %2 to ptr
  br label %5

5:                                                ; preds = %7, %3
  %.0 = phi ptr [ %0, %3 ], [ %10, %7 ]
  %6 = icmp ne ptr %.0, %1
  br i1 %6, label %7, label %11

7:                                                ; preds = %5
  %8 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %2)
  %9 = inttoptr i64 %8 to ptr
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %.0, i64 %8)
  %10 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %5, !llvm.loop !61

11:                                               ; preds = %5
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
  %7 = getelementptr inbounds double, ptr %0, i32 -1
  br label %8

8:                                                ; preds = %10, %2
  %.09 = phi ptr [ %0, %2 ], [ %.0, %10 ]
  %.0 = phi ptr [ %7, %2 ], [ %12, %10 ]
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEclIdPdEEbRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %.0)
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  %11 = load double, ptr %.0, align 8
  store double %11, ptr %.09, align 8
  %12 = getelementptr inbounds double, ptr %.0, i32 -1
  br label %8, !llvm.loop !62

13:                                               ; preds = %8
  %14 = load double, ptr %4, align 8
  store double %14, ptr %.09, align 8
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
  %8 = sdiv exact i64 %7, 8
  %9 = sub nsw i64 0, %8
  call void @_ZSt9__advanceIPdxEvRT_T0_St26random_access_iterator_tag(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %9, i8 undef)
  %10 = icmp sgt i64 %8, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load ptr, ptr %4, align 8
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %12, ptr align 8 %0, i64 %7, i1 false)
  br label %19

13:                                               ; preds = %3
  %14 = icmp eq i64 %8, 1
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
  %9 = getelementptr inbounds nuw double, ptr %8, i32 1
  store ptr %9, ptr %0, align 8
  br label %21

10:                                               ; preds = %5, %3
  %11 = call i1 @llvm.is.constant.i64(i64 %1)
  br i1 %11, label %12, label %17

12:                                               ; preds = %10
  %13 = icmp eq i64 %1, -1
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr inbounds double, ptr %15, i32 -1
  store ptr %16, ptr %0, align 8
  br label %20

17:                                               ; preds = %12, %10
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr inbounds double, ptr %18, i64 %1
  store ptr %19, ptr %0, align 8
  br label %20

20:                                               ; preds = %17, %14
  br label %21

21:                                               ; preds = %20, %7
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
  %4 = icmp ne ptr %0, %1
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 8
  %10 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %9)
  %11 = mul nsw i64 %10, 2
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %11, i8 %2)
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2)
  br label %12

12:                                               ; preds = %5, %3
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
  br label %5

5:                                                ; preds = %14, %4
  %.017 = phi i64 [ %2, %4 ], [ %15, %14 ]
  %.0 = phi ptr [ %1, %4 ], [ %16, %14 ]
  %6 = ptrtoint ptr %.0 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 8
  %10 = icmp sgt i64 %9, 16
  br i1 %10, label %11, label %17

11:                                               ; preds = %5
  %12 = icmp eq i64 %.017, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %.0, ptr noundef %.0, i8 %3)
  br label %17

14:                                               ; preds = %11
  %15 = add nsw i64 %.017, -1
  %16 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %.0, i8 %3)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %16, ptr noundef %.0, i64 noundef %15, i8 %3)
  br label %5, !llvm.loop !63

17:                                               ; preds = %13, %5
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = sdiv exact i64 %6, 8
  %8 = icmp sgt i64 %7, 16
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = getelementptr inbounds double, ptr %0, i64 16
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %10, i8 %2)
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %10, ptr noundef %1, i8 %2)
  br label %12

11:                                               ; preds = %3
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2)
  br label %12

12:                                               ; preds = %11, %9
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
  %7 = sdiv exact i64 %6, 8
  %8 = sdiv i64 %7, 2
  %9 = getelementptr inbounds double, ptr %0, i64 %8
  %10 = getelementptr inbounds double, ptr %0, i64 1
  %11 = getelementptr inbounds double, ptr %1, i64 -1
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_S6_T0_(ptr noundef %0, ptr noundef %10, ptr noundef %9, ptr noundef %11, i8 %2)
  %12 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_S6_T0_(ptr noundef %10, ptr noundef %1, ptr noundef %0, i8 %2)
  ret ptr %12
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  store i8 %3, ptr %5, align 1
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %6

6:                                                ; preds = %11, %4
  %.0 = phi ptr [ %1, %4 ], [ %12, %11 ]
  %7 = icmp ult ptr %.0, %2
  br i1 %7, label %8, label %13

8:                                                ; preds = %6
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.0, ptr noundef %0)
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %.0, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %11

11:                                               ; preds = %10, %8
  %12 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %6, !llvm.loop !64

13:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  br label %4

4:                                                ; preds = %10, %3
  %.0 = phi ptr [ %1, %3 ], [ %11, %10 ]
  %5 = ptrtoint ptr %.0 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 8
  %9 = icmp sgt i64 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = getelementptr inbounds double, ptr %.0, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %11, ptr noundef %11, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %4, !llvm.loop !65

12:                                               ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = sdiv exact i64 %6, 8
  %8 = icmp slt i64 %7, 2
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %20

10:                                               ; preds = %3
  %11 = sub nsw i64 %7, 2
  %12 = sdiv i64 %11, 2
  br label %13

13:                                               ; preds = %18, %10
  %.0 = phi i64 [ %12, %10 ], [ %19, %18 ]
  %14 = getelementptr inbounds double, ptr %0, i64 %.0
  %15 = load double, ptr %14, align 8
  %.sroa.0.0.copyload = load i8, ptr %2, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %.0, i64 noundef %7, double noundef %15, i8 %.sroa.0.0.copyload)
  %16 = icmp eq i64 %.0, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %20

18:                                               ; preds = %13
  %19 = add nsw i64 %.0, -1
  br label %13, !llvm.loop !66

20:                                               ; preds = %17, %9
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
  %10 = sdiv exact i64 %9, 8
  %.sroa.0.0.copyload = load i8, ptr %3, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef 0, i64 noundef %10, double noundef %5, i8 %.sroa.0.0.copyload)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, i8 %4) #0 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.1", align 1
  store i8 %4, ptr %6, align 1
  br label %8

8:                                                ; preds = %21, %5
  %.027 = phi i64 [ %1, %5 ], [ %.1, %21 ]
  %9 = sub nsw i64 %2, 1
  %10 = sdiv i64 %9, 2
  %11 = icmp slt i64 %.027, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = add nsw i64 %.027, 1
  %14 = mul nsw i64 2, %13
  %15 = getelementptr inbounds double, ptr %0, i64 %14
  %16 = sub nsw i64 %14, 1
  %17 = getelementptr inbounds double, ptr %0, i64 %16
  %18 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %15, ptr noundef %17)
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = add nsw i64 %14, -1
  br label %21

21:                                               ; preds = %19, %12
  %.1 = phi i64 [ %20, %19 ], [ %14, %12 ]
  %22 = getelementptr inbounds double, ptr %0, i64 %.1
  %23 = load double, ptr %22, align 8
  %24 = getelementptr inbounds double, ptr %0, i64 %.027
  store double %23, ptr %24, align 8
  br label %8, !llvm.loop !67

25:                                               ; preds = %8
  %26 = and i64 %2, 1
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = sub nsw i64 %2, 2
  %30 = sdiv i64 %29, 2
  %31 = icmp eq i64 %.027, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = add nsw i64 %.027, 1
  %34 = mul nsw i64 2, %33
  %35 = sub nsw i64 %34, 1
  %36 = getelementptr inbounds double, ptr %0, i64 %35
  %37 = load double, ptr %36, align 8
  %38 = getelementptr inbounds double, ptr %0, i64 %.027
  store double %37, ptr %38, align 8
  br label %39

39:                                               ; preds = %32, %28, %25
  %.128 = phi i64 [ %35, %32 ], [ %.027, %28 ], [ %.027, %25 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %0, i64 noundef %.128, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %7)
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
  %7 = sub nsw i64 %1, 1
  %8 = sdiv i64 %7, 2
  br label %9

9:                                                ; preds = %16, %5
  %.013 = phi i64 [ %1, %5 ], [ %.0, %16 ]
  %.0 = phi i64 [ %8, %5 ], [ %21, %16 ]
  %10 = icmp sgt i64 %.013, %2
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  %12 = getelementptr inbounds double, ptr %0, i64 %.0
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi i1 [ false, %9 ], [ %13, %11 ]
  br i1 %15, label %16, label %22

16:                                               ; preds = %14
  %17 = getelementptr inbounds double, ptr %0, i64 %.0
  %18 = load double, ptr %17, align 8
  %19 = getelementptr inbounds double, ptr %0, i64 %.013
  store double %18, ptr %19, align 8
  %20 = sub nsw i64 %.0, 1
  %21 = sdiv i64 %20, 2
  br label %9, !llvm.loop !68

22:                                               ; preds = %14
  %23 = load double, ptr %6, align 8
  %24 = getelementptr inbounds double, ptr %0, i64 %.013
  store double %23, ptr %24, align 8
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
  store i8 %3, ptr %5, align 1
  br label %6

6:                                                ; preds = %20, %4
  %.013 = phi ptr [ %1, %4 ], [ %.114, %20 ]
  %.0 = phi ptr [ %0, %4 ], [ %21, %20 ]
  br label %7

7:                                                ; preds = %9, %6
  %.1 = phi ptr [ %.0, %6 ], [ %10, %9 ]
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.1, ptr noundef %2)
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = getelementptr inbounds nuw double, ptr %.1, i32 1
  br label %7, !llvm.loop !69

11:                                               ; preds = %7
  %12 = getelementptr inbounds double, ptr %.013, i32 -1
  br label %13

13:                                               ; preds = %15, %11
  %.114 = phi ptr [ %12, %11 ], [ %16, %15 ]
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %.114)
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = getelementptr inbounds double, ptr %.114, i32 -1
  br label %13, !llvm.loop !70

17:                                               ; preds = %13
  %18 = icmp ult ptr %.1, %.114
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  ret ptr %.1

20:                                               ; preds = %17
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1, ptr noundef %.114)
  %21 = getelementptr inbounds nuw double, ptr %.1, i32 1
  br label %6, !llvm.loop !71
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  store i8 %2, ptr %4, align 1
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  br label %23

7:                                                ; preds = %3
  %8 = getelementptr inbounds double, ptr %0, i64 1
  br label %9

9:                                                ; preds = %21, %7
  %.0 = phi ptr [ %8, %7 ], [ %22, %21 ]
  %10 = icmp ne ptr %.0, %1
  br i1 %10, label %11, label %23

11:                                               ; preds = %9
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %.0, ptr noundef %0)
  br i1 %12, label %13, label %19

13:                                               ; preds = %11
  %14 = load double, ptr %.0, align 8
  %15 = getelementptr inbounds double, ptr %.0, i64 1
  %16 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %17 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %.0)
  %18 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %16, ptr noundef %17, ptr noundef %15)
  store double %14, ptr %0, align 8
  br label %21

19:                                               ; preds = %11
  %.sroa.0.0.copyload = load i8, ptr %4, align 1
  %20 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %.sroa.0.0.copyload)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %.0, i8 %20)
  br label %21

21:                                               ; preds = %19, %13
  %22 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %9, !llvm.loop !72

23:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  br label %4

4:                                                ; preds = %6, %3
  %.0 = phi ptr [ %0, %3 ], [ %8, %6 ]
  %5 = icmp ne ptr %.0, %1
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %2)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %.0, i8 %7)
  %8 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %4, !llvm.loop !73

9:                                                ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %0, i8 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", align 1
  %4 = alloca double, align 8
  store i8 %1, ptr %3, align 1
  %5 = load double, ptr %0, align 8
  store double %5, ptr %4, align 8
  %6 = getelementptr inbounds double, ptr %0, i32 -1
  br label %7

7:                                                ; preds = %9, %2
  %.09 = phi ptr [ %0, %2 ], [ %.0, %9 ]
  %.0 = phi ptr [ %6, %2 ], [ %11, %9 ]
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %.0)
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = load double, ptr %.0, align 8
  store double %10, ptr %.09, align 8
  %11 = getelementptr inbounds double, ptr %.0, i32 -1
  br label %7, !llvm.loop !74

12:                                               ; preds = %7
  %13 = load double, ptr %4, align 8
  store double %13, ptr %.09, align 8
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
  %7 = zext i1 %6 to i64
  ret i1 %6
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = icmp ne ptr %0, %1
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 8
  %10 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %9)
  %11 = mul nsw i64 %10, 2
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %11, i8 %2)
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2)
  br label %12

12:                                               ; preds = %5, %3
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
  br label %5

5:                                                ; preds = %14, %4
  %.017 = phi i64 [ %2, %4 ], [ %15, %14 ]
  %.0 = phi ptr [ %1, %4 ], [ %16, %14 ]
  %6 = ptrtoint ptr %.0 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 8
  %10 = icmp sgt i64 %9, 16
  br i1 %10, label %11, label %17

11:                                               ; preds = %5
  %12 = icmp eq i64 %.017, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %.0, ptr noundef %.0, i8 %3)
  br label %17

14:                                               ; preds = %11
  %15 = add nsw i64 %.017, -1
  %16 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %.0, i8 %3)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %16, ptr noundef %.0, i64 noundef %15, i8 %3)
  br label %5, !llvm.loop !75

17:                                               ; preds = %13, %5
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = sdiv exact i64 %6, 8
  %8 = icmp sgt i64 %7, 16
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = getelementptr inbounds double, ptr %0, i64 16
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %10, i8 %2)
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %10, ptr noundef %1, i8 %2)
  br label %12

11:                                               ; preds = %3
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2)
  br label %12

12:                                               ; preds = %11, %9
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
  %7 = sdiv exact i64 %6, 8
  %8 = sdiv i64 %7, 2
  %9 = getelementptr inbounds double, ptr %0, i64 %8
  %10 = getelementptr inbounds double, ptr %0, i64 1
  %11 = getelementptr inbounds double, ptr %1, i64 -1
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_S6_T0_(ptr noundef %0, ptr noundef %10, ptr noundef %9, ptr noundef %11, i8 %2)
  %12 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_S6_T0_(ptr noundef %10, ptr noundef %1, ptr noundef %0, i8 %2)
  ret ptr %12
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  store i8 %3, ptr %5, align 1
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %6

6:                                                ; preds = %11, %4
  %.0 = phi ptr [ %1, %4 ], [ %12, %11 ]
  %7 = icmp ult ptr %.0, %2
  br i1 %7, label %8, label %13

8:                                                ; preds = %6
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.0, ptr noundef %0)
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %.0, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %11

11:                                               ; preds = %10, %8
  %12 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %6, !llvm.loop !76

13:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  br label %4

4:                                                ; preds = %10, %3
  %.0 = phi ptr [ %1, %3 ], [ %11, %10 ]
  %5 = ptrtoint ptr %.0 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 8
  %9 = icmp sgt i64 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = getelementptr inbounds double, ptr %.0, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %11, ptr noundef %11, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %4, !llvm.loop !77

12:                                               ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = sdiv exact i64 %6, 8
  %8 = icmp slt i64 %7, 2
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %20

10:                                               ; preds = %3
  %11 = sub nsw i64 %7, 2
  %12 = sdiv i64 %11, 2
  br label %13

13:                                               ; preds = %18, %10
  %.0 = phi i64 [ %12, %10 ], [ %19, %18 ]
  %14 = getelementptr inbounds double, ptr %0, i64 %.0
  %15 = load double, ptr %14, align 8
  %.sroa.0.0.copyload = load i8, ptr %2, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %.0, i64 noundef %7, double noundef %15, i8 %.sroa.0.0.copyload)
  %16 = icmp eq i64 %.0, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %20

18:                                               ; preds = %13
  %19 = add nsw i64 %.0, -1
  br label %13, !llvm.loop !78

20:                                               ; preds = %17, %9
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
  %10 = sdiv exact i64 %9, 8
  %.sroa.0.0.copyload = load i8, ptr %3, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef 0, i64 noundef %10, double noundef %5, i8 %.sroa.0.0.copyload)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, i8 %4) #0 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.4", align 1
  store i8 %4, ptr %6, align 1
  br label %8

8:                                                ; preds = %21, %5
  %.027 = phi i64 [ %1, %5 ], [ %.1, %21 ]
  %9 = sub nsw i64 %2, 1
  %10 = sdiv i64 %9, 2
  %11 = icmp slt i64 %.027, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = add nsw i64 %.027, 1
  %14 = mul nsw i64 2, %13
  %15 = getelementptr inbounds double, ptr %0, i64 %14
  %16 = sub nsw i64 %14, 1
  %17 = getelementptr inbounds double, ptr %0, i64 %16
  %18 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %15, ptr noundef %17)
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = add nsw i64 %14, -1
  br label %21

21:                                               ; preds = %19, %12
  %.1 = phi i64 [ %20, %19 ], [ %14, %12 ]
  %22 = getelementptr inbounds double, ptr %0, i64 %.1
  %23 = load double, ptr %22, align 8
  %24 = getelementptr inbounds double, ptr %0, i64 %.027
  store double %23, ptr %24, align 8
  br label %8, !llvm.loop !79

25:                                               ; preds = %8
  %26 = and i64 %2, 1
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = sub nsw i64 %2, 2
  %30 = sdiv i64 %29, 2
  %31 = icmp eq i64 %.027, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = add nsw i64 %.027, 1
  %34 = mul nsw i64 2, %33
  %35 = sub nsw i64 %34, 1
  %36 = getelementptr inbounds double, ptr %0, i64 %35
  %37 = load double, ptr %36, align 8
  %38 = getelementptr inbounds double, ptr %0, i64 %.027
  store double %37, ptr %38, align 8
  br label %39

39:                                               ; preds = %32, %28, %25
  %.128 = phi i64 [ %35, %32 ], [ %.027, %28 ], [ %.027, %25 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %0, i64 noundef %.128, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %7)
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
  %7 = sub nsw i64 %1, 1
  %8 = sdiv i64 %7, 2
  br label %9

9:                                                ; preds = %16, %5
  %.013 = phi i64 [ %1, %5 ], [ %.0, %16 ]
  %.0 = phi i64 [ %8, %5 ], [ %21, %16 ]
  %10 = icmp sgt i64 %.013, %2
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  %12 = getelementptr inbounds double, ptr %0, i64 %.0
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi i1 [ false, %9 ], [ %13, %11 ]
  br i1 %15, label %16, label %22

16:                                               ; preds = %14
  %17 = getelementptr inbounds double, ptr %0, i64 %.0
  %18 = load double, ptr %17, align 8
  %19 = getelementptr inbounds double, ptr %0, i64 %.013
  store double %18, ptr %19, align 8
  %20 = sub nsw i64 %.0, 1
  %21 = sdiv i64 %20, 2
  br label %9, !llvm.loop !80

22:                                               ; preds = %14
  %23 = load double, ptr %6, align 8
  %24 = getelementptr inbounds double, ptr %0, i64 %.013
  store double %23, ptr %24, align 8
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
  store i8 %3, ptr %5, align 1
  br label %6

6:                                                ; preds = %20, %4
  %.013 = phi ptr [ %1, %4 ], [ %.114, %20 ]
  %.0 = phi ptr [ %0, %4 ], [ %21, %20 ]
  br label %7

7:                                                ; preds = %9, %6
  %.1 = phi ptr [ %.0, %6 ], [ %10, %9 ]
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.1, ptr noundef %2)
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = getelementptr inbounds nuw double, ptr %.1, i32 1
  br label %7, !llvm.loop !81

11:                                               ; preds = %7
  %12 = getelementptr inbounds double, ptr %.013, i32 -1
  br label %13

13:                                               ; preds = %15, %11
  %.114 = phi ptr [ %12, %11 ], [ %16, %15 ]
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %.114)
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = getelementptr inbounds double, ptr %.114, i32 -1
  br label %13, !llvm.loop !82

17:                                               ; preds = %13
  %18 = icmp ult ptr %.1, %.114
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  ret ptr %.1

20:                                               ; preds = %17
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1, ptr noundef %.114)
  %21 = getelementptr inbounds nuw double, ptr %.1, i32 1
  br label %6, !llvm.loop !83
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  store i8 %2, ptr %4, align 1
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  br label %23

7:                                                ; preds = %3
  %8 = getelementptr inbounds double, ptr %0, i64 1
  br label %9

9:                                                ; preds = %21, %7
  %.0 = phi ptr [ %8, %7 ], [ %22, %21 ]
  %10 = icmp ne ptr %.0, %1
  br i1 %10, label %11, label %23

11:                                               ; preds = %9
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %.0, ptr noundef %0)
  br i1 %12, label %13, label %19

13:                                               ; preds = %11
  %14 = load double, ptr %.0, align 8
  %15 = getelementptr inbounds double, ptr %.0, i64 1
  %16 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %17 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %.0)
  %18 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %16, ptr noundef %17, ptr noundef %15)
  store double %14, ptr %0, align 8
  br label %21

19:                                               ; preds = %11
  %.sroa.0.0.copyload = load i8, ptr %4, align 1
  %20 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %.sroa.0.0.copyload)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %.0, i8 %20)
  br label %21

21:                                               ; preds = %19, %13
  %22 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %9, !llvm.loop !84

23:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  br label %4

4:                                                ; preds = %6, %3
  %.0 = phi ptr [ %0, %3 ], [ %8, %6 ]
  %5 = icmp ne ptr %.0, %1
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %2)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %.0, i8 %7)
  %8 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %4, !llvm.loop !85

9:                                                ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %0, i8 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", align 1
  %4 = alloca double, align 8
  store i8 %1, ptr %3, align 1
  %5 = load double, ptr %0, align 8
  store double %5, ptr %4, align 8
  %6 = getelementptr inbounds double, ptr %0, i32 -1
  br label %7

7:                                                ; preds = %9, %2
  %.09 = phi ptr [ %0, %2 ], [ %.0, %9 ]
  %.0 = phi ptr [ %6, %2 ], [ %11, %9 ]
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %.0)
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = load double, ptr %.0, align 8
  store double %10, ptr %.09, align 8
  %11 = getelementptr inbounds double, ptr %.0, i32 -1
  br label %7, !llvm.loop !86

12:                                               ; preds = %7
  %13 = load double, ptr %4, align 8
  store double %13, ptr %.09, align 8
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
  %4 = icmp ne ptr %0, %1
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 8
  %10 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %9)
  %11 = mul nsw i64 %10, 2
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %11, i8 %2)
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2)
  br label %12

12:                                               ; preds = %5, %3
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
  br label %5

5:                                                ; preds = %14, %4
  %.017 = phi i64 [ %2, %4 ], [ %15, %14 ]
  %.0 = phi ptr [ %1, %4 ], [ %16, %14 ]
  %6 = ptrtoint ptr %.0 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 8
  %10 = icmp sgt i64 %9, 16
  br i1 %10, label %11, label %17

11:                                               ; preds = %5
  %12 = icmp eq i64 %.017, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %.0, ptr noundef %.0, i8 %3)
  br label %17

14:                                               ; preds = %11
  %15 = add nsw i64 %.017, -1
  %16 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %.0, i8 %3)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %16, ptr noundef %.0, i64 noundef %15, i8 %3)
  br label %5, !llvm.loop !87

17:                                               ; preds = %13, %5
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = sdiv exact i64 %6, 8
  %8 = icmp sgt i64 %7, 16
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = getelementptr inbounds double, ptr %0, i64 16
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %10, i8 %2)
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %10, ptr noundef %1, i8 %2)
  br label %12

11:                                               ; preds = %3
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2)
  br label %12

12:                                               ; preds = %11, %9
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
  %7 = sdiv exact i64 %6, 8
  %8 = sdiv i64 %7, 2
  %9 = getelementptr inbounds double, ptr %0, i64 %8
  %10 = getelementptr inbounds double, ptr %0, i64 1
  %11 = getelementptr inbounds double, ptr %1, i64 -1
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_(ptr noundef %0, ptr noundef %10, ptr noundef %9, ptr noundef %11, i8 %2)
  %12 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_S7_T0_(ptr noundef %10, ptr noundef %1, ptr noundef %0, i8 %2)
  ret ptr %12
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store i8 %3, ptr %5, align 1
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %6

6:                                                ; preds = %11, %4
  %.0 = phi ptr [ %1, %4 ], [ %12, %11 ]
  %7 = icmp ult ptr %.0, %2
  br i1 %7, label %8, label %13

8:                                                ; preds = %6
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.0, ptr noundef %0)
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %.0, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %11

11:                                               ; preds = %10, %8
  %12 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %6, !llvm.loop !88

13:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  br label %4

4:                                                ; preds = %10, %3
  %.0 = phi ptr [ %1, %3 ], [ %11, %10 ]
  %5 = ptrtoint ptr %.0 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 8
  %9 = icmp sgt i64 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = getelementptr inbounds double, ptr %.0, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %11, ptr noundef %11, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %4, !llvm.loop !89

12:                                               ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = sdiv exact i64 %6, 8
  %8 = icmp slt i64 %7, 2
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %20

10:                                               ; preds = %3
  %11 = sub nsw i64 %7, 2
  %12 = sdiv i64 %11, 2
  br label %13

13:                                               ; preds = %18, %10
  %.0 = phi i64 [ %12, %10 ], [ %19, %18 ]
  %14 = getelementptr inbounds double, ptr %0, i64 %.0
  %15 = load double, ptr %14, align 8
  %.sroa.0.0.copyload = load i8, ptr %2, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %.0, i64 noundef %7, double noundef %15, i8 %.sroa.0.0.copyload)
  %16 = icmp eq i64 %.0, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %20

18:                                               ; preds = %13
  %19 = add nsw i64 %.0, -1
  br label %13, !llvm.loop !90

20:                                               ; preds = %17, %9
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
  %10 = sdiv exact i64 %9, 8
  %.sroa.0.0.copyload = load i8, ptr %3, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef 0, i64 noundef %10, double noundef %5, i8 %.sroa.0.0.copyload)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, i8 %4) #0 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.7", align 1
  store i8 %4, ptr %6, align 1
  br label %8

8:                                                ; preds = %21, %5
  %.027 = phi i64 [ %1, %5 ], [ %.1, %21 ]
  %9 = sub nsw i64 %2, 1
  %10 = sdiv i64 %9, 2
  %11 = icmp slt i64 %.027, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = add nsw i64 %.027, 1
  %14 = mul nsw i64 2, %13
  %15 = getelementptr inbounds double, ptr %0, i64 %14
  %16 = sub nsw i64 %14, 1
  %17 = getelementptr inbounds double, ptr %0, i64 %16
  %18 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %15, ptr noundef %17)
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = add nsw i64 %14, -1
  br label %21

21:                                               ; preds = %19, %12
  %.1 = phi i64 [ %20, %19 ], [ %14, %12 ]
  %22 = getelementptr inbounds double, ptr %0, i64 %.1
  %23 = load double, ptr %22, align 8
  %24 = getelementptr inbounds double, ptr %0, i64 %.027
  store double %23, ptr %24, align 8
  br label %8, !llvm.loop !91

25:                                               ; preds = %8
  %26 = and i64 %2, 1
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = sub nsw i64 %2, 2
  %30 = sdiv i64 %29, 2
  %31 = icmp eq i64 %.027, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = add nsw i64 %.027, 1
  %34 = mul nsw i64 2, %33
  %35 = sub nsw i64 %34, 1
  %36 = getelementptr inbounds double, ptr %0, i64 %35
  %37 = load double, ptr %36, align 8
  %38 = getelementptr inbounds double, ptr %0, i64 %.027
  store double %37, ptr %38, align 8
  br label %39

39:                                               ; preds = %32, %28, %25
  %.128 = phi i64 [ %35, %32 ], [ %.027, %28 ], [ %.027, %25 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEEEvT_T0_S8_T1_RT2_(ptr noundef %0, i64 noundef %.128, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %7)
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
  %7 = sub nsw i64 %1, 1
  %8 = sdiv i64 %7, 2
  br label %9

9:                                                ; preds = %16, %5
  %.013 = phi i64 [ %1, %5 ], [ %.0, %16 ]
  %.0 = phi i64 [ %8, %5 ], [ %21, %16 ]
  %10 = icmp sgt i64 %.013, %2
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  %12 = getelementptr inbounds double, ptr %0, i64 %.0
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi i1 [ false, %9 ], [ %13, %11 ]
  br i1 %15, label %16, label %22

16:                                               ; preds = %14
  %17 = getelementptr inbounds double, ptr %0, i64 %.0
  %18 = load double, ptr %17, align 8
  %19 = getelementptr inbounds double, ptr %0, i64 %.013
  store double %18, ptr %19, align 8
  %20 = sub nsw i64 %.0, 1
  %21 = sdiv i64 %20, 2
  br label %9, !llvm.loop !92

22:                                               ; preds = %14
  %23 = load double, ptr %6, align 8
  %24 = getelementptr inbounds double, ptr %0, i64 %.013
  store double %23, ptr %24, align 8
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
  store i8 %3, ptr %5, align 1
  br label %6

6:                                                ; preds = %20, %4
  %.013 = phi ptr [ %1, %4 ], [ %.114, %20 ]
  %.0 = phi ptr [ %0, %4 ], [ %21, %20 ]
  br label %7

7:                                                ; preds = %9, %6
  %.1 = phi ptr [ %.0, %6 ], [ %10, %9 ]
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.1, ptr noundef %2)
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = getelementptr inbounds nuw double, ptr %.1, i32 1
  br label %7, !llvm.loop !93

11:                                               ; preds = %7
  %12 = getelementptr inbounds double, ptr %.013, i32 -1
  br label %13

13:                                               ; preds = %15, %11
  %.114 = phi ptr [ %12, %11 ], [ %16, %15 ]
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %.114)
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = getelementptr inbounds double, ptr %.114, i32 -1
  br label %13, !llvm.loop !94

17:                                               ; preds = %13
  %18 = icmp ult ptr %.1, %.114
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  ret ptr %.1

20:                                               ; preds = %17
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1, ptr noundef %.114)
  %21 = getelementptr inbounds nuw double, ptr %.1, i32 1
  br label %6, !llvm.loop !95
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store i8 %2, ptr %4, align 1
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  br label %23

7:                                                ; preds = %3
  %8 = getelementptr inbounds double, ptr %0, i64 1
  br label %9

9:                                                ; preds = %21, %7
  %.0 = phi ptr [ %8, %7 ], [ %22, %21 ]
  %10 = icmp ne ptr %.0, %1
  br i1 %10, label %11, label %23

11:                                               ; preds = %9
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %.0, ptr noundef %0)
  br i1 %12, label %13, label %19

13:                                               ; preds = %11
  %14 = load double, ptr %.0, align 8
  %15 = getelementptr inbounds double, ptr %.0, i64 1
  %16 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %17 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %.0)
  %18 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %16, ptr noundef %17, ptr noundef %15)
  store double %14, ptr %0, align 8
  br label %21

19:                                               ; preds = %11
  %.sroa.0.0.copyload = load i8, ptr %4, align 1
  %20 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %.sroa.0.0.copyload)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %.0, i8 %20)
  br label %21

21:                                               ; preds = %19, %13
  %22 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %9, !llvm.loop !96

23:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  br label %4

4:                                                ; preds = %6, %3
  %.0 = phi ptr [ %0, %3 ], [ %8, %6 ]
  %5 = icmp ne ptr %.0, %1
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %2)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %.0, i8 %7)
  %8 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %4, !llvm.loop !97

9:                                                ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %0, i8 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", align 1
  %4 = alloca double, align 8
  store i8 %1, ptr %3, align 1
  %5 = load double, ptr %0, align 8
  store double %5, ptr %4, align 8
  %6 = getelementptr inbounds double, ptr %0, i32 -1
  br label %7

7:                                                ; preds = %9, %2
  %.09 = phi ptr [ %0, %2 ], [ %.0, %9 ]
  %.0 = phi ptr [ %6, %2 ], [ %11, %9 ]
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %.0)
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = load double, ptr %.0, align 8
  store double %10, ptr %.09, align 8
  %11 = getelementptr inbounds double, ptr %.0, i32 -1
  br label %7, !llvm.loop !98

12:                                               ; preds = %7
  %13 = load double, ptr %4, align 8
  store double %13, ptr %.09, align 8
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
  %4 = icmp ne ptr %0, %1
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 8
  %10 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %9)
  %11 = mul nsw i64 %10, 2
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %11, i8 undef)
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 undef)
  br label %12

12:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local i8 @_ZN9__gnu_cxx5__ops16__iter_less_iterEv() #5 comdat {
  ret i8 undef
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i8 %3) #0 comdat {
  br label %5

5:                                                ; preds = %14, %4
  %.015 = phi i64 [ %2, %4 ], [ %15, %14 ]
  %.0 = phi ptr [ %1, %4 ], [ %16, %14 ]
  %6 = ptrtoint ptr %.0 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 8
  %10 = icmp sgt i64 %9, 16
  br i1 %10, label %11, label %17

11:                                               ; preds = %5
  %12 = icmp eq i64 %.015, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %.0, ptr noundef %.0, i8 undef)
  br label %17

14:                                               ; preds = %11
  %15 = add nsw i64 %.015, -1
  %16 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(ptr noundef %0, ptr noundef %.0, i8 undef)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %16, ptr noundef %.0, i64 noundef %15, i8 undef)
  br label %5, !llvm.loop !99

17:                                               ; preds = %13, %5
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = sdiv exact i64 %6, 8
  %8 = icmp sgt i64 %7, 16
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = getelementptr inbounds double, ptr %0, i64 16
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %10, i8 undef)
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %10, ptr noundef %1, i8 undef)
  br label %12

11:                                               ; preds = %3
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 undef)
  br label %12

12:                                               ; preds = %11, %9
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
  %7 = sdiv exact i64 %6, 8
  %8 = sdiv i64 %7, 2
  %9 = getelementptr inbounds double, ptr %0, i64 %8
  %10 = getelementptr inbounds double, ptr %0, i64 1
  %11 = getelementptr inbounds double, ptr %1, i64 -1
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_(ptr noundef %0, ptr noundef %10, ptr noundef %9, ptr noundef %11, i8 undef)
  %12 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_(ptr noundef %10, ptr noundef %1, ptr noundef %0, i8 undef)
  ret ptr %12
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store i8 %3, ptr %5, align 1
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %6

6:                                                ; preds = %11, %4
  %.0 = phi ptr [ %1, %4 ], [ %12, %11 ]
  %7 = icmp ult ptr %.0, %2
  br i1 %7, label %8, label %13

8:                                                ; preds = %6
  %9 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.0, ptr noundef %0)
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %.0, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %11

11:                                               ; preds = %10, %8
  %12 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %6, !llvm.loop !100

13:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  br label %4

4:                                                ; preds = %10, %3
  %.0 = phi ptr [ %1, %3 ], [ %11, %10 ]
  %5 = ptrtoint ptr %.0 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 8
  %9 = icmp sgt i64 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = getelementptr inbounds double, ptr %.0, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %0, ptr noundef %11, ptr noundef %11, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %4, !llvm.loop !101

12:                                               ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = sdiv exact i64 %6, 8
  %8 = icmp slt i64 %7, 2
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %20

10:                                               ; preds = %3
  %11 = sub nsw i64 %7, 2
  %12 = sdiv i64 %11, 2
  br label %13

13:                                               ; preds = %18, %10
  %.0 = phi i64 [ %12, %10 ], [ %19, %18 ]
  %14 = getelementptr inbounds double, ptr %0, i64 %.0
  %15 = load double, ptr %14, align 8
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %0, i64 noundef %.0, i64 noundef %7, double noundef %15, i8 undef)
  %16 = icmp eq i64 %.0, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %20

18:                                               ; preds = %13
  %19 = add nsw i64 %.0, -1
  br label %13, !llvm.loop !102

20:                                               ; preds = %17, %9
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
  %10 = sdiv exact i64 %9, 8
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %0, i64 noundef 0, i64 noundef %10, double noundef %5, i8 undef)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, i8 %4) #0 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_val", align 1
  store i8 %4, ptr %6, align 1
  br label %8

8:                                                ; preds = %21, %5
  %.027 = phi i64 [ %1, %5 ], [ %.128, %21 ]
  %9 = sub nsw i64 %2, 1
  %10 = sdiv i64 %9, 2
  %11 = icmp slt i64 %.027, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = add nsw i64 %.027, 1
  %14 = mul nsw i64 2, %13
  %15 = getelementptr inbounds double, ptr %0, i64 %14
  %16 = sub nsw i64 %14, 1
  %17 = getelementptr inbounds double, ptr %0, i64 %16
  %18 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %15, ptr noundef %17)
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = add nsw i64 %14, -1
  br label %21

21:                                               ; preds = %19, %12
  %.128 = phi i64 [ %20, %19 ], [ %14, %12 ]
  %22 = getelementptr inbounds double, ptr %0, i64 %.128
  %23 = load double, ptr %22, align 8
  %24 = getelementptr inbounds double, ptr %0, i64 %.027
  store double %23, ptr %24, align 8
  br label %8, !llvm.loop !103

25:                                               ; preds = %8
  %26 = and i64 %2, 1
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = sub nsw i64 %2, 2
  %30 = sdiv i64 %29, 2
  %31 = icmp eq i64 %.027, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = add nsw i64 %.027, 1
  %34 = mul nsw i64 2, %33
  %35 = sub nsw i64 %34, 1
  %36 = getelementptr inbounds double, ptr %0, i64 %35
  %37 = load double, ptr %36, align 8
  %38 = getelementptr inbounds double, ptr %0, i64 %.027
  store double %37, ptr %38, align 8
  br label %39

39:                                               ; preds = %32, %28, %25
  %.1 = phi i64 [ %35, %32 ], [ %.027, %28 ], [ %.027, %25 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(ptr noundef nonnull align 1 dereferenceable(1) %7, i8 undef)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_(ptr noundef %0, i64 noundef %.1, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %7)
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
  %7 = sub nsw i64 %1, 1
  %8 = sdiv i64 %7, 2
  br label %9

9:                                                ; preds = %16, %5
  %.013 = phi i64 [ %1, %5 ], [ %.0, %16 ]
  %.0 = phi i64 [ %8, %5 ], [ %21, %16 ]
  %10 = icmp sgt i64 %.013, %2
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  %12 = getelementptr inbounds double, ptr %0, i64 %.0
  %13 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi i1 [ false, %9 ], [ %13, %11 ]
  br i1 %15, label %16, label %22

16:                                               ; preds = %14
  %17 = getelementptr inbounds double, ptr %0, i64 %.0
  %18 = load double, ptr %17, align 8
  %19 = getelementptr inbounds double, ptr %0, i64 %.013
  store double %18, ptr %19, align 8
  %20 = sub nsw i64 %.0, 1
  %21 = sdiv i64 %20, 2
  br label %9, !llvm.loop !104

22:                                               ; preds = %14
  %23 = load double, ptr %6, align 8
  %24 = getelementptr inbounds double, ptr %0, i64 %.013
  store double %23, ptr %24, align 8
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
  store i8 %3, ptr %5, align 1
  br label %6

6:                                                ; preds = %20, %4
  %.013 = phi ptr [ %1, %4 ], [ %.114, %20 ]
  %.0 = phi ptr [ %0, %4 ], [ %21, %20 ]
  br label %7

7:                                                ; preds = %9, %6
  %.1 = phi ptr [ %.0, %6 ], [ %10, %9 ]
  %8 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.1, ptr noundef %2)
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = getelementptr inbounds nuw double, ptr %.1, i32 1
  br label %7, !llvm.loop !105

11:                                               ; preds = %7
  %12 = getelementptr inbounds double, ptr %.013, i32 -1
  br label %13

13:                                               ; preds = %15, %11
  %.114 = phi ptr [ %12, %11 ], [ %16, %15 ]
  %14 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %.114)
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = getelementptr inbounds double, ptr %.114, i32 -1
  br label %13, !llvm.loop !106

17:                                               ; preds = %13
  %18 = icmp ult ptr %.1, %.114
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  ret ptr %.1

20:                                               ; preds = %17
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1, ptr noundef %.114)
  %21 = getelementptr inbounds nuw double, ptr %.1, i32 1
  br label %6, !llvm.loop !107
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store i8 %2, ptr %4, align 1
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  br label %23

7:                                                ; preds = %3
  %8 = getelementptr inbounds double, ptr %0, i64 1
  br label %9

9:                                                ; preds = %21, %7
  %.0 = phi ptr [ %8, %7 ], [ %22, %21 ]
  %10 = icmp ne ptr %.0, %1
  br i1 %10, label %11, label %23

11:                                               ; preds = %9
  %12 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %.0, ptr noundef %0)
  br i1 %12, label %13, label %19

13:                                               ; preds = %11
  %14 = load double, ptr %.0, align 8
  %15 = getelementptr inbounds double, ptr %.0, i64 1
  %16 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %17 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %.0)
  %18 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %16, ptr noundef %17, ptr noundef %15)
  store double %14, ptr %0, align 8
  br label %21

19:                                               ; preds = %11
  %20 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 undef)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %.0, i8 undef)
  br label %21

21:                                               ; preds = %19, %13
  %22 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %9, !llvm.loop !108

23:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  br label %4

4:                                                ; preds = %6, %3
  %.0 = phi ptr [ %0, %3 ], [ %8, %6 ]
  %5 = icmp ne ptr %.0, %1
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 undef)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %.0, i8 undef)
  %8 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %4, !llvm.loop !109

9:                                                ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %0, i8 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_less_iter", align 1
  %4 = alloca double, align 8
  store i8 %1, ptr %3, align 1
  %5 = load double, ptr %0, align 8
  store double %5, ptr %4, align 8
  %6 = getelementptr inbounds double, ptr %0, i32 -1
  br label %7

7:                                                ; preds = %9, %2
  %.09 = phi ptr [ %0, %2 ], [ %.0, %9 ]
  %.0 = phi ptr [ %6, %2 ], [ %11, %9 ]
  %8 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %.0)
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = load double, ptr %.0, align 8
  store double %10, ptr %.09, align 8
  %11 = getelementptr inbounds double, ptr %.0, i32 -1
  br label %7, !llvm.loop !110

12:                                               ; preds = %7
  %13 = load double, ptr %4, align 8
  store double %13, ptr %.09, align 8
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
attributes #14 = { noreturn nounwind }
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
