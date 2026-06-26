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
  %3 = load ptr, ptr @results, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr @current_test, align 4
  %7 = load i32, ptr @allocated_results, align 4
  %.not = icmp slt i32 %6, %7
  br i1 %.not, label %20, label %8

8:                                                ; preds = %5, %2
  %9 = load i32, ptr @allocated_results, align 4
  %10 = add nsw i32 %9, 10
  store i32 %10, ptr @allocated_results, align 4
  %11 = load ptr, ptr @results, align 8
  %12 = sext i32 %10 to i64
  %13 = shl nsw i64 %12, 4
  %14 = call ptr @realloc(ptr noundef %11, i64 noundef %13) #13
  store ptr %14, ptr @results, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = load i32, ptr @allocated_results, align 4
  %18 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str, i32 noundef %17)
  call void @exit(i32 noundef -1) #14
  unreachable

19:                                               ; preds = %8
  br label %20

20:                                               ; preds = %19, %5
  %21 = load ptr, ptr @results, align 8
  %22 = load i32, ptr @current_test, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [16 x i8], ptr %21, i64 %23
  store double %0, ptr %24, align 8
  %25 = load ptr, ptr @results, align 8
  %26 = sext i32 %22 to i64
  %27 = getelementptr inbounds [16 x i8], ptr %25, i64 %26
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr %1, ptr %28, align 8
  %29 = load i32, ptr @current_test, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr @current_test, align 4
  ret void
}

; Function Attrs: allocsize(1)
declare dso_local ptr @realloc(ptr noundef, i64 noundef) #1

declare dso_local noundef i32 @__mingw_printf(ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z9summarizePKciiii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  br label %6

6:                                                ; preds = %20, %5
  %indvars.iv = phi i64 [ %indvars.iv.next, %20 ], [ 0, %5 ]
  %.0 = phi i32 [ 12, %5 ], [ %.1, %20 ]
  %7 = load i32, ptr @current_test, align 4
  %8 = sext i32 %7 to i64
  %9 = icmp slt i64 %indvars.iv, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = load ptr, ptr @results, align 8
  %12 = getelementptr inbounds [16 x i8], ptr %11, i64 %indvars.iv
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %14 = load ptr, ptr %13, align 8
  %15 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14) #15
  %16 = trunc i64 %15 to i32
  %17 = icmp slt i32 %.0, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %18, %10
  %.1 = phi i32 [ %16, %18 ], [ %.0, %10 ]
  br label %20

20:                                               ; preds = %19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %6, !llvm.loop !7

21:                                               ; preds = %6
  %.0.lcssa = phi i32 [ %.0, %6 ]
  %22 = sitofp i32 %1 to double
  %23 = sitofp i32 %2 to double
  %24 = fmul nnan double %22, %23
  %25 = fdiv double %24, 1.000000e+06
  %26 = add nsw i32 %.0.lcssa, -12
  %27 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.1, i32 noundef %26, ptr noundef nonnull @.str.2)
  %28 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.3, i32 noundef %.0.lcssa, ptr noundef nonnull @.str.2)
  br label %29

29:                                               ; preds = %51, %21
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %51 ], [ 0, %21 ]
  %30 = load i32, ptr @current_test, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp slt i64 %indvars.iv4, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %29
  %34 = load ptr, ptr @results, align 8
  %35 = getelementptr inbounds [16 x i8], ptr %34, i64 %indvars.iv4
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %37 = load ptr, ptr %36, align 8
  %38 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %37) #15
  %39 = trunc i64 %38 to i32
  %40 = sub i32 %.0.lcssa, %39
  %41 = load ptr, ptr @results, align 8
  %42 = getelementptr inbounds [16 x i8], ptr %41, i64 %indvars.iv4
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 8
  %44 = load ptr, ptr %43, align 8
  %45 = load double, ptr %42, align 8
  %46 = fdiv double %25, %45
  %47 = load double, ptr %41, align 8
  %48 = fdiv double %45, %47
  %49 = trunc nuw nsw i64 %indvars.iv4 to i32
  %50 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.4, i32 noundef %49, i32 noundef %40, ptr noundef nonnull @.str.5, ptr noundef %44, double noundef %45, double noundef %46, double noundef %48)
  br label %51

51:                                               ; preds = %33
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  br label %29, !llvm.loop !9

52:                                               ; preds = %29
  br label %53

53:                                               ; preds = %62, %52
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %62 ], [ 0, %52 ]
  %.02 = phi double [ 0.000000e+00, %52 ], [ %61, %62 ]
  %54 = load i32, ptr @current_test, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %indvars.iv7, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load ptr, ptr @results, align 8
  %59 = getelementptr inbounds [16 x i8], ptr %58, i64 %indvars.iv7
  %60 = load double, ptr %59, align 8
  %61 = fadd double %.02, %60
  br label %62

62:                                               ; preds = %57
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  br label %53, !llvm.loop !10

63:                                               ; preds = %53
  %.02.lcssa = phi double [ %.02, %53 ]
  %64 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.6, ptr noundef %0, double noundef %.02.lcssa)
  %65 = load i32, ptr @current_test, align 4
  %66 = icmp sgt i32 %65, 1
  br i1 %66, label %67, label %88

67:                                               ; preds = %63
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %88, label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %81, %68
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %81 ], [ 1, %68 ]
  %.01 = phi double [ 0.000000e+00, %68 ], [ %80, %81 ]
  %70 = load i32, ptr @current_test, align 4
  %71 = sext i32 %70 to i64
  %72 = icmp slt i64 %indvars.iv10, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %69
  %74 = load ptr, ptr @results, align 8
  %75 = getelementptr inbounds [16 x i8], ptr %74, i64 %indvars.iv10
  %76 = load double, ptr %75, align 8
  %77 = load double, ptr %74, align 8
  %78 = fdiv double %76, %77
  %79 = call double @log(double noundef %78) #15
  %80 = fadd double %.01, %79
  br label %81

81:                                               ; preds = %73
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %69, !llvm.loop !11

82:                                               ; preds = %69
  %.01.lcssa = phi double [ %.01, %69 ]
  %.lcssa = phi i32 [ %70, %69 ]
  %83 = add nsw i32 %.lcssa, -1
  %84 = sitofp i32 %83 to double
  %85 = fdiv double %.01.lcssa, %84
  %86 = call double @exp(double noundef %85) #15
  %87 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.7, ptr noundef %0, double noundef %86)
  br label %88

88:                                               ; preds = %82, %67, %63
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

3:                                                ; preds = %17, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %17 ], [ 0, %2 ]
  %.0 = phi i32 [ 12, %2 ], [ %.1, %17 ]
  %4 = load i32, ptr @current_test, align 4
  %5 = sext i32 %4 to i64
  %6 = icmp slt i64 %indvars.iv, %5
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  %8 = load ptr, ptr @results, align 8
  %9 = getelementptr inbounds [16 x i8], ptr %8, i64 %indvars.iv
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %11 = load ptr, ptr %10, align 8
  %12 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #15
  %13 = trunc i64 %12 to i32
  %14 = icmp slt i32 %.0, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %7
  br label %16

16:                                               ; preds = %15, %7
  %.1 = phi i32 [ %13, %15 ], [ %.0, %7 ]
  br label %17

17:                                               ; preds = %16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %3, !llvm.loop !12

18:                                               ; preds = %3
  %.0.lcssa = phi i32 [ %.0, %3 ]
  %19 = add nsw i32 %.0.lcssa, -12
  %20 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %19, ptr noundef nonnull @.str.2)
  %21 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %.0.lcssa, ptr noundef nonnull @.str.2)
  br label %22

22:                                               ; preds = %41, %18
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %41 ], [ 0, %18 ]
  %23 = load i32, ptr @current_test, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp slt i64 %indvars.iv3, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  %27 = load ptr, ptr @results, align 8
  %28 = getelementptr inbounds [16 x i8], ptr %27, i64 %indvars.iv3
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 8
  %30 = load ptr, ptr %29, align 8
  %31 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %30) #15
  %32 = trunc i64 %31 to i32
  %33 = sub i32 %.0.lcssa, %32
  %34 = load ptr, ptr @results, align 8
  %35 = getelementptr inbounds [16 x i8], ptr %34, i64 %indvars.iv3
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %37 = load ptr, ptr %36, align 8
  %38 = load double, ptr %35, align 8
  %39 = trunc nuw nsw i64 %indvars.iv3 to i32
  %40 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %39, i32 noundef %33, ptr noundef nonnull @.str.5, ptr noundef %37, double noundef %38)
  br label %41

41:                                               ; preds = %26
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  br label %22, !llvm.loop !13

42:                                               ; preds = %22
  br label %43

43:                                               ; preds = %52, %42
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %52 ], [ 0, %42 ]
  %.01 = phi double [ 0.000000e+00, %42 ], [ %51, %52 ]
  %44 = load i32, ptr @current_test, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp slt i64 %indvars.iv6, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load ptr, ptr @results, align 8
  %49 = getelementptr inbounds [16 x i8], ptr %48, i64 %indvars.iv6
  %50 = load double, ptr %49, align 8
  %51 = fadd double %.01, %50
  br label %52

52:                                               ; preds = %47
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  br label %43, !llvm.loop !14

53:                                               ; preds = %43
  %.01.lcssa = phi double [ %.01, %43 ]
  %54 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %1, double noundef %.01.lcssa)
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
  br i1 %7, label %8, label %34

8:                                                ; preds = %3
  %9 = load double, ptr %0, align 8
  br label %10

10:                                               ; preds = %28, %8
  %.01 = phi ptr [ %0, %8 ], [ %.12.lcssa, %28 ]
  %.0 = phi ptr [ %1, %8 ], [ %.lcssa, %28 ]
  br label %11

11:                                               ; preds = %15, %10
  %.1 = phi ptr [ %.0, %10 ], [ %12, %15 ]
  %12 = getelementptr inbounds i8, ptr %.1, i64 -8
  %13 = load double, ptr %12, align 8
  %14 = call noundef zeroext i1 %2(double noundef %9, double noundef %13)
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %11, !llvm.loop !15

16:                                               ; preds = %11
  %.lcssa = phi ptr [ %12, %11 ]
  %17 = icmp ult ptr %.01, %.lcssa
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  %.lcssa.lcssa = phi ptr [ %.lcssa, %16 ]
  br label %31

19:                                               ; preds = %16
  br label %20

20:                                               ; preds = %23, %19
  %.12 = phi ptr [ %.01, %19 ], [ %24, %23 ]
  %21 = load double, ptr %.12, align 8
  %22 = call noundef zeroext i1 %2(double noundef %21, double noundef %9)
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = getelementptr inbounds nuw i8, ptr %.12, i64 8
  br label %20, !llvm.loop !16

25:                                               ; preds = %20
  %.12.lcssa = phi ptr [ %.12, %20 ]
  %26 = icmp ult ptr %.12.lcssa, %.lcssa
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  %.lcssa.lcssa3 = phi ptr [ %.lcssa, %25 ]
  br label %31

