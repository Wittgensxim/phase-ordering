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
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr @current_test, align 4
  %9 = icmp sge i32 %8, %.pre
  br i1 %9, label %10, label %20

10:                                               ; preds = %7, %2
  %11 = add nsw i32 %.pre, 10
  store i32 %11, ptr @allocated_results, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 16
  %14 = call ptr @realloc(ptr noundef %5, i64 noundef %13) #13
  store ptr %14, ptr @results, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, ptr @allocated_results, align 4
  %18 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str, i32 noundef %17)
  call void @exit(i32 noundef -1) #14
  unreachable

19:                                               ; preds = %10
  %.pre1 = load i32, ptr @current_test, align 4
  br label %20

20:                                               ; preds = %19, %7
  %21 = phi i32 [ %.pre1, %19 ], [ %8, %7 ]
  %22 = phi ptr [ %14, %19 ], [ %5, %7 ]
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds %struct.one_result, ptr %22, i64 %23
  store double %0, ptr %24, align 8
  %25 = load ptr, ptr @results, align 8
  %26 = getelementptr inbounds %struct.one_result, ptr %25, i64 %23
  %27 = getelementptr inbounds nuw %struct.one_result, ptr %26, i32 0, i32 1
  store ptr %1, ptr %27, align 8
  %28 = add nsw i32 %21, 1
  store i32 %28, ptr @current_test, align 4
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

21:                                               ; preds = %37, %5
  %22 = phi i32 [ %38, %37 ], [ 12, %5 ]
  %23 = phi i32 [ %34, %37 ], [ undef, %5 ]
  %24 = phi i32 [ %39, %37 ], [ 0, %5 ]
  %25 = load i32, ptr @current_test, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  %28 = load ptr, ptr @results, align 8
  %29 = sext i32 %24 to i64
  %30 = getelementptr inbounds %struct.one_result, ptr %28, i64 %29
  %31 = getelementptr inbounds nuw %struct.one_result, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8
  %33 = call i64 @strlen(ptr noundef %32) #15
  %34 = trunc i64 %33 to i32
  %35 = icmp sgt i32 %34, %22
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %27
  %38 = phi i32 [ %34, %36 ], [ %22, %27 ]
  %39 = add nsw i32 %24, 1
  br label %21, !llvm.loop !7

40:                                               ; preds = %21
  store i32 %24, ptr %11, align 4
  store i32 %23, ptr %16, align 4
  store i32 %22, ptr %15, align 4
  %41 = sub nsw i32 %22, 12
  %42 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.1, i32 noundef %41, ptr noundef @.str.2)
  %43 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.3, i32 noundef %22, ptr noundef @.str.2)
  store i32 0, ptr %11, align 4
  %44 = sext i32 %22 to i64
  br label %45

45:                                               ; preds = %49, %40
  %46 = phi i32 [ %67, %49 ], [ 0, %40 ]
  %47 = load i32, ptr @current_test, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %45
  %50 = load ptr, ptr @results, align 8
  %51 = sext i32 %46 to i64
  %52 = getelementptr inbounds %struct.one_result, ptr %50, i64 %51
  %53 = getelementptr inbounds nuw %struct.one_result, ptr %52, i32 0, i32 1
  %54 = load ptr, ptr %53, align 8
  %55 = call i64 @strlen(ptr noundef %54) #15
  %56 = sub i64 %44, %55
  %57 = trunc i64 %56 to i32
  %58 = load ptr, ptr @results, align 8
  %59 = getelementptr inbounds %struct.one_result, ptr %58, i64 %51
  %60 = getelementptr inbounds nuw %struct.one_result, ptr %59, i32 0, i32 1
  %61 = load ptr, ptr %60, align 8
  %62 = load double, ptr %59, align 8
  %63 = fdiv double %20, %62
  %64 = load double, ptr %58, align 8
  %65 = fdiv double %62, %64
  %66 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.4, i32 noundef %46, i32 noundef %57, ptr noundef @.str.5, ptr noundef %61, double noundef %62, double noundef %63, double noundef %65)
  %67 = add nsw i32 %46, 1
  br label %45, !llvm.loop !9

68:                                               ; preds = %45
  store i32 %46, ptr %11, align 4
  store i32 0, ptr %11, align 4
  %69 = load ptr, ptr @results, align 8
  br label %70

70:                                               ; preds = %74, %68
  %71 = phi double [ %78, %74 ], [ 0.000000e+00, %68 ]
  %72 = phi i32 [ %79, %74 ], [ 0, %68 ]
  %73 = icmp slt i32 %72, %47
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = sext i32 %72 to i64
  %76 = getelementptr inbounds %struct.one_result, ptr %69, i64 %75
  %77 = load double, ptr %76, align 8
  %78 = fadd double %71, %77
  %79 = add nsw i32 %72, 1
  br label %70, !llvm.loop !10

80:                                               ; preds = %70
  store i32 %72, ptr %11, align 4
  store double %71, ptr %13, align 8
  %81 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.6, ptr noundef %0, double noundef %71)
  %82 = load i32, ptr @current_test, align 4
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %84, label %108

84:                                               ; preds = %80
  %85 = icmp ne i32 %4, 0
  br i1 %85, label %86, label %108

86:                                               ; preds = %84
  store i32 1, ptr %11, align 4
  br label %87

87:                                               ; preds = %92, %86
  %88 = phi i32 [ %.pre, %92 ], [ %82, %86 ]
  %89 = phi double [ %100, %92 ], [ 0.000000e+00, %86 ]
  %90 = phi i32 [ %101, %92 ], [ 1, %86 ]
  %91 = icmp slt i32 %90, %88
  br i1 %91, label %92, label %102

92:                                               ; preds = %87
  %93 = load ptr, ptr @results, align 8
  %94 = sext i32 %90 to i64
  %95 = getelementptr inbounds %struct.one_result, ptr %93, i64 %94
  %96 = load double, ptr %95, align 8
  %97 = load double, ptr %93, align 8
  %98 = fdiv double %96, %97
  %99 = call double @log(double noundef %98) #15
  %100 = fadd double %89, %99
  %101 = add nsw i32 %90, 1
  %.pre = load i32, ptr @current_test, align 4
  br label %87, !llvm.loop !11

102:                                              ; preds = %87
  store i32 %90, ptr %11, align 4
  store double %89, ptr %14, align 8
  %103 = sub nsw i32 %88, 1
  %104 = sitofp i32 %103 to double
  %105 = fdiv double %89, %104
  %106 = call double @exp(double noundef %105) #15
  %107 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.7, ptr noundef %0, double noundef %106)
  br label %108

108:                                              ; preds = %102, %84, %80
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

9:                                                ; preds = %25, %2
  %10 = phi i32 [ %26, %25 ], [ 12, %2 ]
  %11 = phi i32 [ %22, %25 ], [ undef, %2 ]
  %12 = phi i32 [ %27, %25 ], [ 0, %2 ]
  %13 = load i32, ptr @current_test, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %28

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
  %27 = add nsw i32 %12, 1
  br label %9, !llvm.loop !12

28:                                               ; preds = %9
  store i32 %12, ptr %5, align 4
  store i32 %11, ptr %8, align 4
  store i32 %10, ptr %7, align 4
  %29 = sub nsw i32 %10, 12
  %30 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.8, i32 noundef %29, ptr noundef @.str.2)
  %31 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.9, i32 noundef %10, ptr noundef @.str.2)
  store i32 0, ptr %5, align 4
  %32 = sext i32 %10 to i64
  br label %33

33:                                               ; preds = %37, %28
  %34 = phi i32 [ %52, %37 ], [ 0, %28 ]
  %35 = load i32, ptr @current_test, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  %38 = load ptr, ptr @results, align 8
  %39 = sext i32 %34 to i64
  %40 = getelementptr inbounds %struct.one_result, ptr %38, i64 %39
  %41 = getelementptr inbounds nuw %struct.one_result, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8
  %43 = call i64 @strlen(ptr noundef %42) #15
  %44 = sub i64 %32, %43
  %45 = trunc i64 %44 to i32
  %46 = load ptr, ptr @results, align 8
  %47 = getelementptr inbounds %struct.one_result, ptr %46, i64 %39
  %48 = getelementptr inbounds nuw %struct.one_result, ptr %47, i32 0, i32 1
  %49 = load ptr, ptr %48, align 8
  %50 = load double, ptr %47, align 8
  %51 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.10, i32 noundef %34, i32 noundef %45, ptr noundef @.str.5, ptr noundef %49, double noundef %50)
  %52 = add nsw i32 %34, 1
  br label %33, !llvm.loop !13

53:                                               ; preds = %33
  store i32 %34, ptr %5, align 4
  store i32 0, ptr %5, align 4
  %54 = load ptr, ptr @results, align 8
  br label %55

55:                                               ; preds = %59, %53
  %56 = phi double [ %63, %59 ], [ 0.000000e+00, %53 ]
  %57 = phi i32 [ %64, %59 ], [ 0, %53 ]
  %58 = icmp slt i32 %57, %35
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = sext i32 %57 to i64
  %61 = getelementptr inbounds %struct.one_result, ptr %54, i64 %60
  %62 = load double, ptr %61, align 8
  %63 = fadd double %56, %62
  %64 = add nsw i32 %57, 1
  br label %55, !llvm.loop !14

65:                                               ; preds = %55
  store i32 %57, ptr %5, align 4
  store double %56, ptr %6, align 8
  %66 = call noundef i32 (ptr, ptr, ...) @__mingw_fprintf(ptr noundef %0, ptr noundef @.str.6, ptr noundef %1, double noundef %56)
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
  br i1 %15, label %16, label %50

16:                                               ; preds = %3
  %17 = load double, ptr %0, align 8
  store double %17, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  br label %18

18:                                               ; preds = %39, %16
  %19 = phi double [ %40, %39 ], [ undef, %16 ]
  %.lcssa26 = phi ptr [ %31, %39 ], [ %0, %16 ]
  %.lcssa4 = phi ptr [ %22, %39 ], [ %1, %16 ]
  br label %20

20:                                               ; preds = %25, %18
  %21 = phi ptr [ %22, %25 ], [ %.lcssa4, %18 ]
  %22 = getelementptr inbounds double, ptr %21, i32 -1
  %23 = load double, ptr %22, align 8
  %24 = call noundef zeroext i1 %2(double noundef %17, double noundef %23)
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %20, !llvm.loop !15

26:                                               ; preds = %20
  %27 = icmp ult ptr %.lcssa26, %22
  br i1 %27, label %29, label %28

28:                                               ; preds = %26
  store ptr %22, ptr %9, align 8
  store ptr %.lcssa26, ptr %8, align 8
  store double %19, ptr %10, align 8
  br label %42

29:                                               ; preds = %26
  br label %30

30:                                               ; preds = %34, %29
  %31 = phi ptr [ %35, %34 ], [ %.lcssa26, %29 ]
  %32 = load double, ptr %31, align 8
  %33 = call noundef zeroext i1 %2(double noundef %32, double noundef %17)
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = getelementptr inbounds nuw double, ptr %31, i32 1
  br label %30, !llvm.loop !16

36:                                               ; preds = %30
  %37 = icmp ult ptr %31, %22
  br i1 %37, label %39, label %38

38:                                               ; preds = %36
  store ptr %22, ptr %9, align 8
  store ptr %31, ptr %8, align 8
  store double %19, ptr %10, align 8
  br label %42

39:                                               ; preds = %36
  %40 = load double, ptr %22, align 8
  %41 = load double, ptr %31, align 8
  store double %41, ptr %22, align 8
  store double %40, ptr %31, align 8
  br label %18, !llvm.loop !17

42:                                               ; preds = %38, %28
  %43 = load ptr, ptr %4, align 8
  %44 = getelementptr inbounds double, ptr %22, i64 1
  %45 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %43, ptr noundef %44, ptr noundef %45)
  %46 = load ptr, ptr %9, align 8
  %47 = getelementptr inbounds double, ptr %46, i64 1
  %48 = load ptr, ptr %5, align 8
  %49 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %47, ptr noundef %48, ptr noundef %49)
  br label %50

50:                                               ; preds = %42, %3
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
  br i1 %15, label %16, label %50

16:                                               ; preds = %3
  %17 = load double, ptr %0, align 8
  store double %17, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  br label %18

18:                                               ; preds = %39, %16
  %19 = phi double [ %40, %39 ], [ undef, %16 ]
  %.lcssa26 = phi ptr [ %31, %39 ], [ %0, %16 ]
  %.lcssa4 = phi ptr [ %22, %39 ], [ %1, %16 ]
  br label %20

20:                                               ; preds = %25, %18
  %21 = phi ptr [ %22, %25 ], [ %.lcssa4, %18 ]
  %22 = getelementptr inbounds double, ptr %21, i32 -1
  %23 = load double, ptr %22, align 8
  %24 = call noundef zeroext i1 %2(double noundef %17, double noundef %23)
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %20, !llvm.loop !18

26:                                               ; preds = %20
  %27 = icmp ult ptr %.lcssa26, %22
  br i1 %27, label %29, label %28

