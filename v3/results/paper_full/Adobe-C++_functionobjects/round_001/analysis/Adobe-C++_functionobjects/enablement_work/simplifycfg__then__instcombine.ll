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
  br label %17

17:                                               ; preds = %20, %5
  %storemerge = phi i32 [ 0, %5 ], [ %30, %20 ]
  store i32 %storemerge, ptr %8, align 4
  %18 = load i32, ptr @current_test, align 4
  %19 = icmp slt i32 %storemerge, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load ptr, ptr @results, align 8
  %22 = sext i32 %storemerge to i64
  %23 = getelementptr inbounds [16 x i8], ptr %21, i64 %22
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 8
  %25 = load ptr, ptr %24, align 8
  %26 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %25) #15
  %27 = trunc i64 %26 to i32
  %28 = load i32, ptr %12, align 4
  %spec.store.select = call i32 @llvm.smax.i32(i32 %28, i32 %27)
  store i32 %spec.store.select, ptr %12, align 4
  %29 = load i32, ptr %8, align 4
  %30 = add nsw i32 %29, 1
  br label %17, !llvm.loop !7

31:                                               ; preds = %17
  %32 = load i32, ptr %12, align 4
  %33 = add nsw i32 %32, -12
  %34 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.1, i32 noundef %33, ptr noundef nonnull @.str.2)
  %35 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.3, i32 noundef %32, ptr noundef nonnull @.str.2)
  br label %36

36:                                               ; preds = %39, %31
  %storemerge1 = phi i32 [ 0, %31 ], [ %62, %39 ]
  store i32 %storemerge1, ptr %8, align 4
  %37 = load i32, ptr @current_test, align 4
  %38 = icmp slt i32 %storemerge1, %37
  br i1 %38, label %39, label %63

39:                                               ; preds = %36
  %40 = load i32, ptr %12, align 4
  %41 = load ptr, ptr @results, align 8
  %42 = sext i32 %storemerge1 to i64
  %43 = getelementptr inbounds [16 x i8], ptr %41, i64 %42
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 8
  %45 = load ptr, ptr %44, align 8
  %46 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %45) #15
  %47 = trunc i64 %46 to i32
  %48 = sub i32 %40, %47
  %49 = load ptr, ptr @results, align 8
  %50 = load i32, ptr %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [16 x i8], ptr %49, i64 %51
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 8
  %54 = load ptr, ptr %53, align 8
  %55 = load double, ptr %52, align 8
  %56 = load double, ptr %9, align 8
  %57 = fdiv double %56, %55
  %58 = load double, ptr %49, align 8
  %59 = fdiv double %55, %58
  %60 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.4, i32 noundef %storemerge1, i32 noundef %48, ptr noundef nonnull @.str.5, ptr noundef %54, double noundef %55, double noundef %57, double noundef %59)
  %61 = load i32, ptr %8, align 4
  %62 = add nsw i32 %61, 1
  br label %36, !llvm.loop !9

63:                                               ; preds = %36, %66
  %storemerge2 = phi i32 [ %74, %66 ], [ 0, %36 ]
  store i32 %storemerge2, ptr %8, align 4
  %64 = load i32, ptr @current_test, align 4
  %65 = icmp slt i32 %storemerge2, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load ptr, ptr @results, align 8
  %68 = sext i32 %storemerge2 to i64
  %69 = getelementptr inbounds [16 x i8], ptr %67, i64 %68
  %70 = load double, ptr %69, align 8
  %71 = load double, ptr %10, align 8
  %72 = fadd double %71, %70
  store double %72, ptr %10, align 8
  %73 = load i32, ptr %8, align 4
  %74 = add nsw i32 %73, 1
  br label %63, !llvm.loop !10

75:                                               ; preds = %63
  %76 = load ptr, ptr %6, align 8
  %77 = load double, ptr %10, align 8
  %78 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.6, ptr noundef %76, double noundef %77)
  %79 = load i32, ptr @current_test, align 4
  %80 = icmp slt i32 %79, 2
  %81 = load i32, ptr %7, align 4
  %.not = icmp eq i32 %81, 0
  %or.cond = select i1 %80, i1 true, i1 %.not
  br i1 %or.cond, label %105, label %82

82:                                               ; preds = %75, %85
  %storemerge3 = phi i32 [ %96, %85 ], [ 1, %75 ]
  store i32 %storemerge3, ptr %8, align 4
  %83 = load i32, ptr @current_test, align 4
  %84 = icmp slt i32 %storemerge3, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %82
  %86 = load ptr, ptr @results, align 8
  %87 = sext i32 %storemerge3 to i64
  %88 = getelementptr inbounds [16 x i8], ptr %86, i64 %87
  %89 = load double, ptr %88, align 8
  %90 = load double, ptr %86, align 8
  %91 = fdiv double %89, %90
  %92 = call double @log(double noundef %91) #15
  %93 = load double, ptr %11, align 8
  %94 = fadd double %93, %92
  store double %94, ptr %11, align 8
  %95 = load i32, ptr %8, align 4
  %96 = add nsw i32 %95, 1
  br label %82, !llvm.loop !11

97:                                               ; preds = %82
  %98 = load ptr, ptr %6, align 8
  %99 = load double, ptr %11, align 8
  %100 = add nsw i32 %83, -1
  %101 = sitofp i32 %100 to double
  %102 = fdiv double %99, %101
  %103 = call double @exp(double noundef %102) #15
  %104 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.7, ptr noundef %98, double noundef %103)
  br label %105

105:                                              ; preds = %97, %75
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
  br label %8

8:                                                ; preds = %11, %2
  %storemerge = phi i32 [ 0, %2 ], [ %21, %11 ]
  store i32 %storemerge, ptr %5, align 4
  %9 = load i32, ptr @current_test, align 4
  %10 = icmp slt i32 %storemerge, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %8
  %12 = load ptr, ptr @results, align 8
  %13 = sext i32 %storemerge to i64
  %14 = getelementptr inbounds [16 x i8], ptr %12, i64 %13
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %16 = load ptr, ptr %15, align 8
  %17 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %16) #15
  %18 = trunc i64 %17 to i32
  %19 = load i32, ptr %7, align 4
  %spec.store.select = call i32 @llvm.smax.i32(i32 %19, i32 %18)
  store i32 %spec.store.select, ptr %7, align 4
  %20 = load i32, ptr %5, align 4
  %21 = add nsw i32 %20, 1
  br label %8, !llvm.loop !12

22:                                               ; preds = %8
  %23 = load ptr, ptr %3, align 8
  %24 = load i32, ptr %7, align 4
  %25 = add nsw i32 %24, -12
  %26 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %23, ptr noundef nonnull @.str.8, i32 noundef %25, ptr noundef nonnull @.str.2)
  %27 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %23, ptr noundef nonnull @.str.9, i32 noundef %24, ptr noundef nonnull @.str.2)
  br label %28

28:                                               ; preds = %31, %22
  %storemerge1 = phi i32 [ 0, %22 ], [ %51, %31 ]
  store i32 %storemerge1, ptr %5, align 4
  %29 = load i32, ptr @current_test, align 4
  %30 = icmp slt i32 %storemerge1, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %28
  %32 = load ptr, ptr %3, align 8
  %33 = load i32, ptr %7, align 4
  %34 = load ptr, ptr @results, align 8
  %35 = sext i32 %storemerge1 to i64
  %36 = getelementptr inbounds [16 x i8], ptr %34, i64 %35
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 8
  %38 = load ptr, ptr %37, align 8
  %39 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %38) #15
  %40 = trunc i64 %39 to i32
  %41 = sub i32 %33, %40
  %42 = load ptr, ptr @results, align 8
  %43 = load i32, ptr %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [16 x i8], ptr %42, i64 %44
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 8
  %47 = load ptr, ptr %46, align 8
  %48 = load double, ptr %45, align 8
  %49 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %32, ptr noundef nonnull @.str.10, i32 noundef %storemerge1, i32 noundef %41, ptr noundef nonnull @.str.5, ptr noundef %47, double noundef %48)
  %50 = load i32, ptr %5, align 4
  %51 = add nsw i32 %50, 1
  br label %28, !llvm.loop !13

52:                                               ; preds = %28, %55
  %storemerge2 = phi i32 [ %63, %55 ], [ 0, %28 ]
  store i32 %storemerge2, ptr %5, align 4
  %53 = load i32, ptr @current_test, align 4
  %54 = icmp slt i32 %storemerge2, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load ptr, ptr @results, align 8
  %57 = sext i32 %storemerge2 to i64
  %58 = getelementptr inbounds [16 x i8], ptr %56, i64 %57
  %59 = load double, ptr %58, align 8
  %60 = load double, ptr %6, align 8
  %61 = fadd double %60, %59
  store double %61, ptr %6, align 8
  %62 = load i32, ptr %5, align 4
  %63 = add nsw i32 %62, 1
  br label %52, !llvm.loop !14

