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
  store i32 0, ptr %8, align 4
  %17 = load i32, ptr @current_test, align 4
  %18 = icmp slt i32 0, %17
  br i1 %18, label %.lr.ph, label %36

.lr.ph:                                           ; preds = %5
  br label %19

19:                                               ; preds = %.lr.ph, %31
  %20 = phi i32 [ 0, %.lr.ph ], [ %33, %31 ]
  %21 = phi i32 [ 12, %.lr.ph ], [ %32, %31 ]
  %22 = load ptr, ptr @results, align 8
  %23 = sext i32 %20 to i64
  %24 = getelementptr inbounds [16 x i8], ptr %22, i64 %23
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 8
  %26 = load ptr, ptr %25, align 8
  %27 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %26) #15
  %28 = trunc i64 %27 to i32
  %29 = icmp slt i32 %21, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  store i32 %28, ptr %12, align 4
  br label %31

31:                                               ; preds = %30, %19
  %32 = phi i32 [ %28, %30 ], [ %21, %19 ]
  %33 = add nsw i32 %20, 1
  store i32 %33, ptr %8, align 4
  %34 = load i32, ptr @current_test, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %19, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %31
  %split = phi i32 [ %32, %31 ]
  br label %36

36:                                               ; preds = %._crit_edge, %5
  %.lcssa4 = phi i32 [ %split, %._crit_edge ], [ 12, %5 ]
  %37 = add nsw i32 %.lcssa4, -12
  %38 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.1, i32 noundef %37, ptr noundef nonnull @.str.2)
  %39 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.3, i32 noundef %.lcssa4, ptr noundef nonnull @.str.2)
  store i32 0, ptr %8, align 4
  %40 = load i32, ptr @current_test, align 4
  %41 = icmp slt i32 0, %40
  br i1 %41, label %.lr.ph6, label %64

.lr.ph6:                                          ; preds = %36
  br label %42

42:                                               ; preds = %.lr.ph6, %42
  %43 = phi i32 [ 0, %.lr.ph6 ], [ %61, %42 ]
  %44 = load ptr, ptr @results, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds [16 x i8], ptr %44, i64 %45
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 8
  %48 = load ptr, ptr %47, align 8
  %49 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %48) #15
  %50 = trunc i64 %49 to i32
  %51 = sub i32 %.lcssa4, %50
  %52 = load ptr, ptr @results, align 8
  %53 = getelementptr inbounds [16 x i8], ptr %52, i64 %45
  %54 = getelementptr inbounds nuw i8, ptr %53, i64 8
  %55 = load ptr, ptr %54, align 8
  %56 = load double, ptr %53, align 8
  %57 = fdiv double %16, %56
  %58 = load double, ptr %52, align 8
  %59 = fdiv double %56, %58
  %60 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.4, i32 noundef %43, i32 noundef %51, ptr noundef nonnull @.str.5, ptr noundef %55, double noundef %56, double noundef %57, double noundef %59)
  %61 = add nsw i32 %43, 1
  store i32 %61, ptr %8, align 4
  %62 = load i32, ptr @current_test, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %42, label %._crit_edge7, !llvm.loop !9

._crit_edge7:                                     ; preds = %42
  %split8 = phi i32 [ %62, %42 ]
  br label %64

64:                                               ; preds = %._crit_edge7, %36
  %.lcssa3 = phi i32 [ %split8, %._crit_edge7 ], [ %40, %36 ]
  store i32 0, ptr %8, align 4
  %65 = icmp slt i32 0, %.lcssa3
  br i1 %65, label %.lr.ph10, label %76

.lr.ph10:                                         ; preds = %64
  br label %66

66:                                               ; preds = %.lr.ph10, %66
  %67 = phi i32 [ 0, %.lr.ph10 ], [ %74, %66 ]
  %68 = phi double [ 0.000000e+00, %.lr.ph10 ], [ %73, %66 ]
  %69 = load ptr, ptr @results, align 8
  %70 = sext i32 %67 to i64
  %71 = getelementptr inbounds [16 x i8], ptr %69, i64 %70
  %72 = load double, ptr %71, align 8
  %73 = fadd double %68, %72
  store double %73, ptr %10, align 8
  %74 = add nsw i32 %67, 1
  store i32 %74, ptr %8, align 4
  %75 = icmp slt i32 %74, %.lcssa3
  br i1 %75, label %66, label %._crit_edge11, !llvm.loop !10

._crit_edge11:                                    ; preds = %66
  %split12 = phi double [ %73, %66 ]
  br label %76

76:                                               ; preds = %._crit_edge11, %64
  %.lcssa2 = phi double [ %split12, %._crit_edge11 ], [ 0.000000e+00, %64 ]
  %77 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.6, ptr noundef %0, double noundef %.lcssa2)
  %78 = load i32, ptr @current_test, align 4
  %79 = icmp sgt i32 %78, 1
  br i1 %79, label %80, label %102

80:                                               ; preds = %76
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %102, label %81

81:                                               ; preds = %80
  store i32 1, ptr %8, align 4
  %82 = icmp slt i32 1, %78
  br i1 %82, label %.lr.ph14, label %96

.lr.ph14:                                         ; preds = %81
  br label %83

83:                                               ; preds = %.lr.ph14, %83
  %84 = phi i32 [ 1, %.lr.ph14 ], [ %94, %83 ]
  %85 = phi double [ 0.000000e+00, %.lr.ph14 ], [ %93, %83 ]
  %86 = load ptr, ptr @results, align 8
  %87 = sext i32 %84 to i64
  %88 = getelementptr inbounds [16 x i8], ptr %86, i64 %87
  %89 = load double, ptr %88, align 8
  %90 = load double, ptr %86, align 8
  %91 = fdiv double %89, %90
  %92 = call double @log(double noundef %91) #15
  %93 = fadd double %85, %92
  store double %93, ptr %11, align 8
  %94 = add nsw i32 %84, 1
  %.pre = load i32, ptr @current_test, align 4
  store i32 %94, ptr %8, align 4
  %95 = icmp slt i32 %94, %.pre
  br i1 %95, label %83, label %._crit_edge15, !llvm.loop !11

._crit_edge15:                                    ; preds = %83
  %split16 = phi double [ %93, %83 ]
  %split17 = phi i32 [ %.pre, %83 ]
  br label %96

96:                                               ; preds = %._crit_edge15, %81
  %.lcssa1 = phi double [ %split16, %._crit_edge15 ], [ 0.000000e+00, %81 ]
  %.lcssa = phi i32 [ %split17, %._crit_edge15 ], [ %78, %81 ]
  %97 = add nsw i32 %.lcssa, -1
  %98 = sitofp i32 %97 to double
  %99 = fdiv double %.lcssa1, %98
  %100 = call double @exp(double noundef %99) #15
  %101 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.7, ptr noundef %0, double noundef %100)
  br label %102

102:                                              ; preds = %96, %80, %76
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
  store i32 0, ptr %5, align 4
  %8 = load i32, ptr @current_test, align 4
  %9 = icmp slt i32 0, %8
  br i1 %9, label %.lr.ph, label %27

.lr.ph:                                           ; preds = %2
  br label %10

10:                                               ; preds = %.lr.ph, %22
  %11 = phi i32 [ 0, %.lr.ph ], [ %24, %22 ]
  %12 = phi i32 [ 12, %.lr.ph ], [ %23, %22 ]
  %13 = load ptr, ptr @results, align 8
  %14 = sext i32 %11 to i64
  %15 = getelementptr inbounds [16 x i8], ptr %13, i64 %14
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8
  %18 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %17) #15
  %19 = trunc i64 %18 to i32
  %20 = icmp slt i32 %12, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  store i32 %19, ptr %7, align 4
  br label %22

22:                                               ; preds = %21, %10
  %23 = phi i32 [ %19, %21 ], [ %12, %10 ]
  %24 = add nsw i32 %11, 1
  store i32 %24, ptr %5, align 4
  %25 = load i32, ptr @current_test, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %10, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %22
  %split = phi i32 [ %23, %22 ]
  br label %27

27:                                               ; preds = %._crit_edge, %2
  %.lcssa2 = phi i32 [ %split, %._crit_edge ], [ 12, %2 ]
  %28 = add nsw i32 %.lcssa2, -12
  %29 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %28, ptr noundef nonnull @.str.2)
  %30 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %.lcssa2, ptr noundef nonnull @.str.2)
  store i32 0, ptr %5, align 4
  %31 = load i32, ptr @current_test, align 4
  %32 = icmp slt i32 0, %31
  br i1 %32, label %.lr.ph4, label %52

.lr.ph4:                                          ; preds = %27
  br label %33

33:                                               ; preds = %.lr.ph4, %33
  %34 = phi i32 [ 0, %.lr.ph4 ], [ %49, %33 ]
  %35 = load ptr, ptr @results, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds [16 x i8], ptr %35, i64 %36
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 8
  %39 = load ptr, ptr %38, align 8
  %40 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %39) #15
  %41 = trunc i64 %40 to i32
  %42 = sub i32 %.lcssa2, %41
  %43 = load ptr, ptr @results, align 8
  %44 = getelementptr inbounds [16 x i8], ptr %43, i64 %36
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 8
  %46 = load ptr, ptr %45, align 8
  %47 = load double, ptr %44, align 8
  %48 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %34, i32 noundef %42, ptr noundef nonnull @.str.5, ptr noundef %46, double noundef %47)
  %49 = add nsw i32 %34, 1
  store i32 %49, ptr %5, align 4
  %50 = load i32, ptr @current_test, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %33, label %._crit_edge5, !llvm.loop !13

._crit_edge5:                                     ; preds = %33
  %split6 = phi i32 [ %50, %33 ]
  br label %52

52:                                               ; preds = %._crit_edge5, %27
  %.lcssa1 = phi i32 [ %split6, %._crit_edge5 ], [ %31, %27 ]
  store i32 0, ptr %5, align 4
  %53 = icmp slt i32 0, %.lcssa1
  br i1 %53, label %.lr.ph8, label %64

.lr.ph8:                                          ; preds = %52
  br label %54

54:                                               ; preds = %.lr.ph8, %54
  %55 = phi i32 [ 0, %.lr.ph8 ], [ %62, %54 ]
  %56 = phi double [ 0.000000e+00, %.lr.ph8 ], [ %61, %54 ]
  %57 = load ptr, ptr @results, align 8
  %58 = sext i32 %55 to i64
  %59 = getelementptr inbounds [16 x i8], ptr %57, i64 %58
  %60 = load double, ptr %59, align 8
  %61 = fadd double %56, %60
  store double %61, ptr %6, align 8
  %62 = add nsw i32 %55, 1
  store i32 %62, ptr %5, align 4
  %63 = icmp slt i32 %62, %.lcssa1
  br i1 %63, label %54, label %._crit_edge9, !llvm.loop !14

._crit_edge9:                                     ; preds = %54
  %split10 = phi double [ %61, %54 ]
  br label %64

64:                                               ; preds = %._crit_edge9, %52
  %.lcssa = phi double [ %split10, %._crit_edge9 ], [ 0.000000e+00, %52 ]
  %65 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %1, double noundef %.lcssa)
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

19:                                               ; preds = %19, %16
  %20 = phi ptr [ %21, %19 ], [ %18, %16 ]
  %21 = getelementptr inbounds i8, ptr %20, i64 -8
  store ptr %21, ptr %9, align 8
  %22 = load double, ptr %21, align 8
  %23 = call noundef zeroext i1 %2(double noundef %15, double noundef %22)
  br i1 %23, label %19, label %24, !llvm.loop !15

24:                                               ; preds = %19
  %.lcssa = phi ptr [ %21, %19 ]
  %25 = icmp ult ptr %17, %.lcssa
  br i1 %25, label %27, label %26

26:                                               ; preds = %24
  %.lcssa.lcssa = phi ptr [ %.lcssa, %24 ]
  br label %41

27:                                               ; preds = %24
  %28 = load double, ptr %17, align 8
  %29 = call noundef zeroext i1 %2(double noundef %28, double noundef %15)
  br i1 %29, label %.lr.ph, label %35

.lr.ph:                                           ; preds = %27
  br label %30

30:                                               ; preds = %.lr.ph, %30
  %31 = phi ptr [ %17, %.lr.ph ], [ %32, %30 ]
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr %32, ptr %8, align 8
  %33 = load double, ptr %32, align 8
  %34 = call noundef zeroext i1 %2(double noundef %33, double noundef %15)
  br i1 %34, label %30, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %30
  %split = phi ptr [ %32, %30 ]
  br label %35

