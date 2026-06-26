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
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr @current_test, align 4
  %9 = load i32, ptr @allocated_results, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %7, %2
  %12 = load i32, ptr @allocated_results, align 4
  %13 = add nsw i32 %12, 10
  store i32 %13, ptr @allocated_results, align 4
  %14 = load ptr, ptr @results, align 8
  %15 = sext i32 %13 to i64
  %16 = mul i64 %15, 16
  %17 = call ptr @realloc(ptr noundef %14, i64 noundef %16) #13
  store ptr %17, ptr @results, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load i32, ptr @allocated_results, align 4
  %21 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str, i32 noundef %20)
  call void @exit(i32 noundef -1) #14
  unreachable

22:                                               ; preds = %11
  br label %23

23:                                               ; preds = %22, %7
  %24 = load double, ptr %3, align 8
  %25 = load ptr, ptr @results, align 8
  %26 = load i32, ptr @current_test, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.one_result, ptr %25, i64 %27
  store double %24, ptr %28, align 8
  %29 = load ptr, ptr %4, align 8
  %30 = load ptr, ptr @results, align 8
  %31 = load i32, ptr @current_test, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.one_result, ptr %30, i64 %32
  %34 = getelementptr inbounds nuw %struct.one_result, ptr %33, i32 0, i32 1
  store ptr %29, ptr %34, align 8
  %35 = load i32, ptr @current_test, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr @current_test, align 4
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
  %17 = load i32, ptr %7, align 4
  %18 = sitofp i32 %17 to double
  %19 = load i32, ptr %8, align 4
  %20 = sitofp i32 %19 to double
  %21 = fmul double %18, %20
  %22 = fdiv double %21, 1.000000e+06
  store double %22, ptr %12, align 8
  store double 0.000000e+00, ptr %13, align 8
  store double 0.000000e+00, ptr %14, align 8
  store i32 12, ptr %15, align 4
  store i32 0, ptr %11, align 4
  %.promoted1 = load i32, ptr %16, align 4
  %.promoted3 = load i32, ptr %15, align 4
  br label %23

23:                                               ; preds = %41, %5
  %24 = phi i32 [ %40, %41 ], [ %.promoted3, %5 ]
  %25 = phi i32 [ %36, %41 ], [ %.promoted1, %5 ]
  %26 = phi i32 [ %42, %41 ], [ 0, %5 ]
  %27 = load i32, ptr @current_test, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %23
  %30 = load ptr, ptr @results, align 8
  %31 = sext i32 %26 to i64
  %32 = getelementptr inbounds %struct.one_result, ptr %30, i64 %31
  %33 = getelementptr inbounds nuw %struct.one_result, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8
  %35 = call i64 @strlen(ptr noundef %34) #15
  %36 = trunc i64 %35 to i32
  %37 = icmp sgt i32 %36, %24
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %29
  %40 = phi i32 [ %36, %38 ], [ %24, %29 ]
  br label %41

41:                                               ; preds = %39
  %42 = add nsw i32 %26, 1
  br label %23, !llvm.loop !7

43:                                               ; preds = %23
  store i32 %26, ptr %11, align 4
  store i32 %25, ptr %16, align 4
  store i32 %24, ptr %15, align 4
  %44 = sub nsw i32 %24, 12
  %45 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.1, i32 noundef %44, ptr noundef @.str.2)
  %46 = load i32, ptr %15, align 4
  %47 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.3, i32 noundef %46, ptr noundef @.str.2)
  store i32 0, ptr %11, align 4
  %48 = load i32, ptr %15, align 4
  %49 = sext i32 %48 to i64
  %50 = load double, ptr %12, align 8
  br label %51

51:                                               ; preds = %73, %43
  %52 = phi i32 [ %74, %73 ], [ 0, %43 ]
  %53 = load i32, ptr @current_test, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %51
  %56 = load ptr, ptr @results, align 8
  %57 = sext i32 %52 to i64
  %58 = getelementptr inbounds %struct.one_result, ptr %56, i64 %57
  %59 = getelementptr inbounds nuw %struct.one_result, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %59, align 8
  %61 = call i64 @strlen(ptr noundef %60) #15
  %62 = sub i64 %49, %61
  %63 = trunc i64 %62 to i32
  %64 = load ptr, ptr @results, align 8
  %65 = getelementptr inbounds %struct.one_result, ptr %64, i64 %57
  %66 = getelementptr inbounds nuw %struct.one_result, ptr %65, i32 0, i32 1
  %67 = load ptr, ptr %66, align 8
  %68 = load double, ptr %65, align 8
  %69 = fdiv double %50, %68
  %70 = load double, ptr %64, align 8
  %71 = fdiv double %68, %70
  %72 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.4, i32 noundef %52, i32 noundef %63, ptr noundef @.str.5, ptr noundef %67, double noundef %68, double noundef %69, double noundef %71)
  br label %73

73:                                               ; preds = %55
  %74 = add nsw i32 %52, 1
  br label %51, !llvm.loop !9

75:                                               ; preds = %51
  store i32 0, ptr %11, align 4
  %76 = load i32, ptr @current_test, align 4
  %77 = load ptr, ptr @results, align 8
  %.promoted9 = load double, ptr %13, align 8
  br label %78

78:                                               ; preds = %87, %75
  %79 = phi double [ %86, %87 ], [ %.promoted9, %75 ]
  %80 = phi i32 [ %88, %87 ], [ 0, %75 ]
  %81 = icmp slt i32 %80, %76
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = sext i32 %80 to i64
  %84 = getelementptr inbounds %struct.one_result, ptr %77, i64 %83
  %85 = load double, ptr %84, align 8
  %86 = fadd double %79, %85
  br label %87

87:                                               ; preds = %82
  %88 = add nsw i32 %80, 1
  br label %78, !llvm.loop !10

89:                                               ; preds = %78
  store i32 %80, ptr %11, align 4
  store double %79, ptr %13, align 8
  %90 = load ptr, ptr %6, align 8
  %91 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.6, ptr noundef %90, double noundef %79)
  %92 = load i32, ptr @current_test, align 4
  %93 = icmp sgt i32 %92, 1
  br i1 %93, label %94, label %122

94:                                               ; preds = %89
  %95 = load i32, ptr %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %122

97:                                               ; preds = %94
  store i32 1, ptr %11, align 4
  %.promoted13 = load double, ptr %14, align 8
  br label %98

98:                                               ; preds = %112, %97
  %99 = phi double [ %111, %112 ], [ %.promoted13, %97 ]
  %100 = phi i32 [ %113, %112 ], [ 1, %97 ]
  %101 = load i32, ptr @current_test, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %98
  %104 = load ptr, ptr @results, align 8
  %105 = sext i32 %100 to i64
  %106 = getelementptr inbounds %struct.one_result, ptr %104, i64 %105
  %107 = load double, ptr %106, align 8
  %108 = load double, ptr %104, align 8
  %109 = fdiv double %107, %108
  %110 = call double @log(double noundef %109) #15
  %111 = fadd double %99, %110
  br label %112

112:                                              ; preds = %103
  %113 = add nsw i32 %100, 1
  br label %98, !llvm.loop !11

114:                                              ; preds = %98
  store i32 %100, ptr %11, align 4
  store double %99, ptr %14, align 8
  %115 = load ptr, ptr %6, align 8
  %116 = load i32, ptr @current_test, align 4
  %117 = sub nsw i32 %116, 1
  %118 = sitofp i32 %117 to double
  %119 = fdiv double %99, %118
  %120 = call double @exp(double noundef %119) #15
  %121 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.7, ptr noundef %115, double noundef %120)
  br label %122

122:                                              ; preds = %114, %94, %89
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
  %.promoted1 = load i32, ptr %8, align 4
  %.promoted3 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %27, %2
  %10 = phi i32 [ %26, %27 ], [ %.promoted3, %2 ]
  %11 = phi i32 [ %22, %27 ], [ %.promoted1, %2 ]
  %12 = phi i32 [ %28, %27 ], [ 0, %2 ]
  %13 = load i32, ptr @current_test, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %9
  %16 = load ptr, ptr @results, align 8
  %17 = sext i32 %12 to i64
  %18 = getelementptr inbounds %struct.one_result, ptr %16, i64 %17
  %19 = getelementptr inbounds nuw %struct.one_result, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = call i64 @strlen(ptr noundef %20) #15
  %22 = trunc i64 %21 to i32
  %23 = icmp sgt i32 %22, %10
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24, %15
  %26 = phi i32 [ %22, %24 ], [ %10, %15 ]
  br label %27

27:                                               ; preds = %25
  %28 = add nsw i32 %12, 1
  br label %9, !llvm.loop !12

29:                                               ; preds = %9
  store i32 %12, ptr %5, align 4
  store i32 %11, ptr %8, align 4
  store i32 %10, ptr %7, align 4
  %30 = load ptr, ptr %3, align 8
  %31 = sub nsw i32 %10, 12
  %32 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %30, ptr noundef @.str.8, i32 noundef %31, ptr noundef @.str.2)
  %33 = load ptr, ptr %3, align 8
  %34 = load i32, ptr %7, align 4
  %35 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %33, ptr noundef @.str.9, i32 noundef %34, ptr noundef @.str.2)
  store i32 0, ptr %5, align 4
  %36 = load ptr, ptr %3, align 8
  %37 = load i32, ptr %7, align 4
  %38 = sext i32 %37 to i64
  br label %39

39:                                               ; preds = %58, %29
  %40 = phi i32 [ %59, %58 ], [ 0, %29 ]
  %41 = load i32, ptr @current_test, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %39
  %44 = load ptr, ptr @results, align 8
  %45 = sext i32 %40 to i64
  %46 = getelementptr inbounds %struct.one_result, ptr %44, i64 %45
  %47 = getelementptr inbounds nuw %struct.one_result, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 8
  %49 = call i64 @strlen(ptr noundef %48) #15
  %50 = sub i64 %38, %49
  %51 = trunc i64 %50 to i32
  %52 = load ptr, ptr @results, align 8
  %53 = getelementptr inbounds %struct.one_result, ptr %52, i64 %45
  %54 = getelementptr inbounds nuw %struct.one_result, ptr %53, i32 0, i32 1
  %55 = load ptr, ptr %54, align 8
  %56 = load double, ptr %53, align 8
  %57 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %36, ptr noundef @.str.10, i32 noundef %40, i32 noundef %51, ptr noundef @.str.5, ptr noundef %55, double noundef %56)
  br label %58

58:                                               ; preds = %43
  %59 = add nsw i32 %40, 1
  br label %39, !llvm.loop !13

60:                                               ; preds = %39
  store i32 0, ptr %5, align 4
  %61 = load i32, ptr @current_test, align 4
  %62 = load ptr, ptr @results, align 8
  %.promoted9 = load double, ptr %6, align 8
  br label %63

63:                                               ; preds = %72, %60
  %64 = phi double [ %71, %72 ], [ %.promoted9, %60 ]
  %65 = phi i32 [ %73, %72 ], [ 0, %60 ]
  %66 = icmp slt i32 %65, %61
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = sext i32 %65 to i64
  %69 = getelementptr inbounds %struct.one_result, ptr %62, i64 %68
  %70 = load double, ptr %69, align 8
  %71 = fadd double %64, %70
  br label %72

72:                                               ; preds = %67
  %73 = add nsw i32 %65, 1
  br label %63, !llvm.loop !14

74:                                               ; preds = %63
  store i32 %65, ptr %5, align 4
  store double %64, ptr %6, align 8
  %75 = load ptr, ptr %3, align 8
  %76 = load ptr, ptr %4, align 8
  %77 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %75, ptr noundef @.str.6, ptr noundef %76, double noundef %64)
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
  %6 = load ptr, ptr %4, align 8
  %7 = load double, ptr %6, align 8
  %8 = load double, ptr %1, align 8
  %9 = fcmp olt double %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 -1, ptr %3, align 4
  br label %15

11:                                               ; preds = %2
  %12 = fcmp ogt double %7, %8
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  store i32 1, ptr %3, align 4
  br label %15

14:                                               ; preds = %11
  store i32 0, ptr %3, align 4
  br label %15

15:                                               ; preds = %14, %13, %10
  %16 = load i32, ptr %3, align 4
  ret i32 %16
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef zeroext i1 @_Z19less_than_function2dd(double noundef %0, double noundef %1) #5 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, ptr %3, align 8
  store double %1, ptr %4, align 8
  %5 = load double, ptr %3, align 8
  %6 = fcmp olt double %5, %1
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #5 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %5, align 8, !nonnull !15, !align !16
  %8 = load double, ptr %7, align 8
  %9 = load double, ptr %2, align 8
  %10 = fcmp olt double %8, %9
  ret i1 %10
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
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %4, align 8
  %13 = ptrtoint ptr %11 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 8
  %17 = icmp sgt i64 %16, 1
  br i1 %17, label %18, label %57

18:                                               ; preds = %3
  %19 = load double, ptr %12, align 8
  store double %19, ptr %7, align 8
  %20 = load ptr, ptr %4, align 8
  store ptr %20, ptr %8, align 8
  %21 = load ptr, ptr %5, align 8
  store ptr %21, ptr %9, align 8
  %22 = load ptr, ptr %6, align 8
  %23 = load double, ptr %7, align 8
  %.promoted = load ptr, ptr %8, align 8
  %.promoted7 = load double, ptr %10, align 8
  br label %24

24:                                               ; preds = %45, %18
  %25 = phi double [ %46, %45 ], [ %.promoted7, %18 ]
  %.lcssa26 = phi ptr [ %37, %45 ], [ %.promoted, %18 ]
  %.lcssa4 = phi ptr [ %28, %45 ], [ %21, %18 ]
  br label %26

26:                                               ; preds = %31, %24
  %27 = phi ptr [ %28, %31 ], [ %.lcssa4, %24 ]
  %28 = getelementptr inbounds double, ptr %27, i32 -1
  %29 = load double, ptr %28, align 8
  %30 = call noundef zeroext i1 %22(double noundef %23, double noundef %29)
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %26, !llvm.loop !17

32:                                               ; preds = %26
  %33 = icmp ult ptr %.lcssa26, %28
  br i1 %33, label %35, label %34

34:                                               ; preds = %32
  store ptr %28, ptr %9, align 8
  store ptr %.lcssa26, ptr %8, align 8
  store double %25, ptr %10, align 8
  br label %48

35:                                               ; preds = %32
  br label %36

36:                                               ; preds = %40, %35
  %37 = phi ptr [ %41, %40 ], [ %.lcssa26, %35 ]
  %38 = load double, ptr %37, align 8
  %39 = call noundef zeroext i1 %22(double noundef %38, double noundef %23)
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = getelementptr inbounds nuw double, ptr %37, i32 1
  br label %36, !llvm.loop !18

42:                                               ; preds = %36
  %43 = icmp ult ptr %37, %28
  br i1 %43, label %45, label %44

44:                                               ; preds = %42
  store ptr %28, ptr %9, align 8
  store ptr %37, ptr %8, align 8
  store double %25, ptr %10, align 8
  br label %48

45:                                               ; preds = %42
  %46 = load double, ptr %28, align 8
  %47 = load double, ptr %37, align 8
  store double %47, ptr %28, align 8
  store double %46, ptr %37, align 8
  br label %24, !llvm.loop !19

48:                                               ; preds = %44, %34
  %49 = load ptr, ptr %4, align 8
  %50 = load ptr, ptr %9, align 8
  %51 = getelementptr inbounds double, ptr %50, i64 1
  %52 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %49, ptr noundef %51, ptr noundef %52)
  %53 = load ptr, ptr %9, align 8
  %54 = getelementptr inbounds double, ptr %53, i64 1
  %55 = load ptr, ptr %5, align 8
  %56 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %54, ptr noundef %55, ptr noundef %56)
  br label %57

57:                                               ; preds = %48, %3
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
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %4, align 8
  %13 = ptrtoint ptr %11 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 8
  %17 = icmp sgt i64 %16, 1
  br i1 %17, label %18, label %57

18:                                               ; preds = %3
  %19 = load double, ptr %12, align 8
  store double %19, ptr %7, align 8
  %20 = load ptr, ptr %4, align 8
  store ptr %20, ptr %8, align 8
  %21 = load ptr, ptr %5, align 8
  store ptr %21, ptr %9, align 8
  %22 = load ptr, ptr %6, align 8
  %23 = load double, ptr %7, align 8
  %.promoted = load ptr, ptr %8, align 8
  %.promoted7 = load double, ptr %10, align 8
  br label %24

24:                                               ; preds = %45, %18
  %25 = phi double [ %46, %45 ], [ %.promoted7, %18 ]
  %.lcssa26 = phi ptr [ %37, %45 ], [ %.promoted, %18 ]
  %.lcssa4 = phi ptr [ %28, %45 ], [ %21, %18 ]
  br label %26

26:                                               ; preds = %31, %24
  %27 = phi ptr [ %28, %31 ], [ %.lcssa4, %24 ]
  %28 = getelementptr inbounds double, ptr %27, i32 -1
  %29 = load double, ptr %28, align 8
  %30 = call noundef zeroext i1 %22(double noundef %23, double noundef %29)
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %26, !llvm.loop !20

32:                                               ; preds = %26
  %33 = icmp ult ptr %.lcssa26, %28
  br i1 %33, label %35, label %34

34:                                               ; preds = %32
  store ptr %28, ptr %9, align 8
  store ptr %.lcssa26, ptr %8, align 8
  store double %25, ptr %10, align 8
  br label %48

35:                                               ; preds = %32
  br label %36

36:                                               ; preds = %40, %35
  %37 = phi ptr [ %41, %40 ], [ %.lcssa26, %35 ]
  %38 = load double, ptr %37, align 8
  %39 = call noundef zeroext i1 %22(double noundef %38, double noundef %23)
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = getelementptr inbounds nuw double, ptr %37, i32 1
  br label %36, !llvm.loop !21

42:                                               ; preds = %36
  %43 = icmp ult ptr %37, %28
  br i1 %43, label %45, label %44

44:                                               ; preds = %42
  store ptr %28, ptr %9, align 8
  store ptr %37, ptr %8, align 8
  store double %25, ptr %10, align 8
  br label %48

45:                                               ; preds = %42
  %46 = load double, ptr %28, align 8
  %47 = load double, ptr %37, align 8
  store double %47, ptr %28, align 8
  store double %46, ptr %37, align 8
  br label %24, !llvm.loop !22

48:                                               ; preds = %44, %34
  %49 = load ptr, ptr %4, align 8
  %50 = load ptr, ptr %9, align 8
  %51 = getelementptr inbounds double, ptr %50, i64 1
  %52 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %49, ptr noundef %51, ptr noundef %52)
  %53 = load ptr, ptr %9, align 8
  %54 = getelementptr inbounds double, ptr %53, i64 1
  %55 = load ptr, ptr %5, align 8
  %56 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %54, ptr noundef %55, ptr noundef %56)
  br label %57

57:                                               ; preds = %48, %3
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
  %18 = load i32, ptr %4, align 4
  %19 = icmp slt i32 1, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = getelementptr inbounds ptr, ptr %1, i64 1
  %22 = load ptr, ptr %21, align 8
  %23 = call i32 @atoi(ptr noundef %22)
  br label %25

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi i32 [ %23, %20 ], [ 300, %24 ]
  store i32 %26, ptr %7, align 4
  %27 = load i32, ptr %4, align 4
  %28 = icmp slt i32 2, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load ptr, ptr %5, align 8
  %31 = getelementptr inbounds ptr, ptr %30, i64 2
  %32 = load ptr, ptr %31, align 8
  %33 = call i32 @atoi(ptr noundef %32)
  br label %35

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %29
  %36 = phi i32 [ %33, %29 ], [ 10000, %34 ]
  store i32 %36, ptr %8, align 4
  %37 = add nsw i32 %36, 123
  call void @srand(i32 noundef %37)
  %38 = load i32, ptr %8, align 4
  %39 = sext i32 %38 to i64
  %40 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %39, i64 8)
  %41 = extractvalue { i64, i1 } %40, 1
  %42 = extractvalue { i64, i1 } %40, 0
  %43 = select i1 %41, i64 -1, i64 %42
  %44 = call noalias noundef nonnull ptr @_Znay(i64 noundef %43) #16
  store ptr %44, ptr %9, align 8
  store i32 0, ptr %10, align 4
  %45 = load i32, ptr %8, align 4
  %46 = load ptr, ptr %9, align 8
  br label %47

47:                                               ; preds = %55, %35
  %48 = phi i32 [ %56, %55 ], [ 0, %35 ]
  %49 = icmp slt i32 %48, %45
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = call i32 @rand()
  %52 = sitofp i32 %51 to double
  %53 = sext i32 %48 to i64
  %54 = getelementptr inbounds double, ptr %46, i64 %53
  store double %52, ptr %54, align 8
  br label %55

55:                                               ; preds = %50
  %56 = add nsw i32 %48, 1
  br label %47, !llvm.loop !23

57:                                               ; preds = %47
  store i32 %48, ptr %10, align 4
  %58 = load i32, ptr %8, align 4
  %59 = sext i32 %58 to i64
  %60 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %59, i64 8)
  %61 = extractvalue { i64, i1 } %60, 1
  %62 = extractvalue { i64, i1 } %60, 0
  %63 = select i1 %61, i64 -1, i64 %62
  %64 = call noalias noundef nonnull ptr @_Znay(i64 noundef %63) #16
  store ptr %64, ptr %11, align 8
  store i32 0, ptr %6, align 4
  %65 = load i32, ptr %7, align 4
  %66 = load ptr, ptr %9, align 8
  %67 = load i32, ptr %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds double, ptr %66, i64 %68
  %70 = load ptr, ptr %11, align 8
  %71 = getelementptr inbounds double, ptr %70, i64 %68
  br label %72

72:                                               ; preds = %77, %57
  %73 = phi i32 [ %78, %77 ], [ 0, %57 ]
  %74 = icmp slt i32 %73, %65
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %66, ptr noundef %69, ptr noundef %70)
  call void @qsort(ptr noundef %70, i64 noundef %68, i64 noundef 8, ptr noundef @_Z19less_than_function1PKvS0_)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %70, ptr noundef %71)
  br label %77

