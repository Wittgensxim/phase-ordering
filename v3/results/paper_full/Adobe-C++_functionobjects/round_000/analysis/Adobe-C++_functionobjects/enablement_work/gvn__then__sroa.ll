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
  %.pre1 = load i32, ptr @current_test, align 4
  br label %18

18:                                               ; preds = %17, %5
  %19 = phi i32 [ %.pre1, %17 ], [ %6, %5 ]
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

10:                                               ; preds = %25, %5
  %11 = phi i32 [ %26, %25 ], [ 12, %5 ]
  %12 = phi i32 [ %27, %25 ], [ 0, %5 ]
  %13 = load i32, ptr @current_test, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %10
  %16 = load ptr, ptr @results, align 8
  %17 = sext i32 %12 to i64
  %18 = getelementptr inbounds %struct.one_result, ptr %16, i64 %17
  %19 = getelementptr inbounds nuw %struct.one_result, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = call i64 @strlen(ptr noundef %20) #15
  %22 = trunc i64 %21 to i32
  %23 = icmp sgt i32 %22, %11
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24, %15
  %26 = phi i32 [ %22, %24 ], [ %11, %15 ]
  %27 = add nsw i32 %12, 1
  br label %10, !llvm.loop !7

28:                                               ; preds = %10
  %29 = sub nsw i32 %11, 12
  %30 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.1, i32 noundef %29, ptr noundef @.str.2)
  %31 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.3, i32 noundef %11, ptr noundef @.str.2)
  br label %32

32:                                               ; preds = %36, %28
  %33 = phi i32 [ %55, %36 ], [ 0, %28 ]
  %34 = load i32, ptr @current_test, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %32
  %37 = sext i32 %11 to i64
  %38 = load ptr, ptr @results, align 8
  %39 = sext i32 %33 to i64
  %40 = getelementptr inbounds %struct.one_result, ptr %38, i64 %39
  %41 = getelementptr inbounds nuw %struct.one_result, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8
  %43 = call i64 @strlen(ptr noundef %42) #15
  %44 = sub i64 %37, %43
  %45 = trunc i64 %44 to i32
  %46 = load ptr, ptr @results, align 8
  %47 = getelementptr inbounds %struct.one_result, ptr %46, i64 %39
  %48 = getelementptr inbounds nuw %struct.one_result, ptr %47, i32 0, i32 1
  %49 = load ptr, ptr %48, align 8
  %50 = load double, ptr %47, align 8
  %51 = fdiv double %9, %50
  %52 = load double, ptr %46, align 8
  %53 = fdiv double %50, %52
  %54 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.4, i32 noundef %33, i32 noundef %45, ptr noundef @.str.5, ptr noundef %49, double noundef %50, double noundef %51, double noundef %53)
  %55 = add nsw i32 %33, 1
  br label %32, !llvm.loop !9

56:                                               ; preds = %32
  br label %57

57:                                               ; preds = %61, %56
  %58 = phi double [ %66, %61 ], [ 0.000000e+00, %56 ]
  %59 = phi i32 [ %67, %61 ], [ 0, %56 ]
  %60 = icmp slt i32 %59, %34
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load ptr, ptr @results, align 8
  %63 = sext i32 %59 to i64
  %64 = getelementptr inbounds %struct.one_result, ptr %62, i64 %63
  %65 = load double, ptr %64, align 8
  %66 = fadd double %58, %65
  %67 = add nsw i32 %59, 1
  br label %57, !llvm.loop !10

68:                                               ; preds = %57
  %69 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.6, ptr noundef %0, double noundef %58)
  %70 = load i32, ptr @current_test, align 4
  %71 = icmp sgt i32 %70, 1
  br i1 %71, label %72, label %96

72:                                               ; preds = %68
  %73 = icmp ne i32 %4, 0
  br i1 %73, label %74, label %96

74:                                               ; preds = %72
  br label %75

75:                                               ; preds = %80, %74
  %76 = phi double [ %88, %80 ], [ 0.000000e+00, %74 ]
  %77 = phi i32 [ %.pre, %80 ], [ %70, %74 ]
  %78 = phi i32 [ %89, %80 ], [ 1, %74 ]
  %79 = icmp slt i32 %78, %77
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = load ptr, ptr @results, align 8
  %82 = sext i32 %78 to i64
  %83 = getelementptr inbounds %struct.one_result, ptr %81, i64 %82
  %84 = load double, ptr %83, align 8
  %85 = load double, ptr %81, align 8
  %86 = fdiv double %84, %85
  %87 = call double @log(double noundef %86) #15
  %88 = fadd double %76, %87
  %89 = add nsw i32 %78, 1
  %.pre = load i32, ptr @current_test, align 4
  br label %75, !llvm.loop !11

90:                                               ; preds = %75
  %91 = sub nsw i32 %77, 1
  %92 = sitofp i32 %91 to double
  %93 = fdiv double %76, %92
  %94 = call double @exp(double noundef %93) #15
  %95 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.7, ptr noundef %0, double noundef %94)
  br label %96

96:                                               ; preds = %90, %72, %68
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
  %10 = sext i32 %5 to i64
  %11 = getelementptr inbounds %struct.one_result, ptr %9, i64 %10
  %12 = getelementptr inbounds nuw %struct.one_result, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = call i64 @strlen(ptr noundef %13) #15
  %15 = trunc i64 %14 to i32
  %16 = icmp sgt i32 %15, %4
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  br label %18

18:                                               ; preds = %17, %8
  %19 = phi i32 [ %15, %17 ], [ %4, %8 ]
  %20 = add nsw i32 %5, 1
  br label %3, !llvm.loop !12

21:                                               ; preds = %3
  %22 = sub nsw i32 %4, 12
  %23 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.8, i32 noundef %22, ptr noundef @.str.2)
  %24 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.9, i32 noundef %4, ptr noundef @.str.2)
  br label %25

25:                                               ; preds = %29, %21
  %26 = phi i32 [ %45, %29 ], [ 0, %21 ]
  %27 = load i32, ptr @current_test, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %25
  %30 = sext i32 %4 to i64
  %31 = load ptr, ptr @results, align 8
  %32 = sext i32 %26 to i64
  %33 = getelementptr inbounds %struct.one_result, ptr %31, i64 %32
  %34 = getelementptr inbounds nuw %struct.one_result, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 8
  %36 = call i64 @strlen(ptr noundef %35) #15
  %37 = sub i64 %30, %36
  %38 = trunc i64 %37 to i32
  %39 = load ptr, ptr @results, align 8
  %40 = getelementptr inbounds %struct.one_result, ptr %39, i64 %32
  %41 = getelementptr inbounds nuw %struct.one_result, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8
  %43 = load double, ptr %40, align 8
  %44 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.10, i32 noundef %26, i32 noundef %38, ptr noundef @.str.5, ptr noundef %42, double noundef %43)
  %45 = add nsw i32 %26, 1
  br label %25, !llvm.loop !13

46:                                               ; preds = %25
  br label %47

47:                                               ; preds = %51, %46
  %48 = phi double [ %56, %51 ], [ 0.000000e+00, %46 ]
  %49 = phi i32 [ %57, %51 ], [ 0, %46 ]
  %50 = icmp slt i32 %49, %27
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load ptr, ptr @results, align 8
  %53 = sext i32 %49 to i64
  %54 = getelementptr inbounds %struct.one_result, ptr %52, i64 %53
  %55 = load double, ptr %54, align 8
  %56 = fadd double %48, %55
  %57 = add nsw i32 %49, 1
  br label %47, !llvm.loop !14

58:                                               ; preds = %47
  %59 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.6, ptr noundef %1, double noundef %48)
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
  br i1 %8, label %9, label %39

9:                                                ; preds = %3
  %10 = load double, ptr %0, align 8
  br label %11

11:                                               ; preds = %33, %9
  %.0 = phi ptr [ %0, %9 ], [ %.1, %33 ]
  %12 = phi ptr [ %.1, %33 ], [ %0, %9 ]
  %13 = phi ptr [ %16, %33 ], [ %1, %9 ]
  br label %14

14:                                               ; preds = %19, %11
  %15 = phi ptr [ %16, %19 ], [ %13, %11 ]
  %16 = getelementptr inbounds double, ptr %15, i32 -1
  %17 = load double, ptr %16, align 8
  %18 = call noundef zeroext i1 %2(double noundef %10, double noundef %17)
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %14, !llvm.loop !15

20:                                               ; preds = %14
  %21 = icmp ult ptr %12, %16
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  br label %36

23:                                               ; preds = %20
  br label %24

24:                                               ; preds = %28, %23
  %.1 = phi ptr [ %.0, %23 ], [ %29, %28 ]
  %25 = phi ptr [ %29, %28 ], [ %12, %23 ]
  %26 = load double, ptr %25, align 8
  %27 = call noundef zeroext i1 %2(double noundef %26, double noundef %10)
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw double, ptr %25, i32 1
  br label %24, !llvm.loop !16

30:                                               ; preds = %24
  %31 = icmp ult ptr %25, %16
  br i1 %31, label %33, label %32

32:                                               ; preds = %30
  br label %36

33:                                               ; preds = %30
  %34 = load double, ptr %16, align 8
  %35 = load double, ptr %25, align 8
  store double %35, ptr %16, align 8
  store double %34, ptr %.1, align 8
  br label %11, !llvm.loop !17

36:                                               ; preds = %32, %22
  %37 = getelementptr inbounds double, ptr %16, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %37, ptr noundef %2)
  %38 = getelementptr inbounds double, ptr %16, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %38, ptr noundef %1, ptr noundef %2)
  br label %39

39:                                               ; preds = %36, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = sdiv exact i64 %6, 8
  %8 = icmp sgt i64 %7, 1
  br i1 %8, label %9, label %39

9:                                                ; preds = %3
  %10 = load double, ptr %0, align 8
  br label %11

11:                                               ; preds = %33, %9
  %.0 = phi ptr [ %0, %9 ], [ %.1, %33 ]
  %12 = phi ptr [ %.1, %33 ], [ %0, %9 ]
  %13 = phi ptr [ %16, %33 ], [ %1, %9 ]
  br label %14

14:                                               ; preds = %19, %11
  %15 = phi ptr [ %16, %19 ], [ %13, %11 ]
  %16 = getelementptr inbounds double, ptr %15, i32 -1
  %17 = load double, ptr %16, align 8
  %18 = call noundef zeroext i1 %2(double noundef %10, double noundef %17)
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %14, !llvm.loop !18

20:                                               ; preds = %14
  %21 = icmp ult ptr %12, %16
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  br label %36

23:                                               ; preds = %20
  br label %24

