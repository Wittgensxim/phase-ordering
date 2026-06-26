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
  %10 = load i32, ptr @current_test, align 4
  %11 = icmp slt i32 0, %10
  br i1 %11, label %.lr.ph, label %27

.lr.ph:                                           ; preds = %5
  br label %12

12:                                               ; preds = %.lr.ph, %23
  %storemerge18 = phi i32 [ 0, %.lr.ph ], [ %24, %23 ]
  %.017 = phi i32 [ 12, %.lr.ph ], [ %.1, %23 ]
  %13 = load ptr, ptr @results, align 8
  %14 = sext i32 %storemerge18 to i64
  %15 = getelementptr inbounds [16 x i8], ptr %13, i64 %14
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8
  %18 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %17) #15
  %19 = trunc i64 %18 to i32
  %20 = icmp slt i32 %.017, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21, %12
  %.1 = phi i32 [ %19, %21 ], [ %.017, %12 ]
  br label %23

23:                                               ; preds = %22
  %24 = add nsw i32 %storemerge18, 1
  %25 = load i32, ptr @current_test, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %12, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %23
  %split = phi i32 [ %.1, %23 ]
  br label %27

27:                                               ; preds = %._crit_edge, %5
  %.0.lcssa = phi i32 [ %split, %._crit_edge ], [ 12, %5 ]
  %28 = add nsw i32 %.0.lcssa, -12
  %29 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.1, i32 noundef %28, ptr noundef nonnull @.str.2)
  %30 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.3, i32 noundef %.0.lcssa, ptr noundef nonnull @.str.2)
  %31 = load i32, ptr @current_test, align 4
  %32 = icmp slt i32 0, %31
  br i1 %32, label %.lr.ph21, label %56

.lr.ph21:                                         ; preds = %27
  br label %33

33:                                               ; preds = %.lr.ph21, %52
  %storemerge119 = phi i32 [ 0, %.lr.ph21 ], [ %53, %52 ]
  %34 = load ptr, ptr @results, align 8
  %35 = sext i32 %storemerge119 to i64
  %36 = getelementptr inbounds [16 x i8], ptr %34, i64 %35
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 8
  %38 = load ptr, ptr %37, align 8
  %39 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %38) #15
  %40 = trunc i64 %39 to i32
  %41 = sub i32 %.0.lcssa, %40
  %42 = load ptr, ptr @results, align 8
  %43 = sext i32 %storemerge119 to i64
  %44 = getelementptr inbounds [16 x i8], ptr %42, i64 %43
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 8
  %46 = load ptr, ptr %45, align 8
  %47 = load double, ptr %44, align 8
  %48 = fdiv double %9, %47
  %49 = load double, ptr %42, align 8
  %50 = fdiv double %47, %49
  %51 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.4, i32 noundef %storemerge119, i32 noundef %41, ptr noundef nonnull @.str.5, ptr noundef %46, double noundef %47, double noundef %48, double noundef %50)
  br label %52

52:                                               ; preds = %33
  %53 = add nsw i32 %storemerge119, 1
  %54 = load i32, ptr @current_test, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %33, label %._crit_edge22, !llvm.loop !9

._crit_edge22:                                    ; preds = %52
  br label %56

56:                                               ; preds = %._crit_edge22, %27
  %57 = load i32, ptr @current_test, align 4
  %58 = icmp slt i32 0, %57
  br i1 %58, label %.lr.ph26, label %69

.lr.ph26:                                         ; preds = %56
  br label %59

59:                                               ; preds = %.lr.ph26, %65
  %storemerge224 = phi i32 [ 0, %.lr.ph26 ], [ %66, %65 ]
  %.01623 = phi double [ 0.000000e+00, %.lr.ph26 ], [ %64, %65 ]
  %60 = load ptr, ptr @results, align 8
  %61 = sext i32 %storemerge224 to i64
  %62 = getelementptr inbounds [16 x i8], ptr %60, i64 %61
  %63 = load double, ptr %62, align 8
  %64 = fadd double %.01623, %63
  br label %65

65:                                               ; preds = %59
  %66 = add nsw i32 %storemerge224, 1
  %67 = load i32, ptr @current_test, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %59, label %._crit_edge27, !llvm.loop !10

._crit_edge27:                                    ; preds = %65
  %split28 = phi double [ %64, %65 ]
  br label %69

69:                                               ; preds = %._crit_edge27, %56
  %.016.lcssa = phi double [ %split28, %._crit_edge27 ], [ 0.000000e+00, %56 ]
  %70 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.6, ptr noundef %0, double noundef %.016.lcssa)
  %71 = load i32, ptr @current_test, align 4
  %72 = icmp sgt i32 %71, 1
  br i1 %72, label %73, label %96

73:                                               ; preds = %69
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %96, label %74

74:                                               ; preds = %73
  %75 = load i32, ptr @current_test, align 4
  %76 = icmp slt i32 1, %75
  br i1 %76, label %.lr.ph32, label %90

.lr.ph32:                                         ; preds = %74
  br label %77

77:                                               ; preds = %.lr.ph32, %86
  %storemerge330 = phi i32 [ 1, %.lr.ph32 ], [ %87, %86 ]
  %.01529 = phi double [ 0.000000e+00, %.lr.ph32 ], [ %85, %86 ]
  %78 = load ptr, ptr @results, align 8
  %79 = sext i32 %storemerge330 to i64
  %80 = getelementptr inbounds [16 x i8], ptr %78, i64 %79
  %81 = load double, ptr %80, align 8
  %82 = load double, ptr %78, align 8
  %83 = fdiv double %81, %82
  %84 = call double @log(double noundef %83) #15
  %85 = fadd double %.01529, %84
  br label %86

86:                                               ; preds = %77
  %87 = add nsw i32 %storemerge330, 1
  %88 = load i32, ptr @current_test, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %77, label %._crit_edge33, !llvm.loop !11

._crit_edge33:                                    ; preds = %86
  %split34 = phi double [ %85, %86 ]
  %split35 = phi i32 [ %88, %86 ]
  br label %90

90:                                               ; preds = %._crit_edge33, %74
  %.015.lcssa = phi double [ %split34, %._crit_edge33 ], [ 0.000000e+00, %74 ]
  %.lcssa = phi i32 [ %split35, %._crit_edge33 ], [ %75, %74 ]
  %91 = add nsw i32 %.lcssa, -1
  %92 = sitofp i32 %91 to double
  %93 = fdiv double %.015.lcssa, %92
  %94 = call double @exp(double noundef %93) #15
  %95 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.7, ptr noundef %0, double noundef %94)
  br label %96

96:                                               ; preds = %90, %73, %69
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
  %storemerge14 = phi i32 [ 0, %.lr.ph ], [ %17, %16 ]
  %.013 = phi i32 [ 12, %.lr.ph ], [ %.1, %16 ]
  %6 = load ptr, ptr @results, align 8
  %7 = sext i32 %storemerge14 to i64
  %8 = getelementptr inbounds [16 x i8], ptr %6, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %10 = load ptr, ptr %9, align 8
  %11 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %10) #15
  %12 = trunc i64 %11 to i32
  %13 = icmp slt i32 %.013, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  br label %15

15:                                               ; preds = %14, %5
  %.1 = phi i32 [ %12, %14 ], [ %.013, %5 ]
  br label %16

16:                                               ; preds = %15
  %17 = add nsw i32 %storemerge14, 1
  %18 = load i32, ptr @current_test, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %5, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %16
  %split = phi i32 [ %.1, %16 ]
  br label %20

20:                                               ; preds = %._crit_edge, %2
  %.0.lcssa = phi i32 [ %split, %._crit_edge ], [ 12, %2 ]
  %21 = add nsw i32 %.0.lcssa, -12
  %22 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %21, ptr noundef nonnull @.str.2)
  %23 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %.0.lcssa, ptr noundef nonnull @.str.2)
  %24 = load i32, ptr @current_test, align 4
  %25 = icmp slt i32 0, %24
  br i1 %25, label %.lr.ph17, label %46

.lr.ph17:                                         ; preds = %20
  br label %26

26:                                               ; preds = %.lr.ph17, %42
  %storemerge115 = phi i32 [ 0, %.lr.ph17 ], [ %43, %42 ]
  %27 = load ptr, ptr @results, align 8
  %28 = sext i32 %storemerge115 to i64
  %29 = getelementptr inbounds [16 x i8], ptr %27, i64 %28
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 8
  %31 = load ptr, ptr %30, align 8
  %32 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %31) #15
  %33 = trunc i64 %32 to i32
  %34 = sub i32 %.0.lcssa, %33
  %35 = load ptr, ptr @results, align 8
  %36 = sext i32 %storemerge115 to i64
  %37 = getelementptr inbounds [16 x i8], ptr %35, i64 %36
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 8
  %39 = load ptr, ptr %38, align 8
  %40 = load double, ptr %37, align 8
  %41 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %storemerge115, i32 noundef %34, ptr noundef nonnull @.str.5, ptr noundef %39, double noundef %40)
  br label %42

42:                                               ; preds = %26
  %43 = add nsw i32 %storemerge115, 1
  %44 = load i32, ptr @current_test, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %26, label %._crit_edge18, !llvm.loop !13

._crit_edge18:                                    ; preds = %42
  br label %46

46:                                               ; preds = %._crit_edge18, %20
  %47 = load i32, ptr @current_test, align 4
  %48 = icmp slt i32 0, %47
  br i1 %48, label %.lr.ph22, label %59

.lr.ph22:                                         ; preds = %46
  br label %49

49:                                               ; preds = %.lr.ph22, %55
  %storemerge220 = phi i32 [ 0, %.lr.ph22 ], [ %56, %55 ]
  %.01219 = phi double [ 0.000000e+00, %.lr.ph22 ], [ %54, %55 ]
  %50 = load ptr, ptr @results, align 8
  %51 = sext i32 %storemerge220 to i64
  %52 = getelementptr inbounds [16 x i8], ptr %50, i64 %51
  %53 = load double, ptr %52, align 8
  %54 = fadd double %.01219, %53
  br label %55

55:                                               ; preds = %49
  %56 = add nsw i32 %storemerge220, 1
  %57 = load i32, ptr @current_test, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %49, label %._crit_edge23, !llvm.loop !14

._crit_edge23:                                    ; preds = %55
  %split24 = phi double [ %54, %55 ]
  br label %59

59:                                               ; preds = %._crit_edge23, %46
  %.012.lcssa = phi double [ %split24, %._crit_edge23 ], [ 0.000000e+00, %46 ]
  %60 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %1, double noundef %.012.lcssa)
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

10:                                               ; preds = %26, %8
  %.019 = phi ptr [ %0, %8 ], [ %.120.lcssa, %26 ]
  %.0 = phi ptr [ %1, %8 ], [ %.lcssa, %26 ]
  br label %11

11:                                               ; preds = %11, %10
  %.1 = phi ptr [ %.0, %10 ], [ %12, %11 ]
  %12 = getelementptr inbounds i8, ptr %.1, i64 -8
  %13 = load double, ptr %12, align 8
  %14 = call noundef zeroext i1 %2(double noundef %9, double noundef %13)
  br i1 %14, label %11, label %15, !llvm.loop !15

15:                                               ; preds = %11
  %.lcssa = phi ptr [ %12, %11 ]
  %16 = icmp ult ptr %.019, %.lcssa
  br i1 %16, label %18, label %17

17:                                               ; preds = %15
  %.lcssa.lcssa = phi ptr [ %.lcssa, %15 ]
  br label %29

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %19, %18
  %.120 = phi ptr [ %.019, %18 ], [ %22, %19 ]
  %20 = load double, ptr %.120, align 8
  %21 = call noundef zeroext i1 %2(double noundef %20, double noundef %9)
  %22 = getelementptr inbounds nuw i8, ptr %.120, i64 8
  br i1 %21, label %19, label %23, !llvm.loop !16

23:                                               ; preds = %19
  %.120.lcssa = phi ptr [ %.120, %19 ]
  %24 = icmp ult ptr %.120.lcssa, %.lcssa
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  %.lcssa.lcssa21 = phi ptr [ %.lcssa, %23 ]
  br label %29

