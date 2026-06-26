; ModuleID = 'results\paper_full\Adobe-C++_functionobjects\Adobe-C++_functionobjects.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Adobe-C++/functionobjects.cpp"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.one_result = type { double, ptr }
%struct.less_than_functor = type { i8 }
%struct.inline_less_than_functor = type { i8 }
%"struct.std::less" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_comp_iter" = type { ptr }
%"struct.__gnu_cxx::__ops::_Iter_comp_iter.0" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_comp_iter.3" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }
%"struct.std::random_access_iterator_tag" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_comp_val" = type { ptr }
%"struct.__gnu_cxx::__ops::_Val_comp_iter" = type { ptr }
%"struct.__gnu_cxx::__ops::_Iter_comp_val.1" = type { i8 }
%"struct.__gnu_cxx::__ops::_Val_comp_iter.2" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_comp_val.4" = type { i8 }
%"struct.__gnu_cxx::__ops::_Val_comp_iter.5" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_comp_val.7" = type { i8 }
%"struct.__gnu_cxx::__ops::_Val_comp_iter.8" = type { i8 }
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
  %7 = load i32, ptr @current_test, align 4
  %8 = icmp sge i32 %7, %.pre
  %or.cond = select i1 %6, i1 true, i1 %8
  br i1 %or.cond, label %9, label %19

9:                                                ; preds = %2
  %10 = add nsw i32 %.pre, 10
  store i32 %10, ptr @allocated_results, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 16
  %13 = call ptr @realloc(ptr noundef %5, i64 noundef %12) #13
  store ptr %13, ptr @results, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i32, ptr @allocated_results, align 4
  %17 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str, i32 noundef %16)
  call void @exit(i32 noundef -1) #14
  unreachable

18:                                               ; preds = %9
  %.pre1 = load i32, ptr @current_test, align 4
  br label %19

19:                                               ; preds = %2, %18
  %20 = phi i32 [ %.pre1, %18 ], [ %7, %2 ]
  %21 = phi ptr [ %13, %18 ], [ %5, %2 ]
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds %struct.one_result, ptr %21, i64 %22
  store double %0, ptr %23, align 8
  %24 = load ptr, ptr @results, align 8
  %25 = getelementptr inbounds %struct.one_result, ptr %24, i64 %22
  %26 = getelementptr inbounds nuw %struct.one_result, ptr %25, i32 0, i32 1
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
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store i32 %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  store i32 %3, ptr %9, align 4
  store i32 %4, ptr %10, align 4
  %17 = sitofp i32 %1 to double
  %18 = sitofp i32 %2 to double
  %19 = fmul double %17, %18
  %20 = fdiv double %19, 1.000000e+06
  store double %20, ptr %12, align 8
  store double 0.000000e+00, ptr %13, align 8
  store double 0.000000e+00, ptr %14, align 8
  store i32 12, ptr %15, align 4
  store i32 0, ptr %11, align 4
  br label %21

21:                                               ; preds = %36, %5
  %22 = phi i32 [ %37, %36 ], [ 12, %5 ]
  %23 = phi i32 [ %38, %36 ], [ 0, %5 ]
  %24 = load i32, ptr @current_test, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load ptr, ptr @results, align 8
  %28 = sext i32 %23 to i64
  %29 = getelementptr inbounds %struct.one_result, ptr %27, i64 %28
  %30 = getelementptr inbounds nuw %struct.one_result, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8
  %32 = call i64 @strlen(ptr noundef %31) #15
  %33 = trunc i64 %32 to i32
  store i32 %33, ptr %16, align 4
  %34 = icmp sgt i32 %33, %22
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i32 %33, ptr %15, align 4
  br label %36

36:                                               ; preds = %35, %26
  %37 = phi i32 [ %33, %35 ], [ %22, %26 ]
  %38 = add nsw i32 %23, 1
  store i32 %38, ptr %11, align 4
  br label %21, !llvm.loop !7

39:                                               ; preds = %21
  %40 = sub nsw i32 %22, 12
  %41 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.1, i32 noundef %40, ptr noundef @.str.2)
  %42 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.3, i32 noundef %22, ptr noundef @.str.2)
  store i32 0, ptr %11, align 4
  br label %43

43:                                               ; preds = %47, %39
  %44 = phi i32 [ %66, %47 ], [ 0, %39 ]
  %45 = load i32, ptr @current_test, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %43
  %48 = sext i32 %22 to i64
  %49 = load ptr, ptr @results, align 8
  %50 = sext i32 %44 to i64
  %51 = getelementptr inbounds %struct.one_result, ptr %49, i64 %50
  %52 = getelementptr inbounds nuw %struct.one_result, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 8
  %54 = call i64 @strlen(ptr noundef %53) #15
  %55 = sub i64 %48, %54
  %56 = trunc i64 %55 to i32
  %57 = load ptr, ptr @results, align 8
  %58 = getelementptr inbounds %struct.one_result, ptr %57, i64 %50
  %59 = getelementptr inbounds nuw %struct.one_result, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %59, align 8
  %61 = load double, ptr %58, align 8
  %62 = fdiv double %20, %61
  %63 = load double, ptr %57, align 8
  %64 = fdiv double %61, %63
  %65 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.4, i32 noundef %44, i32 noundef %56, ptr noundef @.str.5, ptr noundef %60, double noundef %61, double noundef %62, double noundef %64)
  %66 = add nsw i32 %44, 1
  store i32 %66, ptr %11, align 4
  br label %43, !llvm.loop !9

67:                                               ; preds = %43
  store i32 0, ptr %11, align 4
  br label %68

68:                                               ; preds = %72, %67
  %69 = phi double [ %77, %72 ], [ 0.000000e+00, %67 ]
  %70 = phi i32 [ %78, %72 ], [ 0, %67 ]
  %71 = icmp slt i32 %70, %45
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load ptr, ptr @results, align 8
  %74 = sext i32 %70 to i64
  %75 = getelementptr inbounds %struct.one_result, ptr %73, i64 %74
  %76 = load double, ptr %75, align 8
  %77 = fadd double %69, %76
  store double %77, ptr %13, align 8
  %78 = add nsw i32 %70, 1
  store i32 %78, ptr %11, align 4
  br label %68, !llvm.loop !10

79:                                               ; preds = %68
  %80 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.6, ptr noundef %0, double noundef %69)
  %81 = load i32, ptr @current_test, align 4
  %82 = icmp sgt i32 %81, 1
  %83 = icmp ne i32 %4, 0
  %or.cond = and i1 %82, %83
  br i1 %or.cond, label %84, label %106

84:                                               ; preds = %79
  store i32 1, ptr %11, align 4
  br label %85

85:                                               ; preds = %90, %84
  %86 = phi double [ %98, %90 ], [ 0.000000e+00, %84 ]
  %87 = phi i32 [ %.pre, %90 ], [ %81, %84 ]
  %88 = phi i32 [ %99, %90 ], [ 1, %84 ]
  %89 = icmp slt i32 %88, %87
  br i1 %89, label %90, label %100

90:                                               ; preds = %85
  %91 = load ptr, ptr @results, align 8
  %92 = sext i32 %88 to i64
  %93 = getelementptr inbounds %struct.one_result, ptr %91, i64 %92
  %94 = load double, ptr %93, align 8
  %95 = load double, ptr %91, align 8
  %96 = fdiv double %94, %95
  %97 = call double @log(double noundef %96) #15
  %98 = fadd double %86, %97
  store double %98, ptr %14, align 8
  %99 = add nsw i32 %88, 1
  store i32 %99, ptr %11, align 4
  %.pre = load i32, ptr @current_test, align 4
  br label %85, !llvm.loop !11

100:                                              ; preds = %85
  %101 = sub nsw i32 %87, 1
  %102 = sitofp i32 %101 to double
  %103 = fdiv double %86, %102
  %104 = call double @exp(double noundef %103) #15
  %105 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.7, ptr noundef %0, double noundef %104)
  br label %106

106:                                              ; preds = %100, %79
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
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %24, %2
  %10 = phi i32 [ %25, %24 ], [ 12, %2 ]
  %11 = phi i32 [ %26, %24 ], [ 0, %2 ]
  %12 = load i32, ptr @current_test, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %9
  %15 = load ptr, ptr @results, align 8
  %16 = sext i32 %11 to i64
  %17 = getelementptr inbounds %struct.one_result, ptr %15, i64 %16
  %18 = getelementptr inbounds nuw %struct.one_result, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = call i64 @strlen(ptr noundef %19) #15
  %21 = trunc i64 %20 to i32
  store i32 %21, ptr %8, align 4
  %22 = icmp sgt i32 %21, %10
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store i32 %21, ptr %7, align 4
  br label %24

24:                                               ; preds = %23, %14
  %25 = phi i32 [ %21, %23 ], [ %10, %14 ]
  %26 = add nsw i32 %11, 1
  store i32 %26, ptr %5, align 4
  br label %9, !llvm.loop !12

27:                                               ; preds = %9
  %28 = sub nsw i32 %10, 12
  %29 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.8, i32 noundef %28, ptr noundef @.str.2)
  %30 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.9, i32 noundef %10, ptr noundef @.str.2)
  store i32 0, ptr %5, align 4
  br label %31

31:                                               ; preds = %35, %27
  %32 = phi i32 [ %51, %35 ], [ 0, %27 ]
  %33 = load i32, ptr @current_test, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = sext i32 %10 to i64
  %37 = load ptr, ptr @results, align 8
  %38 = sext i32 %32 to i64
  %39 = getelementptr inbounds %struct.one_result, ptr %37, i64 %38
  %40 = getelementptr inbounds nuw %struct.one_result, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8
  %42 = call i64 @strlen(ptr noundef %41) #15
  %43 = sub i64 %36, %42
  %44 = trunc i64 %43 to i32
  %45 = load ptr, ptr @results, align 8
  %46 = getelementptr inbounds %struct.one_result, ptr %45, i64 %38
  %47 = getelementptr inbounds nuw %struct.one_result, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 8
  %49 = load double, ptr %46, align 8
  %50 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.10, i32 noundef %32, i32 noundef %44, ptr noundef @.str.5, ptr noundef %48, double noundef %49)
  %51 = add nsw i32 %32, 1
  store i32 %51, ptr %5, align 4
  br label %31, !llvm.loop !13

52:                                               ; preds = %31
  store i32 0, ptr %5, align 4
  br label %53

53:                                               ; preds = %57, %52
  %54 = phi double [ %62, %57 ], [ 0.000000e+00, %52 ]
  %55 = phi i32 [ %63, %57 ], [ 0, %52 ]
  %56 = icmp slt i32 %55, %33
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load ptr, ptr @results, align 8
  %59 = sext i32 %55 to i64
  %60 = getelementptr inbounds %struct.one_result, ptr %58, i64 %59
  %61 = load double, ptr %60, align 8
  %62 = fadd double %54, %61
  store double %62, ptr %6, align 8
  %63 = add nsw i32 %55, 1
  store i32 %63, ptr %5, align 4
  br label %53, !llvm.loop !14

64:                                               ; preds = %53
  %65 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.6, ptr noundef %1, double noundef %54)
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
  br label %14

10:                                               ; preds = %2
  %11 = fcmp ogt double %6, %7
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  store i32 1, ptr %3, align 4
  br label %14

13:                                               ; preds = %10
  store i32 0, ptr %3, align 4
  br label %14

14:                                               ; preds = %13, %12, %9
  %15 = phi i32 [ 0, %13 ], [ 1, %12 ], [ -1, %9 ]
  ret i32 %15
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef zeroext i1 @_Z19less_than_function2dd(double noundef %0, double noundef %1) #5 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, ptr %3, align 8
  store double %1, ptr %4, align 8
  %5 = fcmp olt double %0, %1
  %6 = zext i1 %5 to i64
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #5 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load double, ptr %1, align 8
  %8 = load double, ptr %2, align 8
  %9 = fcmp olt double %7, %8
  %10 = zext i1 %9 to i64
  ret i1 %9
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z18quicksort_functionPdS_PFbddE(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca double, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca double, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = icmp sgt i64 %14, 1
  br i1 %15, label %16, label %47

16:                                               ; preds = %3
  %17 = load double, ptr %0, align 8
  store double %17, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  br label %18

18:                                               ; preds = %36, %16
  %19 = phi ptr [ %40, %36 ], [ %0, %16 ]
  %20 = phi ptr [ %23, %36 ], [ %1, %16 ]
  br label %21

21:                                               ; preds = %21, %18
  %22 = phi ptr [ %20, %18 ], [ %23, %21 ]
  %23 = getelementptr inbounds double, ptr %22, i32 -1
  store ptr %23, ptr %9, align 8
  %24 = load double, ptr %23, align 8
  %25 = call noundef zeroext i1 %2(double noundef %17, double noundef %24)
  br i1 %25, label %21, label %26, !llvm.loop !15

26:                                               ; preds = %21
  %27 = icmp ult ptr %19, %23
  br i1 %27, label %28, label %41

28:                                               ; preds = %26, %32
  %29 = phi ptr [ %33, %32 ], [ %19, %26 ]
  %30 = load double, ptr %29, align 8
  %31 = call noundef zeroext i1 %2(double noundef %30, double noundef %17)
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = getelementptr inbounds nuw double, ptr %29, i32 1
  store ptr %33, ptr %8, align 8
  br label %28, !llvm.loop !16

34:                                               ; preds = %28
  %35 = icmp ult ptr %29, %23
  br i1 %35, label %36, label %41

36:                                               ; preds = %34
  %37 = load double, ptr %23, align 8
  store double %37, ptr %10, align 8
  %38 = load double, ptr %29, align 8
  store double %38, ptr %23, align 8
  %39 = load double, ptr %10, align 8
  %40 = load ptr, ptr %8, align 8
  store double %39, ptr %40, align 8
  br label %18, !llvm.loop !17

41:                                               ; preds = %34, %26
  %42 = getelementptr inbounds double, ptr %23, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %42, ptr noundef %2)
  %43 = load ptr, ptr %9, align 8
  %44 = getelementptr inbounds double, ptr %43, i64 1
  %45 = load ptr, ptr %5, align 8
  %46 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %44, ptr noundef %45, ptr noundef %46)
  br label %47

47:                                               ; preds = %41, %3
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
  %10 = alloca double, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = icmp sgt i64 %14, 1
  br i1 %15, label %16, label %47

16:                                               ; preds = %3
  %17 = load double, ptr %0, align 8
  store double %17, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  br label %18

18:                                               ; preds = %36, %16
  %19 = phi ptr [ %40, %36 ], [ %0, %16 ]
  %20 = phi ptr [ %23, %36 ], [ %1, %16 ]
  br label %21

21:                                               ; preds = %21, %18
  %22 = phi ptr [ %20, %18 ], [ %23, %21 ]
  %23 = getelementptr inbounds double, ptr %22, i32 -1
  store ptr %23, ptr %9, align 8
  %24 = load double, ptr %23, align 8
  %25 = call noundef zeroext i1 %2(double noundef %17, double noundef %24)
  br i1 %25, label %21, label %26, !llvm.loop !18

26:                                               ; preds = %21
  %27 = icmp ult ptr %19, %23
  br i1 %27, label %28, label %41

28:                                               ; preds = %26, %32
  %29 = phi ptr [ %33, %32 ], [ %19, %26 ]
  %30 = load double, ptr %29, align 8
  %31 = call noundef zeroext i1 %2(double noundef %30, double noundef %17)
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = getelementptr inbounds nuw double, ptr %29, i32 1
  store ptr %33, ptr %8, align 8
  br label %28, !llvm.loop !19

34:                                               ; preds = %28
  %35 = icmp ult ptr %29, %23
  br i1 %35, label %36, label %41

36:                                               ; preds = %34
  %37 = load double, ptr %23, align 8
  store double %37, ptr %10, align 8
  %38 = load double, ptr %29, align 8
  store double %38, ptr %23, align 8
  %39 = load double, ptr %10, align 8
  %40 = load ptr, ptr %8, align 8
  store double %39, ptr %40, align 8
  br label %18, !llvm.loop !20

41:                                               ; preds = %34, %26
  %42 = getelementptr inbounds double, ptr %23, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %42, ptr noundef %2)
  %43 = load ptr, ptr %9, align 8
  %44 = getelementptr inbounds double, ptr %43, i64 1
  %45 = load ptr, ptr %5, align 8
  %46 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %44, ptr noundef %45, ptr noundef %46)
  br label %47

47:                                               ; preds = %41, %3
  ret void
}

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) #6 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca %struct.less_than_functor, align 1
  %13 = alloca %struct.less_than_functor, align 1
  %14 = alloca %struct.inline_less_than_functor, align 1
  %15 = alloca %struct.inline_less_than_functor, align 1
  %16 = alloca %"struct.std::less", align 1
  %17 = alloca %"struct.std::less", align 1
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  %18 = icmp slt i32 1, %0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = getelementptr inbounds ptr, ptr %1, i64 1
  %21 = load ptr, ptr %20, align 8
  %22 = call i32 @atoi(ptr noundef %21)
  br label %23

