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
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr @current_test, align 4
  %7 = load i32, ptr @allocated_results, align 4
  %8 = icmp sge i32 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %5, %2
  %10 = load i32, ptr @allocated_results, align 4
  %11 = add nsw i32 %10, 10
  store i32 %11, ptr @allocated_results, align 4
  %12 = load ptr, ptr @results, align 8
  %13 = load i32, ptr @allocated_results, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 16
  %16 = call ptr @realloc(ptr noundef %12, i64 noundef %15) #13
  store ptr %16, ptr @results, align 8
  %17 = load ptr, ptr @results, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %9
  %20 = load i32, ptr @allocated_results, align 4
  %21 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str, i32 noundef %20)
  call void @exit(i32 noundef -1) #14
  unreachable

22:                                               ; preds = %9
  br label %23

23:                                               ; preds = %22, %5
  %24 = load ptr, ptr @results, align 8
  %25 = load i32, ptr @current_test, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.one_result, ptr %24, i64 %26
  %28 = getelementptr inbounds nuw %struct.one_result, ptr %27, i32 0, i32 0
  store double %0, ptr %28, align 8
  %29 = load ptr, ptr @results, align 8
  %30 = load i32, ptr @current_test, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.one_result, ptr %29, i64 %31
  %33 = getelementptr inbounds nuw %struct.one_result, ptr %32, i32 0, i32 1
  store ptr %1, ptr %33, align 8
  %34 = load i32, ptr @current_test, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr @current_test, align 4
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
  %10 = load i32, ptr @current_test, align 4
  %11 = icmp slt i32 0, %10
  br i1 %11, label %.lr.ph, label %27

.lr.ph:                                           ; preds = %5
  br label %12

12:                                               ; preds = %.lr.ph, %23
  %.045 = phi i32 [ 12, %.lr.ph ], [ %.247, %23 ]
  %.0 = phi i32 [ 0, %.lr.ph ], [ %24, %23 ]
  %13 = load ptr, ptr @results, align 8
  %14 = sext i32 %.0 to i64
  %15 = getelementptr inbounds %struct.one_result, ptr %13, i64 %14
  %16 = getelementptr inbounds nuw %struct.one_result, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = call i64 @strlen(ptr noundef %17) #15
  %19 = trunc i64 %18 to i32
  %20 = icmp sgt i32 %19, %.045
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21, %12
  %.247 = phi i32 [ %19, %21 ], [ %.045, %12 ]
  br label %23

23:                                               ; preds = %22
  %24 = add nsw i32 %.0, 1
  %25 = load i32, ptr @current_test, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %12, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %23
  br label %27

27:                                               ; preds = %._crit_edge, %5
  %.146 = phi i32 [ %.247, %._crit_edge ], [ 12, %5 ]
  %28 = sub nsw i32 %.146, 12
  %29 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.1, i32 noundef %28, ptr noundef @.str.2)
  %30 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.3, i32 noundef %.146, ptr noundef @.str.2)
  %31 = load i32, ptr @current_test, align 4
  %32 = icmp slt i32 0, %31
  br i1 %32, label %.lr.ph2, label %74

.lr.ph2:                                          ; preds = %27
  br label %33

33:                                               ; preds = %.lr.ph2, %70
  %.1 = phi i32 [ 0, %.lr.ph2 ], [ %71, %70 ]
  %34 = sext i32 %.146 to i64
  %35 = load ptr, ptr @results, align 8
  %36 = sext i32 %.1 to i64
  %37 = getelementptr inbounds %struct.one_result, ptr %35, i64 %36
  %38 = getelementptr inbounds nuw %struct.one_result, ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  %40 = call i64 @strlen(ptr noundef %39) #15
  %41 = sub i64 %34, %40
  %42 = trunc i64 %41 to i32
  %43 = load ptr, ptr @results, align 8
  %44 = sext i32 %.1 to i64
  %45 = getelementptr inbounds %struct.one_result, ptr %43, i64 %44
  %46 = getelementptr inbounds nuw %struct.one_result, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 8
  %48 = load ptr, ptr @results, align 8
  %49 = sext i32 %.1 to i64
  %50 = getelementptr inbounds %struct.one_result, ptr %48, i64 %49
  %51 = getelementptr inbounds nuw %struct.one_result, ptr %50, i32 0, i32 0
  %52 = load double, ptr %51, align 8
  %53 = load ptr, ptr @results, align 8
  %54 = sext i32 %.1 to i64
  %55 = getelementptr inbounds %struct.one_result, ptr %53, i64 %54
  %56 = getelementptr inbounds nuw %struct.one_result, ptr %55, i32 0, i32 0
  %57 = load double, ptr %56, align 8
  %58 = fdiv double %9, %57
  %59 = load ptr, ptr @results, align 8
  %60 = sext i32 %.1 to i64
  %61 = getelementptr inbounds %struct.one_result, ptr %59, i64 %60
  %62 = getelementptr inbounds nuw %struct.one_result, ptr %61, i32 0, i32 0
  %63 = load double, ptr %62, align 8
  %64 = load ptr, ptr @results, align 8
  %65 = getelementptr inbounds %struct.one_result, ptr %64, i64 0
  %66 = getelementptr inbounds nuw %struct.one_result, ptr %65, i32 0, i32 0
  %67 = load double, ptr %66, align 8
  %68 = fdiv double %63, %67
  %69 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.4, i32 noundef %.1, i32 noundef %42, ptr noundef @.str.5, ptr noundef %47, double noundef %52, double noundef %58, double noundef %68)
  br label %70

70:                                               ; preds = %33
  %71 = add nsw i32 %.1, 1
  %72 = load i32, ptr @current_test, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %33, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %70
  br label %74

74:                                               ; preds = %._crit_edge3, %27
  %75 = load i32, ptr @current_test, align 4
  %76 = icmp slt i32 0, %75
  br i1 %76, label %.lr.ph5, label %88

.lr.ph5:                                          ; preds = %74
  br label %77

77:                                               ; preds = %.lr.ph5, %84
  %.050 = phi double [ 0.000000e+00, %.lr.ph5 ], [ %83, %84 ]
  %.2 = phi i32 [ 0, %.lr.ph5 ], [ %85, %84 ]
  %78 = load ptr, ptr @results, align 8
  %79 = sext i32 %.2 to i64
  %80 = getelementptr inbounds %struct.one_result, ptr %78, i64 %79
  %81 = getelementptr inbounds nuw %struct.one_result, ptr %80, i32 0, i32 0
  %82 = load double, ptr %81, align 8
  %83 = fadd double %.050, %82
  br label %84

84:                                               ; preds = %77
  %85 = add nsw i32 %.2, 1
  %86 = load i32, ptr @current_test, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %77, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %84
  br label %88

88:                                               ; preds = %._crit_edge6, %74
  %.151 = phi double [ %83, %._crit_edge6 ], [ 0.000000e+00, %74 ]
  %89 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.6, ptr noundef %0, double noundef %.151)
  %90 = load i32, ptr @current_test, align 4
  %91 = icmp sgt i32 %90, 1
  br i1 %91, label %92, label %121

92:                                               ; preds = %88
  %93 = icmp ne i32 %4, 0
  br i1 %93, label %94, label %121

94:                                               ; preds = %92
  %95 = load i32, ptr @current_test, align 4
  %96 = icmp slt i32 1, %95
  br i1 %96, label %.lr.ph8, label %114

.lr.ph8:                                          ; preds = %94
  br label %97

97:                                               ; preds = %.lr.ph8, %110
  %.048 = phi double [ 0.000000e+00, %.lr.ph8 ], [ %109, %110 ]
  %.3 = phi i32 [ 1, %.lr.ph8 ], [ %111, %110 ]
  %98 = load ptr, ptr @results, align 8
  %99 = sext i32 %.3 to i64
  %100 = getelementptr inbounds %struct.one_result, ptr %98, i64 %99
  %101 = getelementptr inbounds nuw %struct.one_result, ptr %100, i32 0, i32 0
  %102 = load double, ptr %101, align 8
  %103 = load ptr, ptr @results, align 8
  %104 = getelementptr inbounds %struct.one_result, ptr %103, i64 0
  %105 = getelementptr inbounds nuw %struct.one_result, ptr %104, i32 0, i32 0
  %106 = load double, ptr %105, align 8
  %107 = fdiv double %102, %106
  %108 = call double @log(double noundef %107) #15
  %109 = fadd double %.048, %108
  br label %110

110:                                              ; preds = %97
  %111 = add nsw i32 %.3, 1
  %112 = load i32, ptr @current_test, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %97, label %._crit_edge9, !llvm.loop !11

._crit_edge9:                                     ; preds = %110
  br label %114

114:                                              ; preds = %._crit_edge9, %94
  %.149 = phi double [ %109, %._crit_edge9 ], [ 0.000000e+00, %94 ]
  %115 = load i32, ptr @current_test, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sitofp i32 %116 to double
  %118 = fdiv double %.149, %117
  %119 = call double @exp(double noundef %118) #15
  %120 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.7, ptr noundef %0, double noundef %119)
  br label %121

121:                                              ; preds = %114, %92, %88
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
  br i1 %4, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %2
  br label %5

5:                                                ; preds = %.lr.ph, %16
  %.033 = phi i32 [ 12, %.lr.ph ], [ %.235, %16 ]
  %.0 = phi i32 [ 0, %.lr.ph ], [ %17, %16 ]
  %6 = load ptr, ptr @results, align 8
  %7 = sext i32 %.0 to i64
  %8 = getelementptr inbounds %struct.one_result, ptr %6, i64 %7
  %9 = getelementptr inbounds nuw %struct.one_result, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = call i64 @strlen(ptr noundef %10) #15
  %12 = trunc i64 %11 to i32
  %13 = icmp sgt i32 %12, %.033
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  br label %15

15:                                               ; preds = %14, %5
  %.235 = phi i32 [ %12, %14 ], [ %.033, %5 ]
  br label %16

16:                                               ; preds = %15
  %17 = add nsw i32 %.0, 1
  %18 = load i32, ptr @current_test, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %5, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %16
  br label %20

20:                                               ; preds = %._crit_edge, %2
  %.134 = phi i32 [ %.235, %._crit_edge ], [ 12, %2 ]
  %21 = sub nsw i32 %.134, 12
  %22 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.8, i32 noundef %21, ptr noundef @.str.2)
  %23 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.9, i32 noundef %.134, ptr noundef @.str.2)
  %24 = load i32, ptr @current_test, align 4
  %25 = icmp slt i32 0, %24
  br i1 %25, label %.lr.ph2, label %51

.lr.ph2:                                          ; preds = %20
  br label %26

26:                                               ; preds = %.lr.ph2, %47
  %.1 = phi i32 [ 0, %.lr.ph2 ], [ %48, %47 ]
  %27 = sext i32 %.134 to i64
  %28 = load ptr, ptr @results, align 8
  %29 = sext i32 %.1 to i64
  %30 = getelementptr inbounds %struct.one_result, ptr %28, i64 %29
  %31 = getelementptr inbounds nuw %struct.one_result, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8
  %33 = call i64 @strlen(ptr noundef %32) #15
  %34 = sub i64 %27, %33
  %35 = trunc i64 %34 to i32
  %36 = load ptr, ptr @results, align 8
  %37 = sext i32 %.1 to i64
  %38 = getelementptr inbounds %struct.one_result, ptr %36, i64 %37
  %39 = getelementptr inbounds nuw %struct.one_result, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  %41 = load ptr, ptr @results, align 8
  %42 = sext i32 %.1 to i64
  %43 = getelementptr inbounds %struct.one_result, ptr %41, i64 %42
  %44 = getelementptr inbounds nuw %struct.one_result, ptr %43, i32 0, i32 0
  %45 = load double, ptr %44, align 8
  %46 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.10, i32 noundef %.1, i32 noundef %35, ptr noundef @.str.5, ptr noundef %40, double noundef %45)
  br label %47

47:                                               ; preds = %26
  %48 = add nsw i32 %.1, 1
  %49 = load i32, ptr @current_test, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %26, label %._crit_edge3, !llvm.loop !13

._crit_edge3:                                     ; preds = %47
  br label %51

51:                                               ; preds = %._crit_edge3, %20
  %52 = load i32, ptr @current_test, align 4
  %53 = icmp slt i32 0, %52
  br i1 %53, label %.lr.ph5, label %65

.lr.ph5:                                          ; preds = %51
  br label %54

54:                                               ; preds = %.lr.ph5, %61
  %.036 = phi double [ 0.000000e+00, %.lr.ph5 ], [ %60, %61 ]
  %.2 = phi i32 [ 0, %.lr.ph5 ], [ %62, %61 ]
  %55 = load ptr, ptr @results, align 8
  %56 = sext i32 %.2 to i64
  %57 = getelementptr inbounds %struct.one_result, ptr %55, i64 %56
  %58 = getelementptr inbounds nuw %struct.one_result, ptr %57, i32 0, i32 0
  %59 = load double, ptr %58, align 8
  %60 = fadd double %.036, %59
  br label %61

61:                                               ; preds = %54
  %62 = add nsw i32 %.2, 1
  %63 = load i32, ptr @current_test, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %54, label %._crit_edge6, !llvm.loop !14

._crit_edge6:                                     ; preds = %61
  br label %65

65:                                               ; preds = %._crit_edge6, %51
  %.137 = phi double [ %60, %._crit_edge6 ], [ 0.000000e+00, %51 ]
  %66 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.6, ptr noundef %1, double noundef %.137)
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
  %2 = load i32, ptr @end_time, align 4
  %3 = load i32, ptr @start_time, align 4
  %4 = sub nsw i32 %2, %3
  %5 = sitofp i32 %4 to double
  %6 = fdiv double %5, 1.000000e+03
  ret double %6
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef i32 @_Z19less_than_function1PKvS0_(ptr noundef %0, ptr noundef %1) #5 {
  %3 = load double, ptr %0, align 8
  %4 = load double, ptr %1, align 8
  %5 = fcmp olt double %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  br label %13

