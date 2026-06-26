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
  %6 = sitofp i32 %1 to double
  %7 = sitofp i32 %2 to double
  %8 = fmul nnan double %6, %7
  %9 = fdiv double %8, 1.000000e+06
  br label %10

10:                                               ; preds = %24, %5
  %.0 = phi i32 [ 12, %5 ], [ %.1, %24 ]
  %storemerge = phi i32 [ 0, %5 ], [ %25, %24 ]
  %11 = load i32, ptr @current_test, align 4
  %12 = icmp slt i32 %storemerge, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load ptr, ptr @results, align 8
  %15 = zext nneg i32 %storemerge to i64
  %16 = getelementptr inbounds nuw [16 x i8], ptr %14, i64 %15
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %18 = load ptr, ptr %17, align 8
  %19 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %18) #15
  %20 = trunc i64 %19 to i32
  %21 = icmp slt i32 %.0, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22, %13
  %.1 = phi i32 [ %20, %22 ], [ %.0, %13 ]
  br label %24

24:                                               ; preds = %23
  %25 = add nuw nsw i32 %storemerge, 1
  br label %10, !llvm.loop !7

26:                                               ; preds = %10
  %27 = add nsw i32 %.0, -12
  %28 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.1, i32 noundef %27, ptr noundef nonnull @.str.2)
  %29 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.3, i32 noundef %.0, ptr noundef nonnull @.str.2)
  br label %30

30:                                               ; preds = %52, %26
  %storemerge1 = phi i32 [ 0, %26 ], [ %53, %52 ]
  %31 = load i32, ptr @current_test, align 4
  %32 = icmp slt i32 %storemerge1, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %30
  %34 = load ptr, ptr @results, align 8
  %35 = zext nneg i32 %storemerge1 to i64
  %36 = getelementptr inbounds nuw [16 x i8], ptr %34, i64 %35
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 8
  %38 = load ptr, ptr %37, align 8
  %39 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %38) #15
  %40 = trunc i64 %39 to i32
  %41 = sub i32 %.0, %40
  %42 = load ptr, ptr @results, align 8
  %43 = zext nneg i32 %storemerge1 to i64
  %44 = getelementptr inbounds nuw [16 x i8], ptr %42, i64 %43
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 8
  %46 = load ptr, ptr %45, align 8
  %47 = load double, ptr %44, align 8
  %48 = fdiv double %9, %47
  %49 = load double, ptr %42, align 8
  %50 = fdiv double %47, %49
  %51 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.4, i32 noundef %storemerge1, i32 noundef %41, ptr noundef nonnull @.str.5, ptr noundef %46, double noundef %47, double noundef %48, double noundef %50)
  br label %52

52:                                               ; preds = %33
  %53 = add nuw nsw i32 %storemerge1, 1
  br label %30, !llvm.loop !9

54:                                               ; preds = %30
  br label %55

55:                                               ; preds = %59, %54
  %.02 = phi double [ 0.000000e+00, %54 ], [ %64, %59 ]
  %storemerge2 = phi i32 [ 0, %54 ], [ %65, %59 ]
  %56 = load i32, ptr @current_test, align 4
  %57 = icmp slt i32 %storemerge2, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  br label %59

59:                                               ; preds = %58
  %60 = load ptr, ptr @results, align 8
  %61 = zext nneg i32 %storemerge2 to i64
  %62 = getelementptr inbounds nuw [16 x i8], ptr %60, i64 %61
  %63 = load double, ptr %62, align 8
  %64 = fadd double %.02, %63
  %65 = add nuw nsw i32 %storemerge2, 1
  br label %55, !llvm.loop !10

66:                                               ; preds = %55
  %67 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.6, ptr noundef %0, double noundef %.02)
  %68 = load i32, ptr @current_test, align 4
  %69 = icmp sgt i32 %68, 1
  br i1 %69, label %70, label %92

70:                                               ; preds = %66
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %92, label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %83, %71
  %.01 = phi double [ 0.000000e+00, %71 ], [ %84, %83 ]
  %storemerge3 = phi i32 [ 1, %71 ], [ %85, %83 ]
  %73 = load i32, ptr @current_test, align 4
  %74 = icmp slt i32 %storemerge3, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load ptr, ptr @results, align 8
  %77 = zext nneg i32 %storemerge3 to i64
  %78 = getelementptr inbounds nuw [16 x i8], ptr %76, i64 %77
  %79 = load double, ptr %78, align 8
  %80 = load double, ptr %76, align 8
  %81 = fdiv double %79, %80
  %82 = call double @log(double noundef %81) #15
  br label %83

83:                                               ; preds = %75
  %84 = fadd double %.01, %82
  %85 = add nuw nsw i32 %storemerge3, 1
  br label %72, !llvm.loop !11

86:                                               ; preds = %72
  %87 = add nsw i32 %73, -1
  %88 = sitofp i32 %87 to double
  %89 = fdiv double %.01, %88
  %90 = call double @exp(double noundef %89) #15
  %91 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.7, ptr noundef %0, double noundef %90)
  br label %92

92:                                               ; preds = %86, %70, %66
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
  %.0 = phi i32 [ 12, %2 ], [ %.1, %17 ]
  %storemerge = phi i32 [ 0, %2 ], [ %18, %17 ]
  %4 = load i32, ptr @current_test, align 4
  %5 = icmp slt i32 %storemerge, %4
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load ptr, ptr @results, align 8
  %8 = zext nneg i32 %storemerge to i64
  %9 = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %8
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %11 = load ptr, ptr %10, align 8
  %12 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #15
  %13 = trunc i64 %12 to i32
  %14 = icmp slt i32 %.0, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %6
  br label %16

16:                                               ; preds = %15, %6
  %.1 = phi i32 [ %13, %15 ], [ %.0, %6 ]
  br label %17

17:                                               ; preds = %16
  %18 = add nuw nsw i32 %storemerge, 1
  br label %3, !llvm.loop !12

19:                                               ; preds = %3
  %20 = add nsw i32 %.0, -12
  %21 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %20, ptr noundef nonnull @.str.2)
  %22 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %.0, ptr noundef nonnull @.str.2)
  br label %23