28:                                               ; preds = %26
  store ptr %22, ptr %9, align 8
  store ptr %.lcssa26, ptr %8, align 8
  store double %19, ptr %10, align 8
  br label %42

29:                                               ; preds = %26
  br label %30

30:                                               ; preds = %34, %29
  %31 = phi ptr [ %35, %34 ], [ %.lcssa26, %29 ]
  %32 = load double, ptr %31, align 8
  %33 = call noundef zeroext i1 %2(double noundef %32, double noundef %17)
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = getelementptr inbounds nuw double, ptr %31, i32 1
  br label %30, !llvm.loop !19

36:                                               ; preds = %30
  %37 = icmp ult ptr %31, %22
  br i1 %37, label %39, label %38

38:                                               ; preds = %36
  store ptr %22, ptr %9, align 8
  store ptr %31, ptr %8, align 8
  store double %19, ptr %10, align 8
  br label %42

39:                                               ; preds = %36
  %40 = load double, ptr %22, align 8
  %41 = load double, ptr %31, align 8
  store double %41, ptr %22, align 8
  store double %40, ptr %31, align 8
  br label %18, !llvm.loop !20

42:                                               ; preds = %38, %28
  %43 = load ptr, ptr %4, align 8
  %44 = getelementptr inbounds double, ptr %22, i64 1
  %45 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %43, ptr noundef %44, ptr noundef %45)
  %46 = load ptr, ptr %9, align 8
  %47 = getelementptr inbounds double, ptr %46, i64 1
  %48 = load ptr, ptr %5, align 8
  %49 = load ptr, ptr %6, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %47, ptr noundef %48, ptr noundef %49)
  br label %50

50:                                               ; preds = %42, %3
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
  br label %24

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i32 [ %22, %19 ], [ 300, %23 ]
  store i32 %25, ptr %7, align 4
  %26 = icmp slt i32 2, %0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = getelementptr inbounds ptr, ptr %1, i64 2
  %29 = load ptr, ptr %28, align 8
  %30 = call i32 @atoi(ptr noundef %29)
  br label %32

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi i32 [ %30, %27 ], [ 10000, %31 ]
  store i32 %33, ptr %8, align 4
  %34 = add nsw i32 %33, 123
  call void @srand(i32 noundef %34)
  %35 = sext i32 %33 to i64
  %36 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %35, i64 8)
  %37 = extractvalue { i64, i1 } %36, 1
  %38 = extractvalue { i64, i1 } %36, 0
  %39 = select i1 %37, i64 -1, i64 %38
  %40 = call noalias noundef nonnull ptr @_Znay(i64 noundef %39) #16
  store ptr %40, ptr %9, align 8
  store i32 0, ptr %10, align 4
  br label %41

41:                                               ; preds = %44, %32
  %42 = phi i32 [ %49, %44 ], [ 0, %32 ]
  %43 = icmp slt i32 %42, %33
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = call i32 @rand()
  %46 = sitofp i32 %45 to double
  %47 = sext i32 %42 to i64
  %48 = getelementptr inbounds double, ptr %40, i64 %47
  store double %46, ptr %48, align 8
  %49 = add nsw i32 %42, 1
  br label %41, !llvm.loop !21

50:                                               ; preds = %41
  store i32 %42, ptr %10, align 4
  %51 = call noalias noundef nonnull ptr @_Znay(i64 noundef %39) #16
  store ptr %51, ptr %11, align 8
  store i32 0, ptr %6, align 4
  %52 = getelementptr inbounds double, ptr %40, i64 %35
  %53 = getelementptr inbounds double, ptr %51, i64 %35
  br label %54

54:                                               ; preds = %57, %50
  %55 = phi i32 [ %59, %57 ], [ 0, %50 ]
  %56 = icmp slt i32 %55, %25
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %40, ptr noundef %52, ptr noundef %51)
  call void @qsort(ptr noundef %51, i64 noundef %35, i64 noundef 8, ptr noundef @_Z19less_than_function1PKvS0_)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %51, ptr noundef %53)
  %59 = add nsw i32 %55, 1
  br label %54, !llvm.loop !22

60:                                               ; preds = %54
  store i32 %55, ptr %6, align 4
  store i32 0, ptr %6, align 4
  br label %61

61:                                               ; preds = %64, %60
  %62 = phi i32 [ %66, %64 ], [ 0, %60 ]
  %63 = icmp slt i32 %62, %25
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %40, ptr noundef %52, ptr noundef %51)
  call void @_Z18quicksort_functionPdS_PFbddE(ptr noundef %51, ptr noundef %53, ptr noundef @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %51, ptr noundef %53)
  %66 = add nsw i32 %62, 1
  br label %61, !llvm.loop !23

67:                                               ; preds = %61
  store i32 %62, ptr %6, align 4
  store i32 0, ptr %6, align 4
  br label %68

68:                                               ; preds = %71, %67
  %69 = phi i32 [ %73, %71 ], [ 0, %67 ]
  %70 = icmp slt i32 %69, %25
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %40, ptr noundef %52, ptr noundef %51)
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %51, ptr noundef %53, ptr noundef @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %51, ptr noundef %53)
  %73 = add nsw i32 %69, 1
  br label %68, !llvm.loop !24

74:                                               ; preds = %68
  store i32 %69, ptr %6, align 4
  store i32 0, ptr %6, align 4
  br label %75

75:                                               ; preds = %78, %74
  %76 = phi i32 [ %80, %78 ], [ 0, %74 ]
  %77 = icmp slt i32 %76, %25
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %40, ptr noundef %52, ptr noundef %51)
  call void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(ptr noundef %51, ptr noundef %53)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %51, ptr noundef %53)
  %80 = add nsw i32 %76, 1
  br label %75, !llvm.loop !25

81:                                               ; preds = %75
  store i32 %76, ptr %6, align 4
  store i32 0, ptr %6, align 4
  br label %82

82:                                               ; preds = %85, %81
  %83 = phi i32 [ %87, %85 ], [ 0, %81 ]
  %84 = icmp slt i32 %83, %25
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %40, ptr noundef %52, ptr noundef %51)
  call void @_ZSt4sortIPdPFbddEEvT_S3_T0_(ptr noundef %51, ptr noundef %53, ptr noundef @_Z19less_than_function2dd)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %51, ptr noundef %53)
  %87 = add nsw i32 %83, 1
  br label %82, !llvm.loop !26

88:                                               ; preds = %82
  store i32 %83, ptr %6, align 4
  store i32 0, ptr %6, align 4
  br label %89

89:                                               ; preds = %92, %88
  %90 = phi i32 [ %94, %92 ], [ 0, %88 ]
  %91 = icmp slt i32 %90, %25
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %40, ptr noundef %52, ptr noundef %51)
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %51, ptr noundef %53, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %51, ptr noundef %53)
  %94 = add nsw i32 %90, 1
  br label %89, !llvm.loop !27

95:                                               ; preds = %89
  store i32 %90, ptr %6, align 4
  store i32 0, ptr %6, align 4
  br label %96

96:                                               ; preds = %99, %95
  %97 = phi i32 [ %101, %99 ], [ 0, %95 ]
  %98 = icmp slt i32 %97, %25
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  call void @_ZSt4sortIPd17less_than_functorEvT_S2_T0_(ptr noundef %51, ptr noundef %53, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %51, ptr noundef %53)
  %100 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %40, ptr noundef %52, ptr noundef %51)
  %101 = add nsw i32 %97, 1
  br label %96, !llvm.loop !28

102:                                              ; preds = %96
  store i32 %97, ptr %6, align 4
  store i32 0, ptr %6, align 4
  br label %103

103:                                              ; preds = %106, %102
  %104 = phi i32 [ %108, %106 ], [ 0, %102 ]
  %105 = icmp slt i32 %104, %25
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %40, ptr noundef %52, ptr noundef %51)
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %51, ptr noundef %53, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %51, ptr noundef %53)
  %108 = add nsw i32 %104, 1
  br label %103, !llvm.loop !29

109:                                              ; preds = %103
  store i32 %104, ptr %6, align 4
  store i32 0, ptr %6, align 4
  br label %110

110:                                              ; preds = %113, %109
  %111 = phi i32 [ %115, %113 ], [ 0, %109 ]
  %112 = icmp slt i32 %111, %25
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %40, ptr noundef %52, ptr noundef %51)
  call void @_ZSt4sortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %51, ptr noundef %53, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %51, ptr noundef %53)
  %115 = add nsw i32 %111, 1
  br label %110, !llvm.loop !30

116:                                              ; preds = %110
  store i32 %111, ptr %6, align 4
  store i32 0, ptr %6, align 4
  br label %117

117:                                              ; preds = %120, %116
  %118 = phi i32 [ %122, %120 ], [ 0, %116 ]
  %119 = icmp slt i32 %118, %25
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %40, ptr noundef %52, ptr noundef %51)
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %51, ptr noundef %53, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %51, ptr noundef %53)
  %122 = add nsw i32 %118, 1
  br label %117, !llvm.loop !31

123:                                              ; preds = %117
  store i32 %118, ptr %6, align 4
  store i32 0, ptr %6, align 4
  br label %124

124:                                              ; preds = %127, %123
  %125 = phi i32 [ %129, %127 ], [ 0, %123 ]
  %126 = icmp slt i32 %125, %25
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %40, ptr noundef %52, ptr noundef %51)
  call void @_ZSt4sortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %51, ptr noundef %53, i8 undef)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %51, ptr noundef %53)
  %129 = add nsw i32 %125, 1
  br label %124, !llvm.loop !32

130:                                              ; preds = %124
  store i32 %125, ptr %6, align 4
  store i32 0, ptr %6, align 4
  br label %131

131:                                              ; preds = %134, %130
  %132 = phi i32 [ %136, %134 ], [ 0, %130 ]
  %133 = icmp slt i32 %132, %25
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %40, ptr noundef %52, ptr noundef %51)
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %51, ptr noundef %53)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %51, ptr noundef %53)
  %136 = add nsw i32 %132, 1
  br label %131, !llvm.loop !33

137:                                              ; preds = %131
  store i32 %132, ptr %6, align 4
  store i32 0, ptr %6, align 4
  br label %138

138:                                              ; preds = %141, %137
  %139 = phi i32 [ %143, %141 ], [ 0, %137 ]
  %140 = icmp slt i32 %139, %25
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %40, ptr noundef %52, ptr noundef %51)
  call void @_ZSt4sortIPdEvT_S1_(ptr noundef %51, ptr noundef %53)
  call void @_Z13verify_sortedIPdEvT_S1_(ptr noundef %51, ptr noundef %53)
  %143 = add nsw i32 %139, 1
  br label %138, !llvm.loop !34

144:                                              ; preds = %138
  store i32 %139, ptr %6, align 4
  br i1 false, label %._crit_edge, label %145

._crit_edge:                                      ; preds = %144
  br label %146

145:                                              ; preds = %144
  call void @_ZdaPv(ptr noundef %51) #17
  br label %146

146:                                              ; preds = %._crit_edge, %145
  br i1 false, label %._crit_edge27, label %147

._crit_edge27:                                    ; preds = %146
  br label %148

147:                                              ; preds = %146
  call void @_ZdaPv(ptr noundef %40) #17
  br label %148

148:                                              ; preds = %._crit_edge27, %147
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

7:                                                ; preds = %20, %2
  %8 = phi ptr [ %14, %20 ], [ %0, %2 ]
  %9 = phi ptr [ %12, %20 ], [ %6, %2 ]
  %10 = icmp ne ptr %9, %1
  br i1 %10, label %11, label %.loopexit

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw double, ptr %9, i32 1
  %13 = load double, ptr %9, align 8
  %14 = getelementptr inbounds nuw double, ptr %8, i32 1
  %15 = load double, ptr %8, align 8
  %16 = fcmp olt double %13, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  store ptr %12, ptr %3, align 8
  store ptr %14, ptr %5, align 8
  %18 = load i32, ptr @current_test, align 4
  %19 = call noundef i32 (ptr, ...) @__mingw_printf(ptr noundef @.str.11, i32 noundef %18)
  br label %21

20:                                               ; preds = %11
  br label %7, !llvm.loop !35

.loopexit:                                        ; preds = %7
  store ptr %9, ptr %3, align 8
  store ptr %8, ptr %5, align 8
  br label %21

21:                                               ; preds = %.loopexit, %17
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
  br i1 %13, label %14, label %46

14:                                               ; preds = %2
  %15 = load double, ptr %0, align 8
  store double %15, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  br label %16

16:                                               ; preds = %37, %14
  %17 = phi double [ %38, %37 ], [ undef, %14 ]
  %.lcssa26 = phi ptr [ %29, %37 ], [ %0, %14 ]
  %.lcssa4 = phi ptr [ %20, %37 ], [ %1, %14 ]
  br label %18

18:                                               ; preds = %23, %16
  %19 = phi ptr [ %20, %23 ], [ %.lcssa4, %16 ]
  %20 = getelementptr inbounds double, ptr %19, i32 -1
  %21 = load double, ptr %20, align 8
  %22 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %15, double noundef %21)
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %18, !llvm.loop !36