7:                                                ; preds = %2
  %8 = load double, ptr %0, align 8
  %9 = load double, ptr %1, align 8
  %10 = fcmp ogt double %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %13

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %12, %11, %6
  %.0 = phi i32 [ -1, %6 ], [ 1, %11 ], [ 0, %12 ]
  ret i32 %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef zeroext i1 @_Z19less_than_function2dd(double noundef %0, double noundef %1) #5 {
  %3 = fcmp olt double %0, %1
  %4 = zext i1 %3 to i64
  %5 = select i1 %3, i1 true, i1 false
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #5 align 2 {
  %4 = load double, ptr %1, align 8
  %5 = load double, ptr %2, align 8
  %6 = fcmp olt double %4, %5
  %7 = zext i1 %6 to i64
  %8 = select i1 %6, i1 true, i1 false
  ret i1 %8
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z18quicksort_functionPdS_PFbddE(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = sdiv exact i64 %6, 8
  %8 = icmp sgt i64 %7, 1
  br i1 %8, label %9, label %35

9:                                                ; preds = %3
  %10 = load double, ptr %0, align 8
  br label %11

11:                                               ; preds = %29, %9
  %.030 = phi ptr [ %1, %9 ], [ %13, %29 ]
  %.0 = phi ptr [ %0, %9 ], [ %.2, %29 ]
  br label %12

12:                                               ; preds = %12, %11
  %.131 = phi ptr [ %.030, %11 ], [ %13, %12 ]
  %13 = getelementptr inbounds double, ptr %.131, i32 -1
  %14 = load double, ptr %13, align 8
  %15 = call noundef zeroext i1 %2(double noundef %10, double noundef %14)
  br i1 %15, label %12, label %16, !llvm.loop !15

16:                                               ; preds = %12
  %17 = icmp ult ptr %.0, %13
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  br label %32

19:                                               ; preds = %16
  %20 = load double, ptr %.0, align 8
  %21 = call noundef zeroext i1 %2(double noundef %20, double noundef %10)
  br i1 %21, label %.lr.ph, label %26

.lr.ph:                                           ; preds = %19
  br label %22

22:                                               ; preds = %.lr.ph, %22
  %.1 = phi ptr [ %.0, %.lr.ph ], [ %23, %22 ]
  %23 = getelementptr inbounds nuw double, ptr %.1, i32 1
  %24 = load double, ptr %23, align 8
  %25 = call noundef zeroext i1 %2(double noundef %24, double noundef %10)
  br i1 %25, label %22, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %22
  br label %26

26:                                               ; preds = %._crit_edge, %19
  %.2 = phi ptr [ %23, %._crit_edge ], [ %.0, %19 ]
  %27 = icmp ult ptr %.2, %13
  br i1 %27, label %29, label %28

28:                                               ; preds = %26
  br label %32

29:                                               ; preds = %26
  %30 = load double, ptr %13, align 8
  %31 = load double, ptr %.2, align 8
  store double %31, ptr %13, align 8
  store double %30, ptr %.2, align 8
  br label %11, !llvm.loop !17

32:                                               ; preds = %28, %18
  %33 = getelementptr inbounds double, ptr %13, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %33, ptr noundef %2)
  %34 = getelementptr inbounds double, ptr %13, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %34, ptr noundef %1, ptr noundef %2)
  br label %35

35:                                               ; preds = %32, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = sdiv exact i64 %6, 8
  %8 = icmp sgt i64 %7, 1
  br i1 %8, label %9, label %35

9:                                                ; preds = %3
  %10 = load double, ptr %0, align 8
  br label %11

11:                                               ; preds = %29, %9
  %.030 = phi ptr [ %1, %9 ], [ %13, %29 ]
  %.0 = phi ptr [ %0, %9 ], [ %.2, %29 ]
  br label %12

12:                                               ; preds = %12, %11
  %.131 = phi ptr [ %.030, %11 ], [ %13, %12 ]
  %13 = getelementptr inbounds double, ptr %.131, i32 -1
  %14 = load double, ptr %13, align 8
  %15 = call noundef zeroext i1 %2(double noundef %10, double noundef %14)
  br i1 %15, label %12, label %16, !llvm.loop !18

16:                                               ; preds = %12
  %17 = icmp ult ptr %.0, %13
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  br label %32

19:                                               ; preds = %16
  %20 = load double, ptr %.0, align 8
  %21 = call noundef zeroext i1 %2(double noundef %20, double noundef %10)
  br i1 %21, label %.lr.ph, label %26

.lr.ph:                                           ; preds = %19
  br label %22

22:                                               ; preds = %.lr.ph, %22
  %.1 = phi ptr [ %.0, %.lr.ph ], [ %23, %22 ]
  %23 = getelementptr inbounds nuw double, ptr %.1, i32 1
  %24 = load double, ptr %23, align 8
  %25 = call noundef zeroext i1 %2(double noundef %24, double noundef %10)
  br i1 %25, label %22, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %22
  br label %26

26:                                               ; preds = %._crit_edge, %19
  %.2 = phi ptr [ %23, %._crit_edge ], [ %.0, %19 ]
  %27 = icmp ult ptr %.2, %13
  br i1 %27, label %29, label %28

28:                                               ; preds = %26
  br label %32

29:                                               ; preds = %26
  %30 = load double, ptr %13, align 8
  %31 = load double, ptr %.2, align 8
  store double %31, ptr %13, align 8
  store double %30, ptr %.2, align 8
  br label %11, !llvm.loop !20

32:                                               ; preds = %28, %18
  %33 = getelementptr inbounds double, ptr %13, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %33, ptr noundef %2)
  %34 = getelementptr inbounds double, ptr %13, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %34, ptr noundef %1, ptr noundef %2)
  br label %35

35:                                               ; preds = %32, %3
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
  %26 = icmp slt i32 0, %18
  br i1 %26, label %.lr.ph, label %35

.lr.ph:                                           ; preds = %17
  br label %27

27:                                               ; preds = %.lr.ph, %32
  %.0253 = phi i32 [ 0, %.lr.ph ], [ %33, %32 ]
  %28 = call i32 @rand()
  %29 = sitofp i32 %28 to double
  %30 = sext i32 %.0253 to i64
  %31 = getelementptr inbounds double, ptr %25, i64 %30
  store double %29, ptr %31, align 8
  br label %32

32:                                               ; preds = %27
  %33 = add nsw i32 %.0253, 1
  %34 = icmp slt i32 %33, %18
  br i1 %34, label %27, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %32
  br label %35

35:                                               ; preds = %._crit_edge, %17
  %36 = sext i32 %18 to i64
  %37 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %36, i64 8)
  %38 = extractvalue { i64, i1 } %37, 1
  %39 = extractvalue { i64, i1 } %37, 0
  %40 = select i1 %38, i64 -1, i64 %39
  %41 = call noalias noundef nonnull ptr @_Znay(i64 noundef %40) #16
  %42 = icmp slt i32 0, %10
  br i1 %42, label %.lr.ph2, label %53

.lr.ph2:                                          ; preds = %35
  br label %43

43:                                               ; preds = %.lr.ph2, %50
  %.0 = phi i32 [ 0, %.lr.ph2 ], [ %51, %50 ]
  %44 = sext i32 %18 to i64
  %45 = getelementptr inbounds double, ptr %25, i64 %44
  %46 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %25, ptr noundef %45, ptr noundef %41)
  %47 = sext i32 %18 to i64
  call void @qsort(ptr noundef %41, i64 noundef %47, i64 noundef 8, ptr noundef @_Z19less_than_function1PKvS0_)
  %48 = sext i32 %18 to i64
  %49 = getelementptr inbounds double, ptr %41, i64 %48
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %41, ptr noundef %49)
  br label %50

50:                                               ; preds = %43
  %51 = add nsw i32 %.0, 1
  %52 = icmp slt i32 %51, %10
  br i1 %52, label %43, label %._crit_edge3, !llvm.loop !22

._crit_edge3:                                     ; preds = %50
  br label %53

53:                                               ; preds = %._crit_edge3, %35
  %54 = icmp slt i32 0, %10
  br i1 %54, label %.lr.ph5, label %66

.lr.ph5:                                          ; preds = %53
  br label %55

55:                                               ; preds = %.lr.ph5, %63
  %.1 = phi i32 [ 0, %.lr.ph5 ], [ %64, %63 ]
  %56 = sext i32 %18 to i64
  %57 = getelementptr inbounds double, ptr %25, i64 %56
  %58 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %25, ptr noundef %57, ptr noundef %41)
  %59 = sext i32 %18 to i64
  %60 = getelementptr inbounds double, ptr %41, i64 %59
  call void @_Z18quicksort_functionPdS_PFbddE(ptr noundef %41, ptr noundef %60, ptr noundef @_Z19less_than_function2dd)
  %61 = sext i32 %18 to i64
  %62 = getelementptr inbounds double, ptr %41, i64 %61
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %41, ptr noundef %62)
  br label %63

63:                                               ; preds = %55
  %64 = add nsw i32 %.1, 1
  %65 = icmp slt i32 %64, %10
  br i1 %65, label %55, label %._crit_edge6, !llvm.loop !23

._crit_edge6:                                     ; preds = %63
  br label %66

66:                                               ; preds = %._crit_edge6, %53
  %67 = icmp slt i32 0, %10
  br i1 %67, label %.lr.ph8, label %79

.lr.ph8:                                          ; preds = %66
  br label %68

68:                                               ; preds = %.lr.ph8, %76
  %.2 = phi i32 [ 0, %.lr.ph8 ], [ %77, %76 ]
  %69 = sext i32 %18 to i64
  %70 = getelementptr inbounds double, ptr %25, i64 %69
  %71 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %25, ptr noundef %70, ptr noundef %41)
  %72 = sext i32 %18 to i64
  %73 = getelementptr inbounds double, ptr %41, i64 %72
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %41, ptr noundef %73, ptr noundef @_Z19less_than_function2dd)
  %74 = sext i32 %18 to i64
  %75 = getelementptr inbounds double, ptr %41, i64 %74
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %41, ptr noundef %75)
  br label %76

76:                                               ; preds = %68
  %77 = add nsw i32 %.2, 1
  %78 = icmp slt i32 %77, %10
  br i1 %78, label %68, label %._crit_edge9, !llvm.loop !24

._crit_edge9:                                     ; preds = %76
  br label %79

79:                                               ; preds = %._crit_edge9, %66
  %80 = icmp slt i32 0, %10
  br i1 %80, label %.lr.ph11, label %92

.lr.ph11:                                         ; preds = %79
  br label %81

81:                                               ; preds = %.lr.ph11, %89
  %.3 = phi i32 [ 0, %.lr.ph11 ], [ %90, %89 ]
  %82 = sext i32 %18 to i64
  %83 = getelementptr inbounds double, ptr %25, i64 %82
  %84 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %25, ptr noundef %83, ptr noundef %41)
  %85 = sext i32 %18 to i64
  %86 = getelementptr inbounds double, ptr %41, i64 %85
  call void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef %41, ptr noundef %86)
  %87 = sext i32 %18 to i64
  %88 = getelementptr inbounds double, ptr %41, i64 %87
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %41, ptr noundef %88)
  br label %89

89:                                               ; preds = %81
  %90 = add nsw i32 %.3, 1
  %91 = icmp slt i32 %90, %10
  br i1 %91, label %81, label %._crit_edge12, !llvm.loop !25

._crit_edge12:                                    ; preds = %89
  br label %92

92:                                               ; preds = %._crit_edge12, %79
  %93 = icmp slt i32 0, %10
  br i1 %93, label %.lr.ph14, label %105

.lr.ph14:                                         ; preds = %92
  br label %94

94:                                               ; preds = %.lr.ph14, %102
  %.4 = phi i32 [ 0, %.lr.ph14 ], [ %103, %102 ]
  %95 = sext i32 %18 to i64
  %96 = getelementptr inbounds double, ptr %25, i64 %95
  %97 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %25, ptr noundef %96, ptr noundef %41)
  %98 = sext i32 %18 to i64
  %99 = getelementptr inbounds double, ptr %41, i64 %98
  call void @_ZSt4sortIPdPFbddEEvT_S3_T0_(ptr noundef %41, ptr noundef %99, ptr noundef @_Z19less_than_function2dd)
  %100 = sext i32 %18 to i64
  %101 = getelementptr inbounds double, ptr %41, i64 %100
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %41, ptr noundef %101)
  br label %102

102:                                              ; preds = %94
  %103 = add nsw i32 %.4, 1
  %104 = icmp slt i32 %103, %10
  br i1 %104, label %94, label %._crit_edge15, !llvm.loop !26

._crit_edge15:                                    ; preds = %102
  br label %105

105:                                              ; preds = %._crit_edge15, %92
  %106 = icmp slt i32 0, %10
  br i1 %106, label %.lr.ph17, label %118

.lr.ph17:                                         ; preds = %105
  br label %107

107:                                              ; preds = %.lr.ph17, %115
  %.5 = phi i32 [ 0, %.lr.ph17 ], [ %116, %115 ]
  %108 = sext i32 %18 to i64
  %109 = getelementptr inbounds double, ptr %25, i64 %108
  %110 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %25, ptr noundef %109, ptr noundef %41)
  %111 = sext i32 %18 to i64
  %112 = getelementptr inbounds double, ptr %41, i64 %111
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %41, ptr noundef %112, i8 undef)
  %113 = sext i32 %18 to i64
  %114 = getelementptr inbounds double, ptr %41, i64 %113
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %41, ptr noundef %114)
  br label %115

115:                                              ; preds = %107
  %116 = add nsw i32 %.5, 1
  %117 = icmp slt i32 %116, %10
  br i1 %117, label %107, label %._crit_edge18, !llvm.loop !27