24:                                               ; preds = %28, %23
  %.1 = phi ptr [ %.0, %23 ], [ %29, %28 ]
  %25 = phi ptr [ %29, %28 ], [ %12, %23 ]
  %26 = load double, ptr %25, align 8
  %27 = call noundef zeroext i1 %2(double noundef %26, double noundef %10)
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw double, ptr %25, i32 1
  br label %24, !llvm.loop !19

30:                                               ; preds = %24
  %31 = icmp ult ptr %25, %16
  br i1 %31, label %33, label %32

32:                                               ; preds = %30
  br label %36

33:                                               ; preds = %30
  %34 = load double, ptr %16, align 8
  %35 = load double, ptr %25, align 8
  store double %35, ptr %16, align 8
  store double %34, ptr %.1, align 8
  br label %11, !llvm.loop !20

36:                                               ; preds = %32, %22
  %37 = getelementptr inbounds double, ptr %16, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %37, ptr noundef %2)
  %38 = getelementptr inbounds double, ptr %16, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %38, ptr noundef %1, ptr noundef %2)
  br label %39

39:                                               ; preds = %36, %3
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

26:                                               ; preds = %29, %17
  %27 = phi i32 [ %34, %29 ], [ 0, %17 ]
  %28 = icmp slt i32 %27, %18
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = call i32 @rand()
  %31 = sitofp i32 %30 to double
  %32 = sext i32 %27 to i64
  %33 = getelementptr inbounds double, ptr %25, i64 %32
  store double %31, ptr %33, align 8
  %34 = add nsw i32 %27, 1
  br label %26, !llvm.loop !21

35:                                               ; preds = %26
  %36 = call noalias noundef nonnull ptr @_Znay(i64 noundef %24) #16
  br label %37

37:                                               ; preds = %42, %35
  %.0 = phi i32 [ 0, %35 ], [ %48, %42 ]
  %38 = phi i32 [ %18, %42 ], [ %18, %35 ]
  %39 = phi ptr [ %36, %42 ], [ %36, %35 ]
  %40 = phi i32 [ %48, %42 ], [ 0, %35 ]
  %41 = icmp slt i32 %40, %10
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = sext i32 %38 to i64
  %44 = getelementptr inbounds double, ptr %25, i64 %43
  %45 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %25, ptr noundef %44, ptr noundef %39)
  %46 = sext i32 %18 to i64
  call void @qsort(ptr noundef %36, i64 noundef %46, i64 noundef 8, ptr noundef @_Z19less_than_function1PKvS0_)
  %47 = getelementptr inbounds double, ptr %36, i64 %46
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %36, ptr noundef %47)
  %48 = add nsw i32 %.0, 1
  br label %37, !llvm.loop !22

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %55, %49
  %.1 = phi i32 [ 0, %49 ], [ %61, %55 ]
  %51 = phi i32 [ %18, %55 ], [ %38, %49 ]
  %52 = phi ptr [ %36, %55 ], [ %39, %49 ]
  %53 = phi i32 [ %61, %55 ], [ 0, %49 ]
  %54 = icmp slt i32 %53, %10
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = sext i32 %51 to i64
  %57 = getelementptr inbounds double, ptr %25, i64 %56
  %58 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %25, ptr noundef %57, ptr noundef %52)
  %59 = sext i32 %18 to i64
  %60 = getelementptr inbounds double, ptr %36, i64 %59
  call void @_Z18quicksort_functionPdS_PFbddE(ptr noundef %36, ptr noundef %60, ptr noundef @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %36, ptr noundef %60)
  %61 = add nsw i32 %.1, 1
  br label %50, !llvm.loop !23

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %68, %62
  %.2 = phi i32 [ 0, %62 ], [ %74, %68 ]
  %64 = phi i32 [ %18, %68 ], [ %51, %62 ]
  %65 = phi ptr [ %36, %68 ], [ %52, %62 ]
  %66 = phi i32 [ %74, %68 ], [ 0, %62 ]
  %67 = icmp slt i32 %66, %10
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = sext i32 %64 to i64
  %70 = getelementptr inbounds double, ptr %25, i64 %69
  %71 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %25, ptr noundef %70, ptr noundef %65)
  %72 = sext i32 %18 to i64
  %73 = getelementptr inbounds double, ptr %36, i64 %72
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %36, ptr noundef %73, ptr noundef @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %36, ptr noundef %73)
  %74 = add nsw i32 %.2, 1
  br label %63, !llvm.loop !24

75:                                               ; preds = %63
  br label %76

76:                                               ; preds = %81, %75
  %.3 = phi i32 [ 0, %75 ], [ %87, %81 ]
  %77 = phi i32 [ %18, %81 ], [ %64, %75 ]
  %78 = phi ptr [ %36, %81 ], [ %65, %75 ]
  %79 = phi i32 [ %87, %81 ], [ 0, %75 ]
  %80 = icmp slt i32 %79, %10
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = sext i32 %77 to i64
  %83 = getelementptr inbounds double, ptr %25, i64 %82
  %84 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %25, ptr noundef %83, ptr noundef %78)
  %85 = sext i32 %18 to i64
  %86 = getelementptr inbounds double, ptr %36, i64 %85
  call void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef %36, ptr noundef %86)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %36, ptr noundef %86)
  %87 = add nsw i32 %.3, 1
  br label %76, !llvm.loop !25

88:                                               ; preds = %76
  br label %89

89:                                               ; preds = %94, %88
  %.4 = phi i32 [ 0, %88 ], [ %100, %94 ]
  %90 = phi i32 [ %18, %94 ], [ %77, %88 ]
  %91 = phi ptr [ %36, %94 ], [ %78, %88 ]
  %92 = phi i32 [ %100, %94 ], [ 0, %88 ]
  %93 = icmp slt i32 %92, %10
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = sext i32 %90 to i64
  %96 = getelementptr inbounds double, ptr %25, i64 %95
  %97 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %25, ptr noundef %96, ptr noundef %91)
  %98 = sext i32 %18 to i64
  %99 = getelementptr inbounds double, ptr %36, i64 %98
  call void @_ZSt4sortIPdPFbddEEvT_S3_T0_(ptr noundef %36, ptr noundef %99, ptr noundef @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %36, ptr noundef %99)
  %100 = add nsw i32 %.4, 1
  br label %89, !llvm.loop !26

101:                                              ; preds = %89
  br label %102

102:                                              ; preds = %107, %101
  %.5 = phi i32 [ 0, %101 ], [ %113, %107 ]
  %103 = phi i32 [ %18, %107 ], [ %90, %101 ]
  %104 = phi ptr [ %36, %107 ], [ %91, %101 ]
  %105 = phi i32 [ %113, %107 ], [ 0, %101 ]
  %106 = icmp slt i32 %105, %10
  br i1 %106, label %107, label %114

107:                                              ; preds = %102
  %108 = sext i32 %103 to i64
  %109 = getelementptr inbounds double, ptr %25, i64 %108
  %110 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %25, ptr noundef %109, ptr noundef %104)
  %111 = sext i32 %18 to i64
  %112 = getelementptr inbounds double, ptr %36, i64 %111
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %36, ptr noundef %112, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %36, ptr noundef %112)
  %113 = add nsw i32 %.5, 1
  br label %102, !llvm.loop !27

114:                                              ; preds = %102
  br label %115

115:                                              ; preds = %121, %114
  %.6 = phi i32 [ 0, %114 ], [ %128, %121 ]
  %116 = phi i32 [ %18, %121 ], [ %103, %114 ]
  %117 = phi ptr [ %25, %121 ], [ %25, %114 ]
  %118 = phi ptr [ %36, %121 ], [ %104, %114 ]
  %119 = phi i32 [ %128, %121 ], [ 0, %114 ]
  %120 = icmp slt i32 %119, %10
  br i1 %120, label %121, label %129

121:                                              ; preds = %115
  %122 = sext i32 %116 to i64
  %123 = getelementptr inbounds double, ptr %118, i64 %122
  call void @_ZSt4sortIPd17less_than_functorEvT_S2_T0_(ptr noundef %118, ptr noundef %123, i8 undef)
  %124 = sext i32 %18 to i64
  %125 = getelementptr inbounds double, ptr %36, i64 %124
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %36, ptr noundef %125)
  %126 = getelementptr inbounds double, ptr %25, i64 %124
  %127 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %25, ptr noundef %126, ptr noundef %36)
  %128 = add nsw i32 %.6, 1
  br label %115, !llvm.loop !28

129:                                              ; preds = %115
  br label %130

130:                                              ; preds = %135, %129
  %.7 = phi i32 [ 0, %129 ], [ %141, %135 ]
  %131 = phi i32 [ %18, %135 ], [ %116, %129 ]
  %132 = phi ptr [ %36, %135 ], [ %118, %129 ]
  %133 = phi i32 [ %141, %135 ], [ 0, %129 ]
  %134 = icmp slt i32 %133, %10
  br i1 %134, label %135, label %142

135:                                              ; preds = %130
  %136 = sext i32 %131 to i64
  %137 = getelementptr inbounds double, ptr %117, i64 %136
  %138 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %117, ptr noundef %137, ptr noundef %132)
  %139 = sext i32 %18 to i64
  %140 = getelementptr inbounds double, ptr %36, i64 %139
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %36, ptr noundef %140, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %36, ptr noundef %140)
  %141 = add nsw i32 %.7, 1
  br label %130, !llvm.loop !29

142:                                              ; preds = %130
  br label %143

143:                                              ; preds = %148, %142
  %.8 = phi i32 [ 0, %142 ], [ %154, %148 ]
  %144 = phi i32 [ %18, %148 ], [ %131, %142 ]
  %145 = phi ptr [ %36, %148 ], [ %132, %142 ]
  %146 = phi i32 [ %154, %148 ], [ 0, %142 ]
  %147 = icmp slt i32 %146, %10
  br i1 %147, label %148, label %155

148:                                              ; preds = %143
  %149 = sext i32 %144 to i64
  %150 = getelementptr inbounds double, ptr %117, i64 %149
  %151 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %117, ptr noundef %150, ptr noundef %145)
  %152 = sext i32 %18 to i64
  %153 = getelementptr inbounds double, ptr %36, i64 %152
  call void @_ZSt4sortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %36, ptr noundef %153, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %36, ptr noundef %153)
  %154 = add nsw i32 %.8, 1
  br label %143, !llvm.loop !30

155:                                              ; preds = %143
  br label %156

156:                                              ; preds = %161, %155
  %.9 = phi i32 [ 0, %155 ], [ %167, %161 ]
  %157 = phi i32 [ %18, %161 ], [ %144, %155 ]
  %158 = phi ptr [ %36, %161 ], [ %145, %155 ]
  %159 = phi i32 [ %167, %161 ], [ 0, %155 ]
  %160 = icmp slt i32 %159, %10
  br i1 %160, label %161, label %168