64:                                               ; preds = %52
  %65 = load ptr, ptr %3, align 8
  %66 = load ptr, ptr %4, align 8
  %67 = load double, ptr %6, align 8
  %68 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %65, ptr noundef nonnull @.str.6, ptr noundef %66, double noundef %67)
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
  %13 = load i32, ptr %3, align 4
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
  br i1 %13, label %14, label %55

14:                                               ; preds = %3
  %15 = load double, ptr %0, align 8
  store double %15, ptr %7, align 8
  %16 = load ptr, ptr %4, align 8
  store ptr %16, ptr %8, align 8
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
  %44 = load double, ptr %41, align 8
  %45 = load ptr, ptr %8, align 8
  %46 = load double, ptr %45, align 8
  %47 = load ptr, ptr %9, align 8
  store double %46, ptr %47, align 8
  store double %44, ptr %45, align 8
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
  %15 = load double, ptr %0, align 8
  store double %15, ptr %7, align 8
  %16 = load ptr, ptr %4, align 8
  store ptr %16, ptr %8, align 8
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
  %44 = load double, ptr %41, align 8
  %45 = load ptr, ptr %8, align 8
  %46 = load double, ptr %45, align 8
  %47 = load ptr, ptr %9, align 8
  store double %46, ptr %47, align 8
  store double %44, ptr %45, align 8
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
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %14 = load ptr, ptr %13, align 8
  %15 = call i32 @atoi(ptr noundef %14)
  br label %16

16:                                               ; preds = %2, %12
  %17 = phi i32 [ %15, %12 ], [ 300, %2 ]
  store i32 %17, ptr %6, align 4
  %18 = load i32, ptr %3, align 4
  %19 = icmp sgt i32 %18, 2
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 16
  %23 = load ptr, ptr %22, align 8
  %24 = call i32 @atoi(ptr noundef %23)
  br label %25

25:                                               ; preds = %16, %20
  %26 = phi i32 [ %24, %20 ], [ 10000, %16 ]
  store i32 %26, ptr %7, align 4
  %27 = add nsw i32 %26, 123
  call void @srand(i32 noundef %27)
  %28 = sext i32 %26 to i64
  %29 = icmp slt i32 %26, 0
  %30 = shl nsw i64 %28, 3
  %31 = select i1 %29, i64 -1, i64 %30
  %32 = call noalias noundef nonnull ptr @_Znay(i64 noundef %31) #16
  store ptr %32, ptr %8, align 8
  br label %33

33:                                               ; preds = %36, %25
  %storemerge = phi i32 [ 0, %25 ], [ %43, %36 ]
  store i32 %storemerge, ptr %9, align 4
  %34 = load i32, ptr %7, align 4
  %35 = icmp slt i32 %storemerge, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = call i32 @rand()
  %38 = sitofp i32 %37 to double
  %39 = load ptr, ptr %8, align 8
  %40 = load i32, ptr %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i8], ptr %39, i64 %41
  store double %38, ptr %42, align 8
  %43 = add nsw i32 %40, 1
  br label %33, !llvm.loop !21

44:                                               ; preds = %33
  %45 = sext i32 %34 to i64
  %46 = icmp slt i32 %34, 0
  %47 = shl nsw i64 %45, 3
  %48 = select i1 %46, i64 -1, i64 %47
  %49 = call noalias noundef nonnull ptr @_Znay(i64 noundef %48) #16
  store ptr %49, ptr %10, align 8
  br label %50

50:                                               ; preds = %53, %44
  %storemerge1 = phi i32 [ 0, %44 ], [ %65, %53 ]
  store i32 %storemerge1, ptr %5, align 4
  %51 = load i32, ptr %6, align 4
  %52 = icmp slt i32 %storemerge1, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %50
  %54 = load ptr, ptr %8, align 8
  %55 = load i32, ptr %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [8 x i8], ptr %54, i64 %56
  %58 = load ptr, ptr %10, align 8
  %59 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %54, ptr noundef %57, ptr noundef %58)
  %60 = sext i32 %55 to i64
  call void @qsort(ptr noundef %58, i64 noundef %60, i64 noundef 8, ptr noundef nonnull @_Z19less_than_function1PKvS0_)
  %61 = load i32, ptr %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [8 x i8], ptr %58, i64 %62
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %58, ptr noundef %63)
  %64 = load i32, ptr %5, align 4
  %65 = add nsw i32 %64, 1
  br label %50, !llvm.loop !22

66:                                               ; preds = %50, %69
  %storemerge2 = phi i32 [ %82, %69 ], [ 0, %50 ]
  store i32 %storemerge2, ptr %5, align 4
  %67 = load i32, ptr %6, align 4
  %68 = icmp slt i32 %storemerge2, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %66
  %70 = load ptr, ptr %8, align 8
  %71 = load i32, ptr %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [8 x i8], ptr %70, i64 %72
  %74 = load ptr, ptr %10, align 8
  %75 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %70, ptr noundef %73, ptr noundef %74)
  %76 = sext i32 %71 to i64
  %77 = getelementptr inbounds [8 x i8], ptr %74, i64 %76
  call void @_Z18quicksort_functionPdS_PFbddE(ptr noundef %74, ptr noundef %77, ptr noundef nonnull @_Z19less_than_function2dd)
  %78 = load i32, ptr %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [8 x i8], ptr %74, i64 %79
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %74, ptr noundef %80)
  %81 = load i32, ptr %5, align 4
  %82 = add nsw i32 %81, 1
  br label %66, !llvm.loop !23

83:                                               ; preds = %66, %86
  %storemerge3 = phi i32 [ %99, %86 ], [ 0, %66 ]
  store i32 %storemerge3, ptr %5, align 4
  %84 = load i32, ptr %6, align 4
  %85 = icmp slt i32 %storemerge3, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %83
  %87 = load ptr, ptr %8, align 8
  %88 = load i32, ptr %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [8 x i8], ptr %87, i64 %89
  %91 = load ptr, ptr %10, align 8
  %92 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %87, ptr noundef %90, ptr noundef %91)
  %93 = sext i32 %88 to i64
  %94 = getelementptr inbounds [8 x i8], ptr %91, i64 %93
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %91, ptr noundef %94, ptr noundef nonnull @_Z19less_than_function2dd)
  %95 = load i32, ptr %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [8 x i8], ptr %91, i64 %96
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %91, ptr noundef %97)
  %98 = load i32, ptr %5, align 4
  %99 = add nsw i32 %98, 1
  br label %83, !llvm.loop !24

100:                                              ; preds = %83, %103
  %storemerge4 = phi i32 [ %116, %103 ], [ 0, %83 ]
  store i32 %storemerge4, ptr %5, align 4
  %101 = load i32, ptr %6, align 4
  %102 = icmp slt i32 %storemerge4, %101
  br i1 %102, label %103, label %117

103:                                              ; preds = %100
  %104 = load ptr, ptr %8, align 8
  %105 = load i32, ptr %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [8 x i8], ptr %104, i64 %106
  %108 = load ptr, ptr %10, align 8
  %109 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %104, ptr noundef %107, ptr noundef %108)
  %110 = sext i32 %105 to i64
  %111 = getelementptr inbounds [8 x i8], ptr %108, i64 %110
  call void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef %108, ptr noundef %111)
  %112 = load i32, ptr %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [8 x i8], ptr %108, i64 %113
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %108, ptr noundef %114)
  %115 = load i32, ptr %5, align 4
  %116 = add nsw i32 %115, 1
  br label %100, !llvm.loop !25

117:                                              ; preds = %100, %120
  %storemerge5 = phi i32 [ %133, %120 ], [ 0, %100 ]
  store i32 %storemerge5, ptr %5, align 4
  %118 = load i32, ptr %6, align 4
  %119 = icmp slt i32 %storemerge5, %118
  br i1 %119, label %120, label %134

120:                                              ; preds = %117
  %121 = load ptr, ptr %8, align 8
  %122 = load i32, ptr %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [8 x i8], ptr %121, i64 %123
  %125 = load ptr, ptr %10, align 8
  %126 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %121, ptr noundef %124, ptr noundef %125)
  %127 = sext i32 %122 to i64
  %128 = getelementptr inbounds [8 x i8], ptr %125, i64 %127
  call void @_ZSt4sortIPdPFbddEEvT_S3_T0_(ptr noundef %125, ptr noundef %128, ptr noundef nonnull @_Z19less_than_function2dd)
  %129 = load i32, ptr %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [8 x i8], ptr %125, i64 %130
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %125, ptr noundef %131)
  %132 = load i32, ptr %5, align 4
  %133 = add nsw i32 %132, 1
  br label %117, !llvm.loop !26

134:                                              ; preds = %117, %137
  %storemerge6 = phi i32 [ %150, %137 ], [ 0, %117 ]
  store i32 %storemerge6, ptr %5, align 4
  %135 = load i32, ptr %6, align 4
  %136 = icmp slt i32 %storemerge6, %135
  br i1 %136, label %137, label %151