28:                                               ; preds = %25
  %29 = load double, ptr %.lcssa, align 8
  %30 = load double, ptr %.12.lcssa, align 8
  store double %30, ptr %.lcssa, align 8
  store double %29, ptr %.12.lcssa, align 8
  br label %10, !llvm.loop !17

31:                                               ; preds = %27, %18
  %.lcssa4 = phi ptr [ %.lcssa.lcssa3, %27 ], [ %.lcssa.lcssa, %18 ]
  %32 = getelementptr inbounds nuw i8, ptr %.lcssa4, i64 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef nonnull %32, ptr noundef %2)
  %33 = getelementptr inbounds nuw i8, ptr %.lcssa4, i64 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %33, ptr noundef %1, ptr noundef %2)
  br label %34

34:                                               ; preds = %31, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 8
  br i1 %7, label %8, label %34

8:                                                ; preds = %3
  %9 = load double, ptr %0, align 8
  br label %10

10:                                               ; preds = %28, %8
  %.01 = phi ptr [ %0, %8 ], [ %.12.lcssa, %28 ]
  %.0 = phi ptr [ %1, %8 ], [ %.lcssa, %28 ]
  br label %11

11:                                               ; preds = %15, %10
  %.1 = phi ptr [ %.0, %10 ], [ %12, %15 ]
  %12 = getelementptr inbounds i8, ptr %.1, i64 -8
  %13 = load double, ptr %12, align 8
  %14 = call noundef zeroext i1 %2(double noundef %9, double noundef %13)
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %11, !llvm.loop !18

16:                                               ; preds = %11
  %.lcssa = phi ptr [ %12, %11 ]
  %17 = icmp ult ptr %.01, %.lcssa
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  %.lcssa.lcssa = phi ptr [ %.lcssa, %16 ]
  br label %31

19:                                               ; preds = %16
  br label %20

20:                                               ; preds = %23, %19
  %.12 = phi ptr [ %.01, %19 ], [ %24, %23 ]
  %21 = load double, ptr %.12, align 8
  %22 = call noundef zeroext i1 %2(double noundef %21, double noundef %9)
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = getelementptr inbounds nuw i8, ptr %.12, i64 8
  br label %20, !llvm.loop !19

25:                                               ; preds = %20
  %.12.lcssa = phi ptr [ %.12, %20 ]
  %26 = icmp ult ptr %.12.lcssa, %.lcssa
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  %.lcssa.lcssa3 = phi ptr [ %.lcssa, %25 ]
  br label %31

28:                                               ; preds = %25
  %29 = load double, ptr %.lcssa, align 8
  %30 = load double, ptr %.12.lcssa, align 8
  store double %30, ptr %.lcssa, align 8
  store double %29, ptr %.12.lcssa, align 8
  br label %10, !llvm.loop !20

31:                                               ; preds = %27, %18
  %.lcssa4 = phi ptr [ %.lcssa.lcssa3, %27 ], [ %.lcssa.lcssa, %18 ]
  %32 = getelementptr inbounds nuw i8, ptr %.lcssa4, i64 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef nonnull %32, ptr noundef %2)
  %33 = getelementptr inbounds nuw i8, ptr %.lcssa4, i64 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %33, ptr noundef %1, ptr noundef %2)
  br label %34

34:                                               ; preds = %31, %3
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
  br label %9

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %8, %4
  %10 = phi i32 [ %7, %4 ], [ 300, %8 ]
  %11 = icmp sgt i32 %0, 2
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 16
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
  %21 = icmp slt i32 %18, 0
  %22 = shl nsw i64 %20, 3
  %23 = select i1 %21, i64 -1, i64 %22
  %24 = call noalias noundef nonnull ptr @_Znay(i64 noundef %23) #16
  %smax = call i32 @llvm.smax.i32(i32 %18, i32 0)
  %wide.trip.count = zext i32 %smax to i64
  br label %25

25:                                               ; preds = %30, %17
  %indvars.iv = phi i64 [ %indvars.iv.next, %30 ], [ 0, %17 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %26, label %31

26:                                               ; preds = %25
  %27 = call i32 @rand()
  %28 = sitofp i32 %27 to double
  %29 = getelementptr inbounds [8 x i8], ptr %24, i64 %indvars.iv
  store double %28, ptr %29, align 8
  br label %30

30:                                               ; preds = %26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %25, !llvm.loop !21

31:                                               ; preds = %25
  %32 = sext i32 %18 to i64
  %33 = icmp slt i32 %18, 0
  %34 = shl nsw i64 %32, 3
  %35 = select i1 %33, i64 -1, i64 %34
  %36 = call noalias noundef nonnull ptr @_Znay(i64 noundef %35) #16
  %smax2 = call i32 @llvm.smax.i32(i32 %10, i32 0)
  br label %37

37:                                               ; preds = %45, %31
  %storemerge1 = phi i32 [ 0, %31 ], [ %46, %45 ]
  %exitcond3 = icmp ne i32 %storemerge1, %smax2
  br i1 %exitcond3, label %38, label %47

38:                                               ; preds = %37
  %39 = sext i32 %18 to i64
  %40 = getelementptr inbounds [8 x i8], ptr %24, i64 %39
  %41 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %24, ptr noundef %40, ptr noundef %36)
  %42 = sext i32 %18 to i64
  call void @qsort(ptr noundef %36, i64 noundef %42, i64 noundef 8, ptr noundef nonnull @_Z19less_than_function1PKvS0_)
  %43 = sext i32 %18 to i64
  %44 = getelementptr inbounds [8 x i8], ptr %36, i64 %43
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %36, ptr noundef %44)
  br label %45

45:                                               ; preds = %38
  %46 = add nuw i32 %storemerge1, 1
  br label %37, !llvm.loop !22

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %57, %47
  %storemerge2 = phi i32 [ 0, %47 ], [ %58, %57 ]
  %exitcond4 = icmp ne i32 %storemerge2, %smax2
  br i1 %exitcond4, label %49, label %59

49:                                               ; preds = %48
  %50 = sext i32 %18 to i64
  %51 = getelementptr inbounds [8 x i8], ptr %24, i64 %50
  %52 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %24, ptr noundef %51, ptr noundef %36)
  %53 = sext i32 %18 to i64
  %54 = getelementptr inbounds [8 x i8], ptr %36, i64 %53
  call void @_Z18quicksort_functionPdS_PFbddE(ptr noundef %36, ptr noundef %54, ptr noundef nonnull @_Z19less_than_function2dd)
  %55 = sext i32 %18 to i64
  %56 = getelementptr inbounds [8 x i8], ptr %36, i64 %55
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %36, ptr noundef %56)
  br label %57

57:                                               ; preds = %49
  %58 = add nuw i32 %storemerge2, 1
  br label %48, !llvm.loop !23

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %69, %59
  %storemerge3 = phi i32 [ 0, %59 ], [ %70, %69 ]
  %exitcond5 = icmp ne i32 %storemerge3, %smax2
  br i1 %exitcond5, label %61, label %71

61:                                               ; preds = %60
  %62 = sext i32 %18 to i64
  %63 = getelementptr inbounds [8 x i8], ptr %24, i64 %62
  %64 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %24, ptr noundef %63, ptr noundef %36)
  %65 = sext i32 %18 to i64
  %66 = getelementptr inbounds [8 x i8], ptr %36, i64 %65
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %36, ptr noundef %66, ptr noundef nonnull @_Z19less_than_function2dd)
  %67 = sext i32 %18 to i64
  %68 = getelementptr inbounds [8 x i8], ptr %36, i64 %67
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %36, ptr noundef %68)
  br label %69

69:                                               ; preds = %61
  %70 = add nuw i32 %storemerge3, 1
  br label %60, !llvm.loop !24

71:                                               ; preds = %60
  br label %72

72:                                               ; preds = %81, %71
  %storemerge4 = phi i32 [ 0, %71 ], [ %82, %81 ]
  %exitcond6 = icmp ne i32 %storemerge4, %smax2
  br i1 %exitcond6, label %73, label %83

73:                                               ; preds = %72
  %74 = sext i32 %18 to i64
  %75 = getelementptr inbounds [8 x i8], ptr %24, i64 %74
  %76 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %24, ptr noundef %75, ptr noundef %36)
  %77 = sext i32 %18 to i64
  %78 = getelementptr inbounds [8 x i8], ptr %36, i64 %77
  call void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef %36, ptr noundef %78)
  %79 = sext i32 %18 to i64
  %80 = getelementptr inbounds [8 x i8], ptr %36, i64 %79
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %36, ptr noundef %80)
  br label %81

81:                                               ; preds = %73
  %82 = add nuw i32 %storemerge4, 1
  br label %72, !llvm.loop !25

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %93, %83
  %storemerge5 = phi i32 [ 0, %83 ], [ %94, %93 ]
  %exitcond7 = icmp ne i32 %storemerge5, %smax2
  br i1 %exitcond7, label %85, label %95

85:                                               ; preds = %84
  %86 = sext i32 %18 to i64
  %87 = getelementptr inbounds [8 x i8], ptr %24, i64 %86
  %88 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %24, ptr noundef %87, ptr noundef %36)
  %89 = sext i32 %18 to i64
  %90 = getelementptr inbounds [8 x i8], ptr %36, i64 %89
  call void @_ZSt4sortIPdPFbddEEvT_S3_T0_(ptr noundef %36, ptr noundef %90, ptr noundef nonnull @_Z19less_than_function2dd)
  %91 = sext i32 %18 to i64
  %92 = getelementptr inbounds [8 x i8], ptr %36, i64 %91
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %36, ptr noundef %92)
  br label %93

93:                                               ; preds = %85
  %94 = add nuw i32 %storemerge5, 1
  br label %84, !llvm.loop !26

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %105, %95
  %storemerge6 = phi i32 [ 0, %95 ], [ %106, %105 ]
  %exitcond8 = icmp ne i32 %storemerge6, %smax2
  br i1 %exitcond8, label %97, label %107

97:                                               ; preds = %96
  %98 = sext i32 %18 to i64
  %99 = getelementptr inbounds [8 x i8], ptr %24, i64 %98
  %100 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %24, ptr noundef %99, ptr noundef %36)
  %101 = sext i32 %18 to i64
  %102 = getelementptr inbounds [8 x i8], ptr %36, i64 %101
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %36, ptr noundef %102, i8 undef)
  %103 = sext i32 %18 to i64
  %104 = getelementptr inbounds [8 x i8], ptr %36, i64 %103
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %36, ptr noundef %104)
  br label %105

105:                                              ; preds = %97
  %106 = add nuw i32 %storemerge6, 1
  br label %96, !llvm.loop !27

107:                                              ; preds = %96
  br label %108

108:                                              ; preds = %117, %107
  %storemerge7 = phi i32 [ 0, %107 ], [ %118, %117 ]
  %exitcond9 = icmp ne i32 %storemerge7, %smax2
  br i1 %exitcond9, label %109, label %119