23:                                               ; preds = %2, %19
  %24 = phi i32 [ %22, %19 ], [ 300, %2 ]
  store i32 %24, ptr %7, align 4
  %25 = icmp slt i32 2, %0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = getelementptr inbounds ptr, ptr %1, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = call i32 @atoi(ptr noundef %28)
  br label %30

30:                                               ; preds = %23, %26
  %31 = phi i32 [ %29, %26 ], [ 10000, %23 ]
  store i32 %31, ptr %8, align 4
  %32 = add nsw i32 %31, 123
  call void @srand(i32 noundef %32)
  %33 = sext i32 %31 to i64
  %34 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %33, i64 8)
  %35 = extractvalue { i64, i1 } %34, 1
  %36 = extractvalue { i64, i1 } %34, 0
  %37 = select i1 %35, i64 -1, i64 %36
  %38 = call noalias noundef nonnull ptr @_Znay(i64 noundef %37) #16
  store ptr %38, ptr %9, align 8
  store i32 0, ptr %10, align 4
  br label %39

39:                                               ; preds = %42, %30
  %40 = phi i32 [ %47, %42 ], [ 0, %30 ]
  %41 = icmp slt i32 %40, %31
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = call i32 @rand()
  %44 = sitofp i32 %43 to double
  %45 = sext i32 %40 to i64
  %46 = getelementptr inbounds double, ptr %38, i64 %45
  store double %44, ptr %46, align 8
  %47 = add nsw i32 %40, 1
  store i32 %47, ptr %10, align 4
  br label %39, !llvm.loop !21

48:                                               ; preds = %39
  %49 = call noalias noundef nonnull ptr @_Znay(i64 noundef %37) #16
  store ptr %49, ptr %11, align 8
  store i32 0, ptr %6, align 4
  br label %50

50:                                               ; preds = %55, %48
  %51 = phi i32 [ %60, %55 ], [ %31, %48 ]
  %52 = phi ptr [ %59, %55 ], [ %49, %48 ]
  %53 = phi i32 [ %64, %55 ], [ 0, %48 ]
  %54 = icmp slt i32 %53, %24
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = sext i32 %51 to i64
  %57 = getelementptr inbounds double, ptr %38, i64 %56
  %58 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %38, ptr noundef %57, ptr noundef %52)
  %59 = load ptr, ptr %11, align 8
  %60 = load i32, ptr %8, align 4
  %61 = sext i32 %60 to i64
  call void @qsort(ptr noundef %59, i64 noundef %61, i64 noundef 8, ptr noundef @_Z19less_than_function1PKvS0_)
  %62 = getelementptr inbounds double, ptr %59, i64 %61
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %59, ptr noundef %62)
  %63 = load i32, ptr %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, ptr %6, align 4
  br label %50, !llvm.loop !22

65:                                               ; preds = %50
  store i32 0, ptr %6, align 4
  br label %66

66:                                               ; preds = %71, %65
  %67 = phi i32 [ %76, %71 ], [ %51, %65 ]
  %68 = phi ptr [ %75, %71 ], [ %52, %65 ]
  %69 = phi i32 [ %80, %71 ], [ 0, %65 ]
  %70 = icmp slt i32 %69, %24
  br i1 %70, label %71, label %81

71:                                               ; preds = %66
  %72 = sext i32 %67 to i64
  %73 = getelementptr inbounds double, ptr %38, i64 %72
  %74 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %38, ptr noundef %73, ptr noundef %68)
  %75 = load ptr, ptr %11, align 8
  %76 = load i32, ptr %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds double, ptr %75, i64 %77
  call void @_Z18quicksort_functionPdS_PFbddE(ptr noundef %75, ptr noundef %78, ptr noundef @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %75, ptr noundef %78)
  %79 = load i32, ptr %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, ptr %6, align 4
  br label %66, !llvm.loop !23

81:                                               ; preds = %66
  store i32 0, ptr %6, align 4
  br label %82

82:                                               ; preds = %87, %81
  %83 = phi i32 [ %92, %87 ], [ %67, %81 ]
  %84 = phi ptr [ %91, %87 ], [ %68, %81 ]
  %85 = phi i32 [ %96, %87 ], [ 0, %81 ]
  %86 = icmp slt i32 %85, %24
  br i1 %86, label %87, label %97

87:                                               ; preds = %82
  %88 = sext i32 %83 to i64
  %89 = getelementptr inbounds double, ptr %38, i64 %88
  %90 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %38, ptr noundef %89, ptr noundef %84)
  %91 = load ptr, ptr %11, align 8
  %92 = load i32, ptr %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds double, ptr %91, i64 %93
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %91, ptr noundef %94, ptr noundef @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %91, ptr noundef %94)
  %95 = load i32, ptr %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, ptr %6, align 4
  br label %82, !llvm.loop !24

97:                                               ; preds = %82
  store i32 0, ptr %6, align 4
  br label %98

98:                                               ; preds = %103, %97
  %99 = phi i32 [ %108, %103 ], [ %83, %97 ]
  %100 = phi ptr [ %107, %103 ], [ %84, %97 ]
  %101 = phi i32 [ %112, %103 ], [ 0, %97 ]
  %102 = icmp slt i32 %101, %24
  br i1 %102, label %103, label %113

103:                                              ; preds = %98
  %104 = sext i32 %99 to i64
  %105 = getelementptr inbounds double, ptr %38, i64 %104
  %106 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %38, ptr noundef %105, ptr noundef %100)
  %107 = load ptr, ptr %11, align 8
  %108 = load i32, ptr %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds double, ptr %107, i64 %109
  call void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef %107, ptr noundef %110)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %107, ptr noundef %110)
  %111 = load i32, ptr %6, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, ptr %6, align 4
  br label %98, !llvm.loop !25

113:                                              ; preds = %98
  store i32 0, ptr %6, align 4
  br label %114

114:                                              ; preds = %119, %113
  %115 = phi i32 [ %124, %119 ], [ %99, %113 ]
  %116 = phi ptr [ %123, %119 ], [ %100, %113 ]
  %117 = phi i32 [ %128, %119 ], [ 0, %113 ]
  %118 = icmp slt i32 %117, %24
  br i1 %118, label %119, label %129

119:                                              ; preds = %114
  %120 = sext i32 %115 to i64
  %121 = getelementptr inbounds double, ptr %38, i64 %120
  %122 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %38, ptr noundef %121, ptr noundef %116)
  %123 = load ptr, ptr %11, align 8
  %124 = load i32, ptr %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds double, ptr %123, i64 %125
  call void @_ZSt4sortIPdPFbddEEvT_S3_T0_(ptr noundef %123, ptr noundef %126, ptr noundef @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %123, ptr noundef %126)
  %127 = load i32, ptr %6, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, ptr %6, align 4
  br label %114, !llvm.loop !26

129:                                              ; preds = %114
  store i32 0, ptr %6, align 4
  br label %130

130:                                              ; preds = %135, %129
  %131 = phi i32 [ %140, %135 ], [ %115, %129 ]
  %132 = phi ptr [ %139, %135 ], [ %116, %129 ]
  %133 = phi i32 [ %145, %135 ], [ 0, %129 ]
  %134 = icmp slt i32 %133, %24
  br i1 %134, label %135, label %146

135:                                              ; preds = %130
  %136 = sext i32 %131 to i64
  %137 = getelementptr inbounds double, ptr %38, i64 %136
  %138 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %38, ptr noundef %137, ptr noundef %132)
  %139 = load ptr, ptr %11, align 8
  %140 = load i32, ptr %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds double, ptr %139, i64 %141
  %143 = load i8, ptr %12, align 1
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %139, ptr noundef %142, i8 %143)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %139, ptr noundef %142)
  %144 = load i32, ptr %6, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, ptr %6, align 4
  br label %130, !llvm.loop !27

146:                                              ; preds = %130
  store i32 0, ptr %6, align 4
  br label %147

147:                                              ; preds = %153, %146
  %148 = phi i32 [ %158, %153 ], [ %131, %146 ]
  %149 = phi ptr [ %161, %153 ], [ %38, %146 ]
  %150 = phi ptr [ %157, %153 ], [ %132, %146 ]
  %151 = phi i32 [ %165, %153 ], [ 0, %146 ]
  %152 = icmp slt i32 %151, %24
  br i1 %152, label %153, label %166

153:                                              ; preds = %147
  %154 = sext i32 %148 to i64
  %155 = getelementptr inbounds double, ptr %150, i64 %154
  %156 = load i8, ptr %13, align 1
  call void @_ZSt4sortIPd17less_than_functorEvT_S2_T0_(ptr noundef %150, ptr noundef %155, i8 %156)
  %157 = load ptr, ptr %11, align 8
  %158 = load i32, ptr %8, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds double, ptr %157, i64 %159
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %157, ptr noundef %160)
  %161 = load ptr, ptr %9, align 8
  %162 = getelementptr inbounds double, ptr %161, i64 %159
  %163 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %161, ptr noundef %162, ptr noundef %157)
  %164 = load i32, ptr %6, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, ptr %6, align 4
  br label %147, !llvm.loop !28

166:                                              ; preds = %147
  store i32 0, ptr %6, align 4
  br label %167

167:                                              ; preds = %172, %166
  %168 = phi i32 [ %177, %172 ], [ %148, %166 ]
  %169 = phi ptr [ %176, %172 ], [ %150, %166 ]
  %170 = phi i32 [ %182, %172 ], [ 0, %166 ]
  %171 = icmp slt i32 %170, %24
  br i1 %171, label %172, label %183

172:                                              ; preds = %167
  %173 = sext i32 %168 to i64
  %174 = getelementptr inbounds double, ptr %149, i64 %173
  %175 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %149, ptr noundef %174, ptr noundef %169)
  %176 = load ptr, ptr %11, align 8
  %177 = load i32, ptr %8, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds double, ptr %176, i64 %178
  %180 = load i8, ptr %14, align 1
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %176, ptr noundef %179, i8 %180)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %176, ptr noundef %179)
  %181 = load i32, ptr %6, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, ptr %6, align 4
  br label %167, !llvm.loop !29

183:                                              ; preds = %167
  store i32 0, ptr %6, align 4
  br label %184

184:                                              ; preds = %189, %183
  %185 = phi i32 [ %194, %189 ], [ %168, %183 ]
  %186 = phi ptr [ %193, %189 ], [ %169, %183 ]
  %187 = phi i32 [ %199, %189 ], [ 0, %183 ]
  %188 = icmp slt i32 %187, %24
  br i1 %188, label %189, label %200

189:                                              ; preds = %184
  %190 = sext i32 %185 to i64
  %191 = getelementptr inbounds double, ptr %149, i64 %190
  %192 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %149, ptr noundef %191, ptr noundef %186)
  %193 = load ptr, ptr %11, align 8
  %194 = load i32, ptr %8, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds double, ptr %193, i64 %195
  %197 = load i8, ptr %15, align 1
  call void @_ZSt4sortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %193, ptr noundef %196, i8 %197)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %193, ptr noundef %196)
  %198 = load i32, ptr %6, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, ptr %6, align 4
  br label %184, !llvm.loop !30

200:                                              ; preds = %184
  store i32 0, ptr %6, align 4
  br label %201

201:                                              ; preds = %206, %200
  %202 = phi i32 [ %211, %206 ], [ %185, %200 ]
  %203 = phi ptr [ %210, %206 ], [ %186, %200 ]
  %204 = phi i32 [ %216, %206 ], [ 0, %200 ]
  %205 = icmp slt i32 %204, %24
  br i1 %205, label %206, label %217

206:                                              ; preds = %201
  %207 = sext i32 %202 to i64
  %208 = getelementptr inbounds double, ptr %149, i64 %207
  %209 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %149, ptr noundef %208, ptr noundef %203)
  %210 = load ptr, ptr %11, align 8
  %211 = load i32, ptr %8, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds double, ptr %210, i64 %212
  %214 = load i8, ptr %16, align 1
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %210, ptr noundef %213, i8 %214)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %210, ptr noundef %213)
  %215 = load i32, ptr %6, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, ptr %6, align 4
  br label %201, !llvm.loop !31

217:                                              ; preds = %201
  store i32 0, ptr %6, align 4
  br label %218

218:                                              ; preds = %223, %217
  %219 = phi i32 [ %228, %223 ], [ %202, %217 ]
  %220 = phi ptr [ %227, %223 ], [ %203, %217 ]
  %221 = phi i32 [ %233, %223 ], [ 0, %217 ]
  %222 = icmp slt i32 %221, %24
  br i1 %222, label %223, label %234

223:                                              ; preds = %218
  %224 = sext i32 %219 to i64
  %225 = getelementptr inbounds double, ptr %149, i64 %224
  %226 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %149, ptr noundef %225, ptr noundef %220)
  %227 = load ptr, ptr %11, align 8
  %228 = load i32, ptr %8, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds double, ptr %227, i64 %229
  %231 = load i8, ptr %17, align 1
  call void @_ZSt4sortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %227, ptr noundef %230, i8 %231)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %227, ptr noundef %230)
  %232 = load i32, ptr %6, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, ptr %6, align 4
  br label %218, !llvm.loop !32

234:                                              ; preds = %218
  store i32 0, ptr %6, align 4
  br label %235

235:                                              ; preds = %240, %234
  %236 = phi i32 [ %245, %240 ], [ %219, %234 ]
  %237 = phi ptr [ %244, %240 ], [ %220, %234 ]
  %238 = phi i32 [ %249, %240 ], [ 0, %234 ]
  %239 = icmp slt i32 %238, %24
  br i1 %239, label %240, label %250

240:                                              ; preds = %235
  %241 = sext i32 %236 to i64
  %242 = getelementptr inbounds double, ptr %149, i64 %241
  %243 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %149, ptr noundef %242, ptr noundef %237)
  %244 = load ptr, ptr %11, align 8
  %245 = load i32, ptr %8, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds double, ptr %244, i64 %246
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %244, ptr noundef %247)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %244, ptr noundef %247)
  %248 = load i32, ptr %6, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, ptr %6, align 4
  br label %235, !llvm.loop !33

250:                                              ; preds = %235
  store i32 0, ptr %6, align 4
  br label %251

251:                                              ; preds = %256, %250
  %252 = phi i32 [ %261, %256 ], [ %236, %250 ]
  %253 = phi ptr [ %260, %256 ], [ %237, %250 ]
  %254 = phi i32 [ %265, %256 ], [ 0, %250 ]
  %255 = icmp slt i32 %254, %24
  br i1 %255, label %256, label %266

256:                                              ; preds = %251
  %257 = sext i32 %252 to i64
  %258 = getelementptr inbounds double, ptr %149, i64 %257
  %259 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %149, ptr noundef %258, ptr noundef %253)
  %260 = load ptr, ptr %11, align 8
  %261 = load i32, ptr %8, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds double, ptr %260, i64 %262
  call void @_ZSt4sortIPdEvT_S1_(ptr noundef %260, ptr noundef %263)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %260, ptr noundef %263)
  %264 = load i32, ptr %6, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, ptr %6, align 4
  br label %251, !llvm.loop !34

266:                                              ; preds = %251
  %267 = icmp eq ptr %253, null
  br i1 %267, label %269, label %268

268:                                              ; preds = %266
  call void @_ZdaPv(ptr noundef %253) #17
  %.pre = load ptr, ptr %9, align 8
  br label %269

269:                                              ; preds = %268, %266
  %270 = phi ptr [ %.pre, %268 ], [ %149, %266 ]
  %271 = icmp eq ptr %270, null
  br i1 %271, label %273, label %272

272:                                              ; preds = %269
  call void @_ZdaPv(ptr noundef %270) #17
  br label %273

273:                                              ; preds = %272, %269
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
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  store ptr %0, ptr %15, align 8
  store ptr %1, ptr %16, align 8
  store ptr %2, ptr %17, align 8
  %18 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %19 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %1)
  store ptr %18, ptr %12, align 8
  store ptr %19, ptr %13, align 8
  store ptr %2, ptr %14, align 8
  store ptr %18, ptr %4, align 8
  store ptr %19, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store ptr %18, ptr %7, align 8
  store ptr %19, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  %20 = call noundef ptr @_ZSt14__copy_move_a2ILb0EPdS0_S0_ET2_T0_T1_S1_(ptr noundef %18, ptr noundef %19, ptr noundef %2)
  store ptr %14, ptr %10, align 8
  store ptr %20, ptr %11, align 8
  ret ptr %20
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
  %6 = getelementptr inbounds nuw double, ptr %0, i32 1
  store ptr %6, ptr %3, align 8
  br label %7