23:                                               ; preds = %42, %19
  %storemerge1 = phi i32 [ 0, %19 ], [ %43, %42 ]
  %24 = load i32, ptr @current_test, align 4
  %25 = icmp slt i32 %storemerge1, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %23
  %27 = load ptr, ptr @results, align 8
  %28 = zext nneg i32 %storemerge1 to i64
  %29 = getelementptr inbounds nuw [16 x i8], ptr %27, i64 %28
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 8
  %31 = load ptr, ptr %30, align 8
  %32 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %31) #15
  %33 = trunc i64 %32 to i32
  %34 = sub i32 %.0, %33
  %35 = load ptr, ptr @results, align 8
  %36 = zext nneg i32 %storemerge1 to i64
  %37 = getelementptr inbounds nuw [16 x i8], ptr %35, i64 %36
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 8
  %39 = load ptr, ptr %38, align 8
  %40 = load double, ptr %37, align 8
  %41 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %storemerge1, i32 noundef %34, ptr noundef nonnull @.str.5, ptr noundef %39, double noundef %40)
  br label %42

42:                                               ; preds = %26
  %43 = add nuw nsw i32 %storemerge1, 1
  br label %23, !llvm.loop !13

44:                                               ; preds = %23
  br label %45

45:                                               ; preds = %49, %44
  %.01 = phi double [ 0.000000e+00, %44 ], [ %54, %49 ]
  %storemerge2 = phi i32 [ 0, %44 ], [ %55, %49 ]
  %46 = load i32, ptr @current_test, align 4
  %47 = icmp slt i32 %storemerge2, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  br label %49

49:                                               ; preds = %48
  %50 = load ptr, ptr @results, align 8
  %51 = zext nneg i32 %storemerge2 to i64
  %52 = getelementptr inbounds nuw [16 x i8], ptr %50, i64 %51
  %53 = load double, ptr %52, align 8
  %54 = fadd double %.01, %53
  %55 = add nuw nsw i32 %storemerge2, 1
  br label %45, !llvm.loop !14

56:                                               ; preds = %45
  %57 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %1, double noundef %.01)
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
  br i1 %7, label %8, label %32

8:                                                ; preds = %3
  %9 = load double, ptr %0, align 8
  br label %10

10:                                               ; preds = %28, %8
  %.01 = phi ptr [ %0, %8 ], [ %.12, %28 ]
  %.0 = phi ptr [ %1, %8 ], [ %12, %28 ]
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
  %17 = icmp ult ptr %.01, %12
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
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
  %26 = icmp ult ptr %.12, %12
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  br label %31

28:                                               ; preds = %25
  %29 = load double, ptr %12, align 8
  %30 = load double, ptr %.12, align 8
  store double %30, ptr %12, align 8
  store double %29, ptr %.12, align 8
  br label %10, !llvm.loop !17

31:                                               ; preds = %27, %18
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %0, ptr noundef nonnull %.1, ptr noundef %2)
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %.1, ptr noundef %1, ptr noundef %2)
  br label %32

32:                                               ; preds = %31, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 8
  br i1 %7, label %8, label %32

8:                                                ; preds = %3
  %9 = load double, ptr %0, align 8
  br label %10

10:                                               ; preds = %28, %8
  %.01 = phi ptr [ %0, %8 ], [ %.12, %28 ]
  %.0 = phi ptr [ %1, %8 ], [ %12, %28 ]
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
  %17 = icmp ult ptr %.01, %12
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
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
  %26 = icmp ult ptr %.12, %12
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  br label %31

28:                                               ; preds = %25
  %29 = load double, ptr %12, align 8
  %30 = load double, ptr %.12, align 8
  store double %30, ptr %12, align 8
  store double %29, ptr %.12, align 8
  br label %10, !llvm.loop !20

31:                                               ; preds = %27, %18
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %0, ptr noundef nonnull %.1, ptr noundef %2)
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %.1, ptr noundef %1, ptr noundef %2)
  br label %32

32:                                               ; preds = %31, %3
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
  br label %25

25:                                               ; preds = %32, %17
  %storemerge = phi i32 [ 0, %17 ], [ %33, %32 ]
  %26 = icmp slt i32 %storemerge, %18
  br i1 %26, label %27, label %34

27:                                               ; preds = %25
  %28 = call i32 @rand()
  %29 = sitofp i32 %28 to double
  %30 = zext nneg i32 %storemerge to i64
  %31 = getelementptr inbounds nuw [8 x i8], ptr %24, i64 %30
  store double %29, ptr %31, align 8
  br label %32

32:                                               ; preds = %27
  %33 = add nuw nsw i32 %storemerge, 1
  br label %25, !llvm.loop !21

34:                                               ; preds = %25
  %35 = sext i32 %18 to i64
  %36 = icmp slt i32 %18, 0
  %37 = shl nsw i64 %35, 3
  %38 = select i1 %36, i64 -1, i64 %37
  %39 = call noalias noundef nonnull ptr @_Znay(i64 noundef %38) #16
  br label %40

40:                                               ; preds = %49, %34
  %storemerge1 = phi i32 [ 0, %34 ], [ %50, %49 ]
  %41 = icmp slt i32 %storemerge1, %10
  br i1 %41, label %42, label %51

42:                                               ; preds = %40
  %43 = sext i32 %18 to i64
  %44 = getelementptr inbounds [8 x i8], ptr %24, i64 %43
  %45 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef nonnull %24, ptr noundef nonnull %44, ptr noundef nonnull %39)
  %46 = sext i32 %18 to i64
  call void @qsort(ptr noundef nonnull %39, i64 noundef %46, i64 noundef 8, ptr noundef nonnull @_Z19less_than_function1PKvS0_)
  %47 = sext i32 %18 to i64
  %48 = getelementptr inbounds [8 x i8], ptr %39, i64 %47
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef nonnull %39, ptr noundef nonnull %48)
  br label %49

49:                                               ; preds = %42
  %50 = add nuw nsw i32 %storemerge1, 1
  br label %40, !llvm.loop !22

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %62, %51
  %storemerge2 = phi i32 [ 0, %51 ], [ %63, %62 ]
  %53 = icmp slt i32 %storemerge2, %10
  br i1 %53, label %54, label %64

54:                                               ; preds = %52
  %55 = sext i32 %18 to i64
  %56 = getelementptr inbounds [8 x i8], ptr %24, i64 %55
  %57 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef nonnull %24, ptr noundef nonnull %56, ptr noundef nonnull %39)
  %58 = sext i32 %18 to i64
  %59 = getelementptr inbounds [8 x i8], ptr %39, i64 %58
  call void @_Z18quicksort_functionPdS_PFbddE(ptr noundef nonnull %39, ptr noundef nonnull %59, ptr noundef nonnull @_Z19less_than_function2dd)
  %60 = sext i32 %18 to i64
  %61 = getelementptr inbounds [8 x i8], ptr %39, i64 %60
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef nonnull %39, ptr noundef nonnull %61)
  br label %62