137:                                              ; preds = %134
  %138 = load ptr, ptr %8, align 8
  %139 = load i32, ptr %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [8 x i8], ptr %138, i64 %140
  %142 = load ptr, ptr %10, align 8
  %143 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %138, ptr noundef %141, ptr noundef %142)
  %144 = sext i32 %139 to i64
  %145 = getelementptr inbounds [8 x i8], ptr %142, i64 %144
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %142, ptr noundef %145, i8 undef)
  %146 = load i32, ptr %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [8 x i8], ptr %142, i64 %147
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %142, ptr noundef %148)
  %149 = load i32, ptr %5, align 4
  %150 = add nsw i32 %149, 1
  br label %134, !llvm.loop !27

151:                                              ; preds = %134, %154
  %storemerge7 = phi i32 [ %168, %154 ], [ 0, %134 ]
  store i32 %storemerge7, ptr %5, align 4
  %152 = load i32, ptr %6, align 4
  %153 = icmp slt i32 %storemerge7, %152
  br i1 %153, label %154, label %169

154:                                              ; preds = %151
  %155 = load ptr, ptr %10, align 8
  %156 = load i32, ptr %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [8 x i8], ptr %155, i64 %157
  call void @_ZSt4sortIPd17less_than_functorEvT_S2_T0_(ptr noundef %155, ptr noundef %158, i8 undef)
  %159 = sext i32 %156 to i64
  %160 = getelementptr inbounds [8 x i8], ptr %155, i64 %159
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %155, ptr noundef %160)
  %161 = load ptr, ptr %8, align 8
  %162 = load i32, ptr %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [8 x i8], ptr %161, i64 %163
  %165 = load ptr, ptr %10, align 8
  %166 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %161, ptr noundef %164, ptr noundef %165)
  %167 = load i32, ptr %5, align 4
  %168 = add nsw i32 %167, 1
  br label %151, !llvm.loop !28

169:                                              ; preds = %151, %172
  %storemerge8 = phi i32 [ %185, %172 ], [ 0, %151 ]
  store i32 %storemerge8, ptr %5, align 4
  %170 = load i32, ptr %6, align 4
  %171 = icmp slt i32 %storemerge8, %170
  br i1 %171, label %172, label %186

172:                                              ; preds = %169
  %173 = load ptr, ptr %8, align 8
  %174 = load i32, ptr %7, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [8 x i8], ptr %173, i64 %175
  %177 = load ptr, ptr %10, align 8
  %178 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %173, ptr noundef %176, ptr noundef %177)
  %179 = sext i32 %174 to i64
  %180 = getelementptr inbounds [8 x i8], ptr %177, i64 %179
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %177, ptr noundef %180, i8 undef)
  %181 = load i32, ptr %7, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [8 x i8], ptr %177, i64 %182
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %177, ptr noundef %183)
  %184 = load i32, ptr %5, align 4
  %185 = add nsw i32 %184, 1
  br label %169, !llvm.loop !29

186:                                              ; preds = %169, %189
  %storemerge9 = phi i32 [ %202, %189 ], [ 0, %169 ]
  store i32 %storemerge9, ptr %5, align 4
  %187 = load i32, ptr %6, align 4
  %188 = icmp slt i32 %storemerge9, %187
  br i1 %188, label %189, label %203

189:                                              ; preds = %186
  %190 = load ptr, ptr %8, align 8
  %191 = load i32, ptr %7, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [8 x i8], ptr %190, i64 %192
  %194 = load ptr, ptr %10, align 8
  %195 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %190, ptr noundef %193, ptr noundef %194)
  %196 = sext i32 %191 to i64
  %197 = getelementptr inbounds [8 x i8], ptr %194, i64 %196
  call void @_ZSt4sortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %194, ptr noundef %197, i8 undef)
  %198 = load i32, ptr %7, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [8 x i8], ptr %194, i64 %199
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %194, ptr noundef %200)
  %201 = load i32, ptr %5, align 4
  %202 = add nsw i32 %201, 1
  br label %186, !llvm.loop !30

203:                                              ; preds = %186, %206
  %storemerge10 = phi i32 [ %219, %206 ], [ 0, %186 ]
  store i32 %storemerge10, ptr %5, align 4
  %204 = load i32, ptr %6, align 4
  %205 = icmp slt i32 %storemerge10, %204
  br i1 %205, label %206, label %220

206:                                              ; preds = %203
  %207 = load ptr, ptr %8, align 8
  %208 = load i32, ptr %7, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [8 x i8], ptr %207, i64 %209
  %211 = load ptr, ptr %10, align 8
  %212 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %207, ptr noundef %210, ptr noundef %211)
  %213 = sext i32 %208 to i64
  %214 = getelementptr inbounds [8 x i8], ptr %211, i64 %213
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %211, ptr noundef %214, i8 undef)
  %215 = load i32, ptr %7, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [8 x i8], ptr %211, i64 %216
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %211, ptr noundef %217)
  %218 = load i32, ptr %5, align 4
  %219 = add nsw i32 %218, 1
  br label %203, !llvm.loop !31

220:                                              ; preds = %203, %223
  %storemerge11 = phi i32 [ %236, %223 ], [ 0, %203 ]
  store i32 %storemerge11, ptr %5, align 4
  %221 = load i32, ptr %6, align 4
  %222 = icmp slt i32 %storemerge11, %221
  br i1 %222, label %223, label %237

223:                                              ; preds = %220
  %224 = load ptr, ptr %8, align 8
  %225 = load i32, ptr %7, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [8 x i8], ptr %224, i64 %226
  %228 = load ptr, ptr %10, align 8
  %229 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %224, ptr noundef %227, ptr noundef %228)
  %230 = sext i32 %225 to i64
  %231 = getelementptr inbounds [8 x i8], ptr %228, i64 %230
  call void @_ZSt4sortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %228, ptr noundef %231, i8 undef)
  %232 = load i32, ptr %7, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [8 x i8], ptr %228, i64 %233
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %228, ptr noundef %234)
  %235 = load i32, ptr %5, align 4
  %236 = add nsw i32 %235, 1
  br label %220, !llvm.loop !32

237:                                              ; preds = %220, %240
  %storemerge12 = phi i32 [ %253, %240 ], [ 0, %220 ]
  store i32 %storemerge12, ptr %5, align 4
  %238 = load i32, ptr %6, align 4
  %239 = icmp slt i32 %storemerge12, %238
  br i1 %239, label %240, label %254

240:                                              ; preds = %237
  %241 = load ptr, ptr %8, align 8
  %242 = load i32, ptr %7, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [8 x i8], ptr %241, i64 %243
  %245 = load ptr, ptr %10, align 8
  %246 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %241, ptr noundef %244, ptr noundef %245)
  %247 = sext i32 %242 to i64
  %248 = getelementptr inbounds [8 x i8], ptr %245, i64 %247
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %245, ptr noundef %248)
  %249 = load i32, ptr %7, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [8 x i8], ptr %245, i64 %250
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %245, ptr noundef %251)
  %252 = load i32, ptr %5, align 4
  %253 = add nsw i32 %252, 1
  br label %237, !llvm.loop !33

254:                                              ; preds = %237, %257
  %storemerge13 = phi i32 [ %270, %257 ], [ 0, %237 ]
  store i32 %storemerge13, ptr %5, align 4
  %255 = load i32, ptr %6, align 4
  %256 = icmp slt i32 %storemerge13, %255
  br i1 %256, label %257, label %271

257:                                              ; preds = %254
  %258 = load ptr, ptr %8, align 8
  %259 = load i32, ptr %7, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [8 x i8], ptr %258, i64 %260
  %262 = load ptr, ptr %10, align 8
  %263 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %258, ptr noundef %261, ptr noundef %262)
  %264 = sext i32 %259 to i64
  %265 = getelementptr inbounds [8 x i8], ptr %262, i64 %264
  call void @_ZSt4sortIPdEvT_S1_(ptr noundef %262, ptr noundef %265)
  %266 = load i32, ptr %7, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [8 x i8], ptr %262, i64 %267
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %262, ptr noundef %268)
  %269 = load i32, ptr %5, align 4
  %270 = add nsw i32 %269, 1
  br label %254, !llvm.loop !34

271:                                              ; preds = %254
  %272 = load ptr, ptr %10, align 8
  %273 = icmp eq ptr %272, null
  br i1 %273, label %275, label %274

274:                                              ; preds = %271
  call void @_ZdaPv(ptr noundef nonnull %272) #17
  br label %275

275:                                              ; preds = %274, %271
  %276 = load ptr, ptr %8, align 8
  %277 = icmp eq ptr %276, null
  br i1 %277, label %279, label %278

278:                                              ; preds = %275
  call void @_ZdaPv(ptr noundef nonnull %276) #17
  br label %279