24:                                               ; preds = %18
  %25 = icmp ult ptr %.lcssa26, %20
  br i1 %25, label %27, label %26

26:                                               ; preds = %24
  store ptr %20, ptr %7, align 8
  store ptr %.lcssa26, ptr %6, align 8
  store double %17, ptr %8, align 8
  br label %40

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %32, %27
  %29 = phi ptr [ %33, %32 ], [ %.lcssa26, %27 ]
  %30 = load double, ptr %29, align 8
  %31 = call noundef zeroext i1 @_Z19less_than_function2dd(double noundef %30, double noundef %15)
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = getelementptr inbounds nuw double, ptr %29, i32 1
  br label %28, !llvm.loop !37

34:                                               ; preds = %28
  %35 = icmp ult ptr %29, %20
  br i1 %35, label %37, label %36

36:                                               ; preds = %34
  store ptr %20, ptr %7, align 8
  store ptr %29, ptr %6, align 8
  store double %17, ptr %8, align 8
  br label %40

37:                                               ; preds = %34
  %38 = load double, ptr %20, align 8
  %39 = load double, ptr %29, align 8
  store double %39, ptr %20, align 8
  store double %38, ptr %29, align 8
  br label %16, !llvm.loop !38

40:                                               ; preds = %36, %26
  %41 = load ptr, ptr %3, align 8
  %42 = getelementptr inbounds double, ptr %20, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %41, ptr noundef %42, ptr noundef @_Z19less_than_function2dd)
  %43 = load ptr, ptr %7, align 8
  %44 = getelementptr inbounds double, ptr %43, i64 1
  %45 = load ptr, ptr %4, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef %44, ptr noundef %45, ptr noundef @_Z19less_than_function2dd)
  br label %46

46:                                               ; preds = %40, %2
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
  br i1 %17, label %18, label %52

18:                                               ; preds = %3
  %19 = load double, ptr %0, align 8
  store double %19, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  br label %20

20:                                               ; preds = %39, %18
  %.promoted = phi ptr [ %23, %39 ], [ %1, %18 ]
  br label %21

21:                                               ; preds = %25, %20
  %22 = phi ptr [ %23, %25 ], [ %.promoted, %20 ]
  %23 = getelementptr inbounds double, ptr %22, i32 -1
  %24 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %23)
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %21, !llvm.loop !39

26:                                               ; preds = %21
  store ptr %23, ptr %9, align 8
  %27 = load ptr, ptr %8, align 8
  %28 = icmp ult ptr %27, %23
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  br label %44

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %34, %30
  %32 = phi ptr [ %35, %34 ], [ %27, %30 ]
  %33 = call noundef zeroext i1 @_ZNK17less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = getelementptr inbounds nuw double, ptr %32, i32 1
  br label %31, !llvm.loop !40

36:                                               ; preds = %31
  store ptr %32, ptr %8, align 8
  %37 = icmp ult ptr %32, %23
  br i1 %37, label %39, label %38

38:                                               ; preds = %36
  br label %44

39:                                               ; preds = %36
  %40 = load double, ptr %23, align 8
  store double %40, ptr %10, align 8
  %41 = load double, ptr %32, align 8
  store double %41, ptr %23, align 8
  %42 = load double, ptr %10, align 8
  %43 = load ptr, ptr %8, align 8
  store double %42, ptr %43, align 8
  br label %20, !llvm.loop !41

44:                                               ; preds = %38, %29
  %45 = load ptr, ptr %5, align 8
  %46 = getelementptr inbounds double, ptr %23, i64 1
  %47 = load i8, ptr %11, align 1
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %45, ptr noundef %46, i8 %47)
  %48 = load ptr, ptr %9, align 8
  %49 = getelementptr inbounds double, ptr %48, i64 1
  %50 = load ptr, ptr %6, align 8
  %51 = load i8, ptr %12, align 1
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(ptr noundef %49, ptr noundef %50, i8 %51)
  br label %52

52:                                               ; preds = %44, %3
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
  br i1 %17, label %18, label %52

18:                                               ; preds = %3
  %19 = load double, ptr %0, align 8
  store double %19, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  br label %20

20:                                               ; preds = %39, %18
  %.promoted = phi ptr [ %23, %39 ], [ %1, %18 ]
  br label %21

21:                                               ; preds = %25, %20
  %22 = phi ptr [ %23, %25 ], [ %.promoted, %20 ]
  %23 = getelementptr inbounds double, ptr %22, i32 -1
  %24 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %23)
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %21, !llvm.loop !42

26:                                               ; preds = %21
  store ptr %23, ptr %9, align 8
  %27 = load ptr, ptr %8, align 8
  %28 = icmp ult ptr %27, %23
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  br label %44

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %34, %30
  %32 = phi ptr [ %35, %34 ], [ %27, %30 ]
  %33 = call noundef zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = getelementptr inbounds nuw double, ptr %32, i32 1
  br label %31, !llvm.loop !43

36:                                               ; preds = %31
  store ptr %32, ptr %8, align 8
  %37 = icmp ult ptr %32, %23
  br i1 %37, label %39, label %38

38:                                               ; preds = %36
  br label %44

39:                                               ; preds = %36
  %40 = load double, ptr %23, align 8
  store double %40, ptr %10, align 8
  %41 = load double, ptr %32, align 8
  store double %41, ptr %23, align 8
  %42 = load double, ptr %10, align 8
  %43 = load ptr, ptr %8, align 8
  store double %42, ptr %43, align 8
  br label %20, !llvm.loop !44

44:                                               ; preds = %38, %29
  %45 = load ptr, ptr %5, align 8
  %46 = getelementptr inbounds double, ptr %23, i64 1
  %47 = load i8, ptr %11, align 1
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %45, ptr noundef %46, i8 %47)
  %48 = load ptr, ptr %9, align 8
  %49 = getelementptr inbounds double, ptr %48, i64 1
  %50 = load ptr, ptr %6, align 8
  %51 = load i8, ptr %12, align 1
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef %49, ptr noundef %50, i8 %51)
  br label %52

52:                                               ; preds = %44, %3
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
  br i1 %17, label %18, label %52

18:                                               ; preds = %3
  %19 = load double, ptr %0, align 8
  store double %19, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  br label %20

20:                                               ; preds = %39, %18
  %.promoted = phi ptr [ %23, %39 ], [ %1, %18 ]
  br label %21

21:                                               ; preds = %25, %20
  %22 = phi ptr [ %23, %25 ], [ %.promoted, %20 ]
  %23 = getelementptr inbounds double, ptr %22, i32 -1
  %24 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %23)
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %21, !llvm.loop !45

26:                                               ; preds = %21
  store ptr %23, ptr %9, align 8
  %27 = load ptr, ptr %8, align 8
  %28 = icmp ult ptr %27, %23
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  br label %44

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %34, %30
  %32 = phi ptr [ %35, %34 ], [ %27, %30 ]
  %33 = call noundef zeroext i1 @_ZNKSt4lessIdEclERKdS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = getelementptr inbounds nuw double, ptr %32, i32 1
  br label %31, !llvm.loop !46

36:                                               ; preds = %31
  store ptr %32, ptr %8, align 8
  %37 = icmp ult ptr %32, %23
  br i1 %37, label %39, label %38

38:                                               ; preds = %36
  br label %44

39:                                               ; preds = %36
  %40 = load double, ptr %23, align 8
  store double %40, ptr %10, align 8
  %41 = load double, ptr %32, align 8
  store double %41, ptr %23, align 8
  %42 = load double, ptr %10, align 8
  %43 = load ptr, ptr %8, align 8
  store double %42, ptr %43, align 8
  br label %20, !llvm.loop !47

44:                                               ; preds = %38, %29
  %45 = load ptr, ptr %5, align 8
  %46 = getelementptr inbounds double, ptr %23, i64 1
  %47 = load i8, ptr %11, align 1
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %45, ptr noundef %46, i8 %47)
  %48 = load ptr, ptr %9, align 8
  %49 = getelementptr inbounds double, ptr %48, i64 1
  %50 = load ptr, ptr %6, align 8
  %51 = load i8, ptr %12, align 1
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %49, ptr noundef %50, i8 %51)
  br label %52

52:                                               ; preds = %44, %3
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
  br i1 %13, label %14, label %45

14:                                               ; preds = %2
  %15 = load double, ptr %0, align 8
  store double %15, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  br label %16

16:                                               ; preds = %38, %14
  %17 = phi double [ %22, %38 ], [ %15, %14 ]
  %18 = phi double [ %22, %38 ], [ undef, %14 ]
  %.lcssa26 = phi ptr [ %31, %38 ], [ %0, %14 ]
  %.lcssa4 = phi ptr [ %21, %38 ], [ %1, %14 ]
  br label %19

19:                                               ; preds = %24, %16
  %20 = phi ptr [ %21, %24 ], [ %.lcssa4, %16 ]
  %21 = getelementptr inbounds double, ptr %20, i32 -1
  %22 = load double, ptr %21, align 8
  %23 = fcmp olt double %15, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %19, !llvm.loop !48

25:                                               ; preds = %19
  %26 = icmp ult ptr %.lcssa26, %21
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  store ptr %21, ptr %7, align 8
  store ptr %.lcssa26, ptr %6, align 8
  store double %18, ptr %8, align 8
  br label %39

28:                                               ; preds = %25
  br label %29

29:                                               ; preds = %33, %28
  %30 = phi double [ %.pre, %33 ], [ %17, %28 ]
  %31 = phi ptr [ %34, %33 ], [ %.lcssa26, %28 ]
  %32 = fcmp olt double %30, %15
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = getelementptr inbounds nuw double, ptr %31, i32 1
  %.pre = load double, ptr %34, align 8
  br label %29, !llvm.loop !49

35:                                               ; preds = %29
  %36 = icmp ult ptr %31, %21
  br i1 %36, label %38, label %37

37:                                               ; preds = %35
  store ptr %21, ptr %7, align 8
  store ptr %31, ptr %6, align 8
  store double %18, ptr %8, align 8
  br label %39

38:                                               ; preds = %35
  store double %30, ptr %21, align 8
  store double %22, ptr %31, align 8
  br label %16, !llvm.loop !50

39:                                               ; preds = %37, %27
  %40 = load ptr, ptr %3, align 8
  %41 = getelementptr inbounds double, ptr %21, i64 1
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %40, ptr noundef %41)
  %42 = load ptr, ptr %7, align 8
  %43 = getelementptr inbounds double, ptr %42, i64 1
  %44 = load ptr, ptr %4, align 8
  call void @_Z9quicksortIPdEvT_S1_(ptr noundef %43, ptr noundef %44)
  br label %45

45:                                               ; preds = %39, %2
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
  br label %32

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

30:                                               ; preds = %27, %25
  %31 = phi ptr [ %29, %27 ], [ %2, %25 ]
  br label %32

32:                                               ; preds = %30, %23
  %33 = phi ptr [ %31, %30 ], [ %24, %23 ]
  ret ptr %33
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
  %14 = ptrtoint ptr %0 to i64
  br label %15

15:                                               ; preds = %28, %4
  %16 = phi ptr [ %32, %28 ], [ undef, %4 ]
  %17 = phi i64 [ %29, %28 ], [ %2, %4 ]
  %18 = phi ptr [ %32, %28 ], [ %1, %4 ]
  %19 = ptrtoint ptr %18 to i64
  %20 = sub i64 %19, %14
  %21 = sdiv exact i64 %20, 8
  %22 = icmp sgt i64 %21, 16
  br i1 %22, label %23, label %.loopexit

23:                                               ; preds = %15
  %24 = icmp eq i64 %17, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  store ptr %18, ptr %7, align 8
  store i64 0, ptr %8, align 8
  store ptr %16, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %5, i64 8, i1 false)
  %26 = load ptr, ptr %9, align 8
  %27 = ptrtoint ptr %26 to i64
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %18, ptr noundef %18, i64 %27)
  br label %35

28:                                               ; preds = %23
  %29 = add nsw i64 %17, -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %11, ptr align 8 %5, i64 8, i1 false)
  %30 = load ptr, ptr %11, align 8
  %31 = ptrtoint ptr %30 to i64
  %32 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %18, i64 %31)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %5, i64 8, i1 false)
  %33 = load ptr, ptr %12, align 8
  %34 = ptrtoint ptr %33 to i64
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %32, ptr noundef %18, i64 noundef %29, i64 %34)
  br label %15, !llvm.loop !51

.loopexit:                                        ; preds = %15
  store ptr %18, ptr %7, align 8
  store i64 %17, ptr %8, align 8
  store ptr %16, ptr %10, align 8
  br label %35

35:                                               ; preds = %.loopexit, %25
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

11:                                               ; preds = %17, %4
  %12 = phi ptr [ %18, %17 ], [ %1, %4 ]
  %13 = icmp ult ptr %12, %2
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %12, ptr noundef %0)
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %17

17:                                               ; preds = %16, %14
  %18 = getelementptr inbounds nuw double, ptr %12, i32 1
  br label %11, !llvm.loop !52