26:                                               ; preds = %23
  %27 = load double, ptr %.lcssa, align 8
  %28 = load double, ptr %.120.lcssa, align 8
  store double %28, ptr %.lcssa, align 8
  store double %27, ptr %.120.lcssa, align 8
  br label %10, !llvm.loop !17

29:                                               ; preds = %25, %17
  %.lcssa22 = phi ptr [ %.lcssa.lcssa21, %25 ], [ %.lcssa.lcssa, %17 ]
  %30 = getelementptr inbounds nuw i8, ptr %.lcssa22, i64 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef nonnull %30, ptr noundef %2)
  %31 = getelementptr inbounds nuw i8, ptr %.lcssa22, i64 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %31, ptr noundef %1, ptr noundef %2)
  br label %32

32:                                               ; preds = %29, %3
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

10:                                               ; preds = %26, %8
  %.019 = phi ptr [ %0, %8 ], [ %.120.lcssa, %26 ]
  %.0 = phi ptr [ %1, %8 ], [ %.lcssa, %26 ]
  br label %11

11:                                               ; preds = %11, %10
  %.1 = phi ptr [ %.0, %10 ], [ %12, %11 ]
  %12 = getelementptr inbounds i8, ptr %.1, i64 -8
  %13 = load double, ptr %12, align 8
  %14 = call noundef zeroext i1 %2(double noundef %9, double noundef %13)
  br i1 %14, label %11, label %15, !llvm.loop !18

15:                                               ; preds = %11
  %.lcssa = phi ptr [ %12, %11 ]
  %16 = icmp ult ptr %.019, %.lcssa
  br i1 %16, label %18, label %17

17:                                               ; preds = %15
  %.lcssa.lcssa = phi ptr [ %.lcssa, %15 ]
  br label %29

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %19, %18
  %.120 = phi ptr [ %.019, %18 ], [ %22, %19 ]
  %20 = load double, ptr %.120, align 8
  %21 = call noundef zeroext i1 %2(double noundef %20, double noundef %9)
  %22 = getelementptr inbounds nuw i8, ptr %.120, i64 8
  br i1 %21, label %19, label %23, !llvm.loop !19

23:                                               ; preds = %19
  %.120.lcssa = phi ptr [ %.120, %19 ]
  %24 = icmp ult ptr %.120.lcssa, %.lcssa
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  %.lcssa.lcssa21 = phi ptr [ %.lcssa, %23 ]
  br label %29

26:                                               ; preds = %23
  %27 = load double, ptr %.lcssa, align 8
  %28 = load double, ptr %.120.lcssa, align 8
  store double %28, ptr %.lcssa, align 8
  store double %27, ptr %.120.lcssa, align 8
  br label %10, !llvm.loop !20

29:                                               ; preds = %25, %17
  %.lcssa22 = phi ptr [ %.lcssa.lcssa21, %25 ], [ %.lcssa.lcssa, %17 ]
  %30 = getelementptr inbounds nuw i8, ptr %.lcssa22, i64 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef nonnull %30, ptr noundef %2)
  %31 = getelementptr inbounds nuw i8, ptr %.lcssa22, i64 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %31, ptr noundef %1, ptr noundef %2)
  br label %32

32:                                               ; preds = %29, %3
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
  %25 = icmp slt i32 0, %18
  br i1 %25, label %.lr.ph, label %34

.lr.ph:                                           ; preds = %17
  br label %26

26:                                               ; preds = %.lr.ph, %31
  %storemerge86 = phi i32 [ 0, %.lr.ph ], [ %32, %31 ]
  %27 = call i32 @rand()
  %28 = sitofp i32 %27 to double
  %29 = sext i32 %storemerge86 to i64
  %30 = getelementptr inbounds [8 x i8], ptr %24, i64 %29
  store double %28, ptr %30, align 8
  br label %31

31:                                               ; preds = %26
  %32 = add nsw i32 %storemerge86, 1
  %33 = icmp slt i32 %32, %18
  br i1 %33, label %26, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %31
  br label %34

34:                                               ; preds = %._crit_edge, %17
  %35 = sext i32 %18 to i64
  %36 = icmp slt i32 %18, 0
  %37 = shl nsw i64 %35, 3
  %38 = select i1 %36, i64 -1, i64 %37
  %39 = call noalias noundef nonnull ptr @_Znay(i64 noundef %38) #16
  %40 = icmp slt i32 0, %10
  br i1 %40, label %.lr.ph89, label %51

.lr.ph89:                                         ; preds = %34
  br label %41

41:                                               ; preds = %.lr.ph89, %48
  %storemerge187 = phi i32 [ 0, %.lr.ph89 ], [ %49, %48 ]
  %42 = sext i32 %18 to i64
  %43 = getelementptr inbounds [8 x i8], ptr %24, i64 %42
  %44 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %24, ptr noundef %43, ptr noundef %39)
  %45 = sext i32 %18 to i64
  call void @qsort(ptr noundef %39, i64 noundef %45, i64 noundef 8, ptr noundef nonnull @_Z19less_than_function1PKvS0_)
  %46 = sext i32 %18 to i64
  %47 = getelementptr inbounds [8 x i8], ptr %39, i64 %46
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %39, ptr noundef %47)
  br label %48

48:                                               ; preds = %41
  %49 = add nsw i32 %storemerge187, 1
  %50 = icmp slt i32 %49, %10
  br i1 %50, label %41, label %._crit_edge90, !llvm.loop !22

._crit_edge90:                                    ; preds = %48
  br label %51

51:                                               ; preds = %._crit_edge90, %34
  %52 = icmp slt i32 0, %10
  br i1 %52, label %.lr.ph93, label %64

.lr.ph93:                                         ; preds = %51
  br label %53

53:                                               ; preds = %.lr.ph93, %61
  %storemerge291 = phi i32 [ 0, %.lr.ph93 ], [ %62, %61 ]
  %54 = sext i32 %18 to i64
  %55 = getelementptr inbounds [8 x i8], ptr %24, i64 %54
  %56 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %24, ptr noundef %55, ptr noundef %39)
  %57 = sext i32 %18 to i64
  %58 = getelementptr inbounds [8 x i8], ptr %39, i64 %57
  call void @_Z18quicksort_functionPdS_PFbddE(ptr noundef %39, ptr noundef %58, ptr noundef nonnull @_Z19less_than_function2dd)
  %59 = sext i32 %18 to i64
  %60 = getelementptr inbounds [8 x i8], ptr %39, i64 %59
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %39, ptr noundef %60)
  br label %61

61:                                               ; preds = %53
  %62 = add nsw i32 %storemerge291, 1
  %63 = icmp slt i32 %62, %10
  br i1 %63, label %53, label %._crit_edge94, !llvm.loop !23

._crit_edge94:                                    ; preds = %61
  br label %64

64:                                               ; preds = %._crit_edge94, %51
  %65 = icmp slt i32 0, %10
  br i1 %65, label %.lr.ph97, label %77

.lr.ph97:                                         ; preds = %64
  br label %66

66:                                               ; preds = %.lr.ph97, %74
  %storemerge395 = phi i32 [ 0, %.lr.ph97 ], [ %75, %74 ]
  %67 = sext i32 %18 to i64
  %68 = getelementptr inbounds [8 x i8], ptr %24, i64 %67
  %69 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %24, ptr noundef %68, ptr noundef %39)
  %70 = sext i32 %18 to i64
  %71 = getelementptr inbounds [8 x i8], ptr %39, i64 %70
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %39, ptr noundef %71, ptr noundef nonnull @_Z19less_than_function2dd)
  %72 = sext i32 %18 to i64
  %73 = getelementptr inbounds [8 x i8], ptr %39, i64 %72
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %39, ptr noundef %73)
  br label %74

74:                                               ; preds = %66
  %75 = add nsw i32 %storemerge395, 1
  %76 = icmp slt i32 %75, %10
  br i1 %76, label %66, label %._crit_edge98, !llvm.loop !24

._crit_edge98:                                    ; preds = %74
  br label %77

77:                                               ; preds = %._crit_edge98, %64
  %78 = icmp slt i32 0, %10
  br i1 %78, label %.lr.ph101, label %90

.lr.ph101:                                        ; preds = %77
  br label %79

79:                                               ; preds = %.lr.ph101, %87
  %storemerge499 = phi i32 [ 0, %.lr.ph101 ], [ %88, %87 ]
  %80 = sext i32 %18 to i64
  %81 = getelementptr inbounds [8 x i8], ptr %24, i64 %80
  %82 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %24, ptr noundef %81, ptr noundef %39)
  %83 = sext i32 %18 to i64
  %84 = getelementptr inbounds [8 x i8], ptr %39, i64 %83
  call void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef %39, ptr noundef %84)
  %85 = sext i32 %18 to i64
  %86 = getelementptr inbounds [8 x i8], ptr %39, i64 %85
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %39, ptr noundef %86)
  br label %87

87:                                               ; preds = %79
  %88 = add nsw i32 %storemerge499, 1
  %89 = icmp slt i32 %88, %10
  br i1 %89, label %79, label %._crit_edge102, !llvm.loop !25

._crit_edge102:                                   ; preds = %87
  br label %90

90:                                               ; preds = %._crit_edge102, %77
  %91 = icmp slt i32 0, %10
  br i1 %91, label %.lr.ph105, label %103

.lr.ph105:                                        ; preds = %90
  br label %92

92:                                               ; preds = %.lr.ph105, %100
  %storemerge5103 = phi i32 [ 0, %.lr.ph105 ], [ %101, %100 ]
  %93 = sext i32 %18 to i64
  %94 = getelementptr inbounds [8 x i8], ptr %24, i64 %93
  %95 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %24, ptr noundef %94, ptr noundef %39)
  %96 = sext i32 %18 to i64
  %97 = getelementptr inbounds [8 x i8], ptr %39, i64 %96
  call void @_ZSt4sortIPdPFbddEEvT_S3_T0_(ptr noundef %39, ptr noundef %97, ptr noundef nonnull @_Z19less_than_function2dd)
  %98 = sext i32 %18 to i64
  %99 = getelementptr inbounds [8 x i8], ptr %39, i64 %98
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %39, ptr noundef %99)
  br label %100

100:                                              ; preds = %92
  %101 = add nsw i32 %storemerge5103, 1
  %102 = icmp slt i32 %101, %10
  br i1 %102, label %92, label %._crit_edge106, !llvm.loop !26

._crit_edge106:                                   ; preds = %100
  br label %103

103:                                              ; preds = %._crit_edge106, %90
  %104 = icmp slt i32 0, %10
  br i1 %104, label %.lr.ph109, label %116

.lr.ph109:                                        ; preds = %103
  br label %105

105:                                              ; preds = %.lr.ph109, %113
  %storemerge6107 = phi i32 [ 0, %.lr.ph109 ], [ %114, %113 ]
  %106 = sext i32 %18 to i64
  %107 = getelementptr inbounds [8 x i8], ptr %24, i64 %106
  %108 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %24, ptr noundef %107, ptr noundef %39)
  %109 = sext i32 %18 to i64
  %110 = getelementptr inbounds [8 x i8], ptr %39, i64 %109
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %39, ptr noundef %110, i8 undef)
  %111 = sext i32 %18 to i64
  %112 = getelementptr inbounds [8 x i8], ptr %39, i64 %111
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %39, ptr noundef %112)
  br label %113

113:                                              ; preds = %105
  %114 = add nsw i32 %storemerge6107, 1
  %115 = icmp slt i32 %114, %10
  br i1 %115, label %105, label %._crit_edge110, !llvm.loop !27

._crit_edge110:                                   ; preds = %113
  br label %116

116:                                              ; preds = %._crit_edge110, %103
  %117 = icmp slt i32 0, %10
  br i1 %117, label %.lr.ph113, label %129

.lr.ph113:                                        ; preds = %116
  br label %118