279:                                              ; preds = %278, %275
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
  br i1 %.not, label %20, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %11, ptr %3, align 8
  %12 = load double, ptr %8, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %14, ptr %5, align 8
  %15 = load double, ptr %13, align 8
  %16 = fcmp olt double %12, %15
  br i1 %16, label %17, label %7, !llvm.loop !35

17:                                               ; preds = %10
  %18 = load i32, ptr @current_test, align 4
  %19 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.11, i32 noundef %18)
  br label %20

20:                                               ; preds = %17, %7
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
  %13 = load double, ptr %0, align 8
  store double %13, ptr %5, align 8
  %14 = load ptr, ptr %3, align 8
  store ptr %14, ptr %6, align 8
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
  %40 = load double, ptr %37, align 8
  %41 = load ptr, ptr %6, align 8
  %42 = load double, ptr %41, align 8
  %43 = load ptr, ptr %7, align 8
  store double %42, ptr %43, align 8
  store double %40, ptr %41, align 8
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
  %15 = load double, ptr %0, align 8
  store double %15, ptr %7, align 8
  %16 = load ptr, ptr %5, align 8
  store ptr %16, ptr %8, align 8
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
  %38 = load double, ptr %35, align 8
  %39 = load ptr, ptr %8, align 8
  %40 = load double, ptr %39, align 8
  %41 = load ptr, ptr %9, align 8
  store double %40, ptr %41, align 8
  store double %38, ptr %39, align 8
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
  %15 = load double, ptr %0, align 8
  store double %15, ptr %7, align 8
  %16 = load ptr, ptr %5, align 8
  store ptr %16, ptr %8, align 8
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
  %38 = load double, ptr %35, align 8
  %39 = load ptr, ptr %8, align 8
  %40 = load double, ptr %39, align 8
  %41 = load ptr, ptr %9, align 8
  store double %40, ptr %41, align 8
  store double %38, ptr %39, align 8
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
  %15 = load double, ptr %0, align 8
  store double %15, ptr %7, align 8
  %16 = load ptr, ptr %5, align 8
  store ptr %16, ptr %8, align 8
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
  %38 = load double, ptr %35, align 8
  %39 = load ptr, ptr %8, align 8
  %40 = load double, ptr %39, align 8
  %41 = load ptr, ptr %9, align 8
  store double %40, ptr %41, align 8
  store double %38, ptr %39, align 8
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
  br i1 %11, label %12, label %47

12:                                               ; preds = %2
  %13 = load double, ptr %0, align 8
  store double %13, ptr %5, align 8
  %14 = load ptr, ptr %3, align 8
  store ptr %14, ptr %6, align 8
  %15 = load ptr, ptr %4, align 8
  store ptr %15, ptr %7, align 8
  br label %16

16:                                               ; preds = %36, %12
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
  %25 = icmp ult ptr %24, %20
  br i1 %25, label %26, label %41

26:                                               ; preds = %23, %31
  %27 = load ptr, ptr %6, align 8
  %28 = load double, ptr %27, align 8
  %29 = load double, ptr %5, align 8
  %30 = fcmp olt double %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr %32, ptr %6, align 8
  br label %26, !llvm.loop !49

33:                                               ; preds = %26
  %34 = load ptr, ptr %7, align 8
  %35 = icmp ult ptr %27, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load double, ptr %34, align 8
  %38 = load ptr, ptr %6, align 8
  %39 = load double, ptr %38, align 8
  %40 = load ptr, ptr %7, align 8
  store double %39, ptr %40, align 8
  store double %37, ptr %38, align 8
  br label %16, !llvm.loop !50

41:                                               ; preds = %33, %23
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
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 8
  %14 = load ptr, ptr %4, align 8
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %13, ptr align 8 %14, i64 %9, i1 false)
  %15 = load i64, ptr %6, align 8
  %16 = getelementptr inbounds [8 x i8], ptr %13, i64 %15
  store ptr %16, ptr %5, align 8
  br label %24

17:                                               ; preds = %3
  %18 = icmp eq i64 %9, 8
  br i1 %18, label %19, label %24

19:                                               ; preds = %17
  %20 = load ptr, ptr %4, align 8
  %21 = load double, ptr %20, align 8
  %22 = load ptr, ptr %5, align 8
  store double %21, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %23, ptr %5, align 8
  br label %24

24:                                               ; preds = %17, %19, %12
  %25 = load ptr, ptr %5, align 8
  ret ptr %25
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
  br i1 %.not, label %18, label %8

8:                                                ; preds = %3
  %9 = ptrtoint ptr %1 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 3
  %13 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %12)
  %14 = shl nsw i64 %13, 1
  %15 = load i64, ptr %4, align 8
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %14, i64 %15)
  %16 = load ptr, ptr %5, align 8
  %17 = load ptr, ptr %6, align 8
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %16, ptr noundef %17, i64 %15)
  br label %18

18:                                               ; preds = %8, %3
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

10:                                               ; preds = %22, %4
  %11 = load ptr, ptr %7, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = ptrtoint ptr %11 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = icmp sgt i64 %15, 128
  br i1 %16, label %17, label %28

17:                                               ; preds = %10
  %18 = load i64, ptr %8, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i64, ptr %5, align 8
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %12, ptr noundef %11, ptr noundef %11, i64 %21)
  br label %28

22:                                               ; preds = %17
  %23 = add nsw i64 %18, -1
  store i64 %23, ptr %8, align 8
  %24 = load ptr, ptr %6, align 8
  %25 = load ptr, ptr %7, align 8
  %26 = load i64, ptr %5, align 8
  %27 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_(ptr noundef %24, ptr noundef %25, i64 %26)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %27, ptr noundef %25, i64 noundef %23, i64 %26)
  store ptr %27, ptr %7, align 8
  br label %10, !llvm.loop !51

28:                                               ; preds = %20, %10
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
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %14 = load i64, ptr %4, align 8
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef nonnull %13, i64 %14)
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 128
  %17 = load ptr, ptr %6, align 8
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef nonnull %16, ptr noundef %17, i64 %14)
  br label %20

18:                                               ; preds = %3
  %19 = load i64, ptr %4, align 8
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %19)
  br label %20

20:                                               ; preds = %18, %12
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
  %20 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_S7_T0_(ptr noundef nonnull %19, ptr noundef %16, ptr noundef %14, i64 %18)
  ret ptr %20
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

11:                                               ; preds = %21, %4
  %storemerge = phi ptr [ %1, %4 ], [ %23, %21 ]
  store ptr %storemerge, ptr %9, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = icmp ult ptr %storemerge, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = load ptr, ptr %6, align 8
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %storemerge, ptr noundef %15)
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load ptr, ptr %6, align 8
  %19 = load ptr, ptr %7, align 8
  %20 = load ptr, ptr %9, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %21

21:                                               ; preds = %14, %17
  %22 = load ptr, ptr %9, align 8
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 8
  br label %11, !llvm.loop !52

24:                                               ; preds = %11
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
  br i1 %13, label %14, label %18

14:                                               ; preds = %7
  %15 = getelementptr inbounds i8, ptr %8, i64 -8
  store ptr %15, ptr %5, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = load ptr, ptr %6, align 8, !nonnull !53, !align !54
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %16, ptr noundef nonnull %15, ptr noundef nonnull %15, ptr noundef nonnull align 8 dereferenceable(8) %17)
  br label %7, !llvm.loop !55

18:                                               ; preds = %7
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
  br i1 %12, label %27, label %13

13:                                               ; preds = %3
  store i64 %11, ptr %6, align 8
  %14 = add nsw i64 %11, -2
  %15 = sdiv i64 %14, 2
  br label %16

16:                                               ; preds = %25, %13
  %storemerge = phi i64 [ %15, %13 ], [ %26, %25 ]
  store i64 %storemerge, ptr %7, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds [8 x i8], ptr %17, i64 %storemerge
  %19 = load double, ptr %18, align 8
  %20 = load i64, ptr %6, align 8
  %21 = load ptr, ptr %5, align 8, !nonnull !53, !align !54
  %22 = load i64, ptr %21, align 8
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef %17, i64 noundef %storemerge, i64 noundef %20, double noundef %19, i64 %22)
  %23 = load i64, ptr %7, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %16
  %26 = add nsw i64 %23, -1
  br label %16, !llvm.loop !56

27:                                               ; preds = %16, %3
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

15:                                               ; preds = %32, %5
  %16 = load i64, ptr %12, align 8
  %17 = load i64, ptr %9, align 8
  %18 = add nsw i64 %17, -1
  %19 = sdiv i64 %18, 2
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %15
  %22 = shl i64 %16, 1
  %23 = add i64 %22, 2
  store i64 %23, ptr %12, align 8
  %24 = load ptr, ptr %7, align 8
  %25 = getelementptr inbounds [8 x i8], ptr %24, i64 %23
  %26 = getelementptr [8 x i8], ptr %24, i64 %22
  %27 = getelementptr i8, ptr %26, i64 8
  %28 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %25, ptr noundef %27)
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i64, ptr %12, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, ptr %12, align 8
  br label %32