62:                                               ; preds = %54
  %63 = add nuw nsw i32 %storemerge2, 1
  br label %52, !llvm.loop !23

64:                                               ; preds = %52
  br label %65

65:                                               ; preds = %75, %64
  %storemerge3 = phi i32 [ 0, %64 ], [ %76, %75 ]
  %66 = icmp slt i32 %storemerge3, %10
  br i1 %66, label %67, label %77

67:                                               ; preds = %65
  %68 = sext i32 %18 to i64
  %69 = getelementptr inbounds [8 x i8], ptr %24, i64 %68
  %70 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef nonnull %24, ptr noundef nonnull %69, ptr noundef nonnull %39)
  %71 = sext i32 %18 to i64
  %72 = getelementptr inbounds [8 x i8], ptr %39, i64 %71
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %39, ptr noundef nonnull %72, ptr noundef nonnull @_Z19less_than_function2dd)
  %73 = sext i32 %18 to i64
  %74 = getelementptr inbounds [8 x i8], ptr %39, i64 %73
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef nonnull %39, ptr noundef nonnull %74)
  br label %75

75:                                               ; preds = %67
  %76 = add nuw nsw i32 %storemerge3, 1
  br label %65, !llvm.loop !24

77:                                               ; preds = %65
  br label %78

78:                                               ; preds = %88, %77
  %storemerge4 = phi i32 [ 0, %77 ], [ %89, %88 ]
  %79 = icmp slt i32 %storemerge4, %10
  br i1 %79, label %80, label %90

80:                                               ; preds = %78
  %81 = sext i32 %18 to i64
  %82 = getelementptr inbounds [8 x i8], ptr %24, i64 %81
  %83 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef nonnull %24, ptr noundef nonnull %82, ptr noundef nonnull %39)
  %84 = sext i32 %18 to i64
  %85 = getelementptr inbounds [8 x i8], ptr %39, i64 %84
  call void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef nonnull %39, ptr noundef nonnull %85)
  %86 = sext i32 %18 to i64
  %87 = getelementptr inbounds [8 x i8], ptr %39, i64 %86
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef nonnull %39, ptr noundef nonnull %87)
  br label %88

88:                                               ; preds = %80
  %89 = add nuw nsw i32 %storemerge4, 1
  br label %78, !llvm.loop !25

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %101, %90
  %storemerge5 = phi i32 [ 0, %90 ], [ %102, %101 ]
  %92 = icmp slt i32 %storemerge5, %10
  br i1 %92, label %93, label %103

93:                                               ; preds = %91
  %94 = sext i32 %18 to i64
  %95 = getelementptr inbounds [8 x i8], ptr %24, i64 %94
  %96 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef nonnull %24, ptr noundef nonnull %95, ptr noundef nonnull %39)
  %97 = sext i32 %18 to i64
  %98 = getelementptr inbounds [8 x i8], ptr %39, i64 %97
  call void @_ZSt4sortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %39, ptr noundef nonnull %98, ptr noundef nonnull @_Z19less_than_function2dd)
  %99 = sext i32 %18 to i64
  %100 = getelementptr inbounds [8 x i8], ptr %39, i64 %99
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef nonnull %39, ptr noundef nonnull %100)
  br label %101

101:                                              ; preds = %93
  %102 = add nuw nsw i32 %storemerge5, 1
  br label %91, !llvm.loop !26

103:                                              ; preds = %91
  br label %104

104:                                              ; preds = %114, %103
  %storemerge6 = phi i32 [ 0, %103 ], [ %115, %114 ]
  %105 = icmp slt i32 %storemerge6, %10
  br i1 %105, label %106, label %116

106:                                              ; preds = %104
  %107 = sext i32 %18 to i64
  %108 = getelementptr inbounds [8 x i8], ptr %24, i64 %107
  %109 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef nonnull %24, ptr noundef nonnull %108, ptr noundef nonnull %39)
  %110 = sext i32 %18 to i64
  %111 = getelementptr inbounds [8 x i8], ptr %39, i64 %110
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef nonnull %39, ptr noundef nonnull %111, i8 undef)
  %112 = sext i32 %18 to i64
  %113 = getelementptr inbounds [8 x i8], ptr %39, i64 %112
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef nonnull %39, ptr noundef nonnull %113)
  br label %114

114:                                              ; preds = %106
  %115 = add nuw nsw i32 %storemerge6, 1
  br label %104, !llvm.loop !27

116:                                              ; preds = %104
  br label %117

117:                                              ; preds = %127, %116
  %storemerge7 = phi i32 [ 0, %116 ], [ %128, %127 ]
  %118 = icmp slt i32 %storemerge7, %10
  br i1 %118, label %119, label %129

119:                                              ; preds = %117
  %120 = sext i32 %18 to i64
  %121 = getelementptr inbounds [8 x i8], ptr %39, i64 %120
  call void @_ZSt4sortIPd17less_than_functorEvT_S2_T0_(ptr noundef nonnull %39, ptr noundef nonnull %121, i8 undef)
  %122 = sext i32 %18 to i64
  %123 = getelementptr inbounds [8 x i8], ptr %39, i64 %122
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef nonnull %39, ptr noundef nonnull %123)
  %124 = sext i32 %18 to i64
  %125 = getelementptr inbounds [8 x i8], ptr %24, i64 %124
  %126 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef nonnull %24, ptr noundef nonnull %125, ptr noundef nonnull %39)
  br label %127

127:                                              ; preds = %119
  %128 = add nuw nsw i32 %storemerge7, 1
  br label %117, !llvm.loop !28

129:                                              ; preds = %117
  br label %130

130:                                              ; preds = %140, %129
  %storemerge8 = phi i32 [ 0, %129 ], [ %141, %140 ]
  %131 = icmp slt i32 %storemerge8, %10
  br i1 %131, label %132, label %142

132:                                              ; preds = %130
  %133 = sext i32 %18 to i64
  %134 = getelementptr inbounds [8 x i8], ptr %24, i64 %133
  %135 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef nonnull %24, ptr noundef nonnull %134, ptr noundef nonnull %39)
  %136 = sext i32 %18 to i64
  %137 = getelementptr inbounds [8 x i8], ptr %39, i64 %136
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef nonnull %39, ptr noundef nonnull %137, i8 undef)
  %138 = sext i32 %18 to i64
  %139 = getelementptr inbounds [8 x i8], ptr %39, i64 %138
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef nonnull %39, ptr noundef nonnull %139)
  br label %140