118:                                              ; preds = %.lr.ph113, %126
  %storemerge7111 = phi i32 [ 0, %.lr.ph113 ], [ %127, %126 ]
  %119 = sext i32 %18 to i64
  %120 = getelementptr inbounds [8 x i8], ptr %39, i64 %119
  call void @_ZSt4sortIPd17less_than_functorEvT_S2_T0_(ptr noundef %39, ptr noundef %120, i8 undef)
  %121 = sext i32 %18 to i64
  %122 = getelementptr inbounds [8 x i8], ptr %39, i64 %121
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %39, ptr noundef %122)
  %123 = sext i32 %18 to i64
  %124 = getelementptr inbounds [8 x i8], ptr %24, i64 %123
  %125 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %24, ptr noundef %124, ptr noundef %39)
  br label %126

126:                                              ; preds = %118
  %127 = add nsw i32 %storemerge7111, 1
  %128 = icmp slt i32 %127, %10
  br i1 %128, label %118, label %._crit_edge114, !llvm.loop !28

._crit_edge114:                                   ; preds = %126
  br label %129

129:                                              ; preds = %._crit_edge114, %116
  %130 = icmp slt i32 0, %10
  br i1 %130, label %.lr.ph117, label %142

.lr.ph117:                                        ; preds = %129
  br label %131

131:                                              ; preds = %.lr.ph117, %139
  %storemerge8115 = phi i32 [ 0, %.lr.ph117 ], [ %140, %139 ]
  %132 = sext i32 %18 to i64
  %133 = getelementptr inbounds [8 x i8], ptr %24, i64 %132
  %134 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %24, ptr noundef %133, ptr noundef %39)
  %135 = sext i32 %18 to i64
  %136 = getelementptr inbounds [8 x i8], ptr %39, i64 %135
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %39, ptr noundef %136, i8 undef)
  %137 = sext i32 %18 to i64
  %138 = getelementptr inbounds [8 x i8], ptr %39, i64 %137
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %39, ptr noundef %138)
  br label %139

139:                                              ; preds = %131
  %140 = add nsw i32 %storemerge8115, 1
  %141 = icmp slt i32 %140, %10
  br i1 %141, label %131, label %._crit_edge118, !llvm.loop !29

._crit_edge118:                                   ; preds = %139
  br label %142

142:                                              ; preds = %._crit_edge118, %129
  %143 = icmp slt i32 0, %10
  br i1 %143, label %.lr.ph121, label %155

.lr.ph121:                                        ; preds = %142
  br label %144

144:                                              ; preds = %.lr.ph121, %152
  %storemerge9119 = phi i32 [ 0, %.lr.ph121 ], [ %153, %152 ]
  %145 = sext i32 %18 to i64
  %146 = getelementptr inbounds [8 x i8], ptr %24, i64 %145
  %147 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %24, ptr noundef %146, ptr noundef %39)
  %148 = sext i32 %18 to i64
  %149 = getelementptr inbounds [8 x i8], ptr %39, i64 %148
  call void @_ZSt4sortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %39, ptr noundef %149, i8 undef)
  %150 = sext i32 %18 to i64
  %151 = getelementptr inbounds [8 x i8], ptr %39, i64 %150
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %39, ptr noundef %151)
  br label %152

152:                                              ; preds = %144
  %153 = add nsw i32 %storemerge9119, 1
  %154 = icmp slt i32 %153, %10
  br i1 %154, label %144, label %._crit_edge122, !llvm.loop !30

._crit_edge122:                                   ; preds = %152
  br label %155

155:                                              ; preds = %._crit_edge122, %142
  %156 = icmp slt i32 0, %10
  br i1 %156, label %.lr.ph125, label %168

.lr.ph125:                                        ; preds = %155
  br label %157

157:                                              ; preds = %.lr.ph125, %165
  %storemerge10123 = phi i32 [ 0, %.lr.ph125 ], [ %166, %165 ]
  %158 = sext i32 %18 to i64
  %159 = getelementptr inbounds [8 x i8], ptr %24, i64 %158
  %160 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %24, ptr noundef %159, ptr noundef %39)
  %161 = sext i32 %18 to i64
  %162 = getelementptr inbounds [8 x i8], ptr %39, i64 %161
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %39, ptr noundef %162, i8 undef)
  %163 = sext i32 %18 to i64
  %164 = getelementptr inbounds [8 x i8], ptr %39, i64 %163
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %39, ptr noundef %164)
  br label %165

165:                                              ; preds = %157
  %166 = add nsw i32 %storemerge10123, 1
  %167 = icmp slt i32 %166, %10
  br i1 %167, label %157, label %._crit_edge126, !llvm.loop !31

._crit_edge126:                                   ; preds = %165
  br label %168

168:                                              ; preds = %._crit_edge126, %155
  %169 = icmp slt i32 0, %10
  br i1 %169, label %.lr.ph129, label %181

.lr.ph129:                                        ; preds = %168
  br label %170

170:                                              ; preds = %.lr.ph129, %178
  %storemerge11127 = phi i32 [ 0, %.lr.ph129 ], [ %179, %178 ]
  %171 = sext i32 %18 to i64
  %172 = getelementptr inbounds [8 x i8], ptr %24, i64 %171
  %173 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %24, ptr noundef %172, ptr noundef %39)
  %174 = sext i32 %18 to i64
  %175 = getelementptr inbounds [8 x i8], ptr %39, i64 %174
  call void @_ZSt4sortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %39, ptr noundef %175, i8 undef)
  %176 = sext i32 %18 to i64
  %177 = getelementptr inbounds [8 x i8], ptr %39, i64 %176
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %39, ptr noundef %177)
  br label %178

178:                                              ; preds = %170
  %179 = add nsw i32 %storemerge11127, 1
  %180 = icmp slt i32 %179, %10
  br i1 %180, label %170, label %._crit_edge130, !llvm.loop !32

._crit_edge130:                                   ; preds = %178
  br label %181

181:                                              ; preds = %._crit_edge130, %168
  %182 = icmp slt i32 0, %10
  br i1 %182, label %.lr.ph133, label %194

.lr.ph133:                                        ; preds = %181
  br label %183

183:                                              ; preds = %.lr.ph133, %191
  %storemerge12131 = phi i32 [ 0, %.lr.ph133 ], [ %192, %191 ]
  %184 = sext i32 %18 to i64
  %185 = getelementptr inbounds [8 x i8], ptr %24, i64 %184
  %186 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %24, ptr noundef %185, ptr noundef %39)
  %187 = sext i32 %18 to i64
  %188 = getelementptr inbounds [8 x i8], ptr %39, i64 %187
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %39, ptr noundef %188)
  %189 = sext i32 %18 to i64
  %190 = getelementptr inbounds [8 x i8], ptr %39, i64 %189
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %39, ptr noundef %190)
  br label %191

191:                                              ; preds = %183
  %192 = add nsw i32 %storemerge12131, 1
  %193 = icmp slt i32 %192, %10
  br i1 %193, label %183, label %._crit_edge134, !llvm.loop !33

._crit_edge134:                                   ; preds = %191
  br label %194

194:                                              ; preds = %._crit_edge134, %181
  %195 = icmp slt i32 0, %10
  br i1 %195, label %.lr.ph137, label %207

.lr.ph137:                                        ; preds = %194
  br label %196

196:                                              ; preds = %.lr.ph137, %204
  %storemerge13135 = phi i32 [ 0, %.lr.ph137 ], [ %205, %204 ]
  %197 = sext i32 %18 to i64
  %198 = getelementptr inbounds [8 x i8], ptr %24, i64 %197
  %199 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %24, ptr noundef %198, ptr noundef %39)
  %200 = sext i32 %18 to i64
  %201 = getelementptr inbounds [8 x i8], ptr %39, i64 %200
  call void @_ZSt4sortIPdEvT_S1_(ptr noundef %39, ptr noundef %201)
  %202 = sext i32 %18 to i64
  %203 = getelementptr inbounds [8 x i8], ptr %39, i64 %202
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %39, ptr noundef %203)
  br label %204

204:                                              ; preds = %196
  %205 = add nsw i32 %storemerge13135, 1
  %206 = icmp slt i32 %205, %10
  br i1 %206, label %196, label %._crit_edge138, !llvm.loop !34

._crit_edge138:                                   ; preds = %204
  br label %207

207:                                              ; preds = %._crit_edge138, %194
  %208 = icmp eq ptr %39, null
  br i1 %208, label %210, label %209

209:                                              ; preds = %207
  call void @_ZdaPv(ptr noundef nonnull %39) #17
  br label %210

210:                                              ; preds = %209, %207
  %211 = icmp eq ptr %24, null
  br i1 %211, label %213, label %212

212:                                              ; preds = %210
  call void @_ZdaPv(ptr noundef nonnull %24) #17
  br label %213

213:                                              ; preds = %212, %210
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
  %.not4 = icmp eq ptr %3, %1
  br i1 %.not4, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %5

4:                                                ; preds = %5
  %.03 = phi ptr [ %6, %5 ]
  %.0 = phi ptr [ %8, %5 ]
  %.not = icmp eq ptr %.03, %1
  br i1 %.not, label %..loopexit_crit_edge, label %5, !llvm.loop !35

5:                                                ; preds = %.lr.ph, %4
  %.06 = phi ptr [ %0, %.lr.ph ], [ %.0, %4 ]
  %.035 = phi ptr [ %3, %.lr.ph ], [ %.03, %4 ]
  %6 = getelementptr inbounds nuw i8, ptr %.035, i64 8
  %7 = load double, ptr %.035, align 8
  %8 = getelementptr inbounds nuw i8, ptr %.06, i64 8
  %9 = load double, ptr %.06, align 8
  %10 = fcmp olt double %7, %9
  br i1 %10, label %11, label %4

11:                                               ; preds = %5
  %12 = load i32, ptr @current_test, align 4
  %13 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef nonnull @.str.11, i32 noundef %12)
  br label %14

..loopexit_crit_edge:                             ; preds = %4
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %2
  br label %14

14:                                               ; preds = %.loopexit, %11
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

9:                                                ; preds = %25, %7
  %.016 = phi ptr [ %0, %7 ], [ %.117.lcssa, %25 ]
  %.0 = phi ptr [ %1, %7 ], [ %.lcssa, %25 ]
  br label %10

10:                                               ; preds = %10, %9
  %.1 = phi ptr [ %.0, %9 ], [ %11, %10 ]
  %11 = getelementptr inbounds i8, ptr %.1, i64 -8
  %12 = load double, ptr %11, align 8
  %13 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %8, double noundef %12)
  br i1 %13, label %10, label %14, !llvm.loop !36

14:                                               ; preds = %10
  %.lcssa = phi ptr [ %11, %10 ]
  %15 = icmp ult ptr %.016, %.lcssa
  br i1 %15, label %17, label %16

16:                                               ; preds = %14
  %.lcssa.lcssa = phi ptr [ %.lcssa, %14 ]
  br label %28

17:                                               ; preds = %14
  br label %18

18:                                               ; preds = %18, %17
  %.117 = phi ptr [ %.016, %17 ], [ %21, %18 ]
  %19 = load double, ptr %.117, align 8
  %20 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %19, double noundef %8)
  %21 = getelementptr inbounds nuw i8, ptr %.117, i64 8
  br i1 %20, label %18, label %22, !llvm.loop !37

22:                                               ; preds = %18
  %.117.lcssa = phi ptr [ %.117, %18 ]
  %23 = icmp ult ptr %.117.lcssa, %.lcssa
  br i1 %23, label %25, label %24

24:                                               ; preds = %22
  %.lcssa.lcssa18 = phi ptr [ %.lcssa, %22 ]
  br label %28

25:                                               ; preds = %22
  %26 = load double, ptr %.lcssa, align 8
  %27 = load double, ptr %.117.lcssa, align 8
  store double %27, ptr %.lcssa, align 8
  store double %26, ptr %.117.lcssa, align 8
  br label %9, !llvm.loop !38

28:                                               ; preds = %24, %16
  %.lcssa19 = phi ptr [ %.lcssa.lcssa18, %24 ], [ %.lcssa.lcssa, %16 ]
  %29 = getelementptr inbounds nuw i8, ptr %.lcssa19, i64 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef nonnull %29, ptr noundef nonnull @_Z19less_than_function2dd)
  %30 = getelementptr inbounds nuw i8, ptr %.lcssa19, i64 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %30, ptr noundef %1, ptr noundef nonnull @_Z19less_than_function2dd)
  br label %31