32:                                               ; preds = %29, %21
  %33 = load ptr, ptr %7, align 8
  %34 = load i64, ptr %12, align 8
  %35 = getelementptr inbounds [8 x i8], ptr %33, i64 %34
  %36 = load double, ptr %35, align 8
  %37 = load i64, ptr %8, align 8
  %38 = getelementptr inbounds [8 x i8], ptr %33, i64 %37
  store double %36, ptr %38, align 8
  store i64 %34, ptr %8, align 8
  br label %15, !llvm.loop !57

39:                                               ; preds = %15
  %40 = and i64 %17, 1
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %39
  %43 = add nsw i64 %17, -2
  %44 = ashr exact i64 %43, 1
  %45 = icmp eq i64 %16, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = shl i64 %16, 1
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

57:                                               ; preds = %46, %42, %39
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %58 = load ptr, ptr %7, align 8
  %59 = load i64, ptr %8, align 8
  %60 = load i64, ptr %11, align 8
  %61 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEEEvT_T0_S8_T1_RT2_(ptr noundef %58, i64 noundef %59, i64 noundef %60, double noundef %61, ptr noundef nonnull align 8 dereferenceable(8) %13)
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

10:                                               ; preds = %30, %4
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
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  ret ptr %26

30:                                               ; preds = %25
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %26, ptr noundef nonnull %27)
  %31 = load ptr, ptr %6, align 8
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr %32, ptr %6, align 8
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
  br i1 %9, label %29, label %10

10:                                               ; preds = %3, %27
  %.pn = phi ptr [ %28, %27 ], [ %0, %3 ]
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  store ptr %storemerge, ptr %7, align 8
  %11 = load ptr, ptr %6, align 8
  %.not = icmp eq ptr %storemerge, %11
  br i1 %.not, label %29, label %12

12:                                               ; preds = %10
  %13 = load ptr, ptr %5, align 8
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %storemerge, ptr noundef %13)
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

27:                                               ; preds = %15, %23
  %28 = load ptr, ptr %7, align 8
  br label %10, !llvm.loop !62

29:                                               ; preds = %3, %10
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
  %storemerge = phi ptr [ %0, %3 ], [ %14, %10 ]
  store ptr %storemerge, ptr %6, align 8
  %9 = load ptr, ptr %5, align 8
  %.not = icmp eq ptr %storemerge, %9
  br i1 %.not, label %15, label %10

10:                                               ; preds = %8
  %11 = load i64, ptr %4, align 8
  %12 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %11)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %storemerge, i64 %12)
  %13 = load ptr, ptr %6, align 8
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %8, !llvm.loop !63

15:                                               ; preds = %8
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
  store ptr %0, ptr %4, align 8
  store ptr %2, ptr %5, align 8
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = sub nsw i64 0, %9
  call void @_ZSt9__advanceIPdxEvRT_T0_St26random_access_iterator_tag(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %10, i8 undef)
  %11 = icmp sgt i64 %9, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 8
  %14 = load ptr, ptr %4, align 8
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %13, ptr align 8 %14, i64 %8, i1 false)
  br label %21

15:                                               ; preds = %3
  %16 = icmp eq i64 %8, 8
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = load ptr, ptr %4, align 8
  %19 = load double, ptr %18, align 8
  %20 = load ptr, ptr %5, align 8
  store double %19, ptr %20, align 8
  br label %21

21:                                               ; preds = %15, %17, %12
  %22 = load ptr, ptr %5, align 8
  ret ptr %22
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZSt9__advanceIPdxEvRT_T0_St26random_access_iterator_tag(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, i8 %2) #5 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %6 = call i1 @llvm.is.constant.i64(i64 %1)
  %7 = icmp eq i64 %1, 1
  %or.cond = and i1 %6, %7
  br i1 %or.cond, label %8, label %12

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !nonnull !53, !align !54
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %11, ptr %9, align 8
  br label %25

12:                                               ; preds = %3
  %13 = load i64, ptr %5, align 8
  %14 = call i1 @llvm.is.constant.i64(i64 %13)
  %15 = icmp eq i64 %13, -1
  %or.cond1 = select i1 %14, i1 %15, i1 false
  br i1 %or.cond1, label %16, label %20

16:                                               ; preds = %12
  %17 = load ptr, ptr %4, align 8, !nonnull !53, !align !54
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds i8, ptr %18, i64 -8
  store ptr %19, ptr %17, align 8
  br label %25

20:                                               ; preds = %12
  %21 = load i64, ptr %5, align 8
  %22 = load ptr, ptr %4, align 8, !nonnull !53, !align !54
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds [8 x i8], ptr %23, i64 %21
  store ptr %24, ptr %22, align 8
  br label %25

25:                                               ; preds = %16, %20, %8
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
  br i1 %.not, label %17, label %7

7:                                                ; preds = %3
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %11)
  %13 = shl nsw i64 %12, 1
  %14 = load i8, ptr %4, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %13, i8 %14)
  %15 = load ptr, ptr %5, align 8
  %16 = load ptr, ptr %6, align 8
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %15, ptr noundef %16, i8 %14)
  br label %17

17:                                               ; preds = %7, %3
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

9:                                                ; preds = %21, %4
  %10 = load ptr, ptr %7, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = ptrtoint ptr %10 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = icmp sgt i64 %14, 128
  br i1 %15, label %16, label %27

16:                                               ; preds = %9
  %17 = load i64, ptr %8, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i8, ptr %5, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %11, ptr noundef %10, ptr noundef %10, i8 %20)
  br label %27

21:                                               ; preds = %16
  %22 = add nsw i64 %17, -1
  store i64 %22, ptr %8, align 8
  %23 = load ptr, ptr %6, align 8
  %24 = load ptr, ptr %7, align 8
  %25 = load i8, ptr %5, align 1
  %26 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_(ptr noundef %23, ptr noundef %24, i8 %25)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %26, ptr noundef %24, i64 noundef %22, i8 %25)
  store ptr %26, ptr %7, align 8
  br label %9, !llvm.loop !65

27:                                               ; preds = %19, %9
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
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %13 = load i8, ptr %4, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef nonnull %12, i8 %13)
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 128
  %16 = load ptr, ptr %6, align 8
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef nonnull %15, ptr noundef %16, i8 %13)
  br label %19

17:                                               ; preds = %3
  %18 = load i8, ptr %4, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %18)
  br label %19

19:                                               ; preds = %17, %11
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
  %19 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_S6_T0_(ptr noundef nonnull %18, ptr noundef %15, ptr noundef %13, i8 %17)
  ret ptr %19
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

10:                                               ; preds = %20, %4
  %storemerge = phi ptr [ %1, %4 ], [ %22, %20 ]
  store ptr %storemerge, ptr %9, align 8
  %11 = load ptr, ptr %8, align 8
  %12 = icmp ult ptr %storemerge, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = load ptr, ptr %6, align 8
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %storemerge, ptr noundef %14)
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load ptr, ptr %6, align 8
  %18 = load ptr, ptr %7, align 8
  %19 = load ptr, ptr %9, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %20

20:                                               ; preds = %13, %16
  %21 = load ptr, ptr %9, align 8
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 8
  br label %10, !llvm.loop !66

23:                                               ; preds = %10
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
  br i1 %13, label %14, label %18

14:                                               ; preds = %7
  %15 = getelementptr inbounds i8, ptr %8, i64 -8
  store ptr %15, ptr %5, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = load ptr, ptr %6, align 8, !nonnull !53
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %16, ptr noundef nonnull %15, ptr noundef nonnull %15, ptr noundef nonnull align 1 dereferenceable(1) %17)
  br label %7, !llvm.loop !67

18:                                               ; preds = %7
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
  br i1 %12, label %27, label %13

13:                                               ; preds = %3
  store i64 %11, ptr %6, align 8
  %14 = add nsw i64 %11, -2
  %15 = sdiv i64 %14, 2
  br label %16

16:                                               ; preds = %25, %13
  %storemerge = phi i64 [ %15, %13 ], [ %26, %25 ]
  store i64 %storemerge, ptr %7, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds [8 x i8], ptr %17, i64 %storemerge
  %19 = load double, ptr %18, align 8
  %20 = load i64, ptr %6, align 8
  %21 = load ptr, ptr %5, align 8, !nonnull !53
  %22 = load i8, ptr %21, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %17, i64 noundef %storemerge, i64 noundef %20, double noundef %19, i8 %22)
  %23 = load i64, ptr %7, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %16
  %26 = add nsw i64 %23, -1
  br label %16, !llvm.loop !68

27:                                               ; preds = %16, %3
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