161:                                              ; preds = %156
  %162 = sext i32 %157 to i64
  %163 = getelementptr inbounds double, ptr %117, i64 %162
  %164 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %117, ptr noundef %163, ptr noundef %158)
  %165 = sext i32 %18 to i64
  %166 = getelementptr inbounds double, ptr %36, i64 %165
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %36, ptr noundef %166, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %36, ptr noundef %166)
  %167 = add nsw i32 %.9, 1
  br label %156, !llvm.loop !31

168:                                              ; preds = %156
  br label %169

169:                                              ; preds = %174, %168
  %.10 = phi i32 [ 0, %168 ], [ %180, %174 ]
  %170 = phi i32 [ %18, %174 ], [ %157, %168 ]
  %171 = phi ptr [ %36, %174 ], [ %158, %168 ]
  %172 = phi i32 [ %180, %174 ], [ 0, %168 ]
  %173 = icmp slt i32 %172, %10
  br i1 %173, label %174, label %181

174:                                              ; preds = %169
  %175 = sext i32 %170 to i64
  %176 = getelementptr inbounds double, ptr %117, i64 %175
  %177 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %117, ptr noundef %176, ptr noundef %171)
  %178 = sext i32 %18 to i64
  %179 = getelementptr inbounds double, ptr %36, i64 %178
  call void @_ZSt4sortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %36, ptr noundef %179, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %36, ptr noundef %179)
  %180 = add nsw i32 %.10, 1
  br label %169, !llvm.loop !32

181:                                              ; preds = %169
  br label %182

182:                                              ; preds = %187, %181
  %.11 = phi i32 [ 0, %181 ], [ %193, %187 ]
  %183 = phi i32 [ %18, %187 ], [ %170, %181 ]
  %184 = phi ptr [ %36, %187 ], [ %171, %181 ]
  %185 = phi i32 [ %193, %187 ], [ 0, %181 ]
  %186 = icmp slt i32 %185, %10
  br i1 %186, label %187, label %194

187:                                              ; preds = %182
  %188 = sext i32 %183 to i64
  %189 = getelementptr inbounds double, ptr %117, i64 %188
  %190 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %117, ptr noundef %189, ptr noundef %184)
  %191 = sext i32 %18 to i64
  %192 = getelementptr inbounds double, ptr %36, i64 %191
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %36, ptr noundef %192)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %36, ptr noundef %192)
  %193 = add nsw i32 %.11, 1
  br label %182, !llvm.loop !33

194:                                              ; preds = %182
  br label %195

195:                                              ; preds = %200, %194
  %.12 = phi i32 [ 0, %194 ], [ %206, %200 ]
  %196 = phi i32 [ %18, %200 ], [ %183, %194 ]
  %197 = phi ptr [ %36, %200 ], [ %184, %194 ]
  %198 = phi i32 [ %206, %200 ], [ 0, %194 ]
  %199 = icmp slt i32 %198, %10
  br i1 %199, label %200, label %207

200:                                              ; preds = %195
  %201 = sext i32 %196 to i64
  %202 = getelementptr inbounds double, ptr %117, i64 %201
  %203 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %117, ptr noundef %202, ptr noundef %197)
  %204 = sext i32 %18 to i64
  %205 = getelementptr inbounds double, ptr %36, i64 %204
  call void @_ZSt4sortIPdEvT_S1_(ptr noundef %36, ptr noundef %205)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %36, ptr noundef %205)
  %206 = add nsw i32 %.12, 1
  br label %195, !llvm.loop !34

207:                                              ; preds = %195
  %208 = icmp eq ptr %197, null
  br i1 %208, label %210, label %209

209:                                              ; preds = %207
  call void @_ZdaPv(ptr noundef %197) #17
  br label %210

210:                                              ; preds = %209, %207
  %211 = phi ptr [ %25, %209 ], [ %117, %207 ]
  %212 = icmp eq ptr %211, null
  br i1 %212, label %214, label %213

213:                                              ; preds = %210
  call void @_ZdaPv(ptr noundef %211) #17
  br label %214

214:                                              ; preds = %213, %210
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

4:                                                ; preds = %17, %2
  %5 = phi ptr [ %11, %17 ], [ %0, %2 ]
  %6 = phi ptr [ %9, %17 ], [ %3, %2 ]
  %7 = icmp ne ptr %6, %1
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw double, ptr %6, i32 1
  %10 = load double, ptr %6, align 8
  %11 = getelementptr inbounds nuw double, ptr %5, i32 1
  %12 = load double, ptr %5, align 8
  %13 = fcmp olt double %10, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load i32, ptr @current_test, align 4
  %16 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.11, i32 noundef %15)
  br label %18

17:                                               ; preds = %8
  br label %4, !llvm.loop !35

18:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef %0, ptr noundef %1) #0 comdat {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = sdiv exact i64 %5, 8
  %7 = icmp sgt i64 %6, 1
  br i1 %7, label %8, label %38

8:                                                ; preds = %2
  %9 = load double, ptr %0, align 8
  br label %10

10:                                               ; preds = %32, %8
  %.0 = phi ptr [ %0, %8 ], [ %.1, %32 ]
  %11 = phi ptr [ %.1, %32 ], [ %0, %8 ]
  %12 = phi ptr [ %15, %32 ], [ %1, %8 ]
  br label %13

13:                                               ; preds = %18, %10
  %14 = phi ptr [ %15, %18 ], [ %12, %10 ]
  %15 = getelementptr inbounds double, ptr %14, i32 -1
  %16 = load double, ptr %15, align 8
  %17 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %9, double noundef %16)
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %13, !llvm.loop !36

19:                                               ; preds = %13
  %20 = icmp ult ptr %11, %15
  br i1 %20, label %22, label %21

21:                                               ; preds = %19
  br label %35

22:                                               ; preds = %19
  br label %23

23:                                               ; preds = %27, %22
  %.1 = phi ptr [ %.0, %22 ], [ %28, %27 ]
  %24 = phi ptr [ %28, %27 ], [ %11, %22 ]
  %25 = load double, ptr %24, align 8
  %26 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %25, double noundef %9)
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = getelementptr inbounds nuw double, ptr %24, i32 1
  br label %23, !llvm.loop !37

29:                                               ; preds = %23
  %30 = icmp ult ptr %24, %15
  br i1 %30, label %32, label %31

31:                                               ; preds = %29
  br label %35

32:                                               ; preds = %29
  %33 = load double, ptr %15, align 8
  %34 = load double, ptr %24, align 8
  store double %34, ptr %15, align 8
  store double %33, ptr %.1, align 8
  br label %10, !llvm.loop !38

35:                                               ; preds = %31, %21
  %36 = getelementptr inbounds double, ptr %15, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %36, ptr noundef @_Z19less_than_function2dd)
  %37 = getelementptr inbounds double, ptr %15, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %37, ptr noundef %1, ptr noundef @_Z19less_than_function2dd)
  br label %38

38:                                               ; preds = %35, %2
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
  br i1 %10, label %11, label %38

11:                                               ; preds = %3
  %12 = load double, ptr %0, align 8
  store double %12, ptr %5, align 8
  br label %13

13:                                               ; preds = %32, %11
  %.0 = phi ptr [ %0, %11 ], [ %.1, %32 ]
  %14 = phi ptr [ %17, %32 ], [ %1, %11 ]
  br label %15

15:                                               ; preds = %19, %13
  %16 = phi ptr [ %17, %19 ], [ %14, %13 ]
  %17 = getelementptr inbounds double, ptr %16, i32 -1
  %18 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %17)
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %15, !llvm.loop !39

20:                                               ; preds = %15
  %21 = icmp ult ptr %.0, %17
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  br label %35

23:                                               ; preds = %20
  br label %24

24:                                               ; preds = %27, %23
  %.1 = phi ptr [ %.0, %23 ], [ %28, %27 ]
  %25 = phi ptr [ %28, %27 ], [ %.0, %23 ]
  %26 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = getelementptr inbounds nuw double, ptr %25, i32 1
  br label %24, !llvm.loop !40

29:                                               ; preds = %24
  %30 = icmp ult ptr %25, %17
  br i1 %30, label %32, label %31

31:                                               ; preds = %29
  br label %35

32:                                               ; preds = %29
  %33 = load double, ptr %17, align 8
  %34 = load double, ptr %25, align 8
  store double %34, ptr %17, align 8
  store double %33, ptr %.1, align 8
  br label %13, !llvm.loop !41

35:                                               ; preds = %31, %22
  %36 = getelementptr inbounds double, ptr %17, i64 1
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %0, ptr noundef %36, i8 undef)
  %37 = getelementptr inbounds double, ptr %17, i64 1
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %37, ptr noundef %1, i8 undef)
  br label %38

38:                                               ; preds = %35, %3
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
  br i1 %10, label %11, label %38

11:                                               ; preds = %3
  %12 = load double, ptr %0, align 8
  store double %12, ptr %5, align 8
  br label %13

13:                                               ; preds = %32, %11
  %.0 = phi ptr [ %0, %11 ], [ %.1, %32 ]
  %14 = phi ptr [ %17, %32 ], [ %1, %11 ]
  br label %15

15:                                               ; preds = %19, %13
  %16 = phi ptr [ %17, %19 ], [ %14, %13 ]
  %17 = getelementptr inbounds double, ptr %16, i32 -1
  %18 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %17)
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %15, !llvm.loop !42

20:                                               ; preds = %15
  %21 = icmp ult ptr %.0, %17
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  br label %35

23:                                               ; preds = %20
  br label %24

24:                                               ; preds = %27, %23
  %.1 = phi ptr [ %.0, %23 ], [ %28, %27 ]
  %25 = phi ptr [ %28, %27 ], [ %.0, %23 ]
  %26 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = getelementptr inbounds nuw double, ptr %25, i32 1
  br label %24, !llvm.loop !43

29:                                               ; preds = %24
  %30 = icmp ult ptr %25, %17
  br i1 %30, label %32, label %31

31:                                               ; preds = %29
  br label %35

32:                                               ; preds = %29
  %33 = load double, ptr %17, align 8
  %34 = load double, ptr %25, align 8
  store double %34, ptr %17, align 8
  store double %33, ptr %.1, align 8
  br label %13, !llvm.loop !44

35:                                               ; preds = %31, %22
  %36 = getelementptr inbounds double, ptr %17, i64 1
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %0, ptr noundef %36, i8 undef)
  %37 = getelementptr inbounds double, ptr %17, i64 1
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %37, ptr noundef %1, i8 undef)
  br label %38

38:                                               ; preds = %35, %3
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
  br i1 %10, label %11, label %38