31:                                               ; preds = %28, %2
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

12:                                               ; preds = %26, %10
  %.014 = phi ptr [ %0, %10 ], [ %.115.lcssa, %26 ]
  %.0 = phi ptr [ %1, %10 ], [ %.lcssa, %26 ]
  br label %13

13:                                               ; preds = %13, %12
  %.1 = phi ptr [ %.0, %12 ], [ %14, %13 ]
  %14 = getelementptr inbounds i8, ptr %.1, i64 -8
  %15 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %14)
  br i1 %15, label %13, label %16, !llvm.loop !39

16:                                               ; preds = %13
  %.lcssa = phi ptr [ %14, %13 ]
  %17 = icmp ult ptr %.014, %.lcssa
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  %.lcssa.lcssa = phi ptr [ %.lcssa, %16 ]
  br label %29

19:                                               ; preds = %16
  br label %20

20:                                               ; preds = %20, %19
  %.115 = phi ptr [ %.014, %19 ], [ %22, %20 ]
  %21 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %.115, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %22 = getelementptr inbounds nuw i8, ptr %.115, i64 8
  br i1 %21, label %20, label %23, !llvm.loop !40

23:                                               ; preds = %20
  %.115.lcssa = phi ptr [ %.115, %20 ]
  %24 = icmp ult ptr %.115.lcssa, %.lcssa
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  %.lcssa.lcssa16 = phi ptr [ %.lcssa, %23 ]
  br label %29

26:                                               ; preds = %23
  %27 = load double, ptr %.lcssa, align 8
  %28 = load double, ptr %.115.lcssa, align 8
  store double %28, ptr %.lcssa, align 8
  store double %27, ptr %.115.lcssa, align 8
  br label %12, !llvm.loop !41

29:                                               ; preds = %25, %18
  %.lcssa17 = phi ptr [ %.lcssa.lcssa16, %25 ], [ %.lcssa.lcssa, %18 ]
  %30 = getelementptr inbounds nuw i8, ptr %.lcssa17, i64 8
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %0, ptr noundef nonnull %30, i8 undef)
  %31 = getelementptr inbounds nuw i8, ptr %.lcssa17, i64 8
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef nonnull %31, ptr noundef %1, i8 undef)
  br label %32

32:                                               ; preds = %29, %3
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

12:                                               ; preds = %26, %10
  %.014 = phi ptr [ %0, %10 ], [ %.115.lcssa, %26 ]
  %.0 = phi ptr [ %1, %10 ], [ %.lcssa, %26 ]
  br label %13

13:                                               ; preds = %13, %12
  %.1 = phi ptr [ %.0, %12 ], [ %14, %13 ]
  %14 = getelementptr inbounds i8, ptr %.1, i64 -8
  %15 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %14)
  br i1 %15, label %13, label %16, !llvm.loop !42

16:                                               ; preds = %13
  %.lcssa = phi ptr [ %14, %13 ]
  %17 = icmp ult ptr %.014, %.lcssa
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  %.lcssa.lcssa = phi ptr [ %.lcssa, %16 ]
  br label %29

19:                                               ; preds = %16
  br label %20

20:                                               ; preds = %20, %19
  %.115 = phi ptr [ %.014, %19 ], [ %22, %20 ]
  %21 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %.115, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %22 = getelementptr inbounds nuw i8, ptr %.115, i64 8
  br i1 %21, label %20, label %23, !llvm.loop !43

23:                                               ; preds = %20
  %.115.lcssa = phi ptr [ %.115, %20 ]
  %24 = icmp ult ptr %.115.lcssa, %.lcssa
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  %.lcssa.lcssa16 = phi ptr [ %.lcssa, %23 ]
  br label %29

26:                                               ; preds = %23
  %27 = load double, ptr %.lcssa, align 8
  %28 = load double, ptr %.115.lcssa, align 8
  store double %28, ptr %.lcssa, align 8
  store double %27, ptr %.115.lcssa, align 8
  br label %12, !llvm.loop !44

29:                                               ; preds = %25, %18
  %.lcssa17 = phi ptr [ %.lcssa.lcssa16, %25 ], [ %.lcssa.lcssa, %18 ]
  %30 = getelementptr inbounds nuw i8, ptr %.lcssa17, i64 8
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %0, ptr noundef nonnull %30, i8 undef)
  %31 = getelementptr inbounds nuw i8, ptr %.lcssa17, i64 8
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef nonnull %31, ptr noundef %1, i8 undef)
  br label %32

32:                                               ; preds = %29, %3
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

12:                                               ; preds = %26, %10
  %.014 = phi ptr [ %0, %10 ], [ %.115.lcssa, %26 ]
  %.0 = phi ptr [ %1, %10 ], [ %.lcssa, %26 ]
  br label %13

13:                                               ; preds = %13, %12
  %.1 = phi ptr [ %.0, %12 ], [ %14, %13 ]
  %14 = getelementptr inbounds i8, ptr %.1, i64 -8
  %15 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %14)
  br i1 %15, label %13, label %16, !llvm.loop !45

16:                                               ; preds = %13
  %.lcssa = phi ptr [ %14, %13 ]
  %17 = icmp ult ptr %.014, %.lcssa
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  %.lcssa.lcssa = phi ptr [ %.lcssa, %16 ]
  br label %29

19:                                               ; preds = %16
  br label %20

20:                                               ; preds = %20, %19
  %.115 = phi ptr [ %.014, %19 ], [ %22, %20 ]
  %21 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %.115, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %22 = getelementptr inbounds nuw i8, ptr %.115, i64 8
  br i1 %21, label %20, label %23, !llvm.loop !46

23:                                               ; preds = %20
  %.115.lcssa = phi ptr [ %.115, %20 ]
  %24 = icmp ult ptr %.115.lcssa, %.lcssa
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  %.lcssa.lcssa16 = phi ptr [ %.lcssa, %23 ]
  br label %29

26:                                               ; preds = %23
  %27 = load double, ptr %.lcssa, align 8
  %28 = load double, ptr %.115.lcssa, align 8
  store double %28, ptr %.lcssa, align 8
  store double %27, ptr %.115.lcssa, align 8
  br label %12, !llvm.loop !47

29:                                               ; preds = %25, %18
  %.lcssa17 = phi ptr [ %.lcssa.lcssa16, %25 ], [ %.lcssa.lcssa, %18 ]
  %30 = getelementptr inbounds nuw i8, ptr %.lcssa17, i64 8
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %0, ptr noundef nonnull %30, i8 undef)
  %31 = getelementptr inbounds nuw i8, ptr %.lcssa17, i64 8
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef nonnull %31, ptr noundef %1, i8 undef)
  br label %32

32:                                               ; preds = %29, %3
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

9:                                                ; preds = %25, %7
  %.013 = phi ptr [ %0, %7 ], [ %.114.lcssa, %25 ]
  %.0 = phi ptr [ %1, %7 ], [ %.lcssa, %25 ]
  br label %10

10:                                               ; preds = %10, %9
  %.1 = phi ptr [ %.0, %9 ], [ %11, %10 ]
  %11 = getelementptr inbounds i8, ptr %.1, i64 -8
  %12 = load double, ptr %11, align 8
  %13 = fcmp olt double %8, %12
  br i1 %13, label %10, label %14, !llvm.loop !48

14:                                               ; preds = %10
  %.lcssa = phi ptr [ %11, %10 ]
  %15 = icmp ult ptr %.013, %.lcssa
  br i1 %15, label %17, label %16

16:                                               ; preds = %14
  %.lcssa.lcssa = phi ptr [ %.lcssa, %14 ]
  br label %28

17:                                               ; preds = %14
  br label %18

18:                                               ; preds = %18, %17
  %.114 = phi ptr [ %.013, %17 ], [ %21, %18 ]
  %19 = load double, ptr %.114, align 8
  %20 = fcmp olt double %19, %8
  %21 = getelementptr inbounds nuw i8, ptr %.114, i64 8
  br i1 %20, label %18, label %22, !llvm.loop !49

22:                                               ; preds = %18
  %.114.lcssa = phi ptr [ %.114, %18 ]
  %23 = icmp ult ptr %.114.lcssa, %.lcssa
  br i1 %23, label %25, label %24

24:                                               ; preds = %22
  %.lcssa.lcssa15 = phi ptr [ %.lcssa, %22 ]
  br label %28

25:                                               ; preds = %22
  %26 = load double, ptr %.lcssa, align 8
  %27 = load double, ptr %.114.lcssa, align 8
  store double %27, ptr %.lcssa, align 8
  store double %26, ptr %.114.lcssa, align 8
  br label %9, !llvm.loop !50

28:                                               ; preds = %24, %16
  %.lcssa16 = phi ptr [ %.lcssa.lcssa15, %24 ], [ %.lcssa.lcssa, %16 ]
  %29 = getelementptr inbounds nuw i8, ptr %.lcssa16, i64 8
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %0, ptr noundef nonnull %29)
  %30 = getelementptr inbounds nuw i8, ptr %.lcssa16, i64 8
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef nonnull %30, ptr noundef %1)
  br label %31

31:                                               ; preds = %28, %2
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
  %4 = inttoptr i64 %2 to ptr
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %13, label %5

5:                                                ; preds = %3
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %9)
  %11 = shl nsw i64 %10, 1
  %12 = ptrtoint ptr %4 to i64
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %11, i64 %12)
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %12)
  br label %13

13:                                               ; preds = %5, %3
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
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = icmp sgt i64 %8, 128
  br i1 %9, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %10

10:                                               ; preds = %.lr.ph, %14
  %.08 = phi i64 [ %2, %.lr.ph ], [ %15, %14 ]
  %.057 = phi ptr [ %1, %.lr.ph ], [ %17, %14 ]
  %11 = icmp eq i64 %.08, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %.05.lcssa6 = phi ptr [ %.057, %10 ]
  %13 = ptrtoint ptr %5 to i64
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %.05.lcssa6, ptr noundef %.05.lcssa6, i64 %13)
  br label %21

14:                                               ; preds = %10
  %15 = add nsw i64 %.08, -1
  %16 = ptrtoint ptr %5 to i64
  %17 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %.057, i64 %16)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %17, ptr noundef %.057, i64 noundef %15, i64 %16)
  %18 = ptrtoint ptr %17 to i64
  %19 = sub i64 %18, %7
  %20 = icmp sgt i64 %19, 128
  br i1 %20, label %10, label %..loopexit_crit_edge, !llvm.loop !51

..loopexit_crit_edge:                             ; preds = %14
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %21

21:                                               ; preds = %.loopexit, %12
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
  %4 = inttoptr i64 %2 to ptr
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 128
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %11 = ptrtoint ptr %4 to i64
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef nonnull %10, i64 %11)
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef nonnull %12, ptr noundef %1, i64 %11)
  br label %15

13:                                               ; preds = %3
  %14 = ptrtoint ptr %4 to i64
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %14)
  br label %15

15:                                               ; preds = %13, %9
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
  %8 = ashr exact i64 %7, 3
  %9 = sdiv i64 %8, 2
  %10 = getelementptr inbounds [8 x i8], ptr %0, i64 %9
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = getelementptr inbounds i8, ptr %1, i64 -8
  %13 = ptrtoint ptr %4 to i64
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %10, ptr noundef nonnull %12, i64 %13)
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %15 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_S7_T0_(ptr noundef nonnull %14, ptr noundef %1, ptr noundef %0, i64 %13)
  ret ptr %15
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = inttoptr i64 %3 to ptr
  store ptr %6, ptr %5, align 8
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %7 = icmp ult ptr %1, %2
  br i1 %7, label %.lr.ph, label %15

.lr.ph:                                           ; preds = %4
  br label %8

8:                                                ; preds = %.lr.ph, %12
  %storemerge6 = phi ptr [ %1, %.lr.ph ], [ %13, %12 ]
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %storemerge6, ptr noundef %0)
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %storemerge6, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %11