7:                                                ; preds = %11, %2
  %8 = phi ptr [ %0, %2 ], [ %14, %11 ]
  %9 = phi ptr [ %6, %2 ], [ %12, %11 ]
  %10 = icmp ne ptr %9, %1
  br i1 %10, label %11, label %20

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw double, ptr %9, i32 1
  store ptr %12, ptr %3, align 8
  %13 = load double, ptr %9, align 8
  %14 = getelementptr inbounds nuw double, ptr %8, i32 1
  store ptr %14, ptr %5, align 8
  %15 = load double, ptr %8, align 8
  %16 = fcmp olt double %13, %15
  br i1 %16, label %17, label %7, !llvm.loop !35

17:                                               ; preds = %11
  %18 = load i32, ptr @current_test, align 4
  %19 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.11, i32 noundef %18)
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
  %8 = alloca double, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %9 = ptrtoint ptr %1 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 8
  %13 = icmp sgt i64 %12, 1
  br i1 %13, label %14, label %44

14:                                               ; preds = %2
  %15 = load double, ptr %0, align 8
  store double %15, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  br label %16

16:                                               ; preds = %34, %14
  %17 = phi ptr [ %38, %34 ], [ %0, %14 ]
  %18 = phi ptr [ %21, %34 ], [ %1, %14 ]
  br label %19

19:                                               ; preds = %19, %16
  %20 = phi ptr [ %18, %16 ], [ %21, %19 ]
  %21 = getelementptr inbounds double, ptr %20, i32 -1
  store ptr %21, ptr %7, align 8
  %22 = load double, ptr %21, align 8
  %23 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %15, double noundef %22)
  br i1 %23, label %19, label %24, !llvm.loop !36

24:                                               ; preds = %19
  %25 = icmp ult ptr %17, %21
  br i1 %25, label %26, label %39

26:                                               ; preds = %24, %30
  %27 = phi ptr [ %31, %30 ], [ %17, %24 ]
  %28 = load double, ptr %27, align 8
  %29 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %28, double noundef %15)
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = getelementptr inbounds nuw double, ptr %27, i32 1
  store ptr %31, ptr %6, align 8
  br label %26, !llvm.loop !37

32:                                               ; preds = %26
  %33 = icmp ult ptr %27, %21
  br i1 %33, label %34, label %39

34:                                               ; preds = %32
  %35 = load double, ptr %21, align 8
  store double %35, ptr %8, align 8
  %36 = load double, ptr %27, align 8
  store double %36, ptr %21, align 8
  %37 = load double, ptr %8, align 8
  %38 = load ptr, ptr %6, align 8
  store double %37, ptr %38, align 8
  br label %16, !llvm.loop !38

39:                                               ; preds = %32, %24
  %40 = getelementptr inbounds double, ptr %21, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %40, ptr noundef @_Z19less_than_function2dd)
  %41 = load ptr, ptr %7, align 8
  %42 = getelementptr inbounds double, ptr %41, i64 1
  %43 = load ptr, ptr %4, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %42, ptr noundef %43, ptr noundef @_Z19less_than_function2dd)
  br label %44

44:                                               ; preds = %39, %2
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt4sortIPdPFbddEEvT_S3_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %8 = call i64 @_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFbddEEENS0_15_Iter_comp_iterIT_EES5_(ptr noundef %2)
  %9 = inttoptr i64 %8 to ptr
  store ptr %9, ptr %7, align 8
  call void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %8)
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
  %11 = alloca %struct.less_than_functor, align 1
  %12 = alloca %struct.less_than_functor, align 1
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %13 = ptrtoint ptr %1 to i64
  %14 = ptrtoint ptr %0 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 8
  %17 = icmp sgt i64 %16, 1
  br i1 %17, label %18, label %49

18:                                               ; preds = %3
  %19 = load double, ptr %0, align 8
  store double %19, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  br label %20

20:                                               ; preds = %36, %18
  %21 = phi ptr [ %24, %36 ], [ %1, %18 ]
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi ptr [ %21, %20 ], [ %24, %22 ]
  %24 = getelementptr inbounds double, ptr %23, i32 -1
  store ptr %24, ptr %9, align 8
  %25 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %24)
  br i1 %25, label %22, label %26, !llvm.loop !39

26:                                               ; preds = %22
  %27 = load ptr, ptr %8, align 8
  %28 = icmp ult ptr %27, %24
  br i1 %28, label %29, label %41

29:                                               ; preds = %26, %32
  %30 = phi ptr [ %33, %32 ], [ %27, %26 ]
  %31 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = getelementptr inbounds nuw double, ptr %30, i32 1
  store ptr %33, ptr %8, align 8
  br label %29, !llvm.loop !40

34:                                               ; preds = %29
  %35 = icmp ult ptr %30, %24
  br i1 %35, label %36, label %41

36:                                               ; preds = %34
  %37 = load double, ptr %24, align 8
  store double %37, ptr %10, align 8
  %38 = load double, ptr %30, align 8
  store double %38, ptr %24, align 8
  %39 = load double, ptr %10, align 8
  %40 = load ptr, ptr %8, align 8
  store double %39, ptr %40, align 8
  br label %20, !llvm.loop !41

41:                                               ; preds = %34, %26
  %42 = load ptr, ptr %5, align 8
  %43 = getelementptr inbounds double, ptr %24, i64 1
  %44 = load i8, ptr %11, align 1
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %42, ptr noundef %43, i8 %44)
  %45 = load ptr, ptr %9, align 8
  %46 = getelementptr inbounds double, ptr %45, i64 1
  %47 = load ptr, ptr %6, align 8
  %48 = load i8, ptr %12, align 1
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %46, ptr noundef %47, i8 %48)
  br label %49

49:                                               ; preds = %41, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt4sortIPd17less_than_functorEvT_S2_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %struct.less_than_functor, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %8 = alloca %struct.less_than_functor, align 1
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %9 = call i8 @_ZN9__gnu_cxx5__ops16__iter_comp_iterI17less_than_functorEENS0_15_Iter_comp_iterIT_EES4_(i8 undef)
  store i8 %9, ptr %7, align 1
  call void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %9)
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
  %11 = alloca %struct.inline_less_than_functor, align 1
  %12 = alloca %struct.inline_less_than_functor, align 1
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %13 = ptrtoint ptr %1 to i64
  %14 = ptrtoint ptr %0 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 8
  %17 = icmp sgt i64 %16, 1
  br i1 %17, label %18, label %49

18:                                               ; preds = %3
  %19 = load double, ptr %0, align 8
  store double %19, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  br label %20

20:                                               ; preds = %36, %18
  %21 = phi ptr [ %24, %36 ], [ %1, %18 ]
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi ptr [ %21, %20 ], [ %24, %22 ]
  %24 = getelementptr inbounds double, ptr %23, i32 -1
  store ptr %24, ptr %9, align 8
  %25 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %24)
  br i1 %25, label %22, label %26, !llvm.loop !42

26:                                               ; preds = %22
  %27 = load ptr, ptr %8, align 8
  %28 = icmp ult ptr %27, %24
  br i1 %28, label %29, label %41

29:                                               ; preds = %26, %32
  %30 = phi ptr [ %33, %32 ], [ %27, %26 ]
  %31 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = getelementptr inbounds nuw double, ptr %30, i32 1
  store ptr %33, ptr %8, align 8
  br label %29, !llvm.loop !43

34:                                               ; preds = %29
  %35 = icmp ult ptr %30, %24
  br i1 %35, label %36, label %41

36:                                               ; preds = %34
  %37 = load double, ptr %24, align 8
  store double %37, ptr %10, align 8
  %38 = load double, ptr %30, align 8
  store double %38, ptr %24, align 8
  %39 = load double, ptr %10, align 8
  %40 = load ptr, ptr %8, align 8
  store double %39, ptr %40, align 8
  br label %20, !llvm.loop !44

41:                                               ; preds = %34, %26
  %42 = load ptr, ptr %5, align 8
  %43 = getelementptr inbounds double, ptr %24, i64 1
  %44 = load i8, ptr %11, align 1
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %42, ptr noundef %43, i8 %44)
  %45 = load ptr, ptr %9, align 8
  %46 = getelementptr inbounds double, ptr %45, i64 1
  %47 = load ptr, ptr %6, align 8
  %48 = load i8, ptr %12, align 1
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %46, ptr noundef %47, i8 %48)
  br label %49

49:                                               ; preds = %41, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt4sortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %struct.inline_less_than_functor, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %8 = alloca %struct.inline_less_than_functor, align 1
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %9 = call i8 @_ZN9__gnu_cxx5__ops16__iter_comp_iterI24inline_less_than_functorEENS0_15_Iter_comp_iterIT_EES4_(i8 undef)
  store i8 %9, ptr %7, align 1
  call void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %9)
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
  %11 = alloca %"struct.std::less", align 1
  %12 = alloca %"struct.std::less", align 1
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %13 = ptrtoint ptr %1 to i64
  %14 = ptrtoint ptr %0 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 8
  %17 = icmp sgt i64 %16, 1
  br i1 %17, label %18, label %49

18:                                               ; preds = %3
  %19 = load double, ptr %0, align 8
  store double %19, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  br label %20

20:                                               ; preds = %36, %18
  %21 = phi ptr [ %24, %36 ], [ %1, %18 ]
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi ptr [ %21, %20 ], [ %24, %22 ]
  %24 = getelementptr inbounds double, ptr %23, i32 -1
  store ptr %24, ptr %9, align 8
  %25 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %24)
  br i1 %25, label %22, label %26, !llvm.loop !45

26:                                               ; preds = %22
  %27 = load ptr, ptr %8, align 8
  %28 = icmp ult ptr %27, %24
  br i1 %28, label %29, label %41

29:                                               ; preds = %26, %32
  %30 = phi ptr [ %33, %32 ], [ %27, %26 ]
  %31 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = getelementptr inbounds nuw double, ptr %30, i32 1
  store ptr %33, ptr %8, align 8
  br label %29, !llvm.loop !46

34:                                               ; preds = %29
  %35 = icmp ult ptr %30, %24
  br i1 %35, label %36, label %41

36:                                               ; preds = %34
  %37 = load double, ptr %24, align 8
  store double %37, ptr %10, align 8
  %38 = load double, ptr %30, align 8
  store double %38, ptr %24, align 8
  %39 = load double, ptr %10, align 8
  %40 = load ptr, ptr %8, align 8
  store double %39, ptr %40, align 8
  br label %20, !llvm.loop !47

41:                                               ; preds = %34, %26
  %42 = load ptr, ptr %5, align 8
  %43 = getelementptr inbounds double, ptr %24, i64 1
  %44 = load i8, ptr %11, align 1
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %42, ptr noundef %43, i8 %44)
  %45 = load ptr, ptr %9, align 8
  %46 = getelementptr inbounds double, ptr %45, i64 1
  %47 = load ptr, ptr %6, align 8
  %48 = load i8, ptr %12, align 1
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %46, ptr noundef %47, i8 %48)
  br label %49

49:                                               ; preds = %41, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt4sortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.std::less", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %8 = alloca %"struct.std::less", align 1
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %9 = call i8 @_ZN9__gnu_cxx5__ops16__iter_comp_iterISt4lessIdEEENS0_15_Iter_comp_iterIT_EES5_(i8 undef)
  store i8 %9, ptr %7, align 1
  call void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %9)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z9quicksortIPdEvT_S1_(ptr noundef %0, ptr noundef %1) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca double, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca double, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %9 = ptrtoint ptr %1 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 8
  %13 = icmp sgt i64 %12, 1
  br i1 %13, label %14, label %44

14:                                               ; preds = %2
  %15 = load double, ptr %0, align 8
  store double %15, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  br label %16

16:                                               ; preds = %35, %14
  %17 = phi double [ %37, %35 ], [ %15, %14 ]
  %18 = phi ptr [ %38, %35 ], [ %0, %14 ]
  %19 = phi ptr [ %22, %35 ], [ %1, %14 ]
  br label %20

20:                                               ; preds = %20, %16
  %21 = phi ptr [ %19, %16 ], [ %22, %20 ]
  %22 = getelementptr inbounds double, ptr %21, i32 -1
  store ptr %22, ptr %7, align 8
  %23 = load double, ptr %22, align 8
  %24 = fcmp olt double %15, %23
  br i1 %24, label %20, label %25, !llvm.loop !48

25:                                               ; preds = %20
  %26 = icmp ult ptr %18, %22
  br i1 %26, label %27, label %39

27:                                               ; preds = %25, %31
  %28 = phi double [ %.pre, %31 ], [ %17, %25 ]
  %29 = phi ptr [ %32, %31 ], [ %18, %25 ]
  %30 = fcmp olt double %28, %15
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = getelementptr inbounds nuw double, ptr %29, i32 1
  store ptr %32, ptr %6, align 8
  %.pre = load double, ptr %32, align 8
  br label %27, !llvm.loop !49

33:                                               ; preds = %27
  %34 = icmp ult ptr %29, %22
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  store double %23, ptr %8, align 8
  %36 = load double, ptr %29, align 8
  store double %36, ptr %22, align 8
  %37 = load double, ptr %8, align 8
  %38 = load ptr, ptr %6, align 8
  store double %37, ptr %38, align 8
  br label %16, !llvm.loop !50

39:                                               ; preds = %33, %25
  %40 = getelementptr inbounds double, ptr %22, i64 1
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %0, ptr noundef %40)
  %41 = load ptr, ptr %7, align 8
  %42 = getelementptr inbounds double, ptr %41, i64 1
  %43 = load ptr, ptr %4, align 8
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %42, ptr noundef %43)
  br label %44

44:                                               ; preds = %39, %2
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt4sortIPdEvT_S1_(ptr noundef %0, ptr noundef %1) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = call i8 @_ZN9__gnu_cxx5__ops16__iter_less_iterEv()
  call void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 undef)
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdaPv(ptr noundef) #9

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0) #5 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPdS0_S0_ET2_T0_T1_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
  %4 = alloca %"struct.std::random_access_iterator_tag", align 1
  %5 = alloca ptr, align 8
  %6 = alloca %"struct.std::random_access_iterator_tag", align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca %"struct.std::random_access_iterator_tag", align 1
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i64, align 8
  store ptr %0, ptr %14, align 8
  store ptr %1, ptr %15, align 8
  store ptr %2, ptr %16, align 8
  store ptr %0, ptr %11, align 8
  store ptr %1, ptr %12, align 8
  store ptr %11, ptr %5, align 8
  store i8 undef, ptr %6, align 1
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  %18 = ptrtoint ptr %1 to i64
  %19 = ptrtoint ptr %0 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 8
  store i64 %21, ptr %17, align 8
  %22 = icmp sgt i64 %21, 1
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %20, i1 false)
  %24 = getelementptr inbounds double, ptr %2, i64 %21
  store ptr %24, ptr %16, align 8
  br label %30

25:                                               ; preds = %3
  %26 = icmp eq i64 %21, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  store ptr %16, ptr %9, align 8
  store ptr %14, ptr %10, align 8
  %28 = load double, ptr %0, align 8
  store double %28, ptr %2, align 8
  %29 = getelementptr inbounds nuw double, ptr %2, i32 1
  store ptr %29, ptr %16, align 8
  br label %30

30:                                               ; preds = %25, %27, %23
  %31 = phi ptr [ %24, %23 ], [ %29, %27 ], [ %2, %25 ]
  ret ptr %31
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #10

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %9 = inttoptr i64 %2 to ptr
  store ptr %9, ptr %4, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %10 = icmp ne ptr %0, %1
  br i1 %10, label %11, label %22

11:                                               ; preds = %3
  %12 = ptrtoint ptr %1 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 8
  %16 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %15)
  %17 = mul nsw i64 %16, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %4, i64 8, i1 false)
  %18 = load ptr, ptr %7, align 8
  %19 = ptrtoint ptr %18 to i64
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %17, i64 %19)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %4, i64 8, i1 false)
  %20 = load ptr, ptr %8, align 8
  %21 = ptrtoint ptr %20 to i64
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %21)
  br label %22

22:                                               ; preds = %11, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i64 @_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFbddEEENS0_15_Iter_comp_iterIT_EES5_(ptr noundef %0) #0 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEC2ES3_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %0)
  %4 = load ptr, ptr %2, align 8
  %5 = ptrtoint ptr %4 to i64
  ret i64 %5
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %10 = alloca ptr, align 8
  %11 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %12 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %13 = inttoptr i64 %3 to ptr
  store ptr %13, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  br label %14