35:                                               ; preds = %._crit_edge, %27
  %.lcssa3 = phi ptr [ %split, %._crit_edge ], [ %17, %27 ]
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

41:                                               ; preds = %37, %26
  %.lcssa2 = phi ptr [ %.lcssa.lcssa1, %37 ], [ %.lcssa.lcssa, %26 ]
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

19:                                               ; preds = %19, %16
  %20 = phi ptr [ %21, %19 ], [ %18, %16 ]
  %21 = getelementptr inbounds i8, ptr %20, i64 -8
  store ptr %21, ptr %9, align 8
  %22 = load double, ptr %21, align 8
  %23 = call noundef zeroext i1 %2(double noundef %15, double noundef %22)
  br i1 %23, label %19, label %24, !llvm.loop !18

24:                                               ; preds = %19
  %.lcssa = phi ptr [ %21, %19 ]
  %25 = icmp ult ptr %17, %.lcssa
  br i1 %25, label %27, label %26

26:                                               ; preds = %24
  %.lcssa.lcssa = phi ptr [ %.lcssa, %24 ]
  br label %41

27:                                               ; preds = %24
  %28 = load double, ptr %17, align 8
  %29 = call noundef zeroext i1 %2(double noundef %28, double noundef %15)
  br i1 %29, label %.lr.ph, label %35

.lr.ph:                                           ; preds = %27
  br label %30

30:                                               ; preds = %.lr.ph, %30
  %31 = phi ptr [ %17, %.lr.ph ], [ %32, %30 ]
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr %32, ptr %8, align 8
  %33 = load double, ptr %32, align 8
  %34 = call noundef zeroext i1 %2(double noundef %33, double noundef %15)
  br i1 %34, label %30, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %30
  %split = phi ptr [ %32, %30 ]
  br label %35

35:                                               ; preds = %._crit_edge, %27
  %.lcssa3 = phi ptr [ %split, %._crit_edge ], [ %17, %27 ]
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

41:                                               ; preds = %37, %26
  %.lcssa2 = phi ptr [ %.lcssa.lcssa1, %37 ], [ %.lcssa.lcssa, %26 ]
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
  store i32 0, ptr %9, align 4
  %33 = icmp slt i32 0, %26
  br i1 %33, label %.lr.ph, label %42

.lr.ph:                                           ; preds = %25
  br label %34

34:                                               ; preds = %.lr.ph, %34
  %35 = phi i32 [ 0, %.lr.ph ], [ %40, %34 ]
  %36 = call i32 @rand()
  %37 = sitofp i32 %36 to double
  %38 = sext i32 %35 to i64
  %39 = getelementptr inbounds [8 x i8], ptr %32, i64 %38
  store double %37, ptr %39, align 8
  %40 = add nsw i32 %35, 1
  store i32 %40, ptr %9, align 4
  %41 = icmp slt i32 %40, %26
  br i1 %41, label %34, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %34
  br label %42

42:                                               ; preds = %._crit_edge, %25
  %43 = call noalias noundef nonnull ptr @_Znay(i64 noundef %31) #16
  store ptr %43, ptr %10, align 8
  store i32 0, ptr %5, align 4
  %44 = icmp slt i32 0, %18
  br i1 %44, label %.lr.ph14, label %56

.lr.ph14:                                         ; preds = %42
  br label %45

45:                                               ; preds = %.lr.ph14, %45
  %46 = phi i32 [ %26, %.lr.ph14 ], [ %50, %45 ]
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [8 x i8], ptr %32, i64 %47
  %49 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %32, ptr noundef %48, ptr noundef %43)
  call void @qsort(ptr noundef %43, i64 noundef %47, i64 noundef 8, ptr noundef nonnull @_Z19less_than_function1PKvS0_)
  %50 = load i32, ptr %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [8 x i8], ptr %43, i64 %51
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %43, ptr noundef %52)
  %53 = load i32, ptr %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, ptr %5, align 4
  %55 = icmp slt i32 %54, %18
  br i1 %55, label %45, label %._crit_edge15, !llvm.loop !22

._crit_edge15:                                    ; preds = %45
  %split = phi i32 [ %50, %45 ]
  br label %56

56:                                               ; preds = %._crit_edge15, %42
  %.lcssa12 = phi i32 [ %split, %._crit_edge15 ], [ %26, %42 ]
  store i32 0, ptr %5, align 4
  %57 = icmp slt i32 0, %18
  br i1 %57, label %.lr.ph17, label %70

.lr.ph17:                                         ; preds = %56
  br label %58

58:                                               ; preds = %.lr.ph17, %58
  %59 = phi i32 [ %.lcssa12, %.lr.ph17 ], [ %64, %58 ]
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [8 x i8], ptr %32, i64 %60
  %62 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %32, ptr noundef %61, ptr noundef %43)
  %63 = getelementptr inbounds [8 x i8], ptr %43, i64 %60
  call void @_Z18quicksort_functionPdS_PFbddE(ptr noundef %43, ptr noundef %63, ptr noundef nonnull @_Z19less_than_function2dd)
  %64 = load i32, ptr %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [8 x i8], ptr %43, i64 %65
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %43, ptr noundef %66)
  %67 = load i32, ptr %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, ptr %5, align 4
  %69 = icmp slt i32 %68, %18
  br i1 %69, label %58, label %._crit_edge18, !llvm.loop !23

._crit_edge18:                                    ; preds = %58
  %split19 = phi i32 [ %64, %58 ]
  br label %70

70:                                               ; preds = %._crit_edge18, %56
  %.lcssa11 = phi i32 [ %split19, %._crit_edge18 ], [ %.lcssa12, %56 ]
  store i32 0, ptr %5, align 4
  %71 = icmp slt i32 0, %18
  br i1 %71, label %.lr.ph21, label %84

.lr.ph21:                                         ; preds = %70
  br label %72

72:                                               ; preds = %.lr.ph21, %72
  %73 = phi i32 [ %.lcssa11, %.lr.ph21 ], [ %78, %72 ]
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [8 x i8], ptr %32, i64 %74
  %76 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %32, ptr noundef %75, ptr noundef %43)
  %77 = getelementptr inbounds [8 x i8], ptr %43, i64 %74
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %43, ptr noundef %77, ptr noundef nonnull @_Z19less_than_function2dd)
  %78 = load i32, ptr %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [8 x i8], ptr %43, i64 %79
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %43, ptr noundef %80)
  %81 = load i32, ptr %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, ptr %5, align 4
  %83 = icmp slt i32 %82, %18
  br i1 %83, label %72, label %._crit_edge22, !llvm.loop !24

._crit_edge22:                                    ; preds = %72
  %split23 = phi i32 [ %78, %72 ]
  br label %84

84:                                               ; preds = %._crit_edge22, %70
  %.lcssa10 = phi i32 [ %split23, %._crit_edge22 ], [ %.lcssa11, %70 ]
  store i32 0, ptr %5, align 4
  %85 = icmp slt i32 0, %18
  br i1 %85, label %.lr.ph25, label %98

.lr.ph25:                                         ; preds = %84
  br label %86

86:                                               ; preds = %.lr.ph25, %86
  %87 = phi i32 [ %.lcssa10, %.lr.ph25 ], [ %92, %86 ]
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [8 x i8], ptr %32, i64 %88
  %90 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %32, ptr noundef %89, ptr noundef %43)
  %91 = getelementptr inbounds [8 x i8], ptr %43, i64 %88
  call void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef %43, ptr noundef %91)
  %92 = load i32, ptr %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [8 x i8], ptr %43, i64 %93
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %43, ptr noundef %94)
  %95 = load i32, ptr %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, ptr %5, align 4
  %97 = icmp slt i32 %96, %18
  br i1 %97, label %86, label %._crit_edge26, !llvm.loop !25

._crit_edge26:                                    ; preds = %86
  %split27 = phi i32 [ %92, %86 ]
  br label %98

98:                                               ; preds = %._crit_edge26, %84
  %.lcssa9 = phi i32 [ %split27, %._crit_edge26 ], [ %.lcssa10, %84 ]
  store i32 0, ptr %5, align 4
  %99 = icmp slt i32 0, %18
  br i1 %99, label %.lr.ph29, label %112

.lr.ph29:                                         ; preds = %98
  br label %100

100:                                              ; preds = %.lr.ph29, %100
  %101 = phi i32 [ %.lcssa9, %.lr.ph29 ], [ %106, %100 ]
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [8 x i8], ptr %32, i64 %102
  %104 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %32, ptr noundef %103, ptr noundef %43)
  %105 = getelementptr inbounds [8 x i8], ptr %43, i64 %102
  call void @_ZSt4sortIPdPFbddEEvT_S3_T0_(ptr noundef %43, ptr noundef %105, ptr noundef nonnull @_Z19less_than_function2dd)
  %106 = load i32, ptr %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [8 x i8], ptr %43, i64 %107
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %43, ptr noundef %108)
  %109 = load i32, ptr %5, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, ptr %5, align 4
  %111 = icmp slt i32 %110, %18
  br i1 %111, label %100, label %._crit_edge30, !llvm.loop !26

._crit_edge30:                                    ; preds = %100
  %split31 = phi i32 [ %106, %100 ]
  br label %112

112:                                              ; preds = %._crit_edge30, %98
  %.lcssa8 = phi i32 [ %split31, %._crit_edge30 ], [ %.lcssa9, %98 ]
  store i32 0, ptr %5, align 4
  %113 = icmp slt i32 0, %18
  br i1 %113, label %.lr.ph33, label %126

.lr.ph33:                                         ; preds = %112
  br label %114

114:                                              ; preds = %.lr.ph33, %114
  %115 = phi i32 [ %.lcssa8, %.lr.ph33 ], [ %120, %114 ]
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [8 x i8], ptr %32, i64 %116
  %118 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %32, ptr noundef %117, ptr noundef %43)
  %119 = getelementptr inbounds [8 x i8], ptr %43, i64 %116
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %43, ptr noundef %119, i8 undef)
  %120 = load i32, ptr %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [8 x i8], ptr %43, i64 %121
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %43, ptr noundef %122)
  %123 = load i32, ptr %5, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, ptr %5, align 4
  %125 = icmp slt i32 %124, %18
  br i1 %125, label %114, label %._crit_edge34, !llvm.loop !27

._crit_edge34:                                    ; preds = %114
  %split35 = phi i32 [ %120, %114 ]
  br label %126

126:                                              ; preds = %._crit_edge34, %112
  %.lcssa7 = phi i32 [ %split35, %._crit_edge34 ], [ %.lcssa8, %112 ]
  store i32 0, ptr %5, align 4
  %127 = icmp slt i32 0, %18
  br i1 %127, label %.lr.ph37, label %142

.lr.ph37:                                         ; preds = %126
  br label %128

128:                                              ; preds = %.lr.ph37, %128
  %129 = phi ptr [ %43, %.lr.ph37 ], [ %137, %128 ]
  %130 = phi i32 [ %.lcssa7, %.lr.ph37 ], [ %134, %128 ]
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [8 x i8], ptr %129, i64 %131
  call void @_ZSt4sortIPd17less_than_functorEvT_S2_T0_(ptr noundef %129, ptr noundef %132, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %129, ptr noundef %132)
  %133 = load ptr, ptr %8, align 8
  %134 = load i32, ptr %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [8 x i8], ptr %133, i64 %135
  %137 = load ptr, ptr %10, align 8
  %138 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %133, ptr noundef %136, ptr noundef %137)
  %139 = load i32, ptr %5, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, ptr %5, align 4
  %141 = icmp slt i32 %140, %18
  br i1 %141, label %128, label %._crit_edge38, !llvm.loop !28

._crit_edge38:                                    ; preds = %128
  %split39 = phi i32 [ %134, %128 ]
  %split40 = phi ptr [ %133, %128 ]
  %split41 = phi ptr [ %137, %128 ]
  br label %142

142:                                              ; preds = %._crit_edge38, %126
  %.lcssa6 = phi i32 [ %split39, %._crit_edge38 ], [ %.lcssa7, %126 ]
  %.pre.lcssa = phi ptr [ %split40, %._crit_edge38 ], [ %32, %126 ]
  %.lcssa5 = phi ptr [ %split41, %._crit_edge38 ], [ %43, %126 ]
  store i32 0, ptr %5, align 4
  %143 = icmp slt i32 0, %18
  br i1 %143, label %.lr.ph43, label %156