11:                                               ; preds = %3
  %12 = load double, ptr %0, align 8
  store double %12, ptr %5, align 8
  br label %13

13:                                               ; preds = %32, %11
  %.0 = phi ptr [ %0, %11 ], [ %.1, %32 ]
  %14 = phi ptr [ %17, %32 ], [ %1, %11 ]
  br label %15

15:                                               ; preds = %19, %13
  %16 = phi ptr [ %17, %19 ], [ %14, %13 ]
  %17 = getelementptr inbounds double, ptr %16, i32 -1
  %18 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %17)
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %15, !llvm.loop !45

20:                                               ; preds = %15
  %21 = icmp ult ptr %.0, %17
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  br label %35

23:                                               ; preds = %20
  br label %24

24:                                               ; preds = %27, %23
  %.1 = phi ptr [ %.0, %23 ], [ %28, %27 ]
  %25 = phi ptr [ %28, %27 ], [ %.0, %23 ]
  %26 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = getelementptr inbounds nuw double, ptr %25, i32 1
  br label %24, !llvm.loop !46

29:                                               ; preds = %24
  %30 = icmp ult ptr %25, %17
  br i1 %30, label %32, label %31

31:                                               ; preds = %29
  br label %35

32:                                               ; preds = %29
  %33 = load double, ptr %17, align 8
  %34 = load double, ptr %25, align 8
  store double %34, ptr %17, align 8
  store double %33, ptr %.1, align 8
  br label %13, !llvm.loop !47

35:                                               ; preds = %31, %22
  %36 = getelementptr inbounds double, ptr %17, i64 1
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %0, ptr noundef %36, i8 undef)
  %37 = getelementptr inbounds double, ptr %17, i64 1
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %37, ptr noundef %1, i8 undef)
  br label %38

38:                                               ; preds = %35, %3
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
  br i1 %7, label %8, label %38

8:                                                ; preds = %2
  %9 = load double, ptr %0, align 8
  br label %10

10:                                               ; preds = %33, %8
  %.0 = phi ptr [ %0, %8 ], [ %.1, %33 ]
  %11 = phi double [ %17, %33 ], [ %9, %8 ]
  %12 = phi ptr [ %.1, %33 ], [ %0, %8 ]
  %13 = phi ptr [ %16, %33 ], [ %1, %8 ]
  br label %14

14:                                               ; preds = %19, %10
  %15 = phi ptr [ %16, %19 ], [ %13, %10 ]
  %16 = getelementptr inbounds double, ptr %15, i32 -1
  %17 = load double, ptr %16, align 8
  %18 = fcmp olt double %9, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %14, !llvm.loop !48

20:                                               ; preds = %14
  %21 = icmp ult ptr %12, %16
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  br label %35

23:                                               ; preds = %20
  br label %24

24:                                               ; preds = %28, %23
  %.1 = phi ptr [ %.0, %23 ], [ %29, %28 ]
  %25 = phi double [ %.pre, %28 ], [ %11, %23 ]
  %26 = phi ptr [ %29, %28 ], [ %12, %23 ]
  %27 = fcmp olt double %25, %9
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw double, ptr %26, i32 1
  %.pre = load double, ptr %29, align 8
  br label %24, !llvm.loop !49

30:                                               ; preds = %24
  %31 = icmp ult ptr %26, %16
  br i1 %31, label %33, label %32

32:                                               ; preds = %30
  br label %35

33:                                               ; preds = %30
  %34 = load double, ptr %26, align 8
  store double %34, ptr %16, align 8
  store double %17, ptr %.1, align 8
  br label %10, !llvm.loop !50

35:                                               ; preds = %32, %22
  %36 = getelementptr inbounds double, ptr %16, i64 1
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %0, ptr noundef %36)
  %37 = getelementptr inbounds double, ptr %16, i64 1
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %37, ptr noundef %1)
  br label %38

38:                                               ; preds = %35, %2
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
  br label %18

11:                                               ; preds = %3
  %12 = icmp eq i64 %7, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %11
  %14 = load double, ptr %0, align 8
  store double %14, ptr %2, align 8
  %15 = getelementptr inbounds nuw double, ptr %2, i32 1
  br label %16

16:                                               ; preds = %13, %11
  %17 = phi ptr [ %15, %13 ], [ %2, %11 ]
  br label %18

18:                                               ; preds = %16, %9
  %19 = phi ptr [ %17, %16 ], [ %10, %9 ]
  ret ptr %19
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #10

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %2) #0 comdat {
  %4 = inttoptr i64 %2 to ptr
  %5 = icmp ne ptr %0, %1
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 8
  %11 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %10)
  %12 = mul nsw i64 %11, 2
  %13 = ptrtoint ptr %4 to i64
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %12, i64 %13)
  %14 = ptrtoint ptr %4 to i64
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %14)
  br label %15

15:                                               ; preds = %6, %3
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

6:                                                ; preds = %18, %4
  %7 = phi i64 [ %19, %18 ], [ %2, %4 ]
  %8 = phi ptr [ %21, %18 ], [ %1, %4 ]
  %9 = ptrtoint ptr %8 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 8
  %13 = icmp sgt i64 %12, 16
  br i1 %13, label %14, label %23

14:                                               ; preds = %6
  %15 = icmp eq i64 %7, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = ptrtoint ptr %5 to i64
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %8, ptr noundef %8, i64 %17)
  br label %23

18:                                               ; preds = %14
  %19 = add nsw i64 %7, -1
  %20 = ptrtoint ptr %5 to i64
  %21 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %8, i64 %20)
  %22 = ptrtoint ptr %5 to i64
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %21, ptr noundef %8, i64 noundef %19, i64 %22)
  br label %6, !llvm.loop !51

23:                                               ; preds = %16, %6
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
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = getelementptr inbounds double, ptr %0, i64 16
  %12 = ptrtoint ptr %4 to i64
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %11, i64 %12)
  %13 = ptrtoint ptr %4 to i64
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %11, ptr noundef %1, i64 %13)
  br label %16

14:                                               ; preds = %3
  %15 = ptrtoint ptr %4 to i64
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %15)
  br label %16

16:                                               ; preds = %14, %10
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = inttoptr i64 %3 to ptr
  store ptr %6, ptr %5, align 8
  %.sroa.0.0.copyload = load ptr, ptr %5, align 8
  %7 = ptrtoint ptr %.sroa.0.0.copyload to i64
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %7)
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
  %13 = ptrtoint ptr %4 to i64
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_(ptr noundef %0, ptr noundef %11, ptr noundef %10, ptr noundef %12, i64 %13)
  %14 = ptrtoint ptr %4 to i64
  %15 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_S7_T0_(ptr noundef %11, ptr noundef %1, ptr noundef %0, i64 %14)
  ret ptr %15
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = inttoptr i64 %3 to ptr
  store ptr %6, ptr %5, align 8
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %7

7:                                                ; preds = %14, %4
  %.0 = phi ptr [ %1, %4 ], [ %16, %14 ]
  %8 = phi ptr [ %15, %14 ], [ %0, %4 ]
  %9 = phi ptr [ %16, %14 ], [ %1, %4 ]
  %10 = icmp ult ptr %9, %2
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %9, ptr noundef %8)
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %.0, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %14

14:                                               ; preds = %13, %11
  %15 = phi ptr [ %0, %13 ], [ %8, %11 ]
  %16 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %7, !llvm.loop !52

17:                                               ; preds = %7
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 comdat {
  br label %4

4:                                                ; preds = %11, %3
  %5 = phi ptr [ %12, %11 ], [ %1, %3 ]
  %6 = ptrtoint ptr %5 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 8
  %10 = icmp sgt i64 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = getelementptr inbounds double, ptr %5, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %12, ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %4, !llvm.loop !53

13:                                               ; preds = %4
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
  br label %22

10:                                               ; preds = %3
  %11 = sub nsw i64 %7, 2
  %12 = sdiv i64 %11, 2
  br label %13

13:                                               ; preds = %20, %10
  %14 = phi i64 [ %21, %20 ], [ %12, %10 ]
  %15 = getelementptr inbounds double, ptr %0, i64 %14
  %16 = load double, ptr %15, align 8
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8
  %17 = ptrtoint ptr %.sroa.0.0.copyload to i64
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %14, i64 noundef %7, double noundef %16, i64 %17)
  %18 = icmp eq i64 %14, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %22

20:                                               ; preds = %13
  %21 = add nsw i64 %14, -1
  br label %13, !llvm.loop !54

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

9:                                                ; preds = %24, %5
  %.0 = phi i64 [ %1, %5 ], [ %25, %24 ]
  %10 = phi ptr [ %0, %24 ], [ %0, %5 ]
  %11 = phi i64 [ %25, %24 ], [ %1, %5 ]
  %12 = sub nsw i64 %2, 1
  %13 = sdiv i64 %12, 2
  %14 = icmp slt i64 %11, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %9
  %16 = add nsw i64 %11, 1
  %17 = mul nsw i64 2, %16
  %18 = getelementptr inbounds double, ptr %10, i64 %17
  %19 = sub nsw i64 %17, 1
  %20 = getelementptr inbounds double, ptr %10, i64 %19
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %18, ptr noundef %20)
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = add nsw i64 %17, -1
  br label %24

24:                                               ; preds = %22, %15
  %25 = phi i64 [ %23, %22 ], [ %17, %15 ]
  %26 = getelementptr inbounds double, ptr %0, i64 %25
  %27 = load double, ptr %26, align 8
  %28 = getelementptr inbounds double, ptr %0, i64 %.0
  store double %27, ptr %28, align 8
  br label %9, !llvm.loop !55

29:                                               ; preds = %9
  %30 = and i64 %2, 1
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = sub nsw i64 %2, 2
  %34 = sdiv i64 %33, 2
  %35 = icmp eq i64 %11, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = add nsw i64 %11, 1
  %38 = mul nsw i64 2, %37
  %39 = sub nsw i64 %38, 1
  %40 = getelementptr inbounds double, ptr %10, i64 %39
  %41 = load double, ptr %40, align 8
  %42 = getelementptr inbounds double, ptr %10, i64 %11
  store double %41, ptr %42, align 8
  br label %43