14:                                               ; preds = %27, %4
  %15 = phi i64 [ %28, %27 ], [ %2, %4 ]
  %16 = phi ptr [ %31, %27 ], [ %1, %4 ]
  %17 = ptrtoint ptr %16 to i64
  %18 = ptrtoint ptr %0 to i64
  %19 = sub i64 %17, %18
  %20 = sdiv exact i64 %19, 8
  %21 = icmp sgt i64 %20, 16
  br i1 %21, label %22, label %34

22:                                               ; preds = %14
  %23 = icmp eq i64 %15, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %5, i64 8, i1 false)
  %25 = load ptr, ptr %9, align 8
  %26 = ptrtoint ptr %25 to i64
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %16, ptr noundef %16, i64 %26)
  br label %34

27:                                               ; preds = %22
  %28 = add nsw i64 %15, -1
  store i64 %28, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %11, ptr align 8 %5, i64 8, i1 false)
  %29 = load ptr, ptr %11, align 8
  %30 = ptrtoint ptr %29 to i64
  %31 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %16, i64 %30)
  store ptr %31, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %5, i64 8, i1 false)
  %32 = load ptr, ptr %12, align 8
  %33 = ptrtoint ptr %32 to i64
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %31, ptr noundef %16, i64 noundef %28, i64 %33)
  store ptr %31, ptr %7, align 8
  br label %14, !llvm.loop !51

34:                                               ; preds = %24, %14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %0) #5 comdat {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = call noundef i32 @_ZSt11__bit_widthIyEiT_(i64 noundef %0) #15
  %4 = sub nsw i32 %3, 1
  %5 = sext i32 %4 to i64
  ret i64 %5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %10 = inttoptr i64 %2 to ptr
  store ptr %10, ptr %4, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = icmp sgt i64 %14, 16
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = getelementptr inbounds double, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %4, i64 8, i1 false)
  %18 = load ptr, ptr %7, align 8
  %19 = ptrtoint ptr %18 to i64
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %17, i64 %19)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %4, i64 8, i1 false)
  %20 = load ptr, ptr %8, align 8
  %21 = ptrtoint ptr %20 to i64
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %17, ptr noundef %1, i64 %21)
  br label %25

22:                                               ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %4, i64 8, i1 false)
  %23 = load ptr, ptr %9, align 8
  %24 = ptrtoint ptr %23 to i64
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %24)
  br label %25

25:                                               ; preds = %22, %16
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %10 = inttoptr i64 %3 to ptr
  store ptr %10, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %5, i64 8, i1 false)
  %11 = load ptr, ptr %9, align 8
  %12 = ptrtoint ptr %11 to i64
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %12)
  call void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %10 = inttoptr i64 %2 to ptr
  store ptr %10, ptr %4, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = sdiv i64 %14, 2
  %16 = getelementptr inbounds double, ptr %0, i64 %15
  store ptr %16, ptr %7, align 8
  %17 = getelementptr inbounds double, ptr %0, i64 1
  %18 = getelementptr inbounds double, ptr %1, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %4, i64 8, i1 false)
  %19 = load ptr, ptr %8, align 8
  %20 = ptrtoint ptr %19 to i64
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_(ptr noundef %0, ptr noundef %17, ptr noundef %16, ptr noundef %18, i64 %20)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %4, i64 8, i1 false)
  %21 = load ptr, ptr %9, align 8
  %22 = ptrtoint ptr %21 to i64
  %23 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_S7_T0_(ptr noundef %17, ptr noundef %1, ptr noundef %0, i64 %22)
  ret ptr %23
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
  br label %11

11:                                               ; preds = %19, %4
  %12 = phi ptr [ %20, %19 ], [ %0, %4 ]
  %13 = phi ptr [ %21, %19 ], [ %1, %4 ]
  %14 = icmp ult ptr %13, %2
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %13, ptr noundef %12)
  %.pre = load ptr, ptr %9, align 8
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = load ptr, ptr %7, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %18, ptr noundef %.pre, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi ptr [ %0, %17 ], [ %12, %15 ]
  %21 = getelementptr inbounds nuw double, ptr %.pre, i32 1
  store ptr %21, ptr %9, align 8
  br label %11, !llvm.loop !52

22:                                               ; preds = %11
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
  %8 = phi ptr [ %15, %14 ], [ %1, %3 ]
  %9 = ptrtoint ptr %8 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 8
  %13 = icmp sgt i64 %12, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = getelementptr inbounds double, ptr %8, i32 -1
  store ptr %15, ptr %5, align 8
  %16 = load ptr, ptr %6, align 8, !nonnull !53, !align !54
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %15, ptr noundef %15, ptr noundef nonnull align 8 dereferenceable(8) %16)
  br label %7, !llvm.loop !55

17:                                               ; preds = %7
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = icmp slt i64 %14, 2
  br i1 %15, label %28, label %16

16:                                               ; preds = %3
  store i64 %14, ptr %7, align 8
  %17 = sub nsw i64 %14, 2
  %18 = sdiv i64 %17, 2
  store i64 %18, ptr %8, align 8
  br label %19

19:                                               ; preds = %26, %16
  %20 = phi i64 [ %27, %26 ], [ %18, %16 ]
  %21 = getelementptr inbounds double, ptr %0, i64 %20
  %22 = load double, ptr %21, align 8
  store double %22, ptr %9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %2, i64 8, i1 false)
  %23 = load ptr, ptr %10, align 8
  %24 = ptrtoint ptr %23 to i64
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %20, i64 noundef %14, double noundef %22, i64 %24)
  %25 = icmp eq i64 %20, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = add nsw i64 %20, -1
  store i64 %27, ptr %8, align 8
  br label %19, !llvm.loop !56

28:                                               ; preds = %19, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) #0 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %0, align 8
  %8 = load double, ptr %1, align 8
  %9 = load double, ptr %2, align 8
  %10 = call noundef zeroext i1 %7(double noundef %8, double noundef %9)
  ret i1 %10
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #0 comdat {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca double, align 8
  %10 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %11 = load double, ptr %2, align 8
  store double %11, ptr %9, align 8
  %12 = load double, ptr %0, align 8
  store double %12, ptr %2, align 8
  %13 = ptrtoint ptr %1 to i64
  %14 = ptrtoint ptr %0 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %3, i64 8, i1 false)
  %17 = load ptr, ptr %10, align 8
  %18 = ptrtoint ptr %17 to i64
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef 0, i64 noundef %16, double noundef %11, i64 %18)
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

15:                                               ; preds = %30, %5
  %16 = phi ptr [ %32, %30 ], [ %0, %5 ]
  %17 = phi i64 [ %31, %30 ], [ %1, %5 ]
  %18 = sub nsw i64 %2, 1
  %19 = sdiv i64 %18, 2
  %20 = icmp slt i64 %17, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = add nsw i64 %17, 1
  %23 = mul nsw i64 2, %22
  store i64 %23, ptr %12, align 8
  %24 = getelementptr inbounds double, ptr %16, i64 %23
  %25 = sub nsw i64 %23, 1
  %26 = getelementptr inbounds double, ptr %16, i64 %25
  %27 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %24, ptr noundef %26)
  %.pre = load i64, ptr %12, align 8
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = add nsw i64 %.pre, -1
  store i64 %29, ptr %12, align 8
  br label %30

30:                                               ; preds = %28, %21
  %31 = phi i64 [ %29, %28 ], [ %.pre, %21 ]
  %32 = load ptr, ptr %7, align 8
  %33 = getelementptr inbounds double, ptr %32, i64 %31
  %34 = load double, ptr %33, align 8
  %35 = load i64, ptr %8, align 8
  %36 = getelementptr inbounds double, ptr %32, i64 %35
  store double %34, ptr %36, align 8
  store i64 %31, ptr %8, align 8
  br label %15, !llvm.loop !57

37:                                               ; preds = %15
  %38 = and i64 %2, 1
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = sub nsw i64 %2, 2
  %42 = sdiv i64 %41, 2
  %43 = icmp eq i64 %17, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = add nsw i64 %17, 1
  %46 = mul nsw i64 2, %45
  store i64 %46, ptr %12, align 8
  %47 = sub nsw i64 %46, 1
  %48 = getelementptr inbounds double, ptr %16, i64 %47
  %49 = load double, ptr %48, align 8
  %50 = getelementptr inbounds double, ptr %16, i64 %17
  store double %49, ptr %50, align 8
  store i64 %47, ptr %8, align 8
  br label %51

51:                                               ; preds = %44, %40, %37
  %52 = phi i64 [ %47, %44 ], [ %17, %40 ], [ %17, %37 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEEEvT_T0_S8_T1_RT2_(ptr noundef %16, i64 noundef %52, i64 noundef %1, double noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %13)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %1, align 8
  store ptr %5, ptr %0, align 8
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
  %12 = sub nsw i64 %1, 1
  %13 = sdiv i64 %12, 2
  store i64 %13, ptr %11, align 8
  br label %14

14:                                               ; preds = %22, %5
  %15 = phi i64 [ %30, %22 ], [ %13, %5 ]
  %16 = phi ptr [ %23, %22 ], [ %0, %5 ]
  %17 = phi i64 [ %24, %22 ], [ %1, %5 ]
  %18 = icmp sgt i64 %17, %2
  br i1 %18, label %19, label %.critedge

19:                                               ; preds = %14
  %20 = getelementptr inbounds double, ptr %16, i64 %15
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEclIPddEEbT_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br i1 %21, label %22, label %.critedge

22:                                               ; preds = %19
  %23 = load ptr, ptr %6, align 8
  %24 = load i64, ptr %11, align 8
  %25 = getelementptr inbounds double, ptr %23, i64 %24
  %26 = load double, ptr %25, align 8
  %27 = load i64, ptr %7, align 8
  %28 = getelementptr inbounds double, ptr %23, i64 %27
  store double %26, ptr %28, align 8
  store i64 %24, ptr %7, align 8
  %29 = sub nsw i64 %24, 1
  %30 = sdiv i64 %29, 2
  store i64 %30, ptr %11, align 8
  br label %14, !llvm.loop !58

.critedge:                                        ; preds = %14, %19
  %31 = load double, ptr %9, align 8
  %32 = load ptr, ptr %6, align 8
  %33 = load i64, ptr %7, align 8
  %34 = getelementptr inbounds double, ptr %32, i64 %33
  store double %31, ptr %34, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEclIPddEEbT_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %0, align 8
  %8 = load double, ptr %1, align 8
  %9 = load double, ptr %2, align 8
  %10 = call noundef zeroext i1 %7(double noundef %8, double noundef %9)
  ret i1 %10
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
  br i1 %12, label %13, label %20

13:                                               ; preds = %5
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %2, ptr noundef %3)
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %27

16:                                               ; preds = %13
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %3)
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %27

19:                                               ; preds = %16
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %27

20:                                               ; preds = %5
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %3)
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %27

23:                                               ; preds = %20
  %24 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %2, ptr noundef %3)
  br i1 %24, label %25, label %26

25:                                               ; preds = %23
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %27

26:                                               ; preds = %23
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %27

27:                                               ; preds = %22, %26, %25, %15, %19, %18
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
  %19 = getelementptr inbounds nuw double, ptr %18, i32 1
  store ptr %19, ptr %6, align 8
  %.pre = load ptr, ptr %8, align 8
  br label %13, !llvm.loop !59

20:                                               ; preds = %13
  %21 = load ptr, ptr %7, align 8
  %22 = getelementptr inbounds double, ptr %21, i32 -1
  store ptr %22, ptr %7, align 8
  %.pre1 = load ptr, ptr %8, align 8
  br label %23

23:                                               ; preds = %26, %20
  %24 = phi ptr [ %27, %26 ], [ %22, %20 ]
  %25 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %.pre1, ptr noundef %24)
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = getelementptr inbounds double, ptr %24, i32 -1
  store ptr %27, ptr %7, align 8
  br label %23, !llvm.loop !60

28:                                               ; preds = %23
  %29 = load ptr, ptr %6, align 8
  %30 = icmp ult ptr %29, %24
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  ret ptr %29

32:                                               ; preds = %28
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %29, ptr noundef %24)
  %33 = getelementptr inbounds nuw double, ptr %29, i32 1
  store ptr %33, ptr %6, align 8
  br label %10, !llvm.loop !61
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1) #5 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  call void @_ZSt4swapIdENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZSt4swapIdENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #5 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca double, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load double, ptr %0, align 8
  store double %6, ptr %5, align 8
  %7 = load double, ptr %1, align 8
  store double %7, ptr %0, align 8
  store double %6, ptr %1, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZSt11__bit_widthIyEiT_(i64 noundef %0) #5 comdat {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, ptr %2, align 8
  store i32 64, ptr %3, align 4
  %4 = call noundef i32 @_ZSt13__countl_zeroIyEiT_(i64 noundef %0) #15
  %5 = sub nsw i32 64, %4
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZSt13__countl_zeroIyEiT_(i64 noundef %0) #5 comdat {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, ptr %2, align 8
  store i32 64, ptr %3, align 4
  %4 = call i64 @llvm.ctlz.i64(i64 %0, i1 true)
  %5 = trunc i64 %4 to i32
  %6 = icmp eq i64 %0, 0
  %7 = select i1 %6, i32 64, i32 %5
  ret i32 %7
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca double, align 8
  %23 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %24 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %25 = inttoptr i64 %2 to ptr
  store ptr %25, ptr %18, align 8
  store ptr %0, ptr %19, align 8
  store ptr %1, ptr %20, align 8
  %26 = icmp eq ptr %0, %1
  br i1 %26, label %56, label %27

27:                                               ; preds = %3
  %28 = getelementptr inbounds double, ptr %0, i64 1
  store ptr %28, ptr %21, align 8
  br label %29

29:                                               ; preds = %52, %27
  %30 = phi ptr [ %54, %52 ], [ %0, %27 ]
  %31 = phi ptr [ %55, %52 ], [ %28, %27 ]
  %32 = icmp ne ptr %31, %1
  br i1 %32, label %33, label %56

33:                                               ; preds = %29
  %34 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %31, ptr noundef %30)
  br i1 %34, label %35, label %46

35:                                               ; preds = %33
  %36 = load ptr, ptr %21, align 8
  %37 = load double, ptr %36, align 8
  store double %37, ptr %22, align 8
  %38 = getelementptr inbounds double, ptr %36, i64 1
  store ptr %30, ptr %15, align 8
  store ptr %36, ptr %16, align 8
  store ptr %38, ptr %17, align 8
  %39 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %30)
  %40 = load ptr, ptr %16, align 8
  %41 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %40)
  %42 = load ptr, ptr %17, align 8
  store ptr %39, ptr %12, align 8
  store ptr %41, ptr %13, align 8
  store ptr %42, ptr %14, align 8
  store ptr %39, ptr %7, align 8
  store ptr %41, ptr %8, align 8
  store ptr %42, ptr %9, align 8
  store ptr %39, ptr %4, align 8
  store ptr %41, ptr %5, align 8
  store ptr %42, ptr %6, align 8
  %43 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %39, ptr noundef %41, ptr noundef %42)
  store ptr %14, ptr %10, align 8
  store ptr %43, ptr %11, align 8
  %44 = load double, ptr %22, align 8
  %45 = load ptr, ptr %19, align 8
  store double %44, ptr %45, align 8
  %.pre = load ptr, ptr %21, align 8
  br label %52

46:                                               ; preds = %33
  %47 = load ptr, ptr %21, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %24, ptr align 8 %18, i64 8, i1 false)
  %48 = load ptr, ptr %24, align 8
  %49 = ptrtoint ptr %48 to i64
  %50 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %49)
  %51 = inttoptr i64 %50 to ptr
  store ptr %51, ptr %23, align 8
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %47, i64 %50)
  br label %52

52:                                               ; preds = %46, %35
  %53 = phi ptr [ %47, %46 ], [ %.pre, %35 ]
  %54 = phi ptr [ %30, %46 ], [ %45, %35 ]
  %55 = getelementptr inbounds nuw double, ptr %53, i32 1
  store ptr %55, ptr %21, align 8
  br label %29, !llvm.loop !62

56:                                               ; preds = %3, %29
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i64 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %10 = inttoptr i64 %2 to ptr
  store ptr %10, ptr %4, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %0, ptr %7, align 8
  br label %11

11:                                               ; preds = %14, %3
  %12 = phi ptr [ %19, %14 ], [ %0, %3 ]
  %13 = icmp ne ptr %12, %1
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %4, i64 8, i1 false)
  %15 = load ptr, ptr %9, align 8
  %16 = ptrtoint ptr %15 to i64
  %17 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %16)
  %18 = inttoptr i64 %17 to ptr
  store ptr %18, ptr %8, align 8
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %12, i64 %17)
  %19 = getelementptr inbounds nuw double, ptr %12, i32 1
  store ptr %19, ptr %7, align 8
  br label %11, !llvm.loop !63