.lr.ph43:                                         ; preds = %142
  br label %144

144:                                              ; preds = %.lr.ph43, %144
  %145 = phi i32 [ %.lcssa6, %.lr.ph43 ], [ %150, %144 ]
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [8 x i8], ptr %.pre.lcssa, i64 %146
  %148 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %.pre.lcssa, ptr noundef %147, ptr noundef %.lcssa5)
  %149 = getelementptr inbounds [8 x i8], ptr %.lcssa5, i64 %146
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %.lcssa5, ptr noundef %149, i8 undef)
  %150 = load i32, ptr %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [8 x i8], ptr %.lcssa5, i64 %151
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %.lcssa5, ptr noundef %152)
  %153 = load i32, ptr %5, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, ptr %5, align 4
  %155 = icmp slt i32 %154, %18
  br i1 %155, label %144, label %._crit_edge44, !llvm.loop !29

._crit_edge44:                                    ; preds = %144
  %split45 = phi i32 [ %150, %144 ]
  br label %156

156:                                              ; preds = %._crit_edge44, %142
  %.lcssa4 = phi i32 [ %split45, %._crit_edge44 ], [ %.lcssa6, %142 ]
  store i32 0, ptr %5, align 4
  %157 = icmp slt i32 0, %18
  br i1 %157, label %.lr.ph47, label %170

.lr.ph47:                                         ; preds = %156
  br label %158

158:                                              ; preds = %.lr.ph47, %158
  %159 = phi i32 [ %.lcssa4, %.lr.ph47 ], [ %164, %158 ]
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [8 x i8], ptr %.pre.lcssa, i64 %160
  %162 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %.pre.lcssa, ptr noundef %161, ptr noundef %.lcssa5)
  %163 = getelementptr inbounds [8 x i8], ptr %.lcssa5, i64 %160
  call void @_ZSt4sortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %.lcssa5, ptr noundef %163, i8 undef)
  %164 = load i32, ptr %7, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [8 x i8], ptr %.lcssa5, i64 %165
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %.lcssa5, ptr noundef %166)
  %167 = load i32, ptr %5, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, ptr %5, align 4
  %169 = icmp slt i32 %168, %18
  br i1 %169, label %158, label %._crit_edge48, !llvm.loop !30

._crit_edge48:                                    ; preds = %158
  %split49 = phi i32 [ %164, %158 ]
  br label %170

170:                                              ; preds = %._crit_edge48, %156
  %.lcssa3 = phi i32 [ %split49, %._crit_edge48 ], [ %.lcssa4, %156 ]
  store i32 0, ptr %5, align 4
  %171 = icmp slt i32 0, %18
  br i1 %171, label %.lr.ph51, label %184

.lr.ph51:                                         ; preds = %170
  br label %172

172:                                              ; preds = %.lr.ph51, %172
  %173 = phi i32 [ %.lcssa3, %.lr.ph51 ], [ %178, %172 ]
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [8 x i8], ptr %.pre.lcssa, i64 %174
  %176 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %.pre.lcssa, ptr noundef %175, ptr noundef %.lcssa5)
  %177 = getelementptr inbounds [8 x i8], ptr %.lcssa5, i64 %174
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %.lcssa5, ptr noundef %177, i8 undef)
  %178 = load i32, ptr %7, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [8 x i8], ptr %.lcssa5, i64 %179
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %.lcssa5, ptr noundef %180)
  %181 = load i32, ptr %5, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, ptr %5, align 4
  %183 = icmp slt i32 %182, %18
  br i1 %183, label %172, label %._crit_edge52, !llvm.loop !31

._crit_edge52:                                    ; preds = %172
  %split53 = phi i32 [ %178, %172 ]
  br label %184

184:                                              ; preds = %._crit_edge52, %170
  %.lcssa2 = phi i32 [ %split53, %._crit_edge52 ], [ %.lcssa3, %170 ]
  store i32 0, ptr %5, align 4
  %185 = icmp slt i32 0, %18
  br i1 %185, label %.lr.ph55, label %198

.lr.ph55:                                         ; preds = %184
  br label %186

186:                                              ; preds = %.lr.ph55, %186
  %187 = phi i32 [ %.lcssa2, %.lr.ph55 ], [ %192, %186 ]
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [8 x i8], ptr %.pre.lcssa, i64 %188
  %190 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %.pre.lcssa, ptr noundef %189, ptr noundef %.lcssa5)
  %191 = getelementptr inbounds [8 x i8], ptr %.lcssa5, i64 %188
  call void @_ZSt4sortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %.lcssa5, ptr noundef %191, i8 undef)
  %192 = load i32, ptr %7, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [8 x i8], ptr %.lcssa5, i64 %193
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %.lcssa5, ptr noundef %194)
  %195 = load i32, ptr %5, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, ptr %5, align 4
  %197 = icmp slt i32 %196, %18
  br i1 %197, label %186, label %._crit_edge56, !llvm.loop !32

._crit_edge56:                                    ; preds = %186
  %split57 = phi i32 [ %192, %186 ]
  br label %198

198:                                              ; preds = %._crit_edge56, %184
  %.lcssa1 = phi i32 [ %split57, %._crit_edge56 ], [ %.lcssa2, %184 ]
  store i32 0, ptr %5, align 4
  %199 = icmp slt i32 0, %18
  br i1 %199, label %.lr.ph59, label %212

.lr.ph59:                                         ; preds = %198
  br label %200

200:                                              ; preds = %.lr.ph59, %200
  %201 = phi i32 [ %.lcssa1, %.lr.ph59 ], [ %206, %200 ]
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [8 x i8], ptr %.pre.lcssa, i64 %202
  %204 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %.pre.lcssa, ptr noundef %203, ptr noundef %.lcssa5)
  %205 = getelementptr inbounds [8 x i8], ptr %.lcssa5, i64 %202
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %.lcssa5, ptr noundef %205)
  %206 = load i32, ptr %7, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [8 x i8], ptr %.lcssa5, i64 %207
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %.lcssa5, ptr noundef %208)
  %209 = load i32, ptr %5, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, ptr %5, align 4
  %211 = icmp slt i32 %210, %18
  br i1 %211, label %200, label %._crit_edge60, !llvm.loop !33

._crit_edge60:                                    ; preds = %200
  %split61 = phi i32 [ %206, %200 ]
  br label %212

212:                                              ; preds = %._crit_edge60, %198
  %.lcssa = phi i32 [ %split61, %._crit_edge60 ], [ %.lcssa1, %198 ]
  store i32 0, ptr %5, align 4
  %213 = icmp slt i32 0, %18
  br i1 %213, label %.lr.ph63, label %226

.lr.ph63:                                         ; preds = %212
  br label %214

214:                                              ; preds = %.lr.ph63, %214
  %215 = phi i32 [ %.lcssa, %.lr.ph63 ], [ %220, %214 ]
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [8 x i8], ptr %.pre.lcssa, i64 %216
  %218 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %.pre.lcssa, ptr noundef %217, ptr noundef %.lcssa5)
  %219 = getelementptr inbounds [8 x i8], ptr %.lcssa5, i64 %216
  call void @_ZSt4sortIPdEvT_S1_(ptr noundef %.lcssa5, ptr noundef %219)
  %220 = load i32, ptr %7, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [8 x i8], ptr %.lcssa5, i64 %221
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %.lcssa5, ptr noundef %222)
  %223 = load i32, ptr %5, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, ptr %5, align 4
  %225 = icmp slt i32 %224, %18
  br i1 %225, label %214, label %._crit_edge64, !llvm.loop !34

._crit_edge64:                                    ; preds = %214
  br label %226

226:                                              ; preds = %._crit_edge64, %212
  %227 = icmp eq ptr %.lcssa5, null
  br i1 %227, label %229, label %228

228:                                              ; preds = %226
  call void @_ZdaPv(ptr noundef nonnull %.lcssa5) #17
  br label %229

229:                                              ; preds = %228, %226
  %230 = icmp eq ptr %.pre.lcssa, null
  br i1 %230, label %232, label %231

231:                                              ; preds = %229
  call void @_ZdaPv(ptr noundef nonnull %.pre.lcssa) #17
  br label %232

232:                                              ; preds = %231, %229
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
  %.not1 = icmp eq ptr %6, %1
  br i1 %.not1, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %10

7:                                                ; preds = %10
  %8 = phi ptr [ %15, %10 ]
  %9 = phi ptr [ %13, %10 ]
  %.not = icmp eq ptr %9, %1
  br i1 %.not, label %..loopexit_crit_edge, label %10, !llvm.loop !35

10:                                               ; preds = %.lr.ph, %7
  %11 = phi ptr [ %6, %.lr.ph ], [ %9, %7 ]
  %12 = phi ptr [ %0, %.lr.ph ], [ %8, %7 ]
  %13 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %13, ptr %3, align 8
  %14 = load double, ptr %11, align 8
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %15, ptr %5, align 8
  %16 = load double, ptr %12, align 8
  %17 = fcmp olt double %14, %16
  br i1 %17, label %18, label %7

18:                                               ; preds = %10
  %19 = load i32, ptr @current_test, align 4
  %20 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.11, i32 noundef %19)
  br label %21

..loopexit_crit_edge:                             ; preds = %7
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %2
  br label %21

21:                                               ; preds = %.loopexit, %18
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

17:                                               ; preds = %17, %14
  %18 = phi ptr [ %19, %17 ], [ %16, %14 ]
  %19 = getelementptr inbounds i8, ptr %18, i64 -8
  store ptr %19, ptr %7, align 8
  %20 = load double, ptr %19, align 8
  %21 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %13, double noundef %20)
  br i1 %21, label %17, label %22, !llvm.loop !36

22:                                               ; preds = %17
  %.lcssa = phi ptr [ %19, %17 ]
  %23 = icmp ult ptr %15, %.lcssa
  br i1 %23, label %25, label %24

24:                                               ; preds = %22
  %.lcssa.lcssa = phi ptr [ %.lcssa, %22 ]
  br label %39

25:                                               ; preds = %22
  %26 = load double, ptr %15, align 8
  %27 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %26, double noundef %13)
  br i1 %27, label %.lr.ph, label %33

.lr.ph:                                           ; preds = %25
  br label %28

28:                                               ; preds = %.lr.ph, %28
  %29 = phi ptr [ %15, %.lr.ph ], [ %30, %28 ]
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr %30, ptr %6, align 8
  %31 = load double, ptr %30, align 8
  %32 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %31, double noundef %13)
  br i1 %32, label %28, label %._crit_edge, !llvm.loop !37

._crit_edge:                                      ; preds = %28
  %split = phi ptr [ %30, %28 ]
  br label %33

33:                                               ; preds = %._crit_edge, %25
  %.lcssa3 = phi ptr [ %split, %._crit_edge ], [ %15, %25 ]
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

39:                                               ; preds = %35, %24
  %.lcssa2 = phi ptr [ %.lcssa.lcssa1, %35 ], [ %.lcssa.lcssa, %24 ]
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
  br i1 %13, label %14, label %42

14:                                               ; preds = %3
  %15 = load double, ptr %0, align 8
  store double %15, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  br label %16

16:                                               ; preds = %35, %14
  %17 = phi ptr [ %.lcssa, %35 ], [ %1, %14 ]
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi ptr [ %20, %18 ], [ %17, %16 ]
  %20 = getelementptr inbounds i8, ptr %19, i64 -8
  store ptr %20, ptr %9, align 8
  %21 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %20)
  br i1 %21, label %18, label %22, !llvm.loop !39

22:                                               ; preds = %18
  %.lcssa = phi ptr [ %20, %18 ]
  %23 = load ptr, ptr %8, align 8
  %24 = icmp ult ptr %23, %.lcssa
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  %.lcssa.lcssa = phi ptr [ %.lcssa, %22 ]
  br label %38

26:                                               ; preds = %22
  %27 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %27, label %.lr.ph, label %32

.lr.ph:                                           ; preds = %26
  br label %28

28:                                               ; preds = %.lr.ph, %28
  %29 = phi ptr [ %23, %.lr.ph ], [ %30, %28 ]
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr %30, ptr %8, align 8
  %31 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %31, label %28, label %._crit_edge, !llvm.loop !40

._crit_edge:                                      ; preds = %28
  %split = phi ptr [ %30, %28 ]
  br label %32