140:                                              ; preds = %132
  %141 = add nuw nsw i32 %storemerge8, 1
  br label %130, !llvm.loop !29

142:                                              ; preds = %130
  br label %143

143:                                              ; preds = %153, %142
  %storemerge9 = phi i32 [ 0, %142 ], [ %154, %153 ]
  %144 = icmp slt i32 %storemerge9, %10
  br i1 %144, label %145, label %155

145:                                              ; preds = %143
  %146 = sext i32 %18 to i64
  %147 = getelementptr inbounds [8 x i8], ptr %24, i64 %146
  %148 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef nonnull %24, ptr noundef nonnull %147, ptr noundef nonnull %39)
  %149 = sext i32 %18 to i64
  %150 = getelementptr inbounds [8 x i8], ptr %39, i64 %149
  call void @_ZSt4sortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef nonnull %39, ptr noundef nonnull %150, i8 undef)
  %151 = sext i32 %18 to i64
  %152 = getelementptr inbounds [8 x i8], ptr %39, i64 %151
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef nonnull %39, ptr noundef nonnull %152)
  br label %153

153:                                              ; preds = %145
  %154 = add nuw nsw i32 %storemerge9, 1
  br label %143, !llvm.loop !30

155:                                              ; preds = %143
  br label %156

156:                                              ; preds = %166, %155
  %storemerge10 = phi i32 [ 0, %155 ], [ %167, %166 ]
  %157 = icmp slt i32 %storemerge10, %10
  br i1 %157, label %158, label %168

158:                                              ; preds = %156
  %159 = sext i32 %18 to i64
  %160 = getelementptr inbounds [8 x i8], ptr %24, i64 %159
  %161 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef nonnull %24, ptr noundef nonnull %160, ptr noundef nonnull %39)
  %162 = sext i32 %18 to i64
  %163 = getelementptr inbounds [8 x i8], ptr %39, i64 %162
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef nonnull %39, ptr noundef nonnull %163, i8 undef)
  %164 = sext i32 %18 to i64
  %165 = getelementptr inbounds [8 x i8], ptr %39, i64 %164
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef nonnull %39, ptr noundef nonnull %165)
  br label %166

166:                                              ; preds = %158
  %167 = add nuw nsw i32 %storemerge10, 1
  br label %156, !llvm.loop !31

168:                                              ; preds = %156
  br label %169

169:                                              ; preds = %179, %168
  %storemerge11 = phi i32 [ 0, %168 ], [ %180, %179 ]
  %170 = icmp slt i32 %storemerge11, %10
  br i1 %170, label %171, label %181

171:                                              ; preds = %169
  %172 = sext i32 %18 to i64
  %173 = getelementptr inbounds [8 x i8], ptr %24, i64 %172
  %174 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef nonnull %24, ptr noundef nonnull %173, ptr noundef nonnull %39)
  %175 = sext i32 %18 to i64
  %176 = getelementptr inbounds [8 x i8], ptr %39, i64 %175
  call void @_ZSt4sortIPdSt4lessIdEEvT_S3_T0_(ptr noundef nonnull %39, ptr noundef nonnull %176, i8 undef)
  %177 = sext i32 %18 to i64
  %178 = getelementptr inbounds [8 x i8], ptr %39, i64 %177
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef nonnull %39, ptr noundef nonnull %178)
  br label %179

179:                                              ; preds = %171
  %180 = add nuw nsw i32 %storemerge11, 1
  br label %169, !llvm.loop !32

181:                                              ; preds = %169
  br label %182

182:                                              ; preds = %192, %181
  %storemerge12 = phi i32 [ 0, %181 ], [ %193, %192 ]
  %183 = icmp slt i32 %storemerge12, %10
  br i1 %183, label %184, label %194

184:                                              ; preds = %182
  %185 = sext i32 %18 to i64
  %186 = getelementptr inbounds [8 x i8], ptr %24, i64 %185
  %187 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef nonnull %24, ptr noundef nonnull %186, ptr noundef nonnull %39)
  %188 = sext i32 %18 to i64
  %189 = getelementptr inbounds [8 x i8], ptr %39, i64 %188
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef nonnull %39, ptr noundef nonnull %189)
  %190 = sext i32 %18 to i64
  %191 = getelementptr inbounds [8 x i8], ptr %39, i64 %190
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef nonnull %39, ptr noundef nonnull %191)
  br label %192

192:                                              ; preds = %184
  %193 = add nuw nsw i32 %storemerge12, 1
  br label %182, !llvm.loop !33

194:                                              ; preds = %182
  br label %195

195:                                              ; preds = %205, %194
  %storemerge13 = phi i32 [ 0, %194 ], [ %206, %205 ]
  %196 = icmp slt i32 %storemerge13, %10
  br i1 %196, label %197, label %207

197:                                              ; preds = %195
  %198 = sext i32 %18 to i64
  %199 = getelementptr inbounds [8 x i8], ptr %24, i64 %198
  %200 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef nonnull %24, ptr noundef nonnull %199, ptr noundef nonnull %39)
  %201 = sext i32 %18 to i64
  %202 = getelementptr inbounds [8 x i8], ptr %39, i64 %201
  call void @_ZSt4sortIPdEvT_S1_(ptr noundef nonnull %39, ptr noundef nonnull %202)
  %203 = sext i32 %18 to i64
  %204 = getelementptr inbounds [8 x i8], ptr %39, i64 %203
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef nonnull %39, ptr noundef nonnull %204)
  br label %205

205:                                              ; preds = %197
  %206 = add nuw nsw i32 %storemerge13, 1
  br label %195, !llvm.loop !34

207:                                              ; preds = %195
  br i1 false, label %209, label %208

208:                                              ; preds = %207
  call void @_ZdaPv(ptr noundef nonnull %39) #17
  br label %209

209:                                              ; preds = %208, %207
  br i1 false, label %211, label %210

210:                                              ; preds = %209
  call void @_ZdaPv(ptr noundef nonnull %24) #17
  br label %211

211:                                              ; preds = %210, %209
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

3:                                                ; preds = %11, %2
  %.01 = phi ptr [ %0, %2 ], [ %12, %11 ]
  %.pn = phi ptr [ %0, %2 ], [ %.0, %11 ]
  %.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %.not = icmp eq ptr %.0, %1
  br i1 %.not, label %13, label %4