109:                                              ; preds = %108
  %110 = sext i32 %18 to i64
  %111 = getelementptr inbounds [8 x i8], ptr %36, i64 %110
  call void @_ZSt4sortIPd17less_than_functorEvT_S2_T0_(ptr noundef %36, ptr noundef %111, i8 undef)
  %112 = sext i32 %18 to i64
  %113 = getelementptr inbounds [8 x i8], ptr %36, i64 %112
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %36, ptr noundef %113)
  %114 = sext i32 %18 to i64
  %115 = getelementptr inbounds [8 x i8], ptr %24, i64 %114
  %116 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %24, ptr noundef %115, ptr noundef %36)
  br label %117

117:                                              ; preds = %109
  %118 = add nuw i32 %storemerge7, 1
  br label %108, !llvm.loop !28

119:                                              ; preds = %108
  br label %120

120:                                              ; preds = %129, %119
  %storemerge8 = phi i32 [ 0, %119 ], [ %130, %129 ]
  %exitcond10 = icmp ne i32 %storemerge8, %smax2
  br i1 %exitcond10, label %121, label %131

121:                                              ; preds = %120
  %122 = sext i32 %18 to i64
  %123 = getelementptr inbounds [8 x i8], ptr %24, i64 %122
  %124 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %24, ptr noundef %123, ptr noundef %36)
  %125 = sext i32 %18 to i64
  %126 = getelementptr inbounds [8 x i8], ptr %36, i64 %125
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %36, ptr noundef %126, i8 undef)
  %127 = sext i32 %18 to i64
  %128 = getelementptr inbounds [8 x i8], ptr %36, i64 %127
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %36, ptr noundef %128)
  br label %129

129:                                              ; preds = %121
  %130 = add nuw i32 %storemerge8, 1
  br label %120, !llvm.loop !29

131:                                              ; preds = %120
  br label %132

132:                                              ; preds = %141, %131
  %storemerge9 = phi i32 [ 0, %131 ], [ %142, %141 ]
  %exitcond11 = icmp ne i32 %storemerge9, %smax2
  br i1 %exitcond11, label %133, label %143

133:                                              ; preds = %132
  %134 = sext i32 %18 to i64
  %135 = getelementptr inbounds [8 x i8], ptr %24, i64 %134
  %136 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %24, ptr noundef %135, ptr noundef %36)
  %137 = sext i32 %18 to i64
  %138 = getelementptr inbounds [8 x i8], ptr %36, i64 %137
  call void @_ZSt4sortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %36, ptr noundef %138, i8 undef)
  %139 = sext i32 %18 to i64
  %140 = getelementptr inbounds [8 x i8], ptr %36, i64 %139
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %36, ptr noundef %140)
  br label %141

141:                                              ; preds = %133
  %142 = add nuw i32 %storemerge9, 1
  br label %132, !llvm.loop !30

143:                                              ; preds = %132
  br label %144

144:                                              ; preds = %153, %143
  %storemerge10 = phi i32 [ 0, %143 ], [ %154, %153 ]
  %exitcond12 = icmp ne i32 %storemerge10, %smax2
  br i1 %exitcond12, label %145, label %155

145:                                              ; preds = %144
  %146 = sext i32 %18 to i64
  %147 = getelementptr inbounds [8 x i8], ptr %24, i64 %146
  %148 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %24, ptr noundef %147, ptr noundef %36)
  %149 = sext i32 %18 to i64
  %150 = getelementptr inbounds [8 x i8], ptr %36, i64 %149
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %36, ptr noundef %150, i8 undef)
  %151 = sext i32 %18 to i64
  %152 = getelementptr inbounds [8 x i8], ptr %36, i64 %151
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %36, ptr noundef %152)
  br label %153

153:                                              ; preds = %145
  %154 = add nuw i32 %storemerge10, 1
  br label %144, !llvm.loop !31

155:                                              ; preds = %144
  br label %156

156:                                              ; preds = %165, %155
  %storemerge11 = phi i32 [ 0, %155 ], [ %166, %165 ]
  %exitcond13 = icmp ne i32 %storemerge11, %smax2
  br i1 %exitcond13, label %157, label %167

157:                                              ; preds = %156
  %158 = sext i32 %18 to i64
  %159 = getelementptr inbounds [8 x i8], ptr %24, i64 %158
  %160 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %24, ptr noundef %159, ptr noundef %36)
  %161 = sext i32 %18 to i64
  %162 = getelementptr inbounds [8 x i8], ptr %36, i64 %161
  call void @_ZSt4sortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %36, ptr noundef %162, i8 undef)
  %163 = sext i32 %18 to i64
  %164 = getelementptr inbounds [8 x i8], ptr %36, i64 %163
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %36, ptr noundef %164)
  br label %165

165:                                              ; preds = %157
  %166 = add nuw i32 %storemerge11, 1
  br label %156, !llvm.loop !32

167:                                              ; preds = %156
  br label %168

168:                                              ; preds = %177, %167
  %storemerge12 = phi i32 [ 0, %167 ], [ %178, %177 ]
  %exitcond14 = icmp ne i32 %storemerge12, %smax2
  br i1 %exitcond14, label %169, label %179

169:                                              ; preds = %168
  %170 = sext i32 %18 to i64
  %171 = getelementptr inbounds [8 x i8], ptr %24, i64 %170
  %172 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %24, ptr noundef %171, ptr noundef %36)
  %173 = sext i32 %18 to i64
  %174 = getelementptr inbounds [8 x i8], ptr %36, i64 %173
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %36, ptr noundef %174)
  %175 = sext i32 %18 to i64
  %176 = getelementptr inbounds [8 x i8], ptr %36, i64 %175
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %36, ptr noundef %176)
  br label %177

177:                                              ; preds = %169
  %178 = add nuw i32 %storemerge12, 1
  br label %168, !llvm.loop !33

179:                                              ; preds = %168
  br label %180

180:                                              ; preds = %189, %179
  %storemerge13 = phi i32 [ 0, %179 ], [ %190, %189 ]
  %exitcond15 = icmp ne i32 %storemerge13, %smax2
  br i1 %exitcond15, label %181, label %191

181:                                              ; preds = %180
  %182 = sext i32 %18 to i64
  %183 = getelementptr inbounds [8 x i8], ptr %24, i64 %182
  %184 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %24, ptr noundef %183, ptr noundef %36)
  %185 = sext i32 %18 to i64
  %186 = getelementptr inbounds [8 x i8], ptr %36, i64 %185
  call void @_ZSt4sortIPdEvT_S1_(ptr noundef %36, ptr noundef %186)
  %187 = sext i32 %18 to i64
  %188 = getelementptr inbounds [8 x i8], ptr %36, i64 %187
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %36, ptr noundef %188)
  br label %189

189:                                              ; preds = %181
  %190 = add nuw i32 %storemerge13, 1
  br label %180, !llvm.loop !34

191:                                              ; preds = %180
  %192 = icmp eq ptr %36, null
  br i1 %192, label %194, label %193

193:                                              ; preds = %191
  call void @_ZdaPv(ptr noundef nonnull %36) #17
  br label %194

194:                                              ; preds = %193, %191
  %195 = icmp eq ptr %24, null
  br i1 %195, label %197, label %196

196:                                              ; preds = %194
  call void @_ZdaPv(ptr noundef nonnull %24) #17
  br label %197

197:                                              ; preds = %196, %194
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
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %4

4:                                                ; preds = %14, %2
  %.01 = phi ptr [ %0, %2 ], [ %8, %14 ]
  %.0 = phi ptr [ %3, %2 ], [ %6, %14 ]
  %.not = icmp eq ptr %.0, %1
  br i1 %.not, label %.loopexit, label %5

5:                                                ; preds = %4
  %6 = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %7 = load double, ptr %.0, align 8
  %8 = getelementptr inbounds nuw i8, ptr %.01, i64 8
  %9 = load double, ptr %.01, align 8
  %10 = fcmp olt double %7, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = load i32, ptr @current_test, align 4
  %13 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.11, i32 noundef %12)
  br label %15

14:                                               ; preds = %5
  br label %4, !llvm.loop !35

.loopexit:                                        ; preds = %4
  br label %15

15:                                               ; preds = %.loopexit, %11
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef %0, ptr noundef %1) #0 comdat {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = icmp sgt i64 %5, 8
  br i1 %6, label %7, label %33

7:                                                ; preds = %2
  %8 = load double, ptr %0, align 8
  br label %9

9:                                                ; preds = %27, %7
  %.01 = phi ptr [ %0, %7 ], [ %.12.lcssa, %27 ]
  %.0 = phi ptr [ %1, %7 ], [ %.lcssa, %27 ]
  br label %10

10:                                               ; preds = %14, %9
  %.1 = phi ptr [ %.0, %9 ], [ %11, %14 ]
  %11 = getelementptr inbounds i8, ptr %.1, i64 -8
  %12 = load double, ptr %11, align 8
  %13 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %8, double noundef %12)
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %10, !llvm.loop !36

15:                                               ; preds = %10
  %.lcssa = phi ptr [ %11, %10 ]
  %16 = icmp ult ptr %.01, %.lcssa
  br i1 %16, label %18, label %17

17:                                               ; preds = %15
  %.lcssa.lcssa = phi ptr [ %.lcssa, %15 ]
  br label %30

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %22, %18
  %.12 = phi ptr [ %.01, %18 ], [ %23, %22 ]
  %20 = load double, ptr %.12, align 8
  %21 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %20, double noundef %8)
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = getelementptr inbounds nuw i8, ptr %.12, i64 8
  br label %19, !llvm.loop !37

24:                                               ; preds = %19
  %.12.lcssa = phi ptr [ %.12, %19 ]
  %25 = icmp ult ptr %.12.lcssa, %.lcssa
  br i1 %25, label %27, label %26

26:                                               ; preds = %24
  %.lcssa.lcssa3 = phi ptr [ %.lcssa, %24 ]
  br label %30

27:                                               ; preds = %24
  %28 = load double, ptr %.lcssa, align 8
  %29 = load double, ptr %.12.lcssa, align 8
  store double %29, ptr %.lcssa, align 8
  store double %28, ptr %.12.lcssa, align 8
  br label %9, !llvm.loop !38

30:                                               ; preds = %26, %17
  %.lcssa4 = phi ptr [ %.lcssa.lcssa3, %26 ], [ %.lcssa.lcssa, %17 ]
  %31 = getelementptr inbounds nuw i8, ptr %.lcssa4, i64 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef nonnull %31, ptr noundef nonnull @_Z19less_than_function2dd)
  %32 = getelementptr inbounds nuw i8, ptr %.lcssa4, i64 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %32, ptr noundef %1, ptr noundef nonnull @_Z19less_than_function2dd)
  br label %33

33:                                               ; preds = %30, %2
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
  br i1 %9, label %10, label %34

10:                                               ; preds = %3
  %11 = load double, ptr %0, align 8
  store double %11, ptr %5, align 8
  br label %12

12:                                               ; preds = %28, %10
  %.01 = phi ptr [ %0, %10 ], [ %.12.lcssa, %28 ]
  %.0 = phi ptr [ %1, %10 ], [ %.lcssa, %28 ]
  br label %13