20:                                               ; preds = %11
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
  store ptr %0, ptr %6, align 8
  %9 = getelementptr inbounds double, ptr %0, i32 -1
  store ptr %9, ptr %6, align 8
  br label %10

10:                                               ; preds = %14, %2
  %11 = phi ptr [ %12, %14 ], [ %0, %2 ]
  %12 = phi ptr [ %17, %14 ], [ %9, %2 ]
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEclIdPdEEbRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %12)
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load double, ptr %12, align 8
  store double %15, ptr %11, align 8
  store ptr %12, ptr %4, align 8
  %16 = load ptr, ptr %6, align 8
  %17 = getelementptr inbounds double, ptr %16, i32 -1
  store ptr %17, ptr %6, align 8
  br label %10, !llvm.loop !64

18:                                               ; preds = %10
  %19 = load double, ptr %5, align 8
  store double %19, ptr %11, align 8
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
  %6 = alloca %"struct.std::random_access_iterator_tag", align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %"struct.std::random_access_iterator_tag", align 1
  %12 = alloca %"struct.std::random_access_iterator_tag", align 1
  %13 = alloca ptr, align 8
  %14 = alloca %"struct.std::random_access_iterator_tag", align 1
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca %"struct.std::random_access_iterator_tag", align 1
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca i64, align 8
  store ptr %0, ptr %20, align 8
  store ptr %1, ptr %21, align 8
  store ptr %2, ptr %22, align 8
  store ptr %0, ptr %17, align 8
  store ptr %1, ptr %18, align 8
  store ptr %17, ptr %13, align 8
  store i8 undef, ptr %14, align 1
  store ptr %0, ptr %15, align 8
  store ptr %1, ptr %16, align 8
  %24 = ptrtoint ptr %1 to i64
  %25 = ptrtoint ptr %0 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 8
  store i64 %27, ptr %23, align 8
  %28 = sub nsw i64 0, %27
  store ptr %22, ptr %8, align 8
  store i64 %28, ptr %9, align 8
  store i64 %28, ptr %10, align 8
  store ptr %22, ptr %7, align 8
  call void @_ZSt9__advanceIPdxEvRT_T0_St26random_access_iterator_tag(ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %28, i8 undef)
  %29 = icmp sgt i64 %27, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load ptr, ptr %22, align 8
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %31, ptr align 8 %0, i64 %26, i1 false)
  br label %37

32:                                               ; preds = %3
  %33 = icmp eq i64 %27, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  store ptr %22, ptr %4, align 8
  store ptr %20, ptr %5, align 8
  %35 = load double, ptr %0, align 8
  %36 = load ptr, ptr %22, align 8
  store double %35, ptr %36, align 8
  br label %37

37:                                               ; preds = %32, %34, %30
  %38 = load ptr, ptr %22, align 8
  ret ptr %38
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZSt9__advanceIPdxEvRT_T0_St26random_access_iterator_tag(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, i8 %2) #5 comdat {
  %4 = alloca %"struct.std::random_access_iterator_tag", align 1
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  %7 = call i1 @llvm.is.constant.i64(i64 %1)
  %8 = icmp eq i64 %1, 1
  %or.cond = and i1 %7, %8
  br i1 %or.cond, label %9, label %12

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds nuw double, ptr %10, i32 1
  store ptr %11, ptr %0, align 8
  br label %21

12:                                               ; preds = %3
  %13 = call i1 @llvm.is.constant.i64(i64 %1)
  %14 = icmp eq i64 %1, -1
  %or.cond1 = and i1 %13, %14
  br i1 %or.cond1, label %15, label %18

15:                                               ; preds = %12
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr inbounds double, ptr %16, i32 -1
  store ptr %17, ptr %0, align 8
  br label %21

18:                                               ; preds = %12
  %19 = load ptr, ptr %0, align 8
  %20 = getelementptr inbounds double, ptr %19, i64 %1
  store ptr %20, ptr %0, align 8
  br label %21

21:                                               ; preds = %15, %18, %9
  ret void
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #12

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEclIdPdEEbRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) #0 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %0, align 8
  %8 = load double, ptr %1, align 8
  %9 = load double, ptr %2, align 8
  %10 = call noundef zeroext i1 %7(double noundef %8, double noundef %9)
  ret i1 %10
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %1, align 8
  store ptr %5, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEC2ES3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  store ptr %1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %9 = icmp ne ptr %0, %1
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %14)
  %16 = mul nsw i64 %15, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %4, i64 1, i1 false)
  %17 = load i8, ptr %7, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %16, i8 %17)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %4, i64 1, i1 false)
  %18 = load i8, ptr %8, align 1
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %18)
  br label %19

19:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i8 @_ZN9__gnu_cxx5__ops16__iter_comp_iterI17less_than_functorEENS0_15_Iter_comp_iterIT_EES4_(i8 %0) #0 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %3 = alloca %struct.less_than_functor, align 1
  %4 = alloca %struct.less_than_functor, align 1
  store i8 %0, ptr %3, align 1
  call void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEC2ES2_(ptr noundef nonnull align 1 dereferenceable(1) %2, i8 undef)
  %5 = load i8, ptr %2, align 1
  ret i8 %5
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %10 = alloca ptr, align 8
  %11 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %12 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  store i8 %3, ptr %5, align 1
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  br label %13

13:                                               ; preds = %25, %4
  %14 = phi i64 [ %26, %25 ], [ %2, %4 ]
  %15 = phi ptr [ %28, %25 ], [ %1, %4 ]
  %16 = ptrtoint ptr %15 to i64
  %17 = ptrtoint ptr %0 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 8
  %20 = icmp sgt i64 %19, 16
  br i1 %20, label %21, label %30

21:                                               ; preds = %13
  %22 = icmp eq i64 %14, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %5, i64 1, i1 false)
  %24 = load i8, ptr %9, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %15, ptr noundef %15, i8 %24)
  br label %30

25:                                               ; preds = %21
  %26 = add nsw i64 %14, -1
  store i64 %26, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %5, i64 1, i1 false)
  %27 = load i8, ptr %11, align 1
  %28 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %15, i8 %27)
  store ptr %28, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %5, i64 1, i1 false)
  %29 = load i8, ptr %12, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %28, ptr noundef %15, i64 noundef %26, i8 %29)
  store ptr %28, ptr %7, align 8
  br label %13, !llvm.loop !65

30:                                               ; preds = %23, %13
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %10 = ptrtoint ptr %1 to i64
  %11 = ptrtoint ptr %0 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  %14 = icmp sgt i64 %13, 16
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = getelementptr inbounds double, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %4, i64 1, i1 false)
  %17 = load i8, ptr %7, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %16, i8 %17)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %4, i64 1, i1 false)
  %18 = load i8, ptr %8, align 1
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %16, ptr noundef %1, i8 %18)
  br label %21

19:                                               ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %20 = load i8, ptr %9, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %20)
  br label %21

21:                                               ; preds = %19, %15
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  store i8 %3, ptr %5, align 1
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %5, i64 1, i1 false)
  %10 = load i8, ptr %9, align 1
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %10)
  call void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %10 = ptrtoint ptr %1 to i64
  %11 = ptrtoint ptr %0 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  %14 = sdiv i64 %13, 2
  %15 = getelementptr inbounds double, ptr %0, i64 %14
  store ptr %15, ptr %7, align 8
  %16 = getelementptr inbounds double, ptr %0, i64 1
  %17 = getelementptr inbounds double, ptr %1, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %4, i64 1, i1 false)
  %18 = load i8, ptr %8, align 1
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_S6_T0_(ptr noundef %0, ptr noundef %16, ptr noundef %15, ptr noundef %17, i8 %18)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %19 = load i8, ptr %9, align 1
  %20 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_S6_T0_(ptr noundef %16, ptr noundef %1, ptr noundef %0, i8 %19)
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
  store ptr %1, ptr %9, align 8
  br label %10

10:                                               ; preds = %18, %4
  %11 = phi ptr [ %19, %18 ], [ %0, %4 ]
  %12 = phi ptr [ %20, %18 ], [ %1, %4 ]
  %13 = icmp ult ptr %12, %2
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %12, ptr noundef %11)
  %.pre = load ptr, ptr %9, align 8
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = load ptr, ptr %7, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %17, ptr noundef %.pre, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %0, %16 ], [ %11, %14 ]
  %20 = getelementptr inbounds nuw double, ptr %.pre, i32 1
  store ptr %20, ptr %9, align 8
  br label %10, !llvm.loop !66

21:                                               ; preds = %10
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
  %8 = phi ptr [ %15, %14 ], [ %1, %3 ]
  %9 = ptrtoint ptr %8 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 8
  %13 = icmp sgt i64 %12, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = getelementptr inbounds double, ptr %8, i32 -1
  store ptr %15, ptr %5, align 8
  %16 = load ptr, ptr %6, align 8, !nonnull !53
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %15, ptr noundef %15, ptr noundef nonnull align 1 dereferenceable(1) %16)
  br label %7, !llvm.loop !67

17:                                               ; preds = %7
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = icmp slt i64 %14, 2
  br i1 %15, label %27, label %16

16:                                               ; preds = %3
  store i64 %14, ptr %7, align 8
  %17 = sub nsw i64 %14, 2
  %18 = sdiv i64 %17, 2
  store i64 %18, ptr %8, align 8
  br label %19

19:                                               ; preds = %25, %16
  %20 = phi i64 [ %26, %25 ], [ %18, %16 ]
  %21 = getelementptr inbounds double, ptr %0, i64 %20
  %22 = load double, ptr %21, align 8
  store double %22, ptr %9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %2, i64 1, i1 false)
  %23 = load i8, ptr %10, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %20, i64 noundef %14, double noundef %22, i8 %23)
  %24 = icmp eq i64 %20, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = add nsw i64 %20, -1
  store i64 %26, ptr %8, align 8
  br label %19, !llvm.loop !68

27:                                               ; preds = %19, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) #5 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %7
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #0 comdat {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca double, align 8
  %10 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %11 = load double, ptr %2, align 8
  store double %11, ptr %9, align 8
  %12 = load double, ptr %0, align 8
  store double %12, ptr %2, align 8
  %13 = ptrtoint ptr %1 to i64
  %14 = ptrtoint ptr %0 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %3, i64 1, i1 false)
  %17 = load i8, ptr %10, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef 0, i64 noundef %16, double noundef %11, i8 %17)
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

14:                                               ; preds = %29, %5
  %15 = phi ptr [ %31, %29 ], [ %0, %5 ]
  %16 = phi i64 [ %30, %29 ], [ %1, %5 ]
  %17 = sub nsw i64 %2, 1
  %18 = sdiv i64 %17, 2
  %19 = icmp slt i64 %16, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = add nsw i64 %16, 1
  %22 = mul nsw i64 2, %21
  store i64 %22, ptr %12, align 8
  %23 = getelementptr inbounds double, ptr %15, i64 %22
  %24 = sub nsw i64 %22, 1
  %25 = getelementptr inbounds double, ptr %15, i64 %24
  %26 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %23, ptr noundef %25)
  %.pre = load i64, ptr %12, align 8
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = add nsw i64 %.pre, -1
  store i64 %28, ptr %12, align 8
  br label %29

29:                                               ; preds = %27, %20
  %30 = phi i64 [ %28, %27 ], [ %.pre, %20 ]
  %31 = load ptr, ptr %7, align 8
  %32 = getelementptr inbounds double, ptr %31, i64 %30
  %33 = load double, ptr %32, align 8
  %34 = load i64, ptr %8, align 8
  %35 = getelementptr inbounds double, ptr %31, i64 %34
  store double %33, ptr %35, align 8
  store i64 %30, ptr %8, align 8
  br label %14, !llvm.loop !69

36:                                               ; preds = %14
  %37 = and i64 %2, 1
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = sub nsw i64 %2, 2
  %41 = sdiv i64 %40, 2
  %42 = icmp eq i64 %16, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = add nsw i64 %16, 1
  %45 = mul nsw i64 2, %44
  store i64 %45, ptr %12, align 8
  %46 = sub nsw i64 %45, 1
  %47 = getelementptr inbounds double, ptr %15, i64 %46
  %48 = load double, ptr %47, align 8
  %49 = getelementptr inbounds double, ptr %15, i64 %16
  store double %48, ptr %49, align 8
  store i64 %46, ptr %8, align 8
  br label %50

50:                                               ; preds = %43, %39, %36
  %51 = phi i64 [ %46, %43 ], [ %16, %39 ], [ %16, %36 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %15, i64 noundef %51, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %13)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
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
  %12 = sub nsw i64 %1, 1
  %13 = sdiv i64 %12, 2
  store i64 %13, ptr %11, align 8
  br label %14

14:                                               ; preds = %22, %5
  %15 = phi i64 [ %30, %22 ], [ %13, %5 ]
  %16 = phi ptr [ %23, %22 ], [ %0, %5 ]
  %17 = phi i64 [ %24, %22 ], [ %1, %5 ]
  %18 = icmp sgt i64 %17, %2
  br i1 %18, label %19, label %.critedge

19:                                               ; preds = %14
  %20 = getelementptr inbounds double, ptr %16, i64 %15
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br i1 %21, label %22, label %.critedge

22:                                               ; preds = %19
  %23 = load ptr, ptr %6, align 8
  %24 = load i64, ptr %11, align 8
  %25 = getelementptr inbounds double, ptr %23, i64 %24
  %26 = load double, ptr %25, align 8
  %27 = load i64, ptr %7, align 8
  %28 = getelementptr inbounds double, ptr %23, i64 %27
  store double %26, ptr %28, align 8
  store i64 %24, ptr %7, align 8
  %29 = sub nsw i64 %24, 1
  %30 = sdiv i64 %29, 2
  store i64 %30, ptr %11, align 8
  br label %14, !llvm.loop !70

.critedge:                                        ; preds = %14, %19
  %31 = load double, ptr %9, align 8
  %32 = load ptr, ptr %6, align 8
  %33 = load i64, ptr %7, align 8
  %34 = getelementptr inbounds double, ptr %32, i64 %33
  store double %31, ptr %34, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #5 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %7
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
  br i1 %11, label %12, label %19

12:                                               ; preds = %5
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %26

15:                                               ; preds = %12
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %26

18:                                               ; preds = %15
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %26

19:                                               ; preds = %5
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %26

22:                                               ; preds = %19
  %23 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %26

25:                                               ; preds = %22
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %26

26:                                               ; preds = %21, %25, %24, %14, %18, %17
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
  %18 = getelementptr inbounds nuw double, ptr %17, i32 1
  store ptr %18, ptr %6, align 8
  %.pre = load ptr, ptr %8, align 8
  br label %12, !llvm.loop !71

19:                                               ; preds = %12
  %20 = load ptr, ptr %7, align 8
  %21 = getelementptr inbounds double, ptr %20, i32 -1
  store ptr %21, ptr %7, align 8
  %.pre1 = load ptr, ptr %8, align 8
  br label %22

22:                                               ; preds = %25, %19
  %23 = phi ptr [ %26, %25 ], [ %21, %19 ]
  %24 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.pre1, ptr noundef %23)
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = getelementptr inbounds double, ptr %23, i32 -1
  store ptr %26, ptr %7, align 8
  br label %22, !llvm.loop !72

27:                                               ; preds = %22
  %28 = load ptr, ptr %6, align 8
  %29 = icmp ult ptr %28, %23
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  ret ptr %28

31:                                               ; preds = %27
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %28, ptr noundef %23)
  %32 = getelementptr inbounds nuw double, ptr %28, i32 1
  store ptr %32, ptr %6, align 8
  br label %9, !llvm.loop !73
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca double, align 8
  %23 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", align 1
  %24 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  store i8 %2, ptr %18, align 1
  store ptr %0, ptr %19, align 8
  store ptr %1, ptr %20, align 8
  %25 = icmp eq ptr %0, %1
  br i1 %25, label %53, label %26

26:                                               ; preds = %3
  %27 = getelementptr inbounds double, ptr %0, i64 1
  store ptr %27, ptr %21, align 8
  br label %28

28:                                               ; preds = %49, %26
  %29 = phi ptr [ %51, %49 ], [ %0, %26 ]
  %30 = phi ptr [ %52, %49 ], [ %27, %26 ]
  %31 = icmp ne ptr %30, %1
  br i1 %31, label %32, label %53

32:                                               ; preds = %28
  %33 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef %30, ptr noundef %29)
  br i1 %33, label %34, label %45