43:                                               ; preds = %36, %32, %29
  %44 = phi i64 [ %39, %36 ], [ %11, %32 ], [ %11, %29 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEEEvT_T0_S8_T1_RT2_(ptr noundef %10, i64 noundef %44, i64 noundef %1, double noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %7)
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

9:                                                ; preds = %19, %5
  %.04 = phi i64 [ %1, %5 ], [ %.0, %19 ]
  %.0 = phi i64 [ %8, %5 ], [ %24, %19 ]
  %10 = phi i64 [ %24, %19 ], [ %8, %5 ]
  %11 = phi ptr [ %0, %19 ], [ %0, %5 ]
  %12 = phi i64 [ %.0, %19 ], [ %1, %5 ]
  %13 = icmp sgt i64 %12, %2
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = getelementptr inbounds double, ptr %11, i64 %10
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEclIPddEEbT_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %15, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %17

17:                                               ; preds = %14, %9
  %18 = phi i1 [ false, %9 ], [ %16, %14 ]
  br i1 %18, label %19, label %25

19:                                               ; preds = %17
  %20 = getelementptr inbounds double, ptr %0, i64 %.0
  %21 = load double, ptr %20, align 8
  %22 = getelementptr inbounds double, ptr %0, i64 %.04
  store double %21, ptr %22, align 8
  %23 = sub nsw i64 %.0, 1
  %24 = sdiv i64 %23, 2
  br label %9, !llvm.loop !56

25:                                               ; preds = %17
  %26 = load double, ptr %6, align 8
  %27 = getelementptr inbounds double, ptr %0, i64 %.04
  store double %26, ptr %27, align 8
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

7:                                                ; preds = %26, %4
  %.04 = phi ptr [ %1, %4 ], [ %.15, %26 ]
  %.0 = phi ptr [ %0, %4 ], [ %27, %26 ]
  %8 = phi ptr [ %2, %26 ], [ %2, %4 ]
  %9 = phi ptr [ %27, %26 ], [ %0, %4 ]
  br label %10

10:                                               ; preds = %14, %7
  %.1 = phi ptr [ %.0, %7 ], [ %15, %14 ]
  %11 = phi ptr [ %2, %14 ], [ %8, %7 ]
  %12 = phi ptr [ %15, %14 ], [ %9, %7 ]
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %12, ptr noundef %11)
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw double, ptr %.1, i32 1
  br label %10, !llvm.loop !57

16:                                               ; preds = %10
  %17 = getelementptr inbounds double, ptr %.04, i32 -1
  br label %18

18:                                               ; preds = %21, %16
  %.15 = phi ptr [ %17, %16 ], [ %22, %21 ]
  %19 = phi ptr [ %22, %21 ], [ %17, %16 ]
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %2, ptr noundef %19)
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = getelementptr inbounds double, ptr %19, i32 -1
  br label %18, !llvm.loop !58

23:                                               ; preds = %18
  %24 = icmp ult ptr %.1, %19
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  ret ptr %.1

26:                                               ; preds = %23
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1, ptr noundef %19)
  %27 = getelementptr inbounds nuw double, ptr %.1, i32 1
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
  br label %30

8:                                                ; preds = %3
  %9 = getelementptr inbounds double, ptr %0, i64 1
  br label %10

10:                                               ; preds = %26, %8
  %.0 = phi ptr [ %9, %8 ], [ %29, %26 ]
  %11 = phi ptr [ %28, %26 ], [ %0, %8 ]
  %12 = phi ptr [ %29, %26 ], [ %9, %8 ]
  %13 = icmp ne ptr %12, %1
  br i1 %13, label %14, label %30

14:                                               ; preds = %10
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %12, ptr noundef %11)
  br i1 %15, label %16, label %22

16:                                               ; preds = %14
  %17 = load double, ptr %.0, align 8
  %18 = getelementptr inbounds double, ptr %.0, i64 1
  %19 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %11)
  %20 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %.0)
  %21 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %19, ptr noundef %20, ptr noundef %18)
  store double %17, ptr %0, align 8
  br label %26

22:                                               ; preds = %14
  %.sroa.0.0.copyload = load ptr, ptr %4, align 8
  %23 = ptrtoint ptr %.sroa.0.0.copyload to i64
  %24 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %23)
  %25 = inttoptr i64 %24 to ptr
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %.0, i64 %24)
  br label %26

26:                                               ; preds = %22, %16
  %27 = phi ptr [ %.0, %22 ], [ %.0, %16 ]
  %28 = phi ptr [ %11, %22 ], [ %0, %16 ]
  %29 = getelementptr inbounds nuw double, ptr %27, i32 1
  br label %10, !llvm.loop !60

30:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %2) #0 comdat {
  %4 = inttoptr i64 %2 to ptr
  br label %5

5:                                                ; preds = %8, %3
  %6 = phi ptr [ %12, %8 ], [ %0, %3 ]
  %7 = icmp ne ptr %6, %1
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = ptrtoint ptr %4 to i64
  %10 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %9)
  %11 = inttoptr i64 %10 to ptr
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %6, i64 %10)
  %12 = getelementptr inbounds nuw double, ptr %6, i32 1
  br label %5, !llvm.loop !61

13:                                               ; preds = %5
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

8:                                                ; preds = %12, %2
  %.0 = phi ptr [ %7, %2 ], [ %14, %12 ]
  %9 = phi ptr [ %10, %12 ], [ %0, %2 ]
  %10 = phi ptr [ %14, %12 ], [ %7, %2 ]
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEclIdPdEEbRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %10)
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load double, ptr %10, align 8
  store double %13, ptr %9, align 8
  %14 = getelementptr inbounds double, ptr %.0, i32 -1
  br label %8, !llvm.loop !62

15:                                               ; preds = %8
  %16 = load double, ptr %4, align 8
  store double %16, ptr %9, align 8
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

5:                                                ; preds = %16, %4
  %6 = phi i64 [ %17, %16 ], [ %2, %4 ]
  %7 = phi ptr [ %18, %16 ], [ %1, %4 ]
  %8 = ptrtoint ptr %7 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 8
  %12 = icmp sgt i64 %11, 16
  br i1 %12, label %13, label %19

13:                                               ; preds = %5
  %14 = icmp eq i64 %6, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %7, ptr noundef %7, i8 %3)
  br label %19

16:                                               ; preds = %13
  %17 = add nsw i64 %6, -1
  %18 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %7, i8 %3)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %18, ptr noundef %7, i64 noundef %17, i8 %3)
  br label %5, !llvm.loop !63

19:                                               ; preds = %15, %5
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
  %.sroa.0.0.copyload = load i8, ptr %5, align 1
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %.sroa.0.0.copyload)
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

6:                                                ; preds = %13, %4
  %.0 = phi ptr [ %1, %4 ], [ %15, %13 ]
  %7 = phi ptr [ %14, %13 ], [ %0, %4 ]
  %8 = phi ptr [ %15, %13 ], [ %1, %4 ]
  %9 = icmp ult ptr %8, %2
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %8, ptr noundef %7)
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %.0, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi ptr [ %0, %12 ], [ %7, %10 ]
  %15 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %6, !llvm.loop !64

16:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  br label %4

4:                                                ; preds = %11, %3
  %5 = phi ptr [ %12, %11 ], [ %1, %3 ]
  %6 = ptrtoint ptr %5 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 8
  %10 = icmp sgt i64 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = getelementptr inbounds double, ptr %5, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %12, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %4, !llvm.loop !65

13:                                               ; preds = %4
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
  br label %21

10:                                               ; preds = %3
  %11 = sub nsw i64 %7, 2
  %12 = sdiv i64 %11, 2
  br label %13

13:                                               ; preds = %19, %10
  %14 = phi i64 [ %20, %19 ], [ %12, %10 ]
  %15 = getelementptr inbounds double, ptr %0, i64 %14
  %16 = load double, ptr %15, align 8
  %.sroa.0.0.copyload = load i8, ptr %2, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %14, i64 noundef %7, double noundef %16, i8 %.sroa.0.0.copyload)
  %17 = icmp eq i64 %14, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %21

19:                                               ; preds = %13
  %20 = add nsw i64 %14, -1
  br label %13, !llvm.loop !66

21:                                               ; preds = %18, %9
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

8:                                                ; preds = %23, %5
  %.0 = phi i64 [ %1, %5 ], [ %24, %23 ]
  %9 = phi ptr [ %0, %23 ], [ %0, %5 ]
  %10 = phi i64 [ %24, %23 ], [ %1, %5 ]
  %11 = sub nsw i64 %2, 1
  %12 = sdiv i64 %11, 2
  %13 = icmp slt i64 %10, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %8
  %15 = add nsw i64 %10, 1
  %16 = mul nsw i64 2, %15
  %17 = getelementptr inbounds double, ptr %9, i64 %16
  %18 = sub nsw i64 %16, 1
  %19 = getelementptr inbounds double, ptr %9, i64 %18
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %17, ptr noundef %19)
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = add nsw i64 %16, -1
  br label %23

23:                                               ; preds = %21, %14
  %24 = phi i64 [ %22, %21 ], [ %16, %14 ]
  %25 = getelementptr inbounds double, ptr %0, i64 %24
  %26 = load double, ptr %25, align 8
  %27 = getelementptr inbounds double, ptr %0, i64 %.0
  store double %26, ptr %27, align 8
  br label %8, !llvm.loop !67

28:                                               ; preds = %8
  %29 = and i64 %2, 1
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = sub nsw i64 %2, 2
  %33 = sdiv i64 %32, 2
  %34 = icmp eq i64 %10, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = add nsw i64 %10, 1
  %37 = mul nsw i64 2, %36
  %38 = sub nsw i64 %37, 1
  %39 = getelementptr inbounds double, ptr %9, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = getelementptr inbounds double, ptr %9, i64 %10
  store double %40, ptr %41, align 8
  br label %42

42:                                               ; preds = %35, %31, %28
  %43 = phi i64 [ %38, %35 ], [ %10, %31 ], [ %10, %28 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %9, i64 noundef %43, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %7)
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

9:                                                ; preds = %19, %5
  %.04 = phi i64 [ %1, %5 ], [ %.0, %19 ]
  %.0 = phi i64 [ %8, %5 ], [ %24, %19 ]
  %10 = phi i64 [ %24, %19 ], [ %8, %5 ]
  %11 = phi ptr [ %0, %19 ], [ %0, %5 ]
  %12 = phi i64 [ %.0, %19 ], [ %1, %5 ]
  %13 = icmp sgt i64 %12, %2
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = getelementptr inbounds double, ptr %11, i64 %10
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %15, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %17

17:                                               ; preds = %14, %9
  %18 = phi i1 [ false, %9 ], [ %16, %14 ]
  br i1 %18, label %19, label %25

19:                                               ; preds = %17
  %20 = getelementptr inbounds double, ptr %0, i64 %.0
  %21 = load double, ptr %20, align 8
  %22 = getelementptr inbounds double, ptr %0, i64 %.04
  store double %21, ptr %22, align 8
  %23 = sub nsw i64 %.0, 1
  %24 = sdiv i64 %23, 2
  br label %9, !llvm.loop !68