._crit_edge18:                                    ; preds = %115
  br label %118

118:                                              ; preds = %._crit_edge18, %105
  %119 = icmp slt i32 0, %10
  br i1 %119, label %.lr.ph20, label %131

.lr.ph20:                                         ; preds = %118
  br label %120

120:                                              ; preds = %.lr.ph20, %128
  %.6 = phi i32 [ 0, %.lr.ph20 ], [ %129, %128 ]
  %121 = sext i32 %18 to i64
  %122 = getelementptr inbounds double, ptr %41, i64 %121
  call void @_ZSt4sortIPd17less_than_functorEvT_S2_T0_(ptr noundef %41, ptr noundef %122, i8 undef)
  %123 = sext i32 %18 to i64
  %124 = getelementptr inbounds double, ptr %41, i64 %123
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %41, ptr noundef %124)
  %125 = sext i32 %18 to i64
  %126 = getelementptr inbounds double, ptr %25, i64 %125
  %127 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %25, ptr noundef %126, ptr noundef %41)
  br label %128

128:                                              ; preds = %120
  %129 = add nsw i32 %.6, 1
  %130 = icmp slt i32 %129, %10
  br i1 %130, label %120, label %._crit_edge21, !llvm.loop !28

._crit_edge21:                                    ; preds = %128
  br label %131

131:                                              ; preds = %._crit_edge21, %118
  %132 = icmp slt i32 0, %10
  br i1 %132, label %.lr.ph23, label %144

.lr.ph23:                                         ; preds = %131
  br label %133

133:                                              ; preds = %.lr.ph23, %141
  %.7 = phi i32 [ 0, %.lr.ph23 ], [ %142, %141 ]
  %134 = sext i32 %18 to i64
  %135 = getelementptr inbounds double, ptr %25, i64 %134
  %136 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %25, ptr noundef %135, ptr noundef %41)
  %137 = sext i32 %18 to i64
  %138 = getelementptr inbounds double, ptr %41, i64 %137
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %41, ptr noundef %138, i8 undef)
  %139 = sext i32 %18 to i64
  %140 = getelementptr inbounds double, ptr %41, i64 %139
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %41, ptr noundef %140)
  br label %141

141:                                              ; preds = %133
  %142 = add nsw i32 %.7, 1
  %143 = icmp slt i32 %142, %10
  br i1 %143, label %133, label %._crit_edge24, !llvm.loop !29

._crit_edge24:                                    ; preds = %141
  br label %144

144:                                              ; preds = %._crit_edge24, %131
  %145 = icmp slt i32 0, %10
  br i1 %145, label %.lr.ph26, label %157

.lr.ph26:                                         ; preds = %144
  br label %146

146:                                              ; preds = %.lr.ph26, %154
  %.8 = phi i32 [ 0, %.lr.ph26 ], [ %155, %154 ]
  %147 = sext i32 %18 to i64
  %148 = getelementptr inbounds double, ptr %25, i64 %147
  %149 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %25, ptr noundef %148, ptr noundef %41)
  %150 = sext i32 %18 to i64
  %151 = getelementptr inbounds double, ptr %41, i64 %150
  call void @_ZSt4sortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %41, ptr noundef %151, i8 undef)
  %152 = sext i32 %18 to i64
  %153 = getelementptr inbounds double, ptr %41, i64 %152
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %41, ptr noundef %153)
  br label %154

154:                                              ; preds = %146
  %155 = add nsw i32 %.8, 1
  %156 = icmp slt i32 %155, %10
  br i1 %156, label %146, label %._crit_edge27, !llvm.loop !30

._crit_edge27:                                    ; preds = %154
  br label %157

157:                                              ; preds = %._crit_edge27, %144
  %158 = icmp slt i32 0, %10
  br i1 %158, label %.lr.ph29, label %170

.lr.ph29:                                         ; preds = %157
  br label %159

159:                                              ; preds = %.lr.ph29, %167
  %.9 = phi i32 [ 0, %.lr.ph29 ], [ %168, %167 ]
  %160 = sext i32 %18 to i64
  %161 = getelementptr inbounds double, ptr %25, i64 %160
  %162 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %25, ptr noundef %161, ptr noundef %41)
  %163 = sext i32 %18 to i64
  %164 = getelementptr inbounds double, ptr %41, i64 %163
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %41, ptr noundef %164, i8 undef)
  %165 = sext i32 %18 to i64
  %166 = getelementptr inbounds double, ptr %41, i64 %165
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %41, ptr noundef %166)
  br label %167

167:                                              ; preds = %159
  %168 = add nsw i32 %.9, 1
  %169 = icmp slt i32 %168, %10
  br i1 %169, label %159, label %._crit_edge30, !llvm.loop !31

._crit_edge30:                                    ; preds = %167
  br label %170

170:                                              ; preds = %._crit_edge30, %157
  %171 = icmp slt i32 0, %10
  br i1 %171, label %.lr.ph32, label %183

.lr.ph32:                                         ; preds = %170
  br label %172

172:                                              ; preds = %.lr.ph32, %180
  %.10 = phi i32 [ 0, %.lr.ph32 ], [ %181, %180 ]
  %173 = sext i32 %18 to i64
  %174 = getelementptr inbounds double, ptr %25, i64 %173
  %175 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %25, ptr noundef %174, ptr noundef %41)
  %176 = sext i32 %18 to i64
  %177 = getelementptr inbounds double, ptr %41, i64 %176
  call void @_ZSt4sortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %41, ptr noundef %177, i8 undef)
  %178 = sext i32 %18 to i64
  %179 = getelementptr inbounds double, ptr %41, i64 %178
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %41, ptr noundef %179)
  br label %180

180:                                              ; preds = %172
  %181 = add nsw i32 %.10, 1
  %182 = icmp slt i32 %181, %10
  br i1 %182, label %172, label %._crit_edge33, !llvm.loop !32

._crit_edge33:                                    ; preds = %180
  br label %183

183:                                              ; preds = %._crit_edge33, %170
  %184 = icmp slt i32 0, %10
  br i1 %184, label %.lr.ph35, label %196

.lr.ph35:                                         ; preds = %183
  br label %185

185:                                              ; preds = %.lr.ph35, %193
  %.11 = phi i32 [ 0, %.lr.ph35 ], [ %194, %193 ]
  %186 = sext i32 %18 to i64
  %187 = getelementptr inbounds double, ptr %25, i64 %186
  %188 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %25, ptr noundef %187, ptr noundef %41)
  %189 = sext i32 %18 to i64
  %190 = getelementptr inbounds double, ptr %41, i64 %189
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %41, ptr noundef %190)
  %191 = sext i32 %18 to i64
  %192 = getelementptr inbounds double, ptr %41, i64 %191
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %41, ptr noundef %192)
  br label %193

193:                                              ; preds = %185
  %194 = add nsw i32 %.11, 1
  %195 = icmp slt i32 %194, %10
  br i1 %195, label %185, label %._crit_edge36, !llvm.loop !33

._crit_edge36:                                    ; preds = %193
  br label %196

196:                                              ; preds = %._crit_edge36, %183
  %197 = icmp slt i32 0, %10
  br i1 %197, label %.lr.ph38, label %209

.lr.ph38:                                         ; preds = %196
  br label %198

198:                                              ; preds = %.lr.ph38, %206
  %.12 = phi i32 [ 0, %.lr.ph38 ], [ %207, %206 ]
  %199 = sext i32 %18 to i64
  %200 = getelementptr inbounds double, ptr %25, i64 %199
  %201 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %25, ptr noundef %200, ptr noundef %41)
  %202 = sext i32 %18 to i64
  %203 = getelementptr inbounds double, ptr %41, i64 %202
  call void @_ZSt4sortIPdEvT_S1_(ptr noundef %41, ptr noundef %203)
  %204 = sext i32 %18 to i64
  %205 = getelementptr inbounds double, ptr %41, i64 %204
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %41, ptr noundef %205)
  br label %206

206:                                              ; preds = %198
  %207 = add nsw i32 %.12, 1
  %208 = icmp slt i32 %207, %10
  br i1 %208, label %198, label %._crit_edge39, !llvm.loop !34

._crit_edge39:                                    ; preds = %206
  br label %209

209:                                              ; preds = %._crit_edge39, %196
  %210 = icmp eq ptr %41, null
  br i1 %210, label %212, label %211

211:                                              ; preds = %209
  call void @_ZdaPv(ptr noundef %41) #17
  br label %212

212:                                              ; preds = %211, %209
  %213 = icmp eq ptr %25, null
  br i1 %213, label %215, label %214

214:                                              ; preds = %212
  call void @_ZdaPv(ptr noundef %25) #17
  br label %215

215:                                              ; preds = %214, %212
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
  %4 = icmp ne ptr %3, %1
  br i1 %4, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %2
  br label %7

5:                                                ; preds = %7
  %6 = icmp ne ptr %8, %1
  br i1 %6, label %7, label %..loopexit_crit_edge, !llvm.loop !35

7:                                                ; preds = %.lr.ph, %5
  %.08 = phi ptr [ %3, %.lr.ph ], [ %8, %5 ]
  %.0 = phi ptr [ %0, %.lr.ph ], [ %10, %5 ]
  %8 = getelementptr inbounds nuw double, ptr %.08, i32 1
  %9 = load double, ptr %.08, align 8
  %10 = getelementptr inbounds nuw double, ptr %.0, i32 1
  %11 = load double, ptr %.0, align 8
  %12 = fcmp olt double %9, %11
  br i1 %12, label %13, label %5

13:                                               ; preds = %7
  %14 = load i32, ptr @current_test, align 4
  %15 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.11, i32 noundef %14)
  br label %16

..loopexit_crit_edge:                             ; preds = %5
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %2
  br label %16

16:                                               ; preds = %.loopexit, %13
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef %0, ptr noundef %1) #0 comdat {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = sdiv exact i64 %5, 8
  %7 = icmp sgt i64 %6, 1
  br i1 %7, label %8, label %34

8:                                                ; preds = %2
  %9 = load double, ptr %0, align 8
  br label %10

10:                                               ; preds = %28, %8
  %.025 = phi ptr [ %1, %8 ], [ %12, %28 ]
  %.0 = phi ptr [ %0, %8 ], [ %.2, %28 ]
  br label %11

11:                                               ; preds = %11, %10
  %.126 = phi ptr [ %.025, %10 ], [ %12, %11 ]
  %12 = getelementptr inbounds double, ptr %.126, i32 -1
  %13 = load double, ptr %12, align 8
  %14 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %9, double noundef %13)
  br i1 %14, label %11, label %15, !llvm.loop !36

15:                                               ; preds = %11
  %16 = icmp ult ptr %.0, %12
  br i1 %16, label %18, label %17

17:                                               ; preds = %15
  br label %31

18:                                               ; preds = %15
  %19 = load double, ptr %.0, align 8
  %20 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %19, double noundef %9)
  br i1 %20, label %.lr.ph, label %25

.lr.ph:                                           ; preds = %18
  br label %21

21:                                               ; preds = %.lr.ph, %21
  %.1 = phi ptr [ %.0, %.lr.ph ], [ %22, %21 ]
  %22 = getelementptr inbounds nuw double, ptr %.1, i32 1
  %23 = load double, ptr %22, align 8
  %24 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %23, double noundef %9)
  br i1 %24, label %21, label %._crit_edge, !llvm.loop !37

._crit_edge:                                      ; preds = %21
  br label %25

25:                                               ; preds = %._crit_edge, %18
  %.2 = phi ptr [ %22, %._crit_edge ], [ %.0, %18 ]
  %26 = icmp ult ptr %.2, %12
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  br label %31

28:                                               ; preds = %25
  %29 = load double, ptr %12, align 8
  %30 = load double, ptr %.2, align 8
  store double %30, ptr %12, align 8
  store double %29, ptr %.2, align 8
  br label %10, !llvm.loop !38

31:                                               ; preds = %27, %17
  %32 = getelementptr inbounds double, ptr %12, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %32, ptr noundef @_Z19less_than_function2dd)
  %33 = getelementptr inbounds double, ptr %12, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %33, ptr noundef %1, ptr noundef @_Z19less_than_function2dd)
  br label %34

34:                                               ; preds = %31, %2
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt4sortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
  %4 = call i64 @_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFbddEEENS0_15_Iter_comp_iterIT_EES5_(ptr noundef %2)
  %5 = inttoptr i64 %4 to ptr
  %6 = ptrtoint ptr %5 to i64
  call void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %6)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %struct.less_than_functor, align 1
  %5 = alloca double, align 8
  %6 = getelementptr inbounds nuw %struct.less_than_functor, ptr %4, i32 0, i32 0
  store i8 %2, ptr %6, align 1
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 8
  %11 = icmp sgt i64 %10, 1
  br i1 %11, label %12, label %35

12:                                               ; preds = %3
  %13 = load double, ptr %0, align 8
  store double %13, ptr %5, align 8
  br label %14

14:                                               ; preds = %29, %12
  %.023 = phi ptr [ %1, %12 ], [ %16, %29 ]
  %.0 = phi ptr [ %0, %12 ], [ %.2, %29 ]
  br label %15

15:                                               ; preds = %15, %14
  %.124 = phi ptr [ %.023, %14 ], [ %16, %15 ]
  %16 = getelementptr inbounds double, ptr %.124, i32 -1
  %17 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %16)
  br i1 %17, label %15, label %18, !llvm.loop !39

18:                                               ; preds = %15
  %19 = icmp ult ptr %.0, %16
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  br label %32

21:                                               ; preds = %18
  %22 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %.0, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %22, label %.lr.ph, label %26

.lr.ph:                                           ; preds = %21
  br label %23

23:                                               ; preds = %.lr.ph, %23
  %.1 = phi ptr [ %.0, %.lr.ph ], [ %24, %23 ]
  %24 = getelementptr inbounds nuw double, ptr %.1, i32 1
  %25 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %25, label %23, label %._crit_edge, !llvm.loop !40