77:                                               ; preds = %75
  %78 = add nsw i32 %73, 1
  br label %72, !llvm.loop !24

79:                                               ; preds = %72
  store i32 0, ptr %6, align 4
  %80 = load i32, ptr %7, align 4
  %81 = load ptr, ptr %9, align 8
  %82 = load i32, ptr %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds double, ptr %81, i64 %83
  %85 = load ptr, ptr %11, align 8
  %86 = getelementptr inbounds double, ptr %85, i64 %83
  br label %87

87:                                               ; preds = %92, %79
  %88 = phi i32 [ %93, %92 ], [ 0, %79 ]
  %89 = icmp slt i32 %88, %80
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %81, ptr noundef %84, ptr noundef %85)
  call void @_Z18quicksort_functionPdS_PFbddE(ptr noundef %85, ptr noundef %86, ptr noundef @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %85, ptr noundef %86)
  br label %92

92:                                               ; preds = %90
  %93 = add nsw i32 %88, 1
  br label %87, !llvm.loop !25

94:                                               ; preds = %87
  store i32 0, ptr %6, align 4
  %95 = load i32, ptr %7, align 4
  %96 = load ptr, ptr %9, align 8
  %97 = load i32, ptr %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds double, ptr %96, i64 %98
  %100 = load ptr, ptr %11, align 8
  %101 = getelementptr inbounds double, ptr %100, i64 %98
  br label %102

102:                                              ; preds = %107, %94
  %103 = phi i32 [ %108, %107 ], [ 0, %94 ]
  %104 = icmp slt i32 %103, %95
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %96, ptr noundef %99, ptr noundef %100)
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %100, ptr noundef %101, ptr noundef @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %100, ptr noundef %101)
  br label %107

107:                                              ; preds = %105
  %108 = add nsw i32 %103, 1
  br label %102, !llvm.loop !26

109:                                              ; preds = %102
  store i32 0, ptr %6, align 4
  %110 = load i32, ptr %7, align 4
  %111 = load ptr, ptr %9, align 8
  %112 = load i32, ptr %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds double, ptr %111, i64 %113
  %115 = load ptr, ptr %11, align 8
  %116 = getelementptr inbounds double, ptr %115, i64 %113
  br label %117

117:                                              ; preds = %122, %109
  %118 = phi i32 [ %123, %122 ], [ 0, %109 ]
  %119 = icmp slt i32 %118, %110
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %111, ptr noundef %114, ptr noundef %115)
  call void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef %115, ptr noundef %116)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %115, ptr noundef %116)
  br label %122

122:                                              ; preds = %120
  %123 = add nsw i32 %118, 1
  br label %117, !llvm.loop !27

124:                                              ; preds = %117
  store i32 0, ptr %6, align 4
  %125 = load i32, ptr %7, align 4
  %126 = load ptr, ptr %9, align 8
  %127 = load i32, ptr %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds double, ptr %126, i64 %128
  %130 = load ptr, ptr %11, align 8
  %131 = getelementptr inbounds double, ptr %130, i64 %128
  br label %132

132:                                              ; preds = %137, %124
  %133 = phi i32 [ %138, %137 ], [ 0, %124 ]
  %134 = icmp slt i32 %133, %125
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %126, ptr noundef %129, ptr noundef %130)
  call void @_ZSt4sortIPdPFbddEEvT_S3_T0_(ptr noundef %130, ptr noundef %131, ptr noundef @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %130, ptr noundef %131)
  br label %137

137:                                              ; preds = %135
  %138 = add nsw i32 %133, 1
  br label %132, !llvm.loop !28

139:                                              ; preds = %132
  store i32 0, ptr %6, align 4
  %140 = load i32, ptr %7, align 4
  %141 = load ptr, ptr %9, align 8
  %142 = load i32, ptr %8, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds double, ptr %141, i64 %143
  %145 = load ptr, ptr %11, align 8
  %146 = getelementptr inbounds double, ptr %145, i64 %143
  %147 = load i8, ptr %12, align 1
  br label %148

148:                                              ; preds = %153, %139
  %149 = phi i32 [ %154, %153 ], [ 0, %139 ]
  %150 = icmp slt i32 %149, %140
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %141, ptr noundef %144, ptr noundef %145)
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %145, ptr noundef %146, i8 %147)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %145, ptr noundef %146)
  br label %153

153:                                              ; preds = %151
  %154 = add nsw i32 %149, 1
  br label %148, !llvm.loop !29

155:                                              ; preds = %148
  store i32 0, ptr %6, align 4
  %156 = load i32, ptr %7, align 4
  %157 = load ptr, ptr %11, align 8
  %158 = load i32, ptr %8, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds double, ptr %157, i64 %159
  %161 = load i8, ptr %13, align 1
  %162 = load ptr, ptr %9, align 8
  %163 = getelementptr inbounds double, ptr %162, i64 %159
  br label %164

164:                                              ; preds = %169, %155
  %165 = phi i32 [ %170, %169 ], [ 0, %155 ]
  %166 = icmp slt i32 %165, %156
  br i1 %166, label %167, label %171

167:                                              ; preds = %164
  call void @_ZSt4sortIPd17less_than_functorEvT_S2_T0_(ptr noundef %157, ptr noundef %160, i8 %161)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %157, ptr noundef %160)
  %168 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %162, ptr noundef %163, ptr noundef %157)
  br label %169

169:                                              ; preds = %167
  %170 = add nsw i32 %165, 1
  br label %164, !llvm.loop !30

171:                                              ; preds = %164
  store i32 0, ptr %6, align 4
  %172 = load i32, ptr %7, align 4
  %173 = load ptr, ptr %9, align 8
  %174 = load i32, ptr %8, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds double, ptr %173, i64 %175
  %177 = load ptr, ptr %11, align 8
  %178 = getelementptr inbounds double, ptr %177, i64 %175
  %179 = load i8, ptr %14, align 1
  br label %180

180:                                              ; preds = %185, %171
  %181 = phi i32 [ %186, %185 ], [ 0, %171 ]
  %182 = icmp slt i32 %181, %172
  br i1 %182, label %183, label %187

183:                                              ; preds = %180
  %184 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %173, ptr noundef %176, ptr noundef %177)
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %177, ptr noundef %178, i8 %179)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %177, ptr noundef %178)
  br label %185

185:                                              ; preds = %183
  %186 = add nsw i32 %181, 1
  br label %180, !llvm.loop !31

187:                                              ; preds = %180
  store i32 0, ptr %6, align 4
  %188 = load i32, ptr %7, align 4
  %189 = load ptr, ptr %9, align 8
  %190 = load i32, ptr %8, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds double, ptr %189, i64 %191
  %193 = load ptr, ptr %11, align 8
  %194 = getelementptr inbounds double, ptr %193, i64 %191
  %195 = load i8, ptr %15, align 1
  br label %196

196:                                              ; preds = %201, %187
  %197 = phi i32 [ %202, %201 ], [ 0, %187 ]
  %198 = icmp slt i32 %197, %188
  br i1 %198, label %199, label %203

199:                                              ; preds = %196
  %200 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %189, ptr noundef %192, ptr noundef %193)
  call void @_ZSt4sortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %193, ptr noundef %194, i8 %195)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %193, ptr noundef %194)
  br label %201

201:                                              ; preds = %199
  %202 = add nsw i32 %197, 1
  br label %196, !llvm.loop !32

203:                                              ; preds = %196
  store i32 0, ptr %6, align 4
  %204 = load i32, ptr %7, align 4
  %205 = load ptr, ptr %9, align 8
  %206 = load i32, ptr %8, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds double, ptr %205, i64 %207
  %209 = load ptr, ptr %11, align 8
  %210 = getelementptr inbounds double, ptr %209, i64 %207
  %211 = load i8, ptr %16, align 1
  br label %212

212:                                              ; preds = %217, %203
  %213 = phi i32 [ %218, %217 ], [ 0, %203 ]
  %214 = icmp slt i32 %213, %204
  br i1 %214, label %215, label %219

215:                                              ; preds = %212
  %216 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %205, ptr noundef %208, ptr noundef %209)
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %209, ptr noundef %210, i8 %211)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %209, ptr noundef %210)
  br label %217

217:                                              ; preds = %215
  %218 = add nsw i32 %213, 1
  br label %212, !llvm.loop !33

219:                                              ; preds = %212
  store i32 0, ptr %6, align 4
  %220 = load i32, ptr %7, align 4
  %221 = load ptr, ptr %9, align 8
  %222 = load i32, ptr %8, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds double, ptr %221, i64 %223
  %225 = load ptr, ptr %11, align 8
  %226 = getelementptr inbounds double, ptr %225, i64 %223
  %227 = load i8, ptr %17, align 1
  br label %228

228:                                              ; preds = %233, %219
  %229 = phi i32 [ %234, %233 ], [ 0, %219 ]
  %230 = icmp slt i32 %229, %220
  br i1 %230, label %231, label %235

231:                                              ; preds = %228
  %232 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %221, ptr noundef %224, ptr noundef %225)
  call void @_ZSt4sortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %225, ptr noundef %226, i8 %227)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %225, ptr noundef %226)
  br label %233

233:                                              ; preds = %231
  %234 = add nsw i32 %229, 1
  br label %228, !llvm.loop !34

235:                                              ; preds = %228
  store i32 0, ptr %6, align 4
  %236 = load i32, ptr %7, align 4
  %237 = load ptr, ptr %9, align 8
  %238 = load i32, ptr %8, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds double, ptr %237, i64 %239
  %241 = load ptr, ptr %11, align 8
  %242 = getelementptr inbounds double, ptr %241, i64 %239
  br label %243

243:                                              ; preds = %248, %235
  %244 = phi i32 [ %249, %248 ], [ 0, %235 ]
  %245 = icmp slt i32 %244, %236
  br i1 %245, label %246, label %250

246:                                              ; preds = %243
  %247 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %237, ptr noundef %240, ptr noundef %241)
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %241, ptr noundef %242)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %241, ptr noundef %242)
  br label %248

248:                                              ; preds = %246
  %249 = add nsw i32 %244, 1
  br label %243, !llvm.loop !35

250:                                              ; preds = %243
  store i32 0, ptr %6, align 4
  %251 = load i32, ptr %7, align 4
  %252 = load ptr, ptr %9, align 8
  %253 = load i32, ptr %8, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds double, ptr %252, i64 %254
  %256 = load ptr, ptr %11, align 8
  %257 = getelementptr inbounds double, ptr %256, i64 %254
  br label %258

258:                                              ; preds = %263, %250
  %259 = phi i32 [ %264, %263 ], [ 0, %250 ]
  %260 = icmp slt i32 %259, %251
  br i1 %260, label %261, label %265

261:                                              ; preds = %258
  %262 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %252, ptr noundef %255, ptr noundef %256)
  call void @_ZSt4sortIPdEvT_S1_(ptr noundef %256, ptr noundef %257)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %256, ptr noundef %257)
  br label %263

263:                                              ; preds = %261
  %264 = add nsw i32 %259, 1
  br label %258, !llvm.loop !36

265:                                              ; preds = %258
  store i32 %259, ptr %6, align 4
  %266 = load ptr, ptr %11, align 8
  %267 = icmp eq ptr %266, null
  br i1 %267, label %269, label %268

268:                                              ; preds = %265
  call void @_ZdaPv(ptr noundef %266) #17
  br label %269

269:                                              ; preds = %268, %265
  %270 = load ptr, ptr %9, align 8
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
  %18 = load ptr, ptr %15, align 8
  %19 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %18)
  %20 = load ptr, ptr %16, align 8
  %21 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %20)
  %22 = load ptr, ptr %17, align 8
  store ptr %19, ptr %12, align 8
  store ptr %21, ptr %13, align 8
  store ptr %22, ptr %14, align 8
  %23 = load ptr, ptr %12, align 8
  store ptr %23, ptr %4, align 8
  %24 = load ptr, ptr %13, align 8
  store ptr %24, ptr %5, align 8
  %25 = load ptr, ptr %14, align 8
  store ptr %25, ptr %6, align 8
  store ptr %23, ptr %7, align 8
  store ptr %24, ptr %8, align 8
  store ptr %25, ptr %9, align 8
  %26 = load ptr, ptr %7, align 8
  %27 = load ptr, ptr %8, align 8
  %28 = call noundef ptr @_ZSt14__copy_move_a2ILb0EPdS0_S0_ET2_T0_T1_S1_(ptr noundef %26, ptr noundef %27, ptr noundef %25)
  store ptr %14, ptr %10, align 8
  store ptr %28, ptr %11, align 8
  ret ptr %28
}

declare dso_local void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %0, ptr noundef %1) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  store ptr %6, ptr %5, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds nuw double, ptr %7, i32 1
  store ptr %8, ptr %3, align 8
  %9 = load ptr, ptr %4, align 8
  %.promoted2 = load ptr, ptr %5, align 8
  br label %10

10:                                               ; preds = %23, %2
  %11 = phi ptr [ %17, %23 ], [ %.promoted2, %2 ]
  %12 = phi ptr [ %15, %23 ], [ %8, %2 ]
  %13 = icmp ne ptr %12, %9
  br i1 %13, label %14, label %.loopexit

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw double, ptr %12, i32 1
  %16 = load double, ptr %12, align 8
  %17 = getelementptr inbounds nuw double, ptr %11, i32 1
  %18 = load double, ptr %11, align 8
  %19 = fcmp olt double %16, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  store ptr %15, ptr %3, align 8
  store ptr %17, ptr %5, align 8
  %21 = load i32, ptr @current_test, align 4
  %22 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.11, i32 noundef %21)
  br label %24

23:                                               ; preds = %14
  br label %10, !llvm.loop !37

.loopexit:                                        ; preds = %10
  store ptr %12, ptr %3, align 8
  store ptr %11, ptr %5, align 8
  br label %24

24:                                               ; preds = %.loopexit, %20
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
  %9 = load ptr, ptr %3, align 8
  %10 = ptrtoint ptr %1 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  %14 = icmp sgt i64 %13, 1
  br i1 %14, label %15, label %51

15:                                               ; preds = %2
  %16 = load double, ptr %9, align 8
  store double %16, ptr %5, align 8
  %17 = load ptr, ptr %3, align 8
  store ptr %17, ptr %6, align 8
  %18 = load ptr, ptr %4, align 8
  store ptr %18, ptr %7, align 8
  %19 = load double, ptr %5, align 8
  %.promoted = load ptr, ptr %6, align 8
  %.promoted7 = load double, ptr %8, align 8
  br label %20

20:                                               ; preds = %41, %15
  %21 = phi double [ %42, %41 ], [ %.promoted7, %15 ]
  %.lcssa26 = phi ptr [ %33, %41 ], [ %.promoted, %15 ]
  %.lcssa4 = phi ptr [ %24, %41 ], [ %18, %15 ]
  br label %22

22:                                               ; preds = %27, %20
  %23 = phi ptr [ %24, %27 ], [ %.lcssa4, %20 ]
  %24 = getelementptr inbounds double, ptr %23, i32 -1
  %25 = load double, ptr %24, align 8
  %26 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %19, double noundef %25)
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %22, !llvm.loop !38

28:                                               ; preds = %22
  %29 = icmp ult ptr %.lcssa26, %24
  br i1 %29, label %31, label %30

30:                                               ; preds = %28
  store ptr %24, ptr %7, align 8
  store ptr %.lcssa26, ptr %6, align 8
  store double %21, ptr %8, align 8
  br label %44

31:                                               ; preds = %28
  br label %32

32:                                               ; preds = %36, %31
  %33 = phi ptr [ %37, %36 ], [ %.lcssa26, %31 ]
  %34 = load double, ptr %33, align 8
  %35 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %34, double noundef %19)
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = getelementptr inbounds nuw double, ptr %33, i32 1
  br label %32, !llvm.loop !39

38:                                               ; preds = %32
  %39 = icmp ult ptr %33, %24
  br i1 %39, label %41, label %40

40:                                               ; preds = %38
  store ptr %24, ptr %7, align 8
  store ptr %33, ptr %6, align 8
  store double %21, ptr %8, align 8
  br label %44

41:                                               ; preds = %38
  %42 = load double, ptr %24, align 8
  %43 = load double, ptr %33, align 8
  store double %43, ptr %24, align 8
  store double %42, ptr %33, align 8
  br label %20, !llvm.loop !40

44:                                               ; preds = %40, %30
  %45 = load ptr, ptr %3, align 8
  %46 = load ptr, ptr %7, align 8
  %47 = getelementptr inbounds double, ptr %46, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %45, ptr noundef %47, ptr noundef @_Z19less_than_function2dd)
  %48 = load ptr, ptr %7, align 8
  %49 = getelementptr inbounds double, ptr %48, i64 1
  %50 = load ptr, ptr %4, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %49, ptr noundef %50, ptr noundef @_Z19less_than_function2dd)
  br label %51

51:                                               ; preds = %44, %2
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
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = call i64 @_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFbddEEENS0_15_Iter_comp_iterIT_EES5_(ptr noundef %2)
  %11 = inttoptr i64 %10 to ptr
  store ptr %11, ptr %7, align 8
  call void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %8, ptr noundef %9, i64 %10)
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
  %13 = load ptr, ptr %5, align 8
  %14 = ptrtoint ptr %1 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 8
  %18 = icmp sgt i64 %17, 1
  br i1 %18, label %19, label %59

19:                                               ; preds = %3
  %20 = load double, ptr %13, align 8
  store double %20, ptr %7, align 8
  %21 = load ptr, ptr %5, align 8
  store ptr %21, ptr %8, align 8
  %22 = load ptr, ptr %6, align 8
  store ptr %22, ptr %9, align 8
  br label %23

23:                                               ; preds = %43, %19
  %.promoted = load ptr, ptr %9, align 8
  br label %24

24:                                               ; preds = %28, %23
  %25 = phi ptr [ %26, %28 ], [ %.promoted, %23 ]
  %26 = getelementptr inbounds double, ptr %25, i32 -1
  %27 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %26)
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %24, !llvm.loop !41

29:                                               ; preds = %24
  store ptr %26, ptr %9, align 8
  %30 = load ptr, ptr %8, align 8
  %31 = icmp ult ptr %30, %26
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  br label %50

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %37, %33
  %35 = phi ptr [ %38, %37 ], [ %30, %33 ]
  %36 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = getelementptr inbounds nuw double, ptr %35, i32 1
  br label %34, !llvm.loop !42

39:                                               ; preds = %34
  store ptr %35, ptr %8, align 8
  %40 = load ptr, ptr %9, align 8
  %41 = icmp ult ptr %35, %40
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  br label %50

43:                                               ; preds = %39
  %44 = load double, ptr %40, align 8
  store double %44, ptr %10, align 8
  %45 = load ptr, ptr %8, align 8
  %46 = load double, ptr %45, align 8
  %47 = load ptr, ptr %9, align 8
  store double %46, ptr %47, align 8
  %48 = load double, ptr %10, align 8
  %49 = load ptr, ptr %8, align 8
  store double %48, ptr %49, align 8
  br label %23, !llvm.loop !43

50:                                               ; preds = %42, %32
  %51 = load ptr, ptr %5, align 8
  %52 = load ptr, ptr %9, align 8
  %53 = getelementptr inbounds double, ptr %52, i64 1
  %54 = load i8, ptr %11, align 1
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %51, ptr noundef %53, i8 %54)
  %55 = load ptr, ptr %9, align 8
  %56 = getelementptr inbounds double, ptr %55, i64 1
  %57 = load ptr, ptr %6, align 8
  %58 = load i8, ptr %12, align 1
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %56, ptr noundef %57, i8 %58)
  br label %59

59:                                               ; preds = %50, %3
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
  %9 = load ptr, ptr %5, align 8
  %10 = load i8, ptr %8, align 1
  %11 = call i8 @_ZN9__gnu_cxx5__ops16__iter_comp_iterI17less_than_functorEENS0_15_Iter_comp_iterIT_EES4_(i8 %10)
  store i8 %11, ptr %7, align 1
  call void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %9, ptr noundef %1, i8 %11)
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
  %13 = load ptr, ptr %5, align 8
  %14 = ptrtoint ptr %1 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 8
  %18 = icmp sgt i64 %17, 1
  br i1 %18, label %19, label %59

19:                                               ; preds = %3
  %20 = load double, ptr %13, align 8
  store double %20, ptr %7, align 8
  %21 = load ptr, ptr %5, align 8
  store ptr %21, ptr %8, align 8
  %22 = load ptr, ptr %6, align 8
  store ptr %22, ptr %9, align 8
  br label %23

23:                                               ; preds = %43, %19
  %.promoted = load ptr, ptr %9, align 8
  br label %24

24:                                               ; preds = %28, %23
  %25 = phi ptr [ %26, %28 ], [ %.promoted, %23 ]
  %26 = getelementptr inbounds double, ptr %25, i32 -1
  %27 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %26)
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %24, !llvm.loop !44

29:                                               ; preds = %24
  store ptr %26, ptr %9, align 8
  %30 = load ptr, ptr %8, align 8
  %31 = icmp ult ptr %30, %26
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  br label %50

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %37, %33
  %35 = phi ptr [ %38, %37 ], [ %30, %33 ]
  %36 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = getelementptr inbounds nuw double, ptr %35, i32 1
  br label %34, !llvm.loop !45

39:                                               ; preds = %34
  store ptr %35, ptr %8, align 8
  %40 = load ptr, ptr %9, align 8
  %41 = icmp ult ptr %35, %40
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  br label %50

43:                                               ; preds = %39
  %44 = load double, ptr %40, align 8
  store double %44, ptr %10, align 8
  %45 = load ptr, ptr %8, align 8
  %46 = load double, ptr %45, align 8
  %47 = load ptr, ptr %9, align 8
  store double %46, ptr %47, align 8
  %48 = load double, ptr %10, align 8
  %49 = load ptr, ptr %8, align 8
  store double %48, ptr %49, align 8
  br label %23, !llvm.loop !46