11:                                               ; preds = %10, %8
  br label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds nuw i8, ptr %storemerge6, i64 8
  %14 = icmp ult ptr %13, %2
  br i1 %14, label %8, label %._crit_edge, !llvm.loop !52

._crit_edge:                                      ; preds = %12
  br label %15

15:                                               ; preds = %._crit_edge, %4
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 8
  br i1 %7, label %.lr.ph, label %13

.lr.ph:                                           ; preds = %3
  br label %8

8:                                                ; preds = %.lr.ph, %8
  %.04 = phi ptr [ %1, %.lr.ph ], [ %9, %8 ]
  %9 = getelementptr inbounds i8, ptr %.04, i64 -8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %10 = ptrtoint ptr %9 to i64
  %11 = sub i64 %10, %5
  %12 = icmp sgt i64 %11, 8
  br i1 %12, label %8, label %._crit_edge, !llvm.loop !53

._crit_edge:                                      ; preds = %8
  br label %13

13:                                               ; preds = %._crit_edge, %3
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
  br label %20

10:                                               ; preds = %3
  %11 = add nsw i64 %7, -2
  %12 = sdiv i64 %11, 2
  br label %13

13:                                               ; preds = %13, %10
  %storemerge = phi i64 [ %12, %10 ], [ %18, %13 ]
  %14 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge
  %15 = load double, ptr %14, align 8
  %16 = load i64, ptr %2, align 8
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %storemerge, i64 noundef %7, double noundef %15, i64 %16)
  %17 = icmp eq i64 %storemerge, 0
  %18 = add nsw i64 %storemerge, -1
  br i1 %17, label %19, label %13, !llvm.loop !54

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19, %9
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
  %9 = add nsw i64 %2, -1
  %10 = sdiv i64 %9, 2
  %11 = icmp slt i64 %1, %10
  br i1 %11, label %.lr.ph, label %26

.lr.ph:                                           ; preds = %5
  br label %12

12:                                               ; preds = %.lr.ph, %21
  %.016 = phi i64 [ %1, %.lr.ph ], [ %.1, %21 ]
  %.01315 = phi i64 [ %1, %.lr.ph ], [ %.1, %21 ]
  %13 = shl i64 %.016, 1
  %14 = add i64 %13, 2
  %15 = getelementptr inbounds [8 x i8], ptr %0, i64 %14
  %16 = getelementptr [8 x i8], ptr %0, i64 %13
  %17 = getelementptr i8, ptr %16, i64 8
  %18 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %15, ptr noundef %17)
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = add nsw i64 %14, -1
  br label %21

21:                                               ; preds = %19, %12
  %.1 = phi i64 [ %20, %19 ], [ %14, %12 ]
  %22 = getelementptr inbounds [8 x i8], ptr %0, i64 %.1
  %23 = load double, ptr %22, align 8
  %24 = getelementptr inbounds [8 x i8], ptr %0, i64 %.01315
  store double %23, ptr %24, align 8
  %25 = icmp slt i64 %.1, %10
  br i1 %25, label %12, label %._crit_edge, !llvm.loop !55

._crit_edge:                                      ; preds = %21
  %split = phi i64 [ %.1, %21 ]
  %split17 = phi i64 [ %.1, %21 ]
  br label %26

26:                                               ; preds = %._crit_edge, %5
  %.013.lcssa = phi i64 [ %split, %._crit_edge ], [ %1, %5 ]
  %.0.lcssa = phi i64 [ %split17, %._crit_edge ], [ %1, %5 ]
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
  %39 = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa
  store double %38, ptr %39, align 8
  %40 = add nsw i64 %35, -1
  br label %41

41:                                               ; preds = %33, %29, %26
  %.114 = phi i64 [ %40, %33 ], [ %.013.lcssa, %29 ], [ %.013.lcssa, %26 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEEEvT_T0_S8_T1_RT2_(ptr noundef %0, i64 noundef %.114, i64 noundef %1, double noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %7)
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

7:                                                ; preds = %17, %4
  %.09 = phi ptr [ %1, %4 ], [ %storemerge.lcssa, %17 ]
  %.0 = phi ptr [ %0, %4 ], [ %18, %17 ]
  br label %8

8:                                                ; preds = %8, %7
  %.1 = phi ptr [ %.0, %7 ], [ %10, %8 ]
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %.1, ptr noundef %2)
  %10 = getelementptr inbounds nuw i8, ptr %.1, i64 8
  br i1 %9, label %8, label %11, !llvm.loop !57

11:                                               ; preds = %8
  %.1.lcssa = phi ptr [ %.1, %8 ]
  br label %12

12:                                               ; preds = %12, %11
  %.pn = phi ptr [ %.09, %11 ], [ %storemerge, %12 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %2, ptr noundef nonnull %storemerge)
  br i1 %13, label %12, label %14, !llvm.loop !58

14:                                               ; preds = %12
  %storemerge.lcssa = phi ptr [ %storemerge, %12 ]
  %15 = icmp ult ptr %.1.lcssa, %storemerge.lcssa
  br i1 %15, label %17, label %16

16:                                               ; preds = %14
  %.1.lcssa.lcssa = phi ptr [ %.1.lcssa, %14 ]
  ret ptr %.1.lcssa.lcssa

17:                                               ; preds = %14
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1.lcssa, ptr noundef nonnull %storemerge.lcssa)
  %18 = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 8
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
  br label %22

8:                                                ; preds = %3
  %storemerge6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not7 = icmp eq ptr %storemerge6, %1
  br i1 %.not7, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %8
  br label %9

9:                                                ; preds = %.lr.ph, %21
  %storemerge8 = phi ptr [ %storemerge6, %.lr.ph ], [ %storemerge, %21 ]
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %storemerge8, ptr noundef %0)
  br i1 %10, label %11, label %17

11:                                               ; preds = %9
  %12 = load double, ptr %storemerge8, align 8
  %13 = getelementptr inbounds nuw i8, ptr %storemerge8, i64 8
  %14 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %15 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %storemerge8)
  %16 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %14, ptr noundef %15, ptr noundef nonnull %13)
  store double %12, ptr %0, align 8
  br label %20

17:                                               ; preds = %9
  %18 = load i64, ptr %4, align 8
  %19 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %18)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %storemerge8, i64 %19)
  br label %20

20:                                               ; preds = %17, %11
  br label %21

21:                                               ; preds = %20
  %storemerge = getelementptr inbounds nuw i8, ptr %storemerge8, i64 8
  %.not = icmp eq ptr %storemerge, %1
  br i1 %.not, label %..loopexit_crit_edge, label %9, !llvm.loop !60

..loopexit_crit_edge:                             ; preds = %21
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %8
  br label %22

22:                                               ; preds = %.loopexit, %7
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %2) #0 comdat {
  %4 = inttoptr i64 %2 to ptr
  %.not2 = icmp eq ptr %0, %1
  br i1 %.not2, label %10, label %.lr.ph

.lr.ph:                                           ; preds = %3
  br label %5

5:                                                ; preds = %.lr.ph, %8
  %storemerge3 = phi ptr [ %0, %.lr.ph ], [ %9, %8 ]
  %6 = ptrtoint ptr %4 to i64
  %7 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %6)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %storemerge3, i64 %7)
  br label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds nuw i8, ptr %storemerge3, i64 8
  %.not = icmp eq ptr %9, %1
  br i1 %.not, label %._crit_edge, label %5, !llvm.loop !61

._crit_edge:                                      ; preds = %8
  br label %10

10:                                               ; preds = %._crit_edge, %3
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
  %storemerge3 = getelementptr inbounds i8, ptr %0, i64 -8
  %7 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEclIdPdEEbRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %storemerge3)
  br i1 %7, label %.lr.ph, label %11

.lr.ph:                                           ; preds = %2
  br label %8

8:                                                ; preds = %.lr.ph, %8
  %storemerge5 = phi ptr [ %storemerge3, %.lr.ph ], [ %storemerge, %8 ]
  %.04 = phi ptr [ %0, %.lr.ph ], [ %storemerge5, %8 ]
  %9 = load double, ptr %storemerge5, align 8
  store double %9, ptr %.04, align 8
  %storemerge = getelementptr inbounds i8, ptr %storemerge5, i64 -8
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEclIdPdEEbRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %storemerge)
  br i1 %10, label %8, label %._crit_edge, !llvm.loop !62

._crit_edge:                                      ; preds = %8
  %split = phi ptr [ %storemerge5, %8 ]
  br label %11

11:                                               ; preds = %._crit_edge, %2
  %.0.lcssa = phi ptr [ %split, %._crit_edge ], [ %0, %2 ]
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
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 128
  br i1 %8, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %9

9:                                                ; preds = %.lr.ph, %12
  %.08 = phi i64 [ %2, %.lr.ph ], [ %13, %12 ]
  %.057 = phi ptr [ %1, %.lr.ph ], [ %14, %12 ]
  %10 = icmp eq i64 %.08, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  %.05.lcssa6 = phi ptr [ %.057, %9 ]
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %.05.lcssa6, ptr noundef %.05.lcssa6, i8 %3)
  br label %18

12:                                               ; preds = %9
  %13 = add nsw i64 %.08, -1
  %14 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %.057, i8 %3)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %14, ptr noundef %.057, i64 noundef %13, i8 %3)
  %15 = ptrtoint ptr %14 to i64
  %16 = sub i64 %15, %6
  %17 = icmp sgt i64 %16, 128
  br i1 %17, label %9, label %..loopexit_crit_edge, !llvm.loop !63

..loopexit_crit_edge:                             ; preds = %12
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %18

18:                                               ; preds = %.loopexit, %11
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
  %6 = icmp ult ptr %1, %2
  br i1 %6, label %.lr.ph, label %14

.lr.ph:                                           ; preds = %4
  br label %7

7:                                                ; preds = %.lr.ph, %11
  %storemerge6 = phi ptr [ %1, %.lr.ph ], [ %12, %11 ]
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %storemerge6, ptr noundef %0)
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %storemerge6, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %10

10:                                               ; preds = %9, %7
  br label %11

11:                                               ; preds = %10
  %12 = getelementptr inbounds nuw i8, ptr %storemerge6, i64 8
  %13 = icmp ult ptr %12, %2
  br i1 %13, label %7, label %._crit_edge, !llvm.loop !64

._crit_edge:                                      ; preds = %11
  br label %14

14:                                               ; preds = %._crit_edge, %4
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 8
  br i1 %7, label %.lr.ph, label %13

.lr.ph:                                           ; preds = %3
  br label %8

8:                                                ; preds = %.lr.ph, %8
  %.04 = phi ptr [ %1, %.lr.ph ], [ %9, %8 ]
  %9 = getelementptr inbounds i8, ptr %.04, i64 -8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %10 = ptrtoint ptr %9 to i64
  %11 = sub i64 %10, %5
  %12 = icmp sgt i64 %11, 8
  br i1 %12, label %8, label %._crit_edge, !llvm.loop !65

._crit_edge:                                      ; preds = %8
  br label %13

13:                                               ; preds = %._crit_edge, %3
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
  br label %20

10:                                               ; preds = %3
  %11 = add nsw i64 %7, -2
  %12 = sdiv i64 %11, 2
  br label %13

13:                                               ; preds = %13, %10
  %storemerge = phi i64 [ %12, %10 ], [ %18, %13 ]
  %14 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge
  %15 = load double, ptr %14, align 8
  %16 = load i8, ptr %2, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %storemerge, i64 noundef %7, double noundef %15, i8 %16)
  %17 = icmp eq i64 %storemerge, 0
  %18 = add nsw i64 %storemerge, -1
  br i1 %17, label %19, label %13, !llvm.loop !66

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19, %9
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
  %8 = add nsw i64 %2, -1
  %9 = sdiv i64 %8, 2
  %10 = icmp slt i64 %1, %9
  br i1 %10, label %.lr.ph, label %25

.lr.ph:                                           ; preds = %5
  br label %11