4:                                                ; preds = %3
  %5 = load double, ptr %.0, align 8
  %6 = load double, ptr %.01, align 8
  %7 = fcmp olt double %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load i32, ptr @current_test, align 4
  %10 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.11, i32 noundef %9)
  br label %13

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw i8, ptr %.01, i64 8
  br label %3, !llvm.loop !35

13:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef %0, ptr noundef %1) #0 comdat {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = icmp sgt i64 %5, 8
  br i1 %6, label %7, label %31

7:                                                ; preds = %2
  %8 = load double, ptr %0, align 8
  br label %9

9:                                                ; preds = %27, %7
  %.01 = phi ptr [ %0, %7 ], [ %.12, %27 ]
  %.0 = phi ptr [ %1, %7 ], [ %11, %27 ]
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
  %16 = icmp ult ptr %.01, %11
  br i1 %16, label %18, label %17

17:                                               ; preds = %15
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
  %25 = icmp ult ptr %.12, %11
  br i1 %25, label %27, label %26

26:                                               ; preds = %24
  br label %30

27:                                               ; preds = %24
  %28 = load double, ptr %11, align 8
  %29 = load double, ptr %.12, align 8
  store double %29, ptr %11, align 8
  store double %28, ptr %.12, align 8
  br label %9, !llvm.loop !38

30:                                               ; preds = %26, %17
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %0, ptr noundef nonnull %.1, ptr noundef nonnull @_Z19less_than_function2dd)
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %.1, ptr noundef %1, ptr noundef nonnull @_Z19less_than_function2dd)
  br label %31

31:                                               ; preds = %30, %2
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
  br i1 %9, label %10, label %32

10:                                               ; preds = %3
  %11 = load double, ptr %0, align 8
  store double %11, ptr %5, align 8
  br label %12

12:                                               ; preds = %28, %10
  %.01 = phi ptr [ %0, %10 ], [ %.12, %28 ]
  %.0 = phi ptr [ %1, %10 ], [ %14, %28 ]
  br label %13

13:                                               ; preds = %16, %12
  %.1 = phi ptr [ %.0, %12 ], [ %14, %16 ]
  %14 = getelementptr inbounds i8, ptr %.1, i64 -8
  %15 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %14)
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %13, !llvm.loop !39

17:                                               ; preds = %13
  %18 = icmp ult ptr %.01, %14
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
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
  %26 = icmp ult ptr %.12, %14
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  br label %31

28:                                               ; preds = %25
  %29 = load double, ptr %14, align 8
  %30 = load double, ptr %.12, align 8
  store double %30, ptr %14, align 8
  store double %29, ptr %.12, align 8
  br label %12, !llvm.loop !41

31:                                               ; preds = %27, %19
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef nonnull %0, ptr noundef nonnull %.1, i8 undef)
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef nonnull %.1, ptr noundef %1, i8 undef)
  br label %32

32:                                               ; preds = %31, %3
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
  br i1 %9, label %10, label %32

10:                                               ; preds = %3
  %11 = load double, ptr %0, align 8
  store double %11, ptr %5, align 8
  br label %12

12:                                               ; preds = %28, %10
  %.01 = phi ptr [ %0, %10 ], [ %.12, %28 ]
  %.0 = phi ptr [ %1, %10 ], [ %14, %28 ]
  br label %13

13:                                               ; preds = %16, %12
  %.1 = phi ptr [ %.0, %12 ], [ %14, %16 ]
  %14 = getelementptr inbounds i8, ptr %.1, i64 -8
  %15 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %14)
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %13, !llvm.loop !42

17:                                               ; preds = %13
  %18 = icmp ult ptr %.01, %14
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
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
  %26 = icmp ult ptr %.12, %14
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  br label %31

28:                                               ; preds = %25
  %29 = load double, ptr %14, align 8
  %30 = load double, ptr %.12, align 8
  store double %30, ptr %14, align 8
  store double %29, ptr %.12, align 8
  br label %12, !llvm.loop !44

31:                                               ; preds = %27, %19
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef nonnull %0, ptr noundef nonnull %.1, i8 undef)
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef nonnull %.1, ptr noundef %1, i8 undef)
  br label %32

32:                                               ; preds = %31, %3
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
  br i1 %9, label %10, label %32

10:                                               ; preds = %3
  %11 = load double, ptr %0, align 8
  store double %11, ptr %5, align 8
  br label %12

12:                                               ; preds = %28, %10
  %.01 = phi ptr [ %0, %10 ], [ %.12, %28 ]
  %.0 = phi ptr [ %1, %10 ], [ %14, %28 ]
  br label %13

13:                                               ; preds = %16, %12
  %.1 = phi ptr [ %.0, %12 ], [ %14, %16 ]
  %14 = getelementptr inbounds i8, ptr %.1, i64 -8
  %15 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %14)
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %13, !llvm.loop !45

17:                                               ; preds = %13
  %18 = icmp ult ptr %.01, %14
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
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
  %26 = icmp ult ptr %.12, %14
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  br label %31

28:                                               ; preds = %25
  %29 = load double, ptr %14, align 8
  %30 = load double, ptr %.12, align 8
  store double %30, ptr %14, align 8
  store double %29, ptr %.12, align 8
  br label %12, !llvm.loop !47

31:                                               ; preds = %27, %19
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef nonnull %0, ptr noundef nonnull %.1, i8 undef)
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef nonnull %.1, ptr noundef %1, i8 undef)
  br label %32

32:                                               ; preds = %31, %3
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
  br i1 %6, label %7, label %31

7:                                                ; preds = %2
  %8 = load double, ptr %0, align 8
  br label %9

9:                                                ; preds = %27, %7
  %.01 = phi ptr [ %0, %7 ], [ %.12, %27 ]
  %.0 = phi ptr [ %1, %7 ], [ %11, %27 ]
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
  %16 = icmp ult ptr %.01, %11
  br i1 %16, label %18, label %17

17:                                               ; preds = %15
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
  %25 = icmp ult ptr %.12, %11
  br i1 %25, label %27, label %26

26:                                               ; preds = %24
  br label %30

27:                                               ; preds = %24
  %28 = load double, ptr %11, align 8
  %29 = load double, ptr %.12, align 8
  store double %29, ptr %11, align 8
  store double %28, ptr %.12, align 8
  br label %9, !llvm.loop !50

30:                                               ; preds = %26, %17
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef nonnull %0, ptr noundef nonnull %.1)
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef nonnull %.1, ptr noundef %1)
  br label %31

31:                                               ; preds = %30, %2
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
  br label %16