25:                                               ; preds = %17
  %26 = load double, ptr %6, align 8
  %27 = getelementptr inbounds double, ptr %0, i64 %.04
  store double %26, ptr %27, align 8
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

6:                                                ; preds = %25, %4
  %.04 = phi ptr [ %1, %4 ], [ %.15, %25 ]
  %.0 = phi ptr [ %0, %4 ], [ %26, %25 ]
  %7 = phi ptr [ %2, %25 ], [ %2, %4 ]
  %8 = phi ptr [ %26, %25 ], [ %0, %4 ]
  br label %9

9:                                                ; preds = %13, %6
  %.1 = phi ptr [ %.0, %6 ], [ %14, %13 ]
  %10 = phi ptr [ %2, %13 ], [ %7, %6 ]
  %11 = phi ptr [ %14, %13 ], [ %8, %6 ]
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %10)
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw double, ptr %.1, i32 1
  br label %9, !llvm.loop !69

15:                                               ; preds = %9
  %16 = getelementptr inbounds double, ptr %.04, i32 -1
  br label %17

17:                                               ; preds = %20, %15
  %.15 = phi ptr [ %16, %15 ], [ %21, %20 ]
  %18 = phi ptr [ %21, %20 ], [ %16, %15 ]
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %18)
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = getelementptr inbounds double, ptr %18, i32 -1
  br label %17, !llvm.loop !70

22:                                               ; preds = %17
  %23 = icmp ult ptr %.1, %18
  br i1 %23, label %25, label %24

24:                                               ; preds = %22
  ret ptr %.1

25:                                               ; preds = %22
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1, ptr noundef %18)
  %26 = getelementptr inbounds nuw double, ptr %.1, i32 1
  br label %6, !llvm.loop !71
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  store i8 %2, ptr %4, align 1
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  br label %27

7:                                                ; preds = %3
  %8 = getelementptr inbounds double, ptr %0, i64 1
  br label %9

9:                                                ; preds = %23, %7
  %.0 = phi ptr [ %8, %7 ], [ %26, %23 ]
  %10 = phi ptr [ %25, %23 ], [ %0, %7 ]
  %11 = phi ptr [ %26, %23 ], [ %8, %7 ]
  %12 = icmp ne ptr %11, %1
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %11, ptr noundef %10)
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = load double, ptr %.0, align 8
  %17 = getelementptr inbounds double, ptr %.0, i64 1
  %18 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %10)
  %19 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %.0)
  %20 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %18, ptr noundef %19, ptr noundef %17)
  store double %16, ptr %0, align 8
  br label %23

21:                                               ; preds = %13
  %.sroa.0.0.copyload = load i8, ptr %4, align 1
  %22 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %.sroa.0.0.copyload)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %.0, i8 %22)
  br label %23

23:                                               ; preds = %21, %15
  %24 = phi ptr [ %.0, %21 ], [ %.0, %15 ]
  %25 = phi ptr [ %10, %21 ], [ %0, %15 ]
  %26 = getelementptr inbounds nuw double, ptr %24, i32 1
  br label %9, !llvm.loop !72

27:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  br label %4

4:                                                ; preds = %7, %3
  %5 = phi ptr [ %9, %7 ], [ %0, %3 ]
  %6 = icmp ne ptr %5, %1
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %2)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %5, i8 %8)
  %9 = getelementptr inbounds nuw double, ptr %5, i32 1
  br label %4, !llvm.loop !73

10:                                               ; preds = %4
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

7:                                                ; preds = %11, %2
  %.0 = phi ptr [ %6, %2 ], [ %13, %11 ]
  %8 = phi ptr [ %9, %11 ], [ %0, %2 ]
  %9 = phi ptr [ %13, %11 ], [ %6, %2 ]
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %9)
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load double, ptr %9, align 8
  store double %12, ptr %8, align 8
  %13 = getelementptr inbounds double, ptr %.0, i32 -1
  br label %7, !llvm.loop !74

14:                                               ; preds = %7
  %15 = load double, ptr %4, align 8
  store double %15, ptr %8, align 8
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

5:                                                ; preds = %16, %4
  %6 = phi i64 [ %17, %16 ], [ %2, %4 ]
  %7 = phi ptr [ %18, %16 ], [ %1, %4 ]
  %8 = ptrtoint ptr %7 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 8
  %12 = icmp sgt i64 %11, 16
  br i1 %12, label %13, label %19

13:                                               ; preds = %5
  %14 = icmp eq i64 %6, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %7, ptr noundef %7, i8 %3)
  br label %19

16:                                               ; preds = %13
  %17 = add nsw i64 %6, -1
  %18 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %7, i8 %3)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %18, ptr noundef %7, i64 noundef %17, i8 %3)
  br label %5, !llvm.loop !75

19:                                               ; preds = %15, %5
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
  %.sroa.0.0.copyload = load i8, ptr %5, align 1
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %.sroa.0.0.copyload)
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

6:                                                ; preds = %13, %4
  %.0 = phi ptr [ %1, %4 ], [ %15, %13 ]
  %7 = phi ptr [ %14, %13 ], [ %0, %4 ]
  %8 = phi ptr [ %15, %13 ], [ %1, %4 ]
  %9 = icmp ult ptr %8, %2
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %8, ptr noundef %7)
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %.0, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi ptr [ %0, %12 ], [ %7, %10 ]
  %15 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %6, !llvm.loop !76

16:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  br label %4

4:                                                ; preds = %11, %3
  %5 = phi ptr [ %12, %11 ], [ %1, %3 ]
  %6 = ptrtoint ptr %5 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 8
  %10 = icmp sgt i64 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = getelementptr inbounds double, ptr %5, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %12, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %4, !llvm.loop !77

13:                                               ; preds = %4
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
  br label %21

10:                                               ; preds = %3
  %11 = sub nsw i64 %7, 2
  %12 = sdiv i64 %11, 2
  br label %13

13:                                               ; preds = %19, %10
  %14 = phi i64 [ %20, %19 ], [ %12, %10 ]
  %15 = getelementptr inbounds double, ptr %0, i64 %14
  %16 = load double, ptr %15, align 8
  %.sroa.0.0.copyload = load i8, ptr %2, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %14, i64 noundef %7, double noundef %16, i8 %.sroa.0.0.copyload)
  %17 = icmp eq i64 %14, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %21

19:                                               ; preds = %13
  %20 = add nsw i64 %14, -1
  br label %13, !llvm.loop !78

21:                                               ; preds = %18, %9
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

8:                                                ; preds = %23, %5
  %.0 = phi i64 [ %1, %5 ], [ %24, %23 ]
  %9 = phi ptr [ %0, %23 ], [ %0, %5 ]
  %10 = phi i64 [ %24, %23 ], [ %1, %5 ]
  %11 = sub nsw i64 %2, 1
  %12 = sdiv i64 %11, 2
  %13 = icmp slt i64 %10, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %8
  %15 = add nsw i64 %10, 1
  %16 = mul nsw i64 2, %15
  %17 = getelementptr inbounds double, ptr %9, i64 %16
  %18 = sub nsw i64 %16, 1
  %19 = getelementptr inbounds double, ptr %9, i64 %18
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %17, ptr noundef %19)
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = add nsw i64 %16, -1
  br label %23

23:                                               ; preds = %21, %14
  %24 = phi i64 [ %22, %21 ], [ %16, %14 ]
  %25 = getelementptr inbounds double, ptr %0, i64 %24
  %26 = load double, ptr %25, align 8
  %27 = getelementptr inbounds double, ptr %0, i64 %.0
  store double %26, ptr %27, align 8
  br label %8, !llvm.loop !79

28:                                               ; preds = %8
  %29 = and i64 %2, 1
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = sub nsw i64 %2, 2
  %33 = sdiv i64 %32, 2
  %34 = icmp eq i64 %10, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = add nsw i64 %10, 1
  %37 = mul nsw i64 2, %36
  %38 = sub nsw i64 %37, 1
  %39 = getelementptr inbounds double, ptr %9, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = getelementptr inbounds double, ptr %9, i64 %10
  store double %40, ptr %41, align 8
  br label %42

42:                                               ; preds = %35, %31, %28
  %43 = phi i64 [ %38, %35 ], [ %10, %31 ], [ %10, %28 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %9, i64 noundef %43, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %7)
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

9:                                                ; preds = %19, %5
  %.04 = phi i64 [ %1, %5 ], [ %.0, %19 ]
  %.0 = phi i64 [ %8, %5 ], [ %24, %19 ]
  %10 = phi i64 [ %24, %19 ], [ %8, %5 ]
  %11 = phi ptr [ %0, %19 ], [ %0, %5 ]
  %12 = phi i64 [ %.0, %19 ], [ %1, %5 ]
  %13 = icmp sgt i64 %12, %2
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = getelementptr inbounds double, ptr %11, i64 %10
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %15, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %17

17:                                               ; preds = %14, %9
  %18 = phi i1 [ false, %9 ], [ %16, %14 ]
  br i1 %18, label %19, label %25

19:                                               ; preds = %17
  %20 = getelementptr inbounds double, ptr %0, i64 %.0
  %21 = load double, ptr %20, align 8
  %22 = getelementptr inbounds double, ptr %0, i64 %.04
  store double %21, ptr %22, align 8
  %23 = sub nsw i64 %.0, 1
  %24 = sdiv i64 %23, 2
  br label %9, !llvm.loop !80

25:                                               ; preds = %17
  %26 = load double, ptr %6, align 8
  %27 = getelementptr inbounds double, ptr %0, i64 %.04
  store double %26, ptr %27, align 8
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

6:                                                ; preds = %25, %4
  %.04 = phi ptr [ %1, %4 ], [ %.15, %25 ]
  %.0 = phi ptr [ %0, %4 ], [ %26, %25 ]
  %7 = phi ptr [ %2, %25 ], [ %2, %4 ]
  %8 = phi ptr [ %26, %25 ], [ %0, %4 ]
  br label %9

9:                                                ; preds = %13, %6
  %.1 = phi ptr [ %.0, %6 ], [ %14, %13 ]
  %10 = phi ptr [ %2, %13 ], [ %7, %6 ]
  %11 = phi ptr [ %14, %13 ], [ %8, %6 ]
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %10)
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw double, ptr %.1, i32 1
  br label %9, !llvm.loop !81

15:                                               ; preds = %9
  %16 = getelementptr inbounds double, ptr %.04, i32 -1
  br label %17

17:                                               ; preds = %20, %15
  %.15 = phi ptr [ %16, %15 ], [ %21, %20 ]
  %18 = phi ptr [ %21, %20 ], [ %16, %15 ]
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %18)
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = getelementptr inbounds double, ptr %18, i32 -1
  br label %17, !llvm.loop !82

22:                                               ; preds = %17
  %23 = icmp ult ptr %.1, %18
  br i1 %23, label %25, label %24