19:                                               ; preds = %11
  store ptr %12, ptr %9, align 8
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
  %7 = ptrtoint ptr %0 to i64
  br label %8

8:                                                ; preds = %14, %3
  %9 = phi ptr [ %15, %14 ], [ %1, %3 ]
  %10 = ptrtoint ptr %9 to i64
  %11 = sub i64 %10, %7
  %12 = sdiv exact i64 %11, 8
  %13 = icmp sgt i64 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = getelementptr inbounds double, ptr %9, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %15, ptr noundef %15, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %8, !llvm.loop !53

16:                                               ; preds = %8
  store ptr %9, ptr %5, align 8
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
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %30

17:                                               ; preds = %3
  store i64 %14, ptr %7, align 8
  %18 = sub nsw i64 %14, 2
  %19 = sdiv i64 %18, 2
  store i64 %19, ptr %8, align 8
  br label %20

20:                                               ; preds = %28, %17
  %21 = phi i64 [ %29, %28 ], [ %19, %17 ]
  %22 = getelementptr inbounds double, ptr %0, i64 %21
  %23 = load double, ptr %22, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %2, i64 8, i1 false)
  %24 = load ptr, ptr %10, align 8
  %25 = ptrtoint ptr %24 to i64
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %21, i64 noundef %14, double noundef %23, i64 %25)
  %26 = icmp eq i64 %21, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i64 0, ptr %8, align 8
  store double %23, ptr %9, align 8
  br label %30

28:                                               ; preds = %20
  %29 = add nsw i64 %21, -1
  br label %20, !llvm.loop !54

30:                                               ; preds = %27, %16
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
  %15 = sub nsw i64 %2, 1
  %16 = sdiv i64 %15, 2
  br label %17

17:                                               ; preds = %29, %5
  %18 = phi i64 [ %30, %29 ], [ %1, %5 ]
  %19 = icmp slt i64 %18, %16
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = add nsw i64 %18, 1
  %22 = mul nsw i64 2, %21
  %23 = getelementptr inbounds double, ptr %0, i64 %22
  %24 = sub nsw i64 %22, 1
  %25 = getelementptr inbounds double, ptr %0, i64 %24
  %26 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %23, ptr noundef %25)
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = add nsw i64 %22, -1
  br label %29

29:                                               ; preds = %27, %20
  %30 = phi i64 [ %28, %27 ], [ %22, %20 ]
  %31 = getelementptr inbounds double, ptr %0, i64 %30
  %32 = load double, ptr %31, align 8
  %33 = getelementptr inbounds double, ptr %0, i64 %18
  store double %32, ptr %33, align 8
  br label %17, !llvm.loop !55

34:                                               ; preds = %17
  store i64 %18, ptr %12, align 8
  store i64 %18, ptr %8, align 8
  %35 = and i64 %2, 1
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = sub nsw i64 %2, 2
  %39 = sdiv i64 %38, 2
  %40 = icmp eq i64 %18, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = add nsw i64 %18, 1
  %43 = mul nsw i64 2, %42
  store i64 %43, ptr %12, align 8
  %44 = sub nsw i64 %43, 1
  %45 = getelementptr inbounds double, ptr %0, i64 %44
  %46 = load double, ptr %45, align 8
  %47 = getelementptr inbounds double, ptr %0, i64 %18
  store double %46, ptr %47, align 8
  store i64 %44, ptr %8, align 8
  br label %48

48:                                               ; preds = %41, %37, %34
  %49 = phi i64 [ %44, %41 ], [ %18, %37 ], [ %18, %34 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEEEvT_T0_S8_T1_RT2_(ptr noundef %0, i64 noundef %49, i64 noundef %1, double noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %13)
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

14:                                               ; preds = %23, %5
  %15 = phi i64 [ %28, %23 ], [ %13, %5 ]
  %16 = phi i64 [ %15, %23 ], [ %1, %5 ]
  %17 = icmp sgt i64 %16, %2
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = getelementptr inbounds double, ptr %0, i64 %15
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEclIPddEEbT_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %19, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %21

21:                                               ; preds = %18, %14
  %22 = phi i1 [ false, %14 ], [ %20, %18 ]
  br i1 %22, label %23, label %29

23:                                               ; preds = %21
  %24 = getelementptr inbounds double, ptr %0, i64 %15
  %25 = load double, ptr %24, align 8
  %26 = getelementptr inbounds double, ptr %0, i64 %16
  store double %25, ptr %26, align 8
  %27 = sub nsw i64 %15, 1
  %28 = sdiv i64 %27, 2
  br label %14, !llvm.loop !56

29:                                               ; preds = %21
  store i64 %16, ptr %7, align 8
  store i64 %15, ptr %11, align 8
  %30 = load double, ptr %9, align 8
  %31 = getelementptr inbounds double, ptr %0, i64 %16
  store double %30, ptr %31, align 8
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

10:                                               ; preds = %26, %4
  %.lcssa25 = phi ptr [ %19, %26 ], [ %1, %4 ]
  %.lcssa4 = phi ptr [ %27, %26 ], [ %0, %4 ]
  br label %11

11:                                               ; preds = %14, %10
  %12 = phi ptr [ %15, %14 ], [ %.lcssa4, %10 ]
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %12, ptr noundef %2)
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = getelementptr inbounds nuw double, ptr %12, i32 1
  br label %11, !llvm.loop !57

16:                                               ; preds = %11
  %17 = getelementptr inbounds double, ptr %.lcssa25, i32 -1
  br label %18

18:                                               ; preds = %21, %16
  %19 = phi ptr [ %22, %21 ], [ %17, %16 ]
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %2, ptr noundef %19)
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = getelementptr inbounds double, ptr %19, i32 -1
  br label %18, !llvm.loop !58

23:                                               ; preds = %18
  %24 = icmp ult ptr %12, %19
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  store ptr %12, ptr %6, align 8
  store ptr %19, ptr %7, align 8
  ret ptr %12

26:                                               ; preds = %23
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %12, ptr noundef %19)
  %27 = getelementptr inbounds nuw double, ptr %12, i32 1
  br label %10, !llvm.loop !59
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
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %78

28:                                               ; preds = %3
  %29 = getelementptr inbounds double, ptr %0, i64 1
  store ptr %29, ptr %21, align 8
  br label %30

30:                                               ; preds = %61, %28
  %31 = phi ptr [ %62, %61 ], [ undef, %28 ]
  %32 = phi ptr [ %63, %61 ], [ undef, %28 ]
  %33 = phi ptr [ %64, %61 ], [ undef, %28 ]
  %34 = phi ptr [ %65, %61 ], [ undef, %28 ]
  %35 = phi ptr [ %66, %61 ], [ undef, %28 ]
  %36 = phi ptr [ %67, %61 ], [ undef, %28 ]
  %37 = phi ptr [ %68, %61 ], [ undef, %28 ]
  %38 = phi ptr [ %69, %61 ], [ undef, %28 ]
  %39 = phi ptr [ %70, %61 ], [ undef, %28 ]
  %40 = phi ptr [ %71, %61 ], [ undef, %28 ]
  %41 = phi ptr [ %72, %61 ], [ undef, %28 ]
  %42 = phi ptr [ %73, %61 ], [ undef, %28 ]
  %43 = phi ptr [ %74, %61 ], [ undef, %28 ]
  %44 = phi double [ %75, %61 ], [ undef, %28 ]
  %45 = phi ptr [ %76, %61 ], [ undef, %28 ]
  %46 = phi ptr [ %77, %61 ], [ %29, %28 ]
  %47 = icmp ne ptr %46, %1
  br i1 %47, label %48, label %.loopexit

48:                                               ; preds = %30
  %49 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %46, ptr noundef %0)
  br i1 %49, label %50, label %56

50:                                               ; preds = %48
  %51 = load double, ptr %46, align 8
  %52 = getelementptr inbounds double, ptr %46, i64 1
  %53 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %54 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %46)
  store ptr %52, ptr %14, align 8
  %55 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %53, ptr noundef %54, ptr noundef %52)
  store double %51, ptr %0, align 8
  br label %61

56:                                               ; preds = %48
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %24, ptr align 8 %18, i64 8, i1 false)
  %57 = load ptr, ptr %24, align 8
  %58 = ptrtoint ptr %57 to i64
  %59 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %58)
  %60 = inttoptr i64 %59 to ptr
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %46, i64 %59)
  br label %61

61:                                               ; preds = %56, %50
  %62 = phi ptr [ %31, %56 ], [ %55, %50 ]
  %63 = phi ptr [ %32, %56 ], [ %14, %50 ]
  %64 = phi ptr [ %33, %56 ], [ %52, %50 ]
  %65 = phi ptr [ %34, %56 ], [ %54, %50 ]
  %66 = phi ptr [ %35, %56 ], [ %53, %50 ]
  %67 = phi ptr [ %36, %56 ], [ %52, %50 ]
  %68 = phi ptr [ %37, %56 ], [ %54, %50 ]
  %69 = phi ptr [ %38, %56 ], [ %53, %50 ]
  %70 = phi ptr [ %39, %56 ], [ %54, %50 ]
  %71 = phi ptr [ %40, %56 ], [ %53, %50 ]
  %72 = phi ptr [ %41, %56 ], [ %52, %50 ]
  %73 = phi ptr [ %42, %56 ], [ %46, %50 ]
  %74 = phi ptr [ %43, %56 ], [ %0, %50 ]
  %75 = phi double [ %44, %56 ], [ %51, %50 ]
  %76 = phi ptr [ %60, %56 ], [ %45, %50 ]
  %77 = getelementptr inbounds nuw double, ptr %46, i32 1
  br label %30, !llvm.loop !60

.loopexit:                                        ; preds = %30
  store ptr %46, ptr %21, align 8
  store ptr %45, ptr %23, align 8
  store double %44, ptr %22, align 8
  store ptr %43, ptr %15, align 8
  store ptr %42, ptr %16, align 8
  store ptr %41, ptr %17, align 8
  store ptr %40, ptr %12, align 8
  store ptr %39, ptr %13, align 8
  store ptr %38, ptr %7, align 8
  store ptr %37, ptr %8, align 8
  store ptr %36, ptr %9, align 8
  store ptr %35, ptr %4, align 8
  store ptr %34, ptr %5, align 8
  store ptr %33, ptr %6, align 8
  store ptr %32, ptr %10, align 1
  store ptr %31, ptr %11, align 1
  br label %78

78:                                               ; preds = %.loopexit, %27
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

11:                                               ; preds = %15, %3
  %12 = phi ptr [ %19, %15 ], [ undef, %3 ]
  %13 = phi ptr [ %20, %15 ], [ %0, %3 ]
  %14 = icmp ne ptr %13, %1
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %4, i64 8, i1 false)
  %16 = load ptr, ptr %9, align 8
  %17 = ptrtoint ptr %16 to i64
  %18 = call i64 @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i64 %17)
  %19 = inttoptr i64 %18 to ptr
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(ptr noundef %13, i64 %18)
  %20 = getelementptr inbounds nuw double, ptr %13, i32 1
  br label %11, !llvm.loop !61

21:                                               ; preds = %11
  store ptr %13, ptr %7, align 8
  store ptr %12, ptr %8, align 8
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
  %12 = phi ptr [ %16, %14 ], [ %9, %2 ]
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEclIdPdEEbRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %12)
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load double, ptr %12, align 8
  store double %15, ptr %11, align 8
  %16 = getelementptr inbounds double, ptr %12, i32 -1
  br label %10, !llvm.loop !62

17:                                               ; preds = %10
  store ptr %12, ptr %6, align 8
  store ptr %11, ptr %4, align 8
  %18 = load double, ptr %5, align 8
  store double %18, ptr %11, align 8
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
  br label %38

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

37:                                               ; preds = %34, %32
  br label %38

38:                                               ; preds = %37, %30
  %39 = load ptr, ptr %22, align 8
  ret ptr %39
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
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = icmp eq i64 %1, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr inbounds nuw double, ptr %11, i32 1
  store ptr %12, ptr %0, align 8
  br label %24

13:                                               ; preds = %8, %3
  %14 = call i1 @llvm.is.constant.i64(i64 %1)
  br i1 %14, label %15, label %20

15:                                               ; preds = %13
  %16 = icmp eq i64 %1, -1
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr inbounds double, ptr %18, i32 -1
  store ptr %19, ptr %0, align 8
  br label %23

20:                                               ; preds = %15, %13
  %21 = load ptr, ptr %0, align 8
  %22 = getelementptr inbounds double, ptr %21, i64 %1
  store ptr %22, ptr %0, align 8
  br label %23

23:                                               ; preds = %20, %17
  br label %24

24:                                               ; preds = %23, %10
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
  %13 = ptrtoint ptr %0 to i64
  br label %14