._crit_edge:                                      ; preds = %23
  br label %26

26:                                               ; preds = %._crit_edge, %21
  %.2 = phi ptr [ %24, %._crit_edge ], [ %.0, %21 ]
  %27 = icmp ult ptr %.2, %16
  br i1 %27, label %29, label %28

28:                                               ; preds = %26
  br label %32

29:                                               ; preds = %26
  %30 = load double, ptr %16, align 8
  %31 = load double, ptr %.2, align 8
  store double %31, ptr %16, align 8
  store double %30, ptr %.2, align 8
  br label %14, !llvm.loop !41

32:                                               ; preds = %28, %20
  %33 = getelementptr inbounds double, ptr %16, i64 1
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %0, ptr noundef %33, i8 undef)
  %34 = getelementptr inbounds double, ptr %16, i64 1
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %34, ptr noundef %1, i8 undef)
  br label %35

35:                                               ; preds = %32, %3
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
  %6 = getelementptr inbounds nuw %struct.inline_less_than_functor, ptr %4, i32 0, i32 0
  store i8 %2, ptr %6, align 1
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 8
  %11 = icmp sgt i64 %10, 1
  br i1 %11, label %12, label %35

12:                                               ; preds = %3
  %13 = load double, ptr %0, align 8
  store double %13, ptr %5, align 8
  br label %14

14:                                               ; preds = %29, %12
  %.023 = phi ptr [ %1, %12 ], [ %16, %29 ]
  %.0 = phi ptr [ %0, %12 ], [ %.2, %29 ]
  br label %15

15:                                               ; preds = %15, %14
  %.124 = phi ptr [ %.023, %14 ], [ %16, %15 ]
  %16 = getelementptr inbounds double, ptr %.124, i32 -1
  %17 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %16)
  br i1 %17, label %15, label %18, !llvm.loop !42

18:                                               ; preds = %15
  %19 = icmp ult ptr %.0, %16
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  br label %32

21:                                               ; preds = %18
  %22 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %.0, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %22, label %.lr.ph, label %26

.lr.ph:                                           ; preds = %21
  br label %23

23:                                               ; preds = %.lr.ph, %23
  %.1 = phi ptr [ %.0, %.lr.ph ], [ %24, %23 ]
  %24 = getelementptr inbounds nuw double, ptr %.1, i32 1
  %25 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %25, label %23, label %._crit_edge, !llvm.loop !43

._crit_edge:                                      ; preds = %23
  br label %26

26:                                               ; preds = %._crit_edge, %21
  %.2 = phi ptr [ %24, %._crit_edge ], [ %.0, %21 ]
  %27 = icmp ult ptr %.2, %16
  br i1 %27, label %29, label %28

28:                                               ; preds = %26
  br label %32

29:                                               ; preds = %26
  %30 = load double, ptr %16, align 8
  %31 = load double, ptr %.2, align 8
  store double %31, ptr %16, align 8
  store double %30, ptr %.2, align 8
  br label %14, !llvm.loop !44

32:                                               ; preds = %28, %20
  %33 = getelementptr inbounds double, ptr %16, i64 1
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %0, ptr noundef %33, i8 undef)
  %34 = getelementptr inbounds double, ptr %16, i64 1
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %34, ptr noundef %1, i8 undef)
  br label %35

35:                                               ; preds = %32, %3
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
  %6 = getelementptr inbounds nuw %"struct.std::less", ptr %4, i32 0, i32 0
  store i8 %2, ptr %6, align 1
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 8
  %11 = icmp sgt i64 %10, 1
  br i1 %11, label %12, label %35

12:                                               ; preds = %3
  %13 = load double, ptr %0, align 8
  store double %13, ptr %5, align 8
  br label %14

14:                                               ; preds = %29, %12
  %.023 = phi ptr [ %1, %12 ], [ %16, %29 ]
  %.0 = phi ptr [ %0, %12 ], [ %.2, %29 ]
  br label %15

15:                                               ; preds = %15, %14
  %.124 = phi ptr [ %.023, %14 ], [ %16, %15 ]
  %16 = getelementptr inbounds double, ptr %.124, i32 -1
  %17 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %16)
  br i1 %17, label %15, label %18, !llvm.loop !45

18:                                               ; preds = %15
  %19 = icmp ult ptr %.0, %16
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  br label %32

21:                                               ; preds = %18
  %22 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %.0, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %22, label %.lr.ph, label %26

.lr.ph:                                           ; preds = %21
  br label %23

23:                                               ; preds = %.lr.ph, %23
  %.1 = phi ptr [ %.0, %.lr.ph ], [ %24, %23 ]
  %24 = getelementptr inbounds nuw double, ptr %.1, i32 1
  %25 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %25, label %23, label %._crit_edge, !llvm.loop !46

._crit_edge:                                      ; preds = %23
  br label %26

26:                                               ; preds = %._crit_edge, %21
  %.2 = phi ptr [ %24, %._crit_edge ], [ %.0, %21 ]
  %27 = icmp ult ptr %.2, %16
  br i1 %27, label %29, label %28

28:                                               ; preds = %26
  br label %32

29:                                               ; preds = %26
  %30 = load double, ptr %16, align 8
  %31 = load double, ptr %.2, align 8
  store double %31, ptr %16, align 8
  store double %30, ptr %.2, align 8
  br label %14, !llvm.loop !47

32:                                               ; preds = %28, %20
  %33 = getelementptr inbounds double, ptr %16, i64 1
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %0, ptr noundef %33, i8 undef)
  %34 = getelementptr inbounds double, ptr %16, i64 1
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %34, ptr noundef %1, i8 undef)
  br label %35

35:                                               ; preds = %32, %3
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
  br i1 %7, label %8, label %34

8:                                                ; preds = %2
  %9 = load double, ptr %0, align 8
  br label %10

10:                                               ; preds = %28, %8
  %.025 = phi ptr [ %1, %8 ], [ %12, %28 ]
  %.0 = phi ptr [ %0, %8 ], [ %.2, %28 ]
  br label %11

11:                                               ; preds = %11, %10
  %.126 = phi ptr [ %.025, %10 ], [ %12, %11 ]
  %12 = getelementptr inbounds double, ptr %.126, i32 -1
  %13 = load double, ptr %12, align 8
  %14 = fcmp olt double %9, %13
  br i1 %14, label %11, label %15, !llvm.loop !48

15:                                               ; preds = %11
  %16 = icmp ult ptr %.0, %12
  br i1 %16, label %18, label %17

17:                                               ; preds = %15
  br label %31

18:                                               ; preds = %15
  %19 = load double, ptr %.0, align 8
  %20 = fcmp olt double %19, %9
  br i1 %20, label %.lr.ph, label %25

.lr.ph:                                           ; preds = %18
  br label %21

21:                                               ; preds = %.lr.ph, %21
  %.1 = phi ptr [ %.0, %.lr.ph ], [ %22, %21 ]
  %22 = getelementptr inbounds nuw double, ptr %.1, i32 1
  %23 = load double, ptr %22, align 8
  %24 = fcmp olt double %23, %9
  br i1 %24, label %21, label %._crit_edge, !llvm.loop !49

._crit_edge:                                      ; preds = %21
  br label %25

25:                                               ; preds = %._crit_edge, %18
  %.2 = phi ptr [ %22, %._crit_edge ], [ %.0, %18 ]
  %26 = icmp ult ptr %.2, %12
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  br label %31

28:                                               ; preds = %25
  %29 = load double, ptr %12, align 8
  %30 = load double, ptr %.2, align 8
  store double %30, ptr %12, align 8
  store double %29, ptr %.2, align 8
  br label %10, !llvm.loop !50

31:                                               ; preds = %27, %17
  %32 = getelementptr inbounds double, ptr %12, i64 1
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %0, ptr noundef %32)
  %33 = getelementptr inbounds double, ptr %12, i64 1
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %33, ptr noundef %1)
  br label %34

34:                                               ; preds = %31, %2
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
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = mul i64 %7, 8
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %10, i1 false)
  %11 = getelementptr inbounds double, ptr %2, i64 %7
  br label %18

12:                                               ; preds = %3
  %13 = icmp eq i64 %7, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = load double, ptr %0, align 8
  store double %15, ptr %2, align 8
  %16 = getelementptr inbounds nuw double, ptr %2, i32 1
  br label %17

17:                                               ; preds = %14, %12
  %.1 = phi ptr [ %16, %14 ], [ %2, %12 ]
  br label %18

18:                                               ; preds = %17, %9
  %.0 = phi ptr [ %11, %9 ], [ %.1, %17 ]
  ret ptr %.0
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
  %3 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %2, i32 0, i32 0
  %4 = load ptr, ptr %3, align 8
  %5 = ptrtoint ptr %4 to i64
  ret i64 %5
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 %3) #0 comdat {
  %5 = inttoptr i64 %3 to ptr
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 8
  %10 = icmp sgt i64 %9, 16
  br i1 %10, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %11

11:                                               ; preds = %.lr.ph, %15
  %.017 = phi i64 [ %2, %.lr.ph ], [ %16, %15 ]
  %.0 = phi ptr [ %1, %.lr.ph ], [ %18, %15 ]
  %12 = icmp eq i64 %.017, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %11
  %14 = ptrtoint ptr %5 to i64
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %.0, ptr noundef %.0, i64 %14)
  br label %25

15:                                               ; preds = %11
  %16 = add nsw i64 %.017, -1
  %17 = ptrtoint ptr %5 to i64
  %18 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %.0, i64 %17)
  %19 = ptrtoint ptr %5 to i64
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %18, ptr noundef %.0, i64 noundef %16, i64 %19)
  %20 = ptrtoint ptr %18 to i64
  %21 = ptrtoint ptr %0 to i64
  %22 = sub i64 %20, %21
  %23 = sdiv exact i64 %22, 8
  %24 = icmp sgt i64 %23, 16
  br i1 %24, label %11, label %..loopexit_crit_edge, !llvm.loop !51

..loopexit_crit_edge:                             ; preds = %15
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %25

25:                                               ; preds = %.loopexit, %13
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
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = getelementptr inbounds double, ptr %0, i64 16
  %12 = ptrtoint ptr %4 to i64
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %11, i64 %12)
  %13 = getelementptr inbounds double, ptr %0, i64 16
  %14 = ptrtoint ptr %4 to i64
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %13, ptr noundef %1, i64 %14)
  br label %17

15:                                               ; preds = %3
  %16 = ptrtoint ptr %4 to i64
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %16)
  br label %17

17:                                               ; preds = %15, %10
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %5, i32 0, i32 0
  %7 = inttoptr i64 %3 to ptr
  store ptr %7, ptr %6, align 8
  %.sroa.0.0.copyload = load ptr, ptr %5, align 8
  %8 = ptrtoint ptr %.sroa.0.0.copyload to i64
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %8)
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
  %14 = getelementptr inbounds double, ptr %0, i64 1
  %15 = ptrtoint ptr %4 to i64
  %16 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_S7_T0_(ptr noundef %14, ptr noundef %1, ptr noundef %0, i64 %15)
  ret ptr %16
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %5, i32 0, i32 0
  %7 = inttoptr i64 %3 to ptr
  store ptr %7, ptr %6, align 8
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %8 = icmp ult ptr %1, %2
  br i1 %8, label %.lr.ph, label %16

.lr.ph:                                           ; preds = %4
  br label %9

9:                                                ; preds = %.lr.ph, %13
  %.0 = phi ptr [ %1, %.lr.ph ], [ %14, %13 ]
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %.0, ptr noundef %0)
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %.0, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %12

12:                                               ; preds = %11, %9
  br label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds nuw double, ptr %.0, i32 1
  %15 = icmp ult ptr %14, %2
  br i1 %15, label %9, label %._crit_edge, !llvm.loop !52

._crit_edge:                                      ; preds = %13
  br label %16

16:                                               ; preds = %._crit_edge, %4
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = sdiv exact i64 %6, 8
  %8 = icmp sgt i64 %7, 1
  br i1 %8, label %.lr.ph, label %16

.lr.ph:                                           ; preds = %3
  br label %9

9:                                                ; preds = %.lr.ph, %9
  %.0 = phi ptr [ %1, %.lr.ph ], [ %10, %9 ]
  %10 = getelementptr inbounds double, ptr %.0, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %10, ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %11 = ptrtoint ptr %10 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = icmp sgt i64 %14, 1
  br i1 %15, label %9, label %._crit_edge, !llvm.loop !53

._crit_edge:                                      ; preds = %9
  br label %16

16:                                               ; preds = %._crit_edge, %3
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
  br label %25

10:                                               ; preds = %3
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = sub nsw i64 %14, 2
  %16 = sdiv i64 %15, 2
  br label %17

17:                                               ; preds = %23, %10
  %.0 = phi i64 [ %16, %10 ], [ %24, %23 ]
  %18 = getelementptr inbounds double, ptr %0, i64 %.0
  %19 = load double, ptr %18, align 8
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8
  %20 = ptrtoint ptr %.sroa.0.0.copyload to i64
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %.0, i64 noundef %14, double noundef %19, i64 %20)
  %21 = icmp eq i64 %.0, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %25

23:                                               ; preds = %17
  %24 = add nsw i64 %.0, -1
  br label %17, !llvm.loop !54

25:                                               ; preds = %22, %9
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) #0 comdat align 2 {
  %4 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %0, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = load double, ptr %1, align 8
  %7 = load double, ptr %2, align 8
  %8 = call noundef zeroext i1 %5(double noundef %6, double noundef %7)
  ret i1 %8
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
  %8 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %6, i32 0, i32 0
  %9 = inttoptr i64 %4 to ptr
  store ptr %9, ptr %8, align 8
  %10 = sub nsw i64 %2, 1
  %11 = sdiv i64 %10, 2
  %12 = icmp slt i64 %1, %11
  br i1 %12, label %.lr.ph, label %29