32:                                               ; preds = %._crit_edge, %26
  %.lcssa3 = phi ptr [ %split, %._crit_edge ], [ %23, %26 ]
  %33 = icmp ult ptr %.lcssa3, %.lcssa
  br i1 %33, label %35, label %34

34:                                               ; preds = %32
  %.lcssa.lcssa1 = phi ptr [ %.lcssa, %32 ]
  br label %38

35:                                               ; preds = %32
  %36 = load double, ptr %.lcssa, align 8
  %37 = load double, ptr %.lcssa3, align 8
  store double %37, ptr %.lcssa, align 8
  store double %36, ptr %.lcssa3, align 8
  br label %16, !llvm.loop !41

38:                                               ; preds = %34, %25
  %.lcssa2 = phi ptr [ %.lcssa.lcssa1, %34 ], [ %.lcssa.lcssa, %25 ]
  %39 = load ptr, ptr %5, align 8
  %40 = getelementptr inbounds nuw i8, ptr %.lcssa2, i64 8
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %39, ptr noundef nonnull %40, i8 undef)
  %41 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef nonnull %40, ptr noundef %41, i8 undef)
  br label %42

42:                                               ; preds = %38, %3
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
  br i1 %13, label %14, label %42

14:                                               ; preds = %3
  %15 = load double, ptr %0, align 8
  store double %15, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  br label %16

16:                                               ; preds = %35, %14
  %17 = phi ptr [ %.lcssa, %35 ], [ %1, %14 ]
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi ptr [ %20, %18 ], [ %17, %16 ]
  %20 = getelementptr inbounds i8, ptr %19, i64 -8
  store ptr %20, ptr %9, align 8
  %21 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %20)
  br i1 %21, label %18, label %22, !llvm.loop !42

22:                                               ; preds = %18
  %.lcssa = phi ptr [ %20, %18 ]
  %23 = load ptr, ptr %8, align 8
  %24 = icmp ult ptr %23, %.lcssa
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  %.lcssa.lcssa = phi ptr [ %.lcssa, %22 ]
  br label %38

26:                                               ; preds = %22
  %27 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %27, label %.lr.ph, label %32

.lr.ph:                                           ; preds = %26
  br label %28

28:                                               ; preds = %.lr.ph, %28
  %29 = phi ptr [ %23, %.lr.ph ], [ %30, %28 ]
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr %30, ptr %8, align 8
  %31 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %31, label %28, label %._crit_edge, !llvm.loop !43

._crit_edge:                                      ; preds = %28
  %split = phi ptr [ %30, %28 ]
  br label %32

32:                                               ; preds = %._crit_edge, %26
  %.lcssa3 = phi ptr [ %split, %._crit_edge ], [ %23, %26 ]
  %33 = icmp ult ptr %.lcssa3, %.lcssa
  br i1 %33, label %35, label %34

34:                                               ; preds = %32
  %.lcssa.lcssa1 = phi ptr [ %.lcssa, %32 ]
  br label %38

35:                                               ; preds = %32
  %36 = load double, ptr %.lcssa, align 8
  %37 = load double, ptr %.lcssa3, align 8
  store double %37, ptr %.lcssa, align 8
  store double %36, ptr %.lcssa3, align 8
  br label %16, !llvm.loop !44

38:                                               ; preds = %34, %25
  %.lcssa2 = phi ptr [ %.lcssa.lcssa1, %34 ], [ %.lcssa.lcssa, %25 ]
  %39 = load ptr, ptr %5, align 8
  %40 = getelementptr inbounds nuw i8, ptr %.lcssa2, i64 8
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %39, ptr noundef nonnull %40, i8 undef)
  %41 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef nonnull %40, ptr noundef %41, i8 undef)
  br label %42

42:                                               ; preds = %38, %3
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
  br i1 %13, label %14, label %42

14:                                               ; preds = %3
  %15 = load double, ptr %0, align 8
  store double %15, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  br label %16

16:                                               ; preds = %35, %14
  %17 = phi ptr [ %.lcssa, %35 ], [ %1, %14 ]
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi ptr [ %20, %18 ], [ %17, %16 ]
  %20 = getelementptr inbounds i8, ptr %19, i64 -8
  store ptr %20, ptr %9, align 8
  %21 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %20)
  br i1 %21, label %18, label %22, !llvm.loop !45

22:                                               ; preds = %18
  %.lcssa = phi ptr [ %20, %18 ]
  %23 = load ptr, ptr %8, align 8
  %24 = icmp ult ptr %23, %.lcssa
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  %.lcssa.lcssa = phi ptr [ %.lcssa, %22 ]
  br label %38

26:                                               ; preds = %22
  %27 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %27, label %.lr.ph, label %32

.lr.ph:                                           ; preds = %26
  br label %28

28:                                               ; preds = %.lr.ph, %28
  %29 = phi ptr [ %23, %.lr.ph ], [ %30, %28 ]
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr %30, ptr %8, align 8
  %31 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %31, label %28, label %._crit_edge, !llvm.loop !46

._crit_edge:                                      ; preds = %28
  %split = phi ptr [ %30, %28 ]
  br label %32

32:                                               ; preds = %._crit_edge, %26
  %.lcssa3 = phi ptr [ %split, %._crit_edge ], [ %23, %26 ]
  %33 = icmp ult ptr %.lcssa3, %.lcssa
  br i1 %33, label %35, label %34

34:                                               ; preds = %32
  %.lcssa.lcssa1 = phi ptr [ %.lcssa, %32 ]
  br label %38

35:                                               ; preds = %32
  %36 = load double, ptr %.lcssa, align 8
  %37 = load double, ptr %.lcssa3, align 8
  store double %37, ptr %.lcssa, align 8
  store double %36, ptr %.lcssa3, align 8
  br label %16, !llvm.loop !47

38:                                               ; preds = %34, %25
  %.lcssa2 = phi ptr [ %.lcssa.lcssa1, %34 ], [ %.lcssa.lcssa, %25 ]
  %39 = load ptr, ptr %5, align 8
  %40 = getelementptr inbounds nuw i8, ptr %.lcssa2, i64 8
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %39, ptr noundef nonnull %40, i8 undef)
  %41 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef nonnull %40, ptr noundef %41, i8 undef)
  br label %42

42:                                               ; preds = %38, %3
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
  br i1 %11, label %12, label %40

12:                                               ; preds = %2
  %13 = load double, ptr %0, align 8
  store double %13, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  br label %14

14:                                               ; preds = %35, %12
  %15 = phi ptr [ %.lcssa4, %35 ], [ %0, %12 ]
  %16 = phi double [ %.lcssa, %35 ], [ %13, %12 ]
  %17 = phi ptr [ %.lcssa1, %35 ], [ %1, %12 ]
  br label %18

18:                                               ; preds = %18, %14
  %19 = phi ptr [ %20, %18 ], [ %17, %14 ]
  %20 = getelementptr inbounds i8, ptr %19, i64 -8
  store ptr %20, ptr %7, align 8
  %21 = load double, ptr %20, align 8
  %22 = fcmp olt double %13, %21
  br i1 %22, label %18, label %23, !llvm.loop !48

23:                                               ; preds = %18
  %.lcssa1 = phi ptr [ %20, %18 ]
  %.lcssa = phi double [ %21, %18 ]
  %24 = icmp ult ptr %15, %.lcssa1
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  %.lcssa1.lcssa = phi ptr [ %.lcssa1, %23 ]
  br label %37

26:                                               ; preds = %23
  %27 = fcmp olt double %16, %13
  br i1 %27, label %.lr.ph, label %32

.lr.ph:                                           ; preds = %26
  br label %28

28:                                               ; preds = %.lr.ph, %28
  %29 = phi ptr [ %15, %.lr.ph ], [ %30, %28 ]
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr %30, ptr %6, align 8
  %.pre = load double, ptr %30, align 8
  %31 = fcmp olt double %.pre, %13
  br i1 %31, label %28, label %._crit_edge, !llvm.loop !49

._crit_edge:                                      ; preds = %28
  %split = phi ptr [ %30, %28 ]
  br label %32

32:                                               ; preds = %._crit_edge, %26
  %.lcssa4 = phi ptr [ %split, %._crit_edge ], [ %15, %26 ]
  %33 = icmp ult ptr %.lcssa4, %.lcssa1
  br i1 %33, label %35, label %34

34:                                               ; preds = %32
  %.lcssa1.lcssa2 = phi ptr [ %.lcssa1, %32 ]
  br label %37

35:                                               ; preds = %32
  %36 = load double, ptr %.lcssa4, align 8
  store double %36, ptr %.lcssa1, align 8
  store double %.lcssa, ptr %.lcssa4, align 8
  br label %14, !llvm.loop !50

37:                                               ; preds = %34, %25
  %.lcssa13 = phi ptr [ %.lcssa1.lcssa2, %34 ], [ %.lcssa1.lcssa, %25 ]
  %38 = getelementptr inbounds nuw i8, ptr %.lcssa13, i64 8
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %0, ptr noundef nonnull %38)
  %39 = load ptr, ptr %4, align 8
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef nonnull %38, ptr noundef %39)
  br label %40

40:                                               ; preds = %37, %2
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
  %10 = ptrtoint ptr %1 to i64
  %11 = ptrtoint ptr %0 to i64
  %12 = sub i64 %10, %11
  %13 = icmp sgt i64 %12, 128
  br i1 %13, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %14

14:                                               ; preds = %.lr.ph, %19
  %15 = phi ptr [ %1, %.lr.ph ], [ %21, %19 ]
  %16 = phi i64 [ %2, %.lr.ph ], [ %20, %19 ]
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  %.lcssa1 = phi ptr [ %15, %14 ]
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %.lcssa1, ptr noundef %.lcssa1, i64 %3)
  br label %25

19:                                               ; preds = %14
  %20 = add nsw i64 %16, -1
  store i64 %20, ptr %8, align 8
  %21 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %15, i64 %3)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %21, ptr noundef %15, i64 noundef %20, i64 %3)
  store ptr %21, ptr %7, align 8
  %22 = ptrtoint ptr %21 to i64
  %23 = sub i64 %22, %11
  %24 = icmp sgt i64 %23, 128
  br i1 %24, label %14, label %..loopexit_crit_edge, !llvm.loop !51

..loopexit_crit_edge:                             ; preds = %19
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %25

25:                                               ; preds = %.loopexit, %18
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
  store ptr %1, ptr %9, align 8
  %11 = icmp ult ptr %1, %2
  br i1 %11, label %.lr.ph, label %21

.lr.ph:                                           ; preds = %4
  br label %12

12:                                               ; preds = %.lr.ph, %17
  %storemerge1 = phi ptr [ %1, %.lr.ph ], [ %19, %17 ]
  %13 = phi ptr [ %0, %.lr.ph ], [ %18, %17 ]
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %storemerge1, ptr noundef %13)
  %.pre = load ptr, ptr %9, align 8
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load ptr, ptr %7, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %16, ptr noundef %.pre, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi ptr [ %0, %15 ], [ %13, %12 ]
  %19 = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  store ptr %19, ptr %9, align 8
  %20 = icmp ult ptr %19, %2
  br i1 %20, label %12, label %._crit_edge, !llvm.loop !52

._crit_edge:                                      ; preds = %17
  br label %21

21:                                               ; preds = %._crit_edge, %4
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
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = icmp sgt i64 %9, 8
  br i1 %10, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %3
  br label %11

11:                                               ; preds = %.lr.ph, %11
  %12 = phi ptr [ %1, %.lr.ph ], [ %14, %11 ]
  %13 = phi ptr [ %0, %.lr.ph ], [ %.pre, %11 ]
  %14 = getelementptr inbounds i8, ptr %12, i64 -8
  store ptr %14, ptr %5, align 8
  %15 = load ptr, ptr %6, align 8, !nonnull !53, !align !54
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %13, ptr noundef nonnull %14, ptr noundef nonnull %14, ptr noundef nonnull align 8 dereferenceable(8) %15)
  %.pre = load ptr, ptr %4, align 8
  %16 = ptrtoint ptr %14 to i64
  %17 = ptrtoint ptr %.pre to i64
  %18 = sub i64 %16, %17
  %19 = icmp sgt i64 %18, 8
  br i1 %19, label %11, label %._crit_edge, !llvm.loop !55

._crit_edge:                                      ; preds = %11
  br label %20

20:                                               ; preds = %._crit_edge, %3
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
  br label %24