14:                                               ; preds = %26, %4
  %15 = phi ptr [ %29, %26 ], [ undef, %4 ]
  %16 = phi i64 [ %27, %26 ], [ %2, %4 ]
  %17 = phi ptr [ %29, %26 ], [ %1, %4 ]
  %18 = ptrtoint ptr %17 to i64
  %19 = sub i64 %18, %13
  %20 = sdiv exact i64 %19, 8
  %21 = icmp sgt i64 %20, 16
  br i1 %21, label %22, label %.loopexit

22:                                               ; preds = %14
  %23 = icmp eq i64 %16, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %22
  store ptr %17, ptr %7, align 8
  store i64 0, ptr %8, align 8
  store ptr %15, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %5, i64 1, i1 false)
  %25 = load i8, ptr %9, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %17, ptr noundef %17, i8 %25)
  br label %31

26:                                               ; preds = %22
  %27 = add nsw i64 %16, -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %5, i64 1, i1 false)
  %28 = load i8, ptr %11, align 1
  %29 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %17, i8 %28)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %5, i64 1, i1 false)
  %30 = load i8, ptr %12, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %29, ptr noundef %17, i64 noundef %27, i8 %30)
  br label %14, !llvm.loop !63

.loopexit:                                        ; preds = %14
  store ptr %17, ptr %7, align 8
  store i64 %16, ptr %8, align 8
  store ptr %15, ptr %10, align 8
  br label %31

31:                                               ; preds = %.loopexit, %24
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

10:                                               ; preds = %16, %4
  %11 = phi ptr [ %17, %16 ], [ %1, %4 ]
  %12 = icmp ult ptr %11, %2
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %0)
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %11, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %16

16:                                               ; preds = %15, %13
  %17 = getelementptr inbounds nuw double, ptr %11, i32 1
  br label %10, !llvm.loop !64

18:                                               ; preds = %10
  store ptr %11, ptr %9, align 8
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
  %7 = ptrtoint ptr %0 to i64
  br label %8

8:                                                ; preds = %14, %3
  %9 = phi ptr [ %15, %14 ], [ %1, %3 ]
  %10 = ptrtoint ptr %9 to i64
  %11 = sub i64 %10, %7
  %12 = sdiv exact i64 %11, 8
  %13 = icmp sgt i64 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = getelementptr inbounds double, ptr %9, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %15, ptr noundef %15, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %8, !llvm.loop !65

16:                                               ; preds = %8
  store ptr %9, ptr %5, align 8
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
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %29

17:                                               ; preds = %3
  store i64 %14, ptr %7, align 8
  %18 = sub nsw i64 %14, 2
  %19 = sdiv i64 %18, 2
  store i64 %19, ptr %8, align 8
  br label %20

20:                                               ; preds = %27, %17
  %21 = phi i64 [ %28, %27 ], [ %19, %17 ]
  %22 = getelementptr inbounds double, ptr %0, i64 %21
  %23 = load double, ptr %22, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %2, i64 1, i1 false)
  %24 = load i8, ptr %10, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %21, i64 noundef %14, double noundef %23, i8 %24)
  %25 = icmp eq i64 %21, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i64 0, ptr %8, align 8
  store double %23, ptr %9, align 8
  br label %29

27:                                               ; preds = %20
  %28 = add nsw i64 %21, -1
  br label %20, !llvm.loop !66

29:                                               ; preds = %26, %16
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
  %14 = sub nsw i64 %2, 1
  %15 = sdiv i64 %14, 2
  br label %16

16:                                               ; preds = %28, %5
  %17 = phi i64 [ %29, %28 ], [ %1, %5 ]
  %18 = icmp slt i64 %17, %15
  br i1 %18, label %19, label %33

19:                                               ; preds = %16
  %20 = add nsw i64 %17, 1
  %21 = mul nsw i64 2, %20
  %22 = getelementptr inbounds double, ptr %0, i64 %21
  %23 = sub nsw i64 %21, 1
  %24 = getelementptr inbounds double, ptr %0, i64 %23
  %25 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %22, ptr noundef %24)
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = add nsw i64 %21, -1
  br label %28

28:                                               ; preds = %26, %19
  %29 = phi i64 [ %27, %26 ], [ %21, %19 ]
  %30 = getelementptr inbounds double, ptr %0, i64 %29
  %31 = load double, ptr %30, align 8
  %32 = getelementptr inbounds double, ptr %0, i64 %17
  store double %31, ptr %32, align 8
  br label %16, !llvm.loop !67

33:                                               ; preds = %16
  store i64 %17, ptr %12, align 8
  store i64 %17, ptr %8, align 8
  %34 = and i64 %2, 1
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = sub nsw i64 %2, 2
  %38 = sdiv i64 %37, 2
  %39 = icmp eq i64 %17, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = add nsw i64 %17, 1
  %42 = mul nsw i64 2, %41
  store i64 %42, ptr %12, align 8
  %43 = sub nsw i64 %42, 1
  %44 = getelementptr inbounds double, ptr %0, i64 %43
  %45 = load double, ptr %44, align 8
  %46 = getelementptr inbounds double, ptr %0, i64 %17
  store double %45, ptr %46, align 8
  store i64 %43, ptr %8, align 8
  br label %47

47:                                               ; preds = %40, %36, %33
  %48 = phi i64 [ %43, %40 ], [ %17, %36 ], [ %17, %33 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %0, i64 noundef %48, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %13)
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

14:                                               ; preds = %23, %5
  %15 = phi i64 [ %28, %23 ], [ %13, %5 ]
  %16 = phi i64 [ %15, %23 ], [ %1, %5 ]
  %17 = icmp sgt i64 %16, %2
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = getelementptr inbounds double, ptr %0, i64 %15
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %19, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %21

21:                                               ; preds = %18, %14
  %22 = phi i1 [ false, %14 ], [ %20, %18 ]
  br i1 %22, label %23, label %29

23:                                               ; preds = %21
  %24 = getelementptr inbounds double, ptr %0, i64 %15
  %25 = load double, ptr %24, align 8
  %26 = getelementptr inbounds double, ptr %0, i64 %16
  store double %25, ptr %26, align 8
  %27 = sub nsw i64 %15, 1
  %28 = sdiv i64 %27, 2
  br label %14, !llvm.loop !68

29:                                               ; preds = %21
  store i64 %16, ptr %7, align 8
  store i64 %15, ptr %11, align 8
  %30 = load double, ptr %9, align 8
  %31 = getelementptr inbounds double, ptr %0, i64 %16
  store double %30, ptr %31, align 8
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

9:                                                ; preds = %25, %4
  %.lcssa25 = phi ptr [ %18, %25 ], [ %1, %4 ]
  %.lcssa4 = phi ptr [ %26, %25 ], [ %0, %4 ]
  br label %10

10:                                               ; preds = %13, %9
  %11 = phi ptr [ %14, %13 ], [ %.lcssa4, %9 ]
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %2)
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = getelementptr inbounds nuw double, ptr %11, i32 1
  br label %10, !llvm.loop !69

15:                                               ; preds = %10
  %16 = getelementptr inbounds double, ptr %.lcssa25, i32 -1
  br label %17

17:                                               ; preds = %20, %15
  %18 = phi ptr [ %21, %20 ], [ %16, %15 ]
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %18)
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = getelementptr inbounds double, ptr %18, i32 -1
  br label %17, !llvm.loop !70

22:                                               ; preds = %17
  %23 = icmp ult ptr %11, %18
  br i1 %23, label %25, label %24

24:                                               ; preds = %22
  store ptr %11, ptr %6, align 8
  store ptr %18, ptr %7, align 8
  ret ptr %11

25:                                               ; preds = %22
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %11, ptr noundef %18)
  %26 = getelementptr inbounds nuw double, ptr %11, i32 1
  br label %9, !llvm.loop !71
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
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %75

27:                                               ; preds = %3
  %28 = getelementptr inbounds double, ptr %0, i64 1
  store ptr %28, ptr %21, align 8
  br label %29

29:                                               ; preds = %58, %27
  %30 = phi ptr [ %59, %58 ], [ undef, %27 ]
  %31 = phi ptr [ %60, %58 ], [ undef, %27 ]
  %32 = phi ptr [ %61, %58 ], [ undef, %27 ]
  %33 = phi ptr [ %62, %58 ], [ undef, %27 ]
  %34 = phi ptr [ %63, %58 ], [ undef, %27 ]
  %35 = phi ptr [ %64, %58 ], [ undef, %27 ]
  %36 = phi ptr [ %65, %58 ], [ undef, %27 ]
  %37 = phi ptr [ %66, %58 ], [ undef, %27 ]
  %38 = phi ptr [ %67, %58 ], [ undef, %27 ]
  %39 = phi ptr [ %68, %58 ], [ undef, %27 ]
  %40 = phi ptr [ %69, %58 ], [ undef, %27 ]
  %41 = phi ptr [ %70, %58 ], [ undef, %27 ]
  %42 = phi ptr [ %71, %58 ], [ undef, %27 ]
  %43 = phi double [ %72, %58 ], [ undef, %27 ]
  %44 = phi i8 [ %73, %58 ], [ undef, %27 ]
  %45 = phi ptr [ %74, %58 ], [ %28, %27 ]
  %46 = icmp ne ptr %45, %1
  br i1 %46, label %47, label %.loopexit

47:                                               ; preds = %29
  %48 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef %45, ptr noundef %0)
  br i1 %48, label %49, label %55

49:                                               ; preds = %47
  %50 = load double, ptr %45, align 8
  %51 = getelementptr inbounds double, ptr %45, i64 1
  %52 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %53 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %45)
  store ptr %51, ptr %14, align 8
  %54 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %52, ptr noundef %53, ptr noundef %51)
  store double %50, ptr %0, align 8
  br label %58

55:                                               ; preds = %47
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr align 1 %18, i64 1, i1 false)
  %56 = load i8, ptr %24, align 1
  %57 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %56)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %45, i8 %57)
  br label %58

58:                                               ; preds = %55, %49
  %59 = phi ptr [ %30, %55 ], [ %54, %49 ]
  %60 = phi ptr [ %31, %55 ], [ %14, %49 ]
  %61 = phi ptr [ %32, %55 ], [ %51, %49 ]
  %62 = phi ptr [ %33, %55 ], [ %53, %49 ]
  %63 = phi ptr [ %34, %55 ], [ %52, %49 ]
  %64 = phi ptr [ %35, %55 ], [ %51, %49 ]
  %65 = phi ptr [ %36, %55 ], [ %53, %49 ]
  %66 = phi ptr [ %37, %55 ], [ %52, %49 ]
  %67 = phi ptr [ %38, %55 ], [ %53, %49 ]
  %68 = phi ptr [ %39, %55 ], [ %52, %49 ]
  %69 = phi ptr [ %40, %55 ], [ %51, %49 ]
  %70 = phi ptr [ %41, %55 ], [ %45, %49 ]
  %71 = phi ptr [ %42, %55 ], [ %0, %49 ]
  %72 = phi double [ %43, %55 ], [ %50, %49 ]
  %73 = phi i8 [ %57, %55 ], [ %44, %49 ]
  %74 = getelementptr inbounds nuw double, ptr %45, i32 1
  br label %29, !llvm.loop !72

.loopexit:                                        ; preds = %29
  store ptr %45, ptr %21, align 8
  store i8 %44, ptr %23, align 1
  store double %43, ptr %22, align 8
  store ptr %42, ptr %15, align 8
  store ptr %41, ptr %16, align 8
  store ptr %40, ptr %17, align 8
  store ptr %39, ptr %12, align 8
  store ptr %38, ptr %13, align 8
  store ptr %37, ptr %7, align 8
  store ptr %36, ptr %8, align 8
  store ptr %35, ptr %9, align 8
  store ptr %34, ptr %4, align 8
  store ptr %33, ptr %5, align 8
  store ptr %32, ptr %6, align 8
  store ptr %31, ptr %10, align 1
  store ptr %30, ptr %11, align 1
  br label %75

75:                                               ; preds = %.loopexit, %26
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

10:                                               ; preds = %14, %3
  %11 = phi i8 [ %16, %14 ], [ undef, %3 ]
  %12 = phi ptr [ %17, %14 ], [ %0, %3 ]
  %13 = icmp ne ptr %12, %1
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %15 = load i8, ptr %9, align 1
  %16 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %15)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(ptr noundef %12, i8 %16)
  %17 = getelementptr inbounds nuw double, ptr %12, i32 1
  br label %10, !llvm.loop !73

18:                                               ; preds = %10
  store ptr %12, ptr %7, align 8
  store i8 %11, ptr %8, align 1
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
  %11 = phi ptr [ %15, %13 ], [ %8, %2 ]
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load double, ptr %11, align 8
  store double %14, ptr %10, align 8
  %15 = getelementptr inbounds double, ptr %11, i32 -1
  br label %9, !llvm.loop !74

16:                                               ; preds = %9
  store ptr %11, ptr %6, align 8
  store ptr %10, ptr %4, align 8
  %17 = load double, ptr %5, align 8
  store double %17, ptr %10, align 8
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
  %13 = ptrtoint ptr %0 to i64
  br label %14