24:                                               ; preds = %22
  ret ptr %.1

25:                                               ; preds = %22
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1, ptr noundef %18)
  %26 = getelementptr inbounds nuw double, ptr %.1, i32 1
  br label %6, !llvm.loop !83
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  store i8 %2, ptr %4, align 1
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  br label %27

7:                                                ; preds = %3
  %8 = getelementptr inbounds double, ptr %0, i64 1
  br label %9

9:                                                ; preds = %23, %7
  %.0 = phi ptr [ %8, %7 ], [ %26, %23 ]
  %10 = phi ptr [ %25, %23 ], [ %0, %7 ]
  %11 = phi ptr [ %26, %23 ], [ %8, %7 ]
  %12 = icmp ne ptr %11, %1
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %11, ptr noundef %10)
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = load double, ptr %.0, align 8
  %17 = getelementptr inbounds double, ptr %.0, i64 1
  %18 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %10)
  %19 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %.0)
  %20 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %18, ptr noundef %19, ptr noundef %17)
  store double %16, ptr %0, align 8
  br label %23

21:                                               ; preds = %13
  %.sroa.0.0.copyload = load i8, ptr %4, align 1
  %22 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %.sroa.0.0.copyload)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %.0, i8 %22)
  br label %23

23:                                               ; preds = %21, %15
  %24 = phi ptr [ %.0, %21 ], [ %.0, %15 ]
  %25 = phi ptr [ %10, %21 ], [ %0, %15 ]
  %26 = getelementptr inbounds nuw double, ptr %24, i32 1
  br label %9, !llvm.loop !84

27:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  br label %4

4:                                                ; preds = %7, %3
  %5 = phi ptr [ %9, %7 ], [ %0, %3 ]
  %6 = icmp ne ptr %5, %1
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %2)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %5, i8 %8)
  %9 = getelementptr inbounds nuw double, ptr %5, i32 1
  br label %4, !llvm.loop !85

10:                                               ; preds = %4
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

7:                                                ; preds = %11, %2
  %.0 = phi ptr [ %6, %2 ], [ %13, %11 ]
  %8 = phi ptr [ %9, %11 ], [ %0, %2 ]
  %9 = phi ptr [ %13, %11 ], [ %6, %2 ]
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %9)
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load double, ptr %9, align 8
  store double %12, ptr %8, align 8
  %13 = getelementptr inbounds double, ptr %.0, i32 -1
  br label %7, !llvm.loop !86

14:                                               ; preds = %7
  %15 = load double, ptr %4, align 8
  store double %15, ptr %8, align 8
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

5:                                                ; preds = %16, %4
  %6 = phi i64 [ %17, %16 ], [ %2, %4 ]
  %7 = phi ptr [ %18, %16 ], [ %1, %4 ]
  %8 = ptrtoint ptr %7 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 8
  %12 = icmp sgt i64 %11, 16
  br i1 %12, label %13, label %19

13:                                               ; preds = %5
  %14 = icmp eq i64 %6, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %7, ptr noundef %7, i8 %3)
  br label %19

16:                                               ; preds = %13
  %17 = add nsw i64 %6, -1
  %18 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %7, i8 %3)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %18, ptr noundef %7, i64 noundef %17, i8 %3)
  br label %5, !llvm.loop !87

19:                                               ; preds = %15, %5
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
  %.sroa.0.0.copyload = load i8, ptr %5, align 1
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %.sroa.0.0.copyload)
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

6:                                                ; preds = %13, %4
  %.0 = phi ptr [ %1, %4 ], [ %15, %13 ]
  %7 = phi ptr [ %14, %13 ], [ %0, %4 ]
  %8 = phi ptr [ %15, %13 ], [ %1, %4 ]
  %9 = icmp ult ptr %8, %2
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %8, ptr noundef %7)
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %.0, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi ptr [ %0, %12 ], [ %7, %10 ]
  %15 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %6, !llvm.loop !88

16:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  br label %4

4:                                                ; preds = %11, %3
  %5 = phi ptr [ %12, %11 ], [ %1, %3 ]
  %6 = ptrtoint ptr %5 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 8
  %10 = icmp sgt i64 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = getelementptr inbounds double, ptr %5, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %12, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %4, !llvm.loop !89

13:                                               ; preds = %4
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
  br label %21

10:                                               ; preds = %3
  %11 = sub nsw i64 %7, 2
  %12 = sdiv i64 %11, 2
  br label %13

13:                                               ; preds = %19, %10
  %14 = phi i64 [ %20, %19 ], [ %12, %10 ]
  %15 = getelementptr inbounds double, ptr %0, i64 %14
  %16 = load double, ptr %15, align 8
  %.sroa.0.0.copyload = load i8, ptr %2, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %14, i64 noundef %7, double noundef %16, i8 %.sroa.0.0.copyload)
  %17 = icmp eq i64 %14, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %21

19:                                               ; preds = %13
  %20 = add nsw i64 %14, -1
  br label %13, !llvm.loop !90

21:                                               ; preds = %18, %9
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

8:                                                ; preds = %23, %5
  %.0 = phi i64 [ %1, %5 ], [ %24, %23 ]
  %9 = phi ptr [ %0, %23 ], [ %0, %5 ]
  %10 = phi i64 [ %24, %23 ], [ %1, %5 ]
  %11 = sub nsw i64 %2, 1
  %12 = sdiv i64 %11, 2
  %13 = icmp slt i64 %10, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %8
  %15 = add nsw i64 %10, 1
  %16 = mul nsw i64 2, %15
  %17 = getelementptr inbounds double, ptr %9, i64 %16
  %18 = sub nsw i64 %16, 1
  %19 = getelementptr inbounds double, ptr %9, i64 %18
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %17, ptr noundef %19)
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = add nsw i64 %16, -1
  br label %23

23:                                               ; preds = %21, %14
  %24 = phi i64 [ %22, %21 ], [ %16, %14 ]
  %25 = getelementptr inbounds double, ptr %0, i64 %24
  %26 = load double, ptr %25, align 8
  %27 = getelementptr inbounds double, ptr %0, i64 %.0
  store double %26, ptr %27, align 8
  br label %8, !llvm.loop !91

28:                                               ; preds = %8
  %29 = and i64 %2, 1
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = sub nsw i64 %2, 2
  %33 = sdiv i64 %32, 2
  %34 = icmp eq i64 %10, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = add nsw i64 %10, 1
  %37 = mul nsw i64 2, %36
  %38 = sub nsw i64 %37, 1
  %39 = getelementptr inbounds double, ptr %9, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = getelementptr inbounds double, ptr %9, i64 %10
  store double %40, ptr %41, align 8
  br label %42

42:                                               ; preds = %35, %31, %28
  %43 = phi i64 [ %38, %35 ], [ %10, %31 ], [ %10, %28 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEEEvT_T0_S8_T1_RT2_(ptr noundef %9, i64 noundef %43, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %7)
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

9:                                                ; preds = %19, %5
  %.04 = phi i64 [ %1, %5 ], [ %.0, %19 ]
  %.0 = phi i64 [ %8, %5 ], [ %24, %19 ]
  %10 = phi i64 [ %24, %19 ], [ %8, %5 ]
  %11 = phi ptr [ %0, %19 ], [ %0, %5 ]
  %12 = phi i64 [ %.0, %19 ], [ %1, %5 ]
  %13 = icmp sgt i64 %12, %2
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = getelementptr inbounds double, ptr %11, i64 %10
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %15, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %17

17:                                               ; preds = %14, %9
  %18 = phi i1 [ false, %9 ], [ %16, %14 ]
  br i1 %18, label %19, label %25

19:                                               ; preds = %17
  %20 = getelementptr inbounds double, ptr %0, i64 %.0
  %21 = load double, ptr %20, align 8
  %22 = getelementptr inbounds double, ptr %0, i64 %.04
  store double %21, ptr %22, align 8
  %23 = sub nsw i64 %.0, 1
  %24 = sdiv i64 %23, 2
  br label %9, !llvm.loop !92

25:                                               ; preds = %17
  %26 = load double, ptr %6, align 8
  %27 = getelementptr inbounds double, ptr %0, i64 %.04
  store double %26, ptr %27, align 8
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

6:                                                ; preds = %25, %4
  %.04 = phi ptr [ %1, %4 ], [ %.15, %25 ]
  %.0 = phi ptr [ %0, %4 ], [ %26, %25 ]
  %7 = phi ptr [ %2, %25 ], [ %2, %4 ]
  %8 = phi ptr [ %26, %25 ], [ %0, %4 ]
  br label %9

9:                                                ; preds = %13, %6
  %.1 = phi ptr [ %.0, %6 ], [ %14, %13 ]
  %10 = phi ptr [ %2, %13 ], [ %7, %6 ]
  %11 = phi ptr [ %14, %13 ], [ %8, %6 ]
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %10)
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw double, ptr %.1, i32 1
  br label %9, !llvm.loop !93

15:                                               ; preds = %9
  %16 = getelementptr inbounds double, ptr %.04, i32 -1
  br label %17

17:                                               ; preds = %20, %15
  %.15 = phi ptr [ %16, %15 ], [ %21, %20 ]
  %18 = phi ptr [ %21, %20 ], [ %16, %15 ]
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %18)
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = getelementptr inbounds double, ptr %18, i32 -1
  br label %17, !llvm.loop !94

22:                                               ; preds = %17
  %23 = icmp ult ptr %.1, %18
  br i1 %23, label %25, label %24

24:                                               ; preds = %22
  ret ptr %.1

25:                                               ; preds = %22
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1, ptr noundef %18)
  %26 = getelementptr inbounds nuw double, ptr %.1, i32 1
  br label %6, !llvm.loop !95
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store i8 %2, ptr %4, align 1
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  br label %27

7:                                                ; preds = %3
  %8 = getelementptr inbounds double, ptr %0, i64 1
  br label %9

9:                                                ; preds = %23, %7
  %.0 = phi ptr [ %8, %7 ], [ %26, %23 ]
  %10 = phi ptr [ %25, %23 ], [ %0, %7 ]
  %11 = phi ptr [ %26, %23 ], [ %8, %7 ]
  %12 = icmp ne ptr %11, %1
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %11, ptr noundef %10)
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = load double, ptr %.0, align 8
  %17 = getelementptr inbounds double, ptr %.0, i64 1
  %18 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %10)
  %19 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %.0)
  %20 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %18, ptr noundef %19, ptr noundef %17)
  store double %16, ptr %0, align 8
  br label %23

21:                                               ; preds = %13
  %.sroa.0.0.copyload = load i8, ptr %4, align 1
  %22 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %.sroa.0.0.copyload)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %.0, i8 %22)
  br label %23