14:                                               ; preds = %3
  store i64 %11, ptr %6, align 8
  %15 = add nsw i64 %11, -2
  %16 = sdiv i64 %15, 2
  br label %17

17:                                               ; preds = %17, %14
  %storemerge = phi i64 [ %16, %14 ], [ %22, %17 ]
  store i64 %storemerge, ptr %7, align 8
  %18 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge
  %19 = load double, ptr %18, align 8
  %20 = load i64, ptr %2, align 8
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %storemerge, i64 noundef %11, double noundef %19, i64 %20)
  %21 = icmp eq i64 %storemerge, 0
  %22 = add nsw i64 %storemerge, -1
  br i1 %21, label %23, label %17, !llvm.loop !56

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23, %13
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
  %15 = add nsw i64 %2, -1
  %16 = sdiv i64 %15, 2
  %17 = icmp slt i64 %1, %16
  br i1 %17, label %.lr.ph, label %37

.lr.ph:                                           ; preds = %5
  br label %18

18:                                               ; preds = %.lr.ph, %29
  %19 = phi i64 [ %1, %.lr.ph ], [ %30, %29 ]
  %20 = phi ptr [ %0, %.lr.ph ], [ %31, %29 ]
  %21 = shl i64 %19, 1
  %22 = add i64 %21, 2
  store i64 %22, ptr %12, align 8
  %23 = getelementptr inbounds [8 x i8], ptr %20, i64 %22
  %24 = getelementptr [8 x i8], ptr %20, i64 %21
  %25 = getelementptr i8, ptr %24, i64 8
  %26 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %23, ptr noundef %25)
  %.pre = load i64, ptr %12, align 8
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = add nsw i64 %.pre, -1
  store i64 %28, ptr %12, align 8
  br label %29

29:                                               ; preds = %27, %18
  %30 = phi i64 [ %28, %27 ], [ %.pre, %18 ]
  %31 = load ptr, ptr %7, align 8
  %32 = getelementptr inbounds [8 x i8], ptr %31, i64 %30
  %33 = load double, ptr %32, align 8
  %34 = load i64, ptr %8, align 8
  %35 = getelementptr inbounds [8 x i8], ptr %31, i64 %34
  store double %33, ptr %35, align 8
  store i64 %30, ptr %8, align 8
  %36 = icmp slt i64 %30, %16
  br i1 %36, label %18, label %._crit_edge, !llvm.loop !57

._crit_edge:                                      ; preds = %29
  %split = phi ptr [ %31, %29 ]
  %split2 = phi i64 [ %30, %29 ]
  br label %37

37:                                               ; preds = %._crit_edge, %5
  %.lcssa1 = phi ptr [ %split, %._crit_edge ], [ %0, %5 ]
  %.lcssa = phi i64 [ %split2, %._crit_edge ], [ %1, %5 ]
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

10:                                               ; preds = %32, %4
  %11 = phi ptr [ %33, %32 ], [ %0, %4 ]
  %12 = load ptr, ptr %8, align 8
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11, ptr noundef %12)
  br i1 %13, label %.lr.ph, label %19

.lr.ph:                                           ; preds = %10
  br label %14

14:                                               ; preds = %.lr.ph, %14
  %15 = load ptr, ptr %6, align 8
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %16, ptr %6, align 8
  %17 = load ptr, ptr %8, align 8
  %18 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %16, ptr noundef %17)
  br i1 %18, label %14, label %._crit_edge, !llvm.loop !59

._crit_edge:                                      ; preds = %14
  br label %19

19:                                               ; preds = %._crit_edge, %10
  %20 = load ptr, ptr %7, align 8
  %storemerge1 = getelementptr inbounds i8, ptr %20, i64 -8
  store ptr %storemerge1, ptr %7, align 8
  %21 = load ptr, ptr %8, align 8
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %21, ptr noundef nonnull %storemerge1)
  br i1 %22, label %.lr.ph3, label %27

.lr.ph3:                                          ; preds = %19
  br label %23

23:                                               ; preds = %.lr.ph3, %23
  %24 = load ptr, ptr %7, align 8
  %storemerge = getelementptr inbounds i8, ptr %24, i64 -8
  store ptr %storemerge, ptr %7, align 8
  %25 = load ptr, ptr %8, align 8
  %26 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %25, ptr noundef nonnull %storemerge)
  br i1 %26, label %23, label %._crit_edge4, !llvm.loop !60

._crit_edge4:                                     ; preds = %23
  br label %27

27:                                               ; preds = %._crit_edge4, %19
  %28 = load ptr, ptr %6, align 8
  %29 = load ptr, ptr %7, align 8
  %30 = icmp ult ptr %28, %29
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  %.lcssa = phi ptr [ %28, %27 ]
  ret ptr %.lcssa

32:                                               ; preds = %27
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %28, ptr noundef nonnull %29)
  %33 = getelementptr inbounds nuw i8, ptr %28, i64 8
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
  br label %29

11:                                               ; preds = %3
  %storemerge1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %storemerge1, ptr %7, align 8
  %.not2 = icmp eq ptr %storemerge1, %1
  br i1 %.not2, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %11
  br label %12

12:                                               ; preds = %.lr.ph, %27
  %storemerge3 = phi ptr [ %storemerge1, %.lr.ph ], [ %storemerge, %27 ]
  %13 = load ptr, ptr %5, align 8
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %storemerge3, ptr noundef %13)
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load ptr, ptr %7, align 8
  %17 = load double, ptr %16, align 8
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %20 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %18)
  %21 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %16)
  %22 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %20, ptr noundef %21, ptr noundef nonnull %19)
  store double %17, ptr %18, align 8
  br label %27

23:                                               ; preds = %12
  %24 = load ptr, ptr %7, align 8
  %25 = load i64, ptr %4, align 8
  %26 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %25)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %24, i64 %26)
  br label %27

27:                                               ; preds = %23, %15
  %28 = phi ptr [ %24, %23 ], [ %16, %15 ]
  %.pre = load ptr, ptr %6, align 8
  %storemerge = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %storemerge, ptr %7, align 8
  %.not = icmp eq ptr %storemerge, %.pre
  br i1 %.not, label %..loopexit_crit_edge, label %12, !llvm.loop !62

..loopexit_crit_edge:                             ; preds = %27
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %11
  br label %29

29:                                               ; preds = %.loopexit, %10
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
  store ptr %0, ptr %6, align 8
  %.not1 = icmp eq ptr %0, %1
  br i1 %.not1, label %12, label %.lr.ph

.lr.ph:                                           ; preds = %3
  br label %8

8:                                                ; preds = %.lr.ph, %8
  %9 = phi ptr [ %0, %.lr.ph ], [ %11, %8 ]
  %10 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %2)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %9, i64 %10)
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %11, ptr %6, align 8
  %.not = icmp eq ptr %11, %1
  br i1 %.not, label %._crit_edge, label %8, !llvm.loop !63

._crit_edge:                                      ; preds = %8
  br label %12

12:                                               ; preds = %._crit_edge, %3
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
  %storemerge1 = getelementptr inbounds i8, ptr %0, i64 -8
  store ptr %storemerge1, ptr %6, align 8
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEclIdPdEEbRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %storemerge1)
  br i1 %9, label %.lr.ph, label %15

.lr.ph:                                           ; preds = %2
  br label %10

10:                                               ; preds = %.lr.ph, %10
  %11 = load ptr, ptr %6, align 8
  %12 = load double, ptr %11, align 8
  %13 = load ptr, ptr %4, align 8
  store double %12, ptr %13, align 8
  store ptr %11, ptr %4, align 8
  %storemerge = getelementptr inbounds i8, ptr %11, i64 -8
  store ptr %storemerge, ptr %6, align 8
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEclIdPdEEbRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %storemerge)
  br i1 %14, label %10, label %._crit_edge, !llvm.loop !64

._crit_edge:                                      ; preds = %10
  br label %15

15:                                               ; preds = %._crit_edge, %2
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
  %9 = ptrtoint ptr %1 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = icmp sgt i64 %11, 128
  br i1 %12, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %13

13:                                               ; preds = %.lr.ph, %18
  %14 = phi ptr [ %1, %.lr.ph ], [ %20, %18 ]
  %15 = phi i64 [ %2, %.lr.ph ], [ %19, %18 ]
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  %.lcssa1 = phi ptr [ %14, %13 ]
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %.lcssa1, ptr noundef %.lcssa1, i8 %3)
  br label %24

18:                                               ; preds = %13
  %19 = add nsw i64 %15, -1
  store i64 %19, ptr %8, align 8
  %20 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %14, i8 %3)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %20, ptr noundef %14, i64 noundef %19, i8 %3)
  store ptr %20, ptr %7, align 8
  %21 = ptrtoint ptr %20 to i64
  %22 = sub i64 %21, %10
  %23 = icmp sgt i64 %22, 128
  br i1 %23, label %13, label %..loopexit_crit_edge, !llvm.loop !65

..loopexit_crit_edge:                             ; preds = %18
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %24

24:                                               ; preds = %.loopexit, %17
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
  store ptr %1, ptr %9, align 8
  %10 = icmp ult ptr %1, %2
  br i1 %10, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %4
  br label %11

11:                                               ; preds = %.lr.ph, %16
  %storemerge1 = phi ptr [ %1, %.lr.ph ], [ %18, %16 ]
  %12 = phi ptr [ %0, %.lr.ph ], [ %17, %16 ]
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %storemerge1, ptr noundef %12)
  %.pre = load ptr, ptr %9, align 8
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load ptr, ptr %7, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %15, ptr noundef %.pre, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi ptr [ %0, %14 ], [ %12, %11 ]
  %18 = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  store ptr %18, ptr %9, align 8
  %19 = icmp ult ptr %18, %2
  br i1 %19, label %11, label %._crit_edge, !llvm.loop !66

._crit_edge:                                      ; preds = %16
  br label %20

20:                                               ; preds = %._crit_edge, %4
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
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = icmp sgt i64 %9, 8
  br i1 %10, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %3
  br label %11

11:                                               ; preds = %.lr.ph, %11
  %12 = phi ptr [ %1, %.lr.ph ], [ %14, %11 ]
  %13 = phi ptr [ %0, %.lr.ph ], [ %.pre, %11 ]
  %14 = getelementptr inbounds i8, ptr %12, i64 -8
  store ptr %14, ptr %5, align 8
  %15 = load ptr, ptr %6, align 8, !nonnull !53
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %13, ptr noundef nonnull %14, ptr noundef nonnull %14, ptr noundef nonnull align 1 dereferenceable(1) %15)
  %.pre = load ptr, ptr %4, align 8
  %16 = ptrtoint ptr %14 to i64
  %17 = ptrtoint ptr %.pre to i64
  %18 = sub i64 %16, %17
  %19 = icmp sgt i64 %18, 8
  br i1 %19, label %11, label %._crit_edge, !llvm.loop !67

._crit_edge:                                      ; preds = %11
  br label %20

20:                                               ; preds = %._crit_edge, %3
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
  br label %24

14:                                               ; preds = %3
  store i64 %11, ptr %6, align 8
  %15 = add nsw i64 %11, -2
  %16 = sdiv i64 %15, 2
  br label %17

17:                                               ; preds = %17, %14
  %storemerge = phi i64 [ %16, %14 ], [ %22, %17 ]
  store i64 %storemerge, ptr %7, align 8
  %18 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge
  %19 = load double, ptr %18, align 8
  %20 = load i8, ptr %2, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %storemerge, i64 noundef %11, double noundef %19, i8 %20)
  %21 = icmp eq i64 %storemerge, 0
  %22 = add nsw i64 %storemerge, -1
  br i1 %21, label %23, label %17, !llvm.loop !68

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23, %13
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
  %14 = add nsw i64 %2, -1
  %15 = sdiv i64 %14, 2
  %16 = icmp slt i64 %1, %15
  br i1 %16, label %.lr.ph, label %36

.lr.ph:                                           ; preds = %5
  br label %17

17:                                               ; preds = %.lr.ph, %28
  %18 = phi i64 [ %1, %.lr.ph ], [ %29, %28 ]
  %19 = phi ptr [ %0, %.lr.ph ], [ %30, %28 ]
  %20 = shl i64 %18, 1
  %21 = add i64 %20, 2
  store i64 %21, ptr %12, align 8
  %22 = getelementptr inbounds [8 x i8], ptr %19, i64 %21
  %23 = getelementptr [8 x i8], ptr %19, i64 %20
  %24 = getelementptr i8, ptr %23, i64 8
  %25 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %22, ptr noundef %24)
  %.pre = load i64, ptr %12, align 8
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = add nsw i64 %.pre, -1
  store i64 %27, ptr %12, align 8
  br label %28