14:                                               ; preds = %26, %4
  %15 = phi ptr [ %29, %26 ], [ undef, %4 ]
  %16 = phi i64 [ %27, %26 ], [ %2, %4 ]
  %17 = phi ptr [ %29, %26 ], [ %1, %4 ]
  %18 = ptrtoint ptr %17 to i64
  %19 = sub i64 %18, %13
  %20 = sdiv exact i64 %19, 8
  %21 = icmp sgt i64 %20, 16
  br i1 %21, label %22, label %.loopexit

22:                                               ; preds = %14
  %23 = icmp eq i64 %16, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %22
  store ptr %17, ptr %7, align 8
  store i64 0, ptr %8, align 8
  store ptr %15, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %5, i64 1, i1 false)
  %25 = load i8, ptr %9, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(ptr noundef %0, ptr noundef %17, ptr noundef %17, i8 %25)
  br label %31

26:                                               ; preds = %22
  %27 = add nsw i64 %16, -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %5, i64 1, i1 false)
  %28 = load i8, ptr %11, align 1
  %29 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_(ptr noundef %0, ptr noundef %17, i8 %28)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %5, i64 1, i1 false)
  %30 = load i8, ptr %12, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %29, ptr noundef %17, i64 noundef %27, i8 %30)
  br label %14, !llvm.loop !75

.loopexit:                                        ; preds = %14
  store ptr %17, ptr %7, align 8
  store i64 %16, ptr %8, align 8
  store ptr %15, ptr %10, align 8
  br label %31

31:                                               ; preds = %.loopexit, %24
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

10:                                               ; preds = %16, %4
  %11 = phi ptr [ %17, %16 ], [ %1, %4 ]
  %12 = icmp ult ptr %11, %2
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %0)
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %11, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %16

16:                                               ; preds = %15, %13
  %17 = getelementptr inbounds nuw double, ptr %11, i32 1
  br label %10, !llvm.loop !76

18:                                               ; preds = %10
  store ptr %11, ptr %9, align 8
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
  %7 = ptrtoint ptr %0 to i64
  br label %8

8:                                                ; preds = %14, %3
  %9 = phi ptr [ %15, %14 ], [ %1, %3 ]
  %10 = ptrtoint ptr %9 to i64
  %11 = sub i64 %10, %7
  %12 = sdiv exact i64 %11, 8
  %13 = icmp sgt i64 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = getelementptr inbounds double, ptr %9, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(ptr noundef %0, ptr noundef %15, ptr noundef %15, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %8, !llvm.loop !77

16:                                               ; preds = %8
  store ptr %9, ptr %5, align 8
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
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %29

17:                                               ; preds = %3
  store i64 %14, ptr %7, align 8
  %18 = sub nsw i64 %14, 2
  %19 = sdiv i64 %18, 2
  store i64 %19, ptr %8, align 8
  br label %20

20:                                               ; preds = %27, %17
  %21 = phi i64 [ %28, %27 ], [ %19, %17 ]
  %22 = getelementptr inbounds double, ptr %0, i64 %21
  %23 = load double, ptr %22, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %2, i64 1, i1 false)
  %24 = load i8, ptr %10, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(ptr noundef %0, i64 noundef %21, i64 noundef %14, double noundef %23, i8 %24)
  %25 = icmp eq i64 %21, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i64 0, ptr %8, align 8
  store double %23, ptr %9, align 8
  br label %29

27:                                               ; preds = %20
  %28 = add nsw i64 %21, -1
  br label %20, !llvm.loop !78

29:                                               ; preds = %26, %16
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
  %14 = sub nsw i64 %2, 1
  %15 = sdiv i64 %14, 2
  br label %16

16:                                               ; preds = %28, %5
  %17 = phi i64 [ %29, %28 ], [ %1, %5 ]
  %18 = icmp slt i64 %17, %15
  br i1 %18, label %19, label %33

19:                                               ; preds = %16
  %20 = add nsw i64 %17, 1
  %21 = mul nsw i64 2, %20
  %22 = getelementptr inbounds double, ptr %0, i64 %21
  %23 = sub nsw i64 %21, 1
  %24 = getelementptr inbounds double, ptr %0, i64 %23
  %25 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %22, ptr noundef %24)
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = add nsw i64 %21, -1
  br label %28

28:                                               ; preds = %26, %19
  %29 = phi i64 [ %27, %26 ], [ %21, %19 ]
  %30 = getelementptr inbounds double, ptr %0, i64 %29
  %31 = load double, ptr %30, align 8
  %32 = getelementptr inbounds double, ptr %0, i64 %17
  store double %31, ptr %32, align 8
  br label %16, !llvm.loop !79

33:                                               ; preds = %16
  store i64 %17, ptr %12, align 8
  store i64 %17, ptr %8, align 8
  %34 = and i64 %2, 1
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = sub nsw i64 %2, 2
  %38 = sdiv i64 %37, 2
  %39 = icmp eq i64 %17, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = add nsw i64 %17, 1
  %42 = mul nsw i64 2, %41
  store i64 %42, ptr %12, align 8
  %43 = sub nsw i64 %42, 1
  %44 = getelementptr inbounds double, ptr %0, i64 %43
  %45 = load double, ptr %44, align 8
  %46 = getelementptr inbounds double, ptr %0, i64 %17
  store double %45, ptr %46, align 8
  store i64 %43, ptr %8, align 8
  br label %47

47:                                               ; preds = %40, %36, %33
  %48 = phi i64 [ %43, %40 ], [ %17, %36 ], [ %17, %33 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEEEvT_T0_S7_T1_RT2_(ptr noundef %0, i64 noundef %48, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %13)
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

14:                                               ; preds = %23, %5
  %15 = phi i64 [ %28, %23 ], [ %13, %5 ]
  %16 = phi i64 [ %15, %23 ], [ %1, %5 ]
  %17 = icmp sgt i64 %16, %2
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = getelementptr inbounds double, ptr %0, i64 %15
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %19, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %21

21:                                               ; preds = %18, %14
  %22 = phi i1 [ false, %14 ], [ %20, %18 ]
  br i1 %22, label %23, label %29

23:                                               ; preds = %21
  %24 = getelementptr inbounds double, ptr %0, i64 %15
  %25 = load double, ptr %24, align 8
  %26 = getelementptr inbounds double, ptr %0, i64 %16
  store double %25, ptr %26, align 8
  %27 = sub nsw i64 %15, 1
  %28 = sdiv i64 %27, 2
  br label %14, !llvm.loop !80

29:                                               ; preds = %21
  store i64 %16, ptr %7, align 8
  store i64 %15, ptr %11, align 8
  %30 = load double, ptr %9, align 8
  %31 = getelementptr inbounds double, ptr %0, i64 %16
  store double %30, ptr %31, align 8
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

9:                                                ; preds = %25, %4
  %.lcssa25 = phi ptr [ %18, %25 ], [ %1, %4 ]
  %.lcssa4 = phi ptr [ %26, %25 ], [ %0, %4 ]
  br label %10

10:                                               ; preds = %13, %9
  %11 = phi ptr [ %14, %13 ], [ %.lcssa4, %9 ]
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %2)
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = getelementptr inbounds nuw double, ptr %11, i32 1
  br label %10, !llvm.loop !81

15:                                               ; preds = %10
  %16 = getelementptr inbounds double, ptr %.lcssa25, i32 -1
  br label %17

17:                                               ; preds = %20, %15
  %18 = phi ptr [ %21, %20 ], [ %16, %15 ]
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %18)
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = getelementptr inbounds double, ptr %18, i32 -1
  br label %17, !llvm.loop !82

22:                                               ; preds = %17
  %23 = icmp ult ptr %11, %18
  br i1 %23, label %25, label %24

24:                                               ; preds = %22
  store ptr %11, ptr %6, align 8
  store ptr %18, ptr %7, align 8
  ret ptr %11

25:                                               ; preds = %22
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %11, ptr noundef %18)
  %26 = getelementptr inbounds nuw double, ptr %11, i32 1
  br label %9, !llvm.loop !83
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
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %75

27:                                               ; preds = %3
  %28 = getelementptr inbounds double, ptr %0, i64 1
  store ptr %28, ptr %21, align 8
  br label %29

29:                                               ; preds = %58, %27
  %30 = phi ptr [ %59, %58 ], [ undef, %27 ]
  %31 = phi ptr [ %60, %58 ], [ undef, %27 ]
  %32 = phi ptr [ %61, %58 ], [ undef, %27 ]
  %33 = phi ptr [ %62, %58 ], [ undef, %27 ]
  %34 = phi ptr [ %63, %58 ], [ undef, %27 ]
  %35 = phi ptr [ %64, %58 ], [ undef, %27 ]
  %36 = phi ptr [ %65, %58 ], [ undef, %27 ]
  %37 = phi ptr [ %66, %58 ], [ undef, %27 ]
  %38 = phi ptr [ %67, %58 ], [ undef, %27 ]
  %39 = phi ptr [ %68, %58 ], [ undef, %27 ]
  %40 = phi ptr [ %69, %58 ], [ undef, %27 ]
  %41 = phi ptr [ %70, %58 ], [ undef, %27 ]
  %42 = phi ptr [ %71, %58 ], [ undef, %27 ]
  %43 = phi double [ %72, %58 ], [ undef, %27 ]
  %44 = phi i8 [ %73, %58 ], [ undef, %27 ]
  %45 = phi ptr [ %74, %58 ], [ %28, %27 ]
  %46 = icmp ne ptr %45, %1
  br i1 %46, label %47, label %.loopexit

47:                                               ; preds = %29
  %48 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef %45, ptr noundef %0)
  br i1 %48, label %49, label %55

49:                                               ; preds = %47
  %50 = load double, ptr %45, align 8
  %51 = getelementptr inbounds double, ptr %45, i64 1
  %52 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %53 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %45)
  store ptr %51, ptr %14, align 8
  %54 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %52, ptr noundef %53, ptr noundef %51)
  store double %50, ptr %0, align 8
  br label %58

55:                                               ; preds = %47
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr align 1 %18, i64 1, i1 false)
  %56 = load i8, ptr %24, align 1
  %57 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %56)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %45, i8 %57)
  br label %58

58:                                               ; preds = %55, %49
  %59 = phi ptr [ %30, %55 ], [ %54, %49 ]
  %60 = phi ptr [ %31, %55 ], [ %14, %49 ]
  %61 = phi ptr [ %32, %55 ], [ %51, %49 ]
  %62 = phi ptr [ %33, %55 ], [ %53, %49 ]
  %63 = phi ptr [ %34, %55 ], [ %52, %49 ]
  %64 = phi ptr [ %35, %55 ], [ %51, %49 ]
  %65 = phi ptr [ %36, %55 ], [ %53, %49 ]
  %66 = phi ptr [ %37, %55 ], [ %52, %49 ]
  %67 = phi ptr [ %38, %55 ], [ %53, %49 ]
  %68 = phi ptr [ %39, %55 ], [ %52, %49 ]
  %69 = phi ptr [ %40, %55 ], [ %51, %49 ]
  %70 = phi ptr [ %41, %55 ], [ %45, %49 ]
  %71 = phi ptr [ %42, %55 ], [ %0, %49 ]
  %72 = phi double [ %43, %55 ], [ %50, %49 ]
  %73 = phi i8 [ %57, %55 ], [ %44, %49 ]
  %74 = getelementptr inbounds nuw double, ptr %45, i32 1
  br label %29, !llvm.loop !84

.loopexit:                                        ; preds = %29
  store ptr %45, ptr %21, align 8
  store i8 %44, ptr %23, align 1
  store double %43, ptr %22, align 8
  store ptr %42, ptr %15, align 8
  store ptr %41, ptr %16, align 8
  store ptr %40, ptr %17, align 8
  store ptr %39, ptr %12, align 8
  store ptr %38, ptr %13, align 8
  store ptr %37, ptr %7, align 8
  store ptr %36, ptr %8, align 8
  store ptr %35, ptr %9, align 8
  store ptr %34, ptr %4, align 8
  store ptr %33, ptr %5, align 8
  store ptr %32, ptr %6, align 8
  store ptr %31, ptr %10, align 1
  store ptr %30, ptr %11, align 1
  br label %75

75:                                               ; preds = %.loopexit, %26
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

10:                                               ; preds = %14, %3
  %11 = phi i8 [ %16, %14 ], [ undef, %3 ]
  %12 = phi ptr [ %17, %14 ], [ %0, %3 ]
  %13 = icmp ne ptr %12, %1
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %15 = load i8, ptr %9, align 1
  %16 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i8 %15)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(ptr noundef %12, i8 %16)
  %17 = getelementptr inbounds nuw double, ptr %12, i32 1
  br label %10, !llvm.loop !85

18:                                               ; preds = %10
  store ptr %12, ptr %7, align 8
  store i8 %11, ptr %8, align 1
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
  %11 = phi ptr [ %15, %13 ], [ %8, %2 ]
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load double, ptr %11, align 8
  store double %14, ptr %10, align 8
  %15 = getelementptr inbounds double, ptr %11, i32 -1
  br label %9, !llvm.loop !86