50:                                               ; preds = %42, %32
  %51 = load ptr, ptr %5, align 8
  %52 = load ptr, ptr %9, align 8
  %53 = getelementptr inbounds double, ptr %52, i64 1
  %54 = load i8, ptr %11, align 1
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %51, ptr noundef %53, i8 %54)
  %55 = load ptr, ptr %9, align 8
  %56 = getelementptr inbounds double, ptr %55, i64 1
  %57 = load ptr, ptr %6, align 8
  %58 = load i8, ptr %12, align 1
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %56, ptr noundef %57, i8 %58)
  br label %59

59:                                               ; preds = %50, %3
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
  %9 = load ptr, ptr %5, align 8
  %10 = load i8, ptr %8, align 1
  %11 = call i8 @_ZN9__gnu_cxx5__ops16__iter_comp_iterI24inline_less_than_functorEENS0_15_Iter_comp_iterIT_EES4_(i8 %10)
  store i8 %11, ptr %7, align 1
  call void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %9, ptr noundef %1, i8 %11)
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
  %13 = load ptr, ptr %5, align 8
  %14 = ptrtoint ptr %1 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 8
  %18 = icmp sgt i64 %17, 1
  br i1 %18, label %19, label %59

19:                                               ; preds = %3
  %20 = load double, ptr %13, align 8
  store double %20, ptr %7, align 8
  %21 = load ptr, ptr %5, align 8
  store ptr %21, ptr %8, align 8
  %22 = load ptr, ptr %6, align 8
  store ptr %22, ptr %9, align 8
  br label %23

23:                                               ; preds = %43, %19
  %.promoted = load ptr, ptr %9, align 8
  br label %24

24:                                               ; preds = %28, %23
  %25 = phi ptr [ %26, %28 ], [ %.promoted, %23 ]
  %26 = getelementptr inbounds double, ptr %25, i32 -1
  %27 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %26)
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %24, !llvm.loop !47

29:                                               ; preds = %24
  store ptr %26, ptr %9, align 8
  %30 = load ptr, ptr %8, align 8
  %31 = icmp ult ptr %30, %26
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  br label %50

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %37, %33
  %35 = phi ptr [ %38, %37 ], [ %30, %33 ]
  %36 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = getelementptr inbounds nuw double, ptr %35, i32 1
  br label %34, !llvm.loop !48

39:                                               ; preds = %34
  store ptr %35, ptr %8, align 8
  %40 = load ptr, ptr %9, align 8
  %41 = icmp ult ptr %35, %40
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  br label %50

43:                                               ; preds = %39
  %44 = load double, ptr %40, align 8
  store double %44, ptr %10, align 8
  %45 = load ptr, ptr %8, align 8
  %46 = load double, ptr %45, align 8
  %47 = load ptr, ptr %9, align 8
  store double %46, ptr %47, align 8
  %48 = load double, ptr %10, align 8
  %49 = load ptr, ptr %8, align 8
  store double %48, ptr %49, align 8
  br label %23, !llvm.loop !49

50:                                               ; preds = %42, %32
  %51 = load ptr, ptr %5, align 8
  %52 = load ptr, ptr %9, align 8
  %53 = getelementptr inbounds double, ptr %52, i64 1
  %54 = load i8, ptr %11, align 1
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %51, ptr noundef %53, i8 %54)
  %55 = load ptr, ptr %9, align 8
  %56 = getelementptr inbounds double, ptr %55, i64 1
  %57 = load ptr, ptr %6, align 8
  %58 = load i8, ptr %12, align 1
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %56, ptr noundef %57, i8 %58)
  br label %59

59:                                               ; preds = %50, %3
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
  %9 = load ptr, ptr %5, align 8
  %10 = load i8, ptr %8, align 1
  %11 = call i8 @_ZN9__gnu_cxx5__ops16__iter_comp_iterISt4lessIdEEENS0_15_Iter_comp_iterIT_EES5_(i8 %10)
  store i8 %11, ptr %7, align 1
  call void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %9, ptr noundef %1, i8 %11)
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
  %9 = load ptr, ptr %3, align 8
  %10 = ptrtoint ptr %1 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  %14 = icmp sgt i64 %13, 1
  br i1 %14, label %15, label %50

15:                                               ; preds = %2
  %16 = load double, ptr %9, align 8
  store double %16, ptr %5, align 8
  %17 = load ptr, ptr %3, align 8
  store ptr %17, ptr %6, align 8
  %18 = load ptr, ptr %4, align 8
  store ptr %18, ptr %7, align 8
  %19 = load double, ptr %5, align 8
  %.promoted = load ptr, ptr %6, align 8
  %.promoted7 = load double, ptr %8, align 8
  br label %20

20:                                               ; preds = %41, %15
  %21 = phi double [ %42, %41 ], [ %.promoted7, %15 ]
  %.lcssa26 = phi ptr [ %33, %41 ], [ %.promoted, %15 ]
  %.lcssa4 = phi ptr [ %24, %41 ], [ %18, %15 ]
  br label %22

22:                                               ; preds = %27, %20
  %23 = phi ptr [ %24, %27 ], [ %.lcssa4, %20 ]
  %24 = getelementptr inbounds double, ptr %23, i32 -1
  %25 = load double, ptr %24, align 8
  %26 = fcmp olt double %19, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %22, !llvm.loop !50

28:                                               ; preds = %22
  %29 = icmp ult ptr %.lcssa26, %24
  br i1 %29, label %31, label %30

30:                                               ; preds = %28
  store ptr %24, ptr %7, align 8
  store ptr %.lcssa26, ptr %6, align 8
  store double %21, ptr %8, align 8
  br label %43

31:                                               ; preds = %28
  br label %32

32:                                               ; preds = %36, %31
  %33 = phi ptr [ %37, %36 ], [ %.lcssa26, %31 ]
  %34 = load double, ptr %33, align 8
  %35 = fcmp olt double %34, %19
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = getelementptr inbounds nuw double, ptr %33, i32 1
  br label %32, !llvm.loop !51

38:                                               ; preds = %32
  %39 = icmp ult ptr %33, %24
  br i1 %39, label %41, label %40

40:                                               ; preds = %38
  store ptr %24, ptr %7, align 8
  store ptr %33, ptr %6, align 8
  store double %21, ptr %8, align 8
  br label %43

41:                                               ; preds = %38
  %42 = load double, ptr %24, align 8
  store double %34, ptr %24, align 8
  store double %42, ptr %33, align 8
  br label %20, !llvm.loop !52

43:                                               ; preds = %40, %30
  %44 = load ptr, ptr %3, align 8
  %45 = load ptr, ptr %7, align 8
  %46 = getelementptr inbounds double, ptr %45, i64 1
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %44, ptr noundef %46)
  %47 = load ptr, ptr %7, align 8
  %48 = getelementptr inbounds double, ptr %47, i64 1
  %49 = load ptr, ptr %4, align 8
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %48, ptr noundef %49)
  br label %50

50:                                               ; preds = %43, %2
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt4sortIPdEvT_S1_(ptr noundef %0, ptr noundef %1) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call i8 @_ZN9__gnu_cxx5__ops16__iter_less_iterEv()
  %8 = load i8, ptr %5, align 1
  call void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %6, ptr noundef %1, i8 %8)
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
  %18 = load ptr, ptr %14, align 8
  %19 = load ptr, ptr %15, align 8
  store ptr %18, ptr %11, align 8
  store ptr %19, ptr %12, align 8
  %20 = load ptr, ptr %11, align 8
  store ptr %11, ptr %5, align 8
  %21 = load i8, ptr %13, align 1
  store i8 %21, ptr %6, align 1
  store ptr %20, ptr %7, align 8
  store ptr %19, ptr %8, align 8
  %22 = load ptr, ptr %7, align 8
  %23 = ptrtoint ptr %19 to i64
  %24 = ptrtoint ptr %22 to i64
  %25 = sub i64 %23, %24
  %26 = sdiv exact i64 %25, 8
  store i64 %26, ptr %17, align 8
  %27 = icmp sgt i64 %26, 1
  br i1 %27, label %28, label %34

28:                                               ; preds = %3
  %29 = load ptr, ptr %16, align 8
  %30 = load ptr, ptr %14, align 8
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %29, ptr align 8 %30, i64 %25, i1 false)
  %31 = load i64, ptr %17, align 8
  %32 = load ptr, ptr %16, align 8
  %33 = getelementptr inbounds double, ptr %32, i64 %31
  store ptr %33, ptr %16, align 8
  br label %44

34:                                               ; preds = %3
  %35 = icmp eq i64 %26, 1
  br i1 %35, label %36, label %43

36:                                               ; preds = %34
  store ptr %16, ptr %9, align 8
  store ptr %14, ptr %10, align 8
  %37 = load ptr, ptr %14, align 8
  %38 = load double, ptr %37, align 8
  %39 = load ptr, ptr %9, align 8, !nonnull !15, !align !16
  %40 = load ptr, ptr %39, align 8
  store double %38, ptr %40, align 8
  %41 = load ptr, ptr %16, align 8
  %42 = getelementptr inbounds nuw double, ptr %41, i32 1
  store ptr %42, ptr %16, align 8
  br label %43

43:                                               ; preds = %36, %34
  br label %44

44:                                               ; preds = %43, %28
  %45 = load ptr, ptr %16, align 8
  ret ptr %45
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
  %10 = load ptr, ptr %5, align 8
  %11 = icmp ne ptr %10, %1
  br i1 %11, label %12, label %25

12:                                               ; preds = %3
  %13 = ptrtoint ptr %1 to i64
  %14 = ptrtoint ptr %10 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 8
  %17 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %16)
  %18 = mul nsw i64 %17, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %4, i64 8, i1 false)
  %19 = load ptr, ptr %7, align 8
  %20 = ptrtoint ptr %19 to i64
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %10, ptr noundef %1, i64 noundef %18, i64 %20)
  %21 = load ptr, ptr %5, align 8
  %22 = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %4, i64 8, i1 false)
  %23 = load ptr, ptr %8, align 8
  %24 = ptrtoint ptr %23 to i64
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %21, ptr noundef %22, i64 %24)
  br label %25

25:                                               ; preds = %12, %3
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
  %14 = load ptr, ptr %6, align 8
  %15 = ptrtoint ptr %14 to i64
  %.promoted = load ptr, ptr %7, align 8
  %.promoted5 = load ptr, ptr %10, align 8
  br label %16

16:                                               ; preds = %31, %4
  %17 = phi ptr [ %35, %31 ], [ %.promoted5, %4 ]
  %18 = phi i64 [ %32, %31 ], [ %2, %4 ]
  %19 = phi ptr [ %35, %31 ], [ %.promoted, %4 ]
  %20 = ptrtoint ptr %19 to i64
  %21 = sub i64 %20, %15
  %22 = sdiv exact i64 %21, 8
  %23 = icmp sgt i64 %22, 16
  br i1 %23, label %24, label %.loopexit

24:                                               ; preds = %16
  %25 = icmp eq i64 %18, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %24
  store ptr %19, ptr %7, align 8
  store i64 %18, ptr %8, align 8
  store ptr %17, ptr %10, align 8
  %27 = load ptr, ptr %6, align 8
  %28 = load ptr, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %5, i64 8, i1 false)
  %29 = load ptr, ptr %9, align 8
  %30 = ptrtoint ptr %29 to i64
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %27, ptr noundef %28, ptr noundef %28, i64 %30)
  br label %38

31:                                               ; preds = %24
  %32 = add nsw i64 %18, -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %11, ptr align 8 %5, i64 8, i1 false)
  %33 = load ptr, ptr %11, align 8
  %34 = ptrtoint ptr %33 to i64
  %35 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_(ptr noundef %14, ptr noundef %19, i64 %34)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %5, i64 8, i1 false)
  %36 = load ptr, ptr %12, align 8
  %37 = ptrtoint ptr %36 to i64
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %35, ptr noundef %19, i64 noundef %32, i64 %37)
  br label %16, !llvm.loop !53

.loopexit:                                        ; preds = %16
  store ptr %19, ptr %7, align 8
  store i64 %18, ptr %8, align 8
  store ptr %17, ptr %10, align 8
  br label %38

38:                                               ; preds = %.loopexit, %26
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
  %11 = load ptr, ptr %5, align 8
  %12 = ptrtoint ptr %1 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 8
  %16 = icmp sgt i64 %15, 16
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = getelementptr inbounds double, ptr %11, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %4, i64 8, i1 false)
  %19 = load ptr, ptr %7, align 8
  %20 = ptrtoint ptr %19 to i64
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %11, ptr noundef %18, i64 %20)
  %21 = load ptr, ptr %5, align 8
  %22 = getelementptr inbounds double, ptr %21, i64 16
  %23 = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %4, i64 8, i1 false)
  %24 = load ptr, ptr %8, align 8
  %25 = ptrtoint ptr %24 to i64
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %22, ptr noundef %23, i64 %25)
  br label %29

26:                                               ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %4, i64 8, i1 false)
  %27 = load ptr, ptr %9, align 8
  %28 = ptrtoint ptr %27 to i64
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(ptr noundef %11, ptr noundef %1, i64 %28)
  br label %29

29:                                               ; preds = %26, %17
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
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %5, i64 8, i1 false)
  %13 = load ptr, ptr %9, align 8
  %14 = ptrtoint ptr %13 to i64
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %11, ptr noundef %12, ptr noundef %2, i64 %14)
  %15 = load ptr, ptr %6, align 8
  %16 = load ptr, ptr %7, align 8
  call void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %15, ptr noundef %16, ptr noundef nonnull align 8 dereferenceable(8) %5)
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
  %11 = load ptr, ptr %5, align 8
  %12 = ptrtoint ptr %1 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 8
  %16 = sdiv i64 %15, 2
  %17 = getelementptr inbounds double, ptr %11, i64 %16
  store ptr %17, ptr %7, align 8
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr inbounds double, ptr %18, i64 1
  %20 = load ptr, ptr %6, align 8
  %21 = getelementptr inbounds double, ptr %20, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %4, i64 8, i1 false)
  %22 = load ptr, ptr %8, align 8
  %23 = ptrtoint ptr %22 to i64
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_(ptr noundef %18, ptr noundef %19, ptr noundef %17, ptr noundef %21, i64 %23)
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds double, ptr %24, i64 1
  %26 = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %4, i64 8, i1 false)
  %27 = load ptr, ptr %9, align 8
  %28 = ptrtoint ptr %27 to i64
  %29 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_S7_T0_(ptr noundef %25, ptr noundef %26, ptr noundef %24, i64 %28)
  ret ptr %29
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
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %7, align 8
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %11, ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %13 = load ptr, ptr %7, align 8
  store ptr %13, ptr %9, align 8
  %14 = load ptr, ptr %8, align 8
  %15 = load ptr, ptr %6, align 8
  %16 = load ptr, ptr %7, align 8
  br label %17

17:                                               ; preds = %24, %4
  %18 = phi ptr [ %25, %24 ], [ %13, %4 ]
  %19 = icmp ult ptr %18, %14
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %18, ptr noundef %15)
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %15, ptr noundef %16, ptr noundef %18, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %23

23:                                               ; preds = %22, %20
  br label %24

24:                                               ; preds = %23
  %25 = getelementptr inbounds nuw double, ptr %18, i32 1
  br label %17, !llvm.loop !54

26:                                               ; preds = %17
  store ptr %18, ptr %9, align 8
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
  %7 = load ptr, ptr %4, align 8
  %8 = ptrtoint ptr %7 to i64
  %.promoted = load ptr, ptr %5, align 8
  br label %9

9:                                                ; preds = %15, %3
  %10 = phi ptr [ %16, %15 ], [ %.promoted, %3 ]
  %11 = ptrtoint ptr %10 to i64
  %12 = sub i64 %11, %8
  %13 = sdiv exact i64 %12, 8
  %14 = icmp sgt i64 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = getelementptr inbounds double, ptr %10, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %7, ptr noundef %16, ptr noundef %16, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %9, !llvm.loop !55

17:                                               ; preds = %9
  store ptr %10, ptr %5, align 8
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
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %4, align 8
  %13 = ptrtoint ptr %11 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 8
  %17 = icmp slt i64 %16, 2
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %35

19:                                               ; preds = %3
  store i64 %16, ptr %7, align 8
  %20 = sub nsw i64 %16, 2
  %21 = sdiv i64 %20, 2
  store i64 %21, ptr %8, align 8
  %22 = load ptr, ptr %4, align 8
  %23 = load i64, ptr %7, align 8
  %24 = load ptr, ptr %6, align 8, !nonnull !15, !align !16
  br label %25

25:                                               ; preds = %33, %19
  %26 = phi i64 [ %34, %33 ], [ %21, %19 ]
  %27 = getelementptr inbounds double, ptr %22, i64 %26
  %28 = load double, ptr %27, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %24, i64 8, i1 false)
  %29 = load ptr, ptr %10, align 8
  %30 = ptrtoint ptr %29 to i64
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef %22, i64 noundef %26, i64 noundef %23, double noundef %28, i64 %30)
  %31 = icmp eq i64 %26, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i64 %26, ptr %8, align 8
  store double %28, ptr %9, align 8
  br label %35

33:                                               ; preds = %25
  %34 = add nsw i64 %26, -1
  br label %25, !llvm.loop !56

35:                                               ; preds = %32, %18
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
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load double, ptr %9, align 8
  %11 = load double, ptr %2, align 8
  %12 = call noundef zeroext i1 %8(double noundef %10, double noundef %11)
  ret i1 %12
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
  %11 = load ptr, ptr %7, align 8
  %12 = load double, ptr %11, align 8
  store double %12, ptr %9, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = load double, ptr %13, align 8
  %15 = load ptr, ptr %7, align 8
  store double %14, ptr %15, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = load ptr, ptr %6, align 8
  %18 = ptrtoint ptr %17 to i64
  %19 = ptrtoint ptr %16 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 8
  %22 = load double, ptr %9, align 8
  %23 = load ptr, ptr %8, align 8, !nonnull !15, !align !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %23, i64 8, i1 false)
  %24 = load ptr, ptr %10, align 8
  %25 = ptrtoint ptr %24 to i64
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef %16, i64 noundef 0, i64 noundef %21, double noundef %22, i64 %25)
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
  %15 = load i64, ptr %8, align 8
  store i64 %15, ptr %11, align 8
  %16 = load i64, ptr %8, align 8
  store i64 %16, ptr %12, align 8
  %17 = load i64, ptr %9, align 8
  %18 = sub nsw i64 %17, 1
  %19 = sdiv i64 %18, 2
  %20 = load ptr, ptr %7, align 8
  %.promoted1 = load i64, ptr %8, align 8
  br label %21

21:                                               ; preds = %34, %5
  %22 = phi i64 [ %35, %34 ], [ %.promoted1, %5 ]
  %23 = phi i64 [ %35, %34 ], [ %16, %5 ]
  %24 = icmp slt i64 %23, %19
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = add nsw i64 %23, 1
  %27 = mul nsw i64 2, %26
  %28 = getelementptr inbounds double, ptr %20, i64 %27
  %29 = sub nsw i64 %27, 1
  %30 = getelementptr inbounds double, ptr %20, i64 %29
  %31 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %28, ptr noundef %30)
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = add nsw i64 %27, -1
  br label %34

34:                                               ; preds = %32, %25
  %35 = phi i64 [ %33, %32 ], [ %27, %25 ]
  %36 = getelementptr inbounds double, ptr %20, i64 %35
  %37 = load double, ptr %36, align 8
  %38 = getelementptr inbounds double, ptr %20, i64 %22
  store double %37, ptr %38, align 8
  br label %21, !llvm.loop !57

39:                                               ; preds = %21
  store i64 %23, ptr %12, align 8
  store i64 %22, ptr %8, align 8
  %40 = load i64, ptr %9, align 8
  %41 = and i64 %40, 1
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = load i64, ptr %12, align 8
  %45 = sub nsw i64 %40, 2
  %46 = sdiv i64 %45, 2
  %47 = icmp eq i64 %44, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = add nsw i64 %44, 1
  %50 = mul nsw i64 2, %49
  store i64 %50, ptr %12, align 8
  %51 = load ptr, ptr %7, align 8
  %52 = sub nsw i64 %50, 1
  %53 = getelementptr inbounds double, ptr %51, i64 %52
  %54 = load double, ptr %53, align 8
  %55 = load i64, ptr %8, align 8
  %56 = getelementptr inbounds double, ptr %51, i64 %55
  store double %54, ptr %56, align 8
  %57 = load i64, ptr %12, align 8
  %58 = sub nsw i64 %57, 1
  store i64 %58, ptr %8, align 8
  br label %59

59:                                               ; preds = %48, %43, %39
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %60 = load ptr, ptr %7, align 8
  %61 = load i64, ptr %8, align 8
  %62 = load i64, ptr %11, align 8
  %63 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEEEvT_T0_S8_T1_RT2_(ptr noundef %60, i64 noundef %61, i64 noundef %62, double noundef %63, ptr noundef nonnull align 8 dereferenceable(8) %13)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %1, align 8
  store ptr %6, ptr %5, align 8
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
  %12 = load i64, ptr %7, align 8
  %13 = sub nsw i64 %12, 1
  %14 = sdiv i64 %13, 2
  store i64 %14, ptr %11, align 8
  %15 = load i64, ptr %8, align 8
  %16 = load ptr, ptr %10, align 8, !nonnull !15, !align !16
  %17 = load ptr, ptr %6, align 8
  %.promoted = load i64, ptr %7, align 8
  br label %18

18:                                               ; preds = %27, %5
  %19 = phi i64 [ %32, %27 ], [ %14, %5 ]
  %20 = phi i64 [ %19, %27 ], [ %.promoted, %5 ]
  %21 = icmp sgt i64 %20, %15
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = getelementptr inbounds double, ptr %17, i64 %19
  %24 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEclIPddEEbT_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %23, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi i1 [ false, %18 ], [ %24, %22 ]
  br i1 %26, label %27, label %33