.lr.ph:                                           ; preds = %5
  br label %13

13:                                               ; preds = %.lr.ph, %22
  %.029 = phi i64 [ %1, %.lr.ph ], [ %.2, %22 ]
  %.0 = phi i64 [ %1, %.lr.ph ], [ %.2, %22 ]
  %14 = add nsw i64 %.0, 1
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
  %.2 = phi i64 [ %21, %20 ], [ %15, %13 ]
  %23 = getelementptr inbounds double, ptr %0, i64 %.2
  %24 = load double, ptr %23, align 8
  %25 = getelementptr inbounds double, ptr %0, i64 %.029
  store double %24, ptr %25, align 8
  %26 = sub nsw i64 %2, 1
  %27 = sdiv i64 %26, 2
  %28 = icmp slt i64 %.2, %27
  br i1 %28, label %13, label %._crit_edge, !llvm.loop !55

._crit_edge:                                      ; preds = %22
  br label %29

29:                                               ; preds = %._crit_edge, %5
  %.130 = phi i64 [ %.2, %._crit_edge ], [ %1, %5 ]
  %.1 = phi i64 [ %.2, %._crit_edge ], [ %1, %5 ]
  %30 = and i64 %2, 1
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = sub nsw i64 %2, 2
  %34 = sdiv i64 %33, 2
  %35 = icmp eq i64 %.1, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = add nsw i64 %.1, 1
  %38 = mul nsw i64 2, %37
  %39 = sub nsw i64 %38, 1
  %40 = getelementptr inbounds double, ptr %0, i64 %39
  %41 = load double, ptr %40, align 8
  %42 = getelementptr inbounds double, ptr %0, i64 %.130
  store double %41, ptr %42, align 8
  %43 = sub nsw i64 %38, 1
  br label %44

44:                                               ; preds = %36, %32, %29
  %.231 = phi i64 [ %43, %36 ], [ %.130, %32 ], [ %.130, %29 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEEEvT_T0_S8_T1_RT2_(ptr noundef %0, i64 noundef %.231, i64 noundef %1, double noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %7)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 {
  %3 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_val", ptr %0, i32 0, i32 0
  %4 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %1, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  store ptr %5, ptr %3, align 8
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
  %4 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_val", ptr %0, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = load double, ptr %1, align 8
  %7 = load double, ptr %2, align 8
  %8 = call noundef zeroext i1 %5(double noundef %6, double noundef %7)
  ret i1 %8
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 %4) #0 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %6, i32 0, i32 0
  %8 = inttoptr i64 %4 to ptr
  store ptr %8, ptr %7, align 8
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %2)
  br i1 %9, label %10, label %19

10:                                               ; preds = %5
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %2, ptr noundef %3)
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %18

13:                                               ; preds = %10
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %3)
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %17

16:                                               ; preds = %13
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %17

17:                                               ; preds = %16, %15
  br label %18

18:                                               ; preds = %17, %12
  br label %28

19:                                               ; preds = %5
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %3)
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %27

22:                                               ; preds = %19
  %23 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %2, ptr noundef %3)
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %26

25:                                               ; preds = %22
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %26

26:                                               ; preds = %25, %24
  br label %27

27:                                               ; preds = %26, %21
  br label %28

28:                                               ; preds = %27, %18
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %5, i32 0, i32 0
  %7 = inttoptr i64 %3 to ptr
  store ptr %7, ptr %6, align 8
  br label %8

8:                                                ; preds = %22, %4
  %.020 = phi ptr [ %1, %4 ], [ %.222, %22 ]
  %.0 = phi ptr [ %0, %4 ], [ %23, %22 ]
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %.0, ptr noundef %2)
  br i1 %9, label %.lr.ph, label %13

.lr.ph:                                           ; preds = %8
  br label %10

10:                                               ; preds = %.lr.ph, %10
  %.1 = phi ptr [ %.0, %.lr.ph ], [ %11, %10 ]
  %11 = getelementptr inbounds nuw double, ptr %.1, i32 1
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11, ptr noundef %2)
  br i1 %12, label %10, label %._crit_edge, !llvm.loop !57

._crit_edge:                                      ; preds = %10
  br label %13

13:                                               ; preds = %._crit_edge, %8
  %.2 = phi ptr [ %11, %._crit_edge ], [ %.0, %8 ]
  %14 = getelementptr inbounds double, ptr %.020, i32 -1
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %2, ptr noundef %14)
  br i1 %15, label %.lr.ph2, label %19

.lr.ph2:                                          ; preds = %13
  br label %16

16:                                               ; preds = %.lr.ph2, %16
  %.121 = phi ptr [ %14, %.lr.ph2 ], [ %17, %16 ]
  %17 = getelementptr inbounds double, ptr %.121, i32 -1
  %18 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %2, ptr noundef %17)
  br i1 %18, label %16, label %._crit_edge3, !llvm.loop !58

._crit_edge3:                                     ; preds = %16
  br label %19

19:                                               ; preds = %._crit_edge3, %13
  %.222 = phi ptr [ %17, %._crit_edge3 ], [ %14, %13 ]
  %20 = icmp ult ptr %.2, %.222
  br i1 %20, label %22, label %21

21:                                               ; preds = %19
  ret ptr %.2

22:                                               ; preds = %19
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.2, ptr noundef %.222)
  %23 = getelementptr inbounds nuw double, ptr %.2, i32 1
  br label %8, !llvm.loop !59
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
  %5 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %4, i32 0, i32 0
  %6 = inttoptr i64 %2 to ptr
  store ptr %6, ptr %5, align 8
  %7 = icmp eq ptr %0, %1
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  br label %29

9:                                                ; preds = %3
  %10 = getelementptr inbounds double, ptr %0, i64 1
  %11 = icmp ne ptr %10, %1
  br i1 %11, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %9
  br label %12

12:                                               ; preds = %.lr.ph, %26
  %.0 = phi ptr [ %10, %.lr.ph ], [ %27, %26 ]
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %.0, ptr noundef %0)
  br i1 %13, label %14, label %20

14:                                               ; preds = %12
  %15 = load double, ptr %.0, align 8
  %16 = getelementptr inbounds double, ptr %.0, i64 1
  %17 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %18 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %.0)
  %19 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %17, ptr noundef %18, ptr noundef %16)
  store double %15, ptr %0, align 8
  br label %25

20:                                               ; preds = %12
  %.sroa.0.0.copyload = load ptr, ptr %4, align 8
  %21 = ptrtoint ptr %.sroa.0.0.copyload to i64
  %22 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %21)
  %23 = inttoptr i64 %22 to ptr
  %24 = ptrtoint ptr %23 to i64
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %.0, i64 %24)
  br label %25

25:                                               ; preds = %20, %14
  br label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds nuw double, ptr %.0, i32 1
  %28 = icmp ne ptr %27, %1
  br i1 %28, label %12, label %..loopexit_crit_edge, !llvm.loop !60

..loopexit_crit_edge:                             ; preds = %26
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %9
  br label %29

29:                                               ; preds = %.loopexit, %8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %2) #0 comdat {
  %4 = inttoptr i64 %2 to ptr
  %5 = icmp ne ptr %0, %1
  br i1 %5, label %.lr.ph, label %14

.lr.ph:                                           ; preds = %3
  br label %6

6:                                                ; preds = %.lr.ph, %11
  %.0 = phi ptr [ %0, %.lr.ph ], [ %12, %11 ]
  %7 = ptrtoint ptr %4 to i64
  %8 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %7)
  %9 = inttoptr i64 %8 to ptr
  %10 = ptrtoint ptr %9 to i64
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %.0, i64 %10)
  br label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds nuw double, ptr %.0, i32 1
  %13 = icmp ne ptr %12, %1
  br i1 %13, label %6, label %._crit_edge, !llvm.loop !61

._crit_edge:                                      ; preds = %11
  br label %14

14:                                               ; preds = %._crit_edge, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %0, i64 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %4 = alloca double, align 8
  %5 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter", ptr %3, i32 0, i32 0
  %6 = inttoptr i64 %1 to ptr
  store ptr %6, ptr %5, align 8
  %7 = load double, ptr %0, align 8
  store double %7, ptr %4, align 8
  %8 = getelementptr inbounds double, ptr %0, i32 -1
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEclIdPdEEbRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8)
  br i1 %9, label %.lr.ph, label %14

.lr.ph:                                           ; preds = %2
  br label %10

10:                                               ; preds = %.lr.ph, %10
  %.010 = phi ptr [ %0, %.lr.ph ], [ %.0, %10 ]
  %.0 = phi ptr [ %8, %.lr.ph ], [ %12, %10 ]
  %11 = load double, ptr %.0, align 8
  store double %11, ptr %.010, align 8
  %12 = getelementptr inbounds double, ptr %.0, i32 -1
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEclIdPdEEbRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %12)
  br i1 %13, label %10, label %._crit_edge, !llvm.loop !62

._crit_edge:                                      ; preds = %10
  br label %14

14:                                               ; preds = %._crit_edge, %2
  %.1 = phi ptr [ %.0, %._crit_edge ], [ %0, %2 ]
  %15 = load double, ptr %4, align 8
  store double %15, ptr %.1, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %0) #0 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %4 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %3, i32 0, i32 0
  %5 = inttoptr i64 %0 to ptr
  store ptr %5, ptr %4, align 8
  call void @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %6 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter", ptr %2, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = ptrtoint ptr %7 to i64
  ret i64 %8
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
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load ptr, ptr %4, align 8
  %13 = mul i64 %8, 8
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %12, ptr align 8 %0, i64 %13, i1 false)
  br label %20

14:                                               ; preds = %3
  %15 = icmp eq i64 %8, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = load double, ptr %0, align 8
  %18 = load ptr, ptr %4, align 8
  store double %17, ptr %18, align 8
  br label %19

19:                                               ; preds = %16, %14
  br label %20

20:                                               ; preds = %19, %11
  %21 = load ptr, ptr %4, align 8
  ret ptr %21
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
  %4 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter", ptr %0, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = load double, ptr %1, align 8
  %7 = load double, ptr %2, align 8
  %8 = call noundef zeroext i1 %5(double noundef %6, double noundef %7)
  ret i1 %8
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 {
  %3 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter", ptr %0, i32 0, i32 0
  %4 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %1, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  store ptr %5, ptr %3, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEC2ES3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 {
  %3 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter", ptr %0, i32 0, i32 0
  store ptr %1, ptr %3, align 8
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
  %3 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %2, i32 0, i32 0
  %4 = load i8, ptr %3, align 1
  ret i8 %4
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i8 %3) #0 comdat {
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 8
  %9 = icmp sgt i64 %8, 16
  br i1 %9, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %10

10:                                               ; preds = %.lr.ph, %13
  %.019 = phi i64 [ %2, %.lr.ph ], [ %14, %13 ]
  %.0 = phi ptr [ %1, %.lr.ph ], [ %15, %13 ]
  %11 = icmp eq i64 %.019, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %.0, ptr noundef %.0, i8 %3)
  br label %21

13:                                               ; preds = %10
  %14 = add nsw i64 %.019, -1
  %15 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %.0, i8 %3)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %15, ptr noundef %.0, i64 noundef %14, i8 %3)
  %16 = ptrtoint ptr %15 to i64
  %17 = ptrtoint ptr %0 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 8
  %20 = icmp sgt i64 %19, 16
  br i1 %20, label %10, label %..loopexit_crit_edge, !llvm.loop !63

..loopexit_crit_edge:                             ; preds = %13
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %21

21:                                               ; preds = %.loopexit, %12
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = sdiv exact i64 %6, 8
  %8 = icmp sgt i64 %7, 16
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = getelementptr inbounds double, ptr %0, i64 16
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %10, i8 %2)
  %11 = getelementptr inbounds double, ptr %0, i64 16
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %11, ptr noundef %1, i8 %2)
  br label %13

12:                                               ; preds = %3
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2)
  br label %13

13:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %6 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %5, i32 0, i32 0
  store i8 %3, ptr %6, align 1
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
  %12 = getelementptr inbounds double, ptr %0, i64 1
  %13 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_S6_T0_(ptr noundef %12, ptr noundef %1, ptr noundef %0, i8 %2)
  ret ptr %13
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %6 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %5, i32 0, i32 0
  store i8 %3, ptr %6, align 1
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %7 = icmp ult ptr %1, %2
  br i1 %7, label %.lr.ph, label %15

.lr.ph:                                           ; preds = %4
  br label %8

8:                                                ; preds = %.lr.ph, %12
  %.0 = phi ptr [ %1, %.lr.ph ], [ %13, %12 ]
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.0, ptr noundef %0)
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %.0, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %11

11:                                               ; preds = %10, %8
  br label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds nuw double, ptr %.0, i32 1
  %14 = icmp ult ptr %13, %2
  br i1 %14, label %8, label %._crit_edge, !llvm.loop !64

._crit_edge:                                      ; preds = %12
  br label %15

15:                                               ; preds = %._crit_edge, %4
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = sdiv exact i64 %6, 8
  %8 = icmp sgt i64 %7, 1
  br i1 %8, label %.lr.ph, label %16

.lr.ph:                                           ; preds = %3
  br label %9

9:                                                ; preds = %.lr.ph, %9
  %.0 = phi ptr [ %1, %.lr.ph ], [ %10, %9 ]
  %10 = getelementptr inbounds double, ptr %.0, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %10, ptr noundef %10, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %11 = ptrtoint ptr %10 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = icmp sgt i64 %14, 1
  br i1 %15, label %9, label %._crit_edge, !llvm.loop !65

._crit_edge:                                      ; preds = %9
  br label %16

16:                                               ; preds = %._crit_edge, %3
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
  br label %24

10:                                               ; preds = %3
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = sub nsw i64 %14, 2
  %16 = sdiv i64 %15, 2
  br label %17