16:                                               ; preds = %9
  store ptr %11, ptr %6, align 8
  store ptr %10, ptr %4, align 8
  %17 = load double, ptr %5, align 8
  store double %17, ptr %10, align 8
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
  %13 = ptrtoint ptr %0 to i64
  br label %14

14:                                               ; preds = %26, %4
  %15 = phi ptr [ %29, %26 ], [ undef, %4 ]
  %16 = phi i64 [ %27, %26 ], [ %2, %4 ]
  %17 = phi ptr [ %29, %26 ], [ %1, %4 ]
  %18 = ptrtoint ptr %17 to i64
  %19 = sub i64 %18, %13
  %20 = sdiv exact i64 %19, 8
  %21 = icmp sgt i64 %20, 16
  br i1 %21, label %22, label %.loopexit

22:                                               ; preds = %14
  %23 = icmp eq i64 %16, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %22
  store ptr %17, ptr %7, align 8
  store i64 0, ptr %8, align 8
  store ptr %15, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %5, i64 1, i1 false)
  %25 = load i8, ptr %9, align 1
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %17, ptr noundef %17, i8 %25)
  br label %31

26:                                               ; preds = %22
  %27 = add nsw i64 %16, -1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %5, i64 1, i1 false)
  %28 = load i8, ptr %11, align 1
  %29 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_(ptr noundef %0, ptr noundef %17, i8 %28)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %5, i64 1, i1 false)
  %30 = load i8, ptr %12, align 1
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %29, ptr noundef %17, i64 noundef %27, i8 %30)
  br label %14, !llvm.loop !87

.loopexit:                                        ; preds = %14
  store ptr %17, ptr %7, align 8
  store i64 %16, ptr %8, align 8
  store ptr %15, ptr %10, align 8
  br label %31

31:                                               ; preds = %.loopexit, %24
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

10:                                               ; preds = %16, %4
  %11 = phi ptr [ %17, %16 ], [ %1, %4 ]
  %12 = icmp ult ptr %11, %2
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %0)
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %11, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %16

16:                                               ; preds = %15, %13
  %17 = getelementptr inbounds nuw double, ptr %11, i32 1
  br label %10, !llvm.loop !88

18:                                               ; preds = %10
  store ptr %11, ptr %9, align 8
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
  %7 = ptrtoint ptr %0 to i64
  br label %8

8:                                                ; preds = %14, %3
  %9 = phi ptr [ %15, %14 ], [ %1, %3 ]
  %10 = ptrtoint ptr %9 to i64
  %11 = sub i64 %10, %7
  %12 = sdiv exact i64 %11, 8
  %13 = icmp sgt i64 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = getelementptr inbounds double, ptr %9, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(ptr noundef %0, ptr noundef %15, ptr noundef %15, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %8, !llvm.loop !89

16:                                               ; preds = %8
  store ptr %9, ptr %5, align 8
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
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %29

17:                                               ; preds = %3
  store i64 %14, ptr %7, align 8
  %18 = sub nsw i64 %14, 2
  %19 = sdiv i64 %18, 2
  store i64 %19, ptr %8, align 8
  br label %20

20:                                               ; preds = %27, %17
  %21 = phi i64 [ %28, %27 ], [ %19, %17 ]
  %22 = getelementptr inbounds double, ptr %0, i64 %21
  %23 = load double, ptr %22, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %2, i64 1, i1 false)
  %24 = load i8, ptr %10, align 1
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %21, i64 noundef %14, double noundef %23, i8 %24)
  %25 = icmp eq i64 %21, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i64 0, ptr %8, align 8
  store double %23, ptr %9, align 8
  br label %29

27:                                               ; preds = %20
  %28 = add nsw i64 %21, -1
  br label %20, !llvm.loop !90

29:                                               ; preds = %26, %16
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
  %14 = sub nsw i64 %2, 1
  %15 = sdiv i64 %14, 2
  br label %16

16:                                               ; preds = %28, %5
  %17 = phi i64 [ %29, %28 ], [ %1, %5 ]
  %18 = icmp slt i64 %17, %15
  br i1 %18, label %19, label %33

19:                                               ; preds = %16
  %20 = add nsw i64 %17, 1
  %21 = mul nsw i64 2, %20
  %22 = getelementptr inbounds double, ptr %0, i64 %21
  %23 = sub nsw i64 %21, 1
  %24 = getelementptr inbounds double, ptr %0, i64 %23
  %25 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %22, ptr noundef %24)
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = add nsw i64 %21, -1
  br label %28

28:                                               ; preds = %26, %19
  %29 = phi i64 [ %27, %26 ], [ %21, %19 ]
  %30 = getelementptr inbounds double, ptr %0, i64 %29
  %31 = load double, ptr %30, align 8
  %32 = getelementptr inbounds double, ptr %0, i64 %17
  store double %31, ptr %32, align 8
  br label %16, !llvm.loop !91

33:                                               ; preds = %16
  store i64 %17, ptr %12, align 8
  store i64 %17, ptr %8, align 8
  %34 = and i64 %2, 1
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = sub nsw i64 %2, 2
  %38 = sdiv i64 %37, 2
  %39 = icmp eq i64 %17, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = add nsw i64 %17, 1
  %42 = mul nsw i64 2, %41
  store i64 %42, ptr %12, align 8
  %43 = sub nsw i64 %42, 1
  %44 = getelementptr inbounds double, ptr %0, i64 %43
  %45 = load double, ptr %44, align 8
  %46 = getelementptr inbounds double, ptr %0, i64 %17
  store double %45, ptr %46, align 8
  store i64 %43, ptr %8, align 8
  br label %47

47:                                               ; preds = %40, %36, %33
  %48 = phi i64 [ %43, %40 ], [ %17, %36 ], [ %17, %33 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEC2EONS0_15_Iter_comp_iterIS3_EE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEEEvT_T0_S8_T1_RT2_(ptr noundef %0, i64 noundef %48, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %13)
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

14:                                               ; preds = %23, %5
  %15 = phi i64 [ %28, %23 ], [ %13, %5 ]
  %16 = phi i64 [ %15, %23 ], [ %1, %5 ]
  %17 = icmp sgt i64 %16, %2
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = getelementptr inbounds double, ptr %0, i64 %15
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %19, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %21

21:                                               ; preds = %18, %14
  %22 = phi i1 [ false, %14 ], [ %20, %18 ]
  br i1 %22, label %23, label %29

23:                                               ; preds = %21
  %24 = getelementptr inbounds double, ptr %0, i64 %15
  %25 = load double, ptr %24, align 8
  %26 = getelementptr inbounds double, ptr %0, i64 %16
  store double %25, ptr %26, align 8
  %27 = sub nsw i64 %15, 1
  %28 = sdiv i64 %27, 2
  br label %14, !llvm.loop !92

29:                                               ; preds = %21
  store i64 %16, ptr %7, align 8
  store i64 %15, ptr %11, align 8
  %30 = load double, ptr %9, align 8
  %31 = getelementptr inbounds double, ptr %0, i64 %16
  store double %30, ptr %31, align 8
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

9:                                                ; preds = %25, %4
  %.lcssa25 = phi ptr [ %18, %25 ], [ %1, %4 ]
  %.lcssa4 = phi ptr [ %26, %25 ], [ %0, %4 ]
  br label %10

10:                                               ; preds = %13, %9
  %11 = phi ptr [ %14, %13 ], [ %.lcssa4, %9 ]
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %2)
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = getelementptr inbounds nuw double, ptr %11, i32 1
  br label %10, !llvm.loop !93

15:                                               ; preds = %10
  %16 = getelementptr inbounds double, ptr %.lcssa25, i32 -1
  br label %17

17:                                               ; preds = %20, %15
  %18 = phi ptr [ %21, %20 ], [ %16, %15 ]
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %18)
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = getelementptr inbounds double, ptr %18, i32 -1
  br label %17, !llvm.loop !94

22:                                               ; preds = %17
  %23 = icmp ult ptr %11, %18
  br i1 %23, label %25, label %24

24:                                               ; preds = %22
  store ptr %11, ptr %6, align 8
  store ptr %18, ptr %7, align 8
  ret ptr %11

25:                                               ; preds = %22
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %11, ptr noundef %18)
  %26 = getelementptr inbounds nuw double, ptr %11, i32 1
  br label %9, !llvm.loop !95
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
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %75

27:                                               ; preds = %3
  %28 = getelementptr inbounds double, ptr %0, i64 1
  store ptr %28, ptr %21, align 8
  br label %29

29:                                               ; preds = %58, %27
  %30 = phi ptr [ %59, %58 ], [ undef, %27 ]
  %31 = phi ptr [ %60, %58 ], [ undef, %27 ]
  %32 = phi ptr [ %61, %58 ], [ undef, %27 ]
  %33 = phi ptr [ %62, %58 ], [ undef, %27 ]
  %34 = phi ptr [ %63, %58 ], [ undef, %27 ]
  %35 = phi ptr [ %64, %58 ], [ undef, %27 ]
  %36 = phi ptr [ %65, %58 ], [ undef, %27 ]
  %37 = phi ptr [ %66, %58 ], [ undef, %27 ]
  %38 = phi ptr [ %67, %58 ], [ undef, %27 ]
  %39 = phi ptr [ %68, %58 ], [ undef, %27 ]
  %40 = phi ptr [ %69, %58 ], [ undef, %27 ]
  %41 = phi ptr [ %70, %58 ], [ undef, %27 ]
  %42 = phi ptr [ %71, %58 ], [ undef, %27 ]
  %43 = phi double [ %72, %58 ], [ undef, %27 ]
  %44 = phi i8 [ %73, %58 ], [ undef, %27 ]
  %45 = phi ptr [ %74, %58 ], [ %28, %27 ]
  %46 = icmp ne ptr %45, %1
  br i1 %46, label %47, label %.loopexit

47:                                               ; preds = %29
  %48 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef %45, ptr noundef %0)
  br i1 %48, label %49, label %55

49:                                               ; preds = %47
  %50 = load double, ptr %45, align 8
  %51 = getelementptr inbounds double, ptr %45, i64 1
  %52 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %53 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %45)
  store ptr %51, ptr %14, align 8
  %54 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %52, ptr noundef %53, ptr noundef %51)
  store double %50, ptr %0, align 8
  br label %58

55:                                               ; preds = %47
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr align 1 %18, i64 1, i1 false)
  %56 = load i8, ptr %24, align 1
  %57 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %56)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %45, i8 %57)
  br label %58

58:                                               ; preds = %55, %49
  %59 = phi ptr [ %30, %55 ], [ %54, %49 ]
  %60 = phi ptr [ %31, %55 ], [ %14, %49 ]
  %61 = phi ptr [ %32, %55 ], [ %51, %49 ]
  %62 = phi ptr [ %33, %55 ], [ %53, %49 ]
  %63 = phi ptr [ %34, %55 ], [ %52, %49 ]
  %64 = phi ptr [ %35, %55 ], [ %51, %49 ]
  %65 = phi ptr [ %36, %55 ], [ %53, %49 ]
  %66 = phi ptr [ %37, %55 ], [ %52, %49 ]
  %67 = phi ptr [ %38, %55 ], [ %53, %49 ]
  %68 = phi ptr [ %39, %55 ], [ %52, %49 ]
  %69 = phi ptr [ %40, %55 ], [ %51, %49 ]
  %70 = phi ptr [ %41, %55 ], [ %45, %49 ]
  %71 = phi ptr [ %42, %55 ], [ %0, %49 ]
  %72 = phi double [ %43, %55 ], [ %50, %49 ]
  %73 = phi i8 [ %57, %55 ], [ %44, %49 ]
  %74 = getelementptr inbounds nuw double, ptr %45, i32 1
  br label %29, !llvm.loop !96

.loopexit:                                        ; preds = %29
  store ptr %45, ptr %21, align 8
  store i8 %44, ptr %23, align 1
  store double %43, ptr %22, align 8
  store ptr %42, ptr %15, align 8
  store ptr %41, ptr %16, align 8
  store ptr %40, ptr %17, align 8
  store ptr %39, ptr %12, align 8
  store ptr %38, ptr %13, align 8
  store ptr %37, ptr %7, align 8
  store ptr %36, ptr %8, align 8
  store ptr %35, ptr %9, align 8
  store ptr %34, ptr %4, align 8
  store ptr %33, ptr %5, align 8
  store ptr %32, ptr %6, align 8
  store ptr %31, ptr %10, align 1
  store ptr %30, ptr %11, align 1
  br label %75

75:                                               ; preds = %.loopexit, %26
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

10:                                               ; preds = %14, %3
  %11 = phi i8 [ %16, %14 ], [ undef, %3 ]
  %12 = phi ptr [ %17, %14 ], [ %0, %3 ]
  %13 = icmp ne ptr %12, %1
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 1, i1 false)
  %15 = load i8, ptr %9, align 1
  %16 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i8 %15)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(ptr noundef %12, i8 %16)
  %17 = getelementptr inbounds nuw double, ptr %12, i32 1
  br label %10, !llvm.loop !97