28:                                               ; preds = %26, %17
  %29 = phi i64 [ %27, %26 ], [ %.pre, %17 ]
  %30 = load ptr, ptr %7, align 8
  %31 = getelementptr inbounds [8 x i8], ptr %30, i64 %29
  %32 = load double, ptr %31, align 8
  %33 = load i64, ptr %8, align 8
  %34 = getelementptr inbounds [8 x i8], ptr %30, i64 %33
  store double %32, ptr %34, align 8
  store i64 %29, ptr %8, align 8
  %35 = icmp slt i64 %29, %15
  br i1 %35, label %17, label %._crit_edge, !llvm.loop !69

._crit_edge:                                      ; preds = %28
  %split = phi ptr [ %30, %28 ]
  %split2 = phi i64 [ %29, %28 ]
  br label %36

36:                                               ; preds = %._crit_edge, %5
  %.lcssa1 = phi ptr [ %split, %._crit_edge ], [ %0, %5 ]
  %.lcssa = phi i64 [ %split2, %._crit_edge ], [ %1, %5 ]
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

9:                                                ; preds = %31, %4
  %10 = phi ptr [ %32, %31 ], [ %0, %4 ]
  %11 = load ptr, ptr %8, align 8
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %10, ptr noundef %11)
  br i1 %12, label %.lr.ph, label %18

.lr.ph:                                           ; preds = %9
  br label %13

13:                                               ; preds = %.lr.ph, %13
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %15, ptr %6, align 8
  %16 = load ptr, ptr %8, align 8
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %15, ptr noundef %16)
  br i1 %17, label %13, label %._crit_edge, !llvm.loop !71

._crit_edge:                                      ; preds = %13
  br label %18

18:                                               ; preds = %._crit_edge, %9
  %19 = load ptr, ptr %7, align 8
  %storemerge1 = getelementptr inbounds i8, ptr %19, i64 -8
  store ptr %storemerge1, ptr %7, align 8
  %20 = load ptr, ptr %8, align 8
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %20, ptr noundef nonnull %storemerge1)
  br i1 %21, label %.lr.ph3, label %26

.lr.ph3:                                          ; preds = %18
  br label %22

22:                                               ; preds = %.lr.ph3, %22
  %23 = load ptr, ptr %7, align 8
  %storemerge = getelementptr inbounds i8, ptr %23, i64 -8
  store ptr %storemerge, ptr %7, align 8
  %24 = load ptr, ptr %8, align 8
  %25 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %24, ptr noundef nonnull %storemerge)
  br i1 %25, label %22, label %._crit_edge4, !llvm.loop !72

._crit_edge4:                                     ; preds = %22
  br label %26

26:                                               ; preds = %._crit_edge4, %18
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
  br label %28

10:                                               ; preds = %3
  %storemerge1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %storemerge1, ptr %7, align 8
  %.not2 = icmp eq ptr %storemerge1, %1
  br i1 %.not2, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %10
  br label %11

11:                                               ; preds = %.lr.ph, %26
  %storemerge3 = phi ptr [ %storemerge1, %.lr.ph ], [ %storemerge, %26 ]
  %12 = load ptr, ptr %5, align 8
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull %storemerge3, ptr noundef %12)
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load ptr, ptr %7, align 8
  %16 = load double, ptr %15, align 8
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %19 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %17)
  %20 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %15)
  %21 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %19, ptr noundef %20, ptr noundef nonnull %18)
  store double %16, ptr %17, align 8
  br label %26

22:                                               ; preds = %11
  %23 = load ptr, ptr %7, align 8
  %24 = load i8, ptr %4, align 1
  %25 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %24)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %23, i8 %25)
  br label %26

26:                                               ; preds = %22, %14
  %27 = phi ptr [ %23, %22 ], [ %15, %14 ]
  %.pre = load ptr, ptr %6, align 8
  %storemerge = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr %storemerge, ptr %7, align 8
  %.not = icmp eq ptr %storemerge, %.pre
  br i1 %.not, label %..loopexit_crit_edge, label %11, !llvm.loop !74

..loopexit_crit_edge:                             ; preds = %26
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %10
  br label %28

28:                                               ; preds = %.loopexit, %9
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i8 %2, ptr %4, align 1
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %.not1 = icmp eq ptr %0, %1
  br i1 %.not1, label %11, label %.lr.ph

.lr.ph:                                           ; preds = %3
  br label %7

7:                                                ; preds = %.lr.ph, %7
  %8 = phi ptr [ %0, %.lr.ph ], [ %10, %7 ]
  %9 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %2)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %8, i8 %9)
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %10, ptr %6, align 8
  %.not = icmp eq ptr %10, %1
  br i1 %.not, label %._crit_edge, label %7, !llvm.loop !75

._crit_edge:                                      ; preds = %7
  br label %11

11:                                               ; preds = %._crit_edge, %3
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
  %storemerge1 = getelementptr inbounds i8, ptr %0, i64 -8
  store ptr %storemerge1, ptr %6, align 8
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %storemerge1)
  br i1 %8, label %.lr.ph, label %14

.lr.ph:                                           ; preds = %2
  br label %9

9:                                                ; preds = %.lr.ph, %9
  %10 = load ptr, ptr %6, align 8
  %11 = load double, ptr %10, align 8
  %12 = load ptr, ptr %4, align 8
  store double %11, ptr %12, align 8
  store ptr %10, ptr %4, align 8
  %storemerge = getelementptr inbounds i8, ptr %10, i64 -8
  store ptr %storemerge, ptr %6, align 8
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %storemerge)
  br i1 %13, label %9, label %._crit_edge, !llvm.loop !76

._crit_edge:                                      ; preds = %9
  br label %14

14:                                               ; preds = %._crit_edge, %2
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
  %9 = ptrtoint ptr %1 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = icmp sgt i64 %11, 128
  br i1 %12, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %13

13:                                               ; preds = %.lr.ph, %18
  %14 = phi ptr [ %1, %.lr.ph ], [ %20, %18 ]
  %15 = phi i64 [ %2, %.lr.ph ], [ %19, %18 ]
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  %.lcssa1 = phi ptr [ %14, %13 ]
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %.lcssa1, ptr noundef %.lcssa1, i8 %3)
  br label %24

18:                                               ; preds = %13
  %19 = add nsw i64 %15, -1
  store i64 %19, ptr %8, align 8
  %20 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %14, i8 %3)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %20, ptr noundef %14, i64 noundef %19, i8 %3)
  store ptr %20, ptr %7, align 8
  %21 = ptrtoint ptr %20 to i64
  %22 = sub i64 %21, %10
  %23 = icmp sgt i64 %22, 128
  br i1 %23, label %13, label %..loopexit_crit_edge, !llvm.loop !77

..loopexit_crit_edge:                             ; preds = %18
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %24

24:                                               ; preds = %.loopexit, %17
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
  store ptr %1, ptr %9, align 8
  %10 = icmp ult ptr %1, %2
  br i1 %10, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %4
  br label %11

11:                                               ; preds = %.lr.ph, %16
  %storemerge1 = phi ptr [ %1, %.lr.ph ], [ %18, %16 ]
  %12 = phi ptr [ %0, %.lr.ph ], [ %17, %16 ]
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %storemerge1, ptr noundef %12)
  %.pre = load ptr, ptr %9, align 8
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load ptr, ptr %7, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %15, ptr noundef %.pre, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi ptr [ %0, %14 ], [ %12, %11 ]
  %18 = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  store ptr %18, ptr %9, align 8
  %19 = icmp ult ptr %18, %2
  br i1 %19, label %11, label %._crit_edge, !llvm.loop !78

._crit_edge:                                      ; preds = %16
  br label %20

20:                                               ; preds = %._crit_edge, %4
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
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = icmp sgt i64 %9, 8
  br i1 %10, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %3
  br label %11

11:                                               ; preds = %.lr.ph, %11
  %12 = phi ptr [ %1, %.lr.ph ], [ %14, %11 ]
  %13 = phi ptr [ %0, %.lr.ph ], [ %.pre, %11 ]
  %14 = getelementptr inbounds i8, ptr %12, i64 -8
  store ptr %14, ptr %5, align 8
  %15 = load ptr, ptr %6, align 8, !nonnull !53
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %13, ptr noundef nonnull %14, ptr noundef nonnull %14, ptr noundef nonnull align 1 dereferenceable(1) %15)
  %.pre = load ptr, ptr %4, align 8
  %16 = ptrtoint ptr %14 to i64
  %17 = ptrtoint ptr %.pre to i64
  %18 = sub i64 %16, %17
  %19 = icmp sgt i64 %18, 8
  br i1 %19, label %11, label %._crit_edge, !llvm.loop !79

._crit_edge:                                      ; preds = %11
  br label %20

20:                                               ; preds = %._crit_edge, %3
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
  br label %24

14:                                               ; preds = %3
  store i64 %11, ptr %6, align 8
  %15 = add nsw i64 %11, -2
  %16 = sdiv i64 %15, 2
  br label %17

17:                                               ; preds = %17, %14
  %storemerge = phi i64 [ %16, %14 ], [ %22, %17 ]
  store i64 %storemerge, ptr %7, align 8
  %18 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge
  %19 = load double, ptr %18, align 8
  %20 = load i8, ptr %2, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %storemerge, i64 noundef %11, double noundef %19, i8 %20)
  %21 = icmp eq i64 %storemerge, 0
  %22 = add nsw i64 %storemerge, -1
  br i1 %21, label %23, label %17, !llvm.loop !80

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23, %13
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
  %14 = add nsw i64 %2, -1
  %15 = sdiv i64 %14, 2
  %16 = icmp slt i64 %1, %15
  br i1 %16, label %.lr.ph, label %36

.lr.ph:                                           ; preds = %5
  br label %17

17:                                               ; preds = %.lr.ph, %28
  %18 = phi i64 [ %1, %.lr.ph ], [ %29, %28 ]
  %19 = phi ptr [ %0, %.lr.ph ], [ %30, %28 ]
  %20 = shl i64 %18, 1
  %21 = add i64 %20, 2
  store i64 %21, ptr %12, align 8
  %22 = getelementptr inbounds [8 x i8], ptr %19, i64 %21
  %23 = getelementptr [8 x i8], ptr %19, i64 %20
  %24 = getelementptr i8, ptr %23, i64 8
  %25 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %22, ptr noundef %24)
  %.pre = load i64, ptr %12, align 8
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = add nsw i64 %.pre, -1
  store i64 %27, ptr %12, align 8
  br label %28

28:                                               ; preds = %26, %17
  %29 = phi i64 [ %27, %26 ], [ %.pre, %17 ]
  %30 = load ptr, ptr %7, align 8
  %31 = getelementptr inbounds [8 x i8], ptr %30, i64 %29
  %32 = load double, ptr %31, align 8
  %33 = load i64, ptr %8, align 8
  %34 = getelementptr inbounds [8 x i8], ptr %30, i64 %33
  store double %32, ptr %34, align 8
  store i64 %29, ptr %8, align 8
  %35 = icmp slt i64 %29, %15
  br i1 %35, label %17, label %._crit_edge, !llvm.loop !81

._crit_edge:                                      ; preds = %28
  %split = phi ptr [ %30, %28 ]
  %split2 = phi i64 [ %29, %28 ]
  br label %36

36:                                               ; preds = %._crit_edge, %5
  %.lcssa1 = phi ptr [ %split, %._crit_edge ], [ %0, %5 ]
  %.lcssa = phi i64 [ %split2, %._crit_edge ], [ %1, %5 ]
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

9:                                                ; preds = %31, %4
  %10 = phi ptr [ %32, %31 ], [ %0, %4 ]
  %11 = load ptr, ptr %8, align 8
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %10, ptr noundef %11)
  br i1 %12, label %.lr.ph, label %18

.lr.ph:                                           ; preds = %9
  br label %13

13:                                               ; preds = %.lr.ph, %13
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %15, ptr %6, align 8
  %16 = load ptr, ptr %8, align 8
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %15, ptr noundef %16)
  br i1 %17, label %13, label %._crit_edge, !llvm.loop !83

._crit_edge:                                      ; preds = %13
  br label %18