17:                                               ; preds = %22, %10
  %.0 = phi i64 [ %16, %10 ], [ %23, %22 ]
  %18 = getelementptr inbounds double, ptr %0, i64 %.0
  %19 = load double, ptr %18, align 8
  %.sroa.0.0.copyload = load i8, ptr %2, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %.0, i64 noundef %14, double noundef %19, i8 %.sroa.0.0.copyload)
  %20 = icmp eq i64 %.0, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %24

22:                                               ; preds = %17
  %23 = add nsw i64 %.0, -1
  br label %17, !llvm.loop !66

24:                                               ; preds = %21, %9
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
  %8 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %6, i32 0, i32 0
  store i8 %4, ptr %8, align 1
  %9 = sub nsw i64 %2, 1
  %10 = sdiv i64 %9, 2
  %11 = icmp slt i64 %1, %10
  br i1 %11, label %.lr.ph, label %28

.lr.ph:                                           ; preds = %5
  br label %12

12:                                               ; preds = %.lr.ph, %21
  %.029 = phi i64 [ %1, %.lr.ph ], [ %.2, %21 ]
  %.0 = phi i64 [ %1, %.lr.ph ], [ %.2, %21 ]
  %13 = add nsw i64 %.0, 1
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
  %.2 = phi i64 [ %20, %19 ], [ %14, %12 ]
  %22 = getelementptr inbounds double, ptr %0, i64 %.2
  %23 = load double, ptr %22, align 8
  %24 = getelementptr inbounds double, ptr %0, i64 %.029
  store double %23, ptr %24, align 8
  %25 = sub nsw i64 %2, 1
  %26 = sdiv i64 %25, 2
  %27 = icmp slt i64 %.2, %26
  br i1 %27, label %12, label %._crit_edge, !llvm.loop !67

._crit_edge:                                      ; preds = %21
  br label %28

28:                                               ; preds = %._crit_edge, %5
  %.130 = phi i64 [ %.2, %._crit_edge ], [ %1, %5 ]
  %.1 = phi i64 [ %.2, %._crit_edge ], [ %1, %5 ]
  %29 = and i64 %2, 1
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = sub nsw i64 %2, 2
  %33 = sdiv i64 %32, 2
  %34 = icmp eq i64 %.1, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = add nsw i64 %.1, 1
  %37 = mul nsw i64 2, %36
  %38 = sub nsw i64 %37, 1
  %39 = getelementptr inbounds double, ptr %0, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = getelementptr inbounds double, ptr %0, i64 %.130
  store double %40, ptr %41, align 8
  %42 = sub nsw i64 %37, 1
  br label %43

43:                                               ; preds = %35, %31, %28
  %.231 = phi i64 [ %42, %35 ], [ %.130, %31 ], [ %.130, %28 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %0, i64 noundef %.231, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %7)
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
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %6, i32 0, i32 0
  store i8 %4, ptr %7, align 1
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %2)
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %17

12:                                               ; preds = %9
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
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
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %26

21:                                               ; preds = %18
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
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

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #5 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %6 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %5, i32 0, i32 0
  store i8 %3, ptr %6, align 1
  br label %7

7:                                                ; preds = %21, %4
  %.020 = phi ptr [ %1, %4 ], [ %.222, %21 ]
  %.0 = phi ptr [ %0, %4 ], [ %22, %21 ]
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.0, ptr noundef %2)
  br i1 %8, label %.lr.ph, label %12

.lr.ph:                                           ; preds = %7
  br label %9

9:                                                ; preds = %.lr.ph, %9
  %.1 = phi ptr [ %.0, %.lr.ph ], [ %10, %9 ]
  %10 = getelementptr inbounds nuw double, ptr %.1, i32 1
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %10, ptr noundef %2)
  br i1 %11, label %9, label %._crit_edge, !llvm.loop !69

._crit_edge:                                      ; preds = %9
  br label %12

12:                                               ; preds = %._crit_edge, %7
  %.2 = phi ptr [ %10, %._crit_edge ], [ %.0, %7 ]
  %13 = getelementptr inbounds double, ptr %.020, i32 -1
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %13)
  br i1 %14, label %.lr.ph2, label %18

.lr.ph2:                                          ; preds = %12
  br label %15

15:                                               ; preds = %.lr.ph2, %15
  %.121 = phi ptr [ %13, %.lr.ph2 ], [ %16, %15 ]
  %16 = getelementptr inbounds double, ptr %.121, i32 -1
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %16)
  br i1 %17, label %15, label %._crit_edge3, !llvm.loop !70

._crit_edge3:                                     ; preds = %15
  br label %18

18:                                               ; preds = %._crit_edge3, %12
  %.222 = phi ptr [ %16, %._crit_edge3 ], [ %13, %12 ]
  %19 = icmp ult ptr %.2, %.222
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  ret ptr %.2

21:                                               ; preds = %18
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.2, ptr noundef %.222)
  %22 = getelementptr inbounds nuw double, ptr %.2, i32 1
  br label %7, !llvm.loop !71
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %5 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %4, i32 0, i32 0
  store i8 %2, ptr %5, align 1
  %6 = icmp eq ptr %0, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  br label %25

8:                                                ; preds = %3
  %9 = getelementptr inbounds double, ptr %0, i64 1
  %10 = icmp ne ptr %9, %1
  br i1 %10, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %8
  br label %11

11:                                               ; preds = %.lr.ph, %22
  %.0 = phi ptr [ %9, %.lr.ph ], [ %23, %22 ]
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
  br label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds nuw double, ptr %.0, i32 1
  %24 = icmp ne ptr %23, %1
  br i1 %24, label %11, label %..loopexit_crit_edge, !llvm.loop !72

..loopexit_crit_edge:                             ; preds = %22
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %8
  br label %25

25:                                               ; preds = %.loopexit, %7
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = icmp ne ptr %0, %1
  br i1 %4, label %.lr.ph, label %10

.lr.ph:                                           ; preds = %3
  br label %5

5:                                                ; preds = %.lr.ph, %7
  %.0 = phi ptr [ %0, %.lr.ph ], [ %8, %7 ]
  %6 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %2)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %.0, i8 %6)
  br label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds nuw double, ptr %.0, i32 1
  %9 = icmp ne ptr %8, %1
  br i1 %9, label %5, label %._crit_edge, !llvm.loop !73

._crit_edge:                                      ; preds = %7
  br label %10

10:                                               ; preds = %._crit_edge, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %0, i8 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", align 1
  %4 = alloca double, align 8
  %5 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", ptr %3, i32 0, i32 0
  store i8 %1, ptr %5, align 1
  %6 = load double, ptr %0, align 8
  store double %6, ptr %4, align 8
  %7 = getelementptr inbounds double, ptr %0, i32 -1
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %7)
  br i1 %8, label %.lr.ph, label %13

.lr.ph:                                           ; preds = %2
  br label %9

9:                                                ; preds = %.lr.ph, %9
  %.010 = phi ptr [ %0, %.lr.ph ], [ %.0, %9 ]
  %.0 = phi ptr [ %7, %.lr.ph ], [ %11, %9 ]
  %10 = load double, ptr %.0, align 8
  store double %10, ptr %.010, align 8
  %11 = getelementptr inbounds double, ptr %.0, i32 -1
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %11)
  br i1 %12, label %9, label %._crit_edge, !llvm.loop !74

._crit_edge:                                      ; preds = %9
  br label %13

13:                                               ; preds = %._crit_edge, %2
  %.1 = phi ptr [ %.0, %._crit_edge ], [ %0, %2 ]
  %14 = load double, ptr %4, align 8
  store double %14, ptr %.1, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %0) #0 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", align 1
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %4 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", ptr %3, i32 0, i32 0
  store i8 %0, ptr %4, align 1
  call void @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %5 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", ptr %2, i32 0, i32 0
  %6 = load i8, ptr %5, align 1
  ret i8 %6
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
  %8 = select i1 %6, i1 true, i1 false
  ret i1 %8
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
  %3 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %2, i32 0, i32 0
  %4 = load i8, ptr %3, align 1
  ret i8 %4
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i8 %3) #0 comdat {
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 8
  %9 = icmp sgt i64 %8, 16
  br i1 %9, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %10

10:                                               ; preds = %.lr.ph, %13
  %.019 = phi i64 [ %2, %.lr.ph ], [ %14, %13 ]
  %.0 = phi ptr [ %1, %.lr.ph ], [ %15, %13 ]
  %11 = icmp eq i64 %.019, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %.0, ptr noundef %.0, i8 %3)
  br label %21

13:                                               ; preds = %10
  %14 = add nsw i64 %.019, -1
  %15 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %.0, i8 %3)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %15, ptr noundef %.0, i64 noundef %14, i8 %3)
  %16 = ptrtoint ptr %15 to i64
  %17 = ptrtoint ptr %0 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 8
  %20 = icmp sgt i64 %19, 16
  br i1 %20, label %10, label %..loopexit_crit_edge, !llvm.loop !75

..loopexit_crit_edge:                             ; preds = %13
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %21

21:                                               ; preds = %.loopexit, %12
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = sdiv exact i64 %6, 8
  %8 = icmp sgt i64 %7, 16
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = getelementptr inbounds double, ptr %0, i64 16
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %10, i8 %2)
  %11 = getelementptr inbounds double, ptr %0, i64 16
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %11, ptr noundef %1, i8 %2)
  br label %13

12:                                               ; preds = %3
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2)
  br label %13

13:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %6 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %5, i32 0, i32 0
  store i8 %3, ptr %6, align 1
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
  %12 = getelementptr inbounds double, ptr %0, i64 1
  %13 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_S6_T0_(ptr noundef %12, ptr noundef %1, ptr noundef %0, i8 %2)
  ret ptr %13
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %6 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %5, i32 0, i32 0
  store i8 %3, ptr %6, align 1
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %7 = icmp ult ptr %1, %2
  br i1 %7, label %.lr.ph, label %15

.lr.ph:                                           ; preds = %4
  br label %8

8:                                                ; preds = %.lr.ph, %12
  %.0 = phi ptr [ %1, %.lr.ph ], [ %13, %12 ]
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.0, ptr noundef %0)
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %.0, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %11

11:                                               ; preds = %10, %8
  br label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds nuw double, ptr %.0, i32 1
  %14 = icmp ult ptr %13, %2
  br i1 %14, label %8, label %._crit_edge, !llvm.loop !76

._crit_edge:                                      ; preds = %12
  br label %15

15:                                               ; preds = %._crit_edge, %4
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = sdiv exact i64 %6, 8
  %8 = icmp sgt i64 %7, 1
  br i1 %8, label %.lr.ph, label %16

.lr.ph:                                           ; preds = %3
  br label %9

9:                                                ; preds = %.lr.ph, %9
  %.0 = phi ptr [ %1, %.lr.ph ], [ %10, %9 ]
  %10 = getelementptr inbounds double, ptr %.0, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %10, ptr noundef %10, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %11 = ptrtoint ptr %10 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = icmp sgt i64 %14, 1
  br i1 %15, label %9, label %._crit_edge, !llvm.loop !77

._crit_edge:                                      ; preds = %9
  br label %16

16:                                               ; preds = %._crit_edge, %3
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
  br label %24

10:                                               ; preds = %3
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = sub nsw i64 %14, 2
  %16 = sdiv i64 %15, 2
  br label %17

17:                                               ; preds = %22, %10
  %.0 = phi i64 [ %16, %10 ], [ %23, %22 ]
  %18 = getelementptr inbounds double, ptr %0, i64 %.0
  %19 = load double, ptr %18, align 8
  %.sroa.0.0.copyload = load i8, ptr %2, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %.0, i64 noundef %14, double noundef %19, i8 %.sroa.0.0.copyload)
  %20 = icmp eq i64 %.0, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %24

22:                                               ; preds = %17
  %23 = add nsw i64 %.0, -1
  br label %17, !llvm.loop !78

24:                                               ; preds = %21, %9
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
  %8 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %6, i32 0, i32 0
  store i8 %4, ptr %8, align 1
  %9 = sub nsw i64 %2, 1
  %10 = sdiv i64 %9, 2
  %11 = icmp slt i64 %1, %10
  br i1 %11, label %.lr.ph, label %28

.lr.ph:                                           ; preds = %5
  br label %12

12:                                               ; preds = %.lr.ph, %21
  %.029 = phi i64 [ %1, %.lr.ph ], [ %.2, %21 ]
  %.0 = phi i64 [ %1, %.lr.ph ], [ %.2, %21 ]
  %13 = add nsw i64 %.0, 1
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
  %.2 = phi i64 [ %20, %19 ], [ %14, %12 ]
  %22 = getelementptr inbounds double, ptr %0, i64 %.2
  %23 = load double, ptr %22, align 8
  %24 = getelementptr inbounds double, ptr %0, i64 %.029
  store double %23, ptr %24, align 8
  %25 = sub nsw i64 %2, 1
  %26 = sdiv i64 %25, 2
  %27 = icmp slt i64 %.2, %26
  br i1 %27, label %12, label %._crit_edge, !llvm.loop !79

._crit_edge:                                      ; preds = %21
  br label %28

28:                                               ; preds = %._crit_edge, %5
  %.130 = phi i64 [ %.2, %._crit_edge ], [ %1, %5 ]
  %.1 = phi i64 [ %.2, %._crit_edge ], [ %1, %5 ]
  %29 = and i64 %2, 1
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = sub nsw i64 %2, 2
  %33 = sdiv i64 %32, 2
  %34 = icmp eq i64 %.1, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = add nsw i64 %.1, 1
  %37 = mul nsw i64 2, %36
  %38 = sub nsw i64 %37, 1
  %39 = getelementptr inbounds double, ptr %0, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = getelementptr inbounds double, ptr %0, i64 %.130
  store double %40, ptr %41, align 8
  %42 = sub nsw i64 %37, 1
  br label %43