14:                                               ; preds = %31, %5
  %15 = load i64, ptr %12, align 8
  %16 = load i64, ptr %9, align 8
  %17 = add nsw i64 %16, -1
  %18 = sdiv i64 %17, 2
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %14
  %21 = shl i64 %15, 1
  %22 = add i64 %21, 2
  store i64 %22, ptr %12, align 8
  %23 = load ptr, ptr %7, align 8
  %24 = getelementptr inbounds [8 x i8], ptr %23, i64 %22
  %25 = getelementptr [8 x i8], ptr %23, i64 %21
  %26 = getelementptr i8, ptr %25, i64 8
  %27 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %24, ptr noundef %26)
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i64, ptr %12, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, ptr %12, align 8
  br label %31

31:                                               ; preds = %28, %20
  %32 = load ptr, ptr %7, align 8
  %33 = load i64, ptr %12, align 8
  %34 = getelementptr inbounds [8 x i8], ptr %32, i64 %33
  %35 = load double, ptr %34, align 8
  %36 = load i64, ptr %8, align 8
  %37 = getelementptr inbounds [8 x i8], ptr %32, i64 %36
  store double %35, ptr %37, align 8
  store i64 %33, ptr %8, align 8
  br label %14, !llvm.loop !69

38:                                               ; preds = %14
  %39 = and i64 %16, 1
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %38
  %42 = add nsw i64 %16, -2
  %43 = ashr exact i64 %42, 1
  %44 = icmp eq i64 %15, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = shl i64 %15, 1
  %47 = add i64 %46, 2
  store i64 %47, ptr %12, align 8
  %48 = load ptr, ptr %7, align 8
  %49 = getelementptr [8 x i8], ptr %48, i64 %46
  %50 = getelementptr i8, ptr %49, i64 8
  %51 = load double, ptr %50, align 8
  %52 = load i64, ptr %8, align 8
  %53 = getelementptr inbounds [8 x i8], ptr %48, i64 %52
  store double %51, ptr %53, align 8
  %54 = load i64, ptr %12, align 8
  %55 = add nsw i64 %54, -1
  store i64 %55, ptr %8, align 8
  br label %56

56:                                               ; preds = %45, %41, %38
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %57 = load ptr, ptr %7, align 8
  %58 = load i64, ptr %8, align 8
  %59 = load i64, ptr %11, align 8
  %60 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %57, i64 noundef %58, i64 noundef %59, double noundef %60, ptr noundef nonnull align 1 dereferenceable(1) %13)
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

9:                                                ; preds = %29, %4
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
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  ret ptr %25

29:                                               ; preds = %24
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %25, ptr noundef nonnull %26)
  %30 = load ptr, ptr %6, align 8
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 8
  store ptr %31, ptr %6, align 8
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
  br i1 %8, label %28, label %9

9:                                                ; preds = %3, %26
  %.pn = phi ptr [ %27, %26 ], [ %0, %3 ]
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  store ptr %storemerge, ptr %7, align 8
  %10 = load ptr, ptr %6, align 8
  %.not = icmp eq ptr %storemerge, %10
  br i1 %.not, label %28, label %11

11:                                               ; preds = %9
  %12 = load ptr, ptr %5, align 8
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull %storemerge, ptr noundef %12)
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

26:                                               ; preds = %14, %22
  %27 = load ptr, ptr %7, align 8
  br label %9, !llvm.loop !74

28:                                               ; preds = %3, %9
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
  %storemerge = phi ptr [ %0, %3 ], [ %13, %9 ]
  store ptr %storemerge, ptr %6, align 8
  %8 = load ptr, ptr %5, align 8
  %.not = icmp eq ptr %storemerge, %8
  br i1 %.not, label %14, label %9

9:                                                ; preds = %7
  %10 = load i8, ptr %4, align 1
  %11 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %10)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %storemerge, i8 %11)
  %12 = load ptr, ptr %6, align 8
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 8
  br label %7, !llvm.loop !75

14:                                               ; preds = %7
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
  br i1 %.not, label %17, label %7

7:                                                ; preds = %3
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %11)
  %13 = shl nsw i64 %12, 1
  %14 = load i8, ptr %4, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %13, i8 %14)
  %15 = load ptr, ptr %5, align 8
  %16 = load ptr, ptr %6, align 8
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %15, ptr noundef %16, i8 %14)
  br label %17

17:                                               ; preds = %7, %3
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

9:                                                ; preds = %21, %4
  %10 = load ptr, ptr %7, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = ptrtoint ptr %10 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = icmp sgt i64 %14, 128
  br i1 %15, label %16, label %27

16:                                               ; preds = %9
  %17 = load i64, ptr %8, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i8, ptr %5, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %11, ptr noundef %10, ptr noundef %10, i8 %20)
  br label %27

21:                                               ; preds = %16
  %22 = add nsw i64 %17, -1
  store i64 %22, ptr %8, align 8
  %23 = load ptr, ptr %6, align 8
  %24 = load ptr, ptr %7, align 8
  %25 = load i8, ptr %5, align 1
  %26 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_(ptr noundef %23, ptr noundef %24, i8 %25)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %26, ptr noundef %24, i64 noundef %22, i8 %25)
  store ptr %26, ptr %7, align 8
  br label %9, !llvm.loop !77

27:                                               ; preds = %19, %9
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
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %13 = load i8, ptr %4, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef nonnull %12, i8 %13)
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 128
  %16 = load ptr, ptr %6, align 8
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef nonnull %15, ptr noundef %16, i8 %13)
  br label %19

17:                                               ; preds = %3
  %18 = load i8, ptr %4, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %18)
  br label %19

19:                                               ; preds = %17, %11
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
  %19 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_S6_T0_(ptr noundef nonnull %18, ptr noundef %15, ptr noundef %13, i8 %17)
  ret ptr %19
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

10:                                               ; preds = %20, %4
  %storemerge = phi ptr [ %1, %4 ], [ %22, %20 ]
  store ptr %storemerge, ptr %9, align 8
  %11 = load ptr, ptr %8, align 8
  %12 = icmp ult ptr %storemerge, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = load ptr, ptr %6, align 8
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %storemerge, ptr noundef %14)
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load ptr, ptr %6, align 8
  %18 = load ptr, ptr %7, align 8
  %19 = load ptr, ptr %9, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %20

20:                                               ; preds = %13, %16
  %21 = load ptr, ptr %9, align 8
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 8
  br label %10, !llvm.loop !78

23:                                               ; preds = %10
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
  br i1 %13, label %14, label %18

14:                                               ; preds = %7
  %15 = getelementptr inbounds i8, ptr %8, i64 -8
  store ptr %15, ptr %5, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = load ptr, ptr %6, align 8, !nonnull !53
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %16, ptr noundef nonnull %15, ptr noundef nonnull %15, ptr noundef nonnull align 1 dereferenceable(1) %17)
  br label %7, !llvm.loop !79

18:                                               ; preds = %7
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
  br i1 %12, label %27, label %13

13:                                               ; preds = %3
  store i64 %11, ptr %6, align 8
  %14 = add nsw i64 %11, -2
  %15 = sdiv i64 %14, 2
  br label %16

16:                                               ; preds = %25, %13
  %storemerge = phi i64 [ %15, %13 ], [ %26, %25 ]
  store i64 %storemerge, ptr %7, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds [8 x i8], ptr %17, i64 %storemerge
  %19 = load double, ptr %18, align 8
  %20 = load i64, ptr %6, align 8
  %21 = load ptr, ptr %5, align 8, !nonnull !53
  %22 = load i8, ptr %21, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %17, i64 noundef %storemerge, i64 noundef %20, double noundef %19, i8 %22)
  %23 = load i64, ptr %7, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %16
  %26 = add nsw i64 %23, -1
  br label %16, !llvm.loop !80

27:                                               ; preds = %16, %3
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

14:                                               ; preds = %31, %5
  %15 = load i64, ptr %12, align 8
  %16 = load i64, ptr %9, align 8
  %17 = add nsw i64 %16, -1
  %18 = sdiv i64 %17, 2
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %14
  %21 = shl i64 %15, 1
  %22 = add i64 %21, 2
  store i64 %22, ptr %12, align 8
  %23 = load ptr, ptr %7, align 8
  %24 = getelementptr inbounds [8 x i8], ptr %23, i64 %22
  %25 = getelementptr [8 x i8], ptr %23, i64 %21
  %26 = getelementptr i8, ptr %25, i64 8
  %27 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %24, ptr noundef %26)
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i64, ptr %12, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, ptr %12, align 8
  br label %31

31:                                               ; preds = %28, %20
  %32 = load ptr, ptr %7, align 8
  %33 = load i64, ptr %12, align 8
  %34 = getelementptr inbounds [8 x i8], ptr %32, i64 %33
  %35 = load double, ptr %34, align 8
  %36 = load i64, ptr %8, align 8
  %37 = getelementptr inbounds [8 x i8], ptr %32, i64 %36
  store double %35, ptr %37, align 8
  store i64 %33, ptr %8, align 8
  br label %14, !llvm.loop !81