18:                                               ; preds = %._crit_edge, %9
  %19 = load ptr, ptr %7, align 8
  %storemerge1 = getelementptr inbounds i8, ptr %19, i64 -8
  store ptr %storemerge1, ptr %7, align 8
  %20 = load ptr, ptr %8, align 8
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %20, ptr noundef nonnull %storemerge1)
  br i1 %21, label %.lr.ph3, label %26

.lr.ph3:                                          ; preds = %18
  br label %22

22:                                               ; preds = %.lr.ph3, %22
  %23 = load ptr, ptr %7, align 8
  %storemerge = getelementptr inbounds i8, ptr %23, i64 -8
  store ptr %storemerge, ptr %7, align 8
  %24 = load ptr, ptr %8, align 8
  %25 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %24, ptr noundef nonnull %storemerge)
  br i1 %25, label %22, label %._crit_edge4, !llvm.loop !84

._crit_edge4:                                     ; preds = %22
  br label %26

26:                                               ; preds = %._crit_edge4, %18
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
  br label %28

10:                                               ; preds = %3
  %storemerge1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %storemerge1, ptr %7, align 8
  %.not2 = icmp eq ptr %storemerge1, %1
  br i1 %.not2, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %10
  br label %11

11:                                               ; preds = %.lr.ph, %26
  %storemerge3 = phi ptr [ %storemerge1, %.lr.ph ], [ %storemerge, %26 ]
  %12 = load ptr, ptr %5, align 8
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull %storemerge3, ptr noundef %12)
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load ptr, ptr %7, align 8
  %16 = load double, ptr %15, align 8
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %19 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %17)
  %20 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %15)
  %21 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %19, ptr noundef %20, ptr noundef nonnull %18)
  store double %16, ptr %17, align 8
  br label %26

22:                                               ; preds = %11
  %23 = load ptr, ptr %7, align 8
  %24 = load i8, ptr %4, align 1
  %25 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %24)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %23, i8 %25)
  br label %26

26:                                               ; preds = %22, %14
  %27 = phi ptr [ %23, %22 ], [ %15, %14 ]
  %.pre = load ptr, ptr %6, align 8
  %storemerge = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr %storemerge, ptr %7, align 8
  %.not = icmp eq ptr %storemerge, %.pre
  br i1 %.not, label %..loopexit_crit_edge, label %11, !llvm.loop !86

..loopexit_crit_edge:                             ; preds = %26
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %10
  br label %28

28:                                               ; preds = %.loopexit, %9
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i8 %2, ptr %4, align 1
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %.not1 = icmp eq ptr %0, %1
  br i1 %.not1, label %11, label %.lr.ph

.lr.ph:                                           ; preds = %3
  br label %7

7:                                                ; preds = %.lr.ph, %7
  %8 = phi ptr [ %0, %.lr.ph ], [ %10, %7 ]
  %9 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %2)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %8, i8 %9)
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %10, ptr %6, align 8
  %.not = icmp eq ptr %10, %1
  br i1 %.not, label %._crit_edge, label %7, !llvm.loop !87

._crit_edge:                                      ; preds = %7
  br label %11

11:                                               ; preds = %._crit_edge, %3
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
  %storemerge1 = getelementptr inbounds i8, ptr %0, i64 -8
  store ptr %storemerge1, ptr %6, align 8
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %storemerge1)
  br i1 %8, label %.lr.ph, label %14

.lr.ph:                                           ; preds = %2
  br label %9

9:                                                ; preds = %.lr.ph, %9
  %10 = load ptr, ptr %6, align 8
  %11 = load double, ptr %10, align 8
  %12 = load ptr, ptr %4, align 8
  store double %11, ptr %12, align 8
  store ptr %10, ptr %4, align 8
  %storemerge = getelementptr inbounds i8, ptr %10, i64 -8
  store ptr %storemerge, ptr %6, align 8
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %storemerge)
  br i1 %13, label %9, label %._crit_edge, !llvm.loop !88

._crit_edge:                                      ; preds = %9
  br label %14

14:                                               ; preds = %._crit_edge, %2
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
  %9 = ptrtoint ptr %1 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = icmp sgt i64 %11, 128
  br i1 %12, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %13

13:                                               ; preds = %.lr.ph, %18
  %14 = phi ptr [ %1, %.lr.ph ], [ %20, %18 ]
  %15 = phi i64 [ %2, %.lr.ph ], [ %19, %18 ]
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  %.lcssa1 = phi ptr [ %14, %13 ]
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %.lcssa1, ptr noundef %.lcssa1, i8 %3)
  br label %24

18:                                               ; preds = %13
  %19 = add nsw i64 %15, -1
  store i64 %19, ptr %8, align 8
  %20 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %14, i8 %3)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %20, ptr noundef %14, i64 noundef %19, i8 %3)
  store ptr %20, ptr %7, align 8
  %21 = ptrtoint ptr %20 to i64
  %22 = sub i64 %21, %10
  %23 = icmp sgt i64 %22, 128
  br i1 %23, label %13, label %..loopexit_crit_edge, !llvm.loop !89

..loopexit_crit_edge:                             ; preds = %18
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %24

24:                                               ; preds = %.loopexit, %17
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
  store ptr %1, ptr %9, align 8
  %10 = icmp ult ptr %1, %2
  br i1 %10, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %4
  br label %11

11:                                               ; preds = %.lr.ph, %16
  %storemerge1 = phi ptr [ %1, %.lr.ph ], [ %18, %16 ]
  %12 = phi ptr [ %0, %.lr.ph ], [ %17, %16 ]
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %storemerge1, ptr noundef %12)
  %.pre = load ptr, ptr %9, align 8
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load ptr, ptr %7, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %15, ptr noundef %.pre, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi ptr [ %0, %14 ], [ %12, %11 ]
  %18 = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  store ptr %18, ptr %9, align 8
  %19 = icmp ult ptr %18, %2
  br i1 %19, label %11, label %._crit_edge, !llvm.loop !90

._crit_edge:                                      ; preds = %16
  br label %20

20:                                               ; preds = %._crit_edge, %4
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
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = icmp sgt i64 %9, 8
  br i1 %10, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %3
  br label %11

11:                                               ; preds = %.lr.ph, %11
  %12 = phi ptr [ %1, %.lr.ph ], [ %14, %11 ]
  %13 = phi ptr [ %0, %.lr.ph ], [ %.pre, %11 ]
  %14 = getelementptr inbounds i8, ptr %12, i64 -8
  store ptr %14, ptr %5, align 8
  %15 = load ptr, ptr %6, align 8, !nonnull !53
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %13, ptr noundef nonnull %14, ptr noundef nonnull %14, ptr noundef nonnull align 1 dereferenceable(1) %15)
  %.pre = load ptr, ptr %4, align 8
  %16 = ptrtoint ptr %14 to i64
  %17 = ptrtoint ptr %.pre to i64
  %18 = sub i64 %16, %17
  %19 = icmp sgt i64 %18, 8
  br i1 %19, label %11, label %._crit_edge, !llvm.loop !91

._crit_edge:                                      ; preds = %11
  br label %20

20:                                               ; preds = %._crit_edge, %3
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
  br label %24

14:                                               ; preds = %3
  store i64 %11, ptr %6, align 8
  %15 = add nsw i64 %11, -2
  %16 = sdiv i64 %15, 2
  br label %17

17:                                               ; preds = %17, %14
  %storemerge = phi i64 [ %16, %14 ], [ %22, %17 ]
  store i64 %storemerge, ptr %7, align 8
  %18 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge
  %19 = load double, ptr %18, align 8
  %20 = load i8, ptr %2, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %storemerge, i64 noundef %11, double noundef %19, i8 %20)
  %21 = icmp eq i64 %storemerge, 0
  %22 = add nsw i64 %storemerge, -1
  br i1 %21, label %23, label %17, !llvm.loop !92

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23, %13
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
  %14 = add nsw i64 %2, -1
  %15 = sdiv i64 %14, 2
  %16 = icmp slt i64 %1, %15
  br i1 %16, label %.lr.ph, label %36

.lr.ph:                                           ; preds = %5
  br label %17

17:                                               ; preds = %.lr.ph, %28
  %18 = phi i64 [ %1, %.lr.ph ], [ %29, %28 ]
  %19 = phi ptr [ %0, %.lr.ph ], [ %30, %28 ]
  %20 = shl i64 %18, 1
  %21 = add i64 %20, 2
  store i64 %21, ptr %12, align 8
  %22 = getelementptr inbounds [8 x i8], ptr %19, i64 %21
  %23 = getelementptr [8 x i8], ptr %19, i64 %20
  %24 = getelementptr i8, ptr %23, i64 8
  %25 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %22, ptr noundef %24)
  %.pre = load i64, ptr %12, align 8
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = add nsw i64 %.pre, -1
  store i64 %27, ptr %12, align 8
  br label %28

28:                                               ; preds = %26, %17
  %29 = phi i64 [ %27, %26 ], [ %.pre, %17 ]
  %30 = load ptr, ptr %7, align 8
  %31 = getelementptr inbounds [8 x i8], ptr %30, i64 %29
  %32 = load double, ptr %31, align 8
  %33 = load i64, ptr %8, align 8
  %34 = getelementptr inbounds [8 x i8], ptr %30, i64 %33
  store double %32, ptr %34, align 8
  store i64 %29, ptr %8, align 8
  %35 = icmp slt i64 %29, %15
  br i1 %35, label %17, label %._crit_edge, !llvm.loop !93

._crit_edge:                                      ; preds = %28
  %split = phi ptr [ %30, %28 ]
  %split2 = phi i64 [ %29, %28 ]
  br label %36

36:                                               ; preds = %._crit_edge, %5
  %.lcssa1 = phi ptr [ %split, %._crit_edge ], [ %0, %5 ]
  %.lcssa = phi i64 [ %split2, %._crit_edge ], [ %1, %5 ]
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

9:                                                ; preds = %31, %4
  %10 = phi ptr [ %32, %31 ], [ %0, %4 ]
  %11 = load ptr, ptr %8, align 8
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %10, ptr noundef %11)
  br i1 %12, label %.lr.ph, label %18

.lr.ph:                                           ; preds = %9
  br label %13

13:                                               ; preds = %.lr.ph, %13
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %15, ptr %6, align 8
  %16 = load ptr, ptr %8, align 8
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %15, ptr noundef %16)
  br i1 %17, label %13, label %._crit_edge, !llvm.loop !95

._crit_edge:                                      ; preds = %13
  br label %18

18:                                               ; preds = %._crit_edge, %9
  %19 = load ptr, ptr %7, align 8
  %storemerge1 = getelementptr inbounds i8, ptr %19, i64 -8
  store ptr %storemerge1, ptr %7, align 8
  %20 = load ptr, ptr %8, align 8
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %20, ptr noundef nonnull %storemerge1)
  br i1 %21, label %.lr.ph3, label %26

.lr.ph3:                                          ; preds = %18
  br label %22

22:                                               ; preds = %.lr.ph3, %22
  %23 = load ptr, ptr %7, align 8
  %storemerge = getelementptr inbounds i8, ptr %23, i64 -8
  store ptr %storemerge, ptr %7, align 8
  %24 = load ptr, ptr %8, align 8
  %25 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %24, ptr noundef nonnull %storemerge)
  br i1 %25, label %22, label %._crit_edge4, !llvm.loop !96

._crit_edge4:                                     ; preds = %22
  br label %26

26:                                               ; preds = %._crit_edge4, %18
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
  br label %28

10:                                               ; preds = %3
  %storemerge1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %storemerge1, ptr %7, align 8
  %.not2 = icmp eq ptr %storemerge1, %1
  br i1 %.not2, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %10
  br label %11

11:                                               ; preds = %.lr.ph, %26
  %storemerge3 = phi ptr [ %storemerge1, %.lr.ph ], [ %storemerge, %26 ]
  %12 = load ptr, ptr %5, align 8
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull %storemerge3, ptr noundef %12)
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load ptr, ptr %7, align 8
  %16 = load double, ptr %15, align 8
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %19 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %17)
  %20 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %15)
  %21 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %19, ptr noundef %20, ptr noundef nonnull %18)
  store double %16, ptr %17, align 8
  br label %26

22:                                               ; preds = %11
  %23 = load ptr, ptr %7, align 8
  %24 = load i8, ptr %4, align 1
  %25 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %24)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %23, i8 %25)
  br label %26