43:                                               ; preds = %35, %31, %28
  %.231 = phi i64 [ %42, %35 ], [ %.130, %31 ], [ %.130, %28 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %0, i64 noundef %.231, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %7)
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
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %6, i32 0, i32 0
  store i8 %4, ptr %7, align 1
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %2)
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %17

12:                                               ; preds = %9
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
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
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %26

21:                                               ; preds = %18
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
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

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #5 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %6 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %5, i32 0, i32 0
  store i8 %3, ptr %6, align 1
  br label %7

7:                                                ; preds = %21, %4
  %.020 = phi ptr [ %1, %4 ], [ %.222, %21 ]
  %.0 = phi ptr [ %0, %4 ], [ %22, %21 ]
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.0, ptr noundef %2)
  br i1 %8, label %.lr.ph, label %12

.lr.ph:                                           ; preds = %7
  br label %9

9:                                                ; preds = %.lr.ph, %9
  %.1 = phi ptr [ %.0, %.lr.ph ], [ %10, %9 ]
  %10 = getelementptr inbounds nuw double, ptr %.1, i32 1
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %10, ptr noundef %2)
  br i1 %11, label %9, label %._crit_edge, !llvm.loop !81

._crit_edge:                                      ; preds = %9
  br label %12

12:                                               ; preds = %._crit_edge, %7
  %.2 = phi ptr [ %10, %._crit_edge ], [ %.0, %7 ]
  %13 = getelementptr inbounds double, ptr %.020, i32 -1
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %13)
  br i1 %14, label %.lr.ph2, label %18

.lr.ph2:                                          ; preds = %12
  br label %15

15:                                               ; preds = %.lr.ph2, %15
  %.121 = phi ptr [ %13, %.lr.ph2 ], [ %16, %15 ]
  %16 = getelementptr inbounds double, ptr %.121, i32 -1
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %16)
  br i1 %17, label %15, label %._crit_edge3, !llvm.loop !82

._crit_edge3:                                     ; preds = %15
  br label %18

18:                                               ; preds = %._crit_edge3, %12
  %.222 = phi ptr [ %16, %._crit_edge3 ], [ %13, %12 ]
  %19 = icmp ult ptr %.2, %.222
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  ret ptr %.2

21:                                               ; preds = %18
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.2, ptr noundef %.222)
  %22 = getelementptr inbounds nuw double, ptr %.2, i32 1
  br label %7, !llvm.loop !83
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %5 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %4, i32 0, i32 0
  store i8 %2, ptr %5, align 1
  %6 = icmp eq ptr %0, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  br label %25

8:                                                ; preds = %3
  %9 = getelementptr inbounds double, ptr %0, i64 1
  %10 = icmp ne ptr %9, %1
  br i1 %10, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %8
  br label %11

11:                                               ; preds = %.lr.ph, %22
  %.0 = phi ptr [ %9, %.lr.ph ], [ %23, %22 ]
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
  br label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds nuw double, ptr %.0, i32 1
  %24 = icmp ne ptr %23, %1
  br i1 %24, label %11, label %..loopexit_crit_edge, !llvm.loop !84

..loopexit_crit_edge:                             ; preds = %22
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %8
  br label %25

25:                                               ; preds = %.loopexit, %7
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = icmp ne ptr %0, %1
  br i1 %4, label %.lr.ph, label %10

.lr.ph:                                           ; preds = %3
  br label %5

5:                                                ; preds = %.lr.ph, %7
  %.0 = phi ptr [ %0, %.lr.ph ], [ %8, %7 ]
  %6 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %2)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %.0, i8 %6)
  br label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds nuw double, ptr %.0, i32 1
  %9 = icmp ne ptr %8, %1
  br i1 %9, label %5, label %._crit_edge, !llvm.loop !85

._crit_edge:                                      ; preds = %7
  br label %10

10:                                               ; preds = %._crit_edge, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %0, i8 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", align 1
  %4 = alloca double, align 8
  %5 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", ptr %3, i32 0, i32 0
  store i8 %1, ptr %5, align 1
  %6 = load double, ptr %0, align 8
  store double %6, ptr %4, align 8
  %7 = getelementptr inbounds double, ptr %0, i32 -1
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %7)
  br i1 %8, label %.lr.ph, label %13

.lr.ph:                                           ; preds = %2
  br label %9

9:                                                ; preds = %.lr.ph, %9
  %.010 = phi ptr [ %0, %.lr.ph ], [ %.0, %9 ]
  %.0 = phi ptr [ %7, %.lr.ph ], [ %11, %9 ]
  %10 = load double, ptr %.0, align 8
  store double %10, ptr %.010, align 8
  %11 = getelementptr inbounds double, ptr %.0, i32 -1
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %11)
  br i1 %12, label %9, label %._crit_edge, !llvm.loop !86

._crit_edge:                                      ; preds = %9
  br label %13

13:                                               ; preds = %._crit_edge, %2
  %.1 = phi ptr [ %.0, %._crit_edge ], [ %0, %2 ]
  %14 = load double, ptr %4, align 8
  store double %14, ptr %.1, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %0) #0 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", align 1
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %4 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", ptr %3, i32 0, i32 0
  store i8 %0, ptr %4, align 1
  call void @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %5 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", ptr %2, i32 0, i32 0
  %6 = load i8, ptr %5, align 1
  ret i8 %6
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
  %3 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %2, i32 0, i32 0
  %4 = load i8, ptr %3, align 1
  ret i8 %4
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i8 %3) #0 comdat {
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 8
  %9 = icmp sgt i64 %8, 16
  br i1 %9, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %10

10:                                               ; preds = %.lr.ph, %13
  %.019 = phi i64 [ %2, %.lr.ph ], [ %14, %13 ]
  %.0 = phi ptr [ %1, %.lr.ph ], [ %15, %13 ]
  %11 = icmp eq i64 %.019, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %.0, ptr noundef %.0, i8 %3)
  br label %21

13:                                               ; preds = %10
  %14 = add nsw i64 %.019, -1
  %15 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %.0, i8 %3)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %15, ptr noundef %.0, i64 noundef %14, i8 %3)
  %16 = ptrtoint ptr %15 to i64
  %17 = ptrtoint ptr %0 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 8
  %20 = icmp sgt i64 %19, 16
  br i1 %20, label %10, label %..loopexit_crit_edge, !llvm.loop !87

..loopexit_crit_edge:                             ; preds = %13
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %21

21:                                               ; preds = %.loopexit, %12
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = sdiv exact i64 %6, 8
  %8 = icmp sgt i64 %7, 16
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = getelementptr inbounds double, ptr %0, i64 16
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %10, i8 %2)
  %11 = getelementptr inbounds double, ptr %0, i64 16
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %11, ptr noundef %1, i8 %2)
  br label %13

12:                                               ; preds = %3
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2)
  br label %13

13:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %6 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %5, i32 0, i32 0
  store i8 %3, ptr %6, align 1
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
  %12 = getelementptr inbounds double, ptr %0, i64 1
  %13 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_S7_T0_(ptr noundef %12, ptr noundef %1, ptr noundef %0, i8 %2)
  ret ptr %13
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %6 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %5, i32 0, i32 0
  store i8 %3, ptr %6, align 1
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %7 = icmp ult ptr %1, %2
  br i1 %7, label %.lr.ph, label %15

.lr.ph:                                           ; preds = %4
  br label %8

8:                                                ; preds = %.lr.ph, %12
  %.0 = phi ptr [ %1, %.lr.ph ], [ %13, %12 ]
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.0, ptr noundef %0)
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %.0, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %11

11:                                               ; preds = %10, %8
  br label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds nuw double, ptr %.0, i32 1
  %14 = icmp ult ptr %13, %2
  br i1 %14, label %8, label %._crit_edge, !llvm.loop !88

._crit_edge:                                      ; preds = %12
  br label %15

15:                                               ; preds = %._crit_edge, %4
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = sdiv exact i64 %6, 8
  %8 = icmp sgt i64 %7, 1
  br i1 %8, label %.lr.ph, label %16

.lr.ph:                                           ; preds = %3
  br label %9

9:                                                ; preds = %.lr.ph, %9
  %.0 = phi ptr [ %1, %.lr.ph ], [ %10, %9 ]
  %10 = getelementptr inbounds double, ptr %.0, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %10, ptr noundef %10, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %11 = ptrtoint ptr %10 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = icmp sgt i64 %14, 1
  br i1 %15, label %9, label %._crit_edge, !llvm.loop !89

._crit_edge:                                      ; preds = %9
  br label %16

16:                                               ; preds = %._crit_edge, %3
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
  br label %24

10:                                               ; preds = %3
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = sub nsw i64 %14, 2
  %16 = sdiv i64 %15, 2
  br label %17

17:                                               ; preds = %22, %10
  %.0 = phi i64 [ %16, %10 ], [ %23, %22 ]
  %18 = getelementptr inbounds double, ptr %0, i64 %.0
  %19 = load double, ptr %18, align 8
  %.sroa.0.0.copyload = load i8, ptr %2, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %.0, i64 noundef %14, double noundef %19, i8 %.sroa.0.0.copyload)
  %20 = icmp eq i64 %.0, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %24

22:                                               ; preds = %17
  %23 = add nsw i64 %.0, -1
  br label %17, !llvm.loop !90

24:                                               ; preds = %21, %9
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
  %8 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %6, i32 0, i32 0
  store i8 %4, ptr %8, align 1
  %9 = sub nsw i64 %2, 1
  %10 = sdiv i64 %9, 2
  %11 = icmp slt i64 %1, %10
  br i1 %11, label %.lr.ph, label %28

.lr.ph:                                           ; preds = %5
  br label %12

12:                                               ; preds = %.lr.ph, %21
  %.029 = phi i64 [ %1, %.lr.ph ], [ %.2, %21 ]
  %.0 = phi i64 [ %1, %.lr.ph ], [ %.2, %21 ]
  %13 = add nsw i64 %.0, 1
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
  %.2 = phi i64 [ %20, %19 ], [ %14, %12 ]
  %22 = getelementptr inbounds double, ptr %0, i64 %.2
  %23 = load double, ptr %22, align 8
  %24 = getelementptr inbounds double, ptr %0, i64 %.029
  store double %23, ptr %24, align 8
  %25 = sub nsw i64 %2, 1
  %26 = sdiv i64 %25, 2
  %27 = icmp slt i64 %.2, %26
  br i1 %27, label %12, label %._crit_edge, !llvm.loop !91

._crit_edge:                                      ; preds = %21
  br label %28

28:                                               ; preds = %._crit_edge, %5
  %.130 = phi i64 [ %.2, %._crit_edge ], [ %1, %5 ]
  %.1 = phi i64 [ %.2, %._crit_edge ], [ %1, %5 ]
  %29 = and i64 %2, 1
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = sub nsw i64 %2, 2
  %33 = sdiv i64 %32, 2
  %34 = icmp eq i64 %.1, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = add nsw i64 %.1, 1
  %37 = mul nsw i64 2, %36
  %38 = sub nsw i64 %37, 1
  %39 = getelementptr inbounds double, ptr %0, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = getelementptr inbounds double, ptr %0, i64 %.130
  store double %40, ptr %41, align 8
  %42 = sub nsw i64 %37, 1
  br label %43

43:                                               ; preds = %35, %31, %28
  %.231 = phi i64 [ %42, %35 ], [ %.130, %31 ], [ %.130, %28 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEEEvT_T0_S8_T1_RT2_(ptr noundef %0, i64 noundef %.231, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %7)
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
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %6, i32 0, i32 0
  store i8 %4, ptr %7, align 1
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %2)
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %17

12:                                               ; preds = %9
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
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
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %26

21:                                               ; preds = %18
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
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

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #5 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %6 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %5, i32 0, i32 0
  store i8 %3, ptr %6, align 1
  br label %7

7:                                                ; preds = %21, %4
  %.020 = phi ptr [ %1, %4 ], [ %.222, %21 ]
  %.0 = phi ptr [ %0, %4 ], [ %22, %21 ]
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.0, ptr noundef %2)
  br i1 %8, label %.lr.ph, label %12

.lr.ph:                                           ; preds = %7
  br label %9

9:                                                ; preds = %.lr.ph, %9
  %.1 = phi ptr [ %.0, %.lr.ph ], [ %10, %9 ]
  %10 = getelementptr inbounds nuw double, ptr %.1, i32 1
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %10, ptr noundef %2)
  br i1 %11, label %9, label %._crit_edge, !llvm.loop !93

._crit_edge:                                      ; preds = %9
  br label %12

12:                                               ; preds = %._crit_edge, %7
  %.2 = phi ptr [ %10, %._crit_edge ], [ %.0, %7 ]
  %13 = getelementptr inbounds double, ptr %.020, i32 -1
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %13)
  br i1 %14, label %.lr.ph2, label %18

.lr.ph2:                                          ; preds = %12
  br label %15

15:                                               ; preds = %.lr.ph2, %15
  %.121 = phi ptr [ %13, %.lr.ph2 ], [ %16, %15 ]
  %16 = getelementptr inbounds double, ptr %.121, i32 -1
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %16)
  br i1 %17, label %15, label %._crit_edge3, !llvm.loop !94

._crit_edge3:                                     ; preds = %15
  br label %18

18:                                               ; preds = %._crit_edge3, %12
  %.222 = phi ptr [ %16, %._crit_edge3 ], [ %13, %12 ]
  %19 = icmp ult ptr %.2, %.222
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  ret ptr %.2

21:                                               ; preds = %18
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.2, ptr noundef %.222)
  %22 = getelementptr inbounds nuw double, ptr %.2, i32 1
  br label %7, !llvm.loop !95
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %5 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %4, i32 0, i32 0
  store i8 %2, ptr %5, align 1
  %6 = icmp eq ptr %0, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  br label %25