38:                                               ; preds = %14
  %39 = and i64 %16, 1
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %38
  %42 = add nsw i64 %16, -2
  %43 = ashr exact i64 %42, 1
  %44 = icmp eq i64 %15, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = shl i64 %15, 1
  %47 = add i64 %46, 2
  store i64 %47, ptr %12, align 8
  %48 = load ptr, ptr %7, align 8
  %49 = getelementptr [8 x i8], ptr %48, i64 %46
  %50 = getelementptr i8, ptr %49, i64 8
  %51 = load double, ptr %50, align 8
  %52 = load i64, ptr %8, align 8
  %53 = getelementptr inbounds [8 x i8], ptr %48, i64 %52
  store double %51, ptr %53, align 8
  %54 = load i64, ptr %12, align 8
  %55 = add nsw i64 %54, -1
  store i64 %55, ptr %8, align 8
  br label %56

56:                                               ; preds = %45, %41, %38
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %57 = load ptr, ptr %7, align 8
  %58 = load i64, ptr %8, align 8
  %59 = load i64, ptr %11, align 8
  %60 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %57, i64 noundef %58, i64 noundef %59, double noundef %60, ptr noundef nonnull align 1 dereferenceable(1) %13)
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

9:                                                ; preds = %29, %4
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
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  ret ptr %25

29:                                               ; preds = %24
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %25, ptr noundef nonnull %26)
  %30 = load ptr, ptr %6, align 8
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 8
  store ptr %31, ptr %6, align 8
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
  br i1 %8, label %28, label %9

9:                                                ; preds = %3, %26
  %.pn = phi ptr [ %27, %26 ], [ %0, %3 ]
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  store ptr %storemerge, ptr %7, align 8
  %10 = load ptr, ptr %6, align 8
  %.not = icmp eq ptr %storemerge, %10
  br i1 %.not, label %28, label %11

11:                                               ; preds = %9
  %12 = load ptr, ptr %5, align 8
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull %storemerge, ptr noundef %12)
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

26:                                               ; preds = %14, %22
  %27 = load ptr, ptr %7, align 8
  br label %9, !llvm.loop !86

28:                                               ; preds = %3, %9
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
  %storemerge = phi ptr [ %0, %3 ], [ %13, %9 ]
  store ptr %storemerge, ptr %6, align 8
  %8 = load ptr, ptr %5, align 8
  %.not = icmp eq ptr %storemerge, %8
  br i1 %.not, label %14, label %9

9:                                                ; preds = %7
  %10 = load i8, ptr %4, align 1
  %11 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %10)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %storemerge, i8 %11)
  %12 = load ptr, ptr %6, align 8
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 8
  br label %7, !llvm.loop !87

14:                                               ; preds = %7
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
  br i1 %.not, label %17, label %7

7:                                                ; preds = %3
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %11)
  %13 = shl nsw i64 %12, 1
  %14 = load i8, ptr %4, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %13, i8 %14)
  %15 = load ptr, ptr %5, align 8
  %16 = load ptr, ptr %6, align 8
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %15, ptr noundef %16, i8 %14)
  br label %17

17:                                               ; preds = %7, %3
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

9:                                                ; preds = %21, %4
  %10 = load ptr, ptr %7, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = ptrtoint ptr %10 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = icmp sgt i64 %14, 128
  br i1 %15, label %16, label %27

16:                                               ; preds = %9
  %17 = load i64, ptr %8, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i8, ptr %5, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %11, ptr noundef %10, ptr noundef %10, i8 %20)
  br label %27

21:                                               ; preds = %16
  %22 = add nsw i64 %17, -1
  store i64 %22, ptr %8, align 8
  %23 = load ptr, ptr %6, align 8
  %24 = load ptr, ptr %7, align 8
  %25 = load i8, ptr %5, align 1
  %26 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_(ptr noundef %23, ptr noundef %24, i8 %25)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %26, ptr noundef %24, i64 noundef %22, i8 %25)
  store ptr %26, ptr %7, align 8
  br label %9, !llvm.loop !89

27:                                               ; preds = %19, %9
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
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %13 = load i8, ptr %4, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef nonnull %12, i8 %13)
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 128
  %16 = load ptr, ptr %6, align 8
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef nonnull %15, ptr noundef %16, i8 %13)
  br label %19

17:                                               ; preds = %3
  %18 = load i8, ptr %4, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %18)
  br label %19

19:                                               ; preds = %17, %11
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
  %19 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_S7_T0_(ptr noundef nonnull %18, ptr noundef %15, ptr noundef %13, i8 %17)
  ret ptr %19
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

10:                                               ; preds = %20, %4
  %storemerge = phi ptr [ %1, %4 ], [ %22, %20 ]
  store ptr %storemerge, ptr %9, align 8
  %11 = load ptr, ptr %8, align 8
  %12 = icmp ult ptr %storemerge, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = load ptr, ptr %6, align 8
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %storemerge, ptr noundef %14)
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load ptr, ptr %6, align 8
  %18 = load ptr, ptr %7, align 8
  %19 = load ptr, ptr %9, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %20

20:                                               ; preds = %13, %16
  %21 = load ptr, ptr %9, align 8
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 8
  br label %10, !llvm.loop !90

23:                                               ; preds = %10
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
  br i1 %13, label %14, label %18

14:                                               ; preds = %7
  %15 = getelementptr inbounds i8, ptr %8, i64 -8
  store ptr %15, ptr %5, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = load ptr, ptr %6, align 8, !nonnull !53
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %16, ptr noundef nonnull %15, ptr noundef nonnull %15, ptr noundef nonnull align 1 dereferenceable(1) %17)
  br label %7, !llvm.loop !91

18:                                               ; preds = %7
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
  br i1 %12, label %27, label %13

13:                                               ; preds = %3
  store i64 %11, ptr %6, align 8
  %14 = add nsw i64 %11, -2
  %15 = sdiv i64 %14, 2
  br label %16

16:                                               ; preds = %25, %13
  %storemerge = phi i64 [ %15, %13 ], [ %26, %25 ]
  store i64 %storemerge, ptr %7, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds [8 x i8], ptr %17, i64 %storemerge
  %19 = load double, ptr %18, align 8
  %20 = load i64, ptr %6, align 8
  %21 = load ptr, ptr %5, align 8, !nonnull !53
  %22 = load i8, ptr %21, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %17, i64 noundef %storemerge, i64 noundef %20, double noundef %19, i8 %22)
  %23 = load i64, ptr %7, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %16
  %26 = add nsw i64 %23, -1
  br label %16, !llvm.loop !92

27:                                               ; preds = %16, %3
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

14:                                               ; preds = %31, %5
  %15 = load i64, ptr %12, align 8
  %16 = load i64, ptr %9, align 8
  %17 = add nsw i64 %16, -1
  %18 = sdiv i64 %17, 2
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %14
  %21 = shl i64 %15, 1
  %22 = add i64 %21, 2
  store i64 %22, ptr %12, align 8
  %23 = load ptr, ptr %7, align 8
  %24 = getelementptr inbounds [8 x i8], ptr %23, i64 %22
  %25 = getelementptr [8 x i8], ptr %23, i64 %21
  %26 = getelementptr i8, ptr %25, i64 8
  %27 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %24, ptr noundef %26)
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i64, ptr %12, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, ptr %12, align 8
  br label %31

31:                                               ; preds = %28, %20
  %32 = load ptr, ptr %7, align 8
  %33 = load i64, ptr %12, align 8
  %34 = getelementptr inbounds [8 x i8], ptr %32, i64 %33
  %35 = load double, ptr %34, align 8
  %36 = load i64, ptr %8, align 8
  %37 = getelementptr inbounds [8 x i8], ptr %32, i64 %36
  store double %35, ptr %37, align 8
  store i64 %33, ptr %8, align 8
  br label %14, !llvm.loop !93

38:                                               ; preds = %14
  %39 = and i64 %16, 1
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %38
  %42 = add nsw i64 %16, -2
  %43 = ashr exact i64 %42, 1
  %44 = icmp eq i64 %15, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = shl i64 %15, 1
  %47 = add i64 %46, 2
  store i64 %47, ptr %12, align 8
  %48 = load ptr, ptr %7, align 8
  %49 = getelementptr [8 x i8], ptr %48, i64 %46
  %50 = getelementptr i8, ptr %49, i64 8
  %51 = load double, ptr %50, align 8
  %52 = load i64, ptr %8, align 8
  %53 = getelementptr inbounds [8 x i8], ptr %48, i64 %52
  store double %51, ptr %53, align 8
  %54 = load i64, ptr %12, align 8
  %55 = add nsw i64 %54, -1
  store i64 %55, ptr %8, align 8
  br label %56

56:                                               ; preds = %45, %41, %38
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %57 = load ptr, ptr %7, align 8
  %58 = load i64, ptr %8, align 8
  %59 = load i64, ptr %11, align 8
  %60 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEEEvT_T0_S8_T1_RT2_(ptr noundef %57, i64 noundef %58, i64 noundef %59, double noundef %60, ptr noundef nonnull align 1 dereferenceable(1) %13)
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