13:                                               ; preds = %16, %12
  %.1 = phi ptr [ %.0, %12 ], [ %14, %16 ]
  %14 = getelementptr inbounds i8, ptr %.1, i64 -8
  %15 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %14)
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %13, !llvm.loop !39

17:                                               ; preds = %13
  %.lcssa = phi ptr [ %14, %13 ]
  %18 = icmp ult ptr %.01, %.lcssa
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  %.lcssa.lcssa = phi ptr [ %.lcssa, %17 ]
  br label %31

20:                                               ; preds = %17
  br label %21

21:                                               ; preds = %23, %20
  %.12 = phi ptr [ %.01, %20 ], [ %24, %23 ]
  %22 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %.12, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = getelementptr inbounds nuw i8, ptr %.12, i64 8
  br label %21, !llvm.loop !40

25:                                               ; preds = %21
  %.12.lcssa = phi ptr [ %.12, %21 ]
  %26 = icmp ult ptr %.12.lcssa, %.lcssa
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  %.lcssa.lcssa3 = phi ptr [ %.lcssa, %25 ]
  br label %31

28:                                               ; preds = %25
  %29 = load double, ptr %.lcssa, align 8
  %30 = load double, ptr %.12.lcssa, align 8
  store double %30, ptr %.lcssa, align 8
  store double %29, ptr %.12.lcssa, align 8
  br label %12, !llvm.loop !41

31:                                               ; preds = %27, %19
  %.lcssa4 = phi ptr [ %.lcssa.lcssa3, %27 ], [ %.lcssa.lcssa, %19 ]
  %32 = getelementptr inbounds nuw i8, ptr %.lcssa4, i64 8
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %0, ptr noundef nonnull %32, i8 undef)
  %33 = getelementptr inbounds nuw i8, ptr %.lcssa4, i64 8
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef nonnull %33, ptr noundef %1, i8 undef)
  br label %34

34:                                               ; preds = %31, %3
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
  br i1 %9, label %10, label %34

10:                                               ; preds = %3
  %11 = load double, ptr %0, align 8
  store double %11, ptr %5, align 8
  br label %12

12:                                               ; preds = %28, %10
  %.01 = phi ptr [ %0, %10 ], [ %.12.lcssa, %28 ]
  %.0 = phi ptr [ %1, %10 ], [ %.lcssa, %28 ]
  br label %13

13:                                               ; preds = %16, %12
  %.1 = phi ptr [ %.0, %12 ], [ %14, %16 ]
  %14 = getelementptr inbounds i8, ptr %.1, i64 -8
  %15 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %14)
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %13, !llvm.loop !42

17:                                               ; preds = %13
  %.lcssa = phi ptr [ %14, %13 ]
  %18 = icmp ult ptr %.01, %.lcssa
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  %.lcssa.lcssa = phi ptr [ %.lcssa, %17 ]
  br label %31

20:                                               ; preds = %17
  br label %21

21:                                               ; preds = %23, %20
  %.12 = phi ptr [ %.01, %20 ], [ %24, %23 ]
  %22 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %.12, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = getelementptr inbounds nuw i8, ptr %.12, i64 8
  br label %21, !llvm.loop !43

25:                                               ; preds = %21
  %.12.lcssa = phi ptr [ %.12, %21 ]
  %26 = icmp ult ptr %.12.lcssa, %.lcssa
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  %.lcssa.lcssa3 = phi ptr [ %.lcssa, %25 ]
  br label %31

28:                                               ; preds = %25
  %29 = load double, ptr %.lcssa, align 8
  %30 = load double, ptr %.12.lcssa, align 8
  store double %30, ptr %.lcssa, align 8
  store double %29, ptr %.12.lcssa, align 8
  br label %12, !llvm.loop !44

31:                                               ; preds = %27, %19
  %.lcssa4 = phi ptr [ %.lcssa.lcssa3, %27 ], [ %.lcssa.lcssa, %19 ]
  %32 = getelementptr inbounds nuw i8, ptr %.lcssa4, i64 8
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %0, ptr noundef nonnull %32, i8 undef)
  %33 = getelementptr inbounds nuw i8, ptr %.lcssa4, i64 8
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef nonnull %33, ptr noundef %1, i8 undef)
  br label %34

34:                                               ; preds = %31, %3
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
  br i1 %9, label %10, label %34

10:                                               ; preds = %3
  %11 = load double, ptr %0, align 8
  store double %11, ptr %5, align 8
  br label %12

12:                                               ; preds = %28, %10
  %.01 = phi ptr [ %0, %10 ], [ %.12.lcssa, %28 ]
  %.0 = phi ptr [ %1, %10 ], [ %.lcssa, %28 ]
  br label %13

13:                                               ; preds = %16, %12
  %.1 = phi ptr [ %.0, %12 ], [ %14, %16 ]
  %14 = getelementptr inbounds i8, ptr %.1, i64 -8
  %15 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %14)
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %13, !llvm.loop !45

17:                                               ; preds = %13
  %.lcssa = phi ptr [ %14, %13 ]
  %18 = icmp ult ptr %.01, %.lcssa
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  %.lcssa.lcssa = phi ptr [ %.lcssa, %17 ]
  br label %31

20:                                               ; preds = %17
  br label %21

21:                                               ; preds = %23, %20
  %.12 = phi ptr [ %.01, %20 ], [ %24, %23 ]
  %22 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %.12, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = getelementptr inbounds nuw i8, ptr %.12, i64 8
  br label %21, !llvm.loop !46

25:                                               ; preds = %21
  %.12.lcssa = phi ptr [ %.12, %21 ]
  %26 = icmp ult ptr %.12.lcssa, %.lcssa
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  %.lcssa.lcssa3 = phi ptr [ %.lcssa, %25 ]
  br label %31

28:                                               ; preds = %25
  %29 = load double, ptr %.lcssa, align 8
  %30 = load double, ptr %.12.lcssa, align 8
  store double %30, ptr %.lcssa, align 8
  store double %29, ptr %.12.lcssa, align 8
  br label %12, !llvm.loop !47

31:                                               ; preds = %27, %19
  %.lcssa4 = phi ptr [ %.lcssa.lcssa3, %27 ], [ %.lcssa.lcssa, %19 ]
  %32 = getelementptr inbounds nuw i8, ptr %.lcssa4, i64 8
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %0, ptr noundef nonnull %32, i8 undef)
  %33 = getelementptr inbounds nuw i8, ptr %.lcssa4, i64 8
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef nonnull %33, ptr noundef %1, i8 undef)
  br label %34

34:                                               ; preds = %31, %3
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
  br i1 %6, label %7, label %33

7:                                                ; preds = %2
  %8 = load double, ptr %0, align 8
  br label %9

9:                                                ; preds = %27, %7
  %.01 = phi ptr [ %0, %7 ], [ %.12.lcssa, %27 ]
  %.0 = phi ptr [ %1, %7 ], [ %.lcssa, %27 ]
  br label %10

10:                                               ; preds = %14, %9
  %.1 = phi ptr [ %.0, %9 ], [ %11, %14 ]
  %11 = getelementptr inbounds i8, ptr %.1, i64 -8
  %12 = load double, ptr %11, align 8
  %13 = fcmp olt double %8, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %10, !llvm.loop !48

15:                                               ; preds = %10
  %.lcssa = phi ptr [ %11, %10 ]
  %16 = icmp ult ptr %.01, %.lcssa
  br i1 %16, label %18, label %17

17:                                               ; preds = %15
  %.lcssa.lcssa = phi ptr [ %.lcssa, %15 ]
  br label %30

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %22, %18
  %.12 = phi ptr [ %.01, %18 ], [ %23, %22 ]
  %20 = load double, ptr %.12, align 8
  %21 = fcmp olt double %20, %8
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = getelementptr inbounds nuw i8, ptr %.12, i64 8
  br label %19, !llvm.loop !49

24:                                               ; preds = %19
  %.12.lcssa = phi ptr [ %.12, %19 ]
  %25 = icmp ult ptr %.12.lcssa, %.lcssa
  br i1 %25, label %27, label %26

26:                                               ; preds = %24
  %.lcssa.lcssa3 = phi ptr [ %.lcssa, %24 ]
  br label %30

27:                                               ; preds = %24
  %28 = load double, ptr %.lcssa, align 8
  %29 = load double, ptr %.12.lcssa, align 8
  store double %29, ptr %.lcssa, align 8
  store double %28, ptr %.12.lcssa, align 8
  br label %9, !llvm.loop !50

30:                                               ; preds = %26, %17
  %.lcssa4 = phi ptr [ %.lcssa.lcssa3, %26 ], [ %.lcssa.lcssa, %17 ]
  %31 = getelementptr inbounds nuw i8, ptr %.lcssa4, i64 8
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %0, ptr noundef nonnull %31)
  %32 = getelementptr inbounds nuw i8, ptr %.lcssa4, i64 8
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef nonnull %32, ptr noundef %1)
  br label %33

33:                                               ; preds = %30, %2
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
  %7 = ashr exact i64 %6, 3
  %8 = icmp sgt i64 %7, 1
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %6, i1 false)
  %10 = getelementptr inbounds [8 x i8], ptr %2, i64 %7
  br label %17

11:                                               ; preds = %3
  %12 = icmp eq i64 %6, 8
  br i1 %12, label %13, label %16

13:                                               ; preds = %11
  %14 = load double, ptr %0, align 8
  store double %14, ptr %2, align 8
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 8
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

7:                                                ; preds = %16, %4
  %.01 = phi ptr [ %1, %4 ], [ %19, %16 ]
  %.0 = phi i64 [ %2, %4 ], [ %17, %16 ]
  %8 = ptrtoint ptr %.01 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = icmp sgt i64 %10, 128
  br i1 %11, label %12, label %.loopexit

12:                                               ; preds = %7
  %13 = icmp eq i64 %.0, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %.01.lcssa2 = phi ptr [ %.01, %12 ]
  %15 = load i64, ptr %5, align 8
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %.01.lcssa2, ptr noundef %.01.lcssa2, i64 %15)
  br label %20

16:                                               ; preds = %12
  %17 = add nsw i64 %.0, -1
  %18 = load i64, ptr %5, align 8
  %19 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %.01, i64 %18)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %19, ptr noundef %.01, i64 noundef %17, i64 %18)
  br label %7, !llvm.loop !51

.loopexit:                                        ; preds = %7
  br label %20

20:                                               ; preds = %.loopexit, %14
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
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %12 = load i64, ptr %4, align 8
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef nonnull %11, i64 %12)
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef nonnull %13, ptr noundef %1, i64 %12)
  br label %16

14:                                               ; preds = %3
  %15 = load i64, ptr %4, align 8
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
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %16 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_S7_T0_(ptr noundef nonnull %15, ptr noundef %1, ptr noundef %0, i64 %14)
  ret ptr %16
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = inttoptr i64 %3 to ptr
  store ptr %6, ptr %5, align 8
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %7

7:                                                ; preds = %13, %4
  %storemerge = phi ptr [ %1, %4 ], [ %14, %13 ]
  %8 = icmp ult ptr %storemerge, %2
  br i1 %8, label %9, label %15