11:                                               ; preds = %.lr.ph, %20
  %.016 = phi i64 [ %1, %.lr.ph ], [ %.1, %20 ]
  %.01315 = phi i64 [ %1, %.lr.ph ], [ %.1, %20 ]
  %12 = shl i64 %.016, 1
  %13 = add i64 %12, 2
  %14 = getelementptr inbounds [8 x i8], ptr %0, i64 %13
  %15 = getelementptr [8 x i8], ptr %0, i64 %12
  %16 = getelementptr i8, ptr %15, i64 8
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %14, ptr noundef %16)
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = add nsw i64 %13, -1
  br label %20

20:                                               ; preds = %18, %11
  %.1 = phi i64 [ %19, %18 ], [ %13, %11 ]
  %21 = getelementptr inbounds [8 x i8], ptr %0, i64 %.1
  %22 = load double, ptr %21, align 8
  %23 = getelementptr inbounds [8 x i8], ptr %0, i64 %.01315
  store double %22, ptr %23, align 8
  %24 = icmp slt i64 %.1, %9
  br i1 %24, label %11, label %._crit_edge, !llvm.loop !67

._crit_edge:                                      ; preds = %20
  %split = phi i64 [ %.1, %20 ]
  %split17 = phi i64 [ %.1, %20 ]
  br label %25

25:                                               ; preds = %._crit_edge, %5
  %.013.lcssa = phi i64 [ %split, %._crit_edge ], [ %1, %5 ]
  %.0.lcssa = phi i64 [ %split17, %._crit_edge ], [ %1, %5 ]
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
  %38 = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa
  store double %37, ptr %38, align 8
  %39 = add nsw i64 %34, -1
  br label %40

40:                                               ; preds = %32, %28, %25
  %.114 = phi i64 [ %39, %32 ], [ %.013.lcssa, %28 ], [ %.013.lcssa, %25 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %0, i64 noundef %.114, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %7)
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

6:                                                ; preds = %16, %4
  %.09 = phi ptr [ %1, %4 ], [ %storemerge.lcssa, %16 ]
  %.0 = phi ptr [ %0, %4 ], [ %17, %16 ]
  br label %7

7:                                                ; preds = %7, %6
  %.1 = phi ptr [ %.0, %6 ], [ %9, %7 ]
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.1, ptr noundef %2)
  %9 = getelementptr inbounds nuw i8, ptr %.1, i64 8
  br i1 %8, label %7, label %10, !llvm.loop !69

10:                                               ; preds = %7
  %.1.lcssa = phi ptr [ %.1, %7 ]
  br label %11

11:                                               ; preds = %11, %10
  %.pn = phi ptr [ %.09, %10 ], [ %storemerge, %11 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef nonnull %storemerge)
  br i1 %12, label %11, label %13, !llvm.loop !70

13:                                               ; preds = %11
  %storemerge.lcssa = phi ptr [ %storemerge, %11 ]
  %14 = icmp ult ptr %.1.lcssa, %storemerge.lcssa
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  %.1.lcssa.lcssa = phi ptr [ %.1.lcssa, %13 ]
  ret ptr %.1.lcssa.lcssa

16:                                               ; preds = %13
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1.lcssa, ptr noundef nonnull %storemerge.lcssa)
  %17 = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 8
  br label %6, !llvm.loop !71
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  store i8 %2, ptr %4, align 1
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  br label %21

7:                                                ; preds = %3
  %storemerge6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not7 = icmp eq ptr %storemerge6, %1
  br i1 %.not7, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %7
  br label %8

8:                                                ; preds = %.lr.ph, %20
  %storemerge8 = phi ptr [ %storemerge6, %.lr.ph ], [ %storemerge, %20 ]
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull %storemerge8, ptr noundef %0)
  br i1 %9, label %10, label %16

10:                                               ; preds = %8
  %11 = load double, ptr %storemerge8, align 8
  %12 = getelementptr inbounds nuw i8, ptr %storemerge8, i64 8
  %13 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %14 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %storemerge8)
  %15 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %13, ptr noundef %14, ptr noundef nonnull %12)
  store double %11, ptr %0, align 8
  br label %19

16:                                               ; preds = %8
  %17 = load i8, ptr %4, align 1
  %18 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %17)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %storemerge8, i8 %18)
  br label %19

19:                                               ; preds = %16, %10
  br label %20

20:                                               ; preds = %19
  %storemerge = getelementptr inbounds nuw i8, ptr %storemerge8, i64 8
  %.not = icmp eq ptr %storemerge, %1
  br i1 %.not, label %..loopexit_crit_edge, label %8, !llvm.loop !72

..loopexit_crit_edge:                             ; preds = %20
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %7
  br label %21

21:                                               ; preds = %.loopexit, %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %.not2 = icmp eq ptr %0, %1
  br i1 %.not2, label %8, label %.lr.ph

.lr.ph:                                           ; preds = %3
  br label %4

4:                                                ; preds = %.lr.ph, %6
  %storemerge3 = phi ptr [ %0, %.lr.ph ], [ %7, %6 ]
  %5 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %2)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %storemerge3, i8 %5)
  br label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %storemerge3, i64 8
  %.not = icmp eq ptr %7, %1
  br i1 %.not, label %._crit_edge, label %4, !llvm.loop !73

._crit_edge:                                      ; preds = %6
  br label %8

8:                                                ; preds = %._crit_edge, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %0, i8 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", align 1
  %4 = alloca double, align 8
  store i8 %1, ptr %3, align 1
  %5 = load double, ptr %0, align 8
  store double %5, ptr %4, align 8
  %storemerge3 = getelementptr inbounds i8, ptr %0, i64 -8
  %6 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %storemerge3)
  br i1 %6, label %.lr.ph, label %10

.lr.ph:                                           ; preds = %2
  br label %7

7:                                                ; preds = %.lr.ph, %7
  %storemerge5 = phi ptr [ %storemerge3, %.lr.ph ], [ %storemerge, %7 ]
  %.04 = phi ptr [ %0, %.lr.ph ], [ %storemerge5, %7 ]
  %8 = load double, ptr %storemerge5, align 8
  store double %8, ptr %.04, align 8
  %storemerge = getelementptr inbounds i8, ptr %storemerge5, i64 -8
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %storemerge)
  br i1 %9, label %7, label %._crit_edge, !llvm.loop !74

._crit_edge:                                      ; preds = %7
  %split = phi ptr [ %storemerge5, %7 ]
  br label %10

10:                                               ; preds = %._crit_edge, %2
  %.0.lcssa = phi ptr [ %split, %._crit_edge ], [ %0, %2 ]
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
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 128
  br i1 %8, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %9

9:                                                ; preds = %.lr.ph, %12
  %.08 = phi i64 [ %2, %.lr.ph ], [ %13, %12 ]
  %.057 = phi ptr [ %1, %.lr.ph ], [ %14, %12 ]
  %10 = icmp eq i64 %.08, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  %.05.lcssa6 = phi ptr [ %.057, %9 ]
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %.05.lcssa6, ptr noundef %.05.lcssa6, i8 %3)
  br label %18

12:                                               ; preds = %9
  %13 = add nsw i64 %.08, -1
  %14 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %.057, i8 %3)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %14, ptr noundef %.057, i64 noundef %13, i8 %3)
  %15 = ptrtoint ptr %14 to i64
  %16 = sub i64 %15, %6
  %17 = icmp sgt i64 %16, 128
  br i1 %17, label %9, label %..loopexit_crit_edge, !llvm.loop !75

..loopexit_crit_edge:                             ; preds = %12
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %18

18:                                               ; preds = %.loopexit, %11
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
  %6 = icmp ult ptr %1, %2
  br i1 %6, label %.lr.ph, label %14

.lr.ph:                                           ; preds = %4
  br label %7

7:                                                ; preds = %.lr.ph, %11
  %storemerge6 = phi ptr [ %1, %.lr.ph ], [ %12, %11 ]
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %storemerge6, ptr noundef %0)
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %storemerge6, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %10

10:                                               ; preds = %9, %7
  br label %11

11:                                               ; preds = %10
  %12 = getelementptr inbounds nuw i8, ptr %storemerge6, i64 8
  %13 = icmp ult ptr %12, %2
  br i1 %13, label %7, label %._crit_edge, !llvm.loop !76

._crit_edge:                                      ; preds = %11
  br label %14

14:                                               ; preds = %._crit_edge, %4
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 8
  br i1 %7, label %.lr.ph, label %13

.lr.ph:                                           ; preds = %3
  br label %8

8:                                                ; preds = %.lr.ph, %8
  %.04 = phi ptr [ %1, %.lr.ph ], [ %9, %8 ]
  %9 = getelementptr inbounds i8, ptr %.04, i64 -8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %10 = ptrtoint ptr %9 to i64
  %11 = sub i64 %10, %5
  %12 = icmp sgt i64 %11, 8
  br i1 %12, label %8, label %._crit_edge, !llvm.loop !77

._crit_edge:                                      ; preds = %8
  br label %13

13:                                               ; preds = %._crit_edge, %3
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
  br label %20

10:                                               ; preds = %3
  %11 = add nsw i64 %7, -2
  %12 = sdiv i64 %11, 2
  br label %13

13:                                               ; preds = %13, %10
  %storemerge = phi i64 [ %12, %10 ], [ %18, %13 ]
  %14 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge
  %15 = load double, ptr %14, align 8
  %16 = load i8, ptr %2, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %storemerge, i64 noundef %7, double noundef %15, i8 %16)
  %17 = icmp eq i64 %storemerge, 0
  %18 = add nsw i64 %storemerge, -1
  br i1 %17, label %19, label %13, !llvm.loop !78

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19, %9
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
  %8 = add nsw i64 %2, -1
  %9 = sdiv i64 %8, 2
  %10 = icmp slt i64 %1, %9
  br i1 %10, label %.lr.ph, label %25

.lr.ph:                                           ; preds = %5
  br label %11

11:                                               ; preds = %.lr.ph, %20
  %.016 = phi i64 [ %1, %.lr.ph ], [ %.1, %20 ]
  %.01315 = phi i64 [ %1, %.lr.ph ], [ %.1, %20 ]
  %12 = shl i64 %.016, 1
  %13 = add i64 %12, 2
  %14 = getelementptr inbounds [8 x i8], ptr %0, i64 %13
  %15 = getelementptr [8 x i8], ptr %0, i64 %12
  %16 = getelementptr i8, ptr %15, i64 8
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %14, ptr noundef %16)
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = add nsw i64 %13, -1
  br label %20

20:                                               ; preds = %18, %11
  %.1 = phi i64 [ %19, %18 ], [ %13, %11 ]
  %21 = getelementptr inbounds [8 x i8], ptr %0, i64 %.1
  %22 = load double, ptr %21, align 8
  %23 = getelementptr inbounds [8 x i8], ptr %0, i64 %.01315
  store double %22, ptr %23, align 8
  %24 = icmp slt i64 %.1, %9
  br i1 %24, label %11, label %._crit_edge, !llvm.loop !79

._crit_edge:                                      ; preds = %20
  %split = phi i64 [ %.1, %20 ]
  %split17 = phi i64 [ %.1, %20 ]
  br label %25

25:                                               ; preds = %._crit_edge, %5
  %.013.lcssa = phi i64 [ %split, %._crit_edge ], [ %1, %5 ]
  %.0.lcssa = phi i64 [ %split17, %._crit_edge ], [ %1, %5 ]
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
  %38 = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa
  store double %37, ptr %38, align 8
  %39 = add nsw i64 %34, -1
  br label %40

40:                                               ; preds = %32, %28, %25
  %.114 = phi i64 [ %39, %32 ], [ %.013.lcssa, %28 ], [ %.013.lcssa, %25 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %0, i64 noundef %.114, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %7)
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

6:                                                ; preds = %16, %4
  %.09 = phi ptr [ %1, %4 ], [ %storemerge.lcssa, %16 ]
  %.0 = phi ptr [ %0, %4 ], [ %17, %16 ]
  br label %7

7:                                                ; preds = %7, %6
  %.1 = phi ptr [ %.0, %6 ], [ %9, %7 ]
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.1, ptr noundef %2)
  %9 = getelementptr inbounds nuw i8, ptr %.1, i64 8
  br i1 %8, label %7, label %10, !llvm.loop !81