34:                                               ; preds = %32
  %35 = load ptr, ptr %21, align 8
  %36 = load double, ptr %35, align 8
  store double %36, ptr %22, align 8
  %37 = getelementptr inbounds double, ptr %35, i64 1
  store ptr %29, ptr %15, align 8
  store ptr %35, ptr %16, align 8
  store ptr %37, ptr %17, align 8
  %38 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %29)
  %39 = load ptr, ptr %16, align 8
  %40 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %39)
  %41 = load ptr, ptr %17, align 8
  store ptr %38, ptr %12, align 8
  store ptr %40, ptr %13, align 8
  store ptr %41, ptr %14, align 8
  store ptr %38, ptr %7, align 8
  store ptr %40, ptr %8, align 8
  store ptr %41, ptr %9, align 8
  store ptr %38, ptr %4, align 8
  store ptr %40, ptr %5, align 8
  store ptr %41, ptr %6, align 8
  %42 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %38, ptr noundef %40, ptr noundef %41)
  store ptr %14, ptr %10, align 8
  store ptr %42, ptr %11, align 8
  %43 = load double, ptr %22, align 8
  %44 = load ptr, ptr %19, align 8
  store double %43, ptr %44, align 8
  %.pre = load ptr, ptr %21, align 8
  br label %49

45:                                               ; preds = %32
  %46 = load ptr, ptr %21, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr align 1 %18, i64 1, i1 false)
  %47 = load i8, ptr %24, align 1
  %48 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %47)
  store i8 %48, ptr %23, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %46, i8 %48)
  br label %49

49:                                               ; preds = %45, %34
  %50 = phi ptr [ %46, %45 ], [ %.pre, %34 ]
  %51 = phi ptr [ %29, %45 ], [ %44, %34 ]
  %52 = getelementptr inbounds nuw double, ptr %50, i32 1
  store ptr %52, ptr %21, align 8
  br label %28, !llvm.loop !74

53:                                               ; preds = %3, %28
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.2", align 1
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %0, ptr %7, align 8
  br label %10

10:                                               ; preds = %13, %3
  %11 = phi ptr [ %16, %13 ], [ %0, %3 ]
  %12 = icmp ne ptr %11, %1
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %14 = load i8, ptr %9, align 1
  %15 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %14)
  store i8 %15, ptr %8, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %11, i8 %15)
  %16 = getelementptr inbounds nuw double, ptr %11, i32 1
  store ptr %16, ptr %7, align 8
  br label %10, !llvm.loop !75

17:                                               ; preds = %10
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
  store ptr %0, ptr %6, align 8
  %8 = getelementptr inbounds double, ptr %0, i32 -1
  store ptr %8, ptr %6, align 8
  br label %9

9:                                                ; preds = %13, %2
  %10 = phi ptr [ %11, %13 ], [ %0, %2 ]
  %11 = phi ptr [ %16, %13 ], [ %8, %2 ]
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load double, ptr %11, align 8
  store double %14, ptr %10, align 8
  store ptr %11, ptr %4, align 8
  %15 = load ptr, ptr %6, align 8
  %16 = getelementptr inbounds double, ptr %15, i32 -1
  store ptr %16, ptr %6, align 8
  br label %9, !llvm.loop !76

17:                                               ; preds = %9
  %18 = load double, ptr %5, align 8
  store double %18, ptr %10, align 8
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
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEC2ES2_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %struct.less_than_functor, align 1
  %4 = alloca ptr, align 8
  store i8 %1, ptr %3, align 1
  store ptr %0, ptr %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #5 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load double, ptr %1, align 8
  %8 = load double, ptr %2, align 8
  %9 = fcmp olt double %7, %8
  %10 = zext i1 %9 to i64
  ret i1 %9
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %9 = icmp ne ptr %0, %1
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %14)
  %16 = mul nsw i64 %15, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %4, i64 1, i1 false)
  %17 = load i8, ptr %7, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %16, i8 %17)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %4, i64 1, i1 false)
  %18 = load i8, ptr %8, align 1
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %18)
  br label %19

19:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i8 @_ZN9__gnu_cxx5__ops16__iter_comp_iterI24inline_less_than_functorEENS0_15_Iter_comp_iterIT_EES4_(i8 %0) #0 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %3 = alloca %struct.inline_less_than_functor, align 1
  %4 = alloca %struct.inline_less_than_functor, align 1
  store i8 %0, ptr %3, align 1
  call void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEC2ES2_(ptr noundef nonnull align 1 dereferenceable(1) %2, i8 undef)
  %5 = load i8, ptr %2, align 1
  ret i8 %5
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %10 = alloca ptr, align 8
  %11 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %12 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  store i8 %3, ptr %5, align 1
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  br label %13

13:                                               ; preds = %25, %4
  %14 = phi i64 [ %26, %25 ], [ %2, %4 ]
  %15 = phi ptr [ %28, %25 ], [ %1, %4 ]
  %16 = ptrtoint ptr %15 to i64
  %17 = ptrtoint ptr %0 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 8
  %20 = icmp sgt i64 %19, 16
  br i1 %20, label %21, label %30

21:                                               ; preds = %13
  %22 = icmp eq i64 %14, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %5, i64 1, i1 false)
  %24 = load i8, ptr %9, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %15, ptr noundef %15, i8 %24)
  br label %30

25:                                               ; preds = %21
  %26 = add nsw i64 %14, -1
  store i64 %26, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %5, i64 1, i1 false)
  %27 = load i8, ptr %11, align 1
  %28 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %15, i8 %27)
  store ptr %28, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %5, i64 1, i1 false)
  %29 = load i8, ptr %12, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %28, ptr noundef %15, i64 noundef %26, i8 %29)
  store ptr %28, ptr %7, align 8
  br label %13, !llvm.loop !77

30:                                               ; preds = %23, %13
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %10 = ptrtoint ptr %1 to i64
  %11 = ptrtoint ptr %0 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  %14 = icmp sgt i64 %13, 16
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = getelementptr inbounds double, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %4, i64 1, i1 false)
  %17 = load i8, ptr %7, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %16, i8 %17)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %4, i64 1, i1 false)
  %18 = load i8, ptr %8, align 1
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %16, ptr noundef %1, i8 %18)
  br label %21

19:                                               ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %20 = load i8, ptr %9, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %20)
  br label %21

21:                                               ; preds = %19, %15
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  store i8 %3, ptr %5, align 1
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %5, i64 1, i1 false)
  %10 = load i8, ptr %9, align 1
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %10)
  call void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %10 = ptrtoint ptr %1 to i64
  %11 = ptrtoint ptr %0 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  %14 = sdiv i64 %13, 2
  %15 = getelementptr inbounds double, ptr %0, i64 %14
  store ptr %15, ptr %7, align 8
  %16 = getelementptr inbounds double, ptr %0, i64 1
  %17 = getelementptr inbounds double, ptr %1, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %4, i64 1, i1 false)
  %18 = load i8, ptr %8, align 1
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_S6_T0_(ptr noundef %0, ptr noundef %16, ptr noundef %15, ptr noundef %17, i8 %18)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %19 = load i8, ptr %9, align 1
  %20 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_S6_T0_(ptr noundef %16, ptr noundef %1, ptr noundef %0, i8 %19)
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
  store ptr %1, ptr %9, align 8
  br label %10

10:                                               ; preds = %18, %4
  %11 = phi ptr [ %19, %18 ], [ %0, %4 ]
  %12 = phi ptr [ %20, %18 ], [ %1, %4 ]
  %13 = icmp ult ptr %12, %2
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %12, ptr noundef %11)
  %.pre = load ptr, ptr %9, align 8
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = load ptr, ptr %7, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %17, ptr noundef %.pre, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %0, %16 ], [ %11, %14 ]
  %20 = getelementptr inbounds nuw double, ptr %.pre, i32 1
  store ptr %20, ptr %9, align 8
  br label %10, !llvm.loop !78

21:                                               ; preds = %10
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
  %8 = phi ptr [ %15, %14 ], [ %1, %3 ]
  %9 = ptrtoint ptr %8 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 8
  %13 = icmp sgt i64 %12, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = getelementptr inbounds double, ptr %8, i32 -1
  store ptr %15, ptr %5, align 8
  %16 = load ptr, ptr %6, align 8, !nonnull !53
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %15, ptr noundef %15, ptr noundef nonnull align 1 dereferenceable(1) %16)
  br label %7, !llvm.loop !79

17:                                               ; preds = %7
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = icmp slt i64 %14, 2
  br i1 %15, label %27, label %16

16:                                               ; preds = %3
  store i64 %14, ptr %7, align 8
  %17 = sub nsw i64 %14, 2
  %18 = sdiv i64 %17, 2
  store i64 %18, ptr %8, align 8
  br label %19

19:                                               ; preds = %25, %16
  %20 = phi i64 [ %26, %25 ], [ %18, %16 ]
  %21 = getelementptr inbounds double, ptr %0, i64 %20
  %22 = load double, ptr %21, align 8
  store double %22, ptr %9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %2, i64 1, i1 false)
  %23 = load i8, ptr %10, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %20, i64 noundef %14, double noundef %22, i8 %23)
  %24 = icmp eq i64 %20, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = add nsw i64 %20, -1
  store i64 %26, ptr %8, align 8
  br label %19, !llvm.loop !80

27:                                               ; preds = %19, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) #5 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %7
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #0 comdat {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca double, align 8
  %10 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %11 = load double, ptr %2, align 8
  store double %11, ptr %9, align 8
  %12 = load double, ptr %0, align 8
  store double %12, ptr %2, align 8
  %13 = ptrtoint ptr %1 to i64
  %14 = ptrtoint ptr %0 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %3, i64 1, i1 false)
  %17 = load i8, ptr %10, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef 0, i64 noundef %16, double noundef %11, i8 %17)
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

14:                                               ; preds = %29, %5
  %15 = phi ptr [ %31, %29 ], [ %0, %5 ]
  %16 = phi i64 [ %30, %29 ], [ %1, %5 ]
  %17 = sub nsw i64 %2, 1
  %18 = sdiv i64 %17, 2
  %19 = icmp slt i64 %16, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = add nsw i64 %16, 1
  %22 = mul nsw i64 2, %21
  store i64 %22, ptr %12, align 8
  %23 = getelementptr inbounds double, ptr %15, i64 %22
  %24 = sub nsw i64 %22, 1
  %25 = getelementptr inbounds double, ptr %15, i64 %24
  %26 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %23, ptr noundef %25)
  %.pre = load i64, ptr %12, align 8
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = add nsw i64 %.pre, -1
  store i64 %28, ptr %12, align 8
  br label %29

29:                                               ; preds = %27, %20
  %30 = phi i64 [ %28, %27 ], [ %.pre, %20 ]
  %31 = load ptr, ptr %7, align 8
  %32 = getelementptr inbounds double, ptr %31, i64 %30
  %33 = load double, ptr %32, align 8
  %34 = load i64, ptr %8, align 8
  %35 = getelementptr inbounds double, ptr %31, i64 %34
  store double %33, ptr %35, align 8
  store i64 %30, ptr %8, align 8
  br label %14, !llvm.loop !81

36:                                               ; preds = %14
  %37 = and i64 %2, 1
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = sub nsw i64 %2, 2
  %41 = sdiv i64 %40, 2
  %42 = icmp eq i64 %16, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = add nsw i64 %16, 1
  %45 = mul nsw i64 2, %44
  store i64 %45, ptr %12, align 8
  %46 = sub nsw i64 %45, 1
  %47 = getelementptr inbounds double, ptr %15, i64 %46
  %48 = load double, ptr %47, align 8
  %49 = getelementptr inbounds double, ptr %15, i64 %16
  store double %48, ptr %49, align 8
  store i64 %46, ptr %8, align 8
  br label %50

50:                                               ; preds = %43, %39, %36
  %51 = phi i64 [ %46, %43 ], [ %16, %39 ], [ %16, %36 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %15, i64 noundef %51, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %13)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
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
  %12 = sub nsw i64 %1, 1
  %13 = sdiv i64 %12, 2
  store i64 %13, ptr %11, align 8
  br label %14

14:                                               ; preds = %22, %5
  %15 = phi i64 [ %30, %22 ], [ %13, %5 ]
  %16 = phi ptr [ %23, %22 ], [ %0, %5 ]
  %17 = phi i64 [ %24, %22 ], [ %1, %5 ]
  %18 = icmp sgt i64 %17, %2
  br i1 %18, label %19, label %.critedge

19:                                               ; preds = %14
  %20 = getelementptr inbounds double, ptr %16, i64 %15
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br i1 %21, label %22, label %.critedge

22:                                               ; preds = %19
  %23 = load ptr, ptr %6, align 8
  %24 = load i64, ptr %11, align 8
  %25 = getelementptr inbounds double, ptr %23, i64 %24
  %26 = load double, ptr %25, align 8
  %27 = load i64, ptr %7, align 8
  %28 = getelementptr inbounds double, ptr %23, i64 %27
  store double %26, ptr %28, align 8
  store i64 %24, ptr %7, align 8
  %29 = sub nsw i64 %24, 1
  %30 = sdiv i64 %29, 2
  store i64 %30, ptr %11, align 8
  br label %14, !llvm.loop !82

.critedge:                                        ; preds = %14, %19
  %31 = load double, ptr %9, align 8
  %32 = load ptr, ptr %6, align 8
  %33 = load i64, ptr %7, align 8
  %34 = getelementptr inbounds double, ptr %32, i64 %33
  store double %31, ptr %34, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #5 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %7
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
  br i1 %11, label %12, label %19

12:                                               ; preds = %5
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %26

15:                                               ; preds = %12
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %26

18:                                               ; preds = %15
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %26

19:                                               ; preds = %5
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %26

22:                                               ; preds = %19
  %23 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %26

25:                                               ; preds = %22
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %26

26:                                               ; preds = %21, %25, %24, %14, %18, %17
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
  %18 = getelementptr inbounds nuw double, ptr %17, i32 1
  store ptr %18, ptr %6, align 8
  %.pre = load ptr, ptr %8, align 8
  br label %12, !llvm.loop !83

19:                                               ; preds = %12
  %20 = load ptr, ptr %7, align 8
  %21 = getelementptr inbounds double, ptr %20, i32 -1
  store ptr %21, ptr %7, align 8
  %.pre1 = load ptr, ptr %8, align 8
  br label %22

22:                                               ; preds = %25, %19
  %23 = phi ptr [ %26, %25 ], [ %21, %19 ]
  %24 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.pre1, ptr noundef %23)
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = getelementptr inbounds double, ptr %23, i32 -1
  store ptr %26, ptr %7, align 8
  br label %22, !llvm.loop !84

27:                                               ; preds = %22
  %28 = load ptr, ptr %6, align 8
  %29 = icmp ult ptr %28, %23
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  ret ptr %28

31:                                               ; preds = %27
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %28, ptr noundef %23)
  %32 = getelementptr inbounds nuw double, ptr %28, i32 1
  store ptr %32, ptr %6, align 8
  br label %9, !llvm.loop !85
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca double, align 8
  %23 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", align 1
  %24 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  store i8 %2, ptr %18, align 1
  store ptr %0, ptr %19, align 8
  store ptr %1, ptr %20, align 8
  %25 = icmp eq ptr %0, %1
  br i1 %25, label %53, label %26

26:                                               ; preds = %3
  %27 = getelementptr inbounds double, ptr %0, i64 1
  store ptr %27, ptr %21, align 8
  br label %28

28:                                               ; preds = %49, %26
  %29 = phi ptr [ %51, %49 ], [ %0, %26 ]
  %30 = phi ptr [ %52, %49 ], [ %27, %26 ]
  %31 = icmp ne ptr %30, %1
  br i1 %31, label %32, label %53

32:                                               ; preds = %28
  %33 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef %30, ptr noundef %29)
  br i1 %33, label %34, label %45

34:                                               ; preds = %32
  %35 = load ptr, ptr %21, align 8
  %36 = load double, ptr %35, align 8
  store double %36, ptr %22, align 8
  %37 = getelementptr inbounds double, ptr %35, i64 1
  store ptr %29, ptr %15, align 8
  store ptr %35, ptr %16, align 8
  store ptr %37, ptr %17, align 8
  %38 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %29)
  %39 = load ptr, ptr %16, align 8
  %40 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %39)
  %41 = load ptr, ptr %17, align 8
  store ptr %38, ptr %12, align 8
  store ptr %40, ptr %13, align 8
  store ptr %41, ptr %14, align 8
  store ptr %38, ptr %7, align 8
  store ptr %40, ptr %8, align 8
  store ptr %41, ptr %9, align 8
  store ptr %38, ptr %4, align 8
  store ptr %40, ptr %5, align 8
  store ptr %41, ptr %6, align 8
  %42 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %38, ptr noundef %40, ptr noundef %41)
  store ptr %14, ptr %10, align 8
  store ptr %42, ptr %11, align 8
  %43 = load double, ptr %22, align 8
  %44 = load ptr, ptr %19, align 8
  store double %43, ptr %44, align 8
  %.pre = load ptr, ptr %21, align 8
  br label %49