9:                                                ; preds = %29, %4
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
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  ret ptr %25

29:                                               ; preds = %24
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %25, ptr noundef nonnull %26)
  %30 = load ptr, ptr %6, align 8
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 8
  store ptr %31, ptr %6, align 8
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
  br i1 %8, label %28, label %9

9:                                                ; preds = %3, %26
  %.pn = phi ptr [ %27, %26 ], [ %0, %3 ]
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  store ptr %storemerge, ptr %7, align 8
  %10 = load ptr, ptr %6, align 8
  %.not = icmp eq ptr %storemerge, %10
  br i1 %.not, label %28, label %11

11:                                               ; preds = %9
  %12 = load ptr, ptr %5, align 8
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull %storemerge, ptr noundef %12)
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

26:                                               ; preds = %14, %22
  %27 = load ptr, ptr %7, align 8
  br label %9, !llvm.loop !98

28:                                               ; preds = %3, %9
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
  %storemerge = phi ptr [ %0, %3 ], [ %13, %9 ]
  store ptr %storemerge, ptr %6, align 8
  %8 = load ptr, ptr %5, align 8
  %.not = icmp eq ptr %storemerge, %8
  br i1 %.not, label %14, label %9

9:                                                ; preds = %7
  %10 = load i8, ptr %4, align 1
  %11 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %10)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %storemerge, i8 %11)
  %12 = load ptr, ptr %6, align 8
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 8
  br label %7, !llvm.loop !99

14:                                               ; preds = %7
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
  br i1 %.not, label %15, label %6

6:                                                ; preds = %3
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %10)
  %12 = shl nsw i64 %11, 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %12, i8 undef)
  %13 = load ptr, ptr %4, align 8
  %14 = load ptr, ptr %5, align 8
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %13, ptr noundef %14, i8 undef)
  br label %15

15:                                               ; preds = %6, %3
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

8:                                                ; preds = %19, %4
  %9 = load ptr, ptr %6, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = ptrtoint ptr %9 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = icmp sgt i64 %13, 128
  br i1 %14, label %15, label %24

15:                                               ; preds = %8
  %16 = load i64, ptr %7, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %10, ptr noundef %9, ptr noundef %9, i8 undef)
  br label %24

19:                                               ; preds = %15
  %20 = add nsw i64 %16, -1
  store i64 %20, ptr %7, align 8
  %21 = load ptr, ptr %5, align 8
  %22 = load ptr, ptr %6, align 8
  %23 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(ptr noundef %21, ptr noundef %22, i8 undef)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %23, ptr noundef %22, i64 noundef %20, i8 undef)
  store ptr %23, ptr %6, align 8
  br label %8, !llvm.loop !101

24:                                               ; preds = %18, %8
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
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef nonnull %11, i8 undef)
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 128
  %14 = load ptr, ptr %5, align 8
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %13, ptr noundef %14, i8 undef)
  br label %16

15:                                               ; preds = %3
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 undef)
  br label %16

16:                                               ; preds = %15, %10
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

10:                                               ; preds = %20, %4
  %storemerge = phi ptr [ %1, %4 ], [ %22, %20 ]
  store ptr %storemerge, ptr %9, align 8
  %11 = load ptr, ptr %8, align 8
  %12 = icmp ult ptr %storemerge, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = load ptr, ptr %6, align 8
  %15 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %storemerge, ptr noundef %14)
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load ptr, ptr %6, align 8
  %18 = load ptr, ptr %7, align 8
  %19 = load ptr, ptr %9, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %20

20:                                               ; preds = %13, %16
  %21 = load ptr, ptr %9, align 8
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 8
  br label %10, !llvm.loop !102

23:                                               ; preds = %10
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
  br i1 %13, label %14, label %18

14:                                               ; preds = %7
  %15 = getelementptr inbounds i8, ptr %8, i64 -8
  store ptr %15, ptr %5, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = load ptr, ptr %6, align 8, !nonnull !53
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %16, ptr noundef nonnull %15, ptr noundef nonnull %15, ptr noundef nonnull align 1 dereferenceable(1) %17)
  br label %7, !llvm.loop !103

18:                                               ; preds = %7
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
  br i1 %10, label %22, label %11

11:                                               ; preds = %3
  store i64 %9, ptr %5, align 8
  %12 = add nsw i64 %9, -2
  %13 = sdiv i64 %12, 2
  br label %14

14:                                               ; preds = %20, %11
  %storemerge = phi i64 [ %13, %11 ], [ %21, %20 ]
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds [8 x i8], ptr %15, i64 %storemerge
  %17 = load double, ptr %16, align 8
  %18 = load i64, ptr %5, align 8
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %15, i64 noundef %storemerge, i64 noundef %18, double noundef %17, i8 undef)
  %19 = icmp eq i64 %storemerge, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = add nsw i64 %storemerge, -1
  br label %14, !llvm.loop !104

22:                                               ; preds = %14, %3
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

14:                                               ; preds = %31, %5
  %15 = load i64, ptr %12, align 8
  %16 = load i64, ptr %9, align 8
  %17 = add nsw i64 %16, -1
  %18 = sdiv i64 %17, 2
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %14
  %21 = shl i64 %15, 1
  %22 = add i64 %21, 2
  store i64 %22, ptr %12, align 8
  %23 = load ptr, ptr %7, align 8
  %24 = getelementptr inbounds [8 x i8], ptr %23, i64 %22
  %25 = getelementptr [8 x i8], ptr %23, i64 %21
  %26 = getelementptr i8, ptr %25, i64 8
  %27 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %24, ptr noundef %26)
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i64, ptr %12, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, ptr %12, align 8
  br label %31

31:                                               ; preds = %28, %20
  %32 = load ptr, ptr %7, align 8
  %33 = load i64, ptr %12, align 8
  %34 = getelementptr inbounds [8 x i8], ptr %32, i64 %33
  %35 = load double, ptr %34, align 8
  %36 = load i64, ptr %8, align 8
  %37 = getelementptr inbounds [8 x i8], ptr %32, i64 %36
  store double %35, ptr %37, align 8
  store i64 %33, ptr %8, align 8
  br label %14, !llvm.loop !105

38:                                               ; preds = %14
  %39 = and i64 %16, 1
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %38
  %42 = add nsw i64 %16, -2
  %43 = ashr exact i64 %42, 1
  %44 = icmp eq i64 %15, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = shl i64 %15, 1
  %47 = add i64 %46, 2
  store i64 %47, ptr %12, align 8
  %48 = load ptr, ptr %7, align 8
  %49 = getelementptr [8 x i8], ptr %48, i64 %46
  %50 = getelementptr i8, ptr %49, i64 8
  %51 = load double, ptr %50, align 8
  %52 = load i64, ptr %8, align 8
  %53 = getelementptr inbounds [8 x i8], ptr %48, i64 %52
  store double %51, ptr %53, align 8
  %54 = load i64, ptr %12, align 8
  %55 = add nsw i64 %54, -1
  store i64 %55, ptr %8, align 8
  br label %56

56:                                               ; preds = %45, %41, %38
  call void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(ptr noundef nonnull align 1 dereferenceable(1) %13, i8 undef)
  %57 = load ptr, ptr %7, align 8
  %58 = load i64, ptr %8, align 8
  %59 = load i64, ptr %11, align 8
  %60 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_(ptr noundef %57, i64 noundef %58, i64 noundef %59, double noundef %60, ptr noundef nonnull align 1 dereferenceable(1) %13)
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

9:                                                ; preds = %29, %4
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
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  ret ptr %25

29:                                               ; preds = %24
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %25, ptr noundef nonnull %26)
  %30 = load ptr, ptr %6, align 8
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 8
  store ptr %31, ptr %6, align 8
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
  br i1 %8, label %27, label %9

9:                                                ; preds = %3, %25
  %.pn = phi ptr [ %26, %25 ], [ %0, %3 ]
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  store ptr %storemerge, ptr %7, align 8
  %10 = load ptr, ptr %6, align 8
  %.not = icmp eq ptr %storemerge, %10
  br i1 %.not, label %27, label %11

11:                                               ; preds = %9
  %12 = load ptr, ptr %5, align 8
  %13 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull %storemerge, ptr noundef %12)
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

25:                                               ; preds = %14, %22
  %26 = load ptr, ptr %7, align 8
  br label %9, !llvm.loop !110

27:                                               ; preds = %3, %9
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8
  br label %6

6:                                                ; preds = %8, %3
  %storemerge = phi ptr [ %0, %3 ], [ %11, %8 ]
  store ptr %storemerge, ptr %5, align 8
  %7 = load ptr, ptr %4, align 8
  %.not = icmp eq ptr %storemerge, %7
  br i1 %.not, label %12, label %8

8:                                                ; preds = %6
  %9 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 undef)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %storemerge, i8 undef)
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %6, !llvm.loop !111

12:                                               ; preds = %6
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