27:                                               ; preds = %25
  %28 = getelementptr inbounds double, ptr %17, i64 %19
  %29 = load double, ptr %28, align 8
  %30 = getelementptr inbounds double, ptr %17, i64 %20
  store double %29, ptr %30, align 8
  %31 = sub nsw i64 %19, 1
  %32 = sdiv i64 %31, 2
  br label %18, !llvm.loop !58

33:                                               ; preds = %25
  store i64 %20, ptr %7, align 8
  store i64 %19, ptr %11, align 8
  %34 = load double, ptr %9, align 8
  %35 = load ptr, ptr %6, align 8
  %36 = load i64, ptr %7, align 8
  %37 = getelementptr inbounds double, ptr %35, i64 %36
  store double %34, ptr %37, align 8
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
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load double, ptr %9, align 8
  %11 = load double, ptr %2, align 8
  %12 = call noundef zeroext i1 %8(double noundef %10, double noundef %11)
  ret i1 %12
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
  %12 = load ptr, ptr %8, align 8
  %13 = load ptr, ptr %9, align 8
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %12, ptr noundef %13)
  br i1 %14, label %15, label %34

15:                                               ; preds = %5
  %16 = load ptr, ptr %9, align 8
  %17 = load ptr, ptr %10, align 8
  %18 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %16, ptr noundef %17)
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load ptr, ptr %7, align 8
  %21 = load ptr, ptr %9, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %20, ptr noundef %21)
  br label %33

22:                                               ; preds = %15
  %23 = load ptr, ptr %8, align 8
  %24 = load ptr, ptr %10, align 8
  %25 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %23, ptr noundef %24)
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load ptr, ptr %7, align 8
  %28 = load ptr, ptr %10, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %27, ptr noundef %28)
  br label %32

29:                                               ; preds = %22
  %30 = load ptr, ptr %7, align 8
  %31 = load ptr, ptr %8, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %30, ptr noundef %31)
  br label %32

32:                                               ; preds = %29, %26
  br label %33

33:                                               ; preds = %32, %19
  br label %53

34:                                               ; preds = %5
  %35 = load ptr, ptr %8, align 8
  %36 = load ptr, ptr %10, align 8
  %37 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %35, ptr noundef %36)
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load ptr, ptr %7, align 8
  %40 = load ptr, ptr %8, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %39, ptr noundef %40)
  br label %52

41:                                               ; preds = %34
  %42 = load ptr, ptr %9, align 8
  %43 = load ptr, ptr %10, align 8
  %44 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %42, ptr noundef %43)
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load ptr, ptr %7, align 8
  %47 = load ptr, ptr %10, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %46, ptr noundef %47)
  br label %51

48:                                               ; preds = %41
  %49 = load ptr, ptr %7, align 8
  %50 = load ptr, ptr %9, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %49, ptr noundef %50)
  br label %51

51:                                               ; preds = %48, %45
  br label %52

52:                                               ; preds = %51, %38
  br label %53

53:                                               ; preds = %52, %33
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
  %.promoted3 = load ptr, ptr %6, align 8
  %.promoted = load ptr, ptr %7, align 8
  br label %10

10:                                               ; preds = %27, %4
  %.lcssa25 = phi ptr [ %19, %27 ], [ %.promoted, %4 ]
  %.lcssa4 = phi ptr [ %28, %27 ], [ %.promoted3, %4 ]
  br label %11

11:                                               ; preds = %14, %10
  %12 = phi ptr [ %15, %14 ], [ %.lcssa4, %10 ]
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %12, ptr noundef %2)
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = getelementptr inbounds nuw double, ptr %12, i32 1
  br label %11, !llvm.loop !59

16:                                               ; preds = %11
  %17 = getelementptr inbounds double, ptr %.lcssa25, i32 -1
  br label %18

18:                                               ; preds = %21, %16
  %19 = phi ptr [ %22, %21 ], [ %17, %16 ]
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %2, ptr noundef %19)
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = getelementptr inbounds double, ptr %19, i32 -1
  br label %18, !llvm.loop !60

23:                                               ; preds = %18
  %24 = icmp ult ptr %12, %19
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  store ptr %12, ptr %6, align 8
  store ptr %19, ptr %7, align 8
  %26 = load ptr, ptr %6, align 8
  ret ptr %26

27:                                               ; preds = %23
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %12, ptr noundef %19)
  %28 = getelementptr inbounds nuw double, ptr %12, i32 1
  br label %10, !llvm.loop !61
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %0, ptr noundef %1) #5 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  call void @_ZSt4swapIdENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZSt4swapIdENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #5 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca double, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8, !nonnull !15, !align !16
  %7 = load double, ptr %6, align 8
  store double %7, ptr %5, align 8
  %8 = load ptr, ptr %4, align 8, !nonnull !15, !align !16
  %9 = load double, ptr %8, align 8
  %10 = load ptr, ptr %3, align 8, !nonnull !15, !align !16
  store double %9, ptr %10, align 8
  %11 = load double, ptr %5, align 8
  %12 = load ptr, ptr %4, align 8, !nonnull !15, !align !16
  store double %11, ptr %12, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZSt11__bit_widthIyEiT_(i64 noundef %0) #5 comdat {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, ptr %2, align 8
  store i32 64, ptr %3, align 4
  %4 = load i64, ptr %2, align 8
  %5 = call noundef i32 @_ZSt13__countl_zeroIyEiT_(i64 noundef %4) #15
  %6 = sub nsw i32 64, %5
  ret i32 %6
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZSt13__countl_zeroIyEiT_(i64 noundef %0) #5 comdat {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, ptr %2, align 8
  store i32 64, ptr %3, align 4
  %4 = load i64, ptr %2, align 8
  %5 = call i64 @llvm.ctlz.i64(i64 %4, i1 true)
  %6 = trunc i64 %5 to i32
  %7 = icmp eq i64 %4, 0
  %8 = select i1 %7, i32 64, i32 %6
  ret i32 %8
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
  %26 = load ptr, ptr %19, align 8
  %27 = icmp eq ptr %26, %1
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  br label %82

29:                                               ; preds = %3
  %30 = getelementptr inbounds double, ptr %26, i64 1
  store ptr %30, ptr %21, align 8
  %31 = load ptr, ptr %20, align 8
  %32 = load ptr, ptr %19, align 8
  %.promoted1 = load ptr, ptr %23, align 8
  %.promoted3 = load double, ptr %22, align 8
  %.promoted5 = load ptr, ptr %15, align 8
  %.promoted7 = load ptr, ptr %16, align 8
  %.promoted9 = load ptr, ptr %17, align 8
  %.promoted11 = load ptr, ptr %12, align 8
  %.promoted13 = load ptr, ptr %13, align 8
  %.promoted15 = load ptr, ptr %7, align 8
  %.promoted17 = load ptr, ptr %8, align 8
  %.promoted19 = load ptr, ptr %9, align 8
  %.promoted21 = load ptr, ptr %4, align 8
  %.promoted23 = load ptr, ptr %5, align 8
  %.promoted25 = load ptr, ptr %6, align 8
  %.promoted27 = load ptr, ptr %10, align 1
  %.promoted29 = load ptr, ptr %11, align 1
  br label %33

33:                                               ; preds = %80, %29
  %34 = phi ptr [ %65, %80 ], [ %.promoted29, %29 ]
  %35 = phi ptr [ %66, %80 ], [ %.promoted27, %29 ]
  %36 = phi ptr [ %67, %80 ], [ %.promoted25, %29 ]
  %37 = phi ptr [ %68, %80 ], [ %.promoted23, %29 ]
  %38 = phi ptr [ %69, %80 ], [ %.promoted21, %29 ]
  %39 = phi ptr [ %70, %80 ], [ %.promoted19, %29 ]
  %40 = phi ptr [ %71, %80 ], [ %.promoted17, %29 ]
  %41 = phi ptr [ %72, %80 ], [ %.promoted15, %29 ]
  %42 = phi ptr [ %73, %80 ], [ %.promoted13, %29 ]
  %43 = phi ptr [ %74, %80 ], [ %.promoted11, %29 ]
  %44 = phi ptr [ %75, %80 ], [ %.promoted9, %29 ]
  %45 = phi ptr [ %76, %80 ], [ %.promoted7, %29 ]
  %46 = phi ptr [ %77, %80 ], [ %.promoted5, %29 ]
  %47 = phi double [ %78, %80 ], [ %.promoted3, %29 ]
  %48 = phi ptr [ %79, %80 ], [ %.promoted1, %29 ]
  %49 = phi ptr [ %81, %80 ], [ %30, %29 ]
  %50 = icmp ne ptr %49, %31
  br i1 %50, label %51, label %.loopexit

51:                                               ; preds = %33
  %52 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %49, ptr noundef %32)
  br i1 %52, label %53, label %59

53:                                               ; preds = %51
  %54 = load double, ptr %49, align 8
  %55 = getelementptr inbounds double, ptr %49, i64 1
  %56 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %32)
  %57 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %49)
  store ptr %55, ptr %14, align 8
  %58 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %56, ptr noundef %57, ptr noundef %55)
  store double %54, ptr %32, align 8
  br label %64

59:                                               ; preds = %51
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %24, ptr align 8 %18, i64 8, i1 false)
  %60 = load ptr, ptr %24, align 8
  %61 = ptrtoint ptr %60 to i64
  %62 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %61)
  %63 = inttoptr i64 %62 to ptr
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %49, i64 %62)
  br label %64

64:                                               ; preds = %59, %53
  %65 = phi ptr [ %34, %59 ], [ %58, %53 ]
  %66 = phi ptr [ %35, %59 ], [ %14, %53 ]
  %67 = phi ptr [ %36, %59 ], [ %55, %53 ]
  %68 = phi ptr [ %37, %59 ], [ %57, %53 ]
  %69 = phi ptr [ %38, %59 ], [ %56, %53 ]
  %70 = phi ptr [ %39, %59 ], [ %55, %53 ]
  %71 = phi ptr [ %40, %59 ], [ %57, %53 ]
  %72 = phi ptr [ %41, %59 ], [ %56, %53 ]
  %73 = phi ptr [ %42, %59 ], [ %57, %53 ]
  %74 = phi ptr [ %43, %59 ], [ %56, %53 ]
  %75 = phi ptr [ %44, %59 ], [ %55, %53 ]
  %76 = phi ptr [ %45, %59 ], [ %49, %53 ]
  %77 = phi ptr [ %46, %59 ], [ %32, %53 ]
  %78 = phi double [ %47, %59 ], [ %54, %53 ]
  %79 = phi ptr [ %63, %59 ], [ %48, %53 ]
  br label %80

80:                                               ; preds = %64
  %81 = getelementptr inbounds nuw double, ptr %49, i32 1
  br label %33, !llvm.loop !62

.loopexit:                                        ; preds = %33
  store ptr %49, ptr %21, align 8
  store ptr %48, ptr %23, align 8
  store double %47, ptr %22, align 8
  store ptr %46, ptr %15, align 8
  store ptr %45, ptr %16, align 8
  store ptr %44, ptr %17, align 8
  store ptr %43, ptr %12, align 8
  store ptr %42, ptr %13, align 8
  store ptr %41, ptr %7, align 8
  store ptr %40, ptr %8, align 8
  store ptr %39, ptr %9, align 8
  store ptr %38, ptr %4, align 8
  store ptr %37, ptr %5, align 8
  store ptr %36, ptr %6, align 8
  store ptr %35, ptr %10, align 1
  store ptr %34, ptr %11, align 1
  br label %82

82:                                               ; preds = %.loopexit, %28
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
  %11 = load ptr, ptr %5, align 8
  store ptr %11, ptr %7, align 8
  %12 = load ptr, ptr %6, align 8
  %.promoted1 = load ptr, ptr %8, align 8
  br label %13

13:                                               ; preds = %22, %3
  %14 = phi ptr [ %21, %22 ], [ %.promoted1, %3 ]
  %15 = phi ptr [ %23, %22 ], [ %11, %3 ]
  %16 = icmp ne ptr %15, %12
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %4, i64 8, i1 false)
  %18 = load ptr, ptr %9, align 8
  %19 = ptrtoint ptr %18 to i64
  %20 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %19)
  %21 = inttoptr i64 %20 to ptr
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %15, i64 %20)
  br label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds nuw double, ptr %15, i32 1
  br label %13, !llvm.loop !63

24:                                               ; preds = %13
  store ptr %15, ptr %7, align 8
  store ptr %14, ptr %8, align 8
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
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds double, ptr %9, i32 -1
  store ptr %10, ptr %6, align 8
  %.promoted1 = load ptr, ptr %4, align 8
  br label %11

11:                                               ; preds = %15, %2
  %12 = phi ptr [ %13, %15 ], [ %.promoted1, %2 ]
  %13 = phi ptr [ %17, %15 ], [ %10, %2 ]
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEclIdPdEEbRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %13)
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load double, ptr %13, align 8
  store double %16, ptr %12, align 8
  %17 = getelementptr inbounds double, ptr %13, i32 -1
  br label %11, !llvm.loop !64

18:                                               ; preds = %11
  store ptr %13, ptr %6, align 8
  store ptr %12, ptr %4, align 8
  %19 = load double, ptr %5, align 8
  store double %19, ptr %12, align 8
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
  %24 = load ptr, ptr %20, align 8
  %25 = load ptr, ptr %21, align 8
  store ptr %24, ptr %17, align 8
  store ptr %25, ptr %18, align 8
  %26 = load ptr, ptr %17, align 8
  store ptr %17, ptr %13, align 8
  %27 = load i8, ptr %19, align 1
  store i8 %27, ptr %14, align 1
  store ptr %26, ptr %15, align 8
  store ptr %25, ptr %16, align 8
  %28 = load ptr, ptr %15, align 8
  %29 = ptrtoint ptr %25 to i64
  %30 = ptrtoint ptr %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 8
  store i64 %32, ptr %23, align 8
  %33 = sub nsw i64 0, %32
  store ptr %22, ptr %8, align 8
  store i64 %33, ptr %9, align 8
  store i64 %33, ptr %10, align 8
  %34 = load ptr, ptr %8, align 8, !nonnull !15, !align !16
  store ptr %34, ptr %7, align 8
  %35 = load i8, ptr %11, align 1
  call void @_ZSt9__advanceIPdxEvRT_T0_St26random_access_iterator_tag(ptr noundef nonnull align 8 dereferenceable(8) %34, i64 noundef %33, i8 %35)
  %36 = load i64, ptr %23, align 8
  %37 = icmp sgt i64 %36, 1
  br i1 %37, label %38, label %42

38:                                               ; preds = %3
  %39 = load ptr, ptr %22, align 8
  %40 = load ptr, ptr %20, align 8
  %41 = mul i64 %36, 8
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %39, ptr align 8 %40, i64 %41, i1 false)
  br label %50

42:                                               ; preds = %3
  %43 = icmp eq i64 %36, 1
  br i1 %43, label %44, label %49

44:                                               ; preds = %42
  store ptr %22, ptr %4, align 8
  store ptr %20, ptr %5, align 8
  %45 = load ptr, ptr %20, align 8
  %46 = load double, ptr %45, align 8
  %47 = load ptr, ptr %4, align 8, !nonnull !15, !align !16
  %48 = load ptr, ptr %47, align 8
  store double %46, ptr %48, align 8
  br label %49

49:                                               ; preds = %44, %42
  br label %50

50:                                               ; preds = %49, %38
  %51 = load ptr, ptr %22, align 8
  ret ptr %51
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
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = icmp eq i64 %1, 1
  br i1 %9, label %10, label %14

10:                                               ; preds = %8
  %11 = load ptr, ptr %5, align 8, !nonnull !15, !align !16
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds nuw double, ptr %12, i32 1
  store ptr %13, ptr %11, align 8
  br label %29

14:                                               ; preds = %8, %3
  %15 = load i64, ptr %6, align 8
  %16 = call i1 @llvm.is.constant.i64(i64 %15)
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = icmp eq i64 %15, -1
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  %20 = load ptr, ptr %5, align 8, !nonnull !15, !align !16
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds double, ptr %21, i32 -1
  store ptr %22, ptr %20, align 8
  br label %28

23:                                               ; preds = %17, %14
  %24 = load i64, ptr %6, align 8
  %25 = load ptr, ptr %5, align 8, !nonnull !15, !align !16
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds double, ptr %26, i64 %24
  store ptr %27, ptr %25, align 8
  br label %28

28:                                               ; preds = %23, %19
  br label %29

29:                                               ; preds = %28, %10
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
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %5, align 8, !nonnull !15, !align !16
  %10 = load double, ptr %9, align 8
  %11 = load double, ptr %2, align 8
  %12 = call noundef zeroext i1 %8(double noundef %10, double noundef %11)
  ret i1 %12
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %1, align 8
  store ptr %6, ptr %5, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEC2ES3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  store ptr %1, ptr %5, align 8
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
  %9 = load ptr, ptr %5, align 8
  %10 = icmp ne ptr %9, %1
  br i1 %10, label %11, label %22

11:                                               ; preds = %3
  %12 = ptrtoint ptr %1 to i64
  %13 = ptrtoint ptr %9 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 8
  %16 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %15)
  %17 = mul nsw i64 %16, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %4, i64 1, i1 false)
  %18 = load i8, ptr %7, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %9, ptr noundef %1, i64 noundef %17, i8 %18)
  %19 = load ptr, ptr %5, align 8
  %20 = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %4, i64 1, i1 false)
  %21 = load i8, ptr %8, align 1
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %19, ptr noundef %20, i8 %21)
  br label %22

22:                                               ; preds = %11, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i8 @_ZN9__gnu_cxx5__ops16__iter_comp_iterI17less_than_functorEENS0_15_Iter_comp_iterIT_EES4_(i8 %0) #0 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1
  %3 = alloca %struct.less_than_functor, align 1
  %4 = alloca %struct.less_than_functor, align 1
  store i8 %0, ptr %3, align 1
  %5 = load i8, ptr %4, align 1
  call void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEC2ES2_(ptr noundef nonnull align 1 dereferenceable(1) %2, i8 %5)
  %6 = load i8, ptr %2, align 1
  ret i8 %6
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
  %13 = load ptr, ptr %6, align 8
  %14 = ptrtoint ptr %13 to i64
  %.promoted = load ptr, ptr %7, align 8
  %.promoted5 = load ptr, ptr %10, align 8
  br label %15

15:                                               ; preds = %29, %4
  %16 = phi ptr [ %32, %29 ], [ %.promoted5, %4 ]
  %17 = phi i64 [ %30, %29 ], [ %2, %4 ]
  %18 = phi ptr [ %32, %29 ], [ %.promoted, %4 ]
  %19 = ptrtoint ptr %18 to i64
  %20 = sub i64 %19, %14
  %21 = sdiv exact i64 %20, 8
  %22 = icmp sgt i64 %21, 16
  br i1 %22, label %23, label %.loopexit

23:                                               ; preds = %15
  %24 = icmp eq i64 %17, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %23
  store ptr %18, ptr %7, align 8
  store i64 %17, ptr %8, align 8
  store ptr %16, ptr %10, align 8
  %26 = load ptr, ptr %6, align 8
  %27 = load ptr, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %5, i64 1, i1 false)
  %28 = load i8, ptr %9, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %26, ptr noundef %27, ptr noundef %27, i8 %28)
  br label %34

29:                                               ; preds = %23
  %30 = add nsw i64 %17, -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %5, i64 1, i1 false)
  %31 = load i8, ptr %11, align 1
  %32 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_(ptr noundef %13, ptr noundef %18, i8 %31)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %5, i64 1, i1 false)
  %33 = load i8, ptr %12, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %32, ptr noundef %18, i64 noundef %30, i8 %33)
  br label %15, !llvm.loop !65

.loopexit:                                        ; preds = %15
  store ptr %18, ptr %7, align 8
  store i64 %17, ptr %8, align 8
  store ptr %16, ptr %10, align 8
  br label %34

34:                                               ; preds = %.loopexit, %25
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
  %10 = load ptr, ptr %5, align 8
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = icmp sgt i64 %14, 16
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = getelementptr inbounds double, ptr %10, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %4, i64 1, i1 false)
  %18 = load i8, ptr %7, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %10, ptr noundef %17, i8 %18)
  %19 = load ptr, ptr %5, align 8
  %20 = getelementptr inbounds double, ptr %19, i64 16
  %21 = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %4, i64 1, i1 false)
  %22 = load i8, ptr %8, align 1
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %20, ptr noundef %21, i8 %22)
  br label %25

23:                                               ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %24 = load i8, ptr %9, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %10, ptr noundef %1, i8 %24)
  br label %25

25:                                               ; preds = %23, %16
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
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %5, i64 1, i1 false)
  %12 = load i8, ptr %9, align 1
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %10, ptr noundef %11, ptr noundef %2, i8 %12)
  %13 = load ptr, ptr %6, align 8
  %14 = load ptr, ptr %7, align 8
  call void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(ptr noundef %13, ptr noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %5)
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
  %10 = load ptr, ptr %5, align 8
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = sdiv i64 %14, 2
  %16 = getelementptr inbounds double, ptr %10, i64 %15
  store ptr %16, ptr %7, align 8
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds double, ptr %17, i64 1
  %19 = load ptr, ptr %6, align 8
  %20 = getelementptr inbounds double, ptr %19, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %4, i64 1, i1 false)
  %21 = load i8, ptr %8, align 1
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_S6_T0_(ptr noundef %17, ptr noundef %18, ptr noundef %16, ptr noundef %20, i8 %21)
  %22 = load ptr, ptr %5, align 8
  %23 = getelementptr inbounds double, ptr %22, i64 1
  %24 = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %25 = load i8, ptr %9, align 1
  %26 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_S6_T0_(ptr noundef %23, ptr noundef %24, ptr noundef %22, i8 %25)
  ret ptr %26
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
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %7, align 8
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(ptr noundef %10, ptr noundef %11, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %12 = load ptr, ptr %7, align 8
  store ptr %12, ptr %9, align 8
  %13 = load ptr, ptr %8, align 8
  %14 = load ptr, ptr %6, align 8
  %15 = load ptr, ptr %7, align 8
  br label %16

16:                                               ; preds = %23, %4
  %17 = phi ptr [ %24, %23 ], [ %12, %4 ]
  %18 = icmp ult ptr %17, %13
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %17, ptr noundef %14)
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %14, ptr noundef %15, ptr noundef %17, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %22