8:                                                ; preds = %3
  %9 = getelementptr inbounds double, ptr %0, i64 1
  %10 = icmp ne ptr %9, %1
  br i1 %10, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %8
  br label %11

11:                                               ; preds = %.lr.ph, %22
  %.0 = phi ptr [ %9, %.lr.ph ], [ %23, %22 ]
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
  br label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds nuw double, ptr %.0, i32 1
  %24 = icmp ne ptr %23, %1
  br i1 %24, label %11, label %..loopexit_crit_edge, !llvm.loop !96

..loopexit_crit_edge:                             ; preds = %22
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %8
  br label %25

25:                                               ; preds = %.loopexit, %7
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = icmp ne ptr %0, %1
  br i1 %4, label %.lr.ph, label %10

.lr.ph:                                           ; preds = %3
  br label %5

5:                                                ; preds = %.lr.ph, %7
  %.0 = phi ptr [ %0, %.lr.ph ], [ %8, %7 ]
  %6 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %2)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %.0, i8 %6)
  br label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds nuw double, ptr %.0, i32 1
  %9 = icmp ne ptr %8, %1
  br i1 %9, label %5, label %._crit_edge, !llvm.loop !97

._crit_edge:                                      ; preds = %7
  br label %10

10:                                               ; preds = %._crit_edge, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %0, i8 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", align 1
  %4 = alloca double, align 8
  %5 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", ptr %3, i32 0, i32 0
  store i8 %1, ptr %5, align 1
  %6 = load double, ptr %0, align 8
  store double %6, ptr %4, align 8
  %7 = getelementptr inbounds double, ptr %0, i32 -1
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %7)
  br i1 %8, label %.lr.ph, label %13

.lr.ph:                                           ; preds = %2
  br label %9

9:                                                ; preds = %.lr.ph, %9
  %.010 = phi ptr [ %0, %.lr.ph ], [ %.0, %9 ]
  %.0 = phi ptr [ %7, %.lr.ph ], [ %11, %9 ]
  %10 = load double, ptr %.0, align 8
  store double %10, ptr %.010, align 8
  %11 = getelementptr inbounds double, ptr %.0, i32 -1
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %11)
  br i1 %12, label %9, label %._crit_edge, !llvm.loop !98

._crit_edge:                                      ; preds = %9
  br label %13

13:                                               ; preds = %._crit_edge, %2
  %.1 = phi ptr [ %.0, %._crit_edge ], [ %0, %2 ]
  %14 = load double, ptr %4, align 8
  store double %14, ptr %.1, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %0) #0 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", align 1
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %4 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", ptr %3, i32 0, i32 0
  store i8 %0, ptr %4, align 1
  call void @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %5 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", ptr %2, i32 0, i32 0
  %6 = load i8, ptr %5, align 1
  ret i8 %6
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
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 8
  %9 = icmp sgt i64 %8, 16
  br i1 %9, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %10

10:                                               ; preds = %.lr.ph, %13
  %.017 = phi i64 [ %2, %.lr.ph ], [ %14, %13 ]
  %.0 = phi ptr [ %1, %.lr.ph ], [ %15, %13 ]
  %11 = icmp eq i64 %.017, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %.0, ptr noundef %.0, i8 undef)
  br label %21

13:                                               ; preds = %10
  %14 = add nsw i64 %.017, -1
  %15 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(ptr noundef %0, ptr noundef %.0, i8 undef)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %15, ptr noundef %.0, i64 noundef %14, i8 undef)
  %16 = ptrtoint ptr %15 to i64
  %17 = ptrtoint ptr %0 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 8
  %20 = icmp sgt i64 %19, 16
  br i1 %20, label %10, label %..loopexit_crit_edge, !llvm.loop !99

..loopexit_crit_edge:                             ; preds = %13
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %21

21:                                               ; preds = %.loopexit, %12
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = sdiv exact i64 %6, 8
  %8 = icmp sgt i64 %7, 16
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = getelementptr inbounds double, ptr %0, i64 16
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %10, i8 undef)
  %11 = getelementptr inbounds double, ptr %0, i64 16
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %11, ptr noundef %1, i8 undef)
  br label %13

12:                                               ; preds = %3
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 undef)
  br label %13

13:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %6 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %5, i32 0, i32 0
  store i8 %3, ptr %6, align 1
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
  %12 = getelementptr inbounds double, ptr %0, i64 1
  %13 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_(ptr noundef %12, ptr noundef %1, ptr noundef %0, i8 undef)
  ret ptr %13
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %6 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %5, i32 0, i32 0
  store i8 %3, ptr %6, align 1
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %7 = icmp ult ptr %1, %2
  br i1 %7, label %.lr.ph, label %15

.lr.ph:                                           ; preds = %4
  br label %8

8:                                                ; preds = %.lr.ph, %12
  %.0 = phi ptr [ %1, %.lr.ph ], [ %13, %12 ]
  %9 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.0, ptr noundef %0)
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %.0, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %11

11:                                               ; preds = %10, %8
  br label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds nuw double, ptr %.0, i32 1
  %14 = icmp ult ptr %13, %2
  br i1 %14, label %8, label %._crit_edge, !llvm.loop !100

._crit_edge:                                      ; preds = %12
  br label %15

15:                                               ; preds = %._crit_edge, %4
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = sdiv exact i64 %6, 8
  %8 = icmp sgt i64 %7, 1
  br i1 %8, label %.lr.ph, label %16

.lr.ph:                                           ; preds = %3
  br label %9

9:                                                ; preds = %.lr.ph, %9
  %.0 = phi ptr [ %1, %.lr.ph ], [ %10, %9 ]
  %10 = getelementptr inbounds double, ptr %.0, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %0, ptr noundef %10, ptr noundef %10, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %11 = ptrtoint ptr %10 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = icmp sgt i64 %14, 1
  br i1 %15, label %9, label %._crit_edge, !llvm.loop !101

._crit_edge:                                      ; preds = %9
  br label %16

16:                                               ; preds = %._crit_edge, %3
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
  br label %24

10:                                               ; preds = %3
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = sub nsw i64 %14, 2
  %16 = sdiv i64 %15, 2
  br label %17

17:                                               ; preds = %22, %10
  %.0 = phi i64 [ %16, %10 ], [ %23, %22 ]
  %18 = getelementptr inbounds double, ptr %0, i64 %.0
  %19 = load double, ptr %18, align 8
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %0, i64 noundef %.0, i64 noundef %14, double noundef %19, i8 undef)
  %20 = icmp eq i64 %.0, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %24

22:                                               ; preds = %17
  %23 = add nsw i64 %.0, -1
  br label %17, !llvm.loop !102

24:                                               ; preds = %21, %9
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
  %8 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %6, i32 0, i32 0
  store i8 %4, ptr %8, align 1
  %9 = sub nsw i64 %2, 1
  %10 = sdiv i64 %9, 2
  %11 = icmp slt i64 %1, %10
  br i1 %11, label %.lr.ph, label %28

.lr.ph:                                           ; preds = %5
  br label %12

12:                                               ; preds = %.lr.ph, %21
  %.029 = phi i64 [ %1, %.lr.ph ], [ %.231, %21 ]
  %.0 = phi i64 [ %1, %.lr.ph ], [ %.231, %21 ]
  %13 = add nsw i64 %.029, 1
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
  %.231 = phi i64 [ %20, %19 ], [ %14, %12 ]
  %22 = getelementptr inbounds double, ptr %0, i64 %.231
  %23 = load double, ptr %22, align 8
  %24 = getelementptr inbounds double, ptr %0, i64 %.0
  store double %23, ptr %24, align 8
  %25 = sub nsw i64 %2, 1
  %26 = sdiv i64 %25, 2
  %27 = icmp slt i64 %.231, %26
  br i1 %27, label %12, label %._crit_edge, !llvm.loop !103

._crit_edge:                                      ; preds = %21
  br label %28

28:                                               ; preds = %._crit_edge, %5
  %.130 = phi i64 [ %.231, %._crit_edge ], [ %1, %5 ]
  %.1 = phi i64 [ %.231, %._crit_edge ], [ %1, %5 ]
  %29 = and i64 %2, 1
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = sub nsw i64 %2, 2
  %33 = sdiv i64 %32, 2
  %34 = icmp eq i64 %.130, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = add nsw i64 %.130, 1
  %37 = mul nsw i64 2, %36
  %38 = sub nsw i64 %37, 1
  %39 = getelementptr inbounds double, ptr %0, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = getelementptr inbounds double, ptr %0, i64 %.1
  store double %40, ptr %41, align 8
  %42 = sub nsw i64 %37, 1
  br label %43

43:                                               ; preds = %35, %31, %28
  %.2 = phi i64 [ %42, %35 ], [ %.1, %31 ], [ %.1, %28 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(ptr noundef nonnull align 1 dereferenceable(1) %7, i8 undef)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_(ptr noundef %0, i64 noundef %.2, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %7)
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
  %7 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %6, i32 0, i32 0
  store i8 %4, ptr %7, align 1
  %8 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %2)
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %17

12:                                               ; preds = %9
  %13 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
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
  %19 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %26

21:                                               ; preds = %18
  %22 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
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

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #5 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %6 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %5, i32 0, i32 0
  store i8 %3, ptr %6, align 1
  br label %7

7:                                                ; preds = %21, %4
  %.020 = phi ptr [ %1, %4 ], [ %.222, %21 ]
  %.0 = phi ptr [ %0, %4 ], [ %22, %21 ]
  %8 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.0, ptr noundef %2)
  br i1 %8, label %.lr.ph, label %12

.lr.ph:                                           ; preds = %7
  br label %9

9:                                                ; preds = %.lr.ph, %9
  %.1 = phi ptr [ %.0, %.lr.ph ], [ %10, %9 ]
  %10 = getelementptr inbounds nuw double, ptr %.1, i32 1
  %11 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %10, ptr noundef %2)
  br i1 %11, label %9, label %._crit_edge, !llvm.loop !105

._crit_edge:                                      ; preds = %9
  br label %12

12:                                               ; preds = %._crit_edge, %7
  %.2 = phi ptr [ %10, %._crit_edge ], [ %.0, %7 ]
  %13 = getelementptr inbounds double, ptr %.020, i32 -1
  %14 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %13)
  br i1 %14, label %.lr.ph2, label %18

.lr.ph2:                                          ; preds = %12
  br label %15

15:                                               ; preds = %.lr.ph2, %15
  %.121 = phi ptr [ %13, %.lr.ph2 ], [ %16, %15 ]
  %16 = getelementptr inbounds double, ptr %.121, i32 -1
  %17 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %16)
  br i1 %17, label %15, label %._crit_edge3, !llvm.loop !106

._crit_edge3:                                     ; preds = %15
  br label %18

18:                                               ; preds = %._crit_edge3, %12
  %.222 = phi ptr [ %16, %._crit_edge3 ], [ %13, %12 ]
  %19 = icmp ult ptr %.2, %.222
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  ret ptr %.2

21:                                               ; preds = %18
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.2, ptr noundef %.222)
  %22 = getelementptr inbounds nuw double, ptr %.2, i32 1
  br label %7, !llvm.loop !107
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %5 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Iter_less_iter", ptr %4, i32 0, i32 0
  store i8 %2, ptr %5, align 1
  %6 = icmp eq ptr %0, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  br label %25

8:                                                ; preds = %3
  %9 = getelementptr inbounds double, ptr %0, i64 1
  %10 = icmp ne ptr %9, %1
  br i1 %10, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %8
  br label %11

11:                                               ; preds = %.lr.ph, %22
  %.0 = phi ptr [ %9, %.lr.ph ], [ %23, %22 ]
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
  br label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds nuw double, ptr %.0, i32 1
  %24 = icmp ne ptr %23, %1
  br i1 %24, label %11, label %..loopexit_crit_edge, !llvm.loop !108

..loopexit_crit_edge:                             ; preds = %22
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %8
  br label %25

25:                                               ; preds = %.loopexit, %7
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = icmp ne ptr %0, %1
  br i1 %4, label %.lr.ph, label %10

.lr.ph:                                           ; preds = %3
  br label %5

5:                                                ; preds = %.lr.ph, %7
  %.0 = phi ptr [ %0, %.lr.ph ], [ %8, %7 ]
  %6 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 undef)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %.0, i8 undef)
  br label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds nuw double, ptr %.0, i32 1
  %9 = icmp ne ptr %8, %1
  br i1 %9, label %5, label %._crit_edge, !llvm.loop !109

._crit_edge:                                      ; preds = %7
  br label %10

10:                                               ; preds = %._crit_edge, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %0, i8 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_less_iter", align 1
  %4 = alloca double, align 8
  %5 = getelementptr inbounds nuw %"struct.__gnu_cxx::__ops::_Val_less_iter", ptr %3, i32 0, i32 0
  store i8 %1, ptr %5, align 1
  %6 = load double, ptr %0, align 8
  store double %6, ptr %4, align 8
  %7 = getelementptr inbounds double, ptr %0, i32 -1
  %8 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %7)
  br i1 %8, label %.lr.ph, label %13

.lr.ph:                                           ; preds = %2
  br label %9

9:                                                ; preds = %.lr.ph, %9
  %.010 = phi ptr [ %0, %.lr.ph ], [ %.0, %9 ]
  %.0 = phi ptr [ %7, %.lr.ph ], [ %11, %9 ]
  %10 = load double, ptr %.0, align 8
  store double %10, ptr %.010, align 8
  %11 = getelementptr inbounds double, ptr %.0, i32 -1
  %12 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %11)
  br i1 %12, label %9, label %._crit_edge, !llvm.loop !110

._crit_edge:                                      ; preds = %9
  br label %13

13:                                               ; preds = %._crit_edge, %2
  %.1 = phi ptr [ %.0, %._crit_edge ], [ %0, %2 ]
  %14 = load double, ptr %4, align 8
  store double %14, ptr %.1, align 8
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