10:                                               ; preds = %7
  %.1.lcssa = phi ptr [ %.1, %7 ]
  br label %11

11:                                               ; preds = %11, %10
  %.pn = phi ptr [ %.09, %10 ], [ %storemerge, %11 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef nonnull %storemerge)
  br i1 %12, label %11, label %13, !llvm.loop !82

13:                                               ; preds = %11
  %storemerge.lcssa = phi ptr [ %storemerge, %11 ]
  %14 = icmp ult ptr %.1.lcssa, %storemerge.lcssa
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  %.1.lcssa.lcssa = phi ptr [ %.1.lcssa, %13 ]
  ret ptr %.1.lcssa.lcssa

16:                                               ; preds = %13
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1.lcssa, ptr noundef nonnull %storemerge.lcssa)
  %17 = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 8
  br label %6, !llvm.loop !83
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  store i8 %2, ptr %4, align 1
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  br label %21

7:                                                ; preds = %3
  %storemerge6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not7 = icmp eq ptr %storemerge6, %1
  br i1 %.not7, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %7
  br label %8

8:                                                ; preds = %.lr.ph, %20
  %storemerge8 = phi ptr [ %storemerge6, %.lr.ph ], [ %storemerge, %20 ]
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull %storemerge8, ptr noundef %0)
  br i1 %9, label %10, label %16

10:                                               ; preds = %8
  %11 = load double, ptr %storemerge8, align 8
  %12 = getelementptr inbounds nuw i8, ptr %storemerge8, i64 8
  %13 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %14 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %storemerge8)
  %15 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %13, ptr noundef %14, ptr noundef nonnull %12)
  store double %11, ptr %0, align 8
  br label %19

16:                                               ; preds = %8
  %17 = load i8, ptr %4, align 1
  %18 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %17)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %storemerge8, i8 %18)
  br label %19

19:                                               ; preds = %16, %10
  br label %20

20:                                               ; preds = %19
  %storemerge = getelementptr inbounds nuw i8, ptr %storemerge8, i64 8
  %.not = icmp eq ptr %storemerge, %1
  br i1 %.not, label %..loopexit_crit_edge, label %8, !llvm.loop !84

..loopexit_crit_edge:                             ; preds = %20
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %7
  br label %21

21:                                               ; preds = %.loopexit, %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %.not2 = icmp eq ptr %0, %1
  br i1 %.not2, label %8, label %.lr.ph

.lr.ph:                                           ; preds = %3
  br label %4

4:                                                ; preds = %.lr.ph, %6
  %storemerge3 = phi ptr [ %0, %.lr.ph ], [ %7, %6 ]
  %5 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %2)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %storemerge3, i8 %5)
  br label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %storemerge3, i64 8
  %.not = icmp eq ptr %7, %1
  br i1 %.not, label %._crit_edge, label %4, !llvm.loop !85

._crit_edge:                                      ; preds = %6
  br label %8

8:                                                ; preds = %._crit_edge, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %0, i8 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", align 1
  %4 = alloca double, align 8
  store i8 %1, ptr %3, align 1
  %5 = load double, ptr %0, align 8
  store double %5, ptr %4, align 8
  %storemerge3 = getelementptr inbounds i8, ptr %0, i64 -8
  %6 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %storemerge3)
  br i1 %6, label %.lr.ph, label %10

.lr.ph:                                           ; preds = %2
  br label %7

7:                                                ; preds = %.lr.ph, %7
  %storemerge5 = phi ptr [ %storemerge3, %.lr.ph ], [ %storemerge, %7 ]
  %.04 = phi ptr [ %0, %.lr.ph ], [ %storemerge5, %7 ]
  %8 = load double, ptr %storemerge5, align 8
  store double %8, ptr %.04, align 8
  %storemerge = getelementptr inbounds i8, ptr %storemerge5, i64 -8
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %storemerge)
  br i1 %9, label %7, label %._crit_edge, !llvm.loop !86

._crit_edge:                                      ; preds = %7
  %split = phi ptr [ %storemerge5, %7 ]
  br label %10

10:                                               ; preds = %._crit_edge, %2
  %.0.lcssa = phi ptr [ %split, %._crit_edge ], [ %0, %2 ]
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
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 128
  br i1 %8, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %9

9:                                                ; preds = %.lr.ph, %12
  %.08 = phi i64 [ %2, %.lr.ph ], [ %13, %12 ]
  %.057 = phi ptr [ %1, %.lr.ph ], [ %14, %12 ]
  %10 = icmp eq i64 %.08, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  %.05.lcssa6 = phi ptr [ %.057, %9 ]
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %.05.lcssa6, ptr noundef %.05.lcssa6, i8 %3)
  br label %18

12:                                               ; preds = %9
  %13 = add nsw i64 %.08, -1
  %14 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %.057, i8 %3)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %14, ptr noundef %.057, i64 noundef %13, i8 %3)
  %15 = ptrtoint ptr %14 to i64
  %16 = sub i64 %15, %6
  %17 = icmp sgt i64 %16, 128
  br i1 %17, label %9, label %..loopexit_crit_edge, !llvm.loop !87

..loopexit_crit_edge:                             ; preds = %12
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %18

18:                                               ; preds = %.loopexit, %11
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
  %6 = icmp ult ptr %1, %2
  br i1 %6, label %.lr.ph, label %14

.lr.ph:                                           ; preds = %4
  br label %7

7:                                                ; preds = %.lr.ph, %11
  %storemerge6 = phi ptr [ %1, %.lr.ph ], [ %12, %11 ]
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %storemerge6, ptr noundef %0)
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %storemerge6, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %10

10:                                               ; preds = %9, %7
  br label %11

11:                                               ; preds = %10
  %12 = getelementptr inbounds nuw i8, ptr %storemerge6, i64 8
  %13 = icmp ult ptr %12, %2
  br i1 %13, label %7, label %._crit_edge, !llvm.loop !88

._crit_edge:                                      ; preds = %11
  br label %14

14:                                               ; preds = %._crit_edge, %4
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 8
  br i1 %7, label %.lr.ph, label %13

.lr.ph:                                           ; preds = %3
  br label %8

8:                                                ; preds = %.lr.ph, %8
  %.04 = phi ptr [ %1, %.lr.ph ], [ %9, %8 ]
  %9 = getelementptr inbounds i8, ptr %.04, i64 -8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %10 = ptrtoint ptr %9 to i64
  %11 = sub i64 %10, %5
  %12 = icmp sgt i64 %11, 8
  br i1 %12, label %8, label %._crit_edge, !llvm.loop !89

._crit_edge:                                      ; preds = %8
  br label %13

13:                                               ; preds = %._crit_edge, %3
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
  br label %20

10:                                               ; preds = %3
  %11 = add nsw i64 %7, -2
  %12 = sdiv i64 %11, 2
  br label %13

13:                                               ; preds = %13, %10
  %storemerge = phi i64 [ %12, %10 ], [ %18, %13 ]
  %14 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge
  %15 = load double, ptr %14, align 8
  %16 = load i8, ptr %2, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %storemerge, i64 noundef %7, double noundef %15, i8 %16)
  %17 = icmp eq i64 %storemerge, 0
  %18 = add nsw i64 %storemerge, -1
  br i1 %17, label %19, label %13, !llvm.loop !90

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19, %9
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
  %8 = add nsw i64 %2, -1
  %9 = sdiv i64 %8, 2
  %10 = icmp slt i64 %1, %9
  br i1 %10, label %.lr.ph, label %25

.lr.ph:                                           ; preds = %5
  br label %11

11:                                               ; preds = %.lr.ph, %20
  %.016 = phi i64 [ %1, %.lr.ph ], [ %.1, %20 ]
  %.01315 = phi i64 [ %1, %.lr.ph ], [ %.1, %20 ]
  %12 = shl i64 %.016, 1
  %13 = add i64 %12, 2
  %14 = getelementptr inbounds [8 x i8], ptr %0, i64 %13
  %15 = getelementptr [8 x i8], ptr %0, i64 %12
  %16 = getelementptr i8, ptr %15, i64 8
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %14, ptr noundef %16)
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = add nsw i64 %13, -1
  br label %20

20:                                               ; preds = %18, %11
  %.1 = phi i64 [ %19, %18 ], [ %13, %11 ]
  %21 = getelementptr inbounds [8 x i8], ptr %0, i64 %.1
  %22 = load double, ptr %21, align 8
  %23 = getelementptr inbounds [8 x i8], ptr %0, i64 %.01315
  store double %22, ptr %23, align 8
  %24 = icmp slt i64 %.1, %9
  br i1 %24, label %11, label %._crit_edge, !llvm.loop !91

._crit_edge:                                      ; preds = %20
  %split = phi i64 [ %.1, %20 ]
  %split17 = phi i64 [ %.1, %20 ]
  br label %25

25:                                               ; preds = %._crit_edge, %5
  %.013.lcssa = phi i64 [ %split, %._crit_edge ], [ %1, %5 ]
  %.0.lcssa = phi i64 [ %split17, %._crit_edge ], [ %1, %5 ]
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
  %38 = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa
  store double %37, ptr %38, align 8
  %39 = add nsw i64 %34, -1
  br label %40

40:                                               ; preds = %32, %28, %25
  %.114 = phi i64 [ %39, %32 ], [ %.013.lcssa, %28 ], [ %.013.lcssa, %25 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEEEvT_T0_S8_T1_RT2_(ptr noundef %0, i64 noundef %.114, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %7)
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

6:                                                ; preds = %16, %4
  %.09 = phi ptr [ %1, %4 ], [ %storemerge.lcssa, %16 ]
  %.0 = phi ptr [ %0, %4 ], [ %17, %16 ]
  br label %7

7:                                                ; preds = %7, %6
  %.1 = phi ptr [ %.0, %6 ], [ %9, %7 ]
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.1, ptr noundef %2)
  %9 = getelementptr inbounds nuw i8, ptr %.1, i64 8
  br i1 %8, label %7, label %10, !llvm.loop !93

10:                                               ; preds = %7
  %.1.lcssa = phi ptr [ %.1, %7 ]
  br label %11

11:                                               ; preds = %11, %10
  %.pn = phi ptr [ %.09, %10 ], [ %storemerge, %11 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef nonnull %storemerge)
  br i1 %12, label %11, label %13, !llvm.loop !94

13:                                               ; preds = %11
  %storemerge.lcssa = phi ptr [ %storemerge, %11 ]
  %14 = icmp ult ptr %.1.lcssa, %storemerge.lcssa
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  %.1.lcssa.lcssa = phi ptr [ %.1.lcssa, %13 ]
  ret ptr %.1.lcssa.lcssa

16:                                               ; preds = %13
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1.lcssa, ptr noundef nonnull %storemerge.lcssa)
  %17 = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 8
  br label %6, !llvm.loop !95
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store i8 %2, ptr %4, align 1
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  br label %21

7:                                                ; preds = %3
  %storemerge6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not7 = icmp eq ptr %storemerge6, %1
  br i1 %.not7, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %7
  br label %8

8:                                                ; preds = %.lr.ph, %20
  %storemerge8 = phi ptr [ %storemerge6, %.lr.ph ], [ %storemerge, %20 ]
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull %storemerge8, ptr noundef %0)
  br i1 %9, label %10, label %16

10:                                               ; preds = %8
  %11 = load double, ptr %storemerge8, align 8
  %12 = getelementptr inbounds nuw i8, ptr %storemerge8, i64 8
  %13 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %14 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %storemerge8)
  %15 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %13, ptr noundef %14, ptr noundef nonnull %12)
  store double %11, ptr %0, align 8
  br label %19

16:                                               ; preds = %8
  %17 = load i8, ptr %4, align 1
  %18 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %17)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %storemerge8, i8 %18)
  br label %19

19:                                               ; preds = %16, %10
  br label %20

20:                                               ; preds = %19
  %storemerge = getelementptr inbounds nuw i8, ptr %storemerge8, i64 8
  %.not = icmp eq ptr %storemerge, %1
  br i1 %.not, label %..loopexit_crit_edge, label %8, !llvm.loop !96

..loopexit_crit_edge:                             ; preds = %20
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %7
  br label %21