26:                                               ; preds = %22, %14
  %27 = phi ptr [ %23, %22 ], [ %15, %14 ]
  %.pre = load ptr, ptr %6, align 8
  %storemerge = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr %storemerge, ptr %7, align 8
  %.not = icmp eq ptr %storemerge, %.pre
  br i1 %.not, label %..loopexit_crit_edge, label %11, !llvm.loop !98

..loopexit_crit_edge:                             ; preds = %26
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %10
  br label %28

28:                                               ; preds = %.loopexit, %9
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i8 %2, ptr %4, align 1
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %.not1 = icmp eq ptr %0, %1
  br i1 %.not1, label %11, label %.lr.ph

.lr.ph:                                           ; preds = %3
  br label %7

7:                                                ; preds = %.lr.ph, %7
  %8 = phi ptr [ %0, %.lr.ph ], [ %10, %7 ]
  %9 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %2)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %8, i8 %9)
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %10, ptr %6, align 8
  %.not = icmp eq ptr %10, %1
  br i1 %.not, label %._crit_edge, label %7, !llvm.loop !99

._crit_edge:                                      ; preds = %7
  br label %11

11:                                               ; preds = %._crit_edge, %3
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
  %storemerge1 = getelementptr inbounds i8, ptr %0, i64 -8
  store ptr %storemerge1, ptr %6, align 8
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %storemerge1)
  br i1 %8, label %.lr.ph, label %14

.lr.ph:                                           ; preds = %2
  br label %9

9:                                                ; preds = %.lr.ph, %9
  %10 = load ptr, ptr %6, align 8
  %11 = load double, ptr %10, align 8
  %12 = load ptr, ptr %4, align 8
  store double %11, ptr %12, align 8
  store ptr %10, ptr %4, align 8
  %storemerge = getelementptr inbounds i8, ptr %10, i64 -8
  store ptr %storemerge, ptr %6, align 8
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %storemerge)
  br i1 %13, label %9, label %._crit_edge, !llvm.loop !100

._crit_edge:                                      ; preds = %9
  br label %14

14:                                               ; preds = %._crit_edge, %2
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
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = icmp sgt i64 %10, 128
  br i1 %11, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %12

12:                                               ; preds = %.lr.ph, %17
  %13 = phi ptr [ %1, %.lr.ph ], [ %19, %17 ]
  %14 = phi i64 [ %2, %.lr.ph ], [ %18, %17 ]
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  %.lcssa1 = phi ptr [ %13, %12 ]
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %.lcssa1, ptr noundef %.lcssa1, i8 undef)
  br label %23

17:                                               ; preds = %12
  %18 = add nsw i64 %14, -1
  store i64 %18, ptr %7, align 8
  %19 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(ptr noundef %0, ptr noundef %13, i8 undef)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %19, ptr noundef %13, i64 noundef %18, i8 undef)
  store ptr %19, ptr %6, align 8
  %20 = ptrtoint ptr %19 to i64
  %21 = sub i64 %20, %9
  %22 = icmp sgt i64 %21, 128
  br i1 %22, label %12, label %..loopexit_crit_edge, !llvm.loop !101

..loopexit_crit_edge:                             ; preds = %17
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %23

23:                                               ; preds = %.loopexit, %16
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
  store ptr %1, ptr %9, align 8
  %10 = icmp ult ptr %1, %2
  br i1 %10, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %4
  br label %11

11:                                               ; preds = %.lr.ph, %16
  %storemerge1 = phi ptr [ %1, %.lr.ph ], [ %18, %16 ]
  %12 = phi ptr [ %0, %.lr.ph ], [ %17, %16 ]
  %13 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %storemerge1, ptr noundef %12)
  %.pre = load ptr, ptr %9, align 8
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load ptr, ptr %7, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %0, ptr noundef %15, ptr noundef %.pre, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi ptr [ %0, %14 ], [ %12, %11 ]
  %18 = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  store ptr %18, ptr %9, align 8
  %19 = icmp ult ptr %18, %2
  br i1 %19, label %11, label %._crit_edge, !llvm.loop !102

._crit_edge:                                      ; preds = %16
  br label %20

20:                                               ; preds = %._crit_edge, %4
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
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = icmp sgt i64 %9, 8
  br i1 %10, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %3
  br label %11

11:                                               ; preds = %.lr.ph, %11
  %12 = phi ptr [ %1, %.lr.ph ], [ %14, %11 ]
  %13 = phi ptr [ %0, %.lr.ph ], [ %.pre, %11 ]
  %14 = getelementptr inbounds i8, ptr %12, i64 -8
  store ptr %14, ptr %5, align 8
  %15 = load ptr, ptr %6, align 8, !nonnull !53
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %13, ptr noundef nonnull %14, ptr noundef nonnull %14, ptr noundef nonnull align 1 dereferenceable(1) %15)
  %.pre = load ptr, ptr %4, align 8
  %16 = ptrtoint ptr %14 to i64
  %17 = ptrtoint ptr %.pre to i64
  %18 = sub i64 %16, %17
  %19 = icmp sgt i64 %18, 8
  br i1 %19, label %11, label %._crit_edge, !llvm.loop !103

._crit_edge:                                      ; preds = %11
  br label %20

20:                                               ; preds = %._crit_edge, %3
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
  br label %21

12:                                               ; preds = %3
  store i64 %9, ptr %5, align 8
  %13 = add nsw i64 %9, -2
  %14 = sdiv i64 %13, 2
  br label %15

15:                                               ; preds = %15, %12
  %storemerge = phi i64 [ %14, %12 ], [ %19, %15 ]
  %16 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge
  %17 = load double, ptr %16, align 8
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %0, i64 noundef %storemerge, i64 noundef %9, double noundef %17, i8 undef)
  %18 = icmp eq i64 %storemerge, 0
  %19 = add nsw i64 %storemerge, -1
  br i1 %18, label %20, label %15, !llvm.loop !104

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %20, %11
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
  %14 = add nsw i64 %2, -1
  %15 = sdiv i64 %14, 2
  %16 = icmp slt i64 %1, %15
  br i1 %16, label %.lr.ph, label %36

.lr.ph:                                           ; preds = %5
  br label %17

17:                                               ; preds = %.lr.ph, %28
  %18 = phi i64 [ %1, %.lr.ph ], [ %29, %28 ]
  %19 = phi ptr [ %0, %.lr.ph ], [ %30, %28 ]
  %20 = shl i64 %18, 1
  %21 = add i64 %20, 2
  store i64 %21, ptr %12, align 8
  %22 = getelementptr inbounds [8 x i8], ptr %19, i64 %21
  %23 = getelementptr [8 x i8], ptr %19, i64 %20
  %24 = getelementptr i8, ptr %23, i64 8
  %25 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %22, ptr noundef %24)
  %.pre = load i64, ptr %12, align 8
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = add nsw i64 %.pre, -1
  store i64 %27, ptr %12, align 8
  br label %28

28:                                               ; preds = %26, %17
  %29 = phi i64 [ %27, %26 ], [ %.pre, %17 ]
  %30 = load ptr, ptr %7, align 8
  %31 = getelementptr inbounds [8 x i8], ptr %30, i64 %29
  %32 = load double, ptr %31, align 8
  %33 = load i64, ptr %8, align 8
  %34 = getelementptr inbounds [8 x i8], ptr %30, i64 %33
  store double %32, ptr %34, align 8
  store i64 %29, ptr %8, align 8
  %35 = icmp slt i64 %29, %15
  br i1 %35, label %17, label %._crit_edge, !llvm.loop !105

._crit_edge:                                      ; preds = %28
  %split = phi ptr [ %30, %28 ]
  %split2 = phi i64 [ %29, %28 ]
  br label %36

36:                                               ; preds = %._crit_edge, %5
  %.lcssa1 = phi ptr [ %split, %._crit_edge ], [ %0, %5 ]
  %.lcssa = phi i64 [ %split2, %._crit_edge ], [ %1, %5 ]
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

9:                                                ; preds = %31, %4
  %10 = phi ptr [ %32, %31 ], [ %0, %4 ]
  %11 = load ptr, ptr %8, align 8
  %12 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %10, ptr noundef %11)
  br i1 %12, label %.lr.ph, label %18

.lr.ph:                                           ; preds = %9
  br label %13

13:                                               ; preds = %.lr.ph, %13
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %15, ptr %6, align 8
  %16 = load ptr, ptr %8, align 8
  %17 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %15, ptr noundef %16)
  br i1 %17, label %13, label %._crit_edge, !llvm.loop !107

._crit_edge:                                      ; preds = %13
  br label %18

18:                                               ; preds = %._crit_edge, %9
  %19 = load ptr, ptr %7, align 8
  %storemerge1 = getelementptr inbounds i8, ptr %19, i64 -8
  store ptr %storemerge1, ptr %7, align 8
  %20 = load ptr, ptr %8, align 8
  %21 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %20, ptr noundef nonnull %storemerge1)
  br i1 %21, label %.lr.ph3, label %26

.lr.ph3:                                          ; preds = %18
  br label %22

22:                                               ; preds = %.lr.ph3, %22
  %23 = load ptr, ptr %7, align 8
  %storemerge = getelementptr inbounds i8, ptr %23, i64 -8
  store ptr %storemerge, ptr %7, align 8
  %24 = load ptr, ptr %8, align 8
  %25 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %24, ptr noundef nonnull %storemerge)
  br i1 %25, label %22, label %._crit_edge4, !llvm.loop !108

._crit_edge4:                                     ; preds = %22
  br label %26

26:                                               ; preds = %._crit_edge4, %18
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
  br label %27

10:                                               ; preds = %3
  %storemerge1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %storemerge1, ptr %7, align 8
  %.not2 = icmp eq ptr %storemerge1, %1
  br i1 %.not2, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %10
  br label %11

11:                                               ; preds = %.lr.ph, %25
  %storemerge3 = phi ptr [ %storemerge1, %.lr.ph ], [ %storemerge, %25 ]
  %12 = load ptr, ptr %5, align 8
  %13 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull %storemerge3, ptr noundef %12)
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load ptr, ptr %7, align 8
  %16 = load double, ptr %15, align 8
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %19 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %17)
  %20 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %15)
  %21 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %19, ptr noundef %20, ptr noundef nonnull %18)
  store double %16, ptr %17, align 8
  br label %25

22:                                               ; preds = %11
  %23 = load ptr, ptr %7, align 8
  %24 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 undef)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %23, i8 undef)
  br label %25

25:                                               ; preds = %22, %14
  %26 = phi ptr [ %23, %22 ], [ %15, %14 ]
  %.pre = load ptr, ptr %6, align 8
  %storemerge = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %storemerge, ptr %7, align 8
  %.not = icmp eq ptr %storemerge, %.pre
  br i1 %.not, label %..loopexit_crit_edge, label %11, !llvm.loop !110

..loopexit_crit_edge:                             ; preds = %25
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %10
  br label %27

27:                                               ; preds = %.loopexit, %9
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8
  store ptr %0, ptr %5, align 8
  %.not1 = icmp eq ptr %0, %1
  br i1 %.not1, label %10, label %.lr.ph

.lr.ph:                                           ; preds = %3
  br label %6

6:                                                ; preds = %.lr.ph, %6
  %7 = phi ptr [ %0, %.lr.ph ], [ %9, %6 ]
  %8 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 undef)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %7, i8 undef)
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %9, ptr %5, align 8
  %.not = icmp eq ptr %9, %1
  br i1 %.not, label %._crit_edge, label %6, !llvm.loop !111

._crit_edge:                                      ; preds = %6
  br label %10

10:                                               ; preds = %._crit_edge, %3
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
  %storemerge1 = getelementptr inbounds i8, ptr %0, i64 -8
  store ptr %storemerge1, ptr %6, align 8
  %8 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %storemerge1)
  br i1 %8, label %.lr.ph, label %14

.lr.ph:                                           ; preds = %2
  br label %9

9:                                                ; preds = %.lr.ph, %9
  %10 = load ptr, ptr %6, align 8
  %11 = load double, ptr %10, align 8
  %12 = load ptr, ptr %4, align 8
  store double %11, ptr %12, align 8
  store ptr %10, ptr %4, align 8
  %storemerge = getelementptr inbounds i8, ptr %10, i64 -8
  store ptr %storemerge, ptr %6, align 8
  %13 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %storemerge)
  br i1 %13, label %9, label %._crit_edge, !llvm.loop !112

._crit_edge:                                      ; preds = %9
  br label %14

14:                                               ; preds = %._crit_edge, %2
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