9:                                                ; preds = %7
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %storemerge, ptr noundef %0)
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %storemerge, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %12

12:                                               ; preds = %11, %9
  br label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  br label %7, !llvm.loop !52

15:                                               ; preds = %7
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 comdat {
  br label %4

4:                                                ; preds = %9, %3
  %.0 = phi ptr [ %1, %3 ], [ %10, %9 ]
  %5 = ptrtoint ptr %.0 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 8
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, ptr %.0, i64 -8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %10, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %4, !llvm.loop !53

11:                                               ; preds = %4
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
  br label %21

10:                                               ; preds = %3
  %11 = add nsw i64 %7, -2
  %12 = sdiv i64 %11, 2
  br label %13

13:                                               ; preds = %19, %10
  %storemerge = phi i64 [ %12, %10 ], [ %20, %19 ]
  %14 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge
  %15 = load double, ptr %14, align 8
  %16 = load i64, ptr %2, align 8
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %storemerge, i64 noundef %7, double noundef %15, i64 %16)
  %17 = icmp eq i64 %storemerge, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %21

19:                                               ; preds = %13
  %20 = add nsw i64 %storemerge, -1
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
  %10 = ashr exact i64 %9, 3
  %11 = load i64, ptr %3, align 8
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
  %.01 = phi i64 [ %1, %5 ], [ %.1, %22 ]
  %.0 = phi i64 [ %1, %5 ], [ %.1, %22 ]
  %10 = add nsw i64 %2, -1
  %11 = sdiv i64 %10, 2
  %12 = icmp slt i64 %.0, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = shl i64 %.0, 1
  %15 = add i64 %14, 2
  %16 = getelementptr inbounds [8 x i8], ptr %0, i64 %15
  %17 = getelementptr [8 x i8], ptr %0, i64 %14
  %18 = getelementptr i8, ptr %17, i64 8
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %16, ptr noundef %18)
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = add nsw i64 %15, -1
  br label %22

22:                                               ; preds = %20, %13
  %.1 = phi i64 [ %21, %20 ], [ %15, %13 ]
  %23 = getelementptr inbounds [8 x i8], ptr %0, i64 %.1
  %24 = load double, ptr %23, align 8
  %25 = getelementptr inbounds [8 x i8], ptr %0, i64 %.01
  store double %24, ptr %25, align 8
  br label %9, !llvm.loop !55

26:                                               ; preds = %9
  %.01.lcssa = phi i64 [ %.01, %9 ]
  %.0.lcssa = phi i64 [ %.0, %9 ]
  %27 = and i64 %2, 1
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = add nsw i64 %2, -2
  %31 = ashr exact i64 %30, 1
  %32 = icmp eq i64 %.0.lcssa, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = shl i64 %.0.lcssa, 1
  %35 = add i64 %34, 2
  %36 = getelementptr [8 x i8], ptr %0, i64 %34
  %37 = getelementptr i8, ptr %36, i64 8
  %38 = load double, ptr %37, align 8
  %39 = getelementptr inbounds [8 x i8], ptr %0, i64 %.01.lcssa
  store double %38, ptr %39, align 8
  %40 = add nsw i64 %35, -1
  br label %41

41:                                               ; preds = %33, %29, %26
  %.12 = phi i64 [ %40, %33 ], [ %.01.lcssa, %29 ], [ %.01.lcssa, %26 ]
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
  br label %7

7:                                                ; preds = %14, %5
  %.0 = phi i64 [ %1, %5 ], [ %storemerge, %14 ]
  %storemerge.in.in = phi i64 [ %1, %5 ], [ %storemerge, %14 ]
  %storemerge.in = add nsw i64 %storemerge.in.in, -1
  %storemerge = sdiv i64 %storemerge.in, 2
  %8 = icmp sgt i64 %.0, %2
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEclIPddEEbT_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi i1 [ false, %7 ], [ %11, %9 ]
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge
  %16 = load double, ptr %15, align 8
  %17 = getelementptr inbounds [8 x i8], ptr %0, i64 %.0
  store double %16, ptr %17, align 8
  br label %7, !llvm.loop !56

18:                                               ; preds = %12
  %.0.lcssa = phi i64 [ %.0, %12 ]
  %19 = load double, ptr %6, align 8
  %20 = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store double %19, ptr %20, align 8
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

7:                                                ; preds = %19, %4
  %.01 = phi ptr [ %1, %4 ], [ %storemerge.lcssa, %19 ]
  %.0 = phi ptr [ %0, %4 ], [ %20, %19 ]
  br label %8

8:                                                ; preds = %10, %7
  %.1 = phi ptr [ %.0, %7 ], [ %11, %10 ]
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %.1, ptr noundef %2)
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  %11 = getelementptr inbounds nuw i8, ptr %.1, i64 8
  br label %8, !llvm.loop !57

12:                                               ; preds = %8
  %.1.lcssa = phi ptr [ %.1, %8 ]
  br label %13

13:                                               ; preds = %15, %12
  %.pn = phi ptr [ %.01, %12 ], [ %storemerge, %15 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %2, ptr noundef nonnull %storemerge)
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  br label %13, !llvm.loop !58

16:                                               ; preds = %13
  %storemerge.lcssa = phi ptr [ %storemerge, %13 ]
  %17 = icmp ult ptr %.1.lcssa, %storemerge.lcssa
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  %.1.lcssa.lcssa = phi ptr [ %.1.lcssa, %16 ]
  ret ptr %.1.lcssa.lcssa

19:                                               ; preds = %16
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1.lcssa, ptr noundef nonnull %storemerge.lcssa)
  %20 = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 8
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
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  br label %23

8:                                                ; preds = %3
  br label %9

9:                                                ; preds = %22, %8
  %.pn = phi ptr [ %0, %8 ], [ %storemerge, %22 ]
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %.not = icmp eq ptr %storemerge, %1
  br i1 %.not, label %.loopexit, label %10

10:                                               ; preds = %9
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %storemerge, ptr noundef %0)
  br i1 %11, label %12, label %18

12:                                               ; preds = %10
  %13 = load double, ptr %storemerge, align 8
  %14 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  %15 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %16 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %storemerge)
  %17 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %15, ptr noundef %16, ptr noundef nonnull %14)
  store double %13, ptr %0, align 8
  br label %21

18:                                               ; preds = %10
  %19 = load i64, ptr %4, align 8
  %20 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %19)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %storemerge, i64 %20)
  br label %21

21:                                               ; preds = %18, %12
  br label %22

22:                                               ; preds = %21
  br label %9, !llvm.loop !60

.loopexit:                                        ; preds = %9
  br label %23

23:                                               ; preds = %.loopexit, %7
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %5 = inttoptr i64 %2 to ptr
  store ptr %5, ptr %4, align 8
  br label %6

6:                                                ; preds = %10, %3
  %storemerge = phi ptr [ %0, %3 ], [ %11, %10 ]
  %.not = icmp eq ptr %storemerge, %1
  br i1 %.not, label %12, label %7

7:                                                ; preds = %6
  %8 = load i64, ptr %4, align 8
  %9 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %8)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %storemerge, i64 %9)
  br label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  br label %6, !llvm.loop !61

12:                                               ; preds = %6
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

7:                                                ; preds = %9, %2
  %.pn = phi ptr [ %0, %2 ], [ %storemerge, %9 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEclIdPdEEbRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %storemerge)
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = load double, ptr %storemerge, align 8
  store double %10, ptr %.pn, align 8
  br label %7, !llvm.loop !62

11:                                               ; preds = %7
  %.0.lcssa = phi ptr [ %.pn, %7 ]
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
  %16 = getelementptr inbounds i8, ptr %15, i64 -8
  store ptr %16, ptr %0, align 8
  br label %20

17:                                               ; preds = %12, %10
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr inbounds [8 x i8], ptr %18, i64 %1
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
  br label %5

5:                                                ; preds = %13, %4
  %.01 = phi ptr [ %1, %4 ], [ %15, %13 ]
  %.0 = phi i64 [ %2, %4 ], [ %14, %13 ]
  %6 = ptrtoint ptr %.01 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = icmp sgt i64 %8, 128
  br i1 %9, label %10, label %.loopexit

10:                                               ; preds = %5
  %11 = icmp eq i64 %.0, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  %.01.lcssa2 = phi ptr [ %.01, %10 ]
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %.01.lcssa2, ptr noundef %.01.lcssa2, i8 %3)
  br label %16

13:                                               ; preds = %10
  %14 = add nsw i64 %.0, -1
  %15 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %.01, i8 %3)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %15, ptr noundef %.01, i64 noundef %14, i8 %3)
  br label %5, !llvm.loop !63

.loopexit:                                        ; preds = %5
  br label %16

16:                                               ; preds = %.loopexit, %12
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 128
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef nonnull %9, i8 %2)
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef nonnull %10, ptr noundef %1, i8 %2)
  br label %12

11:                                               ; preds = %3
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2)
  br label %12

12:                                               ; preds = %11, %8
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
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_S6_T0_(ptr noundef nonnull %12, ptr noundef %1, ptr noundef %0, i8 %2)
  ret ptr %13
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  store i8 %3, ptr %5, align 1
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %6

6:                                                ; preds = %12, %4
  %storemerge = phi ptr [ %1, %4 ], [ %13, %12 ]
  %7 = icmp ult ptr %storemerge, %2
  br i1 %7, label %8, label %14

8:                                                ; preds = %6
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %storemerge, ptr noundef %0)
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %storemerge, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %11

11:                                               ; preds = %10, %8
  br label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  br label %6, !llvm.loop !64

14:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  br label %4

4:                                                ; preds = %9, %3
  %.0 = phi ptr [ %1, %3 ], [ %10, %9 ]
  %5 = ptrtoint ptr %.0 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 8
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, ptr %.0, i64 -8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %10, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %4, !llvm.loop !65

11:                                               ; preds = %4
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
  br label %21

10:                                               ; preds = %3
  %11 = add nsw i64 %7, -2
  %12 = sdiv i64 %11, 2
  br label %13

13:                                               ; preds = %19, %10
  %storemerge = phi i64 [ %12, %10 ], [ %20, %19 ]
  %14 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge
  %15 = load double, ptr %14, align 8
  %16 = load i8, ptr %2, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %storemerge, i64 noundef %7, double noundef %15, i8 %16)
  %17 = icmp eq i64 %storemerge, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %21

19:                                               ; preds = %13
  %20 = add nsw i64 %storemerge, -1
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
  %10 = ashr exact i64 %9, 3
  %11 = load i8, ptr %3, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef 0, i64 noundef %10, double noundef %5, i8 %11)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, i8 %4) #0 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.1", align 1
  store i8 %4, ptr %6, align 1
  br label %8