18:                                               ; preds = %10
  store ptr %12, ptr %7, align 8
  store i8 %11, ptr %8, align 1
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
  %11 = phi ptr [ %15, %13 ], [ %8, %2 ]
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load double, ptr %11, align 8
  store double %14, ptr %10, align 8
  %15 = getelementptr inbounds double, ptr %11, i32 -1
  br label %9, !llvm.loop !98

16:                                               ; preds = %9
  store ptr %11, ptr %6, align 8
  store ptr %10, ptr %4, align 8
  %17 = load double, ptr %5, align 8
  store double %17, ptr %10, align 8
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
  %13 = ptrtoint ptr %0 to i64
  br label %14

14:                                               ; preds = %25, %4
  %15 = phi ptr [ %27, %25 ], [ undef, %4 ]
  %16 = phi i64 [ %26, %25 ], [ %2, %4 ]
  %17 = phi ptr [ %27, %25 ], [ %1, %4 ]
  %18 = ptrtoint ptr %17 to i64
  %19 = sub i64 %18, %13
  %20 = sdiv exact i64 %19, 8
  %21 = icmp sgt i64 %20, 16
  br i1 %21, label %22, label %.loopexit

22:                                               ; preds = %14
  %23 = icmp eq i64 %16, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  store ptr %17, ptr %7, align 8
  store i64 0, ptr %8, align 8
  store ptr %15, ptr %10, align 8
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %17, ptr noundef %17, i8 undef)
  br label %28

25:                                               ; preds = %22
  %26 = add nsw i64 %16, -1
  %27 = call noundef ptr @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(ptr noundef %0, ptr noundef %17, i8 undef)
  call void @_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %27, ptr noundef %17, i64 noundef %26, i8 undef)
  br label %14, !llvm.loop !99

.loopexit:                                        ; preds = %14
  store ptr %17, ptr %7, align 8
  store i64 %16, ptr %8, align 8
  store ptr %15, ptr %10, align 8
  br label %28

28:                                               ; preds = %.loopexit, %24
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

10:                                               ; preds = %16, %4
  %11 = phi ptr [ %17, %16 ], [ %1, %4 ]
  %12 = icmp ult ptr %11, %2
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %0)
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %11, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %16

16:                                               ; preds = %15, %13
  %17 = getelementptr inbounds nuw double, ptr %11, i32 1
  br label %10, !llvm.loop !100

18:                                               ; preds = %10
  store ptr %11, ptr %9, align 8
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
  %7 = ptrtoint ptr %0 to i64
  br label %8

8:                                                ; preds = %14, %3
  %9 = phi ptr [ %15, %14 ], [ %1, %3 ]
  %10 = ptrtoint ptr %9 to i64
  %11 = sub i64 %10, %7
  %12 = sdiv exact i64 %11, 8
  %13 = icmp sgt i64 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = getelementptr inbounds double, ptr %9, i32 -1
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %0, ptr noundef %15, ptr noundef %15, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %8, !llvm.loop !101

16:                                               ; preds = %8
  store ptr %9, ptr %5, align 8
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
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %28

17:                                               ; preds = %3
  store i64 %14, ptr %7, align 8
  %18 = sub nsw i64 %14, 2
  %19 = sdiv i64 %18, 2
  store i64 %19, ptr %8, align 8
  br label %20

20:                                               ; preds = %26, %17
  %21 = phi i64 [ %27, %26 ], [ %19, %17 ]
  %22 = getelementptr inbounds double, ptr %0, i64 %21
  %23 = load double, ptr %22, align 8
  call void @_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %0, i64 noundef %21, i64 noundef %14, double noundef %23, i8 undef)
  %24 = icmp eq i64 %21, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i64 0, ptr %8, align 8
  store double %23, ptr %9, align 8
  br label %28

26:                                               ; preds = %20
  %27 = add nsw i64 %21, -1
  br label %20, !llvm.loop !102

28:                                               ; preds = %25, %16
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
  %15 = sub nsw i64 %2, 1
  %16 = sdiv i64 %15, 2
  br label %17

17:                                               ; preds = %29, %5
  %18 = phi i64 [ %30, %29 ], [ %1, %5 ]
  %19 = icmp slt i64 %18, %16
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = add nsw i64 %18, 1
  %22 = mul nsw i64 2, %21
  %23 = getelementptr inbounds double, ptr %0, i64 %22
  %24 = sub nsw i64 %22, 1
  %25 = getelementptr inbounds double, ptr %0, i64 %24
  %26 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %23, ptr noundef %25)
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = add nsw i64 %22, -1
  br label %29

29:                                               ; preds = %27, %20
  %30 = phi i64 [ %28, %27 ], [ %22, %20 ]
  %31 = getelementptr inbounds double, ptr %0, i64 %30
  %32 = load double, ptr %31, align 8
  %33 = getelementptr inbounds double, ptr %0, i64 %18
  store double %32, ptr %33, align 8
  br label %17, !llvm.loop !103

34:                                               ; preds = %17
  store i64 %18, ptr %12, align 8
  store i64 %18, ptr %8, align 8
  %35 = and i64 %2, 1
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = sub nsw i64 %2, 2
  %39 = sdiv i64 %38, 2
  %40 = icmp eq i64 %18, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = add nsw i64 %18, 1
  %43 = mul nsw i64 2, %42
  store i64 %43, ptr %12, align 8
  %44 = sub nsw i64 %43, 1
  %45 = getelementptr inbounds double, ptr %0, i64 %44
  %46 = load double, ptr %45, align 8
  %47 = getelementptr inbounds double, ptr %0, i64 %18
  store double %46, ptr %47, align 8
  store i64 %44, ptr %8, align 8
  br label %48

48:                                               ; preds = %41, %37, %34
  %49 = phi i64 [ %44, %41 ], [ %18, %37 ], [ %18, %34 ]
  call void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(ptr noundef nonnull align 1 dereferenceable(1) %13, i8 undef)
  call void @_ZSt11__push_heapIPdxdN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_(ptr noundef %0, i64 noundef %49, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %13)
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

14:                                               ; preds = %23, %5
  %15 = phi i64 [ %28, %23 ], [ %13, %5 ]
  %16 = phi i64 [ %15, %23 ], [ %1, %5 ]
  %17 = icmp sgt i64 %16, %2
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = getelementptr inbounds double, ptr %0, i64 %15
  %20 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPddEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %19, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %21

21:                                               ; preds = %18, %14
  %22 = phi i1 [ false, %14 ], [ %20, %18 ]
  br i1 %22, label %23, label %29

23:                                               ; preds = %21
  %24 = getelementptr inbounds double, ptr %0, i64 %15
  %25 = load double, ptr %24, align 8
  %26 = getelementptr inbounds double, ptr %0, i64 %16
  store double %25, ptr %26, align 8
  %27 = sub nsw i64 %15, 1
  %28 = sdiv i64 %27, 2
  br label %14, !llvm.loop !104

29:                                               ; preds = %21
  store i64 %16, ptr %7, align 8
  store i64 %15, ptr %11, align 8
  %30 = load double, ptr %9, align 8
  %31 = getelementptr inbounds double, ptr %0, i64 %16
  store double %30, ptr %31, align 8
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

9:                                                ; preds = %25, %4
  %.lcssa25 = phi ptr [ %18, %25 ], [ %1, %4 ]
  %.lcssa4 = phi ptr [ %26, %25 ], [ %0, %4 ]
  br label %10

10:                                               ; preds = %13, %9
  %11 = phi ptr [ %14, %13 ], [ %.lcssa4, %9 ]
  %12 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %11, ptr noundef %2)
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = getelementptr inbounds nuw double, ptr %11, i32 1
  br label %10, !llvm.loop !105

15:                                               ; preds = %10
  %16 = getelementptr inbounds double, ptr %.lcssa25, i32 -1
  br label %17

17:                                               ; preds = %20, %15
  %18 = phi ptr [ %21, %20 ], [ %16, %15 ]
  %19 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, ptr noundef %18)
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = getelementptr inbounds double, ptr %18, i32 -1
  br label %17, !llvm.loop !106

22:                                               ; preds = %17
  %23 = icmp ult ptr %11, %18
  br i1 %23, label %25, label %24

24:                                               ; preds = %22
  store ptr %11, ptr %6, align 8
  store ptr %18, ptr %7, align 8
  ret ptr %11

25:                                               ; preds = %22
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(ptr noundef %11, ptr noundef %18)
  %26 = getelementptr inbounds nuw double, ptr %11, i32 1
  br label %9, !llvm.loop !107
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
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %72

27:                                               ; preds = %3
  %28 = getelementptr inbounds double, ptr %0, i64 1
  store ptr %28, ptr %21, align 8
  br label %29

29:                                               ; preds = %56, %27
  %30 = phi ptr [ %57, %56 ], [ undef, %27 ]
  %31 = phi ptr [ %58, %56 ], [ undef, %27 ]
  %32 = phi ptr [ %59, %56 ], [ undef, %27 ]
  %33 = phi ptr [ %60, %56 ], [ undef, %27 ]
  %34 = phi ptr [ %61, %56 ], [ undef, %27 ]
  %35 = phi ptr [ %62, %56 ], [ undef, %27 ]
  %36 = phi ptr [ %63, %56 ], [ undef, %27 ]
  %37 = phi ptr [ %64, %56 ], [ undef, %27 ]
  %38 = phi ptr [ %65, %56 ], [ undef, %27 ]
  %39 = phi ptr [ %66, %56 ], [ undef, %27 ]
  %40 = phi ptr [ %67, %56 ], [ undef, %27 ]
  %41 = phi ptr [ %68, %56 ], [ undef, %27 ]
  %42 = phi ptr [ %69, %56 ], [ undef, %27 ]
  %43 = phi double [ %70, %56 ], [ undef, %27 ]
  %44 = phi ptr [ %71, %56 ], [ %28, %27 ]
  %45 = icmp ne ptr %44, %1
  br i1 %45, label %46, label %.loopexit

46:                                               ; preds = %29
  %47 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef %44, ptr noundef %0)
  br i1 %47, label %48, label %54

48:                                               ; preds = %46
  %49 = load double, ptr %44, align 8
  %50 = getelementptr inbounds double, ptr %44, i64 1
  %51 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0)
  %52 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %44)
  store ptr %50, ptr %14, align 8
  %53 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %51, ptr noundef %52, ptr noundef %50)
  store double %49, ptr %0, align 8
  br label %56

54:                                               ; preds = %46
  %55 = call i8 @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE(i8 undef)
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %44, i8 undef)
  br label %56

56:                                               ; preds = %54, %48
  %57 = phi ptr [ %30, %54 ], [ %53, %48 ]
  %58 = phi ptr [ %31, %54 ], [ %14, %48 ]
  %59 = phi ptr [ %32, %54 ], [ %50, %48 ]
  %60 = phi ptr [ %33, %54 ], [ %52, %48 ]
  %61 = phi ptr [ %34, %54 ], [ %51, %48 ]
  %62 = phi ptr [ %35, %54 ], [ %50, %48 ]
  %63 = phi ptr [ %36, %54 ], [ %52, %48 ]
  %64 = phi ptr [ %37, %54 ], [ %51, %48 ]
  %65 = phi ptr [ %38, %54 ], [ %52, %48 ]
  %66 = phi ptr [ %39, %54 ], [ %51, %48 ]
  %67 = phi ptr [ %40, %54 ], [ %50, %48 ]
  %68 = phi ptr [ %41, %54 ], [ %44, %48 ]
  %69 = phi ptr [ %42, %54 ], [ %0, %48 ]
  %70 = phi double [ %43, %54 ], [ %49, %48 ]
  %71 = getelementptr inbounds nuw double, ptr %44, i32 1
  br label %29, !llvm.loop !108

.loopexit:                                        ; preds = %29
  store ptr %44, ptr %21, align 8
  store double %43, ptr %22, align 8
  store ptr %42, ptr %15, align 8
  store ptr %41, ptr %16, align 8
  store ptr %40, ptr %17, align 8
  store ptr %39, ptr %12, align 8
  store ptr %38, ptr %13, align 8
  store ptr %37, ptr %7, align 8
  store ptr %36, ptr %8, align 8
  store ptr %35, ptr %9, align 8
  store ptr %34, ptr %4, align 8
  store ptr %33, ptr %5, align 8
  store ptr %32, ptr %6, align 8
  store ptr %31, ptr %10, align 1
  store ptr %30, ptr %11, align 1
  br label %72

72:                                               ; preds = %.loopexit, %26
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
  br label %10, !llvm.loop !109

16:                                               ; preds = %10
  store ptr %11, ptr %7, align 8
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
  %11 = phi ptr [ %15, %13 ], [ %8, %2 ]
  %12 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load double, ptr %11, align 8
  store double %14, ptr %10, align 8
  %15 = getelementptr inbounds double, ptr %11, i32 -1
  br label %9, !llvm.loop !110

16:                                               ; preds = %9
  store ptr %11, ptr %6, align 8
  store ptr %10, ptr %4, align 8
  %17 = load double, ptr %5, align 8
  store double %17, ptr %10, align 8
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