22:                                               ; preds = %21, %19
  br label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds nuw double, ptr %17, i32 1
  br label %16, !llvm.loop !66

25:                                               ; preds = %16
  store ptr %17, ptr %9, align 8
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
  %7 = load ptr, ptr %4, align 8
  %8 = ptrtoint ptr %7 to i64
  %.promoted = load ptr, ptr %5, align 8
  br label %9

9:                                                ; preds = %15, %3
  %10 = phi ptr [ %16, %15 ], [ %.promoted, %3 ]
  %11 = ptrtoint ptr %10 to i64
  %12 = sub i64 %11, %8
  %13 = sdiv exact i64 %12, 8
  %14 = icmp sgt i64 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = getelementptr inbounds double, ptr %10, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %7, ptr noundef %16, ptr noundef %16, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %9, !llvm.loop !67

17:                                               ; preds = %9
  store ptr %10, ptr %5, align 8
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
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %4, align 8
  %13 = ptrtoint ptr %11 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 8
  %17 = icmp slt i64 %16, 2
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %34

19:                                               ; preds = %3
  store i64 %16, ptr %7, align 8
  %20 = sub nsw i64 %16, 2
  %21 = sdiv i64 %20, 2
  store i64 %21, ptr %8, align 8
  %22 = load ptr, ptr %4, align 8
  %23 = load i64, ptr %7, align 8
  %24 = load ptr, ptr %6, align 8, !nonnull !15
  br label %25

25:                                               ; preds = %32, %19
  %26 = phi i64 [ %33, %32 ], [ %21, %19 ]
  %27 = getelementptr inbounds double, ptr %22, i64 %26
  %28 = load double, ptr %27, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %24, i64 1, i1 false)
  %29 = load i8, ptr %10, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %22, i64 noundef %26, i64 noundef %23, double noundef %28, i8 %29)
  %30 = icmp eq i64 %26, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i64 %26, ptr %8, align 8
  store double %28, ptr %9, align 8
  br label %34

32:                                               ; preds = %25
  %33 = add nsw i64 %26, -1
  br label %25, !llvm.loop !68

34:                                               ; preds = %31, %18
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
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %9
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
  %11 = load ptr, ptr %7, align 8
  %12 = load double, ptr %11, align 8
  store double %12, ptr %9, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = load double, ptr %13, align 8
  %15 = load ptr, ptr %7, align 8
  store double %14, ptr %15, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = load ptr, ptr %6, align 8
  %18 = ptrtoint ptr %17 to i64
  %19 = ptrtoint ptr %16 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 8
  %22 = load double, ptr %9, align 8
  %23 = load ptr, ptr %8, align 8, !nonnull !15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %23, i64 1, i1 false)
  %24 = load i8, ptr %10, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %16, i64 noundef 0, i64 noundef %21, double noundef %22, i8 %24)
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
  %14 = load i64, ptr %8, align 8
  store i64 %14, ptr %11, align 8
  %15 = load i64, ptr %8, align 8
  store i64 %15, ptr %12, align 8
  %16 = load i64, ptr %9, align 8
  %17 = sub nsw i64 %16, 1
  %18 = sdiv i64 %17, 2
  %19 = load ptr, ptr %7, align 8
  %.promoted1 = load i64, ptr %8, align 8
  br label %20

20:                                               ; preds = %33, %5
  %21 = phi i64 [ %34, %33 ], [ %.promoted1, %5 ]
  %22 = phi i64 [ %34, %33 ], [ %15, %5 ]
  %23 = icmp slt i64 %22, %18
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = add nsw i64 %22, 1
  %26 = mul nsw i64 2, %25
  %27 = getelementptr inbounds double, ptr %19, i64 %26
  %28 = sub nsw i64 %26, 1
  %29 = getelementptr inbounds double, ptr %19, i64 %28
  %30 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %27, ptr noundef %29)
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = add nsw i64 %26, -1
  br label %33

33:                                               ; preds = %31, %24
  %34 = phi i64 [ %32, %31 ], [ %26, %24 ]
  %35 = getelementptr inbounds double, ptr %19, i64 %34
  %36 = load double, ptr %35, align 8
  %37 = getelementptr inbounds double, ptr %19, i64 %21
  store double %36, ptr %37, align 8
  br label %20, !llvm.loop !69

38:                                               ; preds = %20
  store i64 %22, ptr %12, align 8
  store i64 %21, ptr %8, align 8
  %39 = load i64, ptr %9, align 8
  %40 = and i64 %39, 1
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %38
  %43 = load i64, ptr %12, align 8
  %44 = sub nsw i64 %39, 2
  %45 = sdiv i64 %44, 2
  %46 = icmp eq i64 %43, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = add nsw i64 %43, 1
  %49 = mul nsw i64 2, %48
  store i64 %49, ptr %12, align 8
  %50 = load ptr, ptr %7, align 8
  %51 = sub nsw i64 %49, 1
  %52 = getelementptr inbounds double, ptr %50, i64 %51
  %53 = load double, ptr %52, align 8
  %54 = load i64, ptr %8, align 8
  %55 = getelementptr inbounds double, ptr %50, i64 %54
  store double %53, ptr %55, align 8
  %56 = load i64, ptr %12, align 8
  %57 = sub nsw i64 %56, 1
  store i64 %57, ptr %8, align 8
  br label %58

58:                                               ; preds = %47, %42, %38
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %59 = load ptr, ptr %7, align 8
  %60 = load i64, ptr %8, align 8
  %61 = load i64, ptr %11, align 8
  %62 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %59, i64 noundef %60, i64 noundef %61, double noundef %62, ptr noundef nonnull align 1 dereferenceable(1) %13)
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
  %12 = load i64, ptr %7, align 8
  %13 = sub nsw i64 %12, 1
  %14 = sdiv i64 %13, 2
  store i64 %14, ptr %11, align 8
  %15 = load i64, ptr %8, align 8
  %16 = load ptr, ptr %10, align 8, !nonnull !15
  %17 = load ptr, ptr %6, align 8
  %.promoted = load i64, ptr %7, align 8
  br label %18

18:                                               ; preds = %27, %5
  %19 = phi i64 [ %32, %27 ], [ %14, %5 ]
  %20 = phi i64 [ %19, %27 ], [ %.promoted, %5 ]
  %21 = icmp sgt i64 %20, %15
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = getelementptr inbounds double, ptr %17, i64 %19
  %24 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef %23, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi i1 [ false, %18 ], [ %24, %22 ]
  br i1 %26, label %27, label %33

27:                                               ; preds = %25
  %28 = getelementptr inbounds double, ptr %17, i64 %19
  %29 = load double, ptr %28, align 8
  %30 = getelementptr inbounds double, ptr %17, i64 %20
  store double %29, ptr %30, align 8
  %31 = sub nsw i64 %19, 1
  %32 = sdiv i64 %31, 2
  br label %18, !llvm.loop !70

33:                                               ; preds = %25
  store i64 %20, ptr %7, align 8
  store i64 %19, ptr %11, align 8
  %34 = load double, ptr %9, align 8
  %35 = load ptr, ptr %6, align 8
  %36 = load i64, ptr %7, align 8
  %37 = getelementptr inbounds double, ptr %35, i64 %36
  store double %34, ptr %37, align 8
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
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %9
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
  %11 = load ptr, ptr %8, align 8
  %12 = load ptr, ptr %9, align 8
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %11, ptr noundef %12)
  br i1 %13, label %14, label %33

14:                                               ; preds = %5
  %15 = load ptr, ptr %9, align 8
  %16 = load ptr, ptr %10, align 8
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %15, ptr noundef %16)
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load ptr, ptr %7, align 8
  %20 = load ptr, ptr %9, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %19, ptr noundef %20)
  br label %32

21:                                               ; preds = %14
  %22 = load ptr, ptr %8, align 8
  %23 = load ptr, ptr %10, align 8
  %24 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %22, ptr noundef %23)
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load ptr, ptr %7, align 8
  %27 = load ptr, ptr %10, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %26, ptr noundef %27)
  br label %31

28:                                               ; preds = %21
  %29 = load ptr, ptr %7, align 8
  %30 = load ptr, ptr %8, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %29, ptr noundef %30)
  br label %31

31:                                               ; preds = %28, %25
  br label %32

32:                                               ; preds = %31, %18
  br label %52

33:                                               ; preds = %5
  %34 = load ptr, ptr %8, align 8
  %35 = load ptr, ptr %10, align 8
  %36 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %34, ptr noundef %35)
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load ptr, ptr %7, align 8
  %39 = load ptr, ptr %8, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %38, ptr noundef %39)
  br label %51

40:                                               ; preds = %33
  %41 = load ptr, ptr %9, align 8
  %42 = load ptr, ptr %10, align 8
  %43 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %41, ptr noundef %42)
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load ptr, ptr %7, align 8
  %46 = load ptr, ptr %10, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %45, ptr noundef %46)
  br label %50

47:                                               ; preds = %40
  %48 = load ptr, ptr %7, align 8
  %49 = load ptr, ptr %9, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %48, ptr noundef %49)
  br label %50

50:                                               ; preds = %47, %44
  br label %51

51:                                               ; preds = %50, %37
  br label %52

52:                                               ; preds = %51, %32
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
  %.promoted3 = load ptr, ptr %6, align 8
  %.promoted = load ptr, ptr %7, align 8
  br label %9

9:                                                ; preds = %26, %4
  %.lcssa25 = phi ptr [ %18, %26 ], [ %.promoted, %4 ]
  %.lcssa4 = phi ptr [ %27, %26 ], [ %.promoted3, %4 ]
  br label %10

10:                                               ; preds = %13, %9
  %11 = phi ptr [ %14, %13 ], [ %.lcssa4, %9 ]
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %2)
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = getelementptr inbounds nuw double, ptr %11, i32 1
  br label %10, !llvm.loop !71

15:                                               ; preds = %10
  %16 = getelementptr inbounds double, ptr %.lcssa25, i32 -1
  br label %17

17:                                               ; preds = %20, %15
  %18 = phi ptr [ %21, %20 ], [ %16, %15 ]
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %18)
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = getelementptr inbounds double, ptr %18, i32 -1
  br label %17, !llvm.loop !72

22:                                               ; preds = %17
  %23 = icmp ult ptr %11, %18
  br i1 %23, label %26, label %24

24:                                               ; preds = %22
  store ptr %11, ptr %6, align 8
  store ptr %18, ptr %7, align 8
  %25 = load ptr, ptr %6, align 8
  ret ptr %25

26:                                               ; preds = %22
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %11, ptr noundef %18)
  %27 = getelementptr inbounds nuw double, ptr %11, i32 1
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
  %25 = load ptr, ptr %19, align 8
  %26 = icmp eq ptr %25, %1
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %79

28:                                               ; preds = %3
  %29 = getelementptr inbounds double, ptr %25, i64 1
  store ptr %29, ptr %21, align 8
  %30 = load ptr, ptr %20, align 8
  %31 = load ptr, ptr %19, align 8
  %.promoted1 = load i8, ptr %23, align 1
  %.promoted3 = load double, ptr %22, align 8
  %.promoted5 = load ptr, ptr %15, align 8
  %.promoted7 = load ptr, ptr %16, align 8
  %.promoted9 = load ptr, ptr %17, align 8
  %.promoted11 = load ptr, ptr %12, align 8
  %.promoted13 = load ptr, ptr %13, align 8
  %.promoted15 = load ptr, ptr %7, align 8
  %.promoted17 = load ptr, ptr %8, align 8
  %.promoted19 = load ptr, ptr %9, align 8
  %.promoted21 = load ptr, ptr %4, align 8
  %.promoted23 = load ptr, ptr %5, align 8
  %.promoted25 = load ptr, ptr %6, align 8
  %.promoted27 = load ptr, ptr %10, align 1
  %.promoted29 = load ptr, ptr %11, align 1
  br label %32

32:                                               ; preds = %77, %28
  %33 = phi ptr [ %62, %77 ], [ %.promoted29, %28 ]
  %34 = phi ptr [ %63, %77 ], [ %.promoted27, %28 ]
  %35 = phi ptr [ %64, %77 ], [ %.promoted25, %28 ]
  %36 = phi ptr [ %65, %77 ], [ %.promoted23, %28 ]
  %37 = phi ptr [ %66, %77 ], [ %.promoted21, %28 ]
  %38 = phi ptr [ %67, %77 ], [ %.promoted19, %28 ]
  %39 = phi ptr [ %68, %77 ], [ %.promoted17, %28 ]
  %40 = phi ptr [ %69, %77 ], [ %.promoted15, %28 ]
  %41 = phi ptr [ %70, %77 ], [ %.promoted13, %28 ]
  %42 = phi ptr [ %71, %77 ], [ %.promoted11, %28 ]
  %43 = phi ptr [ %72, %77 ], [ %.promoted9, %28 ]
  %44 = phi ptr [ %73, %77 ], [ %.promoted7, %28 ]
  %45 = phi ptr [ %74, %77 ], [ %.promoted5, %28 ]
  %46 = phi double [ %75, %77 ], [ %.promoted3, %28 ]
  %47 = phi i8 [ %76, %77 ], [ %.promoted1, %28 ]
  %48 = phi ptr [ %78, %77 ], [ %29, %28 ]
  %49 = icmp ne ptr %48, %30
  br i1 %49, label %50, label %.loopexit

50:                                               ; preds = %32
  %51 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef %48, ptr noundef %31)
  br i1 %51, label %52, label %58

52:                                               ; preds = %50
  %53 = load double, ptr %48, align 8
  %54 = getelementptr inbounds double, ptr %48, i64 1
  %55 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %31)
  %56 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %48)
  store ptr %54, ptr %14, align 8
  %57 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %55, ptr noundef %56, ptr noundef %54)
  store double %53, ptr %31, align 8
  br label %61

58:                                               ; preds = %50
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr align 1 %18, i64 1, i1 false)
  %59 = load i8, ptr %24, align 1
  %60 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %59)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %48, i8 %60)
  br label %61

61:                                               ; preds = %58, %52
  %62 = phi ptr [ %33, %58 ], [ %57, %52 ]
  %63 = phi ptr [ %34, %58 ], [ %14, %52 ]
  %64 = phi ptr [ %35, %58 ], [ %54, %52 ]
  %65 = phi ptr [ %36, %58 ], [ %56, %52 ]
  %66 = phi ptr [ %37, %58 ], [ %55, %52 ]
  %67 = phi ptr [ %38, %58 ], [ %54, %52 ]
  %68 = phi ptr [ %39, %58 ], [ %56, %52 ]
  %69 = phi ptr [ %40, %58 ], [ %55, %52 ]
  %70 = phi ptr [ %41, %58 ], [ %56, %52 ]
  %71 = phi ptr [ %42, %58 ], [ %55, %52 ]
  %72 = phi ptr [ %43, %58 ], [ %54, %52 ]
  %73 = phi ptr [ %44, %58 ], [ %48, %52 ]
  %74 = phi ptr [ %45, %58 ], [ %31, %52 ]
  %75 = phi double [ %46, %58 ], [ %53, %52 ]
  %76 = phi i8 [ %60, %58 ], [ %47, %52 ]
  br label %77

77:                                               ; preds = %61
  %78 = getelementptr inbounds nuw double, ptr %48, i32 1
  br label %32, !llvm.loop !74

.loopexit:                                        ; preds = %32
  store ptr %48, ptr %21, align 8
  store i8 %47, ptr %23, align 1
  store double %46, ptr %22, align 8
  store ptr %45, ptr %15, align 8
  store ptr %44, ptr %16, align 8
  store ptr %43, ptr %17, align 8
  store ptr %42, ptr %12, align 8
  store ptr %41, ptr %13, align 8
  store ptr %40, ptr %7, align 8
  store ptr %39, ptr %8, align 8
  store ptr %38, ptr %9, align 8
  store ptr %37, ptr %4, align 8
  store ptr %36, ptr %5, align 8
  store ptr %35, ptr %6, align 8
  store ptr %34, ptr %10, align 1
  store ptr %33, ptr %11, align 1
  br label %79

79:                                               ; preds = %.loopexit, %27
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
  %10 = load ptr, ptr %5, align 8
  store ptr %10, ptr %7, align 8
  %11 = load ptr, ptr %6, align 8
  %.promoted1 = load i8, ptr %8, align 1
  br label %12

12:                                               ; preds = %19, %3
  %13 = phi i8 [ %18, %19 ], [ %.promoted1, %3 ]
  %14 = phi ptr [ %20, %19 ], [ %10, %3 ]
  %15 = icmp ne ptr %14, %11
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %17 = load i8, ptr %9, align 1
  %18 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %17)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %14, i8 %18)
  br label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw double, ptr %14, i32 1
  br label %12, !llvm.loop !75

21:                                               ; preds = %12
  store ptr %14, ptr %7, align 8
  store i8 %13, ptr %8, align 1
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
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds double, ptr %8, i32 -1
  store ptr %9, ptr %6, align 8
  %.promoted1 = load ptr, ptr %4, align 8
  br label %10

10:                                               ; preds = %14, %2
  %11 = phi ptr [ %12, %14 ], [ %.promoted1, %2 ]
  %12 = phi ptr [ %16, %14 ], [ %9, %2 ]
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %12)
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load double, ptr %12, align 8
  store double %15, ptr %11, align 8
  %16 = getelementptr inbounds double, ptr %12, i32 -1
  br label %10, !llvm.loop !76

17:                                               ; preds = %10
  store ptr %12, ptr %6, align 8
  store ptr %11, ptr %4, align 8
  %18 = load double, ptr %5, align 8
  store double %18, ptr %11, align 8
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
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !nonnull !15, !align !16
  %9 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %9
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
  %7 = load ptr, ptr %5, align 8, !nonnull !15, !align !16
  %8 = load double, ptr %7, align 8
  %9 = load double, ptr %2, align 8
  %10 = fcmp olt double %8, %9
  ret i1 %10
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
  %9 = load ptr, ptr %5, align 8
  %10 = icmp ne ptr %9, %1
  br i1 %10, label %11, label %22

11:                                               ; preds = %3
  %12 = ptrtoint ptr %1 to i64
  %13 = ptrtoint ptr %9 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 8
  %16 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %15)
  %17 = mul nsw i64 %16, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %4, i64 1, i1 false)
  %18 = load i8, ptr %7, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %9, ptr noundef %1, i64 noundef %17, i8 %18)
  %19 = load ptr, ptr %5, align 8
  %20 = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %4, i64 1, i1 false)
  %21 = load i8, ptr %8, align 1
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %19, ptr noundef %20, i8 %21)
  br label %22

22:                                               ; preds = %11, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i8 @_ZN9__gnu_cxx5__ops16__iter_comp_iterI24inline_less_than_functorEENS0_15_Iter_comp_iterIT_EES4_(i8 %0) #0 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1
  %3 = alloca %struct.inline_less_than_functor, align 1
  %4 = alloca %struct.inline_less_than_functor, align 1
  store i8 %0, ptr %3, align 1
  %5 = load i8, ptr %4, align 1
  call void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEC2ES2_(ptr noundef nonnull align 1 dereferenceable(1) %2, i8 %5)
  %6 = load i8, ptr %2, align 1
  ret i8 %6
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
  %13 = load ptr, ptr %6, align 8
  %14 = ptrtoint ptr %13 to i64
  %.promoted = load ptr, ptr %7, align 8
  %.promoted5 = load ptr, ptr %10, align 8
  br label %15

15:                                               ; preds = %29, %4
  %16 = phi ptr [ %32, %29 ], [ %.promoted5, %4 ]
  %17 = phi i64 [ %30, %29 ], [ %2, %4 ]
  %18 = phi ptr [ %32, %29 ], [ %.promoted, %4 ]
  %19 = ptrtoint ptr %18 to i64
  %20 = sub i64 %19, %14
  %21 = sdiv exact i64 %20, 8
  %22 = icmp sgt i64 %21, 16
  br i1 %22, label %23, label %.loopexit

23:                                               ; preds = %15
  %24 = icmp eq i64 %17, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %23
  store ptr %18, ptr %7, align 8
  store i64 %17, ptr %8, align 8
  store ptr %16, ptr %10, align 8
  %26 = load ptr, ptr %6, align 8
  %27 = load ptr, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %5, i64 1, i1 false)
  %28 = load i8, ptr %9, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %26, ptr noundef %27, ptr noundef %27, i8 %28)
  br label %34

29:                                               ; preds = %23
  %30 = add nsw i64 %17, -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %5, i64 1, i1 false)
  %31 = load i8, ptr %11, align 1
  %32 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_(ptr noundef %13, ptr noundef %18, i8 %31)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %5, i64 1, i1 false)
  %33 = load i8, ptr %12, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %32, ptr noundef %18, i64 noundef %30, i8 %33)
  br label %15, !llvm.loop !77

.loopexit:                                        ; preds = %15
  store ptr %18, ptr %7, align 8
  store i64 %17, ptr %8, align 8
  store ptr %16, ptr %10, align 8
  br label %34

34:                                               ; preds = %.loopexit, %25
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
  %10 = load ptr, ptr %5, align 8
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = icmp sgt i64 %14, 16
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = getelementptr inbounds double, ptr %10, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %4, i64 1, i1 false)
  %18 = load i8, ptr %7, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %10, ptr noundef %17, i8 %18)
  %19 = load ptr, ptr %5, align 8
  %20 = getelementptr inbounds double, ptr %19, i64 16
  %21 = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %4, i64 1, i1 false)
  %22 = load i8, ptr %8, align 1
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %20, ptr noundef %21, i8 %22)
  br label %25