8:                                                ; preds = %21, %5
  %.01 = phi i64 [ %1, %5 ], [ %.1, %21 ]
  %.0 = phi i64 [ %1, %5 ], [ %.1, %21 ]
  %9 = add nsw i64 %2, -1
  %10 = sdiv i64 %9, 2
  %11 = icmp slt i64 %.0, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = shl i64 %.0, 1
  %14 = add i64 %13, 2
  %15 = getelementptr inbounds [8 x i8], ptr %0, i64 %14
  %16 = getelementptr [8 x i8], ptr %0, i64 %13
  %17 = getelementptr i8, ptr %16, i64 8
  %18 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %15, ptr noundef %17)
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = add nsw i64 %14, -1
  br label %21

21:                                               ; preds = %19, %12
  %.1 = phi i64 [ %20, %19 ], [ %14, %12 ]
  %22 = getelementptr inbounds [8 x i8], ptr %0, i64 %.1
  %23 = load double, ptr %22, align 8
  %24 = getelementptr inbounds [8 x i8], ptr %0, i64 %.01
  store double %23, ptr %24, align 8
  br label %8, !llvm.loop !67

25:                                               ; preds = %8
  %.01.lcssa = phi i64 [ %.01, %8 ]
  %.0.lcssa = phi i64 [ %.0, %8 ]
  %26 = and i64 %2, 1
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = add nsw i64 %2, -2
  %30 = ashr exact i64 %29, 1
  %31 = icmp eq i64 %.0.lcssa, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = shl i64 %.0.lcssa, 1
  %34 = add i64 %33, 2
  %35 = getelementptr [8 x i8], ptr %0, i64 %33
  %36 = getelementptr i8, ptr %35, i64 8
  %37 = load double, ptr %36, align 8
  %38 = getelementptr inbounds [8 x i8], ptr %0, i64 %.01.lcssa
  store double %37, ptr %38, align 8
  %39 = add nsw i64 %34, -1
  br label %40

40:                                               ; preds = %32, %28, %25
  %.12 = phi i64 [ %39, %32 ], [ %.01.lcssa, %28 ], [ %.01.lcssa, %25 ]
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
  br label %7

7:                                                ; preds = %14, %5
  %.0 = phi i64 [ %1, %5 ], [ %storemerge, %14 ]
  %storemerge.in.in = phi i64 [ %1, %5 ], [ %storemerge, %14 ]
  %storemerge.in = add nsw i64 %storemerge.in.in, -1
  %storemerge = sdiv i64 %storemerge.in, 2
  %8 = icmp sgt i64 %.0, %2
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi i1 [ false, %7 ], [ %11, %9 ]
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge
  %16 = load double, ptr %15, align 8
  %17 = getelementptr inbounds [8 x i8], ptr %0, i64 %.0
  store double %16, ptr %17, align 8
  br label %7, !llvm.loop !68

18:                                               ; preds = %12
  %.0.lcssa = phi i64 [ %.0, %12 ]
  %19 = load double, ptr %6, align 8
  %20 = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store double %19, ptr %20, align 8
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

6:                                                ; preds = %18, %4
  %.01 = phi ptr [ %1, %4 ], [ %storemerge.lcssa, %18 ]
  %.0 = phi ptr [ %0, %4 ], [ %19, %18 ]
  br label %7

7:                                                ; preds = %9, %6
  %.1 = phi ptr [ %.0, %6 ], [ %10, %9 ]
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.1, ptr noundef %2)
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = getelementptr inbounds nuw i8, ptr %.1, i64 8
  br label %7, !llvm.loop !69

11:                                               ; preds = %7
  %.1.lcssa = phi ptr [ %.1, %7 ]
  br label %12

12:                                               ; preds = %14, %11
  %.pn = phi ptr [ %.01, %11 ], [ %storemerge, %14 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef nonnull %storemerge)
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  br label %12, !llvm.loop !70

15:                                               ; preds = %12
  %storemerge.lcssa = phi ptr [ %storemerge, %12 ]
  %16 = icmp ult ptr %.1.lcssa, %storemerge.lcssa
  br i1 %16, label %18, label %17

17:                                               ; preds = %15
  %.1.lcssa.lcssa = phi ptr [ %.1.lcssa, %15 ]
  ret ptr %.1.lcssa.lcssa

18:                                               ; preds = %15
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1.lcssa, ptr noundef nonnull %storemerge.lcssa)
  %19 = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 8
  br label %6, !llvm.loop !71
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  store i8 %2, ptr %4, align 1
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  br label %22

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %21, %7
  %.pn = phi ptr [ %0, %7 ], [ %storemerge, %21 ]
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %.not = icmp eq ptr %storemerge, %1
  br i1 %.not, label %.loopexit, label %9

9:                                                ; preds = %8
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull %storemerge, ptr noundef %0)
  br i1 %10, label %11, label %17

11:                                               ; preds = %9
  %12 = load double, ptr %storemerge, align 8
  %13 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  %14 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %15 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %storemerge)
  %16 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %14, ptr noundef %15, ptr noundef nonnull %13)
  store double %12, ptr %0, align 8
  br label %20

17:                                               ; preds = %9
  %18 = load i8, ptr %4, align 1
  %19 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %18)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %storemerge, i8 %19)
  br label %20

20:                                               ; preds = %17, %11
  br label %21

21:                                               ; preds = %20
  br label %8, !llvm.loop !72

.loopexit:                                        ; preds = %8
  br label %22

22:                                               ; preds = %.loopexit, %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  br label %4

4:                                                ; preds = %7, %3
  %storemerge = phi ptr [ %0, %3 ], [ %8, %7 ]
  %.not = icmp eq ptr %storemerge, %1
  br i1 %.not, label %9, label %5

5:                                                ; preds = %4
  %6 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %2)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %storemerge, i8 %6)
  br label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
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
  br label %6

6:                                                ; preds = %8, %2
  %.pn = phi ptr [ %0, %2 ], [ %storemerge, %8 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  %7 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %storemerge)
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = load double, ptr %storemerge, align 8
  store double %9, ptr %.pn, align 8
  br label %6, !llvm.loop !74

10:                                               ; preds = %6
  %.0.lcssa = phi ptr [ %.pn, %6 ]
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
  br label %5

5:                                                ; preds = %13, %4
  %.01 = phi ptr [ %1, %4 ], [ %15, %13 ]
  %.0 = phi i64 [ %2, %4 ], [ %14, %13 ]
  %6 = ptrtoint ptr %.01 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = icmp sgt i64 %8, 128
  br i1 %9, label %10, label %.loopexit

10:                                               ; preds = %5
  %11 = icmp eq i64 %.0, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  %.01.lcssa2 = phi ptr [ %.01, %10 ]
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %.01.lcssa2, ptr noundef %.01.lcssa2, i8 %3)
  br label %16

13:                                               ; preds = %10
  %14 = add nsw i64 %.0, -1
  %15 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %.01, i8 %3)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %15, ptr noundef %.01, i64 noundef %14, i8 %3)
  br label %5, !llvm.loop !75

.loopexit:                                        ; preds = %5
  br label %16

16:                                               ; preds = %.loopexit, %12
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 128
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef nonnull %9, i8 %2)
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef nonnull %10, ptr noundef %1, i8 %2)
  br label %12

11:                                               ; preds = %3
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2)
  br label %12

12:                                               ; preds = %11, %8
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
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_S6_T0_(ptr noundef nonnull %12, ptr noundef %1, ptr noundef %0, i8 %2)
  ret ptr %13
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  store i8 %3, ptr %5, align 1
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %6

6:                                                ; preds = %12, %4
  %storemerge = phi ptr [ %1, %4 ], [ %13, %12 ]
  %7 = icmp ult ptr %storemerge, %2
  br i1 %7, label %8, label %14

8:                                                ; preds = %6
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %storemerge, ptr noundef %0)
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %storemerge, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %11

11:                                               ; preds = %10, %8
  br label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  br label %6, !llvm.loop !76

14:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  br label %4

4:                                                ; preds = %9, %3
  %.0 = phi ptr [ %1, %3 ], [ %10, %9 ]
  %5 = ptrtoint ptr %.0 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 8
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, ptr %.0, i64 -8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %10, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %4, !llvm.loop !77

11:                                               ; preds = %4
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
  br label %21

10:                                               ; preds = %3
  %11 = add nsw i64 %7, -2
  %12 = sdiv i64 %11, 2
  br label %13

13:                                               ; preds = %19, %10
  %storemerge = phi i64 [ %12, %10 ], [ %20, %19 ]
  %14 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge
  %15 = load double, ptr %14, align 8
  %16 = load i8, ptr %2, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %storemerge, i64 noundef %7, double noundef %15, i8 %16)
  %17 = icmp eq i64 %storemerge, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %21

19:                                               ; preds = %13
  %20 = add nsw i64 %storemerge, -1
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
  %10 = ashr exact i64 %9, 3
  %11 = load i8, ptr %3, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef 0, i64 noundef %10, double noundef %5, i8 %11)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, i8 %4) #0 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.4", align 1
  store i8 %4, ptr %6, align 1
  br label %8

8:                                                ; preds = %21, %5
  %.01 = phi i64 [ %1, %5 ], [ %.1, %21 ]
  %.0 = phi i64 [ %1, %5 ], [ %.1, %21 ]
  %9 = add nsw i64 %2, -1
  %10 = sdiv i64 %9, 2
  %11 = icmp slt i64 %.0, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = shl i64 %.0, 1
  %14 = add i64 %13, 2
  %15 = getelementptr inbounds [8 x i8], ptr %0, i64 %14
  %16 = getelementptr [8 x i8], ptr %0, i64 %13
  %17 = getelementptr i8, ptr %16, i64 8
  %18 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %15, ptr noundef %17)
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = add nsw i64 %14, -1
  br label %21

21:                                               ; preds = %19, %12
  %.1 = phi i64 [ %20, %19 ], [ %14, %12 ]
  %22 = getelementptr inbounds [8 x i8], ptr %0, i64 %.1
  %23 = load double, ptr %22, align 8
  %24 = getelementptr inbounds [8 x i8], ptr %0, i64 %.01
  store double %23, ptr %24, align 8
  br label %8, !llvm.loop !79

25:                                               ; preds = %8
  %.01.lcssa = phi i64 [ %.01, %8 ]
  %.0.lcssa = phi i64 [ %.0, %8 ]
  %26 = and i64 %2, 1
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = add nsw i64 %2, -2
  %30 = ashr exact i64 %29, 1
  %31 = icmp eq i64 %.0.lcssa, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = shl i64 %.0.lcssa, 1
  %34 = add i64 %33, 2
  %35 = getelementptr [8 x i8], ptr %0, i64 %33
  %36 = getelementptr i8, ptr %35, i64 8
  %37 = load double, ptr %36, align 8
  %38 = getelementptr inbounds [8 x i8], ptr %0, i64 %.01.lcssa
  store double %37, ptr %38, align 8
  %39 = add nsw i64 %34, -1
  br label %40

40:                                               ; preds = %32, %28, %25
  %.12 = phi i64 [ %39, %32 ], [ %.01.lcssa, %28 ], [ %.01.lcssa, %25 ]
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
  br label %7