10:                                               ; preds = %3
  %11 = icmp eq i64 %6, 8
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = load double, ptr %0, align 8
  store double %13, ptr %2, align 8
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %15

15:                                               ; preds = %12, %10
  %.1 = phi ptr [ %14, %12 ], [ %2, %10 ]
  br label %16

16:                                               ; preds = %15, %8
  %.0 = phi ptr [ %9, %8 ], [ %.1, %15 ]
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
  br i1 %11, label %12, label %20

12:                                               ; preds = %7
  %13 = icmp eq i64 %.0, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = load i64, ptr %5, align 8
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %.01, ptr noundef %.01, i64 %15)
  br label %20

16:                                               ; preds = %12
  %17 = add nsw i64 %.0, -1
  %18 = load i64, ptr %5, align 8
  %19 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %.01, i64 %18)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %19, ptr noundef %.01, i64 noundef %17, i64 %18)
  br label %7, !llvm.loop !51

20:                                               ; preds = %14, %7
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
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %10, double noundef %5, i64 %11)
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
  %21 = or disjoint i64 %14, 1
  br label %22

22:                                               ; preds = %20, %13
  %.1 = phi i64 [ %21, %20 ], [ %15, %13 ]
  %23 = getelementptr inbounds [8 x i8], ptr %0, i64 %.1
  %24 = load double, ptr %23, align 8
  %25 = getelementptr inbounds [8 x i8], ptr %0, i64 %.0
  store double %24, ptr %25, align 8
  br label %9, !llvm.loop !55

26:                                               ; preds = %9
  %27 = and i64 %2, 1
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = add nsw i64 %2, -2
  %31 = ashr exact i64 %30, 1
  %32 = icmp eq i64 %.0, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = shl i64 %.0, 1
  %35 = getelementptr [8 x i8], ptr %0, i64 %34
  %36 = getelementptr i8, ptr %35, i64 8
  %37 = load double, ptr %36, align 8
  %38 = getelementptr inbounds [8 x i8], ptr %0, i64 %.0
  store double %37, ptr %38, align 8
  %39 = or disjoint i64 %34, 1
  br label %40

40:                                               ; preds = %33, %29, %26
  %.12 = phi i64 [ %39, %33 ], [ %.0, %29 ], [ %.0, %26 ]
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
  %storemerge.in.in = phi i64 [ %1, %5 ], [ %storemerge, %14 ]
  %storemerge.in = add nsw i64 %storemerge.in.in, -1
  %storemerge = sdiv i64 %storemerge.in, 2
  %8 = icmp sgt i64 %storemerge.in.in, %2
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
  %17 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge.in.in
  store double %16, ptr %17, align 8
  br label %7, !llvm.loop !56

18:                                               ; preds = %12
  %19 = load double, ptr %6, align 8
  %20 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge.in.in
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
  %.01 = phi ptr [ %1, %4 ], [ %storemerge, %19 ]
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
  br label %13

13:                                               ; preds = %15, %12
  %.pn = phi ptr [ %.01, %12 ], [ %storemerge, %15 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %2, ptr noundef nonnull %storemerge)
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  br label %13, !llvm.loop !58

16:                                               ; preds = %13
  %17 = icmp ult ptr %.1, %storemerge
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  ret ptr %.1

19:                                               ; preds = %16
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1, ptr noundef nonnull %storemerge)
  %20 = getelementptr inbounds nuw i8, ptr %.1, i64 8
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
  br i1 %.not, label %23, label %10

10:                                               ; preds = %9
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %storemerge, ptr noundef %0)
  br i1 %11, label %12, label %18

12:                                               ; preds = %10
  %13 = load double, ptr %storemerge, align 8
  %14 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %15 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %16 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %storemerge)
  %17 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %15, ptr noundef %16, ptr noundef nonnull %14)
  store double %13, ptr %0, align 8
  br label %21

18:                                               ; preds = %10
  %19 = load i64, ptr %4, align 8
  %20 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %19)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef nonnull %storemerge, i64 %20)
  br label %21

21:                                               ; preds = %18, %12
  br label %22

22:                                               ; preds = %21
  br label %9, !llvm.loop !60

23:                                               ; preds = %9, %7
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
  %12 = load double, ptr %4, align 8
  store double %12, ptr %.pn, align 8
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
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = icmp eq i64 %.0, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %.01, ptr noundef %.01, i8 %3)
  br label %16

13:                                               ; preds = %10
  %14 = add nsw i64 %.0, -1
  %15 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %.01, i8 %3)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %15, ptr noundef %.01, i64 noundef %14, i8 %3)
  br label %5, !llvm.loop !63

16:                                               ; preds = %12, %5
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
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %10, double noundef %5, i8 %11)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, i8 %4) #0 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.1", align 1
  store i8 %4, ptr %6, align 1
  br label %8

8:                                                ; preds = %21, %5
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
  %20 = or disjoint i64 %13, 1
  br label %21

21:                                               ; preds = %19, %12
  %.1 = phi i64 [ %20, %19 ], [ %14, %12 ]
  %22 = getelementptr inbounds [8 x i8], ptr %0, i64 %.1
  %23 = load double, ptr %22, align 8
  %24 = getelementptr inbounds [8 x i8], ptr %0, i64 %.0
  store double %23, ptr %24, align 8
  br label %8, !llvm.loop !67

25:                                               ; preds = %8
  %26 = and i64 %2, 1
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = add nsw i64 %2, -2
  %30 = ashr exact i64 %29, 1
  %31 = icmp eq i64 %.0, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = shl i64 %.0, 1
  %34 = getelementptr [8 x i8], ptr %0, i64 %33
  %35 = getelementptr i8, ptr %34, i64 8
  %36 = load double, ptr %35, align 8
  %37 = getelementptr inbounds [8 x i8], ptr %0, i64 %.0
  store double %36, ptr %37, align 8
  %38 = or disjoint i64 %33, 1
  br label %39

39:                                               ; preds = %32, %28, %25
  %.12 = phi i64 [ %38, %32 ], [ %.0, %28 ], [ %.0, %25 ]
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
  %storemerge.in.in = phi i64 [ %1, %5 ], [ %storemerge, %14 ]
  %storemerge.in = add nsw i64 %storemerge.in.in, -1
  %storemerge = sdiv i64 %storemerge.in, 2
  %8 = icmp sgt i64 %storemerge.in.in, %2
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
  %17 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge.in.in
  store double %16, ptr %17, align 8
  br label %7, !llvm.loop !68