21:                                               ; preds = %.loopexit, %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %.not2 = icmp eq ptr %0, %1
  br i1 %.not2, label %8, label %.lr.ph

.lr.ph:                                           ; preds = %3
  br label %4

4:                                                ; preds = %.lr.ph, %6
  %storemerge3 = phi ptr [ %0, %.lr.ph ], [ %7, %6 ]
  %5 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %2)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %storemerge3, i8 %5)
  br label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %storemerge3, i64 8
  %.not = icmp eq ptr %7, %1
  br i1 %.not, label %._crit_edge, label %4, !llvm.loop !97

._crit_edge:                                      ; preds = %6
  br label %8

8:                                                ; preds = %._crit_edge, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %0, i8 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", align 1
  %4 = alloca double, align 8
  store i8 %1, ptr %3, align 1
  %5 = load double, ptr %0, align 8
  store double %5, ptr %4, align 8
  %storemerge3 = getelementptr inbounds i8, ptr %0, i64 -8
  %6 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %storemerge3)
  br i1 %6, label %.lr.ph, label %10

.lr.ph:                                           ; preds = %2
  br label %7

7:                                                ; preds = %.lr.ph, %7
  %storemerge5 = phi ptr [ %storemerge3, %.lr.ph ], [ %storemerge, %7 ]
  %.04 = phi ptr [ %0, %.lr.ph ], [ %storemerge5, %7 ]
  %8 = load double, ptr %storemerge5, align 8
  store double %8, ptr %.04, align 8
  %storemerge = getelementptr inbounds i8, ptr %storemerge5, i64 -8
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %storemerge)
  br i1 %9, label %7, label %._crit_edge, !llvm.loop !98

._crit_edge:                                      ; preds = %7
  %split = phi ptr [ %storemerge5, %7 ]
  br label %10

10:                                               ; preds = %._crit_edge, %2
  %.0.lcssa = phi ptr [ %split, %._crit_edge ], [ %0, %2 ]
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
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 128
  br i1 %8, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %9

9:                                                ; preds = %.lr.ph, %12
  %.07 = phi i64 [ %2, %.lr.ph ], [ %13, %12 ]
  %.046 = phi ptr [ %1, %.lr.ph ], [ %14, %12 ]
  %10 = icmp eq i64 %.07, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  %.04.lcssa5 = phi ptr [ %.046, %9 ]
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %.04.lcssa5, ptr noundef %.04.lcssa5, i8 undef)
  br label %18

12:                                               ; preds = %9
  %13 = add nsw i64 %.07, -1
  %14 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(ptr noundef %0, ptr noundef %.046, i8 undef)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %14, ptr noundef %.046, i64 noundef %13, i8 undef)
  %15 = ptrtoint ptr %14 to i64
  %16 = sub i64 %15, %6
  %17 = icmp sgt i64 %16, 128
  br i1 %17, label %9, label %..loopexit_crit_edge, !llvm.loop !99

..loopexit_crit_edge:                             ; preds = %12
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %18

18:                                               ; preds = %.loopexit, %11
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
  %6 = icmp ult ptr %1, %2
  br i1 %6, label %.lr.ph, label %14

.lr.ph:                                           ; preds = %4
  br label %7

7:                                                ; preds = %.lr.ph, %11
  %storemerge6 = phi ptr [ %1, %.lr.ph ], [ %12, %11 ]
  %8 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %storemerge6, ptr noundef %0)
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %storemerge6, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %10

10:                                               ; preds = %9, %7
  br label %11

11:                                               ; preds = %10
  %12 = getelementptr inbounds nuw i8, ptr %storemerge6, i64 8
  %13 = icmp ult ptr %12, %2
  br i1 %13, label %7, label %._crit_edge, !llvm.loop !100

._crit_edge:                                      ; preds = %11
  br label %14

14:                                               ; preds = %._crit_edge, %4
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 8
  br i1 %7, label %.lr.ph, label %13

.lr.ph:                                           ; preds = %3
  br label %8

8:                                                ; preds = %.lr.ph, %8
  %.04 = phi ptr [ %1, %.lr.ph ], [ %9, %8 ]
  %9 = getelementptr inbounds i8, ptr %.04, i64 -8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %10 = ptrtoint ptr %9 to i64
  %11 = sub i64 %10, %5
  %12 = icmp sgt i64 %11, 8
  br i1 %12, label %8, label %._crit_edge, !llvm.loop !101

._crit_edge:                                      ; preds = %8
  br label %13

13:                                               ; preds = %._crit_edge, %3
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
  br label %19

10:                                               ; preds = %3
  %11 = add nsw i64 %7, -2
  %12 = sdiv i64 %11, 2
  br label %13

13:                                               ; preds = %13, %10
  %storemerge = phi i64 [ %12, %10 ], [ %17, %13 ]
  %14 = getelementptr inbounds [8 x i8], ptr %0, i64 %storemerge
  %15 = load double, ptr %14, align 8
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %0, i64 noundef %storemerge, i64 noundef %7, double noundef %15, i8 undef)
  %16 = icmp eq i64 %storemerge, 0
  %17 = add nsw i64 %storemerge, -1
  br i1 %16, label %18, label %13, !llvm.loop !102

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18, %9
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
  %8 = add nsw i64 %2, -1
  %9 = sdiv i64 %8, 2
  %10 = icmp slt i64 %1, %9
  br i1 %10, label %.lr.ph, label %25

.lr.ph:                                           ; preds = %5
  br label %11

11:                                               ; preds = %.lr.ph, %20
  %.016 = phi i64 [ %1, %.lr.ph ], [ %.1, %20 ]
  %.01315 = phi i64 [ %1, %.lr.ph ], [ %.1, %20 ]
  %12 = shl i64 %.016, 1
  %13 = add i64 %12, 2
  %14 = getelementptr inbounds [8 x i8], ptr %0, i64 %13
  %15 = getelementptr [8 x i8], ptr %0, i64 %12
  %16 = getelementptr i8, ptr %15, i64 8
  %17 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %14, ptr noundef %16)
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = add nsw i64 %13, -1
  br label %20

20:                                               ; preds = %18, %11
  %.1 = phi i64 [ %19, %18 ], [ %13, %11 ]
  %21 = getelementptr inbounds [8 x i8], ptr %0, i64 %.1
  %22 = load double, ptr %21, align 8
  %23 = getelementptr inbounds [8 x i8], ptr %0, i64 %.01315
  store double %22, ptr %23, align 8
  %24 = icmp slt i64 %.1, %9
  br i1 %24, label %11, label %._crit_edge, !llvm.loop !103

._crit_edge:                                      ; preds = %20
  %split = phi i64 [ %.1, %20 ]
  %split17 = phi i64 [ %.1, %20 ]
  br label %25

25:                                               ; preds = %._crit_edge, %5
  %.013.lcssa = phi i64 [ %split, %._crit_edge ], [ %1, %5 ]
  %.0.lcssa = phi i64 [ %split17, %._crit_edge ], [ %1, %5 ]
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
  %38 = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa
  store double %37, ptr %38, align 8
  %39 = add nsw i64 %34, -1
  br label %40

40:                                               ; preds = %32, %28, %25
  %.114 = phi i64 [ %39, %32 ], [ %.013.lcssa, %28 ], [ %.013.lcssa, %25 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(ptr noundef nonnull align 1 dereferenceable(1) %7, i8 undef)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_(ptr noundef %0, i64 noundef %.114, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %7)
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

6:                                                ; preds = %16, %4
  %.09 = phi ptr [ %1, %4 ], [ %storemerge.lcssa, %16 ]
  %.0 = phi ptr [ %0, %4 ], [ %17, %16 ]
  br label %7

7:                                                ; preds = %7, %6
  %.1 = phi ptr [ %.0, %6 ], [ %9, %7 ]
  %8 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.1, ptr noundef %2)
  %9 = getelementptr inbounds nuw i8, ptr %.1, i64 8
  br i1 %8, label %7, label %10, !llvm.loop !105

10:                                               ; preds = %7
  %.1.lcssa = phi ptr [ %.1, %7 ]
  br label %11

11:                                               ; preds = %11, %10
  %.pn = phi ptr [ %.09, %10 ], [ %storemerge, %11 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -8
  %12 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef nonnull %storemerge)
  br i1 %12, label %11, label %13, !llvm.loop !106

13:                                               ; preds = %11
  %storemerge.lcssa = phi ptr [ %storemerge, %11 ]
  %14 = icmp ult ptr %.1.lcssa, %storemerge.lcssa
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  %.1.lcssa.lcssa = phi ptr [ %.1.lcssa, %13 ]
  ret ptr %.1.lcssa.lcssa

16:                                               ; preds = %13
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %.1.lcssa, ptr noundef nonnull %storemerge.lcssa)
  %17 = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 8
  br label %6, !llvm.loop !107
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store i8 %2, ptr %4, align 1
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  br label %20

7:                                                ; preds = %3
  %storemerge6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not7 = icmp eq ptr %storemerge6, %1
  br i1 %.not7, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %7
  br label %8

8:                                                ; preds = %.lr.ph, %19
  %storemerge8 = phi ptr [ %storemerge6, %.lr.ph ], [ %storemerge, %19 ]
  %9 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull %storemerge8, ptr noundef %0)
  br i1 %9, label %10, label %16

10:                                               ; preds = %8
  %11 = load double, ptr %storemerge8, align 8
  %12 = getelementptr inbounds nuw i8, ptr %storemerge8, i64 8
  %13 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %14 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef nonnull %storemerge8)
  %15 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %13, ptr noundef %14, ptr noundef nonnull %12)
  store double %11, ptr %0, align 8
  br label %18

16:                                               ; preds = %8
  %17 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 undef)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %storemerge8, i8 undef)
  br label %18

18:                                               ; preds = %16, %10
  br label %19

19:                                               ; preds = %18
  %storemerge = getelementptr inbounds nuw i8, ptr %storemerge8, i64 8
  %.not = icmp eq ptr %storemerge, %1
  br i1 %.not, label %..loopexit_crit_edge, label %8, !llvm.loop !108

..loopexit_crit_edge:                             ; preds = %19
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %7
  br label %20

20:                                               ; preds = %.loopexit, %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %.not2 = icmp eq ptr %0, %1
  br i1 %.not2, label %8, label %.lr.ph

.lr.ph:                                           ; preds = %3
  br label %4

4:                                                ; preds = %.lr.ph, %6
  %storemerge3 = phi ptr [ %0, %.lr.ph ], [ %7, %6 ]
  %5 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 undef)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %storemerge3, i8 undef)
  br label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %storemerge3, i64 8
  %.not = icmp eq ptr %7, %1
  br i1 %.not, label %._crit_edge, label %4, !llvm.loop !109

._crit_edge:                                      ; preds = %6
  br label %8

8:                                                ; preds = %._crit_edge, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %0, i8 %1) #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_less_iter", align 1
  %4 = alloca double, align 8
  store i8 %1, ptr %3, align 1
  %5 = load double, ptr %0, align 8
  store double %5, ptr %4, align 8
  %storemerge3 = getelementptr inbounds i8, ptr %0, i64 -8
  %6 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %storemerge3)
  br i1 %6, label %.lr.ph, label %10

.lr.ph:                                           ; preds = %2
  br label %7

7:                                                ; preds = %.lr.ph, %7
  %storemerge5 = phi ptr [ %storemerge3, %.lr.ph ], [ %storemerge, %7 ]
  %.04 = phi ptr [ %0, %.lr.ph ], [ %storemerge5, %7 ]
  %8 = load double, ptr %storemerge5, align 8
  store double %8, ptr %.04, align 8
  %storemerge = getelementptr inbounds i8, ptr %storemerge5, i64 -8
  %9 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %storemerge)
  br i1 %9, label %7, label %._crit_edge, !llvm.loop !110

._crit_edge:                                      ; preds = %7
  %split = phi ptr [ %storemerge5, %7 ]
  br label %10

10:                                               ; preds = %._crit_edge, %2
  %.0.lcssa = phi ptr [ %split, %._crit_edge ], [ %0, %2 ]
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