7:                                                ; preds = %14, %5
  %.0 = phi i64 [ %1, %5 ], [ %storemerge, %14 ]
  %storemerge.in.in = phi i64 [ %1, %5 ], [ %storemerge, %14 ]
  %storemerge.in = add nsw i64 %storemerge.in.in, -1
  %storemerge = sdiv i64 %storemerge.in, 2
  %8 = icmp sgt i64 %.0, %2
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi i1 [ false, %7 ], [ %11, %9 ]
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge
  %16 = load double, ptr %15, align 8
  %17 = getelementptr inbounds [8 x i8], ptr %0, i64 %.0
  store double %16, ptr %17, align 8
  br label %7, !llvm.loop !80

18:                                               ; preds = %12
  %.0.lcssa = phi i64 [ %.0, %12 ]
  %19 = load double, ptr %6, align 8
  %20 = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store double %19, ptr %20, align 8
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

6:                                                ; preds = %18, %4
  %.01 = phi ptr [ %1, %4 ], [ %storemerge.lcssa, %18 ]
  %.0 = phi ptr [ %0, %4 ], [ %19, %18 ]
  br label %7

7:                                                ; preds = %9, %6
  %.1 = phi ptr [ %.0, %6 ], [ %10, %9 ]
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.1, ptr noundef %2)
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = getelementptr inbounds nuw i8, ptr %.1, i64 8
  br label %7, !llvm.loop !81

11:                                               ; preds = %7
  %.1.lcssa = phi ptr [ %.1, %7 ]
  br label %12

12:                                               ; preds = %14, %11
  %.pn = phi ptr [ %.01, %11 ], [ %storemerge, %14 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef nonnull %storemerge)
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  br label %12, !llvm.loop !82

15:                                               ; preds = %12
  %storemerge.lcssa = phi ptr [ %storemerge, %12 ]
  %16 = icmp ult ptr %.1.lcssa, %storemerge.lcssa
  br i1 %16, label %18, label %17

17:                                               ; preds = %15
  %.1.lcssa.lcssa = phi ptr [ %.1.lcssa, %15 ]
  ret ptr %.1.lcssa.lcssa

18:                                               ; preds = %15
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1.lcssa, ptr noundef nonnull %storemerge.lcssa)
  %19 = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 8
  br label %6, !llvm.loop !83
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  store i8 %2, ptr %4, align 1
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  br label %22

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %21, %7
  %.pn = phi ptr [ %0, %7 ], [ %storemerge, %21 ]
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %.not = icmp eq ptr %storemerge, %1
  br i1 %.not, label %.loopexit, label %9

9:                                                ; preds = %8
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull %storemerge, ptr noundef %0)
  br i1 %10, label %11, label %17

11:                                               ; preds = %9
  %12 = load double, ptr %storemerge, align 8
  %13 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  %14 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %15 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %storemerge)
  %16 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %14, ptr noundef %15, ptr noundef nonnull %13)
  store double %12, ptr %0, align 8
  br label %20

17:                                               ; preds = %9
  %18 = load i8, ptr %4, align 1
  %19 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %18)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %storemerge, i8 %19)
  br label %20

20:                                               ; preds = %17, %11
  br label %21

21:                                               ; preds = %20
  br label %8, !llvm.loop !84

.loopexit:                                        ; preds = %8
  br label %22

22:                                               ; preds = %.loopexit, %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  br label %4

4:                                                ; preds = %7, %3
  %storemerge = phi ptr [ %0, %3 ], [ %8, %7 ]
  %.not = icmp eq ptr %storemerge, %1
  br i1 %.not, label %9, label %5

5:                                                ; preds = %4
  %6 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %2)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %storemerge, i8 %6)
  br label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
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
  br label %6

6:                                                ; preds = %8, %2
  %.pn = phi ptr [ %0, %2 ], [ %storemerge, %8 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  %7 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %storemerge)
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = load double, ptr %storemerge, align 8
  store double %9, ptr %.pn, align 8
  br label %6, !llvm.loop !86

10:                                               ; preds = %6
  %.0.lcssa = phi ptr [ %.pn, %6 ]
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
  br label %5

5:                                                ; preds = %13, %4
  %.01 = phi ptr [ %1, %4 ], [ %15, %13 ]
  %.0 = phi i64 [ %2, %4 ], [ %14, %13 ]
  %6 = ptrtoint ptr %.01 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = icmp sgt i64 %8, 128
  br i1 %9, label %10, label %.loopexit

10:                                               ; preds = %5
  %11 = icmp eq i64 %.0, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  %.01.lcssa2 = phi ptr [ %.01, %10 ]
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %.01.lcssa2, ptr noundef %.01.lcssa2, i8 %3)
  br label %16

13:                                               ; preds = %10
  %14 = add nsw i64 %.0, -1
  %15 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %.01, i8 %3)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %15, ptr noundef %.01, i64 noundef %14, i8 %3)
  br label %5, !llvm.loop !87

.loopexit:                                        ; preds = %5
  br label %16

16:                                               ; preds = %.loopexit, %12
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 128
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef nonnull %9, i8 %2)
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef nonnull %10, ptr noundef %1, i8 %2)
  br label %12

11:                                               ; preds = %3
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2)
  br label %12

12:                                               ; preds = %11, %8
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
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_S7_T0_(ptr noundef nonnull %12, ptr noundef %1, ptr noundef %0, i8 %2)
  ret ptr %13
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store i8 %3, ptr %5, align 1
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %6

6:                                                ; preds = %12, %4
  %storemerge = phi ptr [ %1, %4 ], [ %13, %12 ]
  %7 = icmp ult ptr %storemerge, %2
  br i1 %7, label %8, label %14

8:                                                ; preds = %6
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %storemerge, ptr noundef %0)
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %storemerge, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %11

11:                                               ; preds = %10, %8
  br label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  br label %6, !llvm.loop !88

14:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  br label %4

4:                                                ; preds = %9, %3
  %.0 = phi ptr [ %1, %3 ], [ %10, %9 ]
  %5 = ptrtoint ptr %.0 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 8
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, ptr %.0, i64 -8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %10, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %4, !llvm.loop !89

11:                                               ; preds = %4
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
  br label %21

10:                                               ; preds = %3
  %11 = add nsw i64 %7, -2
  %12 = sdiv i64 %11, 2
  br label %13

13:                                               ; preds = %19, %10
  %storemerge = phi i64 [ %12, %10 ], [ %20, %19 ]
  %14 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge
  %15 = load double, ptr %14, align 8
  %16 = load i8, ptr %2, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %storemerge, i64 noundef %7, double noundef %15, i8 %16)
  %17 = icmp eq i64 %storemerge, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %21

19:                                               ; preds = %13
  %20 = add nsw i64 %storemerge, -1
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
  %10 = ashr exact i64 %9, 3
  %11 = load i8, ptr %3, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef 0, i64 noundef %10, double noundef %5, i8 %11)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, i8 %4) #0 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.7", align 1
  store i8 %4, ptr %6, align 1
  br label %8

8:                                                ; preds = %21, %5
  %.01 = phi i64 [ %1, %5 ], [ %.1, %21 ]
  %.0 = phi i64 [ %1, %5 ], [ %.1, %21 ]
  %9 = add nsw i64 %2, -1
  %10 = sdiv i64 %9, 2
  %11 = icmp slt i64 %.0, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = shl i64 %.0, 1
  %14 = add i64 %13, 2
  %15 = getelementptr inbounds [8 x i8], ptr %0, i64 %14
  %16 = getelementptr [8 x i8], ptr %0, i64 %13
  %17 = getelementptr i8, ptr %16, i64 8
  %18 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %15, ptr noundef %17)
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = add nsw i64 %14, -1
  br label %21

21:                                               ; preds = %19, %12
  %.1 = phi i64 [ %20, %19 ], [ %14, %12 ]
  %22 = getelementptr inbounds [8 x i8], ptr %0, i64 %.1
  %23 = load double, ptr %22, align 8
  %24 = getelementptr inbounds [8 x i8], ptr %0, i64 %.01
  store double %23, ptr %24, align 8
  br label %8, !llvm.loop !91

25:                                               ; preds = %8
  %.01.lcssa = phi i64 [ %.01, %8 ]
  %.0.lcssa = phi i64 [ %.0, %8 ]
  %26 = and i64 %2, 1
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = add nsw i64 %2, -2
  %30 = ashr exact i64 %29, 1
  %31 = icmp eq i64 %.0.lcssa, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = shl i64 %.0.lcssa, 1
  %34 = add i64 %33, 2
  %35 = getelementptr [8 x i8], ptr %0, i64 %33
  %36 = getelementptr i8, ptr %35, i64 8
  %37 = load double, ptr %36, align 8
  %38 = getelementptr inbounds [8 x i8], ptr %0, i64 %.01.lcssa
  store double %37, ptr %38, align 8
  %39 = add nsw i64 %34, -1
  br label %40

40:                                               ; preds = %32, %28, %25
  %.12 = phi i64 [ %39, %32 ], [ %.01.lcssa, %28 ], [ %.01.lcssa, %25 ]
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
  br label %7

7:                                                ; preds = %14, %5
  %.0 = phi i64 [ %1, %5 ], [ %storemerge, %14 ]
  %storemerge.in.in = phi i64 [ %1, %5 ], [ %storemerge, %14 ]
  %storemerge.in = add nsw i64 %storemerge.in.in, -1
  %storemerge = sdiv i64 %storemerge.in, 2
  %8 = icmp sgt i64 %.0, %2
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi i1 [ false, %7 ], [ %11, %9 ]
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge
  %16 = load double, ptr %15, align 8
  %17 = getelementptr inbounds [8 x i8], ptr %0, i64 %.0
  store double %16, ptr %17, align 8
  br label %7, !llvm.loop !92

18:                                               ; preds = %12
  %.0.lcssa = phi i64 [ %.0, %12 ]
  %19 = load double, ptr %6, align 8
  %20 = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store double %19, ptr %20, align 8
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

6:                                                ; preds = %18, %4
  %.01 = phi ptr [ %1, %4 ], [ %storemerge.lcssa, %18 ]
  %.0 = phi ptr [ %0, %4 ], [ %19, %18 ]
  br label %7

7:                                                ; preds = %9, %6
  %.1 = phi ptr [ %.0, %6 ], [ %10, %9 ]
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.1, ptr noundef %2)
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = getelementptr inbounds nuw i8, ptr %.1, i64 8
  br label %7, !llvm.loop !93

11:                                               ; preds = %7
  %.1.lcssa = phi ptr [ %.1, %7 ]
  br label %12

12:                                               ; preds = %14, %11
  %.pn = phi ptr [ %.01, %11 ], [ %storemerge, %14 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef nonnull %storemerge)
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  br label %12, !llvm.loop !94

15:                                               ; preds = %12
  %storemerge.lcssa = phi ptr [ %storemerge, %12 ]
  %16 = icmp ult ptr %.1.lcssa, %storemerge.lcssa
  br i1 %16, label %18, label %17

17:                                               ; preds = %15
  %.1.lcssa.lcssa = phi ptr [ %.1.lcssa, %15 ]
  ret ptr %.1.lcssa.lcssa