23:                                               ; preds = %21, %15
  %24 = phi ptr [ %.0, %21 ], [ %.0, %15 ]
  %25 = phi ptr [ %10, %21 ], [ %0, %15 ]
  %26 = getelementptr inbounds nuw double, ptr %24, i32 1
  br label %9, !llvm.loop !96

27:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  br label %4

4:                                                ; preds = %7, %3
  %5 = phi ptr [ %9, %7 ], [ %0, %3 ]
  %6 = icmp ne ptr %5, %1
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %2)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %5, i8 %8)
  %9 = getelementptr inbounds nuw double, ptr %5, i32 1
  br label %4, !llvm.loop !97

10:                                               ; preds = %4
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

7:                                                ; preds = %11, %2
  %.0 = phi ptr [ %6, %2 ], [ %13, %11 ]
  %8 = phi ptr [ %9, %11 ], [ %0, %2 ]
  %9 = phi ptr [ %13, %11 ], [ %6, %2 ]
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %9)
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load double, ptr %9, align 8
  store double %12, ptr %8, align 8
  %13 = getelementptr inbounds double, ptr %.0, i32 -1
  br label %7, !llvm.loop !98

14:                                               ; preds = %7
  %15 = load double, ptr %4, align 8
  store double %15, ptr %8, align 8
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

5:                                                ; preds = %16, %4
  %6 = phi i64 [ %17, %16 ], [ %2, %4 ]
  %7 = phi ptr [ %18, %16 ], [ %1, %4 ]
  %8 = ptrtoint ptr %7 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 8
  %12 = icmp sgt i64 %11, 16
  br i1 %12, label %13, label %19

13:                                               ; preds = %5
  %14 = icmp eq i64 %6, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %7, ptr noundef %7, i8 undef)
  br label %19

16:                                               ; preds = %13
  %17 = add nsw i64 %6, -1
  %18 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(ptr noundef %0, ptr noundef %7, i8 undef)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %18, ptr noundef %7, i64 noundef %17, i8 undef)
  br label %5, !llvm.loop !99

19:                                               ; preds = %15, %5
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

6:                                                ; preds = %13, %4
  %.0 = phi ptr [ %1, %4 ], [ %15, %13 ]
  %7 = phi ptr [ %14, %13 ], [ %0, %4 ]
  %8 = phi ptr [ %15, %13 ], [ %1, %4 ]
  %9 = icmp ult ptr %8, %2
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %8, ptr noundef %7)
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %.0, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi ptr [ %0, %12 ], [ %7, %10 ]
  %15 = getelementptr inbounds nuw double, ptr %.0, i32 1
  br label %6, !llvm.loop !100

16:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  br label %4

4:                                                ; preds = %11, %3
  %5 = phi ptr [ %12, %11 ], [ %1, %3 ]
  %6 = ptrtoint ptr %5 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 8
  %10 = icmp sgt i64 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = getelementptr inbounds double, ptr %5, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %0, ptr noundef %12, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %4, !llvm.loop !101

13:                                               ; preds = %4
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
  br label %21

10:                                               ; preds = %3
  %11 = sub nsw i64 %7, 2
  %12 = sdiv i64 %11, 2
  br label %13

13:                                               ; preds = %19, %10
  %14 = phi i64 [ %20, %19 ], [ %12, %10 ]
  %15 = getelementptr inbounds double, ptr %0, i64 %14
  %16 = load double, ptr %15, align 8
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %0, i64 noundef %14, i64 noundef %7, double noundef %16, i8 undef)
  %17 = icmp eq i64 %14, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %21

19:                                               ; preds = %13
  %20 = add nsw i64 %14, -1
  br label %13, !llvm.loop !102

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

8:                                                ; preds = %23, %5
  %.0 = phi i64 [ %1, %5 ], [ %24, %23 ]
  %9 = phi ptr [ %0, %23 ], [ %0, %5 ]
  %10 = phi i64 [ %24, %23 ], [ %1, %5 ]
  %11 = sub nsw i64 %2, 1
  %12 = sdiv i64 %11, 2
  %13 = icmp slt i64 %10, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %8
  %15 = add nsw i64 %10, 1
  %16 = mul nsw i64 2, %15
  %17 = getelementptr inbounds double, ptr %9, i64 %16
  %18 = sub nsw i64 %16, 1
  %19 = getelementptr inbounds double, ptr %9, i64 %18
  %20 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %17, ptr noundef %19)
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = add nsw i64 %16, -1
  br label %23

23:                                               ; preds = %21, %14
  %24 = phi i64 [ %22, %21 ], [ %16, %14 ]
  %25 = getelementptr inbounds double, ptr %0, i64 %24
  %26 = load double, ptr %25, align 8
  %27 = getelementptr inbounds double, ptr %0, i64 %.0
  store double %26, ptr %27, align 8
  br label %8, !llvm.loop !103

28:                                               ; preds = %8
  %29 = and i64 %2, 1
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = sub nsw i64 %2, 2
  %33 = sdiv i64 %32, 2
  %34 = icmp eq i64 %10, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = add nsw i64 %10, 1
  %37 = mul nsw i64 2, %36
  %38 = sub nsw i64 %37, 1
  %39 = getelementptr inbounds double, ptr %9, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = getelementptr inbounds double, ptr %9, i64 %10
  store double %40, ptr %41, align 8
  br label %42

42:                                               ; preds = %35, %31, %28
  %43 = phi i64 [ %38, %35 ], [ %10, %31 ], [ %10, %28 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(ptr noundef nonnull align 1 dereferenceable(1) %7, i8 undef)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_(ptr noundef %9, i64 noundef %43, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %7)
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

9:                                                ; preds = %19, %5
  %.04 = phi i64 [ %1, %5 ], [ %.0, %19 ]
  %.0 = phi i64 [ %8, %5 ], [ %24, %19 ]
  %10 = phi i64 [ %24, %19 ], [ %8, %5 ]
  %11 = phi ptr [ %0, %19 ], [ %0, %5 ]
  %12 = phi i64 [ %.0, %19 ], [ %1, %5 ]
  %13 = icmp sgt i64 %12, %2
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = getelementptr inbounds double, ptr %11, i64 %10
  %16 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %15, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %17

17:                                               ; preds = %14, %9
  %18 = phi i1 [ false, %9 ], [ %16, %14 ]
  br i1 %18, label %19, label %25

19:                                               ; preds = %17
  %20 = getelementptr inbounds double, ptr %0, i64 %.0
  %21 = load double, ptr %20, align 8
  %22 = getelementptr inbounds double, ptr %0, i64 %.04
  store double %21, ptr %22, align 8
  %23 = sub nsw i64 %.0, 1
  %24 = sdiv i64 %23, 2
  br label %9, !llvm.loop !104

25:                                               ; preds = %17
  %26 = load double, ptr %6, align 8
  %27 = getelementptr inbounds double, ptr %0, i64 %.04
  store double %26, ptr %27, align 8
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

6:                                                ; preds = %25, %4
  %.04 = phi ptr [ %1, %4 ], [ %.15, %25 ]
  %.0 = phi ptr [ %0, %4 ], [ %26, %25 ]
  %7 = phi ptr [ %2, %25 ], [ %2, %4 ]
  %8 = phi ptr [ %26, %25 ], [ %0, %4 ]
  br label %9

9:                                                ; preds = %13, %6
  %.1 = phi ptr [ %.0, %6 ], [ %14, %13 ]
  %10 = phi ptr [ %2, %13 ], [ %7, %6 ]
  %11 = phi ptr [ %14, %13 ], [ %8, %6 ]
  %12 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %10)
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw double, ptr %.1, i32 1
  br label %9, !llvm.loop !105

15:                                               ; preds = %9
  %16 = getelementptr inbounds double, ptr %.04, i32 -1
  br label %17

17:                                               ; preds = %20, %15
  %.15 = phi ptr [ %16, %15 ], [ %21, %20 ]
  %18 = phi ptr [ %21, %20 ], [ %16, %15 ]
  %19 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %18)
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = getelementptr inbounds double, ptr %18, i32 -1
  br label %17, !llvm.loop !106

22:                                               ; preds = %17
  %23 = icmp ult ptr %.1, %18
  br i1 %23, label %25, label %24

24:                                               ; preds = %22
  ret ptr %.1

25:                                               ; preds = %22
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1, ptr noundef %18)
  %26 = getelementptr inbounds nuw double, ptr %.1, i32 1
  br label %6, !llvm.loop !107
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store i8 %2, ptr %4, align 1
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  br label %27

7:                                                ; preds = %3
  %8 = getelementptr inbounds double, ptr %0, i64 1
  br label %9

9:                                                ; preds = %23, %7
  %.0 = phi ptr [ %8, %7 ], [ %26, %23 ]
  %10 = phi ptr [ %25, %23 ], [ %0, %7 ]
  %11 = phi ptr [ %26, %23 ], [ %8, %7 ]
  %12 = icmp ne ptr %11, %1
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %11, ptr noundef %10)
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = load double, ptr %.0, align 8
  %17 = getelementptr inbounds double, ptr %.0, i64 1
  %18 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %10)
  %19 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %.0)
  %20 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %18, ptr noundef %19, ptr noundef %17)
  store double %16, ptr %0, align 8
  br label %23

21:                                               ; preds = %13
  %22 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 undef)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %.0, i8 undef)
  br label %23

23:                                               ; preds = %21, %15
  %24 = phi ptr [ %.0, %21 ], [ %.0, %15 ]
  %25 = phi ptr [ %10, %21 ], [ %0, %15 ]
  %26 = getelementptr inbounds nuw double, ptr %24, i32 1
  br label %9, !llvm.loop !108

27:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  br label %4

4:                                                ; preds = %7, %3
  %5 = phi ptr [ %9, %7 ], [ %0, %3 ]
  %6 = icmp ne ptr %5, %1
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 undef)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %5, i8 undef)
  %9 = getelementptr inbounds nuw double, ptr %5, i32 1
  br label %4, !llvm.loop !109

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
  %6 = getelementptr inbounds double, ptr %0, i32 -1
  br label %7

7:                                                ; preds = %11, %2
  %.0 = phi ptr [ %6, %2 ], [ %13, %11 ]
  %8 = phi ptr [ %9, %11 ], [ %0, %2 ]
  %9 = phi ptr [ %13, %11 ], [ %6, %2 ]
  %10 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %9)
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load double, ptr %9, align 8
  store double %12, ptr %8, align 8
  %13 = getelementptr inbounds double, ptr %.0, i32 -1
  br label %7, !llvm.loop !110

14:                                               ; preds = %7
  %15 = load double, ptr %4, align 8
  store double %15, ptr %8, align 8
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