23:                                               ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %24 = load i8, ptr %9, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %10, ptr noundef %1, i8 %24)
  br label %25

25:                                               ; preds = %23, %16
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
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %5, i64 1, i1 false)
  %12 = load i8, ptr %9, align 1
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %10, ptr noundef %11, ptr noundef %2, i8 %12)
  %13 = load ptr, ptr %6, align 8
  %14 = load ptr, ptr %7, align 8
  call void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(ptr noundef %13, ptr noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %5)
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
  %10 = load ptr, ptr %5, align 8
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = sdiv i64 %14, 2
  %16 = getelementptr inbounds double, ptr %10, i64 %15
  store ptr %16, ptr %7, align 8
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds double, ptr %17, i64 1
  %19 = load ptr, ptr %6, align 8
  %20 = getelementptr inbounds double, ptr %19, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %4, i64 1, i1 false)
  %21 = load i8, ptr %8, align 1
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_S6_T0_(ptr noundef %17, ptr noundef %18, ptr noundef %16, ptr noundef %20, i8 %21)
  %22 = load ptr, ptr %5, align 8
  %23 = getelementptr inbounds double, ptr %22, i64 1
  %24 = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %25 = load i8, ptr %9, align 1
  %26 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_S6_T0_(ptr noundef %23, ptr noundef %24, ptr noundef %22, i8 %25)
  ret ptr %26
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
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %7, align 8
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(ptr noundef %10, ptr noundef %11, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %12 = load ptr, ptr %7, align 8
  store ptr %12, ptr %9, align 8
  %13 = load ptr, ptr %8, align 8
  %14 = load ptr, ptr %6, align 8
  %15 = load ptr, ptr %7, align 8
  br label %16

16:                                               ; preds = %23, %4
  %17 = phi ptr [ %24, %23 ], [ %12, %4 ]
  %18 = icmp ult ptr %17, %13
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %17, ptr noundef %14)
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %14, ptr noundef %15, ptr noundef %17, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %22

22:                                               ; preds = %21, %19
  br label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds nuw double, ptr %17, i32 1
  br label %16, !llvm.loop !78

25:                                               ; preds = %16
  store ptr %17, ptr %9, align 8
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
  %7 = load ptr, ptr %4, align 8
  %8 = ptrtoint ptr %7 to i64
  %.promoted = load ptr, ptr %5, align 8
  br label %9

9:                                                ; preds = %15, %3
  %10 = phi ptr [ %16, %15 ], [ %.promoted, %3 ]
  %11 = ptrtoint ptr %10 to i64
  %12 = sub i64 %11, %8
  %13 = sdiv exact i64 %12, 8
  %14 = icmp sgt i64 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = getelementptr inbounds double, ptr %10, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %7, ptr noundef %16, ptr noundef %16, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %9, !llvm.loop !79

17:                                               ; preds = %9
  store ptr %10, ptr %5, align 8
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
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %4, align 8
  %13 = ptrtoint ptr %11 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 8
  %17 = icmp slt i64 %16, 2
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %34

19:                                               ; preds = %3
  store i64 %16, ptr %7, align 8
  %20 = sub nsw i64 %16, 2
  %21 = sdiv i64 %20, 2
  store i64 %21, ptr %8, align 8
  %22 = load ptr, ptr %4, align 8
  %23 = load i64, ptr %7, align 8
  %24 = load ptr, ptr %6, align 8, !nonnull !15
  br label %25

25:                                               ; preds = %32, %19
  %26 = phi i64 [ %33, %32 ], [ %21, %19 ]
  %27 = getelementptr inbounds double, ptr %22, i64 %26
  %28 = load double, ptr %27, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %24, i64 1, i1 false)
  %29 = load i8, ptr %10, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %22, i64 noundef %26, i64 noundef %23, double noundef %28, i8 %29)
  %30 = icmp eq i64 %26, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i64 %26, ptr %8, align 8
  store double %28, ptr %9, align 8
  br label %34

32:                                               ; preds = %25
  %33 = add nsw i64 %26, -1
  br label %25, !llvm.loop !80

34:                                               ; preds = %31, %18
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
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %9
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
  %11 = load ptr, ptr %7, align 8
  %12 = load double, ptr %11, align 8
  store double %12, ptr %9, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = load double, ptr %13, align 8
  %15 = load ptr, ptr %7, align 8
  store double %14, ptr %15, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = load ptr, ptr %6, align 8
  %18 = ptrtoint ptr %17 to i64
  %19 = ptrtoint ptr %16 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 8
  %22 = load double, ptr %9, align 8
  %23 = load ptr, ptr %8, align 8, !nonnull !15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %23, i64 1, i1 false)
  %24 = load i8, ptr %10, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %16, i64 noundef 0, i64 noundef %21, double noundef %22, i8 %24)
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
  %14 = load i64, ptr %8, align 8
  store i64 %14, ptr %11, align 8
  %15 = load i64, ptr %8, align 8
  store i64 %15, ptr %12, align 8
  %16 = load i64, ptr %9, align 8
  %17 = sub nsw i64 %16, 1
  %18 = sdiv i64 %17, 2
  %19 = load ptr, ptr %7, align 8
  %.promoted1 = load i64, ptr %8, align 8
  br label %20

20:                                               ; preds = %33, %5
  %21 = phi i64 [ %34, %33 ], [ %.promoted1, %5 ]
  %22 = phi i64 [ %34, %33 ], [ %15, %5 ]
  %23 = icmp slt i64 %22, %18
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = add nsw i64 %22, 1
  %26 = mul nsw i64 2, %25
  %27 = getelementptr inbounds double, ptr %19, i64 %26
  %28 = sub nsw i64 %26, 1
  %29 = getelementptr inbounds double, ptr %19, i64 %28
  %30 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %27, ptr noundef %29)
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = add nsw i64 %26, -1
  br label %33

33:                                               ; preds = %31, %24
  %34 = phi i64 [ %32, %31 ], [ %26, %24 ]
  %35 = getelementptr inbounds double, ptr %19, i64 %34
  %36 = load double, ptr %35, align 8
  %37 = getelementptr inbounds double, ptr %19, i64 %21
  store double %36, ptr %37, align 8
  br label %20, !llvm.loop !81

38:                                               ; preds = %20
  store i64 %22, ptr %12, align 8
  store i64 %21, ptr %8, align 8
  %39 = load i64, ptr %9, align 8
  %40 = and i64 %39, 1
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %38
  %43 = load i64, ptr %12, align 8
  %44 = sub nsw i64 %39, 2
  %45 = sdiv i64 %44, 2
  %46 = icmp eq i64 %43, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = add nsw i64 %43, 1
  %49 = mul nsw i64 2, %48
  store i64 %49, ptr %12, align 8
  %50 = load ptr, ptr %7, align 8
  %51 = sub nsw i64 %49, 1
  %52 = getelementptr inbounds double, ptr %50, i64 %51
  %53 = load double, ptr %52, align 8
  %54 = load i64, ptr %8, align 8
  %55 = getelementptr inbounds double, ptr %50, i64 %54
  store double %53, ptr %55, align 8
  %56 = load i64, ptr %12, align 8
  %57 = sub nsw i64 %56, 1
  store i64 %57, ptr %8, align 8
  br label %58

58:                                               ; preds = %47, %42, %38
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %59 = load ptr, ptr %7, align 8
  %60 = load i64, ptr %8, align 8
  %61 = load i64, ptr %11, align 8
  %62 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %59, i64 noundef %60, i64 noundef %61, double noundef %62, ptr noundef nonnull align 1 dereferenceable(1) %13)
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
  %12 = load i64, ptr %7, align 8
  %13 = sub nsw i64 %12, 1
  %14 = sdiv i64 %13, 2
  store i64 %14, ptr %11, align 8
  %15 = load i64, ptr %8, align 8
  %16 = load ptr, ptr %10, align 8, !nonnull !15
  %17 = load ptr, ptr %6, align 8
  %.promoted = load i64, ptr %7, align 8
  br label %18

18:                                               ; preds = %27, %5
  %19 = phi i64 [ %32, %27 ], [ %14, %5 ]
  %20 = phi i64 [ %19, %27 ], [ %.promoted, %5 ]
  %21 = icmp sgt i64 %20, %15
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = getelementptr inbounds double, ptr %17, i64 %19
  %24 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef %23, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi i1 [ false, %18 ], [ %24, %22 ]
  br i1 %26, label %27, label %33

27:                                               ; preds = %25
  %28 = getelementptr inbounds double, ptr %17, i64 %19
  %29 = load double, ptr %28, align 8
  %30 = getelementptr inbounds double, ptr %17, i64 %20
  store double %29, ptr %30, align 8
  %31 = sub nsw i64 %19, 1
  %32 = sdiv i64 %31, 2
  br label %18, !llvm.loop !82

33:                                               ; preds = %25
  store i64 %20, ptr %7, align 8
  store i64 %19, ptr %11, align 8
  %34 = load double, ptr %9, align 8
  %35 = load ptr, ptr %6, align 8
  %36 = load i64, ptr %7, align 8
  %37 = getelementptr inbounds double, ptr %35, i64 %36
  store double %34, ptr %37, align 8
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
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %9
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
  %11 = load ptr, ptr %8, align 8
  %12 = load ptr, ptr %9, align 8
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %11, ptr noundef %12)
  br i1 %13, label %14, label %33

14:                                               ; preds = %5
  %15 = load ptr, ptr %9, align 8
  %16 = load ptr, ptr %10, align 8
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %15, ptr noundef %16)
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load ptr, ptr %7, align 8
  %20 = load ptr, ptr %9, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %19, ptr noundef %20)
  br label %32

21:                                               ; preds = %14
  %22 = load ptr, ptr %8, align 8
  %23 = load ptr, ptr %10, align 8
  %24 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %22, ptr noundef %23)
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load ptr, ptr %7, align 8
  %27 = load ptr, ptr %10, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %26, ptr noundef %27)
  br label %31

28:                                               ; preds = %21
  %29 = load ptr, ptr %7, align 8
  %30 = load ptr, ptr %8, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %29, ptr noundef %30)
  br label %31

31:                                               ; preds = %28, %25
  br label %32

32:                                               ; preds = %31, %18
  br label %52

33:                                               ; preds = %5
  %34 = load ptr, ptr %8, align 8
  %35 = load ptr, ptr %10, align 8
  %36 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %34, ptr noundef %35)
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load ptr, ptr %7, align 8
  %39 = load ptr, ptr %8, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %38, ptr noundef %39)
  br label %51

40:                                               ; preds = %33
  %41 = load ptr, ptr %9, align 8
  %42 = load ptr, ptr %10, align 8
  %43 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %41, ptr noundef %42)
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load ptr, ptr %7, align 8
  %46 = load ptr, ptr %10, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %45, ptr noundef %46)
  br label %50

47:                                               ; preds = %40
  %48 = load ptr, ptr %7, align 8
  %49 = load ptr, ptr %9, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %48, ptr noundef %49)
  br label %50

50:                                               ; preds = %47, %44
  br label %51

51:                                               ; preds = %50, %37
  br label %52

52:                                               ; preds = %51, %32
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
  %.promoted3 = load ptr, ptr %6, align 8
  %.promoted = load ptr, ptr %7, align 8
  br label %9

9:                                                ; preds = %26, %4
  %.lcssa25 = phi ptr [ %18, %26 ], [ %.promoted, %4 ]
  %.lcssa4 = phi ptr [ %27, %26 ], [ %.promoted3, %4 ]
  br label %10

10:                                               ; preds = %13, %9
  %11 = phi ptr [ %14, %13 ], [ %.lcssa4, %9 ]
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %2)
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = getelementptr inbounds nuw double, ptr %11, i32 1
  br label %10, !llvm.loop !83

15:                                               ; preds = %10
  %16 = getelementptr inbounds double, ptr %.lcssa25, i32 -1
  br label %17

17:                                               ; preds = %20, %15
  %18 = phi ptr [ %21, %20 ], [ %16, %15 ]
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %18)
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = getelementptr inbounds double, ptr %18, i32 -1
  br label %17, !llvm.loop !84

22:                                               ; preds = %17
  %23 = icmp ult ptr %11, %18
  br i1 %23, label %26, label %24

24:                                               ; preds = %22
  store ptr %11, ptr %6, align 8
  store ptr %18, ptr %7, align 8
  %25 = load ptr, ptr %6, align 8
  ret ptr %25

26:                                               ; preds = %22
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %11, ptr noundef %18)
  %27 = getelementptr inbounds nuw double, ptr %11, i32 1
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
  %25 = load ptr, ptr %19, align 8
  %26 = icmp eq ptr %25, %1
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %79

28:                                               ; preds = %3
  %29 = getelementptr inbounds double, ptr %25, i64 1
  store ptr %29, ptr %21, align 8
  %30 = load ptr, ptr %20, align 8
  %31 = load ptr, ptr %19, align 8
  %.promoted1 = load i8, ptr %23, align 1
  %.promoted3 = load double, ptr %22, align 8
  %.promoted5 = load ptr, ptr %15, align 8
  %.promoted7 = load ptr, ptr %16, align 8
  %.promoted9 = load ptr, ptr %17, align 8
  %.promoted11 = load ptr, ptr %12, align 8
  %.promoted13 = load ptr, ptr %13, align 8
  %.promoted15 = load ptr, ptr %7, align 8
  %.promoted17 = load ptr, ptr %8, align 8
  %.promoted19 = load ptr, ptr %9, align 8
  %.promoted21 = load ptr, ptr %4, align 8
  %.promoted23 = load ptr, ptr %5, align 8
  %.promoted25 = load ptr, ptr %6, align 8
  %.promoted27 = load ptr, ptr %10, align 1
  %.promoted29 = load ptr, ptr %11, align 1
  br label %32

32:                                               ; preds = %77, %28
  %33 = phi ptr [ %62, %77 ], [ %.promoted29, %28 ]
  %34 = phi ptr [ %63, %77 ], [ %.promoted27, %28 ]
  %35 = phi ptr [ %64, %77 ], [ %.promoted25, %28 ]
  %36 = phi ptr [ %65, %77 ], [ %.promoted23, %28 ]
  %37 = phi ptr [ %66, %77 ], [ %.promoted21, %28 ]
  %38 = phi ptr [ %67, %77 ], [ %.promoted19, %28 ]
  %39 = phi ptr [ %68, %77 ], [ %.promoted17, %28 ]
  %40 = phi ptr [ %69, %77 ], [ %.promoted15, %28 ]
  %41 = phi ptr [ %70, %77 ], [ %.promoted13, %28 ]
  %42 = phi ptr [ %71, %77 ], [ %.promoted11, %28 ]
  %43 = phi ptr [ %72, %77 ], [ %.promoted9, %28 ]
  %44 = phi ptr [ %73, %77 ], [ %.promoted7, %28 ]
  %45 = phi ptr [ %74, %77 ], [ %.promoted5, %28 ]
  %46 = phi double [ %75, %77 ], [ %.promoted3, %28 ]
  %47 = phi i8 [ %76, %77 ], [ %.promoted1, %28 ]
  %48 = phi ptr [ %78, %77 ], [ %29, %28 ]
  %49 = icmp ne ptr %48, %30
  br i1 %49, label %50, label %.loopexit

50:                                               ; preds = %32
  %51 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef %48, ptr noundef %31)
  br i1 %51, label %52, label %58

52:                                               ; preds = %50
  %53 = load double, ptr %48, align 8
  %54 = getelementptr inbounds double, ptr %48, i64 1
  %55 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %31)
  %56 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %48)
  store ptr %54, ptr %14, align 8
  %57 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %55, ptr noundef %56, ptr noundef %54)
  store double %53, ptr %31, align 8
  br label %61

58:                                               ; preds = %50
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr align 1 %18, i64 1, i1 false)
  %59 = load i8, ptr %24, align 1
  %60 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %59)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %48, i8 %60)
  br label %61

61:                                               ; preds = %58, %52
  %62 = phi ptr [ %33, %58 ], [ %57, %52 ]
  %63 = phi ptr [ %34, %58 ], [ %14, %52 ]
  %64 = phi ptr [ %35, %58 ], [ %54, %52 ]
  %65 = phi ptr [ %36, %58 ], [ %56, %52 ]
  %66 = phi ptr [ %37, %58 ], [ %55, %52 ]
  %67 = phi ptr [ %38, %58 ], [ %54, %52 ]
  %68 = phi ptr [ %39, %58 ], [ %56, %52 ]
  %69 = phi ptr [ %40, %58 ], [ %55, %52 ]
  %70 = phi ptr [ %41, %58 ], [ %56, %52 ]
  %71 = phi ptr [ %42, %58 ], [ %55, %52 ]
  %72 = phi ptr [ %43, %58 ], [ %54, %52 ]
  %73 = phi ptr [ %44, %58 ], [ %48, %52 ]
  %74 = phi ptr [ %45, %58 ], [ %31, %52 ]
  %75 = phi double [ %46, %58 ], [ %53, %52 ]
  %76 = phi i8 [ %60, %58 ], [ %47, %52 ]
  br label %77

77:                                               ; preds = %61
  %78 = getelementptr inbounds nuw double, ptr %48, i32 1
  br label %32, !llvm.loop !86

.loopexit:                                        ; preds = %32
  store ptr %48, ptr %21, align 8
  store i8 %47, ptr %23, align 1
  store double %46, ptr %22, align 8
  store ptr %45, ptr %15, align 8
  store ptr %44, ptr %16, align 8
  store ptr %43, ptr %17, align 8
  store ptr %42, ptr %12, align 8
  store ptr %41, ptr %13, align 8
  store ptr %40, ptr %7, align 8
  store ptr %39, ptr %8, align 8
  store ptr %38, ptr %9, align 8
  store ptr %37, ptr %4, align 8
  store ptr %36, ptr %5, align 8
  store ptr %35, ptr %6, align 8
  store ptr %34, ptr %10, align 1
  store ptr %33, ptr %11, align 1
  br label %79

79:                                               ; preds = %.loopexit, %27
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
  %10 = load ptr, ptr %5, align 8
  store ptr %10, ptr %7, align 8
  %11 = load ptr, ptr %6, align 8
  %.promoted1 = load i8, ptr %8, align 1
  br label %12

12:                                               ; preds = %19, %3
  %13 = phi i8 [ %18, %19 ], [ %.promoted1, %3 ]
  %14 = phi ptr [ %20, %19 ], [ %10, %3 ]
  %15 = icmp ne ptr %14, %11
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %17 = load i8, ptr %9, align 1
  %18 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %17)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %14, i8 %18)
  br label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw double, ptr %14, i32 1
  br label %12, !llvm.loop !87

21:                                               ; preds = %12
  store ptr %14, ptr %7, align 8
  store i8 %13, ptr %8, align 1
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
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds double, ptr %8, i32 -1
  store ptr %9, ptr %6, align 8
  %.promoted1 = load ptr, ptr %4, align 8
  br label %10

10:                                               ; preds = %14, %2
  %11 = phi ptr [ %12, %14 ], [ %.promoted1, %2 ]
  %12 = phi ptr [ %16, %14 ], [ %9, %2 ]
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %12)
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load double, ptr %12, align 8
  store double %15, ptr %11, align 8
  %16 = getelementptr inbounds double, ptr %12, i32 -1
  br label %10, !llvm.loop !88

17:                                               ; preds = %10
  store ptr %12, ptr %6, align 8
  store ptr %11, ptr %4, align 8
  %18 = load double, ptr %5, align 8
  store double %18, ptr %11, align 8
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
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !nonnull !15, !align !16
  %9 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %9
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
  %7 = load ptr, ptr %5, align 8, !nonnull !15, !align !16
  %8 = load double, ptr %7, align 8
  %9 = load double, ptr %2, align 8
  %10 = fcmp olt double %8, %9
  ret i1 %10
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
  %9 = load ptr, ptr %5, align 8
  %10 = icmp ne ptr %9, %1
  br i1 %10, label %11, label %22

11:                                               ; preds = %3
  %12 = ptrtoint ptr %1 to i64
  %13 = ptrtoint ptr %9 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 8
  %16 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %15)
  %17 = mul nsw i64 %16, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %4, i64 1, i1 false)
  %18 = load i8, ptr %7, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %9, ptr noundef %1, i64 noundef %17, i8 %18)
  %19 = load ptr, ptr %5, align 8
  %20 = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %4, i64 1, i1 false)
  %21 = load i8, ptr %8, align 1
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %19, ptr noundef %20, i8 %21)
  br label %22

22:                                               ; preds = %11, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i8 @_ZN9__gnu_cxx5__ops16__iter_comp_iterISt4lessIdEEENS0_15_Iter_comp_iterIT_EES5_(i8 %0) #0 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %3 = alloca %"struct.std::less", align 1
  %4 = alloca %"struct.std::less", align 1
  store i8 %0, ptr %3, align 1
  %5 = load i8, ptr %4, align 1
  call void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEC2ES3_(ptr noundef nonnull align 1 dereferenceable(1) %2, i8 %5)
  %6 = load i8, ptr %2, align 1
  ret i8 %6
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
  %13 = load ptr, ptr %6, align 8
  %14 = ptrtoint ptr %13 to i64
  %.promoted = load ptr, ptr %7, align 8
  %.promoted5 = load ptr, ptr %10, align 8
  br label %15

15:                                               ; preds = %29, %4
  %16 = phi ptr [ %32, %29 ], [ %.promoted5, %4 ]
  %17 = phi i64 [ %30, %29 ], [ %2, %4 ]
  %18 = phi ptr [ %32, %29 ], [ %.promoted, %4 ]
  %19 = ptrtoint ptr %18 to i64
  %20 = sub i64 %19, %14
  %21 = sdiv exact i64 %20, 8
  %22 = icmp sgt i64 %21, 16
  br i1 %22, label %23, label %.loopexit

23:                                               ; preds = %15
  %24 = icmp eq i64 %17, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %23
  store ptr %18, ptr %7, align 8
  store i64 %17, ptr %8, align 8
  store ptr %16, ptr %10, align 8
  %26 = load ptr, ptr %6, align 8
  %27 = load ptr, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %5, i64 1, i1 false)
  %28 = load i8, ptr %9, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %26, ptr noundef %27, ptr noundef %27, i8 %28)
  br label %34