18:                                               ; preds = %15
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1.lcssa, ptr noundef nonnull %storemerge.lcssa)
  %19 = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 8
  br label %6, !llvm.loop !95
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store i8 %2, ptr %4, align 1
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  br label %22

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %21, %7
  %.pn = phi ptr [ %0, %7 ], [ %storemerge, %21 ]
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %.not = icmp eq ptr %storemerge, %1
  br i1 %.not, label %.loopexit, label %9

9:                                                ; preds = %8
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull %storemerge, ptr noundef %0)
  br i1 %10, label %11, label %17

11:                                               ; preds = %9
  %12 = load double, ptr %storemerge, align 8
  %13 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  %14 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %15 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %storemerge)
  %16 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %14, ptr noundef %15, ptr noundef nonnull %13)
  store double %12, ptr %0, align 8
  br label %20

17:                                               ; preds = %9
  %18 = load i8, ptr %4, align 1
  %19 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %18)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %storemerge, i8 %19)
  br label %20

20:                                               ; preds = %17, %11
  br label %21

21:                                               ; preds = %20
  br label %8, !llvm.loop !96

.loopexit:                                        ; preds = %8
  br label %22

22:                                               ; preds = %.loopexit, %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  br label %4

4:                                                ; preds = %7, %3
  %storemerge = phi ptr [ %0, %3 ], [ %8, %7 ]
  %.not = icmp eq ptr %storemerge, %1
  br i1 %.not, label %9, label %5

5:                                                ; preds = %4
  %6 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %2)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %storemerge, i8 %6)
  br label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
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
  br label %6

6:                                                ; preds = %8, %2
  %.pn = phi ptr [ %0, %2 ], [ %storemerge, %8 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  %7 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %storemerge)
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = load double, ptr %storemerge, align 8
  store double %9, ptr %.pn, align 8
  br label %6, !llvm.loop !98

10:                                               ; preds = %6
  %.0.lcssa = phi ptr [ %.pn, %6 ]
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
  br label %5

5:                                                ; preds = %13, %4
  %.01 = phi ptr [ %1, %4 ], [ %15, %13 ]
  %.0 = phi i64 [ %2, %4 ], [ %14, %13 ]
  %6 = ptrtoint ptr %.01 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = icmp sgt i64 %8, 128
  br i1 %9, label %10, label %.loopexit

10:                                               ; preds = %5
  %11 = icmp eq i64 %.0, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  %.01.lcssa2 = phi ptr [ %.01, %10 ]
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %.01.lcssa2, ptr noundef %.01.lcssa2, i8 undef)
  br label %16

13:                                               ; preds = %10
  %14 = add nsw i64 %.0, -1
  %15 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(ptr noundef %0, ptr noundef %.01, i8 undef)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %15, ptr noundef %.01, i64 noundef %14, i8 undef)
  br label %5, !llvm.loop !99

.loopexit:                                        ; preds = %5
  br label %16

16:                                               ; preds = %.loopexit, %12
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 128
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef nonnull %9, i8 undef)
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %10, ptr noundef %1, i8 undef)
  br label %12

11:                                               ; preds = %3
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 undef)
  br label %12

12:                                               ; preds = %11, %8
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
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_(ptr noundef nonnull %12, ptr noundef %1, ptr noundef %0, i8 undef)
  ret ptr %13
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store i8 %3, ptr %5, align 1
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %6

6:                                                ; preds = %12, %4
  %storemerge = phi ptr [ %1, %4 ], [ %13, %12 ]
  %7 = icmp ult ptr %storemerge, %2
  br i1 %7, label %8, label %14

8:                                                ; preds = %6
  %9 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %storemerge, ptr noundef %0)
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %storemerge, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %11

11:                                               ; preds = %10, %8
  br label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  br label %6, !llvm.loop !100

14:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  br label %4

4:                                                ; preds = %9, %3
  %.0 = phi ptr [ %1, %3 ], [ %10, %9 ]
  %5 = ptrtoint ptr %.0 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 8
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, ptr %.0, i64 -8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %10, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %4, !llvm.loop !101

11:                                               ; preds = %4
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
  br label %20

10:                                               ; preds = %3
  %11 = add nsw i64 %7, -2
  %12 = sdiv i64 %11, 2
  br label %13

13:                                               ; preds = %18, %10
  %storemerge = phi i64 [ %12, %10 ], [ %19, %18 ]
  %14 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge
  %15 = load double, ptr %14, align 8
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %0, i64 noundef %storemerge, i64 noundef %7, double noundef %15, i8 undef)
  %16 = icmp eq i64 %storemerge, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %20

18:                                               ; preds = %13
  %19 = add nsw i64 %storemerge, -1
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
  %10 = ashr exact i64 %9, 3
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %10, double noundef %5, i8 undef)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, i8 %4) #0 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_val", align 1
  store i8 %4, ptr %6, align 1
  br label %8

8:                                                ; preds = %21, %5
  %.01 = phi i64 [ %1, %5 ], [ %.1, %21 ]
  %.0 = phi i64 [ %1, %5 ], [ %.1, %21 ]
  %9 = add nsw i64 %2, -1
  %10 = sdiv i64 %9, 2
  %11 = icmp slt i64 %.0, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = shl i64 %.0, 1
  %14 = add i64 %13, 2
  %15 = getelementptr inbounds [8 x i8], ptr %0, i64 %14
  %16 = getelementptr [8 x i8], ptr %0, i64 %13
  %17 = getelementptr i8, ptr %16, i64 8
  %18 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %15, ptr noundef %17)
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = add nsw i64 %14, -1
  br label %21

21:                                               ; preds = %19, %12
  %.1 = phi i64 [ %20, %19 ], [ %14, %12 ]
  %22 = getelementptr inbounds [8 x i8], ptr %0, i64 %.1
  %23 = load double, ptr %22, align 8
  %24 = getelementptr inbounds [8 x i8], ptr %0, i64 %.01
  store double %23, ptr %24, align 8
  br label %8, !llvm.loop !103

25:                                               ; preds = %8
  %.01.lcssa = phi i64 [ %.01, %8 ]
  %.0.lcssa = phi i64 [ %.0, %8 ]
  %26 = and i64 %2, 1
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = add nsw i64 %2, -2
  %30 = ashr exact i64 %29, 1
  %31 = icmp eq i64 %.0.lcssa, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = shl i64 %.0.lcssa, 1
  %34 = add i64 %33, 2
  %35 = getelementptr [8 x i8], ptr %0, i64 %33
  %36 = getelementptr i8, ptr %35, i64 8
  %37 = load double, ptr %36, align 8
  %38 = getelementptr inbounds [8 x i8], ptr %0, i64 %.01.lcssa
  store double %37, ptr %38, align 8
  %39 = add nsw i64 %34, -1
  br label %40

40:                                               ; preds = %32, %28, %25
  %.12 = phi i64 [ %39, %32 ], [ %.01.lcssa, %28 ], [ %.01.lcssa, %25 ]
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
  br label %7

7:                                                ; preds = %14, %5
  %.0 = phi i64 [ %1, %5 ], [ %storemerge, %14 ]
  %storemerge.in.in = phi i64 [ %1, %5 ], [ %storemerge, %14 ]
  %storemerge.in = add nsw i64 %storemerge.in.in, -1
  %storemerge = sdiv i64 %storemerge.in, 2
  %8 = icmp sgt i64 %.0, %2
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge
  %11 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi i1 [ false, %7 ], [ %11, %9 ]
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge
  %16 = load double, ptr %15, align 8
  %17 = getelementptr inbounds [8 x i8], ptr %0, i64 %.0
  store double %16, ptr %17, align 8
  br label %7, !llvm.loop !104

18:                                               ; preds = %12
  %.0.lcssa = phi i64 [ %.0, %12 ]
  %19 = load double, ptr %6, align 8
  %20 = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store double %19, ptr %20, align 8
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

6:                                                ; preds = %18, %4
  %.01 = phi ptr [ %1, %4 ], [ %storemerge.lcssa, %18 ]
  %.0 = phi ptr [ %0, %4 ], [ %19, %18 ]
  br label %7

7:                                                ; preds = %9, %6
  %.1 = phi ptr [ %.0, %6 ], [ %10, %9 ]
  %8 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.1, ptr noundef %2)
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = getelementptr inbounds nuw i8, ptr %.1, i64 8
  br label %7, !llvm.loop !105

11:                                               ; preds = %7
  %.1.lcssa = phi ptr [ %.1, %7 ]
  br label %12

12:                                               ; preds = %14, %11
  %.pn = phi ptr [ %.01, %11 ], [ %storemerge, %14 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  %13 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef nonnull %storemerge)
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  br label %12, !llvm.loop !106

15:                                               ; preds = %12
  %storemerge.lcssa = phi ptr [ %storemerge, %12 ]
  %16 = icmp ult ptr %.1.lcssa, %storemerge.lcssa
  br i1 %16, label %18, label %17

17:                                               ; preds = %15
  %.1.lcssa.lcssa = phi ptr [ %.1.lcssa, %15 ]
  ret ptr %.1.lcssa.lcssa

18:                                               ; preds = %15
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1.lcssa, ptr noundef nonnull %storemerge.lcssa)
  %19 = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 8
  br label %6, !llvm.loop !107
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store i8 %2, ptr %4, align 1
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  br label %21

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %20, %7
  %.pn = phi ptr [ %0, %7 ], [ %storemerge, %20 ]
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %.not = icmp eq ptr %storemerge, %1
  br i1 %.not, label %.loopexit, label %9

9:                                                ; preds = %8
  %10 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull %storemerge, ptr noundef %0)
  br i1 %10, label %11, label %17

11:                                               ; preds = %9
  %12 = load double, ptr %storemerge, align 8
  %13 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  %14 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %15 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %storemerge)
  %16 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %14, ptr noundef %15, ptr noundef nonnull %13)
  store double %12, ptr %0, align 8
  br label %19

17:                                               ; preds = %9
  %18 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 undef)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %storemerge, i8 undef)
  br label %19

19:                                               ; preds = %17, %11
  br label %20

20:                                               ; preds = %19
  br label %8, !llvm.loop !108

.loopexit:                                        ; preds = %8
  br label %21

21:                                               ; preds = %.loopexit, %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  br label %4

4:                                                ; preds = %7, %3
  %storemerge = phi ptr [ %0, %3 ], [ %8, %7 ]
  %.not = icmp eq ptr %storemerge, %1
  br i1 %.not, label %9, label %5

5:                                                ; preds = %4
  %6 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 undef)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %storemerge, i8 undef)
  br label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
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
  br label %6

6:                                                ; preds = %8, %2
  %.pn = phi ptr [ %0, %2 ], [ %storemerge, %8 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  %7 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %storemerge)
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = load double, ptr %storemerge, align 8
  store double %9, ptr %.pn, align 8
  br label %6, !llvm.loop !110

10:                                               ; preds = %6
  %.0.lcssa = phi ptr [ %.pn, %6 ]
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