18:                                               ; preds = %12
  %19 = load double, ptr %6, align 8
  %20 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge.in.in
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
  %.01 = phi ptr [ %1, %4 ], [ %storemerge, %18 ]
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
  br label %12

12:                                               ; preds = %14, %11
  %.pn = phi ptr [ %.01, %11 ], [ %storemerge, %14 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef nonnull %storemerge)
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  br label %12, !llvm.loop !70

15:                                               ; preds = %12
  %16 = icmp ult ptr %.1, %storemerge
  br i1 %16, label %18, label %17

17:                                               ; preds = %15
  ret ptr %.1

18:                                               ; preds = %15
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1, ptr noundef nonnull %storemerge)
  %19 = getelementptr inbounds nuw i8, ptr %.1, i64 8
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
  br i1 %.not, label %22, label %9

9:                                                ; preds = %8
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull %storemerge, ptr noundef %0)
  br i1 %10, label %11, label %17

11:                                               ; preds = %9
  %12 = load double, ptr %storemerge, align 8
  %13 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %14 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %15 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %storemerge)
  %16 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %14, ptr noundef %15, ptr noundef nonnull %13)
  store double %12, ptr %0, align 8
  br label %20

17:                                               ; preds = %9
  %18 = load i8, ptr %4, align 1
  %19 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %18)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef nonnull %storemerge, i8 %19)
  br label %20

20:                                               ; preds = %17, %11
  br label %21

21:                                               ; preds = %20
  br label %8, !llvm.loop !72

22:                                               ; preds = %8, %6
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
  %11 = load double, ptr %4, align 8
  store double %11, ptr %.pn, align 8
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
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = icmp eq i64 %.0, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %.01, ptr noundef %.01, i8 %3)
  br label %16

13:                                               ; preds = %10
  %14 = add nsw i64 %.0, -1
  %15 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %.01, i8 %3)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %15, ptr noundef %.01, i64 noundef %14, i8 %3)
  br label %5, !llvm.loop !75

16:                                               ; preds = %12, %5
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
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %10, double noundef %5, i8 %11)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, i8 %4) #0 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.4", align 1
  store i8 %4, ptr %6, align 1
  br label %8

8:                                                ; preds = %21, %5
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
  %20 = or disjoint i64 %13, 1
  br label %21

21:                                               ; preds = %19, %12
  %.1 = phi i64 [ %20, %19 ], [ %14, %12 ]
  %22 = getelementptr inbounds [8 x i8], ptr %0, i64 %.1
  %23 = load double, ptr %22, align 8
  %24 = getelementptr inbounds [8 x i8], ptr %0, i64 %.0
  store double %23, ptr %24, align 8
  br label %8, !llvm.loop !79

25:                                               ; preds = %8
  %26 = and i64 %2, 1
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = add nsw i64 %2, -2
  %30 = ashr exact i64 %29, 1
  %31 = icmp eq i64 %.0, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = shl i64 %.0, 1
  %34 = getelementptr [8 x i8], ptr %0, i64 %33
  %35 = getelementptr i8, ptr %34, i64 8
  %36 = load double, ptr %35, align 8
  %37 = getelementptr inbounds [8 x i8], ptr %0, i64 %.0
  store double %36, ptr %37, align 8
  %38 = or disjoint i64 %33, 1
  br label %39

39:                                               ; preds = %32, %28, %25
  %.12 = phi i64 [ %38, %32 ], [ %.0, %28 ], [ %.0, %25 ]
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
  %storemerge.in.in = phi i64 [ %1, %5 ], [ %storemerge, %14 ]
  %storemerge.in = add nsw i64 %storemerge.in.in, -1
  %storemerge = sdiv i64 %storemerge.in, 2
  %8 = icmp sgt i64 %storemerge.in.in, %2
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
  %17 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge.in.in
  store double %16, ptr %17, align 8
  br label %7, !llvm.loop !80

18:                                               ; preds = %12
  %19 = load double, ptr %6, align 8
  %20 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge.in.in
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
  %.01 = phi ptr [ %1, %4 ], [ %storemerge, %18 ]
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
  br label %12

12:                                               ; preds = %14, %11
  %.pn = phi ptr [ %.01, %11 ], [ %storemerge, %14 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef nonnull %storemerge)
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  br label %12, !llvm.loop !82

15:                                               ; preds = %12
  %16 = icmp ult ptr %.1, %storemerge
  br i1 %16, label %18, label %17

17:                                               ; preds = %15
  ret ptr %.1

18:                                               ; preds = %15
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1, ptr noundef nonnull %storemerge)
  %19 = getelementptr inbounds nuw i8, ptr %.1, i64 8
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
  br i1 %.not, label %22, label %9

9:                                                ; preds = %8
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull %storemerge, ptr noundef %0)
  br i1 %10, label %11, label %17

11:                                               ; preds = %9
  %12 = load double, ptr %storemerge, align 8
  %13 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %14 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %15 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %storemerge)
  %16 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %14, ptr noundef %15, ptr noundef nonnull %13)
  store double %12, ptr %0, align 8
  br label %20

17:                                               ; preds = %9
  %18 = load i8, ptr %4, align 1
  %19 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %18)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef nonnull %storemerge, i8 %19)
  br label %20

20:                                               ; preds = %17, %11
  br label %21

21:                                               ; preds = %20
  br label %8, !llvm.loop !84

22:                                               ; preds = %8, %6
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
  %11 = load double, ptr %4, align 8
  store double %11, ptr %.pn, align 8
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
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = icmp eq i64 %.0, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %.01, ptr noundef %.01, i8 %3)
  br label %16

13:                                               ; preds = %10
  %14 = add nsw i64 %.0, -1
  %15 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %.01, i8 %3)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %15, ptr noundef %.01, i64 noundef %14, i8 %3)
  br label %5, !llvm.loop !87

16:                                               ; preds = %12, %5
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
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %10, double noundef %5, i8 %11)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, i8 %4) #0 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.7", align 1
  store i8 %4, ptr %6, align 1
  br label %8

8:                                                ; preds = %21, %5
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
  %20 = or disjoint i64 %13, 1
  br label %21

21:                                               ; preds = %19, %12
  %.1 = phi i64 [ %20, %19 ], [ %14, %12 ]
  %22 = getelementptr inbounds [8 x i8], ptr %0, i64 %.1
  %23 = load double, ptr %22, align 8
  %24 = getelementptr inbounds [8 x i8], ptr %0, i64 %.0
  store double %23, ptr %24, align 8
  br label %8, !llvm.loop !91