29:                                               ; preds = %23
  %30 = add nsw i64 %17, -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %5, i64 1, i1 false)
  %31 = load i8, ptr %11, align 1
  %32 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_(ptr noundef %13, ptr noundef %18, i8 %31)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %5, i64 1, i1 false)
  %33 = load i8, ptr %12, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %32, ptr noundef %18, i64 noundef %30, i8 %33)
  br label %15, !llvm.loop !89

.loopexit:                                        ; preds = %15
  store ptr %18, ptr %7, align 8
  store i64 %17, ptr %8, align 8
  store ptr %16, ptr %10, align 8
  br label %34

34:                                               ; preds = %.loopexit, %25
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
  %10 = load ptr, ptr %5, align 8
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = icmp sgt i64 %14, 16
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = getelementptr inbounds double, ptr %10, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %4, i64 1, i1 false)
  %18 = load i8, ptr %7, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %10, ptr noundef %17, i8 %18)
  %19 = load ptr, ptr %5, align 8
  %20 = getelementptr inbounds double, ptr %19, i64 16
  %21 = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %4, i64 1, i1 false)
  %22 = load i8, ptr %8, align 1
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %20, ptr noundef %21, i8 %22)
  br label %25

23:                                               ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %24 = load i8, ptr %9, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %10, ptr noundef %1, i8 %24)
  br label %25

25:                                               ; preds = %23, %16
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
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %5, i64 1, i1 false)
  %12 = load i8, ptr %9, align 1
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %10, ptr noundef %11, ptr noundef %2, i8 %12)
  %13 = load ptr, ptr %6, align 8
  %14 = load ptr, ptr %7, align 8
  call void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %13, ptr noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %5)
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
  %10 = load ptr, ptr %5, align 8
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = sdiv i64 %14, 2
  %16 = getelementptr inbounds double, ptr %10, i64 %15
  store ptr %16, ptr %7, align 8
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds double, ptr %17, i64 1
  %19 = load ptr, ptr %6, align 8
  %20 = getelementptr inbounds double, ptr %19, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %4, i64 1, i1 false)
  %21 = load i8, ptr %8, align 1
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_(ptr noundef %17, ptr noundef %18, ptr noundef %16, ptr noundef %20, i8 %21)
  %22 = load ptr, ptr %5, align 8
  %23 = getelementptr inbounds double, ptr %22, i64 1
  %24 = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %25 = load i8, ptr %9, align 1
  %26 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_S7_T0_(ptr noundef %23, ptr noundef %24, ptr noundef %22, i8 %25)
  ret ptr %26
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
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %7, align 8
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %10, ptr noundef %11, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %12 = load ptr, ptr %7, align 8
  store ptr %12, ptr %9, align 8
  %13 = load ptr, ptr %8, align 8
  %14 = load ptr, ptr %6, align 8
  %15 = load ptr, ptr %7, align 8
  br label %16

16:                                               ; preds = %23, %4
  %17 = phi ptr [ %24, %23 ], [ %12, %4 ]
  %18 = icmp ult ptr %17, %13
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %17, ptr noundef %14)
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %14, ptr noundef %15, ptr noundef %17, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %22

22:                                               ; preds = %21, %19
  br label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds nuw double, ptr %17, i32 1
  br label %16, !llvm.loop !90

25:                                               ; preds = %16
  store ptr %17, ptr %9, align 8
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
  %7 = load ptr, ptr %4, align 8
  %8 = ptrtoint ptr %7 to i64
  %.promoted = load ptr, ptr %5, align 8
  br label %9

9:                                                ; preds = %15, %3
  %10 = phi ptr [ %16, %15 ], [ %.promoted, %3 ]
  %11 = ptrtoint ptr %10 to i64
  %12 = sub i64 %11, %8
  %13 = sdiv exact i64 %12, 8
  %14 = icmp sgt i64 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = getelementptr inbounds double, ptr %10, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %7, ptr noundef %16, ptr noundef %16, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %9, !llvm.loop !91

17:                                               ; preds = %9
  store ptr %10, ptr %5, align 8
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
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %4, align 8
  %13 = ptrtoint ptr %11 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 8
  %17 = icmp slt i64 %16, 2
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %34

19:                                               ; preds = %3
  store i64 %16, ptr %7, align 8
  %20 = sub nsw i64 %16, 2
  %21 = sdiv i64 %20, 2
  store i64 %21, ptr %8, align 8
  %22 = load ptr, ptr %4, align 8
  %23 = load i64, ptr %7, align 8
  %24 = load ptr, ptr %6, align 8, !nonnull !15
  br label %25

25:                                               ; preds = %32, %19
  %26 = phi i64 [ %33, %32 ], [ %21, %19 ]
  %27 = getelementptr inbounds double, ptr %22, i64 %26
  %28 = load double, ptr %27, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %24, i64 1, i1 false)
  %29 = load i8, ptr %10, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %22, i64 noundef %26, i64 noundef %23, double noundef %28, i8 %29)
  %30 = icmp eq i64 %26, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i64 %26, ptr %8, align 8
  store double %28, ptr %9, align 8
  br label %34

32:                                               ; preds = %25
  %33 = add nsw i64 %26, -1
  br label %25, !llvm.loop !92

34:                                               ; preds = %31, %18
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
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %9
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
  %11 = load ptr, ptr %7, align 8
  %12 = load double, ptr %11, align 8
  store double %12, ptr %9, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = load double, ptr %13, align 8
  %15 = load ptr, ptr %7, align 8
  store double %14, ptr %15, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = load ptr, ptr %6, align 8
  %18 = ptrtoint ptr %17 to i64
  %19 = ptrtoint ptr %16 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 8
  %22 = load double, ptr %9, align 8
  %23 = load ptr, ptr %8, align 8, !nonnull !15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %23, i64 1, i1 false)
  %24 = load i8, ptr %10, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %16, i64 noundef 0, i64 noundef %21, double noundef %22, i8 %24)
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
  %14 = load i64, ptr %8, align 8
  store i64 %14, ptr %11, align 8
  %15 = load i64, ptr %8, align 8
  store i64 %15, ptr %12, align 8
  %16 = load i64, ptr %9, align 8
  %17 = sub nsw i64 %16, 1
  %18 = sdiv i64 %17, 2
  %19 = load ptr, ptr %7, align 8
  %.promoted1 = load i64, ptr %8, align 8
  br label %20

20:                                               ; preds = %33, %5
  %21 = phi i64 [ %34, %33 ], [ %.promoted1, %5 ]
  %22 = phi i64 [ %34, %33 ], [ %15, %5 ]
  %23 = icmp slt i64 %22, %18
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = add nsw i64 %22, 1
  %26 = mul nsw i64 2, %25
  %27 = getelementptr inbounds double, ptr %19, i64 %26
  %28 = sub nsw i64 %26, 1
  %29 = getelementptr inbounds double, ptr %19, i64 %28
  %30 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %27, ptr noundef %29)
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = add nsw i64 %26, -1
  br label %33

33:                                               ; preds = %31, %24
  %34 = phi i64 [ %32, %31 ], [ %26, %24 ]
  %35 = getelementptr inbounds double, ptr %19, i64 %34
  %36 = load double, ptr %35, align 8
  %37 = getelementptr inbounds double, ptr %19, i64 %21
  store double %36, ptr %37, align 8
  br label %20, !llvm.loop !93

38:                                               ; preds = %20
  store i64 %22, ptr %12, align 8
  store i64 %21, ptr %8, align 8
  %39 = load i64, ptr %9, align 8
  %40 = and i64 %39, 1
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %38
  %43 = load i64, ptr %12, align 8
  %44 = sub nsw i64 %39, 2
  %45 = sdiv i64 %44, 2
  %46 = icmp eq i64 %43, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = add nsw i64 %43, 1
  %49 = mul nsw i64 2, %48
  store i64 %49, ptr %12, align 8
  %50 = load ptr, ptr %7, align 8
  %51 = sub nsw i64 %49, 1
  %52 = getelementptr inbounds double, ptr %50, i64 %51
  %53 = load double, ptr %52, align 8
  %54 = load i64, ptr %8, align 8
  %55 = getelementptr inbounds double, ptr %50, i64 %54
  store double %53, ptr %55, align 8
  %56 = load i64, ptr %12, align 8
  %57 = sub nsw i64 %56, 1
  store i64 %57, ptr %8, align 8
  br label %58

58:                                               ; preds = %47, %42, %38
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %59 = load ptr, ptr %7, align 8
  %60 = load i64, ptr %8, align 8
  %61 = load i64, ptr %11, align 8
  %62 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEEEvT_T0_S8_T1_RT2_(ptr noundef %59, i64 noundef %60, i64 noundef %61, double noundef %62, ptr noundef nonnull align 1 dereferenceable(1) %13)
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
  %12 = load i64, ptr %7, align 8
  %13 = sub nsw i64 %12, 1
  %14 = sdiv i64 %13, 2
  store i64 %14, ptr %11, align 8
  %15 = load i64, ptr %8, align 8
  %16 = load ptr, ptr %10, align 8, !nonnull !15
  %17 = load ptr, ptr %6, align 8
  %.promoted = load i64, ptr %7, align 8
  br label %18

18:                                               ; preds = %27, %5
  %19 = phi i64 [ %32, %27 ], [ %14, %5 ]
  %20 = phi i64 [ %19, %27 ], [ %.promoted, %5 ]
  %21 = icmp sgt i64 %20, %15
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = getelementptr inbounds double, ptr %17, i64 %19
  %24 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef %23, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi i1 [ false, %18 ], [ %24, %22 ]
  br i1 %26, label %27, label %33

27:                                               ; preds = %25
  %28 = getelementptr inbounds double, ptr %17, i64 %19
  %29 = load double, ptr %28, align 8
  %30 = getelementptr inbounds double, ptr %17, i64 %20
  store double %29, ptr %30, align 8
  %31 = sub nsw i64 %19, 1
  %32 = sdiv i64 %31, 2
  br label %18, !llvm.loop !94

33:                                               ; preds = %25
  store i64 %20, ptr %7, align 8
  store i64 %19, ptr %11, align 8
  %34 = load double, ptr %9, align 8
  %35 = load ptr, ptr %6, align 8
  %36 = load i64, ptr %7, align 8
  %37 = getelementptr inbounds double, ptr %35, i64 %36
  store double %34, ptr %37, align 8
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
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %9
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
  %11 = load ptr, ptr %8, align 8
  %12 = load ptr, ptr %9, align 8
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %11, ptr noundef %12)
  br i1 %13, label %14, label %33

14:                                               ; preds = %5
  %15 = load ptr, ptr %9, align 8
  %16 = load ptr, ptr %10, align 8
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %15, ptr noundef %16)
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load ptr, ptr %7, align 8
  %20 = load ptr, ptr %9, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %19, ptr noundef %20)
  br label %32

21:                                               ; preds = %14
  %22 = load ptr, ptr %8, align 8
  %23 = load ptr, ptr %10, align 8
  %24 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %22, ptr noundef %23)
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load ptr, ptr %7, align 8
  %27 = load ptr, ptr %10, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %26, ptr noundef %27)
  br label %31

28:                                               ; preds = %21
  %29 = load ptr, ptr %7, align 8
  %30 = load ptr, ptr %8, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %29, ptr noundef %30)
  br label %31

31:                                               ; preds = %28, %25
  br label %32

32:                                               ; preds = %31, %18
  br label %52

33:                                               ; preds = %5
  %34 = load ptr, ptr %8, align 8
  %35 = load ptr, ptr %10, align 8
  %36 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %34, ptr noundef %35)
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load ptr, ptr %7, align 8
  %39 = load ptr, ptr %8, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %38, ptr noundef %39)
  br label %51

40:                                               ; preds = %33
  %41 = load ptr, ptr %9, align 8
  %42 = load ptr, ptr %10, align 8
  %43 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %41, ptr noundef %42)
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load ptr, ptr %7, align 8
  %46 = load ptr, ptr %10, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %45, ptr noundef %46)
  br label %50

47:                                               ; preds = %40
  %48 = load ptr, ptr %7, align 8
  %49 = load ptr, ptr %9, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %48, ptr noundef %49)
  br label %50

50:                                               ; preds = %47, %44
  br label %51

51:                                               ; preds = %50, %37
  br label %52

52:                                               ; preds = %51, %32
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
  %.promoted3 = load ptr, ptr %6, align 8
  %.promoted = load ptr, ptr %7, align 8
  br label %9

9:                                                ; preds = %26, %4
  %.lcssa25 = phi ptr [ %18, %26 ], [ %.promoted, %4 ]
  %.lcssa4 = phi ptr [ %27, %26 ], [ %.promoted3, %4 ]
  br label %10

10:                                               ; preds = %13, %9
  %11 = phi ptr [ %14, %13 ], [ %.lcssa4, %9 ]
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %2)
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = getelementptr inbounds nuw double, ptr %11, i32 1
  br label %10, !llvm.loop !95

15:                                               ; preds = %10
  %16 = getelementptr inbounds double, ptr %.lcssa25, i32 -1
  br label %17

17:                                               ; preds = %20, %15
  %18 = phi ptr [ %21, %20 ], [ %16, %15 ]
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %18)
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = getelementptr inbounds double, ptr %18, i32 -1
  br label %17, !llvm.loop !96

22:                                               ; preds = %17
  %23 = icmp ult ptr %11, %18
  br i1 %23, label %26, label %24

24:                                               ; preds = %22
  store ptr %11, ptr %6, align 8
  store ptr %18, ptr %7, align 8
  %25 = load ptr, ptr %6, align 8
  ret ptr %25

26:                                               ; preds = %22
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %11, ptr noundef %18)
  %27 = getelementptr inbounds nuw double, ptr %11, i32 1
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
  %25 = load ptr, ptr %19, align 8
  %26 = icmp eq ptr %25, %1
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %79

28:                                               ; preds = %3
  %29 = getelementptr inbounds double, ptr %25, i64 1
  store ptr %29, ptr %21, align 8
  %30 = load ptr, ptr %20, align 8
  %31 = load ptr, ptr %19, align 8
  %.promoted1 = load i8, ptr %23, align 1
  %.promoted3 = load double, ptr %22, align 8
  %.promoted5 = load ptr, ptr %15, align 8
  %.promoted7 = load ptr, ptr %16, align 8
  %.promoted9 = load ptr, ptr %17, align 8
  %.promoted11 = load ptr, ptr %12, align 8
  %.promoted13 = load ptr, ptr %13, align 8
  %.promoted15 = load ptr, ptr %7, align 8
  %.promoted17 = load ptr, ptr %8, align 8
  %.promoted19 = load ptr, ptr %9, align 8
  %.promoted21 = load ptr, ptr %4, align 8
  %.promoted23 = load ptr, ptr %5, align 8
  %.promoted25 = load ptr, ptr %6, align 8
  %.promoted27 = load ptr, ptr %10, align 1
  %.promoted29 = load ptr, ptr %11, align 1
  br label %32

32:                                               ; preds = %77, %28
  %33 = phi ptr [ %62, %77 ], [ %.promoted29, %28 ]
  %34 = phi ptr [ %63, %77 ], [ %.promoted27, %28 ]
  %35 = phi ptr [ %64, %77 ], [ %.promoted25, %28 ]
  %36 = phi ptr [ %65, %77 ], [ %.promoted23, %28 ]
  %37 = phi ptr [ %66, %77 ], [ %.promoted21, %28 ]
  %38 = phi ptr [ %67, %77 ], [ %.promoted19, %28 ]
  %39 = phi ptr [ %68, %77 ], [ %.promoted17, %28 ]
  %40 = phi ptr [ %69, %77 ], [ %.promoted15, %28 ]
  %41 = phi ptr [ %70, %77 ], [ %.promoted13, %28 ]
  %42 = phi ptr [ %71, %77 ], [ %.promoted11, %28 ]
  %43 = phi ptr [ %72, %77 ], [ %.promoted9, %28 ]
  %44 = phi ptr [ %73, %77 ], [ %.promoted7, %28 ]
  %45 = phi ptr [ %74, %77 ], [ %.promoted5, %28 ]
  %46 = phi double [ %75, %77 ], [ %.promoted3, %28 ]
  %47 = phi i8 [ %76, %77 ], [ %.promoted1, %28 ]
  %48 = phi ptr [ %78, %77 ], [ %29, %28 ]
  %49 = icmp ne ptr %48, %30
  br i1 %49, label %50, label %.loopexit

50:                                               ; preds = %32
  %51 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef %48, ptr noundef %31)
  br i1 %51, label %52, label %58

52:                                               ; preds = %50
  %53 = load double, ptr %48, align 8
  %54 = getelementptr inbounds double, ptr %48, i64 1
  %55 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %31)
  %56 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %48)
  store ptr %54, ptr %14, align 8
  %57 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %55, ptr noundef %56, ptr noundef %54)
  store double %53, ptr %31, align 8
  br label %61

58:                                               ; preds = %50
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr align 1 %18, i64 1, i1 false)
  %59 = load i8, ptr %24, align 1
  %60 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %59)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %48, i8 %60)
  br label %61

61:                                               ; preds = %58, %52
  %62 = phi ptr [ %33, %58 ], [ %57, %52 ]
  %63 = phi ptr [ %34, %58 ], [ %14, %52 ]
  %64 = phi ptr [ %35, %58 ], [ %54, %52 ]
  %65 = phi ptr [ %36, %58 ], [ %56, %52 ]
  %66 = phi ptr [ %37, %58 ], [ %55, %52 ]
  %67 = phi ptr [ %38, %58 ], [ %54, %52 ]
  %68 = phi ptr [ %39, %58 ], [ %56, %52 ]
  %69 = phi ptr [ %40, %58 ], [ %55, %52 ]
  %70 = phi ptr [ %41, %58 ], [ %56, %52 ]
  %71 = phi ptr [ %42, %58 ], [ %55, %52 ]
  %72 = phi ptr [ %43, %58 ], [ %54, %52 ]
  %73 = phi ptr [ %44, %58 ], [ %48, %52 ]
  %74 = phi ptr [ %45, %58 ], [ %31, %52 ]
  %75 = phi double [ %46, %58 ], [ %53, %52 ]
  %76 = phi i8 [ %60, %58 ], [ %47, %52 ]
  br label %77

77:                                               ; preds = %61
  %78 = getelementptr inbounds nuw double, ptr %48, i32 1
  br label %32, !llvm.loop !98

.loopexit:                                        ; preds = %32
  store ptr %48, ptr %21, align 8
  store i8 %47, ptr %23, align 1
  store double %46, ptr %22, align 8
  store ptr %45, ptr %15, align 8
  store ptr %44, ptr %16, align 8
  store ptr %43, ptr %17, align 8
  store ptr %42, ptr %12, align 8
  store ptr %41, ptr %13, align 8
  store ptr %40, ptr %7, align 8
  store ptr %39, ptr %8, align 8
  store ptr %38, ptr %9, align 8
  store ptr %37, ptr %4, align 8
  store ptr %36, ptr %5, align 8
  store ptr %35, ptr %6, align 8
  store ptr %34, ptr %10, align 1
  store ptr %33, ptr %11, align 1
  br label %79

79:                                               ; preds = %.loopexit, %27
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
  %10 = load ptr, ptr %5, align 8
  store ptr %10, ptr %7, align 8
  %11 = load ptr, ptr %6, align 8
  %.promoted1 = load i8, ptr %8, align 1
  br label %12

12:                                               ; preds = %19, %3
  %13 = phi i8 [ %18, %19 ], [ %.promoted1, %3 ]
  %14 = phi ptr [ %20, %19 ], [ %10, %3 ]
  %15 = icmp ne ptr %14, %11
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %17 = load i8, ptr %9, align 1
  %18 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %17)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %14, i8 %18)
  br label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw double, ptr %14, i32 1
  br label %12, !llvm.loop !99

21:                                               ; preds = %12
  store ptr %14, ptr %7, align 8
  store i8 %13, ptr %8, align 1
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
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds double, ptr %8, i32 -1
  store ptr %9, ptr %6, align 8
  %.promoted1 = load ptr, ptr %4, align 8
  br label %10

10:                                               ; preds = %14, %2
  %11 = phi ptr [ %12, %14 ], [ %.promoted1, %2 ]
  %12 = phi ptr [ %16, %14 ], [ %9, %2 ]
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %12)
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load double, ptr %12, align 8
  store double %15, ptr %11, align 8
  %16 = getelementptr inbounds double, ptr %12, i32 -1
  br label %10, !llvm.loop !100

17:                                               ; preds = %10
  store ptr %12, ptr %6, align 8
  store ptr %11, ptr %4, align 8
  %18 = load double, ptr %5, align 8
  store double %18, ptr %11, align 8
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
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !nonnull !15, !align !16
  %9 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %9
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
  %9 = load ptr, ptr %5, align 8
  %10 = icmp ne ptr %9, %1
  br i1 %10, label %11, label %22

11:                                               ; preds = %3
  %12 = ptrtoint ptr %1 to i64
  %13 = ptrtoint ptr %9 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 8
  %16 = call noundef i64 @_ZSt4__lgIxET_S0_(i64 noundef %15)
  %17 = mul nsw i64 %16, 2
  %18 = load i8, ptr %7, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %9, ptr noundef %1, i64 noundef %17, i8 %18)
  %19 = load ptr, ptr %5, align 8
  %20 = load ptr, ptr %6, align 8
  %21 = load i8, ptr %8, align 1
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %19, ptr noundef %20, i8 %21)
  br label %22

22:                                               ; preds = %11, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local i8 @_ZN9__gnu_cxx5__ops16__iter_less_iterEv() #5 comdat {
  %1 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %2 = load i8, ptr %1, align 1
  ret i8 %2
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
  %13 = load ptr, ptr %6, align 8
  %14 = ptrtoint ptr %13 to i64
  %15 = load i8, ptr %11, align 1
  %16 = load i8, ptr %12, align 1
  %.promoted = load ptr, ptr %7, align 8
  %.promoted5 = load ptr, ptr %10, align 8
  br label %17