45:                                               ; preds = %32
  %46 = load ptr, ptr %21, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr align 1 %18, i64 1, i1 false)
  %47 = load i8, ptr %24, align 1
  %48 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %47)
  store i8 %48, ptr %23, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %46, i8 %48)
  br label %49

49:                                               ; preds = %45, %34
  %50 = phi ptr [ %46, %45 ], [ %.pre, %34 ]
  %51 = phi ptr [ %29, %45 ], [ %44, %34 ]
  %52 = getelementptr inbounds nuw double, ptr %50, i32 1
  store ptr %52, ptr %21, align 8
  br label %28, !llvm.loop !86

53:                                               ; preds = %3, %28
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.5", align 1
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %0, ptr %7, align 8
  br label %10

10:                                               ; preds = %13, %3
  %11 = phi ptr [ %16, %13 ], [ %0, %3 ]
  %12 = icmp ne ptr %11, %1
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %14 = load i8, ptr %9, align 1
  %15 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %14)
  store i8 %15, ptr %8, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %11, i8 %15)
  %16 = getelementptr inbounds nuw double, ptr %11, i32 1
  store ptr %16, ptr %7, align 8
  br label %10, !llvm.loop !87

17:                                               ; preds = %10
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
  store ptr %0, ptr %6, align 8
  %8 = getelementptr inbounds double, ptr %0, i32 -1
  store ptr %8, ptr %6, align 8
  br label %9

9:                                                ; preds = %13, %2
  %10 = phi ptr [ %11, %13 ], [ %0, %2 ]
  %11 = phi ptr [ %16, %13 ], [ %8, %2 ]
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load double, ptr %11, align 8
  store double %14, ptr %10, align 8
  store ptr %11, ptr %4, align 8
  %15 = load ptr, ptr %6, align 8
  %16 = getelementptr inbounds double, ptr %15, i32 -1
  store ptr %16, ptr %6, align 8
  br label %9, !llvm.loop !88

17:                                               ; preds = %9
  %18 = load double, ptr %5, align 8
  store double %18, ptr %10, align 8
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
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEC2ES2_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %struct.inline_less_than_functor, align 1
  %4 = alloca ptr, align 8
  store i8 %1, ptr %3, align 1
  store ptr %0, ptr %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #5 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load double, ptr %1, align 8
  %8 = load double, ptr %2, align 8
  %9 = fcmp olt double %7, %8
  ret i1 %9
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %9 = icmp ne ptr %0, %1
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %14)
  %16 = mul nsw i64 %15, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %4, i64 1, i1 false)
  %17 = load i8, ptr %7, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %16, i8 %17)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %4, i64 1, i1 false)
  %18 = load i8, ptr %8, align 1
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %18)
  br label %19

19:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i8 @_ZN9__gnu_cxx5__ops16__iter_comp_iterISt4lessIdEEENS0_15_Iter_comp_iterIT_EES5_(i8 %0) #0 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %3 = alloca %"struct.std::less", align 1
  %4 = alloca %"struct.std::less", align 1
  store i8 %0, ptr %3, align 1
  call void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEC2ES3_(ptr noundef nonnull align 1 dereferenceable(1) %2, i8 undef)
  %5 = load i8, ptr %2, align 1
  ret i8 %5
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %10 = alloca ptr, align 8
  %11 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %12 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store i8 %3, ptr %5, align 1
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  br label %13

13:                                               ; preds = %25, %4
  %14 = phi i64 [ %26, %25 ], [ %2, %4 ]
  %15 = phi ptr [ %28, %25 ], [ %1, %4 ]
  %16 = ptrtoint ptr %15 to i64
  %17 = ptrtoint ptr %0 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 8
  %20 = icmp sgt i64 %19, 16
  br i1 %20, label %21, label %30

21:                                               ; preds = %13
  %22 = icmp eq i64 %14, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %5, i64 1, i1 false)
  %24 = load i8, ptr %9, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %15, ptr noundef %15, i8 %24)
  br label %30

25:                                               ; preds = %21
  %26 = add nsw i64 %14, -1
  store i64 %26, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %5, i64 1, i1 false)
  %27 = load i8, ptr %11, align 1
  %28 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %15, i8 %27)
  store ptr %28, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %5, i64 1, i1 false)
  %29 = load i8, ptr %12, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %28, ptr noundef %15, i64 noundef %26, i8 %29)
  store ptr %28, ptr %7, align 8
  br label %13, !llvm.loop !89

30:                                               ; preds = %23, %13
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %10 = ptrtoint ptr %1 to i64
  %11 = ptrtoint ptr %0 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  %14 = icmp sgt i64 %13, 16
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = getelementptr inbounds double, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %4, i64 1, i1 false)
  %17 = load i8, ptr %7, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %16, i8 %17)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %4, i64 1, i1 false)
  %18 = load i8, ptr %8, align 1
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %16, ptr noundef %1, i8 %18)
  br label %21

19:                                               ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %20 = load i8, ptr %9, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %20)
  br label %21

21:                                               ; preds = %19, %15
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store i8 %3, ptr %5, align 1
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %5, i64 1, i1 false)
  %10 = load i8, ptr %9, align 1
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %10)
  call void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %10 = ptrtoint ptr %1 to i64
  %11 = ptrtoint ptr %0 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  %14 = sdiv i64 %13, 2
  %15 = getelementptr inbounds double, ptr %0, i64 %14
  store ptr %15, ptr %7, align 8
  %16 = getelementptr inbounds double, ptr %0, i64 1
  %17 = getelementptr inbounds double, ptr %1, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %4, i64 1, i1 false)
  %18 = load i8, ptr %8, align 1
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_(ptr noundef %0, ptr noundef %16, ptr noundef %15, ptr noundef %17, i8 %18)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %19 = load i8, ptr %9, align 1
  %20 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_S7_T0_(ptr noundef %16, ptr noundef %1, ptr noundef %0, i8 %19)
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
  store ptr %1, ptr %9, align 8
  br label %10

10:                                               ; preds = %18, %4
  %11 = phi ptr [ %19, %18 ], [ %0, %4 ]
  %12 = phi ptr [ %20, %18 ], [ %1, %4 ]
  %13 = icmp ult ptr %12, %2
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %12, ptr noundef %11)
  %.pre = load ptr, ptr %9, align 8
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = load ptr, ptr %7, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %17, ptr noundef %.pre, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %0, %16 ], [ %11, %14 ]
  %20 = getelementptr inbounds nuw double, ptr %.pre, i32 1
  store ptr %20, ptr %9, align 8
  br label %10, !llvm.loop !90

21:                                               ; preds = %10
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
  %8 = phi ptr [ %15, %14 ], [ %1, %3 ]
  %9 = ptrtoint ptr %8 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 8
  %13 = icmp sgt i64 %12, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = getelementptr inbounds double, ptr %8, i32 -1
  store ptr %15, ptr %5, align 8
  %16 = load ptr, ptr %6, align 8, !nonnull !53
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %15, ptr noundef %15, ptr noundef nonnull align 1 dereferenceable(1) %16)
  br label %7, !llvm.loop !91

17:                                               ; preds = %7
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = icmp slt i64 %14, 2
  br i1 %15, label %27, label %16

16:                                               ; preds = %3
  store i64 %14, ptr %7, align 8
  %17 = sub nsw i64 %14, 2
  %18 = sdiv i64 %17, 2
  store i64 %18, ptr %8, align 8
  br label %19

19:                                               ; preds = %25, %16
  %20 = phi i64 [ %26, %25 ], [ %18, %16 ]
  %21 = getelementptr inbounds double, ptr %0, i64 %20
  %22 = load double, ptr %21, align 8
  store double %22, ptr %9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %2, i64 1, i1 false)
  %23 = load i8, ptr %10, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %20, i64 noundef %14, double noundef %22, i8 %23)
  %24 = icmp eq i64 %20, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = add nsw i64 %20, -1
  store i64 %26, ptr %8, align 8
  br label %19, !llvm.loop !92

27:                                               ; preds = %19, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) #5 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %7
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #0 comdat {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca double, align 8
  %10 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %11 = load double, ptr %2, align 8
  store double %11, ptr %9, align 8
  %12 = load double, ptr %0, align 8
  store double %12, ptr %2, align 8
  %13 = ptrtoint ptr %1 to i64
  %14 = ptrtoint ptr %0 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %3, i64 1, i1 false)
  %17 = load i8, ptr %10, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef 0, i64 noundef %16, double noundef %11, i8 %17)
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

14:                                               ; preds = %29, %5
  %15 = phi ptr [ %31, %29 ], [ %0, %5 ]
  %16 = phi i64 [ %30, %29 ], [ %1, %5 ]
  %17 = sub nsw i64 %2, 1
  %18 = sdiv i64 %17, 2
  %19 = icmp slt i64 %16, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = add nsw i64 %16, 1
  %22 = mul nsw i64 2, %21
  store i64 %22, ptr %12, align 8
  %23 = getelementptr inbounds double, ptr %15, i64 %22
  %24 = sub nsw i64 %22, 1
  %25 = getelementptr inbounds double, ptr %15, i64 %24
  %26 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %23, ptr noundef %25)
  %.pre = load i64, ptr %12, align 8
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = add nsw i64 %.pre, -1
  store i64 %28, ptr %12, align 8
  br label %29

29:                                               ; preds = %27, %20
  %30 = phi i64 [ %28, %27 ], [ %.pre, %20 ]
  %31 = load ptr, ptr %7, align 8
  %32 = getelementptr inbounds double, ptr %31, i64 %30
  %33 = load double, ptr %32, align 8
  %34 = load i64, ptr %8, align 8
  %35 = getelementptr inbounds double, ptr %31, i64 %34
  store double %33, ptr %35, align 8
  store i64 %30, ptr %8, align 8
  br label %14, !llvm.loop !93

36:                                               ; preds = %14
  %37 = and i64 %2, 1
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = sub nsw i64 %2, 2
  %41 = sdiv i64 %40, 2
  %42 = icmp eq i64 %16, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = add nsw i64 %16, 1
  %45 = mul nsw i64 2, %44
  store i64 %45, ptr %12, align 8
  %46 = sub nsw i64 %45, 1
  %47 = getelementptr inbounds double, ptr %15, i64 %46
  %48 = load double, ptr %47, align 8
  %49 = getelementptr inbounds double, ptr %15, i64 %16
  store double %48, ptr %49, align 8
  store i64 %46, ptr %8, align 8
  br label %50

50:                                               ; preds = %43, %39, %36
  %51 = phi i64 [ %46, %43 ], [ %16, %39 ], [ %16, %36 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEEEvT_T0_S8_T1_RT2_(ptr noundef %15, i64 noundef %51, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %13)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
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
  %12 = sub nsw i64 %1, 1
  %13 = sdiv i64 %12, 2
  store i64 %13, ptr %11, align 8
  br label %14

14:                                               ; preds = %22, %5
  %15 = phi i64 [ %30, %22 ], [ %13, %5 ]
  %16 = phi ptr [ %23, %22 ], [ %0, %5 ]
  %17 = phi i64 [ %24, %22 ], [ %1, %5 ]
  %18 = icmp sgt i64 %17, %2
  br i1 %18, label %19, label %.critedge

19:                                               ; preds = %14
  %20 = getelementptr inbounds double, ptr %16, i64 %15
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br i1 %21, label %22, label %.critedge

22:                                               ; preds = %19
  %23 = load ptr, ptr %6, align 8
  %24 = load i64, ptr %11, align 8
  %25 = getelementptr inbounds double, ptr %23, i64 %24
  %26 = load double, ptr %25, align 8
  %27 = load i64, ptr %7, align 8
  %28 = getelementptr inbounds double, ptr %23, i64 %27
  store double %26, ptr %28, align 8
  store i64 %24, ptr %7, align 8
  %29 = sub nsw i64 %24, 1
  %30 = sdiv i64 %29, 2
  store i64 %30, ptr %11, align 8
  br label %14, !llvm.loop !94

.critedge:                                        ; preds = %14, %19
  %31 = load double, ptr %9, align 8
  %32 = load ptr, ptr %6, align 8
  %33 = load i64, ptr %7, align 8
  %34 = getelementptr inbounds double, ptr %32, i64 %33
  store double %31, ptr %34, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #5 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %7
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
  br i1 %11, label %12, label %19

12:                                               ; preds = %5
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %26

15:                                               ; preds = %12
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %26

18:                                               ; preds = %15
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %26

19:                                               ; preds = %5
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %26

22:                                               ; preds = %19
  %23 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %26

25:                                               ; preds = %22
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %26

26:                                               ; preds = %21, %25, %24, %14, %18, %17
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
  %18 = getelementptr inbounds nuw double, ptr %17, i32 1
  store ptr %18, ptr %6, align 8
  %.pre = load ptr, ptr %8, align 8
  br label %12, !llvm.loop !95

19:                                               ; preds = %12
  %20 = load ptr, ptr %7, align 8
  %21 = getelementptr inbounds double, ptr %20, i32 -1
  store ptr %21, ptr %7, align 8
  %.pre1 = load ptr, ptr %8, align 8
  br label %22

22:                                               ; preds = %25, %19
  %23 = phi ptr [ %26, %25 ], [ %21, %19 ]
  %24 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.pre1, ptr noundef %23)
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = getelementptr inbounds double, ptr %23, i32 -1
  store ptr %26, ptr %7, align 8
  br label %22, !llvm.loop !96

27:                                               ; preds = %22
  %28 = load ptr, ptr %6, align 8
  %29 = icmp ult ptr %28, %23
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  ret ptr %28

31:                                               ; preds = %27
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %28, ptr noundef %23)
  %32 = getelementptr inbounds nuw double, ptr %28, i32 1
  store ptr %32, ptr %6, align 8
  br label %9, !llvm.loop !97
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca double, align 8
  %23 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", align 1
  %24 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store i8 %2, ptr %18, align 1
  store ptr %0, ptr %19, align 8
  store ptr %1, ptr %20, align 8
  %25 = icmp eq ptr %0, %1
  br i1 %25, label %53, label %26

26:                                               ; preds = %3
  %27 = getelementptr inbounds double, ptr %0, i64 1
  store ptr %27, ptr %21, align 8
  br label %28

28:                                               ; preds = %49, %26
  %29 = phi ptr [ %51, %49 ], [ %0, %26 ]
  %30 = phi ptr [ %52, %49 ], [ %27, %26 ]
  %31 = icmp ne ptr %30, %1
  br i1 %31, label %32, label %53

32:                                               ; preds = %28
  %33 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef %30, ptr noundef %29)
  br i1 %33, label %34, label %45

34:                                               ; preds = %32
  %35 = load ptr, ptr %21, align 8
  %36 = load double, ptr %35, align 8
  store double %36, ptr %22, align 8
  %37 = getelementptr inbounds double, ptr %35, i64 1
  store ptr %29, ptr %15, align 8
  store ptr %35, ptr %16, align 8
  store ptr %37, ptr %17, align 8
  %38 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %29)
  %39 = load ptr, ptr %16, align 8
  %40 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %39)
  %41 = load ptr, ptr %17, align 8
  store ptr %38, ptr %12, align 8
  store ptr %40, ptr %13, align 8
  store ptr %41, ptr %14, align 8
  store ptr %38, ptr %7, align 8
  store ptr %40, ptr %8, align 8
  store ptr %41, ptr %9, align 8
  store ptr %38, ptr %4, align 8
  store ptr %40, ptr %5, align 8
  store ptr %41, ptr %6, align 8
  %42 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %38, ptr noundef %40, ptr noundef %41)
  store ptr %14, ptr %10, align 8
  store ptr %42, ptr %11, align 8
  %43 = load double, ptr %22, align 8
  %44 = load ptr, ptr %19, align 8
  store double %43, ptr %44, align 8
  %.pre = load ptr, ptr %21, align 8
  br label %49

45:                                               ; preds = %32
  %46 = load ptr, ptr %21, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr align 1 %18, i64 1, i1 false)
  %47 = load i8, ptr %24, align 1
  %48 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %47)
  store i8 %48, ptr %23, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %46, i8 %48)
  br label %49

49:                                               ; preds = %45, %34
  %50 = phi ptr [ %46, %45 ], [ %.pre, %34 ]
  %51 = phi ptr [ %29, %45 ], [ %44, %34 ]
  %52 = getelementptr inbounds nuw double, ptr %50, i32 1
  store ptr %52, ptr %21, align 8
  br label %28, !llvm.loop !98

53:                                               ; preds = %3, %28
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.8", align 1
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %0, ptr %7, align 8
  br label %10

10:                                               ; preds = %13, %3
  %11 = phi ptr [ %16, %13 ], [ %0, %3 ]
  %12 = icmp ne ptr %11, %1
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %14 = load i8, ptr %9, align 1
  %15 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %14)
  store i8 %15, ptr %8, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %11, i8 %15)
  %16 = getelementptr inbounds nuw double, ptr %11, i32 1
  store ptr %16, ptr %7, align 8
  br label %10, !llvm.loop !99