25:                                               ; preds = %8
  %26 = and i64 %2, 1
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = add nsw i64 %2, -2
  %30 = ashr exact i64 %29, 1
  %31 = icmp eq i64 %.0, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = shl i64 %.0, 1
  %34 = getelementptr [8 x i8], ptr %0, i64 %33
  %35 = getelementptr i8, ptr %34, i64 8
  %36 = load double, ptr %35, align 8
  %37 = getelementptr inbounds [8 x i8], ptr %0, i64 %.0
  store double %36, ptr %37, align 8
  %38 = or disjoint i64 %33, 1
  br label %39

39:                                               ; preds = %32, %28, %25
  %.12 = phi i64 [ %38, %32 ], [ %.0, %28 ], [ %.0, %25 ]
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
  %storemerge.in.in = phi i64 [ %1, %5 ], [ %storemerge, %14 ]
  %storemerge.in = add nsw i64 %storemerge.in.in, -1
  %storemerge = sdiv i64 %storemerge.in, 2
  %8 = icmp sgt i64 %storemerge.in.in, %2
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
  %17 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge.in.in
  store double %16, ptr %17, align 8
  br label %7, !llvm.loop !92

18:                                               ; preds = %12
  %19 = load double, ptr %6, align 8
  %20 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge.in.in
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
  %.01 = phi ptr [ %1, %4 ], [ %storemerge, %18 ]
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
  br label %12

12:                                               ; preds = %14, %11
  %.pn = phi ptr [ %.01, %11 ], [ %storemerge, %14 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef nonnull %storemerge)
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  br label %12, !llvm.loop !94

15:                                               ; preds = %12
  %16 = icmp ult ptr %.1, %storemerge
  br i1 %16, label %18, label %17

17:                                               ; preds = %15
  ret ptr %.1

18:                                               ; preds = %15
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1, ptr noundef nonnull %storemerge)
  %19 = getelementptr inbounds nuw i8, ptr %.1, i64 8
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
  br i1 %.not, label %22, label %9

9:                                                ; preds = %8
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull %storemerge, ptr noundef %0)
  br i1 %10, label %11, label %17

11:                                               ; preds = %9
  %12 = load double, ptr %storemerge, align 8
  %13 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %14 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %15 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %storemerge)
  %16 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %14, ptr noundef %15, ptr noundef nonnull %13)
  store double %12, ptr %0, align 8
  br label %20

17:                                               ; preds = %9
  %18 = load i8, ptr %4, align 1
  %19 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %18)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef nonnull %storemerge, i8 %19)
  br label %20

20:                                               ; preds = %17, %11
  br label %21

21:                                               ; preds = %20
  br label %8, !llvm.loop !96

22:                                               ; preds = %8, %6
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
  %11 = load double, ptr %4, align 8
  store double %11, ptr %.pn, align 8
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
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = icmp eq i64 %.0, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %.01, ptr noundef %.01, i8 undef)
  br label %16

13:                                               ; preds = %10
  %14 = add nsw i64 %.0, -1
  %15 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(ptr noundef %0, ptr noundef %.01, i8 undef)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %15, ptr noundef %.01, i64 noundef %14, i8 undef)
  br label %5, !llvm.loop !99

16:                                               ; preds = %12, %5
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
  %20 = or disjoint i64 %13, 1
  br label %21

21:                                               ; preds = %19, %12
  %.1 = phi i64 [ %20, %19 ], [ %14, %12 ]
  %22 = getelementptr inbounds [8 x i8], ptr %0, i64 %.1
  %23 = load double, ptr %22, align 8
  %24 = getelementptr inbounds [8 x i8], ptr %0, i64 %.0
  store double %23, ptr %24, align 8
  br label %8, !llvm.loop !103

25:                                               ; preds = %8
  %26 = and i64 %2, 1
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = add nsw i64 %2, -2
  %30 = ashr exact i64 %29, 1
  %31 = icmp eq i64 %.0, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = shl i64 %.0, 1
  %34 = getelementptr [8 x i8], ptr %0, i64 %33
  %35 = getelementptr i8, ptr %34, i64 8
  %36 = load double, ptr %35, align 8
  %37 = getelementptr inbounds [8 x i8], ptr %0, i64 %.0
  store double %36, ptr %37, align 8
  %38 = or disjoint i64 %33, 1
  br label %39

39:                                               ; preds = %32, %28, %25
  %.12 = phi i64 [ %38, %32 ], [ %.0, %28 ], [ %.0, %25 ]
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
  %storemerge.in.in = phi i64 [ %1, %5 ], [ %storemerge, %14 ]
  %storemerge.in = add nsw i64 %storemerge.in.in, -1
  %storemerge = sdiv i64 %storemerge.in, 2
  %8 = icmp sgt i64 %storemerge.in.in, %2
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
  %17 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge.in.in
  store double %16, ptr %17, align 8
  br label %7, !llvm.loop !104

18:                                               ; preds = %12
  %19 = load double, ptr %6, align 8
  %20 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge.in.in
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
  %.01 = phi ptr [ %1, %4 ], [ %storemerge, %18 ]
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
  br label %12

12:                                               ; preds = %14, %11
  %.pn = phi ptr [ %.01, %11 ], [ %storemerge, %14 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  %13 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef nonnull %storemerge)
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  br label %12, !llvm.loop !106

15:                                               ; preds = %12
  %16 = icmp ult ptr %.1, %storemerge
  br i1 %16, label %18, label %17

17:                                               ; preds = %15
  ret ptr %.1

18:                                               ; preds = %15
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1, ptr noundef nonnull %storemerge)
  %19 = getelementptr inbounds nuw i8, ptr %.1, i64 8
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
  br i1 %.not, label %21, label %9

9:                                                ; preds = %8
  %10 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull %storemerge, ptr noundef %0)
  br i1 %10, label %11, label %17

11:                                               ; preds = %9
  %12 = load double, ptr %storemerge, align 8
  %13 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %14 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %15 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %storemerge)
  %16 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %14, ptr noundef %15, ptr noundef nonnull %13)
  store double %12, ptr %0, align 8
  br label %19

17:                                               ; preds = %9
  %18 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 undef)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef nonnull %storemerge, i8 undef)
  br label %19

19:                                               ; preds = %17, %11
  br label %20

20:                                               ; preds = %19
  br label %8, !llvm.loop !108

21:                                               ; preds = %8, %6
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
  %11 = load double, ptr %4, align 8
  store double %11, ptr %.pn, align 8
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