17:                                               ; preds = %31, %4
  %18 = phi ptr [ %33, %31 ], [ %.promoted5, %4 ]
  %19 = phi i64 [ %32, %31 ], [ %2, %4 ]
  %20 = phi ptr [ %33, %31 ], [ %.promoted, %4 ]
  %21 = ptrtoint ptr %20 to i64
  %22 = sub i64 %21, %14
  %23 = sdiv exact i64 %22, 8
  %24 = icmp sgt i64 %23, 16
  br i1 %24, label %25, label %.loopexit

25:                                               ; preds = %17
  %26 = icmp eq i64 %19, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %25
  store ptr %20, ptr %7, align 8
  store i64 %19, ptr %8, align 8
  store ptr %18, ptr %10, align 8
  %28 = load ptr, ptr %6, align 8
  %29 = load ptr, ptr %7, align 8
  %30 = load i8, ptr %9, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %28, ptr noundef %29, ptr noundef %29, i8 %30)
  br label %34

31:                                               ; preds = %25
  %32 = add nsw i64 %19, -1
  %33 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(ptr noundef %13, ptr noundef %20, i8 %15)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %33, ptr noundef %20, i64 noundef %32, i8 %16)
  br label %17, !llvm.loop !101

.loopexit:                                        ; preds = %17
  store ptr %20, ptr %7, align 8
  store i64 %19, ptr %8, align 8
  store ptr %18, ptr %10, align 8
  br label %34

34:                                               ; preds = %.loopexit, %27
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
  %10 = load ptr, ptr %5, align 8
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = icmp sgt i64 %14, 16
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = getelementptr inbounds double, ptr %10, i64 16
  %18 = load i8, ptr %7, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %10, ptr noundef %17, i8 %18)
  %19 = load ptr, ptr %5, align 8
  %20 = getelementptr inbounds double, ptr %19, i64 16
  %21 = load ptr, ptr %6, align 8
  %22 = load i8, ptr %8, align 1
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %20, ptr noundef %21, i8 %22)
  br label %25

23:                                               ; preds = %3
  %24 = load i8, ptr %9, align 1
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %10, ptr noundef %1, i8 %24)
  br label %25

25:                                               ; preds = %23, %16
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
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = load i8, ptr %9, align 1
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %10, ptr noundef %11, ptr noundef %2, i8 %12)
  %13 = load ptr, ptr %6, align 8
  %14 = load ptr, ptr %7, align 8
  call void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %13, ptr noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %5)
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
  %10 = load ptr, ptr %5, align 8
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = sdiv i64 %14, 2
  %16 = getelementptr inbounds double, ptr %10, i64 %15
  store ptr %16, ptr %7, align 8
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds double, ptr %17, i64 1
  %19 = load ptr, ptr %6, align 8
  %20 = getelementptr inbounds double, ptr %19, i64 -1
  %21 = load i8, ptr %8, align 1
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_(ptr noundef %17, ptr noundef %18, ptr noundef %16, ptr noundef %20, i8 %21)
  %22 = load ptr, ptr %5, align 8
  %23 = getelementptr inbounds double, ptr %22, i64 1
  %24 = load ptr, ptr %6, align 8
  %25 = load i8, ptr %9, align 1
  %26 = call noundef ptr @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_(ptr noundef %23, ptr noundef %24, ptr noundef %22, i8 %25)
  ret ptr %26
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
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %7, align 8
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %10, ptr noundef %11, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %12 = load ptr, ptr %7, align 8
  store ptr %12, ptr %9, align 8
  %13 = load ptr, ptr %8, align 8
  %14 = load ptr, ptr %6, align 8
  %15 = load ptr, ptr %7, align 8
  br label %16

16:                                               ; preds = %23, %4
  %17 = phi ptr [ %24, %23 ], [ %12, %4 ]
  %18 = icmp ult ptr %17, %13
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %17, ptr noundef %14)
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %14, ptr noundef %15, ptr noundef %17, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %22

22:                                               ; preds = %21, %19
  br label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds nuw double, ptr %17, i32 1
  br label %16, !llvm.loop !102

25:                                               ; preds = %16
  store ptr %17, ptr %9, align 8
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
  %7 = load ptr, ptr %4, align 8
  %8 = ptrtoint ptr %7 to i64
  %.promoted = load ptr, ptr %5, align 8
  br label %9

9:                                                ; preds = %15, %3
  %10 = phi ptr [ %16, %15 ], [ %.promoted, %3 ]
  %11 = ptrtoint ptr %10 to i64
  %12 = sub i64 %11, %8
  %13 = sdiv exact i64 %12, 8
  %14 = icmp sgt i64 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = getelementptr inbounds double, ptr %10, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %7, ptr noundef %16, ptr noundef %16, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %9, !llvm.loop !103

17:                                               ; preds = %9
  store ptr %10, ptr %5, align 8
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
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %4, align 8
  %13 = ptrtoint ptr %11 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 8
  %17 = icmp slt i64 %16, 2
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %33

19:                                               ; preds = %3
  store i64 %16, ptr %7, align 8
  %20 = sub nsw i64 %16, 2
  %21 = sdiv i64 %20, 2
  store i64 %21, ptr %8, align 8
  %22 = load ptr, ptr %4, align 8
  %23 = load i64, ptr %7, align 8
  %24 = load i8, ptr %10, align 1
  br label %25

25:                                               ; preds = %31, %19
  %26 = phi i64 [ %32, %31 ], [ %21, %19 ]
  %27 = getelementptr inbounds double, ptr %22, i64 %26
  %28 = load double, ptr %27, align 8
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %22, i64 noundef %26, i64 noundef %23, double noundef %28, i8 %24)
  %29 = icmp eq i64 %26, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i64 %26, ptr %8, align 8
  store double %28, ptr %9, align 8
  br label %33

31:                                               ; preds = %25
  %32 = add nsw i64 %26, -1
  br label %25, !llvm.loop !104

33:                                               ; preds = %30, %18
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
  %7 = load ptr, ptr %5, align 8
  %8 = load double, ptr %7, align 8
  %9 = load double, ptr %2, align 8
  %10 = fcmp olt double %8, %9
  ret i1 %10
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
  %11 = load ptr, ptr %7, align 8
  %12 = load double, ptr %11, align 8
  store double %12, ptr %9, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = load double, ptr %13, align 8
  %15 = load ptr, ptr %7, align 8
  store double %14, ptr %15, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = load ptr, ptr %6, align 8
  %18 = ptrtoint ptr %17 to i64
  %19 = ptrtoint ptr %16 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 8
  %22 = load double, ptr %9, align 8
  %23 = load i8, ptr %10, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %16, i64 noundef 0, i64 noundef %21, double noundef %22, i8 %23)
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
  %15 = load i64, ptr %8, align 8
  store i64 %15, ptr %11, align 8
  %16 = load i64, ptr %8, align 8
  store i64 %16, ptr %12, align 8
  %17 = load i64, ptr %9, align 8
  %18 = sub nsw i64 %17, 1
  %19 = sdiv i64 %18, 2
  %20 = load ptr, ptr %7, align 8
  %.promoted1 = load i64, ptr %8, align 8
  br label %21

21:                                               ; preds = %34, %5
  %22 = phi i64 [ %35, %34 ], [ %.promoted1, %5 ]
  %23 = phi i64 [ %35, %34 ], [ %16, %5 ]
  %24 = icmp slt i64 %23, %19
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = add nsw i64 %23, 1
  %27 = mul nsw i64 2, %26
  %28 = getelementptr inbounds double, ptr %20, i64 %27
  %29 = sub nsw i64 %27, 1
  %30 = getelementptr inbounds double, ptr %20, i64 %29
  %31 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %28, ptr noundef %30)
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = add nsw i64 %27, -1
  br label %34

34:                                               ; preds = %32, %25
  %35 = phi i64 [ %33, %32 ], [ %27, %25 ]
  %36 = getelementptr inbounds double, ptr %20, i64 %35
  %37 = load double, ptr %36, align 8
  %38 = getelementptr inbounds double, ptr %20, i64 %22
  store double %37, ptr %38, align 8
  br label %21, !llvm.loop !105

39:                                               ; preds = %21
  store i64 %23, ptr %12, align 8
  store i64 %22, ptr %8, align 8
  %40 = load i64, ptr %9, align 8
  %41 = and i64 %40, 1
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = load i64, ptr %12, align 8
  %45 = sub nsw i64 %40, 2
  %46 = sdiv i64 %45, 2
  %47 = icmp eq i64 %44, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = add nsw i64 %44, 1
  %50 = mul nsw i64 2, %49
  store i64 %50, ptr %12, align 8
  %51 = load ptr, ptr %7, align 8
  %52 = sub nsw i64 %50, 1
  %53 = getelementptr inbounds double, ptr %51, i64 %52
  %54 = load double, ptr %53, align 8
  %55 = load i64, ptr %8, align 8
  %56 = getelementptr inbounds double, ptr %51, i64 %55
  store double %54, ptr %56, align 8
  %57 = load i64, ptr %12, align 8
  %58 = sub nsw i64 %57, 1
  store i64 %58, ptr %8, align 8
  br label %59

59:                                               ; preds = %48, %43, %39
  %60 = load i8, ptr %14, align 1
  call void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(ptr noundef nonnull align 1 dereferenceable(1) %13, i8 %60)
  %61 = load ptr, ptr %7, align 8
  %62 = load i64, ptr %8, align 8
  %63 = load i64, ptr %11, align 8
  %64 = load double, ptr %10, align 8
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_(ptr noundef %61, i64 noundef %62, i64 noundef %63, double noundef %64, ptr noundef nonnull align 1 dereferenceable(1) %13)
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
  %12 = load i64, ptr %7, align 8
  %13 = sub nsw i64 %12, 1
  %14 = sdiv i64 %13, 2
  store i64 %14, ptr %11, align 8
  %15 = load i64, ptr %8, align 8
  %16 = load ptr, ptr %10, align 8, !nonnull !15
  %17 = load ptr, ptr %6, align 8
  %.promoted = load i64, ptr %7, align 8
  br label %18

18:                                               ; preds = %27, %5
  %19 = phi i64 [ %32, %27 ], [ %14, %5 ]
  %20 = phi i64 [ %19, %27 ], [ %.promoted, %5 ]
  %21 = icmp sgt i64 %20, %15
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = getelementptr inbounds double, ptr %17, i64 %19
  %24 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef %23, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi i1 [ false, %18 ], [ %24, %22 ]
  br i1 %26, label %27, label %33

27:                                               ; preds = %25
  %28 = getelementptr inbounds double, ptr %17, i64 %19
  %29 = load double, ptr %28, align 8
  %30 = getelementptr inbounds double, ptr %17, i64 %20
  store double %29, ptr %30, align 8
  %31 = sub nsw i64 %19, 1
  %32 = sdiv i64 %31, 2
  br label %18, !llvm.loop !106

33:                                               ; preds = %25
  store i64 %20, ptr %7, align 8
  store i64 %19, ptr %11, align 8
  %34 = load double, ptr %9, align 8
  %35 = load ptr, ptr %6, align 8
  %36 = load i64, ptr %7, align 8
  %37 = getelementptr inbounds double, ptr %35, i64 %36
  store double %34, ptr %37, align 8
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
  %7 = load ptr, ptr %5, align 8
  %8 = load double, ptr %7, align 8
  %9 = load double, ptr %2, align 8
  %10 = fcmp olt double %8, %9
  ret i1 %10
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
  %11 = load ptr, ptr %8, align 8
  %12 = load ptr, ptr %9, align 8
  %13 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %11, ptr noundef %12)
  br i1 %13, label %14, label %33

14:                                               ; preds = %5
  %15 = load ptr, ptr %9, align 8
  %16 = load ptr, ptr %10, align 8
  %17 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %15, ptr noundef %16)
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load ptr, ptr %7, align 8
  %20 = load ptr, ptr %9, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %19, ptr noundef %20)
  br label %32

21:                                               ; preds = %14
  %22 = load ptr, ptr %8, align 8
  %23 = load ptr, ptr %10, align 8
  %24 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %22, ptr noundef %23)
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load ptr, ptr %7, align 8
  %27 = load ptr, ptr %10, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %26, ptr noundef %27)
  br label %31

28:                                               ; preds = %21
  %29 = load ptr, ptr %7, align 8
  %30 = load ptr, ptr %8, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %29, ptr noundef %30)
  br label %31

31:                                               ; preds = %28, %25
  br label %32

32:                                               ; preds = %31, %18
  br label %52

33:                                               ; preds = %5
  %34 = load ptr, ptr %8, align 8
  %35 = load ptr, ptr %10, align 8
  %36 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %34, ptr noundef %35)
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load ptr, ptr %7, align 8
  %39 = load ptr, ptr %8, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %38, ptr noundef %39)
  br label %51

40:                                               ; preds = %33
  %41 = load ptr, ptr %9, align 8
  %42 = load ptr, ptr %10, align 8
  %43 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %41, ptr noundef %42)
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load ptr, ptr %7, align 8
  %46 = load ptr, ptr %10, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %45, ptr noundef %46)
  br label %50

47:                                               ; preds = %40
  %48 = load ptr, ptr %7, align 8
  %49 = load ptr, ptr %9, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %48, ptr noundef %49)
  br label %50

50:                                               ; preds = %47, %44
  br label %51

51:                                               ; preds = %50, %37
  br label %52

52:                                               ; preds = %51, %32
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
  %.promoted3 = load ptr, ptr %6, align 8
  %.promoted = load ptr, ptr %7, align 8
  br label %9

9:                                                ; preds = %26, %4
  %.lcssa25 = phi ptr [ %18, %26 ], [ %.promoted, %4 ]
  %.lcssa4 = phi ptr [ %27, %26 ], [ %.promoted3, %4 ]
  br label %10

10:                                               ; preds = %13, %9
  %11 = phi ptr [ %14, %13 ], [ %.lcssa4, %9 ]
  %12 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %2)
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = getelementptr inbounds nuw double, ptr %11, i32 1
  br label %10, !llvm.loop !107

15:                                               ; preds = %10
  %16 = getelementptr inbounds double, ptr %.lcssa25, i32 -1
  br label %17

17:                                               ; preds = %20, %15
  %18 = phi ptr [ %21, %20 ], [ %16, %15 ]
  %19 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %18)
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = getelementptr inbounds double, ptr %18, i32 -1
  br label %17, !llvm.loop !108

22:                                               ; preds = %17
  %23 = icmp ult ptr %11, %18
  br i1 %23, label %26, label %24

24:                                               ; preds = %22
  store ptr %11, ptr %6, align 8
  store ptr %18, ptr %7, align 8
  %25 = load ptr, ptr %6, align 8
  ret ptr %25

26:                                               ; preds = %22
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %11, ptr noundef %18)
  %27 = getelementptr inbounds nuw double, ptr %11, i32 1
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
  %25 = load ptr, ptr %19, align 8
  %26 = icmp eq ptr %25, %1
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %78

28:                                               ; preds = %3
  %29 = getelementptr inbounds double, ptr %25, i64 1
  store ptr %29, ptr %21, align 8
  %30 = load ptr, ptr %20, align 8
  %31 = load ptr, ptr %19, align 8
  %32 = load i8, ptr %24, align 1
  %33 = load i8, ptr %23, align 1
  %.promoted1 = load double, ptr %22, align 8
  %.promoted3 = load ptr, ptr %15, align 8
  %.promoted5 = load ptr, ptr %16, align 8
  %.promoted7 = load ptr, ptr %17, align 8
  %.promoted9 = load ptr, ptr %12, align 8
  %.promoted11 = load ptr, ptr %13, align 8
  %.promoted13 = load ptr, ptr %7, align 8
  %.promoted15 = load ptr, ptr %8, align 8
  %.promoted17 = load ptr, ptr %9, align 8
  %.promoted19 = load ptr, ptr %4, align 8
  %.promoted21 = load ptr, ptr %5, align 8
  %.promoted23 = load ptr, ptr %6, align 8
  %.promoted25 = load ptr, ptr %10, align 1
  %.promoted27 = load ptr, ptr %11, align 1
  br label %34

34:                                               ; preds = %76, %28
  %35 = phi ptr [ %62, %76 ], [ %.promoted27, %28 ]
  %36 = phi ptr [ %63, %76 ], [ %.promoted25, %28 ]
  %37 = phi ptr [ %64, %76 ], [ %.promoted23, %28 ]
  %38 = phi ptr [ %65, %76 ], [ %.promoted21, %28 ]
  %39 = phi ptr [ %66, %76 ], [ %.promoted19, %28 ]
  %40 = phi ptr [ %67, %76 ], [ %.promoted17, %28 ]
  %41 = phi ptr [ %68, %76 ], [ %.promoted15, %28 ]
  %42 = phi ptr [ %69, %76 ], [ %.promoted13, %28 ]
  %43 = phi ptr [ %70, %76 ], [ %.promoted11, %28 ]
  %44 = phi ptr [ %71, %76 ], [ %.promoted9, %28 ]
  %45 = phi ptr [ %72, %76 ], [ %.promoted7, %28 ]
  %46 = phi ptr [ %73, %76 ], [ %.promoted5, %28 ]
  %47 = phi ptr [ %74, %76 ], [ %.promoted3, %28 ]
  %48 = phi double [ %75, %76 ], [ %.promoted1, %28 ]
  %49 = phi ptr [ %77, %76 ], [ %29, %28 ]
  %50 = icmp ne ptr %49, %30
  br i1 %50, label %51, label %.loopexit

51:                                               ; preds = %34
  %52 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef %49, ptr noundef %31)
  br i1 %52, label %53, label %59

53:                                               ; preds = %51
  %54 = load double, ptr %49, align 8
  %55 = getelementptr inbounds double, ptr %49, i64 1
  %56 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %31)
  %57 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %49)
  store ptr %55, ptr %14, align 8
  %58 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %56, ptr noundef %57, ptr noundef %55)
  store double %54, ptr %31, align 8
  br label %61

59:                                               ; preds = %51
  %60 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 %32)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %49, i8 %33)
  br label %61

61:                                               ; preds = %59, %53
  %62 = phi ptr [ %35, %59 ], [ %58, %53 ]
  %63 = phi ptr [ %36, %59 ], [ %14, %53 ]
  %64 = phi ptr [ %37, %59 ], [ %55, %53 ]
  %65 = phi ptr [ %38, %59 ], [ %57, %53 ]
  %66 = phi ptr [ %39, %59 ], [ %56, %53 ]
  %67 = phi ptr [ %40, %59 ], [ %55, %53 ]
  %68 = phi ptr [ %41, %59 ], [ %57, %53 ]
  %69 = phi ptr [ %42, %59 ], [ %56, %53 ]
  %70 = phi ptr [ %43, %59 ], [ %57, %53 ]
  %71 = phi ptr [ %44, %59 ], [ %56, %53 ]
  %72 = phi ptr [ %45, %59 ], [ %55, %53 ]
  %73 = phi ptr [ %46, %59 ], [ %49, %53 ]
  %74 = phi ptr [ %47, %59 ], [ %31, %53 ]
  %75 = phi double [ %48, %59 ], [ %54, %53 ]
  br label %76

76:                                               ; preds = %61
  %77 = getelementptr inbounds nuw double, ptr %49, i32 1
  br label %34, !llvm.loop !110

.loopexit:                                        ; preds = %34
  store ptr %49, ptr %21, align 8
  store double %48, ptr %22, align 8
  store ptr %47, ptr %15, align 8
  store ptr %46, ptr %16, align 8
  store ptr %45, ptr %17, align 8
  store ptr %44, ptr %12, align 8
  store ptr %43, ptr %13, align 8
  store ptr %42, ptr %7, align 8
  store ptr %41, ptr %8, align 8
  store ptr %40, ptr %9, align 8
  store ptr %39, ptr %4, align 8
  store ptr %38, ptr %5, align 8
  store ptr %37, ptr %6, align 8
  store ptr %36, ptr %10, align 1
  store ptr %35, ptr %11, align 1
  br label %78

78:                                               ; preds = %.loopexit, %27
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
  %10 = load ptr, ptr %5, align 8
  store ptr %10, ptr %7, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = load i8, ptr %9, align 1
  %13 = load i8, ptr %8, align 1
  br label %14

14:                                               ; preds = %19, %3
  %15 = phi ptr [ %20, %19 ], [ %10, %3 ]
  %16 = icmp ne ptr %15, %11
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 %12)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %15, i8 %13)
  br label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds nuw double, ptr %15, i32 1
  br label %14, !llvm.loop !111

21:                                               ; preds = %14
  store ptr %15, ptr %7, align 8
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
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds double, ptr %8, i32 -1
  store ptr %9, ptr %6, align 8
  %.promoted1 = load ptr, ptr %4, align 8
  br label %10

10:                                               ; preds = %14, %2
  %11 = phi ptr [ %12, %14 ], [ %.promoted1, %2 ]
  %12 = phi ptr [ %16, %14 ], [ %9, %2 ]
  %13 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %12)
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load double, ptr %12, align 8
  store double %15, ptr %11, align 8
  %16 = getelementptr inbounds double, ptr %12, i32 -1
  br label %10, !llvm.loop !112

17:                                               ; preds = %10
  store ptr %12, ptr %6, align 8
  store ptr %11, ptr %4, align 8
  %18 = load double, ptr %5, align 8
  store double %18, ptr %11, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 %0) #5 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Val_less_iter", align 1
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store i8 %0, ptr %3, align 1
  %4 = load i8, ptr %2, align 1
  ret i8 %4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) #5 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %5, align 8, !nonnull !15, !align !16
  %8 = load double, ptr %7, align 8
  %9 = load double, ptr %2, align 8
  %10 = fcmp olt double %8, %9
  ret i1 %10
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
!15 = !{}
!16 = !{i64 8}
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
!111 = distinct !{!111, !8}
!112 = distinct !{!112, !8}