17:                                               ; preds = %10
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
  store ptr %0, ptr %6, align 8
  %8 = getelementptr inbounds double, ptr %0, i32 -1
  store ptr %8, ptr %6, align 8
  br label %9

9:                                                ; preds = %13, %2
  %10 = phi ptr [ %11, %13 ], [ %0, %2 ]
  %11 = phi ptr [ %16, %13 ], [ %8, %2 ]
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load double, ptr %11, align 8
  store double %14, ptr %10, align 8
  store ptr %11, ptr %4, align 8
  %15 = load ptr, ptr %6, align 8
  %16 = getelementptr inbounds double, ptr %15, i32 -1
  store ptr %16, ptr %6, align 8
  br label %9, !llvm.loop !100

17:                                               ; preds = %9
  %18 = load double, ptr %5, align 8
  store double %18, ptr %10, align 8
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
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEC2ES3_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"struct.std::less", align 1
  %4 = alloca ptr, align 8
  store i8 %1, ptr %3, align 1
  store ptr %0, ptr %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %9 = icmp ne ptr %0, %1
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %14)
  %16 = mul nsw i64 %15, 2
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %16, i8 undef)
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 undef)
  br label %17

17:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local i8 @_ZN9__gnu_cxx5__ops16__iter_less_iterEv() #5 comdat {
  %1 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  ret i8 undef
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %10 = alloca ptr, align 8
  %11 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %12 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store i8 %3, ptr %5, align 1
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  br label %13

13:                                               ; preds = %24, %4
  %14 = phi i64 [ %25, %24 ], [ %2, %4 ]
  %15 = phi ptr [ %26, %24 ], [ %1, %4 ]
  %16 = ptrtoint ptr %15 to i64
  %17 = ptrtoint ptr %0 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 8
  %20 = icmp sgt i64 %19, 16
  br i1 %20, label %21, label %27

21:                                               ; preds = %13
  %22 = icmp eq i64 %14, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %15, ptr noundef %15, i8 undef)
  br label %27

24:                                               ; preds = %21
  %25 = add nsw i64 %14, -1
  store i64 %25, ptr %8, align 8
  %26 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(ptr noundef %0, ptr noundef %15, i8 undef)
  store ptr %26, ptr %10, align 8
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %26, ptr noundef %15, i64 noundef %25, i8 undef)
  store ptr %26, ptr %7, align 8
  br label %13, !llvm.loop !101

27:                                               ; preds = %23, %13
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %10 = ptrtoint ptr %1 to i64
  %11 = ptrtoint ptr %0 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  %14 = icmp sgt i64 %13, 16
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = getelementptr inbounds double, ptr %0, i64 16
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %16, i8 undef)
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %16, ptr noundef %1, i8 undef)
  br label %18

17:                                               ; preds = %3
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 undef)
  br label %18

18:                                               ; preds = %17, %15
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store i8 %3, ptr %5, align 1
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 undef)
  call void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %10 = ptrtoint ptr %1 to i64
  %11 = ptrtoint ptr %0 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  %14 = sdiv i64 %13, 2
  %15 = getelementptr inbounds double, ptr %0, i64 %14
  store ptr %15, ptr %7, align 8
  %16 = getelementptr inbounds double, ptr %0, i64 1
  %17 = getelementptr inbounds double, ptr %1, i64 -1
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_(ptr noundef %0, ptr noundef %16, ptr noundef %15, ptr noundef %17, i8 undef)
  %18 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_(ptr noundef %16, ptr noundef %1, ptr noundef %0, i8 undef)
  ret ptr %18
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
  br label %10

10:                                               ; preds = %18, %4
  %11 = phi ptr [ %19, %18 ], [ %0, %4 ]
  %12 = phi ptr [ %20, %18 ], [ %1, %4 ]
  %13 = icmp ult ptr %12, %2
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %12, ptr noundef %11)
  %.pre = load ptr, ptr %9, align 8
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = load ptr, ptr %7, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %0, ptr noundef %17, ptr noundef %.pre, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %0, %16 ], [ %11, %14 ]
  %20 = getelementptr inbounds nuw double, ptr %.pre, i32 1
  store ptr %20, ptr %9, align 8
  br label %10, !llvm.loop !102

21:                                               ; preds = %10
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
  %8 = phi ptr [ %15, %14 ], [ %1, %3 ]
  %9 = ptrtoint ptr %8 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 8
  %13 = icmp sgt i64 %12, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = getelementptr inbounds double, ptr %8, i32 -1
  store ptr %15, ptr %5, align 8
  %16 = load ptr, ptr %6, align 8, !nonnull !53
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %0, ptr noundef %15, ptr noundef %15, ptr noundef nonnull align 1 dereferenceable(1) %16)
  br label %7, !llvm.loop !103

17:                                               ; preds = %7
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = icmp slt i64 %14, 2
  br i1 %15, label %26, label %16

16:                                               ; preds = %3
  store i64 %14, ptr %7, align 8
  %17 = sub nsw i64 %14, 2
  %18 = sdiv i64 %17, 2
  store i64 %18, ptr %8, align 8
  br label %19

19:                                               ; preds = %24, %16
  %20 = phi i64 [ %25, %24 ], [ %18, %16 ]
  %21 = getelementptr inbounds double, ptr %0, i64 %20
  %22 = load double, ptr %21, align 8
  store double %22, ptr %9, align 8
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %0, i64 noundef %20, i64 noundef %14, double noundef %22, i8 undef)
  %23 = icmp eq i64 %20, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = add nsw i64 %20, -1
  store i64 %25, ptr %8, align 8
  br label %19, !llvm.loop !104

26:                                               ; preds = %19, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) #5 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load double, ptr %1, align 8
  %8 = load double, ptr %2, align 8
  %9 = fcmp olt double %7, %8
  ret i1 %9
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #0 comdat {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca double, align 8
  %10 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %11 = load double, ptr %2, align 8
  store double %11, ptr %9, align 8
  %12 = load double, ptr %0, align 8
  store double %12, ptr %2, align 8
  %13 = ptrtoint ptr %1 to i64
  %14 = ptrtoint ptr %0 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 8
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %0, i64 noundef 0, i64 noundef %16, double noundef %11, i8 undef)
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
  %14 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store i8 %4, ptr %6, align 1
  store ptr %0, ptr %7, align 8
  store i64 %1, ptr %8, align 8
  store i64 %2, ptr %9, align 8
  store double %3, ptr %10, align 8
  store i64 %1, ptr %11, align 8
  store i64 %1, ptr %12, align 8
  br label %15

15:                                               ; preds = %30, %5
  %16 = phi ptr [ %32, %30 ], [ %0, %5 ]
  %17 = phi i64 [ %31, %30 ], [ %1, %5 ]
  %18 = sub nsw i64 %2, 1
  %19 = sdiv i64 %18, 2
  %20 = icmp slt i64 %17, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = add nsw i64 %17, 1
  %23 = mul nsw i64 2, %22
  store i64 %23, ptr %12, align 8
  %24 = getelementptr inbounds double, ptr %16, i64 %23
  %25 = sub nsw i64 %23, 1
  %26 = getelementptr inbounds double, ptr %16, i64 %25
  %27 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %24, ptr noundef %26)
  %.pre = load i64, ptr %12, align 8
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = add nsw i64 %.pre, -1
  store i64 %29, ptr %12, align 8
  br label %30

30:                                               ; preds = %28, %21
  %31 = phi i64 [ %29, %28 ], [ %.pre, %21 ]
  %32 = load ptr, ptr %7, align 8
  %33 = getelementptr inbounds double, ptr %32, i64 %31
  %34 = load double, ptr %33, align 8
  %35 = load i64, ptr %8, align 8
  %36 = getelementptr inbounds double, ptr %32, i64 %35
  store double %34, ptr %36, align 8
  store i64 %31, ptr %8, align 8
  br label %15, !llvm.loop !105

37:                                               ; preds = %15
  %38 = and i64 %2, 1
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = sub nsw i64 %2, 2
  %42 = sdiv i64 %41, 2
  %43 = icmp eq i64 %17, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = add nsw i64 %17, 1
  %46 = mul nsw i64 2, %45
  store i64 %46, ptr %12, align 8
  %47 = sub nsw i64 %46, 1
  %48 = getelementptr inbounds double, ptr %16, i64 %47
  %49 = load double, ptr %48, align 8
  %50 = getelementptr inbounds double, ptr %16, i64 %17
  store double %49, ptr %50, align 8
  store i64 %47, ptr %8, align 8
  br label %51

51:                                               ; preds = %44, %40, %37
  %52 = phi i64 [ %47, %44 ], [ %17, %40 ], [ %17, %37 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(ptr noundef nonnull align 1 dereferenceable(1) %13, i8 undef)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_(ptr noundef %16, i64 noundef %52, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %13)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %4 = alloca ptr, align 8
  store i8 %1, ptr %3, align 1
  store ptr %0, ptr %4, align 8
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
  %12 = sub nsw i64 %1, 1
  %13 = sdiv i64 %12, 2
  store i64 %13, ptr %11, align 8
  br label %14

14:                                               ; preds = %22, %5
  %15 = phi i64 [ %30, %22 ], [ %13, %5 ]
  %16 = phi ptr [ %23, %22 ], [ %0, %5 ]
  %17 = phi i64 [ %24, %22 ], [ %1, %5 ]
  %18 = icmp sgt i64 %17, %2
  br i1 %18, label %19, label %.critedge

19:                                               ; preds = %14
  %20 = getelementptr inbounds double, ptr %16, i64 %15
  %21 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br i1 %21, label %22, label %.critedge

22:                                               ; preds = %19
  %23 = load ptr, ptr %6, align 8
  %24 = load i64, ptr %11, align 8
  %25 = getelementptr inbounds double, ptr %23, i64 %24
  %26 = load double, ptr %25, align 8
  %27 = load i64, ptr %7, align 8
  %28 = getelementptr inbounds double, ptr %23, i64 %27
  store double %26, ptr %28, align 8
  store i64 %24, ptr %7, align 8
  %29 = sub nsw i64 %24, 1
  %30 = sdiv i64 %29, 2
  store i64 %30, ptr %11, align 8
  br label %14, !llvm.loop !106

.critedge:                                        ; preds = %14, %19
  %31 = load double, ptr %9, align 8
  %32 = load ptr, ptr %6, align 8
  %33 = load i64, ptr %7, align 8
  %34 = getelementptr inbounds double, ptr %32, i64 %33
  store double %31, ptr %34, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #5 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load double, ptr %1, align 8
  %8 = load double, ptr %2, align 8
  %9 = fcmp olt double %7, %8
  ret i1 %9
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
  br i1 %11, label %12, label %19

12:                                               ; preds = %5
  %13 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %26

15:                                               ; preds = %12
  %16 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %26

18:                                               ; preds = %15
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %26

19:                                               ; preds = %5
  %20 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %1, ptr noundef %3)
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1)
  br label %26

22:                                               ; preds = %19
  %23 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %2, ptr noundef %3)
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %3)
  br label %26

25:                                               ; preds = %22
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %2)
  br label %26

26:                                               ; preds = %21, %25, %24, %14, %18, %17
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
  %18 = getelementptr inbounds nuw double, ptr %17, i32 1
  store ptr %18, ptr %6, align 8
  %.pre = load ptr, ptr %8, align 8
  br label %12, !llvm.loop !107

19:                                               ; preds = %12
  %20 = load ptr, ptr %7, align 8
  %21 = getelementptr inbounds double, ptr %20, i32 -1
  store ptr %21, ptr %7, align 8
  %.pre1 = load ptr, ptr %8, align 8
  br label %22

22:                                               ; preds = %25, %19
  %23 = phi ptr [ %26, %25 ], [ %21, %19 ]
  %24 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.pre1, ptr noundef %23)
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = getelementptr inbounds double, ptr %23, i32 -1
  store ptr %26, ptr %7, align 8
  br label %22, !llvm.loop !108

27:                                               ; preds = %22
  %28 = load ptr, ptr %6, align 8
  %29 = icmp ult ptr %28, %23
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  ret ptr %28

31:                                               ; preds = %27
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %28, ptr noundef %23)
  %32 = getelementptr inbounds nuw double, ptr %28, i32 1
  store ptr %32, ptr %6, align 8
  br label %9, !llvm.loop !109
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca double, align 8
  %23 = alloca %"struct.__gnu_cxx::__ops::_Val_less_iter", align 1
  %24 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store i8 %2, ptr %18, align 1
  store ptr %0, ptr %19, align 8
  store ptr %1, ptr %20, align 8
  %25 = icmp eq ptr %0, %1
  br i1 %25, label %54, label %26

26:                                               ; preds = %3
  %27 = getelementptr inbounds double, ptr %0, i64 1
  store ptr %27, ptr %21, align 8
  br label %28

28:                                               ; preds = %50, %26
  %29 = phi ptr [ %52, %50 ], [ %0, %26 ]
  %30 = phi ptr [ %53, %50 ], [ %27, %26 ]
  %31 = icmp ne ptr %30, %1
  br i1 %31, label %32, label %54

32:                                               ; preds = %28
  %33 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef %30, ptr noundef %29)
  br i1 %33, label %34, label %45

34:                                               ; preds = %32
  %35 = load ptr, ptr %21, align 8
  %36 = load double, ptr %35, align 8
  store double %36, ptr %22, align 8
  %37 = getelementptr inbounds double, ptr %35, i64 1
  store ptr %29, ptr %15, align 8
  store ptr %35, ptr %16, align 8
  store ptr %37, ptr %17, align 8
  %38 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %29)
  %39 = load ptr, ptr %16, align 8
  %40 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %39)
  %41 = load ptr, ptr %17, align 8
  store ptr %38, ptr %12, align 8
  store ptr %40, ptr %13, align 8
  store ptr %41, ptr %14, align 8
  store ptr %38, ptr %7, align 8
  store ptr %40, ptr %8, align 8
  store ptr %41, ptr %9, align 8
  store ptr %38, ptr %4, align 8
  store ptr %40, ptr %5, align 8
  store ptr %41, ptr %6, align 8
  %42 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %38, ptr noundef %40, ptr noundef %41)
  store ptr %14, ptr %10, align 8
  store ptr %42, ptr %11, align 8
  %43 = load double, ptr %22, align 8
  %44 = load ptr, ptr %19, align 8
  store double %43, ptr %44, align 8
  %.pre = load ptr, ptr %21, align 8
  br label %50

45:                                               ; preds = %32
  %46 = load ptr, ptr %21, align 8
  %47 = load i8, ptr %24, align 1
  %48 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 %47)
  %49 = load i8, ptr %23, align 1
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %46, i8 %49)
  br label %50

50:                                               ; preds = %45, %34
  %51 = phi ptr [ %46, %45 ], [ %.pre, %34 ]
  %52 = phi ptr [ %29, %45 ], [ %44, %34 ]
  %53 = getelementptr inbounds nuw double, ptr %51, i32 1
  store ptr %53, ptr %21, align 8
  br label %28, !llvm.loop !110

54:                                               ; preds = %3, %28
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1, i8 %2) #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"struct.__gnu_cxx::__ops::_Val_less_iter", align 1
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store i8 %2, ptr %4, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %0, ptr %7, align 8
  br label %10

10:                                               ; preds = %13, %3
  %11 = phi ptr [ %15, %13 ], [ %0, %3 ]
  %12 = icmp ne ptr %11, %1
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 undef)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %11, i8 undef)
  %15 = getelementptr inbounds nuw double, ptr %11, i32 1
  store ptr %15, ptr %7, align 8
  br label %10, !llvm.loop !111

16:                                               ; preds = %10
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
  store ptr %0, ptr %6, align 8
  %8 = getelementptr inbounds double, ptr %0, i32 -1
  store ptr %8, ptr %6, align 8
  br label %9

9:                                                ; preds = %13, %2
  %10 = phi ptr [ %11, %13 ], [ %0, %2 ]
  %11 = phi ptr [ %16, %13 ], [ %8, %2 ]
  %12 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load double, ptr %11, align 8
  store double %14, ptr %10, align 8
  store ptr %11, ptr %4, align 8
  %15 = load ptr, ptr %6, align 8
  %16 = getelementptr inbounds double, ptr %15, i32 -1
  store ptr %16, ptr %6, align 8
  br label %9, !llvm.loop !112

17:                                               ; preds = %9
  %18 = load double, ptr %5, align 8
  store double %18, ptr %10, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 %0) #5 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Val_less_iter", align 1
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store i8 %0, ptr %3, align 1
  ret i8 undef
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) #5 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load double, ptr %1, align 8
  %8 = load double, ptr %2, align 8
  %9 = fcmp olt double %7, %8
  ret i1 %9
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
